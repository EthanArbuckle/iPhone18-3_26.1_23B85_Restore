unint64_t _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = (a2 + 56);
  v5 = *(a2 + 72);
  v87[0] = *(a2 + 56);
  v87[1] = v5;
  v88[0] = *(a2 + 88);
  v6 = (a2 + 72);
  v7 = (a2 + 84);
  v8 = (a2 + 104);
  *(v88 + 9) = *(a2 + 97);
  v9 = (a2 + 56);
  v10 = (a2 + 72);
  v11 = (a2 + 84);
  v12 = (a2 + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11 >= 2u)
    {
      v14 = *v10;
      if ((*(v14 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v87);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_54;
  }

  result = v15 + 24 * *(v14 + 8);
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_46;
  }

  v77 = *v16;
  v17 = *(v16 + 2);
  v18 = *(v16 + 72);
  v19 = *(v16 + 104);
  v75 = *(v16 + 88);
  v76[0] = v19;
  *(v76 + 13) = *(v16 + 117);
  v20 = *(v16 + 40);
  v71 = *(v16 + 24);
  v72 = v20;
  v73 = *(v16 + 56);
  v74 = v18;
  v21 = *v17;
  v63 = v3;
  if (*(*v17 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v22 & 1) != 0))
  {
    v23 = *(v21 + 56) + 24 * result;
    v3 = *v23;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
  }

  else
  {
    v24 = 0;
    v25 = 0xFFFFFFFFLL;
  }

  v26 = v4[1];
  v85[0] = *v4;
  v85[1] = v26;
  v86[0] = v4[2];
  *(v86 + 9) = *(v4 + 41);
  v27 = v4;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  while (1)
  {
    v31 = *v30;
    if (*v29 >= 2u)
    {
      v32 = *v28;
      if ((*(v32 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v85);
    }

    v28 = (v31 + 16);
    v29 = (v31 + 28);
    v30 = (v31 + 48);
    v27 = v31;
  }

  v33 = *v27;
  if (!v33)
  {
    goto LABEL_55;
  }

  v34 = *(*(v33 + 24 * *(v32 + 8)) + 112);
  if (!v34)
  {
    goto LABEL_47;
  }

  *v34 = v77;
  v35 = v73;
  *(v34 + 72) = v74;
  v36 = v76[0];
  *(v34 + 88) = v75;
  *(v34 + 104) = v36;
  v37 = v72;
  *(v34 + 24) = v71;
  *(v34 + 40) = v37;
  *(v34 + 16) = v17;
  *(v34 + 117) = *(v76 + 13);
  *(v34 + 56) = v35;
  v78 = v3;
  v79 = v24;
  v80 = v25;
  if (v25 != -1)
  {
    return v25;
  }

  if (*(v2 + 48))
  {
    goto LABEL_48;
  }

  v38 = *(v2 + 22);
  v39 = *v2;
  if (v39 >= *(v38 + 116))
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v40 = *(v38 + 104);
  if (!v40)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v41 = *(v40 + 8 * v39);
  v42 = *(*(v41 + 8) + 88);
  v2 = specialized Strong.subscript.read();
  v44 = *v43;
  if (!*(*v43 + 16))
  {
LABEL_50:
    (v2)(v83, 0);
    __break(1u);
    goto LABEL_51;
  }

  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v24);
  if ((v46 & 1) == 0)
  {
LABEL_51:
    result = (v2)(v83, 0);
    __break(1u);
    goto LABEL_52;
  }

  v25 = *(*(v44 + 56) + 4 * v45);
  result = (v2)(v83, 0);
  *(*(v41 + 8) + 88) = v42;
  v80 = v25;
  v47 = v4[1];
  v83[0] = *v4;
  v83[1] = v47;
  v84[0] = v4[2];
  *(v84 + 9) = *(v4 + 41);
  v48 = v8;
  v49 = v7;
  v50 = v6;
  for (i = v4; ; i = v52)
  {
    v52 = *v48;
    if (*v49 >= 2u)
    {
      v53 = *v50;
      if ((*(v53 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v52)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v83);
    }

    v50 = (v52 + 16);
    v49 = (v52 + 28);
    v48 = (v52 + 48);
  }

  if (!*i)
  {
    goto LABEL_56;
  }

  result = *i + 24 * *(v53 + 8);
  v54 = *(*result + 112);
  if (v54)
  {
    v55 = v54[5];
    v68 = v54[4];
    v69 = v55;
    v70[0] = v54[6];
    *(v70 + 13) = *(v54 + 109);
    v64 = *v54;
    v65 = v54[1];
    v56 = v54[3];
    v66 = v54[2];
    v67 = v56;
    result = specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v65, v63, &v78);
    v57 = v4[1];
    v81[0] = *v4;
    v81[1] = v57;
    v82[0] = v4[2];
    *(v82 + 9) = *(v4 + 41);
    while (1)
    {
      v58 = *v8;
      if (*v7 >= 2u && (*(*v6 + 12) & 1) == 0)
      {
        break;
      }

      if (!v58)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v81);
      }

      v6 = (v58 + 16);
      v7 = (v58 + 28);
      v8 = (v58 + 48);
      v4 = v58;
    }

    if (!*v4)
    {
      goto LABEL_57;
    }

    result = *v4 + 24 * *(*v6 + 8);
    v59 = *(*result + 112);
    if (v59)
    {
      v60 = v69;
      v59[4] = v68;
      v59[5] = v60;
      v59[6] = v70[0];
      *(v59 + 109) = *(v70 + 13);
      v61 = v65;
      *v59 = v64;
      v59[1] = v61;
      v62 = v67;
      v59[2] = v66;
      v59[3] = v62;
      return v25;
    }

    goto LABEL_53;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

unint64_t _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = (a2 + 56);
  v5 = *(a2 + 72);
  v87[0] = *(a2 + 56);
  v87[1] = v5;
  v88[0] = *(a2 + 88);
  v6 = (a2 + 72);
  v7 = (a2 + 84);
  v8 = (a2 + 104);
  *(v88 + 9) = *(a2 + 97);
  v9 = (a2 + 56);
  v10 = (a2 + 72);
  v11 = (a2 + 84);
  v12 = (a2 + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11 >= 2u)
    {
      v14 = *v10;
      if ((*(v14 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v87);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_54;
  }

  result = v15 + 24 * *(v14 + 8);
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_46;
  }

  v17 = *v16;
  v18 = *(v16 + 11);
  v76 = *(v16 + 9);
  v77 = v18;
  *v78 = *(v16 + 13);
  *&v78[13] = *(v16 + 117);
  v19 = *(v16 + 3);
  v72 = *(v16 + 1);
  v73 = v19;
  v20 = *(v16 + 7);
  v74 = *(v16 + 5);
  v75 = v20;
  v21 = *v17;
  v64 = v3;
  if (*(*v17 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v22 & 1) != 0))
  {
    v23 = *(v21 + 56) + 24 * result;
    v3 = *v23;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
  }

  else
  {
    v24 = 0;
    v25 = 0xFFFFFFFFLL;
  }

  v26 = v4[1];
  v85[0] = *v4;
  v85[1] = v26;
  v86[0] = v4[2];
  *(v86 + 9) = *(v4 + 41);
  v27 = v4;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  while (1)
  {
    v31 = *v30;
    if (*v29 >= 2u)
    {
      v32 = *v28;
      if ((*(v32 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v85);
    }

    v28 = (v31 + 16);
    v29 = (v31 + 28);
    v30 = (v31 + 48);
    v27 = v31;
  }

  v33 = *v27;
  if (!v33)
  {
    goto LABEL_55;
  }

  v34 = *(*(v33 + 24 * *(v32 + 8)) + 112);
  if (!v34)
  {
    goto LABEL_47;
  }

  v35 = v77;
  *(v34 + 72) = v76;
  *(v34 + 88) = v35;
  *(v34 + 104) = *v78;
  v36 = v73;
  *(v34 + 8) = v72;
  *(v34 + 24) = v36;
  v37 = v75;
  *(v34 + 40) = v74;
  *v34 = v17;
  *(v34 + 117) = *&v78[13];
  *(v34 + 56) = v37;
  v79[0] = v3;
  v79[1] = v24;
  v80 = v25;
  if (v25 != -1)
  {
    return v25;
  }

  if (*(v2 + 48))
  {
    goto LABEL_48;
  }

  v38 = *(v2 + 22);
  v39 = *v2;
  if (v39 >= *(v38 + 116))
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v40 = *(v38 + 104);
  if (!v40)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v41 = *(v40 + 8 * v39);
  v42 = *(*(v41 + 8) + 128);
  v2 = specialized Strong.subscript.read();
  v44 = *v43;
  if (!*(*v43 + 16))
  {
LABEL_50:
    (v2)(v83, 0);
    __break(1u);
    goto LABEL_51;
  }

  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v24);
  if ((v46 & 1) == 0)
  {
LABEL_51:
    result = (v2)(v83, 0);
    __break(1u);
    goto LABEL_52;
  }

  v25 = *(*(v44 + 56) + 4 * v45);
  result = (v2)(v83, 0);
  *(*(v41 + 8) + 128) = v42;
  v80 = v25;
  v47 = v4[1];
  v83[0] = *v4;
  v83[1] = v47;
  v84[0] = v4[2];
  *(v84 + 9) = *(v4 + 41);
  v48 = v8;
  v49 = v7;
  v50 = v6;
  for (i = v4; ; i = v52)
  {
    v52 = *v48;
    if (*v49 >= 2u)
    {
      v53 = *v50;
      if ((*(v53 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v52)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v83);
    }

    v50 = (v52 + 16);
    v49 = (v52 + 28);
    v48 = (v52 + 48);
  }

  if (!*i)
  {
    goto LABEL_56;
  }

  result = *i + 24 * *(v53 + 8);
  v54 = *(*result + 112);
  if (v54)
  {
    v55 = v54[5];
    v69 = v54[4];
    v70 = v55;
    v71[0] = v54[6];
    *(v71 + 13) = *(v54 + 109);
    v56 = v54[1];
    v65 = *v54;
    v66 = v56;
    v57 = v54[3];
    v67 = v54[2];
    v68 = v57;
    result = specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v65, v64, v79, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMd, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMR);
    v58 = v4[1];
    v81[0] = *v4;
    v81[1] = v58;
    v82[0] = v4[2];
    *(v82 + 9) = *(v4 + 41);
    while (1)
    {
      v59 = *v8;
      if (*v7 >= 2u && (*(*v6 + 12) & 1) == 0)
      {
        break;
      }

      if (!v59)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v81);
      }

      v6 = (v59 + 16);
      v7 = (v59 + 28);
      v8 = (v59 + 48);
      v4 = v59;
    }

    if (!*v4)
    {
      goto LABEL_57;
    }

    result = *v4 + 24 * *(*v6 + 8);
    v60 = *(*result + 112);
    if (v60)
    {
      v61 = v70;
      v60[4] = v69;
      v60[5] = v61;
      v60[6] = v71[0];
      *(v60 + 109) = *(v71 + 13);
      v62 = v66;
      *v60 = v65;
      v60[1] = v62;
      v63 = v68;
      v60[2] = v67;
      v60[3] = v63;
      return v25;
    }

    goto LABEL_53;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

unint64_t _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = (a2 + 56);
  v5 = *(a2 + 72);
  v87[0] = *(a2 + 56);
  v87[1] = v5;
  v88[0] = *(a2 + 88);
  v6 = (a2 + 72);
  v7 = (a2 + 84);
  v8 = (a2 + 104);
  *(v88 + 9) = *(a2 + 97);
  v9 = (a2 + 56);
  v10 = (a2 + 72);
  v11 = (a2 + 84);
  v12 = (a2 + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11 >= 2u)
    {
      v14 = *v10;
      if ((*(v14 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v87);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_54;
  }

  result = v15 + 24 * *(v14 + 8);
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_46;
  }

  v17 = v16[1];
  v64 = v3;
  v65 = *v16;
  v18 = *(v16 + 6);
  v77 = *(v16 + 5);
  v78[0] = v18;
  *(v78 + 13) = *(v16 + 109);
  v19 = *(v16 + 2);
  v73 = *(v16 + 1);
  v74 = v19;
  v20 = *(v16 + 4);
  v75 = *(v16 + 3);
  v76 = v20;
  v21 = *v17;
  if (*(*v17 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v22 & 1) != 0))
  {
    v23 = *(v21 + 56) + 24 * result;
    v3 = *v23;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
  }

  else
  {
    v24 = 0;
    v25 = 0xFFFFFFFFLL;
  }

  v26 = v4[1];
  v85[0] = *v4;
  v85[1] = v26;
  v86[0] = v4[2];
  *(v86 + 9) = *(v4 + 41);
  v27 = v4;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  while (1)
  {
    v31 = *v30;
    if (*v29 >= 2u)
    {
      v32 = *v28;
      if ((*(v32 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v85);
    }

    v28 = (v31 + 16);
    v29 = (v31 + 28);
    v30 = (v31 + 48);
    v27 = v31;
  }

  v33 = *v27;
  if (!v33)
  {
    goto LABEL_55;
  }

  v34 = *(*(v33 + 24 * *(v32 + 8)) + 112);
  if (!v34)
  {
    goto LABEL_47;
  }

  *v34 = v65;
  *(v34 + 8) = v17;
  v35 = v78[0];
  *(v34 + 80) = v77;
  *(v34 + 96) = v35;
  *(v34 + 109) = *(v78 + 13);
  v36 = v74;
  *(v34 + 16) = v73;
  *(v34 + 32) = v36;
  v37 = v76;
  *(v34 + 48) = v75;
  *(v34 + 64) = v37;
  v79[0] = v3;
  v79[1] = v24;
  v80 = v25;
  if (v25 != -1)
  {
    return v25;
  }

  if (*(v2 + 48))
  {
    goto LABEL_48;
  }

  v38 = *(v2 + 22);
  v39 = *v2;
  if (v39 >= *(v38 + 116))
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v40 = *(v38 + 104);
  if (!v40)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v41 = *(v40 + 8 * v39);
  v42 = *(*(v41 + 8) + 152);
  v2 = specialized Strong.subscript.read();
  v44 = *v43;
  if (!*(*v43 + 16))
  {
LABEL_50:
    (v2)(v83, 0);
    __break(1u);
    goto LABEL_51;
  }

  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v24);
  if ((v46 & 1) == 0)
  {
LABEL_51:
    result = (v2)(v83, 0);
    __break(1u);
    goto LABEL_52;
  }

  v25 = *(*(v44 + 56) + 4 * v45);
  result = (v2)(v83, 0);
  *(*(v41 + 8) + 152) = v42;
  v80 = v25;
  v47 = v4[1];
  v83[0] = *v4;
  v83[1] = v47;
  v84[0] = v4[2];
  *(v84 + 9) = *(v4 + 41);
  v48 = v8;
  v49 = v7;
  v50 = v6;
  for (i = v4; ; i = v52)
  {
    v52 = *v48;
    if (*v49 >= 2u)
    {
      v53 = *v50;
      if ((*(v53 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v52)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v83);
    }

    v50 = (v52 + 16);
    v49 = (v52 + 28);
    v48 = (v52 + 48);
  }

  if (!*i)
  {
    goto LABEL_56;
  }

  result = *i + 24 * *(v53 + 8);
  v54 = *(*result + 112);
  if (v54)
  {
    v55 = v54[5];
    v70 = v54[4];
    v71 = v55;
    v72[0] = v54[6];
    *(v72 + 13) = *(v54 + 109);
    v56 = v54[1];
    v66 = *v54;
    v67 = v56;
    v57 = v54[3];
    v68 = v54[2];
    v69 = v57;
    result = specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v66 + 1, v64, v79, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport11GraphCtxtIDV4name_AE0G3RefV9referencetGMd, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport11GraphCtxtIDV4name_AE0G3RefV9referencetGMR);
    v58 = v4[1];
    v81[0] = *v4;
    v81[1] = v58;
    v82[0] = v4[2];
    *(v82 + 9) = *(v4 + 41);
    while (1)
    {
      v59 = *v8;
      if (*v7 >= 2u && (*(*v6 + 12) & 1) == 0)
      {
        break;
      }

      if (!v59)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v81);
      }

      v6 = (v59 + 16);
      v7 = (v59 + 28);
      v8 = (v59 + 48);
      v4 = v59;
    }

    if (!*v4)
    {
      goto LABEL_57;
    }

    result = *v4 + 24 * *(*v6 + 8);
    v60 = *(*result + 112);
    if (v60)
    {
      v61 = v71;
      v60[4] = v70;
      v60[5] = v61;
      v60[6] = v72[0];
      *(v60 + 109) = *(v72 + 13);
      v62 = v67;
      *v60 = v66;
      v60[1] = v62;
      v63 = v69;
      v60[2] = v68;
      v60[3] = v63;
      return v25;
    }

    goto LABEL_53;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t TraceAddress.init(test:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(a3 + 112))(a2, a3);
  (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
  (*(a3 + 64))(v10, a2, a3);
  (*(a3 + 88))(1, a2, a3);
  return (*(v7 + 8))(a1, AssociatedTypeWitness);
}

uint64_t TraceAddress.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v13 - v8;
  (*(a3 + 56))(a2, a3);
  v10 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  dispatch thunk of Hashable.hash(into:)();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  v11 = (*(a3 + 80))(a2, a3);
  return MEMORY[0x26D69DC00](v11);
}

uint64_t static TraceAddress.invalid.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v9 - v6;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static FixedWidthInteger.max.getter();
  return (*(a2 + 104))(v7, -1, a1, a2);
}

uint64_t _s21SwiftUITracingSupport12TraceAddressPAAE8describe5stateSSAA15InspectionStateV_tFAA10SubgraphIDV_Ttg5Tm()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v0);

  MEMORY[0x26D69CDB0](46, 0xE100000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v1);

  return 64;
}

uint64_t _s21SwiftUITracingSupport12TraceAddressPAAE8describe5stateSSAA15InspectionStateV_tFAA11AttributeIDV_Ttg5()
{
  MEMORY[0x26D69CDB0](64, 0xE100000000000000);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v0);

  MEMORY[0x26D69CDB0](46, 0xE100000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v1);

  return 0;
}

uint64_t TraceAddress.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v13 - v8;
  v14 = 0;
  v15 = 0xE000000000000000;
  MEMORY[0x26D69CDB0](64, 0xE100000000000000);
  (*(a3 + 56))(a2, a3);
  v10 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  MEMORY[0x26D69CDB0](46, 0xE100000000000000);
  v13[1] = (*(a3 + 80))(a2, a3);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v11);

  return v14;
}

unint64_t specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *a3;
  v9 = a3[1];
  v11 = *(a3 + 4);
  v12 = *a1;
  v13 = **a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v12;
  v29 = *v12;
  *v12 = 0x8000000000000000;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v17;
  if (v15[3] < v21)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native, a4, a5);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v5 & 1) == (v22 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v25 = result;
    specialized _NativeDictionary.copy()(a4, a5);
    result = v25;
    v23 = v29;
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v23 = v29;
  if (v5)
  {
LABEL_7:
    v24 = v23[7] + 24 * result;
    *v24 = v10;
    *(v24 + 8) = v9;
    *(v24 + 16) = v11;
LABEL_12:
    *v12 = v23;
    return result;
  }

LABEL_10:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = a2;
  v26 = v23[7] + 24 * result;
  *v26 = v10;
  *(v26 + 8) = v9;
  *(v26 + 16) = v11;
  v27 = v23[2];
  v20 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v20)
  {
    v23[2] = v28;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static TraceAddress.rename(address:initialize:within:)@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = swift_getAssociatedTypeWitness();
  v36 = *(v43 - 8);
  v40 = *(v36 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v37 = &v36 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = type metadata accessor for Optional();
  v15 = *(v44 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v44);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  v22 = **a1;
  v23 = *(v22 + 16);
  v41 = a2;
  if (v23 && (v24 = swift_getAssociatedConformanceWitness(), v25 = __RawDictionaryStorage.find<A>(_:)(a2, v11, *(*(v24 + 8) + 16)), (v26 & 1) != 0))
  {
    v27 = *(v22 + 56);
    v28 = *(TupleTypeMetadata2 - 8);
    (*(v28 + 16))(v21, v27 + *(v28 + 72) * v25, TupleTypeMetadata2);
    (*(v28 + 56))(v21, 0, 1, TupleTypeMetadata2);
  }

  else
  {
    v28 = *(TupleTypeMetadata2 - 8);
    (*(v28 + 56))(v21, 1, 1, TupleTypeMetadata2);
  }

  v29 = v44;
  (*(v15 + 32))(v19, v21, v44);
  if ((*(v28 + 48))(v19, 1, TupleTypeMetadata2) != 1)
  {
    return (*(v28 + 32))(v45, v19, TupleTypeMetadata2);
  }

  v30 = *(TupleTypeMetadata2 + 48);
  v31 = v37;
  (*(v38 + 16))(v37, v41, v11);
  v32 = v45;
  (*(a4 + 104))(v31, 0, a3, a4);
  v33 = v43;
  swift_getAssociatedConformanceWitness();
  v34 = v42;
  result = dispatch thunk of static FixedWidthInteger.max.getter();
  if (v40 == *(*(AssociatedTypeWitness - 8) + 64))
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(v32 + v30, v34, AssociatedTypeWitness);
    (*(v36 + 8))(v34, v33);
    return (*(v15 + 8))(v19, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in static TraceAddress.ref(_:within:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v24 - v16;
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a2, a3);
  MEMORY[0x26D69CA60](v21, **v25, a3, AssociatedTypeWitness, *(a4 + 8));
  (*(v10 + 32))(v14, v17, v9);
  v22 = *(AssociatedTypeWitness - 8);
  result = (*(v22 + 48))(v14, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 8))(v21, a3);
    return (*(v22 + 32))(v24, v14, AssociatedTypeWitness);
  }

  return result;
}

void (*Snapshot.ReferenceMap.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v11[4] = v13;
  v14 = *(v13 - 8);
  v11[5] = v14;
  if (v9)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(v14 + 64));
  }

  v11[6] = v15;
  v16 = *(a5 + 8);
  type metadata accessor for Dictionary();
  v11[7] = Strong.subscript.read();
  MEMORY[0x26D69CA60](a2, *v17, a4, AssociatedTypeWitness, v16);
  return Snapshot.ReferenceMap.subscript.read;
}

void Snapshot.ReferenceMap.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  (*(*(*a1 + 40) + 8))(v2, *(*a1 + 32));
  v3(v1, 0);
  free(v2);

  free(v1);
}

unint64_t specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(uint64_t **a1, unsigned int a2, int *a3)
{
  v5 = *a3;
  v6 = *(a3 + 1);
  v7 = a3[4];
  v8 = *a1;
  v9 = **a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v8;
  v25 = *v8;
  *v8 = 0x8000000000000000;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v13;
  if (v11[3] < v17)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v3 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = result;
    specialized _NativeDictionary.copy()();
    result = v21;
    v19 = v25;
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v19 = v25;
  if (v3)
  {
LABEL_7:
    v20 = v19[7] + 24 * result;
    *v20 = v5;
    *(v20 + 8) = v6;
    *(v20 + 16) = v7;
LABEL_12:
    *v8 = v19;
    return result;
  }

LABEL_10:
  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 4 * result) = a2;
  v22 = v19[7] + 24 * result;
  *v22 = v5;
  *(v22 + 8) = v6;
  *(v22 + 16) = v7;
  v23 = v19[2];
  v16 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v16)
  {
    v19[2] = v24;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in static TraceAddress.rename(address:initialize:within:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v17[1] = a2;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = *(TupleTypeMetadata2 - 8);
  (*(v11 + 16))(v17 - v9, a3, TupleTypeMetadata2);
  (*(v11 + 56))(v10, 0, 1, TupleTypeMetadata2);
  v12 = *a1;
  swift_getAssociatedTypeWitness();
  v13 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  type metadata accessor for Dictionary._Variant();
  v14 = Dictionary._Variant.subscript.modify();
  (*(v7 + 40))(v15, v10, v6);
  return v14(v18, 0);
}

uint64_t _s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = a2 + 56;
  v5 = *(a2 + 72);
  v87[0] = *(a2 + 56);
  v87[1] = v5;
  v88[0] = *(a2 + 88);
  v6 = a2 + 72;
  v7 = a2 + 84;
  v8 = (a2 + 104);
  *(v88 + 9) = *(a2 + 97);
  v9 = (a2 + 56);
  v10 = (a2 + 72);
  v11 = a2 + 84;
  v12 = (a2 + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11 >= 2u)
    {
      v14 = *v10;
      if ((*(v14 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v87);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_58;
  }

  result = v15 + 24 * *(v14 + 8);
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_51;
  }

  v17 = *v16;
  v18 = *(v16 + 11);
  v75 = *(v16 + 9);
  v76 = v18;
  v77[0] = *(v16 + 13);
  *(v77 + 13) = *(v16 + 117);
  v19 = *(v16 + 3);
  v71 = *(v16 + 1);
  v72 = v19;
  v20 = *(v16 + 7);
  v73 = *(v16 + 5);
  v74 = v20;
  v21 = *v17;
  v22 = 0uLL;
  if (*(*v17 + 16))
  {
    v23 = v3;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v24)
    {
      v25 = 0;
      v26 = *(v21 + 56) + 24 * result;
      v22 = *v26;
      v27 = *(v26 + 16);
    }

    else
    {
      v27 = 0;
      v25 = 1;
      v22 = 0uLL;
    }
  }

  else
  {
    v23 = v3;
    v27 = 0;
    v25 = 1;
  }

  v28 = v4[1];
  v85[0] = *v4;
  v85[1] = v28;
  v86[0] = v4[2];
  *(v86 + 9) = *(v4 + 41);
  v29 = v4;
  v30 = v6;
  v31 = v7;
  v32 = v8;
  while (1)
  {
    v33 = *v32;
    if (*v31 >= 2u)
    {
      v34 = *v30;
      if ((*(v34 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v33)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v85);
    }

    v30 = (v33 + 16);
    v31 = (v33 + 28);
    v32 = (v33 + 48);
    v29 = v33;
  }

  v35 = *v29;
  if (!v35)
  {
    goto LABEL_59;
  }

  result = v35 + 24 * *(v34 + 8);
  v36 = *(*result + 112);
  if (!v36)
  {
    goto LABEL_52;
  }

  v37 = v76;
  *(v36 + 72) = v75;
  *(v36 + 88) = v37;
  *(v36 + 104) = v77[0];
  v38 = v72;
  *(v36 + 8) = v71;
  *(v36 + 24) = v38;
  v39 = v74;
  *(v36 + 40) = v73;
  *v36 = v17;
  *(v36 + 117) = *(v77 + 13);
  *(v36 + 56) = v39;
  v78 = v22;
  v79 = v27;
  if (v27 == -1)
  {
    v40 = v25;
  }

  else
  {
    v40 = 1;
  }

  v80 = v25;
  if (v40)
  {
    goto LABEL_47;
  }

  if (a2[48])
  {
    goto LABEL_53;
  }

  v41 = *(a2 + 22);
  v42 = *a2;
  if (v42 >= *(v41 + 116))
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v43 = *(v41 + 104);
  if (!v43)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v44 = *(v43 + 8 * v42);
  *&v83[0] = *(*(v44 + 8) + 128);
  v45 = *&v83[0];
  result = specialized closure #2 in static TraceAddress.ref(ifExists:within:)(v83, &v78);
  *(*(v44 + 8) + 128) = v45;
  if (v80)
  {
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
    return result;
  }

  v79 = result;
  v46 = v4[1];
  v83[0] = *v4;
  v83[1] = v46;
  v84[0] = v4[2];
  *(v84 + 9) = *(v4 + 41);
  v47 = v8;
  v48 = v7;
  v49 = v6;
  for (i = v4; ; i = v51)
  {
    v51 = *v47;
    if (*v48 >= 2u)
    {
      v52 = *v49;
      if ((*(v52 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v51)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v83);
    }

    v49 = (v51 + 16);
    v48 = (v51 + 28);
    v47 = (v51 + 48);
  }

  if (!*i)
  {
    goto LABEL_60;
  }

  result = *i + 24 * *(v52 + 8);
  v53 = *(*result + 112);
  if (!v53)
  {
    goto LABEL_56;
  }

  v54 = v53[5];
  v68 = v53[4];
  v69 = v54;
  v70[0] = v53[6];
  *(v70 + 13) = *(v53 + 109);
  v55 = v53[1];
  v64 = *v53;
  v65 = v55;
  v56 = v53[3];
  v66 = v53[2];
  v67 = v56;
  result = specialized closure #3 in static TraceAddress.ref(ifExists:within:)(&v64, v23, &v78);
  v57 = v4[1];
  v81[0] = *v4;
  v81[1] = v57;
  v82[0] = v4[2];
  *(v82 + 9) = *(v4 + 41);
  while (1)
  {
    v58 = *v8;
    if (*v7 >= 2u && (*(*v6 + 12) & 1) == 0)
    {
      break;
    }

    if (!v58)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v81);
    }

    v6 = (v58 + 16);
    v7 = (v58 + 28);
    v8 = (v58 + 48);
    v4 = v58;
  }

  if (!*v4)
  {
    goto LABEL_61;
  }

  result = *v4 + 24 * *(*v6 + 8);
  v59 = *(*result + 112);
  if (!v59)
  {
    goto LABEL_57;
  }

  v60 = v69;
  v59[4] = v68;
  v59[5] = v60;
  v59[6] = v70[0];
  *(v59 + 109) = *(v70 + 13);
  v61 = v65;
  *v59 = v64;
  v59[1] = v61;
  v62 = v67;
  v59[2] = v66;
  v59[3] = v62;
  v25 = v80;
  v27 = v79;
LABEL_47:
  v63 = v27;
  LOBYTE(v71) = v25;
  if (v25)
  {
    v63 = 0;
  }

  return v63 | (v25 << 32);
}

uint64_t _s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = a2 + 56;
  v5 = *(a2 + 72);
  v87[0] = *(a2 + 56);
  v87[1] = v5;
  v88[0] = *(a2 + 88);
  v6 = a2 + 72;
  v7 = a2 + 84;
  v8 = (a2 + 104);
  *(v88 + 9) = *(a2 + 97);
  v9 = (a2 + 56);
  v10 = (a2 + 72);
  v11 = a2 + 84;
  v12 = (a2 + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11 >= 2u)
    {
      v14 = *v10;
      if ((*(v14 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v87);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_57;
  }

  result = v15 + 24 * *(v14 + 8);
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_50;
  }

  v77 = *v16;
  v17 = *(v16 + 2);
  v18 = *(v16 + 72);
  v19 = *(v16 + 104);
  v75 = *(v16 + 88);
  v76[0] = v19;
  *(v76 + 13) = *(v16 + 117);
  v20 = *(v16 + 40);
  v71 = *(v16 + 24);
  v72 = v20;
  v73 = *(v16 + 56);
  v74 = v18;
  v21 = *v17;
  v63 = v3;
  if (*(*v17 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v22 & 1) != 0))
  {
    v23 = 0;
    v24 = (*(v21 + 56) + 24 * result);
    v25 = *v24;
    v26 = *(v24 + 1);
    v27 = v24[4];
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v23 = 1;
  }

  v28 = v4[1];
  v85[0] = *v4;
  v85[1] = v28;
  v86[0] = v4[2];
  *(v86 + 9) = *(v4 + 41);
  v29 = v4;
  v30 = v6;
  v31 = v7;
  v32 = v8;
  while (1)
  {
    v33 = *v32;
    if (*v31 >= 2u)
    {
      v34 = *v30;
      if ((*(v34 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v33)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v85);
    }

    v30 = (v33 + 16);
    v31 = (v33 + 28);
    v32 = (v33 + 48);
    v29 = v33;
  }

  v35 = *v29;
  if (!v35)
  {
    goto LABEL_58;
  }

  result = v35 + 24 * *(v34 + 8);
  v36 = *(*result + 112);
  if (!v36)
  {
    goto LABEL_51;
  }

  *v36 = v77;
  v37 = v73;
  *(v36 + 72) = v74;
  v38 = v76[0];
  *(v36 + 88) = v75;
  *(v36 + 104) = v38;
  v39 = v72;
  *(v36 + 24) = v71;
  *(v36 + 40) = v39;
  *(v36 + 16) = v17;
  *(v36 + 117) = *(v76 + 13);
  *(v36 + 56) = v37;
  v78[0] = v25;
  v78[1] = v26;
  v79 = v27;
  if (v27 == -1)
  {
    v40 = v23;
  }

  else
  {
    v40 = 1;
  }

  v80 = v23;
  if (v40)
  {
    goto LABEL_46;
  }

  if (a2[48])
  {
    goto LABEL_52;
  }

  v41 = *(a2 + 22);
  v42 = *a2;
  if (v42 >= *(v41 + 116))
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v43 = *(v41 + 104);
  if (!v43)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v44 = *(v43 + 8 * v42);
  *&v83[0] = *(*(v44 + 8) + 88);
  v45 = *&v83[0];
  result = specialized closure #2 in static TraceAddress.ref(ifExists:within:)(v83, v78);
  *(*(v44 + 8) + 88) = v45;
  if (v80)
  {
LABEL_54:
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
    return result;
  }

  v79 = result;
  v46 = v4[1];
  v83[0] = *v4;
  v83[1] = v46;
  v84[0] = v4[2];
  *(v84 + 9) = *(v4 + 41);
  v47 = v8;
  v48 = v7;
  v49 = v6;
  for (i = v4; ; i = v51)
  {
    v51 = *v47;
    if (*v48 >= 2u)
    {
      v52 = *v49;
      if ((*(v52 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v51)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v83);
    }

    v49 = (v51 + 16);
    v48 = (v51 + 28);
    v47 = (v51 + 48);
  }

  if (!*i)
  {
    goto LABEL_59;
  }

  result = *i + 24 * *(v52 + 8);
  v53 = *(*result + 112);
  if (!v53)
  {
    goto LABEL_55;
  }

  v54 = v53[5];
  v68 = v53[4];
  v69 = v54;
  v70[0] = v53[6];
  *(v70 + 13) = *(v53 + 109);
  v64 = *v53;
  v65 = v53[1];
  v55 = v53[3];
  v66 = v53[2];
  v67 = v55;
  result = specialized closure #3 in static TraceAddress.ref(ifExists:within:)(&v65, v63, v78);
  v56 = v4[1];
  v81[0] = *v4;
  v81[1] = v56;
  v82[0] = v4[2];
  *(v82 + 9) = *(v4 + 41);
  while (1)
  {
    v57 = *v8;
    if (*v7 >= 2u && (*(*v6 + 12) & 1) == 0)
    {
      break;
    }

    if (!v57)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v81);
    }

    v6 = (v57 + 16);
    v7 = (v57 + 28);
    v8 = (v57 + 48);
    v4 = v57;
  }

  if (!*v4)
  {
    goto LABEL_60;
  }

  result = *v4 + 24 * *(*v6 + 8);
  v58 = *(*result + 112);
  if (!v58)
  {
    goto LABEL_56;
  }

  v59 = v69;
  v58[4] = v68;
  v58[5] = v59;
  v58[6] = v70[0];
  *(v58 + 109) = *(v70 + 13);
  v60 = v65;
  *v58 = v64;
  v58[1] = v60;
  v61 = v67;
  v58[2] = v66;
  v58[3] = v61;
  v23 = v80;
  v27 = v79;
LABEL_46:
  v62 = v27;
  LOBYTE(v71) = v23;
  if (v23)
  {
    v62 = 0;
  }

  return v62 | (v23 << 32);
}

uint64_t static TraceAddress.ref(ifExists:within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v93 = a1;
  v94 = a2;
  v84 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = *(AssociatedTypeWitness - 8);
  v8 = *(v98 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v10;
  MEMORY[0x28223BE20](v9);
  v72 = &v71 - v11;
  v12 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v81 = *(TupleTypeMetadata2 - 8);
  v13 = *(v81 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v87 = &v71 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v85 = *(v16 - 8);
  v17 = *(v85 + 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  v88 = v12;
  v96 = *(v12 - 8);
  v21 = *(v96 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v80 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v95 = &v71 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v71 - v26;
  v28 = swift_getTupleTypeMetadata2();
  v29 = type metadata accessor for Optional();
  v82 = *(v29 - 8);
  v30 = *(v82 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v71 - v31;
  v100 = a3;
  v101 = a4;
  v102 = v93;
  v33 = *(a4 + 136);
  v83 = v34;
  v78 = a3;
  v79 = a4;
  v76 = a4 + 136;
  v75 = v33;
  (v33)(v94, partial apply for closure #1 in static TraceAddress.ref(ifExists:within:), v99);
  v35 = *(v28 - 8);
  v36 = *(v35 + 48);
  v37 = 1;
  v91 = v32;
  v92 = v28;
  v86 = v36;
  v90 = v35 + 48;
  if (!v36(v32, 1, v28))
  {
    (*(v98 + 16))(v27, &v91[*(v92 + 48)], AssociatedTypeWitness);
    v37 = 0;
  }

  v38 = v98 + 56;
  v39 = *(v98 + 56);
  v39(v27, v37, 1, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static FixedWidthInteger.max.getter();
  if (v17 != v89)
  {
    __break(1u);
    goto LABEL_17;
  }

  v71 = AssociatedConformanceWitness;
  v41 = v98;
  v42 = *(v98 + 16);
  v43 = v95;
  v74 = v98 + 16;
  v73 = v42;
  v42(v95, v20, AssociatedTypeWitness);
  (*(v85 + 1))(v20, v16);
  v89 = v38;
  v85 = v39;
  v39(v43, 0, 1, AssociatedTypeWitness);
  v44 = v96;
  v45 = *(TupleTypeMetadata2 + 48);
  v46 = *(v96 + 16);
  v48 = v87;
  v47 = v88;
  v46(v87, v43, v88);
  (*(v44 + 32))(&v48[v45], v27, v47);
  v49 = *(v41 + 48);
  if (v49(v48, 1, AssociatedTypeWitness) == 1)
  {
    v50 = *(v44 + 8);
    v50(v43, v47);
    v51 = v49(&v48[v45], 1, AssociatedTypeWitness);
    v52 = v86;
    if (v51 == 1)
    {
      v53 = (v50)(v48, v47);
      v55 = v91;
      v54 = v92;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v56 = v80;
  v46(v80, v48, v47);
  if (v49(&v48[v45], 1, AssociatedTypeWitness) == 1)
  {
    (*(v96 + 8))(v95, v47);
    (*(v98 + 8))(v56, AssociatedTypeWitness);
    v52 = v86;
LABEL_9:
    (*(v81 + 8))(v48, TupleTypeMetadata2);
    v55 = v91;
    v54 = v92;
    goto LABEL_13;
  }

  v57 = v98;
  v58 = v72;
  (*(v98 + 32))(v72, &v48[v45], AssociatedTypeWitness);
  v59 = *(*(v71 + 8) + 8);
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = *(v57 + 8);
  v61(v58, AssociatedTypeWitness);
  v62 = *(v96 + 8);
  v62(v95, v47);
  v61(v56, AssociatedTypeWitness);
  v53 = (v62)(v48, v47);
  v55 = v91;
  v54 = v92;
  v52 = v86;
  if (v60)
  {
LABEL_11:
    MEMORY[0x28223BE20](v53);
    v63 = v78;
    v64 = v79;
    *(&v71 - 4) = v78;
    *(&v71 - 3) = v64;
    *(&v71 - 2) = v55;
    v65 = v77;
    v66 = v94;
    (*(v64 + 144))(v94, partial apply for closure #2 in static TraceAddress.ref(ifExists:within:));
    result = v52(v55, 1, v54);
    if (result != 1)
    {
      v67 = (*(v98 + 40))(&v55[*(v54 + 48)], v65, AssociatedTypeWitness);
      MEMORY[0x28223BE20](v67);
      *(&v71 - 4) = v63;
      *(&v71 - 3) = v64;
      *(&v71 - 2) = v93;
      *(&v71 - 1) = v55;
      v75(v66, partial apply for closure #3 in static TraceAddress.ref(ifExists:within:));
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_13:
  v68 = 1;
  v69 = v52(v55, 1, v54);
  v70 = v84;
  if (!v69)
  {
    v73(v84, &v55[*(v54 + 48)], AssociatedTypeWitness);
    v68 = 0;
  }

  v85(v70, v68, 1, AssociatedTypeWitness);
  return (*(v82 + 8))(v55, v83);
}

void closure #1 in static TraceAddress.ref(ifExists:within:)(uint64_t **a1)
{
  v1 = **a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v2 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);

  JUMPOUT(0x26D69CA60);
}

uint64_t specialized closure #2 in static TraceAddress.ref(ifExists:within:)(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 20))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *a2;
  v3 = a2[1];
  v5 = *a1;
  v2 = specialized Strong.subscript.read();
  v7 = *v6;
  if (!*(*v6 + 16))
  {
LABEL_6:
    (v2)(v12, 0);
    __break(1u);
    goto LABEL_7;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
  if (v9)
  {
    v10 = *(*(v7 + 56) + 4 * v8);
    (v2)(v12, 0);
    return v10;
  }

LABEL_7:
  result = (v2)(v12, 0);
  __break(1u);
  return result;
}

uint64_t specialized closure #2 in static TraceAddress.ref(ifExists:within:)(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 20))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v2 = specialized Strong.subscript.read();
  v7 = *v6;
  if (!*(*v6 + 16))
  {
LABEL_6:
    (v2)(v12, 0);
    __break(1u);
    goto LABEL_7;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  if (v9)
  {
    v10 = *(*(v7 + 56) + 4 * v8);
    (v2)(v12, 0);
    return v10;
  }

LABEL_7:
  result = (v2)(v12, 0);
  __break(1u);
  return result;
}

uint64_t closure #2 in static TraceAddress.ref(ifExists:within:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v26 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = (*(*(TupleTypeMetadata2 - 8) + 48))(a2, 1, TupleTypeMetadata2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 16))(v21, a2, a3);
    MEMORY[0x26D69CA60](v21, **v26, a3, AssociatedTypeWitness, *(a4 + 8));
    (*(v10 + 32))(v14, v17, v9);
    v24 = *(AssociatedTypeWitness - 8);
    result = (*(v24 + 48))(v14, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      (*(v18 + 8))(v21, a3);
      return (*(v24 + 32))(v25, v14, AssociatedTypeWitness);
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized closure #3 in static TraceAddress.ref(ifExists:within:)(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = *(a3 + 4);
  v8 = *(a3 + 20);
  v9 = *a1;
  v10 = **a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v9;
  v26 = *v9;
  *v9 = 0x8000000000000000;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v3 = v14;
    if (v12[3] < v18)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMd, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v3 & 1) == (v19 & 1))
      {
        goto LABEL_6;
      }

      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      v20 = v26;
      if (v8)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  v21 = result;
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMd, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMR);
  result = v21;
  v20 = v26;
  if (v8)
  {
LABEL_7:
    if (v3)
    {
      result = specialized _NativeDictionary._delete(at:)(result, v20);
    }

    goto LABEL_15;
  }

LABEL_11:
  if (v3)
  {
    v22 = v20[7] + 24 * result;
    *v22 = v6;
    *(v22 + 8) = v5;
    *(v22 + 16) = v7;
LABEL_15:
    *v9 = v20;
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = a2;
  v23 = v20[7] + 24 * result;
  *v23 = v6;
  *(v23 + 8) = v5;
  *(v23 + 16) = v7;
  v24 = v20[2];
  v17 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v17)
  {
    v20[2] = v25;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t specialized closure #3 in static TraceAddress.ref(ifExists:within:)(uint64_t **a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = *(a3 + 4);
  v8 = *(a3 + 20);
  v9 = *a1;
  v10 = **a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v9;
  v26 = *v9;
  *v9 = 0x8000000000000000;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v3 = v14;
    if (v12[3] < v18)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v3 & 1) == (v19 & 1))
      {
        goto LABEL_6;
      }

      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      if (v8)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  v21 = result;
  specialized _NativeDictionary.copy()();
  result = v21;
  if (v8)
  {
LABEL_7:
    v20 = v26;
    if (v3)
    {
      result = specialized _NativeDictionary._delete(at:)(result, v26);
    }

    goto LABEL_15;
  }

LABEL_11:
  v20 = v26;
  if (v3)
  {
    v22 = v26[7] + 24 * result;
    *v22 = v6;
    *(v22 + 8) = v5;
    *(v22 + 16) = v7;
LABEL_15:
    *v9 = v20;
    return result;
  }

  v26[(result >> 6) + 8] |= 1 << result;
  *(v26[6] + 4 * result) = a2;
  v23 = v26[7] + 24 * result;
  *v23 = v6;
  *(v23 + 8) = v5;
  *(v23 + 16) = v7;
  v24 = v26[2];
  v17 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v17)
  {
    v26[2] = v25;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in static TraceAddress.ref(ifExists:within:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15[1] = a2;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  (*(v6 + 16))(v15 - v8, a3, v5);
  v10 = *a1;
  swift_getAssociatedTypeWitness();
  v11 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  type metadata accessor for Dictionary._Variant();
  v12 = Dictionary._Variant.subscript.modify();
  (*(v6 + 40))(v13, v9, v5);
  return v12(v16, 0);
}

uint64_t key path getter for Interpreter.Iterator.swiftUI : Interpreter.Iterator@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = (result + 56);
  v4 = *(result + 72);
  v15[0] = *(result + 56);
  v15[1] = v4;
  v16[0] = *(result + 88);
  *(v16 + 9) = *(result + 97);
  v5 = (result + 72);
  v6 = (result + 84);
  v7 = (result + 104);
  while (1)
  {
    v8 = *v7;
    if (*v6 >= 2u)
    {
      v9 = *v5;
      if ((*(v9 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v8)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v15);
    }

    v5 = (v8 + 16);
    v6 = (v8 + 28);
    v7 = (v8 + 48);
    v3 = v8;
  }

  v10 = *v3;
  if (v10)
  {
    result = v10 + 24 * *(v9 + 8);
    v11 = *(*result + 112);
    if (v11)
    {
      v12 = v11[5];
      a2[4] = v11[4];
      a2[5] = v12;
      a2[6] = v11[6];
      *(a2 + 109) = *(v11 + 109);
      v13 = v11[1];
      *a2 = *v11;
      a2[1] = v13;
      v14 = v11[3];
      a2[2] = v11[2];
      a2[3] = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *key path setter for Interpreter.Iterator.swiftUI : Interpreter.Iterator(_OWORD *result, uint64_t a2)
{
  v2 = result;
  v3 = (a2 + 56);
  v4 = *(a2 + 72);
  v15[0] = *(a2 + 56);
  v15[1] = v4;
  v16[0] = *(a2 + 88);
  *(v16 + 9) = *(a2 + 97);
  v5 = (a2 + 72);
  v6 = (a2 + 84);
  v7 = (a2 + 104);
  while (1)
  {
    v8 = *v7;
    if (*v6 >= 2u)
    {
      v9 = *v5;
      if ((*(v9 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v8)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v15);
    }

    v5 = (v8 + 16);
    v6 = (v8 + 28);
    v7 = (v8 + 48);
    v3 = v8;
  }

  v10 = *v3;
  if (v10)
  {
    result = (v10 + 24 * *(v9 + 8));
    v11 = *(*result + 112);
    if (v11)
    {
      v12 = v2[5];
      v11[4] = v2[4];
      v11[5] = v12;
      v11[6] = v2[6];
      *(v11 + 109) = *(v2 + 109);
      v13 = v2[1];
      *v11 = *v2;
      v11[1] = v13;
      v14 = v2[3];
      v11[2] = v2[2];
      v11[3] = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*Snapshot.subgraphMap.modify(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

void *_s21SwiftUITracingSupport11GraphCtxtIDVAA12TraceAddressA2aDP3raw10generationx13RawIdentifierQz_s6UInt64VtcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

unint64_t protocol witness for static TraceAddress.rename(address:initialize:within:) in conformance SubgraphID@<X0>(unint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE6rename7address10initialize6withinx13RawIdentifierQz_SbAA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt3g5(*a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  return result;
}

unint64_t protocol witness for static TraceAddress.ref(_:within:) in conformance SubgraphID@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t _s21SwiftUITracingSupport11GraphCtxtIDVSHAASH4hash4intoys6HasherVz_tFTW_0()
{
  v1 = v0[1];
  MEMORY[0x26D69DC00](*v0);
  return MEMORY[0x26D69DC00](v1);
}

uint64_t _s21SwiftUITracingSupport11GraphCtxtIDVAA11InspectableA2aDP8describe5stateSSAA15InspectionStateV_tFTW_0()
{
  v1 = *v0;
  v2 = v0[1];
  return _s21SwiftUITracingSupport12TraceAddressPAAE8describe5stateSSAA15InspectionStateV_tFAA10SubgraphIDV_Ttg5Tm();
}

uint64_t (*Snapshot.graphMap.modify(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

Swift::Int SubgraphID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](a1);
  MEMORY[0x26D69DC00](a2);
  return Hasher._finalize()();
}

unint64_t protocol witness for static TraceAddress.rename(address:initialize:within:) in conformance GraphCtxtID@<X0>(unint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE6rename7address10initialize6withinx13RawIdentifierQz_SbAA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt3g5(*a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  return result;
}

unint64_t protocol witness for static TraceAddress.ref(_:within:) in conformance GraphCtxtID@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SubgraphID()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](v1);
  MEMORY[0x26D69DC00](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SubgraphID()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](v1);
  MEMORY[0x26D69DC00](v2);
  return Hasher._finalize()();
}

uint64_t (*Snapshot.nodeMap.modify(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

Swift::Int AttributeID.hashValue.getter(Swift::UInt32 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  MEMORY[0x26D69DC00](a2);
  return Hasher._finalize()();
}

_DWORD *protocol witness for TraceAddress.init(raw:generation:) in conformance AttributeID@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t protocol witness for static TraceAddress.rename(address:initialize:within:) in conformance AttributeID@<X0>(unsigned int *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE6rename7address10initialize6withinx13RawIdentifierQz_SbAA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt3g5(*a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

unint64_t protocol witness for static TraceAddress.ref(_:within:) in conformance AttributeID@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributeID()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  MEMORY[0x26D69DC00](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttributeID()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  return MEMORY[0x26D69DC00](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributeID()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  MEMORY[0x26D69DC00](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance AttributeID()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  return _s21SwiftUITracingSupport12TraceAddressPAAE8describe5stateSSAA15InspectionStateV_tFAA11AttributeIDV_Ttg5();
}

uint64_t specialized UnsafeArray<A>.findIndex(ref:at:)(int a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a3 + 16);
  v5 = 1;
  while (HIDWORD(a4) + v5 != 1)
  {
    if (!a3)
    {
      __break(1u);
      break;
    }

    v7 = *(v4 - 1);
    v6 = *v4;
    v8 = *(v4 - 4);
    --v5;
    v4 += 5;
    if (v8 == a1 && v7 <= a2 && v6 >= a2)
    {
      return -v5;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _s21SwiftUITracingSupport11RefProtocolPAAE6stringxSgSS_tcfCAA08SubgraphD0V_Tt1g5(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);

    if ((v6 & 0x100000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v27;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        LODWORD(v6) = 0;
        LOBYTE(v3) = 1;
LABEL_62:
        v29 = v3;
        v24 = v3;

        if (v24)
        {
LABEL_63:
          v25 = 0;
          v26 = 1;
LABEL_67:
          LOBYTE(v28[0]) = v26;
          return v25 | (v26 << 32);
        }

LABEL_66:
        v26 = 0;
        v25 = v6;
        goto LABEL_67;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v6;
          if ((v20 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v20 + v19;
          if (__CFADD__(v20, v19))
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v28[0] = result;
  v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v28;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v28 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v28 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t RefProtocol.init(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a1;
  v22[2] = a2;
  v23 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22[0] = type metadata accessor for Optional();
  v6 = *(v22[0] - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v22[0]);
  v10 = v22 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v14 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v22 - v15;
  v17 = *(swift_getAssociatedConformanceWitness() + 16);
  dispatch thunk of LosslessStringConvertible.init(_:)();
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v10, v22[0]);
    return (*(*(a3 - 8) + 56))(v23, 1, 1, a3);
  }

  else
  {
    v19 = v23;
    v20 = *(v11 + 32);
    v20(v16, v10, AssociatedTypeWitness);
    result = (v20)(v14, v16, AssociatedTypeWitness);
    v21 = *(a3 - 8);
    if (v12 == *(v21 + 64))
    {
      (*(v21 + 16))(v19, v14, a3);
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      return (*(v21 + 56))(v19, 0, 1, a3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RefProtocol.subscript.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  v5 = *(*(v4 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = swift_checkMetadataState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v30 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  (*(a2 + 56))(a1, a2);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v31 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v15 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v16 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v15)
    {
      if (v16 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        v17 = v30;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v18 = *(*(v4 + 32) + 8);
        v19 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v9 + 8))(v17, v8);
        if ((v19 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v21 = v30;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v22 = *(*(v4 + 32) + 8);
      v23 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v9 + 8))(v21, v8);
      if (v23)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v16 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v25 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v24 & 1) == 0)
    {
      break;
    }

    if (v25 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v26 = v30;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v27 = *(*(v4 + 32) + 8);
    v28 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v9 + 8))(v26, v8);
    if (v28)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v25 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v29 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v9 + 8))(v14, v8);
  return v29;
}

Swift::Int TreeRef.id.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](a1);
  return Hasher._finalize()();
}

uint64_t (*TreeRef.s.modify(uint64_t a1))(uint64_t result)
{
  v2 = *v1;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = HIDWORD(v2);
  return TreeRef.s.modify;
}

uint64_t TreeRef.t.setter(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t (*TreeRef.t.modify(uint64_t a1))(uint64_t result, char a2)
{
  v2 = *v1;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  return TreeRef.t.modify;
}

uint64_t TreeRef.t.modify(uint64_t result, char a2)
{
  v2 = *(result + 16);
  if (a2)
  {
    if ((v2 & 0x80000000) == 0)
    {
LABEL_5:
      **result = v2 | (*(result + 12) << 32);
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t static TreeRef.invalid.getter()
{
  if (one-time initialization token for invalid != -1)
  {
    swift_once();
  }

  return static TreeRef.invalid;
}

unint64_t TreeRef.init(s:t:)(unint64_t result, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    return a2 | (result << 32);
  }

  __break(1u);
  return result;
}

unsigned __int8 *TreeRef.init(string:)(uint64_t a1, unint64_t a2)
{
  v44 = 58;
  v45 = 0xE100000000000000;
  v42[2] = &v44;
  v5 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v42, a1, a2, &v44);
  if (!v5[2])
  {
    __break(1u);
    goto LABEL_69;
  }

  v2 = v5;
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];

  v3 = MEMORY[0x26D69CD00](v6, v7, v8, v9);
  v11 = v10;

  v12 = _s21SwiftUITracingSupport11RefProtocolPAAE6stringxSgSS_tcfCAA08SubgraphD0V_Tt1g5(v3, v11);
  if ((v12 & 0x100000000) != 0)
  {
LABEL_23:

    return 0;
  }

  if (*(v2 + 16) < 2uLL)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    v43 = 0;
    v23 = specialized _parseInteger<A, B>(ascii:radix:)(v3, v2, 10);

    if ((v23 & 0x100000000) == 0)
    {
      goto LABEL_71;
    }

    return 0;
  }

  v4 = v12;
  v13 = *(v2 + 64);
  v14 = *(v2 + 72);
  v15 = *(v2 + 80);
  v16 = *(v2 + 88);

  v3 = MEMORY[0x26D69CD00](v13, v14, v15, v16);
  v2 = v17;

  v19 = HIBYTE(v2) & 0xF;
  v20 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v21 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_23;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    goto LABEL_70;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((v3 & 0x1000000000000000) == 0)
    {
      goto LABEL_74;
    }

    for (result = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = _StringObject.sharedUTF8.getter())
    {
      v22 = *result;
      if (v22 == 43)
      {
        if (v20 < 1)
        {
          goto LABEL_77;
        }

        v19 = v20 - 1;
        if (v20 != 1)
        {
          LODWORD(v23) = 0;
          if (!result)
          {
            goto LABEL_57;
          }

          v30 = result + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v23;
            if (v32 != v32)
            {
              break;
            }

            LODWORD(v23) = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v19)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v22 == 45)
      {
        if (v20 < 1)
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v19 = v20 - 1;
        if (v20 != 1)
        {
          LODWORD(v23) = 0;
          if (!result)
          {
            goto LABEL_57;
          }

          v24 = result + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v23;
            if (v26 != v26)
            {
              break;
            }

            LODWORD(v23) = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v19)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v20)
      {
        LODWORD(v23) = 0;
        if (!result)
        {
LABEL_57:
          LOBYTE(v19) = 0;
          goto LABEL_66;
        }

        while (1)
        {
          v36 = *result - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v23;
          if (v37 != v37)
          {
            break;
          }

          LODWORD(v23) = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          ++result;
          if (!--v20)
          {
            goto LABEL_57;
          }
        }
      }

LABEL_65:
      LODWORD(v23) = 0;
      LOBYTE(v19) = 1;
LABEL_66:
      v43 = v19;
      v41 = v19;

      if (v41)
      {
        return 0;
      }

LABEL_71:
      if ((v23 & 0x80000000) == 0)
      {
        return (v23 | (v4 << 32));
      }

      __break(1u);
LABEL_74:
      ;
    }
  }

  v44 = v3;
  v45 = v2 & 0xFFFFFFFFFFFFFFLL;
  if (v3 != 43)
  {
    if (v3 != 45)
    {
      if (v19)
      {
        LODWORD(v23) = 0;
        v38 = &v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v23;
          if (v40 != v40)
          {
            break;
          }

          LODWORD(v23) = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          v38 = (v38 + 1);
          if (!--v19)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v19)
    {
      if (--v19)
      {
        LODWORD(v23) = 0;
        v27 = &v44 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v23;
          if (v29 != v29)
          {
            break;
          }

          LODWORD(v23) = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v19)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_76;
  }

  if (v19)
  {
    if (--v19)
    {
      LODWORD(v23) = 0;
      v33 = &v44 + 1;
      while (1)
      {
        v34 = *v33 - 48;
        if (v34 > 9)
        {
          break;
        }

        v35 = 10 * v23;
        if (v35 != v35)
        {
          break;
        }

        LODWORD(v23) = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          break;
        }

        ++v33;
        if (!--v19)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t TreeRef.describe(state:)(uint64_t *a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 == 2)
  {
    *&v22[0] = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v22[0] + 1) = v4;
    MEMORY[0x26D69CDB0](58, 0xE100000000000000);
    LODWORD(v23) = a2;
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v5);

    return *&v22[0];
  }

  v8 = *a1;
  v7 = a1[1];
  v9 = a1[3];
  v10 = a1[4];
  v11 = *(a1 + 40);
  v12 = *(a1 + 41);
  *&v22[0] = v10;
  BYTE8(v22[0]) = v11;
  BYTE9(v22[0]) = v12;
  result = Inspectable_Context.snapshot.getter();
  if (HIDWORD(a2) >= *(result + 124))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = *(result + 112);
  if (!v13)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v14 = *(v13 + 168 * HIDWORD(a2));
  if (a2 >= *(v14 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = (v14 + 208 * a2);
  v16 = v15[13];
  v22[10] = v15[12];
  v22[11] = v16;
  v22[12] = v15[14];
  v17 = v15[9];
  v22[6] = v15[8];
  v22[7] = v17;
  v18 = v15[11];
  v22[8] = v15[10];
  v22[9] = v18;
  v19 = v15[5];
  v22[2] = v15[4];
  v22[3] = v19;
  v20 = v15[7];
  v22[4] = v15[6];
  v22[5] = v20;
  v21 = v15[3];
  v22[0] = v15[2];
  v22[1] = v21;
  if (__OFSUB__(v8, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = v8 - 1;
  v24 = v7;
  v25 = v3;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  return specialized InspectionState.wrapDescription<A>(_:)(v22);
}

uint64_t TreeRef.debugDescription.getter()
{
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](58, 0xE100000000000000);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v0);

  return v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TreeRef()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TreeRef()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Identifiable.id.getter in conformance TreeRef@<X0>(Swift::Int *a1@<X8>)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](v3);
  result = Hasher._finalize()();
  *a1 = result;
  return result;
}

void *protocol witness for static Comparable.< infix(_:_:) in conformance TreeRef(void *result, void *a2)
{
  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return (*result < *a2);
  }

  __break(1u);
  return result;
}

void *protocol witness for static Comparable.<= infix(_:_:) in conformance TreeRef(void *result, void *a2)
{
  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return (*a2 >= *result);
  }

  __break(1u);
  return result;
}

void *protocol witness for static Comparable.>= infix(_:_:) in conformance TreeRef(void *result, void *a2)
{
  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return (*result >= *a2);
  }

  __break(1u);
  return result;
}

void *protocol witness for static Comparable.> infix(_:_:) in conformance TreeRef(void *result, void *a2)
{
  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return (*a2 < *result);
  }

  __break(1u);
  return result;
}

uint64_t MortalReference.interval.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t MortalReference.interval.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 36));
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t (*MortalReference.interval.modify(uint64_t a1, uint64_t a2))()
{
  result = EventTreeStats.count.modify;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t MortalReference.backtrace.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  result = *v2;
  v4 = *(v2 + 8) | (*(v2 + 3) << 32);
  return result;
}

uint64_t MortalReference.backtrace.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 40);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  *(v4 + 12) = HIDWORD(a2);
  return result;
}

uint64_t (*MortalReference.backtrace.modify(uint64_t a1, uint64_t a2))()
{
  result = EventTreeStats.count.modify;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t MortalReference.describe(state:)(__int128 *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 20);
  v4 = InspectionState.describe<A>(_:)(v2, *(a2 + 16), *(*(a2 + 24) + 24));
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (*(v2 + *(a2 + 36) + 8) == -1)
  {
    v5 = 94;
  }

  else
  {
    v5 = 120;
  }

  MEMORY[0x26D69CDB0](v5, 0xE100000000000000);
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 40;
}

uint64_t (*protocol witness for AMortalReference.ref.modify in conformance MortalReference<A>(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = MortalReference.ref.modify();
  return protocol witness for AMortalReference.ref.modify in conformance MortalReference<A>;
}

uint64_t (*protocol witness for AMortalReference.interval.modify in conformance MortalReference<A>(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = MortalReference.interval.modify(v4, a2);
  return protocol witness for AMortalReference.interval.modify in conformance MortalReference<A>;
}

uint64_t (*protocol witness for AMortalReference.backtrace.modify in conformance MortalReference<A>(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = MortalReference.backtrace.modify(v4, a2);
  return protocol witness for AMortalReference.interval.modify in conformance MortalReference<A>;
}

void protocol witness for AMortalReference.ref.modify in conformance MortalReference<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t DepthMap.storage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t specialized DepthMap.insert(_:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
  {
    v9 = 0;
    v10 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  v11 = 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  if (v11 <= a2)
  {
    v11 = a2;
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v9)
  {
    v12 = v10;
  }

  if (v12 >= a2)
  {
    v12 = a2;
  }

  if (a2 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v10 == v13)
  {
    v14 = v9;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a1, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
  }

  return v14;
}

uint64_t DepthMap.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D69CA60](&v18, v9, *v3, v6, MEMORY[0x277D83B88], *(v12 + 24));
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v19)
  {
    v13 = v18;
  }

  if (v13 >= a2)
  {
    v13 = a2;
  }

  v14 = 0x8000000000000000;
  if (!v19)
  {
    v14 = v18;
  }

  if (v14 <= a2)
  {
    v14 = a2;
  }

  if (a2 < 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  if (v18 == v15)
  {
    v16 = v19;
  }

  else
  {
    v16 = 1;
  }

  if (v16 == 1)
  {
    (*(v7 + 16))(v11, a1, v6);
    v18 = v15;
    v19 = 0;
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
  }

  return v16;
}

uint64_t DepthMap.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v13 - v10;
  (*(*(v6 - 8) + 16))(&v13 - v10, a1, v6);
  *&v11[*(TupleTypeMetadata2 + 48)] = a2;
  LOBYTE(v3) = DepthMap.insert(_:at:)(v11, a2, v3);
  (*(v8 + 8))(v11, TupleTypeMetadata2);
  return v3 & 1;
}

Swift::Void __swiftcall DepthMap.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  type metadata accessor for Dictionary();

  Dictionary.removeAll(keepingCapacity:)(keepingCapacity);
}

uint64_t DepthMap.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  specialized DepthMap.subscript.setter(a1, a2 & 1, a3, a4);
  v6 = *(*(*(a4 + 16) - 8) + 8);

  return v6(a3);
}

void (*DepthMap.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[4] = a3;
  v8[5] = v3;
  v10 = *(a3 + 16);
  v8[6] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v8[7] = v11;
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  v9[8] = v13;
  (*(v12 + 16))();
  MEMORY[0x26D69CA60](a2, *v3, v10, MEMORY[0x277D83B88], *(a3 + 24));
  v9[2] = *v9;
  *(v9 + 24) = *(v9 + 8);
  return DepthMap.subscript.modify;
}

void DepthMap.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 48);
  specialized DepthMap.subscript.setter(*(*a1 + 16), *(*a1 + 24), v2, *(*a1 + 32));
  (*(v3 + 8))(v2, v5);
  free(v2);

  free(v1);
}

double DepthMap.makeIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized DepthMap.makeIterator()(a1, &v7);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  v3 = type metadata accessor for Dictionary.Iterator._Variant();
  (*(*(v3 - 8) + 16))(&v6, v10, v3);
  result = *&v7;
  v5 = v8;
  *a2 = v7;
  *(a2 + 16) = v5;
  *(a2 + 32) = v9;
  return result;
}

uint64_t DepthMap.underestimatedCount.getter()
{
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  return Collection.underestimatedCount.getter();
}

uint64_t DepthMap.withContiguousStorageIfAvailable<A>(_:)()
{
  type metadata accessor for Dictionary();

  swift_getWitnessTable();
  Sequence.withContiguousStorageIfAvailable<A>(_:)();
}

Swift::Int DepthMap.hashValue.getter()
{
  Hasher.init(_seed:)();
  Dictionary<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DepthMap<A>(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return DepthMap.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DepthMap<A>(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return DepthMap.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DepthMap<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  DepthMap.hash(into:)();
  return Hasher._finalize()();
}

double protocol witness for Sequence.makeIterator() in conformance DepthMap<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  specialized DepthMap.makeIterator()(*v2, &v10);
  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  v6 = type metadata accessor for Dictionary.Iterator._Variant();
  (*(*(v6 - 8) + 16))(&v9, v13, v6);

  result = *&v10;
  v8 = v11;
  *a2 = v10;
  *(a2 + 16) = v8;
  *(a2 + 32) = v12;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance DepthMap<A>(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return DepthMap.underestimatedCount.getter();
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance DepthMap<A>()
{
  v1 = specialized Sequence._copyToContiguousArray()();
  v2 = *v0;

  return v1;
}

uint64_t protocol witness for Sequence.withContiguousStorageIfAvailable<A>(_:) in conformance DepthMap<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  return DepthMap.withContiguousStorageIfAvailable<A>(_:)();
}

unint64_t Mortal.state(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = (*(a4 + 16))(a3, a4);

  return Interval.state(_:)(a1, a2, v9, v8, a5);
}

uint64_t (*Snapshot.interval.modify(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(__int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  if (v4[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v5 = v4;
  v6 = *(v4 + 22);
  v7 = *v4;
  if (v7 >= *(v6 + 116))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v8 = *(v6 + 104);
  if (!v8)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v9 = *(*(*(v8 + 8 * v7) + 8) + 44);
  v10 = v4 + 56;
  v11 = *(v4 + 72);
  v141[0] = *(v4 + 56);
  v141[1] = v11;
  v142[0] = *(v4 + 88);
  v12 = v4 + 84;
  v13 = v4 + 88;
  v14 = (v5 + 104);
  *(v142 + 9) = *(v5 + 97);
  v15 = (v5 + 56);
  v16 = (v5 + 72);
  v17 = v5 + 84;
  v18 = (v5 + 104);
  while (1)
  {
    v19 = *v18;
    if (*v17)
    {
      v20 = *v16;
      if ((v20[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v141);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v15 = v19;
  }

  v21 = *v15;
  if (!v21)
  {
    goto LABEL_123;
  }

  v22 = *(*(v21 + 24 * *v20) + 112);
  if (!v22)
  {
    goto LABEL_107;
  }

  v23 = *(v5 + 20);
  v107 = v5[168];
  v108 = **(v22 + 32);
  v106 = *(v5 + 43);
  v24 = *(v5 + 72);
  v139[0] = *v10;
  v139[1] = v24;
  v140[0] = *(v5 + 88);
  v25 = v5 + 100;
  v26 = *(v5 + 29);
  v27 = v5 + 56;
  v28 = (v5 + 104);
  *(v140 + 9) = *(v5 + 97);
  v116 = v6;
  v109 = v7;
  while (1)
  {
    v29 = *v28;
    if (v26 < *v25)
    {
      v30 = (*v13 + 8 * v26);
      if ((v30[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v29)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v26, 0, v139);
    }

    v13 = (v29 + 32);
    v25 = (v29 + 44);
    v28 = (v29 + 48);
    v27 = v29;
  }

  if (!*v27)
  {
    goto LABEL_124;
  }

  v31 = v9;
  v32 = *v27 + 24 * *v30;
  v33 = *(*v32 + 56);
  v34 = *(*v32 + 64);
  *(&v130 + 1) = 0;
  *&v131 = 0;
  WORD4(v131) = 257;
  LODWORD(v132) = 0;
  HIDWORD(v131) = 0;
  *(&v132 + 1) = 0;
  LOWORD(v133) = 0;
  *(&v133 + 1) = -1;
  *&v135[8] = xmmword_26C32E070;
  *&v135[24] = 0;
  *&v136 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v136 + 1) = v35;
  LODWORD(v130) = v9;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1, a2);
  specialized HeterogeneousBuffer.insert<A>(_:)(a3);
  DWORD1(v132) = v108;
  *(&v134 + 4) = v23;
  BYTE12(v134) = v107;
  *v135 = v106;
  if ((v34 & 1) == 0)
  {
    *&v135[8] = v33;
  }

  if (v109 >= *(v6 + 116))
  {
    goto LABEL_88;
  }

  v36 = *(v6 + 104);
  if (!v36)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v37 = *(*(v36 + 8 * v109) + 8);
  v38 = *(v37 + 44);
  if (v38 == *(v37 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v38);
  }

  v39 = *(v37 + 32);
  if (!v39)
  {
    goto LABEL_109;
  }

  v40 = *(v37 + 44);
  v41 = (v39 + (v40 << 7));
  LOBYTE(v134) = a4 & 1;
  v41[4] = v134;
  v41[5] = *v135;
  v41[6] = *&v135[16];
  v41[7] = v136;
  *v41 = v130;
  v41[1] = v131;
  v41[2] = v132;
  v41[3] = v133;
  if (v40 == -1)
  {
    goto LABEL_89;
  }

  *(v37 + 44) = v40 + 1;
  if (v5[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v42 = *v5;
  if (v42 >= *(v6 + 116))
  {
    goto LABEL_90;
  }

  v43 = *(v6 + 104);
  if (!v43)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v44 = *(*(v43 + 8 * v42) + 8);
  if (v31 >= *(v44 + 44))
  {
    goto LABEL_91;
  }

  v113 = *(v6 + 116);
  v45 = *(v44 + 32);
  if (!v45)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v115 = v31;
  v46 = v45 + (v31 << 7);
  v47 = *(v46 + 8);
  v48 = *(v46 + 16);
  v49 = *(v46 + 24);
  v50 = *(v46 + 25);
  v53 = v46 + 28;
  v51 = *(v46 + 28);
  v52 = *(v53 + 4);
  v54 = v50 == 0;
  v55 = 256;
  if (v54)
  {
    v55 = 0;
  }

  v56 = v55 | (v51 << 32);
  v57 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v47, v48, v55 | v49, v52);
  if (v57)
  {
    v58 = v115;
  }

  else
  {
    v57 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v47, v48, v56 | v49, v52, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v58 = v115;
    if (!v57)
    {
      goto LABEL_48;
    }
  }

  if (v5[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v59 = *v5;
  if (v59 >= v113)
  {
    goto LABEL_92;
  }

  v60 = *v57;
  v61 = *(*(v43 + 8 * v59) + 8);
  v62 = *(v61 + 60);
  if (v62 == *(v61 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v62);
  }

  v63 = *(v61 + 48);
  if (!v63)
  {
    goto LABEL_114;
  }

  v64 = *(v61 + 60);
  v65 = (v63 + 8 * v64);
  *v65 = v60;
  v65[1] = v58;
  if (v64 == -1)
  {
    goto LABEL_93;
  }

  *(v61 + 60) = v64 + 1;
  if (v5[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v66 = *v5;
  if (v66 >= *(v116 + 116))
  {
    goto LABEL_94;
  }

  v67 = *(v116 + 104);
  if (!v67)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v67 + 8 * v66) + 8) + 64) = 0;
LABEL_48:
  v125 = *(v5 + 8);
  v126 = *(v5 + 9);
  v127 = *(v5 + 10);
  v121 = *(v5 + 4);
  v122 = *(v5 + 5);
  v123 = *(v5 + 6);
  v124 = *(v5 + 7);
  v117 = *v5;
  v118 = *(v5 + 1);
  v119 = *(v5 + 2);
  v120 = *(v5 + 3);
  v129 = v5[192];
  v68 = *(v5 + 22);
  v128 = *(v5 + 23);
  Interpreter.Iterator.updatingStack.getter();
  if (v70)
  {
    v71 = *v5;
    v72 = v5[48];
    v73 = *(v5 + 72);
    v137[0] = *v10;
    v137[1] = v73;
    v138[0] = *(v5 + 88);
    *(v138 + 9) = *(v5 + 97);
    v74 = (v5 + 72);
    while (1)
    {
      v75 = *v14;
      if (*v12)
      {
        if (((*v74)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v75)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v137);
      }

      v74 = (v75 + 16);
      v12 = (v75 + 28);
      v14 = (v75 + 48);
      v10 = v75;
    }

    if (!*v10)
    {
      goto LABEL_125;
    }

    v76 = *(*(*v10 + 24 * **v74) + 112);
    if (v76)
    {
      v77 = *(*(v76 + 32) + 8);
      v78 = *(v77 + 16);
      v79 = v78 + 1;
      v80 = (v77 + 48 * v78 - 16);
      while (v79-- > 1)
      {
        if (v72)
        {
          goto LABEL_100;
        }

        if (*(v68 + 116) <= v71)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v82 = *(v68 + 104);
        if (!v82)
        {
          goto LABEL_101;
        }

        v69 = *v80;
        v83 = *(*(v82 + 8 * v71) + 8);
        if (v69 >= *(v83 + 44))
        {
          goto LABEL_85;
        }

        v84 = *(v83 + 32);
        if (!v84)
        {
          goto LABEL_102;
        }

        v85 = v84 + (v69 << 7);
        v88 = *(v85 + 8);
        v87 = v85 + 8;
        v86 = v88;
        if (!*(v87 + 24))
        {
          goto LABEL_86;
        }

        if (*(v87 + 16))
        {
          goto LABEL_104;
        }

        if (!v86)
        {
          goto LABEL_103;
        }

        v80 -= 12;
        if (*v86 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v5[48])
  {
    goto LABEL_117;
  }

  v89 = *v5;
  if (v89 >= *(v68 + 116))
  {
    goto LABEL_95;
  }

  v90 = *(v68 + 104);
  if (!v90)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v91 = *(*(v90 + 8 * v89) + 8);
  v92 = *(v91 + 44);
  if (v69 >= v92)
  {
    goto LABEL_96;
  }

  v93 = *(v91 + 32);
  if (v93)
  {
    if (v58 < v92)
    {
      v94 = (v93 + (v69 << 7));
      v95 = (v93 + (v58 << 7));
      v96 = *v95;
      v97 = v94[31];
      if (v97 == v94[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v97);
      }

      v98 = *(v94 + 14);
      if (!v98)
      {
        goto LABEL_120;
      }

      v99 = v94[31];
      v100 = v98 + 8 * v99;
      *v100 = -24064;
      *(v100 + 4) = v96;
      if (v99 != -1)
      {
        v94[31] = v99 + 1;
        v101 = *v94;
        v102 = v95[31];
        if (v102 == v95[30])
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * v102);
        }

        v103 = *(v95 + 14);
        if (!v103)
        {
          goto LABEL_121;
        }

        v104 = v95[31];
        v105 = v103 + 8 * v104;
        *v105 = 25088;
        *(v105 + 4) = v101;
        if (v104 != -1)
        {
          v95[31] = v104 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v58);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
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
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

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
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(int a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4)
{
  return specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(a1, a2, a3, a4, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV13UninstantiateV_Ttg5, &type metadata for Event.Uninstantiate, &_s21SwiftUITracingSupport5EventV13UninstantiateVmMd, &_s21SwiftUITracingSupport5EventV13UninstantiateVmMR);
}

{
  return specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(a1, a2, a3, a4, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11InstantiateV_Ttg5, &type metadata for Event.Instantiate, &_s21SwiftUITracingSupport5EventV11InstantiateVmMd, &_s21SwiftUITracingSupport5EventV11InstantiateVmMR);
}

void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t a1, uint64_t a2, char a3)
{
  if (v3[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v4 = v3;
  v5 = *(v3 + 22);
  v6 = *v3;
  if (v6 >= *(v5 + 116))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v8 = *(*(*(v7 + 8 * v6) + 8) + 44);
  outlined init with copy of Event.Transaction(a1, v135);
  v9 = v3 + 56;
  v10 = *(v3 + 72);
  v140[0] = *(v3 + 56);
  v140[1] = v10;
  v141[0] = *(v3 + 88);
  v11 = v3 + 84;
  v12 = v3 + 88;
  v13 = (v4 + 104);
  *(v141 + 9) = *(v4 + 97);
  v14 = (v4 + 56);
  v15 = (v4 + 72);
  v16 = v4 + 84;
  v17 = (v4 + 104);
  while (1)
  {
    v18 = *v17;
    if (*v16)
    {
      v19 = *v15;
      if ((v19[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v18)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v140);
    }

    v15 = (v18 + 16);
    v16 = (v18 + 28);
    v17 = (v18 + 48);
    v14 = v18;
  }

  v20 = *v14;
  if (!v20)
  {
    goto LABEL_123;
  }

  v21 = *(*(v20 + 24 * *v19) + 112);
  if (!v21)
  {
    goto LABEL_107;
  }

  v22 = *(v4 + 20);
  v106 = v4[168];
  v107 = **(v21 + 32);
  v105 = *(v4 + 43);
  v23 = *(v4 + 88);
  v138[1] = *(v4 + 72);
  v139[0] = v23;
  *(v139 + 9) = *(v4 + 97);
  v24 = v4 + 100;
  v25 = *(v4 + 29);
  v26 = v4 + 56;
  v27 = (v4 + 104);
  v138[0] = *v9;
  v114 = v5;
  v108 = v6;
  while (1)
  {
    v28 = *v27;
    if (v25 < *v24)
    {
      v29 = (*v12 + 8 * v25);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, v138);
    }

    v12 = (v28 + 32);
    v24 = (v28 + 44);
    v27 = (v28 + 48);
    v26 = v28;
  }

  if (!*v26)
  {
    goto LABEL_124;
  }

  v30 = a3;
  v31 = v8;
  v32 = *v26 + 24 * *v29;
  v110 = *(*v32 + 56);
  v33 = *(*v32 + 64);
  *(&v128 + 1) = 0;
  *&v129 = 0;
  WORD4(v129) = 257;
  LODWORD(v130) = 0;
  HIDWORD(v129) = 0;
  *(&v130 + 1) = 0;
  LOWORD(v131) = 0;
  *(&v131 + 1) = -1;
  *&v133[8] = xmmword_26C32E070;
  *&v133[24] = 0;
  *&v134 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v134 + 1) = v34;
  LODWORD(v128) = v8;
  specialized HeterogeneousBuffer.insert<A>(_:)(v135);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2);
  outlined destroy of Event.Transaction(v135);
  DWORD1(v130) = v107;
  *(&v132 + 4) = v22;
  BYTE12(v132) = v106;
  *v133 = v105;
  if ((v33 & 1) == 0)
  {
    *&v133[8] = v110;
  }

  if (v108 >= *(v5 + 116))
  {
    goto LABEL_88;
  }

  v35 = *(v5 + 104);
  if (!v35)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v36 = *(*(v35 + 8 * v108) + 8);
  v37 = *(v36 + 44);
  if (v37 == *(v36 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v37);
  }

  v38 = *(v36 + 32);
  if (!v38)
  {
    goto LABEL_109;
  }

  v39 = *(v36 + 44);
  v40 = (v38 + (v39 << 7));
  LOBYTE(v132) = v30 & 1;
  v40[4] = v132;
  v40[5] = *v133;
  v40[6] = *&v133[16];
  v40[7] = v134;
  *v40 = v128;
  v40[1] = v129;
  v40[2] = v130;
  v40[3] = v131;
  if (v39 == -1)
  {
    goto LABEL_89;
  }

  *(v36 + 44) = v39 + 1;
  if (v4[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v41 = *v4;
  if (v41 >= *(v5 + 116))
  {
    goto LABEL_90;
  }

  v42 = *(v5 + 104);
  if (!v42)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v43 = *(*(v42 + 8 * v41) + 8);
  if (v31 >= *(v43 + 44))
  {
    goto LABEL_91;
  }

  v111 = *(v5 + 116);
  v44 = *(v43 + 32);
  if (!v44)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v113 = v31;
  v45 = v44 + (v31 << 7);
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  v49 = *(v45 + 25);
  v52 = v45 + 28;
  v50 = *(v45 + 28);
  v51 = *(v52 + 4);
  v53 = v49 == 0;
  v54 = 256;
  if (v53)
  {
    v54 = 0;
  }

  v55 = v54 | (v50 << 32);
  v56 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v46, v47, v54 | v48, v51);
  if (v56)
  {
    v57 = v113;
  }

  else
  {
    v56 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v46, v47, v55 | v48, v51, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v57 = v113;
    if (!v56)
    {
      goto LABEL_48;
    }
  }

  if (v4[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v58 = *v4;
  if (v58 >= v111)
  {
    goto LABEL_92;
  }

  v59 = *v56;
  v60 = *(*(v42 + 8 * v58) + 8);
  v61 = *(v60 + 60);
  if (v61 == *(v60 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v61);
  }

  v62 = *(v60 + 48);
  if (!v62)
  {
    goto LABEL_114;
  }

  v63 = *(v60 + 60);
  v64 = (v62 + 8 * v63);
  *v64 = v59;
  v64[1] = v57;
  if (v63 == -1)
  {
    goto LABEL_93;
  }

  *(v60 + 60) = v63 + 1;
  if (v4[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v65 = *v4;
  if (v65 >= *(v114 + 116))
  {
    goto LABEL_94;
  }

  v66 = *(v114 + 104);
  if (!v66)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v66 + 8 * v65) + 8) + 64) = 0;
LABEL_48:
  v123 = *(v4 + 8);
  v124 = *(v4 + 9);
  v125 = *(v4 + 10);
  v119 = *(v4 + 4);
  v120 = *(v4 + 5);
  v121 = *(v4 + 6);
  v122 = *(v4 + 7);
  v115 = *v4;
  v116 = *(v4 + 1);
  v117 = *(v4 + 2);
  v118 = *(v4 + 3);
  v127 = v4[192];
  v67 = *(v4 + 22);
  v126 = *(v4 + 23);
  Interpreter.Iterator.updatingStack.getter();
  if (v69)
  {
    v70 = *v4;
    v71 = v4[48];
    v72 = *(v4 + 72);
    v136[0] = *v9;
    v136[1] = v72;
    v137[0] = *(v4 + 88);
    *(v137 + 9) = *(v4 + 97);
    v73 = (v4 + 72);
    while (1)
    {
      v74 = *v13;
      if (*v11)
      {
        if (((*v73)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v74)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v136);
      }

      v73 = (v74 + 16);
      v11 = (v74 + 28);
      v13 = (v74 + 48);
      v9 = v74;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v75 = *(*(*v9 + 24 * **v73) + 112);
    if (v75)
    {
      v76 = *(*(v75 + 32) + 8);
      v77 = *(v76 + 16);
      v78 = v77 + 1;
      v79 = (v76 + 48 * v77 - 16);
      while (v78-- > 1)
      {
        if (v71)
        {
          goto LABEL_100;
        }

        if (*(v67 + 116) <= v70)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v81 = *(v67 + 104);
        if (!v81)
        {
          goto LABEL_101;
        }

        v68 = *v79;
        v82 = *(*(v81 + 8 * v70) + 8);
        if (v68 >= *(v82 + 44))
        {
          goto LABEL_85;
        }

        v83 = *(v82 + 32);
        if (!v83)
        {
          goto LABEL_102;
        }

        v84 = v83 + (v68 << 7);
        v87 = *(v84 + 8);
        v86 = v84 + 8;
        v85 = v87;
        if (!*(v86 + 24))
        {
          goto LABEL_86;
        }

        if (*(v86 + 16))
        {
          goto LABEL_104;
        }

        if (!v85)
        {
          goto LABEL_103;
        }

        v79 -= 12;
        if (*v85 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v4[48])
  {
    goto LABEL_117;
  }

  v88 = *v4;
  if (v88 >= *(v67 + 116))
  {
    goto LABEL_95;
  }

  v89 = *(v67 + 104);
  if (!v89)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v90 = *(*(v89 + 8 * v88) + 8);
  v91 = *(v90 + 44);
  if (v68 >= v91)
  {
    goto LABEL_96;
  }

  v92 = *(v90 + 32);
  if (v92)
  {
    if (v57 < v91)
    {
      v93 = (v92 + (v68 << 7));
      v94 = (v92 + (v57 << 7));
      v95 = *v94;
      v96 = v93[31];
      if (v96 == v93[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v96);
      }

      v97 = *(v93 + 14);
      if (!v97)
      {
        goto LABEL_120;
      }

      v98 = v93[31];
      v99 = v97 + 8 * v98;
      *v99 = -24064;
      *(v99 + 4) = v95;
      if (v98 != -1)
      {
        v93[31] = v98 + 1;
        v100 = *v93;
        v101 = v94[31];
        if (v101 == v94[30])
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * v101);
        }

        v102 = *(v94 + 14);
        if (!v102)
        {
          goto LABEL_121;
        }

        v103 = v94[31];
        v104 = v102 + 8 * v103;
        *v104 = 25088;
        *(v104 + 4) = v100;
        if (v103 != -1)
        {
          v94[31] = v103 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v57);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
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
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

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
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

{
  if (v3[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v4 = v3;
  v5 = *(v3 + 22);
  v6 = *v3;
  if (v6 >= *(v5 + 116))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v8 = *(*(*(v7 + 8 * v6) + 8) + 44);
  outlined init with copy of Event.Action(a1, v135);
  v9 = v3 + 56;
  v10 = *(v3 + 72);
  v140[0] = *(v3 + 56);
  v140[1] = v10;
  v141[0] = *(v3 + 88);
  v11 = v3 + 84;
  v12 = v3 + 88;
  v13 = (v4 + 104);
  *(v141 + 9) = *(v4 + 97);
  v14 = (v4 + 56);
  v15 = (v4 + 72);
  v16 = v4 + 84;
  v17 = (v4 + 104);
  while (1)
  {
    v18 = *v17;
    if (*v16)
    {
      v19 = *v15;
      if ((v19[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v18)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v140);
    }

    v15 = (v18 + 16);
    v16 = (v18 + 28);
    v17 = (v18 + 48);
    v14 = v18;
  }

  v20 = *v14;
  if (!v20)
  {
    goto LABEL_123;
  }

  v21 = *(*(v20 + 24 * *v19) + 112);
  if (!v21)
  {
    goto LABEL_107;
  }

  v22 = *(v4 + 20);
  v106 = v4[168];
  v107 = **(v21 + 32);
  v105 = *(v4 + 43);
  v23 = *(v4 + 88);
  v138[1] = *(v4 + 72);
  v139[0] = v23;
  *(v139 + 9) = *(v4 + 97);
  v24 = v4 + 100;
  v25 = *(v4 + 29);
  v26 = v4 + 56;
  v27 = (v4 + 104);
  v138[0] = *v9;
  v114 = v5;
  v108 = v6;
  while (1)
  {
    v28 = *v27;
    if (v25 < *v24)
    {
      v29 = (*v12 + 8 * v25);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, v138);
    }

    v12 = (v28 + 32);
    v24 = (v28 + 44);
    v27 = (v28 + 48);
    v26 = v28;
  }

  if (!*v26)
  {
    goto LABEL_124;
  }

  v30 = a3;
  v31 = v8;
  v32 = *v26 + 24 * *v29;
  v110 = *(*v32 + 56);
  v33 = *(*v32 + 64);
  *(&v128 + 1) = 0;
  *&v129 = 0;
  WORD4(v129) = 257;
  LODWORD(v130) = 0;
  HIDWORD(v129) = 0;
  *(&v130 + 1) = 0;
  LOWORD(v131) = 0;
  *(&v131 + 1) = -1;
  *&v133[8] = xmmword_26C32E070;
  *&v133[24] = 0;
  *&v134 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v134 + 1) = v34;
  LODWORD(v128) = v8;
  specialized HeterogeneousBuffer.insert<A>(_:)(v135);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2);
  outlined destroy of Event.Action(v135);
  DWORD1(v130) = v107;
  *(&v132 + 4) = v22;
  BYTE12(v132) = v106;
  *v133 = v105;
  if ((v33 & 1) == 0)
  {
    *&v133[8] = v110;
  }

  if (v108 >= *(v5 + 116))
  {
    goto LABEL_88;
  }

  v35 = *(v5 + 104);
  if (!v35)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v36 = *(*(v35 + 8 * v108) + 8);
  v37 = *(v36 + 44);
  if (v37 == *(v36 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v37);
  }

  v38 = *(v36 + 32);
  if (!v38)
  {
    goto LABEL_109;
  }

  v39 = *(v36 + 44);
  v40 = (v38 + (v39 << 7));
  LOBYTE(v132) = v30 & 1;
  v40[4] = v132;
  v40[5] = *v133;
  v40[6] = *&v133[16];
  v40[7] = v134;
  *v40 = v128;
  v40[1] = v129;
  v40[2] = v130;
  v40[3] = v131;
  if (v39 == -1)
  {
    goto LABEL_89;
  }

  *(v36 + 44) = v39 + 1;
  if (v4[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v41 = *v4;
  if (v41 >= *(v5 + 116))
  {
    goto LABEL_90;
  }

  v42 = *(v5 + 104);
  if (!v42)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v43 = *(*(v42 + 8 * v41) + 8);
  if (v31 >= *(v43 + 44))
  {
    goto LABEL_91;
  }

  v111 = *(v5 + 116);
  v44 = *(v43 + 32);
  if (!v44)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v113 = v31;
  v45 = v44 + (v31 << 7);
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  v49 = *(v45 + 25);
  v52 = v45 + 28;
  v50 = *(v45 + 28);
  v51 = *(v52 + 4);
  v53 = v49 == 0;
  v54 = 256;
  if (v53)
  {
    v54 = 0;
  }

  v55 = v54 | (v50 << 32);
  v56 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v46, v47, v54 | v48, v51);
  if (v56)
  {
    v57 = v113;
  }

  else
  {
    v56 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v46, v47, v55 | v48, v51, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v57 = v113;
    if (!v56)
    {
      goto LABEL_48;
    }
  }

  if (v4[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v58 = *v4;
  if (v58 >= v111)
  {
    goto LABEL_92;
  }

  v59 = *v56;
  v60 = *(*(v42 + 8 * v58) + 8);
  v61 = *(v60 + 60);
  if (v61 == *(v60 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v61);
  }

  v62 = *(v60 + 48);
  if (!v62)
  {
    goto LABEL_114;
  }

  v63 = *(v60 + 60);
  v64 = (v62 + 8 * v63);
  *v64 = v59;
  v64[1] = v57;
  if (v63 == -1)
  {
    goto LABEL_93;
  }

  *(v60 + 60) = v63 + 1;
  if (v4[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v65 = *v4;
  if (v65 >= *(v114 + 116))
  {
    goto LABEL_94;
  }

  v66 = *(v114 + 104);
  if (!v66)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v66 + 8 * v65) + 8) + 64) = 0;
LABEL_48:
  v123 = *(v4 + 8);
  v124 = *(v4 + 9);
  v125 = *(v4 + 10);
  v119 = *(v4 + 4);
  v120 = *(v4 + 5);
  v121 = *(v4 + 6);
  v122 = *(v4 + 7);
  v115 = *v4;
  v116 = *(v4 + 1);
  v117 = *(v4 + 2);
  v118 = *(v4 + 3);
  v127 = v4[192];
  v67 = *(v4 + 22);
  v126 = *(v4 + 23);
  Interpreter.Iterator.updatingStack.getter();
  if (v69)
  {
    v70 = *v4;
    v71 = v4[48];
    v72 = *(v4 + 72);
    v136[0] = *v9;
    v136[1] = v72;
    v137[0] = *(v4 + 88);
    *(v137 + 9) = *(v4 + 97);
    v73 = (v4 + 72);
    while (1)
    {
      v74 = *v13;
      if (*v11)
      {
        if (((*v73)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v74)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v136);
      }

      v73 = (v74 + 16);
      v11 = (v74 + 28);
      v13 = (v74 + 48);
      v9 = v74;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v75 = *(*(*v9 + 24 * **v73) + 112);
    if (v75)
    {
      v76 = *(*(v75 + 32) + 8);
      v77 = *(v76 + 16);
      v78 = v77 + 1;
      v79 = (v76 + 48 * v77 - 16);
      while (v78-- > 1)
      {
        if (v71)
        {
          goto LABEL_100;
        }

        if (*(v67 + 116) <= v70)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v81 = *(v67 + 104);
        if (!v81)
        {
          goto LABEL_101;
        }

        v68 = *v79;
        v82 = *(*(v81 + 8 * v70) + 8);
        if (v68 >= *(v82 + 44))
        {
          goto LABEL_85;
        }

        v83 = *(v82 + 32);
        if (!v83)
        {
          goto LABEL_102;
        }

        v84 = v83 + (v68 << 7);
        v87 = *(v84 + 8);
        v86 = v84 + 8;
        v85 = v87;
        if (!*(v86 + 24))
        {
          goto LABEL_86;
        }

        if (*(v86 + 16))
        {
          goto LABEL_104;
        }

        if (!v85)
        {
          goto LABEL_103;
        }

        v79 -= 12;
        if (*v85 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v4[48])
  {
    goto LABEL_117;
  }

  v88 = *v4;
  if (v88 >= *(v67 + 116))
  {
    goto LABEL_95;
  }

  v89 = *(v67 + 104);
  if (!v89)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v90 = *(*(v89 + 8 * v88) + 8);
  v91 = *(v90 + 44);
  if (v68 >= v91)
  {
    goto LABEL_96;
  }

  v92 = *(v90 + 32);
  if (v92)
  {
    if (v57 < v91)
    {
      v93 = (v92 + (v68 << 7));
      v94 = (v92 + (v57 << 7));
      v95 = *v94;
      v96 = v93[31];
      if (v96 == v93[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v96);
      }

      v97 = *(v93 + 14);
      if (!v97)
      {
        goto LABEL_120;
      }

      v98 = v93[31];
      v99 = v97 + 8 * v98;
      *v99 = -24064;
      *(v99 + 4) = v95;
      if (v98 != -1)
      {
        v93[31] = v98 + 1;
        v100 = *v93;
        v101 = v94[31];
        if (v101 == v94[30])
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * v101);
        }

        v102 = *(v94 + 14);
        if (!v102)
        {
          goto LABEL_121;
        }

        v103 = v94[31];
        v104 = v102 + 8 * v103;
        *v104 = 25088;
        *(v104 + 4) = v100;
        if (v103 != -1)
        {
          v94[31] = v103 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v57);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
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
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

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
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

{
  if (v3[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v4 = v3;
  v5 = *(v3 + 22);
  v6 = *v3;
  if (v6 >= *(v5 + 116))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v8 = *(*(*(v7 + 8 * v6) + 8) + 44);
  v9 = v3 + 56;
  v10 = *(v3 + 72);
  v139[0] = *(v3 + 56);
  v139[1] = v10;
  v140[0] = *(v3 + 88);
  v11 = v3 + 84;
  v12 = v3 + 88;
  v13 = (v4 + 104);
  *(v140 + 9) = *(v4 + 97);
  v14 = (v4 + 56);
  v15 = (v4 + 72);
  v16 = v4 + 84;
  v17 = (v4 + 104);
  while (1)
  {
    v18 = *v17;
    if (*v16)
    {
      v19 = *v15;
      if ((v19[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v18)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v139);
    }

    v15 = (v18 + 16);
    v16 = (v18 + 28);
    v17 = (v18 + 48);
    v14 = v18;
  }

  v20 = *v14;
  if (!v20)
  {
    goto LABEL_123;
  }

  v21 = *(*(v20 + 24 * *v19) + 112);
  if (!v21)
  {
    goto LABEL_107;
  }

  v22 = *(v4 + 20);
  v106 = v4[168];
  v107 = **(v21 + 32);
  v105 = *(v4 + 43);
  v23 = *(v4 + 72);
  v137[0] = *v9;
  v137[1] = v23;
  v138[0] = *(v4 + 88);
  v24 = v4 + 100;
  v25 = *(v4 + 29);
  v26 = v4 + 56;
  v27 = (v4 + 104);
  *(v138 + 9) = *(v4 + 97);
  v114 = v5;
  v108 = v6;
  while (1)
  {
    v28 = *v27;
    if (v25 < *v24)
    {
      v29 = (*v12 + 8 * v25);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, v137);
    }

    v12 = (v28 + 32);
    v24 = (v28 + 44);
    v27 = (v28 + 48);
    v26 = v28;
  }

  if (!*v26)
  {
    goto LABEL_124;
  }

  v30 = v8;
  v31 = *v26 + 24 * *v29;
  v32 = *(*v31 + 56);
  v33 = *(*v31 + 64);
  *(&v128 + 1) = 0;
  *&v129 = 0;
  WORD4(v129) = 257;
  LODWORD(v130) = 0;
  HIDWORD(v129) = 0;
  *(&v130 + 1) = 0;
  LOWORD(v131) = 0;
  *(&v131 + 1) = -1;
  *&v133[8] = xmmword_26C32E070;
  *&v133[24] = 0;
  *&v134 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v134 + 1) = v34;
  LODWORD(v128) = v8;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2);
  DWORD1(v130) = v107;
  *(&v132 + 4) = v22;
  BYTE12(v132) = v106;
  *v133 = v105;
  if ((v33 & 1) == 0)
  {
    *&v133[8] = v32;
  }

  if (v108 >= *(v5 + 116))
  {
    goto LABEL_88;
  }

  v35 = *(v5 + 104);
  if (!v35)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v36 = *(*(v35 + 8 * v108) + 8);
  v37 = *(v36 + 44);
  if (v37 == *(v36 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v37);
  }

  v38 = *(v36 + 32);
  if (!v38)
  {
    goto LABEL_109;
  }

  v39 = *(v36 + 44);
  v40 = (v38 + (v39 << 7));
  LOBYTE(v132) = a3 & 1;
  v40[4] = v132;
  v40[5] = *v133;
  v40[6] = *&v133[16];
  v40[7] = v134;
  *v40 = v128;
  v40[1] = v129;
  v40[2] = v130;
  v40[3] = v131;
  if (v39 == -1)
  {
    goto LABEL_89;
  }

  *(v36 + 44) = v39 + 1;
  if (v4[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v41 = *v4;
  if (v41 >= *(v5 + 116))
  {
    goto LABEL_90;
  }

  v42 = *(v5 + 104);
  if (!v42)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v43 = *(*(v42 + 8 * v41) + 8);
  if (v30 >= *(v43 + 44))
  {
    goto LABEL_91;
  }

  v111 = *(v5 + 116);
  v44 = *(v43 + 32);
  if (!v44)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v113 = v30;
  v45 = v44 + (v30 << 7);
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  v49 = *(v45 + 25);
  v52 = v45 + 28;
  v50 = *(v45 + 28);
  v51 = *(v52 + 4);
  v53 = v49 == 0;
  v54 = 256;
  if (v53)
  {
    v54 = 0;
  }

  v55 = v54 | (v50 << 32);
  v56 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v46, v47, v54 | v48, v51);
  if (v56)
  {
    v57 = v113;
  }

  else
  {
    v56 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v46, v47, v55 | v48, v51, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v57 = v113;
    if (!v56)
    {
      goto LABEL_48;
    }
  }

  if (v4[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v58 = *v4;
  if (v58 >= v111)
  {
    goto LABEL_92;
  }

  v59 = *v56;
  v60 = *(*(v42 + 8 * v58) + 8);
  v61 = *(v60 + 60);
  if (v61 == *(v60 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v61);
  }

  v62 = *(v60 + 48);
  if (!v62)
  {
    goto LABEL_114;
  }

  v63 = *(v60 + 60);
  v64 = (v62 + 8 * v63);
  *v64 = v59;
  v64[1] = v57;
  if (v63 == -1)
  {
    goto LABEL_93;
  }

  *(v60 + 60) = v63 + 1;
  if (v4[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v65 = *v4;
  if (v65 >= *(v114 + 116))
  {
    goto LABEL_94;
  }

  v66 = *(v114 + 104);
  if (!v66)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v66 + 8 * v65) + 8) + 64) = 0;
LABEL_48:
  v123 = *(v4 + 8);
  v124 = *(v4 + 9);
  v125 = *(v4 + 10);
  v119 = *(v4 + 4);
  v120 = *(v4 + 5);
  v121 = *(v4 + 6);
  v122 = *(v4 + 7);
  v115 = *v4;
  v116 = *(v4 + 1);
  v117 = *(v4 + 2);
  v118 = *(v4 + 3);
  v127 = v4[192];
  v67 = *(v4 + 22);
  v126 = *(v4 + 23);
  Interpreter.Iterator.updatingStack.getter();
  if (v69)
  {
    v70 = *v4;
    v71 = v4[48];
    v72 = *(v4 + 72);
    v135[0] = *v9;
    v135[1] = v72;
    v136[0] = *(v4 + 88);
    *(v136 + 9) = *(v4 + 97);
    v73 = (v4 + 72);
    while (1)
    {
      v74 = *v13;
      if (*v11)
      {
        if (((*v73)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v74)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v135);
      }

      v73 = (v74 + 16);
      v11 = (v74 + 28);
      v13 = (v74 + 48);
      v9 = v74;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v75 = *(*(*v9 + 24 * **v73) + 112);
    if (v75)
    {
      v76 = *(*(v75 + 32) + 8);
      v77 = *(v76 + 16);
      v78 = v77 + 1;
      v79 = (v76 + 48 * v77 - 16);
      while (v78-- > 1)
      {
        if (v71)
        {
          goto LABEL_100;
        }

        if (*(v67 + 116) <= v70)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v81 = *(v67 + 104);
        if (!v81)
        {
          goto LABEL_101;
        }

        v68 = *v79;
        v82 = *(*(v81 + 8 * v70) + 8);
        if (v68 >= *(v82 + 44))
        {
          goto LABEL_85;
        }

        v83 = *(v82 + 32);
        if (!v83)
        {
          goto LABEL_102;
        }

        v84 = v83 + (v68 << 7);
        v87 = *(v84 + 8);
        v86 = v84 + 8;
        v85 = v87;
        if (!*(v86 + 24))
        {
          goto LABEL_86;
        }

        if (*(v86 + 16))
        {
          goto LABEL_104;
        }

        if (!v85)
        {
          goto LABEL_103;
        }

        v79 -= 12;
        if (*v85 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v4[48])
  {
    goto LABEL_117;
  }

  v88 = *v4;
  if (v88 >= *(v67 + 116))
  {
    goto LABEL_95;
  }

  v89 = *(v67 + 104);
  if (!v89)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v90 = *(*(v89 + 8 * v88) + 8);
  v91 = *(v90 + 44);
  if (v68 >= v91)
  {
    goto LABEL_96;
  }

  v92 = *(v90 + 32);
  if (v92)
  {
    if (v57 < v91)
    {
      v93 = (v92 + (v68 << 7));
      v94 = (v92 + (v57 << 7));
      v95 = *v94;
      v96 = v93[31];
      if (v96 == v93[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v96);
      }

      v97 = *(v93 + 14);
      if (!v97)
      {
        goto LABEL_120;
      }

      v98 = v93[31];
      v99 = v97 + 8 * v98;
      *v99 = -24064;
      *(v99 + 4) = v95;
      if (v98 != -1)
      {
        v93[31] = v98 + 1;
        v100 = *v93;
        v101 = v94[31];
        if (v101 == v94[30])
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * v101);
        }

        v102 = *(v94 + 14);
        if (!v102)
        {
          goto LABEL_121;
        }

        v103 = v94[31];
        v104 = v102 + 8 * v103;
        *v104 = 25088;
        *(v104 + 4) = v100;
        if (v103 != -1)
        {
          v94[31] = v103 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v57);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
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
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

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
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(_OWORD *a1, uint64_t a2, char a3)
{
  if (v3[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v4 = v3;
  v5 = *(v3 + 22);
  v6 = *v3;
  if (v6 >= *(v5 + 116))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v8 = *(*(*(v7 + 8 * v6) + 8) + 44);
  v9 = v3 + 56;
  v10 = *(v3 + 72);
  v139[0] = *(v3 + 56);
  v139[1] = v10;
  v140[0] = *(v3 + 88);
  v11 = v3 + 84;
  v12 = v3 + 88;
  v13 = (v4 + 104);
  *(v140 + 9) = *(v4 + 97);
  v14 = (v4 + 56);
  v15 = (v4 + 72);
  v16 = v4 + 84;
  v17 = (v4 + 104);
  while (1)
  {
    v18 = *v17;
    if (*v16)
    {
      v19 = *v15;
      if ((v19[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v18)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v139);
    }

    v15 = (v18 + 16);
    v16 = (v18 + 28);
    v17 = (v18 + 48);
    v14 = v18;
  }

  v20 = *v14;
  if (!v20)
  {
    goto LABEL_123;
  }

  v21 = *(*(v20 + 24 * *v19) + 112);
  if (!v21)
  {
    goto LABEL_107;
  }

  v22 = *(v4 + 20);
  v106 = v4[168];
  v107 = **(v21 + 32);
  v105 = *(v4 + 43);
  v23 = *(v4 + 72);
  v137[0] = *v9;
  v137[1] = v23;
  v138[0] = *(v4 + 88);
  v24 = v4 + 100;
  v25 = *(v4 + 29);
  v26 = v4 + 56;
  v27 = (v4 + 104);
  *(v138 + 9) = *(v4 + 97);
  v114 = v5;
  v108 = v6;
  while (1)
  {
    v28 = *v27;
    if (v25 < *v24)
    {
      v29 = (*v12 + 8 * v25);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, v137);
    }

    v12 = (v28 + 32);
    v24 = (v28 + 44);
    v27 = (v28 + 48);
    v26 = v28;
  }

  if (!*v26)
  {
    goto LABEL_124;
  }

  v30 = v8;
  v31 = *v26 + 24 * *v29;
  v32 = *(*v31 + 56);
  v33 = *(*v31 + 64);
  *(&v128 + 1) = 0;
  *&v129 = 0;
  WORD4(v129) = 257;
  LODWORD(v130) = 0;
  HIDWORD(v129) = 0;
  *(&v130 + 1) = 0;
  LOWORD(v131) = 0;
  *(&v131 + 1) = -1;
  *&v133[8] = xmmword_26C32E070;
  *&v133[24] = 0;
  *&v134 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v134 + 1) = v34;
  LODWORD(v128) = v8;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2);
  DWORD1(v130) = v107;
  *(&v132 + 4) = v22;
  BYTE12(v132) = v106;
  *v133 = v105;
  if ((v33 & 1) == 0)
  {
    *&v133[8] = v32;
  }

  if (v108 >= *(v5 + 116))
  {
    goto LABEL_88;
  }

  v35 = *(v5 + 104);
  if (!v35)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v36 = *(*(v35 + 8 * v108) + 8);
  v37 = *(v36 + 44);
  if (v37 == *(v36 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v37);
  }

  v38 = *(v36 + 32);
  if (!v38)
  {
    goto LABEL_109;
  }

  v39 = *(v36 + 44);
  v40 = (v38 + (v39 << 7));
  LOBYTE(v132) = a3 & 1;
  v40[4] = v132;
  v40[5] = *v133;
  v40[6] = *&v133[16];
  v40[7] = v134;
  *v40 = v128;
  v40[1] = v129;
  v40[2] = v130;
  v40[3] = v131;
  if (v39 == -1)
  {
    goto LABEL_89;
  }

  *(v36 + 44) = v39 + 1;
  if (v4[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v41 = *v4;
  if (v41 >= *(v5 + 116))
  {
    goto LABEL_90;
  }

  v42 = *(v5 + 104);
  if (!v42)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v43 = *(*(v42 + 8 * v41) + 8);
  if (v30 >= *(v43 + 44))
  {
    goto LABEL_91;
  }

  v111 = *(v5 + 116);
  v44 = *(v43 + 32);
  if (!v44)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v113 = v30;
  v45 = v44 + (v30 << 7);
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  v49 = *(v45 + 25);
  v52 = v45 + 28;
  v50 = *(v45 + 28);
  v51 = *(v52 + 4);
  v53 = v49 == 0;
  v54 = 256;
  if (v53)
  {
    v54 = 0;
  }

  v55 = v54 | (v50 << 32);
  v56 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v46, v47, v54 | v48, v51);
  if (v56)
  {
    v57 = v113;
  }

  else
  {
    v56 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v46, v47, v55 | v48, v51, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v57 = v113;
    if (!v56)
    {
      goto LABEL_48;
    }
  }

  if (v4[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v58 = *v4;
  if (v58 >= v111)
  {
    goto LABEL_92;
  }

  v59 = *v56;
  v60 = *(*(v42 + 8 * v58) + 8);
  v61 = *(v60 + 60);
  if (v61 == *(v60 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v61);
  }

  v62 = *(v60 + 48);
  if (!v62)
  {
    goto LABEL_114;
  }

  v63 = *(v60 + 60);
  v64 = (v62 + 8 * v63);
  *v64 = v59;
  v64[1] = v57;
  if (v63 == -1)
  {
    goto LABEL_93;
  }

  *(v60 + 60) = v63 + 1;
  if (v4[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v65 = *v4;
  if (v65 >= *(v114 + 116))
  {
    goto LABEL_94;
  }

  v66 = *(v114 + 104);
  if (!v66)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v66 + 8 * v65) + 8) + 64) = 0;
LABEL_48:
  v123 = *(v4 + 8);
  v124 = *(v4 + 9);
  v125 = *(v4 + 10);
  v119 = *(v4 + 4);
  v120 = *(v4 + 5);
  v121 = *(v4 + 6);
  v122 = *(v4 + 7);
  v115 = *v4;
  v116 = *(v4 + 1);
  v117 = *(v4 + 2);
  v118 = *(v4 + 3);
  v127 = v4[192];
  v67 = *(v4 + 22);
  v126 = *(v4 + 23);
  Interpreter.Iterator.updatingStack.getter();
  if (v69)
  {
    v70 = *v4;
    v71 = v4[48];
    v72 = *(v4 + 72);
    v135[0] = *v9;
    v135[1] = v72;
    v136[0] = *(v4 + 88);
    *(v136 + 9) = *(v4 + 97);
    v73 = (v4 + 72);
    while (1)
    {
      v74 = *v13;
      if (*v11)
      {
        if (((*v73)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v74)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v135);
      }

      v73 = (v74 + 16);
      v11 = (v74 + 28);
      v13 = (v74 + 48);
      v9 = v74;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v75 = *(*(*v9 + 24 * **v73) + 112);
    if (v75)
    {
      v76 = *(*(v75 + 32) + 8);
      v77 = *(v76 + 16);
      v78 = v77 + 1;
      v79 = (v76 + 48 * v77 - 16);
      while (v78-- > 1)
      {
        if (v71)
        {
          goto LABEL_100;
        }

        if (*(v67 + 116) <= v70)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v81 = *(v67 + 104);
        if (!v81)
        {
          goto LABEL_101;
        }

        v68 = *v79;
        v82 = *(*(v81 + 8 * v70) + 8);
        if (v68 >= *(v82 + 44))
        {
          goto LABEL_85;
        }

        v83 = *(v82 + 32);
        if (!v83)
        {
          goto LABEL_102;
        }

        v84 = v83 + (v68 << 7);
        v87 = *(v84 + 8);
        v86 = v84 + 8;
        v85 = v87;
        if (!*(v86 + 24))
        {
          goto LABEL_86;
        }

        if (*(v86 + 16))
        {
          goto LABEL_104;
        }

        if (!v85)
        {
          goto LABEL_103;
        }

        v79 -= 12;
        if (*v85 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v4[48])
  {
    goto LABEL_117;
  }

  v88 = *v4;
  if (v88 >= *(v67 + 116))
  {
    goto LABEL_95;
  }

  v89 = *(v67 + 104);
  if (!v89)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v90 = *(*(v89 + 8 * v88) + 8);
  v91 = *(v90 + 44);
  if (v68 >= v91)
  {
    goto LABEL_96;
  }

  v92 = *(v90 + 32);
  if (v92)
  {
    if (v57 < v91)
    {
      v93 = (v92 + (v68 << 7));
      v94 = (v92 + (v57 << 7));
      v95 = *v94;
      v96 = v93[31];
      if (v96 == v93[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v96);
      }

      v97 = *(v93 + 14);
      if (!v97)
      {
        goto LABEL_120;
      }

      v98 = v93[31];
      v99 = v97 + 8 * v98;
      *v99 = -24064;
      *(v99 + 4) = v95;
      if (v98 != -1)
      {
        v93[31] = v98 + 1;
        v100 = *v93;
        v101 = v94[31];
        if (v101 == v94[30])
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * v101);
        }

        v102 = *(v94 + 14);
        if (!v102)
        {
          goto LABEL_121;
        }

        v103 = v94[31];
        v104 = v102 + 8 * v103;
        *v104 = 25088;
        *(v104 + 4) = v100;
        if (v103 != -1)
        {
          v94[31] = v103 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v57);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
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
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

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
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (v5[48])
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v13 = *(v5 + 22);
  v14 = *v5;
  if (v14 >= *(v13 + 116))
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *&v177 = a3;
  *&v178 = *(v5 + 22);
  v15 = *(v13 + 104);
  if (!v15)
  {
    goto LABEL_138;
  }

  v11 = a4;
  v7 = *(*(*(v15 + 8 * v14) + 8) + 44);
  outlined init with copy of Event.Transaction(a1, v206);
  v10 = v5 + 56;
  v16 = *(v5 + 72);
  v216[0] = *(v5 + 56);
  v216[1] = v16;
  v217[0] = *(v5 + 88);
  v9 = v5 + 72;
  v12 = v5 + 84;
  v17 = v5 + 88;
  v6 = (v5 + 104);
  *(v217 + 9) = *(v5 + 97);
  v18 = (v5 + 56);
  v19 = (v5 + 72);
  v20 = v5 + 84;
  v21 = (v5 + 104);
  while (1)
  {
    v22 = *v21;
    if (*v20)
    {
      v23 = *v19;
      if ((v23[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v22)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v216);
    }

    v19 = (v22 + 16);
    v20 = (v22 + 28);
    v21 = (v22 + 48);
    v18 = v22;
  }

  v24 = *v18;
  if (!v24)
  {
    goto LABEL_167;
  }

  *&v181 = v7;
  v25 = *(*(v24 + 24 * *v23) + 112);
  if (!v25)
  {
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
    goto LABEL_145;
  }

  v26 = *(v5 + 20);
  v174 = v5[168];
  v175 = **(v25 + 32);
  v173 = *(v5 + 43);
  v27 = *(v5 + 72);
  v214[0] = *v10;
  v214[1] = v27;
  v215[0] = *(v5 + 88);
  v28 = v5 + 100;
  v29 = *(v5 + 29);
  v23 = (v5 + 56);
  v30 = (v5 + 104);
  *(v215 + 9) = *(v5 + 97);
  v180 = v5;
  *&v179 = v5 + 72;
  while (1)
  {
    v31 = *v30;
    if (v29 < *v28)
    {
      v32 = (*v17 + 8 * v29);
      if ((v32[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v29, 0, v214);
    }

    v17 = v31 + 8;
    v28 = v31 + 11;
    v30 = (v31 + 12);
    v23 = v31;
  }

  v33 = *v23;
  if (!*v23)
  {
    goto LABEL_172;
  }

  LODWORD(v7) = v11;
  v34 = v33 + 24 * *v32;
  v35 = *(*v34 + 56);
  v4 = *(*v34 + 64);
  v11 = &v199;
  *(&v199 + 1) = 0;
  *&v200 = 0;
  WORD4(v200) = 257;
  LODWORD(v201) = 0;
  HIDWORD(v200) = 0;
  *(&v201 + 1) = 0;
  LOWORD(v202) = 0;
  *(&v202 + 1) = -1;
  v8 = &v199;
  *&v204[8] = xmmword_26C32E070;
  *&v204[24] = 0;
  *&v205 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v205 + 1) = v36;
  LODWORD(v199) = v181;
  specialized HeterogeneousBuffer.insert<A>(_:)(v206);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2, v177);
  outlined destroy of Event.Transaction(v206);
  DWORD1(v201) = v175;
  *(&v203 + 4) = v26;
  BYTE12(v203) = v174;
  *v204 = v173;
  LOBYTE(v203) = v7 & 1;
  if ((v4 & 1) == 0)
  {
    *&v204[8] = v35;
  }

  v9 = v178;
  if (v14 >= *(v178 + 116))
  {
    goto LABEL_117;
  }

  v37 = *(v178 + 104);
  if (!v37)
  {
    goto LABEL_140;
  }

  v4 = *(*(v37 + 8 * v14) + 8);
  v38 = *(v4 + 44);
  LODWORD(v7) = v181;
  if (v38 == *(v4 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v38);
  }

  v39 = *(v4 + 32);
  if (!v39)
  {
    goto LABEL_141;
  }

  v40 = *(v4 + 44);
  v41 = (v39 + (v40 << 7));
  v42 = *v204;
  v41[4] = v203;
  v41[5] = v42;
  v43 = v205;
  v41[6] = *&v204[16];
  v41[7] = v43;
  v44 = v200;
  *v41 = v199;
  v41[1] = v44;
  v45 = v202;
  v41[2] = v201;
  v41[3] = v45;
  if (v40 == -1)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  *(v4 + 44) = v40 + 1;
  if (v5[48])
  {
    goto LABEL_142;
  }

  v8 = *(v178 + 116);
  v46 = *v5;
  if (v46 >= v8)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v9 = *(v178 + 104);
  if (!v9)
  {
    goto LABEL_143;
  }

  v47 = *(*&v9[8 * v46] + 8);
  if (v181 >= *(v47 + 44))
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v48 = *(v47 + 32);
  if (!v48)
  {
    goto LABEL_144;
  }

  v49 = v48 + (v181 << 7);
  v50 = *(v49 + 8);
  v51 = *(v49 + 16);
  v4 = *(v49 + 24);
  v52 = *(v49 + 25);
  v55 = v49 + 28;
  v53 = *(v49 + 28);
  v54 = *(v55 + 4);
  LOBYTE(v186) = v4;
  v56 = v52 == 0;
  v57 = 256;
  if (v56)
  {
    v57 = 0;
  }

  v58 = v57 | (v53 << 32);
  v59 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v50, v51, v57 | v4, v54);
  if (v59)
  {
    v11 = v180;
    v7 = v181;
  }

  else
  {
    LOBYTE(v186) = v4;
    v59 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v50, v51, v58 | v4, v54, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v11 = v180;
    v7 = v181;
    if (!v59)
    {
      goto LABEL_48;
    }
  }

  if (v11[48])
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v60 = *v11;
  if (v60 >= v8)
  {
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v61 = *v59;
  v4 = *(*&v9[8 * v60] + 8);
  v62 = *(v4 + 60);
  if (v62 == *(v4 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v62);
  }

  v63 = *(v4 + 48);
  if (!v63)
  {
    goto LABEL_158;
  }

  v64 = *(v4 + 60);
  v65 = (v63 + 8 * v64);
  *v65 = v61;
  v65[1] = v7;
  if (v64 == -1)
  {
    goto LABEL_125;
  }

  *(v4 + 60) = v64 + 1;
  if (v11[48])
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v66 = *v11;
  if (v66 >= *(v178 + 116))
  {
    goto LABEL_126;
  }

  v67 = *(v178 + 104);
  if (!v67)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  *(*(*(v67 + 8 * v66) + 8) + 64) = 0;
LABEL_48:
  v68 = *(v11 + 9);
  v194 = *(v11 + 8);
  v195 = v68;
  v196 = *(v11 + 10);
  v69 = *(v11 + 5);
  v190 = *(v11 + 4);
  v191 = v69;
  v70 = *(v11 + 7);
  v192 = *(v11 + 6);
  v193 = v70;
  v71 = *(v11 + 1);
  v186 = *v11;
  v187 = v71;
  v72 = *(v11 + 3);
  v188 = *(v11 + 2);
  v189 = v72;
  v198 = v11[192];
  v74 = *(v11 + 22);
  v73 = *(v11 + 23);
  *&v197 = v74;
  *(&v197 + 1) = v73;
  Interpreter.Iterator.updatingStack.getter();
  if (v76)
  {
    v77 = *v11;
    v7 = v11[48];
    v78 = v10[1];
    v212[0] = *v10;
    v212[1] = v78;
    v213[0] = v10[2];
    *(v213 + 9) = *(v10 + 41);
    v79 = v10;
    v9 = v179;
    v80 = v179;
    v81 = v12;
    v82 = v6;
    while (1)
    {
      v83 = *v82;
      if (*v81)
      {
        v23 = *v80;
        if ((v23[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v83)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v212);
      }

      v80 = (v83 + 16);
      v81 = (v83 + 28);
      v82 = (v83 + 48);
      v79 = v83;
    }

    v33 = *v79;
    if (!v33)
    {
      goto LABEL_173;
    }

    v23 = *v23;
    v131 = *(*(v33 + 24 * v23) + 112);
    if (v131)
    {
      v132 = *(*(v131 + 32) + 8);
      v133 = *(v132 + 16);
      v134 = v133 + 1;
      v135 = (v132 + 48 * v133 - 16);
      do
      {
        if (v134-- <= 1)
        {
          goto LABEL_69;
        }

        if (v7)
        {
          goto LABEL_132;
        }

        if (*(v74 + 116) <= v77)
        {
          goto LABEL_113;
        }

        v137 = *(v74 + 104);
        if (!v137)
        {
          goto LABEL_133;
        }

        v75 = *v135;
        v138 = *(*(v137 + 8 * v77) + 8);
        if (v75 >= *(v138 + 44))
        {
          goto LABEL_114;
        }

        v139 = *(v138 + 32);
        if (!v139)
        {
          goto LABEL_134;
        }

        v140 = v139 + (v75 << 7);
        v143 = *(v140 + 8);
        v142 = v140 + 8;
        v141 = v143;
        if (!*(v142 + 24))
        {
          goto LABEL_115;
        }

        if (*(v142 + 16))
        {
          goto LABEL_136;
        }

        if (!v141)
        {
          goto LABEL_135;
        }

        v135 -= 12;
      }

      while (*v141 != &type metadata for Event.Transaction);
      v7 = v181;
      if (v11[48])
      {
        goto LABEL_112;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v9 = v179;
  if (v11[48])
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_55:
  v84 = *v11;
  if (v84 >= *(v74 + 116))
  {
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
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v85 = *(v74 + 104);
  if (!v85)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v86 = *(*(v85 + 8 * v84) + 8);
  v87 = *(v86 + 44);
  if (v75 >= v87)
  {
    goto LABEL_128;
  }

  v88 = *(v86 + 32);
  if (!v88)
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v207);
  }

  if (v7 >= v87)
  {
    goto LABEL_129;
  }

  v89 = (v88 + (v75 << 7));
  v7 = v88 + (v7 << 7);
  v8 = *v7;
  v90 = v89[31];
  if (v90 == v89[30])
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v90);
  }

  v91 = *(v89 + 14);
  if (!v91)
  {
    goto LABEL_163;
  }

  v92 = v89[31];
  v93 = v91 + 8 * v92;
  *v93 = -24064;
  *(v93 + 4) = v8;
  if (v92 == -1)
  {
    goto LABEL_130;
  }

  v89[31] = v92 + 1;
  v4 = *v89;
  v94 = *(v7 + 124);
  if (v94 == *(v7 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v94);
  }

  v95 = *(v7 + 112);
  if (!v95)
  {
    goto LABEL_164;
  }

  v96 = *(v7 + 124);
  v97 = v95 + 8 * v96;
  *v97 = 25088;
  *(v97 + 4) = v4;
  if (v96 == -1)
  {
    goto LABEL_131;
  }

  *(v7 + 124) = v96 + 1;
LABEL_69:
  v98 = v10[1];
  v210[0] = *v10;
  v210[1] = v98;
  v211[0] = v10[2];
  *(v211 + 9) = *(v10 + 41);
  v99 = v10;
  v100 = v9;
  v101 = v12;
  v102 = v6;
  while (1)
  {
    v103 = *v102;
    if (*v101)
    {
      v23 = *v100;
      if ((v23[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v103)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v210);
    }

    v100 = (v103 + 16);
    v101 = (v103 + 28);
    v102 = (v103 + 48);
    v99 = v103;
  }

  v104 = *v99;
  if (!v104)
  {
    goto LABEL_168;
  }

  v105 = *(*(v104 + 24 * *v23) + 112);
  if (!v105)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (*(*(*(v105 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v11[48])
    {
      __break(1u);
    }

    else
    {
      v106 = *v11;
      if (v106 >= *(v74 + 116))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v107 = *(v74 + 104);
      if (v107)
      {
        v108 = *(*(v107 + 8 * v106) + 8);
        v109 = *(v108 + 44);
        if (!v109)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v110 = *(v108 + 32);
        if (v110)
        {
          v111 = v110 + (v109 << 7);
          v112 = *(v111 - 112);
          v186 = *(v111 - 128);
          v187 = v112;
          v113 = *(v111 - 48);
          v190 = *(v111 - 64);
          v191 = v113;
          v114 = *(v111 - 16);
          v192 = *(v111 - 32);
          v193 = v114;
          v115 = *(v111 - 80);
          v188 = *(v111 - 96);
          v189 = v115;
          LOBYTE(v207) = BYTE8(v187);
          v116 = HeterogeneousBuffer.type(at:)(0, *(&v186 + 1), v187, SBYTE8(v187), v188);
          v117 = swift_conformsToProtocol2();
          if (v117)
          {
            v118 = v117;
            LOBYTE(v207) = BYTE8(v187);
            v119 = HeterogeneousBuffer.index(after:)(0, *(&v186 + 1), v187, SBYTE8(v187), v188);
            LOBYTE(v207) = BYTE8(v187);
            v120 = HeterogeneousBuffer.type(at:)(v119, *(&v186 + 1), v187, SBYTE8(v187), v188);
            v121 = swift_conformsToProtocol2();
            if (v121)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v120, &v186, v116, v118, v121, &v182);
              v177 = v183;
              v178 = v182;
              v7 = v184;
              v122 = v10[1];
              v207 = *v10;
              v208 = v122;
              v209[0] = v10[2];
              *(v209 + 9) = *(v10 + 41);
              v123 = v179;
              while (1)
              {
                v124 = *v6;
                if (*v12)
                {
                  v23 = *v123;
                  if (((*v123)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v124)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v207);
                }

                v123 = (v124 + 16);
                v12 = (v124 + 28);
                v6 = (v124 + 48);
                v10 = v124;
              }

              if (*v10)
              {
                v125 = *(*(*v10 + 24 * *v23) + 112);
                if (v125)
                {
                  v4 = *(v125 + 32);
                  v8 = *(v4 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v4 + 8) = v8;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_94:
                    v128 = *(v8 + 2);
                    v127 = *(v8 + 3);
                    if (v128 >= v127 >> 1)
                    {
                      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v8);
                      *(v4 + 8) = v8;
                    }

                    *(v8 + 2) = v128 + 1;
                    v129 = &v8[48 * v128];
                    *(v129 + 8) = v181;
                    *(v129 + 40) = v178;
                    *(v129 + 56) = v177;
                    *(v129 + 18) = v7;
                    Interpreter.Iterator.relate(prior:)(v181);
                    return v181;
                  }

LABEL_123:
                  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
                  *(v4 + 8) = v8;
                  goto LABEL_94;
                }

                goto LABEL_156;
              }

              goto LABEL_169;
            }

LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

LABEL_153:
        __break(1u);
        goto LABEL_154;
      }
    }

    __break(1u);
    goto LABEL_153;
  }

LABEL_146:
  v144 = *(v11 + 11);
  v196 = *(v11 + 10);
  v197 = v144;
  v198 = v11[192];
  v145 = *(v11 + 7);
  v192 = *(v11 + 6);
  v193 = v145;
  v146 = *(v11 + 9);
  v194 = *(v11 + 8);
  v195 = v146;
  v147 = *(v11 + 3);
  v188 = *(v11 + 2);
  v189 = v147;
  v148 = *(v11 + 5);
  v190 = *(v11 + 4);
  v191 = v148;
  v149 = *(v11 + 1);
  v186 = *v11;
  v187 = v149;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v150 = swift_allocObject();
  v181 = xmmword_26C328DC0;
  *(v150 + 16) = xmmword_26C328DC0;
  v179 = xmmword_26C32DAD0;
  v207 = xmmword_26C32DAD0;
  LOBYTE(v208) = 1;
  *&v209[0] = 0;
  *(&v208 + 1) = 0;
  WORD4(v209[0]) = 512;
  v151 = Interpreter.Iterator.describe(state:)(&v207);
  v7 = MEMORY[0x277D837D0];
  *(v150 + 56) = MEMORY[0x277D837D0];
  *(v150 + 32) = v151;
  *(v150 + 40) = v152;
  print(_:separator:terminator:)();

  v153 = v10[1];
  v207 = *v10;
  v208 = v153;
  v209[0] = v10[2];
  *(v209 + 9) = *(v10 + 41);
  while (1)
  {
    v154 = *v6;
    if (*v12)
    {
      v23 = *v9;
      if ((*(*v9 + 4) & 1) == 0)
      {
        break;
      }
    }

    if (!v154)
    {
      goto LABEL_165;
    }

    v9 = (v154 + 16);
    v12 = (v154 + 28);
    v6 = (v154 + 48);
    v10 = v154;
  }

LABEL_170:
  v33 = *v10;
  if (!*v10)
  {
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
  }

  v155 = *(*(v33 + 24 * *v23) + 112);
  if (!v155)
  {
    __break(1u);
  }

  v156 = *(v155 + 32);
  v158 = v156[1];
  v157 = v156[2];
  v159 = v156[3];
  v160 = v156[4];
  v161 = swift_allocObject();
  *(v161 + 16) = v181;
  v186 = v179;
  LOBYTE(v187) = 1;
  *(&v187 + 1) = 0;
  *&v188 = 0;
  WORD4(v188) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v159);
  v162 = specialized Interpreter.Control.Events.describe(state:)(&v186, v158);
  *(v161 + 56) = v7;
  *(v161 + 32) = v162;
  *(v161 + 40) = v163;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v159);
  v164 = *(v180 + 11);
  v196 = *(v180 + 10);
  v197 = v164;
  v198 = v180[192];
  v165 = *(v180 + 7);
  v192 = *(v180 + 6);
  v193 = v165;
  v166 = *(v180 + 9);
  v194 = *(v180 + 8);
  v195 = v166;
  v167 = *(v180 + 3);
  v188 = *(v180 + 2);
  v189 = v167;
  v168 = *(v180 + 5);
  v190 = *(v180 + 4);
  v191 = v168;
  v169 = *(v180 + 1);
  v186 = *v180;
  v187 = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = v181;
  v182 = v179;
  LOBYTE(v183) = 1;
  *(&v183 + 1) = 0;
  v184 = 0;
  v185 = 512;
  v171 = Interpreter.Iterator.describe(state:)(&v182);
  *(v170 + 56) = v7;
  *(v170 + 32) = v171;
  *(v170 + 40) = v172;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (v5[48])
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v13 = *(v5 + 22);
  v14 = *v5;
  if (v14 >= *(v13 + 116))
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *&v177 = a3;
  *&v178 = *(v5 + 22);
  v15 = *(v13 + 104);
  if (!v15)
  {
    goto LABEL_138;
  }

  v11 = a4;
  v7 = *(*(*(v15 + 8 * v14) + 8) + 44);
  outlined init with copy of Event.Action(a1, v206);
  v10 = v5 + 56;
  v16 = *(v5 + 72);
  v216[0] = *(v5 + 56);
  v216[1] = v16;
  v217[0] = *(v5 + 88);
  v9 = v5 + 72;
  v12 = v5 + 84;
  v17 = v5 + 88;
  v6 = (v5 + 104);
  *(v217 + 9) = *(v5 + 97);
  v18 = (v5 + 56);
  v19 = (v5 + 72);
  v20 = v5 + 84;
  v21 = (v5 + 104);
  while (1)
  {
    v22 = *v21;
    if (*v20)
    {
      v23 = *v19;
      if ((v23[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v22)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v216);
    }

    v19 = (v22 + 16);
    v20 = (v22 + 28);
    v21 = (v22 + 48);
    v18 = v22;
  }

  v24 = *v18;
  if (!v24)
  {
    goto LABEL_167;
  }

  *&v181 = v7;
  v25 = *(*(v24 + 24 * *v23) + 112);
  if (!v25)
  {
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
    goto LABEL_145;
  }

  v26 = *(v5 + 20);
  v174 = v5[168];
  v175 = **(v25 + 32);
  v173 = *(v5 + 43);
  v27 = *(v5 + 72);
  v214[0] = *v10;
  v214[1] = v27;
  v215[0] = *(v5 + 88);
  v28 = v5 + 100;
  v29 = *(v5 + 29);
  v23 = (v5 + 56);
  v30 = (v5 + 104);
  *(v215 + 9) = *(v5 + 97);
  v180 = v5;
  *&v179 = v5 + 72;
  while (1)
  {
    v31 = *v30;
    if (v29 < *v28)
    {
      v32 = (*v17 + 8 * v29);
      if ((v32[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v29, 0, v214);
    }

    v17 = v31 + 8;
    v28 = v31 + 11;
    v30 = (v31 + 12);
    v23 = v31;
  }

  v33 = *v23;
  if (!*v23)
  {
    goto LABEL_172;
  }

  LODWORD(v7) = v11;
  v34 = v33 + 24 * *v32;
  v35 = *(*v34 + 56);
  v4 = *(*v34 + 64);
  v11 = &v199;
  *(&v199 + 1) = 0;
  *&v200 = 0;
  WORD4(v200) = 257;
  LODWORD(v201) = 0;
  HIDWORD(v200) = 0;
  *(&v201 + 1) = 0;
  LOWORD(v202) = 0;
  *(&v202 + 1) = -1;
  v8 = &v199;
  *&v204[8] = xmmword_26C32E070;
  *&v204[24] = 0;
  *&v205 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v205 + 1) = v36;
  LODWORD(v199) = v181;
  specialized HeterogeneousBuffer.insert<A>(_:)(v206);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2, v177);
  outlined destroy of Event.Action(v206);
  DWORD1(v201) = v175;
  *(&v203 + 4) = v26;
  BYTE12(v203) = v174;
  *v204 = v173;
  LOBYTE(v203) = v7 & 1;
  if ((v4 & 1) == 0)
  {
    *&v204[8] = v35;
  }

  v9 = v178;
  if (v14 >= *(v178 + 116))
  {
    goto LABEL_117;
  }

  v37 = *(v178 + 104);
  if (!v37)
  {
    goto LABEL_140;
  }

  v4 = *(*(v37 + 8 * v14) + 8);
  v38 = *(v4 + 44);
  LODWORD(v7) = v181;
  if (v38 == *(v4 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v38);
  }

  v39 = *(v4 + 32);
  if (!v39)
  {
    goto LABEL_141;
  }

  v40 = *(v4 + 44);
  v41 = (v39 + (v40 << 7));
  v42 = *v204;
  v41[4] = v203;
  v41[5] = v42;
  v43 = v205;
  v41[6] = *&v204[16];
  v41[7] = v43;
  v44 = v200;
  *v41 = v199;
  v41[1] = v44;
  v45 = v202;
  v41[2] = v201;
  v41[3] = v45;
  if (v40 == -1)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  *(v4 + 44) = v40 + 1;
  if (v5[48])
  {
    goto LABEL_142;
  }

  v8 = *(v178 + 116);
  v46 = *v5;
  if (v46 >= v8)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v9 = *(v178 + 104);
  if (!v9)
  {
    goto LABEL_143;
  }

  v47 = *(*&v9[8 * v46] + 8);
  if (v181 >= *(v47 + 44))
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v48 = *(v47 + 32);
  if (!v48)
  {
    goto LABEL_144;
  }

  v49 = v48 + (v181 << 7);
  v50 = *(v49 + 8);
  v51 = *(v49 + 16);
  v4 = *(v49 + 24);
  v52 = *(v49 + 25);
  v55 = v49 + 28;
  v53 = *(v49 + 28);
  v54 = *(v55 + 4);
  LOBYTE(v186) = v4;
  v56 = v52 == 0;
  v57 = 256;
  if (v56)
  {
    v57 = 0;
  }

  v58 = v57 | (v53 << 32);
  v59 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v50, v51, v57 | v4, v54);
  if (v59)
  {
    v11 = v180;
    v7 = v181;
  }

  else
  {
    LOBYTE(v186) = v4;
    v59 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v50, v51, v58 | v4, v54, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v11 = v180;
    v7 = v181;
    if (!v59)
    {
      goto LABEL_48;
    }
  }

  if (v11[48])
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v60 = *v11;
  if (v60 >= v8)
  {
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v61 = *v59;
  v4 = *(*&v9[8 * v60] + 8);
  v62 = *(v4 + 60);
  if (v62 == *(v4 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v62);
  }

  v63 = *(v4 + 48);
  if (!v63)
  {
    goto LABEL_158;
  }

  v64 = *(v4 + 60);
  v65 = (v63 + 8 * v64);
  *v65 = v61;
  v65[1] = v7;
  if (v64 == -1)
  {
    goto LABEL_125;
  }

  *(v4 + 60) = v64 + 1;
  if (v11[48])
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v66 = *v11;
  if (v66 >= *(v178 + 116))
  {
    goto LABEL_126;
  }

  v67 = *(v178 + 104);
  if (!v67)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  *(*(*(v67 + 8 * v66) + 8) + 64) = 0;
LABEL_48:
  v68 = *(v11 + 9);
  v194 = *(v11 + 8);
  v195 = v68;
  v196 = *(v11 + 10);
  v69 = *(v11 + 5);
  v190 = *(v11 + 4);
  v191 = v69;
  v70 = *(v11 + 7);
  v192 = *(v11 + 6);
  v193 = v70;
  v71 = *(v11 + 1);
  v186 = *v11;
  v187 = v71;
  v72 = *(v11 + 3);
  v188 = *(v11 + 2);
  v189 = v72;
  v198 = v11[192];
  v74 = *(v11 + 22);
  v73 = *(v11 + 23);
  *&v197 = v74;
  *(&v197 + 1) = v73;
  Interpreter.Iterator.updatingStack.getter();
  if (v76)
  {
    v77 = *v11;
    v7 = v11[48];
    v78 = v10[1];
    v212[0] = *v10;
    v212[1] = v78;
    v213[0] = v10[2];
    *(v213 + 9) = *(v10 + 41);
    v79 = v10;
    v9 = v179;
    v80 = v179;
    v81 = v12;
    v82 = v6;
    while (1)
    {
      v83 = *v82;
      if (*v81)
      {
        v23 = *v80;
        if ((v23[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v83)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v212);
      }

      v80 = (v83 + 16);
      v81 = (v83 + 28);
      v82 = (v83 + 48);
      v79 = v83;
    }

    v33 = *v79;
    if (!v33)
    {
      goto LABEL_173;
    }

    v23 = *v23;
    v131 = *(*(v33 + 24 * v23) + 112);
    if (v131)
    {
      v132 = *(*(v131 + 32) + 8);
      v133 = *(v132 + 16);
      v134 = v133 + 1;
      v135 = (v132 + 48 * v133 - 16);
      do
      {
        if (v134-- <= 1)
        {
          goto LABEL_69;
        }

        if (v7)
        {
          goto LABEL_132;
        }

        if (*(v74 + 116) <= v77)
        {
          goto LABEL_113;
        }

        v137 = *(v74 + 104);
        if (!v137)
        {
          goto LABEL_133;
        }

        v75 = *v135;
        v138 = *(*(v137 + 8 * v77) + 8);
        if (v75 >= *(v138 + 44))
        {
          goto LABEL_114;
        }

        v139 = *(v138 + 32);
        if (!v139)
        {
          goto LABEL_134;
        }

        v140 = v139 + (v75 << 7);
        v143 = *(v140 + 8);
        v142 = v140 + 8;
        v141 = v143;
        if (!*(v142 + 24))
        {
          goto LABEL_115;
        }

        if (*(v142 + 16))
        {
          goto LABEL_136;
        }

        if (!v141)
        {
          goto LABEL_135;
        }

        v135 -= 12;
      }

      while (*v141 != &type metadata for Event.Transaction);
      v7 = v181;
      if (v11[48])
      {
        goto LABEL_112;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v9 = v179;
  if (v11[48])
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_55:
  v84 = *v11;
  if (v84 >= *(v74 + 116))
  {
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
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v85 = *(v74 + 104);
  if (!v85)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v86 = *(*(v85 + 8 * v84) + 8);
  v87 = *(v86 + 44);
  if (v75 >= v87)
  {
    goto LABEL_128;
  }

  v88 = *(v86 + 32);
  if (!v88)
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v207);
  }

  if (v7 >= v87)
  {
    goto LABEL_129;
  }

  v89 = (v88 + (v75 << 7));
  v7 = v88 + (v7 << 7);
  v8 = *v7;
  v90 = v89[31];
  if (v90 == v89[30])
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v90);
  }

  v91 = *(v89 + 14);
  if (!v91)
  {
    goto LABEL_163;
  }

  v92 = v89[31];
  v93 = v91 + 8 * v92;
  *v93 = -24064;
  *(v93 + 4) = v8;
  if (v92 == -1)
  {
    goto LABEL_130;
  }

  v89[31] = v92 + 1;
  v4 = *v89;
  v94 = *(v7 + 124);
  if (v94 == *(v7 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v94);
  }

  v95 = *(v7 + 112);
  if (!v95)
  {
    goto LABEL_164;
  }

  v96 = *(v7 + 124);
  v97 = v95 + 8 * v96;
  *v97 = 25088;
  *(v97 + 4) = v4;
  if (v96 == -1)
  {
    goto LABEL_131;
  }

  *(v7 + 124) = v96 + 1;
LABEL_69:
  v98 = v10[1];
  v210[0] = *v10;
  v210[1] = v98;
  v211[0] = v10[2];
  *(v211 + 9) = *(v10 + 41);
  v99 = v10;
  v100 = v9;
  v101 = v12;
  v102 = v6;
  while (1)
  {
    v103 = *v102;
    if (*v101)
    {
      v23 = *v100;
      if ((v23[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v103)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v210);
    }

    v100 = (v103 + 16);
    v101 = (v103 + 28);
    v102 = (v103 + 48);
    v99 = v103;
  }

  v104 = *v99;
  if (!v104)
  {
    goto LABEL_168;
  }

  v105 = *(*(v104 + 24 * *v23) + 112);
  if (!v105)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (*(*(*(v105 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v11[48])
    {
      __break(1u);
    }

    else
    {
      v106 = *v11;
      if (v106 >= *(v74 + 116))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v107 = *(v74 + 104);
      if (v107)
      {
        v108 = *(*(v107 + 8 * v106) + 8);
        v109 = *(v108 + 44);
        if (!v109)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v110 = *(v108 + 32);
        if (v110)
        {
          v111 = v110 + (v109 << 7);
          v112 = *(v111 - 112);
          v186 = *(v111 - 128);
          v187 = v112;
          v113 = *(v111 - 48);
          v190 = *(v111 - 64);
          v191 = v113;
          v114 = *(v111 - 16);
          v192 = *(v111 - 32);
          v193 = v114;
          v115 = *(v111 - 80);
          v188 = *(v111 - 96);
          v189 = v115;
          LOBYTE(v207) = BYTE8(v187);
          v116 = HeterogeneousBuffer.type(at:)(0, *(&v186 + 1), v187, SBYTE8(v187), v188);
          v117 = swift_conformsToProtocol2();
          if (v117)
          {
            v118 = v117;
            LOBYTE(v207) = BYTE8(v187);
            v119 = HeterogeneousBuffer.index(after:)(0, *(&v186 + 1), v187, SBYTE8(v187), v188);
            LOBYTE(v207) = BYTE8(v187);
            v120 = HeterogeneousBuffer.type(at:)(v119, *(&v186 + 1), v187, SBYTE8(v187), v188);
            v121 = swift_conformsToProtocol2();
            if (v121)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v120, &v186, v116, v118, v121, &v182);
              v177 = v183;
              v178 = v182;
              v7 = v184;
              v122 = v10[1];
              v207 = *v10;
              v208 = v122;
              v209[0] = v10[2];
              *(v209 + 9) = *(v10 + 41);
              v123 = v179;
              while (1)
              {
                v124 = *v6;
                if (*v12)
                {
                  v23 = *v123;
                  if (((*v123)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v124)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v207);
                }

                v123 = (v124 + 16);
                v12 = (v124 + 28);
                v6 = (v124 + 48);
                v10 = v124;
              }

              if (*v10)
              {
                v125 = *(*(*v10 + 24 * *v23) + 112);
                if (v125)
                {
                  v4 = *(v125 + 32);
                  v8 = *(v4 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v4 + 8) = v8;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_94:
                    v128 = *(v8 + 2);
                    v127 = *(v8 + 3);
                    if (v128 >= v127 >> 1)
                    {
                      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v8);
                      *(v4 + 8) = v8;
                    }

                    *(v8 + 2) = v128 + 1;
                    v129 = &v8[48 * v128];
                    *(v129 + 8) = v181;
                    *(v129 + 40) = v178;
                    *(v129 + 56) = v177;
                    *(v129 + 18) = v7;
                    Interpreter.Iterator.relate(prior:)(v181);
                    return v181;
                  }

LABEL_123:
                  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
                  *(v4 + 8) = v8;
                  goto LABEL_94;
                }

                goto LABEL_156;
              }

              goto LABEL_169;
            }

LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

LABEL_153:
        __break(1u);
        goto LABEL_154;
      }
    }

    __break(1u);
    goto LABEL_153;
  }

LABEL_146:
  v144 = *(v11 + 11);
  v196 = *(v11 + 10);
  v197 = v144;
  v198 = v11[192];
  v145 = *(v11 + 7);
  v192 = *(v11 + 6);
  v193 = v145;
  v146 = *(v11 + 9);
  v194 = *(v11 + 8);
  v195 = v146;
  v147 = *(v11 + 3);
  v188 = *(v11 + 2);
  v189 = v147;
  v148 = *(v11 + 5);
  v190 = *(v11 + 4);
  v191 = v148;
  v149 = *(v11 + 1);
  v186 = *v11;
  v187 = v149;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v150 = swift_allocObject();
  v181 = xmmword_26C328DC0;
  *(v150 + 16) = xmmword_26C328DC0;
  v179 = xmmword_26C32DAD0;
  v207 = xmmword_26C32DAD0;
  LOBYTE(v208) = 1;
  *&v209[0] = 0;
  *(&v208 + 1) = 0;
  WORD4(v209[0]) = 512;
  v151 = Interpreter.Iterator.describe(state:)(&v207);
  v7 = MEMORY[0x277D837D0];
  *(v150 + 56) = MEMORY[0x277D837D0];
  *(v150 + 32) = v151;
  *(v150 + 40) = v152;
  print(_:separator:terminator:)();

  v153 = v10[1];
  v207 = *v10;
  v208 = v153;
  v209[0] = v10[2];
  *(v209 + 9) = *(v10 + 41);
  while (1)
  {
    v154 = *v6;
    if (*v12)
    {
      v23 = *v9;
      if ((*(*v9 + 4) & 1) == 0)
      {
        break;
      }
    }

    if (!v154)
    {
      goto LABEL_165;
    }

    v9 = (v154 + 16);
    v12 = (v154 + 28);
    v6 = (v154 + 48);
    v10 = v154;
  }

LABEL_170:
  v33 = *v10;
  if (!*v10)
  {
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
  }

  v155 = *(*(v33 + 24 * *v23) + 112);
  if (!v155)
  {
    __break(1u);
  }

  v156 = *(v155 + 32);
  v158 = v156[1];
  v157 = v156[2];
  v159 = v156[3];
  v160 = v156[4];
  v161 = swift_allocObject();
  *(v161 + 16) = v181;
  v186 = v179;
  LOBYTE(v187) = 1;
  *(&v187 + 1) = 0;
  *&v188 = 0;
  WORD4(v188) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v159);
  v162 = specialized Interpreter.Control.Events.describe(state:)(&v186, v158);
  *(v161 + 56) = v7;
  *(v161 + 32) = v162;
  *(v161 + 40) = v163;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v159);
  v164 = *(v180 + 11);
  v196 = *(v180 + 10);
  v197 = v164;
  v198 = v180[192];
  v165 = *(v180 + 7);
  v192 = *(v180 + 6);
  v193 = v165;
  v166 = *(v180 + 9);
  v194 = *(v180 + 8);
  v195 = v166;
  v167 = *(v180 + 3);
  v188 = *(v180 + 2);
  v189 = v167;
  v168 = *(v180 + 5);
  v190 = *(v180 + 4);
  v191 = v168;
  v169 = *(v180 + 1);
  v186 = *v180;
  v187 = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = v181;
  v182 = v179;
  LOBYTE(v183) = 1;
  *(&v183 + 1) = 0;
  v184 = 0;
  v185 = 512;
  v171 = Interpreter.Iterator.describe(state:)(&v182);
  *(v170 + 56) = v7;
  *(v170 + 32) = v171;
  *(v170 + 40) = v172;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(int a1, uint64_t a2, char a3)
{
  if (v3[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v4 = v3;
  v5 = *(v3 + 22);
  v6 = *v3;
  if (v6 >= *(v5 + 116))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v8 = *(*(*(v7 + 8 * v6) + 8) + 44);
  v9 = v3 + 56;
  v10 = *(v3 + 72);
  v138[0] = *(v3 + 56);
  v138[1] = v10;
  v139[0] = *(v3 + 88);
  v11 = v3 + 84;
  v12 = v3 + 88;
  v13 = (v4 + 104);
  *(v139 + 9) = *(v4 + 97);
  v14 = (v4 + 56);
  v15 = (v4 + 72);
  v16 = v4 + 84;
  v17 = (v4 + 104);
  while (1)
  {
    v18 = *v17;
    if (*v16)
    {
      v19 = *v15;
      if ((v19[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v18)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v138);
    }

    v15 = (v18 + 16);
    v16 = (v18 + 28);
    v17 = (v18 + 48);
    v14 = v18;
  }

  v20 = *v14;
  if (!v20)
  {
    goto LABEL_123;
  }

  v21 = *(*(v20 + 24 * *v19) + 112);
  if (!v21)
  {
    goto LABEL_107;
  }

  v22 = *(v4 + 20);
  v106 = v4[168];
  v107 = **(v21 + 32);
  v105 = *(v4 + 43);
  v23 = *(v4 + 72);
  v136[0] = *v9;
  v136[1] = v23;
  v137[0] = *(v4 + 88);
  v24 = v4 + 100;
  v25 = *(v4 + 29);
  v26 = v4 + 56;
  v27 = (v4 + 104);
  *(v137 + 9) = *(v4 + 97);
  while (1)
  {
    v28 = *v27;
    if (v25 < *v24)
    {
      v29 = (*v12 + 8 * v25);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, v136);
    }

    v12 = (v28 + 32);
    v24 = (v28 + 44);
    v27 = (v28 + 48);
    v26 = v28;
  }

  if (!*v26)
  {
    goto LABEL_124;
  }

  v30 = v8;
  v31 = *v26 + 24 * *v29;
  v104 = *(*v31 + 56);
  v32 = *(*v31 + 64);
  *(&v127 + 1) = 0;
  *&v128 = 0;
  WORD4(v128) = 257;
  LODWORD(v129) = 0;
  HIDWORD(v128) = 0;
  *(&v129 + 1) = 0;
  LOWORD(v130) = 0;
  *(&v130 + 1) = -1;
  *&v132[8] = xmmword_26C32E070;
  *&v132[24] = 0;
  *&v133 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v133 + 1) = v33;
  LODWORD(v127) = v30;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GraphV_Ttg5, &type metadata for Event.Graph, &_s21SwiftUITracingSupport5EventV5GraphVmMd, &_s21SwiftUITracingSupport5EventV5GraphVmMR);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2);
  DWORD1(v129) = v107;
  *(&v131 + 4) = v22;
  BYTE12(v131) = v106;
  *v132 = v105;
  if ((v32 & 1) == 0)
  {
    *&v132[8] = v104;
  }

  if (v6 >= *(v5 + 116))
  {
    goto LABEL_88;
  }

  v34 = *(v5 + 104);
  if (!v34)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v35 = *(*(v34 + 8 * v6) + 8);
  v36 = *(v35 + 44);
  if (v36 == *(v35 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v36);
  }

  v37 = *(v35 + 32);
  if (!v37)
  {
    goto LABEL_109;
  }

  v38 = *(v35 + 44);
  v39 = (v37 + (v38 << 7));
  LOBYTE(v131) = a3 & 1;
  v39[4] = v131;
  v39[5] = *v132;
  v39[6] = *&v132[16];
  v39[7] = v133;
  *v39 = v127;
  v39[1] = v128;
  v39[2] = v129;
  v39[3] = v130;
  if (v38 == -1)
  {
    goto LABEL_89;
  }

  *(v35 + 44) = v38 + 1;
  if (v4[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v40 = *v4;
  if (v40 >= *(v5 + 116))
  {
    goto LABEL_90;
  }

  v41 = *(v5 + 104);
  if (!v41)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v42 = *(*(v41 + 8 * v40) + 8);
  if (v30 >= *(v42 + 44))
  {
    goto LABEL_91;
  }

  v109 = *(v5 + 116);
  v111 = v5;
  v43 = *(v42 + 32);
  if (!v43)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v113 = v30;
  v44 = v43 + (v30 << 7);
  v45 = *(v44 + 8);
  v46 = *(v44 + 16);
  v47 = *(v44 + 24);
  v48 = *(v44 + 25);
  v51 = v44 + 28;
  v49 = *(v44 + 28);
  v50 = *(v51 + 4);
  v52 = v48 == 0;
  v53 = 256;
  if (v52)
  {
    v53 = 0;
  }

  v54 = v53 | (v49 << 32);
  v55 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v45, v46, v53 | v47, v50);
  if (v55)
  {
    v56 = v113;
  }

  else
  {
    v55 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v45, v46, v54 | v47, v50, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v56 = v113;
    if (!v55)
    {
      goto LABEL_48;
    }
  }

  if (v4[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v57 = *v4;
  if (v57 >= v109)
  {
    goto LABEL_92;
  }

  v58 = *v55;
  v59 = *(*(v41 + 8 * v57) + 8);
  v60 = *(v59 + 60);
  if (v60 == *(v59 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v60);
  }

  v61 = *(v59 + 48);
  if (!v61)
  {
    goto LABEL_114;
  }

  v62 = *(v59 + 60);
  v63 = (v61 + 8 * v62);
  *v63 = v58;
  v63[1] = v56;
  if (v62 == -1)
  {
    goto LABEL_93;
  }

  *(v59 + 60) = v62 + 1;
  if (v4[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v64 = *v4;
  if (v64 >= *(v111 + 116))
  {
    goto LABEL_94;
  }

  v65 = *(v111 + 104);
  if (!v65)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v65 + 8 * v64) + 8) + 64) = 0;
LABEL_48:
  v122 = *(v4 + 8);
  v123 = *(v4 + 9);
  v124 = *(v4 + 10);
  v118 = *(v4 + 4);
  v119 = *(v4 + 5);
  v120 = *(v4 + 6);
  v121 = *(v4 + 7);
  v114 = *v4;
  v115 = *(v4 + 1);
  v116 = *(v4 + 2);
  v117 = *(v4 + 3);
  v126 = v4[192];
  v66 = *(v4 + 22);
  v125 = *(v4 + 23);
  Interpreter.Iterator.updatingStack.getter();
  if (v68)
  {
    v69 = *v4;
    v70 = v4[48];
    v71 = *(v4 + 72);
    v134[0] = *v9;
    v134[1] = v71;
    v135[0] = *(v4 + 88);
    *(v135 + 9) = *(v4 + 97);
    v72 = (v4 + 72);
    while (1)
    {
      v73 = *v13;
      if (*v11)
      {
        if (((*v72)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v73)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v134);
      }

      v72 = (v73 + 16);
      v11 = (v73 + 28);
      v13 = (v73 + 48);
      v9 = v73;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *(*(*v9 + 24 * **v72) + 112);
    if (v74)
    {
      v75 = *(*(v74 + 32) + 8);
      v76 = *(v75 + 16);
      v77 = v76 + 1;
      v78 = (v75 + 48 * v76 - 16);
      while (v77-- > 1)
      {
        if (v70)
        {
          goto LABEL_100;
        }

        if (*(v66 + 116) <= v69)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v80 = *(v66 + 104);
        if (!v80)
        {
          goto LABEL_101;
        }

        v67 = *v78;
        v81 = *(*(v80 + 8 * v69) + 8);
        if (v67 >= *(v81 + 44))
        {
          goto LABEL_85;
        }

        v82 = *(v81 + 32);
        if (!v82)
        {
          goto LABEL_102;
        }

        v83 = v82 + (v67 << 7);
        v86 = *(v83 + 8);
        v85 = v83 + 8;
        v84 = v86;
        if (!*(v85 + 24))
        {
          goto LABEL_86;
        }

        if (*(v85 + 16))
        {
          goto LABEL_104;
        }

        if (!v84)
        {
          goto LABEL_103;
        }

        v78 -= 12;
        if (*v84 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v4[48])
  {
    goto LABEL_117;
  }

  v87 = *v4;
  if (v87 >= *(v66 + 116))
  {
    goto LABEL_95;
  }

  v88 = *(v66 + 104);
  if (!v88)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v89 = *(*(v88 + 8 * v87) + 8);
  v90 = *(v89 + 44);
  if (v67 >= v90)
  {
    goto LABEL_96;
  }

  v91 = *(v89 + 32);
  if (v91)
  {
    if (v56 < v90)
    {
      v92 = (v91 + (v67 << 7));
      v93 = (v91 + (v56 << 7));
      v94 = *v93;
      v95 = v92[31];
      if (v95 == v92[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v95);
      }

      v96 = *(v92 + 14);
      if (!v96)
      {
        goto LABEL_120;
      }

      v97 = v92[31];
      v98 = v96 + 8 * v97;
      *v98 = -24064;
      *(v98 + 4) = v94;
      if (v97 != -1)
      {
        v92[31] = v97 + 1;
        v99 = *v92;
        v100 = v93[31];
        if (v100 == v93[30])
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * v100);
        }

        v101 = *(v93 + 14);
        if (!v101)
        {
          goto LABEL_121;
        }

        v102 = v93[31];
        v103 = v101 + 8 * v102;
        *v103 = 25088;
        *(v103 + 4) = v99;
        if (v102 != -1)
        {
          v93[31] = v102 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v56);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
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
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

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
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}