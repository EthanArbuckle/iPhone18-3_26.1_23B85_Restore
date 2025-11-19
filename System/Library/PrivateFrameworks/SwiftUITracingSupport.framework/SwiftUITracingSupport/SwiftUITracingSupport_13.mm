uint64_t T_ReuseViewInputsDifferent.update(within:)(unsigned __int8 *a1, unint64_t a2)
{
  return T_ReuseViewInputsDifferent.update(within:)(a1, a2);
}

{
  LODWORD(v3) = specialized ReuseEventCategory.init(rawValue:)(HIDWORD(a2));
  if (v3 != 1)
  {
    goto LABEL_40;
  }

  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v75[0] = *(a1 + 56);
  v75[1] = v5;
  *v76 = *(a1 + 88);
  *&v76[9] = *(a1 + 97);
  v6 = (a1 + 72);
  v7 = a1 + 84;
  v8 = (a1 + 104);
  while (1)
  {
    v9 = *v8;
    if (*v7)
    {
      v10 = *v6;
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v75);
    }

    v6 = (v9 + 16);
    v7 = (v9 + 28);
    v8 = (v9 + 48);
    v4 = v9;
  }

  v11 = *v4;
  if (!v11)
  {
    goto LABEL_53;
  }

  v12 = *(*(v11 + 24 * *v10) + 112);
  if (!v12)
  {
    goto LABEL_43;
  }

  v3 = *(*(*(v12 + 32) + 8) + 16);
  if (!v3)
  {
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
    if (v3 == 12)
    {
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (a1[48])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v13 = *(a1 + 22);
  v3 = *a1;
  if (v3 >= *(v13 + 116))
  {
    goto LABEL_35;
  }

  v14 = *(v13 + 104);
  if (!v14)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v15 = *(*(v14 + 8 * v3) + 8);
  v66 = *(a1 + 10);
  v67 = *(a1 + 11);
  v68 = a1[192];
  v62 = *(a1 + 6);
  v63 = *(a1 + 7);
  v64 = *(a1 + 8);
  v65 = *(a1 + 9);
  v58 = *(a1 + 2);
  v59 = *(a1 + 3);
  v60 = *(a1 + 4);
  v61 = *(a1 + 5);
  v56 = *a1;
  v57 = *(a1 + 1);
  Interpreter.Iterator.updatingValue.getter();
  if (v17)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LODWORD(v3) = v16;
  if (v16 >= *(v15 + 44))
  {
    goto LABEL_36;
  }

  v18 = *(v15 + 32);
  if (!v18)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v18 + (v16 << 7) + 49) = 1;
  v19 = *a1;
  v53 = *(a1 + 8);
  v54 = *(a1 + 24);
  v55 = *(a1 + 5);
  v20 = a1[48];
  LODWORD(v52) = *(a1 + 49);
  *(&v52 + 3) = *(a1 + 13);
  v21 = *(a1 + 8);
  v22 = *(a1 + 9);
  v23 = *(a1 + 20);
  v24 = *(a1 + 21);
  v51 = *(a1 + 88);
  v25 = *(a1 + 13);
  v26 = a1[112];
  v48 = *(a1 + 113);
  v49 = *(a1 + 129);
  *v50 = *(a1 + 145);
  *&v50[15] = *(a1 + 10);
  v27 = *(a1 + 22);
  v46 = *(a1 + 23);
  v47 = a1[192];
  v69[0] = *(a1 + 7);
  v69[1] = v21;
  v69[2] = v22;
  v70 = v23;
  v71 = v24;
  v72 = *(a1 + 88);
  v28 = v69[0];
  v73 = v25;
  v29 = v22;
  v30 = v25;
  v74 = v26;
  if (!v24)
  {
    goto LABEL_19;
  }

  while ((v29[1] & 1) != 0)
  {
    do
    {
LABEL_19:
      if (!v30)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v69);
      }

      v28 = *v30;
      v29 = v30[2];
      v31 = *(v30 + 7);
      v30 = v30[6];
    }

    while (!v31);
  }

  if (!v28)
  {
    goto LABEL_54;
  }

  v32 = *(*(v28 + 24 * *v29) + 112);
  if (!v32)
  {
    goto LABEL_48;
  }

  v3 = *(*(*(v32 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_37;
  }

  if (v20)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  LODWORD(v3) = v19;
  if (v19 >= *(v27 + 116))
  {
    goto LABEL_38;
  }

  v33 = *(v27 + 104);
  if (!v33)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v34 = *(*(v33 + 8 * v19) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v36)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  LODWORD(v3) = v35;
  if (v35 >= *(v34 + 44))
  {
    goto LABEL_39;
  }

  v37 = *(v34 + 32);
  if (!v37)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v38 = v37 + (v35 << 7);
  v39 = *(v38 + 8);
  v40 = *(v38 + 16);
  v41 = *(v38 + 24);
  v42 = *(v38 + 25);
  v44 = v38 + 28;
  v43 = *(v38 + 28);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v39, v40, v41, *(v44 + 4));
  if (!result)
  {
LABEL_55:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t T_ReuseFailedTypeComparison.update(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = specialized ReuseEventCategory.init(rawValue:)(a3);
  if ((v4 - 3) >= 3 && v4 != 1)
  {
    goto LABEL_54;
  }

  v6 = (a1 + 56);
  v7 = *(a1 + 72);
  v75[0] = *(a1 + 56);
  v75[1] = v7;
  *v76 = *(a1 + 88);
  *&v76[9] = *(a1 + 97);
  v8 = (a1 + 72);
  v9 = a1 + 84;
  v10 = (a1 + 104);
  while (1)
  {
    v11 = *v10;
    if (*v9)
    {
      v12 = *v8;
      if ((v12[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v75);
    }

    v8 = (v11 + 16);
    v9 = (v11 + 28);
    v10 = (v11 + 48);
    v6 = v11;
  }

  v13 = *v6;
  if (!v13)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v4 = *(*(v13 + 24 * *v12) + 112);
  if (!v4)
  {
    goto LABEL_44;
  }

  v4 = *(*(*(v4 + 32) + 8) + 16);
  if (!v4)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  LODWORD(v4) = a1[48];
  if (a1[48])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v14 = *(a1 + 22);
  v4 = *a1;
  if (v4 >= *(v14 + 116))
  {
    goto LABEL_39;
  }

  v15 = *(v14 + 104);
  if (!v15)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v16 = *(*(v15 + 8 * v4) + 8);
  v66 = *(a1 + 10);
  v67 = *(a1 + 11);
  v68 = a1[192];
  v62 = *(a1 + 6);
  v63 = *(a1 + 7);
  v64 = *(a1 + 8);
  v65 = *(a1 + 9);
  v58 = *(a1 + 2);
  v59 = *(a1 + 3);
  v60 = *(a1 + 4);
  v61 = *(a1 + 5);
  v56 = *a1;
  v57 = *(a1 + 1);
  Interpreter.Iterator.updatingValue.getter();
  if (v18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  LODWORD(v4) = v17;
  if (v17 >= *(v16 + 44))
  {
    goto LABEL_40;
  }

  v19 = *(v16 + 32);
  if (!v19)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v19 + (v17 << 7) + 49) = 1;
  v20 = *a1;
  v53 = *(a1 + 8);
  v54 = *(a1 + 24);
  v55 = *(a1 + 5);
  v21 = a1[48];
  LODWORD(v52) = *(a1 + 49);
  *(&v52 + 3) = *(a1 + 13);
  v22 = *(a1 + 8);
  v23 = *(a1 + 9);
  v24 = *(a1 + 20);
  v25 = *(a1 + 21);
  v51 = *(a1 + 88);
  v26 = *(a1 + 13);
  v27 = a1[112];
  v48 = *(a1 + 113);
  v49 = *(a1 + 129);
  *v50 = *(a1 + 145);
  *&v50[15] = *(a1 + 10);
  v28 = *(a1 + 22);
  v46 = *(a1 + 23);
  v47 = a1[192];
  v69[0] = *(a1 + 7);
  v69[1] = v22;
  v69[2] = v23;
  v70 = v24;
  v71 = v25;
  v72 = *(a1 + 88);
  v29 = v69[0];
  v73 = v26;
  v30 = v23;
  v31 = v26;
  v74 = v27;
  if (!v25)
  {
    goto LABEL_23;
  }

  while ((v30[1] & 1) != 0)
  {
    do
    {
LABEL_23:
      if (!v31)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v69);
      }

      v29 = *v31;
      v30 = v31[2];
      v32 = *(v31 + 7);
      v31 = v31[6];
    }

    while (!v32);
  }

  if (!v29)
  {
    goto LABEL_57;
  }

  v4 = *(*(v29 + 24 * *v30) + 112);
  if (!v4)
  {
    goto LABEL_49;
  }

  v4 = *(*(*(v4 + 32) + 8) + 16);
  if (!v4)
  {
    goto LABEL_41;
  }

  if (v21)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  LODWORD(v4) = v20;
  if (v20 >= *(v28 + 116))
  {
    goto LABEL_42;
  }

  v33 = *(v28 + 104);
  if (!v33)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v34 = *(*(v33 + 8 * v20) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v36)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  LODWORD(v4) = v35;
  if (v35 >= *(v34 + 44))
  {
    goto LABEL_43;
  }

  v37 = *(v34 + 32);
  if (!v37)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    if (v4 != 12)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_56;
  }

  v38 = v37 + (v35 << 7);
  v39 = *(v38 + 8);
  v40 = *(v38 + 16);
  v41 = *(v38 + 24);
  v42 = *(v38 + 25);
  v44 = v38 + 28;
  v43 = *(v38 + 28);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v39, v40, v41, *(v44 + 4));
  if (!result)
  {
LABEL_59:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t T_ReuseCacheItemEvent.update(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = specialized ReuseEventCategory.init(rawValue:)(a3);
  if ((v4 - 6) >= 4 && v4 != 1)
  {
    goto LABEL_54;
  }

  v6 = (a1 + 56);
  v7 = *(a1 + 72);
  v75[0] = *(a1 + 56);
  v75[1] = v7;
  *v76 = *(a1 + 88);
  *&v76[9] = *(a1 + 97);
  v8 = (a1 + 72);
  v9 = a1 + 84;
  v10 = (a1 + 104);
  while (1)
  {
    v11 = *v10;
    if (*v9)
    {
      v12 = *v8;
      if ((v12[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v75);
    }

    v8 = (v11 + 16);
    v9 = (v11 + 28);
    v10 = (v11 + 48);
    v6 = v11;
  }

  v13 = *v6;
  if (!v13)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v4 = *(*(v13 + 24 * *v12) + 112);
  if (!v4)
  {
    goto LABEL_44;
  }

  v4 = *(*(*(v4 + 32) + 8) + 16);
  if (!v4)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  LODWORD(v4) = a1[48];
  if (a1[48])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v14 = *(a1 + 22);
  v4 = *a1;
  if (v4 >= *(v14 + 116))
  {
    goto LABEL_39;
  }

  v15 = *(v14 + 104);
  if (!v15)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v16 = *(*(v15 + 8 * v4) + 8);
  v66 = *(a1 + 10);
  v67 = *(a1 + 11);
  v68 = a1[192];
  v62 = *(a1 + 6);
  v63 = *(a1 + 7);
  v64 = *(a1 + 8);
  v65 = *(a1 + 9);
  v58 = *(a1 + 2);
  v59 = *(a1 + 3);
  v60 = *(a1 + 4);
  v61 = *(a1 + 5);
  v56 = *a1;
  v57 = *(a1 + 1);
  Interpreter.Iterator.updatingValue.getter();
  if (v18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  LODWORD(v4) = v17;
  if (v17 >= *(v16 + 44))
  {
    goto LABEL_40;
  }

  v19 = *(v16 + 32);
  if (!v19)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v19 + (v17 << 7) + 49) = 1;
  v20 = *a1;
  v53 = *(a1 + 8);
  v54 = *(a1 + 24);
  v55 = *(a1 + 5);
  v21 = a1[48];
  LODWORD(v52) = *(a1 + 49);
  *(&v52 + 3) = *(a1 + 13);
  v22 = *(a1 + 8);
  v23 = *(a1 + 9);
  v24 = *(a1 + 20);
  v25 = *(a1 + 21);
  v51 = *(a1 + 88);
  v26 = *(a1 + 13);
  v27 = a1[112];
  v48 = *(a1 + 113);
  v49 = *(a1 + 129);
  *v50 = *(a1 + 145);
  *&v50[15] = *(a1 + 10);
  v28 = *(a1 + 22);
  v46 = *(a1 + 23);
  v47 = a1[192];
  v69[0] = *(a1 + 7);
  v69[1] = v22;
  v69[2] = v23;
  v70 = v24;
  v71 = v25;
  v72 = *(a1 + 88);
  v29 = v69[0];
  v73 = v26;
  v30 = v23;
  v31 = v26;
  v74 = v27;
  if (!v25)
  {
    goto LABEL_23;
  }

  while ((v30[1] & 1) != 0)
  {
    do
    {
LABEL_23:
      if (!v31)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v69);
      }

      v29 = *v31;
      v30 = v31[2];
      v32 = *(v31 + 7);
      v31 = v31[6];
    }

    while (!v32);
  }

  if (!v29)
  {
    goto LABEL_57;
  }

  v4 = *(*(v29 + 24 * *v30) + 112);
  if (!v4)
  {
    goto LABEL_49;
  }

  v4 = *(*(*(v4 + 32) + 8) + 16);
  if (!v4)
  {
    goto LABEL_41;
  }

  if (v21)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  LODWORD(v4) = v20;
  if (v20 >= *(v28 + 116))
  {
    goto LABEL_42;
  }

  v33 = *(v28 + 104);
  if (!v33)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v34 = *(*(v33 + 8 * v20) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v36)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  LODWORD(v4) = v35;
  if (v35 >= *(v34 + 44))
  {
    goto LABEL_43;
  }

  v37 = *(v34 + 32);
  if (!v37)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    if (v4 != 12)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_56;
  }

  v38 = v37 + (v35 << 7);
  v39 = *(v38 + 8);
  v40 = *(v38 + 16);
  v41 = *(v38 + 24);
  v42 = *(v38 + 25);
  v44 = v38 + 28;
  v43 = *(v38 + 28);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v39, v40, v41, *(v44 + 4));
  if (!result)
  {
LABEL_59:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t T_ReuseCacheItemWithID.update(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v5) = specialized ReuseEventCategory.init(rawValue:)(a4);
  if (v5 != 1 && v5 != 10)
  {
    goto LABEL_44;
  }

  v7 = (a1 + 56);
  v8 = *(a1 + 72);
  v78[0] = *(a1 + 56);
  v78[1] = v8;
  *v79 = *(a1 + 88);
  *&v79[9] = *(a1 + 97);
  v9 = (a1 + 72);
  v10 = a1 + 84;
  v11 = (a1 + 104);
  while (1)
  {
    v12 = *v11;
    if (*v10)
    {
      v13 = *v9;
      if ((v13[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v78);
    }

    v9 = (v12 + 16);
    v10 = (v12 + 28);
    v11 = (v12 + 48);
    v7 = v12;
  }

  v14 = *v7;
  if (!v14)
  {
    goto LABEL_57;
  }

  v15 = *(*(v14 + 24 * *v13) + 112);
  if (!v15)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v5 = *(*(*(v15 + 32) + 8) + 16);
  if (!v5)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    if (v5 != 12)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_46;
  }

  if (a1[48])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v16 = *(a1 + 22);
  v5 = *a1;
  if (v5 >= *(v16 + 116))
  {
    goto LABEL_39;
  }

  v17 = *(v16 + 104);
  if (!v17)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v18 = *(*(v17 + 8 * v5) + 8);
  v69 = *(a1 + 10);
  v70 = *(a1 + 11);
  v71 = a1[192];
  v65 = *(a1 + 6);
  v66 = *(a1 + 7);
  v67 = *(a1 + 8);
  v68 = *(a1 + 9);
  v61 = *(a1 + 2);
  v62 = *(a1 + 3);
  v63 = *(a1 + 4);
  v64 = *(a1 + 5);
  v59 = *a1;
  v60 = *(a1 + 1);
  Interpreter.Iterator.updatingValue.getter();
  if (v20)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  LODWORD(v5) = v19;
  if (v19 >= *(v18 + 44))
  {
    goto LABEL_40;
  }

  v21 = *(v18 + 32);
  if (!v21)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(v21 + (v19 << 7) + 49) = 1;
  v22 = *a1;
  v56 = *(a1 + 8);
  v57 = *(a1 + 24);
  v58 = *(a1 + 5);
  v23 = a1[48];
  LODWORD(v55) = *(a1 + 49);
  *(&v55 + 3) = *(a1 + 13);
  v24 = *(a1 + 8);
  v25 = *(a1 + 9);
  v26 = *(a1 + 20);
  v27 = *(a1 + 21);
  v54 = *(a1 + 88);
  v28 = *(a1 + 13);
  v29 = a1[112];
  v51 = *(a1 + 113);
  v52 = *(a1 + 129);
  *v53 = *(a1 + 145);
  *&v53[15] = *(a1 + 10);
  v30 = *(a1 + 22);
  v49 = *(a1 + 23);
  v50 = a1[192];
  v72[0] = *(a1 + 7);
  v72[1] = v24;
  v72[2] = v25;
  v73 = v26;
  v74 = v27;
  v75 = *(a1 + 88);
  v31 = v72[0];
  v76 = v28;
  v32 = v25;
  v33 = v28;
  v77 = v29;
  if (!v27)
  {
    goto LABEL_23;
  }

  while ((v32[1] & 1) != 0)
  {
    do
    {
LABEL_23:
      if (!v33)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v72);
      }

      v31 = *v33;
      v32 = v33[2];
      v34 = *(v33 + 7);
      v33 = v33[6];
    }

    while (!v34);
  }

  if (!v31)
  {
    goto LABEL_58;
  }

  v35 = *(*(v31 + 24 * *v32) + 112);
  if (!v35)
  {
    goto LABEL_51;
  }

  v5 = *(*(*(v35 + 32) + 8) + 16);
  if (!v5)
  {
    goto LABEL_41;
  }

  if (v23)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  LODWORD(v5) = v22;
  if (v22 >= *(v30 + 116))
  {
    goto LABEL_42;
  }

  v36 = *(v30 + 104);
  if (!v36)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v37 = *(*(v36 + 8 * v22) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v39)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  LODWORD(v5) = v38;
  if (v38 >= *(v37 + 44))
  {
    goto LABEL_43;
  }

  v40 = *(v37 + 32);
  if (!v40)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v41 = v40 + (v38 << 7);
  v42 = *(v41 + 8);
  v43 = *(v41 + 16);
  v44 = *(v41 + 24);
  v45 = *(v41 + 25);
  v47 = v41 + 28;
  v46 = *(v41 + 28);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v42, v43, v44, *(v47 + 4));
  if (!result)
  {
LABEL_59:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t T_ReuseIncrementalChildReuseAttempt.update(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = specialized ReuseEventCategory.init(rawValue:)(a3);
  if (v4 != 11)
  {
    goto LABEL_40;
  }

  v5 = (a1 + 56);
  v6 = *(a1 + 72);
  v76[0] = *(a1 + 56);
  v76[1] = v6;
  *v77 = *(a1 + 88);
  *&v77[9] = *(a1 + 97);
  v7 = (a1 + 72);
  v8 = a1 + 84;
  v9 = (a1 + 104);
  while (1)
  {
    v10 = *v9;
    if (*v8)
    {
      v11 = *v7;
      if ((v11[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v10)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v76);
    }

    v7 = (v10 + 16);
    v8 = (v10 + 28);
    v9 = (v10 + 48);
    v5 = v10;
  }

  v12 = *v5;
  if (!v12)
  {
    goto LABEL_53;
  }

  v13 = *(*(v12 + 24 * *v11) + 112);
  if (!v13)
  {
    goto LABEL_43;
  }

  v4 = *(*(*(v13 + 32) + 8) + 16);
  if (!v4)
  {
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
    if (v4 == 12)
    {
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (a1[48])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v14 = *(a1 + 22);
  v4 = *a1;
  if (v4 >= *(v14 + 116))
  {
    goto LABEL_35;
  }

  v15 = *(v14 + 104);
  if (!v15)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v16 = *(*(v15 + 8 * v4) + 8);
  v67 = *(a1 + 10);
  v68 = *(a1 + 11);
  v69 = a1[192];
  v63 = *(a1 + 6);
  v64 = *(a1 + 7);
  v65 = *(a1 + 8);
  v66 = *(a1 + 9);
  v59 = *(a1 + 2);
  v60 = *(a1 + 3);
  v61 = *(a1 + 4);
  v62 = *(a1 + 5);
  v57 = *a1;
  v58 = *(a1 + 1);
  Interpreter.Iterator.updatingValue.getter();
  if (v18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LODWORD(v4) = v17;
  if (v17 >= *(v16 + 44))
  {
    goto LABEL_36;
  }

  v19 = *(v16 + 32);
  if (!v19)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v19 + (v17 << 7) + 49) = 1;
  v20 = *a1;
  v54 = *(a1 + 8);
  v55 = *(a1 + 24);
  v56 = *(a1 + 5);
  v21 = a1[48];
  LODWORD(v53) = *(a1 + 49);
  *(&v53 + 3) = *(a1 + 13);
  v22 = *(a1 + 8);
  v23 = *(a1 + 9);
  v24 = *(a1 + 20);
  v25 = *(a1 + 21);
  v52 = *(a1 + 88);
  v26 = *(a1 + 13);
  v27 = a1[112];
  v49 = *(a1 + 113);
  v50 = *(a1 + 129);
  *v51 = *(a1 + 145);
  *&v51[15] = *(a1 + 10);
  v28 = *(a1 + 22);
  v47 = *(a1 + 23);
  v48 = a1[192];
  v70[0] = *(a1 + 7);
  v70[1] = v22;
  v70[2] = v23;
  v71 = v24;
  v72 = v25;
  v73 = *(a1 + 88);
  v29 = v70[0];
  v74 = v26;
  v30 = v23;
  v31 = v26;
  v75 = v27;
  if (!v25)
  {
    goto LABEL_19;
  }

  while ((v30[1] & 1) != 0)
  {
    do
    {
LABEL_19:
      if (!v31)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v70);
      }

      v29 = *v31;
      v30 = v31[2];
      v32 = *(v31 + 7);
      v31 = v31[6];
    }

    while (!v32);
  }

  if (!v29)
  {
    goto LABEL_54;
  }

  v33 = *(*(v29 + 24 * *v30) + 112);
  if (!v33)
  {
    goto LABEL_48;
  }

  v4 = *(*(*(v33 + 32) + 8) + 16);
  if (!v4)
  {
    goto LABEL_37;
  }

  if (v21)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  LODWORD(v4) = v20;
  if (v20 >= *(v28 + 116))
  {
    goto LABEL_38;
  }

  v34 = *(v28 + 104);
  if (!v34)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v35 = *(*(v34 + 8 * v20) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v37)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  LODWORD(v4) = v36;
  if (v36 >= *(v35 + 44))
  {
    goto LABEL_39;
  }

  v38 = *(v35 + 32);
  if (!v38)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v39 = v38 + (v36 << 7);
  v40 = *(v39 + 8);
  v41 = *(v39 + 16);
  v42 = *(v39 + 24);
  v43 = *(v39 + 25);
  v45 = v39 + 28;
  v44 = *(v39 + 28);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v40, v41, v42, *(v45 + 4));
  if (!result)
  {
LABEL_55:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t T_ReuseBody.update(within:)(unsigned __int8 *a1, uint64_t a2)
{
  LODWORD(v3) = specialized ReuseEventCategory.init(rawValue:)(a2);
  if (v3 != 1)
  {
    goto LABEL_40;
  }

  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v75[0] = *(a1 + 56);
  v75[1] = v5;
  *v76 = *(a1 + 88);
  *&v76[9] = *(a1 + 97);
  v6 = (a1 + 72);
  v7 = a1 + 84;
  v8 = (a1 + 104);
  while (1)
  {
    v9 = *v8;
    if (*v7)
    {
      v10 = *v6;
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v75);
    }

    v6 = (v9 + 16);
    v7 = (v9 + 28);
    v8 = (v9 + 48);
    v4 = v9;
  }

  v11 = *v4;
  if (!v11)
  {
    goto LABEL_53;
  }

  v12 = *(*(v11 + 24 * *v10) + 112);
  if (!v12)
  {
    goto LABEL_43;
  }

  v3 = *(*(*(v12 + 32) + 8) + 16);
  if (!v3)
  {
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
    if (v3 == 12)
    {
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (a1[48])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v13 = *(a1 + 22);
  v3 = *a1;
  if (v3 >= *(v13 + 116))
  {
    goto LABEL_35;
  }

  v14 = *(v13 + 104);
  if (!v14)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v15 = *(*(v14 + 8 * v3) + 8);
  v66 = *(a1 + 10);
  v67 = *(a1 + 11);
  v68 = a1[192];
  v62 = *(a1 + 6);
  v63 = *(a1 + 7);
  v64 = *(a1 + 8);
  v65 = *(a1 + 9);
  v58 = *(a1 + 2);
  v59 = *(a1 + 3);
  v60 = *(a1 + 4);
  v61 = *(a1 + 5);
  v56 = *a1;
  v57 = *(a1 + 1);
  Interpreter.Iterator.updatingValue.getter();
  if (v17)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LODWORD(v3) = v16;
  if (v16 >= *(v15 + 44))
  {
    goto LABEL_36;
  }

  v18 = *(v15 + 32);
  if (!v18)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v18 + (v16 << 7) + 49) = 1;
  v19 = *a1;
  v53 = *(a1 + 8);
  v54 = *(a1 + 24);
  v55 = *(a1 + 5);
  v20 = a1[48];
  LODWORD(v52) = *(a1 + 49);
  *(&v52 + 3) = *(a1 + 13);
  v21 = *(a1 + 8);
  v22 = *(a1 + 9);
  v23 = *(a1 + 20);
  v24 = *(a1 + 21);
  v51 = *(a1 + 88);
  v25 = *(a1 + 13);
  v26 = a1[112];
  v48 = *(a1 + 113);
  v49 = *(a1 + 129);
  *v50 = *(a1 + 145);
  *&v50[15] = *(a1 + 10);
  v27 = *(a1 + 22);
  v46 = *(a1 + 23);
  v47 = a1[192];
  v69[0] = *(a1 + 7);
  v69[1] = v21;
  v69[2] = v22;
  v70 = v23;
  v71 = v24;
  v72 = *(a1 + 88);
  v28 = v69[0];
  v73 = v25;
  v29 = v22;
  v30 = v25;
  v74 = v26;
  if (!v24)
  {
    goto LABEL_19;
  }

  while ((v29[1] & 1) != 0)
  {
    do
    {
LABEL_19:
      if (!v30)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v69);
      }

      v28 = *v30;
      v29 = v30[2];
      v31 = *(v30 + 7);
      v30 = v30[6];
    }

    while (!v31);
  }

  if (!v28)
  {
    goto LABEL_54;
  }

  v32 = *(*(v28 + 24 * *v29) + 112);
  if (!v32)
  {
    goto LABEL_48;
  }

  v3 = *(*(*(v32 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_37;
  }

  if (v20)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  LODWORD(v3) = v19;
  if (v19 >= *(v27 + 116))
  {
    goto LABEL_38;
  }

  v33 = *(v27 + 104);
  if (!v33)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v34 = *(*(v33 + 8 * v19) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v36)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  LODWORD(v3) = v35;
  if (v35 >= *(v34 + 44))
  {
    goto LABEL_39;
  }

  v37 = *(v34 + 32);
  if (!v37)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v38 = v37 + (v35 << 7);
  v39 = *(v38 + 8);
  v40 = *(v38 + 16);
  v41 = *(v38 + 24);
  v42 = *(v38 + 25);
  v44 = v38 + 28;
  v43 = *(v38 + 28);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v39, v40, v41, *(v44 + 4));
  if (!result)
  {
LABEL_55:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t T_ReuseIncompatibleLists.update(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = specialized ReuseEventCategory.init(rawValue:)(a3);
  if (v4 != 1)
  {
    goto LABEL_40;
  }

  v5 = (a1 + 56);
  v6 = *(a1 + 72);
  v76[0] = *(a1 + 56);
  v76[1] = v6;
  *v77 = *(a1 + 88);
  *&v77[9] = *(a1 + 97);
  v7 = (a1 + 72);
  v8 = a1 + 84;
  v9 = (a1 + 104);
  while (1)
  {
    v10 = *v9;
    if (*v8)
    {
      v11 = *v7;
      if ((v11[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v10)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v76);
    }

    v7 = (v10 + 16);
    v8 = (v10 + 28);
    v9 = (v10 + 48);
    v5 = v10;
  }

  v12 = *v5;
  if (!v12)
  {
    goto LABEL_53;
  }

  v13 = *(*(v12 + 24 * *v11) + 112);
  if (!v13)
  {
    goto LABEL_43;
  }

  v4 = *(*(*(v13 + 32) + 8) + 16);
  if (!v4)
  {
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
    if (v4 == 12)
    {
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (a1[48])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v14 = *(a1 + 22);
  v4 = *a1;
  if (v4 >= *(v14 + 116))
  {
    goto LABEL_35;
  }

  v15 = *(v14 + 104);
  if (!v15)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v16 = *(*(v15 + 8 * v4) + 8);
  v67 = *(a1 + 10);
  v68 = *(a1 + 11);
  v69 = a1[192];
  v63 = *(a1 + 6);
  v64 = *(a1 + 7);
  v65 = *(a1 + 8);
  v66 = *(a1 + 9);
  v59 = *(a1 + 2);
  v60 = *(a1 + 3);
  v61 = *(a1 + 4);
  v62 = *(a1 + 5);
  v57 = *a1;
  v58 = *(a1 + 1);
  Interpreter.Iterator.updatingValue.getter();
  if (v18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LODWORD(v4) = v17;
  if (v17 >= *(v16 + 44))
  {
    goto LABEL_36;
  }

  v19 = *(v16 + 32);
  if (!v19)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v19 + (v17 << 7) + 49) = 1;
  v20 = *a1;
  v54 = *(a1 + 8);
  v55 = *(a1 + 24);
  v56 = *(a1 + 5);
  v21 = a1[48];
  LODWORD(v53) = *(a1 + 49);
  *(&v53 + 3) = *(a1 + 13);
  v22 = *(a1 + 8);
  v23 = *(a1 + 9);
  v24 = *(a1 + 20);
  v25 = *(a1 + 21);
  v52 = *(a1 + 88);
  v26 = *(a1 + 13);
  v27 = a1[112];
  v49 = *(a1 + 113);
  v50 = *(a1 + 129);
  *v51 = *(a1 + 145);
  *&v51[15] = *(a1 + 10);
  v28 = *(a1 + 22);
  v47 = *(a1 + 23);
  v48 = a1[192];
  v70[0] = *(a1 + 7);
  v70[1] = v22;
  v70[2] = v23;
  v71 = v24;
  v72 = v25;
  v73 = *(a1 + 88);
  v29 = v70[0];
  v74 = v26;
  v30 = v23;
  v31 = v26;
  v75 = v27;
  if (!v25)
  {
    goto LABEL_19;
  }

  while ((v30[1] & 1) != 0)
  {
    do
    {
LABEL_19:
      if (!v31)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v70);
      }

      v29 = *v31;
      v30 = v31[2];
      v32 = *(v31 + 7);
      v31 = v31[6];
    }

    while (!v32);
  }

  if (!v29)
  {
    goto LABEL_54;
  }

  v33 = *(*(v29 + 24 * *v30) + 112);
  if (!v33)
  {
    goto LABEL_48;
  }

  v4 = *(*(*(v33 + 32) + 8) + 16);
  if (!v4)
  {
    goto LABEL_37;
  }

  if (v21)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  LODWORD(v4) = v20;
  if (v20 >= *(v28 + 116))
  {
    goto LABEL_38;
  }

  v34 = *(v28 + 104);
  if (!v34)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v35 = *(*(v34 + 8 * v20) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v37)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  LODWORD(v4) = v36;
  if (v36 >= *(v35 + 44))
  {
    goto LABEL_39;
  }

  v38 = *(v35 + 32);
  if (!v38)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v39 = v38 + (v36 << 7);
  v40 = *(v39 + 8);
  v41 = *(v39 + 16);
  v42 = *(v39 + 24);
  v43 = *(v39 + 25);
  v45 = v39 + 28;
  v44 = *(v39 + 28);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v40, v41, v42, *(v45 + 4));
  if (!result)
  {
LABEL_55:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t T_ReuseNeverMadeReusable.update(within:)(unsigned __int8 *a1, unint64_t a2)
{
  LODWORD(v3) = specialized ReuseEventCategory.init(rawValue:)(HIDWORD(a2));
  if (v3 != 1)
  {
    goto LABEL_59;
  }

  v67 = *a1;
  v99 = *(a1 + 8);
  v100 = *(a1 + 24);
  v101 = *(a1 + 5);
  v4 = a1[48];
  LODWORD(v98) = *(a1 + 49);
  *(&v98 + 3) = *(a1 + 13);
  v5 = a1 + 56;
  v6 = *(a1 + 8);
  v7 = (a1 + 72);
  v8 = *(a1 + 9);
  v9 = a1 + 84;
  v10 = *(a1 + 21);
  v11 = *(a1 + 20);
  v97 = *(a1 + 88);
  v13 = (a1 + 104);
  v12 = *(a1 + 13);
  v14 = a1[112];
  *&v96[15] = *(a1 + 10);
  v95 = *(a1 + 129);
  *v96 = *(a1 + 145);
  v94 = *(a1 + 113);
  v68 = *(a1 + 22);
  v92 = *(a1 + 23);
  v93 = a1[192];
  v110[0] = *(a1 + 7);
  v110[1] = v6;
  v110[2] = v8;
  v111 = v11;
  v112 = v10;
  v113 = *(a1 + 88);
  v15 = v110[0];
  v114 = v12;
  v16 = v8;
  v17 = v12;
  v115 = v14;
  if (!v10)
  {
    goto LABEL_4;
  }

  while ((v16[1] & 1) != 0)
  {
    do
    {
LABEL_4:
      if (!v17)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v110);
      }

      v15 = *v17;
      v16 = v17[2];
      v18 = *(v17 + 7);
      v17 = v17[6];
    }

    while (!v18);
  }

  if (!v15)
  {
    goto LABEL_77;
  }

  v19 = *(*(v15 + 24 * *v16) + 112);
  if (!v19)
  {
    goto LABEL_62;
  }

  v3 = *(*(*(v19 + 32) + 8) + 16);
  if (!v3)
  {
    __break(1u);
LABEL_51:
    __break(1u);
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
LABEL_58:
    __break(1u);
LABEL_59:
    if (v3 == 12)
    {
      __break(1u);
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v4)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  LODWORD(v3) = v67;
  if (v67 >= *(v68 + 116))
  {
    goto LABEL_51;
  }

  v20 = *(v68 + 104);
  if (!v20)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v21 = *(*(v20 + 8 * v67) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v23)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  LODWORD(v3) = v22;
  if (v22 >= *(v21 + 44))
  {
    goto LABEL_52;
  }

  v24 = *(v21 + 32);
  if (!v24)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v25 = v24 + (v22 << 7);
  v26 = *(v25 + 8);
  v27 = *(v25 + 16);
  v28 = *(v25 + 24);
  v29 = *(v25 + 25);
  v31 = v25 + 28;
  v30 = *(v25 + 28);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v26, v27, v28, *(v31 + 4));
  if (!result)
  {
    return result;
  }

  v33 = *(a1 + 72);
  v108[0] = *v5;
  v108[1] = v33;
  v109[0] = *(a1 + 88);
  *(v109 + 9) = *(a1 + 97);
  while (1)
  {
    v34 = *v13;
    if (*v9)
    {
      if (((*v7)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v34)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v108);
    }

    v7 = (v34 + 16);
    v9 = (v34 + 28);
    v13 = (v34 + 48);
    v5 = v34;
  }

  if (!*v5)
  {
    goto LABEL_78;
  }

  v35 = *(*(*v5 + 24 * **v7) + 112);
  if (!v35)
  {
    goto LABEL_67;
  }

  v3 = *(*(*(v35 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_53;
  }

  if (a1[48])
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v3 = *a1;
  if (v3 >= *(v68 + 116))
  {
    goto LABEL_54;
  }

  v36 = *(v68 + 104);
  if (!v36)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v37 = *(*(v36 + 8 * v3) + 8);
  v89 = *(a1 + 10);
  v90 = *(a1 + 11);
  v91 = a1[192];
  v85 = *(a1 + 6);
  v86 = *(a1 + 7);
  v87 = *(a1 + 8);
  v88 = *(a1 + 9);
  v81 = *(a1 + 2);
  v82 = *(a1 + 3);
  v83 = *(a1 + 4);
  v84 = *(a1 + 5);
  v79 = *a1;
  v80 = *(a1 + 1);
  Interpreter.Iterator.updatingValue.getter();
  if (v39)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  LODWORD(v3) = v38;
  if (v38 >= *(v37 + 44))
  {
    goto LABEL_55;
  }

  v40 = *(v37 + 32);
  if (!v40)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  *(v40 + (v38 << 7) + 49) = 1;
  v76 = *(a1 + 8);
  v77 = *(a1 + 24);
  v74 = *(a1 + 88);
  v71 = *(a1 + 113);
  v41 = *a1;
  v78 = *(a1 + 5);
  v42 = a1[48];
  LODWORD(v75) = *(a1 + 49);
  *(&v75 + 3) = *(a1 + 13);
  v43 = *(a1 + 8);
  v44 = *(a1 + 9);
  v45 = *(a1 + 20);
  v46 = *(a1 + 21);
  v47 = *(a1 + 13);
  v48 = a1[112];
  v72 = *(a1 + 129);
  *v73 = *(a1 + 145);
  *&v73[15] = *(a1 + 10);
  v49 = *(a1 + 22);
  v69 = *(a1 + 23);
  v70 = a1[192];
  v102[0] = *(a1 + 7);
  v102[1] = v43;
  v102[2] = v44;
  v103 = v45;
  v104 = v46;
  v105 = *(a1 + 88);
  v106 = v47;
  v50 = v44;
  v51 = v102[0];
  v52 = v47;
  v107 = v48;
  if (!v46)
  {
    goto LABEL_35;
  }

  while ((v50[1] & 1) != 0)
  {
    do
    {
LABEL_35:
      if (!v52)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v102);
      }

      v51 = *v52;
      v50 = v52[2];
      v53 = *(v52 + 7);
      v52 = v52[6];
    }

    while (!v53);
  }

  if (!v51)
  {
    goto LABEL_79;
  }

  v54 = *(*(v51 + 24 * *v50) + 112);
  if (!v54)
  {
    goto LABEL_72;
  }

  v3 = *(*(*(v54 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_56;
  }

  if (v42)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  LODWORD(v3) = v41;
  if (v41 >= *(v49 + 116))
  {
    goto LABEL_57;
  }

  v55 = *(v49 + 104);
  if (!v55)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v56 = *(*(v55 + 8 * v41) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v58)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  LODWORD(v3) = v57;
  if (v57 >= *(v56 + 44))
  {
    goto LABEL_58;
  }

  v59 = *(v56 + 32);
  if (!v59)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v60 = v59 + (v57 << 7);
  v61 = *(v60 + 8);
  v62 = *(v60 + 16);
  v63 = *(v60 + 24);
  v64 = *(v60 + 25);
  v66 = v60 + 28;
  v65 = *(v60 + 28);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v61, v62, v63, *(v66 + 4));
  if (!result)
  {
LABEL_80:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*Event.update.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify();
  return UnsafeTree.storage.modify;
}

void T_NodeSetValueExtendedV0.model(within:)(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 116);
  if (a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 160) = v4;
  *(a1 + 164) = a2 != 0;
  v5 = HIDWORD(a2);
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 168) = a2 == 0;
  *(a1 + 172) = v6;
  v7 = (a1 + 56);
  v8 = *(a1 + 72);
  v36[0] = *(a1 + 56);
  v36[1] = v8;
  v37[0] = *(a1 + 88);
  *(v37 + 9) = *(a1 + 97);
  v9 = (a1 + 88);
  v10 = (a1 + 100);
  v11 = (a1 + 104);
  v12 = (a1 + 56);
  v13 = (a1 + 104);
  while (1)
  {
    v14 = *v13;
    if (v3 < *v10)
    {
      v15 = (*v9 + 8 * v3);
      if ((v15[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v36);
    }

    v9 = (v14 + 32);
    v10 = (v14 + 44);
    v13 = (v14 + 48);
    v12 = v14;
  }

  if (!*v12)
  {
    goto LABEL_39;
  }

  v16 = *(*(*v12 + 24 * *v15) + 32);
  if ((_s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(HIDWORD(a2), a1) & 0x100000000) != 0)
  {
    v18 = *(a1 + 72);
    v34[0] = *v7;
    v34[1] = v18;
    v35[0] = *(a1 + 88);
    v19 = (a1 + 72);
    v20 = (a1 + 84);
    *(v35 + 9) = *(v7 + 41);
    v21 = v7;
    v22 = v19;
    v23 = v20;
    v24 = v11;
    while (1)
    {
      v25 = *v24;
      if (*v23 >= 2u)
      {
        v26 = *v22;
        if ((*(v26 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v25)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v34);
      }

      v22 = (v25 + 16);
      v23 = (v25 + 28);
      v24 = (v25 + 48);
      v21 = v25;
    }

    v27 = *v21;
    if (!v27)
    {
      goto LABEL_40;
    }

    v28 = *(*(v27 + 24 * *(v26 + 8)) + 112);
    if (v28)
    {
      if (*(v28 + 124) == 1)
      {
        v29 = v7[1];
        v32[0] = *v7;
        v32[1] = v29;
        v33[0] = v7[2];
        *(v33 + 9) = *(v7 + 41);
        while (1)
        {
          v30 = *v11;
          if (*v20 >= 2u && (*(*v19 + 12) & 1) == 0)
          {
            break;
          }

          if (!v30)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v32);
          }

          v19 = (v30 + 16);
          v20 = (v30 + 28);
          v11 = (v30 + 48);
          v7 = v30;
        }

        if (!*v7)
        {
          goto LABEL_41;
        }

        v31 = *(*(*v7 + 24 * *(*v19 + 8)) + 112);
        if (v31)
        {
          *(v31 + 112) = v16;
          *(v31 + 120) = v5;
          *(v31 + 124) = 0;
          return;
        }

        goto LABEL_38;
      }

      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  T_NodeSetValue.Closure.apply(within:)(a1, v17, v5);
}

void T_NodeSetValue.updateState(within:)(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v34[0] = *(a1 + 56);
  v34[1] = v5;
  v35[0] = *(a1 + 88);
  *(v35 + 9) = *(a1 + 97);
  v6 = (a1 + 88);
  v7 = (a1 + 100);
  v8 = (a1 + 104);
  v9 = *(a1 + 116);
  v10 = v4;
  v11 = v8;
  while (1)
  {
    v12 = *v11;
    if (v9 < *v7)
    {
      v13 = (*v6 + 8 * v9);
      if ((v13[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v34);
    }

    v6 = (v12 + 32);
    v7 = (v12 + 44);
    v11 = (v12 + 48);
    v10 = v12;
  }

  if (!*v10)
  {
    goto LABEL_33;
  }

  v14 = *(*(*v10 + 24 * *v13) + 32);
  if ((_s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1) & 0x100000000) != 0)
  {
    v16 = v4[1];
    v32[0] = *v4;
    v32[1] = v16;
    v33[0] = v4[2];
    v17 = (a1 + 72);
    v18 = (a1 + 84);
    *(v33 + 9) = *(v4 + 41);
    v19 = v4;
    v20 = v17;
    v21 = v18;
    v22 = v8;
    while (1)
    {
      v23 = *v22;
      if (*v21 >= 2u)
      {
        v24 = *v20;
        if ((*(v24 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v23)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v32);
      }

      v20 = (v23 + 16);
      v21 = (v23 + 28);
      v22 = (v23 + 48);
      v19 = v23;
    }

    v25 = *v19;
    if (!v25)
    {
      goto LABEL_34;
    }

    v26 = *(*(v25 + 24 * *(v24 + 8)) + 112);
    if (v26)
    {
      if (*(v26 + 124) == 1)
      {
        v27 = v4[1];
        v30[0] = *v4;
        v30[1] = v27;
        v31[0] = v4[2];
        *(v31 + 9) = *(v4 + 41);
        while (1)
        {
          v28 = *v8;
          if (*v18 >= 2u && (*(*v17 + 12) & 1) == 0)
          {
            break;
          }

          if (!v28)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v30);
          }

          v17 = (v28 + 16);
          v18 = (v28 + 28);
          v8 = (v28 + 48);
          v4 = v28;
        }

        if (!*v4)
        {
          goto LABEL_35;
        }

        v29 = *(*(*v4 + 24 * *(*v17 + 8)) + 112);
        if (v29)
        {
          *(v29 + 112) = v14;
          *(v29 + 120) = a2;
          *(v29 + 124) = 0;
          return;
        }

        goto LABEL_32;
      }

      __break(1u);
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
    return;
  }

  T_NodeSetValue.Closure.apply(within:)(a1, v15, a2);
}

void T_NodeMarkValue.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  if (a1[48])
  {
    goto LABEL_26;
  }

  v4 = *(a1 + 22);
  v5 = *a1;
  if (v5 >= *(v4 + 116))
  {
    goto LABEL_21;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = v3;
  v8 = *(*(v6 + 8 * v5) + 8);
  if (v3 >= *(v8 + 84))
  {
    goto LABEL_22;
  }

  v9 = *(v8 + 72);
  if (!v9)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = v9 + 312 * v3;
  v11 = *(v10 + 264);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    goto LABEL_23;
  }

  *(v10 + 264) = v13;
  v14 = *a1;
  v15 = 312 * v3;
  v16 = a1[48];
  v17 = (a1 + 56);
  v18 = *(a1 + 72);
  v41[0] = *(a1 + 56);
  v41[1] = v18;
  v42[0] = *(a1 + 88);
  *(v42 + 9) = *(a1 + 97);
  v19 = a1 + 88;
  v20 = a1 + 100;
  v21 = (a1 + 104);
  v22 = *(a1 + 29);
  while (1)
  {
    v23 = *v21;
    if (v22 < *v20)
    {
      v24 = (*v19 + 8 * v22);
      if ((v24[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v23)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v22, 0, v41);
    }

    v19 = (v23 + 32);
    v20 = (v23 + 44);
    v21 = (v23 + 48);
    v17 = v23;
  }

  v28 = *v17;
  if (!v28)
  {
    goto LABEL_31;
  }

  v29 = v28 + 24 * *v24;
  if (v16)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 >= *(v4 + 116))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = *(v4 + 104);
  if (v25)
  {
    v26 = *(*(v25 + 8 * v14) + 8);
    if (v7 < *(v26 + 84))
    {
      v27 = *(v26 + 72);
      if (v27)
      {
        *(v27 + v15 + 184) = *(*v29 + 32);
        v30 = v7;
        v31 = 0;
        v32 = 0;
        v33 = 1;
        v34 = 0xFFFFFFFFLL;
        v35 = 0;
        v36 = 1;
        v37 = -1;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        specialized Interpreter.Iterator.observe<A>(invalidation:)(&v30);
        return;
      }

      goto LABEL_30;
    }

    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

unint64_t T_NodeSetPending.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  v5 = a1[48];
  v6 = *(a1 + 22);
  v7 = *(v6 + 104);
  if ((a2 & 0x100000000) == 0)
  {
    if (a1[48])
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v8 = *(v6 + 116);
    v9 = *a1;
    if (v9 < v8)
    {
      if (!v7)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = *(*(v7 + 8 * v9) + 8);
      if (result < *(v10 + 84))
      {
        v11 = *(v10 + 72);
        if (v11)
        {
          v12 = v11 + 312 * result;
          v13 = *(v12 + 224);
          if ((v13 & 1) == 0)
          {
            return result;
          }

          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a1[48])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = *(v6 + 116);
  v16 = *a1;
  if (v16 >= v15)
  {
    goto LABEL_19;
  }

  if (!v7)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = *(*(v7 + 8 * v16) + 8);
  if (result >= *(v17 + 84))
  {
    goto LABEL_21;
  }

  v18 = *(v17 + 72);
  if (!v18)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v12 = v18 + 312 * result;
  v19 = *(v12 + 224);
  if (v19)
  {
    return result;
  }

  v14 = v19 | 1;
LABEL_16:
  *(v12 + 224) = v14;
  return result;
}

unint64_t ReuseEventItem.describe(withInterpreter:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  switch(*(v1 + 16))
  {
    case 1:
      v27 = HIDWORD(v2);
      v28 = *(a1 + 136);
      v65 = v28[3];
      v72 = v28[4];
      v79 = v28[5];
      v86 = v28[6];
      v44 = *v28;
      v51 = v28[1];
      v58 = v28[2];
      v19 = Interpreter.Storage.Types.subscript.getter(v2);
      v21 = v30;
      v31 = *(a1 + 136);
      v66 = v31[3];
      v73 = v31[4];
      v80 = v31[5];
      v87 = v31[6];
      v45 = *v31;
      v52 = v31[1];
      v59 = v31[2];
      v23 = Interpreter.Storage.Types.subscript.getter(v27);
      v14 = v32;
      v40 = 0;
      _StringGuts.grow(_:)(67);
      v25 = "Reuse Failed: Incompatible Types: (baseList: ";
      goto LABEL_19;
    case 2:
      _StringGuts.grow(_:)(42);

      v26 = 0xD000000000000027;
      goto LABEL_21;
    case 3:
      _StringGuts.grow(_:)(35);

      v26 = 0xD000000000000020;
      goto LABEL_21;
    case 4:
    case 5:
      _StringGuts.grow(_:)(36);

      v26 = 0xD000000000000021;
LABEL_21:
      v40 = v26;
      goto LABEL_30;
    case 6:
      v40 = 0;
      _StringGuts.grow(_:)(56);
      MEMORY[0x26D69CDB0](0xD000000000000035, 0x800000026C33BE60);
      goto LABEL_30;
    case 7:
      _StringGuts.grow(_:)(46);

      v40 = 0xD00000000000001BLL;
      goto LABEL_29;
    case 8:
      v40 = 0;
      _StringGuts.grow(_:)(63);
      MEMORY[0x26D69CDB0](0xD00000000000002CLL, 0x800000026C33BCC0);
LABEL_29:
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v36);

      MEMORY[0x26D69CDB0](0x617267627573202CLL, 0xEE00203A44496870);
      goto LABEL_30;
    case 9:
      _StringGuts.grow(_:)(45);

      v40 = 0xD00000000000002ALL;
LABEL_30:
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v37);
      goto LABEL_31;
    case 0xA:
      v40 = 0;
      _StringGuts.grow(_:)(50);
      MEMORY[0x26D69CDB0](0xD00000000000002FLL, 0x800000026C33BC60);
      _print_unlocked<A, B>(_:_:)();
      goto LABEL_32;
    case 0xB:
      v11 = *(a1 + 136);
      v62 = v11[3];
      v69 = v11[4];
      v76 = v11[5];
      v83 = v11[6];
      v41 = *v11;
      v48 = v11[1];
      v55 = v11[2];
      v12 = Interpreter.Storage.Types.subscript.getter(v2);
      v14 = v13;
      v40 = 0;
      _StringGuts.grow(_:)(55);
      v15 = "Reuse Failed: Unary Element Expected: (elementType: ";
      goto LABEL_24;
    case 0xC:
      v16 = HIDWORD(v2);
      v17 = *(a1 + 136);
      v63 = v17[3];
      v70 = v17[4];
      v77 = v17[5];
      v84 = v17[6];
      v42 = *v17;
      v49 = v17[1];
      v56 = v17[2];
      v19 = Interpreter.Storage.Types.subscript.getter(v2);
      v21 = v20;
      v22 = *(a1 + 136);
      v64 = v22[3];
      v71 = v22[4];
      v78 = v22[5];
      v85 = v22[6];
      v43 = *v22;
      v50 = v22[1];
      v57 = v22[2];
      v23 = Interpreter.Storage.Types.subscript.getter(v16);
      v14 = v24;
      v40 = 0;
      _StringGuts.grow(_:)(67);
      v25 = "Reuse Failed: Lists Incompatible: (baseList: ";
LABEL_19:
      MEMORY[0x26D69CDB0](0xD00000000000002DLL, (v25 - 32) | 0x8000000000000000);
      MEMORY[0x26D69CDB0](v19, v21);

      MEMORY[0x26D69CDB0](0xD000000000000011, 0x800000026C33BC40);
      v33 = v23;
      goto LABEL_25;
    case 0xD:
      v34 = *(a1 + 136);
      v67 = v34[3];
      v74 = v34[4];
      v81 = v34[5];
      v88 = v34[6];
      v46 = *v34;
      v53 = v34[1];
      v60 = v34[2];
      v12 = Interpreter.Storage.Types.subscript.getter(v2);
      v14 = v35;
      v40 = 0;
      _StringGuts.grow(_:)(55);
      v15 = "Reuse Failed: Reuse was prevented: (preventingType: ";
LABEL_24:
      MEMORY[0x26D69CDB0](0xD000000000000034, (v15 - 32) | 0x8000000000000000);
      v33 = v12;
LABEL_25:
      MEMORY[0x26D69CDB0](v33, v14);
LABEL_31:

LABEL_32:
      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v40;
    case 0xE:
      if (v2 <= 2)
      {
        v38 = 0x6146206573756552;
        if (v2 ^ 1 | v3)
        {
          v38 = 0xD000000000000020;
        }

        if (v2 | v3)
        {
          return v38;
        }

        else
        {
          return 0xD000000000000013;
        }
      }

      else
      {
        if (v2 ^ 5 | v3)
        {
          v8 = 0xD00000000000001BLL;
        }

        else
        {
          v8 = 0xD00000000000001ELL;
        }

        v9 = 0xD000000000000025;
        if (v2 ^ 3 | v3)
        {
          v9 = 0xD00000000000001ELL;
        }

        if (v2 <= 4)
        {
          return v9;
        }

        else
        {
          return v8;
        }
      }

    default:
      v4 = *(a1 + 136);
      v61 = v4[3];
      v68 = v4[4];
      v75 = v4[5];
      v82 = v4[6];
      v39 = *v4;
      v47 = v4[1];
      v54 = v4[2];
      v5 = Interpreter.Storage.Types.subscript.getter(HIDWORD(v2));
      v7 = v6;
      v40 = 0;
      _StringGuts.grow(_:)(57);
      MEMORY[0x26D69CDB0](0xD000000000000037, 0x800000026C33BB50);
      MEMORY[0x26D69CDB0](v5, v7);

      return v40;
  }
}

double static Event_Noun.id(for:verb:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  specialized static Event_Noun.id(for:verb:)(a1, a2, a3, a4, v8);
  result = *v8;
  v7 = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v9;
  return result;
}

{
  specialized static Event_Noun.id(for:verb:)(a1, a2, a3, a4, v8);
  result = *v8;
  v7 = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v9;
  return result;
}

void Event.Id.init<A, B>(_:_:)(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a3;
  *(a5 + 16) = a2;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
}

uint64_t static Event_ReferenceNoun.ref(_:)(uint64_t a1)
{
  return static Event_ReferenceNoun.ref(_:)(a1);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(a1 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 16))(v3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

double static Event_ReferenceNoun.id(for:verb:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v23 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, a4);
  (*(a5 + 32))(a4, a5);
  (*(v17 + 8))(v20, a4);
  specialized Event.Id.init<A, B>(_:_:_:)(a4, a2, a5, v23, v24);
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  result = *v24;
  v22 = v24[1];
  *a6 = v24[0];
  *(a6 + 16) = v22;
  *(a6 + 32) = v25;
  return result;
}

uint64_t Event.describe(state:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v28 = a1[1];
  v4 = *(a1 + 16);
  v6 = a1[3];
  v5 = a1[4];
  v31 = *(a1 + 41);
  v32 = *(a1 + 40);
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  v10 = *(v1 + 25);
  v11 = v1[7];
  v12 = v1[8];
  LOBYTE(v39) = *(v1 + 24);
  v9 = v39;
  v30 = v7;
  v27 = HeterogeneousBuffer.index(after:)(0, v7, v8, v39, v12);
  result = MEMORY[0x26D69CDB0](8232, 0xE200000000000000);
  v14 = __OFSUB__(v3, 1);
  v15 = v3 - 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = *v1;
  v39 = v15;
  v40 = v28;
  v29 = v4;
  v41 = v4;
  v26 = v6;
  v42 = v6;
  v43 = v5;
  v44 = v32;
  v45 = v31;
  v17 = specialized InspectionState.wrapDescription<A>(_:)(v16);
  MEMORY[0x26D69CDB0](v17);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  LOBYTE(v33[0]) = v9;
  v18 = HeterogeneousBuffer.type(at:)(0, v30, v8, v9, v12);
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  v20 = HeterogeneousBuffer.index(after:)(0, v30, v8, v9, v12);
  LOBYTE(v33[0]) = v9;
  v21 = HeterogeneousBuffer.type(at:)(v20, v30, v8, v9, v12);
  result = swift_conformsToProtocol2();
  if (result)
  {
    project #1 <A, B>(_:_:) in Event.id.getter(v21, v2, v18, v19, result, v33);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    LOBYTE(v33[0]) = v9;
    HeterogeneousBuffer.type(at:)(v27, v30, v8, v9, v12);
    v22 = _typeName(_:qualified:)();
    MEMORY[0x26D69CDB0](v22);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v23 = *(v2 + 112);
    v24 = *(v2 + 120);
    v33[0] = v15;
    v33[1] = 0x7FFFFFFFFFFFFFFFLL;
    v34 = v29;
    v35 = v26;
    v36 = v5;
    v37 = v32;
    v38 = v31;
    v25 = specialized InspectionState.wrapDescription<A>(_:)(v23, v24);
    MEMORY[0x26D69CDB0](v25);

    MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

void specialized closure #1 in static Event.each(_:of:do:)(unsigned int *a1, uint64_t a2, uint64_t a3, __int16 a4, unsigned __int8 *a5, uint64_t a6, _BYTE *a7, unsigned int a8)
{
  v8 = *(a3 + 124);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(a3 + 112);
  while (2)
  {
    v12 = (v11 + 4 + 8 * v9);
    while (1)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      if (!v11)
      {
        goto LABEL_26;
      }

      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

      v14 = *(v12 - 2);
      if (((a4 & 0xC000) == 0 || (v14 & (a4 & 0xC000 ^ 0xC000)) == 0) && ((a4 & 0x2000) == 0 || (v14 & 0x2000) != 0))
      {
        if ((a4 & 0x1FFF) == 0)
        {
          if (a4)
          {
            break;
          }

          goto LABEL_5;
        }

        if ((a4 & 0x1FFF & v14) != 0)
        {
          break;
        }
      }

LABEL_5:
      v12 += 2;
      ++v9;
      if (v13 == v8)
      {
        v15 = v10;
        goto LABEL_19;
      }
    }

    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_25;
    }

    a1[v10] = *v12;
    ++v9;
    ++v10;
    if (v13 != v8)
    {
      continue;
    }

    break;
  }

LABEL_19:
  if ((v15 & 0x8000000000000000) == 0)
  {
    goto LABEL_22;
  }

  __break(1u);
LABEL_21:
  v15 = 0;
LABEL_22:
  specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(a1, v15, a3, a5, a6, a7, a8);
}

{
  v43 = a8;
  v44 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 124);
  if (!v8)
  {
LABEL_45:
    v40 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = 0;
  v14 = 0;
  v15 = *(a3 + 112);
  do
  {
    v16 = (v15 + 4 + 8 * v13);
    while (1)
    {
      if (v13 >= v8)
      {
        goto LABEL_48;
      }

      if (!v15)
      {
        goto LABEL_57;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_49;
      }

      v18 = *(v16 - 2);
      if ((a4 & 0xC000) != 0 && (v18 & (a4 & 0xC000 ^ 0xC000)) != 0 || (a4 & 0x2000) != 0 && (v18 & 0x2000) == 0)
      {
        goto LABEL_5;
      }

      if ((a4 & 0x1FFF) != 0)
      {
        break;
      }

      if (a4)
      {
        goto LABEL_15;
      }

LABEL_5:
      v16 += 2;
      ++v13;
      if (v17 == v8)
      {
        isStackAllocationSafe = v14;
        goto LABEL_19;
      }
    }

    if ((a4 & 0x1FFF & v18) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    isStackAllocationSafe = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_56;
    }

    a1[v14] = *v16;
    ++v13;
    ++v14;
  }

  while (v17 != v8);
LABEL_19:
  if (isStackAllocationSafe < 0)
  {
    goto LABEL_54;
  }

  if (!a1 || !isStackAllocationSafe)
  {
    goto LABEL_45;
  }

  v20 = &a1[isStackAllocationSafe];
  while (1)
  {
    if (a5[48])
    {
      goto LABEL_58;
    }

    v21 = *(a5 + 22);
    v22 = *a5;
    if (v22 >= *(v21 + 116))
    {
      goto LABEL_50;
    }

    v23 = *(v21 + 104);
    if (!v23)
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    v24 = *a1;
    v25 = *(*(v23 + 8 * v22) + 8);
    if (v24 >= *(v25 + 44))
    {
      goto LABEL_51;
    }

    v26 = *(v25 + 32);
    if (!v26)
    {
      goto LABEL_60;
    }

    v27 = *(v26 + (v24 << 7) + 124);
    if (v27 < 0x101 || (v37 = v26 + (v24 << 7), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      MEMORY[0x28223BE20](isStackAllocationSafe);
      v30 = (&v41 - v29);
      v31 = 0;
      v32 = 0;
      v33 = *(v28 + 112);
LABEL_30:
      v34 = (v33 + 8 * v32);
      while (v27 != v32)
      {
        if (v32 >= v27)
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
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
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (!v33)
        {
          goto LABEL_55;
        }

        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_47;
        }

        v36 = *v34;
        v34 += 4;
        ++v32;
        if ((v36 & 0x8020) == 0x20)
        {
          if (__OFADD__(v31, 1))
          {
            goto LABEL_53;
          }

          v30[v31++] = *(v34 - 1);
          v32 = v35;
          goto LABEL_30;
        }
      }

      if (v31 < 0)
      {
        goto LABEL_52;
      }

      specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v30, v31, v28, a5, a6, a7, v43);
      goto LABEL_40;
    }

    v38 = swift_slowAlloc();
    v39 = v42;
    specialized closure #1 in static Event.each(_:of:do:)(v38, v27, v37, 16416, a5, a6, a7, v43);
    v42 = v39;
    if (v39)
    {
      break;
    }

    isStackAllocationSafe = MEMORY[0x26D69EAB0](v38, -1, -1);
LABEL_40:
    if (++a1 == v20)
    {
      goto LABEL_45;
    }
  }

  MEMORY[0x26D69EAB0](v38, -1, -1);
  __break(1u);
}

uint64_t specialized closure #1 in static Event.each(_:of:do:)(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4, unsigned __int8 *a5, uint64_t a6, char *a7, unsigned int a8)
{
  v42 = a8;
  v43 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 124);
  if (!v8)
  {
LABEL_45:
    v39 = *MEMORY[0x277D85DE8];
    return result;
  }

  v12 = result;
  v13 = 0;
  v14 = 0;
  v15 = *(a3 + 112);
  do
  {
    v16 = (v15 + 4 + 8 * v13);
    while (1)
    {
      if (v13 >= v8)
      {
        goto LABEL_48;
      }

      if (!v15)
      {
        goto LABEL_57;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_49;
      }

      v18 = *(v16 - 2);
      if ((a4 & 0xC000) != 0 && (v18 & (a4 & 0xC000 ^ 0xC000)) != 0 || (a4 & 0x2000) != 0 && (v18 & 0x2000) == 0)
      {
        goto LABEL_5;
      }

      if ((a4 & 0x1FFF) != 0)
      {
        break;
      }

      if (a4)
      {
        goto LABEL_15;
      }

LABEL_5:
      v16 += 2;
      ++v13;
      if (v17 == v8)
      {
        result = v14;
        goto LABEL_19;
      }
    }

    if ((a4 & 0x1FFF & v18) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    result = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_56;
    }

    v12[v14] = *v16;
    ++v13;
    ++v14;
  }

  while (v17 != v8);
LABEL_19:
  if (result < 0)
  {
    goto LABEL_54;
  }

  if (!v12 || !result)
  {
    goto LABEL_45;
  }

  v19 = &v12[result];
  while (1)
  {
    if (a5[48])
    {
      goto LABEL_58;
    }

    v20 = *(a5 + 22);
    v21 = *a5;
    if (v21 >= *(v20 + 116))
    {
      goto LABEL_50;
    }

    v22 = *(v20 + 104);
    if (!v22)
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    v23 = *v12;
    v24 = *(*(v22 + 8 * v21) + 8);
    if (v23 >= *(v24 + 44))
    {
      goto LABEL_51;
    }

    v25 = *(v24 + 32);
    if (!v25)
    {
      goto LABEL_60;
    }

    v26 = *(v25 + (v23 << 7) + 124);
    if (v26 < 0x101 || (v36 = v25 + (v23 << 7), result = swift_stdlib_isStackAllocationSafe(), (result & 1) != 0))
    {
      MEMORY[0x28223BE20](result);
      v29 = (&v40 - v28);
      v30 = 0;
      v31 = 0;
      v32 = *(v27 + 112);
LABEL_30:
      v33 = (v32 + 8 * v31);
      while (v26 != v31)
      {
        if (v31 >= v26)
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
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
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (!v32)
        {
          goto LABEL_55;
        }

        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_47;
        }

        v35 = *v33;
        v33 += 4;
        ++v31;
        if ((v35 & 0x8020) == 0x20)
        {
          if (__OFADD__(v30, 1))
          {
            goto LABEL_53;
          }

          v29[v30++] = *(v33 - 1);
          v31 = v34;
          goto LABEL_30;
        }
      }

      if (v30 < 0)
      {
        goto LABEL_52;
      }

      result = specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v29, v30, v27, a5, a6, a7, v42);
      goto LABEL_40;
    }

    v37 = swift_slowAlloc();
    v38 = v41;
    specialized closure #1 in static Event.each(_:of:do:)(v37, v26, v36, 16416, a5, a6, a7, v42);
    v41 = v38;
    if (v38)
    {
      break;
    }

    result = MEMORY[0x26D69EAB0](v37, -1, -1);
LABEL_40:
    if (++v12 == v19)
    {
      goto LABEL_45;
    }
  }

  result = MEMORY[0x26D69EAB0](v37, -1, -1);
  __break(1u);
  return result;
}

unsigned int *specialized closure #1 in static Event.each(_:of:do:)(unsigned int *result, uint64_t a2, uint64_t a3, __int16 a4, unsigned __int8 *a5, uint64_t a6, char *a7, uint64_t a8)
{
  v8 = *(a3 + 124);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(a3 + 112);
  while (2)
  {
    v12 = (v11 + 4 + 8 * v9);
    while (1)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      if (!v11)
      {
        goto LABEL_26;
      }

      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

      v14 = *(v12 - 2);
      if (((a4 & 0xC000) == 0 || (v14 & (a4 & 0xC000 ^ 0xC000)) == 0) && ((a4 & 0x2000) == 0 || (v14 & 0x2000) != 0))
      {
        if ((a4 & 0x1FFF) == 0)
        {
          if (a4)
          {
            break;
          }

          goto LABEL_5;
        }

        if ((a4 & 0x1FFF & v14) != 0)
        {
          break;
        }
      }

LABEL_5:
      v12 += 2;
      ++v9;
      if (v13 == v8)
      {
        v15 = v10;
        goto LABEL_19;
      }
    }

    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_25;
    }

    result[v10] = *v12;
    ++v9;
    ++v10;
    if (v13 != v8)
    {
      continue;
    }

    break;
  }

LABEL_19:
  if ((v15 & 0x8000000000000000) == 0)
  {
    return specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(result, v15, a3, a5, a6, a7, a8);
  }

  __break(1u);
LABEL_21:
  v15 = 0;
  return specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(result, v15, a3, a5, a6, a7, a8);
}

uint64_t closure #1 in static Event.each(_:of:do:)(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t (*a5)(void))
{
  v5 = *(a3 + 124);
  if (!v5)
  {
    return a5();
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a3 + 112);
  while (2)
  {
    v9 = (v8 + 4 + 8 * v6);
    while (1)
    {
      if (v6 >= v5)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      if (!v8)
      {
        goto LABEL_25;
      }

      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      v11 = *(v9 - 2);
      if (((a4 & 0xC000) == 0 || (v11 & (a4 & 0xC000 ^ 0xC000)) == 0) && ((a4 & 0x2000) == 0 || (v11 & 0x2000) != 0))
      {
        if ((a4 & 0x1FFF) == 0)
        {
          if (a4)
          {
            break;
          }

          goto LABEL_5;
        }

        if ((a4 & 0x1FFF & v11) != 0)
        {
          break;
        }
      }

LABEL_5:
      v9 += 2;
      ++v6;
      if (v10 == v5)
      {
        v12 = v7;
        goto LABEL_19;
      }
    }

    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_24;
    }

    *(result + 4 * v7) = *v9;
    ++v6;
    ++v7;
    if (v10 != v5)
    {
      continue;
    }

    break;
  }

LABEL_19:
  if (v12 < 0)
  {
    __break(1u);
  }

  return a5();
}

Swift::Int Event.Position.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](a1);
  return Hasher._finalize()();
}

BOOL static Event.Relative.~= infix(_:_:)(unint64_t a1, uint64_t a2)
{
  if ((a2 ^ a1) >> 32 || (a2 & 0xC000) != 0 && ((a2 & 0xC000 ^ 0xC000) & a1) != 0 || (a1 & 0x2000) == 0 && (a2 & 0x2000) != 0)
  {
    return 0;
  }

  v3 = (a2 & 0x1FFF & a1) != 0 || (a2 & 0x1FFF) == 0;
  return a2 && v3;
}

BOOL static Event.Relationship.~= infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  if ((a2 & 0xC000) != 0 && ((a2 & 0xC000 ^ 0xC000) & a1) != 0)
  {
    return 0;
  }

  if ((a2 & 0x2000) != 0 && (a1 & 0x2000) == 0)
  {
    return 0;
  }

  v3 = a2 & 0x1FFF & a1;
  if ((a2 & 0x1FFF) == 0)
  {
    v3 = a2;
  }

  return v3 != 0;
}

uint64_t Event.Relative.describe(state:)(uint64_t result, unint64_t a2)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = *(result + 8);
    v4 = *(result + 16);
    v5 = *(result + 24);
    v6 = *(result + 32);
    v7 = *(result + 40);
    v8 = *(result + 41);
    v11 = *result - 1;
    v10 = specialized InspectionState.wrapDescription<A>(_:)(HIDWORD(a2));
    MEMORY[0x26D69CDB0](58, 0xE100000000000000);
    v9 = specialized InspectionState.wrapDescription<A>(_:)(v2);
    MEMORY[0x26D69CDB0](v9);

    return v10;
  }

  return result;
}

uint64_t Event.Relationship.name.getter(int a1)
{
  v1 = a1 & 0x1FFF;
  if (v1 == 3075)
  {
    return 0x646574616C6552;
  }

  if (a1 == 16385)
  {
    return 0x6D61657274737055;
  }

  if (a1 == 32769)
  {
    return 0x657274736E776F44;
  }

  if ((a1 & 0x1FFFu) > 0x7F)
  {
    if ((a1 & 0x1FFFu) > 0x3FF)
    {
      switch(v1)
      {
        case 1024:
          return 0x746361736E617254;
        case 4096:
          return 0x6E6F69746341;
        case 2048:
          return 1802658125;
      }
    }

    else
    {
      switch(v1)
      {
        case 128:
          return 0x656372756F53;
        case 256:
          return 1718379859;
        case 512:
          return 0x747865746E6F43;
      }
    }
  }

  else if ((a1 & 0x1FFFu) > 0xF)
  {
    switch(v1)
    {
      case 16:
        return 0x626176726573624FLL;
      case 32:
        return 0x70756F7247;
      case 64:
        return 0x6F20736573756143;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x6870617247;
      case 4:
        return 0x697461636F6C6C41;
      case 8:
        return 0x61636F6C6C616544;
    }
  }

  if ((a1 & 0x2000) != 0)
  {
    v3 = Event.Relationship.name.getter(a1 & 0xFFFFDFFF);
    MEMORY[0x26D69CDB0](v3);

    return 544694610;
  }

  else
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Event.Relationship.label.getter(__int16 a1)
{
  if ((a1 & 0x1FFF) == 0x40)
  {
    return 0x736573756143;
  }

  else
  {
    return Event.Relationship.name.getter(a1);
  }
}

uint64_t Event.Relationship.directionDescription.getter(uint64_t result)
{
  if ((result & 0xC000) == 0x4000)
  {
    return 0x6D61657274737055;
  }

  if ((result & 0xC000) == 0x8000)
  {
    return 0x657274736E776F44;
  }

  if (result >= 0xC000u)
  {
    return 7105601;
  }

  __break(1u);
  return result;
}

uint64_t Event.Relationship.describe(state:)(uint64_t a1, int a2)
{
  if ((a2 & 0x2000) != 0)
  {
    v3 = 82;
  }

  else
  {
    v3 = 0;
  }

  if ((a2 & 0x2000) != 0)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v3, v4);

  if ((a2 & 0xC000) == 0x8000)
  {
    v6 = 0xEA00000000006D61;
    v7 = 0x657274736E776F44;
    goto LABEL_13;
  }

  if ((a2 & 0xC000) == 0x4000)
  {
    v6 = 0xE800000000000000;
    v7 = 0x6D61657274737055;
LABEL_13:
    MEMORY[0x26D69CDB0](v7, v6);

    MEMORY[0x26D69CDB0](58, 0xE100000000000000);
    v8 = Event.Relationship.name.getter(a2 & 0xFFFFDFFF);
    MEMORY[0x26D69CDB0](v8);

    return 0;
  }

  if ((a2 >> 14) > 2u)
  {
    v6 = 0xE300000000000000;
    v7 = 7105601;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t Event.Relationship.help.getter(uint64_t result)
{
  switch(result)
  {
    case 0xCC03u:
      return 0xD000000000000051;
    case 0x8001u:
      return 0xD000000000000076;
    case 0x4001u:
      return 0xD000000000000051;
  }

  v1 = result & 0x1FFF;
  if (v1 <= 0x1F)
  {
    switch(v1)
    {
      case 2u:
        return 0;
      case 4u:
        return 0xD00000000000002ALL;
      case 0x10u:
        return 0xD000000000000010;
    }
  }

  else if ((result & 0x1FFFu) > 0x7F)
  {
    if (v1 == 128)
    {
      return 0x656372756F73;
    }

    if (v1 == 256)
    {
      return 0x2073657461647055;
    }
  }

  else
  {
    if (v1 == 32)
    {
      return 0x70756F7247;
    }

    if (v1 == 64)
    {
      return 0x6F20736573756143;
    }
  }

  __break(1u);
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance Event.Relationship(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *protocol witness for SetAlgebra.remove(_:) in conformance Event.Relationship@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *protocol witness for SetAlgebra.update(with:) in conformance Event.Relationship@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_WORD *protocol witness for RawRepresentable.init(rawValue:) in conformance Event.Relationship@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Event.Relationship@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t Event.RelativesSequnece.count.getter()
{
  result = v0[3];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
    result = 0;
    v3 = *v0;
    v4 = *(v0 + 3);
    v5 = *(v0 + 8);
LABEL_3:
    if (v2 != v4)
    {
      v6 = (v3 + 8 * v2);
      do
      {
        if (v2 >= v4)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        if (!v3)
        {
          goto LABEL_23;
        }

        v7 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_22;
        }

        v8 = *v6;
        if (((v0[2] & 0xC000) == 0 || (v8 & (v5 & 0xC000 ^ 0xC000)) == 0) && ((v0[2] & 0x2000) == 0 || (v8 & 0x2000) != 0))
        {
          if ((v5 & 0x1FFF) != 0)
          {
            if ((v0[2] & 0x1FFF & v8) != 0)
            {
LABEL_16:
              ++v2;
              if (!__OFADD__(result++, 1))
              {
                goto LABEL_3;
              }

              __break(1u);
              break;
            }
          }

          else if (*(v0 + 8))
          {
            goto LABEL_16;
          }
        }

        ++v2;
        v6 += 4;
      }

      while (v7 != v4);
    }

    v0[3] = result;
  }

  return result;
}

uint64_t Event.RelativesSequnece.Iterator.relatives.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

unint64_t protocol witness for IteratorProtocol.next() in conformance Event.RelativesSequnece.Iterator@<X0>(uint64_t a1@<X8>)
{
  result = Event.RelativesSequnece.Iterator.next()();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

double protocol witness for Sequence.makeIterator() in conformance Event.RelativesSequnece@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  return result;
}

uint64_t Event.Abstract.type.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Event.Abstract.displayName(within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = *(a1 + 200) + 120 * a5;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  LOWORD(v5) = *(v5 + 24);
  v10 = v8;
  v11 = v5;
  return (*(v7 + 8))(&v10, a1);
}

double protocol witness for static Event_Noun.id(for:verb:) in conformance Event.Abstract@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 24);
  specialized Event.Id.init<A, B>(_:_:_:)(a4, a2, &protocol witness table for Event.Abstract, a3, v9);
  result = *v9;
  v7 = v9[1];
  *a5 = v9[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v10;
  return result;
}

double _s21SwiftUITracingSupport5EventV9IgnorableVAA0D5_NounA2aFP2id3for4verbAC2IdVSPyxG_AA0D5_Verb_pXptFZTW_0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  Event.Id.init<A, B>(_:_:)(a3, a1, a4, a2, v8);
  result = *v8;
  v7 = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v9;
  return result;
}

uint64_t Event.Update.interval.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

void Event.Id.hash(into:)()
{
  Hasher.init()();
  MEMORY[0x26D69DBC0](*v0);
  MEMORY[0x26D69DBC0](*(v0 + 16));
  v1 = Hasher.finalize()();
  MEMORY[0x26D69DBC0](v1);
  Hasher._combine(_:)(*(v0 + 32));
}

unint64_t Event.Id.hasAttribute.getter()
{
  v1 = *v0 == &type metadata for Event.AttributeValue || *v0 == &type metadata for Event.AttributeStack;
  v2 = !v1;
  if (v1)
  {
    v3 = *(v0 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3 | (v2 << 32);
}

double static Event.Id.value(_:verb:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  specialized Event.Id.init<A, B>(_:_:_:)(&type metadata for Event.AttributeValue, a1, &protocol witness table for Event.AttributeValue, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

uint64_t static Event.Id.Spec.value(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &type metadata for Event.AttributeValue;
  *(a2 + 8) = &protocol witness table for Event.AttributeValue;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 36) = 0;
  return result;
}

uint64_t static Event.Id.Spec.~= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*a2)
  {
    v3 = *a1 == *a2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a2 + 36);
  v5 = v2 == 0;
  if (v2)
  {
    v6 = !v3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v8 = *(a1 + 16) == v2;
    if (v4 & 1 | ((v8 & 1) == 0))
    {
      return v4 & v8;
    }

    return *(a2 + 32) == *(a1 + 32);
  }

  v8 = v5 && v3;
  if (!(v4 & 1 | (!v5 || !v3)))
  {
    return *(a2 + 32) == *(a1 + 32);
  }

  return v4 & v8;
}

Swift::Int Event.Id.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher.init()();
  MEMORY[0x26D69DBC0](*v0);
  MEMORY[0x26D69DBC0](*(v0 + 16));
  v1 = Hasher.finalize()();
  MEMORY[0x26D69DBC0](v1);
  Hasher._combine(_:)(*(v0 + 32));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Event.Id()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 8);
  Hasher.init()();
  MEMORY[0x26D69DBC0](v1);
  MEMORY[0x26D69DBC0](v2);
  v4 = Hasher.finalize()();
  MEMORY[0x26D69DBC0](v4);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Event.Id()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher.init()();
  MEMORY[0x26D69DBC0](v1);
  MEMORY[0x26D69DBC0](v2);
  v4 = Hasher.finalize()();
  MEMORY[0x26D69DBC0](v4);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

double protocol witness for static Event_Noun.id(for:verb:) in conformance Event.AttributeStack@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  specialized Event.Id.init<A, B>(_:_:_:)(a4, a2, &protocol witness table for Event.AttributeStack, a3, v9);
  result = *v9;
  v7 = v9[1];
  *a5 = v9[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v10;
  return result;
}

uint64_t Event.AttributeValue.oldValue.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16) | (*(v0 + 20) << 32);
  return result;
}

uint64_t Event.AttributeValue.oldValue.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  *(v2 + 20) = HIDWORD(a2);
  return result;
}

uint64_t Event.AttributeValue.newValue.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32) | (*(v0 + 36) << 32);
  return result;
}

uint64_t Event.AttributeValue.newValue.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  *(v2 + 36) = HIDWORD(a2);
  return result;
}

double Event.AttributeValue.compareFailed.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v10[0] = *v2;
    v3 = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    *&v11[12] = *(v2 + 60);
    v10[2] = v4;
    *v11 = v5;
    v10[1] = v3;
    v6 = v2[3];
    a1[2] = v2[2];
    a1[3] = v6;
    *(a1 + 60) = *(v2 + 60);
    v7 = v2[1];
    *a1 = *v2;
    a1[1] = v7;
    outlined init with copy of Event.AttributeValue.ChangedField(v10, &v9);
  }

  else
  {
    result = 0.0;
    *(a1 + 60) = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t Event.AttributeValue.ChangedField.failedRange.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t Event.AttributeValue.ChangedField.estimatedField.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v2;
  v8 = *(v1 + 56);
  v3 = v8;
  v9 = *(v1 + 72);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return outlined init with copy of Attribute.EstimatedField(v7, v6);
}

void Event.AttributeValue.ChangedField.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 60);
  v12 = *(v2 + 64);
  v13 = *(v2 + 52);
  v14 = *(v2 + 72);
  MEMORY[0x26D69DBC0](*v2);
  MEMORY[0x26D69DBC0](v4);
  Hasher._combine(_:)(v5);
  MEMORY[0x26D69DBC0](v6);
  MEMORY[0x26D69DBC0](v7);
  specialized Array<A>.hash(into:)(a1, v8);
  Hasher._combine(_:)(v9);
  if (v10 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v13);
  }

  Hasher._combine(_:)(v11);
  MEMORY[0x26D69DBC0](v12);
  Hasher._combine(_:)(v14);
}

Swift::Int Event.AttributeValue.ChangedField.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 12);
  v11 = *(v0 + 13);
  v8 = *(v0 + 56);
  v9 = *(v0 + 15);
  v12 = v0[8];
  v13 = *(v0 + 18);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  MEMORY[0x26D69DBC0](v2);
  Hasher._combine(_:)(v3);
  MEMORY[0x26D69DBC0](v4);
  MEMORY[0x26D69DBC0](v5);
  specialized Array<A>.hash(into:)(v14, v6);
  Hasher._combine(_:)(v7);
  if (v8 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v11);
  }

  Hasher._combine(_:)(v9);
  MEMORY[0x26D69DBC0](v12);
  Hasher._combine(_:)(v13);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Event.AttributeValue.ChangedField(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  MEMORY[0x26D69DBC0](*v1);
  MEMORY[0x26D69DBC0](v3);
  Hasher._combine(_:)(v4);
  Attribute.EstimatedField.hash(into:)(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Event.AttributeValue.ChangedField()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  MEMORY[0x26D69DBC0](v2);
  Hasher._combine(_:)(v3);
  Attribute.EstimatedField.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t Event.AttributeValue.changedField.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

Swift::Void __swiftcall Event.AttributeValue.deallocate()()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    outlined destroy of Event.AttributeValue.ChangedField(*(v0 + 40));
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 40) = 0;
  }
}

Swift::Void __swiftcall Event.AttributeValue.copy()()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v7[0] = *v1;
    v2 = v1[1];
    v3 = v1[2];
    v4 = v1[3];
    *&v8[12] = *(v1 + 60);
    v7[2] = v3;
    *v8 = v4;
    v7[1] = v2;
    outlined init with copy of Event.AttributeValue.ChangedField(v7, &v6);
    _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5EventV14AttributeValueV12ChangedFieldV_Tt0B5(v7);
    *(v0 + 40) = v5;
  }
}

uint64_t Event.AttributeValue.changeDescription(_:within:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*v3 >= *(a3 + 84))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(a3 + 72);
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5 + 312 * *v3;
  if (*(v6 + 101))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v3;
  if ((v3[13] & 1) == 0)
  {
    v8 = HIDWORD(*(v6 + 92));
    v9 = *(*a3 + 136);
    v10 = *(v9 + 4);
    if (v8 < *(v10 + 16))
    {
      v11 = *(v10 + 4 * v8 + 32);
      if (v11 < *(v9 + 3))
      {
        if (*v9)
        {
          v13 = *a2;
          v14 = v3[12];
          v15 = *v9 + 120 * v11;
          v16 = *v15;
          v17 = *(v15 + 16);
          v18 = *(v15 + 48);
          v51[2] = *(v15 + 32);
          v51[3] = v18;
          v51[0] = v16;
          v51[1] = v17;
          v19 = *(v15 + 64);
          v20 = *(v15 + 80);
          v21 = *(v15 + 96);
          *(v52 + 14) = *(v15 + 110);
          v51[5] = v20;
          v52[0] = v21;
          v51[4] = v19;
          v22 = *(v15 + 80);
          v48 = *(v15 + 64);
          v49 = v22;
          v50[0] = *(v15 + 96);
          *(v50 + 14) = *(v15 + 110);
          v23 = *(v15 + 16);
          v44 = *v15;
          v45 = v23;
          v24 = *(v15 + 48);
          v46 = *(v15 + 32);
          v47 = v24;
          v25 = v9[2];
          v26 = *v9;
          v53[1] = v9[1];
          v53[2] = v25;
          v27 = v9[6];
          v29 = v9[3];
          v28 = v9[4];
          v53[5] = v9[5];
          v53[6] = v27;
          v53[3] = v29;
          v53[4] = v28;
          v53[0] = v26;
          v30 = v9[5];
          v41 = v9[4];
          v42 = v30;
          v43 = v9[6];
          v31 = v9[1];
          v37 = *v9;
          v38 = v31;
          v32 = v9[3];
          v39 = v9[2];
          v40 = v32;
          outlined init with copy of PType(v51, v55);
          outlined init with copy of Interpreter.Storage.Types(v53, v55);
          PType.linearizedField(at:within:)(v14, &v37);
          v34 = v33;
          v54[4] = v41;
          v54[5] = v42;
          v54[6] = v43;
          v54[0] = v37;
          v54[1] = v38;
          v54[2] = v39;
          v54[3] = v40;
          outlined destroy of Interpreter.Storage.Types(v54);
          v55[4] = v48;
          v55[5] = v49;
          v56[0] = v50[0];
          *(v56 + 14) = *(v50 + 14);
          v55[0] = v44;
          v55[1] = v45;
          v55[2] = v46;
          v55[3] = v47;
          outlined destroy of PType(v55);
          specialized Event.AttributeValue.with<A>(byteString:within:_:)(v13, a3, v7, a3, v7, v14, &v44);
          if (v46 != 255)
          {
            v35 = v45;
            *a1 = v44;
            *(a1 + 16) = v35;
            *(a1 + 32) = v46;
            return v34;
          }

          goto LABEL_16;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_17:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Event.AttributeValue.with<A>(byteString:within:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (*a3 >= *(a2 + 84))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = *(a2 + 72);
  if (!v7)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!*(v7 + 312 * *a3 + 212))
  {
    goto LABEL_14;
  }

  v8 = 2;
  if (result)
  {
    v8 = 6;
  }

  v9 = 3;
  if (result)
  {
    v9 = 7;
  }

  v10 = 4;
  if (result)
  {
    v10 = 8;
  }

  v11 = 5;
  if (result)
  {
    v11 = 9;
  }

  v12 = a3[v10];
  v13 = a3[v9];
  v14 = a3[v8];
  v15 = a3[v11];
  if (!v14 && v15 == -1)
  {
LABEL_14:
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = -1;
    return result;
  }

  v16 = *a2;
  v17 = (*a2 + 40);
  v18 = *(*a2 + 56);
  v108[0] = *v17;
  v108[1] = v18;
  v109[0] = *(v16 + 72);
  v19 = (v16 + 72);
  v20 = (v16 + 84);
  v21 = (v16 + 88);
  v22 = 8 * v14;
  *(v109 + 9) = *(v16 + 81);
  v23 = (v16 + 40);
  v24 = (v16 + 72);
  v25 = (v16 + 84);
  v26 = (v16 + 88);
  v77 = v13;
  v76 = v12;
  while (1)
  {
    v27 = *v26;
    if (v14 < *v25)
    {
      v28 = (*v24 + v22);
      if ((v28[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v27)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v14, 0, v108);
    }

    v24 = (v27 + 32);
    v25 = (v27 + 44);
    v26 = (v27 + 48);
    v23 = v27;
  }

  if (!*v23)
  {
    goto LABEL_79;
  }

  v29 = *v23 + 24 * *v28;
  v30 = *v29;
  v31 = *(*v29 + 196);
  v32 = 0uLL;
  if (!v31)
  {
    v38 = 0;
    v39 = 0;
    goto LABEL_54;
  }

  v33 = *(v30 + 184);
  if (!v33)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v34 = v31 - 1;
  if (*(v33 + 32 * (v31 - 1)) >= v15)
  {
    v40 = v31 >> 1;
    v41 = *(v33 + 32 * (v31 >> 1));
    if (v31 != 1 && v41 != v15)
    {
      v71 = *(v30 + 184);
      if (v15 >= v41)
      {
        v44 = v40 + 1;
        v43 = v15;
        v40 = v31;
      }

      else
      {
        v43 = v15;
        v44 = 0;
      }

      v48 = specialized Collection<>.binarySearch(for:)(v43, v44, v40, v33, *(v30 + 192) | (v31 << 32));
      if (v49)
      {
        v40 = v31 - 1;
      }

      else
      {
        v40 = v48;
      }

      v32 = 0uLL;
      v33 = v71;
    }

    v50 = (v33 + 32 * v40);
    v34 = v40;
    while (v40 < v31)
    {
      if (v15 >= *v50)
      {
        goto LABEL_25;
      }

      if (!v34)
      {
        goto LABEL_53;
      }

      --v34;
      v50 -= 8;
      if (v34 > v31)
      {
        __break(1u);
LABEL_53:
        v38 = 0;
        v39 = 0;
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_69;
  }

LABEL_25:
  v35 = v17[1];
  v106[0] = *v17;
  v106[1] = v35;
  v107[0] = v17[2];
  *(v107 + 9) = *(v17 + 41);
  while (1)
  {
    v36 = *v21;
    if (v14 < *v20)
    {
      v37 = (*v19 + v22);
      if ((v37[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v36)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v14, 0, v106);
    }

    v19 = (v36 + 32);
    v20 = (v36 + 44);
    v21 = (v36 + 48);
    v17 = v36;
  }

  if (!*v17)
  {
    goto LABEL_81;
  }

  v45 = *v17 + 24 * *v37;
  if (v34 >= *(*v45 + 196))
  {
    goto LABEL_71;
  }

  v46 = *(*v45 + 184);
  if (!v46)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v47 = (v46 + 32 * v34);
  v38 = *v47;
  v39 = *(v47 + 1);
  v32 = *(v47 + 1);
LABEL_54:
  v98 = v76 & 1;
  *&v78 = v14 | (v77 << 32);
  *(&v78 + 1) = v76 & 1 | (v15 << 32);
  *&v79 = v38;
  *(&v79 + 1) = v39;
  v80 = v32;
  LOBYTE(v81) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v16, &v78, 0, 0, v91);
  if (Interpreter.Iterator.read()())
  {
    v104[0] = *&v92[8];
    v104[1] = *&v92[24];
    v105[0] = *&v92[40];
    *(v105 + 9) = *&v92[49];
    v51 = *&v92[8];
    v52 = *&v92[40];
    v53 = *&v92[56];
    if (*&v92[68] >= *&v92[52])
    {
      goto LABEL_57;
    }

    while (1)
    {
      v54 = (v52 + 8 * *&v92[68]);
      if ((v54[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_57:
        if (!v53)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*&v92[68], 0, v104);
        }

        v51 = *v53;
        v52 = v53[4];
        v55 = *(v53 + 11);
        v53 = v53[6];
      }

      while (*&v92[68] >= v55);
    }

    if (!v51)
    {
      goto LABEL_80;
    }

    v56 = (v51 + 24 * *v54);
    v57 = *v56;
    v58 = *(*v56 + 96);
    if (v58 == 2)
    {
      goto LABEL_73;
    }

    v59 = *(v57 + 104);
    v60 = *(v57 + 88);
    v99 = *(v57 + 72);
    v100 = v60;
    v101 = v58 & 0x101;
    v102 = HIDWORD(v58);
    v103 = v59 & 1;
    v61 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
    if (v63)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v88 = v95;
    v89 = v96;
    v90 = v97;
    v84 = *&v92[48];
    v85 = *&v92[64];
    v86 = v93;
    v87 = v94;
    v80 = v91[2];
    v81 = *v92;
    v82 = *&v92[16];
    v83 = *&v92[32];
    v78 = v91[0];
    v79 = v91[1];
    v64 = specialized static ByteString.construct(attachment:from:)(v61, v62);
    v66 = v65;
    v68 = v67;
    specialized EvolutionTable.deallocate()();
    if (*a5 < *(a4 + 84))
    {
      v69 = *(a4 + 72);
      if (v69)
      {
        v70 = v69 + 312 * *a5;
        if ((*(v70 + 101) & 1) == 0)
        {
          ByteString.description(ofType:field:within:)(*(v70 + 96), a6, *a4, v64, v66, v68 & 1, a7);
          return outlined consume of ByteString.Storage(v64, v66, v68 & 1);
        }

        goto LABEL_76;
      }

LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    goto LABEL_70;
  }

LABEL_82:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Event.AttributeValue.with<A>(byteString:within:_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (*a3 >= *(a2 + 84))
  {
    goto LABEL_72;
  }

  v8 = *(a2 + 72);
  if (!v8)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (*(v8 + 312 * *a3 + 212))
  {
    v9 = 2;
    if (a1)
    {
      v9 = 6;
    }

    v10 = 3;
    if (a1)
    {
      v10 = 7;
    }

    v11 = 4;
    if (a1)
    {
      v11 = 8;
    }

    v12 = 5;
    if (a1)
    {
      v12 = 9;
    }

    v13 = a3[v11];
    v14 = a3[v10];
    v15 = a3[v9];
    v16 = a3[v12];
    if (v15 || v16 != -1)
    {
      v17 = *a2;
      v18 = (*a2 + 40);
      v19 = *(*a2 + 56);
      v111[0] = *v18;
      v111[1] = v19;
      v112[0] = *(v17 + 72);
      v20 = (v17 + 72);
      v21 = (v17 + 84);
      v22 = (v17 + 88);
      v23 = 8 * v15;
      *(v112 + 9) = *(v17 + 81);
      v24 = (v17 + 40);
      v25 = (v17 + 72);
      v26 = (v17 + 84);
      v27 = (v17 + 88);
      v80 = v14;
      v79 = v13;
      while (1)
      {
        v28 = *v27;
        if (v15 < *v26)
        {
          v29 = (*v25 + v23);
          if ((v29[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v28)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v15, 0, v111);
        }

        v25 = (v28 + 32);
        v26 = (v28 + 44);
        v27 = (v28 + 48);
        v24 = v28;
      }

      if (!*v24)
      {
        goto LABEL_82;
      }

      v30 = *v24 + 24 * *v29;
      v31 = *v30;
      v32 = *(*v30 + 196);
      v33 = 0uLL;
      if (!v32)
      {
        v39 = 0;
        v40 = 0;
LABEL_54:
        v101 = v79 & 1;
        *&v81 = v15 | (v80 << 32);
        *(&v81 + 1) = v79 & 1 | (v16 << 32);
        *&v82 = v39;
        *(&v82 + 1) = v40;
        v83 = v33;
        LOBYTE(v84) = 1;
        Interpreter.Iterator.init(_:kind:onEvent:)(v17, &v81, 0, 0, v94);
        if (!Interpreter.Iterator.read()())
        {
LABEL_85:

          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v107[0] = *&v95[8];
        v107[1] = *&v95[24];
        v108[0] = *&v95[40];
        *(v108 + 9) = *&v95[49];
        v52 = *&v95[8];
        v53 = *&v95[40];
        v54 = *&v95[56];
        if (*&v95[68] >= *&v95[52])
        {
          goto LABEL_57;
        }

        while (1)
        {
          v55 = (v53 + 8 * *&v95[68]);
          if ((v55[1] & 1) == 0)
          {
            break;
          }

          do
          {
LABEL_57:
            if (!v54)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(*&v95[68], 0, v107);
            }

            v52 = *v54;
            v53 = v54[4];
            v56 = *(v54 + 11);
            v54 = v54[6];
          }

          while (*&v95[68] >= v56);
        }

        if (!v52)
        {
          goto LABEL_83;
        }

        v57 = (v52 + 24 * *v55);
        v58 = *v57;
        v59 = *(*v57 + 96);
        if (v59 == 2)
        {
          goto LABEL_76;
        }

        v60 = *(v58 + 104);
        v61 = *(v58 + 88);
        v102 = *(v58 + 72);
        v103 = v61;
        v104 = v59 & 0x101;
        v105 = HIDWORD(v59);
        v106 = v60 & 1;
        v62 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
        if (v64)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v91 = v98;
        v92 = v99;
        v93 = v100;
        v87 = *&v95[48];
        v88 = *&v95[64];
        v89 = v96;
        v90 = v97;
        v83 = v94[2];
        v84 = *v95;
        v85 = *&v95[16];
        v86 = *&v95[32];
        v81 = v94[0];
        v82 = v94[1];
        v65 = specialized static ByteString.construct(attachment:from:)(v62, v63);
        v67 = v66;
        v69 = v68;
        specialized EvolutionTable.deallocate()();
        if (*a5 < *(a4 + 84))
        {
          v70 = *(a4 + 72);
          if (v70)
          {
            v71 = v70 + 312 * *a5;
            if ((*(v71 + 101) & 1) == 0)
            {
              ByteString.description(ofType:field:within:)(*(v71 + 96), a6, a7, *a4, v65, v67, v69 & 1, a8);
              outlined consume of ByteString.Storage(v65, v67, v69 & 1);
              goto LABEL_68;
            }

            goto LABEL_79;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        goto LABEL_73;
      }

      v34 = *(v31 + 184);
      if (!v34)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v35 = v32 - 1;
      if (*(v34 + 32 * (v32 - 1)) < v16)
      {
LABEL_25:
        v36 = v18[1];
        v109[0] = *v18;
        v109[1] = v36;
        v110[0] = v18[2];
        *(v110 + 9) = *(v18 + 41);
        while (1)
        {
          v37 = *v22;
          if (v15 < *v21)
          {
            v38 = (*v20 + v23);
            if ((v38[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v37)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v15, 0, v109);
          }

          v20 = (v37 + 32);
          v21 = (v37 + 44);
          v22 = (v37 + 48);
          v18 = v37;
        }

        if (!*v18)
        {
          goto LABEL_84;
        }

        v46 = *v18 + 24 * *v38;
        if (v35 >= *(*v46 + 196))
        {
          goto LABEL_74;
        }

        v47 = *(*v46 + 184);
        if (!v47)
        {
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v48 = (v47 + 32 * v35);
        v39 = *v48;
        v40 = *(v48 + 1);
        v33 = *(v48 + 1);
        goto LABEL_54;
      }

      v41 = v32 >> 1;
      v42 = *(v34 + 32 * (v32 >> 1));
      if (v32 != 1 && v42 != v16)
      {
        v73 = *(v31 + 184);
        if (v16 >= v42)
        {
          v45 = v41 + 1;
          v44 = v16;
          v41 = v32;
        }

        else
        {
          v44 = v16;
          v45 = 0;
        }

        v49 = specialized Collection<>.binarySearch(for:)(v44, v45, v41, v34, *(v31 + 192) | (v32 << 32));
        if (v50)
        {
          v41 = v32 - 1;
        }

        else
        {
          v41 = v49;
        }

        v33 = 0uLL;
        v34 = v73;
      }

      v51 = (v34 + 32 * v41);
      v35 = v41;
      while (v41 < v32)
      {
        if (v16 >= *v51)
        {
          goto LABEL_25;
        }

        if (!v35)
        {
          goto LABEL_53;
        }

        --v35;
        v51 -= 8;
        if (v35 > v32)
        {
          __break(1u);
LABEL_53:
          v39 = 0;
          v40 = 0;
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = -1;
LABEL_68:
}

uint64_t Event.AttributeValue.description(_:fieldNamed:within:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;

  return specialized Event.AttributeValue.with<A>(byteString:within:_:)(v10, a4, v5, a4, v5, a2, a3, a5);
}

double protocol witness for static Event_Noun.id(for:verb:) in conformance Event.AttributeValue@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  specialized Event.Id.init<A, B>(_:_:_:)(a4, a2, &protocol witness table for Event.AttributeValue, a3, v9);
  result = *v9;
  v7 = v9[1];
  *a5 = v9[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v10;
  return result;
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance Event.AttributeValue()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    outlined destroy of Event.AttributeValue.ChangedField(*(v0 + 40));
    result = MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 40) = 0;
  }

  return result;
}

void protocol witness for Clonable.copy() in conformance Event.AttributeValue()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v7[0] = *v1;
    v2 = v1[1];
    v3 = v1[2];
    v4 = v1[3];
    *&v8[12] = *(v1 + 60);
    v7[2] = v3;
    *v8 = v4;
    v7[1] = v2;
    outlined init with copy of Event.AttributeValue.ChangedField(v7, &v6);
    _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5EventV14AttributeValueV12ChangedFieldV_Tt0B5(v7);
    *(v0 + 40) = v5;
  }
}

uint64_t static Event.Transaction.displayName(for:within:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (swift_dynamicCastMetatype())
  {
    return 0xD00000000000001ALL;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0x746361736E617254;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static Event_Noun.displayName(for:within:) in conformance Event.Transaction(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (swift_dynamicCastMetatype())
  {
    return 0xD00000000000001ALL;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0x746361736E617254;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Event.Action.Kind.description.getter()
{
  v1 = *v0;
  v2 = 0x7261657070416E6FLL;
  v3 = 0x7070617369446E6FLL;
  v4 = 0x65727574736547;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x65676E6168436E6FLL;
  }

  if (!*v0)
  {
    v2 = 0x656E696665646E75;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

SwiftUITracingSupport::Event::Action::Kind_optional __swiftcall Event.Action.Kind.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue > 67)
  {
    switch(rawValue)
    {
      case 'D':
        *v1 = 3;
        return rawValue;
      case 'G':
        *v1 = 4;
        return rawValue;
      case 'R':
        *v1 = 5;
        return rawValue;
    }

LABEL_12:
    *v1 = 6;
    return rawValue;
  }

  if (!rawValue)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue == 65)
  {
    *v1 = 1;
    return rawValue;
  }

  if (rawValue != 67)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Event.Action.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_26C3349E4[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Event.Action.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_26C3349E4[v1]);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Event.Action.Kind()
{
  v1 = *v0;
  v2 = 0x7261657070416E6FLL;
  v3 = 0x7070617369446E6FLL;
  v4 = 0x65727574736547;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x65676E6168436E6FLL;
  }

  if (!*v0)
  {
    v2 = 0x656E696665646E75;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t Event.DynamicProperties.offsets.getter()
{
  result = *v0;
  v2 = *(v0 + 8) | (*(v0 + 3) << 32);
  return result;
}

uint64_t Event.DynamicProperties.offsets.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 12) = HIDWORD(a2);
  return result;
}

void Event.DynamicProperties.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = -1;
  *(a1 + 16) = 0;
}

uint64_t Event.DynamicProperties.init(offsets:flags:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 12) = HIDWORD(a2);
  *(a4 + 16) = v4;
  return result;
}

char *Event.DynamicProperties.offsetNames(for:within:)(unsigned int a1, unint64_t *a2)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v185 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = a2;
  v9 = *v2;
  v8 = v2[1];
  v10 = *(v2 + 8);
  v11 = v2[3];
  v194 = *a2;
  v12 = *(v194 + 136);
  v13 = *v12;
  v14 = v12[2];
  v230[1] = v12[1];
  v231 = v14;
  v15 = v12[3];
  v16 = v12[4];
  v17 = v12[6];
  v234 = v12[5];
  v235 = v17;
  v232 = v15;
  v233 = v16;
  v230[0] = v13;
  if (*(v231 + 16) <= a1)
  {
    goto LABEL_144;
  }

  v18 = *(v231 + 4 * a1 + 32);
  if (v18 >= HIDWORD(v230[0]))
  {
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
    goto LABEL_156;
  }

  v191 = v10;
  v192 = v8;
  if (!*&v230[0])
  {
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v19 = *&v230[0] + 120 * v18;
  v20 = *v19;
  v21 = *(v19 + 16);
  v22 = *(v19 + 48);
  v218[2] = *(v19 + 32);
  v218[3] = v22;
  v23 = *(v19 + 64);
  v24 = *(v19 + 80);
  v25 = *(v19 + 96);
  *(v219 + 14) = *(v19 + 110);
  v218[5] = v24;
  v219[0] = v25;
  v218[4] = v23;
  v218[0] = v20;
  v218[1] = v21;
  v26 = (v194 + 40);
  v27 = *(v194 + 40);
  v28 = *(v194 + 56);
  v29 = *(v194 + 72);
  *(v249 + 9) = *(v194 + 81);
  v248[1] = v28;
  v249[0] = v29;
  v30 = (v194 + 72);
  v31 = (v194 + 84);
  v32 = (v194 + 88);
  v33 = 8 * v9;
  v248[0] = v27;
  v34 = (v194 + 40);
  v35 = (v194 + 72);
  v36 = (v194 + 84);
  v37 = (v194 + 88);
  v193 = v11;
  while (1)
  {
    v38 = *v37;
    if (v9 < *v36)
    {
      v39 = (*v35 + v33);
      if ((v39[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v38)
    {
      outlined init with copy of Interpreter.Storage.Types(v230, v211);
      outlined init with copy of PType(v218, v211);
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v248);
    }

    v35 = (v38 + 32);
    v36 = (v38 + 44);
    v37 = (v38 + 48);
    v34 = v38;
  }

  v40 = *v34;
  if (!v40)
  {
    goto LABEL_161;
  }

  v41 = (v40 + 24 * *v39);
  outlined init with copy of Interpreter.Storage.Types(v230, v211);
  outlined init with copy of PType(v218, v211);
  v42 = *v41;
  v43 = *(*v41 + 196);
  v44 = 0uLL;
  v45 = v193;
  if (!v43)
  {
LABEL_41:
    v59 = 0;
    v60 = 0;
    goto LABEL_42;
  }

  v46 = *(v42 + 184);
  if (!v46)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v47 = v43 - 1;
  if (*(v46 + 32 * (v43 - 1)) >= v193)
  {
    v51 = v43 >> 1;
    v52 = *(v46 + 32 * (v43 >> 1));
    if (v43 != 1 && v52 != v193)
    {
      if (v193 >= v52)
      {
        v55 = v51 + 1;
        v54 = v193;
        v51 = v43;
      }

      else
      {
        v54 = v193;
        v55 = 0;
      }

      v61 = specialized Collection<>.binarySearch(for:)(v54, v55, v51, v46, *(v42 + 192) | (v43 << 32));
      if (v62)
      {
        v51 = v43 - 1;
      }

      else
      {
        v51 = v61;
      }

      v45 = v193;
      v44 = 0uLL;
    }

    v63 = (v46 + 32 * v51);
    v47 = v51;
    do
    {
      if (v51 >= v43)
      {
        goto LABEL_142;
      }

      if (v45 >= *v63)
      {
        goto LABEL_14;
      }

      if (!v47)
      {
        goto LABEL_41;
      }

      --v47;
      v63 -= 8;
    }

    while (v47 <= v43);
    __break(1u);
    goto LABEL_41;
  }

LABEL_14:
  v48 = v26[1];
  v246[0] = *v26;
  v246[1] = v48;
  v247[0] = v26[2];
  *(v247 + 9) = *(v26 + 41);
  while (1)
  {
    v49 = *v32;
    if (v9 < *v31)
    {
      v50 = (*v30 + v33);
      if ((v50[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v49)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v246);
    }

    v30 = (v49 + 32);
    v31 = (v49 + 44);
    v32 = (v49 + 48);
    v26 = v49;
  }

  if (!*v26)
  {
    goto LABEL_165;
  }

  v56 = *v26 + 24 * *v50;
  if (v47 >= *(*v56 + 196))
  {
    goto LABEL_146;
  }

  v57 = *(*v56 + 184);
  if (!v57)
  {
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  v58 = (v57 + 32 * v47);
  v59 = *v58;
  v60 = *(v58 + 1);
  v44 = *(v58 + 1);
LABEL_42:
  v217 = v191;
  *&v201 = v9 | (v192 << 32);
  *(&v201 + 1) = v191 | (v45 << 32);
  *&v202 = v59;
  *(&v202 + 1) = v60;
  v203 = v44;
  v204 = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v194, &v201, 0, 0, v211);
  if (!Interpreter.Iterator.read()())
  {
LABEL_166:
    LODWORD(v181) = 0;
    v180 = 518;
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v244[0] = v212;
  v244[1] = v213;
  v245[0] = *v214;
  *(v245 + 9) = *&v214[9];
  v64 = v212;
  v65 = *v214;
  v66 = v215;
  v67 = 8 * v215;
  v68 = *&v214[16];
  if (v215 >= *&v214[12])
  {
    goto LABEL_45;
  }

  while (1)
  {
    v69 = (v65 + v67);
    if ((v69[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_45:
      if (!v68)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v215, 0, v244);
      }

      v64 = *v68;
      v65 = v68[4];
      v70 = *(v68 + 11);
      v68 = v68[6];
    }

    while (v215 >= v70);
  }

  if (!v64)
  {
    goto LABEL_162;
  }

  v71 = (v64 + 24 * *v69);
  v72 = *v71;
  v73 = *(*v71 + 96);
  if (v73 == 2)
  {
    goto LABEL_157;
  }

  v74 = *(v72 + 104);
  v75 = *(v72 + 88);
  v239[2] = *(v72 + 72);
  v240 = v75;
  v241 = v73 & 0x101;
  v242 = HIDWORD(v73);
  v243 = v74 & 1;
  v76 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v78)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v79 = v76;
  v80 = (v216 + 40);
  v81 = *(v216 + 56);
  v238[0] = *(v216 + 40);
  v238[1] = v81;
  v239[0] = *(v216 + 72);
  *(v239 + 9) = *(v216 + 81);
  v82 = (v216 + 72);
  v83 = (v216 + 84);
  v84 = (v216 + 88);
  while (1)
  {
    v85 = *v84;
    if (v66 < *v83)
    {
      v86 = (*v82 + v67);
      if ((v86[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v85)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v66, 0, v238);
    }

    v82 = (v85 + 32);
    v83 = (v85 + 44);
    v84 = (v85 + 48);
    v80 = v85;
  }

  v87 = *v80;
  if (!v87)
  {
    goto LABEL_163;
  }

  v88 = (v87 + 24 * *v86);
  v89 = *v88;
  v90 = (*v88 + 120);
  v91 = *(*v88 + 136);
  v236[0] = *v90;
  v236[1] = v91;
  v237[0] = *(v89 + 152);
  *(v237 + 9) = *(v89 + 161);
  v92 = v89 + 152;
  v93 = (v89 + 164);
  v94 = (v89 + 168);
  while (1)
  {
    v95 = *v94;
    if (*v93 >= 0x17u && (*(*v92 + 180) & 1) == 0)
    {
      break;
    }

    if (!v95)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x16u, 0, v236);
    }

    v92 = v95 + 32;
    v93 = (v95 + 44);
    v94 = (v95 + 48);
    v90 = v95;
  }

  if (!*v90)
  {
    goto LABEL_164;
  }

  v96 = _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo23T_DynamicPropertyChangea_Tt1g5Tf4nd_n(v79, v77);
  v98 = v97;
  v100 = v99;
  isUniquelyReferenced_nonNull_native = specialized EvolutionTable.deallocate()();
  if (v98)
  {
    v102 = 0;
    v193 = MEMORY[0x277D84F90];
    v191 = v219[1];
    LODWORD(v192) = BYTE4(v219[1]);
    v183 = v98;
    v184 = v96;
    v190 = v100;
    while (1)
    {
      v103 = v102 * v100;
      if ((v102 * v100) >> 64 != (v102 * v100) >> 63)
      {
        goto LABEL_138;
      }

      v104 = __OFADD__(v102, 1);
      v105 = v102 + 1;
      if (v104)
      {
        goto LABEL_139;
      }

      v106 = *(v96 + v103);
      v194 = v105;
      v195 = 0;
      *&v203 = 0;
      v201 = 0u;
      v202 = 0u;
      BYTE8(v203) = 1;
      v107 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v108 = MEMORY[0x28223BE20](v107);
      v210 = 0;
      MEMORY[0x28223BE20](v108);
      v109 = swift_allocObject();
      v110 = MEMORY[0x28223BE20](v109);
      *(v110 + 16) = 0;
      *(v110 + 24) = 0;
      v179[0] = closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
      v179[1] = &v182 - 6;
      v111 = MEMORY[0x28223BE20](v110);
      v180 = closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
      v181 = v111;
      if (v192)
      {
        goto LABEL_147;
      }

      v112 = swift_allocObject();
      *(v112 + 16) = closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
      *(v112 + 24) = &v182 - 6;
      v113 = swift_allocObject();
      *(v113 + 16) = closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
      *(v113 + 24) = v179;
      v209 = 1;
      specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v113, thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v112, 0, 0, 0, 0, 1, -1, 0, v191, 0);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_140;
      }

      v115 = swift_isEscapingClosureAtFileLocation();

      if (v115)
      {
        goto LABEL_141;
      }

      if (BYTE8(v203))
      {
        v100 = v190;
      }

      else
      {
        v116 = v201;
        v117 = HIDWORD(*(&v201 + 1));
        v118 = *v186;
        v119 = (*v186 + 40);
        v120 = *(*v186 + 56);
        v228[0] = *v119;
        v228[1] = v120;
        v229[0] = *(v118 + 72);
        v121 = (v118 + 72);
        v122 = (v118 + 84);
        v123 = (v118 + 88);
        v124 = v201;
        v125 = 8 * v201;
        *(v229 + 9) = *(v118 + 81);
        v126 = (v118 + 40);
        v127 = (v118 + 72);
        v128 = (v118 + 84);
        v129 = (v118 + 88);
        v189 = *(&v201 + 1);
        while (1)
        {
          v130 = *v129;
          if (v201 < *v128)
          {
            v131 = (*v127 + v125);
            if ((v131[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v130)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v201, 0, v228);
          }

          v127 = (v130 + 32);
          v128 = (v130 + 44);
          v129 = (v130 + 48);
          v126 = v130;
        }

        v132 = *v126;
        if (!v132)
        {
          goto LABEL_153;
        }

        v133 = (v132 + 24 * *v131);
        v134 = *v133;
        v135 = *(*v133 + 196);
        v136 = 0uLL;
        if (v135)
        {
          v187 = v118;
          v188 = v201;
          v137 = *(v134 + 184);
          if (!v137)
          {
            goto LABEL_151;
          }

          v138 = v135 - 1;
          if (v117 <= *(v137 + 32 * (v135 - 1)))
          {
            v144 = v135 >> 1;
            v145 = *(v137 + 32 * (v135 >> 1));
            if (v135 != 1 && v145 != HIDWORD(v201))
            {
              v147 = *(v134 + 192) | (v135 << 32);
              v182 = HIDWORD(*(&v201 + 1));
              if (v117 >= v145)
              {
                v149 = v144 + 1;
                v148 = HIDWORD(*(&v201 + 1));
                v144 = v135;
              }

              else
              {
                v148 = HIDWORD(*(&v201 + 1));
                v149 = 0;
              }

              v153 = specialized Collection<>.binarySearch(for:)(v148, v149, v144, v137, v147);
              if (v154)
              {
                v144 = v135 - 1;
              }

              else
              {
                v144 = v153;
              }

              LODWORD(v117) = v182;
              v136 = 0uLL;
            }

            v155 = (v137 + 32 * v144);
            v138 = v144;
            v116 = v188;
            while (1)
            {
              if (v144 >= v135)
              {
                __break(1u);
LABEL_137:
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
                goto LABEL_145;
              }

              if (*v155 <= v117)
              {
                goto LABEL_86;
              }

              if (!v138)
              {
                break;
              }

              --v138;
              v155 -= 8;
              if (v138 > v135)
              {
                goto LABEL_137;
              }
            }

            v142 = 0;
            v143 = 0;
            v98 = v183;
            v96 = v184;
            v100 = v190;
          }

          else
          {
LABEL_86:
            v139 = v119[1];
            v226[0] = *v119;
            v226[1] = v139;
            v227[0] = v119[2];
            *(v227 + 9) = *(v119 + 41);
            v116 = v188;
            while (1)
            {
              v140 = *v123;
              if (v124 < *v122)
              {
                v141 = (*v121 + v125);
                if ((v141[1] & 1) == 0)
                {
                  break;
                }
              }

              if (!v140)
              {
                specialized error #1 <A>() in EvolutionTable.address(of:in:)(v188, 0, v226);
              }

              v121 = (v140 + 32);
              v122 = (v140 + 44);
              v123 = (v140 + 48);
              v119 = v140;
            }

            v100 = v190;
            if (!*v119)
            {
              goto LABEL_155;
            }

            v150 = *v119 + 24 * *v141;
            v98 = v183;
            v96 = v184;
            if (v138 >= *(*v150 + 196))
            {
              goto LABEL_143;
            }

            v151 = *(*v150 + 184);
            if (!v151)
            {
              goto LABEL_152;
            }

            v152 = (v151 + 32 * v138);
            v142 = *v152;
            v143 = *(v152 + 1);
            v136 = *(v152 + 1);
          }

          v118 = v187;
        }

        else
        {
          v142 = 0;
          v143 = 0;
          v98 = v183;
          v96 = v184;
          v100 = v190;
        }

        LOBYTE(v210) = v189 & 1;
        v195 = v116;
        v196 = v189 & 0xFFFFFFFF00000001;
        v197 = v142;
        v198 = v143;
        v199 = v136;
        v200 = 1;
        Interpreter.Iterator.init(_:kind:onEvent:)(v118, &v195, 0, 0, &v201);
        if (!Interpreter.Iterator.read()())
        {
          goto LABEL_166;
        }

        v224[0] = v205;
        v224[1] = v206;
        v225[0] = *v207;
        *(v225 + 9) = *&v207[9];
        v156 = v205;
        v157 = *v207;
        v158 = *&v207[16];
        if (v208 >= *&v207[12])
        {
          do
          {
LABEL_119:
            if (!v158)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v208, 0, v224);
            }

            v156 = *v158;
            v157 = v158[4];
            v160 = *(v158 + 11);
            v158 = v158[6];
          }

          while (v208 >= v160);
        }

        v159 = (v157 + 8 * v208);
        if (v159[1])
        {
          goto LABEL_119;
        }

        if (!v156)
        {
          goto LABEL_154;
        }

        v161 = (v156 + 24 * *v159);
        v162 = *v161;
        v163 = *(*v161 + 96);
        if (v163 == 2)
        {
          goto LABEL_148;
        }

        v164 = *(v162 + 104);
        v165 = *(v162 + 88);
        v219[2] = *(v162 + 72);
        v220 = v165;
        v221 = v163 & 0x101;
        v222 = HIDWORD(v163);
        v223 = v164 & 1;
        v166 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
        if (v168)
        {
          goto LABEL_150;
        }

        v169 = v167 - v166;
        if (!v166)
        {
          v169 = 0;
        }

        v195 = v166;
        v196 = v169;
        static String.Encoding.utf8.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
        v170 = String.init<A>(bytes:encoding:)();
        if (!v171)
        {
          goto LABEL_149;
        }

        v172 = v170;
        v173 = v171;
        specialized EvolutionTable.deallocate()();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v193 + 2) + 1, 1, v193);
          v193 = isUniquelyReferenced_nonNull_native;
        }

        v175 = *(v193 + 2);
        v174 = *(v193 + 3);
        if (v175 >= v174 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v174 > 1), v175 + 1, 1, v193);
          v193 = isUniquelyReferenced_nonNull_native;
        }

        v176 = v193;
        *(v193 + 2) = v175 + 1;
        v177 = &v176[16 * v175];
        *(v177 + 4) = v172;
        *(v177 + 5) = v173;
      }

      v102 = v194;
      if (v194 >= v98)
      {
        goto LABEL_135;
      }
    }
  }

  v193 = MEMORY[0x277D84F90];
LABEL_135:
  outlined destroy of PType(v218);
  outlined destroy of Interpreter.Storage.Types(v230);
  return v193;
}

uint64_t Event.storage.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 28);
  v3 = *(v0 + 32);
  v5 = *(v0 + 24);
  *(v0 + 25);
  return result;
}

uint64_t Event.storage.setter(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 8) = result;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3 & 1;
  *(v4 + 25) = BYTE1(a3) & 1;
  *(v4 + 28) = HIDWORD(a3);
  *(v4 + 32) = a4;
  return result;
}

void Event._indices.getter()
{
  v1 = 0;
  v2 = 0;
  v3 = *(v0 + 8);
  v13 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16) - v3;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v2;
    if (v2 >= v4)
    {
      break;
    }

    if (v13)
    {
      goto LABEL_19;
    }

    if (!v3)
    {
      goto LABEL_20;
    }

    if (v5 < v1)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v8 = *(v3 + v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    if (v10 >= v9 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v6);
    }

    *(v6 + 2) = v10 + 1;
    *&v6[8 * v10 + 32] = v8;
    v11 = specialized HeterogeneousBuffer.stride<A>(of:)(*(v3 + v1));
    v12 = __OFADD__(v11, v1);
    v1 += v11;
    if (v12)
    {
      goto LABEL_16;
    }

    if (v1 > 0xFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    v2 = v7 + 1;
    if (v1 < 0)
    {
      goto LABEL_18;
    }
  }
}

unint64_t Event.hasInvalidation.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v6 = *(v0 + 28);
  v5 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v2, v1, v3, v5);
  v8 = 0;
  if (v6 == result && v5 == HIDWORD(result))
  {
    return v8;
  }

  if (HIDWORD(result) >= v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2)
  {
    return *(v2 + result + 8);
  }

LABEL_12:
  __break(1u);
  return result;
}

double project #1 <A, B>(_:_:) in Event.id.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 25);
  v15 = *(a2 + 28);
  v14 = *(a2 + 32);
  LOBYTE(v19[0]) = *(a2 + 24);
  v16 = HeterogeneousBuffer.valuePointer<A>(for:)(0, v11, v12, v19[0], v14, a3);
  (*(a4 + 16))(v19, v16, a1, a5, a3, a4);
  result = *v19;
  v18 = v19[1];
  *a6 = v19[0];
  *(a6 + 16) = v18;
  *(a6 + 32) = v20;
  return result;
}

ValueMetadata *specialized HeterogeneousBuffer.valuePointer<A>(for:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != &type metadata for Event.AttributeValue)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != &type metadata for Event.Update)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != &type metadata for Event.Prefetch)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != &type metadata for Event.Animation)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != &type metadata for Event.Transaction)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != &type metadata for Event.Action)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != &type metadata for Event.AttributeStack)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != &type metadata for GraphRef)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != &type metadata for Event.Abstract)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != &type metadata for Event.RenderTick)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != &type metadata for Event.GraphRootValueUpdate)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != &type metadata for Event.Invalidation)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t Event.noun.getter()
{
  v1 = *(v0 + 28);
  *(v0 + 25);
  v2 = HeterogeneousBuffer.type(at:)(0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32));
  result = swift_conformsToProtocol2();
  if (result)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t Event.verb.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  v3 = *(v0 + 24);
  *(v0 + 25);
  v6 = HeterogeneousBuffer.index(after:)(0, v1, v2, v3, v5);
  v7 = HeterogeneousBuffer.type(at:)(v6, v1, v2, v3, v5);
  result = swift_conformsToProtocol2();
  if (result)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t Event.prev.getter()
{
  v1 = *(v0 + 124) + 1;
  for (i = *(v0 + 112); ; i += 4)
  {
    if (!--v1)
    {
      v5 = 0;
      return v5 | ((v1 == 0) << 32);
    }

    if (!*(v0 + 112))
    {
      break;
    }

    v3 = i + 4;
    v4 = *i & 0x8100;
    if (v4 == 256)
    {
      v5 = *(v3 - 1);
      return v5 | ((v1 == 0) << 32);
    }
  }

  __break(1u);
  return result;
}

unint64_t Event.next.getter()
{
  v1 = *(v0 + 124) + 1;
  for (i = *(v0 + 112); ; i += 4)
  {
    if (!--v1)
    {
      v5 = 0;
      return v5 | ((v1 == 0) << 32);
    }

    if (!*(v0 + 112))
    {
      break;
    }

    v3 = i + 4;
    v4 = *i & 0x4100;
    if (v4 == 256)
    {
      v5 = *(v3 - 1);
      return v5 | ((v1 == 0) << 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t Event.backtraceRef.getter()
{
  result = *(v0 + 68);
  v2 = *(v0 + 76) & 1 | (*(v0 + 80) << 32);
  return result;
}

uint64_t Event.backtrace(within:)(uint64_t *a1)
{
  v2 = *(v1 + 68);
  v3 = *(v1 + 80);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == -1;
  }

  if (v4)
  {
    return 0;
  }

  v5 = *(v1 + 72);
  v87 = *(v1 + 76);
  v6 = *a1;
  v7 = (*a1 + 40);
  v8 = *(*a1 + 56);
  v110[0] = *v7;
  v110[1] = v8;
  v111[0] = *(v6 + 72);
  v9 = (v6 + 72);
  v10 = (v6 + 84);
  v11 = (v6 + 88);
  v12 = 8 * v2;
  *(v111 + 9) = *(v6 + 81);
  v13 = (v6 + 40);
  v14 = (v6 + 72);
  v15 = (v6 + 84);
  v16 = (v6 + 88);
  while (1)
  {
    v17 = *v16;
    if (v2 < *v15)
    {
      v18 = (*v14 + v12);
      if ((v18[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v2, 0, v110);
    }

    v14 = (v17 + 32);
    v15 = (v17 + 44);
    v16 = (v17 + 48);
    v13 = v17;
  }

  v20 = *v13;
  if (!v20)
  {
    goto LABEL_86;
  }

  v21 = (v20 + 24 * *v18);
  v22 = *v21;
  v23 = *(*v21 + 196);
  v24 = 0uLL;
  if (v23)
  {
    v86 = v5;
    v25 = *(v22 + 184);
    if (!v25)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v26 = v23 - 1;
    if (*(v25 + 32 * (v23 - 1)) >= v3)
    {
      v32 = v23 >> 1;
      v33 = *(v25 + 32 * (v23 >> 1));
      if (v23 != 1 && v33 != v3)
      {
        v85 = *(v22 + 184);
        if (v3 >= v33)
        {
          v36 = v32 + 1;
          v35 = v3;
          v32 = v23;
        }

        else
        {
          v35 = v3;
          v36 = 0;
        }

        v40 = specialized Collection<>.binarySearch(for:)(v35, v36, v32, v25, *(v22 + 192) | (v23 << 32));
        if (v41)
        {
          v32 = v23 - 1;
        }

        else
        {
          v32 = v40;
        }

        v24 = 0uLL;
        v25 = v85;
      }

      v42 = (v25 + 32 * v32);
      v26 = v32;
      while (v32 < v23)
      {
        if (v3 >= *v42)
        {
          goto LABEL_16;
        }

        if (!v26)
        {
          goto LABEL_44;
        }

        --v26;
        v42 -= 8;
        if (v26 > v23)
        {
          __break(1u);
LABEL_44:
          v30 = 0;
          v31 = 0;
          goto LABEL_45;
        }
      }

      goto LABEL_80;
    }

LABEL_16:
    v27 = v7[1];
    v108[0] = *v7;
    v108[1] = v27;
    v109[0] = v7[2];
    *(v109 + 9) = *(v7 + 41);
    while (1)
    {
      v28 = *v11;
      if (v2 < *v10)
      {
        v29 = (*v9 + v12);
        if ((v29[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v28)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v2, 0, v108);
      }

      v9 = (v28 + 32);
      v10 = (v28 + 44);
      v11 = (v28 + 48);
      v7 = v28;
    }

    if (!*v7)
    {
      goto LABEL_90;
    }

    v37 = *v7 + 24 * *v29;
    if (v26 >= *(*v37 + 196))
    {
      goto LABEL_81;
    }

    v38 = *(*v37 + 184);
    if (!v38)
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v39 = (v38 + 32 * v26);
    v30 = *v39;
    v31 = *(v39 + 1);
    v24 = *(v39 + 1);
LABEL_45:
    v5 = v86;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v96 = v87 & 1;
  *&v105 = v2 | (v5 << 32);
  *(&v105 + 1) = v87 & 1 | (v3 << 32);
  *&v106 = v30;
  *(&v106 + 1) = v31;
  *v107 = v24;
  v107[16] = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v6, &v105, 0, 0, v90);
  if (!Interpreter.Iterator.read()())
  {
LABEL_91:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v105 = v91;
  v106 = v92;
  *v107 = *v93;
  *&v107[9] = *&v93[9];
  v43 = v91;
  v44 = *v93;
  v45 = v94;
  v46 = 8 * v94;
  v47 = *&v93[16];
  if (v94 >= *&v93[12])
  {
    goto LABEL_49;
  }

  while (1)
  {
    v48 = (v44 + v46);
    if ((v48[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_49:
      if (!v47)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v94, 0, &v105);
      }

      v43 = *v47;
      v44 = v47[4];
      v49 = *(v47 + 11);
      v47 = v47[6];
    }

    while (v94 >= v49);
  }

  if (!v43)
  {
    goto LABEL_87;
  }

  v50 = (v43 + 24 * *v48);
  v51 = *v50;
  v52 = *(*v50 + 96);
  if (v52 == 2)
  {
    goto LABEL_82;
  }

  v53 = *(v51 + 104);
  v54 = *(v51 + 88);
  v100[2] = *(v51 + 72);
  v101 = v54;
  v102 = v52 & 0x101;
  v103 = HIDWORD(v52);
  v104 = v53 & 1;
  v55 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v57)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v58 = v55;
  v59 = (v95 + 40);
  v60 = *(v95 + 56);
  v99[0] = *(v95 + 40);
  v99[1] = v60;
  v100[0] = *(v95 + 72);
  *(v100 + 9) = *(v95 + 81);
  v61 = (v95 + 72);
  v62 = (v95 + 84);
  v63 = (v95 + 88);
  while (1)
  {
    v64 = *v63;
    if (v45 < *v62)
    {
      v65 = (*v61 + v46);
      if ((v65[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v64)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v45, 0, v99);
    }

    v61 = (v64 + 32);
    v62 = (v64 + 44);
    v63 = (v64 + 48);
    v59 = v64;
  }

  v66 = *v59;
  if (!v66)
  {
    goto LABEL_88;
  }

  v67 = (v66 + 24 * *v65);
  v68 = *v67;
  v69 = (*v67 + 120);
  v70 = *(*v67 + 136);
  v97[0] = *v69;
  v97[1] = v70;
  v98[0] = *(v68 + 152);
  *(v98 + 9) = *(v68 + 161);
  v71 = v68 + 152;
  v72 = (v68 + 164);
  v73 = (v68 + 168);
  while (1)
  {
    v74 = *v73;
    if (*v72 >= 2u && (*(*v71 + 12) & 1) == 0)
    {
      break;
    }

    if (!v74)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 0, v97);
    }

    v71 = v74 + 32;
    v72 = (v74 + 44);
    v73 = (v74 + 48);
    v69 = v74;
  }

  if (!*v69)
  {
    goto LABEL_89;
  }

  v75 = _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCAA7AddressV_Tt1g5Tf4nd_n(v58, v56);
  v77 = v76;
  v79 = v78;
  specialized EvolutionTable.deallocate()();
  v88 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  result = v88;
  if (v77)
  {
    for (i = 0; (i * v79) >> 64 == (i * v79) >> 63; ++i)
    {
      v81 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_79;
      }

      v82 = *(v75 + i * v79);
      v89 = result;
      v84 = *(result + 16);
      v83 = *(result + 24);
      if (v84 >= v83 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
        result = v89;
      }

      *(result + 16) = v84 + 1;
      *(result + 8 * v84 + 32) = v82;
      if (v81 >= v77)
      {
        return result;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  return result;
}

uint64_t Event.threadId(within:)()
{
  if (*(v0 + 88) == -1)
  {
    return 0;
  }

  else
  {
    return *(v0 + 88);
  }
}

uint64_t Event.relatives.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t Event.relatives.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2;
  return result;
}

unint64_t Event.relative(forward:)(unint64_t result)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 124);
  v4 = 1;
  if (result)
  {
    v5 = *(v1 + 112);
    while (v3 + v4 != 1)
    {
      if (!v2)
      {
        __break(1u);
        goto LABEL_15;
      }

      v6 = *v5;
      v5 += 4;
      --v4;
      if ((v6 & 0x4100) == 0x100)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v7 = *(v1 + 112);
    while (v3 + v4 != 1)
    {
      if (!v2)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      v8 = *v7;
      v7 += 4;
      --v4;
      if ((v8 & 0x8100) == 0x100)
      {
LABEL_11:
        v9 = 0;
        v10 = *(v2 - 8 * v4 + 4);
        return v10 | (v9 << 32);
      }
    }
  }

  v10 = 0;
  v9 = 1;
  return v10 | (v9 << 32);
}

uint64_t Event.relate(_:_:swapping:)(uint64_t result, int a2, int a3)
{
  v5 = result;
  if ((a3 & 0x10000) != 0)
  {
    v6 = *(v3 + 124);
  }

  else
  {
    v6 = *(v3 + 124);
    if (v6)
    {
      v7 = *(v3 + 112);
      v8 = (v7 + 4);
      v9 = *(v3 + 124);
      while (v7)
      {
        if (*v8 == a2)
        {
          v13 = *(v8 - 2);
          if (((a3 & 0xC000) == 0 || (v13 & (a3 & 0xC000 ^ 0xC000)) == 0) && ((a3 & 0x2000) == 0 || (v13 & 0x2000) != 0))
          {
            if ((a3 & 0x1FFF) != 0)
            {
              if ((a3 & 0x1FFF & v13) != 0)
              {
LABEL_20:
                *(v8 - 2) = result;
                *v8 = a2;
                return result;
              }
            }

            else if (a3)
            {
              goto LABEL_20;
            }
          }
        }

        v8 += 2;
        if (!--v9)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_22;
    }
  }

LABEL_5:
  if (v6 == *(v3 + 120))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v6);
  }

  v10 = *(v3 + 112);
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = *(v3 + 124);
  v12 = v10 + 8 * v11;
  *v12 = v5;
  *(v12 + 4) = a2;
  if (v11 != -1)
  {
    *(v3 + 124) = v11 + 1;
    return result;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

double Event.init<A, B>(ref:_:_:updateSeed:backtrace:discreet:executionContext:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  v12 = a6;
  v13 = a5;
  v23 = HIDWORD(a6);
  v18 = HIDWORD(a5);
  *(&v25 + 1) = 0;
  *&v26 = 0;
  WORD4(v26) = 257;
  HIDWORD(v26) = 0;
  LODWORD(v27) = 0;
  *(&v27 + 1) = 0;
  LOWORD(v28) = 0;
  *(&v28 + 1) = -1;
  *&v30[8] = xmmword_26C32E070;
  *&v30[24] = 0;
  *&v31 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v31 + 1) = v19;
  LODWORD(v25) = a1;
  HeterogeneousBuffer.insert<A>(_:)(a2, a11);
  HeterogeneousBuffer.insert<A>(_:)(a3, a12);
  (*(*(a12 - 8) + 8))(a3, a12);
  (*(*(a11 - 8) + 8))(a2, a11);
  DWORD1(v27) = a4;
  DWORD1(v29) = v13;
  DWORD2(v29) = v18;
  *v30 = v23;
  LOBYTE(v29) = a7;
  if ((a10 & 1) == 0)
  {
    *&v30[8] = a8;
  }

  BYTE12(v29) = v12 & 1;
  a9[4] = v29;
  a9[5] = *v30;
  a9[6] = *&v30[16];
  a9[7] = v31;
  *a9 = v25;
  a9[1] = v26;
  result = *&v27;
  a9[2] = v27;
  a9[3] = v28;
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(__int16 a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 20);
  v5 = v7 - *v2;
  if (!*v2)
  {
    v5 = 0;
  }

  if (__OFSUB__(v5, v8))
  {
    goto LABEL_35;
  }

  if (v5 - v8 > 23)
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v5 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v9 = 2 * v5;
    if (v9 <= 64)
    {
      v10 = 64;
    }

    else
    {
      v10 = v9;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v10);
    v6 = *v2;
    v7 = *(v2 + 8);
    v11 = *(v2 + 16);
    v8 = *(v2 + 20);
LABEL_13:
    v12 = *(v2 + 24);
    *(v2 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV20GraphRootValueUpdateV_Ttg5Tm(v6, v7, v11, v12);
    if (v8 != result || v12 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v11)
    {
      goto LABEL_36;
    }

    if (v6)
    {
      v15 = v7 - v6;
    }

    else
    {
      v15 = 0;
    }

    if (v15 < v8)
    {
      __break(1u);
    }

    else
    {
      v16 = (v6 + v8);
      if (!v6)
      {
        v16 = 0;
      }

      *v16 = &type metadata for Event.GraphRootValueUpdate;
      if (!v6)
      {
        goto LABEL_37;
      }

      if (v7 - v6 >= v8 + 8)
      {
        v17 = v6 + v8 + 8;
        *v17 = a1;
        *(v17 + 8) = a2;
        if (v8 <= 0xFFFFFFE7)
        {
          if (v12 != -1)
          {
            *(v2 + 20) = v8 + 24;
            *(v2 + 24) = v12 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV20GraphRootValueUpdateVmMd, &_s21SwiftUITracingSupport5EventV20GraphRootValueUpdateVmMR);
  v18 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v18);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v3 = 0;
    goto LABEL_8;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v3 = v5 - *v1;
  if (!*v1)
  {
    v3 = 0;
  }

  if (__OFSUB__(v3, v6))
  {
    goto LABEL_35;
  }

  if (v3 - v6 > 15)
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (v3 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v7 = 2 * v3;
    if (v7 <= 64)
    {
      v8 = 64;
    }

    else
    {
      v8 = v7;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v8);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
LABEL_13:
    v10 = *(v1 + 24);
    *(v1 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v4, v5, v9, v10);
    if (v6 != result || v10 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v9)
    {
      goto LABEL_36;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.Invalidation;
      if (!v4)
      {
        goto LABEL_37;
      }

      if (v5 - v4 >= v6 + 8)
      {
        *(v4 + v6 + 8) = a1;
        if (v6 <= 0xFFFFFFEF)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 16;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV12InvalidationVmMd, &_s21SwiftUITracingSupport5EventV12InvalidationVmMR);
  v15 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v15);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *(v1 + 17) = 0;
  if (*(v1 + 16))
  {
    v3 = 112;
LABEL_13:
    HeterogeneousBuffer.reserveCapacity(bytes:)(v3);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
    *(v1 + 17);
    goto LABEL_15;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v7 = v5 - *v1;
  if (!*v1)
  {
    v7 = 0;
  }

  if (__OFSUB__(v7, v6))
  {
    goto LABEL_37;
  }

  if (v7 - v6 > 55)
  {
    v9 = 0;
LABEL_15:
    v10 = *(v1 + 24);
    v11 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(v4, v5, v9, v10);
    if (v6 != v11 || v10 != HIDWORD(v11))
    {
      goto LABEL_40;
    }

    if (v9)
    {
      goto LABEL_38;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.Transaction;
      if (!v4)
      {
        goto LABEL_39;
      }

      if (v5 - v4 >= v6 + 8)
      {
        result = outlined init with copy of Event.Transaction(a1, v4 + v6 + 8);
        if (v6 <= 0xFFFFFFC7)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 56;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v8 = 2 * v7;
    if (2 * v7 <= 112)
    {
      v8 = 112;
    }

    if (v7 <= 32)
    {
      v3 = 112;
    }

    else
    {
      v3 = v8;
    }

    goto LABEL_13;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV11TransactionVmMd, &_s21SwiftUITracingSupport5EventV11TransactionVmMR);
  v16 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v16);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *(v1 + 17) = 0;
  if (*(v1 + 16))
  {
    v3 = 112;
LABEL_13:
    HeterogeneousBuffer.reserveCapacity(bytes:)(v3);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
    *(v1 + 17);
    goto LABEL_15;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v7 = v5 - *v1;
  if (!*v1)
  {
    v7 = 0;
  }

  if (__OFSUB__(v7, v6))
  {
    goto LABEL_37;
  }

  if (v7 - v6 > 55)
  {
    v9 = 0;
LABEL_15:
    v10 = *(v1 + 24);
    v11 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(v4, v5, v9, v10);
    if (v6 != v11 || v10 != HIDWORD(v11))
    {
      goto LABEL_40;
    }

    if (v9)
    {
      goto LABEL_38;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.Action;
      if (!v4)
      {
        goto LABEL_39;
      }

      if (v5 - v4 >= v6 + 8)
      {
        result = outlined init with copy of Event.Action(a1, v4 + v6 + 8);
        if (v6 <= 0xFFFFFFC7)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 56;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v8 = 2 * v7;
    if (2 * v7 <= 112)
    {
      v8 = 112;
    }

    if (v7 <= 32)
    {
      v3 = 112;
    }

    else
    {
      v3 = v8;
    }

    goto LABEL_13;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV6ActionVmMd, &_s21SwiftUITracingSupport5EventV6ActionVmMR);
  v16 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v16);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (*(v1 + 16))
  {
    v3 = 128;
LABEL_13:
    HeterogeneousBuffer.reserveCapacity(bytes:)(v3);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
    goto LABEL_15;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v7 = v5 - *v1;
  if (!*v1)
  {
    v7 = 0;
  }

  if (__OFSUB__(v7, v6))
  {
    goto LABEL_37;
  }

  if (v7 - v6 > 63)
  {
    v9 = 0;
LABEL_15:
    v10 = *(v1 + 24);
    *(v1 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeValueV_Ttg5(v4, v5, v9, v10);
    if (v6 != result || v10 != HIDWORD(result))
    {
      goto LABEL_40;
    }

    if (v9)
    {
      goto LABEL_38;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.AttributeValue;
      if (!v4)
      {
        goto LABEL_39;
      }

      if (v5 - v4 >= v6 + 8)
      {
        v15 = v4 + v6 + 8;
        v16 = *(a1 + 16);
        *v15 = *a1;
        *(v15 + 16) = v16;
        *(v15 + 32) = *(a1 + 32);
        *(v15 + 45) = *(a1 + 45);
        if (v6 <= 0xFFFFFFBF)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 64;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v8 = 2 * v7;
    if (2 * v7 <= 128)
    {
      v8 = 128;
    }

    if (v7 <= 32)
    {
      v3 = 128;
    }

    else
    {
      v3 = v8;
    }

    goto LABEL_13;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV14AttributeValueVmMd, &_s21SwiftUITracingSupport5EventV14AttributeValueVmMR);
  v17 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v17);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(uint64_t a1, uint64_t a2, char a3)
{
  if (*(v3 + 16))
  {
    v7 = 0;
    goto LABEL_8;
  }

  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 20);
  v7 = v9 - *v3;
  if (!*v3)
  {
    v7 = 0;
  }

  if (__OFSUB__(v7, v10))
  {
    goto LABEL_35;
  }

  if (v7 - v10 > 27)
  {
    v13 = 0;
    goto LABEL_13;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v11 = 2 * v7;
    if (v11 <= 64)
    {
      v12 = 64;
    }

    else
    {
      v12 = v11;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v12);
    v8 = *v3;
    v9 = *(v3 + 8);
    v13 = *(v3 + 16);
    v10 = *(v3 + 20);
LABEL_13:
    v14 = *(v3 + 24);
    *(v3 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV17DynamicPropertiesV_Ttg5(v8, v9, v13, v14);
    if (v10 != result || v14 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v13)
    {
      goto LABEL_36;
    }

    if (v8)
    {
      v17 = v9 - v8;
    }

    else
    {
      v17 = 0;
    }

    if (v17 < v10)
    {
      __break(1u);
    }

    else
    {
      v18 = (v8 + v10);
      if (!v8)
      {
        v18 = 0;
      }

      *v18 = &type metadata for Event.DynamicProperties;
      if (!v8)
      {
        goto LABEL_37;
      }

      if (v9 - v8 >= v10 + 8)
      {
        v19 = v8 + v10 + 8;
        *v19 = a1;
        *(v19 + 8) = a2 & 1;
        *(v19 + 12) = HIDWORD(a2);
        *(v19 + 16) = a3;
        if (v10 <= 0xFFFFFFE3)
        {
          if (v14 != -1)
          {
            *(v3 + 20) = v10 + 28;
            *(v3 + 24) = v14 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV17DynamicPropertiesVmMd, &_s21SwiftUITracingSupport5EventV17DynamicPropertiesVmMR);
  v20 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v20);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 20);
  v5 = v7 - *v2;
  if (!*v2)
  {
    v5 = 0;
  }

  if (__OFSUB__(v5, v8))
  {
    goto LABEL_35;
  }

  if (v5 - v8 > 23)
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v5 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v9 = 2 * v5;
    if (v9 <= 64)
    {
      v10 = 64;
    }

    else
    {
      v10 = v9;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v10);
    v6 = *v2;
    v7 = *(v2 + 8);
    v11 = *(v2 + 16);
    v8 = *(v2 + 20);
LABEL_13:
    v12 = *(v2 + 24);
    *(v2 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v6, v7, v11, v12);
    if (v8 != result || v12 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v11)
    {
      goto LABEL_36;
    }

    if (v6)
    {
      v15 = v7 - v6;
    }

    else
    {
      v15 = 0;
    }

    if (v15 < v8)
    {
      __break(1u);
    }

    else
    {
      v16 = (v6 + v8);
      if (!v6)
      {
        v16 = 0;
      }

      *v16 = &type metadata for Event.Update;
      if (!v6)
      {
        goto LABEL_37;
      }

      if (v7 - v6 >= v8 + 8)
      {
        v17 = (v6 + v8 + 8);
        *v17 = a1;
        v17[1] = a2;
        if (v8 <= 0xFFFFFFE7)
        {
          if (v12 != -1)
          {
            *(v2 + 20) = v8 + 24;
            *(v2 + 24) = v12 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV6UpdateVmMd, &_s21SwiftUITracingSupport5EventV6UpdateVmMR);
  v18 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v18);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  *(v2 + 17) = 0;
  if (*(v2 + 16))
  {
    v5 = 0;
  }

  else
  {
    v6 = *v2;
    v7 = *(v2 + 8);
    v8 = *(v2 + 20);
    v5 = v7 - *v2;
    if (!*v2)
    {
      v5 = 0;
    }

    if (__OFSUB__(v5, v8))
    {
      goto LABEL_37;
    }

    if (v5 - v8 > 23)
    {
      v11 = 0;
      goto LABEL_13;
    }

    if (v5 + 0x4000000000000000 < 0)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      _StringGuts.grow(_:)(19);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV10AllocationVmMd, &_s21SwiftUITracingSupport5EventV10AllocationVmMR);
      v19 = String.init<A>(describing:)();
      MEMORY[0x26D69CDB0](v19);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  v9 = 2 * v5;
  if (v9 <= 64)
  {
    v10 = 64;
  }

  else
  {
    v10 = v9;
  }

  HeterogeneousBuffer.reserveCapacity(bytes:)(v10);
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v2 + 16);
  v8 = *(v2 + 20);
  *(v2 + 17);
LABEL_13:
  v12 = *(v2 + 24);
  v13 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5(v6, v7, v11, v12);
  if (v8 != v13 || v12 != HIDWORD(v13))
  {
    goto LABEL_40;
  }

  if (v11)
  {
    goto LABEL_38;
  }

  if (v6)
  {
    v15 = v7 - v6;
  }

  else
  {
    v15 = 0;
  }

  if (v15 < v8)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = (v6 + v8);
  if (!v6)
  {
    v16 = 0;
  }

  *v16 = &type metadata for Event.Allocation;
  if (!v6)
  {
    goto LABEL_39;
  }

  if (v7 - v6 < v8 + 8)
  {
    goto LABEL_33;
  }

  v17 = (v6 + v8 + 8);
  *v17 = a1;
  v17[1] = a2;
  if (v8 > 0xFFFFFFE7)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 == -1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v2 + 20) = v8 + 24;
  *(v2 + 24) = v12 + 1;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(_OWORD *a1)
{
  if (*(v1 + 16))
  {
    v3 = 112;
LABEL_13:
    HeterogeneousBuffer.reserveCapacity(bytes:)(v3);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
    goto LABEL_15;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v7 = v5 - *v1;
  if (!*v1)
  {
    v7 = 0;
  }

  if (__OFSUB__(v7, v6))
  {
    goto LABEL_37;
  }

  if (v7 - v6 > 55)
  {
    v9 = 0;
LABEL_15:
    v10 = *(v1 + 24);
    *(v1 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9AnimationV_Ttg5Tm(v4, v5, v9, v10);
    if (v6 != result || v10 != HIDWORD(result))
    {
      goto LABEL_40;
    }

    if (v9)
    {
      goto LABEL_38;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.Animation;
      if (!v4)
      {
        goto LABEL_39;
      }

      if (v5 - v4 >= v6 + 8)
      {
        v15 = (v4 + v6 + 8);
        v16 = a1[1];
        *v15 = *a1;
        v15[1] = v16;
        v15[2] = a1[2];
        if (v6 <= 0xFFFFFFC7)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 56;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v8 = 2 * v7;
    if (2 * v7 <= 112)
    {
      v8 = 112;
    }

    if (v7 <= 32)
    {
      v3 = 112;
    }

    else
    {
      v3 = v8;
    }

    goto LABEL_13;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV9AnimationVmMd, &_s21SwiftUITracingSupport5EventV9AnimationVmMR);
  v17 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v17);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(int a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (v5[2])
  {
    v10 = 0;
    goto LABEL_8;
  }

  v11 = *v5;
  v12 = v5[1];
  v13 = *(v5 + 5);
  v10 = v12 - *v5;
  if (!*v5)
  {
    v10 = 0;
  }

  if (__OFSUB__(v10, v13))
  {
    goto LABEL_37;
  }

  if (v10 - v13 > 15)
  {
    v6 = a4;
    v16 = 0;
    goto LABEL_13;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v6 = a4;
    v14 = 2 * v10;
    if (v14 <= 64)
    {
      v15 = 64;
    }

    else
    {
      v15 = v14;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v15);
    v11 = *v5;
    v12 = v5[1];
    v16 = *(v5 + 16);
    v13 = *(v5 + 5);
LABEL_13:
    v17 = *(v5 + 6);
    v18 = 256;
    if (!*(v5 + 17))
    {
      v18 = 0;
    }

    result = a2(v11, v12, v18 | (v13 << 32) | v16, v17);
    if (v13 != result || v17 != HIDWORD(result))
    {
      goto LABEL_40;
    }

    if (v16)
    {
      goto LABEL_38;
    }

    if (v11)
    {
      v21 = v12 - v11;
    }

    else
    {
      v21 = 0;
    }

    if (v21 < v13)
    {
      __break(1u);
    }

    else
    {
      v22 = (v11 + v13);
      if (!v11)
      {
        v22 = 0;
      }

      *v22 = a3;
      if (!v11)
      {
        goto LABEL_39;
      }

      if (v12 - v11 >= v13 + 8)
      {
        *(v11 + v13 + 8) = a1;
        if (v13 <= 0xFFFFFFEF)
        {
          if (v17 != -1)
          {
            *(v5 + 5) = v13 + 16;
            *(v5 + 6) = v17 + 1;
            return result;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(v6, a5);
  v23 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v23);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)()
{
  if (*(v0 + 16))
  {
    v1 = 0;
    goto LABEL_8;
  }

  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 20);
  v1 = v3 - *v0;
  if (!*v0)
  {
    v1 = 0;
  }

  if (__OFSUB__(v1, v4))
  {
    goto LABEL_35;
  }

  if (v1 - v4 > 15)
  {
    v7 = 0;
    goto LABEL_13;
  }

  if (v1 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v5 = 2 * v1;
    if (v5 <= 64)
    {
      v6 = 64;
    }

    else
    {
      v6 = v5;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v6);
    v2 = *v0;
    v3 = *(v0 + 8);
    v7 = *(v0 + 16);
    v4 = *(v0 + 20);
LABEL_13:
    v8 = *(v0 + 24);
    *(v0 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9IgnorableV_Ttg5Tm(v2, v3, v7, v8);
    if (v4 != result || v8 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v7)
    {
      goto LABEL_36;
    }

    if (v2)
    {
      v11 = v3 - v2;
    }

    else
    {
      v11 = 0;
    }

    if (v11 < v4)
    {
      __break(1u);
    }

    else
    {
      v12 = (v2 + v4);
      if (!v2)
      {
        v12 = 0;
      }

      *v12 = &type metadata for Event.Ignorable;
      if (!v2)
      {
        goto LABEL_37;
      }

      if (v3 - v2 >= v4 + 8)
      {
        if (v4 <= 0xFFFFFFEF)
        {
          if (v8 != -1)
          {
            *(v0 + 20) = v4 + 16;
            *(v0 + 24) = v8 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV9IgnorableVmMd, &_s21SwiftUITracingSupport5EventV9IgnorableVmMR);
  v13 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v13);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (*(v0 + 16))
  {
    v1 = 0;
    goto LABEL_8;
  }

  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 20);
  v1 = v3 - *v0;
  if (!*v0)
  {
    v1 = 0;
  }

  if (__OFSUB__(v1, v4))
  {
    goto LABEL_35;
  }

  if (v1 - v4 > 15)
  {
    v7 = 0;
    goto LABEL_13;
  }

  if (v1 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v5 = 2 * v1;
    if (v5 <= 64)
    {
      v6 = 64;
    }

    else
    {
      v6 = v5;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v6);
    v2 = *v0;
    v3 = *(v0 + 8);
    v7 = *(v0 + 16);
    v4 = *(v0 + 20);
LABEL_13:
    v8 = *(v0 + 24);
    *(v0 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA07TestingC0O19TestEventWBacktraceV_Ttg5(v2, v3, v7, v8);
    if (v4 != result || v8 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v7)
    {
      goto LABEL_36;
    }

    if (v2)
    {
      v11 = v3 - v2;
    }

    else
    {
      v11 = 0;
    }

    if (v11 < v4)
    {
      __break(1u);
    }

    else
    {
      v12 = (v2 + v4);
      if (!v2)
      {
        v12 = 0;
      }

      *v12 = &type metadata for TestingSupport.TestEventWBacktrace;
      if (!v2)
      {
        goto LABEL_37;
      }

      if (v3 - v2 >= v4 + 8)
      {
        if (v4 <= 0xFFFFFFEF)
        {
          if (v8 != -1)
          {
            *(v0 + 20) = v4 + 16;
            *(v0 + 24) = v8 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport07TestingC0O19TestEventWBacktraceVmMd, &_s21SwiftUITracingSupport07TestingC0O19TestEventWBacktraceVmMR);
  v13 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v13);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(char a1, double a2)
{
  if (*(v2 + 16))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 20);
  v5 = v7 - *v2;
  if (!*v2)
  {
    v5 = 0;
  }

  if (__OFSUB__(v5, v8))
  {
    goto LABEL_35;
  }

  if (v5 - v8 > 23)
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v5 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v9 = 2 * v5;
    if (v9 <= 64)
    {
      v10 = 64;
    }

    else
    {
      v10 = v9;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v10);
    v6 = *v2;
    v7 = *(v2 + 8);
    v11 = *(v2 + 16);
    v8 = *(v2 + 20);
LABEL_13:
    v12 = *(v2 + 24);
    *(v2 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10RenderTickV_Ttg5Tm(v6, v7, v11, v12);
    if (v8 != result || v12 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v11)
    {
      goto LABEL_36;
    }

    if (v6)
    {
      v15 = v7 - v6;
    }

    else
    {
      v15 = 0;
    }

    if (v15 < v8)
    {
      __break(1u);
    }

    else
    {
      v16 = (v6 + v8);
      if (!v6)
      {
        v16 = 0;
      }

      *v16 = &type metadata for Event.RenderTick;
      if (!v6)
      {
        goto LABEL_37;
      }

      if (v7 - v6 >= v8 + 8)
      {
        v17 = v6 + v8 + 8;
        *v17 = a1 & 1;
        *(v17 + 8) = a2;
        if (v8 <= 0xFFFFFFE7)
        {
          if (v12 != -1)
          {
            *(v2 + 20) = v8 + 24;
            *(v2 + 24) = v12 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV10RenderTickVmMd, &_s21SwiftUITracingSupport5EventV10RenderTickVmMR);
  v18 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v18);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}