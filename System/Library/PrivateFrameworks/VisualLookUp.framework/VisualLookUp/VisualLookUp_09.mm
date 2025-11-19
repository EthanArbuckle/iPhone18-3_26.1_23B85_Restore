uint64_t sub_1D9A37034(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51EF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  if ((sub_1D9A01074(*a1, *a2) & 1) == 0 || (sub_1D9A01074(a1[1], a2[1]) & 1) == 0 || (sub_1D9A01074(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_12;
  }

  v24 = type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  v14 = *(v24 + 32);
  v15 = *(v11 + 48);
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB512B0);
  v16 = a2 + v14;
  v17 = v15;
  sub_1D99AB100(v16, &v13[v15], &qword_1ECB512B0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v10, &qword_1ECB512B0);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      sub_1D9A37528(&v13[v17], v7, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
      if (sub_1D9A25D50(*v10, *v7))
      {
        sub_1D9C7D3CC();
        sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
        v22 = sub_1D9C7DC2C();
        sub_1D9A374C8(v7, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
        sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
        sub_1D99A6AE0(v13, &qword_1ECB512B0);
        if (v22)
        {
          goto LABEL_7;
        }

LABEL_12:
        v19 = 0;
        return v19 & 1;
      }

      sub_1D9A374C8(v7, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
      sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
      v20 = &qword_1ECB512B0;
LABEL_11:
      sub_1D99A6AE0(v13, v20);
      goto LABEL_12;
    }

    sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
LABEL_10:
    v20 = &qword_1ECB51EF0;
    goto LABEL_11;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1D99A6AE0(v13, &qword_1ECB512B0);
LABEL_7:
  sub_1D9C7D3CC();
  sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v19 = sub_1D9C7DC2C();
  return v19 & 1;
}

uint64_t sub_1D9A37464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A374C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A37528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A375A8(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v35 = *a1;
  v36 = v10;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v38 = a2[2];
  v15 = *v2;
  if (*(v15 + 16))
  {
    v16 = sub_1D99ED894(v38, v14);
    if (v17)
    {
      if (*(v15 + 16))
      {
        v18 = *(*(v15 + 56) + 8 * v16);

        v19 = sub_1D99ED894(v36, v11);
        if (v20)
        {
          v21 = *(*(v15 + 56) + 8 * v19);
          v39 = v15;

          v22 = sub_1D9A37974(v18, v21);

          return v22 & 1;
        }
      }
    }
  }

  v37 = v6;
  static Logger.argos.getter(v8);

  v23 = sub_1D9C7D8BC();
  v24 = sub_1D9C7E0AC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v34 = v5;
    v26 = v25;
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315394;
    v39 = 0;
    v40 = 0xE000000000000000;
    v41 = v27;
    sub_1D9C7E40C();
    HIDWORD(v32) = v24;
    MEMORY[0x1DA73DF90](0xD00000000000001FLL, 0x80000001D9CA5340);
    MEMORY[0x1DA73DF90](v36, v11);
    v36 = v12;
    MEMORY[0x1DA73DF90](0xD000000000000014, 0x80000001D9CA5360);
    MEMORY[0x1DA73DF90](v35, v9);
    v28 = sub_1D9A0E224(v39, v40, &v41);

    *(v26 + 4) = v28;
    *(v26 + 12) = 2080;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1D9C7E40C();
    MEMORY[0x1DA73DF90](0xD00000000000001FLL, 0x80000001D9CA5340);
    MEMORY[0x1DA73DF90](v38, v14);
    MEMORY[0x1DA73DF90](0xD000000000000014, 0x80000001D9CA5360);
    MEMORY[0x1DA73DF90](v36, v13);
    v29 = sub_1D9A0E224(v39, v40, &v41);

    *(v26 + 14) = v29;
    _os_log_impl(&dword_1D9962000, v23, BYTE4(v32), "Invalid input nodes: %s %s", v26, 0x16u);
    v30 = v33;
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v30, -1, -1);
    MEMORY[0x1DA7405F0](v26, -1, -1);

    (*(v37 + 8))(v8, v34);
  }

  else
  {

    (*(v37 + 8))(v8, v5);
  }

  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1D9A37974(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = v3 == *(a1 + 32) && v4 == *(a1 + 40);
  if (v5 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = sub_1D9A37974(a1, Strong);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_1D9A37A10()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_1D9A37A90@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *v3;
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_1D99ED894(*(result + 16), *(result + 24));
  if ((v8 & 1) == 0 || !*(v5 + 16))
  {
    goto LABEL_12;
  }

  v9 = *(*(v5 + 56) + 8 * result);

  v10 = sub_1D99ED894(v6, v7);
  if ((v11 & 1) == 0)
  {

LABEL_12:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v63 = a3;
  v12 = *(*(v5 + 56) + 8 * v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9C85660;
  v14 = v9[3];
  v15 = v9[4];
  v16 = v9[5];
  *(inited + 32) = v9[2];
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 56) = v16;

  v67 = v12;

  for (i = swift_weakLoadStrong(); i; i = swift_weakLoadStrong())
  {
    v18 = i[2];
    v19 = i[3];
    v20 = i[4];
    v21 = i[5];
    v22 = inited;
    v24 = *(inited + 16);
    v23 = *(inited + 24);

    if (v24 >= v23 >> 1)
    {
      inited = sub_1D9AF8F0C((v23 > 1), v24 + 1, 1, v22);
    }

    else
    {
      inited = v22;
    }

    *(inited + 16) = v24 + 1;
    v25 = (inited + 32 * v24);
    v25[4] = v18;
    v25[5] = v19;
    v25[6] = v20;
    v25[7] = v21;
  }

  v66 = inited;

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1D9C85660;
  v27 = v67[3];
  v28 = v67[4];
  v29 = v67[5];
  *(v26 + 32) = v67[2];
  *(v26 + 40) = v27;
  *(v26 + 48) = v28;
  *(v26 + 56) = v29;

  for (j = swift_weakLoadStrong(); j; j = swift_weakLoadStrong())
  {
    v31 = j[2];
    v32 = j[3];
    v33 = j[4];
    v34 = j[5];
    v35 = *(v26 + 16);
    v36 = *(v26 + 24);

    if (v35 >= v36 >> 1)
    {
      v26 = sub_1D9AF8F0C((v36 > 1), v35 + 1, 1, v26);
    }

    *(v26 + 16) = v35 + 1;
    v37 = (v26 + 32 * v35);
    v37[4] = v31;
    v37[5] = v32;
    v37[6] = v33;
    v37[7] = v34;
  }

  v38 = *(v66 + 16);
  if (!v38)
  {
    goto LABEL_41;
  }

  v39 = 0;
  v40 = 0;
  v41 = *(v26 + 16);
  v42 = v26 + 32;
  v43 = v41;
  while (1)
  {
    v44 = v41 - v40;
    if (v41 == v40)
    {
      goto LABEL_41;
    }

    v45 = v38 - v39;
    if (v43 < v38 - v39)
    {
      v45 = v43;
    }

    v46 = (v66 + 56 + 32 * v39);
    while (1)
    {
      if (__OFSUB__(v38, v39))
      {
        __break(1u);
LABEL_44:
        __break(1u);
      }

      if (v44 >= v38 - v39)
      {
        break;
      }

      ++v39;
      v46 += 4;
      if (v39 >= v38)
      {
        goto LABEL_41;
      }
    }

    if (v45 < v44)
    {
      goto LABEL_40;
    }

    if (v39 < 0)
    {
      goto LABEL_44;
    }

    v47 = *(v46 - 1);
    v48 = *v46;
    v65 = v42;
    v49 = (v42 + 32 * v40);
    v50 = *v49;
    v51 = v49[1];
    v53 = v49[2];
    v52 = v49[3];
    v54 = *(v46 - 3) == v50 && *(v46 - 2) == v51;
    if (v54 || (v64 = *(v46 - 1), v61 = v52, v62 = v53, v55 = sub_1D9C7E7DC(), v52 = v61, v53 = v62, v47 = v64, (v55 & 1) != 0))
    {
      v56 = v47 == v53 && v48 == v52;
      if (v56 || (sub_1D9C7E7DC() & 1) != 0)
      {
        break;
      }
    }

    ++v39;
    v42 = v65;
LABEL_40:
    ++v40;
    --v43;
    if (v39 >= v38)
    {
LABEL_41:

      *v63 = 0u;
      v63[1] = 0u;
      return result;
    }
  }

  v57 = *(v46 - 3);
  v58 = *(v46 - 2);
  v59 = *(v46 - 1);
  v60 = *v46;

  *v63 = v57;
  *(v63 + 1) = v58;
  *(v63 + 2) = v59;
  *(v63 + 3) = v60;
  return result;
}

uint64_t type metadata accessor for URLMatchDomainAssignmentRule()
{
  result = qword_1ECB51F38;
  if (!qword_1ECB51F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9A37F2C()
{
  result = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9A37FB4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v5 = v4;
  v121 = type metadata accessor for URLMatchDomainAssignmentRule();
  MEMORY[0x1EEE9AC00](v121);
  v116 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = (&v109 - v15);
  v16 = sub_1D9C7D8DC();
  v119 = *(v16 - 8);
  v120 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v118 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v115 = &v109 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v109 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = a1[7];
  v169 = a1[6];
  v170 = v28;
  v171[0] = a1[8];
  *(v171 + 13) = *(a1 + 141);
  v29 = a1[3];
  v165 = a1[2];
  v166 = v29;
  v30 = a1[5];
  v167 = a1[4];
  v168 = v30;
  v31 = a1[1];
  v163 = *a1;
  v164 = v31;
  if (*(v4 + 32) == 1 && *(a2 + 104) != 1)
  {
    goto LABEL_7;
  }

  v117 = a2;
  v122 = &v109 - v27;
  if ((sub_1D9A38BF0(a3) & 1) == 0)
  {
    goto LABEL_7;
  }

  v32 = *(v4 + 16);
  if (!*(v32 + 16))
  {
    v110 = v13;
    v113 = 0;
    v111 = 0.0;
    goto LABEL_9;
  }

  sub_1D99B1E14(v32);
  v113 = v34;
  if (!v34)
  {
LABEL_7:
    v35 = a1[7];
    a4[6] = a1[6];
    a4[7] = v35;
    a4[8] = a1[8];
    *(a4 + 141) = *(a1 + 141);
    v36 = a1[3];
    a4[2] = a1[2];
    a4[3] = v36;
    v37 = a1[5];
    a4[4] = a1[4];
    a4[5] = v37;
    v38 = a1[1];
    *a4 = *a1;
    a4[1] = v38;
    return sub_1D99AB100(&v163, &v154, &qword_1ECB510B8);
  }

  v110 = v13;
  v111 = v33;
LABEL_9:
  v40 = _s14DetectedResultVMa();
  v41 = *(v40 - 8);
  v42 = v122;
  (*(v41 + 56))(v122, 1, 1, v40);
  v43 = *(v4 + 24);
  if (*(v43 + 16))
  {
    v44 = *(v117 + 56);
    *&v154 = *(v5 + *(v121 + 28));

    sub_1D9A5FF38(v43, &v154, v44, v25);

    sub_1D9A39168(v25, v42);
    sub_1D99AB100(v42, v22, &qword_1ECB510C0);
    LODWORD(v44) = (*(v41 + 48))(v22, 1, v40);
    sub_1D99A6AE0(v22, &qword_1ECB510C0);
    if (v44 == 1)
    {
      v45 = v170;
      a4[6] = v169;
      a4[7] = v45;
      a4[8] = v171[0];
      *(a4 + 141) = *(v171 + 13);
      v46 = v166;
      a4[2] = v165;
      a4[3] = v46;
      v47 = v168;
      a4[4] = v167;
      a4[5] = v47;
      v48 = v164;
      *a4 = v163;
      a4[1] = v48;
      sub_1D99AB100(&v163, &v154, &qword_1ECB510B8);
      sub_1D99A6AE0(v42, &qword_1ECB510C0);
    }
  }

  v112 = v41;
  v109 = v40;
  if (*(v5 + 33) != 1)
  {
    v60 = v118;
    static Logger.argos.getter(v118);
    v61 = v116;
    sub_1D9A391D8(v5, v116, type metadata accessor for URLMatchDomainAssignmentRule);
    v62 = v110;
    sub_1D9A391D8(v117, v110, type metadata accessor for VisualUnderstanding.ImageRegion);
    v63 = sub_1D9C7D8BC();
    v64 = sub_1D9C7E09C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&v143[0] = v117;
      *v65 = 136315394;
      v66 = v121;
      v67 = sub_1D9A15C94(*(v61 + *(v121 + 20)));
      v68 = v61;
      v70 = v69;
      sub_1D9A392A4(v68, type metadata accessor for URLMatchDomainAssignmentRule);
      v71 = sub_1D9A0E224(v67, v70, v143);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      v72 = v62[1];
      v154 = *v62;
      v155 = v72;
      v73 = NormalizedRect.loggingDescription.getter();
      v75 = v74;
      sub_1D9A392A4(v62, type metadata accessor for VisualUnderstanding.ImageRegion);
      v76 = sub_1D9A0E224(v73, v75, v143);

      *(v65 + 14) = v76;
      v77 = v66;
      _os_log_impl(&dword_1D9962000, v63, v64, "Assign %s to region %s", v65, 0x16u);
      v78 = v117;
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v78, -1, -1);
      MEMORY[0x1DA7405F0](v65, -1, -1);

      (*(v119 + 8))(v118, v120);
    }

    else
    {

      sub_1D9A392A4(v62, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9A392A4(v61, type metadata accessor for URLMatchDomainAssignmentRule);
      (*(v119 + 8))(v60, v120);
      v77 = v121;
    }

    v79 = v122;
    v85 = *(v5 + *(v77 + 20));
    v86 = *(v112 + 48);
    v87 = v109;
    v112 += 48;
    v88 = v86(v122, 1, v109);
    LODWORD(v121) = v85;
    if (v88)
    {
      LOBYTE(v143[0]) = v85;
      *&v154 = *(v5 + *(v77 + 28));

      sub_1D9A19958(&v154, &v150);

      v89 = v150;
      v90 = v151;
      v91 = v152;
      v92 = v153;
    }

    else
    {
      v93 = (v79 + *(v87 + 28));
      v89 = *v93;
      v90 = v93[1];
      v91 = v93[2];
      v92 = v93[3];
      v150 = *v93;
      v151 = v90;
      v152 = v91;
      v153 = v92;
    }

    v94 = v86(v79, 1, v87);
    v95 = 0.0;
    v96 = 0;
    if (!v94)
    {
      v96 = *(v122 + *(v87 + 32));
    }

    v97 = v121;
    LOBYTE(v143[0]) = v121;
    if (v113)
    {
      v95 = v111;
    }

    *(v143 + 8) = 0u;
    *(&v143[1] + 8) = 0u;
    BYTE8(v143[2]) = 0;
    v144 = 0u;
    v145 = 0u;
    *&v146 = v89;
    *(&v146 + 1) = v90;
    *&v147 = v91;
    *(&v147 + 1) = v92;
    LODWORD(v148) = 0;
    *(&v148 + 4) = __PAIR64__(LODWORD(v95), v96);
    HIDWORD(v148) = 0;
    LOWORD(v149[0]) = 0;
    *&v149[1] = 0;
    *(&v149[0] + 1) = 0;
    *(&v149[1] + 5) = 0;
    v160 = v169;
    v161 = v170;
    v162[0] = v171[0];
    *(v162 + 13) = *(v171 + 13);
    v156 = v165;
    v157 = v166;
    v158 = v167;
    v159 = v168;
    v154 = v163;
    v155 = v164;
    if (sub_1D99AE104(&v154) == 1)
    {
      goto LABEL_28;
    }

    v100 = sub_1D9A15C94(v154);
    v102 = v101;
    if (v100 == sub_1D9A15C94(v97) && v102 == v103)
    {
    }

    else
    {
      v104 = sub_1D9C7E7DC();

      if ((v104 & 1) == 0)
      {
LABEL_28:
        v131 = v147;
        v132 = v148;
        v133[0] = v149[0];
        *(v133 + 13) = *(v149 + 13);
        v127 = v143[2];
        v128 = v144;
        v129 = v145;
        v130 = v146;
        v98 = v143[0];
        v99 = v143[1];
LABEL_34:
        v125 = v98;
        v126 = v99;
        faiss::NormalizationTransform::~NormalizationTransform(&v125);
        v140 = v131;
        v141 = v132;
        v142[0] = v133[0];
        *(v142 + 13) = *(v133 + 13);
        v136 = v127;
        v137 = v128;
        v138 = v129;
        v139 = v130;
        v134 = v125;
        v135 = v126;
        v105 = v132;
        a4[6] = v131;
        a4[7] = v105;
        a4[8] = v142[0];
        *(a4 + 141) = *(v142 + 13);
        v106 = v137;
        a4[2] = v136;
        a4[3] = v106;
        v107 = v139;
        a4[4] = v138;
        a4[5] = v107;
        v108 = v135;
        *a4 = v134;
        a4[1] = v108;
        sub_1D99A6AE0(v122, &qword_1ECB510C0);
      }
    }

    v140 = v160;
    v141 = v161;
    v142[0] = v162[0];
    *(v142 + 13) = *(v162 + 13);
    v136 = v156;
    v137 = v157;
    v138 = v158;
    v139 = v159;
    v134 = v154;
    v135 = v155;
    v131 = v147;
    v132 = v148;
    v133[0] = v149[0];
    *(v133 + 13) = *(v149 + 13);
    v127 = v143[2];
    v128 = v144;
    v129 = v145;
    v130 = v146;
    v125 = v143[0];
    v126 = v143[1];
    sub_1D9B67854(&v134, &v125, v123);
    sub_1D99AE0B0(v143);
    v131 = v123[6];
    v132 = v123[7];
    v133[0] = v124[0];
    *(v133 + 13) = *(v124 + 13);
    v127 = v123[2];
    v128 = v123[3];
    v129 = v123[4];
    v130 = v123[5];
    v98 = v123[0];
    v99 = v123[1];
    goto LABEL_34;
  }

  v49 = v115;
  static Logger.argos.getter(v115);
  v50 = v114;
  sub_1D9A391D8(v117, v114, type metadata accessor for VisualUnderstanding.ImageRegion);
  v51 = sub_1D9C7D8BC();
  v52 = sub_1D9C7E09C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v143[0] = v54;
    *v53 = 136315138;
    v55 = v50[1];
    v154 = *v50;
    v155 = v55;
    v56 = NormalizedRect.loggingDescription.getter();
    v58 = v57;
    sub_1D9A392A4(v50, type metadata accessor for VisualUnderstanding.ImageRegion);
    v59 = sub_1D9A0E224(v56, v58, v143);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_1D9962000, v51, v52, "Reject domain (String(describing: curDomainInfo?.domain.name)) for region %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    MEMORY[0x1DA7405F0](v54, -1, -1);
    MEMORY[0x1DA7405F0](v53, -1, -1);
  }

  else
  {

    sub_1D9A392A4(v50, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  (*(v119 + 8))(v49, v120);
  v80 = v122;
  sub_1D99D3B54(&v154);
  v81 = v161;
  a4[6] = v160;
  a4[7] = v81;
  a4[8] = v162[0];
  *(a4 + 141) = *(v162 + 13);
  v82 = v157;
  a4[2] = v156;
  a4[3] = v82;
  v83 = v159;
  a4[4] = v158;
  a4[5] = v83;
  v84 = v155;
  *a4 = v154;
  a4[1] = v84;
  sub_1D99A6AE0(v80, &qword_1ECB510C0);
}

uint64_t sub_1D9A38BF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51640);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for DomainAssignmentSignals.ImageMetadata(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DomainAssignmentSignals(0);
  sub_1D99AB100(a1 + *(v15 + 24), v10, &qword_1ECB51640);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D99A6AE0(v10, &qword_1ECB51640);
  }

  else
  {
    v29 = v1;
    sub_1D9A39240(v10, v14);
    sub_1D99AB100(v14, v7, &qword_1ECB51FD0);
    v16 = sub_1D9C7B80C();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (v18(v7, 1, v16) == 1)
    {
      sub_1D99A6AE0(v7, &qword_1ECB51FD0);
    }

    else
    {
      v19 = sub_1D9C7B73C();
      v21 = v20;
      (*(v17 + 8))(v7, v16);
      v22 = sub_1D9A38FE0(v19, v21, *v29);

      if (v22)
      {
        sub_1D9A392A4(v14, type metadata accessor for DomainAssignmentSignals.ImageMetadata);
        return 1;
      }
    }

    v24 = v30;
    sub_1D99AB100(&v14[*(v11 + 20)], v30, &qword_1ECB51FD0);
    if (v18(v24, 1, v16) == 1)
    {
      sub_1D99A6AE0(v24, &qword_1ECB51FD0);
      sub_1D9A392A4(v14, type metadata accessor for DomainAssignmentSignals.ImageMetadata);
    }

    else
    {
      v25 = sub_1D9C7B73C();
      v27 = v26;
      (*(v17 + 8))(v24, v16);
      v28 = sub_1D9A38FE0(v25, v27, v29[1]);

      sub_1D9A392A4(v14, type metadata accessor for DomainAssignmentSignals.ImageMetadata);
      if (v28)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_1D9A38FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = a3 + 40;
  v10 = *(a3 + 16) + 1;
  do
  {
    if (!--v10)
    {
      break;
    }

    v11 = v9 + 16;
    v14 = v9 - 8;
    v12 = *(v9 - 8);
    v13 = *(v14 + 8);
    v19[2] = a1;
    v19[3] = a2;
    v19[0] = v12;
    v19[1] = v13;
    v15 = sub_1D9C7B98C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    sub_1D99A57F8();

    sub_1D9C7E2EC();
    v17 = v16;
    sub_1D99A6AE0(v8, &qword_1ECB515A0);

    v9 = v11;
  }

  while ((v17 & 1) != 0);
  return v10 != 0;
}

uint64_t sub_1D9A39168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A391D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A39240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainAssignmentSignals.ImageMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A392A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9A39304(id a1)
{
  v220 = sub_1D9C7D8DC();
  v2 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v4 = &v195 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v195 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v195 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v214 = &v195 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v215 = &v195 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v216 = &v195 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v213 = &v195 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v212 = &v195 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v217 = &v195 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v195 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v195 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v195 - v31;
  v33 = [a1 bundleIdentifier];
  if (!v33 || (v218 = v2, v219 = a1, v34 = v33, sub_1D9C7DC7C(), v34, v2 = v218, a1 = v219, v35 = sub_1D9C7DE4C(), , (v35 & 1) == 0))
  {
    static Logger.argos.getter(v4);
    v57 = sub_1D9C7D8BC();
    v58 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1D9962000, v57, v58, "Models bundle has inappropriate Bundle ID", v59, 2u);
      MEMORY[0x1DA7405F0](v59, -1, -1);
    }

    (*(v2 + 8))(v4, v220);
    return 0;
  }

  v36 = [a1 infoDictionary];
  if (!v36)
  {
    static Logger.argos.getter(v32);
    v68 = sub_1D9C7D8BC();
    v69 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1D9962000, v68, v69, "Cannot access MLModels Meta bundle Info.plist", v70, 2u);
      MEMORY[0x1DA7405F0](v70, -1, -1);
    }

    (*(v2 + 8))(v32, v220);
    return 0;
  }

  v37 = v36;
  v38 = sub_1D9C7DB4C();

  v39 = sub_1D9A45EA0(MEMORY[0x1E69E7CC0]);
  if (!*(v38 + 16) || (v208 = v39, v40 = sub_1D99ED894(0x63617073656D614ELL, 0xEF736C65646F4D65), (v41 & 1) == 0))
  {

    static Logger.argos.getter(v7);
    v61 = sub_1D9C7D8BC();
    v62 = sub_1D9C7E0AC();
    v63 = os_log_type_enabled(v61, v62);
    v65 = v219;
    v64 = v220;
    if (v63)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v223 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_1D9A0E224(0x63617073656D614ELL, 0xEF736C65646F4D65, &v223);
      _os_log_impl(&dword_1D9962000, v61, v62, "The %s key is missing", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v67);
      MEMORY[0x1DA7405F0](v67, -1, -1);
      MEMORY[0x1DA7405F0](v66, -1, -1);
    }

    (*(v218 + 8))(v7, v64);
    return 0;
  }

  sub_1D99A579C(*(v38 + 56) + 32 * v40, &v223);

  sub_1D99A579C(&v223, v222);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F50);
  v42 = swift_dynamicCast();
  v43 = v219;
  v44 = v220;
  if (!v42)
  {

    static Logger.argos.getter(v10);
    v71 = sub_1D9C7D8BC();
    v72 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v222[0] = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_1D9A0E224(0x63617073656D614ELL, 0xEF736C65646F4D65, v222);
      _os_log_impl(&dword_1D9962000, v71, v72, "The %s key has invalid data", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x1DA7405F0](v74, -1, -1);
      MEMORY[0x1DA7405F0](v73, -1, -1);
    }

    (*(v218 + 8))(v10, v44);
    __swift_destroy_boxed_opaque_existential_0Tm(&v223);
    return 0;
  }

  v45 = v221;
  v205 = sub_1D9A46088(MEMORY[0x1E69E7CC0]);
  static Logger.argos.getter(v28);
  sub_1D9A3E0E0(v25);
  v46 = v218 + 8;
  v47 = *(v218 + 8);
  v47(v28, v44);

  v48 = sub_1D9C7D8BC();
  v49 = sub_1D9C7E09C();

  v50 = os_log_type_enabled(v48, v49);
  v210 = v46;
  v211 = v47;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v222[0] = v52;
    *v51 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51608);
    v53 = sub_1D9C7DB5C();
    v55 = sub_1D9A0E224(v53, v54, v222);

    *(v51 + 4) = v55;
    v44 = v220;
    _os_log_impl(&dword_1D9962000, v48, v49, "MLModelsMetaBundle.init(): namespaceDict = %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x1DA7405F0](v52, -1, -1);
    MEMORY[0x1DA7405F0](v51, -1, -1);
  }

  result = (v47)(v25, v44);
  v76 = v214;
  v75 = v215;
  v77 = 0;
  v78 = v45 + 64;
  v79 = 1 << *(v45 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & *(v45 + 64);
  v82 = (v79 + 63) >> 6;
  v202 = 0x80000001D9CA3A40;
  v209 = (v218 + 16);
  v196 = (v218 + 32);
  *&v56 = 136315394;
  v198 = v56;
  *&v56 = 136315138;
  v197 = v56;
  v83 = v205;
  v200 = v45 + 64;
  v199 = v82;
  v201 = v45;
LABEL_25:
  v84 = v77;
  v205 = v83;
  while (v81)
  {
    v77 = v84;
LABEL_34:
    v89 = __clz(__rbit64(v81)) | (v77 << 6);
    v90 = *(v45 + 56);
    v91 = (*(v45 + 48) + 16 * v89);
    v92 = *v91;
    v93 = *(v90 + 8 * v89);
    v94 = qword_1EDD354B8;
    v206 = v91[1];

    if (v94 != -1)
    {
      swift_once();
    }

    v218 = v93;
    v207 = byte_1EDD354C0;
    v204 = v81;
    if ((byte_1EDD354C0 & 1) == 0)
    {
      goto LABEL_52;
    }

    v95 = [objc_opt_self() mainBundle];
    v96 = [v95 bundleIdentifier];

    if (!v96)
    {
LABEL_43:
      v102 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v102 = &qword_1EDD355A8;
      }

      goto LABEL_48;
    }

    v97 = sub_1D9C7DC7C();
    v99 = v98;

    if (v97 == 0xD00000000000002BLL && v202 == v99)
    {
    }

    else
    {
      v101 = sub_1D9C7E7DC();

      if ((v101 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v102 = &off_1ECB51BA8;
    if (qword_1ECB50988 != -1)
    {
      swift_once();
      v102 = &off_1ECB51BA8;
    }

LABEL_48:
    v103 = *(*v102 + 32);

    v104 = sub_1D9C7DC4C();
    LODWORD(v103) = [v103 BOOLForKey_];

    if (v103)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v105 = __swift_project_value_buffer(v44, qword_1EDD2C990);
      v106 = *v209;
      (*v209)(v217, v105, v44);
      goto LABEL_55;
    }

LABEL_52:
    v107 = v216;
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v108 = __swift_project_value_buffer(v44, qword_1EDD354D8);
    v106 = *v209;
    (*v209)(v217, v108, v44);
    if ((v207 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_55:
    v109 = [objc_opt_self() mainBundle];
    v110 = [v109 bundleIdentifier];

    if (!v110)
    {
      goto LABEL_62;
    }

    v111 = sub_1D9C7DC7C();
    v113 = v112;

    if (v111 == 0xD00000000000002BLL && v202 == v113)
    {
    }

    else
    {
      v114 = sub_1D9C7E7DC();

      if ((v114 & 1) == 0)
      {
LABEL_62:
        v115 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v115 = &qword_1EDD355A8;
        }

        goto LABEL_64;
      }
    }

    v115 = &off_1ECB51BA8;
    if (qword_1ECB50988 != -1)
    {
      swift_once();
      v115 = &off_1ECB51BA8;
    }

LABEL_64:
    v116 = *(*v115 + 32);

    v117 = sub_1D9C7DC4C();
    LODWORD(v116) = [v116 BOOLForKey_];

    if (v116)
    {
      v203 = v106;
      v118 = v44;
      v119 = v75;
      v120 = v76;
      v107 = v216;
      (*v196)(v216, v217, v118);
      goto LABEL_70;
    }

    v107 = v216;
LABEL_67:
    v119 = v75;
    v120 = v76;
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v121 = v220;
    v122 = __swift_project_value_buffer(v220, qword_1EDD354D8);
    v203 = v106;
    v106(v107, v122, v121);
    v211(v217, v121);
LABEL_70:
    v123 = v206;

    v124 = sub_1D9C7D8BC();
    v125 = sub_1D9C7E09C();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v222[0] = v127;
      *v126 = v198;
      *(v126 + 4) = sub_1D9A0E224(v92, v123, v222);
      *(v126 + 12) = 2080;
      v128 = sub_1D9C7DB5C();
      v130 = sub_1D9A0E224(v128, v129, v222);
      v76 = v214;

      *(v126 + 14) = v130;
      v44 = v220;
      _os_log_impl(&dword_1D9962000, v124, v125, "MLModelsMetaBundle.init(): loading trial role %s %s", v126, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v127, -1, -1);
      v131 = v126;
      v75 = v215;
      MEMORY[0x1DA7405F0](v131, -1, -1);

      v211(v107, v44);
    }

    else
    {

      v132 = v220;
      v211(v107, v220);
      v76 = v120;
      v75 = v119;
      v44 = v132;
    }

    v133 = (v204 - 1) & v204;

    v134 = sub_1D9C7E56C();

    if (v134 <= 8)
    {
      v81 = v133;

      v135 = v218;
      if (*(v218 + 16))
      {
        sub_1D99ED894(0x63617073656D616ELL, 0xE900000000000065);
        if (v136)
        {

          v137 = sub_1D9C7E56C();

          if (v137 <= 3)
          {
            if (*(v135 + 16))
            {
              v138 = sub_1D99ED894(0x6D614E6C65646F6DLL, 0xE900000000000065);
              if (v139)
              {
                v174 = (*(v135 + 56) + 16 * v138);
                v175 = *v174;
                v176 = v174[1];

                v177 = v205;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v222[0] = v177;
                v179 = v176;
                v75 = v215;
                result = sub_1D9C115E8(v175, v179, v137, v134, isUniquelyReferenced_nonNull_native);
                v83 = v222[0];
                v45 = v201;
                v78 = v200;
                v82 = v199;
                goto LABEL_25;
              }
            }
          }
        }
      }

      if (!v207)
      {
        goto LABEL_109;
      }

      v140 = [objc_opt_self() mainBundle];
      v141 = [v140 bundleIdentifier];

      if (v141)
      {
        v142 = sub_1D9C7DC7C();
        v144 = v143;

        if (v142 == 0xD00000000000002BLL && v202 == v144)
        {

LABEL_102:
          v160 = &off_1ECB51BA8;
          if (qword_1ECB50988 != -1)
          {
            swift_once();
            v160 = &off_1ECB51BA8;
          }

LABEL_106:
          v161 = *(*v160 + 32);

          v162 = sub_1D9C7DC4C();
          LODWORD(v161) = [v161 BOOLForKey_];

          if (v161)
          {
            v163 = qword_1EDD2C990;
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
              v163 = qword_1EDD2C990;
            }

LABEL_111:
            v164 = __swift_project_value_buffer(v44, v163);
            v203(v75, v164, v44);

            v165 = sub_1D9C7D8BC();
            v166 = sub_1D9C7E0AC();

            if (os_log_type_enabled(v165, v166))
            {
              v167 = swift_slowAlloc();
              v168 = swift_slowAlloc();
              v222[0] = v168;
              *v167 = v197;
              v169 = sub_1D9C7DB5C();
              v171 = v170;

              v172 = v169;
              v75 = v215;
              v173 = sub_1D9A0E224(v172, v171, v222);
              v76 = v214;

              *(v167 + 4) = v173;
              _os_log_impl(&dword_1D9962000, v165, v166, "Malformed trial identifiers: %s", v167, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v168);
              MEMORY[0x1DA7405F0](v168, -1, -1);
              MEMORY[0x1DA7405F0](v167, -1, -1);
            }

            else
            {
            }

            v88 = v75;
            goto LABEL_28;
          }

LABEL_109:
          v163 = qword_1EDD354D8;
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
            v163 = qword_1EDD354D8;
          }

          goto LABEL_111;
        }

        v159 = sub_1D9C7E7DC();

        if (v159)
        {
          goto LABEL_102;
        }
      }

      v160 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v160 = &qword_1EDD355A8;
      }

      goto LABEL_106;
    }

    v81 = v133;
    v204 = v92;

    if (!v207)
    {
LABEL_97:
      v154 = qword_1EDD354D8;
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
        v154 = qword_1EDD354D8;
      }

      goto LABEL_99;
    }

    v145 = [objc_opt_self() mainBundle];
    v146 = [v145 bundleIdentifier];

    if (v146)
    {
      v147 = sub_1D9C7DC7C();
      v149 = v148;

      if (v147 == 0xD00000000000002BLL && v202 == v149)
      {

LABEL_90:
        v151 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v151 = &off_1ECB51BA8;
        }

        goto LABEL_94;
      }

      v150 = sub_1D9C7E7DC();

      if (v150)
      {
        goto LABEL_90;
      }
    }

    v151 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v151 = &qword_1EDD355A8;
    }

LABEL_94:
    v152 = *(*v151 + 32);

    v153 = sub_1D9C7DC4C();
    LODWORD(v152) = [v152 BOOLForKey_];

    if (!v152)
    {
      goto LABEL_97;
    }

    v154 = qword_1EDD2C990;
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
      v154 = qword_1EDD2C990;
    }

LABEL_99:
    v155 = __swift_project_value_buffer(v44, v154);
    v203(v76, v155, v44);
    v156 = v206;

    v157 = sub_1D9C7D8BC();
    v158 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v157, v158))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v222[0] = v86;
      *v85 = v197;
      v87 = sub_1D9A0E224(v204, v156, v222);

      *(v85 + 4) = v87;
      v75 = v215;
      _os_log_impl(&dword_1D9962000, v157, v158, "Unknown role: %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v86);
      MEMORY[0x1DA7405F0](v86, -1, -1);
      MEMORY[0x1DA7405F0](v85, -1, -1);
    }

    else
    {
    }

    v88 = v76;
LABEL_28:
    result = (v211)(v88, v44);
    v84 = v77;
    v45 = v201;
    v78 = v200;
    v82 = v199;
  }

  while (1)
  {
    v77 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      __break(1u);
      return result;
    }

    if (v77 >= v82)
    {
      break;
    }

    v81 = *(v78 + 8 * v77);
    ++v84;
    if (v81)
    {
      goto LABEL_34;
    }
  }

  v180 = v212;
  static Logger.argos.getter(v212);
  v181 = v213;
  sub_1D9A3E0E0(v213);
  v182 = v211;
  v211(v180, v44);

  v183 = sub_1D9C7D8BC();
  v184 = sub_1D9C7E09C();

  if (os_log_type_enabled(v183, v184))
  {
    v185 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v222[0] = v186;
    *v185 = v198;
    sub_1D9C7B80C();
    sub_1D9A3B0BC();
    v187 = sub_1D9C7DB5C();
    v189 = v188;

    v190 = sub_1D9A0E224(v187, v189, v222);

    *(v185 + 4) = v190;
    *(v185 + 12) = 2080;
    v191 = sub_1D9C7DB5C();
    v193 = v192;

    v194 = sub_1D9A0E224(v191, v193, v222);

    *(v185 + 14) = v194;
    _os_log_impl(&dword_1D9962000, v183, v184, "MLModelsMetaBundle.init(): %s %s", v185, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v186, -1, -1);
    MEMORY[0x1DA7405F0](v185, -1, -1);

    v182(v213, v220);
  }

  else
  {

    v182(v181, v44);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v223);
  return v208;
}

uint64_t sub_1D9A3AD88(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F48);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; result = sub_1D9A3B054(v5))
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(a1 + 56);
    v16 = *(*(a1 + 48) + v14);
    v17 = sub_1D9C7B80C();
    v18 = *(v17 - 8);
    v19 = v15 + *(v18 + 72) * v14;
    v20 = *(v3 + 48);
    (*(v18 + 16))(&v5[v20], v19, v17);
    *v5 = v16;
    sub_1D9A92BC4(v16, &v5[v20], v22);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(a1 + 64 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A3AF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v11 << 6);
      v14 = *(a1 + 56) + 24 * v13;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(*(a1 + 48) + v13);
      v18 = *(v14 + 16);

      v20 = MEMORY[0x1DA73F560](v19);
      sub_1D9A93530(v17, v15, v16, v18, a2, a3);
      objc_autoreleasePoolPop(v20);

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1D9A3B054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9A3B0BC()
{
  result = qword_1ECB51F58;
  if (!qword_1ECB51F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51F58);
  }

  return result;
}

void sub_1D9A3B158()
{
  sub_1D9A3B1F0();
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9A3B1F0()
{
  if (!qword_1EDD2C618)
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(255);
    v0 = sub_1D9C7DBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2C618);
    }
  }
}

void sub_1D9A3B2A0()
{
  sub_1D9A003F4();
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D9A3B324@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1D9A3B34C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1D9A3B368()
{
  sub_1D9C7E8DC();
  sub_1D9C7DBDC();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9A3B3D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A3D018();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D9A3B420()
{
  sub_1D9C7E8DC();
  sub_1D9C7DBDC();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9A3B488()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD419D0);
  __swift_project_value_buffer(v0, qword_1EDD419D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C86430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "finger_print_model_name";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parse_flow_domin_model_mapper";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "parse_camera_flow_domin_model_mapper";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "search_flow_domin_model_mapper";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "search_victoria_domin_model_mapper";
  *(v15 + 8) = 34;
  *(v15 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A3B71C()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1D9C7D5CC();
      }

      else if (result == 2)
      {
        sub_1D9A3B820();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1D9A3B918();
          break;
        case 4:
          sub_1D9A3BA10();
          break;
        case 5:
          sub_1D9A3BB08();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1D9A3B820()
{
  sub_1D9C7D39C();
  type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
  sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
  sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
  return sub_1D9C7D4AC();
}

uint64_t sub_1D9A3B918()
{
  sub_1D9C7D39C();
  type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
  sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
  sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
  return sub_1D9C7D4AC();
}

uint64_t sub_1D9A3BA10()
{
  sub_1D9C7D39C();
  type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
  sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
  sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
  return sub_1D9C7D4AC();
}

uint64_t sub_1D9A3BB08()
{
  sub_1D9C7D39C();
  type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
  sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
  sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
  return sub_1D9C7D4AC();
}

uint64_t sub_1D9A3BC00()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    v6 = v1;
    if (*(v0[2] + 16))
    {
      sub_1D9C7D39C();
      type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
      sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      result = sub_1D9C7D6DC();
      if (v1)
      {
        return result;
      }

      v6 = 0;
    }

    if (*(v0[4] + 16))
    {
      sub_1D9C7D39C();
      type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
      sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      result = sub_1D9C7D6DC();
      if (v6)
      {
        return result;
      }

      v6 = 0;
    }

    if (*(v0[5] + 16))
    {
      sub_1D9C7D39C();
      type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
      sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      v5 = v6;
      result = sub_1D9C7D6DC();
      if (v6)
      {
        return result;
      }
    }

    else
    {
      v5 = v6;
    }

    if (!*(v0[3] + 16) || (sub_1D9C7D39C(), type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0), sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels), sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels), result = sub_1D9C7D6DC(), !v5))
    {
      type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A3BFC8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  a1[2] = sub_1D9A43FD0(MEMORY[0x1E69E7CC0]);
  a1[3] = sub_1D9A43FD0(v2);
  a1[4] = sub_1D9A43FD0(v2);
  a1[5] = sub_1D9A43FD0(v2);
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A3C05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D9A3C0D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D9A3C198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A3CB8C(&qword_1ECB51F70, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A3C238(uint64_t a1)
{
  v2 = sub_1D9A3CB8C(&qword_1EDD2E4A8, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A3C2A4()
{
  sub_1D9A3CB8C(&qword_1EDD2E4A8, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A3C324()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB70F00);
  __swift_project_value_buffer(v0, qword_1ECB70F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PARSE";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SEARCH";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SEARCH_VICTORIA";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A3C558()
{
  result = MEMORY[0x1DA73DF90](0x4D6E69616D6F442ELL, 0xED0000736C65646FLL);
  qword_1ECB70F18 = 0xD00000000000002FLL;
  unk_1ECB70F20 = 0x80000001D9CA5CE0;
  return result;
}

uint64_t sub_1D9A3C5D0()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD419E8);
  __swift_project_value_buffer(v0, qword_1EDD419E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D9C85660;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "domain_model_names";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1D9C7D81C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A3C73C()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D57C();
    }
  }

  return result;
}

uint64_t sub_1D9A3C7AC()
{
  if (!*(*v0 + 16) || (result = sub_1D9C7D7AC(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A3C834()
{
  if (qword_1ECB509B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECB70F18;

  return v0;
}

uint64_t sub_1D9A3C8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A3CB8C(&qword_1ECB51F78, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A3C96C(uint64_t a1)
{
  v2 = sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A3C9D8()
{
  sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A3CA54(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1D9A1EF04(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A3CB8C(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A3CB8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9A3CD84(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  sub_1D9A00AB0(a1[2], a2[2]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1D9A00AB0(a1[3], a2[3]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_1D9A00AB0(a1[4], a2[4]);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_1D9A00AB0(a1[5], a2[5]);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A3CB8C(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

unint64_t sub_1D9A3CEAC()
{
  result = qword_1ECB51F80;
  if (!qword_1ECB51F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51F80);
  }

  return result;
}

unint64_t sub_1D9A3CF04()
{
  result = qword_1ECB51F88;
  if (!qword_1ECB51F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51F88);
  }

  return result;
}

unint64_t sub_1D9A3CF6C()
{
  result = qword_1ECB51F98;
  if (!qword_1ECB51F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51F98);
  }

  return result;
}

unint64_t sub_1D9A3CFC4()
{
  result = qword_1ECB51FA0;
  if (!qword_1ECB51FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FA0);
  }

  return result;
}

unint64_t sub_1D9A3D018()
{
  result = qword_1ECB51FA8;
  if (!qword_1ECB51FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FA8);
  }

  return result;
}

uint64_t sub_1D9A3D06C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  sub_1D99A85E0(a1, &v14 - v4);
  Context = type metadata accessor for VisualQueryContext();
  if ((*(*(Context - 8) + 48))(v5, 1, Context) == 1)
  {
    sub_1D99A6AE0(v5, &unk_1ECB51B10);
    sub_1D9C7DC7C();
  }

  v8 = *(v5 + 5);
  v7 = *(v5 + 6);

  sub_1D9A3DE74(v5, type metadata accessor for VisualQueryContext);
  v9 = sub_1D9C7DC7C();
  if (!v7)
  {
  }

  if (v9 == v8 && v7 == v10)
  {

    goto LABEL_12;
  }

  v12 = sub_1D9C7E7DC();

  if (v12)
  {
LABEL_12:
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t sub_1D9A3D1F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = sub_1D9C7DCDC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7D8DC();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v23 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66 - v26;
  *v27 = sub_1D9A453D0(MEMORY[0x1E69E7CC0]);
  *(v27 + 4) = 0;
  sub_1D9C7D3BC();
  v28 = *(v23 + 32);
  v29 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  (*(*(v29 - 8) + 56))(&v27[v28], 1, 1, v29);
  v30 = *(v23 + 36);
  v31 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  (*(*(v31 - 8) + 56))(&v27[v30], 1, 1, v31);
  v32 = sub_1D9A75D94();
  v68 = v9;
  v72 = v12;
  if (v32)
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v33 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v33 = &qword_1EDD355A8;
  }

  v34 = *(*v33 + 32);

  v35 = sub_1D9C7DC4C();
  LODWORD(v34) = [v34 BOOLForKey_];

  if (v34)
  {
    v71 = a1;
    static Logger.argos.getter(v22);
    sub_1D9A3E0E0(v19);
    v36 = *(v74 + 8);
    v36(v22, v75);
    v37 = sub_1D9C7D8BC();
    v38 = sub_1D9C7E09C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D9962000, v37, v38, "OCR is disabled due to InternalSettings config", v39, 2u);
      MEMORY[0x1DA7405F0](v39, -1, -1);
    }

    v36(v19, v75);
    v27[8] = 0;
    a1 = v71;
  }

  v40 = [objc_opt_self() defaultManager];
  v41 = sub_1D9C7DC4C();
  v42 = [v40 contentsAtPath_];

  if (v42)
  {
    v43 = sub_1D9C7B87C();
    v45 = v44;

    v46 = sub_1D9B88EB8(v43, v45);
    v54 = v53;
    v71 = a1;
    v55 = v46;
    sub_1D99A5748(v43, v45);

    sub_1D9C7DCBC();
    v72 = v55;
    sub_1D9C7DC9C();
    sub_1D9A3DD50();
    memset(v76, 0, sizeof(v76));
    v77 = 0;
    v56 = v69;
    sub_1D9C7D69C();
    sub_1D9A3DE74(v27, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D9A3DE0C(v56, v27, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v57 = sub_1D9A75D94();
    if (v57)
    {
      if (qword_1ECB50988 != -1)
      {
        swift_once();
      }

      v58 = &off_1ECB51BA8;
    }

    else
    {
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
      }

      v58 = &qword_1EDD355A8;
    }

    v59 = *(*v58 + 32);

    v60 = sub_1D9C7DC4C();
    LODWORD(v59) = [v59 BOOLForKey_];

    if (v59)
    {
      v61 = v66;
      static Logger.argos.getter(v66);
      sub_1D9A3E0E0(v67);
      v62 = *(v74 + 8);
      v62(v61, v75);
      v63 = sub_1D9C7D8BC();
      v64 = sub_1D9C7E09C();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_1D9962000, v63, v64, "OCR is disabled due to InternalSettings config", v65, 2u);
        MEMORY[0x1DA7405F0](v65, -1, -1);
      }

      sub_1D99A5748(v72, v54);

      v62(v67, v75);
      v27[8] = 0;
    }

    else
    {
      sub_1D99A5748(v72, v54);
    }
  }

  else
  {

    v47 = v72;
    static Logger.argos.getter(v72);

    v48 = sub_1D9C7D8BC();
    v49 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v76[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1D9A0E224(a1, a2, v76);
      _os_log_impl(&dword_1D9962000, v48, v49, "Failed to load SearchConfig at path %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x1DA7405F0](v51, -1, -1);
      MEMORY[0x1DA7405F0](v50, -1, -1);
    }

    (*(v74 + 8))(v47, v75);
  }

  return sub_1D9A3DE0C(v27, v73, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
}

uint64_t sub_1D9A3DBF4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = *v2;
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = sub_1D99ED894(a1, a2);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  sub_1D9A3DDA8(*(v12 + 56) + *(v6 + 72) * v13, v8);
  sub_1D9A3DE0C(v8, v11, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
  v15 = v11[2];
  sub_1D9A3DE74(v11, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
  return v15;
}

unint64_t sub_1D9A3DD50()
{
  result = qword_1EDD30820;
  if (!qword_1EDD30820)
  {
    type metadata accessor for Argos_Protos_Queryflow_SearchConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD30820);
  }

  return result;
}

uint64_t sub_1D9A3DDA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A3DE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A3DE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static Logger.argos.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  if (byte_1EDD354C0 != 1)
  {
    goto LABEL_15;
  }

  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v2 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v2 = &qword_1EDD355A8;
  }

  v3 = *(*v2 + 32);

  v4 = sub_1D9C7DC4C();
  LODWORD(v3) = [v3 BOOLForKey_];

  if (v3)
  {
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
    }

    v5 = qword_1EDD2C990;
  }

  else
  {
LABEL_15:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v5 = qword_1EDD354D8;
  }

  v6 = sub_1D9C7D8DC();
  v7 = __swift_project_value_buffer(v6, v5);
  v8 = *(*(v6 - 8) + 16);

  return v8(a1, v7, v6);
}

uint64_t sub_1D9A3E0E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  if (byte_1EDD354C0 != 1)
  {
    goto LABEL_13;
  }

  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v3 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v3 = &qword_1EDD355A8;
  }

  v4 = *(*v3 + 32);

  v5 = sub_1D9C7DC4C();
  LODWORD(v4) = [v4 BOOLForKey_];

  if (v4)
  {
    v6 = sub_1D9C7D8DC();
    v7 = *(*(v6 - 8) + 16);
    v8 = v6;
    v9 = a1;
    v10 = v1;
  }

  else
  {
LABEL_13:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v11 = sub_1D9C7D8DC();
    v10 = __swift_project_value_buffer(v11, qword_1EDD354D8);
    v7 = *(*(v11 - 8) + 16);
    v9 = a1;
    v8 = v11;
  }

  return v7(v9, v10, v8);
}

uint64_t sub_1D9A3E2EC()
{
  v0 = sub_1D9C7D8DC();
  __swift_allocate_value_buffer(v0, qword_1EDD2C990);
  __swift_project_value_buffer(v0, qword_1EDD2C990);
  return sub_1D9C7D8CC();
}

uint64_t sub_1D9A3E36C()
{
  v0 = sub_1D9C7D8DC();
  __swift_allocate_value_buffer(v0, qword_1EDD354D8);
  __swift_project_value_buffer(v0, qword_1EDD354D8);
  sub_1D9A3E8F8();
  sub_1D9C7E24C();
  return sub_1D9C7D8EC();
}

uint64_t sub_1D9A3E3D4()
{
  result = os_variant_has_internal_ui();
  byte_1EDD354C0 = result;
  return result;
}

uint64_t sub_1D9A3E3FC()
{
  sub_1D9A3E8F8();
  result = sub_1D9C7E25C();
  qword_1EDD2A988 = result;
  return result;
}

id static VILogger.log.getter()
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  if (byte_1EDD354C0 == 1)
  {
    if (qword_1EDD2A980 != -1)
    {
      swift_once();
    }

    v0 = qword_1EDD2A988;

    return v0;
  }

  else
  {
    sub_1D9A3E8F8();
    return sub_1D9C7E24C();
  }
}

uint64_t static VILogger.shouldLogInternalMessage.getter()
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  return byte_1EDD354C0;
}

id VILogger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VILogger.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VILogger();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VILogger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VILogger();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s12VisualLookUp8VILoggerC31shouldLogInternalVerboseMessageSbvgZ_0()
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  if (byte_1EDD354C0 != 1)
  {
    return 0;
  }

  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v0 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v0 = &qword_1EDD355A8;
  }

  v2 = *(*v0 + 32);

  v3 = sub_1D9C7DC4C();
  v4 = [v2 BOOLForKey_];

  return v4;
}

unint64_t sub_1D9A3E8F8()
{
  result = qword_1EDD35480;
  if (!qword_1EDD35480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD35480);
  }

  return result;
}

id _s12VisualLookUp8VILoggerC10verboseLogSo9OS_os_logCvgZ_0()
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  if (byte_1EDD354C0 != 1)
  {
    goto LABEL_17;
  }

  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v0 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v0 = &qword_1EDD355A8;
  }

  v1 = *(*v0 + 32);

  v2 = sub_1D9C7DC4C();
  LODWORD(v1) = [v1 BOOLForKey_];

  if (v1)
  {
    if (qword_1EDD2A980 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDD2A988;

    return v3;
  }

  else
  {
LABEL_17:
    sub_1D9A3E8F8();
    return sub_1D9C7E24C();
  }
}

VisualLookUp::MLEngineType_optional __swiftcall MLEngineType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9C7E56C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MLEngineType.rawValue.getter()
{
  v1 = 0x6F73736572707365;
  if (*v0 != 1)
  {
    v1 = 13669;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69736976;
  }
}

uint64_t sub_1D9A3EBC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6F73736572707365;
  if (v2 != 1)
  {
    v4 = 13669;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F69736976;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6F73736572707365;
  if (*a2 != 1)
  {
    v8 = 13669;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F69736976;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9C7E7DC();
  }

  return v11 & 1;
}

unint64_t sub_1D9A3ECB4()
{
  result = qword_1ECB51FB0;
  if (!qword_1ECB51FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FB0);
  }

  return result;
}

uint64_t sub_1D9A3ED08()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9A3ED9C()
{
  sub_1D9C7DD6C();
}

uint64_t sub_1D9A3EE1C()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

void sub_1D9A3EEB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6F73736572707365;
  if (v2 != 1)
  {
    v5 = 13669;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F69736976;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D9A3EF18()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    VTPixelTransferSessionInvalidate(v1);
  }

  return swift_deallocClassInstance();
}

void sub_1D9A3EF90(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, __CVBuffer *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, uint64_t a11)
{
  sub_1D99A83E8(a1, v49);
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  v21 = sub_1D9AFD4B8(v49, a2);

  v22 = *(a3 + 24);
  if (!v22)
  {
    sub_1D99A182C();
    swift_allocError();
    *v27 = 0xD000000000000018;
    *(v27 + 8) = 0x80000001D9CA5F40;
    *(v27 + 16) = 6;
    swift_willThrow();
    goto LABEL_5;
  }

  v50 = v21;
  v24 = a4[3];
  v23 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v24);
  v25 = *(v23 + 32);
  v26 = v22;
  v25(v46, v24, v23);
  if (v11)
  {

    return;
  }

  v28 = v47;
  v29 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v30 = (*(v29 + 24))(v28, v29);
  Width = CVPixelBufferGetWidth(a5);
  Height = CVPixelBufferGetHeight(a5);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a5);
  v45[0] = a6;
  v45[1] = a7;
  v45[2] = a8;
  v45[3] = a9;
  v34 = sub_1D9B1CEB8(v30, PixelFormatType, v45, a11, Width, Height);

  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  v35 = CVPixelBufferGetWidth(v34);
  v36 = CVPixelBufferGetHeight(v34);
  v37 = v35;
  v38 = CVPixelBufferGetWidth(a5);
  v39 = CVPixelBufferGetHeight(a5);
  if (v37 == v38 && v36 == v39)
  {
    v44 = VTPixelTransferSessionTransferImage(v26, v34, a5);
    if (v44 != sub_1D9C7D92C())
    {
      v41 = 0x80000001D9CA5F80;
      sub_1D99A182C();
      swift_allocError();
      v43 = 0xD000000000000018;
      goto LABEL_14;
    }

    sub_1D9AFCCA4();
LABEL_5:

    return;
  }

  v41 = 0x80000001D9CA5F60;
  sub_1D99A182C();
  swift_allocError();
  v43 = 0xD00000000000001FLL;
LABEL_14:
  *v42 = v43;
  *(v42 + 8) = v41;
  *(v42 + 16) = 6;
  swift_willThrow();
}

double sub_1D9A3F368()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53580);
  v0 = swift_allocObject();
  *(v0 + 40) = 0;
  result = 0.0;
  *(v0 + 16) = xmmword_1D9C8B510;
  *(v0 + 32) = 0;
  qword_1EDD2AED0 = v0;
  return result;
}

uint64_t sub_1D9A3F3B8(uint64_t *a1)
{
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = v26 - v9;
  v11 = a1[2];
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  a1[2] = v12;
  v13 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  *a1 = v13;
  v14 = a1[1];
  if (v14 < v13)
  {
    a1[1] = v13;
    v14 = v13;
  }

  static Logger.argos.getter(v26 - v9);
  sub_1D9A3E0E0(v7);
  v27 = *(v4 + 8);
  v27(v10, v3);
  v15 = sub_1D9C7D8BC();
  v16 = sub_1D9C7E09C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26[1] = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26[0] = v3;
    v20 = v19;
    v31 = v19;
    *v18 = 136315138;
    v28 = v13;
    v29 = v14;
    v30 = v12;
    v21 = sub_1D9C7DD0C();
    v23 = sub_1D9A0E224(v21, v22, &v31);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1D9962000, v15, v16, "ProcessInputImageEspresso.init(): %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x1DA7405F0](v20, -1, -1);
    MEMORY[0x1DA7405F0](v18, -1, -1);

    v24 = v7;
    v25 = v26[0];
  }

  else
  {

    v24 = v7;
    v25 = v3;
  }

  return (v27)(v24, v25);
}

void sub_1D9A3F618(uint64_t *a1)
{
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  v10 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v10;
    v11 = a1[1];
    if (v11 < v10)
    {
      a1[1] = v10;
      v11 = v10;
    }

    v26 = a1[2];
    static Logger.argos.getter(v25 - v8);
    sub_1D9A3E0E0(v6);
    v12 = *(v4 + 8);
    v12(v9, v3);
    v13 = sub_1D9C7D8BC();
    v14 = v3;
    v15 = sub_1D9C7E09C();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      v25[0] = v14;
      v17 = v16;
      v18 = swift_slowAlloc();
      v25[1] = v1;
      v19 = v18;
      v30 = v18;
      *v17 = 136315138;
      v27 = v10;
      v28 = v11;
      v29 = v26;
      v20 = sub_1D9C7DD0C();
      v22 = sub_1D9A0E224(v20, v21, &v30);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1D9962000, v13, v15, "ProcessInputImageEspresso.deinit(): %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1DA7405F0](v19, -1, -1);
      MEMORY[0x1DA7405F0](v17, -1, -1);

      v23 = v6;
      v24 = v25[0];
    }

    else
    {

      v23 = v6;
      v24 = v14;
    }

    v12(v23, v24);
  }
}

uint64_t sub_1D9A3F86C()
{
  if (qword_1EDD2AEC8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD2AED0;
  os_unfair_lock_lock((qword_1EDD2AED0 + 40));
  sub_1D9A3F618((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1D9A3F934(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, double *a6, uint64_t a7)
{
  v14 = *a6;
  v15 = a6[1];
  v16 = a6[2];
  v17 = a6[3];
  sub_1D99A83E8(a1, v37);
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  sub_1D9AFD4B8(v37, a7);

  sub_1D9C7D92C();
  v18 = *(v7 + 16);
  v19 = [v18 setScalingMode_];
  if (v19 != sub_1D9C7D92C())
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1D9C7E40C();
    MEMORY[0x1DA73DF90](0xD000000000000032, 0x80000001D9CA5FA0);
    v38 = v19;
LABEL_7:
    v26 = sub_1D9C7E7AC();
    MEMORY[0x1DA73DF90](v26);

    v27 = v33;
    v28 = v34;
    sub_1D99A182C();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = 6;
    swift_willThrow();
    goto LABEL_8;
  }

  v20 = [v18 setFillColorBGRA_];
  if (v20 != sub_1D9C7D92C())
  {
    sub_1D9C7E40C();

    v33 = 0xD000000000000030;
    v34 = 0x80000001D9CA5FE0;
    v38 = v20;
    goto LABEL_7;
  }

  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  (*(v22 + 32))(&v33, v21, v22);
  if (!v8)
  {
    v23 = v35;
    v24 = v36;
    __swift_project_boxed_opaque_existential_1(&v33, v35);
    v25 = (*(v24 + 24))(v23, v24);
    v31 = v25;
    v32 = [v18 cropScaleImageFromSource:v25 destination:a3 normalizedBoundingBox:1 bottomLeftBoxOrigin:{v14, v15, v16, v17}];

    __swift_destroy_boxed_opaque_existential_0Tm(&v33);
    if (v32 != sub_1D9C7D92C())
    {
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_1D9C7E40C();
      MEMORY[0x1DA73DF90](0xD000000000000032, 0x80000001D9CA6020);
      v38 = v32;
      goto LABEL_7;
    }
  }

LABEL_8:
  sub_1D9AFCCA4();
}

uint64_t sub_1D9A3FCB0(double a1)
{
  v2 = v1;
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  Width = CVPixelBufferGetWidth(v2);
  result = CVPixelBufferGetHeight(v2);
  if (Width < 1 || result < 1)
  {
    static Logger.argos.getter(v7);
    v14 = sub_1D9C7D8BC();
    v18 = sub_1D9C7E09C();
    if (!os_log_type_enabled(v14, v18))
    {
      v17 = 1;
      v10 = v7;
      goto LABEL_17;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D9962000, v14, v18, "Image width and/or height was non-positive.", v16, 2u);
    v17 = 1;
    v10 = v7;
LABEL_15:
    MEMORY[0x1DA7405F0](v16, -1, -1);
LABEL_17:

    (*(v5 + 8))(v10, v4);
    sub_1D9A3FF6C();
    swift_allocError();
    *v19 = v17;
    return swift_willThrow();
  }

  if (result >= Width)
  {
    v13 = Width;
  }

  else
  {
    v13 = result;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (v13 <= a1)
  {
    return v2;
  }

  result = VIRescaleCVPixelBufferUsingVTSession(v2, a1);
  if (!result)
  {
    static Logger.argos.getter(v10);
    v14 = sub_1D9C7D8BC();
    v15 = sub_1D9C7E09C();
    if (!os_log_type_enabled(v14, v15))
    {
      v17 = 0;
      goto LABEL_17;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D9962000, v14, v15, "Failed to rescale CVPixelBuffer", v16, 2u);
    v17 = 0;
    goto LABEL_15;
  }

  return result;
}

unint64_t sub_1D9A3FF6C()
{
  result = qword_1ECB51FB8;
  if (!qword_1ECB51FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FB8);
  }

  return result;
}

unint64_t sub_1D9A3FFD4()
{
  result = qword_1ECB51FC0;
  if (!qword_1ECB51FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FC0);
  }

  return result;
}

uint64_t type metadata accessor for OverlapRegionDomainAssignmentRule()
{
  result = qword_1EDD31230;
  if (!qword_1EDD31230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9A4009C()
{
  result = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1D9A40124@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v53 = type metadata accessor for OverlapRegionDomainAssignmentRule();
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v21 = a1[7];
  v63 = a1[6];
  v64 = v21;
  v65[0] = a1[8];
  *(v65 + 13) = *(a1 + 141);
  v22 = a1[3];
  v59 = a1[2];
  v60 = v22;
  v23 = a1[5];
  v61 = a1[4];
  v62 = v23;
  v24 = a1[1];
  v57 = *a1;
  v58 = v24;
  if (*(a2 + 104))
  {
    goto LABEL_2;
  }

  v30 = &v51 - v19;
  v52 = v20;
  v54 = v18;
  if ((sub_1D9A405A4(a2, a3) & 1) == 0)
  {
    static Logger.argos.getter(v16);
    sub_1D9A3E0E0(v13);
    v39 = *(v52 + 8);
    v39(v16, v54);
    v40 = sub_1D9C7D8BC();
    v41 = sub_1D9C7E09C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D9962000, v40, v41, "No satisfied overlap regions.", v42, 2u);
      MEMORY[0x1DA7405F0](v42, -1, -1);
    }

    v39(v13, v54);
    v43 = v64;
    a4[6] = v63;
    a4[7] = v43;
    a4[8] = v65[0];
    *(a4 + 141) = *(v65 + 13);
    v44 = v60;
    a4[2] = v59;
    a4[3] = v44;
    v45 = v62;
    a4[4] = v61;
    a4[5] = v45;
    v28 = v57;
    v29 = v58;
    goto LABEL_10;
  }

  if (*(v4 + 16) != 1)
  {
LABEL_2:
    v25 = a1[7];
    a4[6] = a1[6];
    a4[7] = v25;
    a4[8] = a1[8];
    *(a4 + 141) = *(a1 + 141);
    v26 = a1[3];
    a4[2] = a1[2];
    a4[3] = v26;
    v27 = a1[5];
    a4[4] = a1[4];
    a4[5] = v27;
    v28 = *a1;
    v29 = a1[1];
LABEL_10:
    *a4 = v28;
    a4[1] = v29;
    sub_1D99D39B8(&v57, v55);
    return result;
  }

  static Logger.argos.getter(v30);
  sub_1D9A40DCC(v4, v10, type metadata accessor for OverlapRegionDomainAssignmentRule);
  v31 = sub_1D9C7D8BC();
  v32 = sub_1D9C7E09C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v55[0] = v34;
    *v33 = 136315138;
    v35 = sub_1D9A15C94(v10[*(v53 + 20)]);
    v37 = v36;
    sub_1D9A40E34(v10, type metadata accessor for OverlapRegionDomainAssignmentRule);
    v38 = sub_1D9A0E224(v35, v37, v55);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1D9962000, v31, v32, "Reject %s as it has an overlap region.", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x1DA7405F0](v34, -1, -1);
    MEMORY[0x1DA7405F0](v33, -1, -1);
  }

  else
  {

    sub_1D9A40E34(v10, type metadata accessor for OverlapRegionDomainAssignmentRule);
  }

  (*(v52 + 8))(v30, v54);
  sub_1D99D3B54(v55);
  v47 = v55[7];
  a4[6] = v55[6];
  a4[7] = v47;
  a4[8] = v56[0];
  *(a4 + 141) = *(v56 + 13);
  v48 = v55[3];
  a4[2] = v55[2];
  a4[3] = v48;
  v49 = v55[5];
  a4[4] = v55[4];
  a4[5] = v49;
  result = *v55;
  v50 = v55[1];
  *a4 = v55[0];
  a4[1] = v50;
  return result;
}

uint64_t sub_1D9A405A4(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for OverlapRegionDomainAssignmentRule();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v86 - v9;
  v10 = sub_1D9C7D8DC();
  v92 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v86 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v86 - v17;
  v19 = _s14DetectedResultVMa();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 24);
  v24 = *v2;
  v98 = *(v2 + *(v6 + 36));

  v25 = sub_1D9A601D8(v24, &v98, v23);

  v27 = *(v25 + 16);
  if (v27)
  {
    v86 = v10;
    v28 = 0;
    v97 = *(v2 + 8);
    v29 = v25 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    while (v28 < *(v25 + 16))
    {
      sub_1D9A40DCC(v29 + *(v20 + 72) * v28, v22, _s14DetectedResultVMa);
      if (v97 > 0.0)
      {
        v30 = &v22[*(v19 + 24)];
        v31 = *v30;
        v32 = v30[1];
        v33 = v30[2];
        v34 = v30[3];
        v35 = a1[1];
        v96 = *a1;
        v36 = a1[2];
        v37 = a1[3];
        v99.origin.x = v31;
        v99.origin.y = v32;
        v99.size.width = v33;
        v99.size.height = v34;
        Width = CGRectGetWidth(v99);
        v94 = v31;
        v100.origin.x = v31;
        v39 = v32;
        v40 = v96;
        v100.origin.y = v39;
        v100.size.width = v33;
        v100.size.height = v34;
        v41 = Width * CGRectGetHeight(v100);
        v101.origin.x = v40;
        v101.origin.y = v35;
        v101.size.width = v36;
        v101.size.height = v37;
        v95 = CGRectGetWidth(v101);
        v102.origin.x = v40;
        v102.origin.y = v35;
        v102.size.width = v36;
        v102.size.height = v37;
        Height = CGRectGetHeight(v102);
        v93 = v41;
        if (v41 > 0.0)
        {
          v95 = v95 * Height;
          if (v95 > 0.0)
          {
            v103.origin.x = v94;
            v103.origin.y = v39;
            v103.size.width = v33;
            v103.size.height = v34;
            v115.origin.x = v40;
            v115.origin.y = v35;
            v115.size.width = v36;
            v115.size.height = v37;
            v104 = CGRectIntersection(v103, v115);
            x = v104.origin.x;
            y = v104.origin.y;
            v45 = v104.size.width;
            v46 = v104.size.height;
            if (!CGRectIsNull(v104))
            {
              v105.origin.x = x;
              v105.origin.y = y;
              v105.size.width = v45;
              v105.size.height = v46;
              v47 = CGRectGetWidth(v105);
              v106.origin.x = x;
              v106.origin.y = y;
              v106.size.width = v45;
              v106.size.height = v46;
              v48 = CGRectGetHeight(v106);
              *&v48 = v47 * v48 / (v93 + v95 - v47 * v48);
              if (v97 < *&v48)
              {

                static Logger.argos.getter(v18);
                v80 = v90;
                sub_1D9A3E0E0(v90);
                v72 = *(v92 + 8);
                v73 = v86;
                v72(v18, v86);
                v81 = v91;
                sub_1D9A40DCC(v2, v91, type metadata accessor for OverlapRegionDomainAssignmentRule);
                v82 = sub_1D9C7D8BC();
                v83 = sub_1D9C7E09C();
                if (os_log_type_enabled(v82, v83))
                {
                  v84 = swift_slowAlloc();
                  *v84 = 134217984;
                  v85 = *(v81 + 8);
                  sub_1D9A40E34(v81, type metadata accessor for OverlapRegionDomainAssignmentRule);
                  *(v84 + 4) = v85;
                  _os_log_impl(&dword_1D9962000, v82, v83, "Found satisfied object result with iou threshold %f.", v84, 0xCu);
                  MEMORY[0x1DA7405F0](v84, -1, -1);
                }

                else
                {

                  sub_1D9A40E34(v81, type metadata accessor for OverlapRegionDomainAssignmentRule);
                }

                v79 = v80;
                goto LABEL_25;
              }
            }
          }
        }
      }

      LODWORD(v96) = *(v2 + 12);
      if (*&v96 > 0.0)
      {
        v49 = &v22[*(v19 + 24)];
        v50 = *v49;
        v51 = v49[1];
        v52 = v49[2];
        v53 = v49[3];
        v54 = a1[1];
        v95 = *a1;
        v55 = a1[2];
        v56 = a1[3];
        v107.origin.x = v50;
        v107.origin.y = v51;
        v107.size.width = v52;
        v107.size.height = v53;
        v57 = CGRectGetWidth(v107);
        v93 = v50;
        v108.origin.x = v50;
        v58 = v51;
        v59 = v95;
        v108.origin.y = v58;
        v108.size.width = v52;
        v108.size.height = v53;
        v60 = v57 * CGRectGetHeight(v108);
        v109.origin.x = v59;
        v109.origin.y = v54;
        v109.size.width = v55;
        v109.size.height = v56;
        v94 = CGRectGetWidth(v109);
        v110.origin.x = v59;
        v110.origin.y = v54;
        v110.size.width = v55;
        v110.size.height = v56;
        v61 = CGRectGetHeight(v110);
        if (v60 > 0.0)
        {
          v94 = v94 * v61;
          if (v94 > 0.0)
          {
            v111.origin.x = v93;
            v111.origin.y = v58;
            v111.size.width = v52;
            v111.size.height = v53;
            v116.origin.x = v59;
            v116.origin.y = v54;
            v116.size.width = v55;
            v116.size.height = v56;
            v112 = CGRectIntersection(v111, v116);
            v62 = v112.origin.x;
            v63 = v112.origin.y;
            v64 = v112.size.width;
            v65 = v112.size.height;
            if (!CGRectIsNull(v112))
            {
              v113.origin.x = v62;
              v113.origin.y = v63;
              v113.size.width = v64;
              v113.size.height = v65;
              v66 = CGRectGetWidth(v113);
              v114.origin.x = v62;
              v114.origin.y = v63;
              v114.size.width = v64;
              v114.size.height = v65;
              v67 = v66 * CGRectGetHeight(v114);
              v68 = v94;
              if (v94 >= v60)
              {
                v68 = v60;
              }

              v69 = v67 / v68;
              if (*&v96 < v69)
              {

                v70 = v87;
                static Logger.argos.getter(v87);
                v71 = v89;
                sub_1D9A3E0E0(v89);
                v72 = *(v92 + 8);
                v73 = v86;
                v72(v70, v86);
                v74 = v88;
                sub_1D9A40DCC(v2, v88, type metadata accessor for OverlapRegionDomainAssignmentRule);
                v75 = sub_1D9C7D8BC();
                v76 = sub_1D9C7E09C();
                if (os_log_type_enabled(v75, v76))
                {
                  v77 = swift_slowAlloc();
                  *v77 = 134217984;
                  v78 = *(v74 + 12);
                  sub_1D9A40E34(v74, type metadata accessor for OverlapRegionDomainAssignmentRule);
                  *(v77 + 4) = v78;
                  _os_log_impl(&dword_1D9962000, v75, v76, "Found satisfied object result with ioa threshold %f.", v77, 0xCu);
                  MEMORY[0x1DA7405F0](v77, -1, -1);
                }

                else
                {

                  sub_1D9A40E34(v74, type metadata accessor for OverlapRegionDomainAssignmentRule);
                }

                v79 = v71;
LABEL_25:
                v72(v79, v73);
                sub_1D9A40E34(v22, _s14DetectedResultVMa);
                return 1;
              }
            }
          }
        }
      }

      ++v28;
      result = sub_1D9A40E34(v22, _s14DetectedResultVMa);
      if (v27 == v28)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return 0;
  }

  return result;
}

uint64_t sub_1D9A40DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A40E34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A40E94(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v78 = a5;
  v79 = a4;
  v80 = a1;
  v9 = type metadata accessor for VisualUnderstanding.ImageRegion() - 8;
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v76 = a3[1];
  v77 = v12;
  v13 = MEMORY[0x1E69E7CC0];
  v83 = *(a2 + 16);
  if (v83)
  {
    v14 = 0;
    v85 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v84 = *(v10 + 72);
    v82 = MEMORY[0x1E69E7CC0];
    v87 = 0x80000001D9CA60A0;
    while (1)
    {
      v88 = v14;
      v15 = v86;
      sub_1D99B1BBC(v85 + v84 * v14, v86);
      v16 = v15[14];
      v17 = *(v16 + 16);
      v89 = v16;
      v91 = v17;
      if (v17)
      {
        v6 = 0;
        v90 = v16 + 32;
        v18 = v13;
        while (1)
        {
          if (v6 >= *(v16 + 16))
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          v104 = v18;
          v19 = v90 + 48 * v6;
          v20 = *(v19 + 32);
          v21 = *(v20 + 16);
          if (v21)
          {
            v22 = *(v19 + 40);
            v98 = v13;
            swift_bridgeObjectRetain_n();
            v92 = v22;

            sub_1D99FE4F8(0, v21, 0);
            v23 = v98;
            v93 = v20;
            v24 = (v20 + 48);
            do
            {
              v26 = *(v24 - 2);
              v25 = *(v24 - 1);
              v27 = *v24;
              v98 = v23;
              v28 = *(v23 + 2);
              v5 = *(v23 + 3);

              if (v28 >= v5 >> 1)
              {
                sub_1D99FE4F8((v5 > 1), v28 + 1, 1);
                v23 = v98;
              }

              *(v23 + 2) = v28 + 1;
              v29 = &v23[24 * v28];
              *(v29 + 4) = v26;
              *(v29 + 5) = v25;
              *(v29 + 6) = v27;
              v24 += 3;
              --v21;
            }

            while (v21);

            swift_bridgeObjectRelease_n();
            v13 = MEMORY[0x1E69E7CC0];
            v16 = v89;
          }

          else
          {
            v23 = v13;
          }

          v15 = *(v23 + 2);
          v18 = v104;
          v30 = *(v104 + 2);
          v31 = v15 + v30;
          if (__OFADD__(v30, v15))
          {
            goto LABEL_83;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v31 <= *(v18 + 3) >> 1)
          {
            if (!*(v23 + 2))
            {
              goto LABEL_8;
            }
          }

          else
          {
            if (v30 <= v31)
            {
              v33 = v15 + v30;
            }

            else
            {
              v33 = v30;
            }

            v18 = sub_1D9AFA214(isUniquelyReferenced_nonNull_native, v33, 1, v18);
            if (!*(v23 + 2))
            {
LABEL_8:

              if (v15)
              {
                goto LABEL_84;
              }

              goto LABEL_9;
            }
          }

          if ((*(v18 + 3) >> 1) - *(v18 + 2) < v15)
          {
            goto LABEL_85;
          }

          swift_arrayInitWithCopy();

          if (v15)
          {
            v34 = *(v18 + 2);
            v35 = __OFADD__(v34, v15);
            v36 = v15 + v34;
            if (v35)
            {
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              v74 = v95;
              v75 = v96;
              __swift_project_boxed_opaque_existential_1(v94, v95);
              (*(v75 + 8))(v15, v74, v75);

              __swift_destroy_boxed_opaque_existential_0Tm(v97);
              sub_1D99BB3B8(&v98);
              __swift_destroy_boxed_opaque_existential_0Tm(v94);
              v81 = v5;
              if (v5)
              {
                goto LABEL_92;
              }

LABEL_76:
              swift_beginAccess();
              v15 = *(v6 + 16);
              sub_1D99BB2FC(v15);

              return v15;
            }

            *(v18 + 2) = v36;
          }

LABEL_9:
          if (++v6 == v91)
          {
            goto LABEL_32;
          }
        }
      }

      v18 = v13;
LABEL_32:
      v37 = *(v18 + 2) + 1;
      v38 = 32;
      ++v88;
      do
      {
        if (!--v37)
        {
          goto LABEL_3;
        }

        v39 = *&v18[v38];
        v38 += 24;
      }

      while (!*(v39 + 16));

      if ((*(v86 + 104) & 1) == 0)
      {
        v15 = *(v86 + 48);
        v41 = (v15 + 4);
        v42 = -v15[2];
        v6 = -1;
        while (1)
        {
          if (v42 + v6 == -1)
          {
            goto LABEL_4;
          }

          if (++v6 >= v15[2])
          {
            break;
          }

          v43 = v41 + 160;
          result = sub_1D9BE7168(*v41, &unk_1F55294F0);
          v41 = v43;
          if (result)
          {
            goto LABEL_40;
          }
        }

LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        return result;
      }

LABEL_40:
      v44 = *(v16 + 16);
      if (v44)
      {
        break;
      }

      v47 = v13;
LABEL_59:
      v53 = (v47 + 48);
      v54 = *(v47 + 16) + 1;
      while (--v54)
      {
        v56 = *(v53 - 2);
        v55 = *(v53 - 1);
        v6 = *v53;
        if (v55 != 0xD00000000000002DLL || v87 != v6)
        {
          v53 += 3;
          if ((sub_1D9C7E7DC() & 1) == 0)
          {
            continue;
          }
        }

        sub_1D99B1C88(v86);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v58 = v82;
        }

        else
        {
          v58 = sub_1D9AF870C(0, *(v82 + 2) + 1, 1, v82);
        }

        v60 = *(v58 + 2);
        v59 = *(v58 + 3);
        if (v60 >= v59 >> 1)
        {
          v58 = sub_1D9AF870C((v59 > 1), v60 + 1, 1, v58);
        }

        *(v58 + 2) = v60 + 1;
        v82 = v58;
        v61 = &v58[24 * v60];
        *(v61 + 4) = v56;
        *(v61 + 5) = v55;
        *(v61 + 6) = v6;
        goto LABEL_5;
      }

LABEL_3:

LABEL_4:
      sub_1D99B1C88(v86);
LABEL_5:
      v14 = v88;
      if (v88 == v83)
      {
        v62 = v82;
        goto LABEL_74;
      }
    }

    v45 = 0;
    v46 = (v16 + 64);
    v47 = v13;
    while (1)
    {
      if (v45 >= *(v89 + 16))
      {
        goto LABEL_88;
      }

      v48 = *v46;
      v15 = *(*v46 + 16);
      v49 = *(v47 + 16);
      v6 = v15 + v49;
      if (__OFADD__(v49, v15))
      {
        goto LABEL_89;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) != 0 && v6 <= *(v47 + 24) >> 1)
      {
        if (!*(v48 + 16))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v49 <= v6)
        {
          v50 = v15 + v49;
        }

        else
        {
          v50 = v49;
        }

        result = sub_1D9AF870C(result, v50, 1, v47);
        v47 = result;
        if (!*(v48 + 16))
        {
LABEL_42:

          if (v15)
          {
            goto LABEL_90;
          }

          goto LABEL_43;
        }
      }

      if ((*(v47 + 24) >> 1) - *(v47 + 16) < v15)
      {
        __break(1u);
        goto LABEL_95;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v51 = *(v47 + 16);
        v35 = __OFADD__(v51, v15);
        v52 = v15 + v51;
        if (v35)
        {
          goto LABEL_96;
        }

        *(v47 + 16) = v52;
      }

LABEL_43:
      ++v45;
      v46 += 6;
      if (v44 == v45)
      {
        goto LABEL_59;
      }
    }
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_74:
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  v63 = v62;
  if (*(v62 + 2))
  {
    v64 = *(v62 + 4);
    v65 = *(v63 + 5);
    v66 = *(v63 + 6);

    v98 = v65;
    v99 = v66;

    MEMORY[0x1DA73DF90](0x707265676E69662DLL, 0xEC000000746E6972);

    v67 = v98;
    v68 = v99;
    v69 = *(v6 + 16);
    *(v6 + 16) = v64;
    *(v6 + 24) = v67;
    *(v6 + 32) = v68;
    sub_1D99BB254(v69);
    goto LABEL_76;
  }

  v15 = &v98;

  sub_1D99A17C8(v80, &v98);
  v101 = v76;
  v100 = v77;
  v102 = v79;
  v103 = v78;

  swift_unknownObjectRetain();
  v70 = v81;
  sub_1D9ABFE8C(&v98, sub_1D9A41AD4, v6, v97);
  v81 = v70;
  if (v70)
  {
    sub_1D99BB3B8(&v98);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9C85660;
    sub_1D99A17C8(v97, inited + 32);
    v15 = sub_1D9BDBF78(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511E0);
    swift_arrayDestroy();
    if (!v15[2])
    {
LABEL_86:

      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      sub_1D99BB3B8(&v98);
      goto LABEL_76;
    }

    v72 = v80[3];
    v73 = v80[4];
    __swift_project_boxed_opaque_existential_1(v80, v72);
    v5 = v81;
    sub_1D9B7DE80(v72, v73, v94);
    if (!v5)
    {
      goto LABEL_91;
    }

    v81 = v5;

    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    sub_1D99BB3B8(&v98);
LABEL_92:
  }

  return v15;
}

uint64_t sub_1D9A4187C(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v26[-1] - v13;
  if (a4)
  {
    static Logger.argos.getter(&v26[-1] - v13);
    v15 = a1;
    v16 = sub_1D9C7D8BC();
    v17 = sub_1D9C7E0AC();
    sub_1D99BB468(a1, a2, a3, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 136446210;
      swift_getErrorValue();
      v20 = sub_1D9A4F730(v26[4]);
      v22 = sub_1D9A0E224(v20, v21, v26);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D9962000, v16, v17, "Failed to calculate image fingerprint: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1DA7405F0](v19, -1, -1);
      MEMORY[0x1DA7405F0](v18, -1, -1);
    }

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    swift_beginAccess();
    v24 = a5[2];
    a5[2] = a1;
    a5[3] = a2;
    a5[4] = a3;

    return sub_1D99BB254(v24);
  }
}

void VisualQueryContext.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v70 - v8;
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = sub_1D9A455CC(v9, &qword_1ECB52218);
  Context = type metadata accessor for VisualQueryContext();
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v11 = Context[10];
  v12 = sub_1D9C7B80C();
  v13 = *(*(v12 - 8) + 56);
  v78 = v11;
  v13(a2 + v11, 1, 1, v12);
  v77 = Context[11];
  *(a2 + v77) = 0;
  v79 = Context[12];
  *(a2 + v79) = 0;
  v80 = Context[13];
  *(a2 + v80) = 0;
  v14 = Context[14];
  v13(a2 + v14, 1, 1, v12);
  v15 = (a2 + Context[15]);
  *v15 = 0;
  v15[1] = 0;
  v16 = a2 + Context[16];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = Context[17];
  *(a2 + v17) = 0;
  v18 = (a2 + Context[18]);
  *v18 = 0;
  v18[1] = 0;
  v19 = Context[19];
  *(a2 + v19) = 0;
  v20 = (a2 + Context[20]);
  *v20 = 0;
  v20[1] = 0;
  *(a2 + Context[21]) = 3;
  if (a1)
  {
    v71 = v14;
    v72 = v15;
    v73 = v17;
    v74 = v18;
    v21 = v6;
    v75 = v19;
    v76 = v20;
    v22 = a1;
    v23 = [v22 applicationIdentifier];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1D9C7DC7C();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    *a2 = v25;
    *(a2 + 8) = v27;
    v28 = [v22 catalogIDs];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1D9C7DF2C();
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    v31 = v21;
    *(a2 + 16) = v30;
    v32 = [v22 customDetectorThreshold];
    v33 = sub_1D9C7DB4C();

    v34 = sub_1D9A42E70(v33);

    v35 = v81;
    if (!v34)
    {
      v34 = sub_1D9A455CC(MEMORY[0x1E69E7CC0], &qword_1ECB52218);
    }

    *(a2 + 24) = v34;
    *(a2 + 32) = [v22 engagementSuggestionType];
    v36 = [v22 featureIdentifier];
    if (v36)
    {
      v37 = v36;
      v38 = sub_1D9C7DC7C();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    *(a2 + 40) = v38;
    *(a2 + 48) = v40;
    *(a2 + 56) = [v22 imageType];
    v41 = [v22 imageURL];
    if (v41)
    {
      v42 = v41;
      sub_1D9C7B7CC();

      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = 1;
    v13(v35, v43, 1, v12);
    sub_1D9A45714(v35, a2 + v78);
    v45 = [v22 location];
    *(a2 + v77) = v45;
    v46 = [v22 preferredMetalDevice];
    *(a2 + v79) = v46;
    v47 = [v22 queryID];
    *(a2 + v80) = v47;
    v48 = [v22 referralURL];
    if (v48)
    {
      v49 = v48;
      sub_1D9C7B7CC();

      v44 = 0;
    }

    v13(v31, v44, 1, v12);
    sub_1D9A45714(v31, a2 + v71);
    v50 = [v22 teamID];
    if (v50)
    {
      v51 = v50;
      v52 = sub_1D9C7DC7C();
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    v55 = v72;
    *v72 = v52;
    v55[1] = v54;
    [v22 uiScale];
    *(a2 + v73) = v56;
    v57 = [v22 countryCode];
    if (v57)
    {
      v58 = v57;
      v59 = sub_1D9C7DC7C();
      v61 = v60;
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    v62 = v74;
    *v74 = v59;
    v62[1] = v61;
    v63 = [v22 includeLowConfidenceRegions];
    *(a2 + v75) = v63;
    v64 = [v22 locale];
    if (v64)
    {
      v65 = v64;
      v66 = sub_1D9C7DC7C();
      v68 = v67;
    }

    else
    {

      v66 = 0;
      v68 = 0;
    }

    v69 = v76;
    *v76 = v66;
    v69[1] = v68;
  }
}

uint64_t VisualQueryContext.countryCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for VisualQueryContext() + 72));

  return v1;
}

uint64_t VisualQueryContext.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VisualQueryContext() + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t VisualQueryContext.includeLowConfidenceRegions.setter(char a1)
{
  result = type metadata accessor for VisualQueryContext();
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t VisualQueryContext.locale.getter()
{
  v1 = *(v0 + *(type metadata accessor for VisualQueryContext() + 80));

  return v1;
}

uint64_t VisualQueryContext.locale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VisualQueryContext() + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t VisualQueryContext.Mode.description.getter()
{
  v1 = 0x4520796B63697453;
  if (*v0 != 1)
  {
    v1 = 0x6E616D6544206E4FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265676145;
  }
}

VisualLookUp::VisualQueryContext::Mode_optional __swiftcall VisualQueryContext.Mode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9C7E56C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VisualQueryContext.Mode.rawValue.getter()
{
  v1 = 0x6974537265676165;
  if (*v0 != 1)
  {
    v1 = 0x646E616D65446E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265676165;
  }
}

uint64_t sub_1D9A423EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6974537265676165;
  v4 = 0xEB00000000796B63;
  if (v2 != 1)
  {
    v3 = 0x646E616D65446E6FLL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7265676165;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6974537265676165;
  v8 = 0xEB00000000796B63;
  if (*a2 != 1)
  {
    v7 = 0x646E616D65446E6FLL;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7265676165;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9C7E7DC();
  }

  return v11 & 1;
}

void sub_1D9A42508(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEB00000000796B63;
  v5 = 0x6974537265676165;
  if (v2 != 1)
  {
    v5 = 0x646E616D65446E6FLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265676165;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D9A4256C()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9A42614()
{
  sub_1D9C7DD6C();
}

uint64_t sub_1D9A426A8()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9A4280C()
{
  v1 = 0x4520796B63697453;
  if (*v0 != 1)
  {
    v1 = 0x6E616D6544206E4FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265676145;
  }
}

uint64_t VisualQueryContext.init(applicationIdentifier:queryID:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = MEMORY[0x1E69E7CC0];
  *(a5 + 16) = MEMORY[0x1E69E7CC0];
  *(a5 + 24) = sub_1D9A455CC(v8, &qword_1ECB52218);
  Context = type metadata accessor for VisualQueryContext();
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  v10 = Context[10];
  v11 = sub_1D9C7B80C();
  v12 = *(*(v11 - 8) + 56);
  v12(a5 + v10, 1, 1, v11);
  v13 = Context[11];
  *(a5 + Context[12]) = 0;
  v14 = Context[13];
  result = (v12)(a5 + Context[14], 1, 1, v11);
  v16 = (a5 + Context[15]);
  *v16 = 0;
  v16[1] = 0;
  v17 = a5 + Context[16];
  *v17 = 0;
  *(v17 + 8) = 1;
  *(a5 + Context[17]) = 0;
  v18 = (a5 + Context[18]);
  *v18 = 0;
  v18[1] = 0;
  *(a5 + Context[19]) = 0;
  v19 = (a5 + Context[20]);
  *v19 = 0;
  v19[1] = 0;
  *(a5 + Context[21]) = 3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + v14) = a3;
  *(a5 + v13) = a4;
  return result;
}

uint64_t VisualQueryContext.init(applicationIdentifier:queryID:location:timestamp:customDetectorThreshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = MEMORY[0x1E69E7CC0];
  *(a8 + 16) = MEMORY[0x1E69E7CC0];
  sub_1D9A455CC(v11, &qword_1ECB52218);
  Context = type metadata accessor for VisualQueryContext();
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  v13 = Context[10];
  v14 = sub_1D9C7B80C();
  v15 = *(*(v14 - 8) + 56);
  v15(a8 + v13, 1, 1, v14);
  v16 = Context[11];
  *(a8 + Context[12]) = 0;
  v17 = Context[13];
  v15(a8 + Context[14], 1, 1, v14);

  v19 = (a8 + Context[15]);
  *v19 = 0;
  v19[1] = 0;
  v20 = a8 + Context[16];
  *(a8 + Context[17]) = 0;
  v21 = (a8 + Context[18]);
  *v21 = 0;
  v21[1] = 0;
  *(a8 + Context[19]) = 0;
  v22 = (a8 + Context[20]);
  *v22 = 0;
  v22[1] = 0;
  *(a8 + Context[21]) = 3;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + v17) = a3;
  *(a8 + v16) = a4;
  *v20 = a5;
  *(v20 + 8) = a6 & 1;
  *(a8 + 24) = a7;
  return result;
}

uint64_t VisualQueryContext.init(applicationIdentifier:queryID:location:imageType:timestamp:customDetectorThreshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = MEMORY[0x1E69E7CC0];
  *(a9 + 2) = MEMORY[0x1E69E7CC0];
  sub_1D9A455CC(v12, &qword_1ECB52218);
  Context = type metadata accessor for VisualQueryContext();
  *(a9 + 5) = 0;
  *(a9 + 6) = 0;
  *(a9 + 4) = 0;
  v14 = Context[10];
  v15 = sub_1D9C7B80C();
  v16 = *(*(v15 - 8) + 56);
  v16(&a9[v14], 1, 1, v15);
  v17 = Context[11];
  *&a9[Context[12]] = 0;
  v18 = Context[13];
  v16(&a9[Context[14]], 1, 1, v15);

  v20 = &a9[Context[15]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = Context[16];
  *&a9[Context[17]] = 0;
  v22 = &a9[Context[18]];
  *v22 = 0;
  *(v22 + 1) = 0;
  a9[Context[19]] = 0;
  v23 = &a9[Context[20]];
  *v23 = 0;
  *(v23 + 1) = 0;
  a9[Context[21]] = 3;
  *a9 = a1;
  *(a9 + 1) = a2;
  *&a9[v18] = a3;
  *&a9[v17] = a4;
  v24 = &a9[v21];
  *v24 = a6;
  v24[8] = a7 & 1;
  *(a9 + 7) = a5;
  *(a9 + 3) = a8;
  return result;
}

uint64_t VisualQueryContext.init(applicationIdentifier:queryID:location:imageType:cameraSearchMode:timestamp:customDetectorThreshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10)
{
  v27 = *a6;
  v13 = MEMORY[0x1E69E7CC0];
  *(a9 + 2) = MEMORY[0x1E69E7CC0];
  sub_1D9A455CC(v13, &qword_1ECB52218);
  Context = type metadata accessor for VisualQueryContext();
  *(a9 + 5) = 0;
  *(a9 + 6) = 0;
  *(a9 + 4) = 0;
  v15 = Context[10];
  v16 = sub_1D9C7B80C();
  v17 = *(*(v16 - 8) + 56);
  v17(&a9[v15], 1, 1, v16);
  v18 = Context[11];
  *&a9[Context[12]] = 0;
  v19 = Context[13];
  v17(&a9[Context[14]], 1, 1, v16);

  v21 = &a9[Context[15]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &a9[Context[16]];
  *&a9[Context[17]] = 0;
  v23 = &a9[Context[18]];
  *v23 = 0;
  *(v23 + 1) = 0;
  a9[Context[19]] = 0;
  v24 = &a9[Context[20]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = Context[21];
  *a9 = a1;
  *(a9 + 1) = a2;
  *&a9[v19] = a3;
  *&a9[v18] = a4;
  *v22 = a7;
  v22[8] = a8 & 1;
  *(a9 + 7) = a5;
  a9[v25] = v27;
  *(a9 + 3) = a10;
  return result;
}

unint64_t sub_1D9A42E70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52218);
    v2 = sub_1D9C7E54C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1D99F08F0(*(a1 + 48) + 40 * v12, v24);
        sub_1D99A579C(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_1D99F08F0(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_1D9A47A14(v21);

          goto LABEL_23;
        }

        sub_1D99A579C(v22 + 8, v20);
        sub_1D9A47A14(v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51FF0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1D99ED894(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;

          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1D9A4312C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52258);
    v3 = sub_1D9C7E54C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D99AB100(v4, v11, &qword_1ECB52260);
      v5 = v11[0];
      result = sub_1D99EE030(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_1D9A17E50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A43254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52248);
    v3 = sub_1D9C7E54C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D99AB100(v4, &v13, &qword_1ECB52250);
      v5 = v13;
      v6 = v14;
      result = sub_1D99ED894(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D9A17E50(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A43384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52088);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D99ED894(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D9A43488(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52080);
  v3 = sub_1D9C7E54C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1D99F0BB0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1D99F0BB0(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9A435C4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 8);
      v7 = *i;

      result = sub_1D99EE05C(v6);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + result) = v6;
      *(v4[7] + 8 * result) = v7;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A436D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52020);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A437EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52240);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A438F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52198);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521A0);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52198);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D99ED894(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
      result = sub_1D9A479AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A43AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52118);
    v3 = sub_1D9C7E54C();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D99EE164(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D9A43BB4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52110);
  v3 = sub_1D9C7E54C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D99F0BB0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
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
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D99F0BB0(v4);
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

unint64_t sub_1D9A43CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52278);
    v3 = sub_1D9C7E54C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D99AB100(v4, &v11, &unk_1ECB52280);
      v5 = v11;
      result = sub_1D99F0BB4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D9A17E50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A43DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52160);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52168);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52160);
      result = sub_1D99EE1AC(*v5, v5[1], v5[2], v5[3]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 32 * result);
      v15 = *(v5 + 1);
      *v14 = *v5;
      v14[1] = v15;
      v16 = v7[7];
      v17 = type metadata accessor for VisualUnderstanding.ImageRegion();
      result = sub_1D9A479AC(v5 + v8, v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for VisualUnderstanding.ImageRegion);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A43FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52030);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52038);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52030);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D99ED894(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
      result = sub_1D9A479AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A441B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52148);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A442BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521A8);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A443C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521B8);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB521B0);
      v11 = *v5;
      result = sub_1D99EE004(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1D9C7B80C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A445A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52060);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A446BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52150);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52158);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52150);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D99ED894(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig(0);
      result = sub_1D9A479AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A448A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520B0);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 64); ; i += 4)
    {
      v12 = *(i - 1);
      v13 = *(i - 2);
      v14 = *i;
      v15 = i[1];

      result = sub_1D99EE1AC(*&v13, *(&v13 + 1), *&v12, *(&v12 + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 32 * result);
      *v7 = v13;
      v7[1] = v12;
      v8 = (v3[7] + 32 * result);
      *v8 = v14;
      v8[1] = v15;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A449E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A8);
    v7 = sub_1D9C7E54C();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB520A0);
      result = sub_1D99EDF30(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D9C7B98C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A44BD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52098);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52090);
      result = sub_1D99EDF30(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D9C7B98C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A44DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520D0);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB520C8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D99ED894(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for LandmarkSignals(0);
      result = sub_1D9A479AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for LandmarkSignals);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A44FB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520D8);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A450B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520E8);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB520E0);
      v11 = *v5;
      result = sub_1D99F0BB0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for StorefrontSignals(0);
      result = sub_1D9A479AC(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for StorefrontSignals);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A45290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52228);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *(i - 7);
      v11 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = v3[7] + 32 * result;
      *v15 = v8;
      *(v15 + 8) = v7;
      *(v15 + 16) = v9;
      *(v15 + 17) = v10;
      *(v15 + 24) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A453D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52010);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52018);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52010);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D99ED894(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0);
      result = sub_1D9A479AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A455CC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D99ED894(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for VisualQueryContext()
{
  result = qword_1EDD352B8;
  if (!qword_1EDD352B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9A45714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9A45788()
{
  result = qword_1ECB51FD8;
  if (!qword_1ECB51FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FD8);
  }

  return result;
}

unint64_t sub_1D9A457E0()
{
  result = qword_1ECB51FE0;
  if (!qword_1ECB51FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FE0);
  }

  return result;
}

void sub_1D9A4586C()
{
  sub_1D9A45C48(319, &qword_1EDD2C5E0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D9A45C48(319, &qword_1EDD2C4C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D9A45AD0();
      if (v2 <= 0x3F)
      {
        sub_1D9A45B44(319, &qword_1EDD2C408, type metadata accessor for VISuggestionType);
        if (v3 <= 0x3F)
        {
          type metadata accessor for VIQueryContextImageType(319);
          if (v4 <= 0x3F)
          {
            sub_1D9A45B44(319, &qword_1EDD35450, MEMORY[0x1E6968FB0]);
            if (v5 <= 0x3F)
            {
              sub_1D9A45B44(319, &qword_1EDD2C458, sub_1D9A45B98);
              if (v6 <= 0x3F)
              {
                sub_1D9A45BE4();
                if (v7 <= 0x3F)
                {
                  sub_1D9A45C48(319, &qword_1EDD2C468, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
                  {
                    sub_1D9A45C48(319, &qword_1EDD2C2E0, &type metadata for VisualQueryContext.Mode, MEMORY[0x1E69E6720]);
                    if (v9 <= 0x3F)
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

void sub_1D9A45AD0()
{
  if (!qword_1EDD2C608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECB51FF0);
    v0 = sub_1D9C7DBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2C608);
    }
  }
}

void sub_1D9A45B44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1D9A45B98()
{
  result = qword_1EDD2C460;
  if (!qword_1EDD2C460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD2C460);
  }

  return result;
}

void sub_1D9A45BE4()
{
  if (!qword_1EDD2C388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECB52000);
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2C388);
    }
  }
}

void sub_1D9A45C48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D9A45CA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520B8);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A45DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52028);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A45EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521D0);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB521C8);
      v11 = *v5;
      result = sub_1D99EE2D4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1D9C7B80C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A46088(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521C0);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 24);
      v7 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;

      result = sub_1D99EE2D4(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v7;
      *(v11 + 8) = v6;
      *(v11 + 16) = v8;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A46194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52040);
    v3 = sub_1D9C7E54C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D99AB100(v4, v13, &qword_1ECB52048);
      result = sub_1D99EE414(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D9A17E50(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A462D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520F8);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A463EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52170);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52178);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52170);
      result = sub_1D99EE138(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
      result = sub_1D9A479AC(&v5[v8], v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A465D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52108);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 104); ; i += 10)
    {
      v16 = *(i - 7);
      v17 = *(i - 9);
      v14 = *(i - 3);
      v15 = *(i - 5);
      v5 = *(i - 1);
      v6 = *i;

      result = sub_1D99EE1AC(*&v17, *(&v17 + 1), *&v16, *(&v16 + 1));
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 32 * result);
      *v9 = v17;
      v9[1] = v16;
      v10 = v3[7] + 48 * result;
      *v10 = v15;
      *(v10 + 16) = v14;
      *(v10 + 32) = v5;
      *(v10 + 40) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A46708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52100);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D99EE138(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A46808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52050);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52058);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52050);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D99ED894(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
      result = sub_1D9A479AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A469F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521D8);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      swift_unknownObjectRetain();
      result = sub_1D99EE2D4(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D9A46AEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520F0);
  v3 = sub_1D9C7E54C();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1D99EE164(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1D99EE164(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9A46C28(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52128);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v9 = sub_1D9C7E54C();
    v10 = *(v4 + 48);
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);

    while (1)
    {
      sub_1D99AB100(v11, v7, &qword_1ECB52128);
      result = sub_1D99EE518(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1D9C7B93C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 16 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A46E24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52138);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52140);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52138);
      result = sub_1D99EE518(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D9C7B93C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A4700C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52180);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1D99EE138(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A47114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52210);
    v3 = sub_1D9C7E54C();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1D99EE5EC(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A4721C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52190);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1D99EE2D4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A47310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52188);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 40);
      v7 = *(i - 4);
      v6 = *(i - 3);
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *i;

      result = sub_1D99EE138(v5);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v13 = v3[7] + 40 * result;
      *v13 = v7;
      *(v13 + 8) = v6;
      *(v13 + 16) = v9;
      *(v13 + 24) = v8;
      *(v13 + 32) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A4742C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521F8);
    v3 = sub_1D9C7E54C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D99AB100(v4, &v11, &qword_1ECB52200);
      v5 = v11;
      result = sub_1D99F0BB4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D9A17E50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A47568(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 8);
      v7 = *i;

      result = sub_1D99EE458(v6);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + result) = v6;
      *(v4[7] + 8 * result) = v7;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A47654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52208);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1D99EE720(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A4776C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 16);
      v11 = *(i - 1);
      v10 = *i;

      result = a4(v9);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      v14 = (v7[7] + 16 * result);
      *v14 = v11;
      v14[1] = v10;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A4786C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52070);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D99EE7D4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A47958()
{
  result = qword_1ECB52120;
  if (!qword_1ECB52120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52120);
  }

  return result;
}

uint64_t sub_1D9A479AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A47A14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

float sub_1D9A47A7C(CGFloat *a1)
{
  v2 = *a1;
  v27 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v28.origin.x = *v1;
  v28.origin.y = v5;
  v28.size.width = v7;
  v28.size.height = v8;
  Width = CGRectGetWidth(v28);
  v25 = v6;
  v29.origin.x = v6;
  v10 = v5;
  v29.origin.y = v5;
  v29.size.width = v7;
  v29.size.height = v8;
  v11 = Width * CGRectGetHeight(v29);
  v30.origin.x = v2;
  v30.origin.y = v27;
  v30.size.width = v3;
  v30.size.height = v4;
  v26 = CGRectGetWidth(v30);
  v31.origin.x = v2;
  v31.origin.y = v27;
  v31.size.width = v3;
  v31.size.height = v4;
  Height = CGRectGetHeight(v31);
  v13 = 0.0;
  if (v11 > 0.0)
  {
    v14 = v26 * Height;
    if (v26 * Height > 0.0)
    {
      v32.origin.x = v25;
      v36.origin.x = v2;
      v32.origin.y = v10;
      v32.size.width = v7;
      v32.size.height = v8;
      v36.origin.y = v27;
      v36.size.width = v3;
      v36.size.height = v4;
      v33 = CGRectIntersection(v32, v36);
      x = v33.origin.x;
      y = v33.origin.y;
      v17 = v33.size.width;
      v18 = v33.size.height;
      IsNull = CGRectIsNull(v33);
      v13 = 0.0;
      if (!IsNull)
      {
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = v17;
        v34.size.height = v18;
        v20 = v14;
        v21 = CGRectGetWidth(v34);
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = v17;
        v35.size.height = v18;
        v22 = v21 * CGRectGetHeight(v35);
        if (v20 >= v11)
        {
          v23 = v11;
        }

        else
        {
          v23 = v20;
        }

        return v22 / v23;
      }
    }
  }

  return v13;
}

uint64_t NormalizedRect.loggingDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D9C86430;
  v18.origin.x = v1;
  v18.origin.y = v2;
  v18.size.width = v3;
  v18.size.height = v4;
  MinX = CGRectGetMinX(v18);
  v7 = MEMORY[0x1E69E7DE0];
  *(v5 + 56) = MEMORY[0x1E69E7DE0];
  v8 = sub_1D99D2A0C();
  *(v5 + 64) = v8;
  *(v5 + 32) = MinX;
  v19.origin.x = v1;
  v19.origin.y = v2;
  v19.size.width = v3;
  v19.size.height = v4;
  MinY = CGRectGetMinY(v19);
  *(v5 + 96) = v7;
  *(v5 + 104) = v8;
  *(v5 + 72) = MinY;
  v20.origin.x = v1;
  v20.origin.y = v2;
  v20.size.width = v3;
  v20.size.height = v4;
  Width = CGRectGetWidth(v20);
  *(v5 + 136) = v7;
  *(v5 + 144) = v8;
  *(v5 + 112) = Width;
  v21.origin.x = v1;
  v21.origin.y = v2;
  v21.size.width = v3;
  v21.size.height = v4;
  Height = CGRectGetHeight(v21);
  *(v5 + 176) = v7;
  *(v5 + 184) = v8;
  *(v5 + 152) = Height;
  NormalizedRect.rectID.getter();
  v13 = v12;
  v15 = v14;
  *(v5 + 216) = MEMORY[0x1E69E6158];
  *(v5 + 224) = sub_1D99D2A60();
  *(v5 + 192) = v13;
  *(v5 + 200) = v15;

  return sub_1D9C7DCAC();
}

Swift::Float __swiftcall NormalizedRect.intersectionOverUnion(_:)(VisualLookUp::NormalizedRect a1)
{
  v3 = *v1;
  r2_8 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v29.origin.x = *v2;
  v29.origin.y = v7;
  v29.size.width = v8;
  v29.size.height = v9;
  Width = CGRectGetWidth(v29);
  v26 = v7;
  v27 = v6;
  v30.origin.x = v6;
  v30.origin.y = v7;
  v11 = v8;
  v30.size.width = v8;
  v30.size.height = v9;
  v12 = Width * CGRectGetHeight(v30);
  v31.origin.x = v3;
  v31.origin.y = r2_8;
  v31.size.width = v4;
  v31.size.height = v5;
  v13 = CGRectGetWidth(v31);
  v32.origin.x = v3;
  v32.origin.y = r2_8;
  v32.size.width = v4;
  v32.size.height = v5;
  Height = CGRectGetHeight(v32);
  v15 = 0.0;
  v25 = v12;
  if (v12 > 0.0)
  {
    v16 = v13 * Height;
    if (v13 * Height > 0.0)
    {
      v33.origin.y = v26;
      v33.origin.x = v27;
      v33.size.width = v11;
      v33.size.height = v9;
      v37.origin.x = v3;
      v37.origin.y = r2_8;
      v37.size.width = v4;
      v37.size.height = v5;
      v34 = CGRectIntersection(v33, v37);
      x = v34.origin.x;
      y = v34.origin.y;
      v19 = v34.size.width;
      v20 = v34.size.height;
      IsNull = CGRectIsNull(v34);
      v15 = 0.0;
      if (!IsNull)
      {
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = v19;
        v35.size.height = v20;
        v22 = CGRectGetWidth(v35);
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = v19;
        v36.size.height = v20;
        v23 = CGRectGetHeight(v36);
        return v22 * v23 / (v25 + v16 - v22 * v23);
      }
    }
  }

  return v15;
}

VisualLookUp::NormalizedRect __swiftcall NormalizedRect.normalizeWithReference(_:)(VisualLookUp::NormalizedRect a1)
{
  v4 = v2;
  v5 = v1[2];
  v19 = v1[3];
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = *v3 - *v1;
  v11 = v7 - v1[1];
  v20.origin.x = *v3;
  v20.origin.y = v7;
  v20.size.width = v8;
  v20.size.height = v9;
  Width = CGRectGetWidth(v20);
  v21.origin.x = v6;
  v21.origin.y = v7;
  v21.size.width = v8;
  v21.size.height = v9;
  Height = CGRectGetHeight(v21);
  v22.origin.x = v10;
  v22.origin.y = v11;
  v22.size.width = Width;
  v22.size.height = Height;
  v14 = 1.0 / v5 * CGRectGetWidth(v22);
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = Width;
  v23.size.height = Height;
  v15 = 1.0 / v19 * CGRectGetHeight(v23);
  *v4 = 1.0 / v5 * v10;
  v4[1] = 1.0 / v19 * v11;
  v4[2] = v14;
  v4[3] = v15;
  result.bottomLeftCGRect.size.height = v18;
  result.bottomLeftCGRect.size.width = v17;
  result.bottomLeftCGRect.origin.y = v16;
  result.bottomLeftCGRect.origin.x = v15;
  return result;
}

VisualLookUp::NormalizedRect __swiftcall NormalizedRect.init(topLeftCGRect:)(__C::CGRect topLeftCGRect)
{
  height = topLeftCGRect.size.height;
  width = topLeftCGRect.size.width;
  y = topLeftCGRect.origin.y;
  x = topLeftCGRect.origin.x;
  v6 = v1;
  MinX = CGRectGetMinX(topLeftCGRect);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = 1.0 - CGRectGetMaxY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectGetHeight(v16);
  *v6 = MinX;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  result.bottomLeftCGRect.size.height = v13;
  result.bottomLeftCGRect.size.width = v12;
  result.bottomLeftCGRect.origin.y = v11;
  result.bottomLeftCGRect.origin.x = v10;
  return result;
}

void NormalizedRect.rectID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D9C85E90;
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  v6 = round(CGRectGetMinX(v13) * 1000.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = MEMORY[0x1E69E6530];
  v8 = MEMORY[0x1E69E65A8];
  *(v5 + 56) = MEMORY[0x1E69E6530];
  *(v5 + 64) = v8;
  *(v5 + 32) = v6;
  v14.origin.x = v1;
  v14.origin.y = v2;
  v14.size.width = v3;
  v14.size.height = v4;
  v9 = round(CGRectGetMinY(v14) * 1000.0);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v5 + 96) = v7;
  *(v5 + 104) = v8;
  *(v5 + 72) = v9;
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.width = v3;
  v15.size.height = v4;
  v10 = round(CGRectGetWidth(v15) * 1000.0);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v5 + 136) = v7;
  *(v5 + 144) = v8;
  *(v5 + 112) = v10;
  v16.origin.x = v1;
  v16.origin.y = v2;
  v16.size.width = v3;
  v16.size.height = v4;
  v11 = round(CGRectGetHeight(v16) * 1000.0);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  *(v5 + 176) = v7;
  *(v5 + 184) = v8;
  *(v5 + 152) = v11;

  sub_1D9C7DCAC();
}

__n128 static NormalizedRect.entireImage.getter@<Q0>(__n128 *a1@<X8>)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  a1[1] = result;
  return result;
}

double NormalizedRect.topLeftCGRect.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v7.origin.x = *v0;
  v7.origin.y = v2;
  v7.size.width = v3;
  v7.size.height = v4;
  MinX = CGRectGetMinX(v7);
  v8.origin.x = v1;
  v8.origin.y = v2;
  v8.size.width = v3;
  v8.size.height = v4;
  CGRectGetMaxY(v8);
  v9.origin.x = v1;
  v9.origin.y = v2;
  v9.size.width = v3;
  v9.size.height = v4;
  CGRectGetWidth(v9);
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  CGRectGetHeight(v10);
  return MinX;
}

VisualLookUp::NormalizedRect __swiftcall NormalizedRect.init(srcSize:bottomLeftCGRectUnscaled:)(CGSize srcSize, __C::CGRect bottomLeftCGRectUnscaled)
{
  height = bottomLeftCGRectUnscaled.size.height;
  width = bottomLeftCGRectUnscaled.size.width;
  y = bottomLeftCGRectUnscaled.origin.y;
  x = bottomLeftCGRectUnscaled.origin.x;
  v7 = v2;
  if (srcSize.width != 0.0)
  {
    v9 = 0.0;
    v8 = 1.0 / srcSize.width;
    if (srcSize.height == 0.0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0.0;
  v9 = 0.0;
  if (srcSize.height != 0.0)
  {
LABEL_3:
    v9 = 1.0 / srcSize.height;
  }

LABEL_4:
  v10 = v8 * CGRectGetMinX(bottomLeftCGRectUnscaled);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v11 = v9 * CGRectGetMinY(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v12 = v8 * CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v13 = v9 * CGRectGetHeight(v19);
  *v7 = v10;
  v7[1] = v11;
  v7[2] = v12;
  v7[3] = v13;
  result.bottomLeftCGRect.size.height = v16;
  result.bottomLeftCGRect.size.width = v15;
  result.bottomLeftCGRect.origin.y = v14;
  result.bottomLeftCGRect.origin.x = v13;
  return result;
}

CGFloat CGRect.scale(scaleX:scaleY:)(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13.origin.x = a3;
  v13.origin.y = a4;
  v13.size.width = a5;
  v13.size.height = a6;
  v11 = CGRectGetMinX(v13) * a1;
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  CGRectGetMinY(v14);
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  CGRectGetWidth(v15);
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  CGRectGetHeight(v16);
  return v11;
}

uint64_t NormalizedRect.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v10.origin.x = *v0;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  MinX = CGRectGetMinX(v10);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  MaxX = CGRectGetMaxX(v11);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v12.origin.x = v1;
  v12.origin.y = v2;
  v12.size.width = v3;
  v12.size.height = v4;
  MinY = CGRectGetMinY(v12);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MaxY = CGRectGetMaxY(v13);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  return MEMORY[0x1DA73EB00](*&MaxY);
}

__C::CGRect __swiftcall CGRect.toImageCoordinates(imageSize:)(CGSize imageSize)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  height = imageSize.height;
  width = imageSize.width;
  v11 = imageSize.width * v1;
  v12 = imageSize.height * v2;
  v18.origin.x = v1;
  v18.origin.y = v2;
  v18.size.width = v3;
  v18.size.height = v4;
  v13 = CGRectGetWidth(v18) * width;
  v19.origin.x = v8;
  v19.origin.y = v7;
  v19.size.width = v6;
  v19.size.height = v5;
  v14 = CGRectGetHeight(v19) * height;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

__C::CGRect __swiftcall CGRect.constrainedNormalizedRect()()
{
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  return CGRectIntersection(*&v0, v5);
}

double CGRect.expand(by:)(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  v10 = -(CGRectGetWidth(v18) * a1) * 0.5;
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  v11 = -(CGRectGetHeight(v19) * a1) * 0.5;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;

  *&result = CGRectInset(*&v12, v10, v11);
  return result;
}

VisualLookUp::NormalizedRect __swiftcall CGRect.toConstrainedNormalizedRect()()
{
  v5 = v0;
  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = 1.0;
  v7.size.height = 1.0;
  result = CGRectIntersection(*&v1, v7);
  *v5 = result;
  return result;
}

uint64_t NormalizedRect.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D9C7E8DC();
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  MinX = CGRectGetMinX(v10);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  MaxX = CGRectGetMaxX(v11);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v12.origin.x = v1;
  v12.origin.y = v2;
  v12.size.width = v3;
  v12.size.height = v4;
  MinY = CGRectGetMinY(v12);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MaxY = CGRectGetMaxY(v13);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  return sub_1D9C7E93C();
}

uint64_t NormalizedRect.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52290);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A48FCC();
  sub_1D9C7E95C();
  if (!v2)
  {
    LOBYTE(v31) = 0;
    v9 = sub_1D9C7E5FC();
    v11 = v10;
    LOBYTE(v31) = 1;
    v29 = sub_1D9C7E5FC();
    v30 = v12;
    LOBYTE(v31) = 2;
    v27 = sub_1D9C7E5FC();
    v28 = v13;
    LOBYTE(v31) = 3;
    v14 = sub_1D9C7E5FC();
    v31 = 0.0;
    v25 = v16;
    v26 = v14;
    v17 = sub_1D9A495CC(v9, v11);

    if (v17)
    {
      v18 = v31;
    }

    else
    {
      v18 = 0.0;
    }

    v31 = 0.0;
    v19 = sub_1D9A495CC(v29, v30);

    if (v19)
    {
      v20 = v31;
    }

    else
    {
      v20 = 0.0;
    }

    v31 = 0.0;
    v21 = sub_1D9A495CC(v27, v28);

    if (v21)
    {
      v22 = v31;
    }

    else
    {
      v22 = 0.0;
    }

    v31 = 0.0;
    v23 = sub_1D9A495CC(v26, v25);

    (*(v6 + 8))(v8, v5);
    v24 = v31;
    if (!v23)
    {
      v24 = 0.0;
    }

    *a2 = v18;
    a2[1] = v20;
    a2[2] = v22;
    a2[3] = v24;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t NormalizedRect.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52298);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-v6];
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A48FCC();
  sub_1D9C7E96C();
  sub_1D9C7DFFC();
  v13[15] = 0;
  sub_1D9C7E6EC();
  if (!v2)
  {

    sub_1D9C7DFFC();
    v13[14] = 1;
    sub_1D9C7E6EC();

    v14.origin.x = v8;
    v14.origin.y = v9;
    v14.size.width = v10;
    v14.size.height = v11;
    CGRectGetWidth(v14);
    sub_1D9C7DFFC();
    v13[13] = 2;
    sub_1D9C7E6EC();

    v15.origin.x = v8;
    v15.origin.y = v9;
    v15.size.width = v10;
    v15.size.height = v11;
    CGRectGetHeight(v15);
    sub_1D9C7DFFC();
    v13[12] = 3;
    sub_1D9C7E6EC();
  }

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D9A48ED4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D9C7E8DC();
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  MinX = CGRectGetMinX(v10);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  MaxX = CGRectGetMaxX(v11);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v12.origin.x = v1;
  v12.origin.y = v2;
  v12.size.width = v3;
  v12.size.height = v4;
  MinY = CGRectGetMinY(v12);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MaxY = CGRectGetMaxY(v13);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  return sub_1D9C7E93C();
}

unint64_t sub_1D9A48FCC()
{
  result = qword_1EDD2BE30;
  if (!qword_1EDD2BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BE30);
  }

  return result;
}

CGFloat CGRect.scale(_:)(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  v10 = CGRectGetMinX(v12) * a1;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetMinY(v13);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  return v10;
}

__C::CGRect __swiftcall CGRect.scale(targetSize:)(CGSize targetSize)
{
  v5 = targetSize.width * v1;
  v6 = targetSize.height * v2;
  v7 = targetSize.width * v3;
  v8 = targetSize.height * v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

CGPoint __swiftcall CGRect.centerPoint()()
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  MidX = CGRectGetMidX(*&v0);
  v12.origin.x = v7;
  v12.origin.y = v6;
  v12.size.width = v5;
  v12.size.height = v4;
  MidY = CGRectGetMidY(v12);
  v10 = MidX;
  result.y = MidY;
  result.x = v10;
  return result;
}

Swift::String __swiftcall CGRect.regionID()()
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9C85E90;
  v9 = MEMORY[0x1E69E7DE0];
  *(v8 + 56) = MEMORY[0x1E69E7DE0];
  v10 = sub_1D99D2A0C();
  *(v8 + 64) = v10;
  *(v8 + 32) = v7;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v6;
  v17.origin.x = v7;
  v17.origin.y = v6;
  v17.size.width = v5;
  v17.size.height = v4;
  Width = CGRectGetWidth(v17);
  *(v8 + 136) = v9;
  *(v8 + 144) = v10;
  *(v8 + 112) = Width;
  v18.origin.x = v7;
  v18.origin.y = v6;
  v18.size.width = v5;
  v18.size.height = v4;
  Height = CGRectGetHeight(v18);
  *(v8 + 176) = v9;
  *(v8 + 184) = v10;
  *(v8 + 152) = Height;

  v13 = sub_1D9C7DCAC();
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_1D9A4926C()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9A49310()
{
  sub_1D9C7DD6C();
}

uint64_t sub_1D9A493A0()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9A49440@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9A49844();
  *a1 = result;
  return result;
}

void sub_1D9A49470(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 120;
  v4 = 0xE500000000000000;
  v5 = 0x6874646977;
  if (*v1 != 2)
  {
    v5 = 0x746867696568;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 121;
    v2 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D9A494D0()
{
  v1 = 120;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 121;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9A4952C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9A49844();
  *a1 = result;
  return result;
}

uint64_t sub_1D9A49554(uint64_t a1)
{
  v2 = sub_1D9A48FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A49590(uint64_t a1)
{
  v2 = sub_1D9A48FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1D9A495CC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1D9C7E3EC();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_1D9A496C8()
{
  result = qword_1EDD2BE08;
  if (!qword_1EDD2BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BE08);
  }

  return result;
}

unint64_t sub_1D9A49740()
{
  result = qword_1ECB522A0;
  if (!qword_1ECB522A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB522A0);
  }

  return result;
}

unint64_t sub_1D9A49798()
{
  result = qword_1EDD2BE20;
  if (!qword_1EDD2BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BE20);
  }

  return result;
}

unint64_t sub_1D9A497F0()
{
  result = qword_1EDD2BE28;
  if (!qword_1EDD2BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BE28);
  }

  return result;
}

uint64_t sub_1D9A49844()
{
  v0 = sub_1D9C7E56C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

_BYTE *sub_1D9A49890@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1D9A49910(__int128 *a1)
{
  v2 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[9];
  v27 = a1[8];
  v28 = v6;
  v29 = a1[10];
  v30 = *(a1 + 22);
  v7 = a1[5];
  v23 = a1[4];
  v24 = v7;
  v8 = a1[7];
  v25 = a1[6];
  v26 = v8;
  v9 = a1[1];
  v19 = *a1;
  v20 = v9;
  v10 = a1[3];
  v21 = a1[2];
  v22 = v10;
  result = sub_1D9B67A68();
  v12 = result;
  v13 = 0;
  v14 = *(result + 16);
  while (1)
  {
    v15 = v13;
    if (v14 == v13)
    {
LABEL_5:

      return v14 != v15;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    sub_1D9A4A9E4(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13++, v5, type metadata accessor for VisualUnderstanding.ImageRegion);
    v16 = sub_1D9B67DFC();
    MEMORY[0x1EEE9AC00](v16);
    v18[-2] = v18[0];
    v17 = sub_1D9BC1744(sub_1D9A4A9C4, &v18[-4], v16);

    result = sub_1D9A4AA4C(v5, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v17)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A49B20@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v94 = a6;
  v93 = a5;
  v92 = a4;
  v83 = a3;
  v100 = a1;
  v9 = sub_1D9C7B5EC();
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v96 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v82 - v14;
  v15 = sub_1D9C7B80C();
  v97 = *(v15 - 8);
  v98 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v84 = &v82 - v18;
  v19 = sub_1D9C7C65C();
  v87 = *(v19 - 8);
  v88 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9C7BCBC();
  v82 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v82 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = (&v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v82 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v82 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v82 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v82 - v40;
  v99 = a7;
  sub_1D9C7C73C();
  if ((a2 & 1) != 0 && (v92 & 1) == 0)
  {
    sub_1D99AB100(v100, v41, &unk_1ECB51B10);
    Context = type metadata accessor for VisualQueryContext();
    if ((*(*(Context - 8) + 48))(v41, 1, Context) == 1)
    {
      sub_1D99A6AE0(v41, &unk_1ECB51B10);
    }

    else
    {
      v43 = *&v41[*(Context + 44)];
      v44 = v43;
      sub_1D9A4AA4C(v41, type metadata accessor for VisualQueryContext);
      if (v43)
      {
        v45 = sub_1D9A5534C(v83);

        sub_1D9C7BCAC();
        [v45 coordinate];
        sub_1D9C7BC7C();
        [v45 coordinate];
        sub_1D9C7BC9C();
        v46 = v82;
        (*(v82 + 16))(v23, v26, v21);
        sub_1D9C7C69C();
        [v45 course];
        sub_1D9C7C6AC();
        [v45 horizontalAccuracy];
        sub_1D9C7C6BC();

        (*(v46 + 8))(v26, v21);
      }
    }
  }

  v47 = v98;
  v48 = v100;
  if ((v94 & 1) == 0 && v93 >= 1)
  {
    sub_1D99AB100(v100, v38, &unk_1ECB51B10);
    v49 = type metadata accessor for VisualQueryContext();
    if ((*(*(v49 - 8) + 48))(v38, 1, v49) == 1)
    {
      sub_1D99A6AE0(v38, &unk_1ECB51B10);
    }

    else
    {
      v50 = *&v38[*(v49 + 44)];
      v51 = v50;
      sub_1D9A4AA4C(v38, type metadata accessor for VisualQueryContext);
      if (v50)
      {
        v52 = sub_1D9A554FC(v93);
        v54 = v53;

        if ((v54 & 1) == 0)
        {
          v55 = sub_1D9C7C6CC();
          v57 = v56;
          v58 = *v56;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v57 = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v58 = sub_1D9AF92CC(0, *(v58 + 2) + 1, 1, v58);
            *v57 = v58;
          }

          v61 = *(v58 + 2);
          v60 = *(v58 + 3);
          if (v61 >= v60 >> 1)
          {
            v58 = sub_1D9AF92CC((v60 > 1), v61 + 1, 1, v58);
            *v57 = v58;
          }

          *(v58 + 2) = v61 + 1;
          *&v58[8 * v61 + 32] = v52;
          v55(&v101, 0);
          v48 = v100;
        }
      }
    }
  }

  sub_1D99AB100(v48, v35, &unk_1ECB51B10);
  v62 = type metadata accessor for VisualQueryContext();
  v63 = *(*(v62 - 8) + 48);
  if (v63(v35, 1, v62) == 1)
  {
    sub_1D99A6AE0(v35, &unk_1ECB51B10);
    v64 = v97;
  }

  else
  {
    v65 = *(v35 + 7);
    sub_1D9A4AA4C(v35, type metadata accessor for VisualQueryContext);
    if ((v65 - 1) > 4)
    {
      v66 = MEMORY[0x1E69BD4C8];
    }

    else
    {
      v66 = qword_1E858AEA0[v65 - 1];
    }

    v64 = v97;
    (*(v87 + 104))(v86, *v66, v88);
    sub_1D9C7C72C();
  }

  sub_1D99AB100(v48, v32, &unk_1ECB51B10);
  v67 = v63(v32, 1, v62);
  v68 = v95;
  if (v67 == 1)
  {
    sub_1D99A6AE0(v32, &unk_1ECB51B10);
    v64[7](v68, 1, 1, v47);
LABEL_27:
    sub_1D99A6AE0(v68, &qword_1ECB51FD0);
    goto LABEL_29;
  }

  sub_1D99AB100(&v32[*(v62 + 40)], v95, &qword_1ECB51FD0);
  sub_1D9A4AA4C(v32, type metadata accessor for VisualQueryContext);
  if ((v64[6])(v68, 1, v47) == 1)
  {
    goto LABEL_27;
  }

  v69 = v64[4];
  v97 = v29;
  v70 = v47;
  v71 = v84;
  (v69)(v84, v68, v70);
  v101 = sub_1D9C7B73C();
  v102 = v72;
  v73 = v89;
  sub_1D9C7B5CC();
  sub_1D99A57F8();
  sub_1D9C7E2DC();
  v74 = v73;
  v48 = v100;
  (*(v90 + 8))(v74, v91);

  sub_1D9C7C70C();
  v75 = v71;
  v47 = v70;
  v29 = v97;
  (v64[1])(v75, v47);
LABEL_29:
  sub_1D99AB100(v48, v29, &unk_1ECB51B10);
  v76 = v63(v29, 1, v62);
  v77 = v96;
  if (v76 == 1)
  {
    sub_1D99A6AE0(v29, &unk_1ECB51B10);
    v64[7](v77, 1, 1, v47);
    return sub_1D99A6AE0(v77, &qword_1ECB51FD0);
  }

  sub_1D99AB100(v29 + *(v62 + 56), v96, &qword_1ECB51FD0);
  sub_1D9A4AA4C(v29, type metadata accessor for VisualQueryContext);
  if ((v64[6])(v77, 1, v47) == 1)
  {
    return sub_1D99A6AE0(v77, &qword_1ECB51FD0);
  }

  v79 = v85;
  (v64[4])(v85, v77, v47);
  v101 = sub_1D9C7B73C();
  v102 = v80;
  v81 = v89;
  sub_1D9C7B5CC();
  sub_1D99A57F8();
  sub_1D9C7E2DC();
  (*(v90 + 8))(v81, v91);

  sub_1D9C7C67C();
  return (v64[1])(v79, v47);
}