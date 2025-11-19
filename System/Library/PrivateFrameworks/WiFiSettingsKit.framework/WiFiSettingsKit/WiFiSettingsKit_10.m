uint64_t sub_2741949CC(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B78, &unk_2741D6DB0);
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = type metadata accessor for KnownNetwork();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v50 = (&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v69[3] = v20;
  v69[4] = sub_274197040(qword_28093B018, type metadata accessor for KnownNetwork);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
  sub_274196D80(a1, boxed_opaque_existential_1, type metadata accessor for KnownNetwork);
  sub_27409D4E4(v69, &v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  v24 = swift_dynamicCast();
  v25 = *(v16 + 56);
  if (!v24)
  {
    v36 = v53;
    v25(v14, 1, 1, v15);
    sub_27409D420(v14, &qword_280938570, &qword_2741D1630);
    sub_27409D4E4(v69, v66);
    if (swift_dynamicCast())
    {
      v67[4] = v61;
      v67[5] = v62;
      v68 = v63;
      v67[0] = v57;
      v67[1] = v58;
      v67[2] = v59;
      v67[3] = v60;
      v37 = *(v36 + 16);
      swift_getKeyPath();
      *&v57 = v37;
      sub_274197040(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
      sub_2741C6A0C();

      swift_beginAccess();
      sub_2740ACAC8(v67, v66);
      sub_2740A6D94(v37 + 32, &v57, &qword_280938340, &qword_2741D1660);
      sub_2740A6D94(v66, v64, &qword_280938340, &qword_2741D1660);
      if (*(&v57 + 1))
      {
        sub_2740A6D94(&v57, v56, &qword_280938340, &qword_2741D1660);
        if (*(&v64[0] + 1))
        {
          v54[4] = v64[4];
          v54[5] = v64[5];
          v55 = v65;
          v54[0] = v64[0];
          v54[1] = v64[1];
          v54[2] = v64[2];
          v54[3] = v64[3];
          if (v56[0] == v64[0])
          {
            v38 = 1;
          }

          else
          {
            v38 = sub_2741C86DC();
          }

          sub_27409D420(v66, &qword_280938340, &qword_2741D1660);
          sub_2740ACB2C(v67);
          sub_2740ACB2C(v54);
          sub_2740ACB2C(v56);
          v44 = &v57;
          v45 = &qword_280938340;
          v46 = &qword_2741D1660;
          goto LABEL_28;
        }

        sub_27409D420(v66, &qword_280938340, &qword_2741D1660);
        sub_2740ACB2C(v67);
        sub_2740ACB2C(v56);
      }

      else
      {
        sub_27409D420(v66, &qword_280938340, &qword_2741D1660);
        sub_2740ACB2C(v67);
        if (!*(&v64[0] + 1))
        {
          v33 = &qword_280938340;
          v34 = &qword_2741D1660;
          v35 = &v57;
          goto LABEL_19;
        }
      }

      v40 = &qword_280939B80;
      v41 = &qword_2741D4800;
    }

    else
    {
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v40 = &qword_280938340;
      v41 = &qword_2741D1660;
    }

    v42 = &v57;
    goto LABEL_25;
  }

  v48 = v9;
  v25(v14, 0, 1, v15);
  sub_27409D240(v14, v22);
  sub_274196D80(v22, v12, type metadata accessor for KnownNetwork);
  v25(v12, 0, 1, v15);
  v49 = v16;
  v26 = *(v53 + 16);
  swift_getKeyPath();
  *&v57 = v26;
  sub_274197040(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  v27 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  v28 = v52;
  v29 = *(v51 + 48);
  sub_2740A6D94(v12, v52, &qword_280938570, &qword_2741D1630);
  v30 = v26 + v27;
  v31 = v49;
  sub_2740A6D94(v30, v28 + v29, &qword_280938570, &qword_2741D1630);
  v32 = *(v31 + 48);
  if (v32(v28, 1, v15) != 1)
  {
    v39 = v48;
    sub_2740A6D94(v28, v48, &qword_280938570, &qword_2741D1630);
    if (v32(v28 + v29, 1, v15) == 1)
    {
      sub_27409D420(v12, &qword_280938570, &qword_2741D1630);
      sub_2741041FC(v22, type metadata accessor for KnownNetwork);
      sub_2741041FC(v39, type metadata accessor for KnownNetwork);
      goto LABEL_12;
    }

    v43 = v50;
    sub_27409D240(v28 + v29, v50);
    if (*v39 == *v43 && v39[1] == v43[1])
    {
      v38 = 1;
    }

    else
    {
      v38 = sub_2741C86DC();
    }

    sub_27409D420(v12, &qword_280938570, &qword_2741D1630);
    sub_2741041FC(v22, type metadata accessor for KnownNetwork);
    sub_2741041FC(v43, type metadata accessor for KnownNetwork);
    sub_2741041FC(v39, type metadata accessor for KnownNetwork);
    v44 = v28;
    v45 = &qword_280938570;
    v46 = &qword_2741D1630;
LABEL_28:
    sub_27409D420(v44, v45, v46);
    goto LABEL_29;
  }

  sub_27409D420(v12, &qword_280938570, &qword_2741D1630);
  sub_2741041FC(v22, type metadata accessor for KnownNetwork);
  if (v32(v28 + v29, 1, v15) != 1)
  {
LABEL_12:
    v40 = &qword_280939B78;
    v41 = &unk_2741D6DB0;
    v42 = v28;
LABEL_25:
    sub_27409D420(v42, v40, v41);
    v38 = 0;
    goto LABEL_29;
  }

  v33 = &qword_280938570;
  v34 = &qword_2741D1630;
  v35 = v28;
LABEL_19:
  sub_27409D420(v35, v33, v34);
  v38 = 1;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  return v38 & 1;
}

uint64_t sub_274195234(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B78, &unk_2741D6DB0);
  v3 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v46 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = type metadata accessor for KnownNetwork();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v48 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  v67[3] = &type metadata for ScannedNetwork;
  v67[4] = sub_2740F2248();
  v67[0] = swift_allocObject();
  sub_2740ACAC8(a1, v67[0] + 16);
  sub_27409D4E4(v67, &v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (!v22)
  {
    v34 = v51;
    v23(v14, 1, 1, v15);
    sub_27409D420(v14, &qword_280938570, &qword_2741D1630);
    sub_27409D4E4(v67, v64);
    if (swift_dynamicCast())
    {
      v65[4] = v59;
      v65[5] = v60;
      v66 = v61;
      v65[0] = v55;
      v65[1] = v56;
      v65[2] = v57;
      v65[3] = v58;
      v35 = *(v34 + 16);
      swift_getKeyPath();
      *&v55 = v35;
      sub_274197040(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
      sub_2741C6A0C();

      swift_beginAccess();
      sub_2740ACAC8(v65, v64);
      sub_2740A6D94(v35 + 32, &v55, &qword_280938340, &qword_2741D1660);
      sub_2740A6D94(v64, v62, &qword_280938340, &qword_2741D1660);
      if (*(&v55 + 1))
      {
        sub_2740A6D94(&v55, v54, &qword_280938340, &qword_2741D1660);
        if (*(&v62[0] + 1))
        {
          v52[4] = v62[4];
          v52[5] = v62[5];
          v53 = v63;
          v52[0] = v62[0];
          v52[1] = v62[1];
          v52[2] = v62[2];
          v52[3] = v62[3];
          if (v54[0] == v62[0])
          {
            v36 = 1;
          }

          else
          {
            v36 = sub_2741C86DC();
          }

          sub_27409D420(v64, &qword_280938340, &qword_2741D1660);
          sub_2740ACB2C(v65);
          sub_2740ACB2C(v52);
          sub_2740ACB2C(v54);
          v42 = &v55;
          v43 = &qword_280938340;
          v44 = &qword_2741D1660;
          goto LABEL_28;
        }

        sub_27409D420(v64, &qword_280938340, &qword_2741D1660);
        sub_2740ACB2C(v65);
        sub_2740ACB2C(v54);
      }

      else
      {
        sub_27409D420(v64, &qword_280938340, &qword_2741D1660);
        sub_2740ACB2C(v65);
        if (!*(&v62[0] + 1))
        {
          v31 = &qword_280938340;
          v32 = &qword_2741D1660;
          v33 = &v55;
          goto LABEL_19;
        }
      }

      v38 = &qword_280939B80;
      v39 = &qword_2741D4800;
    }

    else
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v38 = &qword_280938340;
      v39 = &qword_2741D1660;
    }

    v40 = &v55;
    goto LABEL_25;
  }

  v46 = v9;
  v23(v14, 0, 1, v15);
  sub_27409D240(v14, v21);
  sub_274196D80(v21, v12, type metadata accessor for KnownNetwork);
  v23(v12, 0, 1, v15);
  v47 = v16;
  v24 = *(v51 + 16);
  swift_getKeyPath();
  *&v55 = v24;
  sub_274197040(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  v25 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  v26 = v50;
  v27 = *(v49 + 48);
  sub_2740A6D94(v12, v50, &qword_280938570, &qword_2741D1630);
  v28 = v24 + v25;
  v29 = v47;
  sub_2740A6D94(v28, v26 + v27, &qword_280938570, &qword_2741D1630);
  v30 = *(v29 + 48);
  if (v30(v26, 1, v15) != 1)
  {
    v37 = v46;
    sub_2740A6D94(v26, v46, &qword_280938570, &qword_2741D1630);
    if (v30(v26 + v27, 1, v15) == 1)
    {
      sub_27409D420(v12, &qword_280938570, &qword_2741D1630);
      sub_2741041FC(v21, type metadata accessor for KnownNetwork);
      sub_2741041FC(v37, type metadata accessor for KnownNetwork);
      goto LABEL_12;
    }

    v41 = v48;
    sub_27409D240(v26 + v27, v48);
    if (*v37 == *v41 && v37[1] == v41[1])
    {
      v36 = 1;
    }

    else
    {
      v36 = sub_2741C86DC();
    }

    sub_27409D420(v12, &qword_280938570, &qword_2741D1630);
    sub_2741041FC(v21, type metadata accessor for KnownNetwork);
    sub_2741041FC(v41, type metadata accessor for KnownNetwork);
    sub_2741041FC(v37, type metadata accessor for KnownNetwork);
    v42 = v26;
    v43 = &qword_280938570;
    v44 = &qword_2741D1630;
LABEL_28:
    sub_27409D420(v42, v43, v44);
    goto LABEL_29;
  }

  sub_27409D420(v12, &qword_280938570, &qword_2741D1630);
  sub_2741041FC(v21, type metadata accessor for KnownNetwork);
  if (v30(v26 + v27, 1, v15) != 1)
  {
LABEL_12:
    v38 = &qword_280939B78;
    v39 = &unk_2741D6DB0;
    v40 = v26;
LABEL_25:
    sub_27409D420(v40, v38, v39);
    v36 = 0;
    goto LABEL_29;
  }

  v31 = &qword_280938570;
  v32 = &qword_2741D1630;
  v33 = v26;
LABEL_19:
  sub_27409D420(v33, v31, v32);
  v36 = 1;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  return v36 & 1;
}

uint64_t sub_274195A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for KnownNetwork();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274196D80(a1, v9, type metadata accessor for KnownNetwork);
  v11 = *v9;
  v10 = v9[1];

  sub_2741041FC(v9, type metadata accessor for KnownNetwork);
  v12 = [*(a2 + 16) interfaceName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_2741C7E7C();
    v16 = v15;

    v17 = [*(a2 + 16) userSettings];
    if (v17)
    {
      v18 = v17;

      sub_2740CCBEC(v18, v14, v16, v11, v10, v68);
      v19 = v74;
      if (v74)
      {
        v20 = v73;
        v51 = v71;
        v52 = v72;
        v49 = v69;
        v50 = v70;
        v21 = v68[0];

        v24 = v49;
        v23 = v50;
        v26 = v51;
        v25 = v52;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v30 = [*(a2 + 16) IPv4Addresses];
    if (v30)
    {
      v31 = v30;
      v32 = sub_2741C7FEC();
    }

    else
    {
      v32 = 0;
    }

    v33 = [*(a2 + 16) IPv4SubnetMasks];
    if (v33)
    {
      v34 = v33;
      v35 = sub_2741C7FEC();
    }

    else
    {
      v35 = 0;
    }

    v36 = [*(a2 + 16) IPv4RouterAddress];
    if (v36)
    {
      v37 = v36;
      v38 = sub_2741C7E7C();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v54[0] = 0;
    *&v55 = v32;
    *(&v55 + 1) = v35;
    *&v56 = v38;
    *(&v56 + 1) = v40;
    v57 = 0u;
    v58 = 0u;
    v59 = v14;
    v60 = v16;
    v61[0] = 0;
    *&v62 = v32;
    *(&v62 + 1) = v35;
    *&v63 = v38;
    *(&v63 + 1) = v40;
    v64 = 0u;
    v65 = 0u;
    v66 = v14;
    v67 = v16;
    sub_2740B2AC0(v54, &v53);
    result = sub_2740B2B1C(v61);
    v20 = v59;
    v19 = v60;
    v25 = v58;
    v26 = v57;
    v23 = v56;
    v24 = v55;
    v21 = v54[0];
  }

  else
  {

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000017, 0x80000002741DC1E0);
    v27 = [*(a2 + 16) IPv4Addresses];
    if (v27)
    {
      v28 = v27;
      v29 = sub_2741C7FEC();
    }

    else
    {
      v29 = 0;
    }

    v41 = [*(a2 + 16) IPv4SubnetMasks];
    if (v41)
    {
      v42 = v41;
      v43 = sub_2741C7FEC();
    }

    else
    {
      v43 = 0;
    }

    v44 = [*(a2 + 16) IPv4RouterAddress];
    if (v44)
    {
      v45 = v44;
      v46 = sub_2741C7E7C();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v61[0] = 0;
    *&v62 = v29;
    *(&v62 + 1) = v43;
    *&v63 = v46;
    *(&v63 + 1) = v48;
    v64 = 0u;
    v65 = 0u;
    v66 = 0x6E776F6E6B6E75;
    v67 = 0xE700000000000000;
    v68[0] = 0;
    *&v69 = v29;
    *(&v69 + 1) = v43;
    *&v70 = v46;
    *(&v70 + 1) = v48;
    v71 = 0u;
    v72 = 0u;
    v73 = 0x6E776F6E6B6E75;
    v74 = 0xE700000000000000;
    sub_2740B2AC0(v61, v54);
    result = sub_2740B2B1C(v68);
    v20 = v66;
    v19 = v67;
    v26 = v64;
    v25 = v65;
    v24 = v62;
    v23 = v63;
    v21 = v61[0];
  }

LABEL_26:
  *a3 = v21;
  *(a3 + 8) = v24;
  *(a3 + 24) = v23;
  *(a3 + 40) = v26;
  *(a3 + 56) = v25;
  *(a3 + 72) = v20;
  *(a3 + 80) = v19;
  return result;
}

uint64_t sub_274195E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2740ACAC8(a1, v63);
  v6 = v63[0];
  v5 = v63[1];

  sub_2740ACB2C(v63);
  v7 = [*(a2 + 16) interfaceName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2741C7E7C();
    v11 = v10;

    v12 = [*(a2 + 16) userSettings];
    if (v12)
    {
      v13 = v12;

      sub_2740CCBEC(v13, v9, v11, v6, v5, v64);
      v14 = v70;
      if (v70)
      {
        v15 = v69;
        v46 = v67;
        v47 = v68;
        v44 = v65;
        v45 = v66;
        v16 = v64[0];

        v19 = v44;
        v18 = v45;
        v21 = v46;
        v20 = v47;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v25 = [*(a2 + 16) IPv4Addresses];
    if (v25)
    {
      v26 = v25;
      v27 = sub_2741C7FEC();
    }

    else
    {
      v27 = 0;
    }

    v28 = [*(a2 + 16) IPv4SubnetMasks];
    if (v28)
    {
      v29 = v28;
      v30 = sub_2741C7FEC();
    }

    else
    {
      v30 = 0;
    }

    v31 = [*(a2 + 16) IPv4RouterAddress];
    if (v31)
    {
      v32 = v31;
      v33 = sub_2741C7E7C();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v49[0] = 0;
    *&v50 = v27;
    *(&v50 + 1) = v30;
    *&v51 = v33;
    *(&v51 + 1) = v35;
    v52 = 0u;
    v53 = 0u;
    v54 = v9;
    v55 = v11;
    v56[0] = 0;
    *&v57 = v27;
    *(&v57 + 1) = v30;
    *&v58 = v33;
    *(&v58 + 1) = v35;
    v59 = 0u;
    v60 = 0u;
    v61 = v9;
    v62 = v11;
    sub_2740B2AC0(v49, v48);
    result = sub_2740B2B1C(v56);
    v15 = v54;
    v14 = v55;
    v20 = v53;
    v21 = v52;
    v18 = v51;
    v19 = v50;
    v16 = v49[0];
  }

  else
  {

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000017, 0x80000002741DC1E0);
    v22 = [*(a2 + 16) IPv4Addresses];
    if (v22)
    {
      v23 = v22;
      v24 = sub_2741C7FEC();
    }

    else
    {
      v24 = 0;
    }

    v36 = [*(a2 + 16) IPv4SubnetMasks];
    if (v36)
    {
      v37 = v36;
      v38 = sub_2741C7FEC();
    }

    else
    {
      v38 = 0;
    }

    v39 = [*(a2 + 16) IPv4RouterAddress];
    if (v39)
    {
      v40 = v39;
      v41 = sub_2741C7E7C();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v56[0] = 0;
    *&v57 = v24;
    *(&v57 + 1) = v38;
    *&v58 = v41;
    *(&v58 + 1) = v43;
    v59 = 0u;
    v60 = 0u;
    v61 = 0x6E776F6E6B6E75;
    v62 = 0xE700000000000000;
    v64[0] = 0;
    *&v65 = v24;
    *(&v65 + 1) = v38;
    *&v66 = v41;
    *(&v66 + 1) = v43;
    v67 = 0u;
    v68 = 0u;
    v69 = 0x6E776F6E6B6E75;
    v70 = 0xE700000000000000;
    sub_2740B2AC0(v56, v49);
    result = sub_2740B2B1C(v64);
    v15 = v61;
    v14 = v62;
    v21 = v59;
    v20 = v60;
    v19 = v57;
    v18 = v58;
    v16 = v56[0];
  }

LABEL_26:
  *a3 = v16;
  *(a3 + 8) = v19;
  *(a3 + 24) = v18;
  *(a3 + 40) = v21;
  *(a3 + 56) = v20;
  *(a3 + 72) = v15;
  *(a3 + 80) = v14;
  return result;
}

void sub_274196238(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for KnownNetwork();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274196D80(a1, v9, type metadata accessor for KnownNetwork);
  v11 = *v9;
  v10 = v9[1];

  sub_2741041FC(v9, type metadata accessor for KnownNetwork);
  v12 = [*(a2 + 16) interfaceName];
  if (!v12)
  {
    v14 = 0x6E776F6E6B6E75;

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000016, 0x80000002741DC1C0);
    v24 = [*(a2 + 16) DNSServerAddresses];
    v22 = 0uLL;
    if (v24)
    {
      v25 = v24;
      v19 = sub_2741C7FEC();

      v22 = 0uLL;
      v23 = 0;
      v16 = 0xE700000000000000;
LABEL_10:
      v21 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v23 = 0;
    v16 = 0xE700000000000000;
LABEL_13:
    v19 = MEMORY[0x277D84F90];
    v21 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v13 = v12;
  v14 = sub_2741C7E7C();
  v16 = v15;

  v17 = [*(a2 + 16) userSettings];
  if (!v17)
  {

    goto LABEL_8;
  }

  v18 = v17;

  sub_2740CDB4C(v18, v14, v16, v11, v10, &v29);
  v19 = v30;
  if (!v30)
  {
LABEL_8:
    v26 = [*(a2 + 16) DNSServerAddresses];
    v22 = 0uLL;
    if (v26)
    {
      v27 = v26;
      v19 = sub_2741C7FEC();

      v22 = 0uLL;
      v23 = 0;
      goto LABEL_10;
    }

    v23 = 0;
    goto LABEL_13;
  }

  v14 = v33;
  v20 = v34;
  v28 = v32;
  v21 = v31;
  v35 = v29;

  v22 = v28;
  v23 = v35;
  v16 = v20;
LABEL_14:
  *a3 = v23;
  *(a3 + 8) = v19;
  *(a3 + 16) = v21;
  *(a3 + 24) = v22;
  *(a3 + 40) = v14;
  *(a3 + 48) = v16;
}

void sub_2741964C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2740ACAC8(a1, v24);
  v6 = v24[0];
  v5 = v24[1];

  sub_2740ACB2C(v24);
  v7 = [*(a2 + 16) interfaceName];
  if (!v7)
  {
    v9 = 0x6E776F6E6B6E75;

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000016, 0x80000002741DC1C0);
    v19 = [*(a2 + 16) DNSServerAddresses];
    v17 = 0uLL;
    if (v19)
    {
      v20 = v19;
      v14 = sub_2741C7FEC();

      v17 = 0uLL;
      v18 = 0;
      v11 = 0xE700000000000000;
LABEL_10:
      v16 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v18 = 0;
    v11 = 0xE700000000000000;
LABEL_13:
    v14 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v8 = v7;
  v9 = sub_2741C7E7C();
  v11 = v10;

  v12 = [*(a2 + 16) userSettings];
  if (!v12)
  {

    goto LABEL_8;
  }

  v13 = v12;

  sub_2740CDB4C(v13, v9, v11, v6, v5, &v25);
  v14 = v26;
  if (!v26)
  {
LABEL_8:
    v21 = [*(a2 + 16) DNSServerAddresses];
    v17 = 0uLL;
    if (v21)
    {
      v22 = v21;
      v14 = sub_2741C7FEC();

      v17 = 0uLL;
      v18 = 0;
      goto LABEL_10;
    }

    v18 = 0;
    goto LABEL_13;
  }

  v9 = v29;
  v15 = v30;
  v23 = v28;
  v16 = v27;
  v31 = v25;

  v17 = v23;
  v18 = v31;
  v11 = v15;
LABEL_14:
  *a3 = v18;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16;
  *(a3 + 24) = v17;
  *(a3 + 40) = v9;
  *(a3 + 48) = v11;
}

uint64_t sub_2741966E8(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for KnownNetwork();
  v27 = sub_274197040(qword_28093B018, type metadata accessor for KnownNetwork);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  sub_274196D80(a1, boxed_opaque_existential_1, type metadata accessor for KnownNetwork);
  v5 = __swift_project_boxed_opaque_existential_1(v25, v26);
  v7 = *boxed_opaque_existential_1;
  v6 = boxed_opaque_existential_1[1];
  v8 = *(a2 + 16);

  v9 = [v8 interfaceName];
  if (!v9)
  {

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000013, 0x80000002741DC150);
    type metadata accessor for ProxySettings();
    swift_allocObject();
    v20 = 0x6E776F6E6B6E75;
    v21 = 0xE700000000000000;
LABEL_8:
    v19 = sub_274113B80(v20, v21);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_2741C7E7C();
  v13 = v12;

  v14 = [*(a2 + 16) userSettings];
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14;
  sub_2741C856C();

  v16 = *v5;
  v17 = v5[1];

  MEMORY[0x2743E5FB0](v16, v17);

  sub_2740CB460(0xD00000000000001DLL, 0x80000002741DC1A0);

  type metadata accessor for ProxySettings();
  swift_allocObject();

  v18 = sub_274113658(v15, v11, v13, v7, v6);
  if (!v18)
  {
LABEL_7:
    sub_2741C856C();

    v23 = *v5;
    v22 = v5[1];

    MEMORY[0x2743E5FB0](v23, v22);

    sub_2740CB460(0xD000000000000025, 0x80000002741DC170);

    type metadata accessor for ProxySettings();
    swift_allocObject();
    v20 = v11;
    v21 = v13;
    goto LABEL_8;
  }

  v19 = v18;

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v19;
}

uint64_t sub_2741969E4(uint64_t a1, uint64_t a2)
{
  v25[3] = &type metadata for ScannedNetwork;
  v25[4] = sub_2740F2248();
  v4 = swift_allocObject();
  v25[0] = v4;
  sub_2740ACAC8(a1, v4 + 16);
  v5 = __swift_project_boxed_opaque_existential_1(v25, &type metadata for ScannedNetwork);
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(a2 + 16);

  v9 = [v8 interfaceName];
  if (!v9)
  {

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000013, 0x80000002741DC150);
    type metadata accessor for ProxySettings();
    swift_allocObject();
    v20 = 0x6E776F6E6B6E75;
    v21 = 0xE700000000000000;
LABEL_8:
    v19 = sub_274113B80(v20, v21);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_2741C7E7C();
  v13 = v12;

  v14 = [*(a2 + 16) userSettings];
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14;
  sub_2741C856C();

  v16 = *v5;
  v17 = v5[1];

  MEMORY[0x2743E5FB0](v16, v17);

  sub_2740CB460(0xD00000000000001DLL, 0x80000002741DC1A0);

  type metadata accessor for ProxySettings();
  swift_allocObject();

  v18 = sub_274113658(v15, v11, v13, v7, v6);
  if (!v18)
  {
LABEL_7:
    sub_2741C856C();

    v23 = *v5;
    v22 = v5[1];

    MEMORY[0x2743E5FB0](v23, v22);

    sub_2740CB460(0xD000000000000025, 0x80000002741DC170);

    type metadata accessor for ProxySettings();
    swift_allocObject();
    v20 = v11;
    v21 = v13;
    goto LABEL_8;
  }

  v19 = v18;

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v19;
}

uint64_t sub_274196CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274196D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_274196DF8()
{
  result = qword_28093AFE0;
  if (!qword_28093AFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AFD0, &qword_2741D6E40);
    sub_274196EB0();
    sub_2740A6D24(&qword_280938228, &qword_2809381F8, &unk_2741D4350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AFE0);
  }

  return result;
}

unint64_t sub_274196EB0()
{
  result = qword_28093AFE8;
  if (!qword_28093AFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AFF0, &qword_2741D6E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AFC8, &qword_2741D6E38);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2740A6D24(&qword_280938218, &qword_280938220, &unk_2741D6E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AFE8);
  }

  return result;
}

uint64_t sub_274197040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2741970C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274197128@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v15 - v10;
  v9();
  v12 = v4[2];
  v12(v11, v8, a1);
  v13 = v4[1];
  v13(v8, a1);
  v12(a2, v11, a1);
  return (v13)(v11, a1);
}

uint64_t sub_274197268@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  return sub_274197128(*(a1 + 16), a2);
}

uint64_t sub_274197278(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_2741972D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_274197350()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B0C0, &qword_2741D7040);
  sub_274197900();
  return sub_2741C7B9C();
}

uint64_t sub_2741973C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B0D0, &qword_2741D7048);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  if (a1)
  {
    v11[0] = v6;
    v11[1] = a1;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B0E0, &unk_2741D7050);
    sub_2740A6D24(&qword_2809388D0, &qword_280938430, &qword_2741CC108);
    sub_2740A6D24(&qword_28093B0D8, &qword_28093B0E0, &unk_2741D7050);
    sub_2741C7B5C();
    (*(v11[0] + 32))(a2, v8, v4);
    return (*(v11[0] + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(v6 + 56);

    return v10(a2, 1, 1, v4);
  }
}

uint64_t sub_274197614@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = sub_2741C70EC();
  sub_2740A6A74();

  result = sub_2741C76AC();
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8 & 1;
  *(a2 + 48) = v9;
  return result;
}

uint64_t sub_274197694()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B0A0, &qword_2741D7030);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7[-v4];
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B0A8, &qword_2741D7038);
  sub_274197870();
  sub_2741C761C();
  if (qword_2809377B8 != -1)
  {
    swift_once();
  }

  v9 = qword_2809466B8;
  v10 = unk_2809466C0;
  sub_2740A6D24(&qword_28093B0E8, &qword_28093B0A0, &qword_2741D7030);
  sub_2740A6A74();

  sub_2741C777C();
  (*(v2 + 8))(v5, v1);
}

unint64_t sub_274197870()
{
  result = qword_28093B0B0;
  if (!qword_28093B0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B0A8, &qword_2741D7038);
    sub_274197900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B0B0);
  }

  return result;
}

unint64_t sub_274197900()
{
  result = qword_28093B0B8;
  if (!qword_28093B0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B0C0, &qword_2741D7040);
    sub_274197984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B0B8);
  }

  return result;
}

unint64_t sub_274197984()
{
  result = qword_28093B0C8;
  if (!qword_28093B0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B0D0, &qword_2741D7048);
    sub_2740A6D24(&qword_28093B0D8, &qword_28093B0E0, &unk_2741D7050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B0C8);
  }

  return result;
}

uint64_t sub_274197A3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B0A0, &qword_2741D7030);
  sub_2740A6D24(&qword_28093B0E8, &qword_28093B0A0, &qword_2741D7030);
  sub_2740A6A74();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274197AE8()
{
  v1 = [*(v0 + 16) userSettings];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2740CD860([v1 askToJoinMode]);
    if (v3 == 4)
    {
      sub_2741C856C();

      v23 = 0xD000000000000020;
      v24 = 0x80000002741E3210;
      *&v25 = [v2 askToJoinMode];
      v4 = sub_2741C86CC();
      MEMORY[0x2743E5FB0](v4);

      v5 = 0x4B5357206F7420;
      v6 = 0xE700000000000000;
LABEL_7:
      MEMORY[0x2743E5FB0](v5, v6);
      sub_2740CB218(v23, v24, 0x7474655372657375, 0xEC00000073676E69);

      goto LABEL_8;
    }

    v7 = v3;
    v8 = sub_2740CD860([v2 autoHotspotMode]);
    if (v8 == 4)
    {
      sub_2741C856C();

      v23 = 0xD000000000000022;
      v24 = 0x80000002741E3240;
      *&v25 = [v2 autoHotspotMode];
      v9 = sub_2741C86CC();
      MEMORY[0x2743E5FB0](v9);

      v5 = 0x204B5357206F7420;
      v6 = 0xE800000000000000;
      goto LABEL_7;
    }

    v11 = v8;
    v13 = [v2 OSSpecificAttributes];
    if (v13)
    {
      v14 = v13;
      v15 = sub_2741C7D6C();

      *&v25 = 0xD000000000000018;
      *(&v25 + 1) = 0x80000002741E2510;
      sub_2741C850C();
      if (*(v15 + 16))
      {
        v16 = sub_274125164(&v23);
        if (v17)
        {
          sub_27409D308(*(v15 + 56) + 32 * v16, &v25);
          sub_27409D2A4(&v23);

          if (*(&v26 + 1))
          {
            swift_dynamicCast();
            goto LABEL_18;
          }

LABEL_17:
          sub_2740B29E8(&v25);
LABEL_18:
          v18 = [v2 OSSpecificAttributes];
          if (v18)
          {
            v19 = v18;
            v20 = sub_2741C7D6C();

            *&v25 = 0xD00000000000001ALL;
            *(&v25 + 1) = 0x80000002741E24F0;
            sub_2741C850C();
            if (*(v20 + 16))
            {
              v21 = sub_274125164(&v23);
              if (v22)
              {
                sub_27409D308(*(v20 + 56) + 32 * v21, &v25);
                sub_27409D2A4(&v23);

                if (*(&v26 + 1))
                {
                  swift_dynamicCast();
LABEL_26:
                  [objc_opt_self() getPowerModificationState];

                  v10 = v7;
                  return v10 | (v11 << 8);
                }

LABEL_25:
                sub_2740B29E8(&v25);
                goto LABEL_26;
              }
            }

            sub_27409D2A4(&v23);
          }

          v25 = 0u;
          v26 = 0u;
          goto LABEL_25;
        }
      }

      sub_27409D2A4(&v23);
    }

    v25 = 0u;
    v26 = 0u;
    goto LABEL_17;
  }

  sub_2740CB218(0xD00000000000002BLL, 0x80000002741E31E0, 0x7474655372657375, 0xEC00000073676E69);
LABEL_8:
  v10 = 1;
  v11 = 1;
  return v10 | (v11 << 8);
}

size_t sub_274197F84(void *a1)
{
  v2 = type metadata accessor for KnownNetwork();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_2741980C8();
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  while (1)
  {
    v11 = v9;
    if (v10 == v9)
    {
      goto LABEL_11;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    sub_27409CF58(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v6);
    if (*v6 == *a1 && v6[1] == a1[1])
    {
      sub_27409D050(v6);
LABEL_11:

      return v10 != v11;
    }

    ++v9;
    v13 = sub_2741C86DC();
    result = sub_27409D050(v6);
    if (v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

size_t sub_2741980C8()
{
  v1 = type metadata accessor for KnownNetwork();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = *(v0 + 88);
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v20 = *(v0 + 88);
    }

    v11 = sub_2741C848C();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    goto LABEL_13;
  }

  v22 = MEMORY[0x277D84F90];

  result = sub_27419897C(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v12 = v22;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2743E6600](v14, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v14 + 32);
      }

      sub_274117670(v15, v5);
      v22 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_27419897C(v16 > 1, v17 + 1, 1);
        v12 = v22;
      }

      ++v14;
      *(v12 + 16) = v17 + 1;
      sub_27409D240(v5, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17);
    }

    while (v11 != v14);

LABEL_13:
    v18 = sub_2741C80DC();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v12;

    sub_2740CE980(0, 0, v9, &unk_2741D7090, v19);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_274198388()
{
  *(v0 + 24) = sub_2741C80AC();
  *(v0 + 32) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274198420, v2, v1);
}

uint64_t sub_274198420()
{
  v1 = *(v0 + 32);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_2741984B8, 0, 0);
}

uint64_t sub_2741984B8()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274198544, v3, v2);
}

uint64_t sub_274198544()
{
  v1 = *(v0 + 40);

  *(v0 + 48) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2741985C0, 0, 0);
}

uint64_t sub_2741985C0()
{
  v1 = *(v0 + 24);
  *(v0 + 56) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27419864C, v3, v2);
}

uint64_t sub_27419864C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];

  sub_2741BBB14();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2741986C0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2741C86DC() & 1;
  }
}

void sub_274198718(uint64_t a1)
{
  v2 = v1;
  v17 = *MEMORY[0x277D85DE8];
  sub_2741C856C();

  v15 = 0xD000000000000013;
  v16 = 0x80000002741E3170;
  v4 = sub_274117C50();
  MEMORY[0x2743E5FB0](v4);

  sub_2740CB460(0xD000000000000013, 0x80000002741E3170);

  sub_27409D4E4(a1 + 72, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_2740BA268(0, &qword_280937E20, 0x277D02B38);
  if (swift_dynamicCast())
  {
    v5 = *(v1 + 16);
    v15 = 0;
    if (![v5 removeKnownNetworkProfile:v14 reason:2 error:&v15])
    {
      v12 = v15;
      sub_2741C681C();

      swift_willThrow();
      goto LABEL_10;
    }

    v6 = v15;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_2741C856C();

    v15 = 0xD000000000000028;
    v16 = 0x80000002741E31B0;
    v7 = sub_274117C50();
    MEMORY[0x2743E5FB0](v7);

    sub_2740CB218(v15, v16, 0xD000000000000010, 0x80000002741E3190);
  }

  v8 = [*(v1 + 16) knownNetworkProfilesWithProperties_];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2741C7FEC();
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v2 + 88);
  *(v2 + 88) = v10;

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
}

size_t sub_27419897C(size_t a1, int64_t a2, char a3)
{
  result = sub_2741B4140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_27419899C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2741989DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_274198368(a1, v4, v5, v6);
}

void *sub_274198A90(void *a1, int64_t a2, char a3)
{
  result = sub_2741B4414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_274198AB0(char *a1, int64_t a2, char a3)
{
  result = sub_2741B455C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_274198AD0(char *a1, int64_t a2, char a3)
{
  result = sub_2741B4680(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_274198AF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = v2;
  v32 = *MEMORY[0x277D85DE8];
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D02B60]) init];
  [v11 setAskToJoinMode_];
  [v11 setAutoHotspotMode_];
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741E3270);
  v29 = [v11 askToJoinMode];
  type metadata accessor for CWFAskToJoinMode(0);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0xD000000000000012, 0x80000002741E3290);
  v29 = [v11 autoHotspotMode];
  type metadata accessor for CWFAutoHotspotMode(0);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  v12 = v30;
  v13 = v31;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_280945DD8);
  (*(v7 + 16))(v10, v14, v6);
  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v12, v13);

  (*(v7 + 8))(v10, v6);
  v15 = *(v3 + 16);
  v16 = qword_280937350;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_280945DC8;
  v19 = qword_280937358;

  if (v19 != -1)
  {
    swift_once();
  }

  sub_274149FA4(v20, v18);
  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v21 = sub_2741C81DC();

  v30 = 0;
  v22 = [v17 applyUserSettings:v11 properties:v21 error:&v30];

  if (v22)
  {
    v23 = v30;
  }

  else
  {
    v24 = v30;
    v25 = sub_2741C681C();

    swift_willThrow();
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD00000000000001ELL, 0x80000002741E32B0);
    v29 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v30, v31, 0xD000000000000013, 0x80000002741E32D0);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t sub_274198F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2741C689C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_274199018(uint64_t a1, uint64_t a2)
{
  v4 = sub_2741C689C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PortalInfoSection()
{
  result = qword_28093B0F0;
  if (!qword_28093B0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2741990D4()
{
  result = sub_2741C689C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27419915C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B110, &qword_2741D7120);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *a2 = sub_2741C71AC();
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B118, &qword_2741D7128) + 44);
  *v7 = sub_2741C71BC();
  *(v7 + 1) = 0x4034000000000000;
  v7[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B120, &unk_2741D7130);
  sub_27419929C(a1, &v7[*(v9 + 44)]);
  sub_2741C6D4C();
  sub_274199D88(&qword_28093B128, &qword_28093B110, &qword_2741D7120);
  sub_2741C778C();
  return sub_27409D420(v7, &qword_28093B110, &qword_2741D7120);
}

uint64_t sub_27419929C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for PortalInfoSection();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v37 = *(v41 - 8);
  v6 = v37;
  v7 = *(v37 + 64);
  v8 = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A210, &qword_2741D7140);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v16;
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v43 = sub_2741C71BC();
  LOBYTE(v49[0]) = 0;
  sub_274199748(v45);
  *&v44[23] = v45[1];
  *&v44[39] = v45[2];
  *&v44[55] = v45[3];
  v44[71] = v46;
  *&v44[7] = v45[0];
  v19 = v49[0];
  v38 = LOBYTE(v49[0]);
  sub_2741C7B4C();
  v20 = &v18[*(v12 + 44)];
  v20[32] = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  sub_274199DDC(a1, &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v22 = swift_allocObject();
  sub_274199F0C(&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = v42;
  sub_2741C7A7C();
  sub_2740A6D94(v18, v16, &qword_28093A210, &qword_2741D7140);
  v24 = *(v6 + 16);
  v25 = v40;
  v26 = v41;
  v24(v40, v23, v41);
  *&v47 = v43;
  *(&v47 + 1) = 0x4008000000000000;
  LOBYTE(v48[0]) = v19;
  *(v48 + 1) = *v44;
  *(&v48[1] + 1) = *&v44[16];
  *(&v48[2] + 1) = *&v44[32];
  *(&v48[3] + 1) = *&v44[48];
  *(&v48[4] + 1) = *&v44[64];
  v27 = v48[0];
  *a2 = v47;
  a2[1] = v27;
  v28 = v48[1];
  v29 = v48[2];
  v30 = v48[3];
  *(a2 + 73) = *(&v48[3] + 9);
  a2[3] = v29;
  a2[4] = v30;
  a2[2] = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B130, &qword_2741D7148);
  v32 = v36;
  sub_2740A6D94(v36, a2 + *(v31 + 48), &qword_28093A210, &qword_2741D7140);
  v24(a2 + *(v31 + 64), v25, v26);
  sub_2740A6D94(&v47, v49, &qword_28093B138, &unk_2741D7150);
  v33 = *(v37 + 8);
  v33(v42, v26);
  sub_27409D420(v18, &qword_28093A210, &qword_2741D7140);
  v33(v25, v26);
  sub_27409D420(v32, &qword_28093A210, &qword_2741D7140);
  v49[0] = v43;
  v49[1] = 0x4008000000000000;
  v50 = v38;
  v52 = *&v44[16];
  v53 = *&v44[32];
  v54 = *&v44[48];
  v55 = *&v44[64];
  v51 = *v44;
  return sub_27409D420(v49, &qword_28093B138, &unk_2741D7150);
}

uint64_t sub_274199748@<X0>(uint64_t a1@<X8>)
{
  if (qword_280937B78 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v2 = MEMORY[0x277D837D0];
  v3 = sub_2741C76AC();
  v5 = v4;
  v7 = v6;
  sub_2741C75EC();
  v38 = sub_2741C767C();
  v39 = v8;
  v10 = v9;
  v37 = v11;

  sub_2740A6AC8(v3, v5, v7 & 1);

  v12 = sub_2741C686C();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = v2;
    if (qword_280937B80 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2741CB550;
    *(v17 + 56) = v16;
    *(v17 + 64) = sub_27410D7BC();
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;

    v18 = sub_2741C7E4C() >> 32;
    v20 = v19;

    DWORD1(v40) = v18;
    *(&v40 + 1) = v20;
    v21 = sub_2741C76AC();
    v23 = v22;
    LOBYTE(v17) = v24;
    LODWORD(v40) = sub_2741C737C();
    sub_2741C764C();
    sub_2740A6AC8(v21, v23, v17 & 1);
  }

  else
  {
    if (qword_280937B80 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2741CB550;

    v26 = sub_2741C683C();
    v28 = v27;
    *(v25 + 56) = v2;
    *(v25 + 64) = sub_27410D7BC();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    HIDWORD(v26) = sub_2741C7E4C() >> 32;
    v30 = v29;

    DWORD1(v40) = HIDWORD(v26);
    *(&v40 + 1) = v30;
    v31 = sub_2741C76AC();
    v33 = v32;
    v35 = v34;
    LODWORD(v40) = sub_2741C737C();
    sub_2741C764C();
    sub_2740A6AC8(v31, v33, v35 & 1);
  }

  sub_2741C72CC();
  *a1 = v38;
  *(a1 + 8) = v10;
  *(a1 + 16) = v37 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v40;
  *(a1 + 48) = v41;
  *(a1 + 64) = v42;
  sub_27409861C(v38, v10, v37 & 1);

  sub_274138974(v40, *(&v40 + 1), v41);
  sub_2741389E0(v40, *(&v40 + 1), v41);
  sub_2740A6AC8(v38, v10, v37 & 1);
}

void sub_274199BC0()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_2741C684C();
    [v1 openSensitiveURL:v2 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_274199C4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280937B88 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  result = sub_2741C76AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274199CF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B100, &qword_2741D7118);
  sub_274199D88(&qword_28093B108, &qword_28093B100, &qword_2741D7118);
  return sub_2741C7B9C();
}

uint64_t sub_274199D88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_274199DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PortalInfoSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274199E40()
{
  v1 = *(type metadata accessor for PortalInfoSection() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2741C689C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_274199F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PortalInfoSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_274199F70()
{
  v0 = *(*(type metadata accessor for PortalInfoSection() - 8) + 80);

  sub_274199BC0();
}

unint64_t sub_274199FD4()
{
  result = qword_28093B140;
  if (!qword_28093B140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B148, &unk_2741D7160);
    sub_274199D88(&qword_28093B108, &qword_28093B100, &qword_2741D7118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B140);
  }

  return result;
}

void static WiFiDeviceCapability.getWiFiDeviceCapability()(char *a1@<X8>)
{
  if (qword_280937BA8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  if (byte_28093B151)
  {
    v1 = 3;
  }

  else
  {
    if (qword_280937BA0 != -1)
    {
      v5 = a1;
      swift_once();
      a1 = v5;
    }

    if (byte_28093B150 == 1)
    {
      v2 = a1;
      _s15WiFiSettingsKit0aB16DeviceCapabilityC15isWAPIAvailableSbyFZ_0();
      a1 = v2;
      if (v3)
      {
        v1 = 2;
      }

      else
      {
        v1 = 4;
      }
    }

    else
    {
      v1 = 1;
    }
  }

  *a1 = v1;
}

uint64_t WiFiDeviceCapability.DeviceCapability.hashValue.getter()
{
  v1 = *v0;
  sub_2741C87DC();
  MEMORY[0x2743E6870](v1);
  return sub_2741C880C();
}

uint64_t sub_27419A230()
{
  result = MGGetProductType();
  qword_28093B158 = result;
  return result;
}

void sub_27419A270(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_27419A2C8()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_wifiChipset_obj();

    if (v2)
    {
      v3 = sub_2741C7E7C();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    qword_28093B168 = v3;
    qword_28093B170 = v5;
  }

  else
  {
    __break(1u);
  }
}

void _s15WiFiSettingsKit0aB16DeviceCapabilityC15isWAPIAvailableSbyFZ_0()
{
  if (qword_280937BB0 != -1)
  {
    swift_once();
  }

  if (qword_280937BC0 != -1)
  {
    swift_once();
  }

  v0 = qword_28093B170;
  if (qword_28093B170)
  {
    v1 = qword_28093B168;
    v2 = HIBYTE(qword_28093B170) & 0xF;
    v3 = qword_28093B168 & 0xFFFFFFFFFFFFLL;
    if ((qword_28093B170 & 0x2000000000000000) != 0 ? HIBYTE(qword_28093B170) & 0xF : qword_28093B168 & 0xFFFFFFFFFFFFLL)
    {
      if ((qword_28093B170 & 0x1000000000000000) != 0)
      {

        sub_2740B1168(v1, v0, 10);
        v31 = v30;

        if (v31)
        {
          return;
        }

        goto LABEL_70;
      }

      if ((qword_28093B170 & 0x2000000000000000) != 0)
      {
        v32[0] = qword_28093B168;
        v32[1] = qword_28093B170 & 0xFFFFFFFFFFFFFFLL;
        if (qword_28093B168 == 43)
        {
          if (v2)
          {
            if (--v2)
            {
              v19 = 0;
              v20 = v32 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v19;
                if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                {
                  break;
                }

                v19 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v2)
                {
                  goto LABEL_67;
                }
              }
            }

            goto LABEL_66;
          }

LABEL_76:
          __break(1u);
          return;
        }

        if (qword_28093B168 != 45)
        {
          if (v2)
          {
            v26 = 0;
            v27 = v32;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v2)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_66;
        }

        if (v2)
        {
          if (--v2)
          {
            v11 = 0;
            v12 = v32 + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                break;
              }

              v14 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                break;
              }

              v11 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                break;
              }

              ++v12;
              if (!--v2)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_66;
        }
      }

      else
      {
        if ((qword_28093B168 & 0x1000000000000000) != 0)
        {
          v5 = ((qword_28093B170 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v5 = sub_2741C858C();
        }

        v6 = *v5;
        if (v6 == 43)
        {
          if (v3 >= 1)
          {
            v2 = v3 - 1;
            if (v3 != 1)
            {
              v15 = 0;
              if (v5)
              {
                v16 = v5 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_66;
                  }

                  v18 = 10 * v15;
                  if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                  {
                    goto LABEL_66;
                  }

                  v15 = v18 + v17;
                  if (__OFADD__(v18, v17))
                  {
                    goto LABEL_66;
                  }

                  ++v16;
                  if (!--v2)
                  {
                    goto LABEL_67;
                  }
                }
              }

              goto LABEL_58;
            }

            goto LABEL_66;
          }

          goto LABEL_75;
        }

        if (v6 != 45)
        {
          if (v3)
          {
            v23 = 0;
            if (v5)
            {
              while (1)
              {
                v24 = *v5 - 48;
                if (v24 > 9)
                {
                  goto LABEL_66;
                }

                v25 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  goto LABEL_66;
                }

                v23 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  goto LABEL_66;
                }

                ++v5;
                if (!--v3)
                {
                  goto LABEL_58;
                }
              }
            }

            goto LABEL_58;
          }

LABEL_66:
          LOBYTE(v2) = 1;
LABEL_67:
          v33 = v2;
          if (v2)
          {
            return;
          }

LABEL_70:
          if (qword_280937BB8 != -1)
          {
            swift_once();
          }

          return;
        }

        if (v3 >= 1)
        {
          v2 = v3 - 1;
          if (v3 != 1)
          {
            v7 = 0;
            if (v5)
            {
              v8 = v5 + 1;
              while (1)
              {
                v9 = *v8 - 48;
                if (v9 > 9)
                {
                  goto LABEL_66;
                }

                v10 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_66;
                }

                v7 = v10 - v9;
                if (__OFSUB__(v10, v9))
                {
                  goto LABEL_66;
                }

                ++v8;
                if (!--v2)
                {
                  goto LABEL_67;
                }
              }
            }

LABEL_58:
            LOBYTE(v2) = 0;
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        __break(1u);
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }
  }
}

unint64_t sub_27419A890()
{
  result = qword_28093B178;
  if (!qword_28093B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B178);
  }

  return result;
}

uint64_t sub_27419A958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B180, &qword_2741D7288);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v39 - v4;
  v5 = type metadata accessor for WFButton();
  v6 = v5 - 8;
  v40 = *(v5 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B188, &unk_2741D7290);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = *(v6 + 28);
  v41 = a1;
  v23 = *(a1 + v22);
  if (sub_2740B31F0(v23) == 0x746567726F46 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v26 = sub_2741C86DC();

    if ((v26 & 1) == 0)
    {
      v21 = v19;
      v45 = sub_2740B2E74(v23);
      v46 = v27;
      v28 = v39;
      if (((1 << v23) & 0x5F9) != 0)
      {
        v29 = sub_2741C6C5C();
        (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
      }

      else
      {
        if (((1 << v23) & 0x202) != 0)
        {
          sub_2741C6C4C();
        }

        else
        {
          sub_2741C6C3C();
        }

        v35 = sub_2741C6C5C();
        (*(*(v35 - 8) + 56))(v28, 0, 1, v35);
      }

      sub_27419B074(v41, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v36 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v37 = swift_allocObject();
      sub_27419B0DC(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
      sub_2740A6A74();
      sub_2741C7A8C();
      goto LABEL_21;
    }
  }

  v45 = sub_2740B2E74(v23);
  v46 = v30;
  if (((1 << v23) & 0x5F9) != 0)
  {
    v31 = sub_2741C6C5C();
    (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
  }

  else
  {
    if (((1 << v23) & 0x202) != 0)
    {
      sub_2741C6C4C();
    }

    else
    {
      sub_2741C6C3C();
    }

    v32 = sub_2741C6C5C();
    (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
  }

  sub_27419B074(v41, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v34 = swift_allocObject();
  sub_27419B0DC(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
  sub_2740A6A74();
  sub_2741C7A8C();
LABEL_21:
  (*(v15 + 16))(v42, v21, v14);
  swift_storeEnumTagMultiPayload();
  sub_2741166BC();
  sub_2741C72CC();
  return (*(v15 + 8))(v21, v14);
}

uint64_t sub_27419AEC0(uint64_t a1)
{
  strcpy(v8, "User clicked ");
  HIWORD(v8[1]) = -4864;
  v2 = type metadata accessor for WFButton();
  v3 = sub_2740B2E74(*(a1 + *(v2 + 20)));
  MEMORY[0x2743E5FB0](v3);

  sub_2740CB460(v8[0], v8[1]);

  v5 = a1 + *(v2 + 24);
  v6 = *(v5 + 8);
  return (*v5)(v4);
}

uint64_t sub_27419AF68@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return sub_2740ACA00(result, a2, a3, a4);
}

uint64_t sub_27419AF9C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_2741C856C();

  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v4, v5);

  sub_2740CB460(0xD00000000000001ALL, 0x80000002741E3350);

  return a2(a1);
}

uint64_t sub_27419B074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27419B0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_19()
{
  v1 = (type metadata accessor for WFButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2741C699C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27419B290()
{
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000019, 0x80000002741E3530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B1E0, qword_2741D74C0);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_27419B3F8()
{
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_27419B46C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_27419B520(uint64_t a1, char a2)
{
  if (*(v2 + 24))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_27419DE3C();
      sub_2741C69FC();
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + 16) != a1)
  {
    goto LABEL_9;
  }

  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;

  return sub_27419B290();
}

uint64_t sub_27419B648(uint64_t a1)
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_2741C856C();

  v12 = 0xD000000000000020;
  v13 = 0x80000002741E3500;
  sub_2740A6D94(a1, &v10, &qword_280938340, &qword_2741D1660);
  v3 = v11;
  if (v11)
  {
    v4 = v10;

    sub_2740ACB2C(&v10);
  }

  else
  {
    v4 = 7104878;
    sub_27409D420(&v10, &qword_280938340, &qword_2741D1660);
    v3 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v4, v3);

  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v1 + 32, &v10, &qword_280938340, &qword_2741D1660);
  v5 = v11;
  if (v11)
  {
    v6 = v10;

    sub_27409D420(&v10, &qword_280938340, &qword_2741D1660);
  }

  else
  {
    v6 = 7104878;
    sub_27409D420(&v10, &qword_280938340, &qword_2741D1660);
    v5 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v6, v5);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(v12, v13);

  swift_getKeyPath();
  v10 = v1;
  sub_2741C6A0C();

  sub_2740A6D94(v1 + 32, &v10, &qword_280938340, &qword_2741D1660);
  v7 = v11;
  result = sub_27409D420(&v10, &qword_280938340, &qword_2741D1660);
  if (!v7)
  {
    if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v10 = v1;
      sub_2741C69FC();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress) = 0;
      return sub_27419D368(0);
    }
  }

  return result;
}

uint64_t sub_27419B958@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v1 + 32, a1, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419B9F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v3 + 32, a2, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419BAB0(uint64_t a1)
{
  swift_beginAccess();
  sub_2740A6D94(v1 + 32, v7, &qword_280938340, &qword_2741D1660);
  v3 = sub_27419E33C(v7, a1);
  sub_27409D420(v7, &qword_280938340, &qword_2741D1660);
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v7[0] = v1;
    sub_27419DE3C();
    sub_2741C69FC();
  }

  else
  {
    sub_2740A6D94(a1, v7, &qword_280938340, &qword_2741D1660);
    sub_2740A6D94(v1 + 32, v6, &qword_280938340, &qword_2741D1660);
    swift_beginAccess();
    sub_2740FF138(v7, v1 + 32, &qword_280938340, &qword_2741D1660);
    swift_endAccess();
    sub_27419B648(v6);
    sub_27409D420(v6, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v7, &qword_280938340, &qword_2741D1660);
  }

  return sub_27409D420(a1, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419BC7C(uint64_t a1, uint64_t a2)
{
  sub_2740A6D94(a2, v5, &qword_280938340, &qword_2741D1660);
  swift_beginAccess();
  sub_2740A6D94(a1 + 32, v4, &qword_280938340, &qword_2741D1660);
  swift_beginAccess();
  sub_2740FF138(v5, a1 + 32, &qword_280938340, &qword_2741D1660);
  swift_endAccess();
  sub_27419B648(v4);
  sub_27409D420(v4, &qword_280938340, &qword_2741D1660);
  return sub_27409D420(v5, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419BD64(uint64_t a1)
{
  v2 = v1;
  v4 = 7104878;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v19 - v10);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_2741C856C();

  v22 = 0xD000000000000024;
  v23 = 0x80000002741E34D0;
  sub_2740A6D94(a1, v11, &qword_280938570, &qword_2741D1630);
  v12 = type metadata accessor for KnownNetwork();
  v13 = *(*(v12 - 8) + 48);
  if (v13(v11, 1, v12) == 1)
  {
    sub_27409D420(v11, &qword_280938570, &qword_2741D1630);
    v14 = 0xE300000000000000;
    v15 = 7104878;
  }

  else
  {
    v15 = *v11;
    v14 = v11[1];

    sub_27409D050(v11);
  }

  MEMORY[0x2743E5FB0](v15, v14);

  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  v20 = v1;
  sub_27419DE3C();
  sub_2741C6A0C();

  v16 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  sub_2740A6D94(v2 + v16, v9, &qword_280938570, &qword_2741D1630);
  if (v13(v9, 1, v12))
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v4 = *v9;
    v17 = v9[1];
  }

  sub_27409D420(v9, &qword_280938570, &qword_2741D1630);
  MEMORY[0x2743E5FB0](v4, v17);

  sub_2740CB460(v22, v23);
}

uint64_t sub_27419C014@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_27419DE3C();
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  return sub_2740A6D94(v5 + v3, a1, &qword_280938570, &qword_2741D1630);
}

uint64_t sub_27419C0BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  return sub_2740A6D94(v3 + v4, a2, &qword_280938570, &qword_2741D1630);
}

uint64_t sub_27419C164(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_2740A6D94(a1, &v10 - v6, &qword_280938570, &qword_2741D1630);
  v8 = *a2;
  return sub_27419C210(v7);
}

uint64_t sub_27419C210(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  sub_2740A6D94(v1 + v10, v9, &qword_280938570, &qword_2741D1630);
  v11 = sub_27419E088(v9, a1);
  sub_27409D420(v9, &qword_280938570, &qword_2741D1630);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14[-2] = v1;
    v14[-1] = a1;
    v14[2] = v1;
    sub_27419DE3C();
    sub_2741C69FC();
  }

  else
  {
    sub_2740A6D94(a1, v9, &qword_280938570, &qword_2741D1630);
    sub_2740A6D94(v1 + v10, v7, &qword_280938570, &qword_2741D1630);
    swift_beginAccess();
    sub_2740FF138(v9, v1 + v10, &qword_280938570, &qword_2741D1630);
    swift_endAccess();
    sub_27419BD64(v7);
    sub_27409D420(v7, &qword_280938570, &qword_2741D1630);
    sub_27409D420(v9, &qword_280938570, &qword_2741D1630);
  }

  return sub_27409D420(a1, &qword_280938570, &qword_2741D1630);
}

uint64_t sub_27419C448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  sub_2740A6D94(a2, &v13[-v9], &qword_280938570, &qword_2741D1630);
  v11 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  sub_2740A6D94(a1 + v11, v8, &qword_280938570, &qword_2741D1630);
  swift_beginAccess();
  sub_2740FF138(v10, a1 + v11, &qword_280938570, &qword_2741D1630);
  swift_endAccess();
  sub_27419BD64(v8);
  sub_27409D420(v8, &qword_280938570, &qword_2741D1630);
  return sub_27409D420(v10, &qword_280938570, &qword_2741D1630);
}

uint64_t sub_27419C5A8(uint64_t a1)
{
  v2 = v1;
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_2741C856C();

  v12 = 0xD00000000000001DLL;
  v13 = 0x80000002741E34B0;
  sub_2740A6D94(a1, &v10, &qword_280938340, &qword_2741D1660);
  v4 = v11;
  if (v11)
  {
    v5 = v10;

    sub_2740ACB2C(&v10);
  }

  else
  {
    v5 = 7104878;
    sub_27409D420(&v10, &qword_280938340, &qword_2741D1660);
    v4 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v5, v4);

  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v6 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  sub_2740A6D94(v2 + v6, &v10, &qword_280938340, &qword_2741D1660);
  v7 = v11;
  if (v11)
  {
    v8 = v10;

    sub_27409D420(&v10, &qword_280938340, &qword_2741D1660);
  }

  else
  {
    v8 = 7104878;
    sub_27409D420(&v10, &qword_280938340, &qword_2741D1660);
    v7 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v8, v7);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(v12, v13);
}

uint64_t sub_27419C7A0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_27419DE3C();
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  return sub_2740A6D94(v5 + v3, a1, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419C848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  return sub_2740A6D94(v3 + v4, a2, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419C908(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  sub_2740A6D94(a1, v9, &qword_280938340, &qword_2741D1660);
  v7 = *a2;
  return a5(v9);
}

uint64_t sub_27419C95C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  sub_2740A6D94(v1 + v3, v8, &qword_280938340, &qword_2741D1660);
  v4 = sub_27419E33C(v8, a1);
  sub_27409D420(v8, &qword_280938340, &qword_2741D1660);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v8[0] = v1;
    sub_27419DE3C();
    sub_2741C69FC();
  }

  else
  {
    sub_2740A6D94(a1, v8, &qword_280938340, &qword_2741D1660);
    sub_2740A6D94(v1 + v3, v7, &qword_280938340, &qword_2741D1660);
    swift_beginAccess();
    sub_2740FF138(v8, v1 + v3, &qword_280938340, &qword_2741D1660);
    swift_endAccess();
    sub_27419C5A8(v7);
    sub_27409D420(v7, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v8, &qword_280938340, &qword_2741D1660);
  }

  return sub_27409D420(a1, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419CB30(uint64_t a1, uint64_t a2)
{
  sub_2740A6D94(a2, v6, &qword_280938340, &qword_2741D1660);
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  sub_2740A6D94(a1 + v3, v5, &qword_280938340, &qword_2741D1660);
  swift_beginAccess();
  sub_2740FF138(v6, a1 + v3, &qword_280938340, &qword_2741D1660);
  swift_endAccess();
  sub_27419C5A8(v5);
  sub_27409D420(v5, &qword_280938340, &qword_2741D1660);
  return sub_27409D420(v6, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419CC20(char a1)
{
  sub_2741C856C();

  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v3, v4);

  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v5, v6);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(0xD000000000000018, 0x80000002741E3490);
}

uint64_t sub_27419CDCC()
{
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741E3470);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v2 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_27419CF18()
{
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState);
}

uint64_t sub_27419CF90(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState) == a1)
  {

    return sub_27419CDCC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27419DE3C();
    sub_2741C69FC();
  }
}

uint64_t sub_27419D098()
{
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000019, 0x80000002741E3450);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v2 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_27419D1E4()
{
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState);
}

uint64_t sub_27419D25C(unsigned __int8 a1)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState) == a1)
  {

    return sub_27419D098();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27419DE3C();
    sub_2741C69FC();
  }
}

uint64_t sub_27419D368(char a1)
{
  sub_2741C856C();

  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v3, v4);

  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v5, v6);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(0xD00000000000001DLL, 0x80000002741E3430);
}

uint64_t sub_27419D4D8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  return *(v2 + *a2);
}

uint64_t sub_27419D548@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress);
  return result;
}

uint64_t sub_27419D62C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(v5 + *a2) == (a1 & 1))
  {
    *(v5 + *a2) = a1 & 1;

    return a5();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27419DE3C();
    sub_2741C69FC();
  }
}

uint64_t sub_27419D728()
{
  sub_27409D420(v0 + 32, &qword_280938340, &qword_2741D1660);
  sub_27409D420(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile, &qword_280938570, &qword_2741D1630);
  sub_27409D420(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork, &qword_280938340, &qword_2741D1660);
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CurrentNetworkState()
{
  result = qword_28093B1C8;
  if (!qword_28093B1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27419D878()
{
  sub_27419D978();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_2741C6A4C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_27419D978()
{
  if (!qword_28093B1D8)
  {
    type metadata accessor for KnownNetwork();
    v0 = sub_2741C839C();
    if (!v1)
    {
      atomic_store(v0, &qword_28093B1D8);
    }
  }
}

uint64_t sub_27419D9D0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  v2 = type metadata accessor for KnownNetwork();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn) = 0;
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState) = 0;
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState) = 3;
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress) = 0;
  sub_2741C6A3C();
  return v0;
}

uint64_t sub_27419DABC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v3 + 32, a1, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419DBA4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  result = *(v1 + 16);
  v3 = *(v1 + 24);
  return result;
}

uint64_t sub_27419DC40@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  return sub_2740A6D94(v3 + v4, a1, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419DD78()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  return *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress);
}

unint64_t sub_27419DE14(uint64_t a1)
{
  result = sub_27419DE3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27419DE3C()
{
  result = qword_2809382A0;
  if (!qword_2809382A0)
  {
    type metadata accessor for CurrentNetworkState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809382A0);
  }

  return result;
}

uint64_t keypath_set_55Tm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  sub_2740A6D94(a1, v9, &qword_280938340, &qword_2741D1660);
  v7 = *a2;
  return a5(v9);
}

uint64_t sub_27419DFC0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState);
  *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState) = *(v0 + 24);
  return sub_27419D098();
}

uint64_t sub_27419E00C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState);
  *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState) = *(v0 + 24);
  return sub_27419CDCC();
}

uint64_t sub_27419E088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnownNetwork();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B78, &unk_2741D6DB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_2740A6D94(a1, &v23 - v16, &qword_280938570, &qword_2741D1630);
  sub_2740A6D94(a2, &v17[v18], &qword_280938570, &qword_2741D1630);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_27409D420(v17, &qword_280938570, &qword_2741D1630);
      v20 = 0;
      return v20 & 1;
    }

LABEL_6:
    sub_27409D420(v17, &qword_280939B78, &unk_2741D6DB0);
    v20 = 1;
    return v20 & 1;
  }

  sub_2740A6D94(v17, v12, &qword_280938570, &qword_2741D1630);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_27409D050(v12);
    goto LABEL_6;
  }

  sub_27409D240(&v17[v18], v8);
  if (*v12 == *v8 && v12[1] == v8[1])
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_2741C86DC() ^ 1;
  }

  sub_27409D050(v8);
  sub_27409D050(v12);
  sub_27409D420(v17, &qword_280938570, &qword_2741D1630);
  return v20 & 1;
}

uint64_t sub_27419E33C(uint64_t a1, uint64_t a2)
{
  sub_2740A6D94(a1, v8, &qword_280938340, &qword_2741D1660);
  sub_2740A6D94(a2, v10, &qword_280938340, &qword_2741D1660);
  if (!v9)
  {
    if (!*(&v10[0] + 1))
    {
      sub_27409D420(v8, &qword_280938340, &qword_2741D1660);
      v3 = 0;
      return v3 & 1;
    }

LABEL_8:
    sub_27409D420(v8, &qword_280939B80, &qword_2741D4800);
    v3 = 1;
    return v3 & 1;
  }

  sub_2740A6D94(v8, v7, &qword_280938340, &qword_2741D1660);
  if (!*(&v10[0] + 1))
  {
    sub_2740ACB2C(v7);
    goto LABEL_8;
  }

  v5[4] = v10[4];
  v5[5] = v10[5];
  v6 = v11;
  v5[0] = v10[0];
  v5[1] = v10[1];
  v5[2] = v10[2];
  v5[3] = v10[3];
  if (v7[0] == v10[0])
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2741C86DC() ^ 1;
  }

  sub_2740ACB2C(v5);
  sub_2740ACB2C(v7);
  sub_27409D420(v8, &qword_280938340, &qword_2741D1660);
  return v3 & 1;
}

uint64_t sub_27419E508(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = *(v3 + *a1);
  *(v3 + v4) = *(v2 + 24);
  return a2(v5);
}

uint64_t sub_27419E54C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
  return sub_27419B290();
}

uint64_t sub_27419E5D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_27419E770(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_2740A7434;

  return (v19)(a1, a2, a3, a4 & 0x101, a5, a6, a7);
}

uint64_t sub_27419E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_27409D648;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_27419E9FC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2740A7434;

  return (v17)(a1, a2, a3 & 0x101, a4, a5, a6);
}

uint64_t sub_27419EB84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 56);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_27419ECCC;

  return (v17)(a1, a2, a3, a4 & 1, a5, a6);
}

uint64_t sub_27419ECCC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_27419EDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27419EED4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27419EE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27419EED4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_27419EEAC()
{
  sub_27419EED4();
  sub_2741C74CC();
  __break(1u);
}

unint64_t sub_27419EED4()
{
  result = qword_28093B1E8;
  if (!qword_28093B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B1E8);
  }

  return result;
}

uint64_t sub_27419EF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v23 = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938370, &qword_2741CE9B0);
  v22 = *(v21 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v9 = &v19 - v8;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  *&v30[0] = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B1F0, &qword_2741D7700);
  sub_2741C7B1C();
  v11 = v26;
  v12 = *&v27[0];
  swift_getKeyPath();
  v27[2] = v11;
  v28 = v12;
  sub_2741C7B0C();

  v29 = v26;
  v30[0] = v27[0];
  *(v30 + 10) = *(v27 + 10);

  swift_getKeyPath();
  v24 = v29;
  v25[0] = v30[0];
  *(v25 + 10) = *(v30 + 10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B1F8, qword_2741D7758);
  sub_2741C7B0C();

  sub_27419F4CC(&v29);
  sub_2741C7ACC();
  *&v26 = a1;
  *(&v26 + 1) = a2;
  v13 = v20;
  *&v27[0] = v20;
  MEMORY[0x2743E5B70](&v24, v10);
  v14 = v24;
  swift_getKeyPath();
  *&v26 = v14;
  sub_2740E2AE4();
  sub_2741C6A0C();

  swift_beginAccess();
  v15 = *(v14 + 80);

  LOBYTE(v24) = v15 != 2;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v13;
  sub_27419F588();

  v17 = v21;
  sub_2741C78CC();

  return (*(v22 + 8))(v9, v17);
}

uint64_t sub_27419F2C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_280937728 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  result = sub_2741C76AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_27419F368(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B1F0, &qword_2741D7700);
  MEMORY[0x2743E5B70](&v9, v6);
  v7 = v9;
  swift_getKeyPath();
  v10 = v7;
  sub_2740E2AE4();
  sub_2741C6A0C();

  v10 = v7;
  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  *(v7 + 80) = (v5 & 1) == 0;
  v9 = v7;
  swift_getKeyPath();
  sub_2741C6A1C();
}

uint64_t sub_27419F4CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B1F8, qword_2741D7758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27419F534()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_27419F588()
{
  result = qword_2809383A8;
  if (!qword_2809383A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938370, &qword_2741CE9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809383A8);
  }

  return result;
}

uint64_t sub_27419F5EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938370, &qword_2741CE9B0);
  sub_27419F588();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27419F664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_27409D648;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_27419F794(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2740A7434;

  return (v17)(a1, a2, a3 & 0x101, a4, a5, a6);
}

uint64_t sub_27419F8E0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_2740A7434;

  return (v19)(a1, a2, a3, a4 & 0x101, a5, a6, a7);
}

uint64_t sub_27419FA78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 64);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_27419ECCC;

  return (v17)(a1, a2, a3, a4 & 1, a5, a6);
}

uint64_t sub_27419FBD4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B200, qword_2741D77B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_27419FCA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B200, qword_2741D77B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for IdentitySelectionView()
{
  result = qword_28093B208;
  if (!qword_28093B208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27419FDA0()
{
  sub_27419FE24();
  if (v0 <= 0x3F)
  {
    sub_27419FE7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27419FE24()
{
  if (!qword_28093B218)
  {
    type metadata accessor for EnterpriseIdentity();
    v0 = sub_2741C803C();
    if (!v1)
    {
      atomic_store(v0, &qword_28093B218);
    }
  }
}

void sub_27419FE7C()
{
  if (!qword_28093B220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937DA0, &qword_2741CB190);
    v0 = sub_2741C7B3C();
    if (!v1)
    {
      atomic_store(v0, &qword_28093B220);
    }
  }
}

uint64_t sub_27419FEFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B238, &qword_2741D7848);
  sub_2741A173C();
  return sub_2741C762C();
}

uint64_t sub_27419FF6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a2;
  v3 = type metadata accessor for IdentitySelectionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v13[5] = *a1;
  swift_getKeyPath();
  sub_2741A1B00(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentitySelectionView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_2741A1DF8(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for IdentitySelectionView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B258, &qword_2741D7878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B260, &qword_2741D7880);
  sub_2740A6D24(&qword_28093B268, &qword_28093B258, &qword_2741D7878);
  sub_2741A1AB8(&qword_28093B270, type metadata accessor for EnterpriseIdentity);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B248, &unk_2741D7850);
  v9 = sub_2741C6EDC();
  v10 = sub_2740A6D24(&qword_28093B250, &qword_28093B248, &unk_2741D7850);
  v11 = sub_2741A1AB8(&qword_280938890, MEMORY[0x277CDDB18]);
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v11;
  swift_getOpaqueTypeConformance2();
  return sub_2741C7B5C();
}

uint64_t sub_2741A0230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v34 = a3;
  v5 = sub_2741C6EDC();
  v6 = *(v5 - 8);
  v32 = v5;
  v33 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnterpriseIdentity();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for IdentitySelectionView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B248, &unk_2741D7850);
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  sub_2741A1B00(a2, v14, type metadata accessor for IdentitySelectionView);
  sub_2741A1B00(a1, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EnterpriseIdentity);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v28 + 80) + v20) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_2741A1DF8(v14, v22 + v20, type metadata accessor for IdentitySelectionView);
  sub_2741A1DF8(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for EnterpriseIdentity);
  v35 = a1;
  v36 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B278, &qword_2741D7888);
  sub_2740A6D24(&qword_28093B280, &qword_28093B278, &qword_2741D7888);
  sub_2741C7A7C();
  v23 = v31;
  sub_2741C6ECC();
  sub_2740A6D24(&qword_28093B250, &qword_28093B248, &unk_2741D7850);
  sub_2741A1AB8(&qword_280938890, MEMORY[0x277CDDB18]);
  v24 = v29;
  v25 = v32;
  sub_2741C76FC();
  (*(v33 + 8))(v23, v25);
  return (*(v30 + 8))(v19, v24);
}

uint64_t sub_2741A0660(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_2741A1B00(a2, &v12 - v8, type metadata accessor for EnterpriseIdentity);
  v10 = type metadata accessor for EnterpriseIdentity();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  LODWORD(a2) = *(type metadata accessor for IdentitySelectionView() + 20);
  sub_2740A6D94(v9, v7, &qword_280937DA0, &qword_2741CB190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B200, qword_2741D77B0);
  sub_2741C7AFC();
  return sub_27409D420(v9, &qword_280937DA0, &qword_2741CB190);
}

void *sub_2741A07C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2741C70EC();
  v12 = 1;
  sub_2741A08A8(a1, a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  sub_2740A6D94(__dst, v9, &qword_28093B288, &unk_2741D7890);
  sub_27409D420(v14, &qword_28093B288, &unk_2741D7890);
  memcpy(&v11[7], __dst, 0x178uLL);
  v7 = v12;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  return memcpy((a3 + 17), v11, 0x17FuLL);
}

uint64_t sub_2741A08A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37[1] = a2;
  v42 = a3;
  v4 = type metadata accessor for EnterpriseIdentity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v37[0] = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B58, &unk_2741D15B0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v38 = (v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v37 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v37 - v20;
  v41 = sub_2741C71BC();
  LOBYTE(v44[0]) = 1;
  sub_2741A0E50(a1, v46);
  memcpy(v49, v46, 0x13CuLL);
  memcpy(v50, v46, 0x13CuLL);
  sub_2740A6D94(v49, v45, &qword_28093B290, &qword_2741D78A0);
  sub_27409D420(v50, &qword_28093B290, &qword_2741D78A0);
  memcpy(&v48[7], v49, 0x13CuLL);
  v39 = LOBYTE(v44[0]);
  v40 = sub_2741C736C();
  v22 = *(type metadata accessor for IdentitySelectionView() + 20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B200, qword_2741D77B0);
  MEMORY[0x2743E5B70](v23);
  sub_2741A1B00(a1, v19, type metadata accessor for EnterpriseIdentity);
  (*(v5 + 56))(v19, 0, 1, v4);
  v24 = *(v9 + 56);
  sub_2740A6D94(v21, v12, &qword_280937DA0, &qword_2741CB190);
  sub_2740A6D94(v19, &v12[v24], &qword_280937DA0, &qword_2741CB190);
  v25 = *(v5 + 48);
  if (v25(v12, 1, v4) == 1)
  {
    sub_27409D420(v19, &qword_280937DA0, &qword_2741CB190);
    sub_27409D420(v21, &qword_280937DA0, &qword_2741CB190);
    if (v25(&v12[v24], 1, v4) == 1)
    {
      sub_27409D420(v12, &qword_280937DA0, &qword_2741CB190);
LABEL_9:
      v26 = sub_2741C79CC();
      v27 = sub_2741C797C();

      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_2740A6D94(v12, v38, &qword_280937DA0, &qword_2741CB190);
  if (v25(&v12[v24], 1, v4) == 1)
  {
    sub_27409D420(v19, &qword_280937DA0, &qword_2741CB190);
    sub_27409D420(v21, &qword_280937DA0, &qword_2741CB190);
    sub_2740FBC6C(v38);
LABEL_6:
    sub_27409D420(v12, &qword_280939B58, &unk_2741D15B0);
    goto LABEL_7;
  }

  v28 = v37[0];
  sub_2741A1DF8(&v12[v24], v37[0], type metadata accessor for EnterpriseIdentity);
  v29 = v38;
  v30 = _s15WiFiSettingsKit18EnterpriseIdentityV2eeoiySbAC_ACtFZ_0(v38, v28);
  sub_2740FBC6C(v28);
  sub_27409D420(v19, &qword_280937DA0, &qword_2741CB190);
  sub_27409D420(v21, &qword_280937DA0, &qword_2741CB190);
  sub_2740FBC6C(v29);
  sub_27409D420(v12, &qword_280937DA0, &qword_2741CB190);
  if (v30)
  {
    goto LABEL_9;
  }

LABEL_7:
  v26 = 0;
  v27 = 0;
LABEL_10:
  v31 = v41;
  v44[0] = v41;
  v44[1] = 0;
  v32 = v39;
  LOBYTE(v44[2]) = v39;
  memcpy(&v44[2] + 1, v48, 0x143uLL);
  v33 = v40;
  HIDWORD(v44[42]) = v40;
  memcpy(v45, v44, sizeof(v45));
  v43 = 1;
  sub_2740A6D94(v44, v46, &qword_28093B298, &qword_2741D78A8);
  sub_274104BD8(v26);
  sub_274104C18(v26);
  v34 = v43;
  v35 = v42;
  memcpy(v42, v45, 0x158uLL);
  v35[43] = 0;
  *(v35 + 352) = v34;
  v35[45] = v26;
  v35[46] = v27;
  sub_274104C18(v26);
  *v46 = v31;
  *&v46[8] = 0;
  v46[16] = v32;
  memcpy(&v46[17], v48, 0x143uLL);
  v47 = v33;
  return sub_27409D420(v46, &qword_28093B298, &qword_2741D78A8);
}

uint64_t sub_2741A0E50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  *&v60 = *a1;
  *(&v60 + 1) = v4;
  sub_2740A6A74();

  v5 = sub_2741C76AC();
  v24 = v6;
  v25 = v5;
  v23 = v7;
  v26 = v8;
  if (a1[4])
  {
    v9 = a1[3];
    v10 = sub_2741C70EC();
    sub_2741A145C(&qword_280937490, &qword_280946058, &qword_280946060, &v60);
    v52 = v64;
    v53 = v65;
    v54 = v66;
    v48 = v60;
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v56 = v60;
    *v57 = v61;
    *&v57[16] = v62;
    *&v57[32] = v63;
    *&v57[48] = v64;
    *&v57[64] = v65;
    *&v57[80] = v66;
    sub_2740A6D94(&v48, &v58, &qword_28093B2A8, &qword_2741D78B8);
    sub_27409D420(&v56, &qword_28093B2A8, &qword_2741D78B8);
    *&v27[55] = v51;
    *&v27[71] = v52;
    *&v27[87] = v53;
    *&v27[103] = v54;
    *&v27[7] = v48;
    *&v27[23] = v49;
    *&v27[39] = v50;
    v11 = sub_2741C737C();
    *&v59[65] = *&v27[64];
    *&v59[81] = *&v27[80];
    *&v59[97] = *&v27[96];
    *&v59[1] = *v27;
    *&v59[17] = *&v27[16];
    *&v59[33] = *&v27[32];
    v58 = v10;
    v59[0] = 1;
    *&v59[112] = *&v27[111];
    *&v59[49] = *&v27[48];
    *&v59[120] = v11;
    nullsub_1(&v58);
    v65 = *&v59[64];
    v66 = *&v59[80];
    v67[0] = *&v59[96];
    *(v67 + 12) = *&v59[108];
    v62 = *&v59[16];
    v63 = *&v59[32];
    v64 = *&v59[48];
    v60 = v58;
    v61 = *v59;
  }

  else
  {
    sub_2741A1F34(&v60);
  }

  EnterpriseIdentity.expirationFormatted.getter();
  if (v12)
  {
    v13 = sub_2741C70EC();
    sub_2741A145C(&qword_280937498, &qword_280946068, &qword_280946070, &v58);
    v44 = *&v59[48];
    v45 = *&v59[64];
    v46 = *&v59[80];
    v40 = v58;
    v41 = *v59;
    v42 = *&v59[16];
    v43 = *&v59[32];
    v48 = v58;
    v49 = *v59;
    v50 = *&v59[16];
    v51 = *&v59[32];
    v52 = *&v59[48];
    v53 = *&v59[64];
    v54 = *&v59[80];
    sub_2740A6D94(&v40, &v56, &qword_28093B2A8, &qword_2741D78B8);
    sub_27409D420(&v48, &qword_28093B2A8, &qword_2741D78B8);

    *&v28[55] = v43;
    *&v28[71] = v44;
    *&v28[87] = v45;
    *&v28[103] = v46;
    *&v28[7] = v40;
    *&v28[23] = v41;
    *&v28[39] = v42;
    v14 = sub_2741C737C();
    *&v57[65] = *&v28[64];
    *&v57[81] = *&v28[80];
    *&v57[97] = *&v28[96];
    *&v57[1] = *v28;
    *&v57[17] = *&v28[16];
    *&v57[33] = *&v28[32];
    v56 = v13;
    v57[0] = 1;
    *&v57[112] = *&v28[111];
    *&v57[49] = *&v28[48];
    *&v57[120] = v14;
    nullsub_1(&v56);
    *&v59[80] = *&v57[80];
    *&v59[96] = *&v57[96];
    *&v59[108] = *&v57[108];
    *&v59[16] = *&v57[16];
    *&v59[32] = *&v57[32];
    *&v59[48] = *&v57[48];
    *&v59[64] = *&v57[64];
    v58 = v56;
    *v59 = *v57;
  }

  else
  {
    sub_2741A1F34(&v58);
  }

  v15 = v65;
  v16 = v64;
  v35 = v65;
  v36 = v66;
  *v37 = v67[0];
  *&v37[12] = *(v67 + 12);
  v17 = v61;
  v32 = v62;
  v18 = v62;
  v33 = v63;
  v19 = v63;
  v34 = v64;
  v30 = v60;
  v20 = v60;
  v31 = v61;
  v53 = *&v59[64];
  v54 = *&v59[80];
  v55[0] = *&v59[96];
  *(v55 + 12) = *&v59[108];
  v50 = *&v59[16];
  v51 = *&v59[32];
  v52 = *&v59[48];
  v48 = v58;
  v49 = *v59;
  v38[5] = v65;
  v38[6] = v66;
  v39[0] = v67[0];
  *(v39 + 12) = *(v67 + 12);
  v38[2] = v62;
  v38[3] = v63;
  v38[4] = v64;
  v38[0] = v60;
  v38[1] = v61;
  v45 = *&v59[64];
  v46 = *&v59[80];
  v47[0] = *&v59[96];
  *(v47 + 12) = *&v59[108];
  v42 = *&v59[16];
  v43 = *&v59[32];
  v44 = *&v59[48];
  v40 = v58;
  v41 = *v59;
  *&v29[84] = *&v59[64];
  *&v29[100] = *&v59[80];
  *&v29[116] = *&v59[96];
  *&v29[128] = *&v59[108];
  *&v29[20] = *v59;
  *&v29[36] = *&v59[16];
  *&v29[52] = *&v59[32];
  *&v29[68] = *&v59[48];
  *&v29[4] = v58;
  v21 = v67[0];
  *(a2 + 128) = v66;
  *(a2 + 144) = v21;
  *(a2 + 156) = *(v67 + 12);
  *(a2 + 64) = v18;
  *(a2 + 80) = v19;
  *(a2 + 96) = v16;
  *(a2 + 112) = v15;
  *(a2 + 32) = v20;
  *(a2 + 48) = v17;
  *(a2 + 252) = *&v29[80];
  *(a2 + 268) = *&v29[96];
  *(a2 + 284) = *&v29[112];
  *(a2 + 300) = *&v29[128];
  *(a2 + 188) = *&v29[16];
  *(a2 + 204) = *&v29[32];
  *(a2 + 220) = *&v29[48];
  *(a2 + 236) = *&v29[64];
  *a2 = v25;
  *(a2 + 8) = v24;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v26;
  *(a2 + 172) = *v29;
  sub_27409861C(v25, v24, v23 & 1);

  sub_2740A6D94(v38, &v56, &qword_28093B2A0, &qword_2741D78B0);
  sub_2740A6D94(&v40, &v56, &qword_28093B2A0, &qword_2741D78B0);
  sub_27409D420(&v48, &qword_28093B2A0, &qword_2741D78B0);
  *&v57[80] = v36;
  *&v57[96] = *v37;
  *&v57[108] = *&v37[12];
  *&v57[16] = v32;
  *&v57[32] = v33;
  *&v57[48] = v34;
  *&v57[64] = v35;
  v56 = v30;
  *v57 = v31;
  sub_27409D420(&v56, &qword_28093B2A0, &qword_2741D78B0);
  sub_2740A6AC8(v25, v24, v23 & 1);
}

uint64_t sub_2741A145C@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    v33 = a3;
    v34 = a2;
    swift_once();
    a2 = v34;
    a3 = v33;
  }

  v5 = *a3;
  *&v41 = *a2;
  sub_2740A6A74();

  v6 = sub_2741C76AC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_2741C756C();
  sub_2741C6C6C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v10 &= 1u;
  LOBYTE(v45[0]) = 0;

  v22 = sub_2741C76AC();
  v24 = v23;
  *&v37 = v6;
  *(&v37 + 1) = v8;
  LOBYTE(v38) = v10;
  *(&v38 + 1) = v12;
  LOBYTE(v39) = v13;
  *(&v39 + 1) = v15;
  *v40 = v17;
  *&v40[8] = v19;
  *&v40[16] = v21;
  v40[24] = 0;
  v25 = v37;
  v26 = v38;
  *&v44[9] = *&v40[9];
  v43 = v39;
  *v44 = *v40;
  v41 = v37;
  v42 = v38;
  v28 = v27 & 1;
  v29 = *&v44[16];
  *(a4 + 48) = *v40;
  *(a4 + 64) = v29;
  v30 = v43;
  *(a4 + 16) = v26;
  *(a4 + 32) = v30;
  *a4 = v25;
  *(a4 + 80) = v22;
  *(a4 + 88) = v23;
  *(a4 + 96) = v27 & 1;
  *(a4 + 104) = v31;
  sub_2740A6D94(&v37, v45, &qword_28093B2B0, &qword_2741D78C0);
  sub_27409861C(v22, v24, v28);

  sub_2740A6AC8(v22, v24, v28);

  v45[0] = v6;
  v45[1] = v8;
  v46 = v10;
  *v47 = *v36;
  *&v47[3] = *&v36[3];
  v48 = v12;
  v49 = v13;
  *v50 = *v35;
  *&v50[3] = *&v35[3];
  v51 = v15;
  v52 = v17;
  v53 = v19;
  v54 = v21;
  v55 = 0;
  return sub_27409D420(v45, &qword_28093B2B0, &qword_2741D78C0);
}

uint64_t sub_2741A1688()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B228, &qword_2741D7840);
  sub_2740A6D24(&qword_28093B230, &qword_28093B228, &qword_2741D7840);
  return sub_2741C7B9C();
}

unint64_t sub_2741A173C()
{
  result = qword_28093B240;
  if (!qword_28093B240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B238, &qword_2741D7848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B248, &unk_2741D7850);
    sub_2741C6EDC();
    sub_2740A6D24(&qword_28093B250, &qword_28093B248, &unk_2741D7850);
    sub_2741A1AB8(&qword_280938890, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B240);
  }

  return result;
}

uint64_t sub_2741A1880()
{
  v1 = (type metadata accessor for IdentitySelectionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = (v0 + v3 + v1[7]);
  v7 = *v6;

  v8 = v6[1];

  v9 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B200, qword_2741D77B0) + 32);
  v10 = type metadata accessor for EnterpriseIdentity();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = *(v9 + 1);

    v12 = *(v9 + 4);

    v13 = *(v10 + 28);
    v14 = sub_2741C696C();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v9[v13], 1, v14))
    {
      (*(v15 + 8))(&v9[v13], v14);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2741A1A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IdentitySelectionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2741A0230(a1, v6, a2);
}

uint64_t sub_2741A1AB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2741A1B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2741A1B68()
{
  v1 = (type metadata accessor for IdentitySelectionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for EnterpriseIdentity();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v3 + v4 + v7) & ~v7;
  v10 = (v0 + v3);
  v11 = *v10;

  v12 = (v10 + v1[7]);
  v13 = *v12;

  v14 = v12[1];

  v15 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B200, qword_2741D77B0) + 32);
  if (!(*(v6 + 48))(v15, 1, v5))
  {
    v16 = *(v15 + 1);

    v17 = *(v15 + 4);

    v18 = *(v5 + 28);
    v19 = sub_2741C696C();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(&v15[v18], 1, v19))
    {
      (*(v20 + 8))(&v15[v18], v19);
    }
  }

  v21 = *(v0 + v9 + 8);

  v22 = *(v0 + v9 + 32);

  v23 = *(v5 + 28);
  v24 = sub_2741C696C();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v0 + v9 + v23, 1, v24))
  {
    (*(v25 + 8))(v0 + v9 + v23, v24);
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v8, v2 | v7 | 7);
}

uint64_t sub_2741A1DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2741A1E60()
{
  v1 = *(type metadata accessor for IdentitySelectionView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for EnterpriseIdentity() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2741A0660(v0 + v2, v5);
}

double sub_2741A1F34(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 124) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_2741A1F54()
{
  result = qword_28093B2B8;
  if (!qword_28093B2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2C0, qword_2741D78C8);
    sub_2740A6D24(&qword_28093B230, &qword_28093B228, &qword_2741D7840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B2B8);
  }

  return result;
}

unint64_t sub_2741A2034()
{
  result = qword_28093B2D0;
  if (!qword_28093B2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2D8, qword_2741D7918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B2D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15WiFiSettingsKit0aB5Error_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15WiFiSettingsKit14ScannedNetworkVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2741A20D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2741A211C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2741A21D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v137 = a5;
  v14 = sub_2741C699C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740A6D94(a4, &v141, &qword_280937E78, &qword_2741D81E0);
  v140 = a2;
  v139 = a1;
  v138 = a7;
  if (!v143)
  {
    sub_27409D420(&v141, &qword_280937E78, &qword_2741D81E0);
    sub_2741C714C();
    v137 = sub_2741C768C();
    v136 = v51;
    LODWORD(v134) = v52;
    v135 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v54 = (type metadata accessor for WFButton() - 8);
    v55 = *(*v54 + 72);
    v56 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    v58 = (*(v15 + 32))(v57 + v56, v18, v14);
    v133 = &v124;
    *(v57 + v56 + v54[7]) = 0;
    v59 = (v57 + v56 + v54[8]);
    *v59 = nullsub_1;
    v59[1] = 0;
    v60 = MEMORY[0x28223BE20](v58);
    MEMORY[0x28223BE20](v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EF8, &qword_2741CB638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740A5CF8();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v61 = v134;
    v62 = v137;
    v63 = v136;
    sub_2741C787C();

    sub_2740A6AC8(v62, v63, v61 & 1);
  }

  v132 = a6;
  v135 = v14;
  LODWORD(v136) = a3;
  v19 = v7;
  sub_27409D118(&v141, &v148);
  v20 = v149;
  v21 = v150;
  __swift_project_boxed_opaque_existential_1(&v148, v149);
  v134 = (*(v21 + 16))(v20, v21);
  v23 = v22;
  v24 = v149;
  v25 = v150;
  __swift_project_boxed_opaque_existential_1(&v148, v149);
  v26 = (*(v25 + 24))(v24, v25);
  v28 = v27;
  sub_27409D4E4(&v148, v147);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  v29 = swift_dynamicCast();
  v131 = v26;
  if (v29)
  {
    v31 = v144;
    v30 = v145;
    v127 = v19;
    v130 = v143;
    v129 = v142;
    v128 = *(&v141 + 1);
    v126 = v141;
    if (v146 > 7u)
    {
      if (v146 == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v111 = type metadata accessor for WFButton();
        v124 = v28;
        v113 = v111 - 8;
        v112 = *(v111 - 8);
        v125 = v31;
        v114 = *(v112 + 72);
        v115 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_2741CC090;
        v133 = v116;
        v117 = v116 + v115;
        v118 = swift_allocObject();
        *(v118 + 16) = v137;
        *(v118 + 24) = v132;

        sub_2741C698C();
        v119 = *(v15 + 32);
        v120 = v135;
        v119(v117, v18, v135);
        *(v117 + *(v113 + 28)) = 10;
        v121 = (v117 + *(v113 + 32));
        *v121 = sub_2741B17A0;
        v121[1] = v118;
        sub_2741C698C();
        v119(v117 + v114, v18, v120);
        *(v117 + v114 + *(v113 + 28)) = 0;
        v122 = *(v113 + 32);
        v28 = v124;
        v123 = (v117 + v114 + v122);
        *v123 = nullsub_1;
        v123[1] = 0;
        v45 = v126;
        v46 = v128;
        v47 = v129;
        v48 = v130;
        v49 = v125;
        v50 = v30;
        v86 = 8;
        goto LABEL_14;
      }

      if (v146 == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v73 = type metadata accessor for WFButton();
        v124 = v28;
        v75 = v73 - 8;
        v74 = *(v73 - 8);
        v125 = v31;
        v76 = *(v74 + 72);
        v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_2741CC090;
        v133 = v78;
        v79 = v78 + v77;
        v80 = swift_allocObject();
        *(v80 + 16) = v137;
        *(v80 + 24) = v132;

        sub_2741C698C();
        v81 = *(v15 + 32);
        v82 = v135;
        v81(v79, v18, v135);
        *(v79 + *(v75 + 28)) = 8;
        v83 = (v79 + *(v75 + 32));
        *v83 = sub_2741B17A0;
        v83[1] = v80;
        sub_2741C698C();
        v81(v79 + v76, v18, v82);
        *(v79 + v76 + *(v75 + 28)) = 9;
        v84 = *(v75 + 32);
        v28 = v124;
        v85 = (v79 + v76 + v84);
        *v85 = nullsub_1;
        v85[1] = 0;
        v45 = v126;
        v46 = v128;
        v47 = v129;
        v48 = v130;
        v49 = v125;
        v50 = v30;
        v86 = 9;
LABEL_14:
        sub_2740A66EC(v45, v46, v47, v48, v49, v50, v86);
        goto LABEL_15;
      }
    }

    else if (v146 - 5 < 3 || v146 == 3)
    {
      LODWORD(v124) = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
      v32 = (type metadata accessor for WFButton() - 8);
      v33 = *(*v32 + 72);
      v34 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_2741CC090;
      v133 = v35;
      v36 = v35 + v34;
      v37 = swift_allocObject();
      v125 = v31;
      v38 = v37;
      *(v37 + 16) = v137;
      *(v37 + 24) = v132;

      sub_2741C698C();
      v39 = *(v15 + 32);
      v137 = v30;
      v40 = v28;
      v41 = v135;
      v39(v36, v18, v135);
      *(v36 + v32[7]) = 4;
      v42 = (v36 + v32[8]);
      *v42 = sub_2741B17A0;
      v42[1] = v38;
      sub_2741C698C();
      v43 = v41;
      v28 = v40;
      v39(v36 + v33, v18, v43);
      *(v36 + v33 + v32[7]) = 1;
      v44 = (v36 + v33 + v32[8]);
      *v44 = nullsub_1;
      v44[1] = 0;
      v45 = v126;
      v46 = v128;
      v47 = v129;
      v48 = v130;
      v49 = v125;
      v50 = v137;
LABEL_13:
      v86 = v124;
      goto LABEL_14;
    }

    LODWORD(v124) = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v87 = (type metadata accessor for WFButton() - 8);
    v88 = *(*v87 + 72);
    v89 = (*(*v87 + 80) + 32) & ~*(*v87 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_2741CB550;
    v133 = v90;
    v91 = v90 + v89;
    sub_2741C698C();
    (*(v15 + 32))(v91, v18, v135);
    *(v91 + v87[7]) = 0;
    v92 = (v91 + v87[8]);
    v93 = v132;
    *v92 = v137;
    v92[1] = v93;

    v45 = v126;
    v46 = v128;
    v47 = v129;
    v48 = v130;
    v49 = v31;
    v50 = v30;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
  v65 = (type metadata accessor for WFButton() - 8);
  v66 = *(*v65 + 72);
  v67 = (*(*v65 + 80) + 32) & ~*(*v65 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2741CB550;
  v69 = v28;
  v133 = v68;
  v70 = v68 + v67;
  sub_2741C698C();
  (*(v15 + 32))(v70, v18, v135);
  *(v70 + v65[7]) = 0;
  v71 = (v70 + v65[8]);
  v28 = v69;
  v72 = v132;
  *v71 = v137;
  v71[1] = v72;

LABEL_15:
  *&v141 = v134;
  *(&v141 + 1) = v23;
  sub_2740A6A74();
  if (v28)
  {
    v137 = sub_2741C76AC();
    v135 = v94;
    LODWORD(v130) = v95;
    v134 = v96;
    *&v141 = v131;
    *(&v141 + 1) = v28;
    v129 = sub_2741C76AC();
    v128 = v97;
    v131 = v98;
    v132 = &v124;
    v100 = v99 & 1;
    v101 = MEMORY[0x28223BE20](v129);
    MEMORY[0x28223BE20](v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EF8, &qword_2741CB638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740A5CF8();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v102 = v130;
    v103 = v137;
    v104 = v135;
    sub_2741C787C();

    sub_2740A6AC8(v129, v128, v100);

    v105 = v102 & 1;
  }

  else
  {
    v135 = sub_2741C76AC();
    v134 = v106;
    v108 = v107;
    v132 = v109;
    v137 = &v124;
    v110 = MEMORY[0x28223BE20](v135);
    MEMORY[0x28223BE20](v110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EF8, &qword_2741CB638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740A5CF8();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v103 = v135;
    v104 = v134;
    sub_2741C787C();

    v105 = v108 & 1;
  }

  sub_2740A6AC8(v103, v104, v105);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v148);
}

uint64_t sub_2741A323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v137 = a5;
  v14 = sub_2741C699C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740A6D94(a4, &v141, &qword_280937E78, &qword_2741D81E0);
  v140 = a2;
  v139 = a1;
  v138 = a7;
  if (!v143)
  {
    sub_27409D420(&v141, &qword_280937E78, &qword_2741D81E0);
    sub_2741C714C();
    v137 = sub_2741C768C();
    v136 = v51;
    LODWORD(v134) = v52;
    v135 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v54 = (type metadata accessor for WFButton() - 8);
    v55 = *(*v54 + 72);
    v56 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    v58 = (*(v15 + 32))(v57 + v56, v18, v14);
    v133 = &v124;
    *(v57 + v56 + v54[7]) = 0;
    v59 = (v57 + v56 + v54[8]);
    *v59 = nullsub_1;
    v59[1] = 0;
    v60 = MEMORY[0x28223BE20](v58);
    MEMORY[0x28223BE20](v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396B0, &qword_2741D0390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740FB1EC();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v61 = v134;
    v62 = v137;
    v63 = v136;
    sub_2741C787C();

    sub_2740A6AC8(v62, v63, v61 & 1);
  }

  v132 = a6;
  v135 = v14;
  LODWORD(v136) = a3;
  v19 = v7;
  sub_27409D118(&v141, &v148);
  v20 = v149;
  v21 = v150;
  __swift_project_boxed_opaque_existential_1(&v148, v149);
  v134 = (*(v21 + 16))(v20, v21);
  v23 = v22;
  v24 = v149;
  v25 = v150;
  __swift_project_boxed_opaque_existential_1(&v148, v149);
  v26 = (*(v25 + 24))(v24, v25);
  v28 = v27;
  sub_27409D4E4(&v148, v147);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  v29 = swift_dynamicCast();
  v131 = v26;
  if (v29)
  {
    v31 = v144;
    v30 = v145;
    v127 = v19;
    v130 = v143;
    v129 = v142;
    v128 = *(&v141 + 1);
    v126 = v141;
    if (v146 > 7u)
    {
      if (v146 == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v111 = type metadata accessor for WFButton();
        v124 = v28;
        v113 = v111 - 8;
        v112 = *(v111 - 8);
        v125 = v31;
        v114 = *(v112 + 72);
        v115 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_2741CC090;
        v133 = v116;
        v117 = v116 + v115;
        v118 = swift_allocObject();
        *(v118 + 16) = v137;
        *(v118 + 24) = v132;

        sub_2741C698C();
        v119 = *(v15 + 32);
        v120 = v135;
        v119(v117, v18, v135);
        *(v117 + *(v113 + 28)) = 10;
        v121 = (v117 + *(v113 + 32));
        *v121 = sub_2741B17A0;
        v121[1] = v118;
        sub_2741C698C();
        v119(v117 + v114, v18, v120);
        *(v117 + v114 + *(v113 + 28)) = 0;
        v122 = *(v113 + 32);
        v28 = v124;
        v123 = (v117 + v114 + v122);
        *v123 = nullsub_1;
        v123[1] = 0;
        v45 = v126;
        v46 = v128;
        v47 = v129;
        v48 = v130;
        v49 = v125;
        v50 = v30;
        v86 = 8;
        goto LABEL_14;
      }

      if (v146 == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v73 = type metadata accessor for WFButton();
        v124 = v28;
        v75 = v73 - 8;
        v74 = *(v73 - 8);
        v125 = v31;
        v76 = *(v74 + 72);
        v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_2741CC090;
        v133 = v78;
        v79 = v78 + v77;
        v80 = swift_allocObject();
        *(v80 + 16) = v137;
        *(v80 + 24) = v132;

        sub_2741C698C();
        v81 = *(v15 + 32);
        v82 = v135;
        v81(v79, v18, v135);
        *(v79 + *(v75 + 28)) = 8;
        v83 = (v79 + *(v75 + 32));
        *v83 = sub_2741B17A0;
        v83[1] = v80;
        sub_2741C698C();
        v81(v79 + v76, v18, v82);
        *(v79 + v76 + *(v75 + 28)) = 9;
        v84 = *(v75 + 32);
        v28 = v124;
        v85 = (v79 + v76 + v84);
        *v85 = nullsub_1;
        v85[1] = 0;
        v45 = v126;
        v46 = v128;
        v47 = v129;
        v48 = v130;
        v49 = v125;
        v50 = v30;
        v86 = 9;
LABEL_14:
        sub_2740A66EC(v45, v46, v47, v48, v49, v50, v86);
        goto LABEL_15;
      }
    }

    else if (v146 - 5 < 3 || v146 == 3)
    {
      LODWORD(v124) = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
      v32 = (type metadata accessor for WFButton() - 8);
      v33 = *(*v32 + 72);
      v34 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_2741CC090;
      v133 = v35;
      v36 = v35 + v34;
      v37 = swift_allocObject();
      v125 = v31;
      v38 = v37;
      *(v37 + 16) = v137;
      *(v37 + 24) = v132;

      sub_2741C698C();
      v39 = *(v15 + 32);
      v137 = v30;
      v40 = v28;
      v41 = v135;
      v39(v36, v18, v135);
      *(v36 + v32[7]) = 4;
      v42 = (v36 + v32[8]);
      *v42 = sub_2741B17A0;
      v42[1] = v38;
      sub_2741C698C();
      v43 = v41;
      v28 = v40;
      v39(v36 + v33, v18, v43);
      *(v36 + v33 + v32[7]) = 1;
      v44 = (v36 + v33 + v32[8]);
      *v44 = nullsub_1;
      v44[1] = 0;
      v45 = v126;
      v46 = v128;
      v47 = v129;
      v48 = v130;
      v49 = v125;
      v50 = v137;
LABEL_13:
      v86 = v124;
      goto LABEL_14;
    }

    LODWORD(v124) = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v87 = (type metadata accessor for WFButton() - 8);
    v88 = *(*v87 + 72);
    v89 = (*(*v87 + 80) + 32) & ~*(*v87 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_2741CB550;
    v133 = v90;
    v91 = v90 + v89;
    sub_2741C698C();
    (*(v15 + 32))(v91, v18, v135);
    *(v91 + v87[7]) = 0;
    v92 = (v91 + v87[8]);
    v93 = v132;
    *v92 = v137;
    v92[1] = v93;

    v45 = v126;
    v46 = v128;
    v47 = v129;
    v48 = v130;
    v49 = v31;
    v50 = v30;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
  v65 = (type metadata accessor for WFButton() - 8);
  v66 = *(*v65 + 72);
  v67 = (*(*v65 + 80) + 32) & ~*(*v65 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2741CB550;
  v69 = v28;
  v133 = v68;
  v70 = v68 + v67;
  sub_2741C698C();
  (*(v15 + 32))(v70, v18, v135);
  *(v70 + v65[7]) = 0;
  v71 = (v70 + v65[8]);
  v28 = v69;
  v72 = v132;
  *v71 = v137;
  v71[1] = v72;

LABEL_15:
  *&v141 = v134;
  *(&v141 + 1) = v23;
  sub_2740A6A74();
  if (v28)
  {
    v137 = sub_2741C76AC();
    v135 = v94;
    LODWORD(v130) = v95;
    v134 = v96;
    *&v141 = v131;
    *(&v141 + 1) = v28;
    v129 = sub_2741C76AC();
    v128 = v97;
    v131 = v98;
    v132 = &v124;
    v100 = v99 & 1;
    v101 = MEMORY[0x28223BE20](v129);
    MEMORY[0x28223BE20](v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396B0, &qword_2741D0390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740FB1EC();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v102 = v130;
    v103 = v137;
    v104 = v135;
    sub_2741C787C();

    sub_2740A6AC8(v129, v128, v100);

    v105 = v102 & 1;
  }

  else
  {
    v135 = sub_2741C76AC();
    v134 = v106;
    v108 = v107;
    v132 = v109;
    v137 = &v124;
    v110 = MEMORY[0x28223BE20](v135);
    MEMORY[0x28223BE20](v110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396B0, &qword_2741D0390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740FB1EC();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v103 = v135;
    v104 = v134;
    sub_2741C787C();

    v105 = v108 & 1;
  }

  sub_2740A6AC8(v103, v104, v105);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v148);
}

uint64_t sub_2741A42A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X8>)
{
  v135 = a5;
  v14 = sub_2741C699C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v121[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2740A6D94(a4, &v139, &qword_280937E78, &qword_2741D81E0);
  v138 = a2;
  v137 = a1;
  v136 = a7;
  if (!v141)
  {
    sub_27409D420(&v139, &qword_280937E78, &qword_2741D81E0);
    sub_2741C714C();
    v135 = sub_2741C768C();
    v134 = v51;
    LODWORD(v132) = v52;
    v133 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v54 = (type metadata accessor for WFButton() - 8);
    v55 = *(*v54 + 72);
    v56 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    v58 = (*(v15 + 32))(v57 + v56, v18, v14);
    v131 = v121;
    *(v57 + v56 + v54[7]) = 0;
    v59 = (v57 + v56 + v54[8]);
    *v59 = nullsub_1;
    v59[1] = 0;
    v60 = MEMORY[0x28223BE20](v58);
    MEMORY[0x28223BE20](v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB08, &qword_2741D5A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB00, &unk_2741D7EC0);
    v62 = sub_274176764();
    *&v139 = v61;
    *(&v139 + 1) = MEMORY[0x277D839B0];
    v140 = v62;
    v141 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v63 = v132;
    v64 = v135;
    v65 = v134;
    sub_2741C787C();

    sub_2740A6AC8(v64, v65, v63 & 1);
  }

  v131 = a6;
  v133 = v14;
  LODWORD(v134) = a3;
  v19 = v7;
  sub_27409D118(&v139, &v146);
  v20 = v147;
  v21 = v148;
  __swift_project_boxed_opaque_existential_1(&v146, v147);
  v132 = (*(v21 + 16))(v20, v21);
  v23 = v22;
  v24 = v147;
  v25 = v148;
  __swift_project_boxed_opaque_existential_1(&v146, v147);
  v26 = (*(v25 + 24))(v24, v25);
  v28 = v27;
  sub_27409D4E4(&v146, v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  v29 = swift_dynamicCast();
  v130 = v26;
  if (v29)
  {
    v31 = v142;
    v30 = v143;
    v126 = v19;
    v129 = v141;
    v128 = v140;
    v127 = *(&v139 + 1);
    v125 = v139;
    if (v144 > 7u)
    {
      if (v144 == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v110 = type metadata accessor for WFButton();
        v124 = v28;
        v112 = v110 - 8;
        v111 = *(v110 - 8);
        v123 = v31;
        v113 = *(v111 + 72);
        v114 = (*(v111 + 80) + 32) & ~*(v111 + 80);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_2741CC090;
        v115 = swift_allocObject();
        *(v115 + 16) = v135;
        *(v115 + 24) = v131;

        sub_2741C698C();
        v116 = *(v15 + 32);
        v135 = v30;
        v117 = v133;
        v116(v43 + v114, v18, v133);
        *(v43 + v114 + *(v112 + 28)) = 10;
        v118 = (v43 + v114 + *(v112 + 32));
        *v118 = sub_2741B17A0;
        v118[1] = v115;
        sub_2741C698C();
        v116(v43 + v114 + v113, v18, v117);
        *(v43 + v114 + v113 + *(v112 + 28)) = 0;
        v119 = *(v112 + 32);
        v28 = v124;
        v120 = (v43 + v114 + v113 + v119);
        *v120 = nullsub_1;
        v120[1] = 0;
        v45 = v125;
        v46 = v127;
        v47 = v128;
        v48 = v129;
        v49 = v123;
        v50 = v135;
        v85 = 8;
        goto LABEL_14;
      }

      if (v144 == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v74 = type metadata accessor for WFButton();
        v124 = v28;
        v76 = v74 - 8;
        v75 = *(v74 - 8);
        v123 = v31;
        v77 = *(v75 + 72);
        v78 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_2741CC090;
        v79 = swift_allocObject();
        *(v79 + 16) = v135;
        *(v79 + 24) = v131;

        sub_2741C698C();
        v80 = *(v15 + 32);
        v135 = v30;
        v81 = v133;
        v80(v43 + v78, v18, v133);
        *(v43 + v78 + *(v76 + 28)) = 8;
        v82 = (v43 + v78 + *(v76 + 32));
        *v82 = sub_2741B17A0;
        v82[1] = v79;
        sub_2741C698C();
        v80(v43 + v78 + v77, v18, v81);
        *(v43 + v78 + v77 + *(v76 + 28)) = 9;
        v83 = *(v76 + 32);
        v28 = v124;
        v84 = (v43 + v78 + v77 + v83);
        *v84 = nullsub_1;
        v84[1] = 0;
        v45 = v125;
        v46 = v127;
        v47 = v128;
        v48 = v129;
        v49 = v123;
        v50 = v135;
        v85 = 9;
LABEL_14:
        sub_2740A66EC(v45, v46, v47, v48, v49, v50, v85);
        goto LABEL_15;
      }
    }

    else if (v144 - 5 < 3 || v144 == 3)
    {
      v122 = v144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
      v32 = (type metadata accessor for WFButton() - 8);
      v33 = *(*v32 + 72);
      v34 = *(*v32 + 80);
      v123 = v31;
      v35 = (v34 + 32) & ~v34;
      v36 = swift_allocObject();
      v124 = v28;
      v37 = v36;
      *(v36 + 16) = xmmword_2741CC090;
      v38 = v36 + v35;
      v39 = swift_allocObject();
      *(v39 + 16) = v135;
      *(v39 + 24) = v131;

      sub_2741C698C();
      v40 = *(v15 + 32);
      v135 = v30;
      v41 = v133;
      v40(v38, v18, v133);
      *(v38 + v32[7]) = 4;
      v42 = (v38 + v32[8]);
      *v42 = sub_2741B17A0;
      v42[1] = v39;
      sub_2741C698C();
      v40(v38 + v33, v18, v41);
      v43 = v37;
      v28 = v124;
      *(v38 + v33 + v32[7]) = 1;
      v44 = (v38 + v33 + v32[8]);
      *v44 = nullsub_1;
      v44[1] = 0;
      v45 = v125;
      v46 = v127;
      v47 = v128;
      v48 = v129;
      v49 = v123;
      v50 = v135;
LABEL_13:
      v85 = v122;
      goto LABEL_14;
    }

    v122 = v144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v86 = (type metadata accessor for WFButton() - 8);
    v87 = *(*v86 + 72);
    v88 = (*(*v86 + 80) + 32) & ~*(*v86 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    (*(v15 + 32))(v43 + v88, v18, v133);
    *(v43 + v88 + v86[7]) = 0;
    v89 = (v43 + v88 + v86[8]);
    v90 = v131;
    *v89 = v135;
    v89[1] = v90;

    v45 = v125;
    v46 = v127;
    v47 = v128;
    v48 = v129;
    v49 = v31;
    v50 = v30;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
  v67 = v28;
  v68 = (type metadata accessor for WFButton() - 8);
  v69 = *(*v68 + 72);
  v70 = (*(*v68 + 80) + 32) & ~*(*v68 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2741CB550;
  sub_2741C698C();
  (*(v15 + 32))(v43 + v70, v18, v133);
  *(v43 + v70 + v68[7]) = 0;
  v71 = v68[8];
  v28 = v67;
  v72 = (v43 + v70 + v71);
  v73 = v131;
  *v72 = v135;
  v72[1] = v73;

LABEL_15:
  *&v139 = v132;
  *(&v139 + 1) = v23;
  sub_2740A6A74();
  if (v28)
  {
    v135 = sub_2741C76AC();
    v133 = v91;
    LODWORD(v129) = v92;
    v132 = v93;
    *&v139 = v130;
    *(&v139 + 1) = v28;
    v128 = sub_2741C76AC();
    v127 = v94;
    v130 = v95;
    v131 = v121;
    v97 = v96 & 1;
    v98 = MEMORY[0x28223BE20](v128);
    MEMORY[0x28223BE20](v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB08, &qword_2741D5A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB00, &unk_2741D7EC0);
    v100 = sub_274176764();
    *&v139 = v99;
    *(&v139 + 1) = MEMORY[0x277D839B0];
    v140 = v100;
    v141 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v101 = v129;
    v102 = v135;
    v103 = v133;
    sub_2741C787C();

    sub_2740A6AC8(v128, v127, v97);
  }

  else
  {
    v133 = sub_2741C76AC();
    v103 = v104;
    v101 = v105;
    v132 = v106;
    v135 = v121;
    v107 = MEMORY[0x28223BE20](v133);
    MEMORY[0x28223BE20](v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB08, &qword_2741D5A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    v131 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB00, &unk_2741D7EC0);
    v109 = sub_274176764();
    *&v139 = v108;
    *(&v139 + 1) = MEMORY[0x277D839B0];
    v140 = v109;
    v141 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v102 = v133;
    sub_2741C787C();
  }

  sub_2740A6AC8(v102, v103, v101 & 1);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v146);
}

uint64_t sub_2741A53EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v135 = a3;
  v14 = sub_2741C699C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v121[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2740A6D94(a4, &v139, &qword_280937E78, &qword_2741D81E0);
  v138 = a2;
  v137 = a1;
  v136 = a7;
  if (!v141)
  {
    sub_27409D420(&v139, &qword_280937E78, &qword_2741D81E0);
    sub_2741C714C();
    v134 = sub_2741C768C();
    *(&v133 + 1) = v51;
    LODWORD(v132) = v52;
    *&v133 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v54 = (type metadata accessor for WFButton() - 8);
    v55 = *(*v54 + 72);
    v56 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    v58 = (*(v15 + 32))(v57 + v56, v18, v14);
    v131 = v121;
    *(v57 + v56 + v54[7]) = 0;
    v59 = (v57 + v56 + v54[8]);
    *v59 = nullsub_1;
    v59[1] = 0;
    v60 = MEMORY[0x28223BE20](v58);
    MEMORY[0x28223BE20](v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F0, &qword_2741D7C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E8, &qword_2741D7C20);
    v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A3D0, &qword_2741D3EA0);
    v63 = sub_2741B017C();
    v64 = sub_2741B0320();
    *&v139 = v61;
    *(&v139 + 1) = v62;
    v140 = v63;
    v141 = v64;
    swift_getOpaqueTypeConformance2();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v65 = v132;
    v66 = v134;
    v67 = *(&v133 + 1);
    sub_2741C787C();

    sub_2740A6AC8(v66, v67, v65 & 1);
  }

  v131 = a5;
  v134 = v14;
  v19 = v7;
  sub_27409D118(&v139, &v146);
  v20 = v147;
  v21 = v148;
  __swift_project_boxed_opaque_existential_1(&v146, v147);
  *&v133 = (*(v21 + 16))(v20, v21);
  *(&v133 + 1) = v22;
  v23 = v147;
  v24 = v148;
  __swift_project_boxed_opaque_existential_1(&v146, v147);
  v25 = (*(v24 + 24))(v23, v24);
  v27 = v26;
  sub_27409D4E4(&v146, v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  v28 = swift_dynamicCast();
  v132 = v27;
  v130 = v25;
  if (v28)
  {
    v30 = v142;
    v29 = v143;
    v126 = v19;
    v129 = v141;
    v128 = v140;
    v127 = *(&v139 + 1);
    v125 = v139;
    if (v144 > 7u)
    {
      if (v144 == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v88 = type metadata accessor for WFButton();
        v124 = v29;
        v90 = v88 - 8;
        v89 = *(v88 - 8);
        v123 = v30;
        v91 = *(v89 + 72);
        v92 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_2741CC090;
        v93 = swift_allocObject();
        *(v93 + 16) = v131;
        *(v93 + 24) = a6;

        sub_2741C698C();
        v94 = *(v15 + 32);
        v95 = v134;
        v94(v42 + v92, v18, v134);
        *(v42 + v92 + *(v90 + 28)) = 10;
        v96 = (v42 + v92 + *(v90 + 32));
        *v96 = sub_2740C5158;
        v96[1] = v93;
        sub_2741C698C();
        v94(v42 + v92 + v91, v18, v95);
        *(v42 + v92 + v91 + *(v90 + 28)) = 0;
        v97 = (v42 + v92 + v91 + *(v90 + 32));
        *v97 = nullsub_1;
        v97[1] = 0;
        v44 = v125;
        v45 = v127;
        v46 = v128;
        v47 = v129;
        v48 = v123;
        v49 = v124;
        v50 = 8;
        goto LABEL_14;
      }

      if (v144 == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v73 = type metadata accessor for WFButton();
        v124 = v29;
        v75 = v73 - 8;
        v74 = *(v73 - 8);
        v123 = v30;
        v76 = *(v74 + 72);
        v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_2741CC090;
        v78 = swift_allocObject();
        *(v78 + 16) = v131;
        *(v78 + 24) = a6;

        sub_2741C698C();
        v79 = *(v15 + 32);
        v80 = v134;
        v79(v42 + v77, v18, v134);
        *(v42 + v77 + *(v75 + 28)) = 8;
        v81 = (v42 + v77 + *(v75 + 32));
        *v81 = sub_2740C5158;
        v81[1] = v78;
        sub_2741C698C();
        v79(v42 + v77 + v76, v18, v80);
        *(v42 + v77 + v76 + *(v75 + 28)) = 9;
        v82 = (v42 + v77 + v76 + *(v75 + 32));
        *v82 = nullsub_1;
        v82[1] = 0;
        v44 = v125;
        v45 = v127;
        v46 = v128;
        v47 = v129;
        v48 = v123;
        v49 = v124;
        v50 = 9;
        goto LABEL_14;
      }
    }

    else if (v144 - 5 < 3 || v144 == 3)
    {
      v122 = v144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
      v31 = (type metadata accessor for WFButton() - 8);
      v32 = *(*v31 + 72);
      v33 = *(*v31 + 80);
      v123 = v30;
      v34 = (v33 + 32) & ~v33;
      v35 = swift_allocObject();
      v124 = v29;
      v36 = v35;
      *(v35 + 16) = xmmword_2741CC090;
      v37 = v35 + v34;
      v38 = swift_allocObject();
      *(v38 + 16) = v131;
      *(v38 + 24) = a6;

      sub_2741C698C();
      v39 = *(v15 + 32);
      v40 = v134;
      v39(v37, v18, v134);
      *(v37 + v31[7]) = 4;
      v41 = (v37 + v31[8]);
      *v41 = sub_2740C5158;
      v41[1] = v38;
      sub_2741C698C();
      v39(v37 + v32, v18, v40);
      v42 = v36;
      *(v37 + v32 + v31[7]) = 1;
      v43 = (v37 + v32 + v31[8]);
      *v43 = nullsub_1;
      v43[1] = 0;
      v44 = v125;
      v45 = v127;
      v46 = v128;
      v47 = v129;
      v48 = v123;
      v49 = v124;
      v50 = v122;
LABEL_14:
      sub_2740A66EC(v44, v45, v46, v47, v48, v49, v50);
      goto LABEL_15;
    }

    v83 = v144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v84 = (type metadata accessor for WFButton() - 8);
    v85 = *(*v84 + 72);
    v86 = (*(*v84 + 80) + 32) & ~*(*v84 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    (*(v15 + 32))(v42 + v86, v18, v134);
    *(v42 + v86 + v84[7]) = 0;
    v87 = (v42 + v86 + v84[8]);
    *v87 = v131;
    v87[1] = a6;

    v44 = v125;
    v45 = v127;
    v46 = v128;
    v47 = v129;
    v48 = v30;
    v49 = v29;
    v50 = v83;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
  v69 = (type metadata accessor for WFButton() - 8);
  v70 = *(*v69 + 72);
  v71 = (*(*v69 + 80) + 32) & ~*(*v69 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2741CB550;
  sub_2741C698C();
  (*(v15 + 32))(v42 + v71, v18, v134);
  *(v42 + v71 + v69[7]) = 0;
  v72 = (v42 + v71 + v69[8]);
  *v72 = v131;
  v72[1] = a6;

LABEL_15:
  v98 = v132;
  v139 = v133;
  if (v132)
  {
    sub_2740A6A74();
    v134 = sub_2741C76AC();
    *(&v133 + 1) = v99;
    LODWORD(v131) = v100;
    *&v133 = v101;
    *&v139 = v130;
    *(&v139 + 1) = v98;
    v129 = sub_2741C76AC();
    v128 = v102;
    v130 = v103;
    v132 = v121;
    v127 = v104 & 1;
    v105 = MEMORY[0x28223BE20](v129);
    MEMORY[0x28223BE20](v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F0, &qword_2741D7C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E8, &qword_2741D7C20);
    v107 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A3D0, &qword_2741D3EA0);
    v108 = sub_2741B017C();
    v109 = sub_2741B0320();
    *&v139 = v106;
    *(&v139 + 1) = v107;
    v140 = v108;
    v141 = v109;
    swift_getOpaqueTypeConformance2();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v110 = v131;
    v111 = v134;
    v112 = *(&v133 + 1);
    sub_2741C787C();

    sub_2740A6AC8(v129, v128, v127);
  }

  else
  {
    sub_2740A6A74();
    *(&v133 + 1) = sub_2741C76AC();
    *&v133 = v113;
    v110 = v114;
    v132 = v115;
    v134 = v121;
    v116 = MEMORY[0x28223BE20](*(&v133 + 1));
    MEMORY[0x28223BE20](v116);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F0, &qword_2741D7C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    v131 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E8, &qword_2741D7C20);
    v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A3D0, &qword_2741D3EA0);
    v119 = sub_2741B017C();
    v120 = sub_2741B0320();
    *&v139 = v117;
    *(&v139 + 1) = v118;
    v140 = v119;
    v141 = v120;
    swift_getOpaqueTypeConformance2();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v111 = *(&v133 + 1);
    v112 = v133;
    sub_2741C787C();
  }

  sub_2740A6AC8(v111, v112, v110 & 1);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v146);
}

uint64_t sub_2741A652C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v137 = a5;
  v14 = sub_2741C699C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740A6D94(a4, &v141, &qword_280937E78, &qword_2741D81E0);
  v140 = a2;
  v139 = a1;
  v138 = a7;
  if (!v143)
  {
    sub_27409D420(&v141, &qword_280937E78, &qword_2741D81E0);
    sub_2741C714C();
    v137 = sub_2741C768C();
    v136 = v51;
    LODWORD(v134) = v52;
    v135 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v54 = (type metadata accessor for WFButton() - 8);
    v55 = *(*v54 + 72);
    v56 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    v58 = (*(v15 + 32))(v57 + v56, v18, v14);
    v133 = &v124;
    *(v57 + v56 + v54[7]) = 0;
    v59 = (v57 + v56 + v54[8]);
    *v59 = nullsub_1;
    v59[1] = 0;
    v60 = MEMORY[0x28223BE20](v58);
    MEMORY[0x28223BE20](v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B498, &qword_2741D7ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2741B15B4();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v61 = v134;
    v62 = v137;
    v63 = v136;
    sub_2741C787C();

    sub_2740A6AC8(v62, v63, v61 & 1);
  }

  v132 = a6;
  v135 = v14;
  LODWORD(v136) = a3;
  v19 = v7;
  sub_27409D118(&v141, &v148);
  v20 = v149;
  v21 = v150;
  __swift_project_boxed_opaque_existential_1(&v148, v149);
  v134 = (*(v21 + 16))(v20, v21);
  v23 = v22;
  v24 = v149;
  v25 = v150;
  __swift_project_boxed_opaque_existential_1(&v148, v149);
  v26 = (*(v25 + 24))(v24, v25);
  v28 = v27;
  sub_27409D4E4(&v148, v147);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  v29 = swift_dynamicCast();
  v131 = v26;
  if (v29)
  {
    v31 = v144;
    v30 = v145;
    v127 = v19;
    v130 = v143;
    v129 = v142;
    v128 = *(&v141 + 1);
    v126 = v141;
    if (v146 > 7u)
    {
      if (v146 == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v111 = type metadata accessor for WFButton();
        v124 = v28;
        v113 = v111 - 8;
        v112 = *(v111 - 8);
        v125 = v31;
        v114 = *(v112 + 72);
        v115 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_2741CC090;
        v133 = v116;
        v117 = v116 + v115;
        v118 = swift_allocObject();
        *(v118 + 16) = v137;
        *(v118 + 24) = v132;

        sub_2741C698C();
        v119 = *(v15 + 32);
        v120 = v135;
        v119(v117, v18, v135);
        *(v117 + *(v113 + 28)) = 10;
        v121 = (v117 + *(v113 + 32));
        *v121 = sub_2741B17A0;
        v121[1] = v118;
        sub_2741C698C();
        v119(v117 + v114, v18, v120);
        *(v117 + v114 + *(v113 + 28)) = 0;
        v122 = *(v113 + 32);
        v28 = v124;
        v123 = (v117 + v114 + v122);
        *v123 = nullsub_1;
        v123[1] = 0;
        v45 = v126;
        v46 = v128;
        v47 = v129;
        v48 = v130;
        v49 = v125;
        v50 = v30;
        v86 = 8;
        goto LABEL_14;
      }

      if (v146 == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v73 = type metadata accessor for WFButton();
        v124 = v28;
        v75 = v73 - 8;
        v74 = *(v73 - 8);
        v125 = v31;
        v76 = *(v74 + 72);
        v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_2741CC090;
        v133 = v78;
        v79 = v78 + v77;
        v80 = swift_allocObject();
        *(v80 + 16) = v137;
        *(v80 + 24) = v132;

        sub_2741C698C();
        v81 = *(v15 + 32);
        v82 = v135;
        v81(v79, v18, v135);
        *(v79 + *(v75 + 28)) = 8;
        v83 = (v79 + *(v75 + 32));
        *v83 = sub_2741B17A0;
        v83[1] = v80;
        sub_2741C698C();
        v81(v79 + v76, v18, v82);
        *(v79 + v76 + *(v75 + 28)) = 9;
        v84 = *(v75 + 32);
        v28 = v124;
        v85 = (v79 + v76 + v84);
        *v85 = nullsub_1;
        v85[1] = 0;
        v45 = v126;
        v46 = v128;
        v47 = v129;
        v48 = v130;
        v49 = v125;
        v50 = v30;
        v86 = 9;
LABEL_14:
        sub_2740A66EC(v45, v46, v47, v48, v49, v50, v86);
        goto LABEL_15;
      }
    }

    else if (v146 - 5 < 3 || v146 == 3)
    {
      LODWORD(v124) = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
      v32 = (type metadata accessor for WFButton() - 8);
      v33 = *(*v32 + 72);
      v34 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_2741CC090;
      v133 = v35;
      v36 = v35 + v34;
      v37 = swift_allocObject();
      v125 = v31;
      v38 = v37;
      *(v37 + 16) = v137;
      *(v37 + 24) = v132;

      sub_2741C698C();
      v39 = *(v15 + 32);
      v137 = v30;
      v40 = v28;
      v41 = v135;
      v39(v36, v18, v135);
      *(v36 + v32[7]) = 4;
      v42 = (v36 + v32[8]);
      *v42 = sub_2741B17A0;
      v42[1] = v38;
      sub_2741C698C();
      v43 = v41;
      v28 = v40;
      v39(v36 + v33, v18, v43);
      *(v36 + v33 + v32[7]) = 1;
      v44 = (v36 + v33 + v32[8]);
      *v44 = nullsub_1;
      v44[1] = 0;
      v45 = v126;
      v46 = v128;
      v47 = v129;
      v48 = v130;
      v49 = v125;
      v50 = v137;
LABEL_13:
      v86 = v124;
      goto LABEL_14;
    }

    LODWORD(v124) = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v87 = (type metadata accessor for WFButton() - 8);
    v88 = *(*v87 + 72);
    v89 = (*(*v87 + 80) + 32) & ~*(*v87 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_2741CB550;
    v133 = v90;
    v91 = v90 + v89;
    sub_2741C698C();
    (*(v15 + 32))(v91, v18, v135);
    *(v91 + v87[7]) = 0;
    v92 = (v91 + v87[8]);
    v93 = v132;
    *v92 = v137;
    v92[1] = v93;

    v45 = v126;
    v46 = v128;
    v47 = v129;
    v48 = v130;
    v49 = v31;
    v50 = v30;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
  v65 = (type metadata accessor for WFButton() - 8);
  v66 = *(*v65 + 72);
  v67 = (*(*v65 + 80) + 32) & ~*(*v65 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2741CB550;
  v69 = v28;
  v133 = v68;
  v70 = v68 + v67;
  sub_2741C698C();
  (*(v15 + 32))(v70, v18, v135);
  *(v70 + v65[7]) = 0;
  v71 = (v70 + v65[8]);
  v28 = v69;
  v72 = v132;
  *v71 = v137;
  v71[1] = v72;

LABEL_15:
  *&v141 = v134;
  *(&v141 + 1) = v23;
  sub_2740A6A74();
  if (v28)
  {
    v137 = sub_2741C76AC();
    v135 = v94;
    LODWORD(v130) = v95;
    v134 = v96;
    *&v141 = v131;
    *(&v141 + 1) = v28;
    v129 = sub_2741C76AC();
    v128 = v97;
    v131 = v98;
    v132 = &v124;
    v100 = v99 & 1;
    v101 = MEMORY[0x28223BE20](v129);
    MEMORY[0x28223BE20](v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B498, &qword_2741D7ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2741B15B4();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v102 = v130;
    v103 = v137;
    v104 = v135;
    sub_2741C787C();

    sub_2740A6AC8(v129, v128, v100);

    v105 = v102 & 1;
  }

  else
  {
    v135 = sub_2741C76AC();
    v134 = v106;
    v108 = v107;
    v132 = v109;
    v137 = &v124;
    v110 = MEMORY[0x28223BE20](v135);
    MEMORY[0x28223BE20](v110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B498, &qword_2741D7ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2741B15B4();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v103 = v135;
    v104 = v134;
    sub_2741C787C();

    v105 = v108 & 1;
  }

  sub_2740A6AC8(v103, v104, v105);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v148);
}

uint64_t sub_2741A7590@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741B0924(&qword_280939368, type metadata accessor for HotspotDevicesListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_2741A7650(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_2741B0924(&qword_280939368, type metadata accessor for HotspotDevicesListModel);
  sub_2741C69FC();
}

uint64_t sub_2741A771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2740A6D94(a3, v24 - v10, &qword_280937E30, &qword_2741CDC20);
  v12 = sub_2741C80DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_27409D420(v11, &qword_280937E30, &qword_2741CDC20);
  }

  else
  {
    sub_2741C80CC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2741C805C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2741C7EEC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2741A79C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2740A6D94(a3, v24 - v10, &qword_280937E30, &qword_2741CDC20);
  v12 = sub_2741C80DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_27409D420(v11, &qword_280937E30, &qword_2741CDC20);
  }

  else
  {
    sub_2741C80CC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2741C805C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2741C7EEC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AED8, &unk_2741D7EB0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AED8, &unk_2741D7EB0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2741A7C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2740A6D94(a3, v24 - v10, &qword_280937E30, &qword_2741CDC20);
  v12 = sub_2741C80DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_27409D420(v11, &qword_280937E30, &qword_2741CDC20);
  }

  else
  {
    sub_2741C80CC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2741C805C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2741C7EEC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B490, &qword_2741D7EA8);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B490, &qword_2741D7EA8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2741A7F40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741B0924(&qword_280937E70, type metadata accessor for AssociationModel);
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v3 + 64, a2, &qword_28093A3D0, &qword_2741D3EA0);
}

uint64_t sub_2741A8010(uint64_t a1, uint64_t *a2)
{
  sub_2740A6D94(a1, v5, &qword_28093A3D0, &qword_2741D3EA0);
  v3 = *a2;
  return sub_274139BA8(v5);
}

uint64_t sub_2741A805C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_2741A811C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_27414B70C(v4);
}

uint64_t sub_2741A8148@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  *a2 = *(v3 + 120);
}

uint64_t sub_2741A8208(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_27414B974(v4);
}

uint64_t sub_2741A8234@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NetworksListModel();
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
  *a1 = sub_2741C6CEC();
  *(a1 + 8) = v2 & 1;
  type metadata accessor for UserSettingsModel();
  sub_2741B0924(&qword_280938290, type metadata accessor for UserSettingsModel);
  *(a1 + 16) = sub_2741C6CEC();
  *(a1 + 24) = v3 & 1;
  type metadata accessor for AssociationModel();
  sub_2741B0924(&qword_280937E70, type metadata accessor for AssociationModel);
  *(a1 + 32) = sub_2741C6CEC();
  *(a1 + 40) = v4 & 1;
  v5 = type metadata accessor for HotspotDevicesListModel();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v15[0] = sub_2740E4A68();
  sub_2741C7A2C();
  v8 = *(&v16 + 1);
  *(a1 + 48) = v16;
  *(a1 + 56) = v8;
  sub_2741C7A2C();
  v9 = *(&v16 + 1);
  *(a1 + 64) = v16;
  *(a1 + 72) = v9;
  LOBYTE(v15[0]) = 0;
  sub_2741C7A2C();
  v10 = *(&v16 + 1);
  *(a1 + 80) = v16;
  *(a1 + 88) = v10;
  *&v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_2740A6D94(&v16, v15, &qword_280937E78, &qword_2741D81E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E78, &qword_2741D81E0);
  sub_2741C7A2C();
  sub_27409D420(&v16, &qword_280937E78, &qword_2741D81E0);
  LOBYTE(v15[0]) = 0;
  sub_2741C7A2C();
  v11 = *(&v16 + 1);
  *(a1 + 144) = v16;
  *(a1 + 152) = v11;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  sub_2740A6D94(&v16, v15, &qword_280938340, &qword_2741D1660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938340, &qword_2741D1660);
  sub_2741C7A2C();
  sub_27409D420(&v16, &qword_280938340, &qword_2741D1660);
  LOBYTE(v15[0]) = 0;
  sub_2741C7A2C();
  v12 = *(&v16 + 1);
  *(a1 + 272) = v16;
  *(a1 + 280) = v12;
  LOBYTE(v15[0]) = 0;
  result = sub_2741C7A2C();
  v14 = *(&v16 + 1);
  *(a1 + 288) = v16;
  *(a1 + 296) = v14;
  return result;
}

uint64_t sub_2741A853C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741B0924(&qword_280938290, type metadata accessor for UserSettingsModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v6 = *(v3 + 80);
  v7 = *(v3 + 81);
  *a2 = *(v3 + 56);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 25) = v7;
}

uint64_t sub_2741A8614(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *a2;
  swift_getKeyPath();
  sub_2741B0924(&qword_280938290, type metadata accessor for UserSettingsModel);
  sub_2741C69FC();
}

uint64_t sub_2741A870C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B358, &qword_2741D7CD0);
  sub_2741C699C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F70, &qword_2741CE730);
  sub_2740A6D24(&qword_28093B360, &qword_28093B358, &qword_2741D7CD0);
  sub_2740A5E34();
  sub_2741B0924(&qword_28093B368, type metadata accessor for WFButton);
  return sub_2741C7B6C();
}

uint64_t sub_2741A887C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  sub_2740A6D94(a1, v17, &qword_280937E78, &qword_2741D81E0);
  if (!v18)
  {
    sub_27409D420(v17, &qword_280937E78, &qword_2741D81E0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    *v20 = 1;
    memset(&v20[8], 0, 48);
    goto LABEL_8;
  }

  if (*v20 == 1)
  {
LABEL_8:
    sub_27409D420(v20, &qword_280937FA8, &unk_2741D03F0);
    goto LABEL_10;
  }

  sub_2740A6040(v20, v21);
  sub_2740A609C(v21, v20);
  v9 = *v20;
  sub_27409D420(&v20[16], &qword_280937FB8, &unk_2741D0410);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;

    v17[0] = sub_2740E781C(v9, a4, v10);
    v17[1] = v11;
    v17[2] = v12;
    v18 = v13;
    v19 = 0;
    sub_2740A5FEC();
    sub_2741C72CC();
    result = sub_2740A61EC(v21);
    v15 = v20[32];
    v16 = *&v20[16];
    *a5 = *v20;
    *(a5 + 16) = v16;
    *(a5 + 32) = v15;
    return result;
  }

  sub_2740A61EC(v21);
LABEL_10:
  result = sub_2741C863C();
  __break(1u);
  return result;
}

uint64_t sub_2741A8A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_2740A6D94(a1, v15, &qword_280937E78, &qword_2741D81E0);
  if (!v16)
  {
    sub_27409D420(v15, &qword_280937E78, &qword_2741D81E0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    *v18 = 1;
    memset(&v18[8], 0, 48);
    goto LABEL_8;
  }

  if (*v18 == 1)
  {
LABEL_8:
    sub_27409D420(v18, &qword_280937FA8, &unk_2741D03F0);
    goto LABEL_10;
  }

  sub_2740A6040(v18, v19);
  sub_2740A609C(v19, v18);
  v7 = *v18;
  sub_27409D420(&v18[16], &qword_280937FB8, &unk_2741D0410);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;

    v15[0] = sub_2740E781C(v7, sub_2741B05B8, v8);
    v15[1] = v9;
    v15[2] = v10;
    v16 = v11;
    v17 = 0;
    sub_2740A5FEC();
    sub_2741C72CC();
    result = sub_2740A61EC(v19);
    v13 = v18[32];
    v14 = *&v18[16];
    *a4 = *v18;
    *(a4 + 16) = v14;
    *(a4 + 32) = v13;
    return result;
  }

  sub_2740A61EC(v19);
LABEL_10:
  result = sub_2741C863C();
  __break(1u);
  return result;
}

uint64_t sub_2741A8C98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741B0924(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn);
  return result;
}

uint64_t sub_2741A8D70()
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

uint64_t sub_2741A8EB0()
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

uint64_t sub_2741A8FF0()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);

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

uint64_t sub_2741A9130()
{
  sub_2741C856C();

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  if (v4)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (v4)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v1, v2);

  sub_2740CB460(0xD000000000000011, 0x80000002741E3790);
}

uint64_t sub_2741A9214()
{
  sub_2741C856C();

  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  if (v4)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (v4)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v1, v2);

  sub_2740CB460(0xD00000000000001CLL, 0x80000002741E37B0);
}

uint64_t sub_2741A92F8()
{
  sub_2741C856C();

  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  if (v4)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (v4)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v1, v2);

  sub_2740CB460(0xD00000000000001DLL, 0x80000002741E38E0);
}

uint64_t sub_2741A93DC()
{
  sub_2741C856C();

  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  if (v4)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (v4)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v1, v2);

  sub_2740CB460(0xD000000000000019, 0x80000002741E3680);
}

uint64_t sub_2741A94C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2E0, &qword_2741D7C18);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2E8, &qword_2741D7C20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v49 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F0, &qword_2741D7C28);
  v55 = *(v62 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v62);
  v50 = v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F8, &qword_2741D7C30);
  v58 = *(v13 - 8);
  v59 = v13;
  v57 = *(v58 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v56 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v61 = v49 - v16;
  sub_2741A9DFC(v1, v6);
  v17 = sub_2741A8D70();
  swift_getKeyPath();
  v68[0] = v17;
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v18 = *(v17 + 128);

  type metadata accessor for CurrentNetworkModel();
  sub_2741AFFDC();
  sub_2741B0924(&qword_280938350, type metadata accessor for CurrentNetworkModel);
  sub_2741C770C();

  sub_27409D420(v6, &qword_28093B2E0, &qword_2741D7C18);
  sub_274186A50(v1, v68);
  v19 = swift_allocObject();
  memcpy((v19 + 16), v68, 0x130uLL);
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B328, &qword_2741D7C70) + 36)];
  *v20 = sub_2741B0114;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  sub_274186A50(v2, v68);
  v21 = swift_allocObject();
  memcpy((v21 + 16), v68, 0x130uLL);
  v54 = v7;
  v22 = &v10[*(v7 + 36)];
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 2) = sub_2741B011C;
  *(v22 + 3) = v21;
  v23 = sub_2741A8FF0();
  swift_getKeyPath();
  v68[0] = v23;
  sub_2741B0924(&qword_280937E70, type metadata accessor for AssociationModel);
  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v23 + 64, &v63, &qword_28093A3D0, &qword_2741D3EA0);

  sub_274186A50(v2, v68);
  v24 = swift_allocObject();
  memcpy((v24 + 16), v68, 0x130uLL);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3D0, &qword_2741D3EA0);
  v52 = sub_2741B017C();
  v51 = sub_2741B0320();
  sub_2741C78CC();

  sub_27409D420(&v63, &qword_28093A3D0, &qword_2741D3EA0);
  sub_27409D420(v10, &qword_28093B2E8, &qword_2741D7C20);
  v25 = *(v2 + 72);
  LOBYTE(v63) = *(v2 + 64);
  *(&v63 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v26 = v68[0];
  v27 = v68[1];
  LODWORD(v7) = LOBYTE(v68[2]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  sub_274186A50(v2, v68);
  v28 = swift_allocObject();
  memcpy((v28 + 16), v68, 0x130uLL);
  v29 = v61;
  v30 = v50;
  sub_2741A53EC(v26, v27, v7, &v63, sub_2741B03F8, v28, v61);

  sub_27409D420(&v63, &qword_280937E78, &qword_2741D81E0);
  (*(v55 + 8))(v30, v62);
  v31 = *(v2 + 88);
  LOBYTE(v63) = *(v2 + 80);
  *(&v63 + 1) = v31;
  sub_2741C7A5C();
  v49[1] = v68[1];
  v50 = v68[0];
  LODWORD(v55) = LOBYTE(v68[2]);
  sub_2741C7A3C();
  sub_274186A50(v2, v68);
  v32 = swift_allocObject();
  memcpy((v32 + 16), v68, 0x130uLL);
  sub_2740A6D94(v67, &v63, &qword_280937E78, &qword_2741D81E0);
  v33 = v58;
  v34 = v56;
  v35 = v29;
  v36 = v59;
  (*(v58 + 16))(v56, v35, v59);
  v37 = (*(v33 + 80) + 56) & ~*(v33 + 80);
  v38 = (v57 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v64;
  *(v39 + 16) = v63;
  *(v39 + 32) = v40;
  *(v39 + 48) = v65;
  (*(v33 + 32))(v39 + v37, v34, v36);
  v41 = (v39 + v38);
  *v41 = sub_2741B0400;
  v41[1] = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F30, &unk_2741D7CA0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  *&v63 = v54;
  *(&v63 + 1) = v53;
  *&v64 = v52;
  *(&v64 + 1) = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_2740A5DB0();
  v46 = sub_2740A5EE4();
  *&v63 = v62;
  *(&v63 + 1) = v42;
  *&v64 = v43;
  *(&v64 + 1) = OpaqueTypeConformance2;
  v65 = v45;
  v66 = v46;
  swift_getOpaqueTypeConformance2();
  sub_2740A5F60();
  v47 = v61;
  sub_2741C788C();

  sub_27409D420(v67, &qword_280937E78, &qword_2741D81E0);
  return (*(v33 + 8))(v47, v36);
}

uint64_t sub_2741A9DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B320, &qword_2741D7C68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v93 = &v79 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B370, &qword_2741D7CD8);
  v8 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B378, &qword_2741D7CE0);
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = *(v87 + 64);
  MEMORY[0x28223BE20](v10);
  v86 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B380, &qword_2741D7CE8);
  v90 = *(v13 - 8);
  v91 = v13;
  v14 = *(v90 + 64);
  MEMORY[0x28223BE20](v13);
  v83 = &v79 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B388, &qword_2741D7CF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v92 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v96 = &v79 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B390, &qword_2741D7CF8);
  v89 = *(v21 - 8);
  v22 = v89[8];
  MEMORY[0x28223BE20](v21);
  v24 = &v79 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B398, &qword_2741D7D00);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v95 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v97 = &v79 - v29;
  v30 = sub_2741A8D70();
  swift_getKeyPath();
  *&v100[0] = v30;
  v94 = sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v31 = *(v30 + 128);

  v32 = *(v31 + 16);

  swift_getKeyPath();
  *&v100[0] = v32;
  sub_2741B0924(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  LODWORD(v31) = *(v32 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn);

  if (v31 != 1)
  {
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v80 = v5;
  v81 = v4;
  v82 = a2;
  v34 = *(a1 + 48);
  v33 = *(a1 + 56);
  *&v100[0] = v34;
  *(&v100[0] + 1) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3A0, &qword_2741D7D30);
  sub_2741C7A3C();
  v35 = v101;
  swift_getKeyPath();
  *&v100[0] = v35;
  sub_2741B0924(&qword_280939368, type metadata accessor for HotspotDevicesListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v36 = *(v35 + 56);

  v37 = *(v36 + 16);

  v38 = &qword_28093A000;
  if (v37)
  {
    v39 = sub_2741A8EB0();
    swift_getKeyPath();
    *&v100[0] = v39;
    sub_2741B0924(&qword_280938290, type metadata accessor for UserSettingsModel);
    sub_2741C6A0C();

    swift_beginAccess();
    v40 = *(v39 + 72);

    if (!v40)
    {
      v110 = 0;
      v109 = 0u;
      v108 = 0u;
      *&v100[0] = v34;
      *(&v100[0] + 1) = v33;
      sub_2741C7A3C();
      v42 = v101;
      sub_274186A50(a1, v100);
      v43 = swift_allocObject();
      memcpy((v43 + 16), v100, 0x130uLL);
      type metadata accessor for AssociationModel();
      sub_2741B0924(&qword_280937E70, type metadata accessor for AssociationModel);
      *&v101 = sub_2741C6CEC();
      BYTE8(v101) = v44 & 1;
      LOBYTE(v98) = 0;
      sub_2741C7A2C();
      LOBYTE(v102) = v99;
      *(&v102 + 1) = *(&v99 + 1);
      sub_2740A6D94(&v108, &v99, &qword_280937E78, &qword_2741D81E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E78, &qword_2741D81E0);
      sub_2741C7A2C();
      sub_27409D420(&v108, &qword_280937E78, &qword_2741D81E0);
      *&v106 = v42;
      *(&v106 + 1) = sub_2741B0844;
      *v107 = v43;
      v98 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3A8, &qword_2741D7D88);
      sub_2741C7A2C();
      *&v107[8] = v99;
      v100[4] = v105;
      v100[5] = v106;
      v100[0] = v101;
      v100[1] = v102;
      v100[2] = v103;
      v100[3] = v104;
      v100[6] = *v107;
      *&v100[7] = *(&v99 + 1);
      v38 = &qword_28093A000;
      goto LABEL_8;
    }

    v38 = &qword_28093A000;
  }

  memset(v100, 0, 120);
LABEL_8:
  v45 = sub_2741A8D70();
  swift_getKeyPath();
  *&v101 = v45;
  sub_2741C6A0C();

  swift_beginAccess();
  v46 = *(v45 + 112);

  v47 = *(v46 + 16);

  if (v47)
  {
    sub_2741AC0A4(v24);
    v48 = v97;
    sub_2740A6C18(v24, v97, &qword_28093B390, &qword_2741D7CF8);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v48 = v97;
  }

  (v89[7])(v48, v49, 1, v21);
  v50 = sub_2741A8EB0();
  swift_getKeyPath();
  v51 = v38[476];
  *&v101 = v50;
  sub_2741B0924(&qword_280938290, type metadata accessor for UserSettingsModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v52 = *(v50 + 72);

  if (v52)
  {

    v54 = 1;
    v55 = v96;
    v57 = v90;
    v56 = v91;
  }

  else
  {
    v89 = &v79;
    MEMORY[0x28223BE20](v53);
    sub_2741AF438(a1, v84);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3B0, &qword_2741D7DB8);
    v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3B8, &qword_2741D7DC0);
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3C0, &qword_2741D7DC8);
    v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3C8, &qword_2741D7DD0);
    v61 = type metadata accessor for OtherNetworkSheet();
    v62 = sub_2740A6D24(&qword_28093B3D0, &qword_28093B3C8, &qword_2741D7DD0);
    v63 = sub_2741B0924(&qword_28093B3D8, type metadata accessor for OtherNetworkSheet);
    *&v101 = v60;
    *(&v101 + 1) = v61;
    *&v102 = v62;
    *(&v102 + 1) = v63;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v65 = sub_2741B0870();
    *&v101 = v58;
    v48 = v97;
    *(&v101 + 1) = v59;
    *&v102 = OpaqueTypeConformance2;
    *(&v102 + 1) = v65;
    swift_getOpaqueTypeConformance2();
    sub_2740A6D24(&qword_28093B3F0, &qword_28093B3B0, &qword_2741D7DB8);
    v66 = v86;
    sub_2741C7B8C();
    sub_2741A8D70();
    type metadata accessor for NetworksListModel();
    sub_2741B096C();
    v67 = v83;
    v68 = v88;
    sub_2741C770C();

    (*(v87 + 8))(v66, v68);
    v57 = v90;
    v56 = v91;
    v55 = v96;
    (*(v90 + 32))(v96, v67, v91);
    v54 = 0;
  }

  (*(v57 + 56))(v55, v54, 1, v56);
  v69 = sub_2741A8EB0();
  sub_2740E2984(v69, &v108);

  sub_2740A6D94(v100, &v101, &qword_28093B400, &qword_2741D7DD8);
  v70 = v95;
  sub_2740A6D94(v48, v95, &qword_28093B398, &qword_2741D7D00);
  v71 = v92;
  sub_2740A6D94(v55, v92, &qword_28093B388, &qword_2741D7CF0);
  v72 = v108;
  LODWORD(v94) = v109;
  v73 = *(&v109 + 1);
  LODWORD(v91) = v110;
  v74 = v111;
  v75 = v93;
  sub_2740A6D94(&v101, v93, &qword_28093B400, &qword_2741D7DD8);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B408, &unk_2741D7DE0);
  sub_2740A6D94(v70, v75 + v76[12], &qword_28093B398, &qword_2741D7D00);
  sub_2740A6D94(v71, v75 + v76[16], &qword_28093B388, &qword_2741D7CF0);
  v77 = v75 + v76[20];
  *v77 = v72;
  *(v77 + 16) = v94;
  *(v77 + 24) = v73;
  *(v77 + 32) = v91;
  *(v77 + 40) = v74;

  sub_27409D420(v96, &qword_28093B388, &qword_2741D7CF0);
  sub_27409D420(v97, &qword_28093B398, &qword_2741D7D00);
  sub_27409D420(v100, &qword_28093B400, &qword_2741D7DD8);

  sub_27409D420(v71, &qword_28093B388, &qword_2741D7CF0);
  sub_27409D420(v95, &qword_28093B398, &qword_2741D7D00);
  sub_27409D420(&v101, &qword_28093B400, &qword_2741D7DD8);
  v78 = v82;
  sub_2740A6C18(v75, v82, &qword_28093B320, &qword_2741D7C68);
  return (*(v80 + 56))(v78, 0, 1, v81);
}

uint64_t sub_2741AACE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_2741C80DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_274186A50(a2, v15);
  sub_27409D4E4(a1, v14);
  sub_2741C80AC();
  v9 = sub_2741C809C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  memcpy(v10 + 4, v15, 0x130uLL);
  sub_27409D118(v14, (v10 + 42));
  sub_2741A771C(0, 0, v7, &unk_2741D7E90, v10);
}

uint64_t sub_2741AAE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_2741C80AC();
  v5[3] = sub_2741C809C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_2741AAF04;

  return sub_2741AB128(a5);
}

uint64_t sub_2741AAF04()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_2741C805C();
  if (v2)
  {
    v8 = sub_2741AB0C4;
  }

  else
  {
    v8 = sub_2741AB060;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2741AB060()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2741AB0C4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_2741AB128(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v4 = sub_2741C6AFC();
  v2[50] = v4;
  v5 = *(v4 - 8);
  v2[51] = v5;
  v6 = *(v5 + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = sub_2741C80AC();
  v2[54] = sub_2741C809C();
  v7 = swift_task_alloc();
  v2[55] = v7;
  *v7 = v2;
  v7[1] = sub_2741AB24C;

  return sub_2741AD2B8((v2 + 15), a1);
}

uint64_t sub_2741AB24C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 440);
  v5 = *v1;
  v3[56] = v0;

  v6 = v3[54];
  v7 = v3[53];
  v8 = sub_2741C805C();
  if (v2)
  {
    v10 = sub_2741ABC3C;
  }

  else
  {
    v3[57] = v8;
    v3[58] = v9;
    v10 = sub_2741AB3B0;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2741AB3B0()
{
  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  sub_2741B8FB8(8);

  sub_2741C856C();

  v1 = v0[18];
  v2 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v1);
  v3 = (*(v2 + 8))(v1, v2);
  MEMORY[0x2743E5FB0](v3);

  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v5 = v0[51];
  v4 = v0[52];
  v6 = v0[50];
  v7 = __swift_project_value_buffer(v6, qword_280945DD8);
  v0[59] = v7;
  v8 = *(v5 + 16);
  v0[60] = v8;
  v0[61] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v6);
  MEMORY[0x2743E5FB0](0x434F535341, 0xE500000000000000);
  MEMORY[0x2743E5FB0](42, 0xE100000000000000);
  MEMORY[0x2743E5FB0](93, 0xE100000000000000);
  sub_2740CA9CC(91, 0xE100000000000000, 0xD000000000000015, 0x80000002741E3950);

  v9 = *(v5 + 8);
  v0[62] = v9;
  v0[63] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v6);
  v0[64] = sub_2741A8FF0();
  v10 = v0[18];
  v11 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v10);
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  v0[65] = v13;
  v15 = v0[18];
  v16 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v15);
  v17 = (*(v16 + 24))(v15, v16);
  v18 = swift_task_alloc();
  v0[66] = v18;
  *v18 = v0;
  v18[1] = sub_2741AB6C8;

  return sub_27413A830(v12, v14, v17, 0);
}

uint64_t sub_2741AB6C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 528);
  v11 = *v2;
  v3[67] = a1;
  v3[68] = v1;

  if (v1)
  {
    v5 = v3[57];
    v6 = v3[58];
    v7 = sub_2741ABE60;
  }

  else
  {
    v8 = v3[65];
    v9 = v3[64];

    v5 = v3[57];
    v6 = v3[58];
    v7 = sub_2741AB7F4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2741AB7F4()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 432);

  if (v1)
  {
    v3 = *(v0 + 536);
    v4 = *(v0 + 384);
    v5 = *(v0 + 392);
    v6 = type metadata accessor for AssociationCredentials();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_27410A05C();
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    __swift_project_boxed_opaque_existential_1((v0 + 120), v10);
    v12 = (*(v11 + 16))(v10, v11);
    sub_2741084FC(v12, v13);
    v14 = v3;
    sub_27409D85C(v14, v0 + 16);
    *(v0 + 240) = 0u;
    *(v0 + 272) = 0;
    *(v0 + 256) = 0u;
    *(v0 + 304) = v6;
    *(v0 + 312) = &off_288329FD0;
    *(v0 + 280) = v9;

    sub_2741AC858(v0 + 16, v0 + 240, v0 + 280);
    sub_27409D420(v0 + 240, &qword_280939678, &qword_2741D02B0);
    sub_2740ACB2C(v0 + 16);
    sub_27409D420(v0 + 280, &qword_280937FB8, &unk_2741D0410);
    v15 = *(v5 + 56);
    *(v0 + 336) = *(v5 + 48);
    *(v0 + 344) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3A0, &qword_2741D7D30);
    sub_2741C7A3C();
    v16 = *(v0 + 376);
    sub_2740E5664();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
LABEL_7:
    v34 = *(v0 + 416);

    v35 = *(v0 + 8);
    goto LABEL_8;
  }

  v18 = *(v0 + 496);
  v17 = *(v0 + 504);
  v19 = *(v0 + 488);
  v20 = *(v0 + 416);
  v21 = *(v0 + 400);
  (*(v0 + 480))(v20, *(v0 + 472), v21);
  sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000016, 0x80000002741DB260);
  v18(v20, v21);
  v22 = *(v0 + 144);
  v23 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1((v0 + 120), v22);
  v24 = (*(v23 + 8))(v22, v23);
  v26 = v25;
  sub_2740F21F4();
  v27 = swift_allocError();
  *v28 = v24;
  *(v28 + 8) = v26;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  *(v0 + 368) = v27;
  v29 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  if (swift_dynamicCast())
  {
    v30 = *(v0 + 392);

    v31 = *(v0 + 352);
    v32 = *(v0 + 360);
    *(v0 + 184) = &type metadata for HotspotError;
    *(v0 + 192) = sub_2741B134C();
    *(v0 + 160) = v31;
    *(v0 + 168) = v32;
    sub_2740A6D94(v0 + 160, v0 + 200, &qword_280937E78, &qword_2741D81E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A4C();
    sub_27409D420(v0 + 160, &qword_280937E78, &qword_2741D81E0);
    sub_2740CB460(0xD000000000000016, 0x80000002741E3770);
    v33 = *(v30 + 72);
    *(v0 + 320) = *(v30 + 64);
    *(v0 + 328) = v33;
    *(v0 + 113) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A4C();
    sub_2741A9130();
    if (qword_280937BD0 != -1)
    {
      swift_once();
    }

    sub_2741B8FB8(32);

    goto LABEL_7;
  }

  v37 = *(v0 + 416);

  v35 = *(v0 + 8);
LABEL_8:

  return v35();
}

uint64_t sub_2741ABC3C()
{
  v1 = *(v0 + 432);

  v2 = *(v0 + 448);
  *(v0 + 368) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 392);

    v5 = *(v0 + 352);
    v6 = *(v0 + 360);
    *(v0 + 184) = &type metadata for HotspotError;
    *(v0 + 192) = sub_2741B134C();
    *(v0 + 160) = v5;
    *(v0 + 168) = v6;
    sub_2740A6D94(v0 + 160, v0 + 200, &qword_280937E78, &qword_2741D81E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A4C();
    sub_27409D420(v0 + 160, &qword_280937E78, &qword_2741D81E0);
    sub_2740CB460(0xD000000000000016, 0x80000002741E3770);
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    *(v0 + 113) = 1;
    *(v0 + 320) = v7;
    *(v0 + 328) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A4C();
    sub_2741A9130();
    if (qword_280937BD0 != -1)
    {
      swift_once();
    }

    sub_2741B8FB8(32);

    v9 = *(v0 + 416);

    v10 = *(v0 + 8);
  }

  else
  {
    v11 = *(v0 + 416);

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_2741ABE60()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 432);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  v4 = *(v0 + 544);
  *(v0 + 368) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 392);

    v7 = *(v0 + 352);
    v8 = *(v0 + 360);
    *(v0 + 184) = &type metadata for HotspotError;
    *(v0 + 192) = sub_2741B134C();
    *(v0 + 160) = v7;
    *(v0 + 168) = v8;
    sub_2740A6D94(v0 + 160, v0 + 200, &qword_280937E78, &qword_2741D81E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A4C();
    sub_27409D420(v0 + 160, &qword_280937E78, &qword_2741D81E0);
    sub_2740CB460(0xD000000000000016, 0x80000002741E3770);
    v9 = *(v6 + 64);
    v10 = *(v6 + 72);
    *(v0 + 113) = 1;
    *(v0 + 320) = v9;
    *(v0 + 328) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A4C();
    sub_2741A9130();
    if (qword_280937BD0 != -1)
    {
      swift_once();
    }

    sub_2741B8FB8(32);

    v11 = *(v0 + 416);

    v12 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 416);

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_2741AC0A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v25 = sub_2741C743C();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B448, &qword_2741D7E60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B450, &qword_2741D7E68);
  v26 = *(v12 - 8);
  v27 = v12;
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v29 = v2;
  sub_2741AEAB8(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B458, &qword_2741D7E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B460, &qword_2741D7E78);
  sub_2741B0D34();
  sub_2741B0DB0();
  sub_2741C7B7C();
  sub_2741C742C();
  v16 = sub_2741B0EB0();
  sub_2741C77DC();
  (*(v3 + 8))(v6, v25);
  (*(v8 + 8))(v11, v7);
  v17 = sub_2741A8D70();
  swift_getKeyPath();
  v32[0] = v17;
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v18 = *(v17 + 112);

  v19 = *(v18 + 16);

  if (v19 < 2)
  {
    if (qword_280937688 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_280946448;
  }

  else
  {
    if (qword_280937678 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_280946428;
  }

  v21 = *v20;
  v22 = *(v20 + 1);
  sub_2741C7EDC();
  v30 = v7;
  v31 = v16;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  sub_2741C780C();

  return (*(v26 + 8))(v15, v23);
}

uint64_t sub_2741AC4D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  sub_2740CB460(0xD000000000000034, 0x80000002741E3870);
  v4 = sub_2741A8D70();
  v5 = sub_2741C80DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_2740CE980(0, 0, v3, &unk_2741D4820, v6);
}

uint64_t sub_2741AC5F0()
{
  sub_2740CB460(0xD000000000000036, 0x80000002741E3830);
  sub_2741A8D70();
  sub_2741517B8();
}

uint64_t sub_2741AC64C(uint64_t a1, uint64_t a2)
{
  sub_2740A6D94(a2, &v12, &qword_28093A3D0, &qword_2741D3EA0);
  if (!*(&v13 + 1))
  {
    return sub_27409D420(&v12, &qword_28093A3D0, &qword_2741D3EA0);
  }

  v19[0] = v12;
  v19[1] = v13;
  v20 = v14;
  sub_27409D4E4(v19, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  if (swift_dynamicCast())
  {
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    sub_2740ACAC8(&v12, &v5);
    sub_2740A6D94(&v5, v3, &qword_280938340, &qword_2741D1660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B350, &unk_2741D7CB0);
    sub_2741C7A4C();
    sub_27409D420(&v5, &qword_280938340, &qword_2741D1660);
    *&v7 = 0;
    v5 = 0u;
    v6 = 0u;
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    sub_2741AC858(&v12, &v5, v3);
    sub_27409D420(v3, &qword_280937FB8, &unk_2741D0410);
    sub_27409D420(&v5, &qword_280939678, &qword_2741D02B0);
    sub_2740ACB2C(&v12);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    sub_27409D420(&v5, &qword_280938340, &qword_2741D1660);
    sub_2740CB218(0xD000000000000038, 0x80000002741E37F0, 2036625250, 0xE400000000000000);
  }

  return sub_274138710(v19);
}

uint64_t sub_2741AC858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  sub_2740ACAC8(a1, v29);
  sub_2740A6D94(v29, v30, &qword_280938340, &qword_2741D1660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B350, &unk_2741D7CB0);
  sub_2741C7A4C();
  sub_27409D420(v29, &qword_280938340, &qword_2741D1660);
  sub_2740A6D94(a2, v29, &qword_280939678, &qword_2741D02B0);
  if (v29[3])
  {
    v12 = *__swift_project_boxed_opaque_existential_1(v29, v29[3]);

    sub_2740D6900();

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    sub_27409D420(v29, &qword_280939678, &qword_2741D02B0);
  }

  v13 = sub_2741C80DC();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_274186A50(v4, v29);
  sub_2740ACAC8(a1, v30);
  sub_2740A6D94(a3, v27, &qword_280937FB8, &unk_2741D0410);
  sub_2740A6D94(a2, v25, &qword_280939678, &qword_2741D02B0);
  sub_2741C80AC();
  v14 = sub_2741C809C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  memcpy((v15 + 32), v29, 0x130uLL);
  v17 = v30[5];
  *(v15 + 400) = v30[4];
  *(v15 + 416) = v17;
  *(v15 + 432) = v31;
  v18 = v30[1];
  *(v15 + 336) = v30[0];
  *(v15 + 352) = v18;
  v19 = v30[3];
  *(v15 + 368) = v30[2];
  *(v15 + 384) = v19;
  v20 = v27[0];
  v21 = v27[1];
  *(v15 + 472) = v28;
  *(v15 + 440) = v20;
  *(v15 + 456) = v21;
  *(v15 + 512) = v26;
  v22 = v25[1];
  *(v15 + 480) = v25[0];
  *(v15 + 496) = v22;
  sub_2741A771C(0, 0, v11, &unk_2741D7CC8, v15);
}

uint64_t sub_2741ACB20(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  if (!v14[3])
  {
    return sub_27409D420(v14, &qword_280937E78, &qword_2741D81E0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v5;
    v3 = v7;
    sub_2741C856C();
    if (v13 == 3)
    {
      v14[0] = 0;
      v14[1] = 0xE000000000000000;
      MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
      MEMORY[0x2743E5FB0]();
      MEMORY[0x2743E5FB0](0xD00000000000001CLL, 0x80000002741D8EB0);
      sub_2741C862C();
      sub_2740CB460(0, 0xE000000000000000);

      v6 = *(a1 + 144);
      v8 = *(a1 + 152);
      LOBYTE(v14[0]) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
      sub_2741C7A4C();
      sub_2740A66EC(v4, v3, v9, v10, v11, v12, 3u);
    }

    else
    {
      MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D8E10);
      sub_2741C862C();
      sub_2740CB460(0, 0xE000000000000000);
      sub_2740A66EC(v5, v7, v9, v10, v11, v12, v13);
    }
  }

  return result;
}

uint64_t sub_2741ACDC0(char a1, uint64_t a2)
{
  v4 = sub_2741C6AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1)
  {
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A3C();
    if (*(&v25 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
      if (swift_dynamicCast())
      {
        if (*&v31[0] != 1)
        {
          sub_2740A6040(v31, v40);
          sub_2740A609C(v40, &v36);

          v33 = v37;
          v34 = v38;
          v35 = v39;
          if (*(&v38 + 1))
          {
            sub_2740A609C(v40, v31);
            v11 = *&v31[0];
            sub_27409D420(&v31[1], &qword_280937FB8, &unk_2741D0410);
            v12 = *(&v34 + 1);
            v13 = v35;
            __swift_mutable_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
            (*(v13 + 56))(v11, v12, v13);
          }

          sub_2740CB460(0xD000000000000035, 0x80000002741D8D00);
          *&v31[0] = 0;
          *(&v31[0] + 1) = 0xE000000000000000;
          sub_2741C856C();

          *&v24 = 0xD000000000000019;
          *(&v24 + 1) = 0x80000002741E3620;
          sub_2740A6D94(&v33, v31, &qword_280937FB8, &unk_2741D0410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB8, &unk_2741D0410);
          v14 = sub_2741C7EBC();
          MEMORY[0x2743E5FB0](v14);

          v15 = v24;
          if (qword_280937360 != -1)
          {
            swift_once();
          }

          v16 = __swift_project_value_buffer(v10, qword_280945DD8);
          (*(v5 + 16))(v9, v16, v10);
          sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, v15, *(&v15 + 1));

          (*(v5 + 8))(v9, v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B350, &unk_2741D7CB0);
          sub_2741C7A3C();
          if (*(&v24 + 1))
          {
            v31[4] = v28;
            v31[5] = v29;
            v32 = v30;
            v31[0] = v24;
            v31[1] = v25;
            v31[2] = v26;
            v31[3] = v27;
            *&v26 = 0;
            v24 = 0u;
            v25 = 0u;
            sub_2740A6D94(&v33, v23, &qword_280937FB8, &unk_2741D0410);
            sub_2741AC858(v31, &v24, v23);
            sub_27409D420(v23, &qword_280937FB8, &unk_2741D0410);
            sub_27409D420(&v24, &qword_280939678, &qword_2741D02B0);
            sub_2740ACB2C(v31);
          }

          else
          {
            sub_27409D420(&v24, &qword_280938340, &qword_2741D1660);
            sub_2740CB218(0xD000000000000017, 0x80000002741E3640, 2036625250, 0xE400000000000000);
          }

          sub_2740A61EC(v40);
          v17 = &qword_280937FB8;
          v18 = &unk_2741D0410;
          v19 = &v33;
          goto LABEL_14;
        }

LABEL_13:
        v17 = &qword_280937FA8;
        v18 = &unk_2741D03F0;
        v19 = v31;
LABEL_14:
        sub_27409D420(v19, v17, v18);
        goto LABEL_15;
      }
    }

    else
    {
      sub_27409D420(&v24, &qword_280937E78, &qword_2741D81E0);
    }

    *&v31[0] = 1;
    *(v31 + 8) = 0u;
    *(&v31[1] + 8) = 0u;
    *(&v31[2] + 8) = 0u;
    goto LABEL_13;
  }

LABEL_15:
  sub_2740CB460(0xD00000000000001CLL, 0x80000002741E35D0);
  sub_2740CB460(0xD000000000000022, 0x80000002741E35F0);
  v20 = *(a2 + 88);
  LOBYTE(v31[0]) = *(a2 + 80);
  *(&v31[0] + 1) = v20;
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  return sub_2741A9214();
}

uint64_t sub_2741AD2B8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_2741C80AC();
  v3[8] = sub_2741C809C();
  v5 = sub_2741C805C();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](sub_2741AD354, v5, v4);
}

uint64_t sub_2741AD354()
{
  v1 = v0[7];
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3A0, &qword_2741D7D30);
  sub_2741C7A3C();
  v0[11] = v0[4];

  return MEMORY[0x2822009F8](sub_2741AD3EC, 0, 0);
}

uint64_t sub_2741AD3EC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[11] + 16), *(v0[11] + 40));
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_2741AD494;
  v3 = v0[5];
  v4 = v0[6];

  return sub_2741B5B70(v3, v4);
}

uint64_t sub_2741AD494()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2741AD60C;
  }

  else
  {
    v3 = sub_2741AD5A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2741AD5A8()
{
  v1 = v0[11];

  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x2822009F8](sub_2741165E8, v2, v3);
}

uint64_t sub_2741AD60C()
{
  v1 = v0[11];

  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x2822009F8](sub_27411664C, v2, v3);
}

uint64_t sub_2741AD670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v7[19] = sub_2741C80AC();
  v7[20] = sub_2741C809C();
  v9 = sub_2741C805C();
  v7[21] = v9;
  v7[22] = v8;

  return MEMORY[0x2822009F8](sub_2741AD710, v9, v8);
}

uint64_t sub_2741AD710()
{
  v1 = v0[15];
  v0[23] = sub_2741A8FF0();
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_2741AD7C0;
  v4 = v0[16];
  v3 = v0[17];

  return sub_274139F44(v4, 0, 0, 1, v3);
}

uint64_t sub_2741AD7C0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_2741ADC5C;
  }

  else
  {
    v7 = v2[23];

    v6 = sub_2741AD8E4;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2741AD8E4()
{
  v1 = *(v0 + 152);
  *(v0 + 208) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741AD970, v3, v2);
}

uint64_t sub_2741AD970()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 120);

  sub_2740CB460(0xD00000000000001FLL, 0x80000002741E3660);
  v3 = *(v2 + 296);
  *(v0 + 96) = *(v2 + 288);
  *(v0 + 104) = v3;
  *(v0 + 224) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  sub_2741A93DC();
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_2741ADA40, v4, v5);
}

uint64_t sub_2741ADA40()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2741ADAA4()
{
  v1 = *(v0 + 152);
  *(v0 + 216) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741ADB30, v3, v2);
}

uint64_t sub_2741ADB30()
{
  v1 = v0[27];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];

  sub_2741ADD88(v3, (v0 + 7), v2, v4);
  v5 = v0[21];
  v6 = v0[22];

  return MEMORY[0x2822009F8](sub_2741ADBE8, v5, v6);
}

uint64_t sub_2741ADBE8()
{
  v1 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2741ADC5C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);

  *(v0 + 112) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  if (swift_dynamicCast())
  {

    sub_27409D118((v0 + 16), v0 + 56);

    return MEMORY[0x2822009F8](sub_2741ADAA4, 0, 0);
  }

  else
  {
    v4 = *(v0 + 160);

    v5 = *(v0 + 8);
    v6 = *(v0 + 200);

    return v5();
  }
}

void sub_2741ADD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v57 = a3;
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740A6D94(a1, &v62, &qword_280939678, &qword_2741D02B0);
  if (v65)
  {
    v11 = *__swift_project_boxed_opaque_existential_1(&v62, v65);

    sub_2740D6A88();

    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  }

  else
  {
    sub_27409D420(&v62, &qword_280939678, &qword_2741D02B0);
  }

  v62 = 0;
  v63 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741E36A0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  v56 = a2;
  v12 = v62;
  v13 = v63;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_280945DD8);
  v15 = v7[2];
  v15(v10, v14, v6);
  sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, v12, v13);

  v16 = v7[1];
  v16(v10, v6);
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_2741C856C();

  strcpy(v58, "credentials = ");
  v58[15] = -18;
  sub_2740A6D94(v57, &v62, &qword_280937FB8, &unk_2741D0410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB8, &unk_2741D0410);
  v17 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v17);

  v18 = *v58;
  v19 = *&v58[8];
  v57 = v14;
  v54 = v15;
  v15(v10, v14, v6);
  sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, v18, v19);

  v52 = v16;
  v16(v10, v6);
  v20 = v56;
  sub_27409D4E4(v56, v58);
  if (swift_dynamicCast())
  {
    v21 = v62;
    v49 = v63;
    v50 = v64;
    v51 = v65;
    v55 = v66;
    v56 = v67;
    v22 = v68;
    v23 = (v68 - 1);
    v54(v10, v57, v6);
    if (v23 > 1)
    {
      sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD00000000000001FLL, 0x80000002741E3750);
      v52(v10, v6);
      v65 = &type metadata for WiFiAssociationError;
      v66 = sub_2740A6654();
      v36 = swift_allocObject();
      v62 = v36;
      v37 = v21;
      v38 = v49;
      *(v36 + 16) = v21;
      *(v36 + 24) = v38;
      v39 = v50;
      v40 = v51;
      *(v36 + 32) = v50;
      *(v36 + 40) = v40;
      v41 = v55;
      v42 = v56;
      *(v36 + 48) = v55;
      *(v36 + 56) = v42;
      *(v36 + 64) = v22;
      sub_2740A6D94(&v62, v58, &qword_280937E78, &qword_2741D81E0);
      sub_2740A6800(v37, v38, v39, v40, v41, v42, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
      v43 = v53;
      sub_2741C7A4C();
      sub_27409D420(&v62, &qword_280937E78, &qword_2741D81E0);
      sub_2740CB460(0xD000000000000016, 0x80000002741E3770);
      v44 = *(v43 + 72);
      LOBYTE(v62) = *(v43 + 64);
      v63 = v44;
      v58[0] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
      sub_2741C7A4C();
      sub_2741A9130();
      v25 = v37;
      v26 = v38;
      v27 = v39;
      v28 = v40;
      v29 = v41;
      v30 = v42;
    }

    else
    {
      sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000016, 0x80000002741E3710);
      v52(v10, v6);
      sub_2740CB460(0xD00000000000001ELL, 0x80000002741E3730);
      v24 = *(v53 + 296);
      LOBYTE(v62) = *(v53 + 288);
      v63 = v24;
      v58[0] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
      sub_2741C7A4C();
      sub_2741A93DC();
      v25 = v21;
      v26 = v49;
      v27 = v50;
      v28 = v51;
      v29 = v55;
      v30 = v56;
    }

    sub_2740A66EC(v25, v26, v27, v28, v29, v30, v22);
  }

  else
  {
    v31 = v6;
    v32 = v57;
    v33 = v54;
    sub_27409D4E4(v20, v61);
    if (swift_dynamicCast())
    {
      sub_2740A6040(v58, &v62);
      v34 = sub_274110040();
      v33(v10, v32, v31);
      if (v34)
      {
        sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000016, 0x80000002741E3710);
        v52(v10, v31);
        sub_2740CB460(0xD00000000000001ELL, 0x80000002741E3730);
        v35 = *(v53 + 296);
        v58[0] = *(v53 + 288);
        *&v58[8] = v35;
        v61[0] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
        sub_2741C7A4C();
        sub_2741A93DC();
      }

      else
      {
        sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD00000000000001FLL, 0x80000002741E36C0);
        v52(v10, v31);
        *&v59 = &type metadata for WiFiEnterpriseAssociationError;
        *(&v59 + 1) = sub_2740A65B8();
        *v58 = swift_allocObject();
        sub_2740A609C(&v62, *v58 + 16);
        sub_2740A6D94(v58, v61, &qword_280937E78, &qword_2741D81E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
        v45 = v53;
        sub_2741C7A4C();
        sub_27409D420(v58, &qword_280937E78, &qword_2741D81E0);
        sub_2740CB460(0xD00000000000001FLL, 0x80000002741E3660);
        v46 = *(v45 + 296);
        v58[0] = *(v45 + 288);
        *&v58[8] = v46;
        v61[0] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
        sub_2741C7A4C();
        sub_2741A93DC();
        sub_2740CB460(0xD000000000000021, 0x80000002741E36E0);
        v47 = *(v45 + 88);
        v58[0] = *(v45 + 80);
        *&v58[8] = v47;
        v61[0] = 1;
        sub_2741C7A4C();
        sub_2741A9214();
      }

      sub_2740A61EC(&v62);
    }

    else
    {
      *v58 = 1;
      *&v58[8] = 0u;
      v59 = 0u;
      v60 = 0u;
      sub_27409D420(v58, &qword_280937FA8, &unk_2741D03F0);
    }
  }
}

uint64_t sub_2741AE73C(uint64_t a1)
{
  v2 = sub_2741A8D70();
  swift_getKeyPath();
  __src[0] = v2;
  v3 = sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v4 = *(v2 + 112);

  __src[38] = v4;
  swift_getKeyPath();
  sub_274186A50(a1, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B428, &qword_2741D7E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B480, &qword_2741D7E80);
  sub_2740A6D24(&qword_28093B430, &qword_28093B428, &qword_2741D7E50);
  v6 = type metadata accessor for NetworksListModel();
  v7 = sub_2741B0C98();
  __src[0] = &type metadata for NetworkListRow;
  __src[1] = v6;
  __src[2] = v7;
  __src[3] = v3;
  swift_getOpaqueTypeConformance2();
  return sub_2741C7B5C();
}

uint64_t sub_2741AE958(uint64_t a1, uint64_t a2)
{
  sub_2740ACAC8(a1, v15);
  sub_274186A50(a2, __src);
  sub_2740ACAC8(a1, v10);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x130uLL);
  v5 = v10[5];
  *(v4 + 384) = v10[4];
  *(v4 + 400) = v5;
  *(v4 + 416) = v11;
  v6 = v10[1];
  *(v4 + 320) = v10[0];
  *(v4 + 336) = v6;
  v7 = v10[3];
  *(v4 + 352) = v10[2];
  *(v4 + 368) = v7;
  type metadata accessor for NetworksListModel();
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
  v13 = sub_2741C6CEC();
  v14 = v8 & 1;
  v15[13] = sub_2741B10E0;
  v15[14] = v4;
  sub_2741A8D70();
  sub_2741B0C98();
  sub_2741C770C();

  return sub_2741B1114(&v13);
}

double sub_2741AEAB8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2741A8D70();
  swift_getKeyPath();
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v3 = *(v2 + 112);

  v4 = *(v3 + 16);

  if (v4 >= 2)
  {
    if (qword_280937678 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280937688 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_2740A6A74();

  v5 = sub_2741C76AC();
  v7 = v6;
  v9 = v8;
  *&v12 = sub_2741C7EDC();
  *(&v12 + 1) = v10;
  sub_2741C765C();
  sub_2740A6AC8(v5, v7, v9 & 1);

  sub_2741C72CC();
  result = *&v12;
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_2741AEDC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B410, &qword_2741D7DF8);
  sub_2740A6D24(&qword_28093B418, &qword_28093B410, &qword_2741D7DF8);
  return sub_2741C762C();
}

uint64_t sub_2741AEE64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B420, &qword_2741D7E00);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v21 = a1;
  v11 = sub_2741A8D70();
  swift_getKeyPath();
  v23[0] = v11;
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v12 = *(v11 + 120);

  v23[38] = v12;
  swift_getKeyPath();
  sub_274186A50(a1, v23);
  v13 = swift_allocObject();
  memcpy((v13 + 16), v23, 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B428, &qword_2741D7E50);
  sub_2740A6D24(&qword_28093B430, &qword_28093B428, &qword_2741D7E50);
  sub_2741B0C98();
  sub_2741C7B5C();
  sub_274186A50(v21, v23);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v23, 0x130uLL);
  v15 = v4[2];
  v15(v8, v10, v3);
  v16 = v22;
  v15(v22, v8, v3);
  v17 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B440, &qword_2741D7E58) + 48)];
  *v17 = sub_2741B0CEC;
  v17[1] = v14;
  v18 = v4[1];

  v18(v10, v3);

  return (v18)(v8, v3);
}

uint64_t sub_2741AF1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2740ACAC8(a1, a3 + 16);
  sub_274186A50(a2, __src);
  sub_2740ACAC8(a1, v12);
  v6 = swift_allocObject();
  memcpy((v6 + 16), __src, 0x130uLL);
  v7 = v12[5];
  *(v6 + 384) = v12[4];
  *(v6 + 400) = v7;
  *(v6 + 416) = v13;
  v8 = v12[1];
  *(v6 + 320) = v12[0];
  *(v6 + 336) = v8;
  v9 = v12[3];
  *(v6 + 352) = v12[2];
  *(v6 + 368) = v9;
  type metadata accessor for NetworksListModel();
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
  result = sub_2741C6CEC();
  *a3 = result;
  *(a3 + 8) = v11 & 1;
  *(a3 + 120) = sub_2741B0CF8;
  *(a3 + 128) = v6;
  return result;
}

uint64_t sub_2741AF2D4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_2741AC858(a2, v5, v3);
  sub_27409D420(v3, &qword_280937FB8, &unk_2741D0410);
  sub_27409D420(v5, &qword_280939678, &qword_2741D02B0);
  sub_2741C7C5C();
  sub_2741C6DCC();
}

uint64_t sub_2741AF390(uint64_t a1)
{
  sub_2740CB460(0xD000000000000016, 0x80000002741E3900);
  sub_2740CB460(0xD000000000000022, 0x80000002741E3920);
  v3 = *(a1 + 272);
  v4 = *(a1 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  return sub_2741A92F8();
}

uint64_t sub_2741AF438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3B8, &qword_2741D7DC0);
  v25 = *(v23 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v17 - v4;
  v5 = sub_2741C70EC();
  sub_2741AF81C(v27);
  v20 = v27[1];
  v21 = v27[0];
  v18 = LOBYTE(v27[2]);
  v22 = v27[4];
  v41 = 1;
  v40 = v27[2];
  v39 = v27[5];
  v30 = v5;
  v31 = 0;
  v32 = 1;
  v33 = v27[0];
  v34 = v27[1];
  v35 = v27[2];
  v36 = v27[3];
  v37 = v27[4];
  v38 = v27[5];
  v6 = *(a1 + 280);
  v28 = *(a1 + 272);
  v29 = v6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v17 = LOBYTE(v27[2]);
  sub_274186A50(a1, v27);
  v7 = swift_allocObject();
  memcpy((v7 + 16), v27, 0x130uLL);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3C8, &qword_2741D7DD0);
  v9 = type metadata accessor for OtherNetworkSheet();
  v10 = sub_2740A6D24(&qword_28093B3D0, &qword_28093B3C8, &qword_2741D7DD0);
  v11 = sub_2741B0924(&qword_28093B3D8, type metadata accessor for OtherNetworkSheet);
  sub_2741C788C();

  sub_2740A6AC8(v21, v20, v18);

  v12 = *(a1 + 296);
  LOBYTE(v30) = *(a1 + 288);
  v31 = v12;
  sub_2741C7A5C();
  sub_274186A50(a1, v27);
  v13 = swift_allocObject();
  memcpy((v13 + 16), v27, 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3C0, &qword_2741D7DC8);
  v27[0] = v8;
  v27[1] = v9;
  v27[2] = v10;
  v27[3] = v11;
  swift_getOpaqueTypeConformance2();
  sub_2741B0870();
  v14 = v23;
  v15 = v26;
  sub_2741C788C();

  return (*(v25 + 8))(v15, v14);
}

uint64_t sub_2741AF81C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809373F0 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v2 = sub_2741C76AC();
  v4 = v3;
  v6 = v5;
  sub_2741C7EDC();
  v7 = sub_2741C765C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_2740A6AC8(v2, v4, v6 & 1);

  type metadata accessor for NetworksListModel();
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel);
  v14 = sub_2741C6CEC();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15 & 1;
  sub_27409861C(v7, v9, v11 & 1);

  sub_2740A6AC8(v7, v9, v11 & 1);
}

uint64_t sub_2741AF9D4(uint64_t a1)
{
  sub_2740CB460(0xD000000000000023, 0x80000002741E38B0);
  v3 = *(a1 + 272);
  v4 = *(a1 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  return sub_2741A92F8();
}

uint64_t sub_2741AFA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PasswordPromptSheet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B350, &unk_2741D7CB0);
  sub_2741C7A3C();
  if (*(&v17[0] + 1))
  {
    v24[4] = v17[4];
    v24[5] = v17[5];
    v25 = v17[6];
    v24[0] = v17[0];
    v24[1] = v17[1];
    v24[2] = v17[2];
    v24[3] = v17[3];
    sub_2740ACAC8(v24, v18);
    sub_274186A50(a1, v17);
    v9 = swift_allocObject();
    memcpy((v9 + 16), v17, 0x130uLL);
    v10 = type metadata accessor for PasswordPromptViewState();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    sub_2741C6A3C();
    v20 = v13;
    sub_2740ACAC8(v18, v21);
    v21[17] = v18[0];
    v21[18] = v18[1];
    v22 = v19;

    v14 = sub_274178454();
    sub_2740ACB2C(v18);
    v23 = v14;
    v21[13] = sub_2741AFD0C;
    v21[14] = 0;
    v21[15] = sub_2741B0B5C;
    v21[16] = v9;
    v18[3] = &type metadata for WiFiCredentialsPromptContext;
    v18[4] = &off_288329F38;
    v18[0] = swift_allocObject();
    sub_2740FAB1C(&v20, v18[0] + 16);
    sub_2740ACAC8(v24, v17);
    sub_274170184(v18, v17, v8);
    sub_2740ACB2C(v24);
    sub_2740FABE8(&v20);
    sub_2741B0BD4(v8, a2);
    return (*(v5 + 56))(a2, 0, 1, v4);
  }

  else
  {
    sub_27409D420(v17, &qword_280938340, &qword_2741D1660);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }
}

uint64_t sub_2741AFD0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v10 - v4;
  sub_2740CB460(0xD00000000000001ELL, 0x80000002741DB730);
  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));

  sub_2741B9F04(0, v10);

  sub_27409D420(v10, &qword_2809395D8, &qword_2741CFF78);
  sub_2740ACAC8(a1, v10);

  sub_2741BA454(v10);

  sub_27409D420(v10, &qword_280938340, &qword_2741D1660);
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  sub_274160514(1, 1);
  v6 = qword_280946F10;
  v7 = sub_2741C80DC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_2740CE980(0, 0, v5, &unk_2741D7DF0, v8);
}

uint64_t sub_2741AFF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = &type metadata for WiFiCredentialsPromptContext;
  v7[4] = &off_288329F38;
  v7[0] = swift_allocObject();
  sub_2740FAB1C(a2, v7[0] + 16);
  sub_2741AC858(a1, v7, a3);
  return sub_27409D420(v7, &qword_280939678, &qword_2741D02B0);
}

unint64_t sub_2741AFFDC()
{
  result = qword_28093B300;
  if (!qword_28093B300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E0, &qword_2741D7C18);
    sub_2741B0060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B300);
  }

  return result;
}

unint64_t sub_2741B0060()
{
  result = qword_28093B308;
  if (!qword_28093B308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B310, &qword_2741D7C60);
    sub_2740A6D24(&qword_28093B318, &qword_28093B320, &qword_2741D7C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B308);
  }

  return result;
}

uint64_t sub_2741B0128(uint64_t a1, uint64_t *a2)
{
  sub_2740A6D94(a1, v5, &qword_28093A3D0, &qword_2741D3EA0);
  v3 = *a2;
  return sub_274139BA8(v5);
}

unint64_t sub_2741B017C()
{
  result = qword_28093B330;
  if (!qword_28093B330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E8, &qword_2741D7C20);
    sub_2741B0208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B330);
  }

  return result;
}

unint64_t sub_2741B0208()
{
  result = qword_28093B338;
  if (!qword_28093B338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B328, &qword_2741D7C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E0, &qword_2741D7C18);
    type metadata accessor for CurrentNetworkModel();
    sub_2741AFFDC();
    sub_2741B0924(&qword_280938350, type metadata accessor for CurrentNetworkModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B338);
  }

  return result;
}

unint64_t sub_2741B0320()
{
  result = qword_28093B340;
  if (!qword_28093B340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A3D0, &qword_2741D3EA0);
    sub_2741B03A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B340);
  }

  return result;
}

unint64_t sub_2741B03A4()
{
  result = qword_28093B348;
  if (!qword_28093B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B348);
  }

  return result;
}

uint64_t sub_2741B0408()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F8, &qword_2741D7C30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v5 = (v3 + 56) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);
  v7 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

double sub_2741B04F8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F8, &qword_2741D7C30) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 56) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2741A8A88(v1 + 16, *v4, v4[1], v7);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_2741B05C0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[13];

  v8 = v0[15];

  if (v0[19])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  v9 = v0[21];

  v10 = v0[23];

  if (v0[25])
  {

    v11 = v0[27];

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 31);
  }

  v12 = v0[37];

  v13 = v0[39];

  v14 = v0[41];

  v15 = v0[43];

  v16 = v0[45];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 49);
  if (v0[58])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 55);
  }

  if (v0[63])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 60);
  }

  return MEMORY[0x2821FE8E8](v0, 520, 7);
}