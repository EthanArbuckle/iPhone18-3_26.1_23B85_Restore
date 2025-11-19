uint64_t sub_2758C4BD8()
{
  v1 = *v0;
  sub_2759BABD8();
  MEMORY[0x277C84980](v1);
  return sub_2759BAC08();
}

unint64_t sub_2758C4C20()
{
  result = qword_280A0FA90;
  if (!qword_280A0FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FA90);
  }

  return result;
}

const char *sub_2758C4C74()
{
  if (*v0)
  {
    return "StorageManagement";
  }

  else
  {
    return "iCloudSettings";
  }
}

const char *sub_2758C4CA4()
{
  if (*v0)
  {
    return "StorageUIV2";
  }

  else
  {
    return "stelvio";
  }
}

uint64_t sub_2758C4CE8()
{
  sub_2758C4D18();
  result = sub_2759B9428();
  qword_280A23890 = result;
  return result;
}

unint64_t sub_2758C4D18()
{
  result = qword_280A0FA98;
  if (!qword_280A0FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FA98);
  }

  return result;
}

void sub_2758C4DE0(void *a1)
{
  v3 = type metadata accessor for WebViewRepresentable(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  [a1 setDelegate_];
  v6 = sub_2759B84B8();
  sub_2758C77B8(v1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WebViewRepresentable);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_2758C7820(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for WebViewRepresentable);
  aBlock[4] = sub_2758C7888;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275956A0C;
  aBlock[3] = &block_descriptor_4;
  v9 = _Block_copy(aBlock);

  [a1 loadURL:v6 completion:v9];
  _Block_release(v9);
}

uint64_t sub_2758C4F98(char a1, void *a2, uint64_t a3)
{
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A23900);
  v7 = a2;
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2112;
    if (a2)
    {
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v10 + 10) = v13;
    *v11 = v14;
    _os_log_impl(&dword_275819000, v8, v9, "WebViewRepresentable load finished with success %{BOOL}d error %@", v10, 0x12u);
    sub_27586BF04(v11, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  v15 = a3 + *(type metadata accessor for WebViewRepresentable(0) + 24);
  v16 = *(v15 + 8);
  return (*v15)(a1 & 1, a2);
}

id sub_2758C513C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D46238]);

  return [v0 init];
}

uint64_t sub_2758C51C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2758C6F80(qword_280A0FB78, type metadata accessor for WebViewRepresentable);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2758C5254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2758C6F80(qword_280A0FB78, type metadata accessor for WebViewRepresentable);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2758C52E8()
{
  sub_2758C6F80(qword_280A0FB78, type metadata accessor for WebViewRepresentable);
  sub_2759B9788();
  __break(1u);
}

uint64_t sub_2758C53E4()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings36ICSRemoteUIWebViewControllerDelegate_dismiss;
  v2 = sub_2759B8F38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2758C54A8()
{
  result = sub_2759B8F38();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2758C5538@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FAF8, &qword_2759C4F18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for RemoteUIWebView(0);
  sub_2758C7240(v1 + *(v12 + 36), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B8F38();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2758C5728@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for RemoteUIWebView(0);
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2759B8F38();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for WebViewRepresentable(0);
  v8 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - v12;
  v14 = sub_2759B8508();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[3])
  {
    v19 = v18;
    v20 = *(v3 + 40);
    v21 = v2[3];

    sub_2759B8C38();

    sub_2759B84F8();

    v22 = v15;
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      result = sub_27586BF04(v13, &unk_280A0EB10, &qword_2759C0740);
      v24 = 0;
LABEL_6:
      *v51 = v24;
      return result;
    }

    v25 = *(v15 + 32);
    v26 = v19;
    v25(v19, v13, v14);
    v27 = v50;
    (*(v22 + 16))(v50, v19, v14);
    v28 = v44;
    v43 = v22;
    sub_2758C5538(v44);
    v29 = type metadata accessor for ICSRemoteUIWebViewControllerDelegate(0);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    v32 = swift_allocObject();
    (*(v45 + 32))(v32 + OBJC_IVAR____TtC14iCloudSettings36ICSRemoteUIWebViewControllerDelegate_dismiss, v28, v46);
    v33 = v49;
    sub_2758C77B8(v2, v49, type metadata accessor for RemoteUIWebView);
    v34 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v35 = v27;
    v36 = swift_allocObject();
    sub_2758C7820(v33, v36 + v34, type metadata accessor for RemoteUIWebView);
    v37 = v47;
    *(v35 + *(v47 + 20)) = v32;
    v38 = (v35 + *(v37 + 24));
    *v38 = sub_2758C7214;
    v38[1] = v36;
    v39 = sub_27595CE18(v2[7]);
    if (v2[5])
    {
      v40 = v39;

      v24 = sub_275964C9C(v40);

      sub_2758C73B8(v35, type metadata accessor for WebViewRepresentable);
      result = (*(v43 + 8))(v26, v14);
      goto LABEL_6;
    }
  }

  else
  {
    v41 = v2[4];
    sub_2759B8C08();
    sub_2758C6F80(&qword_280A0E6E0, MEMORY[0x277D23330]);
    sub_2759B9158();
    __break(1u);
  }

  v42 = v2[6];
  sub_2759B8BB8();
  sub_2758C6F80(&qword_280A0F8C8, MEMORY[0x277D232E8]);

  result = sub_2759B9158();
  __break(1u);
  return result;
}

uint64_t sub_2758C5CAC(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[3])
  {
    v6 = a3[4];
    sub_2759B8C08();
    sub_2758C6F80(&qword_280A0E6E0, MEMORY[0x277D23330]);
    sub_2759B9158();
    __break(1u);
    goto LABEL_7;
  }

  if (!a3[5])
  {
LABEL_7:
    v7 = a3[6];
    sub_2759B8BB8();
    sub_2758C6F80(&qword_280A0F8C8, MEMORY[0x277D232E8]);

    result = sub_2759B9158();
    __break(1u);
    return result;
  }

  v3 = a3[7];
  v4 = a3[3];

  sub_2759BA438();
}

uint64_t sub_2758C5DE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  if (v2 != 1)
  {
    v4 = 0x616F4C6469446E6FLL;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (*a2 != 1)
  {
    v8 = 0x616F4C6469446E6FLL;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_2758C5ED8()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2758C5F6C()
{
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_2758C5FEC()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2758C607C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2758C776C();
  *a2 = result;
  return result;
}

void sub_2758C60AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE300000000000000;
  v5 = 7107189;
  if (v2 != 1)
  {
    v5 = 0x616F4C6469446E6FLL;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2758C60FC()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x616F4C6469446E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2758C6148@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2758C776C();
  *a1 = result;
  return result;
}

uint64_t sub_2758C6170(uint64_t a1)
{
  v2 = sub_2758C72B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2758C61AC(uint64_t a1)
{
  v2 = sub_2758C72B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2758C61E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v63 = sub_2759B8BD8();
  v50 = *(v63 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2759B8C48();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v58 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2759B85A8();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB00, &qword_2759C4F20);
  v59 = *(v61 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v13 = v49 - v12;
  v14 = type metadata accessor for RemoteUIWebView(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17[2] = MEMORY[0x277D84F90];
  sub_2759B8C08();
  sub_2758C6F80(&qword_280A0E6E0, MEMORY[0x277D23330]);
  v18 = sub_2759B9168();
  v17[3] = v18;
  v17[4] = v19;
  sub_2759B8BB8();
  sub_2758C6F80(&qword_280A0F8C8, MEMORY[0x277D232E8]);
  v20 = sub_2759B9168();
  v17[5] = v20;
  v17[6] = v21;
  v54 = v14;
  v22 = *(v14 + 36);
  *(v17 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FAF8, &qword_2759C4F18);
  swift_storeEnumTagMultiPayload();
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2758C72B0();
  v60 = v13;
  v24 = v64;
  sub_2759BAC18();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return sub_27586BF04(v17 + v22, &qword_280A0FAB0, &qword_2759C4DD0);
  }

  else
  {
    v25 = v57;
    v49[1] = v20;
    v49[2] = v18;
    v26 = v58;
    v64 = a1;
    LOBYTE(v65[0]) = 0;
    v27 = sub_2759BAA58();
    v49[0] = v22;
    if (!v28)
    {
      sub_2759B8598();
      v30 = sub_2759B8588();
      v32 = v31;
      (*(v52 + 8))(v25, v53);
      v28 = v32;
      v27 = v30;
    }

    v33 = v17;
    *v17 = v27;
    v17[1] = v28;
    LOBYTE(v65[0]) = 1;
    sub_2758C6F80(&qword_280A0E8C0, MEMORY[0x277D23340]);
    v34 = v56;
    sub_2759BAA78();
    (*(v55 + 32))(v33 + *(v54 + 40), v26, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
    LOBYTE(v66) = 2;
    sub_2758C7304();
    sub_2759BAA68();
    if (*&v65[0])
    {
      v35 = *&v65[0];
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
    }

    v36 = *(v35 + 16);
    if (v36)
    {
      v55 = v33;
      v66 = MEMORY[0x277D84F90];
      sub_2759509B0(0, v36, 0);
      v37 = v66;
      v38 = v50 + 16;
      v39 = *(v50 + 16);
      v40 = *(v50 + 80);
      v56 = v35;
      v41 = v35 + ((v40 + 32) & ~v40);
      v57 = *(v50 + 72);
      v58 = v39;
      v42 = (v50 + 8);
      v43 = v63;
      do
      {
        v44 = v62;
        v45 = v38;
        (v58)(v62, v41, v43);
        sub_2759B8BC8();
        v43 = v63;
        (*v42)(v44, v63);
        v66 = v37;
        v47 = *(v37 + 16);
        v46 = *(v37 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_2759509B0((v46 > 1), v47 + 1, 1);
          v43 = v63;
          v37 = v66;
        }

        *(v37 + 16) = v47 + 1;
        sub_275827D1C(v65, v37 + 40 * v47 + 32);
        v41 += v57;
        --v36;
        v38 = v45;
      }

      while (v36);
      (*(v59 + 8))(v60, v61);

      v48 = v51;
      v33 = v55;
    }

    else
    {

      (*(v59 + 8))(v60, v61);
      v37 = MEMORY[0x277D84F90];
      v48 = v51;
    }

    *(v33 + 56) = v37;
    sub_2758C77B8(v33, v48, type metadata accessor for RemoteUIWebView);
    __swift_destroy_boxed_opaque_existential_1(v64);
    return sub_2758C73B8(v33, type metadata accessor for RemoteUIWebView);
  }
}

uint64_t sub_2758C69D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758C6F80(&qword_280A0FAD0, type metadata accessor for RemoteUIWebView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2758C6A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758C6F80(&qword_280A0FAD8, type metadata accessor for RemoteUIWebView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2758C6AD8(uint64_t a1)
{
  v2 = sub_2758C6F80(&qword_280A0FAD8, type metadata accessor for RemoteUIWebView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2758C6B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758C6F80(&qword_280A0FAF0, type metadata accessor for RemoteUIWebView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2758C6BF4()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v0 = sub_2759B89A8();
  __swift_project_value_buffer(v0, qword_2815ADE70);
  v1 = sub_2759B8988();
  v2 = sub_2759BA668();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_275819000, v1, v2, "ICSRemoteUIWebViewControllerDelegate dismissing", v3, 2u);
    MEMORY[0x277C85860](v3, -1, -1);
  }

  return sub_2759B8F28();
}

void sub_2758C6D28()
{
  sub_2758C702C(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2758C6EEC(319, &qword_280A0E6D8, MEMORY[0x277D23330], &qword_280A0E6E0, MEMORY[0x277D23330]);
    if (v1 <= 0x3F)
    {
      sub_2758C6EEC(319, &qword_280A0F930, MEMORY[0x277D232E8], &qword_280A0F8C8, MEMORY[0x277D232E8]);
      if (v2 <= 0x3F)
      {
        sub_2758C6FC8();
        if (v3 <= 0x3F)
        {
          sub_2758C702C(319, &qword_280A0FAC8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2759B8C48();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2758C6EEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2758C6F80(a4, a5);
    v8 = sub_2759B9178();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2758C6F80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2758C6FC8()
{
  if (!qword_280A0F918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F920, &qword_2759D0380);
    v0 = sub_2759BA448();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0F918);
    }
  }
}

void sub_2758C702C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2758C70AC()
{
  sub_2758C6F80(&qword_280A0FAD0, type metadata accessor for RemoteUIWebView);
  sub_2758C6F80(&qword_280A0FAD8, type metadata accessor for RemoteUIWebView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2758C7240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FAF8, &qword_2759C4F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2758C72B0()
{
  result = qword_280A0FB08;
  if (!qword_280A0FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB08);
  }

  return result;
}

unint64_t sub_2758C7304()
{
  result = qword_280A0FB18;
  if (!qword_280A0FB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FB10, &qword_2759C79D0);
    sub_2758C6F80(&qword_280A0FB20, MEMORY[0x277D232F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB18);
  }

  return result;
}

uint64_t sub_2758C73B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2758C7450()
{
  result = sub_2759B8508();
  if (v1 <= 0x3F)
  {
    result = sub_2758C74EC();
    if (v2 <= 0x3F)
    {
      result = sub_2758C7550();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2758C74EC()
{
  result = qword_280A0FB38;
  if (!qword_280A0FB38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280A0FB38);
  }

  return result;
}

unint64_t sub_2758C7550()
{
  result = qword_280A0FB40;
  if (!qword_280A0FB40)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280A0FB40);
  }

  return result;
}

unint64_t sub_2758C75A0()
{
  result = qword_280A0FB48;
  if (!qword_280A0FB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FB50, &unk_2759C4F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB48);
  }

  return result;
}

unint64_t sub_2758C7668()
{
  result = qword_280A0FB60;
  if (!qword_280A0FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB60);
  }

  return result;
}

unint64_t sub_2758C76C0()
{
  result = qword_280A0FB68;
  if (!qword_280A0FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB68);
  }

  return result;
}

unint64_t sub_2758C7718()
{
  result = qword_280A0FB70;
  if (!qword_280A0FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB70);
  }

  return result;
}

uint64_t sub_2758C776C()
{
  v0 = sub_2759BAA48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2758C77B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2758C7820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2758C78B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_2758C7A8C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2759B89A8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2759B8998();
}

uint64_t sub_2758C7B04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2758C7B60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2758C7BA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*sub_2758C7C84())()
{
  v3 = *v0;
  v4 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC08, &unk_2759C5260);
  sub_2759B9D68();
  *(swift_allocObject() + 16) = v2;
  return sub_2758C8304;
}

uint64_t sub_2758C7D0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_2759B9DC8();
  v7 = sub_2759B9648();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_2758C82A0();
  swift_getOpaqueTypeMetadata2();
  v25 = v6;
  v26 = v7;
  v27 = WitnessTable;
  v28 = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_2759B9E58();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v21[-v16];
  sub_2759BA038();
  v22 = v4;
  v23 = v5;
  v24 = v2;
  sub_2759B9E48();
  swift_getWitnessTable();
  v18 = v11[2];
  v18(v17, v15, v10);
  v19 = v11[1];
  v19(v15, v10);
  v18(a2, v17, v10);
  return (v19)(v17, v10);
}

uint64_t sub_2758C7F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28[1] = a2;
  v28[2] = a3;
  v31 = a4;
  v5 = sub_2759B9648();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2759B9DC8();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  WitnessTable = swift_getWitnessTable();
  v28[0] = WitnessTable;
  v14 = sub_2758C82A0();
  v32 = v9;
  v33 = v5;
  v34 = WitnessTable;
  v35 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v28 - v21;
  sub_2758C7C84();
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  sub_2759B9DB8();
  sub_2759B9638();
  sub_2759B9A68();
  (*(v30 + 8))(v8, v5);
  (*(v29 + 8))(v12, v9);
  v25 = v16[2];
  v25(v22, v20, OpaqueTypeMetadata2);
  v26 = v16[1];
  v26(v20, OpaqueTypeMetadata2);
  v25(v31, v22, OpaqueTypeMetadata2);
  return (v26)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_2758C8264@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_2758C7D0C(a1, a2);
}

unint64_t sub_2758C82A0()
{
  result = qword_280A0FC00;
  if (!qword_280A0FC00)
  {
    sub_2759B9648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FC00);
  }

  return result;
}

uint64_t sub_2758C8304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2758C8330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_2759BA4C8();
  v4[5] = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758C83C8, v6, v5);
}

uint64_t sub_2758C83C8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  v3 = *(v2 + 16);
  if (v3)
  {
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    *(v0 + 16) = v3;
    sub_2758C8D14(&qword_280A12800, 255, type metadata accessor for ManageStorageAppViewModel);
    v5 = v3;
    sub_2759B8628();
  }

  **(v0 + 24) = v3 == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2758C851C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2758C8578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D231E0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_27585A7E4;

  return MEMORY[0x2821820C8](a1, a2, a3);
}

uint64_t sub_2758C8628()
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v4 = *v0;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;

  return MEMORY[0x2822009F8](sub_2758C86C4, 0, 0);
}

uint64_t sub_2758C86C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_2759BA518();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_2759BA4C8();

  v4 = sub_2759BA4B8();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v2;
  sub_27587DA58(0, 0, v1, &unk_2759C5390, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2758C87E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_27585D1B8();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();
}

uint64_t sub_2758C89A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_allocObject();
  *(result + 16) = 0;
  *a2 = result;
  return result;
}

uint64_t sub_2758C8A78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585A7E4;

  return sub_2758C8330(a1, v4, v5, v6);
}

uint64_t sub_2758C8B2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758C8D14(&qword_280A12800, 255, type metadata accessor for ManageStorageAppViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__overlayImages);
}

uint64_t sub_2758C8BE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_2758C8D14(&qword_280A12800, 255, type metadata accessor for ManageStorageAppViewModel);
  sub_2759B8628();
}

void sub_2758C8CD0(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 16);
  *(v1 + 16) = *a1;
  v3 = v2;
}

uint64_t sub_2758C8D14(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2758C8D74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2758C8DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for DecodableStateError()
{
  result = qword_280A0FC28;
  if (!qword_280A0FC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758C8EC0(uint64_t a1)
{
  sub_2758C8F94();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_2759B8AF8();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

void sub_2758C8F94()
{
  if (!qword_280A0FC38)
  {
    sub_2759B8AF8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FC40, &qword_2759C5418);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280A0FC38);
    }
  }
}

uint64_t sub_2758C9038(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_2758C9088(uint64_t a1, uint64_t (*a2)(void, void, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[3] = a4;
  v35[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v10 = sub_2759B89A8();
  __swift_project_value_buffer(v10, qword_280A238D0);
  sub_27586E058(v35, &v33);
  sub_27586E058(v35, v32);
  v11 = sub_2759B8988();
  v12 = sub_2759BA638();
  if (os_log_type_enabled(v11, v12))
  {
    v30 = a2;
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v13 = 136315394;
    __swift_project_boxed_opaque_existential_1(&v33, v34);
    v14 = *(a5 + 8);
    v15 = v14(a4, a5);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    v18 = sub_2758937B8(v15, v17, &v31);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    if ((*(a5 + 16))(a4, a5))
    {
      sub_2758C945C();
      v19 = sub_2759BA1F8();
      v21 = v20;
    }

    else
    {
      v21 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_1(v32);
    v24 = sub_2758937B8(v19, v21, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_275819000, v11, v12, "Sending message %s with body %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v29, -1, -1);
    MEMORY[0x277C85860](v13, -1, -1);

    a2 = v30;
    v22 = v14(a4, a5);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v33);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v22 = (*(a5 + 8))(a4, a5);
  }

  v25 = v22;
  v26 = v23;
  sub_27586E058(v35, &v33);
  v27 = swift_allocObject();
  sub_275827D1C(&v33, v27 + 16);
  LOBYTE(v25) = a2(v25, v26, sub_2758C9408, v27);

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v25 & 1;
}

uint64_t sub_2758C9408()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

unint64_t sub_2758C945C()
{
  result = qword_280A0F7B8;
  if (!qword_280A0F7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0F7B8);
  }

  return result;
}

uint64_t sub_2758C94A8(uint64_t *a1, int a2)
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

uint64_t sub_2758C94F0(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for StaticHeaderImageView()
{
  result = qword_280A0FC50;
  if (!qword_280A0FC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758C95B0()
{
  sub_2758C97E8(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_27585AF74();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DefaultIconLoader();
      if (v2 <= 0x3F)
      {
        sub_2758C97E8(319, &qword_280A0E888, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2758C984C(319, &qword_280A0FC60, &qword_280A0FC68, &qword_2759C7830, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2758C97E8(319, &qword_280A0E6D0, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2758C984C(319, &qword_280A0FC70, &qword_280A0FC78, &qword_2759C5530, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_2758C984C(319, &qword_280A0FC80, &qword_280A0FC88, &qword_2759C5538, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
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

void sub_2758C97E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2758C984C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2758C98B0(uint64_t a1@<X8>)
{
  v60 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCB8, &qword_2759C5660);
  v2 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v52 = v45 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCC0, &qword_2759C5668);
  v4 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v55 = v45 - v5;
  v6 = type metadata accessor for StaticHeaderImageView();
  v53 = *(v6 - 1);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCC8, &qword_2759C5670);
  v8 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v50 = v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v45 - v12;
  v14 = sub_2759B8A38();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCD0, &qword_2759C5678);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCD8, &qword_2759C5680);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (v45 - v24);
  v26 = v1;
  v62 = *(v1 + v6[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCE0, &qword_2759C5688);
  sub_2759B9D68();
  if (v61)
  {
    v27 = v61;
    sub_2759B9C98();
    if (*(v1 + v6[11]))
    {
      v28 = *(v1 + v6[11]);
    }

    v29 = sub_2759B9CA8();

    *v25 = v29;
    swift_storeEnumTagMultiPayload();
    sub_2758CD0FC();

    sub_2759B95E8();
  }

  else
  {
    v45[1] = v7;
    v46 = v25;
    v31 = v51;
    v30 = v52;
    v47 = v21;
    v48 = v22;
    v49 = v18;
    sub_27586FBC8(v26 + v6[10], v13, &qword_280A0E6B0, &qword_2759C0D00);
    if ((*(v57 + 48))(v13, 1, v58) == 1)
    {
      sub_27586BF04(v13, &qword_280A0E6B0, &qword_2759C0D00);
      v32 = v30;
      sub_2759B8E88();
      v33 = &v30[*(v56 + 36)];
      v34 = &v33[*(sub_2759B8FD8() + 20)];
      sub_2759BA4E8();
      sub_2758CCD94(v26, v31);
      v35 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v36 = swift_allocObject();
      sub_2758CCDF8(v31, v36 + v35);
      *v33 = &unk_2759C5698;
      *(v33 + 1) = v36;
      sub_27586FBC8(v32, v55, &qword_280A0FCB8, &qword_2759C5660);
      swift_storeEnumTagMultiPayload();
      sub_2758CCF28();
      sub_2758CD014();
      v37 = v47;
      sub_2759B95E8();
      sub_27586BF04(v32, &qword_280A0FCB8, &qword_2759C5660);
    }

    else
    {
      v38 = v57;
      v39 = v58;
      (*(v57 + 32))(v17, v13);
      v40 = v50;
      v41 = &v50[*(v59 + 36)];
      v42 = &v41[*(sub_2759B8FD8() + 20)];
      sub_2759BA4E8();
      sub_2758CCD94(v26, v31);
      v43 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v44 = swift_allocObject();
      sub_2758CCDF8(v31, v44 + v43);
      *v41 = &unk_2759C56B0;
      *(v41 + 1) = v44;
      (*(v38 + 16))(v40, v17, v39);
      sub_27586FBC8(v40, v55, &qword_280A0FCC8, &qword_2759C5670);
      swift_storeEnumTagMultiPayload();
      sub_2758CCF28();
      sub_2758CD014();
      v37 = v47;
      sub_2759B95E8();
      sub_27586BF04(v40, &qword_280A0FCC8, &qword_2759C5670);
      (*(v38 + 8))(v17, v39);
    }

    sub_27586FBC8(v37, v46, &qword_280A0FCD0, &qword_2759C5678);
    swift_storeEnumTagMultiPayload();
    sub_2758CD0FC();
    sub_2759B95E8();
    sub_27586BF04(v37, &qword_280A0FCD0, &qword_2759C5678);
  }
}

uint64_t sub_2758C9FF0()
{
  v0[2] = sub_2759BA4C8();
  v0[3] = sub_2759BA4B8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2758CA09C;

  return sub_2758CA1D8();
}

uint64_t sub_2758CA09C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758CDE84, v5, v4);
}

uint64_t sub_2758CA1D8()
{
  v1[2] = v0;
  v2 = type metadata accessor for StaticHeaderImageView();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v8 = sub_2759B8508();
  v1[11] = v8;
  v9 = *(v8 - 8);
  v1[12] = v9;
  v10 = *(v9 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = sub_2759BA4C8();
  v1[16] = sub_2759BA4B8();
  v12 = sub_2759BA468();
  v1[17] = v12;
  v1[18] = v11;

  return MEMORY[0x2822009F8](sub_2758CA420, v12, v11);
}

uint64_t sub_2758CA420()
{
  v72 = v0;
  v1 = *(v0 + 72);
  sub_27586FBC8(*(v0 + 16) + *(*(v0 + 24) + 32), v1, &qword_280A0E8A8, qword_2759C2120);
  v2 = sub_2759B8C48();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_27586BF04(*(v0 + 72), &qword_280A0E8A8, qword_2759C2120);
  }

  else
  {
    v4 = *(v0 + 16);
    if (!*(v4 + 24))
    {
LABEL_17:
      v48 = *(v4 + 32);
      sub_2759B8C08();
      sub_2758CDAB0(&qword_280A0E6E0, MEMORY[0x277D23330]);

      return sub_2759B9158();
    }

    v5 = *(v0 + 72);
    v6 = *(v4 + 24);

    sub_2759B8C38();
    v7 = (v3 + 8);
    v8 = *(v0 + 72);

    (*v7)(v8, v2);
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);
  sub_2759B84F8();

  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = *(v0 + 128);
    v13 = *(v0 + 80);

    sub_27586BF04(v13, &unk_280A0EB10, &qword_2759C0740);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_2815ADE70);
    v15 = sub_2759B8988();
    v16 = sub_2759BA648();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_275819000, v15, v16, "StaticHeaderImageView: missing url, image will show as empty", v17, 2u);
      MEMORY[0x277C85860](v17, -1, -1);
    }

    v18 = *(v0 + 120);
    v20 = *(v0 + 48);
    v19 = *(v0 + 56);
    v22 = *(v0 + 32);
    v21 = *(v0 + 40);
    v23 = *(v0 + 16);

    v24 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v25 = sub_2759BA518();
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
    sub_2758CCD94(v23, v20);
    v26 = v24;
    v27 = sub_2759BA4B8();
    v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    *(v29 + 16) = v27;
    *(v29 + 24) = v30;
    sub_2758CCDF8(v20, v29 + v28);
    *(v29 + ((v21 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    sub_27587D460(0, 0, v19, &unk_2759C56C8, v29);

    v32 = *(v0 + 104);
    v31 = *(v0 + 112);
    v34 = *(v0 + 72);
    v33 = *(v0 + 80);
    v36 = *(v0 + 56);
    v35 = *(v0 + 64);
    v37 = *(v0 + 48);

    v38 = *(v0 + 8);

    return v38();
  }

  v40 = *(v0 + 64);
  v42 = *(v0 + 16);
  v41 = *(v0 + 24);
  (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 80), *(v0 + 88));
  sub_27586FBC8(v42 + *(v41 + 36), v40, &qword_280A0FC48, &qword_2759C79C0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v40, 1, v43) == 1)
  {
    sub_27586BF04(*(v0 + 64), &qword_280A0FC48, &qword_2759C79C0);
LABEL_25:
    v66 = swift_task_alloc();
    *(v0 + 184) = v66;
    *v66 = v0;
    v66[1] = sub_2758CB11C;
    v67 = *(v0 + 112);

    return sub_275873948(v67);
  }

  v4 = *(v0 + 16);
  if (!*(v4 + 24))
  {
    goto LABEL_17;
  }

  v45 = *(v0 + 64);
  v46 = *(v4 + 24);

  sub_2759B8AA8();
  v47 = *(v0 + 64);

  (*(v44 + 8))(v47, v43);
  if ((*(v0 + 200) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 104);
  v50 = *(v0 + 112);
  v51 = *(v0 + 88);
  v52 = *(v0 + 96);
  v53 = sub_2759B89A8();
  *(v0 + 152) = __swift_project_value_buffer(v53, qword_2815ADE70);
  (*(v52 + 16))(v49, v50, v51);
  v54 = sub_2759B8988();
  v55 = sub_2759BA668();
  v56 = os_log_type_enabled(v54, v55);
  v58 = *(v0 + 96);
  v57 = *(v0 + 104);
  v59 = *(v0 + 88);
  if (v56)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v71 = v61;
    *v60 = 136315138;
    v70 = sub_2759B8488();
    v63 = v62;
    v64 = *(v58 + 8);
    v64(v57, v59);
    v65 = sub_2758937B8(v70, v63, &v71);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_275819000, v54, v55, "StaticHeaderImageView: applying system style to image %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x277C85860](v61, -1, -1);
    MEMORY[0x277C85860](v60, -1, -1);
  }

  else
  {

    v64 = *(v58 + 8);
    v64(v57, v59);
  }

  *(v0 + 160) = v64;
  v68 = swift_task_alloc();
  *(v0 + 168) = v68;
  *v68 = v0;
  v68[1] = sub_2758CACB4;
  v69 = *(v0 + 112);

  return sub_275872FC8(v69, 100.0, 100.0);
}

uint64_t sub_2758CACB4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return MEMORY[0x2822009F8](sub_2758CADDC, v5, v4);
}

uint64_t sub_2758CADDC()
{
  v1 = v0[22];
  v2 = v0[16];

  if (v1)
  {
    v3 = v0[22];
    v4 = v0[15];
    v43 = v0[14];
    v44 = v0[20];
    v5 = v0[11];
    v6 = v0[12];
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];
    v12 = sub_2759BA518();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    sub_2758CCD94(v11, v8);
    v13 = v3;
    v14 = sub_2759BA4B8();
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    *(v16 + 16) = v14;
    *(v16 + 24) = v17;
    sub_2758CCDF8(v8, v16 + v15);
    *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    v18 = &unk_2759C56E8;
  }

  else
  {
    v19 = v0[19];
    v20 = sub_2759B8988();
    v21 = sub_2759BA648();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_275819000, v20, v21, "StaticHeaderImageView: unable to generate styled image", v22, 2u);
      MEMORY[0x277C85860](v22, -1, -1);
    }

    v23 = v0[15];
    v43 = v0[14];
    v44 = v0[20];
    v5 = v0[11];
    v24 = v0[12];
    v25 = v0[6];
    v7 = v0[7];
    v26 = v0[4];
    v27 = v0[5];
    v28 = v0[2];

    v29 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v30 = sub_2759BA518();
    (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
    sub_2758CCD94(v28, v25);
    v13 = v29;
    v31 = sub_2759BA4B8();
    v32 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v16 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    *(v16 + 16) = v31;
    *(v16 + 24) = v33;
    sub_2758CCDF8(v25, v16 + v32);
    *(v16 + ((v27 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    v18 = &unk_2759C56E0;
  }

  sub_27587D460(0, 0, v7, v18, v16);

  v44(v43, v5);
  v35 = v0[13];
  v34 = v0[14];
  v37 = v0[9];
  v36 = v0[10];
  v39 = v0[7];
  v38 = v0[8];
  v40 = v0[6];

  v41 = v0[1];

  return v41();
}

uint64_t sub_2758CB11C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *v2;
  *(*v2 + 192) = a1;

  if (v1)
  {

    v6 = *(v3 + 136);
    v7 = *(v3 + 144);
    v8 = sub_2758CB5C0;
  }

  else
  {
    v6 = *(v3 + 136);
    v7 = *(v3 + 144);
    v8 = sub_2758CB244;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2758CB244()
{
  v1 = v0[24];
  v2 = v0[16];

  if (v1)
  {
    v3 = v0[24];
    v4 = v0[15];
    v42 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];
    v12 = sub_2759BA518();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    sub_2758CCD94(v11, v8);
    v13 = v3;
    v14 = sub_2759BA4B8();
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    *(v16 + 16) = v14;
    *(v16 + 24) = v17;
    sub_2758CCDF8(v8, v16 + v15);
    *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    v18 = &unk_2759C56D8;
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v19 = sub_2759B89A8();
    __swift_project_value_buffer(v19, qword_2815ADE70);
    v20 = sub_2759B8988();
    v21 = sub_2759BA648();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_275819000, v20, v21, "StaticHeaderImageView: unable to load raw image", v22, 2u);
      MEMORY[0x277C85860](v22, -1, -1);
    }

    v23 = v0[15];
    v42 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    v24 = v0[6];
    v7 = v0[7];
    v25 = v0[4];
    v26 = v0[5];
    v27 = v0[2];

    v28 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v29 = sub_2759BA518();
    (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
    sub_2758CCD94(v27, v24);
    v13 = v28;
    v30 = sub_2759BA4B8();
    v31 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v16 = swift_allocObject();
    v32 = MEMORY[0x277D85700];
    *(v16 + 16) = v30;
    *(v16 + 24) = v32;
    sub_2758CCDF8(v24, v16 + v31);
    *(v16 + ((v26 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    v18 = &unk_2759C56D0;
  }

  sub_27587D460(0, 0, v7, v18, v16);

  (*(v6 + 8))(v42, v5);
  v34 = v0[13];
  v33 = v0[14];
  v36 = v0[9];
  v35 = v0[10];
  v38 = v0[7];
  v37 = v0[8];
  v39 = v0[6];

  v40 = v0[1];

  return v40();
}

uint64_t sub_2758CB5C0()
{
  v1 = v0[16];

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA648();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "StaticHeaderImageView: unable to load raw image", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = v0[15];
  v30 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[2];

  v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v15 = sub_2759BA518();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_2758CCD94(v13, v10);
  v16 = v14;
  v17 = sub_2759BA4B8();
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_2758CCDF8(v10, v19 + v18);
  *(v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  sub_27587D460(0, 0, v9, &unk_2759C56D0, v19);

  (*(v8 + 8))(v30, v7);
  v22 = v0[13];
  v21 = v0[14];
  v24 = v0[9];
  v23 = v0[10];
  v26 = v0[7];
  v25 = v0[8];
  v27 = v0[6];

  v28 = v0[1];

  return v28();
}

uint64_t sub_2758CB85C()
{
  v0[2] = sub_2759BA4C8();
  v0[3] = sub_2759BA4B8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_27588B550;

  return sub_2758CA1D8();
}

uint64_t sub_2758CB908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_2759BA4C8();
  v5[7] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758CB9A0, v7, v6);
}

uint64_t sub_2758CB9A0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);

  *(v0 + 16) = *(v3 + *(type metadata accessor for StaticHeaderImageView() + 48));
  *(v0 + 32) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCE0, &qword_2759C5688);
  sub_2759B9D78();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2758CBA5C()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2758CBB44()
{
  *v0;
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_2758CBC18()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2758CBCFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2758CDE38();
  *a2 = result;
  return result;
}

void sub_2758CBD2C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000002759DCD70;
  v6 = 0xD000000000000010;
  v7 = 0xEB00000000726564;
  v8 = 0x6C6F686563616C70;
  if (v2 != 3)
  {
    v8 = 0x646F4D6567616D69;
    v7 = 0xEE00737265696669;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7107189;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_2758CBDD0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  v4 = 0x6C6F686563616C70;
  if (v1 != 3)
  {
    v4 = 0x646F4D6567616D69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7107189;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2758CBE70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2758CDE38();
  *a1 = result;
  return result;
}

uint64_t sub_2758CBEA4(uint64_t a1)
{
  v2 = sub_2758CD9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2758CBEE0(uint64_t a1)
{
  v2 = sub_2758CD9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2758CBF1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v69 = sub_2759B8C88();
  v62 = *(v69 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v69);
  v72 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v58 - v13;
  v65 = sub_2759B85A8();
  v64 = *(v65 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v70 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FD18, &qword_2759C56F0);
  v71 = *(v73 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v18 = &v58 - v17;
  v19 = type metadata accessor for StaticHeaderImageView();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[2] = MEMORY[0x277D84F90];
  sub_2759B8C08();
  sub_2758CDAB0(&qword_280A0E6E0, MEMORY[0x277D23330]);
  v23 = sub_2759B9168();
  v22[3] = v23;
  v22[4] = v24;
  v79 = &type metadata for DefaultApplicationRecordProvider;
  v80 = &off_28847F8A0;
  v25 = type metadata accessor for DefaultIconLoader();
  v26 = objc_allocWithZone(v25);
  __swift_mutable_project_boxed_opaque_existential_1(&v78, &type metadata for DefaultApplicationRecordProvider);
  v77[3] = &type metadata for DefaultApplicationRecordProvider;
  v77[4] = &off_28847F8A0;
  sub_27586E058(v77, v26 + OBJC_IVAR___ICSDefaultIconLoader_applicationRecordProvider);
  v76.receiver = v26;
  v76.super_class = v25;
  v27 = objc_msgSendSuper2(&v76, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(&v78);
  v22[5] = v27;
  v28 = (v22 + *(v19 + 48));
  v77[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC88, &qword_2759C5538);
  sub_2759B9D58();
  v29 = *(&v78 + 1);
  v74 = v78;
  *v28 = v78;
  v28[1] = v29;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2758CD9A8();
  v31 = v75;
  sub_2759BAC18();
  if (v31)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v70;
  v60 = v27;
  v61 = v23;
  v59 = v19;
  v75 = a1;
  LOBYTE(v78) = 0;
  v33 = sub_2759BAA58();
  v36 = v34;
  if (!v34)
  {
    sub_2759B8598();
    v37 = sub_2759B8588();
    v36 = v38;
    (*(v64 + 8))(v32, v65);
    v33 = v37;
  }

  v39 = v72;
  v40 = v22;
  v41 = v66;
  *v22 = v33;
  v22[1] = v36;
  v70 = v36;
  sub_2759B8C48();
  LOBYTE(v78) = 1;
  sub_2758CDAB0(&qword_280A0E8C0, MEMORY[0x277D23340]);
  sub_2759BAA68();
  sub_27589F26C(v41, v22 + *(v59 + 32), &qword_280A0E8A8, qword_2759C2120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  LOBYTE(v78) = 2;
  sub_27589B02C(&qword_280A100B0, &qword_280A0FC68, &qword_2759C7830);
  v42 = v67;
  sub_2759BAA68();
  v43 = v42;
  v44 = v59;
  sub_27589F26C(v43, v22 + *(v59 + 36), &qword_280A0FC48, &qword_2759C79C0);
  sub_2759B8A38();
  LOBYTE(v78) = 3;
  sub_2758CDAB0(&qword_280A0E738, MEMORY[0x277D231A8]);
  v45 = v68;
  sub_2759BAA68();
  sub_27589F26C(v45, v22 + *(v44 + 40), &qword_280A0E6B0, &qword_2759C0D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FD28, &qword_2759C56F8);
  LOBYTE(v78) = 4;
  sub_2758CD9FC();
  sub_2759BAA68();
  v68 = 0;
  v70 = v18;
  v46 = v77[0];
  v47 = v75;
  v48 = v71;
  if (v77[0])
  {
    v49 = *(v77[0] + 16);
    if (v49)
    {
      v81 = MEMORY[0x277D84F90];
      sub_2759509F0(0, v49, 0);
      v50 = v81;
      *(&v74 + 1) = *(v62 + 16);
      v51 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v67 = v46;
      v52 = v46 + v51;
      *&v74 = *(v62 + 72);
      v53 = (v62 + 8);
      v54 = v69;
      do
      {
        (*(&v74 + 1))(v39, v52, v54);
        sub_2759B8C78();
        v54 = v69;
        (*v53)(v39, v69);
        v81 = v50;
        v56 = *(v50 + 16);
        v55 = *(v50 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_2759509F0((v55 > 1), v56 + 1, 1);
          v54 = v69;
          v50 = v81;
        }

        *(v50 + 16) = v56 + 1;
        sub_275827D1C(&v78, v50 + 40 * v56 + 32);
        v52 += v74;
        --v49;
        v39 = v72;
      }

      while (v49);
      (*(v71 + 8))(v70, v73);

      v47 = v75;
      v57 = v63;
      v44 = v59;
      goto LABEL_16;
    }

    (*(v48 + 8))(v70, v73);
    v50 = MEMORY[0x277D84F90];
    v44 = v59;
  }

  else
  {
    (*(v71 + 8))(v70, v73);
    v50 = 0;
  }

  v57 = v63;
LABEL_16:
  *(v40 + *(v44 + 44)) = v50;
  sub_2758CCD94(v40, v57);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_2758CDAF8(v40);
}

uint64_t sub_2758CCA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758CDAB0(&qword_280A0FC90, type metadata accessor for StaticHeaderImageView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2758CCA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758CDAB0(&qword_280A0FC98, type metadata accessor for StaticHeaderImageView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2758CCB14(uint64_t a1)
{
  v2 = sub_2758CDAB0(&qword_280A0FC98, type metadata accessor for StaticHeaderImageView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2758CCB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758CDAB0(&qword_280A0FCB0, type metadata accessor for StaticHeaderImageView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2758CCC4C()
{
  sub_2758CDAB0(&qword_280A0FC90, type metadata accessor for StaticHeaderImageView);
  sub_2758CDAB0(&qword_280A0FC98, type metadata accessor for StaticHeaderImageView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2758CCD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticHeaderImageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758CCDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticHeaderImageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758CCE5C()
{
  v1 = *(type metadata accessor for StaticHeaderImageView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_27585F7A0;

  return sub_2758CB85C();
}

unint64_t sub_2758CCF28()
{
  result = qword_280A0FCE8;
  if (!qword_280A0FCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FCC8, &qword_2759C5670);
    sub_2758CDAB0(&qword_280A0E720, MEMORY[0x277D231A8]);
    sub_2758CDAB0(&qword_280A0FCF0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FCE8);
  }

  return result;
}

unint64_t sub_2758CD014()
{
  result = qword_280A0FCF8;
  if (!qword_280A0FCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FCB8, &qword_2759C5660);
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0);
    sub_2758CDAB0(&qword_280A0FCF0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FCF8);
  }

  return result;
}

unint64_t sub_2758CD0FC()
{
  result = qword_280A0FD10;
  if (!qword_280A0FD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FCD0, &qword_2759C5678);
    sub_2758CCF28();
    sub_2758CD014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD10);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for StaticHeaderImageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = v1[8];
  v10 = sub_2759B8C48();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = v1[10];
  v16 = sub_2759B8A38();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = *(v5 + v1[11]);

  v19 = v5 + v1[12];

  v20 = *(v19 + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758CD404()
{
  v1 = *(type metadata accessor for StaticHeaderImageView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_27585F7A0;

  return sub_2758C9FF0();
}

uint64_t sub_2758CD4D0(uint64_t a1)
{
  v4 = *(type metadata accessor for StaticHeaderImageView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_2758CB908(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2758CD5F0(uint64_t a1)
{
  v4 = *(type metadata accessor for StaticHeaderImageView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_2758CB908(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_10Tm()
{
  v1 = type metadata accessor for StaticHeaderImageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 24);

  v10 = v1[8];
  v11 = sub_2759B8C48();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v6 + v13, 1, v14))
  {
    (*(v15 + 8))(v6 + v13, v14);
  }

  v16 = v1[10];
  v17 = sub_2759B8A38();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v6 + v16, 1, v17))
  {
    (*(v18 + 8))(v6 + v16, v17);
  }

  v19 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v6 + v1[11]);

  v21 = v6 + v1[12];

  v22 = *(v21 + 8);

  return MEMORY[0x2821FE8E8](v0, v19 + 8, v2 | 7);
}

unint64_t sub_2758CD9A8()
{
  result = qword_280A0FD20;
  if (!qword_280A0FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD20);
  }

  return result;
}

unint64_t sub_2758CD9FC()
{
  result = qword_280A0FD30;
  if (!qword_280A0FD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FD28, &qword_2759C56F8);
    sub_2758CDAB0(&qword_280A0FD38, MEMORY[0x277D23390]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD30);
  }

  return result;
}

uint64_t sub_2758CDAB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2758CDAF8(uint64_t a1)
{
  v2 = type metadata accessor for StaticHeaderImageView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for StaticHeaderImageView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticHeaderImageView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2758CDCA4()
{
  result = qword_280A0FD40;
  if (!qword_280A0FD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FD48, &qword_2759C5710);
    sub_2758CD0FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD40);
  }

  return result;
}

unint64_t sub_2758CDD34()
{
  result = qword_280A0FD50;
  if (!qword_280A0FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD50);
  }

  return result;
}

unint64_t sub_2758CDD8C()
{
  result = qword_280A0FD58;
  if (!qword_280A0FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD58);
  }

  return result;
}

unint64_t sub_2758CDDE4()
{
  result = qword_280A0FD60;
  if (!qword_280A0FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD60);
  }

  return result;
}

uint64_t sub_2758CDE38()
{
  v0 = sub_2759BAA48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2758CDE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_275906750(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_27586F8A0(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_275907270();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_2758D506C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

void sub_2758CDF90(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_275906D20(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }

  else
  {
    v7 = *v2;
    v8 = sub_2758A342C(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v16 = *v3;
      if (!v12)
      {
        sub_275907A6C();
        v13 = v16;
      }

      sub_2758D521C(v10, v13);
      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_2758CE094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_27586FBC8(a1, v22 - v10, &unk_280A0E510, &qword_2759C33C0);
  v12 = sub_2759BA518();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_27586BF04(v11, &unk_280A0E510, &qword_2759C33C0);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_2759BA468();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2759BA508();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

void ManageStorageDrilldownController.navigationController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*ManageStorageDrilldownController.navigationController.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ICSManageStorageDrilldownController_navigationController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2758CE3E8;
}

void sub_2758CE3E8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t ManageStorageDrilldownController.liftUIDataSource.getter()
{
  v1 = (v0 + OBJC_IVAR___ICSManageStorageDrilldownController_liftUIDataSource);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t ManageStorageDrilldownController.liftUIDataSource.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ICSManageStorageDrilldownController_liftUIDataSource);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_2758CE628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_27586FBC8(v4 + v8, a4, a2, a3);
}

uint64_t sub_2758CE6B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_2758CE724(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_2758CE724(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id ManageStorageDrilldownController.__allocating_init(appBundleID:account:presentingController:)(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_2758D53E4(a1, a2, a3);

  return v10;
}

id ManageStorageDrilldownController.init(appBundleID:account:presentingController:)(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v6 = sub_2758D53E4(a1, a2, a3);

  return v6;
}

id ManageStorageDrilldownController.__allocating_init(appBundleID:account:navigationController:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v9 = objc_allocWithZone(v5);
  if (a2)
  {
    v10 = v9;
    v11 = sub_2759BA258();

    v9 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v9 initWithAppBundleID:v11 account:a3 presentingController:0];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v12;
}

id ManageStorageDrilldownController.init(appBundleID:account:navigationController:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_2759BA258();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithAppBundleID:v8 account:a3 presentingController:0];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v9;
}

Swift::Void __swiftcall ManageStorageDrilldownController.cancelLoading()()
{
  v1 = v0;
  sub_2758CED90();
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2758937B8(0x6F4C6C65636E6163, 0xEF2928676E696461, &v10);
    _os_log_impl(&dword_275819000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x277C85860](v6, -1, -1);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v7 = v1 + OBJC_IVAR___ICSManageStorageDrilldownController_anyLoadingTask;
  swift_beginAccess();
  if (*(v7 + 24))
  {
    sub_27586E058(v7, &v10);
    v8 = *(&v11 + 1);
    v9 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
    (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  sub_2758CE724(&v10, v7, &qword_280A0FD88, &qword_2759C5880);
  swift_endAccess();
}

uint64_t sub_2758CED90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v6 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID);
  v5 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8);
  v7 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_analyticsController);
  if (v5)
  {
    swift_bridgeObjectRetain_n();
    sub_2759BA4D8();
    v8 = sub_2759BA518();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v9;
    *(v10 + 40) = v6;
    *(v10 + 48) = v5;
    *(v10 + 56) = 1538;
    *(v10 + 58) = 0;
    *(v10 + 64) = 2;
    *(v10 + 72) = 0;
    *(v10 + 80) = v6;
    *(v10 + 88) = v5;
    *(v10 + 96) = 9;
    swift_bridgeObjectRetain_n();
    sub_275931D20(0, 0, v4, &unk_2759C5AB8, v10);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    sub_2759BA4D8();
    v11 = sub_2759BA518();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v12;
    *(v13 + 40) = xmmword_2759C5860;
    *(v13 + 56) = 1538;
    *(v13 + 58) = 0;
    *(v13 + 64) = 2;
    *(v13 + 72) = 0;
    *(v13 + 80) = xmmword_2759C5870;
    *(v13 + 96) = 10;
    sub_275931D20(v6, 0, v4, &unk_2759C5AB0, v13);
  }

  return sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
}

uint64_t ManageStorageDrilldownController.fetchStorage(for:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x2822009F8](sub_2758CF0B4, 0, 0);
}

uint64_t sub_2758CF0B4()
{
  v17 = v0;
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR___ICSManageStorageDrilldownController_dataController;
  swift_beginAccess();
  sub_27586FBC8(v1 + v2, v0 + 56, &qword_280A0FD98, &qword_2759C5888);
  if (*(v0 + 80))
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    sub_275827D1C((v0 + 56), v0 + 16);
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    v5[2] = v0 + 16;
    v5[3] = v4;
    v5[4] = v3;
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDA0, &unk_2759C5898);
    *v7 = v0;
    v7[1] = sub_2758CF380;

    return MEMORY[0x2822008A0](v0 + 120, 0, 0, 0xD000000000000012, 0x80000002759E0330, sub_2758D579C, v5, v8);
  }

  else
  {
    sub_27586BF04(v0 + 56, &qword_280A0FD98, &qword_2759C5888);
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v9 = sub_2759B89A8();
    __swift_project_value_buffer(v9, qword_280A238A0);
    v10 = sub_2759B8988();
    v11 = sub_2759BA648();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2758937B8(0xD000000000000012, 0x80000002759E0330, &v16);
      _os_log_impl(&dword_275819000, v10, v11, "%s no data controller, returning nil", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x277C85860](v13, -1, -1);
      MEMORY[0x277C85860](v12, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_2758CF380()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_2758CF508;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_2758CF49C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2758CF49C()
{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_2758CF508()
{
  v1 = v0[19];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t sub_2758CF574(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEC8, &qword_2759C5AA8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  (*(v13 + 8))(a3, v18, sub_2758D62E4, v15, v12, v13);
}

uint64_t sub_2758CF708(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEC8, &qword_2759C5AA8);
    return sub_2759BA478();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEC8, &qword_2759C5AA8);
    return sub_2759BA488();
  }
}

void ManageStorageDrilldownController.beginLoading(specifier:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = OBJC_IVAR___ICSManageStorageDrilldownController_anyLoadingTask;
  swift_beginAccess();
  sub_27586FBC8(&v1[v8], v37, &qword_280A0FD88, &qword_2759C5880);
  v9 = v38;
  sub_27586BF04(v37, &qword_280A0FD88, &qword_2759C5880);
  if (v9)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_280A238A0);
    v11 = sub_2759B8988();
    v12 = sub_2759BA668();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_14;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_275819000, v11, v12, "Task already in progress, bailing", v13, 2u);
    v14 = v13;
LABEL_13:
    MEMORY[0x277C85860](v14, -1, -1);
LABEL_14:

    return;
  }

  sub_2758CFC24();
  v15 = &v1[OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID];
  v16 = *&v1[OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8];
  if (v16)
  {
    v17 = *&v1[OBJC_IVAR___ICSManageStorageDrilldownController_account];
    if (v17)
    {
      v35 = *v15;
      v18 = *&v2[OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier];
      *&v2[OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier] = a1;

      v36 = v17;

      v19 = sub_2759BA518();
      v34 = *(*(v19 - 8) + 56);
      v34(v7, 1, 1, v19);
      sub_2759BA4C8();
      v20 = a1;
      v21 = sub_2759BA4B8();
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D85700];
      v22[2] = v21;
      v22[3] = v23;
      v22[4] = a1;
      v24 = v20;
      sub_27587D460(0, 0, v7, &unk_2759C58B0, v22);

      v34(v7, 1, 1, v19);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v26 = v35;
      v25[4] = v2;
      v25[5] = v26;
      v25[6] = v16;
      v25[7] = v24;
      v27 = v24;
      v28 = v2;
      v29 = sub_27587D460(0, 0, v7, &unk_2759C58C0, v25);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDC8, &qword_2759CA7C0);
      v39 = &protocol witness table for Task<A, B>;

      v37[0] = v29;
      swift_beginAccess();
      sub_2758CE724(v37, &v2[v8], &qword_280A0FD88, &qword_2759C5880);
      swift_endAccess();
      return;
    }
  }

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v30 = sub_2759B89A8();
  __swift_project_value_buffer(v30, qword_280A238A0);
  v31 = v2;
  v11 = sub_2759B8988();
  v32 = sub_2759BA648();
  if (os_log_type_enabled(v11, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109376;
    *(v33 + 4) = *(v15 + 1) != 0;
    *(v33 + 8) = 1024;
    *(v33 + 10) = *&v31[OBJC_IVAR___ICSManageStorageDrilldownController_account] != 0;

    _os_log_impl(&dword_275819000, v11, v32, "Unable to load drilldown, appBundleId: %{BOOL}d account: %{BOOL}d", v33, 0xEu);
    v14 = v33;
    goto LABEL_13;
  }
}

uint64_t sub_2758CFC24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v6 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID);
  v5 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8);
  v7 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_analyticsController);
  if (v5)
  {
    swift_bridgeObjectRetain_n();
    sub_2759BA4D8();
    v8 = sub_2759BA518();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v9;
    *(v10 + 40) = v6;
    *(v10 + 48) = v5;
    *(v10 + 56) = 1538;
    *(v10 + 58) = 0;
    *(v10 + 64) = 0;
    *(v10 + 72) = 0;
    *(v10 + 80) = v6;
    *(v10 + 88) = v5;
    *(v10 + 96) = 9;
    swift_bridgeObjectRetain_n();
    sub_275931D20(0, 0, v4, &unk_2759C5AA0, v10);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    sub_2759BA4D8();
    v11 = sub_2759BA518();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v12;
    *(v13 + 40) = xmmword_2759C5860;
    *(v13 + 56) = 1538;
    *(v13 + 58) = 0;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0;
    *(v13 + 80) = xmmword_2759C5870;
    *(v13 + 96) = 10;
    sub_275931D20(v6, 0, v4, &unk_2759C5A98, v13);
  }

  return sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
}

uint64_t sub_2758CFED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a4;
  v7[11] = a7;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v12 = sub_2759B8508();
  v7[17] = v12;
  v13 = *(v12 - 8);
  v7[18] = v13;
  v14 = *(v13 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[21] = v15;
  *v15 = v7;
  v15[1] = sub_2758D0080;

  return ManageStorageDrilldownController.fetchStorage(for:)(a5, a6);
}

uint64_t sub_2758D0080(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_2758D0C20;
  }

  else
  {
    v5 = sub_2758D0194;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2758D0194()
{
  v82 = v0;
  v1 = *(v0 + 184);
  sub_2759BA558();
  v2 = *(v0 + 176);
  if (v1)
  {

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v3 = sub_2759B89A8();
    __swift_project_value_buffer(v3, qword_280A238A0);
    v4 = v1;
    v5 = sub_2759B8988();
    v6 = sub_2759BA648();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v81 = v9;
      *v7 = 136315394;
      *(v7 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E0440, &v81);
      *(v7 + 12) = 2112;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      _os_log_impl(&dword_275819000, v5, v6, "%s encountered error: %@", v7, 0x16u);
      sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x277C85860](v9, -1, -1);
      MEMORY[0x277C85860](v7, -1, -1);
    }

    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = sub_2759BA518();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    sub_2759BA4C8();
    v15 = v13;
    v16 = sub_2759BA4B8();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v13;
    sub_27587D460(0, 0, v12, &unk_2759C5A78, v17);

    goto LABEL_7;
  }

  if (!v2)
  {
    v33 = *(v0 + 136);
    v34 = *(v0 + 128);
    v35 = *(v0 + 112);
    v36 = *(*(v0 + 144) + 56);
    v36(v34, 1, 1, v33);
    sub_27586BF04(v34, &unk_280A0EB10, &qword_2759C0740);
    v36(v35, 1, 1, v33);
    goto LABEL_23;
  }

  v29 = [*(v0 + 176) liftUIURL];
  if (v29)
  {
    v30 = *(v0 + 120);
    v31 = v29;
    sub_2759B84C8();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v37 = *(v0 + 136);
  v38 = *(v0 + 144);
  v40 = *(v0 + 120);
  v39 = *(v0 + 128);
  v41 = *(v38 + 56);
  v41(v40, v32, 1, v37);
  sub_2758B4BD0(v40, v39);
  v42 = *(v38 + 48);
  if (v42(v39, 1, v37) == 1)
  {
    sub_27586BF04(*(v0 + 128), &unk_280A0EB10, &qword_2759C0740);
    v43 = [v2 ruiURL];
    if (v43)
    {
      v44 = *(v0 + 104);
      v45 = v43;
      sub_2759B84C8();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v50 = *(v0 + 136);
    v52 = *(v0 + 104);
    v51 = *(v0 + 112);
    v41(v52, v46, 1, v50);
    sub_2758B4BD0(v52, v51);
    if (v42(v51, 1, v50) != 1)
    {
      v77 = *(v0 + 144);
      v76 = *(v0 + 152);
      v78 = *(v0 + 136);
      v79 = *(v0 + 80);
      (*(v77 + 32))(v76, *(v0 + 112), v78);
      sub_2758D2358();

      (*(v77 + 8))(v76, v78);
LABEL_7:
      v19 = *(v0 + 152);
      v20 = *(v0 + 160);
      v22 = *(v0 + 120);
      v21 = *(v0 + 128);
      v24 = *(v0 + 104);
      v23 = *(v0 + 112);
      v80 = *(v0 + 96);
      v25 = *(v0 + 80);
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      v26 = OBJC_IVAR___ICSManageStorageDrilldownController_anyLoadingTask;
      swift_beginAccess();
      sub_2758CE724(v0 + 16, v25 + v26, &qword_280A0FD88, &qword_2759C5880);
      swift_endAccess();

      v27 = *(v0 + 8);

      return v27();
    }

LABEL_23:
    v53 = *(v0 + 88);
    sub_27586BF04(*(v0 + 112), &unk_280A0EB10, &qword_2759C0740);
    if ([v53 detailControllerClass])
    {
      v54 = *(v0 + 176);
      v56 = *(v0 + 88);
      v55 = *(v0 + 96);
      v57 = *(v0 + 80);
      v58 = sub_2759BA518();
      (*(*(v58 - 8) + 56))(v55, 1, 1, v58);
      sub_2759BA4C8();
      v59 = v56;
      v60 = v57;
      v61 = sub_2759BA4B8();
      v62 = swift_allocObject();
      v63 = MEMORY[0x277D85700];
      v62[2] = v61;
      v62[3] = v63;
      v62[4] = v59;
      v62[5] = v60;
      sub_27587D460(0, 0, v55, &unk_2759C5A88, v62);
    }

    else
    {
      if (qword_280A0E338 != -1)
      {
        swift_once();
      }

      v64 = sub_2759B89A8();
      __swift_project_value_buffer(v64, qword_280A238A0);
      v65 = sub_2759B8988();
      v66 = sub_2759BA648();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_275819000, v65, v66, "Fetch app storage missing rui/lui url or detail class", v67, 2u);
        MEMORY[0x277C85860](v67, -1, -1);
      }

      v68 = *(v0 + 176);
      v70 = *(v0 + 88);
      v69 = *(v0 + 96);

      v71 = sub_2759BA518();
      (*(*(v71 - 8) + 56))(v69, 1, 1, v71);
      sub_2759BA4C8();
      v72 = v70;
      v73 = sub_2759BA4B8();
      v74 = swift_allocObject();
      v75 = MEMORY[0x277D85700];
      v74[2] = v73;
      v74[3] = v75;
      v74[4] = v70;
      sub_27587D460(0, 0, v69, &unk_2759C5A80, v74);
    }

    goto LABEL_7;
  }

  (*(*(v0 + 144) + 32))(*(v0 + 160), *(v0 + 128), *(v0 + 136));
  v47 = swift_task_alloc();
  *(v0 + 192) = v47;
  *v47 = v0;
  v47[1] = sub_2758D09E0;
  v48 = *(v0 + 160);
  v49 = *(v0 + 80);

  return ManageStorageDrilldownController.handleLUIDrilldown(url:)(v48);
}

uint64_t sub_2758D09E0()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2758D0ADC, 0, 0);
}

uint64_t sub_2758D0ADC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v14 = *(v0 + 96);
  v10 = *(v0 + 80);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v11 = OBJC_IVAR___ICSManageStorageDrilldownController_anyLoadingTask;
  swift_beginAccess();
  sub_2758CE724(v0 + 16, v10 + v11, &qword_280A0FD88, &qword_2759C5880);
  swift_endAccess();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2758D0C20()
{
  v30 = v0;
  v1 = *(v0 + 184);
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E0440, &v29);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_275819000, v4, v5, "%s encountered error: %@", v6, 0x16u);
    sub_27586BF04(v7, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = sub_2759BA518();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_2759BA4C8();
  v14 = v12;
  v15 = sub_2759BA4B8();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v12;
  sub_27587D460(0, 0, v11, &unk_2759C5A78, v16);

  v18 = *(v0 + 152);
  v19 = *(v0 + 160);
  v21 = *(v0 + 120);
  v20 = *(v0 + 128);
  v23 = *(v0 + 104);
  v22 = *(v0 + 112);
  v28 = *(v0 + 96);
  v24 = *(v0 + 80);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v25 = OBJC_IVAR___ICSManageStorageDrilldownController_anyLoadingTask;
  swift_beginAccess();
  sub_2758CE724(v0 + 16, v24 + v25, &qword_280A0FD88, &qword_2759C5880);
  swift_endAccess();

  v26 = *(v0 + 8);

  return v26();
}

uint64_t ManageStorageDrilldownController.handleLUIDrilldown(url:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758D1044, 0, 0);
}

uint64_t sub_2758D1044()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___ICSManageStorageDrilldownController_account;
  v3 = *(v1 + OBJC_IVAR___ICSManageStorageDrilldownController_account);
  v0[24] = v3;
  if (!v3 || (v4 = (v1 + OBJC_IVAR___ICSManageStorageDrilldownController_liftUIDataSource), swift_beginAccess(), v5 = *v4, v0[25] = *v4, !v5))
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v9 = v0[21];
    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_280A238A0);
    v11 = v9;
    v12 = sub_2759B8988();
    v13 = sub_2759BA648();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[21];
    if (v14)
    {
      v16 = swift_slowAlloc();
      *v16 = 67109376;
      *(v16 + 4) = *(v1 + v2) != 0;
      *(v16 + 8) = 1024;
      v17 = OBJC_IVAR___ICSManageStorageDrilldownController_liftUIDataSource;
      swift_beginAccess();
      *(v16 + 10) = *&v15[v17] != 0;

      _os_log_impl(&dword_275819000, v12, v13, "Unable to load liftui drilldown, account: %{BOOL}d liftUIDataSource: %{BOOL}d", v16, 0xEu);
      MEMORY[0x277C85860](v16, -1, -1);
    }

    else
    {
    }

    v18 = v0[23];
    v19 = *(v0[21] + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
    v20 = sub_2759BA518();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    sub_2759BA4C8();
    v21 = v19;
    v22 = sub_2759BA4B8();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v19;
    sub_27587D460(0, 0, v18, &unk_2759C58E8, v23);

    v26 = v0[22];
    v25 = v0[23];

    v27 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[26] = v4[1];
  v0[27] = sub_2759BA4C8();
  v6 = v3;
  swift_unknownObjectRetain();
  v0[28] = sub_2759BA4B8();
  v8 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758D1378, v8, v7);
}

uint64_t sub_2758D1378()
{
  v1 = v0[28];
  v2 = v0[24];

  v0[29] = sub_275896398(v2, 0);

  return MEMORY[0x2822009F8](sub_2758D13F4, 0, 0);
}

uint64_t sub_2758D13F4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = v1;
  *(v0 + 240) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758D1490, v6, v5);
}

uint64_t sub_2758D1490()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[24];

  v4 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListViewModel(0));
  v0[31] = sub_2758A5B3C(v3, v2, 0);

  return MEMORY[0x2822009F8](sub_2758D1524, 0, 0);
}

uint64_t sub_2758D1524()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[21];
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v8 = sub_2759BA518();
  v0[32] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v0[33] = v10;
  v0[34] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v4, 1, 1, v8);
  v11 = v1;
  v12 = sub_2759BA4B8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_27587D460(0, 0, v4, &unk_2759C58F0, v13);

  v15 = swift_task_alloc();
  v0[35] = v15;
  v15[2] = v2;
  v15[3] = v11;
  v15[4] = v5;
  v16 = *(MEMORY[0x277D858E8] + 4);
  v17 = swift_task_alloc();
  v0[36] = v17;
  *v17 = v0;
  v17[1] = sub_2758D1758;

  return MEMORY[0x282200600]();
}

uint64_t sub_2758D1758()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2758D1870, 0, 0);
}

uint64_t sub_2758D1870()
{
  v1 = v0[25];
  v2 = v0[26];
  ObjectType = swift_getObjectType();
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_2758D1928;
  v5 = v0[20];

  return sub_275859678(v5, ObjectType, v2);
}

uint64_t sub_2758D1928(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 296);
  v8 = *v3;
  v4[38] = a1;
  v4[39] = a2;
  v4[40] = v2;

  if (v2)
  {
    v6 = sub_2758D20D4;
  }

  else
  {
    v6 = sub_2758D1A40;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2758D1A40()
{
  v1 = v0[20];
  v2 = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7D8, &qword_2759C4698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0x725564616F6C6572;
  *(inited + 40) = 0xE90000000000006CLL;
  *(inited + 48) = sub_2759B8488();
  *(inited + 56) = v4;
  v5 = sub_2758A30D4(inited);
  swift_setDeallocating();
  sub_27586BF04(inited + 32, &qword_280A0FDF0, &unk_2759C46A0);
  v0[19] = v5;
  v6 = *(v2 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8);
  if (v6)
  {
    v7 = *(v2 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID);
    v8 = *(v2 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8);

    sub_2758CDE88(v7, v6, 0x6449656C646E7562, 0xE800000000000000);
  }

  v10 = v0[21];
  v9 = v0[22];
  v0[41] = sub_2758D284C(v0[31]);
  v11 = sub_2759B8508();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_task_alloc();
  v0[42] = v12;
  *v12 = v0;
  v12[1] = sub_2758D1C08;
  v13 = v0[22];

  return sub_275921A1C(v13);
}

uint64_t sub_2758D1C08()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 176);
  v4 = *v0;

  sub_27586BF04(v2, &unk_280A0EB10, &qword_2759C0740);

  return MEMORY[0x2822009F8](sub_2758D1D30, 0, 0);
}

uint64_t sub_2758D1D30()
{
  v1 = v0[40];
  sub_2759BA558();
  v2 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  if (v1)
  {
    v5 = v0[19];

    sub_27585A900(v4, v3);

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v6 = sub_2759B89A8();
    __swift_project_value_buffer(v6, qword_280A238A0);
    v7 = v1;
    v8 = sub_2759B8988();
    v9 = sub_2759BA648();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_275819000, v8, v9, "Error while loading LiftUI Manage Storage page: %@", v10, 0xCu);
      sub_27586BF04(v11, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v11, -1, -1);
      MEMORY[0x277C85860](v10, -1, -1);
    }

    v15 = v0[33];
    v14 = v0[34];
    v16 = v0[32];
    v44 = v0[31];
    v45 = v0[29];
    v17 = v0[27];
    v18 = v0[25];
    v47 = v0[24];
    v19 = v0[23];
    v20 = v0[21];

    v21 = *(v20 + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
    v15(v19, 1, 1, v16);
    v22 = v21;
    v23 = sub_2759BA4B8();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v21;
    sub_27587D460(0, 0, v19, &unk_2759C5908, v24);

    swift_unknownObjectRelease();
  }

  else
  {
    v26 = v0[34];
    v27 = v0[31];
    v28 = v0[29];
    v29 = v0[27];
    v46 = v0[24];
    v48 = v0[25];
    v30 = v0[23];
    v31 = v0[21];
    (v0[33])(v30, 1, 1, v0[32]);
    v32 = v28;
    v33 = v27;
    sub_2758755BC(v4, v3);
    v34 = v2;
    v35 = v31;
    v36 = sub_2759BA4B8();
    v37 = v0[19];
    v38 = swift_allocObject();
    v39 = MEMORY[0x277D85700];
    v38[2] = v36;
    v38[3] = v39;
    v38[4] = v4;
    v38[5] = v3;
    v38[6] = v34;
    v38[7] = v32;
    v38[8] = v33;
    v38[9] = v37;
    v38[10] = v35;
    sub_27587D460(0, 0, v30, &unk_2759C5920, v38);

    sub_27585A900(v4, v3);

    swift_unknownObjectRelease();
  }

  v41 = v0[22];
  v40 = v0[23];

  v42 = v0[1];

  return v42();
}

uint64_t sub_2758D20D4()
{
  v1 = v0[40];
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_275819000, v4, v5, "Error while loading LiftUI Manage Storage page: %@", v6, 0xCu);
    sub_27586BF04(v7, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v7, -1, -1);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[32];
  v26 = v0[31];
  v27 = v0[29];
  v13 = v0[27];
  v14 = v0[25];
  v28 = v0[24];
  v15 = v0[23];
  v16 = v0[21];

  v17 = *(v16 + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
  v11(v15, 1, 1, v12);
  v18 = v17;
  v19 = sub_2759BA4B8();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v17;
  sub_27587D460(0, 0, v15, &unk_2759C5908, v20);

  swift_unknownObjectRelease();

  v23 = v0[22];
  v22 = v0[23];

  v24 = v0[1];

  return v24();
}

void sub_2758D2358()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31[-v4];
  v6 = OBJC_IVAR___ICSManageStorageDrilldownController_account;
  v7 = *&v0[OBJC_IVAR___ICSManageStorageDrilldownController_account];
  if (v7 && (swift_beginAccess(), (v8 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v9 = v8;
    v10 = objc_allocWithZone(MEMORY[0x277D7F4B8]);
    v11 = v7;
    v12 = [v10 initWithNavigationController:v9 initialAction:0 account:v11];
    v13 = OBJC_IVAR___ICSManageStorageDrilldownController_ruiDelegate;
    v14 = *&v0[OBJC_IVAR___ICSManageStorageDrilldownController_ruiDelegate];
    *&v0[OBJC_IVAR___ICSManageStorageDrilldownController_ruiDelegate] = v12;

    v15 = *&v0[v13];
    if (v15)
    {
      [v15 setDelegate_];
      v16 = *&v0[v13];
      if (v16)
      {
        v17 = v16;
        v18 = sub_2759B84B8();
        [v17 loadURL:v18 postBody:0];
      }
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v19 = sub_2759B89A8();
    __swift_project_value_buffer(v19, qword_280A238A0);
    v20 = v0;
    v21 = sub_2759B8988();
    v22 = sub_2759BA648();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109376;
      *(v23 + 4) = *&v1[v6] != 0;
      *(v23 + 8) = 1024;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        v25 = 1;
      }

      else
      {
        v25 = 0;
      }

      *(v23 + 10) = v25;

      _os_log_impl(&dword_275819000, v21, v22, "Unable to load rui drilldown, account: %{BOOL}d navigationController: %{BOOL}d", v23, 0xEu);
      MEMORY[0x277C85860](v23, -1, -1);
    }

    else
    {

      v21 = v20;
    }

    v26 = *(&v20->isa + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
    v27 = sub_2759BA518();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    sub_2759BA4C8();
    v11 = v26;
    v28 = sub_2759BA4B8();
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = v26;
    sub_27587D460(0, 0, v5, &unk_2759C5A90, v29);
  }
}

uint64_t ManageStorageDrilldownController.handleDetailControllerClass(specifier:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = sub_2759BA518();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2759BA4C8();
  v8 = a1;
  v9 = v1;
  v10 = sub_2759BA4B8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  sub_27587D460(0, 0, v6, &unk_2759C5930, v11);
}

char *sub_2758D284C(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID];
  v51 = *&v1[OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8];
  if (!v51)
  {
LABEL_15:
    if (qword_2815ADD30 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

  v50 = *v2;
  v3 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v5 = *(a1 + v3);
  v47 = v1;
  v48 = v2;
  if (v5 >> 62)
  {
    v6 = sub_2759BA9E8();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
LABEL_14:

    v1 = v47;
    v2 = v48;
    goto LABEL_15;
  }

  v7 = 0;
  v49 = v5 & 0xC000000000000001;
  v1 = (v5 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v49)
    {
      v8 = MEMORY[0x277C846A0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v2 = *(*&v8[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
    v56[0] = v50;
    v56[1] = v51;
    MEMORY[0x28223BE20](v8);
    v46[2] = v56;

    v11 = sub_2758A34DC(sub_275875530, v46, v2);

    if (v11)
    {

      goto LABEL_24;
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_16:
  v12 = sub_2759B89A8();
  __swift_project_value_buffer(v12, qword_2815ADE70);
  v13 = v1;
  v14 = sub_2759B8988();
  v15 = sub_2759BA648();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v56[0] = v17;
    *v16 = 136315138;
    if (v2[1])
    {
      v18 = *v2;
      v19 = v2[1];
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    v20 = sub_2758937B8(v18, v19, v56);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_275819000, v14, v15, "ManageStorageDrilldownController unable to find app view model for bundleId: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x277C85860](v17, -1, -1);
    MEMORY[0x277C85860](v16, -1, -1);
  }

  v21 = sub_2758A2A88(MEMORY[0x277D84F90]);
  v22 = objc_allocWithZone(type metadata accessor for ManageStorageApp());
  v23 = ManageStorageApp.init(_:)(v21);
  v57 = &type metadata for DefaultApplicationRecordProvider;
  v58 = &off_28847F8A0;
  v24 = type metadata accessor for DefaultIconLoader();
  v25 = objc_allocWithZone(v24);
  __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  v54 = &type metadata for DefaultApplicationRecordProvider;
  v55 = &off_28847F8A0;
  sub_27586E058(v53, v25 + OBJC_IVAR___ICSDefaultIconLoader_applicationRecordProvider);
  v52.receiver = v25;
  v52.super_class = v24;
  v26 = objc_msgSendSuper2(&v52, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v56);
  v57 = v24;
  v58 = &off_28847F800;
  v56[0] = v26;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v56, v24);
  v28 = *(v24[-1].Description + 8);
  MEMORY[0x28223BE20](v27);
  v30 = (&v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  v54 = v24;
  v55 = &off_28847F800;
  v53[0] = v32;
  v33 = objc_allocWithZone(type metadata accessor for ManageStorageAppViewModel());
  v34 = v54;
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
  v36 = *(v34[-1].Description + 8);
  MEMORY[0x28223BE20](v35);
  v38 = (&v47 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v9 = sub_2758ACAE4(v23, -1, *v38, v33);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v56);
  v40 = v2[1];
  if (v40)
  {
    v41 = *v2;
    v42 = *&v9[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEB0, &qword_2759C2620);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2759C17A0;
    *(v43 + 32) = v41;
    *(v43 + 40) = v40;
    v44 = *(v42 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
    *(v42 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds) = v43;

LABEL_24:
  }

  return v9;
}

uint64_t sub_2758D2E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758D2EB4, 0, 0);
}

uint64_t sub_2758D2EB4()
{
  v1 = v0[6];
  v20 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_2759BA518();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v8 = v2;
  sub_2758CE094(v1, &unk_2759C5A40, v7);
  sub_27586BF04(v1, &unk_280A0E510, &qword_2759C33C0);
  v6(v1, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v10 = v3;
  sub_2758CE094(v1, &unk_2759C5A50, v9);
  sub_27586BF04(v1, &unk_280A0E510, &qword_2759C33C0);
  v11 = *(v20 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8);
  if (v11 && (*(v20 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID) == 0xD000000000000010 && v11 == 0x80000002759DF530 || (sub_2759BAAC8() & 1) != 0))
  {
    v12 = v0[6];
    v13 = v0[4];
    v14 = v0[2];
    v6(v12, 1, 1, v5);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v16 = v13;
    sub_2758CE094(v12, &unk_2759C5A60, v15);
    sub_27586BF04(v12, &unk_280A0E510, &qword_2759C33C0);
  }

  v17 = v0[6];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2758D3138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return sub_27588A44C(1);
}

uint64_t sub_2758D31CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(0, 0);
}

uint64_t sub_2758D3268()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return ManageStorageAppsListViewModel.fetchHealthEnabled()();
}

uint64_t sub_2758D32FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = v18;
  v8[44] = v19;
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[38] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DE0, &unk_2759CF4C0) - 8) + 64) + 15;
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v10 = type metadata accessor for ManageStorageLiftUIDrilldownView();
  v8[47] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE70, &qword_2759C59B0);
  v8[50] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  sub_2759BA4C8();
  v8[53] = sub_2759BA4B8();
  v15 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758D3470, v15, v14);
}

uint64_t sub_2758D3470()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 344);
  v44 = *(v0 + 328);
  v45 = *(v0 + 336);
  v43 = *(v0 + 320);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);

  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE78, &qword_2759CEB20);
  v7 = sub_2758D5E48();
  *(v0 + 16) = v4;
  *(v0 + 48) = v7;
  v8 = sub_2759B8C08();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v11 = sub_2759B8BF8();
  *(v0 + 248) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E7F0, &unk_2759C1230);
  sub_2759B9D58();
  v12 = *(v0 + 120);
  v41 = *(v0 + 128);
  v13 = *(v2 + 36);
  *(v3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *(v0 + 136) = v6;
  *(v0 + 144) = v5;
  sub_2758755BC(v6, v5);
  sub_2759B9D58();
  v14 = *(v0 + 112);
  *v3 = *(v0 + 96);
  *(v3 + 16) = v14;
  *(v0 + 256) = v43;
  type metadata accessor for ManageStorageAppViewModel();
  v15 = v43;
  sub_2759B9D58();
  v16 = *(v0 + 160);
  *(v3 + 24) = *(v0 + 152);
  *(v3 + 32) = v16;
  *(v0 + 264) = v44;
  v17 = v44;
  sub_2759B9D58();

  *(v3 + 40) = *(v0 + 168);
  *(v0 + 272) = v45;
  type metadata accessor for ManageStorageAppsListViewModel(0);
  v18 = v45;
  sub_2759B9D58();
  v19 = *(v0 + 192);
  *(v3 + 56) = *(v0 + 184);
  *(v3 + 64) = v19;
  *(v0 + 280) = v11;

  sub_2759B9D58();
  v20 = *(v0 + 200);
  v21 = *(v0 + 208);
  *(v3 + 72) = v20;
  *(v3 + 80) = v21;
  *(v0 + 216) = v20;
  *(v0 + 224) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE98, &unk_2759C59F0);
  sub_2759B9D68();
  v40 = *(v0 + 288);
  sub_27586FBC8(v0 + 16, v0 + 56, &qword_280A0FEA0, &qword_2759CF500);
  v22 = *(v0 + 80);
  v23 = *(v0 + 368);
  if (v22)
  {
    v24 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v22);

    sub_2759B8B08();
    v25 = sub_2759B8AF8();
    (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {

    sub_27586BF04(v0 + 56, &qword_280A0FEA0, &qword_2759CF500);
    v25 = sub_2759B8AF8();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  }

  v26 = *(v0 + 416);
  v38 = *(v0 + 400);
  v39 = *(v0 + 408);
  v46 = *(v0 + 392);
  v37 = *(v0 + 384);
  v27 = *(v0 + 360);
  v42 = *(v0 + 368);
  v28 = *(v0 + 352);
  sub_2759B8C28();

  *(v0 + 232) = v20;
  *(v0 + 240) = v21;
  sub_2759B9D68();
  v29 = *(v0 + 296);

  sub_2758F649C();
  sub_2759BA208();

  sub_2759B8AF8();
  (*(*(v25 - 8) + 56))(v27, 0, 1, v25);
  sub_2759B8C28();

  sub_27586BF04(v0 + 16, &qword_280A0FEA0, &qword_2759CF500);
  sub_2758D5EC4(v37, v46);
  Strong = swift_unknownObjectWeakLoadStrong();
  KeyPath = swift_getKeyPath();
  sub_2758D5EC4(v46, v26);
  v32 = (v26 + *(v38 + 36));
  *v32 = KeyPath;
  v32[1] = Strong;
  sub_27586FBC8(v26, v39, &qword_280A0FE70, &qword_2759C59B0);
  v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEA8, &unk_2759C5A28));
  v34 = sub_2759B9508();
  ManageStorageDrilldownController.present(_:)(v34);

  sub_27586BF04(v26, &qword_280A0FE70, &qword_2759C59B0);

  v35 = *(v0 + 8);

  return v35();
}

Swift::Void __swiftcall ManageStorageDrilldownController.present(_:)(UIViewController *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_280A238A0);
    v11 = sub_2759B8988();
    v12 = sub_2759BA648();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_275819000, v11, v12, "ICSManageStorageViewController: presenting from PSController", v13, 2u);
      MEMORY[0x277C85860](v13, -1, -1);
    }

    [v9 showController:a1 animate:1];
LABEL_13:
    sub_2758D40F0();

    goto LABEL_14;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v9 = v14;
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_280A238A0);
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_275819000, v16, v17, "ICSManageStorageViewController: no presenting controller available. Falling back to navigation controller", v18, 2u);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    [v9 pushViewController:a1 animated:1];
    goto LABEL_13;
  }

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v25 = sub_2759B89A8();
  __swift_project_value_buffer(v25, qword_280A238A0);
  v26 = sub_2759B8988();
  v27 = sub_2759BA648();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_275819000, v26, v27, "ICSManageStorageViewController: no presenting controller or navigation controller available", v28, 2u);
    MEMORY[0x277C85860](v28, -1, -1);
  }

LABEL_14:
  v19 = *(v2 + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
  v20 = sub_2759BA518();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_2759BA4C8();
  v21 = v19;
  v22 = sub_2759BA4B8();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v19;
  sub_27587D460(0, 0, v7, &unk_2759C5938, v23);
}

uint64_t sub_2758D3DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v5[5] = sub_2759BA4C8();
  v5[6] = sub_2759BA4B8();
  v8 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758D3EB8, v8, v7);
}

uint64_t sub_2758D3EB8()
{
  v1 = v0[6];
  v2 = v0[2];

  [v2 detailControllerClass];
  v3 = CreateDetailControllerInstanceWithClass();
  if (v3)
  {
    v4 = v0[3];
    v5 = v3;
    [v3 setSpecifier_];
    v6 = v5;
    ManageStorageDrilldownController.present(_:)(v6);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_2815ADE70);
    v8 = sub_2759B8988();
    v9 = sub_2759BA648();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_275819000, v8, v9, "Unable to push detail controller, no detail controller", v10, 2u);
      MEMORY[0x277C85860](v10, -1, -1);
    }

    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];

    v14 = *(v13 + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
    v15 = sub_2759BA518();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = v14;
    v17 = sub_2759BA4B8();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v14;
    sub_27587D460(0, 0, v11, &unk_2759C59A0, v18);
  }

  v20 = v0[4];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2758D40F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v6 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID);
  v5 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8);
  v7 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_analyticsController);
  if (v5)
  {

    sub_2759BA4D8();
    v8 = sub_2759BA518();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v9;
    *(v10 + 40) = v6;
    *(v10 + 48) = v5;
    *(v10 + 56) = 6665;
    *(v10 + 58) = 1;
    *(v10 + 64) = 0;
    *(v10 + 72) = 1;
    *(v10 + 80) = 0;
    *(v10 + 88) = 0;
    *(v10 + 96) = -1;

    sub_275931D20(0, 0, v4, &unk_2759C5998, v10);
  }

  else
  {
    sub_2759BA4D8();
    v11 = sub_2759BA518();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v12;
    *(v13 + 40) = xmmword_2759C5870;
    *(v13 + 56) = 6666;
    *(v13 + 58) = 1;
    *(v13 + 64) = 0;
    *(v13 + 72) = 1;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0;
    *(v13 + 96) = -1;
    sub_275931D20(v6, 0, v4, &unk_2759C4530, v13);
  }

  return sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
}

uint64_t sub_2758D4394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_2759BA4C8();
  *(v4 + 64) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758D442C, v6, v5);
}

uint64_t sub_2758D442C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  if (!v2)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:
    sub_27586BF04(v0 + 16, &qword_280A0ED70, &qword_2759C6C60);
    goto LABEL_10;
  }

  if ([*(v0 + 56) propertyForKey_])
  {
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  *(v0 + 16) = v8;
  *(v0 + 32) = v9;
  if (!*(v0 + 40))
  {
    goto LABEL_9;
  }

  sub_275861AF8(0, &qword_280A0FEB8, 0x277D75B48);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    v5 = [objc_opt_self() systemGrayColor];
    [v4 setColor_];

    [v4 startAnimating];
    [v3 setAccessoryView_];
  }

LABEL_10:
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2758D45E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_2759BA4C8();
  *(v4 + 64) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758D4678, v6, v5);
}

uint64_t sub_2758D4678()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  if (!v2)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_10:
    sub_27586BF04(v0 + 16, &qword_280A0ED70, &qword_2759C6C60);
    goto LABEL_18;
  }

  v3 = *(v0 + 56);
  if ([v3 propertyForKey_])
  {
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  *(v0 + 16) = v8;
  *(v0 + 32) = v9;
  if (!*(v0 + 40))
  {
    goto LABEL_10;
  }

  sub_275861AF8(0, &qword_280A0FEB8, 0x277D75B48);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 48);
    if ([v3 propertyForKey_])
    {
      sub_2759BA818();
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    *(v0 + 16) = v8;
    *(v0 + 32) = v9;
    if (*(v0 + 40))
    {
      sub_275861AF8(0, &qword_280A0FEC0, 0x277D75D18);
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 48);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      sub_27586BF04(v0 + 16, &qword_280A0ED70, &qword_2759C6C60);
      v5 = 0;
    }

    [v4 setAccessoryView_];
  }

LABEL_18:
  v6 = *(v0 + 8);

  return v6();
}

uint64_t ManageStorageDrilldownController.loadFinished(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238A0);
  v7 = sub_2759B8988();
  v8 = sub_2759BA668();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_275819000, v7, v8, "Storage used VC load finished with success.", v9, 2u);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
  v11 = sub_2759BA518();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_2759BA4C8();
  v12 = v10;
  v13 = sub_2759BA4B8();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v10;
  sub_27587D460(0, 0, v5, &unk_2759C5940, v14);

  return sub_2758D40F0();
}

void ManageStorageDrilldownController.loadFailed(_:withError:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v9 = sub_2759B89A8();
  __swift_project_value_buffer(v9, qword_280A238A0);
  v10 = a2;
  v11 = sub_2759B8988();
  v12 = sub_2759BA648();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    if (a2)
    {
      v15 = a2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v13 + 4) = v16;
    *v14 = v17;
    _os_log_impl(&dword_275819000, v11, v12, "Storage used VC load failed with error %@", v13, 0xCu);
    sub_27586BF04(v14, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v14, -1, -1);
    MEMORY[0x277C85860](v13, -1, -1);
  }

  v18 = *(v3 + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
  v19 = sub_2759BA518();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_2759BA4C8();
  v20 = v18;
  v21 = sub_2759BA4B8();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v18;
  sub_27587D460(0, 0, v8, &unk_2759C5948, v22);
}

id ManageStorageDrilldownController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManageStorageDrilldownController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2758D503C(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_2758D506C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2759BA848() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2759BABD8();

      sub_2759BA328();
      v13 = sub_2759BAC08();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2758D521C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2759BA848() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_2759BA298();
      sub_2759BABD8();
      v11 = v10;
      sub_2759BA328();
      v12 = sub_2759BAC08();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

id sub_2758D53E4(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID];
  *v8 = 0;
  v8[1] = 0;
  v37 = OBJC_IVAR___ICSManageStorageDrilldownController_account;
  *&v3[OBJC_IVAR___ICSManageStorageDrilldownController_account] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier] = 0;
  *&v3[OBJC_IVAR___ICSManageStorageDrilldownController_ruiDelegate] = 0;
  v9 = &v3[OBJC_IVAR___ICSManageStorageDrilldownController_liftUIDataSource];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR___ICSManageStorageDrilldownController_anyLoadingTask];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = &v3[OBJC_IVAR___ICSManageStorageDrilldownController_dataController];
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v12 = sub_2759B89A8();
  __swift_project_value_buffer(v12, qword_280A238A0);

  v13 = sub_2759B8988();
  v14 = sub_2759BA668();

  if (os_log_type_enabled(v13, v14))
  {
    v36 = a1;
    v15 = swift_slowAlloc();
    v35 = ObjectType;
    v16 = swift_slowAlloc();
    v39[0] = v16;
    *v15 = 136315138;
    v34 = v11;
    if (a2)
    {
      v17 = v36;
    }

    else
    {
      v17 = 7104878;
    }

    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_2758937B8(v17, v18, v39);

    *(v15 + 4) = v19;
    v11 = v34;
    _os_log_impl(&dword_275819000, v13, v14, "ManageStorageDrilldownController initializing for bundleID: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v20 = v16;
    ObjectType = v35;
    MEMORY[0x277C85860](v20, -1, -1);
    v21 = v15;
    a1 = v36;
    MEMORY[0x277C85860](v21, -1, -1);
  }

  v22 = v8[1];
  *v8 = a1;
  v8[1] = a2;

  v23 = *&v4[v37];
  *&v4[v37] = a3;
  v24 = a3;

  swift_unknownObjectWeakAssign();
  objc_allocWithZone(type metadata accessor for ICSAnalyticsController());
  v25 = v24;
  v26 = sub_275935F68(a3);

  *&v4[OBJC_IVAR___ICSManageStorageDrilldownController_analyticsController] = v26;
  if (a3)
  {
    v27 = objc_allocWithZone(sub_2759B8698());
    v28 = v25;
    v29 = sub_2759B8688();
    v30 = sub_2758D63D0();
    swift_beginAccess();
    v31 = *v9;
    *v9 = v29;
    v9[1] = v30;
    swift_unknownObjectRelease();
    v32 = [objc_allocWithZone(MEMORY[0x277D7F338]) initWithAccount_];
    v39[3] = sub_275861AF8(0, &qword_280A0FED8, 0x277D7F338);
    v39[4] = &protocol witness table for ICQCloudStorageDataController;

    v39[0] = v32;
    swift_beginAccess();
    sub_2758CE724(v39, v11, &qword_280A0FD98, &qword_2759C5888);
    swift_endAccess();
  }

  v40.receiver = v4;
  v40.super_class = ObjectType;
  return objc_msgSendSuper2(&v40, sel_init);
}

uint64_t sub_2758D57A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758D4394(a1, v4, v5, v6);
}

uint64_t sub_2758D585C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_2758CFED4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2758D5930(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758D45E0(a1, v4, v5, v6);
}

uint64_t sub_2758D59E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758A57F0(a1, v4, v5, v6);
}

uint64_t sub_2758D5A98(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_27585F7A0;

  return sub_2758D2E14(a1, a2, v6, v7, v8);
}

uint64_t sub_2758D5B5C(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_27585F7A0;

  return sub_2758D32FC(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_2758D5C50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758D3DE4(a1, v4, v5, v7, v6);
}

void _s14iCloudSettings32ManageStorageDrilldownControllerC11loadStartedyyypSgF_0()
{
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v0 = sub_2759B89A8();
  __swift_project_value_buffer(v0, qword_280A238A0);
  oslog = sub_2759B8988();
  v1 = sub_2759BA668();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_275819000, oslog, v1, "Storage used VC loading started", v2, 2u);
    MEMORY[0x277C85860](v2, -1, -1);
  }
}

unint64_t sub_2758D5E48()
{
  result = qword_280A0FE80;
  if (!qword_280A0FE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FE78, &qword_2759CEB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FE80);
  }

  return result;
}

uint64_t sub_2758D5EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageLiftUIDrilldownView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758D5F28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27585F7A0;

  return sub_2758D3138();
}

uint64_t sub_2758D5FDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27585F7A0;

  return sub_2758D31CC();
}

uint64_t sub_2758D6090()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27585F7A0;

  return sub_2758D3268();
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2758D61CC(uint64_t a1)
{
  v17 = *(v1 + 24);
  v18 = *(v1 + 16);
  v15 = *(v1 + 40);
  v16 = *(v1 + 32);
  v14 = *(v1 + 48);
  v4 = *(v1 + 58);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = *(v1 + 57);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_27585A7E4;

  return sub_275934914(a1, v18, v17, v16, v15, v14, v11, v10);
}

uint64_t sub_2758D62E4(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEC8, &qword_2759C5AA8) - 8) + 80);

  return sub_2758CF708(a1, a2);
}

uint64_t objectdestroy_55Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

unint64_t sub_2758D63D0()
{
  result = qword_280A0FED0;
  if (!qword_280A0FED0)
  {
    sub_2759B8698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FED0);
  }

  return result;
}

uint64_t sub_2758D6454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEE0, &qword_2759C5B68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v16 = a1;
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEE8, &qword_2759C5B70);
  sub_27589B02C(&qword_280A0FEF0, &qword_280A0FEE8, &qword_2759C5B70);
  sub_2759B9938();
  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_2759B83C8();
  v13 = v12;

  v18 = v11;
  v19 = v13;
  sub_27589B02C(&qword_280A0FEF8, &qword_280A0FEE0, &qword_2759C5B68);
  sub_27589F2D4();
  sub_2759B9AC8();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2758D66B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v42 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF00, &qword_2759C5B78);
  v5 = *(v41 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v41);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF08, &qword_2759C5B80);
  v40 = *(v12 - 8);
  v13 = v40;
  v14 = *(v40 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v45 = a1;
  v46 = a2;
  sub_2758D70D4(&v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF10, &qword_2759C5B88);
  sub_2758D7594();
  v39 = v19;
  sub_2759B9F48();
  v43 = a1;
  v44 = a2;
  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = sub_2759B83C8();
  v24 = v23;

  v47 = v22;
  v48 = v24;
  sub_27589F2D4();
  v47 = sub_2759B99C8();
  v48 = v25;
  v49 = v26 & 1;
  v50 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF40, &qword_2759C5BA0);
  sub_27589B02C(&qword_280A0FF48, &qword_280A0FF40, &qword_2759C5BA0);
  v37 = v11;
  sub_2759B9F48();
  v28 = *(v13 + 16);
  v38 = v17;
  v28(v17, v19, v12);
  v29 = v5[2];
  v30 = v11;
  v31 = v41;
  v29(v9, v30, v41);
  v32 = v42;
  v28(v42, v17, v12);
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF50, &qword_2759C5BA8) + 48)];
  v29(v33, v9, v31);
  v34 = v5[1];
  v34(v37, v31);
  v35 = *(v40 + 8);
  v35(v39, v12);
  v34(v9, v31);
  return (v35)(v38, v12);
}

uint64_t sub_2758D6B0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF58, &qword_2759C5BB0);
  sub_2759B9D68();
  sub_2759BA4C8();

  v4 = sub_2759BA4B8();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v15;

  v7 = sub_2759BA4B8();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v15;
  sub_2759B9EA8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF70, &qword_2759C5BC0);
  sub_27589B02C(&qword_280A0FF78, &qword_280A0FF70, &qword_2759C5BC0);
  sub_2759B9E18();
  sub_2759B9D68();
  swift_getKeyPath();
  sub_2758D76B0();
  sub_2759B8638();

  v9 = *(v15 + 40);
  v10 = [v9 isAppCellularDataModificationAllowed];

  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v10 ^ 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF10, &qword_2759C5B88);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_2758D7708;
  v14[2] = v12;
  return result;
}

uint64_t sub_2758D6DA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF60, &qword_2759C5BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF88, qword_2759C5C20);
  sub_27589B02C(&qword_280A0FF68, &qword_280A0FF60, &qword_2759C5BB8);
  sub_27589B02C(&qword_280A0FF90, &qword_280A0FF88, qword_2759C5C20);

  return sub_2759B9D48();
}

uint64_t sub_2758D6EDC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2759B83C8();

  sub_27589F2D4();
  v4 = sub_2759B99C8();
  v6 = v5;
  *a1 = v4;
  *(a1 + 8) = v5;
  v8 = v7 & 1;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_27589F3E4(v4, v5, v7 & 1);

  sub_27589F328(v4, v6, v8);
}

uint64_t sub_2758D7014()
{
  v0 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v1 = sub_2759BA258();
  [v0 initWithType_];

  v2 = [objc_opt_self() imageDescriptorNamed_];

  return sub_2759B8888();
}

uint64_t sub_2758D70D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2759BA258();
  v3 = SFLocalizableWAPIStringKeyForKey();

  sub_2759BA298();
  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2759B83C8();

  sub_27589F2D4();
  result = sub_2759B99C8();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_2758D7208()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF58, &qword_2759C5BB0);
  sub_2759B9D68();
  sub_2759BA4C8();

  v0 = sub_2759BA4B8();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D85700];
  v1[2] = v0;
  v1[3] = v2;
  v1[4] = v6;

  v3 = sub_2759BA4B8();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v6;
  sub_2759B9EA8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF60, &qword_2759C5BB8);
  sub_27589B02C(&qword_280A0FF68, &qword_280A0FF60, &qword_2759C5BB8);
  return sub_2759B9E18();
}

__n128 sub_2758D73C4@<Q0>(void (*a1)(__n128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2759B9418();
  a1(&v10);
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v8 = v14;
  result = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  return result;
}

uint64_t sub_2758D7444@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2759B83C8();

  sub_27589F2D4();
  v4 = sub_2759B99C8();
  v6 = v5;
  *a1 = v4;
  *(a1 + 8) = v5;
  v8 = v7 & 1;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_27589F3E4(v4, v5, v7 & 1);

  sub_27589F328(v4, v6, v8);
}

unint64_t sub_2758D7594()
{
  result = qword_280A0FF18;
  if (!qword_280A0FF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FF10, &qword_2759C5B88);
    sub_27589B02C(&qword_280A0FF20, &qword_280A0FF28, &qword_2759C5B90);
    sub_27589B02C(&qword_280A0FF30, &qword_280A0FF38, &qword_2759C5B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FF18);
  }

  return result;
}

uint64_t sub_2758D7678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2758D7208();
}

uint64_t sub_2758D7680@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_275961EA0(v1[4], a1);
}

uint64_t sub_2758D7698@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_275961AC4(v1[4], a1);
}

unint64_t sub_2758D76B0()
{
  result = qword_280A0FF80;
  if (!qword_280A0FF80)
  {
    type metadata accessor for ICSDriveCellularViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FF80);
  }

  return result;
}

uint64_t sub_2758D7710()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14iCloudSettings17DeviceOrientation_listener;
  if (*(v0 + OBJC_IVAR____TtC14iCloudSettings17DeviceOrientation_listener))
  {

    sub_2759B8CA8();
  }

  v3 = OBJC_IVAR____TtC14iCloudSettings17DeviceOrientation__orientation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FFC8, &unk_2759C5D20);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = *(v1 + v2);

  v6 = *(*v1 + 48);
  v7 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceOrientation()
{
  result = qword_280A0FFA8;
  if (!qword_280A0FFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758D7844()
{
  sub_2758D78DC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2758D78DC()
{
  if (!qword_280A0FFB8)
  {
    v0 = sub_2759B8D08();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0FFB8);
    }
  }
}

unint64_t sub_2758D7940()
{
  result = qword_280A0FFC0;
  if (!qword_280A0FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FFC0);
  }

  return result;
}

uint64_t sub_2758D7994@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2759B8CC8();
  *a1 = result;
  return result;
}

unint64_t iCloudPlusFeature.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x505F4547414E414DLL;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x535F44554F4C4349;
  }

  v4 = 0x5F594D5F45444948;
  if (v1 != 3)
  {
    v4 = 0x5F4D55494D455250;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x535F594C494D4146;
  if (v1 != 1)
  {
    v5 = 0x5F45544156495250;
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

iCloudSettings::iCloudPlusFeature_optional __swiftcall iCloudPlusFeature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2759BAA48();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2758D7B60(uint64_t result)
{
  v2 = *v1;
  if (v2 != 5)
  {
    if (v2 == 2)
    {
      return [objc_opt_self() isCloudPrivateRelayAllowed] ^ 1;
    }

    return 0;
  }

  if (!result)
  {
    return result;
  }

  v3 = result;
  if ([v3 aa_needsEmailConfiguration])
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_2815ADE70);
    v5 = sub_2759B8988();
    v6 = sub_2759BA668();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_18;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "iCloud mail is not yet setup, will not show CED tile.";
    goto LABEL_17;
  }

  v9 = objc_opt_self();
  v3 = v3;
  v10 = [v9 sharedManager];
  v11 = [v10 shouldShowDataclass:*MEMORY[0x277CB89C8] forAccount:v3];

  if (v11)
  {

    return 0;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v12 = sub_2759B89A8();
  __swift_project_value_buffer(v12, qword_2815ADE70);
  v5 = sub_2759B8988();
  v6 = sub_2759BA668();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "iCloud mail is not allowed on this account type, will not show CED tile.";
LABEL_17:
    _os_log_impl(&dword_275819000, v5, v6, v8, v7, 2u);
    MEMORY[0x277C85860](v7, -1, -1);
  }

LABEL_18:

  return 1;
}

uint64_t iCloudPlusFeature.title.getter()
{
  *v0;
  *v0;
  *v0;
  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2759B83C8();

  return v3;
}

uint64_t iCloudPlusFeature.cachedImage.getter()
{
  result = 0;
  v2 = *v0;
  if (v2 < 4 || v2 == 5)
  {
    type metadata accessor for iCloudHomeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    return sub_2759B9D38();
  }

  return result;
}

unint64_t iCloudPlusFeature.utTypeIdentifier.getter()
{
  v1 = 0xD000000000000021;
  v2 = *v0;
  v3 = 0xD000000000000035;
  v4 = 0xD000000000000029;
  if (v2 != 5)
  {
    v3 = 0xD000000000000029;
  }

  v5 = 0xD00000000000002FLL;
  if (v2 == 3)
  {
    v4 = 0xD00000000000002FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v5 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2758D820C()
{
  result = qword_280A0FFD0;
  if (!qword_280A0FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FFD0);
  }

  return result;
}

uint64_t sub_2758D826C()
{
  *v0;
  *v0;
  *v0;
  sub_2759BA328();
}

void sub_2758D83D4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000004E414CLL;
  v4 = 0x505F4547414E414DLL;
  v5 = 0x80000002759DCD20;
  v6 = 0xD000000000000013;
  if (v2 != 5)
  {
    v6 = 0x535F44554F4C4349;
    v5 = 0xEE00454741524F54;
  }

  v7 = 0xED00004C49414D45;
  v8 = 0x5F594D5F45444948;
  if (v2 != 3)
  {
    v8 = 0x5F4D55494D455250;
    v7 = 0xEB00000000505041;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00474E49524148;
  v10 = 0x535F594C494D4146;
  if (v2 != 1)
  {
    v10 = 0x5F45544156495250;
    v9 = 0xED000059414C4552;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

unint64_t sub_2758D84FC()
{
  result = qword_280A0FFD8;
  if (!qword_280A0FFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FFE0, &qword_2759C5DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FFD8);
  }

  return result;
}

uint64_t sub_2758D85BC(const char *a1, uint64_t a2, char a3)
{
  v27 = a1;
  v4 = sub_2759B8938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2759B88F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2759B8918();
  sub_2759B8948();
  v26 = sub_2759BA708();
  result = sub_2759BA7B8();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v13, v9);
  }

  if ((a3 & 1) == 0)
  {
    if (v27)
    {
LABEL_9:

      sub_2759B8978();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
      {
        v16 = 0;
        v17 = 0;
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v18 = "%{public}s";
        v17 = 2;
        v16 = 1;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = v17;
      *(v19 + 1) = v16;
      *(v19 + 2) = 2082;
      v21 = sub_2759BA8E8();
      v23 = sub_2758937B8(v21, v22, &v28);

      *(v19 + 4) = v23;
      v24 = sub_2759B88E8();
      _os_signpost_emit_with_name_impl(&dword_275819000, v14, v26, v24, v27, v18, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x277C85860](v20, -1, -1);
      MEMORY[0x277C85860](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v27 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2758D88D0(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_2759B88F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2759B8918();
  v13 = sub_2759BA718();
  result = sub_2759BA7B8();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v13;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446210;
      v17 = sub_2759BA8E8();
      v19 = sub_2758937B8(v17, v18, &v26);

      *(v15 + 4) = v19;
      v20 = sub_2759B88E8();
      _os_signpost_emit_with_name_impl(&dword_275819000, v12, v25, v20, a1, "%{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x277C85860](v16, -1, -1);
      MEMORY[0x277C85860](v15, -1, -1);
LABEL_10:

      (*(v8 + 16))(v11, a4, v7);
      v21 = sub_2759B8968();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      return sub_2759B8958();
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v27;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t TaskIdentifier.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x277C840E0](*v0, v0[1]);
  MEMORY[0x277C840E0](2108704, 0xE300000000000000);
  MEMORY[0x277C840E0](v1, v2);
  MEMORY[0x277C840E0](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_2758D8B7C()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x277C840E0](*v0, v0[1]);
  MEMORY[0x277C840E0](2108704, 0xE300000000000000);
  MEMORY[0x277C840E0](v1, v2);
  MEMORY[0x277C840E0](93, 0xE100000000000000);
  return 91;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2758D8C08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2758D8C50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id UITableViewCell.setSeparatorInsetToLayoutMargins(additionalPadding:)()
{
  [v0 layoutMargins];

  return [v0 setSeparatorInset_];
}

void sub_2758D8CF4(void *a1)
{
  v1 = a1;
  [v1 layoutMargins];
  [v1 setSeparatorInset_];
}

uint64_t sub_2758D8D5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = sub_2759B87B8();
  sub_2758DC850(&qword_280A0EFC0, MEMORY[0x277D402D0]);
  v13[0] = v3;
  v13[1] = v5;
  v13[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v13);

  sub_2759B9B18();

  v6 = OpaqueTypeMetadata2;
  v7 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v13, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v8 = sub_2759B8798();
  sub_2758DC850(&unk_280A10070, MEMORY[0x277D40290]);
  v10[0] = v6;
  v10[1] = v8;
  v10[2] = v7;
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v10);

  sub_2759B9B18();

  __swift_project_boxed_opaque_existential_1(v10, v11);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_2758D90A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B87B8();
  v8[3] = v4;
  v8[4] = &off_288480E78;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  v6 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_appendSettingsNavigationPath;
  swift_beginAccess();
  sub_2758CE724(v8, a2 + v6, &qword_280A10028, &qword_2759CCFB0);
  return swift_endAccess();
}

uint64_t sub_2758D9188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C60, &qword_2759C6060);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2759B8798();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_navigationMode;
  swift_beginAccess();
  sub_2758CE724(v7, a2 + v10, &unk_280A11C60, &qword_2759C6060);
  return swift_endAccess();
}

uint64_t sub_2758D92CC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10008, &qword_2759C5F68);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758D9398, 0, 0);
}

uint64_t sub_2758D9398()
{
  v20 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_attributes;
  swift_beginAccess();
  if ((*(v1 + 48))(v3 + v4, 1, v2))
  {
    v18 = sub_2758A289C(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = v0[6];
    (*(v0[9] + 16))(v0[10], v3 + v4, v0[8]);
    sub_2758DC754();
    sub_2759B8AA8();
    (*(v0[9] + 8))(v0[10], v0[8]);
    v18 = v0[5];
  }

  v0[11] = v18;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A23900);

  v7 = sub_2759B8988();
  v8 = sub_2759BA668();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    sub_2759B8AF8();
    v11 = sub_2759BA1E8();
    v13 = sub_2758937B8(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_275819000, v7, v8, "Pushing backup controller with attributes %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_2758D9664;
  v15 = v0[6];
  v16 = v0[7];

  return sub_2758DA144(v15);
}

uint64_t sub_2758D9664(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_2758D9764, 0, 0);
}

uint64_t sub_2758D9764()
{
  v1 = *(v0 + 104);
  v2 = sub_2758DB920(*(v0 + 88));

  if (v1)
  {
    v3 = *(v0 + 104);
    v4 = v2;
    v5 = sub_2759BA258();
    [v3 setProperty:v4 forKey:v5];
  }

  v6 = *(v0 + 80);

  v7 = *(v0 + 8);
  v8 = *(v0 + 104);

  return v7(v8);
}

uint64_t sub_2758D9850(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C61636F4C7369;
  }

  else
  {
    v4 = 0x7475626972747461;
  }

  if (v3)
  {
    v5 = 0xEA00000000007365;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C61636F4C7369;
  }

  else
  {
    v6 = 0x7475626972747461;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEA00000000007365;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2759BAAC8();
  }

  return v9 & 1;
}

uint64_t sub_2758D98FC()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2758D9984()
{
  *v0;
  sub_2759BA328();
}

uint64_t sub_2758D99F8()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2758D9A7C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2758D9ADC(uint64_t *a1@<X8>)
{
  v2 = 0x7475626972747461;
  if (*v1)
  {
    v2 = 0x6C61636F4C7369;
  }

  v3 = 0xEA00000000007365;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2758D9B20()
{
  if (*v0)
  {
    result = 0x6C61636F4C7369;
  }

  else
  {
    result = 0x7475626972747461;
  }

  *v0;
  return result;
}

uint64_t sub_2758D9B60@<X0>(char *a1@<X8>)
{
  v2 = sub_2759BAA48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2758D9BC4(uint64_t a1)
{
  v2 = sub_2758DC898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2758D9C00(uint64_t a1)
{
  v2 = sub_2758DC898();

  return MEMORY[0x2821FE720](a1, v2);
}

id *sub_2758D9C3C(uint64_t *a1)
{
  v3 = v1;
  v45 = *v3;
  v46 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10090, &qword_2759C6140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = &v35 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10098, &qword_2759C6148);
  v38 = *(v41 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v41);
  v13 = &v35 - v12;
  v3[2] = 0;
  v14 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_attributes;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10008, &qword_2759C5F68);
  v16 = *(*(v15 - 8) + 56);
  v47 = v14;
  v16(v3 + v14, 1, 1, v15);
  v42 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_store;
  *(v3 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_store) = 0;
  v43 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_localStore;
  *(v3 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_localStore) = 0;
  v17 = v3 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_appendSettingsNavigationPath;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v18 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_navigationMode;
  v19 = sub_2759B8798();
  v20 = *(*(v19 - 8) + 56);
  v44 = v18;
  v20(v3 + v18, 1, 1, v19);
  v22 = a1[3];
  v21 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2758DC898();
  v23 = v46;
  sub_2759BAC18();
  if (v23)
  {
    v24 = v47;

    sub_27586BF04(v3 + v24, &qword_280A10090, &qword_2759C6140);
    v30 = *(v3 + v42);

    v31 = *(v3 + v43);

    sub_27586BF04(v17, &qword_280A10028, &qword_2759CCFB0);
    sub_27586BF04(v3 + v44, &unk_280A11C60, &qword_2759C6060);
    v32 = *(*v3 + 12);
    v33 = *(*v3 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v37;
    v48 = 0;
    sub_2758DC8EC(&qword_280A100A8, &qword_280A10008, &qword_2759C5F68);
    sub_2759BAA68();
    v26 = v40;
    v27 = v47;
    swift_beginAccess();
    sub_2758CE724(v26, v3 + v27, &qword_280A10090, &qword_2759C6140);
    swift_endAccess();
    v48 = 1;
    sub_2758DC8EC(&qword_280A100B0, &qword_280A0FC68, &qword_2759C7830);
    v28 = v39;
    v29 = v41;
    sub_2759BAA78();
    (*(v38 + 8))(v13, v29);
    (*(v36 + 32))(v3 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_isLocal, v28, v25);
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return v3;
}

uint64_t sub_2758DA144(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758DA210, 0, 0);
}

uint64_t sub_2758DA210()
{
  v25 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (!v2)
  {
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v9 = sub_2759B89A8();
    __swift_project_value_buffer(v9, qword_280A23900);
    v10 = sub_2759B8988();
    v11 = sub_2759BA648();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2758937B8(0xD000000000000020, 0x80000002759E06C0, &v24);
      _os_log_impl(&dword_275819000, v10, v11, "%s missing account", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x277C85860](v13, -1, -1);
      MEMORY[0x277C85860](v12, -1, -1);
    }

    v14 = *(v0 + 48);

    v15 = *(v0 + 8);

    __asm { BRAA            X2, X16 }
  }

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_account);
  v7 = *(v0 + 16);
  *(v0 + 56) = v6;
  (*(v3 + 16))(v4, v1 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_isLocal, v5);
  v8 = v6;
  sub_2759B8AA8();
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  if (*(v0 + 112) == 1)
  {
    *(v0 + 64) = objc_opt_self();
    sub_2759BA4C8();
    v16 = v8;
    *(v0 + 72) = sub_2759BA4B8();
    v17 = sub_2759BA468();
    v19 = v18;
    v20 = sub_2758DA64C;
  }

  else
  {
    *(v0 + 88) = objc_opt_self();
    sub_2759BA4C8();
    v21 = v8;
    *(v0 + 96) = sub_2759BA4B8();
    v17 = sub_2759BA468();
    v19 = v22;
    v20 = sub_2758DA750;
  }

  return MEMORY[0x2822009F8](v20, v17, v19);
}

uint64_t sub_2758DA64C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v0[10] = [v2 specifierForAccount_];

  return MEMORY[0x2822009F8](sub_2758DA6DC, 0, 0);
}

uint64_t sub_2758DA6DC()
{
  v1 = v0[7];

  v2 = v0[10];
  v3 = v0[6];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_2758DA750()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];

  v0[13] = [v2 specifierForAccount_];

  return MEMORY[0x2822009F8](sub_2758DA7E0, 0, 0);
}

uint64_t sub_2758DA7E0()
{
  v1 = v0[7];

  v2 = v0[13];
  v3 = v0[6];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_2758DA854(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v7 = sub_2759B8768();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1;
  sub_2759B8758();
  v15 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v1 + v15, &v28, &qword_280A10028, &qword_2759CCFB0);
  if (v29)
  {
    sub_275827D1C(&v28, v30);
    v16 = sub_2759BA518();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    sub_27586E058(v30, &v28);
    (*(v8 + 16))(v11, v13, v7);
    sub_2759BA4C8();
    v17 = sub_2759BA4B8();
    v18 = (*(v8 + 80) + 72) & ~*(v8 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v17;
    *(v19 + 24) = v20;
    sub_275827D1C(&v28, v19 + 32);
    (*(v8 + 32))(v19 + v18, v11, v7);
    sub_27587D460(0, 0, v6, &unk_2759C6078, v19);

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    sub_27586BF04(&v28, &qword_280A10028, &qword_2759CCFB0);
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v21 = sub_2759B89A8();
    __swift_project_value_buffer(v21, qword_280A23900);
    v22 = sub_2759B8988();
    v23 = sub_2759BA648();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_2758937B8(0xD00000000000001DLL, 0x80000002759E0680, v30);
      _os_log_impl(&dword_275819000, v22, v23, "%s missing appendSettingsNavigationPath", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x277C85860](v25, -1, -1);
      MEMORY[0x277C85860](v24, -1, -1);
    }
  }

  return (*(v8 + 8))(v13, v7);
}

void sub_2758DAC20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_280A23900);
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E06A0, &v30);
    _os_log_impl(&dword_275819000, v8, v9, "%s NavigationMode is not stateDriven, using legacy navigation", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  [a1 detailControllerClass];
  v12 = CreateDetailControllerInstanceWithClass();
  if (v12)
  {
    v13 = v12;
    if (*(v1 + 16))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        [v13 setSpecifier_];
        v16 = sub_2759BA518();
        (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
        sub_2759BA4C8();
        v17 = v15;
        v18 = v13;
        v19 = sub_2759BA4B8();
        v20 = swift_allocObject();
        v21 = MEMORY[0x277D85700];
        v20[2] = v19;
        v20[3] = v21;
        v20[4] = v17;
        v20[5] = v18;
        sub_27587D460(0, 0, v6, &unk_2759C6090, v20);

        return;
      }
    }

    v29 = sub_2759B8988();
    v22 = sub_2759BA648();
    if (os_log_type_enabled(v29, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E06A0, &v30);
      _os_log_impl(&dword_275819000, v29, v22, "%s missing navController", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x277C85860](v24, -1, -1);
      MEMORY[0x277C85860](v23, -1, -1);

LABEL_13:
      return;
    }
  }

  else
  {
    v29 = sub_2759B8988();
    v25 = sub_2759BA648();
    if (os_log_type_enabled(v29, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E06A0, &v30);
      _os_log_impl(&dword_275819000, v29, v25, "%s missing detailController", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x277C85860](v27, -1, -1);
      MEMORY[0x277C85860](v26, -1, -1);
      goto LABEL_13;
    }
  }

  v28 = v29;
}

uint64_t sub_2758DB0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758DB13C, v7, v6);
}

uint64_t sub_2758DB13C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2759B8768();
  sub_2758DC850(&unk_280A10030, MEMORY[0x277D40250]);
  sub_2759B87A8();
  v4 = v0[1];

  return v4();
}

uint64_t sub_2758DB20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758DB2A4, v7, v6);
}

uint64_t sub_2758DB2A4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  [v3 pushViewController:v2 animated:1];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2758DB320()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_isLocal;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_attributes, &qword_280A10090, &qword_2759C6140);
  v3 = *(v0 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_store);

  v4 = *(v0 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_localStore);

  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_appendSettingsNavigationPath, &qword_280A10028, &qword_2759CCFB0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_navigationMode, &unk_280A11C60, &qword_2759C6060);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PushBackupControllerAction()
{
  result = qword_280A0FFE8;
  if (!qword_280A0FFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758DB4A4()
{
  sub_2758DB5C0();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2758DB618();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2758DB67C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2758DB5C0()
{
  if (!qword_280A0FFF8)
  {
    v0 = sub_2759B8AB8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0FFF8);
    }
  }
}

void sub_2758DB618()
{
  if (!qword_280A10000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10008, &qword_2759C5F68);
    v0 = sub_2759BA7D8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A10000);
    }
  }
}

void sub_2758DB67C()
{
  if (!qword_280A10010)
  {
    sub_2759B8798();
    v0 = sub_2759BA7D8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A10010);
    }
  }
}

uint64_t sub_2758DB6D4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return (sub_2758DC018)(a1);
}

id *sub_2758DB838@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_2758D9C3C(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

id sub_2758DB920(uint64_t a1)
{
  v2 = sub_2759B8AF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v73 = &v55[-v9];
  MEMORY[0x28223BE20](v8);
  v59 = &v55[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10048, &unk_2759CCC00);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v70 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v69 = &v55[-v15];
  v63 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v71 = (v3 + 32);
  v72 = (v3 + 16);
  v67 = (v3 + 88);
  v66 = *MEMORY[0x277D232A0];
  v58 = *MEMORY[0x277D23248];
  v57 = *MEMORY[0x277D23288];
  v56 = *MEMORY[0x277D23258];
  v65 = (v3 + 8);
  v60 = v3;
  v61 = a1;
  v62 = (v3 + 96);

  v22 = 0;
  v74 = v7;
  v68 = v2;
  v64 = a1 + 64;
  while (v19)
  {
    v23 = v22;
LABEL_13:
    v26 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = v26 | (v23 << 6);
    v28 = v60;
    v29 = (*(v61 + 48) + 16 * v27);
    v31 = *v29;
    v30 = v29[1];
    v32 = v59;
    (*(v60 + 16))(v59, *(v61 + 56) + *(v60 + 72) * v27, v2);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0);
    v34 = *(v33 + 48);
    v35 = v2;
    v36 = v70;
    *v70 = v31;
    *(v36 + 1) = v30;
    (*(v28 + 32))(&v36[v34], v32, v35);
    (*(*(v33 - 8) + 56))(v36, 0, 1, v33);

    v7 = v74;
LABEL_14:
    v37 = v36;
    v38 = v69;
    sub_2758DC7D0(v37, v69);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
    {

      return v63;
    }

    v40 = *v38;
    v41 = v38[1];
    v42 = v38 + *(v39 + 48);
    v43 = v73;
    v2 = v68;
    (*v71)(v73, v42, v68);
    (*v72)(v7, v43, v2);
    v44 = (*v67)(v7, v2);
    if (v44 == v66)
    {
      (*v62)(v7, v2);
      v45 = *(*v74 + 16);
      v46 = *(*v74 + 24);

      v7 = v74;

      v16 = v64;
    }

    else
    {
      v16 = v64;
      if (v44 == v58)
      {
        (*v62)(v7, v2);
        v75 = *(*v74 + 16);
        sub_2759BAA98();
        v7 = v74;
      }

      else if (v44 == v57)
      {
        (*v62)(v7, v2);
        v47 = *(*v7 + 16);
        v75 = 0;
        v76 = 0xE000000000000000;
        sub_2759BA568();
      }

      else
      {
        if (v44 != v56)
        {
          v54 = *v65;
          (*v65)(v7, v2);
          v54(v73, v2);

          continue;
        }

        (*v62)(v7, v2);
        v49 = *(*v74 + 16);
        v75 = 0;
        v76 = 0xE000000000000000;
        if (v49)
        {
          v50 = 1702195828;
        }

        else
        {
          v50 = 0x65736C6166;
        }

        if (v49)
        {
          v51 = 0xE400000000000000;
        }

        else
        {
          v51 = 0xE500000000000000;
        }

        MEMORY[0x277C840E0](v50, v51);
        v7 = v74;
      }
    }

    v52 = sub_2759BA258();

    v53 = sub_2759BA258();

    [v63 setObject:v53 forKeyedSubscript:v52];

    result = (*v65)(v73, v2);
  }

  if (v20 <= v22 + 1)
  {
    v24 = v22 + 1;
  }

  else
  {
    v24 = v20;
  }

  v25 = v24 - 1;
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0);
      v36 = v70;
      (*(*(v48 - 8) + 56))(v70, 1, 1, v48);
      v19 = 0;
      v22 = v25;
      goto LABEL_14;
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2758DC018(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C60, &qword_2759C6060) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758DC0C0, 0, 0);
}

uint64_t sub_2758DC0C0()
{
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  v0[9] = __swift_project_value_buffer(v1, qword_280A23900);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "PushBackupControllerAction", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2758DC214;
  v6 = v0[5];
  v7 = v0[6];

  return sub_2758D92CC(v6);
}

uint64_t sub_2758DC214(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_2758DC314, 0, 0);
}

uint64_t sub_2758DC314()
{
  v21 = v0;
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[8];
    v3 = v0[6];
    v4 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_navigationMode;
    swift_beginAccess();
    sub_27586FBC8(v3 + v4, v2, &unk_280A11C60, &qword_2759C6060);
    v5 = sub_2759B8798();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v2, 1, v5) != 1)
    {
      v7 = v0[7];
      sub_27586FBC8(v0[8], v7, &unk_280A11C60, &qword_2759C6060);
      if ((*(v6 + 88))(v7, v5) == *MEMORY[0x277D40278])
      {
        v8 = v0[6];
        sub_2758DA854(v1);
LABEL_10:
        v15 = v0[8];

        sub_27586BF04(v15, &unk_280A11C60, &qword_2759C6060);
        goto LABEL_11;
      }

      (*(v6 + 8))(v0[7], v5);
    }

    v14 = v0[6];
    sub_2758DAC20(v1);
    goto LABEL_10;
  }

  v9 = v0[9];
  v10 = sub_2759B8988();
  v11 = sub_2759BA648();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2758937B8(0xD00000000000001FLL, 0x80000002759E0660, &v20);
    _os_log_impl(&dword_275819000, v10, v11, "%s failed to assemble specifier, bailing.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

LABEL_11:
  v17 = v0[7];
  v16 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2758DC5A0(uint64_t a1)
{
  v4 = *(sub_2759B8768() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758DB0A4(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_2758DC694(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2758DB20C(a1, v4, v5, v7, v6);
}

unint64_t sub_2758DC754()
{
  result = qword_280A12850;
  if (!qword_280A12850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10040, &qword_2759C2630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12850);
  }

  return result;
}

uint64_t sub_2758DC7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10048, &unk_2759CCC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758DC850(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2758DC898()
{
  result = qword_280A100A0;
  if (!qword_280A100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A100A0);
  }

  return result;
}

uint64_t sub_2758DC8EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2758DC954()
{
  result = qword_280A100B8;
  if (!qword_280A100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A100B8);
  }

  return result;
}

unint64_t sub_2758DC9AC()
{
  result = qword_280A100C0;
  if (!qword_280A100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A100C0);
  }

  return result;
}

unint64_t sub_2758DCA04()
{
  result = qword_280A100C8;
  if (!qword_280A100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A100C8);
  }

  return result;
}

id sub_2758DCA58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_account) aa_altDSID];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() contextForAccountWithAltDSID_];
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_280A238A0);
    v5 = sub_2759B8988();
    v6 = sub_2759BA648();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2758937B8(0x65746E6F43706463, 0xEA00000000007478, &v10);
      _os_log_impl(&dword_275819000, v5, v6, "altDSID is not available, returning nil for %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x277C85860](v8, -1, -1);
      MEMORY[0x277C85860](v7, -1, -1);
    }

    return 0;
  }

  return v3;
}

uint64_t sub_2758DCBF0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_2758DCCBC(uint64_t a1)
{
  v2 = v1;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_280A238A0);
  v5 = sub_2759B8988();
  v6 = sub_2759BA668();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_275819000, v5, v6, "Updating isADPEnabled state.", v7, 2u);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  if (((a1 == 1) ^ *(v2 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__isADPEnabled)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
    sub_2759B8628();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__isADPEnabled) = a1 == 1;
  }
}

uint64_t sub_2758DCEC8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  return *(v2 + *a2);
}

uint64_t sub_2758DCF68@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = sub_2759B8358();
  v91 = *(v2 - 8);
  v92 = v2;
  v3 = *(v91 + 64);
  MEMORY[0x28223BE20](v2);
  v90 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2759B8368();
  v87 = *(v89 - 8);
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2759B8388();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v86 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102C0, &qword_2759C63B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v93 = &v74 - v12;
  v83 = sub_2759B8508();
  v82 = *(v83 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v75 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v85 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v84 = &v74 - v19;
  v20 = sub_2759B85C8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_2759B8458();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_2759BA248();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v77 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v76 = sub_2759B8468();
  v97 = *(v76 - 8);
  v31 = v97[8];
  v32 = MEMORY[0x28223BE20](v76);
  v78 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v95 = &v74 - v35;
  MEMORY[0x28223BE20](v34);
  v96 = &v74 - v36;
  swift_getKeyPath();
  v81 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel___observationRegistrar;
  v79 = v1;
  v98 = v1;
  v80 = sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  v37 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__isADPEnabled) == 0;
  sub_2759BA238();
  v38 = type metadata accessor for iCloudHomeViewModel();
  *v26 = v38;
  v39 = *MEMORY[0x277CC9120];
  v40 = *(v23 + 104);
  v40(v26, v39, v22);
  sub_2759B85B8();
  sub_2759B8478();
  v41 = v76;
  sub_2759BA238();
  *v26 = v38;
  v40(v26, v39, v22);
  v42 = v82;
  sub_2759B85B8();
  v43 = v95;
  v44 = v83;
  sub_2759B8478();
  v45 = v97[2];
  v46 = v78;
  v45(v78, v96, v41);
  v98 = sub_2759BA2E8();
  v99 = v47;

  MEMORY[0x277C840E0](32, 0xE100000000000000);

  MEMORY[0x277C840E0](91, 0xE100000000000000);

  v49 = v98;
  v48 = v99;
  v50 = v41;
  v45(v46, v43, v41);
  v51 = sub_2759BA2E8();
  v53 = v52;
  v98 = v49;
  v99 = v48;

  MEMORY[0x277C840E0](v51, v53);

  v55 = v98;
  v54 = v99;
  v100 = 10333;
  v101 = 0xE200000000000000;
  swift_getKeyPath();
  v98 = v79;
  v56 = v79;
  sub_2759B8638();

  v57 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpLearnMoreURL;
  swift_beginAccess();
  v58 = v56 + v57;
  v59 = v84;
  sub_27586FBC8(v58, v84, &unk_280A0EB10, &qword_2759C0740);
  v60 = v42;
  if ((*(v42 + 48))(v59, 1, v44))
  {
    sub_27586BF04(v59, &unk_280A0EB10, &qword_2759C0740);
    v61 = 0;
    v62 = 0xE000000000000000;
  }

  else
  {
    v63 = *(v42 + 16);
    v64 = v75;
    v63(v75, v59, v44);
    sub_27586BF04(v59, &unk_280A0EB10, &qword_2759C0740);
    v65 = sub_2759B8488();
    v62 = v66;
    (*(v60 + 8))(v64, v44);
    v61 = v65;
  }

  MEMORY[0x277C840E0](v61, v62);

  MEMORY[0x277C840E0](41, 0xE100000000000000);
  v67 = v100;
  v68 = v101;
  v100 = v55;
  v101 = v54;

  MEMORY[0x277C840E0](v67, v68);

  (*(v60 + 56))(v85, 1, 1, v44);
  (*(v87 + 104))(v88, *MEMORY[0x277CC8BB0], v89);
  (*(v91 + 104))(v90, *MEMORY[0x277CC8B98], v92);
  sub_2759B8378();
  v69 = v93;
  sub_2759B8398();
  v70 = v97[1];
  v70(v95, v50);
  v70(v96, v50);
  v71 = sub_2759B83B8();
  v72 = *(v71 - 8);
  (*(v72 + 56))(v69, 0, 1, v71);
  return (*(v72 + 32))(v94, v69, v71);
}

uint64_t sub_2758DDADC()
{
  v1 = sub_2759B85C8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2759B8458();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2759BA248();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  swift_getKeyPath();
  v13 = v0;
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  v10 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__isADPEnabled) == 0;
  sub_2759BA238();
  *v7 = type metadata accessor for iCloudHomeViewModel();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9120], v3);
  sub_2759B85B8();
  return sub_2759B8478();
}

uint64_t sub_2758DDD4C()
{
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2758DDDF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_2758DDEF0()
{
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager);
  return swift_unknownObjectRetain();
}

uint64_t sub_2758DDF9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager);
  return swift_unknownObjectRetain();
}

uint64_t sub_2758DE050(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8628();
}

void *sub_2758DE10C()
{
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter);
  v2 = v1;
  return v1;
}

id sub_2758DE1BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter);
  *a2 = v4;

  return v4;
}

void sub_2758DE27C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A10308, 0x277CECA58);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_2758DE428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__isADPEnabled);
  return result;
}

uint64_t sub_2758DE528(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
    sub_2759B8628();
  }

  return result;
}

void sub_2758DE654(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager] = 0;
  *&v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter] = 0;
  v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__isADPEnabled] = 0;
  v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccessIsLoading] = 0;
  v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess] = 0;
  v9 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpLearnMoreURL;
  v10 = sub_2759B8508();
  v11 = *(*(v10 - 8) + 56);
  v11(&v2[v9], 1, 1, v10);
  v11(&v2[v9], 1, 1, v10);
  sub_2759B8668();
  *&v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_accountManager] = a1;
  v12 = a1;
  v13 = [v12 accounts];
  if (!v13)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  type metadata accessor for AIDAServiceType(0);
  sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
  sub_2758E6A0C(&qword_280A0E500, type metadata accessor for AIDAServiceType);
  v15 = sub_2759BA1D8();

  if (*(v15 + 16))
  {
    v16 = sub_2758A342C(*MEMORY[0x277CED1A0]);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);
LABEL_7:

      *&v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_account] = v18;
      v27.receiver = v2;
      v27.super_class = ObjectType;
      v21 = objc_msgSendSuper2(&v27, sel_init);
      v22 = sub_2759BA518();
      (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
      sub_2759BA4C8();
      v23 = v21;
      v24 = sub_2759BA4B8();
      v25 = swift_allocObject();
      v26 = MEMORY[0x277D85700];
      v25[2] = v24;
      v25[3] = v26;
      v25[4] = v23;
      sub_27587D460(0, 0, v8, &unk_2759C6558, v25);

      sub_2758DEDE8();
      sub_2758DF4E0();

      return;
    }
  }

  v19 = [objc_opt_self() defaultStore];
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = v19;
  v18 = [v19 aa_primaryAppleAccount];

  if (v18)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_2758DE9DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpLearnMoreURL;
  swift_beginAccess();
  sub_27586FBC8(v1 + v7, v6, &unk_280A0EB10, &qword_2759C0740);
  v8 = sub_2758E5E0C(v6, a1);
  sub_27586BF04(v6, &unk_280A0EB10, &qword_2759C0740);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
    sub_2759B8628();
  }

  else
  {
    swift_beginAccess();
    sub_2758E6474(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_27586BF04(a1, &unk_280A0EB10, &qword_2759C0740);
}

uint64_t sub_2758DEBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = sub_2759BA4C8();
  v4[5] = sub_2759BA4B8();
  v4[6] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758DECA8, v7, v6);
}

uint64_t sub_2758DECA8()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v8 = v5;
  sub_275931FC0(0, 0, v4, &unk_2759C6578, v7);

  sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
  v10 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27588E9C8, v10, v9);
}

void sub_2758DEDE8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_account];
  v3 = [v2 aa_altDSID];
  if (v3 && (v4 = v3, v5 = [objc_opt_self() sharedInstance], v6 = objc_msgSend(v5, sel_authKitAccountWithAltDSID_, v4), v5, v4, v6))
  {
    v7 = sub_2759BA258();
    v8 = [v6 accountPropertyForKey_];

    if (v8)
    {
      sub_2759BA818();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v35[0] = v33;
    v35[1] = v34;
    if (*(&v34 + 1))
    {
      sub_275861AF8(0, &qword_280A0ED90, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        if (qword_280A0E338 != -1)
        {
          swift_once();
        }

        v17 = sub_2759B89A8();
        __swift_project_value_buffer(v17, qword_280A238A0);
        v18 = v32;
        v19 = sub_2759B8988();
        v20 = sub_2759BA668();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 67109120;
          *(v21 + 4) = [v18 BOOLValue];

          _os_log_impl(&dword_275819000, v19, v20, "Updating web access state to: %{BOOL}d", v21, 8u);
          MEMORY[0x277C85860](v21, -1, -1);
        }

        else
        {

          v19 = v18;
        }

        v28 = [v18 BOOLValue];
        v29 = v28;
        v30 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess;
        if (v28 == v1[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess])
        {

          v1[v30] = v29;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          *&v35[0] = v1;
          sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
          sub_2759B8628();
        }

        return;
      }
    }

    else
    {
      sub_27586BF04(v35, &qword_280A0ED70, &qword_2759C6C60);
    }

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v22 = sub_2759B89A8();
    __swift_project_value_buffer(v22, qword_280A238A0);
    v23 = sub_2759B8988();
    v24 = sub_2759BA668();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_275819000, v23, v24, "Web access state not found setting to false", v25, 2u);
      MEMORY[0x277C85860](v25, -1, -1);
    }

    v26 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess;
    if (v1[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess])
    {
      v27 = swift_getKeyPath();
      MEMORY[0x28223BE20](v27);
      *&v35[0] = v1;
      sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
      sub_2759B8628();
    }

    else
    {

      v1[v26] = 0;
    }
  }

  else
  {
    if (v1[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess])
    {
      v9 = swift_getKeyPath();
      MEMORY[0x28223BE20](v9);
      *&v35[0] = v1;
      sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
      sub_2759B8628();
    }

    else
    {
      v1[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess] = 0;
    }

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_280A238A0);
    v11 = v1;
    v12 = sub_2759B8988();
    v13 = sub_2759BA648();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v2;
      *v15 = v2;
      v16 = v2;
      _os_log_impl(&dword_275819000, v12, v13, "Unable to get AuthKit account for account: %@", v14, 0xCu);
      sub_27586BF04(v15, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v15, -1, -1);
      MEMORY[0x277C85860](v14, -1, -1);
    }
  }
}

void sub_2758DF4E0()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_280A0E390 != -1)
  {
    swift_once();
  }

  v2 = qword_280A239A0;
  v3 = [objc_opt_self() mainQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v8[4] = sub_2758E6B08;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2759B4A74;
  v8[3] = &block_descriptor_110;
  v5 = _Block_copy(v8);
  v6 = v0;

  v7 = [v1 addObserverForName:v2 object:0 queue:v3 usingBlock:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();
}

uint64_t sub_2758DF664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5[2] = sub_2759BA4C8();
  v5[3] = sub_2759BA4B8();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_27588B550;

  return sub_2758DF720(a5);
}

uint64_t sub_2758DF720(char a1)
{
  *(v2 + 328) = v1;
  *(v2 + 562) = a1;
  v3 = sub_2759B8248();
  *(v2 + 336) = v3;
  v4 = *(v3 - 8);
  *(v2 + 344) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 352) = swift_task_alloc();
  v6 = sub_2759B8508();
  *(v2 + 360) = v6;
  v7 = *(v6 - 8);
  *(v2 + 368) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 376) = swift_task_alloc();
  *(v2 + 384) = swift_task_alloc();
  *(v2 + 392) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  *(v2 + 400) = swift_task_alloc();
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = swift_task_alloc();
  *(v2 + 424) = swift_task_alloc();
  sub_2759BA4C8();
  *(v2 + 432) = sub_2759BA4B8();
  v11 = sub_2759BA468();
  *(v2 + 440) = v11;
  *(v2 + 448) = v10;

  return MEMORY[0x2822009F8](sub_2758DF8E8, v11, v10);
}

uint64_t sub_2758DF8E8()
{
  v1 = *(v0 + 328);
  v2 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccessIsLoading;
  *(v0 + 456) = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccessIsLoading;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    *(v0 + 304) = v1;
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
    sub_2759B8628();
  }

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  *(v0 + 464) = __swift_project_value_buffer(v4, qword_280A238A0);
  v5 = sub_2759B8988();
  v6 = sub_2759BA668();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 562);
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_275819000, v5, v6, "ADP loadRemoteUIForEnablingWebAccessState: %{BOOL}d", v8, 8u);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v9 = *(v0 + 562);

  v10 = [objc_opt_self() bagForAltDSID_];
  v11 = v10;
  *(v0 + 472) = v10;
  if (v9 != 1)
  {
    if (v10)
    {
      v16 = [v10 webAccessDisableURL];
      if (v16)
      {
        v17 = *(v0 + 408);
        v18 = v16;
        sub_2759B84C8();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      v19 = *(v0 + 424);
      v20 = *(v0 + 408);
      goto LABEL_20;
    }

LABEL_15:
    (*(*(v0 + 368) + 56))(*(v0 + 424), 1, 1, *(v0 + 360));
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v12 = [v10 webAccessEnableURL];
  if (v12)
  {
    v13 = *(v0 + 416);
    v14 = v12;
    sub_2759B84C8();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v20 = *(v0 + 416);
  v19 = *(v0 + 424);
LABEL_20:
  (*(*(v0 + 368) + 56))(v20, v15, 1, *(v0 + 360));
  sub_2758B4BD0(v20, v19);
LABEL_21:
  v21 = *(v0 + 400);
  v22 = *(v0 + 360);
  v23 = *(v0 + 368);
  sub_27586FBC8(*(v0 + 424), v21, &unk_280A0EB10, &qword_2759C0740);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v24 = *(v0 + 432);
    v25 = *(v0 + 400);

    sub_27586BF04(v25, &unk_280A0EB10, &qword_2759C0740);
LABEL_28:
    v33 = sub_2759B8988();
    v34 = sub_2759BA648();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_275819000, v33, v34, "ADP loadRemoteUIForEnablingWebAccessState: no url or navigationController", v35, 2u);
      MEMORY[0x277C85860](v35, -1, -1);
      v36 = v33;
    }

    else
    {
      v36 = v11;
      v11 = v33;
    }

    v37 = *(v0 + 416);
    v39 = *(v0 + 400);
    v38 = *(v0 + 408);
    v41 = *(v0 + 384);
    v40 = *(v0 + 392);
    v42 = *(v0 + 376);
    v43 = *(v0 + 352);
    sub_27586BF04(*(v0 + 424), &unk_280A0EB10, &qword_2759C0740);

    v44 = *(v0 + 8);

    return v44();
  }

  v26 = *(v0 + 328);
  (*(*(v0 + 368) + 32))(*(v0 + 392), *(v0 + 400), *(v0 + 360));
  swift_getKeyPath();
  *(v0 + 480) = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel___observationRegistrar;
  *(v0 + 312) = v26;
  *(v0 + 488) = sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 496) = Strong;
  if (!Strong)
  {
    v32 = *(v0 + 432);
    (*(*(v0 + 368) + 8))(*(v0 + 392), *(v0 + 360));

    goto LABEL_28;
  }

  v28 = Strong;
  v29 = objc_opt_self();
  *(v0 + 504) = v29;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 560;
  *(v0 + 24) = sub_2758DFF50;
  v30 = swift_continuation_init();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102E0, &qword_2759C2E10);
  *(v0 + 512) = v31;
  *(v0 + 200) = v31;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_2758DCBF0;
  *(v0 + 168) = &block_descriptor_5;
  *(v0 + 176) = v30;
  [v29 repairPrimaryAppleAccountInViewController:v28 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2758DFF50()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 520) = v3;
  v4 = *(v1 + 448);
  v5 = *(v1 + 440);
  if (v3)
  {
    v6 = sub_2758E0A60;
  }

  else
  {
    v6 = sub_2758E0080;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2758E0080()
{
  v68 = v0;
  v1 = *(v0 + 560);

  if (v1 == 1)
  {
    v2 = *(v0 + 464);
    v65 = *(*(v0 + 368) + 16);
    v65(*(v0 + 384), *(v0 + 392), *(v0 + 360));
    v3 = sub_2759B8988();
    v4 = sub_2759BA668();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 384);
    v8 = *(v0 + 360);
    v7 = *(v0 + 368);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67 = v64;
      *v9 = 136315138;
      sub_2758E6A0C(&qword_280A10300, MEMORY[0x277CC9260]);
      v10 = sub_2759BAA98();
      v12 = v11;
      v13 = *(v7 + 8);
      v13(v6, v8);
      v14 = sub_2758937B8(v10, v12, &v67);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_275819000, v3, v4, "ADP loadRemoteUIForEnablingWebAccessState with url: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x277C85860](v64, -1, -1);
      MEMORY[0x277C85860](v9, -1, -1);
    }

    else
    {

      v13 = *(v7 + 8);
      v13(v6, v8);
    }

    *(v0 + 528) = v13;
    v22 = *(v0 + 504);
    v63 = *(v0 + 512);
    v23 = *(v0 + 496);
    v24 = *(v0 + 376);
    v25 = *(v0 + 352);
    v61 = *(v0 + 360);
    v62 = *(v0 + 392);
    v26 = *(v0 + 328);
    v27 = *(v26 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_accountManager);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
    *(swift_allocObject() + 16) = xmmword_2759C2410;
    v28 = v23;
    v29 = [v22 getWebAccessStatusUpdateHook];
    sub_2759BA818();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F8, &qword_2759C6488);
    swift_dynamicCast();
    v30 = objc_allocWithZone(MEMORY[0x277CECA58]);
    v31 = sub_2759BA3D8();

    v32 = [v30 initWithAccountManager:v27 presenter:v28 hooks:v31];
    *(v0 + 536) = v32;

    [v32 setDelegate_];
    v33 = v32;
    sub_2758DE27C(v32);
    v65(v24, v62, v61);
    sub_2759B8208();
    sub_2759B81D8();
    v34 = sub_2759B81E8();
    *(v0 + 544) = v34;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 561;
    *(v0 + 88) = sub_2758E0758;
    v35 = swift_continuation_init();
    *(v0 + 264) = v63;
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2758DCBF0;
    *(v0 + 232) = &block_descriptor_40;
    *(v0 + 240) = v35;
    [v33 loadRequest:v34 completion:?];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CFD418] code:0 userInfo:0];
    swift_willThrow();
    v16 = *(v0 + 456);
    v17 = *(v0 + 328);
    if (*(v17 + v16))
    {
      v19 = *(v0 + 480);
      v18 = *(v0 + 488);
      v20 = *(v0 + 432);
      swift_getKeyPath();
      v21 = swift_task_alloc();
      *(v21 + 16) = v17;
      *(v21 + 24) = 0;
      *(v0 + 320) = v17;
      sub_2759B8628();
    }

    else
    {
      v36 = *(v0 + 432);

      *(v17 + v16) = 0;
    }

    v37 = *(v0 + 464);
    v38 = v15;
    v39 = sub_2759B8988();
    v40 = sub_2759BA648();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 496);
    v43 = *(v0 + 472);
    v44 = *(v0 + 392);
    v45 = *(v0 + 360);
    v46 = *(v0 + 368);
    if (v41)
    {
      v66 = *(v0 + 392);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      v49 = v15;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v50;
      *v48 = v50;
      _os_log_impl(&dword_275819000, v39, v40, "ADP loadRemoteUIForEnablingWebAccessState: error: %@", v47, 0xCu);
      sub_27586BF04(v48, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v48, -1, -1);
      v51 = v47;
      v44 = v66;
      MEMORY[0x277C85860](v51, -1, -1);
    }

    (*(v46 + 8))(v44, v45);
    v52 = *(v0 + 416);
    v54 = *(v0 + 400);
    v53 = *(v0 + 408);
    v56 = *(v0 + 384);
    v55 = *(v0 + 392);
    v57 = *(v0 + 376);
    v58 = *(v0 + 352);
    sub_27586BF04(*(v0 + 424), &unk_280A0EB10, &qword_2759C0740);

    v59 = *(v0 + 8);

    return v59();
  }
}

uint64_t sub_2758E0758()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 552) = v3;
  v4 = *(v1 + 448);
  v5 = *(v1 + 440);
  if (v3)
  {
    v6 = sub_2758E0D14;
  }

  else
  {
    v6 = sub_2758E0888;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2758E0888()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 464);
  v3 = *(v0 + 432);

  v4 = *(v0 + 561);

  v5 = sub_2759B8988();
  v6 = sub_2759BA668();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v4;
    _os_log_impl(&dword_275819000, v5, v6, "ADP loadRemoteUIForEnablingWebAccessState: success: %{BOOL}d", v7, 8u);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v8 = *(v0 + 536);
  v25 = *(v0 + 528);
  v9 = *(v0 + 472);
  v10 = *(v0 + 392);
  v11 = *(v0 + 360);
  v12 = *(v0 + 368);
  v14 = *(v0 + 344);
  v13 = *(v0 + 352);
  v15 = *(v0 + 336);

  (*(v14 + 8))(v13, v15);
  v25(v10, v11);
  v16 = *(v0 + 416);
  v18 = *(v0 + 400);
  v17 = *(v0 + 408);
  v20 = *(v0 + 384);
  v19 = *(v0 + 392);
  v21 = *(v0 + 376);
  v22 = *(v0 + 352);
  sub_27586BF04(*(v0 + 424), &unk_280A0EB10, &qword_2759C0740);

  v23 = *(v0 + 8);

  return v23();
}