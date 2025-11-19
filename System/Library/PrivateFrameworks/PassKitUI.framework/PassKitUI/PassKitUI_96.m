unint64_t sub_1BDA74134()
{
  result = qword_1EBD5D538;
  if (!qword_1EBD5D538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D518);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D538);
  }

  return result;
}

unint64_t sub_1BDA7421C()
{
  result = qword_1EBD5D550;
  if (!qword_1EBD5D550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D530);
    sub_1BDA742D4();
    sub_1BD0DE4F4(&unk_1EBD5D580, &qword_1EBD5D548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D550);
  }

  return result;
}

unint64_t sub_1BDA742D4()
{
  result = qword_1EBD5D558;
  if (!qword_1EBD5D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D528);
    sub_1BDA74360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D558);
  }

  return result;
}

unint64_t sub_1BDA74360()
{
  result = qword_1EBD5D560;
  if (!qword_1EBD5D560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D520);
    sub_1BDA743EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D560);
  }

  return result;
}

unint64_t sub_1BDA743EC()
{
  result = qword_1EBD5D568;
  if (!qword_1EBD5D568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D570);
    sub_1BDA744A4();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D568);
  }

  return result;
}

unint64_t sub_1BDA744A4()
{
  result = qword_1EBD5D578;
  if (!qword_1EBD5D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D578);
  }

  return result;
}

id NearbyPeerPaymentVFXView.__allocating_init(frame:options:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1)
  {
    v10 = sub_1BE052224();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v5) initWithFrame:v10 options:{a2, a3, a4, a5}];

  return v11;
}

id NearbyPeerPaymentVFXView.init(frame:options:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1)
  {
    v10 = sub_1BE052224();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_options_, v10, a2, a3, a4, a5);

  return v11;
}

id NearbyPeerPaymentVFXView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NearbyPeerPaymentVFXView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id NearbyPeerPaymentVFXView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id NearbyPeerPaymentVFXView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id NearbyPeerPaymentVFXView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BDA74A24@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BDA77390(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BDA74A50(_OWORD *a1, char a2)
{
  *(v2 + 16) = 14;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  v3 = a1[1];
  *(v2 + 232) = *a1;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  *(v2 + 32) = v4;
  *(v2 + 40) = v4;
  *(v2 + 48) = 1;
  *(v2 + 56) = 0;
  *(v2 + 59) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  *(v2 + 88) = 1;
  *(v2 + 224) = 0;
  *(v2 + 248) = v3;
  *(v2 + 264) = a1[2];
  *(v2 + 225) = a2;
  *(v2 + 92) = 0;
  return v2;
}

uint64_t sub_1BDA74AC0()
{
  v1 = *(v0 + 248) - 3;
  if (v1 < 0x12 && ((0x3FBF9u >> v1) & 1) != 0)
  {
    v2 = byte_1BE112E7A[v1];
  }

  else
  {
    v2 = sub_1BDA74B34();
  }

  if ((*(v0 + 59) & (v2 == 0)) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  sub_1BDA764E0(v3);
  return v3;
}

uint64_t sub_1BDA74B34()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6 = v16;
  if (sub_1BE04C984() & 1) != 0 || (sub_1BE04CA64())
  {
    return 4;
  }

  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        return 3;
      case 5:
        return *(v0 + 16);
      case 4:
        v8 = *(v0 + 16);
        if (PKUserIntentIsAvailable())
        {
          return v8;
        }

        else
        {
          return 4;
        }
    }

    goto LABEL_24;
  }

  if (!v6)
  {
    if (*(v0 + 225) == 1 && (*(v0 + 60) & 1) != 0 || *(v0 + 16) == 1)
    {
      v9 = 1;
    }

    else
    {
      v13 = [*(v0 + 232) model];
      if (v13 && (v14 = v13, v15 = [v13 mode], v14, v15 == 2))
      {
        v9 = 10;
      }

      else
      {
        v9 = 0;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v16 == 3)
    {
      if (*(v0 + 57))
      {
        return v9;
      }

      else
      {
        return 4;
      }
    }

    return v9;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      result = 2;
      if (v16 != 3)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_24:
    sub_1BE04D084();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "Unknown evaluation state", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 13;
  }

  if (*(v0 + 225))
  {
    v9 = 5;
  }

  else
  {
    v9 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v16 <= 1)
  {
    if (v16)
    {
      return v9;
    }

    return v9;
  }

  if (v16 == 2)
  {
    return v9;
  }

  if (v16 == 4)
  {
    return 6;
  }

  result = v9;
  if (v16 == 3)
  {
LABEL_10:
    if (*(v0 + 57))
    {
      return result;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

void sub_1BDA74F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 60) = (a4 - 1) < 2;
  v6 = a4 == 2 || a2 == 2;
  *(v4 + 62) = v6;
  if (*(v4 + 225) == 1 && (*(v4 + 57) & 1) == 0)
  {
    v9 = [*(v4 + 264) paymentRequest];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 _isAMPPayment];

      v12 = 1;
      if ((*(v4 + 60) & 1) == 0 && (a1 - 1) >= 2)
      {
        v12 = (a4 == 3) & v11;
      }

      *(v4 + 59) = v12;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(v4 + 59) = 0;
  }
}

id sub_1BDA74FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v24 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(v4 + 232);
  v11 = *(v4 + 264);
  v20 = *(v4 + 256);
  v12 = *(a1 + 16);
  *(v4 + 232) = *a1;
  *(v4 + 248) = v12;
  *(v4 + 264) = *(a1 + 32);
  v13 = v7;
  sub_1BD91A424(&v24, v23);
  v14 = v8;
  v15 = v9;
  sub_1BE048964();

  swift_unknownObjectRelease();
  v16 = (sub_1BE04CB74() & 1) != 0 || *(a2 + qword_1EBD55570) > 0;
  *(v4 + 92) = v16;
  *(v4 + 88) = sub_1BE04CAB4();
  *(v4 + 56) = sub_1BE04CA44() & 1;
  *(v4 + 48) = *(a2 + qword_1EBDAADB8);
  *(v4 + 57) = sub_1BE04CB34() & 1;
  v17 = *(a1 + 16);
  sub_1BD93825C(v17, v8);
  sub_1BD9385A4(v17, v8);
  v18 = sub_1BDA74AC0();
  result = sub_1BDA75178(v18, 17, a3, a4);
  if (*(v4 + 60) == 1)
  {
    result = sub_1BDA75178(9, 17, 0, 0);
    *(v4 + 60) = 256;
  }

  return result;
}

id sub_1BDA75178(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  LODWORD(v8) = a2;
  v10 = a2;
  v11 = sub_1BE051F54();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v141 = &v112[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1BE051FA4();
  v140 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v142 = &v112[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1BE051F44();
  v138 = *(v18 - 8);
  v139 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v137 = &v112[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1BE051FC4();
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  if (v10 == 17)
  {
    LODWORD(v8) = *(v5 + 16);
  }

  if (*(v5 + 17))
  {
    if (a1 == 9)
    {
      *(v5 + 18) = 1;
      v29 = MEMORY[0x1E69E7CC0];
LABEL_12:
      if (a3)
      {
        v31 = swift_allocObject();
        *(v31 + 16) = a3;
        *(v31 + 24) = a4;
        swift_beginAccess();
        v32 = *(v5 + 40);
        sub_1BE048964();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + 40) = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_1BD1D761C(0, v32[2] + 1, 1, v32);
          *(v5 + 40) = v32;
        }

        v35 = v32[2];
        v34 = v32[3];
        if (v35 >= v34 >> 1)
        {
          v32 = sub_1BD1D761C((v34 > 1), v35 + 1, 1, v32);
        }

        v32[2] = v35 + 1;
        v36 = &v32[2 * v35];
        v36[4] = sub_1BDA774F8;
        v36[5] = v31;
        *(v5 + 40) = v32;
        swift_endAccess();
      }

      v37 = *(v29 + 16);
      if (v37)
      {
        v38 = v29 + 40;
        do
        {
          v39 = *(v38 - 8);
          LOBYTE(v161) = 0;
          sub_1BE048964();
          v39(&v161);

          v38 += 16;
          --v37;
        }

        while (v37);
      }
    }

LABEL_10:
    v29 = MEMORY[0x1E69E7CC0];
    if (v8 != a1)
    {

      swift_beginAccess();
      v30 = *(v5 + 40);
      *(v5 + 40) = v29;
      *(v5 + 16) = a1;
      v29 = v30;
    }

    goto LABEL_12;
  }

  if (*(v5 + 19) == 1 && a1 != 9 && v8 != a1)
  {
    *(v5 + 17) = 1;
    goto LABEL_10;
  }

  if (a1 == 9)
  {
    if (v8 > 5u)
    {
      if (!a3)
      {
        goto LABEL_45;
      }

      sub_1BE048964();
      v40 = 0;
    }

    else
    {
      if (!a3)
      {
        goto LABEL_45;
      }

      sub_1BE048964();
      v40 = 1;
    }

    (a3)(v40);
    sub_1BD0D4744(a3);
LABEL_45:
    v10 = MEMORY[0x1E69E7CC0];
    v66 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v66)
    {
      goto LABEL_62;
    }
  }

  v118 = v28;
  v119 = &v112[-v26];
  v120 = v25;
  v121 = v27;
  v41 = *(v5 + 24);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
    goto LABEL_70;
  }

  *(v5 + 24) = v43;
  v10 = MEMORY[0x1E69E7CC0];
  if (v8 != a1)
  {
    swift_beginAccess();
    if (*(*(v5 + 32) + 16))
    {

      v44 = *(v5 + 32);
      *(v5 + 32) = v10;
      v10 = v44;
    }

    *(v5 + 16) = a1;
  }

  v116 = v12;
  v117 = v11;
  v115 = v15;
  if (!a3)
  {
    goto LABEL_36;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  swift_beginAccess();
  a3 = *(v5 + 32);
  sub_1BE048964();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = a3;
  if ((v45 & 1) == 0)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v47 = *(a3 + 16);
    v46 = *(a3 + 24);
    if (v47 >= v46 >> 1)
    {
      a3 = sub_1BD1D761C((v46 > 1), v47 + 1, 1, a3);
    }

    *(a3 + 16) = v47 + 1;
    v48 = a3 + 16 * v47;
    *(v48 + 32) = sub_1BD789540;
    *(v48 + 40) = v11;
    *(v5 + 32) = a3;
    swift_endAccess();
LABEL_36:
    v49 = *(v5 + 24);
    a3 = a1;
    *(v5 + 58) = a1 == 4;
    v50 = swift_allocObject();
    *(v50 + 16) = 1;
    v132 = (v50 + 16);
    *(v5 + 19) = a1 == 8;
    v11 = swift_allocObject();
    swift_weakInit();
    v51 = swift_allocObject();
    *(v51 + 16) = v11;
    *(v51 + 24) = v49;
    v129 = v49;
    *(v51 + 32) = v50;
    *(v51 + 40) = a1 == 8;
    v131 = v51;
    *(v51 + 41) = v8;
    v52 = *(v5 + 48);
    v127 = v11;
    sub_1BE048964();
    v128 = v50;
    sub_1BE048964();
    v130 = sub_1BD937FBC(a1, v52);
    if (a1 == 8)
    {
      *(v5 + 19) = 1;
    }

    v53 = v132;
    swift_beginAccess();
    if (__OFADD__(*v53, 1))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    ++*v53;
    v126 = sub_1BD9B68CC(a1, v8, *(v5 + 48));
    v54 = *(v5 + 64);
    v55 = *(v5 + 72);
    v134 = v56;
    v135 = v54;
    v57 = *(v5 + 80);
    v58 = *(v5 + 48);
    v59 = *(v5 + 56);
    sub_1BE048C84();
    v60 = sub_1BD93808C(a1, v58, v59);
    result = [*(v5 + 264) paymentRequest];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v62 = result;
    v125 = v10;
    v63 = [result localizedPhysicalButtonConfirmationTitle];

    *&v133 = v55;
    *(&v133 + 1) = v57;
    if (v63)
    {
      a3 = sub_1BE052434();
      v65 = v64;
    }

    else
    {
      a3 = 0;
      v65 = 0;
    }

    v67 = v131;
    v136 = [*(v5 + 264) confirmationStyle];
    v122 = *(v5 + 88);
    v68 = swift_allocObject();
    *(v68 + 16) = sub_1BDA773A0;
    *(v68 + 24) = v67;
    v69 = v60 & 1;
    v123 = v8;
    v124 = a1;
    sub_1BE048964();
    if (v65)
    {
      v70 = v130;
      v71 = v65;
    }

    else
    {
      a3 = sub_1BD410088(v136);
      v71 = v72;
      v70 = v130;
    }

    v73 = *(v5 + 240);
    v74 = v126;
    *&v154 = v126;
    *(&v154 + 1) = v134;
    *&v155 = v70;
    *(&v155 + 1) = v135;
    v156 = v133;
    v75 = v69;
    LOBYTE(v157) = v69;
    *(&v157 + 1) = a3;
    *&v158 = v71;
    *(&v158 + 1) = v136;
    v76 = v122;
    LODWORD(v159) = v122;
    *(&v159 + 1) = v73;
    *&v160 = sub_1BD214190;
    *(&v160 + 1) = v68;
    v77 = *(v5 + 128);
    v161 = *(v5 + 112);
    v162 = v77;
    v78 = *(v5 + 144);
    v79 = *(v5 + 160);
    v80 = *(v5 + 208);
    v166 = *(v5 + 192);
    v167 = v80;
    v81 = *(v5 + 176);
    v164 = v79;
    v165 = v81;
    v163 = v78;
    v82 = v155;
    *(v5 + 112) = v154;
    *(v5 + 128) = v82;
    v83 = v156;
    v84 = v157;
    v85 = v160;
    *(v5 + 192) = v159;
    *(v5 + 208) = v85;
    v86 = v158;
    *(v5 + 160) = v84;
    *(v5 + 176) = v86;
    *(v5 + 144) = v83;
    swift_unknownObjectRetain();
    sub_1BD146D60(&v154, &v169);
    sub_1BDA773B4(&v161);
    if (*(v5 + 224))
    {
      v169 = v74;
      v170 = v134;
      v171 = v70;
      v172 = v135;
      v173 = v133;
      v174 = v75;
      v175 = a3;
      v176 = v71;
      v177 = v136;
      v178 = v76;
      v179 = v73;
      v180 = sub_1BD214190;
      v181 = v68;
      v87 = &v169;
    }

    else
    {
      v88 = a3;
      a3 = *(v5 + 96);
      if (a3)
      {
        v169 = v74;
        v170 = v134;
        v171 = v130;
        v172 = v135;
        v173 = v133;
        v174 = v75;
        v175 = v88;
        v176 = v71;
        v177 = v136;
        v178 = v76;
        v179 = v73;
        v180 = sub_1BD214190;
        v181 = v68;
        v113 = *(v5 + 58);
        v114 = v88;
        sub_1BE048964();
        (a3)(&v169, v113);
        v70 = v130;
        sub_1BD0D4744(a3);
        v88 = v114;
      }

      v143[0] = v74;
      v143[1] = v134;
      v143[2] = v70;
      v143[3] = v135;
      v144 = v133;
      v145 = v75;
      *v146 = *v168;
      *&v146[3] = *&v168[3];
      v147 = v88;
      v148 = v71;
      v149 = v136;
      v150 = v76;
      v151 = v73;
      v152 = sub_1BD214190;
      v153 = v68;
      v87 = v143;
    }

    sub_1BD146D0C(v87);
    v89 = v132;
    swift_beginAccess();
    v90 = v128;
    v91 = v129;
    v11 = v127;
    v10 = v125;
    v8 = v123;
    a1 = v124;
    if (!__OFADD__(*v89, 1))
    {
      break;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    a3 = sub_1BD1D761C(0, *(a3 + 16) + 1, 1, a3);
    *(v5 + 32) = a3;
  }

  *(v128 + 16) = *v89 + 1;
  sub_1BDA75EC4(v11, v91, v90, a1 == 8, v8);
  if (*(v5 + 24) == v91)
  {
    if (*(v5 + 16) == 1 && (*(v5 + 57) & 1) == 0)
    {
      sub_1BD14BE3C();
      v136 = sub_1BE052D54();
      v92 = v118;
      sub_1BE051FB4();
      v94 = v137;
      v93 = v138;
      *v137 = 1850;
      v95 = v139;
      v93[13](v94, *MEMORY[0x1E69E7F38], v139);
      MEMORY[0x1BFB3F070](v92, v94);
      (v93[1])(v94, v95);
      v96 = *(v121 + 8);
      v121 += 8;
      v139 = v96;
      v96(v92, v120);
      v97 = swift_allocObject();
      *(v97 + 16) = v5;
      *(v97 + 24) = v91;
      *(v97 + 32) = v8;
      *&v163 = sub_1BDA7741C;
      *(&v163 + 1) = v97;
      *&v161 = MEMORY[0x1E69E9820];
      *(&v161 + 1) = 1107296256;
      *&v162 = sub_1BD126964;
      *(&v162 + 1) = &block_descriptor_249;
      v138 = _Block_copy(&v161);
      sub_1BE048964();

      v98 = v142;
      sub_1BE051F74();
      *&v161 = MEMORY[0x1E69E7CC0];
      sub_1BD14EC84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      v99 = v141;
      v100 = v117;
      sub_1BE053664();
      v101 = v119;
      v102 = v98;
      v103 = v138;
      v104 = v136;
      MEMORY[0x1BFB3FD90](v119, v102, v99, v138);
      v105 = v103;
      v11 = v127;
      v90 = v128;
      _Block_release(v105);

      v106 = v100;
      v91 = v129;
      (*(v116 + 8))(v99, v106);
      (*(v140 + 8))(v142, v115);
      v139(v101, v120);
    }

    sub_1BDA75EC4(v11, v91, v90, a1 == 8, v8);

    v66 = *(v10 + 16);
    if (v66)
    {
LABEL_62:
      v107 = v10 + 40;
      do
      {
        v108 = *(v107 - 8);
        LOBYTE(v161) = 0;
        sub_1BE048964();
        v108(&v161);

        v107 += 16;
        --v66;
      }

      while (v66);
    }
  }

  else
  {

    v109 = *(v10 + 16);
    if (v109)
    {
      v110 = v10 + 40;
      do
      {
        v111 = *(v110 - 8);
        LOBYTE(v161) = 0;
        sub_1BE048964();
        v111(&v161);

        v110 += 16;
        --v109;
      }

      while (v109);
    }
  }
}

uint64_t sub_1BDA75EC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 24) != a2)
    {
    }

    v10 = result;
    result = swift_beginAccess();
    v11 = *(a3 + 16);
    v12 = __OFSUB__(v11, 1);
    v13 = v11 - 1;
    if (v12)
    {
      __break(1u);
      return result;
    }

    *(a3 + 16) = v13;
    if (v13 >= 1)
    {
    }

    if (a4)
    {
      *(v10 + 19) = 0;
    }

    v14 = *(v10 + 17);
    v25 = *(v10 + 16);
    v26 = *(v10 + 18);
    *(v10 + 17) = 0;
    swift_beginAccess();
    v15 = *(v10 + 32);
    v16 = MEMORY[0x1E69E7CC0];
    *(v10 + 32) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v17 = *(v10 + 40);
    *(v10 + 40) = v16;
    v18 = *(v15 + 16);
    if (v18)
    {
      v19 = v15 + 40;
      do
      {
        v20 = *(v19 - 8);
        v27 = 1;
        sub_1BE048964();
        v20(&v27);

        v19 += 16;
        --v18;
      }

      while (v18);
    }

    if (v14)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = v17;
      sub_1BDA75178(v25, a5, sub_1BDA77464, v21);

      if (v26)
      {
        sub_1BDA75178(9, a5, 0, 0);
      }
    }

    v22 = *(v17 + 16);
    if (v22)
    {
      v23 = v17 + 40;
      do
      {
        v24 = *(v23 - 8);
        v27 = 0;
        sub_1BE048964();
        v24(&v27);

        v23 += 16;
        --v22;
      }

      while (v22);
    }
  }

  return result;
}

uint64_t sub_1BDA760F4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result & 1;
    v4 = a2 + 40;
    do
    {
      v5 = *(v4 - 8);
      v6 = v3;
      sub_1BE048964();
      v5(&v6);

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1BDA76168()
{

  sub_1BD0D4744(v0[12]);
  sub_1BDA7746C(v0[14], v0[15], v0[16], v0[17], v0[18], v0[19], v0[20], v0[21], v0[22], v0[23], v0[24], v0[25], v0[26]);
  v1 = v0[29];
  v2 = v0[32];
  v3 = v0[33];

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for PaymentProgressState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentProgressState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BDA76398()
{
  result = qword_1EBD5D590;
  if (!qword_1EBD5D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D590);
  }

  return result;
}

uint64_t sub_1BDA763EC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BDA7646C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BDA764E0(char a1)
{
  v2 = sub_1BE04CFC4();
  v162 = *(v2 - 8);
  v163 = v2;
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v159 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v158 = &v143 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v157 = &v143 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v156 = &v143 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v155 = &v143 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v154 = &v143 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v153 = &v143 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v152 = &v143 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v151 = &v143 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v149 = &v143 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v148 = &v143 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v147 = &v143 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v146 = &v143 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v145 = &v143 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v144 = &v143 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v143 = &v143 - v50;
  MEMORY[0x1EEE9AC00](v49, v51);
  v150 = &v143 - v52;
  v53 = sub_1BE04CFE4();
  v160 = *(v53 - 8);
  v161 = v53;
  v55 = MEMORY[0x1EEE9AC00](v53, v54);
  v57 = &v143 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v55, v58);
  v61 = MEMORY[0x1EEE9AC00](v59, v60);
  v63 = MEMORY[0x1EEE9AC00](v61, v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  v67 = MEMORY[0x1EEE9AC00](&v143 - v65, v66);
  v69 = MEMORY[0x1EEE9AC00](v67, &v143 - v68);
  v71 = MEMORY[0x1EEE9AC00](v69, v70);
  v73 = MEMORY[0x1EEE9AC00](v71, v72);
  v75 = MEMORY[0x1EEE9AC00](v73, v74);
  v77 = &v143 - v76;
  v79 = MEMORY[0x1EEE9AC00](v75, v78);
  v81 = &v143 - v80;
  v83 = MEMORY[0x1EEE9AC00](v79, v82);
  v85 = &v143 - v84;
  v87 = MEMORY[0x1EEE9AC00](v83, v86);
  v89 = &v143 - v88;
  v91 = MEMORY[0x1EEE9AC00](v87, v90);
  v93 = &v143 - v92;
  v95 = MEMORY[0x1EEE9AC00](v91, v94);
  v97 = &v143 - v96;
  v99 = MEMORY[0x1EEE9AC00](v95, v98);
  v101 = &v143 - v100;
  v103 = MEMORY[0x1EEE9AC00](v99, v102);
  v112 = &v143 - v111;
  switch(a1)
  {
    case 1:
      sub_1BE04B6C4();
      v113 = v143;
      sub_1BE04CFB4();
      v131 = sub_1BE04CFD4();
      v132 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        v133 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v131, v132, v133, "progressState", "requiresPearlIDFailed", v116, 2u);
        v112 = v101;
        v135 = v162;
        v134 = v163;
        v137 = v160;
        v136 = v161;
        v114 = v131;
        goto LABEL_38;
      }

      v57 = v101;
      v135 = v162;
      v134 = v163;
      v137 = v160;
      v136 = v161;
      v114 = v131;
      goto LABEL_41;
    case 2:
      sub_1BE04B6C4();
      v123 = v144;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v124 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        v125 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v114, v124, v125, "progressState", "biometricMatching", v116, 2u);
        v112 = v97;
        v113 = v123;
        goto LABEL_37;
      }

      v57 = v97;
      v113 = v123;
      goto LABEL_40;
    case 3:
      sub_1BE04B6C4();
      v113 = v145;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v126 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        v127 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v114, v126, v127, "progressState", "requiresPushButton", v116, 2u);
        v112 = v93;
        goto LABEL_37;
      }

      v57 = v93;
      goto LABEL_40;
    case 4:
      sub_1BE04B6C4();
      v113 = v146;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v121 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        v122 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v114, v121, v122, "progressState", "requiresPasscode", v116, 2u);
        v112 = v89;
        goto LABEL_37;
      }

      v57 = v89;
      goto LABEL_40;
    case 5:
      sub_1BE04B6C4();
      v113 = v147;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v138 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        v139 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v114, v138, v139, "progressState", "pearlActive", v116, 2u);
        v112 = v85;
        goto LABEL_37;
      }

      v57 = v85;
      goto LABEL_40;
    case 6:
      sub_1BE04B6C4();
      v113 = v148;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v140 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        v141 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v114, v140, v141, "progressState", "pearlObscured", v116, 2u);
        v112 = v81;
        goto LABEL_37;
      }

      v57 = v81;
      goto LABEL_40;
    case 7:
      sub_1BE04B6C4();
      v113 = v149;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v128 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        v130 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v114, v128, v130, "progressState", "pearlPoseOutOfRangeDown", v129, 2u);
        v112 = v77;
        v116 = v129;
        goto LABEL_37;
      }

      v57 = v77;
      goto LABEL_40;
    case 8:
      v112 = v107;
      sub_1BE04B6C4();
      v113 = v151;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v115 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v116 = swift_slowAlloc();
      *v116 = 0;
      v117 = sub_1BE04CFA4();
      v118 = "biometricSuccess";
      goto LABEL_36;
    case 9:
      v112 = v106;
      sub_1BE04B6C4();
      v113 = v152;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v115 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v116 = swift_slowAlloc();
      *v116 = 0;
      v117 = sub_1BE04CFA4();
      v118 = "biometricRetry";
      goto LABEL_36;
    case 10:
      v112 = v105;
      sub_1BE04B6C4();
      v113 = v153;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v115 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v116 = swift_slowAlloc();
      *v116 = 0;
      v117 = sub_1BE04CFA4();
      v118 = "processing";
      goto LABEL_36;
    case 11:
      v112 = v104;
      sub_1BE04B6C4();
      v113 = v154;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v115 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v116 = swift_slowAlloc();
      *v116 = 0;
      v117 = sub_1BE04CFA4();
      v118 = "authorizing";
      goto LABEL_36;
    case 12:
      v112 = v103;
      sub_1BE04B6C4();
      v113 = v155;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v115 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v116 = swift_slowAlloc();
      *v116 = 0;
      v117 = sub_1BE04CFA4();
      v118 = "authorized";
      goto LABEL_36;
    case 13:
      v112 = v110;
      sub_1BE04B6C4();
      v113 = v156;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v115 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v116 = swift_slowAlloc();
      *v116 = 0;
      v117 = sub_1BE04CFA4();
      v118 = "error";
      goto LABEL_36;
    case 14:
      v112 = v109;
      sub_1BE04B6C4();
      v113 = v157;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v115 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v116 = swift_slowAlloc();
      *v116 = 0;
      v117 = sub_1BE04CFA4();
      v118 = "empty";
      goto LABEL_36;
    case 15:
      v112 = v108;
      sub_1BE04B6C4();
      v113 = v158;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v115 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v116 = swift_slowAlloc();
      *v116 = 0;
      v117 = sub_1BE04CFA4();
      v118 = "updatingPaymentOffers";
      goto LABEL_36;
    case 16:
      sub_1BE04B6C4();
      v113 = v159;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v119 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_40;
      }

      v116 = swift_slowAlloc();
      *v116 = 0;
      v120 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v114, v119, v120, "progressState", "loadingPreconfiguredInstallmentPaymentOffer", v116, 2u);
      v112 = v57;
      goto LABEL_37;
    default:
      sub_1BE04B6C4();
      v113 = v150;
      sub_1BE04CFB4();
      v114 = sub_1BE04CFD4();
      v115 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        v117 = sub_1BE04CFA4();
        v118 = "requiresBiometricID";
LABEL_36:
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v114, v115, v117, "progressState", v118, v116, 2u);
LABEL_37:
        v135 = v162;
        v134 = v163;
        v137 = v160;
        v136 = v161;
LABEL_38:
        MEMORY[0x1BFB45F20](v116, -1, -1);
        v57 = v112;
      }

      else
      {
LABEL_39:
        v57 = v112;
LABEL_40:
        v135 = v162;
        v134 = v163;
        v137 = v160;
        v136 = v161;
      }

LABEL_41:

      (*(v135 + 8))(v113, v134);
      return (*(v137 + 8))(v57, v136);
  }
}

unint64_t sub_1BDA77390(unint64_t result)
{
  if (result >= 0x11)
  {
    return 17;
  }

  return result;
}

uint64_t sub_1BDA773B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BDA7741C()
{
  if (*(*(v0 + 16) + 24) == *(v0 + 24))
  {
    return sub_1BDA75178(4, *(v0 + 32), 0, 0);
  }

  return result;
}

uint64_t sub_1BDA7746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  result = a9;
  if (a9)
  {

    swift_unknownObjectRelease();

    return sub_1BD0D4744(a13);
  }

  return result;
}

uint64_t sub_1BDA774FC()
{
  result = sub_1BE051C54();
  v1 = 16.0;
  if (result)
  {
    v1 = 20.0;
  }

  qword_1EBDAB928 = *&v1;
  return result;
}

uint64_t sub_1BDA7752C()
{
  result = sub_1BE051C54();
  v1 = 0x404A000000000000;
  if ((result & 1) == 0)
  {
    v1 = 0;
  }

  qword_1EBDAB930 = v1;
  byte_1EBDAB938 = (result & 1) == 0;
  return result;
}

uint64_t sub_1BDA77568()
{
  result = sub_1BE051C54();
  v1 = 8.0;
  if (result)
  {
    v1 = 26.0;
  }

  qword_1EBDAB940 = *&v1;
  return result;
}

void sub_1BDA77598()
{
  PKScreenScale();
  v1 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:45.0 scale:{45.0, v0}];
  [v1 setShape_];
  [v1 continuousCornerRadius];
  v3 = v2;

  qword_1EBDAB948 = v3;
}

uint64_t sub_1BDA77624()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void sub_1BDA77698()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v1 = v9[0];
  if (v9[0])
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 48);
  if (!v2 || [v2 isCancelled])
  {
    v3 = objc_allocWithZone(MEMORY[0x1E696F280]);
    v4 = sub_1BE052404();
    v5 = [v3 initWithIdentifierString_];

    if (v5)
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E696F290]) initWithMapItemIdentifier_];
      v7 = swift_allocObject();
      swift_weakInit();
      v9[4] = sub_1BDA79A90;
      v9[5] = v7;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1BD14E1D8;
      v9[3] = &block_descriptor_250;
      v8 = _Block_copy(v9);

      [v6 getMapItemWithCompletionHandler_];

      _Block_release(v8);
      v1 = *(v0 + 48);
      *(v0 + 48) = v6;
LABEL_6:
    }
  }
}

uint64_t sub_1BDA77848(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BDA778DC()
{

  v1 = OBJC_IVAR____TtCV9PassKitUIP33_FE2A8FD2BD64DB9E6104A81DA981D7FB19TileContextMapsView9ViewModel__mapItem;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BDA7799C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TileContextMapsView.ViewModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BDA779DC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v3[3];
  if (v4 || (v5 = sub_1BE053B84(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 32) == v3[4] && *(v2 + 40) == v3[5])
    {
      return 1;
    }

    else
    {

      return sub_1BE053B84();
    }
  }

  return result;
}

uint64_t sub_1BDA77A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a1;
  v89 = a2;
  v86 = a3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5D8);
  MEMORY[0x1EEE9AC00](v85, v5);
  v84 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5E0);
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v81 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37330);
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v87 = &v72 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5E8);
  v78 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v13);
  v75 = &v72 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5F0);
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v15);
  v73 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5F8);
  v72 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D600);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v72 - v24;
  v90 = a1;
  v91 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D608);
  sub_1BD0DE4F4(&qword_1EBD5D610, &qword_1EBD5D608);
  sub_1BE0504E4();
  v26 = sub_1BE04FB94();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04FB84();
  v31 = sub_1BD0DE4F4(&qword_1EBD5D618, &qword_1EBD5D600);
  v32 = MEMORY[0x1E697C750];
  sub_1BE051144();
  (*(v27 + 8))(v30, v26);
  (*(v22 + 8))(v25, v21);
  sub_1BE050234();
  v93 = v21;
  v94 = v26;
  v95 = v31;
  v96 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v73;
  sub_1BE050904();
  (*(v72 + 8))(v20, v17);
  sub_1BE0501C4();
  v35 = sub_1BE04F424();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F414();
  v93 = v17;
  v94 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v75;
  v42 = v74;
  sub_1BE0508F4();
  (*(v36 + 8))(v39, v35);
  (*(v76 + 8))(v34, v42);
  v93 = v42;
  v94 = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v77;
  sub_1BE050D24();
  (v78[1])(v41, v43);
  sub_1BE0528A4();
  v44 = v89;
  sub_1BE048964();
  v45 = sub_1BE052894();
  v46 = swift_allocObject();
  v47 = MEMORY[0x1E69E85E0];
  v46[2] = v45;
  v46[3] = v47;
  v46[4] = v88;
  v46[5] = v44;
  v48 = sub_1BE0528D4();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48, v51);
  v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v53 = &v72 - v52;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v77 = sub_1BE04EAA4();
    v78 = &v72;
    v76 = *(v77 - 8);
    MEMORY[0x1EEE9AC00](v77, v54);
    v56 = &v72 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1BE053834();

    v93 = 0xD000000000000030;
    v94 = 0x80000001BE149770;
    v92 = 104;
    v57 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v57);

    v60 = MEMORY[0x1EEE9AC00](v58, v59);
    (*(v49 + 16))(&v72 - v52, v53, v48, v60);
    sub_1BE04EA94();
    (*(v49 + 8))(v53, v48);
    v61 = v81;
    (*(v79 + 32))(v81, v87, v80);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37338);
    (*(v76 + 32))(&v61[*(v62 + 36)], v56, v77);
  }

  else
  {
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37340);
    v61 = v81;
    v64 = &v81[*(v63 + 36)];
    v65 = sub_1BE04E7B4();
    (*(v49 + 32))(&v64[*(v65 + 20)], &v72 - v52, v48);
    *v64 = &unk_1BE1130D0;
    *(v64 + 1) = v46;
    (*(v79 + 32))(v61, v87, v80);
  }

  v66 = swift_allocObject();
  v67 = v89;
  *(v66 + 16) = v88;
  *(v66 + 24) = v67;
  v68 = v84;
  (*(v82 + 32))(v84, v61, v83);
  v69 = v86;
  v70 = (v68 + *(v85 + 36));
  *v70 = 0;
  v70[1] = 0;
  v70[2] = sub_1BDA79B78;
  v70[3] = v66;
  sub_1BD0D1CDC(v68, v69);
  return sub_1BE048964();
}

uint64_t sub_1BDA7855C@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v66 = a1;
  v67 = a2;
  v77 = a3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D620);
  v63 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v3);
  v62 = &v62 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D628);
  MEMORY[0x1EEE9AC00](v70, v5);
  v73 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D630);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v76 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v74 = &v62 - v12;
  v13 = sub_1BE04CE54();
  MEMORY[0x1EEE9AC00](v13, v14);
  v64 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D638);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v62 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D640);
  MEMORY[0x1EEE9AC00](v68, v20);
  v22 = &v62 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D648);
  MEMORY[0x1EEE9AC00](v65, v23);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D650);
  v71 = *(v26 - 8);
  v72 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v69 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v62 - v31;
  sub_1BE04CE14();
  v33 = sub_1BE04CE24();
  (*(*(v33 - 8) + 56))(v19, 0, 1, v33);
  *&v95[0] = MEMORY[0x1E69E7CC0];
  sub_1BDA79B8C(&qword_1EBD5D658, MEMORY[0x1E6985CD8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D660);
  v34 = v66;
  sub_1BD0DE4F4(&qword_1EBD5D668, &qword_1EBD5D660);
  v35 = v67;
  sub_1BE053664();
  v78 = v34;
  v79 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D670);
  sub_1BDA79BDC();
  sub_1BE04CE04();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v36 = &v22[*(v68 + 36)];
  v37 = v98;
  *v36 = v97;
  *(v36 + 1) = v37;
  *(v36 + 2) = v99;
  sub_1BDA79C8C();
  sub_1BE0506F4();
  sub_1BD0DE53C(v22, &qword_1EBD5D640);
  v38 = &v25[*(v65 + 36)];
  v38[32] = 0;
  *v38 = 0u;
  *(v38 + 1) = 0u;
  sub_1BE04E554();
  sub_1BDA79D44();
  v68 = v32;
  sub_1BE050BB4();
  sub_1BD0D1D4C(v25);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v39 = *&v95[0];
  if (*&v95[0])
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    MEMORY[0x1EEE9AC00](v40, v41);
    *(&v62 - 2) = v34;
    *(&v62 - 1) = v35;
    v42 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D6B8);
    sub_1BD0DE4F4(&qword_1EBD5D6C8, &qword_1EBD5D6B8);
    v43 = v62;
    sub_1BE051704();
    v44 = v63;
    v45 = v75;
    (*(v63 + 16))(v73, v43, v75);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD5D6C0, &qword_1EBD5D620);
    v46 = v74;
    sub_1BE04F9A4();

    (*(v44 + 8))(v43, v45);
  }

  else
  {
    v47 = sub_1BE04F504();
    v88 = 1;
    sub_1BDA792F4(0, &v81);
    v91 = v83;
    v92 = v84;
    v93 = v85;
    v94 = v86;
    v89 = v81;
    v90 = v82;
    v96 = v86;
    v95[2] = v83;
    v95[3] = v84;
    v95[4] = v85;
    v95[0] = v81;
    v95[1] = v82;
    sub_1BD0DE19C(&v89, &v80, &qword_1EBD5D6B0);
    sub_1BD0DE53C(v95, &qword_1EBD5D6B0);
    *(&v87[2] + 7) = v91;
    *(&v87[3] + 7) = v92;
    *(&v87[4] + 7) = v93;
    *(&v87[5] + 7) = v94;
    *(v87 + 7) = v89;
    *(&v87[1] + 7) = v90;
    v48 = v87[3];
    v49 = v73;
    *(v73 + 49) = v87[2];
    *(v49 + 65) = v48;
    *(v49 + 81) = v87[4];
    *(v49 + 6) = *(&v87[4] + 15);
    v50 = v87[0];
    *(v49 + 33) = v87[1];
    v51 = v88;
    *v49 = v47;
    *(v49 + 1) = 0;
    v49[16] = v51;
    *(v49 + 17) = v50;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D6B8);
    sub_1BD0DE4F4(&qword_1EBD5D6C0, &qword_1EBD5D620);
    sub_1BD0DE4F4(&qword_1EBD5D6C8, &qword_1EBD5D6B8);
    v46 = v74;
    sub_1BE04F9A4();
  }

  v53 = v71;
  v52 = v72;
  v54 = *(v71 + 16);
  v56 = v68;
  v55 = v69;
  v54(v69, v68, v72);
  v57 = v76;
  sub_1BD0DE19C(v46, v76, &qword_1EBD5D630);
  v58 = v77;
  v54(v77, v55, v52);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D6D0);
  sub_1BD0DE19C(v57, &v58[*(v59 + 48)], &qword_1EBD5D630);
  sub_1BD0DE53C(v46, &qword_1EBD5D630);
  v60 = *(v53 + 8);
  v60(v56, v52);
  sub_1BD0DE53C(v57, &qword_1EBD5D630);
  return (v60)(v55, v52);
}

uint64_t sub_1BDA78F68@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D688);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v9[1])
  {
    sub_1BE04CE84();
    (*(v3 + 32))(a1, v6, v2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return (*(v3 + 56))(a1, v7, 1, v2);
}

double sub_1BDA790C8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F504();
  v15 = 1;
  sub_1BDA792F4(1, &v8);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v16 = v8;
  v17 = v9;
  v23 = v13;
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v22[0] = v8;
  v22[1] = v9;
  sub_1BD0DE19C(&v16, v7, &qword_1EBD5D6B0);
  sub_1BD0DE53C(v22, &qword_1EBD5D6B0);
  *&v14[39] = v18;
  *&v14[55] = v19;
  *&v14[71] = v20;
  *&v14[87] = v21;
  *&v14[7] = v16;
  *&v14[23] = v17;
  v3 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v3;
  *(a1 + 81) = *&v14[64];
  *(a1 + 96) = *&v14[79];
  result = *&v14[16];
  v5 = *v14;
  *(a1 + 33) = *&v14[16];
  v6 = v15;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return result;
}

uint64_t sub_1BDA791F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1BE0528A4();
  *(v4 + 24) = sub_1BE052894();
  v6 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BDA79290, v6, v5);
}

uint64_t sub_1BDA79290()
{

  sub_1BDA77698();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA792F4@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (a1)
  {
    v11 = sub_1BE051574();
    v12 = sub_1BE050324();
    KeyPath = swift_getKeyPath();
    v14 = [objc_opt_self() tertiaryLabelColor];
    v15 = sub_1BE0511C4();
    v16 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
  }

  else
  {
    v11 = 0;
    KeyPath = 0;
    v12 = 0;
    v16 = 0;
    v15 = 0;
  }

  sub_1BD0D7F18(v4, v6, v8 & 1);
  sub_1BE048C84();
  sub_1BDA79E54(v11);
  sub_1BDA79EC4(v11);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v11;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v12;
  *(a2 + 72) = v16;
  *(a2 + 80) = v15;
  sub_1BDA79EC4(v11);
  sub_1BD0DDF10(v4, v6, v8 & 1);
}

uint64_t sub_1BDA794EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2[2] == v3[2] && v2[3] == v3[3];
  if (v4 || (v5 = sub_1BE053B84(), result = 0, (v5 & 1) != 0))
  {
    if (v2[4] == v3[4] && v2[5] == v3[5])
    {
      return 1;
    }

    else
    {

      return sub_1BE053B84();
    }
  }

  return result;
}

id TileContextMapsViewHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TileContextMapsViewHost.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextMapsViewHost();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TileContextMapsViewHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextMapsViewHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BDA796D0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BDA79750(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t _s9PassKitUI23TileContextMapsViewHostC9createFor11mapsPlaceID7captionSo6UIViewCSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TileContextMapsView.ViewModel();
  v8 = swift_allocObject();
  v8[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5B8);
  sub_1BE04D874();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_1BDA79B8C(&qword_1EBD5D5C8, type metadata accessor for TileContextMapsView.ViewModel);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE04E954();
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5D0));
  v10 = sub_1BE04EAC4();

  return v10;
}

uint64_t type metadata accessor for TileContextMapsView.ViewModel()
{
  result = qword_1EBD5D5A0;
  if (!qword_1EBD5D5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA79984()
{
  sub_1BDA79A2C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BDA79A2C()
{
  if (!qword_1EBD5D5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D5B8);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5D5B0);
    }
  }
}

uint64_t sub_1BDA79ACC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BDA791F8(v2, v3, v5, v4);
}

uint64_t sub_1BDA79B8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BDA79BDC()
{
  result = qword_1EBD5D678;
  if (!qword_1EBD5D678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D670);
    sub_1BD0DE4F4(&qword_1EBD5D680, &qword_1EBD5D688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D678);
  }

  return result;
}

unint64_t sub_1BDA79C8C()
{
  result = qword_1EBD5D690;
  if (!qword_1EBD5D690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D640);
    sub_1BD0DE4F4(&qword_1EBD5D698, &qword_1EBD5D6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D690);
  }

  return result;
}

unint64_t sub_1BDA79D44()
{
  result = qword_1EBD5D6A8;
  if (!qword_1EBD5D6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D640);
    sub_1BDA79C8C();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D6A8);
  }

  return result;
}

uint64_t sub_1BDA79E54(uint64_t result)
{
  if (result)
  {
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BDA79EC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1BDA79F30()
{
  result = qword_1EBD5D6D8;
  if (!qword_1EBD5D6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D5D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D5E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D5F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D5F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D600);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD5D618, &qword_1EBD5D600);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D6D8);
  }

  return result;
}

void *sub_1BDA7A178(void *result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BD1D7488(result, v10, 1, v3);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC48);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BDA7A2D4(void *result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BD1D7948(result, v10, 1, v3);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BDA7A3D8(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1BE053704();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_1BE053704();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1BD1DED90();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_1BD5ED998(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_1BD0D45FC();
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!sub_1BE053744())
    {
      goto LABEL_11;
    }

    sub_1BD0E5E8C(0, &qword_1EBD398B8);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1BE052774();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1BE053744())
      {
        sub_1BD0E5E8C(0, &qword_1EBD398B8);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1BDA7A810(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BD1D7D24(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BDA7A95C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
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
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BDA7AB7C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BD1D94C0(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BDA7AC88(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_1BE053884();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BDA7AD84(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!(*v1 >> 62))
  {
    v6 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = sub_1BE053704();
  v7 = __OFADD__(v16, v5);
  result = v16 + v5;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1BD1DED90();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = *(v3 + 0x10);
  v10 = (*(v3 + 0x18) >> 1) - v9;
  result = sub_1BD5EDF70(&v34, (v3 + 8 * v9 + 32), v10, v4);
  if (result < v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  if (result >= 1)
  {
    v14 = *(v3 + 16);
    v7 = __OFADD__(v14, result);
    v15 = v14 + result;
    if (v7)
    {
      __break(1u);
LABEL_16:
      v19 = (v12 + 64) >> 6;
      while (1)
      {
        v20 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_38;
        }

        if (v20 >= v19)
        {
          goto LABEL_8;
        }

        v21 = *(v11 + 8 * v20);
        ++v3;
        if (v21)
        {
          v17 = (v21 - 1) & v21;
          v18 = __clz(__rbit64(v21)) | (v20 << 6);
          v3 = v20;
          goto LABEL_21;
        }
      }
    }

    *(v3 + 16) = v15;
  }

  result = v34;
  if (v13 != v10)
  {
LABEL_8:
    result = sub_1BD0D45FC();
    *v1 = v2;
    return result;
  }

LABEL_13:
  v4 = *(v3 + 16);
  v11 = v35;
  v12 = v36;
  v3 = v37;
  v33 = v35;
  if (!v38)
  {
    goto LABEL_16;
  }

  v17 = (v38 - 1) & v38;
  v18 = __clz(__rbit64(v38)) | (v37 << 6);
  v19 = (v36 + 64) >> 6;
LABEL_21:
  v22 = result;
  v23 = *(*(result + 56) + 8 * v18);
  v24 = v23;
  v25 = v23;
  v26 = v33;
  while (1)
  {
LABEL_23:
    if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = v25;
      sub_1BE052774();
      v25 = v32;
      v26 = v33;
    }

    v2 = *v1;
    v27 = *v1 & 0xFFFFFFFFFFFFFF8;
    v28 = *(v27 + 0x18) >> 1;
    if (v4 < v28)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
  }

  while (1)
  {
    *(v27 + 32 + 8 * v4++) = v25;
    if (!v17)
    {
      break;
    }

    result = v22;
LABEL_33:
    v31 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = *(*(result + 56) + ((v3 << 9) | (8 * v31)));
    v26 = v33;
    if (v4 == v28)
    {
      v4 = v28;
      *(v27 + 16) = v28;
      goto LABEL_23;
    }
  }

  v29 = v3;
  result = v22;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v19)
    {
      *(v27 + 16) = v4;
      goto LABEL_8;
    }

    v17 = *(v26 + 8 * v30);
    ++v29;
    if (v17)
    {
      v3 = v30;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1BDA7B04C(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1BE053704();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1BE053704();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BDA7B14C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BD5F0648(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BDA7C344(v6);
  return sub_1BE0538D4();
}

uint64_t sub_1BDA7B2C8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BDA7B328(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI29WalletPrivacySettingsProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BD3F0C10;
}

void sub_1BDA7B434()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v33 = &v33 - v7;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v33 - v11;
  v37 = MEMORY[0x1E69E7CC0];
  v13 = *MEMORY[0x1E69B80F0];
  v35 = *(v1 + 104);
  v35(&v33 - v11, v13, v0, v10);
  v14 = PKPassKitBundle();
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  v16 = objc_opt_self();
  sub_1BE04B6F4();

  v17 = *(v1 + 8);
  v36 = v1 + 8;
  v34 = v17;
  v17(v12, v0);
  v18 = sub_1BE052404();

  v19 = [v16 groupSpecifierWithName_];

  if (!v19)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  MEMORY[0x1BFB3F7A0]();
  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v21 = sub_1BDA7B89C();
  v22 = v0;
  if (!v21)
  {
LABEL_12:
    (v35)(v4, v13, v22);
    v29 = PKPassKitBundle();
    if (v29)
    {
      v30 = v29;
      sub_1BE04B6F4();

      v34(v4, v22);
      v31 = sub_1BE052404();

      v32 = *MEMORY[0x1E69C5900];
      [v20 setProperty:v31 forKey:v32];

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v23 = v21;
  if (v21 >> 62)
  {
    v24 = sub_1BE053704();
  }

  else
  {
    v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 < 1)
  {

    goto LABEL_12;
  }

  v25 = v33;
  (v35)(v33, v13, v22);
  v26 = PKPassKitBundle();
  if (v26)
  {
    v27 = v26;
    sub_1BE04B6F4();

    v34(v25, v22);
    v28 = sub_1BE052404();

    [v20 setProperty:v28 forKey:*MEMORY[0x1E69C5900]];

    sub_1BDA7B04C(v23, sub_1BD1DED90, sub_1BDA7E928);
LABEL_14:

    return;
  }

LABEL_19:
  __break(1u);
}

id sub_1BDA7B89C()
{
  result = [objc_opt_self() allAuthorizations];
  if (result)
  {
    v1 = result;
    sub_1BD0E5E8C(0, &qword_1EBD5D768);
    v2 = sub_1BE052744();

    v16 = MEMORY[0x1E69E7CC0];
    if (v2 >> 62)
    {
LABEL_19:
      v3 = sub_1BE053704();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    while (v3 != v4)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB40900](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = [v5 bundleIdentifier];
      v9 = sub_1BE052434();
      v11 = v10;

      sub_1BDA7BE54(v9, v11);
      v13 = v12;

      ++v4;
      if (v13)
      {
        MEMORY[0x1BFB3F7A0](v14);
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v4 = v7;
      }
    }

    v15 = sub_1BE048C84();
    v16 = sub_1BD6D3E90(v15);
    sub_1BDA7B14C(&v16);

    return v16;
  }

  return result;
}

void *sub_1BDA7BAC8(void *a1, void *a2)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE052404();
  v11 = [a2 propertyForKey_];

  if (v11)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      v12 = [a1 BOOLValue];
      v13 = objc_opt_self();
      v14 = sub_1BE052404();

      [v13 setAuthorizationForCapability:0 granted:v12 bundleIdentifier:v14];

      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result provider:v2 specifierDidChange:a2];
        return swift_unknownObjectRelease();
      }

      return result;
    }
  }

  else
  {
    sub_1BD0DE53C(v22, &qword_1EBD3EC90);
  }

  sub_1BE04D1C4();
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C34();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1BD026000, v16, v17, "Expected bundleID property on specifier", v18, 2u);
    MEMORY[0x1BFB45F20](v18, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1BDA7BE54(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1BE048C84();
  v8 = sub_1BD469048(a1, a2, 0);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 localizedName];
    if (!v10)
    {
      sub_1BE052434();
      v10 = sub_1BE052404();
    }

    v11 = [objc_opt_self() preferenceSpecifierNamed:v10 target:v2 set:sel_setBackgroundAddAuthorization:: get:sel_backgroundAddAuthorizationWithSpecifier_ detail:0 cell:6 edit:0];

    if (v11)
    {
      v12 = sub_1BE052404();
      v13 = sub_1BE052404();
      [v11 setProperty:v12 forKey:v13];

      v14 = sub_1BE052404();
      [v11 setProperty:v14 forKey:*MEMORY[0x1E69C5948]];

      v15 = sub_1BE052824();
      v16 = *MEMORY[0x1E69C5950];
      [v11 setProperty:v15 forKey:v16];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id WalletPrivacySettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalletPrivacySettingsProvider.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalletPrivacySettingsProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WalletPrivacySettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalletPrivacySettingsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BDA7C344(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BE053B14();
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
        sub_1BD0E5E8C(0, &qword_1EBD46B20);
        v6 = sub_1BE0527B4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1BDA7C5EC(v8, v9, a1, v4);
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
    return sub_1BDA7C458(0, v2, 1, a1);
  }

  return result;
}

char *sub_1BDA7C458(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = &result[-a3];
    v6 = &selRef_metricsForTextStyle_;
LABEL_6:
    v25 = v4;
    v26 = a3;
    v7 = *(v27 + 8 * a3);
    v24 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      result = [v9 v6[77]];
      if (!result)
      {
        break;
      }

      v11 = result;
      v12 = sub_1BE052434();
      v14 = v13;

      result = [v10 v6[77]];
      if (!result)
      {
        __break(1u);
        break;
      }

      v15 = result;
      v16 = sub_1BE052434();
      v18 = v17;

      if (v12 == v16 && v14 == v18)
      {

        v6 = &selRef_metricsForTextStyle_;
LABEL_5:
        a3 = v26 + 1;
        v4 = v25 + 8;
        v5 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v20 = sub_1BE053B84();

      v6 = &selRef_metricsForTextStyle_;
      if (v20)
      {
        if (!v27)
        {
          goto LABEL_20;
        }

        v21 = *v4;
        v7 = *(v4 + 8);
        *v4 = v7;
        *(v4 + 8) = v21;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

void sub_1BDA7C5EC(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v8 = &selRef_metricsForTextStyle_;
    while (1)
    {
      v9 = v6;
      v10 = v6 + 1;
      if (v6 + 1 >= v5)
      {
        goto LABEL_38;
      }

      v126 = v5;
      v119 = v7;
      v121 = v6;
      v4 = *a3;
      v11 = *(*a3 + 8 * v6);
      v12 = *(*a3 + 8 * v10);
      v13 = v11;
      v14 = [v12 v8[77]];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v6 = sub_1BE052434();
      v17 = v16;

      v18 = [v13 v8[77]];
      if (!v18)
      {
        goto LABEL_161;
      }

      v19 = v18;
      v20 = sub_1BE052434();
      v22 = v21;

      if (v6 == v20 && v17 == v22)
      {
        v132 = 0;
      }

      else
      {
        v132 = sub_1BE053B84();
      }

      v9 = v121;
      v10 = v121 + 2;
      if (v121 + 2 >= v126)
      {
        v8 = &selRef_metricsForTextStyle_;
        goto LABEL_29;
      }

      v129 = v121 + 2;
      v4 += 8 * v121 + 16;
      v8 = &selRef_metricsForTextStyle_;
      while (1)
      {
        v25 = *(v4 - 8);
        v26 = *v4;
        v27 = v25;
        v28 = [v26 v8[77]];
        if (!v28)
        {
          goto LABEL_155;
        }

        v29 = v28;
        v6 = sub_1BE052434();
        v31 = v30;

        v32 = [v27 v8[77]];
        if (!v32)
        {
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        v33 = v32;
        v34 = sub_1BE052434();
        v36 = v35;

        if (v6 == v34 && v31 == v36)
        {
          break;
        }

        v24 = sub_1BE053B84();

        if ((v132 ^ v24))
        {
          v8 = &selRef_metricsForTextStyle_;
          v10 = v129;
LABEL_28:
          v9 = v121;
LABEL_29:
          v7 = v119;
          if (v132)
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_16:
        v4 += 8;
        ++v129;
        v10 = v126;
        v8 = &selRef_metricsForTextStyle_;
        if (v126 == v129)
        {
          goto LABEL_28;
        }
      }

      if ((v132 & 1) == 0)
      {
        goto LABEL_16;
      }

      v7 = v119;
      v9 = v121;
      v8 = &selRef_metricsForTextStyle_;
      v10 = v129;
LABEL_30:
      if (v10 < v9)
      {
        goto LABEL_147;
      }

      if (v9 < v10)
      {
        v38 = 8 * v10 - 8;
        v39 = 8 * v9;
        v40 = v10;
        v41 = v9;
        do
        {
          if (v41 != --v10)
          {
            v42 = *a3;
            if (!*a3)
            {
              goto LABEL_157;
            }

            v43 = *(v42 + v39);
            *(v42 + v39) = *(v42 + v38);
            *(v42 + v38) = v43;
          }

          ++v41;
          v38 -= 8;
          v39 += 8;
        }

        while (v41 < v10);
        v10 = v40;
      }

LABEL_38:
      v44 = a3[1];
      if (v10 >= v44)
      {
        v6 = v10;
        if (v10 < v9)
        {
          goto LABEL_145;
        }

        goto LABEL_49;
      }

      if (__OFSUB__(v10, v9))
      {
        goto LABEL_146;
      }

      v45 = v10;
      if (v10 - v9 >= a4)
      {
LABEL_46:
        v6 = v10;
        if (v10 < v9)
        {
          goto LABEL_145;
        }

        goto LABEL_49;
      }

      v46 = v9 + a4;
      if (__OFADD__(v9, a4))
      {
        goto LABEL_148;
      }

      if (v46 >= v44)
      {
        v46 = a3[1];
      }

      if (v46 < v9)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v10 == v46)
      {
        goto LABEL_46;
      }

      v120 = v7;
      v122 = v9;
      v133 = *a3;
      v4 = *a3 + 8 * v10 - 8;
      v94 = v9 - v10;
      v124 = v46;
      do
      {
        v130 = v45;
        v95 = *(v133 + 8 * v45);
        v125 = v94;
        v127 = v4;
        while (1)
        {
          v96 = *v4;
          v97 = v95;
          v98 = v96;
          v99 = [v97 v8[77]];
          if (!v99)
          {
            goto LABEL_152;
          }

          v100 = v99;
          v101 = sub_1BE052434();
          v103 = v102;

          v104 = [v98 v8[77]];
          if (!v104)
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          v105 = v104;
          v106 = sub_1BE052434();
          v108 = v107;

          if (v101 == v106 && v103 == v108)
          {
            break;
          }

          v110 = sub_1BE053B84();

          v8 = &selRef_metricsForTextStyle_;
          if ((v110 & 1) == 0)
          {
            goto LABEL_100;
          }

          if (!v133)
          {
            goto LABEL_153;
          }

          v111 = *v4;
          v95 = *(v4 + 8);
          *v4 = v95;
          *(v4 + 8) = v111;
          v4 -= 8;
          if (__CFADD__(v94++, 1))
          {
            goto LABEL_100;
          }
        }

        v8 = &selRef_metricsForTextStyle_;
LABEL_100:
        v45 = v130 + 1;
        v4 = v127 + 8;
        v94 = v125 - 1;
      }

      while (v130 + 1 != v124);
      v6 = v124;
      v7 = v120;
      v9 = v122;
      if (v124 < v122)
      {
        goto LABEL_145;
      }

LABEL_49:
      v47 = v7;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = v47;
      }

      else
      {
        v7 = sub_1BD1D7844(0, *(v47 + 2) + 1, 1, v47);
      }

      v4 = *(v7 + 2);
      v48 = *(v7 + 3);
      v49 = v4 + 1;
      if (v4 >= v48 >> 1)
      {
        v7 = sub_1BD1D7844((v48 > 1), v4 + 1, 1, v7);
      }

      *(v7 + 2) = v49;
      v50 = &v7[16 * v4];
      *(v50 + 4) = v9;
      *(v50 + 5) = v6;
      v51 = *a1;
      if (!*a1)
      {
        goto LABEL_159;
      }

      if (v4)
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
            v53 = *(v7 + 4);
            v54 = *(v7 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_68:
            if (v56)
            {
              goto LABEL_134;
            }

            v69 = &v7[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_137;
            }

            v75 = &v7[16 * v52 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_141;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v79 = &v7[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_82:
          if (v74)
          {
            goto LABEL_136;
          }

          v82 = &v7[16 * v52];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_139;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_89:
          v4 = v52 - 1;
          if (v52 - 1 >= v49)
          {
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
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          if (!*a3)
          {
            goto LABEL_154;
          }

          v90 = v7;
          v91 = *&v7[16 * v4 + 32];
          v92 = *&v7[16 * v52 + 40];
          sub_1BDA7CE5C((*a3 + 8 * v91), (*a3 + 8 * *&v7[16 * v52 + 32]), (*a3 + 8 * v92), v51);
          if (v131)
          {
            goto LABEL_128;
          }

          if (v92 < v91)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_1BD5ED6C8(v90);
          }

          if (v4 >= *(v90 + 2))
          {
            goto LABEL_131;
          }

          v93 = &v90[16 * v4];
          *(v93 + 4) = v91;
          *(v93 + 5) = v92;
          sub_1BD5ED63C(v52);
          v7 = v90;
          v49 = *(v90 + 2);
          if (v49 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = &v7[16 * v49 + 32];
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_132;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_133;
        }

        v64 = &v7[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_135;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_138;
        }

        if (v68 >= v60)
        {
          v86 = &v7[16 * v52 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_142;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_68;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_117;
      }
    }

LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_117:
  v6 = *a1;
  if (*a1)
  {
    v4 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = v4;
    }

    else
    {
LABEL_150:
      v113 = sub_1BD5ED6C8(v4);
    }

    v4 = *(v113 + 2);
    if (v4 < 2)
    {
LABEL_128:

      return;
    }

    while (*a3)
    {
      v114 = *&v113[16 * v4];
      v115 = v113;
      v116 = *&v113[16 * v4 + 24];
      sub_1BDA7CE5C((*a3 + 8 * v114), (*a3 + 8 * *&v113[16 * v4 + 16]), (*a3 + 8 * v116), v6);
      if (v131)
      {
        goto LABEL_128;
      }

      if (v116 < v114)
      {
        goto LABEL_143;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_1BD5ED6C8(v115);
      }

      if (v4 - 2 >= *(v115 + 2))
      {
        goto LABEL_144;
      }

      v117 = &v115[16 * v4];
      *v117 = v114;
      *(v117 + 1) = v116;
      sub_1BD5ED63C(v4 - 1);
      v113 = v115;
      v4 = *(v115 + 2);
      if (v4 <= 1)
      {
        goto LABEL_128;
      }
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

LABEL_162:
  __break(1u);
}

uint64_t sub_1BDA7CE5C(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    v13 = __dst;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v61 = &v4[v8];
    if (v6 >= 8 && v12 < v5)
    {
      v14 = v12;
      v15 = &selRef_metricsForTextStyle_;
      v55 = v5;
      while (1)
      {
        v57 = v14;
        v16 = *v4;
        v17 = *v14;
        v18 = v16;
        result = [v17 v15[77]];
        if (!result)
        {
          goto LABEL_58;
        }

        v20 = result;
        v59 = v4;
        v21 = sub_1BE052434();
        v23 = v22;

        v24 = v15;
        result = [v18 v15[77]];
        if (!result)
        {
          goto LABEL_59;
        }

        v25 = result;
        v26 = sub_1BE052434();
        v28 = v27;

        if (v21 == v26 && v23 == v28)
        {
          break;
        }

        v30 = sub_1BE053B84();

        if ((v30 & 1) == 0)
        {
          goto LABEL_22;
        }

        v31 = v55;
        v32 = v57;
        v14 = v57 + 1;
        v4 = v59;
        v15 = v24;
        if (v13 != v57)
        {
          goto LABEL_23;
        }

LABEL_24:
        ++v13;
        if (v4 >= v61 || v14 >= v31)
        {
          goto LABEL_26;
        }
      }

LABEL_22:
      v14 = v57;
      v32 = v59;
      v4 = v59 + 1;
      v31 = v55;
      v15 = v24;
      if (v13 == v59)
      {
        goto LABEL_24;
      }

LABEL_23:
      *v13 = *v32;
      goto LABEL_24;
    }

LABEL_26:
    a2 = v13;
    goto LABEL_52;
  }

  if (__src != a2 || &a2[v11] <= __src)
  {
    v33 = a2;
    memmove(__src, a2, 8 * v11);
    a2 = v33;
  }

  v61 = &v4[v11];
  if (v9 < 8 || a2 <= __dst)
  {
LABEL_52:
    if (a2 != v4 || a2 >= (v4 + ((v61 - v4 + (v61 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, v4, 8 * (v61 - v4));
    }

    return 1;
  }

  v34 = &selRef_metricsForTextStyle_;
  v60 = v4;
LABEL_33:
  v58 = a2;
  v35 = a2 - 1;
  v36 = v61;
  v54 = a2 - 1;
  while (1)
  {
    v56 = v5;
    v37 = *--v36;
    v38 = *v35;
    v39 = v37;
    v40 = v38;
    result = [v39 v34[77]];
    if (!result)
    {
      break;
    }

    v41 = result;
    v42 = sub_1BE052434();
    v44 = v43;

    v45 = v34;
    result = [v40 v34[77]];
    if (!result)
    {
      goto LABEL_57;
    }

    v46 = result;
    v47 = sub_1BE052434();
    v49 = v48;

    if (v42 == v47 && v44 == v49)
    {

      v52 = v56;
      v5 = v56 - 1;
      v34 = v45;
    }

    else
    {
      v51 = sub_1BE053B84();

      v52 = v56;
      v5 = v56 - 1;
      v34 = v45;
      if (v51)
      {
        if (v56 != v58)
        {
          *v5 = *v54;
        }

        v4 = v60;
        if (v61 <= v60 || (a2 = v54, v54 <= __dst))
        {
          a2 = v54;
          goto LABEL_52;
        }

        goto LABEL_33;
      }
    }

    v35 = v54;
    if (v61 != v52)
    {
      *v5 = *v36;
    }

    v61 = v36;
    if (v36 <= v60)
    {
      v61 = v36;
      a2 = v58;
      v4 = v60;
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1BDA7D288(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D6F0, &qword_1EBD5D6E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D6E8);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD43450);
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

uint64_t sub_1BDA7D428(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D700, &qword_1EBD5D6F8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D6F8);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD45968);
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

uint64_t sub_1BDA7D5C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D730, &qword_1EBD38868);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38868);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD406E0);
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

uint64_t sub_1BDA7D768(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D778, &unk_1EBD54D90);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54D90);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
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

uint64_t sub_1BDA7D908(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D780, &qword_1EBD4D9A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9A0);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD390A8);
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

uint64_t sub_1BDA7DAA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D750, &qword_1EBD3C738);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C738);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD40650);
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

uint64_t sub_1BDA7DC48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D740, &qword_1EBD416B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416B0);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD45650);
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

uint64_t sub_1BDA7DDE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D728, &qword_1EBD50270);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50270);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD43FC8);
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

uint64_t sub_1BDA7DF88(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D710, &qword_1EBD5D708);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D708);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD444C0);
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

uint64_t sub_1BDA7E128(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D738, &qword_1EBD40E70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD456C0);
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

uint64_t sub_1BDA7E2C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D748, &qword_1EBD49E28);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E28);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD49E48);
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

uint64_t sub_1BDA7E468(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D770, &qword_1EBD51308);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51308);
            v9 = sub_1BD3F5888(v13, i, a3);
            v11 = *v10;
            sub_1BE048964();
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
        type metadata accessor for PeerPaymentGroupRecipient(0);
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

uint64_t sub_1BDA7E5F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D720, &qword_1EBD3BD10);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD10);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &unk_1EBD456F0);
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

uint64_t sub_1BDA7E798(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D718, &unk_1EBD5BB70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB70);
            v9 = sub_1BD3F5910(v13, i, a3);
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
        type metadata accessor for _AllowedValue();
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

uint64_t sub_1BDA7E928(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BE053704();
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
      result = sub_1BE053704();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BDA7F178(&qword_1EBD5D760, &qword_1EBD5D758);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D758);
            v9 = sub_1BD3F5808(v13, i, a3);
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
        sub_1BD0E5E8C(0, &qword_1EBD46B20);
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

uint64_t sub_1BDA7EAC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_1BE053704();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_1BD1DED90();
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_1BDA7EBDC(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v28 - v9;
  v11 = sub_1BE052404();
  v12 = [a1 propertyForKey_];

  if (v12)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (!*(&v30 + 1))
  {
    sub_1BD0DE53C(v31, &qword_1EBD3EC90);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1BE04D1C4();
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C34();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BD026000, v19, v20, "Expected bundleID property on specifier", v21, 2u);
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    goto LABEL_16;
  }

  v14 = v28[0];
  v13 = v28[1];
  v15 = objc_opt_self();
  v16 = sub_1BE052404();
  v17 = [v15 authorizationStatusForCapability:0 bundleIdentifier:v16];

  if (v17 + 1 < 2 || v17 == 2)
  {

LABEL_16:
    v18 = 0;
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if (v17 != 1)
  {
    sub_1BE04D1C4();
    sub_1BE048C84();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C34();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v31[0] = v26;
      *v25 = 134218242;
      *(v25 + 4) = v17;
      *(v25 + 12) = 2080;
      v27 = sub_1BD123690(v14, v13, v31);

      *(v25 + 14) = v27;
      _os_log_impl(&dword_1BD026000, v23, v24, "Unhandled authorization status %ld for bundle %s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1BFB45F20](v26, -1, -1);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v10, v2);
    goto LABEL_16;
  }

  v18 = 1;
  return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
}

uint64_t sub_1BDA7F178(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1BDA7F1D0()
{
  result = qword_1EBD5D788;
  if (!qword_1EBD5D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D788);
  }

  return result;
}

unint64_t sub_1BDA7F224()
{
  result = qword_1EBD5D790;
  if (!qword_1EBD5D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D790);
  }

  return result;
}

uint64_t sub_1BDA7F2AC()
{
  v0 = sub_1BE048EA4();
  __swift_allocate_value_buffer(v0, qword_1EBDAB968);
  v1 = __swift_project_value_buffer(v0, qword_1EBDAB968);
  v2 = *MEMORY[0x1E695A598];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

id sub_1BDA7F334()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v19 - v2;
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04A3B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  if ([v14 contactlessInterfaceCanBePresentedFromSource_])
  {
    result = [v14 sharedInstance];
    if (result)
    {
      v16 = result;
      [result presentContactlessInterfaceForDefaultPassFromSource:2 completion:0];

      return sub_1BE048774();
    }

    __break(1u);
    goto LABEL_9;
  }

  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  sub_1BE04A364();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  (*(v5 + 32))(v8, v3, v4);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04A9C4();
    [v17 openSensitiveURL:v18 withOptions:0];

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
    return sub_1BE048774();
  }

LABEL_10:
  __break(1u);
  return result;
}

void (*sub_1BDA7F664(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BE048864();
  return sub_1BD5191F0;
}

unint64_t sub_1BDA7F6DC()
{
  result = qword_1EBD5D798;
  if (!qword_1EBD5D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D798);
  }

  return result;
}

unint64_t sub_1BDA7F734()
{
  result = qword_1EBD5D7A0;
  if (!qword_1EBD5D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7A0);
  }

  return result;
}

unint64_t sub_1BDA7F78C()
{
  result = qword_1EBD5D7A8;
  if (!qword_1EBD5D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7A8);
  }

  return result;
}

uint64_t sub_1BDA7F898()
{
  sub_1BDA7F334();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA7F8FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BDA80308();
  *a1 = result;
  return result;
}

uint64_t sub_1BDA7F924(uint64_t a1)
{
  v2 = sub_1BDA7F6DC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BDA7F994(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD000000000000013, 0x80000001BE149840);
}

uint64_t sub_1BDA7FA08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D818);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEB8) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B69E0;
  sub_1BE048B84();
  v3 = sub_1BD1AED20(v2);
  swift_setDeallocating();
  sub_1BDA802A0(v2 + v1);
  result = swift_deallocClassInstance();
  qword_1EBDAB998 = v3;
  return result;
}

unint64_t sub_1BDA7FB10()
{
  result = qword_1EBD5D7B0;
  if (!qword_1EBD5D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7B0);
  }

  return result;
}

uint64_t sub_1BDA7FB64()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BDA7FBC8()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BDA7FC14@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1BE053A44();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1BDA7FC84()
{
  result = qword_1EBD5D7B8;
  if (!qword_1EBD5D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7B8);
  }

  return result;
}

unint64_t sub_1BDA7FCDC()
{
  result = qword_1EBD5D7C0;
  if (!qword_1EBD5D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7C0);
  }

  return result;
}

unint64_t sub_1BDA7FD34()
{
  result = qword_1EBD5D7C8;
  if (!qword_1EBD5D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7C8);
  }

  return result;
}

unint64_t sub_1BDA7FD88()
{
  result = qword_1EBD5D7D0;
  if (!qword_1EBD5D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7D0);
  }

  return result;
}

unint64_t sub_1BDA7FDDC()
{
  result = qword_1EBD5D7D8;
  if (!qword_1EBD5D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7D8);
  }

  return result;
}

unint64_t sub_1BDA7FE34()
{
  result = qword_1EBD5D7E0;
  if (!qword_1EBD5D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7E0);
  }

  return result;
}

uint64_t sub_1BDA7FEC0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_1BDA7FFDC()
{
  result = qword_1EBD5D7E8;
  if (!qword_1EBD5D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7E8);
  }

  return result;
}

uint64_t sub_1BDA80030(uint64_t a1)
{
  v2 = sub_1BDA7FFDC();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BDA80080()
{
  result = qword_1EBD5D7F0;
  if (!qword_1EBD5D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7F0);
  }

  return result;
}

unint64_t sub_1BDA800D8()
{
  result = qword_1EBD5D7F8;
  if (!qword_1EBD5D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D7F8);
  }

  return result;
}

unint64_t sub_1BDA80130()
{
  result = qword_1EBD5D800;
  if (!qword_1EBD5D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D800);
  }

  return result;
}

uint64_t sub_1BDA80184()
{
  if (qword_1EBD370D0 != -1)
  {
    swift_once();
  }

  return sub_1BE048C84();
}

uint64_t sub_1BDA801E0()
{
  sub_1BDA7FE34();

  return sub_1BE048E14();
}

uint64_t sub_1BDA802A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BDA80308()
{
  v22 = sub_1BE048D74();
  v0 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v22 - v14;
  v16 = sub_1BE04A884();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D820);
  sub_1BE04A864();
  (*(v17 + 56))(v15, 1, 1, v16);
  v23 = 1;
  v19 = sub_1BE048654();
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v0 + 104))(v3, *MEMORY[0x1E695A500], v22);
  sub_1BDA7FFDC();
  return sub_1BE0488A4();
}

id sub_1BDA80610()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  v29[0] = 1021;
  sub_1BE0537C4();
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v6, v2);
    v13 = MEMORY[0x1E69E6158];
    *(inited + 96) = MEMORY[0x1E69E6158];
    *(inited + 72) = v10;
    *(inited + 80) = v12;
    v14 = sub_1BD1AB16C(inited);
    swift_setDeallocating();
    sub_1BD4124EC(inited + 32);
    v15 = v1[1];
    if (v15)
    {
      v16 = *v1;
      *&v27 = 2;
      sub_1BE048C84();
      sub_1BE0537C4();
      v28 = v13;
      *&v27 = v16;
      *(&v27 + 1) = v15;
      sub_1BD1B6140(&v27, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v14;
      sub_1BD1DAFB0(v26, v29, isUniquelyReferenced_nonNull_native);
      sub_1BD149CE8(v29);
      v14 = v25;
    }

    v18 = v1[3];
    if (v18)
    {
      v19 = v1[2];
      *&v27 = 1037;
      sub_1BE048C84();
      sub_1BE0537C4();
      v28 = v13;
      *&v27 = v19;
      *(&v27 + 1) = v18;
      sub_1BD1B6140(&v27, v26);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v25 = v14;
      sub_1BD1DAFB0(v26, v29, v20);
      sub_1BD149CE8(v29);
      v14 = v25;
    }

    v21 = v1[5];
    if (v21)
    {
      v22 = v1[4];
      *&v27 = 1031;
      sub_1BE048C84();
      sub_1BE0537C4();
      v28 = v13;
      *&v27 = v22;
      *(&v27 + 1) = v21;
      sub_1BD1B6140(&v27, v26);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v25 = v14;
      sub_1BD1DAFB0(v26, v29, v23);
      sub_1BD149CE8(v29);
      return v25;
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA80950()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BDA809C4(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1BDA809E8, 0, 0);
}

uint64_t sub_1BDA809E8()
{
  v1 = *(v0 + 160);
  if (*(v0 + 192))
  {
    v2 = 1025;
  }

  else
  {
    v2 = 2;
  }

  v3 = OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context;
  if ([*(v1 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context) canEvaluatePolicy:v2 error:0])
  {
    v4 = *(v1 + v3);
    *(v0 + 168) = v4;
    v5 = v4;
    sub_1BDA80610();
    v6 = sub_1BE052224();
    *(v0 + 176) = v6;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1BDA80BD8;
    v7 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D848);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BDA80F68;
    *(v0 + 104) = &block_descriptor_251;
    *(v0 + 112) = v7;
    [v5 evaluatePolicy:v2 options:v6 reply:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1BDA80BD8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1BDA80E24;
  }

  else
  {
    v2 = sub_1BDA80CE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BDA80CE8()
{
  v1 = *(v0 + 176);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BD2605F4(*(v0 + 80));
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BDA80E24()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  swift_willThrow();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 0;
  sub_1BE048964();
  sub_1BE04D8C4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v0 + 184);
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BD2605F4(*(v0 + 80));
    swift_unknownObjectRelease();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BDA80F68(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_1BE052244();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1BDA81064()
{
  v1 = OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context;
  [*(v0 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context) invalidate];
  v2 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  v3 = *(v0 + v1);
  *(v0 + v1) = v2;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BD2605F4(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BDA8117C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel__authenticated;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BD0D4534(v0 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceAuthenticationModel()
{
  result = qword_1EBD5D838;
  if (!qword_1EBD5D838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA81298()
{
  sub_1BD1E1120();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BDA81350@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DeviceAuthenticationModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

char *sub_1BDA81390(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  __asm { FMOV            V0.2D, #1.0 }

  *&v4[OBJC_IVAR___PKStyledMicaView_originalAnimationViewSize] = _Q0;
  v13 = OBJC_IVAR___PKStyledMicaView_layerColorConfigurationSets;
  v14 = MEMORY[0x1E69E7CC0];
  *&v4[v13] = sub_1BD1ABCFC(MEMORY[0x1E69E7CC0]);
  *&v4[OBJC_IVAR___PKMicaView_package] = 0;
  *&v4[OBJC_IVAR___PKMicaView_availableStates] = v14;
  v15 = OBJC_IVAR___PKMicaView_namedLayers;
  *&v4[v15] = sub_1BD1ABEBC(v14);
  v30.receiver = v4;
  v30.super_class = type metadata accessor for MicaView();
  v16 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BDA83478(a1, a2);

  v17 = v16;
  v18 = [v17 layer];
  [v18 bounds];
  v20 = v19;
  v22 = v21;

  v23 = &v17[OBJC_IVAR___PKStyledMicaView_originalAnimationViewSize];
  *v23 = v20;
  *(v23 + 1) = v22;
  [v17 setContentMode_];
  [v17 setClipsToBounds_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C78);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BE0B6CA0;
  v25 = sub_1BE04D2A4();
  v26 = MEMORY[0x1E69DC0F8];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  v27 = sub_1BE04D294();
  v28 = MEMORY[0x1E69DC0F0];
  *(v24 + 48) = v27;
  *(v24 + 56) = v28;
  sub_1BE052F94();

  swift_unknownObjectRelease();

  return v17;
}

void sub_1BDA815AC()
{
  v1 = [v0 layer];
  v2 = [v1 sublayers];

  if (v2)
  {
    sub_1BD84F9F0();
    v3 = sub_1BE052744();

    if (v3 >> 62)
    {
      if (sub_1BE053704())
      {
LABEL_4:
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1BFB40900](0, v3);
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v4 = *(v3 + 32);
        }

        v5 = v4;

        v7 = *&v0[OBJC_IVAR___PKStyledMicaView_originalAnimationViewSize];
        v6 = *&v0[OBJC_IVAR___PKStyledMicaView_originalAnimationViewSize + 8];
        [v0 bounds];
        v9 = v8;
        v11 = v10;
        v12 = [v0 contentMode];
        if (v12)
        {
          if (v12 == 1)
          {
            v13 = v9 / v7;
            if (v11 / v6 < v9 / v7)
            {
              v13 = v11 / v6;
            }
          }

          else
          {
            if (v12 != 2)
            {
              v14 = v7;
              v15 = v6;
              goto LABEL_18;
            }

            v13 = v9 / v7;
            if (v9 / v7 <= v11 / v6)
            {
              v13 = v11 / v6;
            }
          }

          v14 = v7 * v13;
          v15 = v6 * v13;
        }

        else
        {
          v14 = v9;
          v15 = v11;
        }

LABEL_18:
        v16 = [v0 contentMode];
        if (v16 > 0xC)
        {
          goto LABEL_22;
        }

        v17 = 0.0;
        if (((1 << v16) & 0x620) != 0)
        {
          goto LABEL_23;
        }

        if (((1 << v16) & 0x1840) != 0)
        {
          v17 = v11 - v15;
        }

        else
        {
LABEL_22:
          v17 = (v11 - v15) * 0.5;
        }

LABEL_23:
        v18 = [v0 contentMode];
        if (v18 <= 0xC)
        {
          v19 = 0.0;
          if (((1 << v18) & 0xA80) != 0)
          {
LABEL_28:
            CATransform3DMakeScale(&v20, v14 / v7, -v15 / v6, 1.0);
            [v5 setTransform_];
            [v5 setFrame_];

            return;
          }

          if (((1 << v18) & 0x1500) != 0)
          {
            v19 = v9 - v14;
            goto LABEL_28;
          }
        }

        v19 = (v9 - v14) * 0.5;
        goto LABEL_28;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }
}

void sub_1BDA81874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v100 = (v5 + 63) >> 6;
  sub_1BE048C84();
  v8 = 0;
  v98 = v4;
  v99 = v2;
LABEL_5:
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v100)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v8;
    if (v7)
    {
      v8 = v9;
LABEL_10:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = (*(a1 + 48) + ((v8 << 10) | (16 * v10)));
      v13 = *v11;
      v12 = v11[1];
      v14 = OBJC_IVAR___PKMicaView_namedLayers;
      swift_beginAccess();
      v15 = *(v3 + v14);
      if (*(v15 + 16))
      {
        sub_1BE048C84();
        sub_1BE048C84();
        v16 = sub_1BD148F70(v13, v12);
        v18 = v17;

        if (v18)
        {
          v19 = *(*(v15 + 56) + 8 * v16);
          sub_1BE048C84();

          v102 = v19;
          if (v19 >> 62)
          {
            v20 = sub_1BE053704();
            if (!v20)
            {
              goto LABEL_80;
            }

LABEL_14:
            v21 = 0;
            v128 = v19 & 0xFFFFFFFFFFFFFF8;
            v129 = v19 & 0xC000000000000001;
            v127 = v19 + 32;
            v106 = v20;
            v101 = v7;
            while (2)
            {
              if (v129)
              {
                v22 = MEMORY[0x1BFB40900](v21, v102);
              }

              else
              {
                if (v21 >= *(v128 + 16))
                {
                  goto LABEL_84;
                }

                v22 = *(v127 + 8 * v21);
              }

              v23 = v22;
              if (__OFADD__(v21++, 1))
              {
                goto LABEL_83;
              }

              v25 = [v22 name];
              if (!v25)
              {
                goto LABEL_15;
              }

              v26 = v25;
              v27 = sub_1BE052434();
              v29 = v28;

              if (!*(a1 + 16))
              {

                goto LABEL_16;
              }

              v30 = sub_1BD148F70(v27, v29);
              v32 = v31;

              if ((v32 & 1) == 0)
              {
LABEL_15:

                goto LABEL_16;
              }

              v33 = *(a1 + 56) + 112 * v30;
              v34 = *v33;
              v35 = *(v33 + 8);
              v36 = *(v33 + 16);
              v37 = *(v33 + 24);
              v38 = *(v33 + 32);
              v39 = *(v33 + 40);
              v40 = *(v33 + 48);
              v41 = *(v33 + 64);
              v42 = *(v33 + 72);
              v43 = *(v33 + 80);
              v44 = *(v33 + 88);
              v122 = *(v33 + 56);
              if (a2 == 2)
              {
                v45 = *(v33 + 56);
              }

              else
              {
                v45 = *v33;
              }

              if (a2 == 2)
              {
                v46 = *(v33 + 64);
              }

              else
              {
                v46 = *(v33 + 8);
              }

              if (a2 == 2)
              {
                v47 = *(v33 + 72);
              }

              else
              {
                v47 = *(v33 + 16);
              }

              v124 = v47;
              if (a2 == 2)
              {
                v48 = *(v33 + 80);
              }

              else
              {
                v48 = *(v33 + 24);
              }

              v50 = *(v33 + 96);
              v49 = *(v33 + 104);
              if (a2 == 2)
              {
                v51 = *(v33 + 88);
              }

              else
              {
                v51 = *(v33 + 32);
              }

              v120 = v44;
              v121 = v51;
              if (a2 == 2)
              {
                v52 = v50;
              }

              else
              {
                v52 = v39;
              }

              if (a2 == 2)
              {
                v53 = v49;
              }

              else
              {
                v53 = v40;
              }

              v118 = v53;
              v119 = v46;
              v125 = v42;
              v112 = v41;
              v113 = v38;
              v116 = v43;
              v114 = v39;
              v115 = v50;
              v110 = v36;
              v111 = v37;
              v108 = v34;
              v109 = v35;
              v123 = v48;
              v117 = v52;
              v126 = v45;
              if (v45 == 1)
              {
                v54 = v43;
                sub_1BDA82D14(v34, v35, v36, v37, v38, v39);
                sub_1BDA82D14(v122, v41, v42, v54, v120, v50);
                v55 = v118;
                v57 = v123;
                v56 = v124;
                sub_1BDA82D14(1, v119, v124, v123, v121, v117);
                [v23 setBackgroundColor_];
                v58 = 0;
                v59 = v117;
              }

              else
              {
                v60 = v37;
                v61 = v36;
                v62 = v35;
                v104 = v23;
                v63 = v34;
                v64 = v45;
                v103 = v45;
                v65 = v63;
                v23 = v104;
                v66 = v62;
                v7 = v101;
                sub_1BDA82D14(v65, v66, v61, v60, v113, v114);
                sub_1BDA82D14(v122, v41, v125, v116, v120, v50);
                v67 = v64;
                v55 = v118;
                v56 = v124;
                sub_1BDA82D14(v67, v119, v124, v123, v121, v117);
                [v104 setBackgroundColor_];

                v59 = v117;
                v57 = v123;
                v58 = v119;
              }

              [v23 setBorderColor_];

              if (v126 == 1)
              {
                v68 = 0;
              }

              else
              {
                v68 = v56;
              }

              [v23 setShadowColor_];

              objc_opt_self();
              v69 = swift_dynamicCastObjCClass();
              v70 = v125;
              if (v69)
              {
                v71 = v69;
                if (v126 == 1)
                {
                  v72 = v23;
                  [v71 setFillColor_];
                  v73 = 0;
                }

                else
                {
                  v74 = v57;
                  v75 = v23;
                  [v71 setFillColor_];

                  v73 = v121;
                }

                [v71 setStrokeColor_];

                v70 = v125;
                v56 = v124;
              }

              objc_opt_self();
              v76 = swift_dynamicCastObjCClass();
              if (v76)
              {
                v77 = v76;
                if (v126 == 1)
                {
                  v78 = 0;
                }

                else
                {
                  v78 = v59;
                }

                v79 = v23;
                [v77 setForegroundColor_];

                v70 = v125;
                v57 = v123;
                v56 = v124;
                v55 = v118;
              }

              objc_opt_self();
              v80 = swift_dynamicCastObjCClass();
              if (v80)
              {
                if (v126 == 1)
                {
                  sub_1BD2892F8(v108, v109, v110, v111, v113, v114);
                  v81 = v122;
                  v82 = v112;
                  goto LABEL_66;
                }

                if (v55)
                {
                  v105 = v80;
                  v87 = *(v55 + 16);
                  if (v87)
                  {
                    v132 = MEMORY[0x1E69E7CC0];
                    v88 = v23;
                    sub_1BE048C84();
                    sub_1BD5319DC(0, v87, 0);
                    v89 = v132;
                    v90 = 32;
                    do
                    {
                      v91 = v55;
                      v92 = *(v55 + v90);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D860);
                      swift_dynamicCast();
                      v132 = v89;
                      v94 = *(v89 + 16);
                      v93 = *(v89 + 24);
                      if (v94 >= v93 >> 1)
                      {
                        sub_1BD5319DC((v93 > 1), v94 + 1, 1);
                        v89 = v132;
                      }

                      *(v89 + 16) = v94 + 1;
                      sub_1BD1B6140(&v131, (v89 + 32 * v94 + 32));
                      v90 += 8;
                      --v87;
                      v55 = v91;
                    }

                    while (v87);

                    v95 = v120;
                    v57 = v123;
                    v59 = v117;
                  }

                  else
                  {
                    v96 = v23;
                    v95 = v120;
                  }

                  v97 = sub_1BE052724();

                  [v105 setColors_];
                  sub_1BD2892F8(v126, v119, v124, v57, v121, v59);
                  sub_1BD2892F8(v108, v109, v110, v111, v113, v114);
                  sub_1BD2892F8(v122, v112, v125, v116, v95, v115);

                  v20 = v106;
LABEL_16:
                  if (v21 == v20)
                  {
                    goto LABEL_80;
                  }

                  continue;
                }

                sub_1BD2892F8(v108, v109, v110, v111, v113, v114);
                sub_1BD2892F8(v122, v112, v70, v116, v120, v115);
                v81 = v126;
                v82 = v119;
                v83 = v56;
                v84 = v57;
                v86 = v121;
                v85 = v59;
              }

              else
              {
                sub_1BD2892F8(v126, v119, v56, v57, v121, v59);
                sub_1BD2892F8(v108, v109, v110, v111, v113, v114);
                v81 = v122;
                v82 = v112;
LABEL_66:
                v83 = v70;
                v85 = v115;
                v84 = v116;
                v86 = v120;
              }

              break;
            }

            sub_1BD2892F8(v81, v82, v83, v84, v86, v85);

            v20 = v106;
            goto LABEL_16;
          }

          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_14;
          }

LABEL_80:

          v4 = v98;
          v3 = v99;
        }

        else
        {
        }
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

void sub_1BDA820BC(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v47 = (v4 + 63) >> 6;
  v48 = *MEMORY[0x1E69657E0];
  sub_1BE048C84();
  v7 = 0;
  v45 = v3;
  v46 = v1;
LABEL_5:
  if (v6)
  {
    v8 = a1;
    goto LABEL_12;
  }

  v8 = a1;
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v47)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v7;
    if (v6)
    {
      v7 = v9;
LABEL_12:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(v8 + 48) + ((v7 << 10) | (16 * v10)));
      v13 = *v11;
      v12 = v11[1];
      v14 = OBJC_IVAR___PKMicaView_namedLayers;
      swift_beginAccess();
      v15 = *(v2 + v14);
      if (*(v15 + 16))
      {
        sub_1BE048C84();
        sub_1BE048C84();
        v16 = sub_1BD148F70(v13, v12);
        v18 = v17;

        if ((v18 & 1) == 0)
        {

          goto LABEL_5;
        }

        v19 = *(*(v15 + 56) + 8 * v16);
        sub_1BE048C84();

        if (v19 >> 62)
        {
          v20 = sub_1BE053704();
          v21 = a1;
          if (!v20)
          {
            goto LABEL_32;
          }

LABEL_16:
          v22 = 0;
          v54 = v19 & 0xFFFFFFFFFFFFFF8;
          v55 = v19 & 0xC000000000000001;
          v52 = v19;
          v53 = v20;
          while (2)
          {
            if (v55)
            {
              v23 = MEMORY[0x1BFB40900](v22, v19);
            }

            else
            {
              if (v22 >= *(v54 + 16))
              {
                goto LABEL_36;
              }

              v23 = *(v19 + 8 * v22 + 32);
            }

            v24 = v23;
            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_35;
            }

            objc_opt_self();
            v26 = swift_dynamicCastObjCClass();
            if (v26)
            {
              v27 = v26;
              v56 = v24;
              v28 = [v27 name];
              if (v28)
              {
                v29 = v28;
                v30 = sub_1BE052434();
                v32 = v31;

                if (!*(v21 + 16))
                {

                  goto LABEL_18;
                }

                v33 = sub_1BD148F70(v30, v32);
                v35 = v34;

                v19 = v52;
                if (v35)
                {
                  v36 = *(*(v21 + 56) + 8 * v33);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D868);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_1BE0B69E0;
                  *(inited + 32) = v48;
                  *(inited + 40) = 0;
                  v49 = v36;
                  v38 = v48;
                  sub_1BD1AC1E4(inited);
                  swift_setDeallocating();
                  sub_1BDA82DB8(inited + 32);
                  type metadata accessor for CFString(0);
                  sub_1BDA82E20();
                  v39 = sub_1BE052224();

                  v50 = CTFontDescriptorCreateWithAttributes(v39);

                  [v49 pointSize];
                  CopyWithAttributes = CTFontCreateCopyWithAttributes(v49, v40, 0, v50);
                  [v27 setFont_];
                  [v49 pointSize];
                  [v27 setFontSize_];
                  v42 = [objc_opt_self() mainScreen];
                  [v42 scale];
                  v44 = v43;

                  v21 = a1;
                  [v27 setContentsScale_];

LABEL_18:
                  v19 = v52;
                }
              }

              v20 = v53;
            }

            ++v22;
            if (v25 == v20)
            {
              goto LABEL_32;
            }

            continue;
          }
        }

        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v21 = a1;
        if (v20)
        {
          goto LABEL_16;
        }

LABEL_32:

        v3 = v45;
        v2 = v46;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1BDA82510(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v29 = a1;
  result = sub_1BE048C84();
  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_16:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(v29 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_1BD038CD0(*(v29 + 56) + 32 * v14, v30);
    *&v31 = v17;
    *(&v31 + 1) = v16;
    sub_1BD1B6140(v30, &v32);
    sub_1BE048C84();
LABEL_17:
    v34 = v31;
    v35[0] = v32;
    v35[1] = v33;
    v18 = *(&v31 + 1);
    if (!*(&v31 + 1))
    {
    }

    v19 = v34;
    sub_1BD1B6140(v35, &v31);
    v20 = OBJC_IVAR___PKMicaView_namedLayers;
    swift_beginAccess();
    v21 = *(v2 + v20);
    if (*(v21 + 16) && (sub_1BE048C84(), v22 = sub_1BD148F70(v19, v18), v24 = v23, , (v24 & 1) != 0))
    {
      v25 = *(*(v21 + 56) + 8 * v22);
      sub_1BE048C84();

      MEMORY[0x1EEE9AC00](v26, v27);
      v28[2] = &v31;
      sub_1BDA82E78(sub_1BDA82D9C, v28, v25);
    }

    else
    {
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  if (v7 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v6 = 0;
      v32 = 0u;
      v33 = 0u;
      v9 = v12;
      v31 = 0u;
      goto LABEL_17;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1BDA8275C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v30 = (v5 + 63) >> 6;
  v8 = 0;
  v28 = v1;
  v29 = sub_1BE048C84();
  v27 = v4;
  while (v7)
  {
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v3 + 56) + v11);
    v16 = OBJC_IVAR___PKMicaView_namedLayers;
    swift_beginAccess();
    v17 = *(v2 + v16);
    if (*(v17 + 16))
    {
      sub_1BE048C84();
      sub_1BE048C84();
      v18 = sub_1BD148F70(v13, v14);
      v20 = v19;

      if (v20)
      {
        v21 = *(*(v17 + 56) + 8 * v18);
        sub_1BE048C84();

        if (v21 >> 62)
        {
          v22 = sub_1BE053704();
          if (v22)
          {
LABEL_14:
            v23 = 0;
            do
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v24 = MEMORY[0x1BFB40900](v23, v21);
              }

              else
              {
                if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_27;
                }

                v24 = *(v21 + 8 * v23 + 32);
              }

              v25 = v24;
              v26 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                goto LABEL_26;
              }

              [v24 setHidden_];

              ++v23;
            }

            while (v26 != v22);
          }
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v22)
          {
            goto LABEL_14;
          }
        }

        v2 = v28;
        v3 = v29;
        v4 = v27;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v30)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v8;
    if (v7)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1BDA82A90(void **a1, void *a2)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v6 = v3;
    [v5 setString_];
    swift_unknownObjectRelease();
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 mainScreen];
    [v9 scale];
    v11 = v10;

    [v5 setContentsScale_];
  }
}

id StyledMicaView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StyledMicaView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BDA82C0C(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  result = [a2 userInterfaceStyle];
  if (v5 != result)
  {
    v7 = objc_opt_self();
    [v7 begin];
    [v7 setDisableActions_];
    v8 = sub_1BE048C84();
    sub_1BDA81874(v8, v5);

    [v7 commit];

    return [a1 setNeedsDisplay];
  }

  return result;
}

id sub_1BDA82D14(id result, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (result != 1)
  {
    v11 = result;
    sub_1BE048C84();
    v12 = v11;
    v13 = a2;
    v14 = a3;
    v15 = a4;
    v16 = a5;

    return a6;
  }

  return result;
}

uint64_t sub_1BDA82DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BDA82E20()
{
  result = qword_1EBD38158;
  if (!qword_1EBD38158)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38158);
  }

  return result;
}

void sub_1BDA82E78(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1BDA82FC0(uint64_t a1)
{
  v3 = OBJC_IVAR___PKMicaView_namedLayers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1BDA83078()
{
  v1 = [v0 layer];
  [v1 setSpeed_];

  v2 = [v0 layer];
  [v2 setTimeOffset_];

  v3 = [v0 layer];
  [v3 setBeginTime_];
}

void sub_1BDA8313C()
{
  v1 = [v0 layer];
  LODWORD(v2) = 1.0;
  [v1 setSpeed_];

  v3 = [v0 layer];
  [v3 setTimeOffset_];

  v7 = [v0 layer];
  v4 = [v0 layer];
  [v4 convertTime:0 fromLayer:CACurrentMediaTime()];
  v6 = v5;

  [v7 setBeginTime_];
}

void sub_1BDA83244()
{
  v1 = [v0 layer];
  [v1 convertTime:0 fromLayer:CACurrentMediaTime()];
  v3 = v2;

  v4 = [v0 layer];
  [v4 setSpeed_];

  v5 = [v0 layer];
  [v5 setTimeOffset_];
}

void sub_1BDA8331C()
{
  v1 = [v0 layer];
  [v1 timeOffset];
  v3 = v2;

  v4 = [v0 layer];
  LODWORD(v5) = 1.0;
  [v4 setSpeed_];

  v6 = [v0 layer];
  [v6 setTimeOffset_];

  v7 = [v0 layer];
  [v7 setBeginTime_];

  v8 = [v0 layer];
  [v8 convertTime:0 fromLayer:CACurrentMediaTime()];
  v10 = v9;

  v11 = [v0 layer];
  [v11 setBeginTime_];
}

id sub_1BDA83478(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BE04D214();
  v48 = *(v4 - 8);
  v49 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v45 - v9;
  v11 = sub_1BE04AA64();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v50 = &v45 - v18;
  result = PKPassKitUIBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE052404();
    v22 = sub_1BE052404();
    v23 = [v20 URLForResource:v21 withExtension:v22];

    if (v23)
    {
      v24 = v50;
      sub_1BE04A9F4();

      sub_1BD0E5E8C(0, &qword_1EBD5C958);
      v25 = v12;
      (*(v12 + 16))(v16, v24, v11);
      v26 = sub_1BE052434();
      v28 = sub_1BDA4BC34(v16, v26, v27, 0);
      v33 = OBJC_IVAR___PKMicaView_package;
      v34 = v46;
      v35 = *&v46[OBJC_IVAR___PKMicaView_package];
      *&v46[OBJC_IVAR___PKMicaView_package] = v28;
      v36 = v28;
      v37 = v28;

      sub_1BDA84EDC(v36);
      v39 = v38;

      v40 = MEMORY[0x1E69E7CC0];
      if (v39)
      {
        v40 = v39;
      }

      *&v34[OBJC_IVAR___PKMicaView_availableStates] = v40;

      v41 = *&v34[v33];
      if (v41)
      {
        v42 = [v41 rootLayer];
        if (v42)
        {
          v43 = v42;
          v44 = [v34 layer];
          [v44 addSublayer_];

          sub_1BDA839D0(v43);
          sub_1BDA84000();
          sub_1BDA84610();
          sub_1BDA83CE4();
          [v43 frame];
          [v34 setFrame_];
        }
      }

      return (*(v25 + 8))(v50, v11);
    }

    else
    {
      sub_1BE04D064();
      sub_1BE048C84();
      v29 = sub_1BE04D204();
      v30 = sub_1BE052C54();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v51 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_1BD123690(a1, a2, &v51);
        _os_log_impl(&dword_1BD026000, v29, v30, "Mica resource %s.caar not found.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x1BFB45F20](v32, -1, -1);
        MEMORY[0x1BFB45F20](v31, -1, -1);
      }

      return (*(v48 + 8))(v10, v49);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BDA839D0(void *a1)
{
  v2 = v1;
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BE052434();
    v8 = v7;

    v9 = OBJC_IVAR___PKMicaView_namedLayers;
    swift_beginAccess();
    v10 = *(v2 + v9);
    if (*(v10 + 16))
    {
      sub_1BE048C84();
      v11 = sub_1BD148F70(v6, v8);
      if (v12)
      {
        v13 = *(*(v10 + 56) + 8 * v11);
        sub_1BE048C84();

        v14 = a1;
        MEMORY[0x1BFB3F7A0]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = *(v2 + v9);
        *(v2 + v9) = 0x8000000000000000;
        sub_1BD1DB2C8(v13, v6, v8, isUniquelyReferenced_nonNull_native);

        v16 = v28;
        goto LABEL_9;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BE0B7020;
    *(v17 + 32) = a1;
    swift_beginAccess();
    v18 = a1;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v2 + v9);
    *(v2 + v9) = 0x8000000000000000;
    sub_1BD1DB2C8(v17, v6, v8, v19);

    v16 = v29;
LABEL_9:
    *(v2 + v9) = v16;
    swift_endAccess();
  }

  v20 = [a1 sublayers];
  if (v20)
  {
    v21 = v20;
    sub_1BD0E5E8C(0, &qword_1EBD558E0);
    v22 = sub_1BE052744();

    if (v22 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      v24 = v2;
      if (!i)
      {
        break;
      }

      v2 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1BFB40900](v2, v22);
        }

        else
        {
          if (v2 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v25 = *(v22 + 8 * v2 + 32);
        }

        v26 = v25;
        v27 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          break;
        }

        sub_1BDA839D0(v25);

        ++v2;
        if (v27 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_22:
  }
}

uint64_t sub_1BDA83CE4()
{
  v1 = v0;
  v2 = OBJC_IVAR___PKMicaView_namedLayers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v29 = v3 + 64;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v30 = v3;
  v31 = v2;
  result = sub_1BE048C84();
  v9 = 0;
  while (v6)
  {
    v10 = v6;
LABEL_10:
    v6 = (v10 - 1) & v10;
    v12 = *(v1 + v31);
    if (*(v12 + 16))
    {
      v32 = (v10 - 1) & v10;
      v13 = (*(v30 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v10)))));
      v14 = *v13;
      v15 = v13[1];
      sub_1BE048C84();
      sub_1BE048C84();
      v16 = sub_1BD148F70(v14, v15);
      v18 = v17;

      if (v18)
      {
        v19 = *(*(v12 + 56) + 8 * v16);
        sub_1BE048C84();

        if (v19 >> 62)
        {
          result = sub_1BE053704();
          v20 = result;
          if (!result)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v20)
          {
            goto LABEL_25;
          }
        }

        if (v20 < 1)
        {
          goto LABEL_28;
        }

        for (i = 0; i != v20; ++i)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1BFB40900](i, v19);
          }

          else
          {
            v22 = *(v19 + 8 * i + 32);
          }

          v23 = v22;
          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          if (v24)
          {
            v25 = v24;
            v23 = v23;
            [v25 transform];
            v33 = v34;
            CATransform3DScale(&v35, &v33, 1.0, -1.0, 1.0);
            v33 = v35;
            [v25 setTransform_];
            v26 = [objc_opt_self() mainScreen];
            [v26 scale];
            v28 = v27;

            [v25 setContentsScale_];
          }
        }
      }

LABEL_25:

      v6 = v32;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
    }

    v10 = *(v29 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BDA84000()
{
  v2 = OBJC_IVAR___PKMicaView_namedLayers;
  swift_beginAccess();
  v60 = v2;
  v61 = v0;
  v3 = *(v0 + v2);
  v56 = v3 + 64;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v55 = (v4 + 63) >> 6;
  v59 = v3;
  sub_1BE048C84();
  v7 = v6;
  v8 = 0;
  while (v7)
  {
    v9 = v7;
LABEL_10:
    v7 = (v9 - 1) & v9;
    v11 = *(v61 + v60);
    if (*(v11 + 16))
    {
      v57 = (v9 - 1) & v9;
      v58 = v8;
      v12 = (*(v59 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v9)))));
      v13 = *v12;
      v14 = v12[1];
      sub_1BE048C84();
      sub_1BE048C84();
      v15 = sub_1BD148F70(v13, v14);
      v17 = v16;

      if (v17)
      {
        v18 = *(*(v11 + 56) + 8 * v15);
        sub_1BE048C84();

        if (v18 >> 62)
        {
          v19 = sub_1BE053704();
          if (v19)
          {
LABEL_14:
            v20 = 0;
            v65 = v18;
            v66 = v18 & 0xC000000000000001;
            v62 = v18 + 32;
            v63 = v18 & 0xFFFFFFFFFFFFFF8;
            v64 = v19;
            while (1)
            {
              if (v66)
              {
                v22 = MEMORY[0x1BFB40900](v20, v18);
                v23 = __OFADD__(v20, 1);
                v24 = v20 + 1;
                if (v23)
                {
                  goto LABEL_44;
                }
              }

              else
              {
                if (v20 >= *(v63 + 16))
                {
                  goto LABEL_45;
                }

                v22 = *(v62 + 8 * v20);
                v23 = __OFADD__(v20, 1);
                v24 = v20 + 1;
                if (v23)
                {
                  goto LABEL_44;
                }
              }

              v67 = v22;
              v68 = v24;
              v69 = MEMORY[0x1E69E7CC0];
              sub_1BD531D40(0, 24, 0);
              v25 = v69;
              v26 = &unk_1F3B8CC60;
              v1 = 24;
              do
              {
                v28 = *(v26 - 1);
                v27 = *v26;
                v29 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
                sub_1BE048C84();
                v30 = [v29 init];
                v70 = v25;
                v32 = *(v25 + 16);
                v31 = *(v25 + 24);
                if (v32 >= v31 >> 1)
                {
                  v34 = v30;
                  sub_1BD531D40((v31 > 1), v32 + 1, 1);
                  v30 = v34;
                  v25 = v70;
                }

                *(v25 + 16) = v32 + 1;
                v33 = (v25 + 24 * v32);
                v33[4] = v28;
                v33[5] = v27;
                v33[6] = v30;
                v26 += 2;
                --v1;
              }

              while (v1);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E60);
              v35 = sub_1BE053A04();
              v71 = v35;
              v36 = *(v25 + 16);
              sub_1BE048964();
              if (v36)
              {
                break;
              }

LABEL_15:

              sub_1BD1A8804(v35);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D890);
              v21 = sub_1BE052224();

              [v67 setActions_];

              v18 = v65;
              v20 = v68;
              if (v68 == v64)
              {
                goto LABEL_38;
              }
            }

            v37 = 0;
            v38 = (v25 + 48);
            while (v37 < *(v25 + 16))
            {
              v39 = *(v38 - 2);
              v40 = *(v38 - 1);
              v41 = *v38;
              sub_1BE048C84();
              v1 = v41;
              v42 = sub_1BD148F70(v39, v40);
              v44 = v35[2];
              v45 = (v43 & 1) == 0;
              v23 = __OFADD__(v44, v45);
              v46 = v44 + v45;
              if (v23)
              {
                goto LABEL_41;
              }

              v47 = v43;
              if (v35[3] < v46)
              {
                sub_1BD50145C(v46, 1);
                v35 = v71;
                v42 = sub_1BD148F70(v39, v40);
                if ((v47 & 1) != (v48 & 1))
                {
                  goto LABEL_49;
                }
              }

              if (v47)
              {
                goto LABEL_46;
              }

              v35[(v42 >> 6) + 8] |= 1 << v42;
              v49 = (v35[6] + 16 * v42);
              *v49 = v39;
              v49[1] = v40;
              *(v35[7] + 8 * v42) = v1;
              v50 = v35[2];
              v23 = __OFADD__(v50, 1);
              v51 = v50 + 1;
              if (v23)
              {
                goto LABEL_42;
              }

              ++v37;
              v35[2] = v51;
              v38 += 3;
              if (v36 == v37)
              {
                goto LABEL_15;
              }
            }

            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
            goto LABEL_14;
          }
        }
      }

LABEL_38:

      v7 = v57;
      v8 = v58;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v55)
    {
      swift_arrayDestroy();
    }

    v9 = *(v56 + 8 * v10);
    ++v8;
    if (v9)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  v53 = swift_allocError();
  swift_willThrow();
  v54 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  if (swift_dynamicCast())
  {
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE13DAD0);
    sub_1BE053974();
    MEMORY[0x1BFB3F610](39, 0xE100000000000000);
    sub_1BE053994();
    __break(1u);
  }

  swift_unexpectedError();
  __break(1u);
LABEL_49:
  result = sub_1BE053C14();
  __break(1u);
  return result;
}

uint64_t sub_1BDA84610()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = OBJC_IVAR___PKMicaView_namedLayers;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v1 + v5) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v31 = *(v1 + v5);
  v32 = v5;
  result = sub_1BE048C84();
  v15 = 0;
  while (v12)
  {
    v16 = v12;
LABEL_11:
    v12 = (v16 - 1) & v16;
    v18 = *(v1 + v32);
    if (*(v18 + 16))
    {
      v19 = (*(v31 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v16)))));
      v20 = *v19;
      v21 = v19[1];
      sub_1BE048C84();
      sub_1BE048C84();
      v22 = sub_1BD148F70(v20, v21);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        goto LABEL_4;
      }

      v25 = *(*(v18 + 56) + 8 * v22);
      sub_1BE048C84();

      if (v25 >> 62)
      {
        result = sub_1BE053704();
        v26 = result;
        if (!result)
        {
          goto LABEL_4;
        }

LABEL_15:
        if (v26 < 1)
        {
          goto LABEL_26;
        }

        v30 = v1;
        v27 = 0;
        do
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x1BFB40900](v27, v25);
          }

          else
          {
            v28 = *(v25 + 8 * v27 + 32);
          }

          v29 = v28;
          ++v27;
          [v28 setShouldRasterize_];
          [v29 setContentsScale_];
          [v29 setRasterizationScale_];
        }

        while (v26 != v27);

        v1 = v30;
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          goto LABEL_15;
        }

LABEL_4:
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
    }

    v16 = *(v8 + 8 * v17);
    ++v15;
    if (v16)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BDA8488C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PKMicaView_namedLayers;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1BE048C84();
}

id sub_1BDA848F4(void *a1)
{
  *&v1[OBJC_IVAR___PKMicaView_package] = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___PKMicaView_availableStates] = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR___PKMicaView_namedLayers;
  *&v1[v4] = sub_1BD1ABEBC(v3);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MicaView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id MicaView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MicaView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicaView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BDA84EDC(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = [v2 rootLayer];
  if (!v3)
  {
LABEL_19:

    return;
  }

  v4 = v3;
  v5 = [v3 states];
  if (!v5 || (v6 = v5, v7 = sub_1BE052744(), v6, v8 = sub_1BD3FD1D0(v7), , !v8))
  {

    goto LABEL_19;
  }

  if (v8 >> 62)
  {
    goto LABEL_29;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while (1)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_1BD03B254(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        goto LABEL_32;
      }

      v27 = v2;
      if ((v8 & 0xC000000000000001) == 0)
      {
        break;
      }

      v10 = 0;
      v2 = &selRef_metricsForTextStyle_;
      while (1)
      {
        MEMORY[0x1BFB40900](v10, v8);
        v11 = [swift_unknownObjectRetain() name];
        if (v11)
        {
          v12 = v11;
          v13 = sub_1BE052434();
          v1 = v14;
        }

        else
        {
          v13 = 0;
          v1 = 0;
        }

        swift_unknownObjectRelease_n();
        if (!v1)
        {
          break;
        }

        v16 = *(v28 + 16);
        v15 = *(v28 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1BD03B254((v15 > 1), v16 + 1, 1);
        }

        ++v10;
        *(v28 + 16) = v16 + 1;
        v17 = v28 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v1;
        if (v9 == v10)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_29:
      v9 = sub_1BE053704();
      if (!v9)
      {
        goto LABEL_30;
      }
    }

    v18 = (v8 + 32);
    while (1)
    {
      v1 = *v18;
      v19 = [v1 name];
      if (!v19)
      {
        break;
      }

      v20 = v19;
      v21 = sub_1BE052434();
      v23 = v22;

      if (!v23)
      {
        goto LABEL_33;
      }

      v25 = *(v28 + 16);
      v24 = *(v28 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1BD03B254((v24 > 1), v25 + 1, 1);
      }

      *(v28 + 16) = v25 + 1;
      v26 = v28 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      ++v18;
      if (!--v9)
      {
LABEL_27:

        return;
      }
    }

LABEL_32:

LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_30:
  }
}

uint64_t type metadata accessor for SavingsBalanceHistoryView()
{
  result = qword_1EBD5D8A0;
  if (!qword_1EBD5D8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA85208()
{
  sub_1BD48E6D8();
  if (v0 <= 0x3F)
  {
    sub_1BDA8532C();
    if (v1 <= 0x3F)
    {
      sub_1BDA85390(319, &qword_1EBD393A8, MEMORY[0x1E697DBD0]);
      if (v2 <= 0x3F)
      {
        sub_1BDA85390(319, &qword_1EBD4B278, MEMORY[0x1E697E7E0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BDA8532C()
{
  if (!qword_1EBD5D8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40EC8);
    v0 = sub_1BE051964();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5D8B0);
    }
  }
}

void sub_1BDA85390(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE04E3A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BDA85400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v84 = type metadata accessor for SavingsBalanceHistoryView();
  v81 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v3);
  v82 = v4;
  v83 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB18);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v95 = v70 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
  MEMORY[0x1EEE9AC00](v94, v8);
  v89 = v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v70 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8C8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v70 - v17;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8D0);
  v91 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v19);
  v86 = v70 - v20;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8D8);
  v93 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v21);
  v96 = v70 - v22;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8E0);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v23);
  v88 = v70 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8E8);
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v25);
  v75 = v70 - v26;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8F0);
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v27);
  v76 = v70 - v28;
  v99 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8F8);
  sub_1BDA8CD18();
  sub_1BE04D694();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD5D920, &qword_1EBD5D8C0);
  sub_1BE050DE4();

  (*(v11 + 8))(v14, v10);
  v98 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D928);
  v30 = sub_1BDA8CF14();
  v87 = MEMORY[0x1E695B2D0];
  v31 = sub_1BD0DE4F4(&qword_1EBD5D938, &qword_1EBD5D928);
  sub_1BE050734();
  sub_1BD0D224C(v18);
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v89;
  sub_1BE04D8B4();

  v33 = sub_1BE04D794();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v36 = v95;
  v72 = v33;
  v71 = v35;
  v70[1] = v34 + 56;
  (v35)(v95, 1, 1);
  *&v102 = v15;
  *(&v102 + 1) = v29;
  *&v103 = v30;
  *(&v103 + 1) = v31;
  v37 = a1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_1BDA8D004(&qword_1EBD5D940, &unk_1EBD387B0);
  v40 = v32;
  v41 = v36;
  v42 = v90;
  v43 = v94;
  v44 = v86;
  sub_1BE050774();
  sub_1BD0DE53C(v41, &qword_1EBD3BB18);
  sub_1BD0DE53C(v40, &unk_1EBD387B0);
  (*(v91 + 8))(v44, v42);
  v97 = v37;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D948);
  *&v102 = v42;
  *(&v102 + 1) = v43;
  *&v103 = OpaqueTypeConformance2;
  *(&v103 + 1) = v39;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v88;
  v48 = sub_1BD0DE4F4(&qword_1EBD5D950, &qword_1EBD5D948);
  v49 = v92;
  v50 = v96;
  sub_1BE050754();
  (*(v93 + 8))(v50, v49);
  v96 = v37;
  v51 = sub_1BDA86D68();
  if (!*(v51 + 2))
  {
LABEL_6:

    __break(1u);
    goto LABEL_7;
  }

  v52 = *(v51 + 4);

  v53 = sub_1BDA86D68();
  v54 = *(v53 + 2);
  if (v54)
  {
    v55 = *&v53[8 * v54 + 24];

    if (v52 <= v55)
    {
      v100 = v52;
      v101 = v55;
      v56 = v95;
      v71(v95, 1, 1, v72);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB80);
      *&v102 = v49;
      *(&v102 + 1) = v45;
      *&v103 = v46;
      *(&v103 + 1) = v48;
      v57 = swift_getOpaqueTypeConformance2();
      v58 = sub_1BDA8D004(&qword_1EBD3BB88, &qword_1EBD3BB80);
      v59 = v75;
      v60 = v74;
      sub_1BE050794();
      sub_1BD0DE53C(v56, &qword_1EBD3BB18);
      (*(v73 + 8))(v47, v60);
      v61 = v83;
      sub_1BDA8D41C(v96, v83, type metadata accessor for SavingsBalanceHistoryView);
      v62 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v63 = swift_allocObject();
      sub_1BDA8D270(v61, v63 + v62, type metadata accessor for SavingsBalanceHistoryView);
      sub_1BE051CD4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D958);
      *&v102 = v60;
      *(&v102 + 1) = v94;
      *&v103 = v57;
      *(&v103 + 1) = v58;
      swift_getOpaqueTypeConformance2();
      sub_1BD0DE4F4(&qword_1EBD5D960, &qword_1EBD5D958);
      v64 = v76;
      v65 = v79;
      sub_1BE0507A4();

      (*(v77 + 8))(v59, v65);
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v66 = v85;
      (*(v78 + 32))(v85, v64, v80);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D968);
      v68 = (v66 + *(result + 36));
      v69 = v103;
      *v68 = v102;
      v68[1] = v69;
      v68[2] = v104;
      return result;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:

  __break(1u);
  return result;
}

void sub_1BDA8609C(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = sub_1BE04D604();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v96 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04D574();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v95 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SavingsBalanceHistoryView();
  v91 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v92 = v10;
  v93 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccountBalance(0);
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v85 = (&v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v83 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v86 = (&v82 - v23);
  v24 = sub_1BE04AF64();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v82 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v84 = &v82 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v82 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v82 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v82 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v90 = &v82 - v45;
  v89 = swift_allocBox();
  v99 = v46;
  v94 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v47 = *(v100 + 16);

  v98 = v25;
  if (!v47)
  {
    sub_1BE04AEF4();
    v62 = sub_1BE04AE64();
    v88 = v25[1];
    (v88)(v42, v24);
    v63 = PKStartOfDay();

    if (v63)
    {
      sub_1BE04AEE4();

      v64 = v25[4];
      v64(v99, v38, v24);
      sub_1BE04AEF4();
      v65 = sub_1BE04AE64();
      (v88)(v42, v24);
      v66 = PKEndOfDay();

      if (v66)
      {
        sub_1BE04AEE4();

        v60 = v90;
        v64(v90, v34, v24);
        v61 = v98;
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v48 = *(v100 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  if (v48 != 1)
  {
    sub_1BE04D8B4();

    v61 = v98;
    v67 = v87;
    if (*(v100 + 16))
    {
      v68 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      sub_1BDA8D41C(v100 + v68, v17, type metadata accessor for AccountBalance);

      v69 = v88;
      v70 = v61[2];
      v70(v42, &v17[*(v88 + 20)], v24);
      sub_1BD0E5E24(v17);
      (v61[4])(v99, v42, v24);
      swift_getKeyPath();
      swift_getKeyPath();
      v71 = v67;
      sub_1BE04D8B4();

      v72 = *(v100 + 16);
      if (v72)
      {
        v73 = v85;
        sub_1BDA8D41C(v100 + v68 + *(v71 + 72) * (v72 - 1), v85, type metadata accessor for AccountBalance);

        v60 = v90;
        v70(v90, &v73[*(v69 + 20)], v24);
        sub_1BD0E5E24(v73);
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_1BE04D8B4();

  v49 = v98;
  if (!*(v100 + 16))
  {
LABEL_17:

    __break(1u);
LABEL_18:

    __break(1u);
    goto LABEL_19;
  }

  v87 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v50 = v86;
  sub_1BDA8D41C(v100 + v87, v86, type metadata accessor for AccountBalance);

  v51 = &v50[*(v88 + 20)];
  v85 = v49[2];
  (v85)(v42, v51, v24);
  sub_1BD0E5E24(v50);
  v52 = sub_1BE04AE64();
  v53 = v49[1];
  v53(v42, v24);
  v54 = PKStartOfDay();

  if (!v54)
  {
LABEL_19:
    __break(1u);
LABEL_20:

    __break(1u);
    goto LABEL_21;
  }

  v55 = v84;
  sub_1BE04AEE4();

  v86 = v49[4];
  (v86)(v99, v55, v24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!*(v100 + 16))
  {
LABEL_21:

    __break(1u);
    goto LABEL_22;
  }

  v56 = v83;
  sub_1BDA8D41C(v100 + v87, v83, type metadata accessor for AccountBalance);

  (v85)(v42, v56 + *(v88 + 20), v24);
  sub_1BD0E5E24(v56);
  v57 = sub_1BE04AE64();
  v53(v42, v24);
  v58 = PKEndOfDay();

  if (v58)
  {
    v59 = v82;
    sub_1BE04AEE4();

    v60 = v90;
    (v86)(v90, v59, v24);
    v61 = v98;
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAC0);
    v74 = v61[9];
    v75 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1BE0B6CA0;
    v77 = v76 + v75;
    v78 = v61[2];
    v78(v77, v99, v24);
    v78(v77 + v74, v60, v24);
    v79 = v93;
    sub_1BDA8D41C(v94, v93, type metadata accessor for SavingsBalanceHistoryView);
    v80 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = v89;
    sub_1BDA8D270(v79, v81 + v80, type metadata accessor for SavingsBalanceHistoryView);
    sub_1BE048964();
    sub_1BE04D564();
    sub_1BE04D5F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA48);
    sub_1BDA8DEC8();
    sub_1BE04D774();
    (v61[1])(v60, v24);

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1BDA86B38(uint64_t a1)
{
  v2 = sub_1BE04D604();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = sub_1BE04D574();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = type metadata accessor for SavingsBalanceHistoryView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = sub_1BDA86D68();
  sub_1BDA8D41C(a1, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsBalanceHistoryView);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_1BDA8D270(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SavingsBalanceHistoryView);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  sub_1BE048C84();
  sub_1BE04D564();
  sub_1BE04D5F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA08);
  sub_1BDA8DB70();
  return sub_1BE04D774();
}