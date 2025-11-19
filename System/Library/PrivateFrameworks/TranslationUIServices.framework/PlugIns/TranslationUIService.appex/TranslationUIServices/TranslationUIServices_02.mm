uint64_t sub_100039F38()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 312);
  v7 = *v0;

  sub_100004444(v3, &qword_10006A2A0, &qword_1000528E0);
  v4 = *(v1 + 400);
  v5 = *(v1 + 392);

  return _swift_task_switch(sub_10003A08C, v5, v4);
}

uint64_t sub_10003A08C()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];
  v5 = v0[47];
  v4 = v0[48];
  v6 = v0[44];
  v7 = v0[45];

  v2(v5, v6);
  v9 = v0[46];
  v8 = v0[47];
  v11 = v0[42];
  v10 = v0[43];
  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10003A170(uint64_t a1, void *a2)
{
  v3 = sub_100009F34((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10003A1D4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(sub_10004FDB8() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_10003A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = a8;
  v8[39] = v27;
  v8[36] = a6;
  v8[37] = a7;
  v8[34] = a4;
  v8[35] = a5;
  v9 = sub_10004FFC8();
  v8[40] = v9;
  v10 = *(v9 - 8);
  v8[41] = v10;
  v11 = *(v10 + 64) + 15;
  v8[42] = swift_task_alloc();
  v12 = sub_10004FD08();
  v8[43] = v12;
  v13 = *(v12 - 8);
  v8[44] = v13;
  v14 = *(v13 + 64) + 15;
  v8[45] = swift_task_alloc();
  v15 = sub_10004FF08();
  v8[46] = v15;
  v16 = *(v15 - 8);
  v8[47] = v16;
  v17 = *(v16 + 64) + 15;
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v18 = sub_10004FDB8();
  v8[52] = v18;
  v19 = *(v18 - 8);
  v8[53] = v19;
  v8[54] = *(v19 + 64);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v20 = sub_10004FE78();
  v8[57] = v20;
  v21 = *(v20 - 8);
  v8[58] = v21;
  v22 = *(v21 + 64) + 15;
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  sub_1000512D8();
  v8[61] = sub_1000512C8();
  v24 = sub_1000512B8();
  v8[62] = v24;
  v8[63] = v23;

  return _swift_task_switch(sub_10003A520, v24, v23);
}

uint64_t sub_10003A520()
{
  v130 = v0;
  v1 = v0[34];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[64] = Strong;
  if (Strong)
  {
    v0[65] = sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
    v3 = sub_100051388();
    v4 = sub_100051398();

    if (v4)
    {
      v5 = v0[60];
      v6 = v0[55];
      v7 = v0[52];
      v8 = v0[36];
      v9 = *(v0[53] + 16);
      v9(v0[56], v0[35], v7);
      v9(v6, v8, v7);
      sub_10004FE38();
      v10 = async function pointer to static LanguagesStatusService.languagePairState(_:)[1];
      v11 = swift_task_alloc();
      v0[66] = v11;
      *v11 = v0;
      v11[1] = sub_10003B078;
      v12 = v0[60];
      v13 = v0[51];

      return static LanguagesStatusService.languagePairState(_:)(v13, v12);
    }

    v15 = v0[61];

    v16 = v0[37];
    v17 = sub_1000511A8();
    v18 = sub_100051418(v17);
    v20 = v19;
    v21 = v0[64];
    v126 = v18;
    if (v18)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 544) = 1;

      sub_100050308();
      v22 = [v20 string];
      v23 = sub_100051158();
      v25 = v24;

      v129[0] = v23;
      v129[1] = v25;

      v132._countAndFlagsBits = 10911970;
      v132._object = 0xA300000000000000;
      sub_1000511E8(v132);

      swift_getKeyPath();
      swift_getKeyPath();
      v0[29] = v23;
      v0[30] = v25;
    }

    else
    {
      v26 = [v19 string];
      v27 = sub_100051158();
      v29 = v28;

      swift_getKeyPath();
      swift_getKeyPath();
      v0[27] = v27;
      v0[28] = v29;
    }

    sub_100050308();
    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v30 = v0[64];
    v31 = v0[37];
    v32 = v0[38];
    v33 = sub_100050268();
    sub_100008BA0(v33, qword_10006E090);

    v34 = v20;
    v35 = v31;

    v36 = sub_100050248();
    v37 = sub_100051378();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[64];
    v128 = v34;
    if (v38)
    {
      v40 = v0[37];
      v41 = v0[38];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v129[0] = v43;
      *v42 = 134218754;
      *(v42 + 4) = [v34 length];

      *(v42 + 12) = 2048;
      *(v42 + 14) = [v40 length];

      *(v42 + 22) = 1024;
      *(v42 + 24) = *(v39 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_requestOrigin) == 1;

      *(v42 + 28) = 2082;
      type metadata accessor for Key(0);
      v44 = sub_100051258();
      v46 = sub_100008C04(v44, v45, v129);

      *(v42 + 30) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "Translating %ld characters (original %ld, image based: %{BOOL}d, ignored attributes: %{public}s", v42, 0x26u);
      sub_100009F78(v43);
    }

    else
    {
      v47 = v0[37];
    }

    v48 = v0[64];
    v49 = v0[38];
    v51 = v0[35];
    v50 = v0[36];
    v52 = objc_allocWithZone(_LTTextTranslationRequest);
    isa = sub_10004FD88().super.isa;
    v54 = sub_10004FD88().super.isa;
    v55 = [v52 initWithSourceLocale:isa targetLocale:v54];

    v56 = v55;
    [v56 setTaskHint:5];
    [v56 setText:v34];
    type metadata accessor for Key(0);
    v57 = sub_100051238().super.isa;
    [v56 setIgnoringAttributes:v57];

    if (*(v48 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier + 8))
    {
      v58 = *(v48 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier);
      v59 = *(v48 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier + 8);

      v60 = sub_100051128();
    }

    else
    {
      v60 = 0;
    }

    v61 = v0[64];
    [v56 setAppIdentifier:v60];

    [v56 setSourceOrigin:*(v61 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_requestOrigin) == 1];
    [v56 setIsFinal:1];
    v62 = *(v61 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation);
    v127 = v56;
    if (v62)
    {
      v63 = v62;
      v64 = sub_100050248();
      v65 = sub_100051348();
      v66 = &selRef_initWithCoder_;
      if (os_log_type_enabled(v64, v65))
      {
        v68 = v0[44];
        v67 = v0[45];
        aBlock = v0[43];
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v129[0] = v70;
        *v69 = 136446210;
        v71 = [v63 invocationId];
        sub_10004FCF8();

        v72 = sub_10004FCD8();
        v74 = v73;
        (*(v68 + 8))(v67, aBlock);
        v75 = sub_100008C04(v72, v74, v129);

        *(v69 + 4) = v75;
        v66 = &selRef_initWithCoder_;
        _os_log_impl(&_mh_execute_header, v64, v65, "Setting logIdentifier on session to %{public}s", v69, 0xCu);
        sub_100009F78(v70);
        v56 = v127;
      }

      v77 = v0[44];
      v76 = v0[45];
      v78 = v0[43];
      v79 = [v63 v66[97]];
      sub_10004FCF8();

      v80.super.isa = sub_10004FCE8().super.isa;
      (*(v77 + 8))(v76, v78);
      [v56 setLogIdentifier:v80.super.isa];
    }

    else
    {
      v80.super.isa = sub_100050248();
      v81 = sub_100051358();
      if (os_log_type_enabled(v80.super.isa, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80.super.isa, v81, "Unable to obtain sessionID from invocation log", v82, 2u);
      }
    }

    v83 = v0[65];

    v84 = sub_100051388();
    v85 = sub_100051398();

    if (v85)
    {
      [v56 setForcedOfflineTranslation:1];
    }

    v87 = v0[41];
    v86 = v0[42];
    v88 = v0[40];
    (*(v87 + 104))(v86, enum case for TranslateFeatures.onDeviceFirst(_:), v88);
    v89 = sub_10004FFB8();
    (*(v87 + 8))(v86, v88);
    if (v89)
    {
      [v56 setPreferOnDeviceIfAvailable:1];
    }

    v91 = v0[55];
    v90 = v0[56];
    v92 = v0[53];
    v93 = v0[54];
    v94 = v0[52];
    v123 = v0[39];
    v124 = v0[64];
    v95 = v0[35];
    v121 = v0[36];
    v122 = v90;
    v96 = swift_allocObject();
    swift_weakInit();
    v97 = *(v92 + 16);
    v97(v90, v95, v94);
    v97(v91, v121, v94);
    v98 = *(v92 + 80);
    v99 = (v98 + 24) & ~v98;
    v100 = (v93 + v98 + v99) & ~v98;
    v101 = v100 + v93;
    v102 = swift_allocObject();
    *(v102 + 16) = v96;
    v103 = *(v92 + 32);
    v103(v102 + v99, v122, v94);
    v103(v102 + v100, v91, v94);
    *(v102 + v101) = v126 & 1;
    *(v102 + (v101 & 0xFFFFFFFFFFFFFFF8) + 8) = v123;
    v0[22] = sub_100043DA0;
    v0[23] = v102;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_10003E1E8;
    v0[21] = &unk_100067390;
    v104 = _Block_copy(v0 + 18);
    v105 = v0[23];
    v106 = v123;

    [v127 setTextTranslationHandler:v104];
    _Block_release(v104);
    v107 = *(v124 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_inProgressRequest);
    *(v124 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_inProgressRequest) = v127;

    v108 = [objc_allocWithZone(_LTTranslator) init];
    [v108 translate:v127];
  }

  else
  {
    v14 = v0[61];
  }

  v110 = v0[59];
  v109 = v0[60];
  v112 = v0[55];
  v111 = v0[56];
  v114 = v0[50];
  v113 = v0[51];
  v116 = v0[48];
  v115 = v0[49];
  v117 = v0[45];
  v118 = v0[42];

  v119 = v0[1];

  return v119();
}

uint64_t sub_10003B078()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 504);
  v6 = *(v2 + 496);
  if (v0)
  {
    v7 = sub_10003C4A8;
  }

  else
  {
    v7 = sub_10003B1B4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10003B1B4()
{
  v212 = v0;
  v1 = v0[61];

  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v2 = v0[59];
  v3 = v0[60];
  v5 = v0[57];
  v4 = v0[58];
  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[46];
  v9 = v0[47];
  v190 = sub_100050268();
  sub_100008BA0(v190, qword_10006E090);
  v196 = *(v4 + 16);
  v196(v2, v3, v5);
  v193 = *(v9 + 16);
  v193(v7, v6, v8);
  v10 = sub_100050248();
  v11 = sub_100051378();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[58];
  v13 = v0[59];
  v15 = v0[57];
  v16 = v0[50];
  v17 = v0[47];
  v205 = v0[46];
  if (v12)
  {
    v188 = v11;
    v18 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    *v18 = 136446466;
    sub_100042294(&qword_10006BCA8, &type metadata accessor for LocalePair);
    v19 = sub_100051638();
    v21 = v20;
    v208 = *(v14 + 8);
    v208(v13, v15);
    v22 = sub_100008C04(v19, v21, &v210);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = sub_10004FEE8();
    v25 = v24;
    v26 = *(v17 + 8);
    v26(v16, v205);
    v27 = sub_100008C04(v23, v25, &v210);

    *(v18 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v10, v188, "On-device mode enabled, current pair: %{public}s state: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v26 = *(v17 + 8);
    v26(v16, v205);
    v208 = *(v14 + 8);
    v208(v13, v15);
  }

  v28 = v0[51];
  v29 = v0[49];
  v30 = v0[46];
  (*(v0[47] + 104))(v29, enum case for LanguageState.availableForDownload(_:), v30);
  LOBYTE(v28) = sub_10004FEF8();
  v206 = v26;
  v26(v29, v30);
  if (v28)
  {
    v31 = v0[64];
    v32 = v0[60];
    v34 = v0[56];
    v33 = v0[57];
    v191 = v0[55];
    v35 = v0[52];
    aBlock = v0[53];
    type metadata accessor for TranslationModel.TranslationError(0);
    sub_100042294(&qword_10006BC80, type metadata accessor for TranslationModel.TranslationError);
    v36 = swift_allocError();
    v196(v37, v32, v33);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    v0[33] = v36;
    v194 = v31;

    sub_100050308();
    v38 = _LTTranslationErrorDomain;
    sub_1000035C4(&qword_10006BC98, &qword_100054E40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000541F0;
    *(inited + 32) = 0x656372756F73;
    *(inited + 40) = 0xE600000000000000;
    v198 = v38;
    sub_10004FE48();
    v40 = sub_10004FD68();
    v42 = v41;
    v43 = aBlock[1];
    v189 = v35;
    v43(v34, v35);
    *(inited + 48) = v40;
    *(inited + 56) = v42;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x746567726174;
    *(inited + 88) = 0xE600000000000000;
    sub_10004FE58();
    v44 = sub_10004FD68();
    v46 = v45;
    v43(v191, v35);
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = v44;
    *(inited + 104) = v46;
    sub_10004E04C(inited);
    swift_setDeallocating();
    sub_1000035C4(&qword_10006BCA0, &qword_100054E48);
    swift_arrayDestroy();
    v47 = objc_allocWithZone(NSError);
    isa = sub_1000510D8().super.isa;

    v49 = [v47 initWithDomain:v198 code:11 userInfo:isa];

    sub_10004FE48();
    sub_10004FE58();
    v50 = objc_allocWithZone(_LTLocalePair);
    v51 = sub_10004FD88().super.isa;
    v52 = sub_10004FD88().super.isa;
    v53 = [v50 initWithSourceLocale:v51 targetLocale:v52];

    v43(v191, v189);
    v43(v34, v189);
    v54 = *(v194 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation);
    v55 = v0[64];
    v56 = v0[60];
    v58 = v0[57];
    v57 = v0[58];
    v59 = v0[51];
    v60 = v0[46];
    if (v54)
    {
      aBlocka = v0[60];
      v61 = v54;
      v62 = v49;
      v63 = sub_10004FC78();

      [v61 endWithError:v63 localePair:v53 qssSessionId:0];

      v206(v59, v60);
      v64 = aBlocka;
    }

    else
    {
      v93 = v0[64];

      v206(v59, v60);
      v64 = v56;
    }

    v79 = v58;
    goto LABEL_15;
  }

  v66 = v0[47];
  v65 = v0[48];
  v67 = v0[46];
  v193(v65, v0[51], v67);
  v68 = (*(v66 + 88))(v65, v67);
  v69 = v0[64];
  v70 = v0[60];
  v71 = v0[57];
  v72 = v0[58];
  v73 = v0[51];
  v74 = v0[48];
  if (v68 == enum case for LanguageState.downloading(_:))
  {
    v75 = v0[46];
    (*(v0[47] + 96))(v0[48], v75);
    v76 = *v74;
    type metadata accessor for TranslationModel.TranslationError(0);
    sub_100042294(&qword_10006BC80, type metadata accessor for TranslationModel.TranslationError);
    v77 = swift_allocError();
    *v78 = v76;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    v0[32] = v77;

    sub_100050308();
    sub_10003C5C4(v70);

    v206(v73, v75);
    v64 = v70;
    v79 = v71;
LABEL_15:
    v208(v64, v79);
    goto LABEL_36;
  }

  v80 = v0[46];
  aBlockb = v0[57];
  v206(v0[48], v80);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[31] = 0;

  sub_100050308();
  v206(v73, v80);
  v208(v70, aBlockb);
  v81 = v0[37];
  v82 = sub_1000511A8();
  v83 = sub_100051418(v82);
  v85 = v84;
  v86 = v0[64];
  v204 = v83;
  if (v83)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 544) = 1;

    sub_100050308();
    v87 = [v85 string];
    v88 = sub_100051158();
    v90 = v89;

    v210 = v88;
    v211 = v90;

    v214._countAndFlagsBits = 10911970;
    v214._object = 0xA300000000000000;
    sub_1000511E8(v214);

    v91 = v210;
    v92 = v211;
    swift_getKeyPath();
    swift_getKeyPath();
    v0[29] = v91;
    v0[30] = v92;
  }

  else
  {
    v94 = [v84 string];
    v95 = sub_100051158();
    v97 = v96;

    swift_getKeyPath();
    swift_getKeyPath();
    v0[27] = v95;
    v0[28] = v97;
  }

  sub_100050308();
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v98 = v0[64];
  v99 = v0[37];
  v100 = v0[38];
  sub_100008BA0(v190, qword_10006E090);

  v101 = v85;
  v102 = v99;

  v103 = sub_100050248();
  v104 = sub_100051378();

  v105 = os_log_type_enabled(v103, v104);
  v106 = v0[64];
  v209 = v101;
  if (v105)
  {
    v107 = v0[37];
    v108 = v0[38];
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v210 = v110;
    *v109 = 134218754;
    *(v109 + 4) = [v101 length];

    *(v109 + 12) = 2048;
    *(v109 + 14) = [v107 length];

    *(v109 + 22) = 1024;
    *(v109 + 24) = *(v106 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_requestOrigin) == 1;

    *(v109 + 28) = 2082;
    type metadata accessor for Key(0);
    v111 = sub_100051258();
    v113 = sub_100008C04(v111, v112, &v210);

    *(v109 + 30) = v113;
    _os_log_impl(&_mh_execute_header, v103, v104, "Translating %ld characters (original %ld, image based: %{BOOL}d, ignored attributes: %{public}s", v109, 0x26u);
    sub_100009F78(v110);
  }

  else
  {
    v114 = v0[37];
  }

  v115 = v0[64];
  v116 = v0[38];
  v118 = v0[35];
  v117 = v0[36];
  v119 = objc_allocWithZone(_LTTextTranslationRequest);
  v120 = sub_10004FD88().super.isa;
  v121 = sub_10004FD88().super.isa;
  v122 = [v119 initWithSourceLocale:v120 targetLocale:v121];

  v123 = v122;
  [v123 setTaskHint:5];
  [v123 setText:v101];
  type metadata accessor for Key(0);
  v124 = sub_100051238().super.isa;
  [v123 setIgnoringAttributes:v124];

  if (*(v115 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier + 8))
  {
    v125 = *(v115 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier);
    v126 = *(v115 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier + 8);

    v127 = sub_100051128();
  }

  else
  {
    v127 = 0;
  }

  v128 = v0[64];
  [v123 setAppIdentifier:v127];

  [v123 setSourceOrigin:*(v128 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_requestOrigin) == 1];
  [v123 setIsFinal:1];
  v129 = *(v128 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation);
  v207 = v123;
  if (v129)
  {
    v130 = v129;
    v131 = sub_100050248();
    v132 = sub_100051348();
    v133 = &selRef_initWithCoder_;
    if (os_log_type_enabled(v131, v132))
    {
      v135 = v0[44];
      v134 = v0[45];
      aBlockc = v0[43];
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v210 = v137;
      *v136 = 136446210;
      v138 = [v130 invocationId];
      sub_10004FCF8();

      v139 = sub_10004FCD8();
      v141 = v140;
      (*(v135 + 8))(v134, aBlockc);
      v142 = sub_100008C04(v139, v141, &v210);

      *(v136 + 4) = v142;
      v133 = &selRef_initWithCoder_;
      _os_log_impl(&_mh_execute_header, v131, v132, "Setting logIdentifier on session to %{public}s", v136, 0xCu);
      sub_100009F78(v137);
      v123 = v207;
    }

    v144 = v0[44];
    v143 = v0[45];
    v145 = v0[43];
    v146 = [v130 v133[97]];
    sub_10004FCF8();

    v147.super.isa = sub_10004FCE8().super.isa;
    (*(v144 + 8))(v143, v145);
    [v123 setLogIdentifier:v147.super.isa];
  }

  else
  {
    v147.super.isa = sub_100050248();
    v148 = sub_100051358();
    if (os_log_type_enabled(v147.super.isa, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&_mh_execute_header, v147.super.isa, v148, "Unable to obtain sessionID from invocation log", v149, 2u);
    }
  }

  v150 = v0[65];

  v151 = sub_100051388();
  v152 = sub_100051398();

  if (v152)
  {
    [v123 setForcedOfflineTranslation:1];
  }

  v154 = v0[41];
  v153 = v0[42];
  v155 = v0[40];
  (*(v154 + 104))(v153, enum case for TranslateFeatures.onDeviceFirst(_:), v155);
  v156 = sub_10004FFB8();
  (*(v154 + 8))(v153, v155);
  if (v156)
  {
    [v123 setPreferOnDeviceIfAvailable:1];
  }

  v158 = v0[55];
  v157 = v0[56];
  v159 = v0[53];
  v160 = v0[54];
  v161 = v0[52];
  v197 = v0[39];
  v199 = v0[64];
  v162 = v0[35];
  v192 = v0[36];
  v195 = v157;
  v163 = swift_allocObject();
  swift_weakInit();
  v164 = *(v159 + 16);
  v164(v157, v162, v161);
  v164(v158, v192, v161);
  v165 = *(v159 + 80);
  v166 = (v165 + 24) & ~v165;
  v167 = (v160 + v165 + v166) & ~v165;
  v168 = v167 + v160;
  v169 = swift_allocObject();
  *(v169 + 16) = v163;
  v170 = *(v159 + 32);
  v170(v169 + v166, v195, v161);
  v170(v169 + v167, v158, v161);
  *(v169 + v168) = v204 & 1;
  *(v169 + (v168 & 0xFFFFFFFFFFFFFFF8) + 8) = v197;
  v0[22] = sub_100043DA0;
  v0[23] = v169;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10003E1E8;
  v0[21] = &unk_100067390;
  v171 = _Block_copy(v0 + 18);
  v172 = v0[23];
  v173 = v197;

  [v207 setTextTranslationHandler:v171];
  _Block_release(v171);
  v174 = *(v199 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_inProgressRequest);
  *(v199 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_inProgressRequest) = v207;

  v175 = [objc_allocWithZone(_LTTranslator) init];
  [v175 translate:v207];

LABEL_36:
  v177 = v0[59];
  v176 = v0[60];
  v179 = v0[55];
  v178 = v0[56];
  v181 = v0[50];
  v180 = v0[51];
  v183 = v0[48];
  v182 = v0[49];
  v184 = v0[45];
  v185 = v0[42];

  v186 = v0[1];

  return v186();
}

uint64_t sub_10003C4A8()
{
  v1 = v0[64];
  v3 = v0[60];
  v2 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[55];
  v10 = v0[50];
  v9 = v0[51];
  v14 = v0[49];
  v15 = v0[48];
  v16 = v0[45];
  v17 = v0[42];

  (*(v5 + 8))(v3, v6);

  v11 = v0[1];
  v12 = v0[67];

  return v11();
}

uint64_t sub_10003C5C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v35 - v6;
  v8 = sub_10004FE78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v39 = v12;
  v40 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v35 - v13;
  if (qword_100069EF8 != -1)
  {
    swift_once();
  }

  v15 = sub_100050268();
  sub_100008BA0(v15, qword_10006E030);
  v37 = *(v9 + 16);
  v38 = v9 + 16;
  v37(v14, a1, v8);
  v16 = sub_100050248();
  v17 = sub_100051348();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v41 = v20;
    *v19 = 136446210;
    v21 = sub_10004FE68();
    v35[1] = v2;
    v22 = a1;
    v24 = v23;
    (*(v9 + 8))(v14, v8);
    v25 = sub_100008C04(v21, v24, &v41);
    a1 = v22;

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "Download language pair: %{public}s", v19, 0xCu);
    sub_100009F78(v20);

    v7 = v36;
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  type metadata accessor for TranslationModel.TranslationError(0);
  sub_100042294(&qword_10006BC80, type metadata accessor for TranslationModel.TranslationError);
  v26 = swift_allocError();
  *v27 = 0;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v26;

  sub_100050308();
  v28 = sub_1000512F8();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = v40;
  v37(v40, a1, v8);
  sub_1000512D8();

  v31 = sub_1000512C8();
  v32 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = v31;
  *(v33 + 3) = &protocol witness table for MainActor;
  *(v33 + 4) = v29;
  (*(v9 + 32))(&v33[v32], v30, v8);

  sub_10002EA44(0, 0, v7, &unk_100054E58, v33);
}

uint64_t sub_10003CA60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v47 = a8;
  v53 = a7;
  v52 = a3;
  v54 = a2;
  v11 = sub_10004FDB8();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  v13 = __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = *(*(sub_1000035C4(&qword_10006A7B8, &qword_100054AB0) - 8) + 64);
  v17 = __chkstk_darwin(a1);
  v19 = &v42 - v18;
  if (v17)
  {
    v20 = [v17 string];
    v21 = sub_100051158();
    v50 = v22;
    v51 = v21;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v23 = sub_1000512F8();
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  v24 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  v46 = v24;
  swift_weakInit();

  v48 = v19;
  v25 = v49;
  v26 = *(v49 + 16);
  v26(v15, a5, v11);
  v26(&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
  sub_1000512D8();

  v27 = v52;
  swift_errorRetain();
  v28 = v54;
  v47 = v47;
  v29 = sub_1000512C8();
  v30 = *(v25 + 80);
  v43 = v15;
  v44 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v27;
  v32 = v11;
  v33 = (v30 + 48) & ~v30;
  v34 = v25;
  v35 = (v12 + v30 + v33) & ~v30;
  v36 = (v12 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 2) = v29;
  *(v37 + 3) = &protocol witness table for MainActor;
  *(v37 + 4) = v46;
  *(v37 + 5) = v31;
  v38 = *(v34 + 32);
  v38(&v37[v33], v43, v32);
  v38(&v37[v35], v44, v32);
  *&v37[v36] = v54;
  v39 = &v37[v45];
  v40 = v50;
  *v39 = v51;
  *(v39 + 1) = v40;
  v39[16] = v53 & 1;
  *&v37[(v36 + 39) & 0xFFFFFFFFFFFFFFF8] = v47;

  sub_10002EA44(0, 0, v48, &unk_100054EB0, v37);
}

uint64_t sub_10003CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v23;
  *(v8 + 281) = v22;
  *(v8 + 136) = v21;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  v9 = *(*(sub_1000035C4(&qword_10006A478, &qword_100052B80) - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v10 = sub_100050228();
  *(v8 + 168) = v10;
  v11 = *(v10 - 8);
  *(v8 + 176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v13 = sub_10004FC38();
  *(v8 + 192) = v13;
  v14 = *(v13 - 8);
  *(v8 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v16 = *(*(sub_1000035C4(&qword_10006BC08, &qword_100054A80) - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  sub_1000512D8();
  *(v8 + 240) = sub_1000512C8();
  v18 = sub_1000512B8();
  *(v8 + 248) = v18;
  *(v8 + 256) = v17;

  return _swift_task_switch(sub_10003CFF0, v18, v17);
}

uint64_t sub_10003CFF0()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 264) = Strong;
  if (!Strong)
  {
    v40 = *(v0 + 240);

LABEL_25:
    v53 = *(v0 + 224);
    v52 = *(v0 + 232);
    v55 = *(v0 + 208);
    v54 = *(v0 + 216);
    v56 = *(v0 + 184);
    v57 = *(v0 + 160);

    v58 = *(v0 + 8);

    return v58();
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_inProgressRequest;
  v5 = *(Strong + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_inProgressRequest);
  if (v5 && (v6 = [v5 qssSessionID]) != 0)
  {
    v7 = *(v0 + 232);
    v8 = v6;
    sub_100051158();

    sub_10004FCC8();
  }

  else
  {
    v9 = *(v0 + 232);
    v10 = sub_10004FD08();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  v11 = *(v0 + 104);
  v12 = *(v3 + v4);
  *(v3 + v4) = 0;

  if (v11)
  {
    v13 = *(v0 + 240);
    v14 = *(v0 + 104);
    swift_errorRetain();

    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v15 = sub_100050268();
    sub_100008BA0(v15, qword_10006E090);
    swift_errorRetain();
    v16 = sub_100050248();
    v17 = sub_100051358();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = sub_10004FC78();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to translate: %@", v18, 0xCu);
      sub_100004444(v19, &qword_10006AB78, &unk_100053370);
    }

    v21 = *(v0 + 112);
    v22 = *(v0 + 120);
    v23 = *(v0 + 104);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 88) = v23;
    swift_errorRetain();

    sub_100050308();
    v24 = objc_allocWithZone(_LTLocalePair);
    isa = sub_10004FD88().super.isa;
    v26 = sub_10004FD88().super.isa;
    v27 = [v24 initWithSourceLocale:isa targetLocale:v26];

    v28 = *(v3 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation);
    v29 = *(v0 + 232);
    if (v28)
    {
      v30 = *(v0 + 224);
      v31 = v28;
      v32 = sub_10004FC78();
      sub_10000A00C(v29, v30, &qword_10006BC08, &qword_100054A80);
      v33 = sub_10004FD08();
      v34 = *(v33 - 8);
      LODWORD(v30) = (*(v34 + 48))(v30, 1, v33);
      v35 = v27;
      v36 = 0;
      if (v30 != 1)
      {
        v37 = *(v0 + 224);
        v36 = sub_10004FCE8().super.isa;
        (*(v34 + 8))(v37, v33);
      }

      v38 = *(v0 + 232);
      [v31 endWithError:v32 localePair:v35 qssSessionId:v36];

      v39 = v38;
    }

    else
    {

      v39 = v29;
    }

    sub_100004444(v39, &qword_10006BC08, &qword_100054A80);
    goto LABEL_25;
  }

  v41 = *(v0 + 128);
  if (v41)
  {
    v42 = *(v3 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationResult);
    *(v3 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationResult) = v41;
    v43 = v41;

    sub_10002F458();
    v45 = *(v44 + 16);

    if (v45 > 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 80) = 0;

      sub_100050308();
    }

    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v46 = sub_100050268();
    sub_100008BA0(v46, qword_10006E090);
    swift_retain_n();
    v47 = sub_100050248();
    v48 = sub_100051348();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      sub_10002F458();
      v51 = *(v50 + 16);

      *(v49 + 4) = v51;

      _os_log_impl(&_mh_execute_header, v47, v48, "Disambiguation items: %ld", v49, 0xCu);
    }

    else
    {
    }

    v60 = [v43 translations];
    sub_100009FC4(0, &qword_10006BC68, _LTTranslationCandidate_ptr);
    v61 = sub_100051248();

    if (v61 >> 62)
    {
      result = sub_100051608();
      if (result)
      {
        goto LABEL_31;
      }
    }

    else
    {
      result = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_31:
        if ((v61 & 0xC000000000000001) != 0)
        {
          v62 = sub_1000515D8();
        }

        else
        {
          if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v62 = *(v61 + 32);
        }

        v63 = v62;

        if ([v63 isLowConfidence])
        {
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 280) = 0;

          sub_100050308();

          v64 = *(v0 + 144);
          if (!v64)
          {
            goto LABEL_44;
          }

          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    v64 = *(v0 + 144);
    if (!v64)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_38:
  v64 = *(v0 + 144);
  if (!v64)
  {
LABEL_44:
    v65 = *(v0 + 136);
    goto LABEL_45;
  }

LABEL_39:
  if (*(v0 + 281) != 1)
  {

    goto LABEL_44;
  }

  v86 = *(v0 + 136);

  v88._countAndFlagsBits = 10911970;
  v88._object = 0xA300000000000000;
  sub_1000511E8(v88);
  v65 = v86;
LABEL_45:
  v66 = *(v0 + 208);
  v67 = *(v0 + 176);
  v84 = *(v0 + 160);
  v85 = *(v0 + 168);
  v69 = *(v0 + 112);
  v68 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v65;
  *(v0 + 72) = v64;

  sub_100050308();
  sub_100037E54();
  sub_1000035C4(&qword_10006A7F0, &qword_100053050);
  v70 = *(sub_10004FBD8() - 8);
  v71 = *(v70 + 72);
  v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  *(swift_allocObject() + 16) = xmmword_1000541F0;
  sub_10004FD28();
  sub_10004FBC8();

  sub_10004FD28();
  sub_10004FBC8();

  sub_10004FC28();
  sub_10004FBE8();
  v73 = sub_10004FBF8();
  if (v74)
  {
    v75 = v73;
  }

  else
  {
    v75 = 0;
  }

  if (v74)
  {
    v76 = v74;
  }

  else
  {
    v76 = 0xE000000000000000;
  }

  v77 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_cplIntervalID;
  swift_beginAccess();
  sub_10000A00C(v3 + v77, v84, &qword_10006A478, &qword_100052B80);
  if ((*(v67 + 48))(v84, 1, v85) == 1)
  {
    v78 = *(v0 + 160);

    sub_100004444(v78, &qword_10006A478, &qword_100052B80);
  }

  else
  {
    (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
    sub_100051428();
    if (qword_100069F28 != -1)
    {
      swift_once();
    }

    v80 = *(v0 + 176);
    v79 = *(v0 + 184);
    v81 = *(v0 + 168);
    sub_1000035C4(&qword_10006A9E8, &unk_100053E60);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1000530B0;
    *(v82 + 56) = &type metadata for String;
    *(v82 + 64) = sub_1000105AC();
    *(v82 + 32) = v75;
    *(v82 + 40) = v76;
    sub_100050218();

    (*(v80 + 8))(v79, v81);
  }

  v83 = swift_task_alloc();
  *(v0 + 272) = v83;
  *v83 = v0;
  v83[1] = sub_10003DB3C;

  return sub_10003DE38();
}

uint64_t sub_10003DB3C()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v6 = *v0;

  v3 = *(v1 + 256);
  v4 = *(v1 + 248);

  return _swift_task_switch(sub_10003DC5C, v4, v3);
}

uint64_t sub_10003DC5C()
{
  v1 = v0[33];
  v2 = v0[30];

  v3 = *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation);
  if (v3)
  {
    v4 = v0[27];
    sub_10000A00C(v0[29], v4, &qword_10006BC08, &qword_100054A80);
    v5 = sub_10004FD08();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v4, 1, v5);
    v8 = v3;
    isa = 0;
    if (v7 != 1)
    {
      v10 = v0[27];
      isa = sub_10004FCE8().super.isa;
      (*(v6 + 8))(v10, v5);
    }

    v11 = v0[33];
    [v8 endSuccessfullyWithQSSSessionId:isa localePair:v0[19]];
  }

  else
  {
    v12 = v0[33];
  }

  v13 = v0[29];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_100004444(v13, &qword_10006BC08, &qword_100054A80);
  v15 = v0[28];
  v14 = v0[29];
  v17 = v0[26];
  v16 = v0[27];
  v18 = v0[23];
  v19 = v0[20];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10003DE38()
{
  v1[2] = v0;
  v2 = *(*(sub_1000035C4(&qword_10006BCD0, &qword_100054ED8) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_100050048();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_1000512D8();
  v1[7] = sub_1000512C8();
  v7 = sub_1000512B8();

  return _swift_task_switch(sub_10003DF64, v7, v6);
}

uint64_t sub_10003DF64()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_10003E53C(v5);
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    v6 = *(v0 + 16);
    sub_100004444(*(v0 + 24), &qword_10006BCD0, &qword_100054ED8);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 64) = 0;

    sub_100050308();
  }

  else
  {
    v7 = *(v0 + 16);
    (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 24), *(v0 + 32));
    v8 = sub_1000312B0();
    v9 = sub_100050058();

    if (qword_100069F00 != -1)
    {
      swift_once();
    }

    v10 = sub_100050268();
    sub_100008BA0(v10, qword_10006E048);
    v11 = sub_100050248();
    v12 = sub_100051348();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v9 & 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "TranslationModel isFavorite: %{BOOL}d", v13, 8u);
    }

    v15 = *(v0 + 40);
    v14 = *(v0 + 48);
    v16 = *(v0 + 32);
    v17 = *(v0 + 16);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 65) = v9 & 1;

    sub_100050308();
    (*(v15 + 8))(v14, v16);
  }

  v18 = *(v0 + 48);
  v19 = *(v0 + 24);

  v20 = *(v0 + 8);

  return v20();
}

void sub_10003E1E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_10003E290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000A00C(a3, v24 - v10, &qword_10006A7B8, &qword_100054AB0);
  v12 = sub_1000512F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100004444(v11, &qword_10006A7B8, &qword_100054AB0);
  }

  else
  {
    sub_1000512E8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000512B8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100051198() + 32;

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

      sub_100004444(a3, &qword_10006A7B8, &qword_100054AB0);

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

  sub_100004444(a3, &qword_10006A7B8, &qword_100054AB0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10003E53C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_10004FDB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v36 = &v33 - v17;
  v18 = __chkstk_darwin(v16);
  v38 = &v33 - v19;
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v22 = *(v12 + 48);
  if (v22(v10, 1, v11) != 1)
  {
    v35 = a1;
    v33 = *(v12 + 32);
    v33(v21, v10, v11);
    swift_getKeyPath();
    swift_getKeyPath();
    v34 = v2;
    sub_1000502F8();

    if (v22(v8, 1, v11) == 1)
    {
      (*(v12 + 8))(v21, v11);
      sub_100004444(v8, &qword_10006A2A0, &qword_1000528E0);
    }

    else
    {
      v24 = v12;
      v25 = v21;
      v26 = v38;
      v33(v38, v8, v11);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000502F8();

      if (v40)
      {
        v27 = v39;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000502F8();

        if (v40)
        {
          v33 = v27;
          v34 = v39;
          v28 = *(v24 + 16);
          v28(v36, v25, v11);
          v28(v37, v26, v11);
          a1 = v35;
          sub_100050038();
          v29 = *(v24 + 8);
          v29(v26, v11);
          v29(v25, v11);
          v23 = 0;
          goto LABEL_11;
        }
      }

      v30 = *(v24 + 8);
      v30(v26, v11);
      v30(v25, v11);
    }

    v23 = 1;
    a1 = v35;
    goto LABEL_11;
  }

  sub_100004444(v10, &qword_10006A2A0, &qword_1000528E0);
  v23 = 1;
LABEL_11:
  v31 = sub_100050048();
  return (*(*(v31 - 8) + 56))(a1, v23, 1, v31);
}

uint64_t sub_10003EA14()
{
  v1 = v0;
  v2 = sub_1000035C4(&qword_10006BCD0, &qword_100054ED8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_100050048();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E53C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100004444(v5, &qword_10006BCD0, &qword_100054ED8);
  }

  (*(v7 + 32))(v10, v5, v6);
  v12 = sub_1000312B0();
  v13 = sub_100050058();

  if (v13)
  {
    if (qword_100069F00 != -1)
    {
      swift_once();
    }

    v14 = sub_100050268();
    sub_100008BA0(v14, qword_10006E048);
    v15 = sub_100050248();
    v16 = sub_100051348();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Skip adding to favorite, already done so", v17, 2u);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = 1;

    sub_100050308();
    v18 = *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel____lazy_storage___sharedFavorites);
    sub_100050028();

    v22 = 2;
    v23 = 0x6D6574737973;
    v24 = 0xE600000000000000;
    v25 = 0;
    v26 = 0;
    v19 = sub_100051128();
    sub_10004DA5C();
    sub_100009FC4(0, &qword_10006A480, NSObject_ptr);
    isa = sub_1000510D8().super.isa;

    AnalyticsSendEvent();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10003ED70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_10004FF08();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v9 = *(*(sub_1000035C4(&qword_10006AE60, &qword_1000538C0) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v10 = sub_1000035C4(&qword_10006BCB0, &qword_100054E68);
  v5[19] = v10;
  v11 = *(v10 - 8);
  v5[20] = v11;
  v12 = *(v11 + 64) + 15;
  v5[21] = swift_task_alloc();
  v13 = sub_1000035C4(&qword_10006BCB8, &unk_100054E70);
  v5[22] = v13;
  v14 = *(v13 - 8);
  v5[23] = v14;
  v15 = *(v14 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = sub_1000512D8();
  v5[26] = sub_1000512C8();
  v17 = sub_1000512B8();
  v5[27] = v17;
  v5[28] = v16;

  return _swift_task_switch(sub_10003EF88, v17, v16);
}

uint64_t sub_10003EF88()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 192);
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    sub_1000500B8();
    sub_100051308();
    (*(v5 + 8))(v4, v6);
    *(v0 + 272) = enum case for LanguageState.downloading(_:);
    *(v0 + 276) = enum case for LanguageState.installed(_:);
    *(v0 + 280) = enum case for LanguageState.availableForDownload(_:);
    v8 = *(v0 + 200);
    v9 = sub_1000512C8();
    *(v0 + 240) = v9;
    v10 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v11 = swift_task_alloc();
    *(v0 + 248) = v11;
    *v11 = v0;
    v11[1] = sub_10003F170;
    v12 = *(v0 + 192);
    v13 = *(v0 + 176);
    v14 = *(v0 + 144);

    return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v14, v9, &protocol witness table for MainActor, v13, v0 + 40);
  }

  else
  {
    v15 = *(v0 + 208);

    v16 = *(v0 + 192);
    v17 = *(v0 + 168);
    v19 = *(v0 + 136);
    v18 = *(v0 + 144);
    v21 = *(v0 + 120);
    v20 = *(v0 + 128);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_10003F170()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v9 = *v1;

  v4 = v2[30];

  v5 = v2[27];
  v6 = v2[28];
  if (v0)
  {
    v7 = sub_10003FC1C;
  }

  else
  {
    v7 = sub_10003F290;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10003F290()
{
  v77 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 208);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    if (qword_100069EF8 != -1)
    {
      swift_once();
    }

    v5 = sub_100050268();
    sub_100008BA0(v5, qword_10006E030);
    v6 = sub_100050248();
    v7 = sub_100051338();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 232);
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Download language pair finish", v10, 2u);
    }

    v11 = *(v0 + 192);
    v12 = *(v0 + 168);
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);

    v17 = *(v0 + 8);

    return v17();
  }

  (*(v3 + 32))(*(v0 + 136), v1, v2);
  if (qword_100069EF8 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 128);
  v20 = *(v0 + 136);
  v21 = *(v0 + 104);
  v22 = *(v0 + 112);
  v23 = sub_100050268();
  sub_100008BA0(v23, qword_10006E030);
  v24 = *(v22 + 16);
  v24(v19, v20, v21);
  v25 = sub_100050248();
  v26 = sub_100051338();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 128);
  v29 = *(v0 + 104);
  v30 = *(v0 + 112);
  if (v27)
  {
    v31 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v76 = v74;
    *v31 = 136446210;
    v73 = sub_10004FEE8();
    v75 = v24;
    v33 = v32;
    v34 = *(v30 + 8);
    v34(v28, v29);
    v35 = sub_100008C04(v73, v33, &v76);
    v24 = v75;

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "Download language yield: %{public}s", v31, 0xCu);
    sub_100009F78(v74);
  }

  else
  {

    v34 = *(v30 + 8);
    v34(v28, v29);
  }

  *(v0 + 256) = v34;
  v36 = *(v0 + 272);
  v38 = *(v0 + 112);
  v37 = *(v0 + 120);
  v39 = *(v0 + 104);
  v24(v37, *(v0 + 136), v39);
  v40 = (*(v38 + 88))(v37, v39);
  if (v40 == v36)
  {
    v41 = *(v0 + 232);
    v42 = *(v0 + 136);
    v43 = *(v0 + 120);
    v44 = *(v0 + 104);
    (*(*(v0 + 112) + 96))(v43, v44);
    v45 = *v43;
    type metadata accessor for TranslationModel.TranslationError(0);
    sub_100042294(&qword_10006BC80, type metadata accessor for TranslationModel.TranslationError);
    v46 = swift_allocError();
    *v47 = v45;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 72) = v46;

    sub_100050308();
    v48 = v42;
    v49 = v44;
    goto LABEL_16;
  }

  if (v40 != *(v0 + 276))
  {
    v61 = *(v0 + 280);
    v62 = v40;
    type metadata accessor for TranslationModel.TranslationError(0);
    sub_100042294(&qword_10006BC80, type metadata accessor for TranslationModel.TranslationError);
    v64 = swift_allocError();
    v65 = *(v0 + 232);
    v66 = *(v0 + 136);
    if (v62 != v61)
    {
      v69 = *(v0 + 120);
      v70 = *(v0 + 104);
      v71 = v34;
      v72 = *(v0 + 112) + 8;
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 56) = v64;

      sub_100050308();
      v71(v66, v70);
      v71(v69, v70);
      goto LABEL_17;
    }

    v67 = *(v0 + 104);
    v68 = *(v0 + 112) + 8;
    *v63 = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = v64;

    sub_100050308();
    v48 = v66;
    v49 = v67;
LABEL_16:
    v34(v48, v49);
LABEL_17:
    v50 = *(v0 + 200);
    v51 = sub_1000512C8();
    *(v0 + 240) = v51;
    v52 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v53 = swift_task_alloc();
    *(v0 + 248) = v53;
    *v53 = v0;
    v53[1] = sub_10003F170;
    v54 = *(v0 + 192);
    v55 = *(v0 + 176);
    v56 = *(v0 + 144);

    return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v56, v51, &protocol witness table for MainActor, v55, v0 + 40);
  }

  v57 = *(v0 + 232);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = 0;

  sub_100050308();
  v58 = swift_task_alloc();
  *(v0 + 264) = v58;
  *v58 = v0;
  v58[1] = sub_10003FA20;
  v59 = *(v0 + 232);
  v60 = *(v0 + 96);

  return sub_10003FE38(v60);
}

uint64_t sub_10003FA20()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v6 = *v0;

  v3 = *(v1 + 224);
  v4 = *(v1 + 216);

  return _swift_task_switch(sub_10003FB40, v4, v3);
}

uint64_t sub_10003FB40()
{
  v1 = *(v0 + 112) + 8;
  (*(v0 + 256))(*(v0 + 136), *(v0 + 104));
  v2 = *(v0 + 200);
  v3 = sub_1000512C8();
  *(v0 + 240) = v3;
  v4 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  *v5 = v0;
  v5[1] = sub_10003F170;
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v8 = *(v0 + 144);

  return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v8, v3, &protocol witness table for MainActor, v7, v0 + 40);
}

uint64_t sub_10003FC1C()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];

  (*(v3 + 8))(v2, v4);
  v5 = v0[5];
  if (qword_100069EF8 != -1)
  {
    swift_once();
  }

  v6 = sub_100050268();
  sub_100008BA0(v6, qword_10006E030);
  swift_errorRetain();
  v7 = sub_100050248();
  v8 = sub_100051358();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = sub_10004FC78();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Download language pair failure: %@", v9, 0xCu);
    sub_100004444(v10, &qword_10006AB78, &unk_100053370);
  }

  v12 = v0[29];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[6] = v5;
  sub_100050308();
  v13 = v0[24];
  v14 = v0[21];
  v16 = v0[17];
  v15 = v0[18];
  v18 = v0[15];
  v17 = v0[16];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10003FE38(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_1000035C4(&qword_10006A7B8, &qword_100054AB0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(sub_1000035C4(&qword_10006A2A0, &qword_1000528E0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = sub_10004FE78();
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = sub_1000512D8();
  v2[12] = sub_1000512C8();
  v9 = sub_1000512B8();

  return _swift_task_switch(sub_10003FFAC, v9, v8);
}

uint64_t sub_10003FFAC()
{
  v35 = v0;
  v1 = *(v0 + 96);

  if (qword_100069EF8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 24);
  v6 = sub_100050268();
  sub_100008BA0(v6, qword_10006E030);
  (*(v3 + 16))(v2, v5, v4);
  v7 = sub_100050248();
  v8 = sub_100051338();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 64);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136446210;
    v15 = sub_10004FE68();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_100008C04(v15, v17, &v34);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Complete download for pair: %{public}s", v13, 0xCu);
    sub_100009F78(v14);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v32 = *(v0 + 88);
  v33 = *(v0 + 80);
  v19 = *(v0 + 48);
  v20 = *(v0 + 56);
  v21 = *(v0 + 32);
  v31 = *(v0 + 40);
  v22 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = 0;

  sub_100050308();
  sub_10004FE58();
  v23 = sub_10004FDB8();
  v30 = *(*(v23 - 8) + 56);
  v30(v20, 0, 1, v23);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v20, v19, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  sub_100004444(v20, &qword_10006A2A0, &qword_1000528E0);
  sub_10004FE48();
  v30(v20, 0, 1, v23);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v20, v19, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 104) = 0;

  sub_100050308();
  sub_100004444(v20, &qword_10006A2A0, &qword_1000528E0);
  v24 = sub_1000512F8();
  (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
  v25 = swift_allocObject();
  swift_weakInit();

  v26 = sub_1000512C8();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v25;

  sub_10002ED44(0, 0, v31, &unk_100054E90, v27);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100040498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a1;
  v4[12] = a4;
  v5 = *(*(sub_1000035C4(&qword_10006A2A0, &qword_1000528E0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_1000512D8();
  v4[15] = sub_1000512C8();
  v7 = sub_1000512B8();

  return _swift_task_switch(sub_100040574, v7, v6);
}

uint64_t sub_100040574()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 96);
    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    v6 = *(v0 + 112);
    if (v5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000502F8();
    }

    else
    {
      v7 = sub_10004FDB8();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    }

    v8 = *(v0 + 96);
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    v10 = *(v0 + 104);
    if (v9)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000502F8();
    }

    else
    {
      v11 = sub_10004FDB8();
      (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    }

    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    sub_100036318(v12, v13);

    sub_100004444(v13, &qword_10006A2A0, &qword_1000528E0);
    sub_100004444(v12, &qword_10006A2A0, &qword_1000528E0);
  }

  v14 = Strong == 0;
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  **(v0 + 88) = v14;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000407E4()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__suggestedLocales;
  v2 = sub_1000035C4(&qword_10006BBD0, &qword_1000549F0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__lowConfidenceLocales, v2);
  v4 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__error;
  v5 = sub_1000035C4(&qword_10006BBD8, &qword_1000549F8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_ignoredAttributes);

  v7 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__sourceLocale;
  v8 = sub_1000035C4(&qword_10006BBE0, &qword_100054A00);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__sourceText;
  v11 = sub_1000035C4(&qword_10006BBE8, &unk_100054A08);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v13 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__sourceLocaleWasDetected;
  v14 = sub_1000035C4(&qword_10006AC10, &qword_1000536D0);
  v15 = *(*(v14 - 8) + 8);
  v16 = v0 + v13;
  v17 = v14;
  (v15)(v16);
  v9(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__targetLocale, v8);
  v12(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__targetText, v11);
  v18 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler + 8);
  sub_100009F24(*(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler));
  v19 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__translationAnnotation;
  v20 = sub_1000035C4(&qword_10006BBF0, &qword_100054A18);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__availableLocales;
  v22 = sub_1000035C4(&qword_10006BBF8, &qword_100054A20);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v15(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__replacementAvailable, v17);
  v23 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel____lazy_storage___languagesService);

  v15(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__firstUseConsent, v17);

  v24 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__selectedDisambiguation;
  v25 = sub_1000035C4(&qword_10006BC00, &unk_100054A28);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  sub_100004444(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_cplIntervalID, &qword_10006A478, &qword_100052B80);
  v26 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_subscriptions);

  v27 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier + 8);

  v28 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_originalPlayer);

  v29 = *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationPlayer);

  v15(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__isFavorite, v17);

  return v0;
}

uint64_t sub_100040C24()
{
  sub_1000407E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_100040CA4()
{
  sub_100041060(319, &qword_10006BA18, &qword_10006AE48, &qword_100053898);
  if (v1 <= 0x3F)
  {
    v21 = *(v0 - 8) + 64;
    sub_100041060(319, &qword_10006BA20, &qword_10006BA28, &qword_1000547E0);
    if (v3 <= 0x3F)
    {
      v22 = *(v2 - 8) + 64;
      sub_100041060(319, &qword_10006BA30, &qword_10006A2A0, &qword_1000528E0);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_100041060(319, &qword_10006BA38, &qword_10006A2B8, &qword_100052930);
        if (v8 <= 0x3F)
        {
          v9 = *(v7 - 8) + 64;
          sub_1000445DC(319, &qword_10006B878, &type metadata for Bool, &type metadata accessor for Published);
          if (v11 <= 0x3F)
          {
            v12 = *(v10 - 8) + 64;
            sub_100041060(319, &qword_10006BA40, &qword_10006BA48, &unk_100054818);
            if (v14 <= 0x3F)
            {
              v23 = *(v13 - 8) + 64;
              sub_100041060(319, &qword_10006BA50, &unk_10006B420, "$J");
              if (v16 <= 0x3F)
              {
                v24 = *(v15 - 8) + 64;
                sub_1000445DC(319, &qword_10006BA58, &type metadata for Int, &type metadata accessor for Published);
                if (v18 <= 0x3F)
                {
                  v25 = *(v17 - 8) + 64;
                  sub_1000410B4();
                  if (v20 <= 0x3F)
                  {
                    v26 = *(v19 - 8) + 64;
                    swift_updateClassMetadata2();
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

void sub_100041060(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000372C(a3, a4);
    v5 = sub_100050318();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000410B4()
{
  if (!qword_10006BA60)
  {
    sub_100050228();
    v0 = sub_1000514E8();
    if (!v1)
    {
      atomic_store(v0, &qword_10006BA60);
    }
  }
}

unint64_t sub_100041134()
{
  result = qword_10006BBC8;
  if (!qword_10006BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BBC8);
  }

  return result;
}

uint64_t sub_100041188@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000502B8();
  *a1 = result;
  return result;
}

uint64_t sub_1000411FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100044974;

  return sub_1000335F4(a1, v4, v5, v6);
}

uint64_t sub_1000412B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000412F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_1000035C4(&qword_10006A298, &qword_100054E10);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_100041384@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v5;
  return result;
}

uint64_t sub_100041404(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_100041494(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  swift_errorRetain();
  return sub_100050308();
}

uint64_t sub_100041524@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v5;
  return result;
}

uint64_t sub_1000415B4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_100041638@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v5;
  return result;
}

uint64_t sub_1000416B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_100041734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100044974;

  return sub_100037534(a1, v4, v5, v7, v6);
}

uint64_t sub_1000417F4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000418EC;

  return v7(a1);
}

uint64_t sub_1000418EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000419E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100044974;

  return sub_1000417F4(a1, v5);
}

uint64_t sub_100041B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041BAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100041BEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100044974;

  return sub_100036BB4(a1, v4, v5, v6, v7);
}

uint64_t sub_100041D00()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100041D48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100044974;

  return sub_100038D64(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100041E10()
{
  v1 = sub_10004FDB8();
  v2 = *(v1 - 8);
  v22 = *(v2 + 80);
  v3 = (v22 + 40) & ~v22;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for TranslationRequestContext();
  v6 = *(*(v5 - 1) + 80);
  v20 = *(*(v5 - 1) + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v19 = *(v2 + 8);
  v19(v0 + v3, v1);
  v21 = (v3 + v4 + v6) & ~v6;
  v9 = v0 + v21;

  v10 = *(v0 + v21 + 16);

  v11 = v5[8];
  v12 = sub_100050228();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v21 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = *(v9 + v5[10] + 8);

  v15 = v5[12];
  v16 = *(v2 + 48);
  if (!v16(v9 + v15, 1, v1))
  {
    v19(v9 + v15, v1);
  }

  v17 = v5[13];
  if (!v16(v9 + v17, 1, v1))
  {
    v19(v9 + v17, v1);
  }

  return _swift_deallocObject(v0, v21 + v20, v22 | v6 | 7);
}

uint64_t sub_100042080(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004FDB8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TranslationRequestContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100044974;

  return sub_100038AE4(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1000421E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100044974;

  return sub_100038900(a1, v4, v5, v6);
}

uint64_t sub_100042294(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000422DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000035C4(&qword_10006BC88, &qword_100054D30);
      v7 = *(sub_10004FDB8() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_10004FDB8() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_10004247C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10004FDB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100042294(&qword_10006BCF0, &type metadata accessor for Locale);
  v36 = a2;
  v13 = sub_1000510F8();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100042294(&qword_10006A2B0, &type metadata accessor for Locale);
      v23 = sub_100051118();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100042AB8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10004275C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_10004FDB8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000035C4(&qword_10006BCF8, &unk_100054F10);
  result = sub_1000515A8();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100042294(&qword_10006BCF0, &type metadata accessor for Locale);
      result = sub_1000510F8();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100042AB8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_10004FDB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10004275C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100042D5C();
      goto LABEL_12;
    }

    sub_100042F94(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100042294(&qword_10006BCF0, &type metadata accessor for Locale);
  v15 = sub_1000510F8();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100042294(&qword_10006A2B0, &type metadata accessor for Locale);
      v23 = sub_100051118();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100051678();
  __break(1u);
  return result;
}

void *sub_100042D5C()
{
  v1 = v0;
  v2 = sub_10004FDB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035C4(&qword_10006BCF8, &unk_100054F10);
  v7 = *v0;
  v8 = sub_100051598();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_100042F94(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10004FDB8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000035C4(&qword_10006BCF8, &unk_100054F10);
  v10 = sub_1000515A8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100042294(&qword_10006BCF0, &type metadata accessor for Locale);
      result = sub_1000510F8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1000432B0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000433A4;

  return v6(v2 + 32);
}

uint64_t sub_1000433A4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000434B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100044974;

  return sub_1000432B0(a1, v5);
}

_OWORD *sub_1000435DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100043678()
{
  v1 = *(sub_1000035C4(&qword_10006A2A0, &qword_1000528E0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 40) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_10004FDB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v0 + v4, 1, v8))
  {
    (*(v9 + 8))(v0 + v4, v8);
  }

  if (!v10(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return _swift_deallocObject(v0, v5 + v3, v2 | 7);
}

uint64_t sub_1000437F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043864(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000035C4(&qword_10006A2A0, &qword_1000528E0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100044974;

  return sub_100034D98(a1, v9, v10, v11, v1 + v7, v1 + v8);
}

uint64_t sub_1000439A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100043A00()
{
  v1 = sub_10004FDB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = *(v0 + 32);

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v12(v0 + v6, v1);

  v13 = *(v0 + v8);

  return _swift_deallocObject(v0, v9 + 8, v3 | 7);
}

uint64_t sub_100043B30(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_10004FDB8() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10000DA74;

  return sub_10003A268(a1, v11, v12, v13, v1 + v6, v1 + v8, v14, v15);
}

uint64_t sub_100043CA0()
{
  v1 = sub_10004FDB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_100043DA0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(sub_10004FDB8() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = v11 + v10;
  v13 = *(v3 + 16);
  v14 = *(v3 + v12);
  v15 = *(v3 + (v12 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_10003CA60(a1, a2, a3, v13, v3 + v9, v3 + v11, v14, v15);
}

uint64_t sub_100043E6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100043E84()
{
  v1 = sub_10004FE78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100043F50(uint64_t a1)
{
  v4 = *(sub_10004FE78() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100044974;

  return sub_10003ED70(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100044048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100044974;

  return sub_100040498(a1, v4, v5, v6);
}

uint64_t sub_1000440FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100044134()
{
  v1 = sub_10004FDB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 2);
  swift_unknownObjectRelease();
  v10 = *(v0 + 4);

  v11 = *(v0 + 5);

  v12 = *(v2 + 8);
  v12(&v0[v4], v1);
  v12(&v0[v6], v1);

  v13 = *&v0[((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8];

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_100044270(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_10004FDB8() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = v1[2];
  v20 = v1[3];
  v11 = v1[5];
  v19 = v1[4];
  v12 = *(v1 + v9);
  v14 = *(v1 + v10);
  v13 = *(v1 + v10 + 8);
  v15 = *(v1 + v10 + 16);
  v16 = *(v1 + ((v9 + 39) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10000DA74;

  return sub_10003CDF4(a1, v21, v20, v19, v11, v1 + v6, v1 + v8, v12);
}

uint64_t sub_1000443F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100044438(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100044974;

  return sub_100033DE8(a1, v4, v5, v6);
}

void sub_10004453C()
{
  sub_1000445DC(319, &qword_10006B2E8, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10004FE78();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000445DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10004462C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000446B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100044730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004FDB8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100044810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004FDB8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000448C8()
{
  result = sub_10004FDB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004498C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000035C4(&qword_10006A478, &qword_100052B80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100044ADC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000035C4(&qword_10006A478, &qword_100052B80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for TranslationRequestContext()
{
  result = qword_10006BE98;
  if (!qword_10006BE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100044C64()
{
  sub_100009FC4(319, &qword_10006ABD0, NSAttributedString_ptr);
  if (v0 <= 0x3F)
  {
    sub_100044E38(319, &unk_10006BEA8, type metadata accessor for Key, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100044E38(319, &qword_10006BA60, &type metadata accessor for OSSignpostID, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100044DE8();
        if (v3 <= 0x3F)
        {
          sub_100044E38(319, &qword_10006B2E0, &type metadata accessor for Locale, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100044DE8()
{
  if (!qword_10006B2E8)
  {
    v0 = sub_1000514E8();
    if (!v1)
    {
      atomic_store(v0, &qword_10006B2E8);
    }
  }
}

void sub_100044E38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for TranslationRequestContext.Origin(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TranslationRequestContext.Origin(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100044FF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranslationRequestContext();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  v9 = [a1 inputItems];
  v10 = sub_100051248();

  if (!*(v10 + 16))
  {

    goto LABEL_11;
  }

  sub_1000091AC(v10 + 32, &v95);

  sub_100009FC4(0, &qword_10006A450, NSExtensionItem_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v11 = v96;
  v12 = [v96 userInfo];
  if (!v12)
  {
LABEL_15:
    v96 = 0u;
    v97 = 0u;
    goto LABEL_16;
  }

  v13 = v12;
  v14 = sub_1000510E8();

  *&v96 = sub_100051158();
  *(&v96 + 1) = v15;
  sub_100051588();
  if (!*(v14 + 16) || (v16 = sub_10004DD84(&v95), (v17 & 1) == 0))
  {

    sub_100045DE0(&v95);
    goto LABEL_15;
  }

  sub_1000091AC(*(v14 + 56) + 32 * v16, &v96);
  sub_100045DE0(&v95);

  if (!*(&v97 + 1))
  {
LABEL_16:
    sub_10000E6E8(&v96);
    goto LABEL_17;
  }

  if (!swift_dynamicCast())
  {
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v18 = v95;
LABEL_18:
  v8[8] = v18;
  v21 = [v11 attributedContentText];
  if (v21)
  {
    goto LABEL_19;
  }

  if (v18)
  {
    v29 = objc_allocWithZone(NSAttributedString);
    v30 = sub_100051128();
    v31 = [v29 initWithString:v30];

    if (v31)
    {
      v21 = v31;
LABEL_19:
      *v8 = v21;
      v22 = [v11 userInfo];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1000510E8();

        *&v96 = sub_100051158();
        *(&v96 + 1) = v25;
        sub_100051588();
        if (*(v24 + 16))
        {
          v26 = sub_10004DD84(&v95);
          if (v27)
          {
            sub_1000091AC(*(v24 + 56) + 32 * v26, &v96);
            sub_100045DE0(&v95);

            if (*(&v97 + 1))
            {
              if (swift_dynamicCast())
              {
                v28 = v95;
                goto LABEL_32;
              }

LABEL_31:
              v28 = 0;
LABEL_32:
              v8[9] = v28;
              v32 = [v11 userInfo];
              if (v32)
              {
                v33 = v32;
                v34 = sub_1000510E8();

                v93 = sub_100051158();
                v94 = v35;
                sub_100051588();
                if (*(v34 + 16))
                {
                  v36 = sub_10004DD84(&v95);
                  if (v37)
                  {
                    sub_1000091AC(*(v34 + 56) + 32 * v36, &v96);
                    sub_100045DE0(&v95);

                    if (*(&v97 + 1))
                    {
                      sub_1000035C4(&qword_10006BF08, &qword_100055088);
                      if (swift_dynamicCast())
                      {
                        v38 = v95;
                        goto LABEL_42;
                      }

LABEL_41:
                      v38 = &_swiftEmptyArrayStorage;
LABEL_42:
                      *(v8 + 2) = v38;
                      v39 = [v11 userInfo];
                      if (v39)
                      {
                        v40 = v39;
                        v41 = sub_1000510E8();

                        v93 = sub_100051158();
                        v94 = v42;
                        sub_100051588();
                        if (*(v41 + 16))
                        {
                          v43 = sub_10004DD84(&v95);
                          if (v44)
                          {
                            sub_1000091AC(*(v41 + 56) + 32 * v43, &v96);
                            sub_100045DE0(&v95);

                            if (*(&v97 + 1))
                            {
                              if (swift_dynamicCast())
                              {
                                v45 = v4[8];
                                sub_100050238();
                                v46 = sub_100050228();
                                (*(*(v46 - 8) + 56))(&v8[v45], 0, 1, v46);
                                goto LABEL_52;
                              }

LABEL_51:
                              v47 = v4[8];
                              v48 = sub_100050228();
                              (*(*(v48 - 8) + 56))(&v8[v47], 1, 1, v48);
LABEL_52:
                              v49 = [v11 userInfo];
                              if (v49)
                              {
                                v50 = v49;
                                v51 = sub_1000510E8();

                                *&v96 = sub_100051158();
                                *(&v96 + 1) = v52;
                                sub_100051588();
                                if (*(v51 + 16))
                                {
                                  v53 = sub_10004DD84(&v95);
                                  if (v54)
                                  {
                                    sub_1000091AC(*(v51 + 56) + 32 * v53, &v96);
                                    sub_100045DE0(&v95);

                                    if (*(&v97 + 1))
                                    {
                                      if (swift_dynamicCast())
                                      {
                                        v55 = v95;
                                        goto LABEL_62;
                                      }

LABEL_61:
                                      v55 = 0;
LABEL_62:
                                      v8[v4[9]] = v55;
                                      v56 = [v11 userInfo];
                                      if (v56)
                                      {
                                        v57 = v56;
                                        v58 = sub_1000510E8();

                                        v93 = sub_100051158();
                                        v94 = v59;
                                        sub_100051588();
                                        if (*(v58 + 16))
                                        {
                                          v60 = sub_10004DD84(&v95);
                                          if (v61)
                                          {
                                            sub_1000091AC(*(v58 + 56) + 32 * v60, &v96);
                                            sub_100045DE0(&v95);

                                            if (*(&v97 + 1))
                                            {
                                              sub_1000035C4(&qword_10006BF00, &qword_100055080);
                                              if (swift_dynamicCast())
                                              {
                                                v62 = v95;
                                                if (v95)
                                                {
                                                  v63 = v95[2];
                                                  if (v63)
                                                  {

                                                    v64 = sub_10004DD0C(0x747865746E6F63, 0xE700000000000000);
                                                    if (v65)
                                                    {
                                                      sub_1000091AC(v62[7] + 32 * v64, &v95);

                                                      if (swift_dynamicCast())
                                                      {
                                                        v66 = *(&v96 + 1);
                                                        v63 = v96;
LABEL_104:
                                                        v89 = &v8[v4[10]];
                                                        *v89 = v63;
                                                        *(v89 + 1) = v66;
                                                        if (v62[2] && (v90 = sub_10004DD0C(0x6E696769726FLL, 0xE600000000000000), (v91 & 1) != 0))
                                                        {
                                                          sub_1000091AC(v62[7] + 32 * v90, &v95);

                                                          if (swift_dynamicCast())
                                                          {
                                                            if (v96 == 2)
                                                            {
                                                              v68 = 2;
                                                            }

                                                            else
                                                            {
                                                              v68 = v96 == 1;
                                                            }

LABEL_77:
                                                            v8[v4[11]] = v68;
                                                            v69 = [v11 userInfo];
                                                            if (v69)
                                                            {
                                                              v70 = v69;
                                                              v71 = sub_1000510E8();

                                                              v93 = sub_100051158();
                                                              v94 = v72;
                                                              sub_100051588();
                                                              if (*(v71 + 16))
                                                              {
                                                                v73 = sub_10004DD84(&v95);
                                                                if (v74)
                                                                {
                                                                  sub_1000091AC(*(v71 + 56) + 32 * v73, &v96);
                                                                  sub_100045DE0(&v95);

                                                                  if (*(&v97 + 1))
                                                                  {
                                                                    if (swift_dynamicCast())
                                                                    {
                                                                      v75 = v4[12];
                                                                      sub_10004FD18();
                                                                      v76 = sub_10004FDB8();
                                                                      (*(*(v76 - 8) + 56))(&v8[v75], 0, 1, v76);
                                                                      goto LABEL_87;
                                                                    }

LABEL_86:
                                                                    v77 = v4[12];
                                                                    v78 = sub_10004FDB8();
                                                                    (*(*(v78 - 8) + 56))(&v8[v77], 1, 1, v78);
LABEL_87:
                                                                    v79 = [v11 userInfo];
                                                                    if (v79)
                                                                    {
                                                                      v80 = v79;
                                                                      v81 = sub_1000510E8();

                                                                      v93 = sub_100051158();
                                                                      v94 = v82;
                                                                      sub_100051588();
                                                                      if (*(v81 + 16) && (v83 = sub_10004DD84(&v95), (v84 & 1) != 0))
                                                                      {
                                                                        sub_1000091AC(*(v81 + 56) + 32 * v83, &v96);
                                                                        sub_100045DE0(&v95);

                                                                        if (*(&v97 + 1))
                                                                        {
                                                                          if (swift_dynamicCast())
                                                                          {
                                                                            v85 = v4[13];
                                                                            sub_10004FD18();

                                                                            v86 = sub_10004FDB8();
                                                                            (*(*(v86 - 8) + 56))(&v8[v85], 0, 1, v86);
LABEL_98:
                                                                            sub_100009D80(v8, a2);
                                                                            v19 = 0;
                                                                            return (*(v5 + 56))(a2, v19, 1, v4);
                                                                          }

LABEL_97:
                                                                          v87 = v4[13];
                                                                          v88 = sub_10004FDB8();
                                                                          (*(*(v88 - 8) + 56))(&v8[v87], 1, 1, v88);
                                                                          goto LABEL_98;
                                                                        }
                                                                      }

                                                                      else
                                                                      {

                                                                        sub_100045DE0(&v95);
                                                                        v96 = 0u;
                                                                        v97 = 0u;
                                                                      }
                                                                    }

                                                                    else
                                                                    {

                                                                      v96 = 0u;
                                                                      v97 = 0u;
                                                                    }

                                                                    sub_10000E6E8(&v96);
                                                                    goto LABEL_97;
                                                                  }

LABEL_85:
                                                                  sub_10000E6E8(&v96);
                                                                  goto LABEL_86;
                                                                }
                                                              }

                                                              sub_100045DE0(&v95);
                                                            }

                                                            v96 = 0u;
                                                            v97 = 0u;
                                                            goto LABEL_85;
                                                          }
                                                        }

                                                        else
                                                        {
                                                        }

LABEL_76:
                                                        v68 = 0;
                                                        goto LABEL_77;
                                                      }
                                                    }

                                                    else
                                                    {
                                                    }

                                                    v63 = 0;
                                                  }

                                                  v66 = 0;
                                                  goto LABEL_104;
                                                }
                                              }

LABEL_75:
                                              v67 = &v8[v4[10]];
                                              *v67 = 0;
                                              *(v67 + 1) = 0;
                                              goto LABEL_76;
                                            }

LABEL_74:
                                            sub_10000E6E8(&v96);
                                            goto LABEL_75;
                                          }
                                        }

                                        sub_100045DE0(&v95);
                                      }

                                      v96 = 0u;
                                      v97 = 0u;
                                      goto LABEL_74;
                                    }

LABEL_60:
                                    sub_10000E6E8(&v96);
                                    goto LABEL_61;
                                  }
                                }

                                sub_100045DE0(&v95);
                              }

                              v96 = 0u;
                              v97 = 0u;
                              goto LABEL_60;
                            }

LABEL_50:
                            sub_10000E6E8(&v96);
                            goto LABEL_51;
                          }
                        }

                        sub_100045DE0(&v95);
                      }

                      v96 = 0u;
                      v97 = 0u;
                      goto LABEL_50;
                    }

LABEL_40:
                    sub_10000E6E8(&v96);
                    goto LABEL_41;
                  }
                }

                sub_100045DE0(&v95);
              }

              v96 = 0u;
              v97 = 0u;
              goto LABEL_40;
            }

LABEL_30:
            sub_10000E6E8(&v96);
            goto LABEL_31;
          }
        }

        sub_100045DE0(&v95);
      }

      v96 = 0u;
      v97 = 0u;
      goto LABEL_30;
    }
  }

LABEL_12:
  v19 = 1;
  return (*(v5 + 56))(a2, v19, 1, v4);
}

Swift::Int sub_100045CAC()
{
  v1 = *v0;
  sub_1000516C8();
  sub_1000516E8(v1);
  return sub_1000516F8();
}

Swift::Int sub_100045D20()
{
  v1 = *v0;
  sub_1000516C8();
  sub_1000516E8(v1);
  return sub_1000516F8();
}

uint64_t *sub_100045D64@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_100045D8C()
{
  result = qword_10006BEF8;
  if (!qword_10006BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BEF8);
  }

  return result;
}

__n128 sub_100045E40(uint64_t a1, uint64_t a2)
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

uint64_t sub_100045E5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100045EA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100045F20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_100050078();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000035C4(&qword_10006BF10, &qword_100055178);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v37 - v8;
  v10 = sub_1000035C4(&qword_10006BF18, &qword_100055180);
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v13 = v37 - v12;
  v40 = sub_1000035C4(&qword_10006BF20, &qword_100055188);
  v14 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v16 = v37 - v15;
  *v9 = sub_100050888();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = sub_1000035C4(&qword_10006BF28, &qword_100055190);
  sub_1000464C8(v1, &v9[*(v17 + 44)]);
  v18 = sub_100051078();
  v20 = v19;
  v37[1] = v6;
  v21 = &v9[*(v6 + 36)];
  v22 = sub_100050E58();
  v23 = v21 + *(sub_1000035C4(&qword_10006AD38, &qword_100053758) + 36);
  sub_100051048();
  LOBYTE(v6) = sub_100050A88();
  v23[*(sub_1000035C4(&qword_10006AD40, &qword_100053760) + 36)] = v6;
  *v21 = v22;
  v24 = sub_1000504E8();
  LOBYTE(v22) = sub_100050A88();
  v25 = v21 + *(sub_1000035C4(&qword_10006AD48, &qword_100053768) + 36);
  *v25 = v24;
  v25[8] = v22;
  v26 = (v21 + *(sub_1000035C4(&qword_10006AD50, &qword_100053770) + 36));
  *v26 = v18;
  v26[1] = v20;
  v49 = *v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if ((v46 & 1) == 0)
  {
    sub_10000D074();
    v27 = sub_100051388();
    sub_100051398();
  }

  sub_100050808();
  sub_1000485F0();
  sub_100050D28();

  sub_100004444(v9, &qword_10006BF10, &qword_100055178);
  v28 = sub_1000504F8();
  v29 = sub_100050A88();
  (*(v38 + 32))(v16, v13, v39);
  v30 = v41;
  v31 = &v16[*(v40 + 36)];
  *v31 = v28;
  v31[8] = v29;
  v33 = v43;
  v32 = v44;
  (*(v43 + 104))(v30, enum case for CloseButtonPosition.right(_:), v44);
  v48 = *(v2 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v46 = *(v2 + 2);
  v47 = *(v2 + 48);
  v34 = swift_allocObject();
  v35 = *(v2 + 1);
  *(v34 + 16) = *v2;
  *(v34 + 32) = v35;
  *(v34 + 48) = *(v2 + 2);
  *(v34 + 64) = *(v2 + 48);
  sub_10000A00C(&v49, v45, &qword_10006BF48, &qword_100055230);
  sub_10000A00C(&v48, v45, &qword_10006BF50, &qword_100055238);
  sub_10000A00C(&v46, v45, &qword_10006BF58, &qword_100055240);
  sub_1000486E8();
  sub_100050C58();

  (*(v33 + 8))(v30, v32);
  return sub_100004444(v16, &qword_10006BF20, &qword_100055188);
}

uint64_t sub_1000464C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a2;
  v157 = type metadata accessor for TranslationView();
  v3 = *(*(v157 - 8) + 64);
  __chkstk_darwin(v157);
  v5 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1000035C4(&qword_10006BF68, &qword_100055248);
  v137 = *(v158 - 8);
  v6 = *(v137 + 64);
  __chkstk_darwin(v158);
  v8 = &v121 - v7;
  v153 = sub_1000035C4(&qword_10006BF70, &qword_100055250);
  v143 = *(v153 - 8);
  v9 = *(v143 + 64);
  __chkstk_darwin(v153);
  v11 = &v121 - v10;
  v154 = sub_1000035C4(&qword_10006BF78, &qword_100055258);
  v12 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v156 = &v121 - v13;
  v150 = sub_1000035C4(&qword_10006BF80, &qword_100055260);
  v14 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v151 = &v121 - v15;
  v155 = sub_1000035C4(&qword_10006BF88, &qword_100055268);
  v16 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v152 = &v121 - v17;
  v136 = sub_100050098();
  v124 = *(v136 - 8);
  v18 = *(v124 + 64);
  __chkstk_darwin(v136);
  v123 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1000035C4(&qword_10006BF90, &qword_100055270);
  v20 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v134 = &v121 - v21;
  v141 = sub_1000035C4(&qword_10006BF98, &qword_100055278);
  v22 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v135 = &v121 - v23;
  v133 = sub_1000035C4(&qword_10006BFA0, &qword_100055280);
  v24 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v122 = &v121 - v25;
  v131 = sub_10004FE78();
  v130 = *(v131 - 8);
  v26 = *(v130 + 64);
  __chkstk_darwin(v131);
  v129 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1000035C4(&qword_10006BFA8, &qword_100055288);
  v28 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v147 = (&v121 - v29);
  v138 = sub_1000035C4(&qword_10006BFB0, &qword_100055290);
  v30 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v140 = &v121 - v31;
  v125 = sub_1000035C4(&qword_10006BFB8, &qword_100055298);
  v32 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v126 = &v121 - v33;
  v139 = sub_1000035C4(&qword_10006BFC0, &qword_1000552A0);
  v34 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  v127 = &v121 - v35;
  v145 = sub_1000035C4(&qword_10006BFC8, &qword_1000552A8);
  v36 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v142 = &v121 - v37;
  v38 = type metadata accessor for LIDResolutionView();
  v39 = *(*(v38 - 1) + 64);
  __chkstk_darwin(v38);
  v128 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TranslationModel.TranslationError(0);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v44 = (&v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = sub_1000035C4(&qword_10006BFD0, &qword_1000552B0);
  v45 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v148 = &v121 - v46;
  v47 = a1[1];
  v144 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000502F8();

  v48 = v161;
  if (v161)
  {

    v160 = v48;
    swift_errorRetain();
    sub_1000035C4(&qword_10006BC90, &qword_100054E28);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_15:

      *v147 = v48;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      sub_100048898();
      sub_100048B7C();
      v88 = v148;
      sub_1000508A8();
LABEL_21:
      sub_10000A00C(v88, v151, &qword_10006BFD0, &qword_1000552B0);
      swift_storeEnumTagMultiPayload();
      sub_10004880C();
      v118 = sub_1000487B8();
      v165 = &type metadata for FirstUseExperienceView;
      v166 = v118;
      swift_getOpaqueTypeConformance2();
      v119 = v152;
      sub_1000508A8();
      sub_100048BD0(v119, v156);
      swift_storeEnumTagMultiPayload();
      sub_100048C40();
      v120 = sub_100048F2C(&qword_10006C040, type metadata accessor for TranslationView);
      v165 = v157;
      v166 = v120;
      swift_getOpaqueTypeConformance2();
      sub_1000508A8();

      sub_100004444(v119, &qword_10006BF88, &qword_100055268);
      return sub_100004444(v88, &qword_10006BFD0, &qword_1000552B0);
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        (*(v130 + 32))(v129, v44, v131);
        v106 = v122;
        sub_10004FE48();
        v107 = type metadata accessor for DownloadSelectionView(0);
        v108 = v106 + *(v107 + 20);
        sub_10004FE58();
        v109 = *(a1 + 2);
        v168 = *(a1 + 1);
        v110 = *(&v168 + 1);
        v161 = v109;
        LOBYTE(v162) = *(a1 + 48);
        v111 = swift_allocObject();
        v112 = *(a1 + 1);
        *(v111 + 16) = *a1;
        *(v111 + 32) = v112;
        *(v111 + 48) = *(a1 + 2);
        *(v111 + 64) = *(a1 + 48);
        v113 = (v106 + *(v107 + 24));
        *v113 = sub_100048F24;
        v113[1] = v111;
        type metadata accessor for TranslationContext();

        sub_10000A00C(&v168, &v165, &qword_10006BF50, &qword_100055238);
        sub_10000A00C(&v161, &v165, &qword_10006BF58, &qword_100055240);
        sub_100048F2C(&qword_10006A348, type metadata accessor for TranslationContext);
        v114 = sub_1000502A8();
        v115 = (v106 + *(v133 + 36));
        *v115 = v114;
        v115[1] = v110;
        sub_10000A00C(v106, v134, &qword_10006BFA0, &qword_100055280);
        swift_storeEnumTagMultiPayload();
        sub_100048A94();
        sub_100048F2C(&qword_10006C028, &type metadata accessor for LanguagesProgressView);

        v116 = v135;
        sub_1000508A8();
        sub_10000A00C(v116, v140, &qword_10006BF98, &qword_100055278);
        swift_storeEnumTagMultiPayload();
        sub_100048924();
        sub_1000489D8();
        v117 = v142;
        sub_1000508A8();
        sub_100004444(v116, &qword_10006BF98, &qword_100055278);
        sub_10000A00C(v117, v147, &qword_10006BFC8, &qword_1000552A8);
        swift_storeEnumTagMultiPayload();
        sub_100048898();
        sub_100048B7C();
        v88 = v148;
        sub_1000508A8();
        sub_100004444(v117, &qword_10006BFC8, &qword_1000552A8);
        sub_100004444(v106, &qword_10006BFA0, &qword_100055280);
        (*(v130 + 8))(v129, v131);
        goto LABEL_20;
      }

      v80 = v44[1];
      if (!v80)
      {
        goto LABEL_15;
      }

      v143 = *v44;
      type metadata accessor for TranslationModel(0);
      sub_100048F2C(&qword_10006A340, type metadata accessor for TranslationModel);
      sub_100050498();
      swift_getKeyPath();
      v81 = v128;
      v82 = &v128[v38[6]];
      sub_1000504A8();

      sub_100050498();
      swift_getKeyPath();
      v83 = v81 + v38[7];
      sub_1000504A8();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000502F8();

      v84 = v161;
      *v81 = v143;
      v81[1] = v80;
      v81[2] = _swiftEmptyArrayStorage;
      *(v81 + v38[8]) = v84;
      v85 = v81 + v38[9];
      LOBYTE(v165) = 0;
      sub_100050F08();
      v86 = *(&v161 + 1);
      *v85 = v161;
      *(v85 + 1) = v86;
      v87 = v38[10];
      v165 = 0;
      sub_100050F08();
      *(v81 + v87) = v161;
      sub_1000264A8(v81, v126);
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v89 = *v44;
        v90 = *(a1 + 2);
        v168 = *(a1 + 1);
        v161 = v90;
        LOBYTE(v162) = *(a1 + 48);
        v91 = swift_allocObject();
        v92 = *(a1 + 1);
        *(v91 + 16) = *a1;
        *(v91 + 32) = v92;
        *(v91 + 48) = *(a1 + 2);
        *(v91 + 64) = *(a1 + 48);

        sub_10000A00C(&v168, &v165, &qword_10006BF50, &qword_100055238);
        sub_10000A00C(&v161, &v165, &qword_10006BF58, &qword_100055240);
        v93 = v123;
        sub_100050088();
        v94 = v124;
        v95 = v136;
        (*(v124 + 16))(v134, v93, v136);
        swift_storeEnumTagMultiPayload();
        sub_100048A94();
        sub_100048F2C(&qword_10006C028, &type metadata accessor for LanguagesProgressView);
        v96 = v135;
        sub_1000508A8();
        sub_10000A00C(v96, v140, &qword_10006BF98, &qword_100055278);
        swift_storeEnumTagMultiPayload();
        sub_100048924();
        sub_1000489D8();
        v97 = v142;
        sub_1000508A8();
        sub_100004444(v96, &qword_10006BF98, &qword_100055278);
        sub_10000A00C(v97, v147, &qword_10006BFC8, &qword_1000552A8);
        swift_storeEnumTagMultiPayload();
        sub_100048898();
        sub_100048B7C();
        v88 = v148;
        sub_1000508A8();
        sub_100004444(v97, &qword_10006BFC8, &qword_1000552A8);
        (*(v94 + 8))(v93, v95);
LABEL_20:

        goto LABEL_21;
      }

      if (EnumCaseMultiPayload == 3)
      {
        sub_100048F8C(v44, type metadata accessor for TranslationModel.TranslationError);
        goto LABEL_15;
      }

      type metadata accessor for TranslationModel(0);
      sub_100048F2C(&qword_10006A340, type metadata accessor for TranslationModel);
      sub_100050498();
      swift_getKeyPath();
      v81 = v128;
      v98 = &v128[v38[6]];
      sub_1000504A8();

      sub_100050498();
      swift_getKeyPath();
      v99 = v81 + v38[7];
      sub_1000504A8();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000502F8();

      v100 = v161;
      *v81 = 0;
      v81[1] = 0;
      v81[2] = _swiftEmptyArrayStorage;
      *(v81 + v38[8]) = v100;
      v101 = v81 + v38[9];
      LOBYTE(v165) = 0;
      sub_100050F08();
      v102 = *(&v161 + 1);
      *v101 = v161;
      *(v101 + 1) = v102;
      v103 = v38[10];
      v165 = 0;
      sub_100050F08();
      *(v81 + v103) = v161;
      sub_1000264A8(v81, v126);
    }

    swift_storeEnumTagMultiPayload();
    sub_100048F2C(&qword_10006BFF8, type metadata accessor for LIDResolutionView);
    v104 = v127;
    sub_1000508A8();
    sub_10000A00C(v104, v140, &qword_10006BFC0, &qword_1000552A0);
    swift_storeEnumTagMultiPayload();
    sub_100048924();
    sub_1000489D8();
    v105 = v142;
    sub_1000508A8();
    sub_100004444(v104, &qword_10006BFC0, &qword_1000552A0);
    sub_10000A00C(v105, v147, &qword_10006BFC8, &qword_1000552A8);
    swift_storeEnumTagMultiPayload();
    sub_100048898();
    sub_100048B7C();
    v88 = v148;
    sub_1000508A8();
    sub_100004444(v105, &qword_10006BFC8, &qword_1000552A8);
    sub_100048F8C(v81, type metadata accessor for LIDResolutionView);
    goto LABEL_20;
  }

  v148 = v8;
  if (*(v47 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_showConsentOnly))
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (v161 & 1) != 0 || (sub_10000D074(), v62 = sub_100051388(), v63 = sub_100051398(), v62, (v63))
  {
    v64 = a1[3];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000502F8();

    v65 = v161;
    KeyPath = swift_getKeyPath();
    v67 = swift_getKeyPath();
    v68 = swift_getKeyPath();
    v69 = swift_getKeyPath();
    v70 = v157;
    *&v5[*(v157 + 36)] = v69;
    sub_1000035C4(&qword_10006A7D8, &unk_100053038);
    swift_storeEnumTagMultiPayload();
    *&v5[v70[10]] = swift_getKeyPath();
    sub_1000035C4(&qword_10006C048, &unk_1000553F0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TranslationModel(0);
    sub_100048F2C(&qword_10006A340, type metadata accessor for TranslationModel);
    *v5 = sub_100050488();
    *(v5 + 1) = v71;
    v5[16] = v65;
    *(v5 + 3) = KeyPath;
    *(v5 + 4) = 0;
    v5[40] = 0;
    *(v5 + 6) = v67;
    *(v5 + 7) = 0;
    v5[64] = 0;
    *(v5 + 9) = v68;
    *(v5 + 10) = 0;
    v5[88] = 0;
    v72 = &v5[v70[11]];
    LOBYTE(v165) = 0;
    sub_100050F08();
    v73 = *(&v161 + 1);
    *v72 = v161;
    *(v72 + 1) = v73;
    v74 = &v5[v70[12]];
    LOBYTE(v165) = 0;
    sub_100050F08();
    v75 = *(&v161 + 1);
    *v74 = v161;
    *(v74 + 1) = v75;
    v76 = sub_100048F2C(&qword_10006C040, type metadata accessor for TranslationView);
    v77 = v148;
    sub_100050D68();
    sub_100048F8C(v5, type metadata accessor for TranslationView);
    v78 = v137;
    v79 = v158;
    (*(v137 + 16))(v156, v77, v158);
    swift_storeEnumTagMultiPayload();
    sub_100048C40();
    *&v161 = v70;
    *(&v161 + 1) = v76;
    swift_getOpaqueTypeConformance2();
    sub_1000508A8();
    return (*(v78 + 8))(v77, v79);
  }

  else
  {
LABEL_8:

    type metadata accessor for TranslationModel(0);
    sub_100048F2C(&qword_10006A340, type metadata accessor for TranslationModel);
    sub_100050498();
    swift_getKeyPath();
    sub_1000504A8();

    v50 = v165;
    v51 = v166;
    v52 = v167;
    type metadata accessor for CGSize(0);
    v168 = 0uLL;
    sub_100050F08();
    v53 = v162;
    v54 = v161;
    *&v161 = v50;
    *(&v161 + 1) = v51;
    LOBYTE(v162) = v52;
    v163 = v54;
    v164 = v53;
    v55 = a1[3];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000502F8();

    v56 = sub_1000487B8();
    sub_100050D68();

    v57 = v143;
    v58 = v153;
    (*(v143 + 16))(v151, v11, v153);
    swift_storeEnumTagMultiPayload();
    sub_10004880C();
    *&v161 = &type metadata for FirstUseExperienceView;
    *(&v161 + 1) = v56;
    swift_getOpaqueTypeConformance2();
    v59 = v152;
    sub_1000508A8();
    sub_100048BD0(v59, v156);
    swift_storeEnumTagMultiPayload();
    sub_100048C40();
    v60 = sub_100048F2C(&qword_10006C040, type metadata accessor for TranslationView);
    *&v161 = v157;
    *(&v161 + 1) = v60;
    swift_getOpaqueTypeConformance2();
    sub_1000508A8();
    sub_100004444(v59, &qword_10006BF88, &qword_100055268);
    return (*(v57 + 8))(v11, v58);
  }
}

uint64_t sub_1000480BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v5 = sub_10004FDB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = sub_10004FE78();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 8);
  v19 = *(v6 + 16);
  v19(v12, a1, v5);
  v19(v10, v22, v5);
  sub_10004FE38();
  sub_10003C5C4(v17);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_100048284(uint64_t a1)
{
  v2 = sub_100050748();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  sub_100030318();
  sub_10004FF58();

  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v8 = v13;
  if (v14 == 1)
  {
  }

  else
  {

    sub_100051368();
    v10 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_100004444(&v13, &qword_10006BF58, &qword_100055240);
    v9 = (*(v3 + 8))(v6, v2);
    v8 = v12;
  }

  v8(v9);
}

uint64_t sub_100048420(uint64_t a1)
{
  v2 = sub_100050748();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 48);
  v12 = *(a1 + 32);
  v7 = v12;
  if (v13 == 1)
  {
  }

  else
  {

    sub_100051368();
    v9 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_100004444(&v12, &qword_10006BF58, &qword_100055240);
    v8 = (*(v3 + 8))(v6, v2);
    v7 = v11;
  }

  v7(v8);
}

uint64_t sub_1000485A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  return sub_100045F20(a1);
}

unint64_t sub_1000485F0()
{
  result = qword_10006BF30;
  if (!qword_10006BF30)
  {
    sub_10000372C(&qword_10006BF10, &qword_100055178);
    sub_1000044E8(&qword_10006BF38, &qword_10006BF40, &qword_1000551E0);
    sub_1000044E8(&unk_10006AD70, &qword_10006AD50, &qword_100053770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BF30);
  }

  return result;
}

unint64_t sub_1000486E8()
{
  result = qword_10006BF60;
  if (!qword_10006BF60)
  {
    sub_10000372C(&qword_10006BF20, &qword_100055188);
    sub_10000372C(&qword_10006BF10, &qword_100055178);
    sub_1000485F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BF60);
  }

  return result;
}

unint64_t sub_1000487B8()
{
  result = qword_10006BFD8;
  if (!qword_10006BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BFD8);
  }

  return result;
}

unint64_t sub_10004880C()
{
  result = qword_10006BFE0;
  if (!qword_10006BFE0)
  {
    sub_10000372C(&qword_10006BFD0, &qword_1000552B0);
    sub_100048898();
    sub_100048B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BFE0);
  }

  return result;
}

unint64_t sub_100048898()
{
  result = qword_10006BFE8;
  if (!qword_10006BFE8)
  {
    sub_10000372C(&qword_10006BFC8, &qword_1000552A8);
    sub_100048924();
    sub_1000489D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BFE8);
  }

  return result;
}

unint64_t sub_100048924()
{
  result = qword_10006BFF0;
  if (!qword_10006BFF0)
  {
    sub_10000372C(&qword_10006BFC0, &qword_1000552A0);
    sub_100048F2C(&qword_10006BFF8, type metadata accessor for LIDResolutionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BFF0);
  }

  return result;
}

unint64_t sub_1000489D8()
{
  result = qword_10006C000;
  if (!qword_10006C000)
  {
    sub_10000372C(&qword_10006BF98, &qword_100055278);
    sub_100048A94();
    sub_100048F2C(&qword_10006C028, &type metadata accessor for LanguagesProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C000);
  }

  return result;
}

unint64_t sub_100048A94()
{
  result = qword_10006C008;
  if (!qword_10006C008)
  {
    sub_10000372C(&qword_10006BFA0, &qword_100055280);
    sub_100048F2C(&qword_10006C010, type metadata accessor for DownloadSelectionView);
    sub_1000044E8(&qword_10006C018, &qword_10006C020, &qword_100055300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C008);
  }

  return result;
}

unint64_t sub_100048B7C()
{
  result = qword_10006C030;
  if (!qword_10006C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C030);
  }

  return result;
}

uint64_t sub_100048BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006BF88, &qword_100055268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100048C40()
{
  result = qword_10006C038;
  if (!qword_10006C038)
  {
    sub_10000372C(&qword_10006BF88, &qword_100055268);
    sub_10004880C();
    sub_1000487B8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C038);
  }

  return result;
}

uint64_t sub_100048D34(uint64_t a1)
{
  v2 = sub_100050428();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100050588();
}

uint64_t sub_100048E24(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006C050, &qword_1000554C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000A00C(a1, &v6 - v4, &qword_10006C050, &qword_1000554C0);
  return sub_100050668();
}

uint64_t sub_100048ED8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_10001051C();

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100048F2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100048F8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100048FEC()
{
  sub_10000372C(&qword_10006BF20, &qword_100055188);
  sub_1000486E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004906C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000035C4(&qword_10006A8A8, &unk_1000530C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000035C4(&qword_10006C058, &qword_100055498);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000491BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000035C4(&qword_10006A8A8, &unk_1000530C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000035C4(&qword_10006C058, &qword_100055498);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for TranslationView()
{
  result = qword_10006C0B8;
  if (!qword_10006C0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049344()
{
  sub_1000278E8();
  if (v0 <= 0x3F)
  {
    sub_100049538(319, &unk_10006ACB8, &type metadata for ReplaceAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100049538(319, &unk_10006A928, &type metadata for DismissAction, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1000494E4(319, &qword_10006C0C8, &unk_10006A670, &unk_100052D40);
        if (v3 <= 0x3F)
        {
          sub_10000EA64();
          if (v4 <= 0x3F)
          {
            sub_1000494E4(319, &unk_10006C0D0, &qword_10006C050, &qword_1000554C0);
            if (v5 <= 0x3F)
            {
              sub_100049538(319, &qword_10006AEF8, &type metadata for Bool, &type metadata accessor for State);
              if (v6 <= 0x3F)
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

void sub_1000494E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000372C(a3, a4);
    v5 = sub_1000503B8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100049538(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000495A4()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    v8 = *(v0 + 32);
  }

  else
  {
    v9 = *(v0 + 24);

    sub_100051368();
    v10 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C();
    (*(v2 + 8))(v5, v1);
    return v12;
  }

  return v7;
}

uint64_t sub_100049708()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
    v8 = *(v0 + 56);
  }

  else
  {
    v9 = *(v0 + 48);

    sub_100051368();
    v10 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C();
    (*(v2 + 8))(v5, v1);
    return v12;
  }

  return v7;
}

uint64_t sub_10004986C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100050748();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000035C4(&qword_10006A7D8, &unk_100053038);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TranslationView();
  sub_10000A00C(v1 + *(v12 + 36), v11, &qword_10006A7D8, &unk_100053038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100050428();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100051368();
    v16 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100049A74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100050748();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000035C4(&qword_10006C048, &unk_1000553F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for TranslationView();
  sub_10000A00C(v1 + *(v12 + 40), v11, &qword_10006C048, &unk_1000553F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10000360C(v11, a1, &qword_10006C050, &qword_1000554C0);
  }

  v14 = *v11;
  sub_100051368();
  v15 = sub_100050A58();
  sub_100050208();

  sub_100050738();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100049C5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v108 = a1;
  v104 = sub_100050918();
  v105 = *(v104 - 8);
  v3 = *(v105 + 64);
  __chkstk_darwin(v104);
  v85 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000035C4(&qword_10006C120, &qword_100055518);
  v6 = *(v5 - 8);
  v107 = v5 - 8;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v101 = &v84 - v8;
  v9 = sub_1000035C4(&qword_10006C050, &qword_1000554C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v86 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v106 = &v84 - v14;
  __chkstk_darwin(v13);
  v109 = &v84 - v15;
  v102 = sub_1000508C8();
  v103 = *(v102 - 8);
  v16 = *(v103 + 64);
  __chkstk_darwin(v102);
  v100 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1000508E8();
  v97 = *(v99 - 8);
  v18 = *(v97 + 64);
  __chkstk_darwin(v99);
  v91 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000507B8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000035C4(&qword_10006C128, &qword_100055520);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v84 - v27;
  v90 = sub_1000035C4(&qword_10006C130, &qword_100055528);
  v93 = *(v90 - 8);
  v29 = *(v93 + 64);
  __chkstk_darwin(v90);
  v87 = &v84 - v30;
  v94 = sub_1000035C4(&qword_10006C138, &qword_100055530);
  v95 = *(v94 - 8);
  v31 = *(v95 + 64);
  __chkstk_darwin(v94);
  v88 = &v84 - v32;
  v98 = sub_1000035C4(&qword_10006C140, &qword_100055538);
  v96 = *(v98 - 8);
  v33 = *(v96 + 64);
  __chkstk_darwin(v98);
  v89 = &v84 - v34;
  v35 = sub_1000035C4(&qword_10006C148, &qword_100055540);
  v36 = *(v35 - 8);
  v92 = v35 - 8;
  v37 = *(v36 + 64);
  __chkstk_darwin(v35 - 8);
  v110 = &v84 - v38;
  v111 = v2;
  sub_1000035C4(&qword_10006C150, &qword_100055548);
  sub_1000044E8(&qword_10006C158, &qword_10006C150, &qword_100055548);
  sub_100050B78();
  sub_1000507A8();
  v39 = *(sub_1000035C4(&qword_10006C160, &qword_100055550) + 36);
  (*(v21 + 16))(&v28[v39], v24, v20);
  v40 = *(v21 + 56);
  v40(&v28[v39], 0, 1, v20);
  KeyPath = swift_getKeyPath();
  v42 = &v28[*(v25 + 36)];
  v43 = *(sub_1000035C4(&qword_10006C168, &qword_100055588) + 28);
  (*(v21 + 32))(v42 + v43, v24, v20);
  v44 = v109;
  v40(v42 + v43, 0, 1, v20);
  v45 = v105;
  *v42 = KeyPath;
  sub_100050A98();
  v46 = v91;
  sub_1000508D8();
  v47 = sub_10004D00C();
  v48 = v87;
  sub_100050D18();
  (*(v97 + 8))(v46, v99);
  sub_100004444(v28, &qword_10006C128, &qword_100055520);
  v49 = v100;
  sub_1000508B8();
  *&v112 = v25;
  *(&v112 + 1) = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v88;
  v52 = v90;
  v53 = v102;
  sub_100050DF8();
  (*(v103 + 8))(v49, v53);
  (*(v93 + 8))(v48, v52);
  *&v112 = v52;
  *(&v112 + 1) = v53;
  *&v113 = OpaqueTypeConformance2;
  *(&v113 + 1) = &protocol witness table for InsetGroupedListStyle;
  v54 = v106;
  swift_getOpaqueTypeConformance2();
  v55 = v89;
  v56 = v94;
  sub_100050D98();
  (*(v95 + 8))(v51, v56);
  sub_100051058();
  sub_100050538();
  v57 = v110;
  (*(v96 + 32))(v110, v55, v98);
  v58 = (v57 + *(v92 + 44));
  v59 = v117;
  v58[4] = v116;
  v58[5] = v59;
  v58[6] = v118;
  v60 = v113;
  *v58 = v112;
  v58[1] = v60;
  v61 = v115;
  v58[2] = v114;
  v58[3] = v61;
  LODWORD(v103) = sub_100050AC8();
  v62 = v44;
  sub_100049A74(v44);
  v63 = v104;
  (*(v45 + 104))(v54, enum case for UserInterfaceSizeClass.compact(_:), v104);
  (*(v45 + 56))(v54, 0, 1, v63);
  v64 = *(v107 + 56);
  v65 = v101;
  sub_10000A00C(v62, v101, &qword_10006C050, &qword_1000554C0);
  sub_10000A00C(v54, v65 + v64, &qword_10006C050, &qword_1000554C0);
  v66 = v45;
  v67 = *(v45 + 48);
  if (v67(v65, 1, v63) != 1)
  {
    v68 = v86;
    sub_10000A00C(v65, v86, &qword_10006C050, &qword_1000554C0);
    if (v67(v65 + v64, 1, v63) != 1)
    {
      v69 = v66;
      v70 = *(v66 + 32);
      v71 = v85;
      v70(v85, v65 + v64, v63);
      sub_10004D280(&qword_10006C1B0, &type metadata accessor for UserInterfaceSizeClass);
      sub_100051118();
      v72 = *(v69 + 8);
      v72(v71, v63);
      sub_100004444(v54, &qword_10006C050, &qword_1000554C0);
      sub_100004444(v109, &qword_10006C050, &qword_1000554C0);
      v72(v68, v63);
      sub_100004444(v65, &qword_10006C050, &qword_1000554C0);
      goto LABEL_8;
    }

    sub_100004444(v54, &qword_10006C050, &qword_1000554C0);
    sub_100004444(v109, &qword_10006C050, &qword_1000554C0);
    (*(v66 + 8))(v68, v63);
    goto LABEL_6;
  }

  sub_100004444(v54, &qword_10006C050, &qword_1000554C0);
  sub_100004444(v62, &qword_10006C050, &qword_1000554C0);
  if (v67(v65 + v64, 1, v63) != 1)
  {
LABEL_6:
    sub_100004444(v65, &qword_10006C120, &qword_100055518);
    goto LABEL_8;
  }

  sub_100004444(v65, &qword_10006C050, &qword_1000554C0);
LABEL_8:
  sub_100050368();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v108;
  sub_10004D1A8(v110, v108);
  result = sub_1000035C4(&qword_10006C1A8, &unk_1000555A0);
  v83 = v81 + *(result + 36);
  *v83 = v103;
  *(v83 + 8) = v74;
  *(v83 + 16) = v76;
  *(v83 + 24) = v78;
  *(v83 + 32) = v80;
  *(v83 + 40) = 0;
  return result;
}

id sub_10004A970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = sub_1000035C4(&qword_10006C1C0, &qword_1000555B8);
  v4 = *(*(v75 - 8) + 64);
  v5 = __chkstk_darwin(v75);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v77 = &v67 - v8;
  v9 = sub_1000035C4(&qword_10006C1C8, &qword_1000555C0);
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = *(v71 + 64);
  __chkstk_darwin(v9);
  v12 = &v67 - v11;
  v13 = sub_1000035C4(&qword_10006C1D0, &qword_1000555C8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v79 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v67 - v17;
  v18 = sub_1000035C4(&qword_10006C1D8, &qword_1000555D0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18);
  v78 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v67 - v23;
  v25 = type metadata accessor for TranslationCardView();
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v76 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = (&v67 - v29);
  v31 = *(a1 + 8);

  v73 = v30;
  sub_100027490(v32, v30);
  v33 = a1;
  v81 = a1;
  sub_1000035C4(&qword_10006C1E0, &qword_1000555D8);
  sub_1000044E8(&qword_10006C1E8, &qword_10006C1E0, &qword_1000555D8);
  sub_100050FE8();
  sub_100050E78();
  v34 = *(sub_1000035C4(&qword_10006C1F0, &qword_1000555E0) + 36);
  sub_1000503D8();

  v35 = sub_1000503E8();
  v70 = *(*(v35 - 8) + 56);
  v70(&v24[v34], 0, 1, v35);
  v36 = sub_100050E78();
  KeyPath = swift_getKeyPath();
  v38 = *(v19 + 44);
  v74 = v24;
  v39 = &v24[v38];
  *v39 = KeyPath;
  v39[1] = v36;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v41 = result;
    v68 = a2;
    v69 = v7;
    v42 = sub_100051128();
    v43 = [v41 applicationIsInstalled:v42];

    if (v43)
    {
      __chkstk_darwin(v44);
      *(&v67 - 2) = v33;
      sub_1000035C4(&qword_10006C208, &qword_100055628);
      sub_1000044E8(&qword_10006C210, &qword_10006C208, &qword_100055628);
      sub_100050FE8();
      sub_100050E78();
      v45 = *(sub_1000035C4(&qword_10006C218, &qword_100055630) + 36);
      sub_1000503D8();

      v46 = v70;
      v70(&v12[v45], 0, 1, v35);
      v47 = sub_100050E78();
      v48 = swift_getKeyPath();
      v49 = v72;
      v50 = &v12[*(v72 + 36)];
      *v50 = v48;
      v50[1] = v47;
      v51 = v80;
      sub_10000360C(v12, v80, &qword_10006C1C8, &qword_1000555C0);
      v52 = 0;
    }

    else
    {
      v52 = 1;
      v51 = v80;
      v49 = v72;
      v46 = v70;
    }

    v53 = (*(v71 + 56))(v51, v52, 1, v49);
    __chkstk_darwin(v53);
    *(&v67 - 2) = v33;
    sub_1000035C4(&qword_10006B550, &qword_1000540E8);
    sub_10002636C();
    v54 = v77;
    sub_100050FE8();
    sub_100050E78();
    v55 = *(sub_1000035C4(&qword_10006C1F8, &qword_100055618) + 36);
    sub_1000503D8();

    v46(v54 + v55, 0, 1, v35);
    v56 = sub_100050E78();
    v57 = swift_getKeyPath();
    v58 = v76;
    v59 = (v54 + *(v75 + 36));
    *v59 = v57;
    v59[1] = v56;
    v60 = v73;
    sub_10004D32C(v73, v58, type metadata accessor for TranslationCardView);
    v61 = v74;
    v62 = v78;
    sub_10000A00C(v74, v78, &qword_10006C1D8, &qword_1000555D0);
    v63 = v79;
    sub_10000A00C(v51, v79, &qword_10006C1D0, &qword_1000555C8);
    v64 = v69;
    sub_10000A00C(v54, v69, &qword_10006C1C0, &qword_1000555B8);
    v65 = v68;
    sub_10004D32C(v58, v68, type metadata accessor for TranslationCardView);
    v66 = sub_1000035C4(&qword_10006C200, &qword_100055620);
    sub_10000A00C(v62, v65 + v66[12], &qword_10006C1D8, &qword_1000555D0);
    sub_10000A00C(v63, v65 + v66[16], &qword_10006C1D0, &qword_1000555C8);
    sub_10000A00C(v64, v65 + v66[20], &qword_10006C1C0, &qword_1000555B8);
    sub_100004444(v54, &qword_10006C1C0, &qword_1000555B8);
    sub_100004444(v80, &qword_10006C1D0, &qword_1000555C8);
    sub_100004444(v61, &qword_10006C1D8, &qword_1000555D0);
    sub_10004D2C8(v60);
    sub_100004444(v64, &qword_10006C1C0, &qword_1000555B8);
    sub_100004444(v63, &qword_10006C1D0, &qword_1000555C8);
    sub_100004444(v62, &qword_10006C1D8, &qword_1000555D0);
    return sub_10004D2C8(v58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004B1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = type metadata accessor for TranslationView();
  v77 = *(v3 - 8);
  v4 = *(v77 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000035C4(&qword_10006B568, &unk_1000540F0);
  v78 = *(v5 - 8);
  v6 = *(v78 + 64);
  __chkstk_darwin(v5);
  v8 = &v60 - v7;
  v9 = sub_1000035C4(&qword_10006B550, &qword_1000540E8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v60 - v13;
  v72 = sub_1000035C4(&qword_10006C238, &qword_100055720);
  v64 = *(v72 - 8);
  v14 = *(v64 + 64);
  v15 = __chkstk_darwin(v72);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v70 = &v60 - v19;
  v20 = __chkstk_darwin(v18);
  v75 = &v60 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v60 - v23;
  __chkstk_darwin(v22);
  v63 = &v60 - v25;
  v26 = sub_1000035C4(&qword_10006C240, &qword_100055728);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v73 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v67 = &v60 - v30;
  v31 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v71 = v5;
  v68 = v4;
  v69 = a1;
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v31;
  if (v79 == 1)
  {
    v61 = v17;
    sub_10004D32C(a1, &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationView);
    v32 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v33 = swift_allocObject();
    sub_10004D398(&v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
    sub_1000035C4(&qword_10006B5B0, &qword_100055650);
    sub_1000044E8(&qword_10006B5B8, &qword_10006B5B0, &qword_100055650);
    sub_100050F58();
    sub_1000044E8(&qword_10006B560, &qword_10006B568, &unk_1000540F0);
    v34 = v62;
    sub_100050CE8();
    (*(v78 + 8))(v8, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000502F8();

    v35 = v80;
    if (v80)
    {
    }

    v36 = v35 == 0;
    KeyPath = swift_getKeyPath();
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    sub_10000360C(v34, v24, &qword_10006B550, &qword_1000540E8);
    v39 = v72;
    v40 = &v24[*(v72 + 36)];
    *v40 = KeyPath;
    v40[1] = sub_10004DA58;
    v40[2] = v38;
    v41 = v63;
    sub_10000360C(v24, v63, &qword_10006C238, &qword_100055720);
    v42 = v67;
    sub_10000360C(v41, v67, &qword_10006C238, &qword_100055720);
    v43 = 0;
    v44 = v76;
    v17 = v61;
  }

  else
  {
    v43 = 1;
    v39 = v72;
    v44 = v76;
    v42 = v67;
  }

  (*(v64 + 56))(v42, v43, 1, v39);
  v45 = v65;
  sub_10004D32C(v69, v65, type metadata accessor for TranslationView);
  v46 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v47 = swift_allocObject();
  sub_10004D398(v45, v47 + v46);
  sub_1000035C4(&qword_10006B5B0, &qword_100055650);
  sub_1000044E8(&qword_10006B5B8, &qword_10006B5B0, &qword_100055650);
  sub_100050F58();
  sub_1000044E8(&qword_10006B560, &qword_10006B568, &unk_1000540F0);
  v48 = v74;
  v49 = v71;
  sub_100050CE8();
  (*(v78 + 8))(v8, v49);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v50 = v80;
  if (v80)
  {
  }

  v51 = v50 == 0;
  v52 = swift_getKeyPath();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v54 = v70;
  sub_10000360C(v48, v70, &qword_10006B550, &qword_1000540E8);
  v55 = (v54 + *(v39 + 36));
  *v55 = v52;
  v55[1] = sub_10004DA58;
  v55[2] = v53;
  v56 = v75;
  sub_10000360C(v54, v75, &qword_10006C238, &qword_100055720);
  v57 = v73;
  sub_10000A00C(v42, v73, &qword_10006C240, &qword_100055728);
  sub_10000A00C(v56, v17, &qword_10006C238, &qword_100055720);
  sub_10000A00C(v57, v44, &qword_10006C240, &qword_100055728);
  v58 = sub_1000035C4(&qword_10006C248, &qword_100055778);
  sub_10000A00C(v17, v44 + *(v58 + 48), &qword_10006C238, &qword_100055720);
  sub_100004444(v56, &qword_10006C238, &qword_100055720);
  sub_100004444(v42, &qword_10006C240, &qword_100055728);
  sub_100004444(v17, &qword_10006C238, &qword_100055720);
  return sub_100004444(v57, &qword_10006C240, &qword_100055728);
}

void sub_10004BB00(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (v6)
  {
    v2 = sub_1000495A4();
    v3 = objc_allocWithZone(NSAttributedString);
    v4 = sub_100051128();

    v5 = [v3 initWithString:v4];

    v2(v5);
  }
}

uint64_t sub_10004BBF4()
{
  sub_100050808();

  return sub_100050EF8();
}

uint64_t sub_10004BC64()
{
  v1 = v0;
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v2 = sub_100050268();
  sub_100008BA0(v2, qword_10006E090);
  v3 = sub_100050248();
  v4 = sub_100051348();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Copy translation", v5, 2u);
  }

  v6 = [objc_opt_self() generalPasteboard];
  v7 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (v11)
  {
    v8 = sub_100051128();
  }

  else
  {
    v8 = 0;
  }

  [v6 setString:v8];

  v9 = sub_100049708();
  v9();
}

uint64_t sub_10004BE1C()
{
  sub_100050808();

  return sub_100050EF8();
}

uint64_t sub_10004BE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1000035C4(&qword_10006C220, &qword_100055638);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v59 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = v50 - v7;
  v8 = type metadata accessor for TranslationView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000035C4(&qword_10006B568, &unk_1000540F0);
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v51 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v50 - v17;
  v54 = sub_1000035C4(&qword_10006C228, &unk_100055640);
  v19 = *(*(v54 - 8) + 64);
  v20 = __chkstk_darwin(v54);
  v56 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = v50 - v23;
  __chkstk_darwin(v22);
  v55 = v50 - v25;
  sub_10004D32C(a1, v11, type metadata accessor for TranslationView);
  v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v52 = v10;
  v27 = swift_allocObject();
  sub_10004D398(v11, v27 + v26);
  v62 = a1;
  v28 = sub_1000035C4(&qword_10006B5B0, &qword_100055650);
  v50[1] = sub_1000044E8(&qword_10006B5B8, &qword_10006B5B0, &qword_100055650);
  v50[2] = v28;
  sub_100050F58();
  v53 = a1;
  v29 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v30 = v63;
  if (v63)
  {
  }

  v31 = v30 == 0;
  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  v34 = *(v61 + 32);
  v35 = v18;
  v36 = v60;
  v34(v24, v35, v60);
  v37 = &v24[*(v54 + 36)];
  *v37 = KeyPath;
  v37[1] = sub_10004D4D4;
  v37[2] = v33;
  v38 = v24;
  v39 = v55;
  sub_10000360C(v38, v55, &qword_10006C228, &unk_100055640);
  v40 = *(v29 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier + 8);
  if (v40 && (*(v29 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier) == 0xD000000000000013 && v40 == 0x800000010005EE00 || (sub_100051658() & 1) != 0))
  {
    v41 = 1;
    v42 = v57;
  }

  else
  {
    sub_10004D32C(v53, v11, type metadata accessor for TranslationView);
    v43 = swift_allocObject();
    sub_10004D398(v11, v43 + v26);
    v44 = v51;
    v36 = v60;
    sub_100050F58();
    v42 = v57;
    v34(v57, v44, v36);
    v41 = 0;
  }

  (*(v61 + 56))(v42, v41, 1, v36);
  v45 = v56;
  sub_10000A00C(v39, v56, &qword_10006C228, &unk_100055640);
  v46 = v59;
  sub_10000A00C(v42, v59, &qword_10006C220, &qword_100055638);
  v47 = v58;
  sub_10000A00C(v45, v58, &qword_10006C228, &unk_100055640);
  v48 = sub_1000035C4(&qword_10006C230, &qword_1000556D0);
  sub_10000A00C(v46, v47 + *(v48 + 48), &qword_10006C220, &qword_100055638);
  sub_100004444(v42, &qword_10006C220, &qword_100055638);
  sub_100004444(v39, &qword_10006C228, &unk_100055640);
  sub_100004444(v46, &qword_10006C220, &qword_100055638);
  return sub_100004444(v45, &qword_10006C228, &unk_100055640);
}

uint64_t sub_10004C4E0(uint64_t a1)
{
  sub_100050808();
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  return sub_100050EF8();
}

uint64_t sub_10004C5EC(uint64_t a1)
{
  v2 = sub_10004FCB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100050428();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[8] = 3;
  v17 = 0x6D6574737973;
  v18 = 0xE600000000000000;
  v19 = 0;
  v20 = 0;
  v12 = sub_100051128();
  sub_10004DA5C();
  sub_100021288();
  isa = sub_1000510D8().super.isa;

  AnalyticsSendEvent();

  sub_10004986C(v11);
  v14 = *(a1 + 8);
  sub_100031320(v6);
  sub_100050418();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10004C808()
{
  sub_100050808();

  return sub_100050EF8();
}

uint64_t sub_10004C87C(uint64_t a1)
{
  v2 = type metadata accessor for TranslationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1000035C4(&qword_10006B568, &unk_1000540F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_10004D32C(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_10004D398(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_1000035C4(&qword_10006B5B0, &qword_100055650);
  sub_1000044E8(&qword_10006B5B8, &qword_10006B5B0, &qword_100055650);
  sub_100050F58();
  sub_1000044E8(&qword_10006B560, &qword_10006B568, &unk_1000540F0);
  sub_100050D88();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10004CB00()
{
  v0 = sub_10004FCB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100050428();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004986C(v9);
  sub_10004FC98();
  sub_100050418();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10004CC78()
{
  sub_100050808();

  return sub_100050EF8();
}

uint64_t sub_10004CCE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100050748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000035C4(&qword_10006A7D8, &unk_100053038);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10000A00C(v2, &v17 - v11, &qword_10006A7D8, &unk_100053038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100050428();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100051368();
    v16 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10004CEE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100050718();
  *a1 = result;
  return result;
}

uint64_t sub_10004CF10(uint64_t *a1)
{
  v1 = *a1;

  return sub_100050728();
}

uint64_t sub_10004CF60(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006C1B8, &qword_1000555B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000A00C(a1, &v6 - v4, &qword_10006C1B8, &qword_1000555B0);
  return sub_100050648();
}

unint64_t sub_10004D00C()
{
  result = qword_10006C170;
  if (!qword_10006C170)
  {
    sub_10000372C(&qword_10006C128, &qword_100055520);
    sub_10004D0C4();
    sub_1000044E8(&qword_10006C1A0, &qword_10006C168, &qword_100055588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C170);
  }

  return result;
}

unint64_t sub_10004D0C4()
{
  result = qword_10006C178;
  if (!qword_10006C178)
  {
    sub_10000372C(&qword_10006C160, &qword_100055550);
    sub_1000044E8(&qword_10006C180, &qword_10006C188, &qword_100055590);
    sub_1000044E8(&qword_10006C190, &qword_10006C198, &qword_100055598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C178);
  }

  return result;
}

uint64_t sub_10004D1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006C148, &qword_100055540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D220@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100050718();
  *a1 = result;
  return result;
}

uint64_t sub_10004D24C(uint64_t *a1)
{
  v1 = *a1;

  return sub_100050728();
}

uint64_t sub_10004D280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004D2C8(uint64_t a1)
{
  v2 = type metadata accessor for TranslationCardView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004D32C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004D398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D3FC()
{
  v1 = *(type metadata accessor for TranslationView() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 8);
  return sub_10003EA14();
}

uint64_t sub_10004D46C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000506F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004D52C()
{
  v1 = *(type metadata accessor for TranslationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_10004BC64();
}

uint64_t sub_10004D588()
{
  v1 = type metadata accessor for TranslationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);
  v8 = *(v0 + v3 + 32);
  v9 = *(v0 + v3 + 40);
  sub_10001051C();
  v10 = *(v0 + v3 + 48);
  v11 = *(v0 + v3 + 56);
  v12 = *(v0 + v3 + 64);
  sub_10001051C();
  v13 = *(v0 + v3 + 72);
  v14 = *(v0 + v3 + 80);
  v15 = *(v0 + v3 + 88);
  sub_10001051C();
  v16 = v1[9];
  sub_1000035C4(&qword_10006A7D8, &unk_100053038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_100050428();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = v1[10];
  sub_1000035C4(&qword_10006C048, &unk_1000553F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_100050918();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v5 + v19, 1, v20))
    {
      (*(v21 + 8))(v5 + v19, v20);
    }
  }

  else
  {
    v22 = *(v5 + v19);
  }

  v23 = *(v5 + v1[11] + 8);

  v24 = *(v5 + v1[12] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004D7D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TranslationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10004D84C()
{
  result = qword_10006C250;
  if (!qword_10006C250)
  {
    sub_10000372C(&qword_10006C1A8, &unk_1000555A0);
    sub_10004D8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C250);
  }

  return result;
}

unint64_t sub_10004D8D8()
{
  result = qword_10006C258;
  if (!qword_10006C258)
  {
    sub_10000372C(&qword_10006C148, &qword_100055540);
    sub_10000372C(&qword_10006C138, &qword_100055530);
    sub_10000372C(&qword_10006C130, &qword_100055528);
    sub_1000508C8();
    sub_10000372C(&qword_10006C128, &qword_100055520);
    sub_10004D00C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C258);
  }

  return result;
}

unint64_t sub_10004DA5C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 bundleIdentifier];

    if (!v4)
    {
      v5 = [objc_opt_self() processInfo];
      v4 = [v5 processName];
    }

    sub_100051158();
  }

  sub_1000035C4(&qword_10006A488, &unk_100052BD0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6D614E746E657665;
  *(inited + 16) = xmmword_100055780;
  *(inited + 40) = 0xE900000000000065;
  *v0;
  *v0;
  v7 = inited;

  v8 = sub_100051128();

  v7[6] = v8;
  v7[7] = 0x4E737365636F7270;
  v7[8] = 0xEB00000000656D61;
  v9 = sub_100051128();

  v7[9] = v9;
  v7[10] = 0x6E6F697461636F6CLL;
  v7[11] = 0xE800000000000000;
  v10 = *(v0 + 8);
  v11 = *(v0 + 16);
  v7[12] = sub_100051128();
  v12 = sub_10004DF48(v7);
  swift_setDeallocating();
  sub_1000035C4(&qword_10006A498, &qword_1000557B0);
  swift_arrayDestroy();
  return v12;
}

unint64_t sub_10004DD0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000516C8();
  sub_1000511C8();
  v6 = sub_1000516F8();

  return sub_10004DDC8(a1, a2, v6);
}

unint64_t sub_10004DD84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100051568(*(v2 + 40));

  return sub_10004DE80(a1, v4);
}

unint64_t sub_10004DDC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100051658())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004DE80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10004E1CC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100051578();
      sub_100045DE0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10004DF48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000035C4(&qword_10006C260, &qword_1000557B8);
    v3 = sub_100051618();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10004DD0C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004E04C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000035C4(&qword_10006C268, &qword_1000557C0);
    v3 = sub_100051618();
    v4 = a1 + 32;

    while (1)
    {
      sub_10004E15C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10004DD0C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000435DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10004E15C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006BCA0, &qword_100054E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004E228(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10004E26C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  return v1;
}

void sub_10004E2E0()
{
  v1 = v0;
  v2 = sub_10004FFC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v64 - v9;
  v70 = sub_10004FDB8();
  v11 = *(v70 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v70);
  v69 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100069F20 != -1)
  {
    swift_once();
  }

  v14 = sub_100050268();
  v15 = sub_100008BA0(v14, qword_10006E0A8);
  v16 = sub_100050248();
  v17 = sub_100051338();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Requested voice playback", v18, 2u);
  }

  v19 = [objc_opt_self() sharedInstance];
  if (*(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_text + 8))
  {
    v66 = v15;
    v67 = v3;
    v68 = v19;
    v20 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_text);
    v21 = OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_locale;
    swift_beginAccess();
    sub_10004FA04(v1 + v21, v10);
    v22 = v70;
    if ((*(v11 + 48))(v10, 1, v70) == 1)
    {

      sub_100004444(v10, &qword_10006A2A0, &qword_1000528E0);
    }

    else
    {
      v65 = v11;
      (*(v11 + 32))(v69, v10, v22);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock) = 1;

      sub_100050308();
      v23 = objc_allocWithZone(_LTLocalePair);
      isa = sub_10004FD88().super.isa;
      v25 = sub_10004FD88().super.isa;
      v26 = [v23 initWithSourceLocale:isa targetLocale:v25];

      v27 = [objc_allocWithZone(_LTSpeakRequest) initWithLocalePair:v26];
      v28 = sub_100051128();

      [v27 setText:v28];

      v29 = v27;
      v30 = [v29 uniqueID];
      v31 = sub_100051158();
      v33 = v32;

      v34 = (v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID);
      v35 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID + 8);
      *v34 = v31;
      v34[1] = v33;

      sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
      v36 = sub_100051388();
      LOBYTE(v30) = sub_100051398();

      [v29 setForcedOfflineTranslation:v30 & 1];
      v37 = v67;
      (*(v67 + 104))(v6, enum case for TranslateFeatures.onDeviceFirst(_:), v2);
      LOBYTE(v30) = sub_10004FFB8();
      (*(v37 + 8))(v6, v2);
      if (v30)
      {
        [v29 setPreferOnDeviceIfAvailable:1];
      }

      v38 = swift_allocObject();
      *(v38 + 16) = v1;
      *(v38 + 24) = v29;
      v75 = sub_10004FA78;
      v76 = v38;
      aBlock = _NSConcreteStackBlock;
      v72 = 1107296256;
      v73 = sub_10004F008;
      v74 = &unk_100067818;
      v39 = _Block_copy(&aBlock);

      v40 = v29;

      [v40 setCompletionHandler:v39];
      _Block_release(v39);
      aBlock = 0;
      v41 = [v68 setCategory:AVAudioSessionCategoryPlayback withOptions:40 error:&aBlock];
      v42 = aBlock;
      if (v41 && (aBlock = 0, v43 = v42, v44 = [v68 setActive:1 withOptions:0 error:&aBlock], v42 = aBlock, v44))
      {
        v45 = aBlock;
      }

      else
      {
        v46 = v42;
        sub_10004FC88();

        swift_willThrow();
        swift_errorRetain();
        v47 = sub_100050248();
        v48 = sub_100051358();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *v49 = 138412290;
          v51 = sub_10004FC78();
          *(v49 + 4) = v51;
          *v50 = v51;
          _os_log_impl(&_mh_execute_header, v47, v48, "Failed to change audio category: %@", v49, 0xCu);
          sub_100004444(v50, &qword_10006AB78, &unk_100053370);
        }

        else
        {
        }
      }

      v52 = [objc_allocWithZone(_LTTranslator) init];
      [v52 translate:v40];

      v53 = sub_10004FD28();
      v55 = v54;
      if (*(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation + 8))
      {
        v56 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation);
        v57 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation + 8);
      }

      else
      {
        v57 = 0xE700000000000000;
        v56 = 0x6E776F6E6B6E75;
      }

      aBlock = 0x2F6D6574737973;
      v72 = 0xE700000000000000;

      v78._countAndFlagsBits = v53;
      v78._object = v55;
      sub_1000511E8(v78);

      v79._countAndFlagsBits = 47;
      v79._object = 0xE100000000000000;
      sub_1000511E8(v79);
      v80._countAndFlagsBits = v56;
      v80._object = v57;
      sub_1000511E8(v80);

      v58 = aBlock;
      v59 = v72;
      v60 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier);
      v61 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier + 8);
      LOBYTE(aBlock) = 0;
      v72 = v58;
      v73 = v59;
      v74 = v60;
      v75 = v61;

      v62 = sub_100051128();
      sub_10004DA5C();

      sub_100009FC4(0, &qword_10006A480, NSObject_ptr);
      v63 = sub_1000510D8().super.isa;

      AnalyticsSendEvent();

      (*(v65 + 8))(v69, v70);
    }
  }

  else
  {
  }
}

uint64_t sub_10004EC10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000510A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000510C8();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009FC4(0, &qword_10006B0B8, OS_dispatch_queue_ptr);
  v14 = sub_1000513E8();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_10004FAD8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004E228;
  aBlock[3] = &unk_100067868;
  v16 = _Block_copy(aBlock);

  v17 = a3;

  sub_1000510B8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10004FAE0();
  sub_1000035C4(&qword_10006B0C8, &qword_100055880);
  sub_10004FB38();
  sub_100051528();
  sub_1000513F8();
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_10004EEB0(uint64_t a1, void *a2)
{
  v3 = (a1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID);
  v5 = *(a1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID);
  v4 = *(a1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID + 8);

  v6 = [a2 uniqueID];
  v7 = sub_100051158();
  v9 = v8;

  if (v4)
  {
    if (v5 == v7 && v4 == v9)
    {
    }

    else
    {
      v11 = sub_100051658();

      if ((v11 & 1) == 0)
      {
        return result;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_100050308();
    v13 = v3[1];
    *v3 = 0;
    v3[1] = 0;
  }
}

void sub_10004F008(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_10004F074()
{
  v1 = v0;
  v2 = sub_10004FDB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30[-v9];
  if (qword_100069F20 != -1)
  {
    swift_once();
  }

  v11 = sub_100050268();
  sub_100008BA0(v11, qword_10006E0A8);
  v12 = sub_100050248();
  v13 = sub_100051338();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Pausing voice playback", v14, 2u);
  }

  v15 = 0x6E776F6E6B6E75;

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v31) = 0;

  sub_100050308();
  v16 = (v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID);
  v17 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID + 8);
  *v16 = 0;
  v16[1] = 0;

  v18 = [objc_allocWithZone(_LTTranslator) init];
  [v18 cleanup];

  v19 = OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_locale;
  swift_beginAccess();
  sub_10004FA04(v1 + v19, v10);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_100004444(v10, &qword_10006A2A0, &qword_1000528E0);
    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E75;
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_100004444(v10, &qword_10006A2A0, &qword_1000528E0);
    v21 = sub_10004FD28();
    v20 = v22;
    (*(v3 + 8))(v6, v2);
  }

  if (*(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation + 8))
  {
    v15 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation);
    v23 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation + 8);
  }

  else
  {
    v23 = 0xE700000000000000;
  }

  v31 = 0x2F6D6574737973;
  v32 = 0xE700000000000000;

  v36._countAndFlagsBits = v21;
  v36._object = v20;
  sub_1000511E8(v36);

  v37._countAndFlagsBits = 47;
  v37._object = 0xE100000000000000;
  sub_1000511E8(v37);
  v38._countAndFlagsBits = v15;
  v38._object = v23;
  sub_1000511E8(v38);

  v24 = v31;
  v25 = v32;
  v26 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier);
  v27 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier + 8);
  LOBYTE(v31) = 1;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;

  v28 = sub_100051128();
  sub_10004DA5C();

  sub_100009FC4(0, &qword_10006A480, NSObject_ptr);
  isa = sub_1000510D8().super.isa;

  AnalyticsSendEvent();
}

void sub_10004F4C4()
{
  if (qword_100069F20 != -1)
  {
    swift_once();
  }

  v0 = sub_100050268();
  sub_100008BA0(v0, qword_10006E0A8);

  v1 = sub_100050248();
  v2 = sub_100051338();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67240192;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000502F8();

    *(v3 + 4) = v4;

    _os_log_impl(&_mh_execute_header, v1, v2, "Requested toggling voice playback; previously playing: %{BOOL,public}d", v3, 8u);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (v5 == 1)
  {
    sub_10004F074();
  }

  else
  {
    sub_10004E2E0();
  }
}

uint64_t sub_10004F684()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService13VoicePlayback__isPlaying;
  v2 = sub_1000035C4(&qword_10006AC10, &qword_1000536D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation + 8);

  v5 = *(v0 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_text + 8);

  sub_100004444(v0 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_locale, &qword_10006A2A0, &qword_1000528E0);
  v6 = *(v0 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for VoicePlayback()
{
  result = qword_10006C2B8;
  if (!qword_10006C2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004F7F0()
{
  sub_10002D1EC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100021B78();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10004F8C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VoicePlayback();
  result = sub_1000502B8();
  *a1 = result;
  return result;
}

uint64_t sub_10004F908@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v5;
  return result;
}

uint64_t sub_10004F988(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_10004FA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004FA80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004FA98()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10004FAE0()
{
  result = qword_10006B0C0;
  if (!qword_10006B0C0)
  {
    sub_1000510A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B0C0);
  }

  return result;
}

unint64_t sub_10004FB38()
{
  result = qword_10006B0D0;
  if (!qword_10006B0D0)
  {
    sub_10000372C(&qword_10006B0C8, &qword_100055880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B0D0);
  }

  return result;
}