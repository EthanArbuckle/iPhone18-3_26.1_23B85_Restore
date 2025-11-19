uint64_t sub_231419C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v93 = a3;
  v94 = a4;
  v95 = a2;
  v103 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D880, &qword_23147A208);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v92 = &v75 - v8;
  v91 = type metadata accessor for _NewEntity(0);
  v9 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v97 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D888, &unk_23147A210);
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v11);
  v88 = &v75 - v13;
  v14 = sub_231477468();
  v96 = *(v14 - 8);
  v15 = *(v96 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  v85 = *(v20 - 8);
  v86 = v20;
  v21 = *(v85 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v75 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v75 - v26;
  v28 = type metadata accessor for Interaction(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2313E93D4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v28);
  v33 = MEMORY[0x277D837D0];
  v34 = MEMORY[0x277D0B840];
  if (EnumTagSinglePayload == 1)
  {
    v35 = MEMORY[0x277D0B840];
    sub_2313E937C(v27, &qword_27DD4D690, &qword_231479AD0);
    v36 = v96;
  }

  else
  {
    sub_2313F31EC();
    type metadata accessor for _Interaction(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D878, &qword_23147A200);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_231479580;
    v39 = *v31;
    v38 = v31[1];
    *(v37 + 56) = v33;
    *(v37 + 64) = v34;
    *(v37 + 32) = v39;
    *(v37 + 40) = v38;

    sub_231477448();
    sub_2313F7138(&qword_280C3C5E0, type metadata accessor for _Interaction);
    sub_231476EE8();
    v36 = v96;
    (*(v96 + 8))(v19, v14);
    v40 = v86;
    sub_2314774E8();
    if (v5)
    {
      (*(v85 + 8))(v23, v40);
      return sub_2313EB380();
    }

    v42 = v40;
    v35 = v34;
    (*(v85 + 8))(v23, v42);
    sub_2313EB380();
  }

  type metadata accessor for _NewInteraction(0);
  sub_2313F7138(&qword_280C3C588, type metadata accessor for _NewInteraction);
  result = sub_231477418();
  if (!v5)
  {
    v43 = v36;
    v44 = sub_231477788();
    v83 = sub_231477768();
    v45 = 0;
    v82 = *(v94 + 16);
    v78 = "dsTokens=?4, updatedAt=?5";
    v79 = (v43 + 8);
    v80 = xmmword_231479AB0;
    v77 = xmmword_231479AC0;
    v46 = v35;
    v81 = v14;
    v76 = v44;
    while (1)
    {
      if (v82 == v45)
      {
      }

      v47 = v88;
      v48 = v94 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
      v49 = *(v89 + 72);
      v84 = v45;
      sub_2313E93D4();
      v50 = v47[1];
      v85 = *v47;
      v95 = 0;
      v96 = v50;
      v51 = *(v90 + 48);
      v52 = v97;
      sub_2313F31EC();
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D878, &qword_23147A200);
      v53 = swift_allocObject();
      *(v53 + 16) = v80;
      v54 = *v52;
      v55 = v52[1];
      v56 = MEMORY[0x277D837D0];
      *(v53 + 56) = MEMORY[0x277D837D0];
      *(v53 + 64) = v46;
      v86 = v54;
      *(v53 + 32) = v54;
      *(v53 + 40) = v55;
      v57 = v52[2];
      v58 = v52[3];
      *(v53 + 96) = v56;
      *(v53 + 104) = v46;
      *(v53 + 72) = v57;
      *(v53 + 80) = v58;
      v59 = v52[4];
      v60 = v52[5];
      *(v53 + 136) = v56;
      *(v53 + 144) = v46;
      *(v53 + 112) = v59;
      *(v53 + 120) = v60;
      v61 = v52[6];
      v62 = v52[7];
      *(v53 + 176) = v56;
      *(v53 + 184) = v46;
      *(v53 + 152) = v61;
      *(v53 + 160) = v62;
      v63 = *(v91 + 32);

      v64 = v92;
      sub_231476BC8();
      *(v53 + 216) = MEMORY[0x277D839F8];
      *(v53 + 224) = MEMORY[0x277D0B860];
      *(v53 + 192) = v65;
      v66 = v81;
      sub_231477448();
      __swift_storeEnumTagSinglePayload(v64, 0, 1, v66);
      v67 = v95;
      sub_231477818();
      if (v67)
      {

        sub_2313E937C(v64, &qword_27DD4D880, &qword_23147A208);
        return sub_2313EB380();
      }

      sub_2313E937C(v64, &qword_27DD4D880, &qword_23147A208);
      v68 = swift_allocObject();
      *(v68 + 16) = v77;
      *(v68 + 56) = v56;
      *(v68 + 64) = v46;
      *(v68 + 32) = v86;
      *(v68 + 40) = v55;
      *(v68 + 96) = v56;
      *(v68 + 104) = v46;
      *(v68 + 72) = v57;
      *(v68 + 80) = v58;

      v69 = v87;
      sub_231477448();
      v100 = 0;
      v98 = 0u;
      v99 = 0u;
      sub_231477538();
      sub_2313E937C(&v98, &unk_27DD4D8A0, &unk_23147A220);
      (*v79)(v69, v66);
      if (v102)
      {
        break;
      }

      *&v98 = v76;
      *(&v98 + 1) = v101;
      *&v99 = v85;
      *(&v99 + 1) = v96;
      sub_23141F970();
      sub_231477418();
      sub_2313EB380();

      v45 = v84 + 1;
    }

    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v70 = sub_231477B68();
    __swift_project_value_buffer(v70, qword_280C3D970);
    v71 = sub_231477B58();
    v72 = sub_2314782B8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v98 = v74;
      *v73 = 136446722;
      *(v73 + 4) = sub_2313EB684(0xD00000000000005ELL, 0x80000002314825D0, &v98);
      *(v73 + 12) = 2082;
      *(v73 + 14) = sub_2313EB684(0xD00000000000004DLL, 0x8000000231482630, &v98);
      *(v73 + 22) = 2050;
      *(v73 + 24) = 369;
      _os_log_impl(&dword_2313E1000, v71, v72, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v73, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23192F1F0](v74, -1, -1);
      MEMORY[0x23192F1F0](v73, -1, -1);
    }

    sub_23141F91C();
    swift_allocError();
    swift_willThrow();

    return sub_2313EB380();
  }

  return result;
}

uint64_t sub_23141A7C8@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v18[0] = a2;
  v3 = sub_231477468();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = "f keys found, expected one.";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D878, &qword_23147A200);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_231479AC0;
  v9 = *a1;
  v10 = *(a1 + 1);
  v11 = MEMORY[0x277D0B840];
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = v11;
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  v12 = *(type metadata accessor for Interaction(0) + 48);
  v13 = sub_231476CA8();
  v14 = MEMORY[0x277D0B6A0];
  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 72));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, &a1[v12], v13);

  sub_231477448();
  v16 = v18[3];
  sub_2314777E8();
  if (v16)
  {
    return (*(v4 + 8))(v7, v3);
  }

  (*(v4 + 8))(v7, v3);
  result = sub_231477738();
  *v18[0] = result == 0;
  return result;
}

id sub_23141A9D0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_231477E58();

  v2 = [v0 initWithString_];

  return v2;
}

BOOL static Donation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_73();
  static Interaction.== infix(_:_:)(v2, v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Donation();
  if ((sub_23141AEE0(*(v1 + v5[5]), *(v0 + v5[5])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_76(v5[6]);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_76(v5[7]);
  if (!v6)
  {
    return 0;
  }

  v7 = v5[8];
  v8 = *(v1 + v7 + 8);
  v17 = *(v1 + v7);
  v18 = v8;
  v9 = (v0 + v7);
  v10 = v9[1];
  v15 = *v9;
  v16 = v10;
  sub_2313E6C34(v17, v8);
  v11 = OUTLINED_FUNCTION_42();
  sub_2313E6C34(v11, v12);
  v13 = static UserDonator.== infix(_:_:)(&v17, &v15);
  sub_2313EADE8(v15, v16);
  sub_2313EADE8(v17, v18);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_76(v5[9]);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_76(v5[10]);
  return v6 != 0;
}

void sub_23141AB28(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v4 = 0;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_36();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v92 = v3;
  while (2)
  {
    if (v10)
    {
      v13 = __clz(__rbit64(v10));
      v93 = (v10 - 1) & v10;
      goto LABEL_11;
    }

    v14 = v4;
    do
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
      }

      if (v4 >= v12)
      {
        return;
      }

      v15 = *(v6 + 8 * v4);
      ++v14;
    }

    while (!v15);
    v13 = __clz(__rbit64(v15));
    v93 = (v15 - 1) & v15;
LABEL_11:
    v16 = v13 | (v4 << 6);
    v17 = (*(v3 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v3 + 56) + 24 * v16;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);

    v24 = OUTLINED_FUNCTION_42();
    sub_231401AEC(v24, v25, v23);
    if (!v18)
    {
      return;
    }

    v26 = sub_2313F0604();
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      goto LABEL_42;
    }

    v29 = *(a2 + 56) + 24 * v26;
    v30 = *v29;
    v31 = *(v29 + 16);
    switch(v31)
    {
      case 1:
        v63 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v63, v64, 1);
        if (v23 != 1)
        {
          goto LABEL_42;
        }

        v65 = OUTLINED_FUNCTION_42();
        sub_231403090(v65, v66, 1);
        v59 = *&v30 == *&v21;
        v3 = v92;
        goto LABEL_29;
      case 2:
        v3 = v92;
        if (v23 != 2)
        {
          v31 = 2;
          goto LABEL_41;
        }

        v54 = *v29;
        v55 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v55, v56, 2);
        v57 = OUTLINED_FUNCTION_42();
        sub_231403090(v57, v58, 2);
        v59 = v30 == v21;
LABEL_29:
        v10 = v93;
        if (!v59)
        {
          return;
        }

        continue;
      case 3:
        if (v23 == 3)
        {
          if (*&v30 == *&v21 && *(v29 + 8) == v22)
          {
            v81 = *(v29 + 8);

            v82 = OUTLINED_FUNCTION_42();
            sub_231403090(v82, v83, 3);
            v84 = OUTLINED_FUNCTION_42();
            sub_231403090(v84, v85, 3);
            v3 = v92;
            v10 = v93;
          }

          else
          {
            OUTLINED_FUNCTION_55_0();
            v44 = sub_2314787C8();

            v61 = OUTLINED_FUNCTION_55_0();
            sub_231403090(v61, v62, 3);
            v51 = OUTLINED_FUNCTION_42();
            v53 = 3;
LABEL_33:
            sub_231403090(v51, v52, v53);
            v3 = v92;
            v10 = v93;
            if ((v44 & 1) == 0)
            {
              return;
            }
          }

          continue;
        }

        v87 = *(v29 + 8);
LABEL_40:

LABEL_41:
        v88 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v88, v89, v31);
LABEL_42:
        v90 = OUTLINED_FUNCTION_42();
        sub_231403090(v90, v91, v23);
        return;
      case 4:
        if (v23 != 4)
        {
          goto LABEL_37;
        }

        v36 = OUTLINED_FUNCTION_55_0();
        sub_231401AEC(v36, v37, 4);
        v38 = OUTLINED_FUNCTION_55_0();
        sub_231401AEC(v38, v39, 4);
        v40 = OUTLINED_FUNCTION_42();
        sub_231401AEC(v40, v41, 4);
        v42 = OUTLINED_FUNCTION_90();
        v44 = sub_23140F540(v42, v43);
        v45 = OUTLINED_FUNCTION_42();
        sub_231403090(v45, v46, 4);
        v47 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v47, v48, 4);
        v49 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v49, v50, 4);
        v51 = OUTLINED_FUNCTION_42();
        v53 = 4;
        goto LABEL_33;
      case 5:
        if (v23 != 5)
        {
LABEL_37:
          v86 = *v29;
          goto LABEL_40;
        }

        v67 = OUTLINED_FUNCTION_55_0();
        sub_231401AEC(v67, v68, 5);
        v69 = OUTLINED_FUNCTION_55_0();
        sub_231401AEC(v69, v70, 5);
        v71 = OUTLINED_FUNCTION_42();
        sub_231401AEC(v71, v72, 5);
        v73 = OUTLINED_FUNCTION_90();
        v44 = sub_23141AB28(v73, v74);
        v75 = OUTLINED_FUNCTION_42();
        sub_231403090(v75, v76, 5);
        v77 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v77, v78, 5);
        v79 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v79, v80, 5);
        v51 = OUTLINED_FUNCTION_42();
        v53 = 5;
        goto LABEL_33;
      default:
        v32 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v32, v33, 0);
        if (v23)
        {
          goto LABEL_42;
        }

        v34 = OUTLINED_FUNCTION_42();
        sub_231403090(v34, v35, 0);
        v3 = v92;
        v10 = v93;
        if (((LODWORD(v30) ^ LODWORD(v21)) & 1) == 0)
        {
          continue;
        }

        return;
    }
  }
}

uint64_t sub_23141AEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entity();
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v7);
  v12 = (&v40 - v11);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v13 = 0;
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v41 = v18;
  v42 = a1;
  if (v17)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v43 = (v17 - 1) & v17;
LABEL_12:
      v22 = v19 | (v13 << 6);
      v23 = (*(a1 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(a1 + 56) + 8 * v22);

      v27 = sub_2313F0604();
      v29 = v28;

      if ((v29 & 1) == 0 || (v30 = *(*(a2 + 56) + 8 * v27), v31 = *(v30 + 16), v31 != *(v26 + 16)))
      {
LABEL_38:

        return 0;
      }

      if (v31 && v30 != v26)
      {
        break;
      }

LABEL_33:

      v18 = v41;
      a1 = v42;
      v17 = v43;
      if (!v43)
      {
        goto LABEL_7;
      }
    }

    v40 = a2;
    v32 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v44 = v26 + v32;
    v45 = v30 + v32;

    v33 = 0;
    while (v33 < *(v30 + 16))
    {
      v34 = *(v47 + 72) * v33;
      result = sub_2313EB328();
      if (v33 >= *(v26 + 16))
      {
        goto LABEL_42;
      }

      sub_2313EB328();
      v35 = *v12 == *v9 && v12[1] == v9[1];
      if (!v35 && (sub_2314787C8() & 1) == 0 || (v12[2] == v9[2] ? (v36 = v12[3] == v9[3]) : (v36 = 0), !v36 && (sub_2314787C8() & 1) == 0 || (sub_23141AB28(v12[4], v9[4]), (v37 & 1) == 0)))
      {
        sub_2313EB380();
        sub_2313EB380();
LABEL_37:

        goto LABEL_38;
      }

      v38 = *(v46 + 28);
      v39 = sub_231476C68();
      sub_2313EB380();
      result = sub_2313EB380();
      if ((v39 & 1) == 0)
      {
        goto LABEL_37;
      }

      if (v31 == ++v33)
      {

        a2 = v40;
        goto LABEL_33;
      }
    }
  }

  else
  {
LABEL_7:
    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        return 1;
      }

      v21 = *(v14 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_23141B298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7453657461647075 && a2 == 0xEE00796765746172;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x727453726F6E6F64 && a2 == 0xEB000000006D6165;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x616E6F4472657375 && a2 == 0xEB00000000726F74;
          if (v9 || (sub_2314787C8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000;
            if (v10 || (sub_2314787C8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461)
            {

              return 6;
            }

            else
            {
              v12 = sub_2314787C8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23141B4EC(unsigned __int8 a1)
{
  sub_2314788E8();
  MEMORY[0x23192E9B0](a1);
  return sub_231478918();
}

uint64_t sub_23141B548()
{
  v1 = *v0;
  sub_2314788E8();
  MEMORY[0x23192E9B0](v1);
  return sub_231478918();
}

uint64_t sub_23141B58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23141B298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23141B5D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23141B4E4();
  *a1 = result;
  return result;
}

uint64_t sub_23141B5FC(uint64_t a1)
{
  v2 = sub_2313F7180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23141B638(uint64_t a1)
{
  v2 = sub_2313F7180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Donation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6C8, &unk_231479AF0);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313F7180();
  sub_231478968();
  LOBYTE(v22) = 0;
  type metadata accessor for Interaction(0);
  OUTLINED_FUNCTION_62_0();
  sub_2313F7138(v14, v15);
  OUTLINED_FUNCTION_99();
  sub_231478748();
  if (!v2)
  {
    v16 = type metadata accessor for Donation();
    v22 = *(v3 + v16[5]);
    OUTLINED_FUNCTION_122();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6E0, &unk_23147C540);
    sub_23141ED50();
    OUTLINED_FUNCTION_99();
    sub_231478748();
    LOBYTE(v22) = *(v3 + v16[6]);
    v24 = 2;
    sub_23141EE14();
    OUTLINED_FUNCTION_43_0();
    LOBYTE(v22) = *(v3 + v16[7]);
    v24 = 3;
    sub_23141EE68();
    OUTLINED_FUNCTION_43_0();
    v17 = (v3 + v16[8]);
    v18 = v17[1];
    v22 = *v17;
    v23 = v18;
    v24 = 4;
    sub_2313E6C34(v22, v18);
    sub_23141EEBC();
    OUTLINED_FUNCTION_43_0();
    sub_2313EADE8(v22, v23);
    v19 = *(v3 + v16[9]);
    LOBYTE(v22) = 5;
    sub_231478728();
    LOBYTE(v22) = *(v3 + v16[10]);
    v24 = 6;
    sub_23141EF10();
    OUTLINED_FUNCTION_43_0();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_23141B924()
{
  v0 = sub_231478638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23141B970(char a1)
{
  result = 0x4564696C61766E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6564646962726F66;
      break;
    case 3:
      result = 0x6B53746E65746E69;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_23141BA54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23141B924();
  *a2 = result;
  return result;
}

unint64_t sub_23141BA84@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23141B970(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23141BAB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6E6769 && a2 == 0xE600000000000000;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746972777265766FLL && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_2314787C8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23141BB84(char a1)
{
  sub_2314788E8();
  MEMORY[0x23192E9B0](a1 & 1);
  return sub_231478918();
}

uint64_t sub_23141BBCC(char a1)
{
  if (a1)
  {
    return 0x746972777265766FLL;
  }

  else
  {
    return 0x65726F6E6769;
  }
}

uint64_t sub_23141BC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23141BAB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23141BC48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23141BB7C();
  *a1 = result;
  return result;
}

uint64_t sub_23141BC70(uint64_t a1)
{
  v2 = sub_23141F168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23141BCAC(uint64_t a1)
{
  v2 = sub_23141F168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23141BD08@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_41_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23141BD34(uint64_t a1)
{
  v2 = sub_23141F210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23141BD70(uint64_t a1)
{
  v2 = sub_23141F210();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23141BDAC(uint64_t a1)
{
  v2 = sub_23141F1BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23141BDE8(uint64_t a1)
{
  v2 = sub_23141F1BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void UpdateStrategy.encode(to:)()
{
  OUTLINED_FUNCTION_64();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D768, &qword_231479B08);
  v4 = OUTLINED_FUNCTION_4(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D770, &qword_231479B10);
  v11 = OUTLINED_FUNCTION_4(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D778, &qword_231479B18);
  OUTLINED_FUNCTION_4(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_23141F168();
  sub_231478968();
  v28 = (v20 + 8);
  if (v26)
  {
    OUTLINED_FUNCTION_122();
    sub_23141F1BC();
    v29 = v32;
    sub_2314786F8();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_23141F210();
    sub_2314786F8();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  OUTLINED_FUNCTION_62();
}

uint64_t UpdateStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_2314788E8();
  MEMORY[0x23192E9B0](v1);
  return sub_231478918();
}

void UpdateStrategy.init(from:)()
{
  OUTLINED_FUNCTION_64();
  v56 = v0;
  v3 = v2;
  v53 = v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D798, &qword_231479B20);
  OUTLINED_FUNCTION_4(v55);
  v52 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v10 = v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7A0, &qword_231479B28);
  OUTLINED_FUNCTION_4(v11);
  v51 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_141();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7A8, &unk_231479B30);
  OUTLINED_FUNCTION_4(v16);
  v54 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v20);
  v22 = v48 - v21;
  v23 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_23141F168();
  v24 = v56;
  sub_231478948();
  if (v24)
  {
    goto LABEL_10;
  }

  v49 = v11;
  v50 = v1;
  v56 = v3;
  v25 = v55;
  v26 = sub_2314786D8();
  v27 = sub_2313F8D68(v26, 0);
  if (v29 == v30 >> 1)
  {
    v55 = v27;
LABEL_9:
    v40 = sub_231478548();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7B0, &qword_23147A870) + 48);
    *v42 = &type metadata for UpdateStrategy;
    sub_231478658();
    sub_231478538();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v22, v16);
    v3 = v56;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v3);
LABEL_11:
    OUTLINED_FUNCTION_62();
    return;
  }

  v48[1] = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    v32 = sub_2313F8DB0(v29 + 1, v30 >> 1, v27, v28, v29, v30);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      if (v31)
      {
        OUTLINED_FUNCTION_122();
        sub_23141F1BC();
        v37 = v10;
        OUTLINED_FUNCTION_117();
        v38 = v53;
        v39 = v54;
        swift_unknownObjectRelease();
        (*(v52 + 8))(v37, v25);
      }

      else
      {
        sub_23141F210();
        v44 = v50;
        OUTLINED_FUNCTION_117();
        v38 = v53;
        v39 = v54;
        swift_unknownObjectRelease();
        (*(v51 + 8))(v44, v49);
      }

      v45 = *(v39 + 8);
      v46 = OUTLINED_FUNCTION_90();
      v47(v46);
      *v38 = v31;
      __swift_destroy_boxed_opaque_existential_0(v56);
      goto LABEL_11;
    }

    v55 = v32;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_23141C590()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_92();
  Value = type metadata accessor for QueryValue();
  v7 = OUTLINED_FUNCTION_4(Value);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_137();
  switch(v3)
  {
    case 6:
      v13 = *(v5 + 16);
      v14 = MEMORY[0x277D84F90];
      if (v13)
      {
        v23 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_86();
        v14 = v23;
        v15 = (v5 + 32);
        do
        {
          v16 = *v15++;
          *v1 = v16;
          OUTLINED_FUNCTION_144();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_136();
          if (v17)
          {
            OUTLINED_FUNCTION_95();
            sub_2313FC060(v20, v21, v22);
            v14 = v23;
          }

          *(v14 + 16) = v5;
          v18 = *(v9 + 80);
          OUTLINED_FUNCTION_59();
          v19 = *(v9 + 72);
          OUTLINED_FUNCTION_0_5();
          sub_2313F31EC();
          --v13;
        }

        while (v13);
      }

      *v0 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_35();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_16();
      break;
    default:
      OUTLINED_FUNCTION_26_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_16();

      swift_storeEnumTagMultiPayload();
      break;
  }
}

void sub_23141C81C()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_92();
  Value = type metadata accessor for QueryValue();
  v7 = OUTLINED_FUNCTION_4(Value);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_137();
  switch(v3)
  {
    case 6:
      v13 = *(v5 + 16);
      v14 = MEMORY[0x277D84F90];
      if (v13)
      {
        v23 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_86();
        v14 = v23;
        v15 = (v5 + 32);
        do
        {
          v16 = *v15++;
          *v1 = v16;
          OUTLINED_FUNCTION_144();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_136();
          if (v17)
          {
            OUTLINED_FUNCTION_95();
            sub_2313FC060(v20, v21, v22);
            v14 = v23;
          }

          *(v14 + 16) = v5;
          v18 = *(v9 + 80);
          OUTLINED_FUNCTION_59();
          v19 = *(v9 + 72);
          OUTLINED_FUNCTION_0_5();
          sub_2313F31EC();
          --v13;
        }

        while (v13);
      }

      *v0 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_35();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_16();
      break;
    default:
      OUTLINED_FUNCTION_33_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_16();

      swift_storeEnumTagMultiPayload();
      break;
  }
}

uint64_t sub_23141CAA8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *))
{
  v8 = a1;
  v9 = a2 & 1;
  sub_2314783C8();
  swift_beginAccess();
  if (*(a4 + 16) == 1)
  {
    swift_beginAccess();
    *(a4 + 16) = 0;
    a5(&v8);
  }

  return sub_2314783D8();
}

void sub_23141CB80()
{
  OUTLINED_FUNCTION_54_0();
  if (v4)
  {
    OUTLINED_FUNCTION_53_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_111();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_52_0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_119(v2, v5, &qword_27DD4D5D0, &unk_231479880);
  OUTLINED_FUNCTION_94();
  v9 = type metadata accessor for Entity();
  OUTLINED_FUNCTION_85(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_59();
  if (v1)
  {
    OUTLINED_FUNCTION_84(type metadata accessor for Entity, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
  }
}

void sub_23141CC58()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_13_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_37();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_43(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D610, &qword_2314798D0);
    v9 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v9);
    OUTLINED_FUNCTION_101(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_143();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23141CD28()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_13_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_37();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_51_0(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D870, &qword_23147A1F8);
    v9 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v9);
    OUTLINED_FUNCTION_75(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_108();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_23141CDF0()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_13_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_37();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_43(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D670, &qword_231479A68);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_143();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_23141CEC0()
{
  OUTLINED_FUNCTION_54_0();
  if (v4)
  {
    OUTLINED_FUNCTION_53_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_111();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_52_0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_119(v2, v5, &qword_27DD4D6A0, &qword_2314795D0);
  OUTLINED_FUNCTION_94();
  Value = type metadata accessor for QueryValue();
  OUTLINED_FUNCTION_85(Value);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_59();
  if (v1)
  {
    OUTLINED_FUNCTION_84(type metadata accessor for QueryValue, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
  }
}

void sub_23141CF98()
{
  OUTLINED_FUNCTION_54_0();
  if (v4)
  {
    OUTLINED_FUNCTION_53_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_111();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_52_0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_119(v2, v5, &qword_27DD4D598, &qword_231479840);
  OUTLINED_FUNCTION_94();
  v9 = sub_2314770C8();
  OUTLINED_FUNCTION_85(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_59();
  if (v1)
  {
    OUTLINED_FUNCTION_84(MEMORY[0x277D0B720], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
  }
}

void sub_23141D070()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_13_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_37();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_43(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D820, &qword_23147A1D8);
    v9 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v9);
    OUTLINED_FUNCTION_101(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || v0 + 32 + 8 * v2 <= (v9 + 32))
    {
      memmove((v9 + 32), (v0 + 32), 8 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D828, &qword_23147A1E0);
    swift_arrayInitWithCopy();
  }
}

void sub_23141D16C()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_13_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_37();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_51_0(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D8E0, &unk_2314798A0);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_98_0(v9);
    v9[2] = v3;
    v9[3] = 2 * (v10 / 40);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_108();
  if (v1)
  {
    if (v9 != v0 || &v12[40 * v3] <= v11)
    {
      memmove(v11, v12, 40 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23141D258()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_13_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_37();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_43(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D8F0, &qword_23147A248);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_98_0(v9);
    v9[2] = v2;
    v9[3] = 2 * (v10 / 48);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_143();
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v2] <= v11)
    {
      memmove(v11, v12, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23141D348()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_13_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_37();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_51_0(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D860, &qword_231479838);
    v9 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v9);
    OUTLINED_FUNCTION_75(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_108();
  if (v1)
  {
    if (v9 != v0 || &v12[2 * v3] <= v11)
    {
      memmove(v11, v12, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 2 * v3);
  }
}

void sub_23141D410()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_13_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_37();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_51_0(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5B0, &qword_231479860);
    v9 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v9);
    OUTLINED_FUNCTION_75(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_108();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_23141D4D8()
{
  OUTLINED_FUNCTION_54_0();
  if (v4)
  {
    OUTLINED_FUNCTION_53_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_111();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_52_0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_119(v2, v5, &unk_27DD4D850, &qword_23147A1E8);
  OUTLINED_FUNCTION_94();
  v9 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript();
  OUTLINED_FUNCTION_85(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_59();
  if (v1)
  {
    OUTLINED_FUNCTION_84(type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
  }
}

void sub_23141D5B0()
{
  OUTLINED_FUNCTION_54_0();
  if (v4)
  {
    OUTLINED_FUNCTION_53_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_111();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_52_0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_119(v2, v5, &unk_27DD4D840, &qword_231479848);
  v9 = OUTLINED_FUNCTION_94();
  v10 = type metadata accessor for InteractionWithParameters(v9);
  OUTLINED_FUNCTION_85(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_59();
  if (v1)
  {
    OUTLINED_FUNCTION_84(type metadata accessor for InteractionWithParameters, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
  }
}

void sub_23141D688()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_13_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_37();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_51_0(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5A0, &qword_231479850);
    v9 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v9);
    OUTLINED_FUNCTION_75(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_108();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

size_t sub_23141D774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_149(a1, a2, a3, a4);
  v8 = OUTLINED_FUNCTION_94();
  v9 = a5(v8);
  OUTLINED_FUNCTION_29(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_23141D85C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_23141D894(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_23141D8B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_23141D8E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_23141D948(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_23141D984(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_23141D9A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

uint64_t sub_23141D9F4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_73();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_3(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_39_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_39_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_23141DAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Interaction(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_23141DB14(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = (*a3 + 40 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 40 * v9);
        if (v13 == *v15 && v14 == v15[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_2314787C8();
        }

        v10 = v9 + 2;
        v18 = (v11 + 40 * v9 + 88);
        while (v10 < v6)
        {
          if (*(v18 - 1) == *(v18 - 6) && *v18 == *(v18 - 5))
          {
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 ^ sub_2314787C8()))
          {
            break;
          }

          ++v10;
          v18 += 5;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v10)
        {
          v20 = 40 * v10 - 8;
          v21 = 40 * v9 + 32;
          v22 = v10;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v21);
              v26 = (v24 + v20);
              v27 = *(v25 - 4);
              v28 = *(v25 - 3);
              v29 = *v25;
              v30 = *(v25 - 1);
              v31 = *v26;
              v32 = *(v26 - 1);
              *(v25 - 2) = *(v26 - 2);
              *(v25 - 1) = v32;
              *v25 = v31;
              *(v26 - 4) = v27;
              *(v26 - 3) = v28;
              *(v26 - 1) = v30;
              *v26 = v29;
            }

            ++v23;
            v20 -= 40;
            v21 += 40;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v33 = a3[1];
      if (v10 < v33)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_121;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          __src = v5;
          if (v9 + a4 >= v33)
          {
            v34 = a3[1];
          }

          else
          {
            v34 = v9 + a4;
          }

          if (v34 < v9)
          {
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
            return;
          }

          if (v10 != v34)
          {
            v35 = *a3;
            v36 = *a3 + 40 * v10 - 40;
            v97 = v9;
            v37 = v9 - v10;
            do
            {
              v38 = v37;
              v39 = v36;
              do
              {
                v40 = v39 + 40;
                v41 = *(v39 + 40) == *v39 && *(v39 + 48) == *(v39 + 8);
                if (v41 || (sub_2314787C8() & 1) == 0)
                {
                  break;
                }

                if (!v35)
                {
                  goto LABEL_125;
                }

                v43 = *(v39 + 40);
                v42 = *(v39 + 48);
                v44 = *(v39 + 72);
                v45 = *(v39 + 56);
                v46 = *(v39 + 16);
                v47 = *(v39 + 32);
                *v40 = *v39;
                *(v39 + 56) = v46;
                *v39 = v43;
                *(v39 + 8) = v42;
                *(v39 + 16) = v45;
                *(v39 + 32) = v44;
                v39 -= 40;
                *(v40 + 32) = v47;
              }

              while (!__CFADD__(v38++, 1));
              ++v10;
              v36 += 40;
              --v37;
            }

            while (v10 != v34);
            v10 = v34;
            v9 = v97;
          }

          v5 = __src;
        }
      }

      if (v10 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = v8[2];
        OUTLINED_FUNCTION_3_0();
        sub_23141CD28();
        v8 = v93;
      }

      v49 = v8[2];
      v50 = v49 + 1;
      if (v49 >= v8[3] >> 1)
      {
        sub_23141CD28();
        v8 = v94;
      }

      v8[2] = v50;
      v51 = v8 + 4;
      v52 = &v8[2 * v49 + 4];
      *v52 = v9;
      v52[1] = v10;
      __srca = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          v54 = &v51[2 * v50 - 2];
          v55 = &v8[2 * v50];
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v56 = v8[4];
            v57 = v8[5];
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_70:
            if (v59)
            {
              goto LABEL_110;
            }

            v71 = *v55;
            v70 = v55[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_113;
            }

            v75 = v54[1];
            v76 = v75 - *v54;
            if (__OFSUB__(v75, *v54))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v73, v76))
            {
              goto LABEL_118;
            }

            if (v73 + v76 >= v58)
            {
              if (v58 < v76)
              {
                v53 = v50 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v50 < 2)
          {
            goto LABEL_112;
          }

          v78 = *v55;
          v77 = v55[1];
          v66 = __OFSUB__(v77, v78);
          v73 = v77 - v78;
          v74 = v66;
LABEL_85:
          if (v74)
          {
            goto LABEL_115;
          }

          v80 = *v54;
          v79 = v54[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_117;
          }

          if (v81 < v73)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v85 = &v51[2 * v53 - 2];
          v86 = *v85;
          v87 = &v51[2 * v53];
          v88 = v87[1];
          sub_23141E82C((*a3 + 40 * *v85), (*a3 + 40 * *v87), *a3 + 40 * v88, __srca);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v88 < v86)
          {
            goto LABEL_105;
          }

          v89 = v8;
          v90 = v8[2];
          if (v53 > v90)
          {
            goto LABEL_106;
          }

          *v85 = v86;
          v85[1] = v88;
          if (v53 >= v90)
          {
            goto LABEL_107;
          }

          v50 = v90 - 1;
          memmove(&v51[2 * v53], v87 + 2, 16 * (v90 - 1 - v53));
          v89[2] = v90 - 1;
          v91 = v90 > 2;
          v8 = v89;
          v5 = 0;
          if (!v91)
          {
            goto LABEL_99;
          }
        }

        v60 = &v51[2 * v50];
        v61 = *(v60 - 8);
        v62 = *(v60 - 7);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_108;
        }

        v65 = *(v60 - 6);
        v64 = *(v60 - 5);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_109;
        }

        v67 = v55[1];
        v68 = v67 - *v55;
        if (__OFSUB__(v67, *v55))
        {
          goto LABEL_111;
        }

        v66 = __OFADD__(v58, v68);
        v69 = v58 + v68;
        if (v66)
        {
          goto LABEL_114;
        }

        if (v69 >= v63)
        {
          v83 = *v54;
          v82 = v54[1];
          v66 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v66)
          {
            goto LABEL_119;
          }

          if (v58 < v84)
          {
            v53 = v50 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v10;
      if (v10 >= v6)
      {
        v101 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_23141E5BC(&v101, *a1, a3);
LABEL_103:
}

void sub_23141E06C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_2314787C8();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_2314787C8()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = (v9 + a4);
          }

          if (v31 < v9)
          {
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
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = (v9 - v7);
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_2314787C8() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_23141CD28();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_23141CD28();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v93 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_23141EA1C((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v93;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_23141E6F4(&v97, *a1, a3);
LABEL_103:
}

uint64_t sub_23141E5BC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2314490FC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_23141E82C((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_23141E6F4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2314490FC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_23141EA1C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_23141E82C(char *a1, char *__dst, unint64_t a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = __dst;
  v7 = a1;
  v8 = (__dst - a1) / 40;
  v9 = (a3 - __dst) / 40;
  if (v8 < v9)
  {
    v10 = 40 * v8;
    v11 = &a1[40 * v8];
    if (__src != a1 || v11 <= __src)
    {
      v13 = OUTLINED_FUNCTION_134();
      memmove(v13, v14, v10);
    }

    v15 = &v4[v10];
    while (1)
    {
      if (v4 >= v15 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v17 || (sub_2314787C8() & 1) == 0)
      {
        break;
      }

      v18 = v6;
      v17 = v7 == v6;
      v6 += 40;
      if (!v17)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 40;
    }

    v18 = v4;
    v17 = v7 == v4;
    v4 += 40;
    if (v17)
    {
      goto LABEL_22;
    }

LABEL_21:
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v7 + 4) = *(v18 + 4);
    *v7 = v19;
    *(v7 + 1) = v20;
    goto LABEL_22;
  }

  v21 = 40 * v9;
  if (__src != __dst || &__dst[40 * v9] <= __src)
  {
    memmove(__src, __dst, 40 * v9);
  }

  v15 = &v4[v21];
LABEL_29:
  v23 = v6 - 40;
  for (v5 -= 40; v15 > v4 && v6 > v7; v5 -= 40)
  {
    v25 = *(v15 - 5) == *(v6 - 5) && *(v15 - 4) == *(v6 - 4);
    if (!v25 && (sub_2314787C8() & 1) != 0)
    {
      v17 = v5 + 40 == v6;
      v6 -= 40;
      if (!v17)
      {
        v28 = *v23;
        v29 = *(v23 + 1);
        *(v5 + 32) = *(v23 + 4);
        *v5 = v28;
        *(v5 + 16) = v29;
        v6 = v23;
      }

      goto LABEL_29;
    }

    if (v15 != (v5 + 40))
    {
      v26 = *(v15 - 40);
      v27 = *(v15 - 24);
      *(v5 + 32) = *(v15 - 1);
      *v5 = v26;
      *(v5 + 16) = v27;
    }

    v15 -= 40;
  }

LABEL_46:
  v30 = 40 * ((v15 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, v30);
  }

  return 1;
}

uint64_t sub_23141EA1C(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2314787C8() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 24;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
LABEL_29:
  v17 = v6 - 24;
  for (v5 -= 24; v11 > v4 && v6 > v7; v5 -= 24)
  {
    v19 = *(v11 - 3) == *(v6 - 3) && *(v11 - 2) == *(v6 - 2);
    if (!v19 && (sub_2314787C8() & 1) != 0)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v21;
        v6 = v17;
      }

      goto LABEL_29;
    }

    if (v11 != (v5 + 24))
    {
      v20 = *(v11 - 24);
      *(v5 + 16) = *(v11 - 1);
      *v5 = v20;
    }

    v11 -= 24;
  }

LABEL_46:
  v22 = (v11 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_23141EC30(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_23141EC70(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

unint64_t sub_23141ECFC()
{
  result = qword_27DD4D6C0;
  if (!qword_27DD4D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D6C0);
  }

  return result;
}

unint64_t sub_23141ED50()
{
  result = qword_27DD4D6E8;
  if (!qword_27DD4D6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D6E0, &unk_23147C540);
    sub_23141F028(&qword_27DD4D6F0, &qword_27DD4D6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D6E8);
  }

  return result;
}

unint64_t sub_23141EE14()
{
  result = qword_27DD4D700;
  if (!qword_27DD4D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D700);
  }

  return result;
}

unint64_t sub_23141EE68()
{
  result = qword_280C3C638;
  if (!qword_280C3C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C638);
  }

  return result;
}

unint64_t sub_23141EEBC()
{
  result = qword_27DD4D710;
  if (!qword_27DD4D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D710);
  }

  return result;
}

unint64_t sub_23141EF10()
{
  result = qword_27DD4D718;
  if (!qword_27DD4D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D718);
  }

  return result;
}

unint64_t sub_23141EF64()
{
  result = qword_27DD4D730;
  if (!qword_27DD4D730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D6E0, &unk_23147C540);
    sub_23141F028(&qword_27DD4D738, &qword_27DD4D740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D730);
  }

  return result;
}

uint64_t sub_23141F028(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D6B0, qword_23147B940);
    sub_2313F7138(a2, type metadata accessor for Entity);
    OUTLINED_FUNCTION_134();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23141F0C0()
{
  result = qword_27DD4D748;
  if (!qword_27DD4D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D748);
  }

  return result;
}

unint64_t sub_23141F114()
{
  result = qword_280C3BEB0[0];
  if (!qword_280C3BEB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C3BEB0);
  }

  return result;
}

unint64_t sub_23141F168()
{
  result = qword_27DD4D780;
  if (!qword_27DD4D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D780);
  }

  return result;
}

unint64_t sub_23141F1BC()
{
  result = qword_27DD4D788;
  if (!qword_27DD4D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D788);
  }

  return result;
}

unint64_t sub_23141F210()
{
  result = qword_27DD4D790;
  if (!qword_27DD4D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D790);
  }

  return result;
}

unint64_t sub_23141F268()
{
  result = qword_27DD4D7B8;
  if (!qword_27DD4D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7B8);
  }

  return result;
}

void sub_23141F2BC()
{
  type metadata accessor for Interaction(319);
  if (v0 <= 0x3F)
  {
    sub_23141F374();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23141F374()
{
  if (!qword_280C3C908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D6B0, qword_23147B940);
    v0 = sub_231477DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_280C3C908);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DonationConversionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23141F52C(uint64_t a1)
{
  result = sub_2313F17E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23141F558()
{
  result = qword_27DD4D7C8;
  if (!qword_27DD4D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7C8);
  }

  return result;
}

unint64_t sub_23141F5B0()
{
  result = qword_27DD4D7D0;
  if (!qword_27DD4D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7D0);
  }

  return result;
}

unint64_t sub_23141F608()
{
  result = qword_27DD4D7D8;
  if (!qword_27DD4D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7D8);
  }

  return result;
}

unint64_t sub_23141F660()
{
  result = qword_27DD4D7E0;
  if (!qword_27DD4D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7E0);
  }

  return result;
}

unint64_t sub_23141F6B8()
{
  result = qword_27DD4D7E8;
  if (!qword_27DD4D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7E8);
  }

  return result;
}

unint64_t sub_23141F710()
{
  result = qword_27DD4D7F0;
  if (!qword_27DD4D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7F0);
  }

  return result;
}

unint64_t sub_23141F768()
{
  result = qword_27DD4D7F8;
  if (!qword_27DD4D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7F8);
  }

  return result;
}

unint64_t sub_23141F7C0()
{
  result = qword_27DD4D800;
  if (!qword_27DD4D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D800);
  }

  return result;
}

unint64_t sub_23141F818()
{
  result = qword_27DD4D808;
  if (!qword_27DD4D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D808);
  }

  return result;
}

unint64_t sub_23141F870()
{
  result = qword_27DD4D810;
  if (!qword_27DD4D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D810);
  }

  return result;
}

unint64_t sub_23141F8C8()
{
  result = qword_27DD4D818;
  if (!qword_27DD4D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D818);
  }

  return result;
}

unint64_t sub_23141F91C()
{
  result = qword_280C3BEA8;
  if (!qword_280C3BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BEA8);
  }

  return result;
}

unint64_t sub_23141F970()
{
  result = qword_280C3C470;
  if (!qword_280C3C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C470);
  }

  return result;
}

unint64_t sub_23141F9C4()
{
  result = qword_280C3BC28;
  if (!qword_280C3BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC28);
  }

  return result;
}

unint64_t sub_23141FA18()
{
  result = qword_27DD4D8C8;
  if (!qword_27DD4D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D8C8);
  }

  return result;
}

_BYTE *sub_23141FA74(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23141FB54()
{
  result = qword_27DD4D9B0;
  if (!qword_27DD4D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D9B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_0()
{
  *v0 = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_0()
{
  *v0 = v2;
  v0[1] = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return sub_231478748();
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return sub_2314786B8();
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return sub_2313EB328();
}

void OUTLINED_FUNCTION_70()
{
  v1 = *(v0 - 136);
  *(v0 - 184) = *(v0 - 144);
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
}

uint64_t OUTLINED_FUNCTION_79@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;
  v5 = *(v3 - 384);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_82()
{

  return sub_2314787C8();
}

void OUTLINED_FUNCTION_107()
{
  *(v0 + 16) = v1;
  v7 = v0 + 32 * v2;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v6;
  *(v7 + 56) = v3;
}

void OUTLINED_FUNCTION_124()
{
  v3 = *(v2 - 72);
  *(v2 - 144) = v0;
  *(v2 - 136) = v1;
  *(v2 - 128) = v3;
}

uint64_t OUTLINED_FUNCTION_148()
{

  return sub_2314785F8();
}

uint64_t OUTLINED_FUNCTION_149(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t Entity.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_12_5(MEMORY[0x277D84F98]);
  v2 = a1 + *(type metadata accessor for Entity() + 28);
  return sub_231476C98();
}

uint64_t Entity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Entity.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Entity.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Entity.type.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Entity.fields.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Entity.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Entity() + 28);
  v4 = sub_231476CA8();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Entity.createdAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Entity() + 28);
  v4 = sub_231476CA8();
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t sub_2314200DC()
{
  v0 = sub_231476788();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_231476778();
  qword_280C3C260 = result;
  return result;
}

void sub_23142011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_231477EA8();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v35 = v34 - v33;
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_12_5(MEMORY[0x277D84F98]);
  v36 = *(type metadata accessor for Entity() + 28);
  sub_231476C98();
  v37 = *(v24 + 5);
  v38 = *(v24 + 6);
  sub_231477E98();
  v39 = sub_231477E78();
  v41 = v40;
  (*(v30 + 8))(v35, v27);
  if (v41 >> 60 == 15)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v42 = sub_231477B68();
    __swift_project_value_buffer(v42, qword_280C3D970);
    v43 = sub_231477B58();
    v44 = sub_2314782B8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v45 = 136446722;
      v46 = sub_2313EB684(0xD00000000000005CLL, 0x8000000231482720, &a10);
      v47 = OUTLINED_FUNCTION_9_3(v46);
      *(v45 + 14) = sub_2313EB684(v47 | 0x6E6E692800000000, 0xEC000000293A7265, &a10);
      *(v45 + 22) = 2050;
      *(v45 + 24) = 33;
      OUTLINED_FUNCTION_13_0(&dword_2313E1000, v48, v49, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }

    sub_23141F91C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    if (qword_280C3C258 != -1)
    {
      OUTLINED_FUNCTION_6_3();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    OUTLINED_FUNCTION_1_4();
    sub_2313F6580(v50, v51);
    sub_231476768();
    sub_2313F3D2C(v39, v41);
    if (!v20)
    {
      v56 = a10;
      v57 = *(v24 + 2);
      *v26 = *(v24 + 1);
      *(v26 + 1) = v57;
      v58 = *(v24 + 4);
      *(v26 + 2) = *(v24 + 3);
      *(v26 + 3) = v58;
      v59 = OUTLINED_FUNCTION_12_5(v56);
      v63 = *(type metadata accessor for _Entity(v59) + 32);
      v60 = sub_231476CA8();
      v61 = *(v60 - 8);
      v62 = *(v61 + 8);

      v62(&v26[v36], v60);
      (*(v61 + 16))(&v26[v36], &v24[v63], v60);
      v55 = OUTLINED_FUNCTION_5_2();
      goto LABEL_11;
    }
  }

  v52 = OUTLINED_FUNCTION_5_2();
  sub_2314217C8(v52, v53);
  OUTLINED_FUNCTION_0_6();
  v55 = v26;
LABEL_11:
  sub_2314217C8(v55, v54);
  OUTLINED_FUNCTION_62();
}

void sub_2314204D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_231476CA8();
  v28 = OUTLINED_FUNCTION_4(v27);
  v68 = v29;
  v69 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v67 = v33 - v32;
  v34 = sub_231477EA8();
  v35 = OUTLINED_FUNCTION_4(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2();
  v42 = v41 - v40;
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_12_5(MEMORY[0x277D84F98]);
  v43 = *(type metadata accessor for Entity() + 28);
  sub_231476C98();
  v70 = v24;
  sub_2314778B8();
  sub_231477E98();
  v44 = sub_231477E78();
  v46 = v45;

  (*(v37 + 8))(v42, v34);
  if (v46 >> 60 == 15)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v47 = sub_231477B68();
    __swift_project_value_buffer(v47, qword_280C3D970);
    v48 = sub_231477B58();
    v49 = sub_2314782B8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v50 = 136446722;
      v51 = sub_2313EB684(0xD00000000000005CLL, 0x8000000231482720, &a10);
      v52 = OUTLINED_FUNCTION_9_3(v51);
      *(v50 + 14) = sub_2313EB684(v52 | 0x746E652800000000, 0xED0000293A797469, &a10);
      *(v50 + 22) = 2050;
      *(v50 + 24) = 43;
      OUTLINED_FUNCTION_13_0(&dword_2313E1000, v53, v54, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }

    sub_23141F91C();
    swift_allocError();
    swift_willThrow();
    v55 = sub_2314779E8();
    OUTLINED_FUNCTION_3(v55);
    (*(v56 + 8))(v70);
  }

  else
  {
    if (qword_280C3C258 != -1)
    {
      OUTLINED_FUNCTION_6_3();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    OUTLINED_FUNCTION_1_4();
    sub_2313F6580(v57, v58);
    sub_231476768();
    if (!v20)
    {
      v62 = a10;
      *v26 = sub_2314778A8();
      v26[1] = v63;
      v26[2] = sub_2314778D8();
      v26[3] = v64;
      v26[4] = v62;
      sub_2314779D8();
      sub_2313F3D2C(v44, v46);
      v65 = sub_2314779E8();
      OUTLINED_FUNCTION_3(v65);
      (*(v66 + 8))(v24);
      (*(v68 + 40))(v26 + v43, v67, v69);
      goto LABEL_12;
    }

    v59 = sub_2314779E8();
    OUTLINED_FUNCTION_3(v59);
    (*(v60 + 8))(v24);
    sub_2313F3D2C(v44, v46);
  }

  OUTLINED_FUNCTION_0_6();
  sub_2314217C8(v26, v61);
LABEL_12:
  OUTLINED_FUNCTION_62();
}

Swift::String __swiftcall Entity.fieldsTokens()()
{
  v1 = *(v0 + 32);
  sub_2314212C8();
  v9 = v2;

  v3 = sub_231402B08(0, 0xE000000000000000);
  v5 = v4;

  sub_231403090(v9, 0, 5);
  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t static Entity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  sub_23141AB28(a1[4], a2[4]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Entity() + 28);

  return sub_231476C68();
}

uint64_t sub_231420A6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074)
      {

        return 3;
      }

      else
      {
        v9 = sub_2314787C8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_231420BC8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x73646C656966;
      break;
    case 3:
      result = 0x4164657461657263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231420C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231420A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231420C68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231420BC0();
  *a1 = result;
  return result;
}

uint64_t sub_231420C90(uint64_t a1)
{
  v2 = sub_231421434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231420CCC(uint64_t a1)
{
  v2 = sub_231421434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Entity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA20, &qword_23147A360);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231421434();
  sub_231478968();
  v14 = *v3;
  v15 = v3[1];
  v23 = 0;
  OUTLINED_FUNCTION_10_3();
  sub_231478718();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v22 = 1;
    OUTLINED_FUNCTION_10_3();
    sub_231478718();
    v21 = v3[4];
    v20[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    sub_2313F6580(&qword_280C3C158, sub_23140518C);
    OUTLINED_FUNCTION_10_3();
    sub_231478748();
    v18 = *(type metadata accessor for Entity() + 28);
    v20[14] = 3;
    sub_231476CA8();
    sub_2313F8198(&qword_280C3CB70);
    OUTLINED_FUNCTION_10_3();
    sub_231478748();
  }

  return (*(v8 + 8))(v12, v5);
}

void Entity.init(from:)()
{
  OUTLINED_FUNCTION_64();
  v2 = v1;
  v39 = v3;
  v4 = sub_231476CA8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v38 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA38, &qword_23147A368);
  v13 = OUTLINED_FUNCTION_4(v12);
  v40 = v14;
  v41 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  v19 = type metadata accessor for Entity();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_2();
  v23 = (v22 - v21);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v23[2] = 0;
  v23[3] = 0xE000000000000000;
  v23[4] = MEMORY[0x277D84F98];
  v25 = *(v24 + 36);
  sub_231476C98();
  v26 = v2[3];
  v27 = v2[4];
  v42 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v26);
  sub_231421434();
  sub_231478948();
  if (!v0)
  {
    v37 = v25;
    v28 = v11;
    v29 = v40;
    v30 = v41;
    OUTLINED_FUNCTION_11_4();
    *v23 = sub_231478688();
    v23[1] = v31;
    OUTLINED_FUNCTION_11_4();
    v23[2] = sub_231478688();
    v23[3] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    OUTLINED_FUNCTION_1_4();
    sub_2313F6580(v33, v34);
    OUTLINED_FUNCTION_11_4();
    sub_2314786B8();
    v23[4] = v43;
    sub_2313F8198(&qword_280C3C0E8);
    OUTLINED_FUNCTION_11_4();
    sub_2314786B8();
    (*(v29 + 8))(v18, v30);
    (*(v38 + 40))(v23 + v37, v28, v4);
    sub_2313F0868(v23, v39);
  }

  __swift_destroy_boxed_opaque_existential_0(v42);
  OUTLINED_FUNCTION_0_6();
  sub_2314217C8(v23, v35);
  OUTLINED_FUNCTION_62();
}

void sub_2314212C8()
{
  OUTLINED_FUNCTION_64();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8B8, &unk_23147A238);
  v2 = sub_231478628();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = 3 * v13;
      v18 = *(v1 + 56) + 24 * v13;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v22 = (v3[6] + 16 * v13);
      *v22 = v16;
      v22[1] = v15;
      v23 = v3[7] + 8 * v17;
      *v23 = v19;
      *(v23 + 8) = v20;
      *(v23 + 16) = v21;
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v3[2] = v26;

      sub_231401AEC(v19, v20, v21);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        OUTLINED_FUNCTION_62();
        return;
      }

      v12 = *(v1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_231421434()
{
  result = qword_27DD4DA28;
  if (!qword_27DD4DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DA28);
  }

  return result;
}

unint64_t sub_231421488()
{
  result = qword_280C3C930;
  if (!qword_280C3C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C930);
  }

  return result;
}

void sub_2314214F0()
{
  sub_231421584();
  if (v0 <= 0x3F)
  {
    sub_231476CA8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_231421584()
{
  if (!qword_280C3CE48)
  {
    v0 = sub_231477DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_280C3CE48);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Entity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2314216C4()
{
  result = qword_27DD4DA40;
  if (!qword_27DD4DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DA40);
  }

  return result;
}

unint64_t sub_23142171C()
{
  result = qword_27DD4DA48;
  if (!qword_27DD4DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DA48);
  }

  return result;
}

unint64_t sub_231421774()
{
  result = qword_27DD4DA50;
  if (!qword_27DD4DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DA50);
  }

  return result;
}

uint64_t sub_2314217C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t *sub_231421820()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - v6;
  v8 = sub_231476AF8();
  v9 = OUTLINED_FUNCTION_1_5(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231421E24();
  v16 = sub_231421E68();
  if (!v16)
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v0);
LABEL_7:
    sub_23140224C(v7, &qword_27DD4DA58, &unk_23147A530);
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v20 = sub_231477B68();
    __swift_project_value_buffer(v20, qword_280C3D970);
    v21 = sub_231477B58();
    v22 = sub_2314782B8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2313E1000, v21, v22, "AppIntentListenerFilter: no bundle/url", v23, 2u);
      OUTLINED_FUNCTION_16_2();
    }

    return MEMORY[0x277D84FA0];
  }

  v17 = sub_231422238(0xD000000000000017, 0x800000023147A520, 0x7473696C70, 0xE500000000000000, v16);
  if (v17)
  {
    v18 = v17;
    sub_231476AA8();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v19, 1, v0);
  sub_2314222CC(v5, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v0) == 1)
  {
    goto LABEL_7;
  }

  (*(v11 + 32))(v15, v7, v0);
  v24 = sub_231476B38();
  v26 = v25;
  v27 = sub_2314769D8();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_2314769C8();
  sub_23142233C();
  sub_2314769B8();

  v30 = v46;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v32 = sub_231477B68();
  __swift_project_value_buffer(v32, qword_280C3D970);

  v33 = sub_231477B58();
  v34 = sub_2314782A8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v45 = v34;
    v36 = v35;
    v44 = swift_slowAlloc();
    v46 = v44;
    *v36 = 136315138;

    v37 = sub_2314781F8();
    v43 = v33;
    v38 = v37;
    v40 = v39;

    v41 = sub_2313EB684(v38, v40, &v46);

    *(v36 + 4) = v41;
    v33 = v43;
    _os_log_impl(&dword_2313E1000, v43, v45, "AppIntentListenerFilter: Read %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_2();
    sub_2313EB8A4(v24, v26);
  }

  else
  {

    sub_2313EB8A4(v24, v26);
  }

  (*(v11 + 8))(v15, v0);
  return v30;
}

unint64_t sub_231421E24()
{
  result = qword_280C3BBC0;
  if (!qword_280C3BBC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3BBC0);
  }

  return result;
}

id sub_231421E68()
{
  v0 = sub_231477E58();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

uint64_t sub_231421ECC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002314827A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2314787C8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231421F4C()
{
  sub_2314788E8();
  MEMORY[0x23192E9B0](0);
  return sub_231478918();
}

void *sub_231421FAC(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA60, &qword_23147A5A8);
  v5 = OUTLINED_FUNCTION_1_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v15 - v10;
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2314223A0();
  sub_231478948();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA68, &qword_23147A5B0);
    sub_2314223F4();
    sub_2314786B8();
    (*(v7 + 8))(v11, v2);
    v13 = v15[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v13;
}

uint64_t sub_231422124()
{
  sub_2314788E8();
  MEMORY[0x23192E9B0](0);
  return sub_231478918();
}

uint64_t sub_231422168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231421ECC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231422194(uint64_t a1)
{
  v2 = sub_2314223A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314221D0(uint64_t a1)
{
  v2 = sub_2314223A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23142220C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_231421FAC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_231422238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_231477E58();

  v7 = sub_231477E58();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_2314222CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23142233C()
{
  result = qword_280C3BC98;
  if (!qword_280C3BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC98);
  }

  return result;
}

unint64_t sub_2314223A0()
{
  result = qword_280C3BCB0;
  if (!qword_280C3BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BCB0);
  }

  return result;
}

unint64_t sub_2314223F4()
{
  result = qword_280C3BC10;
  if (!qword_280C3BC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4DA68, &qword_23147A5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppIntentListenerFilter.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_231422520()
{
  result = qword_27DD4DA70;
  if (!qword_27DD4DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DA70);
  }

  return result;
}

unint64_t sub_231422578()
{
  result = qword_280C3BCA0;
  if (!qword_280C3BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BCA0);
  }

  return result;
}

unint64_t sub_2314225D0()
{
  result = qword_280C3BCA8;
  if (!qword_280C3BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BCA8);
  }

  return result;
}

double EntityQuery.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  *(a1 + 40) = MEMORY[0x277D84F90];
  return result;
}

uint64_t EntityQuery.filter(matchingTokens:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = v2[1];
  v24 = *v2;
  v7 = *v2;
  v25 = *a1;
  v9 = v2[2];
  v10 = v2[3];
  *(a2 + 40) = v2[5];
  v11 = *(v2 + 32);
  v12 = *(a1 + 32);
  OUTLINED_FUNCTION_19_1();
  sub_2313E9688(v13, v14, v15, v16, v17);

  sub_231412700(v25, v4, v6, v5, v12);
  OUTLINED_FUNCTION_19_1();
  result = sub_231412668(v18, v19, v20, v21, v22);
  *a2 = v25;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v12;
  return result;
}

void sub_231422710(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a2;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_34();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v23 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = *v4;
  v18 = *(v4 + 8);
  v19 = *(v4 + 16);
  v20 = *(v4 + 24);
  v21 = *(v4 + 40);
  v22 = *(a1 + 16);
  LOBYTE(v4) = *(v4 + 32);
  sub_2313FBD8C();
  *a3 = v17;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = v4;
  *(a3 + 40) = v21;
  sub_2313E9628(v14, v11, &unk_27DD4D680, &qword_2314795C0);
  sub_2313E9688(v17, v18, v19, v20, v4);

  sub_2313E8CDC();
  sub_2313F3390();
  sub_2313F34A0(*(*(a3 + 40) + 16));
  sub_2313E937C(v14, &unk_27DD4D680, &qword_2314795C0);
  OUTLINED_FUNCTION_10_4();
}

void EntityQuery.fetchAll(_:)()
{
  OUTLINED_FUNCTION_64();
  v2 = v1;
  v3 = type metadata accessor for _Entity(0);
  v4 = OUTLINED_FUNCTION_29(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_34();
  v75 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  v14 = type metadata accessor for Entity();
  v15 = OUTLINED_FUNCTION_29(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA78, &qword_23147CDE0);
  OUTLINED_FUNCTION_4(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v26);
  v27 = *v2;
  v28 = *(v2 + 8);
  OUTLINED_FUNCTION_22_0();
  if (v29)
  {
    OUTLINED_FUNCTION_11_5(v29);
    sub_231422D04(&v76, v32, v33, v34, v35, v36, v37, v38, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
LABEL_5:
    OUTLINED_FUNCTION_62();
    return;
  }

  v73 = v30;
  v70 = v31;
  OUTLINED_FUNCTION_11_5(v29);
  v39 = sub_2313F4D04();
  if (v0)
  {
    goto LABEL_5;
  }

  v74 = v6;
  v69 = v23;
  v40 = v39;
  OUTLINED_FUNCTION_5_3();
  v41 = v73;
  v47 = sub_2313E7E78(v42, v43, v44, v45, type metadata accessor for _Entity, v46, v73);
  MEMORY[0x28223BE20](v47);
  *(&v68 - 2) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA80, &qword_23147A6D0);
  sub_231477098();
  v68 = v40;
  v48 = v76;
  v49 = *(v76 + 16);
  if (!v49)
  {

LABEL_14:
    (*(v70 + 8))(v73, v69);
    goto LABEL_5;
  }

  v71 = v17;
  v80 = MEMORY[0x277D84F90];
  sub_2313FA208(0, v49, 0);
  v50 = 0;
  OUTLINED_FUNCTION_6();
  v72 = v48 + v52;
  while (v50 < *(v48 + 16))
  {
    sub_2313EEFC8(v72 + *(v51 + 72) * v50, v13, type metadata accessor for _Entity);
    v53 = v75;
    sub_2313EEFC8(v13, v75, type metadata accessor for _Entity);
    sub_23142011C(v53, v54, v55, v56, v57, v58, v59, v60, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    v61 = v48;
    OUTLINED_FUNCTION_9_4();
    v63 = *(v80 + 16);
    v62 = *(v80 + 24);
    if (v63 >= v62 >> 1)
    {
      OUTLINED_FUNCTION_18_0(v62);
    }

    ++v50;
    *(v80 + 16) = v63 + 1;
    OUTLINED_FUNCTION_6();
    v65 = *(v64 + 72);
    OUTLINED_FUNCTION_8_5();
    sub_231423674(v22, v66, v67);
    v51 = v74;
    v48 = v61;
    if (v49 == v50)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_231422D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_2314779E8();
  v27 = OUTLINED_FUNCTION_4(v26);
  v95 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_34();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v84 - v35;
  v37 = type metadata accessor for Entity();
  v38 = OUTLINED_FUNCTION_29(v37);
  v94 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2();
  v44 = v43 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA98, &qword_23147CD60);
  OUTLINED_FUNCTION_4(v45);
  v47 = v46;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_14_2();
  v51 = v25[1];
  v98 = *v25;
  *v99 = v51;
  *&v99[9] = *(v25 + 25);
  OUTLINED_FUNCTION_22_0();
  v52 = sub_2313F4D04();
  if (v20)
  {
LABEL_3:
    OUTLINED_FUNCTION_62();
    return;
  }

  v87 = v47;
  v88 = v45;
  v97 = v44;
  v93 = v33;
  v53 = v52;
  OUTLINED_FUNCTION_4_3();
  v59 = sub_2313E7E78(v54, v55, v56, v57, MEMORY[0x277D1F258], v58, v21);
  MEMORY[0x28223BE20](v59);
  *(&v84 - 2) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAD0, &qword_23147A7F8);
  sub_231477098();
  v96 = 0;
  v92 = v26;
  v85 = v53;
  v86 = v21;
  v60 = v98;
  v61 = *(v98 + 16);
  if (!v61)
  {

LABEL_14:
    OUTLINED_FUNCTION_13_1(&a16);
    v83(v86);
    goto LABEL_3;
  }

  v100 = MEMORY[0x277D84F90];
  sub_2313FA208(0, v61, 0);
  v62 = 0;
  OUTLINED_FUNCTION_6();
  v90 = v60 + v63;
  v89 = v64 + 16;
  v91 = (v64 + 8);
  while (v62 < *(v60 + 16))
  {
    v65 = *(v95 + 16);
    v66 = v92;
    v65(v36, v90 + *(v95 + 72) * v62, v92);
    v67 = v93;
    v65(v93, v36, v66);
    v68 = v96;
    sub_2314204D8(v67, v69, v70, v71, v72, v73, v74, v75, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
    v96 = v68;
    if (v68)
    {

      (*v91)(v36, v66);

      OUTLINED_FUNCTION_13_1(&a16);
      v82(v86, v88);
      goto LABEL_3;
    }

    (*v91)(v36, v66);
    v77 = *(v100 + 16);
    v76 = *(v100 + 24);
    if (v77 >= v76 >> 1)
    {
      OUTLINED_FUNCTION_18_0(v76);
    }

    ++v62;
    *(v100 + 16) = v77 + 1;
    OUTLINED_FUNCTION_6();
    v79 = *(v78 + 72);
    OUTLINED_FUNCTION_8_5();
    sub_231423674(v97, v80, v81);
    if (v61 == v62)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_2314232B4@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA78, &qword_23147CDE0);
  sub_2313ED944(&qword_27DD4DAC0, &qword_27DD4DA78, &qword_23147CDE0);
  sub_2313F3500(&qword_27DD4DAC8, type metadata accessor for _Entity);
  result = sub_231476F58();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_231423398@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA98, &qword_23147CD60);
  sub_2313ED944(&qword_27DD4DAB0, &qword_27DD4DA98, &qword_23147CD60);
  sub_2313F3500(&qword_27DD4DAB8, MEMORY[0x277D1F258]);
  result = sub_231476F58();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_23142347C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA78, &qword_23147CDE0);
  sub_2313ED944(&qword_27DD4DAC0, &qword_27DD4DA78, &qword_23147CDE0);
  sub_2313F3500(&qword_27DD4DAC8, type metadata accessor for _Entity);
  return sub_231476F68();
}

uint64_t sub_23142355C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA98, &qword_23147CD60);
  sub_2313ED944(&qword_27DD4DAB0, &qword_27DD4DA98, &qword_23147CD60);
  sub_2313F3500(&qword_27DD4DAB8, MEMORY[0x277D1F258]);
  return sub_231476F68();
}

uint64_t sub_231423674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_3(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

unint64_t sub_231423704()
{
  result = qword_280C3C168;
  if (!qword_280C3C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C168);
  }

  return result;
}

uint64_t sub_231423790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(v4 + 8);
  switch(*(v4 + 32))
  {
    case 1:
      v20 = *(v6 + 16);
      if (!v20)
      {
        goto LABEL_23;
      }

      if (v20 == 1)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_14_3();
      do
      {
        OUTLINED_FUNCTION_11_6(v21, v22, v23, v24);
        OUTLINED_FUNCTION_9_5();
        if (v14)
        {
          sub_23141252C(v25 > 1, v5, 1);
        }

        OUTLINED_FUNCTION_12_7();
      }

      while (!v15);
      goto LABEL_23;
    case 2:
      return sub_231423A04(*v4, *(v4 + 8));
    case 3:
      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      v30 = *v4;

      MEMORY[0x23192E060](61, 0xE100000000000000);
      MEMORY[0x23192E060](v19, v18);
      v6 = sub_231423A04(v30, v7);

      return v6;
    case 4:
      v16 = *(v4 + 8);

      return v6;
    default:
      v8 = *(v6 + 16);
      if (!v8)
      {
        goto LABEL_23;
      }

      if (v8 == 1)
      {
LABEL_15:
        v31 = *(v6 + 32);
        v32 = *(v6 + 48);
        v33 = *(v6 + 64);
        return sub_231423790(a1, a2, a3, a4);
      }

      else
      {
        OUTLINED_FUNCTION_14_3();
        do
        {
          OUTLINED_FUNCTION_11_6(v9, v10, v11, v12);
          OUTLINED_FUNCTION_9_5();
          if (v14)
          {
            sub_23141252C(v13 > 1, v5, 1);
          }

          OUTLINED_FUNCTION_12_7();
        }

        while (!v15);
LABEL_23:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
        sub_2313EF69C();
        v26 = sub_231477E28();
        v28 = v27;

        MEMORY[0x23192E060](v26, v28);

        MEMORY[0x23192E060](41, 0xE100000000000000);
        return 40;
      }
  }
}

uint64_t sub_231423A04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v2 = sub_231477FF8();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = __OFADD__(v2, 2);
  result = v2 + 2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x23192DFD0](result);
    MEMORY[0x23192E050](34, 0xE100000000000000);

    while (1)
    {
      v5 = sub_231477FE8();
      if (!v6)
      {
        break;
      }

      v9 = v5;
      v10 = v6;
      MEMORY[0x23192E050](v5, v6, v7, v8);
      v11 = v9 == 34 && v10 == 0xE100000000000000;
      if (v11 || (sub_2314787C8() & 1) != 0)
      {
        MEMORY[0x23192E050](v9, v10);
      }
    }

    MEMORY[0x23192E050](34, 0xE100000000000000);
    return 0;
  }

  return result;
}

uint64_t static FTSFilter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v69[0] = *a1;
  v69[1] = v3;
  v69[2] = v5;
  v69[3] = v4;
  v70 = v6;
  v71 = v7;
  v72 = v8;
  v73 = v10;
  v74 = v9;
  v75 = v11;
  switch(v6)
  {
    case 1:
      if (v11 != 1)
      {
        goto LABEL_31;
      }

      v44 = OUTLINED_FUNCTION_2_4();
      sub_231412700(v44, v45, v46, v47, v48);
      v17 = OUTLINED_FUNCTION_1_6();
      v21 = 1;
      goto LABEL_30;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_31;
      }

      if (v2 != v7 || v3 != v8)
      {
        v23 = OUTLINED_FUNCTION_15_2();
        v34 = OUTLINED_FUNCTION_2_4();
        sub_231412700(v34, v35, v36, v37, 2);
        v28 = OUTLINED_FUNCTION_1_6();
        v32 = 2;
        goto LABEL_27;
      }

      sub_231412700(v2, v3, v10, v9, 2);
      v60 = OUTLINED_FUNCTION_1_6();
      v64 = 2;
      goto LABEL_37;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_31;
      }

      v38 = v2 == v7 && v3 == v8;
      if (!v38 && (OUTLINED_FUNCTION_15_2() & 1) == 0)
      {
        v65 = OUTLINED_FUNCTION_2_4();
        sub_231412700(v65, v66, v67, v68, 3);
        v54 = OUTLINED_FUNCTION_1_6();
        v58 = 3;
        goto LABEL_32;
      }

      if (v5 != v10 || v4 != v9)
      {
        v23 = sub_2314787C8();
        v40 = OUTLINED_FUNCTION_2_4();
        sub_231412700(v40, v41, v42, v43, 3);
        v28 = OUTLINED_FUNCTION_1_6();
        v32 = 3;
        goto LABEL_27;
      }

      sub_231412700(v7, v8, v5, v4, 3);
      v60 = OUTLINED_FUNCTION_1_6();
      v64 = 3;
      goto LABEL_37;
    case 4:
      if (v11 != 4)
      {
        goto LABEL_31;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_231412700(v2, v3, v10, v9, 4);
        v60 = OUTLINED_FUNCTION_1_6();
        v64 = 4;
LABEL_37:
        sub_231412700(v60, v61, v62, v63, v64);
        v23 = 1;
      }

      else
      {
        v23 = OUTLINED_FUNCTION_15_2();
        v24 = OUTLINED_FUNCTION_2_4();
        sub_231412700(v24, v25, v26, v27, 4);
        v28 = OUTLINED_FUNCTION_1_6();
        v32 = 4;
LABEL_27:
        sub_231412700(v28, v29, v30, v31, v32);
      }

LABEL_33:
      sub_231423D8C(v69);
      return v23 & 1;
    default:
      if (v11)
      {
LABEL_31:
        v49 = OUTLINED_FUNCTION_2_4();
        sub_231412700(v49, v50, v51, v52, v53);
        v54 = OUTLINED_FUNCTION_1_6();
        v58 = v6;
LABEL_32:
        sub_231412700(v54, v55, v56, v57, v58);
        v23 = 0;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_2_4();
        sub_231412700(v12, v13, v14, v15, v16);
        v17 = OUTLINED_FUNCTION_1_6();
        v21 = 0;
LABEL_30:
        sub_231412700(v17, v18, v19, v20, v21);
        v23 = sub_23140F83C(v2, v7);
      }

      goto LABEL_33;
  }
}

uint64_t sub_231423D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5C8, &qword_23147A800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231423E00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7958113 && a2 == 0xE300000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7105633 && a2 == 0xE300000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646C656966 && a2 == 0xE500000000000000;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7972657551776172 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2314787C8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_231423FA8(char a1)
{
  result = 7958113;
  switch(a1)
  {
    case 1:
      result = 7105633;
      break;
    case 2:
      result = 0x6E656B6F74;
      break;
    case 3:
      result = 0x646C656966;
      break;
    case 4:
      result = 0x7972657551776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231424028(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2314787C8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2314240EC(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_231424118(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2314787C8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23142418C(uint64_t a1)
{
  v2 = sub_231424C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314241C8(uint64_t a1)
{
  v2 = sub_231424C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231424204(uint64_t a1)
{
  v2 = sub_231424D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231424240(uint64_t a1)
{
  v2 = sub_231424D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231424284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231423E00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2314242AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231423FA0();
  *a1 = result;
  return result;
}

uint64_t sub_2314242D4(uint64_t a1)
{
  v2 = sub_231424B14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231424310(uint64_t a1)
{
  v2 = sub_231424B14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23142435C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231424028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231424384(uint64_t a1)
{
  v2 = sub_231424BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314243C0(uint64_t a1)
{
  v2 = sub_231424BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314243FC(uint64_t a1)
{
  v2 = sub_231424B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231424438(uint64_t a1)
{
  v2 = sub_231424B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231424474(uint64_t a1)
{
  v2 = sub_231424C10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314244B0(uint64_t a1)
{
  v2 = sub_231424C10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FTSFilter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAE0, &qword_23147A808);
  v4 = OUTLINED_FUNCTION_4(v3);
  v76 = v5;
  v77 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v73 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAE8, &qword_23147A810);
  v11 = OUTLINED_FUNCTION_4(v10);
  v74 = v12;
  v75 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13();
  v72 = v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAF0, &qword_23147A818);
  OUTLINED_FUNCTION_4(v71);
  v69 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v20);
  v22 = v65 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAF8, &qword_23147A820);
  OUTLINED_FUNCTION_4(v70);
  v68 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v26);
  v28 = v65 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB00, &qword_23147A828);
  v30 = OUTLINED_FUNCTION_4(v29);
  v66 = v31;
  v67 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v34);
  v36 = v65 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB08, &qword_23147A830);
  v38 = OUTLINED_FUNCTION_4(v37);
  v80 = v39;
  v81 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v42);
  v44 = v65 - v43;
  v45 = *v1;
  v78 = v1[1];
  v79 = v45;
  v46 = v1[2];
  v65[1] = v1[3];
  v65[2] = v46;
  v47 = *(v1 + 32);
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231424B14();
  sub_231478968();
  switch(v47)
  {
    case 1:
      OUTLINED_FUNCTION_19_2();
      sub_231424C64();
      v59 = v81;
      sub_2314786F8();
      v83 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB38, &qword_23147A838);
      OUTLINED_FUNCTION_5_4();
      sub_2314257AC(v60, v61);
      v62 = v70;
      sub_231478748();
      (*(v68 + 8))(v28, v62);
      v63 = OUTLINED_FUNCTION_10_5();
      return v64(v63, v59);
    case 2:
      LOBYTE(v83) = 2;
      sub_231424C10();
      OUTLINED_FUNCTION_7_2();
      v55 = v71;
      sub_231478718();
      (*(v69 + 8))(v22, v55);
      goto LABEL_8;
    case 3:
      LOBYTE(v83) = 3;
      sub_231424BBC();
      OUTLINED_FUNCTION_7_2();
      LOBYTE(v83) = 0;
      v54 = v75;
      v56 = v82;
      sub_231478718();
      if (!v56)
      {
        OUTLINED_FUNCTION_19_2();
        sub_231478718();
      }

      goto LABEL_7;
    case 4:
      LOBYTE(v83) = 4;
      sub_231424B68();
      OUTLINED_FUNCTION_7_2();
      v54 = v77;
      sub_231478718();
LABEL_7:
      v57 = OUTLINED_FUNCTION_10_5();
      v58(v57, v54);
LABEL_8:
      result = (*(v80 + 8))(v28, v47);
      break;
    default:
      LOBYTE(v83) = 0;
      sub_231424D0C();
      v49 = v81;
      sub_2314786F8();
      v83 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB38, &qword_23147A838);
      OUTLINED_FUNCTION_5_4();
      sub_2314257AC(v50, v51);
      v52 = v67;
      sub_231478748();
      (*(v66 + 8))(v36, v52);
      result = (*(v80 + 8))(v44, v49);
      break;
  }

  return result;
}

unint64_t sub_231424B14()
{
  result = qword_27DD4DB10;
  if (!qword_27DD4DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB10);
  }

  return result;
}

unint64_t sub_231424B68()
{
  result = qword_27DD4DB18;
  if (!qword_27DD4DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB18);
  }

  return result;
}

unint64_t sub_231424BBC()
{
  result = qword_27DD4DB20;
  if (!qword_27DD4DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB20);
  }

  return result;
}

unint64_t sub_231424C10()
{
  result = qword_27DD4DB28;
  if (!qword_27DD4DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB28);
  }

  return result;
}

unint64_t sub_231424C64()
{
  result = qword_27DD4DB30;
  if (!qword_27DD4DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB30);
  }

  return result;
}

unint64_t sub_231424CB8()
{
  result = qword_27DD4DB48;
  if (!qword_27DD4DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB48);
  }

  return result;
}

unint64_t sub_231424D0C()
{
  result = qword_27DD4DB50;
  if (!qword_27DD4DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB50);
  }

  return result;
}

uint64_t FTSFilter.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v111 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB58, &qword_23147A840);
  v109 = OUTLINED_FUNCTION_4(v3);
  v110 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13();
  v113 = v8;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB60, &qword_23147A848);
  OUTLINED_FUNCTION_4(v117);
  v115 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13();
  v114 = v13;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB68, &qword_23147A850);
  OUTLINED_FUNCTION_4(v116);
  v108 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_13();
  v112 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB70, &qword_23147A858);
  v20 = OUTLINED_FUNCTION_4(v19);
  v106 = v21;
  v107 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v24);
  v26 = &v99 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB78, &qword_23147A860);
  OUTLINED_FUNCTION_4(v27);
  v105 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v31);
  v33 = &v99 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB80, &qword_23147A868);
  OUTLINED_FUNCTION_4(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v39);
  v41 = &v99 - v40;
  v43 = a1[3];
  v42 = a1[4];
  v118 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_231424B14();
  v44 = v119;
  sub_231478948();
  if (v44)
  {
    goto LABEL_10;
  }

  v101 = v27;
  v102 = v33;
  v103 = v26;
  v45 = v116;
  v119 = v36;
  v46 = sub_2314786D8();
  result = sub_2313F8D60(v46, 0);
  v51 = v34;
  if (v49 == v50 >> 1)
  {
    v52 = v41;
LABEL_9:
    v62 = sub_231478548();
    swift_allocError();
    v64 = v63;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7B0, &qword_23147A870) + 48);
    *v64 = &type metadata for FTSFilter;
    sub_231478658();
    sub_231478538();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D84160], v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v119 + 8))(v52, v51);
LABEL_10:
    v53 = v118;
    return __swift_destroy_boxed_opaque_existential_0(v53);
  }

  v104 = v34;
  if (v49 < (v50 >> 1))
  {
    v53 = 0;
    v54 = *(v48 + v49);
    sub_2313F8D58(v49 + 1);
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    if (v56 == v58 >> 1)
    {
      v59 = v115;
      switch(v54)
      {
        case 1:
          v100 = v54;
          OUTLINED_FUNCTION_19_2();
          sub_231424C64();
          v68 = v103;
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_18_1();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB38, &qword_23147A838);
          OUTLINED_FUNCTION_4_4();
          sub_2314257AC(v74, v75);
          v90 = v107;
          v72 = v68;
          sub_2314786B8();
          swift_unknownObjectRelease();
          v93 = OUTLINED_FUNCTION_10_5();
          v94(v93, v90);
          v95 = OUTLINED_FUNCTION_8_6();
          v96(v95, v104);
          OUTLINED_FUNCTION_17_1();
          break;
        case 2:
          v100 = v54;
          v120 = 2;
          sub_231424C10();
          v66 = v112;
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_18_1();
          v90 = sub_231478688();
          v77 = v80;
          swift_unknownObjectRelease();
          v79 = *(v108 + 8);
          v78 = v66;
          goto LABEL_16;
        case 3:
          v100 = v54;
          v120 = 3;
          sub_231424BBC();
          v67 = v114;
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_18_1();
          v116 = v41;
          v120 = 0;
          v90 = sub_231478688();
          v113 = v83;
          OUTLINED_FUNCTION_19_2();
          v84 = sub_231478688();
          v85 = v67;
          v86 = (v59 + 8);
          v87 = (v119 + 8);
          v72 = v84;
          v41 = v97;
          swift_unknownObjectRelease();
          (*v86)(v85, v117);
          (*v87)(v116, v104);
          v92 = v113;
          break;
        case 4:
          v100 = v54;
          v120 = 4;
          sub_231424B68();
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_18_1();
          v45 = v109;
          v90 = sub_231478688();
          v77 = v76;
          swift_unknownObjectRelease();
          v78 = OUTLINED_FUNCTION_10_5();
LABEL_16:
          v79(v78, v45);
          v81 = OUTLINED_FUNCTION_8_6();
          v82(v81, v104);
          v92 = v77;
          v72 = 0;
          v41 = 0;
          break;
        default:
          v120 = 0;
          sub_231424D0C();
          v60 = v102;
          v61 = v41;
          v41 = v104;
          sub_231478648();
          v100 = v54;
          v69 = v61;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB38, &qword_23147A838);
          OUTLINED_FUNCTION_4_4();
          sub_2314257AC(v70, v71);
          v72 = v60;
          sub_2314786B8();
          v73 = v119;
          swift_unknownObjectRelease();
          v88 = OUTLINED_FUNCTION_16_3();
          v89(v88);
          v91 = *(v73 + 8);
          v90 = v73 + 8;
          v91(v69, v41);
          OUTLINED_FUNCTION_17_1();
          v53 = v118;
          break;
      }

      v98 = v111;
      *v111 = v90;
      v98[1] = v92;
      v98[2] = v72;
      v98[3] = v41;
      *(v98 + 32) = v100;
      return __swift_destroy_boxed_opaque_existential_0(v53);
    }

    v52 = v41;
    v51 = v104;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2314257AC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4DB38, &qword_23147A838);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231425824()
{
  result = qword_27DD4DB90;
  if (!qword_27DD4DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB90);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23142588C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2314258CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FTSFilter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FTSFilter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FTSFilter.FieldCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_231425B9C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_231425C4C()
{
  result = qword_27DD4DB98;
  if (!qword_27DD4DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB98);
  }

  return result;
}

unint64_t sub_231425CA4()
{
  result = qword_27DD4DBA0;
  if (!qword_27DD4DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBA0);
  }

  return result;
}

unint64_t sub_231425CFC()
{
  result = qword_27DD4DBA8;
  if (!qword_27DD4DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBA8);
  }

  return result;
}

unint64_t sub_231425D54()
{
  result = qword_27DD4DBB0;
  if (!qword_27DD4DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBB0);
  }

  return result;
}

unint64_t sub_231425DAC()
{
  result = qword_27DD4DBB8;
  if (!qword_27DD4DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBB8);
  }

  return result;
}

unint64_t sub_231425E04()
{
  result = qword_27DD4DBC0;
  if (!qword_27DD4DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBC0);
  }

  return result;
}

unint64_t sub_231425E5C()
{
  result = qword_27DD4DBC8;
  if (!qword_27DD4DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBC8);
  }

  return result;
}

unint64_t sub_231425EB4()
{
  result = qword_27DD4DBD0;
  if (!qword_27DD4DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBD0);
  }

  return result;
}

unint64_t sub_231425F0C()
{
  result = qword_27DD4DBD8;
  if (!qword_27DD4DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBD8);
  }

  return result;
}

unint64_t sub_231425F64()
{
  result = qword_27DD4DBE0;
  if (!qword_27DD4DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBE0);
  }

  return result;
}

unint64_t sub_231425FBC()
{
  result = qword_27DD4DBE8;
  if (!qword_27DD4DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBE8);
  }

  return result;
}

unint64_t sub_231426014()
{
  result = qword_27DD4DBF0;
  if (!qword_27DD4DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBF0);
  }

  return result;
}

unint64_t sub_23142606C()
{
  result = qword_27DD4DBF8;
  if (!qword_27DD4DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBF8);
  }

  return result;
}

unint64_t sub_2314260C4()
{
  result = qword_27DD4DC00;
  if (!qword_27DD4DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC00);
  }

  return result;
}

unint64_t sub_23142611C()
{
  result = qword_27DD4DC08;
  if (!qword_27DD4DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC08);
  }

  return result;
}

unint64_t sub_231426174()
{
  result = qword_27DD4DC10;
  if (!qword_27DD4DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC10);
  }

  return result;
}

unint64_t sub_2314261CC()
{
  result = qword_27DD4DC18;
  if (!qword_27DD4DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC18);
  }

  return result;
}

unint64_t sub_231426224()
{
  result = qword_27DD4DC20;
  if (!qword_27DD4DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC20);
  }

  return result;
}

id sub_231426290()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC28, &qword_23147B970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  v29 = type metadata accessor for Entity();
  v26 = *(v29 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v29);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2314265D8(v0);
  if (v9)
  {
    v10 = v9;
    result = sub_2313F3038(v9);
    v12 = result;
    v13 = 0;
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v12 == v13)
      {

        v24 = v28;
        goto LABEL_18;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x23192E5D0](v13, v10);
      }

      else
      {
        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        result = *(v10 + 8 * v13 + 32);
      }

      v14 = result;
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      sub_2314724A4(v6);
      if (v2)
      {

        __swift_storeEnumTagSinglePayload(v6, 1, 1, v29);
        result = sub_231426638(v6);
        v2 = 0;
        ++v13;
      }

      else
      {

        __swift_storeEnumTagSinglePayload(v6, 0, 1, v29);
        sub_2313F0804(v6, v27);
        v16 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = *(v16 + 16);
          sub_23141CB80();
          v16 = v22;
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        v28 = v16;
        if (v18 >= v17 >> 1)
        {
          sub_23141CB80();
          v28 = v23;
        }

        v19 = v27;
        v20 = v28;
        *(v28 + 16) = v18 + 1;
        result = sub_2313F0804(v19, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v18);
        v13 = v15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231479580;
    *(inited + 32) = 0x6974736567677573;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 48) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
    return sub_231477DC8();
  }

  return result;
}

uint64_t sub_2314265D8(void *a1)
{
  v1 = [a1 suggestions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231477AD8();
  v3 = sub_231478128();

  return v3;
}

uint64_t sub_231426638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC28, &qword_23147B970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HistoryStats.frequency.getter()
{
  v1 = *(v0 + *(type metadata accessor for HistoryStats() + 20));
  if (*(v1 + 16))
  {
    v18 = MEMORY[0x277D84F90];
    v2 = OUTLINED_FUNCTION_5_5();
    sub_2314127A4(v2, v3, v4);
    result = v18;
    v6 = (v1 + 32);
    v7 = *(v18 + 16);
    do
    {
      v8 = *v6++;
      v9 = OUTLINED_FUNCTION_9_6(result);
      if (v11)
      {
        v13 = OUTLINED_FUNCTION_20(v10);
        sub_2314127A4(v13, v1, 1);
        v9 = v18;
      }

      result = OUTLINED_FUNCTION_6_5(v9);
    }

    while (!v12);
LABEL_9:
    v14 = 0;
    v15 = 32;
    while (1)
    {
      v16 = *(result + v15);
      v17 = __OFADD__(v14, v16);
      v14 += v16;
      if (v17)
      {
        break;
      }

      v15 += 8;
      if (!--v1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    return result;
  }

  result = MEMORY[0x277D84F90];
  v1 = *(MEMORY[0x277D84F90] + 16);
  if (v1)
  {
    goto LABEL_9;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

void *sub_231426788(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v17 = result;
  v18 = a6 >> 1;
  v7 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v6;
  v9 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v9;
  }

  v23 = MEMORY[0x277D84F90];
  result = sub_2314127E8(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v9 = v23;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((a5 + v11) >= v18 || v11 >= v7)
      {
        goto LABEL_18;
      }

      v21 = *(a4 + a5 + v11);
      result = v17(&v22, &v21, &v20);
      if (v8)
      {

        return v9;
      }

      v8 = 0;
      v14 = v22;
      v23 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2314127E8(v15 > 1, v16 + 1, 1);
        v9 = v23;
      }

      *(v9 + 16) = v16 + 1;
      *(v9 + 2 * v16 + 32) = v14;
      ++v11;
      if (v12 == v7)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t HistoryStats.recency.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_231476CA8();
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t HistoryStats.frequencies.getter()
{
  v1 = *(v0 + *(type metadata accessor for HistoryStats() + 20));
}

uint64_t HistoryStats.init()@<X0>(uint64_t a1@<X8>)
{
  sub_231476BD8();
  v2 = sub_231478178();
  v2[2] = 8;
  v2[4] = 0;
  v2[5] = 0;
  result = type metadata accessor for HistoryStats();
  *(a1 + *(result + 20)) = v2;
  return result;
}

uint64_t HistoryStats.init(recency:frequencies:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_231476CA8();
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for HistoryStats();
  *(a3 + *(result + 20)) = a2;
  return result;
}

void HistoryStats.insert(date:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_231476CA8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v23[-v13];
  sub_2313F8198(&qword_280C3CB68);
  v15 = sub_231477E48();
  v16 = *(v7 + 16);
  if (v15)
  {
    v17 = a1;
  }

  else
  {
    v17 = v2;
  }

  v16(v14, v17, v4);
  (*(v7 + 40))(v2, v14, v4);
  v16(v12, a1, v4);
  sub_231426C18(v12, &v24);
  v18 = v24;
  v19 = *(type metadata accessor for HistoryStats() + 20);
  v20 = *(v2 + v19);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231428604(v20);
    v20 = v22;
  }

  if (*(v20 + 16) <= v18)
  {
    __break(1u);
  }

  else
  {
    v21 = *(v20 + 32 + 2 * v18) + 1;
    if ((*(v20 + 32 + 2 * v18) + 1) == v21)
    {
      *(v20 + 32 + 2 * v18) = v21;
      *(v2 + v19) = v20;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_231426C18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_231476C38();
  v5 = v4;
  v6 = v4;
  v7 = sub_231476CA8();
  OUTLINED_FUNCTION_3(v7);
  result = (*(v8 + 8))(a1);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = -v5;
  if (__OFSUB__(0, v5))
  {
LABEL_24:
    __break(1u);
    return result;
  }

  if (v10 < 121)
  {
    v11 = 0;
  }

  else if (v10 < 0x259)
  {
    v11 = 1;
  }

  else if (v10 < 0xE11)
  {
    v11 = 2;
  }

  else if (v10 < 0x5461)
  {
    v11 = 3;
  }

  else if (v10 < 0x15181)
  {
    v11 = 4;
  }

  else if (v10 < 0x93A81)
  {
    v11 = 5;
  }

  else if (v10 <= 0x24EA00)
  {
    v11 = 6;
  }

  else
  {
    v11 = 7;
  }

  *a2 = v11;
  return result;
}

uint64_t HistoryStats.subscript.getter(unsigned __int8 *a1)
{
  v2 = *a1;
  result = type metadata accessor for HistoryStats();
  v4 = *(v1 + *(result + 20));
  if (*(v4 + 16) > v2)
  {
    return *(v4 + 2 * v2 + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_231426DB0()
{
  result = sub_2314290D4(1uLL, 9, &unk_284608830);
  qword_280C3C600 = result;
  *algn_280C3C608 = v1;
  qword_280C3C610 = v2;
  unk_280C3C618 = v3;
  return result;
}

uint64_t sub_231426DF4()
{
  v0 = sub_231478638();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_231426E50(char a1)
{
  result = 0x79636E65636572;
  switch(a1)
  {
    case 1:
      result = 7156326;
      break;
    case 2:
      result = 1831874918;
      break;
    case 3:
      result = 1919431014;
      break;
    case 4:
      result = 1919432294;
      break;
    case 5:
      result = 0x7961643166;
      break;
    case 6:
      result = 0x7961643766;
      break;
    case 7:
      result = 0x796164383266;
      break;
    case 8:
      result = 1718511974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231426F44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_231426DF4();
  *a2 = result;
  return result;
}

uint64_t sub_231426F74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231426E50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_231426FBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231426E40();
  *a1 = result;
  return result;
}

uint64_t sub_231426FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231426E44();
  *a1 = result;
  return result;
}

void *sub_23142700C@<X0>(void *a1@<X8>)
{
  result = sub_231426DE8();
  *a1 = result;
  return result;
}

uint64_t sub_231427034(uint64_t a1)
{
  v2 = sub_231428618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231427070(uint64_t a1)
{
  v2 = sub_231428618();

  return MEMORY[0x2821FE720](a1, v2);
}

void HistoryStats.encode(to:)()
{
  OUTLINED_FUNCTION_64();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC30, &qword_23147B090);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_231428618();
  OUTLINED_FUNCTION_11_7();
  sub_231476CA8();
  sub_2313F8198(&qword_280C3CB70);
  OUTLINED_FUNCTION_8_7();
  sub_231478748();
  if (v1)
  {
    (*(v7 + 8))(v12, v5);
  }

  else
  {
    v21 = v7;
    v22 = v5;
    if (qword_280C3C620 != -1)
    {
LABEL_16:
      OUTLINED_FUNCTION_3_3();
    }

    v15 = qword_280C3C600;
    v14 = *algn_280C3C608;
    v17 = qword_280C3C610;
    v16 = unk_280C3C618;
    v2 = *(v2 + *(type metadata accessor for HistoryStats() + 20));
    v20[1] = v15;
    swift_unknownObjectRetain();

    for (i = 0; v17 - (v16 >> 1) + i; ++i)
    {
      if ((v17 + i) >= (v16 >> 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v19 = *(v2 + 16);
      if (i == v19)
      {
        break;
      }

      if (i >= v19)
      {
        goto LABEL_15;
      }

      if (*(v2 + 2 * i + 32))
      {
        v23 = *(v14 + v17 + i);
        OUTLINED_FUNCTION_8_7();
        sub_231478758();
      }
    }

    (*(v21 + 8))(v12, v22);

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_62();
}

void HistoryStats.init(from:)()
{
  OUTLINED_FUNCTION_64();
  v2 = v1;
  v41 = v3;
  v45 = sub_231476CA8();
  v4 = OUTLINED_FUNCTION_4(v45);
  v43 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v44 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC38, &qword_23147B098);
  OUTLINED_FUNCTION_4(v10);
  v42 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for HistoryStats();
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  v24 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_231428618();
  sub_231478948();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v39 = v23;
    v40 = v2;
    v25 = v43;
    sub_2313F8198(&qword_280C3C0E8);
    v26 = v44;
    v27 = v45;
    sub_2314786B8();
    v28 = (*(v25 + 32))(v39, v26, v27);
    if (qword_280C3C620 != -1)
    {
      v28 = OUTLINED_FUNCTION_3_3();
    }

    MEMORY[0x28223BE20](v28);
    *(&v38 - 2) = v16;
    v33 = sub_231426788(sub_23142866C, (&v38 - 4), v29, v30, v31, v32);
    v34 = v41;
    v35 = v39;
    *(v39 + *(v17 + 20)) = v33;
    v36 = OUTLINED_FUNCTION_4_5();
    v37(v36);
    sub_23142868C(v35, v34);
    __swift_destroy_boxed_opaque_existential_0(v40);
    sub_2314286F0(v35);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_231427610@<X0>(char *a1@<X0>, void *a2@<X2>, _WORD *a3@<X8>)
{
  v7 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC38, &qword_23147B098);
  result = sub_231478678();
  if (v3)
  {
    *a2 = v3;
  }

  else if ((result & 0x10000) != 0)
  {
    *a3 = 0;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void HistoryStats.privatized.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HistoryStats();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  sub_23142868C(v1, v6 - v5);
  sub_231427718(v7, a1);
}

void sub_231427718(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_231476CA8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, a1);
  sub_231426C18(v10, &v29);
  v12 = v29;
  v13 = *(a1 + *(type metadata accessor for HistoryStats() + 20));
  v14 = *(v13 + 16);
  if (!v14)
  {
    sub_2314286F0(a1);
    v15 = MEMORY[0x277D84F90];
LABEL_14:
    *a2 = v12;
    *(a2 + 8) = v15;
    return;
  }

  v27 = v12;
  v28 = MEMORY[0x277D84F90];
  sub_231412808(0, v14, 0);
  v15 = v28;
  v16 = (v13 + 32);
  while (1)
  {
    v18 = *v16++;
    v17 = v18;
    if (!v18)
    {
      v23 = 0;
      goto LABEL_9;
    }

    v19 = v17;
    v20 = log10(fabs(v19));
    v21 = __exp10(round(v20) + -1.0);
    v22 = v21 * round(v19 / v21);
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v22 <= -2147483650.0)
    {
      goto LABEL_16;
    }

    if (v22 >= 2147483650.0)
    {
      goto LABEL_17;
    }

    v23 = v22;
LABEL_9:
    v25 = *(v28 + 16);
    v24 = *(v28 + 24);
    if (v25 >= v24 >> 1)
    {
      v26 = OUTLINED_FUNCTION_20(v24);
      sub_231412808(v26, v25 + 1, 1);
    }

    *(v28 + 16) = v25 + 1;
    *(v28 + 4 * v25 + 32) = v23;
    if (!--v14)
    {
      sub_2314286F0(a1);
      v12 = v27;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_231427934()
{
  v1 = *(v0 + *(type metadata accessor for HistoryStats() + 20));
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_231412828(0, v2, 0);
    v4 = 0;
    result = v12;
    v5 = *(v1 + 16);
    while (v5 != v4)
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      if (v4 == 8)
      {
        goto LABEL_12;
      }

      v6 = *(v1 + 32 + 2 * v4);
      v7 = qword_23147B648[byte_284608958[v4 + 32]];
      v13 = result;
      v9 = *(result + 16);
      v8 = *(result + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = OUTLINED_FUNCTION_20(v8);
        sub_231412828(v11, v9 + 1, 1);
        result = v13;
      }

      *(result + 16) = v9 + 1;
      v10 = result + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      if (v2 == ++v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

Swift::Double __swiftcall HistoryStats.computeDirichlet(bandwidth:)(Swift::Double bandwidth)
{
  v2 = sub_231427934();
  v3 = static PriorDistributionUtils.computeDirichlet(frequencies:bandwidth:)(v2, bandwidth);

  return v3;
}

uint64_t static HistoryStats.computeNormalizedDirichlet(stats:bandwidth:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for HistoryStats();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v24 = MEMORY[0x277D84F90];
    v12 = OUTLINED_FUNCTION_5_5();
    sub_231412848(v12, v13, v14);
    v11 = v24;
    v15 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      sub_23142868C(v15, v9);
      v17 = sub_231427934();
      v18 = static PriorDistributionUtils.computeDirichlet(frequencies:bandwidth:)(v17, a2);

      sub_2314286F0(v9);
      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        v21 = OUTLINED_FUNCTION_20(v19);
        sub_231412848(v21, v20 + 1, 1);
      }

      *(v24 + 16) = v20 + 1;
      *(v24 + 8 * v20 + 32) = v18;
      v15 += v16;
      --v10;
    }

    while (v10);
  }

  v22 = static PriorDistributionUtils.normalize(scores:)(v11);

  return v22;
}

uint64_t static HistoryStats.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_231476C68() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HistoryStats() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_23140FCFC(v5, v6);
}

uint64_t PrivatizedHistoryStats.frequency.getter()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16))
  {
    v17 = MEMORY[0x277D84F90];
    v2 = OUTLINED_FUNCTION_5_5();
    sub_2314127A4(v2, v3, v4);
    result = v17;
    v6 = (v1 + 32);
    v7 = *(v17 + 16);
    do
    {
      v8 = *v6++;
      v9 = OUTLINED_FUNCTION_9_6(result);
      if (v11)
      {
        sub_2314127A4(v10 > 1, v1, 1);
        v9 = v17;
      }

      result = OUTLINED_FUNCTION_6_5(v9);
    }

    while (!v12);
LABEL_9:
    v13 = 0;
    v14 = 32;
    while (1)
    {
      v15 = *(result + v14);
      v16 = __OFADD__(v13, v15);
      v13 += v15;
      if (v16)
      {
        break;
      }

      v14 += 8;
      if (!--v1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    return result;
  }

  result = MEMORY[0x277D84F90];
  v1 = *(MEMORY[0x277D84F90] + 16);
  if (v1)
  {
    goto LABEL_9;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

unsigned __int8 *PrivatizedHistoryStats.subscript.getter(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + 8);
  if (*(v3 + 16) > v2)
  {
    return *(v3 + 4 * v2 + 32);
  }

  __break(1u);
  return result;
}

uint64_t static PrivatizedHistoryStats.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_23140FC14(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231427E10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636E65636572 && a2 == 0xE700000000000000;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xEB00000000736569)
  {

    return 1;
  }

  else
  {
    v7 = sub_2314787C8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_231427EDC(char a1)
{
  if (a1)
  {
    return 0x636E657571657266;
  }

  else
  {
    return 0x79636E65636572;
  }
}

uint64_t sub_231427F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231427E10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231427F4C(uint64_t a1)
{
  v2 = sub_23142874C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231427F88(uint64_t a1)
{
  v2 = sub_23142874C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PrivatizedHistoryStats.encode(to:)()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC40, &qword_23147B0A0);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  v12 = *v0;
  v14[0] = *(v0 + 1);
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_23142874C();
  OUTLINED_FUNCTION_11_7();
  sub_2314287A0();
  OUTLINED_FUNCTION_8_7();
  sub_231478748();
  if (!v1)
  {
    v14[1] = v14[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC58, &qword_23147B0A8);
    sub_231428848(&qword_27DD4DC60);
    OUTLINED_FUNCTION_8_7();
    sub_231478748();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_62();
}

void PrivatizedHistoryStats.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_64();
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC68, &qword_23147B0B0);
  OUTLINED_FUNCTION_4(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v23);
  v25 = v28 - v24;
  v26 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_23142874C();
  sub_231478948();
  if (!v13)
  {
    sub_2314287F4();
    sub_2314786B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC58, &qword_23147B0A8);
    sub_231428848(&qword_27DD4DC78);
    sub_2314786B8();
    (*(v20 + 8))(v25, v18);
    v27 = v28[1];
    *v17 = a13;
    *(v17 + 8) = v27;
  }

  __swift_destroy_boxed_opaque_existential_0(v15);
  OUTLINED_FUNCTION_62();
}

uint64_t IntervalBucket.description.getter()
{
  result = 0x6E694D3274736170;
  switch(*v0)
  {
    case 1:
      result = 0x316F543274736170;
      break;
    case 2:
      result = 0x694D303174736170;
      break;
    case 3:
      v2 = 0x483174736170;
      goto LABEL_6;
    case 4:
      v2 = 0x483674736170;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x5472000000000000;
      break;
    case 5:
      result = 0x376F543174736170;
      break;
    case 6:
      result = 0x326F543774736170;
      break;
    case 7:
      result = 0x6168547265646C6FLL;
      break;
    default:
      return result;
  }

  return result;
}

SiriRemembers::IntervalBucket_optional __swiftcall IntervalBucket.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2314284F0@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBucket.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_231428618()
{
  result = qword_280C3C5F8;
  if (!qword_280C3C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5F8);
  }

  return result;
}

uint64_t sub_23142868C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryStats();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314286F0(uint64_t a1)
{
  v2 = type metadata accessor for HistoryStats();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23142874C()
{
  result = qword_27DD4DC48;
  if (!qword_27DD4DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC48);
  }

  return result;
}

unint64_t sub_2314287A0()
{
  result = qword_27DD4DC50;
  if (!qword_27DD4DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC50);
  }

  return result;
}

unint64_t sub_2314287F4()
{
  result = qword_27DD4DC70;
  if (!qword_27DD4DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC70);
  }

  return result;
}

uint64_t sub_231428848(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4DC58, &qword_23147B0A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2314288B8()
{
  result = qword_27DD4DC80;
  if (!qword_27DD4DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC80);
  }

  return result;
}

void sub_231428964()
{
  sub_231476CA8();
  if (v0 <= 0x3F)
  {
    sub_2314289E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2314289E8()
{
  if (!qword_280C3C900)
  {
    v0 = sub_231478198();
    if (!v1)
    {
      atomic_store(v0, &qword_280C3C900);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_231428A44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231428A84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryOperator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntervalBucket(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrivatizedHistoryStats.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistoryStats.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231428E1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_231428E74()
{
  result = qword_27DD4DCA8;
  if (!qword_27DD4DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DCA8);
  }

  return result;
}

unint64_t sub_231428ECC()
{
  result = qword_27DD4DCB0;
  if (!qword_27DD4DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DCB0);
  }

  return result;
}

unint64_t sub_231428F24()
{
  result = qword_27DD4DCB8;
  if (!qword_27DD4DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DCB8);
  }

  return result;
}

unint64_t sub_231428F7C()
{
  result = qword_27DD4DCC0;
  if (!qword_27DD4DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DCC0);
  }

  return result;
}

unint64_t sub_231428FD4()
{
  result = qword_280C3C5E8;
  if (!qword_280C3C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5E8);
  }

  return result;
}

unint64_t sub_23142902C()
{
  result = qword_280C3C5F0;
  if (!qword_280C3C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5F0);
  }

  return result;
}

unint64_t sub_231429080()
{
  result = qword_27DD4DCC8;
  if (!qword_27DD4DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DCC8);
  }

  return result;
}

unint64_t sub_2314290D4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_231429140()
{
  v2 = type metadata accessor for Entity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = [v0 spatialEventTrigger];
  if (v7 && (v8 = v7, v9 = [v7 placemark], v8, v9))
  {
    sub_231414A00(v6);
    if (v1)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
      inited = swift_initStackObject();
      v15 = xmmword_231479580;
      *(inited + 16) = xmmword_231479580;
      *(inited + 32) = 0xD000000000000013;
      *(inited + 40) = 0x8000000231482800;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
      v12 = *(v3 + 72);
      v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = v15;
      sub_2313F0868(v6, v14 + v13);
      *(inited + 48) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
      v3 = sub_231477DC8();

      sub_2313F09B4(v6);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
    return sub_231477DC8();
  }

  return v3;
}

uint64_t sub_231429384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v10 = *(a5 + 40);
  sub_2314788E8();
  sub_231477F38();
  sub_231477F38();
  v11 = sub_231478918();
  v12 = a5 + 56;
  v13 = -1 << *(a5 + 32);
  v14 = v11 & ~v13;
  if (((*(a5 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  v16 = *(a5 + 48);
  while (1)
  {
    v17 = (v16 + 32 * v14);
    v18 = v17[2];
    v19 = v17[3];
    v20 = *v17 == a1 && v17[1] == a2;
    if (v20 || (sub_2314787C8() & 1) != 0)
    {
      v21 = v18 == a3 && v19 == a4;
      if (v21 || (sub_2314787C8() & 1) != 0)
      {
        break;
      }
    }

    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2314294D0(uint64_t a1)
{
  sub_23142C724();
  v3 = sub_231477DC8();
  v4 = MEMORY[0x277D84FA0];
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = *(a1 + 32);
  return v1;
}

uint64_t sub_231429534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v200 = a1;
  v9 = sub_231477B98();
  v10 = OUTLINED_FUNCTION_0_0(v9, v209);
  v193 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_0();
  v185 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DCD8, &qword_23147B7F8);
  v16 = OUTLINED_FUNCTION_0_0(v15, v204);
  v177 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_28(&v160 - v20);
  v21 = sub_231477BD8();
  v22 = OUTLINED_FUNCTION_0_0(v21, v208);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_81();
  v180 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DCE0, &qword_23147B800);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v33);
  v34 = sub_231477C58();
  v35 = OUTLINED_FUNCTION_0_0(v34, &v212);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v40);
  v41 = sub_231476D08();
  v42 = OUTLINED_FUNCTION_0_0(v41, &v211);
  v196 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v47);
  v48 = sub_231477C38();
  v49 = OUTLINED_FUNCTION_0_0(v48, &v214);
  v195 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_81();
  v187 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DCE8, &qword_23147B808);
  v56 = OUTLINED_FUNCTION_0_0(v55, v210);
  v194 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_28(&v160 - v60);
  v61 = sub_231477C88();
  v62 = OUTLINED_FUNCTION_0_0(v61, &v213);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v67);
  v69 = &v160 - v68;
  swift_beginAccess();
  v70 = *(v4 + 56);
  v71 = *(v70 + 16);
  v201 = a2;

  if (v71)
  {
    v183 = v69;
    v72 = v201;

    v73 = sub_23142F590(v200, v72, a3, a4);
    if (v74)
    {
      v75 = v73;

      v76 = (*(v70 + 56) + 16 * v75);
      v77 = *v76;
      v201 = v76[1];

      return v77;
    }

    v69 = v183;
  }

  swift_beginAccess();
  v78 = *(v5 + 64);

  v79 = sub_231429384(v200, v201, a3, a4, v78);

  if (v79)
  {

    return v200;
  }

  sub_23142AC0C(v5 + 16, &v203);
  if (!v205)
  {

    sub_23140224C(&v203, &qword_27DD4DCF0, &qword_23147B810);

    return v200;
  }

  v174 = v5;
  v169 = v37;
  v173 = a4;
  v170 = v24;
  v172 = a3;
  sub_2313F198C(&v203, &v206);
  v80 = v186;
  sub_231477C78();
  swift_getKeyPath();
  v81 = swift_allocObject();
  v82 = v201;
  *(v81 + 16) = v200;
  *(v81 + 24) = v82;
  v83 = v189;
  *v189 = v81;
  v84 = v194;
  v85 = *(v194 + 13);
  v168 = *MEMORY[0x277D721C8];
  v86 = v190;
  v167 = v194 + 104;
  v166 = v85;
  v85(v83);
  sub_23142AE50(&qword_27DD4DCF8, MEMORY[0x277D73330]);
  v87 = sub_23142AE98(&qword_27DD4DD00, &qword_27DD4DCE8, &qword_23147B808);

  v165 = v87;
  sub_231477C28();

  v164 = *(v84 + 1);
  v164(v83, v86);
  v88 = *(v64 + 8);
  v186 = v64 + 8;
  v171 = v88;
  v88(v80, v197);
  v89 = __swift_project_boxed_opaque_existential_1(&v206, v207);
  LODWORD(v82) = *MEMORY[0x277D72858];
  v90 = v195;
  v92 = v195 + 104;
  v91 = *(v195 + 104);
  v93 = v187;
  v91(v187, *MEMORY[0x277D72858], v199);
  v94 = v188;
  sub_231476CF8();
  v95 = *v89;
  v96 = sub_231477BE8();
  v161 = v91;
  v162 = v82;
  v163 = v92;
  v194 = (v84 + 8);
  v183 = v69;
  v97 = *(v196 + 8);
  v196 += 8;
  v97(v94, v191);
  v98 = *(v90 + 8);
  v195 = v90 + 8;
  v98(v93, v199);
  v77 = v181;
  sub_23142A614(v96, v181);

  v99 = v192;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v192);
  v101 = v173;
  if (EnumTagSinglePayload == 1)
  {
    sub_23140224C(v77, &qword_27DD4DCE0, &qword_23147B800);
    v102 = v172;
    OUTLINED_FUNCTION_13_5();
    OUTLINED_FUNCTION_15_3();
    v103 = OUTLINED_FUNCTION_4_6();
    sub_23142AC7C(v103, v104, v105, v102, v101);
    swift_endAccess();
  }

  else
  {
    v187 = v98;
    v188 = v97;
    v108 = v169;
    v109 = v182;
    (*(v169 + 32))(v182, v77, v99);
    v110 = v175;
    sub_231477BB8();
    swift_getKeyPath();
    v111 = swift_allocBox();
    (*(v108 + 16))(v112, v109, v99);
    v113 = v176;
    *v176 = v111;
    v114 = v177;
    v115 = v179;
    (*(v177 + 104))(v113, v168, v179);
    v181 = sub_23142AE50(&qword_27DD4DD08, MEMORY[0x277D724B8]);
    sub_23142AE98(&qword_27DD4DD10, &qword_27DD4DCD8, &qword_23147B7F8);
    sub_231477C28();

    (*(v114 + 8))(v113, v115);
    v116 = v170 + 8;
    v117 = *(v170 + 8);
    (v117)(v110, v184);
    swift_getKeyPath();
    v118 = swift_allocObject();
    *&v203 = sub_231477C48();
    *(&v203 + 1) = v119;

    MEMORY[0x23192E060](46, 0xE100000000000000);

    MEMORY[0x23192E060](v172, v101);

    v120 = *(&v203 + 1);
    *(v118 + 16) = v203;
    *(v118 + 24) = v120;
    v121 = v189;
    *v189 = v118;
    v122 = v190;
    v166(v121, v168, v190);
    sub_231477C28();

    v123 = v122;
    v124 = v117;
    v164(v121, v123);
    OUTLINED_FUNCTION_10_6();
    *(v125 - 256) = v116;
    v117();
    v126 = __swift_project_boxed_opaque_existential_1(&v206, v207);
    sub_231476CF8();
    v127 = v199;
    v161(v178, v162, v199);
    v128 = *v126;
    v136 = sub_231477BF8();
    v137 = OUTLINED_FUNCTION_9_7();
    v138(v137);
    v139 = OUTLINED_FUNCTION_5_6();
    v140(v139);
    v77 = *(v136 + 16);
    v141 = v192;
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_13_5();
    if (v77)
    {
      v194 = v124;
      v199 = *(v193 + 16);
      v142 = (*(v193 + 80) + 32) & ~*(v193 + 80);
      v191 = v136;
      v143 = v136 + v142;
      v196 = *(v193 + 72);
      v193 += 16;
      v144 = (v193 - 8);
      v127 = (v169 + 8);
      v145 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_6_6();
      do
      {
        (v199)(v136, v143, v124);
        sub_231477B88();
        v146 = v198;
        if (__swift_getEnumTagSinglePayload(v198, 1, v141) == 1)
        {
          (*v144)(v136, v124);
          sub_23140224C(v146, &qword_27DD4DCE0, &qword_23147B800);
        }

        else
        {
          v195 = sub_231477C48();
          v109 = v147;
          (*v144)(v136, v124);
          (*v127)(v146, v141);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v149 = v145[2];
            sub_23141CC58();
            v145 = v150;
          }

          v124 = v145[2];
          v136 = v124 + 1;
          if (v124 >= v145[3] >> 1)
          {
            sub_23141CC58();
            v145 = v151;
          }

          v145[2] = v136;
          v148 = &v145[2 * v124];
          v148[4] = v195;
          v148[5] = v109;
          OUTLINED_FUNCTION_13_5();
          v141 = v192;
          OUTLINED_FUNCTION_6_6();
        }

        v143 += v196;
        --v77;
      }

      while (v77);

      v152 = v172;
      v124 = v194;
      OUTLINED_FUNCTION_12_8();
    }

    else
    {

      v145 = MEMORY[0x277D84F90];
      v152 = v172;
    }

    if (v145[2])
    {
      v77 = v145[4];
      v153 = v145[5];

      swift_beginAccess();

      v154 = *(v109 + 56);
      swift_isUniquelyReferenced_nonNull_native();
      v202 = *(v109 + 56);
      sub_23142F834(v77, v153, v200, v201, v152, v127);
      *(v109 + 56) = v202;

      swift_endAccess();
      OUTLINED_FUNCTION_10_6();
      v156 = *(v155 - 256);
      (v124)();
      v157 = OUTLINED_FUNCTION_8_8();
      v158(v157);
      OUTLINED_FUNCTION_7_3();
      v159();
      __swift_destroy_boxed_opaque_existential_0(&v206);
      v201 = v153;
      return v77;
    }

    OUTLINED_FUNCTION_15_3();
    v129 = OUTLINED_FUNCTION_4_6();
    sub_23142AC7C(v129, v130, v131, v152, v127);
    swift_endAccess();

    OUTLINED_FUNCTION_10_6();
    v133 = *(v132 - 256);
    (v124)();
    v134 = OUTLINED_FUNCTION_8_8();
    v135(v134);
  }

  OUTLINED_FUNCTION_7_3();
  v106();

  __swift_destroy_boxed_opaque_existential_0(&v206);
  return v77;
}