void *sub_10005CA54(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100052CBC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
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
    v16 = &_swiftEmptyArrayStorage;
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
    sub_100052CBC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_10005CB8C(char *a1, int64_t a2, char a3)
{
  result = sub_10005CBAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10005CBAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100052CBC(&qword_10010DEB8, &qword_1000D2080);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10005CCBC(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v119 = a4;
  v124 = a3;
  v120 = a2;
  v123 = sub_1000C9684();
  v122 = *(v123 - 8);
  v4 = *(v122 + 64);
  __chkstk_darwin(v123);
  v121 = &v118[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = sub_1000C96D4();
  v126 = *(v127 - 8);
  v6 = *(v126 + 64);
  __chkstk_darwin(v127);
  v125 = &v118[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v154 = sub_1000C9434();
  v8 = *(v154 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v154);
  v153 = &v118[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v157 = sub_1000C9A24();
  v11 = *(v157 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v157);
  v15 = &v118[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v118[-v16];
  v135 = sub_1000C9A54();
  v18 = *(v135 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v135);
  v137 = &v118[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1000C9824();
  v133 = *(result + 16);
  if (v133)
  {
    v146 = v15;
    v22 = 0;
    v131 = result + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v130 = v18 + 16;
    v151 = (v8 + 16);
    v152 = v11 + 16;
    v150 = (v8 + 8);
    v149 = (v11 + 8);
    v132 = v18;
    v128 = (v18 + 8);
    v23 = &_swiftEmptyArrayStorage;
    v139 = v11;
    v145 = v17;
    v129 = result;
    while (v22 < *(result + 16))
    {
      v136 = v23;
      v24 = *(v132 + 72);
      v134 = v22;
      (*(v132 + 16))(v137, v131 + v24 * v22, v135);
      v164 = &_swiftEmptyArrayStorage;
      v25 = sub_1000C9A44();
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v144 = v25;
        v28 = v25 + v27;
        v147 = *(v11 + 72);
        v148 = *(v11 + 16);
        do
        {
          v29 = v28;
          v148(v17);
          time.value = sub_1000C9A14();
          *&time.timescale = v30;
          v162 = 9404642;
          v163 = 0xA300000000000000;
          v160 = 0;
          v161 = 0xE000000000000000;
          sub_10005E8CC();
          v31 = sub_1000C9D94();
          v33 = v32;

          time.value = v31;
          *&time.timescale = v33;
          v34 = sub_10005F248();
          v36 = v153;
          v35 = v154;
          (*v151)(v153, v34, v154);
          sub_1000C9D84();
          (*v150)(v36, v35);

          time.value = sub_1000C9A04();
          time.timescale = v37;
          time.flags = v38;
          time.epoch = v39;
          Seconds = CMTimeGetSeconds(&time);
          time.value = sub_1000C99F4();
          time.timescale = v41;
          time.flags = v42;
          time.epoch = v43;
          v44 = CMTimeGetSeconds(&time);
          time.value = sub_1000C99A4();
          time.timescale = v45;
          time.flags = v46;
          time.epoch = v47;
          v48 = CMTimeGetSeconds(&time);
          sub_1000C9994();
          v50 = v49;
          LOBYTE(v35) = sub_1000C99B4();
          LODWORD(v156) = sub_1000C99D4();
          sub_1000C99C4();
          sub_1000C99E4();
          (*v149)(v17, v157);
          v155 = objc_allocWithZone(SRDTranscriptionToken);
          v51 = sub_1000C9AF4();

          v52 = sub_1000C9AF4();

          v53 = sub_1000C9AF4();

          v54 = [v155 initWithTokenName:v51 start:v35 & 1 end:v156 & 1 silenceStart:v52 confidence:v53 hasSpaceAfter:Seconds hasSpaceBefore:v44 phoneSequence:v48 ipaPhoneSequence:v50];

          v55 = v54;
          sub_1000C9B54();
          if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v56 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1000C9B94();
          }

          sub_1000C9BB4();

          v28 = v29 + v147;
          --v26;
          v17 = v145;
        }

        while (v26);
        v57 = v164;

        v11 = v139;
      }

      else
      {

        v57 = &_swiftEmptyArrayStorage;
      }

      v58 = sub_10005CA54(0, 1, 1, &_swiftEmptyArrayStorage, &qword_10010DEC8, &qword_1000D1D30, &qword_10010DEA8, &qword_1000D1D28);
      v60 = v58[2];
      v59 = v58[3];
      v61 = v146;
      if (v60 >= v59 >> 1)
      {
        v58 = sub_10005CA54((v59 > 1), v60 + 1, 1, v58, &qword_10010DEC8, &qword_1000D1D30, &qword_10010DEA8, &qword_1000D1D28);
      }

      v58[2] = v60 + 1;
      v58[v60 + 4] = v57;
      result = sub_1000C9A34();
      v141 = *(result + 16);
      if (v141)
      {
        v62 = 0;
        v140 = result + 32;
        v138 = result;
        while (v62 < *(result + 16))
        {
          v63 = *(v140 + 8 * v62);
          v158 = &_swiftEmptyArrayStorage;
          v64 = *(v63 + 16);
          if (v64)
          {
            v143 = v62;
            v144 = v58;
            v65 = (v63 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
            v147 = *(v11 + 72);
            v148 = *(v11 + 16);
            v142 = v63;

            do
            {
              v156 = v64;
              (v148)(v61, v65, v157);
              time.value = sub_1000C9A14();
              *&time.timescale = v66;
              v162 = 9404642;
              v163 = 0xA300000000000000;
              v160 = 0;
              v161 = 0xE000000000000000;
              sub_10005E8CC();
              v67 = sub_1000C9D94();
              v69 = v68;

              time.value = v67;
              *&time.timescale = v69;
              v70 = sub_10005F248();
              v72 = v153;
              v71 = v154;
              (*v151)(v153, v70, v154);
              sub_1000C9D84();
              (*v150)(v72, v71);

              time.value = sub_1000C9A04();
              time.timescale = v73;
              time.flags = v74;
              time.epoch = v75;
              v76 = CMTimeGetSeconds(&time);
              time.value = sub_1000C99F4();
              time.timescale = v77;
              time.flags = v78;
              time.epoch = v79;
              v80 = CMTimeGetSeconds(&time);
              time.value = sub_1000C99A4();
              time.timescale = v81;
              time.flags = v82;
              time.epoch = v83;
              v84 = CMTimeGetSeconds(&time);
              v155 = v65;
              sub_1000C9994();
              v86 = v85;
              v87 = sub_1000C99B4();
              LOBYTE(v69) = sub_1000C99D4();
              sub_1000C99C4();
              sub_1000C99E4();
              (*v149)(v61, v157);
              v88 = objc_allocWithZone(SRDTranscriptionToken);
              v89 = sub_1000C9AF4();

              v90 = sub_1000C9AF4();

              v91 = sub_1000C9AF4();

              v92 = [v88 initWithTokenName:v89 start:v87 & 1 end:v69 & 1 silenceStart:v90 confidence:v91 hasSpaceAfter:v76 hasSpaceBefore:v80 phoneSequence:v84 ipaPhoneSequence:v86];

              v93 = v92;
              sub_1000C9B54();
              if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v94 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1000C9B94();
              }

              sub_1000C9BB4();

              v65 = &v155[v147];
              v64 = v156 - 1;
              v61 = v146;
            }

            while (v156 != 1);
            v95 = v158;

            v11 = v139;
            v17 = v145;
            v58 = v144;
            result = v138;
            v62 = v143;
          }

          else
          {
            v95 = &_swiftEmptyArrayStorage;
          }

          v97 = v58[2];
          v96 = v58[3];
          if (v97 >= v96 >> 1)
          {
            v98 = result;
            v58 = sub_10005CA54((v96 > 1), v97 + 1, 1, v58, &qword_10010DEC8, &qword_1000D1D30, &qword_10010DEA8, &qword_1000D1D28);
            result = v98;
          }

          ++v62;
          v58[2] = v97 + 1;
          v58[v97 + 4] = v95;
          if (v62 == v141)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        break;
      }

LABEL_26:

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v99 = v136;
      }

      else
      {
        v99 = sub_10005CA54(0, v136[2] + 1, 1, v136, &unk_10010DED0, &qword_1000D1D38, &qword_10010DEA0, &qword_1000D1D20);
      }

      v101 = v99[2];
      v100 = v99[3];
      if (v101 >= v100 >> 1)
      {
        v99 = sub_10005CA54((v100 > 1), v101 + 1, 1, v99, &unk_10010DED0, &qword_1000D1D38, &qword_10010DEA0, &qword_1000D1D20);
      }

      v102 = v134 + 1;
      (*v128)(v137, v135);
      v23 = v99;
      v99[2] = v101 + 1;
      v22 = v102;
      v99[v101 + 4] = v58;
      result = v129;
      if (v102 == v133)
      {

        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {

    v99 = &_swiftEmptyArrayStorage;
LABEL_34:
    v103 = v125;
    v104 = v122;
    v105 = v121;
    v106 = v123;
    (*(v122 + 104))(v121, enum case for VCLogging.Category.ASR(_:), v123);
    sub_1000C9674();
    (*(v104 + 8))(v105, v106);
    v107 = v124;

    v108 = sub_1000C96A4();
    v109 = sub_1000C9CC4();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      time.value = swift_slowAlloc();
      *v110 = 136315651;
      if (v119)
      {
        v111 = 0x526C616974726170;
      }

      else
      {
        v111 = 0x7365526C616E6966;
      }

      if (v119)
      {
        v112 = 0xED0000746C757365;
      }

      else
      {
        v112 = 0xEB00000000746C75;
      }

      v113 = sub_100050ED0(v111, v112, &time.value);

      *(v110 + 4) = v113;
      *(v110 + 12) = 2080;
      *(v110 + 14) = sub_100050ED0(v120, v107, &time.value);
      *(v110 + 22) = 2085;

      sub_100052CBC(&qword_10010DEA0, &qword_1000D1D20);
      v114 = sub_1000C9B84();
      v116 = v115;

      v117 = sub_100050ED0(v114, v116, &time.value);

      *(v110 + 24) = v117;
      _os_log_impl(&_mh_execute_header, v108, v109, "SpeechAnalyzer: %s %s token sausage %{sensitive}s", v110, 0x20u);
      swift_arrayDestroy();
    }

    (*(v126 + 8))(v103, v127);
    return v99;
  }

  return result;
}

uint64_t sub_10005DCB4()
{
  v59 = sub_1000C9434();
  v0 = *(v59 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v59);
  v58 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000C9A24();
  v3 = *(v65 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v65);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000C9804();
  v8 = result;
  v50 = *(result + 16);
  if (v50)
  {
    v62 = v6;
    v9 = 0;
    v49 = result + 32;
    v57 = v3 + 16;
    v56 = (v0 + 16);
    v55 = (v0 + 8);
    v54 = (v3 + 8);
    v10 = &_swiftEmptyArrayStorage;
    v48 = v3;
    v47 = result;
    while (v9 < *(v8 + 16))
    {
      v11 = *(v49 + 8 * v9);
      v71 = &_swiftEmptyArrayStorage;
      v12 = *(v11 + 16);
      if (v12)
      {
        v52 = v10;
        v53 = v9;
        v13 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v14 = *(v3 + 16);
        v60 = *(v3 + 72);
        v61 = v14;
        v51 = v11;

        v15 = v62;
        do
        {
          v64 = v12;
          v61(v15, v13, v65);
          time.value = sub_1000C9A14();
          *&time.timescale = v16;
          v69 = 9404642;
          v70 = 0xA300000000000000;
          v67 = 0;
          v68 = 0xE000000000000000;
          sub_10005E8CC();
          v17 = sub_1000C9D94();
          v19 = v18;

          time.value = v17;
          *&time.timescale = v19;
          v20 = sub_10005F248();
          v22 = v58;
          v21 = v59;
          (*v56)(v58, v20, v59);
          sub_1000C9D84();
          (*v55)(v22, v21);

          time.value = sub_1000C9A04();
          time.timescale = v23;
          time.flags = v24;
          time.epoch = v25;
          Seconds = CMTimeGetSeconds(&time);
          time.value = sub_1000C99F4();
          time.timescale = v27;
          time.flags = v28;
          time.epoch = v29;
          v30 = CMTimeGetSeconds(&time);
          time.value = sub_1000C99A4();
          time.timescale = v31;
          time.flags = v32;
          time.epoch = v33;
          v34 = CMTimeGetSeconds(&time);
          sub_1000C9994();
          v36 = v35;
          v63 = sub_1000C99B4();
          LOBYTE(v21) = sub_1000C99D4();
          sub_1000C99C4();
          sub_1000C99E4();
          (*v54)(v15, v65);
          v37 = objc_allocWithZone(SRDTranscriptionToken);
          v38 = sub_1000C9AF4();

          v39 = sub_1000C9AF4();

          v40 = sub_1000C9AF4();

          v41 = [v37 initWithTokenName:v38 start:v63 & 1 end:v21 & 1 silenceStart:v39 confidence:v40 hasSpaceAfter:Seconds hasSpaceBefore:v30 phoneSequence:v34 ipaPhoneSequence:v36];

          v42 = v41;
          sub_1000C9B54();
          if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v43 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1000C9B94();
          }

          sub_1000C9BB4();

          v13 += v60;
          v12 = v64 - 1;
          v15 = v62;
        }

        while (v64 != 1);
        v44 = v71;

        v3 = v48;
        v8 = v47;
        v9 = v53;
        v10 = v52;
      }

      else
      {
        v44 = &_swiftEmptyArrayStorage;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10005CA54(0, v10[2] + 1, 1, v10, &qword_10010DEC8, &qword_1000D1D30, &qword_10010DEA8, &qword_1000D1D28);
        v10 = result;
      }

      v46 = v10[2];
      v45 = v10[3];
      if (v46 >= v45 >> 1)
      {
        result = sub_10005CA54((v45 > 1), v46 + 1, 1, v10, &qword_10010DEC8, &qword_1000D1D30, &qword_10010DEA8, &qword_1000D1D28);
        v10 = result;
      }

      ++v9;
      v10[2] = v46 + 1;
      v10[v46 + 4] = v44;
      if (v9 == v50)
      {

        return v10;
      }
    }

    __break(1u);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10005E2F8(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v55 = a2;
  v6 = sub_1000C9684();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  __chkstk_darwin(v6);
  v56 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C96D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000C9454();
  v14 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v65 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000C9464();
  v16 = *(v64 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v64);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C97F4();
  v21 = *(v20 + 16);
  v59 = v13;
  v60 = v9;
  if (v21)
  {
    v52 = a4;
    v53 = a3;
    v54 = v10;
    v67 = _swiftEmptyArrayStorage;
    v22 = v20;
    sub_10005CB8C(0, v21, 0);
    v23 = v67;
    v25 = *(v16 + 16);
    v24 = v16 + 16;
    v26 = *(v24 + 64);
    v51[1] = v22;
    v27 = v22 + ((v26 + 32) & ~v26);
    v61 = *(v24 + 56);
    v62 = v25;
    v63 = v24;
    v28 = (v24 - 8);
    do
    {
      v29 = v64;
      v62(v19, v27, v64);
      sub_1000C9444();
      sub_10005E874();
      v30 = sub_1000C9B44();
      v32 = v31;
      (*v28)(v19, v29);
      v67 = v23;
      v34 = v23[2];
      v33 = v23[3];
      if (v34 >= v33 >> 1)
      {
        sub_10005CB8C((v33 > 1), v34 + 1, 1);
        v23 = v67;
      }

      v23[2] = v34 + 1;
      v35 = &v23[2 * v34];
      v35[4] = v30;
      v35[5] = v32;
      v27 += v61;
      --v21;
    }

    while (v21);

    v13 = v59;
    v9 = v60;
    a3 = v53;
    v10 = v54;
    LOBYTE(a4) = v52;
    if (v23[2])
    {
      goto LABEL_7;
    }
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_7:
      v36 = v23[4];
      v37 = v23[5];

      goto LABEL_10;
    }
  }

  v36 = 0;
  v37 = 0xE000000000000000;
LABEL_10:

  v39 = v56;
  v38 = v57;
  v40 = v58;
  (*(v57 + 104))(v56, enum case for VCLogging.Category.ASR(_:), v58);
  sub_1000C9674();
  (*(v38 + 8))(v39, v40);

  v41 = sub_1000C96A4();
  v42 = sub_1000C9CC4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v43 = 136315651;
    v44 = (a4 & 1) == 0;
    if (a4)
    {
      v45 = 0x526C616974726170;
    }

    else
    {
      v45 = 0x7365526C616E6966;
    }

    v46 = a3;
    if (v44)
    {
      v47 = 0xEB00000000746C75;
    }

    else
    {
      v47 = 0xED0000746C757365;
    }

    v48 = v36;
    v49 = sub_100050ED0(v45, v47, &v67);

    *(v43 + 4) = v49;
    v36 = v48;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_100050ED0(v55, v46, &v67);
    *(v43 + 22) = 2085;
    *(v43 + 24) = sub_100050ED0(v48, v37, &v67);
    _os_log_impl(&_mh_execute_header, v41, v42, "SpeechAnalyzer: %s %s firstBestResult %{sensitive}s", v43, 0x20u);
    swift_arrayDestroy();

    (*(v10 + 8))(v59, v60);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  return v36;
}

unint64_t sub_10005E874()
{
  result = qword_10010DEB0;
  if (!qword_10010DEB0)
  {
    sub_1000C9454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010DEB0);
  }

  return result;
}

unint64_t sub_10005E8CC()
{
  result = qword_10010DEC0;
  if (!qword_10010DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010DEC0);
  }

  return result;
}

uint64_t variable initialization expression of RDServiceClientConnection._logger()
{
  v0 = sub_10005F190();
  v1 = *v0;
  v2 = v0[1];

  return sub_1000C96B4();
}

id sub_10005E9D0(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_10005EBE0(a1);

  return v4;
}

void sub_10005EA10(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id RDServiceClientConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDServiceClientConnection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10005EBE0(void *a1)
{
  v3 = sub_1000C96D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection__logger;
  v8 = sub_10005F190();
  v9 = *v8;
  v10 = v8[1];

  sub_1000C96B4();
  *&v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_connection] = a1;
  (*(v4 + 16))(v6, &v1[v7], v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v11, v6, v3);
  *(v13 + v12) = a1;
  v26 = sub_10005F020;
  v27 = v13;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v24 = sub_10005EA10;
  v25 = &unk_100100AA0;
  v14 = _Block_copy(&aBlock);
  v15 = a1;

  v16 = [v15 remoteObjectProxyWithErrorHandler:v14];
  _Block_release(v14);
  sub_1000C9DA4();
  swift_unknownObjectRelease();
  sub_100053464(&aBlock, &v22);
  sub_100052CBC(&qword_10010DF08, qword_1000D1D80);
  swift_dynamicCast();
  *&v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_proxy] = v21;
  v17 = type metadata accessor for RDServiceClientConnection();
  v20.receiver = v1;
  v20.super_class = v17;
  return objc_msgSendSuper2(&v20, "init");
}

uint64_t type metadata accessor for RDServiceClientConnection()
{
  result = qword_10010E6D8;
  if (!qword_10010E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005EEDC()
{
  result = sub_1000C96D4();
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

uint64_t sub_10005EF84()
{
  v1 = sub_1000C96D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10005F020()
{
  v1 = *(sub_1000C96D4() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  oslog = sub_1000C96A4();
  v3 = sub_1000C9CE4();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v2;
    *v5 = v2;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Failed to get remoteObjectProxy for connection %@", v4, 0xCu);
    sub_100052E5C(v5);
  }
}

uint64_t sub_10005F178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10005F19C()
{
  result = [objc_allocWithZone(AVAudioFormat) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (result)
  {
    qword_10010E6F0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005F1F4()
{
  v0 = sub_1000C9434();
  sub_10006F460(v0, qword_10010E860);
  sub_10005F2AC(v0, qword_10010E860);
  return sub_1000C9424();
}

uint64_t sub_10005F248()
{
  if (qword_10010E6F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1000C9434();

  return sub_10005F2AC(v0, qword_10010E860);
}

uint64_t sub_10005F2AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10005F328(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_10005F378(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id sub_10005F3CC(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond28RDSAPISwiftTranscriberModule__transcriberModulePostITN] = a1;
  *&v5[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond28RDSAPISwiftTranscriberModule__transcriberModulePreITN] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id RDSAPISwiftTranscriberModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDSAPISwiftTranscriberModule();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10005F5C4(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_10005F620(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10005F6B8;
}

void sub_10005F6B8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_10005F764@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id RDSAPISwiftSpeechAnalyzer.__allocating_init(delegate:locale:highPriority:farField:supportEmojiRecognition:)(void *a1, void *a2, int a3, int a4, int a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_10006CC3C(a1, a2, a3, a4, a5);

  return v12;
}

id RDSAPISwiftSpeechAnalyzer.init(delegate:locale:highPriority:farField:supportEmojiRecognition:)(void *a1, void *a2, int a3, int a4, int a5)
{
  v7 = sub_10006CC3C(a1, a2, a3, a4, a5);

  return v7;
}

id RDSAPISwiftSpeechAnalyzer.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_1000C96D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, &v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__logger], v6);
  v11 = sub_1000C96A4();
  v12 = sub_1000C9CE4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "SpeechAnalyzer deinit", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  if (*&v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask])
  {
    v14 = *&v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask];

    sub_1000C9C74();
  }

  v15 = *&v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__speechAnalyzer];
  v16 = sub_1000C9C34();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;

  sub_100055D64(0, 0, v5, &unk_1000D1DE0, v17);

  v18 = type metadata accessor for RDSAPISwiftSpeechAnalyzer(0);
  v20.receiver = v1;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, "dealloc");
}

uint64_t sub_10005FBB8()
{
  v1 = async function pointer to SpeechAnalyzer.cancelAndFinishNow()[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100056BBC;

  return SpeechAnalyzer.cancelAndFinishNow()();
}

uint64_t sub_10005FEC8()
{
  v1 = v0[2];
  v0[3] = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__speechAnalyzer);
  v2 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext);
  v0[4] = v2;
  v3 = async function pointer to SpeechAnalyzer.setContext(_:)[1];

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_10005FF9C;

  return SpeechAnalyzer.setContext(_:)(v2);
}

uint64_t sub_10005FF9C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000600E0, 0, 0);
  }

  else
  {
    v5 = v3[3];
    v4 = v3[4];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1000600E0()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  swift_errorRetain();
  v5 = sub_1000C96A4();
  v6 = sub_1000C9CD4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not attach analysis context to SpeechAnalyzer = %@", v9, 0xCu);
    sub_100057214(v10, &unk_10010DF10, &unk_1000D1820);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000603D0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100060478;

  return RDSAPISwiftSpeechAnalyzer.attachAnalysisContext()();
}

uint64_t sub_100060478()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 16))(v3);
  _Block_release(*(v1 + 24));
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000605BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_1000605E0, 0, 0);
}

uint64_t sub_1000605E0()
{
  super_class = v0[3].super_class;
  if (*(super_class + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask))
  {
    v2 = *(super_class + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask);

    sub_1000C9C74();

    v3 = v0[3].super_class;
  }

  receiver = v0[3].receiver;
  v0[4].receiver = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__logger;
  v5 = receiver;
  v6 = sub_1000C96A4();
  v7 = sub_1000C9CE4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[3].receiver;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "SpeechAnalyzer previous recognition task cancelled for %@", v9, 0xCu);
    sub_100057214(v10, &unk_10010DF10, &unk_1000D1820);
  }

  v13 = v0[2].receiver;
  v12 = v0[2].super_class;

  v14 = type metadata accessor for RDSAPISwiftTranscriberModule();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond28RDSAPISwiftTranscriberModule__transcriberModulePostITN] = v13;
  *&v15[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond28RDSAPISwiftTranscriberModule__transcriberModulePreITN] = v12;
  v0[1].receiver = v15;
  v0[1].super_class = v14;

  v16 = objc_msgSendSuper2(v0 + 1, "init");
  v0[4].super_class = v16;
  v17 = v0[3].super_class;
  v18 = (*((swift_isaMask & *v16) + 0x60))();
  v0[5].receiver = v18;
  v19 = (*((swift_isaMask & *v16) + 0x78))();
  v0[5].super_class = v19;
  v0[6].receiver = *(v17 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__speechAnalyzer);
  sub_100052CBC(&qword_10010DF80, &qword_1000D1EB0);
  v20 = swift_allocObject();
  v0[6].super_class = v20;
  *(v20 + 16) = xmmword_1000D1DA0;
  v21 = sub_10006F3B0(&qword_10010DF88, &type metadata accessor for Transcriber);
  *(v20 + 32) = v18;
  *(v20 + 40) = v21;
  *(v20 + 48) = v19;
  *(v20 + 56) = v21;
  v22 = async function pointer to SpeechAnalyzer.setModules(_:)[1];

  v23 = swift_task_alloc();
  v0[7].receiver = v23;
  *v23 = v0;
  v23[1] = sub_100060914;

  return SpeechAnalyzer.setModules(_:)(v20);
}

uint64_t sub_100060914()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100060AA4;
  }

  else
  {
    v6 = *(v2 + 96);
    v5 = *(v2 + 104);

    v4 = sub_100060A38;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100060A38()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[9];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100060AA4()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  v9 = v8;
  swift_errorRetain();
  v10 = sub_1000C96A4();
  v11 = sub_1000C9CD4();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[15];
  v14 = v0[9];
  if (v12)
  {
    v15 = v0[6];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v15;
    *v17 = v15;
    *(v16 + 12) = 2112;
    v18 = v15;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v19;
    v17[1] = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Could not attach Transcriber to SpeechAnalyzer for %@ due to %@", v16, 0x16u);
    sub_100052CBC(&unk_10010DF10, &unk_1000D1820);
    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = v0[1];

  return v20(0);
}

uint64_t RDSAPISwiftSpeechAnalyzer.attachTranscriber(task:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(sub_100052CBC(&qword_10010DF50, &qword_1000D1E20) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = sub_1000C9564();
  v2[14] = v4;
  v5 = *(v4 - 8);
  v2[15] = v5;
  v6 = *(v5 + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = sub_1000C9A64();
  v2[17] = v7;
  v8 = *(v7 - 8);
  v2[18] = v8;
  v9 = *(v8 + 64) + 15;
  v2[19] = swift_task_alloc();
  v10 = *(*(sub_100052CBC(&qword_10010DF30, &qword_1000D1DE8) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100060E10, 0, 0);
}

uint64_t sub_100060E10()
{
  v1 = v0[11];
  sub_100053C64(0, &qword_10010DB40, NSString_ptr);
  v2 = sub_1000C9D64();
  LOBYTE(v1) = sub_1000C9D54();

  if (v1)
  {
    (*(v0[18] + 104))(v0[19], enum case for TaskHint.dictationCC(_:), v0[17]);
  }

  else
  {
    v3 = v0[18];
    v4 = v0[11];
    v5 = sub_1000C9D64();
    v6 = sub_1000C9D54();

    if (v6)
    {
      v7 = &enum case for TaskHint.spellCC(_:);
    }

    else
    {
      v7 = &enum case for TaskHint.dictationCC(_:);
    }

    (*(v3 + 104))(v0[19], *v7, v0[17]);
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v12 = v0[16];
  v11 = v0[17];
  v14 = v0[14];
  v13 = v0[15];
  v47 = v14;
  v15 = v0[12];
  v45 = v0[13];
  v49 = v0[11];
  (*(v10 + 32))(v8, v0[19], v11);
  (*(v10 + 56))(v8, 0, 1, v11);
  v16 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__taskHint;
  swift_beginAccess();
  sub_10006F3F8(v8, v15 + v16, &qword_10010DF30, &qword_1000D1DE8);
  swift_endAccess();
  v46 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale;
  v48 = *(v13 + 16);
  v48(v12, v15 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale, v14);
  sub_100057274(v15 + v16, v9, &qword_10010DF30, &qword_1000D1DE8);
  v17 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions;
  v44 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions;
  v40 = sub_1000C97C4();
  v18 = *(v40 - 8);
  v43 = *(v18 + 16);
  v43(v45, v15 + v17, v40);
  v42 = *(v18 + 56);
  v42(v45, 0, 1, v40);
  v19 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPostITN;
  swift_beginAccess();
  v20 = *(v15 + v19);
  v41 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__reportingOptions;
  v21 = *(v15 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__reportingOptions);
  v22 = sub_1000C9874();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  v25 = sub_1000C9864();
  v0[22] = v25;
  v48(v12, v15 + v46, v47);
  sub_100057274(v15 + v16, v9, &qword_10010DF30, &qword_1000D1DE8);
  v43(v45, v15 + v44, v40);
  v42(v45, 0, 1, v40);
  v26 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPreITN;
  swift_beginAccess();
  v27 = *(v15 + v26);
  v28 = *(v15 + v41);
  v29 = *(v22 + 48);
  v30 = *(v22 + 52);
  swift_allocObject();

  v31 = sub_1000C9864();
  v0[23] = v31;
  sub_1000C9E14(23);

  v32 = [v49 description];
  v33 = sub_1000C9B04();
  v35 = v34;

  v51._countAndFlagsBits = v33;
  v51._object = v35;
  sub_1000C9B24(v51);

  v36 = sub_1000C9AF4();
  v0[24] = v36;

  v37 = swift_task_alloc();
  v0[25] = v37;
  *v37 = v0;
  v37[1] = sub_100061354;
  v38 = v0[12];

  return sub_1000605BC(v25, v31, v36);
}

uint64_t sub_100061354(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_100061470, 0, 0);
}

uint64_t sub_100061470()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[13];

  v8 = v0[1];
  v9 = v0[26];

  return v8(v9);
}

uint64_t sub_1000616AC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100061770;

  return RDSAPISwiftSpeechAnalyzer.attachTranscriber(task:)(v6);
}

uint64_t sub_100061770(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  (*(v5 + 16))(v5, a1);
  _Block_release(*(v3 + 32));

  v8 = *(v10 + 8);

  return v8();
}

uint64_t RDSAPISwiftSpeechAnalyzer.setRecognitionReplacements(useRecognitionReplacements:)(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 280) = a1;
  v3 = *(*(sub_100052CBC(&qword_10010DF50, &qword_1000D1E20) - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v4 = *(*(sub_100052CBC(&qword_10010DF30, &qword_1000D1DE8) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  v5 = sub_1000C9564();
  *(v2 + 184) = v5;
  v6 = *(v5 - 8);
  *(v2 + 192) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  v8 = sub_1000C9844();
  *(v2 + 208) = v8;
  v9 = *(v8 - 8);
  *(v2 + 216) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  v11 = *(*(sub_100052CBC(&qword_10010DF58, &qword_1000D1E38) - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_100061AAC, 0, 0);
}

uint64_t sub_100061AAC()
{
  if (*(v0 + 280) == 1)
  {
    v2 = *(v0 + 208);
    v1 = *(v0 + 216);
    v3 = *(v0 + 160);
    v4 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPostITN;
    swift_beginAccess();
    v5 = *(v3 + v4);
    sub_100052CBC(&qword_10010DF60, &qword_1000D1E40);
    v60 = *(v1 + 72);
    v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000D1DB0;
    v58 = enum case for Transcriber.TranscriptionOption.etiquetteReplacements(_:);
    v56 = *(v1 + 104);
    v56(v7 + v6);

    v8 = sub_10006CADC(v7, v5);
    swift_setDeallocating();
    v9 = *(v1 + 8);
    v9(v7 + v6, v2);
    swift_deallocClassInstance();
    v10 = *(v3 + v4);
    *(v3 + v4) = v8;

    v11 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPreITN;
    swift_beginAccess();
    v12 = *(v3 + v11);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000D1DB0;
    v14 = v2;
    (v56)(v13 + v6, v58, v2);

    v15 = sub_10006CADC(v13, v12);
    swift_setDeallocating();
    v9(v13 + v6, v14);
    swift_deallocClassInstance();
    v16 = *(v3 + v11);
    *(v3 + v11) = v15;

    v61._countAndFlagsBits = 1702195828;
    v61._object = 0xE400000000000000;
  }

  else
  {
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = *(v0 + 208);
    v20 = *(v0 + 216);
    v21 = *(v0 + 160);
    v22 = enum case for Transcriber.TranscriptionOption.etiquetteReplacements(_:);
    v62 = *(v20 + 104);
    v62(v18, enum case for Transcriber.TranscriptionOption.etiquetteReplacements(_:), v19);
    swift_beginAccess();
    sub_100069DF4(v18, v17);
    v23 = *(v20 + 8);
    v23(v18, v19);
    sub_100057214(v17, &qword_10010DF58, &qword_1000D1E38);
    swift_endAccess();
    v62(v18, v22, v19);
    swift_beginAccess();
    sub_100069DF4(v18, v17);
    v23(v18, v19);
    sub_100057214(v17, &qword_10010DF58, &qword_1000D1E38);
    swift_endAccess();
    v61._countAndFlagsBits = 0x65736C6166;
    v61._object = 0xE500000000000000;
  }

  v24 = *(v0 + 200);
  v25 = *(v0 + 176);
  v51 = v25;
  v27 = *(v0 + 160);
  v26 = *(v0 + 168);
  v55 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale;
  v57 = *(v0 + 184);
  v59 = *(*(v0 + 192) + 16);
  v59(v24, v27 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale);
  v28 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__taskHint;
  v54 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__taskHint;
  swift_beginAccess();
  sub_100057274(v27 + v28, v25, &qword_10010DF30, &qword_1000D1DE8);
  v29 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions;
  v53 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions;
  v30 = sub_1000C97C4();
  v31 = *(v30 - 8);
  v52 = *(v31 + 16);
  v52(v26, v27 + v29, v30);
  v32 = *(v31 + 56);
  v32(v26, 0, 1, v30);
  v33 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPostITN;
  v49 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPostITN;
  swift_beginAccess();
  v34 = *(v27 + v33);
  v48 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__reportingOptions;
  v35 = *(v27 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__reportingOptions);
  v36 = sub_1000C9874();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();

  v50 = sub_1000C9864();
  *(v0 + 240) = v50;
  (v59)(v24, v27 + v55, v57);
  sub_100057274(v27 + v54, v51, &qword_10010DF30, &qword_1000D1DE8);
  v52(v26, v27 + v53, v30);
  v32(v26, 0, 1, v30);
  v39 = *(v27 + v49);
  v40 = *(v27 + v48);
  v41 = *(v36 + 48);
  v42 = *(v36 + 52);
  swift_allocObject();

  v43 = sub_1000C9864();
  *(v0 + 248) = v43;
  sub_1000C9E14(33);

  sub_1000C9B24(v61);

  v44 = sub_1000C9AF4();
  *(v0 + 256) = v44;

  v45 = swift_task_alloc();
  *(v0 + 264) = v45;
  *v45 = v0;
  v45[1] = sub_100062138;
  v46 = *(v0 + 160);

  return sub_1000605BC(v50, v43, v44);
}

uint64_t sub_100062138(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_100062254, 0, 0);
}

uint64_t sub_100062254()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[25];
  v7 = v0[21];
  v6 = v0[22];

  v8 = v0[1];
  v9 = v0[34];

  return v8(v9);
}

uint64_t sub_100062488(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_100062544;

  return RDSAPISwiftSpeechAnalyzer.setRecognitionReplacements(useRecognitionReplacements:)(a1);
}

uint64_t sub_100062544(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (*(v5 + 16))(v5, a1);
  _Block_release(*(v3 + 24));

  v7 = *(v9 + 8);

  return v7();
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.cancelRecognition()()
{
  v1 = v0;
  v2 = sub_1000C96A4();
  v3 = sub_1000C9CC4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SpeechAnalyzer cancel audio", v4, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask))
  {

    sub_1000C9C74();
  }
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.setText(leftContextText:)(NSString leftContextText)
{
  v2 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_1000C9B04();
  v8 = v7;
  v9 = sub_1000C9C34();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v10[5] = v6;
  v10[6] = v8;
  v11 = v1;
  sub_100055D64(0, 0, v5, &unk_1000D1E50, v10);
}

uint64_t sub_100062908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_1000C9904();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000629CC, 0, 0);
}

uint64_t sub_1000629CC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  v18 = v0[9];
  v19 = v0[6];
  v5 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext;
  v6 = *(v19 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext);

  sub_1000C98F4();
  sub_100052CBC(&qword_10010DEB8, &qword_1000D2080);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000D1DB0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;

  v8 = sub_1000C98E4();
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  *v10 = 0x8000000000000000;
  sub_10006A818(v7, v1, isUniquelyReferenced_nonNull_native);
  (*(v2 + 8))(v1, v18);
  *v10 = v20;
  v8(v0 + 2, 0);

  v0[12] = *(v19 + v5);

  v13 = sub_1000C9924();
  v0[13] = v13;
  v14 = async function pointer to AnalysisContext.setWait<A>(userData:)[1];
  v15 = swift_task_alloc();
  v0[14] = v15;
  v16 = sub_100052CBC(&qword_10010E210, &qword_1000D2078);
  *v15 = v0;
  v15[1] = sub_100062BA4;

  return AnalysisContext.setWait<A>(userData:)(v13, v16);
}

uint64_t sub_100062BA4()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100062E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100062E90, 0, 0);
}

uint64_t sub_100062E90()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext;
  v5 = *(v3 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext);

  sub_10006E084(v1, v2);
  sub_1000C98D4();

  v0[5] = *(v3 + v4);

  v6 = sub_1000C9924();
  v0[6] = v6;
  v7 = async function pointer to AnalysisContext.setWait<A>(userData:)[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = sub_100052CBC(&qword_10010E210, &qword_1000D2078);
  *v8 = v0;
  v8[1] = sub_100062FAC;

  return AnalysisContext.setWait<A>(userData:)(v6, v9);
}

uint64_t sub_100062FAC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100063110(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext);

  v5 = a1(v4);
  v7 = v6;

  if (v7 >> 60 != 15)
  {
    return v5;
  }

  __break(1u);
  return result;
}

Class sub_100063194(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *&a1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext];
  v5 = a1;

  v7 = a3(v6);
  v9 = v8;

  if (v9 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v11.super.isa = sub_1000C94E4().super.isa;
    sub_10006EB6C(v7, v9);

    return v11.super.isa;
  }

  return result;
}

uint64_t sub_100063258(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_1000C9C34();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v14 = v4;
  sub_10006E084(a1, a2);
  sub_100055D64(0, 0, v11, a4, v13);
}

uint64_t sub_100063370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100063394, 0, 0);
}

uint64_t sub_100063394()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext;
  v5 = *(v3 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext);

  sub_10006E084(v1, v2);
  sub_1000C98C4();

  v0[5] = *(v3 + v4);

  v6 = sub_1000C9924();
  v0[6] = v6;
  v7 = async function pointer to AnalysisContext.setWait<A>(userData:)[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = sub_100052CBC(&qword_10010E210, &qword_1000D2078);
  *v8 = v0;
  v8[1] = sub_10006F4FC;

  return AnalysisContext.setWait<A>(userData:)(v6, v9);
}

uint64_t sub_1000634D0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = a3;
  v13 = a1;
  v14 = sub_1000C94F4();
  v16 = v15;

  v17 = sub_1000C9C34();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v13;
  v18[5] = v14;
  v18[6] = v16;
  sub_100055D64(0, 0, v11, a5, v18);
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.useRecognitionReplacements()()
{
  v1 = v0;
  v2 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v57 = &v56 - v4;
  v5 = sub_100052CBC(&qword_10010DF50, &qword_1000D1E20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v68 = &v56 - v7;
  v8 = sub_100052CBC(&qword_10010DF30, &qword_1000D1DE8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v67 = &v56 - v10;
  v11 = sub_1000C9564();
  v12 = *(v11 - 8);
  v69 = v11;
  v70 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v71 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPostITN;
  swift_beginAccess();
  v16 = *&v0[v15];
  v64 = sub_100052CBC(&qword_10010DF60, &qword_1000D1E40);
  v17 = sub_1000C9844();
  v18 = *(v17 - 8);
  v63 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v62 = xmmword_1000D1DB0;
  *(v20 + 16) = xmmword_1000D1DB0;
  LODWORD(v61) = enum case for Transcriber.TranscriptionOption.etiquetteReplacements(_:);
  v60 = *(v18 + 104);
  v60(v20 + v19);

  v21 = sub_10006CADC(v20, v16);
  swift_setDeallocating();
  v22 = *(v18 + 8);
  v22(v20 + v19, v17);
  swift_deallocClassInstance();
  v65 = v15;
  v23 = *&v1[v15];
  *&v1[v15] = v21;

  v24 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPreITN;
  swift_beginAccess();
  v25 = *&v1[v24];
  v26 = swift_allocObject();
  *(v26 + 16) = v62;
  (v60)(v26 + v19, v61, v17);

  v27 = sub_10006CADC(v26, v25);
  swift_setDeallocating();
  v22(v26 + v19, v17);
  swift_deallocClassInstance();
  v66 = v24;
  v28 = *&v1[v24];
  *&v1[v24] = v27;

  v29 = *(v70 + 16);
  v70 += 16;
  v63 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale;
  v64 = v29;
  v29(v71, &v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale], v69);
  v30 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__taskHint;
  *&v62 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__taskHint;
  swift_beginAccess();
  v31 = v67;
  sub_100057274(&v1[v30], v67, &qword_10010DF30, &qword_1000D1DE8);
  v32 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions;
  v61 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions;
  v33 = sub_1000C97C4();
  v34 = *(v33 - 8);
  v60 = *(v34 + 16);
  v35 = v68;
  (v60)(v68, &v1[v32], v33);
  v59 = *(v34 + 56);
  v59(v35, 0, 1, v33);
  v36 = *&v1[v65];
  v65 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__reportingOptions;
  v37 = *&v1[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__reportingOptions];
  v38 = sub_1000C9874();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v58 = swift_allocObject();

  v41 = v71;
  v42 = sub_1000C9864();
  v64(v41, &v1[v63], v69);
  sub_100057274(&v1[v62], v31, &qword_10010DF30, &qword_1000D1DE8);
  (v60)(v35, &v1[v61], v33);
  v59(v35, 0, 1, v33);
  v43 = *&v1[v66];
  v44 = *&v1[v65];
  v45 = *(v38 + 48);
  v46 = *(v38 + 52);
  swift_allocObject();

  v47 = sub_1000C9864();
  v48 = type metadata accessor for RDSAPISwiftTranscriberModule();
  v49 = objc_allocWithZone(v48);
  *&v49[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond28RDSAPISwiftTranscriberModule__transcriberModulePostITN] = v42;
  *&v49[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond28RDSAPISwiftTranscriberModule__transcriberModulePreITN] = v47;
  v72.receiver = v49;
  v72.super_class = v48;

  v50 = objc_msgSendSuper2(&v72, "init");
  v51 = sub_1000C9C34();
  v52 = v57;
  (*(*(v51 - 8) + 56))(v57, 1, 1, v51);
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v50;
  v53[5] = v1;
  v54 = v50;
  v55 = v1;
  sub_100055D64(0, 0, v52, &unk_1000D1E80, v53);
}

uint64_t sub_100063D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100063D4C, 0, 0);
}

uint64_t sub_100063D4C()
{
  v1 = *(v0 + 24);
  v2 = (*((swift_isaMask & **(v0 + 16)) + 0x60))();
  *(v0 + 32) = v2;
  *(v0 + 40) = *(v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__speechAnalyzer);
  sub_100052CBC(&qword_10010DF80, &qword_1000D1EB0);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_1000D1DB0;
  v4 = sub_10006F3B0(&qword_10010DF88, &type metadata accessor for Transcriber);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
  v5 = async function pointer to SpeechAnalyzer.setModules(_:)[1];

  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_100063EB8;

  return SpeechAnalyzer.setModules(_:)(v3);
}

uint64_t sub_100063EB8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10006403C;
  }

  else
  {
    v6 = *(v2 + 40);
    v5 = *(v2 + 48);

    v4 = sub_100063FDC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100063FDC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006403C()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  swift_errorRetain();
  v6 = sub_1000C96A4();
  v7 = sub_1000C9CD4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Could not set recognition replacements = %@", v10, 0xCu);
    sub_100057214(v11, &unk_10010DF10, &unk_1000D1820);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.addAudioSamples(audio:)(Swift::OpaquePointer audio)
{
  v2 = v1;
  v4 = sub_1000C98A4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100052CBC(&qword_10010DF48, &qword_1000D1E00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &rawValue - v9;
  v11 = sub_100052CBC(&qword_10010DF68, &qword_1000D1E88);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &rawValue - v14;
  (*(v7 + 16))(v10, v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__inputStreamBuilder, v6);
  v16 = *((swift_isaMask & *v2) + 0x2C0);
  rawValue = audio._rawValue;
  v16(audio._rawValue);
  v17 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__totalSamplesSent;
  CMTimeMake(&v23, *(v2 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__totalSamplesSent), 16000);
  sub_1000C9884();
  sub_1000C9C54();
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  v18 = rawValue[2];
  v19 = *(v2 + v17);
  v20 = __OFADD__(v19, v18);
  v21 = v19 + v18;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v17) = v21;
  }
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.endAudio()()
{
  oslog = sub_1000C96A4();
  v0 = sub_1000C9CC4();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "SpeechAnalyzer finished audio", v1, 2u);
  }
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.addAudioSamplesPCM(audio:)(AVAudioPCMBuffer audio)
{
  isa = audio.super.super.isa;
  v3 = sub_1000C98A4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100052CBC(&qword_10010DF48, &qword_1000D1E00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = sub_100052CBC(&qword_10010DF68, &qword_1000D1E88);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16 - v13;
  (*(v6 + 16))(v9, v1 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__inputStreamBuilder, v5);
  v15 = isa;
  CMTimeMake(&v17, 0, 1);
  sub_1000C9884();
  sub_1000C9C54();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t RDSAPISwiftSpeechAnalyzer.startRecognition(transcriberModuleWrapper:)(void *a1)
{
  v3 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = sub_1000C9C34();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;
  v9 = v1;
  v10 = a1;
  v11 = sub_100055D64(0, 0, v6, &unk_1000D1E98, v8);
  v12 = *&v9[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask];
  *&v9[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask] = v11;
}

uint64_t sub_100064BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_100052CBC(&qword_10010E1D8, &qword_1000D2048);
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = sub_100052CBC(&qword_10010E1E0, &qword_1000D2050);
  v5[6] = v8;
  v9 = *(v8 - 8);
  v5[7] = v9;
  v10 = *(v9 + 64) + 15;
  v5[8] = swift_task_alloc();
  v11 = sub_100052CBC(&qword_10010E190, &qword_1000D2020);
  v5[9] = v11;
  v12 = *(v11 - 8);
  v5[10] = v12;
  v13 = *(v12 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100064D4C, 0, 0);
}

uint64_t sub_100064D4C()
{
  v1 = v0[2] + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__logger;
  v2 = sub_1000C96A4();
  v3 = sub_1000C9CC4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SpeechAnalyzer new recognition task started", v4, 2u);
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[3];

  (*((swift_isaMask & *v11) + 0x78))();
  sub_1000C9854();

  (*((swift_isaMask & *v11) + 0x60))(v12);
  sub_1000C9854();

  swift_getOpaqueTypeConformance2();
  sub_1000C9694();
  type metadata accessor for RDSAPICombinedTranscriberResult(0);
  sub_10006F1B0(&qword_10010E1E8, &qword_10010E1D8, &qword_1000D2048);
  sub_1000C9E44();
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_100064FC8;
  v14 = v0[8];
  v15 = v0[2];

  return sub_10006AEDC(v14, v15);
}

uint64_t sub_100064FC8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100065120, 0, 0);
}

uint64_t sub_100065120()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[8];
  v4 = v0[5];
  v5 = *(v0[10] + 8);
  v5(v0[11], v2);
  v5(v1, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000651EC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_100052CBC(&qword_10010E208, &qword_1000D2070);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100065298, 0, 0);
}

uint64_t sub_100065298()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  sub_100057274(v3, v1, &qword_10010E208, &qword_1000D2070);
  v6 = *(v4 + 48);
  sub_100057274(v3, v2, &qword_10010E208, &qword_1000D2070);
  v7 = *(v4 + 48);
  v8 = sub_1000C9834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 32);
  v10(v5, v1, v8);
  v11 = type metadata accessor for RDSAPICombinedTranscriberResult(0);
  v10(v5 + *(v11 + 20), v2 + v7, v8);
  v12 = *(v9 + 8);
  v12(v2, v8);
  v12(v1 + v6, v8);

  v13 = v0[1];

  return v13();
}

void sub_100065540(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1000C96A4();
  v5 = sub_1000C9CC4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Called the callback with final results = %@", v6, 0xCu);
    sub_100057214(v7, &unk_10010DF10, &unk_1000D1820);
  }

  v9 = (*((swift_isaMask & *v2) + 0xD0))();
  if (v9)
  {
    v10 = v9;
    [v9 didRecognizeFinalResults:v3];
  }
}

void sub_1000656C8()
{
  v1 = v0;
  v2 = sub_1000C96A4();
  v3 = sub_1000C9CE4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SpeechAPI Recognition Error", v4, 2u);
  }

  v5 = (*((swift_isaMask & *v1) + 0xD0))();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1000C9474();
    [v6 didFinishRecognitionWithError:?];
  }
}

Swift::Void __swiftcall RDSAPISwiftSpeechAnalyzer.startRecognitionFromFile()()
{
  v0 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v77 = &v76 - v2;
  v3 = sub_100052CBC(&qword_10010DF38, &qword_1000D1DF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v82 = &v76 - v5;
  v81 = sub_100052CBC(&qword_10010DF40, &qword_1000D1DF8);
  v79 = *(v81 - 8);
  v6 = *(v79 + 64);
  __chkstk_darwin(v81);
  v80 = &v76 - v7;
  v8 = sub_1000C97A4();
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = *(v85 + 64);
  v10 = __chkstk_darwin(v8);
  v83 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v84 = &v76 - v12;
  v13 = sub_100052CBC(&qword_10010DF70, &qword_1000D1EA0);
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  __chkstk_darwin(v13);
  v87 = &v76 - v15;
  v16 = sub_1000C94D4();
  v91 = *(v16 - 8);
  v92 = v16;
  v17 = *(v91 + 64);
  __chkstk_darwin(v16);
  v94 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100052CBC(&qword_10010DF50, &qword_1000D1E20);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v76 - v21;
  v23 = sub_100052CBC(&qword_10010DF30, &qword_1000D1DE8);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v76 - v25;
  v27 = sub_1000C9564();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  sub_1000C9544();
  v29 = sub_1000C9A64();
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  v30 = sub_1000C97C4();
  (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
  sub_100052CBC(&qword_10010DF78, &qword_1000D1EA8);
  v31 = sub_1000C97D4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  v78 = xmmword_1000D1DB0;
  *(v35 + 16) = xmmword_1000D1DB0;
  (*(v32 + 104))(v35 + v34, enum case for Transcriber.ReportingOption.multisegmentResults(_:), v31);
  v93 = sub_10006C49C(v35);
  swift_setDeallocating();
  (*(v32 + 8))(v35 + v34, v31);
  swift_deallocClassInstance();
  sub_100052CBC(&qword_10010DF60, &qword_1000D1E40);
  v36 = sub_1000C9844();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000D1DC0;
  v41 = v40 + v39;
  v42 = *(v37 + 104);
  v42(v41, enum case for Transcriber.TranscriptionOption.contextualizedTranscription(_:), v36);
  v42(v41 + v38, enum case for Transcriber.TranscriptionOption.punctuation(_:), v36);
  v42(v41 + 2 * v38, enum case for Transcriber.TranscriptionOption.emoji(_:), v36);
  sub_10006C7BC(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v43 = sub_1000C9874();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = sub_1000C9864();
  v47 = type metadata accessor for AudioStream(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v50 = sub_1000C9AF4();
  v51 = sub_1000C9AF4();
  v52 = [v49 URLForResource:v50 withExtension:v51];

  if (v52)
  {
    sub_1000C94C4();

    v53 = [objc_allocWithZone(AVAudioFormat) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
    v93 = v46;
    if (v53)
    {
      v54 = *(v47 + 48);
      v55 = *(v47 + 52);
      v56 = swift_allocObject();
      *(v56 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avFile) = 0;
      *(v56 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avConverter) = 0;
      sub_1000C98A4();
      v58 = v87;
      v57 = v88;
      v59 = v89;
      (*(v88 + 104))(v87, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v89);
      v60 = v53;
      sub_1000C9C44();
      (*(v57 + 8))(v58, v59);
      sub_100067DD4(v94, v60);
      v61 = v84;
      sub_1000C9794();
      v89 = sub_1000C9734();
      (*(v85 + 16))(v83, v61, v86);
      (*(v79 + 16))(v80, v56 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_audioStream, v81);
      sub_100052CBC(&qword_10010DF80, &qword_1000D1EB0);
      v62 = swift_allocObject();
      *(v62 + 16) = v78;
      v63 = sub_10006F3B0(&qword_10010DF88, &type metadata accessor for Transcriber);
      v64 = v93;
      *(v62 + 32) = v93;
      *(v62 + 40) = v63;
      v65 = sub_1000C9984();
      (*(*(v65 - 8) + 56))(v82, 1, 1, v65);
      v66 = sub_1000C9944();
      v67 = *(v66 + 48);
      v68 = *(v66 + 52);
      swift_allocObject();
      v69 = v60;

      sub_1000C9934();
      sub_10006F1B0(&qword_10010DF90, &qword_10010DF40, &qword_1000D1DF8);
      v70 = sub_1000C9724();
      sub_100068164(sub_10006E2D4, v56, sub_10006E2DC);
      v71 = sub_1000C9C34();
      v72 = v77;
      (*(*(v71 - 8) + 56))(v77, 1, 1, v71);
      v73 = swift_allocObject();
      v73[2] = 0;
      v73[3] = 0;
      v73[4] = v70;
      v73[5] = v64;
      v74 = v90;
      v73[6] = v90;

      v75 = v74;
      sub_100066F3C(0, 0, v72, &unk_1000D1EC0, v73);

      (*(v85 + 8))(v84, v86);
      (*(v91 + 8))(v94, v92);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000664B8()
{
  v1 = sub_100052CBC(&qword_10010DF70, &qword_1000D1EA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avFile) = 0;
  *(v8 + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avConverter) = 0;
  sub_1000C98A4();
  (*(v2 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v1);
  sub_1000C9C44();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_10006660C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v7 = sub_1000C9834();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = *(*(sub_100052CBC(&qword_10010E188, &qword_1000D2018) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = sub_100052CBC(&qword_10010E190, &qword_1000D2020);
  v6[9] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = sub_100052CBC(&qword_10010E198, &unk_1000D2028);
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v16 = async function pointer to SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()[1];
  v17 = swift_task_alloc();
  v6[14] = v17;
  *v17 = v6;
  v17[1] = sub_1000667DC;

  return SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()();
}

uint64_t sub_1000667DC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[13];
    v6 = v2[10];
    v9 = v2 + 7;
    v7 = v2[7];
    v8 = v9[1];

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_100066940, 0, 0);
  }
}

uint64_t sub_100066940()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[3];
  sub_1000C9854();
  v0[15] = swift_getOpaqueTypeConformance2();
  sub_1000C9C84();
  v0[16] = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__logger;
  v5 = v0[15];
  v6 = v0[11];
  v7 = v0[9];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_100066A70;
  v11 = v0[13];
  v12 = v0[11];
  v13 = v0[8];

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v13, 0, 0, v0 + 2, v12, AssociatedConformanceWitness);
}

uint64_t sub_100066A70()
{
  v2 = *(*v1 + 136);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100066E98;
  }

  else
  {
    v3 = sub_100066B80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100066B80()
{
  v32 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[10];
    v5 = v0[7];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[16];
    v9 = v0[4];
    (*(v3 + 32))(v0[7], v1, v2);
    v10 = sub_1000C96A4();
    v11 = sub_1000C9CC4();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      sub_10006F3B0(&qword_10010E1A0, &type metadata accessor for Transcriber.MultisegmentResult);
      v18 = sub_1000C9E94();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_100050ED0(v18, v20, &v31);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Got recognition results from audio file %s", v16, 0xCu);
      sub_100052DB0(v17);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v22 = v0[15];
    v23 = v0[11];
    v24 = v0[9];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v27 = swift_task_alloc();
    v0[17] = v27;
    *v27 = v0;
    v27[1] = sub_100066A70;
    v28 = v0[13];
    v29 = v0[11];
    v30 = v0[8];

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v30, 0, 0, v0 + 2, v29, AssociatedConformanceWitness);
  }
}

uint64_t sub_100066E98()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[2];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100066F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100057274(a3, v24 - v10, &qword_10010DCC0, &qword_1000D1B20);
  v12 = sub_1000C9C34();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100057214(v11, &qword_10010DCC0, &qword_1000D1B20);
  }

  else
  {
    sub_1000C9C24();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000C9BF4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000C9B14() + 32;

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

      sub_100057214(a3, &qword_10010DCC0, &qword_1000D1B20);

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

  sub_100057214(a3, &qword_10010DCC0, &qword_1000D1B20);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100067230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a3;
  v7 = *(a3 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = sub_1000C9D74();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[12] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_getAssociatedTypeWitness();
  v15 = *(*(sub_1000C9D74() - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v16 = *(a4 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  v5[20] = v18;
  v19 = *(v18 - 8);
  v5[21] = v19;
  v20 = *(v19 + 64) + 15;
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000674F8, 0, 0);
}

uint64_t sub_1000674F8()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v0[2] = sub_1000C9BA4();
  (*(v3 + 16))(v2, v7, v5);
  sub_1000C9C84();
  v8 = v0[20];
  v10 = v0[5];
  v9 = v0[6];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[23] = AssociatedConformanceWitness;
  v12 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v13 = swift_task_alloc();
  v0[24] = v13;
  *v13 = v0;
  v13[1] = sub_100067628;
  v14 = v0[22];
  v15 = v0[20];
  v16 = v0[17];
  v17 = v0[15];

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v16, 0, 0, v17, v15, AssociatedConformanceWitness);
}

uint64_t sub_100067628()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1000679D4;
  }

  else
  {
    v5 = sub_100067740;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100067740()
{
  if ((*(*(v0[16] - 8) + 48))(v0[17], 1, v0[16]) == 1)
  {
    v1 = v0[19];
    v3 = v0[14];
    v2 = v0[15];
    v4 = v0[11];
    v5 = v0[8];
    (*(v0[21] + 8))(v0[22], v0[20]);
    v6 = v0[2];

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    v9 = v0[11];
    v10 = v0[7];
    v11 = v0[4];
    v12 = swift_dynamicCast();
    v13 = *(v10 + 56);
    v14 = v0[11];
    if (v12)
    {
      v16 = v0[7];
      v15 = v0[8];
      v17 = v0[4];
      v13(v0[11], 0, 1, v17);
      (*(v16 + 32))(v15, v14, v17);
      sub_1000C9BD4();
      sub_1000C9BC4();
    }

    else
    {
      v18 = v0[9];
      v19 = v0[10];
      v13(v0[11], 1, 1, v0[4]);
      (*(v19 + 8))(v14, v18);
    }

    v20 = v0[20];
    v22 = v0[5];
    v21 = v0[6];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[23] = AssociatedConformanceWitness;
    v24 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v25 = swift_task_alloc();
    v0[24] = v25;
    *v25 = v0;
    v25[1] = sub_100067628;
    v26 = v0[22];
    v27 = v0[20];
    v28 = v0[17];
    v29 = v0[15];

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v28, 0, 0, v29, v27, AssociatedConformanceWitness);
  }
}

uint64_t sub_1000679D4()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = *(v0[13] + 32);
  v3(v0[14], v0[15], v0[12]);
  swift_getAssociatedConformanceWitness();
  v4 = sub_1000C9EA4();
  v5 = v0[14];
  if (v4)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
  }

  else
  {
    v6 = v0[12];
    swift_allocError();
    v3(v7, v5, v6);
  }

  v8 = v0[19];
  v9 = v0[17];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[11];
  v13 = v0[8];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v14 = v0[1];

  return v14();
}

void *sub_100067BCC()
{
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avFile;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100067C18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avFile;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100067CD0()
{
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avConverter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100067D1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_avConverter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_100067DD4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1000C94D4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  v12 = objc_allocWithZone(AVAudioFile);
  v13 = sub_1000688A4(v10);
  if (!v3)
  {
    v14 = (*(*v4 + 120))(v13);
    v15 = (*(*v4 + 112))(v14);
    if (v15)
    {
      v16 = v15;
      v17 = [v15 processingFormat];

      v18 = [objc_allocWithZone(AVAudioConverter) initFromFormat:v17 toFormat:a2];
      if (v18)
      {
        (*(*v4 + 144))(v18);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_10006800C(void *a1)
{
  v2 = sub_1000C98A4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100052CBC(&qword_10010DF68, &qword_1000D1E88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = a1;
  sub_1000C9894();
  sub_100052CBC(&qword_10010DF48, &qword_1000D1E00);
  sub_1000C9C54();
  return (*(v5 + 8))(v8, v4);
}

void sub_100068164(void (*a1)(id, id), uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v51 = *(*v3 + 112);
  v5 = v51();
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = v5;
  v7 = [v5 processingFormat];

  [v7 sampleRate];
  v9 = v8;

  v10 = v9 * 0.5;
  if (COERCE__INT64(fabs(v9 * 0.5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v10 <= -1.0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  if (v10 >= 4294967300.0)
  {
    goto LABEL_28;
  }

  v50 = 0;
  v48 = v10;
  do
  {
    v11 = v51();
    v12 = v11;
    if (!v11)
    {
      goto LABEL_29;
    }

    v13 = [v11 length];

    if (v50 >= v13)
    {
      goto LABEL_22;
    }

    v14 = v51();
    v15 = v14;
    if (!v14)
    {
      goto LABEL_31;
    }

    v16 = [v14 processingFormat];

    [v16 sampleRate];
    v18 = v17;

    v49 = [objc_allocWithZone(AVAudioTime) initWithSampleTime:v50 atRate:v18];
    v19 = v51();
    v20 = v19;
    if (!v19)
    {
      goto LABEL_34;
    }

    v21 = [v19 processingFormat];

    v22 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:v21 frameCapacity:v48];
    if (!v22)
    {
      goto LABEL_30;
    }

    v23 = *(*v4 + 136);
    v24 = v23();
    v25 = v24;
    if (!v24)
    {
      goto LABEL_35;
    }

    v26 = [v24 outputFormat];

    v27 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:v26 frameCapacity:v48];
    if (!v27)
    {
      goto LABEL_32;
    }

    v28 = v51();
    v29 = v28;
    if (!v28)
    {
      goto LABEL_33;
    }

    aBlock[0] = 0;
    v30 = [v28 readIntoBuffer:v22 error:aBlock];

    if (!v30)
    {
      v45 = aBlock[0];
      sub_1000C9484();

      swift_willThrow();
      v41 = v27;
      v27 = v49;
      v49 = v22;
LABEL_25:

      return;
    }

    v31 = (v51)(aBlock[0]);
    v32 = v31;
    if (!v31)
    {
      goto LABEL_36;
    }

    v33 = [v31 framePosition];

    v34 = v51();
    v35 = v34;
    if (!v34)
    {
      goto LABEL_38;
    }

    v36 = [v34 length];

    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = v23();
    if (!v38)
    {
      goto LABEL_37;
    }

    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    *(v39 + 24) = v33 >= v36;
    *(v39 + 32) = v22;
    aBlock[4] = sub_10006E464;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005BD18;
    aBlock[3] = &unk_100100C40;
    v40 = _Block_copy(aBlock);

    v41 = v22;

    aBlock[0] = 0;
    [v38 convertToBuffer:v27 error:aBlock withInputFromBlock:v40];
    _Block_release(v40);

    v42 = aBlock[0];
    if (aBlock[0])
    {
      swift_willThrow();
      v42;

      [v41 frameLength];
      goto LABEL_25;
    }

    a1(v27, v49);

    v43 = [v41 frameLength];

    v44 = __OFADD__(v50, v43);
    v50 += v43;
  }

  while (!v44);
  __break(1u);
LABEL_22:
  a3();
}

void sub_10006870C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100068714);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100068790()
{
  v1 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_audioStream;
  v2 = sub_100052CBC(&qword_10010DF40, &qword_1000D1DF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond11AudioStream_audioStreamGenerator;
  v4 = sub_100052CBC(&qword_10010DF48, &qword_1000D1E00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_1000688A4(uint64_t a1)
{
  v2 = v1;
  sub_1000C94B4(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initForReading:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_1000C94D4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_1000C9484();

    swift_willThrow();
    v12 = sub_1000C94D4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

void sub_1000689F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000689FC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000572E0;

  return v7();
}

uint64_t sub_100068AE4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000572E0;

  return v8();
}

uint64_t sub_100068BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100057274(a3, v25 - v11, &qword_10010DCC0, &qword_1000D1B20);
  v13 = sub_1000C9C34();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100057214(v12, &qword_10010DCC0, &qword_1000D1B20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000C9C24();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1000C9BF4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1000C9B14() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100057214(a3, &qword_10010DCC0, &qword_1000D1B20);

    return v23;
  }

LABEL_8:
  sub_100057214(a3, &qword_10010DCC0, &qword_1000D1B20);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100068EC8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006F4F8;

  return v7(a1);
}

uint64_t sub_100068FC0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000C9844();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption);
  v36 = a2;
  v13 = sub_1000C9AD4();
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
      sub_10006F3B0(&qword_10010E1B8, &type metadata accessor for Transcriber.TranscriptionOption);
      v23 = sub_1000C9AE4();
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
    sub_1000695FC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1000692A0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1000C9844();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100052CBC(&qword_10010E1A8, &qword_1000D2038);
  result = sub_1000C9DE4();
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
      sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption);
      result = sub_1000C9AD4();
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

uint64_t sub_1000695FC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1000C9844();
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
    sub_1000692A0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1000698A0();
      goto LABEL_12;
    }

    sub_100069AD8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption);
  v15 = sub_1000C9AD4();
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
      sub_10006F3B0(&qword_10010E1B8, &type metadata accessor for Transcriber.TranscriptionOption);
      v23 = sub_1000C9AE4();
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
  result = sub_1000C9EC4();
  __break(1u);
  return result;
}

void *sub_1000698A0()
{
  v1 = v0;
  v2 = sub_1000C9844();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052CBC(&qword_10010E1A8, &qword_1000D2038);
  v7 = *v0;
  v8 = sub_1000C9DD4();
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

uint64_t sub_100069AD8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1000C9844();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100052CBC(&qword_10010E1A8, &qword_1000D2038);
  v10 = sub_1000C9DE4();
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
      sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption);
      result = sub_1000C9AD4();
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

uint64_t sub_100069DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000C9844();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption);
  v35 = a1;
  v13 = sub_1000C9AD4();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_10006F3B0(&qword_10010E1B8, &type metadata accessor for Transcriber.TranscriptionOption);
      v22 = sub_1000C9AE4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000698A0();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_10006A09C(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_10006A09C(int64_t a1)
{
  v3 = sub_1000C9844();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1000C9DC4();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption);
        v27 = sub_1000C9AD4();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_10006A3A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000C9904();
  sub_10006F3B0(&qword_10010E220, &type metadata accessor for AnalysisContext.ContextualStringsTag);
  v5 = sub_1000C9AD4();

  return sub_10006AA9C(a1, v5);
}

uint64_t sub_10006A43C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000C9904();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100052CBC(&qword_10010E218, &unk_1000D2088);
  v43 = a2;
  result = sub_1000C9E84();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10006F3B0(&qword_10010E220, &type metadata accessor for AnalysisContext.ContextualStringsTag);
      result = sub_1000C9AD4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10006A818(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000C9904();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10006A3A4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10006AC5C();
      goto LABEL_7;
    }

    sub_10006A43C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_10006A3A4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10006A9E4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1000C9ED4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_10006A9E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000C9904();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10006AA9C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1000C9904();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10006F3B0(&qword_10010E228, &type metadata accessor for AnalysisContext.ContextualStringsTag);
      v16 = sub_1000C9AE4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_10006AC5C()
{
  v1 = v0;
  v34 = sub_1000C9904();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052CBC(&qword_10010E218, &unk_1000D2088);
  v4 = *v0;
  v5 = sub_1000C9E74();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10006AEDC(uint64_t a1, uint64_t a2)
{
  v2[24] = a2;
  v4 = sub_1000C98B4();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();
  v7 = sub_1000C9834();
  v2[28] = v7;
  v8 = *(v7 - 8);
  v2[29] = v8;
  v9 = *(v8 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v10 = *(*(sub_100052CBC(&qword_10010E1F0, &qword_1000D2068) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v11 = type metadata accessor for RDSAPICombinedTranscriberResult(0);
  v2[37] = v11;
  v12 = *(v11 - 8);
  v2[38] = v12;
  v13 = *(v12 + 64) + 15;
  v2[39] = swift_task_alloc();
  v14 = sub_100052CBC(&qword_10010E1E0, &qword_1000D2050);
  v2[5] = v14;
  v2[6] = sub_10006F1B0(&qword_10010E1F8, &qword_10010E1E0, &qword_1000D2050);
  v15 = sub_10006F28C(v2 + 2);
  (*(*(v14 - 8) + 16))(v15, a1, v14);

  return _swift_task_switch(sub_10006B15C, 0, 0);
}

uint64_t sub_10006B15C()
{
  v1 = *(v0 + 40);
  v2 = sub_10006F1F8((v0 + 16), v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  *(v0 + 80) = swift_getAssociatedTypeWitness();
  *(v0 + 88) = swift_getAssociatedConformanceWitness();
  sub_10006F28C((v0 + 56));
  sub_1000C9C84();

  v6 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__totalSamplesSent;
  *(v0 + 320) = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__logger;
  *(v0 + 328) = v6;
  *(v0 + 616) = enum case for EARResultType.partial(_:);
  *(v0 + 620) = enum case for EARResultType.final(_:);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  *(v0 + 336) = v7;
  *(v0 + 344) = v8;
  sub_10006F23C(v0 + 56, v7);
  *(v0 + 352) = swift_getAssociatedTypeWitness();
  v9 = sub_1000C9D74();
  *(v0 + 360) = v9;
  v10 = *(v9 - 8);
  *(v0 + 368) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  *(v0 + 376) = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 384) = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  *(v0 + 392) = v14;
  *(v0 + 400) = *(v14 + 64);
  v15 = swift_task_alloc();
  *(v0 + 408) = v15;
  v16 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v17 = swift_task_alloc();
  *(v0 + 416) = v17;
  *v17 = v0;
  v17[1] = sub_10006B458;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v12, 0, 0, v15, v7, v8);
}

uint64_t sub_10006B458()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v7 = *v1;

  if (v0)
  {
    v4 = sub_10006C144;
  }

  else
  {
    v5 = *(v2 + 408);

    v4 = sub_10006B570;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10006B570()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 368) + 8))(v1, *(v0 + 360));

    sub_100052DB0((v0 + 56));
    v4 = *(v0 + 312);
    v6 = *(v0 + 280);
    v5 = *(v0 + 288);
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v10 = *(v0 + 248);
    v9 = *(v0 + 256);
    v11 = *(v0 + 240);
    v12 = *(v0 + 216);
    sub_100052DB0((v0 + 16));

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 296);
    v16 = *(v0 + 304);
    v17 = *(v0 + 288);
    *(v0 + 120) = v2;
    v18 = sub_10006F28C((v0 + 96));
    (*(v3 + 32))(v18, v1, v2);

    v19 = swift_dynamicCast();
    v20 = *(v16 + 56);
    if (v19)
    {
      v21 = *(v0 + 312);
      v22 = *(v0 + 320);
      v23 = *(v0 + 288);
      v24 = *(v0 + 192);
      v20(v23, 0, 1, *(v0 + 296));
      sub_10006F2F0(v23, v21);
      v25 = sub_1000C96A4();
      v26 = sub_1000C9CC4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Getting PostITN results", v27, 2u);
      }

      v137 = *(v0 + 616);
      v28 = *(v0 + 312);
      v29 = *(v0 + 296);
      v31 = *(v0 + 272);
      v30 = *(v0 + 280);
      v32 = *(v0 + 224);
      v33 = *(v0 + 232);
      v35 = *(v0 + 208);
      v34 = *(v0 + 216);
      v135 = *(v0 + 200);

      v36 = *(v33 + 16);
      v36(v30, v28, v32);
      v134 = v36;
      v36(v31, v28 + *(v29 + 20), v32);
      sub_1000C97E4();
      v37 = (*(v35 + 88))(v34, v135);
      if (v37 == v137)
      {
        v38 = [objc_opt_self() shared];
        [v38 asrPartialResultReceived];
        v39 = *(v0 + 320);
        v40 = *(v0 + 192);

        v41 = sub_1000C96A4();
        v42 = sub_1000C9CC4();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "SpeechAnalyzer partial results", v43, 2u);
        }

        v44 = *(v0 + 320);
        v46 = *(v0 + 272);
        v45 = *(v0 + 280);
        v48 = *(v0 + 256);
        v47 = *(v0 + 264);
        v49 = *(v0 + 224);
        v50 = *(v0 + 192);

        sub_100053C64(0, &qword_10010E200, SRDTranscriptionResult_ptr);
        v134(v47, v46, v49);
        v134(v48, v45, v49);
        v51 = sub_10005C6E4(v47, v48, 1);
        v52 = sub_1000C96A4();
        v53 = sub_1000C9CC4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412290;
          *(v54 + 4) = v51;
          *v55 = v51;
          v56 = v51;
          _os_log_impl(&_mh_execute_header, v52, v53, "Called the callback with partial results = %@", v54, 0xCu);
          sub_100057214(v55, &unk_10010DF10, &unk_1000D1820);
        }

        v57 = *(v0 + 192);

        v58 = (*((swift_isaMask & *v57) + 0xD0))();
        if (v58)
        {
          v59 = v58;
          [v58 didRecognizePartialResults:v51];
          v60 = *(v0 + 312);
          v62 = *(v0 + 272);
          v61 = *(v0 + 280);
          v63 = *(v0 + 224);
          v64 = *(v0 + 232);

          v65 = *(v64 + 8);
          v65(v62, v63);
          v65(v61, v63);
          sub_10006F354(v60);
        }

        else
        {
          v111 = *(v0 + 312);
          v113 = *(v0 + 272);
          v112 = *(v0 + 280);
          v114 = *(v0 + 224);
          v115 = *(v0 + 232);

          v116 = *(v115 + 8);
          v116(v113, v114);
          v116(v112, v114);
          sub_10006F354(v111);
        }
      }

      else if (v37 == *(v0 + 620))
      {
        v78 = [objc_opt_self() shared];
        [v78 asrFinalResultReceived];
        v79 = *(v0 + 320);
        v80 = *(v0 + 192);

        v81 = sub_1000C96A4();
        v82 = sub_1000C9CC4();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v81, v82, "SpeechAnalyzer finalAndTerminal results", v83, 2u);
        }

        v84 = *(v0 + 320);
        v85 = *(v0 + 272);
        v87 = *(v0 + 240);
        v86 = *(v0 + 248);
        v88 = *(v0 + 224);
        v89 = *(v0 + 192);

        v134(v86, v85, v88);
        v134(v87, v85, v88);
        v90 = v89;
        v91 = sub_1000C96A4();
        v92 = sub_1000C9CC4();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = *(v0 + 328);
          v95 = *(v0 + 240);
          v94 = *(v0 + 248);
          v96 = *(v0 + 224);
          v97 = *(v0 + 232);
          v98 = *(v0 + 192);
          v99 = swift_slowAlloc();
          *v99 = 134218496;
          *(v99 + 4) = *&v98[v93];

          *(v99 + 12) = 2048;
          sub_1000C9814();
          v100 = *(v0 + 568);
          v101 = *(v97 + 8);
          v101(v94, v96);
          *(v99 + 14) = v100;
          *(v99 + 22) = 2048;
          sub_1000C9814();
          v102 = sub_1000C9CB4();
          v138 = v101;
          v101(v95, v96);
          *(v99 + 24) = v102;
          _os_log_impl(&_mh_execute_header, v91, v92, "SpeechDonation ::totalSamplesSent =%lld ::newUtteranceBeginSampleNumber :: start = %lld :: newUtteranceEndSampleNumber = %lld", v99, 0x20u);

          v103 = *(v0 + 192);
        }

        else
        {
          v117 = *(v0 + 248);
          v118 = *(v0 + 224);
          v119 = *(*(v0 + 232) + 8);
          v119(*(v0 + 240), v118);
          v138 = v119;
          v119(v117, v118);

          v103 = *(v0 + 192);
          v91 = v103;
        }

        v120 = *(v0 + 328);
        v121 = *(v0 + 272);

        sub_1000C9814();
        v122 = *(v0 + 472);
        sub_1000C9814();
        v123 = sub_1000C9CB4();
        v124 = *(&v103->isa + v120);
        v125 = (*((swift_isaMask & v103->isa) + 0xD0))();
        [v125 didGetUtteranceBoundary:v122 utteranceEndSampleNumber:v123 totalSamplesSentToASR:v124];
        v136 = *(v0 + 312);
        v127 = *(v0 + 272);
        v126 = *(v0 + 280);
        v129 = *(v0 + 256);
        v128 = *(v0 + 264);
        v130 = *(v0 + 224);
        v131 = *(v0 + 232);
        v133 = *(v0 + 192);

        sub_100053C64(0, &qword_10010E200, SRDTranscriptionResult_ptr);
        v134(v128, v127, v130);
        v134(v129, v126, v130);
        v132 = sub_10005C6E4(v128, v129, 0);
        sub_100065540(v132);

        v138(v127, v130);
        v138(v126, v130);
        sub_10006F354(v136);
      }

      else
      {
        v104 = *(v0 + 312);
        v105 = *(v0 + 280);
        v106 = *(v0 + 224);
        v108 = *(v0 + 208);
        v107 = *(v0 + 216);
        v109 = *(v0 + 200);
        v110 = *(*(v0 + 232) + 8);
        v110(*(v0 + 272), v106);
        v110(v105, v106);
        sub_10006F354(v104);
        (*(v108 + 8))(v107, v109);
      }
    }

    else
    {
      v66 = *(v0 + 288);
      v20(v66, 1, 1, *(v0 + 296));
      sub_100057214(v66, &qword_10010E1F0, &qword_1000D2068);
    }

    v67 = *(v0 + 80);
    v68 = *(v0 + 88);
    *(v0 + 336) = v67;
    *(v0 + 344) = v68;
    sub_10006F23C(v0 + 56, v67);
    *(v0 + 352) = swift_getAssociatedTypeWitness();
    v69 = sub_1000C9D74();
    *(v0 + 360) = v69;
    v70 = *(v69 - 8);
    *(v0 + 368) = v70;
    v71 = *(v70 + 64) + 15;
    v72 = swift_task_alloc();
    *(v0 + 376) = v72;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 384) = AssociatedTypeWitness;
    v74 = *(AssociatedTypeWitness - 8);
    *(v0 + 392) = v74;
    *(v0 + 400) = *(v74 + 64);
    v75 = swift_task_alloc();
    *(v0 + 408) = v75;
    v76 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v77 = swift_task_alloc();
    *(v0 + 416) = v77;
    *v77 = v0;
    v77[1] = sub_10006B458;

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v72, 0, 0, v75, v67, v68);
  }
}

uint64_t sub_10006C144()
{
  v1 = v0[51];
  v2 = v0[48];
  v3 = v0[49];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[50] + 15;
  v7 = swift_task_alloc();
  v8 = *(v3 + 32);
  v8(v7, v1, v2);
  swift_getAssociatedConformanceWitness();
  if (sub_1000C9EA4())
  {
    (*(v0[49] + 8))(v7, v0[48]);
  }

  else
  {
    v9 = v0[48];
    swift_allocError();
    v8(v10, v7, v9);
  }

  v11 = v0[51];
  v12 = v0[47];
  v13 = v0[40];
  v14 = v0[24];

  sub_100052DB0(v0 + 7);
  swift_errorRetain();
  v15 = sub_1000C96A4();
  v16 = sub_1000C9CD4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "Speech API Recognition Error = %@", v17, 0xCu);
    sub_100057214(v18, &unk_10010DF10, &unk_1000D1820);
  }

  swift_getErrorValue();
  v21 = v0[16];
  v20 = v0[17];
  v22 = v0[18];
  if (sub_1000C9EF4() == 0x726F727245524145 && v23 == 0xEE006E69616D6F44)
  {

    goto LABEL_10;
  }

  v24 = sub_1000C9EB4();

  if (v24)
  {
LABEL_10:
    swift_getErrorValue();
    v26 = v0[19];
    v25 = v0[20];
    v27 = v0[21];
    if (sub_1000C9EE4())
    {
      goto LABEL_12;
    }
  }

  v28 = v0[24];
  sub_1000656C8();
LABEL_12:

  v29 = v0[39];
  v31 = v0[35];
  v30 = v0[36];
  v33 = v0[33];
  v32 = v0[34];
  v35 = v0[31];
  v34 = v0[32];
  v36 = v0[30];
  v37 = v0[27];
  sub_100052DB0(v0 + 2);

  v38 = v0[1];

  return v38();
}

void *sub_10006C49C(uint64_t a1)
{
  v2 = sub_1000C97D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100052CBC(&qword_10010E1C0, &qword_1000D2040);
    v10 = sub_1000C9DF4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10006F3B0(&qword_10010E1C8, &type metadata accessor for Transcriber.ReportingOption);
      v18 = sub_1000C9AD4();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10006F3B0(&qword_10010E1D0, &type metadata accessor for Transcriber.ReportingOption);
          v25 = sub_1000C9AE4();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_10006C7BC(uint64_t a1)
{
  v2 = sub_1000C9844();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100052CBC(&qword_10010E1A8, &qword_1000D2038);
    v10 = sub_1000C9DF4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10006F3B0(&qword_10010E1B0, &type metadata accessor for Transcriber.TranscriptionOption);
      v18 = sub_1000C9AD4();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10006F3B0(&qword_10010E1B8, &type metadata accessor for Transcriber.TranscriptionOption);
          v25 = sub_1000C9AE4();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10006CADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C9844();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v9, v16, v4);
      sub_100068FC0(v11, v9);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

id sub_10006CC3C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v129 = a5;
  LODWORD(v140) = a4;
  v132 = a3;
  *&v139 = a2;
  v119 = a1;
  v6 = sub_1000C96D4();
  v137 = *(v6 - 8);
  v138 = v6;
  v7 = *(v137 + 64);
  __chkstk_darwin(v6);
  v136 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100052CBC(&qword_10010E230, &qword_1000D2098);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v117 = &v111 - v11;
  v115 = sub_1000C9964();
  v114 = *(v115 - 8);
  v12 = *(v114 + 64);
  __chkstk_darwin(v115);
  v116 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C9C34();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v113 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100052CBC(&qword_10010DF38, &qword_1000D1DF0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v135 = &v111 - v19;
  v128 = sub_100052CBC(&qword_10010DF70, &qword_1000D1EA0);
  v127 = *(v128 - 8);
  v20 = *(v127 + 64);
  __chkstk_darwin(v128);
  v124 = &v111 - v21;
  v126 = sub_100052CBC(&qword_10010DF48, &qword_1000D1E00);
  v125 = *(v126 - 8);
  v22 = *(v125 + 64);
  __chkstk_darwin(v126);
  v123 = &v111 - v23;
  v142 = sub_100052CBC(&qword_10010DF40, &qword_1000D1DF8);
  v130 = *(v142 - 8);
  v24 = *(v130 + 64);
  __chkstk_darwin(v142);
  v143 = &v111 - v25;
  v134 = sub_1000C97A4();
  v133 = *(v134 - 8);
  v26 = *(v133 + 64);
  v27 = __chkstk_darwin(v134);
  v141 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v144 = &v111 - v29;
  v30 = sub_100052CBC(&qword_10010E238, &qword_1000D20A0);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v111 - v35;
  v118 = sub_1000C97C4();
  v37 = *(v118 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v118);
  v40 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000C9564();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v45 = &v111 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__logger;
  sub_1000C96B4();
  swift_unknownObjectWeakInit();
  v46 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__taskHint;
  v47 = sub_1000C9A64();
  (*(*(v47 - 8) + 56))(&v5[v46], 1, 1, v47);
  v48 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisOptions;
  v49 = sub_1000C9984();
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v112 = v48;
  v122 = v49;
  v121 = v51;
  v120 = v50 + 56;
  (v51)(&v5[v48], 1, 1);
  *&v5[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__totalSamplesSent] = 0;
  *&v5[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__newUtteranceBeginSampleNumber] = 0;
  sub_1000C9554();
  v52 = v5;
  (*(v42 + 32))(&v5[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__locale], v45, v41);
  v53 = sub_1000C94D4();
  v54 = *(*(v53 - 8) + 56);
  v54(v36, 1, 1, v53);
  v54(v34, 1, 1, v53);
  sub_1000C97B4();
  (*(v37 + 32))(&v52[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__modelOptions], v40, v118);
  sub_100052CBC(&qword_10010DF78, &qword_1000D1EA8);
  v55 = sub_1000C97D4();
  v56 = *(v55 - 8);
  v57 = *(v56 + 72);
  v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1000D1DC0;
  v60 = v59 + v58;
  v61 = *(v56 + 104);
  v61(v60, enum case for Transcriber.ReportingOption.multisegmentResults(_:), v55);
  v61(v60 + v57, enum case for Transcriber.ReportingOption.alternativeTranscriptions(_:), v55);
  v61(v60 + 2 * v57, enum case for Transcriber.ReportingOption.volatileResults(_:), v55);
  v62 = sub_10006C49C(v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v145 = v52;
  *&v52[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__reportingOptions] = v62;
  v140 = sub_100052CBC(&qword_10010DF60, &qword_1000D1E40);
  v63 = sub_1000C9844();
  v64 = *(v63 - 8);
  v65 = *(v64 + 72);
  v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v67 = swift_allocObject();
  v139 = xmmword_1000D1DB0;
  *(v67 + 16) = xmmword_1000D1DB0;
  v68 = *(v64 + 104);
  v68(v67 + v66, enum case for Transcriber.TranscriptionOption.contextualizedTranscription(_:), v63);
  v69 = sub_10006C7BC(v67);
  swift_setDeallocating();
  v70 = *(v64 + 8);
  v70(v67 + v66, v63);
  swift_deallocClassInstance();
  v118 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPostITN;
  *&v145[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPostITN] = v69;
  v119 = v65;
  v71 = swift_allocObject();
  *(v71 + 16) = v139;
  v111 = v68;
  v68(v71 + v66, enum case for Transcriber.TranscriptionOption.normalizedTranscription(_:), v63);
  v72 = sub_10006C7BC(v71);
  swift_setDeallocating();
  v70(v71 + v66, v63);
  swift_deallocClassInstance();
  *&v145[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__transcriptionOptionsPreITN] = v72;
  if (v129)
  {
    v73 = v145;
    v74 = v118;
    swift_beginAccess();
    v75 = *&v73[v74];
    v76 = swift_allocObject();
    *(v76 + 16) = v139;
    v111(v76 + v66, enum case for Transcriber.TranscriptionOption.emoji(_:), v63);

    v77 = sub_10006CADC(v76, v75);
    swift_setDeallocating();
    v70(v76 + v66, v63);
    swift_deallocClassInstance();
    v78 = *&v73[v74];
    *&v73[v74] = v77;
  }

  v79 = v144;
  sub_1000C9794();
  sub_1000C98A4();
  v80 = v127;
  v81 = v124;
  v82 = v128;
  (*(v127 + 104))(v124, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v128);
  v83 = v143;
  v84 = v123;
  sub_1000C9C44();
  (*(v80 + 8))(v81, v82);
  v85 = OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__inputStream;
  v86 = v130;
  v87 = v145;
  v88 = v142;
  (*(v130 + 32))(&v145[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__inputStream], v83, v142);
  (*(v125 + 32))(&v87[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__inputStreamBuilder], v84, v126);
  v89 = sub_1000C9944();
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  *&v87[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__analysisContext] = sub_1000C9934();
  if (v132)
  {
    sub_1000C9C14();
    (*(v114 + 104))(v116, enum case for AnalysisOptions.ModelRetention.whileInUse(_:), v115);
    v92 = sub_1000C9954();
    (*(*(v92 - 8) + 56))(v117, 1, 1, v92);
    v93 = v135;
    sub_1000C9974();
    v121(v93, 0, 1, v122);
    v94 = v112;
    swift_beginAccess();
    sub_10006F3F8(v93, &v87[v94], &qword_10010DF38, &qword_1000D1DF0);
    swift_endAccess();
    sub_1000C9734();
    v95 = v133;
    v96 = v134;
    (*(v133 + 16))(v141, v144);
    (*(v86 + 16))(v143, &v87[v85], v88);
    v97 = v136;
    if (qword_10010E6E8 != -1)
    {
      swift_once();
    }

    v98 = qword_10010E6F0;
    sub_100057274(&v87[v94], v93, &qword_10010DF38, &qword_1000D1DF0);
  }

  else
  {
    sub_1000C9734();
    v95 = v133;
    v99 = v79;
    v96 = v134;
    (*(v133 + 16))(v141, v99, v134);
    (*(v86 + 16))(v83, &v87[v85], v88);
    v97 = v136;
    v100 = v135;
    if (qword_10010E6E8 != -1)
    {
      swift_once();
    }

    v98 = qword_10010E6F0;
    v121(v100, 1, 1, v122);
  }

  v101 = *(v89 + 48);
  v102 = *(v89 + 52);
  swift_allocObject();
  v103 = v98;
  sub_1000C9934();
  sub_10006F1B0(&qword_10010DF90, &qword_10010DF40, &qword_1000D1DF8);
  *&v87[OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__speechAnalyzer] = sub_1000C9724();
  v105 = v137;
  v104 = v138;
  (*(v137 + 16))(v97, &v87[v131], v138);
  v106 = sub_1000C96A4();
  v107 = sub_1000C9CE4();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&_mh_execute_header, v106, v107, "SpeechAnalyzer initialized", v108, 2u);
  }

  (*(v105 + 8))(v97, v104);
  (*(v95 + 8))(v144, v96);
  v109 = type metadata accessor for RDSAPISwiftSpeechAnalyzer(0);
  v146.receiver = v87;
  v146.super_class = v109;
  return objc_msgSendSuper2(&v146, "init");
}

uint64_t sub_10006DDE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006DE28()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000572E0;

  return sub_10005FBB8();
}

uint64_t sub_10006DEDC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000572E0;

  return sub_100062908(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10006DF88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10006DFDC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000572E0;

  return sub_100062E6C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10006E084(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10006E0D8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000572E0;

  return sub_100063370(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10006E184()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000572E0;

  return sub_100063D2C(v4, v5, v6, v2, v3);
}

uint64_t sub_10006E21C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000572E0;

  return sub_100064BD0(v4, v5, v6, v2, v3);
}

uint64_t sub_10006E31C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006E36C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100056BBC;

  return sub_10006660C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10006E424()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_10006E464(uint64_t a1, uint64_t *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  swift_beginAccess();
  if (*(v4 + 16))
  {
    v6 = 0;
    v7 = 1;
    if (v5)
    {
      v7 = 2;
    }
  }

  else
  {
    swift_beginAccess();
    *(v4 + 16) = 1;
    v8 = v6;
    v7 = 0;
  }

  *a2 = v7;
  return v6;
}

uint64_t sub_10006E4FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006E528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C9834();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10006E5A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C9834();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10006E618()
{
  result = sub_1000C9834();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10006E68C()
{
  v0 = sub_1000C96D4();
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    v2 = sub_1000C9564();
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_10006E984(319, &qword_10010E068, &type metadata accessor for TaskHint, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        v6 = sub_1000C97C4();
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_10006E984(319, &qword_10010E070, &type metadata accessor for AnalysisOptions, &type metadata accessor for Optional);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_10006E984(319, &qword_10010E078, &type metadata accessor for AnalyzerInput, &type metadata accessor for AsyncStream);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_10006E984(319, &qword_10010E080, &type metadata accessor for AnalyzerInput, &type metadata accessor for AsyncStream.Continuation);
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10006E984(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10006E9F0()
{
  sub_10006E984(319, &qword_10010E078, &type metadata accessor for AnalyzerInput, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10006E984(319, &qword_10010E080, &type metadata accessor for AnalyzerInput, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10006EB24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006EB6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10006DF88(a1, a2);
  }

  return a1;
}

uint64_t sub_10006EB80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_10006DF88(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006EBCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006EC14()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006EC54()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100056BBC;

  return sub_100062488(v2, v4, v3);
}

uint64_t sub_10006ED0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000572E0;

  return sub_1000689FC(v2, v3, v5);
}

uint64_t sub_10006EDCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000572E0;

  return sub_100068AE4(a1, v4, v5, v7);
}

uint64_t sub_10006EE98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006EED0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000572E0;

  return sub_100068EC8(a1, v5);
}

uint64_t sub_10006EF88()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006EFD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000572E0;

  return sub_1000616AC(v2, v3, v4);
}

uint64_t sub_10006F084()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006F0C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000572E0;

  return sub_1000603D0(v2, v3);
}

uint64_t sub_10006F170()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006F1B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100052D68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10006F1F8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10006F23C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *sub_10006F28C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10006F2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSAPICombinedTranscriberResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006F354(uint64_t a1)
{
  v2 = type metadata accessor for RDSAPICombinedTranscriberResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006F3B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006F3F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100052CBC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t *sub_10006F460(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_10006F508(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 16) | *(a2 + 16))
  {
    operator new();
  }

  v4 = sub_1000C8230();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "cmdp_edit_distance::editfst1 : EMPTY Symbol set", buf, 2u);
  }

  *a3 = 0;
}

void sub_10006F778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_100027CE4(&a22);
  _Unwind_Resume(a1);
}

void sub_10006F7E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  sub_10006F508(a1, &v2, a2);
  sub_100017598(&v2, v3[0]);
}

void sub_10006F844(uint64_t a1)
{
  v1 = *(*a1 + 8);
  v2 = *(*a1 + 16);
  v8 = v1;
  v9 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    v1 = v8;
  }

  v7 = off_100101090;
  v3 = v1[8] - v1[7];
  if ((v3 >> 3) >= 1)
  {
    v4 = 0;
    v5 = (v3 >> 3) & 0x7FFFFFFF;
    do
    {
      if (*(*(v8[7] + 8 * v4) + 32) != *(*(v8[7] + 8 * v4) + 24))
      {
        v6 = *sub_10002B564();
        sub_10002E640(&v7);
        v10 = v6;
        sub_10002E780(v8, v4, &v10);
      }

      ++v4;
    }

    while (v5 != v4);
  }

  operator new();
}

void sub_10006F9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100016EC0(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006FA00(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  v5 = sub_1000C8230();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "cmdp_fst_util::prefixAcceptingFst : null FSTs", buf, 2u);
  }

  *a3 = 0;
}

void sub_10006FDE4(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    operator new();
  }

  v3 = sub_1000C8230();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "cmdp_edit_distance::editfst2 : EMPTY Symbol set", buf, 2u);
  }

  *a2 = 0;
}

void sub_100070100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_100027CE4(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_100070170@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100070C00;
  block[3] = &unk_100100EC0;
  block[4] = a1;
  if (qword_10010E7A8 != -1)
  {
    dispatch_once(&qword_10010E7A8, block);
  }

  if (!qword_10010E7A0)
  {
    v43 = sub_1000C8230();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315138;
      *&__p[4] = a1;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Unable to read synonyms FST for %s", __p, 0xCu);
    }

    operator new();
  }

  v10 = (*(*qword_10010E7A0 + 72))(qword_10010E7A0, 0);
  *a5 = v10;
  v11 = (*(*v10 + 16))(v10);
  v12 = (*(*v10 + 96))(v10);
  v13 = (*(*v12 + 16))(v12);
  v14 = (*(*v10 + 104))(v10);
  v15 = (*(*v14 + 16))(v14);
  v18 = *a2;
  v16 = a2 + 1;
  v17 = v18;
  if (v18 != v16)
  {
    do
    {
      v19 = (*(*v13 + 32))(v13, v17 + 4);
      v20 = (*(*v15 + 32))(v15, v17 + 4);
      v10 = *a5;
      *__p = v19;
      *&__p[4] = v20;
      *&__p[8] = 0;
      v46 = v11;
      (*(*v10 + 184))(v10, v11, __p);
      v21 = v17[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v17[2];
          v23 = *v22 == v17;
          v17 = v22;
        }

        while (!v23);
      }

      v17 = v22;
    }

    while (v22 != v16);
  }

  v26 = *a3;
  v24 = a3 + 1;
  v25 = v26;
  if (v26 != v24)
  {
    do
    {
      v27 = (*(*v13 + 32))(v13, v25 + 4);
      v28 = (*(*v15 + 32))(v15, v25 + 4);
      v10 = *a5;
      *__p = v27;
      *&__p[4] = v28;
      *&__p[8] = 0;
      v46 = v11;
      (*(*v10 + 184))(v10, v11, __p);
      v29 = v25[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v25[2];
          v23 = *v30 == v25;
          v25 = v30;
        }

        while (!v23);
      }

      v25 = v30;
    }

    while (v30 != v24);
  }

  v33 = *a4;
  v31 = a4 + 1;
  v32 = v33;
  if (v33 != v31)
  {
    do
    {
      v34 = (*(*v13 + 32))(v13, v32 + 4);
      v35 = (*(*v15 + 32))(v15, v32 + 4);
      v10 = *a5;
      *__p = v34;
      *&__p[4] = v35;
      *&__p[8] = 0;
      v46 = v11;
      (*(*v10 + 184))(v10, v11, __p);
      v36 = v32[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v32[2];
          v23 = *v37 == v32;
          v32 = v37;
        }

        while (!v23);
      }

      v32 = v37;
    }

    while (v37 != v31);
  }

  sub_1000113AC(__p, off_10010E248);
  v38 = (*(*v13 + 32))(v13, __p);
  if (v47 < 0)
  {
    operator delete(*__p);
  }

  sub_1000113AC(__p, off_10010E248);
  v39 = (*(*v15 + 32))(v15, __p);
  if (v47 < 0)
  {
    operator delete(*__p);
  }

  *__p = v38;
  *&__p[4] = v39;
  *&__p[8] = 0;
  v46 = v11;
  (*(*v10 + 184))(v10, v11, __p);
  sub_1000113AC(__p, off_10010E240[0]);
  v40 = (*(*v13 + 32))(v13, __p);
  if (v47 < 0)
  {
    operator delete(*__p);
  }

  sub_1000113AC(__p, off_10010E240[0]);
  v41 = (*(*v15 + 32))(v15, __p);
  if (v47 < 0)
  {
    operator delete(*__p);
  }

  *__p = v40;
  *&__p[4] = v41;
  *&__p[8] = 0;
  v46 = v11;
  (*(*v10 + 184))(v10, v11, __p);
  (*(*v10 + 256))(v10, v13);
  (*(*v10 + 264))(v10, v15);
  (*(*v13 + 8))(v13);
  return (*(*v15 + 8))(v15);
}

void sub_100070AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_100027CE4(&a16);
  _Unwind_Resume(a1);
}

void sub_100070C00(uint64_t a1)
{
  v1 = *(a1 + 32);
  MainBundle = CFBundleGetMainBundle();
  v3 = CFBundleCopyResourceURL(MainBundle, @"CommandProcessingResources.bundle", 0, 0);
  if (v3)
  {
    v4 = v3;
    v5 = CFBundleCreate(kCFAllocatorDefault, v3);
    CFRelease(v4);
    v6 = CFStringCreateWithCString(0, v1, 0x8000100u);
    CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, v6);
    CFRelease(v6);
    if (CFStringHasPrefix(CanonicalLocaleIdentifierFromString, @"en"))
    {
      v8 = @"en";
    }

    else
    {
      v8 = CanonicalLocaleIdentifierFromString;
    }

    MutableCopy = CFStringCreateMutableCopy(0, 0, v8);
    CFStringAppend(MutableCopy, @"_");
    CFStringAppend(MutableCopy, @"synonym.fst");
    v12 = CFBundleCopyResourceURL(v5, MutableCopy, 0, 0);
    CFRelease(CanonicalLocaleIdentifierFromString);
    CFRelease(MutableCopy);
    CFRelease(v5);
    if (v12)
    {
      v13 = CFURLGetString(v12);
      v14 = CFStringCreateMutableCopy(0, 0, v13);
      CFRelease(v12);
      v20.location = 0;
      v20.length = 7;
      CFStringDelete(v14, v20);
      sub_1000B9AE4(v14, 0, __p);
      CFRelease(v14);
      goto LABEL_13;
    }

    v9 = sub_1000C8230();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "cmdp_edit_distance::synonymDictionary : Unable to access synonym URL";
      goto LABEL_11;
    }
  }

  else
  {
    v9 = sub_1000C8230();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "cmdp_edit_distance::synonymDictionary : Unable to access resource URL";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    }
  }

  sub_1000113AC(__p, "");
LABEL_13:
  v15 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v15 = __p[1];
  }

  if (v15)
  {
    qword_10010E7A0 = sub_100070E90(__p);
  }

  else
  {
    v16 = sub_1000C8230();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Empty synonym Plist FST", buf, 2u);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100070E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100070E90(uint64_t a1)
{
  if (sub_100073AE8(a1))
  {
    operator new();
  }

  return 0;
}

void sub_100070F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100016EC0(a10);
  }

  operator delete();
}

unint64_t sub_100070F78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (byte_10010E8AC == 1)
  {
    v6 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
    v7 = sub_100071124(a1, a2, a3, 0);
    if (!sub_10002B368(v6, v7))
    {
      if (byte_10010E280 == 1)
      {
        sub_1000113AC(__p, "FATAL");
      }

      else
      {
        sub_1000113AC(__p, "ERROR");
      }

      sub_10002B1D4(&v12, __p);
      v9 = sub_10002AE44(&std::cerr, "TestProperties: stored FST properties incorrect", 47);
      sub_10002AE44(v9, " (stored: props1, computed: props2)", 35);
      sub_10002B280(&v12);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return sub_100071124(a1, a2, a3, 1);
  }
}

void sub_1000710EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100071124(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v9 = v8;
  if (a4)
  {
    v10 = v8 & 0xFFFFFFFF0000 | (2 * v8) & 0xAAAAAAAA0000 | (v8 >> 1) & 0x555555550000 | 7;
    if ((a2 & ~v10) == 0)
    {
      if (a3)
      {
        *a3 = v10;
      }

      return v9;
    }
  }

  v9 = v8 & 7;
  v43 = 0;
  v44 = v9;
  v41 = 0;
  v42 = 0;
  v11 = a2 & 0xCF3C00000000;
  if ((a2 & 0xCF3C00000000) != 0)
  {
    v36 = &v41;
    *&v37 = 0;
    *(&v37 + 1) = &v44;
    v39 = 0u;
    v40 = 0u;
    sub_100071A64(a1, &v36);
  }

  if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
  {
    goto LABEL_92;
  }

  v31 = 0;
  v12 = 0x10425A810000;
  if ((a2 & 0xC0000) != 0)
  {
    v12 = 0x10425A850000;
  }

  v13 = v9 | v12;
  if ((a2 & 0x300000) != 0)
  {
    v13 |= 0x100000uLL;
  }

  v44 = v13;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  (*(*a1 + 112))(a1, &v31);
  v14 = 0;
LABEL_13:
  if (!v31)
  {
    if (v33 >= v32)
    {
      goto LABEL_84;
    }

    goto LABEL_18;
  }

  if (!(*(*v31 + 16))(v31))
  {
    if (v31)
    {
      v15 = (*(*v31 + 24))();
LABEL_19:
      if ((a2 & 0xC0000) != 0)
      {
        operator new();
      }

      if ((a2 & 0x300000) != 0)
      {
        operator new();
      }

      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      (*(*a1 + 120))(a1, v15, &v36);
      v16 = 1;
      while (v36)
      {
        if ((*(*v36 + 16))(v36))
        {
          if (v36)
          {
            (*(*v36 + 8))();
            goto LABEL_71;
          }

LABEL_69:
          if (*(&v37 + 1))
          {
            --**(&v37 + 1);
          }

LABEL_71:
          if (v14 > 0)
          {
            v44 = v44 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          (*(*a1 + 24))(&v45, a1, v15);
          v27 = sub_10002B59C();
          LODWORD(v36) = v45;
          HIDWORD(v45) = *v27;
          if (*&v45 == *(&v45 + 1))
          {
            if ((*(*a1 + 32))(a1, v15, *&v45) != 1)
            {
              v44 = v44 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
            }
          }

          else
          {
            v28 = sub_10002B564();
            LODWORD(v36) = v45;
            HIDWORD(v45) = *v28;
            v29.n128_u32[0] = v45;
            if (*&v45 != *(&v45 + 1))
            {
              v44 = v44 & 0xFFFFFFFCFFFFFFFFLL | &_mh_execute_header;
            }

            ++v14;
          }

          if (v31)
          {
            (*(*v31 + 32))(v31, v29);
          }

          else
          {
            ++v33;
          }

          goto LABEL_13;
        }

        if (!v36)
        {
          goto LABEL_29;
        }

        v17 = (*(*v36 + 24))();
LABEL_30:
        if (v35 && sub_100072A48(v35, v17))
        {
          v44 = v44 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
        }

        if (v34 && sub_100072A48(v34, v17 + 1))
        {
          v44 = v44 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
        }

        v18 = *v17;
        v19 = *v17;
        if (*v17 != v17[1])
        {
          v44 = v44 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
          v19 = v17[1];
        }

        if (v18 | v19)
        {
          if (v18)
          {
            if (!v19)
            {
              goto LABEL_46;
            }

            goto LABEL_42;
          }

          v20 = v44;
        }

        else
        {
          v20 = v44 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
        }

        v44 = v20 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
        if (!v19)
        {
LABEL_46:
          v44 = v44 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
          if (v16)
          {
            goto LABEL_51;
          }

          goto LABEL_47;
        }

LABEL_42:
        if (v16)
        {
          goto LABEL_51;
        }

LABEL_47:
        if (v18 < v11)
        {
          v44 = v44 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
        }

        if (v19 < SHIDWORD(v11))
        {
          v44 = v44 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
        }

LABEL_51:
        v21 = sub_10002B564();
        HIDWORD(v45) = v17[2];
        LODWORD(v45) = *v21;
        v22.n128_u32[0] = HIDWORD(v45);
        if (*(&v45 + 1) != *&v45)
        {
          v23 = sub_10002B59C();
          HIDWORD(v45) = v17[2];
          LODWORD(v45) = *v23;
          v22.n128_u32[0] = HIDWORD(v45);
          if (*(&v45 + 1) != *&v45)
          {
            v24 = v44;
            v25 = v44 & 0xFFFFFFFCFFFFFFFFLL | &_mh_execute_header;
            v44 = v25;
            if ((v24 & 0x800000000000) != 0 && v41[v15] == v41[v17[3]])
            {
              v44 = v25 & 0xFFFF3FFDFFFFFFFFLL | 0x400000000000;
            }
          }
        }

        v26 = v17[3];
        if (v26 <= v15)
        {
          v44 = v44 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
        }

        if (v26 != v15 + 1)
        {
          v44 = v44 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
        }

        v11 = *v17;
        if (v35)
        {
          sub_100072AFC(v35, v17);
        }

        if (v34)
        {
          sub_100072AFC(v34, v17 + 1);
        }

        if (v36)
        {
          (*(*v36 + 32))(v36, v22);
          v16 = 0;
        }

        else
        {
          v16 = 0;
          ++v38;
        }
      }

      if (v38 >= v37)
      {
        goto LABEL_69;
      }

LABEL_29:
      v17 = (*(&v36 + 1) + 16 * v38);
      goto LABEL_30;
    }

LABEL_18:
    v15 = v33;
    goto LABEL_19;
  }

  if (v31)
  {
    (*(*v31 + 8))();
  }

LABEL_84:
  if ((*(*a1 + 16))(a1) != -1 && (*(*a1 + 16))(a1))
  {
    v44 = v44 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
  }

  if (v34)
  {
    sub_10001A12C(v34);
    operator delete();
  }

  if (v35)
  {
    sub_10001A12C(v35);
    operator delete();
  }

  v9 = v44;
LABEL_92:
  if (a3)
  {
    *a3 = v9 & 0xFFFFFFFF0000 | (2 * v9) & 0xAAAAAAAA0000 | (v9 >> 1) & 0x555555550000 | 7;
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  return v9;
}

void sub_100071980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  sub_10002B518(va, 0);
  sub_10002B518(va1, 0);
  v9 = *(v7 - 128);
  if (v9)
  {
    *(v7 - 120) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10007231C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  sub_10002C1E4(&a23);
  sub_10002CC3C(&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000723D4(uint64_t a1)
{
  if ((*(*a1 + 56))(a1, 1, 0))
  {
    v2 = *(*a1 + 136);

    return v2(a1);
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  (*(*a1 + 112))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_100072564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1000750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10007257C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10002C638(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100072684(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10002C638(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_100072790(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10002C638(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100072898(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10002C638(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_1000729A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_10002CA6C(&v18, &v16, &v14, &v13);
}

uint64_t *sub_100072A48(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_100072AFC(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_100072D28(void *a1, void *a2, uint64_t a3)
{
  v29 = 0u;
  v30 = 0u;
  *v27 = 0u;
  *v28 = 0u;
  v6 = -1;
  v32 = 0;
  v33 = 0;
  v31 = -1;
  v31 = (*(*a1 + 16))(a1);
  v32 = -1;
  if (*(*a1 + 56))(a1, 1, 0) || (*(a3 + 28))
  {
    v6 = 0;
LABEL_4:
    v7 = 0;
    v32 = sub_1000723D4(a1);
    goto LABEL_5;
  }

  v25 = a2 + *(*a2 - 24);
  if ((v25[32] & 5) == 0)
  {
    (*(**(v25 + 5) + 32))(__p);
    v6 = v35;
    if (v35 != -1)
    {
      goto LABEL_4;
    }
  }

  v7 = 1;
LABEL_5:
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0004, 0);
  sub_1000113AC(__p, "vector");
  sub_10002CD58(a1, a2, a3, 2, __p, v8 | 3, &v26 + 4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v9 = *(a1[1] + 64) - *(a1[1] + 56);
  if ((v9 >> 3) < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (v9 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 24))(&v26, a1, v10);
      LODWORD(__p[0].__r_.__value_.__l.__data_) = v26;
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 32))(a1, v10);
      std::ostream::write();
      v12 = *(*(a1[1] + 56) + 8 * v10);
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      if (v13 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v12 + 24);
      }

      if (v13 != v14)
      {
        v16 = (v14 - v13) >> 4;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = (v15 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v18;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v18[1];
          std::ostream::write();
          v18 += 4;
          --v17;
        }

        while (v17);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v26, __p);
    v19 = sub_10002AE44(&std::cerr, "VectorFst::Write: Write failed: ", 32);
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = *(a3 + 8);
    }

    sub_10002AE44(v19, v21, v22);
LABEL_29:
    sub_10002B280(&v26);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v23 = 0;
    goto LABEL_32;
  }

  if (!v7)
  {
    if (v32 == v11)
    {
      v23 = 1;
      goto LABEL_32;
    }

    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v26, __p);
    sub_10002AE44(&std::cerr, "Inconsistent number of states observed during write", 51);
    goto LABEL_29;
  }

  v32 = v11;
  sub_1000113AC(__p, "vector");
  v23 = sub_10002CF84(a1, a2, a3, 2, __p, v8 | 3, &v26 + 4, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  if (SHIBYTE(v28[0]) < 0)
  {
    operator delete(v27[0]);
  }

  return v23;
}

uint64_t sub_100073260(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_1000732A4(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100016CB8();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_100073348(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001014A0;
  *(a1 + 8) = 0;
  sub_1000113AC((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *a1 = off_100101440;
  sub_1000113AC(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 96))(a2);
  sub_10002DDA4(a1, v4);
  v5 = (*(*a2 + 104))(a2);
  sub_10002DE44(a1, v5);
  *(a1 + 80) = (*(*a2 + 16))(a2);
  if ((*(*a2 + 56))(a2, 1, 0))
  {
    v6 = sub_1000723D4(a2);
    sub_10002E1F8((a1 + 56), v6);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  (*(*a2 + 112))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      sub_10002DEE4();
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 56))(a2, 0xFFFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t sub_1000738DC(unint64_t a1, int a2, float *a3, _DWORD *a4)
{
  v7 = *a3;
  v6 = *(a3 + 1);
  v8 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v6)
  {
    v8 = a1;
  }

  v9 = v8 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v6)
  {
    v9 = v8 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (v7 == 0.0)
  {
    v8 = v9;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 <= SLODWORD(v7))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v6)
    {
      v10 = v11 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }

    else
    {
      v10 = v11;
    }
  }

  if (a3[2] != *sub_10002B59C() && a3[2] != *sub_10002B564())
  {
    v10 = v10 & 0xFFFFFFFCFFFFFFFFLL | &_mh_execute_header;
  }

  if (*(a3 + 3) <= a2)
  {
    v12 = v10 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  else
  {
    v12 = v10;
  }

  if ((v12 & 0x4000000000) != 0)
  {
    return v12 & 0x45D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v12 & 0x45D7FFEB0007;
  }
}

uint64_t sub_100073A04(unint64_t a1, float *a2, float *a3)
{
  if (*a2 != *sub_10002B59C() && *a2 != *sub_10002B564())
  {
    a1 &= ~0x100000000uLL;
  }

  if (*a3 != *sub_10002B59C() && *a3 != *sub_10002B564())
  {
    a1 = a1 & 0xFFFFFFFCFFFFFFFFLL | &_mh_execute_header;
  }

  return a1 & 0xC3FFFFFF0007;
}

uint64_t sub_100073AE8(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    sub_1000113AC(__p, "standard input");
    sub_1000C89D8(__dst);
    sub_100073FB0();
  }

  sub_100073DE0(__dst, a1);
  if ((*(&__dst[4] + *(__dst[0] - 3)) & 5) == 0)
  {
    sub_1000C89D8(__p);
    sub_100073FB0();
  }

  sub_1000113AC(__p, "ERROR");
  sub_10002B1D4(&v10, __p);
  v3 = sub_10002AE44(&std::cerr, "ExpandedFst::Read: Can't open file: ", 36);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  sub_10002AE44(v3, v5, v6);
  sub_10002B280(&v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return 0;
}

void sub_100073D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100073DE0(void (__cdecl ***a1)(std::ifstream *__hidden this), uint64_t *a2))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  a1[1] = 0;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_100073F78(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100074370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_100073260(&a23);
  (*(*v23 + 8))(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_100074418(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = *(a3 + 24);
  if (v10)
  {
    *a5 = *v10;
    std::string::operator=((a5 + 8), (v10 + 8));
    std::string::operator=((a5 + 32), (v10 + 32));
    v11 = *(v10 + 88);
    v12 = *(v10 + 72);
    *(a5 + 56) = *(v10 + 56);
    *(a5 + 72) = v12;
    *(a5 + 88) = v11;
  }

  else
  {
    v13 = sub_1000C82AC(a5, a2, a3, 0);
    result = 0;
    if (!v13)
    {
      return result;
    }
  }

  if (dword_10010E8A8 >= 2)
  {
    sub_1000113AC(__p, "INFO");
    sub_10002B1D4(&v85, __p);
    v15 = sub_10002AE44(&std::cerr, "FstImpl::ReadHeader: source: ", 29);
    v16 = *(a3 + 23);
    v17 = v16 >= 0 ? a3 : *a3;
    v18 = v16 >= 0 ? *(a3 + 23) : *(a3 + 8);
    v19 = sub_10002AE44(v15, v17, v18);
    v20 = sub_10002AE44(v19, ", fst_type: ", 12);
    v21 = *(a5 + 31);
    v22 = v21 >= 0 ? a5 + 8 : *(a5 + 8);
    v23 = v21 >= 0 ? *(a5 + 31) : *(a5 + 16);
    v24 = sub_10002AE44(v20, v22, v23);
    v25 = sub_10002AE44(v24, ", arc_type: ", 12);
    v26 = sub_10002D384();
    v27 = *(v26 + 23);
    v28 = v27 >= 0 ? v26 : *v26;
    v29 = v27 >= 0 ? *(v26 + 23) : *(v26 + 8);
    v30 = sub_10002AE44(v25, v28, v29);
    sub_10002AE44(v30, ", version: ", 11);
    v31 = *(a5 + 56);
    v32 = std::ostream::operator<<();
    sub_10002AE44(v32, ", flags: ", 9);
    v33 = *(a5 + 60);
    std::ostream::operator<<();
    sub_10002B280(&v85);
    if (v84 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v34 = (a1 + 16);
  v35 = *(a5 + 31);
  if (v35 >= 0)
  {
    v36 = *(a5 + 31);
  }

  else
  {
    v36 = *(a5 + 16);
  }

  v37 = *(a1 + 39);
  v38 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v37 = *(a1 + 24);
  }

  if (v36 != v37 || (v35 >= 0 ? (v39 = (a5 + 8)) : (v39 = *(a5 + 8)), (v40 = *v34, v38 >= 0) ? (v41 = (a1 + 16)) : (v41 = *v34), memcmp(v39, v41, v36)))
  {
    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v85, __p);
    v42 = sub_10002AE44(&std::cerr, "FstImpl::ReadHeader: FST not of type ", 37);
    v43 = *(a1 + 39);
    if (v43 >= 0)
    {
      v44 = a1 + 16;
    }

    else
    {
      v44 = *(a1 + 16);
    }

    if (v43 >= 0)
    {
      v45 = *(a1 + 39);
    }

    else
    {
      v45 = *(a1 + 24);
    }

    v46 = sub_10002AE44(v42, v44, v45);
    v47 = sub_10002AE44(v46, ": ", 2);
    v48 = *(a3 + 23);
    if (v48 >= 0)
    {
      v49 = a3;
    }

    else
    {
      v49 = *a3;
    }

    if (v48 >= 0)
    {
      v50 = *(a3 + 23);
    }

    else
    {
      v50 = *(a3 + 8);
    }

LABEL_50:
    sub_10002AE44(v47, v49, v50);
    sub_10002B280(&v85);
    if (v84 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v51 = sub_10002D384();
  v52 = *(a5 + 55);
  if (v52 >= 0)
  {
    v53 = *(a5 + 55);
  }

  else
  {
    v53 = *(a5 + 40);
  }

  v54 = *(v51 + 23);
  v55 = v54;
  if ((v54 & 0x80u) != 0)
  {
    v54 = *(v51 + 8);
  }

  if (v53 != v54 || (v52 >= 0 ? (v56 = (a5 + 32)) : (v56 = *(a5 + 32)), v55 >= 0 ? (v57 = v51) : (v57 = *v51), memcmp(v56, v57, v53)))
  {
    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v85, __p);
    v58 = sub_10002AE44(&std::cerr, "FstImpl::ReadHeader: Arc not of type ", 37);
    v59 = sub_10002D384();
    v60 = *(v59 + 23);
    if (v60 >= 0)
    {
      v61 = v59;
    }

    else
    {
      v61 = *v59;
    }

    if (v60 >= 0)
    {
      v62 = *(v59 + 23);
    }

    else
    {
      v62 = *(v59 + 8);
    }

    v63 = sub_10002AE44(v58, v61, v62);
    v47 = sub_10002AE44(v63, ": ", 2);
    v64 = *(a3 + 23);
    if (v64 >= 0)
    {
      v49 = a3;
    }

    else
    {
      v49 = *a3;
    }

    if (v64 >= 0)
    {
      v50 = *(a3 + 23);
    }

    else
    {
      v50 = *(a3 + 8);
    }

    goto LABEL_50;
  }

  if (*(a5 + 56) < a4)
  {
    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v85, __p);
    v65 = sub_10002AE44(&std::cerr, "FstImpl::ReadHeader: Obsolete ", 30);
    v66 = *(a1 + 39);
    if (v66 >= 0)
    {
      v67 = a1 + 16;
    }

    else
    {
      v67 = *(a1 + 16);
    }

    if (v66 >= 0)
    {
      v68 = *(a1 + 39);
    }

    else
    {
      v68 = *(a1 + 24);
    }

    v69 = sub_10002AE44(v65, v67, v68);
    v47 = sub_10002AE44(v69, " FST version: ", 14);
    v70 = *(a3 + 23);
    if (v70 >= 0)
    {
      v49 = a3;
    }

    else
    {
      v49 = *a3;
    }

    if (v70 >= 0)
    {
      v50 = *(a3 + 23);
    }

    else
    {
      v50 = *(a3 + 8);
    }

    goto LABEL_50;
  }

  *(a1 + 8) = *(a5 + 64);
  if (*(a5 + 60))
  {
    v71 = sub_100074A54(a2, a3);
    v72 = *(a1 + 40);
    *(a1 + 40) = v71;
    if (v72)
    {
      (*(*v72 + 8))(v72);
    }
  }

  if ((*(a3 + 52) & 1) == 0)
  {
    v73 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v73)
    {
      (*(*v73 + 8))(v73);
    }
  }

  if ((*(a5 + 60) & 2) != 0)
  {
    v74 = sub_100074A54(a2, a3);
    v75 = *(a1 + 48);
    *(a1 + 48) = v74;
    if (v75)
    {
      (*(*v75 + 8))(v75);
    }
  }

  if ((*(a3 + 53) & 1) == 0)
  {
    v76 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v76)
    {
      (*(*v76 + 8))(v76);
    }
  }

  v77 = *(a3 + 32);
  if (v77)
  {
    v78 = (*(*v77 + 16))(v77);
    v79 = *(a1 + 40);
    *(a1 + 40) = v78;
    if (v79)
    {
      (*(*v79 + 8))(v79);
    }
  }

  v80 = *(a3 + 40);
  if (v80)
  {
    v81 = (*(*v80 + 16))(v80);
    v82 = *(a1 + 48);
    *(a1 + 48) = v81;
    if (v82)
    {
      (*(*v82 + 8))(v82);
    }
  }

  return 1;
}

void sub_100074A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100074A54(void *a1, const std::string *a2)
{
  *__p = 0u;
  v6 = 0u;
  std::string::operator=(&__p[1], a2);
  v3 = sub_100074ADC(a1);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  return v3;
}

uint64_t sub_100074ADC(void *a1)
{
  if (sub_1000C5A14(a1))
  {
    operator new();
  }

  return 0;
}

void sub_100074B74(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_100074BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100074C08(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100074C08(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100074D10(v2);
    operator delete();
  }

  return a1;
}

void sub_100074C54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100074C8C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_100074D10(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100074CD0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100074D10(uint64_t a1)
{
  std::mutex::~mutex((a1 + 216));
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_10001A178(a1 + 136, *(a1 + 144));
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 48);
  sub_100020578(&v5);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100074DB0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100074DF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

void sub_100074F24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100075130(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100074F40(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100074F78(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100074FA8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100074FE8(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100075078(a1, &v5);
  if (v6)
  {
    sub_100016EC0(v6);
  }

  *a1 = off_100101090;
  return a1;
}

void sub_100075060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100016EC0(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100075078(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[1] = v4;
  a1[2] = v3;
  *a1 = off_1001012E0;
  if (v3)
  {
    sub_100016EC0(v3);
  }

  *a1 = off_1001011B8;
  return a1;
}

void sub_100075398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = v14[4];
  v14[4] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = v14[3];
  v14[3] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v14[2];
  v14[2] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = v14[1];
  v14[1] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_100075538(uint64_t a1, int __val)
{
  std::to_string(&v4, __val);
  v3 = (*(**(a1 + 32) + 80))(*(a1 + 32), &v4);
  if (v3 == -1)
  {
    v3 = (*(**(a1 + 8) + 176))(*(a1 + 8));
    (*(**(a1 + 32) + 24))(*(a1 + 32), &v4, v3);
  }

  (*(**(a1 + 8) + 152))(*(a1 + 8), v3);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_10007563C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100075658(uint64_t a1, int __val, double a3)
{
  std::to_string(&v9, __val);
  v5 = (*(**(a1 + 32) + 80))(*(a1 + 32), &v9);
  if (v5 == -1)
  {
    v5 = (*(**(a1 + 8) + 176))(*(a1 + 8));
    (*(**(a1 + 32) + 24))(*(a1 + 32), &v9, v5);
  }

  v6 = *(a1 + 8);
  v7 = a3;
  v8 = v7;
  (*(*v6 + 160))(v6, v5, &v8);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_100075774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100075790(uint64_t a1)
{
  (*(**(a1 + 8) + 256))(*(a1 + 8), *(a1 + 16));
  v2 = 16;
  if (*a1)
  {
    v2 = 24;
  }

  v3 = *(a1 + v2);
  v4 = *(**(a1 + 8) + 264);

  return v4();
}

void sub_100075844(uint64_t a1, int __val, int a3, uint64_t a4, uint64_t a5, double a6)
{
  std::to_string(&v20, __val);
  v11 = (*(**(a1 + 32) + 80))(*(a1 + 32), &v20);
  if (v11 == -1)
  {
    v11 = (*(**(a1 + 8) + 176))(*(a1 + 8));
    (*(**(a1 + 32) + 24))(*(a1 + 32), &v20, v11);
  }

  std::to_string(&v19, a3);
  v12 = (*(**(a1 + 32) + 80))(*(a1 + 32), &v19);
  LODWORD(v13) = v12;
  if (v12 == -1)
  {
    v13 = (*(**(a1 + 8) + 176))(*(a1 + 8));
    (*(**(a1 + 32) + 24))(*(a1 + 32), &v19, v13);
  }

  v14 = (*(**(a1 + 16) + 32))(*(a1 + 16), a4);
  v15 = v14;
  if (*a1 == 1)
  {
    v14 = (*(**(a1 + 24) + 32))(*(a1 + 24), a5);
  }

  v16 = *(a1 + 8);
  v17 = a6;
  v18[0] = v15;
  v18[1] = v14;
  *&v18[2] = v17;
  v18[3] = v13;
  (*(*v16 + 184))(v16, v11, v18);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_100075AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100075AE4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 && a2)
  {
    v5 = (*(*a1 + 72))(a1, 0);
    v6 = (*(*a2 + 72))(a2, 0);
    v9 = 0;
    (*(*v5 + 104))(v5);
    (*(*v6 + 96))(v6);
    sub_1000C3B20();
  }

  v7 = sub_1000C8230();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "cmdp_fst_util::composeFst : null FSTs", &__p, 2u);
  }

  *a3 = 0;
}

void sub_100075F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *v19 = 0;
  (*(*v21 + 8))(v21);
  (*(*v20 + 8))(v20);
  (*(*v18 + 8))(v18);
  (*(*v17 + 8))(v17);
  (*(*v16 + 8))(v16);
  _Unwind_Resume(a1);
}

void sub_100076100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 96))(a1);
  v7 = (*(*a1 + 104))(a1);

  sub_100078A30(a1, v6, a2, 1, v7, a3, 1);
}

void sub_1000761AC(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  sub_100079D58(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1000761FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100076218(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  sub_10007BAB0(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_100076268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100076284(uint64_t a1)
{
  memset(v6, 0, sizeof(v6));
  v4 = 0;
  memset(v5, 0, sizeof(v5));
  v1[0] = 0;
  v1[1] = v6;
  v1[2] = v5;
  v1[3] = &v4;
  v2 = 0u;
  v3 = 0u;
  sub_100071A64(a1, v1);
}

void sub_100076440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_10002CCE8(&a13);
  v16 = *(v14 - 80);
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(v13 + 24);
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_100076488(uint64_t a1, void *a2)
{
  v4 = 0;
  if (*a2 != a2[1])
  {
    v3 = *(*a2 + 24);
    (*(*v3 + 96))(v3);
    (*(*v3 + 104))(v3);
    sub_1000C3B20();
  }

  (*(*a1 + 96))(a1);
  (*(*a1 + 104))(a1);
  sub_1000C3B20();
}

uint64_t sub_100076AB0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *sub_10002B59C();
    sub_100076B08(v1);
  }

  return result;
}

void sub_100076B08(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  sub_10009B4B4(v1, a1);
}

void sub_100076BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000AF040(va);
  v7 = *(v5 - 88);
  if (v7)
  {
    *(v5 - 80) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100076BEC(void *a1)
{
  v12 = 0;
  *&v10[*(v9 - 3) - 8] = v2;
  v3 = &v10[*(v9 - 3) - 8];
  std::ios_base::init(v3, v10);
  v3[1].__vftable = 0;
  v3[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  std::ofstream::open();
  v7 = 0;
  v8 = 0;
  __p = 0;
  v4 = (*(*a1 + 16))(a1);
  sub_100076EF8(a1, v4, &__p, &v9);
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v10[*(v9 - 3) - 8], *&v10[*(v9 - 3) + 24] | 4);
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100076EF8(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  if (a2 == -1)
  {
    return;
  }

  v7 = *a3;
  v8 = *(a3 + 8);
  if (*a3 != v8)
  {
    while (*v7 != a2)
    {
      if (++v7 == v8)
      {
        goto LABEL_7;
      }
    }
  }

  if (v7 != v8)
  {
    return;
  }

LABEL_7:
  sub_10002C79C(a3, &v53);
  (*(*a1 + 24))(__p, a1, v53);
  v9 = sub_10002B59C();
  LODWORD(v50.__locale_) = __p[0];
  LODWORD(v48[0]) = *v9;
  if (*__p != *v48)
  {
    v39 = std::ostream::operator<<();
    v40 = sub_10002AE44(v39, "\t", 1);
    (*(*a1 + 24))(v48, a1, v53);
    if (*v48 == INFINITY)
    {
      v41 = "Infinity";
      v42 = v40;
      v43 = 8;
    }

    else
    {
      if (*v48 != -INFINITY)
      {
        v44 = std::ostream::operator<<();
        goto LABEL_50;
      }

      v41 = "-Infinity";
      v42 = v40;
      v43 = 9;
    }

    v44 = sub_10002AE44(v42, v41, v43);
LABEL_50:
    std::ios_base::getloc((v44 + *(*v44 - 24)));
    v45 = std::locale::use_facet(&v50, &std::ctype<char>::id);
    (v45->__vftable[2].~facet_0)(v45, 10);
    std::locale::~locale(&v50);
    std::ostream::put();
    std::ostream::flush();
    return;
  }

  v10 = (*(*a1 + 104))(a1, *__p);
  v11 = (*(*a1 + 96))(a1);
  v50.__locale_ = 0;
  v51 = 0;
  v52 = 0;
  v12 = *(*(a1[1] + 56) + 8 * v53);
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v12 + 24);
  }

  if (v13 == v14)
  {
    return;
  }

  v16 = v11;
  v17 = (v14 - v13) >> 4;
  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = (v15 + 12);
  do
  {
    v20 = std::ostream::operator<<();
    sub_10002AE44(v20, "\t", 1);
    v21 = *v19;
    v22 = std::ostream::operator<<();
    v23 = sub_10002AE44(v22, "\t", 1);
    (*(*v16 + 72))(v48, v16, *(v19 - 3));
    if ((v49 & 0x80u) == 0)
    {
      v24 = v48;
    }

    else
    {
      v24 = v48[0];
    }

    if ((v49 & 0x80u) == 0)
    {
      v25 = v49;
    }

    else
    {
      v25 = v48[1];
    }

    v26 = sub_10002AE44(v23, v24, v25);
    v27 = sub_10002AE44(v26, "\t", 1);
    (*(*v10 + 72))(__p, v10, *(v19 - 2));
    if ((v47 & 0x80u) == 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    if ((v47 & 0x80u) == 0)
    {
      v29 = v47;
    }

    else
    {
      v29 = __p[1];
    }

    v30 = sub_10002AE44(v27, v28, v29);
    v31 = sub_10002AE44(v30, "\t", 1);
    v32 = *(v19 - 1);
    if (v32 == INFINITY)
    {
      v33 = "Infinity";
      v34 = 8;
LABEL_32:
      v35 = sub_10002AE44(v31, v33, v34);
      goto LABEL_33;
    }

    if (v32 == -INFINITY)
    {
      v33 = "-Infinity";
      v34 = 9;
      goto LABEL_32;
    }

    v35 = std::ostream::operator<<();
LABEL_33:
    std::ios_base::getloc((v35 + *(*v35 - 24)));
    v36 = std::locale::use_facet(&v54, &std::ctype<char>::id);
    (v36->__vftable[2].~facet_0)(v36, 10);
    std::locale::~locale(&v54);
    std::ostream::put();
    std::ostream::flush();
    if (v47 < 0)
    {
      operator delete(__p[0]);
    }

    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    sub_10002C79C(&v50.__locale_, v19);
    v19 += 4;
    --v18;
  }

  while (v18);
  locale = v50.__locale_;
  v38 = v51;
  if (v50.__locale_ != v51)
  {
    do
    {
      sub_100076EF8(a1, *locale, a3, a4);
      locale = (locale + 4);
    }

    while (locale != v38);
    locale = v50.__locale_;
  }

  if (locale)
  {
    v51 = locale;
    operator delete(locale);
  }
}

void *sub_100077480(void *a1)
{
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_100077778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000777A0()
{
  if ((atomic_load_explicit(&qword_10010E258, memory_order_acquire) & 1) == 0)
  {
    sub_1000B9710();
  }

  return &dword_10010E250;
}

void sub_1000777D8(int a1@<W1>, void *a2@<X8>)
{
  if (a1 > 0)
  {
    sub_1000AF154();
  }

  v4 = sub_1000C8230();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "RXFstOp::copyNBestStrings : invalid n = %d, n should be > 0", buf, 8u);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_100077980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, void (**a17)(), uint64_t a18, std::__shared_weak_count *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  a16 = &a13;
  sub_100019DA8(&a16);
  sub_100016FD4(&a13);
  a17 = off_100100EF0;
  if (a19)
  {
    sub_100016EC0(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1000779FC(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  sub_1000A4BB8(v1, a1);
}

void sub_100077AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000AF040(va);
  v9 = *(v7 - 104);
  if (v9)
  {
    *(v7 - 96) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_100077BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100077BE0(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  HIDWORD(v52) = a3;
  if (a3 != -1)
  {
    sub_10002C79C(a2, &v52 + 1);
    (*(*a1 + 24))(&v52, a1, HIDWORD(v52));
    v9 = sub_10002B59C();
    *buf = v52;
    LODWORD(v48[0]) = *v9;
    v10.n128_u32[0] = v52;
    if (*&v52 != *v48)
    {
      sub_100078424(a5, a4);
    }

    v11 = *(*(a1[1] + 56) + 8 * SHIDWORD(v52));
    v12 = *(v11 + 24);
    v13 = *(v11 + 32);
    v14 = v12 == v13 ? 0 : v12;
    if (v12 != v13)
    {
      v15 = 0;
      v16 = (v13 - v12) >> 4;
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      while (1)
      {
        v18 = (v14 + 16 * v15);
        if (v18[3] != HIDWORD(v52))
        {
          break;
        }

        v19 = sub_1000C8230();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "cmdp_fst_util::unionFst : Loop detected while computing paths", buf, 2u);
        }

LABEL_49:
        if (++v15 == v17)
        {
          return;
        }
      }

      v20 = (*(*a1 + 96))(a1, v10);
      v21 = (*(*a1 + 104))(a1);
      (*(*v20 + 72))(buf, v20, *v18);
      (*(*v21 + 72))(v48, v21, v18[1]);
      if (v51 < 0)
      {
        if (*&buf[8] != 5)
        {
          goto LABEL_23;
        }

        v22 = *buf;
      }

      else
      {
        if (v51 != 5)
        {
          goto LABEL_23;
        }

        v22 = buf;
      }

      v23 = *v22;
      v24 = v22[4];
      if (v23 != 1936745788 || v24 != 62)
      {
        goto LABEL_23;
      }

      if (v49 < 0)
      {
        if (v48[1] != 5)
        {
          goto LABEL_23;
        }

        v37 = v48[0];
      }

      else
      {
        if (v49 != 5)
        {
          goto LABEL_23;
        }

        v37 = v48;
      }

      v39 = *v37;
      v40 = *(v37 + 4);
      if (v39 == 1936745788 && v40 == 62)
      {
LABEL_27:
        v28 = *a2;
        v29 = *(a2 + 8);
        v30 = *a2;
        if (*a2 != v29)
        {
          v30 = *a2;
          while (*v30 != v18[3])
          {
            if (++v30 == v29)
            {
              goto LABEL_33;
            }
          }
        }

        if (v30 == v29)
        {
LABEL_33:
          __p = 0;
          v46 = 0;
          v47 = 0;
          sub_1000AF0D8(&__p, v28, v29, (v29 - v28) >> 2);
          sub_100077BE0(a1, &__p, v18[3], a4, a5);
          if (__p)
          {
            v46 = __p;
            operator delete(__p);
          }
        }

        if (v51 < 0)
        {
          if (*&buf[8] != 5)
          {
            goto LABEL_44;
          }

          v31 = *buf;
        }

        else
        {
          if (v51 != 5)
          {
            goto LABEL_44;
          }

          v31 = buf;
        }

        v32 = *v31;
        v33 = v31[4];
        if (v32 != 1936745788 || v33 != 62)
        {
          goto LABEL_44;
        }

        v36 = v49;
        if (v49 < 0)
        {
          if (v48[1] == 5)
          {
            v38 = v48[0];
LABEL_67:
            v42 = *v38;
            v43 = *(v38 + 4);
            if (v42 == 1936745788 && v43 == 62)
            {
              goto LABEL_45;
            }
          }
        }

        else if (v49 == 5)
        {
          v38 = v48;
          goto LABEL_67;
        }

LABEL_44:
        v35 = *(a4 + 8) - 48;
        sub_100019A64(a4, v35);
        *(a4 + 8) = v35;
        v36 = v49;
LABEL_45:
        if (v36 < 0)
        {
          operator delete(v48[0]);
        }

        if (v51 < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_49;
      }

LABEL_23:
      v26 = *(a4 + 8);
      if (v26 >= *(a4 + 16))
      {
        v27 = sub_100078600(a4, buf, v48);
      }

      else
      {
        sub_100016E28(*(a4 + 8), buf, v48);
        v27 = v26 + 48;
        *(a4 + 8) = v26 + 48;
      }

      *(a4 + 8) = v27;
      goto LABEL_27;
    }
  }
}

void sub_10007800C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  *(v23 + 8) = v24;
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100078064(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  memset(v8, 0, sizeof(v8));
  v6 = 0;
  v7 = 0;
  __p = 0;
  sub_1000AF0D8(&__p, 0, 0, 0);
  v4 = (*(*a1 + 16))(a1);
  sub_100077BE0(a1, &__p, v4, v8, a2);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v9 = v8;
  sub_100019DA8(&v9);
}

void sub_10007811C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 - 24) = &a13;
  sub_100019DA8((v13 - 24));
  sub_100016FD4(&a13);
  _Unwind_Resume(a1);
}

void sub_10007815C(void *a1, char *a2)
{
  bzero(__s, 0x400uLL);
  v4 = confstr(65537, __s, 0x400uLL);
  if (v4)
  {
    sub_1000113AC(&v19, __s);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v19;
    }

    else
    {
      v5 = v19.__r_.__value_.__r.__words[0];
    }

    if (v5->__r_.__value_.__s.__data_[v4 - 1] != 47)
    {
      sub_1000113AC(__p, "/");
      v6 = v21 >= 0 ? __p : __p[0];
      v7 = v21 >= 0 ? HIBYTE(v21) : __p[1];
      std::string::append(&v19, v6, v7);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1000113AC(&v18, a2);
    v8 = dword_10010E7B0++;
    std::to_string(&v17, v8);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v17;
    }

    else
    {
      v9 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v18, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v21 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v21 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if (v21 >= 0)
    {
      v14 = HIBYTE(v21);
    }

    else
    {
      v14 = __p[1];
    }

    std::string::append(&v19, v13, v14);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    sub_100076BEC(a1);
    v15 = sub_1000C8230();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = &v19;
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = v19.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "FST Grammar log %s\n", __p, 0xCu);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }
}