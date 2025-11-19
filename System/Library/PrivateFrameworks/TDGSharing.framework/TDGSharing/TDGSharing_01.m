id PrescriptionRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PrescriptionRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrescriptionRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26C68643C()
{
  result = sub_26C6D87B8();
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

uint64_t SetupTransferResponse.peerKey.getter()
{
  v1 = *v0;
  sub_26C67ED2C(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_26C6865A4()
{
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](0);
  return sub_26C6D8F08();
}

uint64_t sub_26C686610()
{
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](0);
  return sub_26C6D8F08();
}

uint64_t sub_26C686668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79654B72656570 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C6D8E48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26C686708(uint64_t a1)
{
  v2 = sub_26C6868E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C686744(uint64_t a1)
{
  v2 = sub_26C6868E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetupTransferResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8AC0, &qword_26C6DACF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C67ED2C(v8, v9);
  sub_26C6868E4();
  sub_26C6D8F38();
  v12 = v8;
  v13 = v9;
  sub_26C686938();
  sub_26C6D8E18();
  sub_26C678418(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26C6868E4()
{
  result = qword_2804A8AC8;
  if (!qword_2804A8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8AC8);
  }

  return result;
}

unint64_t sub_26C686938()
{
  result = qword_2804A8AD0;
  if (!qword_2804A8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8AD0);
  }

  return result;
}

uint64_t SetupTransferResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8AD8, &qword_26C6DACF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6868E4();
  sub_26C6D8F28();
  if (!v2)
  {
    sub_26C686AFC();
    sub_26C6D8DE8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_26C686AFC()
{
  result = qword_2804A8AE0;
  if (!qword_2804A8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8AE0);
  }

  return result;
}

uint64_t RetrieveFileResponse.expectedFileName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RetrieveFileResponse.enrollmentAssetData.getter()
{
  v1 = *(v0 + 16);
  sub_26C67ED2C(v1, *(v0 + 24));
  return v1;
}

unint64_t sub_26C686BFC()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_26C686C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000026C6DF820 == a2 || (sub_26C6D8E48() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026C6DF860 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26C6D8E48();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_26C686D28(uint64_t a1)
{
  v2 = sub_26C686F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C686D64(uint64_t a1)
{
  v2 = sub_26C686F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RetrieveFileResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8AE8, &qword_26C6DAD00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C686F3C();
  sub_26C6D8F38();
  LOBYTE(v18) = 0;
  v12 = v17;
  sub_26C6D8DF8();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = 1;
    sub_26C67ED2C(v16, v15);
    sub_26C686938();
    sub_26C6D8E18();
    sub_26C678418(v18, v19);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26C686F3C()
{
  result = qword_2804A8AF0;
  if (!qword_2804A8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8AF0);
  }

  return result;
}

uint64_t RetrieveFileResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8AF8, &qword_26C6DAD08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C686F3C();
  sub_26C6D8F28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v18[0]) = 0;
  v11 = sub_26C6D8DC8();
  v13 = v12;
  v14 = v11;
  v19 = 1;
  sub_26C686AFC();
  sub_26C6D8DE8();
  (*(v6 + 8))(v9, v5);
  v15 = v18[0];
  v16 = v18[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v16;

  sub_26C67ED2C(v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_26C678418(v15, v16);
}

uint64_t static Result<>.success.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26C6D8F18();

  return MEMORY[0x2821FEBC8](a1, v2, 0);
}

void static SetupSessionRequest.from(_:metaData:handler:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      strcpy(v91, "publicKey");
      WORD1(v91[1]) = 0;
      HIDWORD(v91[1]) = -385875968;
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v24 = sub_26C689928(v92), (v25 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v24, v93);
        sub_26C678324(v92);
        if (swift_dynamicCast())
        {
          v27 = v91[0];
          v26 = v91[1];
          strcpy(v91, "targetId");
          BYTE1(v91[1]) = 0;
          WORD1(v91[1]) = 0;
          HIDWORD(v91[1]) = -402653184;
          sub_26C6D8CD8();
          if (*(a2 + 16) && (v28 = sub_26C689928(v92), (v29 & 1) != 0))
          {
            sub_26C676984(*(a2 + 56) + 32 * v28, v93);
            sub_26C678324(v92);
            if (swift_dynamicCast())
            {
              v30 = v91[0];
              v31 = v91[1];
              v32 = swift_allocObject();
              *(v32 + 16) = a3;
              *(v32 + 24) = a4;
              *a5 = v27;
              *(a5 + 8) = v26;
              *(a5 + 16) = v30;
              *(a5 + 24) = v31;
              *(a5 + 32) = sub_26C689A18;
              *(a5 + 40) = v32;
              v22 = 2;
              goto LABEL_70;
            }
          }

          else
          {
            sub_26C678324(v92);
          }

          sub_26C678418(v27, v26);
        }
      }

      else
      {
        sub_26C678324(v92);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v54 = sub_26C6D8898();
      __swift_project_value_buffer(v54, qword_2804AD228);

      v43 = sub_26C6D8878();
      v44 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_60;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v92[0] = v46;
      *v45 = 136446467;
      v93[0] = 2;
      type metadata accessor for WFSetupSessionRequest(0);
      v55 = sub_26C6D8A18();
      v57 = sub_26C67A77C(v55, v56, v92);

      *(v45 + 4) = v57;
      *(v45 + 12) = 2081;
      v58 = sub_26C6D89C8();
      v60 = sub_26C67A77C(v58, v59, v92);

      *(v45 + 14) = v60;
      v53 = "Unable to decode WFSetupSessionRequest: %{public}s with data: %{private}s";
LABEL_58:
      _os_log_impl(&dword_26C66B000, v43, v44, v53, v45, 0x16u);
      swift_arrayDestroy();
      v70 = v46;
LABEL_59:
      MEMORY[0x26D6A7490](v70, -1, -1);
      MEMORY[0x26D6A7490](v45, -1, -1);
      goto LABEL_60;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        strcpy(v91, "fileDataType");
        BYTE5(v91[1]) = 0;
        HIWORD(v91[1]) = -5120;
        sub_26C6D8CD8();
        if (*(a2 + 16) && (v9 = sub_26C689928(v92), (v10 & 1) != 0))
        {
          sub_26C676984(*(a2 + 56) + 32 * v9, v93);
          sub_26C678324(v92);
          if (swift_dynamicCast())
          {
            v11 = sub_26C6D8DB8();

            if (!v11)
            {
              v12 = 0x800000026C6DF820;
              v91[0] = 0xD000000000000010;
              v91[1] = 0x800000026C6DF820;
              sub_26C6D8CD8();
              if (*(a2 + 16) && (v13 = sub_26C689928(v92), (v14 & 1) != 0))
              {
                sub_26C676984(*(a2 + 56) + 32 * v13, v93);
                sub_26C678324(v92);
                if (swift_dynamicCast())
                {
                  v16 = v91[0];
                  v15 = v91[1];
                  v12 = 0x800000026C6DF840;
                  v91[0] = 0xD000000000000014;
                  v91[1] = 0x800000026C6DF840;
                  sub_26C6D8CD8();
                  if (*(a2 + 16) && (v17 = sub_26C689928(v92), (v18 & 1) != 0))
                  {
                    sub_26C676984(*(a2 + 56) + 32 * v17, v93);
                    sub_26C678324(v92);
                    if (swift_dynamicCast())
                    {
                      v19 = v91[0];
                      v20 = v91[1];
                      v21 = swift_allocObject();
                      *(v21 + 16) = a3;
                      *(v21 + 24) = a4;
                      *a5 = v16;
                      *(a5 + 8) = v15;
                      *(a5 + 16) = v19;
                      *(a5 + 24) = v20;
                      *(a5 + 32) = sub_26C6899A4;
                      *(a5 + 40) = v21;
                      v22 = 4;
LABEL_70:
                      *(a5 + 48) = v22;

                      return;
                    }
                  }

                  else
                  {
                    sub_26C678324(v92);
                  }

                  if (qword_2804A8598 != -1)
                  {
                    swift_once();
                  }

                  v89 = sub_26C6D8898();
                  __swift_project_value_buffer(v89, qword_2804AD228);

                  v43 = sub_26C6D8878();
                  v83 = sub_26C6D8BA8();

                  if (os_log_type_enabled(v43, v83))
                  {
                    v45 = swift_slowAlloc();
                    v84 = swift_slowAlloc();
                    v92[0] = v84;
                    *v45 = 136446466;
                    v85 = 0xD000000000000014;
LABEL_76:
                    *(v45 + 4) = sub_26C67A77C(v85, v12, v92);
                    *(v45 + 12) = 2082;
                    v86 = sub_26C6D89C8();
                    v88 = sub_26C67A77C(v86, v87, v92);

                    *(v45 + 14) = v88;
                    _os_log_impl(&dword_26C66B000, v43, v83, "Unable to decode %{public}s in %{public}s", v45, 0x16u);
                    swift_arrayDestroy();
                    v70 = v84;
                    goto LABEL_59;
                  }

LABEL_60:

                  *(a5 + 16) = 0u;
                  *(a5 + 32) = 0u;
                  *a5 = 0u;
                  *(a5 + 48) = -1;
                  return;
                }
              }

              else
              {
                sub_26C678324(v92);
              }

              if (qword_2804A8598 != -1)
              {
                swift_once();
              }

              v82 = sub_26C6D8898();
              __swift_project_value_buffer(v82, qword_2804AD228);

              v43 = sub_26C6D8878();
              v83 = sub_26C6D8BA8();

              if (!os_log_type_enabled(v43, v83))
              {
                goto LABEL_60;
              }

              v45 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              v92[0] = v84;
              *v45 = 136446466;
              v85 = 0xD000000000000010;
              goto LABEL_76;
            }
          }
        }

        else
        {
          sub_26C678324(v92);
        }

        if (qword_2804A8598 != -1)
        {
          swift_once();
        }

        v63 = sub_26C6D8898();
        __swift_project_value_buffer(v63, qword_2804AD228);

        v43 = sub_26C6D8878();
        v44 = sub_26C6D8BA8();

        if (!os_log_type_enabled(v43, v44))
        {
          goto LABEL_60;
        }

        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v92[0] = v46;
        *v45 = 136446466;
        v62 = 4;
        goto LABEL_57;
      }

LABEL_38:
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v42 = sub_26C6D8898();
      __swift_project_value_buffer(v42, qword_2804AD228);

      v43 = sub_26C6D8878();
      v44 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_60;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v92[0] = v46;
      *v45 = 136446466;
      v93[0] = a1;
      type metadata accessor for WFSetupSessionRequest(0);
      v47 = sub_26C6D8A18();
      v49 = sub_26C67A77C(v47, v48, v92);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      v50 = sub_26C6D89C8();
      v52 = sub_26C67A77C(v50, v51, v92);

      *(v45 + 14) = v52;
      v53 = "Unable to decode unknown WFSetupSessionRequest type: %{public}s with data: %{public}s";
      goto LABEL_58;
    }

    strcpy(v91, "fileDataType");
    BYTE5(v91[1]) = 0;
    HIWORD(v91[1]) = -5120;
    sub_26C6D8CD8();
    if (*(a2 + 16) && (v33 = sub_26C689928(v92), (v34 & 1) != 0))
    {
      sub_26C676984(*(a2 + 56) + 32 * v33, v93);
      sub_26C678324(v92);
      if (swift_dynamicCast())
      {
        v35 = sub_26C6D8DB8();

        if (!v35)
        {
          strcpy(v91, "fileMetaData");
          BYTE5(v91[1]) = 0;
          HIWORD(v91[1]) = -5120;
          sub_26C6D8CD8();
          if (*(a2 + 16) && (v36 = sub_26C689928(v92), (v37 & 1) != 0))
          {
            sub_26C676984(*(a2 + 56) + 32 * v36, v93);
            sub_26C678324(v92);
            if (swift_dynamicCast())
            {
              v38 = v91[0];
              v39 = v91[1];
LABEL_69:
              v81 = swift_allocObject();
              *(v81 + 16) = a3;
              *(v81 + 24) = a4;
              *a5 = v38;
              *(a5 + 8) = v39;
              *(a5 + 16) = sub_26C6899B0;
              *(a5 + 24) = v81;
              *(a5 + 32) = 0;
              *(a5 + 40) = 0;
              v22 = 3;
              goto LABEL_70;
            }
          }

          else
          {
            sub_26C678324(v92);
          }

          if (qword_2804A8598 != -1)
          {
            swift_once();
          }

          v71 = sub_26C6D8898();
          __swift_project_value_buffer(v71, qword_2804AD228);

          v72 = sub_26C6D8878();
          v73 = sub_26C6D8BB8();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v92[0] = v90;
            *v74 = 136446722;
            v93[0] = 3;
            type metadata accessor for WFSetupSessionRequest(0);
            v75 = sub_26C6D8A18();
            v77 = sub_26C67A77C(v75, v76, v92);

            *(v74 + 4) = v77;
            *(v74 + 12) = 2082;
            *(v74 + 14) = sub_26C67A77C(0x6174654D656C6966, 0xEC00000061746144, v92);
            *(v74 + 22) = 2082;
            v78 = sub_26C6D89C8();
            v80 = sub_26C67A77C(v78, v79, v92);

            *(v74 + 24) = v80;
            _os_log_impl(&dword_26C66B000, v72, v73, "Decoded WFSetupSessionRequest: %{public}s doesn't have %{public}s value with data: %{public}s", v74, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x26D6A7490](v90, -1, -1);
            MEMORY[0x26D6A7490](v74, -1, -1);
          }

          v38 = 0;
          v39 = 0xF000000000000000;
          goto LABEL_69;
        }
      }
    }

    else
    {
      sub_26C678324(v92);
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v61 = sub_26C6D8898();
    __swift_project_value_buffer(v61, qword_2804AD228);

    v43 = sub_26C6D8878();
    v44 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_60;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v92[0] = v46;
    *v45 = 136446466;
    v62 = 3;
LABEL_57:
    v93[0] = v62;
    type metadata accessor for WFSetupSessionRequest(0);
    v64 = sub_26C6D8A18();
    v66 = sub_26C67A77C(v64, v65, v92);

    *(v45 + 4) = v66;
    *(v45 + 12) = 2082;
    v67 = sub_26C6D89C8();
    v69 = sub_26C67A77C(v67, v68, v92);

    *(v45 + 14) = v69;
    v53 = "Unable to decode WFSetupSessionRequest: %{public}s with data: %{public}s";
    goto LABEL_58;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_38;
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    *a5 = sub_26C689A70;
    *(a5 + 8) = v23;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 1;
  }

  else
  {
    v40 = swift_allocObject();
    *(v40 + 16) = a3;
    *(v40 + 24) = a4;
    *a5 = sub_26C68AF88;
    *(a5 + 8) = v40;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0;
  }
}

uint64_t sub_26C688104(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_26C69E758(a1, a2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  sub_26C6D8CD8();
  swift_getErrorValue();
  *(inited + 96) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1);
  v5 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
  return v5;
}

uint64_t sub_26C6884DC(uint64_t a1)
{
  v1 = *a1;
  if ((*(a1 + 32) & 1) == 0)
  {
    return sub_26C69E7C0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  v8 = 0x726F727245;
  v9 = 0xE500000000000000;
  sub_26C6D8CD8();
  swift_getErrorValue();
  v3 = v10;
  v4 = v11;
  *(inited + 96) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v3, v4);
  v6 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
  return v6;
}

uint64_t sub_26C6888DC(uint64_t a1, char a2, void (*a3)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    sub_26C6D8CD8();
    swift_getErrorValue();
    *(inited + 96) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
    v6 = sub_26C689E88(inited);
    swift_setDeallocating();
    sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
  }

  else
  {
    v6 = sub_26C689E88(MEMORY[0x277D84F90]);
  }

  a3(v6);
}

uint64_t SetupSessionRequest.to()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (v7 <= 1)
  {
    if (*(v0 + 48))
    {
      v12 = 1;
      sub_26C68A03C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), 1u);
      sub_26C689E88(MEMORY[0x277D84F90]);
      v11 = swift_allocObject();
    }

    else
    {
      sub_26C68A03C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), 0);
      sub_26C689E88(MEMORY[0x277D84F90]);
      v11 = swift_allocObject();
      v12 = 0;
    }

    v3 = v2;
    v4 = v1;
    goto LABEL_14;
  }

  if (v7 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA100;
    strcpy(v21, "publicKey");

    v14 = MEMORY[0x277D837D0];
    sub_26C6D8CD8();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v2;
    *(inited + 80) = v1;
    strcpy(v21, "targetId");
    BYTE1(v21[1]) = 0;
    WORD1(v21[1]) = 0;
    HIDWORD(v21[1]) = -402653184;
    sub_26C67ED2C(v2, v1);
    sub_26C6D8CD8();
    *(inited + 168) = v14;
    *(inited + 144) = v3;
    *(inited + 152) = v4;
    sub_26C689E88(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
    v12 = 2;
    swift_arrayDestroy();
    v11 = swift_allocObject();
LABEL_11:
    v3 = v5;
    v4 = v6;
    goto LABEL_14;
  }

  if (v7 != 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_26C6DAAA0;
    strcpy(v21, "fileDataType");

    v16 = MEMORY[0x277D837D0];
    sub_26C6D8CD8();
    *(v15 + 96) = v16;
    *(v15 + 72) = 0x656D6C6C6F726E65;
    *(v15 + 80) = 0xEB0000000073746ELL;
    sub_26C6D8CD8();
    *(v15 + 168) = v16;
    *(v15 + 144) = v2;
    *(v15 + 152) = v1;
    v21[0] = 0xD000000000000014;
    v21[1] = 0x800000026C6DF840;
    sub_26C6D8CD8();
    *(v15 + 240) = MEMORY[0x277CC9318];
    *(v15 + 216) = v3;
    *(v15 + 224) = v4;
    sub_26C67ED2C(v3, v4);
    sub_26C689E88(v15);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
    swift_arrayDestroy();
    v11 = swift_allocObject();
    v12 = 4;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_26C6DA0F0;
  strcpy(v21, "fileDataType");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;

  v9 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  *(v8 + 96) = v9;
  *(v8 + 72) = 0x656D6C6C6F726E65;
  *(v8 + 80) = 0xEB0000000073746ELL;
  sub_26C689E88(v8);
  swift_setDeallocating();
  sub_26C677B60(v8 + 32, &qword_2804A86B8, &qword_26C6DA550);
  if (v1 >> 60 != 15)
  {
    strcpy(&v19, "fileMetaData");
    sub_26C67ED2C(v2, v1);
    sub_26C6D8CD8();
    v20 = MEMORY[0x277CC9318];
    *&v19 = v2;
    *(&v19 + 1) = v1;
    sub_26C68A024(&v19, v18);
    sub_26C67ED2C(v2, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26C689CC0(v18, v21, isUniquelyReferenced_nonNull_native);
    sub_26C67EE70(v2, v1);
    sub_26C678324(v21);
  }

  v11 = swift_allocObject();
  v12 = 3;
LABEL_14:
  *(v11 + 16) = v3;
  *(v11 + 24) = v4;
  return v12;
}

void sub_26C688FC4(uint64_t a1, void (*a2)(__int128 *))
{
  sub_26C68902C(a1, &v7);
  v5 = v7;
  v6 = v8;
  a2(&v5);
  v3 = v5;
  v4 = v6;

  sub_26C68AD7C(v3, *(&v3 + 1), v4);
}

void sub_26C68902C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[4] = *MEMORY[0x277D85DE8];
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v4 = sub_26C689928(v31), (v5 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v4, v32);
    sub_26C678324(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    if (swift_dynamicCast())
    {
      *a2 = 0x726F727245;
LABEL_13:
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
      goto LABEL_14;
    }
  }

  else
  {
    sub_26C678324(v31);
  }

  v6 = objc_opt_self();
  v7 = sub_26C6D89A8();
  v32[0] = 0;
  v8 = [v6 dataWithJSONObject:v7 options:0 error:v32];

  v9 = v32[0];
  if (!v8)
  {
    v16 = v9;
    v17 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v18 = sub_26C6D8898();
    __swift_project_value_buffer(v18, qword_2804AD228);

    v19 = v17;
    v20 = sub_26C6D8878();
    v21 = sub_26C6D8BA8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31[0] = v24;
      *v22 = 136315650;
      *(v22 + 4) = sub_26C67A77C(0xD000000000000015, 0x800000026C6DAE50, v31);
      *(v22 + 12) = 2080;
      v25 = sub_26C6D89C8();
      v27 = sub_26C67A77C(v25, v26, v31);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2112;
      v28 = v17;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v29;
      *v23 = v29;
      _os_log_impl(&dword_26C66B000, v20, v21, "Unable to unpack result type: %s from dictionary: %s, error: %@", v22, 0x20u);
      sub_26C677B60(v23, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v23, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v24, -1, -1);
      MEMORY[0x26D6A7490](v22, -1, -1);
    }

    *a2 = v17;
    goto LABEL_13;
  }

  v10 = sub_26C6D87A8();
  v12 = v11;

  v13 = sub_26C6D8678();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_26C6D8668();
  sub_26C68AD88();
  sub_26C6D8658();

  sub_26C678418(v10, v12);
  *a2 = *v31;
  *(a2 + 16) = 0;
LABEL_14:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_26C689450(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34[4] = *MEMORY[0x277D85DE8];
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v4 = sub_26C689928(v32), (v5 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v4, v34);
    sub_26C678324(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    if (swift_dynamicCast())
    {
      *a2 = 0x726F727245;
LABEL_13:
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 1;
      goto LABEL_14;
    }
  }

  else
  {
    sub_26C678324(v32);
  }

  v6 = objc_opt_self();
  v7 = sub_26C6D89A8();
  v34[0] = 0;
  v8 = [v6 dataWithJSONObject:v7 options:0 error:v34];

  v9 = v34[0];
  if (!v8)
  {
    v16 = v9;
    v17 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v18 = sub_26C6D8898();
    __swift_project_value_buffer(v18, qword_2804AD228);

    v19 = v17;
    v20 = sub_26C6D8878();
    v21 = sub_26C6D8BA8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v22 = 136315650;
      *(v22 + 4) = sub_26C67A77C(0xD000000000000014, 0x800000026C6DAF00, v32);
      *(v22 + 12) = 2080;
      v25 = sub_26C6D89C8();
      v27 = sub_26C67A77C(v25, v26, v32);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2112;
      v28 = v17;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v29;
      *v23 = v29;
      _os_log_impl(&dword_26C66B000, v20, v21, "Unable to unpack result type: %s from dictionary: %s, error: %@", v22, 0x20u);
      sub_26C677B60(v23, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v23, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v24, -1, -1);
      MEMORY[0x26D6A7490](v22, -1, -1);
    }

    *a2 = v17;
    goto LABEL_13;
  }

  v10 = sub_26C6D87A8();
  v12 = v11;

  v13 = sub_26C6D8678();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_26C6D8668();
  sub_26C68AE90();
  sub_26C6D8658();

  sub_26C678418(v10, v12);
  v31 = v32[1];
  *a2 = v32[0];
  *(a2 + 8) = v31;
  *(a2 + 16) = v33;
  *(a2 + 32) = 0;
LABEL_14:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_26C689880(uint64_t a1, void (*a2)(__int128 *))
{
  sub_26C689450(a1, v9);
  v6 = v9[0];
  v7 = v9[1];
  v8 = v10;
  a2(&v6);
  v3 = v6;
  v4 = v7;
  v5 = v8;

  sub_26C68AE38(v3, *(&v3 + 1), v4, *(&v4 + 1), v5);
}

unint64_t sub_26C689928(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26C6D8CB8();

  return sub_26C689B40(a1, v5);
}

uint64_t sub_26C68996C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C6899B0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  sub_26C6884DC(v6);
  v3();
}

uint64_t sub_26C689A18(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_26C688104(*a1, *(a1 + 8), *(a1 + 16));
  v3();
}

uint64_t sub_26C689A74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_26C689E88(MEMORY[0x277D84F90]);
  v2();
}

unint64_t sub_26C689AC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26C6D8EE8();
  sub_26C6D8A38();
  v6 = sub_26C6D8F08();

  return sub_26C689C08(a1, a2, v6);
}

unint64_t sub_26C689B40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26C68ADDC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D6A6BC0](v9, a1);
      sub_26C678324(v9);
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

unint64_t sub_26C689C08(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26C6D8E48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_26C689CC0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_26C689928(a2);
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
      sub_26C6CEE70();
      goto LABEL_7;
    }

    sub_26C6CE658(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_26C689928(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_26C68ADDC(a2, v22);
      return sub_26C689E0C(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_26C6D8E78();
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
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_26C68A024(a1, v17);
}

_OWORD *sub_26C689E0C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_26C68A024(a3, (a4[7] + 32 * a1));
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

unint64_t sub_26C689E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B70, &qword_26C6DB3F0);
    v3 = sub_26C6D8DA8();
    v4 = a1 + 32;

    while (1)
    {
      sub_26C68AEFC(v4, v13, &qword_2804A86B8, &qword_26C6DA550);
      result = sub_26C689928(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_26C68A024(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

void sub_26C689FC4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = sub_26C6A3704(a1);
  v6 = v5;
  v3(v4, v5 & 1);

  sub_26C68AEE4(v4, v6 & 1);
}

_OWORD *sub_26C68A024(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26C68A03C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 == 3)
    {
      sub_26C67ED18(result, a2);
    }

    else
    {
      if (a7 != 4)
      {
        return result;
      }

      sub_26C67ED2C(a3, a4);
    }
  }

  else if (a7 >= 2u)
  {
    if (a7 != 2)
    {
      return result;
    }

    sub_26C67ED2C(result, a2);
  }
}

uint64_t sub_26C68A0F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26C68A148(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C68A19C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26C68A204(uint64_t a1, int a2)
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

uint64_t sub_26C68A24C(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26C68A2EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C68A334(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RetrieveFileResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RetrieveFileResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TransmittableFileDataType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TransmittableFileDataType(_WORD *result, int a2, int a3)
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

unint64_t sub_26C68A5E0()
{
  result = qword_2804A8B00;
  if (!qword_2804A8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8B00);
  }

  return result;
}

unint64_t sub_26C68A638()
{
  result = qword_2804A8B08;
  if (!qword_2804A8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8B08);
  }

  return result;
}

unint64_t sub_26C68A690()
{
  result = qword_2804A8B10;
  if (!qword_2804A8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8B10);
  }

  return result;
}

unint64_t sub_26C68A6E8()
{
  result = qword_2804A8B18;
  if (!qword_2804A8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8B18);
  }

  return result;
}

unint64_t sub_26C68A740()
{
  result = qword_2804A8B20;
  if (!qword_2804A8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8B20);
  }

  return result;
}

unint64_t sub_26C68A798()
{
  result = qword_2804A8B28;
  if (!qword_2804A8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8B28);
  }

  return result;
}

unint64_t sub_26C68A7EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B38, &qword_26C6DB3C0);
    v3 = sub_26C6D8DA8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26C689AC8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_26C68A900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B30, &qword_26C6DE730);
    v3 = sub_26C6D8DA8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26C689AC8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_26C68AA04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B58, &unk_26C6DE740);
    v3 = sub_26C6D8DA8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_26C67ED2C(v7, v8);
      result = sub_26C689AC8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_26C68AB1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B40, &qword_26C6DB3C8);
    v3 = sub_26C6D8DA8();
    v4 = a1 + 32;

    while (1)
    {
      sub_26C68AEFC(v4, &v15, &qword_2804A8B48, &qword_26C6DB3D0);
      v5 = v15;
      v6 = v16;
      result = sub_26C689AC8(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_26C68AC4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B50, &qword_26C6DB3D8);
    v3 = sub_26C6D8DA8();
    v4 = a1 + 32;

    while (1)
    {
      sub_26C68AEFC(v4, &v13, &unk_2804A91C0, &unk_26C6DB3E0);
      v5 = v13;
      v6 = v14;
      result = sub_26C689AC8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26C68A024(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

void sub_26C68AD7C(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_26C678418(a1, a2);
  }
}

unint64_t sub_26C68AD88()
{
  result = qword_2804A8B60;
  if (!qword_2804A8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8B60);
  }

  return result;
}

void sub_26C68AE38(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    sub_26C678418(a3, a4);
  }
}

unint64_t sub_26C68AE90()
{
  result = qword_2804A8B68;
  if (!qword_2804A8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8B68);
  }

  return result;
}

void sub_26C68AEE4(id a1, char a2)
{
  if (a2)
  {
  }
}

id sub_26C68AEF0(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_26C67ED2C(a1, a2);
  }
}

uint64_t sub_26C68AEFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26C68AF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26C68AEFC(a3, v27 - v11, &qword_2804A86F8, &qword_26C6DA3D0);
  v13 = sub_26C6D8B08();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26C677B60(v12, &qword_2804A86F8, &qword_26C6DA3D0);
  }

  else
  {
    sub_26C6D8AF8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26C6D8AD8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26C6D8A28() + 32;
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

      sub_26C677B60(a3, &qword_2804A86F8, &qword_26C6DA3D0);

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

  sub_26C677B60(a3, &qword_2804A86F8, &qword_26C6DA3D0);
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

uint64_t sub_26C68B290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26C68AEFC(a3, v27 - v11, &qword_2804A86F8, &qword_26C6DA3D0);
  v13 = sub_26C6D8B08();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26C677B60(v12, &qword_2804A86F8, &qword_26C6DA3D0);
  }

  else
  {
    sub_26C6D8AF8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26C6D8AD8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26C6D8A28() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C38, &qword_26C6DB550);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_26C677B60(a3, &qword_2804A86F8, &qword_26C6DA3D0);

      return v24;
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

  sub_26C677B60(a3, &qword_2804A86F8, &qword_26C6DA3D0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C38, &qword_26C6DB550);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_26C68B5A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064657461;
  v3 = 0x6974696E49746F6ELL;
  v4 = a1;
  v5 = 0x6164696C61766E69;
  v6 = 0xEB00000000646574;
  if (a1 != 6)
  {
    v5 = 0x64656C696166;
    v6 = 0xE600000000000000;
  }

  v7 = 0x7265746E456E6970;
  v8 = 0xEA00000000006465;
  if (a1 != 4)
  {
    v7 = 0x796C657275636573;
    v8 = 0xEE00646572696150;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x657463656E6E6F63;
  v10 = 0xE900000000000064;
  if (a1 != 2)
  {
    v9 = 0x796C657275636573;
    v10 = 0xEF676E6972696150;
  }

  v11 = 0x696C616974696E69;
  v12 = 0xEC000000676E697ALL;
  if (!a1)
  {
    v11 = 0x6974696E49746F6ELL;
    v12 = 0xEC00000064657461;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEB00000000646574;
        if (v13 != 0x6164696C61766E69)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x64656C696166)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA00000000006465;
      if (v13 != 0x7265746E456E6970)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xEE00646572696150;
      if (v13 != 0x796C657275636573)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE900000000000064;
        if (v13 != 0x657463656E6E6F63)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x796C657275636573;
      v2 = 0xEF676E6972696150;
    }

    else if (a2)
    {
      v2 = 0xEC000000676E697ALL;
      if (v13 != 0x696C616974696E69)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_26C6D8E48();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_26C68B858(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064657461;
  v3 = 0x7669746341746F6ELL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6974617669746361;
    }

    else
    {
      v5 = 0x7669746341746F6ELL;
    }

    if (v4)
    {
      v6 = 0xEA0000000000676ELL;
    }

    else
    {
      v6 = 0xEC00000064657461;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6574617669746361;
    v6 = 0xE900000000000064;
  }

  else
  {
    v5 = 0x6164696C61766E69;
    if (v4 == 3)
    {
      v6 = 0xEC000000676E6974;
    }

    else
    {
      v6 = 0xEB00000000646574;
    }
  }

  v7 = 0x6574617669746361;
  v8 = 0xE900000000000064;
  v9 = 0xEC000000676E6974;
  if (a2 != 3)
  {
    v9 = 0xEB00000000646574;
  }

  if (a2 != 2)
  {
    v7 = 0x6164696C61766E69;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x6974617669746361;
    v2 = 0xEA0000000000676ELL;
  }

  if (a2 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v7;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_26C6D8E48();
  }

  return v12 & 1;
}

uint64_t sub_26C68BA10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F697369766F7270;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1668184435;
    }

    else
    {
      v5 = 0x6F697369766F7270;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE90000000000006ELL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x6573617265;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6863746566;
    }

    else
    {
      v5 = 0x79636167656CLL;
    }

    if (v4 == 3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x6573617265;
  v9 = 0xE500000000000000;
  v10 = 0x6863746566;
  if (a2 != 3)
  {
    v10 = 0x79636167656CLL;
    v9 = 0xE600000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 1668184435;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_26C6D8E48();
  }

  return v13 & 1;
}

void *sub_26C68BBB8()
{
  v1 = OBJC_IVAR___WFSetupServerInternal_anisetteDataProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26C68BC64(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WFSetupServerInternal_anisetteDataProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_26C68BCC4()
{
  v1 = (*(v0 + OBJC_IVAR___WFSetupServerInternal_state) + OBJC_IVAR___WFSetupServerState_activationFlow);
  swift_beginAccess();
  if (v1[8] != 1)
  {
    return *v1;
  }

  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BA8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26C66B000, v3, v4, "Attempting to access activation flow but it's nil!", v5, 2u);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  return 1;
}

uint64_t sub_26C68BDEC(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD228);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_26C67A77C(0x656C656428746573, 0xEE00293A65746167, &v11);
    _os_log_impl(&dword_26C66B000, v5, v6, "Running WFSetupServer::%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v9 = *(v2 + OBJC_IVAR___WFSetupServerInternal_delegate);
  *(v2 + OBJC_IVAR___WFSetupServerInternal_delegate) = a1;
  swift_unknownObjectRelease();

  return swift_unknownObjectRetain();
}

uint64_t sub_26C68BFCC(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v7 = sub_26C6D8898();
  __swift_project_value_buffer(v7, qword_2804AD228);
  sub_26C69A68C(v3, v4, v5, v6);
  v8 = sub_26C6D8878();
  v9 = sub_26C6D8BB8();
  sub_26C698934(v3, v4, v5, v6);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v10 = 136446466;
    *(v10 + 4) = sub_26C67A77C(0xD000000000000017, 0x800000026C6DFB50, &v21);
    *(v10 + 12) = 2082;
    v22 = v3;
    v23 = v4;
    v24 = v5;
    v25 = v6;
    sub_26C69A68C(v3, v4, v5, v6);
    v11 = sub_26C6D8A18();
    v13 = v2;
    v14 = sub_26C67A77C(v11, v12, &v21);

    *(v10 + 14) = v14;
    v2 = v13;
    _os_log_impl(&dword_26C66B000, v8, v9, "Running WFSetupServer::%{public}s with %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v20, -1, -1);
    MEMORY[0x26D6A7490](v10, -1, -1);
  }

  v22 = v3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v15 = SetupServerStateChange.to()();
  v16 = *(v2 + OBJC_IVAR___WFSetupServerInternal_delegate);
  if (!v16)
  {
  }

  v17 = v15;
  swift_unknownObjectRetain();
  v18 = sub_26C6D89A8();

  [v16 didUpdate:v17 metaData:v18];

  return swift_unknownObjectRelease();
}

uint64_t sub_26C68C254(__int128 *a1)
{
  v2 = v1;
  v3 = a1[3];
  v28 = a1[2];
  v29 = v3;
  v30 = a1[4];
  v31 = *(a1 + 10);
  v4 = a1[1];
  v26 = *a1;
  v27 = v4;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v5 = sub_26C6D8898();
  __swift_project_value_buffer(v5, qword_2804AD228);
  sub_26C69A240(&v26, &v20);
  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BB8();
  sub_26C69A088(&v26);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_26C67A77C(0xD000000000000011, 0x800000026C6DFB00, &v19);
    *(v8 + 12) = 2082;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    sub_26C69A240(&v26, &v18);
    v10 = sub_26C6D8A18();
    v12 = sub_26C67A77C(v10, v11, &v19);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_26C66B000, v6, v7, "Running WFSetupServer::%{public}s with %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v20 = v26;
  v21 = v27;
  v13 = SetupServerData.to()();
  v14 = *(v2 + OBJC_IVAR___WFSetupServerInternal_delegate);
  if (!v14)
  {
  }

  v15 = v13;
  swift_unknownObjectRetain();
  v16 = sub_26C6D89A8();

  [v14 didReceive:v15 metaData:v16];

  return swift_unknownObjectRelease();
}

uint64_t sub_26C68C4EC(void **a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD228);
  sub_26C69A220(v3);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  sub_26C69A230(v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_26C67A77C(0x286C696146646964, 0xEF293A726F727265, &v17);
    *(v7 + 12) = 2082;
    sub_26C69A220(v3);
    v9 = sub_26C6D8A18();
    v11 = sub_26C67A77C(v9, v10, &v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26C66B000, v5, v6, "Running WFSetupServer::%{public}s with %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v17 = v3;
  v12 = SetupServerError.to()();
  v13 = *(v2 + OBJC_IVAR___WFSetupServerInternal_delegate);
  if (!v13)
  {
  }

  v14 = v12;
  swift_unknownObjectRetain();
  v15 = sub_26C6D89A8();

  [v13 didFail:v14 metaData:v15];

  return swift_unknownObjectRelease();
}

id WFSetupServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFSetupServer.init()()
{
  v0 = type metadata accessor for SFServiceAgent();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_26C66D2E0();
  v4 = objc_allocWithZone(type metadata accessor for WFSetupServer());
  v5 = sub_26C6981B8(v3, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id WFSetupServer.__deallocating_deinit()
{
  v1 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26C67A77C(0x74696E696564, 0xE600000000000000, &v9);
    _os_log_impl(&dword_26C66B000, v3, v4, "Running WFSetupServer::%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  v7 = type metadata accessor for WFSetupServer();
  v10.receiver = v1;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void sub_26C68CAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v83 - v12);
  static SetupServiceAction.from(_:metaData:handler:)(a1, a2, a3, a4, &v88);
  v14 = v92;
  if (v92 != 255)
  {
    v86 = v13;
    v16 = v88;
    v15 = v89;
    v18 = v90;
    v17 = v91;
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v19 = sub_26C6D8898();
    __swift_project_value_buffer(v19, qword_2804AD228);
    sub_26C698320(v16, v15, v18, v17, v14);
    v20 = sub_26C6D8878();
    v21 = sub_26C6D8BB8();
    sub_26C6983C0(v16, v15, v18, v17, v14);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v85 = v5;
      v23 = v22;
      v84 = swift_slowAlloc();
      v87 = v84;
      *v23 = 136446466;
      *(v23 + 4) = sub_26C67A77C(0xD000000000000023, 0x800000026C6DF8C0, &v87);
      *(v23 + 12) = 2080;
      v88 = v16;
      v89 = v15;
      v90 = v18;
      v91 = v17;
      v92 = v14;
      sub_26C698320(v16, v15, v18, v17, v14);
      v24 = sub_26C6D8A18();
      v26 = sub_26C67A77C(v24, v25, &v87);
      v83 = v20;
      v27 = v21;
      v28 = v16;
      v29 = v15;
      v30 = v18;
      v31 = v17;
      v32 = v26;

      *(v23 + 14) = v32;
      v17 = v31;
      v18 = v30;
      v15 = v29;
      v16 = v28;
      v33 = v27;
      v20 = v83;
      _os_log_impl(&dword_26C66B000, v83, v33, "Running WFSetupServer::%{public}s with action: %s", v23, 0x16u);
      v34 = v84;
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v34, -1, -1);
      v35 = v23;
      v5 = v85;
      MEMORY[0x26D6A7490](v35, -1, -1);
    }

    if (v14 <= 3)
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          sub_26C698320(v16, v15, v18, v17, 2u);
          v51 = sub_26C690F78(v16);
          v15(v51);
          sub_26C6983C0(v16, v15, v18, v17, 2u);
          v37 = v16;
          v38 = v15;
          v39 = v18;
          v40 = v17;
          v41 = 2;
        }

        else
        {
          sub_26C698320(v16, v15, v18, v17, 3u);
          v58 = sub_26C690A24();
          (v16)(v58 & 1);
          sub_26C6983C0(v16, v15, v18, v17, 3u);
          v37 = v16;
          v38 = v15;
          v39 = v18;
          v40 = v17;
          v41 = 3;
        }
      }

      else if (v14)
      {
        v52 = sub_26C698320(v16, v15, v18, v17, 1u);
        (v16)(v52);
        sub_26C6983C0(v16, v15, v18, v17, 1u);
        v37 = v16;
        v38 = v15;
        v39 = v18;
        v40 = v17;
        v41 = 1;
      }

      else
      {
        sub_26C698320(v16, v15, v18, v17, 0);
        v36 = sub_26C690860();
        (v16)(v36);
        sub_26C6983C0(v16, v15, v18, v17, 0);
        v37 = v16;
        v38 = v15;
        v39 = v18;
        v40 = v17;
        v41 = 0;
      }

      goto LABEL_39;
    }

    if (v14 > 5)
    {
      if (v14 == 6)
      {

        sub_26C692D64(v16, v15);
        v18();
        sub_26C6983C0(v16, v15, v18, v17, 6u);

        return;
      }

      v59 = v16;
      v60 = sub_26C6D8878();
      v61 = sub_26C6D8B98();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v85 = v5;
        v63 = v62;
        v64 = swift_slowAlloc();
        v88 = v64;
        *v63 = 136446210;
        LOBYTE(v87) = v59;
        v65 = sub_26C6D8A18();
        v67 = sub_26C67A77C(v65, v66, &v88);

        *(v63 + 4) = v67;
        _os_log_impl(&dword_26C66B000, v60, v61, "Setting Advertisement Behavior to %{public}s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x26D6A7490](v64, -1, -1);
        v68 = v63;
        v5 = v85;
        MEMORY[0x26D6A7490](v68, -1, -1);
      }

      v69 = sub_26C6D8B08();
      v70 = v86;
      (*(*(v69 - 8) + 56))(v86, 1, 1, v69);
      v71 = swift_allocObject();
      *(v71 + 16) = 0;
      *(v71 + 24) = 0;
      *(v71 + 32) = v5;
      *(v71 + 40) = v59;
      *(v71 + 48) = v15;
      *(v71 + 56) = v18;
      sub_26C698594(v59, v15, v18, v17, 7u);
      v72 = v5;
      sub_26C68AF90(0, 0, v70, &unk_26C6DB420, v71);

      v37 = v59;
      v38 = v15;
      v39 = v18;
      v40 = v17;
      v41 = 7;
      goto LABEL_39;
    }

    if (v14 == 4)
    {
      sub_26C698320(v16, v15, v18, v17, 4u);
      v49 = sub_26C6920E4();
      (v16)(v49);
      sub_26C6983C0(v16, v15, v18, v17, 4u);
      v37 = v16;
      v38 = v15;
      v39 = v18;
      v40 = v17;
      v41 = 4;
LABEL_39:
      sub_26C6983C0(v37, v38, v39, v40, v41);
      return;
    }

    v53 = v5;
    v54 = *&v5[OBJC_IVAR___WFSetupServerInternal_state] + OBJC_IVAR___WFSetupServerState_activationFlow;
    swift_beginAccess();
    if (*(v54 + 8))
    {
      sub_26C698320(v16, v15, v18, v17, 5u);
      v55 = sub_26C6D8878();
      v56 = sub_26C6D8BA8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_26C66B000, v55, v56, "Unable to verify need for .startSecurePairing without activation flow type.", v57, 2u);
LABEL_35:
        MEMORY[0x26D6A7490](v57, -1, -1);
      }
    }

    else
    {
      if (*v54 != 1)
      {
        v79 = sub_26C6D8B08();
        v80 = v86;
        (*(*(v79 - 8) + 56))(v86, 1, 1, v79);
        v81 = swift_allocObject();
        v81[2] = 0;
        v81[3] = 0;
        v81[4] = v53;
        v81[5] = v16;
        v81[6] = v15;
        sub_26C698594(v16, v15, v18, v17, 5u);
        v82 = v53;
        sub_26C68D778(0, 0, v80, &unk_26C6DB430, v81);

        goto LABEL_38;
      }

      sub_26C698320(v16, v15, v18, v17, 5u);
      v55 = sub_26C6D8878();
      v73 = sub_26C6D8B98();
      if (os_log_type_enabled(v55, v73))
      {
        v57 = swift_slowAlloc();
        v74 = v17;
        v75 = swift_slowAlloc();
        v87 = v75;
        *v57 = 136446210;
        v76 = v16;
        v77 = sub_26C67A77C(0xD000000000000012, 0x800000026C6DF8A0, &v87);

        *(v57 + 4) = v77;
        v16 = v76;
        _os_log_impl(&dword_26C66B000, v55, v73, "Ignoring .startSecurePairing request for flow %{public}s to avoid triggering race condition in TDGSharingViewService.", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        v78 = v75;
        v17 = v74;
        MEMORY[0x26D6A7490](v78, -1, -1);
        goto LABEL_35;
      }
    }

    v16();
    sub_26C6983C0(v16, v15, v18, v17, 5u);
LABEL_38:
    v37 = v16;
    v38 = v15;
    v39 = v18;
    v40 = v17;
    v41 = 5;
    goto LABEL_39;
  }

  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v42 = sub_26C6D8898();
  __swift_project_value_buffer(v42, qword_2804AD228);
  v86 = sub_26C6D8878();
  v43 = sub_26C6D8BA8();
  if (os_log_type_enabled(v86, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v87 = a1;
    v88 = v45;
    *v44 = 136315138;
    type metadata accessor for WFSetupServiceAction(0);
    v46 = sub_26C6D8A18();
    v48 = sub_26C67A77C(v46, v47, &v88);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_26C66B000, v86, v43, "Unable to decode action type: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x26D6A7490](v45, -1, -1);
    MEMORY[0x26D6A7490](v44, -1, -1);
  }

  else
  {
    v50 = v86;
  }
}

uint64_t sub_26C68D54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_26C68D5E0;

  return sub_26C693AC8();
}

uint64_t sub_26C68D5E0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26C68D710, 0, 0);
  }
}

uint64_t sub_26C68D710()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26C68D778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_26C68AEFC(a3, v24 - v10, &qword_2804A86F8, &qword_26C6DA3D0);
  v12 = sub_26C6D8B08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26C677B60(v11, &qword_2804A86F8, &qword_26C6DA3D0);
  }

  else
  {
    sub_26C6D8AF8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26C6D8AD8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26C6D8A28() + 32;

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

      sub_26C677B60(a3, &qword_2804A86F8, &qword_26C6DA3D0);

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

  sub_26C677B60(a3, &qword_2804A86F8, &qword_26C6DA3D0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26C68DA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 104) = a5;
  *(v7 + 64) = a4;
  return MEMORY[0x2822009F8](sub_26C68DA4C, 0, 0);
}

uint64_t sub_26C68DA4C()
{
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 64) + OBJC_IVAR___WFSetupServerInternal_state);
  v3 = OBJC_IVAR___WFSetupServerState_advertisementBehavior;
  swift_beginAccess();
  *(v2 + v3) = v1;
  if ((v1 - 1) <= 1)
  {
    v4 = (*(v0 + 64) + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
    *(v0 + 88) = *v4;
    v5 = v4[1];
    swift_getObjectType();
    v6 = *(v5 + 8);
    v7 = sub_26C6D8AD8();
    v9 = v8;
    v10 = sub_26C68DBE8;
LABEL_8:

    return MEMORY[0x2822009F8](v10, v7, v9);
  }

  v11 = OBJC_IVAR___WFSetupServerState_sessionState;
  swift_beginAccess();
  if (*(v2 + v11) - 1 >= 5)
  {
    v15 = (*(v0 + 64) + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
    *(v0 + 96) = *v15;
    v16 = v15[1];
    swift_getObjectType();
    v17 = *(v16 + 8);
    v7 = sub_26C6D8AD8();
    v9 = v18;
    v10 = sub_26C68DCCC;
    goto LABEL_8;
  }

  v12 = *(v0 + 80);
  (*(v0 + 72))(0, 0);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_26C68DBE8()
{
  [*(*(v0 + 88) + 24) setNeedsSetup_];

  return MEMORY[0x2822009F8](sub_26C68DC60, 0, 0);
}

uint64_t sub_26C68DC60()
{
  v1 = *(v0 + 80);
  (*(v0 + 72))(0, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26C68DCCC()
{
  [*(*(v0 + 96) + 24) setNeedsSetup_];

  return MEMORY[0x2822009F8](sub_26C69AC48, 0, 0);
}

void sub_26C68DD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v42 - v10;
  static SetupSessionRequest.from(_:metaData:handler:)(a1, a2, a3, a4, &v49);
  v11 = v55;
  if (v55 == 255)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v29 = sub_26C6D8898();
    __swift_project_value_buffer(v29, qword_2804AD228);
    v47 = sub_26C6D8878();
    v30 = sub_26C6D8BA8();
    if (os_log_type_enabled(v47, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = a1;
      v49 = v32;
      *v31 = 136315138;
      type metadata accessor for WFSetupSessionRequest(0);
      v33 = sub_26C6D8A18();
      v35 = sub_26C67A77C(v33, v34, &v49);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_26C66B000, v47, v30, "Unable to decode request type: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x26D6A7490](v32, -1, -1);
      MEMORY[0x26D6A7490](v31, -1, -1);
    }

    else
    {
      v41 = v47;
    }
  }

  else
  {
    v12 = v49;
    v13 = v50;
    v14 = v51;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v18 = sub_26C6D8898();
    __swift_project_value_buffer(v18, qword_2804AD228);
    sub_26C68A03C(v12, v13, v14, v15, v16, v17, v11);
    v19 = sub_26C6D8878();
    v20 = sub_26C6D8BB8();
    sub_26C698670(v12, v13, v14, v15, v16, v17, v11);
    v44 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v45 = v17;
      v22 = v21;
      v43 = swift_slowAlloc();
      v48 = v43;
      *v22 = 136446466;
      *(v22 + 4) = sub_26C67A77C(0xD000000000000021, 0x800000026C6DF8F0, &v48);
      *(v22 + 12) = 2080;
      v49 = v12;
      v50 = v13;
      v51 = v14;
      v52 = v15;
      v53 = v16;
      v54 = v45;
      v55 = v11;
      sub_26C68A03C(v12, v13, v14, v15, v16, v45, v11);
      v23 = sub_26C6D8A18();
      v42 = v16;
      v25 = sub_26C67A77C(v23, v24, &v48);

      *(v22 + 14) = v25;
      v26 = v42;
      _os_log_impl(&dword_26C66B000, v19, v44, "Running WFSetupServer::%{public}s with request: %s", v22, 0x16u);
      v27 = v43;
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v27, -1, -1);
      v28 = v22;
      v17 = v45;
      MEMORY[0x26D6A7490](v28, -1, -1);
    }

    else
    {

      v26 = v16;
    }

    v36 = sub_26C6D8B08();
    v37 = v46;
    (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v38 + 32) = v12;
    *(v38 + 40) = v13;
    *(v38 + 48) = v14;
    *(v38 + 56) = v15;
    *(v38 + 64) = v26;
    *(v38 + 72) = v17;
    *(v38 + 80) = v11;
    v39 = v47;
    *(v38 + 88) = v47;
    v40 = v39;
    sub_26C68D778(0, 0, v37, &unk_26C6DB440, v38);
  }
}

uint64_t sub_26C68E240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 256) = a4;
  *(v5 + 264) = a5;
  return MEMORY[0x2822009F8](sub_26C68E260, 0, 0);
}

uint64_t sub_26C68E260()
{
  v91 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *v2;
  *(v0 + 272) = *v2;
  v4 = *(v2 + 8);
  *(v0 + 280) = v4;
  v5 = *(v2 + 16);
  *(v0 + 288) = v5;
  v6 = *(v2 + 24);
  *(v0 + 296) = v6;
  v7 = *(v2 + 48);
  if (v7 <= 1)
  {
    v26 = &v1[OBJC_IVAR___WFSetupServerInternal_serviceAgent];
    if (*(v2 + 48))
    {
      *(v0 + 312) = *&v1[OBJC_IVAR___WFSetupServerInternal_serviceAgent];
      v56 = *(v26 + 1);
      swift_getObjectType();
      *(v0 + 40) = &type metadata for SetupActionRequest;
      *(v0 + 48) = &off_287D2E230;
      *(v0 + 16) = 1;
      v57 = swift_allocObject();
      v57[2] = v1;
      v57[3] = v3;
      v57[4] = v4;
      *(v0 + 56) = sub_26C69A7F0;
      *(v0 + 64) = v57;
      *(v0 + 72) = 0;
      v58 = v1;
      sub_26C69A82C(v2, v0 + 104);
      v59 = *(v56 + 8);
      v22 = sub_26C6D8AD8();
      v24 = v60;
      v25 = sub_26C68EF1C;
    }

    else
    {
      *(v0 + 304) = *&v1[OBJC_IVAR___WFSetupServerInternal_serviceAgent];
      v27 = *(v26 + 1);
      swift_getObjectType();
      *(v0 + 40) = &type metadata for SetupActionRequest;
      *(v0 + 48) = &off_287D2E230;
      *(v0 + 16) = 0;
      v28 = swift_allocObject();
      v28[2] = v1;
      v28[3] = v3;
      v28[4] = v4;
      *(v0 + 56) = sub_26C69A8C8;
      *(v0 + 64) = v28;
      *(v0 + 72) = 0;
      v29 = v1;
      sub_26C69A82C(v2, v0 + 104);
      v30 = *(v27 + 8);
      v22 = sub_26C6D8AD8();
      v24 = v31;
      v25 = sub_26C68EDCC;
    }

    goto LABEL_25;
  }

  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  if (v7 == 2)
  {
    if ((sub_26C6934C0() & 1) == 0)
    {
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v61 = sub_26C6D8898();
      __swift_project_value_buffer(v61, qword_2804AD228);
      v62 = sub_26C6D8878();
      v63 = sub_26C6D8BA8();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_26C66B000, v62, v63, "Rapport Not supported, returning error.", v64, 2u);
        MEMORY[0x26D6A7490](v64, -1, -1);
      }

      sub_26C67A728();
      v65 = swift_allocError();
      *v66 = 1;
      v86 = v65;
      v87 = 0;
      LOBYTE(v88) = 1;
      v9(&v86);
      sub_26C68AD7C(v86, v87, v88);
      goto LABEL_48;
    }

    v32 = *(v0 + 264);
    v33 = v32 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth;
    v34 = *(v32 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth + 16);
    *(v0 + 16) = *(v32 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth);
    *(v0 + 32) = v34;
    v36 = *(v33 + 48);
    v35 = *(v33 + 64);
    v37 = *(v33 + 32);
    *(v0 + 96) = *(v33 + 80);
    *(v0 + 64) = v36;
    *(v0 + 80) = v35;
    *(v0 + 48) = v37;
    if (!*(v0 + 16) || !*(v0 + 96))
    {
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v79 = sub_26C6D8898();
      __swift_project_value_buffer(v79, qword_2804AD228);
      v80 = sub_26C6D8878();
      v81 = sub_26C6D8B98();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_26C66B000, v80, v81, "OSVersion is nil, suggesting that we are connected to a pre-Luck device.", v82, 2u);
        MEMORY[0x26D6A7490](v82, -1, -1);
      }

      goto LABEL_48;
    }

    v38 = (v32 + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
    *(v0 + 320) = *v38;
    v39 = v38[1];
    swift_getObjectType();
    *(v0 + 216) = &type metadata for RapportSetupConnectionRequest;
    *(v0 + 224) = &off_287D2CA78;
    v40 = swift_allocObject();
    *(v0 + 192) = v40;
    v40[2] = v3;
    v40[3] = v4;
    v40[4] = v5;
    v40[5] = v6;
    v41 = swift_allocObject();
    *(v41 + 16) = v9;
    *(v41 + 24) = v8;
    *(v0 + 232) = sub_26C69A7E4;
    *(v0 + 240) = v41;
    *(v0 + 248) = 0;
    sub_26C68AEFC(v0 + 16, v0 + 104, &qword_2804A8BD8, &qword_26C6DB4E8);
    sub_26C67ED2C(v3, v4);

    sub_26C67ED2C(v3, v4);
    v42 = *(v39 + 8);

    v22 = sub_26C6D8AD8();
    v24 = v43;
    v25 = sub_26C68F06C;
LABEL_25:

    return MEMORY[0x2822009F8](v25, v22, v24);
  }

  if (v7 == 3)
  {
    if (sub_26C6934C0())
    {
      if (qword_2804A85B8 != -1)
      {
        swift_once();
      }

      v10 = sub_26C6D8898();
      __swift_project_value_buffer(v10, qword_2804AD288);
      v11 = sub_26C6D8878();
      v12 = sub_26C6D8BB8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_26C66B000, v11, v12, "Will generate RapportRetrieveDataRequest", v13, 2u);
        MEMORY[0x26D6A7490](v13, -1, -1);
      }

      sub_26C67ED18(v3, v4);
      v14 = sub_26C6D8878();
      v15 = sub_26C6D8BB8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_26C66B000, v14, v15, "Sending RapportRetrieveDataRequest", v16, 2u);
        MEMORY[0x26D6A7490](v16, -1, -1);
      }

      v17 = *(v0 + 264);

      v18 = v17 + OBJC_IVAR___WFSetupServerInternal_serviceAgent;
      *(v0 + 328) = *(v17 + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
      v19 = *(v18 + 8);
      swift_getObjectType();
      *(v0 + 40) = &type metadata for RapportRetrieveDataRequest;
      *(v0 + 48) = &off_287D2E918;
      *(v0 + 16) = v3;
      *(v0 + 24) = v4;
      v20 = swift_allocObject();
      *(v20 + 16) = v5;
      *(v20 + 24) = v6;
      *(v0 + 56) = sub_26C69A79C;
      *(v0 + 64) = v20;
      *(v0 + 72) = 0;
      sub_26C67ED18(v3, v4);
      v21 = *(v19 + 8);

      v22 = sub_26C6D8AD8();
      v24 = v23;
      v25 = sub_26C68F330;
      goto LABEL_25;
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v67 = sub_26C6D8898();
    __swift_project_value_buffer(v67, qword_2804AD228);
    v68 = sub_26C6D8878();
    v69 = sub_26C6D8BA8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_26C66B000, v68, v69, "Rapport Not supported, returning error.", v70, 2u);
      MEMORY[0x26D6A7490](v70, -1, -1);
    }

    sub_26C67A728();
    v71 = swift_allocError();
    *v72 = 1;
    v86 = v71;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 1;
    v5(&v86);
    sub_26C68AE38(v86, v87, v88, v89, v90);
  }

  else
  {

    if (sub_26C6934C0())
    {
      if (qword_2804A85B8 != -1)
      {
        swift_once();
      }

      v44 = sub_26C6D8898();
      __swift_project_value_buffer(v44, qword_2804AD288);

      v45 = sub_26C6D8878();
      v46 = sub_26C6D8BB8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v85 = v9;
        v86 = swift_slowAlloc();
        v48 = v86;
        *v47 = 136446466;
        *(v47 + 4) = sub_26C67A77C(v3, v4, &v86);
        *(v47 + 12) = 2082;
        *(v47 + 14) = sub_26C67A77C(0x656D6C6C6F726E65, 0xEB0000000073746ELL, &v86);
        _os_log_impl(&dword_26C66B000, v45, v46, "Preparing to send %{public}s of type: %{public}s", v47, 0x16u);
        swift_arrayDestroy();
        v49 = v48;
        v9 = v85;
        MEMORY[0x26D6A7490](v49, -1, -1);
        MEMORY[0x26D6A7490](v47, -1, -1);
      }

      v50 = (*(v0 + 264) + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
      *(v0 + 336) = *v50;
      v51 = v50[1];
      swift_getObjectType();
      *(v0 + 40) = &type metadata for RapportPrepareToSendDataRequest;
      *(v0 + 48) = &off_287D2E0F8;
      v52 = swift_allocObject();
      *(v0 + 16) = v52;
      v52[2] = v3;
      v52[3] = v4;
      v52[4] = v5;
      v52[5] = v6;
      v53 = swift_allocObject();
      *(v53 + 16) = v9;
      *(v53 + 24) = v8;
      *(v0 + 56) = sub_26C69A794;
      *(v0 + 64) = v53;
      *(v0 + 72) = 0;
      sub_26C67ED2C(v5, v6);

      sub_26C67ED2C(v5, v6);
      v54 = *(v51 + 8);

      v22 = sub_26C6D8AD8();
      v24 = v55;
      v25 = sub_26C68F4D8;
      goto LABEL_25;
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v73 = sub_26C6D8898();
    __swift_project_value_buffer(v73, qword_2804AD228);
    v74 = sub_26C6D8878();
    v75 = sub_26C6D8BA8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_26C66B000, v74, v75, "Rapport Not supported, returning error.", v76, 2u);
      MEMORY[0x26D6A7490](v76, -1, -1);
    }

    sub_26C67A728();
    v77 = swift_allocError();
    *v78 = 1;
    (v9)(v77, 1);
  }

LABEL_48:
  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_26C68EDCC()
{
  v1 = *(v0 + 304);
  *(v0 + 252) = sub_26C66EAD4(v0 + 16);
  sub_26C676820(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26C68EE8C()
{
  v1 = *(v0 + 252);
  sub_26C67675C();
  swift_allocError();
  *v2 = v1;
  *(v2 + 2) = BYTE2(v1) & 1;
  sub_26C676820(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26C68EF1C()
{
  v1 = *(v0 + 312);
  *(v0 + 344) = sub_26C66EAD4(v0 + 16);
  sub_26C676820(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26C68EFDC()
{
  v1 = *(v0 + 344);
  sub_26C67675C();
  swift_allocError();
  *v2 = v1;
  *(v2 + 2) = BYTE2(v1) & 1;
  sub_26C676820(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26C68F06C()
{
  v1 = *(v0 + 320);
  *(v0 + 348) = sub_26C66EAD4(v0 + 192);
  sub_26C676820(v0 + 192);

  return MEMORY[0x2822009F8](sub_26C68F104, 0, 0);
}

uint64_t sub_26C68F104()
{
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  __swift_project_value_buffer(v1, qword_2804AD228);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8B98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26C66B000, v2, v3, "Received setupFileTransferConnection Request from MuseBuddy", v8, 2u);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  sub_26C678418(v7, v6);

  sub_26C677B60((v0 + 2), &qword_2804A8BD8, &qword_26C6DB4E8);
  v9 = v0[1];

  return v9();
}

uint64_t sub_26C68F258()
{
  v1 = *(v0 + 348);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  sub_26C67675C();
  swift_allocError();
  *v5 = v1;
  *(v5 + 2) = BYTE2(v1) & 1;
  sub_26C678418(v4, v3);

  sub_26C677B60(v0 + 16, &qword_2804A8BD8, &qword_26C6DB4E8);
  sub_26C676820(v0 + 192);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26C68F330()
{
  v1 = *(v0 + 328);
  *(v0 + 352) = sub_26C66EAD4(v0 + 16);
  sub_26C676820(v0 + 16);

  return MEMORY[0x2822009F8](sub_26C68F3C8, 0, 0);
}

uint64_t sub_26C68F3C8()
{
  sub_26C67EE70(v0[34], v0[35]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_26C68F42C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  sub_26C67675C();
  swift_allocError();
  *v4 = v1;
  *(v4 + 2) = BYTE2(v1) & 1;
  sub_26C67EE70(v2, v3);
  sub_26C676820(v0 + 16);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26C68F4D8()
{
  v1 = *(v0 + 336);
  *(v0 + 356) = sub_26C66EAD4(v0 + 16);
  sub_26C676820(v0 + 16);

  return MEMORY[0x2822009F8](sub_26C68F570, 0, 0);
}

uint64_t sub_26C68F570()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];

  sub_26C678418(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_26C68F5E4()
{
  v1 = *(v0 + 356);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 280);
  sub_26C67675C();
  swift_allocError();
  *v5 = v1;
  *(v5 + 2) = BYTE2(v1) & 1;

  sub_26C678418(v2, v3);
  sub_26C676820(v0 + 16);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26C68F6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_26C68F738;

  return sub_26C697C64();
}

uint64_t sub_26C68F738()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C69AC50, 0, 0);
}

uint64_t sub_26C68F834(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_26C6D8B08();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v18 = a4;

  sub_26C68AF90(0, 0, v15, a8, v17);
}

uint64_t sub_26C68F94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_26C68F9E0;

  return sub_26C697C64();
}

uint64_t sub_26C68F9E0()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C68FADC, 0, 0);
}

uint64_t sub_26C68FADC()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

void sub_26C68FB40(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id *))
{
  if (a1)
  {
    v6 = a1;
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v7 = sub_26C6D8898();
    __swift_project_value_buffer(v7, qword_2804AD228);
    v8 = a1;
    v9 = sub_26C6D8878();
    v10 = sub_26C6D8BA8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_26C66B000, v9, v10, "Error returned from RapportSetupConnectionRequest:%{public}@", v11, 0xCu);
      sub_26C677B60(v12, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v12, -1, -1);
      MEMORY[0x26D6A7490](v11, -1, -1);
    }

    v38 = a1;
    v39 = 0;
    v40 = 1;
    v15 = a1;
    a4(&v38);
  }

  else if (a3)
  {
    v26 = sub_26C69FB90();
    v28 = v27;
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v29 = sub_26C6D8898();
    __swift_project_value_buffer(v29, qword_2804AD228);
    sub_26C67ED2C(v26, v28);
    v30 = sub_26C6D8878();
    v31 = sub_26C6D8B98();
    sub_26C678418(v26, v28);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v33;
      *v32 = 136315138;
      sub_26C67ED2C(v26, v28);
      v34 = sub_26C6D8788();
      v36 = v35;
      sub_26C678418(v26, v28);
      v37 = sub_26C67A77C(v34, v36, &v38);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_26C66B000, v30, v31, "Returning Peer Public Key: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x26D6A7490](v33, -1, -1);
      MEMORY[0x26D6A7490](v32, -1, -1);
    }

    v38 = v26;
    v39 = v28;
    v40 = 0;
    sub_26C67ED2C(v26, v28);
    a4(&v38);
    sub_26C678418(v26, v28);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v16 = sub_26C6D8898();
    __swift_project_value_buffer(v16, qword_2804AD228);

    v17 = sub_26C6D8878();
    v18 = sub_26C6D8BA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = v20;
      *v19 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9290, &qword_26C6DE9B0);
      v21 = sub_26C6D8A18();
      v23 = sub_26C67A77C(v21, v22, &v38);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_26C66B000, v17, v18, "Invalid data for RapportSetupConnectionResponse: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x26D6A7490](v20, -1, -1);
      MEMORY[0x26D6A7490](v19, -1, -1);
    }

    sub_26C699F34();
    v24 = swift_allocError();
    *v25 = 0;
    v38 = v24;
    v39 = 0;
    v40 = 1;
    a4(&v38);
  }

  sub_26C68AD7C(v38, v39, v40);
}

void sub_26C690008(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void **))
{
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v7 = sub_26C6D8898();
  __swift_project_value_buffer(v7, qword_2804AD288);
  v8 = sub_26C6D8878();
  v9 = sub_26C6D8BB8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26C66B000, v8, v9, "Completion from RapportRetrieveDataRequest", v10, 2u);
    MEMORY[0x26D6A7490](v10, -1, -1);
  }

  if (a1)
  {
    v11 = a1;
    v12 = sub_26C6D8878();
    v13 = sub_26C6D8BA8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_26C66B000, v12, v13, "Error retrieving data: %@", v14, 0xCu);
      sub_26C677B60(v15, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v15, -1, -1);
      MEMORY[0x26D6A7490](v14, -1, -1);
    }

    v43 = a1;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 1;
    v18 = a1;
    a4(&v43);
  }

  else if (a3)
  {
    v28 = sub_26C6C70AC();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    sub_26C67ED2C(v32, v34);
    v35 = sub_26C6D8878();
    v36 = sub_26C6D8BB8();

    sub_26C678418(v32, v34);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      v43 = v28;
      *v37 = 136446210;
      v44 = v30;
      v45 = v32;
      v46 = v34;

      sub_26C67ED2C(v32, v34);
      v38 = sub_26C6D8A18();
      v40 = sub_26C67A77C(v38, v39, &v42);

      *(v37 + 4) = v40;
      _os_log_impl(&dword_26C66B000, v35, v36, "Returning enrollment data for %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x26D6A7490](v41, -1, -1);
      MEMORY[0x26D6A7490](v37, -1, -1);
    }

    v43 = v28;
    v44 = v30;
    v45 = v32;
    v46 = v34;
    v47 = 0;

    sub_26C67ED2C(v32, v34);
    a4(&v43);

    sub_26C678418(v32, v34);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v7, qword_2804AD228);

    v19 = sub_26C6D8878();
    v20 = sub_26C6D8BA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42 = 0;
      v43 = v22;
      *v21 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9290, &qword_26C6DE9B0);
      v23 = sub_26C6D8A18();
      v25 = sub_26C67A77C(v23, v24, &v43);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_26C66B000, v19, v20, "Invalid data for RapportRetrieveDataResponse: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x26D6A7490](v22, -1, -1);
      MEMORY[0x26D6A7490](v21, -1, -1);
    }

    sub_26C699F34();
    v26 = swift_allocError();
    *v27 = 0;
    v43 = v26;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 1;
    a4(&v43);
  }

  sub_26C68AE38(v43, v44, v45, v46, v47);
}

void sub_26C690528(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD288);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26C66B000, v7, v8, "Completion from RapportPrepareToSendDataRequest", v9, 2u);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  if (a1)
  {
    v10 = a1;
    v11 = sub_26C6D8878();
    v12 = sub_26C6D8BA8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_26C66B000, v11, v12, "Error preparing for transfer: %@", v13, 0xCu);
      sub_26C677B60(v14, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v14, -1, -1);
      MEMORY[0x26D6A7490](v13, -1, -1);
    }

    v17 = a1;
    a4(a1, 1);
  }

  else
  {
    a4(0, 0);
  }
}

uint64_t sub_26C690784(void *a1, int a2, uint64_t a3, int a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  v13 = sub_26C6D89B8();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = a1;
  a8(a3, v13, a7, v14);
}

uint64_t sub_26C6908C0()
{
  v1 = v0[2];
  v2 = v1 + OBJC_IVAR___WFSetupServerInternal_serviceAgent;
  v0[3] = *(v1 + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
  v3 = *(v2 + 8);
  swift_getObjectType();
  v4 = v1 + OBJC_IVAR___WFSetupServerInternal_sharingRestartLockReason;
  v0[4] = *(v1 + OBJC_IVAR___WFSetupServerInternal_sharingRestartLockReason);
  v0[5] = *(v4 + 8);
  v5 = *(v3 + 8);
  v7 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C690978, v7, v6);
}

uint64_t sub_26C690978()
{
  v1 = v0[3];
  sub_26C66DABC(v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_26C690A24()
{
  v1 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26C67A77C(0x2928656D75736572, 0xE800000000000000, v34);
    _os_log_impl(&dword_26C66B000, v3, v4, "Running WFSetupServer::%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  v7 = OBJC_IVAR___WFSetupServerInternal_state;
  v8 = *&v0[OBJC_IVAR___WFSetupServerInternal_state];
  v9 = OBJC_IVAR___WFSetupServerState_serviceState;
  swift_beginAccess();
  if (v8[v9] - 1 <= 1)
  {
    v10 = OBJC_IVAR___WFSetupServerState_sessionState;
    swift_beginAccess();
    if (v8[v10] - 1 <= 4)
    {
      v11 = *&v0[OBJC_IVAR___WFSetupServerInternal_messageSession];
      if (v11)
      {
        v12 = *&v0[OBJC_IVAR___WFSetupServerInternal_setupData];
        v34[0] = v8;
        v34[1] = v11;
        v34[2] = v12;
        v35 = 0;
        v13 = v12;
        v14 = v11;
        v15 = v8;
        sub_26C68BFCC(v34);

        sub_26C698934(v8, v11, v12, 0);
        return 1;
      }
    }
  }

  v17 = v0;
  v18 = sub_26C6D8878();
  v19 = sub_26C6D8BA8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = 0xEC00000064657461;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v22;
    *v21 = 136446466;
    v23 = *&v1[v7];
    v24 = OBJC_IVAR___WFSetupServerState_serviceState;
    swift_beginAccess();
    v25 = *(v23 + v24);
    if (v25 <= 1)
    {
      if (*(v23 + v24))
      {
        v27 = 0xEA0000000000676ELL;
        v26 = 0x6974617669746361;
      }

      else
      {
        v26 = 0x7669746341746F6ELL;
        v27 = 0xEC00000064657461;
      }
    }

    else if (v25 == 2)
    {
      v26 = 0x6574617669746361;
      v27 = 0xE900000000000064;
    }

    else
    {
      v26 = 0x6164696C61766E69;
      if (v25 == 3)
      {
        v27 = 0xEC000000676E6974;
      }

      else
      {
        v27 = 0xEB00000000646574;
      }
    }

    v28 = sub_26C67A77C(v26, v27, &v36);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2082;
    v29 = *&v1[v7];
    v30 = OBJC_IVAR___WFSetupServerState_sessionState;
    swift_beginAccess();
    v31 = *(v29 + v30);
    if (v31 > 3)
    {
      if (*(v29 + v30) > 5u)
      {
        if (v31 == 6)
        {
          v32 = 0x6164696C61766E69;
          v20 = 0xEB00000000646574;
        }

        else
        {
          v20 = 0xE600000000000000;
          v32 = 0x64656C696166;
        }

        goto LABEL_35;
      }

      if (v31 == 4)
      {
        v32 = 0x7265746E456E6970;
        v20 = 0xEA00000000006465;
LABEL_35:
        v33 = sub_26C67A77C(v32, v20, &v36);

        *(v21 + 14) = v33;
        _os_log_impl(&dword_26C66B000, v18, v19, "WFSetupServer attempting to resume when server or session state is not active: [server %{public}s], [session %{public}s]", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D6A7490](v22, -1, -1);
        MEMORY[0x26D6A7490](v21, -1, -1);
        goto LABEL_36;
      }

      v20 = 0xEE00646572696150;
    }

    else
    {
      if (*(v29 + v30) <= 1u)
      {
        if (*(v29 + v30))
        {
          v20 = 0xEC000000676E697ALL;
          v32 = 0x696C616974696E69;
        }

        else
        {
          v32 = 0x6974696E49746F6ELL;
        }

        goto LABEL_35;
      }

      if (v31 == 2)
      {
        v32 = 0x657463656E6E6F63;
        v20 = 0xE900000000000064;
        goto LABEL_35;
      }

      v20 = 0xEF676E6972696150;
    }

    v32 = 0x796C657275636573;
    goto LABEL_35;
  }

LABEL_36:

  return 0;
}

uint64_t sub_26C690F78(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD228);
  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_26C67A77C(0x6574617669746361, 0xEF293A6874697728, &v21);
    *(v11 + 12) = 2080;
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v13 = 0xE400000000000000;
        v14 = 1398035026;
        goto LABEL_14;
      }

      if (a1 == 4)
      {
        v14 = 0xD000000000000010;
        v13 = 0x800000026C6DF880;
        goto LABEL_14;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v13 = 0x800000026C6DF8A0;
        v14 = 0xD000000000000012;
        goto LABEL_14;
      }

      if (a1 == 2)
      {
        v13 = 0xE500000000000000;
        v14 = 0x7473657567;
LABEL_14:
        v15 = sub_26C67A77C(v14, v13, &v21);

        *(v11 + 14) = v15;
        _os_log_impl(&dword_26C66B000, v9, v10, "Running WFSetupServer::%{public}s with flow: %s", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D6A7490](v12, -1, -1);
        MEMORY[0x26D6A7490](v11, -1, -1);
        goto LABEL_15;
      }
    }

    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
    goto LABEL_14;
  }

LABEL_15:

  v16 = sub_26C6D8B08();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v2;
  v17[5] = a1;
  v18 = v2;
  sub_26C68AF90(0, 0, v7, &unk_26C6DB460, v17);
}

uint64_t sub_26C691284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C691320, 0, 0);
}

uint64_t sub_26C691320()
{
  v32 = v0;
  v1 = v0[17];
  v2 = OBJC_IVAR___WFSetupServerInternal_state;
  v0[20] = OBJC_IVAR___WFSetupServerInternal_state;
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR___WFSetupServerState_serviceState;
  swift_beginAccess();
  if (*(v3 + v4) - 1 >= 2)
  {
    v17 = v0[17];
    v18 = v17 + OBJC_IVAR___WFSetupServerInternal_serviceAgent;
    v0[21] = *(v17 + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
    v19 = *(v18 + 8);
    swift_getObjectType();
    v20 = v17 + OBJC_IVAR___WFSetupServerInternal_sharingRestartLockReason;
    v0[22] = *(v17 + OBJC_IVAR___WFSetupServerInternal_sharingRestartLockReason);
    v0[23] = *(v20 + 8);
    v21 = *(v19 + 8);
    v22 = sub_26C6D8AD8();
    v24 = v23;
    v25 = sub_26C6915C8;
  }

  else
  {
    v5 = OBJC_IVAR___WFSetupServerState_sessionState;
    swift_beginAccess();
    if (*(v3 + v5) - 1 < 5)
    {
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v6 = sub_26C6D8898();
      __swift_project_value_buffer(v6, qword_2804AD228);
      v7 = sub_26C6D8878();
      v8 = sub_26C6D8BB8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_26C66B000, v7, v8, "WFSetupServer is already activated.", v9, 2u);
        MEMORY[0x26D6A7490](v9, -1, -1);
      }

      v10 = v0[20];
      v11 = v0[17];

      v12 = *(v11 + v10);
      v30[1] = 0;
      v30[2] = 0;
      v30[0] = v12;
      v31 = 1;
      v13 = v12;
      sub_26C68BFCC(v30);
      sub_26C698934(v12, 0, 0, 1u);
      v14 = v0[19];

      v15 = v0[1];

      return v15();
    }

    v26 = (v0[17] + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
    v0[26] = *v26;
    v27 = v26[1];
    swift_getObjectType();
    v28 = *(v27 + 8);
    v22 = sub_26C6D8AD8();
    v24 = v29;
    v25 = sub_26C691CA4;
  }

  return MEMORY[0x2822009F8](v25, v22, v24);
}

uint64_t sub_26C6915C8()
{
  v1 = v0[21];
  sub_26C66DABC(v0[22], v0[23]);

  return MEMORY[0x2822009F8](sub_26C691634, 0, 0);
}

uint64_t sub_26C691634()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = sub_26C6D8B08();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v8 = sub_26C68AF90(0, 0, v1, &unk_26C6DB578, v7);
  v9 = *(v3 + OBJC_IVAR___WFSetupServerInternal_serviceAgentListeningTask);
  *(v3 + OBJC_IVAR___WFSetupServerInternal_serviceAgentListeningTask) = v8;

  v10 = *(v3 + v2);
  v11 = OBJC_IVAR___WFSetupServerState_serviceState;
  swift_beginAccess();
  *(v10 + v11) = 1;
  v12 = v10 + OBJC_IVAR___WFSetupServerState_activationFlow;
  result = swift_beginAccess();
  *v12 = v4;
  *(v12 + 8) = 0;
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v0[18];
  if (v14 > 0xFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = sub_26C691828;
  v16 = v0[21];
  if ((v4 - 2) >= 3)
  {
    v17 = 36;
  }

  else
  {
    v17 = 90;
  }

  return sub_26C66DF00(v17, v14);
}

uint64_t sub_26C691828()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_26C691AD0;
  }

  else
  {
    v3 = sub_26C69193C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C69193C()
{
  v16 = v0;
  v1 = *(v0[17] + v0[20]);
  v2 = OBJC_IVAR___WFSetupServerState_serviceState;
  swift_beginAccess();
  *(v1 + v2) = 2;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v3 = sub_26C6D8898();
  __swift_project_value_buffer(v3, qword_2804AD228);
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_26C66B000, v4, v5, "SFService activated successfully.", v6, 2u);
    MEMORY[0x26D6A7490](v6, -1, -1);
  }

  v7 = v0[20];
  v8 = v0[17];

  v9 = *(v8 + v7);
  v14[1] = 0;
  v14[2] = 0;
  v14[0] = v9;
  v15 = 1;
  v10 = v9;
  sub_26C68BFCC(v14);
  sub_26C698934(v9, 0, 0, 1u);
  v11 = v0[19];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26C691AD0()
{
  v18 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26C66B000, v4, v5, "Error activating SFService: %@", v7, 0xCu);
    sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v11 = v0[25];
  v12 = v0[17];

  sub_26C6920E4();
  memset(v16, 0, sizeof(v16));
  v17 = 6;
  sub_26C68BFCC(v16);
  v16[0] = 0;
  sub_26C68C4EC(v16);

  v13 = v0[19];

  v14 = v0[1];

  return v14();
}

uint64_t sub_26C691CA4()
{
  [*(*(v0 + 208) + 24) setNeedsSetup_];

  return MEMORY[0x2822009F8](sub_26C691D1C, 0, 0);
}

uint64_t sub_26C691D1C()
{
  v14 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  __swift_project_value_buffer(v1, qword_2804AD228);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26C66B000, v2, v3, "WFSetupServer is already activated.", v4, 2u);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v5 = v0[20];
  v6 = v0[17];

  v7 = *(v6 + v5);
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = v7;
  v13 = 1;
  v8 = v7;
  sub_26C68BFCC(v12);
  sub_26C698934(v7, 0, 0, 1u);
  v9 = v0[19];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26C691E9C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_26C691F84;

    return sub_26C694254();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_26C691F84()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26C692120(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v13 = sub_26C6D8898();
  __swift_project_value_buffer(v13, qword_2804AD228);
  v14 = sub_26C6D8878();
  v15 = sub_26C6D8BB8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_26C67A77C(a1, a2, &v23);
    _os_log_impl(&dword_26C66B000, v14, v15, "Running WFSetupServer::%{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x26D6A7490](v17, -1, -1);
    MEMORY[0x26D6A7490](v16, -1, -1);
  }

  v18 = sub_26C6D8B08();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v8;
  v20 = v8;
  sub_26C68AF90(0, 0, v12, a4, v19);
}

uint64_t sub_26C69235C()
{
  v1 = v0[8];
  v2 = OBJC_IVAR___WFSetupServerInternal_state;
  v0[9] = OBJC_IVAR___WFSetupServerInternal_state;
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR___WFSetupServerState_serviceState;
  swift_beginAccess();
  if (*(v3 + v4) - 1 > 1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v8 = sub_26C6D8898();
    __swift_project_value_buffer(v8, qword_2804AD228);
    v9 = sub_26C6D8878();
    v10 = sub_26C6D8BA8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26C66B000, v9, v10, "Invalidate method already called returning early.", v11, 2u);
      MEMORY[0x26D6A7490](v11, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }

  else
  {
    *(v3 + v4) = 3;
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_26C692528;
    v6 = v0[8];

    return sub_26C697C64();
  }
}

uint64_t sub_26C692528()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C692624, 0, 0);
}

uint64_t sub_26C692624()
{
  v1 = (v0[8] + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
  v0[11] = *v1;
  v2 = v1[1];
  swift_getObjectType();
  v3 = *(v2 + 8);
  v5 = sub_26C6D8AD8();
  v0[12] = v5;
  v0[13] = v4;

  return MEMORY[0x2822009F8](sub_26C6926B8, v5, v4);
}

uint64_t sub_26C6926B8()
{
  v1 = v0[11];
  sub_26C66E89C();
  v2 = v0[12];
  v3 = v0[13];

  return MEMORY[0x2822009F8](sub_26C69271C, v2, v3);
}

uint64_t sub_26C69271C()
{
  v1 = *(v0 + 88);
  sub_26C66DD20();

  return MEMORY[0x2822009F8](sub_26C692784, 0, 0);
}

uint64_t sub_26C692784()
{
  v1 = v0[8];
  v2 = *(v1 + v0[9]);
  v3 = OBJC_IVAR___WFSetupServerState_serviceState;
  swift_beginAccess();
  *(v2 + v3) = 4;
  v4 = OBJC_IVAR___WFSetupServerInternal_serviceAgentListeningTask;
  if (*(v1 + OBJC_IVAR___WFSetupServerInternal_serviceAgentListeningTask))
  {
    v5 = *(v1 + OBJC_IVAR___WFSetupServerInternal_serviceAgentListeningTask);

    sub_26C6D8B58();

    v6 = *(v1 + v4);
  }

  *(v1 + v4) = 0;

  v7 = v0[1];

  return v7();
}

uint64_t sub_26C6928B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 76) = a4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a5;
  return MEMORY[0x2822009F8](sub_26C6928D8, 0, 0);
}

uint64_t sub_26C6928D8()
{
  v1 = *(v0 + 76);
  if (v1 == 1)
  {
    v9 = (*(v0 + 88) + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
    *(v0 + 104) = *v9;
    v10 = v9[1];
    swift_getObjectType();
    *(v0 + 40) = &type metadata for SetupActionRequest;
    *(v0 + 48) = &off_287D2E230;
    *(v0 + 16) = 1;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    v11 = *(v10 + 8);
    v5 = sub_26C6D8AD8();
    v7 = v12;
    v8 = sub_26C692C1C;
    goto LABEL_5;
  }

  if (v1 == 8)
  {
    v2 = (*(v0 + 88) + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
    *(v0 + 96) = *v2;
    v3 = v2[1];
    swift_getObjectType();
    *(v0 + 40) = &type metadata for SetupActionRequest;
    *(v0 + 48) = &off_287D2E230;
    *(v0 + 16) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    v4 = *(v3 + 8);
    v5 = sub_26C6D8AD8();
    v7 = v6;
    v8 = sub_26C692B00;
LABEL_5:

    return MEMORY[0x2822009F8](v8, v5, v7);
  }

  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v13 = sub_26C6D8898();
  __swift_project_value_buffer(v13, qword_2804AD228);
  v14 = sub_26C6D8878();
  v15 = sub_26C6D8BA8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26C66B000, v14, v15, "Unable to send unknown setup action type.", v16, 2u);
    MEMORY[0x26D6A7490](v16, -1, -1);
  }

  **(v0 + 80) = 0;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26C692B00()
{
  v1 = *(v0 + 96);
  sub_26C66EAD4(v0 + 16);
  sub_26C676820(v0 + 16);

  return MEMORY[0x2822009F8](sub_26C692B94, 0, 0);
}

uint64_t sub_26C692BB0()
{
  sub_26C676820(v0 + 16);
  **(v0 + 80) = 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26C692C1C()
{
  v1 = *(v0 + 104);
  sub_26C66EAD4(v0 + 16);
  sub_26C676820(v0 + 16);

  return MEMORY[0x2822009F8](sub_26C69ACC8, 0, 0);
}

void sub_26C692D64(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32[-v8];
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v10 = sub_26C6D8898();
  __swift_project_value_buffer(v10, qword_2804AD228);

  v11 = sub_26C6D8878();
  v12 = sub_26C6D8BB8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_26C67A77C(0x5F286E6950797274, 0xEA0000000000293ALL, v34);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_26C67A77C(a1, a2, v34);
    _os_log_impl(&dword_26C66B000, v11, v12, "Running WFSetupServer::%{public}s with pin: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v14, -1, -1);
    MEMORY[0x26D6A7490](v13, -1, -1);
  }

  v15 = OBJC_IVAR___WFSetupServerInternal_state;
  v16 = *&v2[OBJC_IVAR___WFSetupServerInternal_state];
  v17 = OBJC_IVAR___WFSetupServerState_sessionState;
  swift_beginAccess();
  if (*(v16 + v17) == 3)
  {

LABEL_8:
    v19 = sub_26C6D8B08();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v3;
    v20[5] = a1;
    v20[6] = a2;

    v21 = v3;
    sub_26C68AF90(0, 0, v9, &unk_26C6DB480, v20);

    return;
  }

  v18 = sub_26C6D8E48();

  if (v18)
  {
    goto LABEL_8;
  }

  v22 = v2;
  v23 = sub_26C6D8878();
  v24 = sub_26C6D8BA8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136446210;
    v27 = *&v3[v15];
    v28 = OBJC_IVAR___WFSetupServerState_sessionState;
    swift_beginAccess();
    v32[7] = *(v27 + v28);
    v29 = sub_26C6D8A18();
    v31 = sub_26C67A77C(v29, v30, &v33);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_26C66B000, v23, v24, "Unable to attempt a pin pair with a session in state: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x26D6A7490](v26, -1, -1);
    MEMORY[0x26D6A7490](v25, -1, -1);
  }
}

uint64_t sub_26C693268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  return MEMORY[0x2822009F8](sub_26C69328C, 0, 0);
}

uint64_t sub_26C69328C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v3 + OBJC_IVAR___WFSetupServerInternal_state);
  v5 = OBJC_IVAR___WFSetupServerState_sessionState;
  swift_beginAccess();
  *(v4 + v5) = 4;
  v6 = v3 + OBJC_IVAR___WFSetupServerInternal_serviceAgent;
  *(v0 + 128) = *(v3 + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
  v7 = *(v6 + 8);
  swift_getObjectType();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 72) = 2;
  v8 = *(v7 + 8);

  v10 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C69338C, v10, v9);
}

uint64_t sub_26C69338C()
{
  v1 = *(v0 + 128);
  sub_26C66EAD4(v0 + 16);
  sub_26C676820(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26C6934C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C28, &qword_26C6DB538);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v36[-1] - v3;
  v5 = *(v0 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth + 16);
  v37[0] = *(v0 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth);
  v6 = *(v0 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth + 64);
  v7 = *(v0 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth + 32);
  v38 = *(v0 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth + 48);
  v39 = v6;
  v8 = *(v0 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth + 80);
  v40 = v8;
  v37[1] = v5;
  v37[2] = v7;
  if (!*&v37[0])
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v18 = sub_26C6D8898();
    __swift_project_value_buffer(v18, qword_2804AD228);
    v19 = sub_26C6D8878();
    v20 = sub_26C6D8BA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26C66B000, v19, v20, "PeerPreAuth is nil, so we are unable to check client OS support for Rapport.", v21, 2u);
      MEMORY[0x26D6A7490](v21, -1, -1);
    }

    return 0;
  }

  if (!v8)
  {
    v22 = *(&v38 + 1);
    v23 = v39;

    sub_26C67ED2C(v22, v23);
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v24 = sub_26C6D8898();
    __swift_project_value_buffer(v24, qword_2804AD228);
    v25 = sub_26C6D8878();
    v26 = sub_26C6D8BA8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26C66B000, v25, v26, "OSVersion is nil, suggesting that our version is below the required 19.0 for Rapport support.", v27, 2u);
      MEMORY[0x26D6A7490](v27, -1, -1);
    }

    goto LABEL_18;
  }

  v9 = *(&v39 + 1);
  v36[13] = 808335665;
  v36[14] = 0xE400000000000000;
  v36[11] = *(&v39 + 1);
  v36[12] = v8;
  v10 = sub_26C6D8868();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_26C68AEFC(v37, v36, &qword_2804A8BD8, &qword_26C6DB4E8);
  sub_26C69A1CC();

  v11 = sub_26C6D8C68();
  sub_26C677B60(v4, &qword_2804A8C28, &qword_26C6DB538);
  if (v11 == 1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v12 = sub_26C6D8898();
    __swift_project_value_buffer(v12, qword_2804AD228);

    v13 = sub_26C6D8878();
    v14 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v13, v14))
    {

      sub_26C677B60(v37, &qword_2804A8BD8, &qword_26C6DB4E8);

      return 0;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36[0] = v16;
    *v15 = 136446210;
    v17 = sub_26C67A77C(v9, v8, v36);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_26C66B000, v13, v14, "OSVersion %{public}s, is not >= 19.0 so we do not have Rapport support.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D6A7490](v16, -1, -1);
    MEMORY[0x26D6A7490](v15, -1, -1);

LABEL_18:
    sub_26C677B60(v37, &qword_2804A8BD8, &qword_26C6DB4E8);
    return 0;
  }

  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v28 = sub_26C6D8898();
  __swift_project_value_buffer(v28, qword_2804AD228);

  v29 = sub_26C6D8878();
  v30 = sub_26C6D8BB8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v31 = 136446210;
    v33 = sub_26C67A77C(v9, v8, v36);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_26C66B000, v29, v30, "OSVersion %{public}s, is >= 19.0, continuing with Rapport requests.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x26D6A7490](v32, -1, -1);
    MEMORY[0x26D6A7490](v31, -1, -1);

    sub_26C677B60(v37, &qword_2804A8BD8, &qword_26C6DB4E8);
  }

  else
  {

    sub_26C677B60(v37, &qword_2804A8BD8, &qword_26C6DB4E8);
  }

  return 1;
}

uint64_t sub_26C693AE8()
{
  v30 = v0;
  v1 = *(v0 + 128);
  v2 = OBJC_IVAR___WFSetupServerInternal_state;
  v3 = *(v1 + OBJC_IVAR___WFSetupServerInternal_state);
  v4 = OBJC_IVAR___WFSetupServerState_sessionState;
  swift_beginAccess();
  if (*(v3 + v4) == 2)
  {

LABEL_4:
    v6 = *(v0 + 128);
    v7 = *(v1 + v2);
    v8 = OBJC_IVAR___WFSetupServerState_sessionState;
    swift_beginAccess();
    *(v7 + v8) = 3;
    v9 = v6 + OBJC_IVAR___WFSetupServerInternal_serviceAgent;
    *(v0 + 136) = *(v6 + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
    v10 = *(v9 + 8);
    swift_getObjectType();
    *(v0 + 40) = &type metadata for SecurityRequest;
    *(v0 + 48) = &off_287D2D528;
    *(v0 + 16) = 0;
    v11 = swift_allocObject();
    *(v0 + 144) = v11;
    swift_unknownObjectWeakInit();
    *(v0 + 56) = sub_26C69A1C4;
    *(v0 + 64) = v11;
    *(v0 + 72) = 0;
    v12 = *(v10 + 8);

    v14 = sub_26C6D8AD8();
    *(v0 + 152) = v14;
    *(v0 + 160) = v13;

    return MEMORY[0x2822009F8](sub_26C693F20, v14, v13);
  }

  v5 = sub_26C6D8E48();

  if (v5)
  {
    goto LABEL_4;
  }

  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 128);
  v16 = sub_26C6D8898();
  __swift_project_value_buffer(v16, qword_2804AD228);
  v17 = v15;
  v18 = sub_26C6D8878();
  v19 = sub_26C6D8BA8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136446210;
    v22 = *(v1 + v2);
    v23 = OBJC_IVAR___WFSetupServerState_sessionState;
    swift_beginAccess();
    *(v0 + 104) = *(v22 + v23);
    v24 = sub_26C6D8A18();
    v26 = sub_26C67A77C(v24, v25, &v29);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_26C66B000, v18, v19, "Can't start secure pairing with session in %{public}s state.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x26D6A7490](v21, -1, -1);
    MEMORY[0x26D6A7490](v20, -1, -1);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_26C693F20()
{
  v1 = *(v0 + 136);
  *(v0 + 76) = sub_26C66EAD4(v0 + 16);
  *(v0 + 168) = 0;
  v2 = *(v0 + 144);
  sub_26C676820(v0 + 16);

  return MEMORY[0x2822009F8](sub_26C693FC8, 0, 0);
}

uint64_t sub_26C693FC8()
{
  *(v0 + 64) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 72) = 4;
  return MEMORY[0x2822009F8](sub_26C693FF8, *(v0 + 152), *(v0 + 160));
}

uint64_t sub_26C693FF8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  *(v0 + 176) = sub_26C66EAD4(v0 + 16);
  sub_26C676820(v0 + 16);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26C694160, 0, 0);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_26C6940B8()
{
  v1 = *(v0 + 76);
  v2 = *(v0 + 144);
  sub_26C67675C();
  swift_allocError();
  *v3 = v1;
  *(v3 + 2) = BYTE2(v1) & 1;
  sub_26C676820(v0 + 16);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26C694160()
{
  v1 = *(v0 + 176);
  sub_26C67675C();
  swift_allocError();
  *v2 = v1;
  *(v2 + 2) = BYTE2(v1) & 1;
  v3 = *(v0 + 8);

  return v3();
}

void sub_26C6941E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2[1] = 0;
    v2[2] = 0;
    v2[0] = 1;
    v3 = 6;
    sub_26C68BFCC(v2);
  }
}

uint64_t sub_26C694274()
{
  v1 = (v0[136] + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
  v0[137] = *v1;
  v2 = v1[1];
  swift_getObjectType();
  v0[138] = *(v2 + 8);
  v4 = sub_26C6D8AD8();
  v0[139] = v4;
  v0[140] = v3;

  return MEMORY[0x2822009F8](sub_26C694310, v4, v3);
}

uint64_t sub_26C694310()
{
  sub_26C67749C(*(v0 + 1096) + 48, v0 + 752);

  return MEMORY[0x2822009F8](sub_26C694380, 0, 0);
}

uint64_t sub_26C694380()
{
  v1 = v0[136];
  v2 = v0[97];
  v3 = v0[98];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 94, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v2);
  v8 = *(v3 + 8);
  v0[67] = swift_getAssociatedTypeWitness();
  v0[68] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 64);
  sub_26C6D8B68();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 94);
  v0[141] = OBJC_IVAR___WFSetupServerInternal_anisetteDataProvider;
  v0[142] = OBJC_IVAR___WFSetupServerInternal_state;
  v0[143] = OBJC_IVAR___WFSetupServerInternal_messageSession;
  swift_beginAccess();
  v9 = v0[68];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 64), v0[67]);
  v10 = *(MEMORY[0x277D856D8] + 4);
  v11 = swift_task_alloc();
  v0[144] = v11;
  *v11 = v0;
  v11[1] = sub_26C694588;

  return MEMORY[0x282200310](v0 + 18, 0, 0);
}

uint64_t sub_26C694588()
{
  v2 = *(*v1 + 1152);
  v4 = *v1;
  *(*v1 + 1160) = v0;

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_26C69469C, 0, 0);
  }

  return result;
}

uint64_t sub_26C69469C()
{
  v106 = v0;
  if (*(v0 + 200) == 255)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 512));
    v11 = *(v0 + 8);

    return v11();
  }

  v1 = *(v0 + 160);
  *(v0 + 272) = *(v0 + 144);
  *(v0 + 288) = v1;
  *(v0 + 304) = *(v0 + 176);
  *(v0 + 313) = *(v0 + 185);
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  *(v0 + 1168) = __swift_project_value_buffer(v2, qword_2804AD228);
  sub_26C699FD8(v0 + 272, v0 + 336);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v105 = v6;
    *v5 = 136315138;
    sub_26C699FD8(v0 + 336, v0 + 208);
    v7 = sub_26C6D8A18();
    v9 = v8;
    sub_26C69A034(v0 + 336);
    v10 = sub_26C67A77C(v7, v9, &v105);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_26C66B000, v3, v4, "Service Agent Event Received: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  else
  {

    sub_26C69A034(v0 + 336);
  }

  sub_26C699FD8(v0 + 272, v0 + 400);
  v13 = *(v0 + 456);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v64 = *(v0 + 440);
      v63 = *(v0 + 448);
      *(v0 + 1224) = v63;
      sub_26C676744((v0 + 400), v0 + 592);
      v65 = swift_task_alloc();
      *(v0 + 1232) = v65;
      *v65 = v0;
      v65[1] = sub_26C696504;
      v66 = *(v0 + 1088);

      return sub_26C6968B8(v0 + 592, v64, v63);
    }

    if (v13 == 4)
    {
      v49 = *(v0 + 416);
      *(v0 + 464) = *(v0 + 400);
      *(v0 + 480) = v49;
      *(v0 + 489) = *(v0 + 425);
      v50 = swift_task_alloc();
      *(v0 + 1240) = v50;
      *v50 = v0;
      v50[1] = sub_26C6966E4;
      v51 = *(v0 + 1088);

      return sub_26C696D94(v0 + 464);
    }

    v70 = *(*(v0 + 1088) + *(v0 + 1136));
    v71 = OBJC_IVAR___WFSetupServerState_sessionState;
    swift_beginAccess();
    v72 = *(v70 + v71);
    if (v72 > 3 && *(v70 + v71) <= 5u && v72 == 4)
    {
    }

    else
    {
      v94 = sub_26C6D8E48();

      if ((v94 & 1) == 0)
      {
        v99 = sub_26C6D8878();
        v100 = sub_26C6D8B98();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&dword_26C66B000, v99, v100, "Prompt for Pin received at a normal time. Ignoring.", v101, 2u);
          MEMORY[0x26D6A7490](v101, -1, -1);
        }

        goto LABEL_63;
      }
    }

    v95 = sub_26C6D8878();
    v96 = sub_26C6D8BA8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_26C66B000, v95, v96, "Prompt for Pin received after pin was entered, suggesting that the pin was invalid. Failing pairing.", v97, 2u);
      MEMORY[0x26D6A7490](v97, -1, -1);
    }

    v98 = *(v0 + 1088);

    v105 = 1;
    sub_26C68C4EC(&v105);
LABEL_63:
    sub_26C69A034(v0 + 272);
    goto LABEL_64;
  }

  if (*(v0 + 456))
  {
    if (v13 == 1)
    {
      sub_26C676744((v0 + 400), v0 + 632);
      v14 = [objc_opt_self() currentDevice];
      v15 = v14;
      if (v14)
      {
        [v14 setLinkType_];
      }

      v16 = *(v0 + 1128);
      v17 = *(v0 + 1088);
      v18 = sub_26C6D7574();
      v19 = type metadata accessor for WFSetupServerAnisetteDataProvider();
      v20 = objc_allocWithZone(v19);
      *&v20[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session] = 0;
      v21 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
      *&v20[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice] = 0;
      v22 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
      *&v20[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount] = 0;
      swift_beginAccess();
      *&v20[v21] = v15;
      swift_beginAccess();
      *&v20[v22] = v18;
      *(v0 + 1048) = v20;
      *(v0 + 1056) = v19;
      v23 = objc_msgSendSuper2((v0 + 1048), sel_init);
      v24 = *&v17[v16];
      *&v17[v16] = v23;
      v25 = v23;

      v26 = *(v0 + 656);
      v27 = *(v0 + 664);
      __swift_project_boxed_opaque_existential_1((v0 + 632), v26);
      v28 = (*(v27 + 8))(v26, v27);
      v29 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
      swift_beginAccess();
      v30 = *&v25[v29];
      *&v25[v29] = v28;

      sub_26C67749C(v0 + 632, v0 + 672);
      v31 = v17;
      v32 = sub_26C6D8878();
      v33 = sub_26C6D8BB8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v0 + 1128);
        v35 = *(v0 + 1088);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v105 = v37;
        *v36 = 136315394;
        v38 = *(v35 + v34);
        *(v0 + 1072) = v38;
        v39 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C18, &qword_26C6DB528);
        v40 = sub_26C6D8A18();
        v42 = sub_26C67A77C(v40, v41, &v105);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2080;
        v43 = *(v0 + 696);
        v44 = *(v0 + 704);
        __swift_project_boxed_opaque_existential_1((v0 + 672), v43);
        *(v0 + 1080) = (*(v44 + 8))(v43, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C20, &qword_26C6DB530);
        v45 = sub_26C6D8A18();
        v47 = v46;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 672));
        v48 = sub_26C67A77C(v45, v47, &v105);

        *(v36 + 14) = v48;
        _os_log_impl(&dword_26C66B000, v32, v33, "Set the session template for anisetteDataProvider: %s to %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D6A7490](v37, -1, -1);
        MEMORY[0x26D6A7490](v36, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 672));
      }

      v73 = *(v0 + 656);
      v74 = *(v0 + 664);
      __swift_project_boxed_opaque_existential_1((v0 + 632), v73);
      v75 = (*(v74 + 8))(v73, v74);
      if (v75)
      {
        v76 = v75;
        v77 = *(*(v0 + 1088) + *(v0 + 1136));
        v78 = OBJC_IVAR___WFSetupServerState_sessionState;
        swift_beginAccess();
        *(v77 + v78) = 5;
        *(v0 + 792) = v76;
        *(v0 + 800) = 0u;
        *(v0 + 816) = 5;
        v79 = v76;
        sub_26C68BFCC(v0 + 792);

        sub_26C698934(v76, 0, 0, 5u);
      }

      else
      {
        v86 = sub_26C6D8878();
        v87 = sub_26C6D8BB8();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_26C66B000, v86, v87, "No message session template on session secured", v88, 2u);
          MEMORY[0x26D6A7490](v88, -1, -1);
        }
      }

      sub_26C69A034(v0 + 272);
      v85 = (v0 + 632);
LABEL_52:
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
LABEL_64:
      v102 = *(v0 + 544);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 512, *(v0 + 536));
      v103 = *(MEMORY[0x277D856D8] + 4);
      v104 = swift_task_alloc();
      *(v0 + 1152) = v104;
      *v104 = v0;
      v104[1] = sub_26C694588;

      return MEMORY[0x282200310](v0 + 144, 0, 0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C10, &qword_26C6DB508);
    if (swift_dynamicCast())
    {
      v67 = *(v0 + 1064);
      *(v0 + 1184) = v67;
      v68 = swift_task_alloc();
      *(v0 + 1192) = v68;
      *v68 = v0;
      v68[1] = sub_26C695B1C;
      v69 = *(v0 + 1088);

      return sub_26C698B80(v67, v69);
    }

    else if (swift_dynamicCast())
    {
      v80 = swift_task_alloc();
      *(v0 + 1200) = v80;
      *v80 = v0;
      v80[1] = sub_26C695F1C;
      v81 = *(v0 + 1088);

      return sub_26C699378(v81);
    }

    else
    {
      sub_26C676744((v0 + 400), v0 + 552);
      v89 = *(v0 + 576);
      v90 = *(v0 + 584);
      v91 = __swift_project_boxed_opaque_existential_1((v0 + 552), v89);
      v92 = swift_task_alloc();
      *(v0 + 1216) = v92;
      *v92 = v0;
      v92[1] = sub_26C696330;
      v93 = *(v0 + 1088);

      return sub_26C69941C(v91, v93, v89, v90);
    }
  }

  else
  {
    v52 = *(v0 + 1144);
    v53 = *(v0 + 1088);
    sub_26C676744((v0 + 400), v0 + 712);
    v54 = *(v0 + 736);
    v55 = *(v0 + 744);
    __swift_project_boxed_opaque_existential_1((v0 + 712), v54);
    v56 = (*(v55 + 8))(v54, v55);
    *(v0 + 1176) = v56;
    v57 = *(v53 + v52);
    *(v53 + v52) = v56;
    v58 = v56;

    if (!v56)
    {
      v82 = sub_26C6D8878();
      v83 = sub_26C6D8BA8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_26C66B000, v82, v83, "Nil Message Template during sessionStarted: event.", v84, 2u);
        MEMORY[0x26D6A7490](v84, -1, -1);
      }

      sub_26C69A034(v0 + 272);
      v85 = (v0 + 712);
      goto LABEL_52;
    }

    v59 = *(*(v0 + 1088) + *(v0 + 1136));
    v60 = OBJC_IVAR___WFSetupServerState_sessionState;
    swift_beginAccess();
    *(v59 + v60) = 2;
    v61 = *(v0 + 1120);
    v62 = *(v0 + 1112);

    return MEMORY[0x2822009F8](sub_26C6954C8, v62, v61);
  }
}

uint64_t sub_26C6954C8()
{
  v1 = *(v0 + 1096);
  sub_26C66FF58(v0 + 712, &type metadata for SecurityRequest, &off_287D2D528);

  return MEMORY[0x2822009F8](sub_26C695544, 0, 0);
}

uint64_t sub_26C695544()
{
  v1 = v0[136];
  sub_26C68BCC4();
  v2 = v0[140];
  v3 = v0[139];

  return MEMORY[0x2822009F8](sub_26C6955AC, v3, v2);
}

uint64_t sub_26C6955AC()
{
  v1 = v0[137];
  sub_26C66FF58((v0 + 89), &type metadata for EnrollmentsReceivedRequest, &off_287D2F118);
  v2 = v0[140];
  v3 = v0[139];

  return MEMORY[0x2822009F8](sub_26C695628, v3, v2);
}

uint64_t sub_26C695628()
{
  [*(*(v0 + 1096) + 24) setNeedsSetup_];

  return MEMORY[0x2822009F8](sub_26C6956A0, 0, 0);
}

uint64_t sub_26C6956A0()
{
  v1 = *(v0 + 1088);
  if (sub_26C68BCC4() == 1)
  {
    *(v0 + 104) = &type metadata for UserInteractionRequest;
    *(v0 + 112) = &off_287D2F1F0;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0;
    v2 = *(v0 + 1120);
    v3 = *(v0 + 1112);

    return MEMORY[0x2822009F8](sub_26C695830, v3, v2);
  }

  else
  {
    v4 = *(*(v0 + 1088) + *(v0 + 1136));
    v5 = *(v0 + 1176);
    *(v0 + 824) = v4;
    *(v0 + 832) = v5;
    *(v0 + 840) = 0;
    *(v0 + 848) = 2;
    v6 = v5;
    v7 = v4;
    sub_26C68BFCC(v0 + 824);

    sub_26C698934(v4, v5, 0, 2u);
    sub_26C69A034(v0 + 272);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 712));
    v8 = *(v0 + 544);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 512, *(v0 + 536));
    v9 = *(MEMORY[0x277D856D8] + 4);
    v10 = swift_task_alloc();
    *(v0 + 1152) = v10;
    *v10 = v0;
    v10[1] = sub_26C694588;

    return MEMORY[0x282200310](v0 + 144, 0, 0);
  }
}

uint64_t sub_26C695830()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1096);
  sub_26C66EAD4(v0 + 80);
  if (v1)
  {
    v3 = sub_26C6959EC;
  }

  else
  {
    sub_26C676820(v0 + 80);
    v3 = sub_26C6958C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6958C4()
{
  v1 = *(*(v0 + 1088) + *(v0 + 1136));
  v2 = *(v0 + 1176);
  *(v0 + 824) = v1;
  *(v0 + 832) = v2;
  *(v0 + 840) = 0;
  *(v0 + 848) = 2;
  v3 = v2;
  v4 = v1;
  sub_26C68BFCC(v0 + 824);

  sub_26C698934(v1, v2, 0, 2u);
  sub_26C69A034(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 712));
  v5 = *(v0 + 544);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 512, *(v0 + 536));
  v6 = *(MEMORY[0x277D856D8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 1152) = v7;
  *v7 = v0;
  v7[1] = sub_26C694588;

  return MEMORY[0x282200310](v0 + 144, 0, 0);
}

uint64_t sub_26C6959EC()
{
  sub_26C676820(v0 + 80);
  v1 = *(*(v0 + 1088) + *(v0 + 1136));
  v2 = *(v0 + 1176);
  *(v0 + 824) = v1;
  *(v0 + 832) = v2;
  *(v0 + 840) = 0;
  *(v0 + 848) = 2;
  v3 = v2;
  v4 = v1;
  sub_26C68BFCC(v0 + 824);

  sub_26C698934(v1, v2, 0, 2u);
  sub_26C69A034(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 712));
  v5 = *(v0 + 544);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 512, *(v0 + 536));
  v6 = *(MEMORY[0x277D856D8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 1152) = v7;
  *v7 = v0;
  v7[1] = sub_26C694588;

  return MEMORY[0x282200310](v0 + 144, 0, 0);
}

uint64_t sub_26C695B1C()
{
  v1 = *(*v0 + 1192);
  v2 = *(*v0 + 1184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26C695C34, 0, 0);
}

uint64_t sub_26C695C34()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  swift_getObjectType();
  *(v0 + 40) = &type metadata for LegacyPreAuthResponseObject;
  *(v0 + 48) = &off_287D2E740;
  *(v0 + 72) = 1;
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C695CD0, v4, v3);
}

uint64_t sub_26C695CD0()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1096);
  sub_26C66EAD4(v0 + 16);
  if (v1)
  {
    v3 = sub_26C695E3C;
  }

  else
  {
    sub_26C676820(v0 + 16);
    v3 = sub_26C695D64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C695D64()
{
  sub_26C69A034((v0 + 34));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 50);
  v1 = v0[68];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 64), v0[67]);
  v2 = *(MEMORY[0x277D856D8] + 4);
  v3 = swift_task_alloc();
  v0[144] = v3;
  *v3 = v0;
  v3[1] = sub_26C694588;

  return MEMORY[0x282200310](v0 + 18, 0, 0);
}

uint64_t sub_26C695E3C()
{
  sub_26C69A034((v0 + 34));
  sub_26C676820((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 50);
  v1 = v0[68];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 64), v0[67]);
  v2 = *(MEMORY[0x277D856D8] + 4);
  v3 = swift_task_alloc();
  v0[144] = v3;
  *v3 = v0;
  v3[1] = sub_26C694588;

  return MEMORY[0x282200310](v0 + 18, 0, 0);
}

uint64_t sub_26C695F1C()
{
  v1 = *(*v0 + 1200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C696018, 0, 0);
}

uint64_t sub_26C696018()
{
  v1 = *(v0[136] + v0[142]) + OBJC_IVAR___WFSetupServerState_activationFlow;
  swift_beginAccess();
  if (*(v1 + 8) == 1)
  {
    v2 = v0[146];
    v3 = sub_26C6D8878();
    v4 = sub_26C6D8BA8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26C66B000, v3, v4, "Attempting to access activation flow but it's nil!", v5, 2u);
      MEMORY[0x26D6A7490](v5, -1, -1);
    }

    goto LABEL_6;
  }

  if (*v1 == 1)
  {
LABEL_6:
    v6 = swift_task_alloc();
    v0[151] = v6;
    *v6 = v0;
    v6[1] = sub_26C696218;
    v7 = v0[136];

    return sub_26C693AC8();
  }

  sub_26C69A034((v0 + 34));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 50);
  v9 = v0[68];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 64), v0[67]);
  v10 = *(MEMORY[0x277D856D8] + 4);
  v11 = swift_task_alloc();
  v0[144] = v11;
  *v11 = v0;
  v11[1] = sub_26C694588;

  return MEMORY[0x282200310](v0 + 18, 0, 0);
}

uint64_t sub_26C696218()
{
  v2 = *(*v1 + 1208);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_26C69AC14;
  }

  else
  {
    v3 = sub_26C695D64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C696330()
{
  v1 = *(*v0 + 1216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C69642C, 0, 0);
}

uint64_t sub_26C69642C()
{
  sub_26C69A034((v0 + 34));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 69);
  v1 = v0[68];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 64), v0[67]);
  v2 = *(MEMORY[0x277D856D8] + 4);
  v3 = swift_task_alloc();
  v0[144] = v3;
  *v3 = v0;
  v3[1] = sub_26C694588;

  return MEMORY[0x282200310](v0 + 18, 0, 0);
}

uint64_t sub_26C696504()
{
  v1 = *(*v0 + 1232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C696600, 0, 0);
}

uint64_t sub_26C696600()
{
  v1 = v0[153];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 74);
  sub_26C69A034((v0 + 34));

  v2 = v0[68];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 64), v0[67]);
  v3 = *(MEMORY[0x277D856D8] + 4);
  v4 = swift_task_alloc();
  v0[144] = v4;
  *v4 = v0;
  v4[1] = sub_26C694588;

  return MEMORY[0x282200310](v0 + 18, 0, 0);
}

uint64_t sub_26C6966E4()
{
  v1 = *(*v0 + 1240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C6967E0, 0, 0);
}

uint64_t sub_26C6967E0()
{
  sub_26C699DF8((v0 + 58));
  sub_26C69A034((v0 + 34));
  v1 = v0[68];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 64), v0[67]);
  v2 = *(MEMORY[0x277D856D8] + 4);
  v3 = swift_task_alloc();
  v0[144] = v3;
  *v3 = v0;
  v3[1] = sub_26C694588;

  return MEMORY[0x282200310](v0 + 18, 0, 0);
}

uint64_t sub_26C6968B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x2822009F8](sub_26C6968DC, 0, 0);
}

uint64_t sub_26C6968DC()
{
  v40 = v0;
  sub_26C67749C(*(v0 + 136), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C00, &qword_26C6DB500);
  if (swift_dynamicCast())
  {
    if (*(v0 + 56) <= 2u)
    {
      if (*(v0 + 56))
      {
        if (*(v0 + 56) != 1)
        {
          v1 = *(v0 + 160);
          *&v36 = 1;
          sub_26C68C4EC(&v36);
        }
      }

      else
      {
        v30 = *(v0 + 160);
        v37 = 0;
        v36 = 1uLL;
        v38 = 6;
        sub_26C68BFCC(&v36);
      }
    }

    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    v33 = sub_26C689E88(MEMORY[0x277D84F90]);
    v32(0, 0, v33);
LABEL_21:

    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = *(v0 + 72);
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v5 = sub_26C6D8898();
    __swift_project_value_buffer(v5, qword_2804AD288);
    swift_bridgeObjectRetain_n();
    v6 = sub_26C6D8878();
    v7 = sub_26C6D8BB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v36 = v9;
      *v8 = 136446466;

      v10 = sub_26C67A77C(v3, v2, &v36);

      *(v8 + 4) = v10;
      *(v8 + 12) = 1026;

      *(v8 + 14) = v4;

      _os_log_impl(&dword_26C66B000, v6, v7, "Phone reporting that file %{public}s was received and used with success: %{BOOL,public}d", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6A7490](v9, -1, -1);
      MEMORY[0x26D6A7490](v8, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v22 = *(v0 + 152);
    v21 = *(v0 + 160);
    v23 = *(v0 + 144);
    *&v36 = v4;
    v39 = 0x2000000000000000;
    sub_26C68C254(&v36);

    v24 = sub_26C689E88(MEMORY[0x277D84F90]);
    v23(0, 0, v24);
    goto LABEL_21;
  }

  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 136);
  v12 = sub_26C6D8898();
  __swift_project_value_buffer(v12, qword_2804AD228);
  sub_26C67749C(v11, v0 + 56);
  v13 = sub_26C6D8878();
  v14 = sub_26C6D8BA8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v36 = v16;
    *v15 = 136446210;
    sub_26C67749C(v0 + 56, v0 + 96);
    v17 = sub_26C6D8A18();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v20 = sub_26C67A77C(v17, v19, &v36);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_26C66B000, v13, v14, "Received unexpected Request Type: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D6A7490](v16, -1, -1);
    MEMORY[0x26D6A7490](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  }

  v26 = *(v0 + 144);
  v25 = *(v0 + 152);
  sub_26C699F34();
  v27 = swift_allocError();
  *v28 = 0;
  v29 = sub_26C689E88(MEMORY[0x277D84F90]);
  v26(v27, 0, v29);

LABEL_22:
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_26C696D94(uint64_t a1)
{
  *(v2 + 536) = v1;
  *(v2 + 528) = a1;
  return MEMORY[0x2822009F8](sub_26C696DB8, 0, 0);
}

uint64_t sub_26C696DB8()
{
  v59 = v0;
  sub_26C699D9C(*(v0 + 528), v0 + 208);
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 224);
  *(v0 + 544) = v3;
  v4 = *(v0 + 248);
  if (v4 > 3)
  {
    if (v4 != 4)
    {
      if (v4 == 5 && !(*(v0 + 240) | *(v0 + 232) | v2 | v1 | v3))
      {
        v55 = *(v0 + 536);
        sub_26C6920E4();
LABEL_26:
        v37 = *(v0 + 8);

        return v37();
      }

LABEL_14:
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 528);
      v18 = sub_26C6D8898();
      __swift_project_value_buffer(v18, qword_2804AD228);
      sub_26C699D9C(v17, v0 + 256);
      v19 = sub_26C6D8878();
      v20 = sub_26C6D8BA8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v57 = v22;
        *v21 = 136446210;
        sub_26C699D9C(v0 + 256, v0 + 304);
        v23 = sub_26C6D8A18();
        v25 = v24;
        sub_26C699DF8(v0 + 256);
        v26 = sub_26C67A77C(v23, v25, &v57);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_26C66B000, v19, v20, "Service Agent Error: %{public}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x26D6A7490](v22, -1, -1);
        MEMORY[0x26D6A7490](v21, -1, -1);
      }

      else
      {

        sub_26C699DF8(v0 + 256);
      }

      sub_26C699DF8(v0 + 208);
      goto LABEL_26;
    }

    v57 = 0;
    v58 = 0xE000000000000000;
    if (v3 && (v33 = (v0 + 520), *(v0 + 512) = v3, v34 = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960), sub_26C699EE8(), (swift_dynamicCast() & 1) != 0))
    {
      v35 = *v33;
      v36 = [*v33 code];
    }

    else
    {
      v36 = 0;
    }

    v38 = *(v0 + 536);
    *(v0 + 504) = v36;
    v39 = sub_26C6D8E28();
    MEMORY[0x26D6A6940](v39);

    v40 = v57;
    v41 = v58;
    v42 = *(v38 + OBJC_IVAR___WFSetupServerInternal_analyticsManager);
    if (v1)
    {
      v43 = v1;
    }

    else
    {
      v2 = 0;
      v43 = 0xE000000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8BE0, &qword_26C6DB4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = v40;
    *(inited + 56) = v41;

    v45 = sub_26C68A7EC(inited);
    swift_setDeallocating();
    sub_26C677B60(inited + 32, &qword_2804A8BE8, &qword_26C6DB4F8);
    *(v0 + 416) = &type metadata for DisconnectedProximitySetupServerAnalyticsEvent;
    *(v0 + 424) = sub_26C699E4C();
    v46 = swift_allocObject();
    *(v0 + 392) = v46;
    v46[2] = 0xD000000000000035;
    v46[3] = 0x800000026C6DFAC0;
    v46[4] = v2;
    v46[5] = v43;
    v46[6] = v45;
    sub_26C6CDF0C((v0 + 392));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v47 = sub_26C6D8898();
    *(v0 + 560) = __swift_project_value_buffer(v47, qword_2804AD228);

    v48 = sub_26C6D8878();
    v49 = sub_26C6D8BB8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v57 = v51;
      *v50 = 136446210;
      v52 = sub_26C67A77C(v2, v43, &v57);

      *(v50 + 4) = v52;
      _os_log_impl(&dword_26C66B000, v48, v49, "Ending setup session with %{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x26D6A7490](v51, -1, -1);
      MEMORY[0x26D6A7490](v50, -1, -1);
    }

    else
    {
    }

    v53 = swift_task_alloc();
    *(v0 + 568) = v53;
    *v53 = v0;
    v53[1] = sub_26C697658;
    v54 = *(v0 + 536);

    return sub_26C697C64();
  }

  else
  {
    if (*(v0 + 248))
    {
      if (v4 == 3)
      {
        v5 = *(*(v0 + 536) + OBJC_IVAR___WFSetupServerInternal_analyticsManager);
        if (v1)
        {
          v6 = v2;
        }

        else
        {
          v6 = 0;
        }

        if (v1)
        {
          v7 = v1;
        }

        else
        {
          v7 = 0xE000000000000000;
        }

        v8 = sub_26C6D86E8();
        v9 = [v8 code];

        *(v0 + 496) = v9;
        v10 = sub_26C6D8E28();
        v12 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8BE0, &qword_26C6DB4F0);
        v13 = swift_initStackObject();
        *(v13 + 16) = xmmword_26C6DA0F0;
        *(v13 + 32) = 0x646F43726F727265;
        v14 = v13 + 32;
        *(v13 + 40) = 0xE900000000000065;
        *(v13 + 48) = v10;
        *(v13 + 56) = v12;
        v15 = sub_26C68A7EC(v13);
        swift_setDeallocating();
        sub_26C677B60(v14, &qword_2804A8BE8, &qword_26C6DB4F8);
        *(v0 + 376) = &type metadata for DisconnectedProximitySetupServerAnalyticsEvent;
        *(v0 + 384) = sub_26C699E4C();
        v16 = swift_allocObject();
        *(v0 + 352) = v16;
        v16[2] = 0xD000000000000035;
        v16[3] = 0x800000026C6DFAC0;
        v16[4] = v6;
        v16[5] = v7;
        v16[6] = v15;
        sub_26C6CDF0C((v0 + 352));

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 352));
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    v27 = *(v0 + 536);
    sub_26C676744((v0 + 208), v0 + 432);
    v28 = v27 + OBJC_IVAR___WFSetupServerInternal_serviceAgent;
    *(v0 + 552) = *(v27 + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
    v29 = *(v28 + 8);
    swift_getObjectType();
    sub_26C67749C(v0 + 432, v0 + 144);
    *(v0 + 200) = 3;
    v30 = *(v29 + 8);
    v32 = sub_26C6D8AD8();

    return MEMORY[0x2822009F8](sub_26C697564, v32, v31);
  }
}

uint64_t sub_26C697564()
{
  v1 = *(v0 + 552);
  sub_26C66EAD4(v0 + 144);
  sub_26C676820(v0 + 144);

  return MEMORY[0x2822009F8](sub_26C6975F8, 0, 0);
}

uint64_t sub_26C6975F8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 432));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26C697658()
{
  v1 = *(*v0 + 568);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C697754, 0, 0);
}

uint64_t sub_26C697754()
{
  v35 = v0;
  v1 = v0[70];
  v2 = v0[67];
  v3 = OBJC_IVAR___WFSetupServerInternal_state;
  v0[72] = OBJC_IVAR___WFSetupServerInternal_state;
  v4 = *(v2 + v3);
  v5 = OBJC_IVAR___WFSetupServerState_advertisementBehavior;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  v9 = os_log_type_enabled(v7, v8);
  if (v6)
  {
    if (v6 == 1)
    {
      if (v9)
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_26C66B000, v7, v8, "Ending session and otherwise ignoring the disconnect.", v10, 2u);
        MEMORY[0x26D6A7490](v10, -1, -1);
      }

      v11 = v0[68];
      v12 = v0[67];

      v13 = *(v2 + v3);
      v32 = 0;
      v33 = 0;
      v31 = v13;
      v34 = 3;
      v14 = v13;
      sub_26C68BFCC(&v31);

      v15 = v13;
      v16 = 3;
    }

    else
    {
      if (v9)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_26C66B000, v7, v8, "Ending session and requesting invalidation.", v24, 2u);
        MEMORY[0x26D6A7490](v24, -1, -1);
      }

      v25 = v0[68];
      v26 = v0[67];

      v27 = *(v2 + v3);
      v32 = 0;
      v33 = 0;
      v31 = v27;
      v34 = 4;
      v28 = v27;
      sub_26C68BFCC(&v31);

      v15 = v27;
      v16 = 4;
    }

    sub_26C698934(v15, 0, 0, v16);
    v29 = v0[1];

    return v29();
  }

  else
  {
    if (v9)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26C66B000, v7, v8, "Ending session and restarting advertisement.", v17, 2u);
      MEMORY[0x26D6A7490](v17, -1, -1);
    }

    v18 = v0[67];

    v19 = v18 + OBJC_IVAR___WFSetupServerInternal_serviceAgent;
    v0[73] = *(v18 + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
    v20 = *(v19 + 8);
    swift_getObjectType();
    v21 = *(v20 + 8);
    v23 = sub_26C6D8AD8();

    return MEMORY[0x2822009F8](sub_26C697A18, v23, v22);
  }
}

uint64_t sub_26C697A18()
{
  [*(v0[73] + 24) setNeedsSetup_];
  v1 = swift_task_alloc();
  v0[74] = v1;
  *v1 = v0;
  v1[1] = sub_26C697AC0;
  v2 = v0[67];

  return sub_26C697C64();
}

uint64_t sub_26C697AC0()
{
  v1 = *(*v0 + 592);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C697BBC, 0, 0);
}

uint64_t sub_26C697BBC()
{
  v8 = v0;
  v1 = *(v0[67] + v0[72]);
  v2 = v0[68];
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = v1;
  v7 = 3;
  v3 = v1;
  sub_26C68BFCC(v6);

  sub_26C698934(v1, 0, 0, 3u);
  v4 = v0[1];

  return v4();
}

uint64_t sub_26C697C84()
{
  v13 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  __swift_project_value_buffer(v1, qword_2804AD228);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD000000000000013, 0x800000026C6DFAA0, &v12);
    _os_log_impl(&dword_26C66B000, v2, v3, "Running WFSetupServer::%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v6 = (*(v0 + 128) + OBJC_IVAR___WFSetupServerInternal_serviceAgent);
  *(v0 + 136) = *v6;
  v7 = v6[1];
  swift_getObjectType();
  v8 = *(v7 + 8);
  v10 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C697E34, v10, v9);
}

uint64_t sub_26C697E34()
{
  v1 = *(v0 + 136);
  [*(v1 + 32) invalidate];
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;

  return MEMORY[0x2822009F8](sub_26C697EB4, 0, 0);
}

uint64_t sub_26C697EB4()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + OBJC_IVAR___WFSetupServerInternal_state);
  v3 = OBJC_IVAR___WFSetupServerState_sessionState;
  swift_beginAccess();
  *(v2 + v3) = 6;
  v4 = v1 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth;
  v5 = *(v1 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth + 16);
  *(v0 + 16) = *(v1 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth);
  *(v0 + 32) = v5;
  v7 = *(v4 + 48);
  v6 = *(v4 + 64);
  v8 = *(v4 + 32);
  *(v0 + 96) = *(v4 + 80);
  *(v0 + 64) = v7;
  *(v0 + 80) = v6;
  *(v0 + 48) = v8;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  sub_26C677B60(v0 + 16, &qword_2804A8BD8, &qword_26C6DB4E8);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26C697FA4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26C69809C;

  return v7(a1);
}

uint64_t sub_26C69809C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_26C6981B8(uint64_t a1, char *a2)
{
  v4 = sub_26C69ABBC();
  v5 = &a2[OBJC_IVAR___WFSetupServerInternal_sharingRestartLockReason];
  *v5 = 0xD000000000000016;
  *(v5 + 1) = 0x800000026C6DFB70;
  *&a2[OBJC_IVAR___WFSetupServerInternal_anisetteDataProvider] = 0;
  v6 = OBJC_IVAR___WFSetupServerInternal_state;
  *&a2[v6] = [objc_allocWithZone(type metadata accessor for WFSetupServerState()) init];
  *&a2[OBJC_IVAR___WFSetupServerInternal_messageSession] = 0;
  v7 = &a2[OBJC_IVAR___WFSetupServerInternal_peerPreAuth];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 10) = 0;
  *&a2[OBJC_IVAR___WFSetupServerInternal_setupData] = 0;
  v8 = OBJC_IVAR___WFSetupServerInternal_analyticsManager;
  v13[3] = &type metadata for CoreAnalyticsBackend;
  v13[4] = &off_287D2B788;
  type metadata accessor for AnalyticsManager();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v13, &type metadata for CoreAnalyticsBackend);
  *(v9 + 40) = &type metadata for CoreAnalyticsBackend;
  *(v9 + 48) = &off_287D2B788;
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  *&a2[v8] = v9;
  *&a2[OBJC_IVAR___WFSetupServerInternal_delegate] = 0;
  *&a2[OBJC_IVAR___WFSetupServerInternal_serviceAgentListeningTask] = 0;
  v10 = &a2[OBJC_IVAR___WFSetupServerInternal_serviceAgent];
  *v10 = a1;
  *(v10 + 1) = v4;
  v12.receiver = a2;
  v12.super_class = type metadata accessor for WFSetupServer();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_26C698320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = a2;
  if (a5 <= 2u)
  {
    if (a5 < 2u)
    {
      goto LABEL_3;
    }

    result = a3;
    if (a5 == 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (a5 - 3 < 3)
    {
LABEL_3:
    }

    if (a5 == 6)
    {
    }

    if (a5 == 7)
    {
    }
  }

  return result;
}

uint64_t sub_26C6983C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_26C6983D4(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_26C6983D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = a2;
  if (a5 <= 2u)
  {
    if (a5 < 2u)
    {
      goto LABEL_3;
    }

    result = a3;
    if (a5 == 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (a5 - 3 < 3)
    {
LABEL_3:
    }

    if (a5 == 6)
    {
    }

    if (a5 == 7)
    {
    }
  }

  return result;
}

uint64_t sub_26C698474()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26C6984BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26C677C9C;

  return sub_26C68DA24(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_26C698594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_26C698320(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_26C6985A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26C677C9C;

  return sub_26C68D54C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26C698670(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    return sub_26C698684(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_26C698684(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
LABEL_11:
  }

  if (a7 != 2)
  {
    if (a7 == 3)
    {
      sub_26C67EE70(result, a2);
    }

    else
    {
      if (a7 != 4)
      {
        return result;
      }

      sub_26C678418(a3, a4);
    }

    goto LABEL_11;
  }

  sub_26C678418(result, a2);
}

uint64_t sub_26C698764()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_26C698684(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_26C6987B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C676B2C;

  return sub_26C68E240(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_26C698880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C677C9C;

  return sub_26C6908A0(a1, v4, v5, v6);
}

void sub_26C698934(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 - 3 >= 3)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!a4)
  {

    a1 = a2;
    a2 = a3;
LABEL_9:

    a1 = a2;
    goto LABEL_10;
  }

  if (a4 != 1)
  {
    if (a4 != 2)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_10:
}

uint64_t sub_26C6989C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C691284(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_11Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26C698ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C676B2C;

  return sub_26C69233C(a1, v4, v5, v6);
}

uint64_t sub_26C698B80(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2[57] = a2;
  v2[49] = &type metadata for LegacyPreAuthObject;
  v2[50] = &off_287D2EF48;
  v2[46] = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26C698C30, 0, 0);
}

uint64_t sub_26C698C30()
{
  v63 = v0;
  v62 = *MEMORY[0x277D85DE8];
  sub_26C67749C(v0 + 368, v0 + 408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C10, &qword_26C6DB508);
  if (swift_dynamicCast())
  {
    sub_26C6C9274(*(v0 + 448), (v0 + 16));
    v15 = *(v0 + 456);
    v52 = *(v0 + 48);
    v53 = *(v0 + 64);
    v54 = *(v0 + 80);
    v55 = *(v0 + 96);
    v50 = *(v0 + 16);
    v51 = *(v0 + 32);

    v16 = v15 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth;
    v17 = *(v15 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth + 16);
    *(v0 + 192) = *(v15 + OBJC_IVAR___WFSetupServerInternal_peerPreAuth);
    *(v0 + 208) = v17;
    v19 = *(v16 + 48);
    v18 = *(v16 + 64);
    v20 = *(v16 + 32);
    *(v0 + 272) = *(v16 + 80);
    *(v0 + 240) = v19;
    *(v0 + 256) = v18;
    *(v0 + 224) = v20;
    *(v16 + 32) = v52;
    *(v16 + 48) = v53;
    *(v16 + 64) = v54;
    *(v16 + 80) = v55;
    *v16 = v50;
    *(v16 + 16) = v51;
    sub_26C69A0DC(v0 + 16, v0 + 280);
    sub_26C677B60(v0 + 192, &qword_2804A8BD8, &qword_26C6DB4E8);
    v21 = *(v0 + 24);
    v23 = *(v0 + 32);
    v22 = *(v0 + 40);
    v25 = *(v0 + 48);
    v24 = *(v0 + 56);
    v26 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    v30 = *(v0 + 96);
    *&v56 = *(v0 + 16);
    *(&v56 + 1) = v21;
    *&v57 = v23;
    *(&v57 + 1) = v22;
    *&v58 = v25;
    *(&v58 + 1) = v24;
    *&v59 = v26;
    *(&v59 + 1) = v27;
    *&v60 = v29 & 0xCFFFFFFFFFFFFFFFLL;
    *(&v60 + 1) = v28;
    v61 = v30;

    sub_26C67ED2C(v27, v29);

    sub_26C68C254(&v56);
    sub_26C69A138(v0 + 16);
    v31 = v59;
    *(v0 + 136) = v58;
    *(v0 + 152) = v31;
    *(v0 + 168) = v60;
    *(v0 + 184) = v61;
    v32 = v57;
    *(v0 + 104) = v56;
    *(v0 + 120) = v32;
    sub_26C69A088(v0 + 104);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 456);
      v2 = *(v0 + 280);
      v3 = *(v1 + OBJC_IVAR___WFSetupServerInternal_setupData);
      *(v1 + OBJC_IVAR___WFSetupServerInternal_setupData) = v2;
      v4 = v2;

      *&v56 = v2;
      *&v60 = 0x1000000000000000;
      v5 = v4;
      sub_26C68C254(&v56);
      v6 = v59;
      *(v0 + 136) = v58;
      *(v0 + 152) = v6;
      *(v0 + 168) = v60;
      *(v0 + 184) = v61;
      v7 = v57;
      *(v0 + 104) = v56;
      *(v0 + 120) = v7;
      sub_26C69A088(v0 + 104);
      v8 = objc_opt_self();
      *(v0 + 192) = 0;
      v9 = [v8 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:v0 + 192];
      v10 = *(v0 + 192);
      if (v9)
      {
        v11 = sub_26C6D87A8();
        v13 = v12;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_26C6DA100;
        *(v0 + 192) = 28783;
        *(v0 + 200) = 0xE200000000000000;
        sub_26C6D8CD8();
        *(v14 + 96) = MEMORY[0x277D849A8];
        *(v14 + 72) = 5;
        *(v0 + 192) = 1635017060;
        *(v0 + 200) = 0xE400000000000000;
        sub_26C6D8CD8();
        *(v14 + 168) = MEMORY[0x277CC9318];
        *(v14 + 144) = v11;
        *(v14 + 152) = v13;
        sub_26C67ED2C(v11, v13);
        sub_26C689E88(v14);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
        swift_arrayDestroy();
        swift_deallocClassInstance();

        sub_26C678418(v11, v13);

        goto LABEL_12;
      }

      v45 = v10;
      v46 = sub_26C6D86F8();

      swift_willThrow();
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v47 = sub_26C6D8898();
      __swift_project_value_buffer(v47, qword_2804AD228);
      v34 = sub_26C6D8878();
      v48 = sub_26C6D8BA8();
      if (os_log_type_enabled(v34, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_26C66B000, v34, v48, "Unable to re-encoded WFSetupData for publisher", v49, 2u);
        MEMORY[0x26D6A7490](v49, -1, -1);
      }

      goto LABEL_11;
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v33 = sub_26C6D8898();
    __swift_project_value_buffer(v33, qword_2804AD228);
    sub_26C67749C(v0 + 368, v0 + 104);
    v34 = sub_26C6D8878();
    v35 = sub_26C6D8BA8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v56 = v37;
      *v36 = 136446210;
      sub_26C67749C(v0 + 104, v0 + 192);
      v38 = sub_26C6D8A18();
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
      v41 = sub_26C67A77C(v38, v40, &v56);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_26C66B000, v34, v35, "Received unexpected Object Type: %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x26D6A7490](v37, -1, -1);
      MEMORY[0x26D6A7490](v36, -1, -1);
LABEL_11:

      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 408));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 368));
  v42 = *(v0 + 8);
  v43 = *MEMORY[0x277D85DE8];

  return v42();
}

uint64_t sub_26C699378(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1[57] = a1;
  v1[49] = &type metadata for LegacyPreAuthResponseObject;
  v1[50] = &off_287D2E740;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26C69AC54, 0, 0);
}

uint64_t sub_26C69941C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v4[57] = a2;
  v4[49] = a3;
  v4[50] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 46);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26C69AC54, 0, 0);
}

uint64_t sub_26C6994F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26C6995EC;

  return v6(v2 + 32);
}

uint64_t sub_26C6995EC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

void sub_26C699700(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD228);
  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_26C67A77C(0xD000000000000027, 0x800000026C6DFB20, &v22);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1;
    _os_log_impl(&dword_26C66B000, v9, v10, "Running WFSetupServer::%{public}s with action: %{public}u", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D6A7490](v12, -1, -1);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  v13 = *&v1[OBJC_IVAR___WFSetupServerInternal_state];
  v14 = OBJC_IVAR___WFSetupServerState_sessionState;
  swift_beginAccess();
  if (*(v13 + v14) - 1 >= 5)
  {
    v18 = sub_26C6D8878();
    v19 = sub_26C6D8BA8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26C66B000, v18, v19, "Unable to send setup action without an active session.", v20, 2u);
      MEMORY[0x26D6A7490](v20, -1, -1);
    }
  }

  else
  {
    v15 = sub_26C6D8B08();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = a1;
    *(v16 + 40) = v2;
    v17 = v2;
    sub_26C68B290(0, 0, v7, &unk_26C6DB568, v16);
  }
}

uint64_t sub_26C699A00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26C677C9C;

  return sub_26C693268(a1, v4, v5, v6, v7, v8);
}

id sub_26C699AC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WFSetupServerInternal_anisetteDataProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

unint64_t sub_26C699E4C()
{
  result = qword_2804A8BF0;
  if (!qword_2804A8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8BF0);
  }

  return result;
}

uint64_t sub_26C699EA0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_26C699EE8()
{
  result = qword_2804A8BF8;
  if (!qword_2804A8BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A8BF8);
  }

  return result;
}

unint64_t sub_26C699F34()
{
  result = qword_2804A8C08;
  if (!qword_2804A8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8C08);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_26C69A18C()
{
  MEMORY[0x26D6A7510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26C69A1CC()
{
  result = qword_2804A8C30;
  if (!qword_2804A8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8C30);
  }

  return result;
}

id sub_26C69A220(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_26C69A230(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_26C69A29C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_26C69A2E0()
{
  v1 = *(v0 + 16);
  v2 = sub_26C6D89A8();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_26C69A354(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (result)
  {

    sub_26C678418(a8, a9);
  }

  return result;
}

uint64_t sub_26C69A3DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26C677C9C;

  return sub_26C6994F8(a1, v5);
}

uint64_t sub_26C69A494()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C69A4D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C6928B4(a1, v4, v5, v6, v7);
}

uint64_t sub_26C69A598()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C69A5D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C677C9C;

  return sub_26C691E7C(a1, v4, v5, v6);
}

id sub_26C69A68C(id result, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 - 3 >= 3)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a4)
  {
    v4 = a2;
    v7 = result;
    v5 = a3;
    result = v7;
LABEL_9:
    v6 = result;
    result = v4;
    goto LABEL_10;
  }

  if (a4 != 1)
  {
    v4 = a2;
    if (a4 != 2)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_10:

  return result;
}

uint64_t sub_26C69A71C()
{
  v1 = v0[3];

  sub_26C678418(v0[4], v0[5]);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C69A75C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C69A7A4()
{
  sub_26C678418(v0[2], v0[3]);
  v1 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_114Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C69A91C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26C677C9C;

  return sub_26C68F6A4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_3Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  a1(*(v1 + 48));

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_26C69AA3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26C677C9C;

  return sub_26C68F94C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26C69AB04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26C677C9C;

  return sub_26C697FA4(a1, v5);
}

unint64_t sub_26C69ABBC()
{
  result = qword_2804A8C40;
  if (!qword_2804A8C40)
  {
    type metadata accessor for SFServiceAgent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8C40);
  }

  return result;
}

uint64_t sub_26C69AC54()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_26C698C30();
}

uint64_t sub_26C69AD0C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C676B2C;

  return v9(a1, a2);
}

uint64_t sub_26C69AE24(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C677C9C;

  return v9(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing19SharingSessionEventO5IssueO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing19SharingSessionEventO(uint64_t a1)
{
  if ((*(a1 + 56) & 7u) <= 4)
  {
    return *(a1 + 56) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26C69AFF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 57))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 56);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C69B030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C69B080(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SharingSessionAgentError(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for SharingSessionAgentError(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s5Error_pSgSDys11AnyHashableVypGSgAFIegggg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26C69B204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C69B240(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C69B290(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26C69B2E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 24))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C69B33C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_26C69B3A4(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = xmmword_26C6DB5C0;
  }

  return result;
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

uint64_t sub_26C69B3F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26C69B440(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26C69B498(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C60, &qword_26C6DB9F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C69B8E0();
  sub_26C6D8F38();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  sub_26C6D8DF8();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18 = 1;
    sub_26C6D8DF8();
    v17 = v3[4];
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C50, &qword_26C6DB9C8);
    sub_26C69B7E8();
    sub_26C6D8E18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26C69B68C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x64616F6C796170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_26C69B6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26C69BA4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26C69B718(uint64_t a1)
{
  v2 = sub_26C69B8E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C69B754(uint64_t a1)
{
  v2 = sub_26C69B8E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26C69B790()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_26C69B7E8()
{
  result = qword_2804A8C48;
  if (!qword_2804A8C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A8C50, &qword_26C6DB9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8C48);
  }

  return result;
}

unint64_t sub_26C69B864(uint64_t a1)
{
  result = sub_26C69B88C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C69B88C()
{
  result = qword_2804A8C58;
  if (!qword_2804A8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8C58);
  }

  return result;
}

unint64_t sub_26C69B8E0()
{
  result = qword_2804A8C68;
  if (!qword_2804A8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8C68);
  }

  return result;
}

unint64_t sub_26C69B948()
{
  result = qword_2804A8C70;
  if (!qword_2804A8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8C70);
  }

  return result;
}

unint64_t sub_26C69B9A0()
{
  result = qword_2804A8C78;
  if (!qword_2804A8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8C78);
  }

  return result;
}

unint64_t sub_26C69B9F8()
{
  result = qword_2804A8C80;
  if (!qword_2804A8C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8C80);
  }

  return result;
}

uint64_t sub_26C69BA4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_26C6D8E48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026C6DFB90 == a2 || (sub_26C6D8E48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C6D8E48();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26C69BB6C()
{
  sub_26C6D8A38();
}

uint64_t sub_26C69BCC0()
{
  sub_26C6D8EE8();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

id WFSetupServerState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t WFSetupServerState.SFServiceState.rawValue.getter()
{
  v1 = 0x7669746341746F6ELL;
  v2 = 0x6574617669746361;
  if (*v0 != 2)
  {
    v2 = 0x6164696C61766E69;
  }

  if (*v0)
  {
    v1 = 0x6974617669746361;
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

uint64_t WFSetupServerState.SFSessionState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6974696E49746F6ELL;
  v3 = 0x6164696C61766E69;
  if (v1 != 6)
  {
    v3 = 0x64656C696166;
  }

  v4 = 0x7265746E456E6970;
  if (v1 != 4)
  {
    v4 = 0x796C657275636573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x657463656E6E6F63;
  if (v1 != 2)
  {
    v5 = 0x796C657275636573;
  }

  if (*v0)
  {
    v2 = 0x696C616974696E69;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t WFSetupServerState.serviceState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___WFSetupServerState_serviceState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t WFSetupServerState.sessionState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___WFSetupServerState_sessionState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t WFSetupServerState.activationFlow.getter()
{
  v1 = (v0 + OBJC_IVAR___WFSetupServerState_activationFlow);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t WFSetupServerState.advertisementBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___WFSetupServerState_advertisementBehavior;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id WFSetupServerState.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___WFSetupServerState_activationFlow];
  *v2 = 0;
  v2[8] = 1;
  v0[OBJC_IVAR___WFSetupServerState_serviceState] = 0;
  v0[OBJC_IVAR___WFSetupServerState_sessionState] = 0;
  v0[OBJC_IVAR___WFSetupServerState_advertisementBehavior] = 0;
  swift_beginAccess();
  *v2 = 0;
  v2[8] = 1;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t WFSetupServerState.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = v2 + OBJC_IVAR___WFSetupServerState_activationFlow;
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_26C69D8F0();
  v5 = sub_26C6D8C38();
  if (v5)
  {
    rawValue._countAndFlagsBits = 0;
    v6 = v5;
    sub_26C6D89F8();
  }

  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v7 = sub_26C6D8898();
  __swift_project_value_buffer(v7, qword_2804AD228);
  v8 = a1;
  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BA8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_26C67A77C(0x5365636976726573, 0xEC00000065746174, &v18);
    *(v11 + 12) = 2082;
    v13 = sub_26C6D8C38();
    if (v13)
    {
      rawValue._countAndFlagsBits = 0;
      v14 = v13;
      sub_26C6D89F8();
    }

    v15 = sub_26C67A77C(7104878, 0xE300000000000000, &v18);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_26C66B000, v9, v10, "Invalid WFServerState decode with key: %{public}s value: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v12, -1, -1);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

TDGSharing::WFSetupServerState::SFServiceState_optional __swiftcall WFSetupServerState.SFServiceState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26C6D8DB8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

TDGSharing::WFSetupServerState::SFSessionState_optional __swiftcall WFSetupServerState.SFSessionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26C6D8DB8();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

TDGSharing::WFSetupServerState::AdvertisementBehavior_optional __swiftcall WFSetupServerState.AdvertisementBehavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26C6D8DB8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

Swift::Void __swiftcall WFSetupServerState.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR___WFSetupServerState_serviceState;
  swift_beginAccess();
  if (*(v1 + v3) > 1u)
  {
    *(v1 + v3);
  }

  v4 = sub_26C6D89E8();

  v5 = sub_26C6D89E8();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = OBJC_IVAR___WFSetupServerState_sessionState;
  swift_beginAccess();
  if (*(v1 + v6) > 3u)
  {
    *(v1 + v6);
  }

  v7 = sub_26C6D89E8();

  v8 = sub_26C6D89E8();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = OBJC_IVAR___WFSetupServerState_advertisementBehavior;
  swift_beginAccess();
  if (*(v1 + v9))
  {
    *(v1 + v9);
  }

  v10 = sub_26C6D89E8();

  v11 = sub_26C6D89E8();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

  v12 = (v1 + OBJC_IVAR___WFSetupServerState_activationFlow);
  swift_beginAccess();
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    v14 = sub_26C6D89E8();
    [(objc_class *)with.super.isa encodeInteger:v13 forKey:v14];
  }
}

unint64_t WFSetupServerState.AdvertisementBehavior.rawValue.getter()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000021;
  }

  *v0;
  return result;
}

id WFSetupServerState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26C69D0DC()
{
  v1 = *v0;
  sub_26C6D8EE8();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

uint64_t sub_26C69D1E0()
{
  *v0;
  *v0;
  *v0;
  sub_26C6D8A38();
}

uint64_t sub_26C69D2D0()
{
  v1 = *v0;
  sub_26C6D8EE8();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

void sub_26C69D3DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064657461;
  v4 = 0x7669746341746F6ELL;
  v5 = 0xE900000000000064;
  v6 = 0x6574617669746361;
  v7 = 0xEC000000676E6974;
  if (v2 != 3)
  {
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = 0x6164696C61766E69;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6974617669746361;
    v3 = 0xEA0000000000676ELL;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

void sub_26C69D4D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064657461;
  v4 = 0x6974696E49746F6ELL;
  v5 = 0xEB00000000646574;
  v6 = 0x6164696C61766E69;
  if (v2 != 6)
  {
    v6 = 0x64656C696166;
    v5 = 0xE600000000000000;
  }

  v7 = 0xEA00000000006465;
  v8 = 0x7265746E456E6970;
  if (v2 != 4)
  {
    v8 = 0x796C657275636573;
    v7 = 0xEE00646572696150;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000064;
  v10 = 0x657463656E6E6F63;
  if (v2 != 2)
  {
    v10 = 0x796C657275636573;
    v9 = 0xEF676E6972696150;
  }

  if (*v1)
  {
    v4 = 0x696C616974696E69;
    v3 = 0xEC000000676E697ALL;
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

uint64_t sub_26C69D5F4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000019;
  v3 = *a1;
  v4 = "SessionDisconnect";
  if (v3 == 1)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (v3 == 1)
  {
    v6 = "SessionDisconnect";
  }

  else
  {
    v6 = "ignoreOnSessionDisconnect";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000021;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "prescriptionRecords";
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001DLL;
    v4 = "ignoreOnSessionDisconnect";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000021;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "prescriptionRecords";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26C6D8E48();
  }

  return v11 & 1;
}