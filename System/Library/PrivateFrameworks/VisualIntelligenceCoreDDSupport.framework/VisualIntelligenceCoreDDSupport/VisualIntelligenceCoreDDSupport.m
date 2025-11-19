uint64_t sub_21DDF77F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    v9 = sub_21DE08A08();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 72);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21DDF78B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_21DE08A08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21DDF7954()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21DDF798C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21DDF7A6C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21DDF7B88()
{
  v0 = sub_21DE08BA8();
  __swift_allocate_value_buffer(v0, qword_27CE90DA8);
  __swift_project_value_buffer(v0, qword_27CE90DA8);
  return sub_21DE08B98();
}

uint64_t sub_21DDF7C0C()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v8];
  v2 = v8[0];
  if (v1)
  {
    v3 = sub_21DE089A8();
  }

  else
  {
    v4 = v2;
    v5 = sub_21DE08978();

    swift_willThrow();
    v3 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t SemanticDataDetectorActionable.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SemanticDataDetectorActionable.rawText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SemanticDataDetectorActionable.imageName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t SemanticDataDetectorActionable.source.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_21DDF7DA4(v2, v3, v4, v5);
}

uint64_t sub_21DDF7DA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {

    v5 = a4;
  }

  return result;
}

void *SemanticDataDetectorActionable.button.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

uint64_t SemanticDataDetectorActionable.menuImageName.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

void *SemanticDataDetectorActionable.defaultAction.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

void *SemanticDataDetectorActionable.scannerResult.getter()
{
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

uint64_t SemanticDataDetectorActionable.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

void *SemanticDataDetectorActionable.menu.getter()
{
  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

uint64_t SemanticDataDetectorActionable.correlationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SemanticDataDetectorActionable() + 72);
  v4 = sub_21DE08A08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SemanticDataDetectorActionable()
{
  result = qword_281222BA0;
  if (!qword_281222BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SemanticDataDetectorActionable.sortOrder.getter()
{
  if (!*(v0 + 72))
  {
    return 0;
  }

  v1 = *(v0 + 80);
  _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(&v3);
  if (v3 > 0xBuLL)
  {
    return 127;
  }

  else
  {
    return qword_21DE09920[v3];
  }
}

Swift::Void __swiftcall SemanticDataDetectorActionable.performDefaultAction(forView:)(UIView_optional forView)
{
  isa = forView.value.super.super.isa;
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = *(*(type metadata accessor for SemanticDataDetectorActionable() - 8) + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - v7;
  v9 = *(v1 + 128);
  if (!v9)
  {
    if (isa)
    {
      v25 = qword_27CE90DA0;
      v26 = isa;
      if (v25 != -1)
      {
        swift_once();
      }

      v27 = sub_21DE08BA8();
      __swift_project_value_buffer(v27, qword_27CE90DA8);
      v28 = v1;
      sub_21DDF9AD4(v1, v8);
      v29 = sub_21DE08B88();
      v30 = sub_21DE08CF8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v60[0] = v32;
        *v31 = 136315138;
        sub_21DDF9AD4(v8, v6);
        v33 = sub_21DE08C28();
        v35 = v34;
        sub_21DDF9B38(v8);
        v36 = sub_21DDF9B94(v33, v35, v60);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_21DDF6000, v29, v30, "calculating default action for: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x223D4A9A0](v32, -1, -1);
        MEMORY[0x223D4A9A0](v31, -1, -1);

        v37 = v28[17];
        if (v37)
        {
LABEL_14:
          v38 = [v37 coreResult];
          v39 = objc_opt_self();
          v40 = v28[21];
          v41 = v28[23];
          v42 = v38;
          sub_21DDF865C(v26, v40, v41);
          v43 = sub_21DE08BB8();

          v60[0] = 0;

          if (v60[0])
          {
            v44 = v60[0];
            v45 = sub_21DE08B88();
            v46 = sub_21DE08CF8();

            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v60[0] = v59;
              *v47 = 136315138;
              v48 = v44;
              v49 = [v48 description];
              v50 = v26;
              v51 = sub_21DE08C18();
              v53 = v52;

              v54 = v51;
              v26 = v50;
              v55 = sub_21DDF9B94(v54, v53, v60);

              *(v47 + 4) = v55;
              _os_log_impl(&dword_21DDF6000, v45, v46, "performing default action: %s", v47, 0xCu);
              v56 = v59;
              __swift_destroy_boxed_opaque_existential_0Tm(v59);
              MEMORY[0x223D4A9A0](v56, -1, -1);
              MEMORY[0x223D4A9A0](v47, -1, -1);
            }

            [v44 dd_performAction];
          }

          goto LABEL_21;
        }
      }

      else
      {

        sub_21DDF9B38(v8);
        v37 = v28[17];
        if (v37)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_21:
    v57 = *MEMORY[0x277D85DE8];
    return;
  }

  v10 = qword_27CE90DA0;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_21DE08BA8();
  __swift_project_value_buffer(v12, qword_27CE90DA8);
  v59 = v11;
  v13 = sub_21DE08B88();
  v14 = sub_21DE08CF8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v60[0] = v16;
    *v15 = 136315138;
    v17 = v59;
    v18 = [v17 description];
    v19 = sub_21DE08C18();
    v21 = v20;

    v22 = sub_21DDF9B94(v19, v21, v60);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_21DDF6000, v13, v14, "performing default action: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x223D4A9A0](v16, -1, -1);
    MEMORY[0x223D4A9A0](v15, -1, -1);
  }

  [v59 dd_performAction];
  v23 = *MEMORY[0x277D85DE8];
  v24 = v59;
}

uint64_t sub_21DDF865C(void *a1, unint64_t a2, uint64_t a3)
{
  v35 = a3;
  if (a2)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DE08E18())
    {
      v6 = 0;
      v7 = MEMORY[0x277D84F90];
      while ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D4A330](v6, a2);
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_16;
        }

LABEL_8:
        v10 = v8;
        v11 = [v8 coreResult];
        v12 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_21DDFD144(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_21DDFD144((v13 > 1), v14 + 1, 1, v7);
        }

        *(v7 + 2) = v14 + 1;
        *&v7[8 * v14 + 32] = v11;
        ++v6;
        if (v9 == i)
        {
          goto LABEL_20;
        }
      }

      if (v6 >= *(v4 + 16))
      {
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v6 + 32);
      v9 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_20:
  v15 = *MEMORY[0x277D04348];
  sub_21DE08C18();
  *(&v39 + 1) = v16;
  v17 = MEMORY[0x277D837D0];
  sub_21DE08D88();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E48, &qword_21DE098E0);
  *&v39 = v7;
  sub_21DDFB008(&v39, v38);
  v18 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21DE063E8(v38, v41, isUniquelyReferenced_nonNull_native);
  sub_21DDFB018(v41);
  if (v35)
  {
    v20 = sub_21DDFB178(v35);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v41[0] = v18;
    sub_21DDFAD18(v20, sub_21DDFD528, 0, v21, v41);
  }

  v22 = *(v36 + 136);
  if (v22)
  {
    v23 = [v22 value];
    v24 = sub_21DE08C18();
    v26 = v25;

    v27 = *MEMORY[0x277D04378];
    *&v39 = sub_21DE08C18();
    *(&v39 + 1) = v28;
    sub_21DE08D88();
    v40 = v17;
    *&v39 = v24;
    *(&v39 + 1) = v26;
    sub_21DDFB008(&v39, v38);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_21DE063E8(v38, v41, v29);
    sub_21DDFB018(v41);
  }

  v30 = objc_opt_self();
  v31 = sub_21DE08BB8();

  [a1 bounds];
  v32 = [v30 updateContext:v31 withSourceRect:?];

  v33 = sub_21DE08BC8();
  return v33;
}

uint64_t sub_21DDF89F4()
{
  v1 = *v0;
  sub_21DE08F08();
  sub_21DE08C38();

  return sub_21DE08F48();
}

uint64_t sub_21DDF8AB8()
{
  *v0;
  *v0;
  *v0;
  sub_21DE08C38();
}

uint64_t sub_21DDF8B68()
{
  v1 = *v0;
  sub_21DE08F08();
  sub_21DE08C38();

  return sub_21DE08F48();
}

uint64_t sub_21DDF8C28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21DDFAF5C();
  *a2 = result;
  return result;
}

void sub_21DDF8C58(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x72656E6E616373;
  v4 = 0xE700000000000000;
  v5 = 0x74786554776172;
  if (*v1 != 2)
  {
    v5 = 0x6D614E6567616D69;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21DDF8CD8()
{
  v1 = 0x72656E6E616373;
  v2 = 0x74786554776172;
  if (*v0 != 2)
  {
    v2 = 0x6D614E6567616D69;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DDF8D54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21DDFAF5C();
  *a1 = result;
  return result;
}

uint64_t sub_21DDF8D94(uint64_t a1)
{
  v2 = sub_21DDFA1D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DDF8DD0(uint64_t a1)
{
  v2 = sub_21DDFA1D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SemanticDataDetectorActionable.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90DC0, &qword_21DE09510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90DC8, &qword_21DE09518);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SemanticDataDetectorActionable();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v17[*(v15 + 80)];
  sub_21DE089F8();
  v19 = a1[3];
  v20 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_21DDFA1D8();
  sub_21DE08F58();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_21DDFA22C(v7);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 15;
  }

  else
  {
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    v45 = 0;
    sub_21DDFA344();
    sub_21DE08E98();
    v39 = v9;
    v30 = v43[0];
    v29 = v43[1];
    sub_21DDFA894(0, &qword_27CE90DE0, 0x277CCAAC8);
    sub_21DDFA894(0, &qword_2812229C8, 0x277D04218);
    v31 = sub_21DE08D08();
    if (v31)
    {
      v38 = v31;
      _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(v43);
      sub_21DDFA398(v30, v29);
      v36 = LOBYTE(v43[0]);
    }

    else
    {
      sub_21DDFA398(v30, v29);
      v38 = 0;
      v36 = 15;
    }

    v44 = v36;
    LOBYTE(v43[0]) = 1;
    v40 = v12;
    v25 = sub_21DE08E88();
    v26 = v32;
    LOBYTE(v43[0]) = 2;
    v23 = sub_21DE08E88();
    v24 = v33;
    LOBYTE(v43[0]) = 3;
    v21 = sub_21DE08E88();
    v22 = v34;
    (*(v39 + 8))(v40, v8);
    v27 = v38;
    v28 = v44;
  }

  *v17 = v28;
  *(v17 + 1) = v25;
  *(v17 + 2) = v26;
  *(v17 + 3) = v23;
  *(v17 + 4) = v24;
  *(v17 + 5) = v21;
  *(v17 + 6) = v22;
  *(v17 + 15) = 0;
  *(v17 + 16) = 0;
  *(v17 + 17) = v27;
  v17[144] = 0;
  *(v17 + 13) = 0;
  *(v17 + 14) = 0;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 152) = 0u;
  *(v17 + 168) = 0u;
  *(v17 + 23) = 0;
  sub_21DDFA294(v17, v41);
  return __swift_destroy_boxed_opaque_existential_0Tm(v42);
}

uint64_t SemanticDataDetectorActionable.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90DE8, &qword_21DE09520);
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DDFA1D8();
  sub_21DE08F68();
  if (v3[17])
  {
    v10 = sub_21DDF7C0C();
  }

  else
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  v22 = v10;
  v23 = v11;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90DF0, &qword_21DE09528);
  sub_21DDFA3EC();
  sub_21DE08ED8();
  v12 = v2;
  if (v2)
  {

    v12 = 0;
  }

  sub_21DDFA50C(v22, v23);
  v13 = v3[2];
  v22 = v3[1];
  v23 = v13;
  v24 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E08, &qword_21DE09530);
  sub_21DDFA520();
  sub_21DE08ED8();
  v14 = v12;
  if (v12)
  {

    v14 = 0;
  }

  v15 = v3[4];
  v22 = v3[3];
  v23 = v15;
  v24 = 2;

  sub_21DE08ED8();
  v16 = v14;
  if (v14)
  {

    v16 = 0;
  }

  v17 = v3[5];
  v18 = v3[6];
  v22 = v17;
  v23 = v18;
  v24 = 3;

  sub_21DE08ED8();
  if (v16)
  {
  }

  return (*(v21 + 8))(v8, v5);
}

BOOL static SemanticDataDetectorActionable.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v3 = *(a2 + 136);
  result = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_21DDFA894(0, &qword_2812229C8, 0x277D04218);
    v6 = v3;
    v7 = v2;
    v8 = sub_21DE08D18();

    return v8 & 1;
  }

  return result;
}

uint64_t SemanticDataDetectorActionable.hash(into:)()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = [v1 type];
    sub_21DE08C18();

    sub_21DE08F28();
    sub_21DE08C38();

    v3 = [v1 range];
    v5 = v4;
    sub_21DE08F28();
    MEMORY[0x223D4A480](v3);
    MEMORY[0x223D4A480](v5);
    [v1 category];
    sub_21DE08F28();
    return sub_21DE08F38();
  }

  else
  {
    sub_21DE08F28();
    sub_21DE08F28();
    return sub_21DE08F28();
  }
}

uint64_t SemanticDataDetectorActionable.hashValue.getter()
{
  sub_21DE08F08();
  SemanticDataDetectorActionable.hash(into:)();
  return sub_21DE08F48();
}

uint64_t sub_21DDF9740()
{
  sub_21DE08F08();
  SemanticDataDetectorActionable.hash(into:)();
  return sub_21DE08F48();
}

uint64_t sub_21DDF9784()
{
  sub_21DE08F08();
  SemanticDataDetectorActionable.hash(into:)();
  return sub_21DE08F48();
}

BOOL sub_21DDF97C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v3 = *(a2 + 136);
  result = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_21DDFA894(0, &qword_2812229C8, 0x277D04218);
    v6 = v3;
    v7 = v2;
    v8 = sub_21DE08D18();

    return v8 & 1;
  }

  return result;
}

uint64_t sub_21DDF9854(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_21DE08A78();
}

uint64_t sub_21DDF98C0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21DE08A98();
}

uint64_t sub_21DDF990C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21DE08A88();
}

uint64_t sub_21DDF9964()
{
  sub_21DE08F08();
  v1 = *v0;
  swift_getWitnessTable();
  sub_21DE08A88();
  return sub_21DE08F48();
}

uint64_t sub_21DDF99CC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_21DDF9A40(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_21DDF9B94(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
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

uint64_t sub_21DDF9AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SemanticDataDetectorActionable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DDF9B38(uint64_t a1)
{
  v2 = type metadata accessor for SemanticDataDetectorActionable();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DDF9B94(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21DDF9C60(v11, 0, 0, 1, a1, a2);
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
    sub_21DDFAFA8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_21DDF9C60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21DDF9D6C(a5, a6);
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
    result = sub_21DE08DF8();
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

uint64_t sub_21DDF9D6C(uint64_t a1, unint64_t a2)
{
  v4 = sub_21DDF9DB8(a1, a2);
  sub_21DDF9EE8(&unk_282F23090);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21DDF9DB8(uint64_t a1, unint64_t a2)
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

  v6 = sub_21DDF9FD4(v5, 0);
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

  result = sub_21DE08DF8();
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
        v10 = sub_21DE08C58();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21DDF9FD4(v10, 0);
        result = sub_21DE08DA8();
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

uint64_t sub_21DDF9EE8(uint64_t result)
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

  result = sub_21DDFA048(result, v12, 1, v3);
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

void *sub_21DDF9FD4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E40, &qword_21DE098D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21DDFA048(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E40, &qword_21DE098D8);
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

_BYTE **sub_21DDFA13C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21DDFA1D8()
{
  result = qword_27CE90DD0;
  if (!qword_27CE90DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90DD0);
  }

  return result;
}

uint64_t sub_21DDFA22C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90DC0, &qword_21DE09510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DDFA294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SemanticDataDetectorActionable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_21DDFA344()
{
  result = qword_27CE90DD8;
  if (!qword_27CE90DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90DD8);
  }

  return result;
}

uint64_t sub_21DDFA398(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_21DDFA3EC()
{
  result = qword_27CE90DF8;
  if (!qword_27CE90DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90DF0, &qword_21DE09528);
    sub_21DDFA4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90DF8);
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

unint64_t sub_21DDFA4B8()
{
  result = qword_27CE90E00;
  if (!qword_27CE90E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90E00);
  }

  return result;
}

uint64_t sub_21DDFA50C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21DDFA398(a1, a2);
  }

  return a1;
}

unint64_t sub_21DDFA520()
{
  result = qword_27CE90E10;
  if (!qword_27CE90E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90E08, &qword_21DE09530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90E10);
  }

  return result;
}

void sub_21DDFA60C()
{
  sub_21DDFB128(319, &qword_281222A10, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21DDFB128(319, &qword_281222BC0, &type metadata for SemanticDataDetector, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21DDFA83C(319, &qword_281222988, &qword_281222990, 0x277D75220);
      if (v2 <= 0x3F)
      {
        sub_21DDFA83C(319, &qword_2812229F8, &qword_281222A00, 0x277D04340);
        if (v3 <= 0x3F)
        {
          sub_21DDFA83C(319, &qword_2812229C0, &qword_2812229C8, 0x277D04218);
          if (v4 <= 0x3F)
          {
            sub_21DDFA8DC(319, &qword_281222A08, &qword_27CE90E18, &qword_21DE09680);
            if (v5 <= 0x3F)
            {
              sub_21DDFA83C(319, &qword_2812229A0, &qword_2812229A8, 0x277D75710);
              if (v6 <= 0x3F)
              {
                sub_21DDFA8DC(319, &qword_281222A18, &qword_27CE90E20, &qword_21DE09688);
                if (v7 <= 0x3F)
                {
                  sub_21DE08A08();
                  if (v8 <= 0x3F)
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

void sub_21DDFA83C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_21DDFA894(255, a3, a4);
    v5 = sub_21DE08D38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21DDFA894(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_21DDFA8DC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21DE08D38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21DDFA968(uint64_t a1, int a2)
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

uint64_t sub_21DDFA988(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SemanticDataDetectorActionable.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SemanticDataDetectorActionable.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21DDFAB3C()
{
  result = qword_27CE90E28;
  if (!qword_27CE90E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90E28);
  }

  return result;
}

uint64_t sub_21DDFABD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21DDFAC6C()
{
  result = qword_27CE90E30;
  if (!qword_27CE90E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90E30);
  }

  return result;
}

unint64_t sub_21DDFACC4()
{
  result = qword_27CE90E38;
  if (!qword_27CE90E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90E38);
  }

  return result;
}

uint64_t sub_21DDFAD18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_21DDFD56C(&v38);
  if (!*(&v39 + 1))
  {
LABEL_18:
    sub_21DDFB06C();
  }

  while (1)
  {
    v35 = v38;
    v36 = v39;
    v37 = v40;
    sub_21DDFB008(&v41, v34);
    v15 = *a5;
    v16 = sub_21DE0524C(&v35);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_21DE05388(v21, a4 & 1);
      v23 = *a5;
      v16 = sub_21DE0524C(&v35);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v31 = v16;
    sub_21DE05B98();
    v16 = v31;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_21DDFAFA8(*(*a5 + 56) + 32 * v16, v33);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      sub_21DDFB018(&v35);
      v14 = *(v12 + 56);
      __swift_destroy_boxed_opaque_existential_0Tm((v14 + v13));
      sub_21DDFB008(v33, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v25 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v26 = v25[6] + 40 * v16;
    v27 = v35;
    v28 = v36;
    *(v26 + 32) = v37;
    *v26 = v27;
    *(v26 + 16) = v28;
    sub_21DDFB008(v34, (v25[7] + 32 * v16));
    v29 = v25[2];
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v25[2] = v30;
LABEL_7:
    sub_21DDFD56C(&v38);
    a4 = 1;
    if (!*(&v39 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_21DE08EF8();
  __break(1u);
  return result;
}

uint64_t sub_21DDFAF5C()
{
  v0 = sub_21DE08E58();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21DDFAFA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_21DDFB008(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_21DDFB128(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21DDFB178(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E78, &qword_21DE09A78);
    v2 = sub_21DE08E48();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21DDFAFA8(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_21DDFB008(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_21DDFB008(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_21DDFB008(v32, v33);
    v17 = *(v2 + 40);
    result = sub_21DE08D68();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_21DDFB008(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21DDFB440()
{
  v0 = sub_21DE08BA8();
  __swift_allocate_value_buffer(v0, qword_281222A30);
  __swift_project_value_buffer(v0, qword_281222A30);
  return sub_21DE08B98();
}

uint64_t static SemanticDataDetectorActionGenerator.actionables(for:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_21DE088F8();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E50, &qword_21DE099B8) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v7 = type metadata accessor for SemanticDataDetectorActionable();
  v2[20] = v7;
  v8 = *(v7 - 8);
  v2[21] = v8;
  v9 = *(v8 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDFB624, 0, 0);
}

uint64_t sub_21DDFB624()
{
  v45 = v0;
  *(v0 + 64) = 0;
  v1 = *(v0 + 112);
  *(v0 + 72) = 0xE000000000000000;
  v2 = *(v1 + 32);
  *(v0 + 257) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 56);
  *(v0 + 192) = MEMORY[0x277D84F90];

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 200) = v5;
    *(v0 + 208) = v7;
    v9 = *(v6 + 48) + 48 * (__clz(__rbit64(v5)) | (v7 << 6));
    v10 = *v9;
    v12 = *(v9 + 8);
    v11 = *(v9 + 16);
    *(v0 + 216) = v11;
    v13 = *(v9 + 24);
    *(v0 + 224) = v13;
    v14 = *(v9 + 32);
    *(v0 + 232) = v14;
    v15 = *(v9 + 40);
    *(v0 + 240) = v15;
    *(v0 + 256) = v10;

    v16 = v13;

    *(v0 + 80) = sub_21DE08C28();
    *(v0 + 88) = v17;

    MEMORY[0x223D4A1B0](8236, 0xE200000000000000);

    MEMORY[0x223D4A1B0](*(v0 + 80), *(v0 + 88));

    *(v0 + 16) = v10;
    *(v0 + 24) = v12;
    *(v0 + 32) = v11;
    *(v0 + 40) = v16;
    *(v0 + 48) = v14;
    *(v0 + 56) = v15;
    v18 = swift_task_alloc();
    *(v0 + 248) = v18;
    *v18 = v0;
    v18[1] = sub_21DDFBA60;
    v19 = *(v0 + 152);

    return sub_21DDFC0F8(v19, v0 + 16);
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 64);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);

    v24 = *(v0 + 72);
    *(v0 + 96) = *(v0 + 64);
    *(v0 + 104) = v24;
    sub_21DE088E8();
    sub_21DDFD248();
    v25 = sub_21DE08D48();
    v27 = v26;
    (*(v22 + 8))(v21, v23);

    if (qword_281222A28 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 112);
    v29 = sub_21DE08BA8();
    __swift_project_value_buffer(v29, qword_281222A30);

    v30 = sub_21DE08B88();
    v31 = sub_21DE08CE8();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 112);
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 134218242;
      *(v34 + 4) = *(v33 + 16);

      *(v34 + 12) = 2080;
      v36 = sub_21DDF9B94(v25, v27, &v44);

      *(v34 + 14) = v36;
      _os_log_impl(&dword_21DDF6000, v30, v31, "Converted %ld SemanticDataDetectors with types [%s] into actionables.", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x223D4A9A0](v35, -1, -1);
      MEMORY[0x223D4A9A0](v34, -1, -1);
    }

    else
    {
      v37 = *(v0 + 112);
    }

    v39 = *(v0 + 176);
    v38 = *(v0 + 184);
    v41 = *(v0 + 144);
    v40 = *(v0 + 152);

    v42 = *(v0 + 8);
    v43 = *(v0 + 192);

    return v42(v43);
  }
}

uint64_t sub_21DDFBA60()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21DDFBB5C, 0, 0);
}

uint64_t sub_21DDFBB5C()
{
  v59 = v0;
  v1 = *(v0 + 152);
  if ((*(*(v0 + 168) + 48))(v1, 1, *(v0 + 160)) != 1)
  {
    v9 = *(v0 + 184);
    v10 = *(v0 + 176);
    sub_21DDFA294(v1, v9);
    sub_21DDF9AD4(v9, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 192);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);

  sub_21DDFD750(v1, &qword_27CE90E50, &qword_21DE099B8);
  v6 = *(v0 + 208);
  v7 = (*(v0 + 200) - 1) & *(v0 + 200);
  if (v7)
  {
LABEL_3:
    v8 = *(v0 + 112);
LABEL_12:
    *(v0 + 200) = v7;
    *(v0 + 208) = v6;
    v22 = *(v8 + 48) + 48 * (__clz(__rbit64(v7)) | (v6 << 6));
    v23 = *v22;
    v25 = *(v22 + 8);
    v24 = *(v22 + 16);
    *(v0 + 216) = v24;
    v26 = *(v22 + 24);
    *(v0 + 224) = v26;
    v27 = *(v22 + 32);
    *(v0 + 232) = v27;
    v28 = *(v22 + 40);
    *(v0 + 240) = v28;
    *(v0 + 256) = v23;

    v29 = v26;

    *(v0 + 80) = sub_21DE08C28();
    *(v0 + 88) = v30;

    MEMORY[0x223D4A1B0](8236, 0xE200000000000000);

    MEMORY[0x223D4A1B0](*(v0 + 80), *(v0 + 88));

    *(v0 + 16) = v23;
    *(v0 + 24) = v25;
    *(v0 + 32) = v24;
    *(v0 + 40) = v29;
    *(v0 + 48) = v27;
    *(v0 + 56) = v28;
    v31 = swift_task_alloc();
    *(v0 + 248) = v31;
    *v31 = v0;
    v31[1] = sub_21DDFBA60;
    v32 = *(v0 + 152);

    return sub_21DDFC0F8(v32, v0 + 16);
  }

  else
  {
    while (1)
    {
      while (1)
      {
        v21 = v6 + 1;
        if (!__OFADD__(v6, 1))
        {
          break;
        }

        __break(1u);
LABEL_24:
        v1 = sub_21DDFD2C4(0, v1[2] + 1, 1, v1, &qword_27CE90E60, &qword_21DE09A60, type metadata accessor for SemanticDataDetectorActionable);
LABEL_5:
        v13 = v1[2];
        v12 = v1[3];
        if (v13 >= v12 >> 1)
        {
          v1 = sub_21DDFD2C4(v12 > 1, v13 + 1, 1, v1, &qword_27CE90E60, &qword_21DE09A60, type metadata accessor for SemanticDataDetectorActionable);
        }

        v15 = *(v0 + 232);
        v14 = *(v0 + 240);
        v16 = *(v0 + 216);
        v17 = *(v0 + 224);
        v19 = *(v0 + 176);
        v18 = *(v0 + 184);
        v20 = *(v0 + 168);

        sub_21DDF9B38(v18);
        v1[2] = v13 + 1;
        sub_21DDFA294(v19, v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v13);
        v6 = *(v0 + 208);
        v7 = (*(v0 + 200) - 1) & *(v0 + 200);
        *(v0 + 192) = v1;
        if (v7)
        {
          goto LABEL_3;
        }
      }

      if (v21 >= (((1 << *(v0 + 257)) + 63) >> 6))
      {
        break;
      }

      v8 = *(v0 + 112);
      v7 = *(v8 + 8 * v21 + 56);
      ++v6;
      if (v7)
      {
        v6 = v21;
        goto LABEL_12;
      }
    }

    v35 = *(v0 + 136);
    v34 = *(v0 + 144);
    v36 = *(v0 + 128);
    v37 = *(v0 + 112);

    v38 = *(v0 + 72);
    *(v0 + 96) = *(v0 + 64);
    *(v0 + 104) = v38;
    sub_21DE088E8();
    sub_21DDFD248();
    v39 = sub_21DE08D48();
    v41 = v40;
    (*(v35 + 8))(v34, v36);

    if (qword_281222A28 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 112);
    v43 = sub_21DE08BA8();
    __swift_project_value_buffer(v43, qword_281222A30);

    v44 = sub_21DE08B88();
    v45 = sub_21DE08CE8();

    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 112);
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v58 = v49;
      *v48 = 134218242;
      *(v48 + 4) = *(v47 + 16);

      *(v48 + 12) = 2080;
      v50 = sub_21DDF9B94(v39, v41, &v58);

      *(v48 + 14) = v50;
      _os_log_impl(&dword_21DDF6000, v44, v45, "Converted %ld SemanticDataDetectors with types [%s] into actionables.", v48, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x223D4A9A0](v49, -1, -1);
      MEMORY[0x223D4A9A0](v48, -1, -1);
    }

    else
    {
      v51 = *(v0 + 112);
    }

    v53 = *(v0 + 176);
    v52 = *(v0 + 184);
    v55 = *(v0 + 144);
    v54 = *(v0 + 152);

    v56 = *(v0 + 8);
    v57 = *(v0 + 192);

    return v56(v57);
  }
}

uint64_t sub_21DDFC0F8(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  *(v2 + 136) = *(a2 + 16);
  *(v2 + 232) = *a2;
  v4 = *(a2 + 8);
  *(v2 + 120) = a1;
  *(v2 + 128) = v4;
  *(v2 + 152) = v3;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21DDFC1A0, 0, 0);
}

uint64_t sub_21DDFC1A0()
{
  v55 = v0;
  v54 = *MEMORY[0x277D85DE8];
  if (qword_281222A28 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v2 = *(v0 + 152);
    v1 = *(v0 + 160);
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = sub_21DE08BA8();
    __swift_project_value_buffer(v5, qword_281222A30);

    v6 = v3;

    v7 = sub_21DE08B88();
    v8 = sub_21DE08CE8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 152);
      v45 = *(v0 + 160);
      v47 = v8;
      v10 = *(v0 + 136);
      v11 = *(v0 + 144);
      v12 = *(v0 + 128);
      v13 = *(v0 + 232);
      v14 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v14 = 136315138;
      LOBYTE(v50[0]) = v13;
      v50[1] = v12;
      v50[2] = v10;
      v51 = v11;
      v52 = v9;
      v53 = v45;

      v15 = v11;

      v16 = SemanticDataDetector.description.getter();
      v18 = v17;
      v19 = v51;

      v20 = sub_21DDF9B94(v16, v18, &v49);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_21DDF6000, v7, v47, "Creating Actionable for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x223D4A9A0](v46, -1, -1);
      MEMORY[0x223D4A9A0](v14, -1, -1);
    }

    v21 = *(v0 + 160);
    if (!v21)
    {

      v31 = MEMORY[0x277D84F90];
      goto LABEL_21;
    }

    v50[0] = MEMORY[0x277D84F90];
    v22 = v21 >> 62 ? sub_21DE08E18() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    swift_bridgeObjectRetain_n();

    if (!v22)
    {
      break;
    }

    v23 = 0;
    v24 = *(v0 + 160);
    v25 = v24 & 0xC000000000000001;
    v26 = v24 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v25)
      {
        v27 = MEMORY[0x223D4A330](v23, v1);
      }

      else
      {
        if (v23 >= *(v26 + 16))
        {
          goto LABEL_27;
        }

        v27 = *(v1 + 8 * v23 + 32);
      }

      v28 = v27;
      v29 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v30 = [v27 coreResult];

      MEMORY[0x223D4A1D0]();
      if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v48 = *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21DE08C98();
      }

      sub_21DE08CA8();
      ++v23;
      if (v29 == v22)
      {
        v31 = v50[0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  v31 = MEMORY[0x277D84F90];
LABEL_20:

LABEL_21:
  v32 = *(v0 + 152);
  v33 = *MEMORY[0x277D04348];
  *(v0 + 56) = sub_21DE08C18();
  *(v0 + 64) = v34;
  sub_21DE08D88();
  *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E68, &qword_21DE09A68);
  *(v0 + 56) = v31;
  sub_21DDFB008((v0 + 56), (v0 + 88));
  v35 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50[0] = v35;
  sub_21DE063E8((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_21DDFB018(v0 + 16);
  v37 = v50[0];
  if (v32)
  {

    v39 = sub_21DDFB178(v38);

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = v37;
    sub_21DDFAD18(v39, sub_21DDFD528, 0, v40, v50);

    v37 = v50[0];
  }

  *(v0 + 168) = v37;
  *(v0 + 176) = sub_21DE08CD8();
  *(v0 + 184) = sub_21DE08CC8();
  v41 = sub_21DE08CB8();
  v43 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21DDFC6A4, v41, v42);
}

uint64_t sub_21DDFC6A4()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 184);

  *(v0 + 192) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21DDFC754, 0, 0);
}

uint64_t sub_21DDFC754()
{
  v48 = v0;
  v47 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = objc_opt_self();
  v5 = [v3 coreResult];
  v6 = sub_21DE08BB8();
  *(v0 + 16) = 0;
  v7 = [v4 buttonActionsForURL:0 result:v5 contact:0 icsString:0 context:v6 view:v1 identifier:0 suggestedActions:0 defaultAction:v0 + 16];
  *(v0 + 200) = v7;

  v8 = *(v0 + 16);
  *(v0 + 208) = v8;
  if (v7)
  {
    v9 = *(v0 + 144);
    v10 = v8;
    _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(&v46);
    *(v0 + 233) = v46;
    if (v10)
    {
      v11 = *(v0 + 176);
      *(v0 + 216) = sub_21DE08CC8();
      v12 = sub_21DE08CB8();
      v14 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2822009F8](sub_21DDFCB0C, v12, v13);
    }

    v22 = *(v0 + 168);

    v23 = [*(v0 + 144) value];
    v24 = sub_21DE08C18();
    v26 = v25;

    v44 = *(v0 + 200);
    v45 = *(v0 + 208);
    v27 = *(v0 + 192);
    v29 = *(v0 + 152);
    v28 = *(v0 + 160);
    v30 = *(v0 + 136);
    v31 = *(v0 + 144);
    v32 = *(v0 + 232);
    v34 = *(v0 + 120);
    v33 = *(v0 + 128);
    *v34 = *(v0 + 233);
    *(v34 + 8) = xmmword_21DE09990;
    *(v34 + 24) = v24;
    *(v34 + 32) = v26;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = v32;
    *(v34 + 64) = v33;
    *(v34 + 72) = v30;
    *(v34 + 80) = v31;
    *(v34 + 88) = v29;
    *(v34 + 96) = v28;
    *(v34 + 104) = v27;
    *(v34 + 112) = 0;
    *(v34 + 120) = 0;
    *(v34 + 128) = v45;
    *(v34 + 136) = v31;
    *(v34 + 144) = 0;
    *(v34 + 152) = xmmword_21DE099A0;
    *(v34 + 168) = v28;
    *(v34 + 176) = v44;
    *(v34 + 184) = v29;
    v35 = type metadata accessor for SemanticDataDetectorActionable();
    v36 = *(v35 + 72);

    v37 = v31;

    v38 = v37;
    v39 = v27;
    v20 = v45;
    v40 = v44;
    sub_21DE089F8();

    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }

  else
  {
    v15 = *(v0 + 192);
    v17 = *(v0 + 160);
    v16 = *(v0 + 168);
    v18 = *(v0 + 152);
    v19 = *(v0 + 120);
    v20 = v8;

    v21 = type metadata accessor for SemanticDataDetectorActionable();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  }

  v41 = *(v0 + 8);
  v42 = *MEMORY[0x277D85DE8];

  return v41();
}

uint64_t sub_21DDFCB0C()
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = v0[26];
  v1 = v0[27];

  v0[28] = [v2 dd_action];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21DDFCBBC, 0, 0);
}

uint64_t sub_21DDFCBBC()
{
  v63 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 224);
  if (!v1)
  {
    v11 = *(v0 + 168);

    v6 = 0;
    v7 = 0;
    v9 = 0;
    v58 = 0xE000000000000000;
    v59 = 0;
    goto LABEL_6;
  }

  v2 = *(v0 + 233);
  v3 = [v1 isPlaceholderAction];
  v4 = *(v0 + 224);
  if ((v3 & 1) == 0 && v2 != 10)
  {
    v5 = *(v0 + 168);
    v6 = [*(v0 + 224) compactIcon];
    v7 = [v4 icon];

    v8 = [v4 quickActionTitle];
    v9 = sub_21DE08C18();
    v58 = v10;

    v59 = *(v0 + 224);
LABEL_6:
    v12 = [*(v0 + 144) value];
    v13 = sub_21DE08C18();
    v56 = v14;
    v57 = v13;

    if (v6 && (v15 = MEMORY[0x223D4A520](v6)) != 0)
    {
      v16 = v15;
      v17 = sub_21DE08C18();
      v54 = v18;
      v55 = v17;

      v60 = v7;
      v61 = v6;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v54 = 0;
      v55 = 0;
      v60 = v7;
      v61 = v6;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v19 = MEMORY[0x223D4A520](v7);
    if (v19)
    {
      v20 = v19;
      v21 = sub_21DE08C18();
      v23 = v22;

      v24 = v21;
LABEL_14:
      v25 = *(v0 + 208);
      v53 = *(v0 + 200);
      v26 = *(v0 + 192);
      v27 = *(v0 + 152);
      v28 = *(v0 + 160);
      v30 = *(v0 + 136);
      v29 = *(v0 + 144);
      v31 = *(v0 + 232);
      v33 = *(v0 + 120);
      v32 = *(v0 + 128);
      *v33 = *(v0 + 233);
      *(v33 + 8) = v9;
      *(v33 + 16) = v58;
      *(v33 + 24) = v57;
      *(v33 + 32) = v56;
      *(v33 + 40) = v55;
      *(v33 + 48) = v54;
      *(v33 + 56) = v31;
      *(v33 + 64) = v32;
      *(v33 + 72) = v30;
      *(v33 + 80) = v29;
      *(v33 + 88) = v27;
      *(v33 + 96) = v28;
      *(v33 + 104) = v26;
      *(v33 + 112) = v24;
      *(v33 + 120) = v23;
      *(v33 + 128) = v25;
      *(v33 + 136) = v29;
      *(v33 + 144) = 0;
      *(v33 + 152) = xmmword_21DE099A0;
      *(v33 + 168) = v28;
      *(v33 + 176) = v53;
      *(v33 + 184) = v27;
      v34 = type metadata accessor for SemanticDataDetectorActionable();
      v35 = *(v34 + 72);

      v36 = v29;

      v37 = v36;
      v38 = v26;
      v39 = v25;
      v40 = v53;
      sub_21DE089F8();

      (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
      goto LABEL_16;
    }

LABEL_13:
    v24 = 0;
    v23 = 0;
    goto LABEL_14;
  }

  v41 = *(v0 + 200);
  v39 = *(v0 + 208);
  v42 = *(v0 + 192);
  v44 = *(v0 + 160);
  v43 = *(v0 + 168);
  v45 = *(v0 + 152);
  v62 = *(v0 + 120);
  v46 = objc_opt_self();
  v47 = sub_21DE08BF8();
  v48 = [v46 __systemImageNamed_];

  v49 = type metadata accessor for SemanticDataDetectorActionable();
  (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
LABEL_16:

  v50 = *(v0 + 8);
  v51 = *MEMORY[0x277D85DE8];

  return v50();
}

uint64_t static SemanticDataDetectorActionGenerator.filter(results:referenceDate:)()
{
  v0 = objc_opt_self();
  sub_21DDFD4A0();
  v1 = sub_21DE08C78();
  v2 = sub_21DE089C8();
  v3 = [v0 filterResults:v1 forTypes:0xFFFFLL referenceDate:v2 referenceTimeZone:0];

  if (!v3)
  {
    sub_21DE08C88();
    v3 = sub_21DE08C78();
  }

  v4 = [objc_opt_self() filterResultsForQuickActions_];

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = sub_21DE08C88();

  return v5;
}

uint64_t SemanticDataDetectorActionGenerator.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

char *sub_21DDFD144(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E80, &qword_21DE09A80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_21DDFD248()
{
  result = qword_281222A20;
  if (!qword_281222A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281222A20);
  }

  return result;
}

size_t sub_21DDFD2C4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_21DDFD4A0()
{
  result = qword_2812229C8;
  if (!qword_2812229C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812229C8);
  }

  return result;
}

uint64_t sub_21DDFD528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21DDFD6F4(a1, a2);

  return sub_21DDFAFA8(a1 + 40, a2 + 40);
}

_OWORD *sub_21DDFD56C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_21DDFD6F4(*(v3 + 48) + 40 * v13, &v18);
    sub_21DDFAFA8(*(v3 + 56) + 32 * v13, v23);
    v24 = v18;
    v25 = v19;
    *&v26 = v20;
    result = sub_21DDFB008(v23, (&v26 + 8));
    v15 = *(&v25 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v17 = v1[5];
      v16 = v1[6];
      v18 = v24;
      *&v19 = v25;
      *(&v19 + 1) = v15;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17(&v18);
      return sub_21DDFD750(&v18, &qword_27CE90E70, &qword_21DE09A70);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21DDFD750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SemanticDataDetector.sortOrder.getter()
{
  v1 = *(v0 + 24);
  _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(&v3);
  if (v3 > 0xBuLL)
  {
    return 127;
  }

  else
  {
    return qword_21DE0AD18[v3];
  }
}

uint64_t sub_21DDFD800(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x72656E6E616373;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74786554776172;
    }

    else
    {
      v4 = 0x6D614E6567616D69;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C746974;
    }

    else
    {
      v4 = 0x72656E6E616373;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x74786554776172;
  if (a2 != 2)
  {
    v8 = 0x6D614E6567616D69;
    v7 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 0x656C746974;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DE08EE8();
  }

  return v11 & 1;
}

uint64_t sub_21DDFD944(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xD000000000000011;
  v5 = 0x800000021DE0ADA0;
  v6 = 0x6564724F74726F73;
  v7 = 0xE900000000000072;
  if (a1 != 4)
  {
    v6 = 0xD000000000000013;
    v7 = 0x800000021DE0ADC0;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x74786554776172;
  if (a1 != 1)
  {
    v9 = 0x676E6970756F7267;
    v8 = 0xEC00000061746144;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x800000021DE0ADA0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000072;
      if (v10 != 0x6564724F74726F73)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x800000021DE0ADC0;
      if (v10 != 0xD000000000000013)
      {
LABEL_34:
        v13 = sub_21DE08EE8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x74786554776172)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC00000061746144;
      if (v10 != 0x676E6970756F7267)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701869940)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_21DDFDB34()
{
  sub_21DE08F08();
  sub_21DE08C38();

  return sub_21DE08F48();
}

uint64_t sub_21DDFDC44()
{
  sub_21DE08F08();
  sub_21DE08C38();

  return sub_21DE08F48();
}

uint64_t SemanticDataDetectorType.sortOrder.getter()
{
  v1 = *v0;
  if (v1 > 0xB)
  {
    return 127;
  }

  else
  {
    return qword_21DE0AD18[v1];
  }
}

uint64_t SemanticDataDetector.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  sub_21DE08DB8();
  MEMORY[0x223D4A1B0](0xD00000000000001CLL, 0x800000021DE0AEE0);
  sub_21DE08E08();
  MEMORY[0x223D4A1B0](0xD000000000000011, 0x800000021DE0AF00);
  v3 = [v2 description];
  v4 = sub_21DE08C18();
  v6 = v5;

  MEMORY[0x223D4A1B0](v4, v6);

  return 0;
}

uint64_t static SemanticDataDetector.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  sub_21DDFA894(0, &qword_281222998, 0x277D82BB8);
  return sub_21DE08D18() & 1;
}

uint64_t SemanticDataDetector.rawText.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t DDScannerResult.sortOrder.getter()
{
  _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(&v1);
  if (v1 > 0xBuLL)
  {
    return 127;
  }

  else
  {
    return qword_21DE0AD18[v1];
  }
}

_BYTE *SemanticDataDetector.init(type:rawText:scannerResult:groupingData:unfilteredResults:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t SemanticDataDetector.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_21DE08F08();
  sub_21DE08D28();
  return sub_21DE08F48();
}

uint64_t sub_21DDFDFFC()
{
  v1 = *(v0 + 24);
  sub_21DE08F08();
  sub_21DE08D28();
  return sub_21DE08F48();
}

uint64_t sub_21DDFE064()
{
  v1 = *(v0 + 24);
  sub_21DE08F08();
  sub_21DE08D28();
  return sub_21DE08F48();
}

uint64_t sub_21DDFE0A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  sub_21DDFA894(0, &qword_281222998, 0x277D82BB8);
  return sub_21DE08D18() & 1;
}

void SemanticDataDetector.detectedEntity.getter(void *a1@<X8>)
{
  v130 = a1;
  v138 = *MEMORY[0x277D85DE8];
  v2 = sub_21DE08B38();
  v129 = *(v2 - 8);
  v3 = v129[8];
  MEMORY[0x28223BE20](v2);
  v5 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DE08998();
  v127 = *(v6 - 8);
  v7 = v127[8];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v116 - v11;
  v13 = sub_21DE08AC8();
  v121 = *(v13 - 8);
  v122 = v13;
  v14 = *(v121 + 64);
  MEMORY[0x28223BE20](v13);
  v120 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_21DE08B78();
  v118 = *(v119 - 8);
  v16 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E88, &qword_21DE09AB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v116 - v20;
  v22 = sub_21DE08AE8();
  v116 = *(v22 - 8);
  v23 = *(v116 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21DE08B18();
  v125 = *(v26 - 8);
  v126 = v26;
  v27 = *(v125 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v123 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v124 = &v116 - v30;
  v31 = v1[2];
  v128 = v1[1];
  v32 = v1[3];
  _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(&v135);
  if (v135 > 8u)
  {
    v40 = v129;
    if (v135 > 0xBu)
    {
LABEL_7:
      v41 = sub_21DE08B48();
      v42 = *(*(v41 - 8) + 56);
      v43 = *MEMORY[0x277D85DE8];
      v44 = v41;
      v45 = v130;

      v42(v45, 1, 1, v44);
      return;
    }

    if (v135 == 9)
    {
      v136 = v128;
      v137 = v31;

      v46 = v130;
      sub_21DE08B58();
      v47 = MEMORY[0x277D789B8];
      goto LABEL_26;
    }

    if (v135 == 10)
    {
      v134 = 0;
      v136 = 0;
      if ([v32 getPhysicalUnitValue:&v134 unit:&v136])
      {
        v48 = v136;
        if (!v136 || (v136 = 0, v137 = 0, v49 = v48, sub_21DE08C08(), !v137))
        {
        }

        v98 = v130;
        sub_21DE08AF8();
        v99 = *MEMORY[0x277D789D0];
        v100 = sub_21DE08B48();
        v101 = *(v100 - 8);
        (*(v101 + 104))(v98, v99, v100);
        (*(v101 + 56))(v98, 0, 1, v100);
LABEL_60:

        goto LABEL_27;
      }
    }

    else
    {
      v77 = v2;
      v134 = 0;
      v136 = 0;
      if ([v32 getMoneyAmount:&v134 currency:&v136])
      {
        v48 = v136;
        if (!v136 || (v136 = 0, v137 = 0, v78 = v48, sub_21DE08C08(), !v137))
        {
        }

        sub_21DE08B28();
        v102 = v130;
        (v40[4])(v130, v5, v77);
        v103 = *MEMORY[0x277D789E0];
        v104 = sub_21DE08B48();
        v105 = *(v104 - 8);
        (*(v105 + 104))(v102, v103, v104);
        (*(v105 + 56))(v102, 0, 1, v104);
        goto LABEL_60;
      }
    }

    v79 = sub_21DE08B48();
    (*(*(v79 - 8) + 56))(v130, 1, 1, v79);
    goto LABEL_27;
  }

  if (v135 <= 3u)
  {
    if (v135 > 1u)
    {
      if (v135 != 2)
      {
        v136 = 0;
        v134 = 0;
        [v32 getTrackingNumber:&v136 carrier:&v134];
        v72 = v134;
        v73 = v136;
        if (v136)
        {
          v136 = 0;
          v137 = 0;
          v74 = v73;
          v75 = v72;
          v76 = v74;
          sub_21DE08C08();

          if (v137)
          {
            v128 = v136;
          }

          else
          {
          }
        }

        else
        {

          v96 = v72;
        }

        if (!v72 || (v136 = 0, v137 = 0, sub_21DE08C08(), v72, !v137))
        {
        }

        v106 = v117;
        sub_21DE08B68();
        v107 = v130;
        (*(v118 + 32))(v130, v106, v119);
        v108 = *MEMORY[0x277D78A00];
        v109 = sub_21DE08B48();
        v110 = *(v109 - 8);
        (*(v110 + 104))(v107, v108, v109);
        (*(v110 + 56))(v107, 0, 1, v109);

        goto LABEL_27;
      }

      (v127[7])(v21, 1, 1, v6);

      sub_21DE08AD8();
      v46 = v130;
      (*(v116 + 32))(v130, v25, v22);
      v47 = MEMORY[0x277D789C8];
      goto LABEL_26;
    }

    if (!v135)
    {
      v136 = v128;
      v137 = v31;

      v46 = v130;
      sub_21DE08B58();
      v47 = MEMORY[0x277D789A8];
LABEL_26:
      v55 = *v47;
      v56 = sub_21DE08B48();
      v57 = *(v56 - 8);
      (*(v57 + 104))(v46, v55, v56);
      (*(v57 + 56))(v46, 0, 1, v56);
      goto LABEL_27;
    }

    v136 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    [v32 getStreet:&v136 city:&v134 state:&v133 zip:&v132 country:&v131];
    v59 = v132;
    v60 = v133;
    v61 = v134;
    v62 = v136;
    v128 = v136;
    v129 = v131;
    if (v136)
    {
      v136 = 0;
      v137 = 0;
      v63 = v62;
      v64 = v129;
      v65 = v59;
      v66 = v60;
      v67 = v61;
      v68 = v63;
      sub_21DE08C08();

      v69 = v136;
      if (!v137)
      {
        v69 = 0;
      }

      v127 = v69;
      if (v61)
      {
LABEL_32:
        v136 = 0;
        v137 = 0;
        sub_21DE08C08();

        v70 = v136;
        if (!v137)
        {
          v70 = 0;
        }

        v122 = v70;
        if (v60)
        {
LABEL_35:
          v136 = 0;
          v137 = 0;
          sub_21DE08C08();

          if (v59)
          {
            goto LABEL_36;
          }

          goto LABEL_52;
        }

LABEL_51:
        if (v59)
        {
LABEL_36:
          v136 = 0;
          v137 = 0;
          sub_21DE08C08();

          if (!v129)
          {
LABEL_53:
            v89 = v124;
            sub_21DE08B08();
            v91 = v125;
            v90 = v126;
            (*(v125 + 16))(v123, v89, v126);
            v92 = v130;
            sub_21DE08B58();
            (*(v91 + 8))(v89, v90);
            v93 = *MEMORY[0x277D789D8];
            v94 = sub_21DE08B48();
            v95 = *(v94 - 8);
            (*(v95 + 104))(v92, v93, v94);
            (*(v95 + 56))(v92, 0, 1, v94);

            goto LABEL_27;
          }

LABEL_37:
          v136 = 0;
          v137 = 0;
          v71 = v129;
          sub_21DE08C08();

          goto LABEL_53;
        }

LABEL_52:
        if (!v129)
        {
          goto LABEL_53;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v85 = v129;
      v86 = v59;
      v87 = v60;
      v88 = v61;
      v127 = 0;
      if (v61)
      {
        goto LABEL_32;
      }
    }

    v122 = 0;
    if (v60)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  if (v135 - 6 < 3)
  {
    v33 = [v32 url];
    if (v33)
    {
      v34 = v33;
      sub_21DE08988();

      v35 = v127[4];
      v35(v12, v10, v6);
      v36 = v130;
      v35(v130, v12, v6);
      v37 = *MEMORY[0x277D78A08];
      v38 = sub_21DE08B48();
      v39 = *(v38 - 8);
      (*(v39 + 104))(v36, v37, v38);
      (*(v39 + 56))(v36, 0, 1, v38);
LABEL_27:
      v58 = *MEMORY[0x277D85DE8];
      return;
    }

    goto LABEL_7;
  }

  if (v135 == 4)
  {
    v136 = 0;
    v134 = 0;
    [v32 getFlightNumber:&v136 airline:&v134];
    v50 = v134;
    v51 = v136;
    if (v136)
    {
      v136 = 0;
      v137 = 0;
      v52 = v51;
      v53 = v50;
      v54 = v52;
      sub_21DE08C08();

      if (!v137)
      {
      }
    }

    else
    {

      v97 = v50;
    }

    if (!v50 || (v136 = 0, v137 = 0, sub_21DE08C08(), v50, !v137))
    {
    }

    v111 = v120;
    sub_21DE08AB8();
    v112 = v130;
    (*(v121 + 32))(v130, v111, v122);
    v113 = *MEMORY[0x277D789C0];
    v114 = sub_21DE08B48();
    v115 = *(v114 - 8);
    (*(v115 + 104))(v112, v113, v114);
    (*(v115 + 56))(v112, 0, 1, v114);

    goto LABEL_27;
  }

  v80 = v130;
  *v130 = v128;
  v80[1] = v31;
  v81 = *MEMORY[0x277D789F8];
  v82 = sub_21DE08B48();
  v83 = *(v82 - 8);
  (*(v83 + 104))(v80, v81, v82);
  (*(v83 + 56))(v80, 0, 1, v82);
  v84 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21DDFF128()
{
  *v0;
  *v0;
  *v0;
  sub_21DE08C38();
}

uint64_t sub_21DDFF228@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21DE06834();
  *a2 = result;
  return result;
}

void sub_21DDFF258(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xD000000000000011;
  v6 = 0x800000021DE0ADA0;
  v7 = 0xE900000000000072;
  v8 = 0x6564724F74726F73;
  if (v2 != 4)
  {
    v8 = 0xD000000000000013;
    v7 = 0x800000021DE0ADC0;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x74786554776172;
  if (v2 != 1)
  {
    v10 = 0x676E6970756F7267;
    v9 = 0xEC00000061746144;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_21DDFF320()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000011;
  v4 = 0x6564724F74726F73;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74786554776172;
  if (v1 != 1)
  {
    v5 = 0x676E6970756F7267;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_21DDFF3E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21DE06834();
  *a1 = result;
  return result;
}

uint64_t sub_21DDFF418(uint64_t a1)
{
  v2 = sub_21DE00F40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DDFF454(uint64_t a1)
{
  v2 = sub_21DE00F40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SemanticDataDetector.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E90, &qword_21DE09AB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE00F40();
  sub_21DE08F58();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v24 = 5;
  sub_21DDFA344();
  sub_21DE08E98();
  v12 = v21;
  v11 = v22;
  sub_21DDFA894(0, &qword_27CE90DE0, 0x277CCAAC8);
  sub_21DDFA894(0, &qword_2812229C8, 0x277D04218);
  v20 = sub_21DE08D08();
  v24 = 0;
  sub_21DE00F94();
  sub_21DE08E98();
  v23 = v21;
  LOBYTE(v21) = 1;
  result = sub_21DE08E88();
  v18 = result;
  v19 = v14;
  if (v20)
  {
    v17 = *(v6 + 8);
    v15 = v20;
    v17(v9, v5);
    sub_21DDFA398(v12, v11);

    *a2 = v23;
    v16 = v19;
    *(a2 + 8) = v18;
    *(a2 + 16) = v16;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = v15;
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __break(1u);
  return result;
}

uint64_t SemanticDataDetector.encode(to:)(void *a1)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EA8, &qword_21DE09AC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v24 = *(v1 + 2);
  v25 = v10;
  v23 = *(v1 + 3);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE00F40();
  sub_21DE08F68();
  LOBYTE(v27[0]) = v9;
  v26 = 0;
  sub_21DE00FE8();
  sub_21DE08ED8();
  if (v2)
  {
    result = (*(v5 + 8))(v8, v4);
  }

  else
  {
    v13 = v23;
    LOBYTE(v27[0]) = 1;
    sub_21DE08EC8();
    v14 = objc_opt_self();
    v27[0] = 0;
    v15 = [v14 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v27];
    v16 = v27[0];
    if (v15)
    {
      v17 = sub_21DE089A8();
      v19 = v18;

      v27[0] = v17;
      v27[1] = v19;
      v26 = 5;
      sub_21DDFA4B8();
      sub_21DE08ED8();
      (*(v5 + 8))(v8, v4);
      result = sub_21DDFA398(v17, v19);
    }

    else
    {
      v20 = v16;
      sub_21DE08978();

      swift_willThrow();
      result = (*(v5 + 8))(v8, v4);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CROutputRegion.createGroupingData()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F98];
  v1 = *MEMORY[0x277D04360];
  v2 = sub_21DE08C18();
  v4 = v3;
  v5 = *MEMORY[0x277D04370];
  v6 = sub_21DE08C18();
  v8 = v7;
  v9 = *MEMORY[0x277D04368];
  v10 = sub_21DE08C18();
  v12 = v11;
  v13 = *MEMORY[0x277D04350];
  v14 = sub_21DE08C18();
  v16 = v15;
  v17 = swift_allocObject();
  v17[2] = v2;
  v17[3] = v4;
  v17[4] = v6;
  v17[5] = v8;
  v17[6] = v10;
  v17[7] = v12;
  v17[8] = v22;
  v17[9] = v14;
  v17[10] = v16;
  v17[11] = v0;
  aBlock[4] = sub_21DE0103C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21DE00278;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);
  v19 = v22;

  [v19 enumerateContentsWithTypes:4096 usingBlock:v18];
  _Block_release(v18);
  swift_beginAccess();
  v20 = *(v0 + 16);

  return v20;
}

uint64_t sub_21DDFFC38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v20 = result;
    v77 = a3;
    v78 = a4;
    v81 = a7;
    v75 = a11;
    v74 = a10;
    v82 = a1;
    v21 = [v20 dataDetectorsOutputRegions];
    sub_21DDFA894(0, &qword_2812229B0, 0x277D70070);
    v22 = sub_21DE08C88();

    *&v87 = MEMORY[0x277D84F90];
    v83 = a8;
    v79 = a5;
    v80 = a6;
    v76 = v20;
    v23 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v22 >> 62)
    {
LABEL_50:
      v24 = sub_21DE08E18();
    }

    else
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = 0;
    v85 = MEMORY[0x277D84F90];
    while (v24 != v25)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x223D4A330](v25, v22);
      }

      else
      {
        if (v25 >= *(v23 + 16))
        {
          goto LABEL_45;
        }

        v26 = *(v22 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v29 = [v26 ddResult];

      ++v25;
      if (v29)
      {
        MEMORY[0x223D4A1D0]();
        if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v30 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21DE08C98();
        }

        sub_21DE08CA8();
        v85 = v87;
        v25 = v28;
      }
    }

    v31 = [v82 text];
    if (v31)
    {
      v32 = v31;
      v22 = sub_21DE08C18();
      v34 = v33;
    }

    else
    {
      v22 = 0;
      v34 = 0;
    }

    v35 = [v76 groupType];
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E18, &qword_21DE09680);
    *&v87 = v85;
    sub_21DDFB008(&v87, v86);

    v36 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21DE06534(v86, v77, v78, isUniquelyReferenced_nonNull_native);
    v89 = v36;
    if (v34)
    {
      v88 = MEMORY[0x277D837D0];
      *&v87 = v22;
      *(&v87 + 1) = v34;
      sub_21DDFB008(&v87, v86);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      sub_21DE06534(v86, v79, v80, v38);
    }

    else
    {
      sub_21DE051A8(v79, v80, &v87);
      sub_21DDFD750(&v87, &qword_27CE911D8, &qword_21DE0ACF0);
      v36 = v89;
    }

    type metadata accessor for CRDataDetectorsGroupType(0);
    v88 = v39;
    *&v87 = v35;
    sub_21DDFB008(&v87, v86);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    sub_21DE06534(v86, v81, v83, v40);
    v23 = v36;
    v89 = v36;
    v41 = [a9 recognizedLocale];
    if (v41)
    {
      v42 = v41;
      v43 = sub_21DE08C18();
      v45 = v44;

      if ([a9 confidence] == 2)
      {
        v88 = MEMORY[0x277D837D0];
        *&v87 = v43;
        *(&v87 + 1) = v45;
        sub_21DDFB008(&v87, v86);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        sub_21DE06534(v86, v74, v75, v46);
      }

      else
      {
      }
    }

    v47 = v85;
    if (v85 >> 62)
    {
      v73 = sub_21DE08E18();
      v47 = v85;
      v48 = v73;
      if (v73)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v48 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
LABEL_27:
        v49 = 0;
        v83 = v47 & 0xFFFFFFFFFFFFFF8;
        a9 = (v47 & 0xC000000000000001);
        do
        {
          if (a9)
          {
            v52 = MEMORY[0x223D4A330](v49);
          }

          else
          {
            if (v49 >= *(v83 + 16))
            {
              goto LABEL_49;
            }

            v52 = *(v47 + 8 * v49 + 32);
          }

          v53 = v52;
          v54 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            goto LABEL_46;
          }

          v22 = [v52 range];
          v56 = v55;
          swift_beginAccess();
          v57 = v23;

          v58 = *(a12 + 16);
          v23 = swift_isUniquelyReferenced_nonNull_native();
          *&v86[0] = *(a12 + 16);
          v59 = *&v86[0];
          *(a12 + 16) = 0x8000000000000000;
          v60 = sub_21DE05290(v22, v56);
          v62 = *(v59 + 16);
          v63 = (v61 & 1) == 0;
          v64 = __OFADD__(v62, v63);
          v65 = v62 + v63;
          if (v64)
          {
            goto LABEL_47;
          }

          v66 = v61;
          if (*(v59 + 24) >= v65)
          {
            if ((v23 & 1) == 0)
            {
              v72 = v60;
              sub_21DE05D3C();
              v60 = v72;
            }
          }

          else
          {
            sub_21DE05640(v65, v23);
            v60 = sub_21DE05290(v22, v56);
            if ((v66 & 1) != (v67 & 1))
            {
              type metadata accessor for _NSRange(0);
              result = sub_21DE08EF8();
              __break(1u);
              return result;
            }
          }

          v23 = v57;
          v68 = *&v86[0];
          if (v66)
          {
            v50 = *(*&v86[0] + 56);
            v51 = *(v50 + 8 * v60);
            *(v50 + 8 * v60) = v57;
          }

          else
          {
            *(*&v86[0] + 8 * (v60 >> 6) + 64) |= 1 << v60;
            v69 = (v68[6] + 16 * v60);
            *v69 = v22;
            v69[1] = v56;
            *(v68[7] + 8 * v60) = v57;
            v70 = v68[2];
            v64 = __OFADD__(v70, 1);
            v71 = v70 + 1;
            if (v64)
            {
              goto LABEL_48;
            }

            v68[2] = v71;
          }

          *(a12 + 16) = v68;
          swift_endAccess();

          ++v49;
          v47 = v85;
        }

        while (v54 != v48);
      }
    }
  }

  return result;
}

void sub_21DE00278(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void *Date.futureReferenceDates.getter()
{
  v0 = sub_21DE089E8();
  v48 = *(v0 - 8);
  v1 = *(v48 + 64);
  MEMORY[0x28223BE20](v0);
  v51 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EB8, &qword_21DE09AC8);
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v44);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = v39 - v8;
  v46 = sub_21DE08A48();
  v9 = *(v46 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v46);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DE08A58();
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = *(v42 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DE08A38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EC0, &qword_21DE09AD0);
  v17 = *(v3 + 72);
  v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v39[1] = 2 * v17;
  v40 = swift_allocObject();
  v47 = v40 + v18;
  v19 = *MEMORY[0x277CC9968];
  v39[0] = v9[13];
  v20 = v46;
  (v39[0])(v12, v19, v46);
  sub_21DE08A28();
  v21 = v9[1];
  v45 = v9 + 1;
  v21(v12, v20);
  v22 = v20;
  v23 = v39[0];
  (v39[0])(v12, *MEMORY[0x277CC9998], v22);
  v49 = v17;
  v24 = v47;
  sub_21DE08A28();
  v25 = v46;
  v21(v12, v46);
  v23(v12, *MEMORY[0x277CC9988], v25);
  v26 = v24;
  v41 = v16;
  sub_21DE08A28();
  v21(v12, v25);
  v27 = (v48 + 48);
  v28 = (v48 + 32);
  v29 = MEMORY[0x277D84F90];
  v30 = 3;
  v31 = v26;
  v32 = v0;
  do
  {
    v33 = v50;
    sub_21DE01090(v31, v50);
    sub_21DE01100(v33, v7);
    if ((*v27)(v7, 1, v0) == 1)
    {
      sub_21DDFD750(v7, &qword_27CE90EB8, &qword_21DE09AC8);
    }

    else
    {
      v34 = *v28;
      (*v28)(v51, v7, v0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_21DDFD29C(0, v29[2] + 1, 1, v29);
      }

      v36 = v29[2];
      v35 = v29[3];
      if (v36 >= v35 >> 1)
      {
        v29 = sub_21DDFD29C(v35 > 1, v36 + 1, 1, v29);
      }

      v29[2] = v36 + 1;
      v37 = v29 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v36;
      v0 = v32;
      v34(v37, v51, v32);
    }

    v31 += v49;
    --v30;
  }

  while (v30);
  (*(v42 + 8))(v41, v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v29;
}

void _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(_BYTE *a1@<X8>)
{
  v3 = [v1 category] - 2;
  if (v3 < 6 && ((0x27u >> v3) & 1) != 0)
  {
    v4 = 0xD0101020100uLL >> (8 * v3);
  }

  else
  {
    v5 = [v1 type];
    if (!v5)
    {
      sub_21DE08C18();
      v5 = sub_21DE08BF8();
    }

    v6 = *MEMORY[0x277D040D0];
    if (*MEMORY[0x277D040D0])
    {
      type metadata accessor for CFString(0);
      sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString);
      v7 = v5;
      v8 = v6;
      v9 = sub_21DE08A78();

      if (v9)
      {

        LOBYTE(v4) = 4;
        goto LABEL_40;
      }
    }

    else
    {
      v10 = v5;
    }

    v11 = *MEMORY[0x277D041B0];
    if (*MEMORY[0x277D041B0] && (type metadata accessor for CFString(0), sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString), v12 = v5, v13 = v11, v14 = sub_21DE08A78(), v13, v12, (v14 & 1) != 0))
    {

      LOBYTE(v4) = 3;
    }

    else
    {
      v15 = *MEMORY[0x277D04158];
      if (*MEMORY[0x277D04158] && (type metadata accessor for CFString(0), sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString), v16 = v5, v17 = v15, v18 = sub_21DE08A78(), v17, v16, (v18 & 1) != 0))
      {

        LOBYTE(v4) = 5;
      }

      else
      {
        v19 = *MEMORY[0x277D04138];
        if (*MEMORY[0x277D04138])
        {
          type metadata accessor for CFString(0);
          sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString);
          v20 = v5;
          v21 = v19;
          v22 = sub_21DE08A78();

          if (v22)
          {
            goto LABEL_18;
          }
        }

        v23 = *MEMORY[0x277D040F8];
        if (*MEMORY[0x277D040F8])
        {
          type metadata accessor for CFString(0);
          sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString);
          v24 = v5;
          v25 = v23;
          v26 = sub_21DE08A78();

          if (v26)
          {
            goto LABEL_23;
          }
        }

        v27 = *MEMORY[0x277D041C8];
        if (*MEMORY[0x277D041C8])
        {
          type metadata accessor for CFString(0);
          sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString);
          v24 = v5;
          v28 = v27;
          v29 = sub_21DE08A78();

          if (v29)
          {
LABEL_23:

            LOBYTE(v4) = 6;
            goto LABEL_40;
          }
        }

        v30 = *MEMORY[0x277D04130];
        if (*MEMORY[0x277D04130])
        {
          type metadata accessor for CFString(0);
          sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString);
          v31 = v5;
          v32 = v30;
          v33 = sub_21DE08A78();

          if (v33)
          {

            LOBYTE(v4) = 7;
            goto LABEL_40;
          }
        }

        v34 = *MEMORY[0x277D040F0];
        if (!*MEMORY[0x277D040F0])
        {
          goto LABEL_29;
        }

        type metadata accessor for CFString(0);
        sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString);
        v20 = v5;
        v35 = v34;
        v36 = sub_21DE08A78();

        if (v36)
        {
LABEL_18:

          LOBYTE(v4) = 8;
        }

        else
        {
LABEL_29:
          v37 = *MEMORY[0x277D040C8];
          if (*MEMORY[0x277D040C8] && (type metadata accessor for CFString(0), sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString), v38 = v5, v39 = v37, v40 = sub_21DE08A78(), v39, v38, (v40 & 1) != 0))
          {

            LOBYTE(v4) = 9;
          }

          else
          {
            v41 = *MEMORY[0x277D04168];
            if (!*MEMORY[0x277D04168] || (type metadata accessor for CFString(0), sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString), v42 = v5, v43 = v41, v44 = sub_21DE08A78(), v43, v42, (v44 & 1) == 0))
            {
              v45 = *MEMORY[0x277D04140];
              v46 = *MEMORY[0x277D04140];

              if (v45)
              {
                type metadata accessor for CFString(0);
                sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString);
                v47 = sub_21DE08A78();

                if (v47)
                {
                  LOBYTE(v4) = 11;
                  goto LABEL_40;
                }
              }

              else
              {
              }

              LOBYTE(v4) = 15;
              goto LABEL_40;
            }

            LOBYTE(v4) = 10;
          }
        }
      }
    }
  }

LABEL_40:
  *a1 = v4;
}

unint64_t sub_21DE00F40()
{
  result = qword_27CE90E98;
  if (!qword_27CE90E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90E98);
  }

  return result;
}

unint64_t sub_21DE00F94()
{
  result = qword_27CE90EA0;
  if (!qword_27CE90EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90EA0);
  }

  return result;
}

unint64_t sub_21DE00FE8()
{
  result = qword_27CE90EB0;
  if (!qword_27CE90EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90EB0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21DE01090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EB8, &qword_21DE09AC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DE01100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EB8, &qword_21DE09AC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DDScannerResult.extractDate(referenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v70 = a2;
  v81 = *MEMORY[0x277D85DE8];
  v3 = sub_21DE089E8();
  v79 = *(v3 - 8);
  v4 = *(v79 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v66 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v77 = &v66 - v11;
  MEMORY[0x28223BE20](v10);
  v75 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EB8, &qword_21DE09AC8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;
  v80 = 0;
  v78 = v2;
  v23 = [v2 type];
  v24 = sub_21DE08C18();
  if (!*MEMORY[0x277D040A8])
  {
LABEL_33:
    __break(1u);
  }

  v26 = v24;
  v27 = v25;

  if (v26 != sub_21DE08C18() || v27 != v28)
  {
    v29 = sub_21DE08EE8();

    if (v29)
    {
      goto LABEL_6;
    }

    v42 = [v78 type];
    result = sub_21DE08C18();
    if (!*MEMORY[0x277D040B0])
    {
      __break(1u);
      return result;
    }

    v45 = result;
    v46 = v44;

    if (v45 != sub_21DE08C18() || v46 != v47)
    {
      v48 = sub_21DE08EE8();

      if ((v48 & 1) == 0)
      {
        v49 = *(v79 + 56);
        v50 = *MEMORY[0x277D85DE8];
        v51 = v70;

        return v49(v51, 1, 1, v3);
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  v30 = sub_21DE089C8();
  v31 = [v78 dateFromReferenceDate:v30 referenceTimezone:0 timezoneRef:0 allDayRef:&v80];

  if (v31)
  {
    sub_21DE089D8();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = v17;
  v67 = *(v79 + 56);
  v68 = v79 + 56;
  v67(v20, v32, 1, v3);
  sub_21DE01100(v20, v22);
  sub_21DE01090(v22, v17);
  v34 = (*(v79 + 48))(v17, 1, v3);
  v76 = v3;
  if (v34 == 1)
  {
    v69 = v22;
    v35 = v9;
    sub_21DDFD750(v17, &qword_27CE90EB8, &qword_21DE09AC8);
  }

  else
  {
    v36 = v70;
    v37 = *(v79 + 32);
    v38 = v75;
    v37(v75, v33, v3);
    sub_21DE089B8();
    if (v39 > 0.0)
    {
      sub_21DDFD750(v22, &qword_27CE90EB8, &qword_21DE09AC8);
      v37(v36, v38, v3);
      v40 = v36;
      v41 = v3;
      goto LABEL_30;
    }

    v69 = v22;
    v35 = v9;
    (*(v79 + 8))(v38, v3);
  }

  v52 = Date.futureReferenceDates.getter();
  v53 = v79;
  v75 = v52[2];
  if (!v75)
  {
LABEL_28:

    result = sub_21DE01100(v69, v70);
    goto LABEL_31;
  }

  v54 = 0;
  v74 = v52 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
  v73 = v79 + 16;
  v55 = (v79 + 32);
  v56 = v76;
  while (1)
  {
    if (v54 >= v52[2])
    {
      __break(1u);
      goto LABEL_33;
    }

    v57 = v77;
    (*(v53 + 16))(v77, &v74[*(v53 + 72) * v54], v56);
    v58 = sub_21DE089C8();
    v59 = *(v79 + 8);
    v59(v57, v56);
    v60 = [v78 dateFromReferenceDate:v58 referenceTimezone:0 timezoneRef:0 allDayRef:&v80];

    if (v60)
    {
      break;
    }

LABEL_23:
    ++v54;
    v53 = v79;
    if (v75 == v54)
    {
      goto LABEL_28;
    }
  }

  v61 = v71;
  sub_21DE089D8();

  v62 = *v55;
  (*v55)(v35, v61, v56);
  sub_21DE089B8();
  if (v63 <= 0.0)
  {
    v59(v35, v56);
    goto LABEL_23;
  }

  sub_21DDFD750(v69, &qword_27CE90EB8, &qword_21DE09AC8);

  v64 = v70;
  v62(v70, v35, v56);
  v40 = v64;
  v41 = v56;
LABEL_30:
  result = (v67)(v40, 0, 1, v41);
LABEL_31:
  v65 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DDScannerResult.extractDateComponents(referenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v72 = a1;
  v81[8] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EC8, &qword_21DE09AD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90ED0, &qword_21DE09AE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v64 - v10;
  v11 = sub_21DE08968();
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v11);
  v71 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_21DE08A58();
  v69 = *(v70 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v78 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DE089E8();
  v73 = *(v16 - 8);
  v74 = v16;
  v17 = *(v73 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v75 = &v64 - v21;
  v22 = [v2 type];
  if (!v22)
  {
    sub_21DE08C18();
    v22 = sub_21DE08BF8();
  }

  v80 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90ED8, &qword_21DE09AE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DE09A90;
  v24 = *MEMORY[0x277D040A8];
  *(inited + 32) = *MEMORY[0x277D040A8];
  v25 = *MEMORY[0x277D04198];
  v26 = *MEMORY[0x277D040B0];
  *(inited + 40) = *MEMORY[0x277D04198];
  *(inited + 48) = v26;
  v81[0] = v22;
  MEMORY[0x28223BE20](inited);
  v62 = v81;
  v28 = v27;
  v79 = v22;
  v68 = v24;
  v65 = v25;
  v29 = sub_21DE0264C(sub_21DE06814, &v60, inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EE0, &qword_21DE09AF0);
  swift_arrayDestroy();
  if (v29)
  {
    v30 = sub_21DE089C8();
    v31 = [v3 dateFromReferenceDate:v30 referenceTimezone:0 timezoneRef:0 allDayRef:&v80];

    if (v31)
    {
      v72 = a2;
      sub_21DE089D8();

      (*(v73 + 32))(v75, v20, v74);
      sub_21DE08A38();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EE8, &qword_21DE09AF8);
      v32 = sub_21DE08A48();
      v33 = *(v32 - 8);
      v34 = *(v33 + 72);
      v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_21DE09AA0;
      v37 = v36 + v35;
      v38 = *(v33 + 104);
      v38(v37, *MEMORY[0x277CC9988], v32);
      v38(v37 + v34, *MEMORY[0x277CC9998], v32);
      v38(v37 + 2 * v34, *MEMORY[0x277CC9968], v32);
      v38(v37 + 3 * v34, *MEMORY[0x277CC9980], v32);
      v38(v37 + 4 * v34, *MEMORY[0x277CC99A0], v32);
      sub_21DE06880(v36);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v39 = v71;
      sub_21DE08A18();

      v40 = v79;
      if (v24)
      {
        type metadata accessor for CFString(0);
        sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString);
        v41 = v68;
        v42 = sub_21DE08A78();

        if (v42)
        {

          v43 = v69;
          v44 = v66;
          v45 = v70;
          (*(v69 + 16))(v66, v78, v70);
          (*(v43 + 56))(v44, 0, 1, v45);
          v46 = sub_21DE08A68();
          (*(*(v46 - 8) + 56))(v67, 1, 1, v46);
          v68 = sub_21DE08928();
          v65 = sub_21DE08938();
          sub_21DE08908();
          v63 = 1;
          v62 = 0;
          v61 = 1;
          v60 = 0;
          a2 = v72;
          sub_21DE08958();

          v48 = v76;
          v47 = v77;
          (*(v76 + 8))(v39, v77);
          (*(v43 + 8))(v78, v45);
LABEL_12:
          (*(v73 + 8))(v75, v74);
LABEL_15:
          v51 = v47;
          v50 = 0;
          goto LABEL_16;
        }
      }

      a2 = v72;
      if (v25)
      {
        type metadata accessor for CFString(0);
        sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString);
        v52 = v65;
        v53 = sub_21DE08A78();

        if (v53)
        {
          v54 = v69;
          v55 = v66;
          v56 = v70;
          (*(v69 + 16))(v66, v78, v70);
          (*(v54 + 56))(v55, 0, 1, v56);
          v57 = sub_21DE08A68();
          (*(*(v57 - 8) + 56))(v67, 1, 1, v57);
          sub_21DE08918();
          sub_21DE08948();
          v63 = 1;
          v62 = 0;
          v61 = 1;
          v60 = 0;
          sub_21DE08958();

          v48 = v76;
          v47 = v77;
          (*(v76 + 8))(v39, v77);
          (*(v54 + 8))(v78, v56);
          goto LABEL_12;
        }
      }

      else
      {
      }

      (*(v69 + 8))(v78, v70);
      (*(v73 + 8))(v75, v74);
      v48 = v76;
      v47 = v77;
      (*(v76 + 32))(a2, v39, v77);
      goto LABEL_15;
    }
  }

  v49 = v79;

  v50 = 1;
  v48 = v76;
  v51 = v77;
LABEL_16:
  result = (*(v48 + 56))(a2, v50, 1, v51);
  v59 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SemanticDataDetectorType.vlType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 == 6)
  {
    v4 = MEMORY[0x277D796F0];
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = MEMORY[0x277D796F8];
    goto LABEL_7;
  }

  if (!*v1)
  {
    v4 = MEMORY[0x277D796E8];
LABEL_7:
    v5 = *v4;
    v6 = sub_21DE08AA8();
    v13 = *(v6 - 8);
    (*(v13 + 104))(a1, v5, v6);
    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v6;
    goto LABEL_9;
  }

  v11 = sub_21DE08AA8();
  v7 = *(*(v11 - 8) + 56);
  v10 = v11;
  v8 = a1;
  v9 = 1;
LABEL_9:

  return v7(v8, v9, 1, v10);
}

unint64_t SemanticDataDetectorType.defaultSystemImageName.getter()
{
  result = 0;
  switch(*v0)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0x676E697070696873;
      break;
    case 4:
      result = 0x656E616C70726961;
      break;
    case 5:
      result = 6650213;
      break;
    case 6:
      result = 0x697261666173;
      break;
    case 7:
    case 9:
      result = 0x65706F6C65766E65;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 0xA:
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0x65646F637271;
      break;
    case 0xD:
      result = 0x6E6F73726570;
      break;
    case 0xE:
      result = 0xD000000000000018;
      break;
    case 0xF:
      return result;
    default:
      result = 0x656E6F6870;
      break;
  }

  return result;
}

Swift::Bool __swiftcall SemanticDataDetectorType.isMember(of:)(Swift::OpaquePointer of)
{
  v2 = *(of._rawValue + 2);
  v3 = of._rawValue + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != *v1);
  return v4 != 0;
}

uint64_t sub_21DE0264C(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

unint64_t sub_21DE026F0(char a1)
{
  result = 0x6D754E656E6F6870;
  switch(a1)
  {
    case 1:
      result = 0x73736572646461;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x754E746867696C66;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x4C5255626577;
      break;
    case 7:
      result = 0x4C52556C69616DLL;
      break;
    case 8:
      result = 0x55636972656E6567;
      break;
    case 9:
      result = 0x6C69616D65;
      break;
    case 10:
      result = 0x6C61636973796870;
      break;
    case 11:
      result = 0x79656E6F6DLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x614E7265706F7270;
      break;
    case 14:
      result = 0x65646F43707061;
      break;
    case 15:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21DE028D8(uint64_t a1)
{
  v2 = sub_21DE0708C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02914(uint64_t a1)
{
  v2 = sub_21DE0708C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02950(uint64_t a1)
{
  v2 = sub_21DE06C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE0298C(uint64_t a1)
{
  v2 = sub_21DE06C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE029C8(uint64_t a1)
{
  v2 = sub_21DE07038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02A04(uint64_t a1)
{
  v2 = sub_21DE07038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE0835C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE02A7C(uint64_t a1)
{
  v2 = sub_21DE06BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02AB8(uint64_t a1)
{
  v2 = sub_21DE06BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02AF4(uint64_t a1)
{
  v2 = sub_21DE06DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02B30(uint64_t a1)
{
  v2 = sub_21DE06DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02B6C(uint64_t a1)
{
  v2 = sub_21DE06F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02BA8(uint64_t a1)
{
  v2 = sub_21DE06F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02BE4(uint64_t a1)
{
  v2 = sub_21DE06E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02C20(uint64_t a1)
{
  v2 = sub_21DE06E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02C5C(uint64_t a1)
{
  v2 = sub_21DE06F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02C98(uint64_t a1)
{
  v2 = sub_21DE06F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02CD4(uint64_t a1)
{
  v2 = sub_21DE06CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02D10(uint64_t a1)
{
  v2 = sub_21DE06CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02D4C(uint64_t a1)
{
  v2 = sub_21DE06E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02D88(uint64_t a1)
{
  v2 = sub_21DE06E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02DC4(uint64_t a1)
{
  v2 = sub_21DE06D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02E00(uint64_t a1)
{
  v2 = sub_21DE06D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02E3C(uint64_t a1)
{
  v2 = sub_21DE070E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02E78(uint64_t a1)
{
  v2 = sub_21DE070E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02EB4(uint64_t a1)
{
  v2 = sub_21DE06D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02EF0(uint64_t a1)
{
  v2 = sub_21DE06D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02F2C(uint64_t a1)
{
  v2 = sub_21DE06C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02F68(uint64_t a1)
{
  v2 = sub_21DE06C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02FA4(uint64_t a1)
{
  v2 = sub_21DE06FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02FE0(uint64_t a1)
{
  v2 = sub_21DE06FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE0301C(uint64_t a1)
{
  v2 = sub_21DE06BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE03058(uint64_t a1)
{
  v2 = sub_21DE06BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE03094(uint64_t a1)
{
  v2 = sub_21DE06EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE030D0(uint64_t a1)
{
  v2 = sub_21DE06EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SemanticDataDetectorType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EF0, &qword_21DE09B00);
  v112 = *(v4 - 8);
  v113 = v4;
  v5 = *(v112 + 64);
  MEMORY[0x28223BE20](v4);
  v111 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EF8, &qword_21DE09B08);
  v109 = *(v7 - 8);
  v110 = v7;
  v8 = *(v109 + 64);
  MEMORY[0x28223BE20](v7);
  v108 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F00, &qword_21DE09B10);
  v106 = *(v10 - 8);
  v107 = v10;
  v11 = *(v106 + 64);
  MEMORY[0x28223BE20](v10);
  v105 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F08, &qword_21DE09B18);
  v103 = *(v13 - 8);
  v104 = v13;
  v14 = *(v103 + 64);
  MEMORY[0x28223BE20](v13);
  v102 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F10, &qword_21DE09B20);
  v100 = *(v16 - 8);
  v101 = v16;
  v17 = *(v100 + 64);
  MEMORY[0x28223BE20](v16);
  v99 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F18, &qword_21DE09B28);
  v97 = *(v19 - 8);
  v98 = v19;
  v20 = *(v97 + 64);
  MEMORY[0x28223BE20](v19);
  v96 = &v68 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F20, &qword_21DE09B30);
  v94 = *(v95 - 8);
  v22 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v68 - v23;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F28, &qword_21DE09B38);
  v91 = *(v92 - 8);
  v24 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v68 - v25;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F30, &qword_21DE09B40);
  v88 = *(v89 - 8);
  v26 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v68 - v27;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F38, &qword_21DE09B48);
  v85 = *(v86 - 8);
  v28 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v68 - v29;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F40, &qword_21DE09B50);
  v82 = *(v83 - 8);
  v30 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v68 - v31;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F48, &qword_21DE09B58);
  v79 = *(v80 - 8);
  v32 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v68 - v33;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F50, &qword_21DE09B60);
  v76 = *(v77 - 8);
  v34 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v68 - v35;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F58, &qword_21DE09B68);
  v73 = *(v74 - 8);
  v36 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v68 - v37;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F60, &qword_21DE09B70);
  v70 = *(v71 - 8);
  v38 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v40 = &v68 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F68, &qword_21DE09B78);
  v69 = *(v41 - 8);
  v42 = *(v69 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v68 - v43;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F70, &qword_21DE09B80);
  v45 = *(v115 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v115);
  v48 = &v68 - v47;
  v49 = *v2;
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE06BA0();
  v114 = v48;
  sub_21DE08F68();
  switch(v49)
  {
    case 1:
      v117 = 1;
      sub_21DE0708C();
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v57 = *(v70 + 8);
      v58 = v40;
      v59 = &v103;
      goto LABEL_19;
    case 2:
      v117 = 2;
      sub_21DE07038();
      v61 = v72;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v57 = *(v73 + 8);
      v58 = v61;
      v59 = &v106;
      goto LABEL_19;
    case 3:
      v117 = 3;
      sub_21DE06FE4();
      v62 = v75;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v57 = *(v76 + 8);
      v58 = v62;
      v59 = &v109;
      goto LABEL_19;
    case 4:
      v117 = 4;
      sub_21DE06F90();
      v56 = v78;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v57 = *(v79 + 8);
      v58 = v56;
      v59 = &v112;
      goto LABEL_19;
    case 5:
      v117 = 5;
      sub_21DE06F3C();
      v64 = v81;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v57 = *(v82 + 8);
      v58 = v64;
      v59 = &v115;
      goto LABEL_19;
    case 6:
      v117 = 6;
      sub_21DE06EE8();
      v65 = v84;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v57 = *(v85 + 8);
      v58 = v65;
      v59 = &v116;
      goto LABEL_19;
    case 7:
      v117 = 7;
      sub_21DE06E94();
      v63 = v87;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v57 = *(v88 + 8);
      v58 = v63;
      v59 = &v118;
      goto LABEL_19;
    case 8:
      v117 = 8;
      sub_21DE06E40();
      v66 = v90;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v57 = *(v91 + 8);
      v58 = v66;
      v59 = &v119;
      goto LABEL_19;
    case 9:
      v117 = 9;
      sub_21DE06DEC();
      v60 = v93;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v57 = *(v94 + 8);
      v58 = v60;
      v59 = &v120;
LABEL_19:
      v57(v58, *(v59 - 32));
      return (*(v45 + 8))(v51, v52);
    case 10:
      v117 = 10;
      sub_21DE06D98();
      v53 = v96;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v55 = v97;
      v54 = v98;
      goto LABEL_17;
    case 11:
      v117 = 11;
      sub_21DE06D44();
      v53 = v99;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v55 = v100;
      v54 = v101;
      goto LABEL_17;
    case 12:
      v117 = 12;
      sub_21DE06CF0();
      v53 = v102;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v55 = v103;
      v54 = v104;
      goto LABEL_17;
    case 13:
      v117 = 13;
      sub_21DE06C9C();
      v53 = v105;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v55 = v106;
      v54 = v107;
      goto LABEL_17;
    case 14:
      v117 = 14;
      sub_21DE06C48();
      v53 = v108;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v55 = v109;
      v54 = v110;
      goto LABEL_17;
    case 15:
      v117 = 15;
      sub_21DE06BF4();
      v53 = v111;
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      v55 = v112;
      v54 = v113;
LABEL_17:
      (*(v55 + 8))(v53, v54);
      break;
    default:
      v117 = 0;
      sub_21DE070E0();
      v51 = v114;
      v52 = v115;
      sub_21DE08EB8();
      (*(v69 + 8))(v44, v41);
      break;
  }

  return (*(v45 + 8))(v51, v52);
}

uint64_t SemanticDataDetectorType.hashValue.getter()
{
  v1 = *v0;
  sub_21DE08F08();
  MEMORY[0x223D4A480](v1);
  return sub_21DE08F48();
}

uint64_t SemanticDataDetectorType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v140 = a2;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91000, &qword_21DE09B88);
  v124 = *(v139 - 8);
  v3 = *(v124 + 64);
  MEMORY[0x28223BE20](v139);
  v135 = &v90 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91008, &qword_21DE09B90);
  v122 = *(v5 - 8);
  v123 = v5;
  v6 = *(v122 + 64);
  MEMORY[0x28223BE20](v5);
  v134 = &v90 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91010, &qword_21DE09B98);
  v120 = *(v121 - 8);
  v8 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v133 = &v90 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91018, &qword_21DE09BA0);
  v118 = *(v119 - 8);
  v10 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v132 = &v90 - v11;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91020, &qword_21DE09BA8);
  v116 = *(v117 - 8);
  v12 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v131 = &v90 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91028, &qword_21DE09BB0);
  v114 = *(v115 - 8);
  v14 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v130 = &v90 - v15;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91030, &qword_21DE09BB8);
  v112 = *(v113 - 8);
  v16 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v129 = &v90 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91038, &qword_21DE09BC0);
  v110 = *(v111 - 8);
  v18 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v128 = &v90 - v19;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91040, &qword_21DE09BC8);
  v108 = *(v109 - 8);
  v20 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v127 = &v90 - v21;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91048, &qword_21DE09BD0);
  v107 = *(v106 - 8);
  v22 = *(v107 + 64);
  MEMORY[0x28223BE20](v106);
  v138 = &v90 - v23;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91050, &qword_21DE09BD8);
  v105 = *(v104 - 8);
  v24 = *(v105 + 64);
  MEMORY[0x28223BE20](v104);
  v137 = &v90 - v25;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91058, &qword_21DE09BE0);
  v102 = *(v103 - 8);
  v26 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v136 = &v90 - v27;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91060, &qword_21DE09BE8);
  v100 = *(v101 - 8);
  v28 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v126 = &v90 - v29;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91068, &qword_21DE09BF0);
  v98 = *(v99 - 8);
  v30 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v125 = &v90 - v31;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91070, &qword_21DE09BF8);
  v96 = *(v97 - 8);
  v32 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v34 = &v90 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91078, &qword_21DE09C00);
  v95 = *(v35 - 8);
  v36 = *(v95 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v90 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91080, &qword_21DE09C08);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v90 - v42;
  v45 = a1[3];
  v44 = a1[4];
  v142 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v45);
  sub_21DE06BA0();
  v46 = v141;
  sub_21DE08F58();
  if (v46)
  {
LABEL_39:
    v88 = v142;
    return __swift_destroy_boxed_opaque_existential_0Tm(v88);
  }

  v92 = v38;
  v91 = v35;
  v93 = v34;
  v47 = v136;
  v48 = v137;
  v49 = v138;
  v94 = 0;
  v51 = v139;
  v50 = v140;
  v141 = v40;
  v52 = v43;
  v53 = sub_21DE08EA8();
  if (*(v53 + 16) != 1 || (v54 = *(v53 + 32), v54 == 16))
  {
    v57 = sub_21DE08DE8();
    swift_allocError();
    v59 = v58;
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91088, &qword_21DE09C10) + 48);
    *v59 = &type metadata for SemanticDataDetectorType;
    sub_21DE08E78();
    sub_21DE08DD8();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    (*(v141 + 8))(v52, v39);
LABEL_38:
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v90 = v53;
  switch(v54)
  {
    case 1:
      v143 = 1;
      sub_21DE0708C();
      v78 = v93;
      v79 = v94;
      sub_21DE08E68();
      if (v79)
      {
        goto LABEL_37;
      }

      (*(v96 + 8))(v78, v97);
      goto LABEL_42;
    case 2:
      v143 = 2;
      sub_21DE07038();
      v70 = v125;
      v71 = v94;
      sub_21DE08E68();
      if (v71)
      {
        goto LABEL_37;
      }

      (*(v98 + 8))(v70, v99);
      goto LABEL_42;
    case 3:
      v143 = 3;
      sub_21DE06FE4();
      v74 = v126;
      v75 = v94;
      sub_21DE08E68();
      if (v75)
      {
        goto LABEL_37;
      }

      (*(v100 + 8))(v74, v101);
      goto LABEL_42;
    case 4:
      v143 = 4;
      sub_21DE06F90();
      v65 = v94;
      sub_21DE08E68();
      if (v65)
      {
        goto LABEL_37;
      }

      (*(v102 + 8))(v47, v103);
      goto LABEL_42;
    case 5:
      v143 = 5;
      sub_21DE06F3C();
      v80 = v94;
      sub_21DE08E68();
      if (v80)
      {
        goto LABEL_37;
      }

      (*(v105 + 8))(v48, v104);
      goto LABEL_42;
    case 6:
      v143 = 6;
      sub_21DE06EE8();
      v83 = v94;
      sub_21DE08E68();
      if (v83)
      {
        goto LABEL_37;
      }

      (*(v107 + 8))(v49, v106);
      goto LABEL_42;
    case 7:
      v143 = 7;
      sub_21DE06E94();
      v76 = v127;
      v77 = v94;
      sub_21DE08E68();
      if (v77)
      {
        goto LABEL_37;
      }

      (*(v108 + 8))(v76, v109);
      goto LABEL_42;
    case 8:
      v143 = 8;
      sub_21DE06E40();
      v86 = v128;
      v87 = v94;
      sub_21DE08E68();
      if (v87)
      {
        goto LABEL_37;
      }

      (*(v110 + 8))(v86, v111);
      goto LABEL_42;
    case 9:
      v143 = 9;
      sub_21DE06DEC();
      v68 = v129;
      v69 = v94;
      sub_21DE08E68();
      if (v69)
      {
        goto LABEL_37;
      }

      (*(v112 + 8))(v68, v113);
      goto LABEL_42;
    case 10:
      v143 = 10;
      sub_21DE06D98();
      v84 = v130;
      v85 = v94;
      sub_21DE08E68();
      if (v85)
      {
        goto LABEL_37;
      }

      (*(v114 + 8))(v84, v115);
      goto LABEL_42;
    case 11:
      v143 = 11;
      sub_21DE06D44();
      v63 = v131;
      v64 = v94;
      sub_21DE08E68();
      if (v64)
      {
        goto LABEL_37;
      }

      (*(v116 + 8))(v63, v117);
      goto LABEL_42;
    case 12:
      v143 = 12;
      sub_21DE06CF0();
      v66 = v132;
      v67 = v94;
      sub_21DE08E68();
      if (v67)
      {
        goto LABEL_37;
      }

      (*(v118 + 8))(v66, v119);
      goto LABEL_42;
    case 13:
      v143 = 13;
      sub_21DE06C9C();
      v81 = v133;
      v82 = v94;
      sub_21DE08E68();
      if (v82)
      {
        goto LABEL_37;
      }

      (*(v120 + 8))(v81, v121);
      goto LABEL_42;
    case 14:
      v143 = 14;
      sub_21DE06C48();
      v61 = v134;
      v62 = v94;
      sub_21DE08E68();
      if (v62)
      {
        goto LABEL_37;
      }

      (*(v122 + 8))(v61, v123);
      goto LABEL_42;
    case 15:
      v143 = 15;
      sub_21DE06BF4();
      v72 = v135;
      v73 = v94;
      sub_21DE08E68();
      if (v73)
      {
        goto LABEL_37;
      }

      (*(v124 + 8))(v72, v51);
      goto LABEL_42;
    default:
      v143 = 0;
      sub_21DE070E0();
      v55 = v92;
      v56 = v94;
      sub_21DE08E68();
      if (v56)
      {
LABEL_37:
        (*(v141 + 8))(v52, v39);
        goto LABEL_38;
      }

      (*(v95 + 8))(v55, v91);
LABEL_42:
      (*(v141 + 8))(v52, v39);
      swift_unknownObjectRelease();
      v88 = v142;
      *v50 = v54;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v88);
}

uint64_t sub_21DE050EC()
{
  v1 = *v0;
  sub_21DE08F08();
  MEMORY[0x223D4A480](v1);
  return sub_21DE08F48();
}

uint64_t sub_21DE05134()
{
  v1 = *v0;
  sub_21DE08F08();
  MEMORY[0x223D4A480](v1);
  return sub_21DE08F48();
}

double sub_21DE051A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21DE05310(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21DE05E9C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_21DDFB008((*(v12 + 56) + 32 * v9), a3);
    sub_21DE06238(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_21DE0524C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_21DE08D68();

  return sub_21DE06040(a1, v5);
}

unint64_t sub_21DE05290(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21DE08F08();
  MEMORY[0x223D4A480](a1);
  MEMORY[0x223D4A480](a2);
  v6 = sub_21DE08F48();

  return sub_21DE06108(a1, a2, v6);
}

unint64_t sub_21DE05310(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21DE08F08();
  sub_21DE08C38();
  v6 = sub_21DE08F48();

  return sub_21DE06180(a1, a2, v6);
}

uint64_t sub_21DE05388(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E78, &qword_21DE09A78);
  result = sub_21DE08E38();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_21DDFB008((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_21DDFD6F4(v24, &v38);
        sub_21DDFAFA8(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_21DE08D68();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_21DDFB008(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21DE05640(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE911E0, &qword_21DE0ACF8);
  result = sub_21DE08E38();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = *(v21 + 8 * v20);
      }

      v24 = *(v8 + 40);
      sub_21DE08F08();
      MEMORY[0x223D4A480](v34);
      MEMORY[0x223D4A480](*(&v34 + 1));
      result = sub_21DE08F48();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21DE058E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE911E8, &unk_21DE0AD00);
  v36 = a2;
  result = sub_21DE08E38();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_21DDFB008(v25, v37);
      }

      else
      {
        sub_21DDFAFA8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_21DE08F08();
      sub_21DE08C38();
      result = sub_21DE08F48();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_21DDFB008(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_21DE05B98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E78, &qword_21DE09A78);
  v2 = *v0;
  v3 = sub_21DE08E28();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_21DDFD6F4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_21DDFAFA8(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_21DDFB008(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21DE05D3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE911E0, &qword_21DE0ACF8);
  v2 = *v0;
  v3 = sub_21DE08E28();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21DE05E9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE911E8, &unk_21DE0AD00);
  v2 = *v0;
  v3 = sub_21DE08E28();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_21DDFAFA8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21DDFB008(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_21DE06040(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21DDFD6F4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D4A2E0](v9, a1);
      sub_21DDFB018(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21DE06108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21DE06180(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21DE08EE8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_21DE06238(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DE08D58() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_21DE08F08();

      sub_21DE08C38();
      v14 = sub_21DE08F48();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_21DE063E8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21DE0524C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21DE05B98();
      goto LABEL_7;
    }

    sub_21DE05388(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_21DE0524C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21DDFD6F4(a2, v22);
      return sub_21DE06684(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_21DE08EF8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return sub_21DDFB008(a1, v17);
}

_OWORD *sub_21DE06534(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21DE05310(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21DE05E9C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21DE058E0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_21DE05310(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_21DE08EF8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_21DDFB008(a1, v23);
  }

  else
  {
    sub_21DE06700(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_21DE06684(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_21DDFB008(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_21DE06700(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21DDFB008(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

BOOL sub_21DE0676C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    type metadata accessor for CFString(0);
    sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString);
    return sub_21DE08A78() & 1;
  }

  return result;
}

uint64_t sub_21DE06834()
{
  v0 = sub_21DE08E58();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21DE06880(uint64_t a1)
{
  v2 = sub_21DE08A48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE911C0, &unk_21DE0ACE0);
    v10 = sub_21DE08D98();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_21DE08878(&qword_27CE911C8, MEMORY[0x277CC99D0]);
      v18 = sub_21DE08BD8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_21DE08878(&qword_27CE911D0, MEMORY[0x277CC99D0]);
          v25 = sub_21DE08BE8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_21DE06BA0()
{
  result = qword_27CE90F78;
  if (!qword_27CE90F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90F78);
  }

  return result;
}

unint64_t sub_21DE06BF4()
{
  result = qword_27CE90F80;
  if (!qword_27CE90F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90F80);
  }

  return result;
}

unint64_t sub_21DE06C48()
{
  result = qword_27CE90F88;
  if (!qword_27CE90F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90F88);
  }

  return result;
}

unint64_t sub_21DE06C9C()
{
  result = qword_27CE90F90;
  if (!qword_27CE90F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90F90);
  }

  return result;
}

unint64_t sub_21DE06CF0()
{
  result = qword_27CE90F98;
  if (!qword_27CE90F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90F98);
  }

  return result;
}

unint64_t sub_21DE06D44()
{
  result = qword_27CE90FA0;
  if (!qword_27CE90FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FA0);
  }

  return result;
}

unint64_t sub_21DE06D98()
{
  result = qword_27CE90FA8;
  if (!qword_27CE90FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FA8);
  }

  return result;
}

unint64_t sub_21DE06DEC()
{
  result = qword_27CE90FB0;
  if (!qword_27CE90FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FB0);
  }

  return result;
}

unint64_t sub_21DE06E40()
{
  result = qword_27CE90FB8;
  if (!qword_27CE90FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FB8);
  }

  return result;
}

unint64_t sub_21DE06E94()
{
  result = qword_27CE90FC0;
  if (!qword_27CE90FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FC0);
  }

  return result;
}

unint64_t sub_21DE06EE8()
{
  result = qword_27CE90FC8;
  if (!qword_27CE90FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FC8);
  }

  return result;
}

unint64_t sub_21DE06F3C()
{
  result = qword_27CE90FD0;
  if (!qword_27CE90FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FD0);
  }

  return result;
}

unint64_t sub_21DE06F90()
{
  result = qword_27CE90FD8;
  if (!qword_27CE90FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FD8);
  }

  return result;
}

unint64_t sub_21DE06FE4()
{
  result = qword_27CE90FE0;
  if (!qword_27CE90FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FE0);
  }

  return result;
}

unint64_t sub_21DE07038()
{
  result = qword_27CE90FE8;
  if (!qword_27CE90FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FE8);
  }

  return result;
}

unint64_t sub_21DE0708C()
{
  result = qword_27CE90FF0;
  if (!qword_27CE90FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FF0);
  }

  return result;
}

unint64_t sub_21DE070E0()
{
  result = qword_27CE90FF8;
  if (!qword_27CE90FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FF8);
  }

  return result;
}

unint64_t sub_21DE07138()
{
  result = qword_281222BC8;
  if (!qword_281222BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281222BC8);
  }

  return result;
}

unint64_t sub_21DE07190()
{
  result = qword_281222BB8;
  if (!qword_281222BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281222BB8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21DE071F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21DE07240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21DE072AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21DE0733C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SemanticDataDetector.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SemanticDataDetector.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21DE07650()
{
  result = qword_27CE91090;
  if (!qword_27CE91090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91090);
  }

  return result;
}

unint64_t sub_21DE076A8()
{
  result = qword_27CE91098;
  if (!qword_27CE91098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91098);
  }

  return result;
}

unint64_t sub_21DE07700()
{
  result = qword_27CE910A0;
  if (!qword_27CE910A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910A0);
  }

  return result;
}

unint64_t sub_21DE07758()
{
  result = qword_27CE910A8;
  if (!qword_27CE910A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910A8);
  }

  return result;
}

unint64_t sub_21DE077B0()
{
  result = qword_27CE910B0;
  if (!qword_27CE910B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910B0);
  }

  return result;
}

unint64_t sub_21DE07808()
{
  result = qword_27CE910B8;
  if (!qword_27CE910B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910B8);
  }

  return result;
}

unint64_t sub_21DE07860()
{
  result = qword_27CE910C0;
  if (!qword_27CE910C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910C0);
  }

  return result;
}

unint64_t sub_21DE078B8()
{
  result = qword_27CE910C8;
  if (!qword_27CE910C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910C8);
  }

  return result;
}

unint64_t sub_21DE07910()
{
  result = qword_27CE910D0;
  if (!qword_27CE910D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910D0);
  }

  return result;
}

unint64_t sub_21DE07968()
{
  result = qword_27CE910D8;
  if (!qword_27CE910D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910D8);
  }

  return result;
}

unint64_t sub_21DE079C0()
{
  result = qword_27CE910E0;
  if (!qword_27CE910E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910E0);
  }

  return result;
}

unint64_t sub_21DE07A18()
{
  result = qword_27CE910E8;
  if (!qword_27CE910E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910E8);
  }

  return result;
}

unint64_t sub_21DE07A70()
{
  result = qword_27CE910F0;
  if (!qword_27CE910F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910F0);
  }

  return result;
}

unint64_t sub_21DE07AC8()
{
  result = qword_27CE910F8;
  if (!qword_27CE910F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910F8);
  }

  return result;
}

unint64_t sub_21DE07B20()
{
  result = qword_27CE91100;
  if (!qword_27CE91100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91100);
  }

  return result;
}

unint64_t sub_21DE07B78()
{
  result = qword_27CE91108;
  if (!qword_27CE91108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91108);
  }

  return result;
}

unint64_t sub_21DE07BD0()
{
  result = qword_27CE91110;
  if (!qword_27CE91110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91110);
  }

  return result;
}

unint64_t sub_21DE07C28()
{
  result = qword_27CE91118;
  if (!qword_27CE91118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91118);
  }

  return result;
}

unint64_t sub_21DE07C80()
{
  result = qword_27CE91120;
  if (!qword_27CE91120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91120);
  }

  return result;
}

unint64_t sub_21DE07CD8()
{
  result = qword_27CE91128;
  if (!qword_27CE91128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91128);
  }

  return result;
}

unint64_t sub_21DE07D30()
{
  result = qword_27CE91130;
  if (!qword_27CE91130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91130);
  }

  return result;
}

unint64_t sub_21DE07D88()
{
  result = qword_27CE91138;
  if (!qword_27CE91138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91138);
  }

  return result;
}

unint64_t sub_21DE07DE0()
{
  result = qword_27CE91140;
  if (!qword_27CE91140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91140);
  }

  return result;
}

unint64_t sub_21DE07E38()
{
  result = qword_27CE91148;
  if (!qword_27CE91148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91148);
  }

  return result;
}

unint64_t sub_21DE07E90()
{
  result = qword_27CE91150;
  if (!qword_27CE91150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91150);
  }

  return result;
}

unint64_t sub_21DE07EE8()
{
  result = qword_27CE91158;
  if (!qword_27CE91158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91158);
  }

  return result;
}

unint64_t sub_21DE07F40()
{
  result = qword_27CE91160;
  if (!qword_27CE91160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91160);
  }

  return result;
}

unint64_t sub_21DE07F98()
{
  result = qword_27CE91168;
  if (!qword_27CE91168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91168);
  }

  return result;
}

unint64_t sub_21DE07FF0()
{
  result = qword_27CE91170;
  if (!qword_27CE91170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91170);
  }

  return result;
}

unint64_t sub_21DE08048()
{
  result = qword_27CE91178;
  if (!qword_27CE91178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91178);
  }

  return result;
}

unint64_t sub_21DE080A0()
{
  result = qword_27CE91180;
  if (!qword_27CE91180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91180);
  }

  return result;
}

unint64_t sub_21DE080F8()
{
  result = qword_27CE91188;
  if (!qword_27CE91188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91188);
  }

  return result;
}

unint64_t sub_21DE08150()
{
  result = qword_27CE91190;
  if (!qword_27CE91190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91190);
  }

  return result;
}

unint64_t sub_21DE081A8()
{
  result = qword_27CE91198;
  if (!qword_27CE91198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91198);
  }

  return result;
}

unint64_t sub_21DE08200()
{
  result = qword_27CE911A0;
  if (!qword_27CE911A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE911A0);
  }

  return result;
}

unint64_t sub_21DE08258()
{
  result = qword_27CE911A8;
  if (!qword_27CE911A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE911A8);
  }

  return result;
}

unint64_t sub_21DE082B0()
{
  result = qword_27CE911B0;
  if (!qword_27CE911B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE911B0);
  }

  return result;
}

unint64_t sub_21DE08308()
{
  result = qword_27CE911B8;
  if (!qword_27CE911B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE911B8);
  }

  return result;
}

uint64_t sub_21DE0835C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v4 || (sub_21DE08EE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_21DE08EE8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xED0000746E657645 || (sub_21DE08EE8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021DE0AFB0 == a2 || (sub_21DE08EE8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E746867696C66 && a2 == 0xEC0000007265626DLL || (sub_21DE08EE8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021DE0AFD0 == a2 || (sub_21DE08EE8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_21DE08EE8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C52556C69616DLL && a2 == 0xE700000000000000 || (sub_21DE08EE8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x55636972656E6567 && a2 == 0xEA00000000004C52 || (sub_21DE08EE8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (sub_21DE08EE8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C61636973796870 && a2 == 0xED000065756C6156 || (sub_21DE08EE8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x79656E6F6DLL && a2 == 0xE500000000000000 || (sub_21DE08EE8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021DE0AFF0 == a2 || (sub_21DE08EE8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x614E7265706F7270 && a2 == 0xEA0000000000656DLL || (sub_21DE08EE8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65646F43707061 && a2 == 0xE700000000000000 || (sub_21DE08EE8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_21DE08EE8();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_21DE08878(unint64_t *a1, void (*a2)(uint64_t))
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