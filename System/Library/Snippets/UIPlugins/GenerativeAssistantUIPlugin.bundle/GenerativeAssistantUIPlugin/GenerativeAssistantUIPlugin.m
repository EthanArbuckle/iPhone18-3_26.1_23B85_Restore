uint64_t sub_1324@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_1370(uint64_t a1)
{
  v107 = a1;
  v74 = sub_2390();
  v73 = *(v74 - 8);
  v1 = *(v73 + 64);
  (__chkstk_darwin)();
  v71 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2350();
  v70 = *(v72 - 8);
  v3 = *(v70 + 64);
  v4 = (__chkstk_darwin)();
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = &v67 - v6;
  v81 = sub_22E0();
  v80 = *(v81 - 8);
  v7 = *(v80 + 64);
  __chkstk_darwin(v81);
  v78 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2320();
  v77 = *(v79 - 8);
  v9 = *(v77 + 64);
  v10 = __chkstk_darwin(v79);
  v75 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v67 - v12;
  v13 = sub_22C0();
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = *(v87 + 64);
  __chkstk_darwin(v13);
  v85 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2300();
  v84 = *(v86 - 8);
  v16 = *(v84 + 64);
  v17 = __chkstk_darwin(v86);
  v82 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v83 = &v67 - v19;
  v20 = sub_22A0();
  v90 = *(v20 - 8);
  v91 = v20;
  v21 = *(v90 + 64);
  __chkstk_darwin(v20);
  v89 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23E0();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v94 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23D0();
  v97 = *(v26 - 8);
  v98 = v26;
  v27 = *(v97 + 64);
  __chkstk_darwin(v26);
  v95 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_2340();
  v93 = *(v96 - 8);
  v29 = *(v93 + 64);
  __chkstk_darwin(v96);
  v92 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23B0();
  v104 = *(v31 - 8);
  v105 = v31;
  v32 = *(v104 + 64);
  __chkstk_darwin(v31);
  v102 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22F0();
  v101 = *(v103 - 8);
  v34 = *(v101 + 64);
  v35 = __chkstk_darwin(v103);
  v99 = &v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v100 = &v67 - v37;
  v38 = sub_2370();
  v106 = *(v38 - 8);
  v39 = *(v106 + 64);
  __chkstk_darwin(v38);
  v41 = &v67 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2310();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = __chkstk_darwin(v42);
  v47 = &v67 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v49 = &v67 - v48;
  v50 = sub_2280();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  v54 = &v67 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v54, v107, v50);
  v55 = (*(v51 + 88))(v54, v50);
  if (v55 != enum case for GenerativeResultModels.GenerativeRichTextResultSnippet(_:))
  {
    if (v55 == enum case for GenerativeResultModels.GenerativeNoResultSnippet(_:))
    {
      (*(v51 + 96))(v54, v50);
      v58 = v100;
      v57 = v101;
      v59 = v103;
      (*(v101 + 32))(v100, v54, v103);
      (*(v57 + 16))(v99, v58, v59);
      v60 = v102;
      sub_23A0();
      sub_2238(&qword_8158, &type metadata accessor for DisabledResponseView);
      v61 = v105;
      v56 = sub_23F0();
      v62 = v104;
LABEL_7:
      (*(v62 + 8))(v60, v61);
      (*(v57 + 8))(v58, v59);
      return v56;
    }

    if (v55 == enum case for GenerativeResultModels.GenerativeMediaConfirmationSnippet(_:))
    {
      (*(v51 + 96))(v54, v50);
      v58 = v92;
      v57 = v93;
      v59 = v96;
      (*(v93 + 32))(v92, v54, v96);
      sub_2330();
      v60 = v95;
      sub_23C0();
      sub_2238(&qword_8150, &type metadata accessor for AttachmentConfirmationView);
      v61 = v98;
      v56 = sub_23F0();
      v62 = v97;
      goto LABEL_7;
    }

    if (v55 == enum case for GenerativeResultModels.GenerativeDismissalSnippet(_:))
    {
      v64 = v89;
      sub_2290();
      sub_2238(&qword_8148, &type metadata accessor for GenerativeDismissalView);
      v65 = v91;
      v56 = sub_23F0();
      (*(v90 + 8))(v64, v65);
LABEL_11:
      (*(v51 + 8))(v54, v50);
      return v56;
    }

    if (v55 == enum case for GenerativeResultModels.GenerativeRateLimitedSnippet(_:))
    {
      (*(v51 + 96))(v54, v50);
      v57 = v84;
      v58 = v83;
      v59 = v86;
      (*(v84 + 32))(v83, v54, v86);
      (*(v57 + 16))(v82, v58, v59);
      v60 = v85;
      sub_22B0();
      sub_2238(&qword_8140, &type metadata accessor for GenerativeRateLimitedView);
      v61 = v88;
      v56 = sub_23F0();
      v62 = v87;
      goto LABEL_7;
    }

    if (v55 == enum case for GenerativeResultModels.GenerativeSearchWebButtonSnippet(_:))
    {
      (*(v51 + 96))(v54, v50);
      v57 = v77;
      v58 = v76;
      v59 = v79;
      (*(v77 + 32))(v76, v54, v79);
      (*(v57 + 16))(v75, v58, v59);
      v60 = v78;
      sub_22D0();
      sub_2238(&qword_8138, &type metadata accessor for GenerativeSearchWebButtonView);
      v61 = v81;
      v56 = sub_23F0();
      v66 = &v108;
    }

    else
    {
      if (v55 != enum case for GenerativeResultModels.GenerativeAttributionSnippet(_:))
      {
        v56 = sub_23F0();
        goto LABEL_11;
      }

      (*(v51 + 96))(v54, v50);
      v57 = v70;
      v58 = v69;
      v59 = v72;
      (*(v70 + 32))(v69, v54, v72);
      (*(v57 + 16))(v68, v58, v59);
      v60 = v71;
      sub_2380();
      sub_2238(&qword_8130, &type metadata accessor for AttributionsTextView);
      v61 = v74;
      v56 = sub_23F0();
      v66 = &v105;
    }

    v62 = *(v66 - 32);
    goto LABEL_7;
  }

  (*(v51 + 96))(v54, v50);
  (*(v43 + 32))(v49, v54, v42);
  (*(v43 + 16))(v47, v49, v42);
  sub_2360();
  sub_2238(&unk_8160, &type metadata accessor for TextGenerationView);
  v56 = sub_23F0();
  (*(v106 + 8))(v41, v38);
  (*(v43 + 8))(v49, v42);
  return v56;
}

uint64_t sub_2238(unint64_t *a1, void (*a2)(uint64_t))
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