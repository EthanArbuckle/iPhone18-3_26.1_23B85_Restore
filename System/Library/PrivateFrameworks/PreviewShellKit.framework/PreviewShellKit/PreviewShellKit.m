void sub_25F0B53D0()
{
  v38.receiver = v0;
  v38.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469E0, &qword_25F17AC88);
  v1 = objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, 0, 0);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469E8, &qword_25F17AC90));
  v3 = v1;

  v4 = sub_25F178CEC();
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v7 = v3;
  [v7 addChildViewController_];
  v8 = [v7 view];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [v4 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  [v9 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46960, &qword_25F17B190);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25F17AA90;
  v13 = [v4 view];
  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v7 view];
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v12 + 32) = v18;
  v19 = [v4 view];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = [v19 bottomAnchor];

  v22 = [v7 view];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = [v22 bottomAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v12 + 40) = v24;
  v25 = [v4 view];
  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = v25;
  v27 = [v25 leftAnchor];

  v28 = [v7 view];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = [v28 leftAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v12 + 48) = v30;
  v31 = [v4 view];

  if (!v31)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = [v31 rightAnchor];

  v33 = [v7 view];
  if (v33)
  {

    v34 = objc_opt_self();
    v35 = [v33 rightAnchor];

    v36 = [v32 constraintEqualToAnchor_];
    *(v12 + 56) = v36;
    sub_25F0B7B5C();
    v37 = sub_25F17921C();

    [v34 activateConstraints_];

    [v4 didMoveToParentViewController_];
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_25F0B5888(uint64_t a1)
{
  v40.receiver = v1;
  v40.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46970, &qword_25F17AC00);
  v3 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  sub_25F0B7BA8(a1, v39);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46978, &qword_25F17AC08));
  v4 = v3;
  v5 = sub_25F178CEC();
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  v8 = v4;
  [v8 addChildViewController_];
  v9 = [v8 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v5 view];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  [v10 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46960, &qword_25F17B190);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25F17AA90;
  v14 = [v5 view];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v8 view];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v13 + 32) = v19;
  v20 = [v5 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v8 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v13 + 40) = v25;
  v26 = [v5 view];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  v28 = [v26 leftAnchor];

  v29 = [v8 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = [v29 leftAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v13 + 48) = v31;
  v32 = [v5 view];

  if (!v32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = [v32 rightAnchor];

  v34 = [v8 view];
  if (v34)
  {
    v35 = objc_opt_self();
    v36 = [v34 rightAnchor];

    v37 = [v33 constraintEqualToAnchor_];
    *(v13 + 56) = v37;
    sub_25F0B7B5C();
    v38 = sub_25F17921C();

    [v35 activateConstraints_];

    [v5 didMoveToParentViewController_];
    sub_25F0B7C04(a1);
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_25F0B5D40(char a1, void *a2, char a3, uint64_t a4)
{
  v50.receiver = v4;
  v50.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46950, &qword_25F17ABE8);
  v9 = objc_msgSendSuper2(&v50, sel_initWithNibName_bundle_, 0, 0);
  LOBYTE(v47) = a1;
  v48 = a2;
  LOBYTE(v49) = a3;
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46958, &unk_25F17ABF0));

  v11 = v9;
  v12 = a2;
  v13 = sub_25F178CEC();
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v16 = v11;
  [v16 addChildViewController_];
  v17 = [v16 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  v19 = [v13 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  [v18 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46960, &qword_25F17B190);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25F17AA90;
  v22 = [v13 view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v16 view];
  if (!v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v21 + 32) = v27;
  v28 = [v13 view];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = [v16 view];
  if (!v31)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = [v31 bottomAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v21 + 40) = v33;
  v34 = [v13 view];
  if (!v34)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v35 = v34;
  v36 = [v34 leftAnchor];

  v37 = [v16 view];
  if (!v37)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v38 = [v37 leftAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(v21 + 48) = v39;
  v40 = [v13 view];

  if (!v40)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v41 = [v40 rightAnchor];

  v42 = [v16 view];
  if (v42)
  {

    v43 = objc_opt_self();
    v44 = [v42 rightAnchor];

    v45 = [v41 constraintEqualToAnchor_];
    *(v21 + 56) = v45;
    sub_25F0B7B5C();
    v46 = sub_25F17921C();

    [v43 activateConstraints_];

    [v13 didMoveToParentViewController_];
    return;
  }

LABEL_23:
  __break(1u);
}

id ConnectViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ConnectView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46810, &qword_25F17AAB0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46818, &qword_25F17AAB8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v30 - v11;
  v13 = *v1;
  v14 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = *(v1 + 17);
  *v7 = sub_25F178CDC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46820, &qword_25F17AAC0);
  if (v16)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  sub_25F0B6530(v13, v14, v18 | v15, &v7[*(v17 + 44)]);
  v7[*(v4 + 44)] = sub_25F178D6C();
  sub_25F178F5C();
  sub_25F178BBC();
  sub_25F0B7D50(v7, v12, &qword_27FD46810, &qword_25F17AAB0);
  v19 = &v12[*(v9 + 44)];
  v20 = v30[5];
  *(v19 + 4) = v30[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v30[6];
  v21 = v30[1];
  *v19 = v30[0];
  *(v19 + 1) = v21;
  v22 = v30[3];
  *(v19 + 2) = v30[2];
  *(v19 + 3) = v22;
  v23 = sub_25F178E6C();
  v24 = sub_25F178D5C();
  v25 = sub_25F178F5C();
  v27 = v26;
  sub_25F0B7D50(v12, a1, &qword_27FD46818, &qword_25F17AAB8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46828, &qword_25F17AAC8);
  v29 = a1 + *(result + 36);
  *v29 = v23;
  *(v29 + 8) = v24;
  *(v29 + 16) = v25;
  *(v29 + 24) = v27;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_25F0B6530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46980, &qword_25F17AC10);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46988, &qword_25F17AC18);
  v12 = *(*(v41 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v41);
  v45 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v15);
  v42 = &v40 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46990, &qword_25F17AC20);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  *v25 = sub_25F178CDC();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46998, &qword_25F17AC28);
  sub_25F0B69D0(&v25[*(v26 + 44)]);
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  *(v27 + 32) = a3 & 1;
  *(v27 + 33) = HIBYTE(a3) & 1;
  v46 = a1;
  v47 = a2;
  v48 = a3 & 0x101;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469A0, &qword_25F17AC30);
  sub_25F0B7D00(&qword_27FD469A8, &qword_27FD469A0, &qword_25F17AC30);
  sub_25F178F2C();
  v28 = 0;
  if ((a3 & 0x100) != 0)
  {
    v29 = sub_25F17905C();
    v30 = objc_opt_self();
    v31 = [v30 colorNamed_];

    if (!v31)
    {
      v32 = [v30 systemBlueColor];
    }

    v28 = sub_25F178E5C();
  }

  KeyPath = swift_getKeyPath();
  (*(v43 + 32))(v17, v11, v44);
  v34 = v42;
  v35 = &v17[*(v41 + 36)];
  *v35 = KeyPath;
  v35[1] = v28;
  sub_25F0B7D50(v17, v34, &qword_27FD46988, &qword_25F17AC18);
  sub_25F0B7E2C(v25, v23, &qword_27FD46990, &qword_25F17AC20);
  v36 = v45;
  sub_25F0B7E2C(v34, v45, &qword_27FD46988, &qword_25F17AC18);
  *a4 = 0;
  *(a4 + 8) = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD469B0, &qword_25F17AC68);
  sub_25F0B7E2C(v23, a4 + v37[12], &qword_27FD46990, &qword_25F17AC20);
  v38 = a4 + v37[16];
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_25F0B7E2C(v36, a4 + v37[20], &qword_27FD46988, &qword_25F17AC18);
  sub_25F0B7E94(v34, &qword_27FD46988, &qword_25F17AC18);
  sub_25F0B7E94(v25, &qword_27FD46990, &qword_25F17AC20);
  sub_25F0B7E94(v36, &qword_27FD46988, &qword_25F17AC18);
  return sub_25F0B7E94(v23, &qword_27FD46990, &qword_25F17AC20);
}

uint64_t sub_25F0B69D0@<X0>(_BYTE *a1@<X8>)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469D0, &qword_25F17AC78);
  v1 = *(v38 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v38);
  v37 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v6 = &v35[-v5];
  v7 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v8 = sub_25F17905C();
  [v7 initWithBundleIdentifier_];

  v9 = [objc_opt_self() imageDescriptorNamed_];
  sub_25F17881C();
  sub_25F178CBC();
  v10 = sub_25F178DFC();
  v12 = v11;
  v14 = v13;
  sub_25F178DAC();
  v15 = sub_25F178DDC();
  v17 = v16;
  v19 = v18;
  sub_25F0B7E1C(v10, v12, v14 & 1);

  sub_25F178E8C();
  v20 = sub_25F178DEC();
  v22 = v21;
  v36 = v23;
  v25 = v24;

  sub_25F0B7E1C(v15, v17, v19 & 1);

  v26 = v1[2];
  v28 = v37;
  v27 = v38;
  v26(v37, v6, v38);
  v29 = v39;
  v26(v39, v28, v27);
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469D8, &qword_25F17AC80) + 48)];
  *v30 = v20;
  *(v30 + 1) = v22;
  v31 = v36;
  v32 = v36 & 1;
  v30[16] = v36 & 1;
  *(v30 + 3) = v25;
  sub_25F0B7E0C(v20, v22, v31 & 1);
  v33 = v1[1];

  v33(v6, v27);
  sub_25F0B7E1C(v20, v22, v32);

  return (v33)(v28, v27);
}

uint64_t sub_25F0B6D08()
{
  v0 = sub_25F176DBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469C0, &qword_25F17AC70);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  sub_25F176DAC();
  sub_25F0B7E2C(v11, v9, &qword_27FD469C0, &qword_25F17AC70);
  if ((*(v1 + 48))(v9, 1, v0) == 1)
  {
    sub_25F0B7E94(v11, &qword_27FD469C0, &qword_25F17AC70);
    v11 = v9;
  }

  else
  {
    (*(v1 + 32))(v4, v9, v0);
    v12 = [objc_opt_self() sharedApplication];
    v13 = sub_25F176D5C();
    sub_25F0EC920(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_25F0B8008(&qword_27FD469C8);
    v14 = sub_25F178FCC();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25F0B711C;
    aBlock[3] = &block_descriptor;
    v15 = _Block_copy(aBlock);
    [v12 openURL:v13 options:v14 completionHandler:v15];
    _Block_release(v15);

    (*(v1 + 8))(v4, v0);
  }

  return sub_25F0B7E94(v11, &qword_27FD469C0, &qword_25F17AC70);
}

uint64_t sub_25F0B7024@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  sub_25F0B7DB8();

  v4 = sub_25F178E0C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (a1)
  {
    v11 = sub_25F178ECC();
  }

  else
  {
    v11 = 0;
  }

  v12 = v8 & 1;
  sub_25F0B7E0C(v4, v6, v12);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v12;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;

  sub_25F0B7E1C(v4, v6, v12);
}

uint64_t sub_25F0B711C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t default argument 0 of JITBootstrapAgentConnectionIdentifier.init(stringIdentifier:)()
{
  v0 = sub_25F176DFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F176DEC();
  v5 = sub_25F176DDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_25F0B72B4(uint64_t a1, id *a2)
{
  result = sub_25F17906C();
  *a2 = 0;
  return result;
}

uint64_t sub_25F0B732C(uint64_t a1, id *a2)
{
  v3 = sub_25F17907C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25F0B73AC@<X0>(uint64_t *a1@<X8>)
{
  sub_25F17908C();
  v2 = sub_25F17905C();

  *a1 = v2;
  return result;
}

uint64_t sub_25F0B73F0()
{
  v1 = *v0;
  v2 = sub_25F17908C();
  v3 = MEMORY[0x25F8D5120](v2);

  return v3;
}

uint64_t sub_25F0B742C()
{
  v1 = *v0;
  sub_25F17908C();
  sub_25F17911C();
}

uint64_t sub_25F0B7480()
{
  v1 = *v0;
  sub_25F17908C();
  sub_25F1798CC();
  sub_25F17911C();
  v2 = sub_25F17990C();

  return v2;
}

BOOL sub_25F0B7510(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_25F0B7574(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25F17908C();
  v6 = v5;
  if (v4 == sub_25F17908C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F17983C();
  }

  return v9 & 1;
}

uint64_t sub_25F0B7608@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F17905C();

  *a2 = v5;
  return result;
}

uint64_t sub_25F0B7650@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25F17908C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25F0B767C(uint64_t a1)
{
  v2 = sub_25F0B8008(&qword_27FD469C8);
  v3 = sub_25F0B8008(&qword_27FD46A78);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t type metadata accessor for ConnectViewController()
{
  result = qword_27FD46838;
  if (!qword_27FD46838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F0B77FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F0B7844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F0B7898()
{
  result = qword_27FD46848;
  if (!qword_27FD46848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FD46828, &qword_25F17AAC8);
    sub_25F0B7998();
    sub_25F0B7D00(&qword_27FD46870, &qword_27FD46878, &qword_25F17ABA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46848);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_25F0B7998()
{
  result = qword_27FD46850;
  if (!qword_27FD46850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46818, &qword_25F17AAB8);
    sub_25F0B7A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46850);
  }

  return result;
}

unint64_t sub_25F0B7A24()
{
  result = qword_27FD46858;
  if (!qword_27FD46858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46810, &qword_25F17AAB0);
    sub_25F0B7D00(&qword_27FD46860, &qword_27FD46868, &qword_25F17AB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46858);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25F0B7B00(uint64_t a1, int a2)
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

uint64_t sub_25F0B7B20(uint64_t result, int a2, int a3)
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

unint64_t sub_25F0B7B5C()
{
  result = qword_27FD46968;
  if (!qword_27FD46968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD46968);
  }

  return result;
}

uint64_t sub_25F0B7C58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_25F0B7C90()
{
  v1 = *(v0 + 16);
  if (*(v0 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = v2 | *(v0 + 32);
  return sub_25F0B6D08();
}

uint64_t sub_25F0B7CE0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25F0B7024(*(v1 + 32), a1);
}

uint64_t sub_25F0B7D00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F0B7D50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_25F0B7DB8()
{
  result = qword_27FD48850;
  if (!qword_27FD48850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48850);
  }

  return result;
}

uint64_t sub_25F0B7E0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25F0B7E1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25F0B7E2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F0B7E94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F0B7F2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F0B7F4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_25F0B7F88(uint64_t a1, unint64_t *a2)
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

uint64_t sub_25F0B8008(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewAgentUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PreviewAgentUtilities(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t PreviewSceneAgentProxy.sceneClientSettingsUpdates.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B40, &qword_25F17AF00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B48, &qword_25F17AF08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, *(v0 + 40) + OBJC_IVAR____TtCC15PreviewShellKit22PreviewSceneAgentProxyP33_3E64D4B6ABF6A6AD0F98F116D965CFCA13SceneDelegate_clientSettingsUpdates, v6);
  MEMORY[0x25F8D5300](&type metadata for SceneClientSettingsUpdate);
  sub_25F17936C();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_25F0B838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v9 = v7;
  v8[9] = a6;
  v8[10] = v9;
  v8[7] = a4;
  v8[8] = a5;
  v8[5] = a2;
  v8[6] = a3;
  v8[4] = a1;
  v8[11] = *v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D00, &qword_25F17B140);
  v8[12] = v11;
  v12 = *(v11 - 8);
  v8[13] = v12;
  v13 = *(v12 + 64) + 15;
  v8[14] = swift_task_alloc();
  v14 = sub_25F1780FC();
  v8[15] = v14;
  v15 = *(v14 - 8);
  v8[16] = v15;
  v8[17] = *(v15 + 64);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v17 = sub_25F1787BC();
  v8[21] = v17;
  v18 = *(v17 - 8);
  v8[22] = v18;
  v19 = *(v18 + 64) + 15;
  v8[23] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148);
  v8[24] = v20;
  v21 = *(v20 - 8);
  v8[25] = v21;
  v8[26] = *(v21 + 64);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  v8[29] = v22;
  v23 = *(v22 - 8);
  v8[30] = v23;
  v24 = *(v23 + 64) + 15;
  v8[31] = swift_task_alloc();
  v25 = sub_25F1783FC();
  v8[32] = v25;
  v26 = *(v25 - 8);
  v8[33] = v26;
  v27 = *(v26 + 64) + 15;
  v28 = swift_task_alloc();
  v29 = *a7;
  v8[34] = v28;
  v8[35] = v29;
  v8[36] = sub_25F17930C();
  v8[37] = sub_25F1792FC();
  v31 = sub_25F1792CC();
  v8[38] = v31;
  v8[39] = v30;

  return MEMORY[0x2822009F8](sub_25F0B8710, v31, v30);
}

uint64_t sub_25F0B8710()
{
  v1 = v0[34];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[5];
  (*(v0[33] + 104))(v1, *MEMORY[0x277D404B8], v0[32]);
  v7 = sub_25F17859C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  LOBYTE(v22) = 2;
  *(v3 + 16) = sub_25F17858C();
  v10 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate;
  v0[40] = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate;
  v11 = v3 + v10;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v3 + 24) = [objc_allocWithZone(PSScene) initWithScene_];
  v12 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_messageStreamHub;
  v0[41] = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_messageStreamHub;
  v13 = (v3 + v12);
  *v13 = v4;
  v13[1] = v2;

  v14 = sub_25F176F4C();
  LODWORD(v5) = [v14 pid];

  *(v3 + 32) = v5;
  sub_25F176E1C();
  v15 = sub_25F177E3C();
  v16 = sub_25F0BF2A8(&qword_27FD46C28, MEMORY[0x277D40F10]);
  sub_25F176EFC();
  v17 = *(MEMORY[0x277D40D70] + 4);
  v18 = swift_task_alloc();
  v0[42] = v18;
  *v18 = v0;
  v18[1] = sub_25F0B8950;
  v19 = v0[31];
  v20 = v0[4];

  return MEMORY[0x2821A1908](v19, v15, v15, v16);
}

uint64_t sub_25F0B8950()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v8 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {

    v4 = *(v2 + 304);
    v5 = *(v2 + 312);
    v6 = sub_25F0B9398;
  }

  else
  {
    v4 = *(v2 + 304);
    v5 = *(v2 + 312);
    v6 = sub_25F0B8A6C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25F0B8A6C()
{
  v1 = v0[37];
  v74 = v0[35];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v77 = v0[28];
  v79 = v0[36];
  v88 = v0[27];
  v5 = v0[24];
  v70 = v0[25];
  v72 = v0[26];
  v6 = v0[22];
  v7 = v0[23];
  v66 = v0[21];
  v81 = v0[20];
  v8 = v0[10];
  v9 = v0[5];
  v86 = v0[4];

  (*(v3 + 32))(v8 + OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_connectionSender, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D10, &qword_25F17B150);
  *(swift_allocObject() + 16) = v9;
  v83 = v9;
  v10 = sub_25F1770FC();
  *(v8 + 48) = v10;
  v11 = objc_allocWithZone(type metadata accessor for PreviewSceneAgentProxy.SceneDelegate(0));
  v12 = swift_retain_n();
  v76 = v10;
  *(v8 + 40) = sub_25F0BD704(v12);
  v13 = *(v5 + 48);
  sub_25F1787CC();
  sub_25F1792FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  v14 = sub_25F177F3C();

  (*(v6 + 8))(v7, v66);
  *(v77 + v13) = v14;
  sub_25F0B7E2C(v77, v88, &qword_27FD46D08, &qword_25F17B148);
  v15 = *(v88 + *(v5 + 48));

  v16 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_disconnected;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  v18 = v8;
  (*(*(v17 - 8) + 32))(v8 + v16, v88, v17);

  sub_25F17711C();
  [v83 setDelegate_];
  v19 = *(v8 + 40);
  v0[2] = v19;
  sub_25F0B7E2C(v77, v88, &qword_27FD46D08, &qword_25F17B148);
  v20 = *(v70 + 80);
  v21 = (v20 + 16) & ~v20;
  v72 += 7;
  v22 = swift_allocObject();
  sub_25F0C0520(v88, v22 + v21);
  *(v22 + ((v21 + v72) & 0xFFFFFFFFFFFFFFF8)) = v18;
  sub_25F0BF2A8(&qword_27FD46CE0, type metadata accessor for PreviewSceneAgentProxy.SceneDelegate);
  v23 = v18;

  v24 = v19;
  sub_25F1783EC();

  v25 = sub_25F17932C();
  v67 = *(*(v25 - 8) + 56);
  v67(v81, 1, 1, v25);
  sub_25F0B7E2C(v77, v88, &qword_27FD46D08, &qword_25F17B148);

  v26 = sub_25F1792FC();
  v27 = (v20 + 40) & ~v20;
  v28 = (v27 + v72) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v29[2] = v26;
  v29[3] = MEMORY[0x277D85700];
  v29[4] = v86;
  sub_25F0C0520(v88, v29 + v27);
  *(v29 + v28) = v23;
  sub_25F0CD9E8(0, 0, v81, &unk_25F17B160, v29);

  v67(v81, 1, 1, v25);
  sub_25F0B7E2C(v77, v88, &qword_27FD46D08, &qword_25F17B148);
  v84 = v83;

  v30 = sub_25F1792FC();
  v31 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v32[2] = v30;
  v32[3] = MEMORY[0x277D85700];
  v32[4] = v23;
  sub_25F0C0520(v88, v32 + v27);
  *(v32 + v28) = v86;
  *(v32 + v31) = v84;
  *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  sub_25F0CD9E8(0, 0, v81, &unk_25F17B170, v32);

  v33 = v0[28];
  if (v74)
  {
    v34 = v0[35];
    v36 = v0[8];
    v35 = v0[9];
    v38 = v0[5];
    v37 = v0[6];
    v39 = v0[4];
    swift_unknownObjectRelease();

    v40 = v33;
  }

  else
  {
    v73 = v0[18];
    v75 = v0[17];
    v69 = v0[16];
    v41 = v0[14];
    v71 = v0[15];
    v65 = v0[19];
    v68 = v0[13];
    v64 = v0[12];
    v42 = v0[10];
    v78 = v0[11];
    v82 = v0[8];
    v85 = v0[9];
    v44 = v0[6];
    v43 = v0[7];
    v87 = v0[5];
    v80 = v0[4];
    v45 = *(v42 + 24);
    v89 = v0[28];
    ObjectType = swift_getObjectType();
    v47 = *(v43 + 48);
    v48 = v45;
    v49 = v47(ObjectType, v43);
    [v48 updateSceneSettings:v49 with:0];

    (*(v43 + 56))(ObjectType, v43);

    sub_25F177EBC();

    (*(v68 + 8))(v41, v64);
    v0[3] = v42;
    (*(v69 + 16))(v73, v65, v71);
    v50 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v51 = swift_allocObject();
    (*(v69 + 32))(v51 + v50, v73, v71);
    sub_25F0BF2A8(&qword_27FD46CF8, type metadata accessor for PreviewSceneAgentProxy);
    sub_25F17848C();

    swift_unknownObjectRelease();

    (*(v69 + 8))(v65, v71);
    v40 = v89;
  }

  sub_25F0B7E94(v40, &qword_27FD46D08, &qword_25F17B148);
  v52 = v0[34];
  v53 = v0[31];
  v55 = v0[27];
  v54 = v0[28];
  v56 = v0[23];
  v58 = v0[19];
  v57 = v0[20];
  v59 = v0[18];
  v60 = v0[14];

  v61 = v0[1];
  v62 = v0[10];

  return v61(v62);
}

uint64_t sub_25F0B9398()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[37];
  v19 = v0[34];
  v20 = v0[31];
  v21 = v0[28];
  v22 = v0[27];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[14];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  swift_unknownObjectRelease();
  v11 = *(v4 + 16);

  sub_25F0B7E94(v4 + v2, &qword_27FD46B70, &qword_25F17AF18);
  v12 = *(v4 + v1);
  v13 = *(v4 + v1 + 8);

  v14 = *(*v4 + 48);
  v15 = *(*v4 + 52);
  swift_deallocPartialClassInstance();

  v16 = v0[1];
  v17 = v0[43];

  return v16();
}

void sub_25F0B9540(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46960, &qword_25F17B190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F17AEE0;
  *(inited + 32) = a1;
  v5 = a1;
  sub_25F0BFBBC(inited);
  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  sub_25F0C1014(0, &qword_27FD46CE8, 0x277CF0B58);
  sub_25F0C0358();
  v7 = sub_25F17948C();

  [a2 sendActions_];
}

void sub_25F0B962C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F17715C();
  v63 = *(v4 - 1);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17713C();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_25F17712C();
  v59 = *(v60 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F17888C();
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_25F177DCC();
  v62 = *(v67 - 8);
  v17 = *(v62 + 64);
  v18 = MEMORY[0x28223BE20](v67);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = &v58 - v21;
  v22 = sub_25F177D9C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v26 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate;
  swift_beginAccess();
  sub_25F0B7E2C(v2 + v26, &v70, &qword_27FD46B70, &qword_25F17AF18);
  if (v71)
  {
    sub_25F0C0C84(&v70, v72);
    sub_25F0C0C9C(a1, v25);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v51 = *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46D40, &qword_25F17B188) + 48)];
        v52 = v61;
        (*(v61 + 32))(v11, v25, v8);
        v53 = v73;
        v54 = v74;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        (*(v54 + 24))(v11, v51, v53, v54);

        (*(v52 + 8))(v11, v8);
      }

      else
      {
        v31 = v62;
        v32 = v69;
        v33 = v67;
        (*(v62 + 32))(v69, v25, v67);
        v34 = v68;
        sub_25F17884C();
        (*(v31 + 16))(v20, v32, v33);
        v35 = sub_25F17887C();
        v36 = sub_25F17955C();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *&v70 = v64;
          *v37 = 136446210;
          v38 = v58;
          sub_25F177DAC();
          sub_25F0BF2A8(&qword_27FD46BA0, MEMORY[0x277D40FF8]);
          v39 = v60;
          v40 = sub_25F17980C();
          v42 = v41;
          (*(v59 + 8))(v38, v39);
          v43 = *(v31 + 8);
          v43(v20, v33);
          v44 = sub_25F0BECF0(v40, v42, &v70);

          *(v37 + 4) = v44;
          _os_log_impl(&dword_25F0B3000, v35, v36, "PreviewSceneAgent received handshake for update %{public}s", v37, 0xCu);
          v45 = v64;
          __swift_destroy_boxed_opaque_existential_1Tm(v64);
          MEMORY[0x25F8D6230](v45, -1, -1);
          MEMORY[0x25F8D6230](v37, -1, -1);

          (*(v65 + 8))(v68, v66);
        }

        else
        {

          v43 = *(v31 + 8);
          v43(v20, v33);
          (*(v65 + 8))(v34, v66);
        }

        v55 = v73;
        v56 = v74;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        v57 = v69;
        (*(v56 + 16))(v69, v55, v56);
        v43(v57, v33);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v46 = v63;
      v47 = v25;
      v48 = v64;
      (*(v63 + 32))(v7, v47, v64);
      v49 = v73;
      v50 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      (*(v50 + 48))(v7, v49, v50);
      (*(v46 + 8))(v7, v48);
    }

    else
    {
      v28 = v73;
      v29 = v74;
      if (EnumCaseMultiPayload == 3)
      {
        __swift_project_boxed_opaque_existential_1(v72, v73);
        (*(v29 + 32))(v28, v29);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v72, v73);
        (*(v29 + 40))(v28, v29);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v72);
  }

  else
  {
    sub_25F0B7E94(&v70, &qword_27FD46B70, &qword_25F17AF18);
    v30 = sub_25F177D8C();
    [v30 invalidate];
  }
}

uint64_t sub_25F0B9E40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a3;
  v6 = sub_25F1787BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) + 48));
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D18, &qword_25F17B178);
  sub_25F0B7D00(&qword_27FD46D20, &qword_27FD46D18, &qword_25F17B178);
  sub_25F17804C();
  (*(v7 + 8))(v10, v6);
  v13 = a3;
  sub_25F0BF2A8(&unk_27FD46C00, type metadata accessor for PreviewSceneAgentProxy);
  return sub_25F1780BC();
}

uint64_t sub_25F0BA078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[7] = *a6;
  v8 = sub_25F1787BC();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = sub_25F17813C();
  v6[11] = v11;
  v12 = *(v11 - 8);
  v6[12] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v6[13] = v14;
  v6[14] = sub_25F17930C();
  v6[15] = sub_25F1792FC();
  v6[2] = a4;
  v15 = *(MEMORY[0x277D404D0] + 4);
  v16 = swift_task_alloc();
  v6[16] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v18 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180);
  *v16 = v6;
  v16[1] = sub_25F0BA27C;

  return MEMORY[0x2821A09E8](v14, v17, v18);
}

uint64_t sub_25F0BA27C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v5 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0BA3B8, v5, v4);
}

uint64_t sub_25F0BA3B8()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[5];

  v0[3] = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) + 48));
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D18, &qword_25F17B178);
  sub_25F0B7D00(&qword_27FD46D20, &qword_27FD46D18, &qword_25F17B178);
  sub_25F17804C();
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v8 = v0[6];
  v7 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v0[4] = v8;
  sub_25F0BF2A8(&unk_27FD46C00, type metadata accessor for PreviewSceneAgentProxy);
  sub_25F1780BC();
  (*(v5 + 8))(v4, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F0BA5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v10 = sub_25F1787BC();
  v8[19] = v10;
  v11 = *(v10 - 8);
  v8[20] = v11;
  v12 = *(v11 + 64) + 15;
  v8[21] = swift_task_alloc();
  v13 = sub_25F17813C();
  v8[22] = v13;
  v14 = *(v13 - 8);
  v8[23] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v8[24] = v16;
  v8[25] = sub_25F17930C();
  v8[26] = sub_25F1792FC();
  v8[10] = a4;
  v17 = *(MEMORY[0x277D404D0] + 4);
  v18 = swift_task_alloc();
  v8[27] = v18;
  v19 = type metadata accessor for PreviewSceneAgentProxy(0);
  v20 = sub_25F0BF2A8(&qword_27FD46CF8, type metadata accessor for PreviewSceneAgentProxy);
  *v18 = v8;
  v18[1] = sub_25F0BA784;

  return MEMORY[0x2821A09E8](v16, v19, v20);
}

uint64_t sub_25F0BA784()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v7 = *v0;

  v5 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0BA8C0, v5, v4);
}

uint64_t sub_25F0BA8C0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v14 = *(v0 + 184);
  v15 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v11 = *(v0 + 112);

  *(v0 + 88) = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) + 48));
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D18, &qword_25F17B178);
  sub_25F0B7D00(&qword_27FD46D20, &qword_27FD46D18, &qword_25F17B178);
  sub_25F17805C();
  (*(v4 + 8))(v3, v5);
  *(v0 + 96) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180);
  sub_25F1780BC();
  *(v0 + 104) = *(v11 + 40);
  type metadata accessor for PreviewSceneAgentProxy.SceneDelegate(0);
  sub_25F0BF2A8(&qword_27FD46CD8, type metadata accessor for PreviewSceneAgentProxy.SceneDelegate);
  sub_25F1780BC();
  sub_25F0E6754(v12);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v8 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate;
  swift_beginAccess();
  sub_25F0BEC80(v0 + 16, v11 + v8);
  swift_endAccess();
  sub_25F17711C();
  (*(v14 + 8))(v2, v15);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t PreviewSceneAgentProxy.onDisconnect(_:)(uint64_t a1, uint64_t a2)
{
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_25F0BEB70;
  *(v5 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  sub_25F177F4C();
}

uint64_t sub_25F0BAD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = a2;
  v80 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = &v73[-v6];
  v7 = sub_25F177E1C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v88 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_25F177D5C();
  v92 = *(v10 - 8);
  v93 = v10;
  v11 = *(v92 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v89 = v13;
  v90 = &v73[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v94 = &v73[-v14];
  v79 = sub_25F17712C();
  v78 = *(v79 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v73[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_25F177D3C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v73[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_25F177D7C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v73[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_25F17888C();
  v86 = *(v27 - 8);
  v87 = v27;
  v28 = *(v86 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v73[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  sub_25F0BEC1C(a3, v99);
  v31 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate;
  v32 = v98;
  swift_beginAccess();
  sub_25F0BEC80(v99, v32 + v31);
  swift_endAccess();
  sub_25F17884C();
  v33 = *(v23 + 16);
  v95 = v22;
  v82 = v23 + 16;
  v81 = v33;
  v33(v26, v96, v22);
  v84 = v18;
  v34 = *(v18 + 16);
  v83 = v21;
  v35 = v21;
  v36 = v34;
  v37 = v80;
  v97 = v17;
  v34(v35);
  v85 = v30;
  v38 = sub_25F17887C();
  v39 = sub_25F17955C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v99[0] = v76;
    *v40 = 136446722;
    v41 = v77;
    v75 = v38;
    sub_25F177D6C();
    sub_25F0BF2A8(&qword_27FD46BA0, MEMORY[0x277D40FF8]);
    v42 = v79;
    v43 = sub_25F17980C();
    v74 = v39;
    v44 = v37;
    v46 = v45;
    (*(v78 + 8))(v41, v42);
    (*(v23 + 8))(v26, v95);
    v47 = sub_25F0BECF0(v43, v46, v99);
    v49 = v92;
    v48 = v93;
    v37 = v44;

    *(v40 + 4) = v47;
    *(v40 + 12) = 2082;
    v50 = v94;
    v51 = v83;
    sub_25F177CFC();
    sub_25F0BF2A8(&qword_27FD46BA8, MEMORY[0x277D40E58]);
    v52 = sub_25F17980C();
    v54 = v53;
    (*(v49 + 8))(v50, v48);
    (*(v84 + 8))(v51, v97);
    v55 = sub_25F0BECF0(v52, v54, v99);

    *(v40 + 14) = v55;
    *(v40 + 22) = 2082;
    *(v40 + 24) = sub_25F0BECF0(0x79747265706F7250, 0xEC0000007473694CLL, v99);
    v56 = v75;
    _os_log_impl(&dword_25F0B3000, v75, v74, "PreviewSceneAgentProxy performing update %{public}s for entry point %{public}s, expecting %{public}s", v40, 0x20u);
    v57 = v76;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v57, -1, -1);
    MEMORY[0x25F8D6230](v40, -1, -1);
  }

  else
  {

    (*(v84 + 8))(v83, v97);
    (*(v23 + 8))(v26, v95);
  }

  (*(v86 + 8))(v85, v87);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B80, &qword_25F17AF20);
  v59 = *(v58 + 48);
  v60 = v88;
  v36(v88, v37, v97);
  v81(v60 + v59, v96, v95);
  (*(*(v58 - 8) + 56))(v60, 0, 1, v58);
  sub_25F177F8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  sub_25F0B7D00(&qword_27FD46B90, &qword_27FD46B88, &qword_25F17AF28);
  sub_25F0BF2A8(&qword_27FD46B98, MEMORY[0x277D40EF8]);
  v61 = v98;
  v62 = sub_25F177A6C();
  sub_25F0C0FB4(v60, MEMORY[0x277D40EF8]);
  LODWORD(v59) = *(v61 + 32);
  v63 = v94;
  sub_25F177CFC();
  v64 = sub_25F17932C();
  v65 = v91;
  (*(*(v64 - 8) + 56))(v91, 1, 1, v64);
  v66 = v92;
  v67 = v93;
  v68 = v90;
  (*(v92 + 16))(v90, v63, v93);
  v69 = (*(v66 + 80) + 44) & ~*(v66 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  *(v70 + 24) = 0;
  *(v70 + 32) = v62;
  *(v70 + 40) = v59;
  (*(v66 + 32))(v70 + v69, v68, v67);
  v71 = sub_25F0BC7CC(0, 0, v65, &unk_25F17B1A8, v70);
  (*(v66 + 8))(v63, v67);
  return v71;
}

uint64_t PreviewSceneAgentProxy.perform<A>(update:with:delegate:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v83 = a6;
  v84 = a5;
  v89 = a3;
  v90 = a2;
  v88 = a1;
  v8 = sub_25F177E1C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_25F177D5C();
  v86 = *(v11 - 8);
  v87 = v11;
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v11);
  v85 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_25F17712C();
  v73 = *(v74 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_25F177D3C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v66[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_25F177D7C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v66[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_25F17888C();
  v79 = *(v26 - 8);
  v80 = v26;
  v27 = *(v79 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v66[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  sub_25F0BEC1C(v89, v91);
  v30 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate;
  swift_beginAccess();
  v81 = v7;
  sub_25F0BEC80(v91, v7 + v30);
  swift_endAccess();
  sub_25F17884C();
  v31 = *(v22 + 16);
  v89 = v21;
  v77 = v31;
  v31(v25, v90, v21);
  v75 = v17;
  v32 = *(v17 + 16);
  v76 = v20;
  v33 = v88;
  v32(v20);
  v78 = v29;
  v34 = sub_25F17887C();
  v35 = sub_25F17955C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v91[0] = v69;
    *v36 = 136446722;
    v37 = v72;
    v68 = v34;
    sub_25F177D6C();
    sub_25F0BF2A8(&qword_27FD46BA0, MEMORY[0x277D40FF8]);
    v67 = v35;
    v38 = v74;
    v39 = sub_25F17980C();
    v70 = v16;
    v71 = v32;
    v41 = v40;
    (*(v73 + 8))(v37, v38);
    (*(v22 + 8))(v25, v89);
    v42 = sub_25F0BECF0(v39, v41, v91);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2082;
    v43 = v85;
    v44 = v76;
    sub_25F177CFC();
    sub_25F0BF2A8(&qword_27FD46BA8, MEMORY[0x277D40E58]);
    v45 = v87;
    v46 = sub_25F17980C();
    v48 = v47;
    v49 = v45;
    v16 = v70;
    (*(v86 + 8))(v43, v49);
    (*(v75 + 8))(v44, v16);
    v50 = sub_25F0BECF0(v46, v48, v91);

    *(v36 + 14) = v50;
    *(v36 + 22) = 2082;
    v32 = v71;
    v51 = sub_25F17992C();
    v53 = sub_25F0BECF0(v51, v52, v91);

    *(v36 + 24) = v53;
    v54 = v68;
    _os_log_impl(&dword_25F0B3000, v68, v67, "PreviewSceneAgentProxy performing update %{public}s for entry point %{public}s, expecting %{public}s", v36, 0x20u);
    v55 = v69;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v55, -1, -1);
    v33 = v88;
    MEMORY[0x25F8D6230](v36, -1, -1);
  }

  else
  {

    (*(v75 + 8))(v76, v16);
    (*(v22 + 8))(v25, v89);
  }

  (*(v79 + 8))(v78, v80);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B80, &qword_25F17AF20);
  v57 = *(v56 + 48);
  v58 = v82;
  (v32)(v82, v33, v16);
  v77(v58 + v57, v90, v89);
  (*(*(v56 - 8) + 56))(v58, 0, 1, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  sub_25F0B7D00(&qword_27FD46B90, &qword_27FD46B88, &qword_25F17AF28);
  sub_25F0BF2A8(&qword_27FD46B98, MEMORY[0x277D40EF8]);
  v59 = v81;
  v60 = v84;
  v61 = sub_25F177A6C();
  sub_25F0C0FB4(v58, MEMORY[0x277D40EF8]);
  v62 = *(v59 + 32);
  v63 = v85;
  sub_25F177CFC();
  v64 = Task<>.enhancingPreviewAgentConnectionError(for:_:)(v62, v63, v61, v60);

  (*(v86 + 8))(v63, v87);
  return v64;
}

uint64_t PreviewSceneAgentProxy.perform(update:with:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_25F0BAD3C(a1, a2, a3);
  v11 = sub_25F17932C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_25F17930C();

  v12 = sub_25F1792FC();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v10;
  v15 = sub_25F0BC520(0, 0, v9, &unk_25F17AF40, v13);

  return v15;
}

uint64_t sub_25F0BC18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25F177F8C();
  v4[2] = v6;
  v7 = *(v6 - 8);
  v4[3] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v4[4] = v9;
  v4[5] = sub_25F17930C();
  v4[6] = sub_25F1792FC();
  v10 = *(MEMORY[0x277D857C8] + 4);
  v11 = swift_task_alloc();
  v4[7] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v11 = v4;
  v11[1] = sub_25F0BC2D8;
  v13 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v9, a4, v6, v12, v13);
}

uint64_t sub_25F0BC2D8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v14 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_25F1792CC();
    v8 = v7;
    v9 = sub_25F0BC4B0;
  }

  else
  {
    v11 = v2[5];
    v10 = v2[6];
    (*(v2[3] + 8))(v2[4], v2[2]);
    v6 = sub_25F1792CC();
    v8 = v12;
    v9 = sub_25F0BC440;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_25F0BC440()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F0BC4B0()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_25F0BC520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_25F0B7E2C(a3, v24 - v10, &qword_27FD46BB0, &qword_25F17AF30);
  v12 = sub_25F17932C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F0B7E94(v11, &qword_27FD46BB0, &qword_25F17AF30);
  }

  else
  {
    sub_25F17931C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25F1792CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25F1790DC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_25F0B7E94(a3, &qword_27FD46BB0, &qword_25F17AF30);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25F0B7E94(a3, &qword_27FD46BB0, &qword_25F17AF30);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_25F0BC7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_25F0B7E2C(a3, v24 - v10, &qword_27FD46BB0, &qword_25F17AF30);
  v12 = sub_25F17932C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F0B7E94(v11, &qword_27FD46BB0, &qword_25F17AF30);
  }

  else
  {
    sub_25F17931C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25F1792CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_25F1790DC() + 32;
      sub_25F177F8C();

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_25F0B7E94(a3, &qword_27FD46BB0, &qword_25F17AF30);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25F0B7E94(a3, &qword_27FD46BB0, &qword_25F17AF30);
  sub_25F177F8C();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t PreviewSceneAgentProxy.generateStaticOutput<A>(for:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_25F177E1C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B80, &qword_25F17AF20);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  sub_25F0B7D00(&qword_27FD46B90, &qword_27FD46B88, &qword_25F17AF28);
  sub_25F0BF2A8(&qword_27FD46B98, MEMORY[0x277D40EF8]);
  v12 = sub_25F177A6C();
  sub_25F0C0FB4(v10, MEMORY[0x277D40EF8]);
  v13 = Task<>.enhancingPreviewAgentConnectionError(for:_:)(*(v4 + 32), a1, v12, a3);

  return v13;
}

{
  v4 = sub_25F177D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F177D4C();
  v10 = PreviewSceneAgentProxy.generateStaticOutput<A>(for:expecting:)(v8, v9, a3);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t PreviewSceneAgentProxy.sendCommitPostSynchronize()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB8, &qword_25F183B60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9[-v3];
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v5 = *(v0 + 48);
  v9[15] = 0;
  v6 = sub_25F178F7C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_25F1770CC();
  sub_25F0B7E94(v4, &qword_27FD46BB8, &qword_25F183B60);
  return v7;
}

uint64_t PreviewSceneAgentProxy.sendRequestPreferredSize()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB8, &qword_25F183B60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9[-v3];
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v5 = *(v0 + 48);
  v9[15] = 1;
  v6 = sub_25F178F7C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_25F177D9C();
  type metadata accessor for CGSize(0);
  sub_25F0BF4D8();
  sub_25F0BF2A8(&qword_27FD46BC8, MEMORY[0x277D40E80]);
  sub_25F1770EC();
  v7 = sub_25F1770DC();
  sub_25F0B7E94(v4, &qword_27FD46BB8, &qword_25F183B60);
  return v7;
}

uint64_t PreviewSceneAgentProxy.addMessageStream(for:)(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_25F17776C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v28 - v9;
  v11 = sub_25F1787BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BD0, &unk_25F17AF50);
  v17 = *(v16 - 8);
  v31 = v16;
  v32 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v28 - v19;
  sub_25F1787CC();
  sub_25F1774BC();
  v30 = sub_25F17940C();
  (*(v12 + 8))(v15, v11);
  v22 = *(v2 + OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_messageStreamHub);
  v21 = *(v2 + OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_messageStreamHub + 8);
  LODWORD(v12) = *(v2 + 32);
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BE0, &unk_25F180240);
  v23 = sub_25F17932C();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  (*(v4 + 16))(v6, v29, v3);
  v24 = (*(v4 + 80) + 36) & ~*(v4 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v21;
  *(v25 + 32) = v12;
  (*(v4 + 32))(v25 + v24, v6, v3);

  sub_25F17870C();
  sub_25F0B7D00(&qword_27FD46BE8, &qword_27FD46BD0, &unk_25F17AF50);
  v26 = v31;
  sub_25F17808C();

  (*(v32 + 8))(v20, v26);
  return v30;
}

uint64_t PreviewSceneAgentProxy.sendEndpoint(_:context:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F17764C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F177E2C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BF0, &qword_25F180250) + 48);
  v15 = sub_25F17776C();
  (*(*(v15 - 8) + 16))(v13, a3, v15);
  v16 = sub_25F177F8C();
  (*(*(v16 - 8) + 16))(&v13[v14], a2, v16);
  sub_25F17763C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  sub_25F0BF2A8(&qword_27FD46BF8, MEMORY[0x277D40F08]);
  sub_25F17701C();
  (*(v6 + 8))(v9, v5);
  return sub_25F0C0FB4(v13, MEMORY[0x277D40F08]);
}

id sub_25F0BD704(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtCC15PreviewShellKit22PreviewSceneAgentProxyP33_3E64D4B6ABF6A6AD0F98F116D965CFCA13SceneDelegate_invalidationHandle;
  sub_25F17930C();
  v6 = sub_25F1792FC();
  v7 = sub_25F17852C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12 = 2;
  *&v2[v5] = sub_25F17851C();
  sub_25F1793DC();
  sub_25F1793CC();
  sub_25F1793BC();
  *&v2[OBJC_IVAR____TtCC15PreviewShellKit22PreviewSceneAgentProxyP33_3E64D4B6ABF6A6AD0F98F116D965CFCA13SceneDelegate_sceneMessenger] = a1;
  v15.receiver = v2;
  v15.super_class = ObjectType;

  v14 = objc_msgSendSuper2(&v15, sel_init, v12, v6, v13, 0, 0);
  *(swift_allocObject() + 16) = v14;
  sub_25F0BF2A8(&qword_27FD46CE0, type metadata accessor for PreviewSceneAgentProxy.SceneDelegate);
  v10 = v14;
  sub_25F1783EC();

  return v10;
}

uint64_t sub_25F0BDB30(void *a1)
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000034, 0x800000025F1844F0);
  v2 = [a1 clientSettings];
  v3 = [v2 description];
  v4 = sub_25F17908C();
  v6 = v5;

  MEMORY[0x25F8D50D0](v4, v6);

  return 0;
}

uint64_t SceneClientSettingsUpdate.init(clientSettings:transitionContext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id sub_25F0BDCE4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25F0BDDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F0BF2A8(&qword_27FD46CE0, type metadata accessor for PreviewSceneAgentProxy.SceneDelegate);

  return MEMORY[0x2821A0980](a1, a2, a3, v6);
}

uint64_t PreviewSceneAgentProxy.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_connectionSender;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_25F0B7E94(v0 + OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_currentUpdateDelegate, &qword_27FD46B70, &qword_25F17AF18);
  v6 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_messageStreamHub);
  v5 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_messageStreamHub + 8);

  v7 = OBJC_IVAR____TtC15PreviewShellKit22PreviewSceneAgentProxy_disconnected;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t PreviewSceneAgentProxy.__deallocating_deinit()
{
  PreviewSceneAgentProxy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25F0BDFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F0BF2A8(&qword_27FD46CF8, type metadata accessor for PreviewSceneAgentProxy);

  return MEMORY[0x2821A09D0](a1, a2, a3, v6);
}

void *SceneClientSettingsUpdate.transitionContext.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_25F0BE110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = v6;
  *(v8 + 88) = a6;
  *(v8 + 68) = a5;
  v10 = type metadata accessor for AgentConnectionError();
  *(v8 + 96) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D58, &unk_25F17B1B0);
  *(v8 + 112) = v12;
  v13 = *(v12 - 8);
  *(v8 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v15 = *(MEMORY[0x277D857C8] + 4);
  v16 = swift_task_alloc();
  *(v8 + 136) = v16;
  v17 = sub_25F177F8C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v16 = v8;
  v16[1] = sub_25F0BE290;
  v19 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a4, v17, v18, v19);
}

uint64_t sub_25F0BE290()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F0BE3DC, 0, 0);
  }

  else
  {
    v4 = v3[16];
    v5 = v3[13];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_25F0BE3DC()
{
  v1 = *(v0 + 144);
  v2 = sub_25F176D2C();
  v3 = [v2 isBSServiceConnectionError];

  if (v3)
  {
    v4 = [objc_opt_self() identifierWithPid_];
    if (v4 && (v5 = v4, sub_25F0C1014(0, &qword_27FD46D78, 0x277D46F48), v6 = v5, v7 = sub_25F0E6930(v6), v6, v6, v7))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
      *(swift_task_alloc() + 16) = v7;
      sub_25F1786BC();

      sub_25F17869C();
      v8 = sub_25F1786CC();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
      v8 = sub_25F17872C();
    }

    *(v0 + 152) = v8;
    v9 = *(MEMORY[0x277D40548] + 4);
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_25F0BE6E8;
    v11 = *(v0 + 128);

    return MEMORY[0x2821A0B98](v11);
  }

  else
  {
    v12 = *(v0 + 144);
    swift_willThrow();
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);
    v15 = *(v0 + 104);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_25F0BE6E8()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F0BE800, 0, 0);
}

uint64_t sub_25F0BE800()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  sub_25F17810C();
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = sub_25F177D5C();
  (*(*(v10 - 8) + 16))(v5, v6, v10);
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D68, &qword_25F17B1C0);
  *(v5 + *(v7 + 20)) = sub_25F17991C() & 1;
  v11 = v1;
  sub_25F0BF2A8(&qword_27FD46D70, type metadata accessor for AgentConnectionError);
  sub_25F1781BC();

  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  v14 = __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  v15 = *(v12 - 8);
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  (*(v15 + 16))(v17, v14, v12);
  v18 = *(*(v13 + 8) + 8);
  if (sub_25F17981C())
  {
    (*(v15 + 8))(v17, v12);
  }

  else
  {
    swift_allocError();
    (*(v15 + 32))(v19, v17, v12);
  }

  v20 = *(v0 + 144);
  v21 = *(v0 + 104);
  swift_willThrow();
  sub_25F0C0FA8(v8, v9);

  sub_25F0C0FB4(v21, type metadata accessor for AgentConnectionError);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_25F0BEAE0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25F0BEB38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F0BEB70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F0BEBC0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_25F0BECF0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_25F0BEC1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F0BEC80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B70, &qword_25F17AF18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0BECF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F0BEDBC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25F0C1064(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_25F0BEDBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25F0BEEC8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_25F17971C();
    a6 = v11;
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

uint64_t sub_25F0BEEC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F0BEF14(a1, a2);
  sub_25F0BF044(&unk_287150EB0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25F0BEF14(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25F0BF130(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25F17971C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25F17916C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F0BF130(v10, 0);
        result = sub_25F1796CC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25F0BF044(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25F0BF1A4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25F0BF130(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46D80, &qword_25F17B1C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25F0BF1A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46D80, &qword_25F17B1C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_25F0BF298(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25F0BF2A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F0BF2F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F0BF330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0BF3E4;

  return sub_25F0BC18C(a1, v4, v5, v6);
}

uint64_t sub_25F0BF3E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_25F0BF4D8()
{
  result = qword_27FD46BC0;
  if (!qword_27FD46BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46BC0);
  }

  return result;
}

uint64_t sub_25F0BF52C()
{
  v1 = sub_25F17776C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 36) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F0BF5F8(uint64_t a1)
{
  v4 = *(sub_25F17776C() - 8);
  v5 = (*(v4 + 80) + 36) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F0C10CC;

  return sub_25F111C90(a1, v6, v7, v8, v1 + v5);
}

void sub_25F0BF760()
{
  sub_25F0BF884();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_25F0BF918();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_25F0BF884()
{
  if (!qword_27FD46C20)
  {
    sub_25F177E3C();
    sub_25F0BF2A8(&qword_27FD46C28, MEMORY[0x277D40F10]);
    v0 = sub_25F17703C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD46C20);
    }
  }
}

void sub_25F0BF918()
{
  if (!qword_27FD46C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FD46C38, qword_25F17C0E0);
    v0 = sub_25F177F5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD46C30);
    }
  }
}

uint64_t sub_25F0BF9B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F0BF9F0()
{
  sub_25F0BFA90();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_25F0BFA90()
{
  if (!qword_27FD46CD0)
  {
    v0 = sub_25F1793AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD46CD0);
    }
  }
}

uint64_t sub_25F0BFAE0(uint64_t *a1, int a2)
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

uint64_t sub_25F0BFB28(uint64_t result, int a2, int a3)
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

void sub_25F0BFBBC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_25F17978C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D50, &qword_25F17B198);
      v3 = sub_25F1796BC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_25F17978C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x25F8D5690](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_25F1795DC();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_25F0C1014(0, &qword_27FD46CE8, 0x277CF0B58);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_25F1795EC();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_25F1795DC();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_25F0C1014(0, &qword_27FD46CE8, 0x277CF0B58);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_25F1795EC();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_25F0BFEAC(uint64_t a1)
{
  v2 = v1;
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_25F17969C();
    sub_25F0C1014(0, &qword_27FD46CE8, 0x277CF0B58);
    sub_25F0C0358();
    sub_25F1794AC();
    a1 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (a1 < 0)
  {
    if (!sub_25F1796AC() || (sub_25F0C1014(0, &qword_27FD46CE8, 0x277CF0B58), swift_dynamicCast(), v16 = v18, v14 = v6, v15 = v7, !v18))
    {
LABEL_20:
      sub_25F0C03C0();
      return;
    }

LABEL_18:
    sub_25F17714C();
    if (swift_dynamicCastClass())
    {
      v17 = *(v2 + OBJC_IVAR____TtCC15PreviewShellKit22PreviewSceneAgentProxyP33_3E64D4B6ABF6A6AD0F98F116D965CFCA13SceneDelegate_sceneMessenger);
      sub_25F17710C();
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_20;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_25F0C0110(void *a1, void *a2)
{
  v4 = sub_25F1787BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v9 = [a1 clientSettings];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v15[0] = v10;
    v15[1] = a2;
    v11 = v10;
    v12 = a2;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B48, &qword_25F17AF08);
    sub_25F17938C();
  }

  else
  {

    MEMORY[0x28223BE20](v14);
    v15[-2] = a1;
    sub_25F1787CC();
    sub_25F17814C();
    (*(v5 + 8))(v8, v4);
  }
}

unint64_t sub_25F0C0358()
{
  result = qword_27FD46CF0;
  if (!qword_27FD46CF0)
  {
    sub_25F0C1014(255, &qword_27FD46CE8, 0x277CF0B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46CF0);
  }

  return result;
}

uint64_t sub_25F0C03C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F0C040C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[14]);

  v8 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_25F0C0520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0C0590(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25F0B9E40(a1, v1 + v4, v5);
}

uint64_t sub_25F0C0638()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[14]);

  v10 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_25F0C075C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25F0BF3E4;

  return sub_25F0BA078(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_25F0C089C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = v0 + v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(v9 + v1[14]);

  v12 = *(v0 + v4);

  v13 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v2 | 7);
}

uint64_t sub_25F0C09E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D08, &qword_25F17B148) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25F0C10CC;

  return sub_25F0BA5B0(a1, v9, v10, v11, v1 + v6, v12, v13, v14);
}

uint64_t sub_25F0C0B64()
{
  v1 = sub_25F1780FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F0C0BEC()
{
  v1 = *(sub_25F1780FC() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_25F1780EC();
}

uint64_t sub_25F0C0C84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25F0C0C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F177D9C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25F0C0D90()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B48, &qword_25F17AF08);
  return sub_25F17939C();
}

uint64_t sub_25F0C0DD4()
{
  v1 = sub_25F177D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 44) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F0C0EA0(uint64_t a1)
{
  v4 = *(sub_25F177D5C() - 8);
  v5 = (*(v4 + 80) + 44) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25F0C10CC;

  return sub_25F0BE110(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_25F0C0FA8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_25F0C0FB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F0C1014(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F0C1064(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CrashedViewController.__allocating_init(style:snapshotImage:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  sub_25F0C11F8(a1, v12);
  v13 = a2;
  v6 = a2;
  sub_25F178EFC();
  v14 = v10;
  v15 = v11;
  sub_25F0B5888(v12);
  v8 = v7;

  sub_25F0C1254(a1);
  return v8;
}

uint64_t CrashedViewController.init(style:snapshotImage:)(uint64_t a1, void *a2)
{
  sub_25F0C11F8(a1, v10);
  v11 = a2;
  v4 = a2;
  sub_25F178EFC();
  v12 = v8;
  v13 = v9;
  sub_25F0B5888(v10);
  v6 = v5;

  sub_25F0C1254(a1);
  return v6;
}

id CrashedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double CrashedView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F178F4C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  LOBYTE(v22[0]) = *(v1 + 56);
  *(&v22[0] + 1) = v7;
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46DF0, &qword_25F17B1E0);
  sub_25F178F0C();
  *&v22[0] = [objc_opt_self() rootSettings];
  sub_25F0C11F8(v1, v22 + 8);
  *(&v23 + 1) = v6;
  LOBYTE(v24) = v20[0];
  sub_25F178F3C();
  *(&v24 + 1) = sub_25F178B9C();
  *&v25 = 0x404E000000000000;
  v9 = sub_25F17905C();
  v10 = objc_opt_self();
  v11 = [v10 colorNamed_];

  if (!v11)
  {
    v12 = [v10 systemBlueColor];
  }

  *(&v25 + 1) = sub_25F178E5C();
  sub_25F0B7BA8(v2, v20);
  v13 = swift_allocObject();
  v14 = v20[3];
  *(v13 + 48) = v20[2];
  *(v13 + 64) = v14;
  *(v13 + 80) = v21;
  v15 = v20[1];
  *(v13 + 16) = v20[0];
  *(v13 + 32) = v15;
  v16 = v23;
  *(a1 + 32) = v22[2];
  *(a1 + 48) = v16;
  v17 = v25;
  *(a1 + 64) = v24;
  *(a1 + 80) = v17;
  result = *v22;
  v19 = v22[1];
  *a1 = v22[0];
  *(a1 + 16) = v19;
  *(a1 + 96) = sub_25F0C160C;
  *(a1 + 104) = v13;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_25F0C155C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46DF0, &qword_25F17B1E0);
  return sub_25F178F1C();
}

uint64_t sub_25F0C15BC()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  }

  v1 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t get_enum_tag_for_layout_string_15PreviewShellKit0A8Reloader_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F0C16C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F0C1720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_25F0C1798()
{
  result = qword_27FD46E08;
  if (!qword_27FD46E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46E10, &qword_25F17B2D8);
    sub_25F0C1824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46E08);
  }

  return result;
}

unint64_t sub_25F0C1824()
{
  result = qword_27FD46E18;
  if (!qword_27FD46E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46E18);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_25F0C1894(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_25F0C18DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F0C1960@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E20, &qword_25F17B3A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E28, &qword_25F17B3B0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E30, &qword_25F17B3B8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E38, &qword_25F17B3C0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v42 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E40, &qword_25F17B3C8);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v42 - v24;
  *v20 = sub_25F178F5C();
  v20[1] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E48, &qword_25F17B3D0);
  sub_25F0C1D00(v1, v20 + *(v27 + 44));
  *(v20 + *(v17 + 44)) = sub_25F178D6C();
  sub_25F0C2EA8(v5);
  sub_25F178F5C();
  sub_25F178BBC();
  sub_25F0B7D50(v5, v10, &qword_27FD46E20, &qword_25F17B3A8);
  v28 = &v10[*(v7 + 44)];
  v29 = v49;
  *(v28 + 4) = v48;
  *(v28 + 5) = v29;
  *(v28 + 6) = v50;
  v30 = v45;
  *v28 = v44;
  *(v28 + 1) = v30;
  v31 = v47;
  *(v28 + 2) = v46;
  *(v28 + 3) = v31;
  LOBYTE(v17) = sub_25F178D5C();
  sub_25F0B7D50(v10, v15, &qword_27FD46E28, &qword_25F17B3B0);
  v15[*(v12 + 44)] = v17;
  v32 = sub_25F178F5C();
  v34 = v33;
  v35 = &v25[*(v22 + 44)];
  sub_25F0B7D50(v15, v35, &qword_27FD46E30, &qword_25F17B3B8);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E50, &qword_25F17B3D8) + 36));
  *v36 = v32;
  v36[1] = v34;
  sub_25F0B7D50(v20, v25, &qword_27FD46E38, &qword_25F17B3C0);
  [*v1 crashAnimationDuration];
  v37 = sub_25F178F6C();
  v38 = *(v1 + 64);
  v39 = v43;
  sub_25F0B7D50(v25, v43, &qword_27FD46E40, &qword_25F17B3C8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E58, &qword_25F17B3E0);
  v41 = v39 + *(result + 36);
  *v41 = v37;
  *(v41 + 8) = v38;
  return result;
}

uint64_t sub_25F0C1D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F10, &qword_25F17B460);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v81 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F18, &qword_25F17B468);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v81 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F20, &qword_25F17B470);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v94 = (&v81 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F28, &qword_25F17B478);
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = *(v97 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v93 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v92 = &v81 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F30, &qword_25F17B480);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v99 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v81 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F38, &qword_25F17B488);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v81 - v27;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F40, &qword_25F17B490);
  v29 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v96 = &v81 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F48, &qword_25F17B498);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v81 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v100 = &v81 - v39;
  if (*(a1 + 9) == 1)
  {
    v88 = v10;
    v89 = v3;
    v85 = v37;
    v86 = v38;
    v87 = v24;
    v83 = sub_25F178CDC();
    LOBYTE(v102[0]) = 1;
    sub_25F0C26DC(a1, &v108);
    v121 = v112;
    v122 = v113;
    v123 = v114;
    v124 = v115;
    v117 = v108;
    v118 = v109;
    v119 = v110;
    v120 = v111;
    v125[0] = v108;
    v125[1] = v109;
    v125[2] = v110;
    v125[3] = v111;
    v125[4] = v112;
    v125[5] = v113;
    v125[6] = v114;
    v126 = v115;
    sub_25F0B7E2C(&v117, v104, &qword_27FD46F58, &qword_25F17B4A0);
    sub_25F0B7E94(v125, &qword_27FD46F58, &qword_25F17B4A0);
    *(&v116[4] + 7) = v121;
    *(&v116[5] + 7) = v122;
    *(&v116[6] + 7) = v123;
    *(v116 + 7) = v117;
    *(&v116[1] + 7) = v118;
    *(&v116[2] + 7) = v119;
    *(&v116[7] + 7) = v124;
    *(&v116[3] + 7) = v120;
    v82 = LOBYTE(v102[0]);
    v81 = sub_25F178D5C();
    v104[0] = 1;
    v40 = *(a1 + 8);
    v90 = v7;
    v91 = v6;
    v84 = a1;
    if (v40 == 1)
    {
      *&v108 = sub_25F178E7C();
      v41 = sub_25F178B9C();
    }

    else
    {
      v41 = *(a1 + 72);
    }

    v43 = &v28[*(v25 + 36)];
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F60, &qword_25F17B4A8);
    v45 = v43 + *(v44 + 52);
    v46 = *(sub_25F178BAC() + 20);
    v47 = *MEMORY[0x277CE0118];
    v48 = sub_25F178CCC();
    (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
    __asm { FMOV            V0.2D, #15.0 }

    *v45 = _Q0;
    *v43 = v41;
    *(v43 + *(v44 + 56)) = 256;
    v54 = v116[5];
    *(v28 + 81) = v116[4];
    *(v28 + 97) = v54;
    *(v28 + 113) = v116[6];
    *(v28 + 8) = *(&v116[6] + 15);
    v55 = v116[1];
    *(v28 + 17) = v116[0];
    *(v28 + 33) = v55;
    v56 = v116[3];
    *(v28 + 49) = v116[2];
    *v28 = v83;
    *(v28 + 1) = 0;
    v57 = v81;
    v28[16] = v82;
    *(v28 + 65) = v56;
    v28[144] = v57;
    *(v28 + 145) = v127[0];
    *(v28 + 37) = *(v127 + 3);
    *(v28 + 152) = 0u;
    *(v28 + 168) = 0u;
    v28[184] = 1;
    sub_25F178F5C();
    v58 = 1;
    sub_25F178BBC();
    v59 = v28;
    v60 = v96;
    sub_25F0B7D50(v59, v96, &qword_27FD46F38, &qword_25F17B488);
    v61 = v84;
    _ZF = *(v84 + 64) == 0;
    v62 = (v60 + *(v95 + 36));
    v63 = v113;
    v62[4] = v112;
    v62[5] = v63;
    v62[6] = v114;
    v64 = v109;
    *v62 = v108;
    v62[1] = v64;
    if (_ZF)
    {
      v65 = 0.0;
    }

    else
    {
      v65 = 1.0;
    }

    v66 = v111;
    v62[2] = v110;
    v62[3] = v66;
    sub_25F0B7D50(v60, v36, &qword_27FD46F40, &qword_25F17B490);
    *&v36[*(v85 + 36)] = v65;
    sub_25F0B7D50(v36, v100, &qword_27FD46F48, &qword_25F17B498);
    sub_25F0C11F8(v61 + 8, v104);
    v102[0] = v105;
    v102[1] = v106;
    v103 = v107;
    v67 = *(&v106 + 1);
    sub_25F0B7E94(v102, &qword_27FD46F68, &qword_25F17B4B0);
    if (v67)
    {
      v68 = sub_25F178CDC();
      v69 = v94;
      *v94 = v68;
      *(v69 + 8) = 0;
      *(v69 + 16) = 1;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F78, &qword_25F17B4C0);
      sub_25F0C2AC0(v61, v69 + *(v70 + 44));
      v71 = v93;
      sub_25F0B7D50(v69, v93, &qword_27FD46F20, &qword_25F17B470);
      v72 = v98;
      *(v71 + *(v98 + 36)) = v65;
      v73 = v71;
      v74 = v92;
      sub_25F0B7D50(v73, v92, &qword_27FD46F28, &qword_25F17B478);
      v75 = v87;
      sub_25F0B7D50(v74, v87, &qword_27FD46F28, &qword_25F17B478);
      v58 = 0;
      v76 = v88;
    }

    else
    {
      v75 = v87;
      v76 = v88;
      v72 = v98;
    }

    (*(v97 + 56))(v75, v58, 1, v72);
    v77 = v100;
    v78 = v86;
    sub_25F0B7E2C(v100, v86, &qword_27FD46F48, &qword_25F17B498);
    v79 = v99;
    sub_25F0B7E2C(v75, v99, &qword_27FD46F30, &qword_25F17B480);
    sub_25F0B7E2C(v78, v76, &qword_27FD46F48, &qword_25F17B498);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F70, &qword_25F17B4B8);
    sub_25F0B7E2C(v79, v76 + *(v80 + 48), &qword_27FD46F30, &qword_25F17B480);
    sub_25F0B7E94(v79, &qword_27FD46F30, &qword_25F17B480);
    sub_25F0B7E94(v78, &qword_27FD46F48, &qword_25F17B498);
    sub_25F0B7E2C(v76, v91, &qword_27FD46F18, &qword_25F17B468);
    swift_storeEnumTagMultiPayload();
    sub_25F0B7D00(&qword_27FD46F50, &qword_27FD46F18, &qword_25F17B468);
    sub_25F178CFC();
    sub_25F0B7E94(v76, &qword_27FD46F18, &qword_25F17B468);
    sub_25F0B7E94(v75, &qword_27FD46F30, &qword_25F17B480);
    return sub_25F0B7E94(v77, &qword_27FD46F48, &qword_25F17B498);
  }

  else
  {
    *v6 = sub_25F178E7C();
    swift_storeEnumTagMultiPayload();
    sub_25F0B7D00(&qword_27FD46F50, &qword_27FD46F18, &qword_25F17B468);
    return sub_25F178CFC();
  }
}

uint64_t sub_25F0C26DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46FA8, &qword_25F17B510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - v6;
  v50 = sub_25F178ECC();
  v8 = [objc_opt_self() systemRedColor];
  v49 = sub_25F178E5C();
  KeyPath = swift_getKeyPath();
  v9 = *(a1 + 80);
  sub_25F178DBC();
  v10 = sub_25F178D9C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v47 = sub_25F178DCC();
  sub_25F0B7E94(v7, &qword_27FD46FA8, &qword_25F17B510);
  v52 = swift_getKeyPath();
  v51 = sub_25F178D7C();
  sub_25F178B4C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LOBYTE(v61) = 0;
  sub_25F178CBC();
  v19 = sub_25F178DFC();
  v21 = v20;
  v23 = v22;
  sub_25F178DAC();
  v24 = sub_25F178DDC();
  v26 = v25;
  v28 = v27;
  sub_25F0B7E1C(v19, v21, v23 & 1);

  sub_25F178E9C();
  v29 = sub_25F178DEC();
  v31 = v30;
  HIDWORD(v46) = v32;
  v34 = v33;

  sub_25F0B7E1C(v24, v26, v28 & 1);

  v36 = v49;
  v35 = v50;
  v37 = v47;
  v38 = KeyPath;
  *&v55 = v50;
  *(&v55 + 1) = KeyPath;
  *&v56 = v49;
  *(&v56 + 1) = v52;
  *&v57 = v47;
  BYTE8(v57) = v51;
  HIDWORD(v57) = *&v54[3];
  *(&v57 + 9) = *v54;
  *&v58 = v12;
  *(&v58 + 1) = v14;
  *&v59 = v16;
  *(&v59 + 1) = v18;
  v60 = 0;
  v61 = v55;
  LOBYTE(v66) = 0;
  v64 = v58;
  v65 = v59;
  v62 = v56;
  v63 = v57;
  v39 = BYTE4(v46);
  v40 = BYTE4(v46) & 1;
  v53 = BYTE4(v46) & 1;
  v41 = v56;
  v42 = v57;
  *a2 = v55;
  *(a2 + 16) = v41;
  v43 = v65;
  v44 = v66;
  *(a2 + 48) = v64;
  *(a2 + 64) = v43;
  *(a2 + 32) = v42;
  *(a2 + 80) = v44;
  *(a2 + 88) = v29;
  *(a2 + 96) = v31;
  *(a2 + 104) = v39 & 1;
  *(a2 + 112) = v34;
  sub_25F0B7E2C(&v55, v67, &qword_27FD46FB0, &qword_25F17B578);
  sub_25F0B7E0C(v29, v31, v40);

  sub_25F0B7E1C(v29, v31, v40);

  v67[0] = v35;
  v67[1] = v38;
  v67[2] = v36;
  v67[3] = v52;
  v67[4] = v37;
  v68 = v51;
  *v69 = *v54;
  *&v69[3] = *&v54[3];
  v70 = v12;
  v71 = v14;
  v72 = v16;
  v73 = v18;
  v74 = 0;
  return sub_25F0B7E94(v67, &qword_27FD46FB0, &qword_25F17B578);
}

uint64_t sub_25F0C2AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F80, &qword_25F17B4C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F88, &qword_25F17B4D0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - v15;
  sub_25F0C4FE4(a1, v26);
  v17 = swift_allocObject();
  v18 = v26[3];
  v17[3] = v26[2];
  v17[4] = v18;
  v19 = v26[5];
  v17[5] = v26[4];
  v17[6] = v19;
  v20 = v26[1];
  v17[1] = v26[0];
  v17[2] = v20;
  sub_25F178F2C();
  sub_25F0B7D00(&qword_27FD46F90, &qword_27FD46F80, &qword_25F17B4C8);
  sub_25F0C5084();
  sub_25F178E3C();
  (*(v5 + 8))(v8, v4);
  v21 = *(a1 + 88);
  KeyPath = swift_getKeyPath();
  v23 = &v16[*(v10 + 44)];
  *v23 = KeyPath;
  v23[1] = v21;
  sub_25F0B7E2C(v16, v14, &qword_27FD46F88, &qword_25F17B4D0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46FA0, &qword_25F17B508);
  sub_25F0B7E2C(v14, a2 + *(v24 + 48), &qword_27FD46F88, &qword_25F17B4D0);

  sub_25F0B7E94(v16, &qword_27FD46F88, &qword_25F17B4D0);
  return sub_25F0B7E94(v14, &qword_27FD46F88, &qword_25F17B4D0);
}

uint64_t sub_25F0C2D88(uint64_t a1)
{
  sub_25F0C11F8(a1 + 8, v4);
  v7[0] = *&v4[8];
  v7[1] = v5;
  v8 = v6;
  v1 = *(&v5 + 1);
  if (!*(&v5 + 1))
  {
    return sub_25F0B7E94(v7, &qword_27FD46F68, &qword_25F17B4B0);
  }

  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v7, *(&v5 + 1));
  (*(v2 + 8))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_25F0C2E30@<X0>(uint64_t a1@<X8>)
{
  sub_25F178CBC();
  result = sub_25F178DFC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_25F0C2EA8@<X0>(uint64_t a1@<X8>)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E60, &qword_25F17B3E8);
  v3 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v5 = (&v73 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E68, &qword_25F17B3F0);
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E70, &qword_25F17B3F8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = (&v73 - v14);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E78, &qword_25F17B400);
  v15 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v83 = (&v73 - v16);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E80, &qword_25F17B408);
  v17 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v88 = (&v73 - v18);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E88, &qword_25F17B410);
  v19 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v21 = &v73 - v20;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E90, &qword_25F17B418);
  v22 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v73 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E98, &qword_25F17B420);
  v24 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v73 - v25;
  v26 = sub_25F178EDC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v1 + 56);
  if (!v31 || (v32 = *(v1 + 8), v32 == 3))
  {
    *v5 = sub_25F178E6C();
    swift_storeEnumTagMultiPayload();
    sub_25F0C38FC();
    return sub_25F178CFC();
  }

  v76 = a1;
  v75 = v31;
  sub_25F178EBC();
  (*(v27 + 104))(v30, *MEMORY[0x277CE0FE0], v26);
  v77 = sub_25F178EEC();

  (*(v27 + 8))(v30, v26);
  if (v32)
  {
    if (v32 != 1)
    {
      v58 = 1.0;
      v59 = v75;
      v60 = v77;
      if (*(v1 + 64) == 1)
      {
        [*v1 crashFadeOutOpacity];
        v58 = v61;
      }

      v62 = sub_25F178D5C();
      v63 = v88;
      *v88 = v60;
      v63[1] = 0;
      *(v63 + 8) = 1;
      *(v63 + 3) = v58;
      *(v63 + 32) = v62;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46ED0, &qword_25F17B430);
      sub_25F0C3988();
      sub_25F0C3AC4();
      v54 = v89;
      sub_25F178CFC();
      goto LABEL_15;
    }

    v34 = v77;

    v35 = sub_25F178F5C();
    v36 = v83;
    *v83 = v35;
    v36[1] = v37;
    v38 = sub_25F178E7C();
    v39 = sub_25F178F5C();
    v74 = v40;
    v41 = v78;
    v42 = v78 + *(v10 + 36);
    if (*(v1 + 64) == 1)
    {
      v43 = *(sub_25F178BAC() + 20);
      v73 = v39;
      v44 = *MEMORY[0x277CE0118];
      v45 = sub_25F178CCC();
      (*(*(v45 - 8) + 104))(&v9[v43], v44, v45);
      __asm { FMOV            V0.2D, #15.0 }

      *v9 = _Q0;
      v51 = *(v1 + 72);
      v52 = v81;
      *&v9[*(v81 + 52)] = v51;
      *&v9[*(v52 + 56)] = 256;
      sub_25F0B7D50(v9, v42, &qword_27FD46E68, &qword_25F17B3F0);
      (*(v80 + 56))(v42, 0, 1, v52);
      v39 = v73;
    }

    else
    {
      (*(v80 + 56))(v42, 1, 1, v81);
    }

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46EF8, &qword_25F17B448);
    v65 = v83;
    v66 = v83 + *(v64 + 44);
    v67 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F00, &qword_25F17B450) + 36));
    v68 = v74;
    *v67 = v39;
    v67[1] = v68;
    *v41 = v38;
    v69 = v79;
    sub_25F0B7E2C(v41, v79, &qword_27FD46E70, &qword_25F17B3F8);
    *v66 = v34;
    *(v66 + 1) = 0;
    *(v66 + 8) = 1;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F08, &qword_25F17B458);
    sub_25F0B7E2C(v69, &v66[*(v70 + 48)], &qword_27FD46E70, &qword_25F17B3F8);
    swift_retain_n();
    sub_25F0B7E94(v41, &qword_27FD46E70, &qword_25F17B3F8);
    sub_25F0B7E94(v69, &qword_27FD46E70, &qword_25F17B3F8);

    v71 = v65;
    sub_25F0B7E2C(v65, v21, &qword_27FD46E78, &qword_25F17B400);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46EB8, &qword_25F17B428);
    sub_25F0C3A40();
    sub_25F0B7D00(&qword_27FD46EC0, &qword_27FD46E78, &qword_25F17B400);
    v72 = v85;
    sub_25F178CFC();
    sub_25F0B7E2C(v72, v88, &qword_27FD46E90, &qword_25F17B418);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46ED0, &qword_25F17B430);
    sub_25F0C3988();
    sub_25F0C3AC4();
    v54 = v89;
    sub_25F178CFC();
    sub_25F0B7E94(v72, &qword_27FD46E90, &qword_25F17B418);
    v55 = v71;
    v56 = &qword_27FD46E78;
    v57 = &qword_25F17B400;
  }

  else
  {
    *v21 = v77;
    *(v21 + 1) = 0;
    *(v21 + 8) = 1;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46EB8, &qword_25F17B428);
    sub_25F0C3A40();
    sub_25F0B7D00(&qword_27FD46EC0, &qword_27FD46E78, &qword_25F17B400);
    v53 = v85;
    sub_25F178CFC();
    sub_25F0B7E2C(v53, v88, &qword_27FD46E90, &qword_25F17B418);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46ED0, &qword_25F17B430);
    sub_25F0C3988();
    sub_25F0C3AC4();
    v54 = v89;
    sub_25F178CFC();
    v55 = v53;
    v56 = &qword_27FD46E90;
    v57 = &qword_25F17B418;
  }

  sub_25F0B7E94(v55, v56, v57);
  v59 = v75;
LABEL_15:
  sub_25F0B7E2C(v54, v5, &qword_27FD46E98, &qword_25F17B420);
  swift_storeEnumTagMultiPayload();
  sub_25F0C38FC();
  sub_25F178CFC();

  return sub_25F0B7E94(v54, &qword_27FD46E98, &qword_25F17B420);
}

unint64_t sub_25F0C38FC()
{
  result = qword_27FD46EA0;
  if (!qword_27FD46EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46E98, &qword_25F17B420);
    sub_25F0C3988();
    sub_25F0C3AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46EA0);
  }

  return result;
}

unint64_t sub_25F0C3988()
{
  result = qword_27FD46EA8;
  if (!qword_27FD46EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46E90, &qword_25F17B418);
    sub_25F0C3A40();
    sub_25F0B7D00(&qword_27FD46EC0, &qword_27FD46E78, &qword_25F17B400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46EA8);
  }

  return result;
}

unint64_t sub_25F0C3A40()
{
  result = qword_27FD46EB0;
  if (!qword_27FD46EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46EB8, &qword_25F17B428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46EB0);
  }

  return result;
}

unint64_t sub_25F0C3AC4()
{
  result = qword_27FD46EC8;
  if (!qword_27FD46EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46ED0, &qword_25F17B430);
    sub_25F0C3B7C();
    sub_25F0B7D00(&qword_27FD46EE8, &qword_27FD46EF0, &qword_25F17B440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46EC8);
  }

  return result;
}

unint64_t sub_25F0C3B7C()
{
  result = qword_27FD46ED8;
  if (!qword_27FD46ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46EE0, &qword_25F17B438);
    sub_25F0C3A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46ED8);
  }

  return result;
}

double sub_25F0C3C08()
{
  v1 = sub_25F178D0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD470B0, &qword_25F17B760);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47008, &qword_25F17B688);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v20 = v0 + *(type metadata accessor for UV_BorderedButtonStyle_iOS.BorderedButton(0) + 28);
  sub_25F0C50D8(v19);
  (*(v2 + 104))(v17, *MEMORY[0x277CE0558], v1);
  (*(v2 + 56))(v17, 0, 1, v1);
  v21 = *(v6 + 56);
  sub_25F0B7E2C(v19, v9, &qword_27FD47008, &qword_25F17B688);
  sub_25F0B7E2C(v17, &v9[v21], &qword_27FD47008, &qword_25F17B688);
  v22 = *(v2 + 48);
  if (v22(v9, 1, v1) == 1)
  {
    sub_25F0B7E94(v17, &qword_27FD47008, &qword_25F17B688);
    sub_25F0B7E94(v19, &qword_27FD47008, &qword_25F17B688);
    if (v22(&v9[v21], 1, v1) == 1)
    {
      sub_25F0B7E94(v9, &qword_27FD47008, &qword_25F17B688);
      return 29.0;
    }

    goto LABEL_6;
  }

  sub_25F0B7E2C(v9, v14, &qword_27FD47008, &qword_25F17B688);
  if (v22(&v9[v21], 1, v1) == 1)
  {
    sub_25F0B7E94(v17, &qword_27FD47008, &qword_25F17B688);
    sub_25F0B7E94(v19, &qword_27FD47008, &qword_25F17B688);
    (*(v2 + 8))(v14, v1);
LABEL_6:
    sub_25F0B7E94(v9, &qword_27FD470B0, &qword_25F17B760);
    return 58.0;
  }

  v24 = &v9[v21];
  v25 = v29;
  (*(v2 + 32))(v29, v24, v1);
  sub_25F0C5EFC(&qword_27FD470B8, MEMORY[0x277CE0570]);
  v26 = sub_25F17904C();
  v27 = *(v2 + 8);
  v27(v25, v1);
  sub_25F0B7E94(v17, &qword_27FD47008, &qword_25F17B688);
  sub_25F0B7E94(v19, &qword_27FD47008, &qword_25F17B688);
  v27(v14, v1);
  sub_25F0B7E94(v9, &qword_27FD47008, &qword_25F17B688);
  result = 58.0;
  if (v26)
  {
    return 29.0;
  }

  return result;
}

uint64_t sub_25F0C4074@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v1 = sub_25F178BAC();
  v2 = *(v1 - 8);
  v99 = v1 - 8;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v98 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47050, &qword_25F17B700);
  v5 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v95 - v6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47058, &qword_25F17B708);
  v7 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v105 = &v95 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47060, &qword_25F17B710);
  v9 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47068, &qword_25F17B718);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v95 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47070, &qword_25F17B720);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v95 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47078, &qword_25F17B728);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v96 = &v95 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47080, &qword_25F17B730);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v95 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47088, &qword_25F17B738);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v95 - v32;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47090, &qword_25F17B740);
  v34 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v100 = &v95 - v35;
  *v14 = sub_25F178CAC();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v36 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47098, &qword_25F17B748) + 44)];
  sub_25F178D1C();
  sub_25F178F5C();
  v37 = v33;
  sub_25F178BBC();
  sub_25F0B7D50(v14, v19, &qword_27FD47068, &qword_25F17B718);
  v38 = &v19[*(v16 + 44)];
  v39 = v113;
  *(v38 + 4) = v112;
  *(v38 + 5) = v39;
  *(v38 + 6) = v114;
  v40 = v109;
  *v38 = v108;
  *(v38 + 1) = v40;
  v41 = v111;
  *(v38 + 2) = v110;
  *(v38 + 3) = v41;
  LOBYTE(v14) = sub_25F178D5C();
  sub_25F178B4C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v96;
  sub_25F0B7D50(v19, v96, &qword_27FD47070, &qword_25F17B720);
  v51 = v50 + *(v21 + 44);
  *v51 = v14;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  v52 = sub_25F178E8C();
  KeyPath = swift_getKeyPath();
  sub_25F0B7D50(v50, v28, &qword_27FD47078, &qword_25F17B728);
  v54 = &v28[*(v25 + 44)];
  *v54 = KeyPath;
  v54[1] = v52;
  v55 = v98;
  v56 = sub_25F0C48AC();
  sub_25F0B7D50(v28, v37, &qword_27FD47080, &qword_25F17B730);
  *(v37 + *(v30 + 44)) = v56;
  v57 = *(v99 + 28);
  v58 = *MEMORY[0x277CE0118];
  v59 = sub_25F178CCC();
  (*(*(v59 - 8) + 104))(&v55[v57], v58, v59);
  __asm { FMOV            V0.2D, #14.0 }

  *v55 = _Q0;
  v65 = sub_25F17905C();
  v66 = objc_opt_self();
  v67 = [v66 colorNamed_];

  if (!v67)
  {
    v68 = [v66 systemBlueColor];
  }

  v69 = sub_25F178E5C();
  v70 = v102;
  sub_25F0C5E98(v55, v102);
  v71 = v104;
  *(v70 + *(v104 + 52)) = v69;
  *(v70 + *(v71 + 56)) = 256;
  v72 = sub_25F0C4BE8();
  v73 = v105;
  sub_25F0B7D50(v70, v105, &qword_27FD47050, &qword_25F17B700);
  *(v73 + *(v101 + 36)) = v72;
  sub_25F178F5C();
  sub_25F178B8C();
  v74 = v106;
  sub_25F0B7D50(v73, v106, &qword_27FD47058, &qword_25F17B708);
  v75 = (v74 + *(v103 + 36));
  v76 = v116;
  *v75 = v115;
  v75[1] = v76;
  v75[2] = v117;
  v77 = sub_25F178F5C();
  v79 = v78;
  v80 = v100;
  v81 = &v100[*(v97 + 36)];
  sub_25F0B7D50(v74, v81, &qword_27FD47060, &qword_25F17B710);
  v82 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD470A0, &qword_25F17B750) + 36));
  *v82 = v77;
  v82[1] = v79;
  sub_25F0B7D50(v37, v80, &qword_27FD47088, &qword_25F17B738);
  LOBYTE(v79) = sub_25F178D7C();
  v83 = sub_25F178D8C();
  sub_25F178D8C();
  if (sub_25F178D8C() != v79)
  {
    v83 = sub_25F178D8C();
  }

  sub_25F0C3C08();
  sub_25F178B4C();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = v107;
  sub_25F0B7D50(v80, v107, &qword_27FD47090, &qword_25F17B740);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD470A8, &qword_25F17B758);
  v94 = v92 + *(result + 36);
  *v94 = v83;
  *(v94 + 8) = v85;
  *(v94 + 16) = v87;
  *(v94 + 24) = v89;
  *(v94 + 32) = v91;
  *(v94 + 40) = 0;
  return result;
}

double sub_25F0C48AC()
{
  v1 = v0;
  v25 = sub_25F178C9C();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F178B6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for UV_BorderedButtonStyle_iOS.BorderedButton(0);
  v15 = v0 + *(v14 + 24);
  sub_25F0C52B8(v13);
  (*(v7 + 104))(v11, *MEMORY[0x277CDF3C0], v6);
  v16 = sub_25F178B5C();
  v17 = *(v7 + 8);
  v17(v11, v6);
  v17(v13, v6);
  v18 = v1 + *(v14 + 20);
  v19 = *v18;
  v20 = *(v18 + 8);
  if (v16)
  {
    if (v20)
    {
      if ((v19 & 1) == 0)
      {
        return 0.5;
      }
    }

    else
    {

      sub_25F17954C();
      v23 = sub_25F178D4C();
      sub_25F17882C();

      sub_25F178C8C();
      swift_getAtKeyPath();
      sub_25F0C5F44(v19, 0);
      (*(v2 + 8))(v5, v25);
      if (v26 != 1)
      {
        return 0.5;
      }
    }

    v24 = sub_25F178D2C();
    result = 1.0;
    if ((v24 & 1) == 0)
    {
      return result;
    }

    return 0.5;
  }

  if (!v20)
  {

    sub_25F17954C();
    v21 = sub_25F178D4C();
    sub_25F17882C();

    sub_25F178C8C();
    swift_getAtKeyPath();
    sub_25F0C5F44(v19, 0);
    (*(v2 + 8))(v5, v25);
    LOBYTE(v19) = v27;
  }

  result = 0.5;
  if (v19)
  {
    return 1.0;
  }

  return result;
}

double sub_25F0C4BE8()
{
  v1 = sub_25F178C9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for UV_BorderedButtonStyle_iOS.BorderedButton(0) + 20);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    if ((v7 & 1) == 0)
    {
      return 0.5;
    }

LABEL_5:
    v9 = sub_25F178D2C();
    result = 1.0;
    if ((v9 & 1) == 0)
    {
      return result;
    }

    return 0.5;
  }

  sub_25F17954C();
  v8 = sub_25F178D4C();
  sub_25F17882C();

  sub_25F178C8C();
  swift_getAtKeyPath();
  sub_25F0C5F44(v7, 0);
  (*(v2 + 8))(v5, v1);
  if (v11[15] == 1)
  {
    goto LABEL_5;
  }

  return 0.5;
}

uint64_t sub_25F0C4D64(uint64_t a1)
{
  v2 = sub_25F178B6C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25F178BFC();
}

uint64_t sub_25F0C4E2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47008, &qword_25F17B688);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25F0B7E2C(a1, &v6 - v4, &qword_27FD47008, &qword_25F17B688);
  return sub_25F178C3C();
}

uint64_t sub_25F0C4ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F178D3C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for UV_BorderedButtonStyle_iOS.BorderedButton(0);
  v6 = a2 + v5[5];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = v5[6];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46FF8, &qword_25F17B648);
  swift_storeEnumTagMultiPayload();
  v8 = v5[7];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47000, &qword_25F17B680);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F0C501C()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  }

  v1 = *(v0 + 88);

  v2 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

unint64_t sub_25F0C5084()
{
  result = qword_27FD46F98;
  if (!qword_27FD46F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46F98);
  }

  return result;
}

uint64_t sub_25F0C50D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F178C9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47000, &qword_25F17B680);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_25F0B7E2C(v2, &v16 - v11, &qword_27FD47000, &qword_25F17B680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25F0B7D50(v12, a1, &qword_27FD47008, &qword_25F17B688);
  }

  v14 = *v12;
  sub_25F17954C();
  v15 = sub_25F178D4C();
  sub_25F17882C();

  sub_25F178C8C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25F0C52B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F178C9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46FF8, &qword_25F17B648);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_25F0B7E2C(v2, &v17 - v11, &qword_27FD46FF8, &qword_25F17B648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25F178B6C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_25F17954C();
    v16 = sub_25F178D4C();
    sub_25F17882C();

    sub_25F178C8C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_25F0C54B8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x25F8D4B50]();
  *a1 = result;
  return result;
}

uint64_t sub_25F0C54E4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x25F8D4B50]();
  *a1 = result;
  return result;
}

uint64_t sub_25F0C5510(uint64_t *a1)
{
  v1 = *a1;

  return sub_25F178BDC();
}

uint64_t sub_25F0C553C(uint64_t *a1)
{
  v1 = *a1;

  return sub_25F178BDC();
}

uint64_t sub_25F0C5568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F178C0C();
  *a1 = result;
  return result;
}

uint64_t sub_25F0C5594(uint64_t *a1)
{
  v1 = *a1;

  return sub_25F178C1C();
}

uint64_t sub_25F0C55C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F178C4C();
  *a1 = result;
  return result;
}

uint64_t sub_25F0C55EC(uint64_t *a1)
{
  v1 = *a1;

  return sub_25F178C5C();
}

unint64_t sub_25F0C562C()
{
  result = qword_27FD46FB8;
  if (!qword_27FD46FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46E58, &qword_25F17B3E0);
    sub_25F0C56E4();
    sub_25F0B7D00(&qword_27FD46FE8, &qword_27FD46FF0, &qword_25F17B5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46FB8);
  }

  return result;
}

unint64_t sub_25F0C56E4()
{
  result = qword_27FD46FC0;
  if (!qword_27FD46FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46E40, &qword_25F17B3C8);
    sub_25F0C579C();
    sub_25F0B7D00(&qword_27FD46FE0, &qword_27FD46E50, &qword_25F17B3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46FC0);
  }

  return result;
}

unint64_t sub_25F0C579C()
{
  result = qword_27FD46FC8;
  if (!qword_27FD46FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46E38, &qword_25F17B3C0);
    sub_25F0B7D00(&qword_27FD46FD0, &qword_27FD46FD8, &qword_25F17B5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD46FC8);
  }

  return result;
}

uint64_t sub_25F0C5890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25F178C6C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25F0C594C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25F178D3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47010, &qword_25F17B690);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47018, &qword_25F17B698);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_25F0C5AE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_25F178D3C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47010, &qword_25F17B690);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47018, &qword_25F17B698);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_25F0C5C74()
{
  sub_25F178D3C();
  if (v0 <= 0x3F)
  {
    sub_25F0C5D28();
    if (v1 <= 0x3F)
    {
      sub_25F0C5D78();
      if (v2 <= 0x3F)
      {
        sub_25F0C5DD0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F0C5D28()
{
  if (!qword_27FD47030)
  {
    v0 = sub_25F178B7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD47030);
    }
  }
}

void sub_25F0C5D78()
{
  if (!qword_27FD47038)
  {
    sub_25F178B6C();
    v0 = sub_25F178B7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD47038);
    }
  }
}

void sub_25F0C5DD0()
{
  if (!qword_27FD47040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47008, &qword_25F17B688);
    v0 = sub_25F178B7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD47040);
    }
  }
}

uint64_t sub_25F0C5E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F178BAC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0C5EFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F0C5F44(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_25F0C5F54()
{
  result = qword_27FD470C0;
  if (!qword_27FD470C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD470A8, &qword_25F17B758);
    sub_25F0C5FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD470C0);
  }

  return result;
}

unint64_t sub_25F0C5FE0()
{
  result = qword_27FD470C8;
  if (!qword_27FD470C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47090, &qword_25F17B740);
    sub_25F0C6098();
    sub_25F0B7D00(&qword_27FD47108, &qword_27FD470A0, &qword_25F17B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD470C8);
  }

  return result;
}

unint64_t sub_25F0C6098()
{
  result = qword_27FD470D0;
  if (!qword_27FD470D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47088, &qword_25F17B738);
    sub_25F0C6124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD470D0);
  }

  return result;
}

unint64_t sub_25F0C6124()
{
  result = qword_27FD470D8;
  if (!qword_27FD470D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47080, &qword_25F17B730);
    sub_25F0C61DC();
    sub_25F0B7D00(&qword_27FD470F8, &qword_27FD47100, &qword_25F17B768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD470D8);
  }

  return result;
}

unint64_t sub_25F0C61DC()
{
  result = qword_27FD470E0;
  if (!qword_27FD470E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47078, &qword_25F17B728);
    sub_25F0C6268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD470E0);
  }

  return result;
}

unint64_t sub_25F0C6268()
{
  result = qword_27FD470E8;
  if (!qword_27FD470E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47070, &qword_25F17B720);
    sub_25F0B7D00(&qword_27FD470F0, &qword_27FD47068, &qword_25F17B718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD470E8);
  }

  return result;
}

uint64_t sub_25F0C632C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v4 = 0x3A7361766E61635BLL;
    v2 = (*((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))();
  }

  else
  {
    v4 = 0x203A49556E6F6E5BLL;
    v2 = (*(a2 + 40))();
  }

  MEMORY[0x25F8D50D0](v2);

  MEMORY[0x25F8D50D0](93, 0xE100000000000000);
  return v4;
}

uint64_t sub_25F0C63F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v70 = a2;
  v72 = a1;
  v8 = sub_25F17888C();
  v71 = *(v8 - 8);
  v9 = *(v71 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v68 - v13;
  v15 = type metadata accessor for ContentKey();
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v68 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v68 - v24;
  v26 = sub_25F1776AC();
  (*(*(v26 - 8) + 16))(v25, a3, v26);
  sub_25F0C6F18(a4, &v25[*(v16 + 28)]);
  v27 = *v5;
  if (*(*v5 + 16) && (v28 = sub_25F0C8848(v25), (v29 & 1) != 0))
  {
    v30 = (*(v27 + 56) + 16 * v28);
    v32 = *v30;
    v31 = v30[1];
    sub_25F17884C();
    sub_25F0C9BD4(v25, v23);
    v33 = sub_25F17887C();
    v34 = sub_25F17953C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v73 = v68;
      *v35 = 136315650;
      v36 = sub_25F0C632C(v72, v70);
      v38 = sub_25F0BECF0(v36, v37, &v73);
      v72 = v31;
      v39 = v38;

      *(v35 + 4) = v39;
      v69 = v8;
      *(v35 + 12) = 2080;
      v40 = ContentKey.description.getter();
      v42 = v41;
      sub_25F0CA760(v23);
      v43 = sub_25F0BECF0(v40, v42, &v73);

      *(v35 + 14) = v43;
      *(v35 + 22) = 2080;
      v44 = sub_25F0C632C(v32, v72);
      v46 = sub_25F0BECF0(v44, v45, &v73);

      *(v35 + 24) = v46;
      _os_log_impl(&dword_25F0B3000, v33, v34, "can't register %s for %s -- existing record: %s", v35, 0x20u);
      v47 = v68;
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v47, -1, -1);
      MEMORY[0x25F8D6230](v35, -1, -1);

      (*(v71 + 8))(v14, v69);
    }

    else
    {

      sub_25F0CA760(v23);
      (*(v71 + 8))(v14, v8);
    }

    return sub_25F0CA760(v25);
  }

  else
  {
    sub_25F17884C();
    sub_25F0C9BD4(v25, v20);
    v48 = sub_25F17887C();
    v49 = sub_25F17951C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v73 = v68;
      *v50 = 136315394;
      v51 = v70;
      v52 = sub_25F0C632C(v72, v70);
      v54 = sub_25F0BECF0(v52, v53, &v73);
      v69 = v8;
      v55 = v54;

      *(v50 + 4) = v55;
      *(v50 + 12) = 2080;
      v56 = ContentKey.description.getter();
      v58 = v57;
      sub_25F0CA760(v20);
      v59 = sub_25F0BECF0(v56, v58, &v73);

      *(v50 + 14) = v59;
      v60 = v49;
      v61 = v72;
      _os_log_impl(&dword_25F0B3000, v48, v60, "registering %s for %s", v50, 0x16u);
      v62 = v68;
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v62, -1, -1);
      MEMORY[0x25F8D6230](v50, -1, -1);

      (*(v71 + 8))(v12, v69);
    }

    else
    {

      sub_25F0CA760(v20);
      (*(v71 + 8))(v12, v8);
      v51 = v70;
      v61 = v72;
    }

    v63 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *v5;
    *v5 = 0x8000000000000000;
    sub_25F16E794(v61, v51, v25, isUniquelyReferenced_nonNull_native);
    sub_25F0CA760(v25);
    v65 = v73;
    v66 = *v5;

    *v5 = v65;
  }

  return result;
}

uint64_t ContentKey.init(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25F1776AC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for ContentKey();
  return sub_25F0B7D50(a2, a3 + *(v7 + 20), &qword_27FD47110, &qword_25F17B780);
}

uint64_t type metadata accessor for ContentKey()
{
  result = qword_27FD47148;
  if (!qword_27FD47148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ContentProviderRegistry.register<A>(provider:for:override:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v6 = type metadata accessor for NonUIBox();
    WitnessTable = swift_getWitnessTable();
    v8 = *(sub_25F1776AC() - 8);
    v9 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      sub_25F0C63F0(v6, WitnessTable, v9, a3);
      v9 += v10;
      --v3;
    }

    while (v3);
  }
}

{
  v3 = *(a2 + 16);
  if (v3)
  {
    v6 = type metadata accessor for CanvasBox();
    WitnessTable = swift_getWitnessTable();
    v8 = *(sub_25F1776AC() - 8);
    v9 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      sub_25F0C63F0(v6, WitnessTable | 0x8000000000000000, v9, a3);
      v9 += v10;
      --v3;
    }

    while (v3);
  }
}

uint64_t ContentKey.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_25F1776BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContentKey();
  sub_25F0C6F18(v0 + *(v10 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25F0B7E94(v4, &qword_27FD47110, &qword_25F17B780);
    v16 = 60;
    v17 = 0xE100000000000000;
    sub_25F1776AC();
    sub_25F0CA7BC(&qword_27FD47118, MEMORY[0x277D408E0]);
    v11 = sub_25F17980C();
    MEMORY[0x25F8D50D0](v11);

    MEMORY[0x25F8D50D0](62, 0xE100000000000000);
    return v16;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v16 = 60;
    v17 = 0xE100000000000000;
    sub_25F1776AC();
    sub_25F0CA7BC(&qword_27FD47118, MEMORY[0x277D408E0]);
    v13 = sub_25F17980C();
    MEMORY[0x25F8D50D0](v13);

    MEMORY[0x25F8D50D0](8250, 0xE200000000000000);
    sub_25F0CA7BC(&qword_27FD47120, MEMORY[0x277D40908]);
    v14 = sub_25F17980C();
    MEMORY[0x25F8D50D0](v14);

    MEMORY[0x25F8D50D0](62, 0xE100000000000000);
    v12 = v16;
    (*(v6 + 8))(v9, v5);
  }

  return v12;
}

uint64_t sub_25F0C6F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContentKey.hash(into:)()
{
  v1 = sub_25F1776BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_25F1776AC();
  sub_25F0CA7BC(&qword_27FD47128, MEMORY[0x277D408E0]);
  sub_25F17902C();
  v10 = type metadata accessor for ContentKey();
  sub_25F0C6F18(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_25F1798EC();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_25F1798EC();
  sub_25F0CA7BC(&qword_27FD47130, MEMORY[0x277D40908]);
  sub_25F17902C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t ContentKey.hashValue.getter()
{
  v1 = sub_25F1776BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_25F1798CC();
  sub_25F1776AC();
  sub_25F0CA7BC(&qword_27FD47128, MEMORY[0x277D408E0]);
  sub_25F17902C();
  v10 = type metadata accessor for ContentKey();
  sub_25F0C6F18(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_25F1798EC();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_25F1798EC();
    sub_25F0CA7BC(&qword_27FD47130, MEMORY[0x277D40908]);
    sub_25F17902C();
    (*(v2 + 8))(v5, v1);
  }

  return sub_25F17990C();
}

uint64_t sub_25F0C73F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F1776BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_25F1776AC();
  sub_25F0CA7BC(&qword_27FD47128, MEMORY[0x277D408E0]);
  sub_25F17902C();
  sub_25F0C6F18(v2 + *(a2 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_25F1798EC();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_25F1798EC();
  sub_25F0CA7BC(&qword_27FD47130, MEMORY[0x277D40908]);
  sub_25F17902C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25F0C761C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F1776BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_25F1798CC();
  sub_25F1776AC();
  sub_25F0CA7BC(&qword_27FD47128, MEMORY[0x277D408E0]);
  sub_25F17902C();
  sub_25F0C6F18(v2 + *(a2 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_25F1798EC();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_25F1798EC();
    sub_25F0CA7BC(&qword_27FD47130, MEMORY[0x277D40908]);
    sub_25F17902C();
    (*(v5 + 8))(v8, v4);
  }

  return sub_25F17990C();
}

void *ContentProviderRegistry.boxRecipe(for:)(uint64_t a1)
{
  v3 = type metadata accessor for ContentKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_25F0C8848(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = (*(v6 + 56) + 16 * v7);
  v10 = *v9;
  v11 = v9[1];
  if (v11 < 0)
  {
    v11 &= ~0x8000000000000000;
    v12 = sub_25F0C9CA0;
  }

  else
  {
    v12 = sub_25F0C9E84;
  }

  sub_25F0C9BD4(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  *(v15 + 24) = v11;
  sub_25F0C9C3C(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  return v12;
}

uint64_t sub_25F0C79E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_25F1776AC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a3);
  v13 = *(a2 + 24);
  a4[3] = a1;
  a4[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return v13(v11, a1, a2);
}

uint64_t sub_25F0C7AE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = sub_25F1776AC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a4);
  v15 = *(a3 + 16);
  a5[3] = a2;
  a5[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(a5);
  v16 = swift_unknownObjectRetain();
  return v15(v16, a1, v13, a2, a3);
}

uint64_t ContentProviderRegistry.variantGroups(for:)(uint64_t a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = sub_25F0C8848(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(v2 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  if (v8 < 0)
  {
    return (*((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x18))(a1);
  }

  else
  {
    return (*(v8 + 32))(a1);
  }
}

BOOL sub_25F0C7CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentKey();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F1776AC();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  v12 = *(v7 + 28);
  v13 = sub_25F1776BC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v10[v12], a1, v13);
  (*(v14 + 56))(&v10[v12], 0, 1, v13);
  if (*(a3 + 16) && (v15 = sub_25F0C8848(v10), (v16 & 1) != 0))
  {
    v17 = (*(a3 + 56) + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    sub_25F0CA760(v10);
    v20 = (~v18 & 0xF000000000000007) == 0;
    v21 = (~v19 & 0xF000000000000007) == 0;
  }

  else
  {
    sub_25F0CA760(v10);
    v20 = 1;
    v21 = 1;
  }

  return !v20 || !v21;
}

uint64_t sub_25F0C7E84@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_25F1776BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t static CategoryMap.contentCategories.getter(uint64_t a1, uint64_t a2)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47138, &qword_25F17B788);
  v4 = *(*(v61 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v61);
  v60 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v59 = &v51 - v8;
  MEMORY[0x28223BE20](v7);
  v58 = &v51 - v9;
  v10 = sub_25F1776AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v57 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(a2 + 8))(a1, a2);
  v15 = *(v14 + 16);
  if (v15)
  {
    v68 = MEMORY[0x277D84F90];
    sub_25F0C97B8(0, v15, 0);
    v16 = v68;
    v17 = v14 + 64;
    v18 = -1 << *(v14 + 32);
    result = sub_25F17967C();
    v20 = result;
    v21 = 0;
    v55 = v14;
    v56 = v11 + 16;
    v22 = v11 + 32;
    v51 = v14 + 72;
    v52 = v15;
    v53 = v14 + 64;
    v54 = v11;
    while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v14 + 32))
    {
      if ((*(v17 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
      {
        goto LABEL_23;
      }

      v64 = 1 << v20;
      v65 = v20 >> 6;
      v24 = *(v14 + 36);
      v62 = v21;
      v63 = v24;
      v25 = v22;
      v26 = v61;
      v27 = *(v61 + 48);
      v28 = *(v14 + 48);
      v66 = *(v11 + 72);
      v29 = v10;
      v30 = v58;
      (*(v11 + 16))(v58, v28 + v66 * v20, v29);
      v31 = *(v14 + 56);
      v32 = sub_25F177D5C();
      v33 = *(v32 - 8);
      v67 = v16;
      v34 = v33;
      (*(v33 + 16))(&v30[v27], v31 + *(v33 + 72) * v20, v32);
      v35 = *(v11 + 32);
      v36 = v59;
      v35(v59, v30, v29);
      v37 = &v30[v27];
      v10 = v29;
      (*(v34 + 32))(&v36[*(v26 + 48)], v37, v32);
      v38 = v36;
      v39 = v60;
      sub_25F0B7D50(v38, v60, &qword_27FD47138, &qword_25F17B788);
      v40 = *(v26 + 48);
      v22 = v25;
      v41 = v57;
      v35(v57, v39, v10);
      (*(v34 + 8))(v39 + v40, v32);
      v16 = v67;
      v68 = v67;
      v43 = *(v67 + 16);
      v42 = *(v67 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_25F0C97B8(v42 > 1, v43 + 1, 1);
        v16 = v68;
      }

      *(v16 + 16) = v43 + 1;
      v11 = v54;
      result = (v35)(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v43 * v66, v41, v10);
      v14 = v55;
      v23 = 1 << *(v55 + 32);
      if (v20 >= v23)
      {
        goto LABEL_24;
      }

      v17 = v53;
      v44 = *(v53 + 8 * v65);
      if ((v44 & v64) == 0)
      {
        goto LABEL_25;
      }

      if (v63 != *(v55 + 36))
      {
        goto LABEL_26;
      }

      v45 = v44 & (-2 << (v20 & 0x3F));
      if (v45)
      {
        v23 = __clz(__rbit64(v45)) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v46 = v65 << 6;
        v47 = v65 + 1;
        v48 = (v51 + 8 * v65);
        while (v47 < (v23 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            result = sub_25F0C9F18(v20, v63, 0);
            v23 = __clz(__rbit64(v49)) + v46;
            goto LABEL_4;
          }
        }

        result = sub_25F0C9F18(v20, v63, 0);
      }

LABEL_4:
      v21 = v62 + 1;
      v20 = v23;
      if (v62 + 1 == v52)
      {

        return v16;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t static CategoryMap.unhandled(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25F1776AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  a2[3] = type metadata accessor for Unhandled();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(v5 + 32))(boxed_opaque_existential_1, v8, v4);
}

uint64_t sub_25F0C86F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F0C8750(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

unint64_t sub_25F0C87B4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25F17908C();
  sub_25F1798CC();
  sub_25F17911C();
  v4 = sub_25F17990C();

  return sub_25F0C8ED8(a1, v4);
}

unint64_t sub_25F0C8848(uint64_t a1)
{
  v3 = sub_25F1776BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = *(v1 + 40);
  sub_25F1798CC();
  sub_25F1776AC();
  sub_25F0CA7BC(&qword_27FD47128, MEMORY[0x277D408E0]);
  sub_25F17902C();
  v13 = type metadata accessor for ContentKey();
  sub_25F0C6F18(a1 + *(v13 + 20), v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_25F1798EC();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    sub_25F1798EC();
    sub_25F0CA7BC(&qword_27FD47130, MEMORY[0x277D40908]);
    sub_25F17902C();
    (*(v4 + 8))(v7, v3);
  }

  v14 = sub_25F17990C();
  return sub_25F0C8FDC(a1, v14);
}

unint64_t sub_25F0C8AA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25F1776AC();
  v5 = MEMORY[0x277D408E0];
  sub_25F0CA7BC(&qword_27FD47128, MEMORY[0x277D408E0]);
  v6 = sub_25F17901C();
  return sub_25F0C94F4(a1, v6, MEMORY[0x277D408E0], &qword_27FD47210, v5, MEMORY[0x277D408F0]);
}

unint64_t sub_25F0C8B7C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25F177E8C();
  v5 = MEMORY[0x277D403A8];
  sub_25F0CA7BC(&qword_27FD47200, MEMORY[0x277D403A8]);
  v6 = sub_25F17901C();
  return sub_25F0C94F4(a1, v6, MEMORY[0x277D403A8], &qword_27FD47208, v5, MEMORY[0x277D403B8]);
}

unint64_t sub_25F0C8C50(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25F17722C();
  v5 = MEMORY[0x277D406E8];
  sub_25F0CA7BC(&qword_27FD471F0, MEMORY[0x277D406E8]);
  v6 = sub_25F17901C();
  return sub_25F0C94F4(a1, v6, MEMORY[0x277D406E8], &qword_27FD471F8, v5, MEMORY[0x277D406F8]);
}

uint64_t sub_25F0C8D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_25F1798CC();
  sub_25F17911C();
  v7 = sub_25F17990C();

  return a3(a1, a2, v7);
}

unint64_t sub_25F0C8DC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_25F1798BC();

  return sub_25F0C974C(a1, v4);
}

unint64_t sub_25F0C8E04(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25F17776C();
  v5 = MEMORY[0x277D40A08];
  sub_25F0CA7BC(&qword_27FD471E0, MEMORY[0x277D40A08]);
  v6 = sub_25F17901C();
  return sub_25F0C94F4(a1, v6, MEMORY[0x277D40A08], &qword_27FD471E8, v5, MEMORY[0x277D40A18]);
}

unint64_t sub_25F0C8ED8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25F17908C();
      v9 = v8;
      if (v7 == sub_25F17908C() && v9 == v10)
      {
        break;
      }

      v12 = sub_25F17983C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25F0C8FDC(uint64_t a1, uint64_t a2)
{
  v5 = sub_25F1776BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47218, &qword_25F17BAA8);
  v13 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v15 = &v34 - v14;
  v41 = type metadata accessor for ContentKey();
  v16 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v2;
  v20 = -1 << *(v2 + 32);
  v21 = a2 & ~v20;
  v40 = v2 + 64;
  if ((*(v2 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = (v6 + 48);
    v23 = *(v17 + 72);
    v43 = ~v20;
    v44 = v23;
    v35 = (v6 + 32);
    v38 = (v6 + 8);
    v39 = v12;
    v24 = v40;
    do
    {
      sub_25F0C9BD4(*(v45 + 48) + v44 * v21, v19);
      sub_25F1776AC();
      sub_25F0CA7BC(&qword_27FD47220, MEMORY[0x277D408E0]);
      sub_25F1791FC();
      sub_25F1791FC();
      if (v48 == v46 && v49 == v47)
      {
      }

      else
      {
        v26 = sub_25F17983C();

        if ((v26 & 1) == 0)
        {
          sub_25F0CA760(v19);
          goto LABEL_4;
        }
      }

      v27 = *(v41 + 20);
      v28 = *(v42 + 48);
      sub_25F0C6F18(&v19[v27], v15);
      sub_25F0C6F18(a1 + v27, &v15[v28]);
      v29 = *v22;
      if ((*v22)(v15, 1, v5) == 1)
      {
        sub_25F0CA760(v19);
        if (v29(&v15[v28], 1, v5) == 1)
        {
          sub_25F0B7E94(v15, &qword_27FD47110, &qword_25F17B780);
          return v21;
        }

        goto LABEL_17;
      }

      v30 = v39;
      sub_25F0C6F18(v15, v39);
      if (v29(&v15[v28], 1, v5) == 1)
      {
        sub_25F0CA760(v19);
        (*v38)(v30, v5);
        v24 = v40;
LABEL_17:
        sub_25F0B7E94(v15, &qword_27FD47218, &qword_25F17BAA8);
        goto LABEL_4;
      }

      v31 = v36;
      (*v35)(v36, &v15[v28], v5);
      sub_25F0CA7BC(qword_27FD47228, MEMORY[0x277D40908]);
      v37 = sub_25F17904C();
      v32 = *v38;
      (*v38)(v31, v5);
      sub_25F0CA760(v19);
      v32(v30, v5);
      sub_25F0B7E94(v15, &qword_27FD47110, &qword_25F17B780);
      v24 = v40;
      if (v37)
      {
        return v21;
      }

LABEL_4:
      v21 = (v21 + 1) & v43;
    }

    while (((*(v24 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
  }

  return v21;
}

unint64_t sub_25F0C94F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_25F0CA7BC(v24, v25);
      v20 = sub_25F17904C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_25F0C9694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25F17983C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25F0C974C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

size_t sub_25F0C97B8(size_t a1, int64_t a2, char a3)
{
  result = sub_25F12E7D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F0C97D8(char *a1, int64_t a2, char a3)
{
  result = sub_25F12E9A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

BOOL _s15PreviewShellKit10ContentKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F1776BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47218, &qword_25F17BAA8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  sub_25F1776AC();
  sub_25F0CA7BC(&qword_27FD47220, MEMORY[0x277D408E0]);
  sub_25F1791FC();
  sub_25F1791FC();
  if (v28 == v26 && v29 == v27)
  {
  }

  else
  {
    v16 = sub_25F17983C();

    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  v18 = *(type metadata accessor for ContentKey() + 20);
  v19 = *(v12 + 48);
  sub_25F0C6F18(a1 + v18, v15);
  sub_25F0C6F18(a2 + v18, &v15[v19]);
  v20 = *(v5 + 48);
  if (v20(v15, 1, v4) != 1)
  {
    sub_25F0C6F18(v15, v11);
    if (v20(&v15[v19], 1, v4) != 1)
    {
      v21 = v25;
      (*(v5 + 32))(v25, &v15[v19], v4);
      sub_25F0CA7BC(qword_27FD47228, MEMORY[0x277D40908]);
      v22 = sub_25F17904C();
      v23 = *(v5 + 8);
      v23(v21, v4);
      v23(v11, v4);
      sub_25F0B7E94(v15, &qword_27FD47110, &qword_25F17B780);
      return (v22 & 1) != 0;
    }

    (*(v5 + 8))(v11, v4);
LABEL_10:
    sub_25F0B7E94(v15, &qword_27FD47218, &qword_25F17BAA8);
    return 0;
  }

  if (v20(&v15[v19], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_25F0B7E94(v15, &qword_27FD47110, &qword_25F17B780);
  return 1;
}

uint64_t sub_25F0C9BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0C9C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0C9CA0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ContentKey() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_25F0C7AE0(a1, v6, v7, v8, a2);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ContentKey() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25F1776AC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_25F1776BC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F0C9E84@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ContentKey() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_25F0C79E0(v4, v5, v6, a1);
}

uint64_t sub_25F0C9F18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
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

uint64_t sub_25F0C9FF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_25F0CA03C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F0CA09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F1776AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25F0CA1AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F1776AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_25F0CA2B4()
{
  sub_25F1776AC();
  if (v0 <= 0x3F)
  {
    sub_25F0CA338();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F0CA338()
{
  if (!qword_27FD47158[0])
  {
    sub_25F1776BC();
    v0 = sub_25F17960C();
    if (!v1)
    {
      atomic_store(v0, qword_27FD47158);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F0CA3B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F0CA3F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentProviderRegistry.Record(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 16))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ContentProviderRegistry.Record(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_25F0CA56C(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_25F0CA59C()
{
  result = sub_25F1776AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F0CA61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F1776AC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F0CA69C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F1776AC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F0CA760(uint64_t a1)
{
  v2 = type metadata accessor for ContentKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F0CA7BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PassThroughProvider.invalidationHandle.getter()
{
  sub_25F0CB7D8();
}

uint64_t sub_25F0CA860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_25F1787BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F1782AC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *a3 = sub_25F17829C();
  v14 = type metadata accessor for PassThroughProvider();
  sub_25F0CB7E0(a1, a3 + *(v14 + 36));
  v15 = *(v14 + 40);
  v16 = sub_25F177D5C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a3 + v15, a2, v16);
  v21[3] = type metadata accessor for PreviewNonUIAgentProxy();
  v21[4] = sub_25F0CBC44();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_25F0CB7E0(a1, boxed_opaque_existential_1);
  sub_25F1787CC();
  swift_getWitnessTable();
  sub_25F17803C();
  (*(v17 + 8))(a2, v16);
  sub_25F0CB844(a1);
  (*(v7 + 8))(v10, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

uint64_t static PassThroughProvider.create(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = *(*(type metadata accessor for PreviewNonUIAgentProxy() - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = sub_25F177D5C();
  v5[16] = v7;
  v8 = *(v7 - 8);
  v5[17] = v8;
  v9 = *(v8 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0CABF0, 0, 0);
}

uint64_t sub_25F0CABF0()
{
  v1 = v0[12];
  v2 = (*(v0[13] + 8))();
  if (*(v2 + 16) && (v3 = sub_25F0C8AA8(v0[10]), (v4 & 1) != 0))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = v0[16];
    v8 = v0[17];
    v9 = v0[11];
    v10 = *(v2 + 56) + *(v8 + 72) * v3;
    v11 = *(v8 + 16);
    v0[21] = v11;
    v0[22] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v6, v10, v7);

    (*(v8 + 32))(v5, v6, v7);
    v12 = v9 + *(type metadata accessor for PreviewAgentConnector() + 24);
    v13 = *(v12 + 7);
    v0[7] = *(v12 + 6);
    v0[8] = v13;
    v14 = *v9;

    v15 = swift_task_alloc();
    v0[23] = v15;
    *v15 = v0;
    v15[1] = sub_25F0CAF14;
    v16 = v0[15];

    return SharedAgentServer<>.requestPreviewNonUIAgent(for:)(v16, v14);
  }

  else
  {
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[10];

    static CategoryMap.unhandled(_:)(v20, v0 + 2);
    v21 = v0[5];
    v22 = v0[6];
    v23 = __swift_project_boxed_opaque_existential_1(v0 + 2, v21);
    v24 = *(v21 - 8);
    v25 = *(v24 + 64) + 15;
    v26 = swift_task_alloc();
    (*(v24 + 16))(v26, v23, v21);
    v27 = *(*(v22 + 8) + 8);
    if (sub_25F17981C())
    {
      (*(v24 + 8))(v26, v21);
    }

    else
    {
      swift_allocError();
      (*(v24 + 32))(v28, v26, v21);
    }

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v30 = v0[19];
    v29 = v0[20];
    v31 = v0[18];
    v33 = v0[14];
    v32 = v0[15];

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_25F0CAF14()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  v2[24] = v0;

  v4 = v2[7];
  v5 = v2[8];

  if (v0)
  {
    v6 = sub_25F0CB15C;
  }

  else
  {
    v6 = sub_25F0CB03C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25F0CB03C()
{
  v11 = v0[21];
  v12 = v0[22];
  v1 = v0[20];
  v13 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[12];
  v8 = v0[9];
  sub_25F0CB7E0(v5, v6);
  v11(v3, v1, v4);
  sub_25F0CA860(v6, v3, v8);
  sub_25F0CB844(v5);
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F0CB15C()
{
  (*(v0[17] + 8))(v0[20], v0[16]);
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t PassThroughProvider.performUpdate(updatePayload:previewType:context:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v30 = a1;
  v31 = sub_25F177D2C();
  v29 = *(v31 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F177F8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F177D5C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25F177D3C();
  v18 = *(v26 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v26);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a5 + 40);
  v25 = *(a5 + 36);
  (*(v14 + 16))(v17, v28 + v22, v13);
  (*(v9 + 16))(v12, v30, v8);
  (*(v29 + 16))(v27, v32, v31);
  sub_25F177CEC();
  v23 = PreviewNonUIAgentProxy.perform<A>(update:expecting:)(v21, v8, v8, MEMORY[0x277D40440]);
  (*(v18 + 8))(v21, v26);
  return v23;
}

uint64_t sub_25F0CB610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *v9 = v4;
  v9[1] = sub_25F0BF3E4;

  return static PassThroughProvider.create(for:using:)(a1, a2, a3, v10, v11);
}

uint64_t sub_25F0CB7B0()
{
  sub_25F0CB7D8();
}

uint64_t sub_25F0CB7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewNonUIAgentProxy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0CB844(uint64_t a1)
{
  v2 = type metadata accessor for PreviewNonUIAgentProxy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F0CB8A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F0CB8DC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F0CB920()
{
  result = sub_25F1782AC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PreviewNonUIAgentProxy();
    if (v2 <= 0x3F)
    {
      result = sub_25F177D5C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25F0CB9D0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PreviewNonUIAgentProxy();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_25F177D5C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_25F0CBB08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PreviewNonUIAgentProxy();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_25F177D5C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_25F0CBC44()
{
  result = qword_27FD472B0;
  if (!qword_27FD472B0)
  {
    type metadata accessor for PreviewNonUIAgentProxy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD472B0);
  }

  return result;
}

uint64_t static PreviewVariantGroup.colorSchemeVariantGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472B8, &qword_25F17BBA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v41 = &v33 - v3;
  v40 = sub_25F177BDC();
  v38 = *(v40 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_25F177BFC();
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472C0, &qword_25F17BBA8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v35 = &v33 - v10;
  v11 = sub_25F17790C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v33 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472C8, &qword_25F17BBB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  v18 = sub_25F17736C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_25F1775AC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472D0, &qword_25F17BBB8);
  v22 = *(sub_25F1775CC() - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  *(swift_allocObject() + 16) = xmmword_25F17BB70;
  sub_25F17759C();
  sub_25F17726C();
  v25 = sub_25F17750C();
  v26 = *(*(v25 - 8) + 56);
  v26(v17, 1, 1, v25);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F17725C();
  v26(v17, 1, 1, v25);
  sub_25F1775BC();
  sub_25F17759C();
  (*(v38 + 104))(v36, *MEMORY[0x277D40C20], v40);
  sub_25F17759C();
  v27 = v34;
  sub_25F177BEC();
  (*(v37 + 104))(v27, *MEMORY[0x277D40C30], v39);

  sub_25F0CD728(MEMORY[0x277D84F90]);
  v28 = v35;
  sub_25F177C0C();
  v29 = sub_25F177C1C();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  v30 = v41;
  sub_25F177B6C();
  v31 = sub_25F177B7C();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  return sub_25F17791C();
}

uint64_t static PreviewVariantGroup.orientationVariantGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472B8, &qword_25F17BBA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v45 = v35 - v3;
  v44 = sub_25F177BDC();
  v42 = *(v44 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v40 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_25F177BFC();
  v41 = *(v43 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v38 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472C0, &qword_25F17BBA8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = v35 - v10;
  v11 = sub_25F17790C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v37 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472C8, &qword_25F17BBB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v35 - v16;
  v18 = sub_25F17736C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_25F1775AC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472D0, &qword_25F17BBB8);
  v22 = *(sub_25F1775CC() - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v35[2] = 2 * *(v22 + 72);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_25F17BB80;
  sub_25F17759C();
  sub_25F17729C();
  v24 = *MEMORY[0x277D40798];
  v25 = sub_25F17750C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 104);
  v27(v17, v24, v25);
  v28 = *(v26 + 56);
  v28(v17, 0, 1, v25);
  sub_25F1775BC();
  v35[1] = "ntation.portrait";
  sub_25F17759C();
  sub_25F17727C();
  v27(v17, *MEMORY[0x277D40780], v25);
  v28(v17, 0, 1, v25);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F17728C();
  v27(v17, *MEMORY[0x277D40788], v25);
  v28(v17, 0, 1, v25);
  sub_25F1775BC();
  sub_25F17759C();
  (*(v42 + 104))(v40, *MEMORY[0x277D40C20], v44);
  sub_25F17759C();
  v29 = v38;
  sub_25F177BEC();
  (*(v41 + 104))(v29, *MEMORY[0x277D40C30], v43);

  sub_25F0CD728(MEMORY[0x277D84F90]);
  v30 = v39;
  sub_25F177C0C();
  v31 = sub_25F177C1C();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v45;
  sub_25F177B6C();
  v33 = sub_25F177B7C();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  return sub_25F17791C();
}

uint64_t static PreviewVariantGroup.dynamicTypeVariantGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472B8, &qword_25F17BBA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v46 = &v35 - v3;
  v45 = sub_25F177BDC();
  v43 = *(v45 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25F177BFC();
  v42 = *(v44 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472C0, &qword_25F17BBA8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = &v35 - v10;
  v11 = sub_25F17790C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v38 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472C8, &qword_25F17BBB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v35 - v16;
  v18 = sub_25F17736C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_25F1775AC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472D0, &qword_25F17BBB8);
  v22 = *(sub_25F1775CC() - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v37 = v25;
  *(v25 + 16) = xmmword_25F17BB90;
  v26 = v25 + v24;
  v48 = 0xD000000000000022;
  sub_25F17759C();
  sub_25F17733C();
  v27 = sub_25F17750C();
  v28 = *(*(v27 - 8) + 56);
  v28(v17, 1, 1, v27);
  sub_25F1775BC();
  v36 = 0xD000000000000021;
  sub_25F17759C();
  sub_25F17730C();
  v28(v17, 1, 1, v27);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F17731C();
  v28(v17, 1, 1, v27);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F1772FC();
  v28(v17, 1, 1, v27);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F17732C();
  v28(v17, 1, 1, v27);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F17734C();
  v28(v17, 1, 1, v27);
  v35 = v26;
  sub_25F1775BC();
  v36 = "micTypeSize.xxLarge";
  v48 = 0xD000000000000024;
  sub_25F17759C();
  sub_25F17735C();
  v28(v17, 1, 1, v27);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F1772AC();
  v28(v17, 1, 1, v27);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F1772BC();
  v28(v17, 1, 1, v27);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F1772CC();
  v28(v17, 1, 1, v27);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F1772DC();
  v28(v17, 1, 1, v27);
  sub_25F1775BC();
  sub_25F17759C();
  sub_25F1772EC();
  v28(v17, 1, 1, v27);
  sub_25F1775BC();
  sub_25F17759C();
  (*(v43 + 104))(v41, *MEMORY[0x277D40C28], v45);
  sub_25F17759C();
  v29 = v39;
  sub_25F177BEC();
  (*(v42 + 104))(v29, *MEMORY[0x277D40C30], v44);

  sub_25F0CD728(MEMORY[0x277D84F90]);
  v30 = v40;
  sub_25F177C0C();
  v31 = sub_25F177C1C();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v46;
  sub_25F177B6C();
  v33 = sub_25F177B7C();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  return sub_25F17791C();
}

unint64_t sub_25F0CD4F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25F1775AC();
  sub_25F0CD9A4(&qword_27FD472E8);
  v5 = sub_25F17901C();

  return sub_25F0CD57C(a1, v5);
}

unint64_t sub_25F0CD57C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25F1775AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_25F0CD9A4(&qword_27FD472F0);
      v16 = sub_25F17904C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_25F0CD728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472D8, &qword_25F17BBC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472E0, &qword_25F17BBD0);
    v8 = sub_25F1797BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25F0CD934(v10, v6);
      result = sub_25F0CD4F8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25F1775AC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_25F177C1C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25F0CD934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472D8, &qword_25F17BBC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0CD9A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25F1775AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F0CD9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25F0B7E2C(a3, v27 - v11, &qword_27FD46BB0, &qword_25F17AF30);
  v13 = sub_25F17932C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25F0B7E94(v12, &qword_27FD46BB0, &qword_25F17AF30);
  }

  else
  {
    sub_25F17931C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25F1792CC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25F1790DC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_25F0B7E94(a3, &qword_27FD46BB0, &qword_25F17AF30);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25F0B7E94(a3, &qword_27FD46BB0, &qword_25F17AF30);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t ServerFarm.jitBootstrapAgentServer.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t ServerFarm.controlAgentServer.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t ServerFarm.previewNonUIAgentServer.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t ServerFarm.init()@<X0>(void *a1@<X8>)
{
  v2 = sub_25F176E8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD472F8, &qword_25F17BC00);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *a1 = sub_25F0D0D98();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47300, &qword_25F17BC08);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  a1[1] = sub_25F0D0B60();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47308, &qword_25F17BC10);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  a1[2] = sub_25F0D57B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47310, &qword_25F17BC18);
  a1[3] = sub_25F17857C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47318, &qword_25F17BC20);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  a1[4] = sub_25F0D5324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47320, &qword_25F17BC28);
  a1[5] = sub_25F17857C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47328, &qword_25F17BC30);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  a1[6] = sub_25F0D4E94();
  a1[7] = sub_25F17857C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47330, &qword_25F17BC38);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  a1[8] = sub_25F0D4A04();
  a1[9] = sub_25F0E7D30();
  a1[10] = v25;
  a1[11] = v26;
  (*(v3 + 104))(v6, *MEMORY[0x277D40D10], v2);
  v27 = type metadata accessor for HostServer();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  (*(v3 + 16))(v30 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_service, v6, v2);
  v38[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47338, &qword_25F17BC40);
  v31 = sub_25F17883C();
  (*(v3 + 8))(v6, v2);
  *(v30 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_activeListener) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47340, &qword_25F17BC48);
  v32 = sub_25F1771DC();
  a1[12] = v30;
  a1[13] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47348, &qword_25F17BC50);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_25F0D4574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47350, &qword_25F17BC58);

  result = sub_25F1771FC();
  a1[14] = v36;
  a1[15] = result;
  return result;
}

uint64_t ServerFarm.HostMessages.viaDaemon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ServerFarm.HostMessages.viaDaemon.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ServerFarm.HostMessages.viaServiceHub.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ServerFarm.HostMessages() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ServerFarm.HostMessages.viaServiceHub.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerFarm.HostMessages() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ServerFarm.activate()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - v5;
  v35 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = v1[5];
  v46 = v1[4];
  v47 = v14;
  v15 = v1[7];
  v48 = v1[6];
  v49 = v15;
  v16 = v1[1];
  v45[0] = *v1;
  v45[1] = v16;
  v17 = v1[3];
  v45[2] = v1[2];
  v45[3] = v17;
  sub_25F0D0FD0(a1);
  v18 = type metadata accessor for ServerFarm.HostMessages();
  sub_25F0D14D8(a1 + *(v18 + 20));
  sub_25F0D0524(v45);
  sub_25F0CFF64(v45);
  sub_25F0CF9A4(v45);
  sub_25F0CF3E4(v45);
  v19 = v47;
  v34 = *(&v46 + 1);
  v37 = *(&v47 + 1);
  v36 = v13;
  sub_25F0E96D4(v13);
  sub_25F0CE81C(v45);
  v42 = sub_25F17932C();
  v20 = *(v42 - 8);
  v41 = *(v20 + 56);
  v43 = v20 + 56;
  v41(v6, 1, 1, v42);
  v40 = *(v8 + 16);
  v33 = v11;
  v40(v11, v13, v7);
  v21 = *(v8 + 80);
  v44 = v8;
  v39 = (v21 + 32) & ~v21;
  v22 = (v9 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v38 = *(v8 + 32);
  v38(v23 + ((v21 + 32) & ~v21), v11, v7);
  v24 = (v23 + v22);
  *v24 = v34;
  v24[1] = v19;
  v24[2] = v37;

  v25 = v35;
  sub_25F0CD9E8(0, 0, v35, &unk_25F17BC70, v23);

  v26 = *(v44 + 8);
  v44 += 8;
  v37 = v26;
  v27 = v36;
  v26(v36, v7);
  v28 = v48;
  sub_25F0E96D4(v27);
  v41(v25, 1, 1, v42);
  v29 = v33;
  v40(v33, v27, v7);
  v30 = v22;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v38(v31 + v39, v29, v7);
  *(v31 + v30) = v28;

  sub_25F0CD9E8(0, 0, v25, &unk_25F17BC78, v31);

  v37(v27, v7);
  return sub_25F0CEE24(v45);
}

uint64_t sub_25F0CE81C(_OWORD *a1)
{
  v43 = a1;
  v1 = sub_25F1787BC();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D8, &qword_25F17BDD8);
  v4 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v44 = &v41 - v5;
  v6 = sub_25F176E8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = *MEMORY[0x277D40D28];
  v14 = sub_25F176E7C();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  (*(v7 + 104))(v12, *MEMORY[0x277D40CE8], v6);
  v15 = type metadata accessor for AsyncListenerDelegate();
  v16 = objc_allocWithZone(v15);
  (*(v7 + 16))(v10, v12, v6);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v17, v10, v6);
  v20 = (v19 + v18);
  v21 = v48;
  *v20 = &unk_25F17BDE8;
  v20[1] = v21;
  v22 = &v16[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v22 = &unk_25F17BDF0;
  *(v22 + 1) = v19;
  v51.receiver = v16;
  v51.super_class = v15;

  v23 = objc_msgSendSuper2(&v51, sel_init);
  (*(v7 + 8))(v12, v6);
  v49[2] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25F0E03A8;
  *(v24 + 24) = v49;
  *&v54 = sub_25F0E4290;
  *(&v54 + 1) = v24;
  *&v52 = MEMORY[0x277D85DD0];
  *(&v52 + 1) = 1107296256;
  *&v53 = sub_25F0D0B0C;
  *(&v53 + 1) = &block_descriptor_49;
  v25 = _Block_copy(&v52);
  v26 = objc_opt_self();

  v27 = [v26 listenerWithConfigurator_];
  _Block_release(v25);

  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  else
  {
    [v27 activate];
    v29 = v44;
    sub_25F0B7E2C(v21 + *(*v21 + 96), v44, &qword_27FD473D8, &qword_25F17BDD8);
    v30 = *v29;

    v31 = *(v42 + 48);
    v32 = v45;
    sub_25F1787CC();
    v33 = v43;
    v34 = v43[5];
    *&v50[72] = v43[4];
    *&v50[88] = v34;
    v35 = v43[7];
    *&v50[104] = v43[6];
    *&v50[120] = v35;
    v36 = v43[1];
    *&v50[8] = *v43;
    *&v50[24] = v36;
    v37 = v43[3];
    *&v50[40] = v43[2];
    *&v50[56] = v37;
    *v50 = v27;
    v38 = v27;
    sub_25F0E0148(v33, &v52);
    v39 = v23;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473E0, &qword_25F17BDF8);
    sub_25F0B7D00(&qword_27FD473E8, &qword_27FD473E0, &qword_25F17BDF8);
    sub_25F17806C();

    v58 = *&v50[96];
    v59 = *&v50[112];
    v60 = *&v50[128];
    v54 = *&v50[32];
    v55 = *&v50[48];
    v56 = *&v50[64];
    v57 = *&v50[80];
    v52 = *v50;
    v53 = *&v50[16];
    sub_25F0B7E94(&v52, &qword_27FD473F0, &qword_25F17BE00);
    (*(v46 + 8))(v32, v47);
    return (*(*(v40 - 8) + 8))(&v29[v31], v40);
  }

  return result;
}

uint64_t sub_25F0CEE24(_OWORD *a1)
{
  v41 = a1;
  v1 = sub_25F1787BC();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47398, &qword_25F17BD70);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = &v39 - v5;
  v6 = sub_25F176E8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  (*(v7 + 104))(&v39 - v11, *MEMORY[0x277D40CF0], v6);
  v13 = type metadata accessor for AsyncListenerDelegate();
  v14 = objc_allocWithZone(v13);
  (*(v7 + 16))(v10, v12, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v15, v10, v6);
  v18 = (v17 + v16);
  v19 = v46;
  *v18 = &unk_25F17BD80;
  v18[1] = v19;
  v20 = &v14[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v20 = &unk_25F17C970;
  *(v20 + 1) = v17;
  v49.receiver = v14;
  v49.super_class = v13;

  v21 = objc_msgSendSuper2(&v49, sel_init);
  (*(v7 + 8))(v12, v6);
  v47[2] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25F0E00E4;
  *(v22 + 24) = v47;
  *&v52 = sub_25F0E0108;
  *(&v52 + 1) = v22;
  *&v50 = MEMORY[0x277D85DD0];
  *(&v50 + 1) = 1107296256;
  *&v51 = sub_25F0D0B0C;
  *(&v51 + 1) = &block_descriptor_0;
  v23 = _Block_copy(&v50);
  v24 = objc_opt_self();

  v25 = [v24 listenerWithConfigurator_];
  _Block_release(v23);

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    [v25 activate];
    v27 = v42;
    sub_25F0B7E2C(v19 + *(*v19 + 96), v42, &qword_27FD47398, &qword_25F17BD70);
    v28 = *v27;

    v29 = *(v40 + 48);
    v30 = v43;
    sub_25F1787CC();
    v31 = v41;
    v32 = v41[5];
    *&v48[72] = v41[4];
    *&v48[88] = v32;
    v33 = v41[7];
    *&v48[104] = v41[6];
    *&v48[120] = v33;
    v34 = v41[1];
    *&v48[8] = *v41;
    *&v48[24] = v34;
    v35 = v41[3];
    *&v48[40] = v41[2];
    *&v48[56] = v35;
    *v48 = v25;
    v36 = v25;
    sub_25F0E0148(v31, &v50);
    v37 = v21;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473A0, &qword_25F17BD90);
    sub_25F0B7D00(&qword_27FD473A8, &qword_27FD473A0, &qword_25F17BD90);
    sub_25F17806C();

    v56 = *&v48[96];
    v57 = *&v48[112];
    v58 = *&v48[128];
    v52 = *&v48[32];
    v53 = *&v48[48];
    v54 = *&v48[64];
    v55 = *&v48[80];
    v50 = *v48;
    v51 = *&v48[16];
    sub_25F0B7E94(&v50, &qword_27FD473B0, &qword_25F17BD98);
    (*(v44 + 8))(v30, v45);
    return (*(*(v38 - 8) + 8))(&v27[v29], v38);
  }

  return result;
}

uint64_t sub_25F0CF3E4(_OWORD *a1)
{
  v41 = a1;
  v1 = sub_25F1787BC();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473F8, &qword_25F17BE20);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = &v39 - v5;
  v6 = sub_25F176E8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  (*(v7 + 104))(&v39 - v11, *MEMORY[0x277D40D08], v6);
  v13 = type metadata accessor for AsyncListenerDelegate();
  v14 = objc_allocWithZone(v13);
  (*(v7 + 16))(v10, v12, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v15, v10, v6);
  v18 = (v17 + v16);
  v19 = v46;
  *v18 = &unk_25F17BE30;
  v18[1] = v19;
  v20 = &v14[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v20 = &unk_25F17BE38;
  *(v20 + 1) = v17;
  v49.receiver = v14;
  v49.super_class = v13;

  v21 = objc_msgSendSuper2(&v49, sel_init);
  (*(v7 + 8))(v12, v6);
  v47[2] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25F0E0520;
  *(v22 + 24) = v47;
  *&v52 = sub_25F0E4290;
  *(&v52 + 1) = v22;
  *&v50 = MEMORY[0x277D85DD0];
  *(&v50 + 1) = 1107296256;
  *&v51 = sub_25F0D0B0C;
  *(&v51 + 1) = &block_descriptor_68;
  v23 = _Block_copy(&v50);
  v24 = objc_opt_self();

  v25 = [v24 listenerWithConfigurator_];
  _Block_release(v23);

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    [v25 activate];
    v27 = v42;
    sub_25F0B7E2C(v19 + *(*v19 + 96), v42, &qword_27FD473F8, &qword_25F17BE20);
    v28 = *v27;

    v29 = *(v40 + 48);
    v30 = v43;
    sub_25F1787CC();
    v31 = v41;
    v32 = v41[5];
    *&v48[72] = v41[4];
    *&v48[88] = v32;
    v33 = v41[7];
    *&v48[104] = v41[6];
    *&v48[120] = v33;
    v34 = v41[1];
    *&v48[8] = *v41;
    *&v48[24] = v34;
    v35 = v41[3];
    *&v48[40] = v41[2];
    *&v48[56] = v35;
    *v48 = v25;
    v36 = v25;
    sub_25F0E0148(v31, &v50);
    v37 = v21;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47400, &qword_25F17BE40);
    sub_25F0B7D00(&qword_27FD47408, &qword_27FD47400, &qword_25F17BE40);
    sub_25F17806C();

    v56 = *&v48[96];
    v57 = *&v48[112];
    v58 = *&v48[128];
    v52 = *&v48[32];
    v53 = *&v48[48];
    v54 = *&v48[64];
    v55 = *&v48[80];
    v50 = *v48;
    v51 = *&v48[16];
    sub_25F0B7E94(&v50, &qword_27FD47410, &qword_25F17BE48);
    (*(v44 + 8))(v30, v45);
    return (*(*(v38 - 8) + 8))(&v27[v29], v38);
  }

  return result;
}

uint64_t sub_25F0CF9A4(_OWORD *a1)
{
  v41 = a1;
  v1 = sub_25F1787BC();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47430, &qword_25F17BE70);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = &v39 - v5;
  v6 = sub_25F176E8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  (*(v7 + 104))(&v39 - v11, *MEMORY[0x277D40D00], v6);
  v13 = type metadata accessor for AsyncListenerDelegate();
  v14 = objc_allocWithZone(v13);
  (*(v7 + 16))(v10, v12, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v15, v10, v6);
  v18 = (v17 + v16);
  v19 = v46;
  *v18 = &unk_25F17BE80;
  v18[1] = v19;
  v20 = &v14[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v20 = &unk_25F17BE88;
  *(v20 + 1) = v17;
  v49.receiver = v14;
  v49.super_class = v13;

  v21 = objc_msgSendSuper2(&v49, sel_init);
  (*(v7 + 8))(v12, v6);
  v47[2] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25F0E0704;
  *(v22 + 24) = v47;
  *&v52 = sub_25F0E4290;
  *(&v52 + 1) = v22;
  *&v50 = MEMORY[0x277D85DD0];
  *(&v50 + 1) = 1107296256;
  *&v51 = sub_25F0D0B0C;
  *(&v51 + 1) = &block_descriptor_87;
  v23 = _Block_copy(&v50);
  v24 = objc_opt_self();

  v25 = [v24 listenerWithConfigurator_];
  _Block_release(v23);

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    [v25 activate];
    v27 = v42;
    sub_25F0B7E2C(v19 + *(*v19 + 96), v42, &qword_27FD47430, &qword_25F17BE70);
    v28 = *v27;

    v29 = *(v40 + 48);
    v30 = v43;
    sub_25F1787CC();
    v31 = v41;
    v32 = v41[5];
    *&v48[72] = v41[4];
    *&v48[88] = v32;
    v33 = v41[7];
    *&v48[104] = v41[6];
    *&v48[120] = v33;
    v34 = v41[1];
    *&v48[8] = *v41;
    *&v48[24] = v34;
    v35 = v41[3];
    *&v48[40] = v41[2];
    *&v48[56] = v35;
    *v48 = v25;
    v36 = v25;
    sub_25F0E0148(v31, &v50);
    v37 = v21;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47438, &qword_25F17BE90);
    sub_25F0B7D00(&qword_27FD47440, &qword_27FD47438, &qword_25F17BE90);
    sub_25F17806C();

    v56 = *&v48[96];
    v57 = *&v48[112];
    v58 = *&v48[128];
    v52 = *&v48[32];
    v53 = *&v48[48];
    v54 = *&v48[64];
    v55 = *&v48[80];
    v50 = *v48;
    v51 = *&v48[16];
    sub_25F0B7E94(&v50, &qword_27FD47448, &unk_25F17F3E0);
    (*(v44 + 8))(v30, v45);
    return (*(*(v38 - 8) + 8))(&v27[v29], v38);
  }

  return result;
}

uint64_t sub_25F0CFF64(_OWORD *a1)
{
  v41 = a1;
  v1 = sub_25F1787BC();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47450, &qword_25F17BEB0);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = &v39 - v5;
  v6 = sub_25F176E8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  (*(v7 + 104))(&v39 - v11, *MEMORY[0x277D40CD0], v6);
  v13 = type metadata accessor for AsyncListenerDelegate();
  v14 = objc_allocWithZone(v13);
  (*(v7 + 16))(v10, v12, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v15, v10, v6);
  v18 = (v17 + v16);
  v19 = v46;
  *v18 = &unk_25F17BEC0;
  v18[1] = v19;
  v20 = &v14[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v20 = &unk_25F17BEC8;
  *(v20 + 1) = v17;
  v49.receiver = v14;
  v49.super_class = v13;

  v21 = objc_msgSendSuper2(&v49, sel_init);
  (*(v7 + 8))(v12, v6);
  v47[2] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25F0E0898;
  *(v22 + 24) = v47;
  *&v52 = sub_25F0E4290;
  *(&v52 + 1) = v22;
  *&v50 = MEMORY[0x277D85DD0];
  *(&v50 + 1) = 1107296256;
  *&v51 = sub_25F0D0B0C;
  *(&v51 + 1) = &block_descriptor_106;
  v23 = _Block_copy(&v50);
  v24 = objc_opt_self();

  v25 = [v24 listenerWithConfigurator_];
  _Block_release(v23);

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    [v25 activate];
    v27 = v42;
    sub_25F0B7E2C(v19 + *(*v19 + 96), v42, &qword_27FD47450, &qword_25F17BEB0);
    v28 = *v27;

    v29 = *(v40 + 48);
    v30 = v43;
    sub_25F1787CC();
    v31 = v41;
    v32 = v41[5];
    *&v48[72] = v41[4];
    *&v48[88] = v32;
    v33 = v41[7];
    *&v48[104] = v41[6];
    *&v48[120] = v33;
    v34 = v41[1];
    *&v48[8] = *v41;
    *&v48[24] = v34;
    v35 = v41[3];
    *&v48[40] = v41[2];
    *&v48[56] = v35;
    *v48 = v25;
    v36 = v25;
    sub_25F0E0148(v31, &v50);
    v37 = v21;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47458, &qword_25F17BED0);
    sub_25F0B7D00(&qword_27FD47460, &qword_27FD47458, &qword_25F17BED0);
    sub_25F17806C();

    v56 = *&v48[96];
    v57 = *&v48[112];
    v58 = *&v48[128];
    v52 = *&v48[32];
    v53 = *&v48[48];
    v54 = *&v48[64];
    v55 = *&v48[80];
    v50 = *v48;
    v51 = *&v48[16];
    sub_25F0B7E94(&v50, &qword_27FD47468, &qword_25F17BED8);
    (*(v44 + 8))(v30, v45);
    return (*(*(v38 - 8) + 8))(&v27[v29], v38);
  }

  return result;
}

uint64_t sub_25F0D0524(_OWORD *a1)
{
  v41 = a1;
  v1 = sub_25F1787BC();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47470, &qword_25F17BEF8);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = &v39 - v5;
  v6 = sub_25F176E8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  (*(v7 + 104))(&v39 - v11, *MEMORY[0x277D40CF8], v6);
  v13 = type metadata accessor for AsyncListenerDelegate();
  v14 = objc_allocWithZone(v13);
  (*(v7 + 16))(v10, v12, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v15, v10, v6);
  v18 = (v17 + v16);
  v19 = v46;
  *v18 = &unk_25F17BF08;
  v18[1] = v19;
  v20 = &v14[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v20 = &unk_25F17BF10;
  *(v20 + 1) = v17;
  v49.receiver = v14;
  v49.super_class = v13;

  v21 = objc_msgSendSuper2(&v49, sel_init);
  (*(v7 + 8))(v12, v6);
  v47[2] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25F0E0B2C;
  *(v22 + 24) = v47;
  *&v52 = sub_25F0E4290;
  *(&v52 + 1) = v22;
  *&v50 = MEMORY[0x277D85DD0];
  *(&v50 + 1) = 1107296256;
  *&v51 = sub_25F0D0B0C;
  *(&v51 + 1) = &block_descriptor_125;
  v23 = _Block_copy(&v50);
  v24 = objc_opt_self();

  v25 = [v24 listenerWithConfigurator_];
  _Block_release(v23);

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    [v25 activate];
    v27 = v42;
    sub_25F0B7E2C(v19 + *(*v19 + 96), v42, &qword_27FD47470, &qword_25F17BEF8);
    v28 = *v27;

    v29 = *(v40 + 48);
    v30 = v43;
    sub_25F1787CC();
    v31 = v41;
    v32 = v41[5];
    *&v48[72] = v41[4];
    *&v48[88] = v32;
    v33 = v41[7];
    *&v48[104] = v41[6];
    *&v48[120] = v33;
    v34 = v41[1];
    *&v48[8] = *v41;
    *&v48[24] = v34;
    v35 = v41[3];
    *&v48[40] = v41[2];
    *&v48[56] = v35;
    *v48 = v25;
    v36 = v25;
    sub_25F0E0148(v31, &v50);
    v37 = v21;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47478, &qword_25F17BF18);
    sub_25F0B7D00(&qword_27FD47480, &qword_27FD47478, &qword_25F17BF18);
    sub_25F17806C();

    v56 = *&v48[96];
    v57 = *&v48[112];
    v58 = *&v48[128];
    v52 = *&v48[32];
    v53 = *&v48[48];
    v54 = *&v48[64];
    v55 = *&v48[80];
    v50 = *v48;
    v51 = *&v48[16];
    sub_25F0B7E94(&v50, &qword_27FD47488, &qword_25F17BF20);
    (*(v44 + 8))(v30, v45);
    return (*(*(v38 - 8) + 8))(&v27[v29], v38);
  }

  return result;
}

uint64_t sub_25F0D0B0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

void *sub_25F0D0B60()
{
  v1 = sub_25F176E8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47548, &qword_25F17C0A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  swift_defaultActor_initialize();
  v0[15] = sub_25F0ECC2C(MEMORY[0x277D84F90]);
  v8 = *(*v0 + 120);
  v17 = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47550, &qword_25F17C0A8);
  sub_25F17837C();
  MEMORY[0x25F8D4310](v9);
  sub_25F17836C();
  (*(v2 + 104))(v5, *MEMORY[0x277D40CD8], v1);
  v10 = type metadata accessor for HostServer();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  (*(v2 + 16))(v13 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_service, v5, v1);
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47338, &qword_25F17BC40);
  v14 = sub_25F17883C();
  (*(v2 + 8))(v5, v1);
  *(v13 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_activeListener) = v14;
  v0[14] = v13;
  return v0;
}

void *sub_25F0D0D98()
{
  v1 = sub_25F176E8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47558, &qword_25F17C0B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  swift_defaultActor_initialize();
  v0[15] = sub_25F0ECC2C(MEMORY[0x277D84F90]);
  v8 = *(*v0 + 120);
  v17 = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47560, &unk_25F17C0B8);
  sub_25F17837C();
  MEMORY[0x25F8D4310](v9);
  sub_25F17836C();
  (*(v2 + 104))(v5, *MEMORY[0x277D40CE0], v1);
  v10 = type metadata accessor for HostServer();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  (*(v2 + 16))(v13 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_service, v5, v1);
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47338, &qword_25F17BC40);
  v14 = sub_25F17883C();
  (*(v2 + 8))(v5, v1);
  *(v13 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_activeListener) = v14;
  v0[14] = v13;
  return v0;
}

uint64_t sub_25F0D0FD0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v46 = &v37 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v4 = *(v43 - 8);
  v42 = *(v4 + 64);
  v5 = MEMORY[0x28223BE20](v43);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474F0, &qword_25F17BFA8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474F8, &qword_25F17BFB0);
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  v40 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = *(v18 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47380, &unk_25F1830C0);
  (*(v10 + 104))(v13, *MEMORY[0x277D85778], v9);
  sub_25F17933C();
  (*(v10 + 8))(v13, v9);
  v22 = *(v45 + 112);
  v23 = v8;
  v38 = v8;
  sub_25F0E96D4(v8);
  v24 = sub_25F17932C();
  (*(*(v24 - 8) + 56))(v46, 1, 1, v24);
  v25 = v4;
  v26 = *(v4 + 16);
  v27 = v41;
  v28 = v43;
  v26(v41, v23, v43);
  sub_25F0B7E2C(v20, v17, &qword_27FD474F8, &qword_25F17BFB0);
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = (v42 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v39 + 80) + v30 + 8) & ~*(v39 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  (*(v25 + 32))(v32 + v29, v27, v28);
  *(v32 + v30) = v45;
  sub_25F0B7D50(v17, v32 + v31, &qword_27FD474F8, &qword_25F17BFB0);

  sub_25F0CD9E8(0, 0, v46, &unk_25F17BFC8, v32);

  (*(v25 + 8))(v38, v28);
  sub_25F0B7D50(v20, v17, &qword_27FD474F8, &qword_25F17BFB0);
  v33 = *(v40 + 56);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  (*(*(v34 - 8) + 32))(v44, v17, v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47500, &qword_25F17BFC0);
  return (*(*(v35 - 8) + 8))(&v17[v33], v35);
}

uint64_t sub_25F0D14D8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v46 = &v37 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v4 = *(v43 - 8);
  v42 = *(v4 + 64);
  v5 = MEMORY[0x28223BE20](v43);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474A0, &qword_25F17BF48);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474A8, &qword_25F17BF50);
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  v40 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = *(v18 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47390, &qword_25F17BD68);
  (*(v10 + 104))(v13, *MEMORY[0x277D85778], v9);
  sub_25F17933C();
  (*(v10 + 8))(v13, v9);
  v22 = *(v45 + 112);
  v23 = v8;
  v38 = v8;
  sub_25F0E96D4(v8);
  v24 = sub_25F17932C();
  (*(*(v24 - 8) + 56))(v46, 1, 1, v24);
  v25 = v4;
  v26 = *(v4 + 16);
  v27 = v41;
  v28 = v43;
  v26(v41, v23, v43);
  sub_25F0B7E2C(v20, v17, &qword_27FD474A8, &qword_25F17BF50);
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = (v42 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v39 + 80) + v30 + 8) & ~*(v39 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  (*(v25 + 32))(v32 + v29, v27, v28);
  *(v32 + v30) = v45;
  sub_25F0B7D50(v17, v32 + v31, &qword_27FD474A8, &qword_25F17BF50);

  sub_25F0CD9E8(0, 0, v46, &unk_25F17BF68, v32);

  (*(v25 + 8))(v38, v28);
  sub_25F0B7D50(v20, v17, &qword_27FD474A8, &qword_25F17BF50);
  v33 = *(v40 + 56);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  (*(*(v34 - 8) + 32))(v44, v17, v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B0, &qword_25F17BF60);
  return (*(*(v35 - 8) + 8))(&v17[v33], v35);
}

uint64_t sub_25F0D19E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B0, &qword_25F17BF60);
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v6[19] = *(v8 + 64);
  v6[20] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v10 = sub_25F177E8C();
  v6[23] = v10;
  v11 = *(v10 - 8);
  v6[24] = v11;
  v6[25] = *(v11 + 64);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B8, &qword_25F17BF70);
  v6[29] = v12;
  v13 = *(v12 - 8);
  v6[30] = v13;
  v14 = *(v13 + 64) + 15;
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D1BE0, 0, 0);
}

uint64_t sub_25F0D1BE0()
{
  v1 = v0[31];
  v2 = v0[14];
  v3 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  sub_25F17935C();
  v0[32] = *(*v3 + 120);
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_25F0D1CE0;
  v6 = v0[31];
  v7 = v0[29];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v7);
}

uint64_t sub_25F0D1CE0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F0D1DDC, 0, 0);
}

uint64_t sub_25F0D1DDC()
{
  v1 = *(v0 + 96);
  *(v0 + 272) = v1;
  if (v1)
  {
    v2 = *(v0 + 120);
    *(v0 + 280) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474A8, &qword_25F17BF50) + 48);

    return MEMORY[0x2822009F8](sub_25F0D1F1C, v2, 0);
  }

  else
  {
    v3 = *(v0 + 224);
    v5 = *(v0 + 208);
    v4 = *(v0 + 216);
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_25F0D1F1C()
{
  v1 = *(v0 + 120);
  if (!*(*(v1 + 120) + 16))
  {
    v2 = *(v0 + 256);
    *(v0 + 284) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474C8, &qword_25F17BF90);
    sub_25F1783AC();
    v1 = *(v0 + 120);
  }

  v3 = *(v0 + 272);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  sub_25F177E7C();
  v8 = *(v7 + 16);
  v8(v5, v4, v6);
  swift_beginAccess();

  v9 = *(v1 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 120);
  *(v0 + 104) = v11;
  *(v1 + 120) = 0x8000000000000000;
  v12 = sub_25F0C8B7C(v5);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
LABEL_26:
    v58 = v12;
    sub_25F16FEA0();
    v12 = v58;
LABEL_10:
    v23 = *(v0 + 104);
    v24 = *(v0 + 272);
    v73 = v8;
    if (v4)
    {
      v25 = v23[7];
      v26 = *(v25 + 8 * v12);
      *(v25 + 8 * v12) = v24;
    }

    else
    {
      v27 = *(v0 + 216);
      v28 = *(v0 + 184);
      v29 = *(v0 + 192);
      v23[(v12 >> 6) + 8] |= 1 << v12;
      v30 = v12;
      v31 = (v8)(v23[6] + *(v29 + 72) * v12, v27, v28);
      *(v23[7] + 8 * v30) = v24;
      v34 = v23[2];
      v16 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v16)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v31, v32, v33);
      }

      v23[2] = v35;
    }

    v36 = *(v0 + 208);
    v64 = v36;
    v65 = *(v0 + 224);
    v37 = *(v0 + 192);
    v69 = *(v0 + 200);
    v70 = *(v0 + 272);
    v39 = *(v0 + 176);
    v38 = *(v0 + 184);
    v40 = *(v0 + 160);
    v71 = *(v0 + 168);
    v61 = v40;
    v62 = *(v0 + 280);
    v41 = *(v0 + 144);
    v67 = *(v0 + 152);
    v42 = *(v0 + 136);
    v59 = *(v0 + 128);
    v60 = v42;
    v43 = *(v0 + 120);
    v63 = v38;
    v72 = *(v37 + 8);
    v72(*(v0 + 216), v38);
    *(v43 + 120) = v23;
    swift_endAccess();
    v66 = sub_25F17932C();
    v68 = *(v66 - 8);
    (*(v68 + 56))(v39, 1, 1, v66);
    (*(v41 + 16))(v40, v59 + v62, v42);
    v73(v36, v65, v38);
    v44 = sub_25F0B7D00(&qword_27FD474C0, &qword_27FD47300, &qword_25F17BC08);
    v45 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v46 = (v67 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (*(v37 + 80) + v46 + 8) & ~*(v37 + 80);
    v48 = swift_allocObject();
    *(v48 + 2) = v43;
    *(v48 + 3) = v44;
    *(v48 + 4) = v70;
    (*(v41 + 32))(&v48[v45], v61, v60);
    *&v48[v46] = v43;
    (*(v37 + 32))(&v48[v47], v64, v63);
    sub_25F0B7E2C(v39, v71, &qword_27FD46BB0, &qword_25F17AF30);
    LODWORD(v44) = (*(v68 + 48))(v71, 1, v66);
    swift_retain_n();

    v49 = *(v0 + 168);
    if (v44 == 1)
    {
      sub_25F0B7E94(*(v0 + 168), &qword_27FD46BB0, &qword_25F17AF30);
    }

    else
    {
      sub_25F17931C();
      (*(v68 + 8))(v49, v66);
    }

    v51 = *(v48 + 2);
    v50 = *(v48 + 3);
    swift_unknownObjectRetain();

    if (v51)
    {
      swift_getObjectType();
      v52 = sub_25F1792CC();
      v54 = v53;
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    sub_25F0B7E94(*(v0 + 176), &qword_27FD46BB0, &qword_25F17AF30);
    v55 = swift_allocObject();
    *(v55 + 16) = &unk_25F17BF80;
    *(v55 + 24) = v48;
    if (v54 | v52)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v52;
      *(v0 + 40) = v54;
    }

    v56 = *(v0 + 224);
    v57 = *(v0 + 184);
    swift_task_create();

    v72(v56, v57);
    v31 = sub_25F0D24FC;
    v32 = 0;
    v33 = 0;

    return MEMORY[0x2822009F8](v31, v32, v33);
  }

  LOBYTE(v4) = v13;
  if (*(v11 + 24) >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  v18 = *(v0 + 216);
  sub_25F16B7F4(v17, isUniquelyReferenced_nonNull_native);
  v19 = *(v0 + 104);
  v12 = sub_25F0C8B7C(v18);
  if ((v4 & 1) == (v20 & 1))
  {
    goto LABEL_10;
  }

  v21 = *(v0 + 184);

  return sub_25F17985C();
}