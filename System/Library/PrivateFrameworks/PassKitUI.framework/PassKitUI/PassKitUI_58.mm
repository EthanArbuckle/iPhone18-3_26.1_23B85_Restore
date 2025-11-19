id sub_1BD6551D0()
{
  v1 = sub_1BE04AC64();
  v68 = *(v1 - 8);
  v69 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v67 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04AD84();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v66 = &v62 - v9;
  v10 = sub_1BE04BD74();
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v73 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v62 - v15;
  v17 = sub_1BE04AF64();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v72 = &v62 - v25;
  v26 = *v0;
  v27 = [*v0 openingDate];
  sub_1BE04AEE4();

  v28 = sub_1BE04AE64();
  v29 = *(v18 + 8);
  v29(v21, v17);
  v30 = [v26 closingDate];
  sub_1BE04AEE4();

  v31 = sub_1BE04AE64();
  v63 = v29;
  v64 = v18 + 8;
  v29(v21, v17);
  v32 = PKDatesMidpoint();

  if (v32)
  {
    sub_1BE04AEE4();

    v33 = *(v18 + 32);
    v33(v16, v21, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    v34 = v72;
    v33(v72, v16, v17);
    v35 = v34;
    v36 = v17;
  }

  else
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    v37 = [v26 closingDate];
    v35 = v72;
    sub_1BE04AEE4();

    v36 = v17;
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      sub_1BD0DE53C(v16, &unk_1EBD39970);
    }
  }

  v39 = v73;
  v38 = v74;
  v40 = v75;
  (*(v74 + 104))(v73, *MEMORY[0x1E69B80E0], v75);
  result = PKPassKitBundle();
  if (result)
  {
    v42 = result;
    v62 = sub_1BE04B6F4();
    v72 = v43;

    (*(v38 + 8))(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1BE0B6CA0;
    v45 = [v26 displayableTaxFormString];
    v46 = v36;
    v47 = v35;
    if (v45)
    {
      v48 = v45;
      v49 = sub_1BE052434();
      v51 = v50;
    }

    else
    {
      v49 = 0;
      v51 = 0;
    }

    v52 = MEMORY[0x1E69E6158];
    *(v44 + 56) = MEMORY[0x1E69E6158];
    v53 = sub_1BD110550();
    *(v44 + 64) = v53;
    if (v51)
    {
      v54 = v49;
    }

    else
    {
      v54 = 0;
    }

    v55 = 0xE000000000000000;
    if (v51)
    {
      v55 = v51;
    }

    *(v44 + 32) = v54;
    *(v44 + 40) = v55;
    v56 = v65;
    MEMORY[0x1BFB371E0]();
    v57 = v67;
    sub_1BE04AC44();
    v58 = v66;
    sub_1BE04ABA4();
    (*(v68 + 8))(v57, v69);
    v59 = v71;
    v60 = *(v70 + 8);
    v60(v56, v71);
    *(v44 + 96) = v52;
    *(v44 + 104) = v53;
    sub_1BD657610(&qword_1EBD4E940, MEMORY[0x1E6969328]);
    sub_1BE04AF44();
    v60(v58, v59);
    v61 = sub_1BE052454();

    v63(v47, v46);
    return v61;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD655894()
{
  v1 = sub_1BE051F54();
  v103 = *(v1 - 8);
  v104 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v100 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BE051FA4();
  v99 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v4);
  v98 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TaxFormCell();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v102 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v108 = *(v9 - 8);
  v109 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v107 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04AF64();
  v105 = *(v12 - 8);
  v106 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v92 - v22;
  v24 = sub_1BE04B3B4();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v0;
  v30 = v0 + *(v6 + 40);
  v31 = *(v30 + 2);
  aBlock = *v30;
  v111 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  sub_1BE0516A4();
  if (v116)
  {
    return v115;
  }

  v94 = v19;
  v95 = v23;
  v96 = v15;
  v93 = v7;
  v33 = *(v0 + *(v6 + 28));
  if (v33)
  {
    v34 = *v0;
    v35 = v33;
    v36 = sub_1BD6D1E64(v34);

    if (v36)
    {
      v37 = [v36 savingsDetails];

      if (!v37)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v38 = [v37 productTimeZone];

      if (v38)
      {
        v39 = v94;
        sub_1BE04B394();

        v40 = v39;
        v41 = 0;
        v42 = v24;
        v43 = v25;
      }

      else
      {
        v41 = 1;
        v42 = v24;
        v43 = v25;
        v40 = v94;
      }

      (*(v43 + 56))(v40, v41, 1, v42);
      v45 = v40;
      v44 = v95;
      sub_1BD196DA8(v45, v95);
      if ((*(v43 + 48))(v44, 1, v42) != 1)
      {
        (*(v43 + 32))(v28, v44, v42);
        if (qword_1EBD36C20 != -1)
        {
          swift_once();
        }

        v46 = qword_1EBDAB168;
        v47 = sub_1BE04B374();
        [v46 setTimeZone_];

        if (qword_1EBD36C28 != -1)
        {
          swift_once();
        }

        v48 = qword_1EBDAB170;
        v49 = sub_1BE04B374();
        [v48 setTimeZone_];

        (*(v43 + 8))(v28, v42);
        LODWORD(v95) = 1;
        goto LABEL_17;
      }
    }

    else
    {
      v44 = v95;
      (*(v25 + 56))(v95, 1, 1, v24);
    }

    sub_1BD0DE53C(v44, &unk_1EBD3D260);
    LODWORD(v95) = 0;
LABEL_17:
    v51 = v105;
    v50 = v106;
    v52 = v96;
    if (qword_1EBD36C20 != -1)
    {
      swift_once();
    }

    v94 = v29;
    v53 = qword_1EBDAB168;
    v54 = [v34 openingDate];
    sub_1BE04AEE4();

    v55 = sub_1BE04AE64();
    v56 = *(v51 + 8);
    v56(v52, v50);
    v57 = [v53 stringFromDate_];
    v58 = v34;
    v59 = v57;

    v105 = sub_1BE052434();
    v61 = v60;

    if (qword_1EBD36C28 != -1)
    {
      swift_once();
    }

    v62 = qword_1EBDAB170;
    v63 = [v58 closingDate];
    sub_1BE04AEE4();

    v64 = sub_1BE04AE64();
    v56(v52, v50);
    v65 = [v62 stringFromDate_];

    v66 = sub_1BE052434();
    v68 = v67;

    v69 = v107;
    v70 = v108;
    v71 = v109;
    (*(v108 + 104))(v107, *MEMORY[0x1E69B80E0], v109);
    v72 = PKPassKitBundle();
    if (v72)
    {
      v73 = v72;
      sub_1BE04B6F4();

      (*(v70 + 8))(v69, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1BE0B6CA0;
      v75 = MEMORY[0x1E69E6158];
      *(v74 + 56) = MEMORY[0x1E69E6158];
      v76 = sub_1BD110550();
      *(v74 + 32) = v105;
      *(v74 + 40) = v61;
      *(v74 + 96) = v75;
      *(v74 + 104) = v76;
      *(v74 + 64) = v76;
      *(v74 + 72) = v66;
      *(v74 + 80) = v68;
      v32 = sub_1BE052454();
      v78 = v77;

      v80 = v103;
      v79 = v104;
      v81 = v102;
      if (v95)
      {
        sub_1BD0E5E8C(0, &qword_1EBD35E90);
        v82 = v78;
        v83 = sub_1BE052D54();
        sub_1BD6570EC(v94, v81);
        v84 = (*(v97 + 80) + 16) & ~*(v97 + 80);
        v85 = (v93 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
        v86 = swift_allocObject();
        sub_1BD657150(v81, v86 + v84);
        v87 = (v86 + v85);
        *v87 = v32;
        v87[1] = v82;
        v113 = sub_1BD657580;
        v114 = v86;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v111 = sub_1BD126964;
        v112 = &block_descriptor_147;
        v88 = _Block_copy(&aBlock);
        sub_1BE048C84();

        v89 = v98;
        sub_1BE051F74();
        *&aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD657610(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD14ECDC();
        v90 = v100;
        sub_1BE053664();
        MEMORY[0x1BFB3FDF0](0, v89, v90, v88);
        _Block_release(v88);

        (*(v80 + 8))(v90, v79);
        (*(v99 + 8))(v89, v101);
      }

      return v32;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  type metadata accessor for TaxFormsModel(0);
  sub_1BD657610(&qword_1EBD3B320, type metadata accessor for TaxFormsModel);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD6563EC()
{
  type metadata accessor for TaxFormCell();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  return sub_1BE0516B4();
}

uint64_t sub_1BD656474@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44550);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v28 = &v23 - v4;
  v5 = type metadata accessor for TaxFormCell();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v10 = sub_1BD6551D0();
  v26 = v11;
  v27 = v10;
  v12 = sub_1BD655894();
  v24 = v13;
  v25 = v12;
  v14 = v1 + *(v6 + 32);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v30) = v15;
  *(&v30 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v17 = v37;
  v18 = v38;
  sub_1BD6570EC(v1, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_1BD657150(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  *&v30 = v27;
  *(&v30 + 1) = v26;
  *&v31 = v25;
  *(&v31 + 1) = v24;
  v32 = xmmword_1BE0EBAA0;
  strcpy(&v33, "doc.plaintext");
  HIWORD(v33) = -4864;
  v34 = v17;
  LOBYTE(v35) = v18;
  BYTE1(v35) = 1;
  *(&v35 + 1) = sub_1BD6571B4;
  *v36 = v20;
  *&v36[8] = xmmword_1BE0CCBA0;
  *&v36[24] = xmmword_1BE0CCBB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);
  v21 = v28;
  sub_1BE0516C4();
  sub_1BD657214();
  sub_1BE0506D4();
  sub_1BD0DE53C(v21, &qword_1EBD44550);
  v43 = *v36;
  v44 = *&v36[16];
  v45 = *&v36[32];
  v39 = v32;
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v37 = v30;
  v38 = v31;
  return sub_1BD332178(&v37);
}

void sub_1BD656730(void **a1)
{
  v2 = type metadata accessor for TaxFormCell();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  v7 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = *(a1 + *(v3 + 36));
  if (v12)
  {
    v13 = *a1;
    v14 = v12;
    v22 = sub_1BD6D1E64(v13);

    if (v22)
    {
      if ([v22 supportsViewTaxDocuments])
      {
        v15 = sub_1BE0528D4();
        (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
        sub_1BD6570EC(a1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_1BE0528A4();
        v16 = sub_1BE052894();
        v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v18 = swift_allocObject();
        v19 = MEMORY[0x1E69E85E0];
        *(v18 + 16) = v16;
        *(v18 + 24) = v19;
        sub_1BD657150(v7, v18 + v17);
        sub_1BD122C00(0, 0, v11, &unk_1BE0EBB18, v18);
      }

      else
      {
        v20 = v22;
      }
    }
  }

  else
  {
    type metadata accessor for TaxFormsModel(0);
    sub_1BD657610(&qword_1EBD3B320, type metadata accessor for TaxFormsModel);
    sub_1BE04EEB4();
    __break(1u);
  }
}

uint64_t sub_1BD6569E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for TaxFormCell();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  sub_1BE0528A4();
  v4[15] = sub_1BE052894();
  v8 = sub_1BE052844();
  v4[16] = v8;
  v4[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD656ADC, v8, v7);
}

uint64_t sub_1BD656ADC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = (v2 + *(v1 + 32));
  v4 = *v3;
  *(v0 + 144) = *v3;
  if (v4)
  {
    v5 = (v2 + *(v1 + 36));
    v6 = *v5;
    v7 = v5[2];
    *(v0 + 32) = v5[1];
    *(v0 + 48) = v7;
    *(v0 + 16) = v6;
    sub_1BE048964();
    v8 = swift_task_alloc();
    *(v0 + 152) = v8;
    *v8 = v0;
    v8[1] = sub_1BD656C24;

    return sub_1BDA809C4(v0 + 16, 1);
  }

  else
  {
    type metadata accessor for DeviceAuthenticationModel();
    sub_1BD657610(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);

    return sub_1BE04EEB4();
  }
}

uint64_t sub_1BD656C24()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BD656D68, v3, v2);
}

uint64_t sub_1BD656D68()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  if (*(v0 + 160) != 1)
  {
LABEL_10:

    v19 = *(v0 + 8);

    return v19();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = (v2 + *(v1 + 24));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 161) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v6 = (v2 + *(v1 + 28));
  if (*v6)
  {
    v7 = **(v0 + 80);
    v8 = *v6;
    v9 = [v7 identifier];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1BE052434();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v15 = *(v0 + 112);
    v16 = *(v0 + 96);
    sub_1BD6570EC(*(v0 + 80), v15);
    v17 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v18 = swift_allocObject();
    sub_1BD657150(v15, v18 + v17);
    sub_1BD6CF30C(v11, v13, sub_1BD657510, v18);

    goto LABEL_10;
  }

  type metadata accessor for TaxFormsModel(0);
  sub_1BD657610(&qword_1EBD3B320, type metadata accessor for TaxFormsModel);

  return sub_1BE04EEB4();
}

uint64_t sub_1BD656FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12[-v6];
  v8 = (a2 + *(type metadata accessor for TaxFormCell() + 24));
  v9 = *v8;
  v10 = *(v8 + 1);
  v12[16] = v9;
  v13 = v10;
  v12[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  sub_1BD38F438(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);
  return sub_1BE0516B4();
}

uint64_t sub_1BD6570EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaxFormCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD657150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaxFormCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD6571B4()
{
  v1 = *(type metadata accessor for TaxFormCell() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1BD656730(v2);
}

unint64_t sub_1BD657214()
{
  result = qword_1EBD4E5F8;
  if (!qword_1EBD4E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E5F8);
  }

  return result;
}

uint64_t sub_1BD657268(uint64_t a1)
{
  v4 = *(type metadata accessor for TaxFormCell() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD6569E0(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm_75()
{
  v1 = type metadata accessor for TaxFormCell();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = v2 + *(v1 + 20);
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);

  return swift_deallocObject();
}

uint64_t sub_1BD657510(uint64_t a1)
{
  v3 = *(type metadata accessor for TaxFormCell() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD656FE0(a1, v4);
}

uint64_t sub_1BD657580()
{
  type metadata accessor for TaxFormCell();

  return sub_1BD6563EC();
}

uint64_t sub_1BD657610(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD657658()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_loadView, v5);
  [v0 setShowPrimaryButton_];
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_showChangeMethodButton) == 1)
  {
    v8 = [v0 dockView];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 footerView];

      if (v10)
      {
        v11 = [v10 tertiaryActionButton];

        if (v11)
        {
          (*(v3 + 104))(v7, *MEMORY[0x1E69B80D8], v2);
          v12 = PKPassKitBundle();
          if (v12)
          {
            v13 = v12;
            sub_1BE04B6F4();

            (*(v3 + 8))(v7, v2);
            v14 = sub_1BE052404();

            [v11 setTitle:v14 forState:0];

            [v11 addTarget:v0 action:sel__changeMethodButtonPressed forControlEvents:0x2000];
            return;
          }

LABEL_11:
          __break(1u);
          return;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }
}

void sub_1BD6578EC()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_pass];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6[4] = sub_1BD659DF0;
    v6[5] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1BD20815C;
    v6[3] = &block_descriptor_62;
    v5 = _Block_copy(v6);

    [v2 snapshotWithPass:v3 completion:v5];
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD657A20(void *a1)
{
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a1;
  aBlock[4] = sub_1BD659DF8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_69_0;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v6, v16);
  _Block_release(v16);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void sub_1BD657D00(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
      v7 = *(v6 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage);
      *(v6 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage) = a2;
      v8 = a2;

      v4 = v7;
    }
  }
}

id sub_1BD657DE0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_reporter];
  if (v2)
  {
    [v2 reportButtonPressed_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_verificationController) clearSelectedChannel];
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
LABEL_7:
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v5 = v4;
    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = *&v6[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context];
    v8 = *&v6[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController];
    v9 = objc_allocWithZone(type metadata accessor for ProvisioningVerificationMethodsFlowItem());
    sub_1BE048964();
    v10 = v8;
    v11 = v6;
    v12 = sub_1BD5537A8(v7, v10);

    v13 = &v11[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      sub_1BD865948(v5, &off_1F3BB88B0, v12, &off_1F3BAD3B8, ObjectType, v14);

      swift_unknownObjectRelease();
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

LABEL_9:

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_1BD657FF4()
{
  if (*&v0[OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_coordinator])
  {
    sub_1BE048964();
    v1 = [v0 fieldsModel];
    sub_1BD8F49CC(v1);
  }
}

uint64_t sub_1BD658080()
{
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_coordinator))
  {
    sub_1BE048964();
    sub_1BD8F4B68();
  }

  return result;
}

id sub_1BD6580D8()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v33 - v12;
  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v33 - v16;
  v19 = *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard);
  v20 = *MEMORY[0x1E69B80D8];
  v21 = *(v2 + 104);
  if (v19)
  {
    (v21)(v9, *MEMORY[0x1E69B80D8], v1, v17);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v33 = v25;
      v34 = v24;

      v26 = *(v2 + 8);
      v26(v9, v1);
      v21(v5, v20, v1);
      result = PKPassKitBundle();
      if (result)
      {
        v27 = result;
        sub_1BE04B6F4();

        v28 = v5;
LABEL_8:
        v26(v28, v1);
        return v34;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  (v21)(&v33 - v16, *MEMORY[0x1E69B80D8], v1, v17);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_10;
  }

  v29 = result;
  v30 = sub_1BE04B6F4();
  v33 = v31;
  v34 = v30;

  v26 = *(v2 + 8);
  v26(v18, v1);
  v21(v13, v20, v1);
  result = PKPassKitBundle();
  if (result)
  {
    v32 = result;
    sub_1BE04B6F4();

    v28 = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BD6583F0()
{
  sub_1BD0D4534(v0 + OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_delegate);
}

void sub_1BD6584C0(unsigned __int8 a1, int a2)
{
  v208 = a2;
  v4 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v4, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  MEMORY[0x1EEE9AC00](&v205 - v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v205 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  MEMORY[0x1EEE9AC00](v17, &v205 - v16);
  v19 = &v205 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v205 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v205 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v205 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v205 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v205 - v46;
  v61.n128_f64[0] = MEMORY[0x1EEE9AC00](v48, v49);
  v62 = &v205 - v57;
  v207 = v2;
  if (v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling])
  {
    return;
  }

  if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      if (v208)
      {
        v110 = *MEMORY[0x1E69B80D8];
        v111 = v58;
        v112 = *(v58 + 104);
        v113 = v59;
        v112(&v205 - v57, v110, v59, v61.n128_f64[0]);
        v114 = PKPassKitBundle();
        if (!v114)
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v115 = v114;
        v205 = sub_1BE04B6F4();
        v105 = v116;

        v117 = *(v111 + 8);
        v117(v62, v113);
        (v112)(v47, v110, v113);
        v118 = PKPassKitBundle();
        if (!v118)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v119 = v118;
        sub_1BE04B6F4();
        v74 = v120;

        v117(v47, v113);
        v76 = 0;
        LODWORD(v78) = 7;
        v77 = v207;
      }

      else
      {
        v76 = 0;
        v74 = 0;
        v105 = 0;
        LODWORD(v78) = 7;
        v77 = v207;
      }

      goto LABEL_41;
    }

    if (a1 == 5)
    {
      v63 = v51;
      v64 = *MEMORY[0x1E69B80D8];
      v65 = v58;
      v66 = *(v58 + 104);
      v67 = v59;
      v66(v19, v64, v59, v61.n128_f64[0]);
      v68 = PKPassKitBundle();
      if (!v68)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v69 = v68;
      v205 = sub_1BE04B6F4();

      v70 = *(v65 + 8);
      v70(v19, v67);
      (v66)(v63, v64, v67);
      v71 = PKPassKitBundle();
      if (!v71)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v72 = v71;
      sub_1BE04B6F4();
      v74 = v73;

      v70(v63, v67);
      v75 = 0;
      v76 = 0;
      v77 = v207;
      LODWORD(v206) = 1;
      v207[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] = 1;
      v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 0;
      LODWORD(v78) = 5;
LABEL_50:
      v171 = v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard];
      v172 = sub_1BE052404();

      if (v171 == 1 || (v208 & 1) == 0)
      {
        if (v74)
        {
          v173 = sub_1BE052404();
        }

        else
        {
          v173 = 0;
        }

        [v77 hideActivitySpinnerWithTitle:v172 subtitle:v173 animated:1];
      }

      else
      {
        if (v74)
        {
          v173 = sub_1BE052404();
        }

        else
        {
          v173 = 0;
        }

        [v77 showActivitySpinnerWithTitle:v172 subtitle:v173];
      }

      if (v78 == 7)
      {
        v93 = 0;
        goto LABEL_68;
      }

      v93 = 0;
      v96 = &v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingReadFailure];
      if (v76 != v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingReadFailure])
      {
        goto LABEL_63;
      }

      goto LABEL_64;
    }

LABEL_13:
    if (v208)
    {
      if (a1 >= 2u)
      {
        if (a1 == 2)
        {
          v145 = v54;
          v146 = *MEMORY[0x1E69B80D8];
          v147 = v58;
          v148 = *(v58 + 104);
          v149 = v59;
          v148(v37, v146, v59, v61);
          v150 = PKPassKitBundle();
          if (!v150)
          {
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          v151 = v150;
          v205 = sub_1BE04B6F4();
          v105 = v152;

          v153 = *(v147 + 8);
          v153(v37, v149);
          (v148)(v145, v146, v149);
          v154 = PKPassKitBundle();
          if (!v154)
          {
LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

          v155 = v154;
          sub_1BE04B6F4();
          v74 = v156;

          v153(v145, v149);
          v76 = 0;
          LODWORD(v78) = 3;
        }

        else
        {
          v157 = v53;
          v158 = *MEMORY[0x1E69B80D8];
          v159 = v58;
          v160 = *(v58 + 104);
          v161 = v59;
          v160(v31, v158, v59, v61);
          v162 = PKPassKitBundle();
          if (!v162)
          {
            goto LABEL_109;
          }

          v163 = v162;
          v205 = sub_1BE04B6F4();
          v105 = v164;

          v165 = *(v159 + 8);
          v165(v31, v161);
          (v160)(v157, v158, v161);
          v166 = PKPassKitBundle();
          if (!v166)
          {
LABEL_111:
            __break(1u);
            return;
          }

          v167 = v166;
          sub_1BE04B6F4();
          v74 = v168;

          v165(v157, v161);
          LODWORD(v78) = 4;
          v76 = 1;
        }
      }

      else
      {
        v97 = v56;
        v98 = *MEMORY[0x1E69B80D8];
        v99 = v58;
        v100 = *(v58 + 104);
        v101 = v59;
        v100(v43, v98, v59, v61);
        v102 = PKPassKitBundle();
        if (!v102)
        {
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        v103 = v102;
        v205 = sub_1BE04B6F4();
        v105 = v104;

        v106 = *(v99 + 8);
        v106(v43, v101);
        (v100)(v97, v98, v101);
        v107 = PKPassKitBundle();
        if (!v107)
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        v108 = v107;
        sub_1BE04B6F4();
        v74 = v109;

        v106(v97, v101);
        v76 = 0;
        LODWORD(v78) = 1;
      }

      v77 = v207;
      v132 = 1;
    }

    else
    {
      v132 = a1;
      v76 = a1 != 0;
      if (a1)
      {
        v133 = v52;
        v134 = *MEMORY[0x1E69B80D8];
        v135 = v58;
        v136 = *(v58 + 104);
        v137 = v59;
        v136(v25, v134, v59, v61);
        v138 = PKPassKitBundle();
        if (!v138)
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v139 = v138;
        v205 = sub_1BE04B6F4();
        v105 = v140;

        v141 = *(v135 + 8);
        v141(v25, v137);
        (v136)(v133, v134, v137);
        v142 = PKPassKitBundle();
        if (!v142)
        {
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        v143 = v142;
        sub_1BE04B6F4();
        v74 = v144;

        v141(v133, v137);
        v132 = 0;
        LODWORD(v78) = 4;
        v76 = 1;
        v77 = v207;
      }

      else
      {
        v74 = 0;
        v105 = 0;
        LODWORD(v78) = 2;
        v77 = v207;
      }
    }

    v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = v132;
LABEL_41:
    v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] = 0;
    if (v105 && v74)
    {
      LODWORD(v206) = 0;
      v75 = v208;
    }

    else
    {
      sub_1BD6580D8();
      v170 = v169;
      if (!v105)
      {
        sub_1BE048C84();
      }

      if (v74)
      {

        LODWORD(v206) = 0;
      }

      else
      {
        LODWORD(v206) = 0;
        v74 = v170;
      }

      v75 = v208;
      v77 = v207;
    }

    goto LABEL_50;
  }

  if (a1 == 6)
  {
    v121 = v55;
    v122 = *MEMORY[0x1E69B80D8];
    v123 = v58;
    v124 = *(v58 + 104);
    v125 = v59;
    v124(v13, v122, v59, v61.n128_f64[0]);
    v126 = PKPassKitBundle();
    if (!v126)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v127 = v126;
    v205 = sub_1BE04B6F4();

    v128 = *(v123 + 8);
    v128(v13, v125);
    (v124)(v121, v122, v125);
    v129 = PKPassKitBundle();
    if (!v129)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v130 = v129;
    sub_1BE04B6F4();
    v78 = v131;

    v74 = v78;
    v128(v121, v125);
    v75 = 0;
    LODWORD(v206) = 0;
    v76 = 0;
    LODWORD(v78) = 5;
    v77 = v207;
    goto LABEL_50;
  }

  if (a1 != 7)
  {
    goto LABEL_13;
  }

  v79 = v60;
  v80 = *MEMORY[0x1E69B80D8];
  v81 = v58;
  v82 = *(v58 + 104);
  v83 = v59;
  v84 = v50;
  v82(v61.n128_f64[0]);
  v85 = PKPassKitBundle();
  if (!v85)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v86 = v85;
  v206 = sub_1BE04B6F4();

  v87 = *(v81 + 8);
  v87(v84, v83);
  v205 = "VERIFICATION_REQUIRED_MESSAGE";
  (v82)(v79, v80, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1BE0B69E0;
  v89 = v207;
  v90 = [*&v207[OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_pass] localizedDescription];
  v78 = sub_1BE052434();
  v92 = v91;

  *(v88 + 56) = MEMORY[0x1E69E6158];
  *(v88 + 64) = sub_1BD110550();
  *(v88 + 32) = v78;
  *(v88 + 40) = v92;
  v77 = v89;
  sub_1BE04B714();

  v87(v79, v83);
  v93 = 1;
  [v77 showCheckmarkAnimated_];
  v94 = sub_1BE052404();

  v95 = sub_1BE052404();
  [v77 hideActivitySpinnerWithTitle:v94 subtitle:v95 animated:0];

  [v77 endUserInteraction];
  LOBYTE(v76) = 0;
  LODWORD(v206) = 0;
  v75 = 0;
  v96 = &v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingReadFailure];
  LOBYTE(v78) = 6;
  if (v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingReadFailure])
  {
LABEL_63:
    *v96 = v76;
    sub_1BD6066F8(v76, 1);
  }

LABEL_64:
  v174 = *&v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
  if (v174)
  {
    v175 = v174;
    v176 = [v77 view];
    if (!v176)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v177 = v176;
    [v176 setNeedsLayout];

    v178 = [v77 view];
    if (!v178)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v179 = v178;
    [v178 layoutIfNeeded];

    v180 = objc_opt_self();
    v181 = *&v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory];
    v182 = swift_allocObject();
    *(v182 + 16) = v175;
    *(v182 + 24) = v78;
    *(v182 + 32) = v77;
    v213 = sub_1BD37DC1C;
    v214 = v182;
    aBlock = MEMORY[0x1E69E9820];
    v210 = 1107296256;
    v211 = sub_1BD126964;
    v212 = &block_descriptor_148;
    v183 = _Block_copy(&aBlock);
    v184 = v175;
    v185 = v207;

    v213 = PKEdgeInsetsMake;
    v214 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v210 = 1107296256;
    v211 = sub_1BD3F08C0;
    v212 = &block_descriptor_47_1;
    v186 = _Block_copy(&aBlock);
    [v180 pkui:v181 animateUsingFactory:0 withDelay:v183 options:v186 animations:0.0 completion:?];

    v187 = v186;
    v77 = v207;
    _Block_release(v187);
    _Block_release(v183);
  }

LABEL_68:
  v188 = &selRef_usesCustomInputView;
  v189 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally;
  v190 = v208;
  if ((v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally] & 1) == 0)
  {
    if (v75)
    {
      sub_1BD37834C();
    }

    else
    {
      [v77 setHidesBackButton:0 animated:0];
      if ((v77[v189] & 1) == 0)
      {
        [v77 _setLeftBarButtonItems_animated_];
      }
    }
  }

  v191 = [v77 dockView];
  if (!v191)
  {
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v192 = v191;
  v193 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard;
  if (v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] == 1)
  {
    if (v206 && (v190 & 1) == 0)
    {
      [v77 setShowPrimaryButton_];
      v194 = [v192 primaryButton];
      if (v194)
      {
        v195 = v194;
        [v194 pkui:0 setAlpha:0.0 animated:?];
      }

      v196 = [v192 primaryButton];
      if (v196)
      {
        v197 = v196;
        [v196 pkui:1 setAlpha:1.0 animated:?];
      }

      v77 = v207;
      v198 = [v207 dockView];
      v188 = &selRef_usesCustomInputView;
      if (!v198)
      {
        goto LABEL_95;
      }

      v199 = v198;
      v200 = [v198 footerView];

      if (!v200)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      [v200 setSecondaryActionButton_];
    }
  }

  else
  {
    [v77 setShowPrimaryButton_];
  }

  v201 = [v77 v188[88]];
  if (!v201)
  {
    goto LABEL_92;
  }

  v202 = v201;
  v203 = v75 | ~v190;
  [v201 setUserInteractionEnabled_];

  if (v77[v193])
  {
    v204 = 0;
  }

  else
  {
    v204 = (v77[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] | v190) ^ 1;
  }

  sub_1BD3789BC(v204 & 1);
  [v192 setButtonsEnabled_];
}

void sub_1BD659804(id a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v37 - v10;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v37 - v15;
  v17 = [a1 hasLocalizedTitleAndMessage];
  v18 = *MEMORY[0x1E69B80D8];
  v19 = *(v4 + 104);
  if (v17)
  {
    goto LABEL_5;
  }

  v42 = v1;
  v43 = v7;
  v44 = a1;
  v20 = v18;
  v19(v16);
  v21 = PKPassKitBundle();
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v22 = v21;
  sub_1BE04B6F4();

  v41 = v4;
  v38 = *(v4 + 8);
  v38(v16, v3);
  v23 = sub_1BE052404();

  a1 = v44;
  [v44 setLocalizedTitle_];

  v39 = v20;
  v40 = v19;
  (v19)(v11, v20, v3);
  v24 = PKPassKitBundle();
  if (v24)
  {
    v25 = v24;
    sub_1BE04B6F4();

    v38(v11, v3);
    v26 = sub_1BE052404();

    [a1 setLocalizedMessage_];

    v4 = v41;
    v1 = v42;
    v7 = v43;
    v19 = v40;
    v18 = v39;
LABEL_5:
    (v19)(v7, v18, v3);
    v27 = PKPassKitBundle();
    if (v27)
    {
      v28 = v27;
      v29 = sub_1BE04B6F4();
      v31 = v30;

      (*(v4 + 8))(v7, v3);
      sub_1BD0E5E8C(0, &qword_1EBD3D280);
      v32 = swift_allocObject();
      *(v32 + 16) = v1;
      v33 = swift_allocObject();
      *(v33 + 16) = v1;
      v34 = swift_allocObject();
      *(v34 + 16) = v1;
      v35 = v1;
      v36 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v29, v31, sub_1BD659DD8, v32, sub_1BD659DE0, v33, sub_1BD659DE8, v34);

      PKApplyDefaultIconToAlertController(v36);
      [v35 presentViewController:v36 animated:1 completion:0];

      return;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

void sub_1BD659C54(char *a1)
{
  if ((a1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] & 1) == 0 && *&a1[OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_coordinator])
  {
    sub_1BE048964();
    v2 = [a1 fieldsModel];
    sub_1BD8F49CC();
  }
}

uint64_t sub_1BD659CF4(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_coordinator))
  {
    sub_1BE048964();
    sub_1BD8F4C10();
  }

  return result;
}

void sub_1BD659D4C(char *a1)
{
  if (*&a1[OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_coordinator])
  {
    sub_1BE048964();
    v2 = [a1 fieldsModel];
    sub_1BD8F49CC();
  }
}

void sub_1BD659E98()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BAC4();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel_loadView, v11);
  v14 = [v1 dockView];
  if (!v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v14 footerView];

  if (!v16)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1BE04BC34();
  v17 = sub_1BE04BA54();
  (*(v9 + 8))(v13, v8);
  if (v17)
  {
    v18 = [v16 setUpLaterButton];
    if (v18)
    {
      v19 = v18;
      [v18 addTarget:v1 action:sel__skipCardButtonPressed forControlEvents:0x2000];
    }
  }

  if (*(v1 + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showTapToProvisionButton) != 1)
  {
    goto LABEL_10;
  }

  v20 = [v16 secondaryActionButton];
  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = v20;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B80D8], v3);
  v22 = PKPassKitBundle();
  if (v22)
  {
    v23 = v22;
    sub_1BE04B6F4();

    (*(v4 + 8))(v7, v3);
    v24 = sub_1BE052404();

    [v21 setTitle:v24 forState:0];

    [v21 addTarget:v1 action:sel__tapToProvisionButtonPressed forControlEvents:0x2000];
    v25 = *MEMORY[0x1E69B9BE0];
    v26 = v21;
    PKAccessibilityIDSet(v26, v25);

LABEL_10:
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1BD65A3EC()
{
  result = swift_unknownObjectUnownedLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_1BD826844(v1, 2u, Strong);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BD65A578()
{
  if (PKShowFakePaymentSetupFields())
  {
    result = [objc_opt_self() fakePaymentSetupProvisioningFields];
    if (result)
    {
      v2 = result;
      v3 = sub_1BE052744();

      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = MEMORY[0x1E69E7CC0];
        v6 = v3 + 32;
        do
        {
          sub_1BD038CD0(v6, v18);
          sub_1BD038CD0(v18, v17);
          sub_1BD0E5E8C(0, &qword_1EBD4E6C0);
          if (swift_dynamicCast())
          {
            v7 = [v16 identifier];

            v8 = sub_1BE052434();
            v10 = v9;

            __swift_destroy_boxed_opaque_existential_0(v18);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_1BD03B038(0, *(v5 + 16) + 1, 1, v5);
            }

            v12 = *(v5 + 16);
            v11 = *(v5 + 24);
            if (v12 >= v11 >> 1)
            {
              v5 = sub_1BD03B038((v11 > 1), v12 + 1, 1, v5);
            }

            *(v5 + 16) = v12 + 1;
            v13 = v5 + 16 * v12;
            *(v13 + 32) = v8;
            *(v13 + 40) = v10;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v18);
          }

          v6 += 32;
          --v4;
        }

        while (v4);

        return v5;
      }

      return MEMORY[0x1E69E7CC0];
    }

    __break(1u);
  }

  else
  {
    result = [v0 fieldsModel];
    if (result)
    {
      v14 = result;
      v15 = [result visibleSetupFieldIdentifiers];

      if (v15)
      {
        v5 = sub_1BE052744();

        return v5;
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

void sub_1BD65A824()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_reporter];
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 fieldsModel];
    if (v4)
    {
      v5 = v4;
      sub_1BD8145A8(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BD65A940()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - v11;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v26 - v16;
  v18 = *MEMORY[0x1E69B80D8];
  v19 = *(v2 + 104);
  v19(&v26 - v16, v18, v1, v15);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = result;
  v22 = sub_1BE04B6F4();
  v28 = v23;
  v29 = v22;

  v24 = *(v2 + 8);
  v24(v17, v1);
  if ([v0 isComplete])
  {
    (v19)(v12, v18, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v25 = result;
LABEL_10:
      sub_1BE04B6F4();
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if ([v0 isEmpty])
  {
    (v19)(v8, v18, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v25 = result;
      sub_1BE04B6F4();
      v12 = v8;
LABEL_11:

      v24(v12, v1);
      return v29;
    }

    goto LABEL_14;
  }

  v12 = v27;
  (v19)(v27, v18, v1);
  result = PKPassKitBundle();
  if (result)
  {
    v25 = result;
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1BD65ADE8(void *a1)
{
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_fieldCellEditableTextFieldValueDidChange_, a1);
  if (a1)
  {
    v3 = [a1 paymentSetupField];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 identifier];
      v6 = sub_1BE052434();
      v8 = v7;

      v9 = sub_1BE052434();
      if (v8)
      {
        if (v6 == v9 && v8 == v10)
        {
        }

        else
        {
          v12 = sub_1BE053B84();

          if ((v12 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v13 = *&v1[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator];
        if (v13)
        {
          v14 = v13;
          sub_1BD81412C(0);
        }

        goto LABEL_15;
      }
    }

    else
    {
      sub_1BE052434();
    }

LABEL_15:

    return;
  }

  __break(1u);
}

void sub_1BD65B028()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BBD4();
  v8 = [v7 webService];

  sub_1BE04BC34();
  v9 = sub_1BE04B9A4();
  (*(v3 + 8))(v6, v2);
  v10 = [objc_allocWithZone(PKPaymentCameraCaptureViewController) initWithWebService:v8 context:v9];

  if (v10)
  {
    [v10 setFlowItemDelegate_];
    [v10 configureForModalPresentation];
    v11 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    v12 = [v1 navigationController];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 overrideUserInterfaceStyle];
    }

    else
    {
      v14 = [v1 overrideUserInterfaceStyle];
    }

    [v11 setOverrideUserInterfaceStyle_];
    [v1 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD65B2D4(unsigned __int8 *a1, char a2)
{
  v4 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v104 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v104 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v104 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v104 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v104 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v104 - v30;
  v37.n128_f64[0] = MEMORY[0x1EEE9AC00](v32, v33);
  v38 = &v104 - v35;
  v39 = *a1;
  if (v39 > 9)
  {
    switch(v39)
    {
      case 0xAu:
        if ((a2 & 1) == 0)
        {
          goto LABEL_27;
        }

        v57 = *(v36 + 104);
        v58 = v34;
        v59 = v36;
        v57(v27, *MEMORY[0x1E69B80D8], v34, v37.n128_f64[0]);
        v60 = PKPassKitBundle();
        if (!v60)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v61 = v60;
        v105 = sub_1BE04B6F4();
        v63 = v62;

        v64 = *(v59 + 8);
        v64(v27, v58);
        (v57)(v23, *MEMORY[0x1E69B80D0], v58);
        v65 = PKPassKitCoreBundle();
        if (!v65)
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v66 = v65;
        sub_1BE04B6F4();
        v68 = v67;

        v64(v23, v58);
        if (v63)
        {
          goto LABEL_36;
        }

        break;
      case 0xBu:
        if ((a2 & 1) == 0)
        {
          goto LABEL_27;
        }

        v69 = *(v36 + 104);
        v70 = v34;
        v71 = v36;
        v69(v19, *MEMORY[0x1E69B80D8], v34, v37.n128_f64[0]);
        v72 = PKPassKitBundle();
        if (!v72)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v73 = v72;
        v105 = sub_1BE04B6F4();
        v75 = v74;

        v76 = *(v71 + 8);
        v106 = v71 + 8;
        v76(v19, v70);
        v77 = sub_1BE052404();
        v78 = sub_1BE04BAF4();
        v79 = PKDeviceSpecificLocalizedStringKeyForKey(v77, v78 & 1);

        if (v79)
        {
          sub_1BE052434();
        }

        (v69)(v15, *MEMORY[0x1E69B80D0], v70);
        v98 = PKPassKitCoreBundle();
        if (!v98)
        {
          goto LABEL_50;
        }

        v99 = v98;
        sub_1BE04B6F4();
        v68 = v100;

        v76(v15, v70);
        if (v75)
        {
          goto LABEL_36;
        }

        break;
      case 0xCu:
        v41 = *MEMORY[0x1E69B80D8];
        v42 = *(v36 + 104);
        v43 = v34;
        v44 = v36;
        v42(v11, v41, v34, v37.n128_f64[0]);
        v45 = PKPassKitBundle();
        if (v45)
        {
          v46 = v45;
          v104 = sub_1BE04B6F4();
          v105 = v47;

          v48 = *(v44 + 8);
          v106 = v44 + 8;
          v48(v11, v43);
          v49 = sub_1BE052404();
          v50 = v107;
          v51 = sub_1BE04BAF4();
          v52 = PKDeviceSpecificLocalizedStringKeyForKey(v49, v51 & 1);

          if (v52)
          {
            sub_1BE052434();

            (v42)(v7, v41, v43);
            v53 = PKPassKitBundle();
            if (v53)
            {
              v54 = v53;
              sub_1BE04B6F4();

              v48(v7, v43);
              [v50 showCheckmarkAnimated_];
              v55 = sub_1BE052404();

              v56 = sub_1BE052404();

              [v50 hideActivitySpinnerWithTitle:v55 subtitle:v56 animated:0];

              [v50 endUserInteraction];
              return;
            }

            goto LABEL_44;
          }

LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      default:
LABEL_21:
        if ((a2 & 1) == 0)
        {
          goto LABEL_27;
        }

        v80 = *(v36 + 104);
        v81 = v34;
        v82 = v36;
        v80(&v104 - v35, *MEMORY[0x1E69B80D8], v34, v37);
        v83 = PKPassKitBundle();
        if (!v83)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v84 = v83;
        v105 = sub_1BE04B6F4();
        v86 = v85;

        v87 = *(v82 + 8);
        v87(v38, v81);
        (v80)(v31, *MEMORY[0x1E69B80D0], v81);
        v88 = PKPassKitCoreBundle();
        if (!v88)
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          return;
        }

        v89 = v88;
        sub_1BE04B6F4();
        v68 = v90;

        v87(v31, v81);
        if (!v86)
        {
          break;
        }

LABEL_36:
        v40 = sub_1BE052404();

        if (v68)
        {
          goto LABEL_37;
        }

        goto LABEL_26;
    }

    v40 = 0;
    if (v68)
    {
      goto LABEL_37;
    }

LABEL_26:
    v91 = 0;
    goto LABEL_38;
  }

  if (v39 - 4 >= 5)
  {
    goto LABEL_21;
  }

  if (a2)
  {
    v40 = 0;
LABEL_37:
    v91 = sub_1BE052404();

LABEL_38:
    v101 = v107;
    [v107 showActivitySpinnerWithTitle:v40 subtitle:v91];

    v102 = [v101 dockView];
    if (v102)
    {
      v103 = v102;
      [v102 setButtonsEnabled_];

      return;
    }

    goto LABEL_41;
  }

LABEL_27:
  v92 = v107;
  sub_1BD65A940();
  v94 = v93;

  if (v94)
  {
    v95 = sub_1BE052404();
  }

  else
  {
    v95 = 0;
  }

  [v92 hideActivitySpinnerWithTitle:0 subtitle:v95 animated:1];

  v96 = [v92 dockView];
  if (!v96)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v107 = v96;
  [v96 setButtonsEnabled_];
  v97 = v107;
}

void sub_1BD65BC00(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04BAC4();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v56 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v49 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v49 - v23;
  v25 = [a1 hasLocalizedTitleAndMessage];
  v26 = MEMORY[0x1E69B80D8];
  if ((v25 & 1) == 0)
  {
    v51 = v12;
    v52 = v2;
    v55 = a1;
    v27 = *(v9 + 104);
    v54 = *MEMORY[0x1E69B80D8];
    v53 = v27;
    v27(v24);
    v28 = PKPassKitBundle();
    if (v28)
    {
      v29 = v28;
      sub_1BE04B6F4();

      v50 = *(v9 + 8);
      v50(v24, v8);
      v30 = sub_1BE052404();

      v31 = v55;
      [v55 setLocalizedTitle_];

      v53(v19, v54, v8);
      v32 = PKPassKitBundle();
      if (v32)
      {
        v33 = v32;
        sub_1BE04B6F4();

        v50(v19, v8);
        v34 = sub_1BE052404();

        [v31 setLocalizedMessage_];

        a1 = v31;
        v12 = v51;
        v2 = v52;
        v26 = MEMORY[0x1E69B80D8];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_5:
  sub_1BE04BC34();
  v35 = sub_1BE04BA54();
  (*(v57 + 8))(v7, v58);
  v36 = *v26;
  v37 = *(v9 + 104);
  if (v35)
  {
    v38 = v56;
    v37(v56, v36, v8);
    v39 = PKPassKitBundle();
    if (v39)
    {
      v40 = v39;
      v42 = sub_1BE04B6F4();
LABEL_10:
      v44 = v41;

      (*(v9 + 8))(v38, v8);
      sub_1BD0E5E8C(0, &qword_1EBD3D280);
      v45 = swift_allocObject();
      *(v45 + 16) = v2;
      v46 = swift_allocObject();
      *(v46 + 16) = v2;
      v47 = v2;
      v48 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v42, v44, PKEdgeInsetsMake, 0, sub_1BD65C4DC, v45, sub_1BD65C4E4, v46);

      [v47 presentViewController:v48 animated:1 completion:0];

      return;
    }

    goto LABEL_13;
  }

  v37(v12, v36, v8);
  v43 = PKPassKitBundle();
  if (v43)
  {
    v40 = v43;
    v42 = sub_1BE04B6F4();
    v38 = v12;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_1BD65C16C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_1BD81521C();
  }
}

void sub_1BD65C1C8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator];
  if (v1)
  {
    v3 = v1;
    v4 = [a1 fieldsModel];
    if (v4)
    {
      v5 = v4;
      sub_1BD8145A8(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BD65C260(id result, uint64_t a2)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = [v2 fieldsModel];
  if (!result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = sub_1BD9F46CC(a2, result);

  v7 = *&v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator];
  if (v7)
  {
    *&v7[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = v6;
    v8 = v7;
    sub_1BE048C84();
  }

  [v2 _setPrimaryButtonEnabled_];
  result = [v2 noteFieldIdentifiersChanged];
  if (!v4)
  {
    goto LABEL_11;
  }

  return [v4 dismissViewControllerAnimated:1 completion:0];
}

id sub_1BD65C404(int a1, int a2, id a3)
{
  if (a3)
  {
    return [a3 dismissViewControllerAnimated:1 completion:0];
  }

  __break(1u);
  return result;
}

id sub_1BD65C504(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v4 = sub_1BE051F54();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04BC84();
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  [objc_opt_self() recommendedCardImageSize];
  v15 = v14;
  v17 = v16;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v19 = result;
    v20 = swift_allocObject();
    *(v20 + 16) = v3;
    *(v20 + 24) = v13;
    v42 = sub_1BD65DD20;
    v43 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1BD20815C;
    v41 = &block_descriptor_149;
    v21 = _Block_copy(&aBlock);
    v22 = v12;
    v23 = v3;
    v24 = v13;

    [v19 snapshotWithPass:v22 size:v21 completion:{v15, v17}];
    _Block_release(v21);

    sub_1BD14BE3C();
    v25 = sub_1BE052D54();
    v26 = swift_allocObject();
    v27 = v32;
    *(v26 + 16) = v31;
    *(v26 + 24) = v27;
    v42 = sub_1BD214190;
    v43 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1BD126964;
    v41 = &block_descriptor_7_1;
    v28 = _Block_copy(&aBlock);
    sub_1BE048964();
    sub_1BE051F74();
    v37 = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v29 = v36;
    sub_1BE053664();
    sub_1BE052CE4();
    _Block_release(v28);

    (*(v35 + 8))(v7, v29);
    (*(v33 + 8))(v11, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD65C8D0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  sub_1BE048C84();
  sub_1BE053504();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_1BE048C84();
  sub_1BE053504();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_1BD65DD34(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_1BE0525D4();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_1BD65DD34(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_1BD65DD34(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_1BE0525D4();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_1BE0525A4();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x1BFB3F590](result);
LABEL_23:
        sub_1BE052654();
        sub_1BD65DE64();
        sub_1BE052564();

        sub_1BE052564();
        sub_1BD65CBE4(a2, a5, a6);
        sub_1BE052564();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_1BD65CBE4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1BE052654();
  }

  __break(1u);
  return result;
}

void sub_1BD65CC30()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04A264();
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v88 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v91 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1BE04B8D4();
  v9 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v10);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v87 - v15;
  v94 = sub_1BE04B944();
  v17 = *(v94 - 8);
  v19 = MEMORY[0x1EEE9AC00](v94, v18);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103.receiver = v1;
  v103.super_class = ObjectType;
  objc_msgSendSuper2(&v103, sel_loadView, v19);
  v22 = sub_1BE04BC84();
  v96 = sub_1BE04BD34();
  v97 = v23;
  v99 = [objc_opt_self() sharedInstance];
  v24 = [v1 explanationView];
  if (!v24)
  {
    __break(1u);
    goto LABEL_42;
  }

  v25 = v24;
  v26 = [objc_opt_self() systemBackgroundColor];
  v100 = v25;
  [v25 setTopBackgroundColor_];

  [v1 setShowDoneButton_];
  [v1 setShowCancelButton_];
  [v1 setPrivacyLinkController_];
  v98 = v22;
  v27 = [v22 devicePrimaryPaymentApplication];
  if (!v27)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v28 = v27;
  v29 = [v27 supportsUWB];

  sub_1BE04BB94();
  sub_1BE04B924();
  (*(v17 + 8))(v21, v94);
  v30 = v95;
  (*(v9 + 104))(v12, *MEMORY[0x1E69B7F80], v95);
  v31 = sub_1BE04B8C4();
  v32 = *(v9 + 8);
  v32(v12, v30);
  v32(v16, v30);
  v33 = sub_1BE04BCD4();
  v34 = v97;
  if (v33)
  {
    v36 = v99;
    v35 = v100;
    v37 = v96;
    if (v29)
    {
      if (v31)
      {
        v38 = 0xD000000000000024;
      }

      else
      {
        v38 = 0xD00000000000002BLL;
      }

      if (v31)
      {
        v39 = "ADDED_FACEID_UWB_PHONE_BODY";
      }

      else
      {
        v39 = "ADDED_WATCH_NFC_BODY";
      }

      goto LABEL_30;
    }

    if (v31)
    {
      v39 = "ADDED_FACEID_PHONE_ONLY_BODY";
      v38 = 0xD000000000000024;
      goto LABEL_30;
    }

    IsAvailable = PKPearlIsAvailable();
    v40 = 0xD00000000000002CLL;
    v41 = 0xD00000000000002DLL;
    v42 = "ADDED_TOUCHID_PHONE_ONLY_BODY";
    v43 = "CAR_KEY_ADDED_WATCH_UWB_BODY";
    v44 = IsAvailable == 0;
    goto LABEL_18;
  }

  v36 = v99;
  v35 = v100;
  v37 = v96;
  if (v29)
  {
    v40 = 0xD00000000000001CLL;
    v41 = 0xD000000000000030;
    v42 = "_PHONE_ONLY_BODY";
    v43 = "CAR_KEY_ADDED_WATCH_NFC_BODY";
    v44 = (v31 & 1) == 0;
LABEL_18:
    if (v44)
    {
      v38 = v41;
    }

    else
    {
      v38 = v40;
    }

    if (v44)
    {
      v39 = v43;
    }

    else
    {
      v39 = v42;
    }

    goto LABEL_30;
  }

  if (v31)
  {
    v39 = "CEID_PHONE_ONLY_BODY";
    v38 = 0xD00000000000001CLL;
  }

  else
  {
    v46 = PKPearlIsAvailable();
    if (v46)
    {
      v38 = 0xD000000000000024;
    }

    else
    {
      v38 = 0xD000000000000025;
    }

    if (v46)
    {
      v39 = "CAR_KEY_ADDED_NFC_PERF_WARNING";
    }

    else
    {
      v39 = "onViewController";
    }
  }

LABEL_30:
  sub_1BD65D570(0xD000000000000013, 0x80000001BE132F10, v36, v37, v34);
  v47 = sub_1BE052404();

  [v35 setTitleText_];

  v48 = [v35 dockView];
  if (!v48)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v49 = v48;
  v50 = [v48 primaryButton];
  if (!v50)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v51 = v50;
  sub_1BD65D570(0x45554E49544E4F43, 0xE800000000000000, v36, v37, v34);
  v52 = sub_1BE052404();

  [v51 setTitle:v52 forStates:0];

  v53 = [v49 footerView];
  if (!v53)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v54 = v53;
  [v53 setSetUpLaterButton_];

  v55 = sub_1BD65D570(v38, v39 | 0x8000000000000000, v36, v37, v34);
  v57 = v56;

  v58 = v98;
  v59 = [v98 devicePrimaryPaymentApplication];
  if (!v59)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v60 = v59;

  v61 = [v60 blockingSupportedUWBDueToHardware];

  if (!v61)
  {
LABEL_40:
    v86 = sub_1BE052404();

    [v35 setBodyText_];

    return;
  }

  v63 = v91;
  v62 = v92;
  v64 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x1E69B8038], v93);
  v65 = PKPassKitBundle();
  if (v65)
  {
    v66 = v65;
    v97 = sub_1BE04B6F4();
    v68 = v67;

    (*(v62 + 8))(v63, v64);
    v101 = v55;
    v102 = v57;
    sub_1BE048C84();
    v69 = v88;
    sub_1BE04A254();
    sub_1BD0DDEBC();
    v70 = sub_1BE053544();
    v72 = v71;
    LOBYTE(v66) = v73;
    (*(v89 + 8))(v69, v90);

    if (v66)
    {

      v101 = 32;
      v102 = 0xE100000000000000;
      MEMORY[0x1BFB3F610](v97, v68);
    }

    else
    {
      v74 = sub_1BE052654();
      v76 = v75;
      v78 = v77;
      v96 = v70;
      v80 = v79;
      v101 = 32;
      v102 = 0xE100000000000000;
      MEMORY[0x1BFB3F610](v97, v68);

      v81 = v74;
      v82 = v76;
      v58 = v98;
      v36 = v99;
      v83 = MEMORY[0x1BFB3F570](v81, v82, v78, v80);
      v85 = v84;

      MEMORY[0x1BFB3F610](v83, v85);

      sub_1BD65C8D0(v96, v72, v101, v102, v55, v57);
    }

    v35 = v100;
    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
}

id sub_1BD65D570(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
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

uint64_t sub_1BD65D800(void *a1, void *a2, void *a3)
{
  v6 = sub_1BE051F54();
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE051FA4();
  v10 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  aBlock[4] = sub_1BD65DD28;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_13_5;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = a2;
  v19 = a3;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v22 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v21);
}

void sub_1BD65DA9C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [objc_allocWithZone(PKHeroCardExplanationHeaderView) initWithImage_];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v5;
  [v5 setHideBackground_];
  [v8 setPadding_];
  v6 = [a2 explanationView];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 setHeroView_];

  dispatch_group_leave(a3);
}

uint64_t sub_1BD65DD34(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BE0525F4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1BFB3F650](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1BD65DDB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningCarEducationViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = Strong + OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(Strong, &off_1F3B9B0B0, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD65DE64()
{
  result = qword_1EBD4E6F0;
  if (!qword_1EBD4E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E6F0);
  }

  return result;
}

unint64_t sub_1BD65DECC()
{
  result = qword_1EBD4E700;
  if (!qword_1EBD4E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E700);
  }

  return result;
}

uint64_t sub_1BD65DF20(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD041C28;

  return sub_1BD65DFD4();
}

uint64_t sub_1BD65DFF0()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[3] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 passesOfType_];
    sub_1BD102A4C();
    v4 = sub_1BE052744();

    v30 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      goto LABEL_48;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v6 = MEMORY[0x1E69E7CC0];
    v29 = v0;
    if (v5)
    {
      v27 = v2;
      v7 = 0;
      v0 = (v4 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFB40900](v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v8;
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v5 = sub_1BE053704();
          goto LABEL_4;
        }

        if ([v8 passType])
        {
          v10 = [v9 secureElementPass];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 isAccessPass];

            if (v12 & 1) != 0 && ([v9 supportsFeatureForCurrentDevice_])
            {
LABEL_18:
              sub_1BE0538C4();
              sub_1BE0538F4();
              sub_1BE053904();
              sub_1BE0538D4();
              goto LABEL_7;
            }
          }
        }

        else if (PKBarcodePassSharingEnabled())
        {
          goto LABEL_18;
        }

LABEL_7:
        ++v7;
        if (v2 == v5)
        {
          v0 = v29;
          v13 = v30;
          v2 = v27;
          v6 = MEMORY[0x1E69E7CC0];
          goto LABEL_25;
        }
      }
    }

    v13 = MEMORY[0x1E69E7CC0];
LABEL_25:

    v0[2] = v13;
    v16 = [v2 passesOfStyles_];
    if (!v16)
    {
      goto LABEL_57;
    }

    v17 = v16;
    v2 = sub_1BE052744();

    v30 = v6;
    if (v2 >> 62)
    {
      v18 = sub_1BE053704();
      if (v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_28:
        v28 = v13;
        v4 = 0;
        v0 = (v2 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1BFB40900](v4, v2);
          }

          else
          {
            if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v19 = *(v2 + 8 * v4 + 32);
          }

          v20 = v19;
          v21 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_46;
          }

          if ([v19 passType])
          {
            v22 = [v20 secureElementPass];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 isAccessPass];

              if (v24 & 1) != 0 && ([v20 supportsFeatureForCurrentDevice_])
              {
LABEL_41:
                sub_1BE0538C4();
                sub_1BE0538F4();
                sub_1BE053904();
                sub_1BE0538D4();
                goto LABEL_30;
              }
            }
          }

          else if (PKBarcodePassSharingEnabled())
          {
            goto LABEL_41;
          }

LABEL_30:
          ++v4;
          if (v21 == v18)
          {
            v0 = v29;
            v25 = v30;
            v13 = v28;
            goto LABEL_51;
          }
        }
      }
    }

    v25 = MEMORY[0x1E69E7CC0];
LABEL_51:

    if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
    {
      if (sub_1BE053704() > 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v25 + 16) > 0)
    {
LABEL_54:
      sub_1BDA7AB50(v25);
      v13 = v0[2];
LABEL_57:
      v0[4] = v13;
      v26 = swift_task_alloc();
      v0[5] = v26;
      *v26 = v0;
      v26[1] = sub_1BD65E4DC;

      return sub_1BD0391EC(v13, 1);
    }

    goto LABEL_57;
  }

  sub_1BE0484F4();
  sub_1BD1351C0();
  swift_allocError();
  sub_1BE0484E4();
  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_1BD65E4DC(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD65E5FC, 0, 0);
}

uint64_t sub_1BD65E5FC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

id sub_1BD65E674(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  [v4 setDirectionalLayoutMargins_];
  [v4 setSeparatorInset_];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  sub_1BE048964();
  v11 = a1;
  sub_1BE048964();
  sub_1BE052C94();

  return [v4 setNeedsUpdateConfiguration];
}

void sub_1BD65E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E730);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v20 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong, v17);
    v20[-4] = a4;
    LOBYTE(v20[-3]) = a5 & 1;
    v20[-2] = a6;
    v20[-1] = a7;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E738);
    sub_1BD6644C4();
    sub_1BE04FCE4();
    sub_1BE0501C4();
    v20[3] = v11;
    v20[4] = sub_1BD0DE4F4(&qword_1EBD4E750, &qword_1EBD4E730);
    __swift_allocate_boxed_opaque_existential_1(v20);
    sub_1BE04FCD4();
    (*(v12 + 8))(v15, v11);
    MEMORY[0x1BFB3FD10](v20);
  }
}

uint64_t sub_1BD65E99C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BE051CE4();
  sub_1BE04EE54();
  *&v12[71] = v17;
  *&v12[55] = v16;
  *&v12[23] = v14;
  *&v12[7] = v13;
  *&v12[87] = v18;
  *&v12[103] = v19;
  *&v12[39] = v15;
  *(a5 + 97) = *&v12[64];
  *(a5 + 113) = *&v12[80];
  *(a5 + 129) = *&v12[96];
  *(a5 + 33) = *v12;
  *(a5 + 49) = *&v12[16];
  *(a5 + 65) = *&v12[32];
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 1;
  *(a5 + 144) = *(&v19 + 1);
  *(a5 + 81) = *&v12[48];
  v10 = a1;

  return sub_1BE048964();
}

id PKPaymentFieldTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PKPaymentFieldTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1BE052404();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PKPaymentFieldTableViewCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id PKPaymentFieldTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKPaymentFieldTableViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PKPaymentFieldTableViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1BD65EF9C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v140 = a2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E760);
  MEMORY[0x1EEE9AC00](v119, v3);
  v122 = &v111 - v4;
  v121 = type metadata accessor for PaymentSetupFieldEntryDateView();
  MEMORY[0x1EEE9AC00](v121, v5);
  v117 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v111 - v9;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E768);
  MEMORY[0x1EEE9AC00](v120, v11);
  v114 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v115 = &v111 - v15;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E770);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v16);
  v18 = &v111 - v17;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E778);
  MEMORY[0x1EEE9AC00](v130, v19);
  v128 = &v111 - v20;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E780);
  MEMORY[0x1EEE9AC00](v136, v21);
  v137 = &v111 - v22;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E788);
  MEMORY[0x1EEE9AC00](v129, v23);
  v25 = &v111 - v24;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E790);
  MEMORY[0x1EEE9AC00](v135, v26);
  v131 = &v111 - v27;
  v28 = sub_1BE04BD74();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v116 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v111 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E798);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v139 = &v111 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v138 = &v111 - v41;
  v42 = *a1;
  v43 = [v42 localizedDisplayName];
  v123 = v18;
  v118 = v10;
  v125 = v28;
  v124 = v29;
  if (v43)
  {
    v44 = v43;
    v45 = sub_1BE052434();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xE000000000000000;
  }

  v146 = v45;
  v147 = v47;
  sub_1BD0DDEBC();
  v48 = sub_1BE0506C4();
  v50 = v49;
  v52 = v51;
  sub_1BE050324();
  v133 = sub_1BE0505F4();
  v132 = v53;
  v55 = v54;
  v134 = v56;

  sub_1BD0DDF10(v48, v50, v52 & 1);

  sub_1BE051CE4();
  sub_1BE04E5E4();
  v57 = v55 & 1;
  v157 = v55 & 1;
  v58 = [v42 fieldType];

  if (v58 != 3)
  {
    if (v58 == 2)
    {
      objc_opt_self();
      v73 = swift_dynamicCastObjCClass();
      if (v73)
      {
        v74 = v73;
        v75 = [v42 isReadonly];
        v76 = *(a1 + 16);
        v77 = *(a1 + 24);
        v78 = *(a1 + 32);
        v79 = v42;
        sub_1BE048964();
        if (v75)
        {
          v117 = v79;
          sub_1BD660180(v74, v76, v77, v78, v118);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
          v112 = swift_allocObject();
          *(v112 + 16) = xmmword_1BE0B7020;
          v80 = v124;
          v81 = v116;
          v82 = v125;
          (*(v124 + 104))(v116, *MEMORY[0x1E69B80D0], v125);
          result = PKPassKitBundle();
          v83 = v123;
          if (!result)
          {
            goto LABEL_26;
          }

          v84 = result;
          v111 = sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
          sub_1BE04B6F4();

          (*(v80 + 8))(v81, v82);
          *(swift_allocObject() + 16) = v74;
          v85 = v117;
          v86 = sub_1BE0530B4();
          v87 = v112;
          *(v112 + 32) = v86;
          v88 = v114;
          sub_1BD664B7C(v118, v114);
          *(v88 + *(v120 + 36)) = v87;
          v89 = v115;
          sub_1BD0DE204(v88, v115, &qword_1EBD4E768);
          sub_1BD0DE19C(v89, v122, &qword_1EBD4E768);
          swift_storeEnumTagMultiPayload();
          sub_1BD6649F8();
          sub_1BD6651E0(&qword_1EBD4E800, type metadata accessor for PaymentSetupFieldEntryDateView);
          sub_1BE04F9A4();

          sub_1BD0DE53C(v89, &qword_1EBD4E768);
        }

        else
        {
          v99 = v117;
          sub_1BD660180(v74, v76, v77, v78, v117);
          sub_1BD664AB4(v99, v122);
          swift_storeEnumTagMultiPayload();
          sub_1BD6649F8();
          sub_1BD6651E0(&qword_1EBD4E800, type metadata accessor for PaymentSetupFieldEntryDateView);
          v83 = v123;
          sub_1BE04F9A4();

          sub_1BD664B18(v99);
        }

        v98 = v128;
        sub_1BD0DE204(v83, v128, &qword_1EBD4E770);
        v97 = 0;
      }

      else
      {

        v97 = 1;
        v98 = v128;
      }

      (*(v126 + 56))(v98, v97, 1, v127);
      sub_1BD0DE19C(v98, v25, &qword_1EBD4E778);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E7B0);
      sub_1BD6648C0(&qword_1EBD4E7A8, &qword_1EBD4E7B0, &unk_1BE0EBF90, sub_1BD664700);
      sub_1BD6648C0(&qword_1EBD4E7E8, &qword_1EBD4E778, &unk_1BE0EBF68, sub_1BD66493C);
      v100 = v131;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v100, v137, &qword_1EBD4E790);
      swift_storeEnumTagMultiPayload();
      sub_1BD66461C();
      v90 = v138;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v100, &qword_1EBD4E790);
      sub_1BD0DE53C(v98, &qword_1EBD4E778);
      goto LABEL_24;
    }

    if (v58 != 1)
    {

      swift_storeEnumTagMultiPayload();
      sub_1BD66461C();
      v90 = v138;
      sub_1BE04F9A4();
LABEL_24:
      v101 = v139;
      sub_1BD0DE19C(v90, v139, &qword_1EBD4E798);
      v102 = v133;
      *&v141 = v133;
      v103 = v132;
      *(&v141 + 1) = v132;
      LOBYTE(v142) = v57;
      *(&v142 + 1) = *v156;
      DWORD1(v142) = *&v156[3];
      v104 = v57;
      v105 = v134;
      *(&v142 + 1) = v134;
      v106 = v154;
      v144 = v154;
      v143 = v153;
      v107 = v155;
      v145 = v155;
      v108 = v140;
      v140[2] = v153;
      v108[3] = v106;
      v108[4] = v107;
      v109 = v142;
      *v108 = v141;
      v108[1] = v109;
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E808);
      sub_1BD0DE19C(v101, v108 + *(v110 + 48), &qword_1EBD4E798);
      sub_1BD0DE19C(&v141, &v146, &unk_1EBD4E810);
      sub_1BD0DE53C(v90, &qword_1EBD4E798);
      sub_1BD0DE53C(v101, &qword_1EBD4E798);
      v146 = v102;
      v147 = v103;
      LOBYTE(v148) = v104;
      *(&v148 + 1) = *v156;
      HIDWORD(v148) = *&v156[3];
      v149 = v105;
      v150 = v153;
      v151 = v154;
      v152 = v155;
      return sub_1BD0DE53C(&v146, &unk_1EBD4E810);
    }
  }

  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  v113 = v55 & 1;
  if (!v59)
  {

    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = -1;
LABEL_19:
    *v25 = v91;
    *(v25 + 1) = v92;
    *(v25 + 2) = v93;
    *(v25 + 3) = v94;
    *(v25 + 4) = v59;
    v25[40] = v95;
    swift_storeEnumTagMultiPayload();
    sub_1BD664BE0(v91, v92, v93, v94, v59, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E7B0);
    sub_1BD6648C0(&qword_1EBD4E7A8, &qword_1EBD4E7B0, &unk_1BE0EBF90, sub_1BD664700);
    sub_1BD6648C0(&qword_1EBD4E7E8, &qword_1EBD4E778, &unk_1BE0EBF68, sub_1BD66493C);
    v96 = v131;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v96, v137, &qword_1EBD4E790);
    swift_storeEnumTagMultiPayload();
    sub_1BD66461C();
    v90 = v138;
    sub_1BE04F9A4();
    sub_1BD664C64(v91, v92, v93, v94, v59, v95);
    sub_1BD664C64(v91, v92, v93, v94, v59, v95);
    sub_1BD0DE53C(v96, &qword_1EBD4E790);
    v57 = v113;
    goto LABEL_24;
  }

  v60 = [v42 isReadonly];
  v61 = *(a1 + 8);
  v62 = *(a1 + 16);
  v63 = *(a1 + 24);
  if (!v60)
  {
    *&v141 = v59;
    *(&v141 + 1) = v61;
    *&v142 = v62;
    *(&v142 + 1) = v63;
    *&v143 = 0;
    BYTE8(v143) = 1;
    sub_1BE048964();
    goto LABEL_18;
  }

  v127 = *(a1 + 16);
  v128 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1BE0B7020;
  v65 = v124;
  v66 = v125;
  (*(v124 + 104))(v35, *MEMORY[0x1E69B80D0], v125);
  sub_1BE048964();
  result = PKPassKitBundle();
  if (result)
  {
    v68 = result;
    v126 = sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
    v123 = sub_1BE04B6F4();
    v122 = v69;

    (*(v65 + 8))(v35, v66);
    v70 = swift_allocObject();
    v71 = *(a1 + 16);
    *(v70 + 16) = *a1;
    *(v70 + 32) = v71;
    *(v70 + 48) = *(a1 + 32);
    v72 = v42;
    sub_1BE048964();
    *(v64 + 32) = sub_1BE0530B4();
    *&v141 = v59;
    *(&v141 + 1) = v128;
    *&v142 = v127;
    *(&v142 + 1) = v63;
    *&v143 = v64;
    BYTE8(v143) = 0;
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E7D0);
    sub_1BD66478C();
    sub_1BD664818();
    sub_1BE04F9A4();
    v91 = v146;
    v92 = v147;
    v93 = v148;
    v94 = v149;
    v59 = v150;
    v95 = BYTE8(v150);
    sub_1BD664BF8(v146, v147, v148, v149, v150, SBYTE8(v150));
    goto LABEL_19;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD660180@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, void (*a3)(char *, void, uint64_t)@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v108) = a4;
  v104 = a2;
  v105 = a3;
  v103 = a1;
  v109 = sub_1BE04AF64();
  v102 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v6);
  v95 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v96 = v90 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v106 = v90 - v13;
  v101 = sub_1BE04B2D4();
  v110 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v14);
  v16 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04B2F4();
  v98 = *(v17 - 8);
  v99 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v107 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = v90 - v22;
  v24 = sub_1BE04B104();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PaymentSetupFieldEntryDateView();
  v30 = a5 + v29[10];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830) + 48);
  (*(v25 + 104))(v28, *MEMORY[0x1E6969868], v24);
  sub_1BE04B114();
  (*(v25 + 8))(v28, v24);
  sub_1BE04AFF4();
  v32 = sub_1BE04B0F4();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v23, v30 + v31, v32);
  (*(v33 + 56))(v23, 0, 1, v32);
  v92 = v30;
  sub_1BE04B284();
  v34 = a5 + v29[11];
  v111 = 0;
  v112 = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
  sub_1BE051694();
  v36 = v114;
  v37 = v115;
  *v34 = v113;
  *(v34 + 8) = v36;
  v91 = v34;
  v90[0] = v37;
  *(v34 + 16) = v37;
  v38 = a5 + v29[12];
  v111 = 0;
  v112 = 1;
  v93 = v35;
  sub_1BE051694();
  v39 = v114;
  v40 = v115;
  *v38 = v113;
  *(v38 + 8) = v39;
  v94 = v38;
  v90[1] = v40;
  *(v38 + 16) = v40;
  v42 = v103;
  v41 = v104;
  *a5 = v103;
  *(a5 + 8) = v41;
  *(a5 + 16) = v105;
  *(a5 + 24) = v108;
  v43 = objc_allocWithZone(MEMORY[0x1E696AB78]);
  v44 = v42;
  v45 = [v43 init];
  v46 = [v44 calendar];
  sub_1BE04B1F4();

  v47 = sub_1BE04B1D4();
  v97 = v45;
  [v45 setCalendar_];

  v48 = *MEMORY[0x1E6969A68];
  v49 = v110;
  v50 = *(v110 + 104);
  v108 = v110 + 104;
  LODWORD(v104) = v48;
  v51 = v101;
  v105 = v50;
  v50(v16);
  v52 = v106;
  sub_1BE04AEF4();
  v53 = sub_1BE04B2E4();
  v54 = v102;
  v55 = v102 + 8;
  v103 = *(v102 + 8);
  v103(v52, v109);
  v56 = *(v49 + 8);
  v110 = v49 + 8;
  v56(v16, v51);
  v100 = a5;
  *(a5 + 48) = v53;
  v57 = [v44 currentValue];

  v58 = MEMORY[0x1E6969A78];
  if (v57)
  {
    v59 = v95;
    sub_1BE04AEE4();

    v60 = *(v54 + 32);
    v61 = v96;
    v60(v96, v59, v109);
    v62 = *v58;
    v102 = v55;
    v63 = v56;
    v64 = v105;
    v105(v16, v62, v51);
    v65 = sub_1BE04B2E4();
    v63(v16, v51);
    v111 = v65;
    v112 = 0;
    sub_1BE051694();

    v66 = v114;
    v67 = v115;
    v68 = v91;
    *v91 = v113;
    *(v68 + 8) = v66;
    v68[2] = v67;
    v64(v16, v104, v51);
    v56 = v63;
    v69 = sub_1BE04B2E4();
    v63(v16, v51);
    v111 = v69;
    v112 = 0;
    sub_1BE051694();
    v103(v61, v109);

    v70 = v114;
    v71 = v115;
    v72 = v94;
    *v94 = v113;
    *(v72 + 8) = v70;
    v72[2] = v71;
  }

  v73 = v104;
  v74 = v105;
  (v105)(v16);
  v75 = v106;
  sub_1BE04AEF4();
  v76 = v107;
  v77 = sub_1BE04B2E4();
  v103(v75, v109);
  result = (v56)(v16, v51);
  v79 = v77 - 10;
  if (__OFSUB__(v77, 10))
  {
    __break(1u);
    goto LABEL_8;
  }

  v80 = __OFADD__(v77, 31);
  v81 = v77 + 31;
  if (v80)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v81 >= v79)
  {
    v74(v16, v73, v51);
    v82 = v74;
    v83 = v97;
    sub_1BD66276C(v16, v79, v81, 0, 2038004089, 0xE400000000000000, v76, v97);
    v85 = v84;
    v56(v16, v51);
    v86 = v51;
    v87 = v100;
    *(v100 + 40) = v85;
    v82(v16, *MEMORY[0x1E6969A78], v86);
    sub_1BD66276C(v16, 0, 0, 1, 19532, 0xE200000000000000, v76, v83);
    v89 = v88;

    v56(v16, v86);
    result = (*(v98 + 8))(v76, v99);
    *(v87 + 32) = v89;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1BD660A9C(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() generalPasteboard];
  v4 = [a2 displayString];
  [v3 setString_];
}

void sub_1BD660B30(uint64_t a1, id *a2)
{
  v3 = [objc_opt_self() generalPasteboard];
  if ([*a2 currentValue] && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E820), (swift_dynamicCast() & 1) != 0))
  {
    v4 = sub_1BE052404();
  }

  else
  {
    v4 = 0;
  }

  [v3 setString_];
}

id sub_1BD660C14@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E758);
  return sub_1BD65EF9C(v6, (a1 + *(v4 + 44)));
}

uint64_t sub_1BD660CAC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field;
  v5 = *(v2 + OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field);
  v6 = [a1 text];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE052434();
    v10 = v9;

    v22 = v8;
    v23 = v10;
    v20 = 41154;
    v21 = 0xA200000000000000;
    v18 = 0;
    v19 = 0xE000000000000000;
    v16 = sub_1BD0DDEBC();
    v17 = v16;
    v14 = MEMORY[0x1E69E6158];
    v15 = v16;
    sub_1BE053584();

    v11 = sub_1BE052404();
  }

  else
  {
    v11 = 0;
  }

  [v5 setCurrentValue_];

  swift_unknownObjectRelease();
  v12 = [*(v2 + v4) setSource_];
  return (*(v2 + OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_onValueChange))(v12);
}

void sub_1BD660EF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return;
  }

  v10 = OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field;
  v11 = &selRef_initWithVerificationController_fieldsModel_;
  if ([*(v5 + OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field) maxLength] >= 1)
  {
    v12 = [a1 text];
    if (v12)
    {
      v13 = v12;
      v41 = a1;
      sub_1BE052434();
      v14 = [*(v5 + v10) maxLength];
      v15 = v10;
      v16 = sub_1BE052404();
      v17 = [v13 stringByReplacingCharactersInRange:a2 withString:{a3, v16}];

      sub_1BE052434();
      v18 = sub_1BE052534();

      if (v14 < v18)
      {
        v11 = &selRef_initWithVerificationController_fieldsModel_;
        v10 = v15;
        if ([*(v5 + v15) isNumeric])
        {

          goto LABEL_14;
        }

        v22 = [*(v5 + v15) maxLength];
        v23 = [v13 length];

        v24 = &v23[-a3];
        if (__OFSUB__(v23, a3))
        {
          __break(1u);
        }

        else
        {
          v25 = v22 - v24;
          if (!__OFSUB__(v22, v24))
          {
            if (v25 < 1)
            {
            }

            else
            {
              v40 = v15;
              sub_1BE048C84();
              v26 = sub_1BD683A34(v25);
              v28 = v27;
              v30 = v29;
              v32 = v31;

              MEMORY[0x1BFB3F570](v26, v28, v30, v32);

              sub_1BE052B64();
              LOBYTE(v28) = v33;

              if ((v28 & 1) == 0)
              {
                v34 = [v41 text];
                if (v34)
                {
                  v35 = v5;
                  v36 = v34;
                  sub_1BE052434();
                  v38 = v37;

                  sub_1BD664408();
                  sub_1BE0524F4();
                  if (v38)
                  {
                    v39 = sub_1BE052404();
                  }

                  else
                  {
                    v39 = 0;
                  }

                  v5 = v35;
                  v10 = v15;
                  [v41 setText_];
                }

                else
                {

                  [v41 setText_];
                  v10 = v15;
                }

                v11 = &selRef_initWithVerificationController_fieldsModel_;
                goto LABEL_14;
              }

              v10 = v15;
            }

            goto LABEL_13;
          }
        }

        __break(1u);
        return;
      }

      v10 = v15;
LABEL_13:
      v11 = &selRef_initWithVerificationController_fieldsModel_;
    }
  }

LABEL_14:
  if ([*(v5 + v10) v11[363]])
  {
    sub_1BE048C84();
    do
    {
      sub_1BE052594();
      if (!v19)
      {
        break;
      }

      sub_1BE0522A4();
      v21 = v20;
    }

    while ((v21 & 1) == 0);
  }
}

id sub_1BD6613F8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1BD6614A4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9F0);
  sub_1BE04FF74();
  [v3 setDelegate_];

  sub_1BD665950(v3, v1, v2);
  return v3;
}

void sub_1BD661550(void *a1)
{
  v2 = *v1;
  sub_1BD665950(a1, *v1, *(v1 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9F0);
  sub_1BE04FF74();
  v3 = *&v5[OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field];
  *&v5[OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field] = v2;
  v4 = v2;
}

id sub_1BD6615D0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = type metadata accessor for PaymentSetupFieldEntryTextFieldView.Coordinator();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_field] = v3;
  v8 = &v7[OBJC_IVAR____TtCV9PassKitUIP33_A630CC2BCDAA4C518AB8B8F441FB0D6D35PaymentSetupFieldEntryTextFieldView11Coordinator_onValueChange];
  *v8 = v5;
  *(v8 + 1) = v4;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = v3;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v11, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD661664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD664F64();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD6616C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD664F64();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD66172C()
{
  sub_1BD664F64();
  sub_1BE04F964();
  __break(1u);
}

id sub_1BD661754@<X0>(id *a1@<X2>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = sub_1BE04B2D4();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v34 - v9;
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v34 - v18;
  v20 = type metadata accessor for PaymentSetupFieldEntryDateView();
  v21 = a1 + *(v20 + 44);
  v22 = *v21;
  v23 = v21[8];
  v24 = *(v21 + 2);
  v39 = v22;
  v40 = v23;
  v41 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  result = sub_1BE0516A4();
  if (v38 == 1)
  {
    result = [*a1 currentValue];
    if (result)
    {
      v26 = result;
      sub_1BE04AEE4();

      (*(v12 + 32))(v19, v15, v11);
      sub_1BD0DE19C(a1 + *(v20 + 40), v10, &unk_1EBD4E830);
      v27 = *(v7 + 48);
      v29 = v34;
      v28 = v35;
      (*(v34 + 104))(v6, *MEMORY[0x1E6969A78], v35);
      v30 = sub_1BE04B2E4();
      (*(v29 + 8))(v6, v28);
      (*(v12 + 8))(v19, v11);
      v31 = sub_1BE04B0F4();
      (*(*(v31 - 8) + 8))(&v10[v27], v31);
      v32 = sub_1BE04B2F4();
      result = (*(*(v32 - 8) + 8))(v10, v32);
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = v37;
  }

  v33 = v36;
  *v36 = v30;
  *(v33 + 8) = 0;
  return result;
}

uint64_t sub_1BD661AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PaymentSetupFieldEntryDateView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  sub_1BE0516B4();
  v6 = sub_1BD661B64();
  return (*(a5 + 8))(v6);
}

uint64_t sub_1BD661B64()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v69 = v60 - v4;
  v5 = sub_1BE04AF64();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v63 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PaymentSetupFieldEntryDateView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v60 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v60 - v19;
  v21 = sub_1BE04A474();
  v67 = *(v21 - 8);
  v68 = v21;
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v66 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *v1;
  v25 = [v62 calendar];
  sub_1BE04B1F4();

  v26 = sub_1BE04B2F4();
  v27 = *(*(v26 - 8) + 56);
  v64 = v20;
  v27(v20, 0, 1, v26);
  v28 = sub_1BE04B3B4();
  v29 = *(*(v28 - 8) + 56);
  v65 = v16;
  v29(v16, 1, 1, v28);
  v30 = v1 + *(v8 + 48);
  v31 = *v30;
  v32 = v30[8];
  v33 = *(v30 + 2);
  v74 = v31;
  LOBYTE(v75) = v32;
  v76 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  sub_1BE0516A4();
  v60[1] = v10;
  v61 = v9;
  if (v78)
  {
    v60[0] = v8;
    v34 = MEMORY[0x1E69E85E0];
    sub_1BD664AB4(v1, v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1BE0528A4();
    v35 = sub_1BE052894();
    v36 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v34;
    sub_1BD664B7C(v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
    sub_1BD664AB4(v1, v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v38 = sub_1BE052894();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v34;
    v8 = v60[0];
    sub_1BD664B7C(v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
    sub_1BE051924();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E8);
    MEMORY[0x1BFB3E970](&v77, v40);

    v41 = v77;
  }

  else
  {
    v41 = v77;
    v78 = 0;
  }

  v42 = v1 + *(v8 + 44);
  v43 = *v42;
  v44 = v42[8];
  v45 = *(v42 + 2);
  v74 = v43;
  LOBYTE(v75) = v44;
  v76 = v45;
  sub_1BE0516A4();
  if (v73)
  {
    sub_1BD664AB4(v1, v12);
    sub_1BE0528A4();
    v46 = sub_1BE052894();
    v60[0] = v41;
    v47 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    v49 = MEMORY[0x1E69E85E0];
    *(v48 + 24) = MEMORY[0x1E69E85E0];
    sub_1BD664B7C(v12, v48 + v47);
    sub_1BD664AB4(v1, v12);
    v50 = sub_1BE052894();
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = v49;
    sub_1BD664B7C(v12, v51 + v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
    sub_1BE051924();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E8);
    MEMORY[0x1BFB3E970](&v72, v52);
  }

  else
  {
    v73 = 0;
  }

  v54 = v70;
  v53 = v71;
  v55 = v66;
  sub_1BE04A454();
  v56 = v69;
  sub_1BE04A444();
  if ((*(v54 + 48))(v56, 1, v53) == 1)
  {
    (*(v67 + 8))(v55, v68);
    return sub_1BD0DE53C(v56, &unk_1EBD39970);
  }

  else
  {
    v58 = v63;
    (*(v54 + 32))(v63, v56, v53);
    v59 = sub_1BE04AE64();
    [v62 setCurrentValue_];

    (*(v54 + 8))(v58, v53);
    return (*(v67 + 8))(v55, v68);
  }
}

id sub_1BD662350@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = sub_1BE04B2D4();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - v9;
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v35 - v18;
  v20 = type metadata accessor for PaymentSetupFieldEntryDateView();
  v21 = (a1 + *(v20 + 48));
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = v21[2];
  v40 = v22;
  v41 = v23;
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  result = sub_1BE0516A4();
  if (v39 != 1)
  {
    v30 = v38;
    goto LABEL_6;
  }

  result = [*a1 currentValue];
  if (result)
  {
    v26 = result;
    sub_1BE04AEE4();

    (*(v12 + 32))(v19, v15, v11);
    sub_1BD0DE19C(a1 + *(v20 + 40), v10, &unk_1EBD4E830);
    v27 = *(v7 + 48);
    v29 = v35;
    v28 = v36;
    (*(v35 + 104))(v6, *MEMORY[0x1E6969A68], v36);
    v30 = sub_1BE04B2E4();
    (*(v29 + 8))(v6, v28);
    (*(v12 + 8))(v19, v11);
    v31 = sub_1BE04B0F4();
    (*(*(v31 - 8) + 8))(&v10[v27], v31);
    v32 = sub_1BE04B2F4();
    result = (*(*(v32 - 8) + 8))(v10, v32);
LABEL_6:
    v34 = v37;
    *v37 = v30;
    *(v34 + 8) = 0;
    return result;
  }

  v33 = *(a1 + 48);
  v30 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6626CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PaymentSetupFieldEntryDateView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  sub_1BE0516B4();
  v6 = sub_1BD661B64();
  return (*(a5 + 8))(v6);
}

void sub_1BD66276C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v58 = a8;
  v68 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v67 = &v52 - v14;
  v15 = sub_1BE04AF64();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v66 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v65 = &v52 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v52 - v24;
  v64 = sub_1BE04A474();
  v53 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v26);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v29 = sub_1BE04B154();
    if (v30)
    {
      a2 = 0;
    }

    else
    {
      a2 = v29;
    }

    sub_1BE04B154();
    if (v32)
    {
      a3 = a2;
    }

    else
    {
      a3 = v31;
    }
  }

  v33 = sub_1BE052404();
  [v58 setDateFormat_];

  if (a3 < a2)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a2 == a3)
  {
    return;
  }

  if (a2 >= a3)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v69 = v15;
  v63 = sub_1BE04B2F4();
  v34 = *(v63 - 8);
  v35 = *(v34 + 16);
  v61 = v34 + 16;
  v62 = v35;
  v59 = (v16 + 48);
  v60 = (v34 + 56);
  v54 = (v16 + 8);
  v55 = (v16 + 32);
  v36 = (v53 + 8);
  v37 = MEMORY[0x1E69E7CC0];
  v56 = a3;
  v57 = a1;
  do
  {
    v38 = v63;
    v62(v25, v68, v63);
    (*v60)(v25, 0, 1, v38);
    v39 = sub_1BE04B3B4();
    (*(*(v39 - 8) + 56))(v65, 1, 1, v39);
    sub_1BE04A454();
    sub_1BE04A464();
    v40 = v67;
    sub_1BE04A444();
    v41 = v40;
    v42 = v40;
    v43 = v69;
    if ((*v59)(v42, 1, v69) == 1)
    {
      (*v36)(v28, v64);
      sub_1BD0DE53C(v41, &unk_1EBD39970);
    }

    else
    {
      (*v55)(v66, v41, v43);
      v44 = sub_1BE04AE64();
      v45 = [v58 stringFromDate_];

      v46 = sub_1BE052434();
      v48 = v47;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1BD1D9378(0, v37[2] + 1, 1, v37);
      }

      v50 = v37[2];
      v49 = v37[3];
      if (v50 >= v49 >> 1)
      {
        v37 = sub_1BD1D9378((v49 > 1), v50 + 1, 1, v37);
      }

      (*v54)(v66, v69);
      (*v36)(v28, v64);
      v37[2] = v50 + 1;
      v51 = &v37[3 * v50];
      v51[4] = a2;
      v51[5] = v46;
      v51[6] = v48;
      a3 = v56;
    }

    ++a2;
  }

  while (a3 != a2);
}

uint64_t sub_1BD662D38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E8B0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v38[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E8B8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E8C0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38[-v16];
  if ([*v0 isReadonly])
  {
    *&v39 = sub_1BD663144();
    *(&v39 + 1) = v18;
    sub_1BD0DDEBC();
    v19 = sub_1BE0506C4();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_1BE051CF4();
    sub_1BE04EE54();
    v26 = v23 & 1;
    v38[0] = v23 & 1;
    v27 = sub_1BE04FC94();
    KeyPath = swift_getKeyPath();
    v38[8] = 0;
    *v17 = v19;
    *(v17 + 1) = v21;
    v17[16] = v26;
    *(v17 + 3) = v25;
    v29 = v44;
    *(v17 + 6) = v43;
    *(v17 + 7) = v29;
    *(v17 + 8) = v45;
    v30 = v40;
    *(v17 + 2) = v39;
    *(v17 + 3) = v30;
    v31 = v42;
    *(v17 + 4) = v41;
    *(v17 + 5) = v31;
    *(v17 + 36) = v27;
    *(v17 + 19) = KeyPath;
    *(v17 + 20) = 1;
    v17[168] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E8D0);
    sub_1BD664FB8();
    sub_1BD665128();
    return sub_1BE04F9A4();
  }

  else
  {
    *v4 = sub_1BE04F504();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E8C8);
    sub_1BD66389C(v0, &v4[*(v33 + 44)]);
    if (*(v0 + 24) == 1)
    {
      sub_1BE051CF4();
    }

    else
    {
      sub_1BE051CE4();
    }

    sub_1BE04EE54();
    sub_1BD0DE204(v4, v8, &qword_1EBD4E8B0);
    v34 = &v8[*(v5 + 36)];
    v35 = v44;
    v34[4] = v43;
    v34[5] = v35;
    v34[6] = v45;
    v36 = v40;
    *v34 = v39;
    v34[1] = v36;
    v37 = v42;
    v34[2] = v41;
    v34[3] = v37;
    sub_1BD0DE204(v8, v12, &qword_1EBD4E8B8);
    sub_1BD0DE19C(v12, v17, &qword_1EBD4E8B8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E8D0);
    sub_1BD664FB8();
    sub_1BD665128();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v12, &qword_1EBD4E8B8);
  }
}

uint64_t sub_1BD663144()
{
  v72 = sub_1BE04AC64();
  v79 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v1);
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1BE04ACA4();
  v85 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v4);
  v84 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04A994();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v81 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04B3B4();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v80 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830);
  MEMORY[0x1EEE9AC00](v74, v12);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v75 = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E930);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B4D0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v67 - v23;
  v25 = sub_1BE04AD84();
  v82 = *(v25 - 8);
  v83 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v76 = &v67 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v78 = &v67 - v34;
  v35 = sub_1BE04AF64();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40, v41);
  v44 = &v67 - v43;
  v45 = [*v0 currentValue];
  if (!v45)
  {
    return 0x595959592F4D4DLL;
  }

  v46 = v45;
  sub_1BE04AEE4();

  v70 = v35;
  v71 = v36;
  v47 = *(v36 + 32);
  v69 = v44;
  v47(v44, v39, v35);
  v48 = sub_1BE04AB54();
  v49 = *(*(v48 - 8) + 56);
  v67 = v24;
  v49(v24, 1, 1, v48);
  v50 = sub_1BE04AB24();
  (*(*(v50 - 8) + 56))(v20, 1, 1, v50);
  v51 = *(type metadata accessor for PaymentSetupFieldEntryDateView() + 40);
  v52 = v75;
  sub_1BD0DE19C(v0 + v51, v75, &unk_1EBD4E830);
  v68 = v3;
  v53 = v28;
  v54 = v74;
  v55 = v77;
  sub_1BD0DE19C(v0 + v51, v77, &unk_1EBD4E830);
  v56 = *(v54 + 48);
  sub_1BE04B384();
  sub_1BE04A984();
  sub_1BE04AB74();
  v57 = sub_1BE04B0F4();
  (*(*(v57 - 8) + 8))(v55 + v56, v57);
  v58 = sub_1BE04B2F4();
  (*(*(v58 - 8) + 8))(v52, v58);
  v59 = v84;
  sub_1BE04AC94();
  v60 = v76;
  sub_1BE04ABB4();
  (*(v85 + 8))(v59, v73);
  v61 = v83;
  v62 = *(v82 + 8);
  v62(v53, v83);
  v63 = v68;
  sub_1BE04AC54();
  v64 = v78;
  sub_1BE04ABA4();
  (*(v79 + 8))(v63, v72);
  v62(v60, v61);
  sub_1BD6651E0(&qword_1EBD4E940, MEMORY[0x1E6969328]);
  v65 = v69;
  sub_1BE04AF44();
  v62(v64, v61);
  (*(v71 + 8))(v65, v70);
  return v86;
}

uint64_t sub_1BD66389C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E948);
  MEMORY[0x1EEE9AC00](v81, v3);
  v76 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E950);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v77 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v75 = &v62 - v10;
  v11 = type metadata accessor for PaymentSetupFieldEntryDateView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v14);
  v15 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E958);
  MEMORY[0x1EEE9AC00](v79, v16);
  v18 = &v62 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E960);
  MEMORY[0x1EEE9AC00](v73, v19);
  v70 = &v62 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E968);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v74 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v80 = &v62 - v26;
  v63 = a1;
  sub_1BD664AB4(a1, v15);
  sub_1BE0528A4();
  v27 = sub_1BE052894();
  v28 = *(v12 + 80);
  v29 = (v28 + 32) & ~v28;
  v68 = v13;
  v67 = v28;
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  *(v30 + 16) = v27;
  *(v30 + 24) = v31;
  sub_1BD664B7C(v15, v30 + v29);
  sub_1BD664AB4(a1, v15);
  v32 = sub_1BE052894();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v31;
  sub_1BD664B7C(v15, v33 + v29);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
  sub_1BE051924();
  v34 = v63;
  v83 = v63;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E970);
  v72 = sub_1BD665260();
  v71 = sub_1BD6652DC();
  sub_1BE0517D4();
  v35 = sub_1BE051464();
  KeyPath = swift_getKeyPath();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E988);
  v37 = &v18[*(v66 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  v38 = &v18[*(v79 + 36)];
  *v38 = 0;
  *(v38 + 4) = 1;
  v65 = sub_1BD6653B0();
  v39 = v70;
  sub_1BE0509C4();
  sub_1BD0DE53C(v18, &qword_1EBD4E958);
  *(v39 + *(v81 + 36)) = 1;
  LOBYTE(v35) = sub_1BE050204();
  sub_1BE04E1F4();
  v40 = v39 + *(v73 + 36);
  *v40 = v35;
  *(v40 + 8) = v41;
  *(v40 + 16) = v42;
  *(v40 + 24) = v43;
  *(v40 + 32) = v44;
  *(v40 + 40) = 0;
  sub_1BE052434();
  sub_1BD665520();
  sub_1BE050DE4();

  sub_1BD0DE53C(v39, &qword_1EBD4E960);
  sub_1BD664AB4(v34, v15);
  v45 = sub_1BE052894();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  v47 = MEMORY[0x1E69E85E0];
  *(v46 + 24) = MEMORY[0x1E69E85E0];
  sub_1BD664B7C(v15, v46 + v29);
  sub_1BD664AB4(v34, v15);
  v48 = sub_1BE052894();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v47;
  sub_1BD664B7C(v15, v49 + v29);
  sub_1BE051924();
  v82 = v34;
  sub_1BE0517D4();
  v50 = sub_1BE051464();
  v51 = swift_getKeyPath();
  v52 = &v18[*(v66 + 36)];
  *v52 = v51;
  v52[1] = v50;
  v53 = &v18[*(v79 + 36)];
  *v53 = 0;
  *(v53 + 4) = 1;
  v54 = v76;
  sub_1BE0509C4();
  sub_1BD0DE53C(v18, &qword_1EBD4E958);
  *(v54 + *(v81 + 36)) = 1;
  sub_1BE052434();
  sub_1BD6655AC();
  v55 = v75;
  sub_1BE050DE4();

  sub_1BD0DE53C(v54, &qword_1EBD4E948);
  v56 = v80;
  v57 = v74;
  sub_1BD0DE19C(v80, v74, &qword_1EBD4E968);
  v58 = v77;
  sub_1BD0DE19C(v55, v77, &qword_1EBD4E950);
  v59 = v78;
  sub_1BD0DE19C(v57, v78, &qword_1EBD4E968);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9C0);
  sub_1BD0DE19C(v58, v59 + *(v60 + 48), &qword_1EBD4E950);
  sub_1BD0DE53C(v55, &qword_1EBD4E950);
  sub_1BD0DE53C(v56, &qword_1EBD4E968);
  sub_1BD0DE53C(v58, &qword_1EBD4E950);
  return sub_1BD0DE53C(v57, &qword_1EBD4E968);
}

uint64_t sub_1BD66413C()
{
  swift_getKeyPath();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0);
  sub_1BD0DE4F4(&qword_1EBD4E9D8, &qword_1EBD4E9C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
  sub_1BD665260();
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

uint64_t sub_1BD66428C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *a2 = v3;
  *(a2 + 8) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = 256;
  return sub_1BE048C84();
}

uint64_t sub_1BD6642B4()
{
  swift_getKeyPath();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0);
  sub_1BD0DE4F4(&qword_1EBD4E9D8, &qword_1EBD4E9C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
  sub_1BD665260();
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

unint64_t sub_1BD664408()
{
  result = qword_1EBD4E720;
  if (!qword_1EBD4E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E720);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{

  return swift_deallocObject();
}

unint64_t sub_1BD6644C4()
{
  result = qword_1EBD4E740;
  if (!qword_1EBD4E740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E738);
    sub_1BD664550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E740);
  }

  return result;
}

unint64_t sub_1BD664550()
{
  result = qword_1EBD4E748;
  if (!qword_1EBD4E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E748);
  }

  return result;
}

uint64_t type metadata accessor for PaymentSetupFieldEntryDateView()
{
  result = qword_1EBD4E850;
  if (!qword_1EBD4E850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD66461C()
{
  result = qword_1EBD4E7A0;
  if (!qword_1EBD4E7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E790);
    sub_1BD6648C0(&qword_1EBD4E7A8, &qword_1EBD4E7B0, &unk_1BE0EBF90, sub_1BD664700);
    sub_1BD6648C0(&qword_1EBD4E7E8, &qword_1EBD4E778, &unk_1BE0EBF68, sub_1BD66493C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7A0);
  }

  return result;
}

unint64_t sub_1BD664700()
{
  result = qword_1EBD4E7B8;
  if (!qword_1EBD4E7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E7C0);
    sub_1BD66478C();
    sub_1BD664818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7B8);
  }

  return result;
}

unint64_t sub_1BD66478C()
{
  result = qword_1EBD4E7C8;
  if (!qword_1EBD4E7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E7D0);
    sub_1BD664818();
    sub_1BD66486C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7C8);
  }

  return result;
}

unint64_t sub_1BD664818()
{
  result = qword_1EBD4E7D8;
  if (!qword_1EBD4E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7D8);
  }

  return result;
}

unint64_t sub_1BD66486C()
{
  result = qword_1EBD4E7E0;
  if (!qword_1EBD4E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7E0);
  }

  return result;
}

uint64_t sub_1BD6648C0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD66493C()
{
  result = qword_1EBD4E7F0;
  if (!qword_1EBD4E7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E770);
    sub_1BD6649F8();
    sub_1BD6651E0(&qword_1EBD4E800, type metadata accessor for PaymentSetupFieldEntryDateView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7F0);
  }

  return result;
}

unint64_t sub_1BD6649F8()
{
  result = qword_1EBD4E7F8;
  if (!qword_1EBD4E7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E768);
    sub_1BD6651E0(&qword_1EBD4E800, type metadata accessor for PaymentSetupFieldEntryDateView);
    sub_1BD66486C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E7F8);
  }

  return result;
}

uint64_t sub_1BD664AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentSetupFieldEntryDateView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD664B18(uint64_t a1)
{
  v2 = type metadata accessor for PaymentSetupFieldEntryDateView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD664B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentSetupFieldEntryDateView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1BD664BE0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1BD664BF8(result, a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

uint64_t sub_1BD664BF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    v6 = a1;

    return sub_1BE048964();
  }

  else
  {
    v8 = a1;
    sub_1BE048964();

    return sub_1BE048C84();
  }
}

void *sub_1BD664C64(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1BD664C7C(result, a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

uint64_t sub_1BD664C7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if ((a6 & 1) == 0)
  {
  }

  return result;
}

void sub_1BD664D10()
{
  sub_1BD0E5E8C(319, &unk_1EBD4E860);
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      sub_1BD664ED0(319, &unk_1EBD4E870, &unk_1EBD557F0, &unk_1BE0BFE80, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1BD664E5C();
        if (v3 <= 0x3F)
        {
          sub_1BD664ED0(319, &unk_1EBD4E888, &qword_1EBD40C28, &unk_1BE0E74F0, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD664E5C()
{
  if (!qword_1EBD4E880)
  {
    sub_1BE04B2F4();
    sub_1BE04B0F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD4E880);
    }
  }
}

void sub_1BD664ED0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1BD664F64()
{
  result = qword_1EBD4E8A8;
  if (!qword_1EBD4E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E8A8);
  }

  return result;
}

unint64_t sub_1BD664FB8()
{
  result = qword_1EBD4E8D8;
  if (!qword_1EBD4E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E8D0);
    sub_1BD665070();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E8D8);
  }

  return result;
}

unint64_t sub_1BD665070()
{
  result = qword_1EBD4E8E0;
  if (!qword_1EBD4E8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E8E8);
    sub_1BD19D16C();
    sub_1BD0DE4F4(&unk_1EBD4E900, &qword_1EBD3ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E8E0);
  }

  return result;
}

unint64_t sub_1BD665128()
{
  result = qword_1EBD4E920;
  if (!qword_1EBD4E920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E8B8);
    sub_1BD0DE4F4(&qword_1EBD4E928, &qword_1EBD4E8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E920);
  }

  return result;
}

uint64_t sub_1BD6651E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD665260()
{
  result = qword_1EBD40CD8;
  if (!qword_1EBD40CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40CD8);
  }

  return result;
}

unint64_t sub_1BD6652DC()
{
  result = qword_1EBD4E980;
  if (!qword_1EBD4E980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4E970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
    sub_1BD665260();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E980);
  }

  return result;
}

unint64_t sub_1BD6653B0()
{
  result = qword_1EBD4E990;
  if (!qword_1EBD4E990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E958);
    sub_1BD66543C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E990);
  }

  return result;
}

unint64_t sub_1BD66543C()
{
  result = qword_1EBD4E998;
  if (!qword_1EBD4E998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E988);
    sub_1BD0DE4F4(&qword_1EBD4E9A0, &qword_1EBD4E9A8);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E998);
  }

  return result;
}

unint64_t sub_1BD665520()
{
  result = qword_1EBD4E9B0;
  if (!qword_1EBD4E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E960);
    sub_1BD6655AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E9B0);
  }

  return result;
}

unint64_t sub_1BD6655AC()
{
  result = qword_1EBD4E9B8;
  if (!qword_1EBD4E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E958);
    sub_1BD6653B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E9B8);
  }

  return result;
}

uint64_t sub_1BD6656AC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PaymentSetupFieldEntryDateView() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_41Tm()
{
  v1 = (type metadata accessor for PaymentSetupFieldEntryDateView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[12];
  v4 = sub_1BE04B2F4();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830) + 48);
  v6 = sub_1BE04B0F4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1BD6658B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PaymentSetupFieldEntryDateView() - 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8, v9);
}

id sub_1BD665950(void *a1, id a2, char a3)
{
  if ([a2 isSecureText] && (objc_msgSend(a2, sel_isSecureVisibleText) & 1) == 0)
  {
    v6 = PKSensitiveFieldBroadcastingEnabled() ^ 1;
  }

  else
  {
    v6 = 0;
  }

  [a1 setSecureTextEntry_];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [a1 setFont_];

  LODWORD(v8) = 1132068864;
  [a1 setContentCompressionResistancePriority:1 forAxis:v8];
  LODWORD(v9) = 1132068864;
  [a1 setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v7) = [a2 isNumeric];
  v10 = [a2 displayString];
  if (v7)
  {
    if (v10)
    {
      v11 = v10;
      v12 = sub_1BE052434();
      v14 = v13;

      v34 = v12;
      v35 = v14;
      v32 = 32;
      v33 = 0xE100000000000000;
      v30 = 41154;
      v31 = 0xA200000000000000;
      v28 = sub_1BD0DDEBC();
      v29 = v28;
      v26 = MEMORY[0x1E69E6158];
      v27 = v28;
      sub_1BE053584();

LABEL_10:
      v16 = sub_1BE052404();

      goto LABEL_12;
    }
  }

  else if (v10)
  {
    v15 = v10;
    sub_1BE052434();

    goto LABEL_10;
  }

  v16 = 0;
LABEL_12:
  [a1 setText_];

  v17 = [a2 localizedPlaceholder];
  [a1 setPlaceholder_];

  [a1 setEnabled_];
  [a1 setUserInteractionEnabled_];
  LODWORD(v17) = [a2 isReadonly];
  v18 = objc_opt_self();
  v19 = &selRef_secondaryLabelColor;
  if (!v17)
  {
    v19 = &selRef_labelColor;
  }

  v20 = [v18 *v19];
  [a1 setTextColor_];

  [a1 setBorderStyle_];
  if ([a2 isNumeric])
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  [a1 setKeyboardType_];
  v22 = [objc_opt_self() sharedApplication];
  v23 = [v22 userInterfaceLayoutDirection];

  if (a3)
  {
    [a1 setTextAlignment_];
LABEL_20:
    v24 = [objc_opt_self() clearColor];
    [a1 setBackgroundColor_];

    goto LABEL_21;
  }

  [a1 setTextAlignment_];
  if ([a2 isReadonly])
  {
    goto LABEL_20;
  }

LABEL_21:
  [a1 setAccessibilityIdentifier_];
  return [a1 pkui:1 setExcludedFromScreenCapture:1 andBroadcasting:?];
}

unint64_t sub_1BD665D60()
{
  result = qword_1EBD4E9F8;
  if (!qword_1EBD4E9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EA00);
    sub_1BD664FB8();
    sub_1BD665128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E9F8);
  }

  return result;
}

uint64_t type metadata accessor for AppleCardBillPaymentDetailsView()
{
  result = qword_1EBD4EA08;
  if (!qword_1EBD4EA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD665E78()
{
  result = _s15PaymentDateInfoVMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD665F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA20);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA28);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v52 - v23;
  *v24 = sub_1BE04F504();
  *(v24 + 1) = 0;
  v25 = 1;
  v24[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA30);
  sub_1BD66638C(a1, &v24[*(v26 + 44)]);
  v27 = sub_1BD15F194();
  if (v28)
  {
    v60 = v27;
    v61 = v28;
    sub_1BD0DDEBC();
    v29 = sub_1BE0506C4();
    v31 = v30;
    v55 = v20;
    v33 = v32;
    v53 = v8;
    sub_1BE0502A4();
    v54 = v5;
    v34 = sub_1BE0505F4();
    v56 = v16;
    v57 = v4;
    v35 = v34;
    v37 = v36;
    v58 = v12;
    v59 = a2;
    v39 = v38;

    sub_1BD0DDF10(v29, v31, v33 & 1);

    sub_1BE051234();
    v40 = sub_1BE050564();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v52[1] = v45;

    sub_1BD0DDF10(v35, v37, v39 & 1);

    KeyPath = swift_getKeyPath();
    v60 = v40;
    v61 = v42;
    v44 &= 1u;
    v62 = v44;
    v63 = v46;
    v64 = KeyPath;
    v65 = 2;
    v66 = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
    sub_1BD1B9C50();
    v48 = v53;
    a2 = v59;
    v16 = v56;
    sub_1BE050DE4();
    v12 = v58;

    v49 = v44;
    v5 = v54;
    sub_1BD0DDF10(v40, v42, v49);
    v4 = v57;

    v20 = v55;

    sub_1BD0DE204(v48, v16, &qword_1EBD3C0E8);
    v25 = 0;
  }

  (*(v5 + 56))(v16, v25, 1, v4);
  sub_1BD0DE19C(v24, v20, &qword_1EBD4EA28);
  sub_1BD0DE19C(v16, v12, &qword_1EBD4EA20);
  sub_1BD0DE19C(v20, a2, &qword_1EBD4EA28);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA38);
  sub_1BD0DE19C(v12, a2 + *(v50 + 48), &qword_1EBD4EA20);
  sub_1BD0DE53C(v16, &qword_1EBD4EA20);
  sub_1BD0DE53C(v24, &qword_1EBD4EA28);
  sub_1BD0DE53C(v12, &qword_1EBD4EA20);
  return sub_1BD0DE53C(v20, &qword_1EBD4EA28);
}

uint64_t sub_1BD66638C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA20);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v91 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v89 = &v82 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v82 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  v86 = *(v14 - 8);
  v87 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v82 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA48);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v88 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v82 - v27;
  v29 = sub_1BD15EB90();
  v92 = v28;
  v93 = v21;
  if (!v30)
  {
    (*(v10 + 56))(v28, 1, 1, v9);
    v54 = sub_1BD15EC7C();
    if (v55)
    {
      goto LABEL_3;
    }

LABEL_5:
    v76 = 1;
    v75 = v89;
    goto LABEL_6;
  }

  v94 = v29;
  v95 = v30;
  sub_1BD0DDEBC();
  v31 = sub_1BE0506C4();
  v84 = v9;
  v85 = a1;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1BE0502A4();
  v82 = v13;
  v37 = sub_1BE0505F4();
  v83 = v10;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_1BD0DDF10(v32, v34, v36 & 1);

  sub_1BE051224();
  v43 = sub_1BE050564();
  v45 = v44;
  v47 = v46;
  v49 = v48;

  sub_1BD0DDF10(v38, v40, v42 & 1);

  KeyPath = swift_getKeyPath();
  v94 = v43;
  v95 = v45;
  v96 = v47 & 1;
  v97 = v49;
  v98 = KeyPath;
  v99 = 2;
  v100 = 0;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
  sub_1BD1B9C50();
  sub_1BE050DE4();

  sub_1BD0DDF10(v43, v45, v47 & 1);
  v51 = v93;

  v28 = v92;

  sub_1BD0DE19C(v51, v17, &qword_1EBD3C0E8);
  v52 = v82;
  sub_1BD0DE19C(v17, v82, &qword_1EBD3C0E8);
  v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA58) + 48);
  *v53 = 0;
  *(v53 + 8) = 1;
  sub_1BD0DE53C(v51, &qword_1EBD3C0E8);
  sub_1BD0DE53C(v17, &qword_1EBD3C0E8);
  sub_1BD0DE204(v52, v28, &qword_1EBD4EA40);
  (*(v83 + 56))(v28, 0, 1, v84);
  v54 = sub_1BD15EC7C();
  if (!v55)
  {
    goto LABEL_5;
  }

LABEL_3:
  v94 = v54;
  v95 = v55;
  sub_1BD0DDEBC();
  v56 = sub_1BE0506C4();
  v58 = v57;
  v60 = v59;
  sub_1BE0502A4();
  v61 = sub_1BE0505F4();
  v63 = v62;
  v65 = v64;

  sub_1BD0DDF10(v56, v58, v60 & 1);

  sub_1BE051224();
  v66 = sub_1BE050564();
  v68 = v67;
  v70 = v69;
  v72 = v71;

  sub_1BD0DDF10(v61, v63, v65 & 1);

  v73 = swift_getKeyPath();
  v94 = v66;
  v95 = v68;
  v70 &= 1u;
  v96 = v70;
  v97 = v72;
  v98 = v73;
  v99 = 2;
  v100 = 0;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
  sub_1BD1B9C50();
  v74 = v93;
  v28 = v92;
  sub_1BE050DE4();

  sub_1BD0DDF10(v66, v68, v70);

  v75 = v89;
  sub_1BD0DE204(v74, v89, &qword_1EBD3C0E8);
  v76 = 0;
LABEL_6:
  (*(v86 + 56))(v75, v76, 1, v87);
  v77 = v88;
  sub_1BD0DE19C(v28, v88, &qword_1EBD4EA48);
  v78 = v91;
  sub_1BD0DE19C(v75, v91, &qword_1EBD4EA20);
  v79 = v90;
  sub_1BD0DE19C(v77, v90, &qword_1EBD4EA48);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA50);
  sub_1BD0DE19C(v78, v79 + *(v80 + 48), &qword_1EBD4EA20);
  sub_1BD0DE53C(v75, &qword_1EBD4EA20);
  sub_1BD0DE53C(v28, &qword_1EBD4EA48);
  sub_1BD0DE53C(v78, &qword_1EBD4EA20);
  return sub_1BD0DE53C(v77, &qword_1EBD4EA48);
}

uint64_t sub_1BD666B04@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA18);
  return sub_1BD665F00(v1, a1 + *(v3 + 44));
}

id TransactionPickerViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransactionPickerViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TransactionPickerViewControllerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD666D84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TransactionPickerView(0);
  sub_1BD0DE19C(v1 + *(v12 + 20), v11, &qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04E354();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1BD666F8C@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAD0);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v2);
  v88 = &v77 - v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37240);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v4);
  v94 = &v77 - v5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAD8);
  v85 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v6);
  v93 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAE0);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v84 = &v77 - v10;
  sub_1BD667D3C(&v77 - v10);
  sub_1BE051C64();
  v96 = v1;
  v99 = v1;
  v98 = v1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAE8);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAF0);
  v11 = sub_1BD672F14();
  v92 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB40);
  v13 = sub_1BE04F554();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB48);
  v83 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB50);
  v16 = sub_1BD0DDEBC();
  v100 = v8;
  v101 = MEMORY[0x1E69E6158];
  v102 = v11;
  v103 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_1BD0DE4F4(&qword_1EBD4EB58, &qword_1EBD4EB50);
  v100 = v14;
  v101 = v15;
  v102 = OpaqueTypeConformance2;
  v103 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8]);
  v100 = v12;
  v101 = v13;
  v102 = v19;
  v103 = v20;
  v77 = swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB68);
  v22 = sub_1BE04F844();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB70);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB78);
  v25 = sub_1BD0DE4F4(&qword_1EBD4EB80, &qword_1EBD4EB78);
  v100 = v24;
  v101 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v100 = v83;
  v101 = v23;
  v102 = OpaqueTypeConformance2;
  v103 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0]);
  v100 = v21;
  v101 = v22;
  v102 = v27;
  v103 = v28;
  v78 = swift_getOpaqueTypeConformance2();
  v29 = v80;
  v30 = v79;
  v31 = v81;
  v32 = v84;
  sub_1BE0510B4();
  sub_1BD0DE53C(v32, &qword_1EBD4EAE0);
  v33 = v96;
  v34 = v96[1];
  v84 = *v96;
  v108 = v84;
  v109 = v34;
  v83 = v34;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516C4();
  v35 = v100;
  v36 = v101;
  v37 = v102;
  swift_getKeyPath();
  v108 = v35;
  v109 = v36;
  v110 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB98);
  sub_1BE051904();

  v97 = v33;
  v100 = v30;
  v101 = MEMORY[0x1E6981CD8];
  v102 = v31;
  v103 = v29;
  v104 = v92;
  v105 = MEMORY[0x1E6981CD0];
  v106 = v77;
  v107 = v78;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v95;
  v92 = v38;
  v40 = v93;
  sub_1BE050EE4();

  (*(v85 + 8))(v40, v39);
  v41 = type metadata accessor for TransactionPickerView(0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41 - 8, v44);
  sub_1BD6732E8(v33, &v77 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BE0528A4();
  v45 = sub_1BE052894();
  v46 = *(v42 + 80);
  v93 = ~v46;
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E85E0];
  *(v47 + 16) = v45;
  *(v47 + 24) = v48;
  sub_1BD67334C(&v77 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + ((v46 + 32) & ~v46));
  v49 = sub_1BE0528D4();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49, v52);
  v53 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = &v77 - v53;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v80 = sub_1BE04EAA4();
    v81 = &v77;
    v79 = *(v80 - 8);
    MEMORY[0x1EEE9AC00](v80, v55);
    v78 = &v77 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_1BE053834();

    v100 = 0xD000000000000054;
    v101 = 0x80000001BE1333B0;
    v108 = 99;
    v57 = sub_1BE053B24();
    v85 = v43;
    MEMORY[0x1BFB3F610](v57);

    v60 = MEMORY[0x1EEE9AC00](v58, v59);
    (*(v50 + 16))(&v77 - v53, &v77 - v53, v49, v60);
    v61 = v78;
    sub_1BE04EA94();
    v43 = v85;
    (*(v50 + 8))(v54, v49);
    v62 = v88;
    v63 = v87;
    (*(v86 + 32))(v88, v94, v87);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37248);
    (*(v79 + 32))(&v62[*(v64 + 36)], v61, v80);
  }

  else
  {
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37250);
    v62 = v88;
    v66 = &v88[*(v65 + 36)];
    v67 = sub_1BE04E7B4();
    (*(v50 + 32))(&v66[*(v67 + 20)], &v77 - v53, v49);
    *v66 = &unk_1BE0EC798;
    *(v66 + 1) = v47;
    v63 = v87;
    (*(v86 + 32))(v62, v94, v87);
  }

  v100 = v84;
  v101 = v83;
  sub_1BE0516A4();
  v68 = v108;
  swift_getKeyPath();
  v100 = v68;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  v69 = *(v68 + 42);

  LOBYTE(v108) = v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  sub_1BD6732E8(v96, &v77 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = (v46 + 16) & v93;
  v73 = swift_allocObject();
  sub_1BD67334C(&v77 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v73 + v72);
  v100 = v95;
  v101 = v92;
  v74 = swift_getOpaqueTypeConformance2();
  v100 = v63;
  v101 = v74;
  swift_getOpaqueTypeConformance2();
  sub_1BD672EB0();
  v75 = v91;
  sub_1BE051064();

  return (*(v90 + 8))(v62, v75);
}

uint64_t sub_1BD667D3C@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030);
  v71 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v2);
  v70 = &v61 - v3;
  v67 = sub_1BE051AD4();
  v66 = *(v67 - 1);
  MEMORY[0x1EEE9AC00](v67, v4);
  v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1BE04FB94();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB18);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v9);
  v11 = &v61 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB00);
  MEMORY[0x1EEE9AC00](v80, v12);
  v73 = &v61 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBE8);
  v69 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v14);
  v68 = &v61 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBF0);
  MEMORY[0x1EEE9AC00](v72, v16);
  v75 = &v61 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v18 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v19);
  v21 = &v61 - v20;
  v22 = *v1;
  v23 = v1[1];
  v74 = v1;
  v81 = v22;
  v82 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  v24 = v87;
  swift_getKeyPath();
  v81 = v24;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  v25 = *(v24 + 40);

  if (v25 == 1)
  {
    sub_1BE04E4F4();
    v26 = v76;
    (*(v18 + 16))(v75, v21, v76);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB08);
    v28 = sub_1BD673098();
    v81 = MEMORY[0x1E6981CD8];
    v82 = MEMORY[0x1E6981CD0];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = sub_1BD6731E0();
    v81 = v80;
    v82 = v78;
    v83 = v27;
    v84 = v28;
    v85 = OpaqueTypeConformance2;
    v86 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v18 + 8))(v21, v26);
  }

  else
  {
    v87 = v22;
    v88 = v23;
    sub_1BE0516C4();
    v32 = v81;
    v33 = v82;
    v34 = v83;
    swift_getKeyPath();
    v81 = v32;
    v82 = v33;
    v83 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB98);
    sub_1BE051904();

    MEMORY[0x1EEE9AC00](v35, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBF8);
    sub_1BD0DE4F4(&qword_1EBD4EC00, &qword_1EBD4EBF8);
    sub_1BE0504D4();
    sub_1BE04FB84();
    sub_1BD0DE4F4(&qword_1EBD4EB20, &qword_1EBD4EB18);
    v37 = v73;
    v38 = v62;
    v39 = v64;
    sub_1BE051144();
    (*(v63 + 8))(v8, v39);
    (*(v61 + 8))(v11, v38);
    KeyPath = swift_getKeyPath();
    v41 = &v37[*(v80 + 36)];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410) + 28);
    v43 = v66;
    v44 = v65;
    v45 = v67;
    (*(v66 + 104))(v65, *MEMORY[0x1E697D708], v67);
    sub_1BE051944();
    (*(v43 + 8))(v44, v45);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    (*(*(v46 - 8) + 56))(v41 + v42, 0, 1, v46);
    *v41 = KeyPath;
    sub_1BE051C64();
    v47 = MEMORY[0x1E6981CD0];
    v48 = MEMORY[0x1E6981CD8];
    v49 = v70;
    v50 = sub_1BE04F694();
    v67 = &v61;
    MEMORY[0x1EEE9AC00](v50, v51);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB08);
    v52 = sub_1BD673098();
    v81 = v48;
    v82 = v47;
    v53 = swift_getOpaqueTypeConformance2();
    v60 = sub_1BD6731E0();
    v54 = v68;
    v55 = v80;
    v56 = v78;
    v57 = v73;
    sub_1BE0510C4();
    (*(v71 + 8))(v49, v56);
    sub_1BD0DE53C(v57, &qword_1EBD4EB00);
    v58 = v69;
    v59 = v77;
    (*(v69 + 16))(v75, v54, v77);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    v81 = v55;
    v82 = v56;
    v83 = v74;
    v84 = v52;
    v85 = v53;
    v86 = v60;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v58 + 8))(v54, v59);
  }
}

uint64_t sub_1BD668828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v39 = a3;
  v4 = sub_1BE04F554();
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB48);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB40);
  v13 = *(v12 - 8);
  v35 = v12;
  v36 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v32 - v15;
  v17 = a2[1];
  v41 = *a2;
  v42 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  v18 = sub_1BD66FBBC();
  v20 = v19;

  v41 = v18;
  v42 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAE0);
  v22 = sub_1BD672F14();
  v23 = sub_1BD0DDEBC();
  v24 = MEMORY[0x1E69E6158];
  sub_1BE050B74();

  v40 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB50);
  v41 = v21;
  v42 = v24;
  v43 = v22;
  v44 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_1BD0DE4F4(&qword_1EBD4EB58, &qword_1EBD4EB50);
  sub_1BE051024();
  (*(v33 + 8))(v11, v8);
  v28 = v34;
  sub_1BE04F544();
  v41 = v8;
  v42 = v25;
  v43 = OpaqueTypeConformance2;
  v44 = v27;
  swift_getOpaqueTypeConformance2();
  sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8]);
  v29 = v35;
  v30 = v37;
  sub_1BE050864();
  (*(v38 + 8))(v28, v30);
  return (*(v36 + 8))(v16, v29);
}

uint64_t sub_1BD668C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v36 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBE0);
  MEMORY[0x1EEE9AC00](v35, v3);
  v34 = &v29 - v4;
  v5 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB78);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v29 - v14;
  sub_1BE04FB14();
  v38 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBA8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBB0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBB8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBC0);
  v17 = sub_1BD6740FC(&qword_1EBD4EBC8, &qword_1EBD4EBB0, &unk_1BE0EC810, sub_1BD6741B0);
  v18 = sub_1BE04F554();
  v19 = sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8]);
  v39 = v16;
  v40 = v18;
  v41 = v17;
  v42 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_1BE04F844();
  v22 = sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0]);
  v39 = v16;
  v40 = v21;
  v41 = v17;
  v42 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v39 = v16;
  v40 = MEMORY[0x1E6981CD8];
  v41 = v31;
  v42 = v30;
  v43 = v17;
  v44 = MEMORY[0x1E6981CD0];
  v45 = OpaqueTypeConformance2;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E424();
  sub_1BE04FB04();
  v37 = v33;
  sub_1BE04E424();
  v24 = v34;
  v25 = *(v35 + 48);
  v26 = *(v8 + 16);
  v26(v34, v15, v7);
  v26(&v24[v25], v11, v7);
  sub_1BE04F854();
  v27 = *(v8 + 8);
  v27(v11, v7);
  return (v27)(v15, v7);
}

uint64_t sub_1BD669054@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBD8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBB0);
  v12 = MEMORY[0x1EEE9AC00](v35, v11);
  v34 = &v33 - v13;
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2, v12);
  v14 = sub_1BE04B714();
  v16 = v15;
  (*(v3 + 8))(v6, v2);
  v18 = v1[1];
  v40 = *v1;
  v17 = v40;
  v41 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  v40 = v14;
  v41 = v16;
  v37 = &v40;
  v38 = 0x72616D6B63656863;
  v39 = 0xE90000000000006BLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
  sub_1BE051704();

  v40 = v17;
  v41 = v18;
  sub_1BE0516A4();
  v19 = v44;
  swift_getKeyPath();
  v40 = v19;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  swift_beginAccess();
  v20 = *(v19 + 32);
  sub_1BE048C84();

  v21 = *(v20 + 16);

  LOBYTE(v20) = v21 == 0;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  v24 = &v10[*(v7 + 36)];
  *v24 = KeyPath;
  v24[1] = sub_1BD185ABC;
  v24[2] = v23;
  sub_1BE052434();
  sub_1BD6741B0();
  v25 = v34;
  sub_1BE050DE4();

  sub_1BD0DE53C(v10, &qword_1EBD4EBD8);
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBC0);
  v26 = sub_1BD6740FC(&qword_1EBD4EBC8, &qword_1EBD4EBB0, &unk_1BE0EC810, sub_1BD6741B0);
  v27 = sub_1BE04F554();
  v28 = sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8]);
  v29 = v35;
  v40 = v35;
  v41 = v27;
  v42 = v26;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = sub_1BE04F844();
  v31 = sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0]);
  v40 = v29;
  v41 = v30;
  v42 = v26;
  v43 = v31;
  swift_getOpaqueTypeConformance2();
  sub_1BE0510B4();
  return sub_1BD0DE53C(v25, &qword_1EBD4EBB0);
}

id sub_1BD669630@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for TransactionPickerView(0);
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v10);
  v42 = &v40 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBD8);
  MEMORY[0x1EEE9AC00](v44, v12);
  v14 = &v40 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBB0);
  v16 = MEMORY[0x1EEE9AC00](v47, v15);
  v46 = &v40 - v17;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8068], v5, v16);
  result = PKPassKitBundle();
  if (result)
  {
    v19 = result;
    v20 = sub_1BE04B6F4();
    v22 = v21;

    (*(v6 + 8))(v9, v5);
    sub_1BD6732E8(v1, &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v24 = swift_allocObject();
    v25 = sub_1BD67334C(&v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    v49 = v20;
    v50 = v22;
    MEMORY[0x1EEE9AC00](v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    v27 = v42;
    sub_1BE051704();

    v28 = v1[1];
    v49 = *v1;
    v50 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
    sub_1BE0516A4();
    v29 = v53;
    swift_getKeyPath();
    v49 = v29;
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
    sub_1BE04B594();

    LOBYTE(v22) = *(v29 + 40);

    KeyPath = swift_getKeyPath();
    v31 = swift_allocObject();
    *(v31 + 16) = v22;
    (*(v43 + 32))(v14, v27, v45);
    v32 = &v14[*(v44 + 36)];
    *v32 = KeyPath;
    v32[1] = sub_1BD10DF54;
    v32[2] = v31;
    sub_1BE052434();
    sub_1BD6741B0();
    v33 = v46;
    sub_1BE050DE4();

    sub_1BD0DE53C(v14, &qword_1EBD4EBD8);
    sub_1BE051C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBC0);
    v34 = sub_1BD6740FC(&qword_1EBD4EBC8, &qword_1EBD4EBB0, &unk_1BE0EC810, sub_1BD6741B0);
    v35 = sub_1BE04F554();
    v36 = sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8]);
    v37 = v47;
    v49 = v47;
    v50 = v35;
    v51 = v34;
    v52 = v36;
    swift_getOpaqueTypeConformance2();
    v38 = sub_1BE04F844();
    v39 = sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0]);
    v49 = v37;
    v50 = v38;
    v51 = v34;
    v52 = v39;
    swift_getOpaqueTypeConformance2();
    sub_1BE0510B4();
    return sub_1BD0DE53C(v33, &qword_1EBD4EBB0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD669D50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a1;
  v44 = a2;
  v2 = sub_1BE04F844();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB48);
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB68);
  v16 = *(v15 - 8);
  v39 = v15;
  v40 = v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v37 - v19;
  (*(v7 + 104))(v10, *MEMORY[0x1E69B80D8], v6, v18);
  v21 = sub_1BE04B714();
  v23 = v22;
  (*(v7 + 8))(v10, v6);
  v46 = v21;
  v47 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAE0);
  v25 = sub_1BD672F14();
  v26 = sub_1BD0DDEBC();
  v27 = MEMORY[0x1E69E6158];
  sub_1BE050B74();

  v45 = v37;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB70);
  v46 = v24;
  v47 = v27;
  v48 = v25;
  v49 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB78);
  v31 = sub_1BD0DE4F4(&qword_1EBD4EB80, &qword_1EBD4EB78);
  v46 = v30;
  v47 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  sub_1BE051024();
  (*(v38 + 8))(v14, v11);
  v33 = v41;
  sub_1BE04F834();
  v46 = v11;
  v47 = v28;
  v48 = OpaqueTypeConformance2;
  v49 = v32;
  swift_getOpaqueTypeConformance2();
  sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0]);
  v34 = v39;
  v35 = v42;
  sub_1BE050864();
  (*(v43 + 8))(v33, v35);
  return (*(v40 + 8))(v20, v34);
}

uint64_t sub_1BD66A22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - v8;
  sub_1BE04FB04();
  v25 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBA8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBB0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBB8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBC0);
  v12 = sub_1BD6740FC(&qword_1EBD4EBC8, &qword_1EBD4EBB0, &unk_1BE0EC810, sub_1BD6741B0);
  v13 = sub_1BE04F554();
  v14 = sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8]);
  v26 = v10;
  v27 = v13;
  v28 = v12;
  v29 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_1BE04F844();
  v17 = sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0]);
  v26 = v10;
  v27 = v16;
  v28 = v12;
  v29 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v26 = v10;
  v27 = MEMORY[0x1E6981CD8];
  v28 = v22;
  v29 = v11;
  v30 = v12;
  v31 = MEMORY[0x1E6981CD0];
  v32 = OpaqueTypeConformance2;
  v33 = v18;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E424();
  v19 = sub_1BD0DE4F4(&qword_1EBD4EB80, &qword_1EBD4EB78);
  MEMORY[0x1BFB3CC50](v9, v5, v19);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BD66A570@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  *a2 = *(v3 + 41);
  return result;
}

uint64_t sub_1BD66A618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  v2 = type metadata accessor for TransactionPickerView(0);
  v52 = *(v2 - 8);
  v51 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v49 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v50 = v44 - v7;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *MEMORY[0x1E69B80D8];
  v15 = *(v9 + 104);
  v15(v13, v14, v8, v11);
  v16 = sub_1BE04B714();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v13, v8);
  v55 = v16;
  v56 = v18;
  sub_1BD0DDEBC();
  v20 = sub_1BE0506C4();
  v47 = v21;
  v48 = v20;
  v45 = v22;
  v46 = v23;
  (v15)(v13, v14, v8);
  v24 = sub_1BE04B714();
  v26 = v25;
  v19(v13, v8);
  v55 = v24;
  v56 = v26;
  v27 = sub_1BE0506C4();
  v44[2] = v28;
  v44[3] = v27;
  v44[0] = v29 & 1;
  v44[1] = v30;
  (v15)(v13, v14, v8);
  v31 = sub_1BE04B714();
  v33 = v32;
  v19(v13, v8);
  v55 = v31;
  v56 = v33;
  v34 = sub_1BE0506C4();
  v36 = v35;
  LOBYTE(v18) = v37;
  v38 = v49;
  sub_1BD6732E8(v53, v49);
  v39 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v40 = swift_allocObject();
  sub_1BD67334C(v38, v40 + v39);
  v41 = v50;
  sub_1BE051194();
  sub_1BD0DDF10(v34, v36, v18 & 1);

  v42 = sub_1BE0511A4();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  return sub_1BE051174();
}

uint64_t sub_1BD66AA58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  if (*(v3 + 41))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v1);
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
    sub_1BE04B584();
  }

  else
  {
    *(v3 + 41) = 0;
  }
}

uint64_t sub_1BD66AB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1BE0528A4();
  v3[6] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD66AC34, v5, v4);
}

uint64_t sub_1BD66AC34()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1BD0F8798;

  return sub_1BD66FE50();
}

uint64_t sub_1BD66ACF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = *(a3 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  swift_getKeyPath();
  v7[0] = v6;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  v7[0] = *(v6 + 16);
  swift_bridgeObjectRetain_n();
  sub_1BE048964();
  sub_1BD673EC0(v7, v6);

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v4);
  v7[0] = v6;
  sub_1BE04B584();
}

uint64_t sub_1BD66AEB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  swift_beginAccess();
  *a2 = *(v3 + 32);
  return sub_1BE048C84();
}

uint64_t sub_1BD66AF74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC90);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC98);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v40 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECA0);
  v44 = *(v49 - 8);
  v14 = v44;
  MEMORY[0x1EEE9AC00](v49, v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v40 - v20;
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECA8);
  sub_1BD6743F4();
  v43 = v21;
  sub_1BE051A44();
  v50 = a1;
  *v6 = sub_1BE04F504();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECE8);
  sub_1BD66CAD0(a1, &v6[*(v22 + 44)]);
  v23 = &v6[*(v3 + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
  v25 = sub_1BE0505C4();
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  *v23 = swift_getKeyPath();
  sub_1BD67461C();
  v41 = v13;
  sub_1BE051A24();
  v26 = *(v14 + 16);
  v42 = v17;
  v27 = v49;
  v26(v17, v21, v49);
  v28 = v45;
  v29 = v46;
  v30 = *(v46 + 16);
  v31 = v13;
  v32 = v47;
  v30(v45, v31, v47);
  v33 = v48;
  v26(v48, v17, v27);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED08);
  v35 = v28;
  v30(&v33[*(v34 + 48)], v28, v32);
  v36 = *(v29 + 8);
  v36(v41, v32);
  v37 = *(v44 + 8);
  v38 = v49;
  v37(v43, v49);
  v36(v35, v32);
  return (v37)(v42, v38);
}

uint64_t sub_1BD66B394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for TransactionPickerView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EDA8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BE0B69E0;
  v8 = *(a1 + 8);
  v19 = *a1;
  v20 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  v9 = v18[6];
  v10 = [objc_opt_self() presentationInformationForTransaction:v9 transactionSource:v18[10] secondaryTransactionSource:0 familyMember:0 account:v18[11] deviceName:0 context:1];
  [v10 setBadgeString_];
  type metadata accessor for TransactionPresentation();
  swift_allocObject();
  v11 = v10;
  v12 = v9;
  v13 = sub_1BD6AF5A8(v12, v11, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  [v19 setShouldShowDisclosure_];

  *(v7 + 32) = v13;
  v19 = v7;
  sub_1BD6732E8(a1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_1BD67334C(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECC0);
  sub_1BD0DE4F4(&qword_1EBD4ED90, &qword_1EBD4ED88);
  sub_1BD6740FC(&qword_1EBD4ECB8, &qword_1EBD4ECC0, &unk_1BE0EC9D8, sub_1BD6744A4);
  sub_1BD674AC0();
  return sub_1BE0519D4();
}

id sub_1BD66B6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = a2;
  v71 = sub_1BE04F6E4();
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v5);
  v67 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v70 = &v62 - v9;
  v10 = sub_1BE04E354();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v62 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECC0);
  MEMORY[0x1EEE9AC00](v66, v19);
  v74 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v65 = &v62 - v23;
  type metadata accessor for TransactionPresentation();
  sub_1BD673298(&qword_1EBD3B840, type metadata accessor for TransactionPresentation);
  sub_1BE048964();
  v24 = sub_1BE04E954();
  v26 = v25;
  sub_1BD6AE91C();
  sub_1BD666D84(v18);
  (*(v11 + 104))(v14, *MEMORY[0x1E697DBB8], v10);
  v27 = sub_1BE04E344();
  v28 = *(v11 + 8);
  v28(v14, v10);
  v28(v18, v10);
  v29 = objc_opt_self();
  v30 = &selRef_systemBackgroundColor;
  if ((v27 & 1) == 0)
  {
    v30 = &selRef_secondarySystemBackgroundColor;
  }

  v31 = [v29 *v30];
  v32 = sub_1BE0511C4();
  *&v82 = swift_getKeyPath();
  *(&v82 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41A98);
  sub_1BD306A90();
  v33 = sub_1BE0518D4();
  v84 = 0;
  *&v82 = v24;
  *(&v82 + 1) = v26;
  *&v83[0] = v33;
  memset(v83 + 8, 0, 33);
  v68 = v3;
  v35 = *v3;
  v34 = v3[1];
  *&v79[0] = v35;
  *(&v79[0] + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  v36 = v81;
  swift_getKeyPath();
  *&v79[0] = v36;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  swift_beginAccess();
  v37 = *(v36 + 32);
  sub_1BE048C84();

  v38 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction;
  v72 = a1;
  result = [*(a1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) identifier];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v40 = result;
  v63 = v34;
  v64 = v35;
  v41 = sub_1BE052434();
  v43 = v42;

  LOBYTE(v40) = sub_1BD6CC230(v41, v43, v37);

  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EDA0);
    v44 = v73;
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1BE0B69E0;
    sub_1BE04F6B4();
    *&v79[0] = v45;
    sub_1BD673298(&qword_1EBD3E638, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640);
    sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640);
    v46 = v70;
    v47 = v71;
    sub_1BE053664();
  }

  else
  {
    *&v79[0] = MEMORY[0x1E69E7CC0];
    sub_1BD673298(&qword_1EBD3E638, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640);
    sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640);
    v46 = v70;
    v47 = v71;
    sub_1BE053664();
    v44 = v73;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECD0);
  sub_1BD6744A4();
  sub_1BE050DA4();
  v48 = v46;
  v49 = *(v44 + 8);
  v49(v48, v47);
  v79[0] = v82;
  v79[1] = v83[0];
  v80[0] = v83[1];
  *(v80 + 9) = *(&v83[1] + 9);
  sub_1BD0DE53C(v79, &qword_1EBD4ECD0);
  v77 = v64;
  v78 = v63;
  sub_1BE0516A4();
  v50 = v75;
  swift_getKeyPath();
  v77 = v50;
  sub_1BE04B594();

  swift_beginAccess();
  v51 = *(v50 + 32);
  sub_1BE048C84();

  result = [*(v72 + v38) identifier];
  if (!result)
  {
    goto LABEL_13;
  }

  v52 = result;
  v53 = sub_1BE052434();
  v55 = v54;

  LOBYTE(v52) = sub_1BD6CC230(v53, v55, v51);

  if (v52)
  {
    v75 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EDA0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1BE0B69E0;
    sub_1BE04F6B4();
    v75 = v56;
  }

  sub_1BD673298(&qword_1EBD3E638, MEMORY[0x1E697F5E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640);
  sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640);
  v57 = v67;
  sub_1BE053664();
  v58 = v65;
  v59 = v74;
  sub_1BE04EBC4();
  v49(v57, v47);
  sub_1BD0DE53C(v59, &qword_1EBD4ECC0);
  sub_1BD66C6D8();
  v75 = v60;
  v76 = v61;
  sub_1BD0DDEBC();
  sub_1BE04EB84();

  return sub_1BD0DE53C(v58, &qword_1EBD4ECC0);
}

uint64_t sub_1BD66C0F8(uint64_t a1)
{
  v2 = type metadata accessor for TransactionPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v13 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  swift_getKeyPath();
  v12 = v11;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  v6 = *(v11 + 16);
  sub_1BE048C84();

  v12 = v6;
  sub_1BD6732E8(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1BD67334C(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ECC0);
  sub_1BD0DE4F4(&qword_1EBD4ED90, &qword_1EBD4ED88);
  sub_1BD6740FC(&qword_1EBD4ECB8, &qword_1EBD4ECC0, &unk_1BE0EC9D8, sub_1BD6744A4);
  sub_1BD674AC0();
  return sub_1BE0519D4();
}

uint64_t sub_1BD66C378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F7B4();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB08) + 36);
  sub_1BD66C43C(v5);
  v6 = sub_1BE04E564();
  v7 = MEMORY[0x1BFB3D2D0]((2 * v6));
  v8 = sub_1BE04EC74();
  v9 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB38) + 36);
  *v9 = v8;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 17) = v7;
  *(v9 + 24) = v4;

  return sub_1BD092570(a1, a2);
}

uint64_t sub_1BD66C43C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC08);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC10);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC18);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v27 - v16;
  *v7 = sub_1BE04F7B4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC20);
  sub_1BD66DD50(v2, &v7[*(v18 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v7, v12, &qword_1EBD4EC08);
  v19 = &v12[*(v9 + 44)];
  v20 = v27[5];
  *(v19 + 4) = v27[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v27[6];
  v21 = v27[1];
  *v19 = v27[0];
  *(v19 + 1) = v21;
  v22 = v27[3];
  *(v19 + 2) = v27[2];
  *(v19 + 3) = v22;
  v23 = &v17[*(v14 + 44)];
  sub_1BE051BA4();
  LOBYTE(v14) = sub_1BE0501D4();
  v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD596C0) + 36)] = v14;
  sub_1BD0DE204(v12, v17, &qword_1EBD4EC10);
  v24 = sub_1BE04EC74();
  LOBYTE(v14) = sub_1BE0501F4();
  sub_1BD0DE204(v17, a1, &qword_1EBD4EC18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC28);
  v26 = a1 + *(result + 36);
  *v26 = v24;
  *(v26 + 8) = v14;
  return result;
}

void sub_1BD66C6D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v0 = [v27 primaryString];

  if (v0)
  {
    v1 = sub_1BE052434();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  v29 = v1;
  v30 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v4 = [v27 secondaryString];

  if (v4)
  {
    v5 = sub_1BE052434();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v31 = v5;
  v32 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v8 = [v27 tertiaryString];

  if (v8)
  {
    v9 = sub_1BE052434();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v33 = v9;
  v34 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v12 = [v27 valueString];

  if (v12)
  {
    v13 = sub_1BE052434();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = 0;
  v35 = v13;
  v36 = v15;
  v17 = MEMORY[0x1E69E7CC0];
LABEL_14:
  if (v16 <= 4)
  {
    v18 = 4;
  }

  else
  {
    v18 = v16;
  }

  v19 = v18 + 1;
  v20 = 16 * v16 + 40;
  while (1)
  {
    if (v16 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
      sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0);
      sub_1BE0522E4();

      return;
    }

    if (v19 == ++v16)
    {
      break;
    }

    v21 = v20 + 16;
    v22 = *&v28[v20];
    v20 += 16;
    if (v22)
    {
      v23 = *&v28[v21 - 24];
      sub_1BE048C84();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1BD03B038(0, *(v17 + 2) + 1, 1, v17);
      }

      v25 = *(v17 + 2);
      v24 = *(v17 + 3);
      if (v25 >= v24 >> 1)
      {
        v17 = sub_1BD03B038((v24 > 1), v25 + 1, 1, v17);
      }

      *(v17 + 2) = v25 + 1;
      v26 = &v17[16 * v25];
      *(v26 + 4) = v23;
      *(v26 + 5) = v22;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1BD66CAD0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED10);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v3);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v42 = &v35 - v7;
  v8 = type metadata accessor for TransactionPickerView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v37 = *(v12 - 8);
  v13 = v37;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  sub_1BD6732E8(a1, &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  sub_1BD67334C(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v44 = a1;
  v36 = v20;
  sub_1BE051704();
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED20);
  sub_1BD674728();
  sub_1BD0DE4F4(&qword_1EBD4ED48, &qword_1EBD4ED20);
  v23 = v42;
  sub_1BE0504F4();
  v24 = *(v13 + 16);
  v24(v16, v20, v12);
  v26 = v38;
  v25 = v39;
  v27 = *(v38 + 16);
  v28 = v41;
  v27(v39, v23, v41);
  v29 = v40;
  v24(v40, v16, v12);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED50);
  v31 = &v29[*(v30 + 48)];
  *v31 = 0;
  v31[8] = 1;
  v27(&v29[*(v30 + 64)], v25, v28);
  v32 = *(v26 + 8);
  v32(v42, v28);
  v33 = *(v37 + 8);
  v33(v36, v12);
  v32(v25, v28);
  return (v33)(v16, v12);
}

uint64_t sub_1BD66CF28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  swift_beginAccess();
  v0 = *(v4 + 32);
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();

  v1 = *(v4 + 24);
  sub_1BE048C84();
  v2 = sub_1BD6726BC(v0, v1);

  sub_1BE0516A4();
  if (v2)
  {
    sub_1BD67183C();
  }

  else
  {
    sub_1BD6716CC();
  }
}

id sub_1BD66D0D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - v10;
  v12 = a1[1];
  v32 = *a1;
  v33 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  v13 = v30;
  swift_getKeyPath();
  v32 = v13;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  swift_beginAccess();
  v14 = *(v13 + 32);
  swift_getKeyPath();
  v30 = v13;
  sub_1BE048C84();
  sub_1BE04B594();

  v15 = *(v13 + 24);
  sub_1BE048C84();
  v16 = sub_1BD6726BC(v14, v15);

  v17 = *MEMORY[0x1E69B80D8];
  v18 = *(v4 + 104);
  if (v16)
  {
    v18(v11, v17, v3);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v21 = sub_1BE04B6F4();
      v23 = v22;
LABEL_6:

      (*(v4 + 8))(v11, v3);
      v30 = v21;
      v31 = v23;
      sub_1BD0DDEBC();
      result = sub_1BE0506C4();
      v25 = v29;
      *v29 = result;
      v25[1] = v26;
      *(v25 + 16) = v27 & 1;
      v25[3] = v28;
      return result;
    }

    __break(1u);
  }

  else
  {
    v18(v7, v17, v3);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v21 = sub_1BE04B6F4();
      v23 = v24;
      v11 = v7;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD66D3FC()
{
  sub_1BE04F624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516C4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB98);
  sub_1BE051904();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED60);
  sub_1BD672E14();
  sub_1BD674970();
  return sub_1BE0517F4();
}

uint64_t sub_1BD66D56C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  *a2 = *(v3 + 42);
  return result;
}

uint64_t sub_1BD66D614()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED70);
  sub_1BD0DE4F4(&qword_1EBD4ED78, &qword_1EBD4EAB0);
  sub_1BD672E14();
  swift_getOpaqueTypeConformance2();
  sub_1BD674A34();
  return sub_1BE0519D4();
}

uint64_t sub_1BD66D744@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1BD66D7B0(*a1);
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

id sub_1BD66D7B0(char a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v17 - v9;
  v12 = *MEMORY[0x1E69B80D8];
  v13 = *(v3 + 104);
  if (a1)
  {
    v13(v6, v12, v2, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
      v11 = v6;
LABEL_6:

      (*(v3 + 8))(v11, v2);
      return v16;
    }

    __break(1u);
  }

  else
  {
    v13(&v17 - v9, v12, v2, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

int *sub_1BD66D97C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v31 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED58);
  v10 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v11);
  v13 = &v31 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED38);
  v15 = MEMORY[0x1EEE9AC00](v32, v14);
  v17 = &v31 - v16;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1, v15);
  result = PKPassKitBundle();
  if (result)
  {
    v19 = result;
    v20 = sub_1BE04B6F4();
    v22 = v21;

    (*(v2 + 8))(v5, v1);
    v37 = v20;
    v38 = v22;
    sub_1BD0DDEBC();
    sub_1BE051624();
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    sub_1BD67491C();
    v23 = v35;
    sub_1BE050864();
    (*(v34 + 8))(v9, v23);
    v24 = sub_1BE0502A4();
    KeyPath = swift_getKeyPath();
    (*(v10 + 32))(v17, v13, v33);
    v26 = &v17[*(v32 + 36)];
    *v26 = KeyPath;
    v26[1] = v24;
    v27 = sub_1BE0511D4();
    v28 = swift_getKeyPath();
    v29 = v36;
    sub_1BD09260C(v17, v36);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED18);
    v30 = (v29 + result[9]);
    *v30 = v28;
    v30[1] = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD66DD50@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC30);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v66 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC38);
  MEMORY[0x1EEE9AC00](v66, v8);
  v68 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v66 - v16;
  v67 = sub_1BE051994();
  v18 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v66 - v24;
  sub_1BE051984();
  *v7 = sub_1BE04F7B4();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC40);
  sub_1BD66E1FC(a1, &v7[*(v26 + 44)]);
  v27 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC48) + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v38 = &v7[*(v4 + 44)];
  *v38 = v37;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v44 = sub_1BE050204();
  *(inited + 32) = v44;
  v45 = sub_1BE050224();
  *(inited + 33) = v45;
  v46 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v44)
  {
    v46 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v45)
  {
    v46 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_1BD0DE204(v7, v13, &qword_1EBD4EC30);
  v55 = &v13[*(v66 + 36)];
  *v55 = v46;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  sub_1BD0DE204(v13, v17, &qword_1EBD4EC38);
  v56 = v18;
  v57 = *(v18 + 16);
  v58 = v67;
  v57(v21, v25, v67);
  v59 = v68;
  sub_1BD0DE19C(v17, v68, &qword_1EBD4EC38);
  v70 = 1;
  v60 = v69;
  v57(v69, v21, v58);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC50);
  sub_1BD0DE19C(v59, &v60[*(v61 + 48)], &qword_1EBD4EC38);
  v62 = &v60[*(v61 + 64)];
  v63 = v70;
  *v62 = 0;
  v62[8] = v63;
  sub_1BD0DE53C(v17, &qword_1EBD4EC38);
  v64 = *(v56 + 8);
  v64(v25, v58);
  sub_1BD0DE53C(v59, &qword_1EBD4EC38);
  return (v64)(v21, v58);
}

uint64_t sub_1BD66E1FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC58);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v43 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v42 = v41 - v9;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *MEMORY[0x1E69B80D8], v10, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BE0B69E0;
  v41[1] = a1;
  v17 = a1[1];
  v46 = *a1;
  v47 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  v18 = v44;
  swift_getKeyPath();
  v46 = v18;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  swift_beginAccess();
  v19 = *(v18 + 32);
  sub_1BE048C84();

  v20 = *(v19 + 16);

  v21 = MEMORY[0x1E69E65A8];
  *(v16 + 56) = MEMORY[0x1E69E6530];
  *(v16 + 64) = v21;
  *(v16 + 32) = v20;
  v22 = sub_1BE04B714();
  v24 = v23;

  (*(v11 + 8))(v15, v10);
  v44 = v22;
  v45 = v24;
  sub_1BD0DDEBC();
  v25 = sub_1BE0506C4();
  v27 = v26;
  v29 = v28;
  sub_1BE0502A4();
  sub_1BE050334();

  v30 = sub_1BE0505F4();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_1BD0DDF10(v25, v27, v29 & 1);

  v37 = v42;
  sub_1BD66E610(v42);
  v38 = v43;
  sub_1BD0DE19C(v37, v43, &qword_1EBD4EC58);
  *a2 = v30;
  *(a2 + 8) = v32;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC60);
  sub_1BD0DE19C(v38, a2 + *(v39 + 48), &qword_1EBD4EC58);
  sub_1BD0D7F18(v30, v32, v34 & 1);
  sub_1BE048C84();
  sub_1BD0DE53C(v37, &qword_1EBD4EC58);
  sub_1BD0DE53C(v38, &qword_1EBD4EC58);
  sub_1BD0DDF10(v30, v32, v34 & 1);
}

uint64_t sub_1BD66E610@<X0>(uint64_t a1@<X8>)
{
  v23 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC68);
  sub_1BD674360();
  sub_1BE051704();
  v3 = sub_1BE0511D4();
  v4 = sub_1BE0501D4();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC78) + 36);
  *v5 = v3;
  *(v5 + 8) = v4;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC80) + 36));
  *v6 = v23;
  v6[1] = v24;
  v6[2] = v25;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC88) + 36));
  v8 = *(sub_1BE04EDE4() + 20);
  v9 = *MEMORY[0x1E697F468];
  v10 = sub_1BE04F684();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  __asm { FMOV            V0.2D, #10.0 }

  *v7 = _Q0;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
  sub_1BE0516A4();
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  swift_beginAccess();
  v16 = *(v22 + 32);
  sub_1BE048C84();

  v17 = *(v16 + 16);

  LOBYTE(v7) = v17 == 0;
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EC58);
  v21 = (a1 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_1BD185ABC;
  v21[2] = v19;
  return result;
}

double sub_1BD66E918@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80D8], v2, v5);
  v8 = sub_1BE04B714();
  v10 = v9;
  (*(v3 + 8))(v7, v2);
  *&v28 = v8;
  *(&v28 + 1) = v10;
  sub_1BD0DDEBC();
  v11 = sub_1BE0506C4();
  v13 = v12;
  LOBYTE(v8) = v14;
  *&v28 = sub_1BE051424();
  v15 = sub_1BE050574();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1BD0DDF10(v11, v13, v8 & 1);

  sub_1BE051CD4();
  sub_1BE04EE54();
  v35 = v19 & 1;
  v22 = sub_1BE0501D4();
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  v23 = v33;
  *(a1 + 96) = v32;
  *(a1 + 112) = v23;
  *(a1 + 128) = v34;
  v24 = v29;
  *(a1 + 32) = v28;
  *(a1 + 48) = v24;
  v25 = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v25;
  *(a1 + 144) = v22;
  result = 0.0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 1;
  return result;
}

uint64_t sub_1BD66EB80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB90);
  sub_1BE0516A4();
  (*(v1 + 64))(0);
}

uint64_t sub_1BD66EBE8()
{
  v0 = sub_1BE04F844();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F834();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBB0);
  sub_1BD6740FC(&qword_1EBD4EBC8, &qword_1EBD4EBB0, &unk_1BE0EC810, sub_1BD6741B0);
  sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0]);
  sub_1BE050864();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BD66ED5C()
{
  v0 = sub_1BE04F554();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EBB0);
  sub_1BD6740FC(&qword_1EBD4EBC8, &qword_1EBD4EBB0, &unk_1BE0EC810, sub_1BD6741B0);
  sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8]);
  sub_1BE050864();
  return (*(v1 + 8))(v4, v0);
}

void sub_1BD66EED4(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD66EF44()
{
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  return sub_1BE048C84();
}

uint64_t sub_1BD66EFE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  *a2 = *(v3 + 16);
  return sub_1BE048C84();
}

uint64_t sub_1BD66F094()
{
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B584();
}

uint64_t sub_1BD66F160()
{
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  return sub_1BE048C84();
}

uint64_t sub_1BD66F204@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  *a2 = *(v3 + 24);
  return sub_1BE048C84();
}

uint64_t sub_1BD66F2B0(uint64_t a1)
{
  v3 = sub_1BE048C84();
  v4 = sub_1BD843148(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD66F404()
{
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD66F4BC(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_1BE048C84();
  v4 = sub_1BD843148(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD66F604()
{
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  return *(v0 + 40);
}

uint64_t sub_1BD66F6A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1BD66F74C(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD66F85C()
{
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  return *(v0 + 41);
}

uint64_t sub_1BD66F8FC(uint64_t result)
{
  if (*(v1 + 41) == (result & 1))
  {
    *(v1 + 41) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD66FA0C()
{
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  return *(v0 + 42);
}

uint64_t sub_1BD66FAAC(uint64_t result)
{
  if (*(v1 + 42) == (result & 1))
  {
    *(v1 + 42) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD66FBBC()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v0;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  swift_beginAccess();
  v7 = *(*(v0 + 32) + 16);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BE0B69E0;
    swift_getKeyPath();
    v13 = v1;
    sub_1BE04B594();

    v9 = *(*(v1 + 32) + 16);
    v10 = MEMORY[0x1E69E65A8];
    *(v8 + 56) = MEMORY[0x1E69E6530];
    *(v8 + 64) = v10;
    *(v8 + 32) = v9;
    v11 = sub_1BE04B714();
  }

  else
  {
    v11 = sub_1BE04B714();
  }

  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t sub_1BD66FE50()
{
  v1[37] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770);
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  sub_1BE0528A4();
  v1[41] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[42] = v4;
  v1[43] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD66FF50, v4, v3);
}

uint64_t sub_1BD66FF50()
{
  v1 = v0[37];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtCV9PassKitUIP33_423F4157925DE25913FA4028798C2C6F21TransactionPickerView9ViewModel___observationRegistrar;
  v0[27] = v1;
  v0[44] = v2;
  v0[45] = sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  if (*(v1 + 40))
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[37];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v0[28] = v5;
    sub_1BE04B584();
    v0[46] = 0;

    v7 = *(v5 + 104);
    v8 = *(v5 + 48);
    v0[47] = v8;
    v9 = sub_1BE052A24();
    v0[48] = v9;
    v0[2] = v0;
    v0[7] = v0 + 29;
    v0[3] = sub_1BD670210;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD9C18BC;
    v0[13] = &block_descriptor_145_0;
    v0[14] = v10;
    [v7 transactionsRelatedToTransaction:v8 transactionSourceIdentifiers:v9 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1BD670210()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1BD670318, v2, v1);
}

id sub_1BD670318()
{
  v2 = v0[48];

  v3 = v0[29];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v62 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v1 = 0;
    v57 = v0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](v1, v4);
      }

      else
      {
        if (v1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v7 = *(v4 + 8 * v1 + 32);
      }

      v8 = v7;
      v9 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if ((PKPaymentTransactionCategoryAccessLevel() & 4) != 0)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        v0 = v57;
      }

      else
      {
      }

      ++v1;
      if (v9 == i)
      {
        v61 = v62;
        v6 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v61 = MEMORY[0x1E69E7CC0];
LABEL_19:

  if (v61 < 0 || (v61 & 0x4000000000000000) != 0)
  {
    v10 = sub_1BE053704();
    if (v10)
    {
      goto LABEL_22;
    }

LABEL_33:

    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v10 = *(v61 + 16);
  if (!v10)
  {
    goto LABEL_33;
  }

LABEL_22:
  v63 = v6;
  sub_1BE0538E4();
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  v11 = v0[39];
  v12 = v0[37];
  v13 = 0;
  v60 = objc_opt_self();
  v58 = *(v12 + 80);
  v59 = *(v12 + 88);
  v14 = (v11 + 32);
  do
  {
    if ((v61 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1BFB40900](v13, v61);
    }

    else
    {
      v15 = *(v61 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v0[40];
    v18 = v0[38];
    ++v13;
    v19 = [v60 presentationInformationForTransaction:v15 transactionSource:v58 secondaryTransactionSource:0 familyMember:0 account:v59 deviceName:0 context:1];
    [v19 setBadgeString_];
    type metadata accessor for TransactionPresentation();
    v20 = swift_allocObject();
    v21 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation__icon;
    v0[30] = 0;
    v22 = v16;
    v23 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00);
    sub_1BE04D874();
    (*v14)(v20 + v21, v17, v18);
    v24 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_iconGenerator;
    *(v20 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) = v22;
    *(v20 + v24) = 0;
    swift_beginAccess();
    v0[31] = v23;
    sub_1BD2B02A0();
    v25 = v22;
    v26 = v23;
    sub_1BE04D874();
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    v0[32] = 0;
    sub_1BE048964();
    sub_1BE04D8C4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v27 = v0[33];
    [v27 setShouldShowDisclosure_];

    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
  }

  while (v10 != v13);

  v28 = v63;
LABEL_34:
  v29 = v0[37];
  swift_getKeyPath();
  v30 = swift_task_alloc();
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;
  v0[34] = v29;
  sub_1BE04B584();

  swift_getKeyPath();
  v0[35] = v29;
  sub_1BE04B594();

  v31 = *(v29 + 16);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (!v32)
  {
LABEL_41:
    v44 = v0[47];
    v45 = sub_1BD537298(v33);

    sub_1BD66F2B0(v45);
    v46 = [v44 identifier];
    if (v46)
    {
      v47 = v46;
      v10 = sub_1BE052434();
      v1 = v48;

      v0[22] = v10;
      v0[23] = v1;
      if (v1)
      {
        sub_1BE048C84();
        v4 = MEMORY[0x1E69E7CC0];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_44:
          v50 = *(v4 + 16);
          v49 = *(v4 + 24);
          if (v50 >= v49 >> 1)
          {
            v4 = sub_1BD03B038((v49 > 1), v50 + 1, 1, v4);
          }

          *(v4 + 16) = v50 + 1;
          v51 = v4 + 16 * v50;
          *(v51 + 32) = v10;
          *(v51 + 40) = v1;
          goto LABEL_49;
        }

LABEL_56:
        v4 = sub_1BD03B038(0, *(v4 + 16) + 1, 1, v4);
        goto LABEL_44;
      }
    }

    else
    {
      v0[22] = 0;
      v0[23] = 0;
    }

    v4 = MEMORY[0x1E69E7CC0];
LABEL_49:
    v52 = v0[37];
    sub_1BD0DE53C((v0 + 22), &qword_1EBD3A5C8);
    v53 = sub_1BD537298(v4);

    sub_1BD66F4BC(v53);
    if (*(v52 + 40) == 1)
    {
      v54 = v0[37];
      swift_getKeyPath();
      v55 = swift_task_alloc();
      *(v55 + 16) = v54;
      *(v55 + 24) = 0;
      v0[36] = v54;
      sub_1BE04B584();
    }

    else
    {
      *(v0[37] + 40) = 0;
    }

    v56 = v0[1];

    return v56();
  }

  v64 = MEMORY[0x1E69E7CC0];
  sub_1BE048C84();
  sub_1BD03B254(0, v32, 0);
  v34 = 32;
  v33 = v64;
  while (1)
  {
    v35 = *(*(v31 + v34) + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction);
    swift_retain_n();
    result = [v35 identifier];
    if (!result)
    {
      break;
    }

    v37 = result;
    v38 = sub_1BE052434();
    v40 = v39;

    v42 = *(v64 + 16);
    v41 = *(v64 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_1BD03B254((v41 > 1), v42 + 1, 1);
    }

    *(v64 + 16) = v42 + 1;
    v43 = v64 + 16 * v42;
    *(v43 + 32) = v38;
    *(v43 + 40) = v40;
    v34 += 8;
    if (!--v32)
    {

      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD670B34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - v4;
  swift_getKeyPath();
  v14 = v0;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  if ((*(v0 + 40) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    *(&v13 - 2) = v0;
    *(&v13 - 8) = 1;
    v14 = v0;
    sub_1BE04B584();

    v9 = sub_1BE0528D4();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    sub_1BE0528A4();
    sub_1BE048964();
    v10 = sub_1BE052894();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v1;
    sub_1BD122C00(0, 0, v5, &unk_1BE0ECB80, v11);
  }

  return result;
}

uint64_t sub_1BD670D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a4;
  v5 = sub_1BE04D214();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  sub_1BE0528A4();
  v4[29] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[30] = v7;
  v4[31] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD670E60, v7, v6);
}

uint64_t sub_1BD670E60()
{
  v1 = v0[25];
  swift_getKeyPath();
  v0[21] = v1;
  v0[32] = OBJC_IVAR____TtCV9PassKitUIP33_423F4157925DE25913FA4028798C2C6F21TransactionPickerView9ViewModel___observationRegistrar;
  v0[33] = sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  swift_beginAccess();
  if (*(*(v1 + 32) + 16))
  {
    v2 = v0[25];
    swift_getKeyPath();
    v0[22] = v2;
    sub_1BE04B594();

    v0[34] = *(v1 + 32);
    v3 = v2[12];
    v4 = v2[13];
    sub_1BE048C84();
    v5 = sub_1BE052A24();
    v0[35] = v5;
    v6 = v2[14];
    v0[2] = v0;
    v0[3] = sub_1BD6710F0;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EDB0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD671620;
    v0[13] = &block_descriptor_150;
    v0[14] = v7;
    [v4 updatePreferredCategory:v3 forTransactionsWithIdentifiers:v5 paymentPass:v6 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v8 = v0[25];

    (*(v8 + 64))(0);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1BD6710F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = *(v1 + 240);
    v4 = *(v1 + 248);
    v5 = sub_1BD67128C;
  }

  else
  {

    v3 = *(v1 + 240);
    v4 = *(v1 + 248);
    v5 = sub_1BD671208;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD671208()
{
  v1 = v0[35];
  v2 = v0[25];

  (*(v2 + 64))(1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD67128C()
{
  v30 = v0;
  v2 = v0[35];
  v1 = v0[36];

  swift_willThrow();

  sub_1BE04D1E4();
  sub_1BE048C84();
  v3 = v1;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[36];
    v26 = v0[27];
    v27 = v0[26];
    v28 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v7 = 136315394;
    v10 = sub_1BE052A44();
    v12 = v11;

    v13 = sub_1BD123690(v10, v12, &v29);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_1BD026000, v4, v5, "Failed to update transaction categories:%s error: %@", v7, 0x16u);
    sub_1BD0DE53C(v8, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);

    (*(v26 + 8))(v28, v27);
  }

  else
  {
    v17 = v0[27];
    v16 = v0[28];
    v18 = v0[26];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[25];
  if (*(v19 + 40))
  {
    swift_getKeyPath();
    v20 = swift_task_alloc();
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    v0[24] = v19;
    sub_1BE04B584();
  }

  else
  {
    *(v19 + 40) = 0;
  }

  v21 = v0[25];
  v22 = v0[36];
  if (*(v21 + 41) == 1)
  {

    *(v21 + 41) = 1;
  }

  else
  {
    swift_getKeyPath();
    v23 = swift_task_alloc();
    *(v23 + 16) = v21;
    *(v23 + 24) = 1;
    v0[23] = v21;
    sub_1BE04B584();
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1BD671620(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x1EEE6DEE8](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1BD6716CC()
{
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  v1 = *(v0 + 24);
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  sub_1BD4C0580(v1);
  swift_endAccess();
  swift_getKeyPath();
  sub_1BE04B5A4();
}

uint64_t sub_1BD67183C()
{
  swift_getKeyPath();
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  v1 = *(v0 + 24);
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  sub_1BD53540C(v1);
  swift_endAccess();

  swift_getKeyPath();
  sub_1BE04B5A4();
}

id sub_1BD6719B4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v72 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v70 - v12);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v70 - v20;
  v22 = *a1;
  v74 = *a2;
  swift_getKeyPath();
  v75 = a3;
  sub_1BD673298(&qword_1EBD4EBA0, type metadata accessor for TransactionPickerView.ViewModel);
  sub_1BE04B594();

  v23 = *(a3 + 42);
  v24 = &OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction;
  v25 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction;
  v73 = v22;
  result = *(v22 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction);
  if (v23)
  {
    result = [result amount];
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    v27 = result;
    v28 = sub_1BE0533F4();
    v30 = v29;
    v32 = v31;

    v7 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction;
    result = [*(v74 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) amount];
    if (!result)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v33 = result;
    v17 = sub_1BE0533F4();
    v21 = v34;
    v24 = v35;

    v36 = MEMORY[0x1BFB40440](v28, v30, v32, v17, v21, v24);
    v37 = *(v73 + v25);
    if ((v36 & 1) == 0)
    {
      result = [v37 amount];
      if (!result)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v54 = result;
      v55 = sub_1BE0533F4();
      v57 = v56;
      v59 = v58;

      result = [*(v74 + v7) amount];
      if (!result)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v60 = result;
      v61 = sub_1BE0533F4();
      v63 = v62;
      v65 = v64;

      v53 = MEMORY[0x1BFB403F0](v61, v63, v65, v55, v57, v59);
      return (v53 & 1);
    }

    v13 = &selRef_hoursOfDay;
    result = [v37 identifier];
    if (!result)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v38 = result;
    v6 = sub_1BE052434();
    v40 = v39;

    result = [*(v74 + v7) identifier];
    if (result)
    {
LABEL_13:
      v49 = result;
      v50 = sub_1BE052434();
      v52 = v51;

      if (v6 == v50 && v40 == v52)
      {

        v53 = 0;
      }

      else
      {
        v53 = sub_1BE053B84();
      }

      return (v53 & 1);
    }

    __break(1u);
  }

  v71 = v13;
  result = [result transactionDate];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = result;
  sub_1BE04AEE4();

  v42 = *v24;
  result = [*(v74 + *v24) transactionDate];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v43 = result;
  sub_1BE04AEE4();

  LOBYTE(v43) = sub_1BE04AED4();
  v44 = *(v7 + 8);
  v44(v17, v6);
  v44(v21, v6);
  v45 = *(v73 + v25);
  if (v43)
  {
    v46 = v42;
    result = [v45 identifier];
    if (result)
    {
      v47 = result;
      v6 = sub_1BE052434();
      v40 = v48;

      result = [*(v74 + v46) identifier];
      if (result)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

    goto LABEL_29;
  }

  result = [v45 transactionDate];
  if (!result)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v66 = result;
  v67 = v71;
  sub_1BE04AEE4();

  result = [*(v74 + v42) transactionDate];
  if (result)
  {
    v68 = result;
    v69 = v72;
    sub_1BE04AEE4();

    v53 = sub_1BE04AE74();
    v44(v69, v6);
    v44(v67, v6);
    return (v53 & 1);
  }

LABEL_34:
  __break(1u);
  return result;
}

id *sub_1BD671F08()
{

  v1 = OBJC_IVAR____TtCV9PassKitUIP33_423F4157925DE25913FA4028798C2C6F21TransactionPickerView9ViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1BD671FC0()
{
  sub_1BD671F08();

  return swift_deallocClassInstance();
}

uint64_t sub_1BD672014@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v1 = sub_1BE04FD64();
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v29 - v8;
  v10 = sub_1BE04FD84();
  v31 = *(v10 - 8);
  v11 = v31;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - v17;
  sub_1BE04FD94();
  sub_1BE04FD74();
  v19 = *(v11 + 16);
  v19(v14, v18, v10);
  v20 = *(v2 + 16);
  v20(v5, v9, v1);
  v21 = v32;
  v19(v32, v14, v10);
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAC8) + 48)];
  v23 = v29;
  v20(v22, v5, v29);
  v24 = *(v30 + 8);
  v25 = v9;
  v26 = v23;
  v24(v25, v23);
  v27 = *(v31 + 8);
  v27(v18, v10);
  v24(v5, v26);
  return (v27)(v14, v10);
}

uint64_t sub_1BD6722A4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EAC0);
  return sub_1BD672014((a1 + *(v2 + 44)));
}

uint64_t sub_1BD6722FC(char *__dst, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    v15 = a4;
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v16 = &v15[v10];
    if (v8 < 8 || v14 >= v6)
    {
LABEL_21:
      a2 = v7;
      goto LABEL_54;
    }

    v17 = v14;
    while (1)
    {
      v48 = *v17;
      v47 = *v15;
      sub_1BE048964();
      sub_1BE048964();
      v18 = sub_1BD6719B4(&v48, &v47, a5);
      if (v5)
      {

        v35 = v16 - v15 + 7;
        if (v16 - v15 >= 0)
        {
          v35 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v35 & 0xFFFFFFFFFFFFFFF8)) || v7 != v15)
        {
          v36 = 8 * (v35 >> 3);
          v37 = v7;
          goto LABEL_60;
        }

        goto LABEL_62;
      }

      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v17;
      v21 = v7 == v17++;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v20 = v15;
    v21 = v7 == v15++;
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v20;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    v22 = a2;
    v23 = a4;
    memmove(a4, a2, 8 * v13);
    a4 = v23;
    a2 = v22;
  }

  v45 = a4;
  v16 = (a4 + 8 * v13);
  if (v11 < 8 || a2 <= v7)
  {
    v15 = a4;
    goto LABEL_54;
  }

  v24 = -a4;
  v43 = -a4;
LABEL_28:
  v44 = a2;
  v25 = a2 - 1;
  v26 = v16 + v24;
  --v6;
  v27 = v16;
  v28 = v16;
  while (1)
  {
    v29 = *--v28;
    v48 = v29;
    v30 = v25;
    v47 = *v25;
    sub_1BE048964();
    sub_1BE048964();
    v31 = sub_1BD6719B4(&v48, &v47, a5);
    if (v5)
    {
      break;
    }

    v32 = v31;

    v33 = v6 + 1;
    if (v32)
    {
      v34 = v30;
      if (v33 != v44)
      {
        *v6 = *v30;
      }

      v15 = v45;
      v16 = v27;
      if (v27 <= v45 || (a2 = v34, v24 = v43, v34 <= v7))
      {
        a2 = v34;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v33 != v27)
    {
      *v6 = *v28;
    }

    v26 -= 8;
    --v6;
    v27 = v28;
    v25 = v30;
    if (v28 <= v45)
    {
      v16 = v28;
      a2 = v44;
      v15 = v45;
LABEL_54:
      v41 = v16 - v15 + 7;
      if (v16 - v15 >= 0)
      {
        v41 = v16 - v15;
      }

      if (a2 >= v15 && a2 < (v15 + (v41 & 0xFFFFFFFFFFFFFFF8)) && a2 == v15)
      {
        goto LABEL_62;
      }

      v36 = 8 * (v41 >> 3);
      v37 = a2;
LABEL_60:
      v40 = v15;
LABEL_61:
      memmove(v37, v40, v36);
      goto LABEL_62;
    }
  }

  if (v26 >= 0)
  {
    v38 = v26;
  }

  else
  {
    v38 = v26 + 7;
  }

  v39 = v38 >> 3;
  v37 = v44;
  v40 = v45;
  if (v44 < v45 || v44 >= (v45 + (v38 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v44, v45, 8 * v39);
    goto LABEL_62;
  }

  if (v44 != v45)
  {
    v36 = 8 * v39;
    goto LABEL_61;
  }

LABEL_62:

  return 1;
}