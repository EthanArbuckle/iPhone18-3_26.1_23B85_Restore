uint64_t sub_1BD04C4F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AvailablePass(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[7];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1BD04C634(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for AvailablePass(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1BD04C768()
{
  v1 = type metadata accessor for PeerPaymentToggleSection();
  v58 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v58 + 16) & ~v58);
  v3 = (v2 + v1[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v59 = v2;
  if (EnumCaseMultiPayload == 2)
  {

    v5 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v6 = sub_1BE04CF34();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v7 = type metadata accessor for AvailablePass(0);
  v8 = v3 + v7[6];
  v9 = type metadata accessor for IdentityCredential(0);
  v55 = *(*(v9 - 8) + 48);
  if (!v55(v8, 1, v9))
  {

    v10 = *(v9 + 20);
    v11 = sub_1BE04DA84();
    (*(*(v11 - 8) + 8))(&v8[v10], v11);
  }

  v12 = (v3 + v7[7]);
  v13 = type metadata accessor for BalanceInfo(0);
  v54 = *(*(v13 - 8) + 48);
  if (!v54(v12, 1, v13))
  {

    v14 = *(v13 + 28);
    v15 = sub_1BE04AF64();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v12 + v14, 1, v15))
    {
      (*(v16 + 8))(v12 + v14, v15);
    }
  }

  v56 = v13;

  v17 = v3 + v7[10];
  v18 = type metadata accessor for PassEligibleRewardsInfo();
  v53 = *(*(v18 - 8) + 48);
  if (!v53(v17, 1, v18))
  {
    if (*(v17 + 2) != 1)
    {
    }

    v52 = v1;
    if (*(v17 + 9) != 1)
    {
    }

    v19 = *(v18 + 28);
    v20 = sub_1BE04AF64();
    v21 = *(v20 - 8);
    v22 = v18;
    v23 = *(v21 + 48);
    if (!v23(&v17[v19], 1, v20))
    {
      (*(v21 + 8))(&v17[v19], v20);
    }

    v24 = *(v22 + 32);
    v25 = v23(&v17[v24], 1, v20);
    v18 = v22;
    v1 = v52;
    if (!v25)
    {
      (*(v21 + 8))(&v17[v24], v20);
    }
  }

  v26 = (v3 + v7[12]);
  if (*v26)
  {
  }

  v27 = (v3 + v7[13]);
  if (*v27)
  {
  }

  v28 = v59;

  v29 = (v59 + v1[7]);
  v30 = type metadata accessor for PeerPaymentModel();
  if (!(*(*(v30 - 1) + 48))(v29, 1, v30))
  {

    v31 = (v29 + v30[5]);
    v32 = swift_getEnumCaseMultiPayload();
    v51 = v18;
    if (v32 == 2)
    {

      v33 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v34 = sub_1BE04CF34();
      (*(*(v34 - 8) + 8))(v31 + v33, v34);
    }

    else if (v32 <= 1)
    {
    }

    v35 = v31 + v7[6];
    if (!v55(v35, 1, v9))
    {

      v36 = *(v9 + 20);
      v37 = sub_1BE04DA84();
      (*(*(v37 - 8) + 8))(&v35[v36], v37);
    }

    v38 = (v31 + v7[7]);
    if (!v54(v38, 1, v56))
    {

      v39 = *(v56 + 28);
      v40 = sub_1BE04AF64();
      v41 = *(v40 - 8);
      if (!(*(v41 + 48))(v38 + v39, 1, v40))
      {
        (*(v41 + 8))(v38 + v39, v40);
      }
    }

    v42 = v31 + v7[10];
    if (!v53(v42, 1, v51))
    {
      if (*(v42 + 2) != 1)
      {
      }

      if (*(v42 + 9) != 1)
      {
      }

      v43 = *(v51 + 28);
      v44 = sub_1BE04AF64();
      v57 = *(v44 - 8);
      v45 = *(v57 + 48);
      if (!v45(&v42[v43], 1, v44))
      {
        (*(v57 + 8))(&v42[v43], v44);
      }

      v46 = *(v51 + 32);
      if (!v45(&v42[v46], 1, v44))
      {
        (*(v57 + 8))(&v42[v46], v44);
      }
    }

    v47 = (v31 + v7[12]);
    if (*v47)
    {
    }

    v48 = (v31 + v7[13]);
    if (*v48)
    {
    }

    v49 = (v29 + v30[6]);
    v28 = v59;
    if (*v49 != 1)
    {

      if (v49[3])
      {
      }
    }
  }

  if (*(v28 + v1[8]))
  {
  }

  if (*(v28 + v1[9]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD04D230()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD04D270()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04D38C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04D3C4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04D3FC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04D458(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BD030394(*a1, v2);
  return sub_1BD115DD4(v1, v2);
}

uint64_t sub_1BD04D4A4()
{

  if (*(v0 + 48) >= 7uLL)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD04D4F4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04D52C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD04D57C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04D5E4()
{
  type metadata accessor for MerchantOriginIconImage();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  sub_1BD1291DC();
  sub_1BD129234();
  swift_getWitnessTable();
  sub_1BE04C6F4();
  swift_getWitnessTable();
  sub_1BE051754();
  sub_1BE04F9B4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD04D7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Passes(0);
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

uint64_t sub_1BD04D85C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Passes(0);
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

uint64_t sub_1BD04D914()
{
  v1 = type metadata accessor for PaymentPassBillingAddressSection();
  v2 = *(*(v1 - 8) + 80);
  sub_1BD0D455C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v3 = (v0 + ((v2 + 96) & ~v2));
  v4 = type metadata accessor for AvailablePass(0);
  if (!(*(*(v4 - 1) + 48))(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v6 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v7 = sub_1BE04CF34();
      (*(*(v7 - 8) + 8))(v3 + v6, v7);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v8 = v3 + v4[6];
    v9 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {

      v10 = *(v9 + 20);
      v11 = sub_1BE04DA84();
      (*(*(v11 - 8) + 8))(&v8[v10], v11);
    }

    v12 = (v3 + v4[7]);
    v13 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 28);
      v15 = sub_1BE04AF64();
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(v12 + v14, 1, v15))
      {
        (*(v16 + 8))(v12 + v14, v15);
      }
    }

    v17 = v3 + v4[10];
    v18 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      if (*(v17 + 2) != 1)
      {
      }

      if (*(v17 + 9) != 1)
      {
      }

      v19 = *(v18 + 28);
      v20 = sub_1BE04AF64();
      v27 = *(v20 - 8);
      v21 = *(v27 + 48);
      if (!v21(&v17[v19], 1, v20))
      {
        (*(v27 + 8))(&v17[v19], v20);
      }

      v22 = *(v18 + 32);
      if (!v21(&v17[v22], 1, v20))
      {
        (*(v27 + 8))(&v17[v22], v20);
      }
    }

    v23 = (v3 + v4[12]);
    if (*v23)
    {
    }

    v24 = (v3 + v4[13]);
    if (*v24)
    {
    }
  }

  v25 = (v3 + *(v1 + 20));
  if (v25[6])
  {
    sub_1BD0D455C(*v25, v25[1], *(v25 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1BD04DF0C()
{
  v1 = type metadata accessor for PaymentPassBillingAddressSection();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v0 + ((v2 + 16) & ~v2));
  v4 = type metadata accessor for AvailablePass(0);
  if (!(*(*(v4 - 1) + 48))(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v6 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v7 = sub_1BE04CF34();
      (*(*(v7 - 8) + 8))(v3 + v6, v7);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v8 = v3 + v4[6];
    v9 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {

      v10 = *(v9 + 20);
      v11 = sub_1BE04DA84();
      (*(*(v11 - 8) + 8))(&v8[v10], v11);
    }

    v12 = (v3 + v4[7]);
    v13 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 28);
      v15 = sub_1BE04AF64();
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(v12 + v14, 1, v15))
      {
        (*(v16 + 8))(v12 + v14, v15);
      }
    }

    v17 = v3 + v4[10];
    v18 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      if (*(v17 + 2) != 1)
      {
      }

      if (*(v17 + 9) != 1)
      {
      }

      v19 = *(v18 + 28);
      v20 = sub_1BE04AF64();
      v27 = *(v20 - 8);
      v21 = *(v27 + 48);
      if (!v21(&v17[v19], 1, v20))
      {
        (*(v27 + 8))(&v17[v19], v20);
      }

      v22 = *(v18 + 32);
      if (!v21(&v17[v22], 1, v20))
      {
        (*(v27 + 8))(&v17[v22], v20);
      }
    }

    v23 = (v3 + v4[12]);
    if (*v23)
    {
    }

    v24 = (v3 + v4[13]);
    if (*v24)
    {
    }
  }

  v25 = (v3 + *(v1 + 20));
  if (v25[6])
  {
    sub_1BD0D455C(*v25, v25[1], *(v25 + 16));
  }

  return swift_deallocObject();
}

id sub_1BD04E4D8(id result, void *a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    v5 = result;
    v4 = a2;
    result = v5;
  }

  return result;
}

uint64_t sub_1BD04E528(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD04E5E4(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD04E694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD04E714()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04E74C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04E7A8()
{
  type metadata accessor for PassImage(255);
  type metadata accessor for PassDetails();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD452C0);
  sub_1BD1331E8(&qword_1EBD39FE0, type metadata accessor for PassImage);
  sub_1BD1331E8(&qword_1EBD39FE8, type metadata accessor for PassDetails);
  sub_1BD1103C8();
  sub_1BE04C6F4();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD1331E8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1BD04E984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD04E9B0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04E9E8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD04EA24()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD04EA5C()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD04EB7C()
{
  sub_1BE04C944();
  type metadata accessor for AuthenticatedTransactionSheet();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A0B8);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4DFD0);
  sub_1BE04EBD4();
  type metadata accessor for AuthenticatedTransactionSheet();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  type metadata accessor for AuthenticatedTransactionSheet();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  type metadata accessor for AuthenticatedTransactionSheet();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  sub_1BE04F9B4();
  type metadata accessor for AuthenticatedTransactionSheet();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  type metadata accessor for AuthenticatedTransactionSheet();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  type metadata accessor for AuthenticatedTransactionSheet();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A0B0);
  sub_1BE04F9B4();
  sub_1BE04F9B4();
  sub_1BE04F9B4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BD145E20();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD04F19C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 104);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 108);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD04F2D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 104);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 108);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD04F440@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04CBF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD04F4A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04EFC4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD04F4FC()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 72) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1BD04F584()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A218);
  type metadata accessor for PaymentSheetHeader();
  sub_1BE04C674();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A48);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BE051854();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for PaymentRequestView();
  sub_1BE04EBD4();
  sub_1BE04C614();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A230);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BD145DD8(&qword_1EBD3A238, MEMORY[0x1E69BC8F0]);
  sub_1BD0DE4F4(&qword_1EBD3A240, &qword_1EBD3A230);
  swift_getOpaqueTypeMetadata2();
  sub_1BE04CB04();
  sub_1BE04C864();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  swift_getOpaqueTypeConformance2();
  sub_1BD145DD8(&qword_1EBD3A248, MEMORY[0x1E69BCAC0]);
  sub_1BD145DD8(&qword_1EBD36A20, MEMORY[0x1E69BC9A8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SecondarySheet();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BD0DE4F4(&qword_1EBD3A250, &qword_1EBD3A218);
  swift_getOpaqueTypeConformance2();
  sub_1BE04EE14();
  return swift_getWitnessTable();
}

uint64_t sub_1BD04FB54()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD04FC40()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04FC78()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04FCB0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04FD18()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04FD60()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04FDB0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04FDF8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04FE58()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04FEB0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD04FEE8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04FF38()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04FF80()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD04FFB8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = _s11TotalAmountVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD050064(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s11TotalAmountVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD05012C()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0BA730;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1BE0489A4();

  return v6;
}

double sub_1BD050264@<D0>(_OWORD *a1@<X8>)
{
  sub_1BE048874();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1BD0502B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE048874();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD050328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE048874();
  *a1 = v3;
  return result;
}

double sub_1BD05039C@<D0>(_OWORD *a1@<X8>)
{
  sub_1BE048874();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1BD0503E0(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v8[2] = a1[2];
  v8[3] = v2;
  v7[4] = v4;
  v7[5] = v3;
  v5 = a1[3];
  v7[6] = a1[2];
  v7[7] = v5;
  sub_1BD0303B8(v8, v7);
  return sub_1BE048884();
}

uint64_t sub_1BD05043C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE048874();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD050500@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE048874();
  *a1 = v3;
  return result;
}

double sub_1BD050574@<D0>(_OWORD *a1@<X8>)
{
  sub_1BE048874();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1BD0505EC@<D0>(_OWORD *a1@<X8>)
{
  sub_1BE048874();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD05065C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A6A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0506E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BD0507E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BD0508FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s11TotalAmountVMa(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD0509C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s11TotalAmountVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1BD050A9C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A820);
  sub_1BD16131C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD050B00()
{

  return swift_deallocObject();
}

uint64_t sub_1BD050B38@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BE04F264();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BD050B9C@<X0>(void *a1@<X8>)
{
  result = sub_1BE04F244();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD050C08()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD050C50()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD050CF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD050D90()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD050DD0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD050E8C(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD050F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
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

uint64_t sub_1BD051014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
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

uint64_t sub_1BD0510D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AB90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ABA8);
  sub_1BD0E5E8C(255, &qword_1EBD45E80);
  sub_1BD0DE4F4(&qword_1EBD3ABB0, &qword_1EBD3AB90);
  sub_1BD170E70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0511FC()
{
  v1 = type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1BE04E664();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = (v0 + v2 + *(v1 + 20));

  return swift_deallocObject();
}

uint64_t sub_1BD051360()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AC28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AC20);
  sub_1BE04ECF4();
  sub_1BD0DE4F4(&qword_1EBD3ACA8, &qword_1EBD3AC20);
  sub_1BD1710E4(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACC0);
  sub_1BD171868();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_So20PKAccountDestinationVIegy_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD051598()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0515D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B238);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD051664()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0516EC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD051728()
{
  sub_1BE0500D4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE04E5B4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD051B8C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD051BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BAD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD051C4C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD051C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04AFE4();
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

uint64_t sub_1BD051D44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE04AFE4();
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

uint64_t sub_1BD051E04()
{

  return swift_deallocObject();
}

uint64_t sub_1BD051E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04B2F4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD051EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04B2F4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD051F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BE0493F4();
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

  return (v14 + 1);
}

uint64_t sub_1BD052030(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1BE0493F4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BD05216C()
{
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCB8);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCC0);
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD491A0);
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  sub_1BD1A36A0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD052634()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05266C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0526A8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0526E0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD052728()
{

  return swift_deallocObject();
}

uint64_t sub_1BD052760()
{

  return swift_deallocObject();
}

uint64_t sub_1BD052838()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C0C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB60);
  sub_1BD0DE4F4(&qword_1EBD3C0D0, &qword_1EBD3C0C8);
  sub_1BD1B9AAC();
  sub_1BE04C6F4();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0F15A0();
  swift_getWitnessTable();
  sub_1BE051754();
  sub_1BE04F9B4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD0529DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C120);
  sub_1BD1BC204();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD052A50()
{

  return swift_deallocObject();
}

uint64_t sub_1BD052AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C238);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C240);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C248);
  sub_1BD0DE4F4(&qword_1EBD3C250, &qword_1EBD3C240);
  sub_1BD0DDEBC();
  sub_1BD1BCD34();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD052C40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C288);
  sub_1BD1BEDCC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD052CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s11TotalAmountVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD052D64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s11TotalAmountVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD052E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD052E98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C378);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C390);
  sub_1BD1C07FC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD052F5C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD052FAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD053068(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD053118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD053188()
{
  v1 = (type metadata accessor for SheetButton() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[12];
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

uint64_t sub_1BD0532F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_1BE048C84();
}

uint64_t sub_1BD053354@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1BD0533AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1BD053418()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05348C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = _s22SummaryItemPricingTypeOMa(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[15];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[16];

  return v15(v16, a2, v14);
}

uint64_t sub_1BD053610(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = _s22SummaryItemPricingTypeOMa(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[15];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[16];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD053794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BD053864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD053930()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E50);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0539C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD053A2C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD053B78(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1BD053C2C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD053CEC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD053D24()
{

  return swift_deallocObject();
}

uint64_t sub_1BD053E34()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD053EF8()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD054078()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0540B0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD054104()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D050);
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD1E9CCC();
  return swift_getWitnessTable();
}

uint64_t sub_1BD054278()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0542B8()
{
  v1 = sub_1BE04E6A4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

__n128 sub_1BD054388@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

id sub_1BD0543E0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR___PKFlightShareMessageBubbleView_followButton) isHidden];
  *a2 = result;
  return result;
}

id sub_1BD054420(unsigned __int8 *a1, void **a2)
{
  v2 = *a2;
  [*(*a2 + OBJC_IVAR___PKFlightShareMessageBubbleView_followButton) setHidden_];

  return [v2 setNeedsLayout];
}

uint64_t sub_1BD054478()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0544B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0544F8()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD054534(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0545F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0546B0()
{
  v1 = type metadata accessor for FrequencySelectionRow();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  if (*(v2 + v1[8]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD054808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD05487C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0548D4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD054930()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0549B0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0549EC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD054AA0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD054AD8()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD054B10()
{

  return swift_deallocObject();
}

uint64_t sub_1BD054C28()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD054E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
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

uint64_t sub_1BD054F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
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

uint64_t sub_1BD055048(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0550B0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD055100()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 112);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0551C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DC20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD57BE0);
  sub_1BD21403C();
  sub_1BD2140F4();
  type metadata accessor for PaymentOfferActionExplanationView();
  sub_1BD213F8C(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0552E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD05537C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BD030394(*a1, v2);
  return sub_1BD218070(v1, v2);
}

uint64_t sub_1BD05544C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD055518()
{

  return swift_deallocObject();
}

uint64_t sub_1BD055558(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1BD0555AC()
{
  swift_unknownObjectRelease();

  sub_1BD0D4604(*(v0 + 112), *(v0 + 120));
  sub_1BD0D4604(*(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_1BD055660()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DE80);
  sub_1BD223E94();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD055708()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

void sub_1BD055768(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD227288(v1);
}

void sub_1BD0557C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD2276F8(v1);
}

void sub_1BD055898(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD227098(v1);
}

void sub_1BD0559A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD228F98(v1);
}

uint64_t sub_1BD0559FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD055A80()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD055B2C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD055B64()
{

  return swift_deallocObject();
}

uint64_t sub_1BD055BCC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for RecurringPaymentSheet();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));

  v4 = v3 + *(_s8MerchantVMa(0) + 20);
  _s14MerchantOriginOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = sub_1BE04AA64();
    v7 = *(v6 - 8);
    v10 = *(v7 + 8);
    v10(v4, v6);
    v8 = *(_s7WebInfoVMa(0) + 20);
    if (!(*(v7 + 48))(v4 + v8, 1, v6))
    {
      v10(v4 + v8, v6);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  (*(*(v1 - 8) + 8))(v3 + *(v2 + 36), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD055E04()
{
  type metadata accessor for RecurringPaymentContent();
  swift_getWitnessTable();
  type metadata accessor for DetailNavigationView();

  return swift_getWitnessTable();
}

uint64_t sub_1BD055E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD055EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD055F6C()
{
  type metadata accessor for RecurringPaymentMerchantDetailsView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E888);
  sub_1BE051854();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BD238AEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for SheetSection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A8);
  swift_getTupleTypeMetadata();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BE04E2F4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E20);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
  return swift_getWitnessTable();
}

uint64_t sub_1BD056284()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0562C4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD056310(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0563CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD056480()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0564EC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD056524()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05655C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0565A4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0565EC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD056634()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05669C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD056758(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0569EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ED40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0);
  sub_1BD0DE4F4(&qword_1EBD3ED70, &qword_1EBD3ED40);
  sub_1BD2477C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD056AB8(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1BD056B74(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1BD056C98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD056D54()
{
  swift_unknownObjectRelease();

  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 104);
  }

  sub_1BD0D45CC();
  sub_1BD0D4604(*(v0 + 176), *(v0 + 184));

  return swift_deallocObject();
}

uint64_t sub_1BD056F30(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[13];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[25];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[27];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388B0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[28];

  return v16(v17, a2, v15);
}

uint64_t sub_1BD057114(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[25];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[27];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[28];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1BD057354()
{
  v1 = type metadata accessor for PaymentSheet();
  v2 = *(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v3 = sub_1BE04C614();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v19 = v0;
  v6 = v0 + ((v2 + 16) & ~v2);

  if (*(v6 + 112))
  {
    __swift_destroy_boxed_opaque_existential_0(v6 + 88);
  }

  if (*(v6 + 144))
  {
  }

  v7 = v6 + v1[13];
  v8 = *(v4 + 48);
  if (!v8(v7, 1, v3))
  {
    (*(v4 + 8))(v7, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);

  v9 = v6 + v1[15];
  if (!v8(v9, 1, v3))
  {
    (*(v4 + 8))(v9, v3);
  }

  sub_1BD0D45CC();

  v10 = v1[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04C884();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  sub_1BD0D4604(*(v6 + v1[26]), *(v6 + v1[26] + 8));
  v12 = v1[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04EB24();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
  }

  v14 = v1[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1BE04FD04();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v6 + v14, 1, v15))
    {
      (*(v16 + 8))(v6 + v14, v15);
    }
  }

  else
  {
  }

  sub_1BD0D4604(*(v6 + v1[29]), *(v6 + v1[29] + 8));
  (*(v4 + 8))(v19 + ((((v2 + 16) & ~v2) + v18 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_1BD057848()
{
  v1 = sub_1BE04C614();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for PaymentSheet();
  v19 = *(*(v5 - 1) + 80);
  v6 = *(v2 + 8);
  v6(v0 + v3, v1);
  v7 = v0 + ((v3 + v4 + v19) & ~v19);

  if (*(v7 + 112))
  {
    __swift_destroy_boxed_opaque_existential_0(v7 + 88);
  }

  if (*(v7 + 144))
  {
  }

  v8 = v7 + v5[13];
  v9 = *(v2 + 48);
  if (!v9(v8, 1, v1))
  {
    v6(v8, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);

  v10 = v7 + v5[15];
  if (!v9(v10, 1, v1))
  {
    v6(v10, v1);
  }

  sub_1BD0D45CC();

  v11 = v5[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1BE04C884();
    (*(*(v12 - 8) + 8))(v7 + v11, v12);
  }

  else
  {
  }

  sub_1BD0D4604(*(v7 + v5[26]), *(v7 + v5[26] + 8));
  v13 = v5[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1BE04EB24();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
  }

  else
  {
  }

  v15 = v5[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1BE04FD04();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v7 + v15, 1, v16))
    {
      (*(v17 + 8))(v7 + v15, v16);
    }
  }

  else
  {
  }

  sub_1BD0D4604(*(v7 + v5[29]), *(v7 + v5[29] + 8));

  return swift_deallocObject();
}

uint64_t sub_1BD057DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnavailablePass(0);
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

uint64_t sub_1BD057E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnavailablePass(0);
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

uint64_t sub_1BD057F2C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD057F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD057FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD058058()
{
  sub_1BD25D6D4(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1BD0580A4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0580E0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD058118()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1BD0581E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1BD05826C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0582A4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0582DC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD058314()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05834C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD058384()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0583C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0583FC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD058470(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE04AF64();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BE0493F4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD058594(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BE04AF64();
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
      v13 = sub_1BE0493F4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD058828()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD058860()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD058898()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F990);
  sub_1BD0DE4F4(&qword_1EBD3F9A0, &qword_1EBD3F990);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD05896C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD058A28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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

uint64_t sub_1BD058B34()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD058BC0()
{
  v1 = (type metadata accessor for PeerPaymentGroupedPaymentsView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[8];
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

uint64_t sub_1BD058D54(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BD058E90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD059010(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE04E664();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BD059140(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1BE04E664();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD059274()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0592AC()
{
  v1 = (type metadata accessor for PeerPaymentFraudPageView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BE04E664();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD05947C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0594B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0594EC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05953C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD059584()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0595F4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD059644()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05967C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0596BC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD059794()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0597CC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD059804()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD059854()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0598B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD05991C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BD05999C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 253)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 3)
    {
      return v14 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1BD059B14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BE04AFE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 253)
  {
    *(a1 + a4[6]) = a2 + 2;
  }

  else
  {
    v15 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1BD059D60()
{

  return swift_deallocObject();
}

uint64_t sub_1BD059D98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD059DD8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD059E1C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD059E54()
{

  return swift_deallocObject();
}

uint64_t sub_1BD059E9C()
{
  v1 = type metadata accessor for ContactFormItemRow();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80));

  v3 = v1[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v13 = *(v5 + 8);
  v13(v2 + v3, AssociatedTypeWitness);

  v6 = v2 + v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 32);
      v9 = sub_1BE051AD4();
      (*(*(v9 - 8) + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  v10 = v2 + v1[20];

  sub_1BE0534B4();
  v11 = *(sub_1BE051964() + 32);
  if (!(*(v5 + 48))(v10 + v11, 1, AssociatedTypeWitness))
  {
    v13(v10 + v11, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD05A1D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40488);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD05A240()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40460);
  swift_getAssociatedTypeWitness();
  sub_1BE0534B4();
  sub_1BD2A28D8(&qword_1EBD40468, &qword_1EBD40460, &unk_1BE0C8070, sub_1BD2A1FE8);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C0);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C8);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404D0);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD404D8, &qword_1EBD404D0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51F60);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  sub_1BD2A27E0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD05A654()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05A68C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40790);
  sub_1BE04EBD4();
  sub_1BD2AFA64();
  return swift_getWitnessTable();
}

uint64_t sub_1BD05A714(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD05A7D0(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD05A898()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05A8E0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05A918()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05A968()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05A9B0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05A9E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BD05AA38(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BD05AA90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD05AAC8()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1BE04DC44();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1BD05AC20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD05AC6C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD05AD98()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05ADE0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD05AE18()
{

  return swift_deallocObject();
}

void sub_1BD05B0A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD40566C(v1);
}

void sub_1BD05B104(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD40252C(v1);
}

uint64_t sub_1BD05B144(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD05B200(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD05B2B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD05B330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD05B3B4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05B420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD05B498()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40CA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C98);
  sub_1BD2D5018();
  sub_1BD2D5100();
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD05B5E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DA0);
  sub_1BD2D57F4();
  sub_1BD2D58AC();
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD05B6E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DC0);
  sub_1BD2D5A00();
  sub_1BD2D5AE8();
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD05B7F4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05B908(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD05BA44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD05BBBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE04AF64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD05BC68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04AF64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD05BD0C()
{
  v1 = (type metadata accessor for PKDashboardRewardsBalanceView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_1BE04AF64();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD05BECC()
{
  v1 = type metadata accessor for AvailablePass(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v0 + ((v2 + 16) & ~v2));
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v5 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v6 = sub_1BE04CF34();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v7 = v3 + v1[6];
  v8 = type metadata accessor for IdentityCredential(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = *(v8 + 20);
    v10 = sub_1BE04DA84();
    (*(*(v10 - 8) + 8))(&v7[v9], v10);
  }

  v11 = (v3 + v1[7]);
  v12 = type metadata accessor for BalanceInfo(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {

    v13 = *(v12 + 28);
    v14 = sub_1BE04AF64();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v11 + v13, 1, v14))
    {
      (*(v15 + 8))(v11 + v13, v14);
    }
  }

  v16 = v3 + v1[10];
  v17 = type metadata accessor for PassEligibleRewardsInfo();
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    if (*(v16 + 2) != 1)
    {
    }

    if (*(v16 + 9) != 1)
    {
    }

    v18 = *(v17 + 28);
    v19 = sub_1BE04AF64();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(&v16[v18], 1, v19))
    {
      (*(v20 + 8))(&v16[v18], v19);
    }

    v22 = *(v17 + 32);
    if (!v21(&v16[v22], 1, v19))
    {
      (*(v20 + 8))(&v16[v22], v19);
    }
  }

  v23 = (v3 + v1[12]);
  if (*v23)
  {
  }

  v24 = (v3 + v1[13]);
  if (*v24)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD05C388()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05C48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD05C4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD05C584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD415A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD05C640()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05C680()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05C6B8()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05C6F0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05C730()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05C780()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05C7E0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05C828()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05C878()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05C8D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD05C908()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05C9A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD05C9D8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CA68()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CAC8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CB80()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CC18()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CD28()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CD60()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CDBC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05CDF4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CE34()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CE84()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CEC4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CEFC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD05CF38()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05CF70()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CFB8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CFF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD05D134(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD05D270()
{
  v1 = type metadata accessor for FinanceKitFoundInMailRowView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v1[10];
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  if (*(v2 + v1[11]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD05D49C()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_1BD3068D8(*(v0 + 32), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD05D4FC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05D534()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AF0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD05D604()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD05D63C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05D674()
{

  return swift_deallocObject();
}

id sub_1BD05D6B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1BD05D71C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD308A68(v1);
}

uint64_t sub_1BD05D76C@<X0>(void *a1@<X8>)
{
  result = sub_1BE04EF44();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD05D7C0@<X0>(void *a1@<X8>)
{
  result = sub_1BE04F124();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD05D7F4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05D82C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05D864()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05D8D8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05D930()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05D9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_1BE04A884();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

void *sub_1BD05DB24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v8 = sub_1BE04A884();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD05DC7C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05DCEC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1BD05DDBC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05DDFC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05DE34()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05DE6C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05DEAC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05DEF4()
{
  v1 = sub_1BE04C384();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD05DF90()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05DFF4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05E05C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE049364();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD05E108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE049364();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD05E1AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41FB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41FD8);
  sub_1BD0DE4F4(&qword_1EBD41FE0, &qword_1EBD41FB0);
  sub_1BD325E94();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD05E26C()
{
  v1 = (type metadata accessor for ACHCredentialDetailsView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  v4 = sub_1BE049364();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD05E3BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD05E42C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD05E4A8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05E4EC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05E524()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05E57C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05E5B4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05E5EC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05E624()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05E65C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BD05E6B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BD05E790()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05E834()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05E87C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05E8BC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05E8F4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05E94C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05E988(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42330);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1BD05EB04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42330);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
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

uint64_t sub_1BD05ECA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD05ED5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1BD05EE34(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD7B1A3C(v1);
}

void sub_1BD05EE98(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD7B1BD4(v1);
}

uint64_t sub_1BD05EF10()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05EFB4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05F034()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD05F06C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42608);
  sub_1BD0DE4F4(&qword_1EBD42638, &qword_1EBD42608);
  sub_1BD0DDEBC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD05F118()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD05F1D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_11:
    v14 = *(v8 + 48);

    return v14(a1 + v9, a2, v7);
  }

  v10 = _s8MerchantVMa(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_11;
  }

  v11 = _s14PaymentSummaryVMa();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_11;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[12];
    goto LABEL_11;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[13] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[21];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1BD05F454(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v16 = *(v10 + 56);

    return v16(a1 + v11, a2, a2, v9);
  }

  v12 = _s8MerchantVMa(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = _s14PaymentSummaryVMa();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[12];
    goto LABEL_11;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[13] + 8) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[21];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_1BD05F6F4()
{
  v1 = type metadata accessor for PaymentSummarySheet();
  v150 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v150 + 24) & ~v150);
  sub_1BD0D45CC();
  v3 = (v2 + v1[5]);
  v4 = type metadata accessor for AvailablePass(0);
  v146 = *(*(v4 - 1) + 48);
  v152 = v4;
  if (!v146(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v6 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v7 = sub_1BE04CF34();
      (*(*(v7 - 8) + 8))(v3 + v6, v7);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v8 = v3 + v4[6];
    v9 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {

      v10 = *(v9 + 20);
      v11 = sub_1BE04DA84();
      (*(*(v11 - 8) + 8))(&v8[v10], v11);
    }

    v12 = (v3 + v4[7]);
    v13 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 28);
      v15 = sub_1BE04AF64();
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(v12 + v14, 1, v15))
      {
        (*(v16 + 8))(v12 + v14, v15);
      }
    }

    v17 = v3 + v4[10];
    v18 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      if (*(v17 + 2) != 1)
      {
      }

      if (*(v17 + 9) != 1)
      {
      }

      v19 = *(v18 + 28);
      v20 = sub_1BE04AF64();
      v21 = *(v20 - 8);
      v22 = *(v21 + 48);
      if (!v22(&v17[v19], 1, v20))
      {
        (*(v21 + 8))(&v17[v19], v20);
      }

      v23 = *(v18 + 32);
      v24 = v22(&v17[v23], 1, v20);
      v4 = v152;
      if (!v24)
      {
        (*(v21 + 8))(&v17[v23], v20);
      }
    }

    v25 = (v3 + v4[12]);
    if (*v25)
    {
    }

    v26 = (v3 + v4[13]);
    if (*v26)
    {
    }
  }

  v27 = v2 + v1[6];

  v28 = v27 + *(_s8MerchantVMa(0) + 20);
  _s14MerchantOriginOMa(0);
  v29 = swift_getEnumCaseMultiPayload();
  if (v29 == 1)
  {
    v30 = sub_1BE04AA64();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v28, v30);
    v33 = *(_s7WebInfoVMa(0) + 20);
    if (!(*(v31 + 48))(v28 + v33, 1, v30))
    {
      v32(v28 + v33, v30);
    }
  }

  else if (!v29)
  {
  }

  v34 = v2 + v1[7];

  v35 = _s11TotalAmountVMa(0);
  v36 = v34 + v35[10];
  _s22SummaryItemPricingTypeOMa(0);
  v37 = swift_getEnumCaseMultiPayload();
  switch(v37)
  {
    case 2:

      break;
    case 1:
      v44 = sub_1BE04AF64();
      (*(*(v44 - 8) + 8))(v36, v44);
      break;
    case 0:
      v144 = v35;
      v38 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v39 = *(v38 + 24);
      v40 = sub_1BE04AF64();
      v41 = *(v40 - 8);
      v42 = *(v41 + 48);
      if (!v42(v36 + v39, 1, v40))
      {
        (*(v41 + 8))(v36 + v39, v40);
      }

      v43 = *(v38 + 28);
      if (!v42(v36 + v43, 1, v40))
      {
        (*(v41 + 8))(v36 + v43, v40);
      }

      v4 = v152;
      v35 = v144;
      break;
  }

  v45 = (v34 + v35[15]);
  v46 = type metadata accessor for PeerPaymentModel();
  v148 = *(*(v46 - 8) + 48);
  v151 = v46;
  if (!v148(v45, 1, v46))
  {

    v47 = (v45 + *(v46 + 20));
    type metadata accessor for WrappedPass(0);
    v48 = swift_getEnumCaseMultiPayload();
    v143 = v45;
    if (v48 == 2)
    {

      v49 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v50 = sub_1BE04CF34();
      (*(*(v50 - 8) + 8))(v47 + v49, v50);
    }

    else if (v48 <= 1)
    {
    }

    v51 = v47 + v4[6];
    v52 = v4;
    v53 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v53 - 8) + 48))(v51, 1, v53))
    {

      v54 = *(v53 + 20);
      v55 = sub_1BE04DA84();
      (*(*(v55 - 8) + 8))(&v51[v54], v55);
    }

    v56 = (v47 + v52[7]);
    v57 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
    {

      v58 = *(v57 + 28);
      v59 = sub_1BE04AF64();
      v60 = *(v59 - 8);
      if (!(*(v60 + 48))(v56 + v58, 1, v59))
      {
        (*(v60 + 8))(v56 + v58, v59);
      }
    }

    v61 = v47 + v152[10];
    v62 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v62 - 8) + 48))(v61, 1, v62))
    {
      if (*(v61 + 2) != 1)
      {
      }

      if (*(v61 + 9) != 1)
      {
      }

      v63 = *(v62 + 28);
      v64 = sub_1BE04AF64();
      v65 = *(*(v64 - 8) + 48);
      v141 = v63;
      v66 = &v61[v63];
      v67 = *(v64 - 8);
      if (!v65(v66, 1, v64))
      {
        (*(v67 + 8))(&v61[v141], v64);
      }

      v142 = v67;
      v68 = *(v62 + 32);
      if (!v65(&v61[v68], 1, v64))
      {
        (*(v142 + 8))(&v61[v68], v64);
      }
    }

    v4 = v152;
    v69 = (v47 + v152[12]);
    if (*v69)
    {
    }

    v70 = (v47 + v152[13]);
    v46 = v151;
    if (*v70)
    {
    }

    v71 = (v143 + *(v151 + 24));
    if (*v71 != 1)
    {

      if (v71[3])
      {
      }
    }
  }

  v72 = (v34 + v35[16]);
  v73 = type metadata accessor for Passes(0);
  if (!(*(*(v73 - 8) + 48))(v72, 1, v73))
  {
    if (!v146(v72, 1, v4))
    {
      type metadata accessor for WrappedPass(0);
      v74 = swift_getEnumCaseMultiPayload();
      if (v74 == 2)
      {

        v75 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v76 = sub_1BE04CF34();
        (*(*(v76 - 8) + 8))(v72 + v75, v76);
      }

      else if (v74 <= 1)
      {
      }

      v77 = v72 + v4[6];
      v78 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v78 - 8) + 48))(v77, 1, v78))
      {

        v79 = *(v78 + 20);
        v80 = sub_1BE04DA84();
        (*(*(v80 - 8) + 8))(&v77[v79], v80);
      }

      v81 = (v72 + v4[7]);
      v82 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v82 - 8) + 48))(v81, 1, v82))
      {

        v83 = *(v82 + 28);
        v84 = sub_1BE04AF64();
        v85 = *(v84 - 8);
        if (!(*(v85 + 48))(v81 + v83, 1, v84))
        {
          (*(v85 + 8))(v81 + v83, v84);
        }
      }

      v86 = v72 + v152[10];
      v87 = type metadata accessor for PassEligibleRewardsInfo();
      if (!(*(*(v87 - 8) + 48))(v86, 1, v87))
      {
        if (*(v86 + 2) != 1)
        {
        }

        if (*(v86 + 9) != 1)
        {
        }

        v88 = *(v87 + 28);
        v89 = sub_1BE04AF64();
        v147 = *(v89 - 8);
        v145 = v88;
        v90 = &v86[v88];
        v91 = *(v147 + 48);
        if (!v91(v90, 1, v89))
        {
          (*(v147 + 8))(&v86[v145], v89);
        }

        v92 = *(v87 + 32);
        if (!v91(&v86[v92], 1, v89))
        {
          (*(v147 + 8))(&v86[v92], v89);
        }
      }

      v4 = v152;
      v93 = (v72 + v152[12]);
      if (*v93)
      {
      }

      v94 = (v72 + v152[13]);
      v46 = v151;
      if (*v94)
      {
      }
    }
  }

  v95 = _s14PaymentSummaryVMa();

  if (*(v34 + v95[7] + 8))
  {
  }

  v96 = v34 + v95[9];
  if (*(v96 + 8))
  {
  }

  v97 = v34 + v95[10];
  if (*(v97 + 8))
  {
  }

  v98 = v34 + v95[11];
  v99 = type metadata accessor for DeferredPaymentRequest();
  if (!(*(*(v99 - 1) + 48))(v98, 1, v99))
  {

    v100 = v99[7];
    v101 = sub_1BE04AF64();
    v102 = *(v101 - 8);
    if (!(*(v102 + 48))(v98 + v100, 1, v101))
    {
      (*(v102 + 8))(v98 + v100, v101);
    }

    v103 = v99[8];
    v104 = sub_1BE04B3B4();
    v105 = *(v104 - 8);
    if (!(*(v105 + 48))(v98 + v103, 1, v104))
    {
      (*(v105 + 8))(v98 + v103, v104);
    }

    v4 = v152;
    v46 = v151;
  }

  v106 = (v2 + v1[10]);
  if (!v148(v106, 1, v46))
  {

    v107 = (v106 + *(v46 + 20));
    type metadata accessor for WrappedPass(0);
    v108 = swift_getEnumCaseMultiPayload();
    if (v108 == 2)
    {

      v109 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v110 = sub_1BE04CF34();
      (*(*(v110 - 8) + 8))(v107 + v109, v110);
    }

    else if (v108 <= 1)
    {
    }

    v111 = v107 + v4[6];
    v112 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
    {

      v113 = *(v112 + 20);
      v114 = sub_1BE04DA84();
      (*(*(v114 - 8) + 8))(&v111[v113], v114);
    }

    v115 = (v107 + v4[7]);
    v116 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v116 - 8) + 48))(v115, 1, v116))
    {

      v117 = *(v116 + 28);
      v118 = sub_1BE04AF64();
      v119 = *(v118 - 8);
      if (!(*(v119 + 48))(v115 + v117, 1, v118))
      {
        (*(v119 + 8))(v115 + v117, v118);
      }
    }

    v120 = v107 + v4[10];
    v121 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v121 - 8) + 48))(v120, 1, v121))
    {
      if (*(v120 + 2) != 1)
      {
      }

      if (*(v120 + 9) != 1)
      {
      }

      v122 = *(v121 + 28);
      v123 = sub_1BE04AF64();
      v149 = *(v123 - 8);
      v124 = *(v149 + 48);
      if (!v124(&v120[v122], 1, v123))
      {
        (*(v149 + 8))(&v120[v122], v123);
      }

      v125 = *(v121 + 32);
      if (!v124(&v120[v125], 1, v123))
      {
        (*(v149 + 8))(&v120[v125], v123);
      }
    }

    v126 = (v107 + v152[12]);
    if (*v126)
    {
    }

    v127 = (v107 + v152[13]);
    if (*v127)
    {
    }

    v128 = (v106 + *(v151 + 24));
    if (*v128 != 1)
    {

      if (v128[3])
      {
      }
    }
  }

  v129 = v2 + v1[12];
  v130 = type metadata accessor for PassEligibleRewardsInfo();
  if (!(*(*(v130 - 8) + 48))(v129, 1, v130))
  {
    if (*(v129 + 16) != 1)
    {
    }

    if (*(v129 + 72) != 1)
    {
    }

    v131 = *(v130 + 28);
    v132 = sub_1BE04AF64();
    v133 = *(v132 - 8);
    v134 = *(v133 + 48);
    if (!v134(v129 + v131, 1, v132))
    {
      (*(v133 + 8))(v129 + v131, v132);
    }

    v135 = *(v130 + 32);
    if (!v134(v129 + v135, 1, v132))
    {
      (*(v133 + 8))(v129 + v135, v132);
    }
  }

  v136 = v2 + v1[13];

  sub_1BD0D45CC();
  sub_1BD0D4604(*(v136 + 40), *(v136 + 48));

  if (*(v136 + 88))
  {
  }

  v137 = (v2 + v1[21]);
  v138 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v138 - 8) + 48))(v137, 1, v138))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v139 = sub_1BE04AA64();
      (*(*(v139 - 8) + 8))(v137, v139);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  sub_1BD0D4604(*(v2 + v1[23]), *(v2 + v1[23] + 8));
  sub_1BD0D4604(*(v2 + v1[24]), *(v2 + v1[24] + 8));
  sub_1BD0D4604(*(v2 + v1[25]), *(v2 + v1[25] + 8));

  return swift_deallocObject();
}

uint64_t sub_1BD061264()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06129C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0612D4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD061310()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD061358()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0613AC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0613FC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD061568(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD061624(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0616EC()
{
  v1 = type metadata accessor for MeCardAddressSection();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  sub_1BD35D02C(*(v4 + 24), *(v4 + 32), *(v4 + 40));

  v5 = v4 + *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = sub_1BE051AD4();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  if (*(v0 + v3 + 8) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD061900()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42970);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45200);
  sub_1BD0E5E8C(255, &qword_1EBD406E0);
  sub_1BD35CE1C();
  sub_1BD35CEE0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0619D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 216);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04C894();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD061A80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 216) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04C894();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD061B64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BE048C84();
  return sub_1BD921B90(v1, v2);
}

uint64_t sub_1BD061BA4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD061BDC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD061C28(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD061CE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD061DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD061E5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DA8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD061F18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DA8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD062000(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2())
  {
    return a4(a1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD06205C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD06209C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_1BD0620F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD91752C(v1);
}

uint64_t sub_1BD062128()
{

  return swift_deallocObject();
}

uint64_t sub_1BD062174(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45510);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD062230(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45510);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0622E0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD062318()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD062350()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0623F4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD062444()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD06248C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0624CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD06254C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0625A4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0625DC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD062614()
{

  return swift_deallocObject();
}

uint64_t sub_1BD062654()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06268C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0626E0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD062718()
{

  return swift_deallocObject();
}

uint64_t sub_1BD062750()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06279C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
  v3 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);

  v4 = v0 + v3;

  v5 = *(v2 + 48);
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v0 + v3 + v5, 1, v1))
  {
    (*(v6 + 8))(v4 + v5, v1);
  }

  if (*(v4 + *(v2 + 56)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD062938()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView();
  v3 = (v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)));

  v4 = *(v2 + 48);
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  if (*(v3 + *(v2 + 56)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD062AB4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD062B04()
{
  sub_1BD0D45CC();

  return swift_deallocObject();
}

uint64_t sub_1BD062B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PassEligibleRewardsInfo();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD062C10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PassEligibleRewardsInfo();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1BD062D28()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

id sub_1BD062D60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1BD062DCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_memo);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_1BE048C84();
}

uint64_t sub_1BD062E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKNearbyPeerPaymentViewController_hideStatusBar;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1BD062EA8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD062EE0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD063084()
{

  return swift_deallocObject();
}

uint64_t sub_1BD063108()
{

  return swift_deallocObject();
}

uint64_t sub_1BD063140()
{

  return swift_deallocObject();
}

uint64_t sub_1BD063188()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0631D8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD063210()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD063260()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0632E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD06341C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD063564(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1BD06362C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0636DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD063750()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0637A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43D80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43D90);
  sub_1BD3A2C60();
  sub_1BD3A2D18(&qword_1EBD43DA8, &qword_1EBD43D90, &unk_1BE0D0EB0, sub_1BD3A2C60);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD063890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD063960()
{

  return swift_deallocObject();
}

uint64_t sub_1BD063A08()
{

  return swift_deallocObject();
}

uint64_t sub_1BD063A50()
{

  return swift_deallocObject();
}

uint64_t sub_1BD063A90()
{

  return swift_deallocObject();
}

uint64_t sub_1BD063AD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_statusColor;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1BE048964();
}

uint64_t sub_1BD063B30(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void *sub_1BD063BF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD063D00()
{
  v1 = sub_1BE049364();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD063DDC()
{
  v1 = sub_1BE049364();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD063EC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD063F84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD064060()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0640B0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0640F0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD064128()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD064178()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0641B0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD064210()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD064288()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0642C0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD064318(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0643D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0644A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD064514()
{
  v1 = type metadata accessor for DownloadDocumentCell();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  if (*(v0 + v2 + 72))
  {

    if (*(v3 + 96))
    {
    }
  }

  v4 = v3 + *(v1 + 44);
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);

  return swift_deallocObject();
}

uint64_t sub_1BD06473C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44558);
  sub_1BD3BA60C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0647B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  return sub_1BD3BE268(v3 + v4, a2);
}

uint64_t sub_1BD064814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04AFE4();
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

uint64_t sub_1BD0648D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE04AFE4();
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

uint64_t sub_1BD064998(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD064A54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD064BAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD3C0E70();
  *a1 = result;
  return result;
}

uint64_t sub_1BD064C30(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_1BD064DC0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD064FBC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD065078(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD065130()
{
  v1 = (type metadata accessor for BeneficiaryCell(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[10];
  v4 = sub_1BE04FCC4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C40);

  return swift_deallocObject();
}

uint64_t sub_1BD0652AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44C68);
  sub_1BD0DE4F4(&qword_1EBD44C78, &qword_1EBD44C68);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD065380()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0653B8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0653F8()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD065430()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD065478(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_1BD065608(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD065798(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE0493F4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BE04AF64();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0658BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BE0493F4();
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
      v13 = sub_1BE04AF64();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0659E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD065B10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD065C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD065CB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD065D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BD065E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BD065F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04A004();
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

uint64_t sub_1BD06600C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE04A004();
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

uint64_t sub_1BD0660C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1BE04A474();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BD0661C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1BE04A474();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BD0662C8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD066310()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD066348()
{

  return swift_deallocObject();
}

uint64_t sub_1BD066388()
{

  return swift_deallocObject();
}

id sub_1BD0663F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1BD066458(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD3DE600(v1);
}

uint64_t sub_1BD0664F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1BD0665B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD3DD86C(v1);
}

uint64_t sub_1BD06663C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0666F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD066840()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0668C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BD066A00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BD066B3C()
{
  v1 = type metadata accessor for PaymentPassHubRewardsApplyView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  sub_1BD0D45CC();
  v8 = (v0 + v3 + *(v1 + 24));
  v9 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1BD066E50()
{

  return swift_deallocObject();
}

uint64_t sub_1BD066EA8()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD066F94()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06703C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD067074()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0670AC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0670EC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0671A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0671DC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD067230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
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

uint64_t sub_1BD067308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1BD0673D0()
{
  v1 = type metadata accessor for WebIconImage();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  sub_1BD0D4604(*(v0 + v2 + *(v1 + 32)), *(v0 + v2 + *(v1 + 32) + 8));

  return swift_deallocObject();
}

uint64_t sub_1BD067528(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0675E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD06769C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45850);
  sub_1BD3FCB68();
  return swift_getOpaqueTypeConformance2();
}

void sub_1BD067728(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD4012D4(v1);
}

uint64_t sub_1BD0678C8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD067998()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0679D8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD067A58()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD067A90()
{

  return swift_deallocObject();
}

uint64_t sub_1BD067AE0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD067B18()
{

  return swift_deallocObject();
}

uint64_t sub_1BD067B58()
{

  return swift_deallocObject();
}

uint64_t sub_1BD067BA4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PaymentChinItem();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = sub_1BE04E6A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v0 + v4;
  sub_1BD0D4604(*(v0 + v4), *(v0 + v4 + 8));
  sub_1BD0D4604(*(v9 + 16), *(v9 + 24));
  sub_1BD0D4604(*(v9 + 32), *(v9 + 40));

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[12], v1);
  if (*(v0 + v4 + v2[13]))
  {
  }

  if (*(v9 + v2[14] + 8))
  {
  }

  v10 = v2[15];
  v11 = sub_1BE04C894();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);
  v12 = v2[16];
  v13 = v12 + *(sub_1BE04EDE4() + 20);
  v14 = sub_1BE04F684();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  (*(v7 + 8))(v0 + ((v4 + v5 + v8) & ~v8), v6);

  return swift_deallocObject();
}

uint64_t sub_1BD067E10()
{
  sub_1BE04C764();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04F9B4();
  sub_1BE051534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BE051754();
  sub_1BE04F9B4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD068130()
{

  return swift_deallocObject();
}

uint64_t sub_1BD068178()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0681B0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0681E8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0682A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD068360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0683C8()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD068420()
{
  v1 = type metadata accessor for PaymentOfferActionExplanationView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1BD41D21C(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96));

  if (*(v2 + 192))
  {
  }

  v3 = (v2 + *(v1 + 60));
  v4 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_1BE04AA64();
      (*(*(v5 - 8) + 8))(v3, v5);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  sub_1BD0D4604(*(v2 + *(v1 + 68)), *(v2 + *(v1 + 68) + 8));

  return swift_deallocObject();
}

uint64_t sub_1BD06865C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitTransactionIcon.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0686C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitTransactionIcon.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD068738(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1BD0687EC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD06889C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0688D4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD068928()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD068980()
{

  return swift_deallocObject();
}

uint64_t sub_1BD068A0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD421A70();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD068A98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD4218D0();
  *a1 = result;
  return result;
}

uint64_t sub_1BD068AE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD421770();
  *a1 = result;
  return result;
}

uint64_t sub_1BD068B38()
{

  return swift_deallocObject();
}

uint64_t sub_1BD068B90()
{

  return swift_deallocObject();
}

uint64_t sub_1BD068C18()
{

  return swift_deallocObject();
}

uint64_t sub_1BD068C58()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD068C90()
{

  return swift_deallocObject();
}

uint64_t sub_1BD068CD0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD068D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 216);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD068DCC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 216) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD068E7C()
{
  v1 = type metadata accessor for ShippingMethodSheet();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (*v2)
  {
  }

  if (*(v2 + 96))
  {

    sub_1BD35D02C(*(v2 + 120), *(v2 + 128), *(v2 + 136));
  }

  v3 = (v2 + *(v1 + 40));
  v4 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_1BE04AA64();
      (*(*(v5 - 8) + 8))(v3, v5);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  return swift_deallocObject();
}

uint64_t sub_1BD069084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0690F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD06915C()
{
  v1 = type metadata accessor for ShippingMethodSheet();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  if (*(v0 + v2))
  {
  }

  if (*(v3 + 96))
  {

    sub_1BD35D02C(*(v3 + 120), *(v3 + 128), *(v3 + 136));
  }

  v4 = (v3 + *(v1 + 40));
  v5 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_1BE04AA64();
      (*(*(v6 - 8) + 8))(v4, v6);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  return swift_deallocObject();
}

uint64_t sub_1BD069374()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0693AC()
{
  v1 = type metadata accessor for ShippingMethodSheet();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;
  if (*(v0 + v2))
  {
  }

  if (*(v4 + 96))
  {

    sub_1BD35D02C(*(v4 + 120), *(v4 + 128), *(v4 + 136));
  }

  v5 = (v4 + *(v1 + 40));
  v6 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_1BE04AA64();
      (*(*(v7 - 8) + 8))(v5, v7);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  return swift_deallocObject();
}

uint64_t sub_1BD069604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46068);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD069674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BD0696DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 descriptor];
  *a2 = result;
  return result;
}

void sub_1BD06971C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1BE052404();
  [v2 setIdentifier_];
}

uint64_t sub_1BD069780()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06983C(uint64_t a1, uint64_t a2, int *a3)
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
LABEL_19:
    v18 = *(v10 + 48);

    return v18(a1 + v11, a2, v9);
  }

  v12 = sub_1BE04A974();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_19;
  }

  v13 = sub_1BE049B44();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_19;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[12];
    goto LABEL_19;
  }

  v15 = sub_1BE04AFE4();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[13];
    goto LABEL_19;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[15];
    goto LABEL_19;
  }

  v17 = sub_1BE049B04();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a3[18];
    goto LABEL_19;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46160);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[19];

  return v20(v21, a2, v19);
}

uint64_t sub_1BD069B34(uint64_t result, uint64_t a2, int a3, int *a4)
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
LABEL_17:
    v18 = *(v10 + 56);

    return v18(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1BE04A974();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_17;
  }

  v13 = sub_1BE049B44();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_17;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[12];
    goto LABEL_17;
  }

  v15 = sub_1BE04AFE4();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[13];
    goto LABEL_17;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[15];
    goto LABEL_17;
  }

  v17 = sub_1BE049B04();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[18];
    goto LABEL_17;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46160);
  v20 = *(*(v19 - 8) + 56);
  v21 = v5 + a4[19];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1BD069E2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE04AA64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD069ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04AA64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD069F84()
{
  v1 = sub_1BE04AFE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD06A048()
{
  v1 = sub_1BE04AFE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD06A128()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06A174()
{
  v1 = sub_1BE04AFE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD06A24C()
{
  v1 = sub_1BE04AFE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD06A33C()
{
  v1 = sub_1BE04AFE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1BE0491F4();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1BD06A648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s11TotalAmountVMa(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD06A714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s11TotalAmountVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1BD06A7E8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06A828()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06A868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD06A9A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD06AB20()
{
  v1 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 17) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 32);
  v6 = sub_1BE051AD4();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);

  return swift_deallocObject();
}

uint64_t sub_1BD06ACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SEStorageUsageGroup(0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42948);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BD06ADD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SEStorageUsageGroup(0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42948);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BD06AF0C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06AF4C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06AF84()
{
  v1 = (type metadata accessor for SEStorageAppletUsageSection(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v5 = (v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = v0 + v2;

  v7 = *(type metadata accessor for SEStorageUsageGroup(0) + 20);
  v8 = sub_1BE04C164();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  v9 = v6 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 32);
      v12 = sub_1BE051AD4();
      (*(*(v12 - 8) + 8))(v9 + v11, v12);
    }
  }

  else
  {
  }

  v13 = *(v4 + 24);
  v14 = sub_1BE04AF64();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v0 + v5 + v13, v14);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD06B264()
{
  v1 = (type metadata accessor for SEStorageAppletUsageSection(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = *(type metadata accessor for SEStorageUsageGroup(0) + 20);
  v4 = sub_1BE04C164();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = sub_1BE051AD4();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD06B4B8()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD06B510()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06B58C()
{

  return swift_deallocObject();
}

__n128 sub_1BD06B630(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1BD06B63C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ContactEditingSection();
  v24 = *(*(v3 - 1) + 80);
  v4 = v0 + ((v24 + 57) & ~v24);

  v5 = v4 + v3[13];

  sub_1BE0534B4();
  v6 = *(sub_1BE051964() + 32);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5 + v6, 1, v1))
  {
    (*(v7 + 8))(v5 + v6, v1);
  }

  if (*(v4 + v3[15]))
  {
  }

  v9 = v3[21];
  v10 = *(v2 - 8);
  if (!(*(v10 + 48))(v4 + v9, 1, v2))
  {
    (*(v10 + 8))(v4 + v9, v2);
  }

  v11 = v4 + v3[22];
  if (*(v11 + 24))
  {
    sub_1BD0DDF10(*v11, *(v11 + 8), *(v11 + 16));
  }

  v12 = v4 + v3[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 32);
      v15 = sub_1BE051AD4();
      (*(*(v15 - 8) + 8))(v12 + v14, v15);
    }
  }

  else
  {
  }

  v16 = v4 + v3[24];
  if (!v8(v16, 1, v1))
  {
    (*(v7 + 8))(v16, v1);
  }

  sub_1BE0516D4();

  v17 = v4 + v3[25];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 48);
  if (!v20(v17, 1, AssociatedTypeWitness))
  {
    (*(v19 + 8))(v17, AssociatedTypeWitness);
  }

  sub_1BE0534B4();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v21 = sub_1BE04E294();

  v22 = *(v21 + 40);
  if (!v20(v17 + v22, 1, AssociatedTypeWitness))
  {
    (*(v19 + 8))(v17 + v22, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD06BB3C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06BB74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ContactEditingSection();
  v26 = *(*(v3 - 1) + 64);
  v27 = *(*(v3 - 1) + 80);
  v4 = *(v1 - 8);
  v24 = *(v4 + 80);
  v25 = (v27 + 48) & ~v27;
  v5 = v0 + v25;

  v6 = v0 + v25 + v3[13];

  sub_1BE0534B4();
  v7 = *(sub_1BE051964() + 32);
  v8 = *(v4 + 48);
  if (!v8(v6 + v7, 1, v1))
  {
    (*(v4 + 8))(v6 + v7, v1);
  }

  if (*(v5 + v3[15]))
  {
  }

  v9 = v3[21];
  v10 = *(v2 - 8);
  if (!(*(v10 + 48))(v5 + v9, 1, v2))
  {
    (*(v10 + 8))(v5 + v9, v2);
  }

  v11 = v5 + v3[22];
  if (*(v11 + 24))
  {
    sub_1BD0DDF10(*v11, *(v11 + 8), *(v11 + 16));
  }

  v12 = v5 + v3[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 32);
      v15 = sub_1BE051AD4();
      (*(*(v15 - 8) + 8))(v12 + v14, v15);
    }
  }

  else
  {
  }

  v16 = v5 + v3[24];
  if (!v8(v16, 1, v1))
  {
    (*(v4 + 8))(v16, v1);
  }

  sub_1BE0516D4();

  v17 = v5 + v3[25];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 48);
  if (!v20(v17, 1, AssociatedTypeWitness))
  {
    (*(v19 + 8))(v17, AssociatedTypeWitness);
  }

  sub_1BE0534B4();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v21 = sub_1BE04E294();

  v22 = *(v21 + 40);
  if (!v20(v17 + v22, 1, AssociatedTypeWitness))
  {
    (*(v19 + 8))(v17 + v22, AssociatedTypeWitness);
  }

  (*(v4 + 8))(v0 + ((v25 + v26 + v24) & ~v24), v1);
  return swift_deallocObject();
}

uint64_t sub_1BD06C0CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ContactEditingSection();
  v26 = *(*(v3 - 1) + 64);
  v27 = *(*(v3 - 1) + 80);
  v4 = *(v1 - 8);
  v24 = *(v4 + 80);
  v25 = (v27 + 48) & ~v27;
  v5 = v0 + v25;

  v6 = v0 + v25 + v3[13];

  sub_1BE0534B4();
  v7 = *(sub_1BE051964() + 32);
  v8 = *(v4 + 48);
  if (!v8(v6 + v7, 1, v1))
  {
    (*(v4 + 8))(v6 + v7, v1);
  }

  if (*(v5 + v3[15]))
  {
  }

  v9 = v3[21];
  v10 = *(v2 - 8);
  if (!(*(v10 + 48))(v5 + v9, 1, v2))
  {
    (*(v10 + 8))(v5 + v9, v2);
  }

  v11 = v5 + v3[22];
  if (*(v11 + 24))
  {
    sub_1BD0DDF10(*v11, *(v11 + 8), *(v11 + 16));
  }

  v12 = v5 + v3[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 32);
      v15 = sub_1BE051AD4();
      (*(*(v15 - 8) + 8))(v12 + v14, v15);
    }
  }

  else
  {
  }

  v16 = v5 + v3[24];
  if (!v8(v16, 1, v1))
  {
    (*(v4 + 8))(v16, v1);
  }

  sub_1BE0516D4();

  v17 = v5 + v3[25];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 48);
  if (!v20(v17, 1, AssociatedTypeWitness))
  {
    (*(v19 + 8))(v17, AssociatedTypeWitness);
  }

  sub_1BE0534B4();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v21 = sub_1BE04E294();

  v22 = *(v21 + 40);
  if (!v20(v17 + v22, 1, AssociatedTypeWitness))
  {
    (*(v19 + 8))(v17 + v22, AssociatedTypeWitness);
  }

  (*(v4 + 8))(v0 + ((v25 + v26 + v24) & ~v24), v1);
  return swift_deallocObject();
}

uint64_t sub_1BD06C630()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ContactEditingSection();
  v24 = *(*(v3 - 1) + 80);
  v4 = v0 + ((v24 + 48) & ~v24);

  v5 = v4 + v3[13];

  sub_1BE0534B4();
  v6 = *(sub_1BE051964() + 32);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5 + v6, 1, v1))
  {
    (*(v7 + 8))(v5 + v6, v1);
  }

  if (*(v4 + v3[15]))
  {
  }

  v9 = v3[21];
  v10 = *(v2 - 8);
  if (!(*(v10 + 48))(v4 + v9, 1, v2))
  {
    (*(v10 + 8))(v4 + v9, v2);
  }

  v11 = v4 + v3[22];
  if (*(v11 + 24))
  {
    sub_1BD0DDF10(*v11, *(v11 + 8), *(v11 + 16));
  }

  v12 = v4 + v3[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 32);
      v15 = sub_1BE051AD4();
      (*(*(v15 - 8) + 8))(v12 + v14, v15);
    }
  }

  else
  {
  }

  v16 = v4 + v3[24];
  if (!v8(v16, 1, v1))
  {
    (*(v7 + 8))(v16, v1);
  }

  sub_1BE0516D4();

  v17 = v4 + v3[25];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 48);
  if (!v20(v17, 1, AssociatedTypeWitness))
  {
    (*(v19 + 8))(v17, AssociatedTypeWitness);
  }

  sub_1BE0534B4();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v21 = sub_1BE04E294();

  v22 = *(v21 + 40);
  if (!v20(v17 + v22, 1, AssociatedTypeWitness))
  {
    (*(v19 + 8))(v17 + v22, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}