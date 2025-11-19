__n128 sub_100002134(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002140(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002160(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1000021A0()
{
  v66 = sub_100005A2C(&qword_1000321C0, &qword_1000201D0);
  v1 = sub_100006C14(v66);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = v63 - v6;
  v67 = sub_100005A2C(&qword_1000321C8, &qword_1000201D8);
  v8 = sub_100006C04(v67);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v63 - v11;
  v13 = sub_100005A2C(&unk_1000321D0, &qword_1000201E0);
  v14 = sub_100006C14(v13);
  v65 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v19 = v63 - v18;
  v20 = *(v0 + 16);
  v21 = [v20 allItems];
  sub_100005A2C(&qword_100032B10, &qword_1000201E8);
  v22 = sub_10001DDD4();

  v23 = sub_1000168D0(v22);

  if (v23 < 1)
  {
    v64 = v3;
    v65 = v12;
    v38 = v66;
    v63[2] = v63;
    __chkstk_darwin(v24);
    v63[1] = &v63[-4];
    v39 = *(v0 + 8);
    v40 = [v39 localizedLabel];
    v41 = sub_10001DD14();
    v43 = v42;

    v44 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v44 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      v45 = [v39 localizedLabel];
      v46 = sub_10001DD14();
      v48 = v47;

      *&v73 = v46;
      *(&v73 + 1) = v48;
      sub_100005A7C();
      v49 = sub_10001DA74();
      v44 = v52 & 1;
    }

    else
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
    }

    *&v73 = v49;
    *(&v73 + 1) = v50;
    v74 = v44;
    v75 = v51;
    v53 = *v0;
    v54 = sub_10000CB58(v39);
    if (v55)
    {
      v69 = v54;
      v70 = v55;
      sub_100005A7C();
      v56 = sub_10001DA74();
      v59 = v58 & 1;
    }

    else
    {
      v56 = 0;
      v59 = 0;
      v57 = 0;
    }

    v60 = v65;
    v69 = v56;
    v70 = v55;
    v71 = v59;
    v72 = v57;
    sub_100005A2C(&qword_1000321E8, &qword_1000201F0);
    sub_100005A2C(&unk_1000321F0, &qword_1000201F8);
    sub_100005AD0();
    sub_100006BEC();
    sub_100006B8C(v61, &unk_1000321F0, &qword_1000201F8);
    sub_10001DC54();
    v62 = v64;
    (*(v64 + 16))(v60, v7, v38);
    swift_storeEnumTagMultiPayload();
    sub_100005B94();
    sub_100006064();
    sub_10001D9A4();
    return (*(v62 + 8))(v7, v38);
  }

  else
  {
    v25 = [v20 sections];
    sub_100005A2C(&qword_1000322B8, &qword_100020250);
    v26 = sub_10001DDD4();

    v27 = sub_10000565C(v26);

    v68 = v27;
    swift_getKeyPath();
    v28 = *v0;
    v29 = *(v0 + 8);
    v73 = *(v0 + 24);
    v30 = swift_allocObject();
    v31 = *(v0 + 16);
    *(v30 + 16) = *v0;
    *(v30 + 32) = v31;
    *(v30 + 48) = *(v0 + 32);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_100006124;
    *(v32 + 24) = v30;
    v33 = v28;
    v34 = v29;
    v35 = v20;
    sub_100006808(&v73, &v69, &qword_1000322C0, &qword_100020278);
    sub_100005A2C(&qword_1000322C8, &qword_100020280);
    sub_100005A2C(&qword_100032218, &qword_100020200);
    sub_100006B8C(&qword_1000322D0, &qword_1000322C8, &qword_100020280);
    sub_100006B8C(&qword_1000322D8, &qword_1000322B8, &qword_100020250);
    sub_100005C18();
    sub_10001DC44();
    v36 = v65;
    (*(v65 + 2))(v12, v19, v13);
    swift_storeEnumTagMultiPayload();
    sub_100005B94();
    sub_100006064();
    sub_10001D9A4();
    return (*(v36 + 1))(v19, v13);
  }
}

uint64_t sub_10000280C@<X0>(uint64_t a1@<X0>, void **a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10001D944();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2[2] sections];
  sub_100005A2C(&qword_1000322B8, &qword_100020250);
  v12 = sub_10001DDD4();

  v13 = sub_1000168D0(v12);

  v15 = __OFSUB__(v13, 1);
  v16 = v13 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v32 = v7;
    if (v16 == a1)
    {
      v17 = sub_10001D934();
    }

    else
    {
      v17 = sub_10001D924();
    }

    v31 = &v29;
    __chkstk_darwin(v17);
    sub_10000321C(a1, a2, v42);
    sub_100003314(v16 == a1, a2, &v33);
    v18 = v35;
    v29 = v34;
    v30 = v33;
    v19 = sub_10001D9E4();
    sub_10001D774();
    v33 = v30;
    v34 = v29;
    v35 = v18;
    v36 = v19;
    v37 = v20;
    v38 = v21;
    v39 = v22;
    v40 = v23;
    v41 = 0;
    sub_100005A2C(&qword_1000321E8, &qword_1000201F0);
    sub_100005A2C(&qword_100032248, &qword_100020218);
    sub_100005A2C(&qword_100032258, &qword_100020220);
    sub_100005AD0();
    sub_100006B8C(&qword_100032240, &qword_100032248, &qword_100020218);
    sub_100005E54();
    sub_10001DC54();
    v24 = *(sub_100005A2C(&qword_100032228, &qword_100020208) + 36);
    v25 = v32;
    (*(v32 + 16))(a3 + v24, v10, v6);
    sub_10000619C(a3 + v24, 0, 1, v6);
    KeyPath = swift_getKeyPath();
    v27 = (a3 + *(sub_100005A2C(&qword_100032218, &qword_100020200) + 36));
    v28 = *(sub_100005A2C(&qword_1000322A8, &qword_100020248) + 28);
    (*(v25 + 32))(v27 + v28, v10, v6);
    result = sub_10000619C(v27 + v28, 0, 1, v6);
    *v27 = KeyPath;
  }

  return result;
}

uint64_t sub_100002B80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v64 = a3;
  v5 = sub_100005A2C(&qword_1000322E8, &unk_1000202C0);
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  v7 = (__chkstk_darwin)();
  v69 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &KeyPath - v9;
  v65 = *(a1 + 16);
  v10 = [v65 sections];
  sub_100005A2C(&qword_1000322B8, &qword_100020250);
  v11 = sub_10001DDD4();

  v12 = sub_1000168D0(v11);

  if (v12 < 2)
  {
    goto LABEL_8;
  }

  v13 = [a2 title];
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = v13;
  v15 = sub_10001DD14();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

LABEL_8:
    v37 = 0;
    v38 = 0;
    v40 = 0;
    v41 = 0;
    v62 = 0;
    v63 = 0;
    goto LABEL_9;
  }

  *&v72 = v15;
  *(&v72 + 1) = v17;
  sub_100005A7C();
  v19 = sub_10001DA74();
  v21 = v20;
  v23 = v22;
  sub_10001DA04();
  v24 = sub_10001DA44();
  v26 = v25;
  v28 = v27;
  sub_100006320(v19, v21, v23 & 1);

  sub_10001DB44();
  v29 = v24;
  v30 = v26;
  v31 = sub_10001DA54();
  v33 = v32;
  LODWORD(v62) = v34;
  v36 = v35;

  sub_100006320(v29, v30, v28 & 1);

  v63 = sub_10001D954();
  v37 = v31;
  v38 = v33;
  v39 = v33;
  v40 = v62 & 1;
  sub_1000062C0(v31, v39, v62 & 1);
  v41 = v36;

  v62 = sub_1000030D8;
LABEL_9:
  v42 = [a2 items];
  sub_100005A2C(&qword_100032B10, &qword_1000201E8);
  v43 = sub_10001DDD4();

  v71 = v43;
  KeyPath = swift_getKeyPath();
  v44 = *a1;
  v45 = *(a1 + 8);
  v72 = *(a1 + 24);
  v46 = swift_allocObject();
  v47 = *(a1 + 16);
  *(v46 + 16) = *a1;
  *(v46 + 32) = v47;
  *(v46 + 48) = *(a1 + 32);
  v48 = v44;
  v49 = v45;
  v50 = v65;
  sub_100006808(&v72, v70, &qword_1000322C0, &qword_100020278);
  sub_100005A2C(&qword_1000322F0, &qword_1000202E8);
  sub_100006B8C(&qword_1000322F8, &qword_1000322F0, &qword_1000202E8);
  sub_100006B8C(&qword_100032300, &qword_100032B10, &qword_1000201E8);
  sub_10000621C();
  v51 = v68;
  sub_10001DC44();
  v53 = v66;
  v52 = v67;
  v65 = *(v66 + 16);
  (v65)(v69, v51, v67);
  v55 = v63;
  v54 = v64;
  *v64 = v37;
  v54[1] = v38;
  v54[2] = v40;
  v54[3] = v41;
  v56 = v62;
  v54[4] = v55;
  v54[5] = v56;
  v54[6] = 0;
  v57 = v54 + *(sub_100005A2C(&unk_100032310, &qword_1000202F0) + 48);
  v58 = v69;
  (v65)(v57, v69, v52);
  sub_100006270(v37, v38, v40, v41);
  sub_1000062D0(v37, v38, v40, v41);
  v59 = *(v53 + 8);
  v59(v68, v52);
  v59(v58, v52);
  return sub_1000062D0(v37, v38, v40, v41);
}

double sub_1000030D8()
{
  sub_10001D974();
  sub_10001D7F4();
  return v0 + -20.0;
}

uint64_t sub_100003108@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v16 = *(a2 + 24);
  v7 = v5;
  v8 = v6;
  v9 = v4;
  sub_100006808(&v16, v14, &qword_1000322C0, &qword_100020278);
  sub_10001DBA4();
  v10 = v15;
  sub_10001D5E4();
  sub_100006610(&qword_100032780, &type metadata accessor for ParameterStateStore);
  result = sub_10001D7D4();
  v12 = v14[0];
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = result;
  *(a3 + 32) = v13;
  *(a3 + 40) = v12;
  *(a3 + 48) = v10;
  return result;
}

uint64_t sub_10000321C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    result = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v8 = *(a2 + 8);
    v9 = [v8 localizedLabel];
    v10 = sub_10001DD14();
    v12 = v11;

    v6 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v6 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v13 = [v8 localizedLabel];
      sub_10001DD14();

      sub_100005A7C();
      result = sub_10001DA74();
      v6 = v14 & 1;
      goto LABEL_8;
    }

    result = 0;
    v5 = 0;
  }

  v7 = 0;
LABEL_8:
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

uint64_t sub_100003314@<X0>(uint64_t result@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 1) != 0 && ((result = sub_10000BE20(*a2), v5) || (result = sub_10000CB58(a2[1]), v5)))
  {
    *&v9 = result;
    *(&v9 + 1) = v5;
    sub_100005A7C();
    sub_10001DA74();
    result = sub_10001D9A4();
    v6 = v10;
    v7 = v9;
    v8 = v11;
  }

  else
  {
    v7 = 0uLL;
    v8 = -1;
    v6 = 0uLL;
  }

  *a3 = v7;
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  return result;
}

void *sub_100003414@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001D914();
  v8 = 1;
  sub_1000034E8(__src);
  memcpy(__dst, __src, 0x59uLL);
  memcpy(v10, __src, 0x59uLL);
  sub_100006808(__dst, v5, &qword_100032328, &qword_100020300);
  sub_100006AF0(v10, &qword_100032328, &qword_100020300);
  memcpy(&v7[7], __dst, 0x59uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x60uLL);
}

uint64_t sub_1000034E8@<X0>(uint64_t a1@<X8>)
{
  sub_10001DD44();
  sub_10001DD44();
  if (qword_100032078 != -1)
  {
    swift_once();
  }

  v2 = static NSBundle._current;
  v3 = sub_10001DD04();
  v4 = sub_10001DD04();

  v5 = sub_10001DD04();

  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_10001DD14();
  sub_100005A7C();
  v7 = sub_10001DA74();
  v9 = v8;
  LOBYTE(v4) = v10;
  sub_10001DA24();
  v11 = sub_10001DA64();
  v13 = v12;
  v15 = v14;

  sub_100006320(v7, v9, v4 & 1);

  sub_10001DB44();
  v16 = sub_10001DA54();
  v18 = v17;
  LOBYTE(v2) = v19;
  v21 = v20;

  sub_100006320(v11, v13, v15 & 1);

  sub_10001DC94();
  sub_10001D7B4();
  LOBYTE(v2) = v2 & 1;
  *&__src[0] = v16;
  *(&__src[0] + 1) = v18;
  LOBYTE(__src[1]) = v2;
  *(&__src[1] + 1) = v27[0];
  DWORD1(__src[1]) = *(v27 + 3);
  *(&__src[1] + 1) = v21;
  __src[2] = v24;
  __src[3] = v25;
  __src[4] = v26;
  v23[80] = 1;
  memcpy(a1, __src, 0x50uLL);
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  v29[0] = v16;
  v29[1] = v18;
  v30 = v2;
  *v31 = v27[0];
  *&v31[3] = *(v27 + 3);
  v32 = v21;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  sub_100006808(__src, v23, &qword_100032330, &qword_100020308);
  return sub_100006AF0(v29, &qword_100032330, &qword_100020308);
}

uint64_t sub_1000037EC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_1000021A0();
}

uint64_t sub_100003828()
{
  v1 = sub_10001D914();
  v6[0] = 1;
  sub_100003A44(v0, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v8, __src, sizeof(v8));
  sub_100006808(__dst, v9, &qword_100032348, &qword_1000203C0);
  sub_100006AF0(v8, &qword_100032348, &qword_1000203C0);
  memcpy(__src + 7, __dst, 0xA0uLL);
  v9[0] = v1;
  v9[1] = 0;
  LOBYTE(v9[2]) = 1;
  memcpy(&v9[2] + 1, __src, 0xA7uLL);
  sub_100004214();
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  *(v2 + 64) = *(v0 + 48);
  memcpy(v6, v9, sizeof(v6));
  sub_100006524(v0, __src);
  sub_100006808(v9, __src, &qword_100032350, &qword_1000203C8);
  sub_100005A2C(&qword_100032358, &qword_1000203D0);
  sub_100006BEC();
  sub_100006B8C(v4, &qword_100032358, &qword_1000203D0);
  sub_10001DBD4();
  sub_100006AF0(v9, &qword_100032350, &qword_1000203C8);
  memcpy(__src, v6, sizeof(__src));
  return sub_100006AF0(__src, &qword_100032350, &qword_1000203C8);
}

uint64_t sub_100003A44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100003C38(__src);
  v4 = [*(a1 + 8) wf_pickerLocalizedTitleForState:*(a1 + 16)];
  if (v4)
  {
    v5 = sub_10001DD14();
    v7 = v6;

    v23[0] = v5;
    v23[1] = v7;
    sub_100005A7C();
    v8 = sub_10001DA74();
    v10 = v9;
    v12 = v11;
    sub_10001DB34();
    v4 = sub_10001DA54();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    sub_100006320(v8, v10, v12 & 1);

    v19 = v16 & 1;
    sub_1000062C0(v4, v14, v16 & 1);
  }

  else
  {
    v14 = 0;
    v19 = 0;
    v18 = 0;
  }

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v22, __src, 0x79uLL);
  memcpy(v23, __src, 0x79uLL);
  sub_100006808(v22, v24, &qword_100032430, &qword_100020480);
  sub_100006750(v4, v14, v19, v18);
  sub_100006794(v4, v14, v19, v18);
  memcpy(a2, v23, 0x80uLL);
  a2[16] = v4;
  a2[17] = v14;
  a2[18] = v19;
  a2[19] = v18;
  sub_100006794(v4, v14, v19, v18);
  memcpy(v24, __dst, 0x79uLL);
  return sub_100006AF0(v24, &qword_100032430, &qword_100020480);
}

void *sub_100003C38@<X0>(void *a1@<X8>)
{
  v3 = sub_10001DB64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_100005A2C(&qword_100032438, &qword_100020488);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28[-v10 - 8];
  if (sub_100004E4C() || (v12 = [*(v1 + 8) wf_pickerLocalizedImageForState:*(v1 + 16)]) == 0)
  {
    sub_1000067D8(__dst);
  }

  else
  {
    v13 = v12;
    if ([v12 representationType] == 4)
    {
      v14 = [v13 tintColor];
      v15 = sub_10001DEC4();
      if (v14)
      {
        v16 = enum case for Image.TemplateRenderingMode.template(_:);
        v17 = sub_10001DB84();
        (*(*(v17 - 8) + 104))(v11, v16, v17);
        sub_10000619C(v11, 0, 1, v17);
        v18 = sub_10001DB74();

        sub_100006AF0(v11, &qword_100032438, &qword_100020488);
        v19 = v14;
        v20 = sub_10001DB14();
        KeyPath = swift_getKeyPath();
        v30[0] = v18;
        v30[1] = KeyPath;
        v30[2] = v20;
        LOBYTE(v30[3]) = 0;

        sub_100005A2C(&qword_100032460, &qword_1000204A0);
        sub_1000068F4();
        sub_10001D9A4();
      }

      else
      {
        v30[1] = 0;
        v30[2] = 0;
        v30[0] = v15;
        LOBYTE(v30[3]) = 1;
        sub_100005A2C(&qword_100032460, &qword_1000204A0);
        sub_1000068F4();
        sub_10001D9A4();
      }

      v23 = *&__dst[1];
      v24 = BYTE8(__dst[1]);
      v27 = __dst[0];
      sub_100006A34(__dst);
      memcpy(v30, __dst, 0x79uLL);
      v25 = v27;
      sub_100006A3C(v27, *(&v27 + 1), v23, v24);
      sub_100006A3C(v25, *(&v25 + 1), v23, v24);
      sub_100005A2C(&qword_100032448, &qword_100020498);
      sub_100005A2C(&qword_100032440, &qword_100020490);
      sub_100006868();
      sub_1000069AC();
      sub_10001D9A4();

      sub_100006A8C(v25, *(&v25 + 1), v23, v24);
      sub_100006A8C(v25, *(&v25 + 1), v23, v24);
    }

    else
    {
      sub_10001DEC4();
      (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v3);
      v22 = sub_10001DB94();

      (*(v4 + 8))(v7, v3);
      sub_10001DC84();
      sub_10001D814();
      v29[0] = v22;
      memcpy(__dst, v29, 0x78uLL);
      sub_1000067FC(__dst);
      memcpy(v30, __dst, 0x79uLL);
      sub_100006808(v29, v28, &qword_100032440, &qword_100020490);
      sub_100006808(v29, v28, &qword_100032440, &qword_100020490);
      sub_100005A2C(&qword_100032448, &qword_100020498);
      sub_100005A2C(&qword_100032440, &qword_100020490);
      sub_100006868();
      sub_1000069AC();
      sub_10001D9A4();

      sub_100006AF0(v29, &qword_100032440, &qword_100020490);
      sub_100006AF0(v29, &qword_100032440, &qword_100020490);
    }

    memcpy(v30, v28, 0x79uLL);
    memcpy(v28, v30, 0x79uLL);
    nullsub_1(v28);
    memcpy(__dst, v28, 0x79uLL);
  }

  return memcpy(a1, __dst, 0x79uLL);
}

uint64_t sub_100004214()
{
  v1 = v0;
  v2 = *(v0 + 32);
  result = sub_10001D5B4();
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (![*(v1 + 8) allowsMultipleValues] || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) == 0))
  {
    v15 = sub_100005814(v4, *(v1 + 16));
    swift_unknownObjectRelease();
    return v15 & 1;
  }

  v6 = sub_1000055F0(v5);
  if (!v6)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v7 = v6;
  result = sub_1000168D0(v6);
  if (!result)
  {
LABEL_14:
    swift_unknownObjectRelease();

    return 0;
  }

  v8 = result;
  v9 = 0;
  v10 = *(v1 + 16);
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = sub_10001DF44();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v11 = *(v7 + 8 * v9 + 32);
      swift_unknownObjectRetain();
    }

    v12 = v10;
    v13 = [v12 stateIsEquivalent:v11];

    result = swift_unknownObjectRelease();
    if (v13)
    {
      swift_unknownObjectRelease();

      return 1;
    }

    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    ++v9;
    if (v14 == v8)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000043A0()
{
  v1 = v0;
  v2 = [*(v0 + 8) allowsMultipleValues];
  v3 = *(v0 + 32);
  if (!v2)
  {
    v19 = *(v0 + 16);
    return sub_10001D5C4();
  }

  v4 = *(v0 + 32);
  if (!sub_10001D5B4())
  {
LABEL_21:
    sub_100006710(0, &qword_1000323B8, WFMultipleValueParameterState_ptr);
    sub_100005A2C(&qword_1000323C0, &qword_100020790);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000200A0;
    v21 = *(v1 + 16);
    *(v20 + 32) = v21;
    v22 = v21;
    sub_1000053AC();
    return sub_10001D5C4();
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v6 = v5;
  v7 = *(v1 + 16);
  v8 = sub_1000055F0(v5);
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v23 = v6;
  result = sub_1000168D0(v8);
  if (!result)
  {
LABEL_14:

LABEL_15:
    v17 = [v6 stateByAppendingValue:{v7, v23}];
LABEL_16:
    v18 = v17;
    sub_10001D5C4();

    return swift_unknownObjectRelease();
  }

  v11 = result;
  v12 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = sub_10001DF44();
    }

    else
    {
      if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v13 = *(v9 + 8 * v12 + 32);
      swift_unknownObjectRetain();
    }

    v14 = v7;
    v15 = [v14 stateIsEquivalent:v13];

    result = swift_unknownObjectRelease();
    if (v15)
    {

      v17 = [v6 stateByRemovingValueAtIndex:v12];
      goto LABEL_16;
    }

    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    ++v12;
    if (v16 == v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_1000045E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10001D914();
  v14 = 0;
  sub_1000046D4(a1, a2, a3, __src);
  memcpy(__dst, __src, 0xF9uLL);
  memcpy(v16, __src, 0xF9uLL);
  sub_100006808(__dst, v11, &qword_100032368, &qword_1000203D8);
  sub_100006AF0(v16, &qword_100032368, &qword_1000203D8);
  memcpy(&v13[7], __dst, 0xF9uLL);
  v9 = v14;
  *a4 = v8;
  *(a4 + 8) = 0x4028000000000000;
  *(a4 + 16) = v9;
  return memcpy((a4 + 17), v13, 0x100uLL);
}

void *sub_1000046D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, const void *a3@<X2>, void *a4@<X8>)
{
  v25 = a4;
  v7 = sub_100005A2C(&qword_100032370, &qword_1000203E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v23 - v9;
  if ([*(a1 + 8) allowsMultipleValues])
  {
    v11 = sub_10001DB54();
    v12 = sub_10001D9F4();
    sub_10000619C(v10, 1, 1, v12);
    v13 = sub_10001DA14();
    sub_100006AF0(v10, &qword_100032370, &qword_1000203E0);
    KeyPath = swift_getKeyPath();
    v15 = sub_100004D94();
    v16 = swift_getKeyPath();
    memcpy(v30, a3, sizeof(v30));
    v17 = sub_10001D954();
    memcpy(v26, v30, 0xB8uLL);
    v26[23] = v17;
    v26[24] = sub_100004E24;
    v26[25] = 0;
    memcpy(v32, v26, 0xD0uLL);
    memcpy(v27, v26, sizeof(v27));
    memcpy(v31, v26, 0xD0uLL);
    sub_100006808(v30, v34, &qword_100032350, &qword_1000203C8);

    sub_100006808(v26, v34, &qword_1000323A0, qword_100020460);

    sub_100006808(v27, v34, &qword_1000323A0, qword_100020460);
    sub_100006AF0(v32, &qword_1000323A0, qword_100020460);

    v23[1] = v16;

    v23[2] = KeyPath;

    v24 = v11;

    v33[0] = v11;
    v33[1] = KeyPath;
    v33[2] = v13;
    v33[3] = v16;
    v33[4] = v15;
    memcpy(&v33[5], v31, 0xD0uLL);
    sub_100006608(v33);
    memcpy(v34, v33, 0xF9uLL);
    sub_100005A2C(&qword_100032380, &qword_1000203F0);
    sub_100005A2C(&qword_100032388, &qword_1000203F8);
    sub_100006B8C(&qword_100032390, &qword_100032380, &qword_1000203F0);
    sub_100006B8C(&qword_100032398, &qword_100032388, &qword_1000203F8);
    sub_10001D9A4();
    sub_100006AF0(v26, &qword_1000323A0, qword_100020460);
  }

  else
  {
    memcpy(v27, a3, 0xB8uLL);
    sub_100006808(v27, v34, &qword_100032350, &qword_1000203C8);
    if (a2)
    {
      v18 = sub_10001DB54();
      v19 = sub_10001DB04();
      v20 = swift_getKeyPath();

      v21 = 1;
    }

    else
    {
      v21 = 0;
      v18 = 0;
      v20 = 0;
      v19 = 0;
    }

    v24 = v19;
    memcpy(v29, v27, sizeof(v29));
    memcpy(v30, v27, sizeof(v30));
    memcpy(v31, v27, 0xB8uLL);
    v31[23] = 0;
    v31[24] = v21;
    v31[25] = v18;
    v31[26] = v20;
    v31[27] = v19;
    memcpy(v32, v31, sizeof(v32));
    sub_100006808(v27, v34, &qword_100032350, &qword_1000203C8);
    sub_100006808(v30, v34, &qword_100032350, &qword_1000203C8);
    sub_10000655C(0, v21, v18);
    sub_1000065AC(0, v21, v18);
    memcpy(v26, v29, 0xB8uLL);
    sub_100006AF0(v26, &qword_100032350, &qword_1000203C8);
    memcpy(v33, v32, 0xE0uLL);
    sub_1000065FC(v33);
    memcpy(v34, v33, 0xF9uLL);
    sub_100006808(v31, v28, &qword_100032378, &qword_1000203E8);
    sub_100005A2C(&qword_100032380, &qword_1000203F0);
    sub_100005A2C(&qword_100032388, &qword_1000203F8);
    sub_100006B8C(&qword_100032390, &qword_100032380, &qword_1000203F0);
    sub_100006B8C(&qword_100032398, &qword_100032388, &qword_1000203F8);
    sub_10001D9A4();
    sub_1000065AC(0, v21, v18);
    sub_100006AF0(v31, &qword_100032378, &qword_1000203E8);
    sub_100006AF0(v27, &qword_100032350, &qword_1000203C8);
  }

  memcpy(v34, v28, 0xF9uLL);
  return memcpy(v25, v34, 0xF9uLL);
}

uint64_t sub_100004D94()
{
  if (!sub_100004E4C())
  {
    return 0;
  }

  v1 = [*(v0 + 8) wf_pickerLocalizedImageForState:*(v0 + 16)];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 representationType] != 4 || !objc_msgSend(v2, "tintColor"))
  {

    return 0;
  }

  v3 = sub_10001DB14();

  return v3;
}

BOOL sub_100004E4C()
{
  v1 = *v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  v5 = [v3 metadata];
  v6 = [v5 effectiveBundleIdentifiers];

  LOBYTE(v5) = sub_100005134();
  if ((v5 & 1) == 0 || (v7 = *(v0 + 8), objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) == 0))
  {
    v10 = v4;
LABEL_12:

    return 0;
  }

  v9 = v8;
  v10 = v7;
  v11 = [v9 parameterMetadata];
  v12 = [v11 valueType];

  v13 = [v12 wf_entityValueType];
  if (!v13)
  {

    goto LABEL_12;
  }

  v14 = [v13 identifier];
  v15 = sub_10001DD14();
  v17 = v16;

  if (v15 != 0x7261646E656C6143 || v17 != 0xEE00797469746E45)
  {
    v19 = sub_10001E024();

    return (v19 & 1) != 0;
  }

  return 1;
}

uint64_t sub_10000504C()
{
  sub_10001DD14();
  v0 = sub_1000050B4();
  v2 = v1;

  qword_100032068 = v0;
  unk_100032070 = v2;
  return result;
}

uint64_t sub_1000050B4()
{

  v1 = sub_10001DDA4();
  sub_10001DD64();
  return v1;
}

BOOL sub_100005134()
{
  v0 = sub_10001D564();
  v10 = *(v0 - 8);
  v1 = *(v10 + 64);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001DE64();
  v11 = sub_100006610(&qword_1000323A8, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    sub_10001DEF4();
    v4 = v15;
    if (!v15)
    {
      break;
    }

    sub_100006658(&v14, v13);
    sub_100006668(v13, v12);
    sub_100006710(0, &qword_1000323B0, LNEffectiveBundleIdentifier_ptr);
    if (swift_dynamicCast())
    {
      v5 = v16;
      v6 = [v16 bundleIdentifier];
      sub_10001DD14();

      if (qword_100032060 != -1)
      {
        swift_once();
      }

      v7 = sub_10001DD94(xmmword_100032068);

      sub_1000066C4(v13);
      if (v7)
      {
        break;
      }
    }

    else
    {
      sub_1000066C4(v13);
    }
  }

  (*(v10 + 8))(v3, v0);
  return v4 != 0;
}

id sub_1000053AC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100005A2C(&qword_100032428, &qword_100020478);
  isa = sub_10001DDC4().super.isa;

  v2 = [v0 initWithParameterStates:isa];

  return v2;
}

uint64_t sub_100005430()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_100003828();
}

uint64_t sub_100005498(uint64_t a1)
{
  v2 = sub_100005A2C(&qword_1000322E0, &qword_1000202B8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100006808(a1, &v6 - v4, &qword_1000322E0, &qword_1000202B8);
  return sub_10001D884();
}

uint64_t sub_100005540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D854();
  *a1 = result;
  return result;
}

uint64_t sub_10000556C(uint64_t *a1)
{
  v1 = *a1;

  return sub_10001D864();
}

uint64_t sub_100005598@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D8B4();
  *a1 = result;
  return result;
}

uint64_t sub_1000055C4(uint64_t *a1)
{
  v1 = *a1;

  return sub_10001D8C4();
}

uint64_t sub_1000055F0(void *a1)
{
  v1 = [a1 parameterStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100005A2C(&qword_100032428, &qword_100020478);
  v3 = sub_10001DDD4();

  return v3;
}

void *sub_10000565C(uint64_t a1)
{
  result = sub_1000168D0();
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = &_swiftEmptyArrayStorage;
  v8 = (&_swiftEmptyArrayStorage + 32);
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v27 = a1;
  while (1)
  {
    if (v3 == v4)
    {
      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v5);
        v25 = v24 - v5;
        if (v22)
        {
          goto LABEL_32;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v6)
    {
      result = sub_10001DF44();
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      result = *(a1 + 8 * v4 + 32);
    }

    v10 = result;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      sub_100005A2C(&qword_100032320, &qword_1000202F8);
      v16 = swift_allocObject();
      v17 = (j__malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      a1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_100005814(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (ObjectType != swift_getObjectType())
  {
    return 0;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    return [v6 stateIsEquivalent:a2];
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

__n128 sub_10000589C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000058A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000058C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100005918(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_100005964(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100005978(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000059B8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100005A2C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100005A7C()
{
  result = qword_1000321E0;
  if (!qword_1000321E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000321E0);
  }

  return result;
}

unint64_t sub_100005AD0()
{
  result = qword_1000326C0;
  if (!qword_1000326C0)
  {
    sub_100005B4C(&qword_1000321E8, &qword_1000201F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000326C0);
  }

  return result;
}

uint64_t sub_100005B4C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100005B94()
{
  result = qword_100032208;
  if (!qword_100032208)
  {
    sub_100005B4C(&unk_1000321D0, &qword_1000201E0);
    sub_100005C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032208);
  }

  return result;
}

unint64_t sub_100005C18()
{
  result = qword_100032210;
  if (!qword_100032210)
  {
    sub_100005B4C(&qword_100032218, &qword_100020200);
    sub_100005CD0();
    sub_100006B8C(&qword_1000322A0, &qword_1000322A8, &qword_100020248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032210);
  }

  return result;
}

unint64_t sub_100005CD0()
{
  result = qword_100032220;
  if (!qword_100032220)
  {
    sub_100005B4C(&qword_100032228, &qword_100020208);
    sub_100005D88();
    sub_100006B8C(&qword_100032290, &qword_100032298, &qword_100020240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032220);
  }

  return result;
}

unint64_t sub_100005D88()
{
  result = qword_100032230;
  if (!qword_100032230)
  {
    sub_100005B4C(&qword_100032238, &qword_100020210);
    sub_100005AD0();
    sub_100006B8C(&qword_100032240, &qword_100032248, &qword_100020218);
    sub_100005E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032230);
  }

  return result;
}

unint64_t sub_100005E54()
{
  result = qword_100032250;
  if (!qword_100032250)
  {
    sub_100005B4C(&qword_100032258, &qword_100020220);
    sub_100005EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032250);
  }

  return result;
}

unint64_t sub_100005EE0()
{
  result = qword_100032260;
  if (!qword_100032260)
  {
    sub_100005B4C(&qword_100032268, &qword_100020228);
    sub_100005F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032260);
  }

  return result;
}

unint64_t sub_100005F64()
{
  result = qword_100032270;
  if (!qword_100032270)
  {
    sub_100005B4C(&qword_100032278, &qword_100020230);
    sub_100005FE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032270);
  }

  return result;
}

unint64_t sub_100005FE8()
{
  result = qword_100032280;
  if (!qword_100032280)
  {
    sub_100005B4C(&qword_100032288, &qword_100020238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032280);
  }

  return result;
}

unint64_t sub_100006064()
{
  result = qword_1000322B0;
  if (!qword_1000322B0)
  {
    sub_100005B4C(&qword_1000321C0, &qword_1000201D0);
    sub_100005AD0();
    sub_100006B8C(&qword_100032200, &unk_1000321F0, &qword_1000201F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000322B0);
  }

  return result;
}

uint64_t sub_10000612C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006164(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1000061C4()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10000621C()
{
  result = qword_100032308;
  if (!qword_100032308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032308);
  }

  return result;
}

uint64_t sub_100006270(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000062C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000062C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000062D0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100006320(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100006320(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_100006334(uint64_t a1, uint64_t a2)
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

uint64_t sub_100006350(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100006390(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1000063F0()
{
  result = qword_100032338;
  if (!qword_100032338)
  {
    sub_100005B4C(&qword_100032340, &qword_100020368);
    sub_100005B94();
    sub_100006064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032338);
  }

  return result;
}

uint64_t sub_100006498()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000655C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000065AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100006610(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_100006658(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006668(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000066C4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006710(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100006750(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000062C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100006794(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100006320(result, a2, a3 & 1);
  }

  return result;
}

double sub_1000067D8(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -1;
  return result;
}

uint64_t sub_100006808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005A2C(a3, a4);
  sub_100006C04(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100006868()
{
  result = qword_100032450;
  if (!qword_100032450)
  {
    sub_100005B4C(&qword_100032448, &qword_100020498);
    sub_1000068F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032450);
  }

  return result;
}

unint64_t sub_1000068F4()
{
  result = qword_100032458;
  if (!qword_100032458)
  {
    sub_100005B4C(&qword_100032460, &qword_1000204A0);
    sub_100006B8C(&qword_100032468, &qword_100032470, &qword_1000204A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032458);
  }

  return result;
}

unint64_t sub_1000069AC()
{
  result = qword_100032478;
  if (!qword_100032478)
  {
    sub_100005B4C(&qword_100032440, &qword_100020490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032478);
  }

  return result;
}

uint64_t sub_100006A3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

uint64_t sub_100006A8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100006AF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005A2C(a2, a3);
  sub_100006C04(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100006B8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005B4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100006C28(void *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  if ((a3 & 1) == 0 && sub_1000168D0(a2) == 1 && sub_1000168D0(a2))
  {
    sub_100014E10(0, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v22 = a1;

      v9 = sub_10001DF44();
    }

    else
    {
      v7 = *(a2 + 32);
      v8 = a1;

      v9 = v7;
    }

    v10 = v9;
    v11 = [v9 localizedLabel];
    v12 = sub_10001DD14();
    v14 = v13;
  }

  else
  {
    v15 = a1;

    v12 = 0;
    v14 = 0;
  }

  v16 = sub_10000BE20(a1);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = sub_100006D8C(a2);

    if (v18)
    {
      v20 = v18;
      v18 = sub_10000CB58(v20);
      v19 = v21;
    }

    else
    {

      v19 = 0;
    }
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v12;
  a4[3] = v14;
  a4[4] = v18;
  a4[5] = v19;
}

char *sub_100006D8C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_100014E10((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return sub_10001DF44();
  }

  result = sub_10001DFF4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100006E20(uint64_t a1, uint64_t a2)
{
  v4 = [*a1 identifier];
  v5 = sub_10001DD14();
  v7 = v6;

  v8 = [*a2 identifier];
  v9 = sub_10001DD14();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_10001E024();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + 8);
  v16 = *(a2 + 8);

  return sub_10000CDBC(v15, v16);
}

char *sub_100006F30()
{
  v1 = *(v0 + 8);
  v2 = sub_1000168D0(v1);
  if (v2)
  {
    v3 = v2;
    result = sub_1000153D8(0, v2 & ~(v2 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10001DF44();
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v7 key];
      v9 = sub_10001DD14();
      v11 = v10;

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_1000153D8((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v11;
    }

    while (v3 != v5);
  }

  v15 = sub_10000C8B4();
  sub_10000C4F0(v15, v16);
}

Swift::Int sub_10000708C()
{
  sub_10001E084();
  sub_100006F30();
  return sub_10001E0A4();
}

Swift::Int sub_1000070D4()
{
  sub_10001E084();
  sub_100006F30();
  return sub_10001E0A4();
}

void *sub_100007110()
{
  v1 = sub_10001D904();
  v2 = sub_100006C14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 64);
  v9 = *(v0 + 56);
  v14 = v9;
  if (v15 == 1)
  {
    v10 = v9;
  }

  else
  {

    sub_10001DEA4();
    v11 = sub_10001D9D4();
    sub_10001D674();

    sub_10001D8F4();
    swift_getAtKeyPath();
    sub_100006AF0(&v14, &qword_100032788, &qword_100020748);
    (*(v4 + 8))(v8, v1);
    return v13[1];
  }

  return v9;
}

uint64_t sub_100007294(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1000072D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100007354()
{
  v1 = v0;
  v17 = *(v0 + 40);
  sub_100005A2C(&qword_100032658, &qword_100020670);
  sub_10001DBB4();
  v2 = v16;
  *&v17 = _swiftEmptyArrayStorage;
  *(&v17 + 1) = _swiftEmptyArrayStorage;
  v3 = sub_1000168D0(v16);
  v4 = 0;
  v5 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_10001DF44();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v2 = sub_10000BD18(0, *(v2 + 16) + 1, 1, v2);
      goto LABEL_17;
    }

    v16 = v6;
    sub_100007590(&v17, &v16, v1);

    ++v4;
  }

  v5 = *(&v17 + 1);
  v2 = v17;
  if (!sub_1000168D0(*(&v17 + 1)))
  {

    return v2;
  }

  v3 = v1[3];

  v8 = sub_10000BE20(v3);
  if (v9)
  {
    v1 = v8;
    v4 = v9;
  }

  else
  {
    v1 = sub_100006D8C(v5);

    if (v1)
    {
      v10 = v1;
      v1 = sub_10000CB58(v10);
      v4 = v11;
    }

    else
    {

      v4 = 0;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v13 = *(v2 + 16);
  v12 = *(v2 + 24);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_10000BD18((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 16) = v13 + 1;
  v14 = (v2 + 48 * v13);
  v14[4] = v3;
  v14[5] = v5;
  v14[6] = 0;
  v14[7] = 0;
  v14[8] = v1;
  v14[9] = v4;
  return v2;
}

char *sub_100007590(void *a1, id *a2, uint64_t a3)
{
  v6 = *a2;
  p_ivar_base_size = &WFConfigurationParametersViewController__classData.ivar_base_size;
  v8 = &WFConfigurationParametersViewController__classData.ivar_base_size;
  if (![*a2 allowsMultipleValues] || (objc_msgSend(v6, "displaysMultipleValueEditor") & 1) == 0)
  {
    v9 = *(a3 + 24);
    sub_10000CB58(v6);
    if (v10)
    {
    }

    else
    {
      v11 = *(a3 + 32);
      v12 = [v6 key];
      v13 = sub_10001DD14();
      v15 = v14;

      v16 = sub_10000CF90(v13, v15, v11);

      if (!v16)
      {
        v26 = v6;
        sub_10001DDB4();
        sub_10000BCEC(*((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x10));
        return sub_10001DE04();
      }

      v8 = (&WFConfigurationParametersViewController__classData + 8);
      p_ivar_base_size = (&WFConfigurationParametersViewController__classData + 8);
    }
  }

  v17 = a1[1];
  if (sub_1000168D0(v17))
  {
    v47 = v3;
    v18 = *(a3 + 24);

    v19 = sub_10000BE20(v18);
    if (v20)
    {
      v21 = v19;
      v22 = v20;
    }

    else
    {
      v23 = sub_100006D8C(v17);
      if (v23)
      {
        v24 = v23;
        v21 = sub_10000CB58(v23);
        v22 = v25;
      }

      else
      {

        v21 = 0;
        v22 = 0;
      }
    }

    sub_10000BC60();
    v28 = *(*a1 + 16);
    sub_10000BCAC(v28);
    v29 = *a1;
    *(v29 + 16) = v28 + 1;
    v30 = (v29 + 48 * v28);
    v30[4] = v18;
    v30[5] = v17;
    v30[6] = 0;
    v30[7] = 0;
    v30[8] = v21;
    v30[9] = v22;
    *a1 = v29;

    a1[1] = _swiftEmptyArrayStorage;
    v8 = &WFConfigurationParametersViewController__classData.ivar_base_size;
    p_ivar_base_size = &WFConfigurationParametersViewController__classData.ivar_base_size;
  }

  if (![v6 *(p_ivar_base_size + 123)] || (objc_msgSend(v6, *(v8 + 148)) & 1) == 0)
  {
    v31 = *(a3 + 32);
    v32 = [v6 key];
    v33 = sub_10001DD14();
    v35 = v34;

    v36 = sub_10000CF90(v33, v35, v31);

    if (!v36)
    {
      v37 = 1;
      goto LABEL_21;
    }
  }

  v37 = 0;
LABEL_21:
  v38 = *(a3 + 24);
  sub_100005A2C(&qword_1000323C0, &qword_100020790);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000200A0;
  *(v39 + 32) = v6;
  v40 = v38;
  v41 = v6;
  sub_100006C28(v40, v39, v37, v46);
  sub_10000BC60();
  v42 = *(*a1 + 16);
  result = sub_10000BCAC(v42);
  v43 = *a1;
  *(v43 + 16) = v42 + 1;
  v44 = (v43 + 48 * v42);
  v45 = v46[1];
  v44[2] = v46[0];
  v44[3] = v45;
  v44[4] = v46[2];
  *a1 = v43;
  return result;
}

uint64_t sub_1000078B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v51 = sub_10001D804();
  v3 = sub_100006C14(v51);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005A2C(&qword_100032610, &qword_100020620);
  sub_100006C14(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_10000C880();
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  v18 = sub_100005A2C(&qword_100032618, &qword_100020628);
  v48 = sub_100006C14(v18);
  v49 = v19;
  v21 = *(v20 + 64);
  sub_10000C880();
  __chkstk_darwin(v22);
  v24 = &v42 - v23;
  v52 = v2;
  sub_100005A2C(&qword_100032620, &qword_100020630);
  sub_100006B8C(&qword_100032628, &qword_100032620, &qword_100020630);
  sub_10001DA34();
  sub_10001DCA4();
  v44 = sub_100006B8C(&qword_100032630, &qword_100032610, &qword_100020620);
  v43 = sub_100009E34(&qword_100032638, &type metadata accessor for GroupedFormStyle);
  v25 = v51;
  sub_10001DAF4();
  (*(v5 + 8))(v9, v25);
  (*(v12 + 8))(v17, v10);
  v26 = *v2;
  v46 = *(v2 + 8);
  v47 = v26;
  v45 = *(v2 + 16);
  type metadata accessor for FocusConfigurationActionViewModel();
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel);
  v27 = sub_10001D794();
  swift_getKeyPath();
  sub_10001D7E4();

  v28 = v53;
  v29 = v54;
  LOBYTE(v12) = v55;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v28;
  *(v30 + 40) = v29;
  *(v30 + 48) = v12;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v28;
  *(v31 + 40) = v29;
  *(v31 + 48) = v12;

  sub_10001DC34();
  v53 = v10;
  v54 = v51;
  v55 = v44;
  v56 = v43;
  swift_getOpaqueTypeConformance2();
  v32 = v50;
  v33 = v48;
  sub_10001DAA4();

  (*(v49 + 8))(v24, v33);
  v34 = sub_10001D784();
  v35 = *&v34[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurableParametersChange];

  v36 = swift_allocObject();
  sub_10000C8C0(v36);
  v37 = sub_100005A2C(&qword_100032648, &qword_100020660);
  *(v32 + *(v37 + 52)) = v35;
  v38 = (v32 + *(v37 + 56));
  *v38 = sub_10000B7AC;
  v38[1] = v34;
  v39 = swift_allocObject();
  sub_10000C8C0(v39);
  v40 = (v32 + *(sub_100005A2C(&qword_100032650, &qword_100020668) + 36));
  *v40 = sub_10000B7B4;
  v40[1] = v34;
  v40[2] = 0;
  v40[3] = 0;
  sub_10000B7BC(v2, &v53);
  return sub_10000B7BC(v2, &v53);
}

uint64_t sub_100007E54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v50 = sub_100005A2C(&qword_100032660, &qword_100020678);
  v47 = *(v50 - 8);
  v3 = *(v47 + 64);
  __chkstk_darwin(v50);
  v46 = &v45 - v4;
  v5 = sub_100005A2C(&qword_100032668, &qword_100020680);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v45 - v10;
  v11 = sub_100005A2C(&qword_100032670, &qword_100020688);
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  v13 = __chkstk_darwin(v11);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v17 = sub_100005A2C(&qword_100032678, &unk_100020690);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v55 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v54 = &v45 - v21;
  sub_100008480(&v45 - v21);
  v57 = sub_100007354();
  swift_getKeyPath();
  v22 = swift_allocObject();
  memcpy((v22 + 16), a1, 0x41uLL);
  sub_10000B7BC(a1, v56);
  sub_100005A2C(&qword_100032680, &qword_1000206B8);
  sub_100005A2C(&qword_100032688, &qword_1000206C0);
  sub_100006B8C(&qword_100032690, &qword_100032680, &qword_1000206B8);
  sub_10000B800();
  sub_10000B854();
  v48 = v16;
  sub_10001DC44();
  v23 = *a1;
  v24 = a1[1];
  v25 = *(a1 + 16);
  type metadata accessor for FocusConfigurationActionViewModel();
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel);
  v26 = sub_10001D784();
  v27 = *&v26[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request];

  v28 = sub_10000BE80(v27);
  if (!v28)
  {
    goto LABEL_5;
  }

  v29 = sub_1000168D0(v28);
  if (!v29)
  {

LABEL_5:
    v33 = 1;
    v31 = v52;
    v32 = v50;
    goto LABEL_6;
  }

  __chkstk_darwin(v29);
  sub_100005A2C(&qword_100032728, &qword_100020700);
  sub_10000BF00();
  v30 = v46;
  sub_10001DC64();

  v31 = v52;
  v32 = v50;
  (*(v47 + 32))(v52, v30, v50);
  v33 = 0;
LABEL_6:
  sub_10000619C(v31, v33, 1, v32);
  v34 = v55;
  sub_10000C194(v54, v55, &qword_100032678, &unk_100020690);
  v35 = v48;
  v36 = v49;
  v37 = *(v49 + 16);
  v38 = v51;
  v37(v51, v48, v11);
  sub_10000C194(v31, v9, &qword_100032668, &qword_100020680);
  v39 = v34;
  v40 = v9;
  v41 = v53;
  sub_10000C194(v39, v53, &qword_100032678, &unk_100020690);
  v42 = sub_100005A2C(&qword_100032720, &qword_1000206F8);
  v37((v41 + *(v42 + 48)), v38, v11);
  sub_10000C194(v40, v41 + *(v42 + 64), &qword_100032668, &qword_100020680);
  sub_100006AF0(v31, &qword_100032668, &qword_100020680);
  v43 = *(v36 + 8);
  v43(v35, v11);
  sub_100006AF0(v54, &qword_100032678, &unk_100020690);
  sub_100006AF0(v40, &qword_100032668, &qword_100020680);
  v43(v38, v11);
  return sub_100006AF0(v55, &qword_100032678, &unk_100020690);
}

uint64_t sub_100008480@<X0>(uint64_t a1@<X8>)
{
  v124 = a1;
  v123 = sub_100005A2C(&qword_1000327D8, &qword_100020798);
  v2 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v111 = &v102 - v3;
  v109 = sub_100005A2C(&qword_1000327E0, &qword_1000207A0);
  v104 = *(v109 - 8);
  v4 = *(v104 + 64);
  __chkstk_darwin(v109);
  v103 = &v102 - v5;
  v6 = sub_100005A2C(&qword_1000327E8, &qword_1000207A8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v110 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v117 = &v102 - v10;
  v107 = sub_100005A2C(&qword_1000327F0, &qword_1000207B0);
  v11 = *(*(v107 - 8) + 64);
  v12 = __chkstk_darwin(v107);
  v108 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v102 - v14;
  v120 = sub_100005A2C(&qword_1000327F8, &qword_1000207B8);
  v16 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v122 = &v102 - v17;
  v121 = sub_100005A2C(&qword_100032800, &qword_1000207C0);
  v18 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v116 = &v102 - v19;
  v114 = sub_100005A2C(&qword_100032808, &qword_1000207C8);
  v106 = *(v114 - 8);
  v20 = *(v106 + 64);
  __chkstk_darwin(v114);
  v105 = &v102 - v21;
  v22 = sub_100005A2C(&qword_100032810, &qword_1000207D0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v115 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v119 = &v102 - v26;
  v112 = sub_100005A2C(&qword_100032818, &qword_1000207D8);
  v27 = *(*(v112 - 8) + 64);
  v28 = __chkstk_darwin(v112);
  v113 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v102 - v30;
  v33 = *v1;
  v32 = *(v1 + 1);
  v118 = v1;
  v34 = v1[16];
  type metadata accessor for FocusConfigurationActionViewModel();
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel);
  v35 = sub_10001D784();
  v36 = *&v35[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request];

  v37 = [v36 actionIdentifier];
  if (v37)
  {
    v38 = sub_10001D784();
    v39 = *&v38[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action];

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v111 = v40;
      v117 = v39;
      v41 = sub_10001D784();
      v42 = *(v41 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request);

      LOBYTE(v41) = [v42 showsEnablementButton];
      v102 = v37;
      if ((v41 & 1) == 0)
      {
        v67 = [v111 metadata];
        v68 = [v67 descriptionMetadata];

        if (v68)
        {
          v69 = [v68 descriptionText];

          v70 = [v69 wf_localizedString];
          sub_10001DD14();
        }
      }

      *v31 = sub_10001D914();
      *(v31 + 1) = 0;
      v71 = 1;
      v31[16] = 1;
      v72 = sub_100005A2C(&qword_100032860, &qword_100020808);
      sub_10000A358(v102, &v31[*(v72 + 44)]);

      v125 = sub_10001DB24();
      v73 = sub_10001DC04();
      *&v31[*(sub_100005A2C(&qword_100032868, &qword_100020810) + 36)] = v73;
      v74 = v31;
      v75 = &v31[*(v112 + 36)];
      v75[32] = 0;
      *v75 = 0u;
      *(v75 + 1) = 0u;
      v76 = sub_10001D784();
      v77 = *&v76[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request];

      LODWORD(v76) = [v77 showsEnablementButton];
      v79 = v114;
      if (v76)
      {
        __chkstk_darwin(v78);
        v80 = v111;
        v81 = v118;
        *(&v102 - 2) = v111;
        *(&v102 - 1) = v81;
        v82 = [v80 metadata];
        v83 = [v82 descriptionMetadata];

        if (v83)
        {
          v84 = [v83 descriptionText];

          v85 = [v84 wf_localizedString];
          v86 = sub_10001DD14();
          v88 = v87;

          v125 = v86;
          v126 = v88;
          sub_100005A7C();
          v89 = sub_10001DA74();
          v93 = v92 & 1;
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v93 = 0;
          v91 = 0;
        }

        v125 = v89;
        v126 = v90;
        v127 = v93;
        v128 = v91;
        sub_100005A2C(&qword_100032850, &qword_100020800);
        sub_100005A2C(&qword_1000321E8, &qword_1000201F0);
        sub_100006B8C(&qword_100032858, &qword_100032850, &qword_100020800);
        sub_100005AD0();
        v94 = v105;
        sub_10001DC74();
        (*(v106 + 32))(v119, v94, v79);
        v71 = 0;
      }

      v95 = v119;
      sub_10000619C(v119, v71, 1, v79);
      v96 = v74;
      v97 = v113;
      sub_10000C194(v74, v113, &qword_100032818, &qword_1000207D8);
      v98 = v115;
      sub_10000C194(v95, v115, &qword_100032810, &qword_1000207D0);
      v99 = v116;
      sub_10000C194(v97, v116, &qword_100032818, &qword_1000207D8);
      v100 = sub_100005A2C(&unk_100032870, &qword_100020818);
      sub_10000C194(v98, v99 + *(v100 + 48), &qword_100032810, &qword_1000207D0);
      sub_100006AF0(v98, &qword_100032810, &qword_1000207D0);
      sub_100006AF0(v97, &qword_100032818, &qword_1000207D8);
      sub_10000C194(v99, v122, &qword_100032800, &qword_1000207C0);
      swift_storeEnumTagMultiPayload();
      sub_100006B8C(&qword_100032840, &qword_100032800, &qword_1000207C0);
      sub_100006B8C(&qword_100032848, &qword_1000327D8, &qword_100020798);
      v101 = v124;
      sub_10001D9A4();

      sub_100006AF0(v99, &qword_100032800, &qword_1000207C0);
      sub_100006AF0(v95, &qword_100032810, &qword_1000207D0);
      sub_100006AF0(v96, &qword_100032818, &qword_1000207D8);
      v62 = sub_100005A2C(&qword_100032820, &qword_1000207E0);
      v63 = v101;
      return sub_10000619C(v63, 0, 1, v62);
    }
  }

  v43 = sub_10001D784();
  v44 = *&v43[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request];

  v45 = [v44 contextualAction];
  if (v45)
  {
    *v15 = sub_10001D914();
    *(v15 + 1) = 0;
    v46 = 1;
    v15[16] = 1;
    v47 = &v15[*(sub_100005A2C(&qword_100032828, &qword_1000207E8) + 44)];
    v119 = v45;
    v48 = v118;
    sub_10000A770(v45, v47);
    v125 = sub_10001DB24();
    v49 = sub_10001DC04();
    *&v15[*(sub_100005A2C(&qword_100032830, &qword_1000207F0) + 36)] = v49;
    v50 = &v15[*(v107 + 36)];
    v50[32] = 0;
    *v50 = 0u;
    *(v50 + 1) = 0u;
    v51 = sub_10001D784();
    v52 = *&v51[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request];

    LODWORD(v51) = [v52 showsEnablementButton];
    v54 = v109;
    if (v51)
    {
      __chkstk_darwin(v53);
      *(&v102 - 2) = v48;
      sub_100005A2C(&qword_100032850, &qword_100020800);
      sub_100006B8C(&qword_100032858, &qword_100032850, &qword_100020800);
      v55 = v103;
      sub_10001DC64();
      (*(v104 + 32))(v117, v55, v54);
      v46 = 0;
    }

    v56 = v117;
    sub_10000619C(v117, v46, 1, v54);
    v57 = v108;
    sub_10000C194(v15, v108, &qword_1000327F0, &qword_1000207B0);
    v58 = v110;
    sub_10000C194(v56, v110, &qword_1000327E8, &qword_1000207A8);
    v59 = v111;
    sub_10000C194(v57, v111, &qword_1000327F0, &qword_1000207B0);
    v60 = sub_100005A2C(&qword_100032838, &qword_1000207F8);
    sub_10000C194(v58, v59 + *(v60 + 48), &qword_1000327E8, &qword_1000207A8);
    sub_100006AF0(v58, &qword_1000327E8, &qword_1000207A8);
    sub_100006AF0(v57, &qword_1000327F0, &qword_1000207B0);
    sub_10000C194(v59, v122, &qword_1000327D8, &qword_100020798);
    swift_storeEnumTagMultiPayload();
    sub_100006B8C(&qword_100032840, &qword_100032800, &qword_1000207C0);
    sub_100006B8C(&qword_100032848, &qword_1000327D8, &qword_100020798);
    v61 = v124;
    sub_10001D9A4();

    sub_100006AF0(v59, &qword_1000327D8, &qword_100020798);
    sub_100006AF0(v56, &qword_1000327E8, &qword_1000207A8);
    sub_100006AF0(v15, &qword_1000327F0, &qword_1000207B0);
    v62 = sub_100005A2C(&qword_100032820, &qword_1000207E0);
    v63 = v61;
    return sub_10000619C(v63, 0, 1, v62);
  }

  v64 = sub_100005A2C(&qword_100032820, &qword_1000207E0);
  v65 = v124;

  return sub_10000619C(v65, 1, 1, v64);
}

uint64_t sub_1000093D0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return sub_100009410(v4, a2);
}

uint64_t sub_100009410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = sub_100005A2C(&qword_1000326B8, &unk_1000206C8);
  v43 = *(v46 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v46);
  v6 = &v42 - v5;
  v44 = sub_100005A2C(&qword_100032768, &unk_100020730);
  v7 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v9 = (&v42 - v8);
  v10 = *(a1 + 8);
  v11 = sub_1000168D0(v10);
  if (v11)
  {
    sub_100014E10(0, (v10 & 0xC000000000000001) == 0, v10);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = sub_10001DF44();
    }

    else
    {
      v12 = *(v10 + 32);
    }

    v13 = v12;
    v57 = &OBJC_PROTOCOL___WFParameterValuePickable;
    v14 = swift_dynamicCastObjCProtocolConditional();
    if (v14)
    {
      v15 = v14;
      if (sub_1000168D0(v10) == 1)
      {
        v42 = *(v2 + 32);
        v16 = [v15 key];
        v17 = sub_10001DD14();
        v19 = v18;

        v20 = sub_10000CF90(v17, v19, v42);

        if (v20)
        {
          v21 = *(v2 + 24);
          sub_10001D5E4();
          v22 = v21;
          v23 = v13;
          sub_100007110();
          sub_10001D5D4();
          sub_100009E34(&qword_100032780, &type metadata accessor for ParameterStateStore);
          v24 = sub_10001D7D4();
          *v9 = v22;
          v9[1] = v15;
          v9[2] = v20;
          v9[3] = v24;
          v9[4] = v25;
          swift_storeEnumTagMultiPayload();
          sub_10000B8E0();
          sub_10000B934();
          return sub_10001D9A4();
        }
      }
    }
  }

  __chkstk_darwin(v11);
  v58[0] = *(a1 + 16);
  v27 = *&v58[0];
  if (!*(&v58[0] + 1))
  {
    v27 = 0;
  }

  v28 = _swiftEmptyArrayStorage;
  if (!*(&v58[0] + 1))
  {
    v28 = 0;
  }

  v53 = v27;
  v54 = *(&v58[0] + 1);
  v55 = 0;
  v56 = v28;
  v29 = *(a1 + 40);
  if (v29)
  {
    v30 = *(a1 + 32);
    sub_10000C194(v58, v51, &qword_100032770, &unk_100020B50);
    v31 = sub_10001D964();
    v49 = 1;
    sub_10000AF04(v30, v29, v48);
    memcpy(v50, v48, 0x59uLL);
    memcpy(v51, v48, 0x59uLL);
    sub_10000C194(v50, &v47, &qword_100032778, &qword_100020740);
    sub_100006AF0(v51, &qword_100032778, &qword_100020740);
    v32 = v50[0];
    v33 = v50[1];
    v34 = v50[2];
    v35 = v50[3];
    v36 = v50[4];
    v37 = *&v50[5];
    v38 = BYTE8(v50[5]);
    v39 = v49;
  }

  else
  {
    sub_10000C194(v58, v51, &qword_100032770, &unk_100020B50);
    v31 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
  }

  v51[0] = v31;
  v51[1] = 0;
  *&v51[3] = v32;
  *&v51[5] = v33;
  *&v51[7] = v34;
  *&v51[9] = v35;
  *&v51[11] = v36;
  v51[2] = v39;
  v51[13] = v37;
  v52 = v38;
  sub_100005A2C(&qword_1000321E8, &qword_1000201F0);
  sub_100005A2C(&qword_1000326D8, &qword_1000206D8);
  sub_100005A2C(&qword_100032708, &qword_1000206E8);
  sub_100005AD0();
  sub_10000B9D4();
  sub_10000BBB0();
  sub_10001DC54();
  v40 = v43;
  v41 = v46;
  (*(v43 + 16))(v9, v6, v46);
  swift_storeEnumTagMultiPayload();
  sub_10000B8E0();
  sub_10000B934();
  sub_10001D9A4();
  return (*(v40 + 8))(v6, v41);
}

uint64_t sub_100009954(uint64_t a1, const void *a2)
{
  v6 = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  memcpy((v3 + 16), a2, 0x41uLL);

  sub_10000B7BC(a2, v5);
  sub_100005A2C(&qword_100032740, &qword_100020720);
  sub_100006B8C(&qword_100032748, &qword_100032740, &qword_100020720);
  sub_10000BFE0(&qword_100032750, &qword_100032758, WFFocusConfigurationButton_ptr);
  sub_10000BF84();
  return sub_10001DC44();
}

void *sub_100009A94@<X0>(void **a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  memcpy((v6 + 16), a2, 0x41uLL);
  *(v6 + 88) = v5;
  v7 = v5;
  sub_10000B7BC(a2, __src);
  sub_100009C48(v7, sub_10000C0A0, v6, __src);
  return memcpy(a3, __src, 0x48uLL);
}

uint64_t sub_100009B44(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  type metadata accessor for FocusConfigurationActionViewModel();
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel);
  v6 = sub_10001D784();
  v7 = *&v6[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationButtonTapped];

  v8 = a2;
  sub_10001D6C4();
}

__n128 sub_100009C48@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100005A2C(&qword_100032760, &qword_100020728);
  sub_10001DBA4();
  result = v9;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v9;
  *(a4 + 40) = v10;
  *(a4 + 56) = v11;
  *(a4 + 64) = v12;
  return result;
}

uint64_t sub_100009CE0(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v3 = *a1;

  sub_100005A2C(&qword_100032658, &qword_100020670);
  return sub_10001DBC4();
}

void sub_100009D3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  type metadata accessor for FocusConfigurationActionViewModel();
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel);
  v4 = sub_10001D784();
  sub_100011FDC();
}

uint64_t sub_100009E34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009E84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = sub_10001D574();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10001D5A4();
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v38);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001D594();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005A2C(&qword_1000327C0, &qword_100020780);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v37 - v19;
  v42 = sub_100005A2C(&qword_1000326E0, &qword_1000206E0);
  v21 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v39 = &v37 - v22;
  sub_10001D5E4();
  v23 = *(v2 + 24);
  v24 = a1;
  v25 = v23;
  sub_100007110();
  sub_10001D5D4();
  (*(v7 + 104))(v10, enum case for ParameterLayoutMode.default(_:), v38);
  sub_10001D584();
  v26 = sub_100009E34(&qword_1000326F0, &type metadata accessor for ParameterRowView);
  sub_10001DA84();
  (*(v12 + 8))(v15, v11);
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_10001DF34(21);

  v47 = 0xD000000000000013;
  v48 = 0x8000000100027060;
  v27 = [v24 key];
  v28 = sub_10001DD14();
  v30 = v29;

  v49._countAndFlagsBits = v28;
  v49._object = v30;
  sub_10001DD74(v49);

  v47 = v11;
  v48 = v26;
  swift_getOpaqueTypeConformance2();
  v31 = v39;
  v32 = v40;
  sub_10001DAE4();

  (*(v41 + 8))(v20, v32);
  v34 = v43;
  v33 = v44;
  v35 = v45;
  (*(v44 + 104))(v43, enum case for EditorPresentationEnvironment.focusFilter(_:), v45);
  sub_10000BA94();
  sub_10001DA94();
  (*(v33 + 8))(v34, v35);
  return sub_10000C124(v31);
}

uint64_t sub_10000A358@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005A2C(&qword_100032880, &qword_100020820);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = [a1 bundleIdentifier];
  sub_10001DD14();

  sub_10001D5F4();
  sub_10001DC84();
  sub_10001D7B4();
  v13 = &v11[*(v5 + 44)];
  v14 = v18[1];
  *v13 = v18[0];
  *(v13 + 1) = v14;
  *(v13 + 2) = v18[2];
  sub_10000C194(v11, v9, &qword_100032880, &qword_100020820);
  *a2 = 0;
  *(a2 + 8) = 1;
  v15 = sub_100005A2C(&qword_100032888, &qword_100020828);
  sub_10000C194(v9, a2 + *(v15 + 48), &qword_100032880, &qword_100020820);
  v16 = a2 + *(v15 + 64);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_100006AF0(v11, &qword_100032880, &qword_100020820);
  return sub_100006AF0(v9, &qword_100032880, &qword_100020820);
}

uint64_t sub_10000A53C(void *a1, uint64_t *a2)
{
  v3 = [a1 metadata];
  v4 = [v3 title];

  if (v4)
  {
    v5 = [v4 wf_localizedString];
  }

  else
  {
    sub_10001DD44();
    sub_10001DD44();
    if (qword_100032078 != -1)
    {
      swift_once();
    }

    v6 = static NSBundle._current;
    v7 = sub_10001DD04();
    v8 = sub_10001DD04();

    v4 = sub_10001DD04();

    v5 = [v6 localizedStringForKey:v7 value:v8 table:v4];
  }

  sub_10001DD14();
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  type metadata accessor for FocusConfigurationActionViewModel();
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel);
  v12 = sub_10001D784();
  sub_10000F6EC();

  sub_100005A7C();
  return sub_10001DBF4();
}

uint64_t sub_10000A770@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v26 = sub_10001D634();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100005A2C(&qword_100032890, &qword_100020830);
  v7 = *(*(v25 - 8) + 64);
  v8 = __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v24 - v12;
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = [a1 title];
  sub_10001DD14();

  v17 = [a1 icon];
  if (v17)
  {
    sub_10000C1E0(v17);
  }

  sub_10000AA5C();
  sub_10001D624();
  sub_10001DC84();
  sub_10001D7B4();
  (*(v3 + 32))(v13, v6, v26);
  v18 = &v13[*(v25 + 36)];
  v19 = v29;
  *v18 = v28;
  *(v18 + 1) = v19;
  *(v18 + 2) = v30;
  sub_10000C608(v13, v15, &qword_100032890, &qword_100020830);
  sub_10000C194(v15, v10, &qword_100032890, &qword_100020830);
  v20 = v27;
  *v27 = 0;
  *(v20 + 8) = 1;
  v21 = sub_100005A2C(&qword_100032898, &qword_100020838);
  sub_10000C194(v10, v20 + *(v21 + 48), &qword_100032890, &qword_100020830);
  v22 = v20 + *(v21 + 64);
  *v22 = 0;
  v22[8] = 1;
  sub_100006AF0(v15, &qword_100032890, &qword_100020830);
  return sub_100006AF0(v10, &qword_100032890, &qword_100020830);
}

uint64_t sub_10000AA5C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for FocusConfigurationActionViewModel();
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel);
  v4 = sub_10001D784();
  v5 = *&v4[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request];

  v6 = [v5 mastheadTintColor];
  if (v6)
  {

    return sub_10001DB14();
  }

  else
  {

    return sub_10001DB04();
  }
}

uint64_t sub_10000AB58(uint64_t *a1)
{
  sub_10001DD44();
  sub_10001DD44();
  if (qword_100032078 != -1)
  {
    swift_once();
  }

  v2 = static NSBundle._current;
  v3 = sub_10001DD04();
  v4 = sub_10001DD04();

  v5 = sub_10001DD04();

  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_10001DD14();
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  type metadata accessor for FocusConfigurationActionViewModel();
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel);
  v10 = sub_10001D784();
  sub_10000F6EC();

  sub_100005A7C();
  return sub_10001DBF4();
}

uint64_t sub_10000AD34(uint64_t a1, const void *a2)
{
  v8 = *(a1 + 8);
  v7[9] = v8;
  swift_getKeyPath();
  v3 = swift_allocObject();
  memcpy((v3 + 16), a2, 0x41uLL);
  sub_10000C194(&v8, v7, &qword_100032798, &qword_100020770);
  sub_10000B7BC(a2, v7);
  sub_100005A2C(&qword_100032798, &qword_100020770);
  sub_100005A2C(&qword_1000327A0, &qword_100020778);
  sub_100006B8C(&qword_1000327A8, &qword_100032798, &qword_100020770);
  sub_10000BFE0(&unk_1000327B0, &qword_100032B00, WFParameter_ptr);
  v4 = sub_100005B4C(&qword_1000326E0, &qword_1000206E0);
  v5 = sub_10000BA94();
  v7[0] = v4;
  v7[1] = v5;
  swift_getOpaqueTypeConformance2();
  return sub_10001DC44();
}

uint64_t sub_10000AF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = sub_10001D9E4();
  sub_10001D774();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = 0;
  __src[3] = _swiftEmptyArrayStorage;
  LOBYTE(__src[4]) = v6;
  __src[5] = v7;
  __src[6] = v9;
  __src[7] = v11;
  __src[8] = v13;
  LOBYTE(__src[9]) = 0;
  memcpy(__dst, __src, 0x49uLL);
  v16[80] = 0;
  memcpy(a3, __dst, 0x50uLL);
  *(a3 + 80) = 0x4028000000000000;
  *(a3 + 88) = 0;
  v19[0] = a1;
  v19[1] = a2;
  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v22 = v6;
  v23 = v8;
  v24 = v10;
  v25 = v12;
  v26 = v14;
  v27 = 0;
  sub_10000C194(__src, v16, &qword_100032790, &qword_100020750);
  return sub_100006AF0(v19, &qword_100032790, &qword_100020750);
}

uint64_t sub_10000B028@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = *(*(sub_100005A2C(&qword_1000328B8, &qword_1000209C0) - 8) + 64);
  sub_10000C880();
  __chkstk_darwin(v3);
  v5 = &v42 - v4;
  v45 = sub_100005A2C(&qword_1000328C0, &qword_1000209C8);
  sub_100006C14(v45);
  v43 = v6;
  v8 = *(v7 + 64);
  sub_10000C880();
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v42 = sub_100005A2C(&qword_1000328C8, &qword_1000209D0);
  sub_100006C04(v42);
  v13 = *(v12 + 64);
  sub_10000C880();
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v44 = sub_100005A2C(&qword_1000328D0, &qword_1000209D8);
  sub_100006C04(v44);
  v18 = *(v17 + 64);
  sub_10000C880();
  __chkstk_darwin(v19);
  v21 = &v42 - v20;
  v46 = sub_100005A2C(&qword_1000328D8, &qword_1000209E0);
  sub_100006C04(v46);
  v23 = *(v22 + 64);
  sub_10000C880();
  __chkstk_darwin(v24);
  v26 = &v42 - v25;
  v27 = *v1;
  v28 = [*v1 localizedTitle];
  v29 = sub_10001DD14();
  v31 = v30;

  v48[0] = v29;
  v48[1] = v31;
  if ([v27 isDestructive])
  {
    sub_10001D744();
  }

  else
  {
    sub_10001D754();
  }

  v32 = sub_10001D764();
  sub_10000619C(v5, 0, 1, v32);
  sub_10000C8A8();
  v33 = swift_allocObject();
  sub_10000C88C(v33);
  sub_10000C574(v1, __src);
  sub_100005A7C();
  sub_10001DBE4();
  sub_10001DC94();
  sub_10001D814();
  (*(v43 + 32))(v16, v11, v45);
  memcpy(&v16[*(v42 + 36)], __src, 0x70uLL);
  sub_10000C8A8();
  v34 = swift_allocObject();
  sub_10000C88C(v34);
  sub_10000C574(v1, v48);
  v35 = sub_10001DC84();
  v37 = v36;
  sub_10000C608(v16, v21, &qword_1000328C8, &qword_1000209D0);
  v38 = &v21[*(v44 + 36)];
  *v38 = sub_10000C5AC;
  v38[1] = v34;
  v38[2] = v35;
  v38[3] = v37;
  sub_10000C8A8();
  v39 = swift_allocObject();
  sub_10000C88C(v39);
  sub_10000C608(v21, v26, &qword_1000328D0, &qword_1000209D8);
  v40 = &v26[*(v46 + 36)];
  *v40 = 0;
  *(v40 + 1) = 0;
  *(v40 + 2) = sub_10000C600;
  *(v40 + 3) = v39;
  sub_10000C608(v26, v47, &qword_1000328D8, &qword_1000209E0);
  return sub_10000C574(v1, v48);
}

uint64_t sub_10000B480(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(result + 16);
    v5 = *(result + 24);
    v6 = *(result + 40);
    v7 = *(result + 56);

    sub_100005A2C(&qword_1000328E0, &qword_1000209E8);
    v3 = sub_10001DBB4();
    if ((v4 & 1) == 0)
    {
      v1(v3);
    }

    return sub_10000C654(v1);
  }

  return result;
}

uint64_t sub_10000B51C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_10001D9B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D9C4();
  sub_10001D7C4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  v17 = *(a1 + 40);
  v21 = *(a1 + 24);
  v22 = v17;
  v23 = *(a1 + 56);
  v19[1] = v10;
  v19[2] = v12;
  v19[3] = v14;
  v19[4] = v16;
  v20 = 0;
  sub_100005A2C(&qword_1000328E0, &qword_1000209E8);
  sub_10001DBC4();
  result = sub_10001DB24();
  *a2 = result;
  return result;
}

uint64_t sub_10000B674(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  sub_100005A2C(&qword_1000328E0, &qword_1000209E8);
  return sub_10001DBC4();
}

uint64_t sub_10000B728@<X0>(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_100014CB0(a1);
}

uint64_t sub_10000B738()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10000B780(_BYTE *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_100014D10(a1);
}

uint64_t sub_10000B790(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1();
  }

  else
  {
  }
}

void sub_10000B7A0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10000B800()
{
  result = qword_100032698;
  if (!qword_100032698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032698);
  }

  return result;
}

unint64_t sub_10000B854()
{
  result = qword_1000326A0;
  if (!qword_1000326A0)
  {
    sub_100005B4C(&qword_100032688, &qword_1000206C0);
    sub_10000B8E0();
    sub_10000B934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000326A0);
  }

  return result;
}

unint64_t sub_10000B8E0()
{
  result = qword_1000326A8;
  if (!qword_1000326A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000326A8);
  }

  return result;
}

unint64_t sub_10000B934()
{
  result = qword_1000326B0;
  if (!qword_1000326B0)
  {
    sub_100005B4C(&qword_1000326B8, &unk_1000206C8);
    sub_100005AD0();
    sub_10000B9D4();
    sub_10000BBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000326B0);
  }

  return result;
}

unint64_t sub_10000B9D4()
{
  result = qword_1000326D0;
  if (!qword_1000326D0)
  {
    sub_100005B4C(&qword_1000326D8, &qword_1000206D8);
    sub_100005B4C(&qword_1000326E0, &qword_1000206E0);
    sub_10000BA94();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000326D0);
  }

  return result;
}

unint64_t sub_10000BA94()
{
  result = qword_1000326E8;
  if (!qword_1000326E8)
  {
    sub_100005B4C(&qword_1000326E0, &qword_1000206E0);
    sub_10001D594();
    sub_100009E34(&qword_1000326F0, &type metadata accessor for ParameterRowView);
    swift_getOpaqueTypeConformance2();
    sub_100009E34(&qword_1000326F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000326E8);
  }

  return result;
}

unint64_t sub_10000BBB0()
{
  result = qword_100032700;
  if (!qword_100032700)
  {
    sub_100005B4C(&qword_100032708, &qword_1000206E8);
    sub_100006B8C(&qword_100032710, &qword_100032718, &qword_1000206F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032700);
  }

  return result;
}

char *sub_10000BC60()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_10000BD18(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_10000BCAC(char *result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_10000BD18((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_10000BCEC(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v2 > 1);
  }

  return result;
}

char *sub_10000BD18(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100005A2C(&unk_1000327C8, &qword_100020788);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_100014E34((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000BE20(void *a1)
{
  v1 = [a1 localizedFocusFilterDescription];
  if (v1)
  {
    v2 = v1;
    sub_10001DD14();
  }

  return sub_10000C8B4();
}

uint64_t sub_10000BE80(void *a1)
{
  v2 = [a1 footerButtons];

  if (!v2)
  {
    return 0;
  }

  sub_100006710(0, &qword_100032758, WFFocusConfigurationButton_ptr);
  v3 = sub_10001DDD4();

  return v3;
}

unint64_t sub_10000BF00()
{
  result = qword_100032730;
  if (!qword_100032730)
  {
    sub_100005B4C(&qword_100032728, &qword_100020700);
    sub_10000BF84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032730);
  }

  return result;
}

unint64_t sub_10000BF84()
{
  result = qword_100032738;
  if (!qword_100032738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032738);
  }

  return result;
}

uint64_t sub_10000BFE0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006710(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000C030()
{
  sub_10000B790(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  sub_10000B7A0(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10000C0B4()
{
  sub_10000B790(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  sub_10000B7A0(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_10000C124(uint64_t a1)
{
  v2 = sub_100005A2C(&qword_1000326E0, &qword_1000206E0);
  sub_100006C04(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10000C194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000C8E0(a1, a2, a3, a4);
  sub_100006C04(v5);
  v7 = *(v6 + 16);
  v8 = sub_10000C8B4();
  v9(v8);
  return v4;
}

uint64_t sub_10000C1E0(void *a1)
{
  v2 = [a1 systemName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10001DD14();

  return v3;
}

uint64_t sub_10000C250(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000C270(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10000C2B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000C310(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000C324(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10000C364(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10000C3C4()
{
  result = qword_1000328A0;
  if (!qword_1000328A0)
  {
    sub_100005B4C(&qword_100032650, &qword_100020668);
    sub_100006B8C(&qword_1000328A8, &qword_100032648, &qword_100020660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000328A0);
  }

  return result;
}

unint64_t sub_10000C49C()
{
  result = qword_1000328B0;
  if (!qword_1000328B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000328B0);
  }

  return result;
}

void sub_10000C4F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_10001E094(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_10001DD54();

      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10000C5B4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 80);

  sub_10000C8A8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10000C608(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000C8E0(a1, a2, a3, a4);
  sub_100006C04(v5);
  v7 = *(v6 + 32);
  v8 = sub_10000C8B4();
  v9(v8);
  return v4;
}

uint64_t sub_10000C654(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10000C668()
{
  result = qword_1000328E8;
  if (!qword_1000328E8)
  {
    sub_100005B4C(&qword_1000328D8, &qword_1000209E0);
    sub_10000C6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000328E8);
  }

  return result;
}

unint64_t sub_10000C6F4()
{
  result = qword_1000328F0;
  if (!qword_1000328F0)
  {
    sub_100005B4C(&qword_1000328D0, &qword_1000209D8);
    sub_10000C7AC();
    sub_100006B8C(&qword_100032908, &unk_100032910, &unk_1000209F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000328F0);
  }

  return result;
}

unint64_t sub_10000C7AC()
{
  result = qword_1000328F8;
  if (!qword_1000328F8)
  {
    sub_100005B4C(&qword_1000328C8, &qword_1000209D0);
    sub_100006B8C(&qword_100032900, &qword_1000328C0, &qword_1000209C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000328F8);
  }

  return result;
}

void *sub_10000C88C(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x48uLL);
}

void *sub_10000C8C0(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x41uLL);
}

uint64_t sub_10000C8E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100005A2C(a3, a4);
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_10001DD44();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_10001DD44();
    }

LABEL_9:
    __break(1u);
    return sub_10001DD44();
  }

  __break(1u);
  return result;
}

uint64_t *NSBundle._current.unsafeMutableAddressor()
{
  if (qword_100032078 != -1)
  {
    sub_10000CB10();
  }

  return &static NSBundle._current;
}

id sub_10000CA38()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle._current = result;
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_100032078 != -1)
  {
    sub_10000CB10();
  }

  v1 = static NSBundle._current;

  return v1;
}

uint64_t sub_10000CB10()
{

  return swift_once();
}

uint64_t sub_10000CB34(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10001DFF4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10000CB58(void *a1)
{
  v2 = v1;
  objc_opt_self();
  sub_100016A78();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return sub_10001628C(a1, &selRef_localizedDescription);
  }

  v5 = v4;
  v6 = v2;
  v7 = [a1 key];
  if (!v7)
  {
    sub_10001DD14();
    v7 = sub_10001DD04();
  }

  v8 = [v5 parameterMetadataForIdentifier:v7];

  if (!v8)
  {

    return sub_10001628C(a1, &selRef_localizedDescription);
  }

  v9 = [v8 parameterDescription];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 wf_localizedString];

    v12 = sub_10001DD14();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }

  return v12;
}

void sub_10000CCC8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = sub_10000CB34(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_10001DF44();
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_10000CDBC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10001DFF4())
  {
    if (a2 >> 62)
    {
      result = sub_10001DFF4();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_100006710(0, &qword_100032B00, WFParameter_ptr);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = sub_10001DF44();
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = sub_10001DF44();
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_10001DED4();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000CF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100015658(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void *sub_10000CFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100015658(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_10000D02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100015658(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_10000D07C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10000F8B0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10000D0AC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10000F398();
}

Swift::Int sub_10000D10C(unsigned __int8 a1)
{
  sub_10001E084();
  sub_10001E094(a1);
  return sub_10001E0A4();
}

Swift::Int sub_10000D170()
{
  v1 = *v0;
  sub_10001E084();
  sub_10001E094(v1);
  return sub_10001E0A4();
}

uint64_t sub_10000D1C4()
{
  sub_10001696C();
  v1[7] = v2;
  v1[8] = v0;
  sub_10001DE34();
  v1[9] = sub_100016B90();
  sub_100016A84();
  v4 = sub_10001DE14();
  v1[10] = v4;
  v1[11] = v3;

  return _swift_task_switch(sub_10000D24C, v4, v3);
}

uint64_t sub_10000D24C()
{
  sub_100016984();
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationStateChange;
  v0[12] = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationStateChange;
  v3 = sub_100005A2C(&qword_100032AE8, &unk_100020EB0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v1 + v2) = sub_10001D6D4();
  v6 = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurableParametersChange;
  v0[13] = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurableParametersChange;
  v7 = sub_100005A2C(&qword_100032AF0, &qword_100020AF0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v1 + v6) = sub_10001D6D4();
  v10 = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationButtonTapped;
  v0[14] = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationButtonTapped;
  v11 = sub_100005A2C(&qword_100032AF8, &qword_100020AF8);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v1 + v10) = sub_10001D6D4();
  v0[15] = type metadata accessor for FocusConfigurationActionViewModel();
  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_10000D3A0;
  v15 = v0[7];

  return sub_10000DA24();
}

uint64_t sub_10000D3A0()
{
  sub_100016984();
  v3 = v2;
  sub_100016A50();
  v5 = v4;
  sub_100016930();
  *v6 = v5;
  v8 = *(v7 + 128);
  v9 = *v1;
  sub_100016960();
  *v10 = v9;
  v5[17] = v3;
  v5[18] = v0;

  if (v0)
  {
    v11 = v5[10];
    v12 = v5[11];

    return _swift_task_switch(sub_10000D948, v11, v12);
  }

  else
  {
    v13 = swift_task_alloc();
    v5[19] = v13;
    *v13 = v9;
    v13[1] = sub_10000D508;

    return sub_10000DE50();
  }
}

uint64_t sub_10000D508()
{
  sub_10001696C();
  v1 = *v0;
  sub_100016930();
  *v3 = v2;
  v4 = v1[19];
  v5 = *v0;
  sub_100016960();
  *v6 = v5;
  *(v8 + 160) = v7;

  v9 = v1[11];
  v10 = v1[10];

  return _swift_task_switch(sub_10000D620, v10, v9);
}

void sub_10000D620()
{
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);

  *(v7 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request) = v8;
  *(v7 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action) = v5;
  *(v7 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_options) = v4;
  v9 = v8;
  v10 = [v5 visibleParametersWithProcessing:0];
  sub_100006710(0, &qword_100032B00, WFParameter_ptr);
  v11 = sub_10001DDD4();

  v33 = _swiftEmptyArrayStorage;
  sub_10000CB34(v11);
  sub_100016AC0();
  while (v8 != v1)
  {
    if (v2)
    {
      v12 = sub_10001DF44();
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_25;
      }

      v12 = *(v11 + 8 * v1 + 32);
    }

    v13 = v12;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    if (sub_10000F2B4(*(v0 + 56)))
    {
      sub_10001DF64();
      v14 = _swiftEmptyArrayStorage[2];
      sub_10001DF84();
      sub_100016A6C();
      sub_10001DF94();
      sub_10001DF74();
    }

    else
    {
    }

    ++v1;
  }

  v15 = *(v0 + 56);
  v16 = *(v0 + 64);

  *(v16 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_configurableParameter) = _swiftEmptyArrayStorage;
  v17 = [v15 showsEnablementButton];
  v18 = 1;
  if (v17)
  {
    v18 = [*(v0 + 56) isEnabled];
  }

  v19 = *(v0 + 136);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  *(v21 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled) = v18;
  swift_beginAccess();
  *(v0 + 168) = 1;
  sub_10001D6F4();
  swift_endAccess();
  *(v0 + 40) = v21;
  *(v0 + 48) = v20;
  v22 = objc_msgSendSuper2((v0 + 40), "init");
  [v19 addEventObserver:v22];
  v23 = [v19 parameters];
  v24 = sub_10001DDD4();

  v25 = sub_10000CB34(v24);
  if (v25)
  {
    v26 = v25;
    if (v25 < 1)
    {
      goto LABEL_26;
    }

    for (i = 0; i != v26; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = sub_10001DF44();
      }

      else
      {
        v28 = *(v24 + 8 * i + 32);
      }

      v29 = v28;
      [v28 addEventObserver:{v22, v33}];
    }
  }

  v30 = *(v0 + 136);

  v31 = sub_100016940();

  v32(v31);
}

uint64_t sub_10000D948()
{
  sub_100016AA8();
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  v8 = *(v6 + v4);

  v9 = *(v6 + v3);

  v10 = *(v6 + v2);

  v11 = *((swift_isaMask & *v6) + 0x30);
  v12 = *((swift_isaMask & *v6) + 0x34);
  swift_deallocPartialClassInstance();
  sub_1000169A0();
  v14 = v0[18];

  return v13();
}

uint64_t sub_10000DA24()
{
  sub_10001696C();
  v1[2] = v2;
  v1[3] = v0;
  sub_10001DE34();
  v1[4] = sub_100016B90();
  sub_100016A84();
  v4 = sub_10001DE14();
  v1[5] = v4;
  v1[6] = v3;

  return _swift_task_switch(sub_10000DAAC, v4, v3);
}

uint64_t sub_10000DAAC()
{
  sub_100016AA8();
  v1 = [*(v0 + 16) mode];
  if (v1 == 1)
  {
    v12 = swift_task_alloc();
    *(v0 + 56) = v12;
    *v12 = v0;
    v12[1] = sub_10000DC80;
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);

    return sub_100014364(v13);
  }

  else
  {
    if (v1)
    {
      v15 = *(v0 + 32);
    }

    else
    {
      v2 = *(v0 + 32);
      v3 = *(v0 + 16);

      v4 = [v3 actionIdentifier];
      if (v4)
      {
        v5 = v4;
        v6 = [*(v0 + 16) action];
        if (v6)
        {
          v7 = v6;
          v8 = *(v0 + 24);
          v9 = sub_100012F58(v5, v6);

          sub_100016978();

          return v10(v9);
        }
      }
    }

    sub_100016238();
    sub_1000169C0();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    sub_1000169A0();

    return v17();
  }
}

uint64_t sub_10000DC80()
{
  sub_100016984();
  v3 = v2;
  sub_100016A50();
  v5 = v4;
  sub_100016930();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  sub_100016960();
  *v10 = v9;
  v5[8] = v0;

  if (v0)
  {
    v11 = v5[5];
    v12 = v5[6];
    v13 = sub_10000DDF4;
  }

  else
  {
    v5[9] = v3;
    v11 = v5[5];
    v12 = v5[6];
    v13 = sub_10000DD94;
  }

  return _swift_task_switch(v13, v11, v12);
}

uint64_t sub_10000DD94()
{
  sub_10001696C();
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);
  sub_100016978();

  return v3();
}

uint64_t sub_10000DDF4()
{
  sub_10001696C();
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);
  sub_1000169A0();

  return v3();
}

uint64_t sub_10000DE50()
{
  sub_10001696C();
  v0[20] = v1;
  sub_10001DE34();
  v0[21] = sub_100016B90();
  sub_100016A84();
  v3 = sub_10001DE14();
  v0[22] = v3;
  v0[23] = v2;

  return _swift_task_switch(sub_10000DED8, v3, v2);
}

uint64_t sub_10000DED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100016B0C();
  v97 = (v14 + 80);
  v19 = [*(v14 + 160) parameters];
  sub_100006710(0, &qword_100032B00, WFParameter_ptr);
  sub_100016AF4();
  v20 = sub_10001DDD4();

  v98 = _swiftEmptyArrayStorage;
  sub_10000CB34(v20);
  sub_100016AC0();
  while (v15 != v16)
  {
    if (v17)
    {
      v21 = sub_10001DF44();
    }

    else
    {
      if (v16 >= *(v18 + 16))
      {
        goto LABEL_61;
      }

      v21 = *(v20 + 8 * v16 + 32);
    }

    v22 = v21;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return _swift_continuation_await(v21);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_10001DF64();
      v23 = _swiftEmptyArrayStorage[2];
      sub_10001DF84();
      sub_100016A6C();
      sub_10001DF94();
      v21 = sub_10001DF74();
    }

    else
    {
    }

    ++v16;
  }

  *(v14 + 192) = _swiftEmptyArrayStorage;
  *(v14 + 200) = sub_100005A2C(&qword_100032B08, &unk_100020B10);
  v24 = sub_10001DCF4();
  v21 = sub_10000CB34(_swiftEmptyArrayStorage);
  *(v14 + 208) = v21;
  if (!v21)
  {
LABEL_51:
    v83 = *(v14 + 168);

    sub_100016940();
    sub_100016A1C();

    return v86(v84, v85, v86, v87, v88, v89, v90, v91, a9, v97, v98, a12, a13, a14);
  }

  if (v21 < 1)
  {
    goto LABEL_64;
  }

  v25 = 0;
  while (1)
  {
    *(v14 + 224) = v25;
    *(v14 + 232) = v24;
    *(v14 + 216) = v24;
    v26 = *(v14 + 192);
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = sub_10001DF44();
    }

    else
    {
      v27 = *(v26 + 8 * v25 + 32);
    }

    v28 = v27;
    *(v14 + 240) = v27;
    v29 = [v27 key];
    v30 = sub_10001DD14();
    v32 = v31;

    *(v14 + 248) = v30;
    *(v14 + 256) = v32;
    objc_opt_self();
    v33 = sub_100016BA8();
    v34 = *(v14 + 160);
    if (!v33)
    {
      v41 = v28;
      v42 = v34;
      goto LABEL_25;
    }

    v35 = v33;
    *(v14 + 144) = &OBJC_PROTOCOL___WFDynamicEnumerationDataSource;
    v36 = swift_dynamicCastObjCProtocolConditional();
    v37 = v28;
    v38 = *(v14 + 160);
    if (!v36)
    {
      v43 = v38;
      goto LABEL_25;
    }

    v39 = v37;
    v40 = v38;
    if ([v35 wf_supportsSearch] & 1) == 0 && (objc_msgSend(v36, "respondsToSelector:", "loadPossibleStatesForEnumeration:searchTerm:completionHandler:"))
    {
      break;
    }

LABEL_25:
    objc_opt_self();
    v44 = sub_100016BA8();
    if (!v44 || (v45 = sub_100016170(v44)) == 0)
    {
      v48 = *(v14 + 160);

      goto LABEL_46;
    }

    if (v45 >> 62)
    {
      v46 = sub_10001DFF4();
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v46 <= 10)
    {
      v49 = objc_allocWithZone(INObjectCollection);
      sub_100005A2C(&qword_100032B10, &qword_1000201E8);
      isa = sub_10001DDC4().super.isa;

      v51 = [v49 initWithItems:isa];

      if (v51)
      {
        a9 = v51;
        swift_isUniquelyReferenced_nonNull_native();
        *v97 = v24;
        v52 = sub_100016A6C();
        sub_100015658(v52, v53);
        v54 = v24[2];
        sub_100016990();
        if (v56)
        {
          goto LABEL_62;
        }

        v57 = v21;
        v58 = v55;
        sub_100005A2C(&qword_100032B18, &qword_100020B20);
        v59 = sub_100016A5C();
        if (sub_10001DFB4(v59, v60))
        {
          v61 = *v97;
          v62 = sub_100016A6C();
          v64 = sub_100015658(v62, v63);
          if ((v58 & 1) != (v65 & 1))
          {
            sub_100016A1C();

            return sub_10001E034();
          }

          v57 = v64;
        }

        v24 = *v97;
        if (v58)
        {
          v66 = *(v14 + 160);
          v67 = v24[7];
          v48 = *(v67 + 8 * v57);
          *(v67 + 8 * v57) = a9;
        }

        else
        {
          sub_1000169CC();
          *v78 = v30;
          v78[1] = v32;
          *(v24[7] + 8 * v57) = a9;
          v79 = v24[2];
          v56 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v56)
          {
            goto LABEL_63;
          }

          v66 = *(v14 + 160);
          v24[2] = v80;
          v48 = v28;
        }
      }

      else
      {
        v68 = sub_100016A6C();
        v70 = sub_100015658(v68, v69);
        v72 = v71;

        if (v72)
        {
          v73 = *(v14 + 200);
          v74 = *(v14 + 160);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98 = v24;
          v76 = v24[3];
          sub_100005A2C(&qword_100032B18, &qword_100020B20);
          sub_10001DFB4(isUniquelyReferenced_nonNull_native, v76);
          v77 = *(v24[6] + 16 * v70 + 8);

          sub_10001DFD4();
          goto LABEL_47;
        }

        v48 = *(v14 + 160);
      }

LABEL_46:
      goto LABEL_47;
    }

    v47 = *(v14 + 160);

LABEL_47:
    v25 = sub_1000169AC();
    if (v81)
    {
      v82 = *(v14 + 192);
      goto LABEL_51;
    }
  }

  sub_100016AB4();
  *(v14 + 16) = v93;
  v94 = sub_1000168FC();
  *(v14 + 136) = sub_100005A2C(&qword_100032B80, &qword_100020B28);
  sub_1000168E0();
  *(v14 + 88) = 1107296256;
  *(v14 + 96) = sub_1000168DC;
  *(v14 + 104) = &unk_10002D8C0;
  *(v14 + 112) = v94;
  [v36 loadPossibleStatesForEnumeration:v35 searchTerm:0 completionHandler:?];
  sub_100016A1C();

  return _swift_continuation_await(v21);
}

uint64_t sub_10000E528()
{
  sub_10001696C();
  sub_100016A50();
  v2 = v1;
  sub_100016930();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[33] = v5;
  if (v5)
  {
    v6 = v2[32];

    v7 = v2[22];
    v8 = v2[23];
    v9 = sub_10000ED84;
  }

  else
  {
    v7 = v2[22];
    v8 = v2[23];
    v9 = sub_10000E630;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10000E630()
{
  v1 = v0[19];
  if (!v1)
  {
    v22 = v0[32];
    v23 = v0[30];
    v24 = v0[20];

LABEL_13:
    v27 = v0[29];
    v28 = v0[27];
LABEL_20:
    v98 = v0 + 10;
    while (1)
    {
      v39 = sub_1000169AC();
      if (v40)
      {
        v91 = v0[24];
        v92 = v0[21];

        sub_100016940();
        sub_1000169F4();

        __asm { BRAA            X2, X16 }
      }

      v0[28] = v39;
      v0[29] = v27;
      v0[27] = v28;
      v41 = v0[24];
      if ((v41 & 0xC000000000000001) != 0)
      {
        v42 = sub_10001DF44();
      }

      else
      {
        v42 = *(v41 + 8 * v39 + 32);
      }

      v43 = v42;
      v0[30] = v42;
      v44 = [v42 key];
      v45 = sub_10001DD14();
      v47 = v46;

      v0[31] = v45;
      v0[32] = v47;
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      v49 = v0[20];
      if (v48)
      {
        v50 = v48;
        v0[18] = &OBJC_PROTOCOL___WFDynamicEnumerationDataSource;
        v51 = swift_dynamicCastObjCProtocolConditional();
        v52 = v43;
        v53 = v0[20];
        if (v51)
        {
          v54 = v52;
          v55 = v53;
          if ([v50 wf_supportsSearch] & 1) == 0 && (objc_msgSend(v51, "respondsToSelector:", "loadPossibleStatesForEnumeration:searchTerm:completionHandler:"))
          {
            sub_100016AB4();
            v0[2] = v95;
            v96 = sub_1000168FC();
            v0[17] = sub_100005A2C(&qword_100032B80, &qword_100020B28);
            sub_1000168E0();
            v0[11] = 1107296256;
            v0[12] = sub_1000168DC;
            v0[13] = &unk_10002D8C0;
            v0[14] = v96;
            [v51 loadPossibleStatesForEnumeration:v50 searchTerm:0 completionHandler:?];
            sub_1000169F4();

            return _swift_continuation_await(v10);
          }
        }

        else
        {
          v58 = v53;
        }
      }

      else
      {
        v56 = v43;
        v57 = v49;
      }

      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();
      if (v59 && (v60 = sub_100016170(v59)) != 0)
      {
        if (v60 >> 62)
        {
          v61 = sub_10001DFF4();
        }

        else
        {
          v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v61 <= 10)
        {
          v64 = objc_allocWithZone(INObjectCollection);
          sub_100005A2C(&qword_100032B10, &qword_1000201E8);
          isa = sub_10001DDC4().super.isa;

          v66 = [v64 initWithItems:isa];

          if (v66)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v98 = v28;
            v72 = v28;
            sub_100015658(v45, v47);
            v73 = v28[2];
            sub_100016990();
            if (v12)
            {
              goto LABEL_61;
            }

            v75 = v10;
            v76 = v74;
            sub_100005A2C(&qword_100032B18, &qword_100020B20);
            v10 = sub_10001DFB4(isUniquelyReferenced_nonNull_native, v72);
            if (v10)
            {
              v77 = *v98;
              v10 = sub_100015658(v45, v47);
              if ((v76 & 1) != (v78 & 1))
              {
                goto LABEL_8;
              }

              v75 = v10;
            }

            v79 = v76;
            v28 = *v98;
            if (v79)
            {
              v80 = v0[20];
              v81 = v28[7];
              v82 = *(v81 + 8 * v75);
              *(v81 + 8 * v75) = v66;
            }

            else
            {
              v28[(v75 >> 6) + 8] |= 1 << v75;
              v88 = (v28[6] + 16 * v75);
              *v88 = v45;
              v88[1] = v47;
              *(v28[7] + 8 * v75) = v66;
              v89 = v28[2];
              v12 = __OFADD__(v89, 1);
              v90 = v89 + 1;
              if (v12)
              {
                goto LABEL_63;
              }

              v80 = v0[20];
              v28[2] = v90;
              v82 = v43;
            }

            v27 = v28;
          }

          else
          {
            v67 = sub_100015658(v45, v47);
            v69 = v68;

            if (v69)
            {
              v83 = v0[25];
              v84 = v0[20];
              v85 = swift_isUniquelyReferenced_nonNull_native();
              v99 = v28;
              v86 = v28[3];
              sub_100005A2C(&qword_100032B18, &qword_100020B20);
              sub_10001DFB4(v85, v86);
              v28 = v99;
              v87 = *(v99[6] + 16 * v67 + 8);

              sub_10001DFD4();
              v27 = v99;
            }

            else
            {
              v70 = v0[20];
            }
          }
        }

        else
        {
          v62 = v0[20];
        }
      }

      else
      {
        v63 = v0[20];
      }
    }
  }

  v2 = [v1 allItems];
  sub_100005A2C(&qword_100032B10, &qword_1000201E8);
  v3 = sub_10001DDD4();

  if (v3 >> 62)
  {
    v4 = sub_10001DFF4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v0[32];
  if (v4 > 9)
  {
    v25 = v0[30];
    v26 = v0[20];

    goto LABEL_13;
  }

  v6 = v0[31];
  v7 = v0[27];
  v8 = v1;
  swift_isUniquelyReferenced_nonNull_native();
  v0[19] = v7;
  sub_100015658(v6, v5);
  v9 = *(v7 + 16);
  sub_100016990();
  if (v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v13 = v10;
    v14 = v11;
    sub_100005A2C(&qword_100032B18, &qword_100020B20);
    v15 = sub_100016A5C();
    if (sub_10001DFB4(v15, v16))
    {
      v17 = v0[19];
      v18 = sub_100015658(v0[31], v0[32]);
      if ((v14 & 1) != (v19 & 1))
      {
LABEL_8:
        sub_1000169F4();

        return sub_10001E034();
      }

      v13 = v18;
    }

    v28 = v0[19];
    v10 = v0[32];
    if (v14)
    {
      v29 = v0[30];
      v30 = v0[20];
      v31 = v28[7];
      v32 = *(v31 + 8 * v13);
      *(v31 + 8 * v13) = v8;

      v33 = v0[30];
LABEL_19:

      v27 = v28;
      goto LABEL_20;
    }

    v34 = v0[31];
    v28[(v13 >> 6) + 8] |= 1 << v13;
    v35 = (v28[6] + 16 * v13);
    *v35 = v34;
    v35[1] = v10;
    *(v28[7] + 8 * v13) = v8;
    v36 = v28[2];
    v12 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (!v12)
    {
      v38 = v0[20];
      v28[2] = v37;

      v33 = v0[30];
      v32 = v33;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return _swift_continuation_await(v10);
}

uint64_t sub_10000ED84()
{
  v69 = v0 + 10;
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[29];
  for (i = v0[27]; ; i = v4)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = sub_1000169AC();
          if (v7)
          {
            v60 = v0[24];
            v61 = v0[21];

            sub_100016940();
            sub_1000169F4();

            __asm { BRAA            X2, X16 }
          }

          v0[28] = v6;
          v0[29] = v4;
          v0[27] = i;
          v8 = v0[24];
          v9 = (v8 & 0xC000000000000001) != 0 ? sub_10001DF44() : *(v8 + 8 * v6 + 32);
          v10 = v9;
          v0[30] = v9;
          v11 = [v9 key];
          v12 = sub_10001DD14();
          v14 = v13;

          v0[31] = v12;
          v0[32] = v14;
          objc_opt_self();
          v15 = sub_100016BA8();
          v16 = v0[20];
          if (v15)
          {
            v17 = v15;
            v0[18] = &OBJC_PROTOCOL___WFDynamicEnumerationDataSource;
            v18 = swift_dynamicCastObjCProtocolConditional();
            v19 = v10;
            v20 = v0[20];
            if (v18)
            {
              v21 = v19;
              v22 = v20;
              if ([v17 wf_supportsSearch] & 1) == 0 && (objc_msgSend(v18, "respondsToSelector:", "loadPossibleStatesForEnumeration:searchTerm:completionHandler:"))
              {
                sub_100016AB4();
                v0[2] = v64;
                v65 = sub_1000168FC();
                v0[17] = sub_100005A2C(&qword_100032B80, &qword_100020B28);
                sub_1000168E0();
                v0[11] = 1107296256;
                v0[12] = sub_1000168DC;
                v0[13] = &unk_10002D8C0;
                v0[14] = v65;
                [v18 loadPossibleStatesForEnumeration:v17 searchTerm:0 completionHandler:?];
                sub_1000169F4();

                return _swift_continuation_await(v39);
              }
            }

            else
            {
              v25 = v20;
            }
          }

          else
          {
            v23 = v10;
            v24 = v16;
          }

          objc_opt_self();
          v26 = sub_100016BA8();
          if (v26)
          {
            v27 = sub_100016170(v26);
            if (v27)
            {
              break;
            }
          }

          v30 = v0[20];
        }

        v28 = v27 >> 62 ? sub_10001DFF4() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28 <= 10)
        {
          break;
        }

        v29 = v0[20];
      }

      v31 = objc_allocWithZone(INObjectCollection);
      sub_100005A2C(&qword_100032B10, &qword_1000201E8);
      sub_100016A78();
      isa = sub_10001DDC4().super.isa;

      v33 = [v31 initWithItems:isa];

      if (v33)
      {
        break;
      }

      v34 = sub_100015658(v12, v14);
      v36 = v35;

      if (v36)
      {
        v52 = v0[25];
        v53 = v0[20];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = i[3];
        sub_100005A2C(&qword_100032B18, &qword_100020B20);
        sub_10001DFB4(isUniquelyReferenced_nonNull_native, v55);
        v4 = i;
        v56 = *(i[6] + 16 * v34 + 8);

        sub_10001DFD4();
      }

      else
      {
        v37 = v0[20];
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    *v69 = i;
    sub_100015658(v12, v14);
    v38 = i[2];
    sub_100016990();
    if (v41)
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return _swift_continuation_await(v39);
    }

    v42 = v39;
    v43 = v40;
    sub_100005A2C(&qword_100032B18, &qword_100020B20);
    v44 = sub_100016A5C();
    if (sub_10001DFB4(v44, v45))
    {
      break;
    }

LABEL_27:
    v4 = *v69;
    if (v43)
    {
      v49 = v0[20];
      v50 = v4[7];
      v51 = *(v50 + 8 * v42);
      *(v50 + 8 * v42) = v33;
    }

    else
    {
      sub_1000169CC();
      *v57 = v12;
      v57[1] = v14;
      *(v4[7] + 8 * v42) = v33;
      v58 = v4[2];
      v41 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v41)
      {
        goto LABEL_44;
      }

      v49 = v0[20];
      v4[2] = v59;
      v51 = v10;
    }
  }

  v46 = *v69;
  v47 = sub_100015658(v12, v14);
  if ((v43 & 1) == (v48 & 1))
  {
    v42 = v47;
    goto LABEL_27;
  }

  sub_1000169F4();

  return sub_10001E034();
}

uint64_t sub_10000F2B4(void *a1)
{
  v2 = [a1 mode];
  v3 = sub_100014AD0();
  v4 = (v2 != 1) & v3;
  if (v2 == 1 && (v3 & 1) != 0)
  {
    v5 = [v1 key];
    v6 = sub_10001DD14();
    v8 = v7;

    if (v6 == 0x6F6974617265706FLL && v8 == 0xE90000000000006ELL)
    {

      v4 = 0;
    }

    else
    {
      v10 = sub_10001E024();

      v4 = v10 ^ 1;
    }
  }

  return v4 & 1;
}

uint64_t sub_10000F398()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001D704();

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_10001D714();
  result = sub_10000F8B0();
  if (v3 != (result & 1))
  {
    return sub_100011FDC();
  }

  return result;
}

uint64_t sub_10000F46C()
{
  v1 = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action;
  [*&v0[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action] removeEventObserver:v0];
  v2 = [*&v0[v1] parameters];
  sub_100006710(0, &qword_100032B00, WFParameter_ptr);
  v3 = sub_10001DDD4();

  result = sub_10000CB34(v3);
  if (!result)
  {
LABEL_8:

    v9.receiver = v0;
    v9.super_class = type metadata accessor for FocusConfigurationActionViewModel();
    return objc_msgSendSuper2(&v9, "dealloc");
  }

  v5 = result;
  if (result >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10001DF44();
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      [v7 removeEventObserver:v0];
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for FocusConfigurationActionViewModel()
{
  result = qword_100032AD0;
  if (!qword_100032AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F6EC()
{
  sub_10001DE34();
  v1 = v0;
  v2 = sub_10001DE24();
  sub_100016A9C();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = &protocol witness table for MainActor;
  v3[4] = v1;
  v4 = v1;
  v5 = sub_10001DE24();
  sub_100016A9C();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;
  sub_10001DC34();
  return v8;
}

id sub_10000F7D8@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  result = [*(a1 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request) showsEnablementButton];
  if (result)
  {
    v5 = *(a1 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled);
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_10000F878(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled) != (result & 1))
  {
    return sub_100011FDC();
  }

  return result;
}

uint64_t sub_10000F898(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled);
  *(v1 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled) = a1;
  return sub_10000F878(v2);
}

uint64_t sub_10000F8B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001D704();

  return v1;
}

uint64_t sub_10000F924()
{
  v1 = *(v0 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurableParametersChange);
  v3 = *(v0 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_configurableParameter);

  sub_10001D6C4();
}

uint64_t sub_10000F988()
{
  sub_100016984();
  v1[47] = v0;
  v2 = sub_10001D694();
  v1[48] = v2;
  v3 = *(v2 - 8);
  v1[49] = v3;
  v4 = *(v3 + 64) + 15;
  v1[50] = swift_task_alloc();
  sub_10001DE34();
  v1[51] = sub_100016B90();
  sub_100016A84();
  v5 = sub_10001DE14();
  v1[52] = v5;
  v1[53] = v6;

  return _swift_task_switch(sub_10000FAA0, v5, v6);
}

uint64_t sub_10000FAA0()
{
  sub_100016984();
  v0[54] = *(v0[47] + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action);
  sub_100006710(0, &qword_100032C20, OS_dispatch_queue_ptr);
  v1 = sub_10001DEB4();
  v0[55] = v1;
  v2 = async function pointer to WFAction.processParametersWithoutAskingForValues(withInput:workQueue:)[1];
  v3 = swift_task_alloc();
  v0[56] = v3;
  *v3 = v0;
  v3[1] = sub_10000FBA8;

  return WFAction.processParametersWithoutAskingForValues(withInput:workQueue:)(0, v1);
}

uint64_t sub_10000FBA8()
{
  sub_100016984();
  v3 = v2;
  v4 = *v1;
  sub_100016930();
  *v5 = v4;
  v7 = *(v6 + 448);
  *v5 = *v1;
  *(v4 + 456) = v8;
  *(v4 + 464) = v0;

  if (v0)
  {
    v9 = *(v4 + 416);
    v10 = *(v4 + 424);
    v11 = sub_100011224;
  }

  else
  {

    v9 = *(v4 + 416);
    v10 = *(v4 + 424);
    v11 = sub_10000FCF4;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10000FCF4()
{
  v1 = *(v0[47] + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request);
  v2 = [v1 mode];
  if (v2 == 1)
  {
    v9 = [v1 contextualAction];
    if (!v9)
    {
      __break(1u);
      return _swift_continuation_await(v9);
    }

    v10 = v9;
    v11 = v0[57];
    v12 = v0[51];

    objc_opt_self();
    sub_100016A78();
    sub_1000169C0();
    v13 = [swift_dynamicCastObjCClassUnconditional() setting];
    v14 = sub_10000D02C(0x656C797473, 0xE500000000000000, v11);
    if (v14)
    {
      v0[42] = v14;
      sub_100005A2C(&qword_100032C50, &qword_100020BD0);
      if (swift_dynamicCast())
      {
        v15 = v0[57];

        if (v0[38] != 1802658148 || v0[39] != 0xE400000000000000)
        {
          v17 = v0[39];
          v18 = sub_10001E024();

          v19 = ~v18 & 1;
LABEL_25:
          v32 = v0[47];
          v33 = [objc_allocWithZone(WFToggleSettingContextualAction) initWithSetting:v13 operation:v19];
          [objc_allocWithZone(WFFocusConfigurationUIState) initWithEnabled:*(v32 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled) uiValidity:sub_10000F8B0() & 1 contextualAction:v33];

          goto LABEL_26;
        }

        v31 = v0[39];

LABEL_24:
        v19 = 0;
        goto LABEL_25;
      }
    }

    v28 = sub_10000D02C(0x65756C61566E4FLL, 0xE700000000000000, v0[57]);
    if (v28 && (v0[41] = v28, sub_100005A2C(&qword_100032C50, &qword_100020BD0), (swift_dynamicCast() & 1) != 0))
    {
      v29 = v0[57];

      if (*(v0 + 529))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v30 = sub_10000D02C(0x6574617473, 0xE500000000000000, v0[57]);

      if (v30)
      {
        v0[40] = v30;
        sub_100005A2C(&qword_100032C50, &qword_100020BD0);
        if (swift_dynamicCast())
        {
          if (v0[66])
          {
            goto LABEL_24;
          }
        }
      }
    }

    v19 = 1;
    goto LABEL_25;
  }

  if (!v2)
  {
    v3 = v0[57];
    v4 = v0[54];
    objc_opt_self();
    sub_1000169C0();
    v5 = swift_dynamicCastObjCClassUnconditional();
    v0[59] = v5;
    v6 = v4;
    sub_100005A2C(&qword_100032C50, &qword_100020BD0);
    isa = sub_10001DCD4().super.isa;
    v0[60] = isa;
    v0[2] = v0;
    v0[7] = v0 + 43;
    v0[3] = sub_100010204;
    v8 = swift_continuation_init();
    v0[25] = sub_100005A2C(&qword_100032C58, &qword_100020BD8);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1000168DC;
    v0[21] = &unk_10002D938;
    v0[22] = v8;
    [v5 getLinkActionWithProcessedParameters:isa forFocusConfiguration:1 completionHandler:v0 + 18];
    v9 = v0 + 2;

    return _swift_continuation_await(v9);
  }

  v20 = v0[57];
  v21 = v0[51];
  v22 = v0[47];

  sub_100006710(0, &unk_100032C40, WFFocusConfigurationUIState_ptr);
  v23 = *(v22 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled);
  sub_10000F8B0();
  sub_100016A90();
  sub_100011984(v24, v25, v26, v27);
LABEL_26:
  v34 = v0[50];

  sub_100016978();
  v35 = sub_100016A10();

  return v36(v35);
}

uint64_t sub_100010204()
{
  sub_100016984();
  v1 = *v0;
  sub_100016930();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  v1[61] = v4;
  if (v4)
  {
    v5 = v1[54];

    v6 = v1[52];
    v7 = v1[53];
    v8 = sub_1000112C4;
  }

  else
  {
    v6 = v1[52];
    v7 = v1[53];
    v8 = sub_10001034C;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10001034C()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  *(v0 + 496) = v4;
  v5 = v4;

  v6 = [v2 metadata];
  *(v0 + 352) = 0;
  LODWORD(v3) = [v6 wf_validateParametersForAction:v5 error:v0 + 352];
  v90 = v5;

  v7 = *(v0 + 352);
  if (!v3)
  {
    v24 = *(v0 + 432);
    v25 = v7;

    sub_10001D554();
    goto LABEL_19;
  }

  v8 = *(v0 + 376);
  v9 = v7;
  if ((sub_1000119F8() & 1) == 0)
  {

LABEL_21:
    v27 = *(v0 + 432);
    v28 = [*(v0 + 472) connection];
    *(v0 + 504) = v28;

    if (v28)
    {
      sub_100005A2C(&qword_1000323C0, &qword_100020790);
      sub_100016A9C();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1000200A0;
      *(v29 + 32) = v90;
      sub_100006710(0, &qword_100032C68, LNAction_ptr);
      v30 = v90;
      isa = sub_10001DDC4().super.isa;
      *(v0 + 512) = isa;

      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 360;
      *(v0 + 88) = sub_100010D84;
      v32 = swift_continuation_init();
      *(v0 + 264) = sub_100005A2C(&qword_100032C70, &qword_100020BE8);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_100011900;
      *(v0 + 232) = &unk_10002D960;
      *(v0 + 240) = v32;
      [v28 fetchDisplayRepresentationForActions:isa completionHandler:v0 + 208];
      v26 = v0 + 80;

      return _swift_continuation_await(v26);
    }

    sub_100016238();
    sub_1000169C0();
    swift_allocError();
    sub_100016B00(v47, 2);
LABEL_19:
    v26 = swift_willThrow();
    goto LABEL_59;
  }

  v10 = *(v0 + 432);
  v11 = [*(v0 + 472) metadata];

  v12 = [v11 parameters];
  sub_100006710(0, &qword_100032BB8, LNActionParameterMetadata_ptr);
  v13 = sub_10001DDD4();

  v14 = sub_10000CB34(v13);
  for (i = 0; v14 != i; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = sub_10001DF44();
    }

    else
    {
      if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v16 = *(v13 + 8 * i + 32);
    }

    v17 = v16;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }

    sub_10001628C(v16, &selRef_name);
    if (!v18)
    {
      goto LABEL_15;
    }

    v19 = *(v0 + 472);
    v20 = sub_10001DD04();

    v21 = [v19 parameterForKey:v20];

    if (!v21)
    {
      goto LABEL_15;
    }

    if ([v21 isHidden])
    {

      continue;
    }

    objc_opt_self();
    sub_100016AF4();
    v22 = swift_dynamicCastObjCClass();

    if (v22)
    {
      sub_10001DF64();
      v23 = _swiftEmptyArrayStorage[2];
      sub_10001DF84();
      sub_10001DF94();
      sub_10001DF74();
    }

    else
    {
LABEL_15:
    }
  }

  v33 = [v90 parameters];
  sub_100006710(0, &qword_100032BC0, LNProperty_ptr);
  v34 = sub_10001DDD4();

  v35 = sub_10000CB34(v34);
  if (v35)
  {
    v36 = v35;
    sub_1000153D8(0, v35 & ~(v35 >> 63), 0);
    if (v36 < 0)
    {
      goto LABEL_71;
    }

    v37 = 0;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v38 = sub_10001DF44();
      }

      else
      {
        v38 = *(v34 + 8 * v37 + 32);
      }

      v39 = v38;
      v40 = [v39 identifier];
      v41 = sub_10001DD14();
      v43 = v42;

      v45 = _swiftEmptyArrayStorage[2];
      v44 = _swiftEmptyArrayStorage[3];
      if (v45 >= v44 >> 1)
      {
        sub_1000153D8((v44 > 1), v45 + 1, 1);
      }

      ++v37;
      _swiftEmptyArrayStorage[2] = v45 + 1;
      v46 = &_swiftEmptyArrayStorage[2 * v45];
      v46[4] = v41;
      v46[5] = v43;
    }

    while (v36 != v37);
  }

  v48 = [v90 parameters];
  v49 = sub_10001DDD4();

  sub_100011820(_swiftEmptyArrayStorage, v49);
  v50 = sub_100016A84();
  v51 = sub_10000CB34(v50);
  for (j = 0; ; ++j)
  {
    if (v51 == j)
    {

      goto LABEL_21;
    }

    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v53 = sub_10001DF44();
    }

    else
    {
      if (j >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_70;
      }

      v53 = _swiftEmptyArrayStorage[j + 4];
    }

    v54 = v53;
    if (__OFADD__(j, 1))
    {
      goto LABEL_69;
    }

    v55 = sub_10001628C(v53, &selRef_name);
    if (!v56)
    {
      goto LABEL_57;
    }

    if (!_swiftEmptyArrayStorage[2] || (v57 = sub_100015658(v55, v56), (v58 & 1) == 0))
    {

      goto LABEL_57;
    }

    v59 = *(_swiftEmptyArrayStorage[7] + 8 * v57);

    v60 = [v59 value];
    if (!v60)
    {
      break;
    }

    v61 = v60;
    v62 = [v54 valueType];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v63 = [v61 value];
      sub_10001DF04();
      swift_unknownObjectRelease();
      sub_100005A2C(&qword_100032C78, &qword_100020BF0);
      if ((swift_dynamicCast() & 1) == 0 || (v64 = *(*(v0 + 368) + 16), , !v64))
      {
        sub_100016238();
        sub_1000169C0();
        swift_allocError();
        sub_100016B00(v65, 1);
        swift_willThrow();

        goto LABEL_58;
      }

      v62 = v59;
    }

    else
    {
    }
  }

LABEL_57:
  sub_100016238();
  sub_1000169C0();
  swift_allocError();
  sub_100016B00(v66, 1);
  swift_willThrow();

LABEL_58:

LABEL_59:
  if (!WFLogCategoryFocusConfiguration)
  {
    __break(1u);
    return _swift_continuation_await(v26);
  }

  v67 = *(v0 + 456);
  v69 = *(v0 + 400);
  v68 = *(v0 + 408);

  sub_10001D664();
  swift_errorRetain();
  v70 = sub_10001D684();
  v71 = sub_10001DE74();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = sub_100016B78();
    v73 = sub_100016B60();
    *v72 = 138412290;
    swift_errorRetain();
    v74 = _swift_stdlib_bridgeErrorToNSError();
    *(v72 + 4) = v74;
    *v73 = v74;
    _os_log_impl(&_mh_execute_header, v70, v71, "Focus Filter configuration fails the validation test: %@", v72, 0xCu);
    sub_1000165B8(v73, &qword_100032C60, &qword_100020BE0);
    sub_100016A38();
    sub_100016A38();
  }

  v75 = *(v0 + 488);
  v76 = *(v0 + 432);
  v78 = *(v0 + 392);
  v77 = *(v0 + 400);
  v79 = *(v0 + 376);
  v80 = *(v0 + 384);

  (*(v78 + 8))(v77, v80);
  sub_100006710(0, &unk_100032C40, WFFocusConfigurationUIState_ptr);
  v81 = *(v79 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled);
  sub_10000F8B0();
  sub_100016A90();
  sub_100011984(v82, v83, v84, v85);

  if (!v75)
  {
  }

  v86 = *(v0 + 400);

  sub_100016978();
  v87 = sub_100016A10();

  return v88(v87);
}

uint64_t sub_100010D84()
{
  sub_10001696C();
  v1 = *v0;
  sub_100016960();
  *v3 = v2;
  *v3 = *v0;
  v5 = v4[14];
  *(v2 + 520) = v5;
  v6 = v4[53];
  v7 = v4[52];
  if (v5)
  {
    v8 = sub_1000114D8;
  }

  else
  {
    v8 = sub_100010ED8;
  }

  return _swift_task_switch(v8, v7, v6);
}

void sub_100010ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100016B0C();
  v15 = *(v14 + 360);
  if (sub_10000CB34(v15))
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = sub_10001DF44();
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v16 = *(v15 + 32);
    }

    v17 = v16;
    v18 = *(v14 + 512);

    v19 = [v17 displayRepresentation];

    if (v19)
    {
      v20 = *(v14 + 496);
      v21 = *(v14 + 456);
      v22 = *(v14 + 432);
      v23 = *(v14 + 408);
      v24 = *(v14 + 376);

      sub_100006710(0, &unk_100032C40, WFFocusConfigurationUIState_ptr);
      v25 = *(v24 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled);
      v26 = v19;
      LOBYTE(v24) = sub_10000F8B0();
      v27 = v20;
      sub_100011984(v25, v24 & 1, v20, v19);

LABEL_12:
      goto LABEL_13;
    }
  }

  else
  {
    v28 = *(v14 + 512);
  }

  v29 = *(v14 + 504);
  sub_100016238();
  sub_1000169C0();
  swift_allocError();
  sub_100016B00(v30, 2);
  swift_willThrow();

  if (!WFLogCategoryFocusConfiguration)
  {
    __break(1u);
    return;
  }

  v27 = *(v14 + 496);
  v31 = *(v14 + 456);
  v33 = *(v14 + 400);
  v32 = *(v14 + 408);

  sub_10001D664();
  swift_errorRetain();
  v34 = sub_10001D684();
  v35 = sub_10001DE74();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = sub_100016B78();
    v37 = sub_100016B60();
    *v36 = 138412290;
    swift_errorRetain();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v38;
    *v37 = v38;
    _os_log_impl(&_mh_execute_header, v34, v35, "Focus Filter configuration fails the validation test: %@", v36, 0xCu);
    sub_1000165B8(v37, &qword_100032C60, &qword_100020BE0);
    sub_100016A38();
    sub_100016A38();
  }

  v39 = *(v14 + 488);
  v40 = *(v14 + 432);
  v42 = *(v14 + 392);
  v41 = *(v14 + 400);
  v43 = *(v14 + 376);
  v44 = *(v14 + 384);

  (*(v42 + 8))(v41, v44);
  sub_100006710(0, &unk_100032C40, WFFocusConfigurationUIState_ptr);
  v45 = *(v43 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled);
  sub_10000F8B0();
  sub_100016A90();
  sub_100011984(v46, v47, v48, v49);

  if (!v39)
  {
    goto LABEL_12;
  }

LABEL_13:
  v50 = *(v14 + 400);

  sub_100016978();
  sub_100016A10();
  sub_100016A1C();

  v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100011224()
{
  sub_100016984();
  v1 = v0[55];
  v3 = v0[50];
  v2 = v0[51];

  sub_1000169A0();
  v5 = v0[58];

  return v4();
}

uint64_t sub_1000112C4()
{
  v1 = v0[60];
  v2 = v0[61];
  swift_willThrow();

  if (!WFLogCategoryFocusConfiguration)
  {
    __break(1u);
  }

  v3 = v0[61];
  v4 = v0[57];
  v6 = v0[50];
  v5 = v0[51];

  sub_10001D664();
  swift_errorRetain();
  v7 = sub_10001D684();
  LOBYTE(v4) = sub_10001DE74();

  if (os_log_type_enabled(v7, v4))
  {
    v8 = sub_100016B78();
    v9 = sub_100016B60();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    sub_100016B40(&_mh_execute_header, v11, v12, "Focus Filter configuration fails the validation test: %@");
    sub_1000165B8(v9, &qword_100032C60, &qword_100020BE0);
    sub_100016A38();
    sub_100016A38();
  }

  v13 = v0[61];
  v14 = v0[54];
  v16 = v0[49];
  v15 = v0[50];
  v17 = v0[47];
  v18 = v0[48];

  v19 = *(v16 + 8);
  v20 = sub_100016AD4();
  v21(v20);
  sub_100006710(0, &unk_100032C40, WFFocusConfigurationUIState_ptr);
  v22 = *(v17 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled);
  sub_10000F8B0();
  sub_100016A90();
  sub_100011984(v23, v24, v25, v26);

  if (!v13)
  {
  }

  v28 = v0[50];

  sub_100016978();
  v29 = sub_100016A10();

  return v30(v29);
}

uint64_t sub_1000114D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100016B0C();
  v15 = v14[65];
  v16 = v14[63];
  v17 = v14[64];
  swift_willThrow();

  if (!WFLogCategoryFocusConfiguration)
  {
    __break(1u);
  }

  v18 = v14[65];
  v19 = v14[62];
  v20 = v14[57];
  v22 = v14[50];
  v21 = v14[51];

  sub_10001D664();
  swift_errorRetain();
  v23 = sub_10001D684();
  LOBYTE(v20) = sub_10001DE74();

  if (os_log_type_enabled(v23, v20))
  {
    v24 = sub_100016B78();
    v25 = sub_100016B60();
    *v24 = 138412290;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v26;
    *v25 = v26;
    sub_100016B40(&_mh_execute_header, v27, v28, "Focus Filter configuration fails the validation test: %@");
    sub_1000165B8(v25, &qword_100032C60, &qword_100020BE0);
    sub_100016A38();
    sub_100016A38();
  }

  v29 = v14[61];
  v30 = v14[54];
  v32 = v14[49];
  v31 = v14[50];
  v33 = v14[47];
  v34 = v14[48];

  v35 = *(v32 + 8);
  v36 = sub_100016AD4();
  v37(v36);
  sub_100006710(0, &unk_100032C40, WFFocusConfigurationUIState_ptr);
  v38 = *(v33 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled);
  sub_10000F8B0();
  sub_100016A90();
  sub_100011984(v39, v40, v41, v42);

  if (!v29)
  {
  }

  v43 = v14[50];

  sub_100016978();
  sub_100016A10();
  sub_100016A1C();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000116E4(uint64_t a1, uint64_t a2)
{
  sub_100005A2C(&qword_100032B88, &qword_100020B30);
  sub_1000169C0();
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

void *sub_10001176C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005A2C(&qword_100032BF8, &qword_100020B80);
    v1 = sub_10001E014();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_100015A80(v2, 1, &v4);

  return v4;
}

void *sub_100011820(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = sub_10000CB34(a2);
  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    sub_100005A2C(&qword_100032C80, &qword_100020BF8);
    v6 = sub_10001E014();
  }

  else
  {
    v6 = &_swiftEmptyDictionarySingleton;
  }

  v8 = v6;

  sub_100015D70(a1, a2, 1, &v8);

  return v8;
}

uint64_t sub_100011900(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000161F4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_1000116E4(v4, a3);
  }

  sub_100006710(0, &qword_100032C90, LNDisplayRepresentationFetchResult_ptr);
  v6 = sub_10001DDD4();
  return sub_10001174C(v4, v6);
}

id sub_100011984(char a1, char a2, void *a3, void *a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnabled:a1 & 1 uiValidity:a2 & 1 action:a3 displayRepresentation:a4];

  return v6;
}

uint64_t sub_1000119F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request);
  if ([v1 mode])
  {
    return 0;
  }

  v3 = [v1 actionIdentifier];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 bundleIdentifier];
  sub_10001DD14();

  v6._countAndFlagsBits = 0x6C7070612E6D6F63;
  v6._object = 0xEA00000000002E65;
  LOBYTE(v5) = sub_10001DD94(v6);

  return v5 & 1;
}

void sub_100011AC4()
{
  v1 = v0;
  v2 = sub_10001D694();
  v3 = sub_100006C14(v2);
  v55 = v4;
  v56 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100016950();
  v57 = v8 - v7;
  v54 = *&v0[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action];
  v9 = [v54 visibleParametersWithProcessing:0];
  sub_100006710(0, &qword_100032B00, WFParameter_ptr);
  sub_100016AF4();
  v10 = sub_10001DDD4();

  v11 = sub_10000CB34(v10);
  v12 = 0;
  v13 = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request;
  while (v11 != v12)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = sub_10001DF44();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    if (sub_10000F2B4(*&v1[v13]))
    {
      sub_10001DF64();
      v16 = _swiftEmptyArrayStorage[2];
      sub_10001DF84();
      sub_10001DF94();
      sub_10001DF74();
    }

    else
    {
    }

    ++v12;
  }

  v17 = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_configurableParameter;
  v18 = *&v1[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_configurableParameter];

  v19 = sub_10000CDBC(_swiftEmptyArrayStorage, v18);

  if ((v19 & 1) == 0)
  {
    if (WFLogCategoryFocusConfiguration)
    {
      v21 = v57;
      sub_10001D664();

      v22 = v1;
      v23 = sub_10001D684();
      v24 = sub_10001DE84();

      if (os_log_type_enabled(v23, v24))
      {
        v50 = v24;
        v51 = v23;
        v53 = v17;
        v25 = swift_slowAlloc();
        swift_slowAlloc();
        v49 = v25;
        *v25 = 136315394;
        v26 = sub_10000CB34(_swiftEmptyArrayStorage);
        v52 = v22;
        if (v26)
        {
          v27 = v26;
          sub_1000153D8(0, v26 & ~(v26 >> 63), 0);
          if (v27 < 0)
          {
            goto LABEL_33;
          }

          v28 = 0;
          do
          {
            if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
            {
              v29 = sub_10001DF44();
            }

            else
            {
              v29 = _swiftEmptyArrayStorage[v28 + 4];
            }

            v30 = v29;
            v31 = [v30 key];
            v32 = sub_10001DD14();
            v34 = v33;

            v36 = _swiftEmptyArrayStorage[2];
            v35 = _swiftEmptyArrayStorage[3];
            if (v36 >= v35 >> 1)
            {
              sub_1000153D8((v35 > 1), v36 + 1, 1);
            }

            ++v28;
            _swiftEmptyArrayStorage[2] = v36 + 1;
            v37 = &_swiftEmptyArrayStorage[2 * v36];
            v37[4] = v32;
            v37[5] = v34;
          }

          while (v27 != v28);
          v21 = v57;
        }

        sub_10001DDE4();

        v38 = sub_100016AD4();
        v41 = sub_100014E68(v38, v39, v40);

        *(v49 + 1) = v41;
        *(v49 + 6) = 2080;
        v42 = [v54 identifier];
        sub_10001DD14();

        v43 = sub_100016AD4();
        v46 = sub_100014E68(v43, v44, v45);

        *(v49 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v51, v50, "Visible parameters changed to %s, in action: %s", v49, 0x16u);
        swift_arrayDestroy();
        sub_100016A38();
        sub_100016A38();

        (*(v55 + 8))(v21, v56);
        v22 = v52;
        v17 = v53;
      }

      else
      {

        (*(v55 + 8))(v57, v56);
      }

      v47 = *&v1[v17];
      *&v1[v17] = _swiftEmptyArrayStorage;

      sub_10000F924();
      v48 = *&v22[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurableParametersChange];
      sub_10001D6C4();

      sub_100016B28();
      return;
    }

    goto LABEL_34;
  }

  sub_100016B28();
}

uint64_t sub_100011FDC()
{
  v1 = sub_100005A2C(&unk_100032C28, &qword_100020D70);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  sub_100011AC4();
  type metadata accessor for FocusConfigurationActionViewModel();
  sub_100016330();
  sub_100016AF4();
  sub_10001D6B4();
  sub_10001D6E4();

  v5 = sub_10001DE54();
  sub_10000619C(v4, 1, 1, v5);
  sub_10001DE34();
  v6 = v0;
  v7 = sub_10001DE24();
  sub_100016A9C();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_100012424(0, 0, v4, &unk_100020BB8, v8);
}

uint64_t sub_100012108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_10001DE34();
  v4[4] = sub_10001DE24();
  v6 = sub_10001DE14();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1000121A0, v6, v5);
}

uint64_t sub_1000121A0()
{
  sub_10001696C();
  v0[7] = *(v0[3] + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationStateChange);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100012240;
  v2 = v0[3];

  return sub_10000F988();
}

uint64_t sub_100012240()
{
  sub_100016984();
  v3 = v2;
  sub_100016A50();
  v5 = v4;
  sub_100016930();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  sub_100016960();
  *v10 = v9;
  v5[9] = v0;

  if (v0)
  {
    v11 = v5[5];
    v12 = v5[6];
    v13 = sub_1000123C8;
  }

  else
  {
    v5[10] = v3;
    v11 = v5[5];
    v12 = v5[6];
    v13 = sub_100012354;
  }

  return _swift_task_switch(v13, v11, v12);
}

uint64_t sub_100012354()
{
  sub_10001696C();
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];

  v0[2] = v1;
  sub_10001D6C4();

  sub_1000169A0();

  return v4();
}

uint64_t sub_1000123C8()
{
  sub_10001696C();
  v1 = *(v0 + 32);

  sub_1000169A0();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_100012424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100005A2C(&unk_100032C28, &qword_100020D70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_100016520(a3, v23 - v10);
  v12 = sub_10001DE54();
  v13 = sub_100016590(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1000165B8(v11, &unk_100032C28, &qword_100020D70);
  }

  else
  {
    sub_10001DE44();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10001DE14();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10001DD34() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1000165B8(a3, &unk_100032C28, &qword_100020D70);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000165B8(a3, &unk_100032C28, &qword_100020D70);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_1000126A4(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10001D694();
  v7 = sub_100006C14(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100016950();
  v14 = v13 - v12;
  v15 = sub_10001DCB4();
  v16 = sub_100006C14(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100016950();
  v23 = (v22 - v21);
  sub_100006710(0, &qword_100032C20, OS_dispatch_queue_ptr);
  *v23 = sub_10001DEB4();
  (*(v18 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v15);
  v24 = sub_10001DCC4();
  (*(v18 + 8))(v23, v15);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!WFLogCategoryFocusConfiguration)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_10001D664();

  v25 = a1;
  v26 = sub_10001D684();
  v27 = sub_10001DE84();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_100014E68(a2, a3, &v34);
    *(v28 + 12) = 2080;
    v29 = [v25 identifier];
    v30 = sub_10001DD14();
    v32 = v31;

    v33 = sub_100014E68(v30, v32, &v34);

    *(v28 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Parameter state changed for key: %s, in action: %s", v28, 0x16u);
    swift_arrayDestroy();
    sub_100016A38();
    sub_100016A38();
  }

  (*(v9 + 8))(v14, v6);
  sub_100011FDC();
  sub_100016B28();
}

void sub_100012A0C(void *a1)
{
  v2 = v1;
  v4 = sub_10001D694();
  v5 = sub_100006C14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100016950();
  v12 = v11 - v10;
  v13 = sub_10001DCB4();
  v14 = sub_100006C14(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100016950();
  v21 = (v20 - v19);
  sub_100006710(0, &qword_100032C20, OS_dispatch_queue_ptr);
  *v21 = sub_10001DEB4();
  (*(v16 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v13);
  v22 = sub_10001DCC4();
  (*(v16 + 8))(v21, v13);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!WFLogCategoryFocusConfiguration)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_10001D664();
  v23 = a1;
  v24 = v2;
  v25 = sub_10001D684();
  v26 = sub_10001DE84();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = [v23 key];
    v38 = v4;
    v29 = sub_10001DD14();
    v31 = v30;

    v32 = sub_100014E68(v29, v31, &v39);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = [*&v24[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action] identifier];
    v34 = sub_10001DD14();
    v36 = v35;

    v37 = sub_100014E68(v34, v36, &v39);

    *(v27 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v25, v26, "Parameter attributes changed: %s, in action: %s", v27, 0x16u);
    swift_arrayDestroy();
    sub_100016A38();
    sub_100016A38();

    (*(v7 + 8))(v12, v38);
  }

  else
  {

    (*(v7 + 8))(v12, v4);
  }

  sub_100011FDC();
  sub_100016B28();
}

void sub_100012DF0()
{
  sub_100012EBC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100012EBC()
{
  if (!qword_100032AE0)
  {
    v0 = sub_10001D724();
    if (!v1)
    {
      atomic_store(v0, &qword_100032AE0);
    }
  }
}

uint64_t sub_100012F18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FocusConfigurationActionViewModel();
  result = sub_10001D6B4();
  *a1 = result;
  return result;
}

uint64_t sub_100012F58(void *a1, void *a2)
{
  v189 = a2;
  v191 = sub_10001D694();
  v182 = *(v191 - 8);
  v3 = *(v182 + 64);
  v4 = __chkstk_darwin(v191);
  v6 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v175 = &v166 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v166 - v10;
  __chkstk_darwin(v9);
  v184 = &v166 - v12;
  v13 = [objc_allocWithZone(LNMetadataProvider) initWithOptions:2];
  v14 = [a1 bundleIdentifier];
  if (!v14)
  {
    sub_10001DD14();
    v14 = sub_10001DD04();
  }

  v15 = sub_10001DD14();
  v17 = v16;
  v177 = sub_100005A2C(&qword_1000323C0, &qword_100020790);
  v18 = swift_allocObject();
  v176 = xmmword_1000200A0;
  *(v18 + 16) = xmmword_1000200A0;
  *(v18 + 32) = a1;
  sub_100006710(0, &qword_100032BA0, LNFullyQualifiedActionIdentifier_ptr);
  v181 = a1;
  isa = sub_10001DDC4().super.isa;

  v194[0] = 0;
  v20 = [v13 actionsWithFullyQualifiedIdentifiers:isa error:v194];

  v21 = v194[0];
  if (!v20)
  {
    v58 = v194[0];

    sub_10001D554();
    swift_willThrow();
    v57 = v13;
    goto LABEL_27;
  }

  v180 = v13;
  sub_100005A2C(&qword_100032BA8, &qword_100020B48);
  v22 = sub_10001DCE4();
  v23 = v21;

  v179 = v17;
  v24 = sub_10000CF94(v15, v17, v22);

  if (!v24 || (v25 = [v181 actionIdentifier], v26 = sub_10001DD14(), v28 = v27, v25, v29 = sub_10000CFE4(v26, v28, v24), , , !v29))
  {
    v57 = 0;
LABEL_23:
    v59 = v180;

    if (!WFLogCategoryFocusConfiguration)
    {
      goto LABEL_86;
    }

    sub_10001D664();
    v60 = sub_10001D684();
    v61 = sub_10001DEA4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Attempted to configure an action that is not a FocusConfiguration action, bailing out.", v62, 2u);
    }

    (*(v182 + 8))(v6, v191);
    sub_100016238();
    swift_allocError();
    *v63 = 0;
    swift_willThrow();

    goto LABEL_27;
  }

  v30 = v29;
  v31 = [v30 systemProtocols];
  sub_100006710(0, &qword_100032BB0, LNSystemProtocol_ptr);
  v32 = sub_10001DDD4();

  v33 = [objc_opt_self() focusConfigurationProtocol];
  v194[0] = v33;
  __chkstk_darwin(v33);
  *(&v166 - 2) = v194;
  v34 = v193;
  sub_10000CCC8(sub_100016310, (&v166 - 4), v32);
  v36 = v35;
  v170 = v34;

  if ((v36 & 1) == 0)
  {
    v57 = v30;

    goto LABEL_23;
  }

  v37 = objc_allocWithZone(WFLinkActionProvider);
  v167 = [v37 initWithMetadataProvider:v180];
  v38 = [v167 actionMetadataByUpdatingWithEnumAndEntityMetadata:v30 bundleIdentifier:v14];
  v168 = v30;

  p_ivar_base_size = &WFConfigurationParametersViewController__classData.ivar_base_size;
  v169 = v38;
  v40 = [v38 parameters];
  sub_100006710(0, &qword_100032BB8, LNActionParameterMetadata_ptr);
  v41 = sub_10001DDD4();

  v42 = sub_10000CB34(v41);
  v192 = v11;
  if (v42)
  {
    v43 = v42;
    v194[0] = _swiftEmptyArrayStorage;
    sub_1000153F8(0, v42 & ~(v42 >> 63), 0);
    if ((v43 & 0x8000000000000000) == 0)
    {
      v44 = 0;
      v45 = v194[0];
      v193 = v41 & 0xC000000000000001;
      v190 = v41 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v193)
        {
          v47 = sub_10001DF44();
        }

        else
        {
          if (v44 >= *(v190 + 16))
          {
            goto LABEL_78;
          }

          v47 = *(v41 + 8 * v44 + 32);
        }

        v48 = v47;
        v49 = sub_10001628C(v47, &selRef_name);
        if (!v50)
        {
          goto LABEL_83;
        }

        v51 = v49;
        v52 = v50;
        v194[0] = v45;
        v54 = v45[2];
        v53 = v45[3];
        v55 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          v188 = v54 + 1;
          sub_1000153F8((v53 > 1), v54 + 1, 1);
          v55 = v188;
          v45 = v194[0];
        }

        v45[2] = v55;
        v56 = &v45[3 * v54];
        v56[4] = v51;
        v56[5] = v52;
        v56[6] = v48;
        ++v44;
        v11 = v192;
        if (v46 == v43)
        {

          p_ivar_base_size = (&WFConfigurationParametersViewController__classData + 8);
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_30:
  v190 = sub_10001176C(v45);
  v65 = [v189 *(p_ivar_base_size + 190)];
  sub_100006710(0, &qword_100032BC0, LNProperty_ptr);
  v66 = sub_10001DDD4();

  v67 = &off_100020000;
  v68 = &WFConfigurationParametersViewController__classData.ivar_base_size;
  v189 = sub_10000CB34(v66);
  if (!v189)
  {
    v173 = &_swiftEmptyDictionarySingleton;
LABEL_65:

    v136 = v180;
    if (v173[2])
    {

      v137 = v169;
    }

    else
    {
      v137 = v169;
      if (!WFLogCategoryFocusConfiguration)
      {
        goto LABEL_87;
      }

      v138 = v175;
      sub_10001D664();
      v139 = v137;
      v140 = sub_10001D684();
      v141 = sub_10001DE94();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v144 = v67;
        v145 = v143;
        v194[0] = v143;
        *v142 = *(v144 + 328);
        v146 = [v139 *(v68 + 157)];
        v147 = sub_10001DD14();
        v149 = v148;

        v150 = v147;
        v136 = v180;
        v151 = sub_100014E68(v150, v149, v194);

        *(v142 + 4) = v151;
        _os_log_impl(&_mh_execute_header, v140, v141, "No serialized parameters for action %s, it's likely something went wrong.", v142, 0xCu);
        sub_1000066C4(v145);
      }

      (*(v182 + 8))(v138, v191);
    }

    v152 = [v181 compositeIdentifier];
    v153 = sub_10001DD14();
    v155 = v154;

    v156 = sub_10001409C(v173);

    v157 = objc_allocWithZone(WFActionRequest);
    v158 = sub_100014D70(v153, v155, v156);
    v6 = swift_allocObject();
    *(v6 + 1) = v176;
    *(v6 + 4) = v158;
    sub_100006710(0, &unk_100032BC8, WFActionRequest_ptr);
    v159 = v158;
    v160 = sub_10001DDC4().super.isa;

    v161 = v167;
    [v167 createActionsForRequests:v160];

    v162 = [v159 result];
    if (v162)
    {
      v163 = v162;
      objc_opt_self();
      v164 = swift_dynamicCastObjCClass();
      if (v164)
      {
        v6 = v164;
        [v164 forceUpdateParameterVisibility];

        return v6;
      }
    }

    sub_100016238();
    swift_allocError();
    *v165 = 0;
    swift_willThrow();

    v57 = v168;
LABEL_27:

    return v6;
  }

  v70 = 0;
  v188 = v66 & 0xC000000000000001;
  v174 = v66 & 0xFFFFFFFFFFFFFF8;
  v185 = (v182 + 8);
  v173 = &_swiftEmptyDictionarySingleton;
  v186 = WFLogCategoryFocusConfiguration;
  *&v69 = 136315138;
  v178 = v69;
  v187 = v66;
  while (1)
  {
    if (v188)
    {
      v71 = sub_10001DF44();
    }

    else
    {
      if (v70 >= *(v174 + 16))
      {
        goto LABEL_79;
      }

      v71 = *(v66 + 8 * v70 + 32);
    }

    v72 = v71;
    if (__OFADD__(v70, 1))
    {
      goto LABEL_77;
    }

    v193 = v70 + 1;
    v73 = [v71 *(v68 + 157)];
    v74 = sub_10001DD14();
    v76 = v75;

    if (!*(v190 + 16))
    {

LABEL_49:
      if (!v186)
      {
        goto LABEL_84;
      }

      sub_10001D664();
      v111 = v72;
      v112 = sub_10001D684();
      v113 = sub_10001DEA4();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v194[0] = v115;
        *v114 = v178;
        v116 = [v111 *(v68 + 157)];
        v117 = sub_10001DD14();
        v119 = v118;

        v120 = sub_100014E68(v117, v119, v194);
        v11 = v192;

        *(v114 + 4) = v120;
        v68 = (&WFConfigurationParametersViewController__classData + 8);
        _os_log_impl(&_mh_execute_header, v112, v113, "Programming error: could not find parameter with identifier %s", v114, 0xCu);
        sub_1000066C4(v115);

        v67 = &off_100020000;
      }

      else
      {
      }

      (*v185)(v11, v191);
LABEL_54:
      v66 = v187;
      v121 = v193;
      goto LABEL_55;
    }

    v77 = sub_100015658(v74, v76);
    v79 = v78;

    if ((v79 & 1) == 0)
    {
      goto LABEL_49;
    }

    v80 = *(*(v190 + 56) + 8 * v77);
    v81 = [v80 valueType];
    v82 = [v81 wf_parameterDefinitionWithParameterMetadata:v80];

    v183 = v82;
    if (!v82)
    {
      break;
    }

    v83 = v80;
    v84 = v68;
    v85 = v67;
    v86 = v183;
    v87 = [v72 value];
    v88 = [v86 parameterStateFromLinkValue:v87];
    v172 = v86;

    v67 = v85;
    v68 = v84;
    v80 = v83;

    if (!v88)
    {
      break;
    }

    v89 = [v88 serializedRepresentation];
    swift_unknownObjectRelease();
    if (!v89)
    {
      break;
    }

    v90 = [v72 *(v68 + 157)];
    v91 = sub_10001DD14();
    v93 = v92;

    v183 = v89;
    swift_unknownObjectRetain();
    v94 = v173;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v194[0] = v94;
    v171 = v91;
    v96 = v91;
    v97 = v93;
    v98 = sub_100015658(v96, v93);
    v100 = v94[2];
    v101 = (v99 & 1) == 0;
    v102 = v100 + v101;
    if (__OFADD__(v100, v101))
    {
      goto LABEL_80;
    }

    v103 = v98;
    v104 = v99;
    sub_100005A2C(&qword_100032BD8, &qword_100020B60);
    if (sub_10001DFB4(isUniquelyReferenced_nonNull_native, v102))
    {
      v105 = sub_100015658(v171, v97);
      if ((v104 & 1) != (v106 & 1))
      {
        goto LABEL_88;
      }

      v103 = v105;
    }

    v107 = v183;
    v108 = v194[0];
    v173 = v194[0];
    if (v104)
    {
      v109 = *(v194[0] + 7);
      v110 = *(v109 + 8 * v103);
      *(v109 + 8 * v103) = v183;

      swift_unknownObjectRelease();
    }

    else
    {
      *(v194[0] + (v103 >> 6) + 8) |= 1 << v103;
      v132 = (v108[6] + 16 * v103);
      *v132 = v171;
      v132[1] = v97;
      *(v108[7] + 8 * v103) = v107;
      v133 = v108[2];
      v134 = __OFADD__(v133, 1);
      v135 = v133 + 1;
      if (v134)
      {
        goto LABEL_81;
      }

      v108[2] = v135;
    }

    swift_unknownObjectRelease();
    v11 = v192;
    v121 = v193;
    v68 = (&WFConfigurationParametersViewController__classData + 8);
    v67 = &off_100020000;
    v66 = v187;
LABEL_55:
    ++v70;
    if (v121 == v189)
    {
      goto LABEL_65;
    }
  }

  if (v186)
  {
    v122 = v184;
    sub_10001D664();
    v123 = v80;
    v124 = sub_10001D684();
    v125 = sub_10001DE94();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v195 = v127;
      *v126 = v178;
      v194[0] = sub_10001628C(v123, &selRef_name);
      v194[1] = v128;
      sub_100005A2C(&qword_100032770, &unk_100020B50);
      v129 = sub_10001DD24();
      v131 = sub_100014E68(v129, v130, &v195);
      v11 = v192;

      *(v126 + 4) = v131;
      _os_log_impl(&_mh_execute_header, v124, v125, "Could not create serializedRepresentation of parameterState for parameter %s", v126, 0xCu);
      sub_1000066C4(v127);
      v68 = (&WFConfigurationParametersViewController__classData + 8);

      v67 = &off_100020000;

      (*v185)(v184, v191);
    }

    else
    {

      (*v185)(v122, v191);
    }

    goto LABEL_54;
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_10001E034();
  __break(1u);
  return result;
}

uint64_t sub_10001409C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005A2C(&qword_100032BE8, &qword_100020B70);
    v2 = sub_10001E014();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = v12[1];
    v14 = *(*(a1 + 56) + 8 * v11);
    *&v32[0] = *v12;
    *(&v32[0] + 1) = v13;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_100005A2C(&qword_100032BF0, &qword_100020B78);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100006658(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100006658(v31, v32);
    result = sub_10001DF14(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_100006658(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100014364(uint64_t a1)
{
  v1[19] = a1;
  sub_10001DE34();
  v1[20] = sub_10001DE24();
  v3 = sub_10001DE14();
  v1[21] = v3;
  v1[22] = v2;

  return _swift_task_switch(sub_1000143FC, v3, v2);
}

uint64_t sub_1000143FC()
{
  sub_100016AA8();
  v2 = [*(v1 + 152) contextualAction];
  *(v1 + 184) = v2;
  if (v2)
  {
    v3 = v2;
    sub_100016AB4();
    *(v1 + 16) = v4;
    *(v1 + 56) = v1 + 144;
    *(v1 + 24) = sub_1000145A0;
    v5 = swift_continuation_init();
    *(v1 + 136) = sub_100005A2C(&qword_100032C18, &unk_100020BA0);
    *(v1 + 80) = _NSConcreteStackBlock;
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_1000168DC;
    *(v1 + 104) = &unk_10002D8E8;
    *(v1 + 112) = v5;
    [v3 getActionRepresentationTakingInput:0 context:0 completionHandler:v1 + 80];

    return _swift_continuation_await(v0);
  }

  else
  {
    v6 = *(v1 + 160);

    sub_100016238();
    sub_1000169C0();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1000169A0();

    return v8();
  }
}

uint64_t sub_1000145A0()
{
  sub_10001696C();
  sub_100016A50();
  sub_100016960();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 192) = v4;
  v5 = v3[22];
  v6 = v3[21];
  if (v4)
  {
    v7 = sub_100014820;
  }

  else
  {
    v7 = sub_1000146C4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000146C4()
{
  sub_100016AA8();
  v1 = *(v0 + 160);

  v2 = *(v0 + 144);
  v3 = sub_10001DD04();
  v4 = [v2 parameterForKey:v3];

  if (v4)
  {
    v5 = sub_10001DD04();
    v6 = [v2 createStateForParameter:v4 fromSerializedRepresentation:v5];

    v7 = [v4 key];
    if (!v7)
    {
      sub_10001DD14();
      v7 = sub_10001DD04();
    }

    [v2 setParameterState:v6 forKey:v7];

    swift_unknownObjectRelease();
  }

  v8 = sub_100016940();

  return v9(v8);
}

uint64_t sub_100014820()
{
  sub_100016984();
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];

  swift_willThrow();

  v4 = v0[24];
  sub_1000169A0();

  return v5();
}

uint64_t *sub_100014890(uint64_t a1, void *a2, void *a3)
{
  result = sub_1000161F4((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;
    v8 = sub_100016A78();
    return sub_1000116E4(v8, v9);
  }

  else if (a2)
  {
    v10 = a2;
    v11 = sub_100016A78();
    return sub_10001174C(v11, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000148F4(void *a1)
{
  v2 = [a1 mode];
  if (v2 == 1)
  {
    v3 = [a1 contextualAction];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 actionIdentifier];
      if (!v5)
      {
        sub_10001DD14();
        v5 = sub_10001DD04();
      }

      v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSystemFilterType:v5];
LABEL_13:

      return v6;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v2)
  {
    v7 = [a1 actionIdentifier];
    if (v7)
    {
      v4 = v7;
      v8 = [v7 bundleIdentifier];
      if (!v8)
      {
        sub_10001DD14();
        v8 = sub_10001DD04();
      }

      v5 = [v4 actionIdentifier];
      if (!v5)
      {
        sub_10001DD14();
        v5 = sub_10001DD04();
      }

      v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAppBundleIdentifier:v8 intentType:v5];

      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_16:
  result = sub_10001DFE4();
  __break(1u);
  return result;
}

uint64_t sub_100014AD0()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_18;
  }

  v1 = [v0 key];
  v2 = sub_10001DD14();
  v4 = v3;

  if (v2 == sub_10001DD14() && v4 == v5)
  {
    goto LABEL_17;
  }

  v7 = sub_10001E024();

  if (v7)
  {
    goto LABEL_18;
  }

  v8 = [v0 key];
  v9 = sub_10001DD14();
  v11 = v10;

  if (v9 == sub_10001DD14() && v11 == v12)
  {
    goto LABEL_17;
  }

  v14 = sub_10001E024();

  if (v14)
  {
LABEL_18:
    v22 = 0;
    return v22 & 1;
  }

  v15 = [v0 key];
  v16 = sub_10001DD14();
  v18 = v17;

  if (v16 == sub_10001DD14() && v18 == v19)
  {
LABEL_17:

    goto LABEL_18;
  }

  v21 = sub_10001E024();

  v22 = v21 ^ 1;
  return v22 & 1;
}

uint64_t sub_100014CB0@<X0>(BOOL *a1@<X8>)
{
  sub_100005A2C(&qword_100032CA8, &unk_100020D20);
  result = sub_10001DC14();
  *a1 = (v3 & 1) == 0;
  return result;
}

uint64_t sub_100014D10(_BYTE *a1)
{
  v2 = (*a1 & 1) == 0;
  sub_100005A2C(&qword_100032CA8, &unk_100020D20);
  return sub_10001DC24();
}

id sub_100014D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10001DD04();

  if (a3)
  {
    v6.super.isa = sub_10001DCD4().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithActionIdentifier:v5 serializedParameters:v6.super.isa];

  return v7;
}

unint64_t sub_100014E10(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_100014E34(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[48 * a2] <= __dst)
  {
    return memmove(__dst, __src, 48 * a2);
  }

  return __src;
}

uint64_t sub_100014E68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014F2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100006668(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000066C4(v11);
  return v7;
}

unint64_t sub_100014F2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001502C(a5, a6);
    *a1 = v9;
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
    result = sub_10001DF54();
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

void *sub_10001502C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100015078(a1, a2);
  sub_100015190(&off_10002D208);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_100015078(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10001DD84())
  {
    result = sub_100015274(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10001DF24();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_10001DF54();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100015190(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1000152E4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100015274(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100005A2C(&qword_100032BE0, &qword_100020B68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000152E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005A2C(&qword_100032BE0, &qword_100020B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

char *sub_1000153D8(char *a1, int64_t a2, char a3)
{
  result = sub_100015418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000153F8(void *a1, int64_t a2, char a3)
{
  result = sub_100015520(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015418(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005A2C(&qword_100032C38, &unk_100020BC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100015520(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005A2C(&qword_100032C08, &qword_100020B90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005A2C(&qword_100032C10, &qword_100020B98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100015658(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10001E084();
  sub_10001DD54();
  v6 = sub_10001E0A4();

  return sub_1000156D0(a1, a2, v6);
}

unint64_t sub_1000156D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10001E024() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100015784(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100005A2C(a3, a4);
  v41 = a2;
  result = sub_10001E004();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_33:

LABEL_34:
    *v5 = v10;
    return result;
  }

  v39 = v5;
  v40 = v7;
  v11 = 0;
  v12 = (v7 + 64);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = result + 64;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      sub_100015A1C(0, (v38 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = v18 | (v11 << 6);
    v22 = (*(v7 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v7 + 56) + 8 * v21);
    if ((v41 & 1) == 0)
    {
      v26 = v22[1];

      v27 = v25;
    }

    v28 = *(v10 + 40);
    sub_10001E084();
    sub_10001DD54();
    result = sub_10001E0A4();
    v29 = -1 << *(v10 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v10 + 48) + 16 * v32);
    *v37 = v23;
    v37[1] = v24;
    *(*(v10 + 56) + 8 * v32) = v25;
    ++*(v10 + 16);
    v7 = v40;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v17 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100015A1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100020A50;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100015A80(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_10001E034();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_100015658(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100005A2C(&qword_100032C00, &qword_100020B88);
      sub_10001DFC4();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    *(v20[7] + 8 * v12) = v10;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v20[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_100015784(v15, a2 & 1, &qword_100032BF8, &qword_100020B80);
  v17 = *a3;
  v18 = sub_100015658(v7, v6);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100005A2C(&qword_100032B88, &qword_100020B30);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  sub_10001DF34(30);
  v29._object = 0x80000001000272F0;
  v29._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10001DD74(v29);
  sub_10001DFA4();
  v30._countAndFlagsBits = 39;
  v30._object = 0xE100000000000000;
  sub_10001DD74(v30);
  result = sub_10001DFE4();
  __break(1u);
  return result;
}

uint64_t sub_100015D70(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v34 = a2 & 0xC000000000000001;

  v9 = 0;
  v36 = a2;
  v37 = a1;
  v10 = (a1 + 40);
  v35 = a2 >> 62;
  for (i = v8; ; v8 = i)
  {
    v11 = *(v37 + 16);
    if (v9 == v11)
    {
LABEL_24:
      swift_bridgeObjectRelease_n();
      return swift_bridgeObjectRelease_n();
    }

    if (v9 >= v11)
    {
      break;
    }

    v13 = *(v10 - 1);
    v12 = *v10;
    if (v35)
    {
      v14 = sub_10001DFF4();
    }

    else
    {
      v14 = *(v8 + 16);
    }

    if (v9 == v14)
    {
      goto LABEL_24;
    }

    if (v34)
    {

      v16 = sub_10001DF44();
    }

    else
    {
      if (v9 >= *(v8 + 16))
      {
        goto LABEL_27;
      }

      v15 = *(v36 + 8 * v9 + 32);

      v16 = v15;
    }

    v38 = v16;
    v17 = *a4;
    v19 = sub_100015658(v13, v12);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_26;
    }

    v23 = v18;
    if (v17[3] >= v22)
    {
      if (a3)
      {
        if (v18)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_100005A2C(&qword_100032C88, &qword_100020C00);
        sub_10001DFC4();
        if (v23)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_100015784(v22, a3 & 1, &qword_100032C80, &qword_100020BF8);
      v24 = *a4;
      v25 = sub_100015658(v13, v12);
      if ((v23 & 1) != (v26 & 1))
      {
        goto LABEL_29;
      }

      v19 = v25;
      if (v23)
      {
LABEL_22:
        swift_allocError();
        swift_willThrow();
        swift_errorRetain();
        sub_100005A2C(&qword_100032B88, &qword_100020B30);
        if ((swift_dynamicCast() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        goto LABEL_30;
      }
    }

    v27 = *a4;
    *(*a4 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v28 = (v27[6] + 16 * v19);
    *v28 = v13;
    v28[1] = v12;
    *(v27[7] + 8 * v19) = v38;
    v29 = v27[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_28;
    }

    v27[2] = v31;
    v10 += 2;
    ++v9;
    a3 = 1;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_10001E034();
  __break(1u);
LABEL_30:
  sub_10001DF34(30);
  v39._object = 0x80000001000272F0;
  v39._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10001DD74(v39);
  sub_10001DFA4();
  v40._countAndFlagsBits = 39;
  v40._object = 0xE100000000000000;
  sub_10001DD74(v40);
  result = sub_10001DFE4();
  __break(1u);
  return result;
}