unint64_t sub_26BF8E564()
{
  result = qword_28045FCA0;
  if (!qword_28045FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FCA0);
  }

  return result;
}

uint64_t sub_26BF8E5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FileInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_26BF8E6BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FileInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = a2;
  }

  return result;
}

uint64_t type metadata accessor for FileInfoAndSender()
{
  result = qword_28045FCA8;
  if (!qword_28045FCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BF8E7C4()
{
  type metadata accessor for FileInfo(319);
  if (v0 <= 0x3F)
  {
    sub_26BF8E848();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BF8E848()
{
  if (!qword_28045FCB8)
  {
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045FCB8);
    }
  }
}

uint64_t sub_26BF8E898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BF8E93C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BF8E984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BF8E9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BF8EA4C(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_26BF89AF8(a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_26BF8EAE8()
{
  result = qword_28045FCC0;
  if (!qword_28045FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FCC0);
  }

  return result;
}

uint64_t sub_26BF8EBA0(void *a1)
{
  v21[5] = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v20 = bswap32(*a1) >> 16;
  v21[3] = MEMORY[0x277D838B0];
  v21[4] = MEMORY[0x277CC9C18];
  v21[0] = &v20;
  v21[1] = v21;
  v6 = __swift_project_boxed_opaque_existential_1(v21, MEMORY[0x277D838B0]);
  v8 = *v6;
  v7 = v6[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v9 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_21;
    }

    v10 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v10);
  if (v1)
  {
    goto LABEL_15;
  }

  v14 = result;
  sub_26BE11228(v2, v3);
  v15 = v14 + v10;
  if (__OFADD__(v14, v10))
  {
    goto LABEL_19;
  }

  v16 = v15 + 2;
  if (__OFADD__(v15, 2))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v17 = sub_26BF3016C();
  v19 = __OFADD__(v16, v17);
  result = v16 + v17;
  if (v19)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF8ED18(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_20;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 != 16)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      return sub_26C00925C();
    }

    goto LABEL_23;
  }

  if (BYTE6(a2) == 16)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      if (!__OFSUB__(HIDWORD(result), result))
      {
        if (HIDWORD(result) - result <= 16)
        {
          goto LABEL_20;
        }

LABEL_18:
        v10 = 0;
LABEL_21:
        sub_26BE01600();
        swift_allocError();
        *v11 = v10;
        return swift_willThrow();
      }

      goto LABEL_24;
    }

    if (BYTE6(a2) > 0x10uLL)
    {
      goto LABEL_18;
    }

LABEL_20:
    v10 = 1;
    goto LABEL_21;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v5 = __OFSUB__(v7, v8);
  v9 = v7 - v8;
  if (!v5)
  {
    if (v9 > 16)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t MLS.Client.Client.rawValue.getter()
{
  sub_26BF90058(v0);
  if (v1)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  v3 = sub_26C00909C();
  sub_26BE00258(0, 0xC000000000000000);
  return v3;
}

uint64_t *MLS.Client.Client.__allocating_init(configuration:rawValue:)(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v137 = *MEMORY[0x277D85DE8];
  v124 = sub_26C00928C();
  v7 = *(v124 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v124);
  v122 = v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v115 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v123 = v115 - v15;
  MEMORY[0x28223BE20](v14);
  v125 = v115 - v16;
  v17 = sub_26C00A4EC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = 0;
  v20 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v19 = *(a2 + 16);
      goto LABEL_6;
    }
  }

  else if (v20)
  {
    v19 = a2;
LABEL_6:
    sub_26BE00608(a2, a3);
  }

  v134 = a2;
  v135 = a3;
  v136 = v19;
  v21 = &v134;
  v22 = sub_26BEEE594();
  if ((v23 & 1) == 0 && v22 > 1)
  {
    sub_26BE01600();
    swift_allocError();
    *v24 = 7;
    swift_willThrow();
    sub_26BE00258(a2, a3);
LABEL_10:
    v25 = v134;
    v26 = v135;
LABEL_13:
    sub_26BE00258(v25, v26);
LABEL_14:
    v29 = a1;
LABEL_15:
    sub_26BE29710(v29);
LABEL_16:
    v30 = *MEMORY[0x277D85DE8];
    return v21;
  }

  v120 = v7;
  v27 = sub_26BF2F7B0();
  if (v3)
  {
    sub_26BE00258(v134, v135);
    v25 = a2;
    v26 = a3;
    goto LABEL_13;
  }

  v32 = v27;
  v21 = v28;
  v119 = a1;
  sub_26C00A4CC();
  v33 = sub_26C00A4AC();
  if (!v34)
  {
    sub_26BE01600();
    swift_allocError();
    *v39 = 9;
    swift_willThrow();
    sub_26BE00258(v32, v21);
    sub_26BE00258(a2, a3);
    sub_26BE00258(v134, v135);
    a1 = v119;
    goto LABEL_14;
  }

  v35 = v33;
  v36 = v34;
  sub_26BE00258(v32, v21);
  if (v35 == *(v119 + 30) && v36 == *(v119 + 31))
  {
  }

  else
  {
    v21 = sub_26C00AF2C();

    if ((v21 & 1) == 0)
    {
      sub_26BE01600();
      swift_allocError();
      *v38 = 8;
      swift_willThrow();
      sub_26BE00258(a2, a3);
LABEL_24:
      sub_26BE00258(v134, v135);
      v29 = v119;
      goto LABEL_15;
    }
  }

  v40 = sub_26BF2F7B0();
  a1 = v119;
  v130 = MEMORY[0x277CC9318];
  v131 = MEMORY[0x277CC9300];
  *&v129 = v40;
  *(&v129 + 1) = v41;
  v42 = __swift_project_boxed_opaque_existential_1(&v129, MEMORY[0x277CC9318]);
  v43 = *v42;
  v44 = v42[1];
  v45 = v44 >> 62;
  if ((v44 >> 62) > 1)
  {
    if (v45 != 2)
    {
      *&v126[6] = 0;
      *v126 = 0;
      v46 = v126;
      goto LABEL_46;
    }

    v47 = *(v43 + 16);
    *(&v118 + 1) = *(v43 + 24);
    v48 = sub_26C008E9C();
    if (v48)
    {
      v49 = v48;
      v50 = sub_26C008ECC();
      if (__OFSUB__(v47, v50))
      {
        __break(1u);
        goto LABEL_112;
      }

      v51 = v47;
      v52 = (v47 - v50 + v49);
    }

    else
    {
      v51 = v47;
      v52 = 0;
    }

    a1 = (*(&v118 + 1) - v51);
    if (!__OFSUB__(*(&v118 + 1), v51))
    {
      v63 = sub_26C008EBC();
      if (v63 >= a1)
      {
        v64 = a1;
      }

      else
      {
        v64 = v63;
      }

      v65 = &v52[v64];
      if (v52)
      {
        v61 = v65;
      }

      else
      {
        v61 = 0;
      }

      v62 = v52;
      goto LABEL_56;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  if (!v45)
  {
    *v126 = *v42;
    *&v126[8] = v44;
    v126[10] = BYTE2(v44);
    v126[11] = BYTE3(v44);
    v126[12] = BYTE4(v44);
    v126[13] = BYTE5(v44);
    v46 = &v126[BYTE6(v44)];
LABEL_46:
    sub_26BE77028(v126, v46, v132);
    goto LABEL_57;
  }

  v53 = v43;
  v54 = v43 >> 32;
  *(&v118 + 1) = v54 - v53;
  if (v54 < v53)
  {
    __break(1u);
    goto LABEL_109;
  }

  v55 = sub_26C008E9C();
  if (v55)
  {
    v56 = sub_26C008ECC();
    if (!__OFSUB__(v53, v56))
    {
      v55 += v53 - v56;
      goto LABEL_38;
    }

LABEL_112:
    __break(1u);
  }

LABEL_38:
  v57 = *(&v118 + 1);
  v58 = sub_26C008EBC();
  if (v58 >= v57)
  {
    v59 = v57;
  }

  else
  {
    v59 = v58;
  }

  v60 = (v59 + v55);
  if (v55)
  {
    v61 = v60;
  }

  else
  {
    v61 = 0;
  }

  v62 = v55;
LABEL_56:
  sub_26BE77028(v62, v61, v132);
  a1 = v119;
LABEL_57:
  v66 = v132[0];
  __swift_destroy_boxed_opaque_existential_1(&v129);
  sub_26BF8ED18(v66, *(&v66 + 1));
  sub_26BE00258(v66, *(&v66 + 1));
  v67 = sub_26BF2F7B0();
  v130 = MEMORY[0x277CC9318];
  v131 = MEMORY[0x277CC9300];
  *&v129 = v67;
  *(&v129 + 1) = v68;
  result = __swift_project_boxed_opaque_existential_1(&v129, MEMORY[0x277CC9318]);
  v69 = *result;
  v70 = result[1];
  v71 = v70 >> 62;
  if ((v70 >> 62) > 1)
  {
    if (v71 != 2)
    {
      *&v126[6] = 0;
      *v126 = 0;
      v72 = v126;
      goto LABEL_76;
    }

    v73 = *(v69 + 16);
    *(&v118 + 1) = *(v69 + 24);
    result = sub_26C008E9C();
    if (result)
    {
      v74 = result;
      result = sub_26C008ECC();
      if (__OFSUB__(v73, result))
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v75 = v73;
      v76 = v74 + v73 - result;
    }

    else
    {
      v75 = v73;
      v76 = 0;
    }

    v86 = *(&v118 + 1) - v75;
    if (!__OFSUB__(*(&v118 + 1), v75))
    {
      v87 = sub_26C008EBC();
      if (v87 >= v86)
      {
        v88 = v86;
      }

      else
      {
        v88 = v87;
      }

      v89 = &v76[v88];
      if (v76)
      {
        v84 = v89;
      }

      else
      {
        v84 = 0;
      }

      v85 = v76;
      goto LABEL_86;
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (!v71)
  {
    *v126 = *result;
    *&v126[8] = v70;
    v126[10] = BYTE2(v70);
    v126[11] = BYTE3(v70);
    v126[12] = BYTE4(v70);
    v126[13] = BYTE5(v70);
    v72 = &v126[BYTE6(v70)];
LABEL_76:
    sub_26BE77028(v126, v72, v132);
    goto LABEL_87;
  }

  v77 = v69;
  v78 = v69 >> 32;
  *(&v118 + 1) = v78 - v77;
  if (v78 < v77)
  {
    __break(1u);
    goto LABEL_114;
  }

  v79 = sub_26C008E9C();
  if (!v79)
  {
LABEL_68:
    v80 = *(&v118 + 1);
    v81 = sub_26C008EBC();
    if (v81 >= v80)
    {
      v82 = v80;
    }

    else
    {
      v82 = v81;
    }

    v83 = (v82 + v79);
    if (v79)
    {
      v84 = v83;
    }

    else
    {
      v84 = 0;
    }

    v85 = v79;
LABEL_86:
    sub_26BE77028(v85, v84, v132);
    a1 = v119;
LABEL_87:
    v90 = v132[0];
    __swift_destroy_boxed_opaque_existential_1(&v129);
    sub_26BF8ED18(v90, *(&v90 + 1));
    sub_26BE00258(v90, *(&v90 + 1));
    sub_26BE108C0();
    v91 = sub_26BEE62D4();
    v92 = v120;
    v93 = v123;
    if ((v91 & 0x100) != 0)
    {
      sub_26BE01600();
      swift_allocError();
      *v95 = 1;
      swift_willThrow();
    }

    else
    {
      a1 = &v129;
      if (!v91)
      {
        *&v118 = 0;
        *(&v118 + 1) = 0x3000000000000000;
        goto LABEL_94;
      }

      if (v91 == 1)
      {
        sub_26BE03DC0(&v129);
        v118 = v129;
        if ((~*(&v129 + 1) & 0x3000000000000000) != 0)
        {
          v132[0] = v118;
          sub_26BE04890(v118, *(&v118 + 1));
          v94 = MLS.Credential.rawValue.getter();
          MLS.Identity.Credential.init(serializedCredential:)(v94, v114, &v129);
LABEL_110:
          sub_26BE7162C(v118, *(&v118 + 1));
          v97 = *(&v129 + 1);
          v96 = v129;
LABEL_95:
          v98 = sub_26BEE62D4();
          if ((v98 & 0x100) != 0)
          {
            sub_26BE01600();
            swift_allocError();
            *v101 = 1;
            swift_willThrow();
          }

          else
          {
            v116 = v97;
            v117 = v96;
            if (!v98)
            {
              a1[28] = 0u;
              a1[29] = 0u;
              a1[26] = 0u;
              a1[27] = 0u;
              a1[24] = 0u;
              a1[25] = 0u;
              a1[23] = 0u;
              goto LABEL_103;
            }

            if (v98 == 1)
            {
              sub_26BEB9B44(v132);
LABEL_103:
              sub_26BE295A0(v119, &v129);
              v102 = v120;
              v103 = *(v120 + 16);
              v104 = v124;
              v103(v13, v125, v124);
              v103(v122, v123, v104);
              sub_26BE038A8(v133, v128);
              v106 = v116;
              v105 = v117;
              v127[0] = v117;
              v127[1] = v116;
              sub_26BF91180(v132, v126);
              v115[0] = *(v121 + 656);
              v115[1] = v121 + 656;
              sub_26BE2958C(v105, v106);
              v21 = (v115[0])(&v129, v13, v122, v128, v127, v126);
              sub_26BE7162C(v118, *(&v118 + 1));
              sub_26BE7162C(v105, v106);
              sub_26BE00258(a2, a3);
              sub_26BF911F0(v132);
              __swift_destroy_boxed_opaque_existential_1(v133);
              v107 = *(v102 + 8);
              v108 = v124;
              v107(v123, v124);
              v107(v125, v108);
              sub_26BE00258(v134, v135);

              sub_26BE29710(v119);
              v109 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
              swift_beginAccess();
              *(v21 + v109) = 1;
              v110 = v21 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
              swift_beginAccess();
              if (*(v110 + 32))
              {
                v111 = *(v110 + 104);
                *(v110 + 104) = v21;
              }

              swift_endAccess();

              goto LABEL_16;
            }

            sub_26BE01600();
            swift_allocError();
            *v112 = 5;
            swift_willThrow();
            v97 = v116;
            v96 = v117;
          }

          sub_26BE7162C(v118, *(&v118 + 1));
          sub_26BE7162C(v96, v97);
          sub_26BE00258(a2, a3);
          __swift_destroy_boxed_opaque_existential_1(v133);
          v21 = *(v120 + 8);
          v113 = v124;
          (v21)(v123, v124);
          (v21)(v125, v113);
          goto LABEL_24;
        }

LABEL_94:
        v96 = 0;
        v129 = xmmword_26C00DA50;
        v97 = 0x3000000000000000;
        goto LABEL_95;
      }

      sub_26BE01600();
      swift_allocError();
      *v99 = 5;
      swift_willThrow();
      a1 = v119;
    }

    v100 = v124;
    sub_26BE00258(a2, a3);
    __swift_destroy_boxed_opaque_existential_1(v133);
    v21 = *(v92 + 8);
    (v21)(v93, v100);
    (v21)(v125, v100);
    goto LABEL_10;
  }

  result = sub_26C008ECC();
  if (!__OFSUB__(v77, result))
  {
    v79 += v77 - result;
    goto LABEL_68;
  }

LABEL_116:
  __break(1u);
  return result;
}

uint64_t sub_26BF8FDE4()
{
  v30 = *MEMORY[0x277D85DE8];
  v0 = sub_26C00926C();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v18 = HIBYTE(v0);
  v19 = v2 >> 8;
  v20 = v2 >> 16;
  v21 = v2 >> 24;
  v22 = HIDWORD(v2);
  v23 = v2 >> 40;
  v24 = HIWORD(v2);
  v25 = HIBYTE(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26C013360;
  *(v10 + 32) = v1;
  *(v10 + 33) = v4;
  *(v10 + 34) = v5;
  *(v10 + 35) = v6;
  *(v10 + 36) = v7;
  *(v10 + 37) = v8;
  *(v10 + 38) = v9;
  *(v10 + 39) = v18;
  *(v10 + 40) = v3;
  *(v10 + 41) = v19;
  *(v10 + 42) = v20;
  *(v10 + 43) = v21;
  *(v10 + 44) = v22;
  *(v10 + 45) = v23;
  *(v10 + 46) = v24;
  *(v10 + 47) = v25;
  v26 = 16;
  v28 = MEMORY[0x277D838B0];
  v29 = MEMORY[0x277CC9C18];
  v27[0] = &v26;
  v27[1] = v27;
  v11 = __swift_project_boxed_opaque_existential_1(v27, MEMORY[0x277D838B0]);
  v13 = *v11;
  v12 = v11[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v27);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  v28 = v14;
  v29 = sub_26BF91328();
  v27[0] = v10;
  v15 = *(*__swift_project_boxed_opaque_existential_1(v27, v14) + 16);

  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v27);

  v16 = *MEMORY[0x277D85DE8];
  return 17;
}

uint64_t MLS.Client.ClientStorageVersion.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_26BF90010@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_26BF90058(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v93 = *MEMORY[0x277D85DE8];
  v6 = sub_26C00928C();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v69 - v11;
  *&v82 = 0x100000000000000;
  v91 = MEMORY[0x277D838B0];
  v92 = MEMORY[0x277CC9C18];
  *&v89 = &v82;
  *(&v89 + 1) = &v82 + 8;
  v13 = __swift_project_boxed_opaque_existential_1(&v89, MEMORY[0x277D838B0]);
  v15 = *v13;
  v14 = v13[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v89);
  swift_beginAccess();
  v16 = *(a1 + 280);
  v17 = *(a1 + 288);

  v18 = sub_26BF3016C();
  if (!v3)
  {
    v20 = v18;
    v70 = v10;
    v71 = v4;
    v21 = v73;
    v72 = a1;

    if (!__OFADD__(v20, 8))
    {
      v69 = v20 + 8;
      v22 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
      v23 = v72;
      swift_beginAccess();
      v24 = v21;
      v25 = *(v21 + 16);
      v25(v12, v23 + v22, v6);
      sub_26BF8FDE4();
      v26 = *(v24 + 8);
      v27 = v12;
      v73 = v24 + 8;
      v28 = v26;
      v26(v27, v6);
      v29 = v69 + 17;
      if (__OFADD__(v69, 17))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v30 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyUUID;
      v31 = v72;
      swift_beginAccess();
      v32 = v31 + v30;
      v33 = v70;
      v25(v70, v32, v6);
      sub_26BF8FDE4();
      v28(v33, v6);
      v34 = __OFADD__(v29, 17);
      v35 = v29 + 17;
      if (v34)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v36 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
      v37 = v72;
      swift_beginAccess();
      sub_26BE038A8(v37 + v36, &v89);
      v39 = sub_26BE136C4(&v89);
      __swift_destroy_boxed_opaque_existential_1(&v89);
      v40 = v35 + v39;
      if (__OFADD__(v35, v39))
      {
LABEL_33:
        __break(1u);
      }

      swift_beginAccess();
      v41 = *(v37 + 32);
      if ((~v41 & 0x3000000000000000) != 0)
      {
        goto LABEL_15;
      }

      LOBYTE(v82) = 0;
      v91 = MEMORY[0x277D838B0];
      v92 = MEMORY[0x277CC9C18];
      *&v89 = &v82;
      *(&v89 + 1) = &v82 + 1;
      v42 = __swift_project_boxed_opaque_existential_1(&v89, MEMORY[0x277D838B0]);
      v44 = *v42;
      v43 = v42[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v89);
      v41 = 0;
      v45 = 0x3000000000000000;
      v46 = v40 + 1;
      if (!__OFADD__(v40, 1))
      {
        do
        {
          v40 = v45;
          v47 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
          swift_beginAccess();
          sub_26BF91180(v37 + v47, &v89);
          sub_26BF91180(&v89, &v75);
          if (v77)
          {
            v85 = v78;
            v86 = v79;
            v87 = v80;
            v88 = v81;
            v82 = v75;
            v83 = v76;
            v84 = v77;
            v74 = 1;
            *(&v76 + 1) = MEMORY[0x277D838B0];
            *&v77 = MEMORY[0x277CC9C18];
            *&v75 = &v74;
            *(&v75 + 1) = &v75;
            v48 = __swift_project_boxed_opaque_existential_1(&v75, MEMORY[0x277D838B0]);
            v50 = *v48;
            v49 = v48[1];
            sub_26C00908C();
            __swift_destroy_boxed_opaque_existential_1(&v75);
            v51 = sub_26BEB8E9C(&v82);
            v52 = 0;
            sub_26BE7162C(v41, v40);
            sub_26BE2BA24(&v82);
            sub_26BF911F0(&v89);
            v54 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              __break(1u);
LABEL_15:
              v52 = *(v37 + 24);
              *&v82 = v52;
              *(&v82 + 1) = v41;
              sub_26BE2958C(v52, v41);
              sub_26BE04890(v52, v41);
              result = MLS.Identity.Credential.serializedRepresentation.getter();
              goto LABEL_20;
            }
          }

          else
          {
            v55 = MEMORY[0x277D838B0];
            v56 = MEMORY[0x277CC9C18];
            v52 = &v75;
            sub_26BF911F0(&v75);
            LOBYTE(v75) = 0;
            *(&v83 + 1) = v55;
            *&v84 = v56;
            *&v82 = &v75;
            *(&v82 + 1) = &v75 + 1;
            v57 = __swift_project_boxed_opaque_existential_1(&v82, v55);
            v59 = *v57;
            v58 = v57[1];
            sub_26C00908C();
            __swift_destroy_boxed_opaque_existential_1(&v82);
            sub_26BE7162C(v41, v40);
            sub_26BF911F0(&v89);
            v54 = 1;
          }

          result = v46 + v54;
          if (!__OFADD__(v46, v54))
          {
            goto LABEL_7;
          }

          __break(1u);
LABEL_20:
          v60 = result;
          v61 = v53;
          v62 = 0;
          v63 = v53 >> 62;
          if ((v53 >> 62) > 1)
          {
            if (v63 != 2)
            {
              goto LABEL_26;
            }

            v62 = *(result + 16);
          }

          else
          {
            if (!v63)
            {
              goto LABEL_26;
            }

            v62 = result;
          }

          sub_26BE00608(result, v53);
LABEL_26:
          *&v89 = v60;
          *(&v89 + 1) = v61;
          v90 = v62;
          sub_26BE03DC0(&v75);
          sub_26BE7162C(v52, v41);
          sub_26BE00258(v60, v61);
          sub_26BE7162C(v52, v41);
          sub_26BE00258(v89, *(&v89 + 1));
          v45 = *(&v75 + 1);
          v41 = v75;
          LOBYTE(v82) = 1;
          v91 = MEMORY[0x277D838B0];
          v92 = MEMORY[0x277CC9C18];
          *&v89 = &v82;
          *(&v89 + 1) = &v82 + 1;
          v64 = __swift_project_boxed_opaque_existential_1(&v89, MEMORY[0x277D838B0]);
          v65 = *v64;
          v66 = v64[1];
          sub_26BE04890(v41, v45);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v89);
          v89 = __PAIR128__(v45, v41);
          v67 = sub_26BE03BF4(&v89);
          result = sub_26BE0489C(v41, v45);
          v68 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            __break(1u);
            return result;
          }

          v37 = v72;
          v46 = v40 + v68;
        }

        while (!__OFADD__(v40, v68));
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_7:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.Client.Client.__allocating_init(configuration:clientUUID:)(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v4 = sub_26C00928C();
  v3[51] = v4;
  v5 = *(v4 - 8);
  v3[52] = v5;
  v6 = *(v5 + 64) + 15;
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF90890, 0, 0);
}

uint64_t sub_26BF90890()
{
  v1 = v0[48];
  v2 = v1[23];
  v3 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[55] = v6;
  *v6 = v0;
  v6[1] = sub_26BF909C0;
  v7 = v0[49];

  return v9(v7, v2, v3);
}

uint64_t sub_26BF909C0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 440);
  v8 = *v3;
  v4[56] = a1;
  v4[57] = a2;
  v4[58] = v2;

  if (v2)
  {
    v6 = sub_26BF910E8;
  }

  else
  {
    v6 = sub_26BF90AD8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF90AD8()
{
  v74 = v0;
  v1 = *(v0 + 456);
  if (v1 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_9:
      sub_26BE136AC(*(v0 + 448), *(v0 + 456));
      goto LABEL_11;
    }

    v3 = *(v0 + 448);
    if (*(v3 + 16) == *(v3 + 24))
    {
LABEL_11:
      if (qword_28045DF40 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 416);
      v4 = *(v0 + 424);
      v6 = *(v0 + 408);
      v7 = *(v0 + 392);
      v8 = sub_26C009A5C();
      __swift_project_value_buffer(v8, qword_280478E70);
      (*(v5 + 16))(v4, v7, v6);
      v9 = sub_26C009A3C();
      v10 = sub_26C00AA1C();
      v11 = os_log_type_enabled(v9, v10);
      v13 = *(v0 + 448);
      v12 = *(v0 + 456);
      v15 = *(v0 + 416);
      v14 = *(v0 + 424);
      v16 = *(v0 + 408);
      v17 = *(v0 + 392);
      if (v11)
      {
        v71 = *(v0 + 448);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v73[0] = v19;
        *v18 = 136315138;
        sub_26BF91258();
        v67 = v12;
        v69 = v17;
        v20 = sub_26C00AEFC();
        v22 = v21;
        v23 = *(v15 + 8);
        v23(v14, v16);
        v24 = sub_26BE29740(v20, v22, v73);

        *(v18 + 4) = v24;
        _os_log_impl(&dword_26BDFE000, v9, v10, "Could not find client with UUID %s in storage)", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x26D69A4E0](v19, -1, -1);
        MEMORY[0x26D69A4E0](v18, -1, -1);

        sub_26BE136AC(v71, v67);
        v23(v69, v16);
      }

      else
      {

        sub_26BE136AC(v13, v12);
        v25 = *(v15 + 8);
        v25(v17, v16);
        v25(v14, v16);
      }

      v26 = 0;
LABEL_17:
      v28 = *(v0 + 424);
      v27 = *(v0 + 432);
      sub_26BE29710(*(v0 + 384));

      v29 = *(v0 + 8);

      return v29(v26);
    }

    goto LABEL_20;
  }

  if (v2)
  {
    v3 = *(v0 + 448);
    if (v3 == v3 >> 32)
    {
      goto LABEL_11;
    }

LABEL_20:
    sub_26BE2E408(v3, *(v0 + 456));
    v1 = *(v0 + 456);
    goto LABEL_21;
  }

  if ((v1 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  v31 = *(v0 + 464);
  v32 = *(v0 + 448);
  v33 = *(v0 + 400);
  sub_26BE295A0(*(v0 + 384), v0 + 16);
  sub_26BE00608(v32, v1);
  v34 = MLS.Client.Client.__allocating_init(configuration:rawValue:)((v0 + 16), v32, v1);
  if (!v31)
  {
    v26 = v34;
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 432);
    v44 = *(v0 + 408);
    v45 = *(v0 + 416);
    v46 = *(v0 + 392);
    v47 = sub_26C009A5C();
    __swift_project_value_buffer(v47, qword_280478E70);
    (*(v45 + 16))(v43, v46, v44);
    v48 = sub_26C009A3C();
    v49 = sub_26C00AA1C();
    v50 = os_log_type_enabled(v48, v49);
    v52 = *(v0 + 448);
    v51 = *(v0 + 456);
    v53 = *(v0 + 432);
    v55 = *(v0 + 408);
    v54 = *(v0 + 416);
    v56 = *(v0 + 392);
    if (v50)
    {
      v70 = *(v0 + 448);
      v57 = swift_slowAlloc();
      v72 = v56;
      v73[0] = swift_slowAlloc();
      v58 = v73[0];
      *v57 = 136315138;
      sub_26BF91258();
      v66 = v51;
      v68 = v55;
      v59 = sub_26C00AEFC();
      v60 = v55;
      v62 = v61;
      v63 = *(v54 + 8);
      v63(v53, v60);
      v64 = sub_26BE29740(v59, v62, v73);

      *(v57 + 4) = v64;
      _os_log_impl(&dword_26BDFE000, v48, v49, "Loaded client with UUID %s from storage)", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x26D69A4E0](v58, -1, -1);
      MEMORY[0x26D69A4E0](v57, -1, -1);

      sub_26BE136AC(v70, v66);
      sub_26BE136AC(v70, v66);
      v63(v72, v68);
    }

    else
    {

      sub_26BE136AC(v52, v51);
      sub_26BE136AC(v52, v51);
      v65 = *(v54 + 8);
      v65(v56, v55);
      v65(v53, v55);
    }

    goto LABEL_17;
  }

  v36 = *(v0 + 448);
  v35 = *(v0 + 456);
  *(v0 + 376) = *(v0 + 400);
  swift_getMetatypeMetadata();
  v37 = sub_26C00A4FC();
  sub_26BE826C4(v37, v38, v36, v35);

  swift_willThrow();
  sub_26BE136AC(v36, v35);
  sub_26BE136AC(v36, v35);
  v40 = *(v0 + 424);
  v39 = *(v0 + 432);
  v41 = *(v0 + 384);
  (*(*(v0 + 416) + 8))(*(v0 + 392), *(v0 + 408));
  sub_26BE29710(v41);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_26BF910E8()
{
  v1 = v0[58];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[48];
  (*(v0[52] + 8))(v0[49], v0[51]);
  sub_26BE29710(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF91180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E460, &qword_26C0206D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BF911F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E460, &qword_26C0206D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BF91258()
{
  result = qword_28045E450;
  if (!qword_28045E450)
  {
    sub_26C00928C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E450);
  }

  return result;
}

unint64_t sub_26BF912B4()
{
  result = qword_28045FCC8;
  if (!qword_28045FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FCC8);
  }

  return result;
}

unint64_t sub_26BF91328()
{
  result = qword_28045E440;
  if (!qword_28045E440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E228, &qword_26C00CDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E440);
  }

  return result;
}

uint64_t MLS.ExternalInitProposal.init(kemOutput:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MLS.UpdateProposal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v43 = *(a1 + 96);
  v44 = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v41 = *(a1 + 64);
  v42 = v7;
  v8 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v8;
  v9 = *(a2 + 80);
  v10 = *(a2 + 112);
  v51 = *(a2 + 96);
  v52 = v10;
  v11 = *(a2 + 16);
  v12 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v12;
  v13 = *(a2 + 48);
  v14 = *(a2 + 80);
  v49 = *(a2 + 64);
  v50 = v14;
  v15 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v15;
  v16 = *(a1 + 112);
  v35 = v43;
  v36 = v16;
  v31 = v39;
  v32 = v6;
  v33 = v41;
  v34 = v2;
  v29 = v38[0];
  v30 = v4;
  v17 = *(a2 + 112);
  v26 = v51;
  v27 = v17;
  v22 = v47;
  v23 = v13;
  v24 = v49;
  v25 = v9;
  v45 = *(a1 + 128);
  v53 = *(a2 + 128);
  v37 = *(a1 + 128);
  v28 = *(a2 + 128);
  v20 = v46[0];
  v21 = v11;
  sub_26BE00758(v38, v56);
  sub_26BE00758(v46, v56);
  v18 = _s8SwiftMLS0B0O8LeafNodeV2eeoiySbAE_AEtFZ_0(&v29, &v20);
  v54[6] = v26;
  v54[7] = v27;
  v55 = v28;
  v54[2] = v22;
  v54[3] = v23;
  v54[4] = v24;
  v54[5] = v25;
  v54[0] = v20;
  v54[1] = v21;
  sub_26BE00854(v54);
  v56[6] = v35;
  v56[7] = v36;
  v57 = v37;
  v56[2] = v31;
  v56[3] = v32;
  v56[4] = v33;
  v56[5] = v34;
  v56[0] = v29;
  v56[1] = v30;
  sub_26BE00854(v56);
  return v18 & 1;
}

uint64_t sub_26BF914FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v43 = *(a1 + 96);
  v44 = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v41 = *(a1 + 64);
  v42 = v7;
  v8 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v8;
  v9 = *(a2 + 80);
  v10 = *(a2 + 112);
  v51 = *(a2 + 96);
  v52 = v10;
  v11 = *(a2 + 16);
  v12 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v12;
  v13 = *(a2 + 48);
  v14 = *(a2 + 80);
  v49 = *(a2 + 64);
  v50 = v14;
  v15 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v15;
  v16 = *(a1 + 112);
  v35 = v43;
  v36 = v16;
  v31 = v39;
  v32 = v6;
  v33 = v41;
  v34 = v2;
  v29 = v38[0];
  v30 = v4;
  v17 = *(a2 + 112);
  v26 = v51;
  v27 = v17;
  v22 = v47;
  v23 = v13;
  v24 = v49;
  v25 = v9;
  v45 = *(a1 + 128);
  v53 = *(a2 + 128);
  v37 = *(a1 + 128);
  v28 = *(a2 + 128);
  v20 = v46[0];
  v21 = v11;
  sub_26BE00758(v38, v56);
  sub_26BE00758(v46, v56);
  v18 = _s8SwiftMLS0B0O8LeafNodeV2eeoiySbAE_AEtFZ_0(&v29, &v20);
  v54[6] = v26;
  v54[7] = v27;
  v55 = v28;
  v54[2] = v22;
  v54[3] = v23;
  v54[4] = v24;
  v54[5] = v25;
  v54[0] = v20;
  v54[1] = v21;
  sub_26BE00854(v54);
  v56[6] = v35;
  v56[7] = v36;
  v57 = v37;
  v56[2] = v31;
  v56[3] = v32;
  v56[4] = v33;
  v56[5] = v34;
  v56[0] = v29;
  v56[1] = v30;
  sub_26BE00854(v56);
  return v18 & 1;
}

uint64_t sub_26BF91664@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v5 = v3;
  v6 = a2;
  v8 = *a1;
  v9 = *(a1 + 2);
  LODWORD(v10) = *(a1 + 12);
  v11 = *(a1 + 4);
  v177 = *(a1 + 3);
  v178 = v11;
  v12 = *(a1 + 9);
  *v181 = *(a1 + 8);
  *&v181[16] = v12;
  v13 = *(a1 + 7);
  *v180 = *(a1 + 6);
  *&v180[16] = v13;
  v179 = *(a1 + 5);
  v14 = *(a1 + 2);
  v175 = *(a1 + 1);
  v176 = v14;
  v15 = *(v8 + 16);
  v105 = v9;
  if (!v15)
  {
LABEL_49:
    v16 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v182 = MEMORY[0x277D84F90];
LABEL_54:
    *&v157[16] = *&v180[16];
    *v158 = *v181;
    *&v158[16] = *&v181[16];
    v154 = v177;
    v155 = v178;
    *v157 = *v180;
    v156 = v179;
    v153 = v176;
    v152 = v175;
    if (sub_26BE59C80(&v152) == 1)
    {
      goto LABEL_59;
    }

    v65 = 0;
    v66 = *&v158[8];
    v67 = *&v158[24];
    v68 = *v158;
    v69 = *&v157[8];
    v70 = v157[24];
    v71 = v156;
    v72 = *v157;
    v73 = v155;
    v74 = v154;
    v75 = v153;
    v76 = v152;
LABEL_56:
    v117 = v76;
    v118 = v75;
    v119 = v74;
    v120 = v73;
    v121 = v71;
    *v122 = v72;
    *&v122[8] = v69;
    v122[24] = v70;
    *v123 = v68;
    *&v123[8] = v66;
    *&v157[16] = *&v122[16];
    *v158 = *v123;
    v154 = v74;
    v155 = v73;
    *v157 = *v122;
    v156 = v71;
    v153 = v75;
    v152 = v76;
    *&v158[16] = *(&v66 + 1);
    *&v158[24] = v67;
    if (v10 || (v65 & 1) != 0)
    {
      v114 = *&v180[16];
      v115 = *v181;
      v116 = *&v181[16];
      v110 = v177;
      v111 = v178;
      v112 = v179;
      v113 = *v180;
      v108 = v175;
      v109 = v176;
      sub_26BF92720(&v108, &v163);
      sub_26BE59CF4(&v152);
LABEL_59:
      v77 = (*(v5 + *(type metadata accessor for MLS.GroupState() + 52)) == v105) & ~v10;
      result = sub_26BE5CC90();
      v78 = *(v6 + 24);
      *a3 = v16;
      *(a3 + 8) = v106;
      v79 = v182;
      *(a3 + 16) = v107;
      *(a3 + 24) = v79;
      *(a3 + 32) = (result & 1) == 0;
      *(a3 + 40) = v78;
      *(a3 + 48) = v77;
      return result;
    }

    LODWORD(v131) = v105;
    v114 = *&v180[16];
    v115 = *v181;
    v116 = *&v181[16];
    v110 = v177;
    v111 = v178;
    v112 = v179;
    v113 = *v180;
    v108 = v175;
    v109 = v176;
    sub_26BF92720(&v108, &v163);
    sub_26BFEDF98(&v131, &v136);
    if (v4)
    {
      sub_26BE59CF4(&v152);
LABEL_74:
    }

    if (!*(&v138 + 1))
    {

      sub_26BE2E258(&v136, &qword_28045E698, &unk_26C0204F0);
      sub_26BE01654();
      swift_allocError();
      *v91 = 8;
      v91[112] = 0;
      swift_willThrow();
      return sub_26BE59CF4(&v152);
    }

    v148 = v136;
    v149 = v137;
    v150 = v138;
    v151 = v139;
    sub_26BE2DB68(&v148, v147);
    v169 = *&v122[16];
    v170 = *v123;
    *&v171 = *&v123[16];
    v165 = v119;
    v166 = v120;
    v168 = *v122;
    v167 = v121;
    v84 = *v5;
    v164 = v118;
    v163 = v117;
    if ((v84 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v145 = v84 != 1;
      sub_26BE00758(&v117, &v136);
      sub_26BF34320(&v145, v146);
      v142 = v169;
      v143 = v170;
      v144 = v171;
      v138 = v165;
      v139 = v166;
      v140 = v167;
      v141 = v168;
      v136 = v163;
      v137 = v164;
      sub_26BE00854(&v136);
      sub_26BE2DB68(v146, v135);
      sub_26BE2DA9C(v147, &v131);
      sub_26BE2DA9C(v135, v134 + 8);
      sub_26BF7ED2C(&v131, &v124);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_84:
        v93 = *(v182 + 2);
        v92 = *(v182 + 3);
        if (v93 >= v92 >> 1)
        {
          v182 = sub_26BEECFC4((v92 > 1), v93 + 1, 1, v182);
        }

        sub_26BE59CF4(&v152);
        sub_26BF7ED88(&v131);
        sub_26BE2DAF8(v135);
        sub_26BE2DBC4(v146);
        sub_26BE2DAF8(v147);
        sub_26BE2DBC4(&v148);
        v94 = v182;
        *(v182 + 2) = v93 + 1;
        v95 = &v94[112 * v93];
        v97 = v125;
        v96 = v126;
        *(v95 + 2) = v124;
        *(v95 + 3) = v97;
        *(v95 + 4) = v96;
        v98 = v130;
        v100 = v127;
        v99 = v128;
        *(v95 + 7) = v129;
        *(v95 + 8) = v98;
        *(v95 + 5) = v100;
        *(v95 + 6) = v99;
        goto LABEL_59;
      }
    }

    v182 = sub_26BEECFC4(0, *(v182 + 2) + 1, 1, v182);
    goto LABEL_84;
  }

  v101 = v10;
  v103 = a3;
  a3 = 0;
  v104 = 0;
  v16 = MEMORY[0x277D84F90];
  v106 = MEMORY[0x277D84F90];
  v107 = MEMORY[0x277D84F90];
  v182 = MEMORY[0x277D84F90];
LABEL_3:
  v10 = v8 + 32 + 200 * a3++;
  while (1)
  {
    v152 = *v10;
    v17 = *(v10 + 16);
    v18 = *(v10 + 32);
    v19 = *(v10 + 48);
    v156 = *(v10 + 64);
    v155 = v19;
    v154 = v18;
    v153 = v17;
    v20 = *(v10 + 80);
    v21 = *(v10 + 96);
    v22 = *(v10 + 112);
    *&v158[16] = *(v10 + 128);
    *v158 = v22;
    *&v157[16] = v21;
    *v157 = v20;
    v23 = *(v10 + 144);
    v24 = *(v10 + 160);
    v25 = *(v10 + 176);
    v162 = *(v10 + 192);
    v161 = v25;
    v160 = v24;
    v159 = v23;
    v26 = *v10;
    v27 = *(v10 + 16);
    v28 = *(v10 + 32);
    v166 = *(v10 + 48);
    v165 = v28;
    v164 = v27;
    v163 = v26;
    v29 = *(v10 + 64);
    v30 = *(v10 + 80);
    v31 = *(v10 + 96);
    v170 = *(v10 + 112);
    v169 = v31;
    v168 = v30;
    v167 = v29;
    v32 = *(v10 + 128);
    v33 = *(v10 + 144);
    v34 = *(v10 + 160);
    v174 = *(v10 + 176);
    v173 = v34;
    v172 = v33;
    v171 = v32;
    v35 = sub_26BE5CD48(&v163);
    if (v35 <= 1)
    {
      break;
    }

    if (v35 == 2)
    {
      LODWORD(v131) = *sub_26BE5CDC8(&v163);
      sub_26BE5CDE4(&v152, &v108);
      sub_26BE5CDE4(&v152, &v108);
      sub_26BFEDF98(&v131, &v136);
      if (v4)
      {
        goto LABEL_66;
      }

      if (!*(&v138 + 1))
      {

        sub_26BE2E258(&v136, &qword_28045E698, &unk_26C0204F0);
        sub_26BE01654();
        swift_allocError();
        *v81 = 15;
        v81[112] = 0;
        swift_willThrow();
        return sub_26BE5CD74(&v152);
      }

      v117 = v136;
      v118 = v137;
      v119 = v138;
      *&v120 = v139;
      sub_26BE2DB68(&v117, &v108);
      if ((v162 & 1) != 0 || HIWORD(v161) != 61444)
      {
        sub_26BE2DA9C(&v108, &v136);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_26BEED0EC(0, *(v106 + 2) + 1, 1, v106);
        }

        v6 = *(v106 + 2);
        v61 = *(v106 + 3);
        v47 = v6 + 1;
        if (v6 >= v61 >> 1)
        {
          v106 = sub_26BEED0EC((v61 > 1), v6 + 1, 1, v106);
        }

        sub_26BE5CD74(&v152);
        sub_26BE2DAF8(&v108);
        sub_26BE2DBC4(&v117);
        v48 = v106;
      }

      else
      {
        sub_26BE2DA9C(&v108, &v136);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_26BEED0EC(0, *(v107 + 2) + 1, 1, v107);
        }

        v6 = *(v107 + 2);
        v46 = *(v107 + 3);
        v47 = v6 + 1;
        if (v6 >= v46 >> 1)
        {
          v107 = sub_26BEED0EC((v46 > 1), v6 + 1, 1, v107);
        }

        sub_26BE5CD74(&v152);
        sub_26BE2DAF8(&v108);
        sub_26BE2DBC4(&v117);
        v48 = v107;
      }

      *(v48 + 2) = v47;
      v56 = &v48[56 * v6];
      v58 = v137;
      v57 = v138;
      v59 = v139;
      v60 = v136;
LABEL_41:
      *(v56 + 10) = v59;
      *(v56 + 3) = v58;
      *(v56 + 4) = v57;
      *(v56 + 2) = v60;
      goto LABEL_42;
    }

    if (v35 == 5)
    {
      sub_26BE5CDC8(&v163);
      if (v15 != a3)
      {
        v104 = 1;
        if (a3 < *(v8 + 16))
        {
          goto LABEL_3;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      goto LABEL_51;
    }

LABEL_42:
    if (v15 == a3)
    {
      if ((v104 & 1) == 0)
      {
        v6 = a2;
        a3 = v103;
        LODWORD(v10) = v101;
        goto LABEL_54;
      }

LABEL_51:
      v114 = *&v180[16];
      v115 = *v181;
      v116 = *&v181[16];
      v110 = v177;
      v111 = v178;
      v112 = v179;
      v113 = *v180;
      v108 = v175;
      v109 = v176;
      if (sub_26BE59C80(&v108) == 1)
      {

        sub_26BE01654();
        swift_allocError();
        *v63 = 8;
        v63[112] = 0;
        return swift_willThrow();
      }

      v142 = v114;
      v143 = v115;
      v144 = v116;
      v138 = v110;
      v139 = v111;
      v140 = v112;
      v141 = v113;
      v82 = *v5;
      v136 = v108;
      v137 = v109;
      v6 = a2;
      a3 = v103;
      LODWORD(v10) = v101;
      if ((v82 - 3) >= 0xFFFFFFFE)
      {
        LOBYTE(v147[0]) = v82 != 1;
        sub_26BE7ABF0(&v175, &v117);
        sub_26BE00758(&v108, &v117);
        sub_26BF34320(v147, &v124);
        if (v4)
        {
          sub_26BE2E258(&v175, &qword_28045E8B0, &qword_26C012560);
          *&v122[16] = v142;
          *v123 = v143;
          *&v123[16] = v144;
          v119 = v138;
          v120 = v139;
          v121 = v140;
          *v122 = v141;
          v117 = v136;
          v118 = v137;
          v80 = &v117;
          goto LABEL_70;
        }

        *&v122[16] = v142;
        *v123 = v143;
        *&v123[16] = v144;
        v119 = v138;
        v120 = v139;
        v121 = v140;
        *v122 = v141;
        v117 = v136;
        v118 = v137;
        sub_26BE00854(&v117);
        v131 = v124;
        v132 = v125;
        v133 = v126;
        *&v134[0] = v127;
        sub_26BE2DA9C(&v131, &v148);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_79;
        }

        goto LABEL_90;
      }

LABEL_89:
      __break(1u);
LABEL_90:
      v16 = sub_26BEED0EC(0, *(v16 + 2) + 1, 1, v16);
LABEL_79:
      v86 = *(v16 + 2);
      v85 = *(v16 + 3);
      if (v86 >= v85 >> 1)
      {
        v16 = sub_26BEED0EC((v85 > 1), v86 + 1, 1, v16);
      }

      sub_26BE2E258(&v175, &qword_28045E8B0, &qword_26C012560);
      sub_26BE2DAF8(&v131);
      *(v16 + 2) = v86 + 1;
      v87 = &v16[56 * v86];
      v88 = v148;
      v89 = v149;
      v90 = v150;
      *(v87 + 10) = v151;
      *(v87 + 3) = v89;
      *(v87 + 4) = v90;
      *(v87 + 2) = v88;
      v76 = v175;
      v75 = v176;
      v74 = v177;
      v73 = v178;
      v71 = v179;
      v72 = *v180;
      v69 = *&v180[8];
      v70 = v180[24];
      v66 = *&v181[8];
      v65 = 1;
      v68 = *v181;
      v67 = *&v181[24];
      goto LABEL_56;
    }

    v10 += 200;
    if (a3++ >= *(v8 + 16))
    {
      goto LABEL_48;
    }
  }

  if (!v35)
  {
    v49 = sub_26BE5CDC8(&v163);
    v50 = *(v49 + 120);
    *v122 = *(v49 + 104);
    *&v122[16] = v50;
    *v123 = *(v49 + 136);
    *&v123[16] = *(v49 + 152);
    v51 = *(v49 + 56);
    v118 = *(v49 + 40);
    v119 = v51;
    v52 = *(v49 + 88);
    v120 = *(v49 + 72);
    v121 = v52;
    v117 = *(v49 + 24);
    v53 = *v5;
    if ((v53 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v54 = v49;
    LOBYTE(v124) = v53 != 1;
    sub_26BE5CDE4(&v152, &v108);
    sub_26BE5CDE4(&v152, &v108);
    sub_26BE00758(v54 + 24, &v108);
    sub_26BF34320(&v124, &v136);
    if (v4)
    {
      sub_26BE5CD74(&v152);
      sub_26BE5CD74(&v152);
      v114 = *&v122[16];
      v115 = *v123;
      *&v116 = *&v123[16];
      v110 = v119;
      v111 = v120;
      v112 = v121;
      v113 = *v122;
      v108 = v117;
      v109 = v118;
      v80 = &v108;
LABEL_70:
      sub_26BE00854(v80);
      goto LABEL_74;
    }

    v114 = *&v122[16];
    v115 = *v123;
    *&v116 = *&v123[16];
    v110 = v119;
    v111 = v120;
    v112 = v121;
    v113 = *v122;
    v108 = v117;
    v109 = v118;
    sub_26BE00854(&v108);
    sub_26BE2DB68(&v136, &v131);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_26BEED0EC(0, *(v16 + 2) + 1, 1, v16);
    }

    v6 = *(v16 + 2);
    v55 = *(v16 + 3);
    if (v6 >= v55 >> 1)
    {
      v16 = sub_26BEED0EC((v55 > 1), v6 + 1, 1, v16);
    }

    sub_26BE5CD74(&v152);
    sub_26BE5CD74(&v152);
    sub_26BE2DBC4(&v136);
    *(v16 + 2) = v6 + 1;
    v56 = &v16[56 * v6];
    v58 = v132;
    v57 = v133;
    v59 = *&v134[0];
    v60 = v131;
    goto LABEL_41;
  }

  if (v35 != 1)
  {
    goto LABEL_42;
  }

  v36 = sub_26BE5CDC8(&v163);
  if (BYTE12(v161) == 1)
  {
    sub_26BE5CDE4(&v152, &v108);
    sub_26BE5CDE4(&v152, &v108);
    sub_26BE5CDE4(&v152, &v108);

    goto LABEL_72;
  }

  v6 = v36;
  LODWORD(v136) = DWORD2(v161);
  sub_26BE5CDE4(&v152, &v108);
  sub_26BE5CDE4(&v152, &v108);
  sub_26BE5CDE4(&v152, &v108);
  sub_26BFEDF98(&v136, &v117);
  if (v4)
  {
    sub_26BE5CD74(&v152);
    sub_26BE5CD74(&v152);
LABEL_66:
    sub_26BE5CD74(&v152);
    goto LABEL_74;
  }

  if (*(&v119 + 1))
  {
    v124 = v117;
    v125 = v118;
    v126 = v119;
    *&v127 = v120;
    sub_26BE2DB68(&v124, &v148);
    *v122 = *(v6 + 80);
    *&v122[16] = *(v6 + 96);
    *v123 = *(v6 + 112);
    *&v123[16] = *(v6 + 128);
    v118 = *(v6 + 16);
    v119 = *(v6 + 32);
    v120 = *(v6 + 48);
    v121 = *(v6 + 64);
    v117 = *v6;
    v37 = *v5;
    if ((v37 - 3) < 0xFFFFFFFE)
    {
      goto LABEL_88;
    }

    v135[0] = v37 != 1;
    sub_26BE5CDE4(&v152, &v108);
    sub_26BF34320(v135, v147);
    v114 = *&v122[16];
    v115 = *v123;
    *&v116 = *&v123[16];
    v110 = v119;
    v111 = v120;
    v112 = v121;
    v113 = *v122;
    v108 = v117;
    v109 = v118;
    sub_26BE00854(&v108);
    sub_26BE2DB68(v147, v146);
    sub_26BE2DA9C(&v148, &v136);
    sub_26BE2DA9C(v146, &v139 + 8);
    sub_26BF7ED2C(&v136, &v131);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v182 = sub_26BEECFC4(0, *(v182 + 2) + 1, 1, v182);
    }

    v6 = *(v182 + 2);
    v38 = *(v182 + 3);
    if (v6 >= v38 >> 1)
    {
      v182 = sub_26BEECFC4((v38 > 1), v6 + 1, 1, v182);
    }

    sub_26BE5CD74(&v152);
    sub_26BE5CD74(&v152);
    sub_26BE5CD74(&v152);
    sub_26BF7ED88(&v136);
    sub_26BE2DAF8(v146);
    sub_26BE2DBC4(v147);
    sub_26BE2DAF8(&v148);
    sub_26BE2DBC4(&v124);
    v39 = v182;
    *(v182 + 2) = v6 + 1;
    v40 = &v39[112 * v6];
    v42 = v132;
    v41 = v133;
    *(v40 + 2) = v131;
    *(v40 + 3) = v42;
    *(v40 + 4) = v41;
    v43 = v134[3];
    v45 = v134[0];
    v44 = v134[1];
    *(v40 + 7) = v134[2];
    *(v40 + 8) = v43;
    *(v40 + 5) = v45;
    *(v40 + 6) = v44;
    goto LABEL_42;
  }

  sub_26BE2E258(&v117, &qword_28045E698, &unk_26C0204F0);
LABEL_72:
  sub_26BE01654();
  swift_allocError();
  *v83 = 8;
  v83[112] = 0;
  swift_willThrow();
  sub_26BE5CD74(&v152);
  sub_26BE5CD74(&v152);
  return sub_26BE5CD74(&v152);
}

double sub_26BF9277C@<D0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26BEBB414(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26BE6DC08();
      v11 = v13;
    }

    *a2 = *(*(v11 + 56) + 16 * v8);
    sub_26C000898(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_26C00DA60;
  }

  return result;
}

double sub_26BF92810@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26BEBB414(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26BE6DD70();
      v11 = v13;
    }

    sub_26BE2E410((*(v11 + 56) + 40 * v8), a2);
    sub_26C000A2C(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26BF928AC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26BEBB208(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26BE6EE0C();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for MLS.KeyAndNonce(0);
    v20 = *(v13 - 8);
    sub_26BF97370(v12 + *(v20 + 72) * v8, a2, type metadata accessor for MLS.KeyAndNonce);
    sub_26C001714(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for MLS.KeyAndNonce(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t MLS.GroupKeySource.init(ciphersuiteID:groupSize:encryptionSecret:)@<X0>(unsigned __int16 *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v8 = sub_26C009C8C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  result = MEMORY[0x28223BE20](v8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if ((v14 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v15 = *a2;
    v57 = *a1;
    v16 = v14 != 1;
    LOBYTE(v58) = v14 != 1;
    v17 = MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v58, &v52);
    v49 = v52;
    v47 = v54;
    v48 = v53;
    v46 = v55;
    v50 = v56;
    v18 = v9[2];
    v18(v13, v51, v8, v17);
    LOBYTE(v58) = v16;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v58, &v52);
    v45 = v52;
    v43 = v54;
    v44 = v53;
    v19 = v56;
    v42 = v55;
    v41 = UInt32.nextPowerOfTwo()();
    v58 = v15;
    MLS.NodeIndex.init(forRoot:)(&v58, &v52);
    if (v4)
    {
      v20 = v9[1];
      v20(v51, v8);
      v20(v13, v8);
    }

    else
    {
      v38 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA88, &qword_26C01D988);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA90, &qword_26C01D990);
      v40 = 0;
      v22 = v21 - 8;
      v23 = *(*(v21 - 8) + 72);
      v24 = *(*(v21 - 8) + 80);
      v39 = v19;
      v25 = (v24 + 32) & ~v24;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_26C011280;
      v27 = (v26 + v25);
      v28 = *(v22 + 56);
      LODWORD(v22) = v38;
      *v27 = v38;
      (v18)(v27 + v28, v13, v8);
      v29 = sub_26C004CEC(v26);
      swift_setDeallocating();
      sub_26BE2E258(v27, &qword_28045FA90, &qword_26C01D990);
      swift_deallocClassInstance();
      v30 = v9[1];
      v30(v13, v8);
      v31 = sub_26C004EC8(MEMORY[0x277D84F90]);
      result = (v30)(v51, v8);
      v32 = v57;
      *a4 = v57;
      *(a4 + 8) = v49;
      v33 = v47;
      *(a4 + 16) = v48;
      *(a4 + 24) = v33;
      v34 = v50;
      *(a4 + 32) = v46;
      *(a4 + 40) = v34;
      *(a4 + 48) = v32;
      *(a4 + 52) = v41;
      *(a4 + 56) = v22;
      *(a4 + 64) = v45;
      v35 = v43;
      *(a4 + 72) = v44;
      *(a4 + 80) = v35;
      v36 = v39;
      *(a4 + 88) = v42;
      *(a4 + 96) = v36;
      *(a4 + 104) = v29;
      *(a4 + 112) = v31;
    }
  }

  return result;
}

uint64_t sub_26BF92D78(unsigned __int16 *a1)
{
  v207 = *MEMORY[0x277D85DE8];
  v181 = type metadata accessor for MLS.KeyAndNonce(0);
  v4 = *(v181 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v181);
  v7 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s11HashRatchetVMa(0);
  v167 = *(v8 - 8);
  v9 = *(v167 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v10) = *a1;
  v12 = *(a1 + 4);
  v193 = *(a1 + 3);
  v194 = v12;
  v13 = *(a1 + 6);
  v195 = *(a1 + 5);
  v196 = v13;
  v169 = *(a1 + 14);
  LOWORD(v199) = bswap32(v10) >> 16;
  *(&v204 + 1) = MEMORY[0x277D838B0];
  *&v205 = MEMORY[0x277CC9C18];
  *&v203 = &v199;
  *(&v203 + 1) = &v199 + 2;
  v14 = __swift_project_boxed_opaque_existential_1(&v203, MEMORY[0x277D838B0]);
  v16 = *v14;
  v15 = v14[1];
  sub_26BF972C0(&v193, &v189);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v203);
  v189 = v193;
  v190 = v194;
  v191 = v195;
  v192 = v196;
  v17 = sub_26BF29310(&v189);
  if (v2)
  {
    v203 = v189;
    v204 = v190;
    v205 = v191;
    v206 = v192;
    result = sub_26BF9731C(&v203);
    goto LABEL_115;
  }

  v19 = v17;
  v168 = v8;
  v170 = v11;
  v203 = v189;
  v204 = v190;
  v205 = v191;
  v206 = v192;
  sub_26BF9731C(&v203);
  if (__OFADD__(v19, 2))
  {
    goto LABEL_141;
  }

  v186 = 0;
  v156 = v19 + 2;
  v20 = v169;
  v197 = bswap64(*(v169 + 16));
  v201 = MEMORY[0x277D838B0];
  v21 = MEMORY[0x277CC9C18];
  v202 = MEMORY[0x277CC9C18];
  v199 = &v197;
  v200 = &v198;
  v22 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277D838B0]);
  v24 = *v22;
  v23 = v22[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v199);
  v25 = *(v20 + 16);
  v187 = v7;
  v177 = v4;
  v178 = v1;
  if (v25)
  {
    v26 = sub_26BE32800(v25, 0);
    v185 = sub_26BE33224(&v199, (v26 + 32), v25, v20);

    sub_26BE2DA4C();
    v27 = v167;
    if (v185 != v25)
    {
      goto LABEL_142;
    }

    v4 = v177;
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
    v27 = v167;
  }

  v199 = v26;
  v28 = v186;
  sub_26BF964AC(&v199);
  v186 = v28;
  if (v28)
  {
LABEL_146:

    __break(1u);
    return result;
  }

  v29 = 0;
  v30 = *(v199 + 2);
  v166 = v199;
  v161 = v199 + 32;
  v160 = (&v197 + 1);
  v179 = (&v197 + 4);
  v159 = (&v197 + 2);
  v180 = (v188 + 1);
  v171 = (v188 + 4);
  v172 = (v188 + 2);
  v157 = v30;
  v158 = &v198;
  v31 = 8;
  v32 = v169;
  do
  {
    if (v29 == v30)
    {

      result = v156 + v31;
      if (!__OFADD__(v156, v31))
      {
        goto LABEL_115;
      }

LABEL_145:
      __break(1u);
    }

    if (v29 >= *(v166 + 2))
    {
      goto LABEL_135;
    }

    if (!*(v32 + 16))
    {
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
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
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v164 = v29;
    v33 = &v161[8 * v29];
    v34 = *v33;
    v35 = *(v33 + 1);
    v36 = sub_26BEBB480(v34 | (v35 << 32));
    if ((v37 & 1) == 0)
    {
      goto LABEL_137;
    }

    v165 = v31;
    v38 = *(v32 + 56) + *(v27 + 72) * v36;
    v39 = v170;
    sub_26BF97060(v38, v170, _s11HashRatchetVMa);
    if (v34)
    {
      v40 = 2;
    }

    else
    {
      v40 = 1;
    }

    LOBYTE(v197) = v40;
    v41 = v21;
    v42 = MEMORY[0x277D838B0];
    v201 = MEMORY[0x277D838B0];
    v202 = v41;
    v199 = &v197;
    v200 = v160;
    v43 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277D838B0]);
    v45 = *v43;
    v44 = v43[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v199);
    LODWORD(v197) = bswap32(v35);
    v201 = v42;
    v202 = v41;
    v199 = &v197;
    v200 = v179;
    v46 = __swift_project_boxed_opaque_existential_1(&v199, v42);
    v48 = *v46;
    v47 = v46[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v199);
    LOWORD(v197) = bswap32(*v39) >> 16;
    v201 = v42;
    v202 = v41;
    v199 = &v197;
    v200 = v159;
    v49 = __swift_project_boxed_opaque_existential_1(&v199, v42);
    v51 = *v49;
    v50 = v49[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v199);
    v52 = v39 + *(v168 + 20);
    v53 = v186;
    sub_26C009C3C();
    v55 = v197;
    v54 = v198;
    v56 = v198 >> 62;
    v186 = v53;
    if ((v198 >> 62) > 1)
    {
      v57 = 0;
      if (v56 != 2)
      {
        goto LABEL_31;
      }

      v59 = *(v197 + 16);
      v58 = *(v197 + 24);
      v60 = __OFSUB__(v58, v59);
      v57 = v58 - v59;
      if (v60)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if (!v56)
      {
        v57 = BYTE6(v198);
        goto LABEL_27;
      }

      if (__OFSUB__(HIDWORD(v197), v197))
      {
        goto LABEL_143;
      }

      v57 = HIDWORD(v197) - v197;
    }

    if ((v57 & 0x8000000000000000) != 0)
    {
      goto LABEL_118;
    }

LABEL_27:
    if (v57 <= 0x3F)
    {
LABEL_31:
      v163 = v57;
      LOBYTE(v188[0]) = v57;
      v61 = MEMORY[0x277D838B0];
      v201 = MEMORY[0x277D838B0];
      v21 = MEMORY[0x277CC9C18];
      v202 = MEMORY[0x277CC9C18];
      v199 = v188;
      v200 = v180;
      v66 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277D838B0]);
      v68 = *v66;
      v67 = v66[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v199);
      v65 = 7;
      goto LABEL_33;
    }

    v163 = v57;
    if (v57 >> 14)
    {
      if (v57 >> 30)
      {
LABEL_118:
        sub_26BE01600();
        swift_allocError();
        *v155 = 3;
        swift_willThrow();
        sub_26BE00258(v55, v54);

        goto LABEL_114;
      }

      LODWORD(v188[0]) = bswap32(v57 | 0x80000000);
      v61 = MEMORY[0x277D838B0];
      v201 = MEMORY[0x277D838B0];
      v21 = MEMORY[0x277CC9C18];
      v202 = MEMORY[0x277CC9C18];
      v199 = v188;
      v200 = v171;
      v62 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277D838B0]);
      v64 = *v62;
      v63 = v62[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v199);
      v65 = 10;
    }

    else
    {
      LOWORD(v188[0]) = bswap32(v57 | 0x4000) >> 16;
      v61 = MEMORY[0x277D838B0];
      v201 = MEMORY[0x277D838B0];
      v21 = MEMORY[0x277CC9C18];
      v202 = MEMORY[0x277CC9C18];
      v199 = v188;
      v200 = v172;
      v69 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277D838B0]);
      v71 = *v69;
      v70 = v69[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v199);
      v65 = 8;
    }

LABEL_33:
    v162 = v65;
    v201 = MEMORY[0x277CC9318];
    v202 = MEMORY[0x277CC9300];
    v199 = v55;
    v200 = v54;
    v72 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277CC9318]);
    v74 = *v72;
    v73 = v72[1];
    sub_26BE00608(v55, v54);
    v75 = v186;
    sub_26BE121A0(v74, v73);
    v186 = v75;
    __swift_destroy_boxed_opaque_existential_1(&v199);
    sub_26BE00258(v55, v54);
    v76 = v168;
    v77 = v170;
    LODWORD(v197) = bswap32(*(v170 + *(v168 + 24)));
    v201 = v61;
    v202 = v21;
    v199 = &v197;
    v200 = v179;
    v78 = __swift_project_boxed_opaque_existential_1(&v199, v61);
    v80 = *v78;
    v79 = v78[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v199);
    v81 = *(v77 + *(v76 + 28));
    v197 = bswap64(*(v81 + 16));
    v201 = v61;
    v202 = v21;
    v199 = &v197;
    v200 = v158;
    v82 = __swift_project_boxed_opaque_existential_1(&v199, v61);
    v84 = *v82;
    v83 = v82[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v199);
    v85 = *(v81 + 16);
    if (v85)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2A8, &unk_26C0245F0);
      v86 = swift_allocObject();
      v87 = _swift_stdlib_malloc_size(v86);
      v88 = v87 - 32;
      if (v87 < 32)
      {
        v88 = v87 - 29;
      }

      *(v86 + 16) = v85;
      *(v86 + 24) = 2 * (v88 >> 2);
      v89 = sub_26BE33124(&v199, (v86 + 32), v85, v81);

      sub_26BE2DA4C();
      if (v89 != v85)
      {
        goto LABEL_138;
      }

      v90 = v81;
      v4 = v177;
      v91 = MEMORY[0x277D838B0];
      v21 = MEMORY[0x277CC9C18];
    }

    else
    {
      v91 = v61;
      v86 = MEMORY[0x277D84F90];
      v90 = v81;
    }

    v199 = v86;
    v92 = v186;
    sub_26BF96518(&v199);
    v93 = v181;
    v186 = v92;
    if (v92)
    {
      goto LABEL_146;
    }

    v94 = v199;
    v176 = *(v199 + 2);
    if (v176)
    {
      v95 = 0;
      v96 = 8;
      v174 = v90;
      v175 = v199;
      while (1)
      {
        if (v95 >= *(v94 + 2))
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
          goto LABEL_136;
        }

        if (!*(v90 + 16))
        {
          goto LABEL_120;
        }

        v184 = v95;
        v185 = v96;
        v97 = *&v94[4 * v95 + 32];
        v98 = sub_26BEBB208(v97);
        if ((v99 & 1) == 0)
        {
          goto LABEL_121;
        }

        sub_26BF97060(*(v90 + 56) + *(v4 + 72) * v98, v187, type metadata accessor for MLS.KeyAndNonce);
        LODWORD(v197) = bswap32(v97);
        v201 = v91;
        v202 = v21;
        v199 = &v197;
        v200 = v179;
        v100 = __swift_project_boxed_opaque_existential_1(&v199, v91);
        v102 = *v100;
        v101 = v100[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v199);
        v103 = v186;
        sub_26C009C3C();
        v96 = v197;
        v4 = v198;
        v104 = v198 >> 62;
        if ((v198 >> 62) > 1)
        {
          v105 = 0;
          if (v104 != 2)
          {
            goto LABEL_58;
          }

          v107 = *(v197 + 16);
          v106 = *(v197 + 24);
          v60 = __OFSUB__(v106, v107);
          v105 = v106 - v107;
          if (v60)
          {
            goto LABEL_124;
          }

          if ((v105 & 0x8000000000000000) != 0)
          {
            goto LABEL_113;
          }
        }

        else if (v104)
        {
          v108 = HIDWORD(v197) - v197;
          if (__OFSUB__(HIDWORD(v197), v197))
          {
            goto LABEL_123;
          }

          v105 = v108;
          if ((v108 & 0x8000000000000000) != 0)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v105 = BYTE6(v198);
        }

        if (v105 <= 0x3F)
        {
LABEL_58:
          v109 = v103;
          v183 = v105;
          LOBYTE(v188[0]) = v105;
          v201 = v91;
          v202 = v21;
          v199 = v188;
          v200 = v180;
          v114 = __swift_project_boxed_opaque_existential_1(&v199, v91);
          v116 = *v114;
          v115 = v114[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v199);
          v113 = 5;
          goto LABEL_60;
        }

        v183 = v105;
        if (v105 >> 14)
        {
          if (v105 >> 30)
          {
            goto LABEL_113;
          }

          v109 = v103;
          LODWORD(v188[0]) = bswap32(v105 | 0x80000000);
          v201 = v91;
          v202 = v21;
          v199 = v188;
          v200 = v171;
          v110 = __swift_project_boxed_opaque_existential_1(&v199, v91);
          v112 = *v110;
          v111 = v110[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v199);
          v113 = 8;
        }

        else
        {
          v109 = v103;
          LOWORD(v188[0]) = bswap32(v105 | 0x4000) >> 16;
          v201 = v91;
          v202 = v21;
          v199 = v188;
          v200 = v172;
          v117 = __swift_project_boxed_opaque_existential_1(&v199, v91);
          v119 = *v117;
          v118 = v117[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v199);
          v113 = 6;
        }

LABEL_60:
        v201 = MEMORY[0x277CC9318];
        v202 = MEMORY[0x277CC9300];
        v199 = v96;
        v200 = v4;
        v120 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277CC9318]);
        v121 = *v120;
        v122 = v120[1];
        v123 = v122 >> 62;
        v182 = v113;
        if ((v122 >> 62) > 1)
        {
          if (v123 == 2)
          {
            v124 = *(v121 + 16);
            v125 = *(v121 + 24);
            sub_26BE00608(v96, v4);
            if (sub_26C008E9C() && __OFSUB__(v124, sub_26C008ECC()))
            {
              goto LABEL_131;
            }

            if (__OFSUB__(v125, v124))
            {
              goto LABEL_126;
            }

LABEL_72:
            sub_26C008EBC();
            sub_26C00908C();
            sub_26BE00258(v96, v4);
            v93 = v181;
            goto LABEL_75;
          }

          memset(v188, 0, 14);
        }

        else
        {
          if (v123)
          {
            v126 = v121;
            if (v121 >> 32 < v121)
            {
              goto LABEL_125;
            }

            sub_26BE00608(v96, v4);
            if (sub_26C008E9C() && __OFSUB__(v126, sub_26C008ECC()))
            {
              goto LABEL_132;
            }

            goto LABEL_72;
          }

          v188[0] = v121;
          LOWORD(v188[1]) = v122;
          BYTE2(v188[1]) = BYTE2(v122);
          BYTE3(v188[1]) = BYTE3(v122);
          BYTE4(v188[1]) = BYTE4(v122);
          BYTE5(v188[1]) = BYTE5(v122);
        }

        sub_26C00908C();
LABEL_75:
        __swift_destroy_boxed_opaque_existential_1(&v199);
        v127 = &v187[*(v93 + 20)];
        sub_26C009C3C();
        v96 = v197;
        v4 = v198;
        v128 = v198 >> 62;
        v91 = MEMORY[0x277D838B0];
        v186 = v109;
        if ((v198 >> 62) > 1)
        {
          v129 = 0;
          if (v128 != 2)
          {
            goto LABEL_88;
          }

          v131 = *(v197 + 16);
          v130 = *(v197 + 24);
          v129 = v130 - v131;
          if (__OFSUB__(v130, v131))
          {
            goto LABEL_127;
          }

          if ((v129 & 0x8000000000000000) != 0)
          {
            goto LABEL_113;
          }
        }

        else if (v128)
        {
          v132 = HIDWORD(v197) - v197;
          if (__OFSUB__(HIDWORD(v197), v197))
          {
            goto LABEL_128;
          }

          v129 = v132;
          if ((v132 & 0x8000000000000000) != 0)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v129 = BYTE6(v198);
        }

        if (v129 <= 0x3F)
        {
LABEL_88:
          LOBYTE(v188[0]) = v129;
          v201 = MEMORY[0x277D838B0];
          v202 = MEMORY[0x277CC9C18];
          v199 = v188;
          v200 = v180;
          v137 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277D838B0]);
          v139 = *v137;
          v138 = v137[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v199);
          v136 = 1;
          goto LABEL_90;
        }

        if (v129 >> 14)
        {
          if (v129 >> 30)
          {
            goto LABEL_113;
          }

          LODWORD(v188[0]) = bswap32(v129 | 0x80000000);
          v201 = MEMORY[0x277D838B0];
          v202 = MEMORY[0x277CC9C18];
          v199 = v188;
          v200 = v171;
          v133 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277D838B0]);
          v135 = *v133;
          v134 = v133[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v199);
          v136 = 4;
        }

        else
        {
          LOWORD(v188[0]) = bswap32(v129 | 0x4000) >> 16;
          v201 = MEMORY[0x277D838B0];
          v202 = MEMORY[0x277CC9C18];
          v199 = v188;
          v200 = v172;
          v140 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277D838B0]);
          v142 = *v140;
          v141 = v140[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v199);
          v136 = 2;
        }

LABEL_90:
        v201 = MEMORY[0x277CC9318];
        v202 = MEMORY[0x277CC9300];
        v199 = v96;
        v200 = v4;
        v143 = __swift_project_boxed_opaque_existential_1(&v199, MEMORY[0x277CC9318]);
        v144 = *v143;
        v145 = v143[1];
        v146 = v145 >> 62;
        if ((v145 >> 62) > 1)
        {
          if (v146 == 2)
          {
            v147 = *(v144 + 16);
            v173 = *(v144 + 24);
            sub_26BE00608(v96, v4);
            if (sub_26C008E9C() && __OFSUB__(v147, sub_26C008ECC()))
            {
              goto LABEL_133;
            }

            if (__OFSUB__(v173, v147))
            {
              goto LABEL_130;
            }

            sub_26C008EBC();
            sub_26C00908C();
            sub_26BE00258(v96, v4);
            v91 = MEMORY[0x277D838B0];
            goto LABEL_104;
          }

          memset(v188, 0, 14);
        }

        else
        {
          if (v146)
          {
            v173 = v136;
            v148 = v144;
            if (v144 >> 32 < v144)
            {
              goto LABEL_129;
            }

            sub_26BE00608(v96, v4);
            if (sub_26C008E9C() && __OFSUB__(v148, sub_26C008ECC()))
            {
              goto LABEL_134;
            }

            sub_26C008EBC();
            sub_26C00908C();
            sub_26BE00258(v96, v4);
            v91 = MEMORY[0x277D838B0];
            v136 = v173;
            goto LABEL_104;
          }

          v188[0] = *v143;
          LOWORD(v188[1]) = v145;
          BYTE2(v188[1]) = BYTE2(v145);
          BYTE3(v188[1]) = BYTE3(v145);
          BYTE4(v188[1]) = BYTE4(v145);
          BYTE5(v188[1]) = BYTE5(v145);
        }

        sub_26C00908C();
LABEL_104:
        sub_26BF97000(v187, type metadata accessor for MLS.KeyAndNonce);
        __swift_destroy_boxed_opaque_existential_1(&v199);
        v149 = v182 + v183 + v136 + v129;
        v96 = v185 + v149;
        v93 = v181;
        v4 = v177;
        v90 = v174;
        if (__OFADD__(v185, v149))
        {
          goto LABEL_122;
        }

        v95 = v184 + 1;
        v94 = v175;
        v21 = MEMORY[0x277CC9C18];
        if (v176 == v184 + 1)
        {

          goto LABEL_108;
        }
      }
    }

    v96 = 8;
LABEL_108:
    v150 = v162 + v163 + v96;
    v27 = v167;
    v151 = v165;
    if (__OFADD__(v162 + v163, v96))
    {
      goto LABEL_139;
    }

    sub_26BF97000(v170, _s11HashRatchetVMa);
    v152 = v150 + 5;
    if (__OFADD__(v150, 5))
    {
      goto LABEL_140;
    }

    v29 = v164 + 1;
    v60 = __OFADD__(v151, v152);
    v31 = v151 + v152;
    v32 = v169;
    v30 = v157;
  }

  while (!v60);
  __break(1u);
LABEL_113:
  sub_26BE01600();
  swift_allocError();
  *v153 = 3;
  swift_willThrow();

  sub_26BE00258(v96, v4);
  sub_26BF97000(v187, type metadata accessor for MLS.KeyAndNonce);
LABEL_114:
  result = sub_26BF97000(v170, _s11HashRatchetVMa);
LABEL_115:
  v154 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26BF93F90(_WORD *a1@<X8>)
{
  v4 = _s11HashRatchetVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = sub_26BEE6180();
  if ((v12 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    return;
  }

  v13 = v12;
  sub_26BF29B74(v60);
  if (!v2)
  {
    v56 = v60[0];
    v57 = v60[1];
    v58 = v60[2];
    v59 = v60[3];
    v14 = sub_26BEEE594();
    if (v15)
    {
      sub_26BE01600();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();
LABEL_28:
      sub_26BF9731C(&v56);
    }

    else
    {
      v18 = v14;
      v61 = v13;
      v46 = a1;
      v19 = sub_26C004EC8(MEMORY[0x277D84F90]);
      if (v18)
      {
        v47 = v1;
        v49 = v9;
        v48 = v11;
        while (1)
        {
          v20 = sub_26BEE62D4();
          if ((v20 & 0x100) != 0)
          {
            goto LABEL_27;
          }

          v50 = v18;
          if (v20 == 2)
          {
            v62 = 1;
          }

          else
          {
            if (v20 != 1)
            {
              goto LABEL_27;
            }

            v62 = 0;
          }

          v21 = sub_26BEE6028();
          if ((v21 & 0x100000000) != 0)
          {
LABEL_27:
            sub_26BE01600();
            swift_allocError();
            *v44 = 1;
            swift_willThrow();

            goto LABEL_28;
          }

          v22 = v21;
          sub_26BFF9BFC(v11);
          v23 = v5;
          sub_26BF97060(v11, v9, _s11HashRatchetVMa);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = v19;
          v25 = v62 | (v22 << 32);
          v27 = sub_26BEBB480(v25);
          v28 = v19[2];
          v29 = (v26 & 1) == 0;
          v30 = v28 + v29;
          if (__OFADD__(v28, v29))
          {
            break;
          }

          v31 = v26;
          if (v19[3] >= v30)
          {
            v5 = v23;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_26BE6EA10();
            }
          }

          else
          {
            sub_26BE6B44C(v30, isUniquelyReferenced_nonNull_native);
            v32 = sub_26BEBB480(v25);
            if ((v31 & 1) != (v33 & 1))
            {
              goto LABEL_33;
            }

            v27 = v32;
            v5 = v23;
          }

          v19 = v52;
          if (v31)
          {
            v9 = v49;
            sub_26BF973D8(v49, v52[7] + *(v5 + 72) * v27);
            v11 = v48;
            sub_26BF97000(v48, _s11HashRatchetVMa);
          }

          else
          {
            v52[(v27 >> 6) + 8] |= 1 << v27;
            v34 = v19[6] + 8 * v27;
            *v34 = v62;
            *(v34 + 4) = v22;
            v9 = v49;
            sub_26BF97370(v49, v19[7] + *(v5 + 72) * v27, _s11HashRatchetVMa);
            v11 = v48;
            sub_26BF97000(v48, _s11HashRatchetVMa);
            v35 = v19[2];
            v36 = __OFADD__(v35, 1);
            v37 = v35 + 1;
            if (v36)
            {
              goto LABEL_31;
            }

            v19[2] = v37;
          }

          v18 = v50 - 1;
          if (v50 == 1)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
      }

      else
      {
LABEL_25:
        v38 = v61;
        v39 = v46;
        *v46 = v61;
        v40 = v57;
        *(v39 + 3) = v56;
        *(v39 + 4) = v40;
        v41 = v59;
        *(v39 + 5) = v58;
        *(v39 + 6) = v41;
        *(v39 + 14) = v19;
        if ((v38 - 3) >= 0xFFFFFFFE)
        {
          v51 = v38 != 1;
          MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v51, &v52);
          v42 = v54;
          v43 = v55;
          *(v39 + 8) = v52;
          *(v39 + 1) = v53;
          *(v39 + 4) = v42;
          *(v39 + 5) = v43;
          return;
        }
      }

      __break(1u);
LABEL_33:
      sub_26C00AF8C();
      __break(1u);
    }
  }
}

double static MLS.ReuseGuard.zero()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26C01F8F0;
  return result;
}

uint64_t sub_26BF94444(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = sub_26BE098EC(a1, a2);
  v8 = v7;
  v9 = 0;
  v10 = a4 >> 62;
  while (2)
  {
    v47 = v6;
    v11 = 4;
    if (v9 > 4)
    {
      v11 = v9;
    }

    v49 = v11;
    v12 = v9;
    while (1)
    {
      if (v49 == v12)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v13 = *(a1 + v12);
      if (v10 > 1)
      {
        if (v10 != 2)
        {
          goto LABEL_72;
        }

        if (v12 < *(a3 + 16))
        {
          goto LABEL_58;
        }

        if (v12 >= *(a3 + 24))
        {
          goto LABEL_60;
        }

        v15 = sub_26C008E9C();
        if (!v15)
        {
          goto LABEL_74;
        }

        v16 = v15;
        v17 = sub_26C008ECC();
        v18 = v12 - v17;
        if (__OFSUB__(v12, v17))
        {
          goto LABEL_62;
        }

        goto LABEL_21;
      }

      if (v10)
      {
        if (v12 < a3 || v12 >= a3 >> 32)
        {
          goto LABEL_59;
        }

        v19 = sub_26C008E9C();
        if (!v19)
        {
          goto LABEL_73;
        }

        v16 = v19;
        v20 = sub_26C008ECC();
        v18 = v12 - v20;
        if (__OFSUB__(v12, v20))
        {
          goto LABEL_61;
        }

LABEL_21:
        v14 = *(v16 + v18);
        goto LABEL_22;
      }

      if (v12 >= BYTE6(a4))
      {
        goto LABEL_57;
      }

      v50 = a3;
      LOWORD(v51) = a4;
      BYTE2(v51) = BYTE2(a4);
      BYTE3(v51) = BYTE3(a4);
      BYTE4(v51) = BYTE4(a4);
      BYTE5(v51) = BYTE5(a4);
      v14 = *(&v50 + v12);
LABEL_22:
      v21 = v14 ^ v13;
      v22 = v8 >> 62;
      if (v8 >> 62 != 1)
      {
        break;
      }

      if (v12 >= v6 >> 32 || v9 < v6)
      {
        goto LABEL_55;
      }

      v23 = v8 & 0x3FFFFFFFFFFFFFFFLL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (sub_26C008E9C() && __OFSUB__(v6, sub_26C008ECC()))
        {
          goto LABEL_63;
        }

        v24 = sub_26C008EEC();
        v25 = *(v24 + 48);
        v26 = *(v24 + 52);
        swift_allocObject();
        v27 = sub_26C008E7C();

        v23 = v27;
      }

      sub_26C008E6C();
      v28 = sub_26C008E9C();
      if (!v28)
      {
        goto LABEL_71;
      }

      v29 = v28;
      v30 = sub_26C008ECC();
      v31 = v12 - v30;
      if (__OFSUB__(v12, v30))
      {
        goto LABEL_56;
      }

      ++v12;
      *(v29 + v31) = v21;
      v8 = v23 | 0x4000000000000000;
      LODWORD(v10) = a4 >> 62;
      if (v12 == 4)
      {
        goto LABEL_53;
      }
    }

    if (!v22)
    {
      v50 = v6;
      LOWORD(v51) = v8;
      BYTE2(v51) = BYTE2(v8);
      BYTE3(v51) = BYTE3(v8);
      BYTE4(v51) = BYTE4(v8);
      BYTE5(v51) = BYTE5(v8);
      BYTE6(v51) = BYTE6(v8);
      if (v12 < BYTE6(v8))
      {
        v9 = v12 + 1;
        *(&v50 + v12) = v21;
        v6 = v50;
        v8 = v46 & 0xF00000000000000 | v51 | ((WORD2(v51) | (BYTE6(v51) << 16)) << 32);
        v46 = v8;
        goto LABEL_52;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
    }

    if (v22 != 2)
    {
      goto LABEL_70;
    }

    if (v12 < *(v6 + 16))
    {
      goto LABEL_64;
    }

    if (v12 >= *(v6 + 24))
    {
      goto LABEL_66;
    }

    v32 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_47;
    }

    v33 = *(v6 + 16);
    v34 = *(v6 + 24);
    if (!sub_26C008E9C())
    {
      if (!__OFSUB__(v34, v33))
      {
        goto LABEL_46;
      }

      goto LABEL_68;
    }

    if (__OFSUB__(v33, sub_26C008ECC()))
    {
      goto LABEL_69;
    }

    if (__OFSUB__(v34, v33))
    {
      goto LABEL_68;
    }

LABEL_46:
    v35 = sub_26C008EEC();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = sub_26C008E7C();

    v32 = v38;
    v6 = v47;
LABEL_47:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = *(v6 + 16);
      v40 = *(v6 + 24);
      sub_26C00904C();
      v41 = swift_allocObject();
      *(v41 + 16) = v39;
      *(v41 + 24) = v40;

      v6 = v41;
    }

    sub_26C008E6C();
    result = sub_26C008E9C();
    if (result)
    {
      v43 = result;
      v44 = sub_26C008ECC();
      if (__OFSUB__(v12, v44))
      {
        goto LABEL_67;
      }

      v9 = v12 + 1;
      *(v43 + v12 - v44) = v21;
      v8 = v32 | 0x8000000000000000;
LABEL_52:
      LODWORD(v10) = a4 >> 62;
      if (v12 == 3)
      {
LABEL_53:
        v50 = v6;
        v51 = v8;
        result = sub_26C009C5C();
        v45 = *MEMORY[0x277D85DE8];
        return result;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BF949B8()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C00B07C();
  return sub_26C00B0CC();
}

uint64_t sub_26BF94A40()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C00B07C();
  return sub_26C00B0CC();
}

unsigned __int8 *sub_26BF94A8C@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_26BF94AAC(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t sub_26BF94AC4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_26C00B05C();
  sub_26C00B07C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

uint64_t sub_26BF94B2C()
{
  v1 = *(v0 + 4);
  *v0;
  sub_26C00B07C();
  return sub_26C00B09C();
}

uint64_t sub_26BF94B78()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_26C00B05C();
  sub_26C00B07C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

uint64_t sub_26BF94C08(uint64_t a1, uint64_t a2)
{
  v2 = *a2 & ~*a1;
  if (((*a1 ^ *a2) & 1) == 0)
  {
    v2 = *(a1 + 4) < *(a2 + 4);
  }

  return v2 & 1;
}

BOOL sub_26BF94C38(uint64_t a1, uint64_t a2)
{
  v2 = *a1 & ~*a2;
  if (((*a1 ^ *a2) & 1) == 0)
  {
    v2 = *(a2 + 4) < *(a1 + 4);
  }

  return (v2 & 1) == 0;
}

BOOL sub_26BF94C6C(uint64_t a1, uint64_t a2)
{
  v2 = *a2 & ~*a1;
  if (((*a1 ^ *a2) & 1) == 0)
  {
    v2 = *(a1 + 4) < *(a2 + 4);
  }

  return (v2 & 1) == 0;
}

uint64_t sub_26BF94CA0(uint64_t a1, uint64_t a2)
{
  v2 = *a1 & ~*a2;
  if (((*a1 ^ *a2) & 1) == 0)
  {
    v2 = *(a2 + 4) < *(a1 + 4);
  }

  return v2 & 1;
}

uint64_t sub_26BF94CD0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v158 = a3;
  v167 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E710, &unk_26C020E50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v146 = &v133 - v10;
  v151 = sub_26C009EDC();
  v152 = *(v151 - 8);
  v11 = v152[8];
  v12 = MEMORY[0x28223BE20](v151);
  v149 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v153 = &v133 - v14;
  v157 = sub_26C00A4EC();
  v15 = *(v157 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v157);
  v18 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26C009C8C();
  v20 = *(v19 - 8);
  v155 = v19;
  v156 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v144 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v147 = &v133 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v150 = &v133 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v154 = &v133 - v29;
  MEMORY[0x28223BE20](v28);
  v160 = &v133 - v30;
  v143 = _s11HashRatchetVMa(0);
  v159 = *(v143 - 8);
  v31 = v159[8];
  v32 = MEMORY[0x28223BE20](v143);
  v145 = (&v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v32);
  v148 = &v133 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v133 - v36;
  v38 = *a2;
  v39 = a1;
  v41 = v5 + 14;
  v40 = v5[14];
  if (!*(v40 + 16) || (v42 = v5, v43 = v38, v44 = sub_26BEBB480(v39 & 1 | (v38 << 32)), v38 = v43, v5 = v42, (v45 & 1) == 0))
  {
    *v162 = v38;
    v48 = v160;
    v49 = v38;
    result = sub_26BF280A8(v162, v160);
    if (v4)
    {
      goto LABEL_21;
    }

    v139 = v49;
    v138 = v39;
    v50 = v5[2];
    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v50 >> 16))
    {
      v141 = v5;
      v51 = v5[5];

      sub_26C00A4DC();
      v142 = sub_26C00A49C();
      v53 = v52;
      v56 = *(v15 + 8);
      v55 = v15 + 8;
      v54 = v56;
      v56(v18, v157);
      if (v53 >> 60 == 15)
      {
        sub_26BE01654();
        swift_allocError();
        *v57 = 5;
        v57[112] = 1;
        swift_willThrow();
        (*(v156 + 8))(v48, v155);
LABEL_20:

        goto LABEL_21;
      }

      v135 = v54;
      v140 = v51;
      v136 = v55;
      v137 = xmmword_26C00BBD0;
      v165 = xmmword_26C00BBD0;
      v166 = 0;
      v161 = bswap32(v50) >> 16;
      v58 = MEMORY[0x277D838B0];
      v163 = MEMORY[0x277D838B0];
      v164 = MEMORY[0x277CC9C18];
      *v162 = &v161;
      *&v162[8] = v162;
      v59 = __swift_project_boxed_opaque_existential_1(v162, MEMORY[0x277D838B0]);
      v61 = *v59;
      v60 = v59[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(v162);
      v62 = v53 >> 62;
      if ((v53 >> 62) > 1)
      {
        v63 = 0;
        if (v62 != 2)
        {
          goto LABEL_19;
        }

        v65 = *(v142 + 16);
        v64 = *(v142 + 24);
        v63 = v64 - v65;
        if (!__OFSUB__(v64, v65))
        {
          goto LABEL_19;
        }

        __break(1u);
      }

      else if (!v62)
      {
        v63 = BYTE6(v53);
        goto LABEL_19;
      }

      if (__OFSUB__(HIDWORD(v142), v142))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v63 = HIDWORD(v142) - v142;
LABEL_19:
      v66 = v53;
      sub_26BF30414(v63);
      sub_26BE11228(v142, v53);
      LOBYTE(v161) = 0;
      v163 = v58;
      v164 = MEMORY[0x277CC9C18];
      *v162 = &v161;
      *&v162[8] = &v161 + 1;
      v68 = __swift_project_boxed_opaque_existential_1(v162, v58);
      v70 = *v68;
      v69 = v68[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(v162);
      v163 = MEMORY[0x277CC9318];
      v164 = MEMORY[0x277CC9300];
      *v162 = v137;
      v71 = __swift_project_boxed_opaque_existential_1(v162, MEMORY[0x277CC9318]);
      sub_26BE121A0(*v71, v71[1]);
      v134 = 0;
      __swift_destroy_boxed_opaque_existential_1(v162);
      sub_26C009E6C();
      v72 = *(&v165 + 1) >> 62;
      if ((*(&v165 + 1) >> 62) > 1)
      {
        v73 = v141;
        if (v72 != 2)
        {
          goto LABEL_30;
        }

        v74 = *(v165 + 24);
      }

      else
      {
        v73 = v141;
        if (!v72)
        {
          goto LABEL_30;
        }

        v74 = v165 >> 32;
      }

      if (v74 < 0)
      {
        __break(1u);
      }

LABEL_30:
      v75 = sub_26C00909C();
      v77 = v76;
      v78 = v153;
      sub_26C009EBC();
      sub_26BE00258(v75, v77);
      sub_26BE136AC(v142, v66);
      v80 = (v152 + 1);
      v79 = v152[1];
      v79(v78, v151);
      sub_26BE00258(v165, *(&v165 + 1));

      v81 = *(v73 + 2);
      if ((v81 & 0x8000000000000000) == 0)
      {
        v153 = v79;
        if (!(v81 >> 16))
        {
          v82 = *(v73 + 5);

          sub_26C00A4DC();
          v83 = sub_26C00A49C();
          v85 = v84;
          v135(v18, v157);
          if (v85 >> 60 == 15)
          {
            sub_26BE01654();
            swift_allocError();
            *v86 = 5;
            v86[112] = 1;
            swift_willThrow();
            v87 = v155;
            v88 = *(v156 + 8);
            v88(v154, v155);
            v88(v160, v87);
            goto LABEL_20;
          }

          v165 = v137;
          v166 = 0;
          v161 = bswap32(v81) >> 16;
          v163 = MEMORY[0x277D838B0];
          v164 = MEMORY[0x277CC9C18];
          *v162 = &v161;
          *&v162[8] = v162;
          v89 = __swift_project_boxed_opaque_existential_1(v162, MEMORY[0x277D838B0]);
          v91 = *v89;
          v90 = v89[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(v162);
          v92 = v85 >> 62;
          v93 = v156;
          if ((v85 >> 62) > 1)
          {
            v94 = 0;
            if (v92 != 2 || (v96 = *(v83 + 16), v95 = *(v83 + 24), v94 = v95 - v96, !__OFSUB__(v95, v96)))
            {
LABEL_43:
              v152 = v80;
              v97 = v134;
              sub_26BF30414(v94);
              if (v97)
              {
                sub_26BE136AC(v83, v85);
                v98 = *(v93 + 8);
                v99 = v155;
                v98(v154, v155);
                v98(v160, v99);
                sub_26BE00258(v165, *(&v165 + 1));
                goto LABEL_20;
              }

              sub_26BE11228(v83, v85);
              LOBYTE(v161) = 0;
              v163 = MEMORY[0x277D838B0];
              v164 = MEMORY[0x277CC9C18];
              *v162 = &v161;
              *&v162[8] = &v161 + 1;
              v100 = __swift_project_boxed_opaque_existential_1(v162, MEMORY[0x277D838B0]);
              v102 = *v100;
              v101 = v100[1];
              sub_26C00908C();
              __swift_destroy_boxed_opaque_existential_1(v162);
              v163 = MEMORY[0x277CC9318];
              v164 = MEMORY[0x277CC9300];
              *v162 = v137;
              v103 = __swift_project_boxed_opaque_existential_1(v162, MEMORY[0x277CC9318]);
              sub_26BE121A0(*v103, v103[1]);
              __swift_destroy_boxed_opaque_existential_1(v162);
              sub_26C009E6C();
              v104 = *(&v165 + 1) >> 62;
              v133 = v41;
              if ((*(&v165 + 1) >> 62) > 1)
              {
                if (v104 != 2)
                {
                  goto LABEL_53;
                }

                v105 = *(v165 + 24);
              }

              else
              {
                if (!v104)
                {
                  goto LABEL_53;
                }

                v105 = v165 >> 32;
              }

              if (v105 < 0)
              {
                __break(1u);
              }

LABEL_53:
              v106 = sub_26C00909C();
              v108 = v107;
              v109 = v149;
              sub_26C009EBC();
              sub_26BE00258(v106, v108);
              sub_26BE136AC(v83, v85);
              (v153)(v109, v151);
              sub_26BE00258(v165, *(&v165 + 1));

              v110 = *v73;
              v112 = v155;
              v111 = v156;
              v113 = v156 + 16;
              v114 = v147;
              v157 = *(v156 + 16);
              v157(v147, v154, v155);
              v115 = v148;
              *v148 = v110;
              if ((v110 - 3) >= 0xFFFFFFFE)
              {
                LOBYTE(v165) = v110 != 1;
                MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v165, v162);
                v116 = v163;
                v117 = v164;
                v118 = v143;
                v119 = &v115[*(v143 + 32)];
                *v119 = v162[0];
                *(v119 + 8) = *&v162[8];
                *(v119 + 3) = v116;
                *(v119 + 4) = v117;
                v120 = v157;
                v157(&v115[v118[5]], v114, v112);
                *&v115[v118[6]] = 0;
                v121 = sub_26C0050B4(MEMORY[0x277D84F90]);
                v153 = *(v111 + 8);
                (v153)(v114, v112);
                *&v115[v118[7]] = v121;
                v122 = v146;
                sub_26BF97060(v115, v146, _s11HashRatchetVMa);
                v123 = v159[7];
                v159 += 7;
                v152 = v123;
                (v123)(v122, 0, 1, v118);
                v151 = v139 << 32;
                sub_26BE4D678(v122, v139 << 32);
                v124 = v113;
                v125 = *v141;
                v126 = v144;
                v156 = v124;
                v120(v144, v150, v112);
                v127 = v145;
                *v145 = v125;
                if ((v125 - 3) >= 0xFFFFFFFE)
                {
                  LOBYTE(v165) = v125 != 1;
                  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v165, v162);
                  v128 = v163;
                  v129 = v164;
                  v130 = v127 + v118[8];
                  *v130 = v162[0];
                  *(v130 + 8) = *&v162[8];
                  *(v130 + 24) = v128;
                  *(v130 + 32) = v129;
                  v157((v127 + v118[5]), v126, v112);
                  *(v127 + v118[6]) = 0;
                  v131 = sub_26C0050B4(MEMORY[0x277D84F90]);
                  v132 = v153;
                  (v153)(v126, v112);
                  *(v127 + v118[7]) = v131;
                  sub_26BF97060(v127, v122, _s11HashRatchetVMa);
                  (v152)(v122, 0, 1, v118);
                  sub_26BE4D678(v122, v151 | 1);
                  v132(v150, v112);
                  v132(v154, v112);
                  v132(v160, v112);
                  if (v138)
                  {
                    sub_26BF97000(v148, _s11HashRatchetVMa);
                    v46 = v127;
                  }

                  else
                  {
                    sub_26BF97000(v127, _s11HashRatchetVMa);
                    v46 = v148;
                  }

                  goto LABEL_4;
                }

LABEL_65:
                __break(1u);
              }

LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            __break(1u);
          }

          else if (!v92)
          {
            v94 = BYTE6(v85);
            goto LABEL_43;
          }

          if (!__OFSUB__(HIDWORD(v83), v83))
          {
            v94 = HIDWORD(v83) - v83;
            goto LABEL_43;
          }

LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        goto LABEL_61;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_60;
  }

  sub_26BF97060(*(v40 + 56) + v159[9] * v44, v37, _s11HashRatchetVMa);
  v46 = v37;
LABEL_4:
  result = sub_26BF97370(v46, v158, _s11HashRatchetVMa);
LABEL_21:
  v67 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF95BB0@<X0>(unsigned __int8 *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  if ((v3 - 2) < 2)
  {
    v9 = *a2;
    v5 = &v9;
    v6 = 0;
    return sub_26BF94CD0(v6, v5, a3);
  }

  if (v3 == 1)
  {
    v10 = *a2;
    v5 = &v10;
    v6 = 1;
    return sub_26BF94CD0(v6, v5, a3);
  }

  sub_26BE01654();
  swift_allocError();
  *v8 = v3;
  v8[112] = 12;
  return swift_willThrow();
}

uint64_t MLS.GroupKeySource.get(contentType:sender:generation:reuseGuard:)@<X0>(unsigned __int8 *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v76 = a3;
  v74 = a5;
  v10 = sub_26C009C8C();
  v11 = *(v10 - 8);
  v72 = v10;
  v73 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v71 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E710, &unk_26C020E50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v62 - v16;
  v69 = type metadata accessor for MLS.KeyAndNonce(0);
  v75 = *(v69 - 8);
  v17 = *(v75 + 64);
  v18 = MEMORY[0x28223BE20](v69);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v66 = &v62 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v62 - v23;
  v25 = _s11HashRatchetVMa(0);
  v67 = *(v25 - 8);
  v26 = *(v67 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v30 = *a2;
  v31 = v6;
  v32 = a4[1];
  v68 = *a4;
  v79 = v29;
  v78 = v30;
  v33 = v77;
  result = sub_26BF95BB0(&v79, &v78, v28);
  if (!v33)
  {
    v64 = v31;
    v65 = v24;
    LODWORD(v77) = v29;
    v62 = v30;
    v63 = v32;
    v35 = *(v25 + 28);
    v36 = *&v28[v35];
    v37 = v76;
    if (*(v36 + 16))
    {
      v38 = v25;
      v39 = sub_26BEBB208(v76);
      if (v40)
      {
        v41 = v65;
        v42 = v75;
LABEL_5:
        sub_26BF97060(*(v36 + 56) + *(v42 + 72) * v39, v41, type metadata accessor for MLS.KeyAndNonce);
        v43 = v74;
        sub_26BF97370(v41, v74, type metadata accessor for MLS.KeyAndNonce);
        v44 = v77;
        v45 = v72;
        v46 = v73;
        if ((v77 - 1) < 3)
        {
          v47 = qword_26C020E28[(v77 - 1)];
          v48 = v70;
          sub_26BF97060(v28, v70, _s11HashRatchetVMa);
          (*(v67 + 56))(v48, 0, 1, v38);
          v49 = sub_26BE4D678(v48, v47 | (v62 << 32));
          v50 = *(v69 + 20);
          MEMORY[0x28223BE20](v49);
          v51 = v63;
          *(&v62 - 2) = v68;
          *(&v62 - 1) = v51;
          v52 = v71;
          sub_26C009C3C();
          sub_26BF97000(v28, _s11HashRatchetVMa);
          return (*(v46 + 40))(v43 + v50, v52, v45);
        }

        sub_26BE01654();
        swift_allocError();
        *v58 = v44;
        v58[112] = 12;
        swift_willThrow();
        sub_26BF97000(v28, _s11HashRatchetVMa);
        v59 = type metadata accessor for MLS.KeyAndNonce;
        v60 = v43;
        return sub_26BF97000(v60, v59);
      }
    }

    v53 = *(v25 + 24);
    v54 = *&v28[v53];
    if (v54 <= v37)
    {
      v38 = v25;
      v42 = v75;
      do
      {
        sub_26BFF97B0(v20);
        sub_26BF97000(v20, type metadata accessor for MLS.KeyAndNonce);
      }

      while (*&v28[v53] <= v37);
      v36 = *&v28[v35];
      if (*(v36 + 16))
      {
        v39 = sub_26BEBB208(v37);
        if (v57)
        {
          v41 = v66;
          goto LABEL_5;
        }
      }

      sub_26BE01654();
      swift_allocError();
      if (v28[*(v38 + 32)])
      {
        v61 = 2;
      }

      else
      {
        v61 = 1;
      }

      *v55 = v61;
      v56 = 11;
    }

    else
    {
      sub_26BE01654();
      swift_allocError();
      *v55 = v37;
      v56 = 13;
      v37 = v54;
    }

    *(v55 + 4) = v37;
    *(v55 + 112) = v56;
    swift_willThrow();
    v59 = _s11HashRatchetVMa;
    v60 = v28;
    return sub_26BF97000(v60, v59);
  }

  return result;
}

uint64_t MLS.GroupKeySource.erase(contentType:sender:generation:)(unsigned __int8 *a1, unsigned int *a2, unsigned int a3)
{
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E710, &unk_26C020E50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E700, &qword_26C011368);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25[-v11];
  v13 = _s11HashRatchetVMa(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *a1;
  v19 = *a2;
  v29 = v18;
  v28 = v19;
  v20 = v27;
  result = sub_26BF95BB0(&v29, &v28, v17);
  if (!v20)
  {
    v27 = 0;
    v22 = &v17[*(v13 + 28)];
    sub_26BF928AC(v26, v12);
    sub_26BE2E258(v12, &qword_28045E700, &qword_26C011368);
    if ((v18 - 1) >= 3)
    {
      sub_26BE01654();
      swift_allocError();
      *v24 = v18;
      v24[112] = 12;
      swift_willThrow();
    }

    else
    {
      v23 = qword_26C020E28[(v18 - 1)];
      sub_26BF97060(v17, v8, _s11HashRatchetVMa);
      (*(v14 + 56))(v8, 0, 1, v13);
      sub_26BE4D678(v8, v23 | (v19 << 32));
    }

    return sub_26BF97000(v17, _s11HashRatchetVMa);
  }

  return result;
}

uint64_t sub_26BF964AC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD97C4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26BF9664C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26BF96518(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD97D8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26C00AEEC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26C00A74C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26BE580E0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26BF9664C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26C00AEEC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26C00A74C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26BF967E0(v7, v8, a1, v4);
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
    return sub_26BF96744(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BF96744(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = (v4 + 8 * a3);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *v11;
      result = v8 ^ v12;
      v13 = v12 & (v8 ^ 1);
      if ((result & 1) == 0)
      {
        v13 = v9 < *(v11 + 1);
      }

      if (v13 != 1)
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *(v11 + 1) = *v11;
      *v11 = v8;
      *(v11 + 1) = v9;
      v11 -= 8;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26BF967E0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_26BFD9590(v10);
      v10 = result;
    }

    v93 = *(v10 + 2);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = *&v10[16 * v93];
        v95 = *&v10[16 * v93 + 24];
        sub_26BF96DC4((*a3 + 8 * v94), (*a3 + 8 * *&v10[16 * v93 + 16]), (*a3 + 8 * v95), v5);
        if (v4)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26BFD9590(v10);
        }

        if (v93 - 2 >= *(v10 + 2))
        {
          goto LABEL_121;
        }

        v96 = &v10[16 * v93];
        *v96 = v94;
        *(v96 + 1) = v95;
        result = sub_26BFD9504(v93 - 1);
        v93 = *(v10 + 2);
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = (*a3 + 8 * v9);
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = 8 * v11;
      v16 = (*a3 + 8 * v11);
      v17 = *v16;
      v18 = v13 ^ v17;
      v19 = (v13 ^ 1) & v17;
      if ((v18 & 1) == 0)
      {
        v19 = v14 < *(v16 + 1);
      }

      v20 = v11 + 2;
      v21 = (v16 + 20);
      while (v7 != v20)
      {
        v22 = *(v21 - 4);
        v24 = *v21;
        v21 += 2;
        v23 = v24;
        v25 = v22 ^ v13;
        v26 = v13 & (v22 ^ 1);
        v27 = v24 < v14;
        if (v25)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        ++v20;
        v14 = v23;
        v13 = v22;
        if (v19 != v28)
        {
          v9 = v20 - 1;
          if (!v19)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }
      }

      v9 = v7;
      if (!v19)
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v9 < v11)
      {
        goto LABEL_124;
      }

      if (v11 < v9)
      {
        v29 = 0;
        v30 = 8 * v9;
        v31 = v11;
        do
        {
          if (v31 != v9 + v29 - 1)
          {
            v36 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v32 = (v36 + v15);
            v33 = v36 + v30;
            v34 = *v32;
            v35 = *(v32 + 1);
            *v32 = *(v33 - 8);
            *(v33 - 8) = v34;
            *(v33 - 4) = v35;
          }

          ++v31;
          --v29;
          v30 -= 8;
          v15 += 8;
        }

        while (v31 < v9 + v29);
        v7 = a3[1];
      }
    }

LABEL_25:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_123;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_125;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_44:
    if (v9 < v11)
    {
      goto LABEL_122;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BEEC164(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v48 = *(v10 + 3);
    v49 = v5 + 1;
    if (v5 >= v48 >> 1)
    {
      result = sub_26BEEC164((v48 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v49;
    v50 = &v10[16 * v5];
    *(v50 + 4) = v11;
    *(v50 + 5) = v9;
    v51 = *v98;
    if (!*v98)
    {
      goto LABEL_132;
    }

    if (v5)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v10 + 4);
          v54 = *(v10 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_64:
          if (v56)
          {
            goto LABEL_111;
          }

          v69 = &v10[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_114;
          }

          v75 = &v10[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_118;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v79 = &v10[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_78:
        if (v74)
        {
          goto LABEL_113;
        }

        v82 = &v10[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_116;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_85:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v91 = *&v10[16 * v90 + 32];
        v5 = *&v10[16 * v52 + 40];
        sub_26BF96DC4((*a3 + 8 * v91), (*a3 + 8 * *&v10[16 * v52 + 32]), (*a3 + 8 * v5), v51);
        if (v4)
        {
        }

        if (v5 < v91)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26BFD9590(v10);
        }

        if (v90 >= *(v10 + 2))
        {
          goto LABEL_108;
        }

        v92 = &v10[16 * v90];
        *(v92 + 4) = v91;
        *(v92 + 5) = v5;
        result = sub_26BFD9504(v52);
        v49 = *(v10 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v10[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_109;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_110;
      }

      v64 = &v10[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_112;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_115;
      }

      if (v68 >= v60)
      {
        v86 = &v10[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_119;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_95;
    }
  }

  v37 = *a3;
  v38 = *a3 + 8 * v9 - 8;
  v39 = v11 - v9;
LABEL_35:
  v40 = (v37 + 8 * v9);
  v41 = *v40;
  v42 = *(v40 + 1);
  v43 = v39;
  v44 = v38;
  while (1)
  {
    v45 = *v44;
    result = v41 ^ v45;
    v46 = v45 & (v41 ^ 1);
    if ((result & 1) == 0)
    {
      v46 = v42 < *(v44 + 1);
    }

    if (v46 != 1)
    {
LABEL_34:
      ++v9;
      v38 += 8;
      --v39;
      if (v9 != v7)
      {
        goto LABEL_35;
      }

      v9 = v7;
      goto LABEL_44;
    }

    if (!v37)
    {
      break;
    }

    *(v44 + 1) = *v44;
    *v44 = v41;
    *(v44 + 1) = v42;
    v44 -= 8;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_34;
    }
  }

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
  return result;
}

uint64_t sub_26BF96DC4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4 & ~*v6;
      if (((*v6 ^ *v4) & 1) == 0)
      {
        v17 = *(v6 + 1) < *(v4 + 1);
      }

      if (v17)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_26:
    v18 = v6 - 8;
    v5 -= 8;
    do
    {
      v19 = v5 + 8;
      v20 = *(v14 - 8);
      v21 = *(v6 - 8);
      v22 = v20 ^ v21;
      v23 = v21 & ~v20;
      if ((v22 & 1) == 0)
      {
        v23 = *(v14 - 1) < *(v6 - 1);
      }

      if (v23)
      {
        if (v19 != v6)
        {
          *v5 = *v18;
        }

        if (v14 <= v4 || (v6 -= 8, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v24 = v14 - 8;
      if (v19 != v14)
      {
        *v5 = *v24;
      }

      v5 -= 8;
      v14 -= 8;
    }

    while (v24 > v4);
    v14 = v24;
  }

LABEL_39:
  v25 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v25 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v25 >> 3));
  }

  return 1;
}

uint64_t sub_26BF97000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BF97060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26BF97120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_26BF97168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14GroupKeySourceV13DictionaryKeyVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s14GroupKeySourceV13DictionaryKeyVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26BF97268()
{
  result = qword_28045FCD0;
  if (!qword_28045FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FCD0);
  }

  return result;
}

uint64_t sub_26BF97370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BF973D8(uint64_t a1, uint64_t a2)
{
  v4 = _s11HashRatchetVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BF97450()
{
  result = qword_28045FCD8;
  if (!qword_28045FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FCD8);
  }

  return result;
}

uint64_t sub_26BF974A8(uint64_t a1, unint64_t a2)
{
  v4 = sub_26C00914C();
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
      sub_26BE00258(a1, a2);
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
      v14 = sub_26BF2E840(v11, 0);
      v15 = sub_26C00902C();
      sub_26BE00258(a1, a2);
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

uint64_t MLS.PublicMessage.unprotect(ciphersuiteID:membershipKey:context:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a2;
  v97 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v68[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v68[-v12];
  v13 = sub_26C009C8C();
  v73 = *(v13 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v68[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v68[-v19];
  v21 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v24);
  v27 = *v97;
  v28 = a3[3];
  v94 = a3[2];
  v95 = v28;
  v96 = *(a3 + 8);
  v29 = a3[1];
  v92 = *a3;
  v93 = v29;
  if (*(v4 + 28))
  {
    goto LABEL_2;
  }

  v69 = v27;
  v52 = v74;
  v70 = v26;
  v71 = &v68[-v25];
  v97 = v16;
  v53 = type metadata accessor for MLS.PublicMessage();
  sub_26BE2E1F0(v4 + *(v53 + 24), v20, &qword_28045E4E8, &qword_26C012550);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v54 = &qword_28045E4E8;
    v55 = &qword_26C012550;
    v56 = v20;
LABEL_7:
    sub_26BE2E258(v56, v54, v55);
    sub_26BE01654();
    swift_allocError();
    *v61 = 4;
    *(v61 + 8) = 0u;
    *(v61 + 24) = 0u;
    *(v61 + 40) = 0u;
    *(v61 + 56) = 0u;
    *(v61 + 72) = 0u;
    *(v61 + 88) = 0u;
    *(v61 + 104) = 0;
    *(v61 + 112) = 23;
    return swift_willThrow();
  }

  v57 = v71;
  sub_26BF9E3A0(v20, v71, type metadata accessor for MLS.Cryptography.MACTag);
  v58 = v72;
  sub_26BE2E1F0(v52, v72, &qword_28045E708, &unk_26C011370);
  v59 = v73;
  v60 = v13;
  if ((*(v73 + 48))(v58, 1, v13) == 1)
  {
    sub_26BF9E7A4(v57, type metadata accessor for MLS.Cryptography.MACTag);
    v54 = &qword_28045E708;
    v55 = &unk_26C011370;
    v56 = v58;
    goto LABEL_7;
  }

  v62 = v97;
  (*(v59 + 32))(v97, v58, v13);
  v77[0] = v69;
  v80 = v94;
  v81 = v95;
  *&v82 = v96;
  v78 = v92;
  v79 = v93;
  v63 = v70;
  v64 = v76;
  sub_26BF9D7A8(v77, v62, &v78, v70);
  if (v64)
  {
    (*(v59 + 8))(v62, v13);
    v65 = v71;
  }

  else
  {
    v66 = v71;
    if (MEMORY[0x26D698700](v63, v71))
    {
      sub_26BF9E7A4(v63, type metadata accessor for MLS.Cryptography.MACTag);
      (*(v59 + 8))(v62, v60);
      sub_26BF9E7A4(v71, type metadata accessor for MLS.Cryptography.MACTag);
LABEL_2:
      v30 = v4[13];
      v90 = v4[12];
      v91[0] = v30;
      *(v91 + 9) = *(v4 + 217);
      v31 = v4[9];
      v86 = v4[8];
      v87 = v31;
      v32 = v4[11];
      v88 = v4[10];
      v89 = v32;
      v33 = v4[5];
      v82 = v4[4];
      v83 = v33;
      v34 = v4[7];
      v84 = v4[6];
      v85 = v34;
      v35 = v4[1];
      v78 = *v4;
      v79 = v35;
      v36 = v4[3];
      v80 = v4[2];
      v81 = v36;
      v37 = type metadata accessor for MLS.PublicMessage();
      v38 = v75;
      sub_26BF9E408(v4 + *(v37 + 20), v75, type metadata accessor for MLS.FramedContentAuthData);
      v39 = type metadata accessor for MLS.FramedContentAuthData();
      v40 = *(*(v39 - 8) + 56);
      v40(v38, 0, 1, v39);
      v41 = *(type metadata accessor for MLS.AuthenticatedContent() + 24);
      v40((a4 + v41), 1, 1, v39);
      v42 = v88;
      *(a4 + 184) = v89;
      v43 = v91[0];
      *(a4 + 200) = v90;
      *(a4 + 216) = v43;
      *(a4 + 225) = *(v91 + 9);
      v44 = v84;
      *(a4 + 120) = v85;
      v45 = v87;
      *(a4 + 136) = v86;
      *(a4 + 152) = v45;
      *(a4 + 168) = v42;
      v46 = v80;
      *(a4 + 56) = v81;
      v47 = v83;
      *(a4 + 72) = v82;
      *(a4 + 88) = v47;
      *(a4 + 104) = v44;
      v48 = v79;
      *(a4 + 8) = v78;
      *(a4 + 24) = v48;
      *a4 = 1;
      *(a4 + 40) = v46;
      sub_26BE2FB24(&v78, v77);
      sub_26BE7170C(v38, a4 + v41, &qword_28045E4E0, &qword_26C015A80);
      v49 = type metadata accessor for MLS.ValidatedContent();
      v50 = a4 + *(v49 + 20);
      *v50 = 0;
      *(v50 + 4) = 1;
      return (*(*(v49 - 8) + 56))(a4, 0, 1, v49);
    }

    sub_26BE01654();
    swift_allocError();
    *v67 = 4;
    *(v67 + 8) = 0u;
    *(v67 + 24) = 0u;
    *(v67 + 40) = 0u;
    *(v67 + 56) = 0u;
    *(v67 + 72) = 0u;
    *(v67 + 88) = 0u;
    *(v67 + 104) = 0;
    *(v67 + 112) = 23;
    swift_willThrow();
    sub_26BF9E7A4(v63, type metadata accessor for MLS.Cryptography.MACTag);
    (*(v59 + 8))(v62, v60);
    v65 = v66;
  }

  return sub_26BF9E7A4(v65, type metadata accessor for MLS.Cryptography.MACTag);
}

uint64_t MLS.PrivateMessage.unprotect(ciphersuiteID:keys:senderDataSecret:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v278 = a3;
  v260 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v221 - v9;
  v11 = type metadata accessor for MLS.AuthenticatedContent();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v221 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FCE0, &qword_26C020E48);
  v15 = *(*(v250 - 8) + 64);
  MEMORY[0x28223BE20](v250);
  v17 = (&v221 - v16);
  v18 = type metadata accessor for MLS.FramedContentAuthData();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v249 = &v221 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E710, &unk_26C020E50);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v253 = &v221 - v24;
  v256 = _s11HashRatchetVMa(0);
  v252 = *(v256 - 1);
  v25 = *(v252 + 64);
  MEMORY[0x28223BE20](v256);
  v258 = &v221 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_26C009F3C();
  v265 = *(v264 - 8);
  v27 = *(v265 + 64);
  v28 = MEMORY[0x28223BE20](v264);
  v251 = &v221 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v266 = &v221 - v30;
  v276 = sub_26C009C8C();
  v275 = *(v276 - 8);
  v31 = *(v275 + 64);
  v32 = MEMORY[0x28223BE20](v276);
  v255 = &v221 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v267 = &v221 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v268 = &v221 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v274 = &v221 - v39;
  MEMORY[0x28223BE20](v38);
  v295 = &v221 - v40;
  v269 = type metadata accessor for MLS.KeyAndNonce(0);
  v41 = *(*(v269 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v269);
  v254 = &v221 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v221 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = MEMORY[0x28223BE20](&v221 - v47);
  v49 = MEMORY[0x28223BE20](v48);
  v50 = MEMORY[0x28223BE20](v49);
  v55 = *a1;
  if ((v55 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
    goto LABEL_43;
  }

  v244 = v50;
  v247 = v46;
  v245 = v54;
  v248 = v53;
  v243 = v17;
  v238 = v19;
  v239 = v18;
  v246 = v52;
  v240 = v11;
  v241 = v14;
  v242 = v10;
  v257 = a4;
  v273 = &v221 - v51;
  v56 = *(v4 + 8);
  *&v272 = *v4;
  *(&v272 + 1) = v56;
  v270 = *(v4 + 16);
  v271 = *(v4 + 24);
  v57 = *(v4 + 40);
  v259 = *(v4 + 32);
  v261 = v57;
  v58 = *(v4 + 56);
  v263 = *(v4 + 48);
  v262 = v58;
  v60 = *(v4 + 64);
  v59 = *(v4 + 72);
  v61 = v55 != 1;
  LOBYTE(v293) = v55 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v293, &v279);
  v62 = v279;
  v63 = *(&v279 + 1);
  v64 = v280;
  v65 = v281;
  v66 = v277;
  MLS.Cryptography.Ciphersuite.deriveSenderDataKey(secret:ciphertext:)(v278, v60, v59, v295);
  if (v66)
  {
  }

  LODWORD(v277) = v61;
  LOBYTE(v279) = v62;
  *(&v279 + 1) = v63;
  v280 = v64;
  *&v281 = v65;
  v67 = v274;
  MLS.Cryptography.Ciphersuite.deriveSenderDataNonce(secret:ciphertext:)(v278, v60, v59, v274);
  v69 = v60;
  v237 = v59;

  v70 = *(v275 + 32);
  v71 = v273;
  v72 = v276;
  v70(v273, v295, v276);
  v73 = *(v269 + 20);
  v70(v71 + v73, v67, v72);
  v278 = xmmword_26C00BBD0;
  v293 = xmmword_26C00BBD0;
  v294 = 0;
  v74 = v272;
  v279 = v272;
  v75 = *(&v272 + 1);
  *&v280 = v270;
  BYTE8(v280) = v271;
  sub_26BE00608(v272, *(&v272 + 1));
  sub_26BE00608(v74, v75);
  sub_26BE00608(v74, v75);
  sub_26BE8C044(&v279);
  v236 = 0;
  v76 = v293;
  v77 = *(&v293 + 1) >> 62;
  v231 = v69;
  v235 = v73;
  if ((*(&v293 + 1) >> 62) > 1)
  {
    v78 = v267;
    v79 = v277;
    if (v77 != 2)
    {
      goto LABEL_13;
    }

    v80 = *(v293 + 24);
  }

  else
  {
    v78 = v267;
    v79 = v277;
    if (!v77)
    {
      goto LABEL_13;
    }

    v80 = v293 >> 32;
  }

  if (v80 < 0)
  {
    __break(1u);
  }

LABEL_13:
  v274 = sub_26C00909C();
  v277 = v81;
  sub_26BE00258(v76, *(&v76 + 1));
  LOBYTE(v293) = v79;
  v82 = MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v293, &v279);
  v234 = v279;
  v83 = *(&v279 + 1);
  v232 = *(&v280 + 1);
  v233 = v280;
  v84 = v281;
  v85 = v275 + 16;
  v229 = *(v275 + 16);
  v229(v78, v273, v276, v82);
  v86 = sub_26BF9E700(&qword_28045E8B8, MEMORY[0x277CC5330]);
  v87 = v234;
  v228 = v86;
  sub_26C009C5C();
  LOBYTE(v279) = v87;
  v230 = v83;
  *(&v279 + 1) = v83;
  *&v280 = v233;
  *(&v280 + 1) = v232;
  v295 = v84;
  *&v281 = v84;
  v88 = sub_26C009C7C();
  v89 = sub_26C009C7C();
  v90 = v236;
  sub_26BE0DDF0(v88, v89);
  if (v90)
  {
    sub_26BE00258(v74, v75);
    sub_26BE00258(v74, v75);
    sub_26BE00258(v74, v75);
    sub_26BE00258(v274, v277);
    (*(v275 + 8))(v268, v276);
    sub_26BF9E7A4(v273, type metadata accessor for MLS.KeyAndNonce);
  }

  v236 = v85;
  v227 = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
  sub_26C009E9C();
  *&v279 = v263;
  *(&v279 + 1) = v262;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  v92 = v273;
  v262 = v91;
  sub_26C009C3C();
  v263 = 0;
  v93 = sub_26BE12418(v293);
  v95 = v94;

  *&v293 = v274;
  *(&v293 + 1) = v277;
  v96 = sub_26BE016A8();
  v97 = v268;
  v98 = v263;
  v99 = sub_26C009F1C();
  if (v98)
  {
    sub_26BE00258(v74, v75);
    sub_26BE00258(v74, v75);
    sub_26BE00258(v74, v75);
    sub_26BE00258(v93, v95);

    (*(v265 + 8))(v266, v264);
    (*(v275 + 8))(v97, v276);
    sub_26BF9E7A4(v92, type metadata accessor for MLS.KeyAndNonce);
    return sub_26BE00258(v274, v277);
  }

  v226 = v96;
  v235 = v99;
  v263 = v100;
  sub_26BE00258(v93, v95);
  v101 = v265 + 8;
  v102 = v266;
  v266 = *(v265 + 8);
  (v266)(v102, v264);
  v103 = *(v275 + 8);
  (v103)(v97, v276);
  v104 = v263;
  v105 = 0;
  v106 = v263 >> 62;
  if ((v263 >> 62) > 1)
  {
    v107 = v261;
    v108 = v235;
    if (v106 == 2)
    {
      v105 = *(v235 + 16);
      goto LABEL_22;
    }
  }

  else
  {
    v107 = v261;
    v108 = v235;
    if (v106)
    {
      v105 = v235;
LABEL_22:
      sub_26BE00608(v108, v263);
      v104 = v263;
    }
  }

  *&v279 = v108;
  *(&v279 + 1) = v104;
  *&v280 = v105;
  v109 = sub_26BEE6028();
  if ((v109 & 0x100000000) != 0 || (v110 = v109, v111 = sub_26BEE6028(), (v111 & 0x100000000) != 0))
  {
    v116 = 1;
LABEL_30:
    sub_26BE01600();
    swift_allocError();
    *v117 = v116;
    swift_willThrow();
    v118 = v272;
    sub_26BE00258(v272, *(&v272 + 1));
    sub_26BE00258(v118, *(&v118 + 1));
    *&v293 = &_s10SenderDataVN;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FCE8, &qword_26C020E60);
    v119 = sub_26C00A4FC();
    v120 = v108;
    v121 = v108;
    v122 = v263;
    sub_26BE826C4(v119, v123, v120, v263);

    swift_willThrow();
    sub_26BE00258(v118, *(&v118 + 1));
    sub_26BE00258(v274, v277);
    sub_26BE00258(v121, v122);

    v125 = *(&v279 + 1);
    v124 = v279;
LABEL_31:
    sub_26BE00258(v124, v125);
    return sub_26BF9E7A4(v273, type metadata accessor for MLS.KeyAndNonce);
  }

  v225 = v103;
  v112 = v280 + 4;
  if (__OFADD__(v280, 4))
  {
    __break(1u);
    goto LABEL_72;
  }

  v103 = *(&v279 + 1);
  v113 = v279;
  v114 = *(&v279 + 1) >> 62;
  if ((*(&v279 + 1) >> 62) > 1)
  {
    if (v114 != 2)
    {
      if (v112 <= 0)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

    v115 = *(v279 + 24);
  }

  else if (v114)
  {
    v115 = v279 >> 32;
  }

  else
  {
    v115 = BYTE14(v279);
  }

  if (v115 < v112)
  {
LABEL_40:
    v116 = 5;
    goto LABEL_30;
  }

LABEL_36:
  v268 = v110;
  v224 = v111;
  v126 = &v287;
  v265 = v101;
  if (v112 < v280)
  {
    __break(1u);
    goto LABEL_76;
  }

  v127 = sub_26C00909C();
  v129 = sub_26BF974A8(v127, v128);
  v130 = sub_26BE12418(v129);
  v132 = v131;

  sub_26BE00258(v113, v103);
  if (*(v260 + 52) <= v268)
  {
    v134 = v272;
    sub_26BE00258(v272, *(&v272 + 1));
    sub_26BE00258(v274, v277);
    sub_26BE00258(v130, v132);
    sub_26BE00258(v108, v263);

    sub_26BE00258(v134, *(&v134 + 1));
    sub_26BE00258(v134, *(&v134 + 1));
    sub_26BF9E7A4(v273, type metadata accessor for MLS.KeyAndNonce);
    v135 = type metadata accessor for MLS.ValidatedContent();
    return (*(*(v135 - 8) + 56))(v257, 1, 1, v135);
  }

  v222 = v130;
  v223 = v132;
  v293 = v278;
  v294 = 0;
  v279 = v272;
  *&v280 = v270;
  BYTE8(v280) = v271;
  v133 = v259;
  *&v281 = v259;
  *(&v281 + 1) = v107;
  sub_26BE00608(v259, v107);
  sub_26BE00608(v133, v107);
  sub_26BFAF280(&v279);
  v4 = v98;
LABEL_43:
  v136 = v293;
  v137 = *(&v293 + 1) >> 62;
  if ((*(&v293 + 1) >> 62) > 1)
  {
    if (v137 != 2)
    {
      goto LABEL_51;
    }

    v138 = *(v293 + 24);
  }

  else
  {
    if (!v137)
    {
      goto LABEL_51;
    }

    v138 = v293 >> 32;
  }

  v139 = v258;
  v140 = v223;
  v141 = v222;
  v142 = v271;
  if ((v138 & 0x8000000000000000) == 0)
  {
    goto LABEL_52;
  }

  __break(1u);
LABEL_51:
  v139 = v258;
  v140 = v223;
  v141 = v222;
  v142 = v271;
LABEL_52:
  v143 = sub_26C00909C();
  *&v278 = v144;
  sub_26BE00258(v136, *(&v136 + 1));
  LOBYTE(v293) = v142;
  LODWORD(v279) = v268;
  sub_26BE00608(v141, v140);
  sub_26BF95BB0(&v293, &v279, v139);
  if (v4)
  {
    v145 = v259;
    v146 = v261;
    sub_26BE00258(v259, v261);
    v147 = v272;
    sub_26BE00258(v272, *(&v272 + 1));
    sub_26BE00258(v147, *(&v147 + 1));
    sub_26BE00258(v274, v277);
    sub_26BE00258(v235, v263);
    sub_26BE00258(v147, *(&v147 + 1));
    sub_26BE00258(v145, v146);
    sub_26BE00258(v143, v278);
    sub_26BE00258(v141, v140);

    v124 = v141;
    v125 = v140;
    goto LABEL_31;
  }

  v221 = v143;
  v148 = v256[7];
  v149 = *(v139 + v148);
  if (!*(v149 + 16) || (v150 = sub_26BEBB208(v224), (v151 & 1) == 0))
  {
    v166 = v256[6];
    v167 = *(v258 + v166);
    if (v167 <= v224)
    {
      v174 = v258;
      v175 = v254;
      do
      {
        sub_26BFF97B0(v175);
        sub_26BF9E7A4(v175, type metadata accessor for MLS.KeyAndNonce);
      }

      while (*(v174 + v166) <= v224);
      v149 = *(v174 + v148);
      if (*(v149 + 16))
      {
        v150 = sub_26BEBB208(v224);
        if (v176)
        {
          goto LABEL_57;
        }
      }

      v177 = v259;
      v178 = v261;
      sub_26BE00258(v259, v261);
      v179 = v272;
      sub_26BE00258(v272, *(&v272 + 1));
      sub_26BE01654();
      swift_allocError();
      if (*(v258 + v256[8]))
      {
        v181 = 2;
      }

      else
      {
        v181 = 1;
      }

      *v180 = v181;
      *(v180 + 4) = v224;
      *(v180 + 112) = 11;
      swift_willThrow();
      sub_26BE00258(v179, *(&v179 + 1));
      sub_26BE00258(v274, v277);
      sub_26BE00258(v179, *(&v179 + 1));
      v172 = v177;
      v173 = v178;
    }

    else
    {
      v168 = v259;
      v169 = v261;
      sub_26BE00258(v259, v261);
      v170 = v272;
      sub_26BE00258(v272, *(&v272 + 1));
      sub_26BE01654();
      swift_allocError();
      *v171 = v224;
      *(v171 + 4) = v167;
      *(v171 + 112) = 13;
      swift_willThrow();
      sub_26BE00258(v170, *(&v170 + 1));
      sub_26BE00258(v274, v277);
      sub_26BE00258(v170, *(&v170 + 1));
      v172 = v168;
      v173 = v169;
    }

    sub_26BE00258(v172, v173);
    sub_26BE00258(v221, v278);
    v182 = v222;
    v183 = v223;
    sub_26BE00258(v222, v223);
    sub_26BE00258(v182, v183);
    sub_26BE00258(v235, v263);

    sub_26BF9E7A4(v273, type metadata accessor for MLS.KeyAndNonce);
    return sub_26BF9E7A4(v258, _s11HashRatchetVMa);
  }

  v247 = v244;
LABEL_57:
  v152 = v247;
  sub_26BF9E408(*(v149 + 56) + *(v245 + 72) * v150, v247, type metadata accessor for MLS.KeyAndNonce);
  sub_26BF9E3A0(v152, v248, type metadata accessor for MLS.KeyAndNonce);
  if ((v271 - 1) > 2)
  {
    v184 = v259;
    v185 = v261;
    sub_26BE00258(v259, v261);
    v186 = v272;
    sub_26BE00258(v272, *(&v272 + 1));
    sub_26BE01654();
    swift_allocError();
    *v187 = v271;
    v187[112] = 12;
    swift_willThrow();
    sub_26BE00258(v186, *(&v186 + 1));
    sub_26BE00258(v274, v277);
    sub_26BE00258(v186, *(&v186 + 1));
    sub_26BE00258(v184, v185);
    sub_26BE00258(v221, v278);
    v188 = v222;
    v189 = v223;
    sub_26BE00258(v222, v223);
    sub_26BE00258(v188, v189);
    sub_26BE00258(v235, v263);

    sub_26BF9E7A4(v273, type metadata accessor for MLS.KeyAndNonce);
    sub_26BF9E7A4(v258, _s11HashRatchetVMa);
    return sub_26BF9E7A4(v248, type metadata accessor for MLS.KeyAndNonce);
  }

  v153 = qword_26C020E98[(v271 - 1)];
  v154 = v253;
  sub_26BF9E408(v258, v253, _s11HashRatchetVMa);
  (*(v252 + 56))(v154, 0, 1, v256);
  v155 = sub_26BE4D678(v154, v153 | (v268 << 32));
  v256 = &v221;
  v156 = *(v269 + 20);
  MEMORY[0x28223BE20](v155);
  v157 = v222;
  v158 = v223;
  v159 = v248;
  v160 = v267;
  v161 = v276;
  sub_26C009C3C();
  sub_26BE00258(v157, v158);
  sub_26BF9E7A4(v258, _s11HashRatchetVMa);
  (*(v275 + 40))(v159 + v156, v160, v161);
  v162 = v246;
  sub_26BF9E3A0(v159, v246, type metadata accessor for MLS.KeyAndNonce);
  (v229)(v160, v162, v161);
  sub_26C009C5C();
  v163 = *(v269 + 20);
  LOBYTE(v279) = v234;
  *(&v279 + 1) = v230;
  *&v280 = v233;
  *(&v280 + 1) = v232;
  *&v281 = v295;
  v164 = sub_26C009C7C();
  v165 = sub_26C009C7C();
  sub_26BE0DDF0(v164, v165);
  v110 = 0;
  sub_26C009E9C();
  *&v279 = v231;
  *(&v279 + 1) = v237;
  sub_26C009C3C();
  v190 = sub_26BE12418(v293);
  v192 = v191;

  *&v293 = v221;
  *(&v293 + 1) = v278;
  v101 = sub_26C009F1C();
  v103 = v193;
  sub_26BE00258(v190, v192);
  (v266)(v251, v264);
  v225(v255, v276);
  LOBYTE(v293) = v271;
  LODWORD(v279) = v268;
  MLS.GroupKeySource.erase(contentType:sender:generation:)(&v293, &v279, v224);
LABEL_72:
  v113 = 0;
  v126 = (v103 >> 62);
  if ((v103 >> 62) <= 1)
  {
    if (!v126)
    {
      goto LABEL_79;
    }

    v113 = v101;
    goto LABEL_78;
  }

LABEL_76:
  if (v126 != 2)
  {
    goto LABEL_79;
  }

  v113 = *(v101 + 16);
LABEL_78:
  sub_26BE00608(v101, v103);
LABEL_79:
  *&v293 = v101;
  *(&v293 + 1) = v103;
  v294 = v113;
  v194 = *(v250 + 48);
  v292 = v271;
  sub_26BF9DD50(v243, (v243 + v194), &v292);
  if (v110)
  {
    v195 = v259;
    v196 = v261;
    sub_26BE00258(v259, v261);
    v197 = v272;
    sub_26BE00258(v272, *(&v272 + 1));
    *&v279 = v250;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FCF0, &qword_26C020E68);
    v198 = sub_26C00A4FC();
    sub_26BE826C4(v198, v199, v101, v103);

    swift_willThrow();
    sub_26BE00258(v197, *(&v197 + 1));
    sub_26BE00258(v274, v277);
    sub_26BE00258(v197, *(&v197 + 1));
    sub_26BE00258(v195, v196);
    sub_26BE00258(v221, v278);
    sub_26BE00258(v101, v103);
    sub_26BE00258(v235, v263);

    sub_26BE00258(v222, v223);
    sub_26BE00258(v293, *(&v293 + 1));
    sub_26BF9E7A4(v246, type metadata accessor for MLS.KeyAndNonce);
    return sub_26BF9E7A4(v273, type metadata accessor for MLS.KeyAndNonce);
  }

  else
  {
    sub_26BE00258(v222, v223);
    v200 = v272;
    sub_26BE00258(v272, *(&v272 + 1));
    sub_26BE00258(v274, v277);
    sub_26BE00258(v200, *(&v200 + 1));
    sub_26BE00258(v259, v261);
    sub_26BE00258(v221, v278);
    sub_26BE00258(v101, v103);
    sub_26BE00258(v235, v263);

    sub_26BE00258(v293, *(&v293 + 1));
    sub_26BF9E7A4(v246, type metadata accessor for MLS.KeyAndNonce);
    sub_26BF9E7A4(v273, type metadata accessor for MLS.KeyAndNonce);
    v201 = v243[9];
    v287 = v243[8];
    v288 = v201;
    *v289 = v243[10];
    *&v289[9] = *(v243 + 169);
    v202 = v243[5];
    v283 = v243[4];
    v284 = v202;
    v203 = v243[7];
    v285 = v243[6];
    v286 = v203;
    v204 = v243[1];
    v279 = *v243;
    v280 = v204;
    v205 = v243[3];
    v281 = v243[2];
    v282 = v205;
    v206 = v249;
    sub_26BF9E3A0(v243 + v194, v249, type metadata accessor for MLS.FramedContentAuthData);
    v207 = v242;
    sub_26BF9E3A0(v206, v242, type metadata accessor for MLS.FramedContentAuthData);
    v208 = *(v238 + 56);
    v209 = v239;
    v208(v207, 0, 1, v239);
    v210 = *(v240 + 24);
    v211 = v241;
    v208(&v241[v210], 1, 1, v209);
    v212 = v288;
    *(v211 + 184) = v287;
    *(v211 + 200) = v212;
    *(v211 + 216) = *v289;
    *(v211 + 225) = *&v289[9];
    v213 = v284;
    *(v211 + 120) = v283;
    *(v211 + 136) = v213;
    v214 = v286;
    *(v211 + 152) = v285;
    *(v211 + 168) = v214;
    v215 = v280;
    *(v211 + 56) = v279;
    *(v211 + 72) = v215;
    v216 = v282;
    *(v211 + 88) = v281;
    *v211 = 2;
    *(v211 + 8) = v200;
    *(v211 + 24) = v270;
    *(v211 + 32) = v268;
    *(v211 + 36) = 0;
    *(v211 + 37) = v290;
    *(v211 + 39) = v291;
    v217 = v261;
    *(v211 + 40) = v259;
    *(v211 + 48) = v217;
    *(v211 + 104) = v216;
    sub_26BE7170C(v207, v211 + v210, &qword_28045E4E0, &qword_26C015A80);
    v218 = v257;
    sub_26BF9E3A0(v211, v257, type metadata accessor for MLS.AuthenticatedContent);
    v219 = type metadata accessor for MLS.ValidatedContent();
    v220 = v218 + *(v219 + 20);
    *v220 = v224;
    *(v220 + 4) = 0;
    return (*(*(v219 - 8) + 56))(v218, 0, 1, v219);
  }
}

uint64_t static MLS.AuthenticatedContent.sign(wireFormat:content:signaturePrivateKey:context:)@<X0>(unsigned __int16 *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a5;
  v68 = a3;
  v8 = type metadata accessor for MLS.FramedContentAuthData();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v66 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v63 - v14;
  v16 = type metadata accessor for MLS.AuthenticatedContent();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = a2[13];
  v92 = a2[12];
  v93[0] = v21;
  *(v93 + 9) = *(a2 + 217);
  v22 = a2[9];
  v88 = a2[8];
  v89 = v22;
  v23 = a2[11];
  v90 = a2[10];
  v91 = v23;
  v24 = a2[5];
  v84 = a2[4];
  v85 = v24;
  v25 = a2[7];
  v86 = a2[6];
  v87 = v25;
  v26 = a2[1];
  v80 = *a2;
  v81 = v26;
  v27 = a2[3];
  v82 = a2[2];
  v83 = v27;
  v28 = a4[3];
  v96 = a4[2];
  v97 = v28;
  v98 = *(a4 + 8);
  v30 = *a4;
  v29 = a4[1];
  v31 = v99;
  v94 = v30;
  v95 = v29;
  if (v20 == 1)
  {
    LODWORD(v65) = 1;
    v32 = a2[12];
    v77 = a2[11];
    v78 = v32;
    v79[0] = a2[13];
    *(v79 + 9) = *(a2 + 217);
    v33 = a2[8];
    v73 = a2[7];
    v74 = v33;
    v34 = a2[10];
    v75 = a2[9];
    v76 = v34;
    v35 = a2[4];
    v69 = a2[3];
    v70 = v35;
    v36 = a2[6];
    v71 = a2[5];
    v72 = v36;
    if (!sub_26BE6917C(&v69))
    {
      nullsub_1(&v69);
      sub_26BE01654();
      swift_allocError();
      *v37 = 7;
      *(v37 + 8) = 0u;
      *(v37 + 24) = 0u;
      *(v37 + 40) = 0u;
      *(v37 + 56) = 0u;
      *(v37 + 72) = 0u;
      *(v37 + 88) = 0u;
      *(v37 + 104) = 0;
      *(v37 + 112) = 23;
      return swift_willThrow();
    }

    nullsub_1(&v69);
    LOWORD(v20) = v65;
  }

  v41 = *(v9 + 56);
  v39 = v9 + 56;
  v40 = v41;
  v41(v15, 1, 1, v8);
  v42 = *(v16 + 24);
  v99 = v8;
  v41(&v19[v42], 1, 1, v8);
  v43 = v90;
  *(v19 + 184) = v91;
  v44 = v93[0];
  *(v19 + 200) = v92;
  *(v19 + 216) = v44;
  *(v19 + 225) = *(v93 + 9);
  v45 = v86;
  *(v19 + 120) = v87;
  v46 = v89;
  *(v19 + 136) = v88;
  *(v19 + 152) = v46;
  *(v19 + 168) = v43;
  v47 = v82;
  *(v19 + 56) = v83;
  v48 = v85;
  *(v19 + 72) = v84;
  *(v19 + 88) = v48;
  *(v19 + 104) = v45;
  v49 = v81;
  *(v19 + 8) = v80;
  *(v19 + 24) = v49;
  *v19 = v20;
  *(v19 + 40) = v47;
  sub_26BE2FB24(&v80, &v69);
  sub_26BE7170C(v15, &v19[v42], &qword_28045E4E0, &qword_26C015A80);
  v71 = v96;
  v72 = v97;
  *&v73 = v98;
  v69 = v94;
  v70 = v95;
  v50 = sub_26BF9D0DC(&v69);
  if (!v31)
  {
    v52 = v50;
    v53 = v51;
    v64 = v40;
    v65 = v39;
    v54 = v68[3];
    v55 = v68[4];
    __swift_project_boxed_opaque_existential_1(v68, v54);
    v56 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0xD000000000000010, 0x800000026C02B350, v52, v53, v54, v55);
    v58 = v57;
    sub_26BE00258(v52, v53);
    v59 = v99;
    v60 = *(v99 + 20);
    v61 = type metadata accessor for MLS.Cryptography.MACTag(0);
    v62 = v66;
    (*(*(v61 - 8) + 56))(v66 + v60, 1, 1, v61);
    *v62 = v56;
    v62[1] = v58;
    sub_26BE2E258(&v19[v42], &qword_28045E4E0, &qword_26C015A80);
    sub_26BF9E3A0(v62, &v19[v42], type metadata accessor for MLS.FramedContentAuthData);
    v64(&v19[v42], 0, 1, v59);
    sub_26BF9E408(v19, v67, type metadata accessor for MLS.AuthenticatedContent);
  }

  return sub_26BF9E7A4(v19, type metadata accessor for MLS.AuthenticatedContent);
}

uint64_t static MLS.PublicMessage.protect(authenticatedContent:ciphersuiteID:membershipKey:context:)@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - v15;
  v17 = sub_26C009C8C();
  v35 = *(v17 - 8);
  v18 = *(v35 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MLS.AuthenticatedContent();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = (&v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *a2;
  v26 = a4[3];
  v42 = a4[2];
  v43 = v26;
  v44 = *(a4 + 8);
  v27 = a4[1];
  v40 = *a4;
  v41 = v27;
  sub_26BF9E408(a1, v24, type metadata accessor for MLS.AuthenticatedContent);
  v28 = v37;
  result = sub_26BF9D400(v24, a5);
  if (!v28)
  {
    result = v36;
    v30 = v35;
    if (!*(a5 + 28))
    {
      sub_26BE2E1F0(v36, v16, &qword_28045E708, &unk_26C011370);
      if ((*(v30 + 48))(v16, 1, v17) == 1)
      {
        sub_26BE2E258(v16, &qword_28045E708, &unk_26C011370);
        sub_26BE01654();
        swift_allocError();
        *v31 = 27;
        v31[112] = 0;
        swift_willThrow();
        return sub_26BF9E7A4(a5, type metadata accessor for MLS.PublicMessage);
      }

      else
      {
        (*(v30 + 32))(v20, v16, v17);
        v45 = v25;
        v38[2] = v42;
        v38[3] = v43;
        v39 = v44;
        v38[0] = v40;
        v38[1] = v41;
        sub_26BF9D7A8(&v45, v20, v38, v12);
        (*(v30 + 8))(v20, v17);
        v32 = type metadata accessor for MLS.Cryptography.MACTag(0);
        (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
        v33 = type metadata accessor for MLS.PublicMessage();
        return sub_26BE7170C(v12, a5 + *(v33 + 24), &qword_28045E4E8, &qword_26C012550);
      }
    }
  }

  return result;
}

uint64_t static MLS.PrivateMessage.protect(authenticatedContent:ciphersuiteID:keys:senderDataSecret:usePadding:validateKeyGeneration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v237 = a3;
  LODWORD(v230) = a6;
  v222 = a4;
  v218 = a7;
  v281 = *MEMORY[0x277D85DE8];
  v10 = sub_26C009F3C();
  v11 = *(v10 - 8);
  v225 = v10;
  v226 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v219 = &v192 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v224 = &v192 - v15;
  v16 = sub_26C009C8C();
  v233 = *(v16 - 8);
  v234 = v16;
  v17 = v233[8];
  v18 = MEMORY[0x28223BE20](v16);
  v220 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v221 = &v192 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v223 = &v192 - v23;
  MEMORY[0x28223BE20](v22);
  v232 = &v192 - v24;
  v25 = sub_26C009D7C();
  v228 = *(v25 - 8);
  v229 = v25;
  v26 = *(v228 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v192 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E710, &unk_26C020E50);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v192 - v34;
  v36 = _s11HashRatchetVMa(0);
  *(&v227 + 1) = *(v36 - 8);
  v37 = *(*(&v227 + 1) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v192 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for MLS.KeyAndNonce(0);
  v40 = *(*(v231 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v231);
  result = MEMORY[0x28223BE20](v41);
  v235 = &v192 - v44;
  v45 = *a2;
  if ((v45 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
LABEL_52:
    v136 = a2 >> 32;
    goto LABEL_53;
  }

  LODWORD(v227) = a5;
  v217 = v43;
  v46 = v45 != 1;
  LOBYTE(v253) = v45 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v253, &v267);
  v47 = v269;
  if (*(a1 + 36))
  {
    sub_26BE01654();
    swift_allocError();
    *v48 = 2;
    v48[112] = 0;
    swift_willThrow();
LABEL_11:

LABEL_12:
    v58 = *MEMORY[0x277D85DE8];
    return result;
  }

  DWORD2(v208) = v46;
  v212 = v267;
  v210 = v268;
  v211 = *(&v267 + 1);
  v209 = *(&v268 + 1);
  v216 = *(a1 + 32);
  v49 = *(a1 + 200);
  v279[8] = *(a1 + 184);
  v279[9] = v49;
  v280[0] = *(a1 + 216);
  *(v280 + 9) = *(a1 + 225);
  v50 = *(a1 + 136);
  v279[4] = *(a1 + 120);
  v279[5] = v50;
  v51 = *(a1 + 168);
  v279[6] = *(a1 + 152);
  v279[7] = v51;
  v52 = *(a1 + 72);
  v279[0] = *(a1 + 56);
  v279[1] = v52;
  v53 = *(a1 + 88);
  v213 = a1;
  v54 = *(a1 + 104);
  v279[2] = v53;
  v279[3] = v54;
  v55 = sub_26BE6917C(v279);
  v215 = v47;
  if (v55)
  {
    v56 = v236;
    if (v55 == 1)
    {
      nullsub_1(v279);
      LODWORD(v214) = 0;
      v57 = 2;
    }

    else
    {
      nullsub_1(v279);
      LODWORD(v214) = 0;
      v57 = 3;
    }
  }

  else
  {
    nullsub_1(v279);
    LODWORD(v214) = 1;
    v57 = 1;
    v56 = v236;
  }

  LOBYTE(v253) = v57;
  LODWORD(v267) = v216;
  sub_26BF95BB0(&v253, &v267, v39);
  if (v56)
  {
    goto LABEL_11;
  }

  LODWORD(v208) = sub_26BFF97B0(v235);
  LODWORD(v207) = v57;
  sub_26BF9E408(v39, v35, _s11HashRatchetVMa);
  (*(*(&v227 + 1) + 56))(v35, 0, 1, v36);
  sub_26BE4D678(v35, v214 | (v216 << 32));
  sub_26C009D6C();
  v60 = v228;
  v59 = v229;
  (*(v228 + 16))(v29, v31, v229);
  v61 = v232;
  sub_26C009C6C();
  sub_26C009C3C();
  *(&v227 + 1) = 0;
  v63 = v233;
  v62 = v234;
  v205 = v233[1];
  v206 = v233 + 1;
  v205(v61, v234);
  v64 = (*(v60 + 8))(v31, v59);
  v65 = *(v231 + 20);
  MEMORY[0x28223BE20](v64);
  v236 = v67;
  v237 = v66;
  v68 = v235;
  v69 = *(&v227 + 1);
  sub_26C009C3C();
  v70 = v69;
  sub_26BF9E7A4(v39, _s11HashRatchetVMa);
  v71 = v63[5];
  v229 = v65;
  v71(v68 + v65, v61, v62);
  if (v214 & v230)
  {
    v72 = *(v213 + 200);
    v277[1] = *(v213 + 184);
    v277[2] = v72;
    v278[0] = *(v213 + 216);
    *(v278 + 9) = *(v213 + 225);
    v73 = *(v213 + 120);
    v74 = *(v213 + 152);
    v275 = *(v213 + 136);
    v276 = v74;
    v277[0] = *(v213 + 168);
    v75 = *(v213 + 56);
    v76 = *(v213 + 88);
    v271 = *(v213 + 72);
    v272 = v76;
    v273 = *(v213 + 104);
    v274 = v73;
    v77 = *(v213 + 24);
    v267 = *(v213 + 8);
    v268 = v77;
    v269 = *(v213 + 40);
    v270 = v75;
    v78 = *(v213 + 200);
    v264 = *(v213 + 184);
    v265 = v78;
    v266[0] = *(v213 + 216);
    *(v266 + 9) = *(v213 + 225);
    v79 = *(v213 + 120);
    v80 = *(v213 + 152);
    v261 = *(v213 + 136);
    v262 = v80;
    v263 = *(v213 + 168);
    v81 = *(v213 + 56);
    v82 = *(v213 + 88);
    v257 = *(v213 + 72);
    v258 = v82;
    v259 = *(v213 + 104);
    v260 = v79;
    v83 = *(v213 + 24);
    v253 = *(v213 + 8);
    v254 = v83;
    v255 = *(v213 + 40);
    v256 = v81;
    sub_26BE2FB24(&v267, &v239);
    v84 = sub_26BE71AA0(&v253);
    if (v69)
    {

      sub_26BE00258(v236, v237);
      v251 = v265;
      v252[0] = v266[0];
      *(v252 + 9) = *(v266 + 9);
      v247 = v261;
      v248 = v262;
      v249 = v263;
      v250 = v264;
      v243 = v257;
      v244 = v258;
      v245 = v259;
      v246 = v260;
      v239 = v253;
      v240 = v254;
      v241 = v255;
      v242 = v256;
      sub_26BE71494(&v239);
      result = sub_26BF9E7A4(v68, type metadata accessor for MLS.KeyAndNonce);
      goto LABEL_12;
    }

    v89 = v84;
    v251 = v265;
    v252[0] = v266[0];
    *(v252 + 9) = *(v266 + 9);
    v247 = v261;
    v248 = v262;
    v249 = v263;
    v250 = v264;
    v243 = v257;
    v244 = v258;
    v245 = v259;
    v246 = v260;
    v239 = v253;
    v240 = v254;
    v241 = v255;
    v242 = v256;
    sub_26BE71494(&v239);
    if (v89 != v208)
    {
      if (qword_28045DF80 != -1)
      {
        swift_once();
      }

      v91 = sub_26C009A5C();
      __swift_project_value_buffer(v91, qword_280478EE8);
      v92 = sub_26C009A3C();
      v93 = sub_26C00AA0C();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v238 = v95;
        *v94 = 136315650;
        *(v94 + 4) = sub_26BE29740(0x4D65746176697250, 0xEE00656761737365, &v238);
        *(v94 + 12) = 1024;
        *(v94 + 14) = v208;
        *(v94 + 18) = 1024;
        *(v94 + 20) = v89;
        _os_log_impl(&dword_26BDFE000, v92, v93, "%s: Invalid key generation in secret payload, expected %u, got %u", v94, 0x18u);
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x26D69A4E0](v95, -1, -1);
        MEMORY[0x26D69A4E0](v94, -1, -1);
      }

      sub_26BE01654();
      swift_allocError();
      *v96 = 50;
      v96[112] = 0;
      swift_willThrow();

      sub_26BE00258(v236, v237);
      result = sub_26BF9E7A4(v68, type metadata accessor for MLS.KeyAndNonce);
      goto LABEL_12;
    }

    v70 = 0;
  }

  v230 = xmmword_26C00BBD0;
  v267 = xmmword_26C00BBD0;
  *&v268 = 0;
  sub_26BF9E27C(&v267, v213, v227 & 1);
  if (v70)
  {
    sub_26BF9E7A4(v68, type metadata accessor for MLS.KeyAndNonce);

    sub_26BE00258(v236, v237);
    v86 = *(&v267 + 1);
    v85 = v267;
LABEL_36:
    result = sub_26BE00258(v85, v86);
    goto LABEL_12;
  }

  v228 = 0;
  v87 = v267;
  v88 = *(&v267 + 1) >> 62;
  if ((*(&v267 + 1) >> 62) > 1)
  {
    if (v88 != 2)
    {
      goto LABEL_33;
    }

    v90 = *(v267 + 24);
  }

  else
  {
    if (!v88)
    {
      goto LABEL_33;
    }

    v90 = v267 >> 32;
  }

  if (v90 < 0)
  {
    __break(1u);
  }

LABEL_33:
  v97 = sub_26C00909C();
  v99 = v98;
  sub_26BE00258(v87, *(&v87 + 1));
  v100 = *(v213 + 8);
  v101 = *(v213 + 16);
  v102 = *(v213 + 24);
  v103 = *(v213 + 40);
  v104 = *(v213 + 48);
  v253 = v230;
  *&v254 = 0;
  *&v267 = v100;
  *(&v267 + 1) = v101;
  *&v268 = v102;
  BYTE8(v268) = v207;
  *&v269 = v103;
  *(&v269 + 1) = v104;
  sub_26BE00608(v100, v101);
  sub_26BE00608(v103, v104);
  v105 = v228;
  sub_26BFAF280(&v267);
  if (v105)
  {
    sub_26BF9E7A4(v235, type metadata accessor for MLS.KeyAndNonce);
    sub_26BE00258(v97, v99);

    sub_26BE00258(v236, v237);
    sub_26BE00258(v100, v101);
    v106 = v103;
    v107 = v104;
LABEL_35:
    sub_26BE00258(v106, v107);
    v86 = *(&v253 + 1);
    v85 = v253;
    goto LABEL_36;
  }

  v214 = v104;
  v202 = v102;
  v203 = v100;
  *&v227 = v97;
  *(&v227 + 1) = v99;
  v204 = v103;
  v108 = v253;
  v109 = *(&v253 + 1) >> 62;
  if ((*(&v253 + 1) >> 62) > 1)
  {
    v110 = v212;
    if (v109 != 2)
    {
      goto LABEL_45;
    }

    v112 = *(v253 + 24);
  }

  else
  {
    v110 = v212;
    if (!v109)
    {
      v111 = v101;
      goto LABEL_46;
    }

    v112 = v253 >> 32;
  }

  v111 = v101;
  if ((v112 & 0x8000000000000000) == 0)
  {
    goto LABEL_46;
  }

  __break(1u);
LABEL_45:
  v111 = v101;
LABEL_46:
  v113 = sub_26C00909C();
  v115 = v114;
  sub_26BE00258(v108, *(&v108 + 1));
  LOBYTE(v267) = v110;
  *(&v267 + 1) = v211;
  *&v268 = v210;
  *(&v268 + 1) = v209;
  *&v269 = v215;
  v116 = sub_26C009C7C();
  v117 = sub_26C009C7C();
  sub_26BE0DDF0(v116, v117);
  v201 = v111;
  v198 = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
  v118 = v224;
  sub_26C009E9C();
  v267 = v227;
  v199 = v113;
  v200 = v115;
  *&v253 = v113;
  *(&v253 + 1) = v115;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009C3C();
  v119 = sub_26BE12418(v239);
  v121 = v120;

  v122 = sub_26BE016A8();
  v123 = sub_26C009F2C();
  v195 = v122;
  v196 = v123;
  v197 = v124;
  v228 = 0;
  sub_26BE00258(v119, v121);
  v125 = *(v226 + 8);
  v226 += 8;
  v224 = v125;
  (v125)(v118, v225);
  v253 = v230;
  *&v254 = 0;
  LODWORD(v239) = bswap32(v216);
  v126 = MEMORY[0x277D838B0];
  *(&v268 + 1) = MEMORY[0x277D838B0];
  *&v269 = MEMORY[0x277CC9C18];
  *&v267 = &v239;
  *(&v267 + 1) = &v239 + 4;
  v127 = __swift_project_boxed_opaque_existential_1(&v267, MEMORY[0x277D838B0]);
  v128 = *v127;
  v129 = v127[1];
  v131 = v236;
  v130 = v237;
  sub_26BE00608(v236, v237);
  sub_26BE00608(v131, v130);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v267);
  LODWORD(v239) = bswap32(v208);
  *(&v268 + 1) = v126;
  *&v269 = MEMORY[0x277CC9C18];
  *&v267 = &v239;
  *(&v267 + 1) = &v239 + 4;
  v132 = __swift_project_boxed_opaque_existential_1(&v267, v126);
  v134 = *v132;
  v133 = v132[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v267);
  sub_26BE11228(v131, v130);
  result = sub_26BE00258(v131, v130);
  v31 = *(&v253 + 1);
  a2 = v253;
  v135 = *(&v253 + 1) >> 62;
  if ((*(&v253 + 1) >> 62) <= 1)
  {
    LOBYTE(v35) = v207;
    v39 = *(&v227 + 1);
    v29 = v201;
    if (!v135)
    {
LABEL_54:
      v137 = sub_26C00909C();
      v139 = v138;
      sub_26BE00258(a2, v31);
      v141 = *(v213 + 8);
      v140 = *(v213 + 16);
      v253 = v230;
      *&v254 = 0;
      *&v267 = v141;
      *(&v267 + 1) = v140;
      *&v268 = v202;
      BYTE8(v268) = v35;
      v142 = v140;
      sub_26BE00608(v141, v140);
      v143 = v228;
      sub_26BE8C044(&v267);
      if (v143)
      {
        sub_26BF9E7A4(v235, type metadata accessor for MLS.KeyAndNonce);
        sub_26BE00258(v227, v39);
        sub_26BE00258(v203, v29);
        sub_26BE00258(v204, v214);
        sub_26BE00258(v199, v200);
        sub_26BE00258(v196, v197);
        v144 = v142;
        v146 = v236;
        v145 = v237;
        sub_26BE00258(v236, v237);
        sub_26BE00258(v137, v139);

        sub_26BE00258(v146, v145);
        v106 = v141;
        v107 = v144;
        goto LABEL_35;
      }

      *&v230 = v139;
      v194 = v141;
      v228 = 0;
      v147 = v253;
      v148 = *(&v253 + 1) >> 62;
      v216 = v137;
      v207 = v142;
      if ((*(&v253 + 1) >> 62) > 1)
      {
        if (v148 != 2)
        {
          goto LABEL_64;
        }

        v149 = *(v253 + 24);
      }

      else
      {
        if (!v148)
        {
          goto LABEL_64;
        }

        v149 = v253 >> 32;
      }

      v150 = v223;
      v151 = BYTE8(v208);
      if ((v149 & 0x8000000000000000) == 0)
      {
LABEL_65:
        *&v208 = sub_26C00909C();
        *(&v208 + 1) = v152;
        sub_26BE00258(v147, *(&v147 + 1));
        LOBYTE(v253) = v151;
        MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v253, &v267);
        v153 = *(&v267 + 1);
        v154 = v268;
        v155 = v267;
        v193 = v269;
        v156 = v150;
        v157 = v222;
        v159 = v196;
        v158 = v197;
        v160 = v228;
        MLS.Cryptography.Ciphersuite.deriveSenderDataKey(secret:ciphertext:)(v222, v196, v197, v156);
        if (!v160)
        {
          LOBYTE(v267) = v155;
          *(&v267 + 1) = v153;
          v268 = v154;
          *&v269 = v193;
          MLS.Cryptography.Ciphersuite.deriveSenderDataNonce(secret:ciphertext:)(v157, v159, v158, v221);

          v164 = v233;
          v163 = v234;
          v165 = v233[4];
          v166 = v217;
          v165(v217, v223, v234);
          v165(v166 + *(v231 + 20), v221, v163);
          (v164[2])(v232, v166, v163);
          sub_26BF9E700(&qword_28045E8B8, MEMORY[0x277CC5330]);
          sub_26C009C5C();
          LOBYTE(v267) = v212;
          *(&v267 + 1) = v211;
          *&v268 = v210;
          *(&v268 + 1) = v209;
          *&v269 = v215;
          v167 = sub_26C009C7C();
          v168 = sub_26C009C7C();
          sub_26BE0DDF0(v167, v168);
          sub_26C009E9C();
          *&v253 = v216;
          *(&v253 + 1) = v230;
          v239 = v208;
          sub_26C009C3C();
          v169 = sub_26BE12418(v267);
          v171 = v170;

          v172 = sub_26C009F2C();
          v228 = 0;
          v173 = v172;
          v175 = v174;
          sub_26BE00258(v227, *(&v227 + 1));
          sub_26BE00258(v203, v201);
          sub_26BE00258(v204, v214);
          sub_26BE00258(v199, v200);
          v177 = v236;
          v176 = v237;
          sub_26BE00258(v236, v237);
          sub_26BE00258(v194, v207);
          sub_26BE00258(v169, v171);

          sub_26BE00258(v177, v176);
          (v224)(v219, v225);
          v205(v220, v234);
          sub_26BF9E7A4(v217, type metadata accessor for MLS.KeyAndNonce);
          sub_26BF9E7A4(v235, type metadata accessor for MLS.KeyAndNonce);
          sub_26BE00258(v208, *(&v208 + 1));
          sub_26BE00258(v216, v230);
          v178 = *(v213 + 8);
          v179 = *(v213 + 16);
          v180 = *(v213 + 40);
          v181 = *(v213 + 48);
          v182 = *(v213 + 200);
          v275 = *(v213 + 184);
          v276 = v182;
          v277[0] = *(v213 + 216);
          *(v277 + 9) = *(v213 + 225);
          v183 = *(v213 + 136);
          v271 = *(v213 + 120);
          v272 = v183;
          v184 = *(v213 + 168);
          v273 = *(v213 + 152);
          v274 = v184;
          v185 = *(v213 + 72);
          v267 = *(v213 + 56);
          v268 = v185;
          v186 = *(v213 + 104);
          v269 = *(v213 + 88);
          v270 = v186;
          v187 = v218;
          *v218 = v178;
          *(v187 + 8) = v179;
          *(v187 + 16) = v202;
          v188 = sub_26BE6917C(&v267);
          if (v188)
          {
            if (v188 == 1)
            {
              nullsub_1(&v267);
              v189 = 2;
            }

            else
            {
              nullsub_1(&v267);
              v189 = 3;
            }
          }

          else
          {
            nullsub_1(&v267);
            v189 = 1;
          }

          v190 = v218;
          *(v218 + 24) = v189;
          v190[4] = v180;
          v190[5] = v181;
          v190[6] = v173;
          v190[7] = v175;
          v191 = v197;
          v190[8] = v196;
          v190[9] = v191;
          sub_26BE00608(v178, v179);
          result = sub_26BE00608(v180, v181);
          goto LABEL_12;
        }

        sub_26BF9E7A4(v235, type metadata accessor for MLS.KeyAndNonce);
        sub_26BE00258(v227, *(&v227 + 1));
        sub_26BE00258(v203, v201);
        sub_26BE00258(v204, v214);
        sub_26BE00258(v199, v200);
        sub_26BE00258(v159, v158);
        v162 = v236;
        v161 = v237;
        sub_26BE00258(v236, v237);
        sub_26BE00258(v216, v230);
        sub_26BE00258(v194, v207);
        sub_26BE00258(v208, *(&v208 + 1));

        sub_26BE00258(v162, v161);
        goto LABEL_11;
      }

      __break(1u);
LABEL_64:
      v150 = v223;
      v151 = BYTE8(v208);
      goto LABEL_65;
    }

    goto LABEL_52;
  }

  LOBYTE(v35) = v207;
  v39 = *(&v227 + 1);
  v29 = v201;
  if (v135 != 2)
  {
    goto LABEL_54;
  }

  v136 = *(v253 + 24);
LABEL_53:
  if ((v136 & 0x8000000000000000) == 0)
  {
    goto LABEL_54;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MLS.ValidatedContent()
{
  result = qword_28045FCF8;
  if (!qword_28045FCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLS.AuthenticatedContent.verify(ciphersuiteID:signaturePublicKey:context:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = type metadata accessor for MLS.FramedContentAuthData();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a3 + 48);
  v27[2] = *(a3 + 32);
  v27[3] = v16;
  v28 = *(a3 + 64);
  v17 = *(a3 + 16);
  v27[0] = *a3;
  v27[1] = v17;
  v18 = sub_26BF9D0DC(v27);
  if (!v4)
  {
    v20 = v18;
    v21 = v19;
    v22 = type metadata accessor for MLS.AuthenticatedContent();
    sub_26BE2E1F0(v3 + *(v22 + 24), v10, &qword_28045E4E0, &qword_26C015A80);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_26BE2E258(v10, &qword_28045E4E0, &qword_26C015A80);
      sub_26BE01654();
      LOBYTE(a2) = swift_allocError();
      *v23 = 0xD000000000000041;
      *(v23 + 8) = 0x800000026C02D2B0;
      *(v23 + 112) = 16;
      swift_willThrow();
      sub_26BE00258(v20, v21);
    }

    else
    {
      sub_26BF9E3A0(v10, v15, type metadata accessor for MLS.FramedContentAuthData);
      v24 = a2[3];
      v25 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v24);
      LOBYTE(a2) = MLS.Cryptography.SignaturePublicKey.verifyWithLabel(label:message:signature:)(0xD000000000000010, 0x800000026C02B350, v20, v21, *v15, v15[1], v24, v25);
      sub_26BE00258(v20, v21);
      sub_26BF9E7A4(v15, type metadata accessor for MLS.FramedContentAuthData);
    }
  }

  return a2 & 1;
}

uint64_t sub_26BF9C8E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for MLS.FramedContentAuthData();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 200);
  v44 = *(a1 + 184);
  v45 = v11;
  v46[0] = *(a1 + 216);
  *(v46 + 9) = *(a1 + 225);
  v12 = *(a1 + 136);
  v40 = *(a1 + 120);
  v41 = v12;
  v13 = *(a1 + 168);
  v42 = *(a1 + 152);
  v43 = v13;
  v14 = *(a1 + 72);
  v36 = *(a1 + 56);
  v37 = v14;
  v15 = *(a1 + 104);
  v38 = *(a1 + 88);
  v39 = v15;
  v16 = type metadata accessor for MLS.AuthenticatedContent();
  sub_26BE2E1F0(a1 + *(v16 + 24), v5, &qword_28045E4E0, &qword_26C015A80);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_26BE2E258(v5, &qword_28045E4E0, &qword_26C015A80);
    sub_26BE01654();
    swift_allocError();
    *v17 = 0xD000000000000044;
    *(v17 + 8) = 0x800000026C02D300;
    *(v17 + 112) = 16;
    return swift_willThrow();
  }

  else
  {
    sub_26BF9E3A0(v5, v10, type metadata accessor for MLS.FramedContentAuthData);
    v34[8] = v44;
    v34[9] = v45;
    v35[0] = v46[0];
    *(v35 + 9) = *(v46 + 9);
    v34[4] = v40;
    v34[5] = v41;
    v34[6] = v42;
    v34[7] = v43;
    v34[0] = v36;
    v34[1] = v37;
    v34[2] = v38;
    v34[3] = v39;
    v19 = v30;
    v20 = sub_26BEDCCE4(v34);
    if (v19)
    {
      return sub_26BF9E7A4(v10, type metadata accessor for MLS.FramedContentAuthData);
    }

    else
    {
      v21 = v20;
      v22 = *(a1 + 200);
      v32[8] = *(a1 + 184);
      v32[9] = v22;
      v33[0] = *(a1 + 216);
      *(v33 + 9) = *(a1 + 225);
      v23 = *(a1 + 136);
      v32[4] = *(a1 + 120);
      v32[5] = v23;
      v24 = *(a1 + 168);
      v32[6] = *(a1 + 152);
      v32[7] = v24;
      v25 = *(a1 + 72);
      v32[0] = *(a1 + 56);
      v32[1] = v25;
      v26 = *(a1 + 104);
      v32[2] = *(a1 + 88);
      v32[3] = v26;
      v27 = sub_26BE6917C(v32);
      if (v27)
      {
        if (v27 == 1)
        {
          nullsub_1(v32);
          v28 = 2;
        }

        else
        {
          nullsub_1(v32);
          v28 = 3;
        }
      }

      else
      {
        nullsub_1(v32);
        v28 = 1;
      }

      v31 = v28;
      v29 = sub_26BED4DD8(v10, &v31);
      sub_26BF9E7A4(v10, type metadata accessor for MLS.FramedContentAuthData);
      result = v21 + v29;
      if (__OFADD__(v21, v29))
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_26BF9CC74(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = type metadata accessor for MLS.FramedContentAuthData();
  v71 = *(v14 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_26BEE6180();
  if ((v18 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
  }

  else
  {
    v40 = v18;
    sub_26BEDD03C(v59);
    if (!v1)
    {
      v55 = v69;
      v56[0] = v70[0];
      *(v56 + 9) = *(v70 + 9);
      v51 = v65;
      v52 = v66;
      v53 = v67;
      v54 = v68;
      v47 = v61;
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v43 = v59[0];
      v44 = v59[1];
      v45 = v59[2];
      v46 = v60;
      v57[8] = v68;
      v57[9] = v69;
      v58[0] = v70[0];
      *(v58 + 9) = *(v70 + 9);
      v57[4] = v64;
      v57[5] = v65;
      v57[6] = v66;
      v57[7] = v67;
      v57[0] = v60;
      v57[1] = v61;
      v57[2] = v62;
      v57[3] = v63;
      if (sub_26BE6917C(v57) > 1)
      {
        nullsub_1(v57);
        v34 = sub_26BF2F7B0();
        v38 = v35;
        v39 = v34;
        v41 = sub_26BF2F7B0();
        v42 = v36;
        sub_26C009C5C();
        v22 = 0;
      }

      else
      {
        nullsub_1(v57);
        v20 = sub_26BF2F7B0();
        v38 = v21;
        v39 = v20;
        v22 = 1;
      }

      v23 = type metadata accessor for MLS.Cryptography.MACTag(0);
      (*(*(v23 - 8) + 56))(v11, v22, 1, v23);
      sub_26BF81FE8(v11, v13);
      sub_26BF81FE8(v13, v17 + *(v14 + 20));
      v24 = v38;
      *v17 = v39;
      v17[1] = v24;
      sub_26BF9E3A0(v17, v6, type metadata accessor for MLS.FramedContentAuthData);
      v25 = *(v71 + 56);
      v25(v6, 0, 1, v14);
      v26 = *(type metadata accessor for MLS.AuthenticatedContent() + 24);
      v25((a1 + v26), 1, 1, v14);
      v27 = v53;
      *(a1 + 184) = v54;
      v28 = v56[0];
      *(a1 + 200) = v55;
      *(a1 + 216) = v28;
      *(a1 + 225) = *(v56 + 9);
      v29 = v49;
      *(a1 + 120) = v50;
      v30 = v52;
      *(a1 + 136) = v51;
      *(a1 + 152) = v30;
      *(a1 + 168) = v27;
      v31 = v45;
      *(a1 + 56) = v46;
      v32 = v48;
      *(a1 + 72) = v47;
      *(a1 + 88) = v32;
      *(a1 + 104) = v29;
      v33 = v44;
      *(a1 + 8) = v43;
      *(a1 + 24) = v33;
      *a1 = v40;
      *(a1 + 40) = v31;
      sub_26BE7170C(v6, a1 + v26, &qword_28045E4E0, &qword_26C015A80);
    }
  }
}

uint64_t sub_26BF9D0DC(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v28 = *(a1 + 32);
  v29 = v5;
  v30 = *(a1 + 64);
  v6 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v6;
  v7 = *v1;
  v8 = *(v1 + 12);
  v31[0] = *(v1 + 4);
  v31[1] = v8;
  v9 = *(v1 + 20);
  v10 = *(v1 + 28);
  v11 = *(v1 + 44);
  v12 = *(v1 + 52);
  v31[4] = *(v1 + 36);
  v31[5] = v11;
  v31[2] = v9;
  v31[3] = v10;
  v13 = *(v1 + 60);
  v14 = *(v1 + 76);
  v31[8] = *(v1 + 68);
  v31[9] = v14;
  v15 = *(v1 + 84);
  v31[6] = v12;
  v31[7] = v13;
  v16 = *(v1 + 100);
  *(v32 + 9) = *(v1 + 225);
  v17 = *(v1 + 108);
  v31[12] = v16;
  v32[0] = v17;
  v18 = *(v1 + 92);
  v31[10] = v15;
  v31[11] = v18;
  *(&__dst[11] + 6) = *(v1 + 92);
  *(&__dst[12] + 6) = *(v1 + 100);
  *(&__dst[13] + 6) = *(v1 + 108);
  *(&__dst[13] + 15) = *(v1 + 225);
  *(&__dst[7] + 6) = *(v1 + 60);
  *(&__dst[8] + 6) = *(v1 + 68);
  *(&__dst[9] + 6) = *(v1 + 76);
  *(&__dst[10] + 6) = *(v1 + 84);
  *(&__dst[3] + 6) = *(v1 + 28);
  *(&__dst[4] + 6) = *(v1 + 36);
  *(&__dst[5] + 6) = *(v1 + 44);
  *(&__dst[6] + 6) = *(v1 + 52);
  *(__dst + 6) = *(v1 + 4);
  *(&__dst[1] + 6) = *(v1 + 12);
  *(&__dst[2] + 6) = *(v1 + 20);
  *&v23[23] = v4;
  *&v23[39] = v28;
  *&v23[55] = *(a1 + 48);
  *&v23[71] = *(a1 + 64);
  *&v23[7] = v27[0];
  LOWORD(__src[0]) = v7;
  *(&__src[11] + 2) = __dst[11];
  *(&__src[12] + 2) = __dst[12];
  *(&__src[13] + 2) = __dst[13];
  *(&__src[14] + 1) = *(&__dst[13] + 15);
  *(&__src[7] + 2) = __dst[7];
  *(&__src[8] + 2) = __dst[8];
  *(&__src[9] + 2) = __dst[9];
  *(&__src[10] + 2) = __dst[10];
  *(&__src[3] + 2) = __dst[3];
  *(&__src[4] + 2) = __dst[4];
  *(&__src[5] + 2) = __dst[5];
  *(&__src[6] + 2) = __dst[6];
  *(__src + 2) = __dst[0];
  *(&__src[1] + 2) = __dst[1];
  *(&__src[2] + 2) = __dst[2];
  *(&__src[16] + 1) = *&v23[16];
  *(&__src[17] + 1) = *&v23[32];
  *(&__src[18] + 1) = *&v23[48];
  __src[19] = *&v23[63];
  *(&__src[15] + 1) = *v23;
  v25 = xmmword_26C00BBD0;
  v26 = 0;
  memcpy(__dst, __src, sizeof(__dst));
  sub_26BE2FB24(v31, v23);
  sub_26BE2E1F0(v27, v23, &qword_28045E750, &unk_26C011558);
  sub_26BF30B98(__dst);
  if (!v2)
  {
    v19 = v25;
    v20 = *(&v25 + 1) >> 62;
    if ((*(&v25 + 1) >> 62) > 1)
    {
      if (v20 != 2)
      {
LABEL_11:
        v3 = sub_26C00909C();
        sub_26BF9E6AC(__src);
        sub_26BE00258(v19, *(&v19 + 1));
        return v3;
      }

      v21 = *(v25 + 24);
    }

    else
    {
      if (!v20)
      {
        goto LABEL_11;
      }

      v21 = v25 >> 32;
    }

    if (v21 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  sub_26BF9E6AC(__src);
  sub_26BE00258(v25, *(&v25 + 1));
  return v3;
}

uint64_t sub_26BF9D400@<X0>(unsigned __int16 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for MLS.FramedContentAuthData();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MLS.PublicMessage();
  v12 = *(v34 + 24);
  v13 = type metadata accessor for MLS.Cryptography.MACTag(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = *a1;
  if (v14 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v16 = v14;
    *(v16 + 2) = 1;
    *(v16 + 4) = 0;
    v17 = 17;
    goto LABEL_5;
  }

  v15 = type metadata accessor for MLS.AuthenticatedContent();
  sub_26BE2E1F0(a1 + *(v15 + 24), v7, &qword_28045E4E0, &qword_26C015A80);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26BE2E258(v7, &qword_28045E4E0, &qword_26C015A80);
    sub_26BE01654();
    swift_allocError();
    *v16 = 0xD00000000000003DLL;
    *(v16 + 8) = 0x800000026C02D350;
    v17 = 16;
LABEL_5:
    *(v16 + 112) = v17;
    swift_willThrow();
    sub_26BF9E7A4(a1, type metadata accessor for MLS.AuthenticatedContent);
    return sub_26BE2E258(a2 + v12, &qword_28045E4E8, &qword_26C012550);
  }

  v19 = v35;
  sub_26BF9E3A0(v7, v35, type metadata accessor for MLS.FramedContentAuthData);
  v20 = *(a1 + 92);
  v21 = *(a1 + 108);
  v49 = *(a1 + 100);
  v50[0] = v21;
  *(v50 + 9) = *(a1 + 225);
  v22 = *(a1 + 60);
  v23 = *(a1 + 76);
  v45 = *(a1 + 68);
  v46 = v23;
  v47 = *(a1 + 84);
  v48 = v20;
  v24 = *(a1 + 28);
  v25 = *(a1 + 44);
  v41 = *(a1 + 36);
  v42 = v25;
  v43 = *(a1 + 52);
  v44 = v22;
  v26 = *(a1 + 12);
  v37 = *(a1 + 4);
  v38 = v26;
  v39 = *(a1 + 20);
  v40 = v24;
  sub_26BE2FB24(&v37, &v36);
  sub_26BF9E7A4(a1, type metadata accessor for MLS.AuthenticatedContent);
  v27 = v50[0];
  a2[12] = v49;
  a2[13] = v27;
  *(a2 + 217) = *(v50 + 9);
  v28 = v46;
  a2[8] = v45;
  a2[9] = v28;
  v29 = v48;
  a2[10] = v47;
  a2[11] = v29;
  v30 = v42;
  a2[4] = v41;
  a2[5] = v30;
  v31 = v44;
  a2[6] = v43;
  a2[7] = v31;
  v32 = v38;
  *a2 = v37;
  a2[1] = v32;
  v33 = v40;
  a2[2] = v39;
  a2[3] = v33;
  return sub_26BF9E3A0(v19, a2 + *(v34 + 20), type metadata accessor for MLS.FramedContentAuthData);
}

uint64_t sub_26BF9D7A8@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v59 = a2;
  v7 = _s23AuthenticatedContentTBMVMa();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  v13 = *(a3 + 48);
  v71 = *(a3 + 32);
  v72 = v13;
  v14 = *(a3 + 16);
  v70[0] = *a3;
  v70[1] = v14;
  v15 = v4[12];
  v16 = v4[10];
  v84 = v4[11];
  v85 = v15;
  v17 = v4[12];
  v86[0] = v4[13];
  *(v86 + 9) = *(v4 + 217);
  v18 = v4[7];
  v19 = v4[9];
  v81 = v4[8];
  v82 = v19;
  v20 = v4[9];
  v83 = v4[10];
  v21 = v4[3];
  v22 = v4[5];
  v77 = v4[4];
  v78 = v22;
  v23 = v4[5];
  v24 = v4[7];
  v79 = v4[6];
  v80 = v24;
  v25 = v4[1];
  v74[0] = *v4;
  v74[1] = v25;
  v26 = v4[3];
  v28 = *v4;
  v27 = v4[1];
  v75 = v4[2];
  v76 = v26;
  *(&v69[11] + 6) = v84;
  *(&v69[12] + 6) = v17;
  *(&v69[13] + 6) = v4[13];
  *(&v69[13] + 15) = *(v4 + 217);
  *(&v69[7] + 6) = v18;
  *(&v69[8] + 6) = v81;
  *(&v69[9] + 6) = v20;
  *(&v69[10] + 6) = v16;
  *(&v69[3] + 6) = v21;
  *(&v69[4] + 6) = v77;
  *(&v69[5] + 6) = v23;
  *(&v69[6] + 6) = v79;
  *(v69 + 6) = v28;
  *(&v69[1] + 6) = v27;
  *(&v69[2] + 6) = v75;
  *(&v68[1] + 7) = v12;
  *(&v68[2] + 7) = v71;
  *(&v68[3] + 7) = *(a3 + 48);
  v29 = *a1;
  v73 = *(a3 + 64);
  *(&v68[4] + 7) = *(a3 + 64);
  *(v68 + 7) = v70[0];
  v30 = type metadata accessor for MLS.PublicMessage();
  v31 = *(v8 + 28);
  sub_26BF9E408(v4 + *(v30 + 20), &v11[v31], type metadata accessor for MLS.FramedContentAuthData);
  v32 = v69[10];
  *(v11 + 178) = v69[11];
  v33 = v69[13];
  *(v11 + 194) = v69[12];
  *(v11 + 210) = v33;
  *(v11 + 225) = *(&v69[13] + 15);
  v34 = v69[6];
  *(v11 + 114) = v69[7];
  v35 = v69[9];
  *(v11 + 130) = v69[8];
  *(v11 + 146) = v35;
  *(v11 + 162) = v32;
  v36 = v69[2];
  *(v11 + 50) = v69[3];
  v37 = v69[5];
  *(v11 + 66) = v69[4];
  *(v11 + 82) = v37;
  *(v11 + 98) = v34;
  v38 = v69[1];
  *(v11 + 2) = v69[0];
  *(v11 + 18) = v38;
  *(v11 + 34) = v36;
  v39 = v68[2];
  v40 = v68[3];
  v41 = v68[0];
  *(v11 + 257) = v68[1];
  *(v11 + 273) = v39;
  *(v11 + 289) = v40;
  *(v11 + 19) = *(&v68[3] + 15);
  *v11 = 1;
  *(v11 + 241) = v41;
  v66 = xmmword_26C00BBD0;
  v67 = 0;
  memcpy(v87, v11, 0x140uLL);
  memcpy(v65, v11, sizeof(v65));
  sub_26BE2FB24(v74, v64);
  sub_26BE2E1F0(v70, v64, &qword_28045E750, &unk_26C011558);
  sub_26BF9E748(v87, v64);
  v42 = v88;
  sub_26BF30B98(v65);
  if (v42)
  {
    memcpy(v64, v65, sizeof(v64));
    sub_26BF9E6AC(v64);
    sub_26BF9E7A4(v11, _s23AuthenticatedContentTBMVMa);
    return sub_26BE00258(v66, *(&v66 + 1));
  }

  LODWORD(v88) = v29;
  v43 = v59;
  memcpy(v64, v65, sizeof(v64));
  sub_26BF9E6AC(v64);
  v44 = *(v11 + 200);
  v62[8] = *(v11 + 184);
  v62[9] = v44;
  v63[0] = *(v11 + 216);
  *(v63 + 9) = *(v11 + 225);
  v45 = *(v11 + 136);
  v62[4] = *(v11 + 120);
  v62[5] = v45;
  v46 = *(v11 + 168);
  v62[6] = *(v11 + 152);
  v62[7] = v46;
  v47 = *(v11 + 72);
  v62[0] = *(v11 + 56);
  v62[1] = v47;
  v48 = *(v11 + 104);
  v62[2] = *(v11 + 88);
  v62[3] = v48;
  v49 = sub_26BE6917C(v62);
  if (v49)
  {
    if (v49 == 1)
    {
      nullsub_1(v62);
      v50 = 2;
    }

    else
    {
      nullsub_1(v62);
      v50 = 3;
    }
  }

  else
  {
    nullsub_1(v62);
    v50 = 1;
  }

  v61[0] = v50;
  sub_26BED4DD8(&v11[v31], v61);
  v52 = v66;
  v53 = *(&v66 + 1) >> 62;
  if ((*(&v66 + 1) >> 62) > 1)
  {
    if (v53 != 2)
    {
      goto LABEL_16;
    }

    v54 = *(v66 + 24);
LABEL_14:
    if (v54 < 0)
    {
      __break(1u);
    }

    goto LABEL_16;
  }

  if (v53)
  {
    v54 = v66 >> 32;
    goto LABEL_14;
  }

LABEL_16:
  v55 = sub_26C00909C();
  v57 = v56;
  result = sub_26BE00258(v52, *(&v52 + 1));
  if ((v88 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v60 = v88 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v60, v61);
    MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(v43, v55, v57);
    sub_26BF9E7A4(v11, _s23AuthenticatedContentTBMVMa);
    sub_26BE00258(v55, v57);
  }

  return result;
}

uint64_t sub_26BF9DC7C(uint64_t a1)
{
  v11[5] = *MEMORY[0x277D85DE8];
  if (a1 < 0)
  {
    __break(1u);
  }

  if (a1)
  {
    v2 = MEMORY[0x277D838B0];
    v3 = MEMORY[0x277CC9C18];
    v4 = a1;
    do
    {
      v10 = 0;
      v11[3] = v2;
      v11[4] = v3;
      v11[0] = &v10;
      v11[1] = v11;
      v5 = __swift_project_boxed_opaque_existential_1(v11, v2);
      v7 = *v5;
      v6 = v5[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(v11);
      --v4;
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_26BF9DD50(_OWORD *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v53 = a1;
  v54 = a2;
  v6 = sub_26C00914C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = *a3;
  v68 = v18;
  sub_26BEDCE9C(&v68, v69);
  if (!v4)
  {
    v71 = v10;
    v19 = v53;
    v20 = v54;
    v65 = v69[8];
    v66 = v69[9];
    *v67 = v70[0];
    *&v67[9] = *(v70 + 9);
    v61 = v69[4];
    v62 = v69[5];
    v63 = v69[6];
    v64 = v69[7];
    v57 = v69[0];
    v58 = v69[1];
    v59 = v69[2];
    v60 = v69[3];
    v51 = sub_26BF2F7B0();
    v52 = v21;
    if (v18 == 3)
    {
      v22 = sub_26BF2F7B0();
      v50 = 0;
      v24 = v20;
      v55 = v22;
      v56 = v25;
      sub_26C009C5C();
      v26 = type metadata accessor for MLS.Cryptography.MACTag(0);
      (*(*(v26 - 8) + 56))(v15, 0, 1, v26);
    }

    else
    {
      v50 = 0;
      v23 = type metadata accessor for MLS.Cryptography.MACTag(0);
      (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
      v24 = v20;
    }

    sub_26BF81FE8(v15, v17);
    v27 = type metadata accessor for MLS.FramedContentAuthData();
    sub_26BF81FE8(v17, v24 + *(v27 + 20));
    v28 = v52;
    *v24 = v51;
    v24[1] = v28;
    v29 = *v3;
    v30 = v3[1];
    v31 = v3[2];
    v32 = v30 >> 62;
    v33 = v19;
    if ((v30 >> 62) > 1)
    {
      v35 = 0;
      v34 = v6;
      v36 = v7;
      if (v32 == 2)
      {
        v35 = *(v29 + 24);
      }
    }

    else
    {
      v34 = v6;
      if (v32)
      {
        v35 = v29 >> 32;
      }

      else
      {
        v35 = BYTE6(v30);
      }

      v36 = v7;
    }

    if (__OFSUB__(v35, v31))
    {
      __break(1u);
    }

    else
    {
      v37 = sub_26BF2A51C(v35 - v31);
      if (v37)
      {
        v38 = sub_26BE12418(v37);
        v40 = v39;

        if (v40 >> 62 == 2)
        {
          v42 = *(v38 + 16);
        }

        sub_26BE00608(v38, v40);
        sub_26C00915C();
        sub_26BF9E700(&qword_28045E498, MEMORY[0x277CC92E0]);
        while (1)
        {
          sub_26C00AADC();
          if ((v55 & 0x100) != 0)
          {
            break;
          }

          if (v55)
          {
            (*(v36 + 8))(v71, v34);
            sub_26BE01654();
            swift_allocError();
            *v43 = 5;
            *(v43 + 8) = 0u;
            *(v43 + 24) = 0u;
            *(v43 + 40) = 0u;
            *(v43 + 56) = 0u;
            *(v43 + 72) = 0u;
            *(v43 + 88) = 0u;
            *(v43 + 104) = 0;
            *(v43 + 112) = 23;
            swift_willThrow();
            sub_26BE6FD84(&v57);
            sub_26BE00258(v38, v40);
            goto LABEL_22;
          }
        }

        sub_26BE00258(v38, v40);
        (*(v36 + 8))(v71, v34);
        v44 = v66;
        v33[8] = v65;
        v33[9] = v44;
        v33[10] = *v67;
        *(v33 + 169) = *&v67[9];
        v45 = v62;
        v33[4] = v61;
        v33[5] = v45;
        v46 = v64;
        v33[6] = v63;
        v33[7] = v46;
        v47 = v58;
        *v33 = v57;
        v33[1] = v47;
        v48 = v60;
        v33[2] = v59;
        v33[3] = v48;
      }

      else
      {
        sub_26BE01600();
        swift_allocError();
        *v41 = 5;
        swift_willThrow();
        sub_26BE6FD84(&v57);
LABEL_22:
        sub_26BF9E7A4(v24, type metadata accessor for MLS.FramedContentAuthData);
      }
    }
  }
}

unint64_t sub_26BF9E27C(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_26BF9C8E4(a2);
  if (v3 || (a3 & 1) == 0)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  v6 = result;
  result = sub_26C0092DC();
  if (v7)
  {
LABEL_8:
    sub_26BE01654();
    swift_allocError();
    *v9 = 40;
    v9[112] = 0;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v8 = result - v6;
  if (result < v6)
  {
    goto LABEL_8;
  }

  sub_26BF9DC7C(result - v6);
  result = v6 + v8;
  if (__OFADD__(v6, v8))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BF9E334(void (*a1)(void))
{
  a1();

  return sub_26C00B18C();
}

uint64_t sub_26BF9E370@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26BF9E3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BF9E408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BF9E470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AuthenticatedContent();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BF9E4E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AuthenticatedContent();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BF9E568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AuthenticatedContent();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_26BF9E5D8()
{
  type metadata accessor for MLS.AuthenticatedContent();
  if (v0 <= 0x3F)
  {
    sub_26BF9E65C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BF9E65C()
{
  if (!qword_28045FD08)
  {
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045FD08);
    }
  }
}

uint64_t sub_26BF9E700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BF9E7A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BF9E81C(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_26BEEBD8C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26BF9E914(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26BEEBFB0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26BF9EA00(uint64_t a1)
{
  v71 = _s9AttributeVMa(0);
  v3 = *(v71 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v71);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v69 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v60 - v11;
  MEMORY[0x28223BE20](v10);
  v72 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EEF0, &unk_26C0212A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v60 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E588, &qword_26C00E4E8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v60 - v19);
  v73 = v1;
  v21 = *v1;
  v22 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v24 = v21[3] >> 1, v24 <= v22))
  {
    v21 = sub_26BEECB54(isUniquelyReferenced_nonNull_native, v22 + 1, 1, v21);
    v24 = v21[3] >> 1;
  }

  v25 = v21[2];
  v26 = v3;
  v27 = *(v3 + 72);
  v28 = v24 - v25;
  v67 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v70 = v27;
  v29 = v21 + v67 + v27 * v25;
  sub_26BE2E1F0(a1, v16, &qword_28045EEF0, &unk_26C0212A0);
  v30 = sub_26BE33BA8(v20, v29, v28);
  sub_26BE2E258(a1, &qword_28045EEF0, &unk_26C0212A0);
  if (v30 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v31 = v21[2];
  v29 = v31 + v30;
  if (__OFADD__(v31, v30))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21[2] = v29;
  if (v30 != v28)
  {
    v32 = &qword_28045E588;
    v33 = &qword_26C00E4E8;
    v34 = v20;
    goto LABEL_8;
  }

LABEL_11:
  v36 = v72;
  sub_26BFA724C(v20, v72);
  v37 = v26;
  v38 = v26 + 56;
  v39 = *(v26 + 56);
  v40 = v71;
  v61 = v39;
  v62 = v38;
  v39(v20, 1, 1, v71);
  v41 = v36;
  v42 = v68;
  sub_26BE2E1F0(v41, v68, &qword_28045E528, &qword_26C00E4B0);
  v44 = *(v37 + 48);
  v43 = v37 + 48;
  v65 = v44;
  if (v44(v42, 1, v40) != 1)
  {
    v45 = &qword_26C00E4B0;
    v46 = v66;
    v64 = v43;
    do
    {
      sub_26BE2E258(v42, &qword_28045E528, v45);
      v47 = v21[3];
      v48 = v47 >> 1;
      if ((v47 >> 1) < v29 + 1)
      {
        v21 = sub_26BEECB54(v47 > 1, v29 + 1, 1, v21);
        v48 = v21[3] >> 1;
      }

      v49 = v69;
      sub_26BE2E1F0(v72, v69, &qword_28045E528, v45);
      if (v65(v49, 1, v71) == 1)
      {
        v50 = v69;
LABEL_26:
        sub_26BE2E258(v50, &qword_28045E528, v45);
        v51 = v29;
      }

      else
      {
        if (v29 <= v48)
        {
          v51 = v48;
        }

        else
        {
          v51 = v29;
        }

        v50 = v69;
        v52 = v21 + v67 + v70 * v29;
        v63 = v51;
        while (1)
        {
          sub_26BFA72BC(v50, v46, _s9AttributeVMa);
          if (v51 == v29)
          {
            break;
          }

          v53 = v45;
          v54 = v72;
          sub_26BE2E258(v72, &qword_28045E528, v53);
          sub_26BFA72BC(v46, v52, _s9AttributeVMa);
          ++v29;
          sub_26BFA724C(v20, v54);
          v55 = v46;
          v56 = v71;
          v61(v20, 1, 1, v71);
          v57 = v54;
          v45 = v53;
          v51 = v63;
          sub_26BE2E1F0(v57, v50, &qword_28045E528, v53);
          v58 = v56;
          v46 = v55;
          v59 = v65(v50, 1, v58);
          v52 += v70;
          if (v59 == 1)
          {
            goto LABEL_26;
          }
        }

        sub_26BFA7324(v46, _s9AttributeVMa);
        v29 = v51;
      }

      v21[2] = v51;
      v42 = v68;
      sub_26BE2E1F0(v72, v68, &qword_28045E528, v45);
    }

    while (v65(v42, 1, v71) != 1);
  }

  sub_26BE2E258(v72, &qword_28045E528, &qword_26C00E4B0);
  sub_26BE2E258(v20, &qword_28045E588, &qword_26C00E4E8);
  v34 = v42;
  v32 = &qword_28045E528;
  v33 = &qword_26C00E4B0;
LABEL_8:
  result = sub_26BE2E258(v34, v32, v33);
  *v73 = v21;
  return result;
}

uint64_t sub_26BF9F008(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26C00AB8C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_26C00AB8C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_26BFA5BEC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26BFA5F9C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26BF9F0F8(uint64_t result)
{
  v2 = *(result + 16);
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_26BEECB54(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = _s9AttributeVMa(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id static RCSFileAttachmentCrypto.openDataInputStream(data:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
  v5 = objc_allocWithZone(v4);
  v6 = 0;
  v7 = &v5[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
  *v7 = a1;
  v7[1] = a2;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v6 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v6 = a1;
LABEL_6:
    sub_26BE00608(a1, a2);
    sub_26BE00608(a1, a2);
  }

  *&v5[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos] = v6;
  v9 = sub_26C0090DC();
  v12.receiver = v5;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_initWithData_, v9);
  sub_26BE00258(a1, a2);

  [v10 open];
  return v10;
}

id static RCSFileAttachmentCrypto.openDataOutputStream()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB78]) initToMemory];
  [v0 open];
  return v0;
}

void RCSFileAttachmentCrypto.RCSFileEncryption.encryptFile()(uint64_t *a1@<X8>)
{
  v3 = v1;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v5 = sub_26C009A5C();
  __swift_project_value_buffer(v5, qword_280478E70);
  v6 = sub_26C009A3C();
  v7 = sub_26C00AA1C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26BDFE000, v6, v7, "RCSFileEncryption: Beginning encryption", v8, 2u);
    MEMORY[0x26D69A4E0](v8, -1, -1);
  }

  sub_26BFA2AB0();
  if (!v2)
  {
    v9 = sub_26C009A3C();
    v10 = sub_26C00AA1C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26BDFE000, v9, v10, "RCSFileEncryption: encryptAndMACPlaintext Complete", v11, 2u);
      MEMORY[0x26D69A4E0](v11, -1, -1);
    }

    sub_26BFA3124();
    v12 = sub_26C009A3C();
    v13 = sub_26C00AA1C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26BDFE000, v12, v13, "RCSFileEncryption: encryptAndMACPadding Complete", v14, 2u);
      MEMORY[0x26D69A4E0](v14, -1, -1);
    }

    sub_26BFA3738();
    v15 = sub_26C009A3C();
    v16 = sub_26C00AA1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26BDFE000, v15, v16, "RCSFileEncryption: encryptAndMACEncodedLengths Complete", v17, 2u);
      MEMORY[0x26D69A4E0](v17, -1, -1);
    }

    v18 = sub_26BFA3A6C();
    v19 = *(v3 + 8);
    v20 = *(v3 + 16);
    v21 = v18;
    v23 = v22;
    sub_26BE00608(v19, v20);
    RCSFileAttachmentCrypto.RCSFileEncryption.TagAndIV.init(tag:iv:)(v21, v23, v19, v20, a1);
  }

  sub_26BFA298C(v3);
}

uint64_t static RCSFileAttachmentCrypto.verifyCommitment(ciphersuite:label:value:commitment:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v13 = sub_26C009C8C();
  v35 = *(v13 - 8);
  v14 = *(v35 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  LOBYTE(v31) = *a1;
  v32 = *(a1 + 8);
  v33 = v20;
  v34 = v21;
  v22 = sub_26BFA61F0(&v31, a2, a3, a4, a5);
  if (!v7)
  {
    v31 = v29;
    *&v32 = v30;
    v24 = v22;
    v25 = v23;
    sub_26BE00608(v29, v30);
    sub_26C009C5C();
    v31 = v24;
    *&v32 = v25;
    sub_26BE00608(v24, v25);
    sub_26C009C5C();
    LOBYTE(a2) = MEMORY[0x26D698700](v19, v17);
    sub_26BE00258(v24, v25);
    v26 = *(v35 + 8);
    v26(v17, v13);
    v26(v19, v13);
  }

  return a2 & 1;
}

void sub_26BF9F87C(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>, uint64_t a10, unint64_t a11, int a12, char a13, int a14)
{
  v145 = a6;
  v146 = a8;
  v148 = a5;
  v149 = a4;
  v155 = a2;
  v147 = a1;
  v17 = sub_26C009DAC();
  v139 = *(v17 - 8);
  v140 = v17;
  v18 = *(v139 + 64);
  MEMORY[0x28223BE20](v17);
  v138 = v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26C009E0C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v137 = v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB50, &unk_26C020ED0);
  v24 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v134 = v122 - v25;
  v26 = sub_26C009C8C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v142 = v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v141 = v122 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v122 - v34;
  MEMORY[0x28223BE20](v33);
  v143 = v122 - v36;
  v37 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v38 = &a9[v37[8]];
  *v38 = 0;
  v38[4] = 1;
  v39 = &a9[v37[10]];
  *v39 = 0;
  v39[4] = 1;
  *&a9[v37[11]] = 0;
  *&a9[v37[12]] = 0;
  *&a9[v37[13]] = 0;
  v40 = v37[15];
  v132 = v21;
  v41 = *(v21 + 56);
  v144 = v40;
  v133 = v20;
  v41(&a9[v40], 1, 1, v20);
  if ((a7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (HIDWORD(a7))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v42 = a10;
  *a9 = a7;
  if (a7 < 8)
  {
    v43 = a10;
    sub_26BF7EDDC();
    swift_allocError();
    *v44 = 5;
    swift_willThrow();
    v45 = v148;
LABEL_31:
    sub_26BE00258(v43, a11);

    sub_26BE00258(v155, a3);
    sub_26BE00258(v149, v45);
    (*(v27 + 8))(v147, v26);
    sub_26BE2E258(&a9[v144], &qword_28045FD60, &unk_26C021210);
    return;
  }

  v46 = a3 >> 62;
  v45 = v148;
  if ((a3 >> 62) > 1)
  {
    if (v46 != 2)
    {
      goto LABEL_18;
    }

    v48 = *(v155 + 16);
    v47 = *(v155 + 24);
    v49 = __OFSUB__(v47, v48);
    v50 = v47 - v48;
    if (!v49)
    {
      if (v50 == 12)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v46)
  {
    if (!__OFSUB__(HIDWORD(v155), v155))
    {
      if (HIDWORD(v155) - v155 == 12)
      {
        goto LABEL_12;
      }

LABEL_18:
      v43 = a10;
      sub_26BF7EDDC();
      swift_allocError();
      v53 = 6;
LABEL_30:
      *v52 = v53;
      swift_willThrow();
      goto LABEL_31;
    }

    goto LABEL_70;
  }

  if (BYTE6(a3) != 12)
  {
    goto LABEL_18;
  }

LABEL_12:
  v51 = v148 >> 62;
  if ((v148 >> 62) > 1)
  {
    if (v51 != 2)
    {
      goto LABEL_29;
    }

    v55 = *(v149 + 16);
    v54 = *(v149 + 24);
    v49 = __OFSUB__(v54, v55);
    v56 = v54 - v55;
    if (!v49)
    {
      if (v56 == 32)
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }

    goto LABEL_71;
  }

  if (!v51)
  {
    if (BYTE6(v148) != 32)
    {
      goto LABEL_29;
    }

LABEL_22:
    v57 = v37[20];
    v58 = &a9[v37[9]];
    *v58 = a12;
    v58[4] = a13 & 1;
    *&a9[v57] = a14;
    v59 = &a9[v37[17]];
    v131 = a3;
    v60 = v149;
    *v59 = v149;
    *(v59 + 1) = v45;
    v61 = *(v27 + 16);
    v128 = v37[5];
    v130 = v26;
    v127 = v27 + 16;
    v126 = v61;
    v61(&a9[v128], v147, v26);
    v62 = &a9[v37[7]];
    v63 = v155;
    v64 = v131;
    v129 = v62;
    *v62 = v155;
    v62[1] = v64;
    v65 = v60;
    v66 = v131;
    sub_26BE00608(v65, v148);
    sub_26BE00608(v63, v66);
    if (sub_26C009C7C() != 256)
    {
      v69 = a10;
      v70 = 3;
      v26 = v130;
      goto LABEL_34;
    }

    v67 = a11 >> 62;
    if ((a11 >> 62) > 1)
    {
      v26 = v130;
      v45 = v141;
      if (v67 != 2)
      {
        goto LABEL_38;
      }

      v75 = *(a10 + 16);
      v74 = *(a10 + 24);
      v49 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      if (!v49)
      {
LABEL_37:
        if (v68 < 0xFFFF)
        {
LABEL_38:
          if (qword_28045DFD8 == -1)
          {
            goto LABEL_39;
          }

          goto LABEL_73;
        }

        v69 = a10;
        v70 = 0;
LABEL_34:
        sub_26BF7EDDC();
        swift_allocError();
        *v71 = v70;
        swift_willThrow();
        sub_26BE00258(v69, a11);

        sub_26BE00258(v155, v66);
        sub_26BE00258(v149, v148);
        v72 = *(v27 + 8);
        v72(v147, v26);
        v72(&a9[v128], v26);
        sub_26BE00258(*v129, v129[1]);
        v73 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      v26 = v130;
      v45 = v141;
      if (!v67)
      {
        goto LABEL_38;
      }

      LODWORD(v68) = HIDWORD(a10) - a10;
      if (!__OFSUB__(HIDWORD(a10), a10))
      {
        v68 = v68;
        goto LABEL_37;
      }

      __break(1u);
    }

    __break(1u);
LABEL_76:
    swift_once();
    goto LABEL_52;
  }

  if (!__OFSUB__(HIDWORD(v149), v149))
  {
    if (HIDWORD(v149) - v149 == 32)
    {
      goto LABEL_22;
    }

LABEL_29:
    v43 = a10;
    sub_26BF7EDDC();
    swift_allocError();
    v53 = 4;
    goto LABEL_30;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  swift_once();
LABEL_39:
  v150 = xmmword_280478FF8;
  v124 = a10;
  v153 = a10;
  v154 = a11;
  v125 = a11;
  sub_26BE00608(xmmword_280478FF8, *(&xmmword_280478FF8 + 1));
  v76 = sub_26C00A30C();
  v77 = sub_26BFA658C(&qword_28045E370, MEMORY[0x277CC5540]);
  v122[3] = sub_26BE016A8();
  v122[2] = v76;
  v122[1] = v77;
  sub_26C009E1C();
  sub_26BE00258(v150, *(&v150 + 1));
  v78 = v134;
  v79 = v135;
  v80 = v136;
  sub_26C009C3C();
  v123 = v80;
  v81 = *(v27 + 8);
  v122[4] = v27 + 8;
  v136 = v81;
  v81(v45, v26);
  v82 = *(v79 + 48);
  v83 = *(v27 + 32);
  v83(v35, v78, v26);
  v83(v143, &v78[v82], v26);
  v84 = v37[6];
  v83(&a9[v84], v35, v26);
  v85 = v145;
  v135 = v37[18];
  *&a9[v135] = v145;
  v86 = v146;
  v134 = v37[19];
  *&v134[a9] = v146;
  v126(v142, &a9[v84], v26);
  v87 = v155;
  v88 = v131;
  v153 = v155;
  v154 = v131;
  v151 = MEMORY[0x277CC9318];
  v152 = MEMORY[0x277CC9300];
  v150 = xmmword_26C01F8F0;
  v89 = __swift_project_boxed_opaque_existential_1(&v150, MEMORY[0x277CC9318]);
  v90 = *v89;
  v91 = v89[1];
  sub_26BE00608(v87, v88);
  v145 = v85;
  v146 = v86;
  v92 = v123;
  sub_26BE121A0(v90, v91);
  __swift_destroy_boxed_opaque_existential_1(&v150);
  (*(v139 + 104))(v138, *MEMORY[0x277CC53E8], v140);
  v93 = v137;
  sub_26C009DDC();
  v94 = v26;
  v26 = v92;
  if (v92)
  {
    v95 = v125;
    v35 = v143;
LABEL_42:
    v98 = v131;
LABEL_43:
    [*&v134[a9] close];
    [*&a9[v135] close];
    swift_willThrow();
    sub_26BE00258(v124, v95);

    sub_26BE00258(v155, v98);
    sub_26BE00258(v149, v148);
    v99 = v130;
    v100 = v136;
    v136(v147, v130);
    v100(v35, v99);
    v100(&a9[v128], v99);
    v100(&a9[v37[6]], v99);
    sub_26BE00258(*v129, v129[1]);
    if (!v26)
    {
      (*(v132 + 8))(&a9[v37[14]], v133);
      sub_26BE2E258(&a9[v144], &qword_28045FD60, &unk_26C021210);
      v101 = v37[16];
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
      (*(*(v102 - 8) + 8))(&a9[v101], v102);
      v73 = 1;
LABEL_46:
      sub_26BE00258(*&a9[v37[17]], *&a9[v37[17] + 8]);
      if (v73)
      {
      }

      return;
    }

    v73 = 1;
LABEL_45:
    sub_26BE2E258(&a9[v144], &qword_28045FD60, &unk_26C021210);
    goto LABEL_46;
  }

  (*(v132 + 32))(&a9[v37[14]], v93, v133);
  v35 = v143;
  v126(v141, v143, v94);
  v96 = v37[16];
  sub_26C009E2C();
  *&v150 = v155;
  *(&v150 + 1) = v131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
  sub_26C009E3C();
  v97 = sub_26BFA4308();
  v42 = 0;
  v95 = v125;
  if ((v97 & 1) == 0)
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v119 = 8;
    swift_willThrow();
    goto LABEL_42;
  }

  if (qword_28045DF40 != -1)
  {
    goto LABEL_76;
  }

LABEL_52:
  v103 = sub_26C009A5C();
  __swift_project_value_buffer(v103, qword_280478E70);
  v104 = sub_26C009A3C();
  v105 = sub_26C00AA1C();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&dword_26BDFE000, v104, v105, "RCS attachment decryption tag validated", v106, 2u);
    v107 = v106;
    v35 = v143;
    MEMORY[0x26D69A4E0](v107, -1, -1);
  }

  v108 = sub_26BFA473C();
  if (v42)
  {
    goto LABEL_66;
  }

  if ((v108 & 1) == 0)
  {
LABEL_65:
    sub_26BF7EDDC();
    swift_allocError();
    *v120 = 9;
    swift_willThrow();
LABEL_66:
    v98 = v131;
LABEL_67:
    v95 = v125;
    goto LABEL_43;
  }

  v109 = sub_26C009A3C();
  v110 = sub_26C00AA1C();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_26BDFE000, v109, v110, "RCS attachment decryption lengths validated", v111, 2u);
    v112 = v111;
    v35 = v143;
    MEMORY[0x26D69A4E0](v112, -1, -1);
  }

  v113 = sub_26BFA499C();
  v98 = v131;
  if ((v113 & 1) == 0)
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v121 = 10;
    swift_willThrow();
    goto LABEL_67;
  }

  v114 = sub_26C009A3C();
  v115 = sub_26C00AA1C();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    *v116 = 0;
    _os_log_impl(&dword_26BDFE000, v114, v115, "RCS attachment decryption padding validated", v116, 2u);
    MEMORY[0x26D69A4E0](v116, -1, -1);
  }

  sub_26BE00258(v124, v125);
  sub_26BE00258(v155, v98);
  sub_26BE00258(v149, v148);
  v117 = v130;
  v118 = v136;
  v136(v147, v130);
  v118(v35, v117);
}