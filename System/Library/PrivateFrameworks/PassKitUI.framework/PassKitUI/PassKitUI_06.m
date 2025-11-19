uint64_t objectdestroy_29Tm()
{

  return swift_deallocObject();
}

id sub_1BD0E6090(void *a1, void *a2)
{
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  result = [objc_opt_self() defaultInstance];
  if (result)
  {
    *(v2 + 88) = result;
    v6 = [a1 originalShippingAddress];
    if (!v6)
    {
      v6 = [*(v2 + 80) defaultShippingAddress];
    }

    *(v2 + 16) = v6;
    *(v2 + 24) = a2;
    *(v2 + 96) = a1;
    v7 = a2;
    v8 = a1;
    result = [v8 paymentRequest];
    if (result)
    {
      v9 = result;
      v10 = [result requiredShippingContactFields];

      type metadata accessor for PKContactField(0);
      sub_1BD0E947C(&qword_1EBD35EE0, type metadata accessor for PKContactField);
      v11 = sub_1BE052A34();

      v12 = *(v2 + 16);
      if (v12)
      {
        v13 = *MEMORY[0x1E69BB7D8];
        v14 = v12;
        LOBYTE(v13) = sub_1BD6CC0DC(v13, v11);

        if (v13)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1BE0B7020;
          *(v15 + 32) = v14;
          swift_beginAccess();
          *(v2 + 64) = v15;
          v16 = v14;

          v17 = [v8 shippingAddress];
          if (v17)
          {
            v18 = v17;

            return v2;
          }

          [v8 setShippingAddress_];
        }

        else
        {
        }

        return v2;
      }

      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD0E6324()
{
  sub_1BD0D4744(*(v0 + 32));

  return v0;
}

uint64_t sub_1BD0E6384()
{
  sub_1BD0E6324();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for LoadingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LoadingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BD0E6530()
{
  result = qword_1EBD38860;
  if (!qword_1EBD38860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38860);
  }

  return result;
}

uint64_t sub_1BD0E6584@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 96);
  if ([v3 mode] == 1)
  {
    v4 = [v3 pass];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  if ([v3 mode] == 2)
  {
    v4 = [v3 remotePaymentInstrument];
    if (v4)
    {
LABEL_5:
      *a1 = v4;
      v5 = type metadata accessor for WrappedPass(0);
      swift_storeEnumTagMultiPayload();
      v6 = *(*(v5 - 8) + 56);
      v7 = a1;
      v8 = 0;
      v9 = v5;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = type metadata accessor for WrappedPass(v4);
  v6 = *(*(v10 - 8) + 56);
  v9 = v10;
  v7 = a1;
  v8 = 1;
LABEL_8:

  return v6(v7, v8, 1, v9);
}

void sub_1BD0E66D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v42 - v4);
  v6 = type metadata accessor for WrappedPass(0);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0[12];
  v13 = [v12 paymentRequest];
  if (!v13)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [v13 requiredBillingContactFields];

  type metadata accessor for PKContactField(0);
  sub_1BD0E947C(&qword_1EBD35EE0, type metadata accessor for PKContactField);
  v16 = sub_1BE052A34();

  LOBYTE(v15) = sub_1BD6CC0DC(*MEMORY[0x1E69BB7D8], v16);

  if ((v15 & 1) == 0)
  {
    return;
  }

  sub_1BD0E6584(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BD0E8D78(v5);
  }

  else
  {
    sub_1BD0E8DE0(v5, v11);
    v17 = sub_1BD0E6B40(v11);
    sub_1BD0E8E44(v11);
    if (v17)
    {
      v18 = v17;
      v19 = v18;
      goto LABEL_9;
    }
  }

  sub_1BD0E6C38();
  v19 = 0;
  if (!v18)
  {
    v17 = 0;
    v26 = v1[6];
    if (!v26)
    {
      goto LABEL_17;
    }

LABEL_14:
    v1[6] = v17;
    v27 = v17;

    v28 = v1[4];
    if (v28)
    {
      v29 = sub_1BE048964();
      v28(v29);

      sub_1BD0D4744(v28);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v17 = v18;
LABEL_9:
  v20 = v18;
  sub_1BE052434();
  v21 = sub_1BE052404();

  [v20 setValueSource_];

  v22 = v1[6];
  if (!v22)
  {
    v26 = 0;
    goto LABEL_14;
  }

  sub_1BD0E8CBC();
  v23 = v22;
  v24 = v17;
  v25 = sub_1BE053074();

  if ((v25 & 1) == 0)
  {
    v26 = v1[6];
    goto LABEL_14;
  }

LABEL_17:
  v30 = [v12 billingAddress];
  if (v30)
  {
  }

  else
  {
    [v12 setBillingAddress_];
  }

  v31 = [v12 paymentRequest];
  if (!v31)
  {
    goto LABEL_32;
  }

  v32 = v31;
  v33 = [v31 billingContact];

  if (v33)
  {
    v34 = [v33 cnMutableContact];
    v35 = v1[7];
    if (v35)
    {
      sub_1BD0E8CBC();
      v36 = v34;
      v37 = v35;
      v38 = sub_1BE053074();

      if (v38)
      {
LABEL_28:

        goto LABEL_29;
      }

      v39 = v1[7];
    }

    else
    {
      v39 = 0;
    }

    v1[7] = v34;
    v36 = v34;

    v40 = v1[4];
    if (v40)
    {
      v41 = sub_1BE048964();
      v40(v41);

      sub_1BD0D4744(v40);
      return;
    }

    goto LABEL_28;
  }

LABEL_29:
}

id sub_1BD0E6B40(uint64_t a1)
{
  v3 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0E8EA0(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1BD0E8E44(v6);
      return 0;
    }

    v8 = *v6;
    v9 = [*(v1 + 80) defaultBillingAddressForRemotePaymentInstrument_];
  }

  else
  {
    v8 = *v6;
    v9 = [*(v1 + 80) defaultBillingAddressForPaymentPass_];
  }

  v10 = v9;

  return v10;
}

void sub_1BD0E6C38()
{
  v1 = [*(v0 + 80) defaultBillingAddresses];
  if (!v1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1;
  v3 = sub_1BE052244();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_1BD1D9F10(*(v3 + 16), 0);
    v6 = sub_1BD5ED830(&v18, (v5 + 4), v4, v3);
    sub_1BD0D45FC();
    if (v6 == v4)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v7 = sub_1BD3EFEF4(v5);

  sub_1BD3EFFC8(v7);
  v8 = sub_1BE04A0E4();
  v9 = objc_allocWithZone(MEMORY[0x1E69B8D30]);
  v10 = sub_1BE052404();
  v11 = sub_1BE052724();

  v12 = [v9 initWithTitle:v10 preferences:v11 selectedIndex:v8 readOnly:0];

  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v12 setContactKey_];
  [v12 mergeRecentsAndMeCard];
  v13 = [v12 preferences];
  if (v13)
  {
    v14 = v13;

    v15 = sub_1BE052744();

    v16 = sub_1BD3EFFDC(v15);

    if (v16 >> 62)
    {
      if (!sub_1BE053704())
      {
        goto LABEL_14;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:

      return;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB40900](0, v16);
      goto LABEL_14;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v16 + 32);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
}

void sub_1BD0E6EB0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0E8EA0(a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *v8;
    [*(v2 + 80) setDefaultBillingAddress:a1 forPaymentPass:v10];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = *v8;
    [*(v2 + 80) setDefaultBillingAddress:a1 forRemotePaymentInstrument:v10];
LABEL_5:

    return;
  }

  sub_1BD0E8E44(v8);
}

uint64_t sub_1BD0E6F98(void *a1)
{
  v2 = v1;
  v4 = sub_1BE051F54();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BE051FA4();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04B344();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = (v15 + 16);
  swift_beginAccess();
  v17 = a1;
  v18 = sub_1BE048C84();
  v19 = sub_1BD0E7524(v18, (v15 + 16));
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    result = swift_beginAccess();
    v25 = *(v2 + 64);
    if ((v25 & 0xC000000000000001) == 0)
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v19 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(v25 + 8 * v19 + 32);
LABEL_8:
        v35 = v26;
        swift_endAccess();
        sub_1BE04B324();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38868);
        sub_1BD0DE4F4(&qword_1EBD38870, &qword_1EBD38868);
        sub_1BE052324();
        swift_endAccess();
        (*(v11 + 8))(v14, v10);
        v23 = *v16;
        *v16 = v35;
        goto LABEL_9;
      }

      __break(1u);
      return result;
    }

LABEL_14:
    v26 = MEMORY[0x1BFB40900](v19);
    goto LABEL_8;
  }

  v22 = *v16;
  swift_beginAccess();
  if (*(v2 + 64) >> 62 && sub_1BE053704() < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v22;
  sub_1BD1DD280(0, 0, v23);
  swift_endAccess();
LABEL_9:

  v27 = *(v2 + 32);
  if (v27)
  {
    v28 = sub_1BE048964();
    v27(v28);
    sub_1BD0D4744(v27);
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v15;
  *(v29 + 24) = v2;
  aBlock[4] = sub_1BD0E9570;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_23;
  v30 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE051F74();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1BD0E947C(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  v31 = v37;
  v32 = v40;
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v31, v30);
  _Block_release(v30);
  (*(v39 + 8))(v31, v32);
  (*(v36 + 8))(v9, v38);

  swift_beginAccess();
  v33 = *(v15 + 16);

  return v33;
}

unint64_t sub_1BD0E7524(unint64_t a1, void **a2)
{
  if (a1 >> 62)
  {
LABEL_17:
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_1BE053704();
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB40900](v4, a1);
    }

    else
    {
      if (v4 >= *(v14 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BE0B69E0;
    *(v8 + 32) = sub_1BE052434();
    *(v8 + 40) = v9;
    v10 = v7;
    v11 = sub_1BE052724();

    LOBYTE(v8) = [v6 representsContact:v10 forContactKeys:v11];

    if (v8)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1BD0E76BC(uint64_t a1)
{
  swift_beginAccess();
  if ([*(a1 + 16) contactSource] == 1)
  {
    swift_beginAccess();
    v2 = *(a1 + 16);
    sub_1BE052434();
    v3 = v2;
    sub_1BD0E904C(v3);
  }

  else
  {
    swift_beginAccess();
    v4 = *(a1 + 16);
    sub_1BE052434();
    v3 = v4;
    sub_1BD51D5B4(v3);
  }
}

uint64_t sub_1BD0E77B0(void *a1, void *a2)
{
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FA4();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v2 + 64);
  sub_1BE048C84();
  v15 = sub_1BD2242A4(a1, v14);
  v17 = v16;

  if (v17)
  {
    return result;
  }

  v19 = [a1 contactSource];
  [a2 setContactSource_];
  swift_beginAccess();
  v20 = *(v2 + 64);
  v21 = a2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v2 + 64) = v20;
  if (!result || v20 < 0 || (v20 & 0x4000000000000000) != 0)
  {
    result = sub_1BD509758(v20);
    v20 = result;
    *(v2 + 64) = result;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v15 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v30 = v6;
  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 8 * v15 + 0x20);
  *((v20 & 0xFFFFFFFFFFFFFF8) + 8 * v15 + 0x20) = v21;
  *(v2 + 64) = v20;
  swift_endAccess();

  v23 = *(v2 + 32);
  if (v23)
  {
    v24 = sub_1BE048964();
    v23(v24);
    sub_1BD0D4744(v23);
  }

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = a1;
  v25[4] = v21;
  v25[5] = v2;
  aBlock[4] = sub_1BD0E951C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_14;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = a1;
  sub_1BE048964();
  sub_1BE051F74();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1BD0E947C(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v9, v26);
  _Block_release(v26);
  (*(v30 + 8))(v9, v5);
  (*(v31 + 8))(v13, v32);
}

void sub_1BD0E7BB0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 == 1)
  {
    v7 = PKUpdateMeContact();
  }

  else
  {
    v8 = (a1 & 0xFFFFFFFFFFFFFFFBLL) != 0;
    v9 = *(a4 + 80);
    v11 = [v9 defaultShippingAddress];
    v12 = [a2 isEqualIgnoringIdentifiers_];

    if (a1 == 2 || ((v8 | v12 ^ 1) & 1) == 0)
    {
      [v9 setDefaultShippingAddress_];
    }

    v7 = 0;
  }

  v13 = [a2 recentContact];
  if (v13)
  {
    v14 = v13;
    [*(a4 + 88) deleteRecent_];
  }

  if ((v7 & 1) == 0)
  {
    [a3 copy];
    sub_1BE053624();
    swift_unknownObjectRelease();
    sub_1BD0E8CBC();
    swift_dynamicCast();
    sub_1BE052434();
    sub_1BD51D5B4(v15);
  }
}

uint64_t sub_1BD0E7D54(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1BE048C84();
  v14 = sub_1BD0E91D8((v2 + 64), a1);

  v15 = *(v2 + 64);
  if (v15 >> 62)
  {
    v16 = sub_1BE053704();
    if (v16 >= v14)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16 < v14)
  {
    goto LABEL_7;
  }

LABEL_3:
  v22 = v9;
  v23 = v5;
  sub_1BD1DD38C(v14, v16);
  swift_endAccess();
  v17 = *(v2 + 32);
  if (v17)
  {
    v18 = sub_1BE048964();
    v17(v18);
    sub_1BD0D4744(v17);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v2;
  aBlock[4] = sub_1BD0E9474;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_1;
  v20 = _Block_copy(aBlock);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE051F74();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1BD0E947C(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v8, v20);
  _Block_release(v20);
  (*(v23 + 8))(v8, v4);
  (*(v10 + 8))(v13, v22);
}

void sub_1BD0E80F4(unint64_t a1, uint64_t a2)
{
  v18 = a2;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v7 recentContact];
      if (v10)
      {
        v11 = v10;
        v12 = [objc_opt_self() defaultInstance];
        if (!v12)
        {
          __break(1u);
          break;
        }

        v5 = v12;
        v6 = v11;
        [v5 deleteRecent_];
      }

      ++v4;
      if (v9 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v13 = *(v18 + 80);
  v14 = [v13 defaultShippingAddress];
  if (v14)
  {
    v16 = v14;
    v19 = v14;
    MEMORY[0x1EEE9AC00](v14, v15);
    v17[2] = &v19;
    if (sub_1BD30114C(sub_1BD0E9580, v17, a1))
    {
      [v13 deleteDefaultShippingAddress];
    }
  }
}

void sub_1BD0E82D4()
{
  if (!*(v0 + 72))
  {
    v2 = v0;
    *(v0 + 72) = 1;
    v88[4] = MEMORY[0x1E69E7CC0];
    v3 = sub_1BE04A0E4();
    v4 = objc_allocWithZone(MEMORY[0x1E69B8D30]);
    v5 = sub_1BE052404();
    v6 = sub_1BE052724();
    v7 = [v4 initWithTitle:v5 preferences:v6 selectedIndex:v3 readOnly:0];

    if (!v7)
    {
      __break(1u);
      return;
    }

    [v7 setContactKey_];
    v8 = *(v2 + 88);
    v9 = v7;
    v10 = [v8 meCardEntriesForPreference_];
    v81 = v9;
    v82 = v2;
    if (v10)
    {
      v11 = v10;
      sub_1BD0E8CBC();
      v12 = sub_1BE052744();

      v87 = v8;
      if (v12 >> 62)
      {
        v13 = sub_1BE053704();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1BE048C84();
      if (v13)
      {
        v14 = 0;
        v15 = v12 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1BFB40900](v14, v12);
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_97;
            }

            v16 = *(v12 + 8 * v14 + 32);
          }

          v17 = v16;
          v18 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          sub_1BE052434();
          v1 = sub_1BE052404();

          [v17 setValueSource_];

          ++v14;
          if (v18 == v13)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

LABEL_15:

      v9 = v81;
      v2 = v82;
      v8 = v87;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    sub_1BDA7A2A8(v12);
    v19 = *(v2 + 16);
    if (v19)
    {
      [*(v2 + 16) setValueSource_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1BE0B7020;
      *(v20 + 32) = v19;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v21 = v19;
    sub_1BDA7A2A8(v20);
    v22 = [v8 recentsForPreference_];

    v23 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      sub_1BD0E8CBC();
      v15 = sub_1BE052744();

      if (v15 >> 62)
      {
        v24 = sub_1BE053704();
      }

      else
      {
        v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1BE048C84();
      if (v24)
      {
        v25 = 0;
        v1 = v15 & 0xFFFFFFFFFFFFFF8;
        v12 = *MEMORY[0x1E69BB410];
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x1BFB40900](v25, v15);
          }

          else
          {
            if (v25 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v26 = *(v15 + 8 * v25 + 32);
          }

          v27 = v26;
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          sub_1BE052434();
          v29 = sub_1BE052404();

          [v27 setValueSource_];

          ++v25;
          if (v28 == v24)
          {
            goto LABEL_32;
          }
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
        goto LABEL_103;
      }

LABEL_32:

      v9 = v81;
      v2 = v82;
      v23 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    sub_1BDA7A2A8(v15);
    v74 = sub_1BD0E8CBC();
    v30 = sub_1BE052724();
    [v9 _mergeContacts_];

    v31 = [v9 preferences];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1BE052744();

      v34 = sub_1BD3FD0A4(v33);

      if (v34)
      {
        v1 = v34;
      }

      else
      {
        v1 = v23;
      }
    }

    else
    {

      v1 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    *(v2 + 64) = v1;
    sub_1BE048C84();

    *(v2 + 72) = 2;
    v35 = *(v2 + 96);
    v36 = [v35 originalShippingAddress];
    v12 = v36;
    if (v36)
    {
      v88[0] = v36;
      MEMORY[0x1EEE9AC00](v36, v37);
      v72[2] = v88;
      v38 = v12;
      v15 = 0;
      if (sub_1BD30114C(sub_1BD0E8D5C, v72, v1))
      {

        v39 = *(v2 + 32);
        if (v39)
        {
          v40 = sub_1BE048964();
          v39(v40);

          sub_1BD0D4744(v39);
        }

        else
        {
        }

        goto LABEL_119;
      }
    }

    else
    {
      v15 = 0;
    }

    v75 = v35;
    v83 = sub_1BD551128();
    v78 = sub_1BE04A0E4();
    if (!(v1 >> 62))
    {
      v41 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v86 = v1;
      if (!v41)
      {
        goto LABEL_104;
      }

LABEL_48:
      v73 = v15;
      v42 = 0;
      v87 = 0;
      v43 = 0;
      v44 = v1 & 0xC000000000000001;
      v84 = v1 + 32;
      v85 = v1 & 0xFFFFFFFFFFFFFF8;
      v76 = (v83 + 40);
      v77 = 0;
      v80 = v41;
      while (1)
      {
        if (v44)
        {
          v45 = MEMORY[0x1BFB40900](v43, v1);
        }

        else
        {
          if (v43 >= *(v85 + 16))
          {
            goto LABEL_101;
          }

          v45 = *(v84 + 8 * v43);
        }

        v46 = v45;
        if (__OFADD__(v43++, 1))
        {
          goto LABEL_100;
        }

        if (v12 && [v12 isEqualIgnoringIdentifiers_])
        {
          v58 = v42;
          v59 = v87;

          v12 = v46;
          v61 = v81;
          v60 = v82;
          v62 = v75;
          v63 = &_OBJC_LABEL_PROTOCOL___PKPaymentPassDetailAutoReloadActionSectionControllerDelegate;
          v41 = v77;
          goto LABEL_109;
        }

        if ([v46 contactSource] == 1)
        {
          break;
        }

        if (!v42)
        {
          v42 = v46;
          goto LABEL_51;
        }

LABEL_50:

LABEL_51:
        if (v43 == v41)
        {
          v58 = v42;
          v59 = v87;

          v61 = v81;
          v60 = v82;
          v62 = v75;
          v63 = &_OBJC_LABEL_PROTOCOL___PKPaymentPassDetailAutoReloadActionSectionControllerDelegate;
          if (v12)
          {
            v41 = v77;
            goto LABEL_108;
          }

          v41 = v77;
          if (v77)
          {
            v12 = v77;
            goto LABEL_107;
          }

          v12 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        }
      }

      v15 = [v46 postalAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
      v48 = sub_1BE052744();

      if (v48 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_62;
        }
      }

      else if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_62:
        if ((v48 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x1BFB40900](0, v48);
        }

        else
        {
          if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_102;
          }

          v49 = *(v48 + 32);
        }

        v50 = v49;

        v15 = [v50 label];

        if (!v15)
        {
          v1 = v86;
          if (!v87)
          {
LABEL_80:
            v87 = v46;
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        v51 = v44;
        v52 = sub_1BE052434();
        v54 = v53;

        v55 = *(v83 + 16);
        if (v55)
        {
          v79 = v42;
          v15 = 0;
          v56 = v76;
          while (1)
          {
            v57 = *(v56 - 1) == v52 && *v56 == v54;
            if (v57 || (sub_1BE053B84() & 1) != 0)
            {
              break;
            }

            ++v15;
            v56 += 2;
            if (v55 == v15)
            {
              v42 = v79;
              goto LABEL_75;
            }
          }

          if (v15 >= v78)
          {
          }

          else
          {

            v77 = v46;
            v78 = v15;
          }

          v1 = v86;
          v44 = v51;
          v42 = v79;
          v41 = v80;
          goto LABEL_51;
        }

LABEL_75:
        v1 = v86;
        v44 = v51;
        v41 = v80;
      }

      if (!v87)
      {
        goto LABEL_80;
      }

      goto LABEL_50;
    }

LABEL_103:
    v41 = sub_1BE053704();
    v86 = v1;
    if (!v41)
    {
LABEL_104:

      v59 = 0;
      v58 = 0;
      v61 = v81;
      v60 = v82;
      v62 = v75;
      v63 = &_OBJC_LABEL_PROTOCOL___PKPaymentPassDetailAutoReloadActionSectionControllerDelegate;
      if (!v12)
      {
LABEL_105:
        v12 = v58;
        v64 = v58;
        v59 = 0;
LABEL_106:
        v65 = v59;
        v41 = 0;
LABEL_107:
        v66 = v41;
      }

LABEL_108:

LABEL_109:
      v38 = v12;
      v67 = [v62 v63[379]];
      if (v67)
      {
        if (v12)
        {
          v68 = v67;
          v69 = sub_1BE053074();

          if (v69)
          {
            goto LABEL_117;
          }

LABEL_115:
          [v62 setShippingAddress_];

          goto LABEL_116;
        }
      }

      else
      {
        v67 = v38;
        if (!v12)
        {
LABEL_117:
          v70 = *(v60 + 32);
          if (v70)
          {
            v71 = sub_1BE048964();
            v70(v71);

            sub_1BD0D4744(v70);
            goto LABEL_119;
          }

LABEL_116:
          v38 = v41;
LABEL_119:

          return;
        }
      }

      goto LABEL_115;
    }

    goto LABEL_48;
  }
}

unint64_t sub_1BD0E8CBC()
{
  result = qword_1EBD406E0;
  if (!qword_1EBD406E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD406E0);
  }

  return result;
}

uint64_t sub_1BD0E8D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0E8DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WrappedPass(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0E8E44(uint64_t a1)
{
  v2 = type metadata accessor for WrappedPass(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0E8EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WrappedPass(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD0E8F04(unint64_t a1, unint64_t a2)
{
  v13 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_1BE053704();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB40900](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v8 = v6;
    v14 = v6;
    MEMORY[0x1EEE9AC00](v6, v7);
    v12[2] = &v14;
    v9 = sub_1BD30114C(sub_1BD0E9580, v12, v13);

    if (v9)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_1BD0E904C(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PKAddMeContactForKey())
  {
    sub_1BE04D084();
    v7 = sub_1BE04D204();
    v8 = sub_1BE052C54();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v7, v8, "Successfully saved contact to me card", v9, 2u);
      MEMORY[0x1BFB45F20](v9, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {

    sub_1BD51D5B4(a1);
  }
}

uint64_t sub_1BD0E91D8(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = sub_1BD0E8F04(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1BE053704();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v27 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1BE053704())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB40900](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v14 = v12;
    v28 = v12;
    MEMORY[0x1EEE9AC00](v12, v13);
    v26[2] = &v28;
    v15 = sub_1BD30114C(sub_1BD0E9580, v26, a2);

    if ((v15 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1BFB40900](v2, v6);
    v17 = MEMORY[0x1BFB40900](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v18)
    {
      goto LABEL_46;
    }

    if (v10 >= v18)
    {
      goto LABEL_47;
    }

    v19 = *(v6 + 32 + 8 * v10);
    v16 = *(v6 + 32 + 8 * v2);
    v17 = v19;
  }

  v20 = v17;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1BD509758(v6);
    v21 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v21) = 0;
  }

  v22 = v6 & 0xFFFFFFFFFFFFFF8;
  v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v20;

  if ((v6 & 0x8000000000000000) == 0 && !v21)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1BD509758(v6);
  v22 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v22 + 16))
    {
      goto LABEL_44;
    }

    v24 = v22 + 8 * v10;
    v25 = *(v24 + 32);
    *(v24 + 32) = v16;

    *v27 = v6;
    goto LABEL_9;
  }

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
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_1BE053704();
}

uint64_t sub_1BD0E947C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

void sub_1BD0E959C(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE04CDA4();
  sub_1BD0EDA00(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *(a2 + 32) = sub_1BE04EEC4();
  *(a2 + 40) = v4;
  *&v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_1BD0DE19C(&v21, v20, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
  sub_1BE051694();
  sub_1BD0DE53C(&v21, &qword_1EBD51EC0);
  memset(v20, 0, sizeof(v20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55590);
  sub_1BE051694();
  v5 = v24;
  v6 = v22;
  v7 = v23;
  *(a2 + 104) = v21;
  *(a2 + 120) = v6;
  *(a2 + 136) = v7;
  *(a2 + 152) = v5;
  LOBYTE(v20[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38878);
  sub_1BE051694();
  v8 = *(&v21 + 1);
  *(a2 + 160) = v21;
  *(a2 + 168) = v8;
  *&v20[0] = 0;
  sub_1BE051694();
  v9 = *(&v21 + 1);
  *(a2 + 176) = v21;
  *(a2 + 184) = v9;
  v10 = type metadata accessor for AccountServiceSheet();
  v11 = v10[12];
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + v10[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v10[14];
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  swift_storeEnumTagMultiPayload();
  v14 = v10[15];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888);
  swift_storeEnumTagMultiPayload();
  *(a2 + 48) = a1;
  type metadata accessor for AccountServiceAuthorizationModel(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = a1;
  sub_1BE04D8B4();

  sub_1BD0EDA00(&qword_1EBD38890, type metadata accessor for AccountServiceAuthorizationModel);
  *a2 = sub_1BE04E954();
  *(a2 + 8) = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  type metadata accessor for AuthenticatorModel();
  sub_1BD0EDA00(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v17 = sub_1BE04E954();
  v19 = v18;

  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
}

uint64_t type metadata accessor for AccountServiceSheet()
{
  result = qword_1EBD388B8;
  if (!qword_1EBD388B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD0E99BC@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38920);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v101 = (&v100 - v4);
  v5 = type metadata accessor for AccountServiceSheet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38928);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v121 = &v100 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38930);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v17);
  v107 = &v100 - v18;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38938);
  MEMORY[0x1EEE9AC00](v122, v19);
  v108 = &v100 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38940);
  v109 = *(v21 - 8);
  v110 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v123 = &v100 - v23;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38948);
  MEMORY[0x1EEE9AC00](v111, v24);
  v113 = &v100 - v25;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38950);
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v26);
  v114 = &v100 - v27;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38958);
  MEMORY[0x1EEE9AC00](v112, v28);
  v118 = &v100 - v29;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38960);
  MEMORY[0x1EEE9AC00](v116, v30);
  v119 = &v100 - v31;
  sub_1BD0EA930(v140);
  v146 = v140[4];
  v147[0] = v141[0];
  *(v147 + 9) = *(v141 + 9);
  v142 = v140[0];
  v143 = v140[1];
  v144 = v140[2];
  v145 = v140[3];
  v126 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0EE25C(v1, v126);
  v32 = *(v6 + 80);
  v129 = ((v32 + 16) & ~v32) + v7;
  v127 = (v32 + 16) & ~v32;
  v33 = swift_allocObject();
  sub_1BD0EE2C0(&v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + ((v32 + 16) & ~v32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38968);
  sub_1BD0DE4F4(&qword_1EBD38970, &qword_1EBD38968);
  v34 = v121;
  sub_1BE04C664();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38978);
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = sub_1BE04F7B4();
  v37 = v101;
  *v101 = v36;
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38980);
  sub_1BD0EC614(v1, v37 + *(v38 + 44));
  v124 = *(v1 + 24);
  v39 = *(v1 + 48);
  v139[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D500);
  v139[4] = sub_1BD0DE4F4(&qword_1EBD38988, &qword_1EBD3D500);
  v139[0] = v39;
  v40 = *(v1 + 168);
  v104 = *(v1 + 160);
  LOBYTE(v133) = v104;
  v103 = v40;
  *(&v133 + 1) = v40;
  sub_1BE048964();
  v41 = v39;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990);
  sub_1BE0516A4();
  LOBYTE(v34) = LOBYTE(v130[0]) == 2;
  v128 = v1;
  v42 = v126;
  sub_1BD0EE25C(v1, v126);
  v125 = v32;
  v43 = v37;
  v44 = swift_allocObject();
  sub_1BD0EE2C0(v42, v44 + v127);
  v45 = (v16 + v12[26]);
  v46 = sub_1BD0E5E8C(0, &qword_1EBD35E30);
  v105 = sub_1BD0EE33C();
  v106 = v46;
  *v45 = sub_1BE04EEC4();
  v45[1] = v47;
  v48 = (v16 + v12[27]);
  sub_1BE04CDA4();
  sub_1BD0EDA00(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *v48 = sub_1BE04EEC4();
  v48[1] = v49;
  v50 = v16 + v12[28];
  LOBYTE(v130[0]) = 0;
  sub_1BE051694();
  v51 = *(&v133 + 1);
  *v50 = v133;
  *(v50 + 1) = v51;
  v52 = v16 + v12[29];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  v53 = v121;
  *(v16 + 89) = *(v147 + 9);
  v54 = v147[0];
  v16[4] = v146;
  v16[5] = v54;
  v55 = v143;
  *v16 = v142;
  v16[1] = v55;
  v56 = v145;
  v16[2] = v144;
  v16[3] = v56;
  sub_1BD0DE19C(v53, v16 + v12[17], &qword_1EBD38928);
  sub_1BD0DE19C(v37, v16 + v12[18], &qword_1EBD38920);
  *(v16 + v12[19]) = 0;
  *(v16 + v12[20]) = 1;
  *(v16 + v12[21]) = v124;
  sub_1BD0EE8CC(v139, v16 + v12[22]);
  *(v16 + v12[23]) = v34;
  v57 = (v16 + v12[25]);
  *v57 = sub_1BD0EF550;
  v57[1] = v44;
  sub_1BD0EE8CC(v139, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v137, &v133);
    v58 = *(&v134 + 1);
    v59 = v135;
    __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
    (*(v59 + 56))(v130, v58, v59);
    sub_1BD0DE53C(v43, &qword_1EBD38920);
    sub_1BD0DE53C(v53, &qword_1EBD38928);
    __swift_destroy_boxed_opaque_existential_0(v139);
    *(v16 + v12[24]) = v130[0];
    __swift_destroy_boxed_opaque_existential_0(&v133);
  }

  else
  {
    sub_1BD0DE53C(v37, &qword_1EBD38920);
    sub_1BD0DE53C(v53, &qword_1EBD38928);
    __swift_destroy_boxed_opaque_existential_0(v139);
    v138 = 0;
    memset(v137, 0, sizeof(v137));
    sub_1BD0DE53C(v137, &qword_1EBD389A0);
    *(v16 + v12[24]) = 2;
  }

  v60 = v107;
  sub_1BD0DE204(v16, v107, &qword_1EBD38930);
  v61 = v128;
  v62 = v126;
  sub_1BD0EE25C(v128, v126);
  v63 = swift_allocObject();
  v64 = v127;
  sub_1BD0EE2C0(v62, v63 + v127);
  v65 = v108;
  sub_1BD0DE204(v60, v108, &qword_1EBD38930);
  v66 = (v65 + *(v122 + 36));
  *v66 = sub_1BD0EE3A4;
  v66[1] = v63;
  v66[2] = 0;
  v66[3] = 0;
  LOBYTE(v130[0]) = v104;
  *(&v130[0] + 1) = v103;
  sub_1BE0516C4();
  sub_1BD0EE25C(v61, v62);
  v67 = swift_allocObject();
  sub_1BD0EE2C0(v62, v67 + v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389A8);
  sub_1BD0EE484();
  sub_1BD0EE53C();
  sub_1BD0DE4F4(&qword_1EBD389C8, &qword_1EBD389A8);
  sub_1BE051124();

  sub_1BD0DE53C(v65, &qword_1EBD38938);
  v68 = v128;
  type metadata accessor for AuthenticatorModel();
  sub_1BD0EDA00(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  sub_1BE04E964();
  swift_getKeyPath();
  sub_1BE04E974();

  v121 = *(&v133 + 1);
  v122 = v133;
  LOBYTE(v62) = v134;
  v69 = v68;
  v70 = v126;
  sub_1BD0EE25C(v69, v126);
  v71 = swift_allocObject();
  sub_1BD0EE2C0(v70, v71 + v127);
  v72 = sub_1BE04EEC4();
  v74 = v73;
  type metadata accessor for PresentationContext();
  sub_1BD0EDA00(&unk_1EBD361B0, type metadata accessor for PresentationContext);
  v75 = sub_1BE04EEC4();
  v77 = v76;
  v132 = 0;
  v78 = v113;
  (*(v109 + 32))(v113, v123, v110);
  v79 = v78 + *(v111 + 36);
  v80 = v121;
  *v79 = v122;
  *(v79 + 8) = v80;
  *(v79 + 16) = v62;
  *(v79 + 17) = v137[0];
  *(v79 + 20) = *(v137 + 3);
  *(v79 + 24) = sub_1BD0EE590;
  *(v79 + 32) = v71;
  *(v79 + 40) = v72;
  *(v79 + 48) = v74;
  *(v79 + 56) = v75;
  *(v79 + 64) = v77;
  *(v79 + 72) = sub_1BD644BF8;
  *(v79 + 80) = 0;
  *(v79 + 88) = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
  v81 = v128;
  sub_1BE0516C4();
  sub_1BD0EE62C();
  v82 = v114;
  sub_1BE050704();
  sub_1BD0DE53C(&v133, &qword_1EBD51FA0);
  sub_1BD0DE53C(v78, &qword_1EBD38948);
  v83 = v81;
  v84 = *(v81 + 152);
  v85 = *(v81 + 120);
  v130[0] = *(v81 + 104);
  v130[1] = v85;
  v130[2] = *(v81 + 136);
  v131 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389E8);
  sub_1BE0516C4();
  v86 = v118;
  (*(v115 + 32))(v118, v82, v117);
  v87 = (v86 + *(v112 + 36));
  v88 = v134;
  *v87 = v133;
  v87[1] = v88;
  v89 = v136;
  v87[2] = v135;
  v87[3] = v89;
  v90 = v116;
  v91 = v119;
  sub_1BE04C924();
  sub_1BD0EE25C(v83, v70);
  v92 = swift_allocObject();
  v93 = v127;
  sub_1BD0EE2C0(v70, v92 + v127);
  sub_1BD0DE204(v86, v91, &qword_1EBD38958);
  v94 = (v91 + *(v90 + 56));
  *v94 = sub_1BD0EE79C;
  v94[1] = v92;
  swift_beginAccess();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555C0);
  v96 = v120;
  sub_1BE04D884();
  swift_endAccess();
  sub_1BD0EE25C(v128, v70);
  v97 = swift_allocObject();
  sub_1BD0EE2C0(v70, v97 + v93);
  result = sub_1BD0DE204(v91, v96, &qword_1EBD38960);
  v99 = (v96 + *(v95 + 56));
  *v99 = sub_1BD0EE80C;
  v99[1] = v97;
  return result;
}

__n128 sub_1BD0EA930@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccountServiceSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(v1 + 8) + qword_1EBDAB038);
  sub_1BD0EE25C(v1, v7);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  if (v8 == 1)
  {
    v10 = swift_allocObject();
    sub_1BD0EE2C0(v7, v10 + v9);
    v11 = sub_1BE04CAE4();
    v12 = sub_1BE051C54();
    v13 = 18.0;
    v22 = 0uLL;
    if (v12)
    {
      v13 = 10.0;
    }

    strcpy(&v23, "AppleCardLogo");
    HIWORD(v23) = -4864;
    *&v24 = sub_1BD0EF550;
    *(&v24 + 1) = v10;
    LOBYTE(v25) = v11 & 1;
    *(&v25 + 1) = 0;
    *&v26 = 0;
    *(&v26 + 1) = 0x4032000000000000;
    *v27 = v13;
    *&v27[8] = xmmword_1BE0B7110;
    v28[0] = 0;
    v28[1] = 0;
    strcpy(v29, "AppleCardLogo");
    v29[7] = -4864;
    v30 = sub_1BD0EF550;
    v31 = v10;
    v32 = v11 & 1;
    v33 = 0;
    v34 = 0;
    v35 = 0x4032000000000000;
    v36 = v13;
    v37 = xmmword_1BE0B7110;
    sub_1BD0DE19C(&v22, v46, &qword_1EBD38AC8);
    sub_1BD0DE53C(v28, &qword_1EBD38AC8);
    v43 = v26;
    *v44 = *v27;
    *&v44[16] = *&v27[16];
    v39 = v22;
    v40 = v23;
    v41 = v24;
    v42 = v25;
    v38 = 0;
    v45 = 0;
  }

  else
  {
    v14 = swift_allocObject();
    sub_1BD0EE2C0(v7, v14 + v9);
    v15 = sub_1BE04CAE4();
    v16 = sub_1BE051C54();
    LOBYTE(v28[0]) = 1;
    v17 = 18.0;
    v39 = 0uLL;
    if (v16)
    {
      v17 = 10.0;
    }

    strcpy(&v40, "ApplePayLogo");
    BYTE13(v40) = 0;
    HIWORD(v40) = -5120;
    *&v41 = sub_1BD0EF550;
    *(&v41 + 1) = v14;
    LOBYTE(v42) = v15 & 1;
    *(&v42 + 1) = sub_1BD0EC044;
    *&v43 = 0;
    *(&v43 + 1) = 0x4032000000000000;
    *v44 = v17;
    *&v44[8] = xmmword_1BE0B7110;
    v45 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AD0);
  sub_1BD0DE4F4(&qword_1EBD38AD8, &qword_1EBD38AC8);
  sub_1BD0DE4F4(&qword_1EBD38AE0, &qword_1EBD38AD0);
  sub_1BE04F9A4();
  result = v46[3];
  v19 = v47[0];
  *(a1 + 64) = v46[4];
  *(a1 + 80) = v19;
  *(a1 + 89) = *(v47 + 9);
  v20 = v46[1];
  *a1 = v46[0];
  *(a1 + 16) = v20;
  *(a1 + 32) = v46[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BD0EACDC(uint64_t a1)
{
  v2 = sub_1BE051F54();
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccountServiceSheet();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v13 = sub_1BE051FC4();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v32 - v21;
  v23 = *(a1 + 8) + qword_1EBDAB040;
  if ((*(v23 + 8) & 1) == 0)
  {
    v36 = v5;
    v37 = v2;
    v24 = result;
    v32 = *v23;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v35 = sub_1BE052D54();
    sub_1BE051FB4();
    if (*(a1 + 32))
    {
      sub_1BE048964();
      sub_1BE04CD14();

      sub_1BE051FF4();
      v25 = *(v14 + 8);
      v33 = v24;
      v34 = v25;
      v25(v18, v24);
      sub_1BD0EE25C(a1, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = (*(v38 + 80) + 24) & ~*(v38 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v32;
      sub_1BD0EE2C0(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
      aBlock[4] = sub_1BD0EEE74;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_2;
      v28 = _Block_copy(aBlock);

      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD0EDA00(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
      v29 = v36;
      v30 = v37;
      sub_1BE053664();
      v31 = v35;
      MEMORY[0x1BFB3FD90](v22, v9, v29, v28);
      _Block_release(v28);

      (*(v41 + 8))(v29, v30);
      (*(v39 + 8))(v9, v40);
      result = v34(v22, v33);
      *v23 = 0;
      *(v23 + 8) = 1;
    }

    else
    {
      sub_1BE04CDA4();
      sub_1BD0EDA00(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
      result = sub_1BE04EEB4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD0EB200(char a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 160);
  v9 = *(v1 + 168);
  v16 = v8;
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990);
  sub_1BE0516A4();
  if (v15 == 2)
  {
    v16 = v8;
    v17 = v9;
    v15 = a1 & 1;
    return sub_1BE0516B4();
  }

  else
  {
    sub_1BE04D084();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C34();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "Detail sheet already set, ignoring", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1BD0EB3A8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AccountServiceSheet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = *a1;
  sub_1BD0EB5C8(*a1);
  sub_1BD0EE25C(a2, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v7 + 80);
  v12 = (v11 + 17) & ~v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  sub_1BD0EE2C0(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A00) + 36));
  *v14 = sub_1BD0EE934;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  sub_1BD0EE25C(a2, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  sub_1BD0EE2C0(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v12);
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A08) + 36));
  *v16 = 0;
  v16[1] = 0;
  v16[2] = sub_1BD0EEC1C;
  v16[3] = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389A8);
  sub_1BE04CA34();
  sub_1BD0EE25C(a2, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  result = sub_1BD0EE2C0(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + ((v11 + 16) & ~v11));
  v20 = (a3 + *(v17 + 56));
  *v20 = sub_1BD0EEC9C;
  v20[1] = v18;
  return result;
}

uint64_t sub_1BD0EB5C8(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A10);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A18);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A20);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v17 - v12;
  if (a1)
  {
    sub_1BD82BBB0(v5);
    sub_1BD0DE19C(v5, v9, &qword_1EBD38A10);
    swift_storeEnumTagMultiPayload();
    sub_1BD0EED0C();
    sub_1BD0EEDC0();
    sub_1BE04F9A4();
    v14 = v5;
    v15 = &qword_1EBD38A10;
  }

  else
  {
    sub_1BD82B68C(&v17 - v12);
    sub_1BD0DE19C(v13, v9, &qword_1EBD38A20);
    swift_storeEnumTagMultiPayload();
    sub_1BD0EED0C();
    sub_1BD0EEDC0();
    sub_1BE04F9A4();
    v14 = v13;
    v15 = &qword_1EBD38A20;
  }

  return sub_1BD0DE53C(v14, v15);
}

uint64_t sub_1BD0EB7F8(uint64_t a1)
{
  v2 = sub_1BE04CA04();
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (result != 1)
  {
    sub_1BD6B2184(1, 2u, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990);
    return sub_1BE0516B4();
  }

  return result;
}

uint64_t sub_1BD0EB8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccountServiceSheet();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38920);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - v12;
  sub_1BD0EA930(v50);
  v56 = v50[4];
  v57[0] = v51[0];
  *(v57 + 9) = *(v51 + 9);
  v52 = v50[0];
  v53 = v50[1];
  v54 = v50[2];
  v55 = v50[3];
  *v13 = sub_1BE04F7B4();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38980);
  sub_1BD0EC614(a1, &v13[*(v14 + 44)]);
  v40 = *(a1 + 24);
  v15 = *(a1 + 48);
  v49[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D500);
  v49[4] = sub_1BD0DE4F4(&qword_1EBD38988, &qword_1EBD3D500);
  v49[0] = v15;
  v16 = *(a1 + 168);
  v47[0] = *(a1 + 160);
  v48 = v16;
  sub_1BE048964();
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990);
  sub_1BE0516A4();
  v18 = LOBYTE(v44[0]) == 2;
  sub_1BD0EE25C(a1, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v20 = swift_allocObject();
  sub_1BD0EE2C0(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v21 = v38;
  sub_1BD0DE19C(v13, v38, &qword_1EBD38920);
  sub_1BD0EE8CC(v49, v47);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389F8);
  v23 = (a2 + v22[26]);
  sub_1BD0E5E8C(0, &qword_1EBD35E30);
  sub_1BD0EE33C();
  *v23 = sub_1BE04EEC4();
  v23[1] = v24;
  v25 = (a2 + v22[27]);
  sub_1BE04CDA4();
  sub_1BD0EDA00(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *v25 = sub_1BE04EEC4();
  v25[1] = v26;
  v27 = a2 + v22[28];
  LOBYTE(v43[0]) = 0;
  sub_1BE051694();
  v28 = v44[1];
  *v27 = v44[0];
  *(v27 + 8) = v28;
  v29 = a2 + v22[29];
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  v30 = v53;
  *a2 = v52;
  *(a2 + 16) = v30;
  *(a2 + 89) = *(v57 + 9);
  v31 = v57[0];
  *(a2 + 64) = v56;
  *(a2 + 80) = v31;
  v32 = v55;
  *(a2 + 32) = v54;
  *(a2 + 48) = v32;
  *(a2 + 105) = 1;
  sub_1BD0DE19C(v21, a2 + v22[18], &qword_1EBD38920);
  *(a2 + v22[19]) = 0;
  *(a2 + v22[20]) = 1;
  *(a2 + v22[21]) = v40;
  sub_1BD0EE8CC(v47, a2 + v22[22]);
  *(a2 + v22[23]) = v18;
  v33 = (a2 + v22[25]);
  *v33 = sub_1BD0EE930;
  v33[1] = v20;
  sub_1BD0EE8CC(v47, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v41, v44);
    v34 = v45;
    v35 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    (*(v35 + 56))(v43, v34, v35);
    __swift_destroy_boxed_opaque_existential_0(v47);
    sub_1BD0DE53C(v21, &qword_1EBD38920);
    sub_1BD0DE53C(v13, &qword_1EBD38920);
    __swift_destroy_boxed_opaque_existential_0(v49);
    *(a2 + v22[24]) = v43[0];
    return __swift_destroy_boxed_opaque_existential_0(v44);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v47);
    sub_1BD0DE53C(v21, &qword_1EBD38920);
    sub_1BD0DE53C(v13, &qword_1EBD38920);
    __swift_destroy_boxed_opaque_existential_0(v49);
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    result = sub_1BD0DE53C(v41, &qword_1EBD389A0);
    *(a2 + v22[24]) = 2;
  }

  return result;
}

uint64_t sub_1BD0EBE44(uint64_t a1)
{
  sub_1BD0DE19C(a1, &v3, &qword_1EBD51EC0);
  if (v4)
  {
    sub_1BD043990(&v3, &v5);
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    if (sub_1BE04C714())
    {
      sub_1BD0EE8CC(&v5, &v3);
      sub_1BD0DE19C(&v3, &v2, &qword_1EBD51EC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
      sub_1BE0516B4();
      sub_1BD0DE53C(&v3, &qword_1EBD51EC0);
      return __swift_destroy_boxed_opaque_existential_0(&v5);
    }

    __swift_destroy_boxed_opaque_existential_0(&v5);
  }

  else
  {
    sub_1BD0DE53C(&v3, &qword_1EBD51EC0);
  }

  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  sub_1BD0DE19C(&v5, &v3, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v5, &qword_1EBD51EC0);
}

uint64_t sub_1BD0EBFBC(uint64_t *a1)
{
  sub_1BD0EE87C(*a1, a1[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389E8);
  return sub_1BE0516B4();
}

uint64_t sub_1BD0EC044@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AE8);
  sub_1BD0EC0F0((a1 + *(v2 + 44)));
  v3 = sub_1BE050204();
  sub_1BE04E1F4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AF0);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

id sub_1BD0EC0F0@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AF8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v53[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B00);
  v58 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v57 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v16);
  v59 = &v53[-v17];
  result = PKAppIconBundleIdentifier();
  if (result)
  {
    v19 = result;
    v55 = v12;
    v56 = a1;
    [objc_allocWithZone(MEMORY[0x1E69A8A00]) initWithBundleIdentifier_];

    sub_1BE04CF44();
    sub_1BD0DE4F4(&qword_1EBD38B08, &qword_1EBD38AF8);
    sub_1BE0506E4();
    (*(v8 + 8))(v11, v7);
    (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v21 = sub_1BE04B6F4();
      v23 = v22;

      (*(v3 + 8))(v6, v2);
      v60 = v21;
      v61 = v23;
      sub_1BD0DDEBC();
      v24 = sub_1BE0506C4();
      v26 = v25;
      v28 = v27;
      sub_1BE0503D4();
      v29 = sub_1BE0505F4();
      v31 = v30;
      v33 = v32;

      sub_1BD0DDF10(v24, v26, v28 & 1);

      sub_1BE050384();
      v34 = sub_1BE050544();
      v36 = v35;
      LOBYTE(v21) = v37;
      sub_1BD0DDF10(v29, v31, v33 & 1);

      sub_1BE04F624();
      v38 = sub_1BE0505A4();
      v40 = v39;
      v54 = v41;
      v43 = v42;

      sub_1BD0DDF10(v34, v36, v21 & 1);

      v45 = v57;
      v44 = v58;
      v46 = *(v58 + 16);
      v47 = v59;
      v48 = v55;
      v46(v57, v59, v55);
      v49 = v56;
      v46(v56, v45, v48);
      v50 = &v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B10) + 48)];
      *v50 = v38;
      *(v50 + 1) = v40;
      v51 = v54;
      LOBYTE(v31) = v54 & 1;
      v50[16] = v54 & 1;
      *(v50 + 3) = v43;
      sub_1BD0D7F18(v38, v40, v51 & 1);
      v52 = *(v44 + 8);
      sub_1BE048C84();
      v52(v47, v48);
      sub_1BD0DDF10(v38, v40, v31);

      return (v52)(v45, v48);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD0EC614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v79 = a2;
  v2 = type metadata accessor for AccountServiceSheet();
  v78 = *(v2 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v77 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030);
  MEMORY[0x1EEE9AC00](v76, v5);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A48);
  v83 = *(v84 - 8);
  v7 = MEMORY[0x1EEE9AC00](v84, v6);
  v82 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v80 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A50);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A58);
  v16 = (v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v81 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v69 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v69 - v25;
  sub_1BD0ECF70(v14);
  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  *(v23 + 2) = KeyPath;
  v23[24] = 0;
  *(v23 + 4) = v28;
  v23[40] = 0;
  LOBYTE(v87) = 0;
  sub_1BE051694();
  v29 = v96;
  v23[48] = v95;
  *(v23 + 7) = v29;
  sub_1BD0DE204(v14, &v23[v16[14]], &qword_1EBD38A50);
  v30 = &v23[v16[15]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v23[v16[16]];
  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  v32 = v16[17];
  LOBYTE(KeyPath) = sub_1BE051C54();
  v33 = sub_1BE04C894();
  v34 = MEMORY[0x1E69BCA08];
  if ((KeyPath & 1) == 0)
  {
    v34 = MEMORY[0x1E69BCA00];
  }

  (*(*(v33 - 8) + 104))(&v23[v32], *v34, v33);
  v35 = &v23[v16[18]];
  sub_1BE04C7E4();
  v37 = v36;
  v38 = *(sub_1BE04EDE4() + 20);
  v39 = *MEMORY[0x1E697F468];
  v40 = sub_1BE04F684();
  (*(*(v40 - 8) + 104))(&v35[v38], v39, v40);
  *v35 = v37;
  *(v35 + 1) = v37;
  v74 = v26;
  sub_1BD0DE204(v23, v26, &qword_1EBD38A58);
  sub_1BE051C64();
  v41 = MEMORY[0x1E6981CD0];
  v42 = MEMORY[0x1E6981CD8];
  sub_1BE04F694();
  v95 = v42;
  v96 = v41;
  swift_getOpaqueTypeConformance2();
  sub_1BD0EEEE0();
  sub_1BE051C84();
  v43 = v77;
  sub_1BD0EE25C(v75, v77);
  v44 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v78 = swift_allocObject();
  sub_1BD0EE2C0(v43, v78 + v44);
  LOBYTE(v95) = 0;
  v77 = swift_getKeyPath();
  LOBYTE(v87) = 0;
  sub_1BE04CDA4();
  sub_1BD0EDA00(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  sub_1BE048964();
  v76 = sub_1BE04EEC4();
  v75 = v45;
  type metadata accessor for AuthenticatorModel();
  sub_1BD0EDA00(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v46 = sub_1BE04E954();
  v73 = v46;
  v70 = v47;
  v48 = v95;
  v71 = v95;
  LOBYTE(v38) = v87;
  v72 = v87;
  v49 = v81;
  sub_1BD0DE19C(v26, v81, &qword_1EBD38A58);
  v50 = *(v83 + 16);
  v51 = v82;
  v52 = v84;
  v50(v82, v80, v84);
  v53 = v49;
  v54 = v79;
  sub_1BD0DE19C(v53, v79, &qword_1EBD38A58);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A60);
  v50((v54 + *(v55 + 48)), v51, v52);
  v56 = (v54 + *(v55 + 64));
  *&v87 = v46;
  v57 = v70;
  *(&v87 + 1) = v70;
  v88 = sub_1BD31FF5C;
  v89 = 0;
  LOBYTE(v90) = v48;
  *(&v90 + 1) = *v86;
  DWORD1(v90) = *&v86[3];
  v58 = v77;
  *(&v90 + 1) = v77;
  LOBYTE(v91) = v38;
  *(&v91 + 1) = *v85;
  DWORD1(v91) = *&v85[3];
  v59 = v76;
  *(&v91 + 1) = v76;
  v60 = v75;
  *&v92 = v75;
  v61 = v78;
  *(&v92 + 1) = sub_1BD0EEF34;
  v93 = v78;
  *&v94 = 0;
  *(&v94 + 1) = 0x4014000000000000;
  *v56 = v87;
  v56[1] = sub_1BD31FF5C;
  v62 = v90;
  v63 = v91;
  v64 = v94;
  v65 = v92;
  v56[5] = v93;
  v56[6] = v64;
  v56[3] = v63;
  v56[4] = v65;
  v56[2] = v62;
  sub_1BD0EEF94(&v87, &v95);
  v66 = *(v83 + 8);
  v67 = v84;
  v66(v80, v84);
  sub_1BD0DE53C(v74, &qword_1EBD38A58);
  v95 = v73;
  v96 = v57;
  v97 = sub_1BD31FF5C;
  v98 = 0;
  v99 = v71;
  *v100 = *v86;
  *&v100[3] = *&v86[3];
  v101 = v58;
  v102 = v72;
  *v103 = *v85;
  *&v103[3] = *&v85[3];
  v104 = v59;
  v105 = v60;
  v106 = sub_1BD0EEF34;
  v107 = v61;
  v108 = 0;
  v109 = 0;
  v110 = 0x4014000000000000;
  sub_1BD0EEFF0(&v95);
  v66(v82, v67);
  return sub_1BD0DE53C(v81, &qword_1EBD38A58);
}

uint64_t sub_1BD0ECF70@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v1 = sub_1BE04FF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A68);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A70);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v24 - v13;
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A78);
  sub_1BD0ED230(&v9[*(v15 + 44)]);
  v16 = sub_1BE050204();
  sub_1BE04E1F4();
  v17 = &v9[*(v6 + 36)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_1BE04FF44();
  v22 = sub_1BD0EF044();
  sub_1BE050D14();
  (*(v2 + 8))(v5, v1);
  sub_1BD0DE53C(v9, &qword_1EBD38A68);
  sub_1BE052434();
  v24[2] = v6;
  v24[3] = v22;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v11 + 8))(v14, v10);
}

id sub_1BD0ED230@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v61 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v59 - v12;
  sub_1BD0ED724();
  v65 = v15;
  v66 = v14;
  v67 = v16;
  v68 = v17;
  v64 = sub_1BD0DDEBC();
  v18 = sub_1BE0506C4();
  v20 = v19;
  v22 = v21;
  sub_1BE0502B4();
  v23 = sub_1BE0505F4();
  v25 = v24;
  v27 = v26;

  sub_1BD0DDF10(v18, v20, v22 & 1);

  sub_1BE051234();
  v28 = sub_1BE050564();
  v30 = v29;
  LOBYTE(v18) = v31;
  v33 = v32;

  sub_1BD0DDF10(v23, v25, v27 & 1);

  v67 = v28;
  v68 = v30;
  v69 = v18 & 1;
  v70 = v33;
  sub_1BE052434();
  v59 = v13;
  sub_1BE050DE4();

  sub_1BD0DDF10(v28, v30, v18 & 1);

  v67 = v66;
  v68 = v65;
  v34 = sub_1BE0506C4();
  v36 = v35;
  v38 = v37;
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0, *MEMORY[0x1E69DB980]);
  if (result)
  {
    sub_1BE050484();
    v40 = sub_1BE0505F4();
    v42 = v41;
    v44 = v43;

    sub_1BD0DDF10(v34, v36, v38 & 1);

    sub_1BE051224();
    v45 = sub_1BE050564();
    v47 = v46;
    v49 = v48;
    v51 = v50;

    sub_1BD0DDF10(v40, v42, v44 & 1);

    KeyPath = swift_getKeyPath();
    v67 = v45;
    v68 = v47;
    v69 = v49 & 1;
    v70 = v51;
    v71 = KeyPath;
    v72 = 1;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
    sub_1BD0EF0FC();
    v53 = v61;
    sub_1BE050DE4();

    sub_1BD0DDF10(v45, v47, v49 & 1);

    v55 = v59;
    v54 = v60;
    sub_1BD0DE19C(v59, v60, &qword_1EBD452C0);
    v56 = v63;
    sub_1BD0DE19C(v53, v63, &qword_1EBD38A98);
    v57 = v62;
    sub_1BD0DE19C(v54, v62, &qword_1EBD452C0);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AC0);
    sub_1BD0DE19C(v56, v57 + *(v58 + 48), &qword_1EBD38A98);
    sub_1BD0DE53C(v53, &qword_1EBD38A98);
    sub_1BD0DE53C(v55, &qword_1EBD452C0);
    sub_1BD0DE53C(v56, &qword_1EBD38A98);
    return sub_1BD0DE53C(v54, &qword_1EBD452C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD0ED724()
{
  v0 = _s11BillPaymentVMa();
  v2 = MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v11 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v8 = *(v7 + 3);
  sub_1BE048C84();
  sub_1BD0EF1B4(v7);
  if (v8)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

LABEL_5:
    sub_1BE048C84();
    sub_1BD0EF1B4(v4);
    return;
  }

  v9 = sub_1BE052404();
  v10 = PKLocalizedFeatureString();

  if (v10)
  {
    sub_1BE052434();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1BD0ED958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38898);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1BD0DE19C(a1, &v6 - v4, &qword_1EBD38898);
  return sub_1BE04F1D4();
}

uint64_t sub_1BD0EDA00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for FlightWidgetProgressFlightStepContent.FlightStepType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UIFlowItemDismissalConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BD0EDBC0()
{
  sub_1BD0EDEBC();
  if (v0 <= 0x3F)
  {
    sub_1BD0EDF50();
    if (v1 <= 0x3F)
    {
      sub_1BD0EDFE4();
      if (v2 <= 0x3F)
      {
        sub_1BD0EE0C8(319, &qword_1EBD388D8, type metadata accessor for AccountServiceAuthorizationModel, type metadata accessor for PaymentAuthorizationStateMachineWrapper);
        if (v3 <= 0x3F)
        {
          sub_1BD0EE12C(319, &qword_1EBD388E0, &qword_1EBD51EC0, &unk_1BE0B7120, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1BD0EE12C(319, &qword_1EBD388E8, &qword_1EBD55590, &unk_1BE0B7128, MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1BD0EE12C(319, &qword_1EBD388F0, &qword_1EBD38878, &unk_1BE0B7130, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1BD0EE078(319, &unk_1EBD59650, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1BD0EE0C8(319, &qword_1EBD388F8, MEMORY[0x1E69BC9D0], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1BD0EE078(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1BD0EE0C8(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                      if (v10 <= 0x3F)
                      {
                        sub_1BD0EE12C(319, &qword_1EBD38908, &qword_1EBD38898, &unk_1BE0B72C0, MEMORY[0x1E697DCC0]);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD0EDEBC()
{
  if (!qword_1EBD388C8)
  {
    type metadata accessor for AccountServiceAuthorizationModel(255);
    sub_1BD0EDA00(&qword_1EBD38890, type metadata accessor for AccountServiceAuthorizationModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD388C8);
    }
  }
}

void sub_1BD0EDF50()
{
  if (!qword_1EBD59620)
  {
    type metadata accessor for AuthenticatorModel();
    sub_1BD0EDA00(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD59620);
    }
  }
}

void sub_1BD0EDFE4()
{
  if (!qword_1EBD388D0)
  {
    sub_1BE04CDA4();
    sub_1BD0EDA00(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    v0 = sub_1BE04EED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD388D0);
    }
  }
}

void sub_1BD0EE078(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BD0EE0C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD0EE12C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BD0EE194()
{
  result = qword_1EBD38910;
  if (!qword_1EBD38910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38910);
  }

  return result;
}

unint64_t sub_1BD0EE1EC()
{
  result = qword_1EBD38918;
  if (!qword_1EBD38918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38918);
  }

  return result;
}

uint64_t sub_1BD0EE25C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountServiceSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0EE2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountServiceSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD0EE33C()
{
  result = qword_1EBD35E40;
  if (!qword_1EBD35E40)
  {
    sub_1BD0E5E8C(255, &qword_1EBD35E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35E40);
  }

  return result;
}

uint64_t sub_1BD0EE3A4()
{
  v1 = *(type metadata accessor for AccountServiceSheet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD0EACDC(v2);
}

uint64_t sub_1BD0EE404@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountServiceSheet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD0EB3A8(a1, v6, a2);
}

unint64_t sub_1BD0EE484()
{
  result = qword_1EBD389B0;
  if (!qword_1EBD389B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38938);
    sub_1BD0DE4F4(&qword_1EBD389B8, &qword_1EBD38930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD389B0);
  }

  return result;
}

unint64_t sub_1BD0EE53C()
{
  result = qword_1EBD389C0;
  if (!qword_1EBD389C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD389C0);
  }

  return result;
}

uint64_t sub_1BD0EE5A8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccountServiceSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD0EE62C()
{
  result = qword_1EBD389D0;
  if (!qword_1EBD389D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38938);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD389A8);
    sub_1BD0EE484();
    sub_1BD0EE53C();
    sub_1BD0DE4F4(&qword_1EBD389C8, &qword_1EBD389A8);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD389D8, &qword_1EBD389E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD389D0);
  }

  return result;
}

uint64_t sub_1BD0EE79C(uint64_t a1)
{
  type metadata accessor for AccountServiceSheet();

  return sub_1BD0EBE44(a1);
}

uint64_t sub_1BD0EE80C(uint64_t *a1)
{
  type metadata accessor for AccountServiceSheet();

  return sub_1BD0EBFBC(a1);
}

uint64_t sub_1BD0EE87C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1BE048C84();
    sub_1BE048964();

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD0EE8CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_59Tm()
{
  v1 = type metadata accessor for AccountServiceSheet();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 17) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 56);
  }

  if (*(v2 + 112))
  {
  }

  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04C884();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1BD0D4604(*(v2 + v1[13]), *(v2 + v1[13] + 8));
  v5 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BE04EB24();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1BE04FD04();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0EEC9C(uint64_t a1)
{
  type metadata accessor for AccountServiceSheet();

  return sub_1BD0EB7F8(a1);
}

unint64_t sub_1BD0EED0C()
{
  result = qword_1EBD38A28;
  if (!qword_1EBD38A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A20);
    sub_1BD0EDA00(&qword_1EBD38A30, type metadata accessor for BankAccountSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38A28);
  }

  return result;
}

unint64_t sub_1BD0EEDC0()
{
  result = qword_1EBD38A38;
  if (!qword_1EBD38A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A10);
    sub_1BD0EDA00(&qword_1EBD38A40, type metadata accessor for TransferOptionsSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38A38);
  }

  return result;
}

uint64_t sub_1BD0EEE74()
{
  result = type metadata accessor for AccountServiceSheet() - 8;
  if (*(v0 + 16) == 1)
  {
    return sub_1BD0EB200(1);
  }

  return result;
}

unint64_t sub_1BD0EEEE0()
{
  result = qword_1EBD365D0;
  if (!qword_1EBD365D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD365D0);
  }

  return result;
}

unint64_t sub_1BD0EF044()
{
  result = qword_1EBD38A80;
  if (!qword_1EBD38A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A68);
    sub_1BD0DE4F4(&qword_1EBD38A88, &qword_1EBD38A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38A80);
  }

  return result;
}

unint64_t sub_1BD0EF0FC()
{
  result = qword_1EBD38AA8;
  if (!qword_1EBD38AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38AA0);
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38AA8);
  }

  return result;
}

uint64_t sub_1BD0EF1B4(uint64_t a1)
{
  v2 = _s11BillPaymentVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for AccountServiceSheet();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 56);
  }

  if (*(v2 + 112))
  {
  }

  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04C884();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1BD0D4604(*(v2 + v1[13]), *(v2 + v1[13] + 8));
  v5 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BE04EB24();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1BE04FD04();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

id sub_1BD0EF4E0()
{
  type metadata accessor for AccountServiceSheet();
  sub_1BD6B2184(1, 1u, 0);
  return sub_1BD74239C();
}

unint64_t sub_1BD0EF568()
{
  result = qword_1EBD38B20;
  if (!qword_1EBD38B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B20);
  }

  return result;
}

uint64_t sub_1BD0EF5D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD0F0F24();
  *a1 = result;
  return result;
}

void sub_1BD0EF608(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7239014;
  v5 = 0xE800000000000000;
  v6 = 0x7365636976726573;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE900000000000074;
  v8 = 0x726F70736E617274;
  if (v2 != 4)
  {
    v8 = 0x6C6576617274;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED0000736B6E6972;
  v10 = 0x44646E41646F6F66;
  if (v2 != 2)
  {
    v10 = 0x68746C616568;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x676E6970706F6873;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1BD0EF708()
{
  result = qword_1EBD38B28;
  if (!qword_1EBD38B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B28);
  }

  return result;
}

unint64_t sub_1BD0EF760()
{
  result = qword_1EBD38B30;
  if (!qword_1EBD38B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B30);
  }

  return result;
}

unint64_t sub_1BD0EF7B8()
{
  result = qword_1EBD38B38;
  if (!qword_1EBD38B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B38);
  }

  return result;
}

unint64_t sub_1BD0EF81C()
{
  result = qword_1EBD38B40;
  if (!qword_1EBD38B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B40);
  }

  return result;
}

unint64_t sub_1BD0EF870()
{
  result = qword_1EBD38B48;
  if (!qword_1EBD38B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B48);
  }

  return result;
}

unint64_t sub_1BD0EF8C4()
{
  result = qword_1EBD38B50;
  if (!qword_1EBD38B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B50);
  }

  return result;
}

unint64_t sub_1BD0EF91C()
{
  result = qword_1EBD38B58;
  if (!qword_1EBD38B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B58);
  }

  return result;
}

uint64_t sub_1BD0EF970()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v18[0] = v18 - v2;
  v3 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE04A874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE04A884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = sub_1BE048E94();
  __swift_allocate_value_buffer(v15, qword_1EBDAADD0);
  __swift_project_value_buffer(v15, qword_1EBDAADD0);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EBDAB400);
  (*(v6 + 16))(v9, v16, v5);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v13 + 56))(v18[0], 1, 1, v12);
  return sub_1BE048E84();
}

uint64_t sub_1BD0EFC88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v85 = &v63 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v63 - v5;
  v7 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1BE04A874();
  v11 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1BE04A884();
  v19 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B90);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B98);
  v22 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
  v77 = *(*(v21 - 8) + 72);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BE0B76F0;
  v67 = v23;
  v82 = v21;
  v66 = *(v21 + 48);
  v78 = v23 + v22;
  *(v23 + v22) = 0;
  v24 = v18;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v25 = v84;
  v73 = __swift_project_value_buffer(v84, qword_1EBDAB400);
  v80 = *(v11 + 16);
  v26 = v14;
  v80(v14, v73, v25);
  v72 = v10;
  sub_1BE04B0A4();
  sub_1BE04A894();
  v81 = *(v19 + 56);
  v69 = v6;
  v81(v6, 1, 1, v83);
  v70 = sub_1BE048BB4();
  v27 = *(v70 - 8);
  v75 = *(v27 + 56);
  v79 = v27 + 56;
  v75(v85, 1, 1, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA0);
  v74 = v19 + 56;
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  v71 = v24;
  sub_1BE052354();
  v28 = v73;
  v29 = v84;
  v30 = v80;
  v76 = v11 + 16;
  v80(v14, v73, v84);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v31 = v78;
  v32 = v69;
  sub_1BE048BD4();
  v66 = *(v82 + 48);
  *(v31 + v77) = 1;
  sub_1BE052354();
  v30(v26, v28, v29);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v33 = v83;
  v81(v32, 1, 1, v83);
  v34 = v70;
  v75(v85, 1, 1, v70);
  v35 = v32;
  sub_1BE048BD4();
  v36 = v77;
  v66 = 2 * v77;
  v37 = v78;
  v64 = (v78 + 2 * v77);
  v65 = *(v82 + 48);
  *v64 = 2;
  sub_1BE052354();
  v68 = v26;
  v38 = v73;
  v80(v26, v73, v84);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v81(v35, 1, 1, v33);
  v39 = v34;
  v40 = v75;
  v75(v85, 1, 1, v39);
  sub_1BE048BD4();
  v65 = v37 + v66 + v36;
  v41 = v82;
  v66 = *(v82 + 48);
  *v65 = 3;
  sub_1BE052354();
  v42 = v68;
  v43 = v80;
  v80(v68, v38, v84);
  sub_1BE04B0A4();
  v44 = v42;
  sub_1BE04A894();
  v45 = v69;
  v46 = v83;
  v47 = v81;
  v81(v69, 1, 1, v83);
  v40(v85, 1, 1, v70);
  sub_1BE048BD4();
  v66 = 4 * v77;
  v48 = v78;
  v65 = *(v41 + 48);
  *(v78 + 4 * v77) = 4;
  sub_1BE052354();
  v49 = v84;
  v43(v44, v73, v84);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v47(v45, 1, 1, v46);
  v50 = v70;
  v75(v85, 1, 1, v70);
  sub_1BE048BD4();
  v51 = v77;
  v65 = v48 + v66 + v77;
  v66 = *(v82 + 48);
  *v65 = 5;
  sub_1BE052354();
  v52 = v73;
  v80(v68, v73, v49);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v81(v69, 1, 1, v83);
  v53 = v75;
  v75(v85, 1, 1, v50);
  sub_1BE048BD4();
  v54 = v82;
  v66 = *(v82 + 48);
  *(v78 + 6 * v51) = 6;
  sub_1BE052354();
  v55 = v68;
  v80(v68, v52, v84);
  sub_1BE04B0A4();
  v56 = v55;
  sub_1BE04A894();
  v57 = v69;
  v81(v69, 1, 1, v83);
  v58 = v85;
  v59 = v70;
  v53(v85, 1, 1, v70);
  sub_1BE048BD4();
  v60 = (v78 - v77 + 8 * v77);
  v77 = *(v54 + 48);
  *v60 = 7;
  sub_1BE052354();
  v80(v56, v73, v84);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v81(v57, 1, 1, v83);
  v75(v58, 1, 1, v59);
  sub_1BE048BD4();
  v61 = sub_1BD1AB2A8(v67);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBDAADE8 = v61;
  return result;
}

uint64_t sub_1BD0F09BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36B00 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAADD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD0F0AB4()
{
  result = qword_1EBD560F0;
  if (!qword_1EBD560F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD560F0);
  }

  return result;
}

uint64_t sub_1BD0F0B08(uint64_t a1)
{
  v2 = sub_1BD0F0AB4();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD0F0B58()
{
  result = qword_1EBD38B60;
  if (!qword_1EBD38B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B60);
  }

  return result;
}

unint64_t sub_1BD0F0BB0()
{
  result = qword_1EBD38B68;
  if (!qword_1EBD38B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B68);
  }

  return result;
}

unint64_t sub_1BD0F0C08()
{
  result = qword_1EBD38B70;
  if (!qword_1EBD38B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B70);
  }

  return result;
}

uint64_t sub_1BD0F0C5C()
{
  if (qword_1EBD36B08 != -1)
  {
    swift_once();
  }

  return sub_1BE048C84();
}

uint64_t sub_1BD0F0CB8()
{
  sub_1BD0EF91C();

  return sub_1BE048E14();
}

unint64_t sub_1BD0F0D08()
{
  result = qword_1EBD38B78;
  if (!qword_1EBD38B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38B78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransactionEntityMerchantCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionEntityMerchantCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BD0F0F04(unint64_t a1)
{
  if (a1 > 8)
  {
    return 8;
  }

  else
  {
    return byte_1BE0B79F2[a1];
  }
}

uint64_t sub_1BD0F0F24()
{
  v0 = sub_1BE053A44();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BD0F0FF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BD0F1038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD0F10A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051574();
  KeyPath = swift_getKeyPath();
  sub_1BE048964();
  v10 = sub_1BE0511F4();
  v11 = swift_getKeyPath();
  v21[0] = v8;
  v21[5] = v8;
  v21[6] = KeyPath;
  v21[7] = a1;
  v21[8] = v11;
  v21[9] = v10;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v4 + 8))(v7, v3);
    v21[3] = v14;
    v21[4] = v16;
    sub_1BD0DDEBC();
    v17 = sub_1BE0506C4();
    v19 = v18;
    LOBYTE(v14) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170);
    sub_1BD0F1430();
    sub_1BE050C24();
    sub_1BD0DDF10(v17, v19, v14 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD0F1300()
{
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8);
  sub_1BD0F13A4();
  return sub_1BE051704();
}

unint64_t sub_1BD0F13A4()
{
  result = qword_1EBD38BB0;
  if (!qword_1EBD38BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38BA8);
    sub_1BD0F1430();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38BB0);
  }

  return result;
}

unint64_t sub_1BD0F1430()
{
  result = qword_1EBD38BB8;
  if (!qword_1EBD38BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49170);
    sub_1BD0F14E8();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38BB8);
  }

  return result;
}

unint64_t sub_1BD0F14E8()
{
  result = qword_1EBD38BC0;
  if (!qword_1EBD38BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49180);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38BC0);
  }

  return result;
}

unint64_t sub_1BD0F15A0()
{
  result = qword_1EBD52210;
  if (!qword_1EBD52210)
  {
    sub_1BE0500D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52210);
  }

  return result;
}

uint64_t sub_1BD0F15F8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state;
  swift_beginAccess();
  return sub_1BD0F9950(v5 + v3, a1);
}

uint64_t sub_1BD0F16C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state;
  swift_beginAccess();
  return sub_1BD0F9950(v3 + v4, a2);
}

uint64_t sub_1BD0F1788(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD0F9950(a1, v7);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel);
  sub_1BE04B584();

  return sub_1BD0F99B4(v7);
}

uint64_t sub_1BD0F18B0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state;
  swift_beginAccess();
  sub_1BD0F9A2C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1BD0F191C()
{
  v1[15] = v0;
  v2 = sub_1BE04AFE4();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = sub_1BE04D214();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC0);
  v1[26] = swift_task_alloc();
  v4 = sub_1BE049CC4();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v5 = sub_1BE049D44();
  v1[30] = v5;
  v1[31] = *(v5 - 8);
  v1[32] = swift_task_alloc();
  v6 = sub_1BE049184();
  v1[33] = v6;
  v1[34] = *(v6 - 8);
  v1[35] = swift_task_alloc();
  v7 = sub_1BE049E54();
  v1[36] = v7;
  v1[37] = *(v7 - 8);
  v1[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8);
  v1[39] = swift_task_alloc();
  v8 = sub_1BE049B64();
  v1[40] = v8;
  v1[41] = *(v8 - 8);
  v1[42] = swift_task_alloc();
  v9 = sub_1BE049C24();
  v1[43] = v9;
  v1[44] = *(v9 - 8);
  v1[45] = swift_task_alloc();
  v10 = sub_1BE0495A4();
  v1[46] = v10;
  v1[47] = *(v10 - 8);
  v1[48] = swift_task_alloc();
  v11 = sub_1BE049A94();
  v1[49] = v11;
  v1[50] = *(v11 - 8);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0);
  v1[54] = swift_task_alloc();
  v12 = sub_1BE049D74();
  v1[55] = v12;
  v1[56] = *(v12 - 8);
  v1[57] = swift_task_alloc();
  sub_1BE0528A4();
  v1[58] = sub_1BE052894();
  v14 = sub_1BE052844();
  v1[59] = v14;
  v1[60] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1BD0F1EB8, v14, v13);
}

uint64_t sub_1BD0F1EB8()
{
  v1 = v0[54];
  v2 = v0[49];
  v3 = *(v0[15] + 16);
  v0[61] = sub_1BE0490F4();
  v0[62] = sub_1BE0490B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B6CA0;
  swift_getKeyPath();
  sub_1BD0F93A4(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  sub_1BE04A4F4();
  swift_getKeyPath();
  sub_1BD0F93A4(&qword_1EBD38DE8, MEMORY[0x1E69695A8]);
  sub_1BE04A4F4();
  v4 = swift_task_alloc();
  v0[63] = v4;
  *(v4 + 16) = v3;
  v0[7] = v2;
  sub_1BE04B444();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v6 = sub_1BE049CE4();
  v7 = MEMORY[0x1E6967BC8];
  v0[5] = v6;
  v0[6] = v7;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1BE049CD4();
  v8 = swift_task_alloc();
  v0[64] = v8;
  *v8 = v0;
  v8[1] = sub_1BD0F21A8;
  v9 = v0[57];

  return MEMORY[0x1EEDC14D8](v9, v0 + 2);
}

uint64_t sub_1BD0F21A8()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 472);
    v4 = *(v2 + 480);
    v5 = sub_1BD0F38E0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    v3 = *(v2 + 472);
    v4 = *(v2 + 480);
    v5 = sub_1BD0F22D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD0F22D4()
{
  v1 = sub_1BE049D54();
  if (*(v1 + 16))
  {
    v3 = v0[52];
    v2 = v0[53];
    v4 = v0[49];
    v5 = v0[50];
    v6 = v0[46];
    v7 = v0[39];
    v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v9 = *(v5 + 16);
    v0[66] = v9;
    v0[67] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v1 + v8, v4);

    (*(v5 + 32))(v2, v3, v4);
    v0[68] = sub_1BE0490B4();
    v10 = swift_task_alloc();
    v0[69] = v10;
    *(v10 + 16) = v2;
    v0[9] = v6;
    sub_1BE04B444();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8);
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    sub_1BE049B54();
    v12 = swift_task_alloc();
    v0[70] = v12;
    *v12 = v0;
    v12[1] = sub_1BD0F27EC;
    v13 = v0[45];
    v14 = v0[42];

    return MEMORY[0x1EEDC14B8](v13, v14);
  }

  else
  {

    sub_1BE04D114();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C34();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, v16, "No transactions for Manually Excluded found.", v17, 2u);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    v18 = v0[56];
    v29 = v0[57];
    v19 = v0[55];
    v20 = v0[25];
    v21 = v0[22];
    v22 = v0[19];
    v23 = v0[20];
    v24 = v0[15];

    (*(v23 + 8))(v21, v22);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08);
    (*(*(v25 - 8) + 56))(v20, 2, 2, v25);
    swift_getKeyPath();
    v26 = swift_task_alloc();
    *(v26 + 16) = v24;
    *(v26 + 24) = v20;
    v0[14] = v24;
    sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel);
    sub_1BE04B584();

    (*(v18 + 8))(v29, v19);

    sub_1BD0F99B4(v20);

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1BD0F27EC()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  (*(v2[41] + 8))(v2[42], v2[40]);

  v3 = v2[60];
  v4 = v2[59];
  if (v0)
  {
    v5 = sub_1BD0F3C78;
  }

  else
  {
    v5 = sub_1BD0F2990;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD0F2990()
{
  v63 = v0;
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = sub_1BE049C14();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    v5 = v0[47];
    v6 = v0[48];
    v7 = v0[46];
    v8 = v0[37];
    v9 = v0[38];
    v10 = v0[36];
    v11 = v0[33];
    v12 = v0[26];
    v13 = *(v5 + 16);
    v5 += 16;
    v14 = (*(v5 + 64) + 32) & ~*(v5 + 64);
    v0[72] = v13;
    v0[73] = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v6, v4 + v14, v7);

    sub_1BE049524();
    v15 = sub_1BE049E24();
    v17 = v16;
    v0[74] = v15;
    v0[75] = v16;
    (*(v8 + 8))(v9, v10);
    v0[76] = sub_1BE0490B4();
    v18 = swift_task_alloc();
    v0[77] = v18;
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;
    v0[10] = v11;
    sub_1BE04B444();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E00);
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
    sub_1BE049CB4();
    v20 = swift_task_alloc();
    v0[78] = v20;
    *v20 = v0;
    v20[1] = sub_1BD0F3080;
    v21 = v0[32];
    v22 = v0[29];

    return MEMORY[0x1EEDC14C8](v21, v22);
  }

  else
  {
    v23 = v0[66];
    v24 = v0[53];
    v25 = v0[51];
    v26 = v0[49];

    sub_1BE04D114();
    v23(v25, v24, v26);
    v27 = sub_1BE04D204();
    v28 = sub_1BE052C34();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[50];
    v31 = v0[51];
    v32 = v0[49];
    v33 = v0[23];
    v34 = v0[19];
    v35 = v0[20];
    if (v29)
    {
      v59 = v0[19];
      v55 = v28;
      v37 = v0[17];
      v36 = v0[18];
      v38 = v0[16];
      v60 = v0[49];
      buf = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v62 = v53;
      *buf = 136315138;
      v57 = v33;
      sub_1BE049A64();
      sub_1BD0F93A4(&unk_1EBD39960, MEMORY[0x1E69695A8]);
      v39 = sub_1BE053B24();
      v41 = v40;
      (*(v37 + 8))(v36, v38);
      v42 = v60;
      v61 = *(v30 + 8);
      v61(v31, v42);
      v43 = sub_1BD123690(v39, v41, &v62);

      *(buf + 4) = v43;
      _os_log_impl(&dword_1BD026000, v27, v55, "No account with id %s found.", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x1BFB45F20](v53, -1, -1);
      MEMORY[0x1BFB45F20](buf, -1, -1);

      (*(v35 + 8))(v57, v59);
    }

    else
    {

      v61 = *(v30 + 8);
      v61(v31, v32);
      (*(v35 + 8))(v33, v34);
    }

    v44 = v0[56];
    v45 = v0[55];
    v58 = v0[53];
    v54 = v0[57];
    v56 = v0[49];
    v46 = v0[25];
    v47 = v0[15];
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08);
    (*(*(v48 - 8) + 56))(v46, 2, 2, v48);
    swift_getKeyPath();
    v49 = swift_task_alloc();
    *(v49 + 16) = v47;
    *(v49 + 24) = v46;
    v0[13] = v47;
    sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel);
    sub_1BE04B584();

    (*(v44 + 8))(v54, v45);

    sub_1BD0F99B4(v46);
    v61(v58, v56);

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_1BD0F3080()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  (*(v2[28] + 8))(v2[29], v2[27]);

  if (v0)
  {

    v3 = v2[59];
    v4 = v2[60];
    v5 = sub_1BD0F4050;
  }

  else
  {
    v3 = v2[59];
    v4 = v2[60];
    v5 = sub_1BD0F31FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD0F31FC()
{
  v55 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];

  v4 = sub_1BE049D34();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {

    if (!*(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v39 = v0[72];
    v44 = v0[56];
    v46 = v0[55];
    v48 = v0[50];
    v50 = v0[49];
    v52 = v0[53];
    v6 = v0[48];
    v42 = v0[47];
    v37 = v0[46];
    v38 = v0[57];
    v7 = v0[35];
    v41 = v0[34];
    v8 = v0[33];
    v9 = v0[25];
    v40 = v0[15];
    v10 = *(v41 + 16);
    v10(v7, v4 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v8);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08);
    v12 = *(v11 + 48);
    v13 = *(v11 + 64);
    v10(v9, v7, v8);
    v39(v9 + v12, v6, v37);
    *(v9 + v13) = sub_1BE049D54();
    (*(*(v11 - 8) + 56))(v9, 0, 2, v11);
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v40;
    *(v14 + 24) = v9;
    v0[11] = v40;
    sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel);
    sub_1BE04B584();

    (*(v41 + 8))(v7, v8);
    (*(v42 + 8))(v6, v37);
    (*(v44 + 8))(v38, v46);

    sub_1BD0F99B4(v9);
    (*(v48 + 8))(v52, v50);
  }

  else
  {

    sub_1BE04D114();
    sub_1BE048C84();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C34();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[75];
    if (v17)
    {
      v19 = v0[74];
      v20 = v0[24];
      v21 = v0[19];
      v22 = v0[20];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v54 = v24;
      *v23 = 136315138;
      v25 = sub_1BD123690(v19, v18, &v54);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1BD026000, v15, v16, "No institution with id %s found.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1BFB45F20](v24, -1, -1);
      MEMORY[0x1BFB45F20](v23, -1, -1);

      (*(v22 + 8))(v20, v21);
    }

    else
    {
      v26 = v0[24];
      v27 = v0[19];
      v28 = v0[20];

      (*(v28 + 8))(v26, v27);
    }

    v29 = v0[56];
    v47 = v0[55];
    v49 = v0[57];
    v30 = v0[50];
    v51 = v0[49];
    v53 = v0[53];
    v31 = v0[47];
    v43 = v0[46];
    v45 = v0[48];
    v32 = v0[25];
    v33 = v0[15];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08);
    (*(*(v34 - 8) + 56))(v32, 2, 2, v34);
    swift_getKeyPath();
    v35 = swift_task_alloc();
    *(v35 + 16) = v33;
    *(v35 + 24) = v32;
    v0[12] = v33;
    sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel);
    sub_1BE04B584();

    (*(v31 + 8))(v45, v43);
    (*(v29 + 8))(v49, v47);

    sub_1BD0F99B4(v32);
    (*(v30 + 8))(v53, v51);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1BD0F38E0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v1 = v0[65];
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to load transactions for Manually Excluded: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  v9 = v0[25];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];
  v13 = v0[15];

  (*(v11 + 8))(v10, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08);
  (*(*(v14 - 8) + 56))(v9, 2, 2, v14);
  swift_getKeyPath();
  v15 = swift_task_alloc();
  *(v15 + 16) = v13;
  *(v15 + 24) = v9;
  v0[8] = v13;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel);
  sub_1BE04B584();

  sub_1BD0F99B4(v9);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1BD0F3C78()
{
  v1 = v0[57];
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[53];
  v5 = v0[49];
  v6 = v0[50];

  (*(v3 + 8))(v1, v2);
  (*(v6 + 8))(v4, v5);

  v7 = v0[71];
  sub_1BE04D114();
  v8 = v7;
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1BD026000, v9, v10, "Failed to load transactions for Manually Excluded: %@", v11, 0xCu);
    sub_1BD0DE53C(v12, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v12, -1, -1);
    MEMORY[0x1BFB45F20](v11, -1, -1);
  }

  v15 = v0[25];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[19];
  v19 = v0[15];

  (*(v17 + 8))(v16, v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08);
  (*(*(v20 - 8) + 56))(v15, 2, 2, v20);
  swift_getKeyPath();
  v21 = swift_task_alloc();
  *(v21 + 16) = v19;
  *(v21 + 24) = v15;
  v0[8] = v19;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel);
  sub_1BE04B584();

  sub_1BD0F99B4(v15);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1BD0F4050()
{
  v1 = v0[57];
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[53];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[47];
  v8 = v0[48];
  v9 = v0[46];

  (*(v7 + 8))(v8, v9);
  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);

  v10 = v0[79];
  sub_1BE04D114();
  v11 = v10;
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C34();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v10;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1BD026000, v12, v13, "Failed to load transactions for Manually Excluded: %@", v14, 0xCu);
    sub_1BD0DE53C(v15, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v15, -1, -1);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  v18 = v0[25];
  v20 = v0[20];
  v19 = v0[21];
  v21 = v0[19];
  v22 = v0[15];

  (*(v20 + 8))(v19, v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08);
  (*(*(v23 - 8) + 56))(v18, 2, 2, v23);
  swift_getKeyPath();
  v24 = swift_task_alloc();
  *(v24 + 16) = v22;
  *(v24 + 24) = v18;
  v0[8] = v22;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel);
  sub_1BE04B584();

  sub_1BD0F99B4(v18);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1BD0F4458@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v45 = v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF8);
  v40 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v36 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F00);
  v24 = *(v23 - 8);
  v43 = v23;
  v44 = v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v49 = v36 - v26;
  v50 = a2;
  v38 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08);
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  v27 = *(v10 + 8);
  v36[1] = v10 + 8;
  v37 = v27;
  v27(v13, v9);
  sub_1BD0DE4F4(&qword_1EBD38F18, &qword_1EBD38EF8);
  v39 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0);
  sub_1BD0DE4F4(&qword_1EBD38F28, &qword_1EBD38F08);
  sub_1BD0F93A4(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v28 = v41;
  sub_1BE04A754();
  (*(v42 + 8))(v18, v28);
  (*(v40 + 8))(v22, v19);
  sub_1BE04A7C4();
  swift_getKeyPath();
  v29 = v45;
  sub_1BE04A724();

  v37(v13, v9);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F30);
  v31 = v46;
  v46[3] = v30;
  v31[4] = sub_1BD0FA144();
  __swift_allocate_boxed_opaque_existential_1(v31);
  sub_1BD0DE4F4(&qword_1EBD38F88, &qword_1EBD38F00);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0);
  v32 = v49;
  v33 = v43;
  v34 = v47;
  sub_1BE04A784();
  (*(v48 + 8))(v29, v34);
  return (*(v44 + 8))(v32, v33);
}

uint64_t sub_1BD0F4A64@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v26 = a1;
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E60);
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E68);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - v14;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E78);
  v16 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v17);
  v19 = &v26 - v18;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v12 + 8))(v15, v11);
  sub_1BE049A94();
  sub_1BE04A7B4();
  swift_getKeyPath();
  sub_1BD0DE4F4(&qword_1EBD38E88, &qword_1EBD38E60);
  v20 = v28;
  sub_1BE04A724();

  (*(v2 + 8))(v5, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E90);
  v22 = v29;
  v29[3] = v21;
  v22[4] = sub_1BD0F9E9C();
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_1BD0DE4F4(&qword_1EBD38ED0, &qword_1EBD38E78);
  sub_1BD0DE4F4(&qword_1EBD38ED8, &qword_1EBD38E68);
  sub_1BD0F93A4(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v23 = v27;
  v24 = v30;
  sub_1BE04A714();
  (*(v31 + 8))(v10, v24);
  return (*(v16 + 8))(v19, v23);
}

uint64_t sub_1BD0F4EF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E08);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E10);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E18);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v21 - v17;
  sub_1BD0DE4F4(&qword_1EBD38E20, &qword_1EBD38E10);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v10 + 8))(v13, v9);
  v25 = v21;
  v26 = v22;
  sub_1BE04A7B4();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E28);
  a3[4] = sub_1BD0F9CDC();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1BD0DE4F4(&qword_1EBD38E50, &qword_1EBD38E18);
  sub_1BD0DE4F4(&qword_1EBD38E58, &qword_1EBD38E08);
  v19 = v23;
  sub_1BE04A714();
  (*(v24 + 8))(v8, v19);
  return (*(v15 + 8))(v18, v14);
}

void sub_1BD0F5264(uint64_t a1, uint64_t a2)
{
  v43 = sub_1BE04B0F4();
  v5 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v6);
  v42 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1BE0493F4();
  v44 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v8);
  v52 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1BE049A94();
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v11);
  v50 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v2;
  v61 = a1;
  v41 = a1;
  sub_1BE048C84();
  v13 = sub_1BD1CEA30(sub_1BD0F9C40, v59, a2);
  v15 = MEMORY[0x1BFB403C0](0) >> 48;
  v58 = HIDWORD(v14);
  v56 = HIWORD(v14);
  v16 = *(v13 + 16);
  LODWORD(v55) = HIWORD(v17);
  if (v16)
  {
    v39 = v5;
    v40 = v2;
    v19 = *(v10 + 16);
    v18 = v10 + 16;
    v48 = v19;
    v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v38[1] = v13;
    v21 = v13 + v20;
    v22 = *(v18 + 56);
    v46 = (v44 + 8);
    v47 = v22;
    v49 = v18;
    v45 = (v18 - 8);
    v24 = v50;
    v23 = v51;
    v25 = v14 >> 16;
    v57 = v15;
    do
    {
      v54 = v25;
      v56 = v16;
      v48(v24, v21, v23);
      v26 = v52;
      sub_1BE0499A4();
      sub_1BE0493C4();
      v55 = v27;
      (*v46)(v26, v53);
      v24 = v50;
      v23 = v51;
      v28 = sub_1BE053384();
      v25 = v29 >> 16;
      v57 = HIWORD(v28);
      v58 = HIDWORD(v29);
      v30 = HIWORD(v29);
      v32 = HIWORD(v31);
      (*v45)(v24, v23);
      v21 += v47;
      v16 = v56 - 1;
    }

    while (v56 != 1);
    LODWORD(v55) = v32;
    v56 = v30;

    v5 = v39;
    v33 = v52;
  }

  else
  {

    v33 = v52;
  }

  sub_1BE049594();
  sub_1BE049404();
  v34 = v42;
  sub_1BE04B054();
  sub_1BE0493E4();
  (*(v5 + 8))(v34, v43);
  (*(v44 + 8))(v33, v53);
  v35 = sub_1BE04AE64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v36 = sub_1BE04AE64();
  v37 = PKDateRangeStringFromDateToDate();

  if (v37)
  {
    sub_1BE052434();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD0F5780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a3;
  v3 = sub_1BE0493F4();
  v20[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04AF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049974();
  sub_1BD0F93A4(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  if ((sub_1BE052314() & 1) == 0)
  {
    (*(v8 + 8))(v11, v7);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v12 = sub_1BE0522F4();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
LABEL_9:
    v18 = 0;
    return v18 & 1;
  }

  sub_1BE0499A4();
  v13 = sub_1BE0493A4();
  v15 = v14;
  (*(v20[0] + 8))(v6, v3);
  if (v13 == sub_1BE049594() && v15 == v16)
  {

    v18 = 1;
  }

  else
  {
    v18 = sub_1BE053B84();
  }

  return v18 & 1;
}

uint64_t sub_1BD0F5A3C()
{

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel_range, &qword_1EBD38DB8);
  sub_1BD0F99B4(v0 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state);
  v1 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BD0F5B38()
{
  sub_1BD0F5C4C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(319);
    if (v1 <= 0x3F)
    {
      sub_1BE04B5D4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD0F5C4C()
{
  if (!qword_1EBD38C00)
  {
    sub_1BE04AF64();
    sub_1BD0F93A4(&qword_1EBD525D0, MEMORY[0x1E6969530]);
    v0 = sub_1BE052B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD38C00);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BD0F5D1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BD0F5D64(uint64_t result, int a2, int a3)
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

uint64_t sub_1BD0F5DE8()
{
  sub_1BD0F5E40();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1BD0F5E40()
{
  if (!qword_1EBD38C20)
  {
    sub_1BE049184();
    sub_1BE0495A4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C28);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD38C20);
    }
  }
}

uint64_t sub_1BD0F5EF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37150);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v3);
  v102 = &v88 - v4;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C30);
  v98 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v5);
  v96 = &v88 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C38);
  MEMORY[0x1EEE9AC00](v95, v7);
  v94 = &v88 - v8;
  *&v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C40);
  *&v93 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v9);
  v90 = &v88 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C48);
  v91 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v11);
  v88 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C50);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v88 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C58);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v88 - v20;
  v104 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C60);
  sub_1BD0F90F0();
  sub_1BE0504E4();
  v22 = [objc_opt_self() systemGroupedBackgroundColor];
  v23 = sub_1BE0511C4();
  v24 = sub_1BE0501D4();
  v25 = &v21[*(v18 + 36)];
  *v25 = v23;
  v25[8] = v24;
  v26 = sub_1BE04F434();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 104))(v30, *MEMORY[0x1E697C438], v26);
  v31 = sub_1BD0F93EC();
  sub_1BE050E84();
  (*(v27 + 8))(v30, v26);
  sub_1BD0DE53C(v21, &qword_1EBD38C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD0);
  sub_1BE04EE44();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BE0B69E0;
  sub_1BE04EE34();
  *&v106[0] = v18;
  *(&v106[0] + 1) = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v88;
  MEMORY[0x1BFB3DEF0](0, v32, v13, OpaqueTypeConformance2);

  (*(v14 + 8))(v17, v13);
  v35 = sub_1BE04E454();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v88 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04E434();
  *&v106[0] = v13;
  *(&v106[0] + 1) = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v90;
  v42 = v89;
  sub_1BE050984();
  (*(v36 + 8))(v39, v35);
  (*(v91 + 8))(v34, v42);
  v103 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD8);
  *&v106[0] = v42;
  *(&v106[0] + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CE0);
  v44 = sub_1BD0DE4F4(&qword_1EBD38CE8, &qword_1EBD38CE0);
  *&v106[0] = v43;
  *(&v106[0] + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v45 = v94;
  v46 = v92;
  sub_1BE051024();
  (*(v93 + 8))(v41, v46);
  v47 = sub_1BE04F7B4();
  sub_1BD0F821C(v106);
  v48 = v107;
  LOBYTE(v42) = v108;
  v93 = v106[0];
  v92 = v106[1];
  v49 = sub_1BE04E564();
  LOBYTE(v21) = MEMORY[0x1BFB3D2D0]((2 * v49));
  v50 = sub_1BE04EC74();
  LOBYTE(v106[0]) = 0;
  v51 = v95;
  v52 = v45 + *(v95 + 36);
  v53 = v92;
  *v52 = v93;
  *(v52 + 16) = v53;
  *(v52 + 32) = v48;
  *(v52 + 40) = v42;
  *(v52 + 44) = *&v111[3];
  *(v52 + 41) = *v111;
  *(v52 + 48) = v50;
  *(v52 + 56) = 0;
  *(v52 + 64) = 0;
  *(v52 + 65) = v21;
  *(v52 + 70) = v110;
  *(v52 + 66) = v109;
  *(v52 + 72) = v47;
  v54 = sub_1BE0501E4();
  v55 = sub_1BE04FC54();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v57);
  v59 = &v88 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04FC34();
  v60 = sub_1BD0F94D8();
  v61 = v96;
  MEMORY[0x1BFB3DB30](v54, 0x4072C00000000000, 0, v59, v51, v60);
  (*(v56 + 8))(v59, v55);
  sub_1BD043E78(v45);
  v62 = swift_allocObject();
  v63 = *(v2 + 16);
  *(v62 + 16) = *v2;
  *(v62 + 32) = v63;
  *(v62 + 48) = *(v2 + 32);
  *(v62 + 64) = *(v2 + 48);
  sub_1BD0F972C(v2, v106);
  *&v106[0] = v51;
  *(&v106[0] + 1) = v60;
  swift_getOpaqueTypeConformance2();
  sub_1BD0F9764();
  v64 = v97;
  sub_1BE050DC4();

  (v98[1])(v61, v64);
  sub_1BE0528A4();
  sub_1BD0F972C(v2, v106);
  v65 = sub_1BE052894();
  v66 = swift_allocObject();
  v67 = MEMORY[0x1E69E85E0];
  *(v66 + 16) = v65;
  *(v66 + 24) = v67;
  v68 = *(v2 + 16);
  *(v66 + 32) = *v2;
  *(v66 + 48) = v68;
  *(v66 + 64) = *(v2 + 32);
  *(v66 + 80) = *(v2 + 48);
  v69 = sub_1BE0528D4();
  v70 = *(v69 - 8);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69, v72);
  v73 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  v74 = &v88 - v73;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v97 = sub_1BE04EAA4();
    v98 = &v88;
    v96 = *(v97 - 8);
    MEMORY[0x1EEE9AC00](v97, v75);
    v77 = &v88 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v106[0] = 0;
    *(&v106[0] + 1) = 0xE000000000000000;
    sub_1BE053834();

    *&v106[0] = 0xD000000000000042;
    *(&v106[0] + 1) = 0x80000001BE118F30;
    v105 = 171;
    v78 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v78);

    MEMORY[0x1EEE9AC00](v79, v80);
    (*(v70 + 16))(&v88 - v73, &v88 - v73, v69);
    sub_1BE04EA94();
    (*(v70 + 8))(&v88 - v73, v69);
    v81 = v101;
    (*(v99 + 32))(v101, v102, v100);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37158);
    return (*(v96 + 4))(v81 + *(v82 + 36), v77, v97);
  }

  else
  {
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD37160);
    v85 = v101;
    v86 = (v101 + *(v84 + 36));
    v87 = sub_1BE04E7B4();
    (*(v70 + 32))(&v86[*(v87 + 20)], v74, v69);
    *v86 = &unk_1BE0B7CB0;
    *(v86 + 1) = v66;
    return (*(v99 + 32))(v85, v102, v100);
  }
}

uint64_t sub_1BD0F6D38(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C78);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v11[-v4];
  v12 = a1;
  *v5 = sub_1BE04F7C4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D50);
  sub_1BD0F75A0(a1, &v5[*(v6 + 44)]);
  v7 = &v5[*(v2 + 36)];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
  v9 = sub_1BE0505C4();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C98);
  sub_1BD0F9188();
  sub_1BD0F926C();
  return sub_1BE051A24();
}

uint64_t sub_1BD0F6EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CA8);
  v4 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v5);
  v43 = &v39 - v6;
  v7 = type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1BE049184();
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v45, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v44 = &v39 - v16;
  v47[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D10);
  sub_1BE0516A4();
  v17 = v49;
  swift_getKeyPath();
  *&v47[0] = v17;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel);
  sub_1BE04B594();

  v18 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state;
  swift_beginAccess();
  sub_1BD0F9950(v17 + v18, v10);

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08);
  if ((*(*(v19 - 8) + 48))(v10, 2, v19))
  {
    sub_1BD0F99B4(v10);
    v20 = 1;
    v21 = v46;
  }

  else
  {
    v41 = v4;
    v42 = a2;
    v22 = *(v19 + 48);
    v39 = *&v10[*(v19 + 64)];
    v23 = v11;
    v24 = *(v11 + 32);
    v25 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v44;
    v27 = v45;
    v24();
    v28 = sub_1BE0495A4();
    (*(*(v28 - 8) + 8))(&v10[v22], v28);
    v48 = v39;
    v40 = v23;
    v29 = v26;
    v4 = v41;
    (*(v23 + 16))(v25, v29, v27);
    v30 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v31 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v33 = v32 + v30;
    a2 = v42;
    (v24)(v33, v25, v27);
    v34 = v32 + v31;
    v35 = *(a1 + 16);
    *v34 = *a1;
    *(v34 + 16) = v35;
    *(v34 + 32) = *(a1 + 32);
    *(v34 + 48) = *(a1 + 48);
    sub_1BD0F972C(a1, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C28);
    sub_1BE04AFE4();
    type metadata accessor for FinanceKitInternalTransactionCell(0);
    sub_1BD0DE4F4(&qword_1EBD38D98, &qword_1EBD38C28);
    sub_1BD0F93A4(&qword_1EBD38CB0, type metadata accessor for FinanceKitInternalTransactionCell);
    sub_1BD0F93A4(&qword_1EBD38DA0, MEMORY[0x1E6967A40]);
    v36 = v43;
    sub_1BE0519D4();
    (*(v40 + 8))(v44, v45);
    v37 = v46;
    (*(v4 + 32))(a2, v36, v46);
    v20 = 0;
    v21 = v37;
  }

  return (*(v4 + 56))(a2, v20, 1, v21);
}

double sub_1BD0F7434@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  v9 = v8[5];
  v10 = sub_1BE049A94();
  (*(*(v10 - 8) + 16))(a4 + v9, a1, v10);
  v11 = v8[6];
  v12 = sub_1BE049184();
  (*(*(v12 - 8) + 16))(a4 + v11, a2, v12);
  v13 = *(a3 + 48);
  type metadata accessor for NavigationController();
  sub_1BD0F93A4(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v14 = v13;
  *a4 = sub_1BE04EEC4();
  a4[1] = v15;
  *(a4 + v8[7]) = v14;
  v16 = v8[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB0);
  sub_1BE051694();
  result = *&v18;
  *(a4 + v16) = v18;
  return result;
}

id sub_1BD0F75A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v71 = sub_1BE04BD74();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v3);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D58);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v66 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D60);
  v15 = v14 - 8;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v68 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v66 - v20;
  *v21 = sub_1BE04F504();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D68) + 44)];
  *v13 = sub_1BE04F7B4();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D70);
  sub_1BD0F893C(a1, &v13[*(v23 + 44)]);
  sub_1BD0DE19C(v13, v10, &qword_1EBD38D58);
  *v22 = 0;
  v22[8] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D78);
  sub_1BD0DE19C(v10, &v22[*(v24 + 48)], &qword_1EBD38D58);
  v25 = &v22[*(v24 + 64)];
  *v25 = 0;
  v25[8] = 1;
  v26 = v71;
  sub_1BD0DE53C(v13, &qword_1EBD38D58);
  v27 = v70;
  sub_1BD0DE53C(v10, &qword_1EBD38D58);
  LOBYTE(v13) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v28 = *(v15 + 44);
  v67 = v21;
  v29 = &v21[v28];
  *v29 = v13;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  (*(v27 + 104))(v5, *MEMORY[0x1E69B80D8], v26);
  result = PKPassKitBundle();
  if (result)
  {
    v35 = result;
    v36 = sub_1BE04B6F4();
    v38 = v37;

    (*(v27 + 8))(v5, v26);
    v77 = v36;
    v78 = v38;
    sub_1BD0DDEBC();
    v39 = sub_1BE0506C4();
    v41 = v40;
    v43 = v42;
    sub_1BE0503E4();
    v44 = sub_1BE0505F4();
    v46 = v45;
    v48 = v47;

    sub_1BD0DDF10(v39, v41, v43 & 1);

    v49 = sub_1BE0505D4();
    v51 = v50;
    v53 = v52;
    sub_1BD0DDF10(v44, v46, v48 & 1);

    v77 = sub_1BE051464();
    v54 = sub_1BE050574();
    v56 = v55;
    LOBYTE(v46) = v57;
    v59 = v58;
    sub_1BD0DDF10(v49, v51, v53 & 1);

    LOBYTE(v44) = v46 & 1;
    v87 = v46 & 1;
    v85 = 0;
    v60 = v67;
    v61 = v68;
    sub_1BD0DE19C(v67, v68, &qword_1EBD38D60);
    v62 = v69;
    sub_1BD0DE19C(v61, v69, &qword_1EBD38D60);
    v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D80) + 48);
    *&v72 = v54;
    *(&v72 + 1) = v56;
    LOBYTE(v73) = v44;
    *(&v73 + 1) = *v86;
    DWORD1(v73) = *&v86[3];
    *(&v73 + 1) = v59;
    v74 = 0u;
    v75 = 0u;
    v76 = 0;
    *(v63 + 64) = 0;
    v64 = v73;
    *v63 = v72;
    *(v63 + 16) = v64;
    v65 = v75;
    *(v63 + 32) = v74;
    *(v63 + 48) = v65;
    sub_1BD0DE19C(&v72, &v77, &qword_1EBD38D88);
    sub_1BD0DE53C(v60, &qword_1EBD38D60);
    v77 = v54;
    v78 = v56;
    v79 = v44;
    *v80 = *v86;
    *&v80[3] = *&v86[3];
    v81 = v59;
    v82 = 0u;
    v83 = 0u;
    v84 = 0;
    sub_1BD0DE53C(&v77, &qword_1EBD38D88);
    return sub_1BD0DE53C(v61, &qword_1EBD38D60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD0F7B68(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FB34();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D20);
  sub_1BD0DE4F4(&qword_1EBD38D28, &qword_1EBD38D20);
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD38CE8, &qword_1EBD38CE0);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

int *sub_1BD0F7D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D30);
  return sub_1BD0F7DAC(a1, a2 + *(v4 + 44));
}

int *sub_1BD0F7DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v48 = a2;
  v2 = sub_1BE051584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC30);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v42 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D38);
  MEMORY[0x1EEE9AC00](v43, v11);
  v45 = &v42 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D40);
  MEMORY[0x1EEE9AC00](v44, v13);
  v46 = &v42 - v14;
  PKScreenScale();
  result = PKIconForFKManuallyExcluded();
  if (result)
  {
    sub_1BE051544();
    (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2);
    v16 = 0.0;
    v42 = sub_1BE0515E4();

    (*(v3 + 8))(v6, v2);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v17 = v51;
    v18 = v52;
    v19 = v53;
    v20 = v54;
    v22 = v55;
    v21 = v56;
    v23 = &v10[*(v7 + 36)];
    v24 = *(sub_1BE04EDE4() + 20);
    v25 = *MEMORY[0x1E697F468];
    v26 = sub_1BE04F684();
    (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
    __asm { FMOV            V0.2D, #6.0 }

    *v23 = _Q0;
    *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    *v10 = v42;
    *(v10 + 1) = v17;
    v10[16] = v18;
    *(v10 + 3) = v19;
    v10[32] = v20;
    *(v10 + 5) = v22;
    *(v10 + 6) = v21;
    v32 = v47;
    v50 = *(v47 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    if (v49)
    {
      v33 = 1.0;
    }

    else
    {
      v33 = 0.0;
    }

    v34 = v45;
    sub_1BD0DE204(v10, v45, &unk_1EBD3FC30);
    *(v34 + *(v43 + 36)) = v33;
    v50 = *(v32 + 32);
    sub_1BE0516A4();
    if (!v49)
    {
      v16 = 40.0;
    }

    v35 = v46;
    v36 = sub_1BD0DE204(v34, v46, &qword_1EBD38D38);
    v37 = v35 + *(v44 + 36);
    *v37 = 0;
    *(v37 + 8) = v16;
    v38 = MEMORY[0x1BFB3EDF0](v36, 0.5, 1.0, 0.0);
    v50 = *(v32 + 32);
    sub_1BE0516A4();
    v39 = v49;
    v40 = v48;
    sub_1BD0DE204(v35, v48, &qword_1EBD38D40);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D48);
    v41 = v40 + result[9];
    *v41 = v38;
    *(v41 + 8) = v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD0F821C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0495A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *v1;
  v30 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D10);
  sub_1BE0516A4();
  v12 = v29;
  swift_getKeyPath();
  *&v30 = v12;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel);
  sub_1BE04B594();

  v13 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state;
  swift_beginAccess();
  sub_1BD0F9950(v12 + v13, v6);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08);
  if ((*(*(v14 - 8) + 48))(v6, 2, v14))
  {
    result = sub_1BD0F99B4(v6);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = *&v6[*(v14 + 64)];
    (*(v8 + 32))(v11, &v6[*(v14 + 48)], v7);
    v23 = sub_1BE049184();
    (*(*(v23 - 8) + 8))(v6, v23);
    v29 = v31;
    sub_1BE0516A4();
    sub_1BD0F5264(v11, v22);
    v16 = v24;
    v17 = v25;
    v18 = v26;
    v19 = v27;

    v20 = sub_1BE04EC54();
    v21 = sub_1BE0501D4();
    result = (*(v8 + 8))(v11, v7);
  }

  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  *(a1 + 40) = v21;
  return result;
}

uint64_t sub_1BD0F8550@<X0>(double *a1@<X8>)
{
  result = sub_1BE04E9E4();
  v4 = v3 / 120.0;
  if (v3 / 120.0 <= 0.0)
  {
    v4 = 0.0;
  }

  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1BD0F85A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD0F8640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1BE0528A4();
  v3[6] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD0F86D8, v5, v4);
}

uint64_t sub_1BD0F86D8()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D10);
  sub_1BE0516A4();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F8798;

  return sub_1BD0F191C();
}

uint64_t sub_1BD0F8798()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1BD0F88DC, v3, v2);
}

uint64_t sub_1BD0F88DC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1BD0F893C(__int128 *a1@<X0>, void *a2@<X8>)
{
  v90 = a1;
  v91 = a2;
  v2 = sub_1BE051584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC30);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v92 = &v85[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v85[-v13];
  MEMORY[0x1EEE9AC00](v12, v15);
  v94 = &v85[-v16];
  PKScreenScale();
  if (!PKIconForFKManuallyExcluded())
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1BE051544();
  (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2);
  v93 = sub_1BE0515E4();

  (*(v3 + 8))(v6, v2);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v17 = v97;
  v18 = v98;
  v19 = v99;
  v20 = v100;
  v22 = v101;
  v21 = v102;
  v23 = &v14[*(v7 + 36)];
  v24 = *(sub_1BE04EDE4() + 20);
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_1BE04F684();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #10.0 }

  *v23 = _Q0;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
  v32 = v94;
  *v14 = v93;
  *(v14 + 1) = v17;
  v14[16] = v18;
  *(v14 + 3) = v19;
  v14[32] = v20;
  *(v14 + 5) = v22;
  *(v14 + 6) = v21;
  sub_1BD0DE204(v14, v32, &unk_1EBD3FC30);
  v33 = sub_1BE052404();
  v34 = PKLocalizedBankConnectString(v33);

  if (!v34)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v35 = sub_1BE052434();
  v37 = v36;

  *&v96 = v35;
  *(&v96 + 1) = v37;
  v87 = sub_1BD0DDEBC();
  v38 = sub_1BE0506C4();
  v40 = v39;
  LOBYTE(v37) = v41;
  sub_1BE050344();
  v42 = sub_1BE0505F4();
  v44 = v43;
  v46 = v45;

  sub_1BD0DDF10(v38, v40, v37 & 1);

  sub_1BE050364();
  v47 = sub_1BE050544();
  v49 = v48;
  v51 = v50;
  sub_1BD0DDF10(v42, v44, v46 & 1);

  sub_1BE051464();
  v89 = sub_1BE050564();
  v88 = v52;
  v86 = v53;
  v93 = v54;

  sub_1BD0DDF10(v47, v49, v51 & 1);

  v55 = sub_1BE052404();
  v56 = PKLocalizedString(v55);

  if (v56)
  {
    sub_1BE052434();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1BE0B69E0;
    v96 = *v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D10);
    sub_1BE0516A4();
    v58 = *(v95 + 16);
    sub_1BE048C84();

    v59 = *(v58 + 16);

    v60 = MEMORY[0x1E69E65A8];
    *(v57 + 56) = MEMORY[0x1E69E6530];
    *(v57 + 64) = v60;
    *(v57 + 32) = v59;
    v61 = sub_1BE052454();
    v63 = v62;

    *&v96 = v61;
    *(&v96 + 1) = v63;
    v64 = sub_1BE0506C4();
    v66 = v65;
    LOBYTE(v63) = v67;
    sub_1BE0502A4();
    v68 = sub_1BE0505F4();
    v70 = v69;
    v72 = v71;

    sub_1BD0DDF10(v64, v66, v63 & 1);

    sub_1BE051494();
    v73 = sub_1BE050564();
    v75 = v74;
    LOBYTE(v63) = v76;
    v90 = v77;

    sub_1BD0DDF10(v68, v70, v72 & 1);

    v78 = v92;
    sub_1BD0DE19C(v94, v92, &unk_1EBD3FC30);
    LOBYTE(v70) = v86 & 1;
    LOBYTE(v96) = v86 & 1;
    v79 = v91;
    *v91 = 0;
    *(v79 + 8) = 1;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D90);
    sub_1BD0DE19C(v78, v79 + v80[12], &unk_1EBD3FC30);
    v81 = v79 + v80[16];
    v82 = v89;
    v83 = v88;
    *v81 = v89;
    *(v81 + 1) = v83;
    v81[16] = v70;
    *(v81 + 3) = v93;
    v84 = v79 + v80[20];
    *v84 = v73;
    *(v84 + 1) = v75;
    LOBYTE(v63) = v63 & 1;
    v84[16] = v63;
    *(v84 + 3) = v90;
    sub_1BD0D7F18(v82, v83, v70);
    sub_1BE048C84();
    sub_1BD0D7F18(v73, v75, v63);
    sub_1BE048C84();
    sub_1BD0DE53C(v94, &unk_1EBD3FC30);
    sub_1BD0DDF10(v73, v75, v63);

    sub_1BD0DDF10(v82, v83, v96);

    sub_1BD0DE53C(v78, &unk_1EBD3FC30);
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_1BD0F90F0()
{
  result = qword_1EBD38C68;
  if (!qword_1EBD38C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C60);
    sub_1BD0F9188();
    sub_1BD0F926C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38C68);
  }

  return result;
}

unint64_t sub_1BD0F9188()
{
  result = qword_1EBD38C70;
  if (!qword_1EBD38C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C78);
    sub_1BD0DE4F4(&qword_1EBD38C80, &qword_1EBD38C88);
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38C70);
  }

  return result;
}

unint64_t sub_1BD0F926C()
{
  result = qword_1EBD38C90;
  if (!qword_1EBD38C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C98);
    sub_1BD0F92F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38C90);
  }

  return result;
}

unint64_t sub_1BD0F92F0()
{
  result = qword_1EBD38CA0;
  if (!qword_1EBD38CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CA8);
    sub_1BD0F93A4(&qword_1EBD38CB0, type metadata accessor for FinanceKitInternalTransactionCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38CA0);
  }

  return result;
}

uint64_t sub_1BD0F93A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD0F93EC()
{
  result = qword_1EBD38CB8;
  if (!qword_1EBD38CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C58);
    sub_1BD0DE4F4(&qword_1EBD38CC0, &qword_1EBD38CC8);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38CB8);
  }

  return result;
}

unint64_t sub_1BD0F94D8()
{
  result = qword_1EBD38CF0;
  if (!qword_1EBD38CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C58);
    sub_1BD0F93EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CE0);
    sub_1BD0DE4F4(&qword_1EBD38CE8, &qword_1EBD38CE0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD38CF8, &qword_1EBD38D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38CF0);
  }

  return result;
}

unint64_t sub_1BD0F9764()
{
  result = qword_1EBD38D08;
  if (!qword_1EBD38D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38D08);
  }

  return result;
}

uint64_t sub_1BD0F97B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD0F8640(v2, v3, v0 + 32);
}

uint64_t sub_1BD0F985C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BD0F9950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0F99B4(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0F9A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1BD0F9AA0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1BE049184() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BD0F7434(a1, v2 + v6, v7, a2);
}

id sub_1BD0F9B4C@<X0>(uint64_t a1@<X8>)
{
  sub_1BE051694();
  sub_1BE051694();
  result = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:{PKUIScreenScale(), 0}];
  if (result)
  {
    v3 = result;
    type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel(0);
    result = sub_1BE051694();
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = v4;
    *(a1 + 40) = v5;
    *(a1 + 48) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1BD0F9CDC()
{
  result = qword_1EBD38E30;
  if (!qword_1EBD38E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E28);
    sub_1BD0F9D68();
    sub_1BD0F9E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38E30);
  }

  return result;
}

unint64_t sub_1BD0F9D68()
{
  result = qword_1EBD38E38;
  if (!qword_1EBD38E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E18);
    sub_1BD0DE4F4(&qword_1EBD38E40, &qword_1EBD38E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38E38);
  }

  return result;
}

unint64_t sub_1BD0F9E18()
{
  result = qword_1EBD38E48;
  if (!qword_1EBD38E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38E48);
  }

  return result;
}

unint64_t sub_1BD0F9E9C()
{
  result = qword_1EBD38E98;
  if (!qword_1EBD38E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E90);
    sub_1BD0F9F28();
    sub_1BD0F9FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38E98);
  }

  return result;
}

unint64_t sub_1BD0F9F28()
{
  result = qword_1EBD38EA0;
  if (!qword_1EBD38EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E78);
    sub_1BD0DE4F4(&qword_1EBD38EA8, &qword_1EBD38E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38EA0);
  }

  return result;
}

unint64_t sub_1BD0F9FD8()
{
  result = qword_1EBD38EB0;
  if (!qword_1EBD38EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E68);
    sub_1BD0FA05C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38EB0);
  }

  return result;
}

unint64_t sub_1BD0FA05C()
{
  result = qword_1EBD38EB8;
  if (!qword_1EBD38EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E60);
    v1 = MEMORY[0x1E6967A40];
    sub_1BD0F93A4(&qword_1EBD38EC0, MEMORY[0x1E6967A40]);
    sub_1BD0F93A4(&qword_1EBD38EC8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38EB8);
  }

  return result;
}

unint64_t sub_1BD0FA144()
{
  result = qword_1EBD38F38;
  if (!qword_1EBD38F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38F30);
    sub_1BD0FA1E8();
    sub_1BD0FA424(&qword_1EBD38F80, &qword_1EBD38EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38F38);
  }

  return result;
}

unint64_t sub_1BD0FA1E8()
{
  result = qword_1EBD38F40;
  if (!qword_1EBD38F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38F00);
    sub_1BD0FA28C();
    sub_1BD0FA424(&qword_1EBD38F70, &qword_1EBD38EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38F40);
  }

  return result;
}

unint64_t sub_1BD0FA28C()
{
  result = qword_1EBD38F48;
  if (!qword_1EBD38F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38EF8);
    sub_1BD0FA388(&qword_1EBD38F50, &qword_1EBD38F58);
    sub_1BD0FA388(&qword_1EBD38F60, &qword_1EBD38F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38F48);
  }

  return result;
}

uint64_t sub_1BD0FA388(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38F08);
    sub_1BD0F93A4(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD0FA424(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1BD0DE4F4(&qword_1EBD38F78, &qword_1EBD38EE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BD0FA4DC()
{
  sub_1BD0E5E8C(319, &qword_1EBD39018);
  if (v0 <= 0x3F)
  {
    sub_1BE0534B4();
    if (v1 <= 0x3F)
    {
      sub_1BD0FA9D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD0FA59C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 18;
  v11 = (a2 - v7 + 0xFFFF) >> 16;
  if (v10 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10), !*(a1 + v10)))
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v17 = (v15 - 1) << (8 * v10);
  if (v10 <= 3)
  {
    v18 = *a1;
  }

  else
  {
    v17 = 0;
    v18 = *a1;
  }

  return v7 + (v18 | v17) + 1;
}

void sub_1BD0FA738(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v12 + ((v11 + 8) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 0xFFFF) >> 16;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if ((v9 & 0x80000000) != 0)
      {
        v20 = (&a1[v11 + 8] & ~v11);
        if (v9 >= a2)
        {
          v24 = *(v7 + 56);
          v25 = a2 + 1;
          v26 = &a1[v11 + 8] & ~v11;

          v24(v26, v25);
        }

        else
        {
          if (v12 <= 3)
          {
            v21 = ~(-1 << (8 * v12));
          }

          else
          {
            v21 = -1;
          }

          if (v12)
          {
            v22 = v21 & (~v9 + a2);
            if (v12 <= 3)
            {
              v23 = v12;
            }

            else
            {
              v23 = 4;
            }

            bzero(v20, v12);
            if (v23 > 2)
            {
              if (v23 == 3)
              {
                *v20 = v22;
                v20[2] = BYTE2(v22);
              }

              else
              {
                *v20 = v22;
              }
            }

            else if (v23 == 1)
            {
              *v20 = v22;
            }

            else
            {
              *v20 = v22;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *a1 = v19;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = HIWORD(v17) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

void sub_1BD0FA9D0()
{
  if (!qword_1EBD39020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD579E0);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD39020);
    }
  }
}

uint64_t sub_1BD0FAA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39028);
  v5 = *(a1 + 16);
  v6 = sub_1BD0FE9EC();
  v7 = *(a1 + 24);
  v56 = v4;
  v57 = v5;
  v58 = v6;
  v59 = v7;
  swift_getOpaqueTypeMetadata2();
  v8 = sub_1BE04EBD4();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v45 = &v44 - v15;
  v46 = v7;
  v56 = v4;
  v57 = v5;
  v47 = v5;
  v58 = v6;
  v59 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_1BD0FEBBC();
  v54 = OpaqueTypeConformance2;
  v55 = v17;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1BE051754();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v44 - v25;
  v27 = sub_1BE04F9B4();
  v28 = a1;
  v48 = v27;
  v29 = *(v27 - 8);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v51 = &v44 - v33;
  v34 = *(v2 + *(v31 + 40));
  if (v34)
  {
    v45 = &v44;
    MEMORY[0x1EEE9AC00](v31, v32);
    v35 = v46;
    *(&v44 - 4) = v47;
    *(&v44 - 3) = v35;
    *(&v44 - 2) = v2;
    sub_1BD0D44B8(v34);
    sub_1BE048964();
    v47 = v29;
    v36 = WitnessTable;
    sub_1BE051704();
    swift_getWitnessTable();
    sub_1BD147308(v23);
    v37 = *(v19 + 8);
    v37(v23, v18);
    sub_1BD147308(v26);
    v38 = v36;
    v29 = v47;
    sub_1BD13A700(v23, v18);
    sub_1BD0D4744(v34);
    v37(v23, v18);
    v37(v26, v18);
  }

  else
  {
    sub_1BD0FB1A8(v31, v13);
    v39 = v45;
    v38 = WitnessTable;
    sub_1BD147308(v13);
    v40 = *(v9 + 8);
    v40(v13, v8);
    sub_1BD147308(v39);
    swift_getWitnessTable();
    sub_1BD13A7F8(v13, v18, v8);
    v40(v13, v8);
    v40(v39, v8);
  }

  v52 = swift_getWitnessTable();
  v53 = v38;
  v41 = v48;
  swift_getWitnessTable();
  v42 = v51;
  sub_1BD147308(v51);
  return (*(v29 + 8))(v42, v41);
}

uint64_t sub_1BD0FAFAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39028);
  v6 = sub_1BD0FE9EC();
  v22 = v5;
  v23 = a1;
  v24 = v6;
  v25 = a2;
  swift_getOpaqueTypeMetadata2();
  v7 = sub_1BE04EBD4();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v21 - v14;
  v16 = type metadata accessor for PaymentOfferInstallmentSelectionItemView();
  sub_1BD0FB1A8(v16, v12);
  v22 = v5;
  v23 = a1;
  v24 = v6;
  v25 = a2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_1BD0FEBBC();
  v21[2] = OpaqueTypeConformance2;
  v21[3] = v18;
  swift_getWitnessTable();
  sub_1BD147308(v12);
  v19 = *(v8 + 8);
  v19(v12, v7);
  sub_1BD147308(v15);
  return (v19)(v15, v7);
}

uint64_t sub_1BD0FB1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39060);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39050);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39040);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v53 = &v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39028);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v51 - v19;
  v21 = *(a1 + 16);
  v55 = sub_1BD0FE9EC();
  v22 = *(a1 + 24);
  *&v64 = v17;
  *(&v64 + 1) = v21;
  v52 = v21;
  *&v65 = v55;
  *(&v65 + 1) = v22;
  v23 = v22;
  v56 = MEMORY[0x1E69BCB50];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v24);
  v54 = &v51 - v25;
  *v7 = sub_1BE04F7C4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39068);
  sub_1BD0FB680(v2, &v7[*(v26 + 44)]);
  v27 = sub_1BE0501D4();
  sub_1BE04E1F4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1BD0DE204(v7, v12, &qword_1EBD39060);
  v36 = &v12[*(v9 + 44)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = v53;
  sub_1BD0DE204(v12, v53, &qword_1EBD39050);
  *(v37 + *(v14 + 44)) = 1;
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v37, v20, &qword_1EBD39040);
  v38 = v17;
  v39 = &v20[*(v17 + 36)];
  v40 = v69;
  *(v39 + 4) = v68;
  *(v39 + 5) = v40;
  *(v39 + 6) = v70;
  v41 = v65;
  *v39 = v64;
  *(v39 + 1) = v41;
  v42 = v67;
  *(v39 + 2) = v66;
  *(v39 + 3) = v42;
  v43 = v54;
  v44 = v38;
  v45 = v52;
  v46 = v55;
  sub_1BE050724();
  sub_1BD0DE53C(v20, &qword_1EBD39028);
  v47 = sub_1BE051214();
  v60 = v44;
  v61 = v45;
  v62 = v46;
  v63 = v23;
  swift_getOpaqueTypeConformance2();
  v48 = OpaqueTypeMetadata2;
  v49 = sub_1BD3805D0();
  sub_1BD5A3420(0, v47, v48, 1.0, v49);

  return (*(v58 + 8))(v43, v48);
}

uint64_t sub_1BD0FB680@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39070);
  MEMORY[0x1EEE9AC00](v22, v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39078);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39080);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22 - v12;
  v14 = [*a1 dynamicContent];
  if (v14 && (v15 = v14, v16 = [v14 dynamicContentPageForPageType_], v15, v16) && (v17 = objc_msgSend(v16, sel_customLayout), v16, v17))
  {
    v18 = type metadata accessor for PaymentOfferInstallmentSelectionItemView();
    sub_1BD0FB9CC(v17, v18, v5);
    sub_1BD0DE19C(v5, v9, &qword_1EBD39070);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD39088, &qword_1EBD39070);
    sub_1BD0DE4F4(&qword_1EBD39090, &qword_1EBD39080);
    sub_1BE04F9A4();

    v19 = v5;
    v20 = &qword_1EBD39070;
  }

  else
  {
    type metadata accessor for PaymentOfferInstallmentSelectionItemView();
    sub_1BD0FC17C(v13);
    sub_1BD0DE19C(v13, v9, &qword_1EBD39080);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD39088, &qword_1EBD39070);
    sub_1BD0DE4F4(&qword_1EBD39090, &qword_1EBD39080);
    sub_1BE04F9A4();
    v19 = v13;
    v20 = &qword_1EBD39080;
  }

  return sub_1BD0DE53C(v19, v20);
}

uint64_t sub_1BD0FB9CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v73 = *(a2 - 8);
  v74 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  v70[1] = v4;
  v72 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39098);
  v78 = *(v80 - 8);
  v6 = MEMORY[0x1EEE9AC00](v80, v5);
  v77 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v76 = v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390A0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v75 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v82 = (v70 - v15);
  v16 = [a1 items];
  sub_1BD0E5E8C(0, &qword_1EBD390A8);
  v17 = sub_1BE052744();

  v18 = v17 & 0xFFFFFFFFFFFFFF8;
  v19 = v17 >> 62;
  if (v17 >> 62)
  {
    goto LABEL_53;
  }

  v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v21 = 0;
  v22 = v17 & 0xC000000000000001;
  while (1)
  {
    if (v20 == v21)
    {
      if (!v19)
      {
        v27 = 0;
        v28 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_22;
      }

      result = sub_1BE053704();
      if ((result & 0x8000000000000000) == 0)
      {
        v28 = result;
        v27 = 0;
        goto LABEL_19;
      }

      goto LABEL_60;
    }

    if (v22)
    {
      v23 = MEMORY[0x1BFB40900](v21, v17);
    }

    else
    {
      if (v21 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v20 = sub_1BE053704();
        goto LABEL_3;
      }

      v23 = *(v17 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = [v23 type];

    if (v25 == 2)
    {
      break;
    }

    if (__OFADD__(v21++, 1))
    {
      goto LABEL_52;
    }
  }

  v27 = v21;
  v28 = v21;
  if (!v19)
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v21;
    v28 = v21;
    goto LABEL_21;
  }

LABEL_19:
  result = sub_1BE053704();
  if (result < 0)
  {
    goto LABEL_55;
  }

  result = sub_1BE053704();
LABEL_21:
  if (result < v28)
  {
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_22:
  if (v22)
  {
    sub_1BE048C84();
    if (v28)
    {
      v30 = 0;
      do
      {
        v31 = v30 + 1;
        sub_1BE053864();
        v30 = v31;
      }

      while (v28 != v31);
    }

    if (!v19)
    {
LABEL_27:
      v32 = 0;
      v33 = v18 + 32;
      v34 = (2 * v28) | 1;
      result = v17 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_30;
    }
  }

  else
  {
    sub_1BE048C84();
    if (!v19)
    {
      goto LABEL_27;
    }
  }

  result = sub_1BE0539D4();
  v33 = v35;
LABEL_30:
  v81 = result;
  v70[0] = v34;
  if (v20 == v21)
  {
    v36 = v32;

    v18 = sub_1BD0FC6EC(MEMORY[0x1E69E7CC0]);
    v38 = v37;
    v27 = v39;
    v41 = v40;
LABEL_50:
    v47 = sub_1BE04F504();
    v48 = v82;
    *v82 = v47;
    v48[1] = 0;
    *(v48 + 16) = 1;
    v49 = v48;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390B0);
    v51 = v74;
    v52 = *(v74 + 16);
    v53 = *(v74 + 24);
    v54 = v36;
    v55 = v71;
    sub_1BD0FC794(v81, v33, v54, v70[0], v71, v52, v53, v49 + *(v50 + 44));
    v83 = v18;
    v84 = v38;
    v85 = v27;
    v86 = v41;
    swift_getKeyPath();
    v57 = v72;
    v56 = v73;
    (*(v73 + 16))(v72, v55, v51);
    v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v52;
    *(v59 + 24) = v53;
    (*(v56 + 32))(v59 + v58, v57, v51);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390C0);
    sub_1BD0DE4F4(&qword_1EBD390C8, &qword_1EBD390B8);
    sub_1BD0FECB8();
    sub_1BD0FF1FC(&qword_1EBD390D8, &qword_1EBD390C0, &unk_1BE0B80C8, sub_1BD0FED20);
    v60 = v76;
    sub_1BE0519C4();
    v61 = v82;
    v62 = v75;
    sub_1BD0DE19C(v82, v75, &qword_1EBD390A0);
    v64 = v77;
    v63 = v78;
    v65 = *(v78 + 16);
    v66 = v80;
    v65(v77, v60, v80);
    v67 = v79;
    sub_1BD0DE19C(v62, v79, &qword_1EBD390A0);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39128);
    v65((v67 + *(v68 + 48)), v64, v66);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v69 = *(v63 + 8);
    v69(v60, v66);
    sub_1BD0DE53C(v61, &qword_1EBD390A0);
    v69(v64, v66);
    return sub_1BD0DE53C(v62, &qword_1EBD390A0);
  }

  if (v20 < v27)
  {
    goto LABEL_56;
  }

  v36 = v32;
  if (v19)
  {
    result = sub_1BE053704();
    if (result < v27)
    {
      goto LABEL_57;
    }

    result = sub_1BE053704();
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < v27)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

  if (result < v20)
  {
    goto LABEL_58;
  }

  if (v20 < 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (!v22 || v27 == v20)
  {
    sub_1BE048C84();
LABEL_47:

    if (v19)
    {
      v18 = sub_1BE0539D4();
      v38 = v44;
      v27 = v45;
      v41 = v46;
    }

    else
    {
      v38 = v18 + 32;
      v41 = (2 * v20) | 1;
    }

    goto LABEL_50;
  }

  if (v27 < v20)
  {
    sub_1BE048C84();
    v42 = v27;
    do
    {
      v43 = v42 + 1;
      sub_1BE053864();
      v42 = v43;
    }

    while (v20 != v43);
    goto LABEL_47;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1BD0FC17C@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v28 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v22 - v6;
  v26 = sub_1BE04F504();
  LOBYTE(v47[0]) = 1;
  sub_1BD0FE128(v59);
  memcpy(v31, v59, sizeof(v31));
  memcpy(v32, v59, sizeof(v32));
  sub_1BD0DE19C(v31, v44, &qword_1EBD391C8);
  sub_1BD0DE53C(v32, &qword_1EBD391C8);
  memcpy(&v30[7], v31, 0x170uLL);
  v24 = LOBYTE(v47[0]);
  v23 = v7;
  sub_1BD0FDA14(v7);
  v25 = sub_1BE04F504();
  LOBYTE(v47[0]) = 1;
  sub_1BD0FE754(v59);
  v39 = v59[6];
  v40 = v59[7];
  v41[0] = v59[8];
  *(v41 + 9) = *(&v59[8] + 9);
  v35 = v59[2];
  v36 = v59[3];
  v37 = v59[4];
  v38 = v59[5];
  v33 = v59[0];
  v34 = v59[1];
  v42[6] = v59[6];
  v42[7] = v59[7];
  v43[0] = v59[8];
  *(v43 + 9) = *(&v59[8] + 9);
  v42[2] = v59[2];
  v42[3] = v59[3];
  v42[4] = v59[4];
  v42[5] = v59[5];
  v42[0] = v59[0];
  v42[1] = v59[1];
  sub_1BD0DE19C(&v33, v44, &qword_1EBD391D0);
  sub_1BD0DE53C(v42, &qword_1EBD391D0);
  *(&v29[6] + 7) = v39;
  *(&v29[7] + 7) = v40;
  *(&v29[8] + 7) = v41[0];
  v29[9] = *(v41 + 9);
  *(&v29[2] + 7) = v35;
  *(&v29[3] + 7) = v36;
  *(&v29[4] + 7) = v37;
  *(&v29[5] + 7) = v38;
  *(v29 + 7) = v33;
  *(&v29[1] + 7) = v34;
  v8 = v47[0];
  v9 = v28;
  sub_1BD0DE19C(v7, v28, &qword_1EBD390F8);
  v10 = v26;
  v44[0] = v26;
  v44[1] = 0;
  v11 = v24;
  LOBYTE(v44[2]) = v24;
  memcpy(&v44[2] + 1, v30, 0x177uLL);
  v12 = v27;
  memcpy(v27, v44, 0x188uLL);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391D8);
  sub_1BD0DE19C(v9, &v12[*(v13 + 48)], &qword_1EBD390F8);
  v14 = &v12[*(v13 + 64)];
  v15 = v25;
  v45 = v25;
  v46[0] = v8;
  *&v46[97] = v29[6];
  *&v46[113] = v29[7];
  *&v46[129] = v29[8];
  *&v46[145] = v29[9];
  *&v46[33] = v29[2];
  *&v46[49] = v29[3];
  *&v46[65] = v29[4];
  *&v46[81] = v29[5];
  *&v46[1] = v29[0];
  *&v46[17] = v29[1];
  v16 = *&v46[128];
  *(v14 + 8) = *&v46[112];
  *(v14 + 9) = v16;
  *(v14 + 10) = *&v46[144];
  v14[176] = v46[160];
  v17 = *&v46[64];
  *(v14 + 4) = *&v46[48];
  *(v14 + 5) = v17;
  v18 = *&v46[96];
  *(v14 + 6) = *&v46[80];
  *(v14 + 7) = v18;
  v19 = *v46;
  *v14 = v45;
  *(v14 + 1) = v19;
  v20 = *&v46[32];
  *(v14 + 2) = *&v46[16];
  *(v14 + 3) = v20;
  sub_1BD0DE19C(v44, v59, &qword_1EBD391E0);
  sub_1BD0DE19C(&v45, v59, &qword_1EBD391E8);
  sub_1BD0DE53C(v23, &qword_1EBD390F8);
  v55 = v29[6];
  v56 = v29[7];
  v57 = v29[8];
  v58 = v29[9];
  v51 = v29[2];
  v52 = v29[3];
  v53 = v29[4];
  v54 = v29[5];
  v49 = v29[0];
  v47[0] = v15;
  v47[1] = 0;
  v48 = v8;
  v50 = v29[1];
  sub_1BD0DE53C(v47, &qword_1EBD391E8);
  sub_1BD0DE53C(v28, &qword_1EBD390F8);
  v59[0] = v10;
  LOBYTE(v59[1]) = v11;
  memcpy(&v59[1] + 1, v30, 0x177uLL);
  return sub_1BD0DE53C(v59, &qword_1EBD391E0);
}

uint64_t sub_1BD0FC6EC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1BE053704();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1BD1DED88(v3, 0);
  sub_1BDA7D908(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BD0FC794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39168);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v38 - v21;
  *v22 = sub_1BE04F7C4();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39170);
  sub_1BD0FC9B8(a1, a2, a3, a4, a5, a6, a7, &v22[*(v23 + 44)]);
  v24 = type metadata accessor for PaymentOfferInstallmentSelectionItemView();
  sub_1BD0FD254(v24, v41);
  v25 = v41[0];
  v26 = v41[1];
  v27 = v41[2];
  v28 = v41[3];
  v29 = v41[4];
  v38 = v41[5];
  v39 = v19;
  v30 = v41[6];
  sub_1BD0DE19C(v22, v19, &qword_1EBD39168);
  v31 = v19;
  v32 = v40;
  sub_1BD0DE19C(v31, v40, &qword_1EBD39168);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39178);
  v34 = v32 + *(v33 + 48);
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = (v32 + *(v33 + 64));
  *v35 = v25;
  v35[1] = v26;
  v35[2] = v27;
  v35[3] = v28;
  v36 = v38;
  v35[4] = v29;
  v35[5] = v36;
  v35[6] = v30;
  sub_1BD0FEF38(v25, v26, v27);
  sub_1BD0DE53C(v22, &qword_1EBD39168);
  sub_1BD0FEFA8(v25, v26, v27);
  return sub_1BD0DE53C(v39, &qword_1EBD39168);
}

uint64_t sub_1BD0FC9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22[1] = a1;
  v23 = a5;
  v24 = a8;
  v14 = type metadata accessor for PaymentOfferInstallmentSelectionItemView();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v22 - v17;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  swift_getKeyPath();
  (*(v15 + 16))(v18, v23, v14);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  (*(v15 + 32))(v20 + v19, v18, v14);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39180);
  sub_1BD0DE4F4(&qword_1EBD390C8, &qword_1EBD390B8);
  sub_1BD0FECB8();
  sub_1BD0FF1FC(&qword_1EBD39188, &qword_1EBD39180, &unk_1BE0B8208, sub_1BD0FF280);
  return sub_1BE0519C4();
}

__n128 sub_1BD0FCBFC@<Q0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 type];
  if (v4)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v30[17] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39150);
        sub_1BD0FF368(&qword_1EBD391A0, &qword_1EBD39150, &unk_1BE0B8118, sub_1BD0FF338);
        sub_1BE04F9A4();
        v25 = v15;
        *v26 = v16;
        *&v26[16] = v17;
        v23 = v13;
        v24 = v14;
        LOBYTE(v18) = 0;
        v26[18] = 0;
      }

      else
      {
        LOBYTE(v27) = 1;
        sub_1BE04F9A4();
        LOBYTE(v18) = 1;
        LOBYTE(v23) = v13;
        v26[18] = 1;
      }

      goto LABEL_12;
    }

    v5 = [v3 leadingText];
    if (!v5)
    {
      v18 = 0uLL;
      v19.n128_u64[0] = 0;
      v19.n128_u64[1] = 1;
      v20 = 0u;
      v21 = 0u;
      v22 = 0;
LABEL_18:
      v29 = v20;
      *v30 = v21;
      v30[16] = v22;
      v27 = v18;
      v28 = v19;
      v30[17] = 1;
      sub_1BD0DE19C(&v18, &v23, &qword_1EBD39150);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39150);
      sub_1BD0FF368(&qword_1EBD391A0, &qword_1EBD39150, &unk_1BE0B8118, sub_1BD0FF338);
      sub_1BE04F9A4();
      v29 = v15;
      *v30 = v16;
      *&v30[16] = v17;
      v27 = v13;
      v28 = v14;
      v30[18] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39198);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
      sub_1BD0FF280();
      sub_1BD0FEEBC();
      sub_1BE04F9A4();
      sub_1BD0DE53C(&v18, &qword_1EBD39150);
      v29 = v25;
      *v30 = *v26;
      *&v30[15] = *&v26[15];
      v27 = v23;
      v28 = v24;
      goto LABEL_19;
    }

    v6 = v5;
    v7 = [v5 text];
    sub_1BE052434();
    v9 = v8;

    sub_1BE051464();
    v10 = [v6 textColor];
    if (v10 == 1)
    {
      sub_1BE051464();
    }

    else if (v10 == 2)
    {
      sub_1BE051494();
    }

    else
    {
      if (v10 != 3)
      {
LABEL_17:
        sub_1BD47C8E4();
        [v6 isBold];
        type metadata accessor for PaymentOfferInstallmentSelectionItemView();
        sub_1BD0FD098(v9, &v27);

        v20 = v29;
        v21 = *v30;
        v22 = v30[16];
        v18 = v27;
        v19 = v28;
        goto LABEL_18;
      }

      sub_1BE0511D4();
    }

    goto LABEL_17;
  }

  LOBYTE(v27) = 0;
  sub_1BE04F9A4();
  LOBYTE(v18) = 1;
  LOBYTE(v23) = v13;
  v26[18] = 1;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
  sub_1BD0FF280();
  sub_1BD0FEEBC();
  sub_1BE04F9A4();
LABEL_19:
  v11 = *v30;
  *(a2 + 32) = v29;
  *(a2 + 48) = v11;
  *(a2 + 63) = *&v30[15];
  result = v28;
  *a2 = v27;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BD0FD098@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v3 = sub_1BE0506C4();
    v5 = v4;
    v7 = v6;
    v8 = sub_1BE050564();
    v10 = v9;
    v12 = v11;
    sub_1BD0DDF10(v3, v5, v7 & 1);

    v13 = sub_1BE0505F4();
    v15 = v14;
    v17 = v16;
    sub_1BD0DDF10(v8, v10, v12 & 1);

    v18 = sub_1BE0505E4();
    v20 = v19;
    LOBYTE(v10) = v21;
    v23 = v22;
    sub_1BD0DDF10(v13, v15, v17 & 1);

    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
    v26 = 1;
    v27 = v10 & 1;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v23 = 0;
    KeyPath = 0;
    result = 0;
    v26 = 0;
    v27 = 0;
  }

  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v27;
  *(a2 + 24) = v23;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = v26;
  return result;
}

uint64_t sub_1BD0FD254@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(result + 40));
  if (v4)
  {
    if (*(v2 + *(result + 44)) == 1)
    {
      sub_1BE0511D4();
    }

    else
    {
      sub_1BE051244();
    }

    v5 = sub_1BE051574();
    KeyPath = swift_getKeyPath();
    sub_1BE048964();
    v7 = sub_1BE04E5F4();
    v9 = sub_1BE0503E4();
    v8 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();

    v4 = 1;
  }

  else
  {
    v5 = 0;
    KeyPath = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = 0;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = KeyPath;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return result;
}

uint64_t sub_1BD0FD3B8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39130);
  MEMORY[0x1EEE9AC00](v27, v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39138);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390E8);
  MEMORY[0x1EEE9AC00](v28, v10);
  v12 = &v24 - v11;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8);
  MEMORY[0x1EEE9AC00](v26, v13);
  v15 = &v24 - v14;
  v16 = *a1;
  v17 = [v16 type];
  if (v17)
  {
    if (v17 == 1)
    {
      v25 = sub_1BE04F504();
      v31 = 1;
      sub_1BD0FDBC8(v16, &v43);
      v38 = v44[5];
      v39 = v44[6];
      v40[0] = v44[7];
      *(v40 + 9) = *(&v44[7] + 9);
      v34 = v44[1];
      v35 = v44[2];
      v36 = v44[3];
      v37 = v44[4];
      v32 = v43;
      v33 = v44[0];
      v41[6] = v44[5];
      v41[7] = v44[6];
      v42[0] = v44[7];
      *(v42 + 9) = *(&v44[7] + 9);
      v41[2] = v44[1];
      v41[3] = v44[2];
      v41[4] = v44[3];
      v41[5] = v44[4];
      v41[0] = v43;
      v41[1] = v44[0];
      sub_1BD0DE19C(&v32, v30, &qword_1EBD39140);
      sub_1BD0DE53C(v41, &qword_1EBD39140);
      *&v30[55] = v35;
      *&v30[39] = v34;
      *&v30[103] = v38;
      *&v30[119] = v39;
      *&v30[135] = v40[0];
      *&v30[144] = *(v40 + 9);
      *&v30[71] = v36;
      *&v30[87] = v37;
      *&v30[7] = v32;
      *&v30[23] = v33;
      v43 = v25;
      LOBYTE(v44[0]) = v31;
      *(&v44[7] + 1) = *&v30[112];
      *(&v44[6] + 1) = *&v30[96];
      *(&v44[8] + 1) = *&v30[128];
      *(&v44[9] + 1) = *(v40 + 9);
      *(&v44[2] + 1) = *&v30[32];
      *(&v44[3] + 1) = *&v30[48];
      *(&v44[4] + 1) = *&v30[64];
      *(&v44[5] + 1) = *&v30[80];
      *(v44 + 1) = *v30;
      *(&v44[1] + 1) = *&v30[16];
      v19 = v44[8];
      *(v9 + 8) = v44[7];
      *(v9 + 9) = v19;
      *(v9 + 10) = v44[9];
      v9[176] = v44[10];
      v20 = v44[4];
      *(v9 + 4) = v44[3];
      *(v9 + 5) = v20;
      v21 = v44[6];
      *(v9 + 6) = v44[5];
      *(v9 + 7) = v21;
      v22 = v44[0];
      *v9 = v43;
      *(v9 + 1) = v22;
      v23 = v44[2];
      *(v9 + 2) = v44[1];
      *(v9 + 3) = v23;
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE19C(&v43, v30, &qword_1EBD39110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39110);
      sub_1BD0FEDD8();
      sub_1BD0DE4F4(&qword_1EBD39108, &qword_1EBD39110);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v12, v5, &qword_1EBD390E8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
      sub_1BD0FED20();
      sub_1BD0FEEBC();
      sub_1BE04F9A4();
      sub_1BD0DE53C(&v43, &qword_1EBD39110);
      return sub_1BD0DE53C(v12, &qword_1EBD390E8);
    }

    if (v17 == 2)
    {
      type metadata accessor for PaymentOfferInstallmentSelectionItemView();
      sub_1BD0FDA14(v15);
      sub_1BD0DE19C(v15, v9, &qword_1EBD390F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39110);
      sub_1BD0FEDD8();
      sub_1BD0DE4F4(&qword_1EBD39108, &qword_1EBD39110);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v12, v5, &qword_1EBD390E8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
      sub_1BD0FED20();
      sub_1BD0FEEBC();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v12, &qword_1EBD390E8);
      return sub_1BD0DE53C(v15, &qword_1EBD390F8);
    }

    v30[0] = 1;
  }

  else
  {
    v30[0] = 0;
  }

  sub_1BE04F9A4();
  *v5 = v43;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
  sub_1BD0FED20();
  sub_1BD0FEEBC();
  return sub_1BE04F9A4();
}

double sub_1BD0FDA14@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051994();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE051984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v8 = sub_1BE0501E4();
  *(inited + 32) = v8;
  v9 = sub_1BE0501F4();
  *(inited + 33) = v9;
  v10 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v8)
  {
    v10 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v9)
  {
    v10 = sub_1BE050214();
  }

  (*(v3 + 32))(a1, v6, v2);
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8) + 36);
  *v11 = v10;
  result = 0.0;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 1;
  return result;
}

uint64_t sub_1BD0FDBC8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [a1 leadingText];
  v4 = [a1 trailingText];
  v29 = v4;
  if (!v3)
  {
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v37 = 0;
    v10 = 1;
    goto LABEL_11;
  }

  v5 = v3;
  v6 = [v5 text];
  sub_1BE052434();
  v8 = v7;

  sub_1BE051464();
  v9 = [v5 textColor];
  if (v9 == 3)
  {
    sub_1BE0511D4();
    goto LABEL_9;
  }

  if (v9 == 2)
  {
    sub_1BE051494();
    goto LABEL_9;
  }

  if (v9 == 1)
  {
    sub_1BE051464();
LABEL_9:
  }

  sub_1BD47C8E4();
  [v5 isBold];
  type metadata accessor for PaymentOfferInstallmentSelectionItemView();
  sub_1BD0FD098(v8, &v54);

  v35 = *(&v54 + 1);
  v36 = v54;
  v10 = *(&v55 + 1);
  v33 = v56;
  v34 = v55;
  v31 = v57;
  v32 = *(&v56 + 1);
  v30 = *(&v57 + 1);
  v37 = v58;
  v4 = v29;
LABEL_11:
  if (v4)
  {
    v11 = v4;
    v12 = [v11 text];
    sub_1BE052434();
    v14 = v13;

    sub_1BE051464();
    v15 = [v11 textColor];
    if (v15 == 3)
    {
      sub_1BE0511D4();
    }

    else if (v15 == 2)
    {
      sub_1BE051494();
    }

    else
    {
      if (v15 != 1)
      {
LABEL_20:
        sub_1BD47C8E4();
        [v11 isBold];
        type metadata accessor for PaymentOfferInstallmentSelectionItemView();
        sub_1BD0FD098(v14, &v54);

        v45 = v56;
        v46 = v57;
        v47 = v58;
        v43 = v54;
        v44 = v55;
        v64 = v57;
        v63 = v56;
        v62 = v55;
        v65 = v58;
        v61 = v54;
        sub_1BD0DE19C(&v61, &v48, &qword_1EBD39160);

        v28 = v61;
        v17 = *(&v62 + 1);
        v25 = v62;
        v26 = *(&v61 + 1);
        v23 = *(&v63 + 1);
        v24 = v63;
        v21 = *(&v64 + 1);
        v22 = v64;
        v20 = v65;
        v50 = v45;
        v51 = v46;
        LOBYTE(v52) = v47;
        v48 = v43;
        v49 = v44;
        sub_1BD0DE53C(&v48, &qword_1EBD39160);
        v16 = (v3 != 0) | ((v3 == 0) << 8);
        goto LABEL_21;
      }

      sub_1BE051464();
    }

    goto LABEL_20;
  }

  v28 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v16 = 0;
  v17 = 1;
LABEL_21:
  v19 = v16;
  *&v43 = v36;
  *(&v43 + 1) = v35;
  *&v44 = v34;
  *(&v44 + 1) = v10;
  *&v45 = v33;
  *(&v45 + 1) = v32;
  *&v46 = v31;
  *(&v46 + 1) = v30;
  v47 = v37;
  v42[0] = v37;
  v40 = v45;
  v41 = v46;
  v38 = v43;
  v39 = v44;
  *&v48 = 0;
  *(&v48 + 1) = v16;
  *&v49 = v28;
  *(&v49 + 1) = v26;
  *&v50 = v25;
  *(&v50 + 1) = v17;
  *&v51 = v24;
  *(&v51 + 1) = v23;
  *&v52 = v22;
  *(&v52 + 1) = v21;
  v53 = v20;
  sub_1BD0DE19C(&v43, &v54, &qword_1EBD39150);
  sub_1BD0DE19C(&v48, &v54, &qword_1EBD39158);

  *&v42[8] = v48;
  *&v42[24] = v49;
  *&v42[40] = v50;
  *&v42[56] = v51;
  *&v42[72] = v52;
  v42[88] = v53;
  a2[2] = v40;
  a2[3] = v41;
  *a2 = v38;
  a2[1] = v39;
  a2[4] = *v42;
  a2[5] = *&v42[16];
  *(a2 + 137) = *&v42[73];
  a2[7] = *&v42[48];
  a2[8] = *&v42[64];
  a2[6] = *&v42[32];
  *&v54 = 0;
  *(&v54 + 1) = v19;
  *&v55 = v28;
  *(&v55 + 1) = v26;
  *&v56 = v25;
  *(&v56 + 1) = v17;
  *&v57 = v24;
  *(&v57 + 1) = v23;
  v58 = v22;
  v59 = v21;
  v60 = v20;
  sub_1BD0DE53C(&v54, &qword_1EBD39158);
  *&v61 = v36;
  *(&v61 + 1) = v35;
  *&v62 = v34;
  *(&v62 + 1) = v10;
  *&v63 = v33;
  *(&v63 + 1) = v32;
  *&v64 = v31;
  *(&v64 + 1) = v30;
  v65 = v37;
  return sub_1BD0DE53C(&v61, &qword_1EBD39150);
}

uint64_t sub_1BD0FE128@<X0>(void *a1@<X8>)
{
  v12 = sub_1BE04F7C4();
  LOBYTE(v16[0]) = 0;
  sub_1BD0FE328(__src);
  memcpy(__dst, __src, 0x119uLL);
  memcpy(v15, __src, 0x119uLL);
  sub_1BD0DE19C(__dst, v18, &qword_1EBD391F0);
  sub_1BD0DE53C(v15, &qword_1EBD391F0);
  memcpy(&v13[7], __dst, 0x119uLL);
  v2 = v16[0];
  v3 = type metadata accessor for PaymentOfferInstallmentSelectionItemView();
  sub_1BD0FD254(v3, __src);
  v4 = __src[0];
  v5 = __src[1];
  v6 = __src[2];
  v7 = __src[3];
  v8 = __src[4];
  v9 = __src[5];
  v10 = __src[6];
  v16[0] = v12;
  v16[1] = 0;
  LOBYTE(v16[2]) = v2;
  memcpy(&v16[2] + 1, v13, 0x120uLL);
  memcpy(__src, v16, 0x131uLL);
  memcpy(a1, __src, 0x138uLL);
  a1[39] = v4;
  a1[40] = v5;
  a1[41] = v6;
  a1[42] = v7;
  a1[43] = v8;
  a1[44] = v9;
  a1[45] = v10;
  sub_1BD0DE19C(v16, v18, &qword_1EBD391F8);
  sub_1BD0FEF38(v4, v5, v6);
  sub_1BD0FEFA8(v4, v5, v6);
  v18[0] = v12;
  v18[1] = 0;
  v19 = v2;
  memcpy(v20, v13, sizeof(v20));
  return sub_1BD0DE53C(v18, &qword_1EBD391F8);
}

uint64_t sub_1BD0FE328@<X0>(void *a1@<X8>)
{
  object = PKPaymentOfferInstallmentAssessmentOffer.installmentCountString(useUpdatedText:)(0)._object;
  sub_1BE051494();
  sub_1BE050414();
  type metadata accessor for PaymentOfferInstallmentSelectionItemView();
  sub_1BD0FD098(object, &v45);

  v18 = v47;
  v19 = v48;
  v20 = v49;
  v16 = v45;
  v17 = v46;
  PKPaymentOfferInstallmentAssessmentOffer.installmentAmountPeriodString.getter();
  v4 = v3;
  sub_1BE051464();
  sub_1BE050324();
  sub_1BD0FD098(v4, &v45);

  v23 = v47;
  v24 = v48;
  v25 = v49;
  v21 = v45;
  v22 = v46;
  PKPaymentOfferInstallmentAssessmentOffer.downpaymentAmountString.getter();
  v6 = v5;
  sub_1BE051494();
  sub_1BE050414();
  sub_1BD0FD098(v6, &v45);

  v28 = v47;
  v29 = v48;
  v30 = v49;
  v26 = v45;
  v27 = v46;
  PKPaymentOfferInstallmentAssessmentOffer.feesOfferSelectionString.getter();
  v8 = v7;
  sub_1BE051494();
  sub_1BE050414();
  sub_1BD0FD098(v8, &v45);

  v13 = v47;
  v14 = v48;
  v11 = v45;
  v12 = v46;
  v31[2] = v18;
  v31[3] = v19;
  v31[0] = v16;
  v31[1] = v17;
  v10[2] = v18;
  v10[3] = v19;
  v10[0] = v16;
  v10[1] = v17;
  v33[2] = v23;
  v33[3] = v24;
  v33[0] = v21;
  v33[1] = v22;
  *(&v10[4] + 8) = v21;
  *(&v10[7] + 8) = v24;
  *(&v10[6] + 8) = v23;
  *(&v10[5] + 8) = v22;
  v35[2] = v28;
  v35[3] = v29;
  v35[0] = v26;
  v35[1] = v27;
  v10[11] = v28;
  v10[12] = v29;
  v10[9] = v26;
  v10[10] = v27;
  v37[2] = v47;
  v37[3] = v48;
  v37[0] = v45;
  v37[1] = v46;
  *(&v10[16] + 8) = v48;
  v15 = v49;
  v32 = v20;
  LOBYTE(v10[4]) = v20;
  v34 = v25;
  BYTE8(v10[8]) = v25;
  v36 = v30;
  LOBYTE(v10[13]) = v30;
  v38 = v49;
  *(&v10[13] + 8) = v45;
  BYTE8(v10[17]) = v49;
  *(&v10[15] + 8) = v47;
  *(&v10[14] + 8) = v46;
  memcpy(a1, v10, 0x119uLL);
  v39[2] = v13;
  v39[3] = v14;
  v40 = v15;
  v39[0] = v11;
  v39[1] = v12;
  sub_1BD0DE19C(v31, &v45, &qword_1EBD39160);
  sub_1BD0DE19C(v33, &v45, &qword_1EBD39160);
  sub_1BD0DE19C(v35, &v45, &qword_1EBD39160);
  sub_1BD0DE19C(v37, &v45, &qword_1EBD39160);
  sub_1BD0DE53C(v39, &qword_1EBD39160);
  v41[2] = v28;
  v41[3] = v29;
  v42 = v30;
  v41[0] = v26;
  v41[1] = v27;
  sub_1BD0DE53C(v41, &qword_1EBD39160);
  v43[2] = v23;
  v43[3] = v24;
  v44 = v25;
  v43[0] = v21;
  v43[1] = v22;
  sub_1BD0DE53C(v43, &qword_1EBD39160);
  v47 = v18;
  v48 = v19;
  v49 = v20;
  v45 = v16;
  v46 = v17;
  return sub_1BD0DE53C(&v45, &qword_1EBD39160);
}

uint64_t sub_1BD0FE754@<X0>(uint64_t a1@<X8>)
{
  PKPaymentOfferInstallmentAssessmentOffer.interestString.getter();
  v3 = v2;
  sub_1BE051494();
  sub_1BE050414();
  type metadata accessor for PaymentOfferInstallmentSelectionItemView();
  sub_1BD0FD098(v3, &v22);

  v15 = v24;
  v16 = v25;
  v17 = v26;
  v13 = v22;
  v14 = v23;
  PKPaymentOfferInstallmentAssessmentOffer.totalCostString.getter();
  v5 = v4;
  sub_1BE051494();
  sub_1BE050414();
  sub_1BD0FD098(v5, &v22);

  v10 = v24;
  v11 = v25;
  v8 = v22;
  v9 = v23;
  v18[2] = v15;
  v18[3] = v16;
  v18[0] = v13;
  v18[1] = v14;
  v24 = v15;
  v25 = v16;
  v22 = v13;
  v23 = v14;
  v20[2] = v10;
  v20[3] = v11;
  v20[0] = v8;
  v20[1] = v9;
  *&v7[7] = v8;
  *&v7[55] = v11;
  *&v7[39] = v10;
  *&v7[23] = v9;
  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 81) = *v7;
  *(a1 + 129) = *&v7[48];
  *(a1 + 113) = *&v7[32];
  *(a1 + 97) = *&v7[16];
  v12 = v26;
  v19 = v17;
  LOBYTE(v26) = v17;
  v21 = v12;
  v7[71] = v12;
  *(a1 + 64) = v26;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 145) = *&v7[64];
  v28 = v12;
  v27[2] = v10;
  v27[3] = v11;
  v27[0] = v8;
  v27[1] = v9;
  sub_1BD0DE19C(v18, v29, &qword_1EBD39160);
  sub_1BD0DE19C(v20, v29, &qword_1EBD39160);
  sub_1BD0DE53C(v27, &qword_1EBD39160);
  v29[2] = v15;
  v29[3] = v16;
  v30 = v17;
  v29[0] = v13;
  v29[1] = v14;
  return sub_1BD0DE53C(v29, &qword_1EBD39160);
}

unint64_t sub_1BD0FE9EC()
{
  result = qword_1EBD39030;
  if (!qword_1EBD39030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39028);
    sub_1BD0FEA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39030);
  }

  return result;
}

unint64_t sub_1BD0FEA78()
{
  result = qword_1EBD39038;
  if (!qword_1EBD39038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39040);
    sub_1BD0FEB04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39038);
  }

  return result;
}

unint64_t sub_1BD0FEB04()
{
  result = qword_1EBD39048;
  if (!qword_1EBD39048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39050);
    sub_1BD0DE4F4(&qword_1EBD39058, &qword_1EBD39060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39048);
  }

  return result;
}

unint64_t sub_1BD0FEBBC()
{
  result = qword_1EBD3E020;
  if (!qword_1EBD3E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E020);
  }

  return result;
}

uint64_t sub_1BD0FEC1C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PaymentOfferInstallmentSelectionItemView();

  return sub_1BD0FD3B8(a1, a2);
}

unint64_t sub_1BD0FECB8()
{
  result = qword_1EBD390D0;
  if (!qword_1EBD390D0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD390A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD390D0);
  }

  return result;
}

unint64_t sub_1BD0FED20()
{
  result = qword_1EBD390E0;
  if (!qword_1EBD390E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD390E8);
    sub_1BD0FEDD8();
    sub_1BD0DE4F4(&qword_1EBD39108, &qword_1EBD39110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD390E0);
  }

  return result;
}

unint64_t sub_1BD0FEDD8()
{
  result = qword_1EBD390F0;
  if (!qword_1EBD390F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD390F8);
    sub_1BD0FEE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD390F0);
  }

  return result;
}

unint64_t sub_1BD0FEE64()
{
  result = qword_1EBD39100;
  if (!qword_1EBD39100)
  {
    sub_1BE051994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39100);
  }

  return result;
}

unint64_t sub_1BD0FEEBC()
{
  result = qword_1EBD39118;
  if (!qword_1EBD39118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39118);
  }

  return result;
}

uint64_t sub_1BD0FEF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD0FEFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PaymentOfferInstallmentSelectionItemView();
  v3 = (v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)));

  v4 = *(v2 + 36);
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  if (*(v3 + *(v2 + 40)))
  {
  }

  return swift_deallocObject();
}

double sub_1BD0FF160@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PaymentOfferInstallmentSelectionItemView();

  *&result = sub_1BD0FCBFC(a1, a2).n128_u64[0];
  return result;
}

uint64_t sub_1BD0FF1FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD0FEEBC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD0FF280()
{
  result = qword_1EBD39190;
  if (!qword_1EBD39190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39198);
    sub_1BD0FF368(&qword_1EBD391A0, &qword_1EBD39150, &unk_1BE0B8118, sub_1BD0FF338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39190);
  }

  return result;
}

uint64_t sub_1BD0FF368(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD0FF3E4()
{
  result = qword_1EBD391B0;
  if (!qword_1EBD391B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD391B8);
    sub_1BD0FF49C();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD391B0);
  }

  return result;
}

unint64_t sub_1BD0FF49C()
{
  result = qword_1EBD51270;
  if (!qword_1EBD51270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD391C0);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51270);
  }

  return result;
}

uint64_t sub_1BD0FF6B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_serviceDelegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1BD0FF718()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39238);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39240);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v18 - v9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39248);
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v12);
  v14 = &v18 - v13;
  sub_1BE04CD84();
  sub_1BD0FFF8C();
  sub_1BD0DE4F4(&unk_1EBD36938, &qword_1EBD39238);
  sub_1BE04D8F4();
  (*(v2 + 8))(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250);
  sub_1BE04D7C4();
  (*(v7 + 8))(v10, v6);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine), *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine + 24));
  sub_1BE04CC54();
  v15 = sub_1BE04CB94();
  sub_1BD0DE4F4(&qword_1EBD369A8, &qword_1EBD39248);
  v16 = v19;
  sub_1BE04D964();
  (*(v11 + 8))(v14, v16);
  v15(v20, 0);
}

id sub_1BD0FFA90@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_1BD0FFA9C(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 displayIdentity];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isMainDisplay];

    *a2 = v5 ^ 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD0FFB4C(uint64_t (*a1)(uint64_t, void))
{
  v3 = (v1 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine);
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine + 24);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine + 32);
  __swift_project_boxed_opaque_existential_1(v3, v5);
  return a1(v5, *(v4 + 8));
}

void sub_1BD0FFBB8(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = &a1[OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine];
  v6 = *(v5 + 3);
  v7 = *(v5 + 4);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 8);
  v9 = a1;
  a3(v6, v8);
}

uint64_t sub_1BD0FFC44()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine), v1);
  return (*(v2 + 32))(v1, v2);
}

id PaymentRequestViewInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaymentRequestViewInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentRequestViewInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD0FFF8C()
{
  result = qword_1EBD35DA0;
  if (!qword_1EBD35DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD35DA0);
  }

  return result;
}

uint64_t sub_1BD0FFFD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD041C28;

  return sub_1BD102650();
}

uint64_t sub_1BD10007C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BD0F985C;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

uint64_t sub_1BD10016C()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAADF8);
  __swift_project_value_buffer(v9, qword_1EBDAADF8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}