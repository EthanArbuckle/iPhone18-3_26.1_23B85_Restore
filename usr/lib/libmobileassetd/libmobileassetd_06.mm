uint64_t sub_28D10C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = a1();
  if (result)
  {
    v6 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = swift_allocObject();
    getDigestSizeForDigestInfo(v6);
    v8 = swift_slowAlloc();
    result = ccdigest_init(v6, v8);
    *(v7 + 16) = v6;
    *(v7 + 24) = v8;
    *a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_28D1E4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  result = a1();
  if (result)
  {
    v6 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = swift_allocObject();
    getDigestSizeForDigestInfo(v6);
    v8 = swift_slowAlloc();
    result = ccdigest_init(v6, v8);
    *(v7 + 16) = v6;
    *(v7 + 24) = v8;
    *a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_28D270()
{
  result = qword_519740;
  if (!qword_519740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519740);
  }

  return result;
}

unint64_t sub_28D2C4(uint64_t a1)
{
  result = sub_274004();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_28D2F0()
{
  result = qword_519780;
  if (!qword_519780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519780);
  }

  return result;
}

unint64_t sub_28D348()
{
  result = qword_5197C0;
  if (!qword_5197C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5197C0);
  }

  return result;
}

unint64_t sub_28D39C(uint64_t a1)
{
  result = sub_27405C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_28D3C8()
{
  result = qword_519800;
  if (!qword_519800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519800);
  }

  return result;
}

unint64_t sub_28D420()
{
  result = qword_519840;
  if (!qword_519840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519840);
  }

  return result;
}

unint64_t sub_28D474(uint64_t a1)
{
  result = sub_2740B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_28D4A0()
{
  result = qword_519880;
  if (!qword_519880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519880);
  }

  return result;
}

uint64_t sub_28D524(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0 || (v4 = a2 - 1, a2 < 1))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v5 = a1;
  if (a1 <= 1)
  {
    v5 = 1;
  }

  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    goto LABEL_69;
  }

  v8 = ceil(log2(v7) * 0.125);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v9 = v8;
  if (v8 > a2)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v37 = sub_295634(a2);
  v38 = v10;
  sub_2A0848(&v37, 0);
  v11 = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v11 >= a2)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  v13 = v37;
  v12 = v38;
  v14 = v9 - 1;
  v35 = v4;
  while (1)
  {
    v15 = v4 - v11;
    if (__OFSUB__(v4, v11))
    {
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
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if ((v15 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_57;
    }

    v16 = 8 * v15;
    if ((v16 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
LABEL_17:
      LOBYTE(v17) = 0;
      goto LABEL_21;
    }

    if (v16 < 0)
    {
      if (v16 == -64)
      {
        goto LABEL_17;
      }

      v17 = a1 << (-v16 & 0x38);
    }

    else
    {
      if (v16 == 64)
      {
        goto LABEL_17;
      }

      v17 = a1 >> (v16 & 0x38);
    }

LABEL_21:
    v18 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      break;
    }

    if (v18)
    {
      if (v11 >= v13 >> 32 || v11 < v13)
      {
        goto LABEL_61;
      }

      v22 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (sub_303388() && __OFSUB__(v13, sub_3033B8()))
        {
          goto LABEL_66;
        }

        sub_3033D8();
        swift_allocObject();
        v23 = sub_303368();

        v22 = v23;
        v4 = v35;
      }

      sub_303358(0, 0);
      v24 = sub_303388();
      if (!v24)
      {
        goto LABEL_77;
      }

      v25 = v24;
      v26 = sub_3033B8();
      if (__OFSUB__(v11, v26))
      {
        goto LABEL_63;
      }

      *(v25 + v11 - v26) = v17;
      v12 = v22 | 0x4000000000000000;
      if (!v14)
      {
        return v13;
      }
    }

    else
    {
      v37 = v13;
      LOWORD(v38) = v12;
      BYTE2(v38) = BYTE2(v12);
      BYTE3(v38) = BYTE3(v12);
      BYTE4(v38) = BYTE4(v12);
      BYTE5(v38) = BYTE5(v12);
      BYTE6(v38) = BYTE6(v12);
      if (v11 >= BYTE6(v12))
      {
        goto LABEL_59;
      }

      *(&v37 + v11) = v17;
      v13 = v37;
      v2 = v2 & 0xF00000000000000 | v38 | ((WORD2(v38) | (BYTE6(v38) << 16)) << 32);
      v12 = v2;
      if (!v14)
      {
        return v13;
      }
    }

LABEL_13:
    --v14;
    v6 = __OFADD__(v11++, 1);
    if (v6)
    {
      goto LABEL_58;
    }
  }

  if (v18 != 2)
  {
    goto LABEL_76;
  }

  if (v11 < *(v13 + 16))
  {
    goto LABEL_60;
  }

  if (v11 >= *(v13 + 24))
  {
    goto LABEL_62;
  }

  v19 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (sub_303388())
    {
      if (__OFSUB__(v20, sub_3033B8()))
      {
        goto LABEL_67;
      }

      if (__OFSUB__(v21, v20))
      {
        goto LABEL_65;
      }
    }

    else if (__OFSUB__(v21, v20))
    {
      goto LABEL_65;
    }

    sub_3033D8();
    swift_allocObject();
    v27 = sub_303368();

    v19 = v27;
    v4 = v35;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = *(v13 + 16);
    v29 = *(v13 + 24);
    sub_3034F8();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    v4 = v35;

    v13 = v30;
  }

  sub_303358(0, 0);
  v31 = sub_303388();
  if (!v31)
  {
    goto LABEL_78;
  }

  v32 = v31;
  v33 = sub_3033B8();
  if (__OFSUB__(v11, v33))
  {
    goto LABEL_64;
  }

  *(v32 + v11 - v33) = v17;
  v12 = v19 | 0x8000000000000000;
  if (v14)
  {
    goto LABEL_13;
  }

  return v13;
}

__n128 sub_28DA1C@<Q0>(char *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v41 = a8;
  v40 = a7;
  v42 = a4;
  v43 = a5;
  v35 = a2;
  v33 = a9;
  v38 = a11;
  v14 = *(a10 - 8);
  __chkstk_darwin(a1);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = _s5DHKEMO9PublicKeyVMa();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v18 = &v31 - v17;
  v19 = *a1;
  v34 = a1[1];
  v20 = a1[2];
  v21 = *a3;
  (*(v14 + 16))(v16, a6, a10);
  LOBYTE(v44[0]) = v19;
  v22 = v39;
  sub_29C0D0(v16, v44, a10, v38, v18);
  if (v22)
  {
    (*(v14 + 8))(a6, a10);

    sub_258780(v40, v41);
    sub_EB18(v42, v43);
  }

  else
  {
    v24 = v21;
    v32 = v20;
    v38 = a10;
    v39 = a6;
    sub_29C1CC(v37, v44);
    v31 = v18;
    v25 = v44[0];
    v26 = v44[1];
    v27 = *v45;
    v47[3] = &type metadata for SymmetricKey;
    v47[4] = sub_28C690();
    v47[0] = v25;
    v50 = v24;
    v46[0] = v19;
    v46[1] = v34;
    v46[2] = v32;
    sub_2582E4(v26, v27);

    sub_28B1F0(v35, v47, v40, v41, &v50, v42, v43, v46, &v48);
    v28 = (v36 + 8);

    sub_258780(v26, v27);
    (*(v14 + 8))(v39, v38);
    (*v28)(v31, v37);
    *v45 = v49[0];
    *&v45[11] = *(v49 + 11);
    result = *v45;
    v29 = *&v45[16];
    v30 = v33;
    *v33 = v48;
    v30[1] = result;
    v30[2] = v29;
    *(v30 + 6) = v26;
    *(v30 + 7) = v27;
  }

  return result;
}

uint64_t sub_28DE6C@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = *a3;
  (*(*(a11 + 16) + 8))(v32, a10);
  if (v11)
  {
    (*(*(a10 - 8) + 8))(a6, a10);

    sub_258780(a7, a8);
    return sub_EB18(a4, a5);
  }

  else
  {
    v26 = a5;
    v27 = a6;
    v25 = a9;
    v21 = v32[0];
    v20 = v32[1];
    v22 = *v33;
    v35[3] = &type metadata for SymmetricKey;
    v35[4] = sub_28C690();
    v35[0] = v21;
    v38 = v18;
    v34[0] = v15;
    v34[1] = v16;
    v34[2] = v17;
    sub_2582E4(v20, v22);

    sub_28B1F0(a2, v35, a7, a8, &v38, a4, v26, v34, &v36);

    sub_258780(v20, v22);
    result = (*(*(a10 - 8) + 8))(v27, a10);
    *v33 = v37[0];
    *&v33[11] = *(v37 + 11);
    v23 = *v33;
    v24 = *&v33[16];
    *v25 = v36;
    *(v25 + 16) = v23;
    *(v25 + 32) = v24;
    *(v25 + 48) = v20;
    *(v25 + 56) = v22;
  }

  return result;
}

__n128 sub_28E090@<Q0>(char *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v67 = a8;
  v66 = a7;
  v70 = a6;
  v69 = a5;
  v68 = a4;
  v56 = a2;
  v53 = a9;
  v71 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v60 = &v49 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = AssociatedTypeWitness;
  v59 = AssociatedConformanceWitness;
  v58 = _s5DHKEMO9PublicKeyVMa();
  v57 = *(v58 - 8);
  v17 = __chkstk_darwin(v58);
  v62 = &v49 - v18;
  v19 = *(a11 - 8);
  __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s5DHKEMO10PrivateKeyVMa();
  v61 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  v25 = *a1;
  v55 = a1[1];
  v54 = a1[2];
  v26 = *a3;
  v27 = v71;
  (*(v19 + 16))(v21);
  v72[0] = v25;
  v28 = v64;
  sub_29C9D0(v21, v72, a11, a12, v24);
  if (v28)
  {

    sub_258780(v66, v67);
    sub_EB18(v68, v69);
    (*(v19 + 8))(v27, a11);
    (*(v65 + 8))(v70, v63);
  }

  else
  {
    v49 = v26;
    v50 = a11;
    v51 = v19;
    v52 = v24;
    v64 = v22;
    v29 = v65;
    v30 = v60;
    v31 = v63;
    (*(v65 + 16))(v60, v70, v63);
    v72[0] = v25;
    v32 = v62;
    sub_29C0D0(v30, v72, v31, v59, v62);
    v34 = sub_29CBEC(v72, v32, v64);
    v35 = v49;
    v36 = *v72;
    v37 = v34;
    v39 = v38;

    sub_2582E4(v37, v39);

    sub_2582E4(v37, v39);
    v60 = v37;
    v59 = v39;
    sub_258780(v37, v39);
    v75[3] = &type metadata for SymmetricKey;
    v75[4] = sub_28C690();
    v75[0] = v36;
    v78 = v35;
    v74[0] = v25;
    v74[1] = v55;
    v74[2] = v54;
    sub_28B1F0(v56, v75, v66, v67, &v78, v68, v69, v74, &v76);
    v40 = (v51 + 8);
    v41 = (v29 + 8);
    v42 = (v57 + 8);
    v43 = (v61 + 8);
    v44 = v58;

    v45 = v60;
    v46 = v59;
    sub_258780(v60, v59);
    (*v40)(v71, v50);
    (*v41)(v70, v31);
    (*v42)(v62, v44);
    (*v43)(v52, v64);
    *v73 = *v77;
    *&v73[11] = *&v77[11];
    result = *v73;
    v47 = *&v73[16];
    v48 = v53;
    *v53 = v76;
    v48[1] = result;
    v48[2] = v47;
    *(v48 + 6) = v45;
    *(v48 + 7) = v46;
  }

  return result;
}

__n128 sub_28E8B4@<Q0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v75 = a8;
  v69 = a7;
  v68 = a6;
  v70 = a4;
  v71 = a3;
  v58 = a2;
  v59 = a9;
  v74 = a12;
  v67 = a11;
  v66 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = sub_303B88();
  v57 = *(v72 - 8);
  v73 = v57;
  v17 = __chkstk_darwin(v72);
  v61 = &v51[-v18];
  v64 = AssociatedTypeWitness;
  v63 = *(AssociatedTypeWitness - 8);
  v19 = __chkstk_darwin(v17);
  v60 = &v51[-v20];
  v21 = *(a13 - 8);
  __chkstk_darwin(v19);
  v23 = &v51[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = _s5DHKEMO10PrivateKeyVMa();
  v62 = *(v24 - 1);
  __chkstk_darwin(v24);
  v26 = &v51[-v25];
  v27 = *a1;
  v56 = a1[1];
  v55 = a1[2];
  v28 = *a5;
  v29 = v75;
  (*(v21 + 16))(v23, v75, a13);
  v76[0] = v27;
  v30 = v65;
  sub_29C9D0(v23, v76, a13, a14, v26);
  if (v30)
  {

    sub_258780(v66, v67);
    sub_EB18(v68, v69);
    sub_258780(v71, v70);
    (*(v73 + 8))(v74, v72);
    (*(v21 + 8))(v29, a13);
  }

  else
  {
    v52 = v27;
    v32 = v60;
    v53 = a13;
    v54 = v21;
    v65 = v24;
    v33 = v71;
    v34 = v73;
    v35 = v61;
    v36 = v72;
    (*(v73 + 16))(v61, v74, v72);
    if ((*(v63 + 48))(v35, 1, v64) == 1)
    {
      v37 = *(v34 + 8);
      v73 = v34 + 8;
      v37(v35, v36);
      v38 = v33;
      v39 = v70;
      sub_29E61C(v38, v70, v65, v76);
    }

    else
    {
      (*(v63 + 32))(v32, v35, v64);
      v40 = v33;
      v39 = v70;
      sub_29D9E8(v40, v70, v32, v65, v76);
      (*(v63 + 8))(v32, v64);
    }

    v41 = *v76;
    v42 = v69;
    v43 = v67;
    v44 = v53;
    v45 = v66;
    v79[3] = &type metadata for SymmetricKey;
    v79[4] = sub_28C690();
    v79[0] = v41;
    v82 = v28;
    v78[0] = v52;
    v78[1] = v56;
    v78[2] = v55;
    sub_28B1F0(v58, v79, v45, v43, &v82, v68, v42, v78, &v80);
    v46 = (v54 + 8);
    v47 = (v62 + 8);
    v48 = v59;
    v49 = v65;
    (*(v57 + 8))(v74, v72);
    (*v46)(v75, v44);
    (*v47)(v26, v49);
    *v77 = *v81;
    *&v77[11] = *&v81[11];
    result = *v77;
    v50 = *&v77[16];
    *v48 = v80;
    *(v48 + 16) = result;
    *(v48 + 32) = v50;
    *(v48 + 48) = v71;
    *(v48 + 56) = v39;
  }

  return result;
}

uint64_t sub_28F0FC@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v29 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v21 = *a5;
  (*(*(a14 + 8) + 32))(&v33, a3, a4, a13, *(a14 + 8));
  if (v14)
  {

    sub_258780(a10, a11);
    sub_EB18(a6, a7);
    sub_258780(a3, a4);
    swift_getAssociatedTypeWitness();
    v22 = sub_303B88();
    (*(*(v22 - 8) + 8))(a12, v22);
    return (*(*(a13 - 8) + 8))(a8, a13);
  }

  else
  {
    v28 = a8;
    v24 = v33;
    v36[3] = &type metadata for SymmetricKey;
    v36[4] = sub_28C690();
    v36[0] = v24;
    v39 = v21;
    v35[0] = v29;
    v35[1] = v19;
    v35[2] = v20;
    sub_28B1F0(a2, v36, a10, a11, &v39, a6, a7, v35, &v37);
    swift_getAssociatedTypeWitness();
    v25 = sub_303B88();
    (*(*(v25 - 8) + 8))(a12, v25);
    result = (*(*(a13 - 8) + 8))(v28, a13);
    *v34 = v38[0];
    *&v34[11] = *(v38 + 11);
    v26 = *v34;
    v27 = *&v34[16];
    *a9 = v37;
    *(a9 + 16) = v26;
    *(a9 + 32) = v27;
    *(a9 + 48) = a3;
    *(a9 + 56) = a4;
  }

  return result;
}

void sub_28F3FC(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_2AA214(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_2AA214((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v9[v11 + 32] = 0;
  *a1 = v9;
  v12 = swift_unknownObjectRetain();
  sub_28FEF4(v12, a3, a4, a5);
}

void sub_28F4EC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v0[1];
  sub_303DB8(v2 - v1);
  v4 = __OFSUB__(v2, v1);
  v5 = v2 - v1;
  if (!v5)
  {
    return;
  }

  if ((v5 < 0) ^ v4 | (v5 == 0))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v6 = (v3 + v1);
  do
  {
    v7 = *v6++;
    sub_303DC8(v7);
    --v5;
  }

  while (v5);
}

void sub_28F558()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_303D98();
  v4 = v3 >> 1;
  if (__OFSUB__(v4, v2))
  {
    __break(1u);
  }

  else
  {
    sub_303DB8(v4 - v2);
    v5 = __OFSUB__(v4, v2);
    v6 = v4 - v2;
    if (!v6)
    {
LABEL_6:
      sub_303DE8();
      return;
    }

    if (!((v6 < 0) ^ v5 | (v6 == 0)))
    {
      v7 = (v1 + v2);
      do
      {
        v8 = *v7++;
        sub_303DC8(v8);
        --v6;
      }

      while (v6);
      goto LABEL_6;
    }
  }

  __break(1u);
}

unint64_t sub_28F644()
{
  result = qword_5198C0;
  if (!qword_5198C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5198C0);
  }

  return result;
}

unsigned __int8 *sub_28F698(unsigned __int8 *result, unsigned __int8 a2)
{
  v2 = result;
  if (*result != a2)
  {
    v5 = 1;
    goto LABEL_9;
  }

  if (result[48])
  {
    v4 = *(result + 3);
    v3 = *(result + 4);
    if (v4 != v3 >> 1)
    {
      if (v4 >= (v3 >> 1))
      {
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      if (!*(*(result + 2) + v4))
      {
        if (!__OFSUB__(v3 >> 1, v4))
        {
          return *(result + 1);
        }

        goto LABEL_12;
      }
    }

    v5 = 3;
LABEL_9:
    sub_2809A8();
    swift_allocError();
    *v6 = v5;
    swift_willThrow();
    return sub_280AEC(v2);
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_28F75C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_303D98();
  v6 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    sub_303DB8((a3 >> 1) - a2);
    v7 = __OFSUB__(v6, a2);
    v8 = v6 - a2;
    if (!v8)
    {
LABEL_6:
      sub_303DE8();
      return;
    }

    if (!((v8 < 0) ^ v7 | (v8 == 0)))
    {
      v9 = (a1 + a2);
      do
      {
        v10 = *v9++;
        sub_303DC8(v10);
        --v8;
      }

      while (v8);
      goto LABEL_6;
    }
  }

  __break(1u);
}

Swift::Int sub_28F7F8()
{
  v1 = *v0;
  sub_303D98();
  sub_303DC8(v1);
  return sub_303DE8();
}

Swift::Int sub_28F86C()
{
  v1 = *v0;
  sub_303D98();
  sub_303DC8(v1);
  return sub_303DE8();
}

uint64_t sub_28F8B0()
{
  sub_303C78(18);

  v1._countAndFlagsBits = sub_303CF8();
  sub_303988(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_303988(v2);
  return 0x6E656449314E5341;
}

unint64_t sub_28F968()
{
  result = qword_5198C8;
  if (!qword_5198C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5198C8);
  }

  return result;
}

uint64_t sub_28F9DC(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v10 = *(v7 + 24) >> 1, v10 < v9))
  {
    if (v8 <= v9)
    {
      v11 = v8 + v6;
    }

    else
    {
      v11 = v8;
    }

    result = sub_2AA214(result, v11, 1, v7);
    v7 = result;
    v10 = *(result + 24) >> 1;
  }

  v12 = *(v7 + 16);
  v13 = v10 - v12;
  v14 = 0;
  if (v3 && v4 && v4 > v3 && v10 != v12)
  {
    if (v5 >= v13)
    {
      v14 = v10 - v12;
    }

    else
    {
      v14 = v5;
    }

    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove((v7 + v12 + 32), v3, v14);
    v3 += v14;
  }

  if (v14 < v6)
  {
    goto LABEL_34;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = *(v7 + 16);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    *(v7 + 16) = v17;
LABEL_24:
    if (v14 != v13 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v20 = *(v7 + 16);
  v23 = *v3;
  v21 = v3 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v7 + 24);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v25)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 16) = v20;
  }

  result = sub_2AA214((v24 > 1), v20 + 1, 1, v7);
  v7 = result;
  v25 = *(result + 24) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_37;
  }

LABEL_40:
  v26 = v20 + 32;
  while (1)
  {
    *(v7 + v26) = v22;
    if (v21 == v4)
    {
      break;
    }

    v27 = *v21++;
    v22 = v27;
    if (++v26 - v25 == 32)
    {
      v20 = v25;
      goto LABEL_37;
    }
  }

  *(v7 + 16) = v26 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

void sub_28FB8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_2AA33C(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 8 * v15 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_28FCA0(uint64_t result, unint64_t a2, unint64_t a3)
{
  v7 = (71 - __clz(a3)) >> 3;
  if (v7 < result)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v7 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  v10 = result - a2;
  v3 = *v4;
  v11 = *(*v4 + 2);
  v5 = v11 + result - a2;
  if (__OFADD__(v11, result - a2))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v14 = *(v3 + 3) >> 1, v14 < v5))
  {
    if (v11 <= v5)
    {
      v15 = v5;
    }

    else
    {
      v15 = v11;
    }

    v3 = sub_2AA214(isUniquelyReferenced_nonNull_native, v15, 1, v3);
    v14 = *(v3 + 3) >> 1;
  }

  v16 = *(v3 + 2);
  v17 = v14 - v16;
  result = sub_2900C8(&v33, &v3[v16 + 32], v14 - v16, v9, a2, a3);
  if (result < v10)
  {
    goto LABEL_19;
  }

  if (result >= 1)
  {
    v18 = *(v3 + 2);
    v19 = __OFADD__(v18, result);
    v7 = v18 + result;
    if (v19)
    {
      __break(1u);
LABEL_38:
      *(v3 + 2) = v6 - 31;
      goto LABEL_15;
    }

    *(v3 + 2) = v7;
  }

  if (result != v17)
  {
LABEL_15:
    *v4 = v3;
    return result;
  }

LABEL_20:
  v20 = v34;
  v21 = v36;
  if (!__OFSUB__(v36, v34))
  {
    if (v36 == v34)
    {
      goto LABEL_15;
    }

    v22 = *(v3 + 2);
    v23 = v33;
    v24 = v35;
    result = sub_290228(v36, v33, v34, v35, v7);
    v25 = v21 - 1;
    if (v21 >= 1)
    {
      v5 = (71 - __clz(v24)) >> 3;
      if (v5 >= v21)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    do
    {
LABEL_25:
      while (1)
      {
        *(v3 + 2) = v22;
LABEL_26:
        v26 = *(v3 + 3);
        v27 = v26 >> 1;
        if ((v26 >> 1) < v22 + 1)
        {
          break;
        }

        if (v22 < v27)
        {
          goto LABEL_28;
        }
      }

      v31 = result;
      v3 = sub_2AA214((v26 > 1), v22 + 1, 1, v3);
      result = v31;
      v26 = *(v3 + 3);
      v27 = v26 >> 1;
    }

    while (v22 >= (v26 >> 1));
LABEL_28:
    v6 = v22 + 32;
    v32 = v27;
    v28 = -v27;
    v29 = v25;
    while (1)
    {
      v3[v6] = result;
      if (__OFSUB__(v29, v20))
      {
        break;
      }

      if (v20 == v29)
      {
        goto LABEL_38;
      }

      result = sub_290228(v29, v23, v20, v24, v26);
      if (v25 > v5)
      {
        goto LABEL_40;
      }

      if (v29-- < 1)
      {
        goto LABEL_40;
      }

      ++v6;
      v26 = v28 + v6;
      if (v28 + v6 == 32)
      {
        v22 = v32;
        v25 = v29;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_28FEF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_2AA214(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + v15 + 32), (a2 + a3), v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

unint64_t sub_290074()
{
  result = qword_5198D0;
  if (!qword_5198D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5198D0);
  }

  return result;
}

int64_t *sub_2900C8(int64_t *result, _BYTE *a2, int64_t a3, int64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  if (a3 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (__OFSUB__(a4, a5))
  {
LABEL_37:
    __break(1u);
    return result;
  }

  if (a4 != a5)
  {
    if (a4 > a5)
    {
      v7 = 0;
      v8 = (71 - __clz(a6)) >> 3;
      v9 = 8 - 8 * a4;
      v10 = 8 * a4 - 8;
      while (1)
      {
        if ((a4 - 0x1000000000000001 + v7) >> 61 != 7)
        {
          goto LABEL_34;
        }

        if (v10 < -64)
        {
LABEL_13:
          LOBYTE(v11) = 0;
          if (v8 < a4)
          {
            goto LABEL_30;
          }

          goto LABEL_21;
        }

        if (v10 > 64)
        {
          break;
        }

        if (v10 < 0)
        {
          if (v9 == 64)
          {
            goto LABEL_13;
          }

          v11 = a6 << (v9 & 0x38);
          if (v8 < a4)
          {
LABEL_30:
            __break(1u);
LABEL_31:
            v6 = a4 + v7 - 1;
            goto LABEL_8;
          }
        }

        else
        {
          if (v9 == -64)
          {
            break;
          }

          v11 = a6 >> (v10 & 0x38);
          if (v8 < a4)
          {
            goto LABEL_30;
          }
        }

LABEL_21:
        v12 = a4 + v7;
        if (a4 + v7 < 1)
        {
          goto LABEL_30;
        }

        *a2 = v11;
        if (!(a3 - 1 + v7))
        {
          goto LABEL_31;
        }

        v13 = v12 - 1;
        if (__OFSUB__(v12 - 1, a5))
        {
          goto LABEL_35;
        }

        if (!(a4 - a5 - 1 + v7))
        {
          v6 = a5;
          a3 = a4 - a5;
          goto LABEL_8;
        }

        if (v13 <= a4)
        {
          ++a2;
          --v7;
          v9 += 8;
          v10 -= 8;
          if (v13 > a5)
          {
            continue;
          }
        }

        goto LABEL_33;
      }

      LOBYTE(v11) = 0;
      if (v8 < a4)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_6:
  a3 = 0;
LABEL_7:
  v6 = a4;
LABEL_8:
  *result = a4;
  result[1] = a5;
  result[2] = a6;
  result[3] = v6;
  return a3;
}

unint64_t sub_290228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int64_t a5@<X8>)
{
  if (a2 < a1 || a3 >= a1)
  {
    __break(1u);
    goto LABEL_12;
  }

  a5 = (a1 - 0x1000000000000001) >> 61;
  if (a5 != 7)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    v7 = a4 << ((8 - v5) & 0x38);
    if (a5 == -64)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  v5 = 8 * a1;
  a5 = 8 * a1 - 8;
  if (a5 < -64)
  {
    return 0;
  }

  if (a5 > 64)
  {
    return 0;
  }

  if (a5 < 0)
  {
    goto LABEL_13;
  }

  if (8 * a1 == 72)
  {
    return 0;
  }

  return a4 >> (a5 & 0x38);
}

unint64_t sub_2902C4()
{
  result = qword_5198D8;
  if (!qword_5198D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5198D8);
  }

  return result;
}

uint64_t sub_290318()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  return v3 | ((v1 == v2) << 8);
}

void sub_290360()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1 >> 1;
  if (v2 == v1 >> 1)
  {
LABEL_9:
    sub_2809A8();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
  }

  else
  {
    v4 = v0[1];
    if (v2 <= (v1 >> 1))
    {
      v5 = v1 >> 1;
    }

    else
    {
      v5 = v0[2];
    }

    v6 = (v0[3] & 1 | (2 * v2)) + 2;
    v7 = v0[2];
    while (1)
    {
      if (v5 == v7)
      {
        __break(1u);
        goto LABEL_13;
      }

      if ((*(v4 + v7) & 0x80000000) == 0)
      {
        break;
      }

      ++v7;
      v6 += 2;
      if (v3 == v7)
      {
        goto LABEL_9;
      }
    }

    if (v7 >= -1)
    {
      v0[2] = v7 + 1;
      v9 = swift_unknownObjectRetain();
      sub_29068C(v9, v4, v2, v6);
      return;
    }

LABEL_13:
    __break(1u);
  }
}

uint64_t sub_290438(uint64_t result, void *a2)
{
  v2 = a2[2];
  if (v2 < 2)
  {
    goto LABEL_10;
  }

  v4 = a2[4];
  if (!is_mul_ok(v4, 0x28uLL))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = 40 * v4;
  v6 = a2[5];
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;

  sub_290C24(v7, v8);
  v9 = v2 - 2;
  if (v9)
  {
    v10 = a2 + 6;
    do
    {
      v11 = *v10++;
      sub_290C24(v11, v8);
      --v9;
    }

    while (v9);
  }

  return swift_unknownObjectRelease();
}

Swift::Int sub_2904F0(uint64_t a1)
{
  sub_303D98();
  v2 = *(a1 + 16);
  sub_303DB8(v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_303DB8(v4);
      --v2;
    }

    while (v2);
  }

  return sub_303DE8();
}

void sub_290568()
{
  v1 = *v0;
  sub_303DB8(*(*v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_303DB8(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_2905BC()
{
  v1 = *v0;
  sub_303D98();
  sub_303DB8(*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_303DB8(v4);
      --v2;
    }

    while (v2);
  }

  return sub_303DE8();
}

unint64_t sub_290638()
{
  result = qword_5198E0;
  if (!qword_5198E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5198E0);
  }

  return result;
}

void sub_29068C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = 7 * v5;
  if ((v5 * 7) >> 64 != (7 * v5) >> 63)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFADD__(v7, 7))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v7 + 7 > 71)
  {
    swift_unknownObjectRelease();
    sub_2809A8();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
    return;
  }

  v10 = sub_2A5FBC(0, v7, 7);
  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_22;
  }

  if (a3 <= v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = a3;
  }

  if (v12 - a3 > (v11 - 1))
  {
    v13 = 0;
    v14 = (a2 + a3);
    v15 = 32;
    do
    {
      v17 = *(v10 + v15);
      if (v17 - 65 <= 0xFFFFFFFFFFFFFF7ELL)
      {
        v16 = 0;
      }

      else
      {
        v18 = *v14 & 0x7F;
        if ((v17 & 0x8000000000000000) != 0)
        {
          v20 = v18 >> -v17;
          if (v17 <= 0xFFFFFFFFFFFFFFC0)
          {
            v16 = 0;
          }

          else
          {
            v16 = v20;
          }
        }

        else
        {
          v19 = v18 << v17;
          if (v17 >= 0x40)
          {
            v16 = 0;
          }

          else
          {
            v16 = v19;
          }
        }
      }

      v13 |= v16;
      ++v14;
      v15 += 8;
      --v11;
    }

    while (v11);
LABEL_22:

    swift_unknownObjectRelease();
    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_290800(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

char *sub_29085C(char *result, char a2)
{
  v8 = result;
  if (*result != a2)
  {
    sub_2809A8();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return sub_280AEC(v8);
  }

  if (result[48] != 1)
  {
    goto LABEL_47;
  }

  v9 = v2;
  v22 = *(result + 3);
  v23 = *(result + 4);
  v10 = (v23 >> 1) - v22;
  v11 = __OFSUB__(v23 >> 1, v22);
  swift_unknownObjectRetain();
  if (v11)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v3 = _swiftEmptyArrayStorage;
  while (v10 >= 1)
  {
    sub_290360();
    if (v9)
    {
      sub_280AEC(v8);

      return swift_unknownObjectRelease();
    }

    v11 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2AA33C(0, *(v3 + 2) + 1, 1, v3);
    }

    v5 = *(v3 + 2);
    v13 = *(v3 + 3);
    v4 = (v5 + 1);
    if (v5 >= v13 >> 1)
    {
      v3 = sub_2AA33C((v13 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v4;
    *&v3[8 * v5 + 32] = v11;
    v10 = (v23 >> 1) - v22;
    if (__OFSUB__(v23 >> 1, v22))
    {
      goto LABEL_38;
    }
  }

  v15 = *(v3 + 2);
  if (v15 < 2)
  {

    sub_2809A8();
    swift_allocError();
    *v16 = 2;
    swift_willThrow();
    sub_280AEC(v8);
    return swift_unknownObjectRelease();
  }

  result = sub_2AA33C(0, v15 + 1, 0, _swiftEmptyArrayStorage);
  if (!*(v3 + 2))
  {
    goto LABEL_39;
  }

  v11 = result;
  v4 = (v3 + 32);
  v17 = *(v3 + 4);
  if (v17 <= 0x27)
  {
    v19 = *(result + 2);
    v18 = *(result + 3);
    v10 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v11 = sub_2AA33C((v18 > 1), v19 + 1, 1, result);
    }

    *(v11 + 2) = v10;
    *&v11[8 * v19 + 32] = 0;
    v20 = *(v3 + 2);
    if (v20)
    {
      v6 = *(v3 + 4);
      goto LABEL_36;
    }

    __break(1u);
LABEL_42:
    result = sub_2AA33C((v20 > 1), v10, 1, v11);
    v11 = result;
    goto LABEL_30;
  }

  v19 = *(result + 2);
  v20 = *(result + 3);
  v21 = v20 >> 1;
  v10 = v19 + 1;
  if (v17 > 0x4F)
  {
    goto LABEL_33;
  }

  if (v21 <= v19)
  {
    goto LABEL_42;
  }

LABEL_30:
  *(v11 + 2) = v10;
  *&v11[8 * v19 + 32] = 1;
  v20 = *(v3 + 2);
  if (!v20)
  {
    __break(1u);
    goto LABEL_44;
  }

  v20 = *v4;
  v6 = *v4 - 40;
  if (*v4 >= 0x28)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_33:
  if (v21 <= v19)
  {
LABEL_44:
    result = sub_2AA33C((v20 > 1), v10, 1, v11);
    v11 = result;
  }

  *(v11 + 2) = v10;
  *&v11[8 * v19 + 32] = 2;
  if (*(v3 + 2))
  {
    v6 = *v4 - 80;
    if (*v4 >= 0x50)
    {
LABEL_36:
      v7 = *(v11 + 3);
      v5 = v19 + 2;

      if (v5 <= (v7 >> 1))
      {
LABEL_37:
        *(v11 + 2) = v5;
        *&v11[8 * v10 + 32] = v6;

        sub_28FB8C(v3, v4, *(v3 + 2) != 0, (2 * *(v3 + 2)) | 1);
        sub_280AEC(v8);
        swift_unknownObjectRelease();
        return v11;
      }

LABEL_40:
      v11 = sub_2AA33C((v7 > 1), v5, 1, v11);
      goto LABEL_37;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_290C24(unint64_t a1, char **a2)
{
  if (a1)
  {
    v4 = __clz(a1);
    v5 = *a2;
    if (v4 - 57 >= 7)
    {
      v6 = (((37 * (70 - v4)) >> 8) + (((70 - v4 - ((37 * (70 - v4)) >> 8)) & 0xFE) >> 1)) >> 2;
      v7 = 7 * v6 - 7;
      v8 = v6;
      while (v8 <= v6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_2AA214(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_2AA214((v9 > 1), v10 + 1, 1, v5);
        }

        --v8;
        *(v5 + 2) = v10 + 1;
        v5[v10 + 32] = (a1 >> v7) | 0x80;
        v7 -= 7;
        if (v8 == 1)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_17:
      *a2 = v5;
    }

    v15 = a1 & 0x7F;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2AA214(0, *(v5 + 2) + 1, 1, v5);
      v5 = result;
    }

    v13 = *(v5 + 2);
    v16 = *(v5 + 3);
    v14 = v13 + 1;
    if (v13 >= v16 >> 1)
    {
      result = sub_2AA214((v16 > 1), v13 + 1, 1, v5);
      v5 = result;
    }
  }

  else
  {
    v5 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2AA214(0, *(v5 + 2) + 1, 1, v5);
      v5 = result;
    }

    v13 = *(v5 + 2);
    v12 = *(v5 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      result = sub_2AA214((v12 > 1), v13 + 1, 1, v5);
      v5 = result;
    }

    v15 = 0;
  }

  *(v5 + 2) = v14;
  v5[v13 + 32] = v15;
  *a2 = v5;
  return result;
}

uint64_t sub_290E2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v43 = a3;
  v44 = a5;
  v46 = a1;
  v47 = a2;
  v45 = a7;
  swift_getAssociatedTypeWitness();
  v42 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_303B88();
  __chkstk_darwin(v9 - 8);
  v39 = &v38 - v10;
  v11 = swift_checkMetadataState();
  v41 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v38 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  v16 = sub_303B88();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v38 - v19;
  v21 = *(a4 - 1);
  v22 = __chkstk_darwin(v18);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v38 - v25;
  v46 = *v46;
  (*(v17 + 16))(v20, v47, v16);
  if ((*(v21 + 48))(v20, 1, a4) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v27 = sub_26DDAC(_swiftEmptyArrayStorage);
    v28 = v27;
    v29 = a6;
LABEL_7:
    v48 = v46;
    __chkstk_darwin(v27);
    v37 = v44;
    *(&v38 - 6) = v43;
    *(&v38 - 5) = a4;
    *(&v38 - 4) = v37;
    *(&v38 - 3) = v29;
    *(&v38 - 2) = v28;
    type metadata accessor for HashedAuthenticationCode();
    sub_279FA0(sub_292490, (&v38 - 8));
  }

  (*(v21 + 32))(v26, v20, a4);
  sub_3032E8();
  v30 = sub_303B08();
  v31 = *(v41 + 8);
  v31(v15, v11);
  v29 = a6;
  if (v30 != 1)
  {
    (*(v21 + 16))(v24, v26, a4);
    v36 = sub_303AF8();
    v28 = sub_26DDAC(v36);

    v27 = (*(v21 + 8))(v26, a4);
    goto LABEL_7;
  }

  v32 = v38;
  sub_3032E8();
  v33 = v39;
  sub_303B18();
  v31(v32, v11);
  v34 = AssociatedTypeWitness;
  result = (*(*(AssociatedTypeWitness - 8) + 48))(v33, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    swift_getAssociatedConformanceWitness();
    sub_279F34(v33, v34, &v48);
    v27 = (*(v21 + 8))(v26, a4);
    v28 = v48;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_29139C@<X0>(unsigned int (**a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (**a8)(char *, uint64_t, uint64_t)@<X7>, void *a9@<X8>, uint64_t a10)
{
  v65 = a8;
  v69 = a2;
  v64 = a1;
  v55 = a9;
  v68 = type metadata accessor for HashedAuthenticationCode();
  v63 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v53 - v15;
  v66 = sub_303B88();
  v57 = *(v66 - 8);
  v16 = __chkstk_darwin(v66);
  v73 = &v53 - v17;
  v71 = a6;
  v58 = *(a6 - 8);
  __chkstk_darwin(v16);
  v61 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HMAC();
  v56 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v53 - v21;
  v23 = *(a5 - 8);
  __chkstk_darwin(v20);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = a7;
  v70 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = AssociatedTypeWitness;
  v29 = ceil(a3 / (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness));
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v29 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v29 < 256.0)
  {
    v28 = v29;
    if (qword_518860 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_5:
  v30 = off_519B88[0];
  v78 = off_519B88[0];
  (*(v23 + 16))(v25, v64, a5);
  swift_retain_n();
  sub_279F34(v25, a5, v79);
  v31 = v73;
  v62 = v28;
  if (!v28)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  v54 = a3;
  v60 = a10;
  v32 = v79[0];
  v65 = (v57 + 2);
  v64 = (v58 + 6);
  v59 = (v58 + 4);
  ++v58;
  ++v57;
  ++v63;
  v33 = (v56 + 8);
  LOBYTE(v34) = 1;
  v35 = v62;
  while (1)
  {
    v79[0] = v32;

    sub_26C69C(v79, v70, v72);
    v79[0] = v30;
    v36 = sub_292538();
    sub_26D048(v79, v19, &type metadata for SecureBytes, v36);
    v37 = v66;
    (*v65)(v31, v69, v66);
    v38 = v71;
    if ((*v64)(v31, 1, v71) == 1)
    {
      (*v57)(v31, v37);
    }

    else
    {
      v39 = v32;
      v40 = v61;
      (*v59)(v61, v31, v38);
      sub_26D048(v40, v19, v38, v60);
      v41 = v40;
      v32 = v39;
      v35 = v62;
      (*v58)(v41, v38);
    }

    LOBYTE(v79[0]) = v34;
    sub_26D64C(v79, v79 + 1, v19);
    v42 = v67;
    sub_26D1B0(v19, v67);
    v43 = v68;
    swift_getWitnessTable();
    v44 = sub_29B0C8();
    (*v63)(v42, v43);

    sub_2921BC(v45);

    (*v33)(v22, v19);
    if (v35 == v34)
    {
      break;
    }

    v34 = v34 + 1;
    v30 = v44;
    v31 = v73;
    if ((v34 & 0x100) != 0)
    {
      __break(1u);
      break;
    }
  }

  v46 = v54;
  if (v54 < 0)
  {
    goto LABEL_25;
  }

  v47 = v78;
  swift_beginAccess();
  v48 = *(v47 + 16);
  v49 = sub_291B74(0, v46, v48, v47);
  if (v50)
  {
    v51 = v48;
  }

  else
  {
    v51 = v49;
  }

  if ((v51 | v48) < 0)
  {
    goto LABEL_26;
  }

  if (v48 < v51)
  {
    goto LABEL_27;
  }

  v74 = 0;
  v75 = v51;
  v76 = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5195E0);
  type metadata accessor for SecureBytes.Backing();
  sub_27EF2C();
  sub_303D88();

  *v55 = v77;
  return result;
}

uint64_t sub_291B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v9 = *(a4 + 16);
  if (v9 < a3 || (a3 | a1) < 0 || v9 < a1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = a3 - a1;
  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_11:
  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || v9 < result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_291C3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, void *a9@<X8>, char *a10, uint64_t a11)
{
  v28 = a8;
  v29 = a1;
  v38 = a4;
  v31 = a2;
  v36 = a9;
  v35 = a11;
  v32 = a10;
  v33 = a3;
  v37 = sub_303B88();
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v15 = &v28 - v14;
  v30 = sub_303B88();
  v16 = *(v30 - 8);
  __chkstk_darwin(v30);
  v18 = &v28 - v17;
  v19 = type metadata accessor for HashedAuthenticationCode();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v28 - v21);
  v39 = *v29;
  v23 = *(a6 - 1);
  (*(v23 + 16))(v18, v31, a6);
  (*(v23 + 56))(v18, 0, 1, a6);
  v24 = v28;
  sub_290E2C(&v39, v18, a5, a6, v28, v32, v22);
  (*(v16 + 8))(v18, v30);
  v25 = *(a7 - 8);
  (*(v25 + 16))(v15, v33, a7);
  (*(v25 + 56))(v15, 0, 1, a7);
  WitnessTable = swift_getWitnessTable();
  sub_29139C(v22, v15, v38, a5, v19, a7, v24, WitnessTable, v36, v35);
  (*(v34 + 8))(v15, v37);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_291FB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v19 = *a1;
  v18 = _swiftEmptyArrayStorage;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518DA8);
  v16 = sub_29258C();
  return sub_291C3C(&v19, &v18, a2, a3, a4, v15, a5, a6, a8, v16, a7);
}

uint64_t sub_292068@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, void *a8@<X8>)
{
  v19 = *a1;
  v18 = _swiftEmptyArrayStorage;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518DA8);
  v16 = sub_29258C();
  return sub_291C3C(&v19, a2, &v18, a3, a4, a5, v15, a6, a8, a7, v16);
}

uint64_t sub_29211C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  v14 = *a1;
  v12 = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518DA8);
  v10 = sub_29258C();
  return sub_291C3C(&v14, &v13, &v12, a2, a3, v9, v9, a4, a5, v10, v10);
}

uint64_t sub_2921BC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v5 = v4[2];
  result = swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = __OFADD__(v5, v7);
  v9 = v5 + v7;
  if (v8)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = _swift_stdlib_malloc_size(v4) - 32;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v11 = v10 < v9;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    return sub_297890(a1);
  }

  if (v9 < 0)
  {
    goto LABEL_18;
  }

  if (HIDWORD(v9))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9)
  {
    v12 = (v9 - 1) | ((v9 - 1) >> 1) | (((v9 - 1) | ((v9 - 1) >> 1)) >> 2);
    v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
    v14 = v13 | HIWORD(v13);
    if (v14 == -1)
    {
      v15 = 0xFFFFFFFFLL;
    }

    else
    {
      v15 = (v14 + 1);
    }
  }

  else
  {
    v15 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = v15;
  v17 = *v2;
  result = swift_beginAccess();
  v18 = v17[2];
  if ((v18 & 0x8000000000000000) == 0)
  {
    sub_2977AC(v17, 0, v18);

    *v2 = v16;
    return sub_297890(a1);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_292304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  result = swift_beginAccess();
  v12 = a4 - a3;
  if (!a3)
  {
    v12 = 0;
  }

  if (a1 < 0 || v12 < a1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 < 0 || v12 < a2)
  {
    goto LABEL_21;
  }

  v13 = v10[2];
  v14 = v13 + a2 - a1;
  if (__OFADD__(v13, a2 - a1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = _swift_stdlib_malloc_size(v10);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v15 - 32) >= v14)
  {
    return sub_297A18(a1, a2, a3, a4);
  }

  if (v14 < 0)
  {
    goto LABEL_23;
  }

  if (HIDWORD(v14))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v14)
  {
    v16 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
    v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
    v18 = v17 | HIWORD(v17);
    if (v18 == -1)
    {
      v19 = 0xFFFFFFFFLL;
    }

    else
    {
      v19 = (v18 + 1);
    }
  }

  else
  {
    v19 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = v19;
  v21 = *v5;
  result = swift_beginAccess();
  v22 = v21[2];
  if ((v22 & 0x8000000000000000) == 0)
  {
    sub_2977AC(v21, 0, v22);

    *v5 = v20;
    return sub_297A18(a1, a2, a3, a4);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_292490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[4];
  v7 = v3[6];
  v11[0] = a1;
  v11[1] = a2;
  v10 = v7;
  v8 = sub_26C648();
  return sub_26CF14(v11, &v10, v5, &type metadata for UnsafeRawBufferPointer, v6, v8, a3);
}

uint64_t sub_292504(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

unint64_t sub_292538()
{
  result = qword_5198E8[0];
  if (!qword_5198E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_5198E8);
  }

  return result;
}

unint64_t sub_29258C()
{
  result = qword_518DB0;
  if (!qword_518DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_518DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518DB0);
  }

  return result;
}

unint64_t sub_292614()
{
  result = qword_519970;
  if (!qword_519970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519970);
  }

  return result;
}

uint64_t sub_292678@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int **a7@<X8>)
{
  v15 = *v7;
  swift_beginAccess();
  return sub_292718(v15 + 32, v15 + 32 + *(v15 + 16), a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_292718@<X0>(size_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int **a9@<X8>)
{
  v17 = sub_26E1F4(a1, a2);
  sub_293214(&v17, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_2927AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X4>, char *a5@<X5>, uint64_t a6@<X6>, char *a7@<X7>, void *a8@<X8>, char *a9, uint64_t a10)
{
  v20 = *v10;

  sub_291C3C(&v20, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

Swift::Int sub_2928B4()
{
  sub_303D98();
  swift_beginAccess();
  sub_303DA8();
  return sub_303DE8();
}

Swift::Int sub_292918()
{
  sub_303D98();
  swift_beginAccess();
  sub_303DA8();
  return sub_303DE8();
}

uint64_t sub_292978(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_303B88();
  __chkstk_darwin(v9 - 8);
  v33 = v32 - v10;
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v32 - v16;
  v18 = *a1;
  v19 = a2;
  sub_3032E8();
  v32[1] = v8;
  v20 = sub_303B08();
  v21 = *(v12 + 8);
  v21(v17, v11);
  if (v20 != 1)
  {
    v29 = sub_2A0C94(v19, a3, *(*(*(*(a4 + 8) + 8) + 8) + 8));
    v31 = v30;
    swift_beginAccess();
    v28 = sub_292E64(v18 + 32, v18 + 32 + *(v18 + 16), v29, v31);
    sub_258780(v29, v31);
    return v28 & 1;
  }

  v35[0] = v18;
  sub_3032E8();
  v22 = v33;
  sub_303B18();
  v21(v15, v11);
  v23 = AssociatedTypeWitness;
  v24 = *(AssociatedTypeWitness - 8);
  result = (*(v24 + 48))(v22, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v26 = sub_293060();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v28 = sub_29C030(v35, v22, &type metadata for SharedSecret, v23, v26, AssociatedConformanceWitness);
    (*(v24 + 8))(v22, v23);
    return v28 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_292CD0()
{
  v1 = *v0;
  strcpy(v12, "SharedSecret: ");
  HIBYTE(v12[1]) = -18;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = 2 * v3;
  if (2 * v3 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v5 = sub_303AE8();
    v5[2] = v4;
    bzero(v5 + 4, v4);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v10 = 0;
  v11 = v5;

  sub_26F898(v6, &v11, &v10);

  v7 = sub_303958();
  v9 = v8;

  v13._countAndFlagsBits = v7;
  v13._object = v9;
  sub_303988(v13);

  return v12[0];
}

uint64_t sub_292E64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v7)
    {
      v24[0] = a3;
      LOWORD(v24[1]) = a4;
      BYTE2(v24[1]) = BYTE2(a4);
      BYTE3(v24[1]) = BYTE3(a4);
      BYTE4(v24[1]) = BYTE4(a4);
      BYTE5(v24[1]) = BYTE5(a4);
      v8 = v24 + BYTE6(a4);
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v9 = v4;
    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    v12 = sub_303388();
    if (v12)
    {
      v13 = sub_3033B8();
      if (__OFSUB__(v10, v13))
      {
        goto LABEL_28;
      }

      v12 += v10 - v13;
    }

    v14 = __OFSUB__(v11, v10);
    v15 = v11 - v10;
    if (!v14)
    {
LABEL_15:
      v18 = sub_3033A8();
      if (v18 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = v18;
      }

      v20 = v19 + v12;
      if (v12)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      sub_293F00(v12, v21, a1, a2, v24);
      if (!v9)
      {
        return LOBYTE(v24[0]);
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_11:
    v16 = a3;
    v15 = (a3 >> 32) - a3;
    if (a3 >> 32 >= a3)
    {
      v9 = v4;
      v12 = sub_303388();
      if (!v12)
      {
        goto LABEL_15;
      }

      v17 = sub_3033B8();
      if (!__OFSUB__(v16, v17))
      {
        v12 += v16 - v17;
        goto LABEL_15;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  memset(v24, 0, 14);
  v8 = v24;
LABEL_24:
  sub_293F00(v24, v8, a1, a2, &v23);
  if (v4)
  {
LABEL_30:

    __break(1u);
    return result;
  }

  return v23;
}

unint64_t sub_293060()
{
  result = qword_519978;
  if (!qword_519978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519978);
  }

  return result;
}

unint64_t sub_2930B8()
{
  result = qword_519980[0];
  if (!qword_519980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_519980);
  }

  return result;
}

uint64_t sub_2931A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_293214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int **a8@<X8>)
{
  v45 = a5;
  v46 = a7;
  v44 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = __chkstk_darwin(AssociatedTypeWitness);
  v49 = &v33 - v16;
  v17 = *(a4 - 8);
  __chkstk_darwin(v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v47 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 40);
  v42 = AssociatedConformanceWitness + 40;
  v43 = AssociatedConformanceWitness;
  v41 = v21;
  v22 = (v21)(AssociatedTypeWitness);
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (!is_mul_ok(v22, 0xFFFFFFFFuLL))
  {
    goto LABEL_20;
  }

  if (0xFFFFFFFF * v22 > a3)
  {
    v33 = a8;
    if (qword_518860 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v51 = off_519B88[0];

      sub_297618(a3);
      v34 = a3;
      if (!a3)
      {
        break;
      }

      v23 = *(a6 + 32);
      v38 = v47 + 32;
      v39 = v23;
      v40 = a6 + 32;
      v37 = a6 + 48;
      v36 = (v14 + 8);
      v35 = (v17 + 8);
      v24 = 1;
      v17 = v34;
      while (1)
      {
        v39(a4, a6);
        v25 = v47;
        swift_beginAccess();
        v26 = v38 + *(v25 + 16);
        v50[0] = v38;
        v50[1] = v26;
        v27 = sub_26C648();
        sub_293A24(v50, a4, &type metadata for UnsafeRawBufferPointer, a6, v27);
        sub_292DF0(bswap32(v24), a4, a6);
        sub_293A24(v44, a4, v45, a6, v46);
        (*(a6 + 48))(a4, a6);
        if (v24 == -1)
        {
          break;
        }

        v14 = a6;
        a3 = AssociatedTypeWitness;
        v28 = v41(AssociatedTypeWitness, v43);
        v29 = v49;
        v48 = &v33;
        if (v28 >= v17)
        {
          a6 = v17;
        }

        else
        {
          a6 = v28;
        }

        __chkstk_darwin(v28);
        sub_3033E8();
        (*v36)(v29, AssociatedTypeWitness);
        v30 = __OFSUB__(v17, a6);
        v17 -= a6;
        if (v30)
        {
          goto LABEL_17;
        }

        (*v35)(v19, a4);
        ++v24;
        a6 = v14;
        if (v17 <= 0)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      swift_once();
    }

LABEL_14:
    v31 = v51;
    result = swift_beginAccess();
    if (*(v31 + 2) == v34)
    {
      *v33 = v31;
      return result;
    }

    __break(1u);
  }

  result = sub_303CA8();
  __break(1u);
  return result;
}

uint64_t sub_2936E0@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int **a5@<X8>)
{
  v13 = *a1;
  v12 = _swiftEmptyArrayStorage;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518DA8);
  v10 = sub_29258C();
  return sub_293214(&v13, &v12, a2, a3, v9, a4, v10, a5);
}

unint64_t sub_2937E8()
{
  result = qword_519B08;
  if (!qword_519B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_519B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519B08);
  }

  return result;
}

uint64_t sub_29384C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519718);
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

unint64_t sub_293894()
{
  result = qword_519B18;
  if (!qword_519B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519B18);
  }

  return result;
}

uint64_t sub_2938E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 32))(v12, v11);
  (*(a4 + 40))(a1, a2, a3, a4);
  (*(a4 + 48))(a3, a4);
  return (*(v8 + 8))(v10, a3);
}

uint64_t sub_293A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v15[-v12];
  sub_3032E8();
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = v5;
  swift_getAssociatedConformanceWitness();
  sub_303A88();
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_293B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 - 8);
  __chkstk_darwin(a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 32))(v14, v13);
  sub_293A24(a1, a2, a3, a4, a5);
  (*(a4 + 48))(a2, a4);
  return (*(v10 + 8))(v12, a2);
}

uint64_t sub_293CC8()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_3033E8();
}

uint64_t sub_293F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  result = a4 - a3;
  if (a3)
  {
    v7 = a4 - a3;
  }

  else
  {
    v7 = 0;
  }

  if (a1)
  {
    if (v7 == a2 - a1)
    {
      if (a3)
      {
        result = cc_cmp_safe(result, a3, a1);
        *a5 = result == 0;
        return result;
      }

      goto LABEL_11;
    }

LABEL_9:
    *a5 = 0;
    return result;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_293FF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  result = sub_29403C(&v5, 16, v6);
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_29403C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (v7 >> 60)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 > 0x20;
    v9 = (1 << v7) & 0x101010000;
    if (v8 || v9 == 0)
    {
      goto LABEL_15;
    }

    result = getCMACContextSize();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v11 = result;
        v12 = sub_303AE8();
        v12[2] = v11;
        bzero(v12 + 4, v11);
      }

      else
      {
        v12 = _swiftEmptyArrayStorage;
      }

      v13 = *(v5 + 16);
      v14 = ccaes_cbc_encrypt_mode();
      LODWORD(v13) = cccmac_init(v14, (v12 + 4), v13, v5 + 32);

      if (!v13)
      {
        *a3 = v12;
        a3[1] = a2;
        return result;
      }

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_294134(char *a1, uint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_29550C(v5);
  v5 = result;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  result = cccmac_update((v5 + 32), a2 - a1, a1);
  if (!result)
  {
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2941A4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  *&v31 = sub_295634(v3);
  *(&v31 + 1) = v5;
  sub_2A0848(&v31, 0);
  v34 = v31;
  v29 = v4;
  sub_294E40(&v34, &v29);
  v6 = v34;
  v32 = &type metadata for Data;
  v33 = &protocol witness table for Data;
  v31 = v34;
  v7 = __swift_project_boxed_opaque_existential_1(&v31, &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(v28, 0, 14);
      sub_2582E4(v6, *(&v6 + 1));
      v11 = v28;
      v12 = v28;
      goto LABEL_23;
    }

    v13 = *(v8 + 16);
    v14 = *(v8 + 24);
    sub_2582E4(v6, *(&v6 + 1));
    v15 = sub_303388();
    if (v15)
    {
      v16 = sub_3033B8();
      v8 = v13 - v16;
      if (__OFSUB__(v13, v16))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v15 += v8;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (!v17)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v28[0] = *v7;
    LOWORD(v28[1]) = v9;
    BYTE2(v28[1]) = BYTE2(v9);
    BYTE3(v28[1]) = BYTE3(v9);
    BYTE4(v28[1]) = BYTE4(v9);
    BYTE5(v28[1]) = BYTE5(v9);
    sub_2582E4(v6, *(&v6 + 1));
    v11 = v28;
    v12 = v28 + BYTE6(v9);
    goto LABEL_23;
  }

  v19 = v8;
  v20 = v8 >> 32;
  v18 = v20 - v19;
  if (v20 < v19)
  {
    __break(1u);
    goto LABEL_25;
  }

  sub_2582E4(v6, *(&v6 + 1));
  v15 = sub_303388();
  if (v15)
  {
    v21 = sub_3033B8();
    if (!__OFSUB__(v19, v21))
    {
      v15 += v19 - v21;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v22 = sub_3033A8();
  if (v22 >= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = v22;
  }

  v24 = (v23 + v15);
  if (v15)
  {
    v12 = v24;
  }

  else
  {
    v12 = 0;
  }

  v11 = v15;
LABEL_23:
  sub_29516C(v11, v12, v30);
  sub_258780(v6, *(&v6 + 1));
  v25 = v30[0];
  v26 = v30[1];
  __swift_destroy_boxed_opaque_existential_0(&v31);
  *a1 = v25;
  a1[1] = v26;
}

uint64_t sub_294424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v11[-v8];
  sub_3032E8();
  v12 = a2;
  v13 = a3;
  v14 = v3;
  swift_getAssociatedConformanceWitness();
  sub_303A88();
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_29457C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_3033E8();
}

uint64_t sub_29467C(char *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if (result)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_29550C(v6);
  v6 = result;
  *a3 = result;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  result = cccmac_update((v6 + 32), a2 - a1, a1);
  if (!result)
  {
    *a3 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_294708()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      return BYTE6(v2);
    }

    v8 = __OFSUB__(HIDWORD(v1), v1);
    v9 = HIDWORD(v1) - v1;
    if (!v8)
    {
      return v9;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v7 = v1 + 16;
  v5 = *(v1 + 16);
  v6 = *(v7 + 8);
  result = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

char *sub_294760(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return _swiftEmptyArrayStorage;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_2952E0(v6, v7);
  }

  if (v2)
  {
    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2952E0(v6, v7);
  }

  __src = a1;
  v9 = a2;
  v10 = BYTE2(a2);
  v11 = BYTE3(a2);
  v12 = BYTE4(a2);
  v3 = BYTE6(a2);
  v13 = BYTE5(a2);
  if (!BYTE6(a2))
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = sub_252148(BYTE6(a2), 0);
  memcpy(v4 + 32, &__src, v3);
  return v4;
}

uint64_t sub_2948C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
      v6 = v12 + BYTE6(a2);
      goto LABEL_9;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v9 = sub_2953A0(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    return v9 & 1;
  }

  if (v5 == 2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v12, 0, 14);
  v6 = v12;
LABEL_9:
  v9 = sub_293F00(v12, v6, a3, a4, &v11);
  if (!v4)
  {
    v9 = v11;
  }

  return v9 & 1;
}

uint64_t sub_294A0C(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v13[0] = a3;
      LOWORD(v13[1]) = a4;
      BYTE2(v13[1]) = BYTE2(a4);
      BYTE3(v13[1]) = BYTE3(a4);
      BYTE4(v13[1]) = BYTE4(a4);
      BYTE5(v13[1]) = BYTE5(a4);
      v7 = v13 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_295458(v8, v9, a1);
    return v10 & 1;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
  v7 = v13;
LABEL_9:
  v10 = (a1)(&v12, v13, v7);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

Swift::Int sub_294B88()
{
  sub_303D98();
  sub_3035A8();
  return sub_303DE8();
}

Swift::Int sub_294BD4()
{
  sub_303D98();
  sub_3035A8();
  return sub_303DE8();
}

void *sub_294C24(uint64_t a1, unint64_t a2)
{
  v12 = 0x203A43414DLL;
  v13 = 0xE500000000000000;
  result = sub_287278(a1, a2);
  v3 = result[2];
  if (v3 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = 2 * v3;
  if (2 * v3 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = result;
  if (v3)
  {
    v6 = sub_303AE8();
    v6[2] = v4;
    bzero(v6 + 4, v4);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v10 = 0;
  v11 = v6;
  sub_303AD8();
  sub_26E640(v5, &v11, &v10);

  v7 = sub_303958();
  v9 = v8;

  v14._countAndFlagsBits = v7;
  v14._object = v9;
  sub_303988(v14);

  return v12;
}

uint64_t sub_294D30@<X0>(char **a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_294760(v4, v3);
  v7 = v6;
  result = sub_258780(v4, v3);
  *a1 = v5;
  a1[1] = v7;
  return result;
}

void *sub_294D94()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_287278(v1, v2);
  sub_258780(v1, v2);
  return v3;
}

uint64_t sub_294DE4(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5[2] = &v6;
  return sub_294A0C(sub_295ACC, v5, v2, v3) & 1;
}

uint64_t sub_294E40(unint64_t *a1, uint64_t *a2)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (v8)
    {

      sub_258780(v7, v6);
      *&v18 = v7;
      *(&v18 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_33DAD0;
      sub_258780(0, 0xC000000000000000);
      result = sub_295200(&v18, a2);
      v12 = v18;
      v13 = *(&v18 + 1) | 0x4000000000000000;
      goto LABEL_15;
    }

    v2 = (v7 >> 8);
    v3 = v7 >> 24;
    sub_258780(v7, v6);
    *&v18 = v7;
    WORD4(v18) = v6;
    BYTE10(v18) = BYTE2(v6);
    BYTE11(v18) = BYTE3(v6);
    BYTE12(v18) = BYTE4(v6);
    BYTE13(v18) = BYTE5(v6);
    BYTE14(v18) = BYTE6(v6);
    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_29550C(v9);
      *a2 = v9;
    }

    result = cccmac_final_generate();
    if (!result)
    {
      *a2 = v9;
      v12 = v18;
      v13 = DWORD2(v18) | ((WORD6(v18) | (BYTE14(v18) << 16)) << 32);
LABEL_15:
      *a1 = v12;
      a1[1] = v13;
      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v18 + 7) = 0;
    *&v18 = 0;
    v6 = *a2;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v6;
    if (v17)
    {
LABEL_17:
      result = cccmac_final_generate();
      if (!result)
      {
        *a2 = v6;
        return result;
      }

      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_20:
    v6 = sub_29550C(v6);
    *a2 = v6;
    goto LABEL_17;
  }

  sub_258780(v7, v6);
  *&v18 = v7;
  *(&v18 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_33DAD0;
  sub_258780(0, 0xC000000000000000);
  sub_303498();
  v6 = *(&v18 + 1);
  v3 = v18;
  v2 = *(v18 + 16);
  v14 = *(v18 + 24);
  result = sub_303388();
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (__OFSUB__(v2, sub_3033B8()))
  {
    goto LABEL_22;
  }

  v15 = __OFSUB__(v14, v2);
  v2 = (v14 - v2);
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_3033A8();
  v2 = *a2;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v2;
  if ((v16 & 1) == 0)
  {
LABEL_24:
    v2 = sub_29550C(v2);
    *a2 = v2;
  }

  result = cccmac_final_generate();
  if (result)
  {
    __break(1u);
  }

  *a2 = v2;
  *a1 = v3;
  a1[1] = v6 | 0x8000000000000000;
  return result;
}

_BYTE *sub_29516C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2AA770(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_295534(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2955B0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_295200(int *a1, uint64_t *a2)
{
  sub_3034C8();
  v4 = *a1;
  if (a1[1] < v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_303388();
  if (!result)
  {
    goto LABEL_11;
  }

  if (__OFSUB__(v4, sub_3033B8()))
  {
    goto LABEL_8;
  }

  sub_3033A8();
  v4 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v4 = sub_29550C(v4);
    *a2 = v4;
  }

  result = cccmac_final_generate();
  if (!result)
  {
    *a2 = v4;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

char *sub_2952E0(uint64_t a1, uint64_t a2)
{
  result = sub_303388();
  v5 = result;
  if (result)
  {
    result = sub_3033B8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_3033A8();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    if (v9)
    {
      v10 = sub_252148(v9, 0);
      sub_29AC10(v10 + 32, v9, v5, v9);
      result = v10;
      if (v11 != v9)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

uint64_t sub_2953A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_303388();
  v11 = result;
  if (result)
  {
    result = sub_3033B8();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = sub_3033A8();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 + v11;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_293F00(v11, v17, a4, a5, &v19);
  if (!v5)
  {
    return v19;
  }

  return v18;
}

uint64_t sub_295458(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_303388();
  v8 = result;
  if (result)
  {
    result = sub_3033B8();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_3033A8();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  a3(&v16, v8, v14);
  if (!v3)
  {
    v15 = v16;
  }

  return v15 & 1;
}

uint64_t sub_295534(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_3033D8();
  swift_allocObject();
  result = sub_303378();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_3034F8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2955B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_3033D8();
  swift_allocObject();
  result = sub_303378();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_295634(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_2A0BD4(result);
    }

    else
    {
      sub_3033D8();
      swift_allocObject();
      sub_303398();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_3034F8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_2956F8()
{
  result = qword_519B20;
  if (!qword_519B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519B20);
  }

  return result;
}

unint64_t sub_29574C(void *a1)
{
  a1[1] = sub_29578C();
  a1[2] = sub_2957E0();
  a1[3] = sub_295834();
  result = sub_295888();
  a1[4] = result;
  return result;
}

unint64_t sub_29578C()
{
  result = qword_519B60;
  if (!qword_519B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519B60);
  }

  return result;
}

unint64_t sub_2957E0()
{
  result = qword_519B68;
  if (!qword_519B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519B68);
  }

  return result;
}

unint64_t sub_295834()
{
  result = qword_519B70;
  if (!qword_519B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519B70);
  }

  return result;
}

unint64_t sub_295888()
{
  result = qword_519B78;
  if (!qword_519B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519B78);
  }

  return result;
}

unint64_t sub_2958E0()
{
  result = qword_519B80;
  if (!qword_519B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519B80);
  }

  return result;
}

unint64_t sub_295934()
{
  result = qword_518DF0;
  if (!qword_518DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_518DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518DF0);
  }

  return result;
}

void *_s4CMACVwca(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *_s4CMACVwta(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t _s4CMACVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t _s4CMACVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_295ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2948C0(**(v3 + 16), *(*(v3 + 16) + 8), a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_295B28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_518DF8);
  sub_3033E8();
  return v1;
}

uint64_t sub_295BB4(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_303DF8();
  v19 = v6;
  v20._countAndFlagsBits = 8250;
  v20._object = 0xE200000000000000;
  sub_303988(v20);
  (*(v3 + 16))(v5, v1, a1);
  result = sub_303AF8();
  v8 = *(result + 16);
  if (v8 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = 2 * v8;
  if (2 * v8 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v10 = result;
  if (v8)
  {
    v11 = sub_303AE8();
    v11[2] = v9;
    bzero(v11 + 4, v9);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v16 = 0;
  v17 = v11;
  sub_303AD8();
  sub_26E640(v10, &v17, &v16);

  v12 = sub_303958();
  v14 = v13;

  v21._countAndFlagsBits = v12;
  v21._object = v14;
  sub_303988(v21);

  return v18;
}

uint64_t sub_295D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v36 = a1;
  v37 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_303B88();
  __chkstk_darwin(v9 - 8);
  v35 = &v32 - v10;
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  v18 = a2;
  sub_3032E8();
  v19 = sub_303B08();
  v20 = *(v12 + 8);
  v20(v17, v11);
  if (v19 != 1)
  {
    v29 = sub_2A0C94(v18, a4, *(*(*(*(a6 + 8) + 8) + 8) + 8));
    v31 = v30;
    v38[0] = v29;
    v38[1] = v30;
    v28 = sub_29C030(v36, v38, v37, &type metadata for Data, *(v34 + 8), &protocol witness table for Data);
    sub_258780(v29, v31);
    return v28 & 1;
  }

  sub_3032E8();
  v21 = v35;
  sub_303B18();
  v20(v15, v11);
  v22 = AssociatedTypeWitness;
  v23 = *(AssociatedTypeWitness - 8);
  result = (*(v23 + 48))(v21, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v25 = *(v34 + 8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = v35;
    v28 = sub_29C030(v36, v35, v37, v22, v25, AssociatedConformanceWitness);
    (*(v23 + 8))(v27, v22);
    return v28 & 1;
  }

  __break(1u);
  return result;
}

char *sub_2960C8@<X0>(char *result@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = _swiftEmptyArrayStorage;
  if (!result || (v5 = result, v6 = a2 - result, a2 == result) || (v4 = sub_252148(a2 - result, 0), result = sub_29AC10(v4 + 4, v6, v5, v6), v7 == v6))
  {
    *a3 = v4;
    a3[1] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for SecureBytes.Backing()
{
  result = qword_519B90;
  if (!qword_519B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2961EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_13;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = swift_beginAccess();
    v8 = 0;
    v9 = *(a4 + 16);
    while (!__OFSUB__(v9, v8))
    {
      if (v9 == v8)
      {
        v6 = v9;
        goto LABEL_13;
      }

      *(a2 + v8) = *(a4 + 32 + v8);
      if (v6 - 1 == v8)
      {
        goto LABEL_13;
      }

      if (__OFADD__(++v8, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2962A4(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_252148(32, 0);
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v15 = v14[2];
      if (v15)
      {
        v16 = v15 - 1;
        if (v15 - 1 >= (a3 - 1))
        {
          v16 = a3 - 1;
        }

        v17 = v16 + 1;
        if (v17 > 0x10 && (a2 - v14 - 32) >= 0x10)
        {
          v20 = a2;
          v21 = v17 & 0xF;
          if ((v17 & 0xF) == 0)
          {
            v21 = 16;
          }

          v18 = v17 - v21;
          v19 = v18 + 1;
          a2 += v18;
          v22 = v18;
          v23 = (v14 + 4);
          do
          {
            v24 = *v23++;
            *v20++ = v24;
            v22 -= 16;
          }

          while (v22);
        }

        else
        {
          v18 = 0;
          v19 = 1;
        }

        while (1)
        {
          *a2 = *(v14 + v18 + 32);
          if (a3 == v19)
          {
            break;
          }

          v18 = v19;
          ++a2;
          if (v15 + 1 == ++v19)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        a3 = v15;
      }
    }
  }

  else
  {
    a3 = 0;
  }

  *a1 = v14;
  a1[1] = a3;
  return a3;
}

uint64_t sub_296404(void *a1, _BYTE *a2, uint64_t a3)
{
  v7 = sub_252148(48, 0);
  v8 = v3[1];
  v7[2] = *v3;
  v7[3] = v8;
  v7[4] = v3[2];
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v9 = *(v7 + 2);
      if (v9)
      {
        v10 = v9 - 1;
        if (v9 - 1 >= (a3 - 1))
        {
          v10 = a3 - 1;
        }

        v11 = v10 + 1;
        if (v11 > 0x10 && (a2 - v7 - 32) >= 0x10)
        {
          v14 = a2;
          v15 = v11 & 0xF;
          if ((v11 & 0xF) == 0)
          {
            v15 = 16;
          }

          v12 = v11 - v15;
          v13 = v12 + 1;
          a2 += v12;
          v16 = v12;
          v17 = v7 + 2;
          do
          {
            v18 = *v17++;
            *v14++ = v18;
            v16 -= 16;
          }

          while (v16);
        }

        else
        {
          v12 = 0;
          v13 = 1;
        }

        while (1)
        {
          *a2 = *(v7 + v12 + 32);
          if (a3 == v13)
          {
            break;
          }

          v12 = v13;
          ++a2;
          if (v9 + 1 == ++v13)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        a3 = v9;
      }
    }
  }

  else
  {
    a3 = 0;
  }

  *a1 = v7;
  a1[1] = a3;
  return a3;
}

uint64_t sub_296548(void *a1, _BYTE *a2, uint64_t a3)
{
  v7 = sub_252148(64, 0);
  v8 = v3[1];
  v7[2] = *v3;
  v7[3] = v8;
  v9 = v3[3];
  v7[4] = v3[2];
  v7[5] = v9;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v10 = *(v7 + 2);
      if (v10)
      {
        v11 = v10 - 1;
        if (v10 - 1 >= (a3 - 1))
        {
          v11 = a3 - 1;
        }

        v12 = v11 + 1;
        if (v12 > 0x10 && (a2 - v7 - 32) >= 0x10)
        {
          v15 = a2;
          v16 = v12 & 0xF;
          if ((v12 & 0xF) == 0)
          {
            v16 = 16;
          }

          v13 = v12 - v16;
          v14 = v13 + 1;
          a2 += v13;
          v17 = v13;
          v18 = v7 + 2;
          do
          {
            v19 = *v18++;
            *v15++ = v19;
            v17 -= 16;
          }

          while (v17);
        }

        else
        {
          v13 = 0;
          v14 = 1;
        }

        while (1)
        {
          *a2 = *(v7 + v13 + 32);
          if (a3 == v14)
          {
            break;
          }

          v13 = v14;
          ++a2;
          if (v10 + 1 == ++v14)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        a3 = v10;
      }
    }
  }

  else
  {
    a3 = 0;
  }

  *a1 = v7;
  a1[1] = a3;
  return a3;
}

uint64_t sub_29668C(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(__src, 0, 14);
      v23 = __src;
      v22 = __src;
LABEL_24:
      v11 = sub_2A0B58(v23, v22);
      goto LABEL_25;
    }

    v12 = *(a4 + 16);
    v13 = *(a4 + 24);
    v14 = sub_303388();
    if (v14)
    {
      v15 = sub_3033B8();
      if (__OFSUB__(v12, v15))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
      }

      v14 += v12 - v15;
    }

    v16 = __OFSUB__(v13, v12);
    v17 = v13 - v12;
    if (!v16)
    {
LABEL_16:
      v19 = sub_3033A8();
      if (v19 >= v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = v19;
      }

      v21 = (v20 + v14);
      if (v14)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = v14;
      goto LABEL_24;
    }

    __break(1u);
LABEL_12:
    v17 = (a4 >> 32) - a4;
    if (a4 >> 32 < a4)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v14 = sub_303388();
    if (v14)
    {
      v18 = sub_3033B8();
      if (__OFSUB__(a4, v18))
      {
        goto LABEL_47;
      }

      v14 += a4 - v18;
    }

    goto LABEL_16;
  }

  if (v10)
  {
    goto LABEL_12;
  }

  __src[0] = a4;
  LOWORD(__src[1]) = a5;
  BYTE2(__src[1]) = BYTE2(a5);
  BYTE3(__src[1]) = BYTE3(a5);
  BYTE4(__src[1]) = BYTE4(a5);
  BYTE5(__src[1]) = BYTE5(a5);
  if (BYTE6(a5))
  {
    v11 = sub_252148(BYTE6(a5), 0);
    memcpy(v11 + 4, __src, BYTE6(a5));
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

LABEL_25:
  sub_258780(a4, a5);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_43;
  }

  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v24 = v11[2];
      if (v24)
      {
        v25 = v24 - 1;
        if (v24 - 1 >= (a3 - 1))
        {
          v25 = a3 - 1;
        }

        v26 = v25 + 1;
        if (v26 > 0x10 && (a2 - v11 - 32) >= 0x10)
        {
          v29 = a2;
          v30 = v26 & 0xF;
          if ((v26 & 0xF) == 0)
          {
            v30 = 16;
          }

          v27 = v26 - v30;
          v28 = v27 + 1;
          a2 += v27;
          v31 = v27;
          v32 = (v11 + 4);
          do
          {
            v33 = *v32++;
            *v29++ = v33;
            v31 -= 16;
          }

          while (v31);
        }

        else
        {
          v27 = 0;
          v28 = 1;
        }

        while (1)
        {
          *a2 = *(v11 + v27 + 32);
          if (a3 == v28)
          {
            break;
          }

          v27 = v28;
          ++a2;
          if (v24 + 1 == ++v28)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
LABEL_42:
        a3 = v24;
      }

      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_43:
  *a1 = v11;
  a1[1] = a3;
  return a3;
}

uint64_t sub_296948(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_24;
    }

    v15 = *(a4 + 16);
    v16 = *(a4 + 24);
    v17 = sub_303388();
    if (v17)
    {
      v18 = sub_3033B8();
      if (__OFSUB__(v15, v18))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
      }

      v17 += v15 - v18;
    }

    v19 = __OFSUB__(v16, v15);
    v20 = v16 - v15;
    if (!v19)
    {
LABEL_16:
      v22 = sub_3033A8();
      if (v22 < v20)
      {
        v20 = v22;
      }

      if (v17 && v20)
      {
        v11 = sub_252148(v20, 0);
        v12 = v11 + 4;
        v13 = v17;
        v14 = v20;
        goto LABEL_21;
      }

LABEL_24:
      sub_258780(a4, a5);
      v11 = _swiftEmptyArrayStorage;
      if (!a2)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_12:
    v20 = (a4 >> 32) - a4;
    if (a4 >> 32 < a4)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = sub_303388();
    if (v17)
    {
      v21 = sub_3033B8();
      if (__OFSUB__(a4, v21))
      {
        goto LABEL_45;
      }

      v17 += a4 - v21;
    }

    goto LABEL_16;
  }

  if (v10)
  {
    goto LABEL_12;
  }

  v34 = a4;
  v35 = a5;
  v36 = BYTE2(a5);
  v37 = BYTE3(a5);
  v38 = BYTE4(a5);
  v39 = BYTE5(a5);
  if (BYTE6(a5))
  {
    v11 = sub_252148(BYTE6(a5), 0);
    v12 = v11 + 4;
    v13 = &v34;
    v14 = BYTE6(a5);
LABEL_21:
    memcpy(v12, v13, v14);
    goto LABEL_22;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_22:
  sub_258780(a4, a5);
  if (!a2)
  {
LABEL_23:
    a3 = 0;
    goto LABEL_41;
  }

LABEL_25:
  if (!a3)
  {
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v23 = v11[2];
  if (v23)
  {
    v24 = v23 - 1;
    if (v23 - 1 >= (a3 - 1))
    {
      v24 = a3 - 1;
    }

    v25 = v24 + 1;
    if (v25 > 0x10 && (a2 - v11 - 32) >= 0x10)
    {
      v28 = a2;
      v29 = v25 & 0xF;
      if ((v25 & 0xF) == 0)
      {
        v29 = 16;
      }

      v26 = v25 - v29;
      v27 = v26 + 1;
      a2 += v26;
      v30 = v26;
      v31 = (v11 + 4);
      do
      {
        v32 = *v31++;
        *v28++ = v32;
        v30 -= 16;
      }

      while (v30);
    }

    else
    {
      v26 = 0;
      v27 = 1;
    }

    while (1)
    {
      *a2 = *(v11 + v26 + 32);
      if (a3 == v27)
      {
        break;
      }

      v26 = v27;
      ++a2;
      if (v23 + 1 == ++v27)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
LABEL_40:
    a3 = v23;
  }

LABEL_41:
  *a1 = v11;
  a1[1] = a3;
  return a3;
}

uint64_t sub_296C14(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = sub_252148(20, 0);
  *(v12 + 4) = a4;
  *(v12 + 5) = a5;
  *(v12 + 12) = a6;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v13 = *(v12 + 2);
      if (v13)
      {
        v14 = v13 - 1;
        if (v13 - 1 >= (a3 - 1))
        {
          v14 = a3 - 1;
        }

        v15 = v14 + 1;
        if (v15 > 0x10 && (a2 - v12 - 32) >= 0x10)
        {
          v18 = a2;
          v19 = v15 & 0xF;
          if ((v15 & 0xF) == 0)
          {
            v19 = 16;
          }

          v16 = v15 - v19;
          v17 = v16 + 1;
          a2 += v16;
          v20 = v16;
          v21 = (v12 + 32);
          do
          {
            v22 = *v21++;
            *v18++ = v22;
            v20 -= 16;
          }

          while (v20);
        }

        else
        {
          v16 = 0;
          v17 = 1;
        }

        while (1)
        {
          *a2 = v12[v16 + 32];
          if (a3 == v17)
          {
            break;
          }

          v16 = v17;
          ++a2;
          if (v13 + 1 == ++v17)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        a3 = v13;
      }
    }
  }

  else
  {
    a3 = 0;
  }

  *a1 = v12;
  a1[1] = a3;
  return a3;
}

uint64_t sub_296D68(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_252148(16, 0);
  v10[4] = a4;
  v10[5] = a5;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v11 = v10[2];
      if (v11)
      {
        v12 = v11 - 1;
        if (v11 - 1 >= (a3 - 1))
        {
          v12 = a3 - 1;
        }

        v13 = v12 + 1;
        if (v13 > 0x10 && (a2 - v10 - 32) >= 0x10)
        {
          v16 = a2;
          v17 = v13 & 0xF;
          if ((v13 & 0xF) == 0)
          {
            v17 = 16;
          }

          v14 = v13 - v17;
          v15 = v14 + 1;
          a2 += v14;
          v18 = v14;
          v19 = (v10 + 4);
          do
          {
            v20 = *v19++;
            *v16++ = v20;
            v18 -= 16;
          }

          while (v18);
        }

        else
        {
          v14 = 0;
          v15 = 1;
        }

        while (1)
        {
          *a2 = *(v10 + v14 + 32);
          if (a3 == v15)
          {
            break;
          }

          v14 = v15;
          ++a2;
          if (v11 + 1 == ++v15)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        a3 = v11;
      }
    }
  }

  else
  {
    a3 = 0;
  }

  *a1 = v10;
  a1[1] = a3;
  return a3;
}

uint64_t ***sub_296EB4(uint64_t ***result, void *a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *result;
  if (a3)
  {
    if (!v7)
    {
      __break(1u);
      goto LABEL_18;
    }

    result = a5();
    if (!result)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v8 = result;
    v10 = 0;
    result = ccrng(&v10);
    if (!result)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v10)
    {
      __break(1u);
      goto LABEL_15;
    }

    result = ccec_compact_generate_key(v8, result, v7);
    if (!result)
    {
LABEL_13:
      *a2 = a4;
      return result;
    }

    __break(1u);
  }

  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = a5();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = result;
  v10 = 0;
  result = ccrng(&v10);
  if (result)
  {
    if (!v10)
    {
      result = ccec_generate_key_fips(v9, result, v7);
      if (!result)
      {
        goto LABEL_13;
      }

LABEL_16:
      __break(1u);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t *sub_296FD8(uint64_t ***a1, void *a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a7;
  v9 = BYTE6(a4);
  v13 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (v13)
    {
      goto LABEL_20;
    }

    v39[0] = a3;
    LOWORD(v39[1]) = a4;
    BYTE2(v39[1]) = BYTE2(a4);
    BYTE3(v39[1]) = BYTE3(a4);
    BYTE4(v39[1]) = BYTE4(a4);
    BYTE5(v39[1]) = BYTE5(a4);
    v14 = *a1;
    if (!*a1)
    {
      __break(1u);
LABEL_48:
      sub_3033A8();
      goto LABEL_49;
    }

    v15 = a7();
    if (!v15)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v16 = v15;
    v38 = 0;
    v17 = ccrng(&v38);
    if (!v17)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v38)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    result = ccec_generate_key_deterministic(v16, v9, v39, v17, a5, v14);
    if (!result)
    {
      goto LABEL_36;
    }

    __break(1u);
  }

  if (v13 != 2)
  {
    goto LABEL_31;
  }

  v19 = *(a3 + 16);
  v20 = sub_303388();
  if (!v20)
  {
    goto LABEL_48;
  }

  v21 = v20;
  v22 = sub_3033B8();
  if (__OFSUB__(v19, v22))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v23 = v19 - v22 + v21;
  result = sub_3033A8();
  if (!v23)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v24 = *a1;
  if (!*a1)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  result = (v7)(result);
  if (!result)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v26 = *(a3 + 16);
  v25 = *(a3 + 24);
  v27 = v25 - v26;
  if (__OFSUB__(v25, v26))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = result;
  LODWORD(v39[0]) = 0;
  result = ccrng(v39);
  if (!result)
  {
    goto LABEL_61;
  }

  if (LODWORD(v39[0]))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  result = ccec_generate_key_deterministic(v7, v27, v23, result, a5, v24);
  if (!result)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_20:
  if (a3 > a3 >> 32)
  {
    __break(1u);
    goto LABEL_38;
  }

  v28 = sub_303388();
  if (!v28)
  {
LABEL_55:
    result = sub_3033A8();
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v29 = v28;
  v30 = sub_3033B8();
  if (__OFSUB__(a3, v30))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v31 = a3 - v30 + v29;
  result = sub_3033A8();
  if (!v31)
  {
    goto LABEL_56;
  }

  v32 = *a1;
  if (!*a1)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  result = (v7)(result);
  if (!result)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v7 = result;
  LODWORD(v39[0]) = 0;
  result = ccrng(v39);
  if (result)
  {
    if (LODWORD(v39[0]))
    {
      goto LABEL_46;
    }

    result = ccec_generate_key_deterministic(v7, HIDWORD(a3) - a3, v31, result, a5, v32);
    if (result)
    {
      __break(1u);
LABEL_31:
      memset(v39, 0, 14);
      v33 = *a1;
      if (*a1)
      {
        v34 = (v7)();
        if (v34)
        {
          v35 = v34;
          v38 = 0;
          v36 = ccrng(&v38);
          if (v36)
          {
            if (!v38)
            {
              result = ccec_generate_key_deterministic(v35, 0, v39, v36, a5, v33);
              if (!result)
              {
                goto LABEL_36;
              }

              goto LABEL_42;
            }

            goto LABEL_40;
          }

          goto LABEL_54;
        }

        goto LABEL_52;
      }

      goto LABEL_50;
    }

LABEL_36:
    *a2 = a6;
    return result;
  }

LABEL_62:
  __break(1u);
  return result;
}

void *sub_2973E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a5)
  {
    return result;
  }

  v7 = result;
  if (!a3)
  {
    v12 = sub_292504(0, result, 0, a4);
    result = sub_292504(v7, a2, 0, a4);
    if (!__OFADD__(v12, result))
    {
      if (result + v12 >= v12)
      {
        return result;
      }

LABEL_14:
      __break(1u);
      return result;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = sub_292504(0, result, a3, a4);
  result = sub_292504(v7, a2, a3, a4);
  if (__OFADD__(v10, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result + v10 < v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return memmove(a5, (a3 + v10), result);
}

char *sub_2974E0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_19:

    return v4;
  }

  result = sub_252148(*(a1 + 16), 0);
  if (v2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = result + 32;
    if (v2 >= 8 && &result[-a1] >= 0x20)
    {
      if (v2 < 0x20)
      {
        v5 = 0;
        goto LABEL_12;
      }

      v5 = v2 & 0x7FFFFFFFFFFFFFE0;
      v7 = result + 48;
      v8 = (a1 + 48);
      v9 = v2 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v10 = *v8;
        *(v7 - 1) = *(v8 - 1);
        *v7 = v10;
        v7 += 2;
        v8 += 2;
        v9 -= 32;
      }

      while (v9);
      if (v2 == v5)
      {
        goto LABEL_19;
      }

      if ((v2 & 0x18) != 0)
      {
LABEL_12:
        v11 = v5;
        v5 = v2 & 0x7FFFFFFFFFFFFFF8;
        v6 += v2 & 0x7FFFFFFFFFFFFFF8;
        v12 = v11 + 32;
        v13 = v11 - (v2 & 0x7FFFFFFFFFFFFFF8);
        do
        {
          *&result[v12] = *(a1 + v12);
          v12 += 8;
          v13 += 8;
        }

        while (v13);
        if (v2 == v5)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v6 += v5;
    }

LABEL_17:
    v14 = (v5 + a1 + 32);
    v15 = v2 - v5;
    do
    {
      v16 = *v14++;
      *v6++ = v16;
      --v15;
    }

    while (v15);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

size_t sub_297618(int64_t a1)
{
  v2 = v1;
  v4 = *v2;
  result = _swift_stdlib_malloc_size(*v2);
  if ((result - 32) < a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      if (a1)
      {
        v6 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
        v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
        v8 = v7 | HIWORD(v7);
        if (v8 == -1)
        {
          v9 = 0xFFFFFFFFLL;
        }

        else
        {
          v9 = (v8 + 1);
        }
      }

      else
      {
        v9 = 1;
      }

      type metadata accessor for SecureBytes.Backing();
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = v9;
      result = swift_beginAccess();
      v11 = v4[2];
      if ((v11 & 0x8000000000000000) == 0)
      {
        sub_2977AC(v4, 0, v11);

        *v2 = v10;
        return result;
      }

LABEL_14:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_297704()
{
  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  off_519B88[0] = result;
  return result;
}

uint64_t sub_297738()
{
  type metadata accessor for SecureBytes.Backing();
  sub_3033E8();
  return v1;
}

void *sub_2977AC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = _swift_stdlib_malloc_size(result);
  if ((result - 4) < a3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = _swift_stdlib_malloc_size(v3) - 32;
  result = swift_beginAccess();
  v8 = v3[2];
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(v10, v11);
  v12 = v10 - v11;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    return sub_29A184((v6 + 4), v6 + v6[2] + 32, a2, a3, v3);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_297890(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = _swift_stdlib_malloc_size(v1) - 32;
  result = swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = __OFSUB__(v7, v3);
  v9 = v7 - v3;
  if (v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = _swift_stdlib_malloc_size(v1);
  result = sub_29A0FC((v1 + 32), v1 + v10, v6, a1);
  v11 = *(v1 + 16);
  v8 = __OFADD__(v11, v3);
  v12 = v11 + v3;
  if (!v8)
  {
    *(v1 + 16) = v12;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

size_t sub_29795C(char a1)
{
  v3 = _swift_stdlib_malloc_size(v1) - 32;
  result = swift_beginAccess();
  v5 = v1[2];
  v6 = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = _swift_stdlib_malloc_size(v1);
  if ((result - 32) < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + v5 + 32) = a1;
  v9 = v1[2];
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    result = swift_beginAccess();
    v1[2] = v10;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

size_t sub_297A18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_292504(a1, a2, a3, a4);
  v10 = _swift_stdlib_malloc_size(v4) - 32;
  result = swift_beginAccess();
  v12 = v4[2];
  v13 = v10 - v12;
  if (__OFSUB__(v10, v12))
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = __OFSUB__(v13, v9);
  v15 = v13 - v9;
  if (v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2973E8(a1, a2, a3, a4, v4 + v12 + 32);
  v16 = v4[2];
  v17 = v16 + v9;
  if (!__OFADD__(v16, v9))
  {
    result = swift_beginAccess();
    v4[2] = v17;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

size_t sub_297B10(const void *a1, size_t a2)
{
  v5 = _swift_stdlib_malloc_size(v2) - 32;
  result = swift_beginAccess();
  v7 = v2[2];
  v8 = v5 - v7;
  if (__OFSUB__(v5, v7))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = __OFSUB__(v8, a2);
  v10 = v8 - a2;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v7)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    result = memmove(v2 + v7 + 32, a1, a2);
LABEL_8:
    v11 = v2[2];
    v9 = __OFADD__(v11, a2);
    v12 = v11 + a2;
    if (!v9)
    {
      result = swift_beginAccess();
      v2[2] = v12;
      return result;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_297BF0()
{
  v1 = sub_303B08();
  v2 = _swift_stdlib_malloc_size(v0) - 32;
  result = swift_beginAccess();
  v4 = v0[2];
  v5 = v2 - v4;
  if (__OFSUB__(v2, v4))
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = __OFSUB__(v5, v1);
  v7 = v5 - v1;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = _swift_stdlib_malloc_size(v0);
  if ((result - 32) < v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_303C18();
  v8 = v0[2];
  v6 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v6)
  {
    v0[2] = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_297CEC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 16);
  return result;
}

uint64_t sub_297D6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = swift_beginAccess();
  v8 = *(v6 + 16);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 >= v4)
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_297DE8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v5;
  }

  return result;
}

BOOL sub_297E38()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16) == 0;
}

uint64_t *sub_297E80(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_297E9C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_297EB8(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_297ED4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_297EEC(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_297F68@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_297F80(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void *sub_297F98@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    result = swift_beginAccess();
    if ((v5 & 0x8000000000000000) == 0 && *(v6 + 16) >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_298008@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_291B74(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_298044(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (v7 >= v4 && ((v4 | v3) & 0x8000000000000000) == 0 && v7 >= v3)
  {
    return v4 - v3;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2980CC(uint64_t a1, uint64_t *a2))(uint64_t result)
{
  v3 = *a2;
  v4 = *v2;
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v4 + v3 + 32);
  return sub_298104;
}

uint64_t sub_298118(uint64_t *a1, uint64_t *a2)
{
  sub_29AA00(v2, *a2, a2[1], *a1, a1[1], a1[2]);
}

void (*sub_298164(void *a1, uint64_t *a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_298224(v4, *a2, a2[1]);
  return sub_2981DC;
}

void sub_2981DC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_298224(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  v9 = *v3;
  result = swift_beginAccess();
  v11 = *(v9 + 16);
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;

    return sub_2982F4;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_2982F4(uint64_t **a1)
{
  v1 = *a1;
  sub_29AA00((*a1)[8], v1[6], (*a1)[7], *v1, v1[1], v1[2]);

  free(v1);
}

uint64_t sub_298344@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29AAFC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_298370(void *result, void *a2)
{
  v3 = *result;
  v4 = *a2;
  if (__OFSUB__(*a2, *result))
  {
    __break(1u);
  }

  else if (*a2 != *result)
  {
    v5 = *v2 + 32;
    v6 = *(v5 + v3);
    *(v5 + v3) = *(v5 + v4);
    *(v5 + v4) = v6;
  }

  return result;
}

size_t sub_2983EC(int64_t a1, int64_t a2, size_t a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v8[2];
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = _swift_stdlib_malloc_size(v8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v15 - 32) >= v14)
  {
    if (a2 >= a1)
    {
      return sub_298908(a1, a2, a3);
    }

    goto LABEL_23;
  }

  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v14))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14)
  {
    v16 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
    v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
    v18 = v17 | HIWORD(v17);
    if (v18 == -1)
    {
      v19 = 0xFFFFFFFFLL;
    }

    else
    {
      v19 = (v18 + 1);
    }
  }

  else
  {
    v19 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v19;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v20 = result;
  v21 = *v4;
  result = swift_beginAccess();
  v22 = v21[2];
  if (v22 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_2977AC(v21, 0, a1);
  sub_29795C(a3);
  sub_2977AC(v21, a2, v22);

  *v4 = v20;
  return result;
}

size_t sub_29858C(uint64_t a1, int64_t a2, void *a3, size_t a4)
{
  v5 = v4;
  v10 = *v4;
  result = swift_beginAccess();
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v10[2];
  v14 = __OFSUB__(v13, v12);
  v15 = v13 - v12;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15 + a4;
  if (__OFADD__(v15, a4))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = _swift_stdlib_malloc_size(v10);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v17 - 32) >= v16)
  {
    if (a2 >= a1)
    {
      return sub_298A04(a1, a2, a3, a4);
    }

    goto LABEL_23;
  }

  if (v16 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v16)
  {
    v18 = (v16 - 1) | ((v16 - 1) >> 1) | (((v16 - 1) | ((v16 - 1) >> 1)) >> 2);
    v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
    v20 = v19 | HIWORD(v19);
    if (v20 == -1)
    {
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v21 = (v20 + 1);
    }
  }

  else
  {
    v21 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v21;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v22 = result;
  v23 = *v5;
  result = swift_beginAccess();
  v24 = v23[2];
  if (v24 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_2977AC(v23, 0, a1);
  sub_297B10(a3, a4);
  sub_2977AC(v23, a2, v24);

  *v5 = v22;
  return result;
}

size_t sub_298738(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v8[2];
  v12 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = sub_303B08();
  v13 = __OFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = _swift_stdlib_malloc_size(v8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v15 - 32) >= v14)
  {
    if (a2 >= a1)
    {
      return sub_298B04(a1, a2, a3);
    }

    goto LABEL_23;
  }

  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v14))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14)
  {
    v16 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
    v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
    v18 = v17 | HIWORD(v17);
    if (v18 == -1)
    {
      v19 = 0xFFFFFFFFLL;
    }

    else
    {
      v19 = (v18 + 1);
    }
  }

  else
  {
    v19 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v19;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v20 = result;
  v21 = *v4;
  result = swift_beginAccess();
  v22 = v21[2];
  if (v22 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_2977AC(v21, 0, a1);
  sub_297BF0();
  sub_2977AC(v21, a2, v22);

  *v4 = v20;
  return result;
}

size_t sub_298908(int64_t a1, int64_t a2, size_t a3)
{
  result = swift_beginAccess();
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v3[2];
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v3);
  if ((result - 32) < v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = __OFSUB__(1, v8);
  v13 = 1 - v8;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_299E30(a2, v9, v13);
  result = sub_299EF8(a3, a1);
  v14 = v3[2];
  v15 = v14 + v13;
  if (!__OFADD__(v14, v13))
  {
    result = swift_beginAccess();
    v3[2] = v15;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_298A04(uint64_t a1, int64_t a2, void *a3, size_t a4)
{
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v4[2];
  v12 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12 + a4;
  if (__OFADD__(v12, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = __OFSUB__(a4, v10);
  v15 = a4 - v10;
  if (v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_299E30(a2, v11, v15);
  result = sub_299F6C(a3, a4, a1);
  v16 = v4[2];
  v17 = v16 + v15;
  if (!__OFADD__(v16, v15))
  {
    result = swift_beginAccess();
    v4[2] = v17;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_298B04(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  result = swift_beginAccess();
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v3[2];
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_303B08();
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_303B08();
  if (__OFSUB__(result, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v4[2];
  if (v13 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_299E30(a2, v13, result - v9);
  sub_29A028(a3, a1);
  result = sub_303B08();
  v14 = result - v9;
  if (__OFSUB__(result, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v4[2];
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    v4[2] = v17;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_298C40(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    if (result >= 1)
    {
      v4 = v2;
      while (1)
      {
        v6 = *v4;
        result = swift_beginAccess();
        v7 = v6[2];
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v9 = _swift_stdlib_malloc_size(v6) - 32;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v10 = v9 < v8;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          if (v8 < 0)
          {
            goto LABEL_32;
          }

          if (HIDWORD(v8))
          {
            goto LABEL_34;
          }

          if (v7 == -1)
          {
            v14 = 1;
          }

          else
          {
            v11 = v7 | (v7 >> 1) | ((v7 | (v7 >> 1)) >> 2);
            v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
            v13 = v12 | HIWORD(v12);
            if (v13 == -1)
            {
              v14 = 0xFFFFFFFFLL;
            }

            else
            {
              v14 = (v13 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v14;
          if (v7 < 0)
          {
            goto LABEL_36;
          }

          v19 = result;
          v20 = *v4;
          result = swift_beginAccess();
          v21 = v20[2];
          if (v21 < v7)
          {
            __break(1u);
            return result;
          }

          sub_2977AC(v20, 0, v7);
          sub_29795C(a2);
          sub_2977AC(v20, v7, v21);

          *v4 = v19;
          if (!--v3)
          {
            return result;
          }
        }

        else
        {
          v15 = *v4;
          result = swift_beginAccess();
          v16 = v15[2];
          if (__OFADD__(v16, 1))
          {
            goto LABEL_33;
          }

          result = _swift_stdlib_malloc_size(v15);
          if (result - 32 < v16 + 1)
          {
            goto LABEL_35;
          }

          if (v16 < v7)
          {
            goto LABEL_37;
          }

          result = sub_299E30(v7, v16, 1);
          if (v7 < 0)
          {
            goto LABEL_38;
          }

          result = _swift_stdlib_malloc_size(v15);
          if (result - 32 < v8)
          {
            goto LABEL_39;
          }

          if (v8 < v7)
          {
            goto LABEL_40;
          }

          result = _swift_stdlib_malloc_size(v15);
          *(v15 + v7 + 32) = a2;
          v17 = v15[2];
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_41;
          }

          result = swift_beginAccess();
          v15[2] = v18;
          if (!--v3)
          {
            return result;
          }
        }
      }

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
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

size_t sub_298E84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v30 - v10;
  v32 = v3;
  result = sub_303A58();
  if (v33 == 1)
  {
    (*(v6 + 16))(v8, a1, a2);
    sub_303A28();
    swift_getAssociatedConformanceWitness();
    sub_303C08();
    if (v35)
    {
      return (*(v31 + 8))(v11, AssociatedTypeWitness);
    }

    else
    {
      v13 = v34;
      while (1)
      {
        v14 = *v3;
        result = swift_beginAccess();
        v15 = v14[2];
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v17 = _swift_stdlib_malloc_size(v14) - 32;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v18 = v17 < v16;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          if (v16 < 0)
          {
            goto LABEL_33;
          }

          if (HIDWORD(v16))
          {
            goto LABEL_35;
          }

          if (v15 == -1)
          {
            v22 = 1;
          }

          else
          {
            v19 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
            v20 = v19 | (v19 >> 4) | ((v19 | (v19 >> 4)) >> 8);
            v21 = v20 | HIWORD(v20);
            if (v21 == -1)
            {
              v22 = 0xFFFFFFFFLL;
            }

            else
            {
              v22 = (v21 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v22;
          if (v15 < 0)
          {
            goto LABEL_37;
          }

          v27 = result;
          v28 = *v3;
          result = swift_beginAccess();
          v29 = v28[2];
          if (v29 < v15)
          {
            __break(1u);
            break;
          }

          sub_2977AC(v28, 0, v15);
          sub_29795C(v13);
          sub_2977AC(v28, v15, v29);

          *v3 = v27;
        }

        else
        {
          v23 = *v3;
          result = swift_beginAccess();
          v24 = v23[2];
          if (__OFADD__(v24, 1))
          {
            goto LABEL_34;
          }

          result = _swift_stdlib_malloc_size(v23);
          if ((result - 32) < v24 + 1)
          {
            goto LABEL_36;
          }

          if (v24 < v15)
          {
            goto LABEL_38;
          }

          result = sub_299E30(v15, v24, 1);
          if (v15 < 0)
          {
            goto LABEL_39;
          }

          result = _swift_stdlib_malloc_size(v23);
          if ((result - 32) < v16)
          {
            goto LABEL_40;
          }

          if (v16 < v15)
          {
            goto LABEL_41;
          }

          result = _swift_stdlib_malloc_size(v23);
          *(v23 + v15 + 32) = v13;
          v25 = v23[2];
          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_42;
          }

          swift_beginAccess();
          v23[2] = v26;
        }

        sub_303C08();
        v13 = v34;
        if (v35 == 1)
        {
          return (*(v31 + 8))(v11, AssociatedTypeWitness);
        }
      }

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
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2992A8@<X0>(int **a1@<X8>)
{
  if (qword_518860 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_519B88[0];
}

uint64_t sub_299318(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_298738(*a1, a1[1], a2);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

int *sub_29939C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int **a3@<X8>)
{
  v5 = *a1;
  if (qword_518860 != -1)
  {
    swift_once();
  }

  result = off_519B88[0];
  v7 = off_519B88[0];
  if (!a2)
  {

    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    sub_298C40(a2, v5);
    result = v7;
LABEL_7:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

size_t sub_299458(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  swift_beginAccess();
  return sub_2983EC(*(v2 + 16), *(v2 + 16), v3);
}

uint64_t sub_2994B0(uint64_t a1, uint64_t a2)
{
  sub_298E84(a1, a2);
  v4 = *(*(a2 - 8) + 8);

  return v4(a1, a2);
}

size_t sub_299544@<X0>(int64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = swift_beginAccess();
  if (!*(v5 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 >= v4)
  {
    v8 = *(v5 + v4 + 32);
    result = sub_29B624(v4, v7);
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t sub_2995E0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v3 + 32);
  result = sub_291B74(0, 1, v5, v3);
  if ((v7 & 1) == 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      result = sub_29B624(0, result);
      *a1 = v6;
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t sub_29966C(size_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      swift_beginAccess();
      result = sub_291B74(0, v2, *(v3 + 16), v3);
      if (v4)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        return sub_29B624(0, result);
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

size_t sub_2996F4(char a1)
{
  v2 = *v1;
  if (a1)
  {
    swift_beginAccess();
    v3 = *(v2 + 2);
    if ((v3 & 0x8000000000000000) == 0)
    {
      return sub_29B624(0, v3);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (qword_518860 != -1)
  {
LABEL_9:
    swift_once();
  }

  *v1 = off_519B88[0];
}

uint64_t sub_2997C4(uint64_t (*a1)(char *))
{
  v4 = *v1;
  result = swift_beginAccess();
  v6 = 0;
  v7 = v4 + 32;
  do
  {
    v8 = *(v4 + 16);
    if (__OFSUB__(v8, v6))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v6 == v8)
    {
      goto LABEL_11;
    }

    v14 = *(v7 + v6);
    result = a1(&v14);
    if (v2)
    {
      return result;
    }

    v9 = v6 + 1;
    v10 = __OFADD__(v6, 1);
    if (result)
    {
      if (!v10)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_14:
      v11 = __OFADD__(v6++, 1);
      if (!v11)
      {
        while (1)
        {
          v11 = __OFADD__(v9++, 1);
          if (v11)
          {
            break;
          }

LABEL_16:
          v12 = *(v4 + 16);
          if (__OFSUB__(v12, v9))
          {
            goto LABEL_27;
          }

          if (v12 == v9)
          {
            if (v9 < v6)
            {
              goto LABEL_31;
            }

            return sub_29B624(v6, v9);
          }

          v14 = *(v7 + v9);
          result = a1(&v14);
          if ((result & 1) == 0)
          {
            if (__OFSUB__(v9, v6))
            {
              goto LABEL_29;
            }

            if (v9 != v6)
            {
              v13 = *(v7 + v6);
              *(v7 + v6) = *(v7 + v9);
              *(v7 + v9) = v13;
            }

            goto LABEL_14;
          }
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (!v10);
  __break(1u);
LABEL_11:
  v9 = v6;
  return sub_29B624(v6, v9);
}

uint64_t sub_299998@<X0>(uint64_t (*a1)(uint64_t, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  result = a1(v3 + 32, *(v3 + 16));
  if (!v4)
  {
    return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }

  return result;
}

Swift::Int sub_299B18()
{
  v1 = *v0;
  sub_303D98();
  sub_303DB8(v1);
  return sub_303DE8();
}

Swift::Int sub_299B8C()
{
  v1 = *v0;
  sub_303D98();
  sub_303DB8(v1);
  return sub_303DE8();
}

void *sub_299BD0(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

void *sub_299C3C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *sub_299C58@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

void *sub_299C74(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

size_t sub_299C98@<X0>(size_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 - result;
  if (result)
  {
    v5 = a2 - result;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  if (v5)
  {
    v7 = (v5 - 1) | ((v5 - 1) >> 1) | (((v5 - 1) | ((v5 - 1) >> 1)) >> 2);
    v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
    v9 = v8 | HIWORD(v8);
    if (v9 == -1)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = (v9 + 1);
    }
  }

  else
  {
    v10 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = v10;
  _swift_stdlib_malloc_size(v11);
  if (v6)
  {
    memmove(v11 + 4, v6, v4);
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v11[2] = v4;
  result = _swift_stdlib_malloc_size(v11);
  if ((result - 32) >= v4)
  {
    *a3 = v11;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_299DB4()
{
  swift_beginAccess();
  memset_s((v0 + 32), *(v0 + 24), 0, *(v0 + 24));
  return swift_deallocClassInstance();
}

size_t sub_299E30(size_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v7 = result;
  result = _swift_stdlib_malloc_size(v4);
  v8 = v7 + a3;
  if (__OFADD__(v7, a3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = __OFADD__(a2, a3);
  v10 = a2 + a3;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v10 < v8)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 1 || (result - 32) < a2)
  {
    goto LABEL_15;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v10)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  _swift_stdlib_malloc_size(v4);

  return memmove(&v4[v8 + 32], &v4[v7 + 32], a2 - v7);
}

size_t sub_299EF8(size_t result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= a2)
  {
    result = _swift_stdlib_malloc_size(v2);
    *(v2 + a2 + 32) = v5;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_299F6C(void *result, size_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v7 = a3 + a2;
  if (__OFADD__(a3, a2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  result = _swift_stdlib_malloc_size(v4);
  if (result - 32 < v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 < a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = _swift_stdlib_malloc_size(v4);
  if (!v8)
  {
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return memmove(&v4[a3 + 32], v8, a2);
}

uint64_t sub_29A028(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_303B08();
  v4 = a2 + result;
  if (__OFADD__(a2, result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = _swift_stdlib_malloc_size(v2);
  if (result - 32 < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_303B08();
  if (__OFADD__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 + result < a2)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  _swift_stdlib_malloc_size(v2);

  return sub_303C18();
}

char *sub_29A0FC(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    if (a2 - result >= a3)
    {
      swift_beginAccess();
      return memmove(&v5[a3], (a4 + 32), *(a4 + 16));
    }

    __break(1u);
    goto LABEL_7;
  }

  if (a3 > 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

size_t sub_29A184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v6 = a1 + a4;
  }

  else
  {
    v6 = 0;
  }

  if (a1)
  {
    v7 = (a1 + a3);
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = a5[2];
  result = _swift_stdlib_malloc_size(a5);
  if ((result - 32) < v8)
  {
    __break(1u);
  }

  else
  {
    if (v7)
    {
      v10 = v6 - v7;
      result = memmove(a5 + v8 + 32, v7, v10);
    }

    else
    {
      v10 = 0;
    }

    v11 = a5[2];
    v12 = v11 + v10;
    if (!__OFADD__(v11, v10))
    {
      result = swift_beginAccess();
      a5[2] = v12;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_29A278()
{
  result = qword_519BE0;
  if (!qword_519BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519BE0);
  }

  return result;
}

unint64_t sub_29A2E4()
{
  result = qword_519BE8;
  if (!qword_519BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519BE8);
  }

  return result;
}

unint64_t sub_29A33C()
{
  result = qword_519BF0;
  if (!qword_519BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519BF0);
  }

  return result;
}

unint64_t sub_29A394()
{
  result = qword_519BF8;
  if (!qword_519BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519BF8);
  }

  return result;
}

unint64_t sub_29A3E8()
{
  result = qword_519C00;
  if (!qword_519C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519C00);
  }

  return result;
}

unint64_t sub_29A4D0()
{
  result = qword_519C18;
  if (!qword_519C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519C18);
  }

  return result;
}

unint64_t sub_29A558()
{
  result = qword_519C30;
  if (!qword_519C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519C30);
  }

  return result;
}

unint64_t sub_29A5AC()
{
  result = qword_519C38;
  if (!qword_519C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519C38);
  }

  return result;
}

unint64_t sub_29A648()
{
  result = qword_519C48;
  if (!qword_519C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519C48);
  }

  return result;
}

unint64_t sub_29A760()
{
  result = qword_519C70;
  if (!qword_519C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519C70);
  }

  return result;
}

uint64_t sub_29A7E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_519C28);
    sub_29A558();
    sub_29A5AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29A980(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5195E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29AA00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = swift_beginAccess();
  v14 = *(v11 + 16);
  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a2 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 < a3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    while (1)
    {
      LOBYTE(v13) = __OFSUB__(a5, a4);
      if (a3 == a2)
      {
        break;
      }

      if (v13)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (a5 == a4)
      {
        goto LABEL_27;
      }

      if (a4 >= a5)
      {
        goto LABEL_20;
      }

      *(v11 + 32 + a2) = *(a6 + 32 + a4);
      v13 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_21;
      }

      ++a4;
      ++a2;
      if (__OFSUB__(a3, v13))
      {
        goto LABEL_15;
      }
    }
  }

  if ((v13 & 1) == 0)
  {
    if (a5 == a4)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_29AAFC(uint64_t (*a1)(char *))
{
  v4 = *v1;
  swift_beginAccess();
  v5 = *(v4 + 16);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v4 + 32;
  do
  {
    v12 = *(v7 + v6);
    v8 = a1(&v12);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v5;
      while (1)
      {
        v5 = v9 - 1;
        if (v6 >= v9 - 1)
        {
          return v6;
        }

        v12 = *(v4 + v9 + 31);
        result = a1(&v12);
        v9 = v5;
        if ((result & 1) == 0)
        {
          if (__OFSUB__(v5, v6))
          {
            __break(1u);
            return result;
          }

          if (v6 != v5)
          {
            v11 = *(v7 + v6);
            *(v7 + v6) = *(v4 + v5 + 32);
            *(v4 + v5 + 32) = v11;
          }

          break;
        }
      }
    }

    ++v6;
  }

  while (v6 < v5);
  return v6;
}

char *sub_29AC10(void *a1, int64_t a2, char *__src, int64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, v5);
    v4 += v5;
  }

  return v4;
}

BOOL sub_29AC7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  sub_293F00(a2 + 32, a2 + 32 + *(a2 + 16), a1 + 32, a1 + 32 + v4, &v6);
  return v6;
}

unint64_t sub_29AD5C(unint64_t result, char a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  if (HIDWORD(result))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (result)
  {
    v9 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
    v11 = v10 | HIWORD(v10);
    if (v11 == -1)
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = (v11 + 1);
    }
  }

  else
  {
    v12 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = v12;
  v14 = _swift_stdlib_malloc_size(v13);
  v15 = sub_272A50(v5, (v13 + 4), v13 + v14);
  v17 = (v16 + v15);
  v19 = (v16 + v18);
  if (!v16)
  {
    v19 = 0;
    v17 = 0;
  }

  v21[0] = v17;
  v21[1] = v19;
  v22 = 0;

  sub_296EB4(v21, &v22, a2 & 1, a3, a4);
  if (v4)
  {
  }

  else
  {
    v20 = v22;
    swift_beginAccess();
    v13[2] = v20;
  }

  return v13;
}

void *sub_29AEF0(unint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t *a4, uint64_t a5)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(a1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a1)
  {
    v9 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
    v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
    v11 = v10 | HIWORD(v10);
    if (v11 == -1)
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = (v11 + 1);
    }
  }

  else
  {
    v12 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = v12;
  v14 = _swift_stdlib_malloc_size(v13);
  v15 = sub_272A50(a1, (v13 + 4), v13 + v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v15;
  v18 = v16;
  v25[0] = 0;

  v19 = ccrng(v25);
  if (!v19)
  {
    goto LABEL_19;
  }

  if (v25[0])
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v20 = ccecdh_compute_shared_secret(a2, a3, a4, (v18 + v17), v19);
  if (v20)
  {
    v21 = v20;
    sub_273BE4();
    swift_allocError();
    *v22 = v21;
    *(v22 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v13[2] = a5;
  }

  return v13;
}

unint64_t sub_29B110(unint64_t result, void (*a2)(void *, uint64_t *))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  if (HIDWORD(result))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (result)
  {
    v5 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
    v7 = v6 | HIWORD(v6);
    if (v7 == -1)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = (v7 + 1);
    }
  }

  else
  {
    v8 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = v8;
  v10 = _swift_stdlib_malloc_size(v9);
  v11 = sub_272A50(v3, (v9 + 4), v9 + v10);
  v13 = v12 + v11;
  v15 = v12 + v14;
  if (!v12)
  {
    v15 = 0;
    v13 = 0;
  }

  v17[0] = v13;
  v17[1] = v15;
  v18 = 0;

  a2(v17, &v18);
  if (v2)
  {
  }

  else
  {
    v16 = v18;
    swift_beginAccess();
    v9[2] = v16;
  }

  return v9;
}

unint64_t sub_29B2B4(unint64_t result, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t (*a6)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  if (HIDWORD(result))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v26 = a6;
  if (result)
  {
    v10 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
    v12 = v11 | HIWORD(v11);
    v13 = a4;
    v14 = a5;
    v15 = v6;
    if (v12 == -1)
    {
      v16 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = (v12 + 1);
    }
  }

  else
  {
    v13 = a4;
    v14 = a5;
    v15 = v6;
    v16 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v17 = swift_allocObject();
  v27 = &v25;
  v17[2] = 0;
  v17[3] = v16;
  v18 = _swift_stdlib_malloc_size(v17);
  v19 = sub_272A50(v7, (v17 + 4), v17 + v18);
  v21 = (v20 + v19);
  v23 = (v20 + v22);
  if (!v20)
  {
    v23 = 0;
    v21 = 0;
  }

  v28[0] = v21;
  v28[1] = v23;
  v29 = 0;
  sub_2582E4(a2, a3);
  sub_2582E4(a2, a3);

  sub_296FD8(v28, &v29, a2, a3, v13, v14, v26);
  if (v15)
  {
    sub_258780(a2, a3);
  }

  else
  {
    v24 = v29;
    swift_beginAccess();
    v17[2] = v24;
    sub_258780(a2, a3);
  }

  sub_258780(a2, a3);
  return v17;
}

size_t sub_29B4A8()
{
  v1 = _swift_stdlib_malloc_size(v0) - 32;
  result = swift_beginAccess();
  v3 = v0[2];
  if (__OFSUB__(v1, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (((v1 - v3) & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = _swift_stdlib_malloc_size(v0);
  if ((result - 32) >= v3)
  {
    v0[2] = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t sub_29B528(int64_t a1, int64_t a2)
{
  result = swift_beginAccess();
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v2[2];
  if (__OFSUB__(v7, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v7 - v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = __OFSUB__(0, v6);
  v9 = a1 - a2;
  if (v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_299E30(a2, v7, v9);
  if (a1 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < a1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = _swift_stdlib_malloc_size(v2);
  v10 = v2[2];
  v11 = v10 + v9;
  if (!__OFADD__(v10, v9))
  {
    result = swift_beginAccess();
    v2[2] = v11;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

size_t sub_29B624(int64_t a1, int64_t a2)
{
  v3 = v2;
  v6 = *v2;
  result = swift_beginAccess();
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = v6[2];
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = _swift_stdlib_malloc_size(v6);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v11 - 32) >= v10)
  {
    if (a2 >= a1)
    {
      return sub_29B528(a1, a2);
    }

    goto LABEL_21;
  }

  if (v10 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v10))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10)
  {
    v12 = (v10 - 1) | ((v10 - 1) >> 1) | (((v10 - 1) | ((v10 - 1) >> 1)) >> 2);
    v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
    v14 = v13 | HIWORD(v13);
    if (v14 == -1)
    {
      v15 = 0xFFFFFFFFLL;
    }

    else
    {
      v15 = (v14 + 1);
    }
  }

  else
  {
    v15 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v15;
  if (a1 < 0)
  {
    goto LABEL_23;
  }

  v16 = result;
  v17 = *v3;
  result = swift_beginAccess();
  v18 = v17[2];
  if (v18 < a2)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  sub_2977AC(v17, 0, a1);
  sub_29B4A8();
  sub_2977AC(v17, a2, v18);

  *v3 = v16;
  return result;
}

size_t sub_29B7A4(void *a1, size_t a2)
{
  v5 = **(v2 + 16);
  swift_beginAccess();
  return sub_29858C(*(v5 + 16), *(v5 + 16), a1, a2);
}

uint64_t sub_29B828(void *a1, _BYTE *a2, uint64_t a3)
{

  return sub_E418(a1, a2, a3);
}

uint64_t sub_29B880(void *a1, _BYTE *a2, uint64_t a3)
{

  return sub_E470(a1, a2, a3);
}

uint64_t sub_29B8D8(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  return sub_E368(a1, a2, a3, a4, a5);
}

uint64_t sub_29B934(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_E3C0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_29B9F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_518DF8);
  sub_3033E8();
  return v1;
}

char *sub_29BA74@<X0>(char *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result || (v3 = result, v4 = a2 - result, a2 == result))
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_7:
    *a3 = v5;
    a3[1] = 0;
    return result;
  }

  v6 = a3;
  result = sub_252148(a2 - result, 0);
  if (a2 > v3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      result = memmove(result + 32, v3, v4);
      a3 = v6;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29BB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v36 = a1;
  v37 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_303B88();
  __chkstk_darwin(v9 - 8);
  v35 = &v32 - v10;
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  v18 = a2;
  sub_3032E8();
  v19 = sub_303B08();
  v20 = *(v12 + 8);
  v20(v17, v11);
  if (v19 != 1)
  {
    v29 = sub_2A0C94(v18, a4, *(*(*(*(a6 + 8) + 8) + 8) + 8));
    v31 = v30;
    v38[0] = v29;
    v38[1] = v30;
    v28 = sub_29C030(v36, v38, v37, &type metadata for Data, *(v34 + 8), &protocol witness table for Data);
    sub_258780(v29, v31);
    return v28 & 1;
  }

  sub_3032E8();
  v21 = v35;
  sub_303B18();
  v20(v15, v11);
  v22 = AssociatedTypeWitness;
  v23 = *(AssociatedTypeWitness - 8);
  result = (*(v23 + 48))(v21, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v25 = *(v34 + 8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = v35;
    v28 = sub_29C030(v36, v35, v37, v22, v25, AssociatedConformanceWitness);
    (*(v23 + 8))(v27, v22);
    return v28 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_29BE58(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_303DF8();
  v19 = v6;
  v20._countAndFlagsBits = 8250;
  v20._object = 0xE200000000000000;
  sub_303988(v20);
  (*(v3 + 16))(v5, v1, a1);
  result = sub_303AF8();
  v8 = *(result + 16);
  if (v8 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = 2 * v8;
  if (2 * v8 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v10 = result;
  if (v8)
  {
    v11 = sub_303AE8();
    v11[2] = v9;
    bzero(v11 + 4, v9);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v16 = 0;
  v17 = v11;
  sub_303AD8();
  sub_26E640(v10, &v17, &v16);

  v12 = sub_303958();
  v14 = v13;

  v21._countAndFlagsBits = v12;
  v21._object = v14;
  sub_303988(v21);

  return v18;
}

uint64_t sub_29C0D0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v14 = *a2;
  v10 = (*(*(a4 + 8) + 16))(&v14, a3);
  if (v5)
  {
    return (*(*(a3 - 8) + 8))(a1, a3);
  }

  sub_258780(v10, v11);
  v13 = _s5DHKEMO9PublicKeyVMa();
  result = (*(*(a3 - 8) + 32))(&a5[*(v13 + 36)], a1, a3);
  *a5 = v9;
  return result;
}