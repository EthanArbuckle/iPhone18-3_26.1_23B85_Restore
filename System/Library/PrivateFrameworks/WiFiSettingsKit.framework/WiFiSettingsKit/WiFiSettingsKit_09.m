unint64_t sub_274178114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABF8, &qword_2741D5CB0);
    v3 = sub_2741C867C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2741251AC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

void *sub_274178210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B08, &unk_2741D11B0);
  v3 = sub_2741C867C();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_274125ECC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_274125ECC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_274178320(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B18, &qword_2741D11C8);
    v3 = sub_2741C867C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2740A6D94(v4, &v13, &qword_28093AC18, &qword_2741D5CD0);
      v5 = v13;
      v6 = v14;
      result = sub_2741251AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_27409D118(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

void *sub_274178454()
{
  v95[30] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v79 = &v73 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = &v73 - v5;
  v88 = type metadata accessor for EnterpriseIdentity();
  v81 = *(v88 - 8);
  v6 = *(v81 + 64);
  v7 = MEMORY[0x28223BE20](v88);
  v80 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v86 = &v73 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABA8, &qword_2741D5C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741D5C50;
  v11 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v12 = *MEMORY[0x277CDC240];
  type metadata accessor for CFString(0);
  *(inited + 40) = v12;
  v13 = *MEMORY[0x277CDC568];
  v14 = MEMORY[0x277D839B0];
  *(inited + 64) = v15;
  *(inited + 72) = v13;
  *(inited + 80) = 1;
  v16 = *MEMORY[0x277CDC428];
  *(inited + 104) = v14;
  *(inited + 112) = v16;
  v17 = *MEMORY[0x277CDC430];
  *(inited + 120) = *MEMORY[0x277CDC430];
  v18 = *MEMORY[0x277CDBEC8];
  v90 = v15;
  *(inited + 144) = v15;
  *(inited + 152) = v18;
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x80000002741E2A80;
  v19 = *MEMORY[0x277CDC5D0];
  if (!*MEMORY[0x277CDC5D0])
  {
    __break(1u);
  }

  *(inited + 192) = v19;
  *(inited + 224) = v14;
  *(inited + 200) = 1;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  sub_274177C6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABB0, &qword_2741D5C68);
  swift_arrayDestroy();
  sub_274178E40();
  v27 = sub_2741C7D4C();

  v95[0] = 0;
  if (SecItemCopyMatching(v27, v95))
  {
    goto LABEL_3;
  }

  if (!v95[0])
  {
    sub_2740CB460(0xD00000000000001ALL, 0x80000002741E2AA0);
LABEL_3:

    v89 = 0;
LABEL_4:
    swift_unknownObjectRelease();
    v28 = *MEMORY[0x277D85DE8];
    return v89;
  }

  v91 = v95[0];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABB8, &qword_2741D5C70);
  if (!swift_dynamicCast())
  {
    sub_2740CB218(0xD000000000000031, 0x80000002741E2AC0, 0xD000000000000011, 0x80000002741E2B00);
    goto LABEL_3;
  }

  v30 = v94;
  v89 = (v94 >> 62);
  if (v94 >> 62)
  {
    goto LABEL_63;
  }

  v31 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v73 = v27;
  v87 = v30;
  if (v31)
  {
    v32 = 0;
    v33 = v30 & 0xC000000000000001;
    v34 = v30 & 0xFFFFFFFFFFFFFF8;
    v90 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v33)
      {
        v35 = MEMORY[0x2743E6600](v32, v30);
      }

      else
      {
        if (v32 >= *(v34 + 16))
        {
          goto LABEL_60;
        }

        v35 = *(v30 + 8 * v32 + 32);
      }

      v27 = v35;
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v31 = sub_2741C848C();
        goto LABEL_9;
      }

      v94 = 0;
      SecIdentityCopyCertificate(v35, &v94);
      v93 = 0;
      if (!v94)
      {
        goto LABEL_21;
      }

      v36 = v94;
      SecCertificateCopyCommonName(v36, &v93);
      v37 = v93;
      if (!v93)
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        break;
      }

      v91 = 0;
      v92 = 0;
      v38 = v37;
      sub_2741C7E6C();

      v39 = v92;
      if (!v92)
      {
        break;
      }

      v40 = v91;

LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_274176FC8(0, *(v90 + 2) + 1, 1, v90);
      }

      v42 = *(v90 + 2);
      v41 = *(v90 + 3);
      v27 = (v42 + 1);
      if (v42 >= v41 >> 1)
      {
        v90 = sub_274176FC8((v41 > 1), v42 + 1, 1, v90);
      }

      v43 = v90;
      *(v90 + 2) = v27;
      v44 = &v43[16 * v42];
      *(v44 + 4) = v40;
      *(v44 + 5) = v39;
      ++v32;
      v45 = v30 == v31;
      v30 = v87;
      if (v45)
      {
        goto LABEL_33;
      }
    }

LABEL_21:
    v40 = 0;
    v39 = 0xE000000000000000;
    goto LABEL_22;
  }

  v90 = MEMORY[0x277D84F90];
LABEL_33:
  v91 = 0;
  v92 = 0xE000000000000000;
  sub_2741C856C();

  v91 = 0xD000000000000014;
  v92 = 0x80000002741E2B20;
  v46 = MEMORY[0x2743E6080](v90, MEMORY[0x277D837D0]);
  v27 = v47;
  MEMORY[0x2743E5FB0](v46);

  sub_2740CB218(v91, v92, 0xD000000000000011, 0x80000002741E2B00);

  if (v89)
  {
    v48 = sub_2741C848C();
    v49 = v85;
    if (v48)
    {
      goto LABEL_35;
    }

LABEL_55:
    v89 = MEMORY[0x277D84F90];
LABEL_56:

    v53 = v73;
LABEL_58:

    goto LABEL_4;
  }

  v48 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v49 = v85;
  if (!v48)
  {
    goto LABEL_55;
  }

LABEL_35:
  v50 = 0;
  v77 = v30 & 0xFFFFFFFFFFFFFF8;
  v78 = v30 & 0xC000000000000001;
  v74 = (v81 + 48);
  v75 = (v81 + 56);
  v51 = v90 + 40;
  v89 = MEMORY[0x277D84F90];
  v76 = v48;
  while (1)
  {
    if (v78)
    {
      v52 = MEMORY[0x2743E6600](v50, v30);
    }

    else
    {
      if (v50 >= *(v77 + 16))
      {
        goto LABEL_61;
      }

      v52 = *(v30 + 8 * v50 + 32);
    }

    v53 = v52;
    v54 = *(v90 + 2);
    if (v50 == v54)
    {

      goto LABEL_58;
    }

    if (v50 >= v54)
    {
      goto LABEL_62;
    }

    v55 = *(v51 - 1);
    v56 = *v51;
    *(v49 + 3) = 0;
    *(v49 + 4) = 0;
    v57 = *(v88 + 28);
    v27 = sub_2741C696C();
    v58 = *(v27 - 1);
    v83 = *(v58 + 56);
    v84 = v57;
    v82 = v58 + 56;
    v83(&v49[v57], 1, 1, v27);
    *v49 = v55;
    *(v49 + 1) = v56;
    *(v49 + 2) = v53;
    v91 = 0;
    swift_bridgeObjectRetain_n();
    v59 = v53;
    v60 = SecIdentityCopyCertificate(v59, &v91);
    v61 = v91;
    if (!v60)
    {
      if (v91)
      {
        break;
      }
    }

LABEL_47:

    v68 = v88;
    (*v75)(v49, 0, 1, v88);

    if ((*v74)(v49, 1, v68) == 1)
    {
      sub_274178E98(v49);
    }

    else
    {
      v69 = v80;
      sub_2740F23D4(v49, v80);
      sub_2740F23D4(v69, v86);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_274177464(0, v89[2] + 1, 1, v89, &qword_28093ABC0, &qword_2741D5C78, type metadata accessor for EnterpriseIdentity);
      }

      v71 = v89[2];
      v70 = v89[3];
      v27 = (v71 + 1);
      if (v71 >= v70 >> 1)
      {
        v89 = sub_274177464(v70 > 1, v71 + 1, 1, v89, &qword_28093ABC0, &qword_2741D5C78, type metadata accessor for EnterpriseIdentity);
      }

      v72 = v89;
      v89[2] = v27;
      sub_2740F23D4(v86, v72 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v71);
    }

    ++v50;
    v51 += 16;
    if (v76 == v50)
    {
      goto LABEL_56;
    }
  }

  v62 = v91;
  result = SecCertificateCopyIssuerSummary();
  if (result)
  {
    v63 = result;
    v64 = sub_2741C7E7C();
    v66 = v65;

    v49 = v85;
    *(v85 + 3) = v64;
    *(v49 + 4) = v66;
    SecCertificateNotValidAfter();

    v67 = v79;
    sub_2741C68DC();

    v83(v67, 0, 1, v27);
    sub_274178F00(v67, &v49[v84]);
    v61 = v91;
    v30 = v87;
    goto LABEL_47;
  }

  __break(1u);
  return result;
}

unint64_t sub_274178E40()
{
  result = qword_280937D58;
  if (!qword_280937D58)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937D58);
  }

  return result;
}

uint64_t sub_274178E98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274178F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_274178F9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280937400 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v2 = sub_2741C76AC();
  v4 = v3;
  *a1 = v2;
  *(a1 + 8) = v3;
  v6 = v5 & 1;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_27409861C(v2, v3, v5 & 1);

  sub_2740A6AC8(v2, v4, v6);
}

uint64_t sub_274179084@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2741C70EC();
  sub_274178F9C(v10);
  v3 = v10[0];
  v4 = v10[1];
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v8 = v14;
  LOBYTE(v10[0]) = 1;
  v16 = v11;
  v15 = v14;
  result = sub_2741C736C();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 68) = result;
  return result;
}

unint64_t sub_274179120()
{
  result = qword_28093AC38;
  if (!qword_28093AC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AC40, &unk_2741D5D60);
    sub_2740A6D24(&qword_2809392E0, &qword_2809392D8, &qword_2741CF338);
    sub_2740A6D24(&qword_280939308, &qword_280939310, &qword_2741D4C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AC38);
  }

  return result;
}

uint64_t sub_274179204()
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  return *(v0 + 16);
}

uint64_t sub_274179274@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2741792EC(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27417A880();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_2741793C4()
{
  swift_getKeyPath();
  v4 = v0;
  sub_27417A880();
  sub_2741C6A0C();

  v2 = *(v0 + 24);
  v1 = *(v4 + 32);

  return v2;
}

uint64_t sub_274179444@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_2741794C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (v6 = *(v2 + 32), (sub_2741C86DC() & 1) != 0))
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27417A880();
    sub_2741C69FC();
  }
}

uint64_t sub_2741795F0()
{
  swift_getKeyPath();
  v4 = v0;
  sub_27417A880();
  sub_2741C6A0C();

  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_274179670@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_2741796EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (v6 = *(v2 + 48), (sub_2741C86DC() & 1) != 0))
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27417A880();
    sub_2741C69FC();
  }
}

uint64_t sub_27417981C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_27417A880();
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__tlsIdentity;
  swift_beginAccess();
  return sub_274099294(v5 + v3, a1);
}

uint64_t sub_2741798B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__tlsIdentity;
  swift_beginAccess();
  return sub_274099294(v3 + v4, a2);
}

uint64_t sub_27417994C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_274099294(a1, &v10 - v6);
  v8 = *a2;
  return sub_2741799E0(v7);
}

uint64_t sub_2741799E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__tlsIdentity;
  swift_beginAccess();
  sub_274099294(v1 + v7, v6);
  v8 = sub_27417AA4C(v6, a1);
  sub_27409D420(v6, &qword_280937DA0, &qword_2741CB190);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_27417A880();
    sub_2741C69FC();
  }

  else
  {
    sub_274099294(a1, v6);
    swift_beginAccess();
    sub_274099390(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_27409D420(a1, &qword_280937DA0, &qword_2741CB190);
}

uint64_t sub_274179BA0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__tlsIdentity;
  swift_beginAccess();
  sub_27410B054(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_274179C0C()
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__privateMACAddressMode);
}

uint64_t sub_274179C84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__privateMACAddressMode);
  return result;
}

uint64_t sub_274179D04(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__privateMACAddressMode) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27417A880();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_274179DE4()
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__overrideLockdown);
}

uint64_t sub_274179E5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__overrideLockdown);
  return result;
}

uint64_t sub_274179EDC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__overrideLockdown) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__overrideLockdown) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27417A880();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_274179FC4()
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v1 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__certificateChain);
}

uint64_t sub_27417A040@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__certificateChain);
}

uint64_t sub_27417A0C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C69FC();
}

uint64_t sub_27417A160()
{
  v1 = *(v0 + 4);

  v2 = *(v0 + 6);

  sub_27409D420(&v0[OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__tlsIdentity], &qword_280937DA0, &qword_2741CB190);
  sub_27409D420(&v0[OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__sharer], &qword_28093AAC0, &unk_2741D5920);
  sub_2740ACB2C(&v0[OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword_network]);
  v3 = *&v0[OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword_networkName + 8];

  v4 = *&v0[OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__certificateChain];

  v5 = OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword___observationRegistrar;
  v6 = sub_2741C6A4C();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssociationPassword()
{
  result = qword_28093AC78;
  if (!qword_28093AC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27417A2D4()
{
  sub_2740997F4();
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

uint64_t sub_27417A3FC()
{
  v1 = (*v0 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword_networkName);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_27417A43C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  return v2;
}

uint64_t sub_27417A4BC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v2 = *(v1 + 40);
  v3 = *(v1 + 48);

  return v2;
}

uint64_t sub_27417A53C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  return *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__privateMACAddressMode);
}

uint64_t sub_27417A5B4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  return *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__overrideLockdown);
}

uint64_t sub_27417A62C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v2 = *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__certificateChain);
}

uint64_t sub_27417A6A8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C69FC();
}

uint64_t sub_27417A74C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__tlsIdentity;
  swift_beginAccess();
  return sub_274099294(v3 + v4, a1);
}

uint64_t sub_27417A7E4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  return *(v1 + 16);
}

unint64_t sub_27417A880()
{
  result = qword_28093AC88;
  if (!qword_28093AC88)
  {
    type metadata accessor for AssociationPassword();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AC88);
  }

  return result;
}

uint64_t sub_27417A900()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__certificateChain);
  *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__certificateChain) = *(v0 + 24);
}

uint64_t keypath_set_77Tm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_27417AA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnterpriseIdentity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B58, &unk_2741D15B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_274099294(a1, &v23 - v16);
  sub_274099294(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_274099294(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_2740F23D4(&v17[v18], v8);
      v21 = _s15WiFiSettingsKit18EnterpriseIdentityV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_2740FBC6C(v8);
      sub_2740FBC6C(v12);
      sub_27409D420(v17, &qword_280937DA0, &qword_2741CB190);
      v20 = !v21;
      return v20 & 1;
    }

    sub_2740FBC6C(v12);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_27409D420(v17, &qword_280939B58, &unk_2741D15B0);
    v20 = 1;
    return v20 & 1;
  }

  sub_27409D420(v17, &qword_280937DA0, &qword_2741CB190);
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_27417AD14()
{
  result = qword_28093AC98;
  if (!qword_28093AC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093ACA0, qword_2741D5FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AC98);
  }

  return result;
}

uint64_t WiFiPickerManager.__allocating_init(configuration:context:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_27417C70C(a1, a2);

  return v6;
}

uint64_t WiFiPickerManager.init(configuration:context:)(void *a1, uint64_t a2)
{
  v3 = sub_27417C70C(a1, a2);

  return v3;
}

uint64_t sub_27417AE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2741C80AC();
  v4[4] = sub_2741C809C();
  v6 = sub_2741C805C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_27417AF2C, v6, v5);
}

uint64_t sub_27417AF2C()
{
  v1 = v0[3];
  v0[7] = *(v0[2] + OBJC_IVAR___WiFiPickerManager_Swift_networksViewModel);
  v0[8] = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27417AFC8, v3, v2);
}

uint64_t sub_27417AFC8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = 1;

  sub_2741C6BFC();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_27417D1BC, v3, v4);
}

uint64_t sub_27417B0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_2741C80DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2741C80AC();
  v9 = v2;
  v10 = sub_2741C809C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_2740CE980(0, 0, v7, a2, v11);
}

uint64_t sub_27417B1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2741C80AC();
  v4[4] = sub_2741C809C();
  v6 = sub_2741C805C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_27417B278, v6, v5);
}

uint64_t sub_27417B278()
{
  v1 = v0[3];
  v0[7] = *(v0[2] + OBJC_IVAR___WiFiPickerManager_Swift_networksViewModel);
  v0[8] = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27417B314, v3, v2);
}

uint64_t sub_27417B314()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = 0;

  sub_2741C6BFC();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_27417D1BC, v3, v4);
}

void sub_27417B3E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_2741C80DC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_2741C80AC();
  v11 = a1;
  v12 = sub_2741C809C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_2740CE980(0, 0, v9, a4, v13);
}

uint64_t sub_27417B510(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = sub_2741C80DC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2741C80AC();
  v8 = v1;
  v9 = a1;
  v10 = sub_2741C809C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  sub_2740CE980(0, 0, v6, &unk_2741D60E0, v11);
}

uint64_t sub_27417B648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_2741C80AC();
  v5[5] = sub_2741C809C();
  v7 = sub_2741C805C();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_27417B6E0, v7, v6);
}

uint64_t sub_27417B6E0()
{
  v1 = *(v0[3] + OBJC_IVAR___WiFiPickerManager_Swift_networksViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v0[8] = v0[2];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_27417B7D8;
  v3 = v0[4];

  return sub_2740DE050(v3);
}

uint64_t sub_27417B7D8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_27417B91C, v5, v4);
}

uint64_t sub_27417B91C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27417BACC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = sub_2741C80DC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2741C80AC();
  v8 = v1;

  v9 = sub_2741C809C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a1;
  sub_2740CE980(0, 0, v6, &unk_2741D60F0, v10);
}

uint64_t sub_27417BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2741C80AC();
  v5[4] = sub_2741C809C();
  v7 = sub_2741C805C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_27417BC9C, v7, v6);
}

uint64_t sub_27417BC9C()
{
  v1 = *(v0[2] + OBJC_IVAR___WiFiPickerManager_Swift_networksViewModel);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_27417BD40;
  v3 = v0[3];

  return sub_27411FB00(v3);
}

uint64_t sub_27417BD40()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2741310F0, v4, v3);
}

uint64_t sub_27417BFB4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = sub_2741C80DC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2741C80AC();

  v8 = v1;
  v9 = sub_2741C809C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = v8;
  sub_2740CE980(0, 0, v6, &unk_2741D6100, v10);
}

uint64_t sub_27417C0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_2741C80AC();
  v5[5] = sub_2741C809C();
  v7 = sub_2741C805C();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_27417C184, v7, v6);
}

uint64_t sub_27417C184()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v0[3];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    v6 = type metadata accessor for WiFiNetwork();
    do
    {
      v7 = *v5;
      v8 = objc_allocWithZone(v6);
      swift_bridgeObjectRetain_n();
      v9 = WiFiNetwork.init(networkInfo:cwfNetworkProfiles:)(v7, 0);
      MEMORY[0x2743E6040]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2741C800C();
      }

      sub_2741C802C();

      v1 = *v2;

      ++v5;
      --v4;
    }

    while (v4);
  }

  v0[8] = v1;
  v11 = *(v0[4] + OBJC_IVAR___WiFiPickerManager_Swift_networksViewModel);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_27417C30C;

  return sub_27411FB00(v1);
}

uint64_t sub_27417C30C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_27417C42C, v4, v3);
}

uint64_t sub_27417C42C()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

id WiFiPickerManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WiFiPickerManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WiFiPickerManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27417C70C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(&v35 + 1) = &type metadata for WiFiSettingsKitFeatureFlags;
  *&v36 = sub_27417D0F4();
  v6 = sub_2741C6A5C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v34);
  if (v6)
  {
    v7 = *(a1 + OBJC_IVAR___WiFiPickerConfiguration_Swift_currentNetwork);
    v8 = type metadata accessor for CurrentNetworkViewModel();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = v7;
    swift_unknownObjectRetain();
    v12 = sub_2740DEB74(v7, 0, a2);

    swift_unknownObjectRelease();
    v13 = *(a1 + OBJC_IVAR___WiFiPickerConfiguration_Swift_networks);
    v14 = type metadata accessor for NetworksViewModel();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();

    v17 = sub_274122588(v12, v13);

    v18 = OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle;
    swift_beginAccess();
    *(v17 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_presentationStyle) = *(a1 + v18);
    v19 = OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle;
    swift_beginAccess();
    *(v17 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_interactionStyle) = *(a1 + v19);
    v20 = (a1 + OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName);
    swift_beginAccess();
    v22 = *v20;
    v21 = v20[1];

    sub_2741C7A2C();
    v23 = v34;
    v24 = *(&v34 + 1);
    *&v34 = 0x4046800000000000;
    *(&v34 + 1) = sub_27417D148;
    *&v35 = v17;
    BYTE8(v35) = 0;
    *&v36 = v22;
    *(&v36 + 1) = v21;
    LOBYTE(v37) = v23;
    *(&v37 + 1) = v24;
    *&v3[OBJC_IVAR___WiFiPickerManager_Swift_networksViewModel] = v17;
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACC0, &unk_2741D6208));

    sub_27416698C(&v34, v29);
    *&v3[OBJC_IVAR___WiFiPickerManager_Swift_hostingController] = sub_2741C71FC();
    v28.receiver = v3;
    v28.super_class = type metadata accessor for WiFiPickerManager();
    v26 = objc_msgSendSuper2(&v28, sel_init);

    sub_27417D150(&v34);

    swift_unknownObjectRelease();
    return v26;
  }

  else
  {
    result = sub_2741C863C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27417CA10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27417AE90(a1, v4, v5, v6);
}

uint64_t sub_27417CAC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27417B1DC(a1, v4, v5, v6);
}

uint64_t sub_27417CB78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27417B648(a1, v4, v5, v7, v6);
}

uint64_t sub_27417CC3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27417BC04(a1, v4, v5, v7, v6);
}

uint64_t sub_27417CD00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27417C0EC(a1, v4, v5, v7, v6);
}

uint64_t dispatch thunk of WiFiPickerManager.updateScannedNetworks(networks:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27417D024(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27409D648;

  return sub_27417B648(a1, v4, v5, v7, v6);
}

unint64_t sub_27417D0F4()
{
  result = qword_28093ACB8;
  if (!qword_28093ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093ACB8);
  }

  return result;
}

uint64_t sub_27417D1C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_274186558(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  *a2 = *(v3 + 128);
}

uint64_t sub_27417D26C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_27414BBC8(v4);
}

uint64_t sub_27417D2BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2740A6D94(a1, &v6 - v4, &qword_280938680, &qword_2741D5140);
  return sub_2741C704C();
}

uint64_t sub_27417D364@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2741C70AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_2740A6D94(v2, &v16 - v11, &qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2740C12C4(v12, a1);
  }

  v14 = *v12;
  sub_2741C82AC();
  v15 = sub_2741C74FC();
  sub_2741C6ACC();

  sub_2741C709C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t type metadata accessor for WiFiSettingsMainView()
{
  result = qword_28093AD78;
  if (!qword_28093AD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WiFiSettingsMainView.deferredURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WiFiSettingsMainView() + 32);

  return sub_274117D38(a1, v3);
}

uint64_t WiFiSettingsMainView.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2741C673C();
  v104 = *(v2 - 8);
  v105 = v2;
  v3 = *(v104 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v103 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v102 = &v98 - v6;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for WiFiSettingsMainView();
  v8 = a1 + v7[6];
  strcpy(v8, "Power Section");
  *(v8 + 7) = -4864;
  v9 = v7[7];
  v10 = [objc_opt_self() defaultCenter];
  if (qword_280937B90 != -1)
  {
    swift_once();
  }

  v11 = qword_280946F08;
  sub_2741C82FC();
  v12 = v7[8];
  v13 = sub_2741C689C();
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = a1 + v7[9];
  LOBYTE(v109) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACC8, &unk_2741D6250);
  sub_2741C7A2C();
  v15 = *(&v106 + 1);
  *v14 = v106;
  *(v14 + 1) = v15;
  v16 = a1 + v7[10];
  LOBYTE(v109) = 0;
  sub_2741C7A2C();
  v17 = *(&v106 + 1);
  *v16 = v106;
  *(v16 + 1) = v17;
  v18 = a1 + v7[11];
  LOBYTE(v109) = 0;
  sub_2741C7A2C();
  v19 = *(&v106 + 1);
  *v18 = v106;
  *(v18 + 1) = v19;
  v20 = a1 + v7[12];
  LOBYTE(v109) = 0;
  sub_2741C7A2C();
  v21 = *(&v106 + 1);
  *v20 = v106;
  *(v20 + 1) = v21;
  v22 = a1 + v7[13];
  LOBYTE(v109) = 0;
  sub_2741C7A2C();
  v23 = *(&v106 + 1);
  *v22 = v106;
  *(v22 + 1) = v23;
  v24 = (a1 + v7[14]);
  v25 = type metadata accessor for AssociationModel();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v109 = sub_274139DC0();
  sub_2741C7A2C();
  v28 = *(&v106 + 1);
  *v24 = v106;
  v24[1] = v28;
  v29 = v7[15];
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  v101 = (a1 + v29);
  v30 = qword_280946F10;
  v31 = type metadata accessor for CurrentNetworkModel();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();

  sub_2741C6A3C();
  v35 = type metadata accessor for CurrentNetworkState();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_27419D9D0();
  v34[2] = v38;
  *(&v107 + 1) = v35;
  v108 = sub_274186558(&qword_28093A6D8, type metadata accessor for CurrentNetworkState);
  *&v106 = v38;
  v39 = type metadata accessor for WiFiStateProvider();
  v40 = swift_allocObject();

  v41 = sub_274183FF8(v30, &v106, v40);
  v34[6] = v39;
  v34[7] = &off_28832A538;
  v34[3] = v41;

  v42 = type metadata accessor for ScanState();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  sub_2741C6A3C();
  *(&v107 + 1) = v42;
  v108 = sub_274186558(&qword_280938E50, type metadata accessor for ScanState);
  *&v106 = v45;

  v47 = sub_274183D64(v46, &v106);

  v100 = sub_274197AE8();
  v99 = v48;
  v50 = v49;
  LOWORD(v45) = v51;

  v52 = type metadata accessor for WiFiScanner();
  *(&v107 + 1) = v52;
  v108 = &off_28832B088;
  *&v106 = v47;
  v53 = type metadata accessor for NetworksListModel();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  v56 = swift_allocObject();
  v57 = __swift_mutable_project_boxed_opaque_existential_1(&v106, v52);
  v58 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v60 = (&v98 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60);
  v62 = sub_274184514(v34, *v60, v100, v99, v50, v45 & 0x1FF, v56);

  __swift_destroy_boxed_opaque_existential_1Tm(&v106);
  v109 = v62;
  sub_2741C7A2C();
  v63 = *(&v106 + 1);
  v64 = v101;
  *v101 = v106;
  v64[1] = v63;
  v65 = (a1 + v7[16]);
  v66 = type metadata accessor for KnownNetworksViewModel();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  v109 = KnownNetworksViewModel.init()();
  sub_2741C7A2C();
  v69 = *(&v106 + 1);
  *v65 = v106;
  v65[1] = v69;
  v70 = (a1 + v7[17]);
  v71 = type metadata accessor for UserSettingsModel();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  v74 = swift_allocObject();
  sub_2741C6A3C();
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v75 = type metadata accessor for WiFiSystemConfiguration();
  v76 = swift_allocObject();

  v78 = sub_27409CBB0(v77, &v106, v76);

  *(v74 + 40) = v75;
  *(v74 + 48) = &off_2883289C0;
  *(v74 + 16) = v78;
  v79 = __swift_project_boxed_opaque_existential_1((v74 + 16), v75);
  v80 = *v79;
  v81 = *(*v79 + 40);
  v83 = *(*v79 + 48);
  v82 = *(*v79 + 56);
  v84 = *(v80 + 64);
  LOBYTE(v80) = *(v80 + 65);
  *(v74 + 56) = v81;
  *(v74 + 64) = v83;
  *(v74 + 72) = v82;
  *(v74 + 80) = v84;
  *(v74 + 81) = v80;
  v109 = v74;

  sub_2741C7A2C();
  v85 = *(&v106 + 1);
  *v70 = v106;
  v70[1] = v85;
  v86 = (a1 + v7[18]);
  v109 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8F0, &qword_2741D5148);
  sub_2741C7A2C();
  v87 = *(&v106 + 1);
  *v86 = v106;
  v86[1] = v87;
  v88 = v7[19];
  v89 = v102;
  sub_2741C672C();
  v90 = v104;
  v91 = v105;
  (*(v104 + 16))(v103, v89, v105);
  sub_2741C7A2C();
  (*(v90 + 8))(v89, v91);
  v92 = a1 + v7[20];
  LOBYTE(v109) = 0;
  sub_2741C7A2C();
  v93 = *(&v106 + 1);
  *v92 = v106;
  *(v92 + 1) = v93;
  v94 = type metadata accessor for AppStateProvider();
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  swift_allocObject();
  *(a1 + v7[5]) = sub_2740B3988();
  *(a1 + v7[21]) = qword_280946F10;
}

uint64_t WiFiSettingsMainView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v149 = a1;
  v2 = type metadata accessor for WiFiSettingsMainView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v155 = v6;
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACD0, &qword_2741D6260);
  v127 = *(v125 - 8);
  v8 = *(v127 + 8);
  MEMORY[0x28223BE20](v125);
  v122 = &v119 - v9;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACD8, &qword_2741D6268);
  v130 = *(v129 - 8);
  v10 = *(v130 + 64);
  MEMORY[0x28223BE20](v129);
  v124 = &v119 - v11;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACE0, &qword_2741D6270);
  v132 = *(v131 - 8);
  v12 = *(v132 + 64);
  MEMORY[0x28223BE20](v131);
  v126 = &v119 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACE8, &qword_2741D6278);
  v135 = *(v134 - 8);
  v14 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  v151 = &v119 - v15;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACF0, &qword_2741D6280);
  v16 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v133 = &v119 - v17;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACF8, &qword_2741D6288);
  v140 = *(v139 - 8);
  v18 = *(v140 + 8);
  MEMORY[0x28223BE20](v139);
  v152 = &v119 - v19;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD00, &qword_2741D6290);
  v144 = *(v143 - 8);
  v20 = *(v144 + 64);
  MEMORY[0x28223BE20](v143);
  v153 = &v119 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD08, &qword_2741D6298);
  v23 = *(v22 - 8);
  v145 = v22;
  v146 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v141 = &v119 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD10, &unk_2741D62A0);
  v147 = *(v26 - 8);
  v148 = v26;
  v27 = *(v147 + 64);
  MEMORY[0x28223BE20](v26);
  v142 = &v119 - v28;
  v156 = type metadata accessor for WiFiSettingsMainView;
  v150 = v7;
  sub_274186B00(v1, v7, type metadata accessor for WiFiSettingsMainView);
  v158 = *(v3 + 80);
  v29 = (v158 + 16) & ~v158;
  v128 = v29;
  v30 = swift_allocObject();
  sub_274184814(v7, v30 + v29);
  v159 = sub_274184878;
  v160 = v30;
  v31 = v5;
  v32 = (v1 + v5[16]);
  v157 = v1;
  v34 = *v32;
  v33 = v32[1];
  v163 = v34;
  v164 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD20, &qword_2741D62B8);
  sub_2741C7A3C();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD28, &unk_2741D62C0);
  v36 = type metadata accessor for AssociationModel();
  v37 = sub_2740A6D24(&qword_28093AD30, &qword_28093AD28, &unk_2741D62C0);
  v38 = sub_274186558(&qword_280937E70, type metadata accessor for AssociationModel);
  v137 = v36;
  v136 = v38;
  sub_2741C770C();

  v39 = (v1 + v31[18]);
  v41 = *v39;
  v40 = v39[1];
  v159 = v41;
  v160 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A948, &qword_2741D5300);
  sub_2741C7A3C();
  v42 = type metadata accessor for KnownNetworksViewModel();
  v159 = v35;
  v160 = v36;
  v161 = v37;
  v162 = v38;
  v43 = MEMORY[0x277CE0C50];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_274186558(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
  v46 = v124;
  v47 = v125;
  v48 = v122;
  sub_2741C770C();

  (*(v127 + 1))(v48, v47);
  v49 = v31[17];
  v154 = v31;
  v50 = v157;
  v51 = (v157 + v49);
  v53 = *v51;
  v52 = v51[1];
  v127 = v53;
  v122 = v52;
  v159 = v53;
  v160 = v52;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD38, &unk_2741D62D0);
  sub_2741C7A3C();
  v120 = type metadata accessor for NetworksListModel();
  v159 = v47;
  v160 = v42;
  v161 = OpaqueTypeConformance2;
  v162 = v45;
  v54 = v43;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = sub_274186558(&qword_280939880, type metadata accessor for NetworksListModel);
  v57 = v126;
  v58 = v129;
  sub_2741C770C();

  (*(v130 + 8))(v46, v58);
  v59 = (v50 + v31[19]);
  v61 = *v59;
  v60 = v59[1];
  v159 = v61;
  v160 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391B8, &qword_2741CF038);
  sub_2741C7A3C();
  v62 = type metadata accessor for UserSettingsModel();
  v159 = v58;
  v160 = v120;
  v161 = v55;
  v162 = v56;
  v123 = v54;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_274186558(&qword_280938290, type metadata accessor for UserSettingsModel);
  v65 = v131;
  sub_2741C770C();

  v66 = v65;
  (*(v132 + 8))(v57, v65);
  v159 = v127;
  v160 = v122;
  sub_2741C7A3C();
  v67 = v163;
  swift_getKeyPath();
  v159 = v67;
  sub_2741C6A0C();

  v68 = *(v67 + 128);

  type metadata accessor for CurrentNetworkModel();
  v159 = v66;
  v160 = v62;
  v161 = v63;
  v162 = v64;
  swift_getOpaqueTypeConformance2();
  sub_274186558(&qword_280938350, type metadata accessor for CurrentNetworkModel);
  v69 = v133;
  v70 = v134;
  v71 = v151;
  sub_2741C770C();

  (*(v135 + 8))(v71, v70);
  v72 = v154;
  v73 = v156;
  v74 = v157;
  v75 = *(*(v157 + v154[7]) + 24);
  v76 = v150;
  sub_274186B00(v157, v150, v156);
  v77 = v128;
  v78 = swift_allocObject();
  sub_274184814(v76, v78 + v77);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD40, &unk_2741D6308);
  *(v69 + *(v79 + 52)) = v75;
  v80 = (v69 + *(v79 + 56));
  *v80 = sub_274184928;
  v80[1] = v78;
  sub_274186B00(v74, v76, v73);
  v81 = swift_allocObject();
  sub_274184814(v76, v81 + v77);
  v82 = v138;
  v83 = (v69 + *(v138 + 36));
  *v83 = sub_274184998;
  v83[1] = v81;
  v83[2] = 0;
  v83[3] = 0;
  v84 = v74 + v72[14];
  v85 = *v84;
  v86 = *(v84 + 8);
  LOBYTE(v159) = v85;
  v160 = v86;

  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  LOBYTE(v159) = v163;
  sub_274186B00(v74, v76, v73);
  v87 = swift_allocObject();
  sub_274184814(v76, v87 + v77);
  v88 = sub_2741849B4();
  sub_2741C78DC();

  sub_27409D420(v69, &qword_28093ACF0, &qword_2741D6280);
  v89 = v154;
  v134 = v154[10];
  v90 = v157;
  sub_274186B00(v157, v76, v73);
  v91 = swift_allocObject();
  sub_274184814(v76, v91 + v77);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  v159 = v82;
  v160 = MEMORY[0x277D839B0];
  v161 = v88;
  v162 = MEMORY[0x277D839C8];
  v138 = MEMORY[0x277CE0E40];
  v92 = swift_getOpaqueTypeConformance2();
  v93 = sub_274184AC0();
  v94 = v90;
  v95 = v152;
  v96 = v139;
  sub_2741C78DC();

  (*(v140 + 1))(v95, v96);
  v97 = v94 + v89[12];
  v98 = *v97;
  v99 = *(v97 + 8);
  LOBYTE(v163) = v98;
  v164 = v99;
  sub_2741C7A5C();
  v140 = v160;
  LODWORD(v152) = v161;
  v100 = v156;
  sub_274186B00(v94, v76, v156);
  v101 = swift_allocObject();
  sub_274184814(v76, v101 + v77);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD68, &qword_2741D6318);
  v159 = v96;
  v160 = v135;
  v161 = v92;
  v162 = v93;
  v139 = swift_getOpaqueTypeConformance2();
  v102 = sub_274184BE4();
  v159 = &type metadata for WiFiURLView;
  v160 = v137;
  v161 = v102;
  v162 = v136;
  v118 = swift_getOpaqueTypeConformance2();
  v103 = v141;
  v104 = v143;
  v105 = v153;
  sub_2741C788C();

  (*(v144 + 8))(v105, v104);
  v106 = v157;
  v107 = v150;
  sub_274186B00(v157, v150, v100);
  v108 = swift_allocObject();
  sub_274184814(v107, v108 + v77);
  v159 = v104;
  v160 = v134;
  v161 = v139;
  v162 = v118;
  swift_getOpaqueTypeConformance2();
  v109 = v142;
  v110 = v145;
  sub_2741C790C();

  (*(v146 + 8))(v103, v110);
  v111 = v106 + v154[22];
  v112 = *v111;
  v113 = *(v111 + 8);
  LOBYTE(v163) = v112;
  v164 = v113;
  sub_2741C7A5C();
  v114 = v159;
  v115 = v160;
  LODWORD(v105) = v161;
  sub_274186B00(v106, v107, v156);
  v116 = swift_allocObject();
  sub_274184814(v107, v116 + v77);
  sub_274183640(v114, v115, v105, sub_274184CA8, v116, v149);

  return (*(v147 + 8))(v109, v148);
}

uint64_t sub_27417F0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v29 = a3;
  v4 = type metadata accessor for WiFiSettingsMainView();
  v5 = v4 - 8;
  v28 = *(v4 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_2741C6EAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADE0, &qword_2741D64A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v25 = a2;
  sub_27417F438(a2, &v24 - v13);
  v26 = *(v5 + 36);
  (*(v8 + 16))(v10, v27, v7);
  sub_274186B00(a2, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WiFiSettingsMainView);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + *(v28 + 80) + v15) & ~*(v28 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v15, v10, v7);
  sub_274184814(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = *(v11 + 52);
  v19 = sub_2741C830C();
  v20 = &v14[v18];
  v21 = v25;
  (*(*(v19 - 8) + 16))(v20, v25 + v26, v19);
  v22 = &v14[*(v11 + 56)];
  *v22 = sub_274185DB8;
  v22[1] = v17;
  v30 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADE8, &qword_2741D64A8);
  sub_2740A6D24(&qword_28093ADF0, &qword_28093ADE0, &qword_2741D64A0);
  sub_2740A6D24(&qword_28093ADF8, &qword_28093ADE8, &qword_2741D64A8);
  sub_2741C78BC();
  return sub_27409D420(v14, &qword_28093ADE0, &qword_2741D64A0);
}

uint64_t sub_27417F438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_2741C6EBC();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE28, &qword_2741D6528);
  v35 = *(v39 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE30, &qword_2741D6530);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE38, &qword_2741D6538);
  v14 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v16 = &v34 - v15;
  v17 = type metadata accessor for WiFiSettingsMainView();
  v18 = (a1 + *(v17 + 44));
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v41) = v19;
  v42 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  v21 = sub_2741C7A3C();
  if (v45 - 1 > 1)
  {
    goto LABEL_4;
  }

  v22 = v10;
  v23 = v3;
  v24 = a1;
  v25 = *(a1 + *(v17 + 20));
  swift_getKeyPath();
  v41 = v25;
  sub_274186558(&qword_280938478, type metadata accessor for AppStateProvider);
  sub_2741C6A0C();

  v26 = *(v25 + 32);
  a1 = v24;
  v3 = v23;
  v10 = v22;
  if (v26)
  {
    swift_storeEnumTagMultiPayload();
    sub_2741865A0();
    v27 = sub_2740A6D24(&qword_28093AE68, &qword_28093AE28, &qword_2741D6528);
    v28 = sub_274186558(&qword_28093AE70, MEMORY[0x277CDDAB8]);
    v41 = v39;
    v42 = v3;
    v43 = v27;
    v44 = v28;
    swift_getOpaqueTypeConformance2();
    return sub_2741C72CC();
  }

  else
  {
LABEL_4:
    MEMORY[0x28223BE20](v21);
    *(&v34 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE40, &qword_2741D6540);
    sub_274186470();
    sub_2741C760C();
    sub_2741C7C7C();
    v30 = sub_2740A6D24(&qword_28093AE68, &qword_28093AE28, &qword_2741D6528);
    v31 = sub_274186558(&qword_28093AE70, MEMORY[0x277CDDAB8]);
    v32 = v39;
    sub_2741C78FC();
    (*(v36 + 8))(v6, v3);
    (*(v35 + 8))(v9, v32);
    v33 = v37;
    (*(v37 + 16))(v16, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_2741865A0();
    v41 = v32;
    v42 = v3;
    v43 = v30;
    v44 = v31;
    swift_getOpaqueTypeConformance2();
    sub_2741C72CC();
    return (*(v33 + 8))(v13, v10);
  }
}

uint64_t sub_27417FA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE60, &qword_2741D6548);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  *&v66 = v53 - v6;
  v7 = type metadata accessor for WiFiSettingsMainView();
  v63 = *(v7 - 1);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE80, &qword_2741D6550);
  v10 = *(*(v64 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v64);
  v65 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = v53 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE88, &qword_2741D6558);
  v14 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v67 = v53 - v15;
  v69 = type metadata accessor for KnownNetworksSectionTable(0);
  v16 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v18 = (v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1 + v7[11];
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v72) = v20;
  *&v73 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A3C();
  if (v70 - 1 > 1)
  {
    v28 = (a1 + v7[15]);
    v30 = *v28;
    v29 = v28[1];
    v58 = v30;
    v59 = v29;
    v72 = v30;
    *&v73 = v29;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD38, &unk_2741D62D0);
    sub_2741C7A3C();
    v61 = v4;
    v31 = v70;
    swift_getKeyPath();
    v60 = a2;
    v72 = v31;
    v56 = sub_274186558(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C6A0C();

    v54 = *(v31 + 128);
    v32 = v54;

    v33 = a1 + v7[13];
    v34 = *v33;
    v35 = *(v33 + 8);
    LOBYTE(v70) = v34;
    v71 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A5C();
    v37 = v72;
    v36 = v73;
    v55 = v72;
    v53[1] = v73;
    v38 = BYTE8(v73);
    sub_274186B00(a1, v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WiFiSettingsMainView);
    v39 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v40 = swift_allocObject();
    sub_274184814(v9, v40 + v39);
    type metadata accessor for UserSettingsModel();
    sub_274186558(&qword_280938290, type metadata accessor for UserSettingsModel);
    v41 = sub_2741C6CEC();
    v83 = v42 & 1;
    v72 = v41;
    LOBYTE(v73) = v42 & 1;
    *(&v73 + 1) = *v82;
    DWORD1(v73) = *&v82[3];
    *(&v73 + 1) = v32;
    v74 = v37;
    v75 = v36;
    v76 = v38;
    *v77 = *v81;
    *&v77[3] = *&v81[3];
    v78 = sub_27418698C;
    v79 = v40;
    v70 = v58;
    v71 = v59;
    sub_2741C7A3C();
    v43 = v80;
    swift_getKeyPath();
    v70 = v43;
    sub_2741C6A0C();

    v44 = *(v43 + 128);

    type metadata accessor for CurrentNetworkModel();
    sub_2741869FC();
    sub_274186558(&qword_280938350, type metadata accessor for CurrentNetworkModel);
    v45 = v62;
    sub_2741C770C();

    v46 = (a1 + v7[6]);
    v48 = *v46;
    v47 = v46[1];
    v49 = (v45 + *(v64 + 52));
    *v49 = v48;
    v49[1] = v47;

    sub_2741A8234(&v72);
    v50 = v65;
    sub_2740A6D94(v45, v65, &qword_28093AE80, &qword_2741D6550);
    sub_274186A50(&v72, &v70);
    v51 = v66;
    sub_2740A6D94(v50, v66, &qword_28093AE80, &qword_2741D6550);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE98, &unk_2741D6560);
    sub_274186A50(&v70, v51 + *(v52 + 48));
    sub_274186AAC(&v70);
    sub_27409D420(v50, &qword_28093AE80, &qword_2741D6550);
    sub_2740A6D94(v51, v67, &qword_28093AE60, &qword_2741D6548);
    swift_storeEnumTagMultiPayload();
    sub_274186558(&qword_28093AE50, type metadata accessor for KnownNetworksSectionTable);
    sub_2740A6D24(&qword_28093AE58, &qword_28093AE60, &qword_2741D6548);
    sub_2741C72CC();
    sub_27409D420(v51, &qword_28093AE60, &qword_2741D6548);
    sub_274186AAC(&v72);
    return sub_27409D420(v45, &qword_28093AE80, &qword_2741D6550);
  }

  else
  {
    v22 = (a1 + v7[18]);
    v24 = *v22;
    v23 = v22[1];
    v70 = v24;
    v71 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADC8, &qword_2741D6440);
    sub_2741C7A5C();
    v25 = v72;
    v66 = v73;
    *v18 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
    swift_storeEnumTagMultiPayload();
    v26 = v18 + *(v69 + 20);
    *v26 = v25;
    *(v26 + 8) = v66;
    sub_274186B00(v18, v67, type metadata accessor for KnownNetworksSectionTable);
    swift_storeEnumTagMultiPayload();
    sub_274186558(&qword_28093AE50, type metadata accessor for KnownNetworksSectionTable);
    sub_2740A6D24(&qword_28093AE58, &qword_28093AE60, &qword_2741D6548);
    sub_2741C72CC();
    return sub_274186B68(v18);
  }
}

id sub_27418028C()
{
  v0 = sub_2741C678C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2741C673C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v11 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      if (qword_280937690 != -1)
      {
        swift_once();
      }

      v13 = &qword_280946458;
    }

    else
    {
      if (qword_280937698 != -1)
      {
        swift_once();
      }

      v13 = &qword_280946468;
    }

    v14 = *v13;
    v15 = v13[1];

    sub_2741C677C();
    sub_2741C674C();
    v17[1] = sub_2741C796C();
    sub_274186BC4();
    sub_2741C675C();
    v16 = *(type metadata accessor for WiFiSettingsMainView() + 76);
    (*(v3 + 16))(v7, v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD18, &qword_2741D62B0);
    sub_2741C7A4C();
    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2741804FC()
{
  sub_2741C7C4C();
  sub_2741C6DCC();
}

uint64_t sub_274180570(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for WiFiSettingsMainView() + 24));
  v4 = *v2;
  v5 = v2[1];

  sub_2741C7CAC();
  sub_2741C6E9C();
}

uint64_t sub_274180600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE00, &unk_2741D64B0);
  v3 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v51 = v48 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F48, &qword_2741D04A0);
  v52 = *(v54 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v7 = v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938740, &unk_2741D64C0);
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v48 - v10;
  v12 = sub_2741C730C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938748, &unk_2741CC8D0);
  v50 = *(v14 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v49 = v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE08, &qword_2741D64D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v48 - v22;
  v24 = *(type metadata accessor for WiFiSettingsMainView() + 44);
  v57 = a1;
  v25 = (a1 + v24);
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v59) = v26;
  v60 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A3C();
  if (v58 == 1)
  {
    v28 = sub_2741C72DC();
    v48[1] = v48;
    MEMORY[0x28223BE20](v28);
    v48[-2] = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
    sub_2740A6D24(&qword_280937F78, &qword_280937F80, &unk_2741CB690);
    v29 = v49;
    sub_2741C6D2C();
    v30 = sub_2740A6D24(&qword_280938750, &qword_280938748, &unk_2741CC8D0);
    v31 = v14;
    MEMORY[0x2743E53C0](v29, v14, v30);
    v32 = v53;
    (*(v53 + 16))(v21, v11, v8);
    (*(v32 + 56))(v21, 0, 1, v8);
    v59 = v31;
    v60 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = v8;
    v35 = v23;
    MEMORY[0x2743E53D0](v21, v34, OpaqueTypeConformance2);
    sub_27409D420(v21, &qword_28093AE08, &qword_2741D64D0);
    (*(v32 + 8))(v11, v34);
    (*(v50 + 8))(v29, v31);
  }

  else
  {
    (*(v53 + 56))(v21, 1, 1, v8);
    v36 = sub_2740A6D24(&qword_280938750, &qword_280938748, &unk_2741CC8D0);
    v59 = v14;
    v60 = v36;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = v8;
    v35 = v23;
    MEMORY[0x2743E53D0](v21, v38, v37);
    sub_27409D420(v21, &qword_28093AE08, &qword_2741D64D0);
  }

  v39 = sub_2741C72EC();
  MEMORY[0x28223BE20](v39);
  v48[-2] = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  sub_2740DD218();
  sub_2741C6D2C();
  v40 = *(v55 + 48);
  v41 = v35;
  v42 = v35;
  v43 = v51;
  sub_2740A6D94(v42, v51, &qword_28093AE08, &qword_2741D64D0);
  v44 = v52;
  v45 = v43 + v40;
  v46 = v54;
  (*(v52 + 16))(v45, v7, v54);
  sub_2741C71EC();
  (*(v44 + 8))(v7, v46);
  return sub_27409D420(v41, &qword_28093AE08, &qword_2741D64D0);
}

uint64_t sub_274180CC8(uint64_t a1)
{
  v2 = type metadata accessor for WiFiSettingsMainView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  v12[0] = v6;
  v12[1] = v8;
  sub_274186B00(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WiFiSettingsMainView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_274184814(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_2740A6A74();
  return sub_2741C7A9C();
}

uint64_t sub_274180E84()
{
  sub_2741C7C4C();
  sub_2741C6DCC();
}

uint64_t sub_274180EF4(uint64_t a1)
{
  v2 = sub_2741C7C0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  sub_27417D364(&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    v12 = &qword_280938680;
    v13 = &qword_2741D5140;
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CDF0D8], v2);
    sub_2741C7AFC();
    v12 = &qword_280938710;
    v13 = &qword_2741D5350;
  }

  sub_27409D420(v10, v12, v13);
  v14 = type metadata accessor for WiFiSettingsMainView();
  v15 = (a1 + *(v14 + 44));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v22) = v16;
  v23 = v17;
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A4C();
  v18 = (a1 + *(v14 + 72));
  v20 = *v18;
  v19 = v18[1];
  v22 = v20;
  v23 = v19;
  v24 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADC8, &qword_2741D6440);
  return sub_2741C7A4C();
}

uint64_t sub_274181148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WiFiSettingsMainView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26[-v10];
  sub_274186B00(a1, &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for WiFiSettingsMainView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_274184814(&v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  v27 = a1;
  sub_2741C7A7C();
  v14 = a1 + *(v4 + 44);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v29) = v15;
  v30 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A3C();
  if (v28 - 1 > 1)
  {
    v21 = 0;
  }

  else
  {
    v17 = (a1 + *(v4 + 72));
    v19 = *v17;
    v18 = v17[1];
    v29 = v19;
    v30 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADC8, &qword_2741D6440);
    sub_2741C7A3C();
    v20 = *(v28 + 16);

    v21 = v20 == 0;
  }

  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  (*(v8 + 32))(a2, v11, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v25 = (a2 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = sub_2740A6E2C;
  v25[2] = v23;
  return result;
}

uint64_t sub_274181434(uint64_t a1)
{
  v2 = type metadata accessor for WiFiSettingsMainView();
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = v4;
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v48 - v7;
  v8 = sub_2741C7C0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE10, &qword_2741D6508);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE18, &qword_2741D6510);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v49 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v48 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v48 - v27;
  v54 = a1;
  sub_27417D364(v19);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
  if ((*(*(v29 - 8) + 48))(v19, 1, v29) == 1)
  {
    sub_27409D420(v19, &qword_280938680, &qword_2741D5140);
    v30 = 1;
  }

  else
  {
    MEMORY[0x2743E5B70](v29);
    sub_27409D420(v19, &qword_280938710, &qword_2741D5350);
    v30 = 0;
  }

  v31 = *(v9 + 56);
  v31(v28, v30, 1, v8);
  (*(v9 + 104))(v26, *MEMORY[0x277CDF0D0], v8);
  v31(v26, 0, 1, v8);
  v32 = *(v12 + 48);
  sub_2740A6D94(v28, v15, &qword_28093AE18, &qword_2741D6510);
  sub_2740A6D94(v26, &v15[v32], &qword_28093AE18, &qword_2741D6510);
  v33 = *(v9 + 48);
  if (v33(v15, 1, v8) != 1)
  {
    v34 = v49;
    sub_2740A6D94(v15, v49, &qword_28093AE18, &qword_2741D6510);
    if (v33(&v15[v32], 1, v8) != 1)
    {
      v43 = v48;
      (*(v9 + 32))(v48, &v15[v32], v8);
      sub_274186558(&qword_28093AE20, MEMORY[0x277CDF0E0]);
      v44 = v34;
      v45 = sub_2741C7DBC();
      v46 = *(v9 + 8);
      v46(v43, v8);
      sub_27409D420(v26, &qword_28093AE18, &qword_2741D6510);
      sub_27409D420(v28, &qword_28093AE18, &qword_2741D6510);
      v46(v44, v8);
      sub_27409D420(v15, &qword_28093AE18, &qword_2741D6510);
      if (v45)
      {
        goto LABEL_12;
      }

LABEL_10:
      v35 = sub_2741C80DC();
      v36 = v50;
      (*(*(v35 - 8) + 56))(v50, 1, 1, v35);
      v37 = v53;
      sub_274186B00(v54, v53, type metadata accessor for WiFiSettingsMainView);
      sub_2741C80AC();
      v38 = sub_2741C809C();
      v39 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v40 = swift_allocObject();
      v41 = MEMORY[0x277D85700];
      *(v40 + 16) = v38;
      *(v40 + 24) = v41;
      sub_274184814(v37, v40 + v39);
      sub_2740CE980(0, 0, v36, &unk_2741D6520, v40);
    }

    sub_27409D420(v26, &qword_28093AE18, &qword_2741D6510);
    sub_27409D420(v28, &qword_28093AE18, &qword_2741D6510);
    (*(v9 + 8))(v34, v8);
LABEL_9:
    sub_27409D420(v15, &qword_28093AE10, &qword_2741D6508);
    goto LABEL_10;
  }

  sub_27409D420(v26, &qword_28093AE18, &qword_2741D6510);
  sub_27409D420(v28, &qword_28093AE18, &qword_2741D6510);
  if (v33(&v15[v32], 1, v8) != 1)
  {
    goto LABEL_9;
  }

  sub_27409D420(v15, &qword_28093AE18, &qword_2741D6510);
LABEL_12:
  v47 = sub_2741C7C4C();
  MEMORY[0x28223BE20](v47);
  *(&v48 - 2) = v54;
  sub_2741C6DCC();
}

uint64_t sub_274181B98(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for WiFiSettingsMainView() + 80));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  return sub_2741C7A4C();
}

uint64_t sub_274181C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2741C80AC();
  v4[4] = sub_2741C809C();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_274181CD4;

  return sub_2740B5AD8(0);
}

uint64_t sub_274181CD4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v9 = *v1;
  *(v2 + 72) = a1;

  v7 = sub_2741C805C();
  *(v2 + 48) = v7;
  *(v2 + 56) = v6;

  return MEMORY[0x2822009F8](sub_274181E20, v7, v6);
}

uint64_t sub_274181E20()
{
  if ((*(v0 + 72) | 2) == 2)
  {

    return MEMORY[0x2822009F8](sub_274181EC8, 0, 0);
  }

  else
  {
    v1 = *(v0 + 32);

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_274181EC8()
{
  v1 = *(v0 + 24);
  *(v0 + 64) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274181F54, v3, v2);
}

uint64_t sub_274181F54()
{
  v1 = v0[8];
  v2 = v0[2];

  sub_2741C7C4C();
  *(swift_task_alloc() + 16) = v2;
  sub_2741C6DCC();

  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_2741310F0, v3, v4);
}

uint64_t sub_27418201C(uint64_t a1)
{
  v2 = sub_2741C7C0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  sub_27417D364(&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    v12 = &qword_280938680;
    v13 = &qword_2741D5140;
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CDF0D0], v2);
    sub_2741C7AFC();
    v12 = &qword_280938710;
    v13 = &qword_2741D5350;
  }

  sub_27409D420(v10, v12, v13);
  v14 = type metadata accessor for WiFiSettingsMainView();
  v15 = (a1 + *(v14 + 72));
  v17 = *v15;
  v16 = v15[1];
  v22 = v17;
  v23 = v16;
  v24 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADC8, &qword_2741D6440);
  sub_2741C7A4C();
  v18 = (a1 + *(v14 + 44));
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v22) = v19;
  v23 = v20;
  LOBYTE(v24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  return sub_2741C7A4C();
}

uint64_t sub_274182274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WiFiSettingsMainView() + 44));
  v11 = *v3;
  v13 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A3C();
  if (v10 - 1 >= 2)
  {
    if (qword_2809373E0 != -1)
    {
      swift_once();
    }

    v4 = &qword_280945EF8;
  }

  else
  {
    if (qword_2809373D8 != -1)
    {
      swift_once();
    }

    v4 = &qword_280945EE8;
  }

  v5 = v4[1];
  v12 = *v4;

  sub_2740A6A74();
  result = sub_2741C76AC();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

void sub_274182398(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WiFiSettingsMainView();
  v29 = *(v3 - 1);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - v7;
  v8 = *(a2 + v3[5]);
  swift_getKeyPath();
  v33 = v8;
  sub_274186558(&qword_280938478, type metadata accessor for AppStateProvider);
  sub_2741C6A0C();

  if (*(v8 + 32) == 1)
  {
    v9 = a2 + v3[11];
    v10 = *v9;
    v11 = *(v9 + 8);
    LOBYTE(v33) = *v9;
    v34 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
    sub_2741C7A3C();
    if (v32 == 1)
    {
      LOBYTE(v33) = v10;
      v34 = v11;
      v32 = 2;
      sub_2741C7A4C();
      return;
    }
  }

  swift_getKeyPath();
  v33 = v8;
  sub_2741C6A0C();

  if (*(v8 + 32) == 1)
  {
    sub_2740CB460(0xD000000000000030, 0x80000002741E2D00);
    v12 = *(a2 + v3[21]);
    v13 = sub_2741C80DC();
    v14 = v31;
    (*(*(v13 - 8) + 56))(v31, 1, 1, v13);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v12;

    v16 = &unk_2741D7DF0;
    v17 = v14;
    v18 = v15;
LABEL_8:
    sub_2740CE980(0, 0, v17, v16, v18);

    return;
  }

  v19 = a2 + v3[11];
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v33) = v20;
  v34 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A3C();
  if (v32 == 2)
  {
    v22 = sub_2741C80DC();
    v23 = v31;
    (*(*(v22 - 8) + 56))(v31, 1, 1, v22);
    v24 = v30;
    sub_274186B00(a2, v30, type metadata accessor for WiFiSettingsMainView);
    sub_2741C80AC();
    v25 = sub_2741C809C();
    v26 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    *(v27 + 16) = v25;
    *(v27 + 24) = v28;
    sub_274184814(v24, v27 + v26);
    v16 = &unk_2741D6490;
    v17 = v23;
    v18 = v27;
    goto LABEL_8;
  }

  swift_getKeyPath();
  v33 = v8;
  sub_2741C6A0C();

  if (*(v8 + 32) == 2)
  {
    sub_274160514(1, 2);
  }
}

uint64_t sub_274182804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = sub_2741C80AC();
  v4[6] = sub_2741C809C();
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_2741828C4;

  return sub_2740B5AD8(0);
}

uint64_t sub_2741828C4(char a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 73) = a1;

  return MEMORY[0x2822009F8](sub_2741829C4, 0, 0);
}

uint64_t sub_2741829C4()
{
  v1 = *(v0 + 40);
  *(v0 + 64) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274182A50, v3, v2);
}

uint64_t sub_274182A50()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 73);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);

  v6 = (v5 + *(type metadata accessor for WiFiSettingsMainView() + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  *(v0 + 72) = (v2 & 0xFD) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A4C();
  v10 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274133E34, v10, v9);
}

uint64_t sub_274182B48(uint64_t a1)
{
  sub_2741C856C();

  v2 = (a1 + *(type metadata accessor for WiFiSettingsMainView() + 48));
  v7 = *v2;
  v8 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  if (v6)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v6)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v3, v4);

  sub_2740CB218(0xD000000000000013, 0x80000002741E2CE0, 2036625250, 0xE400000000000000);
}

uint64_t sub_274182C48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25[-v4];
  v6 = sub_2741C689C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v25[-v12];
  v14 = type metadata accessor for WiFiSettingsMainView();
  sub_2740A6D94(a1 + v14[8], v5, &qword_280938518, &unk_2741D2090);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_27409D420(v5, &qword_280938518, &unk_2741D2090);
  }

  (*(v7 + 32))(v13, v5, v6);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_2741C856C();

  v27 = 0xD000000000000016;
  v28 = 0x80000002741E2CC0;
  sub_274186558(&qword_28093AAB0, MEMORY[0x277CC9260]);
  v16 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v16);

  sub_2740CB460(v27, v28);

  (*(v7 + 16))(v11, v13, v6);
  v17 = sub_27416DC08(v11);
  v18 = v17;
  if (v17 == 4)
  {
    return (*(v7 + 8))(v13, v6);
  }

  v19 = (a1 + v14[9]);
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v27) = v20;
  v28 = v21;
  v26 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD8, &unk_2741D6450);
  sub_2741C7A4C();
  if (v18 == 1)
  {
    v22 = v14[13];
  }

  else
  {
    v22 = v14[10];
  }

  v23 = a1 + v22;
  v24 = *(v23 + 8);
  LOBYTE(v27) = *v23;
  v28 = v24;
  v26 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  (*(v7 + 8))(v13, v6);
}

uint64_t sub_274182FB4(uint64_t a1)
{
  v2 = type metadata accessor for WiFiSettingsMainView();
  v3 = (a1 + *(v2 + 36));
  v6 = *v3;
  v8 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD8, &unk_2741D6450);
  sub_2741C7A5C();
  v4 = (a1 + *(v2 + 56));
  v7 = *v4;
  v9 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD20, &qword_2741D62B8);
  sub_2741C7A3C();
  type metadata accessor for AssociationModel();
  sub_274184BE4();
  sub_274186558(&qword_280937E70, type metadata accessor for AssociationModel);
  sub_2741C770C();
}

uint64_t sub_274183104(uint64_t a1, uint64_t a2)
{
  v4 = sub_2741C689C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  result = sub_27416DC08(v7);
  v10 = result;
  if (result != 4)
  {
    v11 = result;
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741E2CA0);
    v21 = v11;
    sub_2741C862C();
    sub_2740CB460(v22, v23);

    v12 = type metadata accessor for WiFiSettingsMainView();
    v13 = (a2 + v12[9]);
    v14 = *v13;
    v15 = *(v13 + 1);
    LOBYTE(v22) = v14;
    v23 = v15;
    v21 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD8, &unk_2741D6450);
    sub_2741C7A4C();
    if (v10 == 1)
    {
      v16 = v12[13];
    }

    else
    {
      v16 = v12[10];
    }

    v17 = (a2 + v16);
    v18 = *v17;
    v19 = *(v17 + 1);
    LOBYTE(v22) = v18;
    v23 = v19;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    return sub_2741C7A4C();
  }

  return result;
}

uint64_t sub_2741832F8(uint64_t a1)
{
  v2 = type metadata accessor for WiFiSettingsMainView();
  v3 = (a1 + *(v2 + 64));
  v9 = *v3;
  v10 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A948, &qword_2741D5300);
  sub_2741C7A3C();
  v4 = (a1 + *(v2 + 72));
  v5 = *v4;
  v6 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADC8, &qword_2741D6440);
  sub_2741C7A3C();
  sub_27409AAC0(v8);

  sub_2741C7C5C();
  sub_2741C6DCC();

  return sub_2741C7A4C();
}

uint64_t sub_27418342C(uint64_t a1)
{
  v2 = sub_2741C7C0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-v9];
  sub_27417D364(&v18[-v9]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    v12 = &qword_280938680;
    v13 = &qword_2741D5140;
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CDF0D8], v2);
    sub_2741C7AFC();
    v12 = &qword_280938710;
    v13 = &qword_2741D5350;
  }

  sub_27409D420(v10, v12, v13);
  v14 = (a1 + *(type metadata accessor for WiFiSettingsMainView() + 44));
  v15 = *v14;
  v16 = *(v14 + 1);
  v18[0] = v15;
  v19 = v16;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  return sub_2741C7A4C();
}

id sub_274183640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a4;
  v88 = sub_2741C699C();
  v12 = *(v88 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v88);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v17 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      if (qword_280937A58 != -1)
      {
        swift_once();
      }

      v19 = &qword_280946C98;
    }

    else
    {
      if (qword_280937A50 != -1)
      {
        swift_once();
      }

      v19 = &qword_280946C88;
    }

    v21 = *v19;
    v20 = v19[1];

    v91 = v21;
    v92 = v22;
    sub_2740A6A74();
    v23 = sub_2741C76AC();
    v80 = v24;
    v81 = v23;
    v79 = v25;
    v82 = v26;
    v83 = a6;
    v86 = a2;
    v87 = v6;
    v85 = a1;
    v84 = a3;
    v78 = a5;
    if (wapiCapability)
    {
      if (qword_280937A70 != -1)
      {
        swift_once();
      }

      v27 = &qword_280946CC8;
    }

    else
    {
      if (qword_280937A68 != -1)
      {
        swift_once();
      }

      v27 = &qword_280946CB8;
    }

    v29 = *v27;
    v28 = v27[1];

    v91 = v29;
    v92 = v30;
    v31 = sub_2741C76AC();
    v90 = v32;
    v34 = v33;
    v72 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v36 = (type metadata accessor for WFButton() - 8);
    v37 = *(*v36 + 72);
    v38 = (*(*v36 + 80) + 32) & ~*(*v36 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2741CC090;
    v40 = v39 + v38;
    v77 = v39;
    sub_2741C698C();
    v41 = *(v12 + 32);
    v42 = v88;
    v41(v40, v15, v88);
    *(v40 + v36[7]) = 1;
    v43 = (v40 + v36[8]);
    *v43 = nullsub_1;
    v43[1] = 0;
    v44 = v40 + v37;
    sub_2741C698C();
    v41(v44, v15, v42);
    v88 = &v71;
    *(v44 + v36[7]) = 3;
    v45 = (v44 + v36[8]);
    v46 = v78;
    *v45 = v89;
    v45[1] = v46;
    LOBYTE(v44) = v34 & 1;
    v47 = MEMORY[0x28223BE20](v46);
    v89 = v70;
    MEMORY[0x28223BE20](v47);
    v76 = v31;
    v48 = v90;
    v70[3] = v72;

    sub_27409861C(v31, v48, v34 & 1);

    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD10, &unk_2741D62A0);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD08, &qword_2741D6298);
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD00, &qword_2741D6290);
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD68, &qword_2741D6318);
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093ACF8, &qword_2741D6288);
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938518, &unk_2741D2090);
    v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093ACF0, &qword_2741D6280);
    v54 = sub_2741849B4();
    v91 = v53;
    v92 = MEMORY[0x277D839B0];
    v93 = v54;
    v94 = MEMORY[0x277D839C8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v56 = sub_274184AC0();
    v91 = v51;
    v92 = v52;
    v93 = OpaqueTypeConformance2;
    v94 = v56;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = type metadata accessor for AssociationModel();
    v59 = sub_274184BE4();
    v60 = sub_274186558(&qword_280937E70, type metadata accessor for AssociationModel);
    v91 = &type metadata for WiFiURLView;
    v92 = v58;
    v93 = v59;
    v94 = v60;
    v61 = swift_getOpaqueTypeConformance2();
    v91 = v49;
    v92 = v50;
    v93 = v57;
    v94 = v61;
    v62 = swift_getOpaqueTypeConformance2();
    v91 = v73;
    v92 = v62;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = sub_2740A5DB0();
    v65 = sub_2740A5EE4();
    v70[1] = v64;
    v70[2] = v65;
    v70[0] = v63;
    LOBYTE(v58) = v79;
    v67 = v80;
    v66 = v81;
    sub_2741C787C();
    v68 = v76;
    v69 = v90;
    sub_2740A6AC8(v76, v90, v44);

    sub_2740A6AC8(v68, v69, v44);

    sub_2740A6AC8(v66, v67, v58 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274183D64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  type metadata accessor for WiFiScanner();
  v8 = swift_allocObject();
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v8 + 16) = 0u;
  swift_beginAccess();
  sub_274186C38(a2, v8 + 16);
  swift_endAccess();
  *(v8 + 56) = a1;
  *(v8 + 64) = &off_28832C658;
  sub_2740A6D94(a2, &v18, &qword_280938E10, &qword_2741D8580);
  if (v19)
  {
    sub_27409D118(&v18, v21);
    v9 = v22;
    v10 = v23;
    v11 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v19 = v9;
    v20 = *(v10 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
    v13 = sub_2741C80DC();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_27409D4E4(&v18, v17);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_27409D118(v17, v14 + 32);
    *(v14 + 72) = 0;

    sub_2740CE980(0, 0, v7, &unk_2741D5960, v14);

    sub_27409D420(a2, &qword_280938E10, &qword_2741D8580);
    __swift_destroy_boxed_opaque_existential_1Tm(&v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    sub_27409D420(a2, &qword_280938E10, &qword_2741D8580);
    sub_27409D420(&v18, &qword_280938E10, &qword_2741D8580);
  }

  return v8;
}

uint64_t sub_274183FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v43 - v12;
  *(a3 + 16) = a1;
  *(a3 + 24) = &off_28832BE38;
  sub_2740A6D94(a2, &v44, &qword_28093A6C8, &unk_2741D6570);
  if (*(&v45 + 1))
  {
    sub_27409D118(&v44, v51);
    v14 = *(a1 + 16);
    swift_unknownObjectRetain();
    v15 = [v14 wifiUIStateFlags];
    v16 = v52;
    v17 = v53;
    __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    (*(v17 + 144))(v15, v16, v17);
    v18 = [*(a1 + 16) currentScanResult];
    if (v18)
    {
      sub_27409D85C(v18, &v44);
    }

    else
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
    }

    v19 = v52;
    v20 = v53;
    __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    (*(v20 + 24))(&v44, v19, v20);
    v21 = [*(a1 + 16) currentScanResult];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 matchingKnownNetworkProfile];
      if (v23)
      {
        sub_274117670(v23, v13);
        v24 = 0;
      }

      else
      {
        v24 = 1;
      }
    }

    else
    {
      v24 = 1;
    }

    v25 = type metadata accessor for KnownNetwork();
    (*(*(v25 - 8) + 56))(v13, v24, 1, v25);
    v26 = v52;
    v27 = v53;
    __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    (*(v27 + 48))(v13, v26, v27);
    v28 = [*(a1 + 16) powerOn];
    v29 = v52;
    v30 = v53;
    __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    (*(v30 + 120))(v28, v29, v30);
    swift_beginAccess();
    sub_2740A6D94(a1 + 48, &v44, &qword_2809395D8, &qword_2741CFF78);
    v31 = *(&v45 + 1);
    sub_27409D420(&v44, &qword_2809395D8, &qword_2741CFF78);
    if (v31)
    {
      v32 = *(a1 + 16);
      v33 = sub_2741BC2FC();
    }

    else
    {
      v33 = 0;
    }

    v34 = v52;
    v35 = v53;
    __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    (*(v35 + 192))(v33 & 1, v34, v35);
    v36 = v52;
    v37 = v53;
    v38 = __swift_project_boxed_opaque_existential_1(v51, v52);
    *(&v45 + 1) = v36;
    *&v46 = *(v37 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v38, v36);
    v40 = sub_2741C80DC();
    (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
    sub_27409D4E4(&v44, v43);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    sub_27409D118(v43, v41 + 32);
    *(v41 + 72) = 2;
    sub_2740CE980(0, 0, v9, &unk_2741D6580, v41);

    sub_27409D420(a2, &qword_28093A6C8, &unk_2741D6570);
    __swift_destroy_boxed_opaque_existential_1Tm(&v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  else
  {
    sub_27409D420(a2, &qword_28093A6C8, &unk_2741D6570);
    sub_27409D420(&v44, &qword_28093A6C8, &unk_2741D6570);
  }

  return a3;
}

uint64_t sub_274184514(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  v22[3] = type metadata accessor for WiFiScanner();
  v22[4] = &off_28832B088;
  v22[0] = a2;
  v14 = MEMORY[0x277D84F90];
  *(a7 + 56) = MEMORY[0x277D84F90];
  *(a7 + 64) = v14;
  *(a7 + 72) = v14;
  *(a7 + 80) = v14;
  *(a7 + 88) = MEMORY[0x277D84FA0];
  *(a7 + 96) = 0;
  *(a7 + 104) = 0x4000000000000000;
  *(a7 + 112) = v14;
  *(a7 + 120) = v14;
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  *(a7 + 168) = qword_280946F10;

  sub_2741C6A3C();
  *(a7 + 128) = a1;
  sub_27409D4E4(v22, a7 + 16);
  *(a7 + 136) = a3;
  *(a7 + 144) = a4;
  *(a7 + 152) = a5;
  *(a7 + 160) = a6;
  *(a7 + 161) = HIBYTE(a6) & 1;
  v15 = *__swift_project_boxed_opaque_existential_1((a7 + 16), *(a7 + 40));
  swift_beginAccess();
  sub_2740A6D94(v15 + 16, &v19, &qword_280938E10, &qword_2741D8580);
  if (v20)
  {
    v16 = sub_27409D118(&v19, v21);
    v17 = MEMORY[0x28223BE20](v16);
    MEMORY[0x28223BE20](v17);

    sub_2741C69EC();
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    sub_2741C69EC();
    sub_2741C69EC();
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    return a7;
  }

  else
  {

    sub_27409D420(&v19, &qword_280938E10, &qword_2741D8580);
    result = sub_2741C863C();
    __break(1u);
  }

  return result;
}

uint64_t sub_274184814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WiFiSettingsMainView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274184878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WiFiSettingsMainView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_27417F0C0(a1, v6, a2);
}

uint64_t sub_2741848FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_27414BBC8(v4);
}

void sub_274184928(uint64_t a1)
{
  v3 = *(type metadata accessor for WiFiSettingsMainView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_274182398(a1, v4);
}

unint64_t sub_2741849B4()
{
  result = qword_28093AD48;
  if (!qword_28093AD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093ACF0, &qword_2741D6280);
    sub_2740A6D24(&qword_28093AD50, &qword_28093AD40, &unk_2741D6308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AD48);
  }

  return result;
}

unint64_t sub_274184AC0()
{
  result = qword_28093AD58;
  if (!qword_28093AD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938518, &unk_2741D2090);
    sub_274186558(&qword_28093AD60, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AD58);
  }

  return result;
}

uint64_t sub_274184B74()
{
  v1 = *(type metadata accessor for WiFiSettingsMainView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_274182FB4(v2);
}

unint64_t sub_274184BE4()
{
  result = qword_28093AD70;
  if (!qword_28093AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AD70);
  }

  return result;
}

uint64_t sub_274184C38(uint64_t a1)
{
  v3 = *(type metadata accessor for WiFiSettingsMainView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_274183104(a1, v4);
}

uint64_t sub_274184CF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938660, &unk_2741CC790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_2741C830C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD18, &qword_2741D62B0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[19];

  return v18(v19, a2, v17);
}

uint64_t sub_274184EE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938660, &unk_2741CC790);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_2741C830C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD18, &qword_2741D62B0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[19];

  return v18(v19, a2, a2, v17);
}

void sub_2741850C4()
{
  sub_2740BAD2C(319, &qword_280938678, &qword_280938680, &qword_2741D5140, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppStateProvider();
    if (v1 <= 0x3F)
    {
      sub_2741C830C();
      if (v2 <= 0x3F)
      {
        sub_27418544C(319, &qword_280938568, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2740BAD2C(319, &qword_28093AD88, &qword_28093ACC8, &unk_2741D6250, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_274118100(319, &qword_280937EC8);
            if (v5 <= 0x3F)
            {
              sub_274118100(319, &qword_28093AD90);
              if (v6 <= 0x3F)
              {
                sub_27418544C(319, &qword_28093AD98, type metadata accessor for AssociationModel, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_27418544C(319, &qword_28093ADA0, type metadata accessor for NetworksListModel, MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    sub_27418544C(319, &qword_28093A918, type metadata accessor for KnownNetworksViewModel, MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      sub_27418544C(319, &qword_28093ADA8, type metadata accessor for UserSettingsModel, MEMORY[0x277CE10B8]);
                      if (v10 <= 0x3F)
                      {
                        sub_2740BAD2C(319, &qword_28093ADB0, &qword_28093A8F0, &qword_2741D5148, MEMORY[0x277CE10B8]);
                        if (v11 <= 0x3F)
                        {
                          sub_27418544C(319, &qword_28093ADB8, MEMORY[0x277CC8C40], MEMORY[0x277CE10B8]);
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for WiFiInterface();
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
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
    }
  }
}

void sub_27418544C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2741854B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD10, &unk_2741D62A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD08, &qword_2741D6298);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD00, &qword_2741D6290);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD68, &qword_2741D6318);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093ACF8, &qword_2741D6288);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938518, &unk_2741D2090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093ACF0, &qword_2741D6280);
  sub_2741849B4();
  swift_getOpaqueTypeConformance2();
  sub_274184AC0();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for AssociationModel();
  sub_274184BE4();
  sub_274186558(&qword_280937E70, type metadata accessor for AssociationModel);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2740A5DB0();
  sub_2740A5EE4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_274185744()
{
  result = qword_28093ADC0;
  if (!qword_28093ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093ADC0);
  }

  return result;
}

uint64_t sub_2741857C0(uint64_t a1)
{
  v4 = *(type metadata accessor for WiFiSettingsMainView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_274182804(a1, v6, v7, v1 + v5);
}

uint64_t sub_2741858B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2741858F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_27415D624(a1, v4, v5, v6);
}

uint64_t sub_2741859A4()
{
  v1 = sub_2741C6EAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for WiFiSettingsMainView();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = (v0 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
    if (!(*(*(v11 - 8) + 48))(v0 + v8, 1, v11))
    {
      v12 = *v10;

      v13 = *(v10 + 1);

      v14 = *(v11 + 32);
      v15 = sub_2741C7C0C();
      (*(*(v15 - 8) + 8))(&v10[v14], v15);
    }
  }

  else
  {
    v16 = *v10;
  }

  v17 = *&v10[v6[5]];

  v18 = *&v10[v6[6] + 8];

  v19 = v6[7];
  v20 = sub_2741C830C();
  (*(*(v20 - 8) + 8))(&v10[v19], v20);
  v21 = v6[8];
  v22 = sub_2741C689C();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(&v10[v21], 1, v22))
  {
    (*(v23 + 8))(&v10[v21], v22);
  }

  v24 = *&v10[v6[9] + 8];

  v25 = *&v10[v6[10] + 8];

  v26 = *&v10[v6[11] + 8];

  v27 = *&v10[v6[12] + 8];

  v28 = *&v10[v6[13] + 8];

  v29 = &v10[v6[14]];
  v30 = *v29;

  v31 = *(v29 + 1);

  v32 = &v10[v6[15]];
  v33 = *v32;

  v34 = *(v32 + 1);

  v35 = &v10[v6[16]];
  v36 = *v35;

  v37 = *(v35 + 1);

  v38 = &v10[v6[17]];
  v39 = *v38;

  v40 = *(v38 + 1);

  v41 = &v10[v6[18]];
  v42 = *v41;

  v43 = *(v41 + 1);

  v44 = &v10[v6[19]];
  v45 = sub_2741C673C();
  (*(*(v45 - 8) + 8))(v44, v45);
  v46 = *&v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD18, &qword_2741D62B0) + 28)];

  v47 = *&v10[v6[20] + 8];

  v48 = *&v10[v6[21]];

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_274185DB8()
{
  v1 = *(sub_2741C6EAC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for WiFiSettingsMainView() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2741804FC();
}

uint64_t sub_274185EF0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WiFiSettingsMainView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_42Tm()
{
  v1 = type metadata accessor for WiFiSettingsMainView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
    if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
    {
      v8 = *v6;

      v9 = *(v6 + 1);

      v10 = *(v7 + 32);
      v11 = sub_2741C7C0C();
      (*(*(v11 - 8) + 8))(&v6[v10], v11);
    }
  }

  else
  {
    v12 = *v6;
  }

  v13 = *&v6[v1[5]];

  v14 = *&v6[v1[6] + 8];

  v15 = v1[7];
  v16 = sub_2741C830C();
  (*(*(v16 - 8) + 8))(&v6[v15], v16);
  v17 = v1[8];
  v18 = sub_2741C689C();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(&v6[v17], 1, v18))
  {
    (*(v19 + 8))(&v6[v17], v18);
  }

  v20 = *&v6[v1[9] + 8];

  v21 = *&v6[v1[10] + 8];

  v22 = *&v6[v1[11] + 8];

  v23 = *&v6[v1[12] + 8];

  v24 = *&v6[v1[13] + 8];

  v25 = &v6[v1[14]];
  v26 = *v25;

  v27 = *(v25 + 1);

  v28 = &v6[v1[15]];
  v29 = *v28;

  v30 = *(v28 + 1);

  v31 = &v6[v1[16]];
  v32 = *v31;

  v33 = *(v31 + 1);

  v34 = &v6[v1[17]];
  v35 = *v34;

  v36 = *(v34 + 1);

  v37 = &v6[v1[18]];
  v38 = *v37;

  v39 = *(v37 + 1);

  v40 = &v6[v1[19]];
  v41 = sub_2741C673C();
  (*(*(v41 - 8) + 8))(v40, v41);
  v42 = *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD18, &qword_2741D62B0) + 28)];

  v43 = *&v6[v1[20] + 8];

  v44 = *&v6[v1[21]];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_274186324(uint64_t a1)
{
  v4 = *(type metadata accessor for WiFiSettingsMainView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_274181C14(a1, v6, v7, v1 + v5);
}

unint64_t sub_274186470()
{
  result = qword_28093AE48;
  if (!qword_28093AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AE40, &qword_2741D6540);
    sub_274186558(&qword_28093AE50, type metadata accessor for KnownNetworksSectionTable);
    sub_2740A6D24(&qword_28093AE58, &qword_28093AE60, &qword_2741D6548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AE48);
  }

  return result;
}

uint64_t sub_274186558(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2741865A0()
{
  result = qword_28093AE78;
  if (!qword_28093AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AE78);
  }

  return result;
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for WiFiSettingsMainView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {
      v7 = *v5;

      v8 = *(v5 + 1);

      v9 = *(v6 + 32);
      v10 = sub_2741C7C0C();
      (*(*(v10 - 8) + 8))(&v5[v9], v10);
    }
  }

  else
  {
    v11 = *v5;
  }

  v12 = *&v5[v1[5]];

  v13 = *&v5[v1[6] + 8];

  v14 = v1[7];
  v15 = sub_2741C830C();
  (*(*(v15 - 8) + 8))(&v5[v14], v15);
  v16 = v1[8];
  v17 = sub_2741C689C();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v5[v16], 1, v17))
  {
    (*(v18 + 8))(&v5[v16], v17);
  }

  v19 = *&v5[v1[9] + 8];

  v20 = *&v5[v1[10] + 8];

  v21 = *&v5[v1[11] + 8];

  v22 = *&v5[v1[12] + 8];

  v23 = *&v5[v1[13] + 8];

  v24 = &v5[v1[14]];
  v25 = *v24;

  v26 = *(v24 + 1);

  v27 = &v5[v1[15]];
  v28 = *v27;

  v29 = *(v27 + 1);

  v30 = &v5[v1[16]];
  v31 = *v30;

  v32 = *(v30 + 1);

  v33 = &v5[v1[17]];
  v34 = *v33;

  v35 = *(v33 + 1);

  v36 = &v5[v1[18]];
  v37 = *v36;

  v38 = *(v36 + 1);

  v39 = &v5[v1[19]];
  v40 = sub_2741C673C();
  (*(*(v40 - 8) + 8))(v39, v40);
  v41 = *&v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD18, &qword_2741D62B0) + 28)];

  v42 = *&v5[v1[20] + 8];

  v43 = *&v5[v1[21]];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_27418698C()
{
  v0 = *(*(type metadata accessor for WiFiSettingsMainView() - 8) + 80);

  return sub_27418028C();
}

unint64_t sub_2741869FC()
{
  result = qword_28093AE90;
  if (!qword_28093AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AE90);
  }

  return result;
}

uint64_t sub_274186B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_274186B68(uint64_t a1)
{
  v2 = type metadata accessor for KnownNetworksSectionTable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274186BC4()
{
  result = qword_28093AEA0;
  if (!qword_28093AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AEA0);
  }

  return result;
}

uint64_t sub_274186C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E10, &qword_2741D8580);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_274186CAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_274104E24(a1, v4, v5, v1 + 32, v6);
}

uint64_t objectdestroy_77Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

void sub_274186E08(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2741C848C())
  {
    v5 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2743E6600](v5, a1);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = v6;
      MEMORY[0x2743E6040]();
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2741C800C();
      }

      sub_2741C802C();

      ++v5;
      if (v7 == i)
      {
        return;
      }
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v6 = *(a1 + 8 * v5 + 32);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_274186F30(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x282200958](v3, v4);
  }

  else
  {
    sub_2740BA268(0, &qword_280937E60, 0x277D02B58);
    **(*(v3 + 64) + 40) = sub_2741C7FEC();

    return MEMORY[0x282200950](v3);
  }
}

uint64_t sub_274187020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 153) = a4;
  *(v5 + 200) = a3;
  *(v5 + 208) = v4;
  *(v5 + 184) = a1;
  *(v5 + 192) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20) - 8) + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  v7 = sub_2741C6AFC();
  *(v5 + 224) = v7;
  v8 = *(v7 - 8);
  *(v5 + 232) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_274187120, 0, 0);
}

uint64_t sub_274187120()
{
  v1 = *(v0 + 208);
  v2 = swift_allocObject();
  *(v0 + 248) = v2;
  *(v2 + 16) = 0;
  if (!*(v1 + 32))
  {
    goto LABEL_4;
  }

  v3 = "directScan(for:on:)";
  if (qword_280937360 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v6 = *(v0 + 224);
    v7 = __swift_project_value_buffer(v6, qword_280945DD8);
    (*(v5 + 16))(v4, v7, v6);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x1000000000000035, v3 | 0x8000000000000000);
    (*(v5 + 8))(v4, v6);
    sub_27418EA94(8u);
LABEL_4:
    v8 = *(v0 + 153);
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = sub_2740CE580(0);
    *(v0 + 256) = v11;
    [v11 setMinimumRSSI_];
    v12 = sub_2741C7E3C();
    [v11 setSSID_];

    if (v8)
    {
      break;
    }

    v65 = v11;
    v15 = *(v0 + 208);
    v16 = *(v0 + 216);
    v17 = swift_allocObject();
    *(v0 + 264) = v17;
    *(v17 + 16) = 1;
    sub_2741C80BC();
    v18 = sub_2741C80DC();
    v61 = *(*(v18 - 8) + 56);
    v62 = v18;
    v61(v16, 0, 1);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = 0x403E000000000000;
    v19[5] = v2;
    v64 = v2;

    v63 = sub_2741A771C(0, 0, v16, &unk_2741D6620, v19);
    *(v0 + 272) = v63;
    v20 = [*(v15 + 16) supportedChannelsWithCountryCode_];
    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v22 = v20;
      sub_2740BA268(0, &qword_280938D00, 0x277D02B00);
      v23 = sub_2741C7FEC();
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v67 = v21;
    if (v23 >> 62)
    {
      v24 = sub_2741C848C();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = MEMORY[0x277D84F90];
    if (!v24)
    {
      v37 = MEMORY[0x277D84F90];
LABEL_26:

      if ((v37 & 0x8000000000000000) == 0 && (v37 & 0x4000000000000000) == 0)
      {
        if (*(v37 + 16))
        {
          goto LABEL_29;
        }

LABEL_38:

LABEL_39:
        v48 = *(v0 + 208);
        v47 = *(v0 + 216);
        v49 = *(v0 + 184);
        v50 = *(v0 + 192);
        sub_2740BA268(0, &qword_280938D00, 0x277D02B00);
        v51 = sub_2741C7FCC();

        [v65 setChannels_];

        v52 = swift_allocObject();
        *(v0 + 280) = v52;
        *(v52 + 16) = v25;
        sub_2741C80BC();
        (v61)(v47, 0, 1, v62);
        v53 = swift_allocObject();
        v53[2] = 0;
        v53[3] = 0;
        v53[4] = v17;
        v53[5] = v49;
        v53[6] = v50;
        v53[7] = v52;
        v53[8] = v48;
        v53[9] = v65;
        v53[10] = v63;
        v53[11] = v64;
        v53[12] = 0x3FF0000000000000;

        v54 = v65;

        v55 = sub_2741A79C8(0, 0, v47, &unk_2741D6630, v53);
        *(v0 + 288) = v55;
        v56 = *(MEMORY[0x277D857D0] + 4);
        v57 = swift_task_alloc();
        *(v0 + 296) = v57;
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AED8, &unk_2741D7EB0);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
        *(v0 + 304) = v41;
        *v57 = v0;
        v57[1] = sub_2741878AC;
        v42 = MEMORY[0x277D84950];
        v38 = v0 + 144;
        v39 = v55;
        v40 = v58;

        return MEMORY[0x282200440](v38, v39, v40, v41, v42);
      }

      if (!sub_2741C848C())
      {
        goto LABEL_38;
      }

LABEL_29:

      if ((v37 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x2743E6600](0, v37);
      }

      else
      {
        if (!*(v37 + 16))
        {
          __break(1u);
          return MEMORY[0x282200440](v38, v39, v40, v41, v42);
        }

        v43 = *(v37 + 32);
      }

      v44 = v43;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938980, &qword_2741CCB70);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_2741CCB60;
      *(v45 + 32) = v44;
      goto LABEL_39;
    }

    v60 = v17;
    v26 = 0;
    v27 = v23 & 0xC000000000000001;
    v3 = v23 & 0xFFFFFFFFFFFFFF8;
    v2 = &unk_279ECC000;
    v66 = v23 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v27)
      {
        v28 = MEMORY[0x2743E6600](v26, v23);
      }

      else
      {
        if (v26 >= *(v3 + 16))
        {
          goto LABEL_34;
        }

        v28 = *(v23 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v31 = *(v0 + 200);
      if ([v28 *(v2 + 207)] == v31)
      {
        sub_2741C859C();
        v32 = v27;
        v33 = v24;
        v34 = v23;
        v35 = v2;
        v36 = *(v67 + 16);
        sub_2741C85BC();
        v2 = v35;
        v23 = v34;
        v24 = v33;
        v27 = v32;
        v3 = v66;
        sub_2741C85CC();
        sub_2741C85AC();
      }

      else
      {
      }

      ++v26;
      if (v30 == v24)
      {
        v37 = v67;
        v17 = v60;
        v25 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
    v46 = *(v0 + 208);
  }

  v13 = *(*(v0 + 208) + 16);
  *(v0 + 312) = v13;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_274187B18;
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E88, qword_2741CE258);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_274186F30;
  *(v0 + 104) = &block_descriptor_28_0;
  *(v0 + 112) = v14;
  [v13 performScanWithParameters:v11 reply:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2741878AC()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2741879A8, 0, 0);
}

uint64_t sub_2741879A8()
{
  v1 = *(v0 + 144);
  if (*(v0 + 152))
  {
    v2 = *(v0 + 304);
    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    *(v0 + 176) = v1;
    swift_willThrowTypedImpl();

    v9 = *(v0 + 240);
    v10 = *(v0 + 216);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);
    v17 = *(v0 + 248);
    v18 = *(v0 + 256);

    v19 = *(v0 + 240);
    v20 = *(v0 + 216);

    v21 = *(v0 + 8);

    return v21(v1);
  }
}

uint64_t sub_274187B18()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_274187E0C;
  }

  else
  {
    v3 = sub_274187C28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_274187C28()
{
  v1 = *(v0 + 160);

  sub_2741C856C();

  if (v1 >> 62)
  {
    v2 = sub_2741C848C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 168) = v2;
  v3 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v3);

  MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741E2FC0);
  sub_2740CB218(0x20646E756F46, 0xE600000000000000, 0xD000000000000013, 0x80000002741E2FE0);

  if (v1 >> 62)
  {
    result = sub_2741C848C();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v0 + 256);

    v6 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2743E6600](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v1 + 32);
  }

  v6 = v5;
  v7 = *(v0 + 256);

LABEL_11:
  v9 = *(v0 + 248);

  v10 = *(v0 + 240);
  v11 = *(v0 + 216);

  v12 = *(v0 + 8);

  return v12(v6);
}

uint64_t sub_274187E0C()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[31];
  v4 = v0[32];
  swift_willThrow();

  sub_2740D2F60();
  swift_allocError();
  swift_willThrow();

  v5 = v0[30];
  v6 = v0[27];

  v7 = v0[1];

  return v7();
}

uint64_t sub_274187EDC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEA8, &qword_2741D65C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-v11];
  [*(v3 + 16) activate];
  v13 = *(v3 + 16);
  type metadata accessor for TriBandInterface();
  v14 = swift_allocObject();
  v15 = sub_274178210(MEMORY[0x277D84F90]);
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  v16 = v13;
  v17 = sub_2740D5374();
  v18 = sub_2740D5BBC(v17);

  v19 = *(v14 + 24);
  *(v14 + 24) = v18;

  v22 = v4;
  v23 = v14;
  v24 = a2;
  v25 = a3;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6A8, &qword_2741D4638);
  (*(v9 + 104))(v12, *MEMORY[0x277D858A0], v8);
  sub_2741C81BC();
}

uint64_t sub_27418809C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v43 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v40 - v18;
  v20 = sub_2741C6AFC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 32))
  {

    return sub_2740CB218(0xD000000000000043, 0x80000002741E2D90, 0x746977286E616373, 0xEB00000000293A68);
  }

  else
  {
    v40 = v11;
    v41 = a1;
    v42 = a3;
    if (qword_280937360 != -1)
    {
      v39 = v23;
      swift_once();
      v23 = v39;
    }

    v27 = v23;
    v28 = __swift_project_value_buffer(v23, qword_280945DD8);
    (*(v21 + 16))(v25, v28, v27);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x100000000000001BLL, 0x80000002741E2D70);
    (*(v21 + 8))(v25, v27);
    sub_2741C80BC();
    v29 = sub_2741C80DC();
    (*(*(v29 - 8) + 56))(v19, 0, 1, v29);
    v30 = v40;
    (*(v12 + 16))(v15, v41, v40);
    v31 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v32 = (v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    (*(v12 + 32))(v34 + v31, v15, v30);
    *(v34 + v32) = a2;
    v35 = v43;
    *(v34 + v33) = v42;
    v36 = v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v36 = a5;
    *(v36 + 8) = a6;
    *(v36 + 16) = v35;

    v37 = sub_2740CE980(0, 0, v19, &unk_2741D65E0, v34);
    v38 = *(a2 + 32);
    *(a2 + 32) = v37;
  }
}

uint64_t sub_274188494(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 312) = a1;
  *(v7 + 296) = a6;
  *(v7 + 304) = a7;
  *(v7 + 288) = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB8, &qword_2741D65E8) - 8) + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v9 = sub_2741C6AFC();
  *(v7 + 328) = v9;
  v10 = *(v9 - 8);
  *(v7 + 336) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  v12 = sub_2741C85FC();
  *(v7 + 352) = v12;
  v13 = *(v12 - 8);
  *(v7 + 360) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 368) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEC0, &qword_2741D65F0);
  *(v7 + 376) = v15;
  v16 = *(v15 - 8);
  *(v7 + 384) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27418867C, 0, 0);
}

uint64_t sub_27418867C()
{
  *(v0 + 424) = sub_2741C80AC();
  *(v0 + 432) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274188714, v2, v1);
}

uint64_t sub_274188714()
{
  v1 = *(v0 + 432);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_2741887AC, 0, 0);
}

uint64_t sub_2741887AC()
{
  v1 = *(v0 + 424);
  *(v0 + 440) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274188838, v3, v2);
}

uint64_t sub_274188838()
{
  v1 = *(v0 + 440);

  *(v0 + 448) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2741888B4, 0, 0);
}

uint64_t sub_2741888B4()
{
  v1 = *(v0 + 424);
  *(v0 + 456) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274188940, v3, v2);
}

uint64_t sub_274188940()
{
  v2 = v0[56];
  v1 = v0[57];

  sub_2741B8FB8(2);

  v3 = swift_task_alloc();
  v0[58] = v3;
  *v3 = v0;
  v3[1] = sub_2741889F4;
  v4 = v0[38];

  return sub_27418B81C((v0 + 2), 0, v4);
}

uint64_t sub_2741889F4()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_27418A1C4;
  }

  else
  {
    v3 = sub_274188B08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_274188B08()
{
  v1 = v0[52];
  v2 = v0[47];
  v3 = v0[48];
  v4 = v0[36];
  v0[60] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
  sub_2741C817C();
  v5 = *(v3 + 8);
  v0[61] = v5;
  v0[62] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  v0[63] = v6;
  *v6 = v0;
  v6[1] = sub_274188C04;
  v7 = v0[38];

  return sub_27418B81C((v0 + 7), 1, v7);
}

uint64_t sub_274188C04()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_27418A758;
  }

  else
  {
    v3 = sub_274188D18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_274188D18()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  v4 = v0[51];
  v5 = v0[47];
  v6 = v0[36];
  sub_2741C817C();
  v2(v4, v5);
  v7 = swift_task_alloc();
  v0[65] = v7;
  *v7 = v0;
  v7[1] = sub_274188DF0;
  v8 = v0[38];

  return sub_27418B81C((v0 + 12), 2, v8);
}

uint64_t sub_274188DF0()
{
  v2 = *(*v1 + 520);
  v5 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = sub_27418ACEC;
  }

  else
  {
    v3 = sub_274188F04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_274188F04()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  v4 = v0[50];
  v5 = v0[47];
  v6 = v0[36];
  v7 = v0[37];
  sub_2741C817C();
  v2(v4, v5);
  v8 = sub_2741980C8();
  v0[67] = v8;
  v9 = swift_task_alloc();
  v0[68] = v9;
  *v9 = v0;
  v9[1] = sub_274188FEC;
  v10 = v0[37];

  return sub_27418C020((v0 + 17), v8);
}

uint64_t sub_274188FEC()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v7 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = sub_27418B280;
  }

  else
  {
    v5 = *(v2 + 536);

    v4 = sub_274189108;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_274189108()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  v4 = v0[53];
  v5 = v0[49];
  v6 = v0[47];
  v7 = v0[36];
  sub_2741C817C();
  v2(v5, v6);
  v0[70] = sub_2741C809C();
  v9 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741891D0, v9, v8);
}

uint64_t sub_2741891D0()
{
  v1 = *(v0 + 560);

  return MEMORY[0x2822009F8](sub_274189238, 0, 0);
}

uint64_t sub_274189238()
{
  v1 = *(v0 + 424);
  *(v0 + 568) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741892C4, v3, v2);
}

uint64_t sub_2741892C4()
{
  v1 = *(v0 + 568);

  *(v0 + 576) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_274189340, 0, 0);
}

uint64_t sub_274189340()
{
  v1 = *(v0 + 424);
  *(v0 + 584) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741893CC, v3, v2);
}

uint64_t sub_2741893CC()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);

  sub_2741B8FB8(4);

  return MEMORY[0x2822009F8](sub_274189448, 0, 0);
}

uint64_t sub_274189448()
{
  v1 = v0[46];
  v2 = v0[39];
  v3 = sub_2741C882C();
  v5 = v4;
  sub_2741C874C();
  v6 = swift_task_alloc();
  v0[74] = v6;
  *v6 = v0;
  v6[1] = sub_274189524;
  v7 = v0[46];

  return sub_2741B724C(v3, v5, 0, 0, 1);
}

uint64_t sub_274189524()
{
  v2 = *(*v1 + 592);
  v3 = *(*v1 + 368);
  v4 = *(*v1 + 360);
  v5 = *(*v1 + 352);
  v8 = *v1;
  *(*v1 + 600) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2741897B8;
  }

  else
  {
    v6 = sub_274189694;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_274189694()
{
  if (sub_2741C816C())
  {
    v2 = v0[51];
    v1 = v0[52];
    v4 = v0[49];
    v3 = v0[50];
    v5 = v0[46];
    v6 = v0[43];
    v7 = v0[40];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[53];
    v0[54] = sub_2741C809C();
    v12 = sub_2741C805C();

    return MEMORY[0x2822009F8](sub_274188714, v12, v11);
  }
}

uint64_t sub_2741897B8()
{
  v1 = *(v0 + 600);
  *(v0 + 240) = v1;
  *(v0 + 608) = v1;
  v2 = v1;
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2740BA268(0, &qword_280939158, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 248);
    if ([v3 code] == 82)
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 336);
      v4 = *(v0 + 344);
      v6 = *(v0 + 328);
      v7 = *(v0 + 296);
      v8 = __swift_project_value_buffer(v6, qword_280945DD8);
      (*(v5 + 16))(v4, v8, v6);
      sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000021, 0x80000002741E2E70);
      (*(v5 + 8))(v4, v6);
      sub_27418EA94(0x10u);
    }

    else
    {
      v14 = *(v0 + 320);
      *(v0 + 272) = v3;
      v15 = sub_2741C808C();
      v16 = v3;
      v17 = swift_dynamicCast();
      v18 = *(*(v15 - 8) + 56);
      v19 = *(v0 + 320);
      if (v17)
      {
        v18(*(v0 + 320), 0, 1, v15);
        sub_27418F42C(v19);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v21 = *(v0 + 336);
        v20 = *(v0 + 344);
        v22 = *(v0 + 328);
        v23 = __swift_project_value_buffer(v22, qword_280945DD8);
        (*(v21 + 16))(v20, v23, v22);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000032, 0x80000002741E2E30);

        (*(v21 + 8))(v20, v22);
      }

      else
      {
        v18(*(v0 + 320), 1, 1, v15);
        sub_27418F42C(v19);
        *(v0 + 224) = 0;
        *(v0 + 232) = 0xE000000000000000;
        sub_2741C856C();
        v24 = *(v0 + 232);

        *(v0 + 208) = 0xD00000000000001BLL;
        *(v0 + 216) = 0x80000002741E2E10;
        v25 = [v16 description];
        v26 = sub_2741C7E7C();
        v28 = v27;

        MEMORY[0x2743E5FB0](v26, v28);

        MEMORY[0x2743E5FB0](39, 0xE100000000000000);
        v29 = *(v0 + 208);
        v30 = *(v0 + 216);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v31 = *(v0 + 336);
        v32 = *(v0 + 344);
        v33 = *(v0 + 328);
        v35 = *(v0 + 288);
        v34 = *(v0 + 296);
        v36 = __swift_project_value_buffer(v33, qword_280945DD8);
        (*(v31 + 16))(v32, v36, v33);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v29, v30);

        (*(v31 + 8))(v32, v33);
        sub_27418EA94(0x40u);
        *(v0 + 280) = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
        sub_2741C818C();
      }
    }

    if (sub_2741C816C())
    {
      v38 = *(v0 + 408);
      v37 = *(v0 + 416);
      v40 = *(v0 + 392);
      v39 = *(v0 + 400);
      v41 = *(v0 + 368);
      v42 = *(v0 + 344);
      v43 = *(v0 + 320);

      v44 = *(v0 + 8);

      return v44();
    }

    v46 = *(v0 + 424);
    *(v0 + 432) = sub_2741C809C();
    v10 = sub_2741C805C();
    v12 = v47;
    v13 = sub_274188714;
  }

  else
  {
    v9 = *(v0 + 424);

    *(v0 + 624) = sub_2741C809C();
    v10 = sub_2741C805C();
    v12 = v11;
    v13 = sub_274189D4C;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_274189D4C()
{
  v1 = *(v0 + 624);

  return MEMORY[0x2822009F8](sub_274189DB4, 0, 0);
}

uint64_t sub_274189DB4()
{
  v1 = *(v0 + 424);
  *(v0 + 632) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274189E40, v3, v2);
}

uint64_t sub_274189E40()
{
  v1 = *(v0 + 632);

  *(v0 + 640) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_274189EBC, 0, 0);
}

uint64_t sub_274189EBC()
{
  v1 = *(v0 + 424);
  *(v0 + 648) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274189F48, v3, v2);
}

uint64_t sub_274189F48()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);

  sub_2741B8FB8(32);

  return MEMORY[0x2822009F8](sub_274189FC4, 0, 0);
}

uint64_t sub_274189FC4()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[36];
  v0[24] = 0;
  v0[25] = 0xE000000000000000;
  sub_2741C856C();
  v4 = v0[25];
  v0[22] = v0[24];
  v0[23] = v4;
  MEMORY[0x2743E5FB0](0xD000000000000027, 0x80000002741E2DE0);
  v0[32] = v2;
  sub_2741C862C();
  MEMORY[0x2743E5FB0](3025191, 0xE300000000000000);
  sub_2740CB218(v0[22], v0[23], 0x746977286E616373, 0xEB00000000293A68);

  v0[33] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
  sub_2741C818C();
  if (sub_2741C816C())
  {
    v6 = v0[51];
    v5 = v0[52];
    v8 = v0[49];
    v7 = v0[50];
    v9 = v0[46];
    v10 = v0[43];
    v11 = v0[40];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[53];
    v0[54] = sub_2741C809C();
    v16 = sub_2741C805C();

    return MEMORY[0x2822009F8](sub_274188714, v16, v15);
  }
}

uint64_t sub_27418A1C4()
{
  v1 = *(v0 + 472);
  *(v0 + 240) = v1;
  *(v0 + 608) = v1;
  v2 = v1;
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2740BA268(0, &qword_280939158, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 248);
    if ([v3 code] == 82)
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 336);
      v4 = *(v0 + 344);
      v6 = *(v0 + 328);
      v7 = *(v0 + 296);
      v8 = __swift_project_value_buffer(v6, qword_280945DD8);
      (*(v5 + 16))(v4, v8, v6);
      sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000021, 0x80000002741E2E70);
      (*(v5 + 8))(v4, v6);
      sub_27418EA94(0x10u);
    }

    else
    {
      v14 = *(v0 + 320);
      *(v0 + 272) = v3;
      v15 = sub_2741C808C();
      v16 = v3;
      v17 = swift_dynamicCast();
      v18 = *(*(v15 - 8) + 56);
      v19 = *(v0 + 320);
      if (v17)
      {
        v18(*(v0 + 320), 0, 1, v15);
        sub_27418F42C(v19);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v21 = *(v0 + 336);
        v20 = *(v0 + 344);
        v22 = *(v0 + 328);
        v23 = __swift_project_value_buffer(v22, qword_280945DD8);
        (*(v21 + 16))(v20, v23, v22);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000032, 0x80000002741E2E30);

        (*(v21 + 8))(v20, v22);
      }

      else
      {
        v18(*(v0 + 320), 1, 1, v15);
        sub_27418F42C(v19);
        *(v0 + 224) = 0;
        *(v0 + 232) = 0xE000000000000000;
        sub_2741C856C();
        v24 = *(v0 + 232);

        *(v0 + 208) = 0xD00000000000001BLL;
        *(v0 + 216) = 0x80000002741E2E10;
        v25 = [v16 description];
        v26 = sub_2741C7E7C();
        v28 = v27;

        MEMORY[0x2743E5FB0](v26, v28);

        MEMORY[0x2743E5FB0](39, 0xE100000000000000);
        v29 = *(v0 + 208);
        v30 = *(v0 + 216);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v31 = *(v0 + 336);
        v32 = *(v0 + 344);
        v33 = *(v0 + 328);
        v35 = *(v0 + 288);
        v34 = *(v0 + 296);
        v36 = __swift_project_value_buffer(v33, qword_280945DD8);
        (*(v31 + 16))(v32, v36, v33);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v29, v30);

        (*(v31 + 8))(v32, v33);
        sub_27418EA94(0x40u);
        *(v0 + 280) = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
        sub_2741C818C();
      }
    }

    if (sub_2741C816C())
    {
      v38 = *(v0 + 408);
      v37 = *(v0 + 416);
      v40 = *(v0 + 392);
      v39 = *(v0 + 400);
      v41 = *(v0 + 368);
      v42 = *(v0 + 344);
      v43 = *(v0 + 320);

      v44 = *(v0 + 8);

      return v44();
    }

    v46 = *(v0 + 424);
    *(v0 + 432) = sub_2741C809C();
    v10 = sub_2741C805C();
    v12 = v47;
    v13 = sub_274188714;
  }

  else
  {
    v9 = *(v0 + 424);

    *(v0 + 624) = sub_2741C809C();
    v10 = sub_2741C805C();
    v12 = v11;
    v13 = sub_274189D4C;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_27418A758()
{
  v1 = *(v0 + 512);
  *(v0 + 240) = v1;
  *(v0 + 608) = v1;
  v2 = v1;
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2740BA268(0, &qword_280939158, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 248);
    if ([v3 code] == 82)
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 336);
      v4 = *(v0 + 344);
      v6 = *(v0 + 328);
      v7 = *(v0 + 296);
      v8 = __swift_project_value_buffer(v6, qword_280945DD8);
      (*(v5 + 16))(v4, v8, v6);
      sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000021, 0x80000002741E2E70);
      (*(v5 + 8))(v4, v6);
      sub_27418EA94(0x10u);
    }

    else
    {
      v14 = *(v0 + 320);
      *(v0 + 272) = v3;
      v15 = sub_2741C808C();
      v16 = v3;
      v17 = swift_dynamicCast();
      v18 = *(*(v15 - 8) + 56);
      v19 = *(v0 + 320);
      if (v17)
      {
        v18(*(v0 + 320), 0, 1, v15);
        sub_27418F42C(v19);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v21 = *(v0 + 336);
        v20 = *(v0 + 344);
        v22 = *(v0 + 328);
        v23 = __swift_project_value_buffer(v22, qword_280945DD8);
        (*(v21 + 16))(v20, v23, v22);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000032, 0x80000002741E2E30);

        (*(v21 + 8))(v20, v22);
      }

      else
      {
        v18(*(v0 + 320), 1, 1, v15);
        sub_27418F42C(v19);
        *(v0 + 224) = 0;
        *(v0 + 232) = 0xE000000000000000;
        sub_2741C856C();
        v24 = *(v0 + 232);

        *(v0 + 208) = 0xD00000000000001BLL;
        *(v0 + 216) = 0x80000002741E2E10;
        v25 = [v16 description];
        v26 = sub_2741C7E7C();
        v28 = v27;

        MEMORY[0x2743E5FB0](v26, v28);

        MEMORY[0x2743E5FB0](39, 0xE100000000000000);
        v29 = *(v0 + 208);
        v30 = *(v0 + 216);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v31 = *(v0 + 336);
        v32 = *(v0 + 344);
        v33 = *(v0 + 328);
        v35 = *(v0 + 288);
        v34 = *(v0 + 296);
        v36 = __swift_project_value_buffer(v33, qword_280945DD8);
        (*(v31 + 16))(v32, v36, v33);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v29, v30);

        (*(v31 + 8))(v32, v33);
        sub_27418EA94(0x40u);
        *(v0 + 280) = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
        sub_2741C818C();
      }
    }

    if (sub_2741C816C())
    {
      v38 = *(v0 + 408);
      v37 = *(v0 + 416);
      v40 = *(v0 + 392);
      v39 = *(v0 + 400);
      v41 = *(v0 + 368);
      v42 = *(v0 + 344);
      v43 = *(v0 + 320);

      v44 = *(v0 + 8);

      return v44();
    }

    v46 = *(v0 + 424);
    *(v0 + 432) = sub_2741C809C();
    v10 = sub_2741C805C();
    v12 = v47;
    v13 = sub_274188714;
  }

  else
  {
    v9 = *(v0 + 424);

    *(v0 + 624) = sub_2741C809C();
    v10 = sub_2741C805C();
    v12 = v11;
    v13 = sub_274189D4C;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_27418ACEC()
{
  v1 = *(v0 + 528);
  *(v0 + 240) = v1;
  *(v0 + 608) = v1;
  v2 = v1;
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2740BA268(0, &qword_280939158, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 248);
    if ([v3 code] == 82)
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 336);
      v4 = *(v0 + 344);
      v6 = *(v0 + 328);
      v7 = *(v0 + 296);
      v8 = __swift_project_value_buffer(v6, qword_280945DD8);
      (*(v5 + 16))(v4, v8, v6);
      sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000021, 0x80000002741E2E70);
      (*(v5 + 8))(v4, v6);
      sub_27418EA94(0x10u);
    }

    else
    {
      v14 = *(v0 + 320);
      *(v0 + 272) = v3;
      v15 = sub_2741C808C();
      v16 = v3;
      v17 = swift_dynamicCast();
      v18 = *(*(v15 - 8) + 56);
      v19 = *(v0 + 320);
      if (v17)
      {
        v18(*(v0 + 320), 0, 1, v15);
        sub_27418F42C(v19);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v21 = *(v0 + 336);
        v20 = *(v0 + 344);
        v22 = *(v0 + 328);
        v23 = __swift_project_value_buffer(v22, qword_280945DD8);
        (*(v21 + 16))(v20, v23, v22);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000032, 0x80000002741E2E30);

        (*(v21 + 8))(v20, v22);
      }

      else
      {
        v18(*(v0 + 320), 1, 1, v15);
        sub_27418F42C(v19);
        *(v0 + 224) = 0;
        *(v0 + 232) = 0xE000000000000000;
        sub_2741C856C();
        v24 = *(v0 + 232);

        *(v0 + 208) = 0xD00000000000001BLL;
        *(v0 + 216) = 0x80000002741E2E10;
        v25 = [v16 description];
        v26 = sub_2741C7E7C();
        v28 = v27;

        MEMORY[0x2743E5FB0](v26, v28);

        MEMORY[0x2743E5FB0](39, 0xE100000000000000);
        v29 = *(v0 + 208);
        v30 = *(v0 + 216);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v31 = *(v0 + 336);
        v32 = *(v0 + 344);
        v33 = *(v0 + 328);
        v35 = *(v0 + 288);
        v34 = *(v0 + 296);
        v36 = __swift_project_value_buffer(v33, qword_280945DD8);
        (*(v31 + 16))(v32, v36, v33);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v29, v30);

        (*(v31 + 8))(v32, v33);
        sub_27418EA94(0x40u);
        *(v0 + 280) = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
        sub_2741C818C();
      }
    }

    if (sub_2741C816C())
    {
      v38 = *(v0 + 408);
      v37 = *(v0 + 416);
      v40 = *(v0 + 392);
      v39 = *(v0 + 400);
      v41 = *(v0 + 368);
      v42 = *(v0 + 344);
      v43 = *(v0 + 320);

      v44 = *(v0 + 8);

      return v44();
    }

    v46 = *(v0 + 424);
    *(v0 + 432) = sub_2741C809C();
    v10 = sub_2741C805C();
    v12 = v47;
    v13 = sub_274188714;
  }

  else
  {
    v9 = *(v0 + 424);

    *(v0 + 624) = sub_2741C809C();
    v10 = sub_2741C805C();
    v12 = v11;
    v13 = sub_274189D4C;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_27418B280()
{
  v1 = *(v0 + 536);

  v2 = *(v0 + 552);
  *(v0 + 240) = v2;
  *(v0 + 608) = v2;
  v3 = v2;
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2740BA268(0, &qword_280939158, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 248);
    if ([v4 code] == 82)
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 336);
      v5 = *(v0 + 344);
      v7 = *(v0 + 328);
      v8 = *(v0 + 296);
      v9 = __swift_project_value_buffer(v7, qword_280945DD8);
      (*(v6 + 16))(v5, v9, v7);
      sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000021, 0x80000002741E2E70);
      (*(v6 + 8))(v5, v7);
      sub_27418EA94(0x10u);
    }

    else
    {
      v15 = *(v0 + 320);
      *(v0 + 272) = v4;
      v16 = sub_2741C808C();
      v17 = v4;
      v18 = swift_dynamicCast();
      v19 = *(*(v16 - 8) + 56);
      v20 = *(v0 + 320);
      if (v18)
      {
        v19(*(v0 + 320), 0, 1, v16);
        sub_27418F42C(v20);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v22 = *(v0 + 336);
        v21 = *(v0 + 344);
        v23 = *(v0 + 328);
        v24 = __swift_project_value_buffer(v23, qword_280945DD8);
        (*(v22 + 16))(v21, v24, v23);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000032, 0x80000002741E2E30);

        (*(v22 + 8))(v21, v23);
      }

      else
      {
        v19(*(v0 + 320), 1, 1, v16);
        sub_27418F42C(v20);
        *(v0 + 224) = 0;
        *(v0 + 232) = 0xE000000000000000;
        sub_2741C856C();
        v25 = *(v0 + 232);

        *(v0 + 208) = 0xD00000000000001BLL;
        *(v0 + 216) = 0x80000002741E2E10;
        v26 = [v17 description];
        v27 = sub_2741C7E7C();
        v29 = v28;

        MEMORY[0x2743E5FB0](v27, v29);

        MEMORY[0x2743E5FB0](39, 0xE100000000000000);
        v30 = *(v0 + 208);
        v31 = *(v0 + 216);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v32 = *(v0 + 336);
        v33 = *(v0 + 344);
        v34 = *(v0 + 328);
        v36 = *(v0 + 288);
        v35 = *(v0 + 296);
        v37 = __swift_project_value_buffer(v34, qword_280945DD8);
        (*(v32 + 16))(v33, v37, v34);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v30, v31);

        (*(v32 + 8))(v33, v34);
        sub_27418EA94(0x40u);
        *(v0 + 280) = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
        sub_2741C818C();
      }
    }

    if (sub_2741C816C())
    {
      v39 = *(v0 + 408);
      v38 = *(v0 + 416);
      v41 = *(v0 + 392);
      v40 = *(v0 + 400);
      v42 = *(v0 + 368);
      v43 = *(v0 + 344);
      v44 = *(v0 + 320);

      v45 = *(v0 + 8);

      return v45();
    }

    v47 = *(v0 + 424);
    *(v0 + 432) = sub_2741C809C();
    v11 = sub_2741C805C();
    v13 = v48;
    v14 = sub_274188714;
  }

  else
  {
    v10 = *(v0 + 424);

    *(v0 + 624) = sub_2741C809C();
    v11 = sub_2741C805C();
    v13 = v12;
    v14 = sub_274189D4C;
  }

  return MEMORY[0x2822009F8](v14, v11, v13);
}

uint64_t sub_27418B81C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 152) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a3;
  v4 = sub_2741C85DC();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  v7 = sub_2741C85FC();
  *(v3 + 80) = v7;
  v8 = *(v7 - 8);
  *(v3 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27418B948, 0, 0);
}

uint64_t sub_27418B948()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  sub_2741C85EC();

  return MEMORY[0x2822009F8](sub_27418B9C0, 0, 0);
}

uint64_t sub_27418B9C0()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 104) = sub_27418F9B0(&qword_28093AEC8, MEMORY[0x277D85928]);
  sub_2741C872C();
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_27418BAB0;
  v5 = *(v0 + 40);
  v6 = *(v0 + 152);

  return sub_2740D4CC4(v6);
}

uint64_t sub_27418BAB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    (*(v3[7] + 8))(v3[9], v3[6]);
    v5 = sub_27418BF1C;
  }

  else
  {
    v5 = sub_27418BBDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_27418BBDC()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_2741C872C();
  sub_27418F9B0(&qword_28093AED0, MEMORY[0x277D858F8]);
  sub_2741C861C();
  v9 = *(v6 + 8);
  v9(v5, v7);
  v9(v4, v7);

  *(v0 + 136) = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_27418BCEC, 0, 0);
}

char *sub_27418BCEC()
{
  v33 = v0;
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v26 = *(v0 + 120);
    }

    v2 = sub_2741C848C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v30 = MEMORY[0x277D84F90];
    result = sub_274198AB0(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v3 = v30;
    v6 = *(v0 + 120) + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2743E6600](v5, *(v0 + 120));
      }

      else
      {
        v7 = *(v6 + 8 * v5);
      }

      sub_27409D85C(v7, v31);
      v9 = *(v30 + 16);
      v8 = *(v30 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_274198AB0((v8 > 1), v9 + 1, 1);
      }

      ++v5;
      *(v30 + 16) = v9 + 1;
      v10 = v30 + 104 * v9;
      v11 = v31[0];
      v12 = v31[2];
      *(v10 + 48) = v31[1];
      *(v10 + 64) = v12;
      *(v10 + 32) = v11;
      v13 = v31[3];
      v14 = v31[4];
      v15 = v31[5];
      *(v10 + 128) = v32;
      *(v10 + 96) = v14;
      *(v10 + 112) = v15;
      *(v10 + 80) = v13;
    }

    while (v2 != v5);
  }

  v17 = *(v0 + 136);
  v16 = *(v0 + 144);
  v19 = *(v0 + 88);
  v18 = *(v0 + 96);
  v20 = *(v0 + 80);
  v27 = *(v0 + 120);
  v28 = *(v0 + 72);
  v29 = *(v0 + 64);
  v21 = *(v0 + 152);
  v22 = *(v0 + 32);
  v23 = sub_27418F5F4(v3);

  v22[3] = &type metadata for NetworkScanResult;
  v22[4] = &off_2883295C0;
  v24 = swift_allocObject();
  *v22 = v24;
  *(v24 + 16) = v17;
  *(v24 + 24) = v16;
  *(v24 + 32) = 0;
  *(v24 + 33) = v21;
  *(v24 + 40) = v23;
  (*(v19 + 8))(v18, v20);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_27418BF1C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_27418BF84, 0, 0);
}

uint64_t sub_27418BF84()
{
  v1 = v0[9];
  v2 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_27418C020(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_2741C85DC();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = sub_2741C85FC();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = *(type metadata accessor for KnownNetwork() - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27418C1BC, 0, 0);
}

uint64_t sub_27418C1BC()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[18];
    v5 = v0[15];
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = *(v5 + 72);
    v8 = v1 + v6;
    do
    {
      sub_27409CF58(v8, v0[18]);
      v9 = v0[18];
      if (*(v4 + 64) == 1)
      {
        sub_27409D240(v9, v0[17]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27419897C(0, *(v3 + 16) + 1, 1);
        }

        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_27419897C(v10 > 1, v11 + 1, 1);
        }

        v12 = v0[17];
        *(v3 + 16) = v11 + 1;
        sub_27409D240(v12, v3 + v6 + v11 * v7);
      }

      else
      {
        sub_27409D050(v9);
      }

      v8 += v7;
      --v2;
    }

    while (v2);
  }

  v13 = *(v3 + 16);
  if (v13)
  {
    v14 = v0[15];
    v38 = v0[16];
    v39 = MEMORY[0x277D84F90];
    sub_274198AD0(0, v13, 0);
    v15 = v39;
    v16 = v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v14 + 72);
    do
    {
      v18 = v0[16];
      sub_27409CF58(v16, v18);
      v19 = *v18;
      v20 = *(v38 + 8);

      sub_27409D050(v18);
      v22 = *(v39 + 16);
      v21 = *(v39 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_274198AD0((v21 > 1), v22 + 1, 1);
      }

      *(v39 + 16) = v22 + 1;
      v23 = v39 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v16 += v17;
      --v13;
    }

    while (v13);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v0[19] = v15;
  if (*(v15 + 16))
  {
    v24 = v0[14];
    v25 = v0[7];
    v0[4] = MEMORY[0x277D84F90];
    v26 = sub_2740CE580(0);
    v0[20] = v26;
    [v26 setMinimumRSSI_];
    sub_2741C85EC();

    v27 = v26;

    return MEMORY[0x2822009F8](sub_27418C578, 0, 0);
  }

  else
  {
    v28 = v0[5];

    sub_2740CB660(0xD000000000000044, 0x80000002741E2EA0, 0xD000000000000070, 0x80000002741E2EF0, 0xD000000000000020, 0x80000002741E2F70);
    v28[3] = &type metadata for NetworkScanResult;
    v28[4] = &off_2883295C0;
    v29 = swift_allocObject();
    *v28 = v29;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = 1025;
    *(v29 + 40) = MEMORY[0x277D84FA0];
    v31 = v0[17];
    v30 = v0[18];
    v32 = v0[16];
    v33 = v0[14];
    v35 = v0[10];
    v34 = v0[11];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_27418C578()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v0[21] = sub_27418F9B0(&qword_28093AEC8, MEMORY[0x277D85928]);
  sub_2741C872C();
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_27418C66C;
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[7];

  return sub_27418CC7C(v6, v5, v7, (v0 + 4));
}

uint64_t sub_27418C66C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[11], v2[8]);
    v4 = sub_27418CB1C;
  }

  else
  {
    v4 = sub_27418C798;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27418C798()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  sub_2741C872C();
  sub_27418F9B0(&qword_28093AED0, MEMORY[0x277D858F8]);
  sub_2741C861C();
  v11 = *(v8 + 8);
  v11(v7, v9);
  v11(v6, v9);

  *(v0 + 192) = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_27418C8CC, 0, 0);
}

char *sub_27418C8CC()
{
  v35 = v0;
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v30 = v0[4];
    }

    v2 = sub_2741C848C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    result = sub_274198AB0(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v3 = v32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2743E6600](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      sub_27409D85C(v6, v33);
      v8 = *(v32 + 16);
      v7 = *(v32 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_274198AB0((v7 > 1), v8 + 1, 1);
      }

      ++v5;
      *(v32 + 16) = v8 + 1;
      v9 = v32 + 104 * v8;
      v10 = v33[0];
      v11 = v33[2];
      *(v9 + 48) = v33[1];
      *(v9 + 64) = v11;
      *(v9 + 32) = v10;
      v12 = v33[3];
      v13 = v33[4];
      v14 = v33[5];
      *(v9 + 128) = v34;
      *(v9 + 96) = v13;
      *(v9 + 112) = v14;
      *(v9 + 80) = v12;
    }

    while (v2 != v5);
  }

  v16 = v0[24];
  v15 = v0[25];
  v17 = v0[20];
  v18 = v0[13];
  v31 = v0[14];
  v19 = v0[12];
  v20 = v0[5];
  v21 = sub_27418F5F4(v3);

  v20[3] = &type metadata for NetworkScanResult;
  v20[4] = &off_2883295C0;
  v22 = swift_allocObject();
  *v20 = v22;

  *(v22 + 16) = v16;
  *(v22 + 24) = v15;
  *(v22 + 32) = 1024;
  *(v22 + 40) = v21;
  (*(v18 + 8))(v31, v19);

  v24 = v0[17];
  v23 = v0[18];
  v25 = v0[16];
  v26 = v0[14];
  v28 = v0[10];
  v27 = v0[11];

  v29 = v0[1];

  return v29();
}

uint64_t sub_27418CB1C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[7];

  return MEMORY[0x2822009F8](sub_27418CB9C, 0, 0);
}

uint64_t sub_27418CB9C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 80);

  (*(v5 + 8))(v4, v6);
  v9 = *(v0 + 32);

  v10 = *(v0 + 8);
  v11 = *(v0 + 184);

  return v10();
}

uint64_t sub_27418CC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_2741C6AFC();
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27418CD40, 0, 0);
}

uint64_t sub_27418CD40()
{
  v1 = v0[23];
  v2 = v1[2];
  v0[30] = v2;
  if (v2)
  {
    v0[31] = 0;
    v0[32] = 0;
    v3 = v0[24];
    v5 = v1[4];
    v4 = v1[5];

    v6 = sub_2741C7E3C();
    [v3 setSSID_];

    v0[20] = 0;
    v0[21] = 0xE000000000000000;
    sub_2741C856C();
    v7 = v0[21];

    v0[18] = 0xD00000000000001DLL;
    v0[19] = 0x80000002741E2FA0;
    MEMORY[0x2743E5FB0](v5, v4);

    v9 = v0[18];
    v8 = v0[19];
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v11 = v0[28];
    v10 = v0[29];
    v12 = v0[27];
    v13 = v0[25];
    v20 = v0[24];
    v14 = __swift_project_value_buffer(v12, qword_280945DD8);
    (*(v11 + 16))(v10, v14, v12);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v9, v8);

    (*(v11 + 8))(v10, v12);
    v15 = *(v13 + 16);
    v0[33] = v15;
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_27418D020;
    v16 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E88, qword_2741CE258);
    v0[14] = v16;
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_274186F30;
    v0[13] = &block_descriptor_11;
    [v15 performScanWithParameters:v20 reply:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v17 = v0[29];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_27418D020()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_27418D444;
  }

  else
  {
    v3 = sub_27418D130;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27418D130()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 256) + 1;
  sub_274186E08(*(v0 + 176), *(v0 + 208));

  if (v4 == v3)
  {
    v5 = *(v0 + 232);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 256) + 1;
    *(v0 + 248) = v2;
    *(v0 + 256) = v8;
    v9 = *(v0 + 192);
    v10 = *(v0 + 184) + 16 * v8;
    v12 = *(v10 + 32);
    v11 = *(v10 + 40);

    v13 = sub_2741C7E3C();
    [v9 setSSID_];

    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    sub_2741C856C();
    v14 = *(v0 + 168);

    *(v0 + 144) = 0xD00000000000001DLL;
    *(v0 + 152) = 0x80000002741E2FA0;
    MEMORY[0x2743E5FB0](v12, v11);

    v15 = *(v0 + 152);
    v23 = *(v0 + 144);
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 224);
    v17 = *(v0 + 232);
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v24 = *(v0 + 192);
    v20 = __swift_project_value_buffer(v18, qword_280945DD8);
    (*(v16 + 16))(v17, v20, v18);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v23, v15);

    (*(v16 + 8))(v17, v18);
    v21 = *(v19 + 16);
    *(v0 + 264) = v21;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 176;
    *(v0 + 24) = sub_27418D020;
    v22 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E88, qword_2741CE258);
    *(v0 + 112) = v22;
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_274186F30;
    *(v0 + 104) = &block_descriptor_11;
    [v21 performScanWithParameters:v24 reply:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_27418D444()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[29];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[34];

  return v4();
}

uint64_t sub_27418D4C0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  v6 = sub_2741C85FC();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27418D584, 0, 0);
}

uint64_t sub_27418D584()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = sub_2741C882C();
  v5 = v4;
  sub_2741C874C();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_27418D660;
  v7 = v0[9];

  return sub_2741B724C(v3, v5, 0, 0, 1);
}

uint64_t sub_27418D660()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v5 = sub_27418D858;
  }

  else
  {
    v5 = sub_27418D7C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_27418D7C8()
{
  v1 = v0[9];
  v2 = v0[6];
  swift_beginAccess();
  *(v2 + 16) = 1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_27418D858()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_27418D8BC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 592) = a2;
  *(v9 + 584) = v19;
  *(v9 + 568) = v18;
  *(v9 + 560) = a9;
  *(v9 + 552) = a8;
  *(v9 + 544) = a7;
  *(v9 + 536) = a6;
  *(v9 + 528) = a5;
  *(v9 + 520) = a1;
  v10 = sub_2741C85FC();
  *(v9 + 600) = v10;
  v11 = *(v10 - 8);
  *(v9 + 608) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 616) = swift_task_alloc();
  v13 = sub_2741C6AFC();
  *(v9 + 624) = v13;
  v14 = *(v13 - 8);
  *(v9 + 632) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 640) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27418DA08, 0, 0);
}

uint64_t sub_27418DA08()
{
  v1 = v0[73];
  v2 = v0[69];
  v3 = v0[66];
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v0[50] = 0;
  v0[51] = 0xE000000000000000;
  sub_2741C856C();
  v7 = v0[51];

  v0[48] = 0x3A74706D65747441;
  v0[49] = 0xE900000000000020;
  v0[58] = *(v6 + 16);
  v8 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v8);

  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741E3040);
  MEMORY[0x2743E5FB0](v5, v4);
  v9 = v0[48];
  v10 = v0[49];
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v11 = v0[80];
  v12 = v0[79];
  v13 = v0[78];
  v21 = v0[71];
  v14 = v0[70];
  v15 = __swift_project_value_buffer(v13, qword_280945DD8);
  v0[81] = v15;
  v16 = *(v12 + 16);
  v0[82] = v16;
  v0[83] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v11, v15, v13);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v9, v10);

  v17 = *(v12 + 8);
  v0[84] = v17;
  v0[85] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v11, v13);
  v18 = *(v14 + 16);
  v0[86] = v18;
  v0[2] = v0;
  v0[7] = v0 + 59;
  v0[3] = sub_27418DD44;
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E88, qword_2741CE258);
  v0[14] = v19;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_274186F30;
  v0[13] = &block_descriptor_47;
  [v18 performScanWithParameters:v21 reply:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27418DD44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 696) = v2;
  if (v2)
  {
    v3 = sub_27418E7C8;
  }

  else
  {
    v3 = sub_27418DE54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_27418DE54()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 552);
  v3 = *(v0 + 472);
  swift_beginAccess();
  v4 = *(v2 + 16);
  *(v2 + 16) = v3;

  sub_2741C856C();

  swift_beginAccess();
  v5 = *(v2 + 16);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v15 = *(v2 + 16);
    }

    v6 = sub_2741C848C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = *(v0 + 576);
  v8 = *(v0 + 552);
  *(v0 + 512) = v6;
  v9 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v9);

  MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741E2FC0);
  sub_2740CB218(0x20646E756F46, 0xE600000000000000, 0xD000000000000013, 0x80000002741E2FE0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C814C();
  swift_beginAccess();
  v10 = *(v8 + 16);
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v16 = *(v8 + 16);
    }

    result = sub_2741C848C();
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_8;
    }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {

    v17 = MEMORY[0x2743E6600](0, v10);

    result = v17;
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    result = *(v10 + 32);
  }

LABEL_8:
  v12 = *(v0 + 640);
  v13 = *(v0 + 616);
  **(v0 + 520) = result;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_27418E0C4()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v4 = *v1;
  *(*v1 + 712) = v0;

  (*(v2[76] + 8))(v2[77], v2[75]);
  if (v0)
  {
    v5 = sub_27418E750;
  }

  else
  {
    v5 = sub_27418E22C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_27418E22C()
{
  v1 = v0[87];
  v39 = v0[84];
  v40 = v0[85];
  v37 = v0[82];
  v38 = v0[83];
  v2 = v0[80];
  v3 = v0[78];
  v35 = v0[68];
  v36 = v0[81];
  v4 = v0[67];
  v5 = v0[66];
  v0[56] = 0;
  v0[57] = 0xE000000000000000;
  sub_2741C856C();
  v6 = v0[57];
  v0[52] = v0[56];
  v0[53] = v6;
  MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741E3060);
  v0[60] = *(v5 + 16);
  v7 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v7);

  MEMORY[0x2743E5FB0](0x206F742065756420, 0xEE003A726F727265);
  v0[61] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741E3080);
  MEMORY[0x2743E5FB0](v4, v35);
  v8 = v0[52];
  v9 = v0[53];
  v37(v2, v36, v3);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v8, v9);

  v39(v2, v3);
  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_8:
    if (sub_2741C848C())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v13 = v0[69];
  *(v0[66] + 16) = v12;
  v14 = *(v13 + 16);
  if (v14 >> 62)
  {
    goto LABEL_8;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    sub_2740D2F60();
    swift_allocError();
    swift_willThrow();
    v15 = v0[80];
    v16 = v0[77];

    v17 = v0[1];

    return v17();
  }

LABEL_9:
  v19 = v0[68];
  v20 = v0[67];
  v21 = v0[66];
  v0[50] = 0;
  v0[51] = 0xE000000000000000;
  sub_2741C856C();
  v22 = v0[51];

  v0[48] = 0x3A74706D65747441;
  v0[49] = 0xE900000000000020;
  v0[58] = *(v21 + 16);
  v23 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v23);

  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741E3040);
  MEMORY[0x2743E5FB0](v20, v19);
  v24 = v0[48];
  v25 = v0[49];
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v26 = v0[80];
  v27 = v0[79];
  v28 = v0[78];
  v41 = v0[71];
  v29 = v0[70];
  v30 = __swift_project_value_buffer(v28, qword_280945DD8);
  v0[81] = v30;
  v31 = *(v27 + 16);
  v0[82] = v31;
  v0[83] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v26, v30, v28);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v24, v25);

  v32 = *(v27 + 8);
  v0[84] = v32;
  v0[85] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v26, v28);
  v33 = *(v29 + 16);
  v0[86] = v33;
  v0[2] = v0;
  v0[7] = v0 + 59;
  v0[3] = sub_27418DD44;
  v34 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E88, qword_2741CE258);
  v0[14] = v34;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_274186F30;
  v0[13] = &block_descriptor_47;
  [v33 performScanWithParameters:v41 reply:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27418E750()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 640);
  v3 = *(v0 + 616);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_27418E7C8()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[73];
  swift_willThrow();

  if (*(v3 + 16) == 1)
  {
    v4 = v0[87];
    v5 = v0[66];
    sub_2741C856C();
    v0[54] = 0;
    v0[55] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741E30A0);
    v0[62] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    MEMORY[0x2743E5FB0](0xD000000000000011, 0x80000002741E30C0);
    swift_beginAccess();
    v0[63] = *(v5 + 16);
    v6 = sub_2741C86CC();
    MEMORY[0x2743E5FB0](v6);

    sub_2740CB218(v0[54], v0[55], 0xD000000000000013, 0x80000002741E2FE0);

    result = swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      v10 = v0[87];
      *(v0[66] + 16) = v9;
      sub_27411D4AC();
      swift_allocError();
      *v11 = v9;
      *(v11 + 8) = 0;
      swift_willThrow();

      v12 = v0[80];
      v13 = v0[77];

      v14 = v0[1];

      return v14();
    }
  }

  else
  {
    v15 = v0[77];
    v16 = v0[74];
    v17 = sub_2741C882C();
    v19 = v18;
    sub_2741C874C();
    v20 = swift_task_alloc();
    v0[88] = v20;
    *v20 = v0;
    v20[1] = sub_27418E0C4;
    v21 = v0[77];

    return sub_2741B724C(v17, v19, 0, 0, 1);
  }

  return result;
}

uint64_t sub_27418EA94(unsigned __int8 a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_2741C6AFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_2741C856C();

  v22 = 0xD000000000000020;
  v23 = 0x80000002741E2D40;
  v13 = sub_2740E3040(a1);
  MEMORY[0x2743E5FB0](v13);

  v14 = v22;
  v15 = v23;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_280945DD8);
  (*(v9 + 16))(v12, v16, v8);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v14, v15);

  (*(v9 + 8))(v12, v8);
  if (*(v2 + 32))
  {
    v17 = *(v2 + 32);

    sub_2741C814C();

    v18 = *(v2 + 32);
  }

  *(v2 + 32) = 0;

  v19 = sub_2741C80DC();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = a1;
  sub_2740CE980(0, 0, v7, &unk_2741D65C0, v20);
}

uint64_t sub_27418ED84()
{
  *(v0 + 16) = sub_2741C80AC();
  *(v0 + 24) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27418EE1C, v2, v1);
}

uint64_t sub_27418EE1C()
{
  v1 = *(v0 + 24);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27418EEB4, 0, 0);
}

uint64_t sub_27418EEB4()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27418EF40, v3, v2);
}

uint64_t sub_27418EF40()
{
  v1 = *(v0 + 32);

  *(v0 + 40) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27418EFBC, 0, 0);
}

uint64_t sub_27418EFBC()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27418F048, v3, v2);
}

uint64_t sub_27418F048()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);

  sub_2741B8FB8(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_27418F0BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_27418F0F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27418ED64(a1, v4, v5, v6);
}

uint64_t sub_27418F1B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 24, v3 | 7);
}

uint64_t sub_27418F2BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = *(v1 + v9 + 8);
  v16 = *(v1 + v9 + 16);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_27409D648;

  return sub_274188494(v14, a1, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_27418F42C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB8, &qword_2741D65E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27418F494(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2741C848C())
  {
    v4 = type metadata accessor for WiFiNetwork();
    v5 = sub_27418F9B0(&qword_280939F58, type metadata accessor for WiFiNetwork);
    result = MEMORY[0x2743E6290](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2743E6600](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_274152768(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2741C848C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_27418F5F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_27409DC84();
  result = MEMORY[0x2743E6290](v2, &type metadata for ScannedNetwork, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      sub_2740ACAC8(v5, v6);
      sub_2741529B4(v7, v6);
      sub_2740ACB2C(v7);
      v5 += 104;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_27418F680()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27418F6F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27418F730(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27418D4C0(v6, a1, v4, v5, v7);
}

uint64_t sub_27418F7F4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27418F82C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_27418F89C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_27409D648;

  return sub_27418D8BC(a1, v11, v15, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_27418F9B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27418FA1C()
{
  v1 = v0;
  swift_getKeyPath();
  v7 = v0;
  sub_2740E2AE4();
  sub_2741C6A0C();

  swift_beginAccess();
  v2 = *(v0 + 64);
  v3 = *(v7 + 72);
  v4 = *(v7 + 80);
  *(v7 + 81);
  v5 = *(v1 + 56);

  return v5;
}

uint64_t sub_27418FAD8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v8 = a2;
  v10 = a2 >> 8;
  swift_beginAccess();
  v11 = *(a1 + 72);
  *(a1 + 56) = v8;
  *(a1 + 57) = v10;
  *(a1 + 64) = a3;
  *(a1 + 72) = a4;
  *(a1 + 80) = a5;
  *(a1 + 81) = HIBYTE(a5) & 1;
}

uint64_t sub_27418FB74()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[9];

  v2 = OBJC_IVAR____TtC15WiFiSettingsKit17UserSettingsModel___observationRegistrar;
  v3 = sub_2741C6A4C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserSettingsModel()
{
  result = qword_28093AEE8;
  if (!qword_28093AEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27418FC74()
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

unint64_t sub_27418FD30()
{
  result = qword_28093AEF8;
  if (!qword_28093AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AEF8);
  }

  return result;
}

unint64_t sub_27418FD88()
{
  result = qword_28093AF00;
  if (!qword_28093AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AF00);
  }

  return result;
}

unint64_t sub_27418FDE4()
{
  result = qword_28093AF08;
  if (!qword_28093AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AF08);
  }

  return result;
}

unint64_t sub_27418FE3C()
{
  result = qword_28093AF10;
  if (!qword_28093AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AF10);
  }

  return result;
}

uint64_t sub_27418FE90(uint64_t a1)
{
  if (a1 <= 31)
  {
    switch(a1)
    {
      case 1:
        if (qword_280937418 != -1)
        {
          swift_once();
        }

        v1 = &qword_280945F68;
        goto LABEL_34;
      case 4:
        if (qword_280937448 != -1)
        {
          swift_once();
        }

        v1 = &qword_280945FC8;
        goto LABEL_34;
      case 8:
        if (qword_280937440 != -1)
        {
          swift_once();
        }

        v1 = &qword_280945FB8;
        goto LABEL_34;
    }

LABEL_22:
    if (qword_280937408 != -1)
    {
      swift_once();
    }

    v1 = &qword_280945F48;
    goto LABEL_34;
  }

  if (a1 > 79)
  {
    if (a1 == 80)
    {
      if (qword_280937478 != -1)
      {
        swift_once();
      }

      v1 = &qword_280946028;
      goto LABEL_34;
    }

    if (a1 == 128)
    {
      if (qword_280937430 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945F98;
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  if (a1 != 32)
  {
    if (a1 == 64)
    {
      if (qword_280937438 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945FA8;
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  if (qword_280937420 != -1)
  {
    swift_once();
  }

  v1 = &qword_280945F78;
LABEL_34:
  result = *v1;
  v3 = v1[1];
  return result;
}

void EnterpriseIdentity.init(id:identity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, __SecIdentity *a3@<X2>, char *a4@<X8>)
{
  certificateRef[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = certificateRef - v10;
  v12 = type metadata accessor for EnterpriseIdentity();
  *(a4 + 3) = 0;
  *(a4 + 4) = 0;
  v13 = *(v12 + 28);
  v14 = sub_2741C696C();
  v15 = *(*(v14 - 8) + 56);
  v15(&a4[v13], 1, 1, v14);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = a3;
  certificateRef[0] = 0;
  v16 = SecIdentityCopyCertificate(a3, certificateRef);
  v17 = certificateRef[0];
  if (v16 || !certificateRef[0])
  {
    goto LABEL_5;
  }

  v18 = certificateRef[0];
  v19 = SecCertificateCopyIssuerSummary();
  if (v19)
  {
    v20 = v19;
    v21 = sub_2741C7E7C();
    v23 = v22;

    *(a4 + 3) = v21;
    *(a4 + 4) = v23;
    SecCertificateNotValidAfter();

    sub_2741C68DC();
    v15(v11, 0, 1, v14);
    sub_274178F00(v11, &a4[v13]);
    v17 = certificateRef[0];
LABEL_5:

    v24 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

uint64_t type metadata accessor for EnterpriseIdentity()
{
  result = qword_28093AF30;
  if (!qword_28093AF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnterpriseIdentity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EnterpriseIdentity.issuer.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t EnterpriseIdentity.issuer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t EnterpriseIdentity.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnterpriseIdentity() + 28);

  return sub_27419052C(v3, a1);
}

uint64_t sub_27419052C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EnterpriseIdentity.expiration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EnterpriseIdentity() + 28);

  return sub_274178F00(a1, v3);
}

uint64_t EnterpriseIdentity.expirationFormatted.getter()
{
  v23 = sub_2741C68FC();
  v1 = *(v23 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2741C691C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  v14 = sub_2741C696C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EnterpriseIdentity();
  sub_27419052C(v0 + *(v19 + 28), v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_27409D420(v13, &qword_280938DE8, &qword_2741D6950);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_2741C690C();
    sub_2741C68EC();
    v21 = sub_2741C694C();
    (*(v1 + 8))(v4, v23);
    (*(v6 + 8))(v9, v5);
    (*(v15 + 8))(v18, v14);
    return v21;
  }
}

uint64_t EnterpriseIdentity.hash(into:)()
{
  v1 = v0;
  v2 = sub_2741C696C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_2741C7F0C();
  v13 = v0[2];
  type metadata accessor for SecIdentity(0);
  sub_27419131C(&qword_28093AF18, type metadata accessor for SecIdentity);
  sub_2741C6AAC();
  if (v1[4])
  {
    v14 = v1[3];
    sub_2741C87FC();
    sub_2741C7F0C();
  }

  else
  {
    sub_2741C87FC();
  }

  v15 = type metadata accessor for EnterpriseIdentity();
  sub_27419052C(v1 + *(v15 + 28), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_2741C87FC();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_2741C87FC();
  sub_27419131C(&qword_28093AF20, MEMORY[0x277CC9578]);
  sub_2741C7D9C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t EnterpriseIdentity.hashValue.getter()
{
  sub_2741C87DC();
  EnterpriseIdentity.hash(into:)();
  return sub_2741C880C();
}

uint64_t sub_274190BE4()
{
  sub_2741C87DC();
  EnterpriseIdentity.hash(into:)();
  return sub_2741C880C();
}

uint64_t sub_274190C28()
{
  sub_2741C87DC();
  EnterpriseIdentity.hash(into:)();
  return sub_2741C880C();
}

BOOL _s15WiFiSettingsKit18EnterpriseIdentityV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_2741C696C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AF48, qword_2741D6A38);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2741C86DC() & 1) == 0)
  {
    return 0;
  }

  v29 = v5;
  type metadata accessor for SecIdentity(0);
  v17 = a1[2];
  v18 = a2[2];
  sub_27419131C(&qword_28093AF18, type metadata accessor for SecIdentity);
  if ((sub_2741C6A9C() & 1) == 0)
  {
    return 0;
  }

  v19 = a1[4];
  v20 = a2[4];
  if (v19)
  {
    if (!v20 || (a1[3] != a2[3] || v19 != v20) && (sub_2741C86DC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = *(type metadata accessor for EnterpriseIdentity() + 28);
  v22 = *(v13 + 48);
  sub_27419052C(a1 + v21, v16);
  sub_27419052C(a2 + v21, &v16[v22]);
  v23 = v29;
  v24 = *(v29 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v22], 1, v4) == 1)
    {
      sub_27409D420(v16, &qword_280938DE8, &qword_2741D6950);
      return 1;
    }

    goto LABEL_17;
  }

  sub_27419052C(v16, v12);
  if (v24(&v16[v22], 1, v4) == 1)
  {
    (*(v23 + 8))(v12, v4);
LABEL_17:
    sub_27409D420(v16, &qword_28093AF48, qword_2741D6A38);
    return 0;
  }

  (*(v23 + 32))(v8, &v16[v22], v4);
  sub_27419131C(&qword_28093AF50, MEMORY[0x277CC9578]);
  v26 = sub_2741C7DBC();
  v27 = *(v23 + 8);
  v27(v8, v4);
  v27(v12, v4);
  sub_27409D420(v16, &qword_280938DE8, &qword_2741D6950);
  return (v26 & 1) != 0;
}

uint64_t sub_274191098(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_274191168(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_274191218()
{
  type metadata accessor for SecIdentity(319);
  if (v0 <= 0x3F)
  {
    sub_2740997A4();
    if (v1 <= 0x3F)
    {
      sub_2741912C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2741912C4()
{
  if (!qword_28093AF40)
  {
    sub_2741C696C();
    v0 = sub_2741C839C();
    if (!v1)
    {
      atomic_store(v0, &qword_28093AF40);
    }
  }
}

uint64_t sub_27419131C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CredentialsResponse.hashValue.getter()
{
  v1 = *v0;
  sub_2741C87DC();
  MEMORY[0x2743E6870](v1);
  return sub_2741C880C();
}

unint64_t sub_274191408()
{
  result = qword_28093AF58;
  if (!qword_28093AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AF58);
  }

  return result;
}

void sub_27419146C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_2741C7E3C();
  }

  else
  {
    v4 = 0;
  }

  [v3 setNetworkName_];
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_274191518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274191560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2741915F8()
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

uint64_t sub_274191738@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AF68, &qword_2741D6CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AF70, &qword_2741D6CB8);
  v34 = *(v36 - 8);
  v7 = *(v34 + 64);
  v8 = MEMORY[0x28223BE20](v36);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  sub_274192BEC(a1, &v43);
  v12 = swift_allocObject();
  v13 = v52[0];
  v12[9] = v51;
  v12[10] = v13;
  *(v12 + 169) = *(v52 + 9);
  v14 = v48;
  v12[5] = v47;
  v12[6] = v14;
  v15 = v50;
  v12[7] = v49;
  v12[8] = v15;
  v16 = v44;
  v12[1] = v43;
  v12[2] = v16;
  v17 = v46;
  v12[3] = v45;
  v12[4] = v17;
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AF78, &unk_2741D6CC0);
  sub_2740A6D24(&qword_28093AF80, &qword_28093AF78, &unk_2741D6CC0);
  sub_2741C7A7C();
  *&v6[*(v3 + 36)] = sub_2741C736C();
  v18 = *(a1 + 144);
  v19 = *(a1 + 152);
  *&v43 = *(a1 + 136);
  *(&v43 + 1) = v18;
  LOBYTE(v44) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938348, &qword_2741CBE60);
  sub_2741C7B1C();
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA18, &qword_2741D6CD0);
  sub_274192C40();
  sub_27416C8E8();
  sub_2741C77FC();

  sub_27409D420(v6, &qword_28093AF68, &qword_2741D6CB0);
  *(&v44 + 1) = &type metadata for ScannedNetwork;
  *&v45 = sub_2740F2248();
  *&v43 = swift_allocObject();
  sub_2740ACAC8(a1 + 32, v43 + 16);
  v20 = *(a1 + 160);
  LOBYTE(a1) = *(a1 + 168);
  type metadata accessor for AssociationModel();
  sub_274197040(&qword_280937E70, type metadata accessor for AssociationModel);
  v21 = sub_2741C6CEC();
  v23 = v22;
  type metadata accessor for NetworksListModel();
  sub_274197040(&qword_280939880, type metadata accessor for NetworksListModel);
  v24 = sub_2741C6CEC();
  *(&v45 + 1) = v21;
  LOBYTE(v46) = v23 & 1;
  *(&v46 + 1) = v24;
  LOBYTE(v47) = v25 & 1;
  v42 = 0;
  sub_2741C7A2C();
  BYTE8(v47) = v40[0];
  *&v48 = v41;
  *(&v48 + 1) = v20;
  LOBYTE(v49) = a1;
  v26 = v34;
  v27 = v35;
  v28 = *(v34 + 16);
  v29 = v36;
  v28(v35, v11, v36);
  sub_274149D60(&v43, v40);
  v30 = v37;
  v28(v37, v27, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFA0, &qword_2741D6CE0);
  sub_274149D60(v40, &v30[*(v31 + 48)]);
  sub_2740FD3E8(&v43);
  v32 = *(v26 + 8);
  v32(v11, v29);
  sub_2740FD3E8(v40);
  return (v32)(v27, v29);
}

uint64_t sub_274191C50(uint64_t a1)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938348, &qword_2741CBE60);
  return sub_2741C7AFC();
}

uint64_t sub_274191CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFB8, &unk_2741D6E20);
  return sub_274191D08(a1, a2 + *(v4 + 44));
}

uint64_t sub_274191D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938388, &qword_2741CBEB0);
  v47 = *(v51 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v51);
  v5 = &v45 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFC0, &qword_2741D6E30);
  v6 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFC8, &qword_2741D6E38);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFD0, &qword_2741D6E40);
  v13 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFD8, &qword_2741D6E48);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v52 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = &v45 - v20;
  v53 = a1;
  v21 = *(sub_2741915F8() + 16);

  swift_getKeyPath();
  v59 = v21;
  sub_274197040(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  LODWORD(a1) = *(v21 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress);

  if (a1 == 1)
  {
    v59 = sub_2741C79CC();
    v22 = MEMORY[0x277CE1088];
    v23 = MEMORY[0x277CE1078];
    sub_2741C784C();

    sub_2741C75BC();
    v59 = v22;
    v60 = v23;
    swift_getOpaqueTypeConformance2();
    sub_2741C76EC();
    (*(v46 + 8))(v12, v9);
    v24 = sub_2741C797C();
    *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFF0, &qword_2741D6E78) + 36)] = v24;
    v25 = &v15[*(v49 + 36)];
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381F8, &unk_2741D4350) + 28);
    v27 = *MEMORY[0x277CE1058];
    v28 = sub_2741C79EC();
    (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
    *v25 = swift_getKeyPath();
    sub_2740A6D94(v15, v8, &qword_28093AFD0, &qword_2741D6E40);
    swift_storeEnumTagMultiPayload();
    sub_274196DF8();
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0);
    v29 = v50;
    sub_2741C72CC();
    sub_27409D420(v15, &qword_28093AFD0, &qword_2741D6E40);
  }

  else
  {
    sub_2741C6D3C();
    v30 = v47;
    v31 = v51;
    (*(v47 + 16))(v8, v5, v51);
    swift_storeEnumTagMultiPayload();
    sub_274196DF8();
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0);
    v29 = v50;
    sub_2741C72CC();
    (*(v30 + 8))(v5, v31);
  }

  v32 = sub_2741C71BC();
  LOBYTE(v59) = 0;
  sub_274192430(v53, v56);
  *&v55[7] = v56[0];
  *&v55[23] = v56[1];
  *&v55[39] = v56[2];
  *&v55[55] = v56[3];
  v33 = v59;
  v34 = v52;
  sub_2740A6D94(v29, v52, &qword_28093AFD8, &qword_2741D6E48);
  v35 = v54;
  sub_2740A6D94(v34, v54, &qword_28093AFD8, &qword_2741D6E48);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFF8, &qword_2741D6E90);
  v37 = v35 + *(v36 + 48);
  v57[0] = v32;
  v57[1] = 0;
  v58[0] = v33;
  *&v58[1] = *v55;
  *&v58[17] = *&v55[16];
  *&v58[33] = *&v55[32];
  *&v58[49] = *&v55[48];
  v38 = *&v55[63];
  *&v58[64] = *&v55[63];
  v39 = *v58;
  *v37 = v32;
  *(v37 + 16) = v39;
  v40 = *&v58[16];
  v41 = *&v58[32];
  v42 = *&v58[48];
  *(v37 + 80) = v38;
  *(v37 + 48) = v41;
  *(v37 + 64) = v42;
  *(v37 + 32) = v40;
  v43 = v35 + *(v36 + 64);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_2740A6D94(v57, &v59, &qword_28093B000, &qword_2741D6E98);
  sub_27409D420(v29, &qword_28093AFD8, &qword_2741D6E48);
  v59 = v32;
  v60 = 0;
  v61 = v33;
  v63 = *&v55[16];
  v64 = *&v55[32];
  *v65 = *&v55[48];
  *&v65[15] = *&v55[63];
  v62 = *v55;
  sub_27409D420(&v59, &qword_28093B000, &qword_2741D6E98);
  return sub_27409D420(v34, &qword_28093AFD8, &qword_2741D6E48);
}

uint64_t sub_274192430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_2741C69BC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_2741C7E2C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2741C7E0C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  sub_2740A6A74();

  v11 = sub_2741C76AC();
  v13 = v12;
  v15 = v14;
  sub_2741C7DFC();
  sub_2741C7DEC();
  sub_2741C7DDC();
  sub_2741C7DEC();
  sub_2741C7E1C();
  sub_2741C69AC();
  v54 = sub_2741C7E9C();
  v55 = v16;
  v17 = sub_2741C765C();
  v51 = v18;
  v52 = v17;
  v20 = v19;
  v22 = v21;
  sub_2740A6AC8(v11, v13, v15 & 1);

  type metadata accessor for WiFiDiagnoser();
  swift_initStackObject();
  v23 = sub_2740F2E14();
  swift_beginAccess();
  v24 = *(v23 + 16);

  if (*(v24 + 16))
  {
    v48 = v20;
    v25 = *(v24 + 32);
    v49 = v22;
    v26 = *(v24 + 33);

    v53 = v25;
    sub_27410C238(&v53);
    v27 = sub_2741C76AC();
    v29 = v28;
    v31 = v30;
    sub_2741C75DC();
    v32 = sub_2741C767C();
    v34 = v33;
    v36 = v35;

    sub_2740A6AC8(v27, v29, v31 & 1);

    sub_2741C799C();
    v37 = sub_2741C763C();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v44 = v36 & 1;
    v20 = v48;
    sub_2740A6AC8(v32, v34, v44);
    v22 = v49;

    v45 = v41 & 1;
    sub_27409861C(v37, v39, v45);
  }

  else
  {

    v37 = 0;
    v39 = 0;
    v45 = 0;
    v43 = 0;
  }

  v46 = v20 & 1;
  sub_27409861C(v52, v51, v46);

  sub_2740ACA00(v37, v39, v45, v43);
  sub_2740ACA44(v37, v39, v45, v43);
  *a2 = v52;
  *(a2 + 8) = v51;
  *(a2 + 16) = v46;
  *(a2 + 24) = v22;
  *(a2 + 32) = v37;
  *(a2 + 40) = v39;
  *(a2 + 48) = v45;
  *(a2 + 56) = v43;
  sub_2740ACA44(v37, v39, v45, v43);
  sub_2740A6AC8(v52, v51, v46);
}

__n128 sub_274192874@<Q0>(uint64_t a1@<X0>, id (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  sub_274192BEC(a1, v9);
  v3 = swift_allocObject();
  v4 = v10[0];
  *(v3 + 144) = v9[8];
  *(v3 + 160) = v4;
  *(v3 + 169) = *(v10 + 9);
  v5 = v9[5];
  *(v3 + 80) = v9[4];
  *(v3 + 96) = v5;
  v6 = v9[7];
  *(v3 + 112) = v9[6];
  *(v3 + 128) = v6;
  v7 = v9[1];
  *(v3 + 16) = v9[0];
  *(v3 + 32) = v7;
  result = v9[3];
  *(v3 + 48) = v9[2];
  *(v3 + 64) = result;
  *a2 = sub_274192DD4;
  a2[1] = v3;
  a2[2] = sub_274192AE4;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

id sub_274192914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v24 - v6);
  v8 = sub_2741915F8();
  v9 = type metadata accessor for NetworkDetailsModel();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  sub_2740ACAC8(a1 + 32, &v25);
  v13 = sub_274193D48(&v25, v8, v12);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v15 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    sub_274196CB0(v7, a2);
    v17 = type metadata accessor for NetworkDetailsView();
    v18 = (a2 + v17[5]);
    v24 = v13;
    sub_2741C7A2C();
    v19 = v26;
    *v18 = v25;
    v18[1] = v19;
    v20 = a2 + v17[6];
    LOBYTE(v24) = 1;
    sub_2741C7A2C();
    v21 = v26;
    *v20 = v25;
    *(v20 + 8) = v21;
    v22 = a2 + v17[7];
    LOBYTE(v24) = 0;
    result = sub_2741C7A2C();
    v23 = v26;
    *v22 = v25;
    *(v22 + 8) = v23;
    *(a2 + v17[8]) = wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274192AE4()
{
  sub_2741C856C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFA8, &unk_2741D6CE8);
  v0 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v0);

  MEMORY[0x2743E5FB0](0xD00000000000003DLL, 0x80000002741E3110);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_274192B98@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2741C70EC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AF60, &qword_2741D6CA8);
  return sub_274191738(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_274192C40()
{
  result = qword_28093AF88;
  if (!qword_28093AF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AF68, &qword_2741D6CB0);
    sub_2740A6D24(&qword_28093AF90, &qword_28093AF98, &qword_2741D6CD8);
    sub_2740A6D24(&qword_280939308, &qword_280939310, &qword_2741D4C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AF88);
  }

  return result;
}

uint64_t sub_274192D24()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t objectdestroyTm_18()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  v5 = v0[19];

  v6 = v0[20];

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t sub_274192E00(uint64_t a1)
{
  v2 = sub_2741C79EC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2741C6F5C();
}

uint64_t sub_274192EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WiFiInterface();
  v26[3] = v4;
  v26[4] = &off_28832A198;
  v26[0] = a1;
  type metadata accessor for WiFiNetworkConfiguration();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v26, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v24 = v4;
  v25 = &off_28832A198;
  v23[0] = v11;
  *(v5 + 16) = xmmword_2741D0D80;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  sub_27409D4E4(v23, v5 + 56);
  v12 = __swift_project_boxed_opaque_existential_1(v23, v24);
  v13 = *v12;
  v14 = [*(*v12 + 16) IPv6Addresses];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2741C7FEC();
  }

  else
  {
    v16 = 0;
  }

  v17 = [*(v13 + 16) IPv6RouterAddress];
  if (v17)
  {
    v18 = v17;
    v19 = sub_2741C7E7C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  sub_27409D420(a2, &qword_28093AFB0, &qword_2741D6E18);
  *(v5 + 16) = 0;
  *(v5 + 24) = v16;
  *(v5 + 32) = 0;
  *(v5 + 40) = v19;
  *(v5 + 48) = v21;
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v5;
}

void *sub_2741930B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for KnownNetwork();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v77 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NetworkSettings();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v6;
  v104[3] = v6;
  v104[4] = sub_274197040(qword_28093B018, type metadata accessor for KnownNetwork);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
  sub_27409D240(a1, boxed_opaque_existential_1);
  *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) = 0;
  v14 = a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config;
  *v14 = xmmword_2741D0D80;
  *(v14 + 3) = 0;
  *(v14 + 4) = 0;
  *(v14 + 2) = 0;
  *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = 0;
  sub_2741C6A3C();
  v15 = type metadata accessor for NetworkConfigurationState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings;
  v20 = *(v10 + 56);
  v20(v18 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings, 1, 1, v9);
  v20(v18 + v19, 1, 1, v9);
  sub_2741C6A3C();
  *(&v98 + 1) = v15;
  *&v99 = sub_274197040(&qword_280939A90, type metadata accessor for NetworkConfigurationState);
  *&v97 = v18;
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  v22 = sub_274192EC8(v21, &v97);
  v23 = type metadata accessor for WiFiNetworkConfiguration();
  a3[2] = v22;
  a3[5] = v23;
  a3[6] = &off_288327F88;
  v24 = *__swift_project_boxed_opaque_existential_1(a3 + 2, v23);
  sub_2740CBF04(v104, v13);
  sub_274196D80(v13, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings, type metadata accessor for NetworkSettings);
  sub_274196D80(v13, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__previousSettings, type metadata accessor for NetworkSettings);
  v82 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  sub_27409D4E4(v104, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network);
  v84 = a2;
  v85 = v13;
  v83 = v18;
  if (a2)
  {

    v25 = boxed_opaque_existential_1;
    v88 = sub_2741949CC(boxed_opaque_existential_1, a2);
  }

  else
  {
    v88 = 0;
    v25 = boxed_opaque_existential_1;
  }

  v26 = __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v27 = __swift_project_boxed_opaque_existential_1((*v26 + 56), *(*v26 + 80));
  sub_274195A70(v25, *v27, v105);
  v28 = a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  v29 = v105[3];
  *(v28 + 2) = v105[2];
  *(v28 + 3) = v29;
  *(v28 + 4) = v105[4];
  *(v28 + 10) = v106;
  v30 = v105[1];
  *v28 = v105[0];
  *(v28 + 1) = v30;
  v31 = __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v32 = *v31;
  v33 = *(*v31 + 16);
  v34 = *(*v31 + 24);
  v81 = a3 + 2;
  v36 = v32[4];
  v35 = v32[5];
  v37 = v32[6];
  v38 = (a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v86 = a3;
  v40 = *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v39 = v38[1];
  v41 = v38[2];
  v42 = v38[3];
  v79 = v38[4];
  v80 = v41;
  sub_274103F80(v33, v34);
  v43 = v40;
  v44 = v86;
  sub_2740CC5FC(v43, v39);
  *v38 = v33;
  v38[1] = v34;
  v38[2] = v36;
  v38[3] = v35;
  v45 = boxed_opaque_existential_1;
  v38[4] = v37;
  v46 = v81;
  v47 = __swift_project_boxed_opaque_existential_1(v81, v44[5]);
  v48 = __swift_project_boxed_opaque_existential_1((*v47 + 56), *(*v47 + 80));
  sub_274196238(v45, *v48, v107);
  v49 = v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  v50 = v107[1];
  *v49 = v107[0];
  *(v49 + 16) = v50;
  *(v49 + 32) = v107[2];
  *(v49 + 48) = v108;
  v51 = __swift_project_boxed_opaque_existential_1(v46, v44[5]);
  v52 = __swift_project_boxed_opaque_existential_1((*v51 + 56), *(*v51 + 80));
  *(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings) = sub_2741966E8(v45, *v52);
  swift_getKeyPath();
  *&v89 = v44;
  sub_274197040(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v53 = v82;
  swift_beginAccess();
  sub_27409D4E4(v44 + v53, &v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  if (swift_dynamicCast())
  {
    v101 = v93;
    v102 = v94;
    v103 = v95;
    v97 = v89;
    v98 = v90;
    v99 = v91;
    v100 = v92;
    if (v88)
    {
      v54 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType;
      v55 = v85;
      if (*(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) == 1)
      {
        sub_2740ACB2C(&v97);
        *(v44 + v54) = 1;
        goto LABEL_24;
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v76 - 2) = v44;
      *(&v76 - 8) = 1;
      *&v89 = v44;
    }

    else
    {
      v57 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType;
      v58 = *(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
      v55 = v85;
      if (BYTE9(v99))
      {
        if (v58 == 2)
        {
          sub_2740ACB2C(&v97);
          *(v44 + v57) = 2;
          goto LABEL_24;
        }

        v61 = swift_getKeyPath();
        MEMORY[0x28223BE20](v61);
        *(&v76 - 2) = v44;
        *(&v76 - 8) = 2;
        *&v89 = v44;
      }

      else
      {
        if (v58 == 3)
        {
          sub_2740ACB2C(&v97);
          *(v44 + v57) = 3;
          goto LABEL_24;
        }

        v62 = swift_getKeyPath();
        MEMORY[0x28223BE20](v62);
        *(&v76 - 2) = v44;
        *(&v76 - 8) = 3;
        *&v89 = v44;
      }
    }

    sub_2741C69FC();

    sub_2740ACB2C(&v97);
  }

  else
  {
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    sub_27409D420(&v89, &qword_280938340, &qword_2741D1660);
    swift_getKeyPath();
    *&v89 = v44;
    sub_2741C6A0C();

    sub_27409D4E4(v44 + v53, &v97);
    v56 = v77;
    if (swift_dynamicCast())
    {
      sub_2741041FC(v56, type metadata accessor for KnownNetwork);
      v55 = v85;
      if (*(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) != 4)
      {
        v60 = swift_getKeyPath();
        MEMORY[0x28223BE20](v60);
        *(&v76 - 2) = v44;
        *(&v76 - 8) = 4;
        *&v97 = v44;
        sub_2741C69FC();
      }
    }

    else
    {
      v55 = v85;
    }
  }

LABEL_24:
  v63 = v88 & 1;
  if ((v88 & 1) == *(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork))
  {
    *(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = v63;
  }

  else
  {
    v64 = swift_getKeyPath();
    MEMORY[0x28223BE20](v64);
    *(&v76 - 2) = v44;
    *(&v76 - 8) = v63;
    *&v97 = v44;
    sub_2741C69FC();
  }

  *&v97 = 0;
  *(&v97 + 1) = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000022, 0x80000002741DBC60);
  MEMORY[0x2743E5FB0](0xD000000000000012, 0x80000002741DBC90);
  swift_getKeyPath();
  *&v89 = v44;
  sub_2741C6A0C();

  v65 = *(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
  if (v65 <= 1)
  {
    if (*(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType))
    {
      v66 = 0xEF6B726F7774656ELL;
      v67 = 0x20746E6572727563;
    }

    else
    {
      v66 = 0x80000002741DBD20;
      v67 = 0xD000000000000019;
    }
  }

  else if (v65 == 2)
  {
    v66 = 0x80000002741DBD00;
    v67 = 0xD00000000000001CLL;
  }

  else if (v65 == 3)
  {
    v66 = 0x80000002741DBCE0;
    v67 = 0xD00000000000001ELL;
  }

  else
  {
    v66 = 0x80000002741DBCB0;
    v67 = 0xD00000000000002ALL;
  }

  MEMORY[0x2743E5FB0](v67, v66);

  MEMORY[0x2743E5FB0](0x74656E20726F6620, 0xED0000206B726F77);
  MEMORY[0x2743E5FB0](*v45, v45[1]);
  MEMORY[0x2743E5FB0](0x6572727563202D20, 0xEC000000203A746ELL);
  if (v88)
  {
    v68 = 1702195828;
  }

  else
  {
    v68 = 0x65736C6166;
  }

  if (v88)
  {
    v69 = 0xE400000000000000;
  }

  else
  {
    v69 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v68, v69);

  sub_2740CB460(v97, *(&v97 + 1));

  v70 = v83;
  swift_setDeallocating();
  sub_27409D420(v70 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings, &qword_2809395C0, qword_2741D1000);
  v71 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState___observationRegistrar;
  v72 = sub_2741C6A4C();
  (*(*(v72 - 8) + 8))(v70 + v71, v72);
  v73 = *(*v70 + 48);
  v74 = *(*v70 + 52);
  swift_deallocClassInstance();
  sub_2741041FC(v55, type metadata accessor for NetworkSettings);
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  return v44;
}

void *sub_274193D48(uint64_t a1, uint64_t a2, void *a3)
{
  v81 = type metadata accessor for KnownNetwork();
  v6 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkSettings();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107[3] = &type metadata for ScannedNetwork;
  v107[4] = sub_2740F2248();
  v13 = swift_allocObject();
  v107[0] = v13;
  v14 = *(a1 + 80);
  *(v13 + 80) = *(a1 + 64);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(a1 + 96);
  v15 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v15;
  v16 = *(a1 + 48);
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = v16;
  v91 = v13;
  *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) = 0;
  v17 = a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config;
  *v17 = xmmword_2741D0D80;
  *(v17 + 3) = 0;
  *(v17 + 4) = 0;
  *(v17 + 2) = 0;
  *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = 0;
  sub_2741C6A3C();
  v18 = type metadata accessor for NetworkConfigurationState();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings;
  v23 = *(v9 + 56);
  v23(v21 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings, 1, 1, v8);
  v23(v21 + v22, 1, 1, v8);
  sub_2741C6A3C();
  *(&v101 + 1) = v18;
  *&v102 = sub_274197040(&qword_280939A90, type metadata accessor for NetworkConfigurationState);
  *&v100 = v21;
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  v25 = sub_274192EC8(v24, &v100);
  v26 = type metadata accessor for WiFiNetworkConfiguration();
  a3[2] = v25;
  a3[5] = v26;
  a3[6] = &off_288327F88;
  v27 = *__swift_project_boxed_opaque_existential_1(a3 + 2, v26);
  sub_2740CBF04(v107, v12);
  sub_274196D80(v12, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings, type metadata accessor for NetworkSettings);
  sub_274196D80(v12, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__previousSettings, type metadata accessor for NetworkSettings);
  v85 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  sub_27409D4E4(v107, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network);
  v87 = a2;
  v88 = v12;
  v86 = v21;
  if (a2)
  {

    v28 = v91;
    v90 = sub_274195234(v91 + 16, a2);
  }

  else
  {
    v90 = 0;
    v28 = v91;
  }

  v29 = __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v30 = __swift_project_boxed_opaque_existential_1((*v29 + 56), *(*v29 + 80));
  sub_274195E88(v28 + 16, *v30, v108);
  v31 = a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  v32 = v108[3];
  *(v31 + 2) = v108[2];
  *(v31 + 3) = v32;
  *(v31 + 4) = v108[4];
  *(v31 + 10) = v109;
  v33 = v108[1];
  *v31 = v108[0];
  *(v31 + 1) = v33;
  v34 = __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v35 = *v34;
  v36 = *(*v34 + 16);
  v37 = *(*v34 + 24);
  v38 = *(*v34 + 32);
  v39 = *(*v34 + 40);
  v84 = a3 + 2;
  v40 = *(v35 + 48);
  v41 = (a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v89 = a3;
  v42 = *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v43 = *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v44 = v41[2];
  v45 = v41[3];
  v82 = v41[4];
  v83 = v44;
  sub_274103F80(v36, v37);
  v46 = v42;
  v47 = v89;
  sub_2740CC5FC(v46, v43);
  *v41 = v36;
  v41[1] = v37;
  v41[2] = v38;
  v41[3] = v39;
  v41[4] = v40;
  v48 = v84;
  v49 = __swift_project_boxed_opaque_existential_1(v84, v47[5]);
  v50 = __swift_project_boxed_opaque_existential_1((*v49 + 56), *(*v49 + 80));
  v51 = v91;
  sub_2741964C4(v91 + 16, *v50, v110);
  v52 = v47 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  v53 = v110[1];
  *v52 = v110[0];
  *(v52 + 16) = v53;
  *(v52 + 32) = v110[2];
  *(v52 + 48) = v111;
  v54 = __swift_project_boxed_opaque_existential_1(v48, v47[5]);
  v55 = __swift_project_boxed_opaque_existential_1((*v54 + 56), *(*v54 + 80));
  *(v47 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings) = sub_2741969E4(v51 + 16, *v55);
  swift_getKeyPath();
  *&v92 = v47;
  sub_274197040(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v56 = v85;
  swift_beginAccess();
  sub_27409D4E4(v47 + v56, &v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  if (swift_dynamicCast())
  {
    v104 = v96;
    v105 = v97;
    v106 = v98;
    v100 = v92;
    v101 = v93;
    v102 = v94;
    v103 = v95;
    if (v90)
    {
      v57 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType;
      if (*(v47 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) == 1)
      {
        sub_2740ACB2C(&v100);
        *(v47 + v57) = 1;
        goto LABEL_24;
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v79 - 2) = v47;
      *(&v79 - 8) = 1;
      *&v92 = v47;
    }

    else
    {
      v59 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType;
      v60 = *(v47 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
      if (BYTE9(v102))
      {
        if (v60 == 2)
        {
          sub_2740ACB2C(&v100);
          *(v47 + v59) = 2;
          goto LABEL_24;
        }

        v63 = swift_getKeyPath();
        MEMORY[0x28223BE20](v63);
        *(&v79 - 2) = v47;
        *(&v79 - 8) = 2;
        *&v92 = v47;
      }

      else
      {
        if (v60 == 3)
        {
          sub_2740ACB2C(&v100);
          *(v47 + v59) = 3;
          goto LABEL_24;
        }

        v64 = swift_getKeyPath();
        MEMORY[0x28223BE20](v64);
        *(&v79 - 2) = v47;
        *(&v79 - 8) = 3;
        *&v92 = v47;
      }
    }

    sub_2741C69FC();

    sub_2740ACB2C(&v100);
  }

  else
  {
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    sub_27409D420(&v92, &qword_280938340, &qword_2741D1660);
    swift_getKeyPath();
    *&v92 = v47;
    sub_2741C6A0C();

    sub_27409D4E4(v47 + v56, &v100);
    v58 = v80;
    if (swift_dynamicCast())
    {
      sub_2741041FC(v58, type metadata accessor for KnownNetwork);
      if (*(v47 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) != 4)
      {
        v62 = swift_getKeyPath();
        MEMORY[0x28223BE20](v62);
        *(&v79 - 2) = v47;
        *(&v79 - 8) = 4;
        *&v100 = v47;
        sub_2741C69FC();
      }
    }
  }

LABEL_24:
  v65 = v90 & 1;
  if ((v90 & 1) == *(v47 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork))
  {
    *(v47 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = v65;
  }

  else
  {
    v66 = swift_getKeyPath();
    MEMORY[0x28223BE20](v66);
    *(&v79 - 2) = v47;
    *(&v79 - 8) = v65;
    *&v100 = v47;
    sub_2741C69FC();
  }

  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000022, 0x80000002741DBC60);
  MEMORY[0x2743E5FB0](0xD000000000000012, 0x80000002741DBC90);
  swift_getKeyPath();
  *&v92 = v47;
  sub_2741C6A0C();

  v67 = *(v47 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
  if (v67 <= 1)
  {
    v68 = v88;
    if (*(v47 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType))
    {
      v69 = 0xEF6B726F7774656ELL;
      v70 = 0x20746E6572727563;
    }

    else
    {
      v69 = 0x80000002741DBD20;
      v70 = 0xD000000000000019;
    }
  }

  else
  {
    v68 = v88;
    if (v67 == 2)
    {
      v69 = 0x80000002741DBD00;
      v70 = 0xD00000000000001CLL;
    }

    else if (v67 == 3)
    {
      v69 = 0x80000002741DBCE0;
      v70 = 0xD00000000000001ELL;
    }

    else
    {
      v69 = 0x80000002741DBCB0;
      v70 = 0xD00000000000002ALL;
    }
  }

  MEMORY[0x2743E5FB0](v70, v69);

  MEMORY[0x2743E5FB0](0x74656E20726F6620, 0xED0000206B726F77);
  MEMORY[0x2743E5FB0](*(v91 + 16), *(v91 + 24));
  MEMORY[0x2743E5FB0](0x6572727563202D20, 0xEC000000203A746ELL);
  if (v90)
  {
    v71 = 1702195828;
  }

  else
  {
    v71 = 0x65736C6166;
  }

  if (v90)
  {
    v72 = 0xE400000000000000;
  }

  else
  {
    v72 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v71, v72);

  sub_2740CB460(v100, *(&v100 + 1));

  v73 = v86;
  swift_setDeallocating();
  sub_27409D420(v73 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings, &qword_2809395C0, qword_2741D1000);
  v74 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState___observationRegistrar;
  v75 = sub_2741C6A4C();
  (*(*(v75 - 8) + 8))(v73 + v74, v75);
  v76 = *(*v73 + 48);
  v77 = *(*v73 + 52);
  swift_deallocClassInstance();
  sub_2741041FC(v68, type metadata accessor for NetworkSettings);
  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  return v47;
}