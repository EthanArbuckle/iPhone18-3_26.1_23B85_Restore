uint64_t sub_1BD089E68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C498);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD089ED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD089F40()
{
  v1 = type metadata accessor for BankAccountSheet();
  v2 = *(*(v1 - 8) + 80);

  v3 = v0 + ((v2 + 24) & ~v2);

  v4 = *(v3 + 80);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_5;
    }
  }

LABEL_5:
  v5 = (v3 + *(v1 + 44));
  v6 = type metadata accessor for PeerPaymentModel();
  if (!(*(*(v6 - 1) + 48))(v5, 1, v6))
  {

    v7 = (v5 + v6[5]);
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v9 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v10 = sub_1BE04CF34();
      (*(*(v10 - 8) + 8))(v7 + v9, v10);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v11 = type metadata accessor for AvailablePass(0);
    v12 = v7 + v11[6];
    v13 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 20);
      v15 = sub_1BE04DA84();
      (*(*(v15 - 8) + 8))(&v12[v14], v15);
    }

    v16 = (v7 + v11[7]);
    v17 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {

      v18 = *(v17 + 28);
      v19 = sub_1BE04AF64();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v16 + v18, 1, v19))
      {
        (*(v20 + 8))(v16 + v18, v19);
      }
    }

    v21 = v7 + v11[10];
    v22 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
    {
      if (*(v21 + 2) != 1)
      {
      }

      v32 = v5;
      if (*(v21 + 9) != 1)
      {
      }

      v23 = *(v22 + 28);
      v24 = sub_1BE04AF64();
      v31 = *(v24 - 8);
      v25 = *(v31 + 48);
      if (!v25(&v21[v23], 1, v24))
      {
        (*(v31 + 8))(&v21[v23], v24);
      }

      v26 = *(v22 + 32);
      v5 = v32;
      if (!v25(&v21[v26], 1, v24))
      {
        (*(v31 + 8))(&v21[v26], v24);
      }
    }

    v27 = (v7 + v11[12]);
    if (*v27)
    {
    }

    v28 = (v7 + v11[13]);
    if (*v28)
    {
    }

    v29 = (v5 + v6[6]);
    if (*v29 != 1)
    {

      if (v29[3])
      {
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08A554()
{
  v1 = v0;
  v2 = type metadata accessor for BankAccountSheet();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64) + v4 + 7;
  v6 = v0 + v4;

  v7 = *(v6 + 80);
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_5;
    }
  }

LABEL_5:
  v8 = v5 & 0xFFFFFFFFFFFFFFF8;
  v9 = (v6 + *(v2 + 44));
  v10 = type metadata accessor for PeerPaymentModel();
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {

    v11 = (v9 + v10[5]);
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v40 = v8;
    if (EnumCaseMultiPayload == 2)
    {

      v13 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v14 = sub_1BE04CF34();
      (*(*(v14 - 8) + 8))(v11 + v13, v14);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v15 = type metadata accessor for AvailablePass(0);
    v16 = v11 + v15[6];
    v17 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {

      v18 = *(v17 + 20);
      v19 = sub_1BE04DA84();
      (*(*(v19 - 8) + 8))(&v16[v18], v19);
    }

    v20 = (v11 + v15[7]);
    v21 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {

      v22 = *(v21 + 28);
      v23 = sub_1BE04AF64();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(v20 + v22, 1, v23))
      {
        (*(v24 + 8))(v20 + v22, v23);
      }
    }

    v25 = v11 + v15[10];
    v26 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      if (*(v25 + 2) != 1)
      {
      }

      v38 = v9;
      v39 = v1;
      if (*(v25 + 9) != 1)
      {
      }

      v27 = *(v26 + 28);
      v28 = sub_1BE04AF64();
      v37 = *(v28 - 8);
      v29 = *(v37 + 48);
      if (!v29(&v25[v27], 1, v28))
      {
        (*(v37 + 8))(&v25[v27], v28);
      }

      v30 = *(v26 + 32);
      v31 = v29(&v25[v30], 1, v28);
      v9 = v38;
      v1 = v39;
      if (!v31)
      {
        (*(v37 + 8))(&v25[v30], v28);
      }
    }

    v32 = (v11 + v15[12]);
    if (*v32)
    {
    }

    v33 = (v11 + v15[13]);
    if (*v33)
    {
    }

    v34 = (v9 + v10[6]);
    v8 = v40;
    if (*v34 != 1)
    {

      if (v34[3])
      {
      }
    }
  }

  v35 = *(v1 + v8);
  if (v35)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08AB80()
{
  v1 = v0;
  v2 = type metadata accessor for BankAccountSheet();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;

  v7 = *(v6 + 80);
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_5;
    }
  }

LABEL_5:
  v8 = (v6 + *(v2 + 44));
  v9 = type metadata accessor for PeerPaymentModel();
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {

    v10 = (v8 + v9[5]);
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v40 = v4;
    v39 = v5;
    if (EnumCaseMultiPayload == 2)
    {

      v12 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v13 = sub_1BE04CF34();
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v14 = type metadata accessor for AvailablePass(0);
    v15 = v10 + v14[6];
    v16 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {

      v17 = *(v16 + 20);
      v18 = sub_1BE04DA84();
      (*(*(v18 - 8) + 8))(&v15[v17], v18);
    }

    v19 = (v10 + v14[7]);
    v20 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {

      v21 = *(v20 + 28);
      v22 = sub_1BE04AF64();
      v23 = *(v22 - 8);
      if (!(*(v23 + 48))(v19 + v21, 1, v22))
      {
        (*(v23 + 8))(v19 + v21, v22);
      }
    }

    v24 = v10 + v14[10];
    v25 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
    {
      if (*(v24 + 2) != 1)
      {
      }

      v37 = v8;
      v38 = v1;
      if (*(v24 + 9) != 1)
      {
      }

      v26 = *(v25 + 28);
      v27 = sub_1BE04AF64();
      v36 = *(v27 - 8);
      v28 = *(v36 + 48);
      if (!v28(&v24[v26], 1, v27))
      {
        (*(v36 + 8))(&v24[v26], v27);
      }

      v29 = *(v25 + 32);
      v30 = v28(&v24[v29], 1, v27);
      v8 = v37;
      v1 = v38;
      if (!v30)
      {
        (*(v36 + 8))(&v24[v29], v27);
      }
    }

    v31 = (v10 + v14[12]);
    if (*v31)
    {
    }

    v32 = (v10 + v14[13]);
    v5 = v39;
    if (*v32)
    {
    }

    v33 = (v8 + v9[6]);
    v4 = v40;
    if (*v33 != 1)
    {

      if (v33[3])
      {
      }
    }
  }

  v34 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

uint64_t sub_1BD08B1A0()
{
  v1 = type metadata accessor for BankAccountSheet();
  v2 = *(*(v1 - 8) + 80);

  v3 = v0 + ((v2 + 24) & ~v2);

  v4 = *(v3 + 80);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_5;
    }
  }

LABEL_5:
  v5 = (v3 + *(v1 + 44));
  v6 = type metadata accessor for PeerPaymentModel();
  if (!(*(*(v6 - 1) + 48))(v5, 1, v6))
  {

    v7 = (v5 + v6[5]);
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v32 = v5;
    if (EnumCaseMultiPayload == 2)
    {

      v9 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v10 = sub_1BE04CF34();
      (*(*(v10 - 8) + 8))(v7 + v9, v10);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v11 = type metadata accessor for AvailablePass(0);
    v12 = v7 + v11[6];
    v13 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 20);
      v15 = sub_1BE04DA84();
      (*(*(v15 - 8) + 8))(&v12[v14], v15);
    }

    v16 = (v7 + v11[7]);
    v17 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {

      v18 = *(v17 + 28);
      v19 = sub_1BE04AF64();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v16 + v18, 1, v19))
      {
        (*(v20 + 8))(v16 + v18, v19);
      }
    }

    v21 = v7 + v11[10];
    v22 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
    {
      if (*(v21 + 2) != 1)
      {
      }

      if (*(v21 + 9) != 1)
      {
      }

      v23 = *(v22 + 28);
      v24 = sub_1BE04AF64();
      v31 = *(v24 - 8);
      v25 = *(v31 + 48);
      if (!v25(&v21[v23], 1, v24))
      {
        (*(v31 + 8))(&v21[v23], v24);
      }

      v26 = *(v22 + 32);
      if (!v25(&v21[v26], 1, v24))
      {
        (*(v31 + 8))(&v21[v26], v24);
      }
    }

    v27 = (v7 + v11[12]);
    if (*v27)
    {
    }

    v28 = (v7 + v11[13]);
    if (*v28)
    {
    }

    v29 = (v32 + v6[6]);
    if (*v29 != 1)
    {

      if (v29[3])
      {
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08B7D4()
{

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08B830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD08B898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD08B928()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C6C0);
  sub_1BD0DE4F4(&qword_1EBD4C6C8, &qword_1EBD4C6C0);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for PushNavigationStack();
  return swift_getWitnessTable();
}

uint64_t sub_1BD08BAD4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD08BB0C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD08BD84()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08BE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Passes(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BD08BEFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Passes(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD08BFBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD08C02C()
{
  v1 = type metadata accessor for IdentityPassMethodSheet();
  v2 = *(*(v1 - 8) + 80);

  v3 = v0 + ((v2 + 24) & ~v2);
  v4 = (v3 + *(v1 + 20));
  v5 = type metadata accessor for AvailablePass(0);
  if (!(*(*(v5 - 1) + 48))(v4, 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v8 = sub_1BE04CF34();
      (*(*(v8 - 8) + 8))(v4 + v7, v8);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v9 = v4 + v5[6];
    v10 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 20);
      v12 = sub_1BE04DA84();
      (*(*(v12 - 8) + 8))(&v9[v11], v12);
    }

    v13 = (v4 + v5[7]);
    v14 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 28);
      v16 = sub_1BE04AF64();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }
    }

    v18 = v4 + v5[10];
    v19 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      if (*(v18 + 2) != 1)
      {
      }

      if (*(v18 + 9) != 1)
      {
      }

      v20 = *(v19 + 28);
      v21 = sub_1BE04AF64();
      v30 = *(v21 - 8);
      v29 = v20;
      v22 = &v18[v20];
      v23 = *(v30 + 48);
      if (!v23(v22, 1, v21))
      {
        (*(v30 + 8))(&v18[v29], v21);
      }

      v24 = *(v19 + 32);
      if (!v23(&v18[v24], 1, v21))
      {
        (*(v30 + 8))(&v18[v24], v21);
      }
    }

    v25 = (v4 + v5[12]);
    if (*v25)
    {
    }

    v26 = (v4 + v5[13]);
    if (*v26)
    {
    }
  }

  v27 = v3 + *(v1 + 48);
  if (*(v27 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08C620()
{
  v1 = v0;
  v2 = type metadata accessor for IdentityPassMethodSheet();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(*(v2 - 8) + 64);
  v6 = type metadata accessor for AvailablePass(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v60 = *(v7 + 64);
  v10 = v1 + v4;
  v11 = (v1 + v4 + *(v2 + 20));
  v61 = v8;
  if (!(*(v7 + 48))(v11, 1, v6))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v58 = v9;
    if (EnumCaseMultiPayload == 2)
    {

      v13 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v14 = sub_1BE04CF34();
      (*(*(v14 - 8) + 8))(v11 + v13, v14);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v15 = v11 + v6[6];
    v16 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {

      v17 = *(v16 + 20);
      v18 = sub_1BE04DA84();
      (*(*(v18 - 8) + 8))(&v15[v17], v18);
    }

    v19 = (v11 + v6[7]);
    v20 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {

      v21 = *(v20 + 28);
      v22 = sub_1BE04AF64();
      v23 = *(v22 - 8);
      if (!(*(v23 + 48))(v19 + v21, 1, v22))
      {
        (*(v23 + 8))(v19 + v21, v22);
      }
    }

    v24 = v11 + v6[10];
    v25 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
    {
      if (*(v24 + 2) != 1)
      {
      }

      if (*(v24 + 9) != 1)
      {
      }

      v26 = *(v25 + 28);
      v27 = sub_1BE04AF64();
      v57 = *(v27 - 8);
      v28 = *(v57 + 48);
      if (!v28(&v24[v26], 1, v27))
      {
        (*(v57 + 8))(&v24[v26], v27);
      }

      v29 = *(v25 + 32);
      v8 = v61;
      if (!v28(&v24[v29], 1, v27))
      {
        (*(v57 + 8))(&v24[v29], v27);
      }
    }

    v30 = (v11 + v6[12]);
    if (*v30)
    {
    }

    v31 = (v11 + v6[13]);
    v9 = v58;
    if (*v31)
    {
    }
  }

  v32 = v10 + *(v2 + 48);
  if (*(v32 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  v33 = (v1 + (v9 & ~v8));
  type metadata accessor for WrappedPass(0);
  v34 = swift_getEnumCaseMultiPayload();
  v59 = v9 & ~v8;
  if (v34 == 2)
  {

    v35 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v36 = sub_1BE04CF34();
    (*(*(v36 - 8) + 8))(v33 + v35, v36);
  }

  else if (v34 <= 1)
  {
  }

  v37 = v33 + v6[6];
  v38 = type metadata accessor for IdentityCredential(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {

    v39 = *(v38 + 20);
    v40 = sub_1BE04DA84();
    (*(*(v40 - 8) + 8))(&v37[v39], v40);
  }

  v41 = (v33 + v6[7]);
  v42 = type metadata accessor for BalanceInfo(0);
  if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
  {

    v43 = *(v42 + 28);
    v44 = sub_1BE04AF64();
    v45 = *(v44 - 8);
    if (!(*(v45 + 48))(v41 + v43, 1, v44))
    {
      (*(v45 + 8))(v41 + v43, v44);
    }
  }

  v46 = v33 + v6[10];
  v47 = type metadata accessor for PassEligibleRewardsInfo();
  if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
  {
    if (*(v46 + 2) != 1)
    {
    }

    v48 = v1;
    if (*(v46 + 9) != 1)
    {
    }

    v49 = *(v47 + 28);
    v50 = sub_1BE04AF64();
    v51 = *(v50 - 8);
    v52 = *(v51 + 48);
    if (!v52(&v46[v49], 1, v50))
    {
      (*(v51 + 8))(&v46[v49], v50);
    }

    v53 = *(v47 + 32);
    v1 = v48;
    if (!v52(&v46[v53], 1, v50))
    {
      (*(v51 + 8))(&v46[v53], v50);
    }
  }

  v54 = (v33 + v6[12]);
  if (*v54)
  {
  }

  v55 = (v33 + v6[13]);
  if (*v55)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08D120()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08D168()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08D1A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD08D1E0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08D234()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD08D29C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD08D318()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08D370()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08D438()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD371F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CB40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CB48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CB50);
  sub_1BD5F55F0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD08D58C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for PaymentPassDetailsButton() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  if (*(v0 + v3 + v2[11]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08D688()
{
  sub_1BE051754();

  return swift_getWitnessTable();
}

uint64_t sub_1BD08D6DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CD70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CD78);
  sub_1BD2D5A00();
  sub_1BD5F98B8();
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD08D800()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08D8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD08D95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD08D9CC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD08DA04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08DB00()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08DB38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08DC08()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08DD14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for PaymentOfferSetupAuthenticationResult(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  if (swift_getEnumCaseMultiPayload() <= 1)
  {

    v8 = *(type metadata accessor for PaymentOfferSetupProvisioningMetadata() + 24);
    v9 = sub_1BE04AA64();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v7 + v8, 1, v9))
    {
      (*(v10 + 8))(v7 + v8, v9);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08DF04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD08DF4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD08DF9C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08DFD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08E0CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08E1C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08E2BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD08E304()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD08E344()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD08E37C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08E448(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1BE0493F4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_1BE04A974();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[11];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[12];

  return v19(v20, a2, v18);
}

uint64_t sub_1BD08E668(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1BE04AF64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1BE0493F4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1BE04A974();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[12];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1BD08E888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFA8);
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

uint64_t sub_1BD08E95C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFA8);
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

uint64_t sub_1BD08EA2C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD08EA64()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08EABC()
{
  sub_1BE04EBD4();
  sub_1BD275CC0();
  return swift_getWitnessTable();
}

uint64_t sub_1BD08EB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
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

uint64_t sub_1BD08EBF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
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

uint64_t sub_1BD08ECD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD08ED3C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08ED74()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD08EDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD08EE70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD08EF4C()
{

  sub_1BD0D4604(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1BD08EFF0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08F028()
{
  v1 = (type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[12];
  v4 = sub_1BE051AD4();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);

  return swift_deallocObject();
}

uint64_t sub_1BD08F178()
{
  v1 = (type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1BE049364();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  v7 = v0 + v2 + v1[12];
  v8 = sub_1BE051AD4();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD08F3AC()
{
  v1 = sub_1BE049364();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08F484()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD08F56C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE049A94();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1BE049184();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1BD08F674(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BE049A94();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_1BE049184();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1BD08F778()
{
  v1 = (type metadata accessor for FinanceKitInternalTransactionCell(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  v4 = sub_1BE049A94();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  v5 = v1[8];
  v6 = sub_1BE049184();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1BD08F8D0()
{
  v1 = (type metadata accessor for FinanceKitInternalTransactionCell(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_1BE049A94();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[8];
  v6 = sub_1BE049184();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1BD08FD3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37228);
  sub_1BD62ABF0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD08FDA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD08FE0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD08FE8C()
{
  v1 = sub_1BE049184();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08FF54()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37210);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D878);
  sub_1BD62B094();
  sub_1BD0F9764();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD090084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D980);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD090158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 48);
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
    v9 = sub_1BE04C744();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1BD090210(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 48) = a2;
  }

  else
  {
    v7 = sub_1BE04C744();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0902B4()
{
  v1 = (type metadata accessor for PaymentOfferInstallmentSummaryView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1BD630FA8(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));

  v3 = v1[10];
  v4 = sub_1BE04C744();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD090414()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD090454()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

id sub_1BD09048C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1BD0904F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1BD090550(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 sub_1BD0905A4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1BD0905FC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1BD0906D4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD090724()
{

  return swift_deallocObject();
}

uint64_t sub_1BD090794()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD090848(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD090904(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD090A04()
{

  return swift_deallocObject();
}

uint64_t sub_1BD090A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD090AE8()
{

  sub_1BD35D02C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  v1 = *(v0 + 264);
  if (v1 != 255)
  {
    sub_1BD643290(*(v0 + 240), *(v0 + 248), *(v0 + 256), v1 & 1);
  }

  if (*(v0 + 312))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD090BE8()
{

  sub_1BD35D02C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  v1 = *(v0 + 264);
  if (v1 != 255)
  {
    sub_1BD643290(*(v0 + 240), *(v0 + 248), *(v0 + 256), v1 & 1);
  }

  if (*(v0 + 312))
  {
  }

  if (*(v0 + 352) >= 5uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD090D20()
{
  type metadata accessor for SecondarySheet();
  swift_getWitnessTable();
  sub_1BE04FC14();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD090E28()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD090E60()
{

  return swift_deallocObject();
}

uint64_t sub_1BD090EF0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091028()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD091060()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0910A0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0910EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0911A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD091358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD09146C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0914A8()
{
  sub_1BE04EBD4();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E340);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();

  return swift_getWitnessTable();
}

uint64_t sub_1BD091628()
{
  if (*(v0 + 40))
  {
  }

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD091688()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0916C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD091784(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD091838()
{
  v1 = type metadata accessor for TaxFormCell();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + *(v1 + 20);
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);

  return swift_deallocObject();
}

uint64_t sub_1BD091A00()
{
  v1 = type metadata accessor for TaxFormCell();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2 + *(v1 + 20);
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);

  return swift_deallocObject();
}

uint64_t sub_1BD091C20()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091C60()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091C98()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD091CD0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091D1C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091D58()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091D98()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091DD0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091E18()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD091E54()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD091E90()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091EC8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091F08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD091FC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0920F0(uint64_t a1, uint64_t a2)
{
  v4 = _s15PaymentDateInfoVMa();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD09215C(uint64_t a1, uint64_t a2)
{
  v4 = _s15PaymentDateInfoVMa();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD092220(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0922DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0923B8()
{
  v1 = (type metadata accessor for TransactionPickerView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E354();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD092570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD09260C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0926A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0926E8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD09276C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EAD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37240);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EAD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EAE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EAE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EAF0);
  sub_1BD672F14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB40);
  sub_1BE04F554();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB50);
  sub_1BD0DDEBC();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD4EB58, &qword_1EBD4EB50);
  swift_getOpaqueTypeConformance2();
  sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8]);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB68);
  sub_1BE04F844();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB78);
  sub_1BD0DE4F4(&qword_1EBD4EB80, &qword_1EBD4EB78);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1BD672EB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD092BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnifiedMerchantTokenData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BD092CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnifiedMerchantTokenData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BD092E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD092E78(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BD092EFC()
{
  v1 = *(type metadata accessor for MerchantTokenPresentationModel(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for MerchantTokenDetailView(0);
  v36 = *(*(v4 - 1) + 80);
  v5 = v0 + v2;

  v6 = type metadata accessor for UnifiedMerchantTokenData(0);
  v7 = v0 + v2 + v6[10];
  v8 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v33 = *(*(v8 - 8) + 48);
  v34 = v8;
  if (!v33(v7, 1))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v7, *(v7 + 8));
        break;
      case 0:
        v28 = sub_1BE04AA64();
        (*(*(v28 - 8) + 8))(v7, v28);
        break;
    }
  }

  v9 = v6[11];
  v10 = sub_1BE04AA64();
  v35 = *(v10 - 8);
  v11 = *(v35 + 48);
  if (!v11(v5 + v9, 1, v10))
  {
    (*(v35 + 8))(v5 + v9, v10);
  }

  v12 = v3 + v36;
  v13 = v6[12];
  v14 = sub_1BE04AF64();
  v31 = *(v14 - 8);
  v32 = *(v31 + 48);
  if (!v32(v5 + v13, 1, v14))
  {
    (*(v31 + 8))(v5 + v13, v14);
  }

  v15 = v2 + v12;

  v16 = v6[14];
  if (!v11(v5 + v16, 1, v10))
  {
    (*(v35 + 8))(v5 + v16, v10);
  }

  v17 = v15 & ~v36;

  v18 = v6[18];
  if (!v11(v5 + v18, 1, v10))
  {
    (*(v35 + 8))(v5 + v18, v10);
  }

  v19 = v0 + v17;

  v20 = v19 + v6[10];
  if (!(v33)(v20, 1, v34))
  {
    v29 = swift_getEnumCaseMultiPayload();
    switch(v29)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v20, *(v20 + 8));
        break;
      case 0:
        (*(v35 + 8))(v20, v10);
        break;
    }
  }

  v21 = v6[11];
  if (!v11(v19 + v21, 1, v10))
  {
    (*(v35 + 8))(v19 + v21, v10);
  }

  v22 = v6[12];
  if (!v32(v19 + v22, 1, v14))
  {
    (*(v31 + 8))(v19 + v22, v14);
  }

  v23 = v6[14];
  if (!v11(v19 + v23, 1, v10))
  {
    (*(v35 + 8))(v19 + v23, v10);
  }

  v24 = v6[18];
  if (!v11(v19 + v24, 1, v10))
  {
    (*(v35 + 8))(v19 + v24, v10);
  }

  v25 = v19 + v4[10];
  if (!(v33)(v25, 3, v34))
  {
    v30 = swift_getEnumCaseMultiPayload();
    switch(v30)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v25, *(v25 + 8));
        break;
      case 0:
        (*(v35 + 8))(v25, v10);
        break;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30);

  return swift_deallocObject();
}

uint64_t sub_1BD093664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0936D8()
{
  v1 = type metadata accessor for MerchantTokenDetailView(0);
  v22 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v2 = v0 + ((v22 + 32) & ~v22);

  v3 = type metadata accessor for UnifiedMerchantTokenData(0);
  v4 = v2 + v3[10];
  v5 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v21 = *(*(v5 - 8) + 48);
  if (!v21(v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v4, *(v4 + 8));
        break;
      case 0:
        v18 = sub_1BE04AA64();
        (*(*(v18 - 8) + 8))(v4, v18);
        break;
    }
  }

  v20 = v5;
  v6 = v3[11];
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = v3[12];
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  v13 = v3[14];
  if (!v9(v2 + v13, 1, v7))
  {
    (*(v8 + 8))(v2 + v13, v7);
  }

  v14 = v3[18];
  if (!v9(v2 + v14, 1, v7))
  {
    (*(v8 + 8))(v2 + v14, v7);
  }

  v15 = v2 + v1[10];
  if (!v21(v15, 3, v20))
  {
    v19 = swift_getEnumCaseMultiPayload();
    switch(v19)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v15, *(v15 + 8));
        break;
      case 0:
        (*(v8 + 8))(v15, v7);
        break;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30);

  return swift_deallocObject();
}

uint64_t sub_1BD093BD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFD0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD093C8C()
{
  v1 = type metadata accessor for MerchantTokenDetailView(0);
  v24 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v23 = *(*(type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL(0) - 8) + 80);
  v22 = (v24 + 16) & ~v24;
  v25 = v0;
  v2 = v0 + v22;

  v3 = type metadata accessor for UnifiedMerchantTokenData(0);
  v4 = v0 + v22 + v3[10];
  v5 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v20 = *(*(v5 - 8) + 48);
  if (!v20(v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v4, *(v4 + 8));
        break;
      case 0:
        v18 = sub_1BE04AA64();
        (*(*(v18 - 8) + 8))(v4, v18);
        break;
    }
  }

  v6 = v3[11];
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = v3[12];
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  v13 = v3[14];
  if (!v9(v2 + v13, 1, v7))
  {
    (*(v8 + 8))(v2 + v13, v7);
  }

  v14 = v3[18];
  if (!v9(v2 + v14, 1, v7))
  {
    (*(v8 + 8))(v2 + v14, v7);
  }

  v15 = v2 + v1[10];
  if (!v20(v15, 3, v5))
  {
    v19 = swift_getEnumCaseMultiPayload();
    switch(v19)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v15, *(v15 + 8));
        break;
      case 0:
        (*(v8 + 8))(v15, v7);
        break;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30);

  (*(v8 + 8))(v25 + ((v22 + v21 + v23) & ~v23), v7);

  return swift_deallocObject();
}

uint64_t sub_1BD09422C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0942E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD094398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD094404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD09447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PassRow.Pass(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BD094534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PassRow.Pass(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1BD094604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0946F4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD09472C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD09476C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0947A4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0947E4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD09486C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1BD09499C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BD094B5C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD094B94()
{

  return swift_deallocObject();
}

uint64_t sub_1BD094BE4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD094C24()
{

  return swift_deallocObject();
}

uint64_t sub_1BD094C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04DA84();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD094D28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04DA84();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD094E74()
{

  return swift_deallocObject();
}

uint64_t sub_1BD094EBC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD094F4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD094F94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F818);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();

  return swift_getWitnessTable();
}

uint64_t sub_1BD095044(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42948);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD095100(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42948);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0951B8()
{
  v1 = type metadata accessor for NonMeCardAddressSection();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  sub_1BD35D02C(*(v3 + 24), *(v3 + 32), *(v3 + 40));

  v4 = v0 + v2 + *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {

      v6 = *(v5 + 32);
      v7 = sub_1BE051AD4();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0953B4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD095424()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0954CC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD095514()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD095568()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0955DC()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v289 = *(*(v1 - 1) + 80);
  v286 = *(*(v1 - 1) + 64);
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0) - 8) + 80);
  v287 = (v289 + 16) & ~v289;
  v290 = v0;
  v3 = v0 + v287;
  v4 = (v0 + v287 + v1[6]);
  v5 = type metadata accessor for AvailablePass(0);
  v293 = *(*(v5 - 1) + 48);
  v291 = v2;
  v292 = v5;
  if (!v293(v4, 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v8 = sub_1BE04CF34();
      (*(*(v8 - 8) + 8))(v4 + v7, v8);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v9 = v4 + v5[6];
    v10 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 20);
      v12 = sub_1BE04DA84();
      (*(*(v12 - 8) + 8))(&v9[v11], v12);
    }

    v13 = (v4 + v5[7]);
    v14 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 28);
      v16 = sub_1BE04AF64();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }
    }

    v18 = v4 + v5[10];
    v19 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      if (*(v18 + 2) != 1)
      {
      }

      if (*(v18 + 9) != 1)
      {
      }

      v20 = *(v19 + 28);
      v21 = sub_1BE04AF64();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      if (!v23(&v18[v20], 1, v21))
      {
        (*(v22 + 8))(&v18[v20], v21);
      }

      v24 = *(v19 + 32);
      v25 = v23(&v18[v24], 1, v21);
      v2 = v291;
      v5 = v292;
      if (!v25)
      {
        (*(v22 + 8))(&v18[v24], v21);
      }
    }

    v26 = (v4 + v5[12]);
    if (*v26)
    {
    }

    v27 = (v4 + v5[13]);
    if (*v27)
    {
    }
  }

  v28 = type metadata accessor for Passes(0);

  v29 = v3 + v1[7];
  if (*(v29 + 48))
  {
    sub_1BD0D455C(*v29, *(v29 + 8), *(v29 + 16));
  }

  v30 = (v3 + v1[8]);
  v31 = type metadata accessor for PeerPaymentModel();
  v32 = *(*(v31 - 1) + 48);
  if (!v32(v30, 1, v31))
  {

    v33 = (v30 + v31[5]);
    type metadata accessor for WrappedPass(0);
    v34 = swift_getEnumCaseMultiPayload();
    v283 = v28;
    v279 = v32;
    if (v34 == 2)
    {

      v35 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v36 = sub_1BE04CF34();
      (*(*(v36 - 8) + 8))(v33 + v35, v36);
    }

    else if (v34 <= 1)
    {
    }

    v37 = v33 + v5[6];
    v38 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      v39 = *(v38 + 20);
      v40 = sub_1BE04DA84();
      (*(*(v40 - 8) + 8))(&v37[v39], v40);
    }

    v41 = (v33 + v5[7]);
    v42 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
    {

      v43 = *(v42 + 28);
      v44 = sub_1BE04AF64();
      v45 = *(v44 - 8);
      if (!(*(v45 + 48))(v41 + v43, 1, v44))
      {
        (*(v45 + 8))(v41 + v43, v44);
      }
    }

    v46 = v33 + v5[10];
    v47 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
    {
      if (*(v46 + 2) != 1)
      {
      }

      v274 = v31;
      if (*(v46 + 9) != 1)
      {
      }

      v48 = *(v47 + 28);
      v49 = sub_1BE04AF64();
      v281 = *(v49 - 8);
      v50 = *(v281 + 48);
      if (!v50(&v46[v48], 1, v49))
      {
        (*(v281 + 8))(&v46[v48], v49);
      }

      v51 = *(v47 + 32);
      v31 = v274;
      if (!v50(&v46[v51], 1, v49))
      {
        (*(v281 + 8))(&v46[v51], v49);
      }
    }

    v5 = v292;
    v52 = (v33 + v292[12]);
    if (*v52)
    {
    }

    v53 = (v33 + v292[13]);
    v2 = v291;
    if (*v53)
    {
    }

    v54 = (v30 + v31[6]);
    v28 = v283;
    if (*v54 != 1)
    {

      if (v54[3])
      {
      }
    }

    v32 = v279;
  }

  v55 = v3 + v1[9];
  v56 = _s14PaymentSummaryVMa();
  if (!(*(*(v56 - 1) + 48))(v55, 1, v56))
  {

    v277 = _s11TotalAmountVMa(0);
    v57 = v55 + v277[10];
    _s22SummaryItemPricingTypeOMa(0);
    v58 = swift_getEnumCaseMultiPayload();
    v282 = v55;
    switch(v58)
    {
      case 2:

        break;
      case 1:
        v65 = sub_1BE04AF64();
        (*(*(v65 - 8) + 8))(v57, v65);
        break;
      case 0:
        v280 = v32;
        v271 = v56;
        v275 = v31;
        v59 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v60 = *(v59 + 24);
        v61 = sub_1BE04AF64();
        v62 = *(v61 - 8);
        v63 = *(v62 + 48);
        if (!v63(v57 + v60, 1, v61))
        {
          (*(v62 + 8))(v57 + v60, v61);
        }

        v64 = *(v59 + 28);
        if (!v63(v57 + v64, 1, v61))
        {
          (*(v62 + 8))(v57 + v64, v61);
        }

        v2 = v291;
        v56 = v271;
        v31 = v275;
        v32 = v280;
        break;
    }

    v278 = v3;
    v66 = v2;
    v67 = v277;
    v68 = v282;

    v69 = (v282 + v277[15]);
    v70 = v32(v69, 1, v31);
    v71 = v292;
    if (!v70)
    {

      v72 = (v69 + v31[5]);
      type metadata accessor for WrappedPass(0);
      v73 = swift_getEnumCaseMultiPayload();
      v284 = v28;
      v272 = v56;
      if (v73 == 2)
      {

        v75 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v76 = sub_1BE04CF34();
        (*(*(v76 - 8) + 8))(v72 + v75, v76);
        v74 = v292;
      }

      else
      {
        v74 = v292;
        if (v73 <= 1)
        {
        }
      }

      v276 = v31;
      v77 = v72 + v74[6];
      v78 = v74;
      v79 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v79 - 8) + 48))(v77, 1, v79))
      {

        v80 = *(v79 + 20);
        v81 = sub_1BE04DA84();
        (*(*(v81 - 8) + 8))(&v77[v80], v81);
      }

      v82 = (v72 + v78[7]);
      v83 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v83 - 8) + 48))(v82, 1, v83))
      {

        v84 = *(v83 + 28);
        v85 = sub_1BE04AF64();
        v86 = *(v85 - 8);
        if (!(*(v86 + 48))(v82 + v84, 1, v85))
        {
          (*(v86 + 8))(v82 + v84, v85);
        }
      }

      v87 = v72 + v78[10];
      v88 = type metadata accessor for PassEligibleRewardsInfo();
      if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
      {
        if (*(v87 + 2) != 1)
        {
        }

        if (*(v87 + 9) != 1)
        {
        }

        v89 = *(v88 + 28);
        v90 = sub_1BE04AF64();
        v91 = *(v90 - 8);
        v92 = *(v91 + 48);
        if (!v92(&v87[v89], 1, v90))
        {
          (*(v91 + 8))(&v87[v89], v90);
        }

        v93 = *(v88 + 32);
        if (!v92(&v87[v93], 1, v90))
        {
          (*(v91 + 8))(&v87[v93], v90);
        }
      }

      v94 = (v72 + v292[12]);
      if (*v94)
      {
      }

      v95 = (v72 + v292[13]);
      v66 = v291;
      v56 = v272;
      if (*v95)
      {
      }

      v96 = (v69 + v276[6]);
      v28 = v284;
      if (*v96 != 1)
      {

        if (v96[3])
        {
        }
      }

      v71 = v292;

      v67 = v277;
      v68 = v282;
    }

    v97 = (v68 + v67[16]);
    v2 = v66;
    v5 = v71;
    v3 = v278;
    if (!(*(*(v28 - 8) + 48))(v97, 1, v28))
    {
      if (!v293(v97, 1, v71))
      {
        type metadata accessor for WrappedPass(0);
        v98 = swift_getEnumCaseMultiPayload();
        v285 = v28;
        if (v98 == 2)
        {

          v99 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v100 = sub_1BE04CF34();
          (*(*(v100 - 8) + 8))(v97 + v99, v100);
        }

        else if (v98 <= 1)
        {
        }

        v101 = v97 + v71[6];
        v102 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v102 - 8) + 48))(v101, 1, v102))
        {

          v103 = *(v102 + 20);
          v104 = sub_1BE04DA84();
          (*(*(v104 - 8) + 8))(&v101[v103], v104);
        }

        v273 = v56;
        v105 = (v97 + v5[7]);
        v106 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v106 - 8) + 48))(v105, 1, v106))
        {

          v107 = *(v106 + 28);
          v108 = sub_1BE04AF64();
          v109 = *(v108 - 8);
          if (!(*(v109 + 48))(v105 + v107, 1, v108))
          {
            (*(v109 + 8))(v105 + v107, v108);
          }
        }

        v110 = v97 + v5[10];
        v111 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v111 - 8) + 48))(v110, 1, v111))
        {
          if (*(v110 + 2) != 1)
          {
          }

          if (*(v110 + 9) != 1)
          {
          }

          v112 = *(v111 + 28);
          v113 = sub_1BE04AF64();
          v114 = *(v113 - 8);
          v115 = *(v114 + 48);
          if (!v115(&v110[v112], 1, v113))
          {
            (*(v114 + 8))(&v110[v112], v113);
          }

          v116 = *(v111 + 32);
          if (!v115(&v110[v116], 1, v113))
          {
            (*(v114 + 8))(&v110[v116], v113);
          }
        }

        v5 = v292;
        v117 = (v97 + v292[12]);
        if (*v117)
        {
        }

        v118 = (v97 + v292[13]);
        v2 = v291;
        v56 = v273;
        if (*v118)
        {
        }

        v28 = v285;
      }

      v68 = v282;
    }

    if (*(v68 + v56[7] + 8))
    {
    }

    v119 = v68 + v56[9];
    if (*(v119 + 8))
    {
    }

    v120 = v68 + v56[10];
    if (*(v120 + 8))
    {
    }

    v121 = v68 + v56[11];
    v122 = type metadata accessor for DeferredPaymentRequest();
    if (!(*(*(v122 - 1) + 48))(v121, 1, v122))
    {

      v123 = v122[7];
      v124 = sub_1BE04AF64();
      v125 = *(v124 - 8);
      if (!(*(v125 + 48))(v121 + v123, 1, v124))
      {
        (*(v125 + 8))(v121 + v123, v124);
      }

      v126 = v122[8];
      v127 = sub_1BE04B3B4();
      v128 = *(v127 - 8);
      if (!(*(v128 + 48))(v121 + v126, 1, v127))
      {
        (*(v128 + 8))(v121 + v126, v127);
      }

      v2 = v291;
    }
  }

  if (*(v3 + v1[24]))
  {
  }

  v129 = v3 + v1[27];
  if (*(v129 + 8))
  {
  }

  v130 = (v3 + v1[30]);
  if (!v293(v130, 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    v131 = swift_getEnumCaseMultiPayload();
    if (v131 == 2)
    {

      v132 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v133 = sub_1BE04CF34();
      (*(*(v133 - 8) + 8))(v130 + v132, v133);
    }

    else if (v131 <= 1)
    {
    }

    v134 = v130 + v5[6];
    v135 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v135 - 8) + 48))(v134, 1, v135))
    {

      v136 = *(v135 + 20);
      v137 = sub_1BE04DA84();
      (*(*(v137 - 8) + 8))(&v134[v136], v137);
    }

    v138 = (v130 + v5[7]);
    v139 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v139 - 8) + 48))(v138, 1, v139))
    {

      v140 = *(v139 + 28);
      v141 = sub_1BE04AF64();
      v142 = *(v141 - 8);
      if (!(*(v142 + 48))(v138 + v140, 1, v141))
      {
        (*(v142 + 8))(v138 + v140, v141);
      }
    }

    v143 = v130 + v5[10];
    v144 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v144 - 8) + 48))(v143, 1, v144))
    {
      if (*(v143 + 2) != 1)
      {
      }

      if (*(v143 + 9) != 1)
      {
      }

      v145 = *(v144 + 28);
      v146 = sub_1BE04AF64();
      v147 = *(v146 - 8);
      v148 = *(v147 + 48);
      if (!v148(&v143[v145], 1, v146))
      {
        (*(v147 + 8))(&v143[v145], v146);
      }

      v149 = *(v144 + 32);
      v2 = v291;
      v5 = v292;
      if (!v148(&v143[v149], 1, v146))
      {
        (*(v147 + 8))(&v143[v149], v146);
      }
    }

    v150 = (v130 + v5[12]);
    if (*v150)
    {
    }

    v151 = (v130 + v5[13]);
    if (*v151)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);

  v152 = (v3 + v1[32]);
  v153 = _s11DetailSheetOMa();
  if (!(*(*(v153 - 8) + 48))(v152, 1, v153))
  {
    v154 = swift_getEnumCaseMultiPayload();
    if (v154 <= 1)
    {
      if (!v154)
      {
        if (!v293(v152, 1, v5))
        {
          type metadata accessor for WrappedPass(0);
          v158 = swift_getEnumCaseMultiPayload();
          if (v158 == 2)
          {

            v199 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v200 = sub_1BE04CF34();
            (*(*(v200 - 8) + 8))(v152 + v199, v200);
          }

          else if (v158 <= 1)
          {
          }

          v201 = v152 + v5[6];
          v202 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v202 - 8) + 48))(v201, 1, v202))
          {

            v203 = *(v202 + 20);
            v204 = sub_1BE04DA84();
            (*(*(v204 - 8) + 8))(&v201[v203], v204);
          }

          v205 = (v152 + v5[7]);
          v206 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v206 - 8) + 48))(v205, 1, v206))
          {

            v207 = *(v206 + 28);
            v208 = sub_1BE04AF64();
            v209 = *(v208 - 8);
            if (!(*(v209 + 48))(v205 + v207, 1, v208))
            {
              (*(v209 + 8))(v205 + v207, v208);
            }
          }

          v210 = v152 + v5[10];
          v211 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v211 - 8) + 48))(v210, 1, v211))
          {
            if (*(v210 + 2) != 1)
            {
            }

            if (*(v210 + 9) != 1)
            {
            }

            v212 = *(v211 + 28);
            v213 = sub_1BE04AF64();
            v214 = *(v213 - 8);
            v215 = *(v214 + 48);
            if (!v215(&v210[v212], 1, v213))
            {
              (*(v214 + 8))(&v210[v212], v213);
            }

            v216 = *(v211 + 32);
            v5 = v292;
            if (!v215(&v210[v216], 1, v213))
            {
              (*(v214 + 8))(&v210[v216], v213);
            }
          }

          v217 = (v152 + v5[12]);
          if (*v217)
          {
          }

          v218 = (v152 + v5[13]);
          v2 = v291;
          if (*v218)
          {
          }
        }

        v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

        v220 = v152 + *(v219 + 64);

        v156 = *(v220 + 4);
        goto LABEL_240;
      }

      if (v154 != 1)
      {
        goto LABEL_241;
      }

LABEL_171:
      v156 = *v152;
LABEL_240:

      goto LABEL_241;
    }

    if (v154 != 2)
    {
      if (v154 != 3)
      {
        if (v154 != 4)
        {
          goto LABEL_241;
        }

        type metadata accessor for WrappedPass(0);
        v155 = swift_getEnumCaseMultiPayload();
        if (v155 == 2)
        {

          v179 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v180 = sub_1BE04CF34();
          (*(*(v180 - 8) + 8))(v152 + v179, v180);
        }

        else if (v155 <= 1)
        {
        }

        v181 = v152 + v5[6];
        v182 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v182 - 8) + 48))(v181, 1, v182))
        {

          v183 = *(v182 + 20);
          v184 = sub_1BE04DA84();
          (*(*(v184 - 8) + 8))(&v181[v183], v184);
        }

        v185 = (v152 + v5[7]);
        v186 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v186 - 8) + 48))(v185, 1, v186))
        {

          v187 = *(v186 + 28);
          v188 = sub_1BE04AF64();
          v189 = *(v188 - 8);
          if (!(*(v189 + 48))(v185 + v187, 1, v188))
          {
            (*(v189 + 8))(v185 + v187, v188);
          }
        }

        v190 = v152 + v5[10];
        v191 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v191 - 8) + 48))(v190, 1, v191))
        {
          if (*(v190 + 2) != 1)
          {
          }

          if (*(v190 + 9) != 1)
          {
          }

          v192 = *(v191 + 28);
          v193 = sub_1BE04AF64();
          v194 = *(v193 - 8);
          v195 = *(v194 + 48);
          if (!v195(&v190[v192], 1, v193))
          {
            (*(v194 + 8))(&v190[v192], v193);
          }

          v196 = *(v191 + 32);
          v5 = v292;
          if (!v195(&v190[v196], 1, v193))
          {
            (*(v194 + 8))(&v190[v196], v193);
          }
        }

        v197 = (v152 + v5[12]);
        if (*v197)
        {
        }

        v198 = (v152 + v5[13]);
        v2 = v291;
        if (*v198)
        {
        }

        v156 = *(v152 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60) + 48));
        goto LABEL_240;
      }

      goto LABEL_171;
    }

    type metadata accessor for WrappedPass(0);
    v157 = swift_getEnumCaseMultiPayload();
    if (v157 == 2)
    {

      v159 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v160 = sub_1BE04CF34();
      (*(*(v160 - 8) + 8))(v152 + v159, v160);
    }

    else if (v157 <= 1)
    {
    }

    v161 = v152 + v5[6];
    v162 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v162 - 8) + 48))(v161, 1, v162))
    {

      v163 = *(v162 + 20);
      v164 = sub_1BE04DA84();
      (*(*(v164 - 8) + 8))(&v161[v163], v164);
    }

    v165 = (v152 + v5[7]);
    v166 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v166 - 8) + 48))(v165, 1, v166))
    {

      v167 = *(v166 + 28);
      v168 = sub_1BE04AF64();
      v169 = *(v168 - 8);
      if (!(*(v169 + 48))(v165 + v167, 1, v168))
      {
        (*(v169 + 8))(v165 + v167, v168);
      }
    }

    v170 = v152 + v5[10];
    v171 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v171 - 8) + 48))(v170, 1, v171))
    {
      if (*(v170 + 2) != 1)
      {
      }

      if (*(v170 + 9) != 1)
      {
      }

      v172 = *(v171 + 28);
      v173 = sub_1BE04AF64();
      v174 = *(v173 - 8);
      v175 = *(v174 + 48);
      if (!v175(&v170[v172], 1, v173))
      {
        (*(v174 + 8))(&v170[v172], v173);
      }

      v176 = *(v171 + 32);
      v5 = v292;
      if (!v175(&v170[v176], 1, v173))
      {
        (*(v174 + 8))(&v170[v176], v173);
      }
    }

    v177 = (v152 + v5[12]);
    if (*v177)
    {
    }

    v178 = (v152 + v5[13]);
    v2 = v291;
    if (*v178)
    {
    }
  }

LABEL_241:
  v221 = v287 + v286;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);

  if (*(v3 + v1[34] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + v1[34]);
  }

  v222 = v221 + v2;

  v223 = (v3 + v1[35]);
  if (!v293(v223, 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    v224 = swift_getEnumCaseMultiPayload();
    v288 = v221 + v2;
    if (v224 == 2)
    {

      v225 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v226 = sub_1BE04CF34();
      (*(*(v226 - 8) + 8))(v223 + v225, v226);
    }

    else if (v224 <= 1)
    {
    }

    v227 = v223 + v5[6];
    v228 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v228 - 8) + 48))(v227, 1, v228))
    {

      v229 = *(v228 + 20);
      v230 = sub_1BE04DA84();
      (*(*(v230 - 8) + 8))(&v227[v229], v230);
    }

    v231 = (v223 + v5[7]);
    v232 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v232 - 8) + 48))(v231, 1, v232))
    {

      v233 = *(v232 + 28);
      v234 = sub_1BE04AF64();
      v235 = *(v234 - 8);
      if (!(*(v235 + 48))(v231 + v233, 1, v234))
      {
        (*(v235 + 8))(v231 + v233, v234);
      }
    }

    v236 = v223 + v5[10];
    v237 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v237 - 8) + 48))(v236, 1, v237))
    {
      if (*(v236 + 2) != 1)
      {
      }

      if (*(v236 + 9) != 1)
      {
      }

      v238 = *(v237 + 28);
      v239 = sub_1BE04AF64();
      v240 = *(v239 - 8);
      v241 = *(v240 + 48);
      if (!v241(&v236[v238], 1, v239))
      {
        (*(v240 + 8))(&v236[v238], v239);
      }

      v242 = *(v237 + 32);
      v2 = v291;
      if (!v241(&v236[v242], 1, v239))
      {
        (*(v240 + 8))(&v236[v242], v239);
      }
    }

    v5 = v292;
    v243 = (v223 + v292[12]);
    if (*v243)
    {
    }

    v244 = (v223 + v292[13]);
    if (*v244)
    {
    }

    v222 = v288;
  }

  v245 = v222 & ~v2;

  v246 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v247 = sub_1BE04C884();
    (*(*(v247 - 8) + 8))(v3 + v246, v247);
  }

  else
  {
  }

  v248 = (v290 + v245);
  if (!v293((v290 + v245), 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    v249 = swift_getEnumCaseMultiPayload();
    if (v249 == 2)
    {

      v250 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v251 = sub_1BE04CF34();
      (*(*(v251 - 8) + 8))(v248 + v250, v251);
    }

    else if (v249 <= 1)
    {
    }

    v252 = v248 + v5[6];
    v253 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v253 - 8) + 48))(v252, 1, v253))
    {

      v254 = *(v253 + 20);
      v255 = sub_1BE04DA84();
      (*(*(v255 - 8) + 8))(&v252[v254], v255);
    }

    v256 = (v248 + v5[7]);
    v257 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v257 - 8) + 48))(v256, 1, v257))
    {

      v258 = *(v257 + 28);
      v259 = sub_1BE04AF64();
      v260 = *(v259 - 8);
      if (!(*(v260 + 48))(v256 + v258, 1, v259))
      {
        (*(v260 + 8))(v256 + v258, v259);
      }
    }

    v261 = v248 + v5[10];
    v262 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v262 - 8) + 48))(v261, 1, v262))
    {
      if (*(v261 + 2) != 1)
      {
      }

      if (*(v261 + 9) != 1)
      {
      }

      v263 = *(v262 + 28);
      v264 = sub_1BE04AF64();
      v265 = *(v264 - 8);
      v266 = *(v265 + 48);
      if (!v266(&v261[v263], 1, v264))
      {
        (*(v265 + 8))(&v261[v263], v264);
      }

      v267 = *(v262 + 32);
      v5 = v292;
      if (!v266(&v261[v267], 1, v264))
      {
        (*(v265 + 8))(&v261[v267], v264);
      }
    }

    v268 = (v248 + v5[12]);
    if (*v268)
    {
    }

    v269 = (v248 + v5[13]);
    if (*v269)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1BD098ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD098B64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD098B9C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD098BDC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD098C24()
{

  return swift_deallocObject();
}

uint64_t sub_1BD098C5C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD098D30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD098DEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD098E9C()
{
  v1 = (type metadata accessor for PKDashboardRewardsBalanceDetailsView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  sub_1BD0D45CC();
  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD098FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD09903C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0990A4()
{
  v1 = (type metadata accessor for PKDashboardRewardsBalanceDetailsView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  sub_1BD0D45CC();
  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1BE04E664();
    (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1BD099268@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F104();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0992E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD099378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04F684();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BD099448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE04F684();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BD099518()
{

  return swift_deallocObject();
}

uint64_t sub_1BD099550()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0995B8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0995F8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD099630()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD099668()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0996A8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0996F8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD099758()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0997A0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0997D8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD099828()
{

  return swift_deallocObject();
}

uint64_t sub_1BD099880()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0998B8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD099900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BalanceInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD0999BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BalanceInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD099AC0()
{

  return swift_deallocObject();
}

id sub_1BD099BB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) attributedText];
  *a2 = result;
  return result;
}

id sub_1BD099C00(void *a1, void **a2)
{
  v2 = *a2;
  [*(*a2 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) setAttributedText_];

  return [v2 setNeedsLayout];
}

__n128 sub_1BD099C60@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BD099CD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD099D10()
{

  return swift_deallocObject();
}

uint64_t sub_1BD099D50()
{

  return swift_deallocObject();
}

uint64_t sub_1BD099D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD099E44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD099EF4()
{
  v1 = (type metadata accessor for PaymentOfferInstallmentCriteriaIconView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E354();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD09A01C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD09A060()
{

  return swift_deallocObject();
}

uint64_t sub_1BD09A098()
{

  return swift_deallocObject();
}

uint64_t sub_1BD09A110()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD09A14C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD09A184()
{

  return swift_deallocObject();
}

uint64_t sub_1BD09A1C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  swift_getWitnessTable();
  type metadata accessor for OffsetScrollView();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE0534B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50520);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD50528, &qword_1EBD50520);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD09A588()
{

  return swift_deallocObject();
}

uint64_t sub_1BD09A5C0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD09A5F8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD09A648()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v263 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v263 + 24) & ~v263);
  v3 = (v2 + v1[6]);
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 1) + 48);
  v264 = v5;
  v265 = v4;
  if (!v5(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v8 = sub_1BE04CF34();
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v9 = v3 + v4[6];
    v10 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 20);
      v12 = sub_1BE04DA84();
      (*(*(v12 - 8) + 8))(&v9[v11], v12);
    }

    v13 = (v3 + v4[7]);
    v14 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 28);
      v16 = sub_1BE04AF64();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }
    }

    v18 = v3 + v4[10];
    v19 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      if (*(v18 + 2) != 1)
      {
      }

      if (*(v18 + 9) != 1)
      {
      }

      v20 = *(v19 + 28);
      v21 = sub_1BE04AF64();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      if (!v23(&v18[v20], 1, v21))
      {
        (*(v22 + 8))(&v18[v20], v21);
      }

      v24 = *(v19 + 32);
      v25 = v23(&v18[v24], 1, v21);
      v5 = v264;
      v4 = v265;
      if (!v25)
      {
        (*(v22 + 8))(&v18[v24], v21);
      }
    }

    v26 = (v3 + v4[12]);
    if (*v26)
    {
    }

    v27 = (v3 + v4[13]);
    if (*v27)
    {
    }
  }

  v28 = type metadata accessor for Passes(0);

  v29 = v2 + v1[7];
  if (*(v29 + 48))
  {
    sub_1BD0D455C(*v29, *(v29 + 8), *(v29 + 16));
  }

  v30 = (v2 + v1[8]);
  v31 = type metadata accessor for PeerPaymentModel();
  v32 = *(*(v31 - 1) + 48);
  if (!v32(v30, 1, v31))
  {

    v33 = (v30 + v31[5]);
    type metadata accessor for WrappedPass(0);
    v34 = swift_getEnumCaseMultiPayload();
    v256 = v28;
    if (v34 == 2)
    {

      v35 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v36 = sub_1BE04CF34();
      (*(*(v36 - 8) + 8))(v33 + v35, v36);
    }

    else if (v34 <= 1)
    {
    }

    v251 = v32;
    v37 = v33 + v4[6];
    v38 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      v39 = *(v38 + 20);
      v40 = sub_1BE04DA84();
      (*(*(v40 - 8) + 8))(&v37[v39], v40);
    }

    v41 = (v33 + v4[7]);
    v42 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
    {

      v43 = *(v42 + 28);
      v44 = sub_1BE04AF64();
      v45 = *(v44 - 8);
      if (!(*(v45 + 48))(v41 + v43, 1, v44))
      {
        (*(v45 + 8))(v41 + v43, v44);
      }
    }

    v46 = v33 + v4[10];
    v47 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
    {
      if (*(v46 + 2) != 1)
      {
      }

      v247 = v31;
      if (*(v46 + 9) != 1)
      {
      }

      v48 = *(v47 + 28);
      v49 = sub_1BE04AF64();
      v254 = *(v49 - 8);
      v50 = *(v254 + 48);
      if (!v50(&v46[v48], 1, v49))
      {
        (*(v254 + 8))(&v46[v48], v49);
      }

      v51 = *(v47 + 32);
      v31 = v247;
      if (!v50(&v46[v51], 1, v49))
      {
        (*(v254 + 8))(&v46[v51], v49);
      }
    }

    v4 = v265;
    v52 = (v33 + v265[12]);
    v28 = v256;
    v32 = v251;
    if (*v52)
    {
    }

    v53 = (v33 + v265[13]);
    v5 = v264;
    if (*v53)
    {
    }

    v54 = (v30 + v31[6]);
    if (*v54 != 1)
    {

      if (v54[3])
      {
      }
    }
  }

  v55 = v2 + v1[9];
  v56 = _s14PaymentSummaryVMa();
  if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
  {

    v253 = _s11TotalAmountVMa(0);
    v57 = v55 + *(v253 + 40);
    _s22SummaryItemPricingTypeOMa(0);
    v58 = swift_getEnumCaseMultiPayload();
    v250 = v56;
    v255 = v55;
    if (v58 == 2)
    {
    }

    else if (v58 == 1)
    {
      v66 = sub_1BE04AF64();
      (*(*(v66 - 8) + 8))(v57, v66);
    }

    else
    {
      v59 = v253;
      if (v58)
      {
LABEL_67:
        v67 = v5;
        v68 = v255;

        v69 = (v255 + v59[15]);
        v70 = v32(v69, 1, v31);
        v71 = v265;
        if (!v70)
        {

          v262 = v69;
          v72 = (v69 + v31[5]);
          type metadata accessor for WrappedPass(0);
          v73 = v72;
          v74 = swift_getEnumCaseMultiPayload();
          v257 = v28;
          if (v74 == 2)
          {

            v77 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v78 = sub_1BE04CF34();
            (*(*(v78 - 8) + 8))(v73 + v77, v78);
            v75 = v265;
            v76 = v73;
          }

          else
          {
            v75 = v265;
            if (v74 == 1)
            {
              v76 = v72;
            }

            else
            {
              v76 = v72;
              if (!v74)
              {
              }
            }
          }

          v249 = v31;
          v79 = v76 + v75[6];
          v80 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
          {

            v81 = *(v80 + 20);
            v82 = sub_1BE04DA84();
            (*(*(v82 - 8) + 8))(&v79[v81], v82);
          }

          v83 = (v76 + v75[7]);
          v84 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
          {

            v85 = *(v84 + 28);
            v86 = sub_1BE04AF64();
            v87 = *(v86 - 8);
            if (!(*(v87 + 48))(v83 + v85, 1, v86))
            {
              (*(v87 + 8))(v83 + v85, v86);
            }
          }

          v88 = v76 + v75[10];
          v89 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v89 - 8) + 48))(v88, 1, v89))
          {
            if (*(v88 + 2) != 1)
            {
            }

            if (*(v88 + 9) != 1)
            {
            }

            v90 = *(v89 + 28);
            v91 = sub_1BE04AF64();
            v92 = *(v91 - 8);
            v93 = *(v92 + 48);
            if (!v93(&v88[v90], 1, v91))
            {
              (*(v92 + 8))(&v88[v90], v91);
            }

            v94 = *(v89 + 32);
            if (!v93(&v88[v94], 1, v91))
            {
              (*(v92 + 8))(&v88[v94], v91);
            }
          }

          v95 = (v76 + v265[12]);
          v28 = v257;
          if (*v95)
          {
          }

          v96 = (v76 + v265[13]);
          if (*v96)
          {
          }

          v97 = (v262 + v249[6]);
          if (*v97 != 1)
          {

            if (v97[3])
            {
            }
          }

          v71 = v265;
          v67 = v264;

          v59 = v253;
          v68 = v255;
        }

        v98 = (v68 + v59[16]);
        v5 = v67;
        v4 = v71;
        if (!(*(*(v28 - 8) + 48))(v98, 1, v28))
        {
          if (!v67(v98, 1, v71))
          {
            type metadata accessor for WrappedPass(0);
            v99 = swift_getEnumCaseMultiPayload();
            v258 = v28;
            if (v99 == 2)
            {

              v100 = *(type metadata accessor for PlaceholderPass(0) + 28);
              v101 = sub_1BE04CF34();
              (*(*(v101 - 8) + 8))(v98 + v100, v101);
            }

            else if (v99 <= 1)
            {
            }

            v102 = v98 + v71[6];
            v103 = type metadata accessor for IdentityCredential(0);
            if (!(*(*(v103 - 8) + 48))(v102, 1, v103))
            {

              v104 = *(v103 + 20);
              v105 = sub_1BE04DA84();
              (*(*(v105 - 8) + 8))(&v102[v104], v105);
            }

            v106 = (v98 + v71[7]);
            v107 = type metadata accessor for BalanceInfo(0);
            if (!(*(*(v107 - 8) + 48))(v106, 1, v107))
            {

              v108 = *(v107 + 28);
              v109 = sub_1BE04AF64();
              v110 = *(v109 - 8);
              if (!(*(v110 + 48))(v106 + v108, 1, v109))
              {
                (*(v110 + 8))(v106 + v108, v109);
              }
            }

            v111 = v98 + v4[10];
            v112 = type metadata accessor for PassEligibleRewardsInfo();
            if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
            {
              if (*(v111 + 2) != 1)
              {
              }

              if (*(v111 + 9) != 1)
              {
              }

              v113 = *(v112 + 28);
              v114 = sub_1BE04AF64();
              v115 = *(v114 - 8);
              v116 = *(v115 + 48);
              if (!v116(&v111[v113], 1, v114))
              {
                (*(v115 + 8))(&v111[v113], v114);
              }

              v117 = *(v112 + 32);
              if (!v116(&v111[v117], 1, v114))
              {
                (*(v115 + 8))(&v111[v117], v114);
              }
            }

            v4 = v265;
            v118 = (v98 + v265[12]);
            v28 = v258;
            if (*v118)
            {
            }

            v119 = (v98 + v265[13]);
            v5 = v264;
            if (*v119)
            {
            }
          }

          v68 = v255;
        }

        if (*(v68 + v250[7] + 8))
        {
        }

        v120 = v68 + v250[9];
        if (*(v120 + 8))
        {
        }

        v121 = v68 + v250[10];
        if (*(v121 + 8))
        {
        }

        v122 = v68 + v250[11];
        v123 = type metadata accessor for DeferredPaymentRequest();
        if (!(*(*(v123 - 1) + 48))(v122, 1, v123))
        {

          v124 = v123[7];
          v125 = sub_1BE04AF64();
          v126 = *(v125 - 8);
          if (!(*(v126 + 48))(v122 + v124, 1, v125))
          {
            (*(v126 + 8))(v122 + v124, v125);
          }

          v127 = v123[8];
          v128 = sub_1BE04B3B4();
          v129 = *(v128 - 8);
          if (!(*(v129 + 48))(v122 + v127, 1, v128))
          {
            (*(v129 + 8))(v122 + v127, v128);
          }

          v5 = v264;
        }

        goto LABEL_136;
      }

      v252 = v32;
      v248 = v31;
      v60 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v61 = *(v60 + 24);
      v62 = sub_1BE04AF64();
      v63 = *(v62 - 8);
      v64 = *(v63 + 48);
      if (!v64(v57 + v61, 1, v62))
      {
        (*(v63 + 8))(v57 + v61, v62);
      }

      v65 = *(v60 + 28);
      if (!v64(v57 + v65, 1, v62))
      {
        (*(v63 + 8))(v57 + v65, v62);
      }

      v5 = v264;
      v31 = v248;
      v32 = v252;
    }

    v59 = v253;
    goto LABEL_67;
  }

LABEL_136:

  if (*(v2 + v1[24]))
  {
  }

  v130 = v2 + v1[27];
  if (*(v130 + 8))
  {
  }

  v131 = (v2 + v1[30]);
  if (!v5(v131, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v132 = swift_getEnumCaseMultiPayload();
    if (v132 == 2)
    {

      v133 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v134 = sub_1BE04CF34();
      (*(*(v134 - 8) + 8))(v131 + v133, v134);
    }

    else if (v132 <= 1)
    {
    }

    v135 = v131 + v4[6];
    v136 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v136 - 8) + 48))(v135, 1, v136))
    {

      v137 = *(v136 + 20);
      v138 = sub_1BE04DA84();
      (*(*(v138 - 8) + 8))(&v135[v137], v138);
    }

    v139 = (v131 + v4[7]);
    v140 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v140 - 8) + 48))(v139, 1, v140))
    {

      v141 = *(v140 + 28);
      v142 = sub_1BE04AF64();
      v143 = *(v142 - 8);
      if (!(*(v143 + 48))(v139 + v141, 1, v142))
      {
        (*(v143 + 8))(v139 + v141, v142);
      }
    }

    v144 = v131 + v4[10];
    v145 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v145 - 8) + 48))(v144, 1, v145))
    {
      if (*(v144 + 2) != 1)
      {
      }

      if (*(v144 + 9) != 1)
      {
      }

      v146 = *(v145 + 28);
      v147 = sub_1BE04AF64();
      v148 = *(v147 - 8);
      v149 = *(v148 + 48);
      if (!v149(&v144[v146], 1, v147))
      {
        (*(v148 + 8))(&v144[v146], v147);
      }

      v150 = *(v145 + 32);
      v5 = v264;
      v4 = v265;
      if (!v149(&v144[v150], 1, v147))
      {
        (*(v148 + 8))(&v144[v150], v147);
      }
    }

    v151 = (v131 + v4[12]);
    if (*v151)
    {
    }

    v152 = (v131 + v4[13]);
    if (*v152)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);

  v153 = (v2 + v1[32]);
  v154 = _s11DetailSheetOMa();
  if (!(*(*(v154 - 8) + 48))(v153, 1, v154))
  {
    v155 = swift_getEnumCaseMultiPayload();
    if (v155 <= 1)
    {
      if (!v155)
      {
        if (!v5(v153, 1, v4))
        {
          type metadata accessor for WrappedPass(0);
          v159 = swift_getEnumCaseMultiPayload();
          if (v159 == 2)
          {

            v200 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v201 = sub_1BE04CF34();
            (*(*(v201 - 8) + 8))(v153 + v200, v201);
          }

          else if (v159 <= 1)
          {
          }

          v202 = v153 + v4[6];
          v203 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v203 - 8) + 48))(v202, 1, v203))
          {

            v204 = *(v203 + 20);
            v205 = sub_1BE04DA84();
            (*(*(v205 - 8) + 8))(&v202[v204], v205);
          }

          v206 = (v153 + v4[7]);
          v207 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v207 - 8) + 48))(v206, 1, v207))
          {

            v208 = *(v207 + 28);
            v209 = sub_1BE04AF64();
            v210 = *(v209 - 8);
            if (!(*(v210 + 48))(v206 + v208, 1, v209))
            {
              (*(v210 + 8))(v206 + v208, v209);
            }
          }

          v211 = v153 + v4[10];
          v212 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v212 - 8) + 48))(v211, 1, v212))
          {
            if (*(v211 + 2) != 1)
            {
            }

            if (*(v211 + 9) != 1)
            {
            }

            v213 = *(v212 + 28);
            v214 = sub_1BE04AF64();
            v215 = *(v214 - 8);
            v216 = *(v215 + 48);
            if (!v216(&v211[v213], 1, v214))
            {
              (*(v215 + 8))(&v211[v213], v214);
            }

            v261 = v215;
            v217 = *(v212 + 32);
            v5 = v264;
            v4 = v265;
            if (!v216(&v211[v217], 1, v214))
            {
              (*(v261 + 8))(&v211[v217], v214);
            }
          }

          v218 = (v153 + v4[12]);
          if (*v218)
          {
          }

          v219 = (v153 + v4[13]);
          if (*v219)
          {
          }
        }

        v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

        v221 = v153 + *(v220 + 64);

        v157 = *(v221 + 4);
        goto LABEL_243;
      }

      if (v155 != 1)
      {
        goto LABEL_244;
      }

LABEL_174:
      v157 = *v153;
LABEL_243:

      goto LABEL_244;
    }

    if (v155 != 2)
    {
      if (v155 != 3)
      {
        if (v155 != 4)
        {
          goto LABEL_244;
        }

        type metadata accessor for WrappedPass(0);
        v156 = swift_getEnumCaseMultiPayload();
        if (v156 == 2)
        {

          v180 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v181 = sub_1BE04CF34();
          (*(*(v181 - 8) + 8))(v153 + v180, v181);
        }

        else if (v156 <= 1)
        {
        }

        v182 = v153 + v4[6];
        v183 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v183 - 8) + 48))(v182, 1, v183))
        {

          v184 = *(v183 + 20);
          v185 = sub_1BE04DA84();
          (*(*(v185 - 8) + 8))(&v182[v184], v185);
        }

        v186 = (v153 + v4[7]);
        v187 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v187 - 8) + 48))(v186, 1, v187))
        {

          v188 = *(v187 + 28);
          v189 = sub_1BE04AF64();
          v190 = *(v189 - 8);
          if (!(*(v190 + 48))(v186 + v188, 1, v189))
          {
            (*(v190 + 8))(v186 + v188, v189);
          }
        }

        v191 = v153 + v4[10];
        v192 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v192 - 8) + 48))(v191, 1, v192))
        {
          if (*(v191 + 2) != 1)
          {
          }

          if (*(v191 + 9) != 1)
          {
          }

          v193 = *(v192 + 28);
          v194 = sub_1BE04AF64();
          v195 = *(v194 - 8);
          v196 = *(v195 + 48);
          if (!v196(&v191[v193], 1, v194))
          {
            (*(v195 + 8))(&v191[v193], v194);
          }

          v260 = v195;
          v197 = *(v192 + 32);
          v5 = v264;
          v4 = v265;
          if (!v196(&v191[v197], 1, v194))
          {
            (*(v260 + 8))(&v191[v197], v194);
          }
        }

        v198 = (v153 + v4[12]);
        if (*v198)
        {
        }

        v199 = (v153 + v4[13]);
        if (*v199)
        {
        }

        v157 = *(v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60) + 48));
        goto LABEL_243;
      }

      goto LABEL_174;
    }

    type metadata accessor for WrappedPass(0);
    v158 = swift_getEnumCaseMultiPayload();
    if (v158 == 2)
    {

      v160 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v161 = sub_1BE04CF34();
      (*(*(v161 - 8) + 8))(v153 + v160, v161);
    }

    else if (v158 <= 1)
    {
    }

    v162 = v153 + v4[6];
    v163 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v163 - 8) + 48))(v162, 1, v163))
    {

      v164 = *(v163 + 20);
      v165 = sub_1BE04DA84();
      (*(*(v165 - 8) + 8))(&v162[v164], v165);
    }

    v166 = (v153 + v4[7]);
    v167 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v167 - 8) + 48))(v166, 1, v167))
    {

      v168 = *(v167 + 28);
      v169 = sub_1BE04AF64();
      v170 = *(v169 - 8);
      if (!(*(v170 + 48))(v166 + v168, 1, v169))
      {
        (*(v170 + 8))(v166 + v168, v169);
      }
    }

    v171 = v153 + v4[10];
    v172 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v172 - 8) + 48))(v171, 1, v172))
    {
      if (*(v171 + 2) != 1)
      {
      }

      if (*(v171 + 9) != 1)
      {
      }

      v173 = *(v172 + 28);
      v174 = sub_1BE04AF64();
      v175 = *(v174 - 8);
      v176 = *(v175 + 48);
      if (!v176(&v171[v173], 1, v174))
      {
        (*(v175 + 8))(&v171[v173], v174);
      }

      v259 = v175;
      v177 = *(v172 + 32);
      v5 = v264;
      v4 = v265;
      if (!v176(&v171[v177], 1, v174))
      {
        (*(v259 + 8))(&v171[v177], v174);
      }
    }

    v178 = (v153 + v4[12]);
    if (*v178)
    {
    }

    v179 = (v153 + v4[13]);
    if (*v179)
    {
    }
  }

LABEL_244:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);

  if (*(v2 + v1[34] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + v1[34]);
  }

  v222 = (v2 + v1[35]);
  if (!v5(v222, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v223 = swift_getEnumCaseMultiPayload();
    if (v223 == 2)
    {

      v224 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v225 = sub_1BE04CF34();
      (*(*(v225 - 8) + 8))(v222 + v224, v225);
    }

    else if (v223 <= 1)
    {
    }

    v226 = v222 + v4[6];
    v227 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v227 - 8) + 48))(v226, 1, v227))
    {

      v228 = *(v227 + 20);
      v229 = sub_1BE04DA84();
      (*(*(v229 - 8) + 8))(&v226[v228], v229);
    }

    v230 = (v222 + v4[7]);
    v231 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v231 - 8) + 48))(v230, 1, v231))
    {

      v232 = *(v231 + 28);
      v233 = sub_1BE04AF64();
      v234 = *(v233 - 8);
      if (!(*(v234 + 48))(v230 + v232, 1, v233))
      {
        (*(v234 + 8))(v230 + v232, v233);
      }
    }

    v235 = v222 + v4[10];
    v236 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v236 - 8) + 48))(v235, 1, v236))
    {
      if (*(v235 + 2) != 1)
      {
      }

      if (*(v235 + 9) != 1)
      {
      }

      v237 = *(v236 + 28);
      v238 = sub_1BE04AF64();
      v239 = *(v238 - 8);
      v240 = *(v239 + 48);
      if (!v240(&v235[v237], 1, v238))
      {
        (*(v239 + 8))(&v235[v237], v238);
      }

      v241 = *(v236 + 32);
      v4 = v265;
      if (!v240(&v235[v241], 1, v238))
      {
        (*(v239 + 8))(&v235[v241], v238);
      }
    }

    v242 = (v222 + v4[12]);
    if (*v242)
    {
    }

    v243 = (v222 + v4[13]);
    if (*v243)
    {
    }
  }

  v244 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v245 = sub_1BE04C884();
    (*(*(v245 - 8) + 8))(v2 + v244, v245);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD09D648()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v263 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v263 + 24) & ~v263);
  v3 = (v2 + v1[6]);
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 1) + 48);
  v264 = v5;
  v265 = v4;
  if (!v5(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v8 = sub_1BE04CF34();
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v9 = v3 + v4[6];
    v10 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 20);
      v12 = sub_1BE04DA84();
      (*(*(v12 - 8) + 8))(&v9[v11], v12);
    }

    v13 = (v3 + v4[7]);
    v14 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 28);
      v16 = sub_1BE04AF64();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }
    }

    v18 = v3 + v4[10];
    v19 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      if (*(v18 + 2) != 1)
      {
      }

      if (*(v18 + 9) != 1)
      {
      }

      v20 = *(v19 + 28);
      v21 = sub_1BE04AF64();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      if (!v23(&v18[v20], 1, v21))
      {
        (*(v22 + 8))(&v18[v20], v21);
      }

      v24 = *(v19 + 32);
      v25 = v23(&v18[v24], 1, v21);
      v5 = v264;
      v4 = v265;
      if (!v25)
      {
        (*(v22 + 8))(&v18[v24], v21);
      }
    }

    v26 = (v3 + v4[12]);
    if (*v26)
    {
    }

    v27 = (v3 + v4[13]);
    if (*v27)
    {
    }
  }

  v28 = type metadata accessor for Passes(0);

  v29 = v2 + v1[7];
  if (*(v29 + 48))
  {
    sub_1BD0D455C(*v29, *(v29 + 8), *(v29 + 16));
  }

  v30 = (v2 + v1[8]);
  v31 = type metadata accessor for PeerPaymentModel();
  v32 = *(*(v31 - 1) + 48);
  if (!v32(v30, 1, v31))
  {

    v33 = (v30 + v31[5]);
    type metadata accessor for WrappedPass(0);
    v34 = swift_getEnumCaseMultiPayload();
    v256 = v28;
    if (v34 == 2)
    {

      v35 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v36 = sub_1BE04CF34();
      (*(*(v36 - 8) + 8))(v33 + v35, v36);
    }

    else if (v34 <= 1)
    {
    }

    v251 = v32;
    v37 = v33 + v4[6];
    v38 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      v39 = *(v38 + 20);
      v40 = sub_1BE04DA84();
      (*(*(v40 - 8) + 8))(&v37[v39], v40);
    }

    v41 = (v33 + v4[7]);
    v42 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
    {

      v43 = *(v42 + 28);
      v44 = sub_1BE04AF64();
      v45 = *(v44 - 8);
      if (!(*(v45 + 48))(v41 + v43, 1, v44))
      {
        (*(v45 + 8))(v41 + v43, v44);
      }
    }

    v46 = v33 + v4[10];
    v47 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
    {
      if (*(v46 + 2) != 1)
      {
      }

      v247 = v31;
      if (*(v46 + 9) != 1)
      {
      }

      v48 = *(v47 + 28);
      v49 = sub_1BE04AF64();
      v254 = *(v49 - 8);
      v50 = *(v254 + 48);
      if (!v50(&v46[v48], 1, v49))
      {
        (*(v254 + 8))(&v46[v48], v49);
      }

      v51 = *(v47 + 32);
      v31 = v247;
      if (!v50(&v46[v51], 1, v49))
      {
        (*(v254 + 8))(&v46[v51], v49);
      }
    }

    v4 = v265;
    v52 = (v33 + v265[12]);
    v28 = v256;
    v32 = v251;
    if (*v52)
    {
    }

    v53 = (v33 + v265[13]);
    v5 = v264;
    if (*v53)
    {
    }

    v54 = (v30 + v31[6]);
    if (*v54 != 1)
    {

      if (v54[3])
      {
      }
    }
  }

  v55 = v2 + v1[9];
  v56 = _s14PaymentSummaryVMa();
  if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
  {

    v253 = _s11TotalAmountVMa(0);
    v57 = v55 + *(v253 + 40);
    _s22SummaryItemPricingTypeOMa(0);
    v58 = swift_getEnumCaseMultiPayload();
    v250 = v56;
    v255 = v55;
    if (v58 == 2)
    {
    }

    else if (v58 == 1)
    {
      v66 = sub_1BE04AF64();
      (*(*(v66 - 8) + 8))(v57, v66);
    }

    else
    {
      v59 = v253;
      if (v58)
      {
LABEL_67:
        v67 = v5;
        v68 = v255;

        v69 = (v255 + v59[15]);
        v70 = v32(v69, 1, v31);
        v71 = v265;
        if (!v70)
        {

          v262 = v69;
          v72 = (v69 + v31[5]);
          type metadata accessor for WrappedPass(0);
          v73 = v72;
          v74 = swift_getEnumCaseMultiPayload();
          v257 = v28;
          if (v74 == 2)
          {

            v77 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v78 = sub_1BE04CF34();
            (*(*(v78 - 8) + 8))(v73 + v77, v78);
            v75 = v265;
            v76 = v73;
          }

          else
          {
            v75 = v265;
            if (v74 == 1)
            {
              v76 = v72;
            }

            else
            {
              v76 = v72;
              if (!v74)
              {
              }
            }
          }

          v249 = v31;
          v79 = v76 + v75[6];
          v80 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
          {

            v81 = *(v80 + 20);
            v82 = sub_1BE04DA84();
            (*(*(v82 - 8) + 8))(&v79[v81], v82);
          }

          v83 = (v76 + v75[7]);
          v84 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
          {

            v85 = *(v84 + 28);
            v86 = sub_1BE04AF64();
            v87 = *(v86 - 8);
            if (!(*(v87 + 48))(v83 + v85, 1, v86))
            {
              (*(v87 + 8))(v83 + v85, v86);
            }
          }

          v88 = v76 + v75[10];
          v89 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v89 - 8) + 48))(v88, 1, v89))
          {
            if (*(v88 + 2) != 1)
            {
            }

            if (*(v88 + 9) != 1)
            {
            }

            v90 = *(v89 + 28);
            v91 = sub_1BE04AF64();
            v92 = *(v91 - 8);
            v93 = *(v92 + 48);
            if (!v93(&v88[v90], 1, v91))
            {
              (*(v92 + 8))(&v88[v90], v91);
            }

            v94 = *(v89 + 32);
            if (!v93(&v88[v94], 1, v91))
            {
              (*(v92 + 8))(&v88[v94], v91);
            }
          }

          v95 = (v76 + v265[12]);
          v28 = v257;
          if (*v95)
          {
          }

          v96 = (v76 + v265[13]);
          if (*v96)
          {
          }

          v97 = (v262 + v249[6]);
          if (*v97 != 1)
          {

            if (v97[3])
            {
            }
          }

          v71 = v265;
          v67 = v264;

          v59 = v253;
          v68 = v255;
        }

        v98 = (v68 + v59[16]);
        v5 = v67;
        v4 = v71;
        if (!(*(*(v28 - 8) + 48))(v98, 1, v28))
        {
          if (!v67(v98, 1, v71))
          {
            type metadata accessor for WrappedPass(0);
            v99 = swift_getEnumCaseMultiPayload();
            v258 = v28;
            if (v99 == 2)
            {

              v100 = *(type metadata accessor for PlaceholderPass(0) + 28);
              v101 = sub_1BE04CF34();
              (*(*(v101 - 8) + 8))(v98 + v100, v101);
            }

            else if (v99 <= 1)
            {
            }

            v102 = v98 + v71[6];
            v103 = type metadata accessor for IdentityCredential(0);
            if (!(*(*(v103 - 8) + 48))(v102, 1, v103))
            {

              v104 = *(v103 + 20);
              v105 = sub_1BE04DA84();
              (*(*(v105 - 8) + 8))(&v102[v104], v105);
            }

            v106 = (v98 + v71[7]);
            v107 = type metadata accessor for BalanceInfo(0);
            if (!(*(*(v107 - 8) + 48))(v106, 1, v107))
            {

              v108 = *(v107 + 28);
              v109 = sub_1BE04AF64();
              v110 = *(v109 - 8);
              if (!(*(v110 + 48))(v106 + v108, 1, v109))
              {
                (*(v110 + 8))(v106 + v108, v109);
              }
            }

            v111 = v98 + v4[10];
            v112 = type metadata accessor for PassEligibleRewardsInfo();
            if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
            {
              if (*(v111 + 2) != 1)
              {
              }

              if (*(v111 + 9) != 1)
              {
              }

              v113 = *(v112 + 28);
              v114 = sub_1BE04AF64();
              v115 = *(v114 - 8);
              v116 = *(v115 + 48);
              if (!v116(&v111[v113], 1, v114))
              {
                (*(v115 + 8))(&v111[v113], v114);
              }

              v117 = *(v112 + 32);
              if (!v116(&v111[v117], 1, v114))
              {
                (*(v115 + 8))(&v111[v117], v114);
              }
            }

            v4 = v265;
            v118 = (v98 + v265[12]);
            v28 = v258;
            if (*v118)
            {
            }

            v119 = (v98 + v265[13]);
            v5 = v264;
            if (*v119)
            {
            }
          }

          v68 = v255;
        }

        if (*(v68 + v250[7] + 8))
        {
        }

        v120 = v68 + v250[9];
        if (*(v120 + 8))
        {
        }

        v121 = v68 + v250[10];
        if (*(v121 + 8))
        {
        }

        v122 = v68 + v250[11];
        v123 = type metadata accessor for DeferredPaymentRequest();
        if (!(*(*(v123 - 1) + 48))(v122, 1, v123))
        {

          v124 = v123[7];
          v125 = sub_1BE04AF64();
          v126 = *(v125 - 8);
          if (!(*(v126 + 48))(v122 + v124, 1, v125))
          {
            (*(v126 + 8))(v122 + v124, v125);
          }

          v127 = v123[8];
          v128 = sub_1BE04B3B4();
          v129 = *(v128 - 8);
          if (!(*(v129 + 48))(v122 + v127, 1, v128))
          {
            (*(v129 + 8))(v122 + v127, v128);
          }

          v5 = v264;
        }

        goto LABEL_136;
      }

      v252 = v32;
      v248 = v31;
      v60 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v61 = *(v60 + 24);
      v62 = sub_1BE04AF64();
      v63 = *(v62 - 8);
      v64 = *(v63 + 48);
      if (!v64(v57 + v61, 1, v62))
      {
        (*(v63 + 8))(v57 + v61, v62);
      }

      v65 = *(v60 + 28);
      if (!v64(v57 + v65, 1, v62))
      {
        (*(v63 + 8))(v57 + v65, v62);
      }

      v5 = v264;
      v31 = v248;
      v32 = v252;
    }

    v59 = v253;
    goto LABEL_67;
  }

LABEL_136:

  if (*(v2 + v1[24]))
  {
  }

  v130 = v2 + v1[27];
  if (*(v130 + 8))
  {
  }

  v131 = (v2 + v1[30]);
  if (!v5(v131, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v132 = swift_getEnumCaseMultiPayload();
    if (v132 == 2)
    {

      v133 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v134 = sub_1BE04CF34();
      (*(*(v134 - 8) + 8))(v131 + v133, v134);
    }

    else if (v132 <= 1)
    {
    }

    v135 = v131 + v4[6];
    v136 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v136 - 8) + 48))(v135, 1, v136))
    {

      v137 = *(v136 + 20);
      v138 = sub_1BE04DA84();
      (*(*(v138 - 8) + 8))(&v135[v137], v138);
    }

    v139 = (v131 + v4[7]);
    v140 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v140 - 8) + 48))(v139, 1, v140))
    {

      v141 = *(v140 + 28);
      v142 = sub_1BE04AF64();
      v143 = *(v142 - 8);
      if (!(*(v143 + 48))(v139 + v141, 1, v142))
      {
        (*(v143 + 8))(v139 + v141, v142);
      }
    }

    v144 = v131 + v4[10];
    v145 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v145 - 8) + 48))(v144, 1, v145))
    {
      if (*(v144 + 2) != 1)
      {
      }

      if (*(v144 + 9) != 1)
      {
      }

      v146 = *(v145 + 28);
      v147 = sub_1BE04AF64();
      v148 = *(v147 - 8);
      v149 = *(v148 + 48);
      if (!v149(&v144[v146], 1, v147))
      {
        (*(v148 + 8))(&v144[v146], v147);
      }

      v150 = *(v145 + 32);
      v5 = v264;
      v4 = v265;
      if (!v149(&v144[v150], 1, v147))
      {
        (*(v148 + 8))(&v144[v150], v147);
      }
    }

    v151 = (v131 + v4[12]);
    if (*v151)
    {
    }

    v152 = (v131 + v4[13]);
    if (*v152)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);

  v153 = (v2 + v1[32]);
  v154 = _s11DetailSheetOMa();
  if (!(*(*(v154 - 8) + 48))(v153, 1, v154))
  {
    v155 = swift_getEnumCaseMultiPayload();
    if (v155 <= 1)
    {
      if (!v155)
      {
        if (!v5(v153, 1, v4))
        {
          type metadata accessor for WrappedPass(0);
          v159 = swift_getEnumCaseMultiPayload();
          if (v159 == 2)
          {

            v200 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v201 = sub_1BE04CF34();
            (*(*(v201 - 8) + 8))(v153 + v200, v201);
          }

          else if (v159 <= 1)
          {
          }

          v202 = v153 + v4[6];
          v203 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v203 - 8) + 48))(v202, 1, v203))
          {

            v204 = *(v203 + 20);
            v205 = sub_1BE04DA84();
            (*(*(v205 - 8) + 8))(&v202[v204], v205);
          }

          v206 = (v153 + v4[7]);
          v207 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v207 - 8) + 48))(v206, 1, v207))
          {

            v208 = *(v207 + 28);
            v209 = sub_1BE04AF64();
            v210 = *(v209 - 8);
            if (!(*(v210 + 48))(v206 + v208, 1, v209))
            {
              (*(v210 + 8))(v206 + v208, v209);
            }
          }

          v211 = v153 + v4[10];
          v212 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v212 - 8) + 48))(v211, 1, v212))
          {
            if (*(v211 + 2) != 1)
            {
            }

            if (*(v211 + 9) != 1)
            {
            }

            v213 = *(v212 + 28);
            v214 = sub_1BE04AF64();
            v215 = *(v214 - 8);
            v216 = *(v215 + 48);
            if (!v216(&v211[v213], 1, v214))
            {
              (*(v215 + 8))(&v211[v213], v214);
            }

            v261 = v215;
            v217 = *(v212 + 32);
            v5 = v264;
            v4 = v265;
            if (!v216(&v211[v217], 1, v214))
            {
              (*(v261 + 8))(&v211[v217], v214);
            }
          }

          v218 = (v153 + v4[12]);
          if (*v218)
          {
          }

          v219 = (v153 + v4[13]);
          if (*v219)
          {
          }
        }

        v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

        v221 = v153 + *(v220 + 64);

        v157 = *(v221 + 4);
        goto LABEL_243;
      }

      if (v155 != 1)
      {
        goto LABEL_244;
      }

LABEL_174:
      v157 = *v153;
LABEL_243:

      goto LABEL_244;
    }

    if (v155 != 2)
    {
      if (v155 != 3)
      {
        if (v155 != 4)
        {
          goto LABEL_244;
        }

        type metadata accessor for WrappedPass(0);
        v156 = swift_getEnumCaseMultiPayload();
        if (v156 == 2)
        {

          v180 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v181 = sub_1BE04CF34();
          (*(*(v181 - 8) + 8))(v153 + v180, v181);
        }

        else if (v156 <= 1)
        {
        }

        v182 = v153 + v4[6];
        v183 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v183 - 8) + 48))(v182, 1, v183))
        {

          v184 = *(v183 + 20);
          v185 = sub_1BE04DA84();
          (*(*(v185 - 8) + 8))(&v182[v184], v185);
        }

        v186 = (v153 + v4[7]);
        v187 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v187 - 8) + 48))(v186, 1, v187))
        {

          v188 = *(v187 + 28);
          v189 = sub_1BE04AF64();
          v190 = *(v189 - 8);
          if (!(*(v190 + 48))(v186 + v188, 1, v189))
          {
            (*(v190 + 8))(v186 + v188, v189);
          }
        }

        v191 = v153 + v4[10];
        v192 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v192 - 8) + 48))(v191, 1, v192))
        {
          if (*(v191 + 2) != 1)
          {
          }

          if (*(v191 + 9) != 1)
          {
          }

          v193 = *(v192 + 28);
          v194 = sub_1BE04AF64();
          v195 = *(v194 - 8);
          v196 = *(v195 + 48);
          if (!v196(&v191[v193], 1, v194))
          {
            (*(v195 + 8))(&v191[v193], v194);
          }

          v260 = v195;
          v197 = *(v192 + 32);
          v5 = v264;
          v4 = v265;
          if (!v196(&v191[v197], 1, v194))
          {
            (*(v260 + 8))(&v191[v197], v194);
          }
        }

        v198 = (v153 + v4[12]);
        if (*v198)
        {
        }

        v199 = (v153 + v4[13]);
        if (*v199)
        {
        }

        v157 = *(v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60) + 48));
        goto LABEL_243;
      }

      goto LABEL_174;
    }

    type metadata accessor for WrappedPass(0);
    v158 = swift_getEnumCaseMultiPayload();
    if (v158 == 2)
    {

      v160 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v161 = sub_1BE04CF34();
      (*(*(v161 - 8) + 8))(v153 + v160, v161);
    }

    else if (v158 <= 1)
    {
    }

    v162 = v153 + v4[6];
    v163 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v163 - 8) + 48))(v162, 1, v163))
    {

      v164 = *(v163 + 20);
      v165 = sub_1BE04DA84();
      (*(*(v165 - 8) + 8))(&v162[v164], v165);
    }

    v166 = (v153 + v4[7]);
    v167 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v167 - 8) + 48))(v166, 1, v167))
    {

      v168 = *(v167 + 28);
      v169 = sub_1BE04AF64();
      v170 = *(v169 - 8);
      if (!(*(v170 + 48))(v166 + v168, 1, v169))
      {
        (*(v170 + 8))(v166 + v168, v169);
      }
    }

    v171 = v153 + v4[10];
    v172 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v172 - 8) + 48))(v171, 1, v172))
    {
      if (*(v171 + 2) != 1)
      {
      }

      if (*(v171 + 9) != 1)
      {
      }

      v173 = *(v172 + 28);
      v174 = sub_1BE04AF64();
      v175 = *(v174 - 8);
      v176 = *(v175 + 48);
      if (!v176(&v171[v173], 1, v174))
      {
        (*(v175 + 8))(&v171[v173], v174);
      }

      v259 = v175;
      v177 = *(v172 + 32);
      v5 = v264;
      v4 = v265;
      if (!v176(&v171[v177], 1, v174))
      {
        (*(v259 + 8))(&v171[v177], v174);
      }
    }

    v178 = (v153 + v4[12]);
    if (*v178)
    {
    }

    v179 = (v153 + v4[13]);
    if (*v179)
    {
    }
  }

LABEL_244:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);

  if (*(v2 + v1[34] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + v1[34]);
  }

  v222 = (v2 + v1[35]);
  if (!v5(v222, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v223 = swift_getEnumCaseMultiPayload();
    if (v223 == 2)
    {

      v224 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v225 = sub_1BE04CF34();
      (*(*(v225 - 8) + 8))(v222 + v224, v225);
    }

    else if (v223 <= 1)
    {
    }

    v226 = v222 + v4[6];
    v227 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v227 - 8) + 48))(v226, 1, v227))
    {

      v228 = *(v227 + 20);
      v229 = sub_1BE04DA84();
      (*(*(v229 - 8) + 8))(&v226[v228], v229);
    }

    v230 = (v222 + v4[7]);
    v231 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v231 - 8) + 48))(v230, 1, v231))
    {

      v232 = *(v231 + 28);
      v233 = sub_1BE04AF64();
      v234 = *(v233 - 8);
      if (!(*(v234 + 48))(v230 + v232, 1, v233))
      {
        (*(v234 + 8))(v230 + v232, v233);
      }
    }

    v235 = v222 + v4[10];
    v236 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v236 - 8) + 48))(v235, 1, v236))
    {
      if (*(v235 + 2) != 1)
      {
      }

      if (*(v235 + 9) != 1)
      {
      }

      v237 = *(v236 + 28);
      v238 = sub_1BE04AF64();
      v239 = *(v238 - 8);
      v240 = *(v239 + 48);
      if (!v240(&v235[v237], 1, v238))
      {
        (*(v239 + 8))(&v235[v237], v238);
      }

      v241 = *(v236 + 32);
      v4 = v265;
      if (!v240(&v235[v241], 1, v238))
      {
        (*(v239 + 8))(&v235[v241], v238);
      }
    }

    v242 = (v222 + v4[12]);
    if (*v242)
    {
    }

    v243 = (v222 + v4[13]);
    if (*v243)
    {
    }
  }

  v244 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v245 = sub_1BE04C884();
    (*(*(v245 - 8) + 8))(v2 + v244, v245);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0A0648()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0A0690()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v294 = *(*(v1 - 1) + 80);
  v291 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for AvailablePass(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v292 = (v294 + 16) & ~v294;
  v293 = *(v3 + 64);
  v297 = v0;
  v6 = v0 + v292;
  v7 = (v0 + v292 + v1[6]);
  v298 = v5;
  v295 = v4;
  if (!v4(v7, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v9 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v10 = sub_1BE04CF34();
      (*(*(v10 - 8) + 8))(v7 + v9, v10);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v11 = v7 + v2[6];
    v12 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 20);
      v14 = sub_1BE04DA84();
      (*(*(v14 - 8) + 8))(&v11[v13], v14);
    }

    v15 = (v7 + v2[7]);
    v16 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {

      v17 = *(v16 + 28);
      v18 = sub_1BE04AF64();
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(v15 + v17, 1, v18))
      {
        (*(v19 + 8))(v15 + v17, v18);
      }
    }

    v20 = v7 + v2[10];
    v21 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      if (*(v20 + 2) != 1)
      {
      }

      if (*(v20 + 9) != 1)
      {
      }

      v22 = *(v21 + 28);
      v23 = sub_1BE04AF64();
      v287 = *(v23 - 8);
      v24 = *(v287 + 48);
      if (!v24(&v20[v22], 1, v23))
      {
        (*(v287 + 8))(&v20[v22], v23);
      }

      v25 = *(v21 + 32);
      v26 = v24(&v20[v25], 1, v23);
      v5 = v298;
      v4 = v295;
      if (!v26)
      {
        (*(v287 + 8))(&v20[v25], v23);
      }
    }

    v27 = (v7 + v2[12]);
    if (*v27)
    {
    }

    v28 = (v7 + v2[13]);
    if (*v28)
    {
    }
  }

  v29 = type metadata accessor for Passes(0);

  v30 = v6 + v1[7];
  if (*(v30 + 48))
  {
    sub_1BD0D455C(*v30, *(v30 + 8), *(v30 + 16));
  }

  v31 = (v6 + v1[8]);
  v32 = type metadata accessor for PeerPaymentModel();
  v33 = *(*(v32 - 8) + 48);
  if (!v33(v31, 1, v32))
  {

    v34 = (v31 + *(v32 + 20));
    type metadata accessor for WrappedPass(0);
    v35 = swift_getEnumCaseMultiPayload();
    v281 = v29;
    v271 = v33;
    if (v35 == 2)
    {

      v36 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v37 = sub_1BE04CF34();
      (*(*(v37 - 8) + 8))(v34 + v36, v37);
    }

    else if (v35 <= 1)
    {
    }

    v278 = v32;
    v38 = v34 + v2[6];
    v39 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
    {

      v40 = *(v39 + 20);
      v41 = sub_1BE04DA84();
      (*(*(v41 - 8) + 8))(&v38[v40], v41);
    }

    v42 = (v34 + v2[7]);
    v43 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
    {

      v44 = *(v43 + 28);
      v45 = sub_1BE04AF64();
      v46 = *(v45 - 8);
      if (!(*(v46 + 48))(v42 + v44, 1, v45))
      {
        (*(v46 + 8))(v42 + v44, v45);
      }
    }

    v47 = v34 + v2[10];
    v48 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
    {
      if (*(v47 + 2) != 1)
      {
      }

      v276 = v2;
      if (*(v47 + 9) != 1)
      {
      }

      v49 = *(v48 + 28);
      v50 = sub_1BE04AF64();
      v274 = *(v50 - 8);
      v51 = *(v274 + 48);
      if (!v51(&v47[v49], 1, v50))
      {
        (*(v274 + 8))(&v47[v49], v50);
      }

      v52 = *(v48 + 32);
      v2 = v276;
      if (!v51(&v47[v52], 1, v50))
      {
        (*(v274 + 8))(&v47[v52], v50);
      }
    }

    v53 = (v34 + v2[12]);
    v32 = v278;
    v29 = v281;
    if (*v53)
    {
    }

    v54 = (v34 + v2[13]);
    v5 = v298;
    v4 = v295;
    if (*v54)
    {
    }

    v55 = (v31 + *(v278 + 24));
    if (*v55 != 1)
    {

      if (v55[3])
      {
      }
    }

    v33 = v271;
  }

  v56 = v6 + v1[9];
  v57 = _s14PaymentSummaryVMa();
  if (!(*(*(v57 - 1) + 48))(v56, 1, v57))
  {

    v270 = _s11TotalAmountVMa(0);
    v58 = v56 + v270[10];
    _s22SummaryItemPricingTypeOMa(0);
    v59 = swift_getEnumCaseMultiPayload();
    v275 = v56;
    switch(v59)
    {
      case 2:

        break;
      case 1:
        v66 = sub_1BE04AF64();
        (*(*(v66 - 8) + 8))(v58, v66);
        break;
      case 0:
        v272 = v33;
        v279 = v32;
        v267 = v57;
        v60 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v61 = *(v60 + 24);
        v62 = sub_1BE04AF64();
        v63 = *(v62 - 8);
        v64 = *(v63 + 48);
        if (!v64(v58 + v61, 1, v62))
        {
          (*(v63 + 8))(v58 + v61, v62);
        }

        v65 = *(v60 + 28);
        if (!v64(v58 + v65, 1, v62))
        {
          (*(v63 + 8))(v58 + v65, v62);
        }

        v4 = v295;
        v32 = v279;
        v57 = v267;
        v33 = v272;
        break;
    }

    v277 = v2;
    v67 = v4;
    v68 = v270;
    v69 = v275;

    v70 = (v275 + v270[15]);
    v71 = v33(v70, 1, v32);
    v72 = v298;
    if (!v71)
    {
      v282 = v29;

      v288 = v70;
      v73 = (v70 + *(v32 + 20));
      type metadata accessor for WrappedPass(0);
      v74 = swift_getEnumCaseMultiPayload();
      v268 = v57;
      if (v74 == 2)
      {

        v76 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v77 = sub_1BE04CF34();
        (*(*(v77 - 8) + 8))(v73 + v76, v77);
        v75 = v277;
      }

      else
      {
        v75 = v277;
        if (v74 <= 1)
        {
        }
      }

      v280 = v32;
      v78 = v73 + v75[6];
      v79 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v79 - 8) + 48))(v78, 1, v79))
      {

        v80 = *(v79 + 20);
        v81 = sub_1BE04DA84();
        (*(*(v81 - 8) + 8))(&v78[v80], v81);
      }

      v82 = (v73 + v75[7]);
      v83 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v83 - 8) + 48))(v82, 1, v83))
      {

        v84 = *(v83 + 28);
        v85 = sub_1BE04AF64();
        v86 = *(v85 - 8);
        if (!(*(v86 + 48))(v82 + v84, 1, v85))
        {
          (*(v86 + 8))(v82 + v84, v85);
        }
      }

      v87 = v73 + v75[10];
      v88 = type metadata accessor for PassEligibleRewardsInfo();
      if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
      {
        if (*(v87 + 2) != 1)
        {
        }

        if (*(v87 + 9) != 1)
        {
        }

        v89 = *(v88 + 28);
        v90 = sub_1BE04AF64();
        v273 = *(v90 - 8);
        v91 = *(v273 + 48);
        if (!v91(&v87[v89], 1, v90))
        {
          (*(v273 + 8))(&v87[v89], v90);
        }

        v92 = *(v88 + 32);
        if (!v91(&v87[v92], 1, v90))
        {
          (*(v273 + 8))(&v87[v92], v90);
        }
      }

      v93 = (v73 + v75[12]);
      if (*v93)
      {
      }

      v94 = (v73 + v75[13]);
      v57 = v268;
      if (*v94)
      {
      }

      v29 = v282;
      v95 = v288;
      v96 = (v288 + *(v280 + 24));
      if (*v96 != 1)
      {

        if (v96[3])
        {
        }

        v95 = v288;
      }

      v67 = v295;
      v72 = v298;

      v68 = v270;
      v69 = v275;
    }

    v97 = (v69 + v68[16]);
    v5 = v72;
    v4 = v67;
    v2 = v277;
    if (!(*(*(v29 - 8) + 48))(v97, 1, v29))
    {
      if (!v4(v97, 1, v277))
      {
        type metadata accessor for WrappedPass(0);
        v98 = swift_getEnumCaseMultiPayload();
        v283 = v29;
        if (v98 == 2)
        {

          v99 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v100 = sub_1BE04CF34();
          (*(*(v100 - 8) + 8))(v97 + v99, v100);
        }

        else if (v98 <= 1)
        {
        }

        v101 = v97 + v277[6];
        v102 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v102 - 8) + 48))(v101, 1, v102))
        {

          v103 = *(v102 + 20);
          v104 = sub_1BE04DA84();
          (*(*(v104 - 8) + 8))(&v101[v103], v104);
        }

        v269 = v57;
        v105 = (v97 + v277[7]);
        v106 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v106 - 8) + 48))(v105, 1, v106))
        {

          v107 = *(v106 + 28);
          v108 = sub_1BE04AF64();
          v109 = *(v108 - 8);
          if (!(*(v109 + 48))(v105 + v107, 1, v108))
          {
            (*(v109 + 8))(v105 + v107, v108);
          }
        }

        v110 = v97 + v277[10];
        v111 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v111 - 8) + 48))(v110, 1, v111))
        {
          if (*(v110 + 2) != 1)
          {
          }

          if (*(v110 + 9) != 1)
          {
          }

          v112 = *(v111 + 28);
          v113 = sub_1BE04AF64();
          v289 = *(v113 - 8);
          v114 = *(v289 + 48);
          if (!v114(&v110[v112], 1, v113))
          {
            (*(v289 + 8))(&v110[v112], v113);
          }

          v115 = *(v111 + 32);
          if (!v114(&v110[v115], 1, v113))
          {
            (*(v289 + 8))(&v110[v115], v113);
          }
        }

        v116 = (v97 + v277[12]);
        v29 = v283;
        if (*v116)
        {
        }

        v117 = (v97 + v277[13]);
        v5 = v298;
        v4 = v295;
        v57 = v269;
        if (*v117)
        {
        }
      }

      v69 = v275;
    }

    if (*(v69 + v57[7] + 8))
    {
    }

    v118 = v69 + v57[9];
    if (*(v118 + 8))
    {
    }

    v119 = v69 + v57[10];
    if (*(v119 + 8))
    {
    }

    v120 = v69 + v57[11];
    v121 = type metadata accessor for DeferredPaymentRequest();
    if (!(*(*(v121 - 1) + 48))(v120, 1, v121))
    {

      v122 = v121[7];
      v123 = sub_1BE04AF64();
      v124 = *(v123 - 8);
      if (!(*(v124 + 48))(v120 + v122, 1, v123))
      {
        (*(v124 + 8))(v120 + v122, v123);
      }

      v125 = v121[8];
      v126 = sub_1BE04B3B4();
      v127 = *(v126 - 8);
      if (!(*(v127 + 48))(v120 + v125, 1, v126))
      {
        (*(v127 + 8))(v120 + v125, v126);
      }

      v4 = v295;
      v5 = v298;
    }
  }

  if (*(v6 + v1[24]))
  {
  }

  v128 = v6 + v1[27];
  if (*(v128 + 8))
  {
  }

  v129 = (v6 + v1[30]);
  if (!v4(v129, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    v130 = swift_getEnumCaseMultiPayload();
    if (v130 == 2)
    {

      v131 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v132 = sub_1BE04CF34();
      (*(*(v132 - 8) + 8))(v129 + v131, v132);
    }

    else if (v130 <= 1)
    {
    }

    v133 = v129 + v2[6];
    v134 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v134 - 8) + 48))(v133, 1, v134))
    {

      v135 = *(v134 + 20);
      v136 = sub_1BE04DA84();
      (*(*(v136 - 8) + 8))(&v133[v135], v136);
    }

    v137 = (v129 + v2[7]);
    v138 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v138 - 8) + 48))(v137, 1, v138))
    {

      v139 = *(v138 + 28);
      v140 = sub_1BE04AF64();
      v141 = *(v140 - 8);
      if (!(*(v141 + 48))(v137 + v139, 1, v140))
      {
        (*(v141 + 8))(v137 + v139, v140);
      }
    }

    v142 = v129 + v2[10];
    v143 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v143 - 8) + 48))(v142, 1, v143))
    {
      if (*(v142 + 2) != 1)
      {
      }

      if (*(v142 + 9) != 1)
      {
      }

      v144 = *(v143 + 28);
      v145 = sub_1BE04AF64();
      v290 = *(v145 - 8);
      v146 = *(v290 + 48);
      if (!v146(&v142[v144], 1, v145))
      {
        (*(v290 + 8))(&v142[v144], v145);
      }

      v147 = *(v143 + 32);
      v148 = v146(&v142[v147], 1, v145);
      v5 = v298;
      v4 = v295;
      if (!v148)
      {
        (*(v290 + 8))(&v142[v147], v145);
      }
    }

    v149 = (v129 + v2[12]);
    if (*v149)
    {
    }

    v150 = (v129 + v2[13]);
    if (*v150)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);

  v151 = (v6 + v1[32]);
  v152 = _s11DetailSheetOMa();
  if (!(*(*(v152 - 8) + 48))(v151, 1, v152))
  {
    v153 = swift_getEnumCaseMultiPayload();
    if (v153 <= 1)
    {
      if (!v153)
      {
        if (!v4(v151, 1, v2))
        {
          type metadata accessor for WrappedPass(0);
          v157 = swift_getEnumCaseMultiPayload();
          if (v157 == 2)
          {

            v196 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v197 = sub_1BE04CF34();
            (*(*(v197 - 8) + 8))(v151 + v196, v197);
          }

          else if (v157 <= 1)
          {
          }

          v198 = v151 + v2[6];
          v199 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v199 - 8) + 48))(v198, 1, v199))
          {

            v200 = *(v199 + 20);
            v201 = sub_1BE04DA84();
            (*(*(v201 - 8) + 8))(&v198[v200], v201);
          }

          v202 = (v151 + v2[7]);
          v203 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v203 - 8) + 48))(v202, 1, v203))
          {

            v204 = *(v203 + 28);
            v205 = sub_1BE04AF64();
            v206 = *(v205 - 8);
            if (!(*(v206 + 48))(v202 + v204, 1, v205))
            {
              (*(v206 + 8))(v202 + v204, v205);
            }
          }

          v207 = v151 + v2[10];
          v208 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v208 - 8) + 48))(v207, 1, v208))
          {
            if (*(v207 + 2) != 1)
            {
            }

            if (*(v207 + 9) != 1)
            {
            }

            v209 = *(v208 + 28);
            v210 = sub_1BE04AF64();
            v286 = *(v210 - 8);
            v211 = *(v286 + 48);
            if (!v211(&v207[v209], 1, v210))
            {
              (*(v286 + 8))(&v207[v209], v210);
            }

            v212 = *(v208 + 32);
            v5 = v298;
            v4 = v295;
            if (!v211(&v207[v212], 1, v210))
            {
              (*(v286 + 8))(&v207[v212], v210);
            }
          }

          v213 = (v151 + v2[12]);
          if (*v213)
          {
          }

          v214 = (v151 + v2[13]);
          if (*v214)
          {
          }
        }

        v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

        v216 = v151 + *(v215 + 64);

        v155 = *(v216 + 4);
        goto LABEL_240;
      }

      if (v153 != 1)
      {
        goto LABEL_241;
      }

LABEL_171:
      v155 = *v151;
LABEL_240:

      goto LABEL_241;
    }

    if (v153 != 2)
    {
      if (v153 != 3)
      {
        if (v153 != 4)
        {
          goto LABEL_241;
        }

        type metadata accessor for WrappedPass(0);
        v154 = swift_getEnumCaseMultiPayload();
        if (v154 == 2)
        {

          v177 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v178 = sub_1BE04CF34();
          (*(*(v178 - 8) + 8))(v151 + v177, v178);
        }

        else if (v154 <= 1)
        {
        }

        v179 = v151 + v2[6];
        v180 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v180 - 8) + 48))(v179, 1, v180))
        {

          v181 = *(v180 + 20);
          v182 = sub_1BE04DA84();
          (*(*(v182 - 8) + 8))(&v179[v181], v182);
        }

        v183 = (v151 + v2[7]);
        v184 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v184 - 8) + 48))(v183, 1, v184))
        {

          v185 = *(v184 + 28);
          v186 = sub_1BE04AF64();
          v187 = *(v186 - 8);
          if (!(*(v187 + 48))(v183 + v185, 1, v186))
          {
            (*(v187 + 8))(v183 + v185, v186);
          }
        }

        v188 = v151 + v2[10];
        v189 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v189 - 8) + 48))(v188, 1, v189))
        {
          if (*(v188 + 2) != 1)
          {
          }

          if (*(v188 + 9) != 1)
          {
          }

          v190 = *(v189 + 28);
          v191 = sub_1BE04AF64();
          v285 = *(v191 - 8);
          v192 = *(v285 + 48);
          if (!v192(&v188[v190], 1, v191))
          {
            (*(v285 + 8))(&v188[v190], v191);
          }

          v193 = *(v189 + 32);
          v5 = v298;
          v4 = v295;
          if (!v192(&v188[v193], 1, v191))
          {
            (*(v285 + 8))(&v188[v193], v191);
          }
        }

        v194 = (v151 + v2[12]);
        if (*v194)
        {
        }

        v195 = (v151 + v2[13]);
        if (*v195)
        {
        }

        v155 = *(v151 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60) + 48));
        goto LABEL_240;
      }

      goto LABEL_171;
    }

    type metadata accessor for WrappedPass(0);
    v156 = swift_getEnumCaseMultiPayload();
    if (v156 == 2)
    {

      v158 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v159 = sub_1BE04CF34();
      (*(*(v159 - 8) + 8))(v151 + v158, v159);
    }

    else if (v156 <= 1)
    {
    }

    v160 = v151 + v2[6];
    v161 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v161 - 8) + 48))(v160, 1, v161))
    {

      v162 = *(v161 + 20);
      v163 = sub_1BE04DA84();
      (*(*(v163 - 8) + 8))(&v160[v162], v163);
    }

    v164 = (v151 + v2[7]);
    v165 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v165 - 8) + 48))(v164, 1, v165))
    {

      v166 = *(v165 + 28);
      v167 = sub_1BE04AF64();
      v168 = *(v167 - 8);
      if (!(*(v168 + 48))(v164 + v166, 1, v167))
      {
        (*(v168 + 8))(v164 + v166, v167);
      }
    }

    v169 = v151 + v2[10];
    v170 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v170 - 8) + 48))(v169, 1, v170))
    {
      if (*(v169 + 2) != 1)
      {
      }

      if (*(v169 + 9) != 1)
      {
      }

      v171 = *(v170 + 28);
      v172 = sub_1BE04AF64();
      v284 = *(v172 - 8);
      v173 = *(v284 + 48);
      if (!v173(&v169[v171], 1, v172))
      {
        (*(v284 + 8))(&v169[v171], v172);
      }

      v174 = *(v170 + 32);
      v5 = v298;
      v4 = v295;
      if (!v173(&v169[v174], 1, v172))
      {
        (*(v284 + 8))(&v169[v174], v172);
      }
    }

    v175 = (v151 + v2[12]);
    if (*v175)
    {
    }

    v176 = (v151 + v2[13]);
    if (*v176)
    {
    }
  }

LABEL_241:
  v217 = v292 + v291;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);

  if (*(v6 + v1[34] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6 + v1[34]);
  }

  v218 = v217 + v5;

  v219 = (v6 + v1[35]);
  if (!v4(v219, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    v220 = swift_getEnumCaseMultiPayload();
    v296 = v217 + v5;
    if (v220 == 2)
    {

      v221 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v222 = sub_1BE04CF34();
      (*(*(v222 - 8) + 8))(v219 + v221, v222);
    }

    else if (v220 <= 1)
    {
    }

    v223 = v219 + v2[6];
    v224 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v224 - 8) + 48))(v223, 1, v224))
    {

      v225 = *(v224 + 20);
      v226 = sub_1BE04DA84();
      (*(*(v226 - 8) + 8))(&v223[v225], v226);
    }

    v227 = (v219 + v2[7]);
    v228 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v228 - 8) + 48))(v227, 1, v228))
    {

      v229 = *(v228 + 28);
      v230 = sub_1BE04AF64();
      v231 = *(v230 - 8);
      if (!(*(v231 + 48))(v227 + v229, 1, v230))
      {
        (*(v231 + 8))(v227 + v229, v230);
      }
    }

    v232 = v219 + v2[10];
    v233 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v233 - 8) + 48))(v232, 1, v233))
    {
      if (*(v232 + 2) != 1)
      {
      }

      if (*(v232 + 9) != 1)
      {
      }

      v234 = *(v233 + 28);
      v235 = sub_1BE04AF64();
      v299 = *(v235 - 8);
      v236 = *(v299 + 48);
      if (!v236(&v232[v234], 1, v235))
      {
        (*(v299 + 8))(&v232[v234], v235);
      }

      v237 = *(v233 + 32);
      v5 = v298;
      if (!v236(&v232[v237], 1, v235))
      {
        (*(v299 + 8))(&v232[v237], v235);
      }
    }

    v238 = (v219 + v2[12]);
    if (*v238)
    {
    }

    v239 = (v219 + v2[13]);
    v218 = v296;
    if (*v239)
    {
    }
  }

  v240 = v218 & ~v5;

  v241 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v242 = sub_1BE04C884();
    (*(*(v242 - 8) + 8))(v6 + v241, v242);
  }

  else
  {
  }

  v243 = v297;
  v244 = (v297 + v240);
  type metadata accessor for WrappedPass(0);
  v245 = swift_getEnumCaseMultiPayload();
  if (v245 == 2)
  {

    v246 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v247 = sub_1BE04CF34();
    (*(*(v247 - 8) + 8))(v244 + v246, v247);
  }

  else if (v245 <= 1)
  {
  }

  v248 = v244 + v2[6];
  v249 = type metadata accessor for IdentityCredential(0);
  if (!(*(*(v249 - 8) + 48))(v248, 1, v249))
  {

    v250 = *(v249 + 20);
    v251 = sub_1BE04DA84();
    (*(*(v251 - 8) + 8))(&v248[v250], v251);
  }

  v252 = (v244 + v2[7]);
  v253 = type metadata accessor for BalanceInfo(0);
  if (!(*(*(v253 - 8) + 48))(v252, 1, v253))
  {

    v254 = *(v253 + 28);
    v255 = sub_1BE04AF64();
    v256 = *(v255 - 8);
    if (!(*(v256 + 48))(v252 + v254, 1, v255))
    {
      (*(v256 + 8))(v252 + v254, v255);
    }
  }

  v257 = v244 + v2[10];
  v258 = type metadata accessor for PassEligibleRewardsInfo();
  if (!(*(*(v258 - 8) + 48))(v257, 1, v258))
  {
    if (*(v257 + 2) != 1)
    {
    }

    if (*(v257 + 9) != 1)
    {
    }

    v259 = *(v258 + 28);
    v260 = sub_1BE04AF64();
    v261 = *(v260 - 8);
    v262 = *(v261 + 48);
    if (!v262(&v257[v259], 1, v260))
    {
      (*(v261 + 8))(&v257[v259], v260);
    }

    v263 = *(v258 + 32);
    v243 = v297;
    if (!v262(&v257[v263], 1, v260))
    {
      (*(v261 + 8))(&v257[v263], v260);
    }
  }

  v264 = (v244 + v2[12]);
  if (*v264)
  {
  }

  v265 = (v244 + v2[13]);
  if (*v265)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0A3ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s31SpendingSummaryDetailsViewModelVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_1BD0A3B94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s31SpendingSummaryDetailsViewModelVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1BD0A3C58()
{
  v37 = _s17SummaryDetailViewVMa(0);
  v1 = *(*(v37 - 8) + 80);
  v38 = *(*(v37 - 8) + 64);
  v2 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
  v36 = *(v2 - 8);
  v3 = *(v36 + 80);
  v4 = v0 + ((v1 + 16) & ~v1);
  v5 = sub_1BE04AFE4();
  v34 = *(*(v5 - 8) + 8);
  v35 = v5;
  v34(v4);
  v6 = _s31SpendingSummaryDetailsViewModelVMa(0);
  v7 = v4 + *(v6 + 20);
  v8 = sub_1BE04AF64();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v11 = v8;
  v12 = v0;
  v9(v7 + *(v10 + 36), v11);
  v13 = v2;
  v14 = v4 + *(v6 + 28);
  v15 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v16 = (*(*(v15 - 1) + 48))(v14, 1, v15);
  v18 = v38;
  v17 = (v1 + 16) & ~v1;
  if (!v16)
  {
    v33 = v3;
    v32 = v0;
    (v34)(v14, v35);
    v19 = v15[5];
    v20 = sub_1BE0493F4();
    v21 = *(*(v20 - 8) + 8);
    v21(v14 + v19, v20);
    v22 = v15[6];
    v23 = type metadata accessor for FinanceKitSpendingTrend();
    if (!(*(*(v23 - 8) + 48))(v14 + v22, 1, v23) && swift_getEnumCaseMultiPayload() <= 3)
    {
      v21(v14 + v22, v20);
    }

    v24 = v14 + v15[9];
    v25 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
    {
      v21(v24, v20);
    }

    v26 = v14 + v15[10];
    v27 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
    {
      v21(v26, v20);
    }

    v28 = v14 + v15[11];
    if (!(*(v36 + 48))(v28, 1, v13))
    {
      v21(v28, v20);
    }

    v12 = v32;
    v3 = v33;
    v18 = v38;
    v17 = (v1 + 16) & ~v1;
  }

  v29 = (v17 + v18 + v3) & ~v3;

  v30 = sub_1BE0493F4();
  (*(*(v30 - 8) + 8))(v12 + v29, v30);

  return swift_deallocObject();
}

uint64_t sub_1BD0A4148@<X0>(_WORD *a1@<X8>)
{
  result = sub_1BE049AF4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0A4174()
{
  v1 = _s17SummaryDetailViewVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v38 = (v2 + 16) & ~v2;
  v37 = *(*(v1 - 8) + 64);
  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v6 = *(v4 + 80);
  v7 = v0 + v38;
  v39 = v3;
  v5(v0 + v38);
  v8 = v5;
  v9 = _s31SpendingSummaryDetailsViewModelVMa(0);
  v10 = v7 + *(v9 + 20);
  v11 = sub_1BE04AF64();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v14 = v11;
  v15 = v7;
  v12(v10 + *(v13 + 36), v14);
  v16 = v8;
  v17 = v36;
  v18 = v15 + *(v9 + 28);
  v19 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v20 = (*(*(v19 - 1) + 48))(v18, 1, v19);
  v22 = v37;
  v21 = v38;
  if (!v20)
  {
    (v8)(v18, v39);
    v23 = v19[5];
    v24 = sub_1BE0493F4();
    v25 = *(*(v24 - 8) + 8);
    v25(v18 + v23, v24);
    v26 = v19[6];
    v27 = type metadata accessor for FinanceKitSpendingTrend();
    if (!(*(*(v27 - 8) + 48))(v18 + v26, 1, v27) && swift_getEnumCaseMultiPayload() <= 3)
    {
      v25(v18 + v26, v24);
    }

    v28 = v18 + v19[9];
    v29 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {
      v25(v28, v24);
    }

    v30 = v18 + v19[10];
    v31 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
    {
      v25(v30, v24);
    }

    v32 = v18 + v19[11];
    v33 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
    if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
    {
      v25(v32, v24);
    }

    v17 = v36;
    v21 = v38;
    v16 = v8;
    v22 = v37;
  }

  v34 = (v21 + v22 + v6) & ~v6;

  v16(v17 + v34, v39);

  return swift_deallocObject();
}

uint64_t sub_1BD0A4610()
{
  v1 = *(*(_s17SummaryDetailViewVMa(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  v22 = sub_1BE04AFE4();
  v23 = (*(v22 - 8) + 8);
  v24 = *v23;
  (*v23)(v2);
  v3 = _s31SpendingSummaryDetailsViewModelVMa(0);
  v4 = v2 + *(v3 + 20);
  v5 = sub_1BE04AF64();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v6(v4 + *(v7 + 36), v5);
  v8 = v2 + *(v3 + 28);
  v9 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    (v24)(v8, v22);
    v10 = v9[5];
    v11 = sub_1BE0493F4();
    v12 = *(*(v11 - 8) + 8);
    v12(v8 + v10, v11);
    v13 = v9[6];
    v14 = type metadata accessor for FinanceKitSpendingTrend();
    if (!(*(*(v14 - 8) + 48))(v8 + v13, 1, v14) && swift_getEnumCaseMultiPayload() <= 3)
    {
      v12(v8 + v13, v11);
    }

    v15 = v8 + v9[9];
    v16 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {
      v12(v15, v11);
    }

    v17 = v8 + v9[10];
    v18 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      v12(v17, v11);
    }

    v19 = v8 + v9[11];
    v20 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      v12(v19, v11);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0A4A64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1BD0A4BD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BE04AFE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BD0A4D2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50678);
  sub_1BD0DE4F4(&qword_1EBD50690, &qword_1EBD50678);
  swift_getOpaqueTypeConformance2();
  sub_1BD6E4EF0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0A4E14()
{
  v1 = _s17GroupBreakdownRowVMa(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_1BE04AFE4();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = v2 + v1[5];
  v6 = sub_1BE04AF64();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v7(v5 + *(v8 + 36), v6);
  v9 = v2 + v1[6];
  v4(v9, v3);
  v10 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(0);

  v4(v9 + v10[6], v3);
  v11 = v10[7];
  v12 = sub_1BE0491F4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v9 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = v10[8];
  v15 = sub_1BE049B04();
  (*(*(v15 - 8) + 8))(v9 + v14, v15);

  v16 = v10[10];
  v17 = sub_1BE0493F4();
  v18 = *(*(v17 - 8) + 8);
  v18(v9 + v16, v17);
  v19 = v10[11];
  v20 = type metadata accessor for FinanceKitSpendingTrend();
  if (!(*(*(v20 - 8) + 48))(v9 + v19, 1, v20) && swift_getEnumCaseMultiPayload() <= 3)
  {
    v18(v9 + v19, v17);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0A516C()
{
  v1 = _s17GroupBreakdownRowVMa(0);
  v2 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);
  v4 = sub_1BE04AFE4();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = v3 + v1[5];
  v7 = sub_1BE04AF64();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v8(v6 + *(v9 + 36), v7);
  v10 = v3 + v1[6];
  v5(v10, v4);
  v11 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(0);

  v5(v10 + v11[6], v4);
  v12 = v11[7];
  v13 = sub_1BE0491F4();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v10 + v12, 1, v13))
  {
    (*(v14 + 8))(v10 + v12, v13);
  }

  v15 = v11[8];
  v16 = sub_1BE049B04();
  (*(*(v16 - 8) + 8))(v10 + v15, v16);

  v17 = v11[10];
  v18 = sub_1BE0493F4();
  v19 = *(*(v18 - 8) + 8);
  v19(v10 + v17, v18);
  v20 = v11[11];
  v21 = type metadata accessor for FinanceKitSpendingTrend();
  if (!(*(*(v21 - 8) + 48))(v10 + v20, 1, v21) && swift_getEnumCaseMultiPayload() <= 3)
  {
    v19(v10 + v20, v18);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0A54CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37258);
  sub_1BD0DE4F4(&qword_1EBD50890, &qword_1EBD37258);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0A5570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD509C8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1BD0A5638(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD509C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0A56E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_1BD0A57A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0A585C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BE04F384();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BD0A58C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F294();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0A5918@<X0>(void *a1@<X8>)
{
  result = sub_1BE04F1A4();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD0A596C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetStatusMessageContent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0A59D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetStatusMessageContent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0A5A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0A5ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0A5B54()
{
  if (*(v0 + 24) != 255)
  {
    sub_1BD528638(*(v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0A5B9C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0A5BE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BD0A5D20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0A5E68()
{
  v1 = type metadata accessor for PaymentOfferSelectorOverlay();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BE04E664();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + v1[9];
  if (*v6 >= 4uLL)
  {
  }

  v7 = (v3 + v1[10]);
  v8 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_1BE04AA64();
      (*(*(v9 - 8) + 8))(v7, v9);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  return swift_deallocObject();
}

uint64_t sub_1BD0A60F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0A6184()
{
  v1 = type metadata accessor for PaymentOfferSelectorOverlay();
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = (v2 + v1[9]);
  if (*v5 >= 4)
  {
  }

  v6 = (v2 + v1[10]);
  v7 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = sub_1BE04AA64();
      (*(*(v8 - 8) + 8))(v6, v8);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  return swift_deallocObject();
}

uint64_t sub_1BD0A644C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37270);
  sub_1BD70BE08();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0A6574()
{
  sub_1BE04EBD4();
  sub_1BD18596C();
  return swift_getWitnessTable();
}

uint64_t sub_1BD0A65E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F0A4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0A663C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for WrappedPass(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0A66E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = type metadata accessor for WrappedPass(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0A678C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0A67CC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0A680C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0A684C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0A6884()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0A68BC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0A6904()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v0 + v2);
  v5 = type metadata accessor for FeatureError(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {

    v6 = *(v5 + 20);
    v7 = sub_1BE04B824();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0A6A9C()
{
  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0A6AF4()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0A6B4C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0A6BA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0A6C64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0A6D20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD510E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0A6D9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0A6E58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0A6F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0A7000()
{
  v1 = (type metadata accessor for PeerPaymentGroupRecipientPickerView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0A7154()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0A71C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BD0A7294(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0A7364(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0A7420(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0A74D0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1BE0493F4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1BE04A974();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_1BE04AFE4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_1BD0A7690(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1BE0493F4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1BE04A974();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_1BE04AFE4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1BD0A7850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
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

uint64_t sub_1BD0A7918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
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

uint64_t sub_1BD0A79D0()
{
  v1 = *(type metadata accessor for FinanceKitTransactionHistoryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0) + 20);
  v4 = sub_1BE048F54();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0A7B18()
{
  v1 = (type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(type metadata accessor for FinanceKitTransactionHistoryView(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + v2;

  v7 = v1[8];
  v8 = sub_1BE0493F4();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[9];
  v10 = sub_1BE04A974();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = v1[11];
  v12 = sub_1BE04AFE4();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  v13 = v6 + v1[12];
  v14 = type metadata accessor for TransactionContext(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v15 = sub_1BE049A94();
    (*(*(v15 - 8) + 8))(v13, v15);
    v16 = v14[5];
    v17 = sub_1BE0495A4();
    (*(*(v17 - 8) + 8))(v13 + v16, v17);
    v18 = v14[6];
    v19 = sub_1BE049184();
    (*(*(v19 - 8) + 8))(v13 + v18, v19);
    v20 = v14[7];
    v21 = sub_1BE0491B4();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v13 + v20, 1, v21))
    {
      (*(v22 + 8))(v13 + v20, v21);
    }

    v23 = v14[8];
    v24 = sub_1BE049E04();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v13 + v23, 1, v24))
    {
      (*(v25 + 8))(v13 + v23, v24);
    }
  }

  v26 = *(type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0) + 20);
  v27 = sub_1BE048F54();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(v0 + v5 + v26, 1, v27))
  {
    (*(v28 + 8))(v0 + v5 + v26, v27);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0A7F98()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0A7FD0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0A8008()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0A8048()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0A80C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD0A818C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0A8268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0A82EC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_1BE04AF64();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + v2 + v1[11], v3);

  return swift_deallocObject();
}

uint64_t sub_1BD0A8470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0A84E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD517F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0A8748(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE049A94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BE0495A4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1BE049184();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B8);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_1BD0A8930(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BE049A94();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1BE0495A4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1BE049184();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B8);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}