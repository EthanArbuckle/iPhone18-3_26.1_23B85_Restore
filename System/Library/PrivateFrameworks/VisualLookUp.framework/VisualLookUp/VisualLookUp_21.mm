uint64_t sub_1D9B2F2C4(__int128 *a1, void (*a2)(__int128 *))
{
  v4 = a1[11];
  v68[10] = a1[10];
  v68[11] = v4;
  v68[12] = a1[12];
  v69 = *(a1 + 208);
  v5 = a1[7];
  v68[6] = a1[6];
  v68[7] = v5;
  v6 = a1[9];
  v68[8] = a1[8];
  v68[9] = v6;
  v7 = a1[3];
  v68[2] = a1[2];
  v68[3] = v7;
  v8 = a1[5];
  v68[4] = a1[4];
  v68[5] = v8;
  v9 = a1[1];
  v68[0] = *a1;
  v68[1] = v9;
  if (sub_1D9B34F58(v68) == 1)
  {
    faiss::NormalizationTransform::~NormalizationTransform(v68);
    v10 = a1[11];
    v11 = a1[9];
    v48 = a1[10];
    v49 = v10;
    v12 = a1[11];
    v50 = a1[12];
    v13 = a1[7];
    v14 = a1[5];
    v44 = a1[6];
    v45 = v13;
    v15 = a1[7];
    v16 = a1[9];
    v46 = a1[8];
    v47 = v16;
    v17 = a1[3];
    v18 = a1[1];
    v40 = a1[2];
    v41 = v17;
    v19 = a1[3];
    v20 = a1[5];
    v42 = a1[4];
    v43 = v20;
    v21 = a1[1];
    v38 = *a1;
    v39 = v21;
    v62 = v48;
    v63 = v12;
    v64 = a1[12];
    v58 = v44;
    v59 = v15;
    v60 = v46;
    v61 = v11;
    v54 = v40;
    v55 = v19;
    v56 = v42;
    v57 = v14;
    v51 = *(a1 + 208);
    v65 = *(a1 + 208);
    v52 = v38;
    v53 = v18;
    faiss::NormalizationTransform::~NormalizationTransform(&v52);
    v23 = *v22;
  }

  else
  {
    faiss::NormalizationTransform::~NormalizationTransform(v68);
    v24 = a1[11];
    v25 = a1[9];
    v48 = a1[10];
    v49 = v24;
    v26 = a1[11];
    v50 = a1[12];
    v27 = a1[7];
    v28 = a1[5];
    v44 = a1[6];
    v45 = v27;
    v29 = a1[7];
    v30 = a1[9];
    v46 = a1[8];
    v47 = v30;
    v31 = a1[3];
    v32 = a1[1];
    v40 = a1[2];
    v41 = v31;
    v33 = a1[3];
    v34 = a1[5];
    v42 = a1[4];
    v43 = v34;
    v35 = a1[1];
    v38 = *a1;
    v39 = v35;
    v62 = v48;
    v63 = v26;
    v64 = a1[12];
    v58 = v44;
    v59 = v29;
    v60 = v46;
    v61 = v25;
    v54 = v40;
    v55 = v33;
    v56 = v42;
    v57 = v28;
    v51 = *(a1 + 208);
    v65 = *(a1 + 208);
    v52 = v38;
    v53 = v32;
    faiss::NormalizationTransform::~NormalizationTransform(&v52);
    sub_1D9B335C8(v36, v66);
  }

  a2(&v38);
  v66[10] = v48;
  v66[11] = v49;
  v66[12] = v50;
  v67 = v51;
  v66[6] = v44;
  v66[7] = v45;
  v66[8] = v46;
  v66[9] = v47;
  v66[2] = v40;
  v66[3] = v41;
  v66[4] = v42;
  v66[5] = v43;
  v66[0] = v38;
  v66[1] = v39;
  return sub_1D99A6AE0(v66, &qword_1ECB51B40);
}

id VisualIntelligenceService.submitUserFeedback(image:request:report:reportIdentifier:environment:container:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, void (*a12)(void), uint64_t a13)
{
  v81 = a8;
  v82 = a1;
  v90 = a6;
  v19 = *v13;
  v79 = v13;
  v80 = v19;
  v20 = sub_1D9C7DA2C();
  v87 = *(v20 - 8);
  v88 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1D9C7DA4C();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D9C7D8DC();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v78 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v73 - v27;
  static Logger.argos.getter(&v73 - v27);

  sub_1D99DF410(a2, a3);
  sub_1D99DF410(a4, a5);
  v29 = sub_1D9C7D8BC();
  v30 = sub_1D9C7E09C();

  sub_1D99B3C44(a2, a3);
  sub_1D99B3C44(a4, a5);
  LODWORD(v89) = v30;
  v31 = os_log_type_enabled(v29, v30);
  v91 = a7;
  v92 = a2;
  v77 = v24;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v76 = v23;
    v33 = v32;
    v34 = swift_slowAlloc();
    v75 = v34;
    *v33 = 136315650;
    v93 = v34;
    aBlock = v90;
    v95 = a7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518F0);
    v35 = sub_1D9C7DCEC();
    v37 = v24;
    v38 = sub_1D9A0E224(v35, v36, &v93);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    aBlock = a2;
    v95 = a3;
    sub_1D99DF410(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534E0);
    v39 = sub_1D9C7DCEC();
    v41 = sub_1D9A0E224(v39, v40, &v93);

    *(v33 + 14) = v41;
    *(v33 + 22) = 2080;
    aBlock = a4;
    v95 = a5;
    sub_1D99DF410(a4, a5);
    v42 = sub_1D9C7DCEC();
    v44 = sub_1D9A0E224(v42, v43, &v93);

    *(v33 + 24) = v44;
    _os_log_impl(&dword_1D9962000, v29, v89, "submitUserFeedback(): reportIdentifier=%s request=%s report=%s", v33, 0x20u);
    v45 = v75;
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v45, -1, -1);
    MEMORY[0x1DA7405F0](v33, -1, -1);

    v46 = *(v37 + 8);
    v47 = v76;
  }

  else
  {

    v46 = *(v24 + 8);
    v47 = v23;
  }

  v46(v28);
  v48 = [objc_allocWithZone(type metadata accessor for CancelSession()) init];
  if (a3 >> 60 == 15)
  {
    v49 = sub_1D9B33F0C(0xD000000000000025, 0x80000001D9CAA460, v48, a12, a13);
    swift_unknownObjectRetain();
LABEL_13:

    return v49;
  }

  if (!v91)
  {
    v72 = v92;
    sub_1D99DF410(v92, a3);
    v49 = sub_1D9B33F0C(0xD00000000000002ELL, 0x80000001D9CAA490, v48, a12, a13);
    swift_unknownObjectRetain();
    sub_1D99B3C44(v72, a3);
    goto LABEL_13;
  }

  v89 = a4;
  v76 = a11;
  v50 = a10;

  sub_1D99DF410(v92, a3);
  if (a5 >> 60 == 15)
  {
    v75 = a10;
    static Logger.argos.getter(v78);
    v51 = sub_1D9C7D8BC();
    v52 = sub_1D9C7E09C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v74 = a5;
      v54 = a3;
      v55 = v53;
      *v53 = 0;
      _os_log_impl(&dword_1D9962000, v51, v52, "submitUserFeedback(): warning: report data was empty", v53, 2u);
      v56 = v55;
      a3 = v54;
      a5 = v74;
      MEMORY[0x1DA7405F0](v56, -1, -1);
    }

    (v46)(v78, v47);
    v50 = v75;
  }

  v79 = v79[3];
  v57 = swift_allocObject();
  *(v57 + 16) = v48;
  *(v57 + 24) = a12;
  v58 = v81;
  v59 = v82;
  *(v57 + 32) = a13;
  *(v57 + 40) = v58;
  *(v57 + 48) = a9 & 1;
  v60 = v76;
  *(v57 + 56) = v50;
  *(v57 + 64) = v60;
  v61 = v92;
  *(v57 + 72) = v92;
  *(v57 + 80) = a3;
  v63 = v89;
  v62 = v90;
  *(v57 + 88) = v59;
  *(v57 + 96) = v63;
  *(v57 + 104) = a5;
  *(v57 + 112) = v62;
  v64 = v80;
  *(v57 + 120) = v91;
  *(v57 + 128) = v64;
  v98 = sub_1D9B34124;
  v99 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = sub_1D9A0A1E0;
  v97 = &block_descriptor_59;
  v65 = a5;
  v66 = _Block_copy(&aBlock);
  sub_1D99DF410(v61, a3);
  sub_1D99DF410(v63, v65);

  swift_unknownObjectRetain();
  v67 = v48;

  v68 = v83;
  sub_1D9C7DA3C();
  v93 = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
  v69 = v85;
  v70 = v88;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v68, v69, v66);
  _Block_release(v66);
  sub_1D99B3C44(v61, a3);
  (*(v87 + 8))(v69, v70);
  (*(v84 + 8))(v68, v86);

  return v67;
}

void sub_1D9B2FD2C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10, uint64_t a11, unint64_t a12)
{
  v104 = a8;
  v110 = a7;
  v112 = a4;
  v113 = a6;
  LODWORD(v111) = a5;
  v15 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v106 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Argos_Protos_Userfeedback_UserFeedbackOnDeviceSignals();
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9C7D8DC();
  v117 = *(v18 - 8);
  v118 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v114 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v103 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v103 - v23;
  v25 = *(a1 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock);
  os_unfair_lock_lock(v25 + 4);
  LODWORD(a1) = *(a1 + OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled);
  os_unfair_lock_unlock(v25 + 4);
  if (a1 == 1)
  {
    static Logger.argos.getter(v24);
    v26 = sub_1D9C7D8BC();
    v27 = sub_1D9C7E09C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D9962000, v26, v27, "submitUserFeedback(): canceled", v28, 2u);
      MEMORY[0x1DA7405F0](v28, -1, -1);
    }

    (*(v117 + 8))(v24, v118);
    sub_1D9A0EEC0();
    v29 = swift_allocError();
    *v30 = 0;
    a2();
  }

  v115 = a2;
  v116 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53530);
  inited = swift_initStackObject();
  v109 = xmmword_1D9C85490;
  *(inited + 16) = xmmword_1D9C85490;
  if ((sub_1D9A75D94() & 1) == 0)
  {
    if (qword_1EDD355A0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

  if (qword_1ECB50988 != -1)
  {
LABEL_46:
    swift_once();
  }

LABEL_9:

  sub_1D9A16F4C();
  v33 = v32;
  v35 = v34;

  *(inited + 32) = v33;
  v36 = v111 & 1;
  v37 = 64;
  if (v111)
  {
    v37 = 96;
  }

  *(inited + 40) = v35 & 1;
  *(inited + 48) = 0x6C616E7265746E69;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 64) = v112;
  *(inited + 72) = v36;
  *(inited + 80) = 0x746E656D75677261;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = 1;
  *(inited + 104) = 0;
  *(inited + 112) = 0x746C7561666564;
  *(inited + 120) = 0xE700000000000000;
  v38 = (inited + v37);
  if ((v35 & 1) == 0)
  {
    v38 = (inited + 32);
  }

  v39 = v38[3];
  v112 = *v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53538);
  v40 = swift_initStackObject();
  *(v40 + 16) = v109;
  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v41 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v41 = &qword_1EDD355A8;
  }

  v42 = *(*v41 + 32);

  v43 = sub_1D9C7DC4C();
  v44 = [v42 stringForKey_];

  if (v44)
  {
    v45 = sub_1D9C7DC7C();
    v47 = v46;
  }

  else
  {

    v45 = 0;
    v47 = 0;
  }

  *(v40 + 32) = v45;
  *(v40 + 40) = v47;
  *(v40 + 48) = 0x6C616E7265746E69;
  *(v40 + 56) = 0xE800000000000000;
  v48 = v110;
  *(v40 + 64) = v113;
  *(v40 + 72) = v48;
  *(v40 + 80) = 0x746E656D75677261;
  *(v40 + 88) = 0xE800000000000000;
  v49 = 0x80000001D9CAA430;
  *(v40 + 96) = 0xD000000000000029;
  *(v40 + 104) = 0x80000001D9CAA430;
  *(v40 + 112) = 0x746C7561666564;
  *(v40 + 120) = 0xE700000000000000;
  v50 = 64;
  if (!v48)
  {
    v50 = 96;
  }

  v51 = v40 + v50;
  if (v48)
  {
    v49 = v48;
  }

  if (v47)
  {
    v51 = v40 + 32;
    v52 = v47;
  }

  else
  {
    v52 = v49;
  }

  v54 = *(v51 + 16);
  v53 = *(v51 + 24);
  v55 = *v51;

  if (v39)
  {

    if (v53)
    {
      v113 = v55;

      v56 = v108;
      static Logger.argos.getter(v108);

      v57 = sub_1D9C7D8BC();
      v58 = sub_1D9C7E09C();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v119 = v60;
        *v59 = 136315394;
        v61 = CKContainerEnvironmentString();
        v62 = sub_1D9C7DC7C();
        v64 = v63;

        v65 = sub_1D9A0E224(v62, v64, &v119);

        *(v59 + 4) = v65;
        *(v59 + 12) = 2080;
        *(v59 + 14) = sub_1D9A0E224(v113, v52, &v119);
        _os_log_impl(&dword_1D9962000, v57, v58, "submitUserFeedback(): environment=%s, container=%s", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v60, -1, -1);
        MEMORY[0x1DA7405F0](v59, -1, -1);

        (*(v117 + 8))(v108, v118);
      }

      else
      {

        (*(v117 + 8))(v56, v118);
      }

      v70 = v107;
      v123 = v104;
      v124 = a9;
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
      sub_1D99AF2FC(v104, a9);
      sub_1D9C7D43C();
      sub_1D9B347C4(&unk_1ECB53550, type metadata accessor for Argos_Protos_Userfeedback_UserFeedbackOnDeviceSignals);
      sub_1D9C7D67C();
      sub_1D9B5272C(a10, 1);
      v72 = v71;
      v73 = sub_1D9B529CC(v71);
      v84 = v83;
      v85 = v73;

      v118 = sub_1D9C7DC4C();

      v117 = sub_1D9C7B86C();
      if (a12 >> 60 == 15)
      {
        v114 = 0;
      }

      else
      {
        v114 = sub_1D9C7B86C();
      }

      v113 = objc_opt_self();
      v111 = sub_1D9C7B86C();
      v110 = sub_1D9C7DC4C();
      v86 = *(v70 + 32);
      v87 = v85;
      v88 = v84;
      v89 = sub_1D9C7B86C();
      v90 = sub_1D9C7DC4C();
      *&v109 = v90;
      v91 = swift_allocObject();
      v92 = v116;
      *(v91 + 16) = v115;
      *(v91 + 24) = v92;
      v121 = sub_1D9B3480C;
      v122 = v91;
      *&v119 = MEMORY[0x1E69E9820];
      *(&v119 + 1) = 1107296256;
      *&v120 = sub_1D9B30C24;
      *(&v120 + 1) = &block_descriptor_104;
      v93 = _Block_copy(&v119);

      v102 = v90;
      v101 = v89;
      v94 = v89;
      v96 = v117;
      v95 = v118;
      v97 = v114;
      v99 = v110;
      v98 = v111;
      LODWORD(v100) = v86;
      [v113 uploadUserFeedbackToEnvironment:v112 container:v118 request:v117 sfReport:v114 intermediateResults:v111 deviceInfo:v110 nsfwConfidence:v100 imageData:v101 reportIdentifier:v102 completionHandler:v93];
      sub_1D99A5748(v87, v88);
      _Block_release(v93);

      sub_1D9B336AC(v107, type metadata accessor for Argos_Protos_Userfeedback_UserFeedbackOnDeviceSignals);
      return;
    }

    sub_1D9B01700();
    v66 = swift_allocError();
    strcpy(v68, "nil container");
    *(v68 + 7) = -4864;
    swift_willThrow();
  }

  else
  {
    sub_1D9B34780(v55, v52, v54, v53);
    sub_1D9B01700();
    v66 = swift_allocError();
    *v67 = 0x69766E65206C696ELL;
    v67[1] = 0xEF746E656D6E6F72;
    swift_willThrow();
  }

  v69 = v114;
  static Logger.argos.getter(v114);
  v74 = v66;
  v75 = sub_1D9C7D8BC();
  v76 = sub_1D9C7E0AC();

  if (os_log_type_enabled(v75, v76))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v78 = 138412290;
    v80 = v66;
    v81 = _swift_stdlib_bridgeErrorToNSError();
    *(v78 + 4) = v81;
    *v79 = v81;
    _os_log_impl(&dword_1D9962000, v75, v76, "submitUserFeedback(): %@", v78, 0xCu);
    sub_1D99A6AE0(v79, &qword_1ECB510E8);
    MEMORY[0x1DA7405F0](v79, -1, -1);
    MEMORY[0x1DA7405F0](v78, -1, -1);
  }

  (*(v117 + 8))(v69, v118);
  v82 = v66;
  (v115)(v66);
}

uint64_t sub_1D9B30998(void *a1, uint64_t (*a2)(void *))
{
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  if (a1)
  {
    v11 = a1;
    static Logger.argos.getter(v7);
    v12 = a1;
    v13 = sub_1D9C7D8BC();
    v14 = sub_1D9C7E09C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1D9962000, v13, v14, "submitUserFeedback(): %@", v15, 0xCu);
      sub_1D99A6AE0(v16, &qword_1ECB510E8);
      MEMORY[0x1DA7405F0](v16, -1, -1);
      MEMORY[0x1DA7405F0](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    static Logger.argos.getter(&v23 - v9);
    v19 = sub_1D9C7D8BC();
    v20 = sub_1D9C7E09C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D9962000, v19, v20, "submitUserFeedback(): successful", v21, 2u);
      MEMORY[0x1DA7405F0](v21, -1, -1);
    }

    v7 = v10;
  }

  (*(v5 + 8))(v7, v4);
  return a2(a1);
}

void sub_1D9B30C24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_1D9B30CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v31 = a7;
  v30 = a6;
  v29 = a3;
  v32 = sub_1D9C7DA2C();
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9C7DA4C();
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = [objc_allocWithZone(type metadata accessor for CancelSession()) init];
  v19 = *(v7 + 96);
  v41 = &type metadata for PixelImage;
  v42 = &off_1F5533940;
  v39 = v16;
  v40 = v17;
  type metadata accessor for MetricsBucket();
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CC0];
  v28 = *(v19 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_queue);
  v21 = swift_allocObject();
  swift_weakInit();
  sub_1D99A17C8(&v39, v38);
  v22 = swift_allocObject();
  v22[2] = v21;
  sub_1D9979B9C(v38, (v22 + 3));
  v22[8] = a2;
  v22[9] = v18;
  v23 = v29;
  v22[10] = v20;
  v22[11] = v23;
  v22[12] = a4;
  aBlock[4] = v30;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = v31;
  v24 = _Block_copy(aBlock);
  v25 = v16;

  v31 = v18;

  sub_1D9C7DA3C();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
  v26 = v32;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v15, v12, v24);
  _Block_release(v24);

  (*(v35 + 8))(v12, v26);
  (*(v33 + 8))(v15, v34);

  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  return v31;
}

uint64_t sub_1D9B310D0(char a1)
{
  v2 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9C8CDC0;
  *(inited + 32) = 5;
  *(inited + 40) = sub_1D9B313DC(a1, 5u, "Failed to resolve provider for natureworld");
  *(inited + 48) = 6;
  *(inited + 56) = sub_1D9B313DC(a1, 6u, "Failed to resolve provider for natureworldv2");
  *(inited + 64) = 3;
  *(inited + 72) = sub_1D9B316E4(a1);
  *(inited + 80) = 4;
  *(inited + 88) = sub_1D9B318E8(a1);
  *(inited + 96) = 7;
  if (sub_1D9A93E64(7u))
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(ObjectType, v10);
    type metadata accessor for FoodModelFactory();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    sub_1D9B331F0(v7, v12 + OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_modelInfo, type metadata accessor for MLModelInfo);
    sub_1D9B331F0(v7, v4, type metadata accessor for MLModelInfo);
    type metadata accessor for FoodClassificationPostProcessor();
    swift_allocObject();
    *(v12 + OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_postProcessor) = sub_1D99CFD34(v4);
    v18[0] = a1;
    sub_1D9B331F0(v7, v4, type metadata accessor for MLModelInfo);
    type metadata accessor for CachedCoreMLModelProvider();
    swift_allocObject();
    v13 = sub_1D9B7E678(v18, v4, 16, 0, 0, 0);
    sub_1D9B336AC(v7, type metadata accessor for MLModelInfo);
    *(v12 + OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_coreMLModelProvider) = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  *(inited + 104) = v12;
  *(inited + 112) = 8;
  *(inited + 120) = sub_1D9B31BE4(a1);
  v14 = sub_1D9A4721C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53518);
  swift_arrayDestroy();
  v15 = sub_1D9B31EE0(v14);

  return v15;
}

uint64_t sub_1D9B313DC(char a1, unsigned __int8 a2, const char *a3)
{
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25[-v14];
  if (sub_1D9A93E64(a2))
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(ObjectType, v17);
    type metadata accessor for NatureworldModelFactory();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    sub_1D9B331F0(v15, v19 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo, type metadata accessor for MLModelInfo);
    sub_1D9B331F0(v15, v12, type metadata accessor for MLModelInfo);
    type metadata accessor for ClassificationNatureworldPostProcessor();
    swift_allocObject();
    *(v19 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_postProcessor) = sub_1D99F8460(v12);
    v26 = a1;
    sub_1D9B331F0(v15, v12, type metadata accessor for MLModelInfo);
    type metadata accessor for CachedCoreMLModelProvider();
    swift_allocObject();
    v20 = sub_1D9B7E678(&v26, v12, 16, 0, 0, 0);
    sub_1D9B336AC(v15, type metadata accessor for MLModelInfo);
    swift_unknownObjectRelease();
    result = v19;
    *(v19 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_coreMLModelProvider) = v20;
  }

  else
  {
    static Logger.argos.getter(v9);
    v22 = sub_1D9C7D8BC();
    v23 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D9962000, v22, v23, a3, v24, 2u);
      MEMORY[0x1DA7405F0](v24, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  return result;
}

uint64_t sub_1D9B316E4(char a1)
{
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1D9A93E64(3u))
  {
    v10 = v9;
    v18 = a1;
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(ObjectType, v10);
    type metadata accessor for UnifiedModelFactory();
    swift_allocObject();
    v12 = sub_1D9AEFF20(&v18, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    static Logger.argos.getter(v5);
    v13 = sub_1D9C7D8BC();
    v14 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D9962000, v13, v14, "Failed to resolve provider for unified", v15, 2u);
      MEMORY[0x1DA7405F0](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v12;
}

uint64_t sub_1D9B318E8(char a1)
{
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-v10];
  if (sub_1D9A93E64(4u))
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
    type metadata accessor for Argos2DV2ModelFactory();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    sub_1D9B331F0(v11, v15 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, type metadata accessor for MLModelInfo);
    v22 = a1;
    sub_1D9B331F0(v11, v8, type metadata accessor for MLModelInfo);
    type metadata accessor for CachedCoreMLModelProvider();
    swift_allocObject();
    *(v15 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_coreMLModelProvider) = sub_1D9B7E678(&v22, v8, 16, 0, 0, 0);
    sub_1D9B331F0(v11, v8, type metadata accessor for MLModelInfo);
    type metadata accessor for Argos2DV2ModelPostProcessor();
    swift_allocObject();
    v16 = sub_1D99A1E50(v8);
    sub_1D9B336AC(v11, type metadata accessor for MLModelInfo);
    swift_unknownObjectRelease();
    result = v15;
    *(v15 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_postProcessor) = v16;
  }

  else
  {
    static Logger.argos.getter(v5);
    v18 = sub_1D9C7D8BC();
    v19 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D9962000, v18, v19, "Failed to resolve provider for argos2dv2", v20, 2u);
      MEMORY[0x1DA7405F0](v20, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return result;
}

uint64_t sub_1D9B31BE4(char a1)
{
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-v10];
  if (sub_1D9A93E64(8u))
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
    type metadata accessor for SignSymbolModelFactory();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    sub_1D9B331F0(v11, v15 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo, type metadata accessor for MLModelInfo);
    sub_1D9B331F0(v11, v8, type metadata accessor for MLModelInfo);
    type metadata accessor for SignSymbolClassificationPostProcessor();
    swift_allocObject();
    *(v15 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_postProcessor) = sub_1D99E386C(v8);
    v22 = a1;
    sub_1D9B331F0(v11, v8, type metadata accessor for MLModelInfo);
    type metadata accessor for CachedCoreMLModelProvider();
    swift_allocObject();
    v16 = sub_1D9B7E678(&v22, v8, 16, 0, 0, 0);
    sub_1D9B336AC(v11, type metadata accessor for MLModelInfo);
    swift_unknownObjectRelease();
    result = v15;
    *(v15 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_coreMLModelProvider) = v16;
  }

  else
  {
    static Logger.argos.getter(v5);
    v18 = sub_1D9C7D8BC();
    v19 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D9962000, v18, v19, "Failed to resolve provider for signSymbol", v20, 2u);
      MEMORY[0x1DA7405F0](v20, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return result;
}

uint64_t sub_1D9B31EE0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v27 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = 0x80000001D9CA29B0;

  v10 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v11 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v12 = v11 | (v10 << 6);
        v13 = *(*(a1 + 56) + 8 * v12);
        if (v13)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v25 = v8;
      v26 = *(*(a1 + 48) + v12);
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {

        sub_1D9C0D60C(v15 + 1, 1);
        v2 = v27;
      }

      else
      {
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        break;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v8 = v25;
LABEL_24:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v2 + 48) + v20) = v26;
      *(*(v2 + 56) + 8 * v20) = v13;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v21 = 0;
    v22 = (63 - v17) >> 6;
    v8 = v25;
    while (++v19 != v22 || (v21 & 1) == 0)
    {
      v23 = v19 == v22;
      if (v19 == v22)
      {
        v19 = 0;
      }

      v21 |= v23;
      v24 = *(v16 + 8 * v19);
      if (v24 != -1)
      {
        v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v14 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v14);
      ++v10;
      if (v6)
      {
        v10 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1D9B32270(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v40 = *a5;
  v41 = a3;
  v9 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VisualIntelligenceModelProviderService();
  v43[3] = v12;
  v43[4] = &off_1F552EEE0;
  v43[0] = a2;
  v39 = a1;
  *(a5 + 16) = a1;
  a5[18] = a4;
  __swift_project_boxed_opaque_existential_1(v43, v12);

  v13 = sub_1D9A93E64(0);
  v15 = v14;
  if (v13)
  {
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 8);
    swift_unknownObjectRetain();
    v17(ObjectType, v15);
    swift_unknownObjectRelease();
    sub_1D9B24AE8(v42);
    sub_1D9B336AC(v11, type metadata accessor for MLModelInfo);
    v18 = v42[0];
    v19 = v42[1];
    v20 = v42[2];
    v21 = v42[3];
    v22 = v42[4];
    v23 = v42[5];
    v24 = v42[6];
  }

  else
  {
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
  }

  *(a5 + 3) = v18;
  *(a5 + 5) = v19;
  *(a5 + 7) = v20;
  *(a5 + 9) = v21;
  *(a5 + 11) = v22;
  *(a5 + 13) = v23;
  *(a5 + 15) = v24;
  if (v13)
  {
    v25 = swift_getObjectType();
    v26 = *(v15 + 8);
    swift_unknownObjectRetain();
    v26(v25, v15);
    swift_unknownObjectRelease();
    v27 = &v11[*(v9 + 24)];
    v29 = *v27;
    v28 = *(v27 + 1);

    sub_1D9B336AC(v11, type metadata accessor for MLModelInfo);
    a5[21] = v29;
    a5[22] = v28;
    LOBYTE(v42[0]) = v39;
    v30 = swift_getObjectType();
    swift_unknownObjectRetain();
    v26(v30, v15);
    v31 = swift_allocObject();
    *(v31 + 16) = v13;
    *(v31 + 24) = v15;
    type metadata accessor for CachedCoreMLModelProvider();
    swift_allocObject();
    v32 = sub_1D9B7E678(v42, v11, 4, 0, sub_1D9B34724, v31);
  }

  else
  {
    v32 = 0;
    a5[21] = 0;
    a5[22] = 0;
  }

  a5[17] = v32;
  sub_1D99A17C8(v43, v42);
  v33 = swift_allocObject();
  v33[2] = a4;
  sub_1D9979B9C(v42, (v33 + 3));
  v34 = v40;
  v33[8] = v41;
  v33[9] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53520);
  swift_allocObject();

  a5[19] = sub_1D9C1B65C(8, sub_1D9B346E4, v33);
  v35 = swift_allocObject();
  *(v35 + 16) = v13;
  *(v35 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53528);
  swift_allocObject();
  swift_unknownObjectRetain();
  v36 = sub_1D9C1B65C(0, sub_1D9B34708, v35);
  swift_unknownObjectRelease();

  a5[20] = v36;
  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  return a5;
}

void *sub_1D9B32690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1D9C7D8DC();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for VisualIntelligenceModelProviderService();
  v48 = v22;
  v49 = &off_1F552EEE0;
  v47[0] = a2;
  a5[3] = a4;
  a5[4] = a3;
  a5[2] = a1;
  __swift_project_boxed_opaque_existential_1(v47, v22);

  if (sub_1D9A93E64(1u))
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    (*(v24 + 8))(ObjectType, v24);
    type metadata accessor for DomainPredictionNet();
    swift_allocObject();
    v26 = sub_1D99F0F8C(v21, 8, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    static Logger.argos.getter(v18);
    v27 = sub_1D9C7D8BC();
    v28 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D9962000, v27, v28, "DomainPredictionModel cannot be not initialized.", v29, 2u);
      MEMORY[0x1DA7405F0](v29, -1, -1);
    }

    (*(v43 + 8))(v18, v44);
    v26 = 0;
  }

  a5[5] = v26;
  a5[9] = &type metadata for EspressoRequestHandler;
  a5[10] = &off_1F5533640;
  v30 = swift_allocObject();
  a5[6] = v30;
  v30[1] = 0u;
  v30[2] = 0u;
  v30[3] = 0u;
  v30[4] = 0u;
  v30[5] = 0u;
  sub_1D99AB100((a5 + 6), v45, &qword_1ECB530F8);
  v31 = v46;
  sub_1D99A6AE0(v45, &qword_1ECB530F8);
  if (!v31)
  {
    static Logger.argos.getter(v15);
    v32 = sub_1D9C7D8BC();
    v33 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D9962000, v32, v33, "domainPredictionNetHandler cannot be not initialized.", v34, 2u);
      MEMORY[0x1DA7405F0](v34, -1, -1);
    }

    (*(v43 + 8))(v15, v44);
  }

  __swift_project_boxed_opaque_existential_1(v47, v48);
  if (sub_1D9A93E64(2u))
  {
    v36 = v35;
    v37 = swift_getObjectType();
    (*(v36 + 8))(v37, v36);
    type metadata accessor for DomainPredictionNet();
    swift_allocObject();
    v38 = sub_1D99F0F8C(v21, 8, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    static Logger.argos.getter(v12);
    v39 = sub_1D9C7D8BC();
    v40 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1D9962000, v39, v40, "DomainPredictionModelGrounding cannot be not initialized.", v41, 2u);
      MEMORY[0x1DA7405F0](v41, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v12, v44);
    v38 = 0;
  }

  a5[11] = v38;
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  return a5;
}

BOOL sub_1D9B32B90(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1D9C7E7DC() & 1;
    }
  }

  return result;
}

uint64_t sub_1D9B32C04(uint64_t a1)
{
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = *(a1 + 56);
  if (v12 == 3)
  {
    v14 = 2;
    goto LABEL_24;
  }

  if (v12 == 5)
  {
    v13 = *(a1 + *(type metadata accessor for VisualQueryContext() + 84));
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        static Logger.argos.getter(v11);
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v2, qword_1EDD2C990);
        (*(v3 + 8))(v11, v2);
        v20 = sub_1D9C7D8BC();
        v21 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1D9962000, v20, v21, "parse mapToVLUUseCase  .VLUScreenshotEager: nil cameraSearchMode", v22, 2u);
          MEMORY[0x1DA7405F0](v22, -1, -1);
        }

        goto LABEL_23;
      }
    }

    else if (!v13)
    {
      goto LABEL_22;
    }

    v18 = sub_1D9C7E7DC();

    if (v18)
    {
LABEL_23:
      v14 = 3;
      goto LABEL_24;
    }

    if (v13 == 2)
    {
      v19 = sub_1D9C7E7DC();

      if ((v19 & 1) == 0)
      {

        v14 = 4;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_22:

    goto LABEL_23;
  }

  static Logger.argos.getter(v8);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EDD2C990);
  (*(v3 + 8))(v8, v2);
  v15 = sub_1D9C7D8BC();
  v16 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v12;
    _os_log_impl(&dword_1D9962000, v15, v16, "parse mapToVLUUseCase set to default value .VLUPhotos: Unexpected imageType %ld", v17, 0xCu);
    MEMORY[0x1DA7405F0](v17, -1, -1);
  }

  v14 = 0;
LABEL_24:
  static Logger.argos.getter(v5);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EDD2C990);
  (*(v3 + 8))(v5, v2);
  v23 = sub_1D9C7D8BC();
  v24 = sub_1D9C7E08C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136315138;
    v27 = 0xE900000000000073;
    v28 = 0x6F746F6850554C56;
    v29 = 0xEE00656D61724661;
    v30 = 0x72656D6143554C56;
    v31 = 0xD000000000000012;
    v32 = 0x80000001D9CA4B30;
    if (v14 != 3)
    {
      v31 = 0xD000000000000015;
      v32 = 0x80000001D9CA4B10;
    }

    if (v14 != 2)
    {
      v30 = v31;
      v29 = v32;
    }

    if (v14)
    {
      v28 = 0xD000000000000012;
      v27 = 0x80000001D9CA4B50;
    }

    if (v14 <= 1)
    {
      v33 = v28;
    }

    else
    {
      v33 = v30;
    }

    if (v14 <= 1)
    {
      v34 = v27;
    }

    else
    {
      v34 = v29;
    }

    v35 = sub_1D9A0E224(v33, v34, &v38);

    *(v25 + 4) = v35;
    _os_log_impl(&dword_1D9962000, v23, v24, "parse VLUUseCase by queryContext: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x1DA7405F0](v26, -1, -1);
    MEMORY[0x1DA7405F0](v25, -1, -1);
  }

  return v14;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1D9B331AC(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
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

double sub_1D9B331CC(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1D9B331F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B3325C(uint64_t a1, void (*a2)(__int128 *))
{
  v4 = type metadata accessor for VisualSearchResultInternal(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - v8);
  sub_1D99AB100(a1, &v21 - v8, &unk_1ECB53570);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v47 = *v9;
    v10 = v47;
    sub_1D9A0EF14(&v47);
    v31 = v57;
    v32 = v58;
    v33 = v59;
    v34 = v60;
    v27 = v53;
    v28 = v54;
    v29 = v55;
    v30 = v56;
    v23 = v49;
    v24 = v50;
    v25 = v51;
    v26 = v52;
    v21 = v47;
    v22 = v48;
    v11 = v10;
    a2(&v21);

    v71 = v31;
    v72 = v32;
    v73 = v33;
    v74 = v34;
    v67 = v27;
    v68 = v28;
    v69 = v29;
    v70 = v30;
    v63 = v23;
    v64 = v24;
    v65 = v25;
    v66 = v26;
    v61 = v21;
    v62 = v22;
    return sub_1D99A6AE0(&v61, &qword_1ECB51B40);
  }

  else
  {
    sub_1D9B34EF0(v9, v6, type metadata accessor for VisualSearchResultInternal);
    v13 = *(v6 + 23);
    v46 = *(v6 + 22);
    v14 = *(v6 + 9);
    v43 = *(v6 + 8);
    v44 = v14;
    v45 = *(v6 + 10);
    v15 = *(v6 + 5);
    v39 = *(v6 + 4);
    v40 = v15;
    v16 = *(v6 + 7);
    v41 = *(v6 + 6);
    v42 = v16;
    v17 = *(v6 + 1);
    v35 = *v6;
    v36 = v17;
    v18 = *(v6 + 3);
    v37 = *(v6 + 2);
    v38 = v18;
    sub_1D99BB40C(&v35, &v61);

    v19 = sub_1D99FC1B0();
    v55 = v43;
    v56 = v44;
    v57 = v45;
    v51 = v39;
    v52 = v40;
    v53 = v41;
    v54 = v42;
    v47 = v35;
    v48 = v36;
    v49 = v37;
    v50 = v38;
    *&v58 = v46;
    *(&v58 + 1) = v13;
    *&v59 = v19;
    *(&v59 + 1) = v20;
    sub_1D9B1839C(&v47);
    v31 = v57;
    v32 = v58;
    v33 = v59;
    v34 = v60;
    v27 = v53;
    v28 = v54;
    v29 = v55;
    v30 = v56;
    v23 = v49;
    v24 = v50;
    v25 = v51;
    v26 = v52;
    v21 = v47;
    v22 = v48;
    a2(&v21);
    v71 = v31;
    v72 = v32;
    v73 = v33;
    v74 = v34;
    v67 = v27;
    v68 = v28;
    v69 = v29;
    v70 = v30;
    v63 = v23;
    v64 = v24;
    v65 = v25;
    v66 = v26;
    v61 = v21;
    v62 = v22;
    sub_1D99A6AE0(&v61, &qword_1ECB51B40);
    return sub_1D9B336AC(v6, type metadata accessor for VisualSearchResultInternal);
  }
}

uint64_t sub_1D9B33644(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B336AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9B3370C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIntelligenceService.Options(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v36 - v10;
  v11 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534E8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D9C85EA0;
  v15 = type metadata accessor for AvailabilityChecker();
  v16 = swift_allocObject();
  *(v14 + 56) = v15;
  *(v14 + 64) = &off_1F5531560;
  *(v14 + 32) = v16;
  v17 = type metadata accessor for ImageSizeChecker();
  v18 = swift_allocObject();
  *(v14 + 96) = v17;
  *(v14 + 104) = &off_1F5532F68;
  *(v14 + 72) = v18;
  v19 = sub_1D9C04AB0(14, 0, 0x7478746270, 0xE500000000000000);
  sub_1D99CC998(v19, v20, v13);

  type metadata accessor for EligibilityChecker();
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  sub_1D9B34EF0(v13, v21 + OBJC_IVAR____TtC12VisualLookUp18EligibilityChecker_config, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D9C85660;
  v23 = swift_allocObject();
  *(v22 + 56) = v15;
  *(v22 + 64) = &off_1F5531560;
  *(v22 + 32) = v23;
  v24 = sub_1D9C04AB0(14, 0, 0x7478746270, 0xE500000000000000);
  sub_1D99CC998(v24, v25, v13);

  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  sub_1D9B34EF0(v13, v26 + OBJC_IVAR____TtC12VisualLookUp18EligibilityChecker_config, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig);
  v27 = v37;
  sub_1D99AB100(a1, v37, &qword_1ECB51FD0);
  v28 = v38;
  sub_1D99AB100(a1 + *(v5 + 28), v38, &unk_1ECB540C0);
  v29 = (a1 + *(v5 + 32));
  v30 = *v29;
  v31 = v29[1];
  type metadata accessor for NetworkService(0);
  swift_allocObject();

  v32 = sub_1D9AC84E0(v27, v28, v30, v31);
  v33 = v39;
  sub_1D9B331F0(a1, v39, type metadata accessor for VisualIntelligenceService.Options);
  type metadata accessor for VisualIntelligenceService(0);
  v34 = swift_allocObject();
  sub_1D9B276C4(v32, v33, v21, v26, a2);
  sub_1D9B336AC(a1, type metadata accessor for VisualIntelligenceService.Options);
  return v34;
}

uint64_t _s12VisualLookUp0A19IntelligenceServiceC14serviceOptionsA2C0G0V_tcfC_0(uint64_t a1)
{
  v2 = type metadata accessor for VisualIntelligenceService.Options(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.argos.getter(v8);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_1EDD2C990);
  (*(v6 + 8))(v8, v5);
  v9 = sub_1D9C7D8BC();
  v10 = sub_1D9C7E09C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D9962000, v9, v10, "VisualIntelligenceService.init()", v11, 2u);
    MEMORY[0x1DA7405F0](v11, -1, -1);
  }

  v12 = sub_1D9A75D94();
  type metadata accessor for TrialWrapper();
  swift_allocObject();
  v13 = sub_1D9C04808((v12 & 1) == 0);
  sub_1D9B331F0(a1, v4, type metadata accessor for VisualIntelligenceService.Options);
  v14 = sub_1D9B3370C(v4, v13);
  sub_1D9B336AC(a1, type metadata accessor for VisualIntelligenceService.Options);
  return v14;
}

uint64_t sub_1D9B33D90()
{
  v1 = *(type metadata accessor for VisualQueryContext() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B2BF9C(*(v0 + 16), *(v0 + 24), *(v0 + 64), *(v0 + 72), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + v5), *(v0 + v5 + 8), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D9B33E60()
{
  v1 = *(type metadata accessor for VisualQueryContext() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 8);
  v11 = *(v0 + 9);
  v12 = *(v0 + v3);
  v13 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_1D9B2D90C(v4, v5, v10, v11, v0 + v2, v12, v14, v15, v6, v7, v8, v9);
}

uint64_t sub_1D9B33F0C(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v24 = a1;
  v9 = sub_1D9C7D8DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.argos.getter(v12);

  v13 = sub_1D9C7D8BC();
  v14 = sub_1D9C7E0AC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23[1] = a5;
    v16 = a4;
    v17 = v15;
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1D9A0E224(v24, a2, &v25);
    _os_log_impl(&dword_1D9962000, v13, v14, "submitUserFeedback failed with error: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x1DA7405F0](v18, -1, -1);
    v19 = v17;
    a4 = v16;
    MEMORY[0x1DA7405F0](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_1D9B8806C();
  sub_1D9B01700();
  v20 = swift_allocError();
  *v21 = v24;
  v21[1] = a2;

  a4(v20);

  return a3;
}

uint64_t objectdestroy_62Tm()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D9B34238(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 432))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9B34280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
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
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 432) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9B34368()
{
  result = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1D9B344F8()
{
  sub_1D9B345D4(319, &qword_1EDD35450, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1D9B345D4(319, &unk_1EDD2C688, MEMORY[0x1E69E7F50]);
    if (v1 <= 0x3F)
    {
      sub_1D9B34628();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9B345D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9C7E27C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D9B34628()
{
  if (!qword_1EDD2C5E0)
  {
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2C5E0);
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1D9B3472C()
{
  result = qword_1EDD32700;
  if (!qword_1EDD32700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD32700);
  }

  return result;
}

uint64_t sub_1D9B34780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D9B347C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9B34814(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualQueryContext() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v1 + v5);
  v9 = v1[4];
  v10 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);

  return sub_1D9B2DCC0(a1, v6, v7, v9, v1 + v4, v8, v11, v12);
}

uint64_t objectdestroy_116Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 248) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v4 + v6;
  v31 = *(*(v5 - 1) + 64);

  if (*(v0 + 32) != 1)
  {
  }

  v8 = v3 + v7;

  if (*(v0 + 176))
  {
  }

  v30 = v6;
  v9 = v8 & ~v6;

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 208);
  v10 = v0 + v3;
  Context = type metadata accessor for VisualQueryContext();
  if (!(*(*(Context - 1) + 48))(v10, 1, Context))
  {
    v28 = v9;
    v29 = v2;

    v12 = Context[10];
    v13 = sub_1D9C7B80C();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    if (!v15(v10 + v12, 1, v13))
    {
      (*(v14 + 8))(v10 + v12, v13);
    }

    swift_unknownObjectRelease();
    v16 = Context[14];
    if (!v15(v10 + v16, 1, v13))
    {
      (*(v14 + 8))(v10 + v16, v13);
    }

    v9 = v28;
    v2 = v29;
  }

  v17 = v9;
  v18 = v0 + v9;

  v19 = v5[7];
  v20 = sub_1D9C7D3CC();
  v21 = *(*(v20 - 8) + 8);
  v21(v0 + v9 + v19, v20);
  v22 = v0 + v9 + v5[8];
  v23 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {

    v21(v22 + *(v23 + 28), v20);
  }

  v24 = v18 + v5[9];
  v25 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v21(v24 + *(v25 + 20), v20);
  }

  v26 = (((v31 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, ((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v30 | 7);
}

uint64_t sub_1D9B34DBC(uint64_t (*a1)(void, uint64_t, uint64_t, unint64_t, unint64_t, void, void, void, void))
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v4 = (*(v3 + 80) + 248) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a1(*(v1 + 16), v1 + 24, v1 + 208, v1 + v4, v1 + v7, *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D9B34EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B34F60(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualQueryContext() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B2C3DC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D9B3503C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v2 = (*(v1 + 80) + 248) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B9AE8C(*(v0 + 16), v0 + 24, v0 + 208, v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v9), *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t type metadata accessor for BoxScoreDomainAssignmentRule()
{
  result = qword_1EDD31C28;
  if (!qword_1EDD31C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B35294()
{
  result = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9B3531C(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v7 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v80 - v11);
  v85 = type metadata accessor for BoxScoreDomainAssignmentRule();
  MEMORY[0x1EEE9AC00](v85);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  v18 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v24 = a1[5];
  v126 = a1[4];
  v127 = v24;
  v25 = a1[3];
  v124 = a1[2];
  v125 = v25;
  *(v130 + 13) = *(a1 + 141);
  v26 = a1[8];
  v129 = a1[7];
  v130[0] = v26;
  v128 = a1[6];
  v27 = a1[1];
  v122 = *a1;
  v123 = v27;
  v28 = *v3;
  if (!*(*v3 + 16) || (v29 = a2, v30 = v9, v31 = &v80 - v20, v32 = v23, v83 = v22, v84 = v21, v82 = v29, (sub_1D9B35CB4(v28, *(v29 + 76)) & 1) == 0))
  {
    v46 = a1[7];
    a3[6] = a1[6];
    a3[7] = v46;
    a3[8] = a1[8];
    *(a3 + 141) = *(a1 + 141);
    v47 = a1[3];
    a3[2] = a1[2];
    a3[3] = v47;
    v48 = a1[5];
    a3[4] = a1[4];
    a3[5] = v48;
    v49 = a1[1];
    *a3 = *a1;
    a3[1] = v49;
    sub_1D99D39B8(&v122, &v113);
    return;
  }

  if (v3[8] == 1)
  {
    static Logger.argos.getter(v31);
    sub_1D9B3657C(v3, v17, type metadata accessor for BoxScoreDomainAssignmentRule);
    sub_1D9B3657C(v82, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
    v33 = sub_1D9C7D8BC();
    v34 = sub_1D9C7E09C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v106[0] = v36;
      *v35 = 136315394;
      v37 = sub_1D9A15C94(v17[*(v85 + 20)]);
      v85 = v31;
      v39 = v38;
      sub_1D9B365E4(v17, type metadata accessor for BoxScoreDomainAssignmentRule);
      v40 = sub_1D9A0E224(v37, v39, v106);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2080;
      v41 = v12[1];
      v113 = *v12;
      v114 = v41;
      v42 = NormalizedRect.loggingDescription.getter();
      v44 = v43;
      sub_1D9B365E4(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v45 = sub_1D9A0E224(v42, v44, v106);

      *(v35 + 14) = v45;
      _os_log_impl(&dword_1D9962000, v33, v34, "Reject %s for region %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v36, -1, -1);
      MEMORY[0x1DA7405F0](v35, -1, -1);

      (*(v83 + 8))(v85, v84);
    }

    else
    {

      sub_1D9B365E4(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B365E4(v17, type metadata accessor for BoxScoreDomainAssignmentRule);
      (*(v83 + 8))(v31, v84);
    }

    sub_1D99D3B54(&v113);
    v66 = v120;
    a3[6] = v119;
    a3[7] = v66;
    a3[8] = v121[0];
    *(a3 + 141) = *(v121 + 13);
    v67 = v116;
    a3[2] = v115;
    a3[3] = v67;
    v68 = v118;
    a3[4] = v117;
    a3[5] = v68;
    v69 = v113;
    v70 = v114;
    goto LABEL_20;
  }

  static Logger.argos.getter(v32);
  v81 = v3;
  sub_1D9B3657C(v3, v14, type metadata accessor for BoxScoreDomainAssignmentRule);
  v50 = v30;
  sub_1D9B3657C(v82, v30, type metadata accessor for VisualUnderstanding.ImageRegion);
  v51 = sub_1D9C7D8BC();
  v52 = sub_1D9C7E09C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v82 = v32;
    v54 = v53;
    v55 = swift_slowAlloc();
    *&v106[0] = v55;
    *v54 = 136315394;
    v56 = sub_1D9A15C94(v14[*(v85 + 20)]);
    v58 = v57;
    sub_1D9B365E4(v14, type metadata accessor for BoxScoreDomainAssignmentRule);
    v59 = sub_1D9A0E224(v56, v58, v106);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;
    v60 = v50[1];
    v113 = *v50;
    v114 = v60;
    v61 = NormalizedRect.loggingDescription.getter();
    v63 = v62;
    sub_1D9B365E4(v50, type metadata accessor for VisualUnderstanding.ImageRegion);
    v64 = sub_1D9A0E224(v61, v63, v106);

    *(v54 + 14) = v64;
    v65 = v85;
    _os_log_impl(&dword_1D9962000, v51, v52, "Assign %s to region %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v55, -1, -1);
    MEMORY[0x1DA7405F0](v54, -1, -1);

    (*(v83 + 8))(v82, v84);
  }

  else
  {

    sub_1D9B365E4(v50, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B365E4(v14, type metadata accessor for BoxScoreDomainAssignmentRule);
    (*(v83 + 8))(v32, v84);
    v65 = v85;
  }

  LOBYTE(v97) = v81[*(v65 + 20)];
  v71 = v97;
  *&v106[0] = *&v81[*(v65 + 28)];

  sub_1D9A19958(v106, &v113);

  LOBYTE(v106[0]) = v71;
  *(v106 + 8) = 0u;
  *(&v106[1] + 8) = 0u;
  BYTE8(v106[2]) = 0;
  v107 = 0u;
  v108 = 0u;
  v109 = v113;
  v110 = v114;
  v111 = 0uLL;
  LOWORD(v112[0]) = 0;
  *(&v112[1] + 5) = 0;
  *(&v112[0] + 1) = 0;
  *&v112[1] = 0;
  v113 = v122;
  v114 = v123;
  v117 = v126;
  v118 = v127;
  v115 = v124;
  v116 = v125;
  *(v121 + 13) = *(v130 + 13);
  v120 = v129;
  v121[0] = v130[0];
  v119 = v128;
  if (sub_1D99AE104(&v113) == 1)
  {
    goto LABEL_13;
  }

  v72 = sub_1D9A15C94(v113);
  v74 = v73;
  if (v72 == sub_1D9A15C94(v71) && v74 == v75)
  {

LABEL_18:
    v103 = v119;
    v104 = v120;
    v105[0] = v121[0];
    *(v105 + 13) = *(v121 + 13);
    v99 = v115;
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v97 = v113;
    v98 = v114;
    v94 = v110;
    v95 = v111;
    v96[0] = v112[0];
    *(v96 + 13) = *(v112 + 13);
    v90 = v106[2];
    v91 = v107;
    v92 = v108;
    v93 = v109;
    v88 = v106[0];
    v89 = v106[1];
    sub_1D9B67854(&v97, &v88, v86);
    sub_1D99AE0B0(v106);
    v94 = v86[6];
    v95 = v86[7];
    v96[0] = v87[0];
    *(v96 + 13) = *(v87 + 13);
    v90 = v86[2];
    v91 = v86[3];
    v92 = v86[4];
    v93 = v86[5];
    v88 = v86[0];
    v89 = v86[1];
    faiss::NormalizationTransform::~NormalizationTransform(&v88);
    v103 = v94;
    v104 = v95;
    v105[0] = v96[0];
    *(v105 + 13) = *(v96 + 13);
    goto LABEL_19;
  }

  v76 = sub_1D9C7E7DC();

  if (v76)
  {
    goto LABEL_18;
  }

LABEL_13:
  v94 = v110;
  v95 = v111;
  v96[0] = v112[0];
  *(v96 + 13) = *(v112 + 13);
  v90 = v106[2];
  v91 = v107;
  v92 = v108;
  v93 = v109;
  v88 = v106[0];
  v89 = v106[1];
  faiss::NormalizationTransform::~NormalizationTransform(&v88);
  v103 = v94;
  v104 = v95;
  v105[0] = v96[0];
  *(v105 + 13) = *(v96 + 13);
LABEL_19:
  v99 = v90;
  v100 = v91;
  v101 = v92;
  v102 = v93;
  v97 = v88;
  v98 = v89;
  v77 = v104;
  a3[6] = v103;
  a3[7] = v77;
  a3[8] = v105[0];
  *(a3 + 141) = *(v105 + 13);
  v78 = v100;
  a3[2] = v99;
  a3[3] = v78;
  v79 = v102;
  a3[4] = v101;
  a3[5] = v79;
  v69 = v97;
  v70 = v98;
LABEL_20:
  *a3 = v69;
  a3[1] = v70;
}

uint64_t sub_1D9B35CB4(uint64_t a1, float a2)
{
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - v9;
  v68 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange(0);
  MEMORY[0x1EEE9AC00](v68);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v64 - v15);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v69 = 0x80000001D9CA3A40;
    v72 = (v5 + 8);
    v73 = (v5 + 16);
    v65 = (v5 + 32);
    v20 = *(v14 + 72);
    *&v16 = 136315138;
    v66 = v16;
    v67 = (&v64 - v15);
    v71 = v20;
    while (1)
    {
      sub_1D9B3657C(v19, v17, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
      v23 = *v17;
      v22 = v17[1];
      if (v22 < *v17)
      {
        break;
      }

      sub_1D9B365E4(v17, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
      if (v22 >= a2 && v23 <= a2)
      {
        return 1;
      }

LABEL_8:
      v19 += v20;
      if (!--v18)
      {
        return 0;
      }
    }

    v74 = v19;
    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    v24 = byte_1EDD354C0;
    v75 = v18;
    if (byte_1EDD354C0 != 1)
    {
      goto LABEL_28;
    }

    v25 = [objc_opt_self() mainBundle];
    v26 = [v25 bundleIdentifier];

    if (!v26)
    {
      goto LABEL_19;
    }

    v27 = sub_1D9C7DC7C();
    v29 = v28;

    if (v27 == 0xD00000000000002BLL && v69 == v29)
    {
    }

    else
    {
      v31 = sub_1D9C7E7DC();

      if ((v31 & 1) == 0)
      {
LABEL_19:
        v32 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v32 = &qword_1EDD355A8;
        }

        goto LABEL_24;
      }
    }

    v32 = &off_1ECB51BA8;
    if (qword_1ECB50988 != -1)
    {
      swift_once();
      v32 = &off_1ECB51BA8;
    }

LABEL_24:
    v33 = *(*v32 + 32);

    v34 = sub_1D9C7DC4C();
    LODWORD(v33) = [v33 BOOLForKey_];

    if (v33)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v4, qword_1EDD2C990);
      v36 = *v73;
      (*v73)(v10, v35, v4);
      goto LABEL_31;
    }

LABEL_28:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v4, qword_1EDD354D8);
    v36 = *v73;
    (*v73)(v10, v37, v4);
    if ((v24 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_31:
    v38 = [objc_opt_self() mainBundle];
    v39 = [v38 bundleIdentifier];

    if (v39)
    {
      v40 = sub_1D9C7DC7C();
      v42 = v41;

      if (v40 == 0xD00000000000002BLL && v69 == v42)
      {

        goto LABEL_36;
      }

      v43 = sub_1D9C7E7DC();

      if (v43)
      {
LABEL_36:
        v44 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v44 = &off_1ECB51BA8;
        }

        goto LABEL_40;
      }
    }

    v44 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v44 = &qword_1EDD355A8;
    }

LABEL_40:
    v45 = *(*v44 + 32);

    v46 = sub_1D9C7DC4C();
    LODWORD(v45) = [v45 BOOLForKey_];

    if (v45)
    {
      (*v65)(v7, v10, v4);
LABEL_45:
      sub_1D9B3657C(v17, v12, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
      v48 = sub_1D9C7D8BC();
      v49 = sub_1D9C7E09C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = v12;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v76 = v52;
        *v51 = v66;
        sub_1D9B36644();
        v53 = v10;
        v54 = v7;
        v55 = v4;
        v56 = sub_1D9C7E7EC();
        v58 = v57;
        v70 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange;
        sub_1D9B365E4(v50, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
        v59 = sub_1D9A0E224(v56, v58, &v76);

        *(v51 + 4) = v59;
        v4 = v55;
        v7 = v54;
        v10 = v53;
        v17 = v67;
        _os_log_impl(&dword_1D9962000, v48, v49, "Invalid threshold %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x1DA7405F0](v52, -1, -1);
        v60 = v51;
        v12 = v50;
        MEMORY[0x1DA7405F0](v60, -1, -1);

        (*v72)(v7, v4);
        v61 = v17;
        v62 = v70;
      }

      else
      {

        sub_1D9B365E4(v12, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
        (*v72)(v7, v4);
        v61 = v17;
        v62 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange;
      }

      sub_1D9B365E4(v61, v62);
      v19 = v74;
      v18 = v75;
      v20 = v71;
      goto LABEL_8;
    }

LABEL_42:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v4, qword_1EDD354D8);
    v36(v7, v47, v4);
    (*v72)(v10, v4);
    goto LABEL_45;
  }

  return 0;
}

uint64_t sub_1D9B3657C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B365E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9B36644()
{
  result = qword_1EDD2DE78;
  if (!qword_1EDD2DE78)
  {
    type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2DE78);
  }

  return result;
}

uint64_t sub_1D9B3669C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51308);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_1D9C7D8DC();
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9C7B80C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = *(v9 + 16);
  v42 = a1;
  v16(&v36 - v14, a1, v8, v13);
  v17 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v18 = sub_1D9C7B77C();
  v19 = [v17 initWithURL_];

  v20 = *(v9 + 8);
  v20(v15, v8);
  if (v19)
  {
    sub_1D9B36B94(v19, v5);
    v20(v42, v8);
    v21 = type metadata accessor for MLModelBundle();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v5, 1, v21))
    {
      v33 = v41;
      sub_1D99CC930(v5, v41, type metadata accessor for MLModelBundle);
      return (*(v22 + 56))(v33, 0, 1, v21);
    }

    sub_1D99A6AE0(v5, &qword_1ECB51308);
  }

  else
  {
    v38 = v6;
    v23 = v39;
    static Logger.argos.getter(v39);
    (v16)(v11, v42, v8);
    v24 = sub_1D9C7D8BC();
    v25 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v26 = 136315138;
      sub_1D99AB1D0();
      v27 = sub_1D9C7E7AC();
      v29 = v28;
      v20(v11, v8);
      v30 = sub_1D9A0E224(v27, v29, &v43);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1D9962000, v24, v25, "Cannot create bundle with %s", v26, 0xCu);
      v31 = v37;
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x1DA7405F0](v31, -1, -1);
      MEMORY[0x1DA7405F0](v26, -1, -1);

      v32 = v42;
    }

    else
    {

      v20(v42, v8);
      v32 = v11;
    }

    v20(v32, v8);
    (*(v40 + 8))(v23, v38);
  }

  v35 = type metadata accessor for MLModelBundle();
  return (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
}

uint64_t type metadata accessor for MLModelBundle()
{
  result = qword_1ECB53590;
  if (!qword_1ECB53590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B36B94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0);
  v148 = *(v4 - 8);
  v5 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v149 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v150 = &v142 - v7;
  v152 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v152);
  v151 = (&v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D9C7B80C();
  v155 = *(v9 - 8);
  v156 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v153 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v157 = &v142 - v12;
  v13 = sub_1D9C7D8DC();
  v14 = *(v13 - 8);
  v159 = v13;
  v160 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v142 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v142 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v154 = &v142 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v142 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v142 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v142 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v142 - v35;
  v37 = type metadata accessor for MLModelBundle();
  v161 = *(v37 - 8);
  v162 = v37;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v147 = &v142 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = a1;
  v40 = [a1 infoDictionary];
  if (!v40)
  {
    v71 = a2;
    static Logger.argos.getter(v36);
    v72 = sub_1D9C7D8BC();
    v73 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1D9962000, v72, v73, "Cannot access MLModels Meta bundle Info.plist", v74, 2u);
      MEMORY[0x1DA7405F0](v74, -1, -1);
    }

    (*(v160 + 8))(v36, v159);
    v70 = v71;
    return (*(v161 + 56))(v70, 1, 1, v162);
  }

  v158 = a2;
  v41 = v40;
  v42 = sub_1D9C7DB4C();

  if (!*(v42 + 16) || (v43 = sub_1D99ED894(0x4C45444F4D5F4956, 0xE800000000000000), (v44 & 1) == 0))
  {

    static Logger.argos.getter(v16);
    v66 = sub_1D9C7D8BC();
    v67 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v168[0] = v69;
      *v68 = 136315138;
      *(v68 + 4) = sub_1D9A0E224(0x4C45444F4D5F4956, 0xE800000000000000, v168);
      _os_log_impl(&dword_1D9962000, v66, v67, "The %s key is missing", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      MEMORY[0x1DA7405F0](v69, -1, -1);
      MEMORY[0x1DA7405F0](v68, -1, -1);
    }

    (*(v160 + 8))(v16, v159);
    goto LABEL_18;
  }

  sub_1D99A579C(*(v42 + 56) + 32 * v43, v168);

  sub_1D99A579C(v168, v167);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524A8);
  if (!swift_dynamicCast())
  {
    static Logger.argos.getter(v19);
    v76 = sub_1D9C7D8BC();
    v77 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v167[0] = v79;
      *v78 = 136315138;
      *(v78 + 4) = sub_1D9A0E224(0x4C45444F4D5F4956, 0xE800000000000000, v167);
      _os_log_impl(&dword_1D9962000, v76, v77, "The %s key has invalid value", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      MEMORY[0x1DA7405F0](v79, -1, -1);
      MEMORY[0x1DA7405F0](v78, -1, -1);
    }

    (*(v160 + 8))(v19, v159);
    __swift_destroy_boxed_opaque_existential_0Tm(v168);
LABEL_18:
    v70 = v158;
    return (*(v161 + 56))(v70, 1, 1, v162);
  }

  v45 = v165;
  if (!*(v165 + 16))
  {

    v47 = v158;
    goto LABEL_28;
  }

  v46 = sub_1D99ED894(1701667182, 0xE400000000000000);
  v47 = v158;
  if ((v48 & 1) == 0 || (sub_1D99A579C(*(v45 + 56) + 32 * v46, v167), (swift_dynamicCast() & 1) == 0))
  {

LABEL_28:
    static Logger.argos.getter(v33);
    v80 = sub_1D9C7D8BC();
    v81 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_1D9962000, v80, v81, "Missing file name in description", v82, 2u);
      MEMORY[0x1DA7405F0](v82, -1, -1);
    }

    (*(v160 + 8))(v33, v159);
    goto LABEL_31;
  }

  v49 = v166;
  v146 = v165;
  v50 = sub_1D9C7DC4C();
  v51 = sub_1D9C7DC4C();
  v52 = [v163 URLForResource:v50 withExtension:v51];

  if (!v52)
  {

    static Logger.argos.getter(v30);
    v86 = sub_1D9C7D8BC();
    v87 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1D9962000, v86, v87, "Cannot find model in the bundle", v88, 2u);
      MEMORY[0x1DA7405F0](v88, -1, -1);
    }

    (*(v160 + 8))(v30, v159);
LABEL_31:
    __swift_destroy_boxed_opaque_existential_0Tm(v168);
    v70 = v47;
    return (*(v161 + 56))(v70, 1, 1, v162);
  }

  v53 = v49;
  v54 = v47;
  v55 = v157;
  sub_1D9C7B7CC();

  if (!*(v45 + 16) || (v56 = sub_1D99ED894(1701605234, 0xE400000000000000), (v57 & 1) == 0) || (sub_1D99A579C(*(v45 + 56) + 32 * v56, v167), (swift_dynamicCast() & 1) == 0))
  {

    static Logger.argos.getter(v27);
    v83 = sub_1D9C7D8BC();
    v84 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_1D9962000, v83, v84, "Found model without role", v85, 2u);
      MEMORY[0x1DA7405F0](v85, -1, -1);
    }

    (*(v160 + 8))(v27, v159);
    goto LABEL_35;
  }

  v59 = v165;
  v58 = v166;

  v60 = sub_1D9AFE290();
  if (v60 == 9)
  {

    static Logger.argos.getter(v22);

    v61 = sub_1D9C7D8BC();
    v62 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v167[0] = v64;
      *v63 = 136315138;
      v65 = sub_1D9A0E224(v59, v58, v167);

      *(v63 + 4) = v65;
      _os_log_impl(&dword_1D9962000, v61, v62, "Found model with unknown role %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      MEMORY[0x1DA7405F0](v64, -1, -1);
      MEMORY[0x1DA7405F0](v63, -1, -1);
    }

    else
    {
    }

    (*(v160 + 8))(v22, v159);
LABEL_35:
    (*(v155 + 8))(v55, v156);
    __swift_destroy_boxed_opaque_existential_0Tm(v168);
    v70 = v54;
    return (*(v161 + 56))(v70, 1, 1, v162);
  }

  v89 = v60;

  if (!*(v45 + 16) || (v90 = sub_1D99ED894(0x6E65736572706572, 0xEE006E6F69746174), (v91 & 1) == 0) || (sub_1D99A579C(*(v45 + 56) + 32 * v90, v167), (swift_dynamicCast() & 1) == 0))
  {

LABEL_46:
    v93 = v154;
    static Logger.argos.getter(v154);
    v94 = sub_1D9C7D8BC();
    v95 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_1D9962000, v94, v95, "Found model with unknown representation", v96, 2u);
      MEMORY[0x1DA7405F0](v96, -1, -1);
    }

    (*(v160 + 8))(v93, v159);
    goto LABEL_35;
  }

  v145 = v89;
  v92 = sub_1D9C7E56C();

  if (!v92)
  {
    LODWORD(v160) = 0;
    goto LABEL_52;
  }

  if (v92 != 1)
  {

    v55 = v157;
    v54 = v158;
    goto LABEL_46;
  }

  LODWORD(v160) = 1;
LABEL_52:
  v164 = sub_1D9A443C0(MEMORY[0x1E69E7CC0]);
  if (!*(v45 + 16) || (v97 = sub_1D99ED894(0x737465737361, 0xE600000000000000), (v98 & 1) == 0) || (sub_1D99A579C(*(v45 + 56) + 32 * v97, v167), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51608), (swift_dynamicCast() & 1) == 0))
  {
LABEL_67:
    if (*(v45 + 16) && (v114 = sub_1D99ED894(0x61656869746C756DLL, 0xE900000000000064), (v115 & 1) != 0) && (sub_1D99A579C(*(v45 + 56) + 32 * v114, v167), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F50), (swift_dynamicCast() & 1) != 0))
    {
      v159 = sub_1D9BDCDE4(v165);
    }

    else
    {
      v159 = 0;
    }

    v143 = *(v155 + 16);
    v143(v153, v157, v156);
    if (*(v45 + 16) && (v116 = sub_1D99ED894(7238261, 0xE300000000000000), (v117 & 1) != 0) && (sub_1D99A579C(*(v45 + 56) + 32 * v116, v167), (swift_dynamicCast() & 1) != 0))
    {
      v118 = v166;
      v154 = v165;
    }

    else
    {
      v154 = 0;
      v118 = 0xE000000000000000;
    }

    v144 = v118;
    if (*(v45 + 16) && (v119 = sub_1D99ED894(0x44496C65646F6DLL, 0xE700000000000000), (v120 & 1) != 0))
    {
      sub_1D99A579C(*(v45 + 56) + 32 * v119, v167);

      if (swift_dynamicCast())
      {
        v121 = v165;
        v122 = v166;
LABEL_83:
        v123 = v164;
        v124 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
        v125 = v150;
        (*(*(v124 - 8) + 56))(v150, 1, 1, v124);
        v126 = v151;
        *v151 = v146;
        *(v126 + 8) = v53;
        v127 = v152;
        v128 = v156;
        v143((v126 + *(v152 + 20)), v153, v156);
        v129 = (v126 + v127[6]);
        v130 = v144;
        *v129 = v154;
        v129[1] = v130;
        v131 = (v126 + v127[7]);
        *v131 = v121;
        v131[1] = v122;
        *(v126 + v127[8]) = v145;
        v132 = v123;
        *(v126 + v127[9]) = v123;
        *(v126 + v127[12]) = v160;
        *(v126 + v127[10]) = v159;
        v133 = v149;
        sub_1D9B24898(v125, v149);
        v134 = (*(v148 + 80) + 16) & ~*(v148 + 80);
        v135 = swift_allocObject();
        sub_1D9B24908(v133, v135 + v134);
        *(v135 + ((v5 + v134 + 7) & 0xFFFFFFFFFFFFFFF8)) = v132;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB534C0);
        swift_allocObject();
        swift_bridgeObjectRetain_n();
        v136 = sub_1D9C1A964(2, sub_1D9B24978, v135);
        sub_1D99A6AE0(v125, &unk_1ECB518D0);
        v137 = *(v155 + 8);
        v137(v153, v128);
        v137(v157, v128);
        __swift_destroy_boxed_opaque_existential_0Tm(v168);
        *(v126 + v127[11]) = v136;
        v138 = v162;
        v139 = v147;
        sub_1D99CC930(v126, &v147[*(v162 + 20)], type metadata accessor for MLModelInfo);

        *v139 = v163;
        v140 = v139;
        v141 = v158;
        sub_1D99CC930(v140, v158, type metadata accessor for MLModelBundle);
        return (*(v161 + 56))(v141, 0, 1, v138);
      }
    }

    else
    {
    }

    v121 = 0;
    v122 = 0xE000000000000000;
    goto LABEL_83;
  }

  v99 = v165 + 64;
  v100 = 1 << *(v165 + 32);
  v101 = -1;
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  v102 = v101 & *(v165 + 64);
  v103 = (v100 + 63) >> 6;
  v154 = v165;

  for (i = 0; v102; result = )
  {
    v105 = i;
LABEL_63:
    v106 = __clz(__rbit64(v102));
    v102 &= v102 - 1;
    v107 = (v105 << 10) | (16 * v106);
    v108 = *(v154 + 56);
    v109 = (*(v154 + 48) + v107);
    v110 = v109[1];
    v159 = *v109;
    v111 = (v108 + v107);
    v112 = *v111;
    v113 = v111[1];

    sub_1D9B37E70(v159, v110, v112, v113, v146, v53, v163, &v164);
  }

  while (1)
  {
    v105 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v105 >= v103)
    {

      goto LABEL_67;
    }

    v102 = *(v99 + 8 * v105);
    ++i;
    if (v102)
    {
      i = v105;
      goto LABEL_63;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B37E70(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8)
{
  v66 = a8;
  v68 = a7;
  v70 = a5;
  v72 = a4;
  v12 = sub_1D9C7D8DC();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v65 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = sub_1D9C7B80C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v62 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v71 = &v62 - v32;

  v67 = a1;
  v33 = sub_1D99AAF30();
  if (v33 == 12)
  {
    static Logger.argos.getter(v14);

    v34 = sub_1D9C7D8BC();
    v35 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75 = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_1D9A0E224(v67, a2, &v75);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_1D9A0E224(v70, a6, &v75);
      _os_log_impl(&dword_1D9962000, v34, v35, "Unknown asset role %s for model %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v37, -1, -1);
      MEMORY[0x1DA7405F0](v36, -1, -1);
    }

    return (*(v73 + 8))(v14, v74);
  }

  else
  {
    v39 = v33;
    v67 = a6;
    v63 = a3;
    v40 = v72;
    sub_1D9C7B7EC();
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_1D99A6AE0(v23, &qword_1ECB51FD0);
      v41 = v69;
      static Logger.argos.getter(v69);

      v42 = v67;

      v43 = sub_1D9C7D8BC();
      v44 = sub_1D9C7E0AC();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v75 = v46;
        *v45 = 136315394;
        *(v45 + 4) = sub_1D9A0E224(v63, v40, &v75);
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_1D9A0E224(v70, v42, &v75);
        _os_log_impl(&dword_1D9962000, v43, v44, "Invalid name %s for model %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v46, -1, -1);
        MEMORY[0x1DA7405F0](v45, -1, -1);
      }

      return (*(v73 + 8))(v41, v74);
    }

    else
    {
      (*(v25 + 32))(v71, v23, v24);
      sub_1D9C7B78C();
      sub_1D9C7B76C();
      v47 = *(v25 + 8);
      v69 = v25 + 8;
      v62 = v47;
      v47(v30, v24);
      sub_1D9C7B72C();
      v48 = sub_1D9C7DC4C();

      v49 = sub_1D9C7DC4C();

      v50 = [v68 URLForResource:v48 withExtension:v49];

      if (v50)
      {
        sub_1D9C7B7CC();

        v51 = v65;
        (*(v25 + 16))(v65, v27, v24);
        (*(v25 + 56))(v51, 0, 1, v24);
        sub_1D9AC7E10(v51, v39);
        v52 = v62;
        v62(v27, v24);
        return v52(v71, v24);
      }

      else
      {
        v53 = v62;
        v54 = v24;
        v55 = v64;
        static Logger.argos.getter(v64);
        v56 = v72;

        v57 = v67;

        v58 = sub_1D9C7D8BC();
        v59 = sub_1D9C7E0AC();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v75 = v61;
          *v60 = 136315394;
          *(v60 + 4) = sub_1D9A0E224(v63, v56, &v75);
          *(v60 + 12) = 2080;
          *(v60 + 14) = sub_1D9A0E224(v70, v57, &v75);
          _os_log_impl(&dword_1D9962000, v58, v59, "Cannot locate resource %s for model %s", v60, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA7405F0](v61, -1, -1);
          MEMORY[0x1DA7405F0](v60, -1, -1);
        }

        (*(v73 + 8))(v55, v74);
        return v53(v71, v54);
      }
    }
  }
}

unint64_t sub_1D9B38674()
{
  result = sub_1D9B386F8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLModelInfo(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D9B386F8()
{
  result = qword_1ECB535A0;
  if (!qword_1ECB535A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB535A0);
  }

  return result;
}

uint64_t sub_1D9B38744(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D9B1A7B0(v2);
  }

  v3 = *(v2 + 2);
  v24[0] = (v2 + 32);
  v24[1] = v3;
  result = sub_1D9C7E79C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 80;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 48;
          if (*(v12 - 6) >= *v12)
          {
            break;
          }

          v14 = *v12;
          v15 = *(v12 + 2);
          v22 = *(v12 + 1);
          v23 = v15;
          v21 = v14;
          v16 = *(v12 - 2);
          *v12 = *v13;
          *(v12 + 1) = v16;
          *(v12 + 2) = *(v12 - 1);
          v17 = v23;
          v18 = v21;
          *(v12 - 2) = v22;
          *(v12 - 1) = v17;
          *v13 = v18;
          v12 -= 48;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 48;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D9C7DF5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v21 = v7 + 32;
    *(&v21 + 1) = v6;
    sub_1D9B3A230(&v21, v20, v24, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1D9B388B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53388);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9C8CDC0;
  v19 = 0x1000000000000000;
  S2Cell.init(cellId:)(&v19, &v20);
  v1 = v21;
  v2 = v22;
  v3 = v23;
  *(v0 + 32) = v20;
  *(v0 + 40) = v1;
  *(v0 + 42) = v2;
  *(v0 + 48) = v3;
  v19 = 0x3000000000000000;
  S2Cell.init(cellId:)(&v19, &v20);
  v4 = v21;
  v5 = v22;
  v6 = v23;
  *(v0 + 56) = v20;
  *(v0 + 64) = v4;
  *(v0 + 66) = v5;
  *(v0 + 72) = v6;
  v19 = 0x5000000000000000;
  S2Cell.init(cellId:)(&v19, &v20);
  v7 = v21;
  v8 = v22;
  v9 = v23;
  *(v0 + 80) = v20;
  *(v0 + 88) = v7;
  *(v0 + 90) = v8;
  *(v0 + 96) = v9;
  v19 = 0x7000000000000000;
  S2Cell.init(cellId:)(&v19, &v20);
  v10 = v21;
  v11 = v22;
  v12 = v23;
  *(v0 + 104) = v20;
  *(v0 + 112) = v10;
  *(v0 + 114) = v11;
  *(v0 + 120) = v12;
  v19 = 0x9000000000000000;
  S2Cell.init(cellId:)(&v19, &v20);
  v13 = v21;
  v14 = v22;
  v15 = v23;
  *(v0 + 128) = v20;
  *(v0 + 136) = v13;
  *(v0 + 138) = v14;
  *(v0 + 144) = v15;
  v19 = 0xB000000000000000;
  S2Cell.init(cellId:)(&v19, &v20);
  v16 = v21;
  v17 = v22;
  v18 = v23;
  *(v0 + 152) = v20;
  *(v0 + 160) = v16;
  *(v0 + 162) = v17;
  *(v0 + 168) = v18;
  off_1ECB535A8 = v0;
}

uint64_t sub_1D9B38A54(uint64_t result)
{
  v2 = 30;
  if (result < 30)
  {
    v2 = result;
  }

  *(v1 + 16) = v2 & ~(v2 >> 63);
  return result;
}

uint64_t *(*sub_1D9B38A6C(void *a1))(uint64_t *result)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_1D9B38A94;
}

uint64_t *sub_1D9B38A94(uint64_t *result)
{
  v1 = *result;
  if (*result >= 30)
  {
    v1 = 30;
  }

  *(result[1] + 16) = v1 & ~(v1 >> 63);
  return result;
}

uint64_t sub_1D9B38AB8(uint64_t result)
{
  v2 = 30;
  if (result < 30)
  {
    v2 = result;
  }

  *(v1 + 24) = v2 & ~(v2 >> 63);
  return result;
}

uint64_t *(*sub_1D9B38AD0(void *a1))(uint64_t *result)
{
  *a1 = *(v1 + 24);
  a1[1] = v1;
  return sub_1D9B38AF8;
}

uint64_t *sub_1D9B38AF8(uint64_t *result)
{
  v1 = *result;
  if (*result >= 30)
  {
    v1 = 30;
  }

  *(result[1] + 24) = v1 & ~(v1 >> 63);
  return result;
}

uint64_t sub_1D9B38B1C(uint64_t result)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  if (v2 <= 1)
  {
    v2 = 1;
  }

  *(v1 + 32) = v2;
  return result;
}

uint64_t *(*sub_1D9B38B38(void *a1))(uint64_t *result)
{
  *a1 = *(v1 + 32);
  a1[1] = v1;
  return sub_1D9B38B60;
}

uint64_t *sub_1D9B38B60(uint64_t *result)
{
  v1 = *result;
  if (*result >= 3)
  {
    v1 = 3;
  }

  if (v1 <= 1)
  {
    v1 = 1;
  }

  *(result[1] + 32) = v1;
  return result;
}

void *(*sub_1D9B38B90(void *a1))(void *result)
{
  *a1 = *(v1 + 40);
  a1[1] = v1;
  return sub_1D9B38BB8;
}

double S2RegionCoverer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9C95BA0;
  *(v0 + 32) = xmmword_1D9C95BB0;
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 88) = 0;
  *(v0 + 96) = v2;
  *(v0 + 104) = v2;
  return result;
}

double S2RegionCoverer.init()()
{
  *(v0 + 16) = xmmword_1D9C95BA0;
  *(v0 + 32) = xmmword_1D9C95BB0;
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 88) = 0;
  *(v0 + 96) = v2;
  *(v0 + 104) = v2;
  return result;
}

uint64_t sub_1D9B38CB8(uint64_t a1, char a2)
{
  *(v2 + 48) = a2;
  sub_1D9B3989C(a1);

  S2CellUnion.normalize()();
  v3 = S2CellUnion.denormalize(minLevel:levelMod:)(*(v2 + 16), *(v2 + 32));

  return v3;
}

BOOL sub_1D9B38D3C@<W0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  *(v3 + 48) = a2;
  sub_1D9B3989C(a1);
  *a3 = *(v3 + 96);

  return S2CellUnion.normalize()();
}

uint64_t sub_1D9B38D78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = *(a1 + 10);
  v9 = a1[2];
  swift_beginAccess();
  sub_1D9B3A098(v3 + 56, &v24);
  if (!v26)
  {
    result = sub_1D9B39C0C(&v24);
LABEL_7:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  sub_1D9979B9C(&v24, v27);
  v10 = v28;
  v11 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  *&v24 = v5;
  BYTE8(v24) = v6;
  BYTE9(v24) = v7;
  BYTE10(v24) = v8;
  v25 = v9;
  result = (*(v11 + 32))(&v24, v10, v11);
  if ((result & 1) == 0)
  {
    result = __swift_destroy_boxed_opaque_existential_0Tm(v27);
    goto LABEL_7;
  }

  if (*(v3 + 16) > v7)
  {
    v13 = 0;
    v14 = v5;
LABEL_19:
    *a2 = v14;
    *(a2 + 8) = v6 | (v7 << 8) | (v8 << 16);
    *(a2 + 16) = v9;
    *(a2 + 24) = v13;
    *(a2 + 32) = MEMORY[0x1E69E7CC0];

    return __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  if (*(v3 + 48) != 1)
  {
    v17 = *(v3 + 32);
    v18 = __OFADD__(v7, v17);
    v19 = v7 + v17;
    if (!v18)
    {
      v14 = v5;
      if (*(v3 + 24) < v19 || (v20 = v28, v21 = v29, __swift_project_boxed_opaque_existential_1(v27, v28), *&v24 = v5, BYTE8(v24) = v6, BYTE9(v24) = v7, BYTE10(v24) = v8, v25 = v9, ((*(v21 + 24))(&v24, v20, v21) & 1) != 0))
      {
        v13 = 1;
        goto LABEL_19;
      }

LABEL_18:
      v13 = 0;
      goto LABEL_19;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v15 = v28;
  v16 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  *&v24 = v5;
  BYTE8(v24) = v6;
  BYTE9(v24) = v7;
  BYTE10(v24) = v8;
  v25 = v9;
  result = (*(v16 + 24))(&v24, v15, v16);
  if (result)
  {
    v13 = 1;
    v14 = v5;
    goto LABEL_19;
  }

  v22 = *(v3 + 32);
  v18 = __OFADD__(v7, v22);
  v23 = v7 + v22;
  if (v18)
  {
    goto LABEL_23;
  }

  v14 = v5;
  if (*(v3 + 24) >= v23)
  {
    goto LABEL_18;
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t *sub_1D9B38FE0(uint64_t *result)
{
  v6 = result[2];
  if (!v6)
  {
    return result;
  }

  v8 = *result;
  v7 = result[1];
  v9 = result[3];
  v10 = result[4];
  v49 = *result;
  v50 = v7;
  v51 = BYTE2(v7);
  v52 = v6;
  v53 = v9 & 1;
  v54 = v10;
  if (v9)
  {
    v11 = *(v1 + 96);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 96) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1D9AFAA28(0, *(v11 + 2) + 1, 1, v11);
      *(v1 + 96) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1D9AFAA28((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    *&v11[8 * v14 + 32] = v8;
    *(v1 + 96) = v11;
  }

  if (*(v1 + 16) <= SBYTE1(v7))
  {
    v15 = *(v1 + 32);
  }

  else
  {
    v15 = 1;
  }

  v48 = v15;
  v42 = v8;
  LOWORD(v43) = v7;
  BYTE2(v43) = BYTE2(v7);
  v44 = v6;
  sub_1D9B3A14C(v8, v7, v6);

  v16 = sub_1D9B39440(&v49, &v42, &v48);

  v17 = v54;
  v18 = *(v54 + 2);
  if (!v18)
  {
    goto LABEL_33;
  }

  v19 = *(v1 + 32);
  v20 = 2 * v19;
  if (*(v1 + 48))
  {
    if (v19 + 0x4000000000000000 >= 0)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v21 = 0x4000000000000000;
  if (v19 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v20 < -64 || v20 > 64)
  {
    goto LABEL_20;
  }

  if (v20 < 0)
  {
    goto LABEL_54;
  }

  if (v20 == 64)
  {
    goto LABEL_20;
  }

  if (v16 == 1 << (v20 & 0x3E))
  {
LABEL_25:
    LOBYTE(v21) = HIBYTE(v50);
    if (*(v1 + 16) > SHIBYTE(v50))
    {
      goto LABEL_26;
    }

LABEL_41:
    v33 = v49;
    v34 = v52;
    v35 = v50 | (v21 << 8) | (v51 << 16);
    v42 = v49;
    v43 = v35;
    v44 = v52;
    v45 = 1;
    v46 = v17;

    sub_1D9B38FE0(&v42);
    sub_1D9B3A108(v33, v35, v34);
    goto LABEL_33;
  }

  while (1)
  {
LABEL_26:
    v2 = HIBYTE(v50);
    if ((v19 - 33) < 0xFFFFFFFFFFFFFFBFLL)
    {
LABEL_27:
      v22 = v16;
      goto LABEL_28;
    }

    v21 = SHIBYTE(v50);
    if (v19 < 0)
    {
      break;
    }

    if (v19 == 32)
    {
      goto LABEL_27;
    }

    v20 &= 0x3Eu;
    v19 = SHIBYTE(v50) << v20;
    v31 = __OFADD__(v19, v18);
    v18 += v19;
    if (!v31)
    {
      v32 = v18 << v20;
      v31 = __OFADD__(v32, v16);
      v22 = v32 + v16;
      if (!v31)
      {
        goto LABEL_28;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    if (v20 == -64)
    {
LABEL_20:
      if (!v16)
      {
        goto LABEL_25;
      }
    }

    else if (v16 == 1uLL >> (-v20 & 0x3E))
    {
      goto LABEL_25;
    }
  }

LABEL_45:
  v37 = v19 == -32;
  LOBYTE(v19) = 63;
  if (!v37)
  {
    LODWORD(v19) = -v20 & 0x3E;
  }

  v19 = v21 >> v19;
  v31 = __OFADD__(v19, v18);
  v18 += v19;
  if (v31)
  {
    goto LABEL_53;
  }

  v38 = (v20 != -64) & __CFADD__(v20, 64);
  v39 = v18 >> (-v20 & 0x3E);
  v40 = v18 >> 63;
  if (v38)
  {
    v40 = v39;
  }

  v31 = __OFADD__(v40, v16);
  v22 = v40 + v16;
  if (v31)
  {
    goto LABEL_40;
  }

LABEL_28:
  v23 = -v22;
  if (__OFSUB__(0, v22))
  {
    __break(1u);
  }

  else
  {
    v4 = v49;
    v5 = v50;
    v3 = v51;
    v16 = v52;
    v41 = v53;
    swift_beginAccess();
    v10 = *(v1 + 104);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 104) = v10;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  v10 = sub_1D9AFB2D4(0, *(v10 + 2) + 1, 1, v10);
  *(v1 + 104) = v10;
LABEL_30:
  v26 = *(v10 + 2);
  v25 = *(v10 + 3);
  v27 = v26 + 1;
  if (v26 >= v25 >> 1)
  {
    v36 = sub_1D9AFB2D4((v25 > 1), v26 + 1, 1, v10);
    v27 = v26 + 1;
    v10 = v36;
  }

  *(v10 + 2) = v27;
  v28 = &v10[48 * v26];
  *(v28 + 4) = v23;
  *(v28 + 5) = v4;
  v28[48] = v5;
  v28[49] = v2;
  v28[50] = v3;
  v29 = v47[11];
  *(v28 + 51) = *&v47[7];
  v28[55] = v29;
  *(v28 + 7) = v16;
  v28[64] = v41;
  v30 = *v47;
  *(v28 + 17) = *&v47[3];
  *(v28 + 65) = v30;
  *(v28 + 9) = v17;
  *(v1 + 104) = v10;
LABEL_33:
}

uint64_t sub_1D9B39440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  v9 = a2[2];
  swift_beginAccess();
  sub_1D9B3A098(v3 + 56, &v42);
  if (!v44)
  {
    sub_1D9B39C0C(&v42);
    return 0;
  }

  result = sub_1D9979B9C(&v42, v46);
  if (__OFSUB__(*a3, 1))
  {
    goto LABEL_25;
  }

  v33 = a3;
  --*a3;
  *&v42 = v5;
  BYTE8(v42) = v6;
  BYTE9(v42) = v7;
  BYTE10(v42) = v8;
  v43 = v9;
  v11 = S2Cell.subdivide()();
  v12 = *(v11 + 16);
  if (!v12)
  {
    v35 = 0;
LABEL_22:

    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    return v35;
  }

  v35 = 0;
  v13 = (v11 + 48);
  v14 = a3;
  while (1)
  {
    v15 = *(v13 - 2);
    v16 = *(v13 - 8);
    v17 = *(v13 - 7);
    v18 = *(v13 - 6);
    v19 = *v13;
    if (*v14 < 1)
    {
      v37 = *(v13 - 2);
      v38 = v16;
      v39 = v17;
      v40 = v18;
      v41 = v19;

      sub_1D9B38D78(&v37, &v42);

      v24 = v43;
      if (!v43)
      {
        goto LABEL_7;
      }

      v36 = v12;
      v26 = *(&v42 + 1);
      v25 = v42;
      v27 = v44;
      v28 = v45;
      v29 = *(a1 + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1D9AFB1B4(0, *(v29 + 2) + 1, 1, v29);
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1D9AFB1B4((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      *(v32 + 4) = v25;
      *(v32 + 20) = v26;
      v32[42] = BYTE2(v26);
      *(v32 + 6) = v24;
      v32[56] = v27 & 1;
      *(v32 + 8) = v28;
      result = sub_1D9B3A108(v25, v26, v24);
      *(a1 + 32) = v29;
      if (v27)
      {
        if (__OFADD__(v35, 1))
        {
          goto LABEL_24;
        }

        ++v35;
      }

      goto LABEL_6;
    }

    v36 = v12;
    v21 = v47;
    v20 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    *&v42 = v15;
    BYTE8(v42) = v16;
    BYTE9(v42) = v17;
    BYTE10(v42) = v18;
    v43 = v19;
    v22 = *(v20 + 32);

    if (v22(&v42, v21, v20))
    {
      break;
    }

    v14 = v33;
LABEL_6:
    v12 = v36;
LABEL_7:
    v13 += 3;
    if (!--v12)
    {
      goto LABEL_22;
    }
  }

  *&v42 = v15;
  BYTE8(v42) = v16;
  BYTE9(v42) = v17;
  BYTE10(v42) = v18;
  v43 = v19;
  v14 = v33;
  v23 = sub_1D9B39440(a1, &v42, v33);

  v12 = v36;
  if (!__OFADD__(v35, v23))
  {
    v35 += v23;
    goto LABEL_7;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D9B39764()
{
  swift_beginAccess();
  sub_1D9B3A098(v0 + 56, &v17);
  v1 = v20;
  result = sub_1D9B39C0C(&v17);
  if (v1)
  {
    if (qword_1ECB50C48 != -1)
    {
      result = swift_once();
    }

    if (*(off_1ECB535A8 + 2) < 6uLL)
    {
      __break(1u);
    }

    else
    {
      v3 = (off_1ECB535A8 + 48);
      v4 = 6;
      do
      {
        v5 = *(v3 - 2);
        v6 = *(v3 - 4);
        v7 = *(v3 - 6);
        v8 = *v3;
        v3 += 3;
        v12 = v5;
        LOWORD(v13) = v6;
        BYTE2(v13) = v7;
        v14 = v8;

        sub_1D9B38D78(&v12, &v17);

        v9 = v17;
        v10 = v18;
        v11 = v19;
        v12 = v17;
        v13 = v18;
        v14 = v19;
        v15 = v20;
        v16 = v21;
        sub_1D9B38FE0(&v12);
        result = sub_1D9B3A108(v9, v10, v11);
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_1D9B3989C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(*(v1 + 104) + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*(*(v1 + 96) + 16))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  sub_1D99A17C8(a1, &v28);
  swift_beginAccess();
  sub_1D9B3A190(&v28, v1 + 56);
  swift_endAccess();
  sub_1D9B39764();
  swift_beginAccess();
  sub_1D9B38744((v1 + 104));
  swift_endAccess();
  v4 = *(v1 + 104);
  v5 = *(v4 + 2);
  if (v5)
  {
    while (*(v1 + 48) != 1 || *(*(v1 + 96) + 16) < *(v1 + 40))
    {
      v6 = *(v4 + 5);
      v7 = v4[48];
      v8 = v4[49];
      v9 = v4[50];
      v10 = *(v4 + 9);
      v27 = *(v4 + 7);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 104) = v4;
      if (!isUniquelyReferenced_nonNull_native || (v5 - 1) > *(v4 + 3) >> 1)
      {
        v4 = sub_1D9AFB2D4(isUniquelyReferenced_nonNull_native, v5, 1, v4);
        *(v1 + 104) = v4;
      }

      sub_1D9B3A200((v4 + 32));
      v12 = *(v4 + 2);
      result = memmove(v4 + 32, v4 + 80, 48 * v12 - 48);
      v13 = v12 - 1;
      *(v4 + 2) = v12 - 1;
      *(v1 + 104) = v4;
      v14 = *(v10 + 16);
      if (*(v1 + 16) > v8)
      {
        goto LABEL_12;
      }

      if (v14 == 1)
      {
LABEL_15:
        v15 = 0;
        v16 = (v10 + 64);
        while (v15 < *(v10 + 16))
        {
          ++v15;
          v17 = *v16;
          v18 = *(v16 - 8);
          v19 = *(v16 - 2);
          v21 = *(v16 - 24) | (*(v16 - 22) << 16) | (*(v16 - 23) << 8);
          *&v28 = *(v16 - 4);
          v20 = v28;
          *(&v28 + 1) = v21;
          *&v29 = v19;
          *(&v29 + 1) = v18;
          v30 = v17;

          sub_1D9B38FE0(&v28);
          result = sub_1D9B3A108(v20, v21, v19);
          v16 += 5;
          if (v14 == v15)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v22 = *(*(v1 + 96) + 16);
      if (*(v1 + 48))
      {
        v13 = 0;
      }

      v23 = __OFADD__(v22, v13);
      v24 = v22 + v13;
      if (v23)
      {
        goto LABEL_28;
      }

      v23 = __OFADD__(v24, v14);
      v25 = v24 + v14;
      if (v23)
      {
        goto LABEL_29;
      }

      if (*(v1 + 40) >= v25)
      {
LABEL_12:
        if (v14)
        {
          goto LABEL_15;
        }
      }

      else if ((*(v1 + 48) & 1) == 0)
      {
        v26 = v7 & 0xFFFFFFFFFFFF00FFLL | (v8 << 8);
        *&v28 = v6;
        *(&v28 + 1) = v26 | (v9 << 16);
        *&v29 = v27;
        *(&v29 + 1) = 1;
        v30 = v10;

        sub_1D9B38FE0(&v28);
        sub_1D9B3A108(v6, v26 | (v9 << 16), v27);
      }

LABEL_5:

      v4 = *(v1 + 104);
      v5 = *(v4 + 2);
      if (!v5)
      {
        break;
      }
    }
  }

  *(v1 + 104) = MEMORY[0x1E69E7CC0];

  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  swift_beginAccess();
  sub_1D9B3A190(&v28, v1 + 56);
  return swift_endAccess();
}

uint64_t S2RegionCoverer.deinit()
{
  sub_1D9B39C0C(v0 + 56);

  return v0;
}

uint64_t sub_1D9B39C0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB535B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t S2RegionCoverer.__deallocating_deinit()
{
  sub_1D9B39C0C(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D9B39F9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9B39FE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9B3A044()
{
  result = qword_1ECB535B8;
  if (!qword_1ECB535B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB535B8);
  }

  return result;
}

uint64_t sub_1D9B3A098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB535B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B3A108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D9B3A14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D9B3A190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB535B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B3A230(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v97 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D99E8FDC(v7);
      v7 = result;
    }

    v89 = (v7 + 16);
    v90 = *(v7 + 16);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = (v7 + 16 * v90);
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1D9B3A7EC((*a3 + 48 * *v91), (*a3 + 48 * *v93), (*a3 + 48 * v94), v98);
        if (v4)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        v91[1] = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 48 * v6);
      v10 = 48 * v8;
      v11 = (*a3 + 48 * v8);
      v14 = *v11;
      v13 = v11 + 12;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 6;
        v18 = (v12 < v9) ^ (v16 >= v17);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 48 * v6 - 48;
        v20 = v6;
        v21 = v8;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v10);
            v23 = (v29 + v19);
            v24 = *v22;
            v25 = v22[1];
            v26 = v22[2];
            v28 = v23[1];
            v27 = v23[2];
            *v22 = *v23;
            v22[1] = v28;
            v22[2] = v27;
            v23[1] = v25;
            v23[2] = v26;
            *v23 = v24;
          }

          ++v21;
          v19 -= 48;
          v10 += 48;
        }

        while (v21 < v20);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v42 = *(v7 + 16);
    v41 = *(v7 + 24);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1D99E8FF0((v41 > 1), v42 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v43;
    v44 = v7 + 32;
    v45 = (v7 + 32 + 16 * v42);
    *v45 = v8;
    v45[1] = v6;
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v7 + 32);
          v48 = *(v7 + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = (v7 + 16 * v43);
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = (v44 + 16 * v46);
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = (v7 + 16 * v43);
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = (v44 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = (v44 + 16 * (v46 - 1));
        v85 = *v84;
        v86 = (v44 + 16 * v46);
        v87 = v86[1];
        sub_1D9B3A7EC((*a3 + 48 * *v84), (*a3 + 48 * *v86), (*a3 + 48 * v87), v98);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *(v7 + 16);
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        result = memmove((v44 + 16 * v46), v86 + 2, 16 * (v88 - 1 - v46));
        *(v7 + 16) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = v44 + 16 * v43;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = (v7 + 16 * v43);
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = (v44 + 16 * v46);
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v96;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 48 * v6;
  v32 = v8 - v6;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = (v34 - 48);
    if (*(v34 - 48) >= *v34)
    {
LABEL_29:
      ++v6;
      v31 += 48;
      --v32;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 16);
    v36 = *(v34 + 32);
    v38 = *v34;
    v39 = *(v34 - 32);
    *v34 = *v35;
    *(v34 + 16) = v39;
    *(v34 + 32) = *(v34 - 16);
    *v35 = v38;
    *(v34 - 32) = v37;
    v34 -= 48;
    v35[2] = v36;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D9B3A7EC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 48;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 48;
    v5 -= 48;
    v18 = v12;
    do
    {
      v19 = v5 + 48;
      v20 = *(v18 - 6);
      v18 -= 48;
      if (*v17 < v20)
      {
        if (v19 != v6)
        {
          v23 = *v17;
          v24 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v24;
          *v5 = v23;
        }

        if (v12 <= v4 || (v6 -= 48, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v12)
      {
        v21 = *v18;
        v22 = *(v18 + 2);
        *(v5 + 1) = *(v18 + 1);
        *(v5 + 2) = v22;
        *v5 = v21;
      }

      v5 -= 48;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v25 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v26 = (v25 >> 3) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[48 * v26])
  {
    memmove(v6, v4, 48 * v26);
  }

  return 1;
}

uint64_t sub_1D9B3AA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9B3AA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12VisualLookUp14ObjectDetectorC11DebugResultVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t _s14DetectedResultVMa()
{
  result = qword_1EDD34230;
  if (!qword_1EDD34230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9B3AB74()
{
  sub_1D9B3AC0C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D9B3AC0C()
{
  if (!qword_1EDD35430)
  {
    sub_1D9C7B93C();
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD35430);
    }
  }
}

uint64_t sub_1D9B3AC64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9C85E90;
  v3 = *v0;
  v4 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = MEMORY[0x1E69E6530];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  v5 = _s14DetectedResultVMa();
  v6 = NormalizedRect.loggingDescription.getter();
  v8 = v7;
  *(v2 + 96) = MEMORY[0x1E69E6158];
  v9 = sub_1D99D2A60();
  *(v2 + 104) = v9;
  *(v2 + 72) = v6;
  *(v2 + 80) = v8;
  v10 = (v1 + *(v5 + 28));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  sub_1D9C7E40C();
  MEMORY[0x1DA73DF90](0xD00000000000001FLL, 0x80000001D9CA5340);
  MEMORY[0x1DA73DF90](v13, v14);
  MEMORY[0x1DA73DF90](0xD000000000000014, 0x80000001D9CA5360);
  MEMORY[0x1DA73DF90](v11, v12);
  *(v2 + 136) = MEMORY[0x1E69E6158];
  *(v2 + 144) = v9;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0xE000000000000000;
  v15 = *(v1 + *(v5 + 32));
  v16 = MEMORY[0x1E69E64A8];
  *(v2 + 176) = MEMORY[0x1E69E6448];
  *(v2 + 184) = v16;
  *(v2 + 152) = v15;

  return sub_1D9C7DCAC();
}

uint64_t sub_1D9B3AE38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB535D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B3B638();
  sub_1D9C7E96C();
  LOBYTE(v19) = 0;
  sub_1D9C7E72C();
  if (!v2)
  {
    v9 = _s14DetectedResultVMa();
    LOBYTE(v19) = 1;
    sub_1D9C7B93C();
    sub_1D9B3B6F4(&qword_1EDD2C310);
    sub_1D9C7E6DC();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v19 = *v10;
    v20 = v11;
    v18 = 2;
    sub_1D99EA188();
    sub_1D9C7E74C();
    v12 = (v3 + *(v9 + 28));
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    *&v19 = *v12;
    *(&v19 + 1) = v13;
    *&v20 = v14;
    *(&v20 + 1) = v15;
    v18 = 3;
    sub_1D99FEF30();

    sub_1D9C7E74C();

    LOBYTE(v19) = 4;
    sub_1D9C7E71C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D9B3B0CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB535C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB535D8);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = _s14DetectedResultVMa();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B3B638();
  v26 = v9;
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v13 = v24;
  v14 = v25;
  LOBYTE(v28) = 0;
  *v12 = sub_1D9C7E63C();
  sub_1D9C7B93C();
  LOBYTE(v28) = 1;
  sub_1D9B3B6F4(&unk_1EDD2C300);
  sub_1D9C7E5EC();
  sub_1D9B3B738(v6, v12 + v10[5]);
  v27 = 2;
  sub_1D99EA7B8();
  sub_1D9C7E65C();
  v15 = (v12 + v10[6]);
  v16 = v29;
  *v15 = v28;
  v15[1] = v16;
  v27 = 3;
  sub_1D99FF080();
  sub_1D9C7E65C();
  v17 = v29;
  v18 = (v12 + v10[7]);
  *v18 = v28;
  v18[1] = v17;
  LOBYTE(v28) = 4;
  sub_1D9C7E62C();
  v20 = v19;
  (*(v13 + 8))(v26, v14);
  *(v12 + v10[8]) = v20;
  sub_1D9B3B7A8(v12, v23);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1D9B3B80C(v12);
}

uint64_t sub_1D9B3B4C4()
{
  v1 = *v0;
  v2 = 0x6E6F697469736F70;
  v3 = 0x676E69646E756F62;
  v4 = 0x79676F6C6F746E6FLL;
  if (v1 != 3)
  {
    v4 = 0x65726F6373;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x44497463656A626FLL;
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

uint64_t sub_1D9B3B564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9B3BA28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9B3B58C(uint64_t a1)
{
  v2 = sub_1D9B3B638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9B3B5C8(uint64_t a1)
{
  v2 = sub_1D9B3B638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9B3B638()
{
  result = qword_1EDD2BDF8;
  if (!qword_1EDD2BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BDF8);
  }

  return result;
}

uint64_t sub_1D9B3B68C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB535C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9B3B6F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D9C7B93C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9B3B738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB535C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B3B7A8(uint64_t a1, uint64_t a2)
{
  v4 = _s14DetectedResultVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B3B80C(uint64_t a1)
{
  v2 = _s14DetectedResultVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9B3B878(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9B3B8C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9B3B924()
{
  result = qword_1ECB535E8;
  if (!qword_1ECB535E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB535E8);
  }

  return result;
}

unint64_t sub_1D9B3B97C()
{
  result = qword_1EDD2BDE0;
  if (!qword_1EDD2BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BDE0);
  }

  return result;
}

unint64_t sub_1D9B3B9D4()
{
  result = qword_1EDD2BDE8;
  if (!qword_1EDD2BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BDE8);
  }

  return result;
}

uint64_t sub_1D9B3BA28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44497463656A626FLL && a2 == 0xE800000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79676F6C6F746E6FLL && a2 == 0xE800000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D9B3BBD8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1D9C7E35C();
  if (result == 1 << *(a1 + 32))
  {
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v5 = sub_1D9B3D830(&v14, result, *(a1 + 36), 0, a1);
    *&v16 = v5;
    *(&v16 + 1) = v6;
    *&v17 = v7;
    *(&v17 + 1) = v8;
    v9 = v14;
    v10 = v15;
    v18[0] = v14;
    v18[1] = v15;
    *&v19 = v5;
    *(&v19 + 1) = v6;
    *&v20 = v7;
    *(&v20 + 1) = v8;
    v11 = v14;
    v12 = v15;
    v13 = v20;
    a2[2] = v19;
    a2[3] = v13;
    *a2 = v11;
    a2[1] = v12;
    v21[0] = v9;
    v21[1] = v10;
    v22 = v5;
    v23 = v6;
    v24 = v7;
    v25 = v8;

    sub_1D99AB100(v18, v26, &qword_1ECB535F0);
    sub_1D9B3D8E8(v21);
    v26[0] = v14;
    v26[1] = v15;
    v26[2] = v16;
    v26[3] = v17;
    return sub_1D9B3D8E8(v26);
  }

  return result;
}

uint64_t sub_1D9B3BD0C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v159 - v9;
  v185 = sub_1D9C7D8DC();
  v188 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v182 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v179 = &v159 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v176 = &v159 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v174 = &v159 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v178 = &v159 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v175 = &v159 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v173 = &v159 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v172 = &v159 - v25;
  v26 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v181 = (&v159 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v159 - v30);
  v32 = a2[9];
  v33 = a2[7];
  v218 = a2[8];
  v219 = v32;
  v34 = a2[9];
  v220 = a2[10];
  v35 = a2[5];
  v36 = a2[3];
  v214 = a2[4];
  v215 = v35;
  v37 = a2[5];
  v38 = a2[7];
  v216 = a2[6];
  v217 = v38;
  v39 = a2[1];
  v210 = *a2;
  v211 = v39;
  v40 = a2[3];
  v42 = *a2;
  v41 = a2[1];
  v212 = a2[2];
  v213 = v40;
  v206 = v218;
  v207 = v34;
  v208 = a2[10];
  v202 = v214;
  v203 = v37;
  v204 = v216;
  v205 = v33;
  v198 = v42;
  v199 = v41;
  v221 = *(a2 + 22);
  v209 = *(a2 + 22);
  v200 = v212;
  v201 = v36;
  v43 = sub_1D9B67A68();
  v44 = *(v43 + 16);
  if (v44)
  {
    v169 = a3;
    v183 = v10;
    result = type metadata accessor for ServerSearchResult();
    v46 = 0;
    v171 = 0;
    v47 = *(result + 20);
    v48 = v43 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v184 = a1;
    v49 = *(a1 + v47);
    v177 = (v188 + 8);
    v186 = MEMORY[0x1E69E7CC0];
    *&v50 = 136315394;
    v168 = v50;
    *&v50 = 136315138;
    v167 = v50;
    v189 = v48;
    v187 = v43;
    while (1)
    {
      if (v46 >= *(v43 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1D9B3D7C8(v48 + *(v27 + 72) * v46, v31, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (*(v49 + 16))
      {
        v51 = sub_1D99EE1AC(*v31, v31[1], v31[2], v31[3]);
        if (v52)
        {
          if (*(v49 + 16))
          {
            v53 = *(*(v49 + 56) + 32 * v51);
            v55 = v31[2];
            v54 = v31[3];
            v57 = *v31;
            v56 = v31[1];

            v58 = sub_1D99EE1AC(v57, v56, v55, v54);
            if ((v59 & 1) != 0 && (v188 = v53, *(v49 + 16)))
            {
              v60 = v44;
              v61 = *(*(v49 + 56) + 32 * v58 + 8);
              v63 = v31[2];
              v62 = v31[3];
              v65 = *v31;
              v64 = v31[1];

              v66 = sub_1D99EE1AC(v65, v64, v63, v62);
              v48 = v189;
              if ((v67 & 1) != 0 && (v180 = v61, *(v49 + 16)))
              {
                v69 = v31[2];
                v68 = v31[3];
                v71 = *v31;
                v70 = v31[1];
                v170 = *(*(v49 + 56) + 32 * v66 + 16);

                v72 = sub_1D99EE1AC(v71, v70, v69, v68);
                v44 = v60;
                if (v73)
                {
                  v165 = a4;
                  v74 = *(*(v49 + 56) + 32 * v72 + 24);

                  v75 = sub_1D9B67DFC();
                  v43 = v187;
                  if (*(v75 + 16))
                  {
                    v76 = *(v75 + 32);

                    v197 = v76;
                    if (*(v74 + 16))
                    {
                      v77 = *(v74 + 32);

                      LODWORD(v164) = v77;
                      v78 = sub_1D9A15C94(v77);
                      v80 = v79;
                      LODWORD(v166) = v76;
                      if (v78 == sub_1D9A15C94(v76) && v80 == v81)
                      {

LABEL_26:
                        v92 = v175;
                        static Logger.argos.getter(v175);
                        sub_1D9A3E0E0(v178);
                        v93 = v185;
                        v166 = *v177;
                        v166(v92, v185);
                        v94 = sub_1D9C7D8BC();
                        v95 = sub_1D9C7E09C();
                        if (os_log_type_enabled(v94, v95))
                        {
                          v96 = swift_slowAlloc();
                          v162 = v96;
                          v163 = swift_slowAlloc();
                          *&v198 = v163;
                          *v96 = v167;
                          v97 = sub_1D9A15C94(v164);
                          LODWORD(v164) = v95;
                          v99 = sub_1D9A0E224(v97, v98, &v198);

                          v100 = v162;
                          *(v162 + 4) = v99;
                          _os_log_impl(&dword_1D9962000, v94, v164, "server result visual domain [%s] == client visual domain", v100, 0xCu);
                          v101 = v163;
                          __swift_destroy_boxed_opaque_existential_0Tm(v163);
                          MEMORY[0x1DA7405F0](v101, -1, -1);
                          MEMORY[0x1DA7405F0](v100, -1, -1);

                          v83 = v166;
                          v102 = (v166)(v178, v185);
                        }

                        else
                        {

                          v83 = v166;
                          v102 = (v166)(v178, v93);
                        }
                      }

                      else
                      {
                        v91 = sub_1D9C7E7DC();

                        if (v91)
                        {
                          goto LABEL_26;
                        }

                        v140 = v172;
                        static Logger.argos.getter(v172);
                        sub_1D9A3E0E0(v173);
                        v83 = *v177;
                        (*v177)(v140, v185);
                        v141 = sub_1D9C7D8BC();
                        v142 = sub_1D9C7E08C();
                        if (os_log_type_enabled(v141, v142))
                        {
                          v143 = swift_slowAlloc();
                          v163 = v141;
                          v144 = v143;
                          v162 = swift_slowAlloc();
                          *&v198 = v162;
                          *v144 = v168;
                          v145 = sub_1D9A15C94(v164);
                          v161 = v142;
                          v160 = sub_1D9A0E224(v145, v146, &v198);

                          *(v144 + 4) = v160;
                          *(v144 + 12) = 2080;
                          v147 = sub_1D9A15C94(v166);
                          v166 = sub_1D9A0E224(v147, v148, &v198);

                          *(v144 + 14) = v166;
                          _os_log_impl(&dword_1D9962000, v163, v161, "server result visual domain [%s] != client visual domain [%s]", v144, 0x16u);
                          v149 = v162;
                          swift_arrayDestroy();
                          MEMORY[0x1DA7405F0](v149, -1, -1);
                          MEMORY[0x1DA7405F0](v144, -1, -1);
                        }

                        else
                        {
                        }

                        v102 = (v83)(v173, v185);
                        v197 = v164;
                      }
                    }

                    else
                    {

                      v82 = v174;
                      static Logger.argos.getter(v174);
                      sub_1D9A3E0E0(v176);
                      v83 = *v177;
                      (*v177)(v82, v185);
                      v84 = sub_1D9C7D8BC();
                      v85 = sub_1D9C7E08C();
                      if (os_log_type_enabled(v84, v85))
                      {
                        v86 = swift_slowAlloc();
                        v87 = v84;
                        v88 = v86;
                        *v86 = 0;
                        v89 = v85;
                        v90 = v87;
                        _os_log_impl(&dword_1D9962000, v87, v89, "server result visual domain is not set, no need to reconcile with client visual domain", v86, 2u);
                        MEMORY[0x1DA7405F0](v88, -1, -1);
                      }

                      else
                      {
                      }

                      v102 = (v83)(v176, v185);
                    }

                    v103 = v169;
                    v104 = *(v169 + 16);
                    v105 = v188;
                    v166 = v83;
                    if (v104 && (v102 = sub_1D99EE138(v197), (v106 & 1) != 0))
                    {
                      v107 = (*(v103 + 56) + 40 * v102);
                      v108 = *v107;
                      v163 = v107[1];
                      v164 = v108;
                    }

                    else
                    {
                      v163 = 0xE000000000000000;
                      v164 = 0;
                    }

                    v162 = &v159;
                    MEMORY[0x1EEE9AC00](v102);
                    *(&v159 - 2) = &v197;
                    *(&v159 - 1) = v31;
                    v109 = v105;
                    v110 = v171;
                    v111 = sub_1D99BB8A8(sub_1D9B3D950, (&v159 - 4), v109);
                    v171 = v110;

                    v112 = *(v31 + 1);
                    v198 = *v31;
                    v199 = v112;
                    *&v200 = v111;
                    *(&v200 + 1) = v180;
                    *&v201 = v170;
                    *(&v201 + 1) = v164;
                    *&v202 = v163;
                    v113 = v179;
                    static Logger.argos.getter(v179);
                    sub_1D9A3E0E0(v182);
                    v114 = v185;
                    v166(v113, v185);
                    sub_1D9B3D7C8(v31, v181, type metadata accessor for VisualUnderstanding.ImageRegion);
                    sub_1D99D0F10(&v198, &v192);
                    v115 = sub_1D9C7D8BC();
                    v116 = sub_1D9C7E08C();
                    sub_1D99FE184(&v198);
                    if (os_log_type_enabled(v115, v116))
                    {
                      v117 = swift_slowAlloc();
                      LODWORD(v180) = v116;
                      v118 = v117;
                      v188 = swift_slowAlloc();
                      v191 = v188;
                      *v118 = v168;
                      v194 = v200;
                      v195 = v201;
                      v196 = v202;
                      v192 = v198;
                      v193 = v199;
                      sub_1D99D0F10(&v198, &v190);
                      v119 = sub_1D9C7DD0C();
                      v170 = v115;
                      v121 = sub_1D9A0E224(v119, v120, &v191);

                      v164 = v118;
                      *(v118 + 4) = v121;
                      *(v118 + 12) = 2080;
                      v122 = v181;
                      v123 = v181[1];
                      v192 = *v181;
                      v193 = v123;
                      v124 = NormalizedRect.loggingDescription.getter();
                      v126 = v125;
                      sub_1D99B1C88(v122);
                      v127 = sub_1D9A0E224(v124, v126, &v191);

                      v128 = v164;
                      *(v164 + 14) = v127;
                      v129 = v170;
                      _os_log_impl(&dword_1D9962000, v170, v180, "Add RegionSearchResult %s for %s", v128, 0x16u);
                      v130 = v188;
                      swift_arrayDestroy();
                      MEMORY[0x1DA7405F0](v130, -1, -1);
                      MEMORY[0x1DA7405F0](v128, -1, -1);

                      v131 = v182;
                      v132 = v185;
                    }

                    else
                    {

                      sub_1D99B1C88(v181);
                      v131 = v182;
                      v132 = v114;
                    }

                    v166(v131, v132);
                    v48 = v189;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v186 = sub_1D9AFB3F4(0, *(v186 + 2) + 1, 1, v186);
                    }

                    v134 = *(v186 + 2);
                    v133 = *(v186 + 3);
                    if (v134 >= v133 >> 1)
                    {
                      v186 = sub_1D9AFB3F4((v133 > 1), v134 + 1, 1, v186);
                    }

                    v135 = v186;
                    *(v186 + 2) = v134 + 1;
                    v136 = &v135[72 * v134];
                    *(v136 + 2) = v198;
                    v137 = v199;
                    v138 = v200;
                    v139 = v201;
                    *(v136 + 12) = v202;
                    *(v136 + 4) = v138;
                    *(v136 + 5) = v139;
                    *(v136 + 3) = v137;
                  }

                  else
                  {
                  }

                  a4 = v165;
                  goto LABEL_4;
                }

                v43 = v187;
              }

              else
              {

                v44 = v60;
                v43 = v187;
              }
            }

            else
            {

              v48 = v189;
            }
          }
        }
      }

LABEL_4:
      ++v46;
      result = sub_1D99B1C88(v31);
      if (v44 == v46)
      {

        v10 = v183;
        a1 = v184;
        v150 = v186;
        goto LABEL_50;
      }
    }
  }

  v150 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v151 = sub_1D9C7CF3C();
  (*(*(v151 - 8) + 56))(v10, 1, 1, v151);
  v152 = v219;
  *(a4 + 128) = v218;
  *(a4 + 144) = v152;
  *(a4 + 160) = v220;
  v153 = v221;
  v154 = v215;
  *(a4 + 64) = v214;
  *(a4 + 80) = v154;
  v155 = v217;
  *(a4 + 96) = v216;
  *(a4 + 112) = v155;
  v156 = v211;
  *a4 = v210;
  *(a4 + 16) = v156;
  v157 = v213;
  *(a4 + 32) = v212;
  *(a4 + 48) = v157;
  *(a4 + 176) = v153;
  *(a4 + 184) = v150;
  v158 = type metadata accessor for VisualSearchResultInternal(0);
  sub_1D99AB100(a1, a4 + *(v158 + 24), &qword_1ECB519C8);
  sub_1D9B3D734(v10, a4 + *(v158 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  swift_storeEnumTagMultiPayload();
  return sub_1D99BB40C(&v210, &v198);
}

float sub_1D9B3CB4C@<S0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *a2;
  v18 = *(a1 + 16);
  v20 = *(a1 + 24);

  v5 = sub_1D9B67DFC();
  if (*(v5 + 16))
  {
    v6 = *(v5 + 144);
    v24 = *(v5 + 128);
    v25 = v6;
    v26[0] = *(v5 + 160);
    *(v26 + 13) = *(v5 + 173);
    v7 = *(v5 + 80);
    v22[2] = *(v5 + 64);
    v22[3] = v7;
    v8 = *(v5 + 112);
    v22[4] = *(v5 + 96);
    v23 = v8;
    v9 = *(v5 + 48);
    v22[0] = *(v5 + 32);
    v22[1] = v9;
    sub_1D99AE054(v22, v21);

    v11 = *(&v23 + 1);
    v10 = v23;
    v13 = *(&v24 + 1);
    v12 = v24;
    sub_1D99FE1B4(v23, *(&v23 + 1));
    sub_1D99AE0B0(v22);
  }

  else
  {

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v14 = type metadata accessor for RegionSearchResult.ResultItem(0);
  v15 = *(v14 + 28);
  sub_1D9B3D7C8(a1, a3 + v15, type metadata accessor for ObjectKnowledge);
  v16 = type metadata accessor for ObjectKnowledge();
  (*(*(v16 - 8) + 56))(a3 + v15, 0, 1, v16);
  result = *(a1 + *(v16 + 64));
  *a3 = v19;
  *(a3 + 8) = v18;
  *(a3 + 16) = v20;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  *(a3 + 48) = v13;
  *(a3 + *(v14 + 32)) = result;
  return result;
}

uint64_t sub_1D9B3CCF0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v106 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v101 = &v96 - v8;
  v102 = sub_1D9C7D8DC();
  v9 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v96 - v17);
  v19 = a2[9];
  v20 = a2[7];
  v138 = a2[8];
  v139 = v19;
  v21 = a2[9];
  v140 = a2[10];
  v22 = a2[5];
  v23 = a2[3];
  v134 = a2[4];
  v135 = v22;
  v24 = a2[5];
  v25 = a2[7];
  v136 = a2[6];
  v137 = v25;
  v26 = a2[1];
  v130 = *a2;
  v131 = v26;
  v27 = a2[3];
  v29 = *a2;
  v28 = a2[1];
  v132 = a2[2];
  v133 = v27;
  v126 = v138;
  v127 = v21;
  v128 = a2[10];
  v122 = v134;
  v123 = v24;
  v124 = v136;
  v125 = v20;
  v118 = v29;
  v119 = v28;
  v141 = *(a2 + 22);
  v129 = *(a2 + 22);
  v120 = v132;
  v121 = v23;
  v30 = sub_1D9B67A68();
  v31 = *(v30 + 16);
  if (v31)
  {
    v99 = a4;
    v32 = v30;
    v33 = type metadata accessor for ServerSearchResult();
    v107 = 0;
    v34 = *(v33 + 20);
    v97 = v32;
    v98 = a1;
    v35 = *(a1 + v34);
    v36 = v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    *&v110 = *(v13 + 72);
    v100 = (v9 + 8);
    v37 = MEMORY[0x1E69E7CC0];
    *&v38 = 136315394;
    v96 = v38;
    v39 = v106;
    v105 = v11;
    v108 = v15;
    while (1)
    {
      sub_1D9B3D7C8(v36, v18, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (*(v35 + 16))
      {
        v40 = sub_1D99EE1AC(*v18, v18[1], v18[2], v18[3]);
        if (v41)
        {
          if (*(v35 + 16))
          {
            *&v109 = v37;
            v42 = *(*(v35 + 56) + 32 * v40);
            v44 = v18[2];
            v43 = v18[3];
            v46 = *v18;
            v45 = v18[1];

            v47 = sub_1D99EE1AC(v46, v45, v44, v43);
            if (v48)
            {
              v49 = *(*(v35 + 56) + 32 * v47 + 8);

              v50 = sub_1D9B67DFC();
              if (*(v50 + 16))
              {
                v51 = *(v50 + 32);

                if (*(v39 + 16) && (v52 = sub_1D99EE138(v51), (v53 & 1) != 0))
                {
                  v54 = (*(v39 + 56) + 40 * v52);
                  v55 = *v54;
                  v103 = v54[1];
                  v104 = v55;
                }

                else
                {
                  v103 = 0xE000000000000000;
                  v104 = 0;
                }

                MEMORY[0x1EEE9AC00](v52);
                *(&v96 - 16) = v51;
                *(&v96 - 1) = v18;
                v56 = v107;
                v57 = sub_1D99BB8A8(sub_1D9B3D7A4, (&v96 - 2), v42);
                v107 = v56;

                v58 = *(v18 + 1);
                v118 = *v18;
                v119 = v58;
                *&v120 = v57;
                *(&v120 + 1) = v49;
                *&v121 = MEMORY[0x1E69E7CC0];
                *(&v121 + 1) = v104;
                *&v122 = v103;
                v59 = v105;
                static Logger.argos.getter(v105);
                v60 = v108;
                sub_1D9B3D7C8(v18, v108, type metadata accessor for VisualUnderstanding.ImageRegion);
                sub_1D99D0F10(&v118, &v113);
                v61 = sub_1D9C7D8BC();
                v62 = sub_1D9C7E09C();
                sub_1D99FE184(&v118);
                if (os_log_type_enabled(v61, v62))
                {
                  v63 = swift_slowAlloc();
                  v104 = swift_slowAlloc();
                  v112 = v104;
                  *v63 = v96;
                  v115 = v120;
                  v116 = v121;
                  v117 = v122;
                  v113 = v118;
                  v114 = v119;
                  sub_1D99D0F10(&v118, &v111);
                  v64 = sub_1D9C7DD0C();
                  v66 = sub_1D9A0E224(v64, v65, &v112);

                  *(v63 + 4) = v66;
                  *(v63 + 12) = 2080;
                  v67 = v108[1];
                  v113 = *v108;
                  v114 = v67;
                  v68 = NormalizedRect.loggingDescription.getter();
                  v70 = v69;
                  sub_1D99B1C88(v108);
                  v71 = sub_1D9A0E224(v68, v70, &v112);
                  v59 = v105;

                  *(v63 + 14) = v71;
                  _os_log_impl(&dword_1D9962000, v61, v62, "Add result %s for %s", v63, 0x16u);
                  v72 = v104;
                  swift_arrayDestroy();
                  MEMORY[0x1DA7405F0](v72, -1, -1);
                  MEMORY[0x1DA7405F0](v63, -1, -1);
                }

                else
                {

                  sub_1D99B1C88(v60);
                }

                (*v100)(v59, v102);
                v37 = v109;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v37 = sub_1D9AFB3F4(0, *(v37 + 2) + 1, 1, v37);
                }

                v74 = *(v37 + 2);
                v73 = *(v37 + 3);
                if (v74 >= v73 >> 1)
                {
                  v37 = sub_1D9AFB3F4((v73 > 1), v74 + 1, 1, v37);
                }

                *(v37 + 2) = v74 + 1;
                v75 = &v37[72 * v74];
                *(v75 + 2) = v118;
                v76 = v119;
                v77 = v120;
                v78 = v121;
                *(v75 + 12) = v122;
                *(v75 + 4) = v77;
                *(v75 + 5) = v78;
                *(v75 + 3) = v76;
                v39 = v106;
                goto LABEL_4;
              }
            }

            v37 = v109;
          }
        }
      }

LABEL_4:
      sub_1D99B1C88(v18);
      v36 += v110;
      if (!--v31)
      {

        a1 = v98;
        a4 = v99;
        if (!*(v37 + 2))
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_26:
    v79 = type metadata accessor for ServerSearchResult();
    sub_1D9B3BBD8(*(a1 + *(v79 + 20)), &v118);
    if (v120)
    {
      v109 = v119;
      v110 = v118;
      v80 = *(&v120 + 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1D9AFB3F4(0, *(v37 + 2) + 1, 1, v37);
      }

      v82 = *(v37 + 2);
      v81 = *(v37 + 3);
      if (v82 >= v81 >> 1)
      {
        v37 = sub_1D9AFB3F4((v81 > 1), v82 + 1, 1, v37);
      }

      *(v37 + 2) = v82 + 1;
      v83 = &v37[72 * v82];
      v84 = v109;
      *(v83 + 2) = v110;
      *(v83 + 3) = v84;
      v85 = MEMORY[0x1E69E7CC0];
      *(v83 + 8) = MEMORY[0x1E69E7CC0];
      *(v83 + 9) = v80;
      *(v83 + 10) = v85;
      *(v83 + 11) = 0;
      *(v83 + 12) = 0xE000000000000000;
    }
  }

LABEL_32:
  v86 = sub_1D9C7CF3C();
  v87 = v101;
  (*(*(v86 - 8) + 56))(v101, 1, 1, v86);
  v88 = v139;
  *(a4 + 128) = v138;
  *(a4 + 144) = v88;
  *(a4 + 160) = v140;
  v89 = v141;
  v90 = v135;
  *(a4 + 64) = v134;
  *(a4 + 80) = v90;
  v91 = v137;
  *(a4 + 96) = v136;
  *(a4 + 112) = v91;
  v92 = v131;
  *a4 = v130;
  *(a4 + 16) = v92;
  v93 = v133;
  *(a4 + 32) = v132;
  *(a4 + 48) = v93;
  *(a4 + 176) = v89;
  *(a4 + 184) = v37;
  v94 = type metadata accessor for VisualSearchResultInternal(0);
  sub_1D99AB100(a1, a4 + *(v94 + 24), &qword_1ECB519C8);
  sub_1D9B3D734(v87, a4 + *(v94 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  swift_storeEnumTagMultiPayload();
  return sub_1D99BB40C(&v130, &v118);
}

uint64_t sub_1D9B3D57C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  v19 = *(a1 + 16);

  v6 = sub_1D9B67DFC();
  if (*(v6 + 16))
  {
    v7 = *(v6 + 144);
    v24 = *(v6 + 128);
    v25 = v7;
    v26[0] = *(v6 + 160);
    *(v26 + 13) = *(v6 + 173);
    v8 = *(v6 + 80);
    v22[2] = *(v6 + 64);
    v22[3] = v8;
    v9 = *(v6 + 112);
    v22[4] = *(v6 + 96);
    v23 = v9;
    v10 = *(v6 + 48);
    v22[0] = *(v6 + 32);
    v22[1] = v10;
    sub_1D99AE054(v22, v21);

    v12 = *(&v23 + 1);
    v11 = v23;
    v14 = *(&v24 + 1);
    v13 = v24;
    sub_1D99FE1B4(v23, *(&v23 + 1));
    sub_1D99AE0B0(v22);
  }

  else
  {

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v15 = type metadata accessor for RegionSearchResult.ResultItem(0);
  v16 = *(v15 + 28);
  sub_1D9B3D7C8(a1, a3 + v16, type metadata accessor for ObjectKnowledge);
  v17 = type metadata accessor for ObjectKnowledge();
  result = (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
  *a3 = a2;
  *(a3 + 8) = v19;
  *(a3 + 16) = v5;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 40) = v13;
  *(a3 + 48) = v14;
  *(a3 + *(v15 + 32)) = 1065353216;
  return result;
}

uint64_t sub_1D9B3D734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B3D7C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_1D9B3D830(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(a5 + 56);
    v6 = (*(a5 + 48) + 32 * a2);
    v7 = v6[1];
    *result = *v6;
    result[1] = v7;
    v8 = *(v5 + 32 * a2);

    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D9B3D8E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB535F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D9B3D970(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F0);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v4 + 56);

    v11(a1, 1, 1, v3, v5);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v4;
      v12 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      sub_1D9B45558(v13, v7 + v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_1D99B1C20(v7, a1, &qword_1ECB510F0);
        (*(v17 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D9B3DB60(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51670);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {
    v11 = *(v4 + 56);

    v11(a1, 1, 1, v3, v5);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v19 = v4;
      v12 = sub_1D9C7BFBC();
      v13 = *(v12 - 8);
      v14 = *(v13 + 16);
      v15 = v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v16 = *(v3 + 48);
      v17 = v1[2];
      *v7 = v17;
      v14(&v7[v16], v15, v12);
      if (!__OFADD__(v17, 1))
      {
        v1[2] = v17 + 1;
        sub_1D99B1C20(v7, a1, &qword_1ECB51670);
        (*(v19 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D9B3DD2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E9200(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D9C7E79C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 6);
          if (*(v12 + 2) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53600);
      v8 = sub_1D9C7DF5C();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_1D9B41DAC(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_1D9B3DE80@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9B45B44(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D9B3DEAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B45AF0();
  v5 = sub_1D99DF254();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1D9B3DF04()
{
  v2 = v0;
  v45 = sub_1D9C7D8DC();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v40 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v40 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v40 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v40 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v40 - v18;
  *(v0 + 64) = xmmword_1D9C96030;
  type metadata accessor for EncryptedSearchLTR();
  sub_1D9C1E92C([objc_allocWithZone(MEMORY[0x1E695FEB0]) init]);
  if (v1)
  {

    static Logger.argos.getter(v19);
    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D9962000, v21, v22, "Error: Unable to load reranker model: LTR", v23, 2u);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (*(v44 + 8))(v19, v45);
    sub_1D9A74A28();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    type metadata accessor for Reranker();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v13;
    v42 = v16;
    v40[2] = v7;
    v40[3] = v10;
    v40[1] = v4;
    *(v0 + 16) = v20;
    v25 = v20;
    type metadata accessor for OCRTitleModel();
    v26 = objc_allocWithZone(MEMORY[0x1E695FEB0]);
    v43 = v25;

    v27 = [v26 init];
    sub_1D9C1E69C(v27);
    v29 = v28;

    *(v0 + 24) = v29;
    type metadata accessor for OCRAddressModel();
    v30 = objc_allocWithZone(MEMORY[0x1E695FEB0]);
    v42 = v29;

    v31 = [v30 init];
    sub_1D9C1F8B0(v31);
    v40[0] = 0;
    v33 = v32;

    *(v0 + 32) = v33;
    type metadata accessor for StorefrontLabelMapper();
    swift_allocObject();
    v41 = v33;

    *(v0 + 40) = sub_1D9A73DEC();
    type metadata accessor for CategoryClassificationModel();
    v34 = objc_allocWithZone(MEMORY[0x1E695FEB0]);

    sub_1D9C1FAF0([v34 init]);
    *(v0 + 48) = v35;
    type metadata accessor for TitleClassificationModel();
    v36 = objc_allocWithZone(MEMORY[0x1E695FEB0]);

    sub_1D9C1EF74([v36 &selRef_setFont_size_stop_reporting_threshold_]);
    v39 = v38;

    *(v0 + 56) = v39;
  }

  return v2;
}

uint64_t (*sub_1D9B3E82C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1D9B42548(v6, a2, a3);
  return sub_1D9B3E8B4;
}

uint64_t (*sub_1D9B3E8B8(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1D9B425F8(v4, a2);
  return sub_1D9B45B58;
}

void sub_1D9B3E930(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1D9B3E97C(void (**a1)(char *, uint64_t), uint64_t a2, char *a3)
{
  v251 = a3;
  v227 = a1;
  v270 = *MEMORY[0x1E69E9840];
  v4 = sub_1D9C7D8DC();
  v231 = *(v4 - 8);
  v232 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v230 = &v216 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v216 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v249 = (&v216 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51678);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v229 = &v216 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v228 = &v216 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FE0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v240 = &v216 - v16;
  v250 = sub_1D9C7BFBC();
  v226 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v234 = &v216 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v216 - v19;
  v21 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = (&v216 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *a2;
  v252 = *(a2 + 8);
  v26 = *(a2 + 32);
  v256 = sub_1D9A450B8(MEMORY[0x1E69E7CC0]);
  if (!v25[2] || (v27 = (*(v22 + 80) + 32) & ~*(v22 + 80), v28 = *(v25 + v27 + 112), !*(v28 + 16)) || (v29 = *(v28 + 64), !*(v29 + 16)))
  {

    static Logger.argos.getter(v8);
    v38 = sub_1D9C7D8BC();
    v39 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D9962000, v38, v39, "Error: Unable to get query embedding", v40, 2u);
      MEMORY[0x1DA7405F0](v40, -1, -1);
    }

    v41 = v231;
    v42 = *(v231 + 8);
    v43 = v8;
LABEL_13:
    v44 = v232;
    v42(v43, v232);
    sub_1D9A74A28();
    v45 = swift_allocError();
    *v46 = 4;
    swift_willThrow();
LABEL_14:
    v47 = v230;
    static Logger.argos.getter(v230);
    v48 = sub_1D9C7D8BC();
    v49 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1D9962000, v48, v49, "Error: Failed to create storefront signal", v50, 2u);
      MEMORY[0x1DA7405F0](v50, -1, -1);
    }

    (*(v41 + 8))(v47, v44);
    v51 = sub_1D9A450B8(MEMORY[0x1E69E7CC0]);

    return v51;
  }

  v30 = *(v29 + 32);
  v241 = MEMORY[0x1E69E7CC0];
  if (v252 == 1)
  {
    v31 = v251;
    if (v251)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  v31 = v251;
  if (v26)
  {

    v241 = v26;
  }

  if (!v31)
  {
LABEL_19:

    v53 = v249;
    static Logger.argos.getter(v249);
    v54 = sub_1D9C7D8BC();
    v55 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1D9962000, v54, v55, "Error: Unable to get query embedding", v56, 2u);
      MEMORY[0x1DA7405F0](v56, -1, -1);
    }

    v41 = v231;
    v42 = *(v231 + 8);
    v43 = v53;
    goto LABEL_13;
  }

LABEL_8:
  v257 = *&v25;
  v258 = v252;
  v259 = *(a2 + 16);
  v260 = v26;
  v261 = *(a2 + 40);
  v262 = *(a2 + 56);
  v266 = *(a2 + 120);
  v267 = *(a2 + 136);
  v268 = *(a2 + 152);
  v269 = *(a2 + 168);
  v263 = *(a2 + 72);
  v264 = *(a2 + 88);
  v265 = *(a2 + 104);
  v222 = v30;

  v32 = v31;
  v33 = VisualUnderstanding.imageRegions.getter();
  if (*(v33 + 16))
  {
    sub_1D9B45558(v33 + v27, v24, type metadata accessor for VisualUnderstanding.ImageRegion);

    MinX = *v24;
    v35 = v24[1];
    Width = v24[2];
    Height = v24[3];
    sub_1D9B45628(v24, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  else
  {

    v271.origin.x = 0.0;
    v271.origin.y = 0.0;
    v271.size.width = 1.0;
    v271.size.height = 1.0;
    MinX = CGRectGetMinX(v271);
    v272.origin.x = 0.0;
    v272.origin.y = 0.0;
    v272.size.width = 1.0;
    v272.size.height = 1.0;
    v35 = 1.0 - CGRectGetMaxY(v272);
    v273.origin.x = 0.0;
    v273.origin.y = 0.0;
    v273.size.width = 1.0;
    v273.size.height = 1.0;
    Width = CGRectGetWidth(v273);
    v274.origin.x = 0.0;
    v274.origin.y = 0.0;
    v274.size.width = 1.0;
    v274.size.height = 1.0;
    Height = CGRectGetHeight(v274);
  }

  v57 = v242;
  swift_retain_n();
  v58 = v227;
  v224 = sub_1D99E0FC0(v227, v32);
  v217 = v32;
  v223 = sub_1D99E1740(v58, v32);
  v59 = sub_1D9C7C15C();
  v60 = *(v59 + 16);
  if (v60)
  {
    v239 = *(v241 + 16);
    v245 = v57[5];
    v237 = *(v226 + 16);
    v61 = (*(v226 + 80) + 32) & ~*(v226 + 80);
    v221 = v59;
    v62 = v59 + v61;
    v236 = *(v226 + 72);
    v233 = "storefrontThresholdCutoff";
    v238 = v226 + 16;
    v235 = (v226 + 8);
    v244 = xmmword_1D9C85660;
    v63 = MEMORY[0x1E69E7CC0];
    v247 = MEMORY[0x1E69E7CC0];
    v248 = MEMORY[0x1E69E7CC0];
    v251 = MEMORY[0x1E69E7CC0];
    v252 = MEMORY[0x1E69E7CC0];
    v246 = MEMORY[0x1E69E7CC0];
    v64 = v237;
    while (1)
    {
      v243 = v60;
      v249 = v63;
      v65 = v250;
      v64(v20, v62, v250);
      v66 = sub_1D9C7BF7C();
      v67 = v240;
      v64(v240, v20, v65);
      v68 = type metadata accessor for StorefrontSignals(0);
      *(v67 + *(v68 + 20)) = 0;
      (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
      sub_1D9AC7968(v67, v66);
      sub_1D9C7BF9C();
      v69 = sub_1D9C7DCFC();
      v71 = v245[4];
      if (*(v71 + 16))
      {
        v72 = sub_1D99ED894(v69, v70);
        v74 = v73;

        if (v74)
        {
          v75 = *(*(v71 + 56) + 8 * v72);

          if (v75 >= 0)
          {
            v76 = 1.0;
          }

          else
          {
            v76 = 0.0;
          }

          goto LABEL_34;
        }
      }

      else
      {
      }

      v76 = 0.0;
LABEL_34:
      v77 = v247;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_1D9AF9A74(0, *(v77 + 2) + 1, 1, v77);
      }

      v79 = *(v77 + 2);
      v78 = *(v77 + 3);
      if (v79 >= v78 >> 1)
      {
        v77 = sub_1D9AF9A74((v78 > 1), v79 + 1, 1, v77);
      }

      *(v77 + 2) = v79 + 1;
      v247 = v77;
      *&v77[8 * v79 + 32] = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110);
      inited = swift_initStackObject();
      *(inited + 16) = v244;
      *(inited + 32) = sub_1D9C7BF6C();
      *(inited + 40) = v81;
      v82 = sub_1D9AE66D4(inited, v245);
      swift_setDeallocating();
      sub_1D9B172F8(inited + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v252 = sub_1D9AF9A74(0, *(v252 + 2) + 1, 1, v252);
      }

      v84 = *(v252 + 2);
      v83 = *(v252 + 3);
      if (v84 >= v83 >> 1)
      {
        v252 = sub_1D9AF9A74((v83 > 1), v84 + 1, 1, v252);
      }

      v85 = v252;
      *(v252 + 2) = v84 + 1;
      *&v85[8 * v84 + 32] = v82;
      sub_1D9C7BF9C();
      v86 = sub_1D9C7DCFC();
      v88 = v87;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v89 = v251;
      }

      else
      {
        v89 = sub_1D9AF83AC(0, *(v251 + 2) + 1, 1, v251);
      }

      v91 = *(v89 + 2);
      v90 = *(v89 + 3);
      if (v91 >= v90 >> 1)
      {
        v89 = sub_1D9AF83AC((v90 > 1), v91 + 1, 1, v89);
      }

      *(v89 + 2) = v91 + 1;
      v251 = v89;
      v92 = &v89[16 * v91];
      *(v92 + 4) = v86;
      *(v92 + 5) = v88;
      v93 = swift_allocObject();
      *(v93 + 16) = v244;
      *(v93 + 32) = sub_1D9C7BF6C();
      *(v93 + 40) = v94;
      v63 = v249;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1D9AF9BE4(0, v63[2] + 1, 1, v63);
      }

      v96 = v63[2];
      v95 = v63[3];
      if (v96 >= v95 >> 1)
      {
        v63 = sub_1D9AF9BE4((v95 > 1), v96 + 1, 1, v63);
      }

      v63[2] = v96 + 1;
      v63[v96 + 4] = v93;
      if (v239)
      {
        v97 = sub_1D9C7BF9C();
        v257 = MinX;
        v258 = *&v35;
        *&v259 = Width;
        *(&v259 + 1) = Height;
        v99 = sub_1D9AE6944(v97, v98, &v257, v241, 10, 2);

        v100 = v242;

        v101 = sub_1D9AE777C(0x616D5F656C746974, 0xEF72636F5F686374, &unk_1F5528388, v99, 3, v100);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v248 = sub_1D9AF9B9C(0, v248[2] + 1, 1, v248);
        }

        v103 = v248[2];
        v102 = v248[3];
        if (v103 >= v102 >> 1)
        {
          v248 = sub_1D9AF9B9C((v102 > 1), v103 + 1, 1, v248);
        }

        v104 = v248;
        v248[2] = v103 + 1;
        v104[v103 + 4] = v101;
        v105 = sub_1D9AE7E40();
        v257 = MinX;
        v258 = *&v35;
        *&v259 = Width;
        *(&v259 + 1) = Height;
        v107 = sub_1D9AE6944(v105, v106, &v257, v241, 10, 2);

        v108 = v242;

        v109 = sub_1D9AE8428(0xD000000000000011, (v233 | 0x8000000000000000), &unk_1F5528388, v107, 3, v108);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v246 = sub_1D9AF9B9C(0, v246[2] + 1, 1, v246);
        }

        v111 = v246[2];
        v110 = v246[3];
        if (v111 >= v110 >> 1)
        {
          v246 = sub_1D9AF9B9C((v110 > 1), v111 + 1, 1, v246);
        }

        (*v235)(v20, v250);
        v112 = v246;
        v246[2] = v111 + 1;
        v112[v111 + 4] = v109;
      }

      else
      {
        (*v235)(v20, v250);
      }

      v62 += v236;
      v60 = v243 - 1;
      if (v243 == 1)
      {

        v57 = v242;
        v113 = v251;
        goto LABEL_63;
      }
    }
  }

  v113 = MEMORY[0x1E69E7CC0];
  v63 = MEMORY[0x1E69E7CC0];
  v247 = MEMORY[0x1E69E7CC0];
  v248 = MEMORY[0x1E69E7CC0];
  v252 = MEMORY[0x1E69E7CC0];
  v246 = MEMORY[0x1E69E7CC0];
LABEL_63:
  v114 = v57[5];
  v115 = v57[7];
  v251 = v113;
  v116 = v222;
  v240 = v114;
  sub_1D9AE8C08(v113, v222, v114, v115, 1);
  v243 = v117;
  v118 = v57[6];
  v119 = v63[2];
  if (v119)
  {
    v120 = sub_1D9C7DF5C();
    *(v120 + 16) = v119;
    *&v244 = v120;
    bzero((v120 + 32), 8 * v119);
    v121 = sub_1D9C7DF5C();
    *(v121 + 16) = v119;
    v116 = v222;
    bzero((v121 + 32), 8 * v119);
  }

  else
  {
    v121 = MEMORY[0x1E69E7CC0];
    *&v244 = MEMORY[0x1E69E7CC0];
  }

  v122 = v225;
  v123 = sub_1D9B438D4(v116, 1);
  v249 = v63;
  if (v122)
  {

    v245 = 0;
    goto LABEL_92;
  }

  v124 = v123;
  v245 = 0;
  type metadata accessor for CategoryClassificationModelInput();
  v125 = swift_allocObject();
  *(v125 + 16) = v124;
  v126 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v127 = *(v118 + 16);
  v257 = 0.0;
  v128 = [v127 predictionFromFeatures:v125 options:v126 error:&v257];
  if (!v128)
  {
    v148 = *&v257;
    v149 = sub_1D9C7B70C();

    swift_willThrow();

    v245 = 0;
LABEL_92:
    v153 = sub_1D9C7C15C();
    v154 = (v226 + 32);
    v239 = v223 + 32;
    v240 = (v224 + 32);
    v237 = (v244 + 32);
    v238 = v243 + 32;
    v235 = (v247 + 32);
    v236 = v121 + 32;
    v233 = (v252 + 32);
    v155 = v248 + 4;
    v225 = "address_match_ocr";
    v221 = "title_match_ocr_1";
    v222 = "title_match_ocr_0";
    v156 = v246 + 4;
    v219 = "address_match_ocr_0";
    v220 = "title_match_ocr_2";
    v218 = "address_match_ocr_1";
    v227 = (v226 + 8);
    v254 = 0;
    v255 = 0;
    v253 = v153;
    while (1)
    {
      v157 = v229;
      sub_1D9B3DB60(v229);
      v158 = v157;
      v159 = v228;
      sub_1D99B1C20(v158, v228, &qword_1ECB51678);
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51670);
      if ((*(*(v160 - 8) + 48))(v159, 1, v160) == 1)
      {
        break;
      }

      v161 = *v159;
      (*v154)(v234, &v159[*(v160 + 48)], v250);
      v162 = sub_1D9C7DF5C();
      *(v162 + 16) = 53;
      *(v162 + 32) = 0u;
      *(v162 + 48) = 0u;
      *(v162 + 64) = 0u;
      *(v162 + 80) = 0u;
      *(v162 + 96) = 0u;
      *(v162 + 112) = 0u;
      *(v162 + 128) = 0u;
      *(v162 + 144) = 0u;
      *(v162 + 160) = 0u;
      *(v162 + 176) = 0u;
      *(v162 + 192) = 0u;
      *(v162 + 208) = 0u;
      *(v162 + 224) = 0u;
      *(v162 + 240) = 0;
      if ((v161 & 0x8000000000000000) != 0)
      {
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
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
      }

      if (v161 >= *(v224 + 16))
      {
        goto LABEL_138;
      }

      v163 = *&v240[8 * v161];
      *(v162 + 32) = v163;
      if (v161 >= *(v223 + 16))
      {
        goto LABEL_139;
      }

      v164 = v162;
      v165 = *(v239 + 8 * v161);
      *(v162 + 36) = v165;
      if (v161 >= *(v243 + 16))
      {
        goto LABEL_140;
      }

      v166 = *(v238 + 8 * v161);
      *(v162 + 40) = v166;
      if (v161 >= *(v244 + 16))
      {
        goto LABEL_141;
      }

      v167 = *(v237 + v161);
      *(v162 + 44) = v167;
      if (v161 >= *(v121 + 16))
      {
        goto LABEL_142;
      }

      v168 = *(v236 + 8 * v161);
      *(v162 + 48) = v168;
      if (v161 >= *(v247 + 2))
      {
        goto LABEL_143;
      }

      v169 = *&v235[v161];
      *(v162 + 52) = v169;
      if (v161 >= *(v252 + 2))
      {
        goto LABEL_144;
      }

      v170 = *(v233 + 8 * v161);
      *(v162 + 56) = v170;
      if (*(v241 + 16))
      {
        if (v161 >= v248[2])
        {
          goto LABEL_145;
        }

        v171 = v155[v161];
        v172 = *(v171 + 16);

        if (!v172 || (v173 = sub_1D99ED894(0xD000000000000011, v225 | 0x8000000000000000), (v174 & 1) == 0))
        {
LABEL_133:

          sub_1D9A74A28();
          v45 = swift_allocError();
          *v215 = 4;
          swift_willThrow();

          (*v227)(v234, v250);

LABEL_134:
          v41 = v231;
          v44 = v232;
          goto LABEL_14;
        }

        v175 = *(*(v171 + 56) + 8 * v173);

        if (*(v164 + 16) < 8uLL)
        {
          goto LABEL_146;
        }

        v176 = v175;
        *(v164 + 60) = v176;
        if (v161 >= v248[2])
        {
          goto LABEL_147;
        }

        v177 = v155[v161];
        v178 = *(v177 + 16);

        if (!v178)
        {
          goto LABEL_133;
        }

        v179 = sub_1D99ED894(0xD000000000000011, v222 | 0x8000000000000000);
        if ((v180 & 1) == 0)
        {
          goto LABEL_133;
        }

        v181 = *(*(v177 + 56) + 8 * v179);

        if (*(v164 + 16) < 9uLL)
        {
          goto LABEL_148;
        }

        v182 = v181;
        *(v164 + 64) = v182;
        if (v161 >= v248[2])
        {
          goto LABEL_149;
        }

        v183 = v155[v161];
        v184 = *(v183 + 16);

        if (!v184)
        {
          goto LABEL_133;
        }

        v185 = sub_1D99ED894(0xD000000000000011, v221 | 0x8000000000000000);
        if ((v186 & 1) == 0)
        {
          goto LABEL_133;
        }

        v187 = *(*(v183 + 56) + 8 * v185);

        if (*(v164 + 16) < 0xAuLL)
        {
          goto LABEL_150;
        }

        v188 = v187;
        *(v164 + 68) = v188;
        if (v161 >= v246[2])
        {
          goto LABEL_151;
        }

        v189 = v156[v161];
        v190 = *(v189 + 16);

        if (!v190)
        {
          goto LABEL_133;
        }

        v191 = sub_1D99ED894(0xD000000000000013, v220 | 0x8000000000000000);
        if ((v192 & 1) == 0)
        {
          goto LABEL_133;
        }

        v193 = *(*(v189 + 56) + 8 * v191);

        if (*(v164 + 16) < 0xBuLL)
        {
          goto LABEL_152;
        }

        v194 = v193;
        *(v164 + 72) = v194;
        if (v161 >= v246[2])
        {
          goto LABEL_153;
        }

        v195 = v156[v161];
        v196 = *(v195 + 16);

        if (!v196)
        {
          goto LABEL_133;
        }

        v197 = sub_1D99ED894(0xD000000000000013, v219 | 0x8000000000000000);
        if ((v198 & 1) == 0)
        {
          goto LABEL_133;
        }

        v199 = *(*(v195 + 56) + 8 * v197);

        if (*(v164 + 16) < 0xCuLL)
        {
          goto LABEL_154;
        }

        v200 = v199;
        *(v164 + 76) = v200;
        if (v161 >= v246[2])
        {
          goto LABEL_155;
        }

        v201 = v156[v161];
        v202 = *(v201 + 16);

        if (!v202)
        {
          goto LABEL_133;
        }

        v203 = sub_1D99ED894(0xD000000000000013, v218 | 0x8000000000000000);
        if ((v204 & 1) == 0)
        {
          goto LABEL_133;
        }

        v205 = *(*(v201 + 56) + 8 * v203);

        if (*(v164 + 16) < 0xDuLL)
        {
          goto LABEL_156;
        }

        v206 = v205;
        *(v164 + 80) = v206;
      }

      else
      {
        *(v162 + 68) = 0;
        *(v162 + 60) = 0;
        *(v162 + 76) = 0;
      }

      v207 = v245;
      sub_1D9B43E24(v164, 0, 13);
      v245 = v207;
      if (v207)
      {

        (*v227)(v234, v250);

        v45 = v245;
        goto LABEL_134;
      }

      v209 = v208;

      v210 = sub_1D9C7BF7C();
      v211 = sub_1D9B3E8B8(&v257, v210);
      v213 = v212;
      v214 = type metadata accessor for StorefrontSignals(0);
      if (!(*(*(v214 - 8) + 48))(v213, 1, v214))
      {
        *(v213 + *(v214 + 20)) = v209;
      }

      (v211)(&v257, 0);

      (*v227)(v234, v250);
    }

    v51 = v256;

    return v51;
  }

  v129 = v128;
  v130 = *&v257;

  v131 = sub_1D9C7DC4C();
  v132 = [v129 featureValueForName_];

  if (v132)
  {
    v133 = [v132 multiArrayValue];

    v134 = v249;
    if (v133)
    {
      swift_unknownObjectRelease();

      v135 = [v133 numberArray];

      sub_1D99CC024();
      v136 = sub_1D9C7DF2C();

      if (v136 >> 62)
      {
        goto LABEL_89;
      }

      for (i = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D9C7E50C())
      {
        v138 = 0;
        *&v244 = v136 & 0xC000000000000001;
        v139 = v136 & 0xFFFFFFFFFFFFFF8;
        v140 = MEMORY[0x1E69E7CC0];
        v141 = v136;
        while (1)
        {
          if (v244)
          {
            v142 = MEMORY[0x1DA73E610](v138, v136);
          }

          else
          {
            if (v138 >= *(v139 + 16))
            {
              goto LABEL_88;
            }

            v142 = *(v136 + 8 * v138 + 32);
          }

          v134 = v142;
          v136 = v138 + 1;
          if (__OFADD__(v138, 1))
          {
            break;
          }

          [v142 doubleValue];
          v144 = v143;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = sub_1D9AF9A74(0, *(v140 + 2) + 1, 1, v140);
          }

          v146 = *(v140 + 2);
          v145 = *(v140 + 3);
          if (v146 >= v145 >> 1)
          {
            v140 = sub_1D9AF9A74((v145 > 1), v146 + 1, 1, v140);
          }

          *(v140 + 2) = v146 + 1;
          *&v140[8 * v146 + 32] = v144;
          ++v138;
          v147 = v136 == i;
          v134 = v249;
          v136 = v141;
          if (v147)
          {
            goto LABEL_91;
          }
        }

        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        ;
      }

      v140 = MEMORY[0x1E69E7CC0];
LABEL_91:

      v150 = v240;
      sub_1D9AE8F74(v140, v134, v240, &unk_1F5528498, 0, 1);
      *&v244 = v151;
      sub_1D9AE8F74(v140, v134, v150, &unk_1F5528498, 1, 1);
      v121 = v152;

      goto LABEL_92;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D9B403F0(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v9 = *(v7 + 16);
  v25[0] = 0;
  v10 = [v9 predictionFromFeatures:a1 options:v8 error:v25];
  if (v10)
  {
    v11 = v10;
    v12 = v25[0];

    v13 = sub_1D9C7DC4C();
    v14 = [v11 featureValueForName_];

    if (v14)
    {
      v15 = [v14 multiArrayValue];

      if (v15)
      {
        v16 = [v15 objectAtIndexedSubscript_];

        [v16 doubleValue];
        v18 = v17;
        swift_unknownObjectRelease();

        exp(-v18);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v19 = v25[0];
    v20 = sub_1D9C7B70C();

    swift_willThrow();
    static Logger.argos.getter(v6);
    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D9962000, v21, v22, "Error: LTR inference failed", v23, 2u);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    sub_1D9A74A28();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
  }
}

uint64_t sub_1D9B406F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, void *a4@<X8>)
{
  v136 = a3;
  v134 = a4;
  v135 = a2;
  v133 = a1;
  v4 = sub_1D9C7D8DC();
  v129 = *(v4 - 8);
  v130 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v128 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7BCBC();
  v125 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - v10;
  v12 = type metadata accessor for LandmarkSignals(0);
  v126 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v119 - v16;
  v18 = sub_1D9C7C03C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v137;
  v23 = sub_1D9B44164(v133, v135, v136);
  if (v22)
  {
    v24 = v22;
LABEL_3:
    v25 = v134;
    v26 = v128;
    static Logger.argos.getter(v128);
    v27 = v24;
    v28 = sub_1D9C7D8BC();
    v29 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v24;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1D9962000, v28, v29, "Reranker getTopLandmark failed with error %@", v30, 0xCu);
      sub_1D99A6AE0(v31, &qword_1ECB510E8);
      MEMORY[0x1DA7405F0](v31, -1, -1);
      MEMORY[0x1DA7405F0](v30, -1, -1);
    }

    else
    {
    }

    (*(v129 + 8))(v26, v130);
    v44 = type metadata accessor for ObjectKnowledge();
    return (*(*(v44 - 8) + 56))(v25, 1, 1, v44);
  }

  v132 = v17;
  v133 = v23;
  v34 = v126;
  v136 = v12;
  v137 = 0;
  v119 = v11;
  v120 = v8;
  v121 = v6;
  v124 = v21;
  sub_1D9C7C02C();
  v35 = v133;
  LODWORD(v135) = 0;
  v36 = 0;
  v37 = v133 + 64;
  v38 = 1 << *(v133 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v133 + 64);
  v41 = (v38 + 63) >> 6;
  v42 = -INFINITY;
  v122 = (v19 + 16);
  v123 = (v19 + 8);
  v131 = v18;
  v43 = v127;
  while (1)
  {
    v46 = v136;
    if (!v40)
    {
      break;
    }

LABEL_17:
    v48 = v132;
    sub_1D9B45558(*(v35 + 56) + *(v34 + 72) * (__clz(__rbit64(v40)) | (v36 << 6)), v132, type metadata accessor for LandmarkSignals);
    sub_1D9B455C0(v48, v14, type metadata accessor for LandmarkSignals);
    if (!*&v14[v46[5]])
    {
      sub_1D9A74A28();
      v24 = swift_allocError();
      *v118 = 4;
      swift_willThrow();

      sub_1D9B45628(v14, type metadata accessor for LandmarkSignals);
      (*v123)(v124, v131);
      goto LABEL_3;
    }

    v50 = v43;
    v51 = v137;
    sub_1D9B403F0(v49);
    v137 = v51;
    if (v51)
    {

      sub_1D9B45628(v14, type metadata accessor for LandmarkSignals);
      (*v123)(v124, v131);
      v24 = v137;
      goto LABEL_3;
    }

    v53 = v52;

    if (v135)
    {
      v18 = v131;
      if (v42 >= v53)
      {
        LODWORD(v135) = 1;
        goto LABEL_11;
      }

      v54 = v14[v136[6]];
    }

    else
    {
      v18 = v131;
      if (v42 >= v53)
      {
        LODWORD(v135) = 0;
        goto LABEL_11;
      }

      v54 = 1;
    }

    if (*(v43 + 64) < v53 && v54 != 0)
    {
      v56 = v124;
      (*v123)(v124, v18);
      v57 = v56;
      v43 = v50;
      (*v122)(v57, v14, v18);
      LODWORD(v135) = v14[v136[6]];
      v42 = v53;
    }

LABEL_11:
    v40 &= v40 - 1;
    sub_1D9B45628(v14, type metadata accessor for LandmarkSignals);
    v35 = v133;
  }

  while (2)
  {
    v47 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v47 < v41)
    {
      v40 = *(v37 + 8 * v47);
      ++v36;
      if (v40)
      {
        v36 = v47;
        goto LABEL_17;
      }

      continue;
    }

    break;
  }

  v58 = v124;
  v59 = sub_1D9C7BFFC();
  v61 = v60;

  v62 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v62 = v59 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {
    (*v123)(v58, v18);
    v89 = type metadata accessor for ObjectKnowledge();
    return (*(*(v89 - 8) + 56))(v134, 1, 1, v89);
  }

  v63 = sub_1D9C7BFFC();
  v65 = v64;
  v66 = sub_1D9C7C00C();
  v132 = v67;
  v133 = v66;
  v46 = type metadata accessor for ObjectKnowledge();
  v68 = v46[6];
  v69 = sub_1D9C7B80C();
  v70 = *(*(v69 - 8) + 56);
  v71 = v134;
  v70(v134 + v68, 1, 1, v69);
  v70(&v71[v46[10]], 1, 1, v69);
  v72 = sub_1D9C7BFFC();
  v74 = v73;
  v75 = sub_1D9C7DE4C();
  v135 = v65;
  v136 = v63;
  if ((v75 & 1) == 0)
  {

    v130 = 0;
    goto LABEL_43;
  }

  v76 = sub_1D9B14820(1uLL, v72, v74);
  v78 = v77;
  v80 = v79;
  v82 = v81;

  if ((v76 ^ v78) < 0x4000)
  {
LABEL_47:

    v130 = 0;
    v58 = v124;
    goto LABEL_43;
  }

  v83 = v137;
  v84 = sub_1D99C7688(v76, v78, v80, v82, 10);
  v137 = v83;
  if ((v85 & 0x100) != 0)
  {
    v84 = sub_1D99C6AD0(v76, v78, v80, v82, 10);
  }

  v86 = v84;
  v87 = v85;

  v58 = v124;
  if (v87)
  {
    v88 = 0;
  }

  else
  {
    v88 = v86;
  }

  v130 = v88;
LABEL_43:
  v90 = sub_1D9C7C00C();
  v128 = v91;
  v129 = v90;
  v92 = sub_1D9C7BFEC();
  v93 = sub_1D9B451DC(v92);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52520);
  v94 = v58;
  v95 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090) - 8);
  v96 = (*(*v95 + 80) + 32) & ~*(*v95 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1D9C85660;
  v98 = v97 + v96;
  v99 = v95[14];
  sub_1D9C7B97C();
  *(v98 + v99) = MEMORY[0x1E69E7CD0];
  v100 = sub_1D9A44BD0(v97);
  swift_setDeallocating();
  sub_1D99A6AE0(v98, &qword_1ECB52090);
  swift_deallocClassInstance();
  v101 = v119;
  sub_1D9C7BFDC();
  sub_1D9C7BC8C();
  v103 = v102;
  v104 = *(v125 + 8);
  v105 = v121;
  v104(v101, v121);
  v106 = v120;
  sub_1D9C7BFDC();
  sub_1D9C7BC6C();
  v108 = v107;
  v104(v106, v105);
  (*v123)(v94, v131);
  v109 = v134;
  v110 = v135;
  *v134 = v136;
  v109[1] = v110;
  v111 = v132;
  v109[2] = v133;
  v109[3] = v111;
  *(v109 + v46[7]) = 0;
  v112 = (v109 + v46[8]);
  *v112 = 0;
  v112[1] = 0xE000000000000000;
  v113 = (v109 + v46[9]);
  *v113 = 0;
  v113[1] = 0xE000000000000000;
  *(v109 + v46[11]) = MEMORY[0x1E69E7CC0];
  v114 = (v109 + v46[12]);
  v114[2] = 0u;
  v114[3] = 0u;
  *v114 = 0u;
  v114[1] = 0u;
  v115 = v109 + v46[13];
  *v115 = 123711979;
  v115[8] = 0;
  *(v109 + v46[14]) = xmmword_1D9C8CD70;
  v116 = v109 + v46[15];
  *v116 = v130;
  *(v116 + 4) = 2;
  v117 = v128;
  *(v116 + 2) = v129;
  *(v116 + 3) = v117;
  *(v116 + 4) = v93;
  *(v116 + 5) = v42;
  v116[48] = 0;
  *(v116 + 7) = 0;
  *(v116 + 8) = 0xE000000000000000;
  *(v116 + 9) = 0;
  *(v116 + 10) = 0xE000000000000000;
  *(v116 + 11) = v100;
  *(v116 + 12) = v103;
  *(v116 + 13) = v108;
  *(v116 + 28) = 0;
  *(v109 + v46[16]) = 0;
  return (*(*(v46 - 1) + 56))(v109, 0, 1, v46);
}

uint64_t sub_1D9B41274@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v109 = a2;
  v110 = a3;
  v107 = a4;
  v108 = a1;
  v5 = sub_1D9C7D8DC();
  v104 = *(v5 - 8);
  v105 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v103 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7BB6C();
  v101 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v94 - v11;
  v13 = type metadata accessor for StorefrontSignals(0);
  v111 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v94 - v17;
  v19 = sub_1D9C7BFBC();
  v102 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v108;
  v108 = v4;
  v23 = v112;
  v24 = sub_1D9B3E97C(v22, v109, v110);
  if (v23)
  {
    v25 = v23;
LABEL_3:
    v26 = v107;
    v27 = v103;
    static Logger.argos.getter(v103);
    v28 = v25;
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v25;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1D9962000, v29, v30, "Reranker getTopStorefront failed with error %@", v31, 0xCu);
      sub_1D99A6AE0(v32, &qword_1ECB510E8);
      MEMORY[0x1DA7405F0](v32, -1, -1);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    else
    {
    }

    (*(v104 + 8))(v27, v105);
    v54 = type metadata accessor for ObjectKnowledge();
    return (*(*(v54 - 8) + 56))(v26, 1, 1, v54);
  }

  else
  {
    v35 = v24;
    v109 = v18;
    v96 = v12;
    v97 = v9;
    v98 = v7;
    v112 = 0;
    v100 = v21;
    result = sub_1D9C7BFAC();
    v37 = 0;
    v110 = v35;
    v38 = v35 + 64;
    v39 = 1 << *(v35 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v35 + 64);
    v42 = (v39 + 63) >> 6;
    v43 = -INFINITY;
    v99 = (v102 + 1);
    v102 += 2;
    v44 = v108;
    v106 = v19;
    while (1)
    {
      v45 = v109;
      if (!v41)
      {
        break;
      }

LABEL_15:
      sub_1D9B45558(*(v110 + 7) + *(v111 + 72) * (__clz(__rbit64(v41)) | (v37 << 6)), v109, type metadata accessor for StorefrontSignals);
      sub_1D9B455C0(v45, v15, type metadata accessor for StorefrontSignals);
      if (!*&v15[*(v13 + 20)])
      {
        sub_1D9A74A28();
        v25 = swift_allocError();
        *v93 = 4;
        swift_willThrow();

        sub_1D9B45628(v15, type metadata accessor for StorefrontSignals);
        (*v99)(v100, v106);
        goto LABEL_3;
      }

      v48 = v44;
      v49 = v112;
      sub_1D9B403F0(v47);
      v112 = v49;
      if (v49)
      {

        sub_1D9B45628(v15, type metadata accessor for StorefrontSignals);
        (*v99)(v100, v106);
        v25 = v112;
        goto LABEL_3;
      }

      v51 = v50;

      if (v43 >= v51)
      {
        v19 = v106;
      }

      else
      {
        v19 = v106;
        if (*(v44 + 9) < v51)
        {
          v52 = v100;
          (*v99)(v100, v106);
          v53 = v52;
          v44 = v48;
          (*v102)(v53, v15, v19);
          v43 = v51;
        }
      }

      v41 &= v41 - 1;
      result = sub_1D9B45628(v15, type metadata accessor for StorefrontSignals);
    }

    while (1)
    {
      v46 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        return result;
      }

      if (v46 >= v42)
      {
        break;
      }

      v41 = *(v38 + 8 * v46);
      ++v37;
      if (v41)
      {
        v37 = v46;
        goto LABEL_15;
      }
    }

    v55 = v100;
    if (sub_1D9C7BF7C())
    {
      v113 = sub_1D9C7BF7C() % 0xFFFFFFFFuLL;
      v56 = sub_1D9C7E7AC();
      v113 = 81;
      v114 = 0xE100000000000000;
      MEMORY[0x1DA73DF90](v56);

      v110 = v114;
      v111 = v113;
      v57 = sub_1D9C7BF9C();
      v108 = v58;
      v109 = v57;
      v59 = type metadata accessor for ObjectKnowledge();
      v60 = v59[6];
      v61 = sub_1D9C7B80C();
      v62 = *(*(v61 - 8) + 56);
      v63 = v107;
      v62(v107 + v60, 1, 1, v61);
      v62(v63 + v59[10], 1, 1, v61);
      v105 = sub_1D9C7BF7C();
      v64 = sub_1D9C7BF9C();
      v103 = v65;
      v104 = v64;
      v66 = sub_1D9C7BF5C();
      v102 = sub_1D9B451DC(v66);

      v95 = sub_1D9C7BF6C();
      v94 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52520);
      v68 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090) - 8);
      v69 = (*(*v68 + 80) + 32) & ~*(*v68 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1D9C85660;
      v71 = v70 + v69;
      v72 = v68[14];
      sub_1D9C7B97C();
      *(v71 + v72) = MEMORY[0x1E69E7CD0];
      v73 = sub_1D9A44BD0(v70);
      swift_setDeallocating();
      sub_1D99A6AE0(v71, &qword_1ECB52090);
      swift_deallocClassInstance();
      v74 = v96;
      sub_1D9C7BF8C();
      sub_1D9C7BB5C();
      v76 = v75;
      v77 = *(v101 + 8);
      v78 = v74;
      v79 = v98;
      v77(v78, v98);
      v80 = v97;
      sub_1D9C7BF8C();
      sub_1D9C7BB4C();
      v82 = v81;
      v77(v80, v79);
      (*v99)(v55, v106);
      v83 = v110;
      *v63 = v111;
      v63[1] = v83;
      v84 = v108;
      v63[2] = v109;
      v63[3] = v84;
      *(v63 + v59[7]) = 0;
      v85 = (v63 + v59[8]);
      *v85 = 0;
      v85[1] = 0xE000000000000000;
      v86 = (v63 + v59[9]);
      *v86 = 0;
      v86[1] = 0xE000000000000000;
      *(v63 + v59[11]) = MEMORY[0x1E69E7CC0];
      v87 = (v63 + v59[12]);
      v87[2] = 0u;
      v87[3] = 0u;
      *v87 = 0u;
      v87[1] = 0u;
      v88 = v63 + v59[13];
      *v88 = 123711979;
      v88[8] = 0;
      *(v63 + v59[14]) = xmmword_1D9C8CD70;
      v89 = v63 + v59[15];
      *v89 = v105;
      *(v89 + 4) = 3;
      v90 = v103;
      *(v89 + 2) = v104;
      *(v89 + 3) = v90;
      *(v89 + 4) = v102;
      *(v89 + 5) = v43;
      v89[48] = 1;
      v91 = v94;
      *(v89 + 7) = v95;
      *(v89 + 8) = v91;
      *(v89 + 9) = 0;
      *(v89 + 10) = 0xE000000000000000;
      *(v89 + 11) = v73;
      *(v89 + 12) = v76;
      *(v89 + 13) = v82;
      *(v89 + 28) = 0;
      *(v63 + v59[16]) = 0;
      return (*(*(v59 - 1) + 56))(v63, 0, 1, v59);
    }

    else
    {
      (*v99)(v55, v19);
      v92 = type metadata accessor for ObjectKnowledge();
      return (*(*(v92 - 8) + 56))(v107, 1, 1, v92);
    }
  }
}

uint64_t sub_1D9B41D28()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9B41DAC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v5 = *v88;
    if (!*v88)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1D99E8FDC(v8);
      v8 = result;
    }

    v80 = (v8 + 16);
    v81 = *(v8 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v8 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_1D9B4234C((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), v5);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_117;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_119;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v87 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      while (v6 != v14)
      {
        v16 = *(v15 - 4) >= *v15;
        ++v14;
        v15 += 4;
        if ((((v13 < v10) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 16 * v7 - 16;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v22 = (v21 + v11);
            v23 = (v21 + v17);
            v24 = *(v21 + v11);
            v25 = *(v21 + v11 + 8);
            if (v11 != v17 || v22 >= v23 + 1)
            {
              *v22 = *v23;
            }

            v20 = v21 + v17;
            *v20 = v24;
            *(v20 + 8) = v25;
          }

          ++v19;
          v17 -= 16;
          v11 += 16;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
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

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v34 = *(v8 + 24);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_1D99E8FF0((v34 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v35;
    v36 = v8 + 32;
    v37 = (v8 + 32 + 16 * v5);
    *v37 = v9;
    v37[1] = v7;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v38 = *(v8 + 32);
          v39 = *(v8 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_60:
          if (v41)
          {
            goto LABEL_107;
          }

          v54 = (v8 + 16 * v35);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_109;
          }

          v60 = (v36 + 16 * v5);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_114;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v5 = v35 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v35 < 2)
        {
          goto LABEL_115;
        }

        v64 = (v8 + 16 * v35);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_75:
        if (v59)
        {
          goto LABEL_111;
        }

        v67 = (v36 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v35)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_127;
        }

        v75 = (v36 + 16 * (v5 - 1));
        v76 = *v75;
        v77 = (v36 + 16 * v5);
        v78 = v77[1];
        sub_1D9B4234C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_103;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v8 + 16);
        if (v5 >= v79)
        {
          goto LABEL_104;
        }

        v35 = v79 - 1;
        result = memmove((v36 + 16 * v5), v77 + 2, 16 * (v79 - 1 - v5));
        *(v8 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v36 + 16 * v35;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = (v8 + 16 * v35);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_110;
      }

      if (v53 >= v45)
      {
        v71 = (v36 + 16 * v5);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_116;
        }

        if (v40 < v74)
        {
          v5 = v35 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v87;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v26 = *a3;
  v27 = *a3 + 16 * v7;
  v28 = v9 - v7;
LABEL_33:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 8);
    if (*(v30 - 8) >= v31)
    {
LABEL_32:
      ++v7;
      v27 += 16;
      --v28;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v26)
    {
      break;
    }

    v32 = *v30;
    *v30 = *(v30 - 16);
    *(v30 - 8) = v31;
    *(v30 - 16) = v32;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_1D9B4234C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 4 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v19 = v5 + 4;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v21 = v6 - 4;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 4;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v22))
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t (*sub_1D9B42548(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1D9B43120(v7);
  v7[9] = sub_1D9B426FC(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1D9B425F4;
}

uint64_t (*sub_1D9B425F8(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1D9B43154(v5);
  v5[9] = sub_1D9B42C30(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1D9B45B5C;
}

void sub_1D9B4269C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1D9B426FC(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for LandmarkSignals(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB535F8) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_1D99ED894(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_1D9B455C0(*(*v5 + 56) + *(v14 + 72) * v22, v19, type metadata accessor for LandmarkSignals);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_1D9B429D8;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_1D9C14160();
      goto LABEL_16;
    }

    sub_1D9C09A6C(v25, a4 & 1);
    v29 = sub_1D99ED894(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

void sub_1D9B429D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_1D99AB100(v5, v6, &qword_1ECB535F8);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_1D9B455C0(v9, *(v2 + 6), type metadata accessor for LandmarkSignals);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_1D9B455C0(v13, v14, type metadata accessor for LandmarkSignals);
        sub_1D9C12B84(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_1D99AB100(v5, v17, &qword_1ECB535F8);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_1D9B455C0(v9, *(v2 + 7), type metadata accessor for LandmarkSignals);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1D9B455C0(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for LandmarkSignals);
      goto LABEL_10;
    }
  }

  sub_1D99A6AE0(v9, &qword_1ECB535F8);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_1D9B172F8(*(v20 + 48) + 16 * v19);
    sub_1D9C0F914(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_1D99A6AE0(v23, &qword_1ECB535F8);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}