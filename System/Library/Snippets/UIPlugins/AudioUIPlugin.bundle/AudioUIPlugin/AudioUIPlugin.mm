uint64_t SiriAudioSnippets.snippet.getter()
{
  v144 = type metadata accessor for SiriAudioMediaPlayerSnippet(0);
  v0 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v143 = &v134 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_114F0();
  v142 = *(v145 - 8);
  v2 = *(v142 + 64);
  __chkstk_darwin(v145);
  v141 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for SiriAudioShazamSnippet(0);
  v4 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  v138 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_115F0();
  v137 = *(v140 - 8);
  v6 = *(v137 + 64);
  __chkstk_darwin(v140);
  v136 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for SiriAudioAlternativeSnippet();
  v8 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v149 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_114C0();
  v148 = *(v151 - 8);
  v10 = *(v148 + 64);
  __chkstk_darwin(v151);
  v147 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for SiriAudioSimpleTextSnippet();
  v12 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v155 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_11470();
  v154 = *(v157 - 8);
  v14 = *(v154 + 64);
  __chkstk_darwin(v157);
  v153 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for SiriAudioDisambiguationSnippet();
  v16 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v160 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_115D0();
  v159 = *(v162 - 8);
  v18 = *(v159 + 64);
  __chkstk_darwin(v162);
  v158 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for SiriAudioActionButtonSnippet();
  v20 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v165 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_11550();
  v164 = *(v167 - 8);
  v22 = *(v164 + 64);
  __chkstk_darwin(v167);
  v163 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for ConfirmationSnippet();
  v24 = *(*(v168 - 8) + 64);
  __chkstk_darwin(v168);
  v26 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_11670();
  v170 = *(v27 - 8);
  v171 = v27;
  v28 = *(v170 + 64);
  v29 = __chkstk_darwin(v27);
  v135 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v134 = &v134 - v32;
  v33 = __chkstk_darwin(v31);
  v146 = &v134 - v34;
  v35 = __chkstk_darwin(v33);
  v152 = &v134 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v134 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v134 - v41;
  __chkstk_darwin(v40);
  v44 = &v134 - v43;
  v45 = sub_11580();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v134 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_11450();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  v54 = &v134 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v54, v169, v50);
  v55 = (*(v51 + 88))(v54, v50);
  if (v55 == enum case for SiriAudioSnippets.confirmation(_:))
  {
    (*(v51 + 96))(v54, v50);
    (*(v46 + 32))(v49, v54, v45);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v56 = v171;
    v57 = sub_3444(v171, qword_1DB08);
    v58 = v170;
    (*(v170 + 16))(v44, v57, v56);
    v59 = sub_11650();
    v60 = sub_11C00();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_0, v59, v60, "SiriAudioSnippets#snippet create ConfirmationSnippet", v61, 2u);
    }

    (*(v58 + 8))(v44, v56);
    (*(v46 + 16))(v26, v49, v45);
    v62 = &v26[*(v168 + 20)];
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context);
    *v62 = sub_11760();
    v62[1] = v63;
    sub_3510(&qword_1C648, type metadata accessor for ConfirmationSnippet);
    v64 = sub_118E0();
    sub_3558(v26, type metadata accessor for ConfirmationSnippet);
    (*(v46 + 8))(v49, v45);
    return v64;
  }

  if (v55 == enum case for SiriAudioSnippets.actionButton(_:))
  {
    (*(v51 + 96))(v54, v50);
    v66 = v163;
    v65 = v164;
    v67 = v167;
    (*(v164 + 32))(v163, v54, v167);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v68 = v171;
    v69 = sub_3444(v171, qword_1DB08);
    v70 = v170;
    (*(v170 + 16))(v42, v69, v68);
    v71 = sub_11650();
    v72 = sub_11C00();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "SiriAudioSnippets#snippet create SiriAudioActionButtonSnippet", v73, 2u);
    }

    (*(v70 + 8))(v42, v68);
    v74 = v165;
    (*(v65 + 16))(v165, v66, v67);
    v75 = (v74 + *(v166 + 20));
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context);
    *v75 = sub_11760();
    v75[1] = v76;
    sub_3510(&qword_1C640, type metadata accessor for SiriAudioActionButtonSnippet);
    v64 = sub_118E0();
    v77 = type metadata accessor for SiriAudioActionButtonSnippet;
LABEL_19:
    sub_3558(v74, v77);
    (*(v65 + 8))(v66, v67);
    return v64;
  }

  if (v55 == enum case for SiriAudioSnippets.disambiguation(_:))
  {
    (*(v51 + 96))(v54, v50);
    v66 = v158;
    v65 = v159;
    v67 = v162;
    (*(v159 + 32))(v158, v54, v162);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v78 = v171;
    v79 = sub_3444(v171, qword_1DB08);
    v80 = v170;
    (*(v170 + 16))(v39, v79, v78);
    v81 = sub_11650();
    v82 = sub_11C00();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_0, v81, v82, "SiriAudioSnippets#snippet create SiriAudioDisambiguationSnippet", v83, 2u);
    }

    (*(v80 + 8))(v39, v78);
    v74 = v160;
    (*(v65 + 16))(v160, v66, v67);
    v84 = (v74 + *(v161 + 20));
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context);
    *v84 = sub_11760();
    v84[1] = v85;
    sub_3510(&qword_1C638, type metadata accessor for SiriAudioDisambiguationSnippet);
    v64 = sub_118E0();
    v77 = type metadata accessor for SiriAudioDisambiguationSnippet;
    goto LABEL_19;
  }

  if (v55 == enum case for SiriAudioSnippets.simpleText(_:))
  {
    (*(v51 + 96))(v54, v50);
    v86 = v154;
    v87 = v153;
    v88 = v157;
    (*(v154 + 32))(v153, v54, v157);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v89 = v171;
    v90 = sub_3444(v171, qword_1DB08);
    v91 = v170;
    v92 = v152;
    (*(v170 + 16))(v152, v90, v89);
    v93 = sub_11650();
    v94 = sub_11C00();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_0, v93, v94, "SiriAudioSnippets#snippet create Section Header standard view", v95, 2u);
    }

    (*(v91 + 8))(v92, v89);
    v96 = v155;
    (*(v86 + 16))(v155, v87, v88);
    v97 = &v96[*(v156 + 20)];
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context);
    *v97 = sub_11760();
    v97[1] = v98;
    sub_3510(&qword_1C630, type metadata accessor for SiriAudioSimpleTextSnippet);
    v64 = sub_118E0();
    v99 = type metadata accessor for SiriAudioSimpleTextSnippet;
LABEL_26:
    v100 = v99;
    v101 = v96;
LABEL_46:
    sub_3558(v101, v100);
    (*(v86 + 8))(v87, v88);
    return v64;
  }

  if (v55 == enum case for SiriAudioSnippets.alternatives(_:))
  {
    (*(v51 + 96))(v54, v50);
    v86 = v148;
    v87 = v147;
    v88 = v151;
    (*(v148 + 32))(v147, v54, v151);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v102 = v171;
    v103 = sub_3444(v171, qword_1DB08);
    v104 = v170;
    v105 = v146;
    (*(v170 + 16))(v146, v103, v102);
    v106 = sub_11650();
    v107 = sub_11C00();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&dword_0, v106, v107, "SiriAudioSnippets#snippet create Alternative Snippet", v108, 2u);
    }

    (*(v104 + 8))(v105, v102);
    v109 = v150;
    v110 = v149;
    (*(v86 + 16))(&v149[*(v150 + 28)], v87, v88);
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context);
    *v110 = sub_11760();
    *(v110 + 1) = v111;
    v112 = *(v109 + 20);
    *&v110[v112] = swift_getKeyPath();
    sub_34C8(&qword_1C620, &qword_133D0);
    swift_storeEnumTagMultiPayload();
    v113 = &v110[*(v109 + 24)];
    v172 = 0;
    sub_119C0();
    v114 = v174;
    *v113 = v173;
    *(v113 + 1) = v114;
    sub_3510(&qword_1C628, type metadata accessor for SiriAudioAlternativeSnippet);
    v64 = sub_118E0();
    v115 = type metadata accessor for SiriAudioAlternativeSnippet;
LABEL_45:
    v100 = v115;
    v101 = v110;
    goto LABEL_46;
  }

  if (v55 == enum case for SiriAudioSnippets.shazam(_:))
  {
    (*(v51 + 96))(v54, v50);
    v86 = v137;
    v87 = v136;
    v88 = v140;
    (*(v137 + 32))(v136, v54, v140);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v116 = v171;
    v117 = sub_3444(v171, qword_1DB08);
    v118 = v170;
    v119 = v134;
    (*(v170 + 16))(v134, v117, v116);
    v120 = sub_11650();
    v121 = sub_11C00();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_0, v120, v121, "SiriAudioSnippets#snippet create ShazamSnippet", v122, 2u);
    }

    (*(v118 + 8))(v119, v116);
    v96 = v138;
    (*(v86 + 16))(v138, v87, v88);
    v123 = &v96[*(v139 + 20)];
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context);
    *v123 = sub_11760();
    v123[1] = v124;
    sub_3510(&qword_1C618, type metadata accessor for SiriAudioShazamSnippet);
    v64 = sub_118E0();
    v99 = type metadata accessor for SiriAudioShazamSnippet;
    goto LABEL_26;
  }

  if (v55 == enum case for SiriAudioSnippets.mediaPlayer(_:))
  {
    (*(v51 + 96))(v54, v50);
    v86 = v142;
    v87 = v141;
    v88 = v145;
    (*(v142 + 32))(v141, v54, v145);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v125 = v171;
    v126 = sub_3444(v171, qword_1DB08);
    v127 = v170;
    v128 = v135;
    (*(v170 + 16))(v135, v126, v125);
    v129 = sub_11650();
    v130 = sub_11C00();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_0, v129, v130, "SiriAudioSnippets#snippet create SiriAudioMediaPlayerSnippet", v131, 2u);
    }

    (*(v127 + 8))(v128, v125);
    v110 = v143;
    (*(v86 + 16))(&v143[*(v144 + 24)], v87, v88);
    *v110 = sub_C710;
    *(v110 + 1) = 0;
    v110[16] = 0;
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context);
    *(v110 + 3) = sub_11760();
    *(v110 + 4) = v132;
    sub_3510(&qword_1C610, type metadata accessor for SiriAudioMediaPlayerSnippet);
    v64 = sub_118E0();
    v115 = type metadata accessor for SiriAudioMediaPlayerSnippet;
    goto LABEL_45;
  }

  result = sub_11C80();
  __break(1u);
  return result;
}

uint64_t sub_3308(uint64_t a1)
{
  v2 = *(*(sub_116F0() - 8) + 64);
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_11790();
}

uint64_t _s13AudioUIPlugin04SiriA19ActionButtonSnippetV8_context016_CFEA73E41E799A3I14F99E79EA469018LL7SwiftUI17EnvironmentObjectVy0fP07ContextCGvpfi_0()
{
  sub_11B90();
  sub_3510(&unk_1CE30, &type metadata accessor for Context);

  return sub_11760();
}

uint64_t sub_3444(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_347C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_34C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3510(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_36AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115D0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SiriAudioDisambiguationSnippet()
{
  result = qword_1C6A8;
  if (!qword_1C6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_37B0()
{
  sub_115D0();
  if (v0 <= 0x3F)
  {
    sub_3834();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3834()
{
  if (!qword_1C6B8)
  {
    sub_11B90();
    sub_57B4(&unk_1CE30, &type metadata accessor for Context);
    v0 = sub_11770();
    if (!v1)
    {
      atomic_store(v0, &qword_1C6B8);
    }
  }
}

uint64_t sub_38E4(uint64_t a1)
{
  v2 = type metadata accessor for SiriAudioDisambiguationSnippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_5150(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_51B8(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_5150(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  sub_51B8(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  sub_11AE0();
  sub_34C8(&qword_1C6F8, &qword_131B8);
  sub_57B4(&qword_1C700, &type metadata accessor for PrimaryHeaderRichView);
  sub_5330();
  return sub_11B40();
}

uint64_t sub_3B3C(uint64_t a1)
{
  v2 = type metadata accessor for SiriAudioDisambiguationSnippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v10[3] = sub_115B0();
  sub_5150(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_51B8(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_34C8(&qword_1C718, &unk_131C0);
  sub_34C8(&qword_1C720, &qword_13420);
  sub_5C5C(&qword_1C728, &qword_1C718, &unk_131C0);
  v7 = sub_11AC0();
  v8 = sub_57B4(&qword_1C710, &type metadata accessor for SimpleItemRichView);
  v10[1] = v7;
  v10[2] = v8;
  swift_getOpaqueTypeConformance2();
  sub_57B4(&qword_1C730, &type metadata accessor for SiriAudioDisambiguationItemModel);
  return sub_11A10();
}

uint64_t sub_3D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v51 = a3;
  v4 = type metadata accessor for SiriAudioDisambiguationSnippet();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  __chkstk_darwin(v4 - 8);
  v48 = v6;
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_11440();
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v47);
  v43 = v9;
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_34C8(&qword_1C738, &qword_131D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v41 - v12;
  v14 = sub_11300();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_11AC0();
  v42 = *(v44 - 8);
  v19 = *(v42 + 64);
  __chkstk_darwin(v44);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_11410();
  v82 = &type metadata for String;
  v83 = &protocol witness table for String;
  v80 = v22;
  v81 = v23;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v24 = sub_11430();
  if (v25)
  {
    v26 = &protocol witness table for String;
    v27 = &type metadata for String;
  }

  else
  {
    v24 = 0;
    v27 = 0;
    v26 = 0;
    v74 = 0;
  }

  v72 = v24;
  v73 = v25;
  v75 = v27;
  v76 = v26;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v28 = v49;
  if ((sub_11590() & 1) == 0)
  {
    sub_11420();
    v29 = sub_479C(v13);
    sub_5A90(v13, &qword_1C738, &qword_131D0);
    if (v29)
    {
      goto LABEL_6;
    }

LABEL_8:
    v31 = 0;
    v30 = 0;
    v53 = 0;
    v54 = 0;
    goto LABEL_9;
  }

  sub_11400();
  sub_112F0();
  v29 = sub_4A50(v18);

  (*(v15 + 8))(v18, v14);
  if (!v29)
  {
    goto LABEL_8;
  }

LABEL_6:
  v30 = &protocol witness table for AnyView;
  v31 = &type metadata for AnyView;
LABEL_9:
  v52 = v29;
  v55 = v31;
  v56 = v30;
  sub_11AB0();
  v32 = v45;
  v33 = a1;
  v34 = v47;
  (*(v7 + 16))(v45, v33, v47);
  v35 = v50;
  sub_5150(v28, v50);
  v36 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v37 = (v43 + *(v46 + 80) + v36) & ~*(v46 + 80);
  v38 = swift_allocObject();
  (*(v7 + 32))(v38 + v36, v32, v34);
  sub_51B8(v35, v38 + v37);
  sub_57B4(&qword_1C710, &type metadata accessor for SimpleItemRichView);
  v39 = v44;
  sub_11910();

  return (*(v42 + 8))(v21, v39);
}

uint64_t sub_42A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_11440();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v40[-v10];
  v12 = sub_11670();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v17 = sub_3444(v12, qword_1DB08);
  (*(v13 + 16))(v16, v17, v12);
  v45 = v12;
  v46 = v13;
  v18 = v5[2];
  v18(v11, a1, v4);
  v18(v9, a1, v4);
  v19 = sub_11650();
  v20 = sub_11C00();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = a1;
    v22 = v21;
    v42 = swift_slowAlloc();
    v47[0] = v42;
    *v22 = 136315394;
    v23 = sub_11400();
    v41 = v20;
    v25 = v24;
    v43 = a2;
    v26 = v5[1];
    v26(v11, v4);
    v27 = sub_9E78(v23, v25, v47);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v28 = sub_11410();
    v30 = v29;
    v26(v9, v4);
    a2 = v43;
    v31 = sub_9E78(v28, v30, v47);

    *(v22 + 14) = v31;
    _os_log_impl(&dword_0, v19, v41, "SiriAudioDisambiguationSnippet#body tapped on %s, itemTitle: %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v32 = v5[1];
    v32(v9, v4);
    v32(v11, v4);
  }

  (*(v46 + 8))(v16, v45);
  v33 = a2 + *(type metadata accessor for SiriAudioDisambiguationSnippet() + 20);
  if (*v33)
  {
    v34 = *v33;
    sub_115A0();
    sub_34C8(&qword_1C750, &qword_131E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_13120;
    v47[0] = 0x64496D657469;
    v47[1] = 0xE600000000000000;
    sub_11C40();
    v36 = sub_11400();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v36;
    *(inited + 80) = v37;
    sub_5954(inited);
    swift_setDeallocating();
    sub_5A90(inited + 32, &qword_1C758, &qword_131E8);
    sub_11B80();
  }

  else
  {
    v39 = *(v33 + 8);
    sub_11B90();
    sub_57B4(&unk_1CE30, &type metadata accessor for Context);
    result = sub_11750();
    __break(1u);
  }

  return result;
}

uint64_t sub_479C(uint64_t a1)
{
  v2 = sub_11300();
  v20 = *(v2 - 8);
  v21 = v2;
  v3 = *(v20 + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_34C8(&qword_1C738, &qword_131D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = sub_112C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5BB0(a1, v12, &qword_1C738, &qword_131D0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_5A90(v12, &qword_1C738, &qword_131D0);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    (*(v14 + 56))(v10, 1, 1, v13);
    sub_112E0();
    sub_5A90(v10, &qword_1C738, &qword_131D0);
    v19 = sub_4A50(v5);
    (*(v20 + 8))(v5, v21);
    (*(v14 + 8))(v17, v13);
    return v19;
  }
}

uint64_t sub_4A50(char *a1)
{
  v2 = sub_11A40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (__chkstk_darwin)();
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_34C8(&qword_1C740, &qword_131D8);
  v6 = *(v52 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v51 = &v41 - v8;
  v9 = sub_11300();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v48 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = sub_11670();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v21 = sub_3444(v16, qword_1DB08);
  (*(v17 + 16))(v20, v21, v16);
  v47 = v17;
  v22 = *(v10 + 16);
  v49 = a1;
  v53 = v22;
  v22(v15, a1, v9);
  v23 = v16;
  v24 = sub_11650();
  v46 = sub_11C00();
  if (os_log_type_enabled(v24, v46))
  {
    v25 = swift_slowAlloc();
    v45 = v2;
    v26 = v25;
    v41 = v25;
    v42 = swift_slowAlloc();
    v54 = v42;
    *v26 = 136315138;
    v43 = v23;
    v27 = v48;
    v53(v48, v15, v9);
    v55 = sub_11BB0();
    v56 = v28;
    v29 = sub_11BE0();
    v44 = v3;
    v30 = v6;
    v32 = v31;
    (*(v10 + 8))(v15, v9);
    v33 = sub_9E78(v29, v32, &v54);
    v6 = v30;
    v3 = v44;

    v34 = v41;
    *(v41 + 4) = v33;
    _os_log_impl(&dword_0, v24, v46, "SiriAudioDisambiguationSnippet#imageView building imageView: %s", v34, 0xCu);
    sub_57FC(v42);

    v2 = v45;

    (*(v47 + 8))(v20, v43);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
    (*(v47 + 8))(v20, v23);
    v27 = v48;
  }

  v53(v27, v49, v9);
  v35 = v50;
  sub_11A50();
  v36 = sub_57B4(&qword_1C748, &type metadata accessor for RFImageView);
  v37 = v51;
  sub_11920();
  (*(v3 + 8))(v35, v2);
  v55 = v2;
  v56 = v36;
  swift_getOpaqueTypeConformance2();
  v38 = v52;
  v39 = sub_118E0();
  (*(v6 + 8))(v37, v38);
  return v39;
}

uint64_t sub_5008(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_5150(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_51B8(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_34C8(&qword_1C6E8, &qword_131B0);
  sub_5C5C(&qword_1C6F0, &qword_1C6E8, &qword_131B0);
  return sub_11A70();
}

uint64_t sub_5150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioDisambiguationSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_51B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioDisambiguationSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5234(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_52AC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SiriAudioDisambiguationSnippet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_5330()
{
  result = qword_1C708;
  if (!qword_1C708)
  {
    sub_5234(&qword_1C6F8, &qword_131B8);
    sub_11AC0();
    sub_57B4(&qword_1C710, &type metadata accessor for SimpleItemRichView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C708);
  }

  return result;
}

uint64_t sub_5414()
{
  v1 = (type metadata accessor for SiriAudioDisambiguationSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_115D0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_54FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SiriAudioDisambiguationSnippet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_3D70(a1, v6, a2);
}

uint64_t sub_557C()
{
  v1 = sub_11440();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for SiriAudioDisambiguationSnippet() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_115D0();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_56E8()
{
  v1 = *(sub_11440() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SiriAudioDisambiguationSnippet() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_42A4(v0 + v2, v5);
}

uint64_t sub_57B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_57FC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_5848(uint64_t a1)
{
  v2 = v1;
  v4 = sub_11C20(*(v2 + 40));

  return sub_588C(a1, v4);
}

unint64_t sub_588C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_5B00(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_11C30();
      sub_5B5C(v8);
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

unint64_t sub_5954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_34C8(&qword_1C760, &qword_131F0);
    v3 = sub_11C70();
    v4 = a1 + 32;

    while (1)
    {
      sub_5BB0(v4, v13, &qword_1C758, &qword_131E8);
      result = sub_5848(v13);
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
      result = sub_5AF0(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_5A90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_34C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_5AF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_5BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_34C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_5C5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5234(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SiriAudioActionButtonSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for SiriAudioActionButtonSnippet() + 20));
  sub_11B90();
  sub_6EAC(&unk_1CE30, &type metadata accessor for Context);
  *v4 = sub_11760();
  v4[1] = v5;
  v6 = sub_11550();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2, a1, v6);
}

uint64_t type metadata accessor for SiriAudioActionButtonSnippet()
{
  result = qword_1C7D0;
  if (!qword_1C7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriAudioActionButtonSnippet.body.getter()
{
  v1 = type metadata accessor for SiriAudioActionButtonSnippet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_66EC(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_6754(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  return sub_11A70();
}

uint64_t sub_5EE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v3 = sub_11500();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v56 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_11A30();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v60 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_11560();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v48);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_11A60();
  v51 = *(v57 - 8);
  v13 = *(v51 + 64);
  __chkstk_darwin(v57);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SiriAudioActionButtonSnippet();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v64 = sub_34C8(&qword_1C818, &qword_13540);
  v49 = *(v64 - 8);
  v19 = *(v49 + 64);
  __chkstk_darwin(v64);
  v21 = &v47 - v20;
  v55 = sub_34C8(&qword_1C820, &qword_132B0);
  v52 = *(v55 - 8);
  v22 = *(v52 + 64);
  __chkstk_darwin(v55);
  v24 = &v47 - v23;
  v25 = sub_34C8(&qword_1C828, &qword_132B8);
  v53 = *(v25 - 8);
  v54 = v25;
  v26 = *(v53 + 64);
  __chkstk_darwin(v25);
  v50 = &v47 - v27;
  sub_66EC(a1, &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v29 = swift_allocObject();
  sub_6754(&v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v65 = a1;
  sub_34C8(&qword_1C830, &unk_132C0);
  sub_5C5C(&qword_1C838, &qword_1C830, &unk_132C0);
  sub_11A00();
  sub_11530();
  v30 = (*(v9 + 88))(v12, v48);
  if (v30 == enum case for SiriAudioActionButtonSnippetStyle.button(_:))
  {
    sub_117F0();
LABEL_5:
    v31 = v57;
    goto LABEL_8;
  }

  if (v30 == enum case for SiriAudioActionButtonSnippetStyle.buttonCircularIconOnly(_:))
  {
    sub_11800();
    goto LABEL_5;
  }

  v31 = v57;
  if (v30 != enum case for SiriAudioActionButtonSnippetStyle.buttonCircularIconAndTitle(_:))
  {
    sub_11C80();
    __break(1u);
    goto LABEL_16;
  }

  sub_11810();
LABEL_8:
  v32 = sub_5C5C(&qword_1C840, &qword_1C818, &qword_13540);
  v33 = sub_6EAC(&qword_1C848, &type metadata accessor for RFButtonStyle);
  v34 = v64;
  sub_11970();
  (*(v51 + 8))(v15, v31);
  (*(v49 + 8))(v21, v34);
  v35 = v56;
  sub_11510();
  v36 = (*(v58 + 88))(v35, v59);
  if (v36 == enum case for SiriAudioActionButtonSnippetRole.standard(_:))
  {
    v37 = &enum case for ButtonItemButtonStyle.Role.standard(_:);
LABEL_14:
    v39 = v60;
    v38 = v61;
    v40 = v62;
    (*(v61 + 104))(v60, *v37, v62);
    v66 = v64;
    v67 = v31;
    v68 = v32;
    v69 = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42 = v50;
    v43 = v55;
    sub_118F0();
    (*(v38 + 8))(v39, v40);
    (*(v52 + 8))(v24, v43);
    v66 = v43;
    v67 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v44 = v54;
    v45 = sub_118E0();
    result = (*(v53 + 8))(v42, v44);
    *v63 = v45;
    return result;
  }

  if (v36 == enum case for SiriAudioActionButtonSnippetRole.preferred(_:))
  {
    v37 = &enum case for ButtonItemButtonStyle.Role.preferred(_:);
    goto LABEL_14;
  }

  if (v36 == enum case for SiriAudioActionButtonSnippetRole.preferredAndDestructive(_:))
  {
    v37 = &enum case for ButtonItemButtonStyle.Role.preferredAndDestructive(_:);
    goto LABEL_14;
  }

LABEL_16:
  result = sub_11C80();
  __break(1u);
  return result;
}

uint64_t sub_66EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioActionButtonSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioActionButtonSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_67D8(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for SiriAudioActionButtonSnippet() + 20);
  if (*v1)
  {
    v2 = *v1;
    v4 = sub_11540();
    sub_11B70();
  }

  else
  {
    v3 = *(v1 + 8);
    sub_11B90();
    sub_6EAC(&unk_1CE30, &type metadata accessor for Context);
    sub_11750();
    __break(1u);
  }
}

uint64_t sub_68A4@<X0>(uint64_t a1@<X8>)
{
  sub_11520();
  sub_6EFC();
  result = sub_118D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_6904(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_66EC(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_6754(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  return sub_11A70();
}

uint64_t sub_6A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_11550();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_6AFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_11550();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_6BB4()
{
  sub_11550();
  if (v0 <= 0x3F)
  {
    sub_3834();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_6C7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for SiriAudioActionButtonSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_5EE0(v4, a1);
}

uint64_t sub_6CEC()
{
  v1 = (type metadata accessor for SiriAudioActionButtonSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_11550();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_6DD4()
{
  v1 = *(type metadata accessor for SiriAudioActionButtonSnippet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_67D8(v2);
}

uint64_t sub_6EAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_6EFC()
{
  result = qword_1C850;
  if (!qword_1C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C850);
  }

  return result;
}

uint64_t sub_6F70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_34C8(&qword_1C858, qword_132D0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_114C0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_70C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_34C8(&qword_1C858, qword_132D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_114C0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SiriAudioAlternativeSnippet()
{
  result = qword_1C8B8;
  if (!qword_1C8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_723C()
{
  sub_3834();
  if (v0 <= 0x3F)
  {
    sub_72F0();
    if (v1 <= 0x3F)
    {
      sub_7348();
      if (v2 <= 0x3F)
      {
        sub_114C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_72F0()
{
  if (!qword_1C8C8)
  {
    sub_116F0();
    v0 = sub_11700();
    if (!v1)
    {
      atomic_store(v0, &qword_1C8C8);
    }
  }
}

void sub_7348()
{
  if (!qword_1C8D0)
  {
    v0 = sub_119F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1C8D0);
    }
  }
}

uint64_t sub_73B4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v38 = sub_34C8(&qword_1C908, &qword_13360);
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v38);
  v5 = &v35 - v4;
  v36 = sub_34C8(&qword_1C910, &qword_13368);
  v6 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v8 = &v35 - v7;
  v9 = sub_34C8(&qword_1C918, &qword_13370);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v35 - v11);
  v13 = sub_34C8(&qword_1C920, &qword_13378);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_34C8(&qword_1C928, &qword_13380);
  v35 = *(v17 - 8);
  v18 = *(v35 + 64);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v21 = v1 + *(type metadata accessor for SiriAudioAlternativeSnippet() + 28);
  if (sub_11480())
  {
    sub_78EC(v16);
    KeyPath = swift_getKeyPath();
    v23 = &v16[*(v13 + 36)];
    v24 = *(sub_34C8(&qword_1C948, &qword_13388) + 28);
    v25 = enum case for ColorScheme.dark(_:);
    v26 = sub_116F0();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = KeyPath;
    *v12 = sub_119A0();
    v27 = enum case for HostBackground.color(_:);
    v28 = sub_11A80();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v12, v27, v28);
    (*(v29 + 56))(v12, 0, 1, v28);
    v30 = sub_9388();
    sub_11930();
    sub_5A90(v12, &qword_1C918, &qword_13370);
    sub_9474(v16);
    v31 = v35;
    (*(v35 + 16))(v8, v20, v17);
    swift_storeEnumTagMultiPayload();
    v39 = v13;
    v40 = v30;
    swift_getOpaqueTypeConformance2();
    sub_5C5C(&qword_1C938, &qword_1C908, &qword_13360);
    sub_117E0();
    return (*(v31 + 8))(v20, v17);
  }

  else
  {
    sub_78EC(v5);
    v33 = v38;
    (*(v2 + 16))(v8, v5, v38);
    swift_storeEnumTagMultiPayload();
    v34 = sub_9388();
    v39 = v13;
    v40 = v34;
    swift_getOpaqueTypeConformance2();
    sub_5C5C(&qword_1C938, &qword_1C908, &qword_13360);
    sub_117E0();
    return (*(v2 + 8))(v5, v33);
  }
}

uint64_t sub_78EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v39 = sub_11B50();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v39);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SiriAudioAlternativeSnippet();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v36 = v10;
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_34C8(&qword_1C950, &qword_133C0);
  v38 = *(v35 - 8);
  v12 = *(v38 + 64);
  __chkstk_darwin(v35);
  v14 = &v32 - v13;
  v41 = sub_34C8(&qword_1C958, &qword_133C8);
  v15 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v40 = &v32 - v16;
  sub_94DC(v2, v11);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_9544(v11, v18 + v17);
  sub_34C8(&qword_1C960, &qword_133D8);
  sub_95C0();
  sub_11A70();
  v19 = v39;
  (*(v3 + 104))(v6, enum case for ComponentStackBottomSpacing.none(_:), v39);
  v37 = &protocol conformance descriptor for ComponentStack<A>;
  v20 = sub_5C5C(&qword_1C9A8, &qword_1C950, &qword_133C0);
  v21 = v35;
  sub_11940();
  (*(v3 + 8))(v6, v19);
  (*(v38 + 8))(v14, v21);
  v22 = v33;
  v23 = v33 + *(v8 + 32);
  v24 = *v23;
  v25 = *(v23 + 8);
  v46 = v24;
  v47 = v25;
  sub_34C8(&qword_1C9B0, &qword_133F8);
  sub_119E0();
  v38 = v44;
  v39 = v43;
  v34 = v45;
  sub_94DC(v22, v11);
  v26 = swift_allocObject();
  sub_9544(v11, v26 + v17);
  sub_34C8(&qword_1C9B8, &qword_13400);
  v43 = v21;
  v44 = v20;
  swift_getOpaqueTypeConformance2();
  v27 = sub_5234(&qword_1C9C0, &qword_13408);
  v28 = sub_5234(&qword_1C9C8, &qword_13410);
  v29 = sub_5C5C(&qword_1C9D0, &qword_1C9C8, &qword_13410);
  v43 = v28;
  v44 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v27;
  v44 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_11AF0();
}

uint64_t sub_7DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = sub_11B50();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SiriAudioAlternativeSnippet();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_34C8(&qword_1C9C8, &qword_13410);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v25 = sub_34C8(&qword_1C9C0, &qword_13408);
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v25);
  v17 = &v24 - v16;
  sub_94DC(a1, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v19 = swift_allocObject();
  sub_9544(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_34C8(&qword_1C9D8, &qword_13418);
  sub_9814();
  sub_11A70();
  v20 = v26;
  (*(v3 + 104))(v6, enum case for ComponentStackBottomSpacing.none(_:), v26);
  v21 = sub_5C5C(&qword_1C9D0, &qword_1C9C8, &qword_13410);
  sub_11940();
  (*(v3 + 8))(v6, v20);
  (*(v10 + 8))(v13, v9);
  v28 = v9;
  v29 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v25;
  sub_11980();
  return (*(v14 + 8))(v17, v22);
}

uint64_t sub_816C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = sub_11B10();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v30);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_34C8(&qword_1C978, &qword_133E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for SiriAudioAlternativeSnippet();
  v12 = (a1 + *(v11 + 24));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v49) = v13;
  v50 = v14;
  sub_34C8(&qword_1C9B0, &qword_133F8);
  sub_119D0();
  if (v45)
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v17 = a1 + *(v11 + 28);
    v15 = sub_114B0();
  }

  v51 = &type metadata for String;
  v52 = &protocol witness table for String;
  v49 = v15;
  v50 = v16;
  v47 = &type metadata for String;
  v48 = &protocol witness table for String;
  v45 = 0;
  v46 = 0xE000000000000000;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v18 = a1 + *(v11 + 28);
  v19 = sub_114A0();
  v37 = &type metadata for String;
  v38 = &protocol witness table for String;
  v35 = v19;
  v36 = v20;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_11B00();
  KeyPath = swift_getKeyPath();
  (*(v3 + 32))(v10, v6, v30);
  v22 = &v10[*(v7 + 36)];
  *v22 = KeyPath;
  *(v22 + 1) = 1;
  v22[16] = 0;
  v23 = sub_34C8(&qword_1C960, &qword_133D8);
  v24 = v31;
  v25 = (v31 + *(v23 + 36));
  v26 = *(sub_34C8(&qword_1C9A0, &qword_133F0) + 28);
  v27 = enum case for Text.TruncationMode.tail(_:);
  v28 = sub_118C0();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  return sub_A61C(v10, v24);
}

uint64_t sub_8444(uint64_t a1)
{
  v2 = type metadata accessor for SiriAudioAlternativeSnippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(__chkstk_darwin(v2 - 8) + 36);
  v16 = sub_11490();
  sub_94DC(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_9544(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_34C8(&qword_1C9E8, &qword_13428);
  sub_34C8(&qword_1C9F0, &qword_13430);
  sub_5C5C(&qword_1C9F8, &qword_1C9E8, &qword_13428);
  v8 = sub_5234(&qword_1C720, &qword_13420);
  v9 = sub_11AC0();
  v10 = sub_A480(&qword_1C710, &type metadata accessor for SimpleItemRichView);
  v14 = v9;
  v15 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = v8;
  v15 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_A480(&qword_1CA00, &type metadata accessor for SiriAudioAlternativeItemModel);
  return sub_11A10();
}

uint64_t sub_86C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v50 = a3;
  v51 = sub_112D0();
  v49 = *(v51 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v51);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SiriAudioAlternativeSnippet();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v6 - 8);
  v42 = v8;
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_113F0();
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v40);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_11AC0();
  v43 = *(v46 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v46);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_34C8(&qword_1C720, &qword_13420);
  v45 = *(v47 - 8);
  v15 = *(v45 + 64);
  __chkstk_darwin(v47);
  v17 = &v39 - v16;
  v18 = sub_113B0();
  v81 = &type metadata for String;
  v82 = &protocol witness table for String;
  v79 = v18;
  v80 = v19;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v20 = sub_113E0();
  v74 = &type metadata for String;
  v75 = &protocol witness table for String;
  v72 = v20;
  v73 = v21;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v22 = a1;
  v23 = v39;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v24 = sub_8C28();
  if (v24)
  {
    v25 = &protocol witness table for AnyView;
    v26 = &type metadata for AnyView;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v53 = 0;
    v54 = 0;
  }

  v52 = v24;
  v55 = v26;
  v56 = v25;
  sub_11AB0();
  v27 = v40;
  (*(v9 + 16))(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v40);
  v28 = v44;
  sub_94DC(v23, v44);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = (v10 + *(v41 + 80) + v29) & ~*(v41 + 80);
  v31 = swift_allocObject();
  (*(v9 + 32))(v31 + v29, v11, v27);
  sub_9544(v28, v31 + v30);
  v32 = sub_A480(&qword_1C710, &type metadata accessor for SimpleItemRichView);
  v33 = v46;
  sub_11910();

  (*(v43 + 8))(v14, v33);
  v35 = v48;
  v34 = v49;
  v36 = v51;
  (*(v49 + 104))(v48, enum case for SeparatorStyle.insetLeading(_:), v51);
  v79 = v33;
  v80 = v32;
  swift_getOpaqueTypeConformance2();
  v37 = v47;
  sub_11900();
  (*(v34 + 8))(v35, v36);
  return (*(v45 + 8))(v17, v37);
}

uint64_t sub_8C28()
{
  v0 = sub_11300();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_11A40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_34C8(&qword_1C738, &qword_131D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = sub_112C0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_113D0();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_5A90(v13, &qword_1C738, &qword_131D0);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    (*(v15 + 56))(v11, 1, 1, v14);
    sub_112E0();
    sub_5A90(v11, &qword_1C738, &qword_131D0);
    sub_11A50();
    sub_A480(&qword_1C748, &type metadata accessor for RFImageView);
    v20 = sub_118E0();
    (*(v3 + 8))(v6, v2);
    (*(v15 + 8))(v18, v14);
    return v20;
  }
}

void sub_8F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_113F0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v36[-v10];
  v12 = sub_11670();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v17 = sub_3444(v12, qword_1DB08);
  (*(v13 + 16))(v16, v17, v12);
  v41 = v12;
  v42 = v13;
  v18 = v5[2];
  v18(v11, a1, v4);
  v18(v9, a1, v4);
  v19 = sub_11650();
  v20 = sub_11C00();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = a2;
    v22 = v21;
    v38 = swift_slowAlloc();
    v43 = v38;
    *v22 = 136315394;
    v23 = sub_113A0();
    v37 = v20;
    v25 = v24;
    v40 = a1;
    v26 = v5[1];
    v26(v11, v4);
    v27 = sub_9E78(v23, v25, &v43);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v28 = sub_113B0();
    v30 = v29;
    v26(v9, v4);
    v31 = sub_9E78(v28, v30, &v43);

    *(v22 + 14) = v31;
    _os_log_impl(&dword_0, v19, v37, "AlternativeItemsView#body tapped on %s, itemTitle: %s", v22, 0x16u);
    swift_arrayDestroy();

    a2 = v39;
  }

  else
  {

    v32 = v5[1];
    v32(v9, v4);
    v32(v11, v4);
  }

  (*(v42 + 8))(v16, v41);
  if (*a2)
  {
    v33 = *a2;
    v34 = sub_113C0();
    sub_11B70();
  }

  else
  {
    v35 = *(a2 + 8);
    sub_11B90();
    sub_A480(&unk_1CE30, &type metadata accessor for Context);
    sub_11750();
    __break(1u);
  }
}

unint64_t sub_9388()
{
  result = qword_1C930;
  if (!qword_1C930)
  {
    sub_5234(&qword_1C920, &qword_13378);
    sub_5C5C(&qword_1C938, &qword_1C908, &qword_13360);
    sub_5C5C(&qword_1C940, &qword_1C948, &qword_13388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C930);
  }

  return result;
}

uint64_t sub_9474(uint64_t a1)
{
  v2 = sub_34C8(&qword_1C920, &qword_13378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_94DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioAlternativeSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioAlternativeSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_95C0()
{
  result = qword_1C968;
  if (!qword_1C968)
  {
    sub_5234(&qword_1C960, &qword_133D8);
    sub_9678();
    sub_5C5C(&qword_1C998, &qword_1C9A0, &qword_133F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C968);
  }

  return result;
}

unint64_t sub_9678()
{
  result = qword_1C970;
  if (!qword_1C970)
  {
    sub_5234(&qword_1C978, &qword_133E0);
    sub_A480(&qword_1C980, &type metadata accessor for SimpleItemStandardView);
    sub_5C5C(&qword_1C988, &qword_1C990, &qword_133E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C970);
  }

  return result;
}

uint64_t sub_9790(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SiriAudioAlternativeSnippet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_9814()
{
  result = qword_1C9E0;
  if (!qword_1C9E0)
  {
    sub_5234(&qword_1C9D8, &qword_13418);
    sub_5234(&qword_1C720, &qword_13420);
    sub_11AC0();
    sub_A480(&qword_1C710, &type metadata accessor for SimpleItemRichView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9E0);
  }

  return result;
}

uint64_t sub_993C()
{
  v1 = type metadata accessor for SiriAudioAlternativeSnippet();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  sub_34C8(&qword_1C620, &qword_133D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_116F0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = *(v5 + v1[6] + 8);

  v10 = v1[7];
  v11 = sub_114C0();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_9AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SiriAudioAlternativeSnippet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_86C4(a1, v6, a2);
}

uint64_t sub_9B30()
{
  v1 = sub_113F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for SiriAudioAlternativeSnippet();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;

  v11 = v6[5];
  sub_34C8(&qword_1C620, &qword_133D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_116F0();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
    v13 = *(v10 + v11);
  }

  v14 = *(v10 + v6[6] + 8);

  v15 = v6[7];
  v16 = sub_114C0();
  (*(*(v16 - 8) + 8))(v10 + v15, v16);

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

void sub_9D28()
{
  v1 = *(sub_113F0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SiriAudioAlternativeSnippet() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_8F54(v0 + v2, v5);
}

uint64_t sub_9E1C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_9E78(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_9E78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_9F44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_A420(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_57FC(v11);
  return v7;
}

unint64_t sub_9F44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_A050(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_11C60();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_A050(uint64_t a1, unint64_t a2)
{
  v4 = sub_A09C(a1, a2);
  sub_A1CC(&off_18F40);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_A09C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_A2B8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_11C60();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_11BD0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_A2B8(v10, 0);
        result = sub_11C50();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_A1CC(uint64_t result)
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

  result = sub_A32C(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

void *sub_A2B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_34C8(&qword_1CA08, &unk_13438);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_A32C(char *result, int64_t a2, char a3, char *a4)
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
    sub_34C8(&qword_1CA08, &unk_13438);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_A420(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_A480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A4C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_117C0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_A4FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_117D0();
}

uint64_t sub_A550(uint64_t a1)
{
  v2 = sub_118C0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_117B0();
}

uint64_t sub_A61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_34C8(&qword_1C978, &qword_133E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_A690()
{
  result = qword_1CA10;
  if (!qword_1CA10)
  {
    sub_5234(&qword_1CA18, &qword_134A8);
    sub_5234(&qword_1C920, &qword_13378);
    sub_9388();
    swift_getOpaqueTypeConformance2();
    sub_5C5C(&qword_1C938, &qword_1C908, &qword_13360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA10);
  }

  return result;
}

uint64_t ConfirmationSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for ConfirmationSnippet() + 20));
  sub_11B90();
  sub_AF08(&unk_1CE30, &type metadata accessor for Context);
  *v4 = sub_11760();
  v4[1] = v5;
  v6 = sub_11580();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2, a1, v6);
}

uint64_t type metadata accessor for ConfirmationSnippet()
{
  result = qword_1CA80;
  if (!qword_1CA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfirmationSnippet.body.getter()
{
  v1 = type metadata accessor for ConfirmationSnippet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_AE38(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_AEA0(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_11AA0();
  sub_AF08(&qword_1CA20, &type metadata accessor for BinaryButtonView);
  return sub_11A70();
}

uint64_t sub_A9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = sub_11A30();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConfirmationSnippet();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_34C8(&qword_1C818, &qword_13540);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = sub_34C8(&qword_1CAC8, &unk_13548);
  v16 = *(v15 - 8);
  v28 = v15;
  v29 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  v20 = sub_AF6C();
  v38 = &type metadata for AnyView;
  v39 = &protocol witness table for AnyView;
  v37 = v20;
  sub_AE38(a1, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  sub_AEA0(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v32 = a1;
  sub_34C8(&qword_1C830, &unk_132C0);
  sub_5C5C(&qword_1C838, &qword_1C830, &unk_132C0);
  sub_11A00();
  v23 = v30;
  (*(v3 + 104))(v6, enum case for ButtonItemButtonStyle.Role.standard(_:), v30);
  v24 = sub_5C5C(&qword_1C840, &qword_1C818, &qword_13540);
  sub_118F0();
  (*(v3 + 8))(v6, v23);
  (*(v11 + 8))(v14, v10);
  v33 = v10;
  v34 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v28;
  v26 = sub_118E0();
  (*(v29 + 8))(v19, v25);
  v36 = &protocol witness table for AnyView;
  v35 = &type metadata for AnyView;
  v33 = v26;
  return sub_11A90();
}

uint64_t sub_AE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AEA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_AF08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_AF6C()
{
  v29 = sub_11A30();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v29);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConfirmationSnippet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_34C8(&qword_1C818, &qword_13540);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = sub_34C8(&qword_1CAC8, &unk_13548);
  v13 = *(v12 - 8);
  v27 = v12;
  v28 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  sub_AE38(v0, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_AEA0(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v30 = v0;
  sub_34C8(&qword_1C830, &unk_132C0);
  sub_5C5C(&qword_1C838, &qword_1C830, &unk_132C0);
  sub_11A00();
  v19 = sub_11570();
  v20 = &enum case for ButtonItemButtonStyle.Role.preferredAndDestructive(_:);
  if ((v19 & 1) == 0)
  {
    v20 = &enum case for ButtonItemButtonStyle.Role.preferred(_:);
  }

  v21 = v29;
  (*(v1 + 104))(v4, *v20, v29);
  v22 = sub_5C5C(&qword_1C840, &qword_1C818, &qword_13540);
  sub_118F0();
  (*(v1 + 8))(v4, v21);
  (*(v26 + 8))(v11, v8);
  v31 = v8;
  v32 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  v24 = sub_118E0();
  (*(v28 + 8))(v16, v23);
  return v24;
}

void sub_B378(uint64_t a1, const char *a2, uint64_t (*a3)(void))
{
  v6 = sub_11670();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v11 = sub_3444(v6, qword_1DB08);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_11650();
  v13 = sub_11C00();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, a2, v14, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v15 = a1 + *(type metadata accessor for ConfirmationSnippet() + 20);
  if (*v15)
  {
    v16 = *v15;
    v17 = a3();
    sub_11B70();
  }

  else
  {
    v18 = *(v15 + 8);
    sub_11B90();
    sub_AF08(&unk_1CE30, &type metadata accessor for Context);
    sub_11750();
    __break(1u);
  }
}

uint64_t sub_B5B8@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  sub_6EFC();
  result = sub_118D0();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_B618(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_AE38(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_AEA0(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_11AA0();
  sub_AF08(&qword_1CA20, &type metadata accessor for BinaryButtonView);
  return sub_11A70();
}

uint64_t sub_B76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_11580();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_B848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_11580();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_B900()
{
  sub_11580();
  if (v0 <= 0x3F)
  {
    sub_3834();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_B9C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConfirmationSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_A9F8(v4, a1);
}

uint64_t sub_BB00()
{
  v1 = (type metadata accessor for ConfirmationSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_11580();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_BD34()
{
  v0 = sub_11670();
  sub_C200(v0, qword_1DAF0);
  sub_3444(v0, qword_1DAF0);
  return sub_11660();
}

Swift::Int sub_BDC0()
{
  sub_11CE0();
  sub_11CF0(0);
  return sub_11D00();
}

Swift::Int sub_BE2C()
{
  sub_11CE0();
  sub_11CF0(0);
  return sub_11D00();
}

unint64_t sub_BEB4()
{
  result = qword_1CB68;
  if (!qword_1CB68)
  {
    sub_11450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB68);
  }

  return result;
}

uint64_t sub_BF24@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_BF70()
{
  v0 = sub_11670();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C600 != -1)
  {
    swift_once();
  }

  v5 = sub_3444(v0, qword_1DAF0);
  (*(v1 + 16))(v4, v5, v0);

  v6 = sub_11650();
  v7 = sub_11C00();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = sub_11BC0();
    v12 = sub_9E78(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "Plugin#view %s", v8, 0xCu);
    sub_57FC(v9);
  }

  (*(v1 + 8))(v4, v0);
  sub_C1AC();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_C1AC()
{
  result = qword_1CB70;
  if (!qword_1CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB70);
  }

  return result;
}

uint64_t *sub_C200(uint64_t a1, uint64_t *a2)
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

uint64_t sub_C264(uint64_t a1)
{
  v3 = sub_11450();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  v11 = sub_11670();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C600 != -1)
  {
    swift_once();
  }

  v16 = sub_3444(v11, qword_1DAF0);
  (*(v12 + 16))(v15, v16, v11);
  v28 = v11;
  v29 = v12;
  v17 = *(v4 + 16);
  v30 = a1;
  v17(v10, a1, v3);
  v18 = sub_11650();
  v27 = sub_11C00();
  if (os_log_type_enabled(v18, v27))
  {
    v19 = swift_slowAlloc();
    v26[1] = v1;
    v20 = v19;
    v26[0] = swift_slowAlloc();
    v31 = v26[0];
    *v20 = 136315138;
    v17(v8, v10, v3);
    v21 = sub_11BB0();
    v23 = v22;
    (*(v4 + 8))(v10, v3);
    v24 = sub_9E78(v21, v23, &v31);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_0, v18, v27, "AudioUIPlugin#snippet %s", v20, 0xCu);
    sub_57FC(v26[0]);
  }

  else
  {

    (*(v4 + 8))(v10, v3);
  }

  (*(v29 + 8))(v15, v28);
  return SiriAudioSnippets.snippet.getter();
}

uint64_t getEnumTagSinglePayload for Plugin.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Plugin.Error(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_C694()
{
  result = qword_1CB78;
  if (!qword_1CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB78);
  }

  return result;
}

uint64_t sub_C710()
{
  v0 = type metadata accessor for MediaPlayerHeightController(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_116A0();
  return v3;
}

uint64_t sub_C770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for SiriAudioAlternativeSnippet();
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  __chkstk_darwin(v3);
  v72 = (v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_34C8(&qword_1CE80, &qword_138C8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v70 - v8;
  v10 = sub_114C0();
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  __chkstk_darwin(v10);
  v71 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_34C8(&qword_1CE88, &qword_138D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v82 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = v70 - v17;
  v18 = sub_34C8(&qword_1CE90, &qword_138D8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v70 - v20;
  v22 = sub_11620();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(type metadata accessor for SiriAudioMediaPlayerSnippet(0) + 24);
  sub_114E0();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_5A90(v21, &qword_1CE90, &qword_138D8);
    v28 = 0;
    v29 = 0;
    v77 = 0;
    v78 = 0;
    v76 = 0;
    v88 = 0;
    v89 = 0;
    v73 = 0;
    v74 = 0;
    v86 = 0;
    v87 = 0;
    v85 = 0;
    v30 = 0;
  }

  else
  {
    v70[0] = v9;
    (*(v23 + 32))(v26, v21, v22);
    v90 = sub_11610();
    v91 = v31;
    v32 = sub_11600();
    v77 = v33;
    v78 = v32;
    v34 = a1[3];
    if (!v34)
    {
      v69 = a1[4];
      sub_11B90();
      sub_E4F4(&unk_1CE30, &type metadata accessor for Context);
      result = sub_11750();
      __break(1u);
      return result;
    }

    v35 = v34;
    sub_11B60();
    v30 = v36;

    v37 = *a1;
    v38 = a1[1];
    v39 = *(a1 + 16);
    type metadata accessor for MediaPlayerHeightController(0);
    v70[1] = a1;
    sub_E4F4(&unk_1CE20, type metadata accessor for MediaPlayerHeightController);
    sub_11710();
    v76 = sub_11740();
    v89 = v40;
    sub_11710();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_116B0();

    sub_11A20();
    sub_11730();
    (*(v23 + 8))(v26, v22);
    v87 = v114;
    v88 = v112;
    v86 = v115;
    v85 = v116;
    v73 = v117;
    v74 = v113;
    v28 = v90;
    v29 = v91;
    v9 = v70[0];
  }

  sub_114D0();
  v42 = v79;
  v41 = v80;
  v43 = (*(v79 + 48))(v9, 1, v80);
  v44 = v84;
  v91 = v29;
  if (v43 == 1)
  {
    sub_5A90(v9, &qword_1CE80, &qword_138C8);
    v45 = 1;
    v46 = v81;
    v47 = v29;
  }

  else
  {
    v48 = v28;
    v49 = v9;
    v50 = v71;
    (*(v42 + 32))(v71, v49, v41);
    v51 = v72;
    (*(v42 + 16))(v72 + v44[7], v50, v41);
    sub_11B90();
    sub_E4F4(&unk_1CE30, &type metadata accessor for Context);
    *v51 = sub_11760();
    v51[1] = v52;
    v53 = v44[5];
    *(v51 + v53) = swift_getKeyPath();
    sub_34C8(&qword_1C620, &qword_133D0);
    swift_storeEnumTagMultiPayload();
    v54 = v51 + v44[6];
    LOBYTE(v92) = 0;
    sub_119C0();
    v47 = v91;
    (*(v42 + 8))(v50, v41);
    v55 = v100;
    *v54 = v99;
    *(v54 + 1) = v55;
    v56 = v51;
    v28 = v48;
    v46 = v81;
    sub_EBA4(v56, v81, type metadata accessor for SiriAudioAlternativeSnippet);
    v45 = 0;
  }

  v90 = v28;
  (*(v83 + 56))(v46, v45, 1, v44);
  v57 = v82;
  sub_5BB0(v46, v82, &qword_1CE88, &qword_138D0);
  *&v92 = v28;
  *(&v92 + 1) = v47;
  v59 = v77;
  v58 = v78;
  *&v93 = v78;
  *(&v93 + 1) = v77;
  *&v94 = v30;
  v60 = v75;
  v61 = v76;
  *(&v94 + 1) = v76;
  *&v95 = v89;
  v62 = v73;
  v63 = v74;
  *(&v95 + 1) = v88;
  *&v96 = v74;
  *(&v96 + 1) = v87;
  *&v97 = v86;
  *(&v97 + 1) = v85;
  v98 = v73;
  *(v75 + 96) = v73;
  v64 = v97;
  v60[4] = v96;
  v60[5] = v64;
  v65 = v93;
  *v60 = v92;
  v60[1] = v65;
  v66 = v95;
  v60[2] = v94;
  v60[3] = v66;
  v67 = sub_34C8(&qword_1CE98, &qword_138E0);
  sub_5BB0(v57, v60 + *(v67 + 48), &qword_1CE88, &qword_138D0);
  sub_5BB0(&v92, &v99, &unk_1CEA0, &qword_138E8);
  sub_5A90(v46, &qword_1CE88, &qword_138D0);
  sub_5A90(v57, &qword_1CE88, &qword_138D0);
  v99 = v90;
  v100 = v91;
  v101 = v58;
  v102 = v59;
  v103 = v30;
  v104 = v61;
  v105 = v89;
  v106 = v88;
  v107 = v63;
  v108 = v87;
  v109 = v86;
  v110 = v85;
  v111 = v62;
  return sub_5A90(&v99, &unk_1CEA0, &qword_138E8);
}

uint64_t sub_CFD4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_E9CC(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_EBA4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for SiriAudioMediaPlayerSnippet);
  sub_34C8(&qword_1CE70, &qword_138C0);
  sub_5C5C(&qword_1CE78, &qword_1CE70, &qword_138C0);
  return sub_11A70();
}

uint64_t sub_D130()
{
  v0 = sub_11670();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v5 = sub_3444(v0, qword_1DB08);
  (*(v1 + 16))(v4, v5, v0);

  v6 = sub_11650();
  v7 = sub_11C00();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_116B0();

    *(v8 + 4) = v10[1];
    _os_log_impl(&dword_0, v6, v7, "snippetHeight#set value to %f", v8, 0xCu);
  }

  return (*(v1 + 8))(v4, v0);
}

double sub_D338()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_116B0();

  return v1;
}

uint64_t sub_D3AC()
{
  v1 = OBJC_IVAR____TtC13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267627MediaPlayerHeightController__snippetHeight;
  v2 = sub_34C8(&qword_1CED0, &qword_13988);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void sub_D47C()
{
  sub_D50C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_D50C()
{
  if (!qword_1CC60)
  {
    v0 = sub_116D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1CC60);
    }
  }
}

uint64_t sub_D55C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MediaPlayerHeightController(0);
  result = sub_11690();
  *a1 = result;
  return result;
}

void sub_D59C(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v3 = 0x4C41434F4CLL;
  v4 = sub_11670();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v49 = *v2;
  v12 = *(&v49 + 1);
  if (!*(&v49 + 1))
  {
    goto LABEL_11;
  }

  v13 = v49;
  v14 = v49 == 0x45445F4C41434F4CLL && *(&v49 + 1) == 0xEC00000045434956;
  if (v14 || (sub_11C90() & 1) != 0)
  {
    goto LABEL_11;
  }

  v15 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
LABEL_11:
    v12 = 0xE500000000000000;
  }

  else
  {
    sub_5BB0(&v49, v47, &qword_1CEC0, &qword_13980);
    v3 = v13;
  }

  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v16 = sub_3444(v4, qword_1DB08);
  v17 = v5[2];
  v41 = v16;
  v40 = v17;
  (v17)(v11);

  sub_ED24(v2, v47);
  v44 = v11;
  v18 = sub_11650();
  v19 = sub_11C00();

  sub_ED5C(v2);
  v20 = os_log_type_enabled(v18, v19);
  v43 = v4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39 = v3;
    v46 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_9E78(v39, v12, &v46);
    *(v21 + 12) = 2080;
    v47[0] = *(v2 + 16);
    v48 = *(v2 + 16);
    v38 = v9;
    sub_5BB0(v47, &v45, &qword_1CEC0, &qword_13980);
    sub_34C8(&qword_1CEC0, &qword_13980);
    v23 = sub_11BB0();
    v25 = sub_9E78(v23, v24, &v46);

    *(v21 + 14) = v25;
    v9 = v38;
    _os_log_impl(&dword_0, v18, v19, "MediaPlayerViewController#makeUIViewController with routeUID: %s bundleID: %s", v21, 0x16u);
    swift_arrayDestroy();

    v4 = v43;
  }

  v26 = v44;
  v44 = v5[1];
  v44(v26, v4);
  v27 = sub_ED8C(*(v2 + 16), *(v2 + 24));
  v28 = [v27 view];
  if (v28)
  {
    v29 = v28;
    v48 = *(v2 + 40);
    [v28 sizeThatFits:{*(v2 + 32), 250.0}];
    v31 = v30;

    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v31;

    sub_116C0();
    v40(v9, v41, v4);

    v32 = sub_11650();
    v33 = sub_11C00();
    sub_5A90(&v48, &qword_1CEB0, &qword_13970);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_116B0();

      *(v34 + 4) = v45;
      _os_log_impl(&dword_0, v32, v33, "snippetHeight#set value to %f", v34, 0xCu);
      v4 = v43;
    }

    v44(v9, v4);
    sub_34C8(&qword_1CEB8, &qword_13978);
    sub_118A0();
    v35 = v45;
    [v27 setDelegate:v45];

    v36 = [v27 view];
    if (v36)
    {

      LODWORD(v37) = 1148846080;
      [v36 setContentHuggingPriority:1 forAxis:v37];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_DBC4(void *a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v9 = sub_11670();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    a2(v14);
    sub_F0C8(a2);
  }

  result = [a1 view];
  if (result)
  {
    v16 = result;
    [result sizeThatFits:{*(v5 + OBJC_IVAR____TtCV13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267625MediaPlayerViewController11Coordinator_snippetWidth), 250.0}];
    v18 = v17;

    v19 = *(v5 + OBJC_IVAR____TtCV13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267625MediaPlayerViewController11Coordinator_heightController);
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v18;

    sub_116C0();
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v20 = sub_3444(v9, qword_1DB08);
    (*(v10 + 16))(v13, v20, v9);

    v21 = sub_11650();
    v22 = sub_11C00();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      swift_getKeyPath();
      v25 = v13;
      swift_getKeyPath();
      sub_116B0();
      v13 = v25;

      *(v23 + 4) = v26;
      _os_log_impl(&dword_0, v21, v22, "snippetHeight#set value to %f", v23, 0xCu);
    }

    result = (*(v10 + 8))(v13, v9);
    if (a4)
    {

      a4(v24);
      return sub_F0C8(a4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_E05C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaPlayerViewController.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_E128(uint64_t a1, uint64_t a2)
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

uint64_t sub_E144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_E18C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_E1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_114F0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_E2C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_114F0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_E38C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E3C4()
{
  sub_E460();
  if (v0 <= 0x3F)
  {
    sub_3834();
    if (v1 <= 0x3F)
    {
      sub_114F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_E460()
{
  if (!qword_1CE18)
  {
    type metadata accessor for MediaPlayerHeightController(255);
    sub_E4F4(&unk_1CE20, type metadata accessor for MediaPlayerHeightController);
    v0 = sub_11720();
    if (!v1)
    {
      atomic_store(v0, &qword_1CE18);
    }
  }
}

uint64_t sub_E4F4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_E548()
{
  v1 = v0;
  v2 = sub_11670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v7 = sub_3444(v2, qword_1DB08);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_11650();
  v9 = sub_11C00();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "MediaPlayerViewController#makeCoordinator creating MediaPlayer Coordinator", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 32);
  v23 = *(v1 + 40);
  v12 = *(&v23 + 1);
  v13 = type metadata accessor for MediaPlayerViewController.Coordinator();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtCV13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267625MediaPlayerViewController11Coordinator_parent];
  v17 = *(v1 + 16);
  v16 = *(v1 + 32);
  v18 = *v1;
  *(v15 + 6) = *(v1 + 48);
  *(v15 + 1) = v17;
  *(v15 + 2) = v16;
  *v15 = v18;
  *&v14[OBJC_IVAR____TtCV13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267625MediaPlayerViewController11Coordinator_snippetWidth] = v11;
  *&v14[OBJC_IVAR____TtCV13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267625MediaPlayerViewController11Coordinator_heightController] = v12;
  sub_5BB0(&v23, v22, &qword_1CEB0, &qword_13970);
  sub_ED24(v1, v22);
  v21.receiver = v14;
  v21.super_class = v13;
  return objc_msgSendSuper2(&v21, "init");
}

void sub_E788(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 6);
  sub_D59C(a1);
}

id sub_E7D4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = *(v1 + 6);
  result = sub_E548();
  *a1 = result;
  return result;
}

uint64_t sub_E85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_F074();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_E8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_F074();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_E924()
{
  sub_F074();
  sub_11880();
  __break(1u);
}

unint64_t sub_E950()
{
  result = qword_1CE68;
  if (!qword_1CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE68);
  }

  return result;
}

uint64_t sub_E9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioMediaPlayerSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_EA30()
{
  v1 = (type metadata accessor for SiriAudioMediaPlayerSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = *(v0 + v3 + 16);
  sub_EB24();

  v8 = v1[8];
  v9 = sub_114F0();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_EB2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriAudioMediaPlayerSnippet(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_C770(v4, a1);
}

uint64_t sub_EBA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_EC0C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_116B0();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_EC90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_116C0();
  return sub_D130();
}

_BYTE **sub_ED14(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

id sub_ED8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_11670();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_11BA0();
  if (a2)
  {
    v9 = sub_11BA0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(MRUNowPlayingViewController) initWithRouteUID:v8 client:v9 player:0];

  [v10 setLayout:4];
  [v10 setContext:5];
  v11 = objc_opt_self();
  v12 = [v10 traitCollection];
  v13 = [v12 userInterfaceStyle];

  v14 = [v11 _visualStylingProviderForRecipe:1 category:1 andUserInterfaceStyle:v13];
  v15 = [objc_allocWithZone(MRUVisualStylingProvider) initWithVisualStylingProvider:v14];
  if (v15)
  {
    v16 = v15;
    [v10 setStylingProvider:v15];
  }

  else
  {
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v17 = sub_3444(v3, qword_1DB08);
    (*(v4 + 16))(v7, v17, v3);
    v18 = sub_11650();
    v19 = sub_11C00();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "MediaPlayerViewController#mediaController MRUVisualStyleProvider is undefined", v20, 2u);
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
  }

  return v10;
}

unint64_t sub_F074()
{
  result = qword_1CEC8;
  if (!qword_1CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CEC8);
  }

  return result;
}

uint64_t sub_F0C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_F0D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_F170()
{
  v0 = sub_11670();
  sub_C200(v0, qword_1DB08);
  sub_3444(v0, qword_1DB08);
  sub_F208();
  sub_11C10();
  return sub_11680();
}

unint64_t sub_F208()
{
  result = qword_1CF50;
  if (!qword_1CF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CF50);
  }

  return result;
}

uint64_t sub_F268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_11470();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_F344(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_11470();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SiriAudioSimpleTextSnippet()
{
  result = qword_1CFB0;
  if (!qword_1CFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_F448()
{
  sub_11470();
  if (v0 <= 0x3F)
  {
    sub_3834();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_F578(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_F6B8(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_F804(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_11B30();
  sub_F8D8(&qword_1CFE8, &type metadata accessor for SummaryItemStandardView);
  return sub_11A70();
}

uint64_t sub_F6B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioSimpleTextSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F71C()
{
  v1 = (type metadata accessor for SiriAudioSimpleTextSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_11470();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_F804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioSimpleTextSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F868()
{
  v0 = *(*(type metadata accessor for SiriAudioSimpleTextSnippet() - 8) + 80);

  return sub_F4E8();
}

uint64_t sub_F8D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_F924()
{
  result = qword_1CFF0;
  if (!qword_1CFF0)
  {
    sub_5234(&qword_1CFF8, qword_13A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CFF0);
  }

  return result;
}

uint64_t sub_FA34@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  matched = type metadata accessor for ShazamSuccessfulMatchView(0);
  v2 = *(*(matched - 8) + 64);
  __chkstk_darwin(matched);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_11640();
  v35 = *(v38 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin(v38);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_34C8(&qword_1D0C8, &qword_13AB8);
  v6 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v8 = (&v34 - v7);
  v9 = sub_34C8(&qword_1D0D0, &qword_13AC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v34 - v11);
  v13 = sub_34C8(&qword_1D0A8, &qword_13AB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = sub_11390();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115E0();
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for ShazamSnippetRole.success(_:))
  {
    (*(v18 + 96))(v21, v17);
    v23 = v35;
    v25 = v37;
    v24 = v38;
    (*(v35 + 32))(v37, v21, v38);
    v26 = v34;
    (*(v23 + 16))(v34, v25, v24);
    v27 = (v26 + *(matched + 20));
    sub_11B90();
    sub_1052C(&unk_1CE30, &type metadata accessor for Context);
    *v27 = sub_11760();
    v27[1] = v28;
    sub_105E8(v26, v12, type metadata accessor for ShazamSuccessfulMatchView);
    swift_storeEnumTagMultiPayload();
    sub_104D8();
    sub_1052C(&qword_1D0B8, type metadata accessor for ShazamSuccessfulMatchView);
    sub_117E0();
    sub_10650(v16, v8);
    swift_storeEnumTagMultiPayload();
    sub_1041C();
    sub_10594();
    sub_117E0();
    sub_106C0(v16);
    sub_10728(v26);
    return (*(v23 + 8))(v37, v38);
  }

  else
  {
    v38 = matched;
    if (v22 == enum case for ShazamSnippetRole.listening(_:))
    {
      sub_11B90();
      sub_1052C(&unk_1CE30, &type metadata accessor for Context);
      v30 = sub_11760();
      *v12 = v30;
      v12[1] = v31;
      swift_storeEnumTagMultiPayload();
      sub_104D8();
      sub_1052C(&qword_1D0B8, type metadata accessor for ShazamSuccessfulMatchView);
      v32 = v30;
      sub_117E0();
      sub_10650(v16, v8);
      swift_storeEnumTagMultiPayload();
      sub_1041C();
      sub_10594();
      sub_117E0();

      return sub_106C0(v16);
    }

    else if (v22 == enum case for ShazamSnippetRole.noMatch(_:))
    {
      sub_11B90();
      sub_1052C(&unk_1CE30, &type metadata accessor for Context);
      *v8 = sub_11760();
      v8[1] = v33;
      swift_storeEnumTagMultiPayload();
      sub_1041C();
      sub_10594();
      return sub_117E0();
    }

    else
    {
      result = sub_11C80();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100A4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_105E8(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SiriAudioShazamSnippet);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_102BC(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_34C8(&qword_1D090, &qword_13AA8);
  sub_10390();
  return sub_11A70();
}

uint64_t sub_101D4()
{
  v1 = (type metadata accessor for SiriAudioShazamSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_115F0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_102BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioShazamSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10320@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for SiriAudioShazamSnippet(0) - 8) + 80);

  return sub_FA34(a1);
}

unint64_t sub_10390()
{
  result = qword_1D098;
  if (!qword_1D098)
  {
    sub_5234(&qword_1D090, &qword_13AA8);
    sub_1041C();
    sub_10594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D098);
  }

  return result;
}

unint64_t sub_1041C()
{
  result = qword_1D0A0;
  if (!qword_1D0A0)
  {
    sub_5234(&qword_1D0A8, &qword_13AB0);
    sub_104D8();
    sub_1052C(&qword_1D0B8, type metadata accessor for ShazamSuccessfulMatchView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D0A0);
  }

  return result;
}

unint64_t sub_104D8()
{
  result = qword_1D0B0;
  if (!qword_1D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D0B0);
  }

  return result;
}

uint64_t sub_1052C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10594()
{
  result = qword_1D0C0;
  if (!qword_1D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D0C0);
  }

  return result;
}

uint64_t sub_105E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10650(uint64_t a1, uint64_t a2)
{
  v4 = sub_34C8(&qword_1D0A8, &qword_13AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_106C0(uint64_t a1)
{
  v2 = sub_34C8(&qword_1D0A8, &qword_13AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10728(uint64_t a1)
{
  matched = type metadata accessor for ShazamSuccessfulMatchView(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

__n128 sub_10784(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_107D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_108CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_109A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(319);
  if (v4 <= 0x3F)
  {
    sub_3834();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10A28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10A84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10AE8()
{
  result = qword_1D168;
  if (!qword_1D168)
  {
    sub_5234(&qword_1D170, &qword_13B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D168);
  }

  return result;
}

uint64_t sub_10B68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_11350();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_11380();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_11370();
  *v6 = 0;
  (*(v3 + 104))(v6, enum case for MatchingFlowState.noMatch(_:), v2);
  sub_11360();

  sub_11340();
  LOBYTE(v2) = sub_118B0();
  sub_116E0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  result = sub_34C8(&qword_1D178, &qword_13C40);
  v19 = a1 + *(result + 36);
  *v19 = v2;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

uint64_t sub_10CF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v33 = sub_11350();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v33);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_11330();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_11640();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_111A4();
  (*(v13 + 16))(v16, v2, v12);
  v17 = sub_11BF0();
  v18 = sub_11380();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_11370();
  sub_11630();
  v21 = v17;
  sub_11320();
  sub_11310();
  (*(v8 + 16))(v6, v11, v7);
  (*(v3 + 104))(v6, enum case for MatchingFlowState.match(_:), v33);
  sub_11360();

  v22 = v34;
  sub_11340();
  LOBYTE(v12) = sub_118B0();
  sub_116E0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  (*(v8 + 8))(v11, v7);
  result = sub_34C8(&qword_1D178, &qword_13C40);
  v32 = v22 + *(result + 36);
  *v32 = v12;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_11038@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_11350();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_11380();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_11370();
  (*(v3 + 104))(v6, enum case for MatchingFlowState.listening(_:), v2);
  sub_11360();

  sub_11340();
  LOBYTE(v2) = sub_118B0();
  sub_116E0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  result = sub_34C8(&qword_1D178, &qword_13C40);
  v19 = a1 + *(result + 36);
  *v19 = v2;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

unint64_t sub_111A4()
{
  result = qword_1D180;
  if (!qword_1D180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1D180);
  }

  return result;
}

unint64_t sub_111F4()
{
  result = qword_1D188;
  if (!qword_1D188)
  {
    sub_5234(&qword_1D178, &qword_13C40);
    sub_1052C(&unk_1D190, &type metadata accessor for MatchingFlowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D188);
  }

  return result;
}