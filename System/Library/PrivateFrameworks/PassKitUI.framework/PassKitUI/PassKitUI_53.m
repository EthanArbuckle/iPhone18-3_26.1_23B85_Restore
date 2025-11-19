uint64_t sub_1BD5CC8A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BankAccountSheet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C518);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C520);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v19 = *(*v2 + qword_1EBDAB050);
  if (v19)
  {
    v41 = &v38 - v17;
    v42 = a1;
    v43 = v16;
    v44 = v15;
    sub_1BD5CF890(v2, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankAccountSheet);
    v20 = *(v5 + 80);
    v40 = v9;
    v21 = swift_allocObject();
    v39 = type metadata accessor for BankAccountSheet;
    sub_1BD5CF0B8(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + ((v20 + 16) & ~v20), type metadata accessor for BankAccountSheet);
    v38 = v19;
    sub_1BE051704();
    v22 = v2 + *(v4 + 48);
    v23 = *v22;
    v24 = *(v22 + 1);
    v48 = v23;
    v49 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516C4();
    v25 = v45;
    v26 = v46;
    v27 = v47;
    sub_1BD5CF890(v2, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankAccountSheet);
    v28 = swift_allocObject();
    v30 = v38;
    v29 = v39;
    *(v28 + 16) = v38;
    sub_1BD5CF0B8(v8, v28 + ((v20 + 24) & ~v20), v29);
    KeyPath = swift_getKeyPath();
    v32 = &v12[*(v40 + 36)];
    *v32 = v25;
    *(v32 + 1) = v26;
    v32[16] = v27;
    *(v32 + 3) = sub_1BD5CE8A8;
    *(v32 + 4) = v28;
    *(v32 + 5) = KeyPath;
    v32[48] = 0;
    sub_1BE052434();
    sub_1BD5CE91C();
    v33 = v30;
    v34 = v41;
    sub_1BE050DE4();

    sub_1BD0DE53C(v12, &qword_1EBD4C518);
    v35 = v42;
    sub_1BD0DE204(v34, v42, &qword_1EBD4C520);
    return (*(v43 + 56))(v35, 0, 1, v44);
  }

  else
  {
    v37 = *(v16 + 56);

    return v37(a1, 1, 1, v18);
  }
}

id sub_1BD5CCCD0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C540);
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  if ((PKOslo2024UIUpdatesEnabled() & 1) == 0)
  {
    v12 = *(v1 + 80);
    if (v12 != 1)
    {
      v13 = *(v1 + 88);
      v14 = *(v1 + 96);
      v15 = *(v1 + 104);
      if (v15)
      {
        v16 = *(v1 + 112);
        if (*(v15 + 16))
        {
          v17 = *(v1 + 88);
          v18 = *MEMORY[0x1E69B8068];
          v19 = *(v4 + 104);
          LODWORD(v33) = v16;
          v19(v7, v18, v3);
          v32 = v17;
          sub_1BD3EFC88(v12, v17);
          sub_1BE048C84();
          result = PKPassKitBundle();
          v33 = v14;
          if (result)
          {
            v21 = result;
            v31 = sub_1BE04B6F4();
            v23 = v22;

            (*(v4 + 8))(v7, v3);
            v35 = v31;
            v36 = v23;
            sub_1BD0DDEBC();
            v35 = sub_1BE0506C4();
            v36 = v24;
            v37 = v25 & 1;
            v38 = v26;
            MEMORY[0x1EEE9AC00](v35, v24);
            *(&v31 - 2) = v15;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C548);
            sub_1BD5CEA78();
            sub_1BE051A24();
            sub_1BD17195C(v12, v32);
            swift_bridgeObjectRelease_n();

            (*(v34 + 32))(a1, v11, v8);
            return (*(v34 + 56))(a1, 0, 1, v8);
          }

          else
          {
            __break(1u);
          }

          return result;
        }

        v29 = *(v1 + 88);
        sub_1BD3EFC88(*(v1 + 80), v29);
        sub_1BD17195C(v12, v29);
      }

      else
      {
        v27 = *(v1 + 80);
        v28 = *(v1 + 88);
        sub_1BD3EFCD8(v27, v13);
        sub_1BE048C84();
        sub_1BD17195C(v12, v28);
      }
    }
  }

  v30 = *(v34 + 56);

  return v30(a1, 1, 1, v8);
}

uint64_t sub_1BD5CD0B8(char a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BD026000, v9, v10, "Toggled peer payment", v11, 2u);
    MEMORY[0x1BFB45F20](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return (*(a2 + 40))(a1 & 1);
}

uint64_t sub_1BD5CD20C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v57 = a4;
  v58 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5A0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v50 - v7);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4F0);
  MEMORY[0x1EEE9AC00](v54, v9);
  v52 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5A8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v56 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v55 = &v50 - v16;
  v17 = type metadata accessor for BankAccountSheet();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v20);
  v21 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5B0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v50 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5B8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v53 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v50 - v32;
  v34 = *(a1 + 2);
  v63[0] = v34;
  if (v34 && *(v34 + 16))
  {
    v59 = v34;
    sub_1BD5CF890(v58, &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankAccountSheet);
    v62 = *a1;
    v61 = *(a1 + 3);
    v35 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v50 = v5;
    v36 = (v19 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    sub_1BD5CF0B8(v21, v37 + v35, type metadata accessor for BankAccountSheet);
    v38 = v37 + v36;
    v39 = a1[1];
    *v38 = *a1;
    *(v38 + 16) = v39;
    *(v38 + 32) = *(a1 + 32);
    sub_1BD0DE19C(v63, v60, &unk_1EBD45520);
    sub_1BD0DE19C(v63, v60, &unk_1EBD45520);
    sub_1BD0DE19C(&v62, v60, &qword_1EBD45518);
    sub_1BD0DE19C(&v61, v60, &unk_1EBD45520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C570);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5F0);
    sub_1BD0DE4F4(&qword_1EBD4C578, &qword_1EBD4C570);
    sub_1BD5CEEA0();
    sub_1BD5CEC08();
    sub_1BE0519D4();
    (*(v23 + 32))(v33, v26, v22);
    (*(v23 + 56))(v33, 0, 1, v22);
  }

  else
  {
    (*(v23 + 56))(&v50 - v32, 1, 1, v22);
  }

  v40 = PKOslo2024UIUpdatesEnabled();
  v41 = v55;
  if (v40)
  {
    sub_1BD5CDBF8(v51, v60);
    v42 = v60[1];
    v43 = v60[2];
    *v8 = v60[0];
    v8[1] = v42;
    v8[2] = v43;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5C0);
    sub_1BD5CED24(&qword_1EBD4C5C8, &qword_1EBD4C4F0, &unk_1BE0E6240, sub_1BD5CEC68);
    sub_1BD5CED24(&qword_1EBD4C5D8, &qword_1EBD4C5C0, &unk_1BE0E6318, sub_1BD5CEDA0);
    sub_1BE04F9A4();
  }

  else
  {
    v44 = v52;
    sub_1BD5CC8A4(v52);
    sub_1BD0DE19C(v44, v8, &qword_1EBD4C4F0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5C0);
    sub_1BD5CED24(&qword_1EBD4C5C8, &qword_1EBD4C4F0, &unk_1BE0E6240, sub_1BD5CEC68);
    sub_1BD5CED24(&qword_1EBD4C5D8, &qword_1EBD4C5C0, &unk_1BE0E6318, sub_1BD5CEDA0);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v44, &qword_1EBD4C4F0);
  }

  v45 = v53;
  sub_1BD0DE19C(v33, v53, &qword_1EBD4C5B8);
  v46 = v56;
  sub_1BD0DE19C(v41, v56, &qword_1EBD4C5A8);
  v47 = v57;
  sub_1BD0DE19C(v45, v57, &qword_1EBD4C5B8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5E8);
  sub_1BD0DE19C(v46, v47 + *(v48 + 48), &qword_1EBD4C5A8);
  sub_1BD0DE53C(v41, &qword_1EBD4C5A8);
  sub_1BD0DE53C(v33, &qword_1EBD4C5B8);
  sub_1BD0DE53C(v46, &qword_1EBD4C5A8);
  return sub_1BD0DE53C(v45, &qword_1EBD4C5B8);
}

__n128 sub_1BD5CD994@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BankAccountSheet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v13 = *a1;
  v12 = *(a1 + 8);
  sub_1BD5CF890(a2, &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for BankAccountSheet);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  sub_1BD5CF0B8(&v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for BankAccountSheet);
  v16 = (v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v13;
  v16[1] = v12;
  v26 = v13;
  v27 = v12;
  v28 = a3;
  sub_1BD5CEBB4();
  v17 = v13;
  v18 = v12;
  sub_1BE051704();
  v19 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5F0) + 36));
  __asm { FMOV            V0.2D, #16.0 }

  *v19 = result;
  v19[1] = result;
  v19[2].n128_u8[0] = 0;
  return result;
}

id sub_1BD5CDB50@<X0>(id a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v11 = a1;
  if (*a3)
  {
    v7 = *(a3 + 8);
    sub_1BD3EFCD8(v6, v7);
    v8 = sub_1BD41F4F4(v11, a2, v6, v7);

    a1 = v11;
  }

  else
  {
    v8 = 0;
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8 & 1;
  v9 = a2;

  return v11;
}

id sub_1BD5CDBF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for BankAccountSheet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKOslo2024UIUpdatesEnabled();
  if (!result || (v15 = *(v2 + 72), !*(v15 + 16)))
  {
    v17 = 0;
    v19 = 0;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
LABEL_9:
    *a2 = v17;
    a2[1] = v19;
    a2[2] = v23;
    a2[3] = v25;
    a2[4] = v26;
    a2[5] = v27;
    return result;
  }

  v32 = v6;
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  (*(v10 + 104))(v13, *MEMORY[0x1E69B8068], v9);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v10 + 8))(v13, v9);
    v20 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v22 = [v20 stringFromNumber_];

    if (v22)
    {
      v23 = sub_1BE052434();
      v25 = v24;
    }

    else
    {

      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v28 = v33;
    sub_1BD5CF890(v2, v33, type metadata accessor for BankAccountSheet);
    v29 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v34;
    sub_1BD5CF0B8(v28, v27 + v29, type metadata accessor for BankAccountSheet);
    v30 = (v27 + ((v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v30 = v17;
    v30[1] = v19;
    sub_1BE048964();
    result = sub_1BE048C84();
    v26 = sub_1BD5CF024;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD5CDF30()
{
  swift_getKeyPath();
  sub_1BD5CF1D4(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  sub_1BD4CDC28();
  sub_1BE04E904();
  swift_endAccess();

  swift_getKeyPath();
  sub_1BE04B5A4();
}

uint64_t sub_1BD5CE0DC()
{
  type metadata accessor for BankAccountSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

id sub_1BD5CE150@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5CE2BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BankAccountSheet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  sub_1BD5CF890(a2, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankAccountSheet);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1BD5CF0B8(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for BankAccountSheet);
  type metadata accessor for AccountModel();
  sub_1BD5CF1D4(&qword_1EBD3AE50, type metadata accessor for AccountModel);
  v12 = a1;
  result = sub_1BE04E954();
  *a3 = result;
  *(a3 + 8) = v14;
  *(a3 + 16) = sub_1BD5CEA00;
  *(a3 + 24) = v11;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1BD5CE43C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 bankAccountRepresentation];
    if (v4)
    {
      v5 = *(a2 + 8);
      v6 = v4;
      v5();

      v3 = v6;
    }
  }

  type metadata accessor for BankAccountSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD5CE508()
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C560);
  sub_1BD0DE4F4(&qword_1EBD4C578, &qword_1EBD4C570);
  sub_1BD5CEAFC();
  sub_1BD5CEC08();
  return sub_1BE0519D4();
}

id sub_1BD5CE5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v10 = *a1;
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  __asm { FMOV            V0.2D, #16.0 }

  *(a2 + 24) = _Q0;
  *(a2 + 40) = _Q0;
  *(a2 + 56) = 0;
  v8 = v2;

  return v10;
}

uint64_t sub_1BD5CE650(uint64_t a1)
{
  v3 = *(type metadata accessor for BankAccountSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD5CB38C(a1, v4);
}

unint64_t sub_1BD5CE6D8()
{
  result = qword_1EBD4C4C8;
  if (!qword_1EBD4C4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C4A8);
    sub_1BD5CE790();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C4C8);
  }

  return result;
}

unint64_t sub_1BD5CE790()
{
  result = qword_1EBD4C4D0;
  if (!qword_1EBD4C4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C4C0);
    sub_1BD0DE4F4(&qword_1EBD4C4D8, &qword_1EBD4C4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C4D0);
  }

  return result;
}

uint64_t sub_1BD5CE848()
{
  type metadata accessor for BankAccountSheet();

  return sub_1BD5CE0DC();
}

uint64_t sub_1BD5CE8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankAccountSheet() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1BD5CE2BC(v4, v5, a1);
}

unint64_t sub_1BD5CE91C()
{
  result = qword_1EBD4C528;
  if (!qword_1EBD4C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C518);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    sub_1BD0DE4F4(&qword_1EBD4C530, &qword_1EBD4C538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C528);
  }

  return result;
}

uint64_t sub_1BD5CEA00(void *a1)
{
  v3 = *(type metadata accessor for BankAccountSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD5CE43C(a1, v4);
}

unint64_t sub_1BD5CEA78()
{
  result = qword_1EBD4C550;
  if (!qword_1EBD4C550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C548);
    sub_1BD5CEAFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C550);
  }

  return result;
}

unint64_t sub_1BD5CEAFC()
{
  result = qword_1EBD4C558;
  if (!qword_1EBD4C558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C560);
    sub_1BD5CEBB4();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C558);
  }

  return result;
}

unint64_t sub_1BD5CEBB4()
{
  result = qword_1EBD4C568;
  if (!qword_1EBD4C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C568);
  }

  return result;
}

unint64_t sub_1BD5CEC08()
{
  result = qword_1EBD4C580;
  if (!qword_1EBD4C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C580);
  }

  return result;
}

unint64_t sub_1BD5CEC68()
{
  result = qword_1EBD4C5D0;
  if (!qword_1EBD4C5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C520);
    sub_1BD5CE91C();
    sub_1BD5CF1D4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C5D0);
  }

  return result;
}

uint64_t sub_1BD5CED24(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD5CEDA0()
{
  result = qword_1EBD4C5E0;
  if (!qword_1EBD4C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C5E0);
  }

  return result;
}

double sub_1BD5CEDF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BankAccountSheet() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  *&result = sub_1BD5CD994(a1, v2 + v6, v7, a2).n128_u64[0];
  return result;
}

unint64_t sub_1BD5CEEA0()
{
  result = qword_1EBD4C5F8;
  if (!qword_1EBD4C5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C5F0);
    sub_1BD0DE4F4(&qword_1EBD4C600, &qword_1EBD4C608);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C5F8);
  }

  return result;
}

uint64_t sub_1BD5CEF84()
{
  v1 = *(type metadata accessor for BankAccountSheet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return (*(v0 + v2 + 24))(*(v0 + v3), *(v0 + v3 + 8));
}

uint64_t sub_1BD5CF024()
{
  type metadata accessor for BankAccountSheet();

  return sub_1BD5CDF30();
}

uint64_t sub_1BD5CF0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD5CF120()
{
  result = qword_1EBD4C620;
  if (!qword_1EBD4C620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47CF0);
    sub_1BD5CF1D4(&qword_1EBD4C628, type metadata accessor for PeerPaymentToggleSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C620);
  }

  return result;
}

uint64_t sub_1BD5CF1D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_66()
{
  v1 = type metadata accessor for BankAccountSheet();
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

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

uint64_t sub_1BD5CF820(char a1)
{
  v3 = *(type metadata accessor for BankAccountSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD5CD0B8(a1, v4);
}

uint64_t sub_1BD5CF890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5CF8F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD5CF958()
{
  result = qword_1EBD4C630;
  if (!qword_1EBD4C630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBD4C638);
    sub_1BD0DE4F4(&qword_1EBD4C4A0, &qword_1EBD4C498);
    sub_1BD5CF1D4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C630);
  }

  return result;
}

uint64_t sub_1BD5CFA40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI39DetailNavigationViewActionConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1BD5CFAF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a5[1];
  v24 = *a5;
  v25 = v9;
  v26 = *(a5 + 4);
  *&v17 = a6;
  *(&v17 + 1) = a7;
  *&v18 = a1;
  *(&v18 + 1) = a2;
  *&v19 = a3;
  *(&v19 + 1) = a4;
  v20 = v24;
  v21 = v9;
  v22 = v26;
  v23[0] = a6;
  v23[1] = a7;
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  v23[5] = a4;
  v10 = type metadata accessor for DetailNavigationView();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v16, &v17, v10);
  (*(v11 + 8))(v23, v10);
  v12 = v20;
  v13 = v21;
  *(a8 + 32) = v19;
  *(a8 + 48) = v12;
  *(a8 + 64) = v13;
  *(a8 + 80) = v22;
  result = *&v17;
  v15 = v18;
  *a8 = v17;
  *(a8 + 16) = v15;
  return result;
}

uint64_t sub_1BD5CFBF8(uint64_t a1)
{
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  v6 = *(v1 + 48);
  *(v3 + 64) = *(v1 + 32);
  *(v3 + 80) = v6;
  *(v3 + 96) = *(v1 + 64);
  *(v3 + 112) = *(v1 + 80);
  v7 = *(v1 + 16);
  *(v3 + 32) = *v1;
  *(v3 + 48) = v7;
  type metadata accessor for PushNavigationStackModel();
  swift_allocObject();
  (*(*(a1 - 8) + 16))(&v24, v1, a1);
  sub_1BE04E914();
  sub_1BE04B5C4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C6C0);
  v9 = sub_1BD0DE4F4(&qword_1EBD4C6C8, &qword_1EBD4C6C0);
  v24 = v4;
  v25 = v8;
  v26 = v5;
  v27 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = v4;
  v25 = v8;
  v26 = v5;
  v27 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = sub_1BD0DDEBC();
  v13 = MEMORY[0x1E69E6158];
  v24 = OpaqueTypeMetadata2;
  v25 = MEMORY[0x1E69E6158];
  v26 = OpaqueTypeConformance2;
  v27 = v12;
  v14 = swift_getOpaqueTypeMetadata2();
  v24 = OpaqueTypeMetadata2;
  v25 = v13;
  v26 = OpaqueTypeConformance2;
  v27 = v12;
  v15 = swift_getOpaqueTypeConformance2();
  v24 = v14;
  v25 = v15;
  swift_getOpaqueTypeMetadata2();
  v24 = v14;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  v20 = sub_1BD5BC4EC();
  v21 = v16;
  v22 = v17;
  v23 = v18;
  type metadata accessor for PushNavigationStack();
  swift_getWitnessTable();
  sub_1BD147308(&v20);

  v20 = v24;
  v21 = v25;
  v22 = v26;
  v23 = v27;
  sub_1BD147308(&v20);
}

uint64_t sub_1BD5CFF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a1;
  v46 = a5;
  v47 = sub_1BE04F434();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v8);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C6C0);
  v15 = sub_1BD0DE4F4(&qword_1EBD4C6C8, &qword_1EBD4C6C0);
  v51 = a3;
  v52 = v14;
  v37 = a4;
  v53 = a4;
  v54 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v17);
  v19 = &v36 - v18;
  v51 = a3;
  v52 = v14;
  v53 = a4;
  v54 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_1BD0DDEBC();
  v51 = OpaqueTypeMetadata2;
  v52 = MEMORY[0x1E69E6158];
  v38 = OpaqueTypeConformance2;
  v53 = OpaqueTypeConformance2;
  v54 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v39 = *(v22 - 8);
  v40 = v22;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v36 - v25;
  (*a2)(v43, v24);
  v48 = a3;
  v49 = v37;
  v50 = a2;
  sub_1BE051024();
  (*(v42 + 8))(v13, a3);
  if (*(a2 + 24))
  {
    v27 = *(a2 + 16);
    v28 = *(a2 + 24);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  v51 = v27;
  v52 = v28;
  sub_1BE048C84();
  v29 = MEMORY[0x1E69E6158];
  v30 = v38;
  sub_1BE050B74();

  (*(v41 + 8))(v19, OpaqueTypeMetadata2);
  v32 = v44;
  v31 = v45;
  v33 = v47;
  (*(v45 + 104))(v44, *MEMORY[0x1E697C438], v47);
  v51 = OpaqueTypeMetadata2;
  v52 = v29;
  v53 = v30;
  v54 = v21;
  swift_getOpaqueTypeConformance2();
  v34 = v40;
  sub_1BE050E84();
  (*(v31 + 8))(v32, v33);
  return (*(v39 + 8))(v26, v34);
}

uint64_t sub_1BD5D0388@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a2;
  v58 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6D0);
  MEMORY[0x1EEE9AC00](v56, v6);
  v55 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v54 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6E0);
  v53 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v52 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6E8);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v59 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v50 - v20;
  v22 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6F0);
  v60 = *(v24 - 8);
  v61 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v50 - v26;
  sub_1BE04FB04();
  v62 = v57;
  v63 = a3;
  v64 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6F8);
  sub_1BD5D12AC();
  v57 = v27;
  sub_1BE04E424();
  v28 = *(a1 + 56);
  if (v28)
  {
    v50 = *(a1 + 80);
    v29 = *(a1 + 72);
    v30 = *(a1 + 64);
    v67 = *(a1 + 48);
    v68 = v28;
    v69 = v30 & 1;
    v70 = v29;
    v71 = v50;
    sub_1BE048C84();
    sub_1BE048964();
    v31 = sub_1BE04FAC4();
    v32 = v12;
    v51 = v21;
    MEMORY[0x1EEE9AC00](v31, v33);
    *(&v50 - 2) = &v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C728);
    v34 = v9;
    sub_1BD5D1534();
    v35 = v52;
    sub_1BE04E424();
    v21 = v51;
    v36 = sub_1BD0DE4F4(&qword_1EBD4C720, &qword_1EBD4C6E0);
    v37 = v54;
    MEMORY[0x1BFB3CC50](v35, v32, v36);
    v38 = *(v9 + 16);
    v39 = v59;
    v38(v59, v37, v8);
    (*(v34 + 56))(v39, 0, 1, v8);
    v65 = v32;
    v66 = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB3CC80](v39, v8, OpaqueTypeConformance2);

    sub_1BD08B830(v39);
    (*(v34 + 8))(v37, v8);
    (*(v53 + 8))(v35, v32);
  }

  else
  {
    v41 = v59;
    (*(v9 + 56))(v59, 1, 1, v8);
    v42 = sub_1BD0DE4F4(&qword_1EBD4C720, &qword_1EBD4C6E0);
    v67 = v12;
    v68 = v42;
    v43 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB3CC80](v41, v8, v43);
    sub_1BD08B830(v41);
  }

  v44 = v55;
  v45 = *(v56 + 48);
  v47 = v60;
  v46 = v61;
  v48 = v57;
  (*(v60 + 16))(v55, v57, v61);
  sub_1BD08B898(v21, &v44[v45]);
  sub_1BE04F854();
  sub_1BD08B830(v21);
  return (*(v47 + 8))(v48, v46);
}

uint64_t sub_1BD5D09D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C710);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - v3;
  type metadata accessor for DetailNavigationView();
  sub_1BD5D0B14();
  sub_1BE052434();
  sub_1BD5D1368();
  sub_1BE050DE4();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BD5D0B14()
{
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C760);
  sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860);
  type metadata accessor for CloseButton(255);
  sub_1BE04F734();
  sub_1BD5D14E4(&qword_1EBD365D8, type metadata accessor for CloseButton);
  sub_1BD5D14E4(&qword_1EBD4C718, MEMORY[0x1E697C540]);
  swift_getOpaqueTypeConformance2();
  return sub_1BE051C74();
}

uint64_t sub_1BD5D0CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C748);
  sub_1BD5D1620();
  sub_1BE051704();
  v4 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C728);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_1BD10DF54;
  v8[2] = v6;
  return result;
}

uint64_t sub_1BD5D0DD4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C758);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - v9;
  if (a1[2])
  {
    sub_1BE04E4F4();
    (*(v7 + 16))(v5, v10, v6);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BE04F9A4();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v12 = *a1;
    v13 = a1[1];
    v17[0] = v12;
    v17[1] = v13;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    *v5 = sub_1BE0506C4();
    *(v5 + 1) = v14;
    v5[16] = v15 & 1;
    *(v5 + 3) = v16;
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD5D103C(uint64_t a1)
{
  v2 = sub_1BE04F734();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CloseButton(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  *v10 = v11;
  v10[1] = v12;
  v14 = *(v13 + 20);
  *(v10 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  swift_storeEnumTagMultiPayload();
  sub_1BE048964();
  sub_1BE04F724();
  sub_1BD5D14E4(&qword_1EBD365D8, type metadata accessor for CloseButton);
  sub_1BD5D14E4(&qword_1EBD4C718, MEMORY[0x1E697C540]);
  sub_1BE050894();
  (*(v3 + 8))(v6, v2);
  return sub_1BD5D1760(v10);
}

unint64_t sub_1BD5D12AC()
{
  result = qword_1EBD4C700;
  if (!qword_1EBD4C700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C6F8);
    sub_1BD5D1368();
    sub_1BD5D14E4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C700);
  }

  return result;
}

unint64_t sub_1BD5D1368()
{
  result = qword_1EBD4C708;
  if (!qword_1EBD4C708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C710);
    sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860);
    type metadata accessor for CloseButton(255);
    sub_1BE04F734();
    sub_1BD5D14E4(&qword_1EBD365D8, type metadata accessor for CloseButton);
    sub_1BD5D14E4(&qword_1EBD4C718, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C708);
  }

  return result;
}

uint64_t sub_1BD5D14E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD5D1534()
{
  result = qword_1EBD4C730;
  if (!qword_1EBD4C730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C728);
    sub_1BD0DE4F4(&qword_1EBD4C738, &qword_1EBD4C740);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C730);
  }

  return result;
}

unint64_t sub_1BD5D1620()
{
  result = qword_1EBD4C750;
  if (!qword_1EBD4C750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C748);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C750);
  }

  return result;
}

uint64_t sub_1BD5D16D8()
{
  sub_1BE048964();

  return sub_1BE051704();
}

uint64_t sub_1BD5D1760(uint64_t a1)
{
  v2 = type metadata accessor for CloseButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD5D17EC()
{
  sub_1BD0E4578(319, &qword_1EBD4C808, &qword_1EBD4C810);
  if (v0 <= 0x3F)
  {
    sub_1BD5D60D4(319, &unk_1EBD4C818, _s8MerchantVMa);
    if (v1 <= 0x3F)
    {
      sub_1BD540F14(319, &qword_1EBD368F0);
      if (v2 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD45478, &qword_1EBD45480);
        if (v3 <= 0x3F)
        {
          sub_1BD5D60D4(319, &qword_1EBD4C828, type metadata accessor for Passes);
          if (v4 <= 0x3F)
          {
            sub_1BD0E4578(319, &unk_1EBD4C830, &qword_1EBD395E0);
            if (v5 <= 0x3F)
            {
              sub_1BD5D60D4(319, &qword_1EBD4C840, _s14PaymentSummaryVMa);
              if (v6 <= 0x3F)
              {
                sub_1BD540F14(319, &unk_1EBD4C848);
                if (v7 <= 0x3F)
                {
                  sub_1BD5D60D4(319, &qword_1EBD368C0, type metadata accessor for PKPaymentAuthorizationState);
                  if (v8 <= 0x3F)
                  {
                    sub_1BD0E4578(319, &qword_1EBD4C858, &qword_1EBD4C860);
                    if (v9 <= 0x3F)
                    {
                      sub_1BD0E4578(319, &qword_1EBD4C868, &qword_1EBD4C870);
                      if (v10 <= 0x3F)
                      {
                        sub_1BD0E4578(319, &qword_1EBD4C878, &qword_1EBD4C880);
                        if (v11 <= 0x3F)
                        {
                          sub_1BD5D60D4(319, &qword_1EBD4C888, type metadata accessor for PKPaymentAuthorizationFundingMode);
                          if (v12 <= 0x3F)
                          {
                            sub_1BD5D60D4(319, &unk_1EBD4C890, type metadata accessor for SelectedPaymentOfferObserver);
                            if (v13 <= 0x3F)
                            {
                              swift_initClassMetadata2();
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
  }
}

__n128 sub_1BD5D1D2C@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = v7;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD5D1E28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

double sub_1BD5D1F24@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  a1[10] = v13;
  a1[11] = v14;
  a1[12] = v15;
  a1[13] = v16;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v12;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_1BD5D2008@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1BD5D208C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1BD5D2114(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BD5D7DD4(v1, v2, v3);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5D21D4(uint64_t a1)
{
  v2 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  sub_1BD5D6A0C(a1, &v11 - v8, _s8MerchantVMa);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD5D6A0C(v9, v5, _s8MerchantVMa);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD5D6948(v9, _s8MerchantVMa);
}

__n128 sub_1BD5D2338@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = v7;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD5D23D4(_OWORD *a1)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v8[4] = a1[4];
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1[3];
  v7[7] = a1[2];
  v7[8] = v4;
  v7[9] = a1[4];
  v5 = a1[1];
  v7[5] = *a1;
  v7[6] = v5;
  sub_1BE048964();
  sub_1BD0DE19C(v8, v7, &qword_1EBD395E0);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5D24AC(uint64_t a1)
{
  v2 = _s14PaymentSummaryVMa();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  sub_1BD5D6A0C(a1, &v11 - v8, _s14PaymentSummaryVMa);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD5D6A0C(v9, v5, _s14PaymentSummaryVMa);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD5D6948(v9, _s14PaymentSummaryVMa);
}

double sub_1BD5D25D8@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  a1[10] = v13;
  a1[11] = v14;
  a1[12] = v15;
  a1[13] = v16;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v12;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD5D26C8(_OWORD *a1)
{
  v2 = a1[11];
  v18[10] = a1[10];
  v18[11] = v2;
  v3 = a1[13];
  v18[12] = a1[12];
  v18[13] = v3;
  v4 = a1[7];
  v18[6] = a1[6];
  v18[7] = v4;
  v5 = a1[9];
  v18[8] = a1[8];
  v18[9] = v5;
  v6 = a1[3];
  v18[2] = a1[2];
  v18[3] = v6;
  v7 = a1[5];
  v18[4] = a1[4];
  v18[5] = v7;
  v8 = a1[1];
  v18[0] = *a1;
  v18[1] = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a1[11];
  v17[24] = a1[10];
  v17[25] = v9;
  v10 = a1[13];
  v17[26] = a1[12];
  v17[27] = v10;
  v11 = a1[7];
  v17[20] = a1[6];
  v17[21] = v11;
  v12 = a1[9];
  v17[22] = a1[8];
  v17[23] = v12;
  v13 = a1[3];
  v17[16] = a1[2];
  v17[17] = v13;
  v14 = a1[5];
  v17[18] = a1[4];
  v17[19] = v14;
  v15 = a1[1];
  v17[14] = *a1;
  v17[15] = v15;
  sub_1BE048964();
  sub_1BD5D7E20(v18, v17);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5D27E4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD5D2864()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5D2960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1BD0DE19C(a1, &v16 - v13, a5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v14, v11, a5);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v14, a5);
}

uint64_t sub_1BD5D2A9C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD5D2B1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD5D2B98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v134 = &v125 - v4;
  v5 = type metadata accessor for PassEligibleRewardsInfo();
  v132 = *(v5 - 8);
  v133 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v129 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v130 = &v125 - v14;
  v15 = type metadata accessor for PeerPaymentModel();
  v142 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v131 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v127 = &v125 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C880);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v140 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v144 = (&v125 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v126 = &v125 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v147 = (&v125 - v32);
  v33 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v138 = &v125 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v125 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v139 = &v125 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v125 - v49;
  swift_getKeyPath();
  swift_getKeyPath();
  v148 = v1;
  sub_1BE04D8B4();

  sub_1BD0DE19C(v43, v50, &qword_1EBD520A0);
  sub_1BD5D6948(v43, type metadata accessor for Passes);
  v51 = type metadata accessor for AvailablePass(0);
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v135 = v52 + 48;
  v136 = v53;
  v54 = v53(v50, 1, v51);
  v137 = v51;
  v143 = v11;
  if (v54 == 1)
  {
    v55 = v15;
    sub_1BD0DE53C(v50, &qword_1EBD520A0);
    v128 = 0;
    v141 = 0;
    v57 = v147;
    v56 = v148;
  }

  else
  {
    sub_1BD5D6A0C(v50, v36, type metadata accessor for WrappedPass);
    sub_1BD5D6948(v50, type metadata accessor for AvailablePass);
    v58 = WrappedPass.secureElementPass.getter();
    sub_1BD5D6948(v36, type metadata accessor for WrappedPass);
    v57 = v147;
    if (v58)
    {
      v59 = [v58 uniqueID];

      v56 = v148;
      if (v59)
      {
        sub_1BE052434();
        v61 = v60;

        v62 = *(v56 + qword_1EBDAAD68 + 32);
        sub_1BE048C84();
        v63 = [v62 paymentOffersController];
        v141 = v61;
        if (v63)
        {
          v64 = v63;
          v65 = sub_1BE052404();

          v66 = [v64 eligiblePaymentOfferCriteriaForPassUniqueID_];

          if (v66)
          {
            sub_1BD0E5E8C(0, &unk_1EBD496A0);
            v67 = sub_1BE052744();

            if (v67 >> 62)
            {
              v68 = sub_1BE053704();
            }

            else
            {
              v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v55 = v15;

            v128 = v68 > 0;
            goto LABEL_15;
          }

          v55 = v15;
        }

        else
        {
          v55 = v15;
        }

        v128 = 0;
      }

      else
      {
        v55 = v15;
        v128 = 0;
        v141 = 0;
      }
    }

    else
    {
      v55 = v15;
      v128 = 0;
      v141 = 0;
      v56 = v148;
    }
  }

LABEL_15:
  v69 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  v125 = *(v69 - 8);
  v70 = *(v125 + 56);
  v145 = v125 + 56;
  v146 = v70;
  v70(v57, 1, 1, v69);
  v71 = v56 + qword_1EBDAAD68;
  v72 = *(v56 + qword_1EBDAAD68 + 32);
  v73 = sub_1BD6395BC(v72);
  v75 = v74;
  v77 = v76;
  v79 = v78;

  if (v75)
  {
    sub_1BD0DE53C(v57, &qword_1EBD4C880);
    *v57 = v73;
    v57[1] = v75;
    v57[2] = v77;
    v57[3] = v79;
    swift_storeEnumTagMultiPayload();
    v80 = 0;
    v81 = v55;
    v83 = v142;
    v82 = v143;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v84 = v130;
    sub_1BE04D8B4();

    sub_1BD0DE53C(v57, &qword_1EBD4C880);
    v83 = v142;
    v81 = v55;
    if ((*(v142 + 48))(v84, 1, v55) == 1)
    {
      sub_1BD0DE53C(v84, &qword_1EBD45480);
      v80 = 1;
      v82 = v143;
    }

    else
    {
      v85 = v127;
      sub_1BD57888C(v84, v127, type metadata accessor for PeerPaymentModel);
      v86 = *(v85 + *(v55 + 56));
      v82 = v143;
      if (v86 == 1 && !v128)
      {
        sub_1BD57888C(v85, v57, type metadata accessor for PeerPaymentModel);
        swift_storeEnumTagMultiPayload();
        v80 = 0;
      }

      else
      {
        sub_1BD5D6948(v85, type metadata accessor for PeerPaymentModel);
        v80 = 1;
      }
    }
  }

  v146(v57, v80, 1, v69);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((*(v83 + 48))(v82, 1, v81) == 1)
  {
    sub_1BD0DE53C(v82, &qword_1EBD45480);
  }

  else
  {
    v87 = v131;
    sub_1BD57888C(v82, v131, type metadata accessor for PeerPaymentModel);
    if (*(v87 + *(v81 + 64)) == 1)
    {
      sub_1BD0DE53C(v57, &qword_1EBD4C880);
      sub_1BD57888C(v87, v57, type metadata accessor for PeerPaymentModel);
      swift_storeEnumTagMultiPayload();
      v146(v57, 0, 1, v69);
    }

    else
    {
      sub_1BD5D6948(v87, type metadata accessor for PeerPaymentModel);
    }
  }

  result = [*(v71 + 32) paymentRequest];
  if (!result)
  {
    __break(1u);
    goto LABEL_74;
  }

  v89 = result;
  v90 = [result disbursementPaymentRequest];

  result = [*(v71 + 32) paymentRequest];
  if (!result)
  {
LABEL_74:
    __break(1u);
    return result;
  }

  v91 = result;

  v92 = [v91 merchantCapabilities];

  v143 = v90;
  if (!v90 || (v92 & 0x80) == 0)
  {
    goto LABEL_49;
  }

  v142 = v69;
  v93 = v90;
  v94 = [v93 paymentSummaryItems];
  sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
  v95 = sub_1BE052744();

  if (!(v95 >> 62))
  {
    v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v96)
    {
      goto LABEL_34;
    }

LABEL_48:

    v57 = v147;
    v69 = v142;
    goto LABEL_49;
  }

LABEL_47:
  v96 = sub_1BE053704();
  if (!v96)
  {
    goto LABEL_48;
  }

LABEL_34:
  v97 = 0;
  while (1)
  {
    if ((v95 & 0xC000000000000001) != 0)
    {
      v98 = MEMORY[0x1BFB40900](v97, v95);
    }

    else
    {
      if (v97 >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v98 = *(v95 + 8 * v97 + 32);
    }

    v99 = v98;
    v100 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v97;
    if (v100 == v96)
    {
      goto LABEL_48;
    }
  }

  v101 = [v93 currencyCode];

  sub_1BE052434();
  v102 = sub_1BD2DB880();
  v104 = v103;

  v57 = v147;
  v69 = v142;
  if (v104)
  {
    sub_1BD0DE53C(v147, &qword_1EBD4C880);
    *v57 = v102;
    v57[1] = v104;
    swift_storeEnumTagMultiPayload();
    v146(v57, 0, 1, v69);
  }

LABEL_49:
  v105 = PKOslo2024UIUpdatesEnabled();
  swift_getKeyPath();
  swift_getKeyPath();
  v106 = v138;
  sub_1BE04D8B4();

  v107 = v139;
  sub_1BD0DE19C(v106, v139, &qword_1EBD520A0);
  sub_1BD5D6948(v106, type metadata accessor for Passes);
  v108 = v137;
  if (v136(v107, 1, v137) == 1)
  {
    sub_1BD0DE53C(v107, &qword_1EBD520A0);
    v109 = v134;
    (*(v132 + 56))(v134, 1, 1, v133);
LABEL_52:
    sub_1BD0DE53C(v109, &unk_1EBD4C940);
    goto LABEL_58;
  }

  v110 = v107 + *(v108 + 40);
  v109 = v134;
  sub_1BD0DE19C(v110, v134, &unk_1EBD4C940);
  sub_1BD5D6948(v107, type metadata accessor for AvailablePass);
  if ((*(v132 + 48))(v109, 1, v133) == 1)
  {
    goto LABEL_52;
  }

  v111 = v129;
  sub_1BD57888C(v109, v129, type metadata accessor for PassEligibleRewardsInfo);
  if (!sub_1BD57A1B8() || v128 || (v105 & 1) != 0)
  {
    v112 = type metadata accessor for PassEligibleRewardsInfo;
    v113 = v111;
LABEL_57:
    sub_1BD5D6948(v113, v112);
    goto LABEL_58;
  }

  v124 = v126;
  sub_1BD0DE19C(v57, v126, &qword_1EBD4C880);
  if ((*(v125 + 48))(v124, 1, v69) == 1)
  {
    sub_1BD0DE53C(v57, &qword_1EBD4C880);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1BD5D6948(v111, type metadata accessor for PassEligibleRewardsInfo);
      v112 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo;
      v113 = v124;
      goto LABEL_57;
    }

    sub_1BD0DE53C(v57, &qword_1EBD4C880);
    sub_1BD5D6948(v124, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
  }

  sub_1BD57888C(v111, v57, type metadata accessor for PassEligibleRewardsInfo);
  swift_storeEnumTagMultiPayload();
  v146(v57, 0, 1, v69);
LABEL_58:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v149 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v114 = v149;
    if (v149)
    {
      v115 = [v149 type];

      if (v115 == 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        v116 = v149;
        if (v149)
        {
          objc_opt_self();
          v117 = swift_dynamicCastObjCClass();
          if (v117)
          {
            v118 = [v117 rewardsRedemptionIntent];
            v119 = [v118 rewardsType];
            v120 = [v118 monetaryValue];
            v121 = [v118 value];

            sub_1BD0DE53C(v57, &qword_1EBD4C880);
            v122 = v144;
            *v144 = v119;
            v122[1] = v120;
            v122[2] = v121;
            swift_storeEnumTagMultiPayload();
            v146(v122, 0, 1, v69);
            sub_1BD5D6A74(v122, v57);
          }

          else
          {
          }
        }
      }
    }
  }

  v123 = v144;
  sub_1BD0DE19C(v57, v144, &qword_1EBD4C880);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v123, v140, &qword_1EBD4C880);
  sub_1BE048964();
  sub_1BE04D8C4();

  sub_1BD0DE53C(v123, &qword_1EBD4C880);
  return sub_1BD0DE53C(v57, &qword_1EBD4C880);
}

uint64_t sub_1BD5D3E44()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_1EBDAAD68);
    v2 = *(Strong + qword_1EBDAAD68 + 32);
    v3 = *(Strong + qword_1EBDAAD68 + 24);
    v4 = v2;
    sub_1BE048964();
    v5 = v1;
    swift_unknownObjectRetain();

    sub_1BD0E66D0();

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BD5D3F44();
  }

  return result;
}

id sub_1BD5D3F44()
{
  v1 = v0;
  v2 = _s14PaymentSummaryVMa();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v64 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v65 = &v61 - v7;
  v8 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v63 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v61 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v61 - v19;
  v21 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = (&v61 - v28);
  v30 = (v0 + qword_1EBDAAD68);
  v31 = [*(v0 + qword_1EBDAAD68 + 32) fundingMode];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v86 = v31;
  sub_1BE048964();
  sub_1BE04D8C4();
  v32 = *(v30 + 2);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v86 = v32;
  sub_1BE048964();
  sub_1BE04D8C4();
  v33 = *(v30 + 3);
  v34 = *(v30 + 4);
  v35 = v33;
  sub_1BD2B1238(v34, v33, &v81);
  v36 = v82;
  if (v82)
  {
    v37 = v81;
    v38 = sub_1BD1C2B14();
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    *(v39 + 24) = v36;
    v40 = v84;
    *(v39 + 32) = v83;
    *(v39 + 48) = v40;
    v41 = &type metadata for AuthorizationError;
  }

  else
  {
    v39 = 0;
    v41 = 0;
    v38 = 0;
    *(&v86 + 1) = 0;
    *&v87 = 0;
  }

  *&v86 = v39;
  *(&v87 + 1) = v41;
  *&v88 = v38;
  sub_1BE04C8F4();
  sub_1BDA14F98(*(v30 + 4), v29);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD5D6A0C(v29, v24, _s8MerchantVMa);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD5D6948(v29, _s8MerchantVMa);
  sub_1BD56ED40(*(v30 + 4), v20);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v20, v61, &qword_1EBD45480);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD0DE53C(v20, &qword_1EBD45480);
  v42 = *(v30 + 4);
  v43 = v63;
  sub_1BD4930AC(v42, v63);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD5D6A0C(v43, v62, type metadata accessor for Passes);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD5D6948(v43, type metadata accessor for Passes);
  v44 = [*(v30 + 4) paymentOffersController];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v86 = v44;
  sub_1BE048964();
  sub_1BE04D8C4();
  v45 = [*(v30 + 4) selectedPaymentOffer];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v86 = v45;
  sub_1BE048964();
  sub_1BE04D8C4();
  v46 = *(v30 + 5);
  v47 = *(v30 + 4);
  sub_1BE048964();
  sub_1BD2318FC(v47, v46, v85);
  swift_getKeyPath();
  swift_getKeyPath();
  v88 = v85[2];
  v89 = v85[3];
  v90 = v85[4];
  v86 = v85[0];
  v87 = v85[1];
  sub_1BE048964();
  sub_1BE04D8C4();
  v48 = *(v30 + 4);
  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v48;
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v50 = v65;
  sub_1BD9D1B48(v49, v20, v43, v86, v65);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD5D6A0C(v50, v64, _s14PaymentSummaryVMa);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD5D6948(v50, _s14PaymentSummaryVMa);
  v51 = *(v30 + 5);
  v52 = *(v30 + 4);
  sub_1BE048964();
  sub_1BD83B564(v52, v51, &v86);
  swift_getKeyPath();
  swift_getKeyPath();
  v77 = v96;
  v78 = v97;
  v79 = v98;
  v80 = v99;
  v73 = v92;
  v74 = v93;
  v75 = v94;
  v76 = v95;
  v69 = v88;
  v70 = v89;
  v71 = v90;
  v72 = v91;
  v67 = v86;
  v68 = v87;
  sub_1BE048964();
  sub_1BE04D8C4();
  if (*(v1 + qword_1EBDAB300))
  {
    v53 = v30[1];
    v67 = *v30;
    v68 = v53;
    v69 = v30[2];
    v54 = v69;
    v100 = *(&v67 + 1);
    v101[0] = *(&v53 + 1);
    v55 = v67;
    sub_1BD0DE19C(&v100, &v66, &qword_1EBD3D490);
    sub_1BD0DE19C(v101, &v66, &qword_1EBD40150);
    v56 = v54;
    sub_1BE048964();
    sub_1BD83835C(&v67);

    sub_1BD0DE53C(&v100, &qword_1EBD3D490);
    sub_1BD0DE53C(v101, &qword_1EBD40150);
  }

  v57 = [*(v30 + 4) hasAnyPayLaterOptions];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v66) = v57;
  sub_1BE048964();
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v58 = *(v30 + 4);
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = v58;
  sub_1BE04D8B4();

  sub_1BD290458(v59, v66);

  sub_1BD5D5090();
  return sub_1BD5D2B98();
}

uint64_t sub_1BD5D4918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE051FA4();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v11);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v18);
}

uint64_t sub_1BD5D4BC8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BD5D3F44();
  }

  return result;
}

uint64_t sub_1BD5D4C20(uint64_t a1)
{
  v2 = sub_1BE051F54();
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE051FA4();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v21 = sub_1BE052D54();
  v10 = swift_allocObject();
  swift_weakInit();
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 32);
  v26 = *(a1 + 24);
  v27 = v11;
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 24) = *a1;
  *(v14 + 16) = v10;
  *(v14 + 40) = v15;
  *(v14 + 56) = *(a1 + 32);
  aBlock[4] = sub_1BD5D6A00;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_137;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  sub_1BD0DE19C(&v27, v24, &qword_1EBD3D490);
  sub_1BD0DE19C(&v26, v24, &qword_1EBD40150);
  v18 = v13;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v19 = v21;
  MEMORY[0x1BFB3FDF0](0, v9, v5, v16);
  _Block_release(v16);

  (*(v23 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v22);
}

uint64_t sub_1BD5D4F48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 32);
    v16 = *(a2 + 24);
    v17 = v5;
    v7 = (Strong + qword_1EBDAAD68);
    v8 = *(Strong + qword_1EBDAAD68);
    v9 = *(Strong + qword_1EBDAAD68 + 24);
    v10 = *(Strong + qword_1EBDAAD68 + 32);
    v11 = *(a2 + 16);
    *v7 = *a2;
    v7[1] = v11;
    v7[2] = *(a2 + 32);
    v12 = v4;
    sub_1BD0DE19C(&v17, v15, &qword_1EBD3D490);
    sub_1BD0DE19C(&v16, v15, &qword_1EBD40150);
    v13 = v6;
    sub_1BE048964();

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BD5D3F44();
  }

  return result;
}

void sub_1BD5D5090()
{
  v1 = v0;
  v2 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v63 = v77;
  v64 = v78;
  v65 = v79;
  v66 = v80;
  v60[0] = v73;
  v60[1] = v74;
  v61 = v75;
  v62 = v76;
  v59[2] = v69;
  v59[3] = v70;
  v59[4] = v71;
  v59[5] = v72;
  v59[0] = v67;
  v59[1] = v68;
  sub_1BD0DE19C(v60, &v67, &qword_1EBD4C950);
  sub_1BD2ED540(v59);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v77 = v52;
  v78 = v53;
  v79 = v54;
  v80 = v55;
  v73 = v48;
  v74 = v49;
  v75 = v50;
  v76 = v51;
  v69 = v44;
  v70 = v45;
  v71 = v46;
  v72 = v47;
  v67 = v42;
  v68 = v43;
  sub_1BD2ED540(&v67);
  if (*&v60[0])
  {
    if (BYTE8(v61) != 1)
    {
      v26 = &qword_1EBD4C950;
      v27 = v60;
LABEL_26:
      sub_1BD0DE53C(v27, v26);
      return;
    }

    v6 = v80;
    v7 = *(&v60[0] + 1);
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v7;
    sub_1BE04D8B4();

    sub_1BD5153AC(v7, v6, v5, &v42);
    v8 = v42;
    v9 = v43;
    v10 = v44;
    v11 = v1 + qword_1EBD4C7E8;
    v12 = *(v1 + qword_1EBD4C7E8 + 16);
    if (!v12)
    {
      if (!v43)
      {
LABEL_25:
        sub_1BD0DE53C(v60, &qword_1EBD4C950);

        v26 = &qword_1EBD4C810;
        v27 = &v42;
        goto LABEL_26;
      }

      v36 = 0uLL;
      v17 = *(&v42 + 1);
      v18 = *(&v43 + 1);
      v56 = v42;
      if (v42)
      {
LABEL_7:
        v19 = v8;
        sub_1BE048C84();
        sub_1BE048C84();
        v20 = v10;
        v21 = [v19 identifier];
        v22 = sub_1BE052434();
        v24 = v23;

        sub_1BD0DE53C(&v56, &qword_1EBD4C958);
        v57[0] = v17;
        v57[1] = v9;
        sub_1BD1BCDE4(v57);
        *&v58 = v18;
        *(&v58 + 1) = v20;
        sub_1BD1BCDE4(&v58);
        v25 = *(&v36 + 1);
        if (*(&v36 + 1))
        {
          if (!v24)
          {
            goto LABEL_22;
          }

          goto LABEL_15;
        }

        goto LABEL_21;
      }

LABEL_13:
      *&v58 = v17;
      *(&v58 + 1) = v9;
      v38 = v58;
      sub_1BD0DE19C(&v42, &v39, &qword_1EBD4C810);
      sub_1BD206260(&v58, &v39);
      MEMORY[0x1BFB3F610](v18, v10);
      sub_1BD1BCDE4(&v58);

      v24 = *(&v38 + 1);
      v25 = *(&v36 + 1);
      if (*(&v36 + 1))
      {
        v22 = v38;
        if (!*(&v38 + 1))
        {
          goto LABEL_22;
        }

LABEL_15:
        if (v36 == v22 && v25 == v24)
        {
        }

        else
        {
          v34 = sub_1BE053B84();

          if ((v34 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_25;
      }

LABEL_21:
      if (v24)
      {
LABEL_22:

LABEL_23:
        swift_getKeyPath();
        swift_getKeyPath();
        v39 = v42;
        v40 = v43;
        v41 = v44;
        sub_1BD0DE19C(&v42, &v38, &qword_1EBD4C810);
        sub_1BE048964();
        sub_1BE04D8C4();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();
        sub_1BD0DE53C(&v42, &qword_1EBD4C810);

        sub_1BD0DE53C(v60, &qword_1EBD4C950);

        v29 = v41;
        v30 = v40;
        v31 = *v11;
        v32 = *(v11 + 8);
        v33 = *(v11 + 16);
        *v11 = v39;
        *(v11 + 16) = v30;
        *(v11 + 32) = v29;
        sub_1BD5D69A8(v31, v32, v33);
        return;
      }

      goto LABEL_25;
    }

    v35 = v44;
    v13 = *(v11 + 32);
    if (*v11)
    {
      v14 = *v11;
      sub_1BE048C84();
      sub_1BE048C84();
      v15 = [v14 identifier];
      *&v36 = sub_1BE052434();
      *(&v36 + 1) = v16;

      if (v9)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v28 = *(v11 + 24);
      *&v39 = *(v11 + 8);
      *(&v39 + 1) = v12;
      sub_1BD5D7DD4(0, v39, v12);
      sub_1BE048C84();
      MEMORY[0x1BFB3F610](v28, v13);

      v36 = v39;
      if (v9)
      {
LABEL_6:
        v17 = *(&v42 + 1);
        v18 = *(&v43 + 1);
        v10 = v35;
        v56 = v8;
        if (v8)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    if (*(&v36 + 1))
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }
}

void sub_1BD5D56A4()
{
  v1 = qword_1EBD4C770;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD4C778;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C8D0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_1EBD4C780;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = qword_1EBD4C788;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = qword_1EBD4C790;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = qword_1EBD4C798;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8F0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = qword_1EBD4C7A0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8F8);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = qword_1EBD4C7A8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C900);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = qword_1EBD4C7B0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);

  v7(v0 + qword_1EBD4C7B8, v6);
  v20 = qword_1EBD4C7C0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C910);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = qword_1EBD4C7C8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C918);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = qword_1EBD4C7D0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C920);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v26 = qword_1EBD4C7D8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C928);
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  v28 = qword_1EBD4C7E0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C930);
  (*(*(v29 - 8) + 8))(v0 + v28, v29);
  v30 = *(v0 + qword_1EBD4C7E8);
  v31 = *(v0 + qword_1EBD4C7E8 + 8);
  v32 = *(v0 + qword_1EBD4C7E8 + 16);

  sub_1BD5D69A8(v30, v31, v32);
}

uint64_t sub_1BD5D5B64()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = *(v0 + qword_1EBDAAD68);
  v5 = *(v0 + qword_1EBDAAD68 + 24);
  v6 = *(v0 + qword_1EBDAAD68 + 32);

  swift_unknownObjectRelease();
  v7 = qword_1EBD4C770;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8C8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = qword_1EBD4C778;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C8D0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = qword_1EBD4C780;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v14 = qword_1EBD4C788;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E0);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = qword_1EBD4C790;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E8);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = qword_1EBD4C798;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8F0);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v20 = qword_1EBD4C7A0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8F8);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = qword_1EBD4C7A8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C900);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v3(v0 + qword_1EBD4C7B0, v2);

  v13(v0 + qword_1EBD4C7B8, v12);
  v24 = qword_1EBD4C7C0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C910);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v26 = qword_1EBD4C7C8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C918);
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  v28 = qword_1EBD4C7D0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C920);
  (*(*(v29 - 8) + 8))(v0 + v28, v29);
  v30 = qword_1EBD4C7D8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C928);
  (*(*(v31 - 8) + 8))(v0 + v30, v31);
  v32 = qword_1EBD4C7E0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C930);
  (*(*(v33 - 8) + 8))(v0 + v32, v33);
  sub_1BD5D69A8(*(v0 + qword_1EBD4C7E8), *(v0 + qword_1EBD4C7E8 + 8), *(v0 + qword_1EBD4C7E8 + 16));
  return v0;
}

uint64_t sub_1BD5D6080()
{
  sub_1BD5D5B64();

  return swift_deallocClassInstance();
}

void sub_1BD5D60D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE04D8D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD5D6150()
{
  result = type metadata accessor for PeerPaymentModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PassEligibleRewardsInfo();
    if (v2 <= 0x3F)
    {
      result = sub_1BD5D61E8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BD5D61E8()
{
  result = qword_1EBD4C8B0;
  if (!qword_1EBD4C8B0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EBD4C8B0);
  }

  return result;
}

uint64_t sub_1BD5D6244()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5D62B4(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = type metadata accessor for PassEligibleRewardsInfo();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v65 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PeerPaymentModel();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v65 - v16);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v65 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v65 - v24);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8C0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v34 = (&v65 + *(v33 + 56) - v32);
  v35 = a1;
  v36 = &v65 - v32;
  sub_1BD5D6A0C(v35, &v65 - v32, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
  sub_1BD5D6A0C(v66, v34, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v51 = v36;
      sub_1BD5D6A0C(v36, v25, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
      v53 = *v25;
      v52 = v25[1];
      v55 = v25[2];
      v54 = v25[3];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = *v34;
        v57 = v34[1];
        v59 = v34[2];
        v58 = v34[3];
        v60 = v53 == v56 && v52 == v57;
        if (v60 || (sub_1BE053B84() & 1) != 0)
        {
          if (v55 == v59 && v54 == v58)
          {

            v63 = v51;
            goto LABEL_42;
          }

          v62 = sub_1BE053B84();

          v63 = v51;
          if (v62)
          {
LABEL_42:
            sub_1BD5D6948(v63, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
            v43 = 1;
            return v43 & 1;
          }
        }

        else
        {

          v63 = v51;
        }

        sub_1BD5D6948(v63, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
        goto LABEL_35;
      }

      v36 = v51;
    }

    else
    {
      sub_1BD5D6A0C(v36, v29, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1BD57888C(v34, v9, type metadata accessor for PeerPaymentModel);
        v43 = sub_1BD56F840(v29, v9);
        v44 = type metadata accessor for PeerPaymentModel;
        sub_1BD5D6948(v9, type metadata accessor for PeerPaymentModel);
        v45 = v29;
        goto LABEL_37;
      }

      sub_1BD5D6948(v29, type metadata accessor for PeerPaymentModel);
    }

LABEL_34:
    sub_1BD0DE53C(v36, &qword_1EBD4C8C0);
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BD5D6A0C(v36, v21, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v42 = v65;
      sub_1BD57888C(v34, v65, type metadata accessor for PassEligibleRewardsInfo);
      v43 = sub_1BD57A1B4(v21, v42);
      v44 = type metadata accessor for PassEligibleRewardsInfo;
      sub_1BD5D6948(v42, type metadata accessor for PassEligibleRewardsInfo);
      v45 = v21;
LABEL_37:
      sub_1BD5D6948(v45, v44);
      goto LABEL_38;
    }

    sub_1BD5D6948(v21, type metadata accessor for PassEligibleRewardsInfo);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1BD5D6A0C(v36, v13, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
    v47 = v13[1];
    v46 = v13[2];
    if (swift_getEnumCaseMultiPayload() != 4)
    {

      goto LABEL_34;
    }

    v48 = *v34;
    v49 = v34[1];
    v50 = v34[2];
    v43 = sub_1BD8C1578(*v13, v47, v46, v48, v49, v50);

LABEL_38:
    sub_1BD5D6948(v36, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
    return v43 & 1;
  }

  sub_1BD5D6A0C(v36, v17, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
  v39 = *v17;
  v38 = v17[1];
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    goto LABEL_34;
  }

  if (v39 == *v34 && v38 == v34[1])
  {

    goto LABEL_40;
  }

  v41 = sub_1BE053B84();

  if (v41)
  {
LABEL_40:
    v63 = v36;
    goto LABEL_42;
  }

  sub_1BD5D6948(v36, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
LABEL_35:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1BD5D6948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD5D69A8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1BD5D6A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5D6A74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1BD5D6AE4(uint64_t a1)
{
  v2 = v1;
  v174 = a1;
  v138 = _s14PaymentSummaryVMa();
  MEMORY[0x1EEE9AC00](v138, v3);
  v136 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v137 = &v134 - v7;
  v145 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v145, v8);
  v144 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v164 = &v134 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v162 = &v134 - v15;
  v161 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v161, v16);
  v160 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v159 = (&v134 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C920);
  v157 = *(v21 - 8);
  v158 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v156 = &v134 - v23;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C880);
  MEMORY[0x1EEE9AC00](v155, v24);
  v154 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v153 = &v134 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C918);
  v171 = *(v29 - 8);
  v172 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v151 = &v134 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C910);
  v169 = *(v32 - 8);
  v170 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v147 = &v134 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8F0);
  v165 = *(v35 - 8);
  v166 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v146 = &v134 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8E0);
  v167 = *(v38 - 8);
  v168 = v38;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v134 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v42, v43);
  v173 = &v134 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v134 - v47;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v134 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C8C8);
  v54 = *(v53 - 8);
  v149 = v53;
  v150 = v54;
  MEMORY[0x1EEE9AC00](v53, v55);
  v57 = &v134 - v56;
  v58 = qword_1EBD4C770;
  v148 = qword_1EBD4C770;
  *&v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C810);
  sub_1BE04D874();
  (*(v54 + 32))(v2 + v58, v57, v53);
  v59 = qword_1EBD4C788;
  v60 = type metadata accessor for PeerPaymentModel();
  (*(*(v60 - 8) + 56))(v52, 1, 1, v60);
  sub_1BD0DE19C(v52, v48, &qword_1EBD45480);
  v142 = v48;
  v143 = v42;
  sub_1BE04D874();
  v163 = v52;
  sub_1BD0DE53C(v52, &qword_1EBD45480);
  v61 = *(v167 + 32);
  v140 = v59;
  v61(v2 + v59, v41, v168);
  v62 = qword_1EBD4C798;
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v192 = 0u;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395E0);
  v64 = v146;
  v134 = v63;
  sub_1BE04D874();
  v65 = *(v165 + 32);
  v135 = v62;
  v65(v2 + v62, v64, v166);
  v66 = qword_1EBD4C7C0;
  *&v192 = 0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C860);
  v68 = v147;
  v141 = v67;
  sub_1BE04D874();
  v69 = *(v169 + 32);
  v139 = v66;
  v69(v2 + v66, v68, v170);
  v70 = qword_1EBD4C7C8;
  *&v192 = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C870);
  v72 = v151;
  v146 = v71;
  sub_1BE04D874();
  v73 = *(v171 + 32);
  v147 = v70;
  v73(v2 + v70, v72, v172);
  v74 = qword_1EBD4C7D0;
  v75 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  v76 = v153;
  (*(*(v75 - 8) + 56))(v153, 1, 1, v75);
  sub_1BD0DE19C(v76, v154, &qword_1EBD4C880);
  v77 = v156;
  sub_1BE04D874();
  sub_1BD0DE53C(v76, &qword_1EBD4C880);
  (*(v157 + 32))(v2 + v74, v77, v158);
  v78 = v2 + qword_1EBD4C7E8;
  *v78 = 0u;
  *(v78 + 16) = 0u;
  *(v78 + 32) = 0;
  v79 = v174;
  v80 = *(v174 + 32);
  v81 = v173;
  sub_1BD56ED40(v80, v173);
  v82 = *(v79 + 16);
  swift_beginAccess();
  v158 = v82;
  *&v176 = v82;
  type metadata accessor for PKPaymentAuthorizationState(0);
  sub_1BE04D874();
  swift_endAccess();
  v83 = [v80 fundingMode];
  swift_beginAccess();
  *&v176 = v83;
  type metadata accessor for PKPaymentAuthorizationFundingMode(0);
  sub_1BE04D874();
  swift_endAccess();
  v84 = v148;
  swift_beginAccess();
  (*(v150 + 8))(v2 + v84, v149);
  *&v194 = 0;
  v192 = 0u;
  v193 = 0u;
  sub_1BE04D874();
  swift_endAccess();
  v85 = *v78;
  v86 = *(v78 + 8);
  v87 = *(v78 + 16);
  *v78 = 0u;
  *(v78 + 16) = 0u;
  *(v78 + 32) = 0;
  sub_1BD5D69A8(v85, v86, v87);
  v88 = v80;
  v89 = v159;
  sub_1BDA14F98(v88, v159);
  swift_beginAccess();
  sub_1BD5D6A0C(v89, v160, _s8MerchantVMa);
  sub_1BE04D874();
  sub_1BD5D6948(v89, _s8MerchantVMa);
  swift_endAccess();
  result = [v88 paymentRequest];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v91 = result;
  v92 = [result isPeerPaymentRequest];

  swift_beginAccess();
  LOBYTE(v176) = v92;
  sub_1BE04D874();
  swift_endAccess();
  v93 = v163;
  sub_1BD0DE19C(v81, v163, &qword_1EBD45480);
  v94 = v140;
  swift_beginAccess();
  (*(v167 + 8))(v2 + v94, v168);
  sub_1BD0DE19C(v93, v142, &qword_1EBD45480);
  sub_1BE04D874();
  sub_1BD0DE53C(v93, &qword_1EBD45480);
  swift_endAccess();
  v95 = v88;
  v96 = v162;
  sub_1BD4930AC(v95, v162);
  v97 = v164;
  sub_1BD5D6A0C(v96, v164, type metadata accessor for Passes);
  swift_beginAccess();
  sub_1BD5D6A0C(v97, v144, type metadata accessor for Passes);
  sub_1BE04D874();
  sub_1BD5D6948(v97, type metadata accessor for Passes);
  swift_endAccess();
  v98 = [v95 paymentOffersController];
  v99 = v139;
  swift_beginAccess();
  (*(v169 + 8))(v2 + v99, v170);
  *&v176 = v98;
  sub_1BE04D874();
  swift_endAccess();
  v100 = [v95 selectedPaymentOffer];
  v101 = v147;
  swift_beginAccess();
  (*(v171 + 8))(&v101[v2], v172);
  *&v176 = v100;
  sub_1BE04D874();
  swift_endAccess();
  result = [v95 paymentRequest];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v102 = result;
  v103 = [result attributionIdentifier];

  v104 = v174;
  if (v103)
  {
    v105 = sub_1BE052434();
    v107 = v106;
  }

  else
  {
    v105 = 0;
    v107 = 0;
  }

  v108 = (v2 + qword_1EBDAB310);
  *v108 = v105;
  v108[1] = v107;
  v109 = *(v104 + 40);
  v110 = v95;
  sub_1BE048964();
  sub_1BD2318FC(v110, v109, v191);
  v111 = v135;
  swift_beginAccess();
  (*(v165 + 8))(v2 + v111, v166);
  v194 = v191[2];
  v195 = v191[3];
  v196 = v191[4];
  v192 = v191[0];
  v193 = v191[1];
  sub_1BE04D874();
  swift_endAccess();
  v112 = v163;
  sub_1BD0DE19C(v173, v163, &qword_1EBD45480);
  v113 = v164;
  sub_1BD5D6A0C(v96, v164, type metadata accessor for Passes);
  v114 = v104;
  v115 = v110;
  v116 = v137;
  v117 = v112;
  v118 = v158;
  sub_1BD9D1B48(v115, v117, v113, v158, v137);
  swift_beginAccess();
  sub_1BD5D6A0C(v116, v136, _s14PaymentSummaryVMa);
  sub_1BE04D874();
  sub_1BD5D6948(v116, _s14PaymentSummaryVMa);
  swift_endAccess();
  v119 = v115;
  sub_1BE048964();
  sub_1BD83B564(v119, v109, &v192);
  swift_beginAccess();
  v186 = v202;
  v187 = v203;
  v188 = v204;
  v189 = v205;
  v182 = v198;
  v183 = v199;
  v184 = v200;
  v185 = v201;
  v178 = v194;
  v179 = v195;
  v180 = v196;
  v181 = v197;
  v176 = v192;
  v177 = v193;
  sub_1BE04D874();
  swift_endAccess();
  v120 = *v114;
  v190[0] = v114[1];
  v206[0] = v114[3];
  type metadata accessor for ShippingContact();
  swift_allocObject();
  v121 = v119;
  sub_1BE048964();
  v122 = v120;
  sub_1BD0DE19C(v190, &v176, &qword_1EBD3D490);
  sub_1BD0DE19C(v206, &v176, &qword_1EBD40150);
  *(v2 + qword_1EBDAB300) = sub_1BD8389F8(v114);
  result = [v121 paymentRequest];
  if (result)
  {
    v123 = result;
    v124 = [result requestType];

    *(v2 + qword_1EBDAB308) = v124;
    LOBYTE(v123) = [v121 hasAnyPayLaterOptions];
    swift_beginAccess();
    LOBYTE(v175) = v123;
    sub_1BE04D874();
    swift_endAccess();
    v125 = v121;
    v126 = sub_1BD290B6C(v125, v118);

    swift_beginAccess();
    v175 = v126;
    type metadata accessor for SelectedPaymentOfferObserver();
    sub_1BE04D874();
    swift_endAccess();
    v127 = v125;
    sub_1BE048964();
    v128 = v122;
    sub_1BD0DE19C(v190, &v176, &qword_1EBD3D490);
    sub_1BD0DE19C(v206, &v176, &qword_1EBD40150);
    v129 = sub_1BD46A578(v174);

    sub_1BD0DE53C(v190, &qword_1EBD3D490);
    sub_1BD0DE53C(v206, &qword_1EBD40150);

    swift_retain_n();
    sub_1BD5D2B98();
    v130 = swift_allocObject();
    swift_weakInit();
    *&v178 = sub_1BD5D7E7C;
    *(&v178 + 1) = v130;
    *&v176 = MEMORY[0x1E69E9820];
    *(&v176 + 1) = 1107296256;
    *&v177 = sub_1BD126964;
    *(&v177 + 1) = &block_descriptor_91_1;
    v131 = _Block_copy(&v176);

    [v127 setUpdateHandler_];
    _Block_release(v131);

    sub_1BD5D6948(v162, type metadata accessor for Passes);
    sub_1BD0DE53C(v173, &qword_1EBD45480);
    v132 = swift_allocObject();
    swift_weakInit();

    v133 = *(v109 + 32);
    *(v109 + 32) = sub_1BD5D7EB4;
    *(v109 + 40) = v132;
    sub_1BE048964();
    sub_1BD0D4744(v133);

    return v129;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_1BD5D7DD4(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

id sub_1BD5D7F18()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8068], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    result = (*(v1 + 8))(v5, v0);
    qword_1EBDAB328 = v8;
    unk_1EBDAB330 = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for IdentityPassMethodSheet()
{
  result = qword_1EBD4C960;
  if (!qword_1EBD4C960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD5D80C8()
{
  type metadata accessor for PKPaymentRequestType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Passes(319);
    if (v1 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v2 <= 0x3F)
      {
        sub_1BD5D8198();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD5D8198()
{
  if (!qword_1EBD388E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51EC0);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD388E0);
    }
  }
}

uint64_t sub_1BD5D8218@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for IdentityPassMethodSheet();
  v3 = *(v2 - 8);
  v23[1] = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C970);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v23[0] = v23 - v14;
  sub_1BD5DB354(v1, v10, type metadata accessor for IdentityPassMethodSheet);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_1BD5DB3BC(v10, v16 + v15, type metadata accessor for IdentityPassMethodSheet);
  sub_1BD5DB354(v1, v6, type metadata accessor for IdentityPassMethodSheet);
  v17 = swift_allocObject();
  sub_1BD5DB3BC(v6, v17 + v15, type metadata accessor for IdentityPassMethodSheet);
  *&v36 = sub_1BD5DA764;
  *(&v36 + 1) = v17;
  v37 = 0uLL;
  *&v38 = sub_1BD5DA704;
  *(&v38 + 1) = v16;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  v42[0] = sub_1BD5DA764;
  v42[1] = v17;
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = sub_1BD5DA704;
  v42[5] = v16;
  v43 = 0u;
  v44 = 0u;
  v45 = 0;
  sub_1BD08BFBC(&v36, v46);
  sub_1BD0DE53C(v42, &qword_1EBD4C978);
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v28 = v36;
  v29 = v37;
  *&v33 = v41;
  *(&v33 + 1) = sub_1BD5D8C2C;
  v34 = 0uLL;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
  sub_1BE0516C4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C980);
  v19 = sub_1BD5DA7E4();
  v20 = v23[0];
  sub_1BE050704();
  sub_1BD0DE53C(&v27, &qword_1EBD51FA0);
  v46[4] = v32;
  v46[5] = v33;
  v46[6] = v34;
  v47 = v35;
  v46[0] = v28;
  v46[1] = v29;
  v46[2] = v30;
  v46[3] = v31;
  sub_1BD0DE53C(v46, &qword_1EBD4C980);
  sub_1BE052434();
  *&v28 = v18;
  *(&v28 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  sub_1BE050DE4();

  return (*(v25 + 8))(v20, v21);
}

uint64_t sub_1BD5D8628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = type metadata accessor for IdentityPassMethodSheet();
  v7 = *(a1 + *(v6 + 24));
  v8 = type metadata accessor for AvailablePass(0);
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v7(v5, 0);
  v9 = sub_1BD0DE53C(v5, &qword_1EBD520A0);
  return (*(a1 + *(v6 + 44)))(v9);
}

uint64_t sub_1BD5D8744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C998);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18[-v6];
  v19 = a2;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C9A0);
  sub_1BD5DB1D4(&qword_1EBD4C9A8, &qword_1EBD4C9A0, &unk_1BE0E6BE0, sub_1BD5DA8A4);
  sub_1BE0504A4();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v8 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C9D0) + 36)];
  v9 = v26;
  v8[4] = v25;
  v8[5] = v9;
  v8[6] = v27;
  v10 = v22;
  *v8 = v21;
  v8[1] = v10;
  v11 = v24;
  v8[2] = v23;
  v8[3] = v11;
  v12 = sub_1BE051274();
  v13 = sub_1BE0501D4();
  v14 = sub_1BE051CD4();
  v15 = &v7[*(v4 + 36)];
  *v15 = v12;
  v15[8] = v13;
  *(v15 + 2) = v14;
  *(v15 + 3) = v16;
  sub_1BD5DA968();
  sub_1BD5DAAD8();
  sub_1BD5DAB2C();
  sub_1BE048964();
  sub_1BE050D64();

  return sub_1BD0DE53C(v7, &qword_1EBD4C998);
}

uint64_t sub_1BD5D899C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C9B8);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for IdentityPassMethodSheet();
  v11 = a1 + v10[5];
  if (*(*(v11 + *(type metadata accessor for Passes(0) + 28)) + 16) || PKOslo2024UIUpdatesEnabled() && *(*(a1 + v10[10]) + 16))
  {
    v12 = (a1 + v10[8]);
    v13 = v12[1];
    v21 = *v12;
    v22 = v13;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v21 = sub_1BE0506C4();
    v22 = v14;
    v23 = v15 & 1;
    v24 = v16;
    MEMORY[0x1EEE9AC00](v21, v14);
    *(&v19 - 2) = a1;
    *(&v19 - 1) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C9C8);
    sub_1BD0DE4F4(&qword_1EBD4C9C0, &qword_1EBD4C9C8);
    sub_1BE051A24();
    (*(v20 + 32))(a3, v9, v6);
    return (*(v20 + 56))(a3, 0, 1, v6);
  }

  else
  {
    v18 = *(v20 + 56);

    return v18(a3, 1, 1, v6);
  }
}

void sub_1BD5D8C2C()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69BB6D8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = v3;
  v10 = v7;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD5DB6E4(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v11 = sub_1BE052224();

  [v0 subject:v1 sendEvent:v11];
}

uint64_t sub_1BD5D8DB4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F30);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v37 = &v35 - v8;
  v9 = type metadata accessor for AvailablePass(0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v12 = type metadata accessor for IdentityPassMethodSheet();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v15);
  v16 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(v9 + 56));
  if (v17 >> 62)
  {
    if (sub_1BE053704() > 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = *(a1 + *(v9 + 60));
    if (v20 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_7;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      v21 = a2;
      v18 = a2;
      v19 = a2;
      goto LABEL_10;
    }

    v19 = 0;
    v18 = a2;
    goto LABEL_10;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = 0;
  v19 = 0;
LABEL_10:
  v22 = sub_1BD5D9284(a1, v18);
  sub_1BD5DB354(v3, &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentityPassMethodSheet);
  sub_1BD5DB354(a1, &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AvailablePass);
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = (v14 + *(v36 + 80) + v23) & ~*(v36 + 80);
  v25 = swift_allocObject();
  sub_1BD5DB3BC(v16, v25 + v23, type metadata accessor for IdentityPassMethodSheet);
  v26 = sub_1BD5DB3BC(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for AvailablePass);
  *(v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  MEMORY[0x1EEE9AC00](v26, v27);
  *(&v35 - 4) = a1;
  *(&v35 - 3) = v19;
  *(&v35 - 16) = v22 & 1;
  type metadata accessor for PassRow(0);
  sub_1BD5DB6E4(&qword_1EBD397D8, type metadata accessor for PassRow);
  v28 = a2;
  sub_1BE048964();
  v29 = v37;
  sub_1BE051704();
  LOBYTE(v23) = sub_1BE053B84();

  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v23 & 1;
  v32 = v40;
  (*(v38 + 32))(v40, v29, v39);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F20);
  v34 = (v32 + *(result + 36));
  *v34 = KeyPath;
  v34[1] = sub_1BD10DF54;
  v34[2] = v31;
  return result;
}

id sub_1BD5D9284(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v39 - v19);
  sub_1BD5DB354(a1, &v39 - v19, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1BD5DB3BC(v20, v12, type metadata accessor for PlaceholderPass);
      v25 = *(v12 + 2);
      v27 = *(v12 + 3);
      sub_1BE048C84();
      sub_1BD5DB58C(v12, type metadata accessor for PlaceholderPass);
LABEL_8:
      v28 = v2 + *(type metadata accessor for IdentityPassMethodSheet() + 20);
      sub_1BD5DB51C(v28, v8);
      v29 = type metadata accessor for AvailablePass(0);
      if ((*(*(v29 - 8) + 48))(v8, 1, v29) == 1)
      {
        sub_1BD0DE53C(v8, &qword_1EBD520A0);

        goto LABEL_10;
      }

      sub_1BD5DB354(v8, v16, type metadata accessor for WrappedPass);
      sub_1BD5DB58C(v8, type metadata accessor for AvailablePass);
      v31 = sub_1BD492F00();
      v33 = v32;
      sub_1BD5DB58C(v16, type metadata accessor for WrappedPass);
      if (v25 == v31 && v27 == v33)
      {

        if (a2)
        {
LABEL_18:
          v36 = *(v28 + *(type metadata accessor for Passes(0) + 20));
          if (v36)
          {
            sub_1BD131A80();
            v37 = a2;
            v38 = v36;
            v30 = sub_1BE053074();

            return (v30 & 1);
          }

LABEL_10:
          v30 = 0;
          return (v30 & 1);
        }
      }

      else
      {
        v35 = sub_1BE053B84();

        if ((v35 & 1) == 0)
        {
          goto LABEL_10;
        }

        if (a2)
        {
          goto LABEL_18;
        }
      }

      v30 = 1;
      return (v30 & 1);
    }

    v22 = *v20;
    result = [*v20 passIdentifier];
    if (result)
    {
LABEL_6:
      v24 = result;
      v25 = sub_1BE052434();
      v27 = v26;

      goto LABEL_8;
    }

    __break(1u);
  }

  v22 = *v20;
  result = [*v20 uniqueID];
  if (result)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1BD5D963C(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v46, v5);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for IdentityPassMethodSheet();
  v13 = *(v2 + *(v12 + 24));
  sub_1BD5DB354(a1, v11, type metadata accessor for AvailablePass);
  v14 = type metadata accessor for AvailablePass(0);
  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  v13(v11, a2);
  v15 = sub_1BD0DE53C(v11, &qword_1EBD520A0);
  (*(v2 + *(v12 + 44)))(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v17 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v18 = sub_1BE052434();
  v19 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v18;
  *(inited + 48) = v20;
  v21 = *v19;
  *(inited + 56) = *v19;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v22;
  v23 = v17;
  v24 = v21;
  v25 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v48 = v25;
  sub_1BD5DB354(a1, v7, type metadata accessor for WrappedPass);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BD5DB58C(v7, type metadata accessor for WrappedPass);
  }

  else
  {
    v26 = *v7;
    v27 = *MEMORY[0x1E69BA960];
    v28 = [v26 issuerAdministrativeAreaCode];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1BE052434();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    sub_1BD6B05C0(v30, v32, v27);
    v33 = *MEMORY[0x1E69BAC88];
    v34 = objc_opt_self();
    v35 = v33;
    v36 = [v34 identityProductSubtypeForPass_];
    v37 = sub_1BE052434();
    v39 = v38;

    v40 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v40;
    sub_1BD1DAE70(v37, v39, v35, isUniquelyReferenced_nonNull_native);
  }

  v42 = objc_opt_self();
  v43 = *MEMORY[0x1E69BB6D8];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD5DB6E4(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v44 = sub_1BE052224();

  [v42 subject:v43 sendEvent:v44];
}

id sub_1BD5D9A6C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  sub_1BD5DB354(a1, a4, type metadata accessor for AvailablePass);
  *(a4 + v8) = a2;
  *(a4 + v9) = 0;
  type metadata accessor for PassRow.Pass(0);
  swift_storeEnumTagMultiPayload();
  *(a4 + *(type metadata accessor for PassRow(0) + 20)) = a3;

  return a2;
}

uint64_t sub_1BD5D9B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  v4 = type metadata accessor for IdentityPassMethodSheet();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CA08);
  v34 = *(v9 - 8);
  v10 = v34;
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v38 = &v34 - v15;
  v16 = a1 + *(v5 + 28);
  v40[0] = *(v16 + *(type metadata accessor for Passes(0) + 28));
  sub_1BD5DB354(a1, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentityPassMethodSheet);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_1BD5DB3BC(&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for IdentityPassMethodSheet);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CA10);
  sub_1BD0DE4F4(&qword_1EBD47DD8, &qword_1EBD47DC8);
  sub_1BD5DB1D4(&qword_1EBD4CA18, &qword_1EBD4CA10, &unk_1BE0E6C20, sub_1BD4CEB24);
  sub_1BD5DB6E4(&qword_1EBD47DE8, type metadata accessor for AvailablePass);
  v19 = v38;
  sub_1BE0519D4();
  sub_1BD5DA1FC(v36, v40);
  v20 = v40[1];
  v36 = v40[0];
  v21 = v40[2];
  v22 = v40[3];
  v23 = v40[4];
  v24 = v40[5];
  v25 = *(v10 + 16);
  v26 = v39;
  v27 = v19;
  v28 = v35;
  v25(v39, v27, v35);
  v29 = v37;
  v25(v37, v26, v28);
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CA20) + 48)];
  v31 = v36;
  *v30 = v36;
  *(v30 + 1) = v20;
  *(v30 + 2) = v21;
  *(v30 + 3) = v22;
  *(v30 + 4) = v23;
  *(v30 + 5) = v24;
  sub_1BD0EE87C(v31, v20);
  v32 = *(v34 + 8);
  v32(v38, v28);
  sub_1BD4CE958(v31, v20);
  return (v32)(v39, v28);
}

uint64_t sub_1BD5D9F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD5DB354(a1, v16, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD5DB58C(v16, type metadata accessor for WrappedPass);
LABEL_11:
      v23 = 1;
      return (*(v5 + 56))(a2, v23, 1, v4);
    }

    sub_1BD5DB3BC(v16, v12, type metadata accessor for PlaceholderPass);
    v19 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v19 setCardType_];
    sub_1BD5DB58C(v12, type metadata accessor for PlaceholderPass);
  }

  else
  {
    v18 = *v16;
    v19 = [*v16 secureElementPass];

    if (!v19)
    {
      goto LABEL_11;
    }
  }

  if (![v19 isIdentityPass] || (WrappedPass.devicePrimaryPaymentApplication.getter(), !v20))
  {

    goto LABEL_11;
  }

  v21 = v20;
  v22 = v20;
  sub_1BD5D8DB4(a1, v21, v8);

  sub_1BD5DB2E4(v8, a2);
  v23 = 0;
  return (*(v5 + 56))(a2, v23, 1, v4);
}

id sub_1BD5DA1FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for IdentityPassMethodSheet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKOslo2024UIUpdatesEnabled();
  if (!result || (v35 = v6, v15 = *(v2 + *(v5 + 40)), !*(v15 + 16)))
  {
    v17 = 0;
    v19 = 0;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
LABEL_9:
    *a2 = v17;
    a2[1] = v19;
    a2[2] = v23;
    a2[3] = v25;
    a2[4] = v26;
    a2[5] = v27;
    return result;
  }

  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  (*(v10 + 104))(v13, *MEMORY[0x1E69B8068], v9);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v10 + 8))(v13, v9);
    v20 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v22 = [v20 stringFromNumber_];

    if (v22)
    {
      v23 = sub_1BE052434();
      v25 = v24;
    }

    else
    {

      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v28 = v35;
    v29 = v33;
    sub_1BD5DB354(v2, v33, type metadata accessor for IdentityPassMethodSheet);
    v30 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v34;
    sub_1BD5DB3BC(v29, v27 + v30, type metadata accessor for IdentityPassMethodSheet);
    v31 = (v27 + ((v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = v17;
    v31[1] = v19;
    sub_1BE048964();
    result = sub_1BE048C84();
    v26 = sub_1BD5DB250;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD5DA540()
{
  sub_1BD6B2184(11, 2u, 0);
  type metadata accessor for IdentityPassMethodSheet();
  swift_getKeyPath();
  sub_1BD5DB6E4(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  sub_1BD5DAAD8();
  sub_1BE04E904();
  swift_endAccess();

  swift_getKeyPath();
  sub_1BE04B5A4();
}

uint64_t sub_1BD5DA704()
{
  v1 = *(type metadata accessor for IdentityPassMethodSheet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD5D8628(v2);
}

uint64_t sub_1BD5DA764(uint64_t a1)
{
  v3 = *(type metadata accessor for IdentityPassMethodSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD5D8744(a1, v4);
}

unint64_t sub_1BD5DA7E4()
{
  result = qword_1EBD4C988;
  if (!qword_1EBD4C988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C980);
    sub_1BD0DE4F4(&qword_1EBD4C990, &qword_1EBD4C978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C988);
  }

  return result;
}

unint64_t sub_1BD5DA8A4()
{
  result = qword_1EBD4C9B0;
  if (!qword_1EBD4C9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C9B8);
    sub_1BD0DE4F4(&qword_1EBD4C9C0, &qword_1EBD4C9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C9B0);
  }

  return result;
}

unint64_t sub_1BD5DA968()
{
  result = qword_1EBD4C9D8;
  if (!qword_1EBD4C9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C998);
    sub_1BD5DAA20();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C9D8);
  }

  return result;
}

unint64_t sub_1BD5DAA20()
{
  result = qword_1EBD4C9E0;
  if (!qword_1EBD4C9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C9D0);
    sub_1BD0DE4F4(&qword_1EBD4C9E8, &qword_1EBD4C9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C9E0);
  }

  return result;
}

unint64_t sub_1BD5DAAD8()
{
  result = qword_1EBD4C9F8;
  if (!qword_1EBD4C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C9F8);
  }

  return result;
}

unint64_t sub_1BD5DAB2C()
{
  result = qword_1EBD4CA00;
  if (!qword_1EBD4CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CA00);
  }

  return result;
}

uint64_t objectdestroyTm_67()
{
  v1 = type metadata accessor for IdentityPassMethodSheet();
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
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
      v28 = *(v21 - 8);
      v22 = *(v28 + 48);
      if (!v22(&v18[v20], 1, v21))
      {
        (*(v28 + 8))(&v18[v20], v21);
      }

      v23 = *(v19 + 32);
      if (!v22(&v18[v23], 1, v21))
      {
        (*(v28 + 8))(&v18[v23], v21);
      }
    }

    v24 = (v4 + v5[12]);
    if (*v24)
    {
    }

    v25 = (v4 + v5[13]);
    if (*v25)
    {
    }
  }

  v26 = v3 + *(v1 + 48);
  if (*(v26 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD5DB154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for IdentityPassMethodSheet();

  return sub_1BD5D9F34(a1, a2);
}

uint64_t sub_1BD5DB1D4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_1BD5DB250()
{
  type metadata accessor for IdentityPassMethodSheet();

  return sub_1BD5DA540();
}

uint64_t sub_1BD5DB2E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5DB354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5DB3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD5DB424()
{
  v1 = *(type metadata accessor for IdentityPassMethodSheet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AvailablePass(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  sub_1BD5D963C(v0 + v5, *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1BD5DB51C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5DB58C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD5DB5EC()
{
  result = qword_1EBD4CA28;
  if (!qword_1EBD4CA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CA30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C980);
    sub_1BD5DA7E4();
    swift_getOpaqueTypeConformance2();
    sub_1BD5DB6E4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CA28);
  }

  return result;
}

uint64_t sub_1BD5DB6E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD5DB72C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BD0E5E8C(0, &qword_1EBD43BA0);
    sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0);
    sub_1BE052A74();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
    sub_1BE048C84();
    v4 = 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1BE053744() || (sub_1BD0E5E8C(0, &qword_1EBD43BA0), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_1BD0D45FC();
      return;
    }

LABEL_17:
    v12 = [v11 applicationIdentifier];
    if (v12)
    {
      v13 = v12;
      v19 = sub_1BE052434();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1BD03B038(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_1BD03B038((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1BD5DB9DC()
{
  v1 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v21 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SEStorageUsageGroup(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups;
  swift_beginAccess();
  v11 = *(v0 + v10);
  v12 = MEMORY[0x1E69E7CC0];
  v24 = *(v11 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (!v24)
  {
    return v12;
  }

  v22 = v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  result = sub_1BE048C84();
  v14 = 0;
  v23 = result;
  while (v14 < *(result + 16))
  {
    v15 = v6;
    sub_1BD5F050C(v22 + *(v6 + 72) * v14, v9, type metadata accessor for SEStorageUsageGroup);
    v16 = *(*v9 + 16);
    if (v16)
    {
      v17 = *v9 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
      v18 = *(v21 + 72);
      do
      {
        sub_1BD5F050C(v17, v4, type metadata accessor for SEStorageUsageGroup.PassEntry);
        if (*(v4 + *(v1 + 32)))
        {
          v19 = *v4;
          MEMORY[0x1BFB3F7A0]();
          if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v20[1] = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BE052774();
          }

          sub_1BE0527C4();
          sub_1BD5F0574(v4, type metadata accessor for SEStorageUsageGroup.PassEntry);
          v12 = v25;
        }

        else
        {
          sub_1BD5F0574(v4, type metadata accessor for SEStorageUsageGroup.PassEntry);
        }

        v17 += v18;
        --v16;
      }

      while (v16);
    }

    ++v14;
    sub_1BD5F0574(v9, type metadata accessor for SEStorageUsageGroup);
    result = v23;
    v6 = v15;
    if (v14 == v24)
    {

      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD5DBCC8(uint64_t a1, int a2)
{
  LODWORD(v166) = a2;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v144 = &v124[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v124[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v146 = &v124[-v14];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  MEMORY[0x1EEE9AC00](v150, v15);
  v130 = &v124[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17, v18);
  v149 = &v124[-v19];
  v20 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v141 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20, v21);
  v139 = &v124[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23, v24);
  v133 = &v124[-v25];
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v124[-v28];
  MEMORY[0x1EEE9AC00](v30, v31);
  v167 = &v124[-v32];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46818);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v128 = &v124[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36, v37);
  v140 = &v124[-v38];
  v153 = type metadata accessor for SEStorageUsageGroup(0);
  v39 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v40);
  v129 = &v124[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v42, v43);
  v152 = &v124[-v44];
  MEMORY[0x1EEE9AC00](v45, v46);
  v157 = &v124[-v47];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v172)
  {
    return result;
  }

  v49 = v146;
  v134 = *(a1 + 16);
  if (!v134)
  {
    return sub_1BD5E0C8C();
  }

  v132 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v136 = a1 + v132;
  v138 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups;
  swift_beginAccess();
  v135 = (v141 + 56);
  v165 = *(v39 + 72);
  v147 = (v5 + 48);
  v142 = (v5 + 32);
  v143 = (v5 + 8);
  v126 = (v141 + 48);
  v125 = v166 & 1;
  v50 = &unk_1EBD39970;
  v148 = v4;
  v51 = 0;
  v154 = v29;
  v131 = v2;
  v127 = v11;
  v145 = v20;
  while (1)
  {
    v52 = v157;
    sub_1BD5F050C(v136 + v165 * v51, v157, type metadata accessor for SEStorageUsageGroup);
    (*v135)(v140, 1, 1, v20);
    v53 = *(v2 + v138);
    v164 = *(v53 + 16);
    if (!v164)
    {
LABEL_57:
      sub_1BD0DE53C(v140, &qword_1EBD46818);
      v97 = v52;
      goto LABEL_58;
    }

    v137 = v51;
    v166 = *v52;
    v163 = v53 + v132;
    result = sub_1BE048C84();
    v54 = 0;
    v55 = v152;
    v156 = v53;
    while (1)
    {
      if (v54 >= *(v53 + 16))
      {
        goto LABEL_101;
      }

      v162 = v54 * v165;
      sub_1BD5F050C(v163 + v54 * v165, v55, type metadata accessor for SEStorageUsageGroup);
      v58 = *v55;
      v59 = *(*v55 + 16);
      if (v59 != *(v166 + 16))
      {
        goto LABEL_9;
      }

      if (v59 && v58 != v166)
      {
        v60 = v141;
        v61 = (*(v141 + 80) + 32) & ~*(v141 + 80);
        v161 = v58 + v61;
        v159 = v166 + v61;
        v158 = sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
        v62 = 0;
        v160 = *(v60 + 72);
        v57 = v154;
        v155 = v54;
        v151 = v59;
        while (1)
        {
          v63 = v160 * v62;
          result = sub_1BD5F050C(v161 + v160 * v62, v167, type metadata accessor for SEStorageUsageGroup.PassEntry);
          if (v62 == v59)
          {
            goto LABEL_102;
          }

          v64 = v49;
          sub_1BD5F050C(v159 + v63, v57, type metadata accessor for SEStorageUsageGroup.PassEntry);
          result = sub_1BE053074();
          if ((result & 1) == 0)
          {
            goto LABEL_8;
          }

          v65 = *(v167 + 1);
          v66 = *(v57 + 8);
          v67 = *(v65 + 16);
          if (v67 != *(v66 + 16))
          {
            goto LABEL_8;
          }

          v68 = !v67 || v65 == v66;
          if (!v68)
          {
            break;
          }

LABEL_23:
          v69 = v20[6];
          v70 = *(v150 + 48);
          v71 = v149;
          sub_1BD0DE19C(&v167[v69], v149, v50);
          sub_1BD0DE19C(v57 + v69, &v71[v70], v50);
          v72 = v50;
          v73 = *v147;
          v74 = v148;
          if ((*v147)(v71, 1, v148) == 1)
          {
            v68 = v73(&v71[v70], 1, v74) == 1;
            v56 = v71;
            v54 = v155;
            if (!v68)
            {
              goto LABEL_7;
            }

            v50 = &unk_1EBD39970;
            sub_1BD0DE53C(v71, &unk_1EBD39970);
            v20 = v145;
            v57 = v154;
          }

          else
          {
            sub_1BD0DE19C(v71, v64, v50);
            if (v73(&v71[v70], 1, v74) == 1)
            {
              (*v143)(v64, v74);
              v56 = v71;
              v54 = v155;
              v53 = v156;
LABEL_7:
              sub_1BD0DE53C(v56, &qword_1EBD3A750);
              v20 = v145;
              v57 = v154;
              v50 = &unk_1EBD39970;
LABEL_8:
              sub_1BD5F0574(v57, type metadata accessor for SEStorageUsageGroup.PassEntry);
              sub_1BD5F0574(v167, type metadata accessor for SEStorageUsageGroup.PassEntry);
              v55 = v152;
              v49 = v64;
              goto LABEL_9;
            }

            v75 = v144;
            (*v142)(v144, &v71[v70], v74);
            sub_1BD5F047C(&qword_1EBD3E460, MEMORY[0x1E6969530]);
            v76 = sub_1BE052334();
            v77 = *v143;
            v78 = v146;
            (*v143)(v75, v74);
            v64 = v78;
            v77(v78, v74);
            sub_1BD0DE53C(v71, v72);
            v20 = v145;
            v57 = v154;
            v50 = v72;
            v54 = v155;
            v53 = v156;
            if ((v76 & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          if (*&v167[v20[7]] != *(v57 + v20[7]))
          {
            goto LABEL_8;
          }

          v79 = v20[8];
          v80 = v167;
          v81 = v167[v79];
          v82 = *(v57 + v79);
          sub_1BD5F0574(v57, type metadata accessor for SEStorageUsageGroup.PassEntry);
          v83 = v80;
          v53 = v156;
          sub_1BD5F0574(v83, type metadata accessor for SEStorageUsageGroup.PassEntry);
          v68 = v81 == v82;
          v55 = v152;
          v49 = v64;
          v59 = v151;
          if (!v68)
          {
            goto LABEL_9;
          }

          if (++v62 == v151)
          {
            goto LABEL_42;
          }
        }

        v84 = (v65 + 40);
        v85 = (v66 + 40);
        while (v67)
        {
          result = *(v84 - 1);
          if (result != *(v85 - 1) || *v84 != *v85)
          {
            result = sub_1BE053B84();
            if ((result & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v84 += 2;
          v85 += 2;
          if (!--v67)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

LABEL_42:
      sub_1BE04C164();
      sub_1BD5F047C(&qword_1EBD3A358, MEMORY[0x1E69B8260]);
      sub_1BE0526E4();
      sub_1BE0526E4();
      if (v168 == v170 && v169 == v171)
      {
      }

      else
      {
        v87 = sub_1BE053B84();

        if ((v87 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      if (*(v55 + *(v153 + 24)) == *(v157 + *(v153 + 24)) && *(v55 + *(v153 + 28)) == *(v157 + *(v153 + 28)))
      {
        break;
      }

LABEL_9:
      result = sub_1BD5F0574(v55, type metadata accessor for SEStorageUsageGroup);
      if (++v54 == v164)
      {

        v2 = v131;
        v52 = v157;
        v51 = v137;
        goto LABEL_57;
      }
    }

    result = sub_1BD5F0574(v55, type metadata accessor for SEStorageUsageGroup);
    v88 = *(v131 + v138);
    if (v54 >= *(v88 + 16))
    {
      goto LABEL_104;
    }

    v89 = v129;
    sub_1BD5F050C(v88 + v132 + v162, v129, type metadata accessor for SEStorageUsageGroup);
    v90 = v128;
    sub_1BD0DE19C(v140, v128, &qword_1EBD46818);
    if ((*v126)(v90, 1, v20) == 1)
    {
      sub_1BD0DE53C(v90, &qword_1EBD46818);
      v91 = *v89;
      v92 = *(*v89 + 16);
      v93 = v157;
      v51 = v137;
      if (v92)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_1BD4FFFCC(v91);
        }

        v94 = v91 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
        v95 = *(v141 + 72);
        v96 = v125;
        do
        {
          v94[v20[8]] = v96;
          v94 += v95;
          --v92;
        }

        while (v92);
        *v89 = v91;
      }

      goto LABEL_90;
    }

    sub_1BD5F05D4(v90, v133, type metadata accessor for SEStorageUsageGroup.PassEntry);
    v158 = *v89;
    v98 = *(v158 + 16);
    v99 = v139;
    if (v98)
    {
      break;
    }

LABEL_88:
    sub_1BD5F0574(v133, type metadata accessor for SEStorageUsageGroup.PassEntry);
    v89 = v129;
LABEL_89:
    v93 = v157;
    v51 = v137;
LABEL_90:
    v2 = v131;
    v120 = v138;
    swift_beginAccess();
    v121 = *(v2 + v120);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v120) = v121;
    if ((result & 1) == 0)
    {
      result = sub_1BD4FFFB8(v121);
      v121 = result;
      *(v2 + v138) = result;
    }

    if (v54 >= v121[2])
    {
      goto LABEL_105;
    }

    sub_1BD5F0418(v89, v121 + v132 + v162);
    *(v2 + v138) = v121;
    swift_endAccess();
    sub_1BD0DE53C(v140, &qword_1EBD46818);
    sub_1BD5F0574(v93, type metadata accessor for SEStorageUsageGroup);
    v97 = v89;
    v49 = v146;
    v50 = &unk_1EBD39970;
LABEL_58:
    ++v51;
    sub_1BD5F0574(v97, type metadata accessor for SEStorageUsageGroup);
    if (v51 == v134)
    {
      return sub_1BD5E0C8C();
    }
  }

  v100 = sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  v101 = 0;
  v166 = *v133;
  v102 = (*(v141 + 80) + 32) & ~*(v141 + 80);
  v155 = v54;
  v156 = v102;
  v164 = v158 + v102;
  v163 = *(v141 + 72);
  v160 = v98;
  v161 = v100;
  while (1)
  {
    v103 = v163 * v101;
    sub_1BD5F050C(v164 + v163 * v101, v99, type metadata accessor for SEStorageUsageGroup.PassEntry);
    result = sub_1BE053074();
    if ((result & 1) == 0)
    {
      goto LABEL_64;
    }

    v104 = *(v139 + 1);
    v105 = v133[1];
    v106 = *(v104 + 16);
    if (v106 != *(v105 + 16))
    {
      goto LABEL_64;
    }

    if (v106)
    {
      v107 = v104 == v105;
    }

    else
    {
      v107 = 1;
    }

    if (!v107)
    {
      v117 = (v104 + 40);
      v118 = (v105 + 40);
      while (v106)
      {
        result = *(v117 - 1);
        if (result != *(v118 - 1) || *v117 != *v118)
        {
          result = sub_1BE053B84();
          if ((result & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        v117 += 2;
        v118 += 2;
        if (!--v106)
        {
          goto LABEL_72;
        }
      }

      goto LABEL_103;
    }

LABEL_72:
    v108 = v20[6];
    v109 = *(v150 + 48);
    v110 = v130;
    sub_1BD0DE19C(&v139[v108], v130, &unk_1EBD39970);
    sub_1BD0DE19C(v133 + v108, &v110[v109], &unk_1EBD39970);
    v111 = *v147;
    v112 = v148;
    if ((*v147)(v110, 1, v148) == 1)
    {
      break;
    }

    v114 = v127;
    sub_1BD0DE19C(v110, v127, &unk_1EBD39970);
    if (v111(&v110[v109], 1, v112) == 1)
    {
      (*v143)(v114, v112);
      v54 = v155;
LABEL_63:
      sub_1BD0DE53C(v110, &qword_1EBD3A750);
      v98 = v160;
      goto LABEL_64;
    }

    v115 = v144;
    (*v142)(v144, &v110[v109], v112);
    sub_1BD5F047C(&qword_1EBD3E460, MEMORY[0x1E6969530]);
    LODWORD(v159) = sub_1BE052334();
    v116 = *v143;
    (*v143)(v115, v112);
    v116(v114, v112);
    sub_1BD0DE53C(v110, &unk_1EBD39970);
    v54 = v155;
    v98 = v160;
    if (v159)
    {
      goto LABEL_77;
    }

LABEL_64:
    v99 = v139;
    sub_1BD5F0574(v139, type metadata accessor for SEStorageUsageGroup.PassEntry);
    if (++v101 == v98)
    {
      goto LABEL_88;
    }
  }

  v113 = v111(&v110[v109], 1, v112);
  v54 = v155;
  if (v113 != 1)
  {
    goto LABEL_63;
  }

  sub_1BD0DE53C(v110, &unk_1EBD39970);
  v98 = v160;
LABEL_77:
  if (*&v139[v20[7]] != *(v133 + v20[7]) || v139[v20[8]] != *(v133 + v20[8]))
  {
    goto LABEL_64;
  }

  sub_1BD5F0574(v139, type metadata accessor for SEStorageUsageGroup.PassEntry);
  v122 = v158;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v122 = sub_1BD4FFFCC(v122);
  }

  v89 = v129;
  result = sub_1BD5F0574(v133, type metadata accessor for SEStorageUsageGroup.PassEntry);
  if (v101 < v122[2])
  {
    *(v122 + v156 + v103 + v20[8]) = v125;
    *v89 = v122;
    goto LABEL_89;
  }

LABEL_106:
  __break(1u);
  return result;
}

uint64_t sub_1BD5DD054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1BD5DD098@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 32);
    v4 = *(result + 40);
    v5 = HIDWORD(v3);
    v6 = HIWORD(v3);
    v7 = v4 >> 16;
    v8 = HIDWORD(v4);
    v9 = HIWORD(v4);
    v10 = *(result + 48);
    v11 = v2 - 1;
    if (v11)
    {
      v20 = a2;
      v12 = HIWORD(v10);
      v13 = (result + 70);
      do
      {
        v28 = v6;
        v29 = v11;
        v30 = v7;
        v26 = *(v13 - 7);
        v27 = *(v13 - 9);
        v24 = *(v13 - 5);
        v25 = *(v13 - 6);
        v22 = *(v13 - 3);
        v23 = *(v13 - 4);
        v14 = v3 | (v5 << 32) | (v6 << 48);
        v21 = *(v13 - 2);
        v15 = v4 | (v7 << 16);
        v16 = *(v13 - 1);
        v18 = *v13;
        v13 += 10;
        v17 = v18;
        v19 = v3;
        result = MEMORY[0x1BFB403F0](v14, v15 | (v8 << 32) | (v9 << 48), v10 | (v12 << 16), v27 | (v26 << 32) | (v25 << 48), v24 | (v23 << 16) | (v22 << 32) | (v21 << 48), v16 | (v18 << 16));
        if (result)
        {
          LOWORD(v12) = v17;
          LOWORD(v10) = v16;
          v9 = v21;
        }

        else
        {
          v9 = v9;
        }

        if (result)
        {
          LOWORD(v8) = v22;
          LODWORD(v7) = v23;
        }

        else
        {
          LODWORD(v7) = v30;
        }

        if (result)
        {
          LOWORD(v4) = v24;
          v6 = v25;
        }

        else
        {
          v6 = v28;
        }

        if (result)
        {
          LOWORD(v5) = v26;
          LODWORD(v3) = v27;
        }

        else
        {
          LODWORD(v3) = v19;
        }

        v11 = v29 - 1;
      }

      while (v29 != 1);
      v10 = v10 | (v12 << 16);
      a2 = v20;
    }

    *a2 = (v5 << 32) | (v6 << 48) | v3;
    *(a2 + 8) = (v8 << 32) | (v9 << 48) | (v7 << 16) | v4;
    *(a2 + 16) = v10;
    *(a2 + 20) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 20) = 1;
  }

  return result;
}

uint64_t sub_1BD5DD258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](*(v4 - 8), v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v8, v9);
  v13 = &v25 - v11;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(v10 + 16);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v28 = v10;
    v26 = a2;
    v27 = v15;
    (v15)(&v25 - v11, v16, v4, v12.n128_f64[0]);
    result = v28;
    if (v14 == 1)
    {
LABEL_3:
      v18 = v26;
      (*(result + 32))(v26, v13, v4);
      return (*(v28 + 56))(v18, 0, 1, v4);
    }

    else
    {
      v20 = (v28 + 32);
      v21 = 1;
      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v27(v7, v16 + *(result + 72) * v21, v4);
        sub_1BD5F047C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
        v23 = sub_1BE0522F4();
        v24 = *(v28 + 8);
        if (v23)
        {
          v24(v13, v4);
          (*v20)(v13, v7, v4);
        }

        else
        {
          v24(v7, v4);
        }

        ++v21;
        result = v28;
        if (v22 == v14)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v19 = *(v10 + 56);

    return v19(a2, 1, 1, v4, v12);
  }

  return result;
}

uint64_t sub_1BD5DD508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccountBalance(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v8, v9);
  v13 = (&v20 - v11);
  v14 = *(a1 + 16);
  if (v14)
  {
    v21 = v10;
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    result = sub_1BD5F050C(v15, &v20 - v11, type metadata accessor for AccountBalance);
    if (v14 == 1)
    {
LABEL_3:
      sub_1BD5F05D4(v13, a2, type metadata accessor for AccountBalance);
      return (*(v21 + 56))(a2, 0, 1, v4);
    }

    else
    {
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        sub_1BD5F050C(v15 + *(v21 + 72) * v18, v7, type metadata accessor for AccountBalance);
        if (*v13 >= *v7)
        {
          result = sub_1BD5F0574(v7, type metadata accessor for AccountBalance);
        }

        else
        {
          sub_1BD5F0574(v13, type metadata accessor for AccountBalance);
          result = sub_1BD5F05D4(v7, v13, type metadata accessor for AccountBalance);
        }

        ++v18;
        if (v19 == v14)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v10 + 56);

    return v17(a2, 1, 1, v4, v12);
  }

  return result;
}

double sub_1BD5DD768@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = v6;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_1BD5DD7F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD5DD868()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

__n128 sub_1BD5DD908@<Q0>(__n128 *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  a1[2].n128_u8[0] = v6;
  return result;
}

uint64_t sub_1BD5DD994(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v239 = a5;
  v238 = a4;
  v240 = a3;
  v258 = a2;
  v242 = a1;
  v231 = sub_1BE04D214();
  v230 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231, v5);
  v232 = &v216 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CAF0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v253 = &v216 - v9;
  v250 = type metadata accessor for SEStorageUsageGroup(0);
  v249 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250, v10);
  v251 = &v216 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v256 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257, v12);
  v266 = &v216 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v265 = (&v216 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v261 = &v216 - v19;
  v252 = sub_1BE04C164();
  v237 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252, v20);
  v248 = &v216 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v267 = (&v216 - v24);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CAF8);
  v235 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236, v25);
  v268 = &v216 - v26;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v233 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234, v27);
  v29 = &v216 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB00);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v216 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v216 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v216 - v41;
  v43 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController__recommendedForDeleteCategory;
  v44 = type metadata accessor for SEStorageUsageCategory(0);
  (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
  sub_1BD0DE19C(v42, v38, &qword_1EBD46540);
  sub_1BE04D874();
  sub_1BD0DE53C(v42, &qword_1EBD46540);
  v224 = v31;
  v45 = *(v31 + 32);
  v223 = v43;
  v46 = v241;
  v225 = v30;
  v45(v241 + v43, v34, v30);
  v47 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController__loading;
  LOBYTE(v269) = 0;
  sub_1BE04D874();
  v48 = *(v233 + 32);
  v222 = v47;
  v49 = v46 + v47;
  v50 = v46;
  v51 = v234;
  v48(v49, v29, v234);
  v52 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController__showDeleteConfirmation;
  LOBYTE(v269) = 0;
  sub_1BE04D874();
  v220 = v52;
  v48(v50 + v52, v29, v51);
  v53 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController__deleteConfirmationAlertText;
  *&v269 = 0;
  *(&v269 + 1) = 0xE000000000000000;
  v270 = 0uLL;
  LOBYTE(v271) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CAE8);
  v54 = v268;
  sub_1BE04D874();
  v55 = *(v235 + 32);
  v221 = v53;
  v56 = v258;
  v55(v50 + v53, v54, v236);
  v57 = MEMORY[0x1E69E7CC0];
  *(v50 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groupIdentifiersRecommendedForDelete) = MEMORY[0x1E69E7CC0];
  *(v50 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletedPassEntries) = v57;
  v58 = (v50 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion);
  *v58 = 0;
  v58[1] = 0;
  v59 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter;
  v60 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v60 setNumberStyle_];
  [v60 setMinimumFractionDigits_];
  [v60 setMaximumFractionDigits_];
  *(v50 + v59) = v60;
  v61 = v239;
  v62 = v242;
  v63 = (v50 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion);
  *v63 = 0;
  v63[1] = 0;
  v64 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_device;
  v65 = sub_1BE04B944();
  v66 = *(v65 - 8);
  v67 = *(v66 + 16);
  v218 = v64;
  v67(v50 + v64, v62, v65);
  v68 = v240;
  v217 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_snapshot;
  *(v50 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_snapshot) = v56;
  v69 = (v50 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_sid);
  *v69 = v238;
  v69[1] = v61;
  v219 = v69;
  v70 = *(v68 + 16);
  v229 = v65;
  v228 = v66;
  if (v70)
  {
    *(v50 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_appletTypesToBeProvisioned) = v68;
    v71 = v56;
    sub_1BE048C84();
    sub_1BE048C84();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1BE0B69E0;
    v73 = v237;
    v74 = v267;
    v75 = v252;
    (*(v237 + 104))(v267, *MEMORY[0x1E69B8188], v252);
    v76 = v56;
    sub_1BE048C84();
    v77 = sub_1BE04C154();
    v79 = v78;
    (*(v73 + 8))(v74, v75);
    *(v72 + 32) = v77;
    *(v72 + 40) = v79;
    *(v241 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_appletTypesToBeProvisioned) = v72;
  }

  v80 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController__summary;
  swift_beginAccess();
  v269 = xmmword_1BE0E6CB0;
  v270 = xmmword_1BE0E6CC0;
  LOBYTE(v271) = 0;
  v272 = 0;
  v216 = v80;
  sub_1BE04D874();
  swift_endAccess();
  v81 = sub_1BE04B934();
  if ([v81 respondsToSelector_])
  {
    v82 = sub_1BE04B8E4();
    v83 = [v81 paymentWebService:v82 passesOfType:1];
    swift_unknownObjectRelease();
    if (v83)
    {
      sub_1BD0E5E8C(0, &qword_1EBD40650);
      v84 = sub_1BE052744();

      v85 = sub_1BD3FCF30(v84);

      if (v85)
      {
        v86 = v85;
      }

      else
      {
        v86 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v86 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v86 = MEMORY[0x1E69E7CC0];
  }

  v87 = sub_1BE04B934();
  if ([v87 respondsToSelector_])
  {
    v88 = [v87 allPaymentApplicationUsageSummaries];
    swift_unknownObjectRelease();
    if (v88)
    {
      sub_1BD0E5E8C(0, &qword_1EBD4CB10);
      v89 = sub_1BE052744();

      goto LABEL_16;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v89 = MEMORY[0x1E69E7CC0];
LABEL_16:
  *&v269 = MEMORY[0x1E69E7CC8];
  if (v89 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v91 = 0;
    v255 = 0;
    v92 = v89 & 0xC000000000000001;
    v93 = v89 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v92)
      {
        v94 = v89;
        v95 = MEMORY[0x1BFB40900](v91, v89);
      }

      else
      {
        if (v91 >= *(v93 + 16))
        {
          goto LABEL_28;
        }

        v94 = v89;
        v95 = *(v89 + 8 * v91 + 32);
      }

      v96 = v95;
      v97 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      v273 = v95;
      v98 = v255;
      sub_1BD5DF6C4(&v269, &v273);
      v99 = &v275;
      v255 = v98;
      if (v98)
      {
        goto LABEL_114;
      }

      ++v91;
      v89 = v94;
      if (v97 == i)
      {
        v100 = v269;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v255 = 0;
  v100 = MEMORY[0x1E69E7CC8];
LABEL_31:
  v226 = v86 >> 62;
  v262 = v100;
  if (v86 >> 62)
  {
    goto LABEL_110;
  }

  v101 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_33:
  v227 = v89;
  v245 = v86;
  v102 = 0;
  if (v101)
  {
    v103 = 0;
    v247 = v86 & 0xC000000000000001;
    v244 = v86 & 0xFFFFFFFFFFFFFF8;
    v104 = MEMORY[0x1E69E7CC8];
    v243 = (v86 + 32);
    v264 = xmmword_1BE0B69E0;
    v246 = v101;
    while (1)
    {
      if (v247)
      {
        v105 = v103;
        v106 = MEMORY[0x1BFB40900](v103, v86);
      }

      else
      {
        if (v103 >= *(v244 + 16))
        {
          goto LABEL_109;
        }

        v105 = v103;
        v106 = v243[v103];
      }

      v107 = v106;
      v108 = __OFADD__(v105, 1);
      v109 = v105 + 1;
      if (v108)
      {
        goto LABEL_108;
      }

      v254 = v109;
      if ([v106 isUserDeletable])
      {
        v110 = [v107 devicePaymentApplications];
        if (v110)
        {
          v111 = v110;
          sub_1BD0E5E8C(0, &qword_1EBD43BA0);
          sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0);
          v112 = sub_1BE052A34();

          v89 = v255;
          sub_1BD5DB72C(v112);
          v114 = &v275;
          v255 = v89;
          if (v89)
          {
            goto LABEL_116;
          }

          v115 = v113;
        }

        else
        {
          v115 = MEMORY[0x1E69E7CC0];
        }

        v116 = v102;
        v260 = *(v115 + 16);
        if (v260)
        {
          v117 = 0;
          v86 = v115 + 40;
          v268 = v107;
          v259 = v115;
          do
          {
            if (v117 >= *(v115 + 16))
            {
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
LABEL_109:
              __break(1u);
LABEL_110:
              v101 = sub_1BE053704();
              goto LABEL_33;
            }

            v263 = v117;
            v267 = v116;
            v118 = *(v86 - 8);
            v119 = *v86;
            v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
            v120 = swift_allocObject();
            *(v120 + 16) = v264;
            *(v120 + 32) = v118;
            *(v120 + 40) = v119;
            swift_bridgeObjectRetain_n();
            v89 = MEMORY[0x1E69E6158];
            v121 = sub_1BE052724();

            v122 = [v56 appletTypesForAppletIDs_];

            v123 = sub_1BE052744();
            if (!v123[2])
            {
              goto LABEL_105;
            }

            v89 = v104;
            v56 = v123[4];
            v124 = v123[5];
            sub_1BE048C84();

            v125 = [v107 uniqueID];
            if (!v125)
            {
              goto LABEL_112;
            }

            v126 = v125;
            v127 = sub_1BE052434();
            v129 = v128;

            if (v262[2])
            {
              v130 = sub_1BD148F70(v127, v129);
              v132 = v131;

              if (v132)
              {
                v133 = v261;
                v134 = *(v262[7] + 8 * v130);
                if (*(v134 + 16) && (sub_1BE048C84(), v135 = sub_1BD148F70(v118, v119), v137 = v136, , (v137 & 1) != 0))
                {
                  v138 = *(v134 + 56);
                  v139 = sub_1BE04AF64();
                  v140 = *(v139 - 8);
                  (*(v140 + 16))(v261, v138 + *(v140 + 72) * v135, v139);

                  (*(v140 + 56))(v261, 0, 1, v139);
                  v133 = v261;
                }

                else
                {

                  v142 = sub_1BE04AF64();
                  (*(*(v142 - 8) + 56))(v133, 1, 1, v142);
                }

                goto LABEL_60;
              }
            }

            else
            {
            }

            v141 = sub_1BE04AF64();
            v133 = v261;
            (*(*(v141 - 8) + 56))(v261, 1, 1, v141);
LABEL_60:
            v143 = swift_allocObject();
            *(v143 + 16) = v264;
            *(v143 + 32) = v56;
            *(v143 + 40) = v124;
            v144 = v257;
            v145 = v265;
            sub_1BD0DE19C(v133, v265 + *(v257 + 24), &unk_1EBD39970);
            v146 = v268;
            *v145 = v268;
            v145[1] = v143;
            *(v145 + *(v144 + 28)) = 0;
            *(v145 + *(v144 + 32)) = 0;
            sub_1BD5F050C(v145, v266, type metadata accessor for SEStorageUsageGroup.PassEntry);
            sub_1BE048C84();
            v147 = v146;
            sub_1BD0D4744(v267);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v269 = v89;
            v96 = sub_1BD148F70(v56, v124);
            v150 = *(v89 + 16);
            v151 = (v149 & 1) == 0;
            v152 = v150 + v151;
            if (__OFADD__(v150, v151))
            {
              goto LABEL_106;
            }

            v153 = v149;
            if (*(v89 + 24) >= v152)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1BD5079B4();
              }
            }

            else
            {
              sub_1BD502FE8(v152, isUniquelyReferenced_nonNull_native);
              v154 = sub_1BD148F70(v56, v124);
              if ((v153 & 1) != (v155 & 1))
              {
                goto LABEL_113;
              }

              v96 = v154;
            }

            v156 = v263;
            v157 = v269;
            if (v153)
            {
            }

            else
            {
              *(v269 + 8 * (v96 >> 6) + 64) |= 1 << v96;
              v158 = (v157[6] + 16 * v96);
              *v158 = v56;
              v158[1] = v124;
              *(v157[7] + 8 * v96) = MEMORY[0x1E69E7CC0];
              v159 = v157[2];
              v108 = __OFADD__(v159, 1);
              v160 = v159 + 1;
              if (v108)
              {
                goto LABEL_107;
              }

              v157[2] = v160;
            }

            v89 = v157;
            v161 = v157[7];
            v162 = *(v161 + 8 * v96);
            v163 = swift_isUniquelyReferenced_nonNull_native();
            *(v161 + 8 * v96) = v162;
            v56 = v258;
            if ((v163 & 1) == 0)
            {
              v162 = sub_1BD1D90EC(0, v162[2] + 1, 1, v162);
              *(v161 + 8 * v96) = v162;
            }

            v165 = v162[2];
            v164 = v162[3];
            if (v165 >= v164 >> 1)
            {
              *(v161 + 8 * v96) = sub_1BD1D90EC(v164 > 1, v165 + 1, 1, v162);
            }

            v117 = v156 + 1;
            sub_1BD5F0574(v265, type metadata accessor for SEStorageUsageGroup.PassEntry);
            sub_1BD0DE53C(v133, &unk_1EBD39970);
            v166 = *(v161 + 8 * v96);
            *(v166 + 16) = v165 + 1;
            sub_1BD5F05D4(v266, v166 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v165, type metadata accessor for SEStorageUsageGroup.PassEntry);
            v86 += 16;
            v116 = sub_1BD5DFB44;
            v104 = v157;
            v107 = v268;
            v115 = v259;
          }

          while (v260 != v117);
        }

        v102 = v116;

        v86 = v245;
      }

      else
      {
      }

      v103 = v254;
      if (v254 == v246)
      {
        goto LABEL_77;
      }
    }
  }

  v104 = MEMORY[0x1E69E7CC8];
LABEL_77:
  v267 = v102;

  v167 = *(v104 + 16);
  if (v167)
  {
    v168 = sub_1BD1DA0A8(*(v104 + 16), 0);
    v96 = sub_1BD5EDDF4(&v269, v168 + 4, v167, v104);
    swift_bridgeObjectRetain_n();
    v169 = v56;
    sub_1BD0D45FC();
    if (v96 != v167)
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      sub_1BE053C14();
      __break(1u);
LABEL_114:

      while (1)
      {
LABEL_115:
        v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB08);
        v213 = v241;
        (*(*(v212 - 8) + 8))(v241 + v216, v212);
        (*(v224 + 8))(v213 + v223, v225);
        v214 = *(v233 + 8);
        v215 = v234;
        v214(v213 + v222, v234);
        v214(v213 + v220, v215);
        (*(v235 + 8))(v213 + v221, v236);
        (*(v228 + 8))(v213 + v218, v229);

        sub_1BD0D4744(*(v213 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion));

        sub_1BD0D4744(*(v213 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion));
        type metadata accessor for SEStorageCleanupController();
        swift_deallocPartialClassInstance();
        __break(1u);
LABEL_116:
      }
    }

    v56 = v258;
  }

  else
  {
    v170 = v56;
    sub_1BE048C84();
    v168 = MEMORY[0x1E69E7CC0];
  }

  v273 = v168;
  v171 = v56;
  v172 = v255;
  sub_1BD5F031C(&v273, v171);
  if (v172)
  {

    goto LABEL_115;
  }

  *&v264 = v171;
  v173 = v273;
  v174 = v273[2];
  v175 = v237;
  if (v174)
  {
    v263 = v104;
    *&v269 = MEMORY[0x1E69E7CC0];
    sub_1BD532270(0, v174, 0);
    v176 = v269;
    v177 = (v175 + 32);
    LODWORD(v266) = *MEMORY[0x1E69B8228];
    v265 = (v175 + 104);
    v178 = (v175 + 48);
    v262 = v173;
    v179 = v173 + 6;
    do
    {
      v180 = *v179;
      swift_bridgeObjectRetain_n();
      sub_1BE048C84();
      v181 = v253;
      sub_1BE04C144();
      v182 = *v178;
      v183 = v252;
      if ((*v178)(v181, 1, v252) == 1)
      {
        v184 = *v265;
        v268 = v176;
        v185 = v177;
        v186 = v178;
        v187 = v248;
        v184(v248, v266, v183);
        v188 = v182(v181, 1, v183);
        v189 = v187;
        v178 = v186;
        v177 = v185;
        v176 = v268;
        if (v188 != 1)
        {
          sub_1BD0DE53C(v253, &qword_1EBD4CAF0);
        }
      }

      else
      {
        v189 = v248;
        (*v177)(v248, v181, v183);
      }

      v190 = v251;
      *v251 = v180;
      v191 = v250;
      (*v177)(&v190[*(v250 + 20)], v189, v183);
      v192 = v190;
      *&v190[*(v191 + 24)] = 0;
      *&v190[*(v191 + 28)] = 0;
      *&v269 = v176;
      v194 = *(v176 + 2);
      v193 = *(v176 + 3);
      if (v194 >= v193 >> 1)
      {
        sub_1BD532270(v193 > 1, v194 + 1, 1);
        v192 = v251;
        v176 = v269;
      }

      *(v176 + 2) = v194 + 1;
      sub_1BD5F05D4(v192, &v176[((*(v249 + 80) + 32) & ~*(v249 + 80)) + *(v249 + 72) * v194], type metadata accessor for SEStorageUsageGroup);
      v179 += 3;
      --v174;
    }

    while (v174);
    v104 = v263;
  }

  else
  {

    v176 = MEMORY[0x1E69E7CC0];
  }

  v195 = v241;
  *(v241 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups) = v176;
  swift_beginAccess();
  v273 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CAD0);
  v196 = v195;
  sub_1BE04D874();
  swift_endAccess();
  v197 = *(v104 + 16);
  if (v197)
  {
    v198 = sub_1BD1D9FA0(*(v104 + 16), 0);
    v199 = sub_1BD5EDC9C(&v269, v198 + 4, v197, v104);
    sub_1BD0D45FC();
    v200 = v232;
    if (v199 == v197)
    {
      goto LABEL_97;
    }

    __break(1u);
  }

  v198 = MEMORY[0x1E69E7CC0];
  v200 = v232;
LABEL_97:
  *(v196 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_knownAppletTypes) = v198;
  sub_1BD5DFC40();
  sub_1BD5E02A0();
  v273 = 0;
  v274 = 0xE000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BE053974();
  v202 = v273;
  v201 = v274;
  sub_1BE04D0D4();
  v203 = v239;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  v204 = sub_1BE04D204();
  v205 = sub_1BE052C54();

  if (os_log_type_enabled(v204, v205))
  {
    v206 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    *&v269 = v207;
    *v206 = 136315650;
    v208 = sub_1BD123690(v238, v203, &v269);

    *(v206 + 4) = v208;
    *(v206 + 12) = 2048;
    if (v226)
    {
      v209 = sub_1BE053704();
    }

    else
    {
      v209 = *((v245 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v206 + 14) = v209;

    *(v206 + 22) = 2080;
    v210 = sub_1BD123690(v202, v201, &v269);

    *(v206 + 24) = v210;
    _os_log_impl(&dword_1BD026000, v204, v205, "[%s] Initialized SEStorageCleanupController for %ld passes. Summary: %s", v206, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v207, -1, -1);
    MEMORY[0x1BFB45F20](v206, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v228 + 8))(v242, v229);
  (*(v230 + 8))(v200, v231);
  sub_1BD0D4744(v267);
  return v196;
}

uint64_t sub_1BD5DF6C4(void *a1, id *a2)
{
  v58 = a1;
  v3 = sub_1BE04AF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v56 - v17;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v56 - v22;
  v24 = *a2;
  v25 = [*a2 lastUsed];
  if (v25)
  {
    v26 = v25;
    sub_1BE04AEE4();

    v27 = v4[4];
    v27(v18, v7, v3);
    v29 = v4[7];
    v28 = v4 + 56;
    v29(v18, 0, 1, v3);
    v27(v23, v18, v3);
    v29(v23, 0, 1, v3);
  }

  else
  {
    v30 = v4[7];
    v31 = 1;
    v30(v18, 1, 1, v3);
    v32 = [v24 lastUsedTransaction];
    if (v32)
    {
      v33 = v32;
      sub_1BE04AEE4();

      v31 = 0;
    }

    v30(v14, v31, 1, v3);
    sub_1BD0DE204(v14, v23, &unk_1EBD39970);
    v34 = v4[6];
    v28 = v4 + 48;
    if (v34(v18, 1, v3) != 1)
    {
      sub_1BD0DE53C(v18, &unk_1EBD39970);
    }
  }

  v35 = [v24 passUniqueIdentifier];
  v36 = sub_1BE052434();
  v38 = v37;

  v39 = [v24 paymentApplicationIdentifier];
  v40 = sub_1BE052434();
  v42 = v41;

  sub_1BD0DE19C(v23, v57, &unk_1EBD39970);
  v43 = v58;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v43;
  v45 = v59;
  v47 = sub_1BD148F70(v36, v38);
  v48 = v45[2];
  v49 = (v46 & 1) == 0;
  v50 = v48 + v49;
  if (__OFADD__(v48, v49))
  {
    __break(1u);
    goto LABEL_17;
  }

  v28 = v46;
  if (v45[3] >= v50)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

LABEL_17:
    sub_1BD5079F0();
    goto LABEL_12;
  }

  sub_1BD503024(v50, isUniquelyReferenced_nonNull_native);
  v51 = sub_1BD148F70(v36, v38);
  if ((v28 & 1) != (v52 & 1))
  {
    result = sub_1BE053C14();
    __break(1u);
    return result;
  }

  v47 = v51;
LABEL_12:
  v53 = v59;
  *v58 = v59;
  if (v28)
  {
  }

  else
  {
    v54 = sub_1BD1AD96C(MEMORY[0x1E69E7CC0]);
    sub_1BD948B7C(v47, v36, v38, v54, v53);
  }

  sub_1BD6B08D0(v57, v40, v42);
  return sub_1BD0DE53C(v23, &unk_1EBD39970);
}

uint64_t sub_1BD5DFB54()
{
  type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  sub_1BE053974();
  sub_1BE053974();

  return 1;
}

uint64_t sub_1BD5DFC40()
{
  v1 = v0;
  v2 = type metadata accessor for SEStorageUsageGroup(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD5E02A0();
  v7 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups;
  swift_beginAccess();
  v29 = *(v1 + v7);
  swift_bridgeObjectRetain_n();
  sub_1BD5E4788(&v29);

  v8 = v29;
  v9 = v29[2];
  if (v9 >= 2)
  {
    v10 = 2;
  }

  else
  {
    if (v9 != 1)
    {
    }

    v10 = 1;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v11 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  sub_1BD03B254(0, v10, 0);
  v26 = *(v3 + 72);
  v27 = v11;
  v12 = v29;
  sub_1BD5F050C(v11, v6, type metadata accessor for SEStorageUsageGroup);
  v28 = v2;
  v13 = sub_1BE04C154();
  v15 = v14;
  sub_1BD5F0574(v6, type metadata accessor for SEStorageUsageGroup);
  v29 = v12;
  v17 = v12[2];
  v16 = v12[3];
  if (v17 >= v16 >> 1)
  {
    sub_1BD03B254((v16 > 1), v17 + 1, 1);
    v12 = v29;
  }

  v12[2] = v17 + 1;
  v18 = &v12[2 * v17];
  v18[4] = v13;
  v18[5] = v15;
  if (v9 >= 2)
  {
    sub_1BD5F050C(v27 + v26, v6, type metadata accessor for SEStorageUsageGroup);
    v19 = sub_1BE04C154();
    v21 = v20;
    sub_1BD5F0574(v6, type metadata accessor for SEStorageUsageGroup);
    v29 = v12;
    v23 = v12[2];
    v22 = v12[3];
    if (v23 >= v22 >> 1)
    {
      sub_1BD03B254((v22 > 1), v23 + 1, 1);
      v12 = v29;
    }

    v12[2] = v23 + 1;
    v24 = &v12[2 * v23];
    v24[4] = v19;
    v24[5] = v21;
  }

  *(v1 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groupIdentifiersRecommendedForDelete) = v12;
}

uint64_t sub_1BD5DFF18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v41 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - v16;
  v18 = sub_1BE04AF64();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v39 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v39 - v24;
  v42 = a1;
  sub_1BD8036F8(v17);
  v26 = v19[6];
  if (v26(v17, 1, v18) == 1)
  {
    v13 = v17;
  }

  else
  {
    v27 = v17;
    v28 = v19[4];
    v28(v25, v27, v18);
    sub_1BD8036F8(v13);
    if (v26(v13, 1, v18) != 1)
    {
      v36 = v39;
      v28(v39, v13, v18);
      v33 = sub_1BE04AE84();
      v37 = v19[1];
      v37(v36, v18);
      v37(v25, v18);
      return v33 & 1;
    }

    (v19[1])(v25, v18);
  }

  sub_1BD0DE53C(v13, &unk_1EBD39970);
  v30 = v41;
  v29 = v42;
  sub_1BD8036F8(v41);
  v31 = v26(v30, 1, v18);
  sub_1BD0DE53C(v30, &unk_1EBD39970);
  if (v31 == 1)
  {
    v32 = v40;
    sub_1BD8036F8(v40);
    v33 = 1;
    v34 = v26(v32, 1, v18);
    sub_1BD0DE53C(v32, &unk_1EBD39970);
    if (v34 == 1)
    {
      v35 = type metadata accessor for SEStorageUsageGroup(0);
      v33 = *(a2 + *(v35 + 28)) < *(v29 + *(v35 + 28));
    }
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t sub_1BD5E02A0()
{
  v1 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v93 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v80 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v80 - v11;
  v84 = type metadata accessor for SEStorageUsageGroup(0);
  v91 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v13);
  v92 = (&v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v88 = &v80 - v18;
  v94 = *(v0 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_snapshot);
  result = [v94 reset];
  v20 = 0;
  v85 = v0;
  v21 = *(v0 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_knownAppletTypes);
  v22 = *(v21 + 16);
  v89 = v21;
  v23 = v21 + 40;
  v90 = -v22;
  v24 = -1;
  do
  {
    if (v90 + v24 == -1)
    {
      goto LABEL_7;
    }

    if (++v24 >= *(v89 + 16))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v25 = v23 + 16;
    sub_1BE048C84();
    v26 = sub_1BE052404();
    v27 = [v94 totalUsageOfAppletType_];

    v23 = v25;
    v28 = __OFADD__(v20, v27);
    v20 += v27;
  }

  while (!v28);
  __break(1u);
LABEL_7:
  v29 = v94;
  v82 = [v94 totalUsage];
  v81 = [v29 totalStorage];
  v30 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups;
  v31 = v85;
  swift_beginAccess();
  v83 = v30;
  v32 = *(v31 + v30);
  v33 = 0x1FC2EE000uLL;
  v90 = *(v32 + 16);
  if (v90)
  {
    v87 = v32 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    result = sub_1BE048C84();
    v34 = 0;
    v86 = v20;
    v89 = result;
    while (v34 < *(result + 16))
    {
      v35 = v88;
      sub_1BD5F050C(v87 + *(v91 + 72) * v34, v88, type metadata accessor for SEStorageUsageGroup);
      v36 = *v35;
      sub_1BE048C84();
      sub_1BD5F0574(v35, type metadata accessor for SEStorageUsageGroup);
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = v33;
        v39 = v36 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
        v40 = *(v93 + 72);
        do
        {
          sub_1BD5F050C(v39, v12, type metadata accessor for SEStorageUsageGroup.PassEntry);
          if (v12[*(v1 + 32)] == 1)
          {
            v41 = sub_1BE052724();
            [v94 (v38 + 2623)];
          }

          sub_1BD5F0574(v12, type metadata accessor for SEStorageUsageGroup.PassEntry);
          v39 += v40;
          --v37;
        }

        while (v37);

        v33 = v38;
        v20 = v86;
      }

      else
      {
      }

      ++v34;
      result = v89;
      if (v34 == v90)
      {

        goto LABEL_19;
      }
    }

    goto LABEL_46;
  }

LABEL_19:
  v42 = v82 - v20;
  v43 = v81;
  v44 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletedPassEntries;
  v45 = v85;
  swift_beginAccess();
  result = *(v45 + v44);
  v46 = *(result + 16);
  if (v46)
  {
    v47 = result + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v48 = *(v93 + 72);
    v90 = *(v45 + v44);
    sub_1BE048C84();
    v49 = v33;
    v50 = v94;
    v51 = v80;
    do
    {
      sub_1BD5F050C(v47, v51, type metadata accessor for SEStorageUsageGroup.PassEntry);
      sub_1BE048C84();
      sub_1BD5F0574(v51, type metadata accessor for SEStorageUsageGroup.PassEntry);
      v52 = sub_1BE052724();

      [v50 (v49 + 2623)];

      v47 += v48;
      --v46;
    }

    while (v46);

    v45 = v85;
  }

  v53 = v43 - v42;
  v54 = v83;
  v55 = v94;
  v56 = v84;
  v57 = v92;
  v87 = *(*(v45 + v83) + 16);
  if (!v87)
  {
LABEL_39:
    v73 = [v55 totalUsage] - v42;
    v74 = sub_1BE052724();
    v75 = [v55 requiredStorageForAppletTypes_];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v76 = v73 / v53;
    if (v76 <= 1.0)
    {
      v77 = v76;
    }

    else
    {
      v77 = 1.0;
    }

    v78 = sub_1BE052724();
    v79 = [v55 canFitAppletTypes_];

    swift_getKeyPath();
    swift_getKeyPath();
    v95 = 0x3FF0000000000000;
    v96 = v77;
    v97 = v76;
    v98 = v75 / v53;
    v99 = v79;
    v100 = v42 / v43;
    sub_1BE048964();
    sub_1BE04D8C4();
    return sub_1BD5E0C8C();
  }

  v58 = 0;
  while (1)
  {
    v59 = *(v45 + v54);
    if (v58 >= *(v59 + 16))
    {
      break;
    }

    v89 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v60 = *(v91 + 72);
    v90 = v58;
    v88 = v60 * v58;
    result = sub_1BD5F050C(v59 + v89 + v60 * v58, v57, type metadata accessor for SEStorageUsageGroup);
    v61 = *v57;
    v62 = *(*v57 + 16);
    if (v62)
    {
      v63 = 0;
      v64 = 0.0;
      while (v63 < v61[2])
      {
        v65 = (*(v93 + 80) + 32) & ~*(v93 + 80);
        v66 = *(v93 + 72) * v63;
        sub_1BD5F050C(v61 + v65 + v66, v4, type metadata accessor for SEStorageUsageGroup.PassEntry);
        sub_1BE04C154();
        v67 = sub_1BE052404();

        v68 = [v94 usageOfAppletType_];

        *&v4[*(v1 + 28)] = v68 / v53;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1BD4FFFCC(v61);
          v61 = result;
        }

        if (v63 >= v61[2])
        {
          goto LABEL_44;
        }

        ++v63;
        v64 = v64 + v68;
        result = sub_1BD5F03B4(v4, v61 + v65 + v66);
        if (v62 == v63)
        {
          v57 = v92;
          *v92 = v61;
          v45 = v85;
          v55 = v94;
          v56 = v84;
          v54 = v83;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v64 = 0.0;
LABEL_35:
    sub_1BE04C154();
    v69 = sub_1BE052404();

    v70 = [v55 totalUsageOfAppletType_];

    *(v57 + *(v56 + 28)) = v70 / v53;
    *(v57 + *(v56 + 24)) = (v70 - v64) / v53;
    swift_beginAccess();
    v71 = *(v45 + v54);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v45 + v54) = v71;
    v72 = v90;
    if ((result & 1) == 0)
    {
      result = sub_1BD4FFFB8(v71);
      v71 = result;
      *(v45 + v54) = result;
    }

    if (v72 >= v71[2])
    {
      goto LABEL_48;
    }

    v58 = v72 + 1;
    sub_1BD5F0418(v57, v71 + v89 + v88);
    *(v45 + v54) = v71;
    swift_endAccess();
    result = sub_1BD5F0574(v57, type metadata accessor for SEStorageUsageGroup);
    if (v58 == v87)
    {
      goto LABEL_39;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1BD5E0C8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB18);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v197 = v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v205 = v161 - v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v196 = v161 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v185 = v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v184 = v161 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v204 = v161 - v18;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB20);
  MEMORY[0x1EEE9AC00](v214, v19);
  v213 = v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v212 = v161 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v211 = v161 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v210 = v161 - v29;
  v30 = type metadata accessor for SEStorageUsageCategory(0);
  v31 = *(v30 - 8);
  v215 = v30;
  v216 = v31;
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1BE04C164();
  v35 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219, v36);
  v209 = v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v161 - v40;
  v42 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  v218 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v43);
  v208 = v161 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v224 = (v161 - v47);
  v223 = type metadata accessor for SEStorageUsageGroup(0);
  v48 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223, v49);
  v193 = v161 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v195 = v161 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v222 = v161 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = (v161 - v59);
  v61 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups;
  swift_beginAccess();
  v188 = v0;
  v187 = v61;
  v62 = *(v0 + v61);
  v63 = *(v62 + 16);
  v217 = v48;
  v221 = v63;
  v182 = v35;
  if (!v63)
  {
    v65 = MEMORY[0x1E69E7CC8];
    v60 = *(MEMORY[0x1E69E7CC8] + 16);
    if (v60)
    {
      goto LABEL_61;
    }

    goto LABEL_82;
  }

  v161[1] = v42;
  v198 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v220 = (v62 + v198);
  v207 = (v35 + 16);
  LODWORD(v206) = *MEMORY[0x1E69B81B0];
  v203 = (v35 + 88);
  v202 = *MEMORY[0x1E69B8198];
  v192 = *MEMORY[0x1E69B8218];
  v191 = *MEMORY[0x1E69B81C0];
  v189 = *MEMORY[0x1E69B81A0];
  v186 = *MEMORY[0x1E69B8258];
  v183 = *MEMORY[0x1E69B81C8];
  v181 = *MEMORY[0x1E69B81A8];
  v180 = *MEMORY[0x1E69B8200];
  v179 = *MEMORY[0x1E69B81D0];
  v178 = *MEMORY[0x1E69B8208];
  v177 = *MEMORY[0x1E69B8220];
  v176 = *MEMORY[0x1E69B81E0];
  v175 = *MEMORY[0x1E69B8250];
  v174 = *MEMORY[0x1E69B8238];
  v173 = *MEMORY[0x1E69B8240];
  v172 = *MEMORY[0x1E69B81F0];
  v171 = *MEMORY[0x1E69B8210];
  v170 = *MEMORY[0x1E69B81D8];
  v169 = *MEMORY[0x1E69B81E8];
  v168 = *MEMORY[0x1E69B81F8];
  v167 = *MEMORY[0x1E69B8190];
  v166 = *MEMORY[0x1E69B8230];
  v165 = *MEMORY[0x1E69B8248];
  v164 = *MEMORY[0x1E69B81B8];
  v163 = *MEMORY[0x1E69B8228];
  v162 = *MEMORY[0x1E69B8188];
  v190 = (v35 + 8);
  v201 = (v35 + 56);
  v194 = (v35 + 32);
  sub_1BE048C84();
  v64 = 0;
  v65 = MEMORY[0x1E69E7CC8];
  v200 = v41;
  v199 = v62;
  do
  {
    if (v64 >= *(v62 + 16))
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      sub_1BE053C14();
      __break(1u);

      __break(1u);
      return result;
    }

    v67 = *(v48 + 72);
    sub_1BD5F050C(v220 + v67 * v64, v60, type metadata accessor for SEStorageUsageGroup);
    if (*(*v60 + 16))
    {
      v68 = *v207;
      v69 = v219;
      (*v207)(v41, v60 + *(v223 + 20), v219);
      v70 = v209;
      v68(v209, v41, v69);
      v71 = v65;
      v72 = (*v203)(v70, v69);
      v73 = v72 == v206 || v72 == v202;
      v74 = v208;
      if (!v73)
      {
        if (v72 == v192 || v72 == v191)
        {
          goto LABEL_18;
        }

        if (v72 != v189)
        {
          if (v72 == v186)
          {
            goto LABEL_18;
          }

          if (v72 != v183 && v72 != v181)
          {
            if (v72 == v180)
            {
              v98 = *v190;
              goto LABEL_38;
            }

            if (v72 != v179 && v72 != v178)
            {
              if (v72 == v177 || v72 == v176 || v72 == v175 || v72 == v174 || v72 == v173)
              {
                goto LABEL_18;
              }

              if (v72 != v172 && v72 != v171)
              {
                if (v72 == v170)
                {
                  goto LABEL_18;
                }

                if (v72 != v169)
                {
                  if (v72 == v168)
                  {
                    goto LABEL_18;
                  }

                  if (v72 != v167)
                  {
                    if (v72 != v166 && v72 != v165 && v72 != v164)
                    {
                      v98 = *v190;
                      if (v72 != v163 && v72 != v162)
                      {
                        v100 = v219;
                        v98(v41, v219);
                        (*v201)(v74, 2, 3, v100);
                        v71 = v65;
                        v98(v209, v100);
LABEL_19:
                        v78 = v224;
                        sub_1BD5F05D4(v74, v224, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
                        sub_1BD5F050C(v60, v222, type metadata accessor for SEStorageUsageGroup);
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v225 = v71;
                        v81 = sub_1BD14965C(v78);
                        v82 = v65[2];
                        v83 = (v80 & 1) == 0;
                        v84 = v82 + v83;
                        if (__OFADD__(v82, v83))
                        {
                          goto LABEL_120;
                        }

                        v85 = v80;
                        if (v65[3] < v84)
                        {
                          sub_1BD5019F0(v84, isUniquelyReferenced_nonNull_native);
                          v86 = sub_1BD14965C(v224);
                          if ((v85 & 1) != (v87 & 1))
                          {
                            goto LABEL_123;
                          }

                          v81 = v86;
                          v88 = v225;
                          if (v85)
                          {
                            goto LABEL_28;
                          }

LABEL_26:
                          v88[(v81 >> 6) + 8] |= 1 << v81;
                          sub_1BD5F050C(v224, v88[6] + *(v218 + 9) * v81, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
                          *(v88[7] + 8 * v81) = MEMORY[0x1E69E7CC0];
                          v89 = v88[2];
                          v90 = __OFADD__(v89, 1);
                          v91 = v89 + 1;
                          if (v90)
                          {
                            goto LABEL_122;
                          }

                          v88[2] = v91;
                          goto LABEL_28;
                        }

                        if (isUniquelyReferenced_nonNull_native)
                        {
                          v88 = v225;
                          if ((v80 & 1) == 0)
                          {
                            goto LABEL_26;
                          }
                        }

                        else
                        {
                          sub_1BD506CD0();
                          v88 = v225;
                          if ((v85 & 1) == 0)
                          {
                            goto LABEL_26;
                          }
                        }

LABEL_28:
                        v92 = v88;
                        v93 = v88[7];
                        v94 = *(v93 + 8 * v81);
                        v95 = swift_isUniquelyReferenced_nonNull_native();
                        *(v93 + 8 * v81) = v94;
                        if ((v95 & 1) == 0)
                        {
                          v94 = sub_1BD1D90C4(0, v94[2] + 1, 1, v94);
                          *(v93 + 8 * v81) = v94;
                        }

                        v97 = v94[2];
                        v96 = v94[3];
                        if (v97 >= v96 >> 1)
                        {
                          *(v93 + 8 * v81) = sub_1BD1D90C4(v96 > 1, v97 + 1, 1, v94);
                        }

                        sub_1BD5F0574(v224, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
                        v66 = *(v93 + 8 * v81);
                        *(v66 + 16) = v97 + 1;
                        sub_1BD5F05D4(v222, v66 + v198 + v97 * v67, type metadata accessor for SEStorageUsageGroup);
                        v48 = v217;
                        v65 = v92;
                        v41 = v200;
                        v62 = v199;
                        goto LABEL_4;
                      }

LABEL_38:
                      v99 = v219;
                      v98(v41, v219);
                      (*v201)(v74, 2, 3, v99);
                      v71 = v65;
                      goto LABEL_19;
                    }

LABEL_18:
                    v77 = v219;
                    (*v190)(v41, v219);
                    (*v201)(v74, 1, 3, v77);
                    goto LABEL_19;
                  }
                }
              }
            }
          }
        }
      }

      v75 = v219;
      (*v194)(v208, v41, v219);
      (*v201)(v74, 0, 3, v75);
      goto LABEL_19;
    }

LABEL_4:
    ++v64;
    sub_1BD5F0574(v60, type metadata accessor for SEStorageUsageGroup);
  }

  while (v221 != v64);

  v60 = v65[2];
  if (!v60)
  {
LABEL_82:

    v102 = MEMORY[0x1E69E7CC0];
    goto LABEL_83;
  }

LABEL_61:
  v225 = MEMORY[0x1E69E7CC0];
  v101 = v65;
  sub_1BD532104(0, v60, 0);
  v102 = v225;
  v103 = v101 + 64;
  v104 = sub_1BE053674();
  v105 = 0;
  v106 = *(v101 + 9);
  v203 = (v101 + 72);
  v206 = v60;
  v208 = v101 + 64;
  v207 = v106;
  v209 = v101;
  do
  {
    if (v104 < 0 || v104 >= 1 << v101[32])
    {
      goto LABEL_114;
    }

    if ((*&v103[8 * (v104 >> 6)] & (1 << v104)) == 0)
    {
      goto LABEL_115;
    }

    if (v106 != *(v101 + 9))
    {
      goto LABEL_116;
    }

    v221 = 1 << v104;
    v222 = v104 >> 6;
    v220 = v105;
    v108 = *(v101 + 6) + *(v218 + 9) * v104;
    v224 = v102;
    v109 = v210;
    sub_1BD5F050C(v108, v210, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
    v110 = *(*(v101 + 7) + 8 * v104);
    v111 = v34;
    v112 = v211;
    sub_1BD5F05D4(v109, v211, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
    v113 = v214;
    *(v112 + *(v214 + 48)) = v110;
    v114 = v212;
    sub_1BD0DE19C(v112, v212, &qword_1EBD4CB20);
    sub_1BE048C84();

    v115 = v112;
    v34 = v111;
    v116 = v213;
    sub_1BD0DE204(v115, v213, &qword_1EBD4CB20);
    v117 = *(v116 + *(v113 + 48));
    v118 = v114;
    v102 = v224;
    sub_1BD5F05D4(v118, v111, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
    *(v111 + *(v215 + 20)) = v117;
    sub_1BD5F0574(v116, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
    v225 = v102;
    v120 = v102[2];
    v119 = v102[3];
    if (v120 >= v119 >> 1)
    {
      sub_1BD532104(v119 > 1, v120 + 1, 1);
      v102 = v225;
    }

    v102[2] = v120 + 1;
    sub_1BD5F05D4(v111, v102 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v120, type metadata accessor for SEStorageUsageCategory);
    v101 = v209;
    v60 = (1 << v209[32]);
    if (v104 >= v60)
    {
      goto LABEL_117;
    }

    v103 = v208;
    v121 = *&v208[8 * v222];
    if ((v121 & v221) == 0)
    {
      goto LABEL_118;
    }

    LODWORD(v106) = v207;
    if (v207 != *(v209 + 9))
    {
      goto LABEL_119;
    }

    v122 = v121 & (-2 << (v104 & 0x3F));
    if (v122)
    {
      v60 = (__clz(__rbit64(v122)) | v104 & 0x7FFFFFFFFFFFFFC0);
      v107 = v220;
    }

    else
    {
      v123 = v222 << 6;
      v124 = (v222 + 1);
      v125 = &v203[v222];
      while (v124 < (v60 + 63) >> 6)
      {
        v127 = *v125++;
        v126 = v127;
        v123 += 64;
        ++v124;
        if (v127)
        {
          sub_1BD20DE9C(v104, v207, 0);
          v60 = (__clz(__rbit64(v126)) + v123);
          goto LABEL_79;
        }
      }

      sub_1BD20DE9C(v104, v207, 0);
LABEL_79:
      v107 = v220;
    }

    v105 = (v107 + 1);
    v104 = v60;
    v60 = v206;
  }

  while (v105 != v206);

  v48 = v217;
LABEL_83:
  v225 = v102;
  sub_1BE048C84();
  sub_1BD5E46A4(&v225);
  v128 = v188;
  v129 = v204;

  v130 = v225;
  swift_getKeyPath();
  swift_getKeyPath();
  v225 = v130;
  sub_1BE048964();
  sub_1BE04D8C4();
  v131 = *(v216 + 56);
  v216 += 56;
  v131(v129, 1, 1, v215);
  v132 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groupIdentifiersRecommendedForDelete;
  if (*(*(v128 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groupIdentifiersRecommendedForDelete) + 16))
  {
    v218 = v131;
    v133 = sub_1BE048C84();
    v134 = sub_1BD5EE5E8(v133);

    v60 = *(v128 + v132);
    v135 = v60[2];
    sub_1BE048C84();
    v221 = v135;
    if (v135)
    {
      v136 = v48;
      v137 = 0;
      v138 = (v48 + 56);
      v224 = (v136 + 48);
      v139 = v60 + 5;
      v222 = MEMORY[0x1E69E7CC0];
      v220 = v60;
      while (1)
      {
        if (v137 >= v60[2])
        {
          goto LABEL_121;
        }

        if (*(v134 + 16))
        {
          v141 = *(v139 - 1);
          v140 = *v139;
          sub_1BE048C84();
          v142 = sub_1BD148F70(v141, v140);
          if ((v143 & 1) != 0 && (v144 = *(*(v134 + 56) + 8 * v142), *(v144 + 16)))
          {
            sub_1BD5F050C(v144 + ((*(v217 + 80) + 32) & ~*(v217 + 80)), v205, type metadata accessor for SEStorageUsageGroup);
            v145 = 0;
          }

          else
          {
            v145 = 1;
          }
        }

        else
        {
          v145 = 1;
        }

        v146 = *v138;
        v147 = v205;
        v148 = v223;
        (*v138)(v205, v145, 1, v223);
        v149 = v147;
        v150 = v197;
        sub_1BD0DE204(v149, v197, &qword_1EBD4CB18);
        v151 = *v224;
        if ((*v224)(v150, 1, v148) == 1)
        {
          break;
        }

        v152 = v193;
        sub_1BD5F05D4(v150, v193, type metadata accessor for SEStorageUsageGroup);
        if (!*(*v152 + 16))
        {
          sub_1BD5F0574(v152, type metadata accessor for SEStorageUsageGroup);
          goto LABEL_101;
        }

        v153 = v196;
        sub_1BD5F05D4(v152, v196, type metadata accessor for SEStorageUsageGroup);
        v154 = 0;
LABEL_102:
        v155 = v223;
        v146(v153, v154, 1, v223);
        if (v151(v153, 1, v155) == 1)
        {
          sub_1BD0DE53C(v153, &qword_1EBD4CB18);
          v129 = v204;
          v60 = v220;
        }

        else
        {
          sub_1BD5F05D4(v153, v195, type metadata accessor for SEStorageUsageGroup);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v222 = sub_1BD1D90C4(0, *(v222 + 16) + 1, 1, v222);
          }

          v60 = v220;
          v157 = *(v222 + 16);
          v156 = *(v222 + 24);
          if (v157 >= v156 >> 1)
          {
            v222 = sub_1BD1D90C4(v156 > 1, v157 + 1, 1, v222);
          }

          v158 = v222;
          *(v222 + 16) = v157 + 1;
          sub_1BD5F05D4(v195, v158 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v157, type metadata accessor for SEStorageUsageGroup);
          v129 = v204;
        }

        ++v137;
        v139 += 2;
        if (v221 == v137)
        {
          goto LABEL_109;
        }
      }

      sub_1BD0DE53C(v150, &qword_1EBD4CB18);
LABEL_101:
      v154 = 1;
      v153 = v196;
      goto LABEL_102;
    }

    v222 = MEMORY[0x1E69E7CC0];
LABEL_109:

    if (*(*(v188 + v187) + 16))
    {
      sub_1BD0DE53C(v129, &qword_1EBD46540);
      (*(v182 + 56))(v129, 3, 3, v219);
      *(v129 + *(v215 + 20)) = v222;
      (v218)(v129, 0, 1);
    }

    else
    {
    }
  }

  v159 = v184;
  sub_1BD0DE19C(v129, v184, &qword_1EBD46540);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v159, v185, &qword_1EBD46540);
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD0DE53C(v159, &qword_1EBD46540);
  return sub_1BD0DE53C(v129, &qword_1EBD46540);
}

BOOL sub_1BD5E23A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageUsageGroup(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for SEStorageUsageCategory(0);
  v14 = *(v13 + 20);
  v15 = *(a1 + v14);
  v16 = *(v15 + 16);
  v17 = 0.0;
  if (v16)
  {
    v18 = v13;
    v31 = a2;
    v19 = *(v4 + 28);
    v20 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v21 = *(v5 + 72);
    v22 = 0.0;
    do
    {
      sub_1BD5F050C(v20, v12, type metadata accessor for SEStorageUsageGroup);
      v23 = *&v12[v19];
      sub_1BD5F0574(v12, type metadata accessor for SEStorageUsageGroup);
      v22 = v22 + v23;
      v20 += v21;
      --v16;
    }

    while (v16);
    v14 = *(v18 + 20);
    a2 = v31;
  }

  else
  {
    v22 = 0.0;
  }

  v24 = *(a2 + v14);
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(v4 + 28);
    v27 = v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v28 = *(v5 + 72);
    v17 = 0.0;
    do
    {
      sub_1BD5F050C(v27, v8, type metadata accessor for SEStorageUsageGroup);
      v29 = *&v8[v26];
      sub_1BD5F0574(v8, type metadata accessor for SEStorageUsageGroup);
      v17 = v17 + v29;
      v27 += v28;
      --v25;
    }

    while (v25);
  }

  return v17 < v22;
}

uint64_t sub_1BD5E25C0()
{
  v1 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController__summary;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB08);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController__categories;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB28);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController__recommendedForDeleteCategory;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB00);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController__loading;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController__showDeleteConfirmation, v8);
  v10 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController__deleteConfirmationAlertText;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CAF8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_device;
  v13 = sub_1BE04B944();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);

  sub_1BD0D4744(*(v0 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion));

  sub_1BD0D4744(*(v0 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion));
  return v0;
}

uint64_t sub_1BD5E2878()
{
  sub_1BD5E25C0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SEStorageCleanupController()
{
  result = qword_1EBD4CAB0;
  if (!qword_1EBD4CAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD5E2924()
{
  sub_1BD540F14(319, &qword_1EBD4CAC0);
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD4CAC8, &qword_1EBD4CAD0);
    if (v1 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD4CAD8, &qword_1EBD46540);
      if (v2 <= 0x3F)
      {
        sub_1BD540F14(319, &qword_1EBD368F0);
        if (v3 <= 0x3F)
        {
          sub_1BD0E4578(319, &qword_1EBD4CAE0, &qword_1EBD4CAE8);
          if (v4 <= 0x3F)
          {
            sub_1BE04B944();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BD5E2B80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SEStorageCleanupController();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD5E2BC0(uint64_t *a1, uint64_t a2, size_t a3, int a4)
{
  v41 = a4;
  v42 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46818);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for SEStorageUsageGroup(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v44 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups;
  swift_beginAccess();
  v20 = *(v4 + v19);
  sub_1BE048C84();
  v21 = sub_1BD224690(a1, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    if (v21 < 0)
    {
      goto LABEL_36;
    }

    v25 = *(v4 + v19);
    if (v21 >= *(v25 + 16))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v40 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v39 = *(v16 + 72) * v21;
    v23 = v44;
    sub_1BD5F050C(v25 + v40 + v39, v44, type metadata accessor for SEStorageUsageGroup);
    sub_1BD0DE19C(v42, v10, &qword_1EBD46818);
    if ((*(v43 + 48))(v10, 1, v11) == 1)
    {
      sub_1BD0DE53C(v10, &qword_1EBD46818);
      v14 = *v23;
      v16 = *(*v23 + 16);
      if (a3)
      {
        if (!v16)
        {
          goto LABEL_30;
        }

        v26 = 0;
        v23 = (a3 + 56);
        LODWORD(v42) = v41 & 1;
        while (1)
        {
          if (*(a3 + 16))
          {
            v27 = sub_1BE053CF4();
            v28 = -1 << *(a3 + 32);
            v29 = v27 & ~v28;
            if ((*(v23 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
            {
              v30 = ~v28;
              while (*(*(a3 + 48) + 8 * v29) != v26)
              {
                v29 = (v29 + 1) & v30;
                if (((*(v23 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
                {
                  goto LABEL_8;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v14 = sub_1BD4FFFCC(v14);
              }

              if (v26 >= v14[2])
              {
                __break(1u);
LABEL_36:
                __break(1u);
                goto LABEL_37;
              }

              *(v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v26 + *(v11 + 32)) = v42;
              *v44 = v14;
            }
          }

LABEL_8:
          if (++v26 == v16)
          {
            goto LABEL_30;
          }
        }
      }

      if (v16)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_27;
        }

        goto LABEL_42;
      }
    }

    else
    {
      sub_1BD5F05D4(v10, v14, type metadata accessor for SEStorageUsageGroup.PassEntry);
      a3 = *v23;
      v31 = sub_1BD224914(v14, *v23);
      if ((v32 & 1) == 0)
      {
        v16 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_22;
      }

      sub_1BD5F0574(v14, type metadata accessor for SEStorageUsageGroup.PassEntry);
    }

    while (1)
    {
LABEL_30:
      swift_beginAccess();
      v11 = *(v4 + v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v19) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_38:
        v11 = sub_1BD4FFFB8(v11);
        *(v4 + v19) = v11;
      }

      v38 = v21 < *(v11 + 16);
      v21 = v44;
      if (v38)
      {
        sub_1BD5F0418(v44, v11 + v40 + v39);
        *(v4 + v19) = v11;
        swift_endAccess();
        return sub_1BD5F0574(v21, type metadata accessor for SEStorageUsageGroup);
      }

      __break(1u);
LABEL_39:
      a3 = sub_1BD4FFFCC(a3);
LABEL_22:
      sub_1BD5F0574(v14, type metadata accessor for SEStorageUsageGroup.PassEntry);
      if ((v16 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v16 >= *(a3 + 16))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        v14 = sub_1BD4FFFCC(v14);
LABEL_27:
        v33 = v44;
        v34 = v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v35 = *(v43 + 72);
        v36 = v41 & 1;
        do
        {
          v34[*(v11 + 32)] = v36;
          v34 += v35;
          --v16;
        }

        while (v16);
        *v33 = v14;
      }

      else
      {
        *(a3 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v16 + *(v11 + 32)) = v41 & 1;
        *v23 = a3;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  return result;
}

uint64_t sub_1BD5E3118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion);
  v4 = *(a1 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion);
  *v3 = a2;
  v3[1] = a3;
  sub_1BD0D44B8(a2);
  sub_1BD0D4744(v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5E31B8()
{
  v1 = v0;
  v95 = sub_1BE051F54();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v2);
  v92 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1BE051FA4();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v4);
  v90 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v97 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v6);
  v106 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v89 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v113 = (&v89 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v112 = (&v89 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v89 - v20;
  v22 = type metadata accessor for SEStorageUsageGroup(0);
  v107 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB30);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v96 = (&v89 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CB38);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v103 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v102 = &v89 - v35;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((aBlock & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    v37 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups;
    swift_beginAccess();
    v111 = v37;
    v38 = *(v0 + v37);
    v101 = (v27 + 56);
    v100 = (v27 + 48);
    v108 = v38;
    result = sub_1BE048C84();
    v39 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    v105 = v0;
    v104 = v11;
    v99 = v25;
    v98 = v26;
    while (1)
    {
      v41 = *(v108 + 16);
      v42 = v103;
      v43 = v102;
      if (v39 == v41)
      {
        v110 = v39;
        v44 = 1;
      }

      else
      {
        if (v39 >= v41)
        {
          goto LABEL_43;
        }

        v45 = (v39 + 1);
        v46 = v108 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v39;
        v47 = *(v26 + 48);
        v48 = v96;
        *v96 = v39;
        sub_1BD5F050C(v46, v48 + v47, type metadata accessor for SEStorageUsageGroup);
        sub_1BD0DE204(v48, v42, &qword_1EBD4CB30);
        v44 = 0;
        v110 = v45;
      }

      (*v101)(v42, v44, 1, v26);
      sub_1BD0DE204(v42, v43, &qword_1EBD4CB38);
      if ((*v100)(v43, 1, v26) == 1)
      {
        break;
      }

      v109 = *v43;
      sub_1BD5F05D4(v43 + *(v26 + 48), v25, type metadata accessor for SEStorageUsageGroup);
      v49 = *v25;
      v50 = *(*v25 + 16);
      if (v50)
      {
        v115 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v51 = v49 + v115;
        v52 = *(v97 + 72);
        v53 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1BD5F050C(v51, v21, type metadata accessor for SEStorageUsageGroup.PassEntry);
          if (v21[*(v114 + 32)] == 1)
          {
            sub_1BD5F050C(v21, v112, type metadata accessor for SEStorageUsageGroup.PassEntry);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_1BD1D90EC(0, v40[2] + 1, 1, v40);
            }

            v58 = v40[2];
            v57 = v40[3];
            v59 = v58 + 1;
            if (v58 >= v57 >> 1)
            {
              v40 = sub_1BD1D90EC(v57 > 1, v58 + 1, 1, v40);
              v56 = v112;
              v60 = v40;
            }

            else
            {
              v60 = v40;
              v56 = v112;
            }
          }

          else
          {
            sub_1BD5F050C(v21, v113, type metadata accessor for SEStorageUsageGroup.PassEntry);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = sub_1BD1D90EC(0, v53[2] + 1, 1, v53);
            }

            v60 = v40;
            v58 = v53[2];
            v61 = v53[3];
            v59 = v58 + 1;
            if (v58 >= v61 >> 1)
            {
              v40 = sub_1BD1D90EC(v61 > 1, v58 + 1, 1, v53);
              v56 = v113;
              v53 = v40;
            }

            else
            {
              v40 = v53;
              v56 = v113;
            }
          }

          sub_1BD5F0574(v21, type metadata accessor for SEStorageUsageGroup.PassEntry);
          v40[2] = v59;
          sub_1BD5F05D4(v56, v40 + v115 + v58 * v52, type metadata accessor for SEStorageUsageGroup.PassEntry);
          v51 += v52;
          --v50;
          v40 = v60;
        }

        while (v50);
      }

      else
      {
        v53 = MEMORY[0x1E69E7CC0];
      }

      v1 = v105;
      v54 = v111;
      swift_beginAccess();
      v55 = *&v54[v1];
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v54[v1] = v55;
      if ((result & 1) == 0)
      {
        result = sub_1BD4FFFB8(v55);
        v55 = result;
        *&v111[v1] = result;
      }

      v11 = v104;
      v25 = v99;
      v26 = v98;
      if ((v109 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return result;
      }

      if (v109 >= v55[2])
      {
        goto LABEL_42;
      }

      *(v55 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v109) = v53;
      *&v111[v1] = v55;
      swift_endAccess();

      result = sub_1BD5F0574(v25, type metadata accessor for SEStorageUsageGroup);
      v39 = v110;
    }

    v113 = dispatch_group_create();
    v62 = v40[2];
    if (v62)
    {
      v63 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_device;
      v64 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletedPassEntries;
      v115 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v65 = v40 + v115;
      v114 = *(v97 + 72);
      v110 = &v119;
      do
      {
        sub_1BD5F050C(v65, v11, type metadata accessor for SEStorageUsageGroup.PassEntry);
        if ((PKDynamicSEAllocationFakeFullSE() & 1) == 0)
        {
          dispatch_group_enter(v113);
          v66 = sub_1BE04B934();
          if ([v66 respondsToSelector_])
          {
            v67 = sub_1BE04B8E4();
            v68 = *v11;
            v111 = v67;
            v112 = v68;
            v69 = swift_allocObject();
            v70 = v63;
            v71 = v113;
            *(v69 + 16) = v113;
            v121 = sub_1BD5F0504;
            v122 = v69;
            aBlock = MEMORY[0x1E69E9820];
            v118 = 1107296256;
            v119 = sub_1BD3CC8C0;
            v120 = &block_descriptor_102_0;
            v72 = v40;
            v73 = _Block_copy(&aBlock);
            v74 = v71;
            v63 = v70;
            sub_1BE048964();
            v11 = v104;

            v75 = v111;
            [v66 paymentWebService:v111 removePass:v112 withCompletionHandler:v73];
            v76 = v73;
            v40 = v72;
            _Block_release(v76);

            v1 = v105;
          }

          swift_unknownObjectRelease();
        }

        sub_1BD5F050C(v11, v106, type metadata accessor for SEStorageUsageGroup.PassEntry);
        swift_beginAccess();
        v77 = *(v1 + v64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v64) = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = sub_1BD1D90EC(0, v77[2] + 1, 1, v77);
          *(v1 + v64) = v77;
        }

        v80 = v77[2];
        v79 = v77[3];
        if (v80 >= v79 >> 1)
        {
          v77 = sub_1BD1D90EC(v79 > 1, v80 + 1, 1, v77);
        }

        v77[2] = v80 + 1;
        v81 = v114;
        sub_1BD5F05D4(v106, v77 + v115 + v80 * v114, type metadata accessor for SEStorageUsageGroup.PassEntry);
        *(v1 + v64) = v77;
        swift_endAccess();
        sub_1BD5F0574(v11, type metadata accessor for SEStorageUsageGroup.PassEntry);
        v65 += v81;
        --v62;
      }

      while (v62);
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v82 = sub_1BE052D54();
    v83 = swift_allocObject();
    swift_weakInit();
    v121 = sub_1BD5F04FC;
    v122 = v83;
    aBlock = MEMORY[0x1E69E9820];
    v118 = 1107296256;
    v119 = sub_1BD126964;
    v120 = &block_descriptor_96_1;
    v84 = _Block_copy(&aBlock);
    sub_1BE048964();
    v85 = v90;
    sub_1BE051F74();
    v116 = MEMORY[0x1E69E7CC0];
    sub_1BD5F047C(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v86 = v92;
    v87 = v95;
    sub_1BE053664();
    v88 = v113;
    sub_1BE052CE4();
    _Block_release(v84);

    (*(v94 + 8))(v86, v87);
    (*(v91 + 8))(v85, v93);
  }

  return result;
}

uint64_t sub_1BD5E3F3C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BD5E02A0();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8C4();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion);
    sub_1BD0D44B8(v1);

    if (v1)
    {
      v1(1);
      sub_1BD0D4744(v1);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = (result + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion);
    v4 = *(result + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion);
    *v3 = 0;
    v3[1] = 0;
    sub_1BD0D4744(v4);
  }

  return result;
}

uint64_t sub_1BD5E40A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v0;
  sub_1BE04D8B4();

  if ((v19 & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups;
    result = swift_beginAccess();
    v3 = *(v0 + v2);
    v17 = v3[2];
    if (v17)
    {
      v4 = 0;
      while (v4 < v3[2])
      {
        v5 = type metadata accessor for SEStorageUsageGroup(0);
        v6 = *(v5 - 8);
        result = v5 - 8;
        v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v8 = *(v6 + 72) * v4;
        v9 = *(*(v3 + v7 + v8) + 16);
        if (v9)
        {
          swift_beginAccess();
          v10 = 0;
          while (1)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            *(v18 + v2) = v3;
            if ((result & 1) == 0)
            {
              result = sub_1BD4FFFB8(v3);
              v3 = result;
              *(v18 + v2) = result;
            }

            if (v4 >= v3[2])
            {
              break;
            }

            v11 = v3 + v7;
            v12 = *(v3 + v7 + v8);
            result = swift_isUniquelyReferenced_nonNull_native();
            *(v3 + v7 + v8) = v12;
            if ((result & 1) == 0)
            {
              result = sub_1BD4FFFCC(v12);
              v12 = result;
              *&v11[v8] = result;
            }

            if (v10 >= v12[2])
            {
              goto LABEL_22;
            }

            v13 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
            *(v12 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)) + *(*(v13 - 8) + 72) * v10 + *(v13 + 32)) = 0;
            *&v11[v8] = v12;
            *(v18 + v2) = v3;
            if (v9 == ++v10)
            {
              result = swift_endAccess();
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_22:
          __break(1u);
          break;
        }

LABEL_4:
        if (++v4 == v17)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
      v14 = (v18 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion);
      v15 = *(v18 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_deletePassCompletion);
      if (v15)
      {
        sub_1BE048964();
        v15(0);
        sub_1BD0D4744(v15);
        v16 = *v14;
      }

      else
      {
        v16 = 0;
      }

      *v14 = 0;
      v14[1] = 0;
      sub_1BD0D4744(v16);
      return sub_1BD5E02A0();
    }
  }

  return result;
}

uint64_t sub_1BD5E4378(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  HIDWORD(v28) = a5;
  v29 = a9;
  v30 = a8;
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    (*(v15 + 104))(v19, *MEMORY[0x1E69B80F8], v14, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E6530];
    *(v22 + 16) = xmmword_1BE0B69E0;
    v24 = MEMORY[0x1E69E65A8];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = a6;
    a1 = sub_1BE04B714();
    v20 = v25;

    (*(v15 + 8))(v19, v14);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    a3 = 0;
    goto LABEL_10;
  }

  v20 = a2;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v21 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v21 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    sub_1BE048C84();
  }

  else
  {
    a3 = 0;
    a4 = 0;
  }

LABEL_10:
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = a1;
  v32 = v20;
  v33 = a3;
  v34 = a4;
  v35 = BYTE4(v28) & 1;
  sub_1BE048C84();
  sub_1BE048964();
  v26 = sub_1BE04D8C4();
  return v30(v26);
}

uint64_t sub_1BD5E45B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1BE052434();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_1BE052434();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  sub_1BE048964();
  v6(v7, v9, v10, v5, a4);
}

uint64_t sub_1BD5E46A4(void **a1)
{
  v2 = *(type metadata accessor for SEStorageUsageCategory(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED768(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BD5E4D98(v6, type metadata accessor for SEStorageUsageCategory, sub_1BD5E6B04, sub_1BD5E4EE8);
  *a1 = v3;
  return result;
}

uint64_t sub_1BD5E4788(void **a1)
{
  v2 = *(type metadata accessor for SEStorageUsageGroup(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED7A4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BD5E4D98(v6, type metadata accessor for SEStorageUsageGroup, sub_1BD5E7878, sub_1BD5E52E0);
  *a1 = v3;
  return result;
}

double sub_1BD5E486C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = v6;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_1BD5E48FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5E4994@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD5E4A14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5E4A90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD5E4B0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  sub_1BD0DE19C(a1, &v11 - v8, &qword_1EBD46540);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v9, v5, &qword_1EBD46540);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v9, &qword_1EBD46540);
}

__n128 sub_1BD5E4C64@<Q0>(__n128 *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  a1[2].n128_u8[0] = v6;
  return result;
}

uint64_t sub_1BD5E4CF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048C84();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD5E4D98(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1BE053B14();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1BE0527B4();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1BD5E4EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v50 = a1;
  v7 = type metadata accessor for SEStorageUsageGroup(0);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v46 - v13;
  v56 = type metadata accessor for SEStorageUsageCategory(0);
  MEMORY[0x1EEE9AC00](v56, v15);
  v49 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v57 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v46 - v23;
  v47 = a2;
  if (a3 != a2)
  {
    v55 = *a4;
    v51 = *(v22 + 72);
    v52 = &v46 - v23;
LABEL_5:
    v48 = a3;
    while (1)
    {
      v25 = a3 - 1;
      v26 = v55;
      v27 = v51;
      v28 = v55 + v51 * a3;
      sub_1BD5F050C(v28, v24, type metadata accessor for SEStorageUsageCategory);
      v29 = v26 + (a3 - 1) * v27;
      sub_1BD5F050C(v29, v57, type metadata accessor for SEStorageUsageCategory);
      v30 = *(v56 + 20);
      v31 = *&v24[v30];
      v32 = *(v31 + 16);
      v33 = 0.0;
      if (v32)
      {
        v34 = *(v54 + 28);
        v35 = v31 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v36 = *(v53 + 72);
        v37 = 0.0;
        do
        {
          sub_1BD5F050C(v35, v14, type metadata accessor for SEStorageUsageGroup);
          v38 = *&v14[v34];
          sub_1BD5F0574(v14, type metadata accessor for SEStorageUsageGroup);
          v37 = v37 + v38;
          v35 += v36;
          --v32;
        }

        while (v32);
        v30 = *(v56 + 20);
      }

      else
      {
        v37 = 0.0;
      }

      v39 = *(v57 + v30);
      v40 = *(v39 + 16);
      if (v40)
      {
        v41 = *(v54 + 28);
        v42 = v39 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v43 = *(v53 + 72);
        v33 = 0.0;
        do
        {
          sub_1BD5F050C(v42, v10, type metadata accessor for SEStorageUsageGroup);
          v44 = *&v10[v41];
          sub_1BD5F0574(v10, type metadata accessor for SEStorageUsageGroup);
          v33 = v33 + v44;
          v42 += v43;
          --v40;
        }

        while (v40);
      }

      sub_1BD5F0574(v57, type metadata accessor for SEStorageUsageCategory);
      v24 = v52;
      sub_1BD5F0574(v52, type metadata accessor for SEStorageUsageCategory);
      if (v33 >= v37)
      {
LABEL_4:
        a3 = v48 + 1;
        if (v48 + 1 == v47)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v55)
      {
        break;
      }

      v45 = v49;
      sub_1BD5F05D4(v28, v49, type metadata accessor for SEStorageUsageCategory);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD5F05D4(v45, v29, type metadata accessor for SEStorageUsageCategory);
      a3 = v25;
      if (v25 == v50)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD5E52E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v203 = a1;
  v211 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v210 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211, v7);
  v231 = &v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v235 = &v194 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v227 = &v194 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v239 = &v194 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v200 = &v194 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v234 = &v194 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v201 = &v194 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v226 = &v194 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v199 = &v194 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v194 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v206 = &v194 - v43;
  v44 = sub_1BE04AF64();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v46);
  v230 = &v194 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v194 - v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v194 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v233 = &v194 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v198 = &v194 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v224 = &v194 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v225 = &v194 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v219 = &v194 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v220 = &v194 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v197 = &v194 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v238 = &v194 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v228 = &v194 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v229 = &v194 - v85;
  MEMORY[0x1EEE9AC00](v86, v87);
  v205 = &v194 - v88;
  v207 = type metadata accessor for SEStorageUsageGroup(0);
  MEMORY[0x1EEE9AC00](v207, v89);
  v202 = &v194 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91, v92);
  MEMORY[0x1EEE9AC00](v93, v94);
  v209 = &v194 - v97;
  v195 = a2;
  if (a3 == a2)
  {
    return;
  }

  v218 = v96;
  v215 = *a4;
  v204 = *(v95 + 72);
  v243 = v45;
  v244 = (v45 + 48);
  v245 = (v45 + 32);
  v240 = (v45 + 8);
  v241 = v45 + 16;
  v217 = (v45 + 56);
  v222 = v21;
  v237 = v40;
  v98 = v209;
  v221 = v51;
  v223 = v55;
LABEL_6:
  v196 = a3;
  v99 = a3;
  while (1)
  {
    v100 = v99 - 1;
    v101 = v215;
    v102 = v204;
    v213 = v215 + v204 * v99;
    sub_1BD5F050C(v213, v98, type metadata accessor for SEStorageUsageGroup);
    v214 = v100;
    v212 = v101 + v100 * v102;
    sub_1BD5F050C(v212, v218, type metadata accessor for SEStorageUsageGroup);
    v103 = *v98;
    v104 = *(*v98 + 16);
    v208 = *v98;
    if (v104)
    {
      v242 = *(v211 + 24);
      v105 = v103 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
      v106 = *(v210 + 72);
      v107 = MEMORY[0x1E69E7CC0];
      do
      {
        v108 = v239;
        sub_1BD5F050C(v105, v239, type metadata accessor for SEStorageUsageGroup.PassEntry);
        sub_1BD0DE19C(v242 + v108, v40, &unk_1EBD39970);
        sub_1BD5F0574(v108, type metadata accessor for SEStorageUsageGroup.PassEntry);
        if ((*v244)(v40, 1, v44) == 1)
        {
          sub_1BD0DE53C(v40, &unk_1EBD39970);
        }

        else
        {
          v109 = *v245;
          (*v245)(v238, v40, v44);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_1BD1D9350(0, *(v107 + 2) + 1, 1, v107);
          }

          v111 = *(v107 + 2);
          v110 = *(v107 + 3);
          if (v111 >= v110 >> 1)
          {
            v107 = sub_1BD1D9350(v110 > 1, v111 + 1, 1, v107);
          }

          *(v107 + 2) = v111 + 1;
          v109(&v107[((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v111], v238, v44);
          v40 = v237;
        }

        v105 += v106;
        --v104;
      }

      while (v104);
    }

    else
    {
      v107 = MEMORY[0x1E69E7CC0];
    }

    v112 = *(v107 + 2);
    if (v112)
    {
      v113 = v243;
      v114 = &v107[(*(v113 + 80) + 32) & ~*(v113 + 80)];
      v242 = *(v243 + 16);
      v242(v229, v114, v44);
      if (v112 != 1)
      {
        v128 = 1;
        v129 = v228;
        while (1)
        {
          v130 = v128 + 1;
          if (__OFADD__(v128, 1))
          {
            break;
          }

          v242(v129, &v114[*(v113 + 72) * v128], v44);
          sub_1BD5F047C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
          v131 = v229;
          v132 = sub_1BE0522F4();
          v133 = *(v113 + 8);
          if (v132)
          {
            v133(v131, v44);
            (*v245)(v131, v129, v44);
          }

          else
          {
            v133(v129, v44);
          }

          ++v128;
          v129 = v228;
          if (v130 == v112)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_104;
      }

LABEL_20:
      v115 = v206;
      (*v245)(v206, v229, v44);
      v116 = *v217;
      v117 = v115;
      v118 = 0;
    }

    else
    {
      v116 = *v217;
      v115 = v206;
      v117 = v206;
      v118 = 1;
    }

    v216 = v116;
    v116(v117, v118, 1, v44);

    v242 = *v244;
    if (v242(v115, 1, v44) == 1)
    {
      goto LABEL_46;
    }

    v236 = *v245;
    v236(v205, v115, v44);
    v119 = *v218;
    v120 = *(*v218 + 16);
    if (v120)
    {
      v232 = *(v211 + 24);
      v121 = v119 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
      v122 = *(v210 + 72);
      v123 = MEMORY[0x1E69E7CC0];
      do
      {
        v124 = v227;
        sub_1BD5F050C(v121, v227, type metadata accessor for SEStorageUsageGroup.PassEntry);
        v125 = v226;
        sub_1BD0DE19C(v232 + v124, v226, &unk_1EBD39970);
        sub_1BD5F0574(v124, type metadata accessor for SEStorageUsageGroup.PassEntry);
        if (v242(v125, 1, v44) == 1)
        {
          sub_1BD0DE53C(v125, &unk_1EBD39970);
        }

        else
        {
          v236(v225, v125, v44);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_1BD1D9350(0, *(v123 + 2) + 1, 1, v123);
          }

          v127 = *(v123 + 2);
          v126 = *(v123 + 3);
          if (v127 >= v126 >> 1)
          {
            v123 = sub_1BD1D9350(v126 > 1, v127 + 1, 1, v123);
          }

          *(v123 + 2) = v127 + 1;
          v236(&v123[((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v127], v225, v44);
        }

        v121 += v122;
        --v120;
      }

      while (v120);
    }

    else
    {
      v123 = MEMORY[0x1E69E7CC0];
    }

    v134 = *(v123 + 2);
    if (!v134)
    {
      v115 = v199;
      v136 = v199;
      v137 = 1;
      goto LABEL_44;
    }

    v135 = &v123[(*(v243 + 80) + 32) & ~*(v243 + 80)];
    v232 = *(v243 + 16);
    v232(v220, v135, v44);
    if (v134 != 1)
    {
      break;
    }

LABEL_42:
    v115 = v199;
    v236(v199, v220, v44);
    v136 = v115;
    v137 = 0;
LABEL_44:
    v216(v136, v137, 1, v44);

    if (v242(v115, 1, v44) != 1)
    {
      v169 = v197;
      v236(v197, v115, v44);
      v170 = v205;
      v168 = sub_1BE04AE84();
      v171 = *v240;
      (*v240)(v169, v44);
      v171(v170, v44);
      v167 = v218;
      v98 = v209;
LABEL_81:
      sub_1BD5F0574(v167, type metadata accessor for SEStorageUsageGroup);
      sub_1BD5F0574(v98, type metadata accessor for SEStorageUsageGroup);
      v40 = v237;
      if ((v168 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_82;
    }

    (*v240)(v205, v44);
LABEL_46:
    sub_1BD0DE53C(v115, &unk_1EBD39970);
    v138 = *(v208 + 16);
    if (v138)
    {
      v236 = *(v211 + 24);
      v139 = v208 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
      v140 = *(v210 + 72);
      v141 = MEMORY[0x1E69E7CC0];
      do
      {
        v142 = v235;
        sub_1BD5F050C(v139, v235, type metadata accessor for SEStorageUsageGroup.PassEntry);
        v143 = v234;
        sub_1BD0DE19C(v236 + v142, v234, &unk_1EBD39970);
        sub_1BD5F0574(v142, type metadata accessor for SEStorageUsageGroup.PassEntry);
        if (v242(v143, 1, v44) == 1)
        {
          sub_1BD0DE53C(v143, &unk_1EBD39970);
        }

        else
        {
          v144 = *v245;
          (*v245)(v233, v143, v44);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_1BD1D9350(0, *(v141 + 2) + 1, 1, v141);
          }

          v146 = *(v141 + 2);
          v145 = *(v141 + 3);
          if (v146 >= v145 >> 1)
          {
            v141 = sub_1BD1D9350(v145 > 1, v146 + 1, 1, v141);
          }

          *(v141 + 2) = v146 + 1;
          v144(&v141[((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v146], v233, v44);
        }

        v139 += v140;
        --v138;
      }

      while (v138);
    }

    else
    {
      v141 = MEMORY[0x1E69E7CC0];
    }

    v147 = *(v141 + 2);
    if (v147)
    {
      v148 = &v141[(*(v243 + 80) + 32) & ~*(v243 + 80)];
      v236 = *(v243 + 16);
      v236(v224, v148, v44);
      v149 = v198;
      if (v147 != 1)
      {
        v174 = 1;
        while (1)
        {
          v175 = v174 + 1;
          if (__OFADD__(v174, 1))
          {
            break;
          }

          v176 = v243;
          v236(v149, &v148[*(v243 + 72) * v174], v44);
          sub_1BD5F047C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
          v177 = v224;
          v178 = sub_1BE0522F4();
          v179 = *(v176 + 8);
          if (v178)
          {
            v179(v177, v44);
            (*v245)(v177, v149, v44);
          }

          else
          {
            v179(v149, v44);
          }

          ++v174;
          if (v175 == v147)
          {
            goto LABEL_59;
          }
        }

LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

LABEL_59:
      v150 = v201;
      (*v245)(v201, v224, v44);
      v151 = v150;
      v152 = 0;
    }

    else
    {
      v150 = v201;
      v151 = v201;
      v152 = 1;
    }

    v216(v151, v152, 1, v44);

    v153 = v242(v150, 1, v44);
    sub_1BD0DE53C(v150, &unk_1EBD39970);
    v40 = v237;
    v98 = v209;
    if (v153 != 1)
    {
      sub_1BD5F0574(v218, type metadata accessor for SEStorageUsageGroup);
      sub_1BD5F0574(v98, type metadata accessor for SEStorageUsageGroup);
LABEL_5:
      a3 = v196 + 1;
      if (v196 + 1 == v195)
      {
        return;
      }

      goto LABEL_6;
    }

    v154 = *v218;
    v155 = *(*v218 + 16);
    if (v155)
    {
      v236 = *(v211 + 24);
      v156 = v154 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
      v232 = *(v210 + 72);
      v157 = MEMORY[0x1E69E7CC0];
      v158 = v222;
      do
      {
        v159 = v231;
        sub_1BD5F050C(v156, v231, type metadata accessor for SEStorageUsageGroup.PassEntry);
        sub_1BD0DE19C(v236 + v159, v158, &unk_1EBD39970);
        sub_1BD5F0574(v159, type metadata accessor for SEStorageUsageGroup.PassEntry);
        if (v242(v158, 1, v44) == 1)
        {
          sub_1BD0DE53C(v158, &unk_1EBD39970);
        }

        else
        {
          v160 = *v245;
          (*v245)(v230, v158, v44);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v157 = sub_1BD1D9350(0, *(v157 + 2) + 1, 1, v157);
          }

          v162 = *(v157 + 2);
          v161 = *(v157 + 3);
          if (v162 >= v161 >> 1)
          {
            v157 = sub_1BD1D9350(v161 > 1, v162 + 1, 1, v157);
          }

          *(v157 + 2) = v162 + 1;
          v160(&v157[((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v162], v230, v44);
          v158 = v222;
          v40 = v237;
        }

        v156 += v232;
        --v155;
      }

      while (v155);
    }

    else
    {
      v157 = MEMORY[0x1E69E7CC0];
    }

    v163 = *(v157 + 2);
    if (v163)
    {
      v164 = &v157[(*(v243 + 80) + 32) & ~*(v243 + 80)];
      v236 = *(v243 + 16);
      v236(v223, v164, v44);
      if (v163 != 1)
      {
        v180 = 1;
        do
        {
          v181 = v180 + 1;
          if (__OFADD__(v180, 1))
          {
            goto LABEL_105;
          }

          v182 = v243;
          v183 = v221;
          v236(v221, &v164[*(v243 + 72) * v180], v44);
          sub_1BD5F047C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
          v184 = v223;
          v185 = sub_1BE0522F4();
          v186 = *(v182 + 8);
          if (v185)
          {
            v186(v184, v44);
            (*v245)(v184, v183, v44);
          }

          else
          {
            v186(v183, v44);
          }

          ++v180;
        }

        while (v181 != v163);
      }

      v165 = v200;
      (*v245)(v200, v223, v44);
      v216(v165, 0, 1, v44);

      v40 = v237;
    }

    else
    {
      v165 = v200;
      v216(v200, 1, 1, v44);
    }

    v166 = v242(v165, 1, v44);
    sub_1BD0DE53C(v165, &unk_1EBD39970);
    v98 = v209;
    if (v166 == 1)
    {
      v167 = v218;
      v168 = *(v218 + *(v207 + 28)) < *&v209[*(v207 + 28)];
      goto LABEL_81;
    }

    sub_1BD5F0574(v218, type metadata accessor for SEStorageUsageGroup);
    sub_1BD5F0574(v98, type metadata accessor for SEStorageUsageGroup);
LABEL_82:
    if (!v215)
    {
      goto LABEL_107;
    }

    v172 = v202;
    sub_1BD5F05D4(v213, v202, type metadata accessor for SEStorageUsageGroup);
    v173 = v212;
    swift_arrayInitWithTakeFrontToBack();
    sub_1BD5F05D4(v172, v173, type metadata accessor for SEStorageUsageGroup);
    v99 = v214;
    if (v214 == v203)
    {
      goto LABEL_5;
    }
  }

  v187 = 1;
  v188 = v219;
  while (1)
  {
    v189 = v187 + 1;
    if (__OFADD__(v187, 1))
    {
      break;
    }

    v190 = v243;
    v232(v188, &v135[*(v243 + 72) * v187], v44);
    sub_1BD5F047C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
    v191 = v220;
    v192 = sub_1BE0522F4();
    v193 = *(v190 + 8);
    if (v192)
    {
      v193(v191, v44);
      v236(v191, v188, v44);
    }

    else
    {
      v193(v188, v44);
    }

    ++v187;
    v188 = v219;
    if (v189 == v134)
    {
      goto LABEL_42;
    }
  }

LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
}

void sub_1BD5E6B04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v158 = a1;
  v8 = type metadata accessor for SEStorageUsageGroup(0);
  v172 = *(v8 - 8);
  v173 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v154 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v154 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v163 = &v154 - v22;
  v174 = type metadata accessor for SEStorageUsageCategory(0);
  v164 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174, v23);
  v160 = &v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v169 = &v154 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v177 = &v154 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v176 = &v154 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v168 = &v154 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v167 = &v154 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v155 = &v154 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = *(a3 + 8);
  v161 = a3;
  if (v46 < 1)
  {
    v49 = MEMORY[0x1E69E7CC0];
LABEL_112:
    a4 = *v158;
    if (!*v158)
    {
      goto LABEL_152;
    }

    v57 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_146;
    }

    v149 = v57;
LABEL_115:
    v150 = v5;
    v178 = v149;
    v57 = *(v149 + 2);
    if (v57 >= 2)
    {
      while (1)
      {
        v151 = *a3;
        if (!*a3)
        {
          goto LABEL_150;
        }

        v5 = *&v149[16 * v57];
        a3 = v149;
        v152 = *&v149[16 * v57 + 24];
        sub_1BD5EAE5C(v151 + *(v164 + 72) * v5, v151 + *(v164 + 72) * *&v149[16 * v57 + 16], v151 + *(v164 + 72) * v152, a4);
        if (v150)
        {
          goto LABEL_123;
        }

        if (v152 < v5)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1BD5ED6C8(a3);
        }

        if ((v57 - 2) >= *(a3 + 16))
        {
          goto LABEL_140;
        }

        v153 = (a3 + 16 * v57);
        *v153 = v5;
        v153[1] = v152;
        v178 = a3;
        sub_1BD5ED63C(v57 - 1);
        v149 = v178;
        v57 = *(v178 + 16);
        a3 = v161;
        if (v57 <= 1)
        {
          goto LABEL_123;
        }
      }
    }

    goto LABEL_123;
  }

  v47 = v46;
  v154 = &v154 - v45;
  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  v157 = a4;
  v162 = v19;
  while (1)
  {
    v50 = v48 + 1;
    v165 = v49;
    v171 = v48;
    if (v48 + 1 < v47)
    {
      v51 = v48;
      v159 = v47;
      a4 = *a3;
      v52 = *(v164 + 72);
      v53 = *a3 + v52 * v50;
      a3 = v154;
      sub_1BD5F050C(v53, v154, type metadata accessor for SEStorageUsageCategory);
      v175 = v52;
      v54 = a4 + v52 * v51;
      v55 = v155;
      sub_1BD5F050C(v54, v155, type metadata accessor for SEStorageUsageCategory);
      LODWORD(v170) = sub_1BD5E23A4(a3, v55);
      if (!v5)
      {
        v156 = 0;
        sub_1BD5F0574(v55, type metadata accessor for SEStorageUsageCategory);
        sub_1BD5F0574(a3, type metadata accessor for SEStorageUsageCategory);
        v166 = v159 - 1;
        v56 = v163;
        while (v50 != v166)
        {
          v58 = v50 + 1;
          a3 = v175;
          v5 = v167;
          sub_1BD5F050C(a4 + (v50 + 1) * v175, v167, type metadata accessor for SEStorageUsageCategory);
          sub_1BD5F050C(a4 + v50 * a3, v168, type metadata accessor for SEStorageUsageCategory);
          v59 = *(v174 + 20);
          v60 = *(v5 + v59);
          v61 = *(v60 + 16);
          v62 = 0.0;
          if (v61)
          {
            v5 = *(v173 + 28);
            v63 = v60 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
            a3 = *(v172 + 72);
            v64 = 0.0;
            do
            {
              sub_1BD5F050C(v63, v56, type metadata accessor for SEStorageUsageGroup);
              v65 = *(v56 + v5);
              sub_1BD5F0574(v56, type metadata accessor for SEStorageUsageGroup);
              v64 = v64 + v65;
              v63 += a3;
              --v61;
            }

            while (v61);
            v59 = *(v174 + 20);
          }

          else
          {
            v64 = 0.0;
          }

          v66 = *(v168 + v59);
          v67 = *(v66 + 16);
          v68 = v162;
          if (v67)
          {
            v5 = *(v173 + 28);
            v69 = v66 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
            a3 = *(v172 + 72);
            v62 = 0.0;
            do
            {
              sub_1BD5F050C(v69, v68, type metadata accessor for SEStorageUsageGroup);
              v70 = *(v68 + v5);
              sub_1BD5F0574(v68, type metadata accessor for SEStorageUsageGroup);
              v62 = v62 + v70;
              v69 += a3;
              --v67;
            }

            while (v67);
          }

          sub_1BD5F0574(v168, type metadata accessor for SEStorageUsageCategory);
          sub_1BD5F0574(v167, type metadata accessor for SEStorageUsageCategory);
          v57 = v58;
          v50 = v58;
          v56 = v163;
          if (((v170 ^ (v62 >= v64)) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v57 = v159;
LABEL_20:
        if (v170)
        {
          if (v57 < v171)
          {
            goto LABEL_145;
          }

          if (v171 < v57)
          {
            v71 = v175 * (v57 - 1);
            v72 = v57 * v175;
            v73 = v57;
            v74 = v171;
            v75 = v171 * v175;
            v166 = v57;
            do
            {
              if (v74 != --v73)
              {
                v76 = *v161;
                if (!*v161)
                {
                  goto LABEL_149;
                }

                sub_1BD5F05D4(v76 + v75, v160, type metadata accessor for SEStorageUsageCategory);
                if (v75 < v71 || v76 + v75 >= v76 + v72)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v75 != v71)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1BD5F05D4(v160, v76 + v71, type metadata accessor for SEStorageUsageCategory);
                v57 = v166;
              }

              ++v74;
              v71 -= v175;
              v72 -= v175;
              v75 += v175;
            }

            while (v74 < v73);
          }
        }

        v5 = v156;
        a3 = v161;
        a4 = v157;
        goto LABEL_34;
      }

      sub_1BD5F0574(v55, type metadata accessor for SEStorageUsageCategory);
      sub_1BD5F0574(a3, type metadata accessor for SEStorageUsageCategory);
LABEL_123:

      return;
    }

    v57 = v48 + 1;
LABEL_34:
    v77 = *(a3 + 8);
    if (v57 < v77)
    {
      if (__OFSUB__(v57, v171))
      {
        goto LABEL_142;
      }

      if (v57 - v171 < a4)
      {
        v78 = v171 + a4;
        if (__OFADD__(v171, a4))
        {
          goto LABEL_143;
        }

        if (v78 >= v77)
        {
          v78 = *(a3 + 8);
        }

        a4 = v174;
        if (v78 < v171)
        {
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          v149 = sub_1BD5ED6C8(v57);
          goto LABEL_115;
        }

        if (v57 != v78)
        {
          break;
        }
      }
    }

LABEL_58:
    if (v57 < v171)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v166 = v57;
    if (isUniquelyReferenced_nonNull_native)
    {
      v49 = v165;
    }

    else
    {
      v49 = sub_1BD1D7844(0, *(v165 + 2) + 1, 1, v165);
    }

    a4 = *(v49 + 2);
    v103 = *(v49 + 3);
    v57 = a4 + 1;
    if (a4 >= v103 >> 1)
    {
      v49 = sub_1BD1D7844((v103 > 1), a4 + 1, 1, v49);
    }

    *(v49 + 2) = v57;
    v104 = &v49[16 * a4];
    v105 = v166;
    *(v104 + 4) = v171;
    *(v104 + 5) = v105;
    v175 = *v158;
    if (!v175)
    {
      goto LABEL_151;
    }

    if (a4)
    {
      while (1)
      {
        v106 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v107 = *(v49 + 4);
          v108 = *(v49 + 5);
          v117 = __OFSUB__(v108, v107);
          v109 = v108 - v107;
          v110 = v117;
LABEL_78:
          if (v110)
          {
            goto LABEL_130;
          }

          v123 = &v49[16 * v57];
          v125 = *v123;
          v124 = *(v123 + 1);
          v126 = __OFSUB__(v124, v125);
          v127 = v124 - v125;
          v128 = v126;
          if (v126)
          {
            goto LABEL_133;
          }

          v129 = &v49[16 * v106 + 32];
          v131 = *v129;
          v130 = *(v129 + 1);
          v117 = __OFSUB__(v130, v131);
          v132 = v130 - v131;
          if (v117)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v127, v132))
          {
            goto LABEL_137;
          }

          if (v127 + v132 >= v109)
          {
            if (v109 < v132)
            {
              v106 = v57 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v133 = &v49[16 * v57];
        v135 = *v133;
        v134 = *(v133 + 1);
        v117 = __OFSUB__(v134, v135);
        v127 = v134 - v135;
        v128 = v117;
LABEL_92:
        if (v128)
        {
          goto LABEL_132;
        }

        v136 = &v49[16 * v106];
        v138 = *(v136 + 4);
        v137 = *(v136 + 5);
        v117 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v117)
        {
          goto LABEL_135;
        }

        if (v139 < v127)
        {
          goto LABEL_3;
        }

LABEL_99:
        a4 = v106 - 1;
        if (v106 - 1 >= v57)
        {
          __break(1u);
LABEL_126:
          __break(1u);
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
          goto LABEL_144;
        }

        v144 = *a3;
        if (!*a3)
        {
          goto LABEL_148;
        }

        v145 = a3;
        a3 = v49;
        v57 = *&v49[16 * a4 + 32];
        v146 = *&v49[16 * v106 + 40];
        sub_1BD5EAE5C(v144 + *(v164 + 72) * v57, v144 + *(v164 + 72) * *&v49[16 * v106 + 32], v144 + *(v164 + 72) * v146, v175);
        if (v5)
        {
          goto LABEL_123;
        }

        if (v146 < v57)
        {
          goto LABEL_126;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v147 = a3;
        }

        else
        {
          v147 = sub_1BD5ED6C8(a3);
        }

        if (a4 >= *(v147 + 2))
        {
          goto LABEL_127;
        }

        a3 = v145;
        v148 = &v147[16 * a4];
        *(v148 + 4) = v57;
        *(v148 + 5) = v146;
        v178 = v147;
        sub_1BD5ED63C(v106);
        v49 = v178;
        v57 = *(v178 + 16);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v111 = &v49[16 * v57 + 32];
      v112 = *(v111 - 64);
      v113 = *(v111 - 56);
      v117 = __OFSUB__(v113, v112);
      v114 = v113 - v112;
      if (v117)
      {
        goto LABEL_128;
      }

      v116 = *(v111 - 48);
      v115 = *(v111 - 40);
      v117 = __OFSUB__(v115, v116);
      v109 = v115 - v116;
      v110 = v117;
      if (v117)
      {
        goto LABEL_129;
      }

      v118 = &v49[16 * v57];
      v120 = *v118;
      v119 = *(v118 + 1);
      v117 = __OFSUB__(v119, v120);
      v121 = v119 - v120;
      if (v117)
      {
        goto LABEL_131;
      }

      v117 = __OFADD__(v109, v121);
      v122 = v109 + v121;
      if (v117)
      {
        goto LABEL_134;
      }

      if (v122 >= v114)
      {
        v140 = &v49[16 * v106 + 32];
        v142 = *v140;
        v141 = *(v140 + 1);
        v117 = __OFSUB__(v141, v142);
        v143 = v141 - v142;
        if (v117)
        {
          goto LABEL_138;
        }

        if (v109 < v143)
        {
          v106 = v57 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

LABEL_3:
    v47 = *(a3 + 8);
    v48 = v166;
    a4 = v157;
    if (v166 >= v47)
    {
      goto LABEL_112;
    }
  }

  v156 = v5;
  v175 = *a3;
  v170 = *(v164 + 72);
  v159 = v78;
LABEL_44:
  v166 = v57;
  v79 = v57;
  while (1)
  {
    v80 = v79 - 1;
    v82 = v175;
    v81 = v176;
    v83 = v170;
    v84 = v175 + v170 * v79;
    sub_1BD5F050C(v84, v176, type metadata accessor for SEStorageUsageCategory);
    v85 = v82 + v80 * v83;
    sub_1BD5F050C(v85, v177, type metadata accessor for SEStorageUsageCategory);
    v86 = *(a4 + 20);
    v87 = *(v81 + v86);
    v88 = *(v87 + 16);
    v89 = 0.0;
    if (v88)
    {
      v90 = *(v173 + 28);
      v91 = v87 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
      v92 = *(v172 + 72);
      v93 = 0.0;
      do
      {
        sub_1BD5F050C(v91, v15, type metadata accessor for SEStorageUsageGroup);
        v94 = *&v15[v90];
        sub_1BD5F0574(v15, type metadata accessor for SEStorageUsageGroup);
        v93 = v93 + v94;
        v91 += v92;
        --v88;
      }

      while (v88);
      v86 = *(v174 + 20);
    }

    else
    {
      v93 = 0.0;
    }

    v95 = *(v177 + v86);
    v96 = *(v95 + 16);
    if (v96)
    {
      v97 = *(v173 + 28);
      v98 = v95 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
      v99 = *(v172 + 72);
      v89 = 0.0;
      do
      {
        sub_1BD5F050C(v98, v11, type metadata accessor for SEStorageUsageGroup);
        v100 = *&v11[v97];
        sub_1BD5F0574(v11, type metadata accessor for SEStorageUsageGroup);
        v89 = v89 + v100;
        v98 += v99;
        --v96;
      }

      while (v96);
    }

    sub_1BD5F0574(v177, type metadata accessor for SEStorageUsageCategory);
    sub_1BD5F0574(v176, type metadata accessor for SEStorageUsageCategory);
    a4 = v174;
    if (v89 >= v93)
    {
LABEL_43:
      v57 = v166 + 1;
      if (v166 + 1 == v159)
      {
        v57 = v159;
        v5 = v156;
        a3 = v161;
        goto LABEL_58;
      }

      goto LABEL_44;
    }

    if (!v175)
    {
      break;
    }

    v101 = v169;
    sub_1BD5F05D4(v84, v169, type metadata accessor for SEStorageUsageCategory);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BD5F05D4(v101, v85, type metadata accessor for SEStorageUsageCategory);
    v79 = v80;
    if (v80 == v171)
    {
      goto LABEL_43;
    }
  }

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
}