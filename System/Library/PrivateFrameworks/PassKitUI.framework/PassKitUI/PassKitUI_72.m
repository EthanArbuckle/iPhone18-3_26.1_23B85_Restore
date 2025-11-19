uint64_t sub_1BD7CCC90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD7CD62C();
  *a1 = result;
  return result;
}

void sub_1BD7CCCC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE007265626D754ELL;
  v4 = 0xED00006572757470;
  v5 = 0x61436172656D6163;
  if (v2 != 1)
  {
    v5 = 0x6F72506F54706174;
    v4 = 0xEE006E6F69736976;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6472614365707974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BD7CCD44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x61436172656D6163;
  v4 = 0xED00006572757470;
  if (v2 != 1)
  {
    v3 = 0x6F72506F54706174;
    v4 = 0xEE006E6F69736976;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6472614365707974;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE007265626D754ELL;
  }

  v7 = 0x61436172656D6163;
  v8 = 0xED00006572757470;
  if (*a2 != 1)
  {
    v7 = 0x6F72506F54706174;
    v8 = 0xEE006E6F69736976;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6472614365707974;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE007265626D754ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE053B84();
  }

  return v11 & 1;
}

uint64_t sub_1BD7CCE80()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD7CCF48()
{
  sub_1BE052524();
}

uint64_t sub_1BD7CCFFC()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

void sub_1BD7CD0C0()
{
  v1 = v0;
  v20 = *MEMORY[0x1E69E9840];
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*v0 & 1) == 0)
  {
    *v0 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 32) = 0;
    sub_1BE04BB94();
    v8 = sub_1BE04B8E4();
    v9 = [v8 context];

    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = [v9 configuration];

    v11 = [sub_1BE04B934() deviceRegion];
    swift_unknownObjectRelease();
    if (!v10)
    {

LABEL_19:
      v18 = sub_1BD536F64(inited);

      (*(v3 + 8))(v6, v2);

      *(v1 + 1) = v18;
      return;
    }

    if ([v10 tapToProvisionEnabledForRegion_])
    {
      inited = sub_1BD1D74AC(1, 2, 1, inited);
      *(inited + 16) = 2;
      *(inited + 33) = 2;
      if (([v10 tapToProvisionFirstProvisioningEnabledForRegion_] & 1) != 0 || PKEnableTapToProvision())
      {
        v1[32] = 2;
      }
    }

    v12 = [v10 cameraProvisioningEnabledForRegion_];
    v13 = v10;
    v14 = [v13 cameraFirstProvisioningEnabledForRegion_];

    if (v14)
    {
      if (v1[32])
      {
        v15 = sub_1BE053B84();

        if ((v15 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v1[32] = 1;
    }

LABEL_15:
    if (v12)
    {
      v17 = *(inited + 16);
      v16 = *(inited + 24);
      if (v17 >= v16 >> 1)
      {
        inited = sub_1BD1D74AC((v16 > 1), v17 + 1, 1, inited);
      }

      *(inited + 16) = v17 + 1;
      *(inited + v17 + 32) = 1;
    }

    goto LABEL_19;
  }
}

uint64_t sub_1BD7CD458()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1BD536F64(MEMORY[0x1E69E7CC0]);
  v2 = sub_1BD536F64(v0);
  result = sub_1BD536F64(v0);
  byte_1EBDAB6E8 = 0;
  qword_1EBDAB6F0 = v1;
  unk_1EBDAB6F8 = v2;
  qword_1EBDAB700 = result;
  byte_1EBDAB708 = 0;
  return result;
}

uint64_t sub_1BD7CD4BC(uint64_t a1, uint64_t a2)
{
  sub_1BD7CC9FC(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
  sub_1BD03B274();
  v3 = sub_1BE0522E4();
  v5 = v4;

  sub_1BD7CC9FC(a2);
  v6 = sub_1BE0522E4();
  v8 = v7;

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000028, 0x80000001BE13A570);
  MEMORY[0x1BFB3F610](v3, v5);

  MEMORY[0x1BFB3F610](0x3A6E656573202C5DLL, 0xEA00000000005B20);
  MEMORY[0x1BFB3F610](v6, v8);

  MEMORY[0x1BFB3F610](10589, 0xE200000000000000);
  return 0;
}

uint64_t sub_1BD7CD62C()
{
  v0 = sub_1BE053A44();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id sub_1BD7CD678(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  v29 = a2;
  v32 = a6;
  v33 = a7;
  v31 = a5;
  v30 = a4;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(v13, a3, v9);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = (v15 + v11) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = v14;
  *(v19 + 3) = a1;
  *(v19 + 4) = v29;
  (*(v10 + 32))(&v19[v15], v13, v9);
  v19[v16] = v30;
  v20 = &v19[v17];
  v22 = v31;
  v21 = v32;
  *(v20 + 1) = v31;
  v23 = &v19[v18];
  v24 = v33;
  *v23 = v21;
  *(v23 + 1) = v24;
  sub_1BE048964();
  sub_1BE048C84();
  v25 = v22;
  sub_1BE048964();
  v26 = v28;
  sub_1BE052E74();

  return [v26 setNeedsUpdateConfiguration];
}

uint64_t sub_1BD7CD864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v17 = MEMORY[0x1E69E7CC0];
    v8 = *(a4 + 16);
    if (v8)
    {
      v9 = a4 + 40;
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BE048C84();
        v11 = sub_1BE052404();

        v12 = PKPeerPaymentRecurringPaymentFrequencyFromString();

        if (v12)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1BD1D9898(0, *(v10 + 16) + 1, 1, v10);
            v10 = result;
          }

          v14 = *(v10 + 16);
          v13 = *(v10 + 24);
          if (v14 >= v13 >> 1)
          {
            result = sub_1BD1D9898((v13 > 1), v14 + 1, 1, v10);
            v10 = result;
          }

          *(v10 + 16) = v14 + 1;
          *(v10 + 8 * v14 + 32) = v12;
          v17 = v10;
        }

        v9 += 16;
        --v8;
      }

      while (v8);
    }

    MEMORY[0x1EEE9AC00](result, v6);
    v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53DF8);
    v16[4] = sub_1BD7CE4A4();
    __swift_allocate_boxed_opaque_existential_1(v16);
    type metadata accessor for FrequencySelectionRow();
    sub_1BD7CE508(&qword_1EBD53E08, type metadata accessor for FrequencySelectionRow);
    v15 = v7;
    sub_1BE04FCE4();
    MEMORY[0x1BFB3FEF0](v16);
  }

  return result;
}

uint64_t sub_1BD7CDAD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v11 = *a1;
  type metadata accessor for FrequencySelectionModel();
  v12 = swift_allocObject();
  v13 = (v12 + OBJC_IVAR____TtC9PassKitUI23FrequencySelectionModel_onFrequencyChange);
  *v13 = 0;
  v13[1] = 0;
  if (*(v11 + 16))
  {
    *(v12 + OBJC_IVAR____TtC9PassKitUI23FrequencySelectionModel_options) = v11;
    sub_1BE048C84();
  }

  else
  {
    *(v12 + OBJC_IVAR____TtC9PassKitUI23FrequencySelectionModel_options) = &unk_1F3B8EED0;
  }

  swift_beginAccess();
  sub_1BE04D874();
  swift_endAccess();
  v14 = type metadata accessor for FrequencySelectionRow();
  v15 = v14[5];
  v16 = sub_1BE04AF64();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a7 + v15, a2, v16);
  (*(v17 + 56))(a7 + v15, 0, 1, v16);
  sub_1BD7CE508(&qword_1EBD3D2B0, type metadata accessor for FrequencySelectionModel);
  sub_1BE048964();
  v18 = a4;
  result = sub_1BE04E954();
  *a7 = result;
  a7[1] = v20;
  *(a7 + v14[6]) = a3 & 1;
  *(a7 + v14[7]) = a4;
  v21 = (a7 + v14[8]);
  *v21 = a5;
  v21[1] = a6;
  return result;
}

id PKFrequencySelectionCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PKFrequencySelectionCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PKFrequencySelectionCollectionViewCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id PKFrequencySelectionCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKFrequencySelectionCollectionViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PKFrequencySelectionCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKFrequencySelectionCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKFrequencySelectionCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD7CE270()
{
  v1 = *(v0 + 16);
  v2 = sub_1BE052404();
  (*(v1 + 16))(v1, v2);
}

uint64_t objectdestroy_2Tm_3()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t sub_1BD7CE4A4()
{
  result = qword_1EBD53E00;
  if (!qword_1EBD53E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53E00);
  }

  return result;
}

uint64_t sub_1BD7CE508(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD7CE580(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E38);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v50 - v9;
  v11 = sub_1BE04AA64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v50 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E28);
  MEMORY[0x1EEE9AC00](v54, v20);
  v22 = &v50 - v21;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E50);
  MEMORY[0x1EEE9AC00](v53, v23);
  v25 = (&v50 - v24);
  v58 = a1[1];
  v59 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E48);
  sub_1BE0516A4();
  if ((v57 & 1) == 0 && v56 == 2)
  {
    v58 = *a1;
    v26 = *(&v58 + 1);
    sub_1BD0DE19C(&v58, &v56, &qword_1EBD3AE38);
    type metadata accessor for AccountModel();
    sub_1BD7D0130(&qword_1EBD3AE50, type metadata accessor for AccountModel);
    v27 = v26;
    v28 = sub_1BE04E954();
    v30 = v29;
    v31 = sub_1BE04E954();
    v33 = v32;
    v34 = sub_1BE04E954();
    v36 = v35;
    v37 = v30;
    v38 = v33;
    v39 = v37;
    v40 = v36;

    *v25 = v28;
    v25[1] = v39;
    v25[2] = v31;
    v25[3] = v38;
    v25[4] = v34;
    v25[5] = v40;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFC0);
    sub_1BD0DE4F4(&qword_1EBD3AFC8, &qword_1EBD3AFC0);
    sub_1BD7CF168();
    sub_1BE04F9A4();

    return;
  }

  sub_1BE052434();
  sub_1BE04AA54();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BD0DE53C(v10, &unk_1EBD3CF70);
    v41 = 1;
    v43 = v51;
    v42 = v52;
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    v44 = sub_1BE052404();
    v45 = PDDeviceSpecificLocalizedStringKeyForKey();

    v46 = PKLocalizedString(v45);
    if (!v46)
    {
      __break(1u);
      return;
    }

    v47 = sub_1BE052434();
    v49 = v48;

    *&v58 = v47;
    *(&v58 + 1) = v49;
    (*(v12 + 16))(v15, v19, v11);
    sub_1BD0DDEBC();
    sub_1BE0504C4();
    (*(v12 + 8))(v19, v11);
    v43 = v51;
    v42 = v52;
    (*(v51 + 32))(v22, v6, v52);
    v41 = 0;
  }

  (*(v43 + 56))(v22, v41, 1, v42);
  sub_1BD0DE19C(v22, v25, &qword_1EBD53E28);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFC0);
  sub_1BD0DE4F4(&qword_1EBD3AFC8, &qword_1EBD3AFC0);
  sub_1BD7CF168();
  sub_1BE04F9A4();
  sub_1BD0DE53C(v22, &qword_1EBD53E28);
}

uint64_t sub_1BD7CEBD0(uint64_t a1)
{
  v1[22] = a1;
  sub_1BE0528A4();
  v1[23] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[24] = v3;
  v1[25] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD7CEC68, v3, v2);
}

uint64_t sub_1BD7CEC68()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[26] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD7CEDAC;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C198);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD1BD93C;
    v0[13] = &block_descriptor_182;
    v0[14] = v3;
    [v2 authorizationStatusWithCompletion_];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1BD7CEDAC()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1BD7CEEB4, v2, v1);
}

uint64_t sub_1BD7CEEB4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);

  v3 = *(v0 + 144);
  v4 = *(v2 + 32);
  *(v0 + 80) = *(v2 + 16);
  *(v0 + 96) = v4;
  *(v0 + 160) = v3;
  *(v0 + 168) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E48);
  sub_1BE0516B4();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BD7CEF68@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v11 = *(v1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E10);
  sub_1BD7CF0B0();
  sub_1BE0504E4();
  v12 = v9;
  v13 = v10;
  v14 = v11;
  v4 = swift_allocObject();
  v5 = v10;
  *(v4 + 16) = v9;
  *(v4 + 32) = v5;
  *(v4 + 48) = v11;
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E40) + 36));
  sub_1BE04E7B4();
  sub_1BD0DE19C(&v12, v8, &qword_1EBD3AE38);
  sub_1BD0DE19C(&v13, v8, &qword_1EBD53E48);
  result = sub_1BE0528B4();
  *v6 = &unk_1BE0F95F8;
  v6[1] = v4;
  return result;
}

unint64_t sub_1BD7CF0B0()
{
  result = qword_1EBD53E18;
  if (!qword_1EBD53E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53E10);
    sub_1BD0DE4F4(&qword_1EBD3AFC8, &qword_1EBD3AFC0);
    sub_1BD7CF168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53E18);
  }

  return result;
}

unint64_t sub_1BD7CF168()
{
  result = qword_1EBD53E20;
  if (!qword_1EBD53E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53E28);
    sub_1BD0DE4F4(&qword_1EBD53E30, &qword_1EBD53E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53E20);
  }

  return result;
}

uint64_t sub_1BD7CF218()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD0F985C;

  return sub_1BD7CEBD0(v0 + 16);
}

id sub_1BD7CF2AC(uint64_t a1, void *a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B80E0], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v5 + 8))(v9, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v15 = v22;
    v16 = [v22 accountIdentifier];

    LOBYTE(v15) = PKHasDisabledAPYUpdateNotificationsForAccountIdentifier();
    LOBYTE(v16) = v15 ^ 1;
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v28 = v16;
    v18 = a2;
    sub_1BE051694();
    v19 = v22;
    v20 = v23;
    v22 = v12;
    v23 = v14;
    v24 = sub_1BD7D0034;
    v25 = v17;
    v26 = v19;
    v27 = v20;
    sub_1BE052434();
    sub_1BD7CFFB0();
    sub_1BE050DE4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD7CF53C(uint64_t a1, void *a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B80E0], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v5 + 8))(v9, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v15 = v22;
    v16 = [v22 accountIdentifier];

    LOBYTE(v15) = PKHasDisabledInterestPaidNotificationsForAccountIdentifier();
    LOBYTE(v16) = v15 ^ 1;
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v28 = v16;
    v18 = a2;
    sub_1BE051694();
    v19 = v22;
    v20 = v23;
    v22 = v12;
    v23 = v14;
    v24 = sub_1BD7D0004;
    v25 = v17;
    v26 = v19;
    v27 = v20;
    sub_1BE052434();
    sub_1BD7CFFB0();
    sub_1BE050DE4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD7CF7CC(uint64_t a1, void *a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B80E0], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v5 + 8))(v9, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v15 = v22;
    v16 = [v22 accountIdentifier];

    LOBYTE(v15) = PKHasDisabledTransactionsNotificationsForAccountIdentifier();
    LOBYTE(v16) = v15 ^ 1;
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v28 = v16;
    v18 = a2;
    sub_1BE051694();
    v19 = v22;
    v20 = v23;
    v22 = v12;
    v23 = v14;
    v24 = sub_1BD7CFF80;
    v25 = v17;
    v26 = v19;
    v27 = v20;
    sub_1BE052434();
    sub_1BD7CFFB0();
    sub_1BE050DE4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD7CFA54(char a1, uint64_t a2, uint64_t a3, void (*a4)(id, BOOL))
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6 = [v7 accountIdentifier];

  a4(v6, (a1 & 1) == 0);
}

uint64_t sub_1BD7CFB1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D58);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9[-v4];
  v13 = v0[2];
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v10 = v0;
  sub_1BE051814();
  v12 = v14;
  sub_1BE0516A4();
  v11 = v13;
  v12 = *v0;
  v6 = swift_allocObject();
  v7 = v0[1];
  v6[1] = *v0;
  v6[2] = v7;
  v6[3] = v0[2];
  sub_1BD206260(&v12, &v13);
  sub_1BE048964();
  sub_1BD0DE19C(&v14, &v13, &qword_1EBD54350);
  sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58);
  sub_1BE051064();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1BD7CFD6C@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  result = sub_1BE0506C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_1BD7CFE44()
{
  result = qword_1EBD53E58;
  if (!qword_1EBD53E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53E40);
    sub_1BD0DE4F4(&qword_1EBD53E60, &qword_1EBD53E68);
    sub_1BD7D0130(&qword_1EBD37148, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53E58);
  }

  return result;
}

unint64_t sub_1BD7CFFB0()
{
  result = qword_1EBD53E70;
  if (!qword_1EBD53E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53E70);
  }

  return result;
}

unint64_t sub_1BD7D0074()
{
  result = qword_1EBD53E78;
  if (!qword_1EBD53E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53E80);
    sub_1BD7CFFB0();
    sub_1BD7D0130(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53E78);
  }

  return result;
}

uint64_t sub_1BD7D0130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD7D01E0()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

void *sub_1BD7D02FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v28 - v4;
  v6 = type metadata accessor for WrappedPass(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD7D071C(v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_1BD7D5344(v5, v10, type metadata accessor for WrappedPass);
    v11 = sub_1BD4943B0();
    v30 = v11;
    v31 = v12;
    v13 = *&v1[*(type metadata accessor for UnavailablePaymentMethodItem() + 28)];
    if (v13)
    {
      v14 = [v13 displayName];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1BE052434();
        v18 = v17;

        v28 = 10272;
        v29 = 0xE200000000000000;
        MEMORY[0x1BFB3F610](v16, v18);

        MEMORY[0x1BFB3F610](41, 0xE100000000000000);
        MEMORY[0x1BFB3F610](v28, v29);

        v11 = v30;
      }
    }

    sub_1BD7D52E4(v10, type metadata accessor for WrappedPass);
    return v11;
  }

  sub_1BD0DE53C(v5, &unk_1EBD43B90);
  if (*v0 == 2)
  {

LABEL_11:
    v20 = &v0[*(type metadata accessor for UnavailablePaymentMethodItem() + 36)];
    v21 = *v20;
    if (*v20)
    {
      v22 = *(v20 + 1);
      sub_1BD3EFCD8(*v20, v22);
      v11 = sub_1BD41F634(v21);

      return v11;
    }

    goto LABEL_13;
  }

  v19 = sub_1BE053B84();

  if (v19)
  {
    goto LABEL_11;
  }

LABEL_13:
  v23 = *&v0[*(type metadata accessor for UnavailablePaymentMethodItem() + 40)];
  if (!v23)
  {
    return 0;
  }

  v24 = v23;
  if ([v24 type] != 1)
  {

    return 0;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v26 = v24;
    v27 = [v11 issuerName];
    v11 = sub_1BE052434();
  }

  else
  {
  }

  return v11;
}

uint64_t sub_1BD7D071C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v37 - v17;
  v19 = *v1;
  if (v19 > 2)
  {
    if (v19 != 3)
    {
      if (v19 == 4)
      {
        v24 = type metadata accessor for UnavailablePaymentMethodItem();
        sub_1BD0DE19C(&v1[*(v24 + 20)], v15, &qword_1EBD520A0);
        v25 = type metadata accessor for AvailablePass(0);
        if ((*(*(v25 - 8) + 48))(v15, 1, v25) == 1)
        {
          v22 = &qword_1EBD520A0;
          v23 = v15;
          goto LABEL_17;
        }

        sub_1BD7D53AC(v15, a1, type metadata accessor for WrappedPass);
        v34 = type metadata accessor for AvailablePass;
        v35 = v15;
        goto LABEL_22;
      }

      goto LABEL_10;
    }

    v31 = type metadata accessor for UnavailablePaymentMethodItem();
    sub_1BD0DE19C(&v1[*(v31 + 24)], v7, &qword_1EBD3C3F8);
    v32 = type metadata accessor for UnavailablePass(0);
    if ((*(*(v32 - 8) + 48))(v7, 1, v32) == 1)
    {
      v22 = &qword_1EBD3C3F8;
      v23 = v7;
      goto LABEL_17;
    }

    sub_1BD7D53AC(v7, a1, type metadata accessor for WrappedPass);
    v34 = type metadata accessor for UnavailablePass;
    v35 = v7;
LABEL_22:
    sub_1BD7D52E4(v35, v34);
    v36 = type metadata accessor for WrappedPass(0);
    return (*(*(v36 - 8) + 56))(a1, 0, 1, v36);
  }

  if (!*v1)
  {
    v29 = type metadata accessor for UnavailablePaymentMethodItem();
    sub_1BD0DE19C(&v1[*(v29 + 20)], v18, &qword_1EBD520A0);
    v30 = type metadata accessor for AvailablePass(0);
    if ((*(*(v30 - 8) + 48))(v18, 1, v30) == 1)
    {
      v22 = &qword_1EBD520A0;
      v23 = v18;
      goto LABEL_17;
    }

    sub_1BD7D53AC(v18, a1, type metadata accessor for WrappedPass);
    v34 = type metadata accessor for AvailablePass;
    v35 = v18;
    goto LABEL_22;
  }

  if (v19 == 1)
  {
    v20 = type metadata accessor for UnavailablePaymentMethodItem();
    sub_1BD0DE19C(&v1[*(v20 + 24)], v10, &qword_1EBD3C3F8);
    v21 = type metadata accessor for UnavailablePass(0);
    if ((*(*(v21 - 8) + 48))(v10, 1, v21) == 1)
    {
      v22 = &qword_1EBD3C3F8;
      v23 = v10;
LABEL_17:
      sub_1BD0DE53C(v23, v22);
      v33 = type metadata accessor for WrappedPass(0);
      return (*(*(v33 - 8) + 56))(a1, 1, 1, v33);
    }

    sub_1BD7D53AC(v10, a1, type metadata accessor for WrappedPass);
    v34 = type metadata accessor for UnavailablePass;
    v35 = v10;
    goto LABEL_22;
  }

LABEL_10:
  v26 = type metadata accessor for WrappedPass(0);
  v27 = *(*(v26 - 8) + 56);

  return v27(a1, 1, 1, v26);
}

unint64_t sub_1BD7D0C30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v43 - v7;
  v9 = type metadata accessor for UnavailablePass(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v43 - v16;
  result = *v0;
  if (*v0 > 2u)
  {
    v20 = type metadata accessor for UnavailablePaymentMethodItem();
    v21 = v20;
    v22 = *&v0[*(v20 + 40)];
    if (v22)
    {
      v23 = *&v0[*(v20 + 44)];
      if (v23)
      {
        v24 = v22;
        v25 = v23;
        v26 = [v25 ineligibleDetailsForCriteria_];
        if (([v26 isEligible] & 1) == 0)
        {
          v35 = [v25 configuration];
          v36 = [v35 currencyCode];

          if (v36)
          {
            v37 = sub_1BE052434();
            v39 = v38;
          }

          else
          {
            v37 = 0;
            v39 = 0;
          }

          sub_1BD480FEC(v37, v39);
          v42 = v41;

          return v42;
        }
      }
    }

    sub_1BD0DE19C(&v0[*(v21 + 24)], v4, &qword_1EBD3C3F8);
    if ((*(v10 + 48))(v4, 1, v9) == 1)
    {
      sub_1BD0DE53C(v4, &qword_1EBD3C3F8);
      return 0;
    }

    sub_1BD7D5344(v4, v13, type metadata accessor for UnavailablePass);
    v27 = v0[*(v21 + 32)];
    if (v27 == 2)
    {
      v28 = v13;
LABEL_22:
      sub_1BD7D52E4(v28, type metadata accessor for UnavailablePass);
      return 0;
    }

    v33 = sub_1BD68BA18(*&v13[*(v9 + 28)], *&v13[*(v9 + 28) + 8], v13[*(v9 + 28) + 16], v27 & 1);
    v34 = v13;
    goto LABEL_25;
  }

  if (*v0)
  {
    if (result != 1)
    {
      v29 = &v0[*(type metadata accessor for UnavailablePaymentMethodItem() + 36)];
      v30 = *v29;
      if (*v29)
      {
        v31 = *(v29 + 1);
        sub_1BD3EFCD8(*v29, v31);
        v32 = sub_1BD41F634(v30);

        return v32;
      }

      return 0;
    }

    v19 = type metadata accessor for UnavailablePaymentMethodItem();
    sub_1BD0DE19C(&v0[*(v19 + 24)], v8, &qword_1EBD3C3F8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1BD0DE53C(v8, &qword_1EBD3C3F8);
      return 0;
    }

    sub_1BD7D5344(v8, v17, type metadata accessor for UnavailablePass);
    v40 = v0[*(v19 + 32)];
    if (v40 == 2)
    {
      v28 = v17;
      goto LABEL_22;
    }

    v33 = sub_1BD68BA18(*&v17[*(v9 + 28)], *&v17[*(v9 + 28) + 8], v17[*(v9 + 28) + 16], v40 & 1);
    v34 = v17;
LABEL_25:
    sub_1BD7D52E4(v34, type metadata accessor for UnavailablePass);
    return v33;
  }

  return result;
}

id sub_1BD7D10D4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  if (*v0 - 3 > 1)
  {
    return 0;
  }

  v10 = *&v0[*(type metadata accessor for UnavailablePaymentMethodItem() + 40)];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [v11 type];
  if (v12 == 2)
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69B8088], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_1BE04B6F4();

      (*(v2 + 8))(v5, v1);
      return v20;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (v12 == 1)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v11;
      v16 = [v14 localizedTitleOverride];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1BE052434();

        return v18;
      }
    }

    (*(v2 + 104))(v9, *MEMORY[0x1E69B8078], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v21 = result;
      v18 = sub_1BE04B6F4();

      (*(v2 + 8))(v9, v1);
      return v18;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1BD7D139C()
{
  sub_1BE053D04();
  sub_1BD7D14C8();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD7D13F8()
{
  sub_1BD7D14C8();
  sub_1BE052524();
}

uint64_t sub_1BD7D1448()
{
  sub_1BE053D04();
  sub_1BD7D14C8();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD7D14A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD7D14C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD7D14C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = v42 - v9;
  v11 = 0xEF73736150656C62;
  v12 = 0x616C696176616E75;
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  v13 = *v0;
  v14 = 0x80000001BE117FC0;
  v15 = 0x80000001BE117FF0;
  v16 = 0xD000000000000017;
  if (v13 == 4)
  {
    v16 = 0xD000000000000028;
  }

  else
  {
    v15 = 0x80000001BE118020;
  }

  if (v13 == 3)
  {
    v16 = 0xD00000000000002ALL;
  }

  else
  {
    v14 = v15;
  }

  if (v13 != 1)
  {
    v12 = 0xD000000000000016;
    v11 = 0x80000001BE117FA0;
  }

  if (!*v0)
  {
    v12 = 0xD000000000000015;
    v11 = 0x80000001BE117F70;
  }

  if (*v0 <= 2u)
  {
    v17 = v12;
  }

  else
  {
    v17 = v16;
  }

  if (*v0 <= 2u)
  {
    v18 = v11;
  }

  else
  {
    v18 = v14;
  }

  MEMORY[0x1BFB3F610](v17, v18, v8);

  v19 = type metadata accessor for UnavailablePaymentMethodItem();
  sub_1BD0DE19C(&v0[v19[5]], v10, &qword_1EBD520A0);
  v20 = type metadata accessor for AvailablePass(0);
  v21 = (*(*(v20 - 8) + 48))(v10, 1, v20);
  if (v21 == 1)
  {
    sub_1BD0DE53C(v10, &qword_1EBD520A0);
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v24 = sub_1BD49C81C(v21);
    v23 = v25;
    sub_1BD7D52E4(v10, type metadata accessor for AvailablePass);
    v22 = v24;
  }

  MEMORY[0x1BFB3F610](v22, v23);

  sub_1BD0DE19C(&v1[v19[6]], v5, &qword_1EBD3C3F8);
  v26 = type metadata accessor for UnavailablePass(0);
  if ((*(*(v26 - 8) + 48))(v5, 1, v26) == 1)
  {
    sub_1BD0DE53C(v5, &qword_1EBD3C3F8);
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v29 = sub_1BD495408();
    v28 = v30;
    sub_1BD7D52E4(v5, type metadata accessor for UnavailablePass);
    v27 = v29;
  }

  MEMORY[0x1BFB3F610](v27, v28);

  v31 = *&v1[v19[7]];
  if (v31 && (v31 = [v31 applicationIdentifier]) != 0)
  {
    v32 = v31;
    v33 = sub_1BE052434();
    v35 = v34;

    v31 = v33;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  MEMORY[0x1BFB3F610](v31, v35);

  v36 = *&v1[v19[10]];
  if (v36)
  {
    v37 = [v36 identifier];
    v38 = sub_1BE052434();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0xE000000000000000;
  }

  MEMORY[0x1BFB3F610](v38, v40);

  return v42[0];
}

uint64_t sub_1BD7D18EC()
{
  sub_1BE052524();
}

uint64_t sub_1BD7D19F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD7D5840();
  *a1 = result;
  return result;
}

void sub_1BD7D1A28(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF73736150656C62;
  v4 = 0x616C696176616E75;
  v5 = 0x80000001BE117FC0;
  v6 = 0x80000001BE117FF0;
  v7 = 0xD000000000000017;
  if (v2 == 4)
  {
    v7 = 0xD000000000000028;
  }

  else
  {
    v6 = 0x80000001BE118020;
  }

  if (v2 == 3)
  {
    v7 = 0xD00000000000002ALL;
  }

  else
  {
    v5 = v6;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000001BE117FA0;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001BE117F70;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1BD7D1AFC(void **a1)
{
  v2 = *(type metadata accessor for UnavailablePaymentMethodItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED704(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BD7D1BA4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1BD7D1BA4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BE053B14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for UnavailablePaymentMethodItem();
        v6 = sub_1BE0527B4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for UnavailablePaymentMethodItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BD7D1F74(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BD7D1CD0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BD7D1CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = type metadata accessor for UnavailablePaymentMethodItem();
  v9 = MEMORY[0x1EEE9AC00](v43, v8);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v30 - v13;
  result = MEMORY[0x1EEE9AC00](v12, v15);
  v19 = &v30 - v18;
  v32 = a2;
  if (a3 != a2)
  {
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v37 = *a4;
    v31 = v20;
    v24 = v37 + v20 * a3;
LABEL_5:
    v35 = v21;
    v36 = a3;
    v33 = v24;
    v34 = v23;
    while (1)
    {
      sub_1BD7D53AC(v24, v19, type metadata accessor for UnavailablePaymentMethodItem);
      sub_1BD7D53AC(v21, v14, type metadata accessor for UnavailablePaymentMethodItem);
      v41 = sub_1BD7D02FC();
      v42 = v25;
      v39 = sub_1BD7D02FC();
      v40 = v26;
      sub_1BD0DDEBC();
      v27 = sub_1BE0535A4();

      sub_1BD7D52E4(v14, type metadata accessor for UnavailablePaymentMethodItem);
      result = sub_1BD7D52E4(v19, type metadata accessor for UnavailablePaymentMethodItem);
      if (v27 != -1)
      {
LABEL_4:
        a3 = v36 + 1;
        v21 = v35 + v31;
        v23 = v34 - 1;
        v24 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = v38;
      sub_1BD7D5344(v24, v38, type metadata accessor for UnavailablePaymentMethodItem);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1BD7D5344(v28, v21, type metadata accessor for UnavailablePaymentMethodItem);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7D1F74(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v114 = a1;
  v127 = type metadata accessor for UnavailablePaymentMethodItem();
  v123 = *(v127 - 8);
  v9 = MEMORY[0x1EEE9AC00](v127, v8);
  v116 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v126 = &v111 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v129 = &v111 - v16;
  result = MEMORY[0x1EEE9AC00](v15, v17);
  v128 = &v111 - v19;
  v20 = a3[1];
  if (v20 >= 1)
  {
    v111 = a4;
    v21 = 0;
    v22 = MEMORY[0x1E69E7CC0];
    v115 = a3;
    while (1)
    {
      if (v21 + 1 >= v20)
      {
        v20 = v21 + 1;
      }

      else
      {
        v112 = v5;
        v23 = *(v123 + 72);
        a4 = *a3 + v23 * (v21 + 1);
        v125 = *a3;
        v24 = v125;
        v25 = v21;
        v26 = v128;
        sub_1BD7D53AC(a4, v128, type metadata accessor for UnavailablePaymentMethodItem);
        v27 = v24 + v23 * v25;
        v28 = v129;
        sub_1BD7D53AC(v27, v129, type metadata accessor for UnavailablePaymentMethodItem);
        v29 = sub_1BD7D02FC();
        v124 = v30;
        v132 = v29;
        v133 = v30;
        v130 = sub_1BD7D02FC();
        v131 = v31;
        v120 = sub_1BD0DDEBC();
        v122 = sub_1BE0535A4();

        sub_1BD7D52E4(v28, type metadata accessor for UnavailablePaymentMethodItem);
        result = sub_1BD7D52E4(v26, type metadata accessor for UnavailablePaymentMethodItem);
        v113 = v25;
        v32 = v25 + 2;
        v124 = v23;
        v33 = v125 + v23 * (v25 + 2);
        v121 = v22;
        while (v20 != v32)
        {
          LODWORD(v125) = v122 == -1;
          v34 = v20;
          v35 = v128;
          sub_1BD7D53AC(v33, v128, type metadata accessor for UnavailablePaymentMethodItem);
          v36 = v129;
          sub_1BD7D53AC(a4, v129, type metadata accessor for UnavailablePaymentMethodItem);
          v132 = sub_1BD7D02FC();
          v133 = v37;
          v130 = sub_1BD7D02FC();
          v131 = v38;
          v39 = sub_1BE0535A4();

          sub_1BD7D52E4(v36, type metadata accessor for UnavailablePaymentMethodItem);
          v40 = v35;
          v20 = v34;
          result = sub_1BD7D52E4(v40, type metadata accessor for UnavailablePaymentMethodItem);
          v22 = v121;
          ++v32;
          v33 += v124;
          a4 += v124;
          if (((v125 ^ (v39 != -1)) & 1) == 0)
          {
            v20 = v32 - 1;
            break;
          }
        }

        v5 = v112;
        v21 = v113;
        if (v122 == -1)
        {
          a3 = v115;
          if (v20 < v113)
          {
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
            return result;
          }

          if (v113 < v20)
          {
            v89 = v124 * (v20 - 1);
            v90 = v20 * v124;
            v91 = v20;
            v92 = v113 * v124;
            do
            {
              if (v21 != --v91)
              {
                v93 = *a3;
                if (!v93)
                {
                  goto LABEL_131;
                }

                a4 = v93 + v92;
                sub_1BD7D5344(v93 + v92, v116, type metadata accessor for UnavailablePaymentMethodItem);
                if (v92 < v89 || a4 >= v93 + v90)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v92 != v89)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_1BD7D5344(v116, v93 + v89, type metadata accessor for UnavailablePaymentMethodItem);
                a3 = v115;
              }

              ++v21;
              v89 -= v124;
              v90 -= v124;
              v92 += v124;
            }

            while (v21 < v91);
            v22 = v121;
            v21 = v113;
          }
        }

        else
        {
          a3 = v115;
        }
      }

      v41 = a3[1];
      if (v20 >= v41)
      {
        goto LABEL_21;
      }

      if (__OFSUB__(v20, v21))
      {
        goto LABEL_123;
      }

      if (v20 - v21 >= v111)
      {
        goto LABEL_21;
      }

      if (__OFADD__(v21, v111))
      {
        goto LABEL_124;
      }

      if (v21 + v111 >= v41)
      {
        v42 = a3[1];
      }

      else
      {
        v42 = v21 + v111;
      }

      if (v42 < v21)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (v20 == v42)
      {
LABEL_21:
        v43 = v20;
        if (v20 < v21)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v121 = v22;
        v112 = v5;
        v94 = *a3;
        v95 = *(v123 + 72);
        v96 = *a3 + v95 * (v20 - 1);
        v97 = -v95;
        v113 = v21;
        v98 = v21 - v20;
        v125 = v94;
        v117 = v95;
        v118 = v42;
        a4 = v94 + v20 * v95;
        do
        {
          v124 = v20;
          v119 = a4;
          v120 = v98;
          v122 = v96;
          v99 = v96;
          do
          {
            v100 = v128;
            sub_1BD7D53AC(a4, v128, type metadata accessor for UnavailablePaymentMethodItem);
            v101 = v129;
            sub_1BD7D53AC(v99, v129, type metadata accessor for UnavailablePaymentMethodItem);
            v132 = sub_1BD7D02FC();
            v133 = v102;
            v130 = sub_1BD7D02FC();
            v131 = v103;
            sub_1BD0DDEBC();
            v104 = sub_1BE0535A4();

            sub_1BD7D52E4(v101, type metadata accessor for UnavailablePaymentMethodItem);
            result = sub_1BD7D52E4(v100, type metadata accessor for UnavailablePaymentMethodItem);
            if (v104 != -1)
            {
              break;
            }

            if (!v125)
            {
              goto LABEL_128;
            }

            v105 = v126;
            sub_1BD7D5344(a4, v126, type metadata accessor for UnavailablePaymentMethodItem);
            swift_arrayInitWithTakeFrontToBack();
            sub_1BD7D5344(v105, v99, type metadata accessor for UnavailablePaymentMethodItem);
            v99 += v97;
            a4 += v97;
          }

          while (!__CFADD__(v98++, 1));
          v20 = v124 + 1;
          v43 = v118;
          v96 = v122 + v117;
          v98 = v120 - 1;
          a4 = v119 + v117;
        }

        while (v124 + 1 != v118);
        v5 = v112;
        a3 = v115;
        v22 = v121;
        v21 = v113;
        if (v118 < v113)
        {
          goto LABEL_122;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1BD1D7844(0, *(v22 + 2) + 1, 1, v22);
        v22 = result;
      }

      a4 = *(v22 + 2);
      v44 = *(v22 + 3);
      v45 = a4 + 1;
      if (a4 >= v44 >> 1)
      {
        result = sub_1BD1D7844((v44 > 1), a4 + 1, 1, v22);
        v22 = result;
      }

      *(v22 + 2) = v45;
      v46 = &v22[16 * a4];
      *(v46 + 4) = v21;
      *(v46 + 5) = v43;
      v118 = v43;
      v47 = *v114;
      if (!*v114)
      {
        goto LABEL_132;
      }

      if (a4)
      {
        while (1)
        {
          a4 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v48 = *(v22 + 4);
            v49 = *(v22 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_41:
            if (v51)
            {
              goto LABEL_111;
            }

            v64 = &v22[16 * v45];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_114;
            }

            v70 = &v22[16 * a4 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_118;
            }

            if (v68 + v73 >= v50)
            {
              if (v50 < v73)
              {
                a4 = v45 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v74 = &v22[16 * v45];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_55:
          if (v69)
          {
            goto LABEL_113;
          }

          v77 = &v22[16 * a4];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_116;
          }

          if (v80 < v68)
          {
            goto LABEL_3;
          }

LABEL_62:
          v85 = a4 - 1;
          if (a4 - 1 >= v45)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
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
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v86 = *&v22[16 * v85 + 32];
          v87 = *&v22[16 * a4 + 40];
          sub_1BD7D29B4(*a3 + *(v123 + 72) * v86, *a3 + *(v123 + 72) * *&v22[16 * a4 + 32], *a3 + *(v123 + 72) * v87, v47);
          if (v5)
          {
          }

          if (v87 < v86)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1BD5ED6C8(v22);
          }

          if (v85 >= *(v22 + 2))
          {
            goto LABEL_108;
          }

          v88 = &v22[16 * v85];
          *(v88 + 4) = v86;
          *(v88 + 5) = v87;
          v134 = v22;
          result = sub_1BD5ED63C(a4);
          v22 = v134;
          v45 = *(v134 + 2);
          if (v45 <= 1)
          {
            goto LABEL_3;
          }
        }

        v52 = &v22[16 * v45 + 32];
        v53 = *(v52 - 64);
        v54 = *(v52 - 56);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_109;
        }

        v57 = *(v52 - 48);
        v56 = *(v52 - 40);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_110;
        }

        v59 = &v22[16 * v45];
        v61 = *v59;
        v60 = *(v59 + 1);
        v58 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v58)
        {
          goto LABEL_112;
        }

        v58 = __OFADD__(v50, v62);
        v63 = v50 + v62;
        if (v58)
        {
          goto LABEL_115;
        }

        if (v63 >= v55)
        {
          v81 = &v22[16 * a4 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v58 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v58)
          {
            goto LABEL_119;
          }

          if (v50 < v84)
          {
            a4 = v45 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v20 = a3[1];
      v21 = v118;
      if (v118 >= v20)
      {
        goto LABEL_95;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_95:
  a4 = *v114;
  if (!*v114)
  {
    goto LABEL_133;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_126:
    result = sub_1BD5ED6C8(v22);
    v22 = result;
  }

  v134 = v22;
  v107 = *(v22 + 2);
  if (v107 >= 2)
  {
    while (*a3)
    {
      v108 = *&v22[16 * v107];
      v109 = *&v22[16 * v107 + 24];
      sub_1BD7D29B4(*a3 + *(v123 + 72) * v108, *a3 + *(v123 + 72) * *&v22[16 * v107 + 16], *a3 + *(v123 + 72) * v109, a4);
      if (v5)
      {
      }

      if (v109 < v108)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1BD5ED6C8(v22);
      }

      if (v107 - 2 >= *(v22 + 2))
      {
        goto LABEL_121;
      }

      v110 = &v22[16 * v107];
      *v110 = v108;
      *(v110 + 1) = v109;
      v134 = v22;
      result = sub_1BD5ED63C(v107 - 1);
      v22 = v134;
      v107 = *(v134 + 2);
      if (v107 <= 1)
      {
      }
    }

    goto LABEL_130;
  }
}

uint64_t sub_1BD7D29B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  v46 = type metadata accessor for UnavailablePaymentMethodItem();
  v8 = MEMORY[0x1EEE9AC00](v46, v7);
  v48 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8, v10);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v56 = a1;
  v55 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = v26;
      v42 = -v14;
      v43 = a1;
      v29 = v47;
      while (2)
      {
        while (1)
        {
          v40 = v26;
          v30 = a2;
          v44 = a2;
          v45 = a2 + v27;
          while (1)
          {
            v32 = v49;
            if (v30 <= a1)
            {
              v56 = v30;
              v54 = v40;
              goto LABEL_60;
            }

            v41 = v26;
            v49 += v27;
            v33 = v28 + v27;
            sub_1BD7D53AC(v33, v29, type metadata accessor for UnavailablePaymentMethodItem);
            v34 = v48;
            sub_1BD7D53AC(v45, v48, type metadata accessor for UnavailablePaymentMethodItem);
            v52 = sub_1BD7D02FC();
            v53 = v35;
            v50 = sub_1BD7D02FC();
            v51 = v36;
            sub_1BD0DDEBC();
            v37 = sub_1BE0535A4();

            sub_1BD7D52E4(v34, type metadata accessor for UnavailablePaymentMethodItem);
            sub_1BD7D52E4(v29, type metadata accessor for UnavailablePaymentMethodItem);
            if (v37 == -1)
            {
              break;
            }

            v26 = v33;
            if (v32 < v28 || v49 >= v28)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v43;
            }

            else
            {
              a1 = v43;
              if (v32 != v28)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v28 = v33;
            v31 = v33 > a4;
            v27 = v42;
            v30 = v44;
            if (!v31)
            {
              a2 = v44;
              goto LABEL_59;
            }
          }

          if (v32 < v44 || v49 >= v44)
          {
            break;
          }

          v38 = v32 == v44;
          a2 = v45;
          v27 = v42;
          a1 = v43;
          v26 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v28 <= a4)
          {
            goto LABEL_59;
          }
        }

        a2 = v45;
        swift_arrayInitWithTakeFrontToBack();
        v27 = v42;
        a1 = v43;
        v26 = v41;
        if (v28 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v56 = a2;
    v54 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v54 = a4 + v17;
    if (v17 >= 1 && a2 < v49)
    {
      v20 = v47;
      do
      {
        sub_1BD7D53AC(a2, v20, type metadata accessor for UnavailablePaymentMethodItem);
        v21 = v48;
        sub_1BD7D53AC(a4, v48, type metadata accessor for UnavailablePaymentMethodItem);
        v22 = a4;
        v52 = sub_1BD7D02FC();
        v53 = v23;
        v50 = sub_1BD7D02FC();
        v51 = v24;
        sub_1BD0DDEBC();
        v25 = sub_1BE0535A4();

        sub_1BD7D52E4(v21, type metadata accessor for UnavailablePaymentMethodItem);
        sub_1BD7D52E4(v20, type metadata accessor for UnavailablePaymentMethodItem);
        if (v25 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
          goto LABEL_34;
        }

        a4 += v14;
        if (a1 < v22 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          v55 = v22 + v14;
          goto LABEL_34;
        }

        v55 = v22 + v14;
LABEL_34:
        a1 += v14;
        v56 = a1;
      }

      while (a4 < v45 && a2 < v49);
    }
  }

LABEL_60:
  sub_1BD935268(&v56, &v55, &v54);
  return 1;
}

unint64_t sub_1BD7D2F60(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for UnavailablePass(0);
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v80 = &v76 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E20);
  MEMORY[0x1EEE9AC00](v81, v11);
  v13 = &v76 - v12;
  v14 = type metadata accessor for AvailablePass(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v76 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39738);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v76 - v25;
  if ((sub_1BD14C634(*a1, *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  v76 = v7;
  v77 = v13;
  v27 = type metadata accessor for UnavailablePaymentMethodItem();
  v28 = a2;
  v29 = *(v27 + 20);
  v30 = *(v23 + 48);
  v78 = v27;
  v79 = a1;
  sub_1BD0DE19C(&a1[v29], v26, &qword_1EBD520A0);
  v31 = &v28[v29];
  v32 = v28;
  sub_1BD0DE19C(v31, &v26[v30], &qword_1EBD520A0);
  v33 = *(v15 + 48);
  if (v33(v26, 1, v14) == 1)
  {
    if (v33(&v26[v30], 1, v14) == 1)
    {
      sub_1BD0DE53C(v26, &qword_1EBD520A0);
      goto LABEL_9;
    }

LABEL_7:
    v34 = &qword_1EBD39738;
    v35 = v26;
LABEL_16:
    sub_1BD0DE53C(v35, v34);
    goto LABEL_17;
  }

  sub_1BD0DE19C(v26, v22, &qword_1EBD520A0);
  if (v33(&v26[v30], 1, v14) == 1)
  {
    sub_1BD7D52E4(v22, type metadata accessor for AvailablePass);
    goto LABEL_7;
  }

  sub_1BD7D5344(&v26[v30], v18, type metadata accessor for AvailablePass);
  v36 = sub_1BD495008(v22, v18);
  sub_1BD7D52E4(v18, type metadata accessor for AvailablePass);
  sub_1BD7D52E4(v22, type metadata accessor for AvailablePass);
  sub_1BD0DE53C(v26, &qword_1EBD520A0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v38 = v78;
  v37 = v79;
  v39 = v78[6];
  v40 = *(v81 + 48);
  v41 = v77;
  sub_1BD0DE19C(&v79[v39], v77, &qword_1EBD3C3F8);
  sub_1BD0DE19C(&v28[v39], v41 + v40, &qword_1EBD3C3F8);
  v42 = v83;
  v43 = *(v82 + 48);
  if (v43(v41, 1, v83) == 1)
  {
    if (v43(v41 + v40, 1, v42) == 1)
    {
      sub_1BD0DE53C(v41, &qword_1EBD3C3F8);
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  v44 = v80;
  sub_1BD0DE19C(v41, v80, &qword_1EBD3C3F8);
  if (v43(v41 + v40, 1, v42) == 1)
  {
    sub_1BD7D52E4(v44, type metadata accessor for UnavailablePass);
LABEL_14:
    v34 = &qword_1EBD47E20;
LABEL_15:
    v35 = v41;
    goto LABEL_16;
  }

  sub_1BD7D5344(v41 + v40, v76, type metadata accessor for UnavailablePass);
  v47 = sub_1BD492F00();
  v49 = v48;
  if (v47 == sub_1BD492F00() && v49 == v50)
  {
  }

  else
  {
    v51 = sub_1BE053B84();

    if ((v51 & 1) == 0)
    {
      sub_1BD7D52E4(v76, type metadata accessor for UnavailablePass);
      sub_1BD7D52E4(v44, type metadata accessor for UnavailablePass);
      v34 = &qword_1EBD3C3F8;
      goto LABEL_15;
    }
  }

  v52 = *(v42 + 28);
  v53 = v76;
  v54 = sub_1BD498408(*(v44 + v52), *(v44 + v52 + 8), *(v44 + v52 + 16), *&v76[v52], *&v76[v52 + 8], v76[v52 + 16]);
  sub_1BD7D52E4(v53, type metadata accessor for UnavailablePass);
  sub_1BD7D52E4(v44, type metadata accessor for UnavailablePass);
  sub_1BD0DE53C(v41, &qword_1EBD3C3F8);
  if ((v54 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_24:
  v55 = v38[7];
  v56 = *&v37[v55];
  v45 = *&v32[v55];
  if (v56)
  {
    if (!v45)
    {
      return v45 & 1;
    }

    sub_1BD0E5E8C(0, &qword_1EBD43BA0);
    v57 = v45;
    v58 = v56;
    v59 = sub_1BE053074();

    if ((v59 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v45)
  {
    goto LABEL_17;
  }

  v60 = v38[8];
  v61 = v37[v60];
  v62 = v32[v60];
  if (v61 == 2)
  {
    if (v62 != 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v45) = 0;
    if (v62 == 2 || ((v62 ^ v61) & 1) != 0)
    {
      return v45 & 1;
    }
  }

  v63 = v38[10];
  v64 = *&v37[v63];
  v45 = *&v32[v63];
  if (v64)
  {
    if (!v45)
    {
      return v45 & 1;
    }

    sub_1BD0E5E8C(0, &unk_1EBD496A0);
    v65 = v45;
    v66 = v64;
    v67 = sub_1BE053074();

    if (v67)
    {
      goto LABEL_40;
    }

LABEL_17:
    LOBYTE(v45) = 0;
    return v45 & 1;
  }

  if (v45)
  {
    goto LABEL_17;
  }

LABEL_40:
  v68 = v38[9];
  v69 = &v37[v68];
  v70 = *&v37[v68];
  v71 = &v32[v68];
  v72 = *v71;
  LOBYTE(v45) = (v70 | *v71) == 0;
  if (v70 && v72)
  {
    v45 = *(v71 + 1);
    v73 = *(v69 + 1);
    v74 = v45;
    v75 = v72;
    LOBYTE(v45) = sub_1BD41F4F4(v70, v73, v75, v45);
  }

  return v45 & 1;
}

uint64_t type metadata accessor for UnavailablePaymentMethodItem()
{
  result = qword_1EBD53E88;
  if (!qword_1EBD53E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD7D3794(uint64_t a1)
{
  v92 = type metadata accessor for UnavailablePass(0);
  v79 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v2);
  v80 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnavailablePaymentMethodItem();
  v91 = *(v4 - 1);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v81 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v77 - v9;
  v94 = type metadata accessor for AvailablePass(0);
  v86 = *(v94 - 8);
  v12 = MEMORY[0x1EEE9AC00](v94, v11);
  v87 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v93 = &v77 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v90 = &v77 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v77 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v77 - v25;
  v27 = type metadata accessor for Passes(0);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v34 = v33;
  sub_1BD0DE19C(v32, v26, &unk_1EBD43B40);
  if ((*(v28 + 48))(v26, 1, v34) == 1)
  {
    sub_1BD0DE53C(v26, &unk_1EBD43B40);
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1BD7D5344(v26, v31, type metadata accessor for Passes);
  v37 = *(v34 + 28);
  v78 = v31;
  v38 = *&v31[v37];
  v39 = *(v38 + 16);
  v88 = v34;
  v89 = v39;
  if (!v39)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v48 = v78;
    v49 = *&v78[*(v88 + 36)];
    v50 = *(v41 + 16);
    if (*(v49 + 16))
    {
      LODWORD(v90) = v78[*(v88 + 40)];
      if (!v50)
      {

        v35 = MEMORY[0x1E69E7CC0];
        v66 = *(v49 + 16);
        if (v66)
        {
LABEL_45:
          v67 = v49 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
          v68 = *(v79 + 72);
          v69 = (v79 + 56);
          v70 = (v86 + 56);
          v71 = v81;
          do
          {
            v72 = v80;
            sub_1BD7D53AC(v67, v80, type metadata accessor for UnavailablePass);
            *v71 = 1;
            v73 = v4[6];
            sub_1BD7D5344(v72, &v71[v73], type metadata accessor for UnavailablePass);
            (*v69)(&v71[v73], 0, 1, v92);
            *&v71[v4[7]] = 0;
            v71[v4[8]] = v90;
            (*v70)(&v71[v4[5]], 1, 1, v94);
            v74 = &v71[v4[9]];
            *v74 = 0;
            v74[1] = 0;
            *&v71[v4[10]] = 0;
            *&v71[v4[11]] = 0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_1BD1D7B88(0, v35[2] + 1, 1, v35);
            }

            v76 = v35[2];
            v75 = v35[3];
            v71 = v81;
            if (v76 >= v75 >> 1)
            {
              v35 = sub_1BD1D7B88(v75 > 1, v76 + 1, 1, v35);
              v71 = v81;
            }

            v35[2] = v76 + 1;
            sub_1BD7D5344(v71, v35 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v76, type metadata accessor for UnavailablePaymentMethodItem);
            v67 += v68;
            --v66;
          }

          while (v66);
        }

LABEL_51:
        sub_1BD7D52E4(v78, type metadata accessor for Passes);
        return v35;
      }

      v77 = v49;
    }

    else
    {
      if (!v50)
      {

        sub_1BD7D52E4(v48, type metadata accessor for Passes);
        return MEMORY[0x1E69E7CC0];
      }

      v77 = *&v78[*(v88 + 36)];
      LODWORD(v90) = v78[*(v88 + 40)];
    }

    v51 = 0;
    v52 = v87;
    v83 = v41 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v84 = v41;
    v53 = (v86 + 56);
    v54 = (v79 + 56);
    v35 = MEMORY[0x1E69E7CC0];
    v82 = v50;
    while (1)
    {
      if (v51 >= *(v84 + 16))
      {
        goto LABEL_55;
      }

      v55 = v93;
      result = sub_1BD7D53AC(v83 + *(v86 + 72) * v51, v93, type metadata accessor for AvailablePass);
      v56 = *(v55 + *(v94 + 60));
      if (v56 >> 62)
      {
        v65 = *(v55 + *(v94 + 60));
        result = sub_1BE053704();
        v56 = v65;
        v57 = result;
        v85 = v51;
        if (result)
        {
LABEL_29:
          if (v57 < 1)
          {
            goto LABEL_56;
          }

          v58 = 0;
          v88 = v56 & 0xC000000000000001;
          v89 = v56;
          do
          {
            if (v88)
            {
              v59 = MEMORY[0x1BFB40900](v58);
            }

            else
            {
              v59 = *(v56 + 8 * v58 + 32);
            }

            v60 = v59;
            sub_1BD7D53AC(v93, v52, type metadata accessor for AvailablePass);
            *v10 = 0;
            v61 = v4[5];
            sub_1BD7D5344(v52, &v10[v61], type metadata accessor for AvailablePass);
            (*v53)(&v10[v61], 0, 1, v94);
            *&v10[v4[7]] = v60;
            v10[v4[8]] = v90;
            (*v54)(&v10[v4[6]], 1, 1, v92);
            v62 = &v10[v4[9]];
            *v62 = 0;
            v62[1] = 0;
            *&v10[v4[10]] = 0;
            *&v10[v4[11]] = 0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_1BD1D7B88(0, v35[2] + 1, 1, v35);
            }

            v64 = v35[2];
            v63 = v35[3];
            if (v64 >= v63 >> 1)
            {
              v35 = sub_1BD1D7B88(v63 > 1, v64 + 1, 1, v35);
            }

            ++v58;
            v35[2] = v64 + 1;
            sub_1BD7D5344(v10, v35 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v64, type metadata accessor for UnavailablePaymentMethodItem);
            v56 = v89;
          }

          while (v57 != v58);
        }
      }

      else
      {
        v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v85 = v51;
        if (v57)
        {
          goto LABEL_29;
        }
      }

      v51 = v85 + 1;
      result = sub_1BD7D52E4(v93, type metadata accessor for AvailablePass);
      if (v51 == v82)
      {

        v49 = v77;
        v66 = *(v77 + 16);
        if (v66)
        {
          goto LABEL_45;
        }

        goto LABEL_51;
      }
    }
  }

  v40 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  while (v40 < *(v38 + 16))
  {
    v42 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v43 = *(v86 + 72);
    sub_1BD7D53AC(v38 + v42 + v43 * v40, v22, type metadata accessor for AvailablePass);
    v44 = *&v22[*(v94 + 60)];
    if (v44 >> 62)
    {
      if (sub_1BE053704())
      {
LABEL_11:
        sub_1BD7D5344(v22, v90, type metadata accessor for AvailablePass);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531A40(0, *(v41 + 16) + 1, 1);
          v41 = v95;
        }

        v47 = *(v41 + 16);
        v46 = *(v41 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1BD531A40(v46 > 1, v47 + 1, 1);
          v41 = v95;
        }

        *(v41 + 16) = v47 + 1;
        result = sub_1BD7D5344(v90, v41 + v42 + v47 * v43, type metadata accessor for AvailablePass);
        goto LABEL_7;
      }
    }

    else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    result = sub_1BD7D52E4(v22, type metadata accessor for AvailablePass);
LABEL_7:
    if (v89 == ++v40)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void *sub_1BD7D41A0(void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = type metadata accessor for UnavailablePaymentMethodItem();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v36 = v5;
  if (v5)
  {
    v12 = *(v5 + 2);
    if (v12)
    {
      v28 = v3;
      v29 = v2;
      v30 = v4;
      sub_1BD0DE19C(a1, &v34, &qword_1EBD45490);
      sub_1BD0DE19C(&v36, &v34, &unk_1EBD45520);
      v33 = type metadata accessor for UnavailablePass(0);
      v13 = *(v33 - 8);
      v14 = *(v13 + 56);
      v31 = v13 + 56;
      v32 = v14;
      v15 = (v5 + 40);
      v11 = MEMORY[0x1E69E7CC0];
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        *v10 = 2;
        v18 = &v10[v6[9]];
        *v18 = v16;
        v18[1] = v17;
        v32(&v10[v6[6]], 1, 1, v33);
        *&v10[v6[7]] = 0;
        v10[v6[8]] = 2;
        v19 = v6[5];
        v20 = type metadata accessor for AvailablePass(0);
        (*(*(v20 - 8) + 56))(&v10[v19], 1, 1, v20);
        *&v10[v6[10]] = 0;
        *&v10[v6[11]] = 0;
        v21 = v17;
        v22 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1BD1D7B88(0, v11[2] + 1, 1, v11);
        }

        v24 = v11[2];
        v23 = v11[3];
        if (v24 >= v23 >> 1)
        {
          v11 = sub_1BD1D7B88(v23 > 1, v24 + 1, 1, v11);
        }

        v15 += 2;
        v11[2] = v24 + 1;
        sub_1BD7D5344(v10, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24, type metadata accessor for UnavailablePaymentMethodItem);
        --v12;
      }

      while (v12);
      v25 = &v36;
      sub_1BD0DE53C(&v36, &unk_1EBD45520);
      v34 = v28;
      v35 = v29;
      sub_1BD0DE53C(&v34, &qword_1EBD45518);
      v37 = v30;
      sub_1BD0DE53C(&v37, &unk_1EBD45520);
    }

    else
    {
      v34 = v3;
      v35 = v2;
      sub_1BD3EFCD8(v3, v2);
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BD0DE53C(&v34, &qword_1EBD45518);
      v37 = v4;
      sub_1BD0DE53C(&v37, &unk_1EBD45520);
      v11 = MEMORY[0x1E69E7CC0];
      v25 = &v36;
    }
  }

  else
  {
    v34 = v3;
    v35 = v2;
    sub_1BD3EFCD8(v3, v2);
    sub_1BE048C84();
    sub_1BD0DE53C(&v34, &qword_1EBD45518);
    v37 = v4;
    v11 = MEMORY[0x1E69E7CC0];
    v25 = &v37;
  }

  sub_1BD0DE53C(v25, &unk_1EBD45520);
  return v11;
}

void *sub_1BD7D456C(uint64_t a1, char **a2)
{
  v4 = type metadata accessor for UnavailablePaymentMethodItem();
  v106 = *(v4 - 8);
  v107 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v99 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v92 - v9;
  v11 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v92 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v97, v14);
  v16 = (&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = type metadata accessor for AvailablePass(0);
  v98 = *(v105 - 8);
  v18 = MEMORY[0x1EEE9AC00](v105, v17);
  v103 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v109 = &v92 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v92 - v28;
  v30 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    return v30;
  }

  sub_1BD0DE19C(a1, &v92 - v28, &unk_1EBD43B40);
  v31 = type metadata accessor for Passes(0);
  v32 = *(*(v31 - 8) + 48);
  if (v32(v29, 1, v31) == 1)
  {
    v33 = a2;
    sub_1BD0DE53C(v29, &unk_1EBD43B40);
    v102 = 0;
  }

  else
  {
    v102 = v29[*(v31 + 40)];
    v34 = a2;
    sub_1BD7D52E4(v29, type metadata accessor for Passes);
  }

  sub_1BD0DE19C(a1, v26, &unk_1EBD43B40);
  if (v32(v26, 1, v31) == 1)
  {
    sub_1BD0DE53C(v26, &unk_1EBD43B40);
    v35 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v35 = *(v26 + *(v31 + 28));
    sub_1BE048C84();
    sub_1BD7D52E4(v26, type metadata accessor for Passes);
  }

  v30 = MEMORY[0x1E69E7CC0];
  v36 = *(v35 + 16);
  v108 = a2;
  v96 = v36;
  if (v36)
  {
    v37 = 0;
    v38 = *(v98 + 80);
    v94 = v16;
    v95 = v35 + ((v38 + 32) & ~v38);
    v101 = (v98 + 56);
    v93 = v35;
    do
    {
      if (v37 >= *(v35 + 16))
      {
        goto LABEL_69;
      }

      v39 = v109;
      sub_1BD7D53AC(v95 + *(v98 + 72) * v37, v109, type metadata accessor for AvailablePass);
      sub_1BD7D53AC(v39, v16, type metadata accessor for WrappedPass);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v100 = v37;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v26 = type metadata accessor for PlaceholderPass;
          v43 = v92;
          sub_1BD7D5344(v16, v92, type metadata accessor for PlaceholderPass);
          sub_1BE048C84();
          sub_1BD7D52E4(v43, type metadata accessor for PlaceholderPass);
          goto LABEL_20;
        }

        v26 = *v16;
        result = [*v16 passIdentifier];
        if (!result)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v26 = *v16;
        result = [*v16 uniqueID];
        if (!result)
        {
          goto LABEL_93;
        }
      }

      v42 = result;
      sub_1BE052434();

LABEL_20:
      v44 = sub_1BE052404();

      v45 = [a2 paymentOfferCriteriaForPassUniqueID_];

      if (!v45)
      {
        goto LABEL_11;
      }

      sub_1BD0E5E8C(0, &unk_1EBD496A0);
      v26 = sub_1BE052744();

      v110 = MEMORY[0x1E69E7CC0];
      if (v26 >> 62)
      {
        v46 = sub_1BE053704();
        if (!v46)
        {
LABEL_35:
          v52 = MEMORY[0x1E69E7CC0];
          goto LABEL_36;
        }
      }

      else
      {
        v46 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v46)
        {
          goto LABEL_35;
        }
      }

      v104 = v30;
      v47 = 0;
      a2 = (v26 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x1BFB40900](v47, v26);
        }

        else
        {
          if (v47 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_68;
          }

          v48 = *(v26 + 8 * v47 + 32);
        }

        v49 = v48;
        v30 = (v47 + 1);
        if (__OFADD__(v47, 1))
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v50 = [v108 ineligibleDetailsForCriteria_];
        v51 = [v50 isEligible];

        if (v51)
        {
        }

        else
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        ++v47;
      }

      while (v30 != v46);
      v52 = v110;
      a2 = v108;
      v30 = v104;
LABEL_36:

      if (v52 < 0 || (v52 & 0x4000000000000000) != 0)
      {
        v26 = sub_1BE053704();
        if (v26)
        {
LABEL_39:
          if (v26 < 1)
          {
            goto LABEL_72;
          }

          v53 = 0;
          v104 = v52 & 0xC000000000000001;
          v54 = a2;
          do
          {
            v55 = v30;
            if (v104)
            {
              v56 = MEMORY[0x1BFB40900](v53, v52);
            }

            else
            {
              v56 = *(v52 + 8 * v53 + 32);
            }

            v57 = v56;
            v58 = v103;
            sub_1BD7D53AC(v109, v103, type metadata accessor for AvailablePass);
            *v10 = 4;
            v59 = v107;
            v60 = v107[6];
            v61 = type metadata accessor for UnavailablePass(0);
            (*(*(v61 - 8) + 56))(&v10[v60], 1, 1, v61);
            *&v10[v59[7]] = 0;
            v10[v59[8]] = v102;
            v62 = v59[5];
            sub_1BD7D5344(v58, &v10[v62], type metadata accessor for AvailablePass);
            (*v101)(&v10[v62], 0, 1, v105);
            v63 = &v10[v59[9]];
            *v63 = 0;
            v63[1] = 0;
            *&v10[v59[10]] = v57;
            a2 = v54;
            *&v10[v59[11]] = v54;
            v64 = v54;
            v30 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_1BD1D7B88(0, v55[2] + 1, 1, v55);
            }

            v66 = v30[2];
            v65 = v30[3];
            if (v66 >= v65 >> 1)
            {
              v30 = sub_1BD1D7B88(v65 > 1, v66 + 1, 1, v30);
            }

            ++v53;
            v30[2] = v66 + 1;
            sub_1BD7D5344(v10, v30 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v66, type metadata accessor for UnavailablePaymentMethodItem);
          }

          while (v26 != v53);
        }
      }

      else
      {
        v26 = *(v52 + 16);
        if (v26)
        {
          goto LABEL_39;
        }
      }

LABEL_11:
      v16 = v94;
      v37 = v100 + 1;
      sub_1BD7D52E4(v109, type metadata accessor for AvailablePass);
      v35 = v93;
    }

    while (v37 != v96);
  }

  v67 = [a2 paymentOfferInstallmentCriteriaRequiringSetup];
  if (!v67)
  {

    return v30;
  }

  v68 = v67;
  sub_1BD0E5E8C(0, &qword_1EBD39D98);
  v26 = sub_1BE052744();

  v110 = MEMORY[0x1E69E7CC0];
  if (v26 >> 62)
  {
    goto LABEL_73;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v104 = v30;
    v70 = 0;
    a2 = &selRef_initWithVerificationController_fieldsModel_;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v71 = MEMORY[0x1BFB40900](v70, v26);
      }

      else
      {
        if (v70 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v71 = *(v26 + 8 * v70 + 32);
      }

      v72 = v71;
      v30 = (v70 + 1);
      if (__OFADD__(v70, 1))
      {
        break;
      }

      v73 = [v108 ineligibleDetailsForCriteria_];
      v74 = [v73 isEligible];

      if (v74)
      {
      }

      else
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      ++v70;
      if (v30 == i)
      {
        v75 = v110;
        a2 = v108;
        v30 = v104;
        goto LABEL_75;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    ;
  }

  v75 = MEMORY[0x1E69E7CC0];
LABEL_75:

  v76 = v75;
  if ((v75 & 0x8000000000000000) == 0 && (v75 & 0x4000000000000000) == 0)
  {
    v77 = *(v75 + 16);
    if (v77)
    {
      goto LABEL_78;
    }

    goto LABEL_90;
  }

  result = sub_1BE053704();
  v76 = v75;
  v77 = result;
  if (!result)
  {
LABEL_90:

    return v30;
  }

LABEL_78:
  if (v77 >= 1)
  {
    v78 = v30;
    v79 = 0;
    v109 = v76 & 0xC000000000000001;
    v80 = v99;
    v81 = (v98 + 56);
    v82 = v76;
    do
    {
      if (v109)
      {
        v83 = MEMORY[0x1BFB40900](v79);
      }

      else
      {
        v83 = *(v76 + 8 * v79 + 32);
      }

      v84 = v83;
      *v80 = 5;
      v85 = v107;
      v86 = v107[6];
      v87 = type metadata accessor for UnavailablePass(0);
      (*(*(v87 - 8) + 56))(&v80[v86], 1, 1, v87);
      *&v80[v85[7]] = 0;
      v80[v85[8]] = 2;
      (*v81)(&v80[v85[5]], 1, 1, v105);
      v88 = &v80[v85[9]];
      *v88 = 0;
      v88[1] = 0;
      *&v80[v85[10]] = v84;
      *&v80[v85[11]] = a2;
      v89 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1BD1D7B88(0, v78[2] + 1, 1, v78);
      }

      v91 = v78[2];
      v90 = v78[3];
      if (v91 >= v90 >> 1)
      {
        v78 = sub_1BD1D7B88(v90 > 1, v91 + 1, 1, v78);
      }

      ++v79;
      v78[2] = v91 + 1;
      sub_1BD7D5344(v99, v78 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v91, type metadata accessor for UnavailablePaymentMethodItem);
      v76 = v82;
    }

    while (v77 != v79);

    return v78;
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

void *sub_1BD7D51F4(uint64_t a1, void **a2, char **a3)
{
  v11 = MEMORY[0x1E69E7CC0];
  v6 = sub_1BD7D3794(a1);
  sub_1BDA7A760(v6);
  v7 = sub_1BD7D41A0(a2);
  sub_1BDA7A760(v7);
  v8 = sub_1BD7D456C(a1, a3);
  sub_1BDA7A760(v8);
  v10 = v11;
  sub_1BE048C84();
  sub_1BD7D1AFC(&v10);

  sub_1BD0DE53C(a2, &qword_1EBD45490);

  sub_1BD0DE53C(a1, &unk_1EBD43B40);
  return v10;
}

uint64_t sub_1BD7D52E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD7D5344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7D53AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for UnavailablePaymentMethodItem.UnavailablePaymentMethodItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnavailablePaymentMethodItem.UnavailablePaymentMethodItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BD7D558C()
{
  sub_1BD7D5738(319, &qword_1EBD365F8, type metadata accessor for AvailablePass);
  if (v0 <= 0x3F)
  {
    sub_1BD7D5738(319, &qword_1EBD4F650, type metadata accessor for UnavailablePass);
    if (v1 <= 0x3F)
    {
      sub_1BD10315C(319, &qword_1EBD392F0, &qword_1EBD43BA0);
      if (v2 <= 0x3F)
      {
        sub_1BD1C2DD8(319, &qword_1EBD39308);
        if (v3 <= 0x3F)
        {
          sub_1BD1C2DD8(319, &qword_1EBD4D0C8);
          if (v4 <= 0x3F)
          {
            sub_1BD10315C(319, &qword_1EBD53E98, &unk_1EBD496A0);
            if (v5 <= 0x3F)
            {
              sub_1BD10315C(319, &qword_1EBD39320, &qword_1EBD496B0);
              if (v6 <= 0x3F)
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

void sub_1BD7D5738(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BD7D5790()
{
  result = qword_1EBD53EA0;
  if (!qword_1EBD53EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53EA0);
  }

  return result;
}

unint64_t sub_1BD7D57E8()
{
  result = qword_1EBD53EA8;
  if (!qword_1EBD53EA8)
  {
    type metadata accessor for UnavailablePaymentMethodItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53EA8);
  }

  return result;
}

uint64_t sub_1BD7D5840()
{
  v0 = sub_1BE053A44();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BD7D5970(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v24 = a2;
  v25 = a1;
  v3 = sub_1BE04BAC4();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v23 = v2;
  v8 = sub_1BD188278(v2, KeyPath);

  v9 = *(v8 + 16);
  v10 = (v8 + 32);
  v29 = 0x80000001BE1182A0;
  v30 = 0x80000001BE1182F0;
  v27 = 0x80000001BE118230;
  v28 = 0x80000001BE118280;
  v26 = "Auto Reload Set Up";
  while (2)
  {
    if (v9)
    {
      v12 = "ection";
      switch(*v10)
      {
        case 4:
          goto LABEL_6;
        case 0xD:
          v12 = v26;
LABEL_6:
          if (0x80000001BE118260 != (v12 | 0x8000000000000000))
          {
            goto LABEL_2;
          }

          goto LABEL_14;
        default:
LABEL_2:
          v11 = sub_1BE053B84();

          ++v10;
          --v9;
          if ((v11 & 1) == 0)
          {
            continue;
          }

LABEL_14:

          v17 = 0x80000001BE13A710;
          v16 = 0xD000000000000013;
          break;
      }

      goto LABEL_15;
    }

    break;
  }

  v13 = v23;
  sub_1BE04BC34();
  v14 = sub_1BE04BA54();
  (*(v21 + 8))(v6, v22);
  if (v14)
  {
    v15 = [*&v13[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_precursorController] devicePrimaryPrecursorRequest];
    if (v15)
    {

      v16 = 0;
      v17 = 0;
LABEL_15:
      v19 = 0;
      return v25(v16, v17, 0, v19);
    }

    v18 = "flow type not setup assistant";
    v16 = 0xD00000000000001CLL;
  }

  else
  {
    v18 = "debug configuration";
    v16 = 0xD00000000000001DLL;
  }

  v17 = v18 | 0x8000000000000000;
  v19 = 1;
  return v25(v16, v17, 0, v19);
}

void sub_1BD7D5D9C(void (*a1)(void), uint64_t a2)
{
  v51 = a1;
  v52 = a2;
  v3 = sub_1BE04BAC4();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B944();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v53 = v2;
  v10 = sub_1BD188278(v2, KeyPath);

  v11 = *(v10 + 16);
  v12 = (v10 + 32);
  v57 = 0x80000001BE1182A0;
  v58 = 0x80000001BE1182F0;
  v55 = 0x80000001BE118230;
  v56 = 0x80000001BE118280;
  v54 = "Auto Reload Set Up";
  while (2)
  {
    if (v11)
    {
      v14 = "ection";
      switch(*v12)
      {
        case 4:
          goto LABEL_6;
        case 0xD:
          v14 = v54;
LABEL_6:
          if (0x80000001BE118260 != (v14 | 0x8000000000000000))
          {
            goto LABEL_2;
          }

          goto LABEL_11;
        default:
LABEL_2:
          v13 = sub_1BE053B84();

          ++v12;
          --v11;
          if ((v13 & 1) == 0)
          {
            continue;
          }

LABEL_11:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDF8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1BE0B98D0;
          v60 = 1701869940;
          v61 = 0xE400000000000000;
          v19 = MEMORY[0x1E69E6158];
          sub_1BE0537C4();
          *(inited + 96) = v19;
          strcpy((inited + 72), "precursorPass");
          *(inited + 86) = -4864;
          v60 = 0x736E6F69746361;
          v61 = 0xE700000000000000;
          sub_1BE0537C4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53EE8);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1BE0B69E0;
          v21 = sub_1BD1AB78C(&unk_1F3B8DE90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49250);
          swift_arrayDestroy();
          *(v20 + 32) = v21;
          *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53EF0);
          *(inited + 144) = v20;
          v60 = 0xD000000000000017;
          v61 = 0x80000001BE13A6F0;
          sub_1BE0537C4();
          v15 = v53;
          v22 = v45;
          sub_1BE04BB94();
          v23 = sub_1BE04B934();
          (*(v46 + 8))(v22, v47);
          v24 = [v23 secureElementIdentifiers];
          if (!v24)
          {
            goto LABEL_19;
          }

          v25 = v24;
          swift_unknownObjectRelease();
          v26 = sub_1BE052744();

          if (!*(v26 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          sub_1BD038CD0(v26 + 32, inited + 216);

          sub_1BD1AB16C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD403B0);
          swift_arrayDestroy();
          v27 = objc_allocWithZone(MEMORY[0x1E69B8AE0]);
          v28 = sub_1BE052224();

          v17 = [v27 initWithDictionary_];

          if (!v17)
          {
            goto LABEL_20;
          }

          break;
      }
    }

    else
    {

      v15 = v53;
      v16 = [*&v53[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_precursorController] devicePrimaryPrecursorRequest];
      if (!v16)
      {
        v51();
        return;
      }

      v17 = v16;
    }

    break;
  }

  v29 = *&v15[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_context];
  v30 = *&v15[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_provisionedPasses];
  v31 = type metadata accessor for ProvisioningPrecursorEducationViewController();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC9PassKitUI44ProvisioningPrecursorEducationViewController_delegate + 8] = 0;
  v33 = swift_unknownObjectWeakInit();
  *&v32[OBJC_IVAR____TtC9PassKitUI44ProvisioningPrecursorEducationViewController_provisioningContext] = v29;
  *&v32[OBJC_IVAR____TtC9PassKitUI44ProvisioningPrecursorEducationViewController_provisionedPasses] = v30;
  *&v32[OBJC_IVAR____TtC9PassKitUI44ProvisioningPrecursorEducationViewController_precursorRequest] = v17;
  *(v33 + 8) = &off_1F3BBCD70;
  swift_unknownObjectWeakAssign();
  v34 = v17;
  sub_1BE048964();
  v35 = v30;
  v36 = v48;
  sub_1BE04BC34();
  v37 = sub_1BE04B9A4();
  (*(v49 + 8))(v36, v50);
  v59.receiver = v32;
  v59.super_class = v31;
  v38 = objc_msgSendSuper2(&v59, sel_initWithContext_, v37);
  if (v38)
  {
    v39 = v38;
    v40 = v38;
    [v40 setExplanationViewControllerDelegate_];
    v41 = [v40 navigationItem];
    [v41 setHidesBackButton_];

    v42 = *&v15[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_viewController];
    *&v15[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_viewController] = v39;
    v43 = v40;

    v44 = swift_allocObject();
    *(v44 + 16) = v51;
    *(v44 + 24) = v52;
    sub_1BE048964();
    sub_1BD239CC8(sub_1BD19E0B8, v44);
  }

  else
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t sub_1BD7D6600()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD7D663C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD7D6690()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_viewController);
  v2 = v1;
  return v1;
}

id sub_1BD7D66C0(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1BE04B944();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_viewController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_identifier];
  *v12 = 0xD00000000000001ALL;
  *(v12 + 1) = 0x80000001BE13A770;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_provisionedPasses] = a2;
  sub_1BE048964();
  v13 = a2;
  v14 = sub_1BE04BC84();
  sub_1BE04BB94();
  v15 = sub_1BE04B8E4();
  (*(v8 + 8))(v11, v7);
  v16 = [objc_allocWithZone(MEMORY[0x1E69B9088]) initWithPass:v14 webService:v15];

  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_precursorController] = v16;
  v18.receiver = v3;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1BD7D68C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a4;
  v88 = sub_1BE049B04();
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v7);
  v85 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1BE04BD74();
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v9);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1BE04EB64();
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v11);
  v79 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53EF8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F00);
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v15);
  v17 = &v77 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F08);
  MEMORY[0x1EEE9AC00](v93, v18);
  v89 = &v77 - v19;
  sub_1BE0528A4();
  sub_1BE048964();
  v20 = a3;
  sub_1BE048964();
  v21 = sub_1BE052894();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = v20;
  sub_1BE048964();
  sub_1BE048964();
  v24 = v20;
  v25 = sub_1BE052894();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v23;
  v26[4] = a1;
  v26[5] = a2;
  v26[6] = v24;
  sub_1BE051934();
  v94 = a1;
  v101 = a1;
  v102 = a2;
  v84 = v24;
  v103 = v24;
  v98 = a1;
  v99 = a2;
  v27 = a2;
  v100 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
  sub_1BD7D9EC8(&qword_1EBD3A338, MEMORY[0x1E6967AD0]);
  sub_1BD7D941C();
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
  sub_1BE0517E4();
  v28 = v79;
  sub_1BE04EB54();
  sub_1BD0DE4F4(&qword_1EBD53F40, &qword_1EBD53F00);
  v29 = v89;
  v30 = v80;
  v31 = v82;
  sub_1BE050924();
  (*(v83 + 1))(v28, v31);
  (*(v81 + 8))(v17, v30);
  v32 = v94;
  v109 = v94;
  v110 = v27;
  v33 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48);
  sub_1BE0516A4();
  v34 = v106;
  swift_getKeyPath();
  v109 = v34;
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  LOBYTE(v31) = *(v34 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory);

  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  v37 = &v29[*(v93 + 36)];
  *v37 = KeyPath;
  v37[1] = sub_1BD10DF54;
  v37[2] = v36;
  v83 = "ducationFlowItem";
  (*(v92 + 104))(v90, *MEMORY[0x1E69B80D8], v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BE0B6CA0;
  v39 = v32;
  v109 = v32;
  v110 = v33;
  v40 = v33;
  sub_1BE0516A4();
  v41 = v106;
  swift_getKeyPath();
  v109 = v41;
  sub_1BE04B594();

  v43 = *(v41 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName);
  v42 = *(v41 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName + 8);
  sub_1BE048C84();

  v44 = MEMORY[0x1E69E6158];
  *(v38 + 56) = MEMORY[0x1E69E6158];
  v45 = sub_1BD110550();
  *(v38 + 64) = v45;
  *(v38 + 32) = v43;
  *(v38 + 40) = v42;
  v109 = v39;
  v110 = v40;
  sub_1BE0516A4();
  v46 = v106;
  swift_getKeyPath();
  v109 = v46;
  sub_1BE04B594();

  v47 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__transactionCategoryToConfirm;
  swift_beginAccess();
  v48 = v86;
  v49 = v46 + v47;
  v50 = v85;
  v51 = v88;
  (*(v86 + 16))(v85, v49, v88);

  v52 = v50;
  v53 = sub_1BE049AE4();
  v55 = v54;
  (*(v48 + 8))(v52, v51);
  *(v38 + 96) = v44;
  *(v38 + 104) = v45;
  *(v38 + 72) = v53;
  *(v38 + 80) = v55;
  v56 = v90;
  v57 = sub_1BE04B714();
  v59 = v58;

  (*(v92 + 8))(v56, v91);
  v106 = v57;
  v107 = v59;
  sub_1BD0DDEBC();
  v60 = sub_1BE0506C4();
  v92 = v61;
  LOBYTE(v48) = v62;
  v91 = v63;
  v64 = v94;
  v104 = v94;
  v105 = v40;
  v78 = v40;
  sub_1BE0516C4();
  v66 = v106;
  v65 = v107;
  v67 = v108;
  swift_getKeyPath();
  v106 = v66;
  v107 = v65;
  v108 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F58);
  sub_1BE051904();

  v95 = v64;
  v96 = v40;
  v68 = v84;
  v97 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B80);
  sub_1BD7D9680();
  sub_1BD0DE4F4(&qword_1EBD52BC0, &qword_1EBD52B80);
  v69 = v87;
  v70 = v92;
  v71 = v89;
  sub_1BE050C74();

  sub_1BD0DDF10(v60, v70, v48 & 1);

  sub_1BD0B6E94(v71);
  v72 = swift_allocObject();
  v73 = v78;
  v72[2] = v94;
  v72[3] = v73;
  v72[4] = v68;
  v74 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F68) + 36));
  sub_1BE04E7B4();
  sub_1BE048964();
  sub_1BE048964();
  v75 = v68;
  result = sub_1BE0528B4();
  *v74 = &unk_1BE0F9D20;
  v74[1] = v72;
  return result;
}

uint64_t sub_1BD7D7484@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48);
  sub_1BE0516A4();
  swift_getKeyPath();
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v2 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory;
  swift_beginAccess();
  v3 = sub_1BE049B04();
  (*(*(v3 - 8) + 16))(a1, v5 + v2, v3);
}

uint64_t sub_1BD7D75A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BE049B04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a4;
  v38 = a5;
  v33 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48);
  sub_1BE0516A4();
  v13 = v35;
  swift_getKeyPath();
  v37 = v13;
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v14 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory;
  swift_beginAccess();
  v32 = *(v9 + 16);
  v32(v12, v13 + v14, v8);

  sub_1BD7D9EC8(&qword_1EBD3A340, MEMORY[0x1E6967AD0]);
  LOBYTE(v14) = sub_1BE052334();
  v15 = *(v9 + 8);
  v31[1] = v9 + 8;
  result = v15(v12, v8);
  if ((v14 & 1) == 0)
  {
    v31[0] = v15;
    v17 = v33;
    v35 = a4;
    v36 = v33;
    sub_1BE0516A4();
    v32(v12, a1, v8);
    sub_1BD7DAC68(v12);

    v35 = a4;
    v36 = v17;
    sub_1BE0516A4();
    v18 = v34;
    swift_getKeyPath();
    v35 = v18;
    sub_1BE04B594();

    v19 = *(v18 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs);
    sub_1BE048C84();

    v20 = *(v19 + 16);

    if (v20)
    {
      v35 = a4;
      v36 = v33;
      sub_1BE0516A4();
      v21 = v34;
      if (*(v34 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isPresentingConfirmationDialog) == 1)
      {
        *(v34 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isPresentingConfirmationDialog) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v30);
        v31[-2] = v21;
        LOBYTE(v31[-1]) = 1;
        v35 = v21;
        sub_1BE04B584();
      }
    }

    else
    {
      v35 = a4;
      v36 = v33;
      sub_1BE0516A4();
      v22 = v34;
      swift_getKeyPath();
      v33 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel___observationRegistrar;
      v35 = v22;
      sub_1BE04B594();

      v23 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__transactionCategoryToConfirm;
      swift_beginAccess();
      v32(v12, v22 + v23, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C910);
      v24 = sub_1BE04AFE4();
      v25 = *(v24 - 8);
      v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BE0B69E0;
      swift_getKeyPath();
      v34 = v22;
      sub_1BE04B594();

      v28 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
      swift_beginAccess();
      (*(v25 + 16))(v27 + v26, v22 + v28, v24);
      sub_1BD7DD6C0(v12, v27);

      return (v31[0])(v12, v8);
    }
  }

  return result;
}

uint64_t sub_1BD7D7B38(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48);
  sub_1BE0516A4();
  sub_1BD7DB2E4();

  swift_getKeyPath();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  sub_1BE048964();
  v7 = a3;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F28);
  sub_1BD0DE4F4(&qword_1EBD53F78, &qword_1EBD53F70);
  sub_1BD7D9C04();
  sub_1BD7D94A0();
  return sub_1BE0519C4();
}

uint64_t sub_1BD7D7CB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F38);
  sub_1BD7D9530();
  return sub_1BE051A44();
}

uint64_t sub_1BD7D7D28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  sub_1BE048964();
  v8 = a4;
  sub_1BE048C84();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F90);
  sub_1BD0DE4F4(&qword_1EBD53F98, &qword_1EBD53F88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37358);
  sub_1BE049B04();
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
  sub_1BD7D9EC8(&qword_1EBD3A338, MEMORY[0x1E6967AD0]);
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

uint64_t sub_1BD7D7F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18[-v13];
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a1;
  sub_1BE051614();
  v15 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37348) + 36);
  v16 = sub_1BE049B04();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37350) + 36)) = 1;
  return (*(v11 + 32))(a5, v14, v10);
}

uint64_t sub_1BD7D80F0@<X0>(uint64_t a1@<X8>)
{
  sub_1BE049AE4();
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1BD7D814C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80D8], v2, v5);
  v8 = sub_1BE04B714();
  v10 = v9;
  (*(v3 + 8))(v7, v2);
  v15[0] = v8;
  v15[1] = v10;
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a1 = result;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_1BD7D8298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE049B04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48);
  sub_1BE0516A4();
  v11 = v21;
  swift_getKeyPath();
  v23 = v11;
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v12 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory;
  swift_beginAccess();
  (*(v7 + 16))(v10, v11 + v12, v6);

  v13 = sub_1BE049AE4();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  v21 = v13;
  v22 = v15;
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a3 = result;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v19;
  return result;
}

uint64_t sub_1BD7D8484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1BE049B04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  v16[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48);
  sub_1BE0516A4();
  v13 = v16[3];
  swift_getKeyPath();
  v16[0] = v13;
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v14 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory;
  swift_beginAccess();
  (*(v9 + 16))(v12, v13 + v14, v8);

  sub_1BD7D98A0(v12, a3);
  (*(v9 + 8))(v12, v8);
  result = sub_1BE051544();
  *a4 = result;
  return result;
}

uint64_t sub_1BD7D8654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v73 = a1;
  v74 = a3;
  v85 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v83 = &v71 - v7;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v81 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v84 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v82 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v88 = &v71 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v80 = &v71 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v87 = &v71 - v27;
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v79 = &v71 - v31;
  v32 = *MEMORY[0x1E69B80D8];
  v33 = *(v9 + 104);
  v86 = v9 + 104;
  v76 = v32;
  v72 = v8;
  v33(v12, v32, v8, v30);
  v34 = sub_1BE04B714();
  v36 = v35;
  v37 = *(v9 + 8);
  v77 = v9 + 8;
  v78 = v37;
  v37(v12, v8);
  v90 = v34;
  v91 = v36;
  v38 = swift_allocObject();
  v40 = v73;
  v39 = v74;
  v38[2] = v73;
  v38[3] = a2;
  v38[4] = v39;
  v75 = sub_1BD0DDEBC();
  sub_1BE048964();
  sub_1BE048964();
  v74 = v39;
  sub_1BE051744();
  v41 = v72;
  (v33)(v12, v32, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1BE0B69E0;
  v90 = v40;
  v91 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48);
  sub_1BE0516A4();
  v43 = v89;
  swift_getKeyPath();
  v90 = v43;
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v44 = *(v43 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs);
  sub_1BE048C84();

  v45 = *(v44 + 16);

  v46 = MEMORY[0x1E69E65A8];
  *(v42 + 56) = MEMORY[0x1E69E6530];
  *(v42 + 64) = v46;
  *(v42 + 32) = v45 + 1;
  v47 = sub_1BE04B714();
  v49 = v48;

  v50 = v78;
  v78(v12, v41);
  v90 = v47;
  v91 = v49;
  v51 = swift_allocObject();
  v51[2] = v40;
  v51[3] = a2;
  v52 = v74;
  v51[4] = v74;
  sub_1BE048964();
  sub_1BE048964();
  v53 = v52;
  v54 = v87;
  sub_1BE051744();
  (v33)(v12, v76, v41);
  v55 = sub_1BE04B714();
  v57 = v56;
  v50(v12, v41);
  v90 = v55;
  v91 = v57;
  v58 = v83;
  sub_1BE04E1B4();
  v59 = sub_1BE04E1D4();
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  v60 = v80;
  sub_1BE051724();
  v61 = v81;
  v62 = *(v81 + 16);
  v63 = v88;
  v64 = v79;
  v62(v88, v79, v13);
  v65 = v82;
  v62(v82, v54, v13);
  v66 = v84;
  v62(v84, v60, v13);
  v67 = v85;
  v62(v85, v63, v13);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CC0);
  v62(&v67[*(v68 + 48)], v65, v13);
  v62(&v67[*(v68 + 64)], v66, v13);
  v69 = *(v61 + 8);
  v69(v60, v13);
  v69(v87, v13);
  v69(v64, v13);
  v69(v66, v13);
  v69(v65, v13);
  return (v69)(v88, v13);
}

uint64_t sub_1BD7D8DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049B04();
  v5 = *(v4 - 8);
  v17 = v4;
  v18 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48);
  sub_1BE0516A4();
  v9 = v19;
  swift_getKeyPath();
  v20 = v9;
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v10 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__transactionCategoryToConfirm;
  swift_beginAccess();
  (*(v5 + 16))(v8, v9 + v10, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C910);
  v11 = sub_1BE04AFE4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  v19 = v9;
  sub_1BE04B594();

  v15 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  swift_beginAccess();
  (*(v12 + 16))(v14 + v13, v9 + v15, v11);
  sub_1BD7DD6C0(v8, v14);

  return (*(v18 + 8))(v8, v17);
}

uint64_t sub_1BD7D909C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48);
  sub_1BE0516A4();
  sub_1BD7DBA58();
}

uint64_t sub_1BD7D90F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1BE0528A4();
  v2[7] = sub_1BE052894();
  v4 = sub_1BE052844();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD7D918C, v4, v3);
}

uint64_t sub_1BD7D918C()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48);
  sub_1BE0516A4();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1BD5B5130;

  return sub_1BD7DBD54();
}

void sub_1BD7D924C(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = [objc_opt_self() bezierPathWithRoundedRect:a1 cornerRadius:{a2, a3, a4, 6.0}];
  [v11 addClip];
  [a6 drawInRect_];
}

uint64_t objectdestroyTm_95()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1BD7D941C()
{
  result = qword_1EBD53F18;
  if (!qword_1EBD53F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F10);
    sub_1BD7D94A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53F18);
  }

  return result;
}

unint64_t sub_1BD7D94A0()
{
  result = qword_1EBD53F20;
  if (!qword_1EBD53F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F28);
    sub_1BD7D9530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53F20);
  }

  return result;
}

unint64_t sub_1BD7D9530()
{
  result = qword_1EBD53F30;
  if (!qword_1EBD53F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37358);
    sub_1BE049B04();
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    sub_1BD7D9EC8(&qword_1EBD3A338, MEMORY[0x1E6967AD0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53F30);
  }

  return result;
}

unint64_t sub_1BD7D9680()
{
  result = qword_1EBD53F60;
  if (!qword_1EBD53F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F00);
    sub_1BE04EB64();
    sub_1BD0DE4F4(&qword_1EBD53F40, &qword_1EBD53F00);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53F60);
  }

  return result;
}

uint64_t sub_1BD7D97C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD7D90F4(v2, v3);
}

uint64_t sub_1BD7D98A0(uint64_t a1, void *a2)
{
  v4 = sub_1BE049B04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v10 = [a2 objectForKey_];
  if (v10)
  {
    goto LABEL_2;
  }

  (*(v5 + 16))(v8, a1, v4);
  MEMORY[0x1BFB3FF90](v8);
  PKScreenScale();
  v13 = PKIconForFKCategory();
  if (!v13)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
LABEL_2:
    v11 = v10;

    v12 = 0;
LABEL_6:
    sub_1BD0D4744(v12);
    return v11;
  }

  v14 = v13;
  [v13 size];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  __asm { FMOV            V0.2D, #24.0 }

  *(v18 + 32) = _Q0;
  *(v18 + 48) = v14;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1BD7D9BE8;
  *(v24 + 24) = v18;
  aBlock[4] = sub_1BD465990;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD4883A0;
  aBlock[3] = &block_descriptor_183;
  v25 = _Block_copy(aBlock);
  v26 = v14;
  sub_1BE048964();

  v11 = [v17 imageWithActions_];

  _Block_release(v25);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if ((v17 & 1) == 0)
  {
    [a2 setObject:v11 forKey:v9];

    v12 = sub_1BD7D9BE8;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD7D9C04()
{
  result = qword_1EBD53F80;
  if (!qword_1EBD53F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F88);
    sub_1BD7D9EC8(&qword_1EBD3A338, MEMORY[0x1E6967AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53F80);
  }

  return result;
}

uint64_t objectdestroy_26Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD7D9D20@<X0>(uint64_t *a1@<X8>)
{
  sub_1BD7D98A0(*(v1 + 40), *(v1 + 32));
  result = sub_1BE051544();
  *a1 = result;
  return result;
}

unint64_t sub_1BD7D9D70()
{
  result = qword_1EBD53FA0;
  if (!qword_1EBD53FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B80);
    sub_1BD7D9680();
    sub_1BD0DE4F4(&qword_1EBD52BC0, &qword_1EBD52B80);
    swift_getOpaqueTypeConformance2();
    sub_1BD7D9EC8(&qword_1EBD37148, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53FA0);
  }

  return result;
}

uint64_t sub_1BD7D9EC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD7D9FC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_1BD7DE548(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v16[0] = a1;
  LOBYTE(a1) = sub_1BE052334();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v13);
    v14 = v16[0];
    v16[-2] = v2;
    v16[-1] = v14;
    v16[1] = v2;
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
    sub_1BE04B584();
  }

  return (v11)(v16[0], v4);
}

uint64_t sub_1BD7DA268()
{
  swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD7DA324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName);
  a2[1] = v4;
  return sub_1BE048C84();
}

uint64_t sub_1BD7DA3DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BE048C84();
  return sub_1BD7DA41C(v1, v2);
}

uint64_t sub_1BD7DA41C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName);
  v6 = *(v2 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName) == a1 && *(v2 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName + 8) == a2;
  if (v6 || (sub_1BE053B84() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD7DA5B0@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v10 = v3;
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v10 + v7, v8);
}

uint64_t sub_1BD7DA6D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v8 = *a2;
  swift_beginAccess();
  v9 = a3(0);
  return (*(*(v9 - 8) + 16))(a4, v7 + v8, v9);
}

uint64_t sub_1BD7DA830()
{
  swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  return sub_1BE048C84();
}

uint64_t sub_1BD7DA8DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs);
  return sub_1BE048C84();
}

uint64_t sub_1BD7DA9BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs;
  v4 = sub_1BE048C84();
  v5 = sub_1BD400CE0(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD7DAB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_1BD7DAC90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v20[1] = a4;
  v6 = v4;
  v8 = sub_1BE049B04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  swift_beginAccess();
  v14 = *(v9 + 16);
  v14(v12, v6 + v13, v8);
  sub_1BD7DE548(&qword_1EBD3A340, MEMORY[0x1E6967AD0]);
  v21 = a1;
  LOBYTE(a1) = sub_1BE052334();
  v15 = *(v9 + 8);
  v15(v12, v8);
  if (a1)
  {
    v14(v12, v21, v8);
    swift_beginAccess();
    (*(v9 + 40))(v6 + v13, v12, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v17);
    v18 = v21;
    v20[-2] = v6;
    v20[-1] = v18;
    v22 = v6;
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
    sub_1BE04B584();
  }

  return (v15)(v21, v8);
}

uint64_t sub_1BD7DAF20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  v8 = a4(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2, v8);
  return swift_endAccess();
}

uint64_t sub_1BD7DB028(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  return *(v2 + *a2);
}

uint64_t sub_1BD7DB0DC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1BD7DB1E0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD7DB2E4()
{
  v1 = v0;
  v2 = sub_1BE049B04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v22 = v0;
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v7 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  LOBYTE(v7) = sub_1BE049AA4();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53FF8);
  if (v7)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BE0B6CA0;
    v20[1] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD54000);
    v8 = *(v3 + 72);
    v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BE0B76F0;
    v11 = *(v3 + 104);
    v11(v10 + v9, *MEMORY[0x1E6967A68], v2);
    v11(v10 + v9 + v8, *MEMORY[0x1E6967A78], v2);
    v11(v10 + v9 + 2 * v8, *MEMORY[0x1E6967AB8], v2);
    v11(v10 + v9 + 3 * v8, *MEMORY[0x1E6967A98], v2);
    v11(v10 + v9 + 4 * v8, *MEMORY[0x1E6967A88], v2);
    v11(v10 + v9 + 5 * v8, *MEMORY[0x1E6967AC8], v2);
    v11(v10 + v9 + 6 * v8, *MEMORY[0x1E6967AB0], v2);
    v11(v10 + v9 + 7 * v8, *MEMORY[0x1E6967A80], v2);
    v12 = v21;
    *(v21 + 32) = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BE0B69E0;
    v11(v13 + v9, *MEMORY[0x1E6967AC0], v2);
    *(v12 + 40) = v13;
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BE0B69E0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD54000);
    v14 = *(v3 + 72);
    v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BE0B98D0;
    v17 = v16 + v15;
    v18 = *(v3 + 104);
    v18(v17, *MEMORY[0x1E6967A90], v2);
    v18(v17 + v14, *MEMORY[0x1E6967A70], v2);
    v18(v17 + 2 * v14, *MEMORY[0x1E6967AC0], v2);
    *(v12 + 32) = v16;
  }

  return v12;
}

uint64_t sub_1BD7DB734(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, double), char *a4)
{
  v5 = v4;
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v33 = a1;
  v6 = sub_1BE049B04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v32 = &v29 - v14;
  *(v4 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs) = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E6967AA0];
  v16 = *(v7 + 104);
  v16(v4 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__transactionCategoryToConfirm, v15, v6, v13);
  *(v4 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isPresentingConfirmationDialog) = 0;
  *(v4 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory) = 0;
  sub_1BE04B5C4();
  v17 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  v18 = sub_1BE04AFE4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v5 + v17, v33, v18);
  v20 = (v5 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName);
  v21 = v30;
  *v20 = v29;
  v20[1] = v21;
  v22 = v15;
  v23 = v31;
  v30 = v16;
  (v16)(v10, v22, v6);
  sub_1BD7DE548(&qword_1EBD45980, MEMORY[0x1E6967AD0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  (*(v19 + 8))(v33, v18);
  v24 = *(v7 + 8);
  v24(v10, v6);
  if (v35 == v34)
  {
    v24(v23, v6);
    v25 = v32;
    (v30)(v32, *MEMORY[0x1E6967A80], v6);
    (*(v7 + 32))(v5 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory, v25, v6);
  }

  else
  {
    v26 = *(v7 + 32);
    v27 = v32;
    v26(v32, v23, v6);
    v26((v5 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory), v27, v6);
  }

  return v5;
}

uint64_t sub_1BD7DBA58()
{
  v1 = v0;
  v2 = sub_1BE049B04();
  v3 = *(v2 - 8);
  v17 = v2;
  v18 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v6;
  swift_getKeyPath();
  v21 = v0;
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v7 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__transactionCategoryToConfirm;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  swift_getKeyPath();
  v20 = v1;
  sub_1BE04B594();

  v8 = *(v1 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C910);
  v9 = sub_1BE04AFE4();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  v20 = v1;
  sub_1BE048C84();
  sub_1BE04B594();

  v13 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  swift_beginAccess();
  (*(v10 + 16))(v12 + v11, v1 + v13, v9);
  v19 = v8;
  sub_1BDA7A930(v12);
  v14 = v16;
  sub_1BD7DD6C0(v16, v19);

  return (*(v18 + 8))(v14, v17);
}

uint64_t sub_1BD7DBD54()
{
  v1[23] = v0;
  v2 = sub_1BE04D214();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v3 = sub_1BE049C74();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0);
  v1[31] = swift_task_alloc();
  v4 = sub_1BE049D74();
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v5 = sub_1BE049A94();
  v1[36] = v5;
  v1[37] = *(v5 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v1[43] = v6;
  v1[44] = *(v6 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  sub_1BE0528A4();
  v1[48] = sub_1BE052894();
  v8 = sub_1BE052844();
  v1[49] = v8;
  v1[50] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD7DC050, v8, v7);
}

uint64_t sub_1BD7DC050()
{
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[36];
  v5 = v0[31];
  v6 = v0[23];
  sub_1BE0490F4();
  v0[51] = sub_1BE0490B4();
  swift_getKeyPath();
  v0[52] = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel___observationRegistrar;
  v0[20] = v6;
  v0[53] = sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
  sub_1BE04B594();

  v7 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  v0[54] = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v0[55] = v8;
  v0[56] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6 + v7, v2);
  v9 = swift_task_alloc();
  v0[57] = v9;
  *(v9 + 16) = v1;
  v0[21] = v4;
  sub_1BE04B444();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = sub_1BE049CE4();
  v12 = MEMORY[0x1E6967BC8];
  v0[5] = v11;
  v0[6] = v12;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1BE049CD4();
  v13 = swift_task_alloc();
  v0[58] = v13;
  *v13 = v0;
  v13[1] = sub_1BD7DC2C8;
  v14 = v0[35];

  return MEMORY[0x1EEDC14D8](v14, v0 + 2);
}

uint64_t sub_1BD7DC2C8()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_1BD7DCE5C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_1BD7DC3E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD7DC3E4()
{
  v46 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = sub_1BE049D54();
  v5 = *(v3 + 8);
  *(v0 + 480) = v5;
  *(v0 + 488) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (*(v4 + 16))
  {
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = *(v0 + 288);
    v9 = *(v0 + 296);
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);
    v12 = *(v0 + 224);
    v13 = *(v9 + 16);
    v9 += 16;
    v14 = *(v9 + 64);
    *(v0 + 528) = v14;
    *(v0 + 496) = v13;
    *(v0 + 504) = v9 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v7, v4 + ((v14 + 32) & ~v14), v8);

    v13(v6, v7, v8);
    *(v0 + 120) = &type metadata for BankConnectFeatureFlags;
    *(v0 + 128) = sub_1BD1671B0();
    *(v0 + 96) = 2;
    LOBYTE(v7) = sub_1BE04C584();
    __swift_destroy_boxed_opaque_existential_0(v0 + 96);
    v15 = MEMORY[0x1E6967BA8];
    if ((v7 & 1) == 0)
    {
      v15 = MEMORY[0x1E6967BA0];
    }

    (*(v11 + 104))(v10, *v15, v12);
    v16 = sub_1BE049C94();
    v17 = MEMORY[0x1E6967BB0];
    *(v0 + 80) = v16;
    *(v0 + 88) = v17;
    __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_1BE049C84();
    v18 = swift_task_alloc();
    *(v0 + 512) = v18;
    *v18 = v0;
    v18[1] = sub_1BD7DC918;
    v19 = *(v0 + 272);

    return MEMORY[0x1EEDC14D8](v19, v0 + 56);
  }

  else
  {

    sub_1BE04D114();
    sub_1BE048964();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C34();

    if (os_log_type_enabled(v20, v21))
    {
      v39 = *(v0 + 440);
      v38 = *(v0 + 432);
      v41 = v21;
      v22 = *(v0 + 352);
      v23 = *(v0 + 360);
      v24 = *(v0 + 344);
      v42 = *(v0 + 200);
      v43 = *(v0 + 192);
      v44 = *(v0 + 216);
      v25 = *(v0 + 184);
      v26 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v26 = 136315138;
      swift_getKeyPath();
      *(v0 + 176) = v25;
      sub_1BE04B594();

      v39(v23, v25 + v38, v24);
      sub_1BD7DE548(&unk_1EBD39960, MEMORY[0x1E69695A8]);
      v27 = sub_1BE053B24();
      v29 = v28;
      v30 = *(v22 + 8);
      v30(v23, v24);
      v31 = sub_1BD123690(v27, v29, &v45);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1BD026000, v20, v41, "Failed to fetch transaction with ID:%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1BFB45F20](v40, -1, -1);
      MEMORY[0x1BFB45F20](v26, -1, -1);

      (*(v42 + 8))(v44, v43);
    }

    else
    {
      v32 = *(v0 + 352);
      v33 = *(v0 + 216);
      v34 = *(v0 + 192);
      v35 = *(v0 + 200);

      (*(v35 + 8))(v33, v34);
      v30 = *(v32 + 8);
    }

    v30(*(v0 + 376), *(v0 + 344));

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_1BD7DC918()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_1BD7DD0B0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 56);
    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_1BD7DCA34;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD7DCA34()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);

  v4 = sub_1BE049D54();
  result = v1(v2, v3);
  v6 = *(v4 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = 0;
    v9 = *(v0 + 296);
    v10 = v4 + ((*(v0 + 528) + 32) & ~*(v0 + 528));
    v38 = (v9 + 8);
    v39 = v9;
    v40 = *(v4 + 16);
    v41 = (v9 + 32);
    while (v8 < *(v4 + 16))
    {
      v11 = *(v9 + 72);
      (*(v0 + 496))(*(v0 + 320), v10 + v11 * v8, *(v0 + 288));
      if (sub_1BE049A74())
      {
        v12 = *v41;
        (*v41)(*(v0 + 312), *(v0 + 320), *(v0 + 288));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BD531B68(0, *(v7 + 16) + 1, 1);
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1BD531B68(v13 > 1, v14 + 1, 1);
        }

        v15 = *(v0 + 528);
        v16 = *(v0 + 312);
        v17 = *(v0 + 288);
        *(v7 + 16) = v14 + 1;
        result = v12(v7 + ((v15 + 32) & ~v15) + v14 * v11, v16, v17);
        v9 = v39;
        v6 = v40;
      }

      else
      {
        result = (*v38)(*(v0 + 320), *(v0 + 288));
      }

      if (v6 == ++v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v18 = *(v7 + 16);
    if (v18)
    {
      v19 = *(v0 + 352);
      v20 = *(v0 + 296);
      v21 = (*(v0 + 528) + 32) & ~*(v0 + 528);
      v43 = MEMORY[0x1E69E7CC0];
      sub_1BD531F28(0, v18, 0);
      v22 = v43;
      v23 = v7 + v21;
      v24 = (v20 + 8);
      v42 = *(v20 + 72);
      do
      {
        v25 = *(v0 + 304);
        v26 = *(v0 + 288);
        (*(v0 + 496))(v25, v23, v26);
        sub_1BE049A14();
        (*v24)(v25, v26);
        v28 = *(v43 + 16);
        v27 = *(v43 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1BD531F28(v27 > 1, v28 + 1, 1);
        }

        v29 = *(v0 + 368);
        v30 = *(v0 + 344);
        *(v43 + 16) = v28 + 1;
        (*(v19 + 32))(v43 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v28, v29, v30);
        v23 += v42;
        --v18;
      }

      while (v18);
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    v31 = *(v0 + 376);
    v32 = *(v0 + 344);
    v33 = *(v0 + 352);
    v34 = *(v0 + 336);
    v35 = *(v0 + 288);
    v36 = *(v0 + 296);
    sub_1BD7DA9BC(v22);

    (*(v36 + 8))(v34, v35);
    (*(v33 + 8))(v31, v32);

    v37 = *(v0 + 8);

    return v37();
  }

  return result;
}

uint64_t sub_1BD7DCE5C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v1 = v0[59];
  (*(v0[44] + 8))(v0[47], v0[43]);
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
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to fetch related transactions %@", v5, 0xCu);
    sub_1BD1E236C(v6);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[25] + 8))(v0[26], v0[24]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD7DD0B0()
{
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[37];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + 7));
  v4 = v0[65];
  (*(v0[44] + 8))(v0[47], v0[43]);
  sub_1BE04D114();
  v5 = v4;
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BD026000, v6, v7, "Failed to fetch related transactions %@", v8, 0xCu);
    sub_1BD1E236C(v9);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[25] + 8))(v0[26], v0[24]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BD7DD324@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v20[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828);
  v4 = *(v3 - 8);
  v21 = v3;
  v22 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v20 - v16;
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v9 + 8))(v12, v8);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830);
  a2[4] = sub_1BD58197C();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0);
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828);
  sub_1BD7DE548(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v18 = v21;
  sub_1BE04A714();
  (*(v22 + 8))(v7, v18);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BD7DD6C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE049B04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - v12;
  if (*(v3 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory) == 1)
  {
    *(v3 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v22 = &v22;
    MEMORY[0x1EEE9AC00](KeyPath, v15);
    *(&v22 - 2) = v3;
    *(&v22 - 8) = 1;
    v23 = a2;
    v24 = v3;
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
    sub_1BE04B584();
    a2 = v23;
  }

  v16 = sub_1BE0528D4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  sub_1BE0528A4();
  sub_1BE048964();
  sub_1BE048C84();
  v17 = sub_1BE052894();
  v18 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 2) = v17;
  *(v19 + 3) = v20;
  *(v19 + 4) = v3;
  (*(v7 + 32))(&v19[v18], &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *&v19[(v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
  sub_1BD122C00(0, 0, v13, &unk_1BE0F9EB0, v19);
}

uint64_t sub_1BD7DD9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_1BE04D214();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_1BE049B04();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  sub_1BE0528A4();
  v6[12] = sub_1BE052894();
  v10 = sub_1BE052844();
  v6[13] = v10;
  v6[14] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD7DDB34, v10, v9);
}

uint64_t sub_1BD7DDB34()
{
  sub_1BE0490F4();
  v0[15] = sub_1BE0490B4();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1BD7DDBE4;
  v3 = v0[4];
  v2 = v0[5];

  return MEMORY[0x1EEDC1508](v3, v2);
}

uint64_t sub_1BD7DDBE4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1BD7DDE8C;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1BD7DDD00;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD7DDD00()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[4];

  (*(v3 + 16))(v1, v4, v2);
  sub_1BD7DA808(v1);
  v5 = v0[3];
  if (*(v5 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory) == 1)
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v0[2] = v5;
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
    sub_1BE04B584();
  }

  else
  {
    *(v5 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory) = 0;
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BD7DDE8C()
{
  v1 = v0[17];

  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to update transaction's category with error: %@.", v7, 0xCu);
    sub_1BD1E236C(v8);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v11 = v0[3];
  if (*(v11 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory))
  {
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    v0[2] = v11;
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4);
    sub_1BE04B584();
  }

  else
  {
    *(v11 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory) = 0;
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD7DE0F4()
{
  v1 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  v2 = sub_1BE04AFE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory;
  v4 = sub_1BE049B04();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);

  v5(v0 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__transactionCategoryToConfirm, v4);
  v6 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel___observationRegistrar;
  v7 = sub_1BE04B5D4();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_4()
{
  result = qword_1EBD53FE8;
  if (!qword_1EBD53FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD7DE2B8()
{
  result = sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    result = sub_1BE049B04();
    if (v2 <= 0x3F)
    {
      result = sub_1BE04B5D4();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1BD7DE3F8(uint64_t a1)
{
  v4 = *(sub_1BE049B04() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BD0F985C;

  return sub_1BD7DD9E0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1BD7DE548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD7DE5C8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs) = *(v0 + 24);
  sub_1BE048C84();
}

uint64_t sub_1BD7DE644()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1BE048C84();
}

void sub_1BD7DE6E0()
{
  sub_1BD578C14();
  if (v0 <= 0x3F)
  {
    sub_1BD7DEDA8();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD7DE7A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1BE04AF64() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v8)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v14 + 26;
  if (a2 > v16)
  {
    v19 = ((v18 + ((((v12 + 16) & ~v12) + v17) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v10 + 64);
    v20 = 8 * v19;
    if (v19 > 3)
    {
      goto LABEL_16;
    }

    v22 = ((a2 - v16 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v22 <= 0xFF)
      {
        if (v22 < 2)
        {
          goto LABEL_36;
        }

LABEL_16:
        v21 = *(a1 + v19);
        if (!*(a1 + v19))
        {
          goto LABEL_36;
        }

LABEL_23:
        v23 = (v21 - 1) << v20;
        if (v19 > 3)
        {
          v23 = 0;
        }

        if (v19)
        {
          if (v19 <= 3)
          {
            v24 = ((v18 + ((((v12 + 16) & ~v12) + v17) & 0xFFFFFFF8)) & ~v14) + *(v10 + 64);
          }

          else
          {
            v24 = 4;
          }

          if (v24 > 2)
          {
            if (v24 == 3)
            {
              v25 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v25 = *a1;
            }
          }

          else if (v24 == 1)
          {
            v25 = *a1;
          }

          else
          {
            v25 = *a1;
          }
        }

        else
        {
          v25 = 0;
        }

        return v16 + (v25 | v23) + 1;
      }

      v21 = *(a1 + v19);
      if (*(a1 + v19))
      {
        goto LABEL_23;
      }
    }
  }

LABEL_36:
  if ((v15 & 0x80000000) == 0)
  {
    v26 = *(a1 + 1);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  if (v9 == v16)
  {
    if (v8 >= 2)
    {
      v29 = (*(v7 + 48))((a1 + v12 + 16) & ~v12);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(v10 + 48);

  return v28((v18 + ((((a1 + v12 + 16) & ~v12) + v17) & 0xFFFFFFFFFFFFFFF8)) & ~v14, v11);
}

void sub_1BD7DEA48(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1BE04AF64() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v13 + 80);
  v18 = *(v13 + 64);
  if (v12 <= v14)
  {
    v19 = *(v13 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v11)
  {
    v22 = v16;
  }

  else
  {
    v22 = v16 + 1;
  }

  v21 = (v15 + 16) & ~v15;
  v23 = ((v17 + 26 + ((v21 + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + v18;
  if (a3 <= v20)
  {
    goto LABEL_24;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v20 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v24))
    {
      v8 = 4;
      if (v20 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (v24 >= 2)
    {
      v8 = v25;
    }

    else
    {
      v8 = 0;
    }

LABEL_24:
    if (v20 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (v20 >= a2)
  {
LABEL_34:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v23] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v23] = 0;
    }

    else if (v8)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if ((v19 & 0x80000000) != 0)
    {
      if (v12 == v20)
      {
        if (v11 >= 2)
        {
          v29 = *(v10 + 56);

          v29(&a1[v15 + 16] & ~v15, (a2 + 1));
        }
      }

      else
      {
        v30 = *(v13 + 56);

        v30((v17 + 26 + (((&a1[v15 + 16] & ~v15) + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2, v14);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

LABEL_25:
  v26 = ~v20 + a2;
  if (v23 >= 4)
  {
    bzero(a1, ((v17 + 26 + ((v21 + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + v18);
    *a1 = v26;
    v27 = 1;
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v27 = (v26 >> (8 * v23)) + 1;
  if (!v23)
  {
LABEL_56:
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v28 = v26 & ~(-1 << (8 * v23));
  bzero(a1, ((v17 + 26 + ((v21 + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + v18);
  if (v23 == 3)
  {
    *a1 = v28;
    a1[2] = BYTE2(v28);
    goto LABEL_56;
  }

  if (v23 == 2)
  {
    *a1 = v28;
    if (v8 > 1)
    {
LABEL_60:
      if (v8 == 2)
      {
        *&a1[v23] = v27;
      }

      else
      {
        *&a1[v23] = v27;
      }

      return;
    }
  }

  else
  {
    *a1 = v26;
    if (v8 > 1)
    {
      goto LABEL_60;
    }
  }

LABEL_57:
  if (v8)
  {
    a1[v23] = v27;
  }
}

void sub_1BD7DEDA8()
{
  if (!qword_1EBD39308)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD39308);
    }
  }
}

uint64_t sub_1BD7DEE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v58 = a2;
  v3 = sub_1BE04FF64();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v55 = &WitnessTable - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54088);
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54090);
  v48 = *(a1 + 16);
  sub_1BE0500D4();
  sub_1BE04EBD4();
  v70 = sub_1BE04EBD4();
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54098);
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD540A0);
  swift_getTupleTypeMetadata();
  v43 = sub_1BE051E34();
  swift_getWitnessTable();
  v6 = sub_1BE051774();
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &WitnessTable - v8;
  WitnessTable = swift_getWitnessTable();
  v68 = v6;
  v69 = WitnessTable;
  v45 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v11);
  v13 = &WitnessTable - v12;
  v14 = sub_1BE04EBD4();
  v49 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &WitnessTable - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD486C8);
  v18 = sub_1BE04EBD4();
  v52 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v42 = &WitnessTable - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B6B0);
  v21 = sub_1BE04EBD4();
  v53 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v44 = &WitnessTable - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v50 = &WitnessTable - v26;
  v27 = *(v51 + 24);
  v59 = v48;
  v60 = v27;
  v61 = v54;
  sub_1BE04F504();
  sub_1BE051764();
  v28 = v55;
  sub_1BE04FF44();
  v29 = WitnessTable;
  sub_1BE050D14();
  (*(v56 + 8))(v28, v57);
  (*(v47 + 8))(v9, v6);
  sub_1BE052434();
  v68 = v6;
  v69 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  (*(v46 + 8))(v13, OpaqueTypeMetadata2);
  v31 = sub_1BD7E19E0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v66 = OpaqueTypeConformance2;
  v67 = v31;
  v32 = swift_getWitnessTable();
  sub_1BD7E1524();
  v33 = v42;
  sub_1BE0509A4();
  (*(v49 + 8))(v17, v14);
  v68 = sub_1BE051324();
  v34 = sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
  v64 = v32;
  v65 = v34;
  v35 = swift_getWitnessTable();
  v36 = v44;
  sub_1BE050C04();

  (*(v52 + 8))(v33, v18);
  v37 = sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0);
  v62 = v35;
  v63 = v37;
  swift_getWitnessTable();
  v38 = v50;
  sub_1BD147308(v36);
  v39 = *(v53 + 8);
  v39(v36, v21);
  sub_1BD147308(v38);
  return (v39)(v38, v21);
}

uint64_t sub_1BD7DF664@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v149 = a4;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD540A0);
  MEMORY[0x1EEE9AC00](v146, v7);
  v150 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v147 = &v129 - v11;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54098);
  MEMORY[0x1EEE9AC00](v155, v12);
  v148 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v157 = (&v129 - v16);
  sub_1BE0500D4();
  v17 = sub_1BE04EBD4();
  v142 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v17);
  v141 = &v129 - v18;
  v143 = v19;
  v156 = sub_1BE04EBD4();
  v153 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156, v20);
  v159 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v154 = &v129 - v24;
  v25 = sub_1BE04F6E4();
  v139 = *(v25 - 8);
  v140 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v138 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1BE051584();
  v28 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v29);
  v31 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCB8);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v137 = &v129 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD540B0);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v136 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v135 = &v129 - v41;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54088);
  MEMORY[0x1EEE9AC00](v145, v42);
  v152 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v129 - v46;
  v144 = a2;
  v48 = a3;
  v49 = type metadata accessor for SEStorageCleanupUsageRowView();
  v50 = *(a1 + *(v49 + 48));
  v158 = v47;
  v151 = v49;
  if (v50 == 2)
  {
    v51 = v49;
    (*(v36 + 56))(v47, 1, 1, v35);
    v52 = v48;
  }

  else
  {
    v130 = v36;
    v131 = v35;
    v132 = a3;
    v133 = a1;
    sub_1BE051574();
    v53 = v134;
    (*(v28 + 104))(v31, *MEMORY[0x1E6981630], v134);
    v129 = sub_1BE0515E4();

    (*(v28 + 8))(v31, v53);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v54 = v188;
    v55 = v189;
    v56 = v190;
    v57 = v191;
    v58 = v192;
    v59 = v193;
    if (v50)
    {
      v60 = sub_1BE0511D4();
    }

    else
    {
      v60 = sub_1BE0513E4();
    }

    v61 = v60;
    KeyPath = swift_getKeyPath();
    LOBYTE(v194) = v55;
    LOBYTE(v178) = v57;
    *&v181 = v129;
    *(&v181 + 1) = v54;
    LOBYTE(v182) = v55;
    *(&v182 + 1) = v56;
    LOBYTE(v183) = v57;
    *(&v183 + 1) = v58;
    *&v184 = v59;
    *(&v184 + 1) = KeyPath;
    *&v185 = v61;
    v63 = v140;
    if (v50)
    {
      v64 = v138;
      sub_1BE04F6B4();
    }

    else
    {
      *&v167 = MEMORY[0x1E69E7CC0];
      sub_1BD7E19E0(&qword_1EBD3E638, MEMORY[0x1E697F5E0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640);
      sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640);
      v64 = v138;
      sub_1BE053664();
    }

    v65 = v158;
    v51 = v151;
    v66 = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCC8);
    sub_1BD1A3358();
    v67 = v137;
    sub_1BE050DA4();
    (*(v139 + 8))(v64, v63);
    v168 = v182;
    v169 = v183;
    v170 = v184;
    *&v171 = v185;
    v167 = v181;
    sub_1BD0DE53C(&v167, &qword_1EBD3BCC8);
    v68 = sub_1BE050224();
    sub_1BE04E1F4();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v77 = v67;
    v78 = v136;
    sub_1BD0DE204(v77, v136, &qword_1EBD3BCB8);
    v79 = v131;
    v80 = v78 + *(v131 + 36);
    *v80 = v68;
    *(v80 + 8) = v70;
    *(v80 + 16) = v72;
    *(v80 + 24) = v74;
    *(v80 + 32) = v76;
    *(v80 + 40) = 0;
    v81 = v78;
    v82 = v135;
    sub_1BD0DE204(v81, v135, &qword_1EBD540B0);
    sub_1BD0DE204(v82, v65, &qword_1EBD540B0);
    (*(v66 + 56))(v65, 0, 1, v79);
    v52 = v132;
    a1 = v133;
  }

  if (*(a1 + *(v51 + 52)) == 1)
  {
    v83 = sub_1BE051404();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v138 = v195;
    v139 = v194;
    v136 = v197;
    v137 = v196;
    v134 = v199;
    v135 = v198;
    v140 = v83;
    sub_1BE048964();
  }

  else
  {
    v139 = 0;
    v140 = 0;
    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    v134 = 0;
  }

  v84 = v141;
  v85 = v144;
  sub_1BE050A24();
  sub_1BE050224();
  v86 = sub_1BD7E19E0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v176 = v52;
  v177 = v86;
  v87 = v143;
  WitnessTable = swift_getWitnessTable();
  v89 = a1;
  v90 = v159;
  sub_1BE051014();
  (*(v142 + 8))(v84, v87);
  v174 = WitnessTable;
  v175 = MEMORY[0x1E697E5D8];
  v91 = v156;
  v141 = swift_getWitnessTable();
  sub_1BD147308(v90);
  v92 = *(v153 + 8);
  v142 = v153 + 8;
  v143 = v92;
  v92(v90, v91);
  v93 = sub_1BE04F7B4();
  v94 = v157;
  *v157 = v93;
  v94[1] = 0;
  *(v94 + 16) = 1;
  v95 = v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD540B8);
  v97 = v95;
  sub_1BD7E04FC(v89, v85, v52, v95 + *(v96 + 44));
  LOBYTE(v95) = sub_1BE050234();
  sub_1BE04E1F4();
  v98 = v97 + *(v155 + 36);
  *v98 = v95;
  *(v98 + 8) = v99;
  *(v98 + 16) = v100;
  *(v98 + 24) = v101;
  *(v98 + 32) = v102;
  *(v98 + 40) = 0;
  v103 = (v89 + *(v151 + 44));
  v104 = v103[1];
  *&v181 = *v103;
  *(&v181 + 1) = v104;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v105 = sub_1BE0506C4();
  v107 = v106;
  LOBYTE(WitnessTable) = v108;
  sub_1BE051494();
  v109 = sub_1BE050564();
  v111 = v110;
  LOBYTE(v89) = v112;
  v114 = v113;

  sub_1BD0DDF10(v105, v107, WitnessTable & 1);

  sub_1BE051CF4();
  sub_1BE04E5E4();
  LOBYTE(v89) = v89 & 1;
  LOBYTE(v181) = v89;
  LOBYTE(v105) = sub_1BE050204();
  sub_1BE04E1F4();
  LOBYTE(v166[0]) = 0;
  *&v167 = v109;
  *(&v167 + 1) = v111;
  LOBYTE(v168) = v89;
  *(&v168 + 1) = v114;
  v169 = v178;
  v170 = v179;
  v171 = v180;
  LOBYTE(v172) = v105;
  *(&v172 + 1) = v115;
  *&v173[0] = v116;
  *(&v173[0] + 1) = v117;
  *&v173[1] = v118;
  BYTE8(v173[1]) = 0;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD540C0);
  sub_1BD7E1578();
  v119 = v147;
  sub_1BE050DE4();

  v185 = v171;
  v186 = v172;
  v187[0] = v173[0];
  *(v187 + 9) = *(v173 + 9);
  v181 = v167;
  v182 = v168;
  v183 = v169;
  v184 = v170;
  sub_1BD0DE53C(&v181, &qword_1EBD540C0);
  v120 = v152;
  sub_1BD0DE19C(v158, v152, &qword_1EBD54088);
  *&v167 = v140;
  *(&v167 + 1) = v139;
  *&v168 = v138;
  *(&v168 + 1) = v137;
  *&v169 = v136;
  *(&v169 + 1) = v135;
  *&v170 = v134;
  v166[0] = v120;
  v166[1] = &v167;
  v121 = v154;
  v122 = v159;
  v123 = v156;
  (*(v153 + 16))(v159, v154, v156);
  v166[2] = v122;
  v124 = v157;
  v125 = v148;
  sub_1BD0DE19C(v157, v148, &qword_1EBD54098);
  v166[3] = v125;
  v126 = v150;
  sub_1BD0DE19C(v119, v150, &qword_1EBD540A0);
  v166[4] = v126;
  v165[0] = v145;
  v165[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54090);
  v165[2] = v123;
  v165[3] = v155;
  v165[4] = v146;
  v160 = sub_1BD7E1624();
  v161 = sub_1BD7E17D0();
  v162 = v141;
  v163 = sub_1BD7E1874();
  v164 = sub_1BD7E192C(&qword_1EBD54110, &qword_1EBD540A0, &unk_1BE0FA088, sub_1BD7E1578);
  sub_1BD13A4C4(v166, 5uLL, v165);

  sub_1BD0DE53C(v119, &qword_1EBD540A0);
  sub_1BD0DE53C(v124, &qword_1EBD54098);
  v127 = v143;
  v143(v121, v123);
  sub_1BD0DE53C(v158, &qword_1EBD54088);
  sub_1BD0DE53C(v126, &qword_1EBD540A0);
  sub_1BD0DE53C(v125, &qword_1EBD54098);
  v127(v159, v123);

  return sub_1BD0DE53C(v152, &qword_1EBD54088);
}

uint64_t sub_1BD7E04FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a2;
  v76 = a3;
  v82 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54118);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v81 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v80 = v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC18);
  v77 = *(v11 - 8);
  v78 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v79 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v73 = v72 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v83 = v72 - v19;
  v74 = a1;
  v20 = *a1;
  v21 = a1[1];
  *&v103[0] = v20;
  *(&v103[0] + 1) = v21;
  v22 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v72[1] = v22;
  v23 = sub_1BE0506C4();
  v25 = v24;
  v27 = v26;
  sub_1BE050324();
  v28 = sub_1BE0505F4();
  v30 = v29;
  v32 = v31;

  sub_1BD0DDF10(v23, v25, v27 & 1);

  sub_1BE051464();
  v33 = sub_1BE050564();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_1BD0DDF10(v28, v30, v32 & 1);

  sub_1BE051CE4();
  sub_1BE04EE54();
  v104 = v37 & 1;
  *&v94 = v33;
  *(&v94 + 1) = v35;
  LOBYTE(v95) = v37 & 1;
  *(&v95 + 1) = v39;
  sub_1BE052434();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090);
  v41 = sub_1BD222ED0(&qword_1EBD4E8F0, &qword_1EBD3E090);
  sub_1BE050DE4();
  v42 = v74;

  v103[6] = v100;
  v103[7] = v101;
  v103[8] = v102;
  v103[2] = v96;
  v103[3] = v97;
  v103[4] = v98;
  v103[5] = v99;
  v103[0] = v94;
  v103[1] = v95;
  sub_1BD0DE53C(v103, &qword_1EBD3E090);
  v43 = type metadata accessor for SEStorageCleanupUsageRowView();
  if (*(v42 + *(v43 + 40)))
  {
    v44 = v80;
    (*(v77 + 56))(v80, 1, 1, v78);
  }

  else
  {
    sub_1BD7E0B8C(v43);
    *&v94 = v45;
    *(&v94 + 1) = v46;
    v47 = sub_1BE0506C4();
    v49 = v48;
    v51 = v50;
    sub_1BE050424();
    v52 = sub_1BE0505F4();
    v75 = v41;
    v76 = v40;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    sub_1BD0DDF10(v47, v49, v51 & 1);

    sub_1BE051494();
    v58 = sub_1BE050564();
    v60 = v59;
    v62 = v61;
    v64 = v63;

    sub_1BD0DDF10(v53, v55, v57 & 1);

    sub_1BE051CE4();
    sub_1BE04EE54();
    v93 = v62 & 1;
    *&v84 = v58;
    *(&v84 + 1) = v60;
    LOBYTE(v85) = v62 & 1;
    *(&v85 + 1) = v64;
    sub_1BE052434();
    v65 = v73;
    sub_1BE050DE4();

    v100 = v90;
    v101 = v91;
    v102 = v92;
    v96 = v86;
    v97 = v87;
    v98 = v88;
    v99 = v89;
    v94 = v84;
    v95 = v85;
    sub_1BD0DE53C(&v94, &qword_1EBD3E090);
    v44 = v80;
    sub_1BD0DE204(v65, v80, &qword_1EBD3BC18);
    (*(v77 + 56))(v44, 0, 1, v78);
  }

  v66 = v83;
  v67 = v79;
  sub_1BD0DE19C(v83, v79, &qword_1EBD3BC18);
  v68 = v81;
  sub_1BD0DE19C(v44, v81, &qword_1EBD54118);
  v69 = v82;
  sub_1BD0DE19C(v67, v82, &qword_1EBD3BC18);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54120);
  sub_1BD0DE19C(v68, v69 + *(v70 + 48), &qword_1EBD54118);
  sub_1BD0DE53C(v44, &qword_1EBD54118);
  sub_1BD0DE53C(v66, &qword_1EBD3BC18);
  sub_1BD0DE53C(v68, &qword_1EBD54118);
  return sub_1BD0DE53C(v67, &qword_1EBD3BC18);
}

void sub_1BD7E0B8C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v101 = *(v2 - 8);
  v102 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v95 = &v89 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v92 = &v89 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v91 = &v89 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v94 = &v89 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v93 = &v89 - v20;
  v21 = sub_1BE04B2F4();
  v98 = *(v21 - 8);
  v99 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE04A474();
  v96 = *(v25 - 8);
  v97 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v89 - v31;
  v33 = sub_1BE04AF64();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v89 - v40;
  v42 = &v100[*(a1 + 36)];
  v44 = v43;
  sub_1BD0DE19C(v42, v32, &unk_1EBD39970);
  if ((*(v34 + 48))(v32, 1, v44) == 1)
  {
    sub_1BD0DE53C(v32, &unk_1EBD39970);
    v46 = v101;
    v45 = v102;
    (*(v101 + 104))(v5, *MEMORY[0x1E69B80D8], v102);
    v47 = PKPassKitBundle();
    if (v47)
    {
      v48 = v47;
      sub_1BE04B6F4();

      (*(v46 + 8))(v5, v45);
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

  v49 = *(v34 + 32);
  v90 = v41;
  v49(v41, v32, v44);
  sub_1BE04B2A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800);
  v50 = sub_1BE04B2D4();
  v51 = *(v50 - 8);
  v52 = *(v51 + 72);
  v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1BE0B6CA0;
  v55 = v54 + v53;
  v56 = *MEMORY[0x1E6969A48];
  v100 = v28;
  v57 = v44;
  v58 = *(v51 + 104);
  v58(v55, v56, v50);
  v58(v55 + v52, *MEMORY[0x1E6969A10], v50);
  v59 = v57;
  v60 = v100;
  sub_1BD111674(v54);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1BE04AEF4();
  v61 = v90;
  sub_1BE04B184();

  v64 = *(v34 + 8);
  v62 = v34 + 8;
  v63 = v64;
  v64(v37, v59);
  (*(v98 + 8))(v24, v99);
  v65 = sub_1BE04A434();
  v67 = v101;
  v66 = v102;
  if ((v68 & 1) == 0)
  {
    if (v65 == 1)
    {
      v99 = v62;
      v69 = v94;
      (*(v101 + 104))(v94, *MEMORY[0x1E69B80D8], v102);
      v87 = PKPassKitBundle();
      if (!v87)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v71 = v87;
LABEL_18:
      sub_1BE04B6F4();

      (*(v67 + 8))(v69, v66);
      (*(v96 + 8))(v60, v97);
      v85 = v61;
      v86 = v59;
      goto LABEL_19;
    }

    if (!v65)
    {
      v99 = v62;
      v69 = v93;
      (*(v101 + 104))(v93, *MEMORY[0x1E69B80D8], v102);
      v70 = PKPassKitBundle();
      if (!v70)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v71 = v70;
      goto LABEL_18;
    }
  }

  v98 = v59;
  v72 = sub_1BE04A3F4();
  v73 = v95;
  if (v74)
  {
    goto LABEL_14;
  }

  if (v72 != 1)
  {
    if (!v72)
    {
      v75 = v91;
      (*(v67 + 104))(v91, *MEMORY[0x1E69B80D8], v66);
      v76 = PKPassKitBundle();
      if (!v76)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v77 = v76;
LABEL_22:
      sub_1BE04B6F4();

      (*(v67 + 8))(v75, v66);
      (*(v96 + 8))(v60, v97);
      v63(v61, v98);
      return;
    }

LABEL_14:
    v99 = v62;
    (*(v67 + 104))(v95, *MEMORY[0x1E69B80D8], v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1BE0B69E0;
    v79 = sub_1BE04AE64();
    v80 = PKShortDateString();

    if (!v80)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v81 = v61;
    v82 = sub_1BE052434();
    v84 = v83;

    *(v78 + 56) = MEMORY[0x1E69E6158];
    *(v78 + 64) = sub_1BD110550();
    *(v78 + 32) = v82;
    *(v78 + 40) = v84;
    sub_1BE04B714();

    (*(v67 + 8))(v73, v66);
    (*(v96 + 8))(v100, v97);
    v85 = v81;
    v86 = v98;
LABEL_19:
    v63(v85, v86);
    return;
  }

  v75 = v92;
  (*(v67 + 104))(v92, *MEMORY[0x1E69B80D8], v66);
  v88 = PKPassKitBundle();
  if (v88)
  {
    v77 = v88;
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
}

unint64_t sub_1BD7E1524()
{
  result = qword_1EBD540A8;
  if (!qword_1EBD540A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD540A8);
  }

  return result;
}

unint64_t sub_1BD7E1578()
{
  result = qword_1EBD540C8;
  if (!qword_1EBD540C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD540C0);
    sub_1BD222ED0(&qword_1EBD38640, &unk_1EBD4E810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD540C8);
  }

  return result;
}

unint64_t sub_1BD7E1624()
{
  result = qword_1EBD540D0;
  if (!qword_1EBD540D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54088);
    sub_1BD7E16A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD540D0);
  }

  return result;
}

unint64_t sub_1BD7E16A8()
{
  result = qword_1EBD540D8;
  if (!qword_1EBD540D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD540B0);
    sub_1BD7E192C(&qword_1EBD367B8, &qword_1EBD3BCB8, &unk_1BE0BD500, sub_1BD1A3358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD540D8);
  }

  return result;
}

uint64_t sub_1BD7E1760(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD7E17D0()
{
  result = qword_1EBD540E0;
  if (!qword_1EBD540E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54090);
    sub_1BD7E1760(&qword_1EBD540E8, &qword_1EBD540F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD540E0);
  }

  return result;
}

unint64_t sub_1BD7E1874()
{
  result = qword_1EBD540F8;
  if (!qword_1EBD540F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54098);
    sub_1BD0DE4F4(&qword_1EBD54100, &qword_1EBD54108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD540F8);
  }

  return result;
}

uint64_t sub_1BD7E192C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD7E19E0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD7E19E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD7E1B84(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_reporter];
  if (v3)
  {
    [v3 reportViewAppeared];
  }

  v4 = *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator];
  if (v4)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    v6 = v4;
    v7 = [v5 init];
    sub_1BD317B18(v7);
  }
}

void sub_1BD7E1C84()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_loadView);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = PKProvisioningBackgroundColor();
    [v2 setBackgroundColor_];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = *&v0[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_provisioningView];
      [v4 addSubview_];

      v7 = [*&v0[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_credential] configuration];
      v8 = [objc_allocWithZone(PKCredentialPairingExplanationHeaderView) initWithConfiguration_];

      [v6 setHeaderView_];
      v9 = 4;
      sub_1BD7E1DD0(&v9, 0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD7E1DD0(unsigned __int8 *a1, int a2)
{
  v62 = a2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v60 - v11;
  v13 = *a1;
  v66 = [objc_opt_self() sharedInstance];
  v14 = [*&v2[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_credential] configuration];
  if (!v14)
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v15 = v14;
  v16 = [v14 provisioningTemplateIdentifier];

  if (v16)
  {
    v17 = sub_1BE052434();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v64 = v19;
  v65 = v2;
  v20 = v2[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_supportsUWB];
  if (v20)
  {
    v21 = 0xD000000000000018;
  }

  else
  {
    v21 = 0xD000000000000014;
  }

  if (v20)
  {
    v22 = "CAR_KEY_PAIRING_CONNECTING";
  }

  else
  {
    v22 = "provisioningView";
  }

  v63 = sub_1BD7E2884(v21, v22 | 0x8000000000000000, v66, v17, v19);

  if (v13 == 12)
  {

    (*(v5 + 104))(v12, *MEMORY[0x1E69B80D8], v4);
    v23 = PKPassKitBundle();
    if (!v23)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v24 = v23;
    sub_1BE04B6F4();

    (*(v5 + 8))(v12, v4);
    v25 = v66;
    v26 = v64;
    v63 = sub_1BD7E2884(0xD00000000000001DLL, 0x80000001BE13AB30, v66, v17, v64);
    v61 = sub_1BD7E2884(0xD000000000000018, 0x80000001BE13AB50, v25, v17, v26);
    v28 = v27;
    v29 = qword_1EBD54000;
    v30 = v65;
    [*&v65[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_provisioningView] setShowingCheckmark:1 animated:1];
    v31 = 0;
    v32 = 0.5;
    v33 = 1065353216;
  }

  else if (v62)
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69B80D8], v4);
    v34 = PKPassKitBundle();
    if (!v34)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v35 = v34;
    v60[1] = sub_1BE04B6F4();

    (*(v5 + 8))(v8, v4);
    if (v13 == 11)
    {
      v25 = v66;
      v61 = sub_1BD7E2884(0xD000000000000018, 0x80000001BE13AB50, v66, v17, v64);
      v28 = v40;
      v31 = 0;
      if (v20)
      {
        v32 = 5.0;
      }

      else
      {
        v32 = 2.0;
      }

      v33 = 1065017672;
    }

    else
    {
      v25 = v66;
      if (v13 == 10)
      {
        v61 = sub_1BD7E2884(0xD000000000000018, 0x80000001BE13AB50, v66, v17, v64);
        v28 = v39;
        v31 = 0;
        if (v20)
        {
          v33 = 1061158912;
        }

        else
        {
          v33 = 1056964608;
        }

        if (v20)
        {
          v32 = 15.0;
        }

        else
        {
          v32 = 3.0;
        }
      }

      else if (v13 == 8)
      {
        v61 = sub_1BD7E2884(0xD00000000000001ALL, 0x80000001BE13AB90, v66, v17, v64);
        v28 = v36;
        v33 = 0;
        v32 = 0.0;
        v31 = 1;
      }

      else
      {
        v31 = 0;
        v61 = 0;
        v33 = 0;
        v32 = 0.0;
        v28 = 1;
      }
    }

    v30 = v65;
    v29 = qword_1EBD54000;
  }

  else
  {
    v32 = 0.2;
    v25 = v66;
    v37 = v64;
    sub_1BD7E2884(0xD00000000000001ELL, 0x80000001BE13AB70, v66, v17, v64);
    if (v13 == 4)
    {
      v61 = sub_1BD7E2884(0xD00000000000001ALL, 0x80000001BE13AB90, v25, v17, v37);
      v28 = v38;
      v31 = 0;
    }

    else
    {
      v31 = 0;
      v61 = 0;
      v28 = 0;
    }

    v33 = 0;
    v30 = v65;
    v29 = qword_1EBD54000;
  }

  v41 = *&v30[v29[39]];
  v42 = sub_1BE052404();

  [v41 setPrimaryText_];

  v43 = [v41 secondaryLabel];
  if (!v43)
  {
    goto LABEL_51;
  }

  v44 = v43;
  v45 = sub_1BE052404();

  [v44 setText_];

  if (v28 == 1)
  {
    goto LABEL_48;
  }

  v46 = [v41 progressLabel];
  if (!v46)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v47 = v46;
  v48 = v31;
  if (v28)
  {
    sub_1BE048C84();
    v49 = v61;
    v50 = sub_1BE052404();
    sub_1BD7E31C8(v49, v28);
  }

  else
  {
    v50 = 0;
  }

  [v47 setText_];

  v51 = [v41 progressView];
  v52 = v51;
  if (v32 == 0.0)
  {
    if (!v51)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v31 = v48;
    sub_1BD7E31C8(v61, v28);
    LODWORD(v53) = v33;
    [v52 setProgress_];
    goto LABEL_47;
  }

  if (v51)
  {
    v31 = v48;
    sub_1BD7E31C8(v61, v28);
    LODWORD(v54) = v33;
    [v52 _setProgressAnimated_duration_delay_options_];
LABEL_47:
    v25 = v66;

LABEL_48:
    [v41 setNeedsLayout];
    v55 = v65;
    v56 = [v65 navigationItem];
    v57 = [v56 rightBarButtonItem];

    [v57 setEnabled_];
    v58 = [v55 view];
    if (v58)
    {
      v59 = v58;

      [v59 setUserInteractionEnabled_];

      return;
    }

    goto LABEL_52;
  }

LABEL_57:
  __break(1u);
}

void sub_1BD7E26E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator);
  if (v2)
  {
    v3 = v2;
    sub_1BD3188FC();
  }
}

id sub_1BD7E2884(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE052404();
  if (a5)
  {
    a5 = sub_1BE052404();
  }

  v13 = [a3 provisioningString:v12 templateIdentifier:a5];

  if (v13)
  {
    v14 = sub_1BE052434();

    return v14;
  }

  else
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E69B8038], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();

      (*(v8 + 8))(v11, v7);
      return v17;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1BD7E2A44(id a1)
{
  v2 = v1;
  v4 = sub_1BE04B944();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v39 - v17;
  if ([a1 hasLocalizedTitleAndMessage])
  {
    goto LABEL_5;
  }

  v42 = v5;
  v43 = v4;
  v44 = a1;
  v19 = *(v10 + 104);
  v41 = *MEMORY[0x1E69B8038];
  v40 = v19;
  v19(v18);
  v20 = PKPassKitBundle();
  if (v20)
  {
    v21 = v20;
    sub_1BE04B6F4();

    v22 = *(v10 + 8);
    v39 = v10 + 8;
    v22(v18, v9);
    v23 = sub_1BE052404();

    a1 = v44;
    [v44 setLocalizedTitle_];

    v24 = [*&v2[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_credential] configuration];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 issuerIdentifier];

      sub_1BE04BB94();
      v27 = sub_1BE04B8E4();
      (*(v42 + 8))(v8, v43);
      v28 = PKLocalizedCarIssuerNameFromIssuerIdentifier();

      v29 = sub_1BE052434();
      v31 = v30;

      v40(v13, v41, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1BE0B69E0;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = sub_1BD110550();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      sub_1BE04B714();

      v22(v13, v9);
      v33 = sub_1BE052404();

      [a1 setLocalizedMessage_];

LABEL_5:
      sub_1BD7E3158();
      v34 = swift_allocObject();
      *(v34 + 16) = v2;
      v35 = swift_allocObject();
      *(v35 + 16) = v2;
      v36 = swift_allocObject();
      *(v36 + 16) = v2;
      v37 = v2;
      v38 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, 0, 0, sub_1BD7E31DC, v34, sub_1BD7E31A4, v35, sub_1BD7E31AC, v36);

      [v37 presentViewController:v38 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD7E2F2C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_1BD3188FC();
  }
}

void sub_1BD7E2F88(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    v3 = v1;
    v4 = [v2 init];
    sub_1BD317B18(v4);
  }
}

id sub_1BD7E301C(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_provisioningView;
  *&v3[v7] = [objc_allocWithZone(PKProvisioningProgressView) init];
  v8 = OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_reporter;
  *&v3[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_reporter] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_credential] = a2;
  sub_1BE048964();
  result = [a2 configuration];
  if (result)
  {
    v10 = result;
    v11 = [result supportedRadioTechnologies];

    v3[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_supportsUWB] = (v11 & 2) != 0;
    sub_1BE052434();
    v12 = sub_1BE04BB74();

    v13 = *&v3[v8];
    *&v3[v8] = v12;

    v14.receiver = v3;
    v14.super_class = ObjectType;
    return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD7E3158()
{
  result = qword_1EBD3D280;
  if (!qword_1EBD3D280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3D280);
  }

  return result;
}

uint64_t sub_1BD7E31C8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t AccountAutomaticPaymentsFixedAmountView.init(model:)@<X0>(uint64_t a1@<X8>)
{
  sub_1BE051694();
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_1BE051694();
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  result = sub_1BE051694();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t AccountAutomaticPaymentsFixedAmountView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v34 = sub_1BE04FB94();
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54160);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54168);
  MEMORY[0x1EEE9AC00](v32, v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54170);
  v33 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v31 - v16;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54178);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v18);
  v20 = &v31 - v19;
  v21 = v2[1];
  v43[0] = *v2;
  v43[1] = v21;
  v43[2] = v2[2];
  v39 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54180);
  sub_1BD7E3A68();
  sub_1BE0504E4();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD541F8, &qword_1EBD54160);
  sub_1BE050DE4();

  (*(v7 + 8))(v10, v6);
  sub_1BE04FB84();
  v22 = sub_1BD7E3DC4();
  v23 = MEMORY[0x1E697C750];
  v24 = v32;
  v25 = v34;
  sub_1BE051144();
  (*(v36 + 8))(v5, v25);
  sub_1BD0DE53C(v13, &qword_1EBD54168);
  *&v40 = v24;
  *(&v40 + 1) = v25;
  v41 = v22;
  v42 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE050DF4();
  (*(v33 + 8))(v17, v14);
  sub_1BE0501C4();
  if (qword_1EBD36DD0 != -1)
  {
    swift_once();
  }

  *&v40 = v14;
  *(&v40 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v38;
  sub_1BE050904();
  (*(v35 + 8))(v20, v27);
  v40 = v43[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  sub_1BE051694();
  v29 = v40;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54218);
  *(v28 + *(result + 36)) = v29;
  return result;
}

uint64_t sub_1BD7E37F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54268);
  MEMORY[0x1EEE9AC00](v0, v1);
  sub_1BD7E6034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  sub_1BDA1C820();
  v3 = v2;

  if (v3)
  {
    sub_1BD0DDEBC();
    sub_1BE0506C4();
    sub_1BE0501F4();
    sub_1BE04E1F4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD541D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD541E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541A0);
  sub_1BD7E3BFC();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD541D0, &qword_1EBD541D8);
  sub_1BD7E3D40();
  return sub_1BE051A34();
}

unint64_t sub_1BD7E3A68()
{
  result = qword_1EBD54188;
  if (!qword_1EBD54188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54180);
    sub_1BD7E3AF4();
    sub_1BD734220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54188);
  }

  return result;
}

unint64_t sub_1BD7E3AF4()
{
  result = qword_1EBD54190;
  if (!qword_1EBD54190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541A0);
    sub_1BD7E3BFC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD541D0, &qword_1EBD541D8);
    sub_1BD7E3D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54190);
  }

  return result;
}

unint64_t sub_1BD7E3BFC()
{
  result = qword_1EBD541A8;
  if (!qword_1EBD541A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541A0);
    sub_1BD7E3C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD541A8);
  }

  return result;
}

unint64_t sub_1BD7E3C88()
{
  result = qword_1EBD541B0;
  if (!qword_1EBD541B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541B8);
    sub_1BD0DE4F4(&qword_1EBD541C0, &qword_1EBD541C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD541B0);
  }

  return result;
}

unint64_t sub_1BD7E3D40()
{
  result = qword_1EBD541E0;
  if (!qword_1EBD541E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541E8);
    sub_1BD2A275C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD541E0);
  }

  return result;
}

unint64_t sub_1BD7E3DC4()
{
  result = qword_1EBD54200;
  if (!qword_1EBD54200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54168);
    sub_1BD0DE4F4(&qword_1EBD541F8, &qword_1EBD54160);
    sub_1BD7E920C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54200);
  }

  return result;
}

uint64_t sub_1BD7E3EC8@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54280);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v36 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54288);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54290);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v36 - v18;
  v45 = &unk_1F3B8F650;
  swift_getKeyPath();
  v20 = swift_allocObject();
  v21 = a1[1];
  v20[1] = *a1;
  v20[2] = v21;
  v20[3] = a1[2];
  sub_1BD7E8828(a1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CFB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD542A0);
  sub_1BD0DE4F4(&qword_1EBD542A8, &qword_1EBD3CFB0);
  sub_1BD7E8860();
  sub_1BD7E88B4();
  v22 = v19;
  sub_1BE0519C4();
  v44[0] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v45 == 1)
  {
    v23 = a1[1];
    v44[0] = *a1;
    v44[1] = v23;
    v44[2] = a1[2];
    v24 = v36;
    sub_1BD7E5458(v36);
    sub_1BD0B7664(v24, v12);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v12;
  (*(v40 + 56))(v12, v25, 1, v41);
  v27 = v37;
  v28 = v38;
  v29 = *(v37 + 16);
  v30 = v39;
  v29(v39, v22, v38);
  v31 = v42;
  sub_1BD0DE19C(v26, v42, &qword_1EBD54288);
  v32 = v43;
  v29(v43, v30, v28);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54358);
  sub_1BD0DE19C(v31, &v32[*(v33 + 48)], &qword_1EBD54288);
  sub_1BD0DE53C(v26, &qword_1EBD54288);
  v34 = *(v27 + 8);
  v34(v22, v28);
  sub_1BD0DE53C(v31, &qword_1EBD54288);
  return (v34)(v30, v28);
}

uint64_t sub_1BD7E4324@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543E0);
  v50 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v5);
  v7 = &v50 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543E8);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v8);
  v52 = &v50 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543F0);
  MEMORY[0x1EEE9AC00](v54, v10);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543F8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v50 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD542C8);
  MEMORY[0x1EEE9AC00](v55, v17);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54400);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v50 - v23;
  v25 = *a1;
  if (*a1)
  {
    v26 = a2[1];
    v58 = *a2;
    v59 = v26;
    v60 = a2[2];
    if (v25 == 1)
    {
      v27 = v52;
      sub_1BD7E4D10(v52);
      v28 = v51;
      v29 = v53;
      (*(v51 + 16))(v16, v27, v53);
      swift_storeEnumTagMultiPayload();
      v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD542D0);
      v31 = sub_1BD7E8AA8();
      *&v58 = v30;
      *(&v58 + 1) = v31;
      swift_getOpaqueTypeConformance2();
      v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54300);
      v33 = sub_1BE04EB64();
      v34 = sub_1BD7E8C48();
      *&v58 = v32;
      *(&v58 + 1) = v33;
      *&v59 = v34;
      *(&v59 + 1) = MEMORY[0x1E697C178];
      swift_getOpaqueTypeConformance2();
      sub_1BE04F9A4();
      sub_1BD0DE19C(v19, v12, &qword_1EBD542C8);
      swift_storeEnumTagMultiPayload();
      sub_1BD7E8984();
      v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54330);
      v36 = sub_1BD7E8DE8();
      *&v58 = v35;
      *(&v58 + 1) = v36;
      swift_getOpaqueTypeConformance2();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v19, &qword_1EBD542C8);
      return (*(v28 + 8))(v52, v29);
    }

    else
    {
      sub_1BD7E518C(v7);
      v46 = v50;
      v47 = v57;
      (*(v50 + 16))(v12, v7, v57);
      swift_storeEnumTagMultiPayload();
      sub_1BD7E8984();
      v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54330);
      v49 = sub_1BD7E8DE8();
      *&v58 = v48;
      *(&v58 + 1) = v49;
      swift_getOpaqueTypeConformance2();
      sub_1BE04F9A4();
      return (*(v46 + 8))(v7, v47);
    }
  }

  else
  {
    v38 = a2[1];
    v58 = *a2;
    v59 = v38;
    v60 = a2[2];
    sub_1BD7E4A4C();
    (*(v21 + 16))(v16, v24, v20);
    swift_storeEnumTagMultiPayload();
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD542D0);
    v40 = sub_1BD7E8AA8();
    *&v58 = v39;
    *(&v58 + 1) = v40;
    swift_getOpaqueTypeConformance2();
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54300);
    v42 = sub_1BE04EB64();
    v43 = sub_1BD7E8C48();
    *&v58 = v41;
    *(&v58 + 1) = v42;
    *&v59 = v43;
    *(&v59 + 1) = MEMORY[0x1E697C178];
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v19, v12, &qword_1EBD542C8);
    swift_storeEnumTagMultiPayload();
    sub_1BD7E8984();
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54330);
    v45 = sub_1BD7E8DE8();
    *&v58 = v44;
    *(&v58 + 1) = v45;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v19, &qword_1EBD542C8);
    return (*(v21 + 8))(v24, v20);
  }
}

uint64_t sub_1BD7E4A4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD542D0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v11[-v3 - 16];
  v5 = v0[1];
  v14 = *v0;
  v15 = v5;
  v16 = v0[2];
  v6 = sub_1BE04F504();
  v13 = 1;
  sub_1BD7E646C(&v14, &v23);
  v19 = v25;
  v20[0] = *v26;
  *(v20 + 9) = *&v26[9];
  v17 = v23;
  v18 = v24;
  v21[2] = v25;
  v22[0] = *v26;
  *(v22 + 9) = *&v26[9];
  v21[0] = v23;
  v21[1] = v24;
  sub_1BD0DE19C(&v17, &v10, &unk_1EBD54408);
  sub_1BD0DE53C(v21, &unk_1EBD54408);
  *(v12 + 7) = v17;
  v12[4] = *(v20 + 9);
  *(&v12[3] + 7) = v20[0];
  *(&v12[2] + 7) = v19;
  *(&v12[1] + 7) = v18;
  *&v11[17] = v12[1];
  *&v11[33] = v12[2];
  *&v11[49] = v12[3];
  *&v11[65] = v12[4];
  v10 = v6;
  v11[0] = v13;
  *&v11[1] = v12[0];
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD542F8);
  sub_1BD0DE4F4(&qword_1EBD542F0, &qword_1EBD542F8);
  sub_1BE050DE4();

  *&v26[16] = *&v11[48];
  v27 = *&v11[64];
  v28 = v11[80];
  v23 = v10;
  v24 = *v11;
  v25 = *&v11[16];
  *v26 = *&v11[32];
  sub_1BD0DE53C(&v23, &qword_1EBD542F8);
  v4[*(v1 + 36)] = 0;
  v7 = swift_allocObject();
  v8 = v15;
  v7[1] = v14;
  v7[2] = v8;
  v7[3] = v16;
  sub_1BD7E8828(&v14, &v10);
  sub_1BD7E8AA8();
  sub_1BE0509D4();

  return sub_1BD0DE53C(v4, &qword_1EBD542D0);
}

uint64_t sub_1BD7E4D10@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v25 = sub_1BE04EB64();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54328);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54300);
  MEMORY[0x1EEE9AC00](v24, v10);
  v12 = &v23 - v11;
  v13 = v1[1];
  v39[0] = *v1;
  v39[1] = v13;
  v39[2] = v1[2];
  v34 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516C4();
  v14 = v36;
  v15 = v37;
  v16 = v38;
  swift_getKeyPath();
  v36 = v14;
  v37 = v15;
  v38 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543A0);
  sub_1BE051904();

  v23 = v34;
  v17 = v35;

  v32 = v23;
  v33 = v17;
  v31 = v39;
  v29 = 1;
  v30 = v39;
  v28 = v39;
  type metadata accessor for PKAccountPaymentFrequency(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54418);
  sub_1BD7E920C(&qword_1EBD54420, type metadata accessor for PKAccountPaymentFrequency);
  sub_1BD7E9254();
  sub_1BE0517E4();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD54320, &qword_1EBD54328);
  sub_1BE050DE4();

  (*(v6 + 8))(v9, v5);
  v18 = sub_1BE051494();
  KeyPath = swift_getKeyPath();
  v20 = &v12[*(v24 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_1BE04EB54();
  sub_1BD7E8C48();
  v21 = v25;
  sub_1BE050924();
  (*(v26 + 8))(v4, v21);
  return sub_1BD0DE53C(v12, &qword_1EBD54300);
}

uint64_t sub_1BD7E518C@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54330);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v11 - v4;
  v6 = v1[1];
  v16 = *v1;
  v17 = v6;
  v18 = v1[2];
  v7 = sub_1BE04F504();
  v15 = 1;
  sub_1BD7E70CC(2, &v25);
  v21 = v27;
  v22 = v28;
  v19 = v25;
  v20 = v26;
  v24[1] = v26;
  v24[2] = v27;
  v24[3] = v28;
  v24[4] = v29;
  v23 = v29;
  v24[0] = v25;
  sub_1BD0DE19C(&v19, &v12, &qword_1EBD3E1F0);
  sub_1BD0DE53C(v24, &qword_1EBD3E1F0);
  *&v14[7] = v19;
  *&v14[71] = v23;
  *&v14[55] = v22;
  *&v14[39] = v21;
  *&v14[23] = v20;
  *&v13[33] = *&v14[32];
  *&v13[49] = *&v14[48];
  *&v13[65] = *&v14[64];
  *&v13[1] = *v14;
  v12 = v7;
  v13[0] = v15;
  *&v13[80] = *(&v23 + 1);
  *&v13[17] = *&v14[16];
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3D0);
  sub_1BD0DE4F4(&unk_1EBD3E170, &unk_1EBD4D3D0);
  sub_1BE050DE4();

  v29 = *&v13[48];
  v30 = *&v13[64];
  v31 = *&v13[80];
  v25 = v12;
  v26 = *v13;
  v27 = *&v13[16];
  v28 = *&v13[32];
  sub_1BD0DE53C(&v25, &unk_1EBD4D3D0);
  v5[*(v2 + 36)] = 0;
  v8 = swift_allocObject();
  v9 = v17;
  v8[1] = v16;
  v8[2] = v9;
  v8[3] = v18;
  sub_1BD7E8828(&v16, &v12);
  sub_1BD7E8DE8();
  sub_1BE0509D4();

  return sub_1BD0DE53C(v5, &qword_1EBD54330);
}

uint64_t sub_1BD7E5458@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v91 = sub_1BE04FE64();
  v83 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v3);
  v82 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04F9E4();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v78 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54360);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v77 = v74 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54368);
  MEMORY[0x1EEE9AC00](v93, v11);
  v79 = v74 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54370);
  v81 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v13);
  v80 = v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v84 = v74 - v17;
  v85 = sub_1BE04B3B4();
  v88 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v18);
  v87 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54380);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = v74 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
  v89 = *(v24 - 8);
  v90 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v76 = v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v86 = v74 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54390);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v74 - v32;
  v34 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = (v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = v1[1];
  v99[0] = *v1;
  v99[1] = v38;
  v99[2] = v1[2];
  v100 = v99[0];
  v95 = v99[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  v39 = v98;
  swift_getKeyPath();
  *&v95 = v39;
  sub_1BD7E920C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v40 = *(v39 + 40);

  if (v40 != 6)
  {
    v74[0] = v30;
    v74[1] = v34;
    v75 = v33;
    v45 = v93;
    v95 = *v2;
    sub_1BE0516A4();
    sub_1BDA23090(v23);

    if ((*(v89 + 48))(v23, 1, v90) == 1)
    {
      v46 = &unk_1EBD54380;
      v47 = v23;
    }

    else
    {
      v48 = v23;
      v49 = v86;
      sub_1BD7E8F88(v48, v86);
      v95 = *v2;
      sub_1BE0516A4();
      v50 = v84;
      sub_1BD0DE19C(v98 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_timeZone, v84, &unk_1EBD3D260);

      v51 = v88;
      v52 = v85;
      if ((*(v88 + 48))(v50, 1, v85) != 1)
      {
        (*(v51 + 32))(v87, v50, v52);
        v98 = v100;
        sub_1BE0516C4();
        v55 = v95;
        v56 = v96;
        swift_getKeyPath();
        v95 = v55;
        v96 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543A0);
        sub_1BE051904();

        sub_1BD0DE19C(v49, v76, &unk_1EBD387B0);
        v57 = sub_1BE04F9D4();
        v58 = v52;
        MEMORY[0x1EEE9AC00](v57, v59);
        v74[-2] = v99;
        v60 = v79;
        sub_1BE04E1E4();
        KeyPath = swift_getKeyPath();
        v62 = v45;
        v63 = (v60 + *(v45 + 36));
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543A8);
        v65 = *(v51 + 16);
        v66 = v58;
        v65(v63 + *(v64 + 28), v87, v58);
        *v63 = KeyPath;
        v67 = v82;
        sub_1BE04FE54();
        v68 = sub_1BD7E9000();
        v69 = sub_1BD7E920C(&qword_1EBD543D0, MEMORY[0x1E697C900]);
        v70 = v80;
        v71 = v91;
        sub_1BE050B14();
        (*(v83 + 8))(v67, v71);
        sub_1BD0DE53C(v60, &qword_1EBD54368);
        v72 = v81;
        v73 = v92;
        (*(v81 + 16))(v75, v70, v92);
        swift_storeEnumTagMultiPayload();
        sub_1BD7E920C(&qword_1EBD543D8, type metadata accessor for AccountAutomaticPaymentsDayPickerView);
        *&v95 = v62;
        *(&v95 + 1) = v71;
        v96 = v68;
        v97 = v69;
        swift_getOpaqueTypeConformance2();
        v43 = v94;
        sub_1BE04F9A4();
        (*(v72 + 8))(v70, v73);
        (*(v88 + 8))(v87, v66);
        sub_1BD0DE53C(v86, &unk_1EBD387B0);
        goto LABEL_3;
      }

      sub_1BD0DE53C(v49, &unk_1EBD387B0);
      v46 = &unk_1EBD3D260;
      v47 = v50;
    }

    sub_1BD0DE53C(v47, v46);
    v44 = 1;
    v43 = v94;
    goto LABEL_9;
  }

  v95 = *v2;
  sub_1BE0516A4();
  sub_1BD894404(v98, v37);
  sub_1BD7E90E4(v37, v33);
  swift_storeEnumTagMultiPayload();
  sub_1BD7E920C(&qword_1EBD543D8, type metadata accessor for AccountAutomaticPaymentsDayPickerView);
  v41 = sub_1BD7E9000();
  v42 = sub_1BD7E920C(&qword_1EBD543D0, MEMORY[0x1E697C900]);
  *&v95 = v93;
  *(&v95 + 1) = v91;
  v96 = v41;
  v97 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v94;
  sub_1BE04F9A4();
  sub_1BD7E9148(v37);
LABEL_3:
  v44 = 0;
LABEL_9:
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54398);
  return (*(*(v53 - 8) + 56))(v43, v44, 1, v53);
}

uint64_t sub_1BD7E6034()
{
  v0 = sub_1BE04F7B4();
  v26 = 0;
  sub_1BD7E6274(&v32);
  v27 = v32;
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v31[0] = v32;
  v31[1] = v33;
  v31[2] = v34;
  v31[3] = v35;
  sub_1BD0DE19C(&v27, &v17, &qword_1EBD54278);
  sub_1BD0DE53C(v31, &qword_1EBD54278);
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  *&v25[55] = v30;
  v1 = v26;
  v2 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  LOBYTE(v32) = 0;
  v11 = sub_1BE0501F4();
  sub_1BE04E1F4();
  *&v18[17] = *&v25[16];
  *&v18[33] = *&v25[32];
  *&v18[49] = *&v25[48];
  v26 = 0;
  v17 = v0;
  v18[0] = v1;
  *&v18[64] = *&v25[63];
  *&v18[1] = *v25;
  v18[72] = v2;
  *&v19 = v4;
  *(&v19 + 1) = v6;
  *&v20 = v8;
  *(&v20 + 1) = v10;
  LOBYTE(v21) = 0;
  BYTE8(v21) = v11;
  *&v22 = v12;
  *(&v22 + 1) = v13;
  *&v23 = v14;
  *(&v23 + 1) = v15;
  v24 = 0;
  sub_1BE0501C4();
  if (qword_1EBD36DD8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD541A0);
  sub_1BD7E3BFC();
  sub_1BE050A34();
  v40 = v21;
  v41 = v22;
  v42 = v23;
  v43 = v24;
  v36 = *&v18[48];
  v37 = *&v18[64];
  v38 = v19;
  v39 = v20;
  v32 = v17;
  v33 = *v18;
  v34 = *&v18[16];
  v35 = *&v18[32];
  return sub_1BD0DE53C(&v32, &qword_1EBD541A0);
}

uint64_t sub_1BD7E6274@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  [*(v16 + 48) featureIdentifier];

  sub_1BE04C124();
  sub_1BD0DDEBC();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1BE0516A4();
  [*(v16 + 48) featureIdentifier];

  sub_1BE04C124();
  v9 = sub_1BE0506C4();
  v11 = v10;
  v13 = v12 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12 & 1;
  *(a1 + 56) = v14;
  sub_1BD0D7F18(v2, v4, v6 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v9, v11, v13);
  sub_1BE048C84();
  sub_1BD0DDF10(v9, v11, v13);

  sub_1BD0DDF10(v2, v4, v6 & 1);
}

uint64_t sub_1BD7E646C@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v23 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  [*(v22 + 48) featureIdentifier];

  sub_1BE04C124();
  sub_1BD0DDEBC();
  v3 = sub_1BE0506C4();
  v5 = v4;
  v7 = v6;
  if (qword_1EBD36E08 != -1)
  {
    swift_once();
  }

  v8 = sub_1BE0505F4();
  v10 = v9;
  v12 = v11;
  sub_1BD0DDF10(v3, v5, v7 & 1);

  if (qword_1EBD36E10 != -1)
  {
    swift_once();
  }

  sub_1BE048964();
  v13 = sub_1BE050574();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1BD0DDF10(v8, v10, v12 & 1);

  sub_1BE0516A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v22;
  *(a2 + 56) = v23;
  *(a2 + 72) = v21;
  sub_1BD0D7F18(v13, v15, v17 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v13, v15, v17 & 1);
}

uint64_t sub_1BD7E6754(uint64_t a1)
{
  v5 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v4 == 1)
  {
    v5 = *(a1 + 32);
    LOBYTE(v4) = 0;
    sub_1BE0516B4();
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 16);
  v6 = *(&v5 + 1);
  sub_1BD0DE19C(&v6, &v3, &unk_1EBD4EF10);
  sub_1BE0516A4();
  v3 = v5;
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v5, &qword_1EBD54350);
}

uint64_t sub_1BD7E6864(__int128 *a1)
{
  v7[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  swift_getKeyPath();
  *&v7[0] = v8;
  sub_1BD7E920C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v2 = v8[3];
  if ((v2 - 2) >= 2)
  {
    if (v2 == 1)
    {
      v3 = v8[4];
      sub_1BE048C84();
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = &unk_1F3B8F678;
  }

  v8 = v3;
  swift_getKeyPath();
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v4[3] = a1[2];
  sub_1BD7E8828(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54430);
  sub_1BD0DE4F4(&qword_1EBD54438, &qword_1EBD54430);
  sub_1BD7E920C(&qword_1EBD54420, type metadata accessor for PKAccountPaymentFrequency);
  return sub_1BE0519C4();
}

uint64_t sub_1BD7E6A8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  [*(v8 + 48) featureIdentifier];

  if (v3 == 4 || v3 == 6 || v3 == 5)
  {
    sub_1BE04C124();
  }

  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1BD7E6BAC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  [*(v20 + 48) featureIdentifier];

  sub_1BE04C124();
  sub_1BD0DDEBC();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  if (qword_1EBD36E08 != -1)
  {
    swift_once();
  }

  v7 = sub_1BE0505F4();
  v9 = v8;
  v11 = v10;
  sub_1BD0DDF10(v2, v4, v6 & 1);

  if (qword_1EBD36E10 != -1)
  {
    swift_once();
  }

  sub_1BE048964();
  v12 = sub_1BE050574();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1BD0DDF10(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_1BD7E6DE4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  swift_getKeyPath();
  sub_1BD7E920C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v2 = *(v21 + 40);

  sub_1BE0516A4();
  [*(v21 + 48) featureIdentifier];

  if (v2 == 4 || v2 == 6 || v2 == 5)
  {
    sub_1BE04C124();
  }

  sub_1BD0DDEBC();
  v3 = sub_1BE0506C4();
  v5 = v4;
  v7 = v6;
  if (qword_1EBD36E18 != -1)
  {
    swift_once();
  }

  v8 = sub_1BE0505F4();
  v10 = v9;
  v12 = v11;
  sub_1BD0DDF10(v3, v5, v7 & 1);

  if (qword_1EBD36E20 != -1)
  {
    swift_once();
  }

  sub_1BE048964();
  v13 = sub_1BE050574();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1BD0DDF10(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_1BD7E70CC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  [*(v41 + 48) featureIdentifier];

  v37 = a1;
  sub_1BE04C124();
  sub_1BD0DDEBC();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  if (qword_1EBD36E08 != -1)
  {
    swift_once();
  }

  v9 = sub_1BE0505F4();
  v11 = v10;
  v13 = v12;
  sub_1BD0DDF10(v4, v6, v8 & 1);

  if (qword_1EBD36E10 != -1)
  {
    swift_once();
  }

  sub_1BE048964();
  v14 = sub_1BE050574();
  v38 = v15;
  v39 = v14;
  v36 = v16;
  v40 = v17;
  sub_1BD0DDF10(v9, v11, v13 & 1);

  sub_1BE0516A4();
  sub_1BDA22C3C(v37);

  v18 = sub_1BE0506C4();
  v20 = v19;
  v22 = v21;
  if (qword_1EBD36E18 != -1)
  {
    swift_once();
  }

  v23 = sub_1BE0505F4();
  v25 = v24;
  v27 = v26;
  sub_1BD0DDF10(v18, v20, v22 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v41 == 1)
  {
    sub_1BE0513C4();
  }

  else
  {
    if (qword_1EBD36E20 != -1)
    {
      swift_once();
    }

    sub_1BE048964();
  }

  v28 = sub_1BE050574();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1BD0DDF10(v23, v25, v27 & 1);

  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v40;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v28;
  *(a2 + 56) = v30;
  *(a2 + 64) = v32 & 1;
  *(a2 + 72) = v34;
  sub_1BD0D7F18(v39, v38, v36 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v28, v30, v32 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v28, v30, v32 & 1);

  sub_1BD0DDF10(v39, v38, v36 & 1);
}

uint64_t sub_1BD7E7560()
{
  sub_1BE051D74();
  sub_1BE04E7D4();
}

uint64_t sub_1BD7E75C0(uint64_t a1)
{
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v4 == 1)
  {
    v5 = *(a1 + 16);
    LOBYTE(v4) = 0;
    sub_1BE0516B4();
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 32);
  v6 = *(&v5 + 1);
  sub_1BD0DE19C(&v6, &v3, &unk_1EBD4EF10);
  sub_1BE0516A4();
  v3 = v5;
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v5, &qword_1EBD54350);
}

uint64_t sub_1BD7E76D0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  [*(v6 + 48) featureIdentifier];

  sub_1BE04C124();
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1BD7E7794(uint64_t a1)
{
  v2 = sub_1BE04B3B4();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BE04F354();
}

id sub_1BD7E7870(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  sub_1BDA1BE00();
  swift_getKeyPath();
  v19 = a2;
  sub_1BD7E920C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v9 = sub_1BE053344();
  v10 = objc_allocWithZone(PKEnterCurrencyAmountView);
  v11 = sub_1BE052404();

  v12 = [v10 initWithCurrency:v11 amount:v9];

  if (!v12)
  {
    return [objc_allocWithZone(PKEnterCurrencyAmountView) init];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54258);
  sub_1BE04FF74();
  [v12 setDelegate_];

  [v12 setShowsDecimalPointButton_];
  if (qword_1EBD36DF8 != -1)
  {
    swift_once();
  }

  v13 = qword_1EBDAB560;
  [v12 setAmountFont_];
  if ([v12 _shouldReverseLayoutDirection])
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  [v12 setAmountTextAlignment_];
  [v12 setCurrencySymbolFont_];
  [v12 setIgnoreIntegralNumber_];
  [v12 setClearAmountOnFirstKeyboardInput_];
  v19 = a3;
  v20 = a4;
  v21 = a5 & 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v18, v15);
  if (v18 != 1)
  {
    if (qword_1EBD36E00 != -1)
    {
      swift_once();
    }

    v16 = qword_1EBDAB568;
    goto LABEL_14;
  }

  v16 = [v12 tintColor];
  if (v16)
  {
LABEL_14:
    [v12 setTextColor_];

    return v12;
  }

  __break(1u);
  return [objc_allocWithZone(PKEnterCurrencyAmountView) init];
}

uint64_t sub_1BD7E7B88(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtCV9PassKitUI39AccountAutomaticPaymentsEnterAmountView11Coordinator_model);
  swift_getKeyPath();
  sub_1BD7E920C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B594();

  if (!a3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = (v5 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__maxAmount);
  v8 = *(v5 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__maxAmount);
  v9 = *(v5 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__maxAmount + 4);
  v34 = v7[3];
  v10 = v7[4];
  v11 = v7[5];
  v33 = v7[6];
  v12 = v7[7];
  v13 = v7[8];
  v14 = v7[9];
  v15 = sub_1BE0533F4();
  v17 = v16;
  v19 = v18;
  v20 = v8 | (v9 << 32);
  v21 = v10 | (v11 << 16);
  v22 = v13 | (v14 << 16);
  if (MEMORY[0x1BFB403F0]() & 1) != 0 || (MEMORY[0x1BFB403F0](v20 | (v34 << 48), v21 | (v33 << 32) | (v12 << 48), v22, v15, v17, v19))
  {
    result = a1;
    if (!a1)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    [a1 pkui:0 miniShakeWithCompletion:?];
  }

  result = a2;
  if (!a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = sub_1BE0533F4();
  v25 = v24;
  v27 = v26;
  v28 = v20 | (v34 << 48);
  v29 = v21 | (v33 << 32) | (v12 << 48);
  if (MEMORY[0x1BFB403F0](v28, v29, v22, v15, v17, v19))
  {
    v30 = MEMORY[0x1BFB403F0](v28, v29, v22, v23, v25, v27) ^ 1;
  }

  else
  {
    v30 = 1;
  }

  return v30 & 1;
}