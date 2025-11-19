void sub_1DEE5E6FC(uint64_t a1, unint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v9 = sub_1DEF8D698();
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v66 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1DEF8D6D8();
  v65 = *(v67 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v63 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = v4;
  v20 = v4[29];
  *v19 = v20;
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8020], v14, v17);
  v21 = v20;
  LOBYTE(v20) = sub_1DEF8D7B8();
  (*(v15 + 8))(v19, v14);
  if (v20)
  {
    v68 = v21;
    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = sub_1DEF8D508();
  v23 = __swift_project_value_buffer(v22, qword_1ECDF6028);

  v62[1] = v23;
  v24 = sub_1DEF8D4D8();
  v25 = sub_1DEF8DCB8();

  v26 = a4;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v72 = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_1DEE12A5C(a1, a2, &v72);
    _os_log_impl(&dword_1DEE0F000, v24, v25, "Pairing with device: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v29 = v28;
    v26 = a4;
    MEMORY[0x1E12CCD70](v29, -1, -1);
    MEMORY[0x1E12CCD70](v27, -1, -1);
  }

  v30 = v69;
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  sub_1DEE8E124(v69, a1, a2, &v72, a3, v26, aBlock);
  v31 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 8)
  {
    v32 = *(&v72 + 1);
    if (*(&v72 + 1))
    {
      v34 = *(&v74 + 1);
      v33 = v75;
      v36 = *(&v73 + 1);
      v35 = v74;
      v37 = v73;
      v38 = v72;
      v39 = swift_allocObject();
      *(v39 + 16) = v30;
      *(v39 + 24) = v38;
      *(v39 + 32) = v32;
      *(v39 + 40) = v37;
      *(v39 + 48) = v36;
      *(v39 + 56) = v35;
      *(v39 + 57) = aBlock[0];
      *(v39 + 60) = *(aBlock + 3);
      *(v39 + 64) = v34;
      *(v39 + 72) = v33;

      sub_1DEE2C448(0xD000000000000013, 0x80000001DEF9C1D0, v68, sub_1DEEACF94, v39, 0.0);
    }

    else
    {
      v44 = a1;
      v68 = a3;

      v45 = sub_1DEF8D4D8();
      v46 = v69;
      v47 = v45;
      v48 = sub_1DEF8DC98();

      if (os_log_type_enabled(v47, v48))
      {
        v67 = v26;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        aBlock[0] = v50;
        *v49 = 136315394;
        if (v46[32])
        {
          v51 = v46[31];
          v52 = v46[32];
        }

        else
        {
          v53 = v46;
          v54 = v46[22];
          v55 = v53[23];
          ObjectType = swift_getObjectType();
          v57 = (*(v55 + 16))(ObjectType, v55);
          if (v58)
          {
            v51 = v57;
          }

          else
          {
            v51 = 0xD000000000000016;
          }

          if (v58)
          {
            v52 = v58;
          }

          else
          {
            v52 = 0x80000001DEF9BCA0;
          }
        }

        v59 = sub_1DEE12A5C(v51, v52, aBlock);

        *(v49 + 4) = v59;
        *(v49 + 12) = 2080;
        *(v49 + 14) = sub_1DEE12A5C(v44, a2, aBlock);
        _os_log_impl(&dword_1DEE0F000, v47, v48, "%s Cannot pair with a device that has no handshakeDescriptor: %s, privacy: .public)", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v50, -1, -1);
        MEMORY[0x1E12CCD70](v49, -1, -1);
      }

      else
      {
      }

      sub_1DEEAA8E8();
      v60 = swift_allocError();
      *v61 = 1;
      v68(v60, 1);
    }
  }

  else
  {
    sub_1DEE46550(v72, *(&v72 + 1));
    v40 = swift_allocObject();
    *(v40 + 16) = a3;
    *(v40 + 24) = v26;
    *(v40 + 32) = v31;
    aBlock[4] = sub_1DEEACFE8;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_630;
    v41 = _Block_copy(aBlock);

    v42 = v63;
    sub_1DEF8D6B8();
    v70 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v43 = v66;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v42, v43, v41);
    _Block_release(v41);
    (*(v64 + 8))(v43, v9);
    (*(v65 + 8))(v42, v67);
  }
}

uint64_t sub_1DEE5EF34(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v44 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v37 - v7;
  v9 = type metadata accessor for PairingRelationship();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[1] = v12;
  MEMORY[0x1EEE9AC00](v13);
  v40 = v37 - v14;
  v15 = sub_1DEF8D788();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v3 + 232);
  *v20 = v21;
  (*(v16 + 104))(v20, *MEMORY[0x1E69E8020], v15, v18);
  v38 = v21;
  LOBYTE(v21) = sub_1DEF8D7B8();
  v23 = *(v16 + 8);
  v22 = v16 + 8;
  v23(v20, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  sub_1DEE29594(v3 + 192, v41);
  v24 = v42;
  v25 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v26 = *(v25 + 8);
  v22 = v44;
  MetadataStoring.pairingRelationship(remoteDeviceID:)(v44, a2, v24, v26, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1DEE171B4(v8, &qword_1ECDE3C18, &unk_1DEF94D20);
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_1DEEAA8E8();
    swift_allocError();
    *v27 = 1;
    return swift_willThrow();
  }

  v9 = v40;
  sub_1DEEAB218(v8, v40, type metadata accessor for PairingRelationship);
  __swift_destroy_boxed_opaque_existential_1(v41);
  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v29 = sub_1DEF8D508();
  __swift_project_value_buffer(v29, qword_1ECDF6028);

  v30 = sub_1DEF8D4D8();
  v31 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v41[0] = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_1DEE12A5C(v22, a2, v41);
    _os_log_impl(&dword_1DEE0F000, v30, v31, "Unpairing device: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E12CCD70](v33, -1, -1);
    MEMORY[0x1E12CCD70](v32, -1, -1);
  }

  v34 = v39;
  sub_1DEEACA70(v9, v39, type metadata accessor for PairingRelationship);
  v35 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v3;
  sub_1DEEAB218(v34, v36 + v35, type metadata accessor for PairingRelationship);

  sub_1DEE2C448(0xD000000000000015, 0x80000001DEF9C300, v38, sub_1DEEAC8B4, v36, 0.0);

  return sub_1DEE273A0(v9, type metadata accessor for PairingRelationship);
}

Swift::Void __swiftcall Replicator.deactivate(remoteDeviceID:)(Swift::String remoteDeviceID)
{
  v2 = v1;
  object = remoteDeviceID._object;
  countAndFlagsBits = remoteDeviceID._countAndFlagsBits;
  v5 = *(v1 + 232);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = countAndFlagsBits;
  v6[4] = object;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DEEA623C;
  *(v7 + 24) = v6;
  v9[4] = sub_1DEE46D40;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_142;
  v8 = _Block_copy(v9);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

uint64_t sub_1DEE5F5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for PairingRelationship();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, &v23);
  v18 = v24;
  v19 = v25;
  __swift_project_boxed_opaque_existential_1(&v23, v24);
  MetadataStoring.pairingRelationship(remoteDeviceID:)(a2, a3, v18, *(v19 + 8), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DEE171B4(v9, &qword_1ECDE3C18, &unk_1DEF94D20);
    return __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  else
  {
    sub_1DEEAB218(v9, v17, type metadata accessor for PairingRelationship);
    __swift_destroy_boxed_opaque_existential_1(&v23);
    if (*&v17[*(v10 + 32) + 8] == 2)
    {
      v21 = *(v10 + 20);
      v23 = xmmword_1DEF90FF0;
      sub_1DEE5F828(&v17[v21], &v23, 2, 1, v14);
      sub_1DEE273A0(v14, type metadata accessor for PairingRelationship);
    }

    return sub_1DEE273A0(v17, type metadata accessor for PairingRelationship);
  }
}

uint64_t sub_1DEE5F828@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v958 = a4;
  v945 = a3;
  v956 = a5;
  v961 = sub_1DEF8D378();
  v953 = *(v961 - 8);
  v8 = *(v953 + 64);
  MEMORY[0x1EEE9AC00](v961);
  v941 = &v867 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v942 = &v867 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v943 = &v867 - v13;
  v939 = sub_1DEF8D3F8();
  v938 = *(v939 - 8);
  v14 = *(v938 + 64);
  MEMORY[0x1EEE9AC00](v939);
  v875 = &v867 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v876 = &v867 - v17;
  v972 = type metadata accessor for PairingRelationship();
  v970 = *(v972 - 1);
  v18 = *(v970 + 8);
  MEMORY[0x1EEE9AC00](v972);
  v936 = &v867 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v892 = &v867 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v906 = &v867 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v930 = &v867 - v25;
  v935 = type metadata accessor for DeviceDescriptor();
  v26 = *(*(v935 - 8) + 64);
  MEMORY[0x1EEE9AC00](v935);
  v960 = &v867 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v948 = &v867 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v950 = (&v867 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v937 = &v867 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v917 = (&v867 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v891 = (&v867 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v966 = &v867 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v887 = (&v867 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v964 = (&v867 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v905 = &v867 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v904 = (&v867 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v896 = &v867 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v882 = (&v867 - v51);
  MEMORY[0x1EEE9AC00](v52);
  v881 = &v867 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v919 = &v867 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v869 = (&v867 - v57);
  MEMORY[0x1EEE9AC00](v58);
  v895 = (&v867 - v59);
  MEMORY[0x1EEE9AC00](v60);
  v880 = (&v867 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v918 = (&v867 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v879 = (&v867 - v65);
  MEMORY[0x1EEE9AC00](v66);
  v971 = (&v867 - v67);
  MEMORY[0x1EEE9AC00](v68);
  v903 = &v867 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v929 = &v867 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v928 = &v867 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v927 = &v867 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v926 = &v867 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v908 = (&v867 - v79);
  MEMORY[0x1EEE9AC00](v80);
  v909 = &v867 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v947 = &v867 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v944 = &v867 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86 - 8);
  v957 = &v867 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v959 = &v867 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v949 = &v867 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v940 = &v867 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v934 = &v867 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v867 - v98;
  MEMORY[0x1EEE9AC00](v100);
  v931 = &v867 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v916 = &v867 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v915 = &v867 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v914 = &v867 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v913 = &v867 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v965 = &v867 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v888 = &v867 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v889 = &v867 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v874 = &v867 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v886 = &v867 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v873 = &v867 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v912 = &v867 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v907 = &v867 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v920 = &v867 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v902 = &v867 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v885 = &v867 - v131;
  MEMORY[0x1EEE9AC00](v132);
  v899 = &v867 - v133;
  MEMORY[0x1EEE9AC00](v134);
  v925 = &v867 - v135;
  MEMORY[0x1EEE9AC00](v136);
  v894 = (&v867 - v137);
  MEMORY[0x1EEE9AC00](v138);
  v878 = &v867 - v139;
  MEMORY[0x1EEE9AC00](v140);
  v911 = &v867 - v141;
  MEMORY[0x1EEE9AC00](v142);
  v870 = &v867 - v143;
  MEMORY[0x1EEE9AC00](v144);
  v890 = &v867 - v145;
  MEMORY[0x1EEE9AC00](v146);
  v872 = &v867 - v147;
  MEMORY[0x1EEE9AC00](v148);
  v868 = &v867 - v149;
  MEMORY[0x1EEE9AC00](v150);
  v871 = &v867 - v151;
  MEMORY[0x1EEE9AC00](v152);
  v924 = &v867 - v153;
  MEMORY[0x1EEE9AC00](v154);
  v893 = (&v867 - v155);
  MEMORY[0x1EEE9AC00](v156);
  v877 = &v867 - v157;
  MEMORY[0x1EEE9AC00](v158);
  v910 = &v867 - v159;
  MEMORY[0x1EEE9AC00](v160);
  v923 = &v867 - v161;
  MEMORY[0x1EEE9AC00](v162);
  v901 = &v867 - v163;
  MEMORY[0x1EEE9AC00](v164);
  v884 = &v867 - v165;
  MEMORY[0x1EEE9AC00](v166);
  v898 = &v867 - v167;
  MEMORY[0x1EEE9AC00](v168);
  v900 = &v867 - v169;
  MEMORY[0x1EEE9AC00](v170);
  v883 = &v867 - v171;
  MEMORY[0x1EEE9AC00](v172);
  v897 = &v867 - v173;
  MEMORY[0x1EEE9AC00](v174);
  v921 = &v867 - v175;
  MEMORY[0x1EEE9AC00](v176);
  v946 = &v867 - v177;
  MEMORY[0x1EEE9AC00](v178);
  v922 = &v867 - v179;
  MEMORY[0x1EEE9AC00](v180);
  v932 = &v867 - v181;
  MEMORY[0x1EEE9AC00](v182);
  v184 = &v867 - v183;
  MEMORY[0x1EEE9AC00](v185);
  v187 = &v867 - v186;
  v188 = sub_1DEF8D788();
  v189 = *(v188 - 8);
  v190 = *(v189 + 64);
  v191 = MEMORY[0x1EEE9AC00](v188);
  v193 = (&v867 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = a2[1];
  v962 = *a2;
  v963 = v194;
  v195 = v5[29];
  *v193 = v195;
  (*(v189 + 104))(v193, *MEMORY[0x1E69E8020], v188, v191);
  v196 = v195;
  LOBYTE(a2) = sub_1DEF8D7B8();
  v198 = *(v189 + 8);
  v197 = v189 + 8;
  v198(v193, v188);
  if ((a2 & 1) == 0)
  {
    __break(1u);
    goto LABEL_295;
  }

  v933 = v99;
  swift_beginAccess();
  v195 = v5;
  sub_1DEE29594((v5 + 24), &v975);
  v200 = v977;
  v199 = v978;
  __swift_project_boxed_opaque_existential_1(&v975, v977);
  v201 = a1[1];
  v202 = *(v199 + 8);
  v952 = *a1;
  v951 = v201;
  MetadataStoring.pairingRelationship(remoteDeviceID:)(v952, v201, v200, v202, v187);
  __swift_destroy_boxed_opaque_existential_1(&v975);
  v99 = v970;
  v203 = *(v970 + 7);
  v955 = v970 + 56;
  v954 = v203;
  v203(v184, 1, 1, v972);
  v5 = a1[4];
  v197 = a1[5];
  v967 = a1;
  v188 = v187;
  if (qword_1ED786060 != -1)
  {
LABEL_295:
    swift_once();
  }

  v968 = v188;
  v969 = v184;
  v204 = v964;
  v205 = v971;
  if (v5 < *(&xmmword_1ED786068 + 1) || xmmword_1ED786068 < v197)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v206 = sub_1DEF8D508();
    __swift_project_value_buffer(v206, qword_1ECDF6028);
    v207 = v944;
    sub_1DEEACA70(v967, v944, type metadata accessor for DeviceDescriptor);
    swift_retain_n();
    v208 = sub_1DEF8D4D8();
    v209 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v208, v209))
    {
      v210 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v975 = v211;
      *v210 = 136446466;
      v212 = v207;
      v213 = v195[66];
      v214 = v195[67];

      v215 = sub_1DEE12A5C(v213, v214, &v975);

      *(v210 + 4) = v215;

      *(v210 + 12) = 2082;
      sub_1DEEACA70(v212, v947, type metadata accessor for DeviceDescriptor);
      v216 = sub_1DEF8D988();
      v218 = sub_1DEE12A5C(v216, v217, &v975);

      *(v210 + 14) = v218;
      v204 = v964;
      v205 = v971;
      sub_1DEE273A0(v212, type metadata accessor for DeviceDescriptor);
      _os_log_impl(&dword_1DEE0F000, v208, v209, "(%{public}s) Remote device has an incompatible protocol: %{public}s", v210, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v211, -1, -1);
      v219 = v210;
      v188 = v968;
      MEMORY[0x1E12CCD70](v219, -1, -1);
    }

    else
    {

      sub_1DEE273A0(v207, type metadata accessor for DeviceDescriptor);
    }
  }

  v220 = *(v99 + 6);
  v221 = v220(v188, 1, v972);
  v970 = v99 + 48;
  v971 = v220;
  v222 = v965;
  if (v221 == 1)
  {
    v223 = v963;
    if (v963 > 1)
    {
      v224 = v967;
      if (v963 == 2)
      {
        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v368 = sub_1DEF8D508();
        __swift_project_value_buffer(v368, qword_1ECDF6028);
        v274 = v926;
        sub_1DEEACA70(v224, v926, type metadata accessor for DeviceDescriptor);
        swift_retain_n();
        v275 = sub_1DEF8D4D8();
        v276 = sub_1DEF8DCB8();
        v369 = os_log_type_enabled(v275, v276);
        v230 = v966;
        if (v369)
        {
          v278 = swift_slowAlloc();
          v279 = v195;
          v280 = swift_slowAlloc();
          v975 = v280;
          *v278 = 136446466;
          v370 = v279[66];
          v371 = v274;
          v372 = v279[67];

          v373 = sub_1DEE12A5C(v370, v372, &v975);

          *(v278 + 4) = v373;

          *(v278 + 12) = 2082;
          v374 = *v371;
          v375 = v371[1];

          v376 = sub_1DEE12A5C(v374, v375, &v975);

          *(v278 + 14) = v376;
          sub_1DEE273A0(v371, type metadata accessor for DeviceDescriptor);
          v288 = "(%{public}s) Remote device %{public}s can't become paired without first pairing";
          goto LABEL_70;
        }
      }

      else
      {
        if (v963 != 3)
        {
LABEL_45:
          sub_1DEE29594((v195 + 24), &v975);
          v310 = v977;
          v311 = v978;
          __swift_project_boxed_opaque_existential_1(&v975, v977);
          v312 = *(v311 + 8);
          v313 = v932;
          v314 = v962;
          MetadataStoring.pairingRelationship(remoteDeviceID:)(v962, v223, v310, v312, v932);
          __swift_destroy_boxed_opaque_existential_1(&v975);
          v315 = v922;
          sub_1DEE17214(v313, v922, &qword_1ECDE3C18, &unk_1DEF94D20);
          if (v971(v315, 1, v972) == 1)
          {
            sub_1DEE171B4(v315, &qword_1ECDE3C18, &unk_1DEF94D20);
            if (qword_1ECDE2E58 != -1)
            {
              swift_once();
            }

            v316 = sub_1DEF8D508();
            __swift_project_value_buffer(v316, qword_1ECDF6028);
            v317 = v908;
            sub_1DEEACA70(v224, v908, type metadata accessor for DeviceDescriptor);

            v318 = v963;
            sub_1DEE4F8C0(v314, v963);

            sub_1DEE4F8C0(v314, v318);
            v319 = sub_1DEF8D4D8();
            v320 = sub_1DEF8DCB8();
            if (os_log_type_enabled(v319, v320))
            {
              v321 = swift_slowAlloc();
              v965 = swift_slowAlloc();
              v975 = v965;
              *v321 = 136446722;
              v322 = v195[66];
              v323 = v195[67];

              v324 = sub_1DEE12A5C(v322, v323, &v975);

              *(v321 + 4) = v324;

              *(v321 + 12) = 2082;
              v325 = *v317;
              v326 = v317[1];

              v327 = sub_1DEE12A5C(v325, v326, &v975);

              *(v321 + 14) = v327;
              sub_1DEE273A0(v317, type metadata accessor for DeviceDescriptor);
              *(v321 + 22) = 2082;
              v328 = v967;

              v329 = sub_1DEE12A5C(v314, v318, &v975);
              sub_1DEE4F8D4(v314, v318);
              *(v321 + 24) = v329;
              sub_1DEE4F8D4(v314, v318);
              sub_1DEE4F8D4(v314, v318);
              _os_log_impl(&dword_1DEE0F000, v319, v320, "(%{public}s) Remote device %{public}s can't adopt relationship from unknown device %{public}s; pairing instead", v321, 0x20u);
              v330 = v965;
              swift_arrayDestroy();
              v331 = v330;
              v224 = v328;
              v242 = v969;
              MEMORY[0x1E12CCD70](v331, -1, -1);
              MEMORY[0x1E12CCD70](v321, -1, -1);

              v230 = v966;
            }

            else
            {

              sub_1DEE273A0(v317, type metadata accessor for DeviceDescriptor);
              sub_1DEE4F8D4(v314, v318);
              sub_1DEE4F8D4(v314, v318);
              v230 = v966;
              v242 = v969;
            }

            v568 = v946;
            sub_1DEF8D3E8();
            v569 = v972;
            sub_1DEEACA70(v224, v568 + v972[5], type metadata accessor for DeviceDescriptor);
            v570 = v568 + v569[6];
            sub_1DEF8D348();
            v571 = v568 + v569[7];
            sub_1DEF8D348();
            v572 = v568 + v569[9];
            sub_1DEF8D348();
            sub_1DEE171B4(v932, &qword_1ECDE3C18, &unk_1DEF94D20);
            v573 = (v568 + v569[8]);
            *v573 = 0;
            v573[1] = 0;
            v954(v568, 0, 1, v569);
            sub_1DEE29D60(v568, v242, &qword_1ECDE3C18, &unk_1DEF94D20);
LABEL_235:
            if (v971(v242, 1, v972) == 1)
            {
              __break(1u);
              goto LABEL_297;
            }

            v730 = v242;
            sub_1DEEACA70(v242 + v972[5], v230, type metadata accessor for DeviceDescriptor);
            sub_1DEE17214((v195 + 53), &v973, &qword_1ECDE3BF0, &unk_1DEF938B0);
            if (v974)
            {
              sub_1DEE2F1AC(&v973, &v975);
              v731 = v977;
              v732 = v978;
              __swift_project_boxed_opaque_existential_1(&v975, v977);
              v733 = (*(v732 + 24))(v952, v951, v731, v732);
              if (v734)
              {
                v735 = v733;
                v736 = v734;
                v737 = v940;
                sub_1DEE17214(v968, v940, &qword_1ECDE3C18, &unk_1DEF94D20);
                if (v971(v737, 1, v972) == 1)
                {
                  sub_1DEE171B4(v737, &qword_1ECDE3C18, &unk_1DEF94D20);
                }

                else
                {
                  v867 = v195;
                  v776 = v737;
                  v777 = v936;
                  sub_1DEEAB218(v776, v936, type metadata accessor for PairingRelationship);
                  v778 = v777 + v972[5];
                  v779 = *(v778 + 168);
                  if (v779)
                  {
                    v780 = *(v778 + 160);
                    if (v735 == v780 && v736 == v779 || (v781 = *(v778 + 160), v782 = *(v778 + 168), (sub_1DEF8E4E8() & 1) != 0))
                    {
                      if (qword_1ECDE2E58 != -1)
                      {
                        swift_once();
                      }

                      v783 = sub_1DEF8D508();
                      __swift_project_value_buffer(v783, qword_1ECDF6028);
                      v784 = v917;
                      sub_1DEEACA70(v224, v917, type metadata accessor for DeviceDescriptor);
                      v785 = v867;
                      swift_retain_n();
                      swift_bridgeObjectRetain_n();
                      v786 = sub_1DEF8D4D8();
                      v787 = sub_1DEF8DCB8();
                      if (os_log_type_enabled(v786, v787))
                      {
                        v788 = swift_slowAlloc();
                        v967 = v735;
                        v789 = v788;
                        v965 = swift_slowAlloc();
                        *&v973 = v965;
                        *v789 = 136446722;
                        v790 = v785;
                        v791 = v785[66];
                        v792 = v780;
                        v793 = v790[67];

                        v794 = sub_1DEE12A5C(v791, v793, &v973);

                        *(v789 + 4) = v794;

                        *(v789 + 12) = 2082;

                        LOBYTE(v793) = v787;
                        v795 = sub_1DEE12A5C(v792, v779, &v973);

                        *(v789 + 14) = v795;
                        swift_bridgeObjectRelease_n();
                        *(v789 + 22) = 2082;
                        v777 = v936;
                        v796 = v790;
                        v230 = v966;
                        v797 = *v784;
                        v798 = v784[1];

                        v799 = sub_1DEE12A5C(v797, v798, &v973);

                        *(v789 + 24) = v799;
                        v195 = v796;
                        sub_1DEE273A0(v784, type metadata accessor for DeviceDescriptor);
                        _os_log_impl(&dword_1DEE0F000, v786, v793, "(%{public}s) Persona ID has not changed from %{public}s for device %{public}s", v789, 0x20u);
                        v800 = v965;
                        swift_arrayDestroy();
                        MEMORY[0x1E12CCD70](v800, -1, -1);
                        v801 = v789;
                        v735 = v967;
                        MEMORY[0x1E12CCD70](v801, -1, -1);

                        v761 = v960;
                      }

                      else
                      {
                        swift_bridgeObjectRelease_n();

                        sub_1DEE273A0(v784, type metadata accessor for DeviceDescriptor);
                        v761 = v960;
                        v195 = v785;
                        v230 = v966;
                      }
                    }

                    else
                    {
                      if (qword_1ECDE2E58 != -1)
                      {
                        swift_once();
                      }

                      v821 = sub_1DEF8D508();
                      __swift_project_value_buffer(v821, qword_1ECDF6028);
                      v822 = v891;
                      sub_1DEEACA70(v224, v891, type metadata accessor for DeviceDescriptor);
                      v823 = v867;
                      swift_retain_n();
                      swift_bridgeObjectRetain_n();
                      swift_bridgeObjectRetain_n();
                      v824 = sub_1DEF8D4D8();
                      v825 = sub_1DEF8DC98();
                      if (os_log_type_enabled(v824, v825))
                      {
                        v826 = swift_slowAlloc();
                        v967 = v735;
                        v827 = v826;
                        v828 = swift_slowAlloc();
                        *&v973 = v828;
                        *v827 = 136446978;
                        v829 = v823;
                        LODWORD(v965) = v825;
                        v830 = v823[66];
                        v831 = v780;
                        v832 = v829[67];

                        v833 = sub_1DEE12A5C(v830, v832, &v973);

                        *(v827 + 4) = v833;

                        *(v827 + 12) = 2082;

                        v834 = sub_1DEE12A5C(v831, v779, &v973);

                        *(v827 + 14) = v834;
                        swift_bridgeObjectRelease_n();
                        *(v827 + 22) = 2082;

                        v835 = sub_1DEE12A5C(v967, v736, &v973);

                        *(v827 + 24) = v835;
                        swift_bridgeObjectRelease_n();
                        *(v827 + 32) = 2082;
                        v836 = *v822;
                        v837 = v822[1];

                        v838 = sub_1DEE12A5C(v836, v837, &v973);
                        v780 = v831;

                        *(v827 + 34) = v838;
                        v777 = v936;
                        sub_1DEE273A0(v822, type metadata accessor for DeviceDescriptor);
                        _os_log_impl(&dword_1DEE0F000, v824, v965, "(%{public}s) Persona ID has changed from %{public}s to %{public}s for device %{public}s", v827, 0x2Au);
                        swift_arrayDestroy();
                        v839 = v828;
                        v230 = v966;
                        MEMORY[0x1E12CCD70](v839, -1, -1);
                        v840 = v827;
                        v735 = v967;
                        MEMORY[0x1E12CCD70](v840, -1, -1);

                        v761 = v960;
                      }

                      else
                      {
                        swift_bridgeObjectRelease_n();
                        swift_bridgeObjectRelease_n();

                        sub_1DEE273A0(v822, type metadata accessor for DeviceDescriptor);
                        v761 = v960;
                        v230 = v966;
                      }

                      *&v973 = 0;
                      *(&v973 + 1) = 0xE000000000000000;
                      MEMORY[0x1E12CB180](0, 0xE000000000000000);
                      MEMORY[0x1E12CB180](v780, v779);
                      MEMORY[0x1E12CB180](45, 0xE100000000000000);
                      MEMORY[0x1E12CB180](v735, v736);
                      MEMORY[0x1E12CB180](0, 0xE000000000000000);
                      sub_1DEF66074(0x43616E6F73726550, 0xED000065676E6168, 0x43616E6F73726550, 0xED000065676E6168, 0x43616E6F73726550, 0xED000065676E6168, v973, *(&v973 + 1));

                      v195 = v867;
                    }

                    sub_1DEE273A0(v777, type metadata accessor for PairingRelationship);
                    v730 = v969;
                    goto LABEL_279;
                  }

                  sub_1DEE273A0(v777, type metadata accessor for PairingRelationship);
                  v730 = v969;
                  v195 = v867;
                }

                v803 = v937;
                if (qword_1ECDE2E58 != -1)
                {
                  swift_once();
                }

                v804 = sub_1DEF8D508();
                __swift_project_value_buffer(v804, qword_1ECDF6028);
                sub_1DEEACA70(v224, v803, type metadata accessor for DeviceDescriptor);
                swift_retain_n();
                swift_bridgeObjectRetain_n();
                v805 = sub_1DEF8D4D8();
                v806 = sub_1DEF8DCB8();
                if (os_log_type_enabled(v805, v806))
                {
                  v807 = v803;
                  v808 = v195;
                  v809 = swift_slowAlloc();
                  v810 = v735;
                  v811 = swift_slowAlloc();
                  *&v973 = v811;
                  *v809 = 136446722;
                  v812 = v808[66];
                  v813 = v808[67];

                  v814 = sub_1DEE12A5C(v812, v813, &v973);

                  *(v809 + 4) = v814;

                  *(v809 + 12) = 2082;

                  v815 = sub_1DEE12A5C(v810, v736, &v973);

                  *(v809 + 14) = v815;
                  swift_bridgeObjectRelease_n();
                  *(v809 + 22) = 2082;
                  v816 = *v807;
                  v817 = v807[1];

                  v818 = sub_1DEE12A5C(v816, v817, &v973);
                  v230 = v966;

                  *(v809 + 24) = v818;
                  sub_1DEE273A0(v807, type metadata accessor for DeviceDescriptor);
                  _os_log_impl(&dword_1DEE0F000, v805, v806, "(%{public}s) Using persona ID %{public}s for device %{public}s", v809, 0x20u);
                  swift_arrayDestroy();
                  v819 = v811;
                  v735 = v810;
                  MEMORY[0x1E12CCD70](v819, -1, -1);
                  v820 = v809;
                  v195 = v808;
                  v730 = v969;
                  MEMORY[0x1E12CCD70](v820, -1, -1);
                }

                else
                {
                  swift_bridgeObjectRelease_n();

                  sub_1DEE273A0(v803, type metadata accessor for DeviceDescriptor);
                }

                v761 = v960;
LABEL_279:
                v841 = *(v230 + 168);

                *(v230 + 160) = v735;
                *(v230 + 168) = v736;
                __swift_destroy_boxed_opaque_existential_1(&v975);
                goto LABEL_280;
              }

              __swift_destroy_boxed_opaque_existential_1(&v975);
            }

            else
            {
              sub_1DEE171B4(&v973, &qword_1ECDE3BF0, &unk_1DEF938B0);
            }

            v738 = v224;
            v739 = v949;
            sub_1DEE17214(v968, v949, &qword_1ECDE3C18, &unk_1DEF94D20);
            v740 = v971(v739, 1, v972);
            v741 = v950;
            if (v740 == 1)
            {
              sub_1DEE171B4(v739, &qword_1ECDE3C18, &unk_1DEF94D20);
              v742 = v948;
            }

            else
            {
              v743 = v947;
              sub_1DEEACA70(v739 + v972[5], v947, type metadata accessor for DeviceDescriptor);
              sub_1DEE273A0(v739, type metadata accessor for PairingRelationship);
              v745 = *(v743 + 160);
              v744 = *(v743 + 168);

              sub_1DEE273A0(v743, type metadata accessor for DeviceDescriptor);
              v742 = v948;
              if (v744)
              {
                if (qword_1ECDE2E58 != -1)
                {
                  swift_once();
                }

                v746 = sub_1DEF8D508();
                __swift_project_value_buffer(v746, qword_1ECDF6028);
                sub_1DEEACA70(v738, v741, type metadata accessor for DeviceDescriptor);
                swift_retain_n();
                swift_bridgeObjectRetain_n();
                v747 = sub_1DEF8D4D8();
                v748 = sub_1DEF8DCB8();
                if (os_log_type_enabled(v747, v748))
                {
                  v749 = v195;
                  v750 = swift_slowAlloc();
                  v967 = swift_slowAlloc();
                  v975 = v967;
                  *v750 = 136446722;
                  v751 = v749[66];
                  v752 = v749[67];

                  v753 = sub_1DEE12A5C(v751, v752, &v975);

                  *(v750 + 4) = v753;

                  *(v750 + 12) = 2082;
                  v754 = *v741;
                  v755 = v741[1];

                  v756 = sub_1DEE12A5C(v754, v755, &v975);
                  v230 = v966;

                  *(v750 + 14) = v756;
                  sub_1DEE273A0(v741, type metadata accessor for DeviceDescriptor);
                  *(v750 + 22) = 2082;

                  v757 = sub_1DEE12A5C(v745, v744, &v975);

                  *(v750 + 24) = v757;
                  swift_bridgeObjectRelease_n();
                  _os_log_impl(&dword_1DEE0F000, v747, v748, "(%{public}s) No persona ID found for device %{public}s; keeping existing ID %{public}s", v750, 0x20u);
                  v758 = v967;
                  swift_arrayDestroy();
                  MEMORY[0x1E12CCD70](v758, -1, -1);
                  v759 = v750;
                  v195 = v749;
                  v760 = v969;
                  MEMORY[0x1E12CCD70](v759, -1, -1);

                  v761 = v960;
                }

                else
                {

                  sub_1DEE273A0(v741, type metadata accessor for DeviceDescriptor);
                  swift_bridgeObjectRelease_n();
                  v761 = v960;
                  v760 = v730;
                }

                v802 = *(v230 + 168);

                *(v230 + 160) = v745;
                *(v230 + 168) = v744;
LABEL_281:
                sub_1DEEACA70(v230, v761, type metadata accessor for DeviceDescriptor);
                if (v971(v760, 1, v972) != 1)
                {
                  v842 = v972;
                  sub_1DEE1B474(v761, v760 + v972[5], type metadata accessor for DeviceDescriptor);
                  v843 = v195;
                  sub_1DEE29594((v195 + 24), &v975);
                  v844 = v760;
                  v845 = v977;
                  v846 = v978;
                  __swift_project_boxed_opaque_existential_1(&v975, v977);
                  v847 = v844;
                  v848 = v959;
                  sub_1DEE17214(v847, v959, &qword_1ECDE3C18, &unk_1DEF94D20);
                  if (v971(v848, 1, v842) != 1)
                  {
                    (*(*(v846 + 16) + 112))(v848, v845);
                    sub_1DEE273A0(v848, type metadata accessor for PairingRelationship);
                    __swift_destroy_boxed_opaque_existential_1(&v975);
                    if (v958)
                    {
                      sub_1DEE9074C();
                      sub_1DEE90FF8();
                    }

                    v849 = v969;
                    if (v971(v969, 1, v972) != 1)
                    {
                      v850 = v849 + v972[5];
                      v851 = *(v850 + 120);
                      if (v851 >> 60 != 15)
                      {
                        v852 = *(v850 + 112);
                        v853 = v843[63];
                        v854 = v843[64];
                        __swift_project_boxed_opaque_existential_1(v843 + 60, v853);
                        v855 = *(v854 + 16);
                        sub_1DEE1BFF4(v852, v851);
                        v856 = v853;
                        v849 = v969;
                        v855(v852, v851, v856, v854);
                        sub_1DEE2416C(v852, v851);
                      }

                      v857 = v843[18];
                      sub_1DEE29594((v843 + 24), &v975);
                      v859 = v977;
                      v858 = v978;
                      __swift_project_boxed_opaque_existential_1(&v975, v977);
                      *&v973 = (*(*(*(v858 + 8) + 8) + 32))(v859);
                      sub_1DEF8D588();

                      __swift_destroy_boxed_opaque_existential_1(&v975);
                      v860 = v957;
                      sub_1DEE17214(v849, v957, &qword_1ECDE3C18, &unk_1DEF94D20);
                      if (v971(v860, 1, v972) != 1)
                      {
                        sub_1DEE171B4(v968, &qword_1ECDE3C18, &unk_1DEF94D20);
                        sub_1DEEAB218(v860, v956, type metadata accessor for PairingRelationship);
                        sub_1DEE273A0(v230, type metadata accessor for DeviceDescriptor);
                        return sub_1DEE171B4(v849, &qword_1ECDE3C18, &unk_1DEF94D20);
                      }

                      goto LABEL_300;
                    }

LABEL_299:
                    __break(1u);
LABEL_300:
                    __break(1u);
                    goto LABEL_301;
                  }

LABEL_298:
                  __break(1u);
                  goto LABEL_299;
                }

LABEL_297:
                __break(1u);
                goto LABEL_298;
              }
            }

            if (qword_1ECDE2E58 != -1)
            {
              swift_once();
            }

            v762 = sub_1DEF8D508();
            __swift_project_value_buffer(v762, qword_1ECDF6028);
            sub_1DEEACA70(v738, v742, type metadata accessor for DeviceDescriptor);
            swift_retain_n();
            v763 = sub_1DEF8D4D8();
            v764 = sub_1DEF8DCB8();
            if (os_log_type_enabled(v763, v764))
            {
              v765 = swift_slowAlloc();
              v766 = v195;
              v767 = swift_slowAlloc();
              v975 = v767;
              *v765 = 136446466;
              v768 = v742;
              v769 = v766[66];
              v770 = v766[67];

              v771 = sub_1DEE12A5C(v769, v770, &v975);

              *(v765 + 4) = v771;

              *(v765 + 12) = 2082;
              v772 = *v768;
              v773 = v768[1];

              v774 = sub_1DEE12A5C(v772, v773, &v975);

              *(v765 + 14) = v774;
              sub_1DEE273A0(v768, type metadata accessor for DeviceDescriptor);
              _os_log_impl(&dword_1DEE0F000, v763, v764, "(%{public}s) No persona ID found for device %{public}s; no existing ID available", v765, 0x16u);
              swift_arrayDestroy();
              v775 = v767;
              v195 = v766;
              v760 = v969;
              MEMORY[0x1E12CCD70](v775, -1, -1);
              MEMORY[0x1E12CCD70](v765, -1, -1);

              v761 = v960;
              goto LABEL_281;
            }

            sub_1DEE273A0(v742, type metadata accessor for DeviceDescriptor);
            v761 = v960;
LABEL_280:
            v760 = v730;
            goto LABEL_281;
          }

          sub_1DEEAB218(v315, v930, type metadata accessor for PairingRelationship);
          v401 = sub_1DEE8FFFC(v224, v314, v223);
          if (v401)
          {
            v402 = 2;
          }

          else
          {
            v402 = 0;
          }

          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v403 = sub_1DEF8D508();
          __swift_project_value_buffer(v403, qword_1ECDF6028);
          v404 = v224;
          v405 = v909;
          sub_1DEEACA70(v224, v909, type metadata accessor for DeviceDescriptor);

          sub_1DEE4F8C0(v314, v223);
          sub_1DEE4F8C0(0, v402);

          sub_1DEE4F8C0(v314, v223);
          sub_1DEE4F8C0(0, v402);
          v406 = sub_1DEF8D4D8();
          v407 = sub_1DEF8DCB8();
          if (os_log_type_enabled(v406, v407))
          {
            v408 = v195;
            v409 = swift_slowAlloc();
            v965 = swift_slowAlloc();
            v975 = v965;
            *v409 = 136446978;
            LODWORD(v964) = v407;
            v410 = v405;
            v411 = v408[66];
            v412 = v408[67];

            v413 = sub_1DEE12A5C(v411, v412, &v975);

            *(v409 + 4) = v413;

            v945 = v401;
            *(v409 + 12) = 2082;
            v414 = *v410;
            v415 = v410[1];

            v416 = sub_1DEE12A5C(v414, v415, &v975);

            *(v409 + 14) = v416;
            sub_1DEE273A0(v410, type metadata accessor for DeviceDescriptor);
            *(v409 + 22) = 2082;

            v417 = sub_1DEE12A5C(v314, v223, &v975);
            sub_1DEE4F8D4(v314, v223);
            *(v409 + 24) = v417;
            sub_1DEE4F8D4(v314, v223);
            sub_1DEE4F8D4(v314, v223);
            *(v409 + 32) = 2082;
            if (v945)
            {
              v418 = 0x646572696170;
            }

            else
            {
              v418 = 0x6375646F72746E69;
            }

            if (v945)
            {
              v419 = 0xE600000000000000;
            }

            else
            {
              v419 = 0xEA00000000006465;
            }

            v420 = sub_1DEE12A5C(v418, v419, &v975);

            *(v409 + 34) = v420;
            v421 = v967;
            sub_1DEE4F8D4(0, v402);
            sub_1DEE4F8D4(0, v402);
            _os_log_impl(&dword_1DEE0F000, v406, v964, "(%{public}s) Remote device %{public}s is adopting relationship from device %{public}s; new state is %{public}s", v409, 0x2Au);
            v422 = v965;
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v422, -1, -1);
            v423 = v409;
            v195 = v408;
            v224 = v421;
            MEMORY[0x1E12CCD70](v423, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v405, type metadata accessor for DeviceDescriptor);
            sub_1DEE4F8D4(v314, v223);
            sub_1DEE4F8D4(v314, v223);
            sub_1DEE4F8D4(0, v402);
            sub_1DEE4F8D4(0, v402);
            v224 = v404;
          }

          v574 = v946;
          sub_1DEE29594((v195 + 24), &v975);
          v575 = v195;
          v576 = v977;
          v577 = v978;
          __swift_project_boxed_opaque_existential_1(&v975, v977);
          v578 = *(v577 + 16);
          v195 = v575;
          v579 = v930;
          (*(v578 + 120))(v930, v576);
          __swift_destroy_boxed_opaque_existential_1(&v975);
          (*(v938 + 16))(v574, v579, v939);
          v580 = v972;
          sub_1DEEACA70(v224, v574 + v972[5], type metadata accessor for DeviceDescriptor);
          v581 = v574 + v580[6];
          sub_1DEF8D348();
          v582 = v574 + v580[7];
          sub_1DEF8D348();
          sub_1DEE171B4(v932, &qword_1ECDE3C18, &unk_1DEF94D20);
          (*(v953 + 16))(v574 + v580[9], v579 + v580[9], v961);
          sub_1DEE273A0(v579, type metadata accessor for PairingRelationship);
          v583 = (v574 + v580[8]);
          *v583 = 0;
          v583[1] = v402;
          v954(v574, 0, 1, v580);
          v242 = v969;
          sub_1DEE29D60(v574, v969, &qword_1ECDE3C18, &unk_1DEF94D20);
LABEL_234:
          v230 = v966;
          goto LABEL_235;
        }

        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v273 = sub_1DEF8D508();
        __swift_project_value_buffer(v273, qword_1ECDF6028);
        v274 = v929;
        sub_1DEEACA70(v224, v929, type metadata accessor for DeviceDescriptor);
        swift_retain_n();
        v275 = sub_1DEF8D4D8();
        v276 = sub_1DEF8DCB8();
        v277 = os_log_type_enabled(v275, v276);
        v230 = v966;
        if (v277)
        {
          v278 = swift_slowAlloc();
          v279 = v195;
          v280 = swift_slowAlloc();
          v975 = v280;
          *v278 = 136446466;
          v281 = v279[66];
          v282 = v274;
          v283 = v279[67];

          v284 = sub_1DEE12A5C(v281, v283, &v975);

          *(v278 + 4) = v284;

          *(v278 + 12) = 2082;
          v285 = *v282;
          v286 = v282[1];

          v287 = sub_1DEE12A5C(v285, v286, &v975);

          *(v278 + 14) = v287;
          sub_1DEE273A0(v282, type metadata accessor for DeviceDescriptor);
          v288 = "(%{public}s) Remote device %{public}s can't become inactive without first being paired";
LABEL_70:
          _os_log_impl(&dword_1DEE0F000, v275, v276, v288, v278, 0x16u);
          swift_arrayDestroy();
          v377 = v280;
          v195 = v279;
          v230 = v966;
          v224 = v967;
          v242 = v969;
          MEMORY[0x1E12CCD70](v377, -1, -1);
          MEMORY[0x1E12CCD70](v278, -1, -1);

LABEL_72:
          v378 = v946;
          sub_1DEF8D3E8();
          v379 = v972;
          sub_1DEEACA70(v224, v378 + v972[5], type metadata accessor for DeviceDescriptor);
          v380 = v378 + v379[6];
          sub_1DEF8D348();
          v381 = v378 + v379[7];
          sub_1DEF8D348();
          v382 = v378 + v379[9];
          sub_1DEF8D348();
          v383 = (v378 + v379[8]);
          *v383 = 0;
          v383[1] = 0;
LABEL_110:
          v954(v378, 0, 1, v379);
          sub_1DEE29D60(v378, v242, &qword_1ECDE3C18, &unk_1DEF94D20);
          goto LABEL_235;
        }
      }
    }

    else
    {
      v224 = v967;
      if (v963)
      {
        if (v963 == 1)
        {
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v225 = sub_1DEF8D508();
          __swift_project_value_buffer(v225, qword_1ECDF6028);
          v226 = v927;
          sub_1DEEACA70(v224, v927, type metadata accessor for DeviceDescriptor);
          swift_retain_n();
          v227 = sub_1DEF8D4D8();
          v228 = sub_1DEF8DCB8();
          v229 = os_log_type_enabled(v227, v228);
          v230 = v966;
          if (v229)
          {
            v231 = swift_slowAlloc();
            v232 = v195;
            v233 = swift_slowAlloc();
            v975 = v233;
            *v231 = 136446466;
            v234 = v232[66];
            v235 = v226;
            v236 = v232[67];

            v237 = sub_1DEE12A5C(v234, v236, &v975);

            *(v231 + 4) = v237;

            *(v231 + 12) = 2082;
            v238 = *v235;
            v239 = v235[1];

            v240 = sub_1DEE12A5C(v238, v239, &v975);

            *(v231 + 14) = v240;
            sub_1DEE273A0(v235, type metadata accessor for DeviceDescriptor);
            _os_log_impl(&dword_1DEE0F000, v227, v228, "(%{public}s) Remote device %{public}s is pairing", v231, 0x16u);
            swift_arrayDestroy();
            v241 = v233;
            v195 = v232;
            v230 = v966;
            v224 = v967;
            v242 = v969;
            MEMORY[0x1E12CCD70](v241, -1, -1);
            MEMORY[0x1E12CCD70](v231, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v226, type metadata accessor for DeviceDescriptor);
            v242 = v969;
          }

          v378 = v946;
          sub_1DEF8D3E8();
          v379 = v972;
          sub_1DEEACA70(v224, v378 + v972[5], type metadata accessor for DeviceDescriptor);
          v466 = v378 + v379[6];
          sub_1DEF8D348();
          v467 = v378 + v379[7];
          sub_1DEF8D348();
          v468 = v378 + v379[9];
          sub_1DEF8D348();
          *(v378 + v379[8]) = xmmword_1DEF91000;
          goto LABEL_110;
        }

        goto LABEL_45;
      }

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v332 = sub_1DEF8D508();
      __swift_project_value_buffer(v332, qword_1ECDF6028);
      v274 = v928;
      sub_1DEEACA70(v224, v928, type metadata accessor for DeviceDescriptor);
      swift_retain_n();
      v275 = sub_1DEF8D4D8();
      v276 = sub_1DEF8DCB8();
      v333 = os_log_type_enabled(v275, v276);
      v230 = v966;
      if (v333)
      {
        v278 = swift_slowAlloc();
        v279 = v195;
        v280 = swift_slowAlloc();
        v975 = v280;
        *v278 = 136446466;
        v334 = v279[66];
        v335 = v274;
        v336 = v279[67];

        v337 = sub_1DEE12A5C(v334, v336, &v975);

        *(v278 + 4) = v337;

        *(v278 + 12) = 2082;
        v338 = *v335;
        v339 = v335[1];

        v340 = sub_1DEE12A5C(v338, v339, &v975);

        *(v278 + 14) = v340;
        sub_1DEE273A0(v335, type metadata accessor for DeviceDescriptor);
        v288 = "(%{public}s) Remote device %{public}s is being introduced";
        goto LABEL_70;
      }
    }

    sub_1DEE273A0(v274, type metadata accessor for DeviceDescriptor);
    v242 = v969;
    goto LABEL_72;
  }

  v243 = v963;
  v244 = v961;
  v945 = v945;
  if (v963 > 1)
  {
    v245 = v967;
    if (v963 != 2)
    {
      if (v963 == 3)
      {
        v289 = v195;
        v290 = v925;
        sub_1DEE17214(v188, v925, &qword_1ECDE3C18, &unk_1DEF94D20);
        if (v971(v290, 1, v972) == 1)
        {
LABEL_304:
          __break(1u);
          goto LABEL_305;
        }

        v291 = (v290 + v972[8]);
        v292 = *v291;
        v293 = v291[1];
        sub_1DEE4F8C0(*v291, v293);
        sub_1DEE273A0(v290, type metadata accessor for PairingRelationship);
        if (v293 != 2)
        {
          v964 = v292;
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v469 = sub_1DEF8D508();
          __swift_project_value_buffer(v469, qword_1ECDF6028);
          v470 = v245;
          v471 = v905;
          sub_1DEEACA70(v470, v905, type metadata accessor for DeviceDescriptor);
          v472 = v899;
          sub_1DEE17214(v188, v899, &qword_1ECDE3C18, &unk_1DEF94D20);
          v473 = v289;
          swift_retain_n();
          v474 = sub_1DEF8D4D8();
          v475 = sub_1DEF8DCB8();
          if (os_log_type_enabled(v474, v475))
          {
            v476 = swift_slowAlloc();
            v477 = v471;
            v478 = swift_slowAlloc();
            v975 = v478;
            *v476 = 136446978;
            v479 = v289[66];
            v480 = v473[67];

            v481 = sub_1DEE12A5C(v479, v480, &v975);

            *(v476 + 4) = v481;
            v867 = v473;

            *(v476 + 12) = 2082;
            v482 = *v477;
            v483 = v477[1];

            v484 = sub_1DEE12A5C(v482, v483, &v975);

            *(v476 + 14) = v484;
            v485 = v972;
            sub_1DEE273A0(v477, type metadata accessor for DeviceDescriptor);
            *(v476 + 22) = 2082;
            v486 = v885;
            sub_1DEE17214(v472, v885, &qword_1ECDE3C18, &unk_1DEF94D20);
            if (v971(v486, 1, v485) == 1)
            {
LABEL_317:
              __break(1u);
              goto LABEL_318;
            }

            v487 = (v486 + v485[8]);
            v488 = *v487;
            v489 = v487[1];
            sub_1DEE4F8C0(*v487, v489);
            sub_1DEE273A0(v486, type metadata accessor for PairingRelationship);
            v490 = sub_1DEE5DBB0(v488, v489);
            v492 = sub_1DEE12A5C(v490, v491, &v975);

            *(v476 + 24) = v492;
            sub_1DEE171B4(v472, &qword_1ECDE3C18, &unk_1DEF94D20);
            *(v476 + 32) = 2082;
            *(v476 + 34) = sub_1DEE12A5C(0x6576697463616E69, 0xE800000000000000, &v975);
            _os_log_impl(&dword_1DEE0F000, v474, v475, "(%{public}s) Relationship %{public}s cannot switch from %{public}s to %{public}s", v476, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v478, -1, -1);
            MEMORY[0x1E12CCD70](v476, -1, -1);

            v289 = v867;
          }

          else
          {

            sub_1DEE273A0(v471, type metadata accessor for DeviceDescriptor);
            sub_1DEE171B4(v472, &qword_1ECDE3C18, &unk_1DEF94D20);
          }

          v622 = v902;
          sub_1DEE17214(v968, v902, &qword_1ECDE3C18, &unk_1DEF94D20);
          if (v971(v622, 1, v972) == 1)
          {
            goto LABEL_311;
          }

          sub_1DEE4F8D4(v964, v293);
          v623 = (v622 + v972[8]);
          v308 = v623[1];
          v962 = *v623;
          sub_1DEE4F8C0(v962, v308);
          sub_1DEE273A0(v622, type metadata accessor for PairingRelationship);
          v307 = 0;
          v309 = v969;
          v195 = v289;
          v244 = v961;
          v230 = v966;
          goto LABEL_216;
        }

        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v294 = sub_1DEF8D508();
        __swift_project_value_buffer(v294, qword_1ECDF6028);
        v295 = v904;
        sub_1DEEACA70(v245, v904, type metadata accessor for DeviceDescriptor);
        v195 = v289;
        swift_retain_n();
        v296 = sub_1DEF8D4D8();
        v297 = sub_1DEF8DCB8();
        if (os_log_type_enabled(v296, v297))
        {
          v298 = swift_slowAlloc();
          v299 = swift_slowAlloc();
          v975 = v299;
          *v298 = 136446466;
          v300 = v289[66];
          v301 = v289[67];

          v302 = sub_1DEE12A5C(v300, v301, &v975);

          *(v298 + 4) = v302;

          *(v298 + 12) = 2082;
          v303 = *v295;
          v304 = v295[1];

          v305 = sub_1DEE12A5C(v303, v304, &v975);

          *(v298 + 14) = v305;
          sub_1DEE273A0(v295, type metadata accessor for DeviceDescriptor);
          _os_log_impl(&dword_1DEE0F000, v296, v297, "(%{public}s) Relationship %{public}s switched from paired to inactive", v298, 0x16u);
          swift_arrayDestroy();
          v306 = v299;
          v195 = v289;
          MEMORY[0x1E12CCD70](v306, -1, -1);
          MEMORY[0x1E12CCD70](v298, -1, -1);

          v307 = 0;
          v962 = 0;
          v308 = 3;
          v309 = v969;
          v244 = v961;
          v230 = v966;
LABEL_216:
          v222 = v965;
          goto LABEL_217;
        }

        sub_1DEE273A0(v295, type metadata accessor for DeviceDescriptor);
        v307 = 0;
        v962 = 0;
        v308 = 3;
        v309 = v969;
        v244 = v961;
LABEL_185:
        v230 = v966;
        goto LABEL_216;
      }

LABEL_50:
      if (v945 - 1 < 2)
      {

        v307 = 0;
        v308 = v243;
        v230 = v966;
        v309 = v969;
        goto LABEL_217;
      }

      v424 = v962;
      v425 = sub_1DEE8FFFC(v245, v962, v963);
      v426 = 2;
      if (!v425)
      {
        v426 = 0;
      }

      v944 = v426;
      sub_1DEE29594((v195 + 24), &v975);
      v427 = v977;
      v428 = v978;
      __swift_project_boxed_opaque_existential_1(&v975, v977);
      v429 = *(v428 + 8);
      v430 = v424;
      v431 = v920;
      MetadataStoring.pairingRelationship(remoteDeviceID:)(v430, v243, v427, v429, v920);
      __swift_destroy_boxed_opaque_existential_1(&v975);
      v432 = v431;
      v433 = v907;
      sub_1DEE17214(v432, v907, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v971(v433, 1, v972) == 1)
      {
        LODWORD(v935) = v425;
        sub_1DEE171B4(v433, &qword_1ECDE3C18, &unk_1DEF94D20);
        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v434 = sub_1DEF8D508();
        __swift_project_value_buffer(v434, qword_1ECDF6028);
        v435 = v245;
        v436 = v887;
        sub_1DEEACA70(v245, v887, type metadata accessor for DeviceDescriptor);
        v437 = v188;
        v438 = v886;
        sub_1DEE17214(v437, v886, &qword_1ECDE3C18, &unk_1DEF94D20);

        v439 = v963;
        sub_1DEE4F8C0(v430, v963);
        v308 = v944;
        sub_1DEE4F8C0(0, v944);

        sub_1DEE4F8C0(v430, v439);
        sub_1DEE4F8C0(0, v308);
        v440 = v430;
        v441 = sub_1DEF8D4D8();
        LODWORD(v964) = sub_1DEF8DCB8();
        v442 = os_log_type_enabled(v441, v964);
        v230 = v966;
        if (v442)
        {
          v443 = v195;
          v444 = swift_slowAlloc();
          v445 = swift_slowAlloc();
          v975 = v445;
          *v444 = 136447234;
          v446 = v443[66];
          v447 = v443[67];

          v448 = sub_1DEE12A5C(v446, v447, &v975);

          *(v444 + 4) = v448;
          v867 = v443;

          *(v444 + 12) = 2082;
          v449 = *v436;
          v450 = v436[1];

          v451 = sub_1DEE12A5C(v449, v450, &v975);

          *(v444 + 14) = v451;
          sub_1DEE273A0(v436, type metadata accessor for DeviceDescriptor);
          *(v444 + 22) = 2082;
          v452 = v874;
          sub_1DEE17214(v438, v874, &qword_1ECDE3C18, &unk_1DEF94D20);
          if (v971(v452, 1, v972) == 1)
          {
LABEL_321:
            sub_1DEE4F8D4(0, v944);
            sub_1DEE4F8D4(v962, v963);
            __break(1u);
            goto LABEL_322;
          }

          v453 = v938;
          v454 = v875;
          v455 = v939;
          (*(v938 + 16))(v875, v452, v939);
          sub_1DEE273A0(v452, type metadata accessor for PairingRelationship);
          sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
          v456 = sub_1DEF8E2E8();
          v458 = v457;
          (*(v453 + 8))(v454, v455);
          v459 = sub_1DEE12A5C(v456, v458, &v975);

          *(v444 + 24) = v459;
          sub_1DEE171B4(v438, &qword_1ECDE3C18, &unk_1DEF94D20);
          *(v444 + 32) = 2082;
          v460 = v963;

          v461 = v962;
          v462 = sub_1DEE12A5C(v962, v460, &v975);
          sub_1DEE4F8D4(v461, v460);
          *(v444 + 34) = v462;
          sub_1DEE4F8D4(v461, v460);
          sub_1DEE4F8D4(v461, v460);
          *(v444 + 42) = 2082;
          if (v935)
          {
            v463 = 0x646572696170;
          }

          else
          {
            v463 = 0x6375646F72746E69;
          }

          if (v935)
          {
            v464 = 0xE600000000000000;
          }

          else
          {
            v464 = 0xEA00000000006465;
          }

          v465 = sub_1DEE12A5C(v463, v464, &v975);

          *(v444 + 44) = v465;
          v308 = v944;
          sub_1DEE4F8D4(0, v944);
          sub_1DEE4F8D4(0, v308);
          _os_log_impl(&dword_1DEE0F000, v441, v964, "(%{public}s) Relationship %{public}s (%{public}s) is migrating from unknown relationship %{public}s; state: %{public}s", v444, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v445, -1, -1);
          MEMORY[0x1E12CCD70](v444, -1, -1);

          v230 = v966;
          v435 = v967;
          v195 = v867;
        }

        else
        {

          sub_1DEE273A0(v436, type metadata accessor for DeviceDescriptor);
          sub_1DEE171B4(v438, &qword_1ECDE3C18, &unk_1DEF94D20);
          sub_1DEE4F8D4(v440, v439);
          sub_1DEE4F8D4(v440, v439);
          sub_1DEE4F8D4(0, v308);
          sub_1DEE4F8D4(0, v308);
        }

        v679 = v888;
        sub_1DEE17214(v968, v888, &qword_1ECDE3C18, &unk_1DEF94D20);
        v680 = v971(v679, 1, v972);
        v244 = v961;
        if (v680 == 1)
        {
          goto LABEL_315;
        }

        v681 = v889;
        (*(v938 + 16))(v889, v679, v939);
        sub_1DEE273A0(v679, type metadata accessor for PairingRelationship);
        v682 = v972;
        sub_1DEEACA70(v435, v681 + v972[5], type metadata accessor for DeviceDescriptor);
        v683 = v681 + v682[6];
        sub_1DEF8D348();
        v684 = v681 + v682[7];
        sub_1DEF8D348();
        v685 = v682[9];
        sub_1DEE4F8C0(0, v308);
        sub_1DEF8D348();
        sub_1DEE171B4(v920, &qword_1ECDE3C18, &unk_1DEF94D20);
        v686 = (v681 + v682[8]);
        *v686 = 0;
        v686[1] = v308;
        v954(v681, 0, 1, v682);
        v309 = v969;
        sub_1DEE29D60(v681, v969, &qword_1ECDE3C18, &unk_1DEF94D20);
        v307 = 0;
        v962 = 0;
        goto LABEL_216;
      }

      v584 = v433;
      v585 = v906;
      sub_1DEEAB218(v584, v906, type metadata accessor for PairingRelationship);
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v586 = sub_1DEF8D508();
      __swift_project_value_buffer(v586, qword_1ECDF6028);
      sub_1DEEACA70(v245, v204, type metadata accessor for DeviceDescriptor);
      sub_1DEE17214(v188, v912, &qword_1ECDE3C18, &unk_1DEF94D20);
      v587 = v892;
      sub_1DEEACA70(v585, v892, type metadata accessor for PairingRelationship);

      v588 = v963;
      sub_1DEE4F8C0(v430, v963);
      v589 = v944;
      sub_1DEE4F8C0(0, v944);

      sub_1DEE4F8C0(v430, v588);
      sub_1DEE4F8C0(0, v589);
      v590 = v430;
      v591 = sub_1DEF8D4D8();
      v592 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v591, v592))
      {
        LODWORD(v932) = v592;
        LODWORD(v935) = v425;
        v593 = v195;
        v594 = swift_slowAlloc();
        v930 = swift_slowAlloc();
        v975 = v930;
        *v594 = 136447490;
        v595 = v593[66];
        v596 = v593[67];

        v597 = sub_1DEE12A5C(v595, v596, &v975);

        *(v594 + 4) = v597;
        v867 = v593;

        *(v594 + 12) = 2082;
        v598 = v964;
        v599 = *v964;
        v600 = v964[1];

        v601 = sub_1DEE12A5C(v599, v600, &v975);

        *(v594 + 14) = v601;
        sub_1DEE273A0(v598, type metadata accessor for DeviceDescriptor);
        *(v594 + 22) = 2082;
        v602 = v873;
        sub_1DEE17214(v912, v873, &qword_1ECDE3C18, &unk_1DEF94D20);
        if (v971(v602, 1, v972) == 1)
        {
LABEL_322:
          sub_1DEE4F8D4(0, v944);
          result = sub_1DEE4F8D4(v962, v963);
          __break(1u);
          goto LABEL_323;
        }

        v603 = v938;
        v604 = v876;
        v605 = v939;
        (*(v938 + 16))(v876, v602, v939);
        sub_1DEE273A0(v602, type metadata accessor for PairingRelationship);
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v606 = sub_1DEF8E2E8();
        v608 = v607;
        (*(v603 + 8))(v604, v605);
        v609 = sub_1DEE12A5C(v606, v608, &v975);

        *(v594 + 24) = v609;
        sub_1DEE171B4(v912, &qword_1ECDE3C18, &unk_1DEF94D20);
        *(v594 + 32) = 2082;
        v610 = v963;

        v611 = v962;
        v612 = sub_1DEE12A5C(v962, v610, &v975);
        sub_1DEE4F8D4(v611, v610);
        *(v594 + 34) = v612;
        sub_1DEE4F8D4(v611, v610);
        sub_1DEE4F8D4(v611, v610);
        *(v594 + 42) = 2082;
        v613 = v892;
        v614 = sub_1DEF8E2E8();
        v616 = sub_1DEE12A5C(v614, v615, &v975);

        *(v594 + 44) = v616;
        sub_1DEE273A0(v613, type metadata accessor for PairingRelationship);
        *(v594 + 52) = 2082;
        if (v935)
        {
          v617 = 0x646572696170;
        }

        else
        {
          v617 = 0x6375646F72746E69;
        }

        if (v935)
        {
          v618 = 0xE600000000000000;
        }

        else
        {
          v618 = 0xEA00000000006465;
        }

        v619 = sub_1DEE12A5C(v617, v618, &v975);

        *(v594 + 54) = v619;
        v620 = v944;
        sub_1DEE4F8D4(0, v944);
        sub_1DEE4F8D4(0, v620);
        _os_log_impl(&dword_1DEE0F000, v591, v932, "(%{public}s) Relationship %{public}s (%{public}s) is migrating from relationship %{public}s (%{public}s); state: %{public}s", v594, 0x3Eu);
        v621 = v930;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v621, -1, -1);
        MEMORY[0x1E12CCD70](v594, -1, -1);

        v195 = v867;
        v309 = v969;
        v245 = v967;
      }

      else
      {

        sub_1DEE273A0(v964, type metadata accessor for DeviceDescriptor);
        sub_1DEE171B4(v912, &qword_1ECDE3C18, &unk_1DEF94D20);
        sub_1DEE4F8D4(v590, v588);
        sub_1DEE4F8D4(v590, v588);
        sub_1DEE273A0(v587, type metadata accessor for PairingRelationship);
        v687 = v944;
        sub_1DEE4F8D4(0, v944);
        sub_1DEE4F8D4(0, v687);
        v605 = v939;
        v603 = v938;
        v309 = v969;
      }

      sub_1DEE29594((v195 + 24), &v975);
      v688 = v977;
      v689 = v978;
      __swift_project_boxed_opaque_existential_1(&v975, v977);
      v690 = v906;
      (*(*(v689 + 16) + 120))(v906, v688);
      __swift_destroy_boxed_opaque_existential_1(&v975);
      v691 = *(v603 + 16);
      v692 = v946;
      v691(v946, v690, v605);
      v693 = v972;
      sub_1DEEACA70(v245, v692 + v972[5], type metadata accessor for DeviceDescriptor);
      v694 = v692 + v693[6];
      sub_1DEF8D348();
      v695 = v692 + v693[7];
      sub_1DEF8D348();
      sub_1DEE171B4(v920, &qword_1ECDE3C18, &unk_1DEF94D20);
      v244 = v961;
      (*(v953 + 16))(v692 + v693[9], v690 + v693[9], v961);
      v308 = v944;
      sub_1DEE4F8C0(0, v944);
      sub_1DEE273A0(v690, type metadata accessor for PairingRelationship);
      v696 = (v692 + v693[8]);
      *v696 = 0;
      v696[1] = v308;
      v954(v692, 0, 1, v693);
      sub_1DEE29D60(v692, v309, &qword_1ECDE3C18, &unk_1DEF94D20);
      v307 = 0;
      v962 = 0;
      goto LABEL_185;
    }

    v384 = v923;
    sub_1DEE17214(v188, v923, &qword_1ECDE3C18, &unk_1DEF94D20);
    if (v971(v384, 1, v972) == 1)
    {
LABEL_306:
      __break(1u);
      goto LABEL_307;
    }

    v385 = (v384 + v972[8]);
    v249 = *v385;
    v248 = v385[1];
    sub_1DEE4F8C0(*v385, v248);
    sub_1DEE273A0(v384, type metadata accessor for PairingRelationship);
    v230 = v966;
    v386 = v918;
    if (v248 > 1)
    {
      if (v248 != 2)
      {
        if (v248 == 3)
        {
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v515 = sub_1DEF8D508();
          __swift_project_value_buffer(v515, qword_1ECDF6028);
          v386 = v880;
          sub_1DEEACA70(v245, v880, type metadata accessor for DeviceDescriptor);
          swift_retain_n();
          v388 = sub_1DEF8D4D8();
          v389 = sub_1DEF8DCB8();
          if (os_log_type_enabled(v388, v389))
          {
            v390 = swift_slowAlloc();
            v516 = v386;
            v392 = v195;
            v393 = swift_slowAlloc();
            v975 = v393;
            *v390 = 136446466;
            v517 = v392[66];
            v518 = v392[67];

            v519 = sub_1DEE12A5C(v517, v518, &v975);

            *(v390 + 4) = v519;

            *(v390 + 12) = 2082;
            v520 = *v516;
            v521 = v516[1];

            v522 = sub_1DEE12A5C(v520, v521, &v975);
            v308 = 2;

            *(v390 + 14) = v522;
            sub_1DEE273A0(v516, type metadata accessor for DeviceDescriptor);
            v400 = "(%{public}s) Relationship %{public}s switched from inactive to paired";
            goto LABEL_199;
          }

LABEL_202:
          v308 = 2;

LABEL_203:
          sub_1DEE273A0(v386, type metadata accessor for DeviceDescriptor);
          v307 = 0;
          v962 = 0;
          goto LABEL_204;
        }

LABEL_168:
        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v640 = sub_1DEF8D508();
        __swift_project_value_buffer(v640, qword_1ECDF6028);
        sub_1DEEACA70(v245, v386, type metadata accessor for DeviceDescriptor);
        swift_retain_n();
        v641 = sub_1DEF8D4D8();
        v642 = sub_1DEF8DCB8();
        if (os_log_type_enabled(v641, v642))
        {
          v643 = swift_slowAlloc();
          v867 = v195;
          v644 = v643;
          v645 = swift_slowAlloc();
          v975 = v645;
          *v644 = 136446466;
          v646 = v867[66];
          v647 = v867[67];

          v648 = sub_1DEE12A5C(v646, v647, &v975);

          *(v644 + 4) = v648;

          *(v644 + 12) = 2082;
          v649 = *v386;
          v650 = v386[1];

          v651 = sub_1DEE12A5C(v649, v650, &v975);
          v230 = v966;

          *(v644 + 14) = v651;
          sub_1DEE273A0(v386, type metadata accessor for DeviceDescriptor);
          _os_log_impl(&dword_1DEE0F000, v641, v642, "(%{public}s) Relationship %{public}s switched from migrating to paired", v644, 0x16u);
          swift_arrayDestroy();
          v652 = v645;
          v308 = 2;
          MEMORY[0x1E12CCD70](v652, -1, -1);
          v653 = v644;
          v195 = v867;
          v309 = v969;
          MEMORY[0x1E12CCD70](v653, -1, -1);

          sub_1DEE4F8D4(v249, v248);
LABEL_200:
          v307 = 0;
          v962 = 0;
          goto LABEL_201;
        }

        sub_1DEE4F8D4(v249, v248);
        v308 = 2;

        goto LABEL_203;
      }
    }

    else if (v248)
    {
      if (v248 == 1)
      {
        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v387 = sub_1DEF8D508();
        __swift_project_value_buffer(v387, qword_1ECDF6028);
        v386 = v879;
        sub_1DEEACA70(v245, v879, type metadata accessor for DeviceDescriptor);
        swift_retain_n();
        v388 = sub_1DEF8D4D8();
        v389 = sub_1DEF8DCB8();
        if (os_log_type_enabled(v388, v389))
        {
          v390 = swift_slowAlloc();
          v391 = v386;
          v392 = v195;
          v393 = swift_slowAlloc();
          v975 = v393;
          *v390 = 136446466;
          v394 = v392[66];
          v395 = v392[67];

          v396 = sub_1DEE12A5C(v394, v395, &v975);

          *(v390 + 4) = v396;

          *(v390 + 12) = 2082;
          v397 = *v391;
          v398 = v391[1];

          v399 = sub_1DEE12A5C(v397, v398, &v975);
          v308 = 2;

          *(v390 + 14) = v399;
          sub_1DEE273A0(v391, type metadata accessor for DeviceDescriptor);
          v400 = "(%{public}s) Relationship %{public}s switched from pairing to paired";
LABEL_199:
          _os_log_impl(&dword_1DEE0F000, v388, v389, v400, v390, 0x16u);
          swift_arrayDestroy();
          v705 = v393;
          v195 = v392;
          v230 = v966;
          v309 = v969;
          MEMORY[0x1E12CCD70](v705, -1, -1);
          MEMORY[0x1E12CCD70](v390, -1, -1);

          goto LABEL_200;
        }

        goto LABEL_202;
      }

      goto LABEL_168;
    }

    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v545 = sub_1DEF8D508();
    __swift_project_value_buffer(v545, qword_1ECDF6028);
    v546 = v245;
    v547 = v895;
    sub_1DEEACA70(v546, v895, type metadata accessor for DeviceDescriptor);
    v548 = v910;
    sub_1DEE17214(v188, v910, &qword_1ECDE3C18, &unk_1DEF94D20);
    swift_retain_n();
    v549 = sub_1DEF8D4D8();
    v550 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v549, v550))
    {
      v551 = swift_slowAlloc();
      v964 = swift_slowAlloc();
      v975 = v964;
      *v551 = 136446978;
      v552 = v195[66];
      v553 = v195[67];

      v554 = sub_1DEE12A5C(v552, v553, &v975);

      *(v551 + 4) = v554;
      v867 = v195;

      *(v551 + 12) = 2082;
      v555 = *v547;
      v556 = v547[1];

      v557 = sub_1DEE12A5C(v555, v556, &v975);

      *(v551 + 14) = v557;
      v558 = v972;
      v559 = v910;
      sub_1DEE273A0(v547, type metadata accessor for DeviceDescriptor);
      *(v551 + 22) = 2082;
      v560 = v877;
      sub_1DEE17214(v559, v877, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v971(v560, 1, v558) == 1)
      {
LABEL_320:
        __break(1u);
        goto LABEL_321;
      }

      v561 = (v560 + v558[8]);
      v562 = *v561;
      v563 = v561[1];
      sub_1DEE4F8C0(*v561, v563);
      sub_1DEE273A0(v560, type metadata accessor for PairingRelationship);
      v564 = sub_1DEE5DBB0(v562, v563);
      v566 = sub_1DEE12A5C(v564, v565, &v975);

      *(v551 + 24) = v566;
      sub_1DEE171B4(v559, &qword_1ECDE3C18, &unk_1DEF94D20);
      *(v551 + 32) = 2082;
      *(v551 + 34) = sub_1DEE12A5C(0x646572696170, 0xE600000000000000, &v975);
      _os_log_impl(&dword_1DEE0F000, v549, v550, "(%{public}s) Relationship %{public}s cannot switch from %{public}s to %{public}s", v551, 0x2Au);
      v567 = v964;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v567, -1, -1);
      MEMORY[0x1E12CCD70](v551, -1, -1);

      v195 = v867;
      v230 = v966;
    }

    else
    {

      sub_1DEE273A0(v547, type metadata accessor for DeviceDescriptor);
      sub_1DEE171B4(v548, &qword_1ECDE3C18, &unk_1DEF94D20);
    }

    v386 = v893;
    sub_1DEE17214(v968, v893, &qword_1ECDE3C18, &unk_1DEF94D20);
    v654 = v971(v386, 1, v972);
    v222 = v965;
    if (v654 == 1)
    {
      goto LABEL_314;
    }

    goto LABEL_174;
  }

  if (!v963)
  {
    v341 = v921;
    sub_1DEE17214(v188, v921, &qword_1ECDE3C18, &unk_1DEF94D20);
    if (v971(v341, 1, v972) == 1)
    {
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    v342 = (v341 + v972[8]);
    v343 = *v342;
    v344 = v342[1];
    sub_1DEE4F8C0(*v342, v344);
    sub_1DEE273A0(v341, type metadata accessor for PairingRelationship);
    if (v344 - 1 <= 1)
    {
      v345 = v967;
      v244 = v961;
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v346 = sub_1DEF8D508();
      __swift_project_value_buffer(v346, qword_1ECDF6028);
      v347 = v903;
      sub_1DEEACA70(v345, v903, type metadata accessor for DeviceDescriptor);
      v348 = v897;
      sub_1DEE17214(v188, v897, &qword_1ECDE3C18, &unk_1DEF94D20);
      swift_retain_n();
      v349 = sub_1DEF8D4D8();
      v350 = v195;
      v351 = sub_1DEF8DCB8();
      v352 = os_log_type_enabled(v349, v351);
      v353 = v966;
      if (!v352)
      {

        sub_1DEE273A0(v347, type metadata accessor for DeviceDescriptor);
        sub_1DEE171B4(v348, &qword_1ECDE3C18, &unk_1DEF94D20);
        v195 = v350;
        v230 = v353;
LABEL_214:
        v710 = v900;
        sub_1DEE17214(v188, v900, &qword_1ECDE3C18, &unk_1DEF94D20);
        v711 = v971(v710, 1, v972);
        v309 = v969;
        if (v711 == 1)
        {
LABEL_312:
          __break(1u);
          goto LABEL_313;
        }

        sub_1DEE67760(v710);
        sub_1DEE273A0(v710, type metadata accessor for PairingRelationship);
        v307 = 0;
        v962 = 0;
        v308 = 0;
        goto LABEL_216;
      }

      v354 = swift_slowAlloc();
      v964 = swift_slowAlloc();
      *&v973 = v964;
      *v354 = 136446722;
      v355 = v350[66];
      v356 = v347;
      v357 = v350[67];

      v358 = sub_1DEE12A5C(v355, v357, &v973);

      *(v354 + 4) = v358;
      v867 = v350;

      *(v354 + 12) = 2082;
      v359 = *v356;
      v360 = v356[1];

      v361 = sub_1DEE12A5C(v359, v360, &v973);

      *(v354 + 14) = v361;
      sub_1DEE273A0(v356, type metadata accessor for DeviceDescriptor);
      *(v354 + 22) = 2082;
      v362 = v883;
      sub_1DEE17214(v348, v883, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v971(v362, 1, v972) == 1)
      {
LABEL_316:
        __break(1u);
        goto LABEL_317;
      }

      v363 = (v362 + v972[8]);
      v364 = *v363;
      v365 = v363[1];
      sub_1DEE4F8C0(*v363, v365);
      sub_1DEE273A0(v362, type metadata accessor for PairingRelationship);
      if (v365 > 1)
      {
        v230 = v966;
        if (v365 == 2)
        {
          v366 = 0xE600000000000000;
          v367 = 0x646572696170;
          goto LABEL_213;
        }

        if (v365 == 3)
        {
          v366 = 0xE800000000000000;
          v367 = 0x6576697463616E69;
          goto LABEL_213;
        }
      }

      else
      {
        v230 = v966;
        if (!v365)
        {
          v367 = 0x6375646F72746E69;
          v366 = 0xEA00000000006465;
          goto LABEL_213;
        }

        if (v365 == 1)
        {
          v366 = 0xE700000000000000;
          v367 = 0x676E6972696170;
LABEL_213:
          v708 = sub_1DEE12A5C(v367, v366, &v973);

          *(v354 + 24) = v708;
          sub_1DEE171B4(v348, &qword_1ECDE3C18, &unk_1DEF94D20);
          _os_log_impl(&dword_1DEE0F000, v349, v351, "(%{public}s) Relationship %{public}s switched from %{public}s to introduced", v354, 0x20u);
          v709 = v964;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v709, -1, -1);
          MEMORY[0x1E12CCD70](v354, -1, -1);

          v188 = v968;
          v195 = v867;
          v244 = v961;
          goto LABEL_214;
        }
      }

      v975 = 0x6E6974617267696DLL;
      v976 = 0xEA00000000002867;
      MEMORY[0x1E12CB180](v364, v365);
      MEMORY[0x1E12CB180](41, 0xE100000000000000);
      sub_1DEE4F8D4(v364, v365);
      v367 = v975;
      v366 = v976;
      goto LABEL_213;
    }

    v493 = v967;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v494 = sub_1DEF8D508();
    __swift_project_value_buffer(v494, qword_1ECDF6028);
    sub_1DEEACA70(v493, v205, type metadata accessor for DeviceDescriptor);
    v495 = v898;
    sub_1DEE17214(v188, v898, &qword_1ECDE3C18, &unk_1DEF94D20);
    swift_retain_n();
    v496 = v195;
    v497 = sub_1DEF8D4D8();
    v498 = sub_1DEF8DCB8();
    v499 = os_log_type_enabled(v497, v498);
    v230 = v966;
    if (!v499)
    {

      sub_1DEE273A0(v205, type metadata accessor for DeviceDescriptor);
      sub_1DEE171B4(v495, &qword_1ECDE3C18, &unk_1DEF94D20);
      v195 = v496;
LABEL_292:
      v863 = v901;
      sub_1DEE17214(v188, v901, &qword_1ECDE3C18, &unk_1DEF94D20);
      v864 = v971(v863, 1, v972);
      v309 = v969;
      v222 = v965;
      if (v864 == 1)
      {
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
        goto LABEL_316;
      }

      sub_1DEE4F8D4(v343, v344);
      v865 = (v863 + v972[8]);
      v866 = v863;
      v308 = v865[1];
      v962 = *v865;
      sub_1DEE4F8C0(v962, v308);
      sub_1DEE273A0(v866, type metadata accessor for PairingRelationship);
      v307 = 0;
      v244 = v961;
LABEL_217:
      v712 = v309;
      sub_1DEE17214(v309, v222, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v971(v222, 1, v972) != 1)
      {
        sub_1DEE4F8D4(v962, v308);
        sub_1DEE171B4(v222, &qword_1ECDE3C18, &unk_1DEF94D20);
        v242 = v309;
        v224 = v967;
        goto LABEL_235;
      }

      sub_1DEE171B4(v222, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v945)
      {
        if (v945 == 1)
        {
          v713 = v914;
          sub_1DEE17214(v968, v914, &qword_1ECDE3C18, &unk_1DEF94D20);
          if (v971(v713, 1, v972) == 1)
          {
LABEL_307:
            __break(1u);
            goto LABEL_308;
          }

          v714 = *(v953 + 16);
          v714(v943, v713 + v972[6], v244);
          sub_1DEE273A0(v713, type metadata accessor for PairingRelationship);
          sub_1DEF8D348();
          if (!v307)
          {
            goto LABEL_230;
          }

LABEL_226:
          v716 = v967;
          sub_1DEF8D348();
LABEL_232:
          v723 = v939;
          v724 = v308;
          v725 = v934;
          sub_1DEE17214(v968, v934, &qword_1ECDE3C18, &unk_1DEF94D20);
          if (v971(v725, 1, v972) == 1)
          {
LABEL_301:
            __break(1u);
            goto LABEL_302;
          }

          v726 = v933;
          (*(v938 + 16))(v933, v725, v723);
          sub_1DEE273A0(v725, type metadata accessor for PairingRelationship);
          v727 = v972;
          sub_1DEEACA70(v716, v726 + v972[5], type metadata accessor for DeviceDescriptor);
          v728 = *(v953 + 32);
          v728(v726 + v727[6], v943, v244);
          v728(v726 + v727[7], v942, v244);
          v729 = (v726 + v727[8]);
          *v729 = v962;
          v729[1] = v724;
          v728(v726 + v727[9], v941, v244);
          v954(v726, 0, 1, v727);
          v242 = v712;
          sub_1DEE29D60(v726, v712, &qword_1ECDE3C18, &unk_1DEF94D20);
          v224 = v716;
          goto LABEL_234;
        }

        v944 = v308;
        v717 = v968;
        v718 = v915;
        sub_1DEE17214(v968, v915, &qword_1ECDE3C18, &unk_1DEF94D20);
        if (v971(v718, 1, v972) == 1)
        {
LABEL_309:
          __break(1u);
          goto LABEL_310;
        }

        v719 = v972;
        v714 = *(v953 + 16);
        v720 = v961;
        v714(v943, v718 + v972[6], v961);
        sub_1DEE273A0(v718, type metadata accessor for PairingRelationship);
        v721 = v916;
        sub_1DEE17214(v717, v916, &qword_1ECDE3C18, &unk_1DEF94D20);
        if (v971(v721, 1, v719) == 1)
        {
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
          goto LABEL_312;
        }

        v714(v942, v721 + v972[7], v720);
        sub_1DEE273A0(v721, type metadata accessor for PairingRelationship);
        v244 = v720;
        v308 = v944;
        if (v307)
        {
          goto LABEL_226;
        }
      }

      else
      {
        sub_1DEF8D348();
        v715 = v913;
        sub_1DEE17214(v968, v913, &qword_1ECDE3C18, &unk_1DEF94D20);
        if (v971(v715, 1, v972) == 1)
        {
LABEL_308:
          __break(1u);
          goto LABEL_309;
        }

        v714 = *(v953 + 16);
        v714(v942, v715 + v972[7], v244);
        sub_1DEE273A0(v715, type metadata accessor for PairingRelationship);
        if (v307)
        {
          goto LABEL_226;
        }
      }

LABEL_230:
      v722 = v931;
      sub_1DEE17214(v968, v931, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v971(v722, 1, v972) == 1)
      {
LABEL_302:
        __break(1u);
        goto LABEL_303;
      }

      v716 = v967;
      v714(v941, v722 + v972[9], v244);
      sub_1DEE273A0(v722, type metadata accessor for PairingRelationship);
      goto LABEL_232;
    }

    LODWORD(v964) = v498;
    v500 = v205;
    v501 = swift_slowAlloc();
    v963 = swift_slowAlloc();
    *&v973 = v963;
    *v501 = 136446978;
    v502 = v496[66];
    v503 = v496[67];

    v504 = sub_1DEE12A5C(v502, v503, &v973);

    *(v501 + 4) = v504;
    v867 = v496;

    *(v501 + 12) = 2082;
    v505 = *v500;
    v506 = v500[1];

    v507 = sub_1DEE12A5C(v505, v506, &v973);

    *(v501 + 14) = v507;
    sub_1DEE273A0(v500, type metadata accessor for DeviceDescriptor);
    *(v501 + 22) = 2082;
    v508 = v884;
    sub_1DEE17214(v495, v884, &qword_1ECDE3C18, &unk_1DEF94D20);
    if (v971(v508, 1, v972) == 1)
    {
LABEL_318:
      __break(1u);
      goto LABEL_319;
    }

    v509 = v495;
    v510 = (v508 + v972[8]);
    v511 = *v510;
    v512 = v510[1];
    sub_1DEE4F8C0(*v510, v512);
    sub_1DEE273A0(v508, type metadata accessor for PairingRelationship);
    if (v512 > 1)
    {
      v230 = v966;
      if (v512 == 2)
      {
        v513 = 0xE600000000000000;
        v514 = 0x646572696170;
        goto LABEL_291;
      }

      if (v512 == 3)
      {
        v513 = 0xE800000000000000;
        v514 = 0x6576697463616E69;
        goto LABEL_291;
      }
    }

    else
    {
      v230 = v966;
      if (!v512)
      {
        v514 = 0x6375646F72746E69;
        v513 = 0xEA00000000006465;
        goto LABEL_291;
      }

      if (v512 == 1)
      {
        v513 = 0xE700000000000000;
        v514 = 0x676E6972696170;
LABEL_291:
        v861 = sub_1DEE12A5C(v514, v513, &v973);

        *(v501 + 24) = v861;
        sub_1DEE171B4(v509, &qword_1ECDE3C18, &unk_1DEF94D20);
        *(v501 + 32) = 2082;
        *(v501 + 34) = sub_1DEE12A5C(0x6375646F72746E69, 0xEA00000000006465, &v973);
        _os_log_impl(&dword_1DEE0F000, v497, v964, "(%{public}s) Relationship %{public}s cannot switch from %{public}s to %{public}s", v501, 0x2Au);
        v862 = v963;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v862, -1, -1);
        MEMORY[0x1E12CCD70](v501, -1, -1);

        v195 = v867;
        v188 = v968;
        goto LABEL_292;
      }
    }

    v975 = 0x6E6974617267696DLL;
    v976 = 0xEA00000000002867;
    MEMORY[0x1E12CB180](v511, v512);
    MEMORY[0x1E12CB180](41, 0xE100000000000000);
    sub_1DEE4F8D4(v511, v512);
    v514 = v975;
    v513 = v976;
    goto LABEL_291;
  }

  v245 = v967;
  if (v963 != 1)
  {
    goto LABEL_50;
  }

  v246 = v924;
  sub_1DEE17214(v188, v924, &qword_1ECDE3C18, &unk_1DEF94D20);
  if (v971(v246, 1, v972) == 1)
  {
LABEL_303:
    __break(1u);
    goto LABEL_304;
  }

  v247 = (v246 + v972[8]);
  v249 = *v247;
  v248 = v247[1];
  sub_1DEE4F8C0(*v247, v248);
  sub_1DEE273A0(v246, type metadata accessor for PairingRelationship);
  v230 = v966;
  v250 = v919;
  if ((v248 - 2) < 2)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v523 = sub_1DEF8D508();
    __swift_project_value_buffer(v523, qword_1ECDF6028);
    v524 = v245;
    v245 = v896;
    sub_1DEEACA70(v524, v896, type metadata accessor for DeviceDescriptor);
    v525 = v911;
    sub_1DEE17214(v188, v911, &qword_1ECDE3C18, &unk_1DEF94D20);
    swift_retain_n();
    v526 = sub_1DEF8D4D8();
    v527 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v526, v527))
    {
      v964 = v249;
      v528 = v972;
      v529 = swift_slowAlloc();
      v530 = v245;
      v245 = swift_slowAlloc();
      v975 = v245;
      *v529 = 136446978;
      v531 = v195[66];
      v532 = v195[67];

      v533 = sub_1DEE12A5C(v531, v532, &v975);

      *(v529 + 4) = v533;
      v867 = v195;

      *(v529 + 12) = 2082;
      v534 = *v530;
      v535 = v530[1];

      v536 = sub_1DEE12A5C(v534, v535, &v975);

      *(v529 + 14) = v536;
      v537 = v911;
      sub_1DEE273A0(v530, type metadata accessor for DeviceDescriptor);
      *(v529 + 22) = 2082;
      v538 = v878;
      sub_1DEE17214(v537, v878, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v971(v538, 1, v528) == 1)
      {
LABEL_319:
        __break(1u);
        goto LABEL_320;
      }

      v539 = (v538 + v528[8]);
      v540 = *v539;
      v541 = v539[1];
      sub_1DEE4F8C0(*v539, v541);
      sub_1DEE273A0(v538, type metadata accessor for PairingRelationship);
      v542 = sub_1DEE5DBB0(v540, v541);
      v544 = sub_1DEE12A5C(v542, v543, &v975);

      *(v529 + 24) = v544;
      sub_1DEE171B4(v537, &qword_1ECDE3C18, &unk_1DEF94D20);
      *(v529 + 32) = 2082;
      *(v529 + 34) = sub_1DEE12A5C(0x676E6972696170, 0xE700000000000000, &v975);
      _os_log_impl(&dword_1DEE0F000, v526, v527, "(%{public}s) Relationship %{public}s cannot switch from %{public}s to %{public}s", v529, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v245, -1, -1);
      MEMORY[0x1E12CCD70](v529, -1, -1);

      v195 = v867;
      v230 = v966;
      v386 = v894;
      v249 = v964;
    }

    else
    {

      sub_1DEE273A0(v245, type metadata accessor for DeviceDescriptor);
      sub_1DEE171B4(v525, &qword_1ECDE3C18, &unk_1DEF94D20);
      v386 = v894;
    }

    sub_1DEE17214(v968, v386, &qword_1ECDE3C18, &unk_1DEF94D20);
    v639 = v971(v386, 1, v972);
    v222 = v965;
    if (v639 == 1)
    {
      __break(1u);
      goto LABEL_168;
    }

LABEL_174:
    sub_1DEE4F8D4(v249, v248);
    v655 = (v386 + v972[8]);
    v308 = v655[1];
    v962 = *v655;
    sub_1DEE4F8C0(v962, v308);
    sub_1DEE273A0(v386, type metadata accessor for PairingRelationship);
    v307 = 0;
    v244 = v961;
    v309 = v969;
    goto LABEL_217;
  }

  if (!v248)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v624 = sub_1DEF8D508();
    __swift_project_value_buffer(v624, qword_1ECDF6028);
    v625 = v881;
    sub_1DEEACA70(v245, v881, type metadata accessor for DeviceDescriptor);
    swift_retain_n();
    v626 = sub_1DEF8D4D8();
    v627 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v626, v627))
    {
      v628 = swift_slowAlloc();
      v629 = v625;
      v630 = v195;
      v631 = swift_slowAlloc();
      v975 = v631;
      *v628 = 136446466;
      v632 = v630[66];
      v633 = v630[67];

      v634 = sub_1DEE12A5C(v632, v633, &v975);

      *(v628 + 4) = v634;

      *(v628 + 12) = 2082;
      v635 = *v629;
      v636 = v629[1];

      v637 = sub_1DEE12A5C(v635, v636, &v975);

      *(v628 + 14) = v637;
      sub_1DEE273A0(v629, type metadata accessor for DeviceDescriptor);
      _os_log_impl(&dword_1DEE0F000, v626, v627, "(%{public}s) Relationship %{public}s switched from introduced to pairing", v628, 0x16u);
      swift_arrayDestroy();
      v638 = v631;
      v195 = v630;
      v230 = v966;
      v309 = v969;
      MEMORY[0x1E12CCD70](v638, -1, -1);
      MEMORY[0x1E12CCD70](v628, -1, -1);

      v962 = 0;
      v307 = 1;
      v308 = 1;
LABEL_201:
      v244 = v961;
      goto LABEL_216;
    }

    sub_1DEE273A0(v625, type metadata accessor for DeviceDescriptor);
    v962 = 0;
    v308 = 1;
    v307 = 1;
LABEL_204:
    v244 = v961;
    v222 = v965;
    v309 = v969;
    goto LABEL_217;
  }

  if (v248 != 1)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v656 = sub_1DEF8D508();
    __swift_project_value_buffer(v656, qword_1ECDF6028);
    v657 = v882;
    sub_1DEEACA70(v245, v882, type metadata accessor for DeviceDescriptor);
    v658 = v890;
    sub_1DEE17214(v188, v890, &qword_1ECDE3C18, &unk_1DEF94D20);
    swift_retain_n();
    v659 = sub_1DEF8D4D8();
    v660 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v659, v660))
    {
      v661 = v195;
      v662 = swift_slowAlloc();
      v663 = swift_slowAlloc();
      v975 = v663;
      *v662 = 136446722;
      v664 = v661[66];
      v665 = v661[67];

      v666 = sub_1DEE12A5C(v664, v665, &v975);

      *(v662 + 4) = v666;
      v867 = v661;

      *(v662 + 12) = 2082;
      v667 = *v657;
      v668 = v657[1];

      v669 = sub_1DEE12A5C(v667, v668, &v975);

      *(v662 + 14) = v669;
      v670 = v972;
      sub_1DEE273A0(v657, type metadata accessor for DeviceDescriptor);
      *(v662 + 22) = 2082;
      v671 = v890;
      v672 = v870;
      sub_1DEE17214(v890, v870, &qword_1ECDE3C18, &unk_1DEF94D20);
      result = (v971)(v672, 1, v670);
      if (result == 1)
      {
LABEL_324:
        __break(1u);
        goto LABEL_325;
      }

      v673 = (v672 + v670[8]);
      v674 = *v673;
      v675 = v673[1];
      sub_1DEE4F8C0(*v673, v675);
      sub_1DEE273A0(v672, type metadata accessor for PairingRelationship);
      v676 = sub_1DEE5DBB0(v674, v675);
      v678 = sub_1DEE12A5C(v676, v677, &v975);

      *(v662 + 24) = v678;
      sub_1DEE171B4(v671, &qword_1ECDE3C18, &unk_1DEF94D20);
      _os_log_impl(&dword_1DEE0F000, v659, v660, "(%{public}s) Relationship %{public}s switched from %{public}s to pairing", v662, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v663, -1, -1);
      MEMORY[0x1E12CCD70](v662, -1, -1);

      sub_1DEE4F8D4(v249, v248);
      v307 = 0;
      v962 = 0;
      v308 = 1;
      v195 = v867;
      v309 = v969;
      v230 = v966;
      goto LABEL_201;
    }

    sub_1DEE4F8D4(v249, v248);

    sub_1DEE273A0(v657, type metadata accessor for DeviceDescriptor);
    sub_1DEE171B4(v658, &qword_1ECDE3C18, &unk_1DEF94D20);
    v307 = 0;
    v962 = 0;
    v308 = 1;
    goto LABEL_204;
  }

  if (!v945)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v697 = sub_1DEF8D508();
    __swift_project_value_buffer(v697, qword_1ECDF6028);
    v386 = v869;
    sub_1DEEACA70(v245, v869, type metadata accessor for DeviceDescriptor);
    swift_retain_n();
    v388 = sub_1DEF8D4D8();
    v389 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v388, v389))
    {
      v390 = swift_slowAlloc();
      v698 = v386;
      v392 = v195;
      v393 = swift_slowAlloc();
      v975 = v393;
      *v390 = 136446466;
      v699 = v392[66];
      v700 = v392[67];

      v701 = sub_1DEE12A5C(v699, v700, &v975);

      *(v390 + 4) = v701;

      *(v390 + 12) = 2082;
      v702 = *v698;
      v703 = v698[1];

      v704 = sub_1DEE12A5C(v702, v703, &v975);
      v308 = 2;

      *(v390 + 14) = v704;
      sub_1DEE273A0(v698, type metadata accessor for DeviceDescriptor);
      v400 = "(%{public}s) Relationship %{public}s switched from pairing to paired via pairing";
      goto LABEL_199;
    }

    goto LABEL_202;
  }

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v251 = sub_1DEF8D508();
  __swift_project_value_buffer(v251, qword_1ECDF6028);
  sub_1DEEACA70(v245, v250, type metadata accessor for DeviceDescriptor);
  v252 = v871;
  sub_1DEE17214(v188, v871, &qword_1ECDE3C18, &unk_1DEF94D20);
  swift_retain_n();
  v253 = sub_1DEF8D4D8();
  v254 = sub_1DEF8DCB8();
  if (!os_log_type_enabled(v253, v254))
  {

    sub_1DEE273A0(v250, type metadata accessor for DeviceDescriptor);
    sub_1DEE171B4(v252, &qword_1ECDE3C18, &unk_1DEF94D20);
    goto LABEL_206;
  }

  v255 = swift_slowAlloc();
  v256 = v250;
  v257 = v195;
  v258 = swift_slowAlloc();
  v975 = v258;
  *v255 = 136446978;
  v259 = v257[66];
  v260 = v257[67];

  v261 = sub_1DEE12A5C(v259, v260, &v975);

  *(v255 + 4) = v261;
  v867 = v257;

  *(v255 + 12) = 2082;
  v262 = *v256;
  v263 = v256[1];

  v264 = sub_1DEE12A5C(v262, v263, &v975);

  *(v255 + 14) = v264;
  sub_1DEE273A0(v256, type metadata accessor for DeviceDescriptor);
  *(v255 + 22) = 2082;
  v265 = v868;
  sub_1DEE17214(v252, v868, &qword_1ECDE3C18, &unk_1DEF94D20);
  result = (v971)(v265, 1, v972);
  if (result != 1)
  {
    v267 = (v265 + v972[8]);
    v268 = *v267;
    v269 = v267[1];
    sub_1DEE4F8C0(*v267, v269);
    sub_1DEE273A0(v265, type metadata accessor for PairingRelationship);
    v270 = sub_1DEE5DBB0(v268, v269);
    v272 = sub_1DEE12A5C(v270, v271, &v975);

    *(v255 + 24) = v272;
    sub_1DEE171B4(v252, &qword_1ECDE3C18, &unk_1DEF94D20);
    *(v255 + 32) = 2082;
    *(v255 + 34) = sub_1DEE12A5C(0x676E6972696170, 0xE700000000000000, &v975);
    _os_log_impl(&dword_1DEE0F000, v253, v254, "(%{public}s) Relationship %{public}s cannot switch from %{public}s to %{public}s", v255, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v258, -1, -1);
    MEMORY[0x1E12CCD70](v255, -1, -1);

    v230 = v966;
    v188 = v968;
    v195 = v867;
LABEL_206:
    v706 = v872;
    sub_1DEE17214(v188, v872, &qword_1ECDE3C18, &unk_1DEF94D20);
    result = (v971)(v706, 1, v972);
    v244 = v961;
    v222 = v965;
    if (result == 1)
    {
LABEL_323:
      __break(1u);
      goto LABEL_324;
    }

    v707 = (v706 + v972[8]);
    v308 = v707[1];
    v962 = *v707;
    sub_1DEE4F8C0(v962, v308);
    sub_1DEE273A0(v706, type metadata accessor for PairingRelationship);
    v307 = 0;
    v309 = v969;
    goto LABEL_217;
  }

LABEL_325:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Replicator.removePairingRelationship(remoteDeviceID:)(Swift::String remoteDeviceID)
{
  v2 = v1;
  object = remoteDeviceID._object;
  countAndFlagsBits = remoteDeviceID._countAndFlagsBits;
  v5 = *(v1 + 232);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = countAndFlagsBits;
  v6[4] = object;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DEEA6248;
  *(v7 + 24) = v6;
  v9[4] = sub_1DEE46D40;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_152;
  v8 = _Block_copy(v9);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

uint64_t sub_1DEE670D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for PairingRelationship();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v27);
  v19 = v28;
  v18 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  MetadataStoring.pairingRelationship(remoteDeviceID:)(v25, v26, v19, *(v18 + 8), v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DEE171B4(v12, &qword_1ECDE3C18, &unk_1DEF94D20);
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  sub_1DEEAB218(v12, v17, type metadata accessor for PairingRelationship);
  __swift_destroy_boxed_opaque_existential_1(v27);
  v20 = *(a1 + 232);
  *v8 = v20;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v21 = v20;
  LOBYTE(v20) = sub_1DEF8D7B8();
  result = (*(v5 + 8))(v8, v4);
  if (v20)
  {
    sub_1DEE67760(v17);
    sub_1DEE29594(a1 + 192, v27);
    v23 = v28;
    v24 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(*(v24 + 16) + 120))(v17, v23);
    sub_1DEE273A0(v17, type metadata accessor for PairingRelationship);
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  __break(1u);
  return result;
}

uint64_t Replicator._queue_removePairingRelationship(relationshipID:)(uint64_t a1)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for PairingRelationship();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D788();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + 232);
  *v15 = v16;
  v17 = *MEMORY[0x1E69E8020];
  v18 = *MEMORY[0x1E69E8020];
  v35 = v11[13];
  v35(v15, v18, v10, v13);
  v33 = v16;
  LOBYTE(v16) = sub_1DEF8D7B8();
  v34 = v11[1];
  result = v34(v15, v10);
  if (v16)
  {
    v32 = v17;
    swift_beginAccess();
    v31 = v1;
    sub_1DEE29594(v1 + 192, v38);
    v21 = v39;
    v20 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    MetadataStoring.pairingRelationship(relationshipID:)(v37, v21, *(v20 + 8), v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1DEE171B4(v5, &qword_1ECDE3C18, &unk_1DEF94D20);
      return __swift_destroy_boxed_opaque_existential_1(v38);
    }

    v22 = v5;
    v23 = v36;
    sub_1DEEAB218(v22, v36, type metadata accessor for PairingRelationship);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v24 = v33;
    *v15 = v33;
    (v35)(v15, v32, v10);
    v25 = v24;
    v26 = sub_1DEF8D7B8();
    result = v34(v15, v10);
    if (v26)
    {
      v27 = v31;
      sub_1DEE67760(v23);
      sub_1DEE29594(v27 + 192, v38);
      v28 = v39;
      v29 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      (*(*(v29 + 16) + 120))(v23, v28);
      sub_1DEE273A0(v23, type metadata accessor for PairingRelationship);
      return __swift_destroy_boxed_opaque_existential_1(v38);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE67760(uint64_t a1)
{
  v2 = v1;
  v278 = a1;
  v3 = type metadata accessor for Record.ID.Ownership(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v252 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v284 = sub_1DEF8D3F8();
  v276 = *(v284 - 8);
  v7 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v284);
  v260 = &v252 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v282 = &v252 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D50, &qword_1DEF91668);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v252 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v272 = (&v252 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v252 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v275 = &v252 - v21;
  v283 = type metadata accessor for MetadataRecordPredicate();
  v22 = *(*(v283 - 8) + 64);
  MEMORY[0x1EEE9AC00](v283);
  v24 = &v252 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v258 = &v252 - v26;
  v27 = type metadata accessor for PairingRelationship();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v252 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1DEF8D788();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = (&v252 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v2[29];
  *v36 = v37;
  (*(v32 + 104))(v36, *MEMORY[0x1E69E8020], v31, v34);
  v38 = v37;
  LOBYTE(v37) = sub_1DEF8D7B8();
  (*(v32 + 8))(v36, v31);
  if ((v37 & 1) == 0)
  {
    goto LABEL_151;
  }

  v270 = v19;
  if (qword_1ECDE2E58 != -1)
  {
LABEL_152:
    swift_once();
  }

  v39 = sub_1DEF8D508();
  v40 = __swift_project_value_buffer(v39, qword_1ECDF6028);
  sub_1DEEACA70(v278, v30, type metadata accessor for PairingRelationship);

  v257 = v40;
  v41 = sub_1DEF8D4D8();
  v42 = sub_1DEF8DCB8();

  v43 = os_log_type_enabled(v41, v42);
  v261 = v14;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v285 = v45;
    *v44 = 136446466;
    *(v44 + 4) = sub_1DEE12A5C(v2[66], v2[67], &v285);
    *(v44 + 12) = 2082;
    v46 = PairingRelationship.description.getter();
    v48 = v47;
    sub_1DEE273A0(v30, type metadata accessor for PairingRelationship);
    v49 = sub_1DEE12A5C(v46, v48, &v285);

    *(v44 + 14) = v49;
    _os_log_impl(&dword_1DEE0F000, v41, v42, "(%{public}s) Discarding data for pairing relationship: %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v45, -1, -1);
    MEMORY[0x1E12CCD70](v44, -1, -1);
  }

  else
  {

    sub_1DEE273A0(v30, type metadata accessor for PairingRelationship);
  }

  v50 = v283;
  v51 = v258;
  v52 = v278;
  sub_1DEEACA70(v278, v258 + *(v283 + 32), type metadata accessor for PairingRelationship);
  *v51 = 256;
  *(v51 + 2) = 2;
  *(v51 + 8) = 0;
  swift_beginAccess();
  sub_1DEE29594((v2 + 24), &v285);
  v53 = v286;
  v54 = v287;
  __swift_project_boxed_opaque_existential_1(&v285, v286);
  v55 = MetadataStoring.recordVersions(matching:)(v51, v53, *(v54 + 8));
  __swift_destroy_boxed_opaque_existential_1(&v285);
  sub_1DEEACA70(v52, v24 + *(v50 + 32), type metadata accessor for PairingRelationship);
  *v24 = 1;
  *(v24 + 2) = 1;
  *(v24 + 8) = 0;
  v274 = v2;
  sub_1DEE29594((v2 + 24), &v285);
  v56 = v286;
  v57 = v287;
  __swift_project_boxed_opaque_existential_1(&v285, v286);
  v58 = *(v57 + 8);
  v255 = v24;
  v263 = MetadataStoring.recordVersions(matching:)(v24, v56, v58);
  __swift_destroy_boxed_opaque_existential_1(&v285);
  v59 = 0;
  v61 = (v55 + 64);
  v60 = *(v55 + 64);
  v267 = v55;
  v62 = 1 << *(v55 + 32);
  v294 = MEMORY[0x1E69E7CC8];
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  else
  {
    v63 = -1;
  }

  v24 = v63 & v60;
  v265 = (v62 + 63) >> 6;
  v280 = v276 + 16;
  v279 = (v276 + 32);
  v281 = (v276 + 48);
  v14 = &qword_1DEF91680;
  v283 = v276 + 8;
  v269 = xmmword_1DEF91010;
  v277 = v6;
  v2 = v270;
  v64 = v275;
  v268 = (v55 + 64);
  while (1)
  {
    if (v24)
    {
      v71 = v59;
LABEL_22:
      v73 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v74 = v73 | (v71 << 6);
      v75 = *(*(v267 + 48) + 8 * v74);
      v76 = v276;
      v77 = v282;
      v78 = v284;
      (*(v276 + 16))(v282, *(v267 + 56) + *(v276 + 72) * v74, v284);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v80 = *(v79 + 48);
      *v2 = v75;
      (*(v76 + 32))(v2 + v80, v77, v78);
      (*(*(v79 - 8) + 56))(v2, 0, 1, v79);

      v64 = v275;
    }

    else
    {
      v72 = v265 <= v59 + 1 ? v59 + 1 : v265;
      v30 = v72 - 1;
      while (1)
      {
        v71 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (v71 >= v265)
        {
          break;
        }

        v24 = v61[v71];
        ++v59;
        if (v24)
        {
          v59 = v71;
          goto LABEL_22;
        }
      }

      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      (*(*(v121 - 8) + 56))(v2, 1, 1, v121);
      v24 = 0;
      v59 = v30;
    }

    sub_1DEE1BA88(v2, v64, &qword_1ECDE3D50, &qword_1DEF91668);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
    v82 = *(v81 - 8);
    v2 = (v82 + 48);
    v83 = *(v82 + 48);
    if ((v83)(v64, 1, v81) == 1)
    {
      break;
    }

    v6 = *v64;
    v2 = v274;
    sub_1DEE29594((v274 + 24), &v290);
    v84 = v291;
    v85 = v292;
    __swift_project_boxed_opaque_existential_1(&v290, v291);
    v86 = *(*(v85 + 8) + 8);
    v14 = *(v86 + 64);

    v88 = (v14)(v87, v84, v86);
    if (v88)
    {
      v89 = v88;
      v271 = v6;
      v30 = v294;
      v273 = v81;
      if ((v294 & 0xC000000000000001) != 0)
      {
        v90 = sub_1DEF8DE68();
        v6 = v277;
        if (__OFADD__(v90, 1))
        {
          goto LABEL_149;
        }

        if (v90 == -1)
        {

          v30 = MEMORY[0x1E69E7CC8];
          v294 = MEMORY[0x1E69E7CC8];
        }

        else
        {
          v266 = v89;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B0, &unk_1DEF95600);
          v30 = sub_1DEF8E138();
          v293 = v30;
          sub_1DEF8E038();
          v91 = sub_1DEF8E0D8();
          if (v91)
          {
            v93 = v91;
            v94 = v92;
            v14 = type metadata accessor for Record.ID(0);
            do
            {
              v285 = v93;
              swift_dynamicCast();
              v285 = v94;
              type metadata accessor for RecordMetadata();
              swift_dynamicCast();
              v97 = *(v30 + 16);
              if (*(v30 + 24) <= v97)
              {
                sub_1DEEB1864(v97 + 1, 1);
              }

              v30 = v293;
              v98 = v288;
              v99 = v289;
              v100 = *(v293 + 40);
              sub_1DEF8E7A8();
              v101 = v99[2];
              v102 = v99[3];
              sub_1DEF8D9B8();
              v103 = v99[4];
              v104 = v103[2];
              v105 = v103[3];
              sub_1DEF8D9B8();
              v106 = v103[4];
              v107 = v103[5];

              sub_1DEF8D9B8();

              sub_1DEEACA70(v99 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v6, type metadata accessor for Record.ID.Ownership);
              if ((*v281)(v6, 1, v284) == 1)
              {
                MEMORY[0x1E12CBF60](0);
              }

              else
              {
                v108 = v282;
                v109 = v6;
                v110 = v284;
                (*v279)(v282, v109, v284);
                MEMORY[0x1E12CBF60](1);
                sub_1DEE2BAF8(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
                sub_1DEF8D8C8();
                v111 = v110;
                v6 = v277;
                (*v283)(v108, v111);
              }

              v112 = sub_1DEF8E7F8();
              v113 = v30 + 64;
              v114 = -1 << *(v30 + 32);
              v115 = v112 & ~v114;
              v116 = v115 >> 6;
              if (((-1 << v115) & ~*(v30 + 64 + 8 * (v115 >> 6))) != 0)
              {
                v95 = __clz(__rbit64((-1 << v115) & ~*(v30 + 64 + 8 * (v115 >> 6)))) | v115 & 0x7FFFFFFFFFFFFFC0;
                goto LABEL_31;
              }

              v117 = 0;
              v118 = (63 - v114) >> 6;
              do
              {
                if (++v116 == v118 && (v117 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_117;
                }

                v119 = v116 == v118;
                if (v116 == v118)
                {
                  v116 = 0;
                }

                v117 |= v119;
                v120 = *(v113 + 8 * v116);
              }

              while (v120 == -1);
              v95 = __clz(__rbit64(~v120)) + (v116 << 6);
LABEL_31:
              *(v113 + ((v95 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v95;
              *(*(v30 + 48) + 8 * v95) = v99;
              *(*(v30 + 56) + 8 * v95) = v98;
              ++*(v30 + 16);
              v93 = sub_1DEF8E0D8();
              v94 = v96;
            }

            while (v93);
          }

          v294 = v30;
          v2 = v274;
          v89 = v266;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v285 = v30;
      v6 = v271;
      v123 = sub_1DEEAF3E8(v271);
      v125 = *(v30 + 16);
      v126 = (v124 & 1) == 0;
      v127 = __OFADD__(v125, v126);
      v128 = v125 + v126;
      if (v127)
      {
        goto LABEL_148;
      }

      v14 = v124;
      if (*(v30 + 24) >= v128)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = v123;
          sub_1DEEB7AC8();
          v123 = v30;
        }
      }

      else
      {
        sub_1DEEB1864(v128, isUniquelyReferenced_nonNull_native);
        v123 = sub_1DEEAF3E8(v6);
        if ((v14 & 1) != (v129 & 1))
        {
          goto LABEL_154;
        }
      }

      v81 = v273;
      v130 = v285;
      if (v14)
      {
        v131 = v285[7];
        v132 = *(v131 + 8 * v123);
        *(v131 + 8 * v123) = v89;

        v294 = v130;
      }

      else
      {
        v285[(v123 >> 6) + 8] |= 1 << v123;
        *(v130[6] + 8 * v123) = v6;
        *(v130[7] + 8 * v123) = v89;
        v133 = v130[2];
        v127 = __OFADD__(v133, 1);
        v134 = v133 + 1;
        if (v127)
        {
          goto LABEL_150;
        }

        v130[2] = v134;
        v294 = v130;
      }
    }

    else
    {
      sub_1DEF75014(v6);
    }

    v65 = *(v81 + 48);
    __swift_destroy_boxed_opaque_existential_1(&v290);
    sub_1DEE29594((v2 + 24), &v285);
    v66 = v286;
    v67 = v287;
    __swift_project_boxed_opaque_existential_1(&v285, v286);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
    v68 = swift_allocObject();
    *(v68 + 16) = v269;
    *(v68 + 32) = v6;
    v69 = *(v67 + 16);
    v70 = *(v69 + 136);

    v70(v68, v66, v69);

    __swift_destroy_boxed_opaque_existential_1(&v285);
    v64 = v275;
    (*v283)(&v275[v65], v284);
    v2 = v270;
    v61 = v268;
    v14 = &qword_1DEF91680;
  }

  v268 = v83;

  v6 = 0;
  v135 = v263 + 64;
  v136 = 1 << *(v263 + 32);
  if (v136 < 64)
  {
    v137 = ~(-1 << v136);
  }

  else
  {
    v137 = -1;
  }

  v138 = v137 & *(v263 + 64);
  v139 = (v136 + 63) >> 6;
  v267 = v82 + 56;
  *(&v140 + 1) = 2;
  v256 = xmmword_1DEF907F0;
  *&v140 = 136446466;
  v254 = v140;
  v141 = v282;
  v142 = v272;
  v143 = v274;
  v265 = v263 + 64;
  v264 = v139;
  v14 = v261;
  v273 = v81;
  v266 = (v82 + 48);
  if (!v138)
  {
    goto LABEL_67;
  }

LABEL_66:
  v144 = v143;
  v145 = v6;
LABEL_75:
  v277 = (v138 - 1) & v138;
  v147 = __clz(__rbit64(v138)) | (v145 << 6);
  v148 = *(*(v263 + 48) + 8 * v147);
  v149 = v276;
  v150 = v284;
  (*(v276 + 16))(v141, *(v263 + 56) + *(v276 + 72) * v147, v284);
  v151 = *(v81 + 48);
  *v14 = v148;
  (*(v149 + 32))(v14 + v151, v141, v150);
  (*v267)(v14, 0, 1, v81);

  v142 = v272;
  v143 = v144;
  while (1)
  {
    sub_1DEE1BA88(v14, v142, &qword_1ECDE3D50, &qword_1DEF91668);
    if ((v268)(v142, 1, v81) == 1)
    {

      v30 = v294;
      if ((v294 & 0xC000000000000001) != 0)
      {
        v228 = 0;
        v229 = 0;
        v230 = 0;
        v30 = sub_1DEF8E038() | 0x8000000000000000;
      }

      else
      {
LABEL_117:
        v231 = -1 << *(v30 + 32);
        v228 = v30 + 64;
        v229 = ~v231;
        v232 = -v231;
        if (v232 < 64)
        {
          v233 = ~(-1 << v232);
        }

        else
        {
          v233 = -1;
        }

        v230 = v233 & *(v30 + 64);
      }

      v24 = 0;
      v2 = ((v229 + 64) >> 6);
      while (1)
      {
        v14 = v230;
        v6 = v24;
        if (v30 < 0)
        {
          v239 = sub_1DEF8E0D8();
          if (!v239)
          {
            goto LABEL_144;
          }

          v241 = v240;
          v293 = v239;
          type metadata accessor for Record.ID(0);
          swift_dynamicCast();
          v237 = v290;
          v293 = v241;
          type metadata accessor for RecordMetadata();
          swift_dynamicCast();
          if (!v237)
          {
LABEL_144:
            sub_1DEE2774C();
            sub_1DEE273A0(v255, type metadata accessor for MetadataRecordPredicate);
            return sub_1DEE273A0(v258, type metadata accessor for MetadataRecordPredicate);
          }
        }

        else
        {
          v234 = v24;
          v235 = v230;
          if (!v230)
          {
            while (1)
            {
              v24 = v234 + 1;
              if (__OFADD__(v234, 1))
              {
                break;
              }

              if (v24 >= v2)
              {
                goto LABEL_144;
              }

              v235 = *(v228 + 8 * v24);
              ++v234;
              if (v235)
              {
                goto LABEL_129;
              }
            }

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
            goto LABEL_152;
          }

LABEL_129:
          v230 = (v235 - 1) & v235;
          v236 = (v24 << 9) | (8 * __clz(__rbit64(v235)));
          v237 = *(*(v30 + 48) + v236);
          v238 = *(*(v30 + 56) + v236);

          if (!v237)
          {
            goto LABEL_144;
          }
        }

        v242 = *(v237 + 32);
        v243 = v274;
        swift_beginAccess();
        v244 = v243[30];
        if ((v244 & 0xC000000000000001) != 0)
        {

          v245 = sub_1DEF8E0B8();

          if (!v245)
          {
            goto LABEL_122;
          }

          v293 = v245;
          type metadata accessor for Replicator.WeakSource();
          swift_dynamicCast();
          v246 = v290;

          if (v246)
          {
LABEL_140:
            if (swift_unknownObjectWeakLoadStrong())
            {
              v249 = *(v246 + 24);
              ObjectType = swift_getObjectType();
              (*(v249 + 48))(v237, ObjectType, v249);
              swift_unknownObjectRelease();
            }

LABEL_122:
          }
        }

        else if (*(v244 + 16))
        {

          v247 = sub_1DEEAF20C(v242);
          if (v248)
          {
            v246 = *(*(v244 + 56) + 8 * v247);

            if (v246)
            {
              goto LABEL_140;
            }
          }

          else
          {
          }
        }
      }
    }

    v152 = v14;
    v275 = v6;
    v24 = *v142;
    v153 = *(v81 + 48);
    v154 = v143;
    sub_1DEE29594(v143 + 192, &v285);
    v155 = v286;
    v156 = v287;
    __swift_project_boxed_opaque_existential_1(&v285, v286);
    v157 = (*(*(*(v156 + 8) + 8) + 64))(v24, v155);
    if (!v157)
    {

      __swift_destroy_boxed_opaque_existential_1(&v285);
      (*v283)(&v153[v142], v284);
      goto LABEL_65;
    }

    v158 = v157;
    v271 = v24;
    v270 = v153;
    __swift_destroy_boxed_opaque_existential_1(&v285);
    v159 = *(v158 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    if (!v159)
    {

      v142 = v272;
      (*v283)(&v270[v272], v284);
LABEL_65:
      v143 = v154;
      v2 = v266;
      v135 = v265;
      v139 = v264;
      v138 = v277;
      v6 = v275;
      v14 = v152;
      if (v277)
      {
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    v262 = v158;
    v160 = *(v159 + 16);
    v161 = sub_1DEE2BAF8(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    v162 = MEMORY[0x1E12CB3B0](v160, v284, v161);
    v285 = v162;
    v163 = *(v159 + 16);
    if (v163)
    {
      v281 = v161;
      v164 = v159 + ((*(v276 + 80) + 32) & ~*(v276 + 80));
      v165 = *(v276 + 72);
      v166 = *(v276 + 16);
      v167 = v282;
      v24 = v283;
      v168 = v260;
      do
      {
        v169 = v284;
        v166(v168, v164, v284);
        sub_1DEF386D8(v167, v168);
        (*v24)(v167, v169);
        v164 += v165;
        --v163;
      }

      while (v163);
      v170 = v285;
      v81 = v273;
    }

    else
    {
      v170 = v162;
      v24 = v283;
    }

    v171 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (!*(v170 + 16) || (v172 = *(v170 + 40), v173 = sub_1DEF8D8B8(), v174 = -1 << *(v170 + 32), v175 = v173 & ~v174, ((*(v170 + 56 + ((v175 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v175) & 1) == 0))
    {
LABEL_91:

      v182 = *v283;
      v143 = v274;
      v2 = v266;
      goto LABEL_92;
    }

    v24 = ~v174;
    v176 = *(v276 + 72);
    v281 = *(v276 + 16);
    while (1)
    {
      v177 = v284;
      v178 = v282;
      v281(v282, *(v170 + 48) + v176 * v175, v284);
      sub_1DEE2BAF8(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
      v179 = sub_1DEF8D908();
      v180 = v178;
      v181 = *v283;
      (*v283)(v180, v177);
      if (v179)
      {
        break;
      }

      v175 = (v175 + 1) & v24;
      if (((*(v170 + 56 + ((v175 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v175) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    v259 = v171;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DF8, &unk_1DEF91710);
    v183 = (*(v276 + 80) + 32) & ~*(v276 + 80);
    v184 = swift_allocObject();
    *(v184 + 16) = v256;
    v185 = v284;
    v281((v184 + v183), v278, v284);
    v186 = sub_1DEEA3B70(v184);
    swift_setDeallocating();
    v281 = v181;
    v181((v184 + v183), v185);
    swift_deallocClassInstance();
    if (*(v186 + 16) <= *(v170 + 16) >> 3)
    {
      v285 = v170;
      sub_1DEEC8B48(v186);

      v187 = v285;
    }

    else
    {
      v187 = sub_1DEEC8FB4(v186, v170);
    }

    v143 = v274;
    v2 = v266;
    v188 = v271;
    v189 = v262;
    if (!*(v187 + 16))
    {

      v206 = sub_1DEF8D4D8();
      v207 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        v253 = swift_slowAlloc();
        v285 = v253;
        *v208 = v254;
        *(v208 + 4) = sub_1DEE12A5C(*(v143 + 528), *(v143 + 536), &v285);
        *(v208 + 12) = 2082;

        LODWORD(v252) = v207;
        v209 = Record.ID.description.getter();
        v211 = v210;

        v212 = sub_1DEE12A5C(v209, v211, &v285);

        *(v208 + 14) = v212;
        _os_log_impl(&dword_1DEE0F000, v206, v252, "(%{public}s) Removing record ID: %{public}s", v208, 0x16u);
        v213 = v253;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v213, -1, -1);
        MEMORY[0x1E12CCD70](v208, -1, -1);
      }

      v214 = v294;
      if ((v294 & 0xC000000000000001) != 0)
      {
        if (v294 >= 0)
        {
          v214 = v294 & 0xFFFFFFFFFFFFFF8;
        }

        v215 = sub_1DEF8DE68();
        if (__OFADD__(v215, 1))
        {
          goto LABEL_153;
        }

        v214 = sub_1DEEB07B8(v214, v215 + 1);
      }

      else
      {
      }

      v222 = swift_isUniquelyReferenced_nonNull_native();
      v285 = v214;
      sub_1DEF3E0C4(v189, v188, v222);

      v294 = v285;
      sub_1DEE29594(v143 + 192, &v285);
      v224 = v286;
      v223 = v287;
      __swift_project_boxed_opaque_existential_1(&v285, v286);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
      v225 = swift_allocObject();
      *(v225 + 16) = v269;
      *(v225 + 32) = v188;
      v226 = *(v223 + 16);
      v24 = v143;
      v227 = *(v226 + 136);

      v227(v225, v224, v226);

      goto LABEL_114;
    }

    v190 = sub_1DEF8D4D8();
    v191 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      v253 = v187;
      v193 = v192;
      v252 = swift_slowAlloc();
      v285 = v252;
      *v193 = v254;
      *(v193 + 4) = sub_1DEE12A5C(*(v143 + 528), *(v143 + 536), &v285);
      *(v193 + 12) = 2082;

      v194 = v190;
      v195 = Record.ID.description.getter();
      v196 = v191;
      v198 = v197;

      v199 = sub_1DEE12A5C(v195, v198, &v285);

      *(v193 + 14) = v199;
      _os_log_impl(&dword_1DEE0F000, v194, v196, "(%{public}s) Removing destination from record ID: %{public}s", v193, 0x16u);
      v200 = v252;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v200, -1, -1);
      v201 = v193;
      v187 = v253;
      MEMORY[0x1E12CCD70](v201, -1, -1);

      v202 = *(v187 + 16);
      if (!v202)
      {
        goto LABEL_110;
      }
    }

    else
    {

      v202 = *(v187 + 16);
      if (!v202)
      {
LABEL_110:

        v203 = MEMORY[0x1E69E7CC0];
        goto LABEL_111;
      }
    }

    v203 = sub_1DEF2B328(v202, 0);
    sub_1DEF2D158(&v285, (v203 + v183), v202, v187);
    v205 = v204;
    sub_1DEE2774C();
    if (v205 != v202)
    {
      break;
    }

LABEL_111:
    v285 = v203;
    v216 = RecordMetadata.copy(replacingDestination:)(&v285);

    sub_1DEE29594(v143 + 192, &v285);
    v218 = v286;
    v217 = v287;
    __swift_project_boxed_opaque_existential_1(&v285, v286);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
    v219 = swift_allocObject();
    *(v219 + 16) = v269;
    *(v219 + 32) = v216;
    v220 = *(v217 + 16);
    v24 = v143;
    v221 = *(v220 + 128);

    v221(v219, v218, v220);

LABEL_114:

    __swift_destroy_boxed_opaque_existential_1(&v285);
    v182 = v281;
LABEL_92:
    v142 = v272;
    v182(&v270[v272], v284);
    v141 = v282;
    v14 = v261;
    v135 = v265;
    v139 = v264;
    v138 = v277;
    v6 = v275;
    if (v277)
    {
      goto LABEL_66;
    }

LABEL_67:
    if (v139 <= v6 + 1)
    {
      v146 = v6 + 1;
    }

    else
    {
      v146 = v139;
    }

    v30 = (v146 - 1);
    while (1)
    {
      v145 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_146;
      }

      if (v145 >= v139)
      {
        break;
      }

      v138 = *(v135 + 8 * v145);
      v6 = (v6 + 1);
      if (v138)
      {
        v144 = v143;
        v6 = v145;
        goto LABEL_75;
      }
    }

    (*v267)(v14, 1, 1, v81);
    v277 = 0;
    v6 = v30;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  type metadata accessor for Record.ID(0);
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

Swift::Void __swiftcall Replicator.readvertiseIfNecessary()()
{
  v1 = *(v0 + 232);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DEEA6254;
  *(v2 + 24) = v0;
  v4[4] = sub_1DEE46D40;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1DEE134F4;
  v4[3] = &block_descriptor_159;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1DEE6991C()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DEEACDA8;
  *(v3 + 24) = v1;
  v6[4] = sub_1DEE46D40;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DEE134F4;
  v6[3] = &block_descriptor_371;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t Replicator.localDeviceIdentifier.getter()
{
  if (v0[32])
  {
    v1 = v0[31];
  }

  else
  {
    v2 = v0[22];
    v3 = v0[23];
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(ObjectType, v3);
    if (v6)
    {
      v1 = v5;
    }

    else
    {
      v1 = 0xD000000000000016;
    }
  }

  return v1;
}

uint64_t Replicator.localDeviceDescriptor.getter()
{
  v1 = *(v0 + 232);
  type metadata accessor for DeviceDescriptor();
  return sub_1DEF8DD18();
}

uint64_t sub_1DEE69B50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v117 = &v104 - v5;
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v1[32])
  {
    v11 = v1[31];
    v119 = v1[32];
  }

  else
  {
    v12 = v1[22];
    v13 = *(v2 + 184);
    v14 = *(v2 + 176);
    ObjectType = swift_getObjectType();
    v17 = (*(v13 + 16))(ObjectType, v13);
    if (v16)
    {
      v11 = v17;
    }

    else
    {
      v11 = 0xD000000000000016;
    }

    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0x80000001DEF9BCA0;
    }

    v119 = v18;
  }

  v19 = sub_1DEEAEE94();
  if (v20)
  {
    v115 = v20;
    v116 = v19;
  }

  else
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v22 = [v21 hostName];
    v23 = sub_1DEF8D948();
    v115 = v24;
    v116 = v23;
  }

  if (qword_1ED786060 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v111 = *(&xmmword_1ED786068 + 1);
    v112 = xmmword_1ED786068;
    v110 = *(v2 + 96);
    v25 = *(v2 + 104);
    v113 = *(v2 + 120);
    v114 = v25;
    v109 = *(v2 + 136);
    v108 = *(v2 + 137);
    v26 = *(v2 + 232);
    *v10 = v26;
    v27 = *MEMORY[0x1E69E8020];
    v28 = v7[13];
    v28(v10, v27, v6);
    v120 = v26;
    LOBYTE(v26) = sub_1DEF8D7B8();
    v29 = v7[1];
    v30 = v29(v10, v6);
    if ((v26 & 1) == 0)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v107 = v11;
    swift_beginAccess();
    v11 = *(v2 + 240);

    v121 = sub_1DEEA59EC(v31, v2);

    *v10 = v120;
    v28(v10, v27, v6);
    v32 = sub_1DEF8D7B8();
    v30 = v29(v10, v6);
    if ((v32 & 1) == 0)
    {
      goto LABEL_52;
    }

    swift_beginAccess();
    v33 = *(v2 + 664);

    v35 = sub_1DEEA4880(v34, v2, sub_1DEEA5DF0, sub_1DEEA5DF0);

    v36 = sub_1DEE581C8(v35);

    v10 = *(v2 + 648);
    v37 = *(v2 + 656);
    sub_1DEEA8818(v10, v37);
    v38 = 1;
    v106 = sub_1DEEAEE94();
    v105 = v39;
    v104 = sub_1DEEAEE94();
    v11 = v40;
    v41 = sub_1DEEAEFF8();
    if (v42 != 1)
    {
      v43 = v41;
      v44 = v42;
      v38 = 0;
      sub_1DEEAD7B4(v41, v42, v117);
      sub_1DEEA889C(v43, v44);
    }

    v120 = v36;
    v45 = sub_1DEF8D3F8();
    v46 = *(v45 - 8);
    v47 = *(v46 + 56);
    v6 = v46 + 56;
    v48 = v117;
    v47(v117, v38, 1, v45);
    v49 = v118;
    *(v118 + 72) = 0u;
    *(v49 + 56) = 0u;
    *(v49 + 88) = 256;
    *(v49 + 112) = xmmword_1DEF90FE0;
    v50 = *(type metadata accessor for DeviceDescriptor() + 60);
    v47(v49 + v50, 1, 1, v45);
    v51 = v119;
    *v49 = v107;
    *(v49 + 8) = v51;
    v52 = v115;
    *(v49 + 16) = v116;
    *(v49 + 24) = v52;
    v53 = v111;
    *(v49 + 32) = v112;
    *(v49 + 40) = v53;
    *(v49 + 48) = v110;
    v54 = v114;
    *(v49 + 72) = v113;
    *(v49 + 56) = v54;
    *(v49 + 88) = v109;
    *(v49 + 89) = v108;
    sub_1DEE2416C(*(v49 + 112), *(v49 + 120));
    *(v49 + 112) = v10;
    *(v49 + 120) = v37;
    v55 = v105;
    *(v49 + 128) = v106;
    *(v49 + 136) = v55;
    *(v49 + 144) = v104;
    *(v49 + 152) = v11;
    *(v49 + 160) = 0;
    *(v49 + 168) = 0;
    sub_1DEEA882C(v48, v49 + v50);
    v30 = v121;
    if (!(v121 >> 62))
    {
      v56 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v56)
      {
        break;
      }

      goto LABEL_20;
    }

LABEL_53:
    v75 = v30;
    v56 = sub_1DEF8DE68();
    v30 = v75;
    if (!v56)
    {
      break;
    }

LABEL_20:
    v2 = 0;
    v57 = v30 & 0xC000000000000001;
    v7 = (v30 & 0xFFFFFFFFFFFFFF8);
    v58 = MEMORY[0x1E69E7CC8];
    while (v57)
    {
      v11 = MEMORY[0x1E12CB6E0](v2, v30);
      v60 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_45;
      }

LABEL_26:
      v10 = *(v11 + 16);
      if ((v58 & 0xC000000000000001) != 0)
      {
        if (v58 >= 0)
        {
          v58 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v61 = *(v11 + 16);

        v62 = sub_1DEF8DE68();
        if (__OFADD__(v62, 1))
        {
          goto LABEL_48;
        }

        v58 = sub_1DEEB0790(v58, v62 + 1);
      }

      else
      {
        v63 = *(v11 + 16);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v58;
      v65 = sub_1DEEAF20C(v10);
      v67 = *(v58 + 16);
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        goto LABEL_47;
      }

      v6 = v66;
      if (*(v58 + 24) < v70)
      {
        sub_1DEEB0D00(v70, isUniquelyReferenced_nonNull_native);
        v65 = sub_1DEEAF20C(v10);
        if ((v6 & 1) != (v71 & 1))
        {
          goto LABEL_75;
        }

LABEL_37:
        v58 = v122;
        if (v6)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_37;
      }

      v74 = v65;
      sub_1DEEB753C();
      v65 = v74;
      v58 = v122;
      if (v6)
      {
LABEL_21:
        v59 = *(v58 + 56);
        v6 = *(v59 + 8 * v65);
        *(v59 + 8 * v65) = v11;

        goto LABEL_22;
      }

LABEL_38:
      *(v58 + 8 * (v65 >> 6) + 64) |= 1 << v65;
      *(*(v58 + 48) + 8 * v65) = v10;
      *(*(v58 + 56) + 8 * v65) = v11;

      v72 = *(v58 + 16);
      v69 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v69)
      {
        goto LABEL_49;
      }

      *(v58 + 16) = v73;
LABEL_22:
      ++v2;
      v30 = v121;
      if (v60 == v56)
      {
        goto LABEL_55;
      }
    }

    if (v2 >= v7[2])
    {
      goto LABEL_46;
    }

    v11 = *(v30 + 8 * v2 + 32);

    v60 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      goto LABEL_26;
    }

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
    swift_once();
  }

  v58 = MEMORY[0x1E69E7CC8];
LABEL_55:

  *(v118 + 96) = v58;
  v76 = v120;
  v119 = v120[2];
  if (!v119)
  {
    v79 = MEMORY[0x1E69E7CC8];
LABEL_71:
    sub_1DEE171B4(v117, &unk_1ECDE3E80, &unk_1DEF90970);

    *(v118 + 104) = v79;
    return result;
  }

  v77 = 0;
  v78 = v120 + 9;
  v79 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    if (v77 < v76[2])
    {
      v85 = *(v78 - 5);
      v84 = *(v78 - 4);
      v87 = *(v78 - 3);
      v86 = *(v78 - 2);
      v88 = *(v78 - 1);
      v121 = *v78;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v89 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v79;
      v90 = sub_1DEEAF16C(v85, v84, v87, v86);
      v92 = v79[2];
      v93 = (v91 & 1) == 0;
      v69 = __OFADD__(v92, v93);
      v94 = v92 + v93;
      if (v69)
      {
        goto LABEL_73;
      }

      v95 = v91;
      if (v79[3] >= v94)
      {
        if (v89)
        {
          goto LABEL_65;
        }

        v102 = v90;
        sub_1DEEB7550();
        v90 = v102;
        v79 = v122;
        if (v95)
        {
          goto LABEL_57;
        }

LABEL_66:
        v79[(v90 >> 6) + 8] |= 1 << v90;
        v97 = (v79[6] + 32 * v90);
        *v97 = v85;
        v97[1] = v84;
        v97[2] = v87;
        v97[3] = v86;
        v98 = (v79[7] + 48 * v90);
        *v98 = v85;
        v98[1] = v84;
        v98[2] = v87;
        v98[3] = v86;
        v99 = v121;
        v98[4] = v88;
        v98[5] = v99;
        v100 = v79[2];
        v69 = __OFADD__(v100, 1);
        v101 = v100 + 1;
        if (v69)
        {
          goto LABEL_74;
        }

        v79[2] = v101;
      }

      else
      {
        sub_1DEEB0D14(v94, v89);
        v90 = sub_1DEEAF16C(v85, v84, v87, v86);
        if ((v95 & 1) != (v96 & 1))
        {
          goto LABEL_76;
        }

LABEL_65:
        v79 = v122;
        if ((v95 & 1) == 0)
        {
          goto LABEL_66;
        }

LABEL_57:
        v80 = (v79[7] + 48 * v90);
        v81 = v80[1];
        v82 = v80[3];
        *v80 = v85;
        v80[1] = v84;
        v80[2] = v87;
        v80[3] = v86;
        v83 = v121;
        v80[4] = v88;
        v80[5] = v83;
      }

      ++v77;
      v78 += 6;
      v76 = v120;
      if (v119 == v77)
      {
        goto LABEL_71;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  type metadata accessor for Zone.ID();
  sub_1DEF8E6E8();
  __break(1u);
LABEL_76:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t Replicator.metadata(for:)()
{
  v1 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C28, &qword_1DEF910E8);
  sub_1DEF8DD18();
  return v3;
}

{
  v1 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C30, &unk_1DEF910F0);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE6A57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  *a3 = (*(*(*(v7 + 8) + 8) + 64))(a2, v6);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1DEE6A6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  *a3 = (*(*(*(v7 + 8) + 8) + 72))(a2, v6);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t Replicator.clientDefinedID(for:)()
{
  v1 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE6A7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  *a3 = (*(*(*(v7 + 8) + 8) + 56))(a2, v6);
  a3[1] = v8;
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t Replicator.zoneIDs(for:)()
{
  v1 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C38, &qword_1DEF91100);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE6A8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v22);
  v9 = v23;
  v8 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v10 = MetadataStoring.zones()(v9, *(v8 + 8));
  v11 = v10;
  v25 = MEMORY[0x1E69E7CC0];
  if (v10 >> 62)
  {
LABEL_20:
    v12 = sub_1DEF8DE68();
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_3:
      v21 = a4;
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1E12CB6E0](v13, v11);
          v17 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            v19 = v25;
            a4 = v21;
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v16 = *(v11 + 8 * v13 + 32);

          v17 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_17;
          }
        }

        v18 = *(v16 + 32) == a2 && *(v16 + 40) == a3;
        if (v18 || (sub_1DEF8E4E8() & 1) != 0)
        {
          sub_1DEF8DFB8();
          a4 = a3;
          v14 = v12;
          v15 = *(v25 + 16);
          sub_1DEF8DFE8();
          v12 = v14;
          a3 = a4;
          sub_1DEF8DFF8();
          sub_1DEF8DFC8();
        }

        else
        {
        }

        ++v13;
        if (v17 == v12)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_22:

  result = __swift_destroy_boxed_opaque_existential_1(v22);
  *a4 = v19;
  return result;
}

uint64_t Replicator.add(recordStubs:destination:schedule:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = v3;
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(v3 + 232);
  result = sub_1DEF8DD18();
  if (!v4)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v5;
    *(v12 + 24) = a1;
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
    *(v12 + 48) = v9;

    sub_1DEE2C448(0xD000000000000016, 0x80000001DEF9BCC0, v10, sub_1DEEA6318, v12, 0.0);
  }

  return result;
}

uint64_t sub_1DEE6ABF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecordStub();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v19 = a3;
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DEF8DFD8();
    v13 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1DEEACA70(v13, v10, type metadata accessor for RecordStub);
      v15 = *v10;

      sub_1DEE273A0(v10, type metadata accessor for RecordStub);
      sub_1DEF8DFB8();
      v16 = *(v20 + 16);
      sub_1DEF8DFE8();
      sub_1DEF8DFF8();
      sub_1DEF8DFC8();
      v13 += v14;
      --v11;
    }

    while (v11);
    v12 = v20;
    a3 = v19;
  }

  sub_1DEE6ADBC(v12);
  if (!v3)
  {
    v20 = a3;
    sub_1DEE6B420(v12, &v20);
  }
}

uint64_t sub_1DEE6ADBC(unint64_t a1)
{
  v61 = a1;
  v62 = sub_1DEF8D3F8();
  v60 = *(v62 - 8);
  v2 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v57 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v56 - v5;
  v7 = type metadata accessor for Record.ID.Ownership(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v1;
  v18 = *(v1 + 232);
  *v16 = v18;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v19 = v18;
  v20 = sub_1DEF8D7B8();
  result = (*(v12 + 8))(v16, v11);
  if ((v20 & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_1DEF8DE68();
    v22 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v1 = v61;
  v58 = v6;
  v56[1] = v17;
  if (v61 >> 62)
  {
    goto LABEL_23;
  }

  v22 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    return result;
  }

LABEL_4:
  v23 = 0;
  v24 = v1 & 0xC000000000000001;
  v25 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = (v60 + 48);
  while (v24)
  {
    v27 = v1;
    v28 = MEMORY[0x1E12CB6E0](v23, v1);
    v29 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_14;
    }

LABEL_8:
    sub_1DEEACA70(v28 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v10, type metadata accessor for Record.ID.Ownership);
    if ((*v26)(v10, 1, v62) != 1)
    {
      goto LABEL_15;
    }

    ++v23;
    v30 = v29 == v22;
    v1 = v27;
    if (v30)
    {
      return result;
    }
  }

  if (v23 >= *(v25 + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  v27 = v1;
  v28 = *(v1 + 8 * v23 + 32);

  v29 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  v31 = v60;
  v32 = v58;
  v33 = v62;
  (*(v60 + 32))(v58, v10, v62);
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v34 = sub_1DEF8D508();
  __swift_project_value_buffer(v34, qword_1ECDF6028);
  v35 = v57;
  (*(v31 + 16))(v57, v32, v33);

  v37 = sub_1DEF8D4D8();
  v38 = sub_1DEF8DCA8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    LODWORD(v59) = v38;
    v40 = v35;
    v41 = v39;
    v61 = swift_slowAlloc();
    v65 = v61;
    *v41 = 136446978;
    *(v41 + 4) = sub_1DEE12A5C(*(v36 + 528), *(v36 + 536), &v65);
    *(v41 + 12) = 2082;
    v42 = *(v28 + 32);
    v43 = v42[5];
    v63 = v42[4];
    v64 = v43;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](v42[2], v42[3]);

    v44 = sub_1DEE12A5C(v63, v64, &v65);

    *(v41 + 14) = v44;
    *(v41 + 22) = 2082;
    sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v45 = sub_1DEF8E2E8();
    v47 = v46;
    v48 = *(v31 + 8);
    v48(v40, v33);
    v49 = sub_1DEE12A5C(v45, v47, &v65);

    *(v41 + 24) = v49;
    *(v41 + 32) = 2082;

    v50 = Record.ID.description.getter();
    v52 = v51;

    v53 = sub_1DEE12A5C(v50, v52, &v65);

    *(v41 + 34) = v53;
    _os_log_impl(&dword_1DEE0F000, v37, v59, "(%{public}s) Ownership verification failed: record in zone %{public}s is owned by relationship %{public}s: %{public}s", v41, 0x2Au);
    v54 = v61;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v54, -1, -1);
    MEMORY[0x1E12CCD70](v41, -1, -1);
  }

  else
  {

    v48 = *(v31 + 8);
    v48(v35, v33);
  }

  sub_1DEEAA8E8();
  swift_allocError();
  *v55 = 0;
  swift_willThrow();

  return (v48)(v58, v33);
}

uint64_t sub_1DEE6B420(unint64_t a1, uint64_t *a2)
{
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = *a2;
  v50 = v2;
  v12 = *(v2 + 232);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v6, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1DEF8D7B8();
  result = (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    goto LABEL_37;
  }

  v47[1] = v3;
  if (a1 >> 62)
  {
LABEL_38:
    result = sub_1DEF8DE68();
    v15 = result;
    v16 = v50;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v50;
    if (v15)
    {
LABEL_4:
      swift_beginAccess();
      v17 = 0;
      v48 = a1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1E12CB6E0](v17, a1);
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v17 >= *(v48 + 16))
          {
            goto LABEL_36;
          }

          v18 = *(a1 + 8 * v17 + 32);

          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }
        }

        v20 = *(v18 + 32);
        v21 = *(v16 + 240);
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = *(v18 + 32);

          v23 = sub_1DEF8E0B8();

          if (!v23)
          {

            goto LABEL_29;
          }

          v53 = v23;
          type metadata accessor for Replicator.WeakSource();
          swift_dynamicCast();
          v24 = v51;

          if (!v24)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (!*(v21 + 16))
          {
            goto LABEL_29;
          }

          v25 = *(v18 + 32);

          v26 = sub_1DEEAF20C(v20);
          if ((v27 & 1) == 0)
          {

LABEL_29:
            v37 = v50;
            if (qword_1ECDE2E58 != -1)
            {
              swift_once();
            }

            v38 = sub_1DEF8D508();
            __swift_project_value_buffer(v38, qword_1ECDF6028);

            v39 = sub_1DEF8D4D8();
            v40 = sub_1DEF8DCA8();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              v53 = v42;
              *v41 = 136446466;
              *(v41 + 4) = sub_1DEE12A5C(*(v37 + 528), *(v37 + 536), &v53);
              *(v41 + 12) = 2082;
              v43 = *(v18 + 32);
              v44 = v43[5];
              v51 = v43[4];
              v52 = v44;

              MEMORY[0x1E12CB180](14906, 0xE200000000000000);
              MEMORY[0x1E12CB180](v43[2], v43[3]);

              v45 = sub_1DEE12A5C(v51, v52, &v53);

              *(v41 + 14) = v45;
              _os_log_impl(&dword_1DEE0F000, v39, v40, "(%{public}s) Destination verification failed: zone %{public}s does not exist", v41, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1E12CCD70](v42, -1, -1);
              MEMORY[0x1E12CCD70](v41, -1, -1);
            }

            sub_1DEEAA8E8();
            swift_allocError();
            *v46 = 0;
            swift_willThrow();
          }

          v24 = *(*(v21 + 56) + 8 * v26);

          if (!v24)
          {
            goto LABEL_29;
          }
        }

        if (v49)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v28 = *(v24 + 24);
            ObjectType = swift_getObjectType();
            (*(v28 + 8))(&v53, ObjectType, v28);
            swift_unknownObjectRelease();
            if (v53 == 1)
            {
              if (qword_1ECDE2E58 != -1)
              {
                swift_once();
              }

              v30 = sub_1DEF8D508();
              __swift_project_value_buffer(v30, qword_1ECDF6028);
              v31 = v50;

              v32 = sub_1DEF8D4D8();
              v33 = sub_1DEF8DCA8();

              if (os_log_type_enabled(v32, v33))
              {
                v34 = swift_slowAlloc();
                v35 = swift_slowAlloc();
                v51 = v35;
                *v34 = 136446210;
                *(v34 + 4) = sub_1DEE12A5C(*(v31 + 528), *(v31 + 536), &v51);
                _os_log_impl(&dword_1DEE0F000, v32, v33, "(%{public}s) Destination verification failed: a record sent to a collection cannot be advertised", v34, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v35);
                MEMORY[0x1E12CCD70](v35, -1, -1);
                MEMORY[0x1E12CCD70](v34, -1, -1);
              }

              sub_1DEEAA8E8();
              swift_allocError();
              *v36 = 0;
              swift_willThrow();
            }
          }
        }

        ++v17;
        v16 = v50;
      }

      while (v19 != v15);
    }
  }

  return result;
}

uint64_t sub_1DEE6BA78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v81 - v12;
  v101 = sub_1DEF8D3F8();
  v92 = *(v101 - 8);
  v13 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for RecordStub();
  v15 = *(v99 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v104 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DEF8D788();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *a2;
  v90 = *a3;
  v89 = *(a3 + 8);
  v25 = v4[29];
  *v23 = v25;
  v26 = v19[13];
  v85 = *MEMORY[0x1E69E8020];
  v86 = v19 + 13;
  v84 = v26;
  v26(v23, v21);
  v82 = v25;
  LOBYTE(v25) = sub_1DEF8D7B8();
  v27 = v19[1];
  v87 = v23;
  v88 = v19 + 1;
  v83 = v27;
  result = v27(v23, v18);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v109 = v24;
  v91 = sub_1DEE92FA8(a1, &v109);
  v113 = MEMORY[0x1E69E7CC0];
  v29 = *(a1 + 16);
  if (v29)
  {
    v30 = v24;
    v81 = v18;
    v31 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v103 = v4;
    swift_beginAccess();
    v32 = v31;
    v95 = 0;
    v94 = 0;
    v98 = *(v15 + 72);
    v97 = (v92 + 16);
    v96 = (v92 + 32);
    v33 = v104;
    while (1)
    {
      v106 = v32;
      v107 = v29;
      sub_1DEEACA70(v32, v33, type metadata accessor for RecordStub);
      v35 = *v33;
      v36 = *(v33 + 1);
      v37 = *(v33 + 2);
      v38 = v99;
      v39 = v30;
      v41 = v100;
      v40 = v101;
      (*v97)(v100, &v33[*(v99 + 24)], v101);
      v105 = *(v38 + 28);
      v42 = v102;
      sub_1DEE17214(&v33[v105], v102, &qword_1ECDE4DC0, &qword_1DEF91640);
      v43 = *&v33[*(v38 + 32)];
      v44 = type metadata accessor for RecordMetadata();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      v47 = swift_allocObject();
      *(v47 + 16) = v35;
      type metadata accessor for RecordMetadata.ClientDefinedID();
      v48 = swift_allocObject();
      *(v48 + 16) = v36;
      *(v48 + 24) = v37;
      *(v47 + 24) = v48;
      v49 = v41;
      v30 = v39;
      (*v96)(v47 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v49, v40);
      *(v47 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v39;
      sub_1DEE1BA88(v42, v47 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, &qword_1ECDE4DC0, &qword_1DEF91640);
      *(v47 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v43;

      MEMORY[0x1E12CB260](v50);
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v64 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DEF8DAF8();
      }

      sub_1DEF8DB18();
      v51 = v113;
      v52 = *(v35 + 32);
      v33 = v104;
      v53 = v103[30];
      if ((v53 & 0xC000000000000001) != 0)
      {
        if (v53 < 0)
        {
          v54 = v103[30];
        }

        v55 = sub_1DEF8E0B8();
        if (!v55)
        {
          goto LABEL_4;
        }

        v108[1] = v55;
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        v56 = v109;
      }

      else
      {
        if (!*(v53 + 16))
        {
          goto LABEL_5;
        }

        v57 = sub_1DEEAF20C(v52);
        if ((v58 & 1) == 0)
        {
LABEL_4:

          goto LABEL_5;
        }

        v56 = *(*(v53 + 56) + 8 * v57);
      }

      if (v56)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v59 = *(v56 + 24);
          ObjectType = swift_getObjectType();
          (*(v59 + 8))(&v109, ObjectType, v59);
          swift_unknownObjectRelease();

          v94 |= v109;
        }

        else
        {
        }

        v34 = v107;
        v61 = v93;
        sub_1DEE17214(&v33[v105], v93, &qword_1ECDE4DC0, &qword_1DEF91640);
        v62 = sub_1DEF8D378();
        v63 = (*(*(v62 - 8) + 48))(v61, 1, v62) != 1;
        v95 |= v63;
        sub_1DEE171B4(v61, &qword_1ECDE4DC0, &qword_1DEF91640);
        goto LABEL_6;
      }

LABEL_5:

      v34 = v107;
LABEL_6:
      sub_1DEE273A0(v33, type metadata accessor for RecordStub);
      v32 = v106 + v98;
      v29 = v34 - 1;
      if (!v29)
      {
        v65 = v51;
        v4 = v103;
        v18 = v81;
        v66 = v95;
        v67 = v94;
        goto LABEL_24;
      }
    }
  }

  v65 = MEMORY[0x1E69E7CC0];
  v66 = 0;
  v67 = 0;
LABEL_24:
  v68 = v91;
  swift_beginAccess();
  sub_1DEE29594((v4 + 24), &v109);
  v69 = v111;
  v70 = v112;
  __swift_project_boxed_opaque_existential_1(&v109, v111);
  (*(*(v70 + 16) + 128))(v65, v69);

  __swift_destroy_boxed_opaque_existential_1(&v109);
  v71 = *(v68 + 16);
  if (v71)
  {
    v72 = sub_1DEF2B328(*(v68 + 16), 0);
    sub_1DEF2D158(&v109, (v72 + ((*(v92 + 80) + 32) & ~*(v92 + 80))), v71, v68);
    v74 = v73;
    result = sub_1DEE2774C();
    if (v74 == v71)
    {
      v108[0] = v72;
      v109 = v90;
      LOBYTE(v110) = v89;
      sub_1DEE6E9BC(v108, &v109);

      if ((v67 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_31;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v67 & 1) == 0)
  {
LABEL_27:
    if ((v66 & 1) == 0)
    {
      return result;
    }

    return sub_1DEE56F88();
  }

LABEL_31:
  v75 = v87;
  v76 = v82;
  *v87 = v82;
  v84(v75, v85, v18);
  v77 = v76;
  LOBYTE(v76) = sub_1DEF8D7B8();
  result = v83(v75, v18);
  if ((v76 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v78 = v4[63];
  v79 = v4[64];
  __swift_project_boxed_opaque_existential_1(v4 + 60, v78);
  v80 = *(v79 + 8);

  v80(sub_1DEEACFC8, v4, v78, v79);

  if (v66)
  {
    return sub_1DEE56F88();
  }

  return result;
}

uint64_t Replicator.delete(recordIDs:schedule:)(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(v2 + 232);
  result = sub_1DEF8DD18();
  if (!v3)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = a1;
    *(v10 + 32) = v6;
    *(v10 + 40) = v7;

    sub_1DEE2C448(0xD000000000000018, 0x80000001DEF9BCE0, v8, sub_1DEEA63A8, v10, 0.0);
  }

  return result;
}

uint64_t sub_1DEE6C510(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v6 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v121 = &v102 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v102 - v11;
  v132 = sub_1DEF8D3F8();
  v12 = *(v132 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v124 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DEF8D788();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = *a2;
  v111 = *(a2 + 8);
  v21 = v3[29];
  *v20 = v21;
  v22 = v16[13];
  v106 = *MEMORY[0x1E69E8020];
  v107 = v16 + 13;
  v105 = v22;
  v22(v20, v18);
  v103 = v21;
  LOBYTE(v21) = sub_1DEF8D7B8();
  v23 = v16[1];
  v108 = v20;
  v110 = v15;
  v109 = v16 + 1;
  v104 = v23;
  v23(v20, v15);
  if ((v21 & 1) == 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  swift_beginAccess();
  sub_1DEE29594((v3 + 24), &v135);
  v24 = v137;
  v25 = v138;
  __swift_project_boxed_opaque_existential_1(&v135, v137);
  v26 = (*(*(*(v25 + 8) + 8) + 32))(v24);
  v27 = sub_1DEE9EBC8(v26, sub_1DEE9FFA8, sub_1DEE9FFA8);

  __swift_destroy_boxed_opaque_existential_1(&v135);
  v28 = *(v27 + 16);
  v125 = v3;
  if (v28)
  {
    v102 = a1;
    v135 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7D60(0, v28, 0);
    v131 = v135;
    v29 = v27 + 64;
    v30 = -1 << *(v27 + 32);
    v31 = sub_1DEF8DE18();
    v32 = 0;
    v119 = (v12 + 16);
    a1 = v12 + 32;
    v118 = v12 + 8;
    v113 = v27 + 72;
    v114 = v28;
    v115 = v27 + 64;
    v117 = v12 + 32;
    v116 = v27;
    while ((v31 & 0x8000000000000000) == 0 && v31 < 1 << *(v27 + 32))
    {
      if ((*(v29 + 8 * (v31 >> 6)) & (1 << v31)) == 0)
      {
        goto LABEL_58;
      }

      v128 = v31 >> 6;
      v129 = 1 << v31;
      v35 = *(v27 + 36);
      v126 = v32;
      v127 = v35;
      v36 = v123;
      v37 = *(v123 + 48);
      v38 = *(v27 + 48);
      v130 = *(v12 + 72);
      v39 = *(v12 + 16);
      v40 = v120;
      v3 = v119;
      v39(v120, v38 + v130 * v31, v132);
      v41 = *(v27 + 56);
      v42 = type metadata accessor for PairingRelationship();
      sub_1DEEACA70(v41 + *(*(v42 - 8) + 72) * v31, &v40[v37], type metadata accessor for PairingRelationship);
      v43 = *(v12 + 32);
      v44 = v121;
      v43(v121, v40, v132);
      v45 = &v40[v37];
      v46 = v132;
      sub_1DEEAB218(v45, &v44[*(v36 + 48)], type metadata accessor for PairingRelationship);
      v47 = v44;
      v48 = v122;
      sub_1DEE1BA88(v47, v122, &unk_1ECDE4350, &qword_1DEF93400);
      v49 = *(v36 + 48);
      v50 = v124;
      v39(v124, v48 + v49, v46);
      sub_1DEE273A0(v48 + v49, type metadata accessor for PairingRelationship);
      (*(v12 + 8))(v48, v46);
      v51 = v131;
      v135 = v131;
      v53 = *(v131 + 16);
      v52 = *(v131 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1DEEC7D60(v52 > 1, v53 + 1, 1);
        v50 = v124;
        v51 = v135;
      }

      *(v51 + 16) = v53 + 1;
      v54 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v131 = v51;
      v55 = v51 + v54 + v53 * v130;
      a1 = v117;
      v43(v55, v50, v46);
      v27 = v116;
      v33 = 1 << *(v116 + 32);
      if (v31 >= v33)
      {
        goto LABEL_59;
      }

      v29 = v115;
      v56 = *(v115 + 8 * v128);
      if ((v56 & v129) == 0)
      {
        goto LABEL_60;
      }

      if (v127 != *(v116 + 36))
      {
        goto LABEL_61;
      }

      v57 = v56 & (-2 << (v31 & 0x3F));
      if (v57)
      {
        v33 = __clz(__rbit64(v57)) | v31 & 0x7FFFFFFFFFFFFFC0;
        v3 = v125;
        v34 = v114;
      }

      else
      {
        v58 = v116;
        v59 = v128 << 6;
        v60 = v128 + 1;
        v61 = (v113 + 8 * v128);
        v3 = v125;
        v34 = v114;
        while (v60 < (v33 + 63) >> 6)
        {
          v63 = *v61++;
          v62 = v63;
          v59 += 64;
          ++v60;
          if (v63)
          {
            sub_1DEE2F804(v31, v127, 0);
            v33 = __clz(__rbit64(v62)) + v59;
            goto LABEL_20;
          }
        }

        sub_1DEE2F804(v31, v127, 0);
LABEL_20:
        v27 = v58;
      }

      v32 = v126 + 1;
      v31 = v33;
      if (v126 + 1 == v34)
      {

        a1 = v102;
        v64 = v131;
        goto LABEL_23;
      }
    }

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
    goto LABEL_63;
  }

  v64 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v131 = sub_1DEEA3B70(v64);

  v134 = MEMORY[0x1E69E7CD0];
  if (a1 >> 62)
  {
LABEL_64:
    v65 = sub_1DEF8DE68();
    v129 = v12;
    if (!v65)
    {
      goto LABEL_65;
    }

    goto LABEL_25;
  }

  v65 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v129 = v12;
  if (v65)
  {
LABEL_25:
    v12 = a1 & 0xC000000000000001;
    swift_beginAccess();
    LODWORD(v130) = 0;
    v66 = 0;
    v132 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12)
      {
        v67 = MEMORY[0x1E12CB6E0](v66, a1);
        v68 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v66 >= *(v132 + 16))
        {
          goto LABEL_62;
        }

        v67 = *(a1 + 8 * v66 + 32);

        v68 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      v69 = *(v67 + 32);
      v70 = v3[30];
      if ((v70 & 0xC000000000000001) != 0)
      {
        if (v70 < 0)
        {
          v71 = v3[30];
        }

        v72 = *(v67 + 32);

        v73 = sub_1DEF8E0B8();

        if (!v73)
        {

LABEL_48:

          goto LABEL_52;
        }

        v133 = v73;
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        v74 = v135;

        if (!v74)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (!*(v70 + 16))
        {
          goto LABEL_48;
        }

        v75 = *(v67 + 32);

        v76 = sub_1DEEAF20C(v69);
        if ((v77 & 1) == 0)
        {

          goto LABEL_48;
        }

        v74 = *(*(v70 + 56) + 8 * v76);

        if (!v74)
        {
          goto LABEL_48;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v78 = *(v74 + 24);
        ObjectType = swift_getObjectType();
        (*(v78 + 8))(&v135, ObjectType, v78);
        swift_unknownObjectRelease();
        if (v135 == 1)
        {

          LODWORD(v130) = 1;
          v66 = v68;
          goto LABEL_53;
        }
      }

      sub_1DEE29594((v3 + 24), &v135);
      v80 = v137;
      v81 = v138;
      __swift_project_boxed_opaque_existential_1(&v135, v137);
      v82 = (*(*(*(v81 + 8) + 8) + 64))(v67, v80);
      if (v82)
      {
        v83 = v82;
        __swift_destroy_boxed_opaque_existential_1(&v135);
        if (*(v83 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination))
        {
          v84 = *(v83 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);

          v86 = sub_1DEEA3B70(v85);

          sub_1DEE944FC(v86);
        }

        else
        {

          v134 = v131;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v135);
      }

      v3 = v125;
LABEL_52:
      ++v66;
LABEL_53:
      if (v68 == v65)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_65:
  LODWORD(v130) = 0;
LABEL_66:

  sub_1DEE29594((v3 + 24), &v135);
  v87 = v137;
  v88 = v138;
  __swift_project_boxed_opaque_existential_1(&v135, v137);
  (*(*(v88 + 16) + 136))(a1, v87);
  __swift_destroy_boxed_opaque_existential_1(&v135);
  v89 = v134;
  v90 = *(v134 + 16);
  if (v90)
  {
    v91 = sub_1DEF2B328(*(v134 + 16), 0);
    sub_1DEF2D158(&v135, (v91 + ((*(v129 + 80) + 32) & ~*(v129 + 80))), v90, v89);
    v93 = v92;
    result = sub_1DEE2774C();
    if (v93 != v90)
    {
      __break(1u);
      goto LABEL_74;
    }

    v133 = v91;
    v135 = v112;
    v136 = v111;
    sub_1DEE6E9BC(&v133, &v135);
  }

  if ((v130 & 1) == 0)
  {
    return result;
  }

  v95 = v108;
  v96 = v103;
  *v108 = v103;
  v97 = v110;
  v105(v95, v106, v110);
  v98 = v96;
  LOBYTE(v96) = sub_1DEF8D7B8();
  result = v104(v95, v97);
  if ((v96 & 1) == 0)
  {
LABEL_74:
    __break(1u);
    return result;
  }

  v99 = v3[63];
  v100 = v3[64];
  __swift_project_boxed_opaque_existential_1(v3 + 60, v99);
  v101 = *(v100 + 8);

  v101(sub_1DEEACFC8, v3, v99, v100);
}

uint64_t Replicator.set(dataSource:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 232);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  swift_unknownObjectRetain();

  sub_1DEE2C448(0xD000000000000013, 0x80000001DEF9BD00, v7, sub_1DEEA6408, v8, 0.0);
}

uint64_t sub_1DEE6D230(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v4[29];
  *v13 = v14;
  v15 = *MEMORY[0x1E69E8020];
  v16 = *MEMORY[0x1E69E8020];
  v40 = v9[13];
  v40(v13, v16, v8, v11);
  v38 = v14;
  LOBYTE(v14) = sub_1DEF8D7B8();
  v39 = v9[1];
  v39(v13, v8);
  if (v14)
  {
    HIDWORD(v37) = v15;
    if (a1)
    {
      swift_beginAccess();
      v17 = v4[30];

      swift_unknownObjectRetain();
      v18 = sub_1DEF718FC(a3, v17);

      if (v18)
      {
        Strong = swift_unknownObjectWeakLoadStrong();

        if (Strong)
        {
          goto LABEL_18;
        }
      }

      type metadata accessor for Replicator.WeakSource();
      v20 = swift_allocObject();
      *(v20 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v20 + 24) = a2;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      v21 = v4[30];
      v22 = HIDWORD(v37);
      if ((v21 & 0xC000000000000001) != 0)
      {
        if (v21 < 0)
        {
          v23 = v4[30];
        }

        else
        {
          v23 = v21 & 0xFFFFFFFFFFFFFF8;
        }

        v24 = sub_1DEF8DE68();
        if (__OFADD__(v24, 1))
        {
          goto LABEL_17;
        }

        v4[30] = sub_1DEEB0920(v23, v24 + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v4[30];
      sub_1DEF3E3C0(v20, a3, isUniquelyReferenced_nonNull_native);
      v4[30] = v41;
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      sub_1DEE29594((v4 + 24), v42);
      v26 = v43;
      v27 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v28 = (*(*(*(v27 + 8) + 8) + 72))(a3, v26);
      v29 = sub_1DEE5844C(v28, sub_1DEF415BC, sub_1DEF41428, &qword_1ECDE3DE0, &unk_1DEF91700);

      __swift_destroy_boxed_opaque_existential_1(v42);
      sub_1DEE29594((v4 + 24), v42);
      v30 = v43;
      v31 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      (*(*(v31 + 16) + 136))(v29, v30);

      __swift_destroy_boxed_opaque_existential_1(v42);
      swift_beginAccess();
      sub_1DEF750BC(a3);
      swift_endAccess();

      v22 = HIDWORD(v37);
    }

    sub_1DEE9470C(a3);
    *v13 = v38;
    (v40)(v13, v22, v8);
    v32 = sub_1DEF8D7B8();
    v39(v13, v8);
    if (v32)
    {
      v33 = v4[63];
      v34 = v4[64];
      __swift_project_boxed_opaque_existential_1(v4 + 60, v33);
      v35 = *(v34 + 8);

      v35(sub_1DEEACFC8, v4, v33, v34);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  swift_unknownObjectRelease();
  result = sub_1DEF8E0F8();
  __break(1u);
  return result;
}

Swift::Void __swiftcall Replicator.set(clientID:enabled:)(Swift::String clientID, Swift::Bool enabled)
{
  object = clientID._object;
  countAndFlagsBits = clientID._countAndFlagsBits;
  v6 = *(v2 + 232);
  v7 = swift_allocObject();
  *(v7 + 16) = enabled;
  *(v7 + 24) = countAndFlagsBits;
  *(v7 + 32) = object;
  *(v7 + 40) = v2;

  sub_1DEE2C448(0xD000000000000020, 0x80000001DEF9BD20, v6, sub_1DEEA640C, v7, 0.0);
}

uint64_t sub_1DEE6D7A4(uint64_t (*a1)(uint64_t), uint64_t a2, char a3, void *a4, unint64_t a5, unint64_t a6)
{
  v120[1] = a2;
  v121 = a1;
  v124 = sub_1DEF8D788();
  v123 = *(v124 - 8);
  v10 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v122 = (v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = sub_1DEF8D3F8();
  v12 = *(v147 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v135 = v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  v15 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v145 = v120 - v16;
  v17 = type metadata accessor for Record.ID.Ownership(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v142 = v120 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v141 = v120 - v24;
  if (a3)
  {
    if (qword_1ECDE2E58 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_3;
  }

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v31 = sub_1DEF8D508();
  v32 = __swift_project_value_buffer(v31, qword_1ECDF6028);

  v133 = v32;
  v33 = sub_1DEF8D4D8();
  v34 = sub_1DEF8DCB8();

  v35 = os_log_type_enabled(v33, v34);
  v140 = v20;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v157 = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_1DEE12A5C(a4, a5, &v157);
    _os_log_impl(&dword_1DEE0F000, v33, v34, "Disabling client %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E12CCD70](v37, -1, -1);
    MEMORY[0x1E12CCD70](v36, -1, -1);
  }

  swift_beginAccess();

  sub_1DEF38588(&v161, a4, a5);
  swift_endAccess();

  swift_beginAccess();
  v38 = *(a6 + 240);

  v40 = a4;
  a4 = 0;
  v41 = sub_1DEEA5168(v39, v40, a5);

  a5 = sub_1DEE5844C(v41, sub_1DEF415FC, sub_1DEF41EBC, &qword_1ECDE3DA0, &qword_1DEF916B8);
  v128 = 0;

  if (a5 >> 62)
  {
    v42 = sub_1DEF8DE68();
    if (v42)
    {
      goto LABEL_12;
    }

LABEL_89:
    v30 = v124;
    goto LABEL_90;
  }

  v42 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_89;
  }

LABEL_12:
  v132 = a5 & 0xC000000000000001;
  swift_beginAccess();
  v126 = a5 & 0xFFFFFFFFFFFFFF8;
  v125 = a5 + 32;
  v144 = (v12 + 56);
  v143 = (v12 + 48);
  v134 = (v12 + 32);
  v139 = (v12 + 8);
  *&v43 = 136446210;
  v127 = v43;
  v44 = 0;
  v131 = a6;
  v130 = a5;
  v129 = v42;
  while (1)
  {
    if (v132)
    {
      a4 = MEMORY[0x1E12CB6E0](v44, a5);
      v48 = __OFADD__(v44, 1);
      v49 = v44 + 1;
      if (v48)
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v44 >= *(v126 + 16))
      {
        goto LABEL_86;
      }

      a4 = *(v125 + 8 * v44);

      v48 = __OFADD__(v44, 1);
      v49 = v44 + 1;
      if (v48)
      {
        goto LABEL_84;
      }
    }

    v50 = sub_1DEF8D4D8();
    v51 = sub_1DEF8DCB8();

    v52 = os_log_type_enabled(v50, v51);
    v136 = v49;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v153 = v54;
      *v53 = v127;
      v55 = a4[5];
      v157 = a4[4];
      v158 = v55;

      MEMORY[0x1E12CB180](14906, 0xE200000000000000);
      MEMORY[0x1E12CB180](a4[2], a4[3]);

      v56 = sub_1DEE12A5C(v157, v158, &v153);

      *(v53 + 4) = v56;
      _os_log_impl(&dword_1DEE0F000, v50, v51, "Removing all remote records in zone %{public}s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1E12CCD70](v54, -1, -1);
      MEMORY[0x1E12CCD70](v53, -1, -1);
    }

    v57 = v142;
    sub_1DEE29594(a6 + 192, &v157);
    v59 = v159;
    v58 = v160;
    __swift_project_boxed_opaque_existential_1(&v157, v159);
    v60 = *(*(*(v58 + 8) + 8) + 72);
    v137 = a4;
    v61 = v60(a4, v59);
    if ((v61 & 0xC000000000000001) != 0)
    {
      v62 = MEMORY[0x1E69E7CC8];
      v153 = MEMORY[0x1E69E7CC8];
      v149 = sub_1DEF8E038();
      v63 = sub_1DEF8E0D8();
      v65 = v141;
      if (v63)
      {
        v66 = v64;
        v67 = v63;
        v148 = type metadata accessor for Record.ID(0);
        v68 = v67;
        v69 = v62;
        while (1)
        {
          v152 = v68;
          swift_dynamicCast();
          v151 = v66;
          type metadata accessor for RecordMetadata();
          swift_dynamicCast();
          a6 = v156;
          if (!v156)
          {
            goto LABEL_41;
          }

          v150 = v69;
          v71 = v152;
          sub_1DEEACA70(v156 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v65, type metadata accessor for Record.ID.Ownership);
          v72 = v147;
          (*v144)(v57, 1, 1, v147);
          v73 = *(v146 + 48);
          v74 = v145;
          sub_1DEEACA70(v65, v145, type metadata accessor for Record.ID.Ownership);
          v75 = v72;
          sub_1DEEACA70(v57, v74 + v73, type metadata accessor for Record.ID.Ownership);
          v76 = *v143;
          if ((*v143)(v74, 1, v75) == 1)
          {

            sub_1DEE273A0(v57, type metadata accessor for Record.ID.Ownership);
            sub_1DEE273A0(v65, type metadata accessor for Record.ID.Ownership);
            if (v76(v74 + v73, 1, v75) != 1)
            {
              goto LABEL_34;
            }

            sub_1DEE273A0(v74, type metadata accessor for Record.ID.Ownership);

            v69 = v150;
          }

          else
          {
            v77 = v140;
            sub_1DEEACA70(v74, v140, type metadata accessor for Record.ID.Ownership);
            if (v76(v74 + v73, 1, v75) == 1)
            {

              v78 = v142;
              sub_1DEE273A0(v142, type metadata accessor for Record.ID.Ownership);
              v65 = v141;
              sub_1DEE273A0(v141, type metadata accessor for Record.ID.Ownership);
              v79 = v77;
              v57 = v78;
              (*v139)(v79, v75);
LABEL_34:
              sub_1DEE171B4(v74, &unk_1ECDE40F0, &unk_1DEF91C20);

              v69 = v150;
LABEL_35:
              v80 = *(v69 + 16);
              if (*(v69 + 24) <= v80)
              {
                sub_1DEEB1864(v80 + 1, 1);
              }

              v69 = v153;
              sub_1DEF41EC0(a6, v71);
              goto LABEL_27;
            }

            v81 = v135;
            (*v134)(v135, v74 + v73, v75);

            v138 = sub_1DEF8D3A8();
            v82 = *v139;
            (*v139)(v81, v75);
            v83 = v142;
            sub_1DEE273A0(v142, type metadata accessor for Record.ID.Ownership);
            v65 = v141;
            sub_1DEE273A0(v141, type metadata accessor for Record.ID.Ownership);
            v84 = v77;
            v57 = v83;
            v82(v84, v75);
            sub_1DEE273A0(v74, type metadata accessor for Record.ID.Ownership);

            v69 = v150;
            if ((v138 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

LABEL_27:
          v68 = sub_1DEF8E0D8();
          v66 = v70;
          if (!v68)
          {
            goto LABEL_41;
          }
        }
      }

      v69 = v62;
LABEL_41:
      sub_1DEE2774C();
    }

    else
    {
      v85 = v128;
      v69 = sub_1DEE9EEA4(v61, sub_1DEEA08F4, sub_1DEEA08F4);
      v128 = v85;
    }

    __swift_destroy_boxed_opaque_existential_1(&v157);
    a5 = v69 & 0xC000000000000001;
    if ((v69 & 0xC000000000000001) == 0)
    {
      break;
    }

    v86 = sub_1DEF8DE68();
    a4 = v137;
    if (v86)
    {
      v87 = v86;
      v156 = MEMORY[0x1E69E7CC0];
      sub_1DEF8DFD8();
      v153 = sub_1DEF8E028();
      v154 = v88;
      v155 = 1;
      if ((v87 & 0x8000000000000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_85;
    }

LABEL_13:

    v45 = MEMORY[0x1E69E7CC0];
LABEL_14:
    a6 = v131;
    sub_1DEE29594(v131 + 192, &v157);
    v47 = v159;
    v46 = v160;
    __swift_project_boxed_opaque_existential_1(&v157, v159);
    (*(*(v46 + 16) + 136))(v45, v47);

    __swift_destroy_boxed_opaque_existential_1(&v157);
    v44 = v136;
    a5 = v130;
    if (v136 == v129)
    {
      goto LABEL_89;
    }
  }

  v87 = *(v69 + 16);
  a4 = v137;
  if (!v87)
  {
    goto LABEL_13;
  }

  v156 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DFD8();
  v89 = -1 << *(v69 + 32);
  v90 = sub_1DEF8DE18();
  v91 = *(v69 + 36);
  v153 = v90;
  v154 = v91;
  v155 = 0;
LABEL_48:
  a4 = 0;
  v92 = v69 & 0xFFFFFFFFFFFFFF8;
  if (v69 < 0)
  {
    v92 = v69;
  }

  v149 = v69 + 64;
  v150 = v92;
  v148 = v69 + 72;
  while (a4 < v87)
  {
    v48 = __OFADD__(a4, 1);
    a4 = (a4 + 1);
    if (v48)
    {
      goto LABEL_78;
    }

    a6 = v153;
    v94 = v154;
    v95 = v155;
    v96 = v69;
    sub_1DEF415BC(&v157, v153, v154, v155, v69);

    sub_1DEF8DFB8();
    v97 = *(v156 + 16);
    sub_1DEF8DFE8();
    sub_1DEF8DFF8();
    result = sub_1DEF8DFC8();
    if (a5)
    {
      if (!v95)
      {
        goto LABEL_93;
      }

      if (sub_1DEF8E058())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DE0, &unk_1DEF91700);
      v93 = sub_1DEF8D878();
      sub_1DEF8E0E8();
      v93(&v157, 0);
      if (a4 == v87)
      {
LABEL_76:
        sub_1DEE2F804(v153, v154, v155);

        v45 = v156;
        a4 = v137;
        goto LABEL_14;
      }
    }

    else
    {
      if (v95)
      {
        if (sub_1DEF8E068() != *(v69 + 36))
        {
          goto LABEL_79;
        }

        v152 = sub_1DEF8E078();
        type metadata accessor for Record.ID(0);
        swift_dynamicCast();
        sub_1DEEAF3E8(v157);
        v100 = v99;

        if ((v100 & 1) == 0)
        {
          goto LABEL_81;
        }

        sub_1DEF8E048();
        v101 = sub_1DEF8E098();
        v103 = v102;
        sub_1DEE2F804(a6, v94, 1);
        swift_unknownObjectRelease();
      }

      else
      {
        if ((a6 & 0x8000000000000000) != 0)
        {
          goto LABEL_80;
        }

        v101 = 1 << *(v69 + 32);
        if (a6 >= v101)
        {
          goto LABEL_80;
        }

        v104 = a6 >> 6;
        v105 = *(v149 + 8 * (a6 >> 6));
        if (((v105 >> a6) & 1) == 0)
        {
          goto LABEL_82;
        }

        if (*(v69 + 36) != v94)
        {
          goto LABEL_83;
        }

        v106 = v105 & (-2 << (a6 & 0x3F));
        if (v106)
        {
          v101 = __clz(__rbit64(v106)) | a6 & 0x7FFFFFFFFFFFFFC0;
          v103 = *(v69 + 36);
        }

        else
        {
          v107 = v104 << 6;
          v108 = v104 + 1;
          v109 = (v148 + 8 * v104);
          while (v108 < (v101 + 63) >> 6)
          {
            v111 = *v109++;
            v110 = v111;
            v107 += 64;
            ++v108;
            if (v111)
            {
              sub_1DEE2F804(a6, v94, 0);
              v101 = __clz(__rbit64(v110)) + v107;
              goto LABEL_74;
            }
          }

          sub_1DEE2F804(a6, v94, 0);
LABEL_74:
          v103 = *(v96 + 36);
        }
      }

      v153 = v101;
      v154 = v103;
      v155 = v95;
      v69 = v96;
      if (a4 == v87)
      {
        goto LABEL_76;
      }
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  swift_once();
LABEL_3:
  v25 = sub_1DEF8D508();
  __swift_project_value_buffer(v25, qword_1ECDF6028);

  v26 = sub_1DEF8D4D8();
  v27 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v157 = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_1DEE12A5C(a4, a5, &v157);
    _os_log_impl(&dword_1DEE0F000, v26, v27, "Enabling client %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1E12CCD70](v29, -1, -1);
    MEMORY[0x1E12CCD70](v28, -1, -1);
  }

  v30 = v124;
  swift_beginAccess();
  sub_1DEECB6E4(a4, a5);
  swift_endAccess();
LABEL_90:

  v112 = *(a6 + 232);
  v113 = v122;
  *v122 = v112;
  v114 = v123;
  (*(v123 + 104))(v113, *MEMORY[0x1E69E8020], v30);
  v115 = v112;
  LOBYTE(v112) = sub_1DEF8D7B8();
  result = (*(v114 + 8))(v113, v30);
  if (v112)
  {
    v116 = *(a6 + 504);
    v117 = *(a6 + 512);
    __swift_project_boxed_opaque_existential_1((a6 + 480), v116);
    v118 = *(v117 + 8);

    v118(sub_1DEEACFC8, a6, v116, v117);

    v153 = 0;
    v157 = 0;
    LOBYTE(v158) = 0;
    v119 = sub_1DEE6E9BC(&v153, &v157);
    return v121(v119);
  }

  else
  {
    __break(1u);
LABEL_93:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE6E9BC(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1DEF8D788();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v26 = *a2;
  v25 = *(a2 + 8);
  v12 = v2[29];
  *v10 = v12;
  v13 = *MEMORY[0x1E69E8020];
  v14 = v6[13];
  v14(v10, v13, v5, v8);
  v24 = v12;
  LOBYTE(v12) = sub_1DEF8D7B8();
  v15 = v6[1];
  result = v15(v10, v5);
  if (v12)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    *(v17 + 24) = v11;
    *(v17 + 32) = v26;
    *(v17 + 40) = v25;
    *v10 = v24;
    (v14)(v10, v13, v5);

    v18 = sub_1DEF8D7B8();
    result = v15(v10, v5);
    if (v18)
    {
      v19 = v2[63];
      v20 = v2[64];
      __swift_project_boxed_opaque_existential_1(v2 + 60, v19);
      v21 = swift_allocObject();
      v21[2] = v2;
      v21[3] = sub_1DEEAC82C;
      v21[4] = v17;
      v22 = *(v20 + 8);

      v22(sub_1DEEACE1C, v21, v19, v20);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall Replicator.sync()()
{
  v1 = *(v0 + 232);

  sub_1DEE2C448(0x676E69636E7953, 0xE700000000000000, v1, sub_1DEEA641C, v0, 0.0);
}

uint64_t sub_1DEE6ECAC()
{
  v1 = *(*v0 + 232);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE6ECFC(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEACE20;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_362;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void (*sub_1DEE6EE58(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 48) = *v1;
  v6 = *(v5 + 232);
  sub_1DEF8DD18();
  v4[56] = *v4;
  return sub_1DEE6EF08;
}

void sub_1DEE6EF08(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  isEscapingClosureAtFileLocation = *(v3 + 232);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v4 = v7;
    *(v7 + 16) = sub_1DEEACE20;
    *(v7 + 24) = v6;
    v2[4] = sub_1DEE46D40;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1DEE134F4;
    v2[3] = &block_descriptor_340;
    v8 = _Block_copy(v2);
    v9 = v2[5];

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1DEEACE20;
  *(v11 + 24) = v10;
  v2[4] = sub_1DEE46D40;
  v2[5] = v11;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DEE134F4;
  v2[3] = &block_descriptor_351;
  v12 = _Block_copy(v2);
  v13 = v2[5];

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1DEE6F1C4()
{
  v1 = *(*v0 + 232);
  type metadata accessor for DeviceDescriptor();
  return sub_1DEF8DD18();
}

uint64_t sub_1DEE6F274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(v7 + 232);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  swift_unknownObjectRetain();

  sub_1DEE2C448(0xD000000000000013, 0x80000001DEF9BD00, v8, sub_1DEEACF60, v9, 0.0);
}

uint64_t sub_1DEE6F344(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = *(v7 + 232);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = v7;

  sub_1DEE2C448(0xD000000000000020, 0x80000001DEF9BD20, v8, sub_1DEEACCF0, v9, 0.0);
}

uint64_t sub_1DEE6F410()
{
  v1 = *v0;
  v2 = *(*v0 + 232);

  sub_1DEE2C448(0x676E69636E7953, 0xE700000000000000, v2, sub_1DEEACF5C, v1, 0.0);
}

uint64_t sub_1DEE6F488()
{
  v1 = *(*v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C28, &qword_1DEF910E8);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE6F500()
{
  v1 = *(*v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE6F578()
{
  v1 = *(*v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C30, &unk_1DEF910F0);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE6F5F0()
{
  v1 = *(*v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C38, &qword_1DEF91100);
  sub_1DEF8DD18();
  return v3;
}

unint64_t Replicator.captureState(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000;
  if (v3 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return sub_1DEE9AD1C();
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return sub_1DEE9BFF0();
  }

  else if (a1 == 0x746163696C706572 && a2 == 0xEA0000000000726FLL || (sub_1DEF8E4E8() & 1) != 0)
  {

    return sub_1DEE9D7B0();
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xEC00000073657079 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return sub_1DEE9DFA0();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1DEEA31A8(v6);
  }
}

Swift::Void __swiftcall Replicator.retryStuckRemotePairings()()
{
  v1 = *(v0 + 232);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DEEA6420;
  *(v2 + 24) = v0;
  v4[4] = sub_1DEE46D40;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1DEE134F4;
  v4[3] = &block_descriptor_178;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1DEE6F9E0(void *a1)
{
  v2 = type metadata accessor for DeviceDescriptor();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v82 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v5 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v72 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v72 - v10;
  swift_beginAccess();
  v73 = a1;
  sub_1DEE29594((a1 + 24), v90);
  v11 = v91;
  v12 = v92;
  __swift_project_boxed_opaque_existential_1(v90, v91);
  v13 = (*(*(*(v12 + 8) + 8) + 32))(v11);
  v14 = sub_1DEE9EEA4(v13, sub_1DEEA048C, sub_1DEEA048C);

  __swift_destroy_boxed_opaque_existential_1(v90);
  v15 = *(v14 + 16);
  if (v15)
  {
    v90[0] = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E28(0, v15, 0);
    v89 = v90[0];
    v16 = v14 + 64;
    v17 = -1 << *(v14 + 32);
    v18 = sub_1DEF8DE18();
    v19 = 0;
    v20 = *(v14 + 36);
    v74 = v14 + 72;
    v75 = v15;
    v77 = v14 + 64;
    v76 = v20;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v14 + 32))
    {
      v22 = v18 >> 6;
      if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_37;
      }

      if (v20 != *(v14 + 36))
      {
        goto LABEL_38;
      }

      v83 = v19;
      v84 = 1 << v18;
      v23 = v81;
      v24 = *(v81 + 48);
      v25 = *(v14 + 48);
      v26 = sub_1DEF8D3F8();
      v27 = *(v26 - 8);
      v28 = v78;
      (*(v27 + 16))(v78, v25 + *(v27 + 72) * v18, v26);
      v29 = *(v14 + 56);
      v30 = (type metadata accessor for PairingRelationship() - 8);
      sub_1DEEACA70(v29 + *(*v30 + 72) * v18, &v28[v24], type metadata accessor for PairingRelationship);
      v31 = v79;
      (*(v27 + 32))(v79, v28, v26);
      sub_1DEEAB218(&v28[v24], v31 + *(v23 + 48), type metadata accessor for PairingRelationship);
      v32 = v80;
      sub_1DEE1BA88(v31, v80, &unk_1ECDE4350, &qword_1DEF93400);
      v33 = v32 + *(v23 + 48);
      v34 = v82;
      sub_1DEEACA70(v33 + v30[7], v82, type metadata accessor for DeviceDescriptor);
      sub_1DEE273A0(v33, type metadata accessor for PairingRelationship);
      v35 = *(v34 + 8);
      v88 = *v34;
      v36 = *(v34 + 160);
      v37 = *(v34 + 168);
      v87 = *(v34 + 48);
      v38 = *(v34 + 32);
      v85 = *(v34 + 40);
      v86 = v38;

      sub_1DEE273A0(v34, type metadata accessor for DeviceDescriptor);
      (*(v27 + 8))(v32, v26);
      v39 = v89;
      v90[0] = v89;
      v41 = *(v89 + 16);
      v40 = *(v89 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1DEEC7E28((v40 > 1), v41 + 1, 1);
        v39 = v90[0];
      }

      *(v39 + 16) = v41 + 1;
      v42 = v39 + 56 * v41;
      *(v42 + 32) = v88;
      *(v42 + 40) = v35;
      *(v42 + 48) = v36;
      *(v42 + 56) = v37;
      *(v42 + 64) = v87;
      v43 = v85;
      *(v42 + 72) = v86;
      *(v42 + 80) = v43;
      v21 = 1 << *(v14 + 32);
      if (v18 >= v21)
      {
        goto LABEL_39;
      }

      v16 = v77;
      v44 = *(v77 + 8 * v22);
      if ((v44 & v84) == 0)
      {
        goto LABEL_40;
      }

      v89 = v39;
      LODWORD(v20) = v76;
      if (v76 != *(v14 + 36))
      {
        goto LABEL_41;
      }

      v45 = v44 & (-2 << (v18 & 0x3F));
      if (v45)
      {
        v21 = __clz(__rbit64(v45)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v46 = v22 << 6;
        v47 = v22 + 1;
        v48 = (v74 + 8 * v22);
        while (v47 < (v21 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            sub_1DEE2F804(v18, v76, 0);
            v21 = __clz(__rbit64(v49)) + v46;
            goto LABEL_4;
          }
        }

        sub_1DEE2F804(v18, v76, 0);
      }

LABEL_4:
      v19 = v83 + 1;
      v18 = v21;
      if (v83 + 1 == v75)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v89 = MEMORY[0x1E69E7CC0];
LABEL_21:
  if (qword_1ECDE2E58 != -1)
  {
LABEL_42:
    swift_once();
  }

  v51 = sub_1DEF8D508();
  __swift_project_value_buffer(v51, qword_1ECDF6028);
  v52 = v73;

  v53 = v52;
  v54 = sub_1DEF8D4D8();
  v55 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v90[0] = v57;
    *v56 = 136380931;
    if (v53[32])
    {
      v58 = v53[31];
      v59 = v53[32];
    }

    else
    {
      v60 = v53;
      v61 = v53[22];
      v62 = v60[23];
      ObjectType = swift_getObjectType();
      v64 = (*(v62 + 16))(ObjectType, v62);
      if (v65)
      {
        v58 = v64;
      }

      else
      {
        v58 = 0xD000000000000016;
      }

      if (v65)
      {
        v59 = v65;
      }

      else
      {
        v59 = 0x80000001DEF9BCA0;
      }
    }

    v66 = sub_1DEE12A5C(v58, v59, v90);

    *(v56 + 4) = v66;
    *(v56 + 12) = 2082;
    v67 = MEMORY[0x1E12CB290](v89, &type metadata for HandshakeDescriptor);
    v69 = sub_1DEE12A5C(v67, v68, v90);

    *(v56 + 14) = v69;
    _os_log_impl(&dword_1DEE0F000, v54, v55, "(%{private}s) Attempting to handshake with stuck pairings: %{public}s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v57, -1, -1);
    MEMORY[0x1E12CCD70](v56, -1, -1);
  }

  else
  {
  }

  v70 = *(v14 + 16);

  if (v70)
  {
    sub_1DEE701E0(v89);
  }
}

uint64_t sub_1DEE701E0(uint64_t a1)
{
  v23 = a1;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[29];
  *v7 = v8;
  v9 = *MEMORY[0x1E69E8020];
  v10 = v3[13];
  v10(v7, v9, v2, v5);
  v11 = v8;
  v12 = sub_1DEF8D7B8();
  v13 = v3[1];
  result = v13(v7, v2);
  if (v12)
  {
    v15 = swift_allocObject();
    v16 = v11;
    v17 = v23;
    *(v15 + 16) = v1;
    *(v15 + 24) = v17;
    *v7 = v16;
    (v10)(v7, v9, v2);

    LOBYTE(v17) = sub_1DEF8D7B8();
    result = v13(v7, v2);
    if (v17)
    {
      v18 = v1[63];
      v19 = v1[64];
      __swift_project_boxed_opaque_existential_1(v1 + 60, v18);
      v20 = swift_allocObject();
      v20[2] = v1;
      v20[3] = sub_1DEEABFA4;
      v20[4] = v15;
      v21 = *(v19 + 8);

      v21(sub_1DEEACE1C, v20, v18, v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE70420()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DEEACDA4;
  *(v3 + 24) = v1;
  v6[4] = sub_1DEE46D40;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DEE134F4;
  v6[3] = &block_descriptor_314;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE7056C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_1DEF8D1E8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1DEE29DC8(a2, v8);
  return sub_1DEE171B4(v8, &qword_1ECDE4890, &qword_1DEF90990);
}

uint64_t Replicator.syncService(_:shouldAcceptIncomingMessage:)()
{
  v1 = *(v0 + 232);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE70704@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  if (*(a2 + 176) == result)
  {
    v6 = (a3 + *(type metadata accessor for Message() + 24));
    result = *v6;
    if (*v6 == 0x7065526574617453 && v6[1] == 0xEF726F746163696CLL)
    {
      v5 = 1;
    }

    else
    {
      result = sub_1DEF8E4E8();
      v5 = result & 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *a4 = v5;
  return result;
}

uint64_t sub_1DEE707CC()
{
  v1 = *(v0 + 232);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE7083C(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v3 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v2[29];
  *v11 = v12;
  v13 = v7[13];
  v26 = *MEMORY[0x1E69E8020];
  v25 = v13;
  v13(v11, v9);
  v24 = v12;
  LOBYTE(v12) = sub_1DEF8D7B8();
  v14 = v7[1];
  result = v14(v11, v6);
  if (v12)
  {
    sub_1DEEACA70(v27, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplicatorMessage.Handshake.Request);
    v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    sub_1DEEAB218(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ReplicatorMessage.Handshake.Request);
    *(v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
    v18 = v25;
    *v11 = v24;
    v18(v11, v26, v6);

    LOBYTE(v16) = sub_1DEF8D7B8();
    result = v14(v11, v6);
    if (v16)
    {
      v19 = v2[63];
      v20 = v2[64];
      __swift_project_boxed_opaque_existential_1(v2 + 60, v19);
      v21 = swift_allocObject();
      v21[2] = v2;
      v21[3] = sub_1DEEAAC28;
      v21[4] = v17;
      v22 = *(v20 + 8);

      v22(sub_1DEEACE1C, v21, v19, v20);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE70B44(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v3 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v2[29];
  *v11 = v12;
  v13 = v7[13];
  v26 = *MEMORY[0x1E69E8020];
  v25 = v13;
  v13(v11, v9);
  v24 = v12;
  LOBYTE(v12) = sub_1DEF8D7B8();
  v14 = v7[1];
  result = v14(v11, v6);
  if (v12)
  {
    sub_1DEEACA70(v27, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplicatorMessage.Handshake.Response);
    v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    sub_1DEEAB218(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ReplicatorMessage.Handshake.Response);
    *(v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
    v18 = v25;
    *v11 = v24;
    v18(v11, v26, v6);

    LOBYTE(v16) = sub_1DEF8D7B8();
    result = v14(v11, v6);
    if (v16)
    {
      v19 = v2[63];
      v20 = v2[64];
      __swift_project_boxed_opaque_existential_1(v2 + 60, v19);
      v21 = swift_allocObject();
      v21[2] = v2;
      v21[3] = sub_1DEEAB5A0;
      v21[4] = v17;
      v22 = *(v20 + 8);

      v22(sub_1DEEACE1C, v21, v19, v20);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE70E4C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v2[29];
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1DEF8D7B8();
  (*(v12 + 8))(v16, v11);
  if (v17)
  {
    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF6028);
  sub_1DEEACA70(a1, v10, type metadata accessor for ReplicatorMessage.Handshake.Response);

  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_1DEE12A5C(v2[66], v2[67], &v30);
    *(v22 + 12) = 2080;
    sub_1DEEACA70(v10, v7, type metadata accessor for ReplicatorMessage.Handshake.Response);
    v24 = sub_1DEF8D988();
    v26 = v25;
    sub_1DEE273A0(v10, type metadata accessor for ReplicatorMessage.Handshake.Response);
    v27 = sub_1DEE12A5C(v24, v26, &v30);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "(%{public}s) Received handshake response: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v23, -1, -1);
    MEMORY[0x1E12CCD70](v22, -1, -1);
  }

  else
  {

    sub_1DEE273A0(v10, type metadata accessor for ReplicatorMessage.Handshake.Response);
  }

  return sub_1DEE78B0C(a1);
}

void sub_1DEE711C0(uint64_t a1)
{
  v3 = v1;
  v209 = a1;
  v4 = sub_1DEF8D698();
  v183 = *(v4 - 8);
  v5 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D6D8();
  v182 = *(v8 - 8);
  v9 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v181 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1DEF8D3F8();
  v188 = *(v189 - 8);
  v11 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v186 = v12;
  v187 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v192 = &v172 - v15;
  v193 = type metadata accessor for PairingRelationship();
  v199 = *(v193 - 8);
  v16 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v175 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v190 = &v172 - v19;
  v180 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v202 = &v172 - v22;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  v23 = *(*(v203 - 8) + 64);
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v172 - v24;
  v205 = type metadata accessor for SessionManager.Session();
  isa = v205[-1].isa;
  v25 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v205);
  v179 = &v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v208 = &v172 - v28;
  v201 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  v176 = *(v201 - 8);
  v29 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v185 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v184 = &v172 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v200 = &v172 - v34;
  v177 = v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v172 - v37;
  v39 = sub_1DEF8D788();
  v40 = *(v39 - 8);
  v41 = v40[8];
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = (&v172 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = v1[29];
  *v44 = v45;
  v46 = v40[13];
  v196 = *MEMORY[0x1E69E8020];
  v197 = v40 + 13;
  v195 = v46;
  v46(v44, v42);
  v194 = v45;
  v47 = sub_1DEF8D7B8();
  v50 = v40[1];
  v49 = (v40 + 1);
  v48 = v50;
  v198 = v39;
  v50(v44, v39);
  if (v47)
  {
    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v51 = sub_1DEF8D508();
  v52 = __swift_project_value_buffer(v51, qword_1ECDF6028);
  sub_1DEEACA70(v209, v38, type metadata accessor for ReplicatorMessage.Handshake.Complete);

  v206 = v52;
  v53 = sub_1DEF8D4D8();
  v54 = sub_1DEF8DCB8();

  v55 = os_log_type_enabled(v53, v54);
  v174 = v4;
  v173 = v8;
  v172 = v7;
  v191 = v48;
  if (v55)
  {
    v56 = v3;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock = v58;
    *v57 = 136446466;
    *(v57 + 4) = sub_1DEE12A5C(v56[66], v56[67], &aBlock);
    *(v57 + 12) = 2080;
    sub_1DEEACA70(v38, v200, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    v59 = sub_1DEF8D988();
    v61 = v60;
    sub_1DEE273A0(v38, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    v62 = sub_1DEE12A5C(v59, v61, &aBlock);

    *(v57 + 14) = v62;
    _os_log_impl(&dword_1DEE0F000, v53, v54, "(%{public}s) Received handshake complete %s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v58, -1, -1);
    v63 = v57;
    v3 = v56;
    MEMORY[0x1E12CCD70](v63, -1, -1);
  }

  else
  {

    v64 = sub_1DEE273A0(v38, type metadata accessor for ReplicatorMessage.Handshake.Complete);
  }

  v65 = *(v3[68] + 32);
  MEMORY[0x1EEE9AC00](v64);

  v66 = v204;
  sub_1DEF8DD18();

  v67 = v205;
  v68 = (*(isa + 6))(v66, 1, v205);
  v69 = v208;
  if (v68 == 1)
  {
    sub_1DEE171B4(v66, &qword_1ECDE3D08, &unk_1DEF95E50);

    v70 = sub_1DEF8D4D8();
    v71 = sub_1DEF8DC98();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock = v73;
      *v72 = 136446210;
      *(v72 + 4) = sub_1DEE12A5C(v3[66], v3[67], &aBlock);
      _os_log_impl(&dword_1DEE0F000, v70, v71, "(%{public}s) No session established", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1E12CCD70](v73, -1, -1);
      MEMORY[0x1E12CCD70](v72, -1, -1);
    }

    return;
  }

  sub_1DEEAB218(v66, v208, type metadata accessor for SessionManager.Session);
  v74 = v194;
  *v44 = v194;
  v75 = v198;
  v195(v44, v196, v198);
  v76 = v74;
  isEscapingClosureAtFileLocation = sub_1DEF8D7B8();
  v191(v44, v75);
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v149 = sub_1DEF8DE68();
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1DEE29594((v3 + 24), &aBlock);
  v78 = v214;
  v79 = v215;
  __swift_project_boxed_opaque_existential_1(&aBlock, v214);
  v80 = *(v79 + 1);
  v81 = v192;
  MetadataStoring.pairingRelationship(remoteDeviceID:)(*(v69 + *(v67 + 20)), *(v69 + *(v67 + 20) + 8), v78, v80, v192);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v49 = v193;
  if ((*(v199 + 48))(v81, 1, v193) == 1)
  {
    sub_1DEE171B4(v81, &qword_1ECDE3C18, &unk_1DEF94D20);

    v82 = sub_1DEF8D4D8();
    v83 = sub_1DEF8DC98();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      aBlock = v85;
      *v84 = 136446210;
      *(v84 + 4) = sub_1DEE12A5C(v3[66], v3[67], &aBlock);
      _os_log_impl(&dword_1DEE0F000, v82, v83, "(%{public}s) No pairing relationship established", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v85);
      MEMORY[0x1E12CCD70](v85, -1, -1);
      MEMORY[0x1E12CCD70](v84, -1, -1);
    }

    sub_1DEE273A0(v69, type metadata accessor for SessionManager.Session);
    return;
  }

  v204 = v76;
  sub_1DEEAB218(v81, v202, type metadata accessor for PairingRelationship);
  v86 = v3[68];
  v205 = *(v86 + 32);
  v87 = v188;
  v88 = v187;
  v89 = v189;
  (*(v188 + 16))(v187, v69, v189);
  v90 = (*(v87 + 80) + 24) & ~*(v87 + 80);
  v66 = v90 + v186;
  v91 = swift_allocObject();
  *(v91 + 16) = v86;
  (*(v87 + 32))(v91 + v90, v88, v89);
  *(v91 + v66) = 1;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_1DEEACDAC;
  *(v92 + 24) = v91;
  v215 = sub_1DEE46D40;
  v216 = v92;
  aBlock = MEMORY[0x1E69E9820];
  v2 = 1107296256;
  v212 = 1107296256;
  v213 = sub_1DEE134F4;
  v214 = &block_descriptor_712;
  v93 = _Block_copy(&aBlock);
  v67 = v216;
  swift_retain_n();

  dispatch_sync(v205, v93);
  _Block_release(v93);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_39;
  }

  v94 = v202;
  v95 = (v202 + *(v49 + 20));
  v96 = v201;
  v97 = v209;
  v98 = (v209 + *(v201 + 20));
  v99 = v98[1];
  aBlock = *v98;
  v212 = v99;
  sub_1DEE4F8C0(aBlock, v99);
  v100 = v190;
  v205 = v95;
  sub_1DEE5F828(v95, &aBlock, 0, 1, v190);
  sub_1DEE4F8D4(aBlock, v212);
  sub_1DEE273A0(v100, type metadata accessor for PairingRelationship);
  v203 = *(v97 + *(v96 + 24));
  v101 = sub_1DEEA7A18(v203, v94);
  v198 = *(v97 + *(v96 + 28));
  swift_beginAccess();
  v102 = v3[84];
  v103 = *(v102 + 16);
  v104 = MEMORY[0x1E69E7CC0];
  if (v103)
  {
    v197 = v101;
    v104 = sub_1DEF2B2A4(v103, 0);
    v105 = sub_1DEF2DE0C(&aBlock, v104 + 4, v103, v102);

    sub_1DEE2774C();
    if (v105 != v103)
    {
      __break(1u);
      return;
    }

    v101 = v197;
  }

  v107 = v3[27];
  v106 = v3[28];
  v108 = __swift_project_boxed_opaque_existential_1(v3 + 24, v107);
  v109 = *(v107 - 8);
  v110 = *(v109 + 64);
  v111 = MEMORY[0x1EEE9AC00](v108);
  v113 = v3;
  v114 = &v172 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v109 + 16))(v114, v111);
  swift_beginAccess();
  v115 = v113[30];

  v117 = sub_1DEF653EC(v116);

  v118 = v202;
  v67 = sub_1DEED02EC(v202, v198, v101, v104, v114, v117, v119, v107, *(v106 + 8));

  v120 = v114;
  v3 = v113;
  (*(v109 + 8))(v120, v107);
  v121 = v175;
  sub_1DEEACA70(v118, v175, type metadata accessor for PairingRelationship);

  v122 = sub_1DEF8D4D8();
  v123 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    aBlock = v125;
    *v124 = 136446466;
    *(v124 + 4) = sub_1DEE12A5C(v113[66], v113[67], &aBlock);
    *(v124 + 12) = 2082;
    v126 = PairingRelationship.description.getter();
    v128 = v127;
    sub_1DEE273A0(v121, type metadata accessor for PairingRelationship);
    v129 = sub_1DEE12A5C(v126, v128, &aBlock);

    *(v124 + 14) = v129;
    _os_log_impl(&dword_1DEE0F000, v122, v123, "(%{public}s) [Handle Complete] Found pairing relationship: %{public}s", v124, 0x16u);
    swift_arrayDestroy();
    v130 = v125;
    v3 = v113;
    MEMORY[0x1E12CCD70](v130, -1, -1);
    MEMORY[0x1E12CCD70](v124, -1, -1);
  }

  else
  {

    sub_1DEE273A0(v121, type metadata accessor for PairingRelationship);
  }

  v66 = v208;
  v131 = v185;
  v132 = v184;
  v49 = v202;
  if (*(v203 + 16))
  {
    v133 = v209;
    sub_1DEEACA70(v209, v184, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    sub_1DEEACA70(v133, v131, type metadata accessor for ReplicatorMessage.Handshake.Complete);

    v134 = sub_1DEF8D4D8();
    v135 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = v132;
      v137 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      aBlock = v203;
      *v137 = 136446722;
      *(v137 + 4) = sub_1DEE12A5C(v3[66], v3[67], &aBlock);
      *(v137 + 12) = 2050;
      v138 = v67;
      v139 = v49;
      v140 = v201;
      v141 = *(*(v136 + *(v201 + 24)) + 16);
      LODWORD(v198) = v135;
      sub_1DEE273A0(v136, type metadata accessor for ReplicatorMessage.Handshake.Complete);
      *(v137 + 14) = v141;
      *(v137 + 22) = 2082;
      v142 = *(v140 + 24);
      v49 = v139;
      v67 = v138;
      v143 = MEMORY[0x1E12CB290](*(v131 + v142), MEMORY[0x1E69E6158]);
      v144 = v131;
      v146 = v145;
      sub_1DEE273A0(v144, type metadata accessor for ReplicatorMessage.Handshake.Complete);
      v147 = sub_1DEE12A5C(v143, v146, &aBlock);

      *(v137 + 24) = v147;
      _os_log_impl(&dword_1DEE0F000, v134, v198, "(%{public}s) [Handle Complete] Remote device identified mismatched zones (%{public}ld): %{public}s", v137, 0x20u);
      v148 = v203;
      swift_arrayDestroy();
      v66 = v208;
      MEMORY[0x1E12CCD70](v148, -1, -1);
      MEMORY[0x1E12CCD70](v137, -1, -1);
    }

    else
    {
      sub_1DEE273A0(v132, type metadata accessor for ReplicatorMessage.Handshake.Complete);

      sub_1DEE273A0(v131, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    }
  }

  isEscapingClosureAtFileLocation = v67 >> 62;
  if (v67 >> 62)
  {
    goto LABEL_40;
  }

  v149 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
  v150 = v205;
  if (v149)
  {

    v151 = sub_1DEF8D4D8();
    v152 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      aBlock = v154;
      *v153 = 136446722;
      *(v153 + 4) = sub_1DEE12A5C(v3[66], v3[67], &aBlock);
      *(v153 + 12) = 2050;
      if (isEscapingClosureAtFileLocation)
      {
        v155 = sub_1DEF8DE68();
      }

      else
      {
        v155 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v153 + 14) = v155;

      *(v153 + 22) = 2082;
      v156 = type metadata accessor for Record.ID(0);
      v157 = MEMORY[0x1E12CB290](v67, v156);
      v159 = sub_1DEE12A5C(v157, v158, &aBlock);

      *(v153 + 24) = v159;
      _os_log_impl(&dword_1DEE0F000, v151, v152, "(%{public}s) [Handle Complete] Found mismatched records (%{public}ld): %{public}s", v153, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v154, -1, -1);
      MEMORY[0x1E12CCD70](v153, -1, -1);

      v66 = v208;
    }

    else
    {
    }
  }

  v160 = v209;
  sub_1DEE79004(v67, v209);

  sub_1DEE7D6B8(*v150, v150[1]);
  sub_1DEE53BFC();
  v161 = v179;
  sub_1DEEACA70(v66, v179, type metadata accessor for SessionManager.Session);
  v162 = v200;
  sub_1DEEACA70(v160, v200, type metadata accessor for ReplicatorMessage.Handshake.Complete);
  v163 = v190;
  sub_1DEEACA70(v49, v190, type metadata accessor for PairingRelationship);
  v164 = (*(isa + 80) + 24) & ~*(isa + 80);
  v165 = (v178 + *(v176 + 80) + v164) & ~*(v176 + 80);
  v166 = (v177 + *(v199 + 80) + v165) & ~*(v199 + 80);
  v167 = swift_allocObject();
  *(v167 + 16) = v3;
  sub_1DEEAB218(v161, v167 + v164, type metadata accessor for SessionManager.Session);
  sub_1DEEAB218(v162, v167 + v165, type metadata accessor for ReplicatorMessage.Handshake.Complete);
  sub_1DEEAB218(v163, v167 + v166, type metadata accessor for PairingRelationship);
  v215 = sub_1DEEABBD0;
  v216 = v167;
  aBlock = MEMORY[0x1E69E9820];
  v212 = v2;
  v213 = sub_1DEE3F0C0;
  v214 = &block_descriptor_718;
  v168 = _Block_copy(&aBlock);

  v169 = v181;
  sub_1DEF8D6B8();
  v210 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  v170 = v172;
  v171 = v174;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v169, v170, v168);
  _Block_release(v168);
  (*(v183 + 8))(v170, v171);
  (*(v182 + 8))(v169, v173);
  sub_1DEE273A0(v49, type metadata accessor for PairingRelationship);
  sub_1DEE273A0(v66, type metadata accessor for SessionManager.Session);
}

uint64_t sub_1DEE72AD8(uint64_t a1, uint64_t a2)
{
  v230 = a2;
  v231 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v201 - v5;
  v205 = type metadata accessor for Record(0);
  v7 = *(*(v205 - 8) + 64);
  MEMORY[0x1EEE9AC00](v205);
  v9 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v204 = &v201 - v12;
  v13 = type metadata accessor for Record.ID.Ownership(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v209 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_1DEF8D3F8();
  v210 = *(v211 - 8);
  v16 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v206 = &v201 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v208 = &v201 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v214 = &v201 - v22;
  v220 = type metadata accessor for PairingRelationship();
  v213 = *(v220 - 8);
  v23 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v221 = &v201 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  v25 = *(*(v225 - 8) + 64);
  MEMORY[0x1EEE9AC00](v225);
  v226 = &v201 - v26;
  v227 = type metadata accessor for SessionManager.Session();
  v224 = *(v227 - 8);
  v27 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v29 = &v201 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for ReplicatorMessage.Sync(0);
  v30 = *(*(v222 - 8) + 64);
  MEMORY[0x1EEE9AC00](v222);
  v32 = &v201 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v201 - v34;
  v36 = sub_1DEF8D788();
  v37 = *(v36 - 8);
  v38 = v37[8];
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = (&v201 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v229 = v2;
  v42 = v2[29];
  *v41 = v42;
  v43 = v37[13];
  v218 = *MEMORY[0x1E69E8020];
  v217 = v43;
  v43(v41, v39);
  v215 = v42;
  LOBYTE(v42) = sub_1DEF8D7B8();
  v44 = v37[1];
  v219 = v36;
  v216 = v44;
  v44(v41, v36);
  if (v42)
  {
    v212 = v37 + 13;
    v202 = v6;
    v203 = v9;
    v228 = v29;
    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v45 = sub_1DEF8D508();
  v46 = __swift_project_value_buffer(v45, qword_1ECDF6028);
  sub_1DEEACA70(v231, v35, type metadata accessor for ReplicatorMessage.Sync);
  v47 = v229;

  v223 = v46;
  v48 = sub_1DEF8D4D8();
  v49 = sub_1DEF8DCB8();

  v50 = os_log_type_enabled(v48, v49);
  v51 = v230;
  if (v50)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136446466;
    *(v52 + 4) = sub_1DEE12A5C(v47[66], v47[67], aBlock);
    *(v52 + 12) = 2082;
    sub_1DEEACA70(v35, v32, type metadata accessor for ReplicatorMessage.Sync);
    v54 = sub_1DEF8D988();
    v56 = v55;
    sub_1DEE273A0(v35, type metadata accessor for ReplicatorMessage.Sync);
    v57 = sub_1DEE12A5C(v54, v56, aBlock);

    *(v52 + 14) = v57;
    _os_log_impl(&dword_1DEE0F000, v48, v49, "(%{public}s) Received sync message: %{public}s", v52, 0x16u);
    swift_arrayDestroy();
    v58 = v53;
    v51 = v230;
    MEMORY[0x1E12CCD70](v58, -1, -1);
    MEMORY[0x1E12CCD70](v52, -1, -1);
  }

  else
  {

    v59 = sub_1DEE273A0(v35, type metadata accessor for ReplicatorMessage.Sync);
  }

  v60 = v228;
  v61 = v47[68];
  v62 = *(v61 + 32);
  MEMORY[0x1EEE9AC00](v59);
  v63 = v231;
  *(&v201 - 2) = v61;
  *(&v201 - 1) = v63;

  v64 = v226;
  sub_1DEF8DD18();
  v65 = v64;

  v66 = v64;
  v67 = v227;
  if ((*(v224 + 48))(v66, 1, v227) == 1)
  {
    sub_1DEE171B4(v65, &qword_1ECDE3D08, &unk_1DEF95E50);

    v68 = sub_1DEF8D4D8();
    v69 = sub_1DEF8DC98();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock[0] = v71;
      *v70 = 136446210;
      *(v70 + 4) = sub_1DEE12A5C(v47[66], v47[67], aBlock);
      _os_log_impl(&dword_1DEE0F000, v68, v69, "(%{public}s) No session established", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x1E12CCD70](v71, -1, -1);
      MEMORY[0x1E12CCD70](v70, -1, -1);
    }

    return sub_1DEE8DED0(v51);
  }

  sub_1DEEAB218(v65, v60, type metadata accessor for SessionManager.Session);
  v72 = v215;
  *v41 = v215;
  v73 = v219;
  v217(v41, v218, v219);
  v74 = v72;
  LOBYTE(v72) = sub_1DEF8D7B8();
  result = v216(v41, v73);
  if (v72)
  {
    swift_beginAccess();
    sub_1DEE29594((v47 + 24), aBlock);
    v76 = v233;
    v77 = v234;
    __swift_project_boxed_opaque_existential_1(aBlock, v233);
    v78 = *(v77 + 1);
    v79 = v214;
    MetadataStoring.pairingRelationship(remoteDeviceID:)(*(v60 + *(v67 + 20)), *(v60 + *(v67 + 20) + 8), v76, v78, v214);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if ((*(v213 + 48))(v79, 1, v220) == 1)
    {
      sub_1DEE171B4(v79, &qword_1ECDE3C18, &unk_1DEF94D20);

      v80 = sub_1DEF8D4D8();
      v81 = sub_1DEF8DC98();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        aBlock[0] = v83;
        *v82 = 136446210;
        *(v82 + 4) = sub_1DEE12A5C(v47[66], v47[67], aBlock);
        _os_log_impl(&dword_1DEE0F000, v80, v81, "(%{public}s) No pairing relationship established", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v83);
        MEMORY[0x1E12CCD70](v83, -1, -1);
        MEMORY[0x1E12CCD70](v82, -1, -1);
      }

      sub_1DEE273A0(v60, type metadata accessor for SessionManager.Session);
      return sub_1DEE8DED0(v51);
    }

    sub_1DEEAB218(v79, v221, type metadata accessor for PairingRelationship);
    v84 = v231 + *(v222 + 20);
    v85 = *v84;
    v86 = *(*v84 + 32);
    swift_beginAccess();
    v87 = v47[30];

    v88 = sub_1DEF718FC(v86, v87);

    if (!v88)
    {

      v93 = sub_1DEF8D4D8();
      v97 = sub_1DEF8DC98();

      if (os_log_type_enabled(v93, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        aBlock[0] = v99;
        *v98 = 136446210;
        *(v98 + 4) = sub_1DEE12A5C(v47[66], v47[67], aBlock);
        _os_log_impl(&dword_1DEE0F000, v93, v97, "(%{public}s) No data source", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x1E12CCD70](v99, -1, -1);
        MEMORY[0x1E12CCD70](v98, -1, -1);
      }

      goto LABEL_21;
    }

    swift_beginAccess();
    v89 = v47[84];
    v90 = v85[4];
    v91 = *(v90 + 32);
    v92 = *(v90 + 40);

    LOBYTE(v91) = sub_1DEF01E3C(v91, v92, v89);

    if (v91)
    {

      v93 = sub_1DEF8D4D8();
      v94 = sub_1DEF8DC98();

      if (!os_log_type_enabled(v93, v94))
      {

        goto LABEL_29;
      }

      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      aBlock[0] = v96;
      *v95 = 136446210;
      *(v95 + 4) = sub_1DEE12A5C(v47[66], v47[67], aBlock);
      _os_log_impl(&dword_1DEE0F000, v93, v94, "(%{public}s) Client is disabled", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v96);
      MEMORY[0x1E12CCD70](v96, -1, -1);
      MEMORY[0x1E12CCD70](v95, -1, -1);

LABEL_21:

LABEL_29:
      sub_1DEE273A0(v221, type metadata accessor for PairingRelationship);
      sub_1DEE273A0(v60, type metadata accessor for SessionManager.Session);
LABEL_52:
      v51 = v230;
      return sub_1DEE8DED0(v51);
    }

    v225 = 0;
    v227 = v84;
    v231 = v88;
    v100 = v47[68];
    v101 = *(v100 + 32);
    v102 = v210;
    v103 = v210 + 16;
    v104 = v208;
    v105 = v211;
    v226 = *(v210 + 16);
    (v226)(v208, v60, v211);
    v106 = (*(v102 + 80) + 24) & ~*(v102 + 80);
    v107 = v106 + v207;
    v108 = swift_allocObject();
    *(v108 + 16) = v100;
    v109 = *(v102 + 32);
    v222 = v102 + 32;
    v219 = v109;
    v109(v108 + v106, v104, v105);
    *(v108 + v107) = 1;
    v110 = swift_allocObject();
    *(v110 + 16) = sub_1DEEACDAC;
    *(v110 + 24) = v108;
    v234 = sub_1DEE46D40;
    v235 = v110;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE134F4;
    v233 = &block_descriptor_730;
    v111 = _Block_copy(aBlock);
    swift_retain_n();

    dispatch_sync(v101, v111);
    _Block_release(v111);
    LOBYTE(v101) = swift_isEscapingClosureAtFileLocation();

    if ((v101 & 1) == 0)
    {
      v113 = v85[2];
      v112 = v85[3];
      v114 = v85[4];
      v115 = v209;
      v116 = v221;
      v117 = v211;
      v224 = v103;
      v118 = v226;
      (v226)(v209, v221, v211);
      (*(v102 + 56))(v115, 0, 1, v117);
      v119 = type metadata accessor for Record.ID(0);
      v120 = *(v119 + 48);
      v121 = *(v119 + 52);
      v122 = swift_allocObject();
      *(v122 + 2) = v113;
      *(v122 + 3) = v112;
      *(v122 + 4) = v114;
      sub_1DEEAB218(v115, &v122[OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership], type metadata accessor for Record.ID.Ownership);
      v123 = *(v116 + *(v220 + 20) + 32);

      if (v123 > 0xD)
      {

        v126 = v227;
        v135 = *(v227 + 8);
        if (!v135)
        {
LABEL_38:
          sub_1DEE29594((v229 + 24), aBlock);
          v160 = v233;
          v161 = v234;
          __swift_project_boxed_opaque_existential_1(aBlock, v233);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
          v162 = swift_allocObject();
          *(v162 + 16) = xmmword_1DEF91010;
          *(v162 + 32) = v122;
          v163 = *(v161 + 2);
          v164 = *(v163 + 136);

          v164(v162, v160, v163);

          __swift_destroy_boxed_opaque_existential_1(aBlock);
          v165 = v231;
          Strong = swift_unknownObjectWeakLoadStrong();
          v51 = v230;
          v167 = v228;
          if (Strong)
          {
            v168 = *(v165 + 24);
            ObjectType = swift_getObjectType();
            v170 = *(v168 + 48);

            v170(v171, ObjectType, v168);
            swift_unknownObjectRelease();
          }

          goto LABEL_46;
        }
      }

      else
      {

        v124 = v206;
        v125 = v225;
        sub_1DEEAD7E0(v113, v112, v206);
        v126 = v227;
        if (v125)
        {

          v127 = v229;

          v128 = sub_1DEF8D4D8();
          v129 = sub_1DEF8DC98();

          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            aBlock[0] = v131;
            *v130 = 136446466;
            *(v130 + 4) = sub_1DEE12A5C(v127[66], v127[67], aBlock);
            *(v130 + 12) = 2082;
            v132 = *(v122 + 2);
            v133 = *(v122 + 3);

            v134 = sub_1DEE12A5C(v132, v133, aBlock);

            *(v130 + 14) = v134;
            _os_log_impl(&dword_1DEE0F000, v128, v129, "(%{public}s) Could not create internal ID from client defined ID: %{public}s", v130, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v131, -1, -1);
            MEMORY[0x1E12CCD70](v130, -1, -1);
          }

          goto LABEL_50;
        }

        v152 = sub_1DEF8D398();
        v154 = v153;
        (*(v210 + 8))(v124, v211);
        v155 = *(v122 + 4);
        v156 = v209;
        sub_1DEEACA70(&v122[OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership], v209, type metadata accessor for Record.ID.Ownership);
        v157 = *(v119 + 48);
        v158 = *(v119 + 52);
        v159 = swift_allocObject();
        *(v159 + 2) = v152;
        *(v159 + 3) = v154;
        *(v159 + 4) = v155;
        sub_1DEEAB218(v156, &v159[OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership], type metadata accessor for Record.ID.Ownership);

        v122 = v159;
        v135 = *(v126 + 8);
        if (!v135)
        {
          goto LABEL_38;
        }
      }

      v137 = *(v126 + 16);
      v136 = *(v126 + 24);
      if (*(v126 + 40))
      {
        v138 = v229;

        sub_1DEEAB070(v135, v137, v136);
        v139 = sub_1DEF8D4D8();
        v140 = sub_1DEF8DC98();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          aBlock[0] = v142;
          *v141 = 136446466;
          *(v141 + 4) = sub_1DEE12A5C(v138[66], v138[67], aBlock);
          *(v141 + 12) = 2082;

          v143 = Record.ID.description.getter();
          v145 = v144;

          v146 = sub_1DEE12A5C(v143, v145, aBlock);

          *(v141 + 14) = v146;
          v147 = "(%{public}s) Missing encoding version for recordID %{public}s";
LABEL_34:
          _os_log_impl(&dword_1DEE0F000, v139, v140, v147, v141, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v142, -1, -1);
          MEMORY[0x1E12CCD70](v141, -1, -1);
          sub_1DEE1BFA0(v137, v136);

          sub_1DEE273A0(v221, type metadata accessor for PairingRelationship);
          sub_1DEE273A0(v228, type metadata accessor for SessionManager.Session);
LABEL_51:

          goto LABEL_52;
        }

        goto LABEL_49;
      }

      v148 = *(v126 + 32);
      if (v123 > 0xD)
      {
        v150 = *(v135 + 24);
        v151 = v211;
        if (!v150)
        {
          v196 = v229;

          sub_1DEEAB070(v135, v137, v136);
          v139 = sub_1DEF8D4D8();
          v140 = sub_1DEF8DC98();

          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            aBlock[0] = v142;
            *v141 = 136446466;
            *(v141 + 4) = sub_1DEE12A5C(v196[66], v196[67], aBlock);
            *(v141 + 12) = 2082;

            v197 = Record.ID.description.getter();
            v199 = v198;

            v200 = sub_1DEE12A5C(v197, v199, aBlock);

            *(v141 + 14) = v200;
            v147 = "(%{public}s) Missing client defined ID for recordID %{public}s";
            goto LABEL_34;
          }

LABEL_49:

          sub_1DEE1BFA0(v137, v136);

LABEL_50:
          sub_1DEE273A0(v221, type metadata accessor for PairingRelationship);
          sub_1DEE273A0(v228, type metadata accessor for SessionManager.Session);
          goto LABEL_51;
        }

        v223 = *(v126 + 32);
        v225 = v137;
        v227 = v136;
        v149 = v122;
      }

      else
      {
        v223 = *(v126 + 32);
        v225 = v137;
        v227 = v136;
        v149 = v122;
        v150 = *(v135 + 16);
        v151 = v211;
      }

      v173 = *(v150 + 16);
      v172 = *(v150 + 24);

      v174 = v208;
      v118(v208, v135 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v151);
      v224 = *(v135 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
      v175 = v224;
      v176 = v204;
      sub_1DEE17214(v135 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v204, &qword_1ECDE4DC0, &qword_1DEF91640);
      v177 = *(v135 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
      v178 = type metadata accessor for RecordMetadata();
      v179 = *(v178 + 48);
      v180 = *(v178 + 52);
      v181 = swift_allocObject();
      *(v181 + 16) = v149;
      type metadata accessor for RecordMetadata.ClientDefinedID();
      v182 = swift_allocObject();
      *(v182 + 16) = v173;
      *(v182 + 24) = v172;
      *(v181 + 24) = v182;
      v219(v181 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v174, v151);
      *(v181 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v175;
      sub_1DEE1BA88(v176, v181 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, &qword_1ECDE4DC0, &qword_1DEF91640);
      *(v181 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v177;
      v183 = v202;
      sub_1DEE17214(v230, v202, &qword_1ECDE4890, &qword_1DEF90990);
      v184 = v203;
      v185 = (v203 + *(v205 + 20));
      v186 = type metadata accessor for Record.Value(0);
      v187 = *(v186 + 20);
      v188 = sub_1DEF8D1E8();
      (*(*(v188 - 8) + 56))(v185 + v187, 1, 1, v188);
      *(v185 + *(v186 + 24)) = v223;
      v189 = v225;
      v190 = v227;
      *v185 = v225;
      v185[1] = v190;
      v226 = v149;

      sub_1DEEAB070(v135, v189, v190);

      sub_1DEE29D60(v183, v185 + v187, &qword_1ECDE4890, &qword_1DEF90990);
      *v184 = v181;
      sub_1DEE29594((v229 + 24), aBlock);
      v191 = v234;
      __swift_project_boxed_opaque_existential_1(aBlock, v233);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
      v192 = swift_allocObject();
      *(v192 + 16) = xmmword_1DEF91010;
      *(v192 + 32) = v181;
      (*(*(v191 + 2) + 128))();

      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v193 = v231;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v194 = *(v193 + 24);
        v195 = swift_getObjectType();
        (*(v194 + 40))(v184, v221, v195, v194);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v167 = v228;
      sub_1DEE273A0(v184, type metadata accessor for Record);
      v51 = v230;
LABEL_46:
      sub_1DEE56F88();

      sub_1DEE273A0(v221, type metadata accessor for PairingRelationship);
      sub_1DEE273A0(v167, type metadata accessor for SessionManager.Session);

      return sub_1DEE8DED0(v51);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE745EC(char a1)
{
  if (a1)
  {
    v2 = sub_1DEF3805C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_1DEF3805C((v4 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    v6 = &v2[16 * v5];
    *(v6 + 4) = 0xD00000000000001BLL;
    *(v6 + 5) = 0x80000001DEF9C190;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1DEF3805C(0, *(v2 + 2) + 1, 1, v2);
      }

      v11 = *(v2 + 2);
      v10 = *(v2 + 3);
      if (v11 >= v10 >> 1)
      {
        v2 = sub_1DEF3805C((v10 > 1), v11 + 1, 1, v2);
      }

      *(v2 + 2) = v11 + 1;
      v12 = &v2[16 * v11];
      *(v12 + 4) = 0xD000000000000016;
      *(v12 + 5) = 0x80000001DEF9C150;
      goto LABEL_19;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DEF3805C(0, *(v2 + 2) + 1, 1, v2);
  }

  v8 = *(v2 + 2);
  v7 = *(v2 + 3);
  if (v8 >= v7 >> 1)
  {
    v2 = sub_1DEF3805C((v7 > 1), v8 + 1, 1, v2);
  }

  *(v2 + 2) = v8 + 1;
  v9 = &v2[16 * v8];
  *(v9 + 4) = 0xD00000000000001DLL;
  *(v9 + 5) = 0x80000001DEF9C170;
  if ((a1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (*(v2 + 2))
  {
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
    sub_1DEE1B548(&unk_1ECDE2C40, &qword_1ECDE3C90, &unk_1DEF91590);
    v3 = sub_1DEF8D8D8();

    return v3;
  }

  return 1701736302;
}

BOOL sub_1DEE7489C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1DEE748CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1DEE748F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1DEE749D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DEE74A00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1DEEA29AC(a1);

  *a2 = v3;
  return result;
}

void sub_1DEE74A40(char **a1, uint64_t a2)
{
  v134 = a2;
  v163 = sub_1DEF8D3F8();
  v155 = *(v163 - 8);
  v4 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v160 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1DEF8D378();
  v162 = *(v144 - 8);
  v6 = v162[8];
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v142 = &v133 - v9;
  v164 = type metadata accessor for PairingRelationship();
  v161 = *(v164 - 1);
  v10 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v138 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v133 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v133 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v133 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v159 = &v133 - v22;
  v23 = sub_1DEF8D788();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = (&v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *a1;
  v29 = a1[1];
  v31 = *(a1 + 16);
  v156 = v2;
  v32 = *(v2 + 232);
  *v28 = v32;
  v33 = v24[13];
  v151 = *MEMORY[0x1E69E8020];
  v150 = v24 + 13;
  v149 = v33;
  v33(v28, v26);
  v148 = v32;
  LOBYTE(v32) = sub_1DEF8D7B8();
  v34 = v24[1];
  v152 = v28;
  v154 = v23;
  v153 = v24 + 1;
  v147 = v34;
  v34(v28, v23);
  if ((v32 & 1) == 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v31)
  {
    if (qword_1ECDE2E58 == -1)
    {
LABEL_4:
      v35 = sub_1DEF8D508();
      __swift_project_value_buffer(v35, qword_1ECDF6028);
      v36 = v30;
      v37 = sub_1DEF8D4D8();
      v38 = sub_1DEF8DC98();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138543362;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v41;
        *v40 = v41;
        _os_log_impl(&dword_1DEE0F000, v37, v38, "Device reconciliation failed: %{public}@", v39, 0xCu);
        sub_1DEE171B4(v40, &unk_1ECDE4880, &qword_1DEF93420);
        MEMORY[0x1E12CCD70](v40, -1, -1);
        goto LABEL_6;
      }

      sub_1DEEA8A18(v30, v29, 1);
      return;
    }

LABEL_55:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v42 = sub_1DEF8D508();
  v43 = __swift_project_value_buffer(v42, qword_1ECDF6028);

  v44 = v29;

  v45 = sub_1DEF8D4D8();
  v46 = sub_1DEF8DCB8();
  sub_1DEEA8A18(v30, v29, 0);
  v47 = os_log_type_enabled(v45, v46);
  v141 = v43;
  v136 = v14;
  v137 = v20;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v166 = v49;
    *v48 = 136446722;
    v50 = v30;
    v51 = v164;
    v52 = MEMORY[0x1E12CB290](v50, v164);
    v54 = v17;
    v55 = sub_1DEE12A5C(v52, v53, &v166);

    *(v48 + 4) = v55;
    *(v48 + 12) = 2082;
    v56 = MEMORY[0x1E12CB290](v29, v51);
    v58 = sub_1DEE12A5C(v56, v57, &v166);

    *(v48 + 14) = v58;
    *(v48 + 22) = 2082;
    v59 = sub_1DEE745EC(v134);
    v61 = sub_1DEE12A5C(v59, v60, &v166);
    v44 = v29;

    *(v48 + 24) = v61;
    v17 = v54;
    v20 = v137;
    _os_log_impl(&dword_1DEE0F000, v45, v46, "Reconciling devices. Known: %{public}s; unknown: %{public}s; options: %{public}s", v48, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v49, -1, -1);
    MEMORY[0x1E12CCD70](v48, -1, -1);
  }

  v30 = v159;
  v62 = *(v44 + 2);
  if (v62)
  {
    v29 = v161;
    v63 = v44 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    swift_beginAccess();
    v157 = *(v29 + 9);
    v158 = v30 + 8;
    v140 = (v162 + 1);
    v146 = (v155 + 16);
    v145 = v155 + 32;
    v64 = MEMORY[0x1E69E7CC0];
    *&v65 = 136446466;
    v139 = v65;
    v135 = v17;
    while (1)
    {
      v161 = v62;
      v162 = v64;
      sub_1DEEACA70(v63, v30, type metadata accessor for PairingRelationship);
      if (*&v158[v164[8]] < 4uLL)
      {
        goto LABEL_19;
      }

      v76 = &v30[v164[6]];
      v77 = v142;
      sub_1DEF8D2E8();
      v78 = v143;
      sub_1DEF8D348();
      LOBYTE(v76) = sub_1DEF8D308();
      v29 = v140;
      v79 = *v140;
      v80 = v78;
      v81 = v144;
      (*v140)(v80, v144);
      v79(v77, v81);
      if (v76)
      {
LABEL_19:
        sub_1DEEACA70(v30, v20, type metadata accessor for PairingRelationship);
        sub_1DEEACA70(v30, v17, type metadata accessor for PairingRelationship);
        v82 = sub_1DEF8D4D8();
        v83 = sub_1DEF8DCB8();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v166 = v85;
          *v84 = v139;
          v86 = &v20[v164[5]];
          v87 = *v86;
          v88 = v86[1];

          v29 = type metadata accessor for PairingRelationship;
          sub_1DEE273A0(v20, type metadata accessor for PairingRelationship);
          v89 = sub_1DEE12A5C(v87, v88, &v166);

          *(v84 + 4) = v89;
          *(v84 + 12) = 2082;
          sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
          v90 = sub_1DEF8E2E8();
          v92 = v91;
          sub_1DEE273A0(v17, type metadata accessor for PairingRelationship);
          v93 = sub_1DEE12A5C(v90, v92, &v166);

          *(v84 + 14) = v93;
          _os_log_impl(&dword_1DEE0F000, v82, v83, "Forgetting device: %{public}s (relationship: %{public}s) - Device no longer known", v84, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v85, -1, -1);
          MEMORY[0x1E12CCD70](v84, -1, -1);
        }

        else
        {

          sub_1DEE273A0(v17, type metadata accessor for PairingRelationship);
          sub_1DEE273A0(v20, type metadata accessor for PairingRelationship);
        }

        v94 = v152;
        v95 = v148;
        *v152 = v148;
        v96 = v154;
        v149(v94, v151, v154);
        v97 = v95;
        LOBYTE(v95) = sub_1DEF8D7B8();
        v147(v94, v96);
        v30 = v159;
        v64 = v162;
        if ((v95 & 1) == 0)
        {
          __break(1u);
          goto LABEL_54;
        }

        v98 = v156;
        sub_1DEE67760(v159);
        sub_1DEE29594(v98 + 192, &v166);
        v99 = v167;
        v100 = v168;
        __swift_project_boxed_opaque_existential_1(&v166, v167);
        (*(*(v100 + 16) + 120))(v30, v99);
        __swift_destroy_boxed_opaque_existential_1(&v166);
        (*v146)(v160, v30, v163);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_1DEF38168(0, v64[2] + 1, 1, v64);
        }

        v102 = v64[2];
        v101 = v64[3];
        if (v102 >= v101 >> 1)
        {
          v64 = sub_1DEF38168(v101 > 1, v102 + 1, 1, v64);
        }

        v64[2] = v102 + 1;
        (*(v155 + 32))(v64 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v102, v160, v163);
      }

      else
      {
        v103 = v136;
        sub_1DEEACA70(v30, v136, type metadata accessor for PairingRelationship);
        v104 = v138;
        sub_1DEEACA70(v30, v138, type metadata accessor for PairingRelationship);
        v105 = sub_1DEF8D4D8();
        v106 = sub_1DEF8DCB8();
        if (os_log_type_enabled(v105, v106))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v166 = v67;
          *v66 = v139;
          v68 = (v103 + v164[5]);
          v69 = *v68;
          v70 = v68[1];

          v29 = type metadata accessor for PairingRelationship;
          sub_1DEE273A0(v103, type metadata accessor for PairingRelationship);
          v71 = sub_1DEE12A5C(v69, v70, &v166);

          *(v66 + 4) = v71;
          *(v66 + 12) = 2082;
          sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
          v72 = sub_1DEF8E2E8();
          v74 = v73;
          sub_1DEE273A0(v104, type metadata accessor for PairingRelationship);
          v75 = sub_1DEE12A5C(v72, v74, &v166);

          *(v66 + 14) = v75;
          _os_log_impl(&dword_1DEE0F000, v105, v106, "Temporarily preserving device: %{public}s (relationship: %{public}s) - Device no longer known but within grace period", v66, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v67, -1, -1);
          MEMORY[0x1E12CCD70](v66, -1, -1);
        }

        else
        {

          sub_1DEE273A0(v104, type metadata accessor for PairingRelationship);
          sub_1DEE273A0(v103, type metadata accessor for PairingRelationship);
        }

        v17 = v135;
        v20 = v137;
        v30 = v159;
        v64 = v162;
      }

      sub_1DEE273A0(v30, type metadata accessor for PairingRelationship);
      v63 += v157;
      v62 = v161 - 1;
      if (v161 == 1)
      {
        goto LABEL_32;
      }
    }
  }

  v64 = MEMORY[0x1E69E7CC0];
LABEL_32:
  if (v64[2])
  {
    if (v134)
    {
      v110 = v156;
      v111 = *(v156 + 144);
      swift_beginAccess();
      sub_1DEE29594(v110 + 192, &v166);
      v113 = v167;
      v112 = v168;
      __swift_project_boxed_opaque_existential_1(&v166, v167);
      v165 = (*(*(*(v112 + 8) + 8) + 32))(v113);
      sub_1DEF8D588();

      __swift_destroy_boxed_opaque_existential_1(&v166);
    }

    else
    {
      v107 = sub_1DEF8D4D8();
      v108 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_1DEE0F000, v107, v108, "Not publishing new pairing relationships after reconciliation as options missing 'publishPairingRelationships'", v109, 2u);
        MEMORY[0x1E12CCD70](v109, -1, -1);
      }
    }

    if ((v134 & 2) != 0)
    {
      v117 = *(v156 + 160);
      v166 = v64;

      sub_1DEF8D588();
    }

    else
    {
      v114 = sub_1DEF8D4D8();
      v115 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_1DEE0F000, v114, v115, "Not publishing forgotten relationships after reconciliation as options missing 'publishForgottenRelationships'", v116, 2u);
        MEMORY[0x1E12CCD70](v116, -1, -1);
      }
    }
  }

  if (sub_1DEE75F2C())
  {
  }

  else
  {
    v118 = v156;
    swift_beginAccess();
    sub_1DEE29594(v118 + 344, &v166);
    v119 = v167;
    v120 = v168;
    __swift_project_boxed_opaque_existential_1(&v166, v167);
    LOBYTE(v119) = (*(v120 + 16))(v119, v120);
    __swift_destroy_boxed_opaque_existential_1(&v166);

    if (v119)
    {
      v37 = sub_1DEF8D4D8();
      v121 = sub_1DEF8DCB8();
      v122 = os_log_type_enabled(v37, v121);
      if ((v134 & 4) == 0)
      {
        if (!v122)
        {
          goto LABEL_7;
        }

        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DEE0F000, v37, v121, "Not rebroadcasting for auto-pair after reconciliation as options missing 'readvertiseIfNecessary'", v39, 2u);
LABEL_6:
        MEMORY[0x1E12CCD70](v39, -1, -1);
LABEL_7:

        return;
      }

      if (v122)
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_1DEE0F000, v37, v121, "Rebroadcasting for auto-pair because devices changed and we are not currently paired.", v123, 2u);
        MEMORY[0x1E12CCD70](v123, -1, -1);
      }

      v124 = v156;
      swift_beginAccess();
      v125 = *(v124 + 368);
      v126 = *(v124 + 376);
      __swift_mutable_project_boxed_opaque_existential_1(v124 + 344, v125);
      v127 = (*(v126 + 32))(&v166, v125, v126);
      *v128 = !*v128;
      v127(&v166, 0);
      v129 = *(v124 + 368);
      v130 = *(v124 + 376);
      __swift_mutable_project_boxed_opaque_existential_1(v124 + 344, v129);
      v131 = (*(v130 + 32))(&v166, v129, v130);
      *v132 = !*v132;
      v131(&v166, 0);
      swift_endAccess();
    }
  }
}