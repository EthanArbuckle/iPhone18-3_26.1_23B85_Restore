uint64_t sub_22EF76C84(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 11) = *(a1 + 27);
  v3 = *(a2 + 16);
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 11) = *(a2 + 27);
  return sub_22EF7B740(&v5, &v7) & 1;
}

id sub_22EF76D2C()
{
  result = [objc_allocWithZone(type metadata accessor for LyonSwiftDecoder()) init];
  qword_27DA9E510 = result;
  return result;
}

id sub_22EF76D98()
{
  v1 = OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier;
  v2 = &v0[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointNotFoundReason;
  v0[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointNotFoundReason] = 4;
  v4 = &v0[v1];
  v5 = &v0[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerVendorId];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v0[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerProductId];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerFirmwareVersion];
  *v7 = 0;
  v7[1] = 0;
  v0[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state] = 0x80;
  *v4 = 0;
  v4[1] = 0;
  *&v0[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw] = -28672;
  v0[v3] = 4;
  v0[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_antiRelayResult] = 0;
  v0[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_requestAuth] = 0;
  v0[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_protocolVersion] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for LyonSwiftDecoder();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_22EF76E98(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 32);
  v11 = (v10 >> 60) & 3 | (4 * *(a1 + 42));
  if (v11 <= 8)
  {
    if (!((v10 >> 60) & 3 | (4 * *(a1 + 42))))
    {
      return sub_22EF79784(a1, a2, a3);
    }

    if (v11 == 4)
    {
      return sub_22EF7A180(a1, a2, a3);
    }

    if (v11 == 5)
    {
      return sub_22EF78A7C(v8, v9, a2, a3);
    }

    goto LABEL_20;
  }

  if (v11 == 9)
  {
    return sub_22EF78154(v8, v9, a2, a3);
  }

  if (v11 == 11)
  {
    sub_22EF77F9C(v8);
    v17 = MEMORY[0x277D84F90];
    return sub_22EFAB468(v17);
  }

  if (v11 != 12)
  {
LABEL_20:
    v17 = MEMORY[0x277D84F90];
    return sub_22EFAB468(v17);
  }

  v13 = *(a1 + 40);
  v14 = v10 | v9;
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  if (!*(a1 + 40) && !(v14 | v8 | v15 | v16))
  {
    return sub_22EF7A71C(a1, a2, a3);
  }

  v18 = v14 | v15 | v16;
  if (!v13 && v8 == 2 && !v18)
  {
    *(a4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = 1;
    goto LABEL_20;
  }

  if (v13 || v8 != 3 || v18)
  {
    goto LABEL_20;
  }

  *(a4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = -127;
  return sub_22EF7924C(a2, a3);
}

unint64_t sub_22EF77018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = (v3 >> 60) & 3 | (4 * *(a1 + 42));
  if (v4 == 4)
  {
    return sub_22EF7A71C(a1, a2, a3);
  }

  if (v4 == 11)
  {
    sub_22EF77F9C(*a1);
    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    if (v4 == 12 && !*(a1 + 40) && !(*(a1 + 24) | *(a1 + 16) | *(a1 + 8) | *a1 | v3))
    {
      return sub_22EF7A71C(a1, a2, a3);
    }

    v6 = MEMORY[0x277D84F90];
  }

  return sub_22EFAB468(v6);
}

uint64_t sub_22EF770C4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[7];
  v7 = *(a1 + 5);
  LOBYTE(v129) = *a1;
  *(&v129 + 1) = v5;
  HIBYTE(v129) = v6;
  *(&v129 + 5) = v7;
  v8 = *(a1 + 1);
  v9 = a1[16];
  v10 = a1[17];
  v11 = a1[18];
  v12 = *(a1 + 19) | (a1[23] << 32);
  v14 = *(a1 + 3);
  v13 = *(a1 + 4);
  v15 = (v13 >> 60) & 3 | (4 * a1[42]);
  if (v15 <= 7)
  {
    v16 = *(a1 + 20);
    if (v15 == 1)
    {
      v112 = a1[17];
      v114 = a1[18];
      v120 = *(a1 + 4);
      v123 = v3;
      v118 = v129;
      if (qword_27DA9E370 != -1)
      {
        swift_once();
      }

      v24 = sub_22EFB626C();
      __swift_project_value_buffer(v24, qword_27DA9E518);
      v25 = sub_22EFB624C();
      v26 = sub_22EFB65CC();
      v27 = v16 >> 8;
      if (os_log_type_enabled(v25, v26))
      {
        v109 = v8;
        v28 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v126[0] = v107;
        *v28 = 136315138;
        if (v27 == 4)
        {
          v29 = 0;
        }

        else
        {
          v29 = v27 + 1;
        }

        v127 = v29;
        v128 = v27 == 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5E0, &qword_22EFBC408);
        v30 = sub_22EFB64AC();
        v32 = v14;
        v33 = sub_22EF9447C(v30, v31, v126);

        *(v28 + 4) = v33;
        v14 = v32;
        _os_log_impl(&dword_22EEF5000, v25, v26, "Endpoint not found: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v107);
        MEMORY[0x2318FC200](v107, -1, -1);
        v34 = v28;
        v8 = v109;
        MEMORY[0x2318FC200](v34, -1, -1);
      }

      if ((v27 - 3) >= 2u)
      {
        v126[0] = sub_22EF83154(v8, v9 | (v112 << 8) | (v114 << 16) | (v12 << 24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF7C054();
        v95 = sub_22EFB646C();
        v97 = v96;

        v98 = (v123 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier);
        v99 = *(v123 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8);
        *v98 = v95;
        v98[1] = v97;

        v126[0] = sub_22EF83154(v14, v120 & 0xCFFFFFFFFFFFFFFFLL);
        v35 = v123;
        v100 = sub_22EFB646C();
        v102 = v101;

        v103 = (v123 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier);
        v104 = *(v123 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8);
        *v103 = v100;
        v103[1] = v102;
      }

      else
      {
        v35 = v123;
      }

      *(v35 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = v118 | 0x40;
      *(v35 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointNotFoundReason) = v27;
      return sub_22EFAB468(MEMORY[0x277D84F90]);
    }

    v117 = a1[16];
    if (v15 != 2)
    {
      if (v15 == 6)
      {
        v17 = v129;
        *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = v117 & 1 | 0x40;
        v126[0] = sub_22EF83154(v17, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF7C054();
        v18 = v3;
        v19 = sub_22EFB646C();
        v21 = v20;

        v22 = (v18 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier);
        v23 = *(v18 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8);
        *v22 = v19;
        v22[1] = v21;

        *(v18 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_requestAuth) = 1;
      }

      return sub_22EFAB468(MEMORY[0x277D84F90]);
    }

    v39 = v129;
    v108 = v129;
    *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = v11 & 1;
    v40 = v13;
    v121 = v13;
    v113 = v10;
    v115 = v11;
    v110 = v8;
    v126[0] = sub_22EF83154(v39, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF7C054();
    v41 = v3;
    v42 = sub_22EFB646C();
    v44 = v43;

    v45 = (v41 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier);
    v46 = *(v41 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8);
    *v45 = v42;
    v45[1] = v44;

    v126[0] = sub_22EF83154(v14, v40 & 0xCFFFFFFFFFFFFFFFLL);
    v47 = sub_22EFB646C();
    v49 = v48;

    v124 = v41;
    v50 = (v41 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier);
    v51 = *(v41 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8);
    *v50 = v47;
    v50[1] = v49;

    *(v41 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_protocolVersion) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_22EFBC110;
    sub_22EFB648C();
    v53 = MEMORY[0x277D837D0];
    sub_22EFB668C();
    v54 = sub_22EFB648C();
    *(v52 + 96) = v53;
    *(v52 + 72) = v54;
    *(v52 + 80) = v55;
    sub_22EFB668C();
    *(v52 + 168) = v53;
    *(v52 + 144) = a2;
    *(v52 + 152) = a3;
    strcpy(v126, "selectStatus");

    sub_22EFB668C();
    *(v52 + 240) = MEMORY[0x277D83B88];
    *(v52 + 216) = 36864;
    strcpy(v126, "command");
    sub_22EFB668C();
    *(v52 + 312) = MEMORY[0x277D84C58];
    *(v52 + 288) = v117;
    *(v52 + 289) = v113;
    sub_22EFB668C();
    sub_22EF83154(v108, v110);
    v56 = sub_22EFB646C();
    v58 = v57;

    *(v52 + 384) = v53;
    *(v52 + 360) = v56;
    *(v52 + 368) = v58;
    sub_22EFB668C();
    sub_22EF83154(v14, v121 & 0xCFFFFFFFFFFFFFFFLL);
    v59 = sub_22EFB646C();
    v61 = v60;

    *(v52 + 456) = v53;
    *(v52 + 432) = v59;
    *(v52 + 440) = v61;
    strcpy(v126, "informative");
    HIDWORD(v126[1]) = -352321536;
    sub_22EFB668C();
    v62 = *(v124 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_antiRelayResult);
    v63 = MEMORY[0x277D84B78];
    *(v52 + 528) = MEMORY[0x277D84B78];
    *(v52 + 504) = v62;
    v126[0] = 0xD000000000000012;
    v126[1] = 0x800000022EFC65C0;
    sub_22EFB668C();
    if (v115)
    {
      v64 = 2;
    }

    else
    {
      v64 = 1;
    }

    *(v52 + 600) = v63;
    *(v52 + 576) = v64;
    sub_22EFB648C();
    sub_22EFB668C();
    v65 = MEMORY[0x277D839B0];
    *(v52 + 672) = MEMORY[0x277D839B0];
    *(v52 + 648) = 1;
    sub_22EFB648C();
    sub_22EFB668C();
    *(v52 + 744) = v65;
    *(v52 + 720) = 1;
    sub_22EFB648C();
    sub_22EFB668C();
    *(v52 + 816) = v65;
    *(v52 + 792) = 0;
    v126[0] = sub_22EFB648C();
    v126[1] = v66;
    sub_22EFB668C();
    *(v52 + 888) = MEMORY[0x277D83B88];
    *(v52 + 864) = 1000;
    v67 = sub_22EFAB468(v52);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
LABEL_28:
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v67;
  }

  if (v15 != 8)
  {
    if (v15 != 10)
    {
      if (v15 == 11)
      {
        sub_22EF77F9C(v129);
      }

      return sub_22EFAB468(MEMORY[0x277D84F90]);
    }

    v116 = v9 | (v10 << 8) | (v11 << 16) | (v12 << 24);
    v119 = v5;
    *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = -127;
    v111 = v14;
    v122 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_22EFBC100;
    sub_22EFB648C();
    v71 = v8;
    v72 = MEMORY[0x277D837D0];
    sub_22EFB668C();
    v73 = sub_22EFB648C();
    *(v70 + 96) = v72;
    *(v70 + 72) = v73;
    *(v70 + 80) = v74;
    sub_22EFB668C();
    *(v70 + 168) = v72;
    *(v70 + 144) = a2;
    *(v70 + 152) = a3;
    strcpy(v126, "didError");

    sub_22EFB668C();
    *(v70 + 240) = MEMORY[0x277D839B0];
    *(v70 + 216) = 1;
    strcpy(v126, "command");
    v126[1] = 0xE700000000000000;
    sub_22EFB668C();
    v125 = v3;
    v75 = asc_22EFC66CF[sub_22EF76B24()];
    *(v70 + 312) = MEMORY[0x277D84B78];
    *(v70 + 288) = v75;
    sub_22EFB668C();
    sub_22EF83154(v71, v116);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF7C054();
    v76 = sub_22EFB646C();
    v78 = v77;

    *(v70 + 384) = v72;
    *(v70 + 360) = v76;
    *(v70 + 368) = v78;
    sub_22EFB668C();
    sub_22EF83154(v111, v122 & 0xCFFFFFFFFFFFFFFFLL);
    v79 = sub_22EFB646C();
    v81 = v80;

    *(v70 + 456) = v72;
    *(v70 + 432) = v79;
    *(v70 + 440) = v81;
    v126[0] = 0x737574617473;
    v126[1] = 0xE600000000000000;
    sub_22EFB668C();
    v82 = *(v125 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw);
    v83 = MEMORY[0x277D84C58];
    *(v70 + 528) = MEMORY[0x277D84C58];
    *(v70 + 504) = v82;
    strcpy(v126, "informative");
    sub_22EFB668C();
    *(v70 + 600) = v83;
    *(v70 + 576) = v4;
    *(v70 + 577) = v119;
    sub_22EFB668C();
    *(v70 + 672) = v83;
    *(v70 + 648) = 0;
    v126[0] = sub_22EFB648C();
    v126[1] = v84;
    sub_22EFB668C();
    *(v70 + 744) = MEMORY[0x277D839B0];
    *(v70 + 720) = 1;
    v67 = sub_22EFAB468(v70);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
    goto LABEL_28;
  }

  v36 = &byte_2843B6850;
  for (i = qword_2843B6840; i; --i)
  {
    v38 = *v36++;
    if (v38 == v4)
    {
      *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_antiRelayResult) = v4;
      return sub_22EFAB468(MEMORY[0x277D84F90]);
    }
  }

  *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = -127;
  if (qword_27DA9E370 != -1)
  {
    swift_once();
  }

  v86 = sub_22EFB626C();
  __swift_project_value_buffer(v86, qword_27DA9E518);
  v87 = sub_22EFB624C();
  v88 = sub_22EFB65CC();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v126[0] = v90;
    *v89 = 136315138;
    v127 = v4;
    v91 = sub_22EFB64AC();
    v93 = sub_22EF9447C(v91, v92, v126);

    *(v89 + 4) = v93;
    _os_log_impl(&dword_22EEF5000, v87, v88, "Applet detected an attack: %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v90);
    MEMORY[0x2318FC200](v90, -1, -1);
    MEMORY[0x2318FC200](v89, -1, -1);
  }

  type metadata accessor for ATLError(0);
  sub_22EF7BF94();
  swift_allocError();
  *v94 = 5;
  return swift_willThrow();
}

void sub_22EF77F9C(__int16 a1)
{
  v2 = v1;
  if (qword_27DA9E370 != -1)
  {
    swift_once();
  }

  v4 = sub_22EFB626C();
  __swift_project_value_buffer(v4, qword_27DA9E518);
  v5 = sub_22EFB624C();
  v6 = sub_22EFB65CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D84C58];
    *(v9 + 16) = xmmword_22EFBB8C0;
    v11 = MEMORY[0x277D84CB8];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = a1;
    v12 = sub_22EFB649C();
    v14 = sub_22EF9447C(v12, v13, &v15);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_22EEF5000, v5, v6, "Fatal Lyon Error: SW=0x%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2318FC200](v8, -1, -1);
    MEMORY[0x2318FC200](v7, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw) == -28672)
  {
    *(v2 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw) = a1;
  }
}

unint64_t sub_22EF78154(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = &v4[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier];
  v7 = *&v4[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8];
  if (!v7 || (v8 = *&v4[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8]) == 0)
  {
    if (qword_27DA9E370 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_5;
  }

  v9 = a2;
  v10 = a1;
  v11 = *v6;
  v6 = *&v4[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
  v74 = a1;
  v75 = a2;

  sub_22EF70B68(v10, v9);
  while (1)
  {
    v20 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      break;
    }

    if (v20)
    {
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_55;
      }

      if (HIDWORD(v10) - v10 < 1)
      {
        goto LABEL_31;
      }
    }

    else if (!BYTE6(v9))
    {
      goto LABEL_31;
    }

LABEL_21:
    v25 = sub_22EFB0E70(&v74, 0);
    if (v5)
    {

      sub_22EF708C8(v74, v75);
      return v8;
    }

    if (v25 == 129)
    {
      v28 = v27 >> 62;
      if ((v27 >> 62) <= 1)
      {
        if (!v28)
        {
          v19 = BYTE6(v27);
LABEL_9:
          if (v19 != 32)
          {
            goto LABEL_10;
          }

          v65 = v11;
          v66 = v6;
          v68 = v26;
          v69 = v27;
          v67 = v4;
          if (qword_27DA9E370 != -1)
          {
            swift_once();
          }

          v40 = sub_22EFB626C();
          __swift_project_value_buffer(v40, qword_27DA9E518);
          sub_22EF70B68(v68, v69);
          v41 = sub_22EFB624C();
          v42 = sub_22EFB65AC();
          sub_22EF708C8(v68, v69);
          if (os_log_type_enabled(v41, v42))
          {
            buf = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v76 = v64;
            *buf = 136315138;
            v63 = v42;
            sub_22EF70B68(v68, v69);
            sub_22EF76410(4, v68, v69, &v72);
            v44 = v72;
            v43 = v73;
            sub_22EF83154(v72, v73);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
            sub_22EF7C054();
            v45 = sub_22EFB646C();
            v47 = v46;
            sub_22EF708C8(v44, v43);

            v48 = sub_22EF9447C(v45, v47, &v76);

            *(buf + 4) = v48;
            _os_log_impl(&dword_22EEF5000, v41, v63, "Received shareSession event with stepUpSK %s", buf, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v64);
            MEMORY[0x2318FC200](v64, -1, -1);
            MEMORY[0x2318FC200](buf, -1, -1);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22EFBC120;
          v72 = sub_22EFB648C();
          v73 = v50;
          v51 = MEMORY[0x277D837D0];
          sub_22EFB668C();
          v52 = sub_22EFB648C();
          *(inited + 96) = v51;
          *(inited + 72) = v52;
          *(inited + 80) = v53;
          v72 = 0xD000000000000010;
          v73 = 0x800000022EFC65A0;
          sub_22EFB668C();
          *(inited + 168) = v51;
          *(inited + 144) = a3;
          *(inited + 152) = a4;
          v72 = 0xD000000000000012;
          v73 = 0x800000022EFC65E0;

          sub_22EFB668C();
          *(inited + 240) = v51;
          *(inited + 216) = v65;
          *(inited + 224) = v7;
          v72 = sub_22EFB648C();
          v73 = v54;
          sub_22EFB668C();
          v55 = 0x10000090007uLL >> (16 * v67[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_protocolVersion]);
          *(inited + 312) = MEMORY[0x277D84C58];
          *(inited + 288) = v55;
          v72 = 0xD000000000000010;
          v73 = 0x800000022EFC64E0;
          sub_22EFB668C();
          *(inited + 384) = v51;
          *(inited + 360) = v66;
          *(inited + 368) = v8;
          v72 = 0xD000000000000012;
          v73 = 0x800000022EFC65C0;
          sub_22EFB668C();
          if (v67[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state])
          {
            v56 = 2;
          }

          else
          {
            v56 = 1;
          }

          if (v67[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state] < 0)
          {
            v56 = 2;
          }

          *(inited + 456) = MEMORY[0x277D84B78];
          *(inited + 432) = v56;
          v72 = sub_22EFB648C();
          v73 = v57;
          sub_22EFB668C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5C8, &qword_22EFBC3E8);
          v58 = swift_initStackObject();
          *(v58 + 16) = xmmword_22EFBB8C0;
          *(v58 + 32) = sub_22EFB648C();
          *(v58 + 40) = v59;
          *(v58 + 48) = v68;
          *(v58 + 56) = v69;
          sub_22EF70B68(v68, v69);
          v60 = sub_22EFAB5A4(v58);
          swift_setDeallocating();
          sub_22EF7CFF8(v58 + 32, &qword_27DA9E5D0, &qword_22EFBC3F0);
          *(inited + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5D8, &unk_22EFBC3F8);
          *(inited + 504) = v60;
          v8 = sub_22EFAB468(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
          swift_arrayDestroy();
          sub_22EF708C8(v68, v69);
          v10 = v74;
          v9 = v75;
LABEL_52:
          sub_22EF708C8(v10, v9);
          return v8;
        }

        LODWORD(v19) = HIDWORD(v26) - v26;
        if (!__OFSUB__(HIDWORD(v26), v26))
        {
          v19 = v19;
          goto LABEL_9;
        }

        __break(1u);
        goto LABEL_58;
      }

      if (v28 == 2)
      {
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        v23 = __OFSUB__(v29, v30);
        v19 = v29 - v30;
        if (!v23)
        {
          goto LABEL_9;
        }

        __break(1u);
LABEL_31:

        if (qword_27DA9E370 == -1)
        {
LABEL_32:
          v31 = sub_22EFB626C();
          __swift_project_value_buffer(v31, qword_27DA9E518);
          v32 = sub_22EFB624C();
          v33 = sub_22EFB65AC();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&dword_22EEF5000, v32, v33, "Received shareSession event without stepUpSK", v34, 2u);
            MEMORY[0x2318FC200](v34, -1, -1);
          }

          v8 = sub_22EFAB468(MEMORY[0x277D84F90]);
          goto LABEL_52;
        }

LABEL_58:
        swift_once();
        goto LABEL_32;
      }
    }

LABEL_10:
    sub_22EF708C8(v26, v27);
    v10 = v74;
    v9 = v75;
  }

  if (v20 != 2)
  {
    goto LABEL_31;
  }

  v22 = *(v10 + 16);
  v21 = *(v10 + 24);
  v23 = __OFSUB__(v21, v22);
  v24 = v21 - v22;
  if (!v23)
  {
    if (v24 < 1)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  swift_once();
LABEL_5:
  v12 = sub_22EFB626C();
  __swift_project_value_buffer(v12, qword_27DA9E518);
  v13 = v4;
  v14 = sub_22EFB624C();
  v8 = sub_22EFB65CC();

  if (os_log_type_enabled(v14, v8))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v74 = v16;
    *v15 = 136315394;
    if (v6[1])
    {
      v17 = *v6;
      v18 = v6[1];
    }

    else
    {
      v17 = 7104878;
      v18 = 0xE300000000000000;
    }

    v35 = sub_22EF9447C(v17, v18, &v74);

    *(v15 + 4) = v35;
    *(v15 + 12) = 2080;
    if (*&v13[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8])
    {
      v36 = *&v13[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
      v37 = *&v13[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8];
    }

    else
    {
      v36 = 7104878;
      v37 = 0xE300000000000000;
    }

    v38 = sub_22EF9447C(v36, v37, &v74);

    *(v15 + 14) = v38;
    _os_log_impl(&dword_22EEF5000, v14, v8, "Missing mandatory information in Share Session: ep:%s\n, readerId:%s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FC200](v16, -1, -1);
    MEMORY[0x2318FC200](v15, -1, -1);
  }

  type metadata accessor for ATLError(0);
  sub_22EF7BF94();
  swift_allocError();
  *v39 = 3;
  swift_willThrow();
  return v8;
}

unint64_t sub_22EF78A7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  if (qword_27DA9E370 != -1)
  {
    swift_once();
  }

  v10 = sub_22EFB626C();
  __swift_project_value_buffer(v10, qword_27DA9E518);
  sub_22EF70B68(a1, a2);

  v11 = sub_22EFB624C();
  v12 = sub_22EFB65AC();
  sub_22EF708C8(a1, a2);

  v86 = v4;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v89 = v83;
    *v13 = 136315394;
    v92 = sub_22EF83154(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF7C054();
    v14 = sub_22EFB646C();
    v16 = v15;

    v17 = sub_22EF9447C(v14, v16, &v89);
    v6 = v5;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_22EF9447C(a3, a4, &v89);
    _os_log_impl(&dword_22EEF5000, v11, v12, "messageInExchange %s for aid %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FC200](v83, -1, -1);
    MEMORY[0x2318FC200](v13, -1, -1);
  }

  v89 = a1;
  v90 = a2;
  v91 = 1;
  sub_22EF70B68(a1, a2);
  v18 = sub_22EF73580();
  if (v6)
  {
    sub_22EF708C8(v89, v90);
    v22 = v6;
    v23 = sub_22EFB624C();
    v24 = sub_22EFB65CC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v89 = v27;
      *v25 = 136315394;
      *(v25 + 4) = sub_22EF9447C(0xD000000000000026, 0x800000022EFC6620, &v89);
      *(v25 + 12) = 2112;
      v28 = v6;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v29;
      *v26 = v29;
      _os_log_impl(&dword_22EEF5000, v23, v24, "Error %s %@", v25, 0x16u);
      sub_22EF7CFF8(v26, &qword_27DA9E5C0, &qword_22EFBC3E0);
      MEMORY[0x2318FC200](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x2318FC200](v27, -1, -1);
      MEMORY[0x2318FC200](v25, -1, -1);
    }

    else
    {
    }

    return sub_22EFAB468(MEMORY[0x277D84F90]);
  }

  while (1)
  {
    if ((~v18 & 0xFF00000000) == 0)
    {
      goto LABEL_20;
    }

    v31 = BYTE4(v18) ? v18 : v18;
    if (BYTE4(v18) - 2 < 2)
    {
      v31 = v18;
    }

    if (v31 == 194)
    {
      break;
    }

    sub_22EF7C0B8(v18, v19, v20, v21);
    v18 = sub_22EF73580();
  }

  if (v21 >> 60 == 15)
  {
    sub_22EF7C0B8(v18, v19, v20, v21);
LABEL_20:
    v32 = sub_22EFAB468(MEMORY[0x277D84F90]);
LABEL_21:
    sub_22EF708C8(v89, v90);
    return v32;
  }

  v33 = v18;
  v88 = v19;
  v34 = v89;
  v35 = v90;
  v36 = v21;
  v37 = v20;
  sub_22EF70CB0(v20, v21);
  sub_22EF708C8(v34, v35);
  v89 = v37;
  v90 = v36;
  v91 = 0;
  v38 = v37;
  v39 = v36;
  sub_22EF70CB0(v37, v36);
  v40 = sub_22EF73580();
  if ((~v40 & 0xFF00000000) == 0 || v43 >> 60 == 15)
  {
LABEL_28:
    v32 = sub_22EFAB468(MEMORY[0x277D84F90]);
    sub_22EF7C0B8(v33, v88, v38, v39);
    sub_22EF7C0B8(v33, v88, v38, v39);
    goto LABEL_21;
  }

  v44 = v40;
  v85 = v41;
  v45 = v42;
  v46 = v43;
  v47 = sub_22EF73580();
  if ((~v47 & 0xFF00000000) == 0 || v50 >> 60 == 15)
  {
    v51 = v44;
    v52 = v85;
    v53 = v45;
    v54 = v46;
LABEL_27:
    sub_22EF7C0B8(v51, v52, v53, v54);
    goto LABEL_28;
  }

  v80 = v47;
  v81 = v48;
  v82 = v49;
  v84 = v50;
  v55 = sub_22EF73580();
  if ((~v55 & 0xFF00000000) == 0 || (v77 = v57, v78 = v55, v79 = v56, v76 = v58, v58 >> 60 == 15))
  {
    sub_22EF7C0B8(v44, v85, v45, v46);
    v51 = v80;
    v52 = v81;
    v53 = v82;
    v54 = v84;
    goto LABEL_27;
  }

  v73 = v45;
  v74 = v46;
  v92 = sub_22EF83154(v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  sub_22EF7C054();
  v59 = sub_22EFB646C();
  v61 = v60;

  v62 = (v86 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerVendorId);
  v63 = *(v86 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerVendorId + 8);
  *v62 = v59;
  v62[1] = v61;

  v92 = sub_22EF83154(v82, v84);
  v64 = sub_22EFB646C();
  v66 = v65;

  v67 = (v86 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerProductId);
  v68 = *(v86 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerProductId + 8);
  *v67 = v64;
  v67[1] = v66;

  v92 = sub_22EF83154(v77, v76);
  v69 = sub_22EFB646C();
  v75 = v70;
  sub_22EF7C0B8(v44, v85, v73, v74);
  sub_22EF7C0B8(v80, v81, v82, v84);
  sub_22EF7C0B8(v78, v79, v77, v76);
  sub_22EF7C0B8(v33, v88, v38, v39);
  sub_22EF7C0B8(v33, v88, v38, v39);

  sub_22EF708C8(v89, v90);
  v71 = (v86 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerFirmwareVersion);
  v72 = *(v86 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerFirmwareVersion + 8);
  *v71 = v69;
  v71[1] = v75;

  return sub_22EFAB468(MEMORY[0x277D84F90]);
}

unint64_t sub_22EF7924C(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier];
  v4 = *&v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8];
  if (v4 && (v5 = *&v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8]) != 0)
  {
    v32 = *v3;
    v35 = *&v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
    if (v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    if (v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state] < 0)
    {
      v8 = 2;
    }

    v31 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22EFBC130;
    sub_22EFB648C();

    v10 = MEMORY[0x277D837D0];
    sub_22EFB668C();
    v11 = sub_22EFB648C();
    *(inited + 96) = v10;
    *(inited + 72) = v11;
    *(inited + 80) = v12;
    sub_22EFB668C();
    *(inited + 168) = v10;
    *(inited + 144) = a1;
    *(inited + 152) = a2;

    sub_22EFB668C();
    *(inited + 240) = MEMORY[0x277D839B0];
    *(inited + 216) = 0;
    sub_22EFB668C();
    v13 = MEMORY[0x277D84B78];
    *(inited + 312) = MEMORY[0x277D84B78];
    *(inited + 288) = -1;
    sub_22EFB668C();
    *(inited + 384) = v13;
    *(inited + 360) = v31;
    sub_22EFB668C();
    *(inited + 456) = v10;
    *(inited + 432) = v32;
    *(inited + 440) = v4;
    sub_22EFB668C();
    *(inited + 528) = v10;
    *(inited + 504) = v35;
    *(inited + 512) = v5;
    v33 = 0x737574617473;
    v34 = 0xE600000000000000;
    sub_22EFB668C();
    v14 = *&v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw];
    v15 = MEMORY[0x277D84C58];
    *(inited + 600) = MEMORY[0x277D84C58];
    *(inited + 576) = v14;
    v33 = 0x746C75736572;
    v34 = 0xE600000000000000;
    sub_22EFB668C();
    *(inited + 672) = v15;
    *(inited + 648) = 64;
    v16 = sub_22EFAB468(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v17 = sub_22EFB626C();
    v18 = __swift_project_value_buffer(v17, qword_27DA9E518);
    v19 = v2;
    v16 = v18;
    v20 = sub_22EFB624C();
    v21 = sub_22EFB65CC();

    if (os_log_type_enabled(v20, v21))
    {
      v16 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v16 = 136315394;
      if (v3[1])
      {
        v23 = *v3;
        v24 = v3[1];
      }

      else
      {
        v23 = 7104878;
        v24 = 0xE300000000000000;
      }

      v25 = sub_22EF9447C(v23, v24, &v33);

      *(v16 + 4) = v25;
      *(v16 + 12) = 2080;
      if (*&v19[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8])
      {
        v26 = *&v19[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
        v27 = *&v19[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8];
      }

      else
      {
        v26 = 7104878;
        v27 = 0xE300000000000000;
      }

      v28 = sub_22EF9447C(v26, v27, &v33);

      *(v16 + 14) = v28;
      _os_log_impl(&dword_22EEF5000, v20, v21, "Missing mandatory information in StepUp Handover: ep:%s\n, readerId:%s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FC200](v22, -1, -1);
      MEMORY[0x2318FC200](v16, -1, -1);
    }

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v29 = 3;
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_22EF79784(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 32) >> 60) & 3 | (4 * *(result + 42)))
  {
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v5 = sub_22EFB626C();
    __swift_project_value_buffer(v5, qword_27DA9E518);
    v6 = sub_22EFB624C();
    v7 = sub_22EFB65CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22EEF5000, v6, v7, "Wrong handler", v8, 2u);
      MEMORY[0x2318FC200](v8, -1, -1);
    }

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
    return v4;
  }

  v10 = result;
  v11 = &v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier];
  v12 = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8];
  if (!v12 || !*&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8])
  {
    sub_22EF7BFEC(result, &v93);
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v19 = sub_22EFB626C();
    __swift_project_value_buffer(v19, qword_27DA9E518);
    v20 = v3;
    v21 = sub_22EFB624C();
    v4 = sub_22EFB65CC();

    if (os_log_type_enabled(v21, v4))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v93 = v23;
      *v22 = 136315394;
      if (v11[1])
      {
        v24 = *v11;
        v25 = v11[1];
      }

      else
      {
        v24 = 7104878;
        v25 = 0xE300000000000000;
      }

      v26 = sub_22EF9447C(v24, v25, &v93);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      if (*&v20[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8])
      {
        v27 = *&v20[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
        v28 = *&v20[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8];
      }

      else
      {
        v27 = 7104878;
        v28 = 0xE300000000000000;
      }

      v29 = sub_22EF9447C(v27, v28, &v93);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_22EEF5000, v21, v4, "Missing mandatory information in ControlFlow: ep:%s\n, readerId:%s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FC200](v23, -1, -1);
      MEMORY[0x2318FC200](v22, -1, -1);
    }

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v30 = 3;
    swift_willThrow();
    sub_22EF7C024(v10);
    return v4;
  }

  v13 = *(result + 16);
  v14 = *result;
  v15 = *(result + 3);
  v86 = *v11;
  v87 = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
  v84 = *(result + 1);
  v83 = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8];
  if (v13 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v16 = *(result + 8);
  v17 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_35;
    }

    v32 = *(v16 + 16);
    v31 = *(v16 + 24);
    v33 = __OFSUB__(v31, v32);
    v18 = v31 - v32;
    if (!v33)
    {
LABEL_30:
      if (v18 >= 1)
      {
        v81 = v14;
        v79 = v3;
        sub_22EF7BFEC(result, &v93);
        v34 = qword_27DA9E370;

        if (v34 != -1)
        {
          swift_once();
        }

        v35 = sub_22EFB626C();
        __swift_project_value_buffer(v35, qword_27DA9E518);
        sub_22EF70CB0(v16, v13);
        v36 = sub_22EFB624C();
        v78 = sub_22EFB65AC();
        if (os_log_type_enabled(v36, v78))
        {
          buf = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *&v93 = v77;
          *buf = 136315138;
          sub_22EF7C024(v10);
          *&v92[0] = sub_22EF83154(v16, v13);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
          sub_22EF7C054();
          v37 = v36;
          v38 = sub_22EFB646C();
          v40 = v39;

          v41 = sub_22EF9447C(v38, v40, &v93);

          *(buf + 4) = v41;
          _os_log_impl(&dword_22EEF5000, v37, v78, "Domain specific data: %s", buf, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v77);
          MEMORY[0x2318FC200](v77, -1, -1);
          MEMORY[0x2318FC200](buf, -1, -1);
        }

        else
        {

          sub_22EF7C024(v10);
        }

        v3 = v79;
        v14 = v81;
        goto LABEL_38;
      }

LABEL_35:
      sub_22EF7BFEC(result, &v93);

LABEL_38:
      v82 = (v84 | (v15 << 16)) >> 8;
      if (v14)
      {
        v42 = 64;
      }

      else
      {
        v42 = 0;
      }

      v85 = v42;
      if (v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state])
      {
        v43 = 2;
      }

      else
      {
        v43 = 1;
      }

      if (v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state] < 0)
      {
        v43 = 2;
      }

      v80 = v43;
      v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state] = -127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A0, &qword_22EFBC3B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22EFBC100;
      *(inited + 32) = sub_22EFB648C();
      *(inited + 40) = v45;
      v46 = sub_22EFB648C();
      v47 = MEMORY[0x277D837D0];
      *(inited + 48) = v46;
      *(inited + 56) = v48;
      *(inited + 72) = v47;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 88) = 0x800000022EFC65A0;
      *(inited + 96) = a2;
      *(inited + 104) = a3;
      *(inited + 120) = v47;
      *(inited + 128) = 0x726F727245646964;
      *(inited + 136) = 0xE800000000000000;
      v49 = MEMORY[0x277D839B0];
      *(inited + 144) = (v14 & 1) == 0;
      *(inited + 168) = v49;
      *(inited + 176) = 0x646E616D6D6F63;
      *(inited + 184) = 0xE700000000000000;
      v50 = v3;
      v51 = sub_22EF76B24();
      v52 = MEMORY[0x277D84B78];
      *(inited + 192) = asc_22EFC66CF[v51];
      *(inited + 216) = v52;
      *(inited + 224) = 0xD000000000000012;
      *(inited + 232) = 0x800000022EFC65C0;
      *(inited + 240) = v80;
      *(inited + 264) = v52;
      *(inited + 272) = 0xD000000000000012;
      *(inited + 280) = 0x800000022EFC65E0;
      *(inited + 288) = v86;
      *(inited + 296) = v12;
      *(inited + 312) = v47;
      *(inited + 320) = 0xD000000000000010;
      *(inited + 328) = 0x800000022EFC64E0;
      *(inited + 336) = v87;
      *(inited + 344) = v83;
      *(inited + 360) = v47;
      *(inited + 368) = 0x737574617473;
      *(inited + 376) = 0xE600000000000000;
      v53 = MEMORY[0x277D84C58];
      *(inited + 384) = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw];
      *(inited + 408) = v53;
      *(inited + 416) = 0x74616D726F666E69;
      *(inited + 424) = 0xEB00000000657669;
      *(inited + 432) = v82;
      *(inited + 456) = v53;
      *(inited + 464) = 0x746C75736572;
      *(inited + 472) = 0xE600000000000000;
      *(inited + 504) = v53;
      *(inited + 480) = v85;

      v54 = sub_22EFAAE54(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A8, &qword_22EFBC3C0);
      swift_arrayDestroy();
      v55 = *&v50[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerVendorId + 8];
      if (v55)
      {
        v56 = &v50[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerProductId];
        v57 = *&v50[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerProductId + 8];
        if (v57)
        {
          v58 = &v50[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerFirmwareVersion];
          v59 = *&v50[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerFirmwareVersion + 8];
          if (v59)
          {
            v60 = *&v50[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerVendorId];
            v89 = *v56;
            v91 = *v58;
            v61 = sub_22EFB648C();
            v63 = v62;
            v94 = MEMORY[0x277D837D0];
            *&v93 = v60;
            *(&v93 + 1) = v55;
            sub_22EF76360(&v93, v92);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v95 = v54;
            sub_22EF75884(v92, v61, v63, isUniquelyReferenced_nonNull_native);

            v65 = v95;
            v66 = sub_22EFB648C();
            v68 = v67;
            v69 = MEMORY[0x277D837D0];
            v94 = MEMORY[0x277D837D0];
            *&v93 = v89;
            *(&v93 + 1) = v57;
            sub_22EF76360(&v93, v92);
            v70 = swift_isUniquelyReferenced_nonNull_native();
            v95 = v65;
            sub_22EF75884(v92, v66, v68, v70);

            v71 = v95;
            v72 = sub_22EFB648C();
            v74 = v73;
            v94 = v69;
            *&v93 = v91;
            *(&v93 + 1) = v59;
            sub_22EF76360(&v93, v92);
            v75 = swift_isUniquelyReferenced_nonNull_native();
            v95 = v71;
            sub_22EF75884(v92, v72, v74, v75);

            v54 = v95;
          }
        }
      }

      v4 = sub_22EF7ECD0(v54);
      sub_22EF7C024(v10);

      return v4;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(v13);
    goto LABEL_30;
  }

  LODWORD(v18) = HIDWORD(v16) - v16;
  if (!__OFSUB__(HIDWORD(v16), v16))
  {
    v18 = v18;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

unint64_t sub_22EF7A180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = &v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier];
  v6 = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8];
  if (v6 && (v7 = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8]) != 0)
  {
    v37 = *v5;
    v38 = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
    v10 = sub_22EF76B24();
    v42 = word_22EFBCCE2[v10];
    v36 = asc_22EFC66CF[v10];
    v11 = v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state];
    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if (v11 < 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v12;
    }

    v41 = v13;
    v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state] = -127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22EFBC100;
    sub_22EFB648C();

    v15 = MEMORY[0x277D837D0];
    sub_22EFB668C();
    v16 = sub_22EFB648C();
    *(inited + 96) = v15;
    *(inited + 72) = v16;
    *(inited + 80) = v17;
    sub_22EFB668C();
    *(inited + 168) = v15;
    *(inited + 144) = a2;
    *(inited + 152) = a3;

    sub_22EFB668C();
    *(inited + 240) = MEMORY[0x277D839B0];
    *(inited + 216) = 1;
    sub_22EFB668C();
    v18 = MEMORY[0x277D84B78];
    *(inited + 312) = MEMORY[0x277D84B78];
    *(inited + 288) = v36;
    sub_22EFB668C();
    *(inited + 384) = v18;
    *(inited + 360) = v41;
    sub_22EFB668C();
    *(inited + 456) = v15;
    *(inited + 432) = v37;
    *(inited + 440) = v6;
    sub_22EFB668C();
    *(inited + 528) = v15;
    *(inited + 504) = v38;
    *(inited + 512) = v7;
    v39 = 0x737574617473;
    v40 = 0xE600000000000000;
    sub_22EFB668C();
    v19 = *&v4[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw];
    v20 = MEMORY[0x277D84C58];
    *(inited + 600) = MEMORY[0x277D84C58];
    *(inited + 576) = v19;
    sub_22EFB668C();
    *(inited + 672) = v20;
    *(inited + 648) = v42;
    v39 = sub_22EFB648C();
    v40 = v21;
    sub_22EFB668C();
    *(inited + 744) = MEMORY[0x277D839B0];
    *(inited + 720) = 0;
    v22 = sub_22EFAB468(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v23 = sub_22EFB626C();
    __swift_project_value_buffer(v23, qword_27DA9E518);
    v24 = v3;
    v25 = sub_22EFB624C();
    v22 = sub_22EFB65CC();

    if (os_log_type_enabled(v25, v22))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315394;
      if (v5[1])
      {
        v28 = *v5;
        v29 = v5[1];
      }

      else
      {
        v28 = 7104878;
        v29 = 0xE300000000000000;
      }

      v30 = sub_22EF9447C(v28, v29, &v39);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      if (*&v24[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8])
      {
        v31 = *&v24[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
        v32 = *&v24[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8];
      }

      else
      {
        v31 = 7104878;
        v32 = 0xE300000000000000;
      }

      v33 = sub_22EF9447C(v31, v32, &v39);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_22EEF5000, v25, v22, "Missing mandatory information in Dummy: ep:%s\n, readerId:%s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FC200](v27, -1, -1);
      MEMORY[0x2318FC200](v26, -1, -1);
    }

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v34 = 3;
    swift_willThrow();
  }

  return v22;
}

uint64_t sub_22EF7A71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_requestAuth))
  {
    v7 = -4091;
  }

  else
  {
    v7 = word_22EFD2100[*(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointNotFoundReason)];
  }

  v32 = v7;
  if (*(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (*(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) < 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = -127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A0, &qword_22EFBC3B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EFBC130;
  *(inited + 32) = sub_22EFB648C();
  *(inited + 40) = v11;
  v12 = sub_22EFB648C();
  v13 = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  *(inited + 72) = v13;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000022EFC65A0;
  *(inited + 96) = a2;
  *(inited + 104) = a3;
  *(inited + 120) = v13;
  *(inited + 128) = 0x726F727245646964;
  *(inited + 136) = 0xE800000000000000;
  v15 = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  *(inited + 168) = v15;
  *(inited + 176) = 0x646E616D6D6F63;
  *(inited + 184) = 0xE700000000000000;
  v16 = sub_22EF76B24();
  v17 = MEMORY[0x277D84B78];
  *(inited + 192) = asc_22EFC66CF[v16];
  *(inited + 216) = v17;
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x800000022EFC65C0;
  *(inited + 240) = v9;
  *(inited + 264) = v17;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  v18 = MEMORY[0x277D84C58];
  *(inited + 288) = *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw);
  *(inited + 312) = v18;
  *(inited + 320) = 0x74616D726F666E69;
  *(inited + 328) = 0xEB00000000657669;
  *(inited + 336) = *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_antiRelayResult);
  *(inited + 360) = v17;
  *(inited + 368) = 0x746C75736572;
  *(inited + 376) = 0xE600000000000000;
  *(inited + 408) = v18;
  *(inited + 384) = v32;
  *(inited + 416) = sub_22EFB648C();
  *(inited + 424) = v19;
  *(inited + 456) = v15;
  *(inited + 432) = 1;

  v20 = sub_22EFAAE54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A8, &qword_22EFBC3C0);
  swift_arrayDestroy();
  v21 = *(v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8);
  if (v21)
  {
    v22 = *(v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier);
    v23 = MEMORY[0x277D837D0];
    v35 = MEMORY[0x277D837D0];
    *&v34 = v22;
    *(&v34 + 1) = v21;
    sub_22EF76360(&v34, v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v20;
    sub_22EF75884(v33, 0xD000000000000012, 0x800000022EFC65E0, isUniquelyReferenced_nonNull_native);
    v20 = v36;
    v25 = v23;
  }

  else
  {
    v25 = MEMORY[0x277D837D0];
  }

  v26 = (v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier);
  v27 = *(v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8);
  if (v27)
  {
    v28 = *v26;
    v35 = v25;
    *&v34 = v28;
    *(&v34 + 1) = v27;
    sub_22EF76360(&v34, v33);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v36 = v20;
    sub_22EF75884(v33, 0xD000000000000010, 0x800000022EFC64E0, v29);
    v20 = v36;
  }

  v30 = sub_22EF7ECD0(v20);

  return v30;
}

id sub_22EF7AD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{
  sub_22EF7D668(a8);
  v8 = sub_22EFB641C();

  return v8;
}

uint64_t sub_22EF7ADDC()
{
  *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = 0x80;
  v1 = (v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8);
  *v1 = 0;
  v1[1] = 0;

  v3 = (v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier);
  v4 = *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8);
  *v3 = 0;
  v3[1] = 0;

  *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw) = -28672;
  *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointNotFoundReason) = 4;
  *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_antiRelayResult) = 0;
  *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_requestAuth) = 0;
  v5 = (v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerVendorId);
  v6 = *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerVendorId + 8);
  *v5 = 0;
  v5[1] = 0;

  v7 = (v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerProductId);
  v8 = *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerProductId + 8);
  *v7 = 0;
  v7[1] = 0;

  v9 = (v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerFirmwareVersion);
  v10 = *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerFirmwareVersion + 8);
  *v9 = 0;
  v9[1] = 0;
}

id sub_22EF7AF04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyonSwiftDecoder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for LyonConstants.ProtocolVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyonConstants.ProtocolVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LyonConstants.AntiRelayResult(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LyonConstants.AntiRelayResult(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LyonConstants.ReasonEndpointNotFound(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyonConstants.ReasonEndpointNotFound(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LyonConstants.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for LyonConstants.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22EF7B554(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_22EF7B580(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

unint64_t sub_22EF7B5C0()
{
  result = qword_27DA9E588;
  if (!qword_27DA9E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E588);
  }

  return result;
}

unint64_t sub_22EF7B618()
{
  result = qword_27DA9E590;
  if (!qword_27DA9E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E590);
  }

  return result;
}

unint64_t sub_22EF7B670()
{
  result = qword_27DA9E598;
  if (!qword_27DA9E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E598);
  }

  return result;
}

uint64_t sub_22EF7B6C4()
{
  v0 = sub_22EFB626C();
  __swift_allocate_value_buffer(v0, qword_27DA9E518);
  __swift_project_value_buffer(v0, qword_27DA9E518);
  return sub_22EFB625C();
}

uint64_t sub_22EF7B740(unsigned __int8 *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1) | (a1[3] << 16);
  v5 = *(a1 + 1);
  v6 = a1[16];
  v7 = a1[17];
  v8 = a1[18];
  v9 = a1[19];
  v10 = *(a1 + 5);
  v11 = *(a1 + 3);
  v12 = *(a1 + 4);
  v13 = *(a1 + 20);
  v14 = v3 | (v4 << 8) | (*(a1 + 1) << 32);
  v15 = v7 << 8;
  v16 = (v9 << 24) | (v10 << 32);
  v17 = (v3 | (v4 << 8));
  v18 = v4 >> 8;
  switch((v12 >> 60) & 3 | (4 * a1[42]))
  {
    case 1uLL:
      v38 = a2[2].u64[0];
      if (((v38 >> 60) & 3 | (4 * a2[2].i8[10])) != 1)
      {
        return 0;
      }

      if ((v3 ^ a2->u8[0]))
      {
        return 0;
      }

      v39 = v15 | v6 | (v8 << 16);
      v40 = a2[1].i64[1];
      v41 = a2[2].u16[4];
      if ((sub_22EF6E8C0(v5, v39 | v16, a2->i64[1], a2[1].u64[0]) & 1) == 0)
      {
        return 0;
      }

      v42 = sub_22EF6E8C0(v11, v12 & 0xCFFFFFFFFFFFFFFFLL, v40, v38 & 0xCFFFFFFFFFFFFFFFLL);
      v19 = 0;
      if ((v42 & 1) == 0 || v13 != v41)
      {
        return v19;
      }

      v43 = v41 >> 8;
      if (v13 >> 8 == 4)
      {
        if (v43 == 4)
        {
          return 1;
        }
      }

      else if (v43 != 4 && v13 >> 8 == v43)
      {
        return 1;
      }

      return 0;
    case 2uLL:
      v28 = a2[2].u64[0];
      if (((v28 >> 60) & 3 | (4 * a2[2].i8[10])) != 2)
      {
        return 0;
      }

      v53 = a2[1].i64[1];
      v55 = a2[1].u8[3];
      v56 = a2[1].u8[2];
      v29 = a2[1].u16[0];
      v54 = a2[2].i16[4];
      v30 = sub_22EF6E8C0(v14, v5, a2->i64[0], a2->u64[1]);
      v19 = 0;
      if ((v30 & 1) == 0)
      {
        return v19;
      }

      if ((v15 | v6) != v29)
      {
        return v19;
      }

      v19 = 0;
      if ((v8 ^ v56) & 1) != 0 || ((v9 ^ v55))
      {
        return v19;
      }

      v31 = sub_22EF6E8C0(v11, v12 & 0xCFFFFFFFFFFFFFFFLL, v53, v28 & 0xCFFFFFFFFFFFFFFFLL);
      v32 = (0x10000090007uLL >> (16 * v13)) == (0x10000090007uLL >> (16 * v54));
LABEL_45:
      if (v31)
      {
        return v32;
      }

      else
      {
        return 0;
      }

    case 3uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 3)
      {
        return 0;
      }

      v33 = a2[1].i64[0];
      v34 = a2[1].u64[1];
      if ((sub_22EF6E8C0(v14, v5, a2->i64[0], a2->u64[1]) & 1) == 0)
      {
        return 0;
      }

      v14 = v15 | v6 | (v8 << 16) | v16;
      v35 = v11;
      v36 = v33;
      v37 = v34;
      goto LABEL_40;
    case 4uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 4)
      {
        return 0;
      }

      goto LABEL_39;
    case 5uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) == 5)
      {
        goto LABEL_39;
      }

      return 0;
    case 6uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 6)
      {
        return 0;
      }

      v45 = a2[1].i8[0];
      v31 = sub_22EF6E8C0(v14, v5, a2->i64[0], a2->u64[1]);
      v32 = v6 ^ v45 ^ 1;
      goto LABEL_45;
    case 7uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 7)
      {
        return 0;
      }

      goto LABEL_39;
    case 8uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 8)
      {
        return 0;
      }

      return v3 == a2->u8[0];
    case 9uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 9)
      {
        return 0;
      }

LABEL_39:
      v36 = a2->i64[0];
      v37 = a2->u64[1];
      v35 = v5;
      goto LABEL_40;
    case 10uLL:
      v46 = a2[2].u64[0];
      if (((v46 >> 60) & 3 | (4 * a2[2].i8[10])) != 0xA)
      {
        return 0;
      }

      if (v17 != a2->u16[0])
      {
        return 0;
      }

      v47 = a2[1].i64[1];
      if ((sub_22EF6E8C0(v5, v15 | v6 | (v8 << 16) | v16, a2->i64[1], a2[1].u64[0]) & 1) == 0)
      {
        return 0;
      }

      v35 = v12 & 0xCFFFFFFFFFFFFFFFLL;
      v37 = v46 & 0xCFFFFFFFFFFFFFFFLL;
      v14 = v11;
      v36 = v47;
LABEL_40:

      return sub_22EF6E8C0(v14, v35, v36, v37);
    case 11uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 0xB)
      {
        return 0;
      }

      return v17 == a2->u16[0];
    case 12uLL:
      v24 = v15 | v6 | (v8 << 16) | v16 | v5 | v11 | v12;
      if (v13 || v24 | v14)
      {
        if (!v13 && (!v24 ? (v48 = v14 == 1) : (v48 = 0), v48))
        {
          v49 = a2[2].u64[0];
          if (((v49 >> 60) & 3 | (4 * a2[2].i8[10])) != 0xC || a2[2].i16[4] || a2->i64[0] != 1)
          {
            return 0;
          }
        }

        else if (!v13 && (!v24 ? (v50 = v14 == 2) : (v50 = 0), v50))
        {
          v49 = a2[2].u64[0];
          if (((v49 >> 60) & 3 | (4 * a2[2].i8[10])) != 0xC || a2[2].i16[4] || a2->i64[0] != 2)
          {
            return 0;
          }
        }

        else if (!v13 && (!v24 ? (v51 = v14 == 3) : (v51 = 0), v51))
        {
          v49 = a2[2].u64[0];
          if (((v49 >> 60) & 3 | (4 * a2[2].i8[10])) != 0xC || a2[2].i16[4] || a2->i64[0] != 3)
          {
            return 0;
          }
        }

        else
        {
          v49 = a2[2].u64[0];
          if (((v49 >> 60) & 3 | (4 * a2[2].i8[10])) != 0xC || a2[2].i16[4] || a2->i64[0] != 4)
          {
            return 0;
          }
        }

        v27 = (a2[1].i64[1] | a2[1].i64[0]);
        v25 = a2->i64[1] | v49;
      }

      else
      {
        v25 = a2[2].u64[0];
        if (((v25 >> 60) & 3 | (4 * a2[2].i8[10])) != 0xC || a2[2].i16[4])
        {
          return 0;
        }

        v26 = vorrq_s8(*a2, a2[1]);
        v27 = vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
      }

      return !(*&v27 | v25);
    default:
      if ((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10]))
      {
        return 0;
      }

      v19 = 0;
      if (((v3 ^ a2->u8[0]) & 1) != 0 || v18 != a2->u16[1])
      {
        return v19;
      }

      v20 = a2->i64[1];
      v21 = a2[1].u64[0];
      v22 = v6 | (v7 << 8) | (v8 << 16);
      if ((~v10 & 0xF0000000) == 0)
      {
        if (v21 >> 60 == 15)
        {
          sub_22EF7BFEC(a1, v57);
          sub_22EF7BFEC(a2, v57);
          sub_22EF708B4(v5, v22 | v16);
          return 1;
        }

        goto LABEL_85;
      }

      if (v21 >> 60 == 15)
      {
LABEL_85:
        sub_22EF7BFEC(a1, v57);
        sub_22EF7BFEC(a2, v57);
        sub_22EF708B4(v5, v22 | v16);
        sub_22EF708B4(v20, v21);
        return 0;
      }

      sub_22EF7BFEC(a1, v57);
      sub_22EF7BFEC(a2, v57);
      v52 = sub_22EF6E8C0(v5, v22 | v16, v20, v21);
      sub_22EF708B4(v20, v21);
      sub_22EF708B4(v5, v22 | v16);
      return (v52 & 1) != 0;
  }
}

BOOL sub_22EF7BDF4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) != 0x40)
      {
        return 0;
      }

      return ((a2 ^ a1) & 1) == 0;
    }

    if (a1 == 128)
    {
      if (a2 == 128)
      {
        return 1;
      }
    }

    else if (a2 == 129)
    {
      return 1;
    }
  }

  else if (a2 < 0x40u)
  {
    return ((a2 ^ a1) & 1) == 0;
  }

  return 0;
}

uint64_t sub_22EF7BE64(int a1)
{
  result = (a1 - 1);
  if (result >= 4u)
  {
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v2 = sub_22EFB626C();
    __swift_project_value_buffer(v2, qword_27DA9E518);
    v3 = sub_22EFB624C();
    v4 = sub_22EFB65CC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22EEF5000, v3, v4, "Unexpected reason for ep not found", v5, 2u);
      MEMORY[0x2318FC200](v5, -1, -1);
    }

    return 4;
  }

  return result;
}

uint64_t sub_22EF7BF54(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    return (0x302010004uLL >> (8 * a1));
  }

  else
  {
    return 4;
  }
}

uint64_t sub_22EF7BF80(uint64_t result)
{
  if (result >= 5u)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

unint64_t sub_22EF7BF94()
{
  result = qword_27DA9E410;
  if (!qword_27DA9E410)
  {
    type metadata accessor for ATLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E410);
  }

  return result;
}

unint64_t sub_22EF7C054()
{
  result = qword_27DA9E408;
  if (!qword_27DA9E408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA9E400, &unk_22EFBD180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E408);
  }

  return result;
}

uint64_t sub_22EF7C0B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((~result & 0xFF00000000) != 0)
  {
    return sub_22EF708B4(a3, a4);
  }

  return result;
}

uint64_t sub_22EF7C0D4(char a1)
{
  if (a1 + 1) < 0x19u && ((0x1F1DFF9u >> (a1 + 1)))
  {
    return byte_22EFBCD0A[(a1 + 1)];
  }

  if (qword_27DA9E370 != -1)
  {
    swift_once();
  }

  v3 = sub_22EFB626C();
  __swift_project_value_buffer(v3, qword_27DA9E518);
  v4 = sub_22EFB624C();
  v5 = sub_22EFB65CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D84B78];
    *(v8 + 16) = xmmword_22EFBB8C0;
    v10 = MEMORY[0x277D84BC0];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    *(v8 + 32) = a1;
    v11 = sub_22EFB649C();
    v13 = sub_22EF9447C(v11, v12, &v14);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_22EEF5000, v4, v5, "Unknown event type %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2318FC200](v7, -1, -1);
    MEMORY[0x2318FC200](v6, -1, -1);
  }

  return 20;
}

uint64_t sub_22EF7C2AC(char a1)
{
  if ((a1 + 1) > 0x18u)
  {
    return 20;
  }

  else
  {
    return byte_22EFBCD23[(a1 + 1)];
  }
}

uint64_t sub_22EF7C2D8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_38;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 < 1)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (!v6)
  {
    if (!BYTE6(a2))
    {
      goto LABEL_38;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_45:
    __break(1u);
    v9 = __OFSUB__(HIDWORD(a3), a3);
    v43 = HIDWORD(a3) - a3;
    if (v9)
    {
      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_65;
    }

    if (v43 < 1)
    {
      sub_22EF726E8();
      swift_allocError();
      swift_willThrow();
      sub_22EF708C8(v5, a2);
      return sub_22EF708C8(v57, a2);
    }

    v16 = 0;
    v18 = 0;
    v19 = 1;
    v15 = (sub_22EF7250C() & 1) == 0;
    v17 = 0x2000000000000000;
    v14 = a2;
LABEL_14:
    v20 = v14;
    result = sub_22EF708C8(v57, a2);
    *v4 = v5;
    *(v4 + 8) = v20;
    *(v4 + 16) = v15;
    *(v4 + 24) = v16;
    *(v4 + 32) = v17;
    *(v4 + 40) = v18;
    *(v4 + 42) = v19;
    return result;
  }

  if (HIDWORD(result) - result < 1)
  {
    goto LABEL_38;
  }

LABEL_11:
  v4 = a3;
  v11 = sub_22EF7250C();
  v12 = sub_22EF7C0D4(v11);
  if (v3)
  {
    return sub_22EF708C8(v57, a2);
  }

  v13 = v12;
  if (v12 == 20)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 3;
    v5 = 4;
    goto LABEL_14;
  }

  v21 = v57;
  v22 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v22)
    {
      v21 = BYTE6(a2);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v22 != 2)
  {
LABEL_38:
    sub_22EF726E8();
    swift_allocError();
LABEL_39:
    swift_willThrow();
    return sub_22EF708C8(v57, a2);
  }

  v23 = *(v57 + 16);
  v24 = *(v57 + 24);
  v9 = __OFSUB__(v24, v23);
  v21 = v24 - v23;
  if (!v9)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_22:
  v9 = __OFSUB__(HIDWORD(v21), v21);
  LODWORD(v21) = HIDWORD(v21) - v21;
  if (v9)
  {
    __break(1u);
    goto LABEL_63;
  }

  v21 = v21;
LABEL_24:
  if (v21 < 1)
  {
    goto LABEL_38;
  }

  v25 = sub_22EF7250C();
  if (v13 > 0xAu)
  {
LABEL_36:
    if (v25 != 16)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  if (((1 << v13) & 0x38) == 0)
  {
    if (((1 << v13) & 0x406) != 0)
    {
      if (v25 == 17)
      {
        goto LABEL_37;
      }

LABEL_32:
      LOBYTE(v5) = v25;
      if (qword_27DA9E370 == -1)
      {
LABEL_33:
        v26 = sub_22EFB626C();
        __swift_project_value_buffer(v26, qword_27DA9E518);
        v27 = sub_22EFB624C();
        v28 = sub_22EFB65CC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v59 = v30;
          *v29 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
          v31 = swift_allocObject();
          v32 = MEMORY[0x277D84B78];
          *(v31 + 16) = xmmword_22EFBB8C0;
          v33 = MEMORY[0x277D84BC0];
          *(v31 + 56) = v32;
          *(v31 + 64) = v33;
          *(v31 + 32) = v5;
          v34 = sub_22EFB649C();
          v36 = sub_22EF9447C(v34, v35, &v59);

          *(v29 + 4) = v36;
          _os_log_impl(&dword_22EEF5000, v27, v28, "Event version is different from expected: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v30);
          MEMORY[0x2318FC200](v30, -1, -1);
          MEMORY[0x2318FC200](v29, -1, -1);
        }

        type metadata accessor for ATLError(0);
        sub_22EF7BF94();
        swift_allocError();
        *v37 = 3;
        goto LABEL_39;
      }

LABEL_63:
      swift_once();
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (byte_2843B6828 != v25 && byte_2843B6829 != v25)
  {
    goto LABEL_32;
  }

LABEL_37:
  v5 = 0;
  v15 = 0;
  v38 = Data.popPrefix(_:)(2);
  v16 = v39;
  v40 = sub_22EFACD50(v38, v39);
  sub_22EF70B68(v38, v16);
  v56 = sub_22EF7F734(v38, v16, 0, 0);
  result = sub_22EF708C8(v38, v16);
  v41 = v57;
  v42 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v42)
    {
      result = BYTE6(a2);
LABEL_58:
      v51 = Data.popPrefix(_:)(result);
      v15 = v52;
      v53 = v51;
      v54 = (v40 & 0x1FF) == 1;
      sub_22EF708C8(v38, v16);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v5 = v54 & 0xFFFFFFFF0000FFFFLL | (v56 << 16);
      v14 = v53;
      goto LABEL_14;
    }

    goto LABEL_55;
  }

  if (v42 != 2)
  {
    result = 0;
    goto LABEL_58;
  }

  v45 = *(v57 + 16);
  v46 = *(v57 + 24);
  result = v46 - v45;
  if (!__OFSUB__(v46, v45))
  {
    goto LABEL_58;
  }

  __break(1u);
  v49 = v45 + 16;
  v47 = *(v45 + 16);
  v48 = *(v49 + 8);
  v9 = __OFSUB__(v48, v47);
  v41 = v48 - v47;
  if (!v9)
  {
    if (v41 < 1)
    {
      sub_22EF726E8();
      swift_allocError();
      swift_willThrow();
      sub_22EF708C8(v16, 0);
      sub_22EF708C8(v13, 0);
      return sub_22EF708C8(v57, a2);
    }

    v55 = sub_22EF7250C();
    v19 = 0;
    v18 = v38 | (sub_22EF7BE64(v55) << 8);
    v17 = 0x1000000000000000;
    v14 = v13;
    goto LABEL_14;
  }

  __break(1u);
LABEL_55:
  v9 = __OFSUB__(HIDWORD(v41), v41);
  v50 = HIDWORD(v41) - v41;
  if (!v9)
  {
    result = v50;
    goto LABEL_58;
  }

LABEL_65:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_22EF7CFF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_22EF7D058(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state;
  v9 = v4[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state];
  if (v9 >> 6)
  {
    if (v9 >> 6 == 1)
    {
      v38 = a3;
      v39 = a4;
      v10 = sub_22EF7D77C;
    }

    else
    {
      if (v9 != 128)
      {
        return sub_22EFAB468(MEMORY[0x277D84F90]);
      }

      v10 = sub_22EF7D7B4;
      v38 = a3;
      v39 = a4;
    }
  }

  else
  {
    v10 = sub_22EF7D798;
    v38 = a3;
    v39 = a4;
  }

  *(swift_allocObject() + 16) = v4;
  v11 = v4;
  sub_22EF70B68(a1, a2);
  sub_22EF7C2D8(a1, a2, v41);
  if (v5)
  {
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v23 = sub_22EFB626C();
    __swift_project_value_buffer(v23, qword_27DA9E518);
    sub_22EF70B68(a1, a2);
    v24 = sub_22EFB624C();
    v25 = sub_22EFB65CC();
    sub_22EF708C8(a1, a2);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40[0] = v27;
      *v26 = 136315138;
      v42 = sub_22EF83154(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      sub_22EF7C054();
      v28 = sub_22EFB646C();
      v30 = v29;

      v31 = sub_22EF9447C(v28, v30, v40);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_22EEF5000, v24, v25, "LyonDecoder eventHandler error: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x2318FC200](v27, -1, -1);
      MEMORY[0x2318FC200](v26, -1, -1);
    }

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v32 = 3;
    swift_willThrow();
  }

  else
  {
    v37 = v4;
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v12 = sub_22EFB626C();
    __swift_project_value_buffer(v12, qword_27DA9E518);
    v13 = v11;
    sub_22EF7BFEC(v41, v40);
    v14 = sub_22EFB624C();
    v15 = sub_22EFB65EC();
    sub_22EF7C024(v41);

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40[0] = v36;
      *v16 = 136315394;
      v35 = v15;
      LOBYTE(v42) = sub_22EF76B24();
      v17 = sub_22EFB64AC();
      v19 = sub_22EF9447C(v17, v18, v40);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      LOBYTE(v42) = v37[v8];
      v20 = sub_22EFB64AC();
      v22 = sub_22EF9447C(v20, v21, v40);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_22EEF5000, v14, v35, "Received event %s in state %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FC200](v36, -1, -1);
      MEMORY[0x2318FC200](v16, -1, -1);
    }

    v33 = v10(v41, v38, v39);

    sub_22EF7C024(v41);
    return v33;
  }
}

unint64_t sub_22EF7D54C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EFBBCB0;
  sub_22EFB648C();
  sub_22EFB668C();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_22EFB648C();
  sub_22EFB668C();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 1000;
  v1 = sub_22EFAB468(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_22EF7D668(const char *a1)
{
  if (qword_27DA9E370 != -1)
  {
    swift_once();
  }

  v2 = sub_22EFB626C();
  __swift_project_value_buffer(v2, qword_27DA9E518);
  v3 = sub_22EFB624C();
  v4 = sub_22EFB65CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22EEF5000, v3, v4, a1, v5, 2u);
    MEMORY[0x2318FC200](v5, -1, -1);
  }

  type metadata accessor for ATLError(0);
  sub_22EF7BF94();
  swift_allocError();
  *v6 = 2;
  return swift_willThrow();
}

uint64_t getEnumTagSinglePayload for LyonConstants.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyonConstants.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_24AppletTranslationLibrary13LyonConstantsO5EventO(uint64_t a1)
{
  v1 = 4 * (*(a1 + 42) & 3);
  if (v1 == 12)
  {
    return (*a1 + 12);
  }

  else
  {
    return (*(a1 + 32) >> 60) & 3 | v1;
  }
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22EF7D98C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F4 && *(a1 + 43))
  {
    return (*a1 + 1012);
  }

  v3 = ((*(a1 + 32) >> 60) & 3 | (4 * *(a1 + 42))) ^ 0x3FF;
  if (v3 >= 0x3F3)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22EF7D9E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F3)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 1012;
    if (a3 >= 0x3F4)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F4)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (-a2 & 3) << 60;
      *(result + 40) = 0;
      *(result + 42) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_22EF7DA5C(uint64_t result, unsigned int a2)
{
  if (a2 < 0xC)
  {
    *(result + 32) = *(result + 32) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 42) = a2 >> 2;
  }

  else
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 42) = 3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LyonConstants.TransactionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyonConstants.TransactionType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22EF7DC10()
{
  result = qword_27DA9E5E8;
  if (!qword_27DA9E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E5E8);
  }

  return result;
}

unint64_t sub_22EF7DC68()
{
  result = qword_27DA9E5F0;
  if (!qword_27DA9E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E5F0);
  }

  return result;
}

char *sub_22EF7DCC8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E600, &qword_22EFBD1B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_22EF7DDCC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E608, &qword_22EFBD1D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22EF7DED0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E450, &qword_22EFBBCC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EF7E000(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E638, &qword_22EFBCD68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EF7E10C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_22EF7E200(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E610, &qword_22EFBCD40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EF7E330(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_22EF7E464(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E628, &qword_22EFBCD58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22EF7E58C(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = sub_22EFB607C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_22EFB606C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22EFB614C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22EF7E630(uint64_t a1, unint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = HIBYTE(a2) & 0xF;
  v24[0] = a1;
  v24[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24[2] = 0;
  v25 = v2;

  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_22EFB64FC();
    if (!v4)
    {
      break;
    }

    v5 = sub_22EFB645C();
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_22EF7DCC8(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_22EF7DCC8((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      *&v3[8 * v9 + 32] = v5;
    }
  }

  v10 = *(v3 + 2);
  if (v10)
  {

    goto LABEL_27;
  }

  v11 = sub_22EFB64DC();

  if (v10 != v11)
  {
LABEL_27:

    result = 0;
    goto LABEL_28;
  }

  v12 = sub_22EF7E58C(v10 >> 1);
  v27 = v12;
  v28 = v13;
  if (v10)
  {
    v14 = 0;
    do
    {
      if (__OFADD__(v14, 2))
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14 + 2;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
      }

      v17 = *(v3 + 2);
      if (v14 >= v17)
      {
        goto LABEL_32;
      }

      if (v14 + 1 >= v17)
      {
        goto LABEL_33;
      }

      v18 = *&v3[8 * v14 + 40] | (16 * *&v3[8 * v14 + 32]);
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      if (v18 > 0xFF)
      {
        goto LABEL_35;
      }

      if (v28 >> 62 == 2)
      {
        v19 = *(v27 + 24);
      }

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
      v25 = v15;
      v26 = sub_22EF7E8F0();
      LOBYTE(v24[0]) = v18;
      v23 = *__swift_project_boxed_opaque_existential_1(v24, v15);
      sub_22EFB616C();
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v14 = v16;
    }

    while (v16 < v10);

    result = v27;
  }

  else
  {
    v22 = v12;

    result = v22;
  }

LABEL_28:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22EF7E8F0()
{
  result = qword_281477D58;
  if (!qword_281477D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281477D58);
  }

  return result;
}

uint64_t sub_22EF7E958(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    goto LABEL_36;
  }

  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v6)
    {
      if (__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
      }

      if (HIDWORD(a1) - a1 < v3)
      {
        goto LABEL_18;
      }
    }

    else if (BYTE6(a2) < v3)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (v6 != 2)
  {
    goto LABEL_17;
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v10 >= v3)
  {
LABEL_12:
    if (!v6)
    {
LABEL_34:
      v11 = a3;
      v16 = a3;
LABEL_30:
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (!v9)
      {
        if (v17 >= v11)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E678, &unk_22EFBCDE0);
          sub_22EF8225C();
          sub_22EF822B0();
          sub_22EFB601C();
          sub_22EF708C8(a1, a2);
          result = 0;
          goto LABEL_33;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v6 != 2)
    {
      v3 = a1;
      v11 = a1 + a3;
      if (__OFADD__(a1, a3))
      {
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    v3 = *(a1 + 16);
    v11 = v3 + a3;
    if (!__OFADD__(v3, a3))
    {
LABEL_29:
      v9 = __OFADD__(v3, a3);
      v16 = v3 + a3;
      if (!v9)
      {
        goto LABEL_30;
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    __break(1u);
LABEL_17:
    if (v3 > 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_18:
  sub_22EFB66DC();

  v12 = sub_22EFB683C();
  MEMORY[0x2318FB260](v12);

  MEMORY[0x2318FB260](0x6164206D6F726620, 0xEF206E656C206174);
  if (v6 > 1)
  {
    if (v6 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  else if (!v6)
  {
    goto LABEL_26;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_41;
  }

LABEL_26:
  sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
  v13 = sub_22EFB683C();
  MEMORY[0x2318FB260](v13);

  MEMORY[0x2318FB260](0x2074657366666F20, 0xE800000000000000);
  v14 = sub_22EFB683C();
  MEMORY[0x2318FB260](v14);

  sub_22EF74470(0xD000000000000012, 0x800000022EFC67A0, 8, 0);
  swift_willThrow();
  result = sub_22EF708C8(a1, a2);
LABEL_33:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF7ECD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E670, &unk_22EFBCDD0);
    v2 = sub_22EFB67FC();
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
    sub_22EF76370(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_22EF76360(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22EF76360(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22EF76360(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22EFB666C();
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
    result = sub_22EF76360(v33, (*(v2 + 56) + 32 * v10));
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

id sub_22EF7EFF4()
{
  result = [objc_allocWithZone(type metadata accessor for AlphonsoSwiftDecoder()) init];
  qword_27DA9E640 = result;
  return result;
}

id sub_22EF7F41C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlphonsoSwiftDecoder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22EF7F478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E3F0, &unk_22EFBBC40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22EFBCD70;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  result = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 72) = result;
  qword_27DA9E648 = v0;
  return result;
}

uint64_t sub_22EF7F56C()
{
  v0 = sub_22EFB626C();
  __swift_allocate_value_buffer(v0, qword_27DA9E650);
  __swift_project_value_buffer(v0, qword_27DA9E650);
  return sub_22EFB625C();
}

uint64_t sub_22EF7F5E8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = sub_22EFA9408(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_22EF74B3C(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_22EFA9408(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = sub_22EFB687C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v14;
    sub_22EF75BBC();
    v14 = v23;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_22EF75B50(v14, a2, a3, a1, v13);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 32 * v14;
  sub_22EF76360((v13[7] + 32 * v14), a4);
  result = sub_22EF76360(a1, (v13[7] + v21));
LABEL_11:
  *v6 = v13;
  return result;
}

uint64_t sub_22EF7F734(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3 + 2;
  if (__OFADD__(a3, 2))
  {
    goto LABEL_38;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_17;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (v10)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v11 < v4)
    {
      goto LABEL_18;
    }
  }

  else if (v7)
  {
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    if (HIDWORD(a1) - a1 < v4)
    {
LABEL_18:
      sub_22EFB66DC();

      v13 = sub_22EFB683C();
      MEMORY[0x2318FB260](v13);

      MEMORY[0x2318FB260](0x6164206D6F726620, 0xEF206E656C206174);
      if (v7 > 1)
      {
        if (v7 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
        {
          goto LABEL_26;
        }

        __break(1u);
      }

      else if (!v7)
      {
        goto LABEL_26;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_26:
        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        v14 = sub_22EFB683C();
        MEMORY[0x2318FB260](v14);

        MEMORY[0x2318FB260](0x2074657366666F20, 0xE800000000000000);
        v15 = sub_22EFB683C();
        MEMORY[0x2318FB260](v15);

        sub_22EF74470(0xD000000000000012, 0x800000022EFC67A0, 8, 0);
        result = swift_willThrow();
        goto LABEL_35;
      }

      goto LABEL_43;
    }
  }

  else if (BYTE6(a2) < v4)
  {
    goto LABEL_18;
  }

  if (!v7)
  {
    goto LABEL_36;
  }

  if (v7 != 2)
  {
    v4 = a1;
    v12 = a1 + a3;
    if (__OFADD__(a1, a3))
    {
      goto LABEL_44;
    }

    goto LABEL_29;
  }

  v4 = *(a1 + 16);
  v12 = v4 + a3;
  if (!__OFADD__(v4, a3))
  {
LABEL_29:
    v10 = __OFADD__(v4, a3);
    v17 = v4 + a3;
    if (!v10)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __break(1u);
LABEL_17:
  if (v4 > 0)
  {
    goto LABEL_18;
  }

LABEL_36:
  v12 = a3;
  v17 = a3;
LABEL_30:
  v10 = __OFADD__(v17, 2);
  v18 = v17 + 2;
  if (v10)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v18 < v12)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E678, &unk_22EFBCDE0);
  sub_22EF8225C();
  sub_22EF822B0();
  sub_22EFB601C();
  v19 = bswap32(0) >> 16;
  if (a4)
  {
    result = 0;
  }

  else
  {
    result = v19;
  }

LABEL_35:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF7FAA8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3 + 4;
  if (__OFADD__(a3, 4))
  {
    goto LABEL_38;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_17;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (v10)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v11 < v4)
    {
      goto LABEL_18;
    }
  }

  else if (v7)
  {
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    if (HIDWORD(a1) - a1 < v4)
    {
LABEL_18:
      sub_22EFB66DC();

      v13 = sub_22EFB683C();
      MEMORY[0x2318FB260](v13);

      MEMORY[0x2318FB260](0x6164206D6F726620, 0xEF206E656C206174);
      if (v7 > 1)
      {
        if (v7 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
        {
          goto LABEL_26;
        }

        __break(1u);
      }

      else if (!v7)
      {
        goto LABEL_26;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_26:
        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        v14 = sub_22EFB683C();
        MEMORY[0x2318FB260](v14);

        MEMORY[0x2318FB260](0x2074657366666F20, 0xE800000000000000);
        v15 = sub_22EFB683C();
        MEMORY[0x2318FB260](v15);

        sub_22EF74470(0xD000000000000012, 0x800000022EFC67A0, 8, 0);
        result = swift_willThrow();
        goto LABEL_35;
      }

      goto LABEL_43;
    }
  }

  else if (BYTE6(a2) < v4)
  {
    goto LABEL_18;
  }

  if (!v7)
  {
    goto LABEL_36;
  }

  if (v7 != 2)
  {
    v4 = a1;
    v12 = a1 + a3;
    if (__OFADD__(a1, a3))
    {
      goto LABEL_44;
    }

    goto LABEL_29;
  }

  v4 = *(a1 + 16);
  v12 = v4 + a3;
  if (!__OFADD__(v4, a3))
  {
LABEL_29:
    v10 = __OFADD__(v4, a3);
    v17 = v4 + a3;
    if (!v10)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __break(1u);
LABEL_17:
  if (v4 > 0)
  {
    goto LABEL_18;
  }

LABEL_36:
  v12 = a3;
  v17 = a3;
LABEL_30:
  v10 = __OFADD__(v17, 4);
  v18 = v17 + 4;
  if (v10)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v18 < v12)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E678, &unk_22EFBCDE0);
  sub_22EF8225C();
  sub_22EF822B0();
  sub_22EFB601C();
  v19 = bswap32(0);
  if (a4)
  {
    result = 0;
  }

  else
  {
    result = v19;
  }

LABEL_35:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF7FE18(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 == 5)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v8)
  {
    if (BYTE6(a2) != 5)
    {
      goto LABEL_12;
    }

LABEL_8:
    sub_22EF70B68(result, a2);
    v16 = sub_22EF7E958(v7, a2, 2);
    if (!v5)
    {
      v17 = v16;
      sub_22EF70B68(v7, a2);
      v18 = sub_22EF7F734(v7, a2, 3, 0);
      sub_22EF708C8(v7, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A0, &qword_22EFBC3B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22EFBC130;
      *(inited + 32) = sub_22EFB648C();
      *(inited + 40) = v20;
      v21 = sub_22EFB648C();
      v22 = MEMORY[0x277D837D0];
      *(inited + 48) = v21;
      *(inited + 56) = v23;
      *(inited + 72) = v22;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 120) = v22;
      *(inited + 88) = 0x800000022EFC65A0;
      *(inited + 96) = a3;
      *(inited + 104) = a4;
      *(inited + 128) = sub_22EFB648C();
      *(inited + 136) = v24;
      v25 = MEMORY[0x277D84B78];
      *(inited + 168) = MEMORY[0x277D84B78];
      *(inited + 144) = a5;
      *(inited + 176) = sub_22EFB648C();
      *(inited + 184) = v26;
      *(inited + 192) = v17;
      *(inited + 216) = v25;
      strcpy((inited + 224), "selectStatus");
      *(inited + 237) = 0;
      *(inited + 238) = -5120;
      *(inited + 264) = MEMORY[0x277D84C58];
      *(inited + 240) = v18;
      *(inited + 272) = sub_22EFB648C();
      *(inited + 280) = v27;
      *(inited + 312) = MEMORY[0x277D839B0];
      *(inited + 288) = 1;
      *(inited + 320) = sub_22EFB648C();
      *(inited + 328) = v28;
      v29 = MEMORY[0x277D83B88];
      *(inited + 360) = MEMORY[0x277D83B88];
      *(inited + 336) = 0;
      *(inited + 368) = sub_22EFB648C();
      *(inited + 376) = v30;
      *(inited + 408) = v29;
      *(inited + 384) = 0;
      *(inited + 416) = sub_22EFB648C();
      *(inited + 424) = v31;
      *(inited + 456) = v29;
      *(inited + 432) = 2000;

      v7 = sub_22EFAAE54(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A8, &qword_22EFBC3C0);
      swift_arrayDestroy();
    }

    return v7;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_30;
  }

  if (HIDWORD(result) - result == 5)
  {
    goto LABEL_8;
  }

LABEL_12:
  if (qword_27DA9E388 != -1)
  {
    swift_once();
  }

  v32 = sub_22EFB626C();
  __swift_project_value_buffer(v32, qword_27DA9E650);
  sub_22EF70B68(v7, a2);
  v33 = sub_22EFB624C();
  v34 = sub_22EFB65CC();
  if (!os_log_type_enabled(v33, v34))
  {
    sub_22EF708C8(v7, a2);
LABEL_27:

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v39 = 3;
    swift_willThrow();
    return v7;
  }

  result = swift_slowAlloc();
  *result = 134218240;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      v35 = 0;
      goto LABEL_26;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v11 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (!v11)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v35 = BYTE6(a2);
LABEL_26:
    *(result + 4) = v35;
    v38 = result;
    sub_22EF708C8(v7, a2);
    *(v38 + 12) = 256;
    *(v38 + 14) = 5;
    _os_log_impl(&dword_22EEF5000, v33, v34, "Start event length %ld (exp) %hhu", v38, 0xFu);
    MEMORY[0x2318FC200](v38, -1, -1);
    goto LABEL_27;
  }

  LODWORD(v35) = HIDWORD(v7) - v7;
  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    v35 = v35;
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_22EF80268(unint64_t result)
{
  if (result >> 61 != 3)
  {
    sub_22EF82314();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = 4;
    *(v14 + 24) = 3;
    swift_willThrow();
    goto LABEL_14;
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v2 = v1;
  v4 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  result = sub_22EFA9408(0x61655273656C6966, 0xE900000000000064);
  if ((v5 & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(*(v3 + 56) + 8 * result);
  if (v6 >> 61 != 1)
  {

    sub_22EF82314();
    swift_allocError();
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *v15 = 4;
    *(v15 + 24) = 3;
    swift_willThrow();
    goto LABEL_13;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_20;
  }

  v8 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v7 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_22EF70B68(v8, v7);
  result = sub_22EFA9408(0x69725773656C6966, 0xEC0000006E657474);
  if (v9)
  {
    v10 = *(*(v3 + 56) + 8 * result);
    v11 = v10 & 0x1FFFFFFFFFFFFFFFLL;

    if (v10 >> 61 == 1)
    {
      v12 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *(v11 + 24);
      sub_22EF70B68(*(v11 + 16), v13);

      sub_22EF70B68(v8, v7);
      v2 = sub_22EF7F734(v8, v7, 0, 0);
      sub_22EF708C8(v8, v7);
      if (!v1)
      {
        v17 = sub_22EF7F734(v12, v13, 0, 0);
        sub_22EF708C8(v12, v13);
        sub_22EF708C8(v8, v7);

        return v2 | (v17 << 16);
      }

      sub_22EF708C8(v8, v7);
      sub_22EF708C8(v12, v13);
LABEL_14:

      return v2;
    }

    sub_22EF82314();
    swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = 4;
    *(v16 + 24) = 3;
    swift_willThrow();
    sub_22EF708C8(v8, v7);
LABEL_13:

    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_22EF80528(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a2;
  v124 = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 == 19)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 19)
      {
        goto LABEL_8;
      }

LABEL_12:
      if (qword_27DA9E388 != -1)
      {
        swift_once();
      }

      v16 = sub_22EFB626C();
      __swift_project_value_buffer(v16, qword_27DA9E650);
      sub_22EF70B68(a1, v6);
      v17 = sub_22EFB624C();
      v18 = sub_22EFB65CC();
      if (!os_log_type_enabled(v17, v18))
      {
        sub_22EF708C8(a1, v6);
LABEL_30:

        type metadata accessor for ATLError(0);
        v6 = v32;
        sub_22EF7BF94();
        swift_allocError();
        *v33 = 3;
        swift_willThrow();
        goto LABEL_99;
      }

      v13 = swift_slowAlloc();
      *v13 = 134218240;
      if (v8 <= 1)
      {
        if (!v8)
        {
          v19 = BYTE6(v6);
LABEL_29:
          *(v13 + 4) = v19;
          v31 = v13;
          sub_22EF708C8(a1, v6);
          *(v31 + 12) = 256;
          *(v31 + 14) = 19;
          _os_log_impl(&dword_22EEF5000, v17, v18, "End event length %ld (exp) %hhu", v31, 0xFu);
          MEMORY[0x2318FC200](v31, -1, -1);
          goto LABEL_30;
        }

        LODWORD(v19) = HIDWORD(a1) - a1;
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v19 = v19;
          goto LABEL_29;
        }

        goto LABEL_106;
      }

      if (v8 != 2)
      {
        v19 = 0;
        goto LABEL_29;
      }

      v21 = *(a1 + 16);
      v20 = *(a1 + 24);
      v11 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v11)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_105;
  }

  if (BYTE6(a2) != 19)
  {
    goto LABEL_12;
  }

LABEL_8:
  v107 = a3;
  v109 = a5;
  v110 = a4;
  sub_22EF70B68(a1, a2);
  LODWORD(v13) = sub_22EF7F734(a1, v6, 2, 0);
  v8 = v5;
  if (v5)
  {
    v14 = a1;
    v15 = v6;
LABEL_98:
    sub_22EF708C8(v14, v15);
    goto LABEL_99;
  }

LABEL_23:
  v106 = v13;
  sub_22EF708C8(a1, v6);
  v22 = sub_22EFB618C();
  v23 = MEMORY[0x277CC9318];
  v24 = MEMORY[0x277CC9300];
  v116 = MEMORY[0x277CC9318];
  v117 = MEMORY[0x277CC9300];
  v114 = v22;
  v115 = v25;
  v26 = __swift_project_boxed_opaque_existential_1(&v114, MEMORY[0x277CC9318]);
  v27 = *v26;
  v28 = v26[1];
  v29 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v29 != 2)
    {
      memset(v111, 0, 14);
      v30 = v111;
      goto LABEL_51;
    }

    v35 = *(v27 + 16);
    v34 = *(v27 + 24);
    v36 = sub_22EFB603C();
    if (v36)
    {
      v37 = sub_22EFB605C();
      if (__OFSUB__(v35, v37))
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v36 += v35 - v37;
    }

    v11 = __OFSUB__(v34, v35);
    v38 = v34 - v35;
    if (v11)
    {
      goto LABEL_108;
    }

    v39 = sub_22EFB604C();
    if (v39 >= v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = v39;
    }
  }

  else
  {
    if (!v29)
    {
      v111[0] = *v26;
      LOWORD(v111[1]) = v28;
      BYTE2(v111[1]) = BYTE2(v28);
      BYTE3(v111[1]) = BYTE3(v28);
      BYTE4(v111[1]) = BYTE4(v28);
      BYTE5(v111[1]) = BYTE5(v28);
      v30 = v111 + BYTE6(v28);
LABEL_51:
      sub_22EF72654(v111, v30, &v112);
      goto LABEL_52;
    }

    v41 = v27;
    v42 = v27 >> 32;
    v43 = v42 - v41;
    if (v42 < v41)
    {
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v36 = sub_22EFB603C();
    if (v36)
    {
      v44 = sub_22EFB605C();
      if (__OFSUB__(v41, v44))
      {
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
      }

      v36 += v41 - v44;
    }

    v45 = sub_22EFB604C();
    if (v45 >= v43)
    {
      v40 = v43;
    }

    else
    {
      v40 = v45;
    }
  }

  v46 = &v36[v40];
  if (v36)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  sub_22EF72654(v36, v47, &v112);
  v24 = MEMORY[0x277CC9300];
LABEL_52:
  v49 = v112;
  v48 = v113;
  sub_22EF70B68(v112, v113);
  __swift_destroy_boxed_opaque_existential_0Tm(&v114);
  v50 = sub_22EFB618C();
  v116 = v23;
  v117 = v24;
  v114 = v50;
  v115 = v51;
  v52 = __swift_project_boxed_opaque_existential_1(&v114, v23);
  v53 = *v52;
  v54 = v52[1];
  v55 = v54 >> 62;
  if ((v54 >> 62) > 1)
  {
    if (v55 != 2)
    {
      memset(v111, 0, 14);
      v56 = v111;
      goto LABEL_80;
    }

    v104 = v49;
    v57 = v48;
    v59 = *(v53 + 16);
    v58 = *(v53 + 24);
    v60 = sub_22EFB603C();
    if (v60)
    {
      v61 = sub_22EFB605C();
      if (__OFSUB__(v59, v61))
      {
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v60 += v59 - v61;
    }

    v11 = __OFSUB__(v58, v59);
    v62 = v58 - v59;
    if (v11)
    {
      goto LABEL_110;
    }

    v63 = sub_22EFB604C();
    if (v63 >= v62)
    {
      v64 = v62;
    }

    else
    {
      v64 = v63;
    }

    v65 = &v60[v64];
    if (v60)
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    sub_22EF72654(v60, v66, &v112);
    v48 = v57;
LABEL_78:
    v49 = v104;
    goto LABEL_81;
  }

  if (v55)
  {
    v104 = v49;
    v67 = v48;
    v68 = v53;
    v69 = v53 >> 32;
    v70 = v69 - v68;
    if (v69 < v68)
    {
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v71 = sub_22EFB603C();
    if (v71)
    {
      v72 = sub_22EFB605C();
      if (__OFSUB__(v68, v72))
      {
        goto LABEL_114;
      }

      v71 += v68 - v72;
    }

    v48 = v67;
    v73 = sub_22EFB604C();
    if (v73 >= v70)
    {
      v74 = v70;
    }

    else
    {
      v74 = v73;
    }

    v75 = &v71[v74];
    if (v71)
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    sub_22EF72654(v71, v76, &v112);
    goto LABEL_78;
  }

  v111[0] = *v52;
  LOWORD(v111[1]) = v54;
  BYTE2(v111[1]) = BYTE2(v54);
  BYTE3(v111[1]) = BYTE3(v54);
  BYTE4(v111[1]) = BYTE4(v54);
  BYTE5(v111[1]) = BYTE5(v54);
  v56 = v111 + BYTE6(v54);
LABEL_80:
  sub_22EF72654(v111, v56, &v112);
LABEL_81:
  v78 = v112;
  v77 = v113;
  __swift_destroy_boxed_opaque_existential_0Tm(&v114);
  v118 = 225;
  v119 = 0;
  v120 = &unk_2843B68F8;
  v121 = 1;
  v122 = 64;
  v123 = MEMORY[0x277D84F90];
  v114 = v78;
  v115 = v77;
  sub_22EF70B68(v78, v77);
  sub_22EF70B68(v78, v77);
  v79 = sub_22EFACFBC(&v114, &v118);
  if (v8)
  {
    sub_22EF708C8(v49, v48);
    sub_22EF708C8(v78, v77);
    sub_22EF708C8(v49, v48);
    sub_22EF708C8(v78, v77);
    v14 = v114;
    v15 = v115;
    goto LABEL_98;
  }

  v80 = v79;
  sub_22EF708C8(v114, v115);
  v81 = sub_22EF80268(v80);
  sub_22EF708C8(v78, v77);
  sub_22EF70B68(a1, v6);
  v82 = sub_22EF7E958(a1, v6, 18);
  v105 = v82;
  if ((v82 & 8) == 0)
  {
    v83 = (v82 & 4) == 0;
    if (v106 == 36864)
    {
      goto LABEL_96;
    }

LABEL_88:
    v84 = 1;
    v85 = sub_22EFB619C();
    sub_22EF708C8(v49, v48);
    if (v83 && v85 == 32)
    {
      v84 = (~v106 & 0x63C0) != 0 && v106 != 36864;
    }

    goto LABEL_97;
  }

  if (v106 != 36864)
  {
    v83 = 0;
    goto LABEL_88;
  }

LABEL_96:
  sub_22EF708C8(v49, v48);
  v84 = 0;
LABEL_97:
  sub_22EF70B68(v49, v48);
  v87 = sub_22EF7FAA8(v49, v48, 0, 0);
  sub_22EF708C8(v49, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A0, &qword_22EFBC3B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EFBC100;
  *(inited + 32) = sub_22EFB648C();
  *(inited + 40) = v91;
  v92 = sub_22EFB648C();
  v93 = MEMORY[0x277D837D0];
  *(inited + 48) = v92;
  *(inited + 56) = v94;
  *(inited + 72) = v93;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 120) = v93;
  *(inited + 88) = 0x800000022EFC65A0;
  *(inited + 96) = v107;
  *(inited + 104) = v110;
  *(inited + 128) = sub_22EFB648C();
  *(inited + 136) = v95;
  v108 = v48;
  v96 = MEMORY[0x277D84B78];
  *(inited + 144) = v109;
  *(inited + 168) = v96;
  *(inited + 176) = 0x737574617473;
  *(inited + 184) = 0xE600000000000000;
  v97 = MEMORY[0x277D84C58];
  *(inited + 192) = v106;
  *(inited + 216) = v97;
  *(inited + 224) = 0x646E616D6D6F63;
  *(inited + 232) = 0xE700000000000000;
  *(inited + 264) = MEMORY[0x277D84CC0];
  *(inited + 240) = v87;
  *(inited + 272) = sub_22EFB648C();
  *(inited + 280) = v98;
  *(inited + 312) = v97;
  *(inited + 288) = v81;
  *(inited + 320) = sub_22EFB648C();
  *(inited + 328) = v99;
  *(inited + 336) = HIWORD(v81);
  *(inited + 360) = v97;
  *(inited + 368) = 0xD000000000000012;
  *(inited + 376) = 0x800000022EFC67E0;
  *(inited + 384) = v105;
  *(inited + 408) = MEMORY[0x277D84B78];
  *(inited + 416) = 0x726F727245646964;
  *(inited + 424) = 0xE800000000000000;
  v100 = MEMORY[0x277D839B0];
  *(inited + 432) = v84;
  *(inited + 456) = v100;
  *(inited + 464) = 0x746C75736572;
  *(inited + 472) = 0xE600000000000000;
  v101 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  if (v84)
  {
    v102 = 0;
  }

  else
  {
    v102 = 64;
  }

  v103 = [v101 initWithUnsignedShort_];
  *(inited + 504) = sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
  *(inited + 480) = v103;
  v6 = sub_22EFAAE54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A8, &qword_22EFBC3C0);
  swift_arrayDestroy();
  sub_22EF708C8(v78, v77);
  sub_22EF708C8(v49, v108);
LABEL_99:
  v88 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_22EF81010(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a2;
  v7 = result;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 == 6)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v8)
  {
    if (BYTE6(a2) != 6)
    {
      goto LABEL_12;
    }

LABEL_8:
    sub_22EF70B68(result, a2);
    v16 = sub_22EF7E958(v7, v6, 2);
    if (!v5)
    {
      v17 = v16;
      sub_22EF70B68(v7, v6);
      v18 = sub_22EF7F734(v7, v6, 3, 0);
      sub_22EF708C8(v7, v6);
      sub_22EF70B68(v7, v6);
      v19 = sub_22EF7E958(v7, v6, 5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A0, &qword_22EFBC3B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22EFBCD80;
      *(inited + 32) = sub_22EFB648C();
      *(inited + 40) = v21;
      v22 = sub_22EFB648C();
      v23 = MEMORY[0x277D837D0];
      *(inited + 48) = v22;
      *(inited + 56) = v24;
      *(inited + 72) = v23;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 120) = v23;
      *(inited + 88) = 0x800000022EFC65A0;
      *(inited + 96) = a3;
      *(inited + 104) = a4;
      *(inited + 128) = sub_22EFB648C();
      *(inited + 136) = v25;
      v26 = MEMORY[0x277D84B78];
      *(inited + 168) = MEMORY[0x277D84B78];
      *(inited + 144) = a5;
      *(inited + 176) = sub_22EFB648C();
      *(inited + 184) = v27;
      *(inited + 216) = v26;
      *(inited + 192) = v17;
      *(inited + 224) = sub_22EFB648C();
      *(inited + 232) = v28;
      *(inited + 264) = MEMORY[0x277D84C58];
      *(inited + 240) = v18;
      *(inited + 272) = sub_22EFB648C();
      *(inited + 280) = v29;
      *(inited + 312) = v26;
      *(inited + 288) = v19;

      v6 = sub_22EFAAE54(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A8, &qword_22EFBC3C0);
      swift_arrayDestroy();
    }

    return v6;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_30;
  }

  if (HIDWORD(result) - result == 6)
  {
    goto LABEL_8;
  }

LABEL_12:
  if (qword_27DA9E388 != -1)
  {
    swift_once();
  }

  v30 = sub_22EFB626C();
  __swift_project_value_buffer(v30, qword_27DA9E650);
  sub_22EF70B68(v7, v6);
  v31 = sub_22EFB624C();
  v32 = sub_22EFB65CC();
  if (!os_log_type_enabled(v31, v32))
  {
    sub_22EF708C8(v7, v6);
LABEL_27:

    type metadata accessor for ATLError(0);
    v6 = v37;
    sub_22EF7BF94();
    swift_allocError();
    *v38 = 3;
    swift_willThrow();
    return v6;
  }

  result = swift_slowAlloc();
  *result = 134218240;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      v33 = 0;
      goto LABEL_26;
    }

    v35 = *(v7 + 16);
    v34 = *(v7 + 24);
    v11 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (!v11)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v33 = BYTE6(v6);
LABEL_26:
    *(result + 4) = v33;
    v36 = result;
    sub_22EF708C8(v7, v6);
    *(v36 + 12) = 256;
    *(v36 + 14) = 6;
    _os_log_impl(&dword_22EEF5000, v31, v32, "Start event length %ld (exp) %hhu", v36, 0xFu);
    MEMORY[0x2318FC200](v36, -1, -1);
    goto LABEL_27;
  }

  LODWORD(v33) = HIDWORD(v7) - v7;
  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    v33 = v33;
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_22EF8141C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_8;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 >= 2)
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
LABEL_25:
    v24 = sub_22EFB626C();
    __swift_project_value_buffer(v24, qword_27DA9E650);
    v13 = sub_22EFB624C();
    v14 = sub_22EFB65CC();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Invalid hci event version";
LABEL_12:
    _os_log_impl(&dword_22EEF5000, v13, v14, v16, v15, 2u);
    MEMORY[0x2318FC200](v15, -1, -1);
LABEL_13:

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v17 = 3;
    return swift_willThrow();
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_16;
      }

LABEL_8:
      if (qword_27DA9E388 != -1)
      {
        swift_once();
      }

      v12 = sub_22EFB626C();
      __swift_project_value_buffer(v12, qword_27DA9E650);
      v13 = sub_22EFB624C();
      v14 = sub_22EFB65CC();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_13;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Invalid event data";
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22EF70B68(a1, a2);
  result = sub_22EF7E958(a1, a2, 0);
  if (!v4)
  {
    v21 = result;
    sub_22EF70B68(a1, a2);
    v22 = sub_22EF7E958(a1, a2, 1);
    if (v22 == 8)
    {
      if (v21 > 2u)
      {
        if (v21 == 3)
        {
          v23 = sub_22EF81010(a1, a2, a3, a4, 8);
          goto LABEL_37;
        }

        if (v21 == 18)
        {
          return sub_22EFAB468(MEMORY[0x277D84F90]);
        }
      }

      else
      {
        if (v21 == 1)
        {
          v23 = sub_22EF7FE18(a1, a2, a3, a4, 8);
          goto LABEL_37;
        }

        if (v21 == 2)
        {
          v23 = sub_22EF80528(a1, a2, a3, a4, 8);
LABEL_37:
          v33 = sub_22EF7ECD0(v23);

          return v33;
        }
      }

      if (qword_27DA9E388 != -1)
      {
        swift_once();
      }

      v25 = sub_22EFB626C();
      __swift_project_value_buffer(v25, qword_27DA9E650);
      sub_22EF70B68(a1, a2);
      v26 = sub_22EFB624C();
      v27 = sub_22EFB65AC();
      sub_22EF708C8(a1, a2);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v34 = v29;
        *v28 = 16777730;
        *(v28 + 4) = v21;
        *(v28 + 5) = 2080;
        v30 = sub_22EFB613C();
        v32 = sub_22EF9447C(v30, v31, &v34);

        *(v28 + 7) = v32;
        _os_log_impl(&dword_22EEF5000, v26, v27, "Unkown event with event type %hhu and contents %s", v28, 0xFu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x2318FC200](v29, -1, -1);
        MEMORY[0x2318FC200](v28, -1, -1);
      }

      return sub_22EFAB468(MEMORY[0x277D84F90]);
    }

    if (qword_27DA9E388 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

  return result;
}

uint64_t sub_22EF8189C(void *a1, uint64_t a2, unint64_t a3)
{
  v84 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A0, &qword_22EFBC3B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EFBBCB0;
  *(inited + 32) = sub_22EFB648C();
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 0;
  *(inited + 80) = sub_22EFB648C();
  *(inited + 88) = v8;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E668, &unk_22EFBCDC0);
  *(inited + 96) = MEMORY[0x277D84F90];
  v9 = sub_22EFAAE54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A8, &qword_22EFBC3C0);
  swift_arrayDestroy();
  v78 = v9;

  v10 = sub_22EF7E630(a2, a3);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  v12 = v10;
  v13 = v11;
  v14 = sub_22EFB61BC();
  sub_22EF708B4(v12, v13);
  v15 = SelectByNameCmd(v14);

  v16 = sub_22EFB61DC();
  v18 = v17;

  v19 = sub_22EFB61BC();
  *&v81[0] = 0;
  v20 = [a1 transceiveAndCheckSW:v19 error:v81];

  v21 = *&v81[0];
  if (!v20)
  {
    v65 = v21;
    v66 = sub_22EFB60EC();

    swift_willThrow();
    if (qword_27DA9E388 != -1)
    {
      swift_once();
    }

    v67 = sub_22EFB626C();
    __swift_project_value_buffer(v67, qword_27DA9E650);

    v68 = sub_22EFB624C();
    v69 = sub_22EFB65CC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = v16;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v81[0] = v72;
      *v71 = 136315138;
      *(v71 + 4) = sub_22EF9447C(a2, a3, v81);
      _os_log_impl(&dword_22EEF5000, v68, v69, "Could not SELECT %s while getting applet state and history", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      MEMORY[0x2318FC200](v72, -1, -1);
      v73 = v71;
      v16 = v70;
      MEMORY[0x2318FC200](v73, -1, -1);
    }

    v64 = sub_22EFAB468(MEMORY[0x277D84F90]);
    sub_22EF708C8(v16, v18);

    goto LABEL_25;
  }

  v76 = v16;
  v22 = sub_22EFB61DC();
  v24 = v23;

  sub_22EF708C8(v22, v24);
  v82 = sub_22EFAB164(&unk_2843B6998);
  v83 = v25;
  sub_22EFB619C();
  sub_22EFB61AC();
  v26 = sub_22EFB61BC();
  if (qword_27DA9E380 != -1)
  {
    swift_once();
  }

  sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
  v27 = sub_22EFB653C();
  *&v81[0] = 0;
  v28 = [a1 transceiveAndCheckSW:v26 inArray:v27 keepingSW:1 error:v81];

  v29 = *&v81[0];
  if (!v28)
  {
    v64 = v29;
    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708C8(v76, v18);
LABEL_24:
    sub_22EF708C8(v82, v83);

    goto LABEL_25;
  }

  v30 = sub_22EFB61DC();
  v32 = v31;

  sub_22EFB619C();
  sub_22EFB61AC();
  v33 = sub_22EFB61BC();
  v34 = sub_22EFB653C();
  *&v81[0] = 0;
  v35 = [a1 transceiveAndCheckSW:v33 inArray:v34 keepingSW:1 error:v81];

  v36 = *&v81[0];
  if (!v35)
  {
    v64 = v36;
    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708C8(v76, v18);
    sub_22EF708C8(v30, v32);
    goto LABEL_24;
  }

  v37 = sub_22EFB61DC();
  v39 = v38;

  v40 = sub_22EFB61BC();
  SW = GetSW(v40);

  v42 = v32;
  if (SW == 25536)
  {
    v80 = MEMORY[0x277D839B0];
    LOBYTE(v79) = 1;
    v43 = sub_22EFB648C();
    sub_22EF7F5E8(&v79, v43, v44, v81);

    sub_22EF731F0(v81);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    *&v79 = &unk_2843B69C0;
    v45 = sub_22EFB648C();
    sub_22EF7F5E8(&v79, v45, v46, v81);

    sub_22EF731F0(v81);
  }

  v47 = sub_22EFB61BC();
  v48 = GetSW(v47);

  if (v48 != 25536)
  {
    goto LABEL_16;
  }

  v80 = MEMORY[0x277D839B0];
  LOBYTE(v79) = 1;
  v49 = sub_22EFB648C();
  sub_22EF7F5E8(&v79, v49, v50, v81);

  sub_22EF731F0(v81);
  v51 = sub_22EFB648C();
  v53 = v52;
  v54 = v78;
  if (*(v78 + 16))
  {
    v55 = sub_22EFA9408(v51, v52);
    v57 = v56;

    if (v57)
    {
      sub_22EF76370(*(v78 + 56) + 32 * v55, &v79);
      sub_22EF76360(&v79, v81);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      swift_dynamicCast();
      v53 = v77;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_13:
        v59 = *(v53 + 2);
        v58 = *(v53 + 3);
        if (v59 >= v58 >> 1)
        {
          v53 = sub_22EF7DED0((v58 > 1), v59 + 1, 1, v53);
        }

        *(v53 + 2) = v59 + 1;
        v60 = &v53[16 * v59];
        *(v60 + 4) = 0xD00000000000001ELL;
        *(v60 + 5) = 0x800000022EFC6760;
        v80 = v54;
        *&v79 = v53;
        v61 = sub_22EFB648C();
        v63 = v62;

        sub_22EF7F5E8(&v79, v61, v63, v81);

        sub_22EF731F0(v81);

        v42 = v32;
LABEL_16:
        v64 = sub_22EF7ECD0(v78);
        sub_22EF708C8(v76, v18);
        sub_22EF708C8(v37, v39);
        sub_22EF708C8(v30, v42);
        sub_22EF708C8(v82, v83);

LABEL_25:
        v74 = *MEMORY[0x277D85DE8];
        return v64;
      }
    }

    else
    {
      __break(1u);
    }

    v53 = sub_22EF7DED0(0, *(v53 + 2) + 1, 1, v53);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_22EF82140()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EFBBCB0;
  sub_22EFB648C();
  sub_22EFB668C();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_22EFB648C();
  sub_22EFB668C();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 2000;
  v1 = sub_22EFAB468(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_22EF8225C()
{
  result = qword_27DA9E680;
  if (!qword_27DA9E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E680);
  }

  return result;
}

unint64_t sub_22EF822B0()
{
  result = qword_27DA9E688;
  if (!qword_27DA9E688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA9E678, &unk_22EFBCDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E688);
  }

  return result;
}

unint64_t sub_22EF82314()
{
  result = qword_27DA9E690;
  if (!qword_27DA9E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E690);
  }

  return result;
}

uint64_t sub_22EF82368(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;

  v5 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
    sub_22EF76370(v11, v10);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      return v9;
    }

    else
    {
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v10[0] = 0;
      v10[1] = 0xE000000000000000;
      sub_22EFB66DC();

      strcpy(v10, "Value for key ");
      HIBYTE(v10[1]) = -18;
      MEMORY[0x2318FB260](a1, a2);
      MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E700, &unk_22EFBD210);
      v7 = sub_22EFB695C();
      MEMORY[0x2318FB260](v7);

      MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      swift_getDynamicType();
      v8 = sub_22EFB695C();
      MEMORY[0x2318FB260](v8);

      sub_22EF74470(v10[0], v10[1], 8, 0);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    sub_22EFB66DC();

    MEMORY[0x2318FB260](a1, a2);
    sub_22EF74470(0xD000000000000016, 0x800000022EFC6C70, 8, 0);
    return swift_willThrow();
  }
}

uint64_t sub_22EF8261C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v13[0] = a1;
  v13[1] = a2;

  v8 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
    sub_22EF76370(v14, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6F0, &qword_22EFBD200);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v14);
      *a3 = v12;
    }

    else
    {
      sub_22EFA33C4(0, 0xB000000000000000);
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v13[0] = 0;
      v13[1] = 0xE000000000000000;
      sub_22EFB66DC();

      strcpy(v13, "Value for key ");
      HIBYTE(v13[1]) = -18;
      MEMORY[0x2318FB260](a1, a2);
      MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6F8, &qword_22EFBD208);
      v10 = sub_22EFB695C();
      MEMORY[0x2318FB260](v10);

      MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      swift_getDynamicType();
      v11 = sub_22EFB695C();
      MEMORY[0x2318FB260](v11);

      sub_22EF74470(v13[0], v13[1], 8, 0);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    sub_22EFB66DC();

    MEMORY[0x2318FB260](a1, a2);
    sub_22EF74470(0xD000000000000016, 0x800000022EFC6C70, 8, 0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22EF82904(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;

  v5 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
    sub_22EF76370(v10, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6E0, &qword_22EFBD1F0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      return v10[5];
    }

    else
    {
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v9[0] = 0;
      v9[1] = 0xE000000000000000;
      sub_22EFB66DC();

      strcpy(v9, "Value for key ");
      HIBYTE(v9[1]) = -18;
      MEMORY[0x2318FB260](a1, a2);
      MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6E8, &qword_22EFBD1F8);
      v7 = sub_22EFB695C();
      MEMORY[0x2318FB260](v7);

      MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      swift_getDynamicType();
      v8 = sub_22EFB695C();
      MEMORY[0x2318FB260](v8);

      sub_22EF74470(v9[0], v9[1], 8, 0);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v10);
    }
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    sub_22EFB66DC();

    MEMORY[0x2318FB260](a1, a2);
    sub_22EF74470(0xD000000000000016, 0x800000022EFC6C70, 8, 0);
    return swift_willThrow();
  }
}

uint64_t sub_22EF82BC8(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;

  v5 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
    sub_22EF76370(v11, v10);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      return v9;
    }

    else
    {
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v10[0] = 0;
      v10[1] = 0xE000000000000000;
      sub_22EFB66DC();

      strcpy(v10, "Value for key ");
      HIBYTE(v10[1]) = -18;
      MEMORY[0x2318FB260](a1, a2);
      MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E730, &qword_22EFBD248);
      v7 = sub_22EFB695C();
      MEMORY[0x2318FB260](v7);

      MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      swift_getDynamicType();
      v8 = sub_22EFB695C();
      MEMORY[0x2318FB260](v8);

      sub_22EF74470(v10[0], v10[1], 8, 0);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    sub_22EFB66DC();

    MEMORY[0x2318FB260](a1, a2);
    sub_22EF74470(0xD000000000000016, 0x800000022EFC6C70, 8, 0);
    return swift_willThrow();
  }
}

uint64_t sub_22EF82E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v13[0] = a1;
  v13[1] = a2;

  v8 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
    sub_22EF76370(v14, v13);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v14);
      *a3 = v12;
    }

    else
    {
      sub_22EF708B4(0, 0xF000000000000000);
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v13[0] = 0;
      v13[1] = 0xE000000000000000;
      sub_22EFB66DC();

      strcpy(v13, "Value for key ");
      HIBYTE(v13[1]) = -18;
      MEMORY[0x2318FB260](a1, a2);
      MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E708, &qword_22EFBD220);
      v10 = sub_22EFB695C();
      MEMORY[0x2318FB260](v10);

      MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      swift_getDynamicType();
      v11 = sub_22EFB695C();
      MEMORY[0x2318FB260](v11);

      sub_22EF74470(v13[0], v13[1], 8, 0);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    sub_22EFB66DC();

    MEMORY[0x2318FB260](a1, a2);
    sub_22EF74470(0xD000000000000016, 0x800000022EFC6C70, 8, 0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22EF83154(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v32 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v47 = MEMORY[0x277D84F90];
    v33 = a2 >> 62;
    sub_22EF9AAC8(0, v5 & ~(v5 >> 63), 0);
    v9 = v33;
    if (v33)
    {
      if (v33 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v34 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v47;
    v31 = &v35 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v34 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_22EFB603C();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_22EFB605C();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v35 = a1;
          v36 = BYTE2(a1);
          v37 = BYTE3(a1);
          v38 = v32;
          v39 = BYTE5(a1);
          v40 = BYTE6(a1);
          v41 = HIBYTE(a1);
          v42 = a2;
          v43 = BYTE2(a2);
          v44 = BYTE3(a2);
          v45 = BYTE4(a2);
          v46 = BYTE5(a2);
          v20 = v31[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_22EFB603C();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_22EFB605C();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v33;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_22EFBB8C0;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_22EFB649C();
      v47 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v30 = v22;
        v27 = v23;
        sub_22EF9AAC8((v24 > 1), v25 + 1, 1);
        v9 = v33;
        v23 = v27;
        v22 = v30;
        v8 = v47;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

LABEL_39:
  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_22EF834D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x277D84F90];
  sub_22EF9AAE8(0, v1, 0);
  v2 = v32;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_22EFB665C();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v9;
  v29 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v8;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = v12[1];
    v31 = *v12;
    v14 = v3;
    v15 = *(*(v3 + 56) + 8 * v7);
    v16 = *(v32 + 16);
    v17 = *(v32 + 24);

    if (v16 >= v17 >> 1)
    {
      result = sub_22EF9AAE8((v17 > 1), v16 + 1, 1);
    }

    *(v32 + 16) = v16 + 1;
    v18 = (v32 + 24 * v16);
    v18[4] = v31;
    v18[5] = v13;
    v18[6] = v15;
    v10 = 1 << *(v14 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v3 = v14;
    v4 = v29;
    v19 = *(v29 + 8 * v11);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v28;
    if (v28 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v10 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v23 = (v26 + 8 * v11);
      while (v22 < (v10 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_22EF71A2C(v7, v28, 0);
          v10 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_22EF71A2C(v7, v28, 0);
    }

LABEL_4:
    v8 = v30 + 1;
    v7 = v10;
    if (v30 + 1 == v27)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22EF83730(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_22EF70B68(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_22EF708C8(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_22EF837E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void *sub_22EF8388C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22EF94370(*(a1 + 16), 0);
  v4 = sub_22EFAA300(&v6, v3 + 2, v2, a1);
  sub_22EFA0FD0();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22EF8391C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;

  v5 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 2;
  }

  sub_22EFB663C();
  swift_unknownObjectRelease();
  sub_22EF76370(v10, v9);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    return v11;
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_22EFB66DC();

    strcpy(v9, "Value for key ");
    HIBYTE(v9[1]) = -18;
    MEMORY[0x2318FB260](a1, a2);
    MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E738, &qword_22EFBD250);
    v7 = sub_22EFB695C();
    MEMORY[0x2318FB260](v7);

    MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    swift_getDynamicType();
    v8 = sub_22EFB695C();
    MEMORY[0x2318FB260](v8);

    sub_22EF74470(v9[0], v9[1], 8, 0);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }
}

uint64_t sub_22EF83B50(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;

  v5 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  sub_22EFB663C();
  swift_unknownObjectRelease();
  sub_22EF76370(v11, v10);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    return v9;
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_22EFB66DC();

    strcpy(v10, "Value for key ");
    HIBYTE(v10[1]) = -18;
    MEMORY[0x2318FB260](a1, a2);
    MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E730, &qword_22EFBD248);
    v7 = sub_22EFB695C();
    MEMORY[0x2318FB260](v7);

    MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    swift_getDynamicType();
    v8 = sub_22EFB695C();
    MEMORY[0x2318FB260](v8);

    sub_22EF74470(v10[0], v10[1], 8, 0);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }
}

uint64_t sub_22EF83D88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v17[0] = a1;
  v17[1] = a2;

  v13 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v13)
  {
    return 0;
  }

  sub_22EFB663C();
  swift_unknownObjectRelease();
  sub_22EF76370(v18, v17);
  sub_22EF70EBC(0, a3, a4);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return v18[5];
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_22EFB66DC();

    strcpy(v17, "Value for key ");
    HIBYTE(v17[1]) = -18;
    MEMORY[0x2318FB260](a1, a2);
    MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v15 = sub_22EFB695C();
    MEMORY[0x2318FB260](v15);

    MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    swift_getDynamicType();
    v16 = sub_22EFB695C();
    MEMORY[0x2318FB260](v16);

    sub_22EF74470(v17[0], v17[1], 8, 0);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }
}

uint64_t sub_22EF83FE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v17[0] = a1;
  v17[1] = a2;

  v13 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v13)
  {
    return 0;
  }

  sub_22EFB663C();
  swift_unknownObjectRelease();
  sub_22EF76370(v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return v18[5];
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_22EFB66DC();

    strcpy(v17, "Value for key ");
    HIBYTE(v17[1]) = -18;
    MEMORY[0x2318FB260](a1, a2);
    MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v15 = sub_22EFB695C();
    MEMORY[0x2318FB260](v15);

    MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    swift_getDynamicType();
    v16 = sub_22EFB695C();
    MEMORY[0x2318FB260](v16);

    sub_22EF74470(v17[0], v17[1], 8, 0);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }
}

uint64_t sub_22EF84234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v66[5] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E768, &qword_22EFBD288);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E770, &unk_22EFBD290);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v57 - v19;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E778, &unk_22EFBD450);
  v21 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v23 = v57 - v22;
  v63[0] = a1;
  v63[1] = a2;
  v63[2] = a3;
  v63[3] = a4;
  v59 = a1;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E780, &qword_22EFBD2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E788, &qword_22EFBD2A8);
  if (swift_dynamicCast())
  {
    sub_22EEF729C(v64, v66);
    v24 = __swift_project_boxed_opaque_existential_1(v66, v66[3]);
    MEMORY[0x28223BE20](v24);
    v57[-2] = v5;
    sub_22EFB608C();
    result = __swift_destroy_boxed_opaque_existential_0Tm(v66);
    goto LABEL_53;
  }

  v65 = 0;
  memset(v64, 0, sizeof(v64));
  sub_22EF7CFF8(v64, &qword_27DA9E790, &qword_22EFBD2B0);
  v26 = *v5;
  v27 = v5[1];
  v28 = v27 >> 62;
  if ((v27 >> 62) <= 1)
  {
    if (!v28)
    {
      v29 = BYTE6(v27);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v29 = 0;
  if (v28 != 2)
  {
    goto LABEL_13;
  }

  v31 = v26 + 16;
  v26 = *(v26 + 16);
  v30 = *(v31 + 8);
  v29 = v30 - v26;
  if (__OFSUB__(v30, v26))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v26), v26))
    {
      goto LABEL_59;
    }

    v29 = HIDWORD(v26) - v26;
    v30 = v26 >> 32;
  }

  if (v30 < 0)
  {
    goto LABEL_55;
  }

LABEL_13:
  v32 = sub_22EFB615C();
  MEMORY[0x28223BE20](v32);
  v57[-4] = v29;
  v57[-3] = 0;
  v57[-2] = v63;
  sub_22EFA8FDC(sub_22EFA8124);
  v33 = *&v20[*(v17 + 48)];
  sub_22EFA814C(v20, v23);
  if (!v33)
  {
    v57[0] = 0;
    v57[1] = v5;
    v38 = 0;
    memset(v66, 0, 15);
    v39 = *(v58 + 44);
LABEL_18:
    v58 = v38;
    while (1)
    {
      sub_22EFA81BC(&v23[v39], v16);
      v40 = sub_22EFB622C();
      v41 = *(v40 - 8);
      v42 = *(v41 + 48);
      v43 = v42(v16, 1, v40);
      sub_22EF7CFF8(v16, &qword_27DA9E768, &qword_22EFBD288);
      if (v43 != 1)
      {
        if (v42(&v23[v39], 1, v40) == 1)
        {
          goto LABEL_61;
        }

        sub_22EFA80DC(&qword_27DA9E480, MEMORY[0x277CC92E0]);
        sub_22EFB661C();
        if (BYTE1(v64[0]) != 1)
        {
          v52 = v58;
          *(v66 + v58) = v64[0];
          v38 = (v52 + 1);
          if ((v38 >> 8))
          {
            goto LABEL_60;
          }

          if ((v52 + 1) == 14)
          {
            *&v64[0] = v66[0];
            *(v64 + 6) = *(v66 + 6);
            sub_22EFB617C();
            v38 = 0;
          }

          goto LABEL_18;
        }
      }

      v44 = *(v23 + 4);
      v45 = *(v23 + 3) >> 1;
      if (v44 == v45)
      {
        if (v58)
        {
          *&v64[0] = v66[0];
          *(v64 + 6) = *(v66 + 6);
          sub_22EFB617C();
        }

        goto LABEL_52;
      }

      if (v44 >= v45 || v44 < *(v23 + 2))
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
      }

      v47 = (*(v23 + 1) + 16 * v44);
      v48 = *v47;
      v49 = v47[1];
      *(v23 + 4) = v44 + 1;
      v50 = v49 >> 62;
      if ((v49 >> 62) > 1)
      {
        if (v50 == 2)
        {
          v51 = *(v48 + 16);
LABEL_19:
          sub_22EF70B68(v48, v49);
        }
      }

      else if (v50)
      {
        goto LABEL_19;
      }

      sub_22EFB623C();
      (*(v41 + 56))(v14, 0, 1, v40);
      sub_22EFA822C(v14, &v23[v39]);
    }
  }

  v34 = 0;
  v35 = *v5;
  v36 = v5[1];
  v37 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    if (v37 == 2)
    {
      v34 = *(v35 + 16);
    }
  }

  else if (v37)
  {
    v34 = v35;
  }

  v53 = __OFADD__(v34, v29);
  v54 = v34 + v29;
  if (v53)
  {
    goto LABEL_56;
  }

  if (__OFADD__(v54, v33))
  {
    goto LABEL_57;
  }

  if (v37 > 1)
  {
    if (v37 == 2)
    {
      v55 = *(v35 + 24);
    }

    else
    {
      v55 = 0;
    }
  }

  else if (v37)
  {
    v55 = v35 >> 32;
  }

  else
  {
    v55 = BYTE6(v36);
  }

  if (v55 < v54 + v33)
  {
    goto LABEL_58;
  }

  sub_22EFB616C();
LABEL_52:
  result = sub_22EF7CFF8(v23, &qword_27DA9E778, &unk_22EFBD450);
LABEL_53:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF848D0()
{
  v0 = sub_22EFB626C();
  __swift_allocate_value_buffer(v0, qword_27DAA03B8);
  __swift_project_value_buffer(v0, qword_27DAA03B8);
  return sub_22EFB625C();
}

void sub_22EF84BEC(unint64_t a1, unint64_t a2, void *a3)
{
  v8 = sub_22EF90790(a1, 0, 0);
  if (!v4)
  {
    v9 = v8;
    v10 = sub_22EF90790(a1, 1, 0);
    v11 = sub_22EF90790(a1, 2, 0);
    v12 = v11;
    v23 = v11;
    if (a2)
    {
      v13 = sub_22EF90790(a2, 2, 1);
      sub_22EF90F34(v13);
      v12 = v23;
    }

    v14 = v3[2];

    v15 = sub_22EF92F74(v10, v14);

    v16 = v3[3];

    v17 = sub_22EF92F74(v9, v16);

    v18 = v3[4];

    v22 = sub_22EF92F74(v12, v18);

    if ((v17 & 1) != 0 || !*(v9 + 16))
    {

      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v19 = v3[3];
      v3[3] = v9;

      sub_22EF91050(0, a3);
      if (v15)
      {
        goto LABEL_14;
      }
    }

    if (*(v10 + 16))
    {
      v20 = v3[2];
      v3[2] = v10;

      sub_22EF91050(1, a3);
      goto LABEL_15;
    }

LABEL_14:

LABEL_15:
    if (v22)
    {
    }

    else
    {
      v21 = v3[4];
      v3[4] = v12;

      sub_22EF91050(2, a3);
      sub_22EF91B70(2, a3);
    }
  }
}

void sub_22EF85014(uint64_t a1, int a2, void *a3)
{
  v302 = a3;
  v4 = v3;
  v284 = a2;
  v310 = *MEMORY[0x277D85DE8];
  v6 = sub_22EFB60FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v273 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v9) = *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_internalBuild);
  LODWORD(v300) = v9;
  if (v9 == 1 && [*(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults) BOOLForKey_])
  {
    v11 = objc_opt_self();
    *&v308 = 0;
    v12 = [v11 dataWithPropertyList:a1 format:200 options:0 error:&v308];
    v13 = v308;
    if (v12)
    {
      v14 = sub_22EFB61DC();
      v16 = v15;

      if (qword_27DA9E058 != -1)
      {
        goto LABEL_416;
      }

      goto LABEL_5;
    }

    v26 = v13;
    v27 = sub_22EFB60EC();

    swift_willThrow();
    v303 = 0;
  }

LABEL_9:
  v28 = MEMORY[0x277D84F90];
  v304 = MEMORY[0x277D84F90];
  sub_22EFB65FC();
  sub_22EFA80DC(&qword_281477DA0, MEMORY[0x277CC9178]);
  sub_22EFB661C();
  if (v309)
  {
    v301 = MEMORY[0x277D84F90];
    do
    {
      sub_22EF76360(&v308, &v306);
      sub_22EF76370(&v306, &v305);
      type metadata accessor for ExpressMode.PassConfig();
      swift_allocObject();
      v29 = v303;
      v30 = sub_22EF8BE44(&v305);
      v303 = v29;
      if (v29)
      {
LABEL_35:
        __swift_destroy_boxed_opaque_existential_0Tm(&v306);
        (*(v7 + 8))(v10, v6);

        goto LABEL_368;
      }

      v28 = v30;
      v31 = __swift_destroy_boxed_opaque_existential_0Tm(&v306);
      if (v28)
      {
        MEMORY[0x2318FB2A0](v31);
        if (*((v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = v4;
          v33 = *((v304 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22EFB655C();
          v4 = v32;
        }

        sub_22EFB657C();
        v301 = v304;
      }

      sub_22EFB661C();
    }

    while (v309);
  }

  else
  {
    v301 = v28;
  }

  (*(v7 + 8))(v10, v6);
  v299 = v4;
  if (v302)
  {
    v34 = qword_27DA9E058;
    v28 = v302;
    if (v34 != -1)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v35 = sub_22EFB626C();
      __swift_project_value_buffer(v35, qword_27DAA03B8);
      v6 = v28;
      v36 = sub_22EFB624C();
      v28 = sub_22EFB65EC();

      if (os_log_type_enabled(v36, v28))
      {
        v37 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v37 = 138412290;
        *(v37 + 4) = v6;
        *v10 = v302;
        v38 = v6;
        _os_log_impl(&dword_22EEF5000, v36, v28, "inSession with pass unique IDs: %@", v37, 0xCu);
        sub_22EF7CFF8(v10, &qword_27DA9E5C0, &qword_22EFBC3E0);
        MEMORY[0x2318FC200](v10, -1, -1);
        MEMORY[0x2318FC200](v37, -1, -1);
      }

      *&v308 = MEMORY[0x277D84F90];
      v39 = v301;
      if (v301 >> 62)
      {
        v53 = sub_22EFB67CC();
        v39 = v301;
        v7 = v53;
        if (!v53)
        {
LABEL_54:

          goto LABEL_55;
        }
      }

      else
      {
        v7 = *((v301 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          goto LABEL_54;
        }
      }

      v10 = 0;
      v40 = v39 & 0xC000000000000001;
      v41 = v39 & 0xFFFFFFFFFFFFFF8;
      while (v40)
      {
        v28 = MEMORY[0x2318FB480](v10);
        v42 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_30:
        v43 = *(v28 + 16);
        v44 = *(v28 + 24);
        v45 = sub_22EFB647C();
        v46 = [v6 containsObject_];

        if (v46)
        {
          sub_22EFB673C();
          v47 = *(v308 + 16);
          sub_22EFB676C();
          sub_22EFB677C();
          sub_22EFB674C();
        }

        else
        {
        }

        ++v10;
        v39 = v301;
        if (v42 == v7)
        {
          goto LABEL_54;
        }
      }

      if (v10 < *(v41 + 16))
      {
        break;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
    }

    v28 = *(v39 + 8 * v10 + 32);

    v42 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  *&v308 = MEMORY[0x277D84F90];
  v48 = v301;
  if (!(v301 >> 62))
  {
    v49 = *((v301 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v49)
    {
      goto LABEL_55;
    }

LABEL_38:
    v6 = 0;
    v50 = v48 & 0xC000000000000001;
    v51 = v48 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v50)
      {
        v28 = MEMORY[0x2318FB480](v6);
        v52 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v6 >= *(v51 + 16))
        {
          goto LABEL_51;
        }

        v28 = *(v48 + 8 * v6 + 32);

        v52 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      if (*(v28 + 162) & 1) != 0 || (*(v28 + 161))
      {
        sub_22EFB673C();
        v10 = *(v308 + 16);
        sub_22EFB676C();
        sub_22EFB677C();
        sub_22EFB674C();
      }

      else
      {
      }

      ++v6;
      v48 = v301;
      if (v52 == v49)
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v272 = sub_22EFB67CC();
    v48 = v301;
    v49 = v272;
    if (v272)
    {
      goto LABEL_38;
    }

LABEL_55:
    v54 = v308;
    v305 = v308;
    v294 = v308;
    v55 = v299;
    if (v300 && (v56 = *(v299 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults), [v56 integerForKey_] >= 1))
    {
      if (qword_27DA9E058 != -1)
      {
        swift_once();
      }

      v57 = sub_22EFB626C();
      __swift_project_value_buffer(v57, qword_27DAA03B8);
      v6 = v55;
      v58 = sub_22EFB624C();
      v59 = sub_22EFB65EC();
      if (os_log_type_enabled(v58, v59))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = [v56 integerForKey_];

        _os_log_impl(&dword_22EEF5000, v58, v59, "Skipping compatibility check due to %ld", v10, 0xCu);
        MEMORY[0x2318FC200](v10, -1, -1);
      }

      else
      {
      }

      v285 = MEMORY[0x277D84F90];
      v54 = v294;
    }

    else
    {

      v61 = sub_22EFA2454(v60, v284 & 1);

      v285 = v61;
    }

    v304 = MEMORY[0x277D84FA0];
    v286 = v54 >> 62;
    if (!(v54 >> 62))
    {
      v7 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v62 = retryWithBackoff__backoffTable;
      if (!v7)
      {
        break;
      }

      goto LABEL_66;
    }

LABEL_399:
    v7 = sub_22EFB67CC();
    v62 = retryWithBackoff__backoffTable;
    if (!v7)
    {
      break;
    }

LABEL_66:
    v14 = (v54 & 0xC000000000000001);
    v63 = v54 & 0xFFFFFFFFFFFFFF8;
    v293 = v54 + 32;
    v296 = v54 & 0xFFFFFFFFFFFFFF8;
    if (v54 < 0)
    {
      v63 = v54;
    }

    v283 = v63;

    *&v64 = *(v62 + 240);
    v278 = v64;
    v65 = 0;
    *(&v64 + 1) = 2;
    v298 = xmmword_22EFBB8C0;
    *&v64 = 136315394;
    v277 = v64;
    v297 = (v54 & 0xC000000000000001);
    v287 = v7;
    while (1)
    {
      if (v14)
      {
        v66 = MEMORY[0x2318FB480](v65, v54);
        v67 = __OFADD__(v65, 1);
        v68 = (v65 + 1);
        if (v67)
        {
LABEL_370:
          __break(1u);
LABEL_371:
          __break(1u);
LABEL_372:
          __break(1u);
LABEL_373:
          __break(1u);
LABEL_374:
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:
          __break(1u);
LABEL_377:
          __break(1u);
LABEL_378:
          __break(1u);
LABEL_379:
          __break(1u);
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
LABEL_382:
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
LABEL_386:
          __break(1u);
LABEL_387:
          __break(1u);
LABEL_388:
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
LABEL_391:
          __break(1u);
LABEL_392:
          __break(1u);
LABEL_393:
          __break(1u);
LABEL_394:
          __break(1u);
LABEL_395:
          __break(1u);
LABEL_396:
          __break(1u);
LABEL_397:
          __break(1u);
LABEL_398:
          __break(1u);
          goto LABEL_399;
        }
      }

      else
      {
        if (v65 >= *(v296 + 16))
        {
          goto LABEL_374;
        }

        v66 = *(v293 + 8 * v65);

        v67 = __OFADD__(v65, 1);
        v68 = (v65 + 1);
        if (v67)
        {
          goto LABEL_370;
        }
      }

      v69 = *(v66 + 144);
      v302 = v68;
      if (v69 && *(v69 + 16) || (*(v66 + 160) & 1) != 0 || *(v66 + 152) != 2)
      {

        goto LABEL_70;
      }

      v10 = v286 ? sub_22EFB67CC() : *(v296 + 16);

      v300 = v66;
      if (!v10)
      {
        break;
      }

      v70 = 0;
      v299 = v10;
      while (1)
      {
        if (v14)
        {
          v71 = MEMORY[0x2318FB480](v70, v54);
          v6 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
            goto LABEL_369;
          }
        }

        else
        {
          if (v70 >= *(v296 + 16))
          {
            goto LABEL_373;
          }

          v71 = *(v54 + 8 * v70 + 32);

          v6 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
LABEL_369:
            __break(1u);
            goto LABEL_370;
          }
        }

        v72 = *(v71 + 32);
        v73 = *(v71 + 40);
        v10 = *(v66 + 128);
        v28 = *(v66 + 136);
        if (v73 >> 60 == 15)
        {
          if (v28 >> 60 == 15)
          {
            sub_22EF70B68(*(v71 + 32), *(v71 + 40));
            sub_22EF70CB0(v10, v28);

            sub_22EF708B4(v72, v73);
            v7 = v287;
            goto LABEL_246;
          }

          goto LABEL_87;
        }

        if (v28 >> 60 != 15)
        {
          break;
        }

LABEL_87:
        sub_22EF70B68(*(v71 + 32), *(v71 + 40));
        sub_22EF70CB0(v10, v28);

        sub_22EF708B4(v72, v73);
        sub_22EF708B4(v10, v28);
LABEL_88:
        ++v70;
        v10 = v299;
        v66 = v300;
        if (v6 == v299)
        {
          goto LABEL_196;
        }
      }

      v74 = v73 >> 62;
      v75 = (v28 >> 62);
      if (v73 >> 62 != 3)
      {
        if (v74 <= 1)
        {
          if (v74)
          {
            LODWORD(v76) = HIDWORD(v72) - v72;
            if (__OFSUB__(HIDWORD(v72), v72))
            {
              goto LABEL_406;
            }

            v76 = v76;
            goto LABEL_114;
          }

          v76 = BYTE6(v73);
          if (v75 <= 1)
          {
            goto LABEL_115;
          }

          goto LABEL_120;
        }

        if (v74 == 2)
        {
          v78 = *(v72 + 16);
          v77 = *(v72 + 24);
          v67 = __OFSUB__(v77, v78);
          v76 = v77 - v78;
          if (v67)
          {
            __break(1u);
LABEL_406:
            __break(1u);
LABEL_407:
            __break(1u);
            goto LABEL_408;
          }

          goto LABEL_114;
        }

        v76 = 0;
        if (v75 > 1)
        {
          goto LABEL_120;
        }

LABEL_115:
        if (v75)
        {
          LODWORD(v79) = HIDWORD(v10) - v10;
          if (__OFSUB__(HIDWORD(v10), v10))
          {
            goto LABEL_386;
          }

          v79 = v79;
        }

        else
        {
          v79 = BYTE6(v28);
        }

LABEL_122:
        if (v76 != v79)
        {
          goto LABEL_128;
        }

        if (v76 < 1)
        {
          goto LABEL_241;
        }

        if (v74 > 1)
        {
          if (v74 != 2)
          {
            *(&v308 + 6) = 0;
            *&v308 = 0;
            sub_22EF70B68(v72, v73);
            sub_22EF70CB0(v10, v28);
            sub_22EF70B68(v72, v73);
            sub_22EF70CB0(v10, v28);
LABEL_138:
            v86 = v303;
            sub_22EF92D44(&v308, v10, v28, &v306);
            v303 = v86;
            if (v86)
            {
              goto LABEL_447;
            }

            sub_22EF708B4(v10, v28);
            sub_22EF708C8(v72, v73);
            sub_22EF708B4(v10, v28);
            v87 = v306;
            sub_22EF708B4(v72, v73);
            v14 = v297;
            if (v87)
            {
              goto LABEL_245;
            }

            goto LABEL_195;
          }

          v295 = *(v72 + 16);
          sub_22EF70B68(v72, v73);
          sub_22EF70CB0(v10, v28);
          sub_22EF70B68(v72, v73);
          sub_22EF70CB0(v10, v28);
          v82 = sub_22EFB603C();
          if (v82)
          {
            v292 = v82;
            v83 = sub_22EFB605C();
            if (__OFSUB__(v295, v83))
            {
              goto LABEL_411;
            }

            v295 = v292 + v295 - v83;
          }

          else
          {
            v295 = 0;
          }

          sub_22EFB604C();
          if (v75 == 2)
          {
            v92 = *(v10 + 16);
            v292 = *(v10 + 24);
            v93 = sub_22EFB603C();
            if (v93)
            {
              v291 = v92;
              v94 = v93;
              v95 = sub_22EFB605C();
              v96 = v291;
              if (__OFSUB__(v291, v95))
              {
                goto LABEL_421;
              }

              v97 = (v291 - v95 + v94);
              v98 = v292;
            }

            else
            {
              v97 = 0;
              v98 = v292;
              v96 = v92;
            }

            v292 = v97;
            v109 = v98 - v96;
            if (__OFSUB__(v98, v96))
            {
              goto LABEL_418;
            }

            v110 = sub_22EFB604C();
            if (v110 >= v109)
            {
              v111 = v109;
            }

            else
            {
              v111 = v110;
            }

            v99 = v295;
            if (!v295)
            {
              goto LABEL_438;
            }

            v14 = v297;
            v108 = v292;
            if (!v292)
            {
              goto LABEL_437;
            }

            goto LABEL_192;
          }

          if (v75 == 1)
          {
            v292 = ((v10 >> 32) - v10);
            if (v10 >> 32 < v10)
            {
              __break(1u);
LABEL_418:
              __break(1u);
LABEL_419:
              __break(1u);
LABEL_420:
              __break(1u);
LABEL_421:
              __break(1u);
LABEL_422:
              __break(1u);
LABEL_423:
              __break(1u);
LABEL_424:
              __break(1u);
LABEL_425:
              __break(1u);
LABEL_426:
              __break(1u);
LABEL_427:
              __break(1u);
LABEL_428:
              __break(1u);
LABEL_429:
              __break(1u);
              goto LABEL_430;
            }

            v88 = sub_22EFB603C();
            if (v88)
            {
              v291 = v88;
              v89 = sub_22EFB605C();
              if (__OFSUB__(v10, v89))
              {
                goto LABEL_423;
              }

              v291 += v10 - v89;
            }

            else
            {
              v291 = 0;
            }

            v14 = v297;
            v112 = sub_22EFB604C();
            v111 = v292;
            if (v112 < v292)
            {
              v111 = v112;
            }

            v99 = v295;
            if (!v295)
            {
              goto LABEL_441;
            }

            v108 = v291;
            if (!v291)
            {
              goto LABEL_440;
            }

            goto LABEL_192;
          }

          v99 = v295;
          *&v308 = v10;
          WORD4(v308) = v28;
          BYTE10(v308) = BYTE2(v28);
          BYTE11(v308) = BYTE3(v28);
          BYTE12(v308) = BYTE4(v28);
          BYTE13(v308) = BYTE5(v28);
          v14 = v297;
          if (!v295)
          {
            goto LABEL_439;
          }
        }

        else
        {
          if (!v74)
          {
            *&v308 = *(v71 + 32);
            WORD4(v308) = v73;
            BYTE10(v308) = BYTE2(v73);
            BYTE11(v308) = BYTE3(v73);
            BYTE12(v308) = BYTE4(v73);
            BYTE13(v308) = BYTE5(v73);
            sub_22EF70B68(v72, v73);
            sub_22EF70CB0(v10, v28);
            sub_22EF70B68(v72, v73);
            sub_22EF70CB0(v10, v28);
            goto LABEL_138;
          }

          if (v72 > v72 >> 32)
          {
            goto LABEL_407;
          }

          v295 = v72;
          sub_22EF70B68(v72, v73);
          sub_22EF70CB0(v10, v28);
          sub_22EF70B68(v72, v73);
          sub_22EF70CB0(v10, v28);
          v84 = sub_22EFB603C();
          if (v84)
          {
            v292 = v84;
            v85 = sub_22EFB605C();
            if (__OFSUB__(v295, v85))
            {
              goto LABEL_412;
            }

            v295 = v292 + v295 - v85;
          }

          else
          {
            v295 = 0;
          }

          sub_22EFB604C();
          if (v75 == 2)
          {
            v100 = *(v10 + 16);
            v292 = *(v10 + 24);
            v101 = sub_22EFB603C();
            if (v101)
            {
              v291 = v100;
              v102 = v101;
              v103 = sub_22EFB605C();
              v104 = v291;
              if (__OFSUB__(v291, v103))
              {
                goto LABEL_422;
              }

              v105 = (v291 - v103 + v102);
              v106 = v292;
            }

            else
            {
              v105 = 0;
              v106 = v292;
              v104 = v100;
            }

            v292 = v105;
            v113 = v106 - v104;
            if (__OFSUB__(v106, v104))
            {
              goto LABEL_420;
            }

            v114 = sub_22EFB604C();
            if (v114 >= v113)
            {
              v111 = v113;
            }

            else
            {
              v111 = v114;
            }

            v99 = v295;
            if (!v295)
            {
              goto LABEL_444;
            }

            v14 = v297;
            v108 = v292;
            if (!v292)
            {
              goto LABEL_443;
            }

            goto LABEL_192;
          }

          if (v75 == 1)
          {
            v292 = ((v10 >> 32) - v10);
            if (v10 >> 32 < v10)
            {
              goto LABEL_419;
            }

            v90 = sub_22EFB603C();
            if (v90)
            {
              v291 = v90;
              v91 = sub_22EFB605C();
              if (__OFSUB__(v10, v91))
              {
                goto LABEL_424;
              }

              v291 += v10 - v91;
            }

            else
            {
              v291 = 0;
            }

            v14 = v297;
            v115 = sub_22EFB604C();
            v111 = v292;
            if (v115 < v292)
            {
              v111 = v115;
            }

            v99 = v295;
            if (!v295)
            {
              goto LABEL_446;
            }

            v108 = v291;
            if (!v291)
            {
              goto LABEL_445;
            }

LABEL_192:
            if (v99 == v108)
            {
              sub_22EF708B4(v10, v28);
              sub_22EF708B4(v10, v28);
              sub_22EF708C8(v72, v73);
              goto LABEL_244;
            }

            v107 = v111;
            goto LABEL_194;
          }

          v99 = v295;
          *&v308 = v10;
          WORD4(v308) = v28;
          BYTE10(v308) = BYTE2(v28);
          BYTE11(v308) = BYTE3(v28);
          BYTE12(v308) = BYTE4(v28);
          BYTE13(v308) = BYTE5(v28);
          v14 = v297;
          if (!v295)
          {
            goto LABEL_442;
          }
        }

        v107 = BYTE6(v28);
        v108 = &v308;
LABEL_194:
        v116 = memcmp(v99, v108, v107);
        sub_22EF708B4(v10, v28);
        sub_22EF708B4(v10, v28);
        sub_22EF708C8(v72, v73);
        sub_22EF708B4(v72, v73);
        if (!v116)
        {
          goto LABEL_245;
        }

        goto LABEL_195;
      }

      v76 = 0;
      if (!v72 && v73 == 0xC000000000000000 && v28 >> 62 == 3)
      {
        v76 = 0;
        if (!v10 && v28 == 0xC000000000000000)
        {
          sub_22EF70B68(0, 0xC000000000000000);
          sub_22EF70CB0(0, 0xC000000000000000);
          sub_22EF708B4(0, 0xC000000000000000);
          v72 = 0;
          goto LABEL_243;
        }
      }

LABEL_114:
      if (v75 <= 1)
      {
        goto LABEL_115;
      }

LABEL_120:
      if (v75 == 2)
      {
        v81 = *(v10 + 16);
        v80 = *(v10 + 24);
        v67 = __OFSUB__(v80, v81);
        v79 = v80 - v81;
        if (v67)
        {
          goto LABEL_385;
        }

        goto LABEL_122;
      }

      if (v76)
      {
LABEL_128:
        sub_22EF70B68(*(v71 + 32), *(v71 + 40));
        sub_22EF70CB0(v10, v28);
        sub_22EF708B4(v10, v28);
        sub_22EF708B4(v72, v73);
        v14 = v297;
LABEL_195:

        v54 = v294;
        goto LABEL_88;
      }

LABEL_241:
      sub_22EF70B68(*(v71 + 32), *(v71 + 40));
      sub_22EF70CB0(v10, v28);
      sub_22EF708B4(v10, v28);
LABEL_243:
      v14 = v297;
LABEL_244:
      sub_22EF708B4(v72, v73);
LABEL_245:
      v7 = v287;

LABEL_246:
      v147 = *(v71 + 80);
      v148 = &OBJC_IVAR___HashHelper_ctx;
      if (v147 >= 3)
      {
        v149 = *(v71 + 88);
        v10 = *(v71 + 96);
        v6 = v300;
        v150 = v300[10];
        if (v150 >= 3)
        {
          v161 = v300[11];
          v160 = v300[12];
          v162 = *(v71 + 88);
          v163 = *(v71 + 96);
          sub_22EFA0DA0(*(v71 + 80));
          v299 = v161;
          v295 = v160;
          sub_22EFA0DA0(v150);
          if (qword_27DA9E058 != -1)
          {
            swift_once();
          }

          v164 = sub_22EFB626C();
          __swift_project_value_buffer(v164, qword_27DAA03B8);

          v165 = sub_22EFB624C();
          v166 = sub_22EFB65AC();

          LODWORD(v292) = v166;
          if (os_log_type_enabled(v165, v166))
          {
            v167 = swift_slowAlloc();
            v291 = v167;
            v290 = swift_slowAlloc();
            *&v308 = v290;
            *v167 = v278;

            v289 = v165;
            v168 = sub_22EF8DDD8(0);
            v169 = v149;
            v171 = v170;

            v172 = sub_22EF9447C(v168, v171, &v308);
            v149 = v169;

            v173 = v291;
            *(v291 + 4) = v172;
            v174 = v289;
            _os_log_impl(&dword_22EEF5000, v289, v292, "Folded %s", v173, 0xCu);
            v175 = v290;
            __swift_destroy_boxed_opaque_existential_0Tm(v290);
            MEMORY[0x2318FC200](v175, -1, -1);
            MEMORY[0x2318FC200](v291, -1, -1);
          }

          else
          {
          }

          v292 = sub_22EF87B48(v150, v299, v295, v147, v149, v10);
          v291 = v178;
          v290 = v179;

          v180 = *(v71 + 80);
          v181 = *(v71 + 88);
          v182 = *(v71 + 96);
          v183 = v291;
          *(v71 + 80) = v292;
          *(v71 + 88) = v183;
          *(v71 + 96) = v290;
          sub_22EFA0DF0(v180);
          *(v71 + 177) = 1;
          v184 = *(v6 + 32);
          v185 = *(v6 + 40);
          sub_22EF70B68(v184, v185);
          sub_22EF9BDD0(&v308, v184, v185);

          sub_22EF708C8(v308, *(&v308 + 1));
          goto LABEL_340;
        }

        v151 = *(v71 + 88);
        v152 = *(v71 + 96);
        sub_22EFA0DA0(*(v71 + 80));

        v148 = &OBJC_IVAR___HashHelper_ctx;
      }

      if (*(v148 + 11) != -1)
      {
        swift_once();
      }

      v153 = sub_22EFB626C();
      __swift_project_value_buffer(v153, qword_27DAA03B8);
      v154 = v300;

      v118 = sub_22EFB624C();
      v6 = sub_22EFB65AC();

      LODWORD(v279) = v6;
      if (!os_log_type_enabled(v118, v6))
      {

LABEL_256:

        goto LABEL_257;
      }

      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *&v306 = v156;
      v276 = v155;
      *v155 = v277;
      v6 = v154[4];
      v157 = v154[5];
      v158 = v157 >> 62;
      v291 = HIDWORD(v6);
      v292 = (v157 >> 62);
      v275 = v118;
      v274 = v156;
      if ((v157 >> 62) > 1)
      {
        if (v158 != 2)
        {
          v186 = MEMORY[0x277D84F90];
          goto LABEL_300;
        }

        v177 = *(v6 + 16);
        v176 = *(v6 + 24);
        v159 = v176 - v177;
        if (__OFSUB__(v176, v177))
        {
          goto LABEL_427;
        }
      }

      else if (v158)
      {
        if (__OFSUB__(v291, v6))
        {
          goto LABEL_428;
        }

        v159 = v291 - v6;
      }

      else
      {
        v159 = BYTE6(v157);
      }

      v186 = MEMORY[0x277D84F90];
      if (!v159)
      {
        goto LABEL_300;
      }

      v307 = MEMORY[0x277D84F90];
      sub_22EF9AAC8(0, v159 & ~(v159 >> 63), 0);
      v290 = v6;
      v54 = v292;
      if (v292)
      {
        if (v292 == 2)
        {
          v187 = *(v6 + 16);
        }

        else
        {
          v187 = v290;
        }
      }

      else
      {
        v187 = 0;
      }

      v299 = v187;
      if (v159 < 0)
      {
        goto LABEL_425;
      }

      v188 = 0;
      v186 = v307;
      v288 = v6 >> 32;
      v289 = BYTE6(v157);
      v282 = (&v308 + v299);
      v295 = v159;
      while (2)
      {
        if (v188 >= v159)
        {
          goto LABEL_381;
        }

        v10 = v188 + 1;
        if (__OFADD__(v188, 1))
        {
          goto LABEL_382;
        }

        v189 = v299 + v188;
        if (v54 == 2)
        {
          if (v189 < *(v6 + 16))
          {
            goto LABEL_387;
          }

          if (v189 >= *(v6 + 24))
          {
            goto LABEL_390;
          }

          v194 = sub_22EFB603C();
          if (!v194)
          {
            goto LABEL_434;
          }

          v191 = v194;
          v54 = v157 & 0x3FFFFFFFFFFFFFFFLL;
          v195 = sub_22EFB605C();
          v193 = v189 - v195;
          if (__OFSUB__(v189, v195))
          {
            goto LABEL_392;
          }

          goto LABEL_293;
        }

        if (v54 == 1)
        {
          if (v189 < v290 || v189 >= v288)
          {
            goto LABEL_389;
          }

          v190 = sub_22EFB603C();
          if (!v190)
          {
            __break(1u);
LABEL_434:
            __break(1u);
LABEL_435:
            __break(1u);
LABEL_436:
            __break(1u);
LABEL_437:
            __break(1u);
LABEL_438:
            __break(1u);
LABEL_439:
            __break(1u);
LABEL_440:
            __break(1u);
LABEL_441:
            __break(1u);
LABEL_442:
            __break(1u);
LABEL_443:
            __break(1u);
LABEL_444:
            __break(1u);
LABEL_445:
            __break(1u);
LABEL_446:
            __break(1u);
LABEL_447:

            __break(1u);
            return;
          }

          v191 = v190;
          v54 = v157 & 0x3FFFFFFFFFFFFFFFLL;
          v192 = sub_22EFB605C();
          v193 = v189 - v192;
          if (__OFSUB__(v189, v192))
          {
            goto LABEL_391;
          }

LABEL_293:
          v196 = *(v191 + v193);
          v54 = v292;
        }

        else
        {
          if (v189 >= v289)
          {
            goto LABEL_388;
          }

          LOWORD(v308) = v6;
          BYTE2(v308) = BYTE2(v6);
          BYTE3(v308) = BYTE3(v6);
          BYTE4(v308) = v291;
          BYTE5(v308) = BYTE5(v6);
          BYTE6(v308) = BYTE6(v6);
          BYTE7(v308) = HIBYTE(v6);
          WORD4(v308) = v157;
          BYTE10(v308) = BYTE2(v157);
          BYTE11(v308) = BYTE3(v157);
          BYTE12(v308) = BYTE4(v157);
          BYTE13(v308) = BYTE5(v157);
          v196 = *(&v282->isa + v188);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v197 = swift_allocObject();
        *(v197 + 16) = v298;
        *(v197 + 56) = MEMORY[0x277D84B78];
        *(v197 + 64) = MEMORY[0x277D84BC0];
        *(v197 + 32) = v196;
        v198 = sub_22EFB649C();
        v307 = v186;
        v201 = *(v186 + 16);
        v200 = *(v186 + 24);
        if (v201 >= v200 >> 1)
        {
          v281 = v198;
          v203 = v199;
          sub_22EF9AAC8((v200 > 1), v201 + 1, 1);
          v54 = v292;
          v199 = v203;
          v198 = v281;
          v186 = v307;
        }

        *(v186 + 16) = v201 + 1;
        v202 = v186 + 16 * v201;
        *(v202 + 32) = v198;
        *(v202 + 40) = v199;
        ++v188;
        v159 = v295;
        if (v10 != v295)
        {
          continue;
        }

        break;
      }

      v14 = v297;
LABEL_300:
      *&v308 = v186;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      v204 = sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
      v273[2] = v6;
      v273[1] = v204;
      v205 = sub_22EFB646C();
      v207 = v206;

      v208 = sub_22EF9447C(v205, v207, &v306);

      v209 = v276;
      *(v276 + 1) = v208;
      *(v209 + 6) = 2080;
      v210 = *(v71 + 32);
      v10 = *(v71 + 40);
      v211 = v10 >> 62;
      v289 = HIDWORD(v210);
      if ((v10 >> 62) <= 1)
      {
        if (!v211)
        {
          v212 = BYTE6(v10);
          goto LABEL_309;
        }

        if (!__OFSUB__(v289, v210))
        {
          v212 = v289 - v210;
          goto LABEL_309;
        }

LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
      }

      if (v211 != 2)
      {
        v215 = MEMORY[0x277D84F90];
        goto LABEL_339;
      }

      v214 = *(v210 + 16);
      v213 = *(v210 + 24);
      v212 = v213 - v214;
      if (__OFSUB__(v213, v214))
      {
        goto LABEL_429;
      }

LABEL_309:
      v215 = MEMORY[0x277D84F90];
      if (!v212)
      {
        goto LABEL_339;
      }

      v307 = MEMORY[0x277D84F90];
      v290 = v210;
      sub_22EF9AAC8(0, v212 & ~(v212 >> 63), 0);
      v54 = v290;
      v288 = v290;
      if (v211)
      {
        if (v211 == 2)
        {
          v216 = *(v290 + 16);
        }

        else
        {
          v216 = v288;
        }
      }

      else
      {
        v216 = 0;
      }

      v299 = v216;
      if (v212 < 0)
      {
        goto LABEL_426;
      }

      v217 = 0;
      v215 = v307;
      v281 = v290 >> 32;
      v282 = BYTE6(v10);
      v280 = &v308 + v299;
      v295 = v10;
      v292 = (v10 >> 62);
      v291 = v212;
      while (2)
      {
        if (v217 >= v212)
        {
          goto LABEL_383;
        }

        v6 = v217 + 1;
        if (__OFADD__(v217, 1))
        {
          goto LABEL_384;
        }

        v218 = v299 + v217;
        if (v211 == 2)
        {
          if (v218 < *(v54 + 16))
          {
            goto LABEL_393;
          }

          if (v218 >= *(v54 + 24))
          {
            goto LABEL_396;
          }

          v223 = sub_22EFB603C();
          if (!v223)
          {
            goto LABEL_436;
          }

          v220 = v223;
          v54 = v10 & 0x3FFFFFFFFFFFFFFFLL;
          v224 = sub_22EFB605C();
          v222 = v218 - v224;
          if (__OFSUB__(v218, v224))
          {
            goto LABEL_398;
          }

LABEL_332:
          v225 = *(v220 + v222);
          v54 = v290;
        }

        else
        {
          if (v211 == 1)
          {
            if (v218 < v288 || v218 >= v281)
            {
              goto LABEL_395;
            }

            v219 = sub_22EFB603C();
            if (!v219)
            {
              goto LABEL_435;
            }

            v220 = v219;
            v54 = v10 & 0x3FFFFFFFFFFFFFFFLL;
            v221 = sub_22EFB605C();
            v222 = v218 - v221;
            if (__OFSUB__(v218, v221))
            {
              goto LABEL_397;
            }

            goto LABEL_332;
          }

          if (v218 >= v282)
          {
            goto LABEL_394;
          }

          LOWORD(v308) = v54;
          BYTE2(v308) = BYTE2(v54);
          BYTE3(v308) = BYTE3(v54);
          BYTE4(v308) = v289;
          BYTE5(v308) = BYTE5(v54);
          BYTE6(v308) = BYTE6(v54);
          BYTE7(v308) = HIBYTE(v54);
          WORD4(v308) = v10;
          BYTE10(v308) = BYTE2(v10);
          BYTE11(v308) = BYTE3(v10);
          BYTE12(v308) = BYTE4(v10);
          BYTE13(v308) = BYTE5(v10);
          v225 = v280[v217];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v226 = swift_allocObject();
        *(v226 + 16) = v298;
        *(v226 + 56) = MEMORY[0x277D84B78];
        *(v226 + 64) = MEMORY[0x277D84BC0];
        *(v226 + 32) = v225;
        v227 = sub_22EFB649C();
        v229 = v228;
        v307 = v215;
        v231 = *(v215 + 16);
        v230 = *(v215 + 24);
        if (v231 >= v230 >> 1)
        {
          sub_22EF9AAC8((v230 > 1), v231 + 1, 1);
          v54 = v290;
          v215 = v307;
        }

        *(v215 + 16) = v231 + 1;
        v232 = v215 + 16 * v231;
        *(v232 + 32) = v227;
        *(v232 + 40) = v229;
        ++v217;
        v212 = v291;
        v10 = v295;
        LODWORD(v211) = v292;
        if (v6 != v291)
        {
          continue;
        }

        break;
      }

      v14 = v297;
LABEL_339:
      *&v308 = v215;
      v233 = sub_22EFB646C();
      v235 = v234;

      v236 = sub_22EF9447C(v233, v235, &v306);

      v237 = v276;
      *(v276 + 14) = v236;
      v238 = v275;
      _os_log_impl(&dword_22EEF5000, v275, v279, "Trying to fold %s into %s but not ECP2", v237, 0x16u);
      v239 = v274;
      swift_arrayDestroy();
      MEMORY[0x2318FC200](v239, -1, -1);
      MEMORY[0x2318FC200](v237, -1, -1);

LABEL_340:
      v54 = v294;
      v7 = v287;
LABEL_70:
      v65 = v302;
      if (v302 == v7)
      {

        goto LABEL_343;
      }
    }

LABEL_196:

    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v117 = sub_22EFB626C();
    __swift_project_value_buffer(v117, qword_27DAA03B8);

    v118 = sub_22EFB624C();
    v10 = sub_22EFB65AC();

    v119 = os_log_type_enabled(v118, v10);
    v7 = v287;
    if (!v119)
    {
      goto LABEL_256;
    }

    v4 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *&v306 = v120;
    *v4 = v278;
    v6 = *(v66 + 32);
    v121 = *(v66 + 40);
    v16 = v121 >> 62;
    v292 = HIDWORD(v6);
    v282 = v118;
    LODWORD(v281) = v10;
    v280 = v4;
    v279 = v120;
    if ((v121 >> 62) <= 1)
    {
      if (!v16)
      {
        v28 = BYTE6(v121);
        goto LABEL_209;
      }

      if (!__OFSUB__(v292, v6))
      {
        v28 = v292 - v6;
        goto LABEL_209;
      }

LABEL_415:
      __break(1u);
LABEL_416:
      swift_once();
LABEL_5:
      v17 = sub_22EFB626C();
      __swift_project_value_buffer(v17, qword_27DAA03B8);
      sub_22EF70B68(v14, v16);
      v18 = sub_22EFB624C();
      v19 = sub_22EFB65AC();
      sub_22EF708C8(v14, v16);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v301 = v14;
        LODWORD(v298) = v19;
        v21 = v20;
        v297 = swift_slowAlloc();
        *&v308 = v297;
        *v21 = 136315138;
        v22 = sub_22EFB61CC();
        v299 = v4;
        v24 = sub_22EF9447C(v22, v23, &v308);
        v4 = v299;

        *(v21 + 4) = v24;
        _os_log_impl(&dword_22EEF5000, v18, v298, "Raw Config : %s", v21, 0xCu);
        v25 = v297;
        __swift_destroy_boxed_opaque_existential_0Tm(v297);
        MEMORY[0x2318FC200](v25, -1, -1);
        MEMORY[0x2318FC200](v21, -1, -1);
        sub_22EF708C8(v301, v16);
      }

      else
      {

        sub_22EF708C8(v14, v16);
      }

      goto LABEL_9;
    }

    if (v16 != 2)
    {
      v124 = MEMORY[0x277D84F90];
      goto LABEL_240;
    }

    v123 = *(v6 + 16);
    v122 = *(v6 + 24);
    v28 = v122 - v123;
    if (__OFSUB__(v122, v123))
    {
      __break(1u);
      goto LABEL_415;
    }

LABEL_209:
    v124 = MEMORY[0x277D84F90];
    if (!v28)
    {
      goto LABEL_240;
    }

    v307 = MEMORY[0x277D84F90];
    v54 = &v307;
    sub_22EF9AAC8(0, v28 & ~(v28 >> 63), 0);
    v291 = v6;
    if (v16)
    {
      if (v16 == 2)
      {
        v125 = *(v6 + 16);
      }

      else
      {
        v125 = v291;
      }
    }

    else
    {
      v125 = 0;
    }

    v299 = v125;
    if ((v28 & 0x8000000000000000) == 0)
    {
      v126 = 0;
      v124 = v307;
      v289 = v6 >> 32;
      v290 = BYTE6(v121);
      v288 = &v308 + v299;
      v295 = v121 >> 62;
      while (1)
      {
        if (v126 >= v28)
        {
          goto LABEL_371;
        }

        v127 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          goto LABEL_372;
        }

        v10 = v299 + v126;
        if (v16 == 2)
        {
          if (v10 < *(v6 + 16))
          {
            goto LABEL_375;
          }

          if (v10 >= *(v6 + 24))
          {
            goto LABEL_378;
          }

          v132 = sub_22EFB603C();
          if (!v132)
          {
            goto LABEL_432;
          }

          v129 = v132;
          v54 = v121 & 0x3FFFFFFFFFFFFFFFLL;
          v133 = sub_22EFB605C();
          v131 = v10 - v133;
          if (__OFSUB__(v10, v133))
          {
            goto LABEL_380;
          }
        }

        else
        {
          if (v16 != 1)
          {
            if (v10 >= v290)
            {
              goto LABEL_376;
            }

            LOWORD(v308) = v6;
            BYTE2(v308) = BYTE2(v6);
            BYTE3(v308) = BYTE3(v6);
            BYTE4(v308) = v292;
            BYTE5(v308) = BYTE5(v6);
            BYTE6(v308) = BYTE6(v6);
            BYTE7(v308) = HIBYTE(v6);
            WORD4(v308) = v121;
            BYTE10(v308) = BYTE2(v121);
            BYTE11(v308) = BYTE3(v121);
            BYTE12(v308) = BYTE4(v121);
            BYTE13(v308) = BYTE5(v121);
            v54 = *(v288 + v126);
            goto LABEL_235;
          }

          if (v10 < v291 || v10 >= v289)
          {
            goto LABEL_377;
          }

          v128 = sub_22EFB603C();
          if (!v128)
          {
            goto LABEL_431;
          }

          v129 = v128;
          v54 = v121 & 0x3FFFFFFFFFFFFFFFLL;
          v130 = sub_22EFB605C();
          v131 = v10 - v130;
          if (__OFSUB__(v10, v130))
          {
            goto LABEL_379;
          }
        }

        v54 = *(v129 + v131);
LABEL_235:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v134 = swift_allocObject();
        *(v134 + 16) = v298;
        *(v134 + 56) = MEMORY[0x277D84B78];
        *(v134 + 64) = MEMORY[0x277D84BC0];
        *(v134 + 32) = v54;
        v135 = sub_22EFB649C();
        v307 = v124;
        v10 = *(v124 + 16);
        v137 = *(v124 + 24);
        if (v10 >= v137 >> 1)
        {
          v54 = &v307;
          v276 = v135;
          v140 = v136;
          sub_22EF9AAC8((v137 > 1), v10 + 1, 1);
          v136 = v140;
          v135 = v276;
          v124 = v307;
        }

        *(v124 + 16) = v10 + 1;
        v138 = v124 + 16 * v10;
        *(v138 + 32) = v135;
        *(v138 + 40) = v136;
        ++v126;
        v139 = v127 == v28;
        v14 = v297;
        LODWORD(v16) = v295;
        if (v139)
        {
          v7 = v287;
LABEL_240:
          *&v308 = v124;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
          sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
          v141 = sub_22EFB646C();
          v143 = v142;

          v144 = sub_22EF9447C(v141, v143, &v306);

          v6 = v280;
          *(v280 + 4) = v144;
          v145 = v282;
          _os_log_impl(&dword_22EEF5000, v282, v281, "Trying to fold %s but head applet not express", v6, 0xCu);
          v146 = v279;
          __swift_destroy_boxed_opaque_existential_0Tm(v279);
          MEMORY[0x2318FC200](v146, -1, -1);
          MEMORY[0x2318FC200](v6, -1, -1);

LABEL_257:
          v54 = v294;
          goto LABEL_70;
        }
      }
    }

    __break(1u);
LABEL_411:
    __break(1u);
LABEL_412:
    __break(1u);
  }

LABEL_343:
  v240 = v303;
  v241 = sub_22EF9FB94(&v305, &v304);
  v303 = v240;
  if (!(v305 >> 62))
  {
    v242 = *((v305 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v242 >= v241)
    {
      goto LABEL_345;
    }

LABEL_402:
    __break(1u);
    goto LABEL_403;
  }

  v271 = v241;
  v242 = sub_22EFB67CC();
  v241 = v271;
  if (v242 < v271)
  {
    goto LABEL_402;
  }

LABEL_345:
  sub_22EFA32EC(v241, v242);
  if (qword_27DA9E058 != -1)
  {
LABEL_403:
    swift_once();
  }

  v243 = sub_22EFB626C();
  v244 = __swift_project_value_buffer(v243, qword_27DAA03B8);

  v75 = sub_22EFB624C();
  LOBYTE(v70) = sub_22EFB65EC();

  v245 = os_log_type_enabled(v75, v70);
  v300 = v244;
  if (!v245)
  {

    goto LABEL_351;
  }

  v6 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  *&v308 = v10;
  *v6 = 134218498;
  swift_beginAccess();
  if (v305 >> 62)
  {
    goto LABEL_409;
  }

  for (i = *((v305 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22EFB67CC())
  {
    *(v6 + 4) = i;
    *(v6 + 12) = 2080;
    v247 = MEMORY[0x2318FB2C0](v285, &type metadata for ExpressModeRejectedPass);
    v249 = v248;

    v250 = sub_22EF9447C(v247, v249, &v308);

    *(v6 + 14) = v250;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v284 & 1;
    _os_log_impl(&dword_22EEF5000, v75, v70, "  configCount %ld, Incompatible applets? %s useLegacyBehavior? %{BOOL}d", v6, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2318FC200](v10, -1, -1);
    MEMORY[0x2318FC200](v6, -1, -1);

LABEL_351:
    swift_beginAccess();
    v70 = v305;
    if (v305 >> 62)
    {
      break;
    }

    v251 = *((v305 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v251)
    {
      goto LABEL_367;
    }

LABEL_353:
    if (v251 >= 1)
    {
      v302 = (v70 & 0xC000000000000001);

      v252 = 0;
      *&v253 = 136315138;
      v298 = v253;
      v299 = v251;
      v297 = v70;
      while (1)
      {
        if (v302)
        {
          v254 = MEMORY[0x2318FB480](v252, v70);
          if ((*(v254 + 162) & 1) == 0)
          {
            goto LABEL_360;
          }
        }

        else
        {
          v254 = *(v70 + 8 * v252 + 32);

          if ((*(v254 + 162) & 1) == 0)
          {
LABEL_360:
            if ((*(v254 + 161) & 1) == 0)
            {

              v255 = sub_22EFB624C();
              v256 = sub_22EFB65CC();

              if (os_log_type_enabled(v255, v256))
              {
                v257 = swift_slowAlloc();
                v258 = swift_slowAlloc();
                v307 = v258;
                *v257 = v298;
                v260 = *(v254 + 16);
                v259 = *(v254 + 24);

                v261 = sub_22EF9447C(v260, v259, &v307);
                v251 = v299;

                *(v257 + 4) = v261;
                _os_log_impl(&dword_22EEF5000, v255, v256, "Configuring non-express pass: %s", v257, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v258);
                MEMORY[0x2318FC200](v258, -1, -1);
                MEMORY[0x2318FC200](v257, -1, -1);
              }

              v70 = v297;
            }
          }
        }

        v262 = sub_22EFB624C();
        v263 = sub_22EFB65AC();

        if (os_log_type_enabled(v262, v263))
        {
          v264 = swift_slowAlloc();
          v265 = swift_slowAlloc();
          v307 = v265;
          *v264 = v298;
          v266 = sub_22EF8DDD8(2);
          v268 = sub_22EF9447C(v266, v267, &v307);

          *(v264 + 4) = v268;
          _os_log_impl(&dword_22EEF5000, v262, v263, "PassConfig:\n%s", v264, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v265);
          MEMORY[0x2318FC200](v265, -1, -1);
          v269 = v264;
          v251 = v299;
          MEMORY[0x2318FC200](v269, -1, -1);
        }

        if (v251 == ++v252)
        {

          goto LABEL_367;
        }
      }
    }

LABEL_408:
    __break(1u);
LABEL_409:
    ;
  }

  v251 = sub_22EFB67CC();
  if (v251)
  {
    goto LABEL_353;
  }

LABEL_367:

LABEL_368:
  v270 = *MEMORY[0x277D85DE8];
}