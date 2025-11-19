uint64_t sub_26BB52FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v99 = a3;
  v100 = a4;
  v98 = a2;
  sub_26BB57E88(0, &qword_28158B0D0, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D84C48]);
  v93 = v5;
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v94 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v95 = &v90 - v9;
  v10 = sub_26BB7BE78();
  v11 = *(v10 - 8);
  v101 = v10;
  v102 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v96 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v97 = (&v90 - v15);
  v92 = type metadata accessor for StocksKitServiceRequest(0);
  v16 = *(*(v92 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v92);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v90 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v90 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v90 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v90 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v90 - v32;
  v34 = type metadata accessor for CurrencyConversionsResult();
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v91 = &v90 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v90 - v38;
  sub_26BB56C7C();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v43 = &v90 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54CA8(a1, v43, sub_26BB56C7C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    LODWORD(v43) = *v43;
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v44 = sub_26BB7CB88();
    __swift_project_value_buffer(v44, qword_28158F140);
    sub_26BB54CA8(v98, v31, type metadata accessor for StocksKitServiceRequest);
    v46 = v101;
    v45 = v102;
    v47 = v96;
    (*(v102 + 16))(v96, v99, v101);
    v48 = sub_26BB7CB68();
    v49 = sub_26BB7CF78();
    if (os_log_type_enabled(v48, v49))
    {
      LODWORD(v99) = v43;
      v50 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v103 = v98;
      *v50 = 136315650;
      sub_26BB54CA8(v31, v22, type metadata accessor for StocksKitServiceRequest);
      sub_26BB54CA8(v22, v19, type metadata accessor for StocksKitServiceRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = 1869049708;
        sub_26BB55AE4(v22, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v31, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v19, type metadata accessor for DataSource.Logo);
        v43 = 0xE400000000000000;
      }

      else
      {
        v51 = 0xD000000000000013;
        sub_26BB53CA4();
        v64 = *(v63 + 48);
        v43 = 0x800000026BB83500;
        sub_26BB55AE4(v22, type metadata accessor for StocksKitServiceRequest);
        v46 = v101;
        sub_26BB55AE4(v31, type metadata accessor for StocksKitServiceRequest);
        v65 = &v19[v64];
        v47 = v96;
        sub_26BB55B44(v65, &qword_28158BB50, MEMORY[0x277D858F8]);
      }

      v66 = sub_26BB38238(v51, v43, &v103);

      *(v50 + 4) = v66;
      *(v50 + 12) = 2112;
      sub_26BB56CE8();
      swift_allocError();
      LOBYTE(v43) = v99;
      *v67 = v99;
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 14) = v68;
      v69 = v97;
      *v97 = v68;
      *(v50 + 22) = 2080;
      sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0]);
      v70 = sub_26BB7D348();
      v72 = v71;
      (*(v102 + 8))(v47, v46);
      v73 = sub_26BB38238(v70, v72, &v103);

      *(v50 + 24) = v73;
      _os_log_impl(&dword_26BB21000, v48, v49, "Got failure response for request: %s, failure reason: %@, for id: %s", v50, 0x20u);
      sub_26BB55B44(v69, &qword_28158BB58, sub_26BB55C10);
      MEMORY[0x26D68EA90](v69, -1, -1);
      v74 = v98;
      swift_arrayDestroy();
      MEMORY[0x26D68EA90](v74, -1, -1);
      MEMORY[0x26D68EA90](v50, -1, -1);
    }

    else
    {

      (*(v45 + 8))(v47, v46);
      sub_26BB55AE4(v31, type metadata accessor for StocksKitServiceRequest);
    }

    sub_26BB56CE8();
    v75 = swift_allocError();
    *v76 = v43;
    v103 = v75;
    sub_26BB57E88(0, &qword_28158B260, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D85670]);
    return sub_26BB7CE58();
  }

  else
  {
    sub_26BB5534C(v43, v39, type metadata accessor for CurrencyConversionsResult);
    v52 = v39;
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v53 = sub_26BB7CB88();
    __swift_project_value_buffer(v53, qword_28158F140);
    sub_26BB54CA8(v98, v33, type metadata accessor for StocksKitServiceRequest);
    v54 = v101;
    v55 = v102;
    v56 = v97;
    (*(v102 + 16))(v97, v99, v101);
    v57 = sub_26BB7CB68();
    v58 = sub_26BB7CF78();
    if (os_log_type_enabled(v57, v58))
    {
      v99 = v52;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v103 = v60;
      *v59 = 136315394;
      sub_26BB54CA8(v33, v28, type metadata accessor for StocksKitServiceRequest);
      sub_26BB54CA8(v28, v25, type metadata accessor for StocksKitServiceRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v61 = 1869049708;
        sub_26BB55AE4(v28, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v33, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v25, type metadata accessor for DataSource.Logo);
        v62 = 0xE400000000000000;
      }

      else
      {
        sub_26BB53CA4();
        v79 = *(v78 + 48);
        v62 = 0x800000026BB83500;
        sub_26BB55AE4(v28, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v33, type metadata accessor for StocksKitServiceRequest);
        v80 = &v25[v79];
        v61 = 0xD000000000000013;
        sub_26BB55B44(v80, &qword_28158BB50, MEMORY[0x277D858F8]);
      }

      v81 = sub_26BB38238(v61, v62, &v103);

      *(v59 + 4) = v81;
      *(v59 + 12) = 2080;
      sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0]);
      v82 = v97;
      v83 = v101;
      v84 = sub_26BB7D348();
      v86 = v85;
      (*(v102 + 8))(v82, v83);
      v87 = sub_26BB38238(v84, v86, &v103);

      *(v59 + 14) = v87;
      _os_log_impl(&dword_26BB21000, v57, v58, "Got success response for request: %s, for id: %s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D68EA90](v60, -1, -1);
      MEMORY[0x26D68EA90](v59, -1, -1);

      v52 = v99;
    }

    else
    {

      (*(v55 + 8))(v56, v54);
      sub_26BB55AE4(v33, type metadata accessor for StocksKitServiceRequest);
    }

    v88 = v95;
    sub_26BB54CA8(v52, v95, type metadata accessor for CurrencyConversionsResult);
    swift_storeEnumTagMultiPayload();
    v89 = v94;
    sub_26BB56E40(v88, v94, &qword_28158B0D0, type metadata accessor for CurrencyConversionsResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v103 = *v89;
      sub_26BB57E88(0, &qword_28158B260, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D85670]);
      sub_26BB7CE58();
    }

    else
    {
      sub_26BB5534C(v89, v91, type metadata accessor for CurrencyConversionsResult);
      sub_26BB57E88(0, &qword_28158B260, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D85670]);
      sub_26BB7CE68();
    }

    sub_26BB56EC0(v88, &qword_28158B0D0, type metadata accessor for CurrencyConversionsResult);
    return sub_26BB55AE4(v52, type metadata accessor for CurrencyConversionsResult);
  }
}

void sub_26BB53CA4()
{
  if (!qword_28158BDC0[0])
  {
    sub_26BB55BBC(255, &qword_28158BB50, MEMORY[0x277D858F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_28158BDC0);
    }
  }
}

void sub_26BB53D2C()
{
  if (!qword_28043A1F0)
  {
    type metadata accessor for DataSource.Logo(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28043A1F0);
    }
  }
}

uint64_t sub_26BB53DB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BB53E2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_26BB53F54(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_26BB541D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26BB54250()
{
  if (!qword_28158C318)
  {
    sub_26BB7BE78();
    type metadata accessor for StocksKitServiceRequest(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28158C318);
    }
  }
}

void sub_26BB542C4()
{
  if (!qword_28043A1F8)
  {
    v0 = sub_26BB7BE78();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A1F8);
    }
  }
}

unint64_t sub_26BB54310()
{
  result = qword_28043A200;
  if (!qword_28043A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A200);
  }

  return result;
}

uint64_t sub_26BB54364(uint64_t a1, uint64_t a2, void *a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v6 = type metadata accessor for StocksKitServiceRequest(0);
  v4[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *v3;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = *a3;

  return MEMORY[0x2822009F8](sub_26BB54408, 0, 0);
}

uint64_t sub_26BB54408()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_26BB53D2C();
  v6 = *(v5 + 48);
  sub_26BB54CA8(v4, v3, type metadata accessor for DataSource.Logo);
  *(v3 + v6) = v1;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_26BB544FC;
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[2];

  return sub_26BB50428(v10, v8);
}

uint64_t sub_26BB544FC()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 40);
  v4 = *v1;
  v4[9] = v0;

  sub_26BB55AE4(v3, type metadata accessor for StocksKitServiceRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB54674, 0, 0);
  }

  else
  {
    v5 = v4[5];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_26BB54674()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_26BB546D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a3;
  v6 = type metadata accessor for StocksKitServiceRequest(0);
  *(v4 + 32) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *v3;
  *(v4 + 40) = v8;
  *(v4 + 48) = v9;
  *(v4 + 56) = *a2;
  *(v4 + 88) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_26BB54784, 0, 0);
}

uint64_t sub_26BB54784()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  sub_26BB53CA4();
  v8 = *(v7 + 48);
  *v5 = v3;
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;
  sub_26BB54C28(v6, v5 + v8);
  swift_storeEnumTagMultiPayload();
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_26BB5486C;
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 16);

  return sub_26BB51090(v12, v10);
}

uint64_t sub_26BB5486C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 40);
  v4 = *v1;
  v4[10] = v0;

  sub_26BB55AE4(v3, type metadata accessor for StocksKitServiceRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB549E4, 0, 0);
  }

  else
  {
    v5 = v4[5];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_26BB549E4()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

unint64_t sub_26BB54A48()
{
  result = qword_28158C2B8;
  if (!qword_28158C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2B8);
  }

  return result;
}

unint64_t sub_26BB54A9C()
{
  result = qword_28158C2D0;
  if (!qword_28158C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2D0);
  }

  return result;
}

unint64_t sub_26BB54AF0()
{
  result = qword_28158C2E8;
  if (!qword_28158C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2E8);
  }

  return result;
}

uint64_t sub_26BB54B44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26BB54BD4()
{
  result = qword_28158C1F0;
  if (!qword_28158C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C1F0);
  }

  return result;
}

uint64_t sub_26BB54C28(uint64_t a1, uint64_t a2)
{
  sub_26BB55BBC(0, &qword_28158BB50, MEMORY[0x277D858F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB54CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_26BB54D10()
{
  v1 = sub_26BB7CC28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v49 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v49 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v14 = sub_26BB7CBB8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_26BB7CBF8();
  sub_26BB7CBA8();
  v16 = sub_26BB7CB98();
  if (v0)
  {
    v57 = v0;
    v17 = v0;
    sub_26BB55504();
    if (swift_dynamicCast())
    {

      v18 = v11;
      (*(v2 + 32))(v11, v13, v1);
      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v19 = sub_26BB7CB88();
      __swift_project_value_buffer(v19, qword_28158F140);
      v20 = *(v2 + 16);
      v20(v8, v11, v1);
      v21 = v55;
      v20(v55, v18, v1);
      v22 = sub_26BB7CB68();
      v23 = sub_26BB7CF68();
      v53 = v22;
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v52 = v20;
        v25 = v24;
        v50 = swift_slowAlloc();
        v56 = v50;
        *v25 = 67109378;
        v26 = sub_26BB7CC18() & 1;
        v51 = v18;
        v27 = *(v2 + 8);
        v54 = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v27(v8, v1);
        *(v25 + 4) = v26;
        *(v25 + 8) = 2080;
        v28 = sub_26BB7CC08();
        v30 = v29;
        v27(v21, v1);
        v31 = sub_26BB38238(v28, v30, &v56);

        *(v25 + 10) = v31;
        v32 = v27;
        v18 = v51;
        v33 = v23;
        v34 = v53;
        _os_log_impl(&dword_26BB21000, v53, v33, "Failed to initialize session (recoverable: %{BOOL}d): %s", v25, 0x12u);
        v35 = v50;
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x26D68EA90](v35, -1, -1);
        v36 = v25;
        v20 = v52;
        MEMORY[0x26D68EA90](v36, -1, -1);
      }

      else
      {
        v32 = *(v2 + 8);
        v54 = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32(v8, v1);

        v32(v21, v1);
      }

      sub_26BB54B44(&qword_28158B998, MEMORY[0x277D855E8]);
      swift_allocError();
      v20(v48, v18, v1);
      swift_willThrow();
      v32(v18, v1);
    }

    else
    {

      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v40 = sub_26BB7CB88();
      __swift_project_value_buffer(v40, qword_28158F140);
      v41 = v0;
      v42 = sub_26BB7CB68();
      v43 = sub_26BB7CF68();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v0;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_26BB21000, v42, v43, "Failed to initialize session: %@", v44, 0xCu);
        sub_26BB55B44(v45, &qword_28158BB58, sub_26BB55C10);
        MEMORY[0x26D68EA90](v45, -1, -1);
        MEMORY[0x26D68EA90](v44, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    v37 = v16;
    type metadata accessor for XPCSessionWrapper();
    v38 = swift_allocObject();
    sub_26BB56F30();
    v39 = swift_allocObject();
    *(v39 + 24) = 0;
    *(v39 + 16) = v37;
    *(v38 + 16) = v39;
  }
}

uint64_t sub_26BB5534C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB553B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26BB7BE78() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_26BB3BF24;

  return sub_26BB51C48(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_26BB55504()
{
  result = qword_28158BB40;
  if (!qword_28158BB40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28158BB40);
  }

  return result;
}

void sub_26BB55568(uint64_t a1, uint64_t a2)
{
  v5 = sub_26BB7CC28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v47 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  v19 = *(a1 + 16);
  v53 = a2;
  os_unfair_lock_lock((v19 + 24));
  sub_26BB55BA0((v19 + 16));
  v20 = (v19 + 24);
  if (v2)
  {
    os_unfair_lock_unlock(v20);
    v55 = v2;
    v21 = v2;
    sub_26BB55504();
    if (swift_dynamicCast())
    {

      (*(v6 + 32))(v16, v18, v5);
      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v22 = sub_26BB7CB88();
      __swift_project_value_buffer(v22, qword_28158F140);
      v23 = *(v6 + 16);
      v23(v13, v16, v5);
      v23(v10, v16, v5);
      v24 = sub_26BB7CB68();
      v25 = sub_26BB7CF68();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v51 = v23;
        v27 = v26;
        v50 = swift_slowAlloc();
        v54 = v50;
        *v27 = 67109378;
        v49 = v25;
        v28 = sub_26BB7CC18() & 1;
        v48 = v24;
        v29 = *(v6 + 8);
        v52 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29(v13, v5);
        *(v27 + 4) = v28;
        *(v27 + 8) = 2080;
        v30 = sub_26BB7CC08();
        v32 = v31;
        v29(v10, v5);
        v33 = sub_26BB38238(v30, v32, &v54);

        *(v27 + 10) = v33;
        v34 = v29;
        v35 = v48;
        _os_log_impl(&dword_26BB21000, v48, v49, "Failed to send XPC message XPC error (recoverable: %{BOOL}d): %s", v27, 0x12u);
        v36 = v50;
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x26D68EA90](v36, -1, -1);
        v37 = v27;
        v23 = v51;
        MEMORY[0x26D68EA90](v37, -1, -1);
      }

      else
      {
        v34 = *(v6 + 8);
        v52 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34(v13, v5);

        v34(v10, v5);
      }

      sub_26BB54B44(&qword_28158B998, MEMORY[0x277D855E8]);
      swift_allocError();
      v23(v46, v16, v5);
      swift_willThrow();
      v34(v16, v5);
    }

    else
    {

      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v38 = sub_26BB7CB88();
      __swift_project_value_buffer(v38, qword_28158F140);
      v39 = v2;
      v40 = sub_26BB7CB68();
      v41 = sub_26BB7CF68();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v2;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_26BB21000, v40, v41, "Failed to send XPC message: %@", v42, 0xCu);
        sub_26BB55B44(v43, &qword_28158BB58, sub_26BB55C10);
        MEMORY[0x26D68EA90](v43, -1, -1);
        MEMORY[0x26D68EA90](v42, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    os_unfair_lock_unlock(v20);
  }
}

uint64_t sub_26BB55AE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BB55B44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_26BB55BBC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26BB55BBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BB7CFE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26BB55C10()
{
  result = qword_28158BB60;
  if (!qword_28158BB60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28158BB60);
  }

  return result;
}

uint64_t sub_26BB55C68(uint64_t a1)
{
  v3 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_26BB7BE78() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_26BB57E88(0, &qword_28158B260, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D85670]);
  v10 = v1 + ((v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80));

  return sub_26BB52FA8(a1, v1 + v4, v1 + v7, v10);
}

uint64_t sub_26BB55DD8()
{
  v0 = sub_26BB7D1F8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_26BB55E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v67 = a5;
  v9 = sub_26BB7CC28();
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v61 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v61 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - v17;
  v19 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54250();
  v24 = *(v23 + 48);
  v25 = sub_26BB7BE78();
  (*(*(v25 - 8) + 16))(v22, a2, v25);
  sub_26BB54CA8(a3, &v22[v24], type metadata accessor for StocksKitServiceRequest);
  swift_storeEnumTagMultiPayload();
  v26 = *(a1 + 16);
  v69 = a3;
  v70 = v22;
  v71 = a4;
  v72 = v67;
  os_unfair_lock_lock((v26 + 24));
  v27 = v68;
  sub_26BB574C0((v26 + 16));
  v28 = (v26 + 24);
  if (v27)
  {
    os_unfair_lock_unlock(v28);
    sub_26BB55AE4(v22, type metadata accessor for CancellableStocksKitServiceRequest);
    v74 = v27;
    v29 = v27;
    sub_26BB55504();
    if (swift_dynamicCast())
    {
      v30 = v9;

      v32 = v65;
      v31 = v66;
      (*(v65 + 32))(v66, v18, v30);
      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v33 = sub_26BB7CB88();
      __swift_project_value_buffer(v33, qword_28158F140);
      v34 = *(v32 + 16);
      v35 = v63;
      v34(v63, v31, v30);
      v36 = v64;
      v68 = v34;
      v34(v64, v31, v30);
      v37 = sub_26BB7CB68();
      v38 = sub_26BB7CF68();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v73 = v67;
        *v39 = 67109378;
        v62 = v37;
        v40 = sub_26BB7CC18();
        v41 = v35;
        v42 = v30;
        v43 = v40 & 1;
        v44 = *(v32 + 8);
        LODWORD(v65) = v38;
        v44(v41, v42);
        *(v39 + 4) = v43;
        *(v39 + 8) = 2080;
        v45 = sub_26BB7CC08();
        v47 = v46;
        v44(v36, v42);
        v48 = sub_26BB38238(v45, v47, &v73);

        *(v39 + 10) = v48;
        v30 = v42;
        v49 = v62;
        _os_log_impl(&dword_26BB21000, v62, v65, "Failed to send XPC message XPC error (recoverable: %{BOOL}d): %s", v39, 0x12u);
        v50 = v67;
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x26D68EA90](v50, -1, -1);
        v51 = v39;
        v31 = v66;
        MEMORY[0x26D68EA90](v51, -1, -1);
      }

      else
      {
        v44 = *(v32 + 8);
        v44(v35, v30);

        v44(v36, v30);
      }

      sub_26BB54B44(&qword_28158B998, MEMORY[0x277D855E8]);
      swift_allocError();
      v68(v60, v31, v30);
      swift_willThrow();
      v44(v31, v30);
    }

    else
    {

      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v52 = sub_26BB7CB88();
      __swift_project_value_buffer(v52, qword_28158F140);
      v53 = v27;
      v54 = sub_26BB7CB68();
      v55 = sub_26BB7CF68();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        v58 = v27;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 4) = v59;
        *v57 = v59;
        _os_log_impl(&dword_26BB21000, v54, v55, "Failed to send XPC message: %@", v56, 0xCu);
        sub_26BB55B44(v57, &qword_28158BB58, sub_26BB55C10);
        MEMORY[0x26D68EA90](v57, -1, -1);
        MEMORY[0x26D68EA90](v56, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    os_unfair_lock_unlock(v28);
    sub_26BB55AE4(v22, type metadata accessor for CancellableStocksKitServiceRequest);
  }
}

void sub_26BB564C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v67 = a5;
  v9 = sub_26BB7CC28();
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v61 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v61 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - v17;
  v19 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54250();
  v24 = *(v23 + 48);
  v25 = sub_26BB7BE78();
  (*(*(v25 - 8) + 16))(v22, a2, v25);
  sub_26BB54CA8(a3, &v22[v24], type metadata accessor for StocksKitServiceRequest);
  swift_storeEnumTagMultiPayload();
  v26 = *(a1 + 16);
  v69 = a3;
  v70 = v22;
  v71 = a4;
  v72 = v67;
  os_unfair_lock_lock((v26 + 24));
  v27 = v68;
  sub_26BB56B6C((v26 + 16));
  v28 = (v26 + 24);
  if (v27)
  {
    os_unfair_lock_unlock(v28);
    sub_26BB55AE4(v22, type metadata accessor for CancellableStocksKitServiceRequest);
    v74 = v27;
    v29 = v27;
    sub_26BB55504();
    if (swift_dynamicCast())
    {
      v30 = v9;

      v32 = v65;
      v31 = v66;
      (*(v65 + 32))(v66, v18, v30);
      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v33 = sub_26BB7CB88();
      __swift_project_value_buffer(v33, qword_28158F140);
      v34 = *(v32 + 16);
      v35 = v63;
      v34(v63, v31, v30);
      v36 = v64;
      v68 = v34;
      v34(v64, v31, v30);
      v37 = sub_26BB7CB68();
      v38 = sub_26BB7CF68();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v73 = v67;
        *v39 = 67109378;
        v62 = v37;
        v40 = sub_26BB7CC18();
        v41 = v35;
        v42 = v30;
        v43 = v40 & 1;
        v44 = *(v32 + 8);
        LODWORD(v65) = v38;
        v44(v41, v42);
        *(v39 + 4) = v43;
        *(v39 + 8) = 2080;
        v45 = sub_26BB7CC08();
        v47 = v46;
        v44(v36, v42);
        v48 = sub_26BB38238(v45, v47, &v73);

        *(v39 + 10) = v48;
        v30 = v42;
        v49 = v62;
        _os_log_impl(&dword_26BB21000, v62, v65, "Failed to send XPC message XPC error (recoverable: %{BOOL}d): %s", v39, 0x12u);
        v50 = v67;
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x26D68EA90](v50, -1, -1);
        v51 = v39;
        v31 = v66;
        MEMORY[0x26D68EA90](v51, -1, -1);
      }

      else
      {
        v44 = *(v32 + 8);
        v44(v35, v30);

        v44(v36, v30);
      }

      sub_26BB54B44(&qword_28158B998, MEMORY[0x277D855E8]);
      swift_allocError();
      v68(v60, v31, v30);
      swift_willThrow();
      v44(v31, v30);
    }

    else
    {

      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v52 = sub_26BB7CB88();
      __swift_project_value_buffer(v52, qword_28158F140);
      v53 = v27;
      v54 = sub_26BB7CB68();
      v55 = sub_26BB7CF68();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        v58 = v27;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 4) = v59;
        *v57 = v59;
        _os_log_impl(&dword_26BB21000, v54, v55, "Failed to send XPC message: %@", v56, 0xCu);
        sub_26BB55B44(v57, &qword_28158BB58, sub_26BB55C10);
        MEMORY[0x26D68EA90](v57, -1, -1);
        MEMORY[0x26D68EA90](v56, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    os_unfair_lock_unlock(v28);
    sub_26BB55AE4(v22, type metadata accessor for CancellableStocksKitServiceRequest);
  }
}

uint64_t sub_26BB56BD8(uint64_t a1)
{
  v3 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_26BB4F6FC(a1, v5, v1 + v4, v7, v8);
}

void sub_26BB56C7C()
{
  if (!qword_28158BFD8[0])
  {
    type metadata accessor for CurrencyConversionsResult();
    sub_26BB56CE8();
    v0 = type metadata accessor for StocksKitServiceResult();
    if (!v1)
    {
      atomic_store(v0, qword_28158BFD8);
    }
  }
}

unint64_t sub_26BB56CE8()
{
  result = qword_28158C1E0;
  if (!qword_28158C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C1E0);
  }

  return result;
}

unint64_t sub_26BB56D3C()
{
  result = qword_28158B8E0;
  if (!qword_28158B8E0)
  {
    sub_26BB56C7C();
    sub_26BB54B44(&qword_28158BCD8, type metadata accessor for CurrencyConversionsResult);
    sub_26BB56DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B8E0);
  }

  return result;
}

unint64_t sub_26BB56DEC()
{
  result = qword_28158C1E8;
  if (!qword_28158C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C1E8);
  }

  return result;
}

uint64_t sub_26BB56E40(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_26BB57E88(0, a3, a4, MEMORY[0x277D84C48]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26BB56EC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB57E88(0, a2, a3, MEMORY[0x277D84C48]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26BB56F30()
{
  if (!qword_28158B220)
  {
    sub_26BB7CBF8();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_26BB7D0F8();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B220);
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = sub_26BB7BE78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 16);

  v11 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v12 = v0 + v8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26BB7C3D8();
    (*(*(v13 - 8) + 8))(v0 + v8, v13);
  }

  else
  {
    sub_26BB53CA4();
    v15 = *(v14 + 48);
    v16 = sub_26BB7D178();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v12 + v15, 1, v16))
    {
      (*(v17 + 8))(v12 + v15, v16);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_26BB571A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26BB7BE78() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_26BB3BA30;

  return sub_26BB5198C(a1, v10, v11, v1 + v6, v1 + v9);
}

void sub_26BB57304()
{
  if (!qword_28043A208)
  {
    sub_26BB55504();
    v0 = sub_26BB7CE78();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A208);
    }
  }
}

uint64_t sub_26BB5736C(uint64_t a1)
{
  v3 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_26BB7BE78() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_26BB57304();
  v10 = *(a1 + 80);
  v11 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v10;
  v16 = *(a1 + 96);
  v12 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v12;
  v13 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v13;
  return sub_26BB5250C(v15, v1 + v4, v1 + v7, v1 + v11);
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26BB7C3D8();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    sub_26BB53CA4();
    v9 = *(v8 + 48);
    v10 = sub_26BB7D178();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12 + 8);

  return MEMORY[0x2821FE8E8](v0, v12 + 16, v2 | 7);
}

uint64_t sub_26BB576C8(uint64_t a1)
{
  v3 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v8;
  v13 = *(a1 + 96);
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  v10 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v10;
  return sub_26BB578BC(v12, v1 + v4, v6, v7);
}

void sub_26BB57784()
{
  if (!qword_28043A210)
  {
    sub_26BB56CE8();
    v0 = type metadata accessor for StocksKitServiceResult();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A210);
    }
  }
}

unint64_t sub_26BB577E8()
{
  result = qword_28043A218;
  if (!qword_28043A218)
  {
    sub_26BB57784();
    sub_26BB57868();
    sub_26BB56DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A218);
  }

  return result;
}

unint64_t sub_26BB57868()
{
  result = qword_28043A220;
  if (!qword_28043A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A220);
  }

  return result;
}

uint64_t sub_26BB578BC(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v8 = *a1;
  v9 = type metadata accessor for StocksKitServiceRequest(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  if (*(a1 + 97))
  {
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v19 = sub_26BB7CB88();
    __swift_project_value_buffer(v19, qword_28158F140);
    v20 = v8;
    v21 = sub_26BB7CB68();
    v22 = sub_26BB7CF78();
    sub_26BB56EC0(a1, &qword_28043A228, sub_26BB57784);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v8;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_26BB21000, v21, v22, "Failure sending request, error: %@", v23, 0xCu);
      sub_26BB55B44(v24, &qword_28158BB58, sub_26BB55C10);
      MEMORY[0x26D68EA90](v24, -1, -1);
      MEMORY[0x26D68EA90](v23, -1, -1);
    }

    LOBYTE(v42[0]) = 1;
    LOBYTE(v45) = 0;
    v51 = 1;
    a3(&v45);
    *&v44[64] = v49;
    *&v44[80] = v50;
    v44[96] = v51;
    *v44 = v45;
    *&v44[16] = v46;
    *&v44[32] = v47;
    *&v44[48] = v48;
    v27 = v44;
  }

  else
  {
    *v44 = v8;
    *&v44[8] = *(a1 + 8);
    *&v44[24] = *(a1 + 24);
    *&v44[40] = *(a1 + 40);
    *&v44[82] = *(a1 + 82);
    *&v44[72] = *(a1 + 72);
    *&v44[56] = *(a1 + 56);
    v45 = *v44;
    v46 = *&v44[16];
    v51 = v44[96];
    v49 = *&v44[64];
    v50 = *&v44[80];
    v47 = *&v44[32];
    v48 = *&v44[48];
    sub_26BB54CA8(v44, v42, sub_26BB57784);
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v28 = sub_26BB7CB88();
    __swift_project_value_buffer(v28, qword_28158F140);
    sub_26BB54CA8(a2, v18, type metadata accessor for StocksKitServiceRequest);
    v29 = sub_26BB7CB68();
    v30 = sub_26BB7CF78();
    if (os_log_type_enabled(v29, v30))
    {
      v40 = a4;
      v41 = a3;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v42[0] = v32;
      *v31 = 136315138;
      sub_26BB54CA8(v18, v16, type metadata accessor for StocksKitServiceRequest);
      sub_26BB54CA8(v16, v13, type metadata accessor for StocksKitServiceRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26BB55AE4(v16, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v18, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v13, type metadata accessor for DataSource.Logo);
        v33 = 0xE400000000000000;
        v34 = 1869049708;
      }

      else
      {
        sub_26BB53CA4();
        v39 = *(v35 + 48);
        v33 = 0x800000026BB83500;
        sub_26BB55AE4(v16, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v18, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55B44(&v13[v39], &qword_28158BB50, MEMORY[0x277D858F8]);
        v34 = 0xD000000000000013;
      }

      v36 = sub_26BB38238(v34, v33, v42);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_26BB21000, v29, v30, "Done sending request: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x26D68EA90](v32, -1, -1);
      MEMORY[0x26D68EA90](v31, -1, -1);

      a3 = v41;
    }

    else
    {

      sub_26BB55AE4(v18, type metadata accessor for StocksKitServiceRequest);
    }

    a3(&v45);
    v42[4] = v49;
    v42[5] = v50;
    v43 = v51;
    v42[0] = v45;
    v42[1] = v46;
    v42[2] = v47;
    v42[3] = v48;
    v27 = v42;
  }

  return sub_26BB55AE4(v27, sub_26BB57784);
}

void sub_26BB57E88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_26BB55504();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_26BB57F04()
{
  result = qword_28043A238;
  if (!qword_28043A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A238);
  }

  return result;
}

unint64_t sub_26BB57F58()
{
  result = qword_28158BFB8;
  if (!qword_28158BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BFB8);
  }

  return result;
}

unint64_t sub_26BB57FAC()
{
  result = qword_28158BFD0;
  if (!qword_28158BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BFD0);
  }

  return result;
}

unint64_t sub_26BB58000()
{
  result = qword_28043A240;
  if (!qword_28043A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A240);
  }

  return result;
}

unint64_t sub_26BB58054()
{
  result = qword_28158B7B0;
  if (!qword_28158B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B7B0);
  }

  return result;
}

unint64_t sub_26BB580A8()
{
  result = qword_28043A250;
  if (!qword_28043A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A250);
  }

  return result;
}

uint64_t sub_26BB580FC(uint64_t a1, uint64_t a2)
{
  sub_26BB55BBC(0, &qword_28158BB50, MEMORY[0x277D858F8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BB5817C()
{
  result = qword_28158B7B8;
  if (!qword_28158B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B7B8);
  }

  return result;
}

void sub_26BB581D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_26BB582A8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_26BB58338(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26BB5840C()
{
  result = qword_28043A258;
  if (!qword_28043A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A258);
  }

  return result;
}

unint64_t sub_26BB58464()
{
  result = qword_28043A260;
  if (!qword_28043A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A260);
  }

  return result;
}

unint64_t sub_26BB584BC()
{
  result = qword_28043A268;
  if (!qword_28043A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A268);
  }

  return result;
}

unint64_t sub_26BB58568()
{
  result = qword_28043A270;
  if (!qword_28043A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A270);
  }

  return result;
}

unint64_t sub_26BB585C0()
{
  result = qword_28043A278;
  if (!qword_28043A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A278);
  }

  return result;
}

unint64_t sub_26BB58618()
{
  result = qword_28043A280;
  if (!qword_28043A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A280);
  }

  return result;
}

unint64_t sub_26BB58670()
{
  result = qword_28158BFC0;
  if (!qword_28158BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BFC0);
  }

  return result;
}

unint64_t sub_26BB586C8()
{
  result = qword_28158BFC8;
  if (!qword_28158BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BFC8);
  }

  return result;
}

unint64_t sub_26BB58720()
{
  result = qword_28158BFA8;
  if (!qword_28158BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BFA8);
  }

  return result;
}

unint64_t sub_26BB58778()
{
  result = qword_28158BFB0;
  if (!qword_28158BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BFB0);
  }

  return result;
}

unint64_t sub_26BB587D0()
{
  result = qword_28043A288;
  if (!qword_28043A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A288);
  }

  return result;
}

unint64_t sub_26BB58828()
{
  result = qword_28043A290;
  if (!qword_28043A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A290);
  }

  return result;
}

unint64_t sub_26BB58928()
{
  result = qword_28158C2D8;
  if (!qword_28158C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2D8);
  }

  return result;
}

unint64_t sub_26BB58980()
{
  result = qword_28158C2E0;
  if (!qword_28158C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2E0);
  }

  return result;
}

unint64_t sub_26BB589D8()
{
  result = qword_28158C2C0;
  if (!qword_28158C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2C0);
  }

  return result;
}

unint64_t sub_26BB58A30()
{
  result = qword_28158C2C8;
  if (!qword_28158C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2C8);
  }

  return result;
}

unint64_t sub_26BB58A88()
{
  result = qword_28158C2A8;
  if (!qword_28158C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2A8);
  }

  return result;
}

unint64_t sub_26BB58AE0()
{
  result = qword_28158C2B0;
  if (!qword_28158C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2B0);
  }

  return result;
}

StocksKit::ExchangeStatus_optional __swiftcall ExchangeStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26BB7D1F8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ExchangeStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6465736F6C63;
  v4 = 0x656B72614D657270;
  if (v1 != 3)
  {
    v4 = 0x756F487265746661;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1852141679;
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

unint64_t sub_26BB58C68()
{
  result = qword_28043A298;
  if (!qword_28043A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A298);
  }

  return result;
}

uint64_t sub_26BB58CBC()
{
  v1 = *v0;
  sub_26BB7D418();
  sub_26BB7CD88();

  return sub_26BB7D458();
}

uint64_t sub_26BB58D9C()
{
  *v0;
  *v0;
  *v0;
  sub_26BB7CD88();
}

uint64_t sub_26BB58E68()
{
  v1 = *v0;
  sub_26BB7D418();
  sub_26BB7CD88();

  return sub_26BB7D458();
}

void sub_26BB58F50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x6465736F6C63;
  v7 = 0xE900000000000074;
  v8 = 0x656B72614D657270;
  if (v2 != 3)
  {
    v8 = 0x756F487265746661;
    v7 = 0xEA00000000007372;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1852141679;
    v3 = 0xE400000000000000;
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

uint64_t getEnumTagSinglePayload for ExchangeStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExchangeStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26BB591F8()
{
  result = qword_28043A2A0;
  if (!qword_28043A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A2A0);
  }

  return result;
}

uint64_t sub_26BB5924C(NSObject *a1)
{
  v2 = v1;
  if (qword_28158C2F8 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v4 = sub_26BB7CB88();
    __swift_project_value_buffer(v4, qword_28158F140);
    v5 = a1;
    a1 = sub_26BB7CB68();
    v6 = sub_26BB7CF78();

    if (os_log_type_enabled(a1, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v7 = 136315138;
      v9 = [v5 configuration];
      v10 = [v9 identifier];

      if (v10)
      {
        v11 = sub_26BB7CD48();
        v13 = v12;
      }

      else
      {
        v13 = 0xE700000000000000;
        v11 = 0x6E776F6E6B6E75;
      }

      v14 = sub_26BB38238(v11, v13, &v33);

      *(v7 + 4) = v14;
      _os_log_impl(&dword_26BB21000, a1, v6, "Background URL session did finish for identifier: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D68EA90](v8, -1, -1);
      MEMORY[0x26D68EA90](v7, -1, -1);
    }

    v15 = OBJC_IVAR____TtC9StocksKit30StockServiceURLSessionDelegate_sessionDidFinishObservers;
    v16 = *(v2 + OBJC_IVAR____TtC9StocksKit30StockServiceURLSessionDelegate_sessionDidFinishObservers);
    v33 = MEMORY[0x277D84F90];
    v17 = v16 >> 62 ? sub_26BB7D1A8() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v17)
    {
      break;
    }

    v32 = v2;
    v18 = 0;
    v2 = (v16 & 0xC000000000000001);
    while (v2)
    {
      MEMORY[0x26D68DFB0](v18, v16);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        v2 = v32;
        v22 = v33;
        goto LABEL_23;
      }

LABEL_16:
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_26BB7D118();
        v21 = v33[2];
        sub_26BB7D138();
        sub_26BB7D148();
        a1 = &v33;
        sub_26BB7D128();
      }

      else
      {
      }

      ++v18;
      if (v20 == v17)
      {
        goto LABEL_21;
      }
    }

    if (v18 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v16 + 8 * v18 + 32);

      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  v22 = MEMORY[0x277D84F90];
LABEL_23:

  v23 = *(v2 + v15);
  *(v2 + v15) = v22;

  v24 = *(v2 + v15);
  if (v24 >> 62)
  {
    if (v24 < 0)
    {
      v31 = *(v2 + v15);
    }

    v25 = sub_26BB7D1A8();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25)
  {
    v26 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x26D68DFB0](v26, v24);
        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v27 = *(v24 + 8 * v26 + 32);

        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_34:
          __break(1u);
          break;
        }
      }

      v2 = *(v27 + 16);
      a1 = *(v27 + 24);

      v2(v29);

      ++v26;
    }

    while (v28 != v25);
  }
}

id sub_26BB596D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BB5973C()
{
  v1 = *(v0 + 24);

  sub_26BB597C0(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_26BB598B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26BB59938(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  v6 = *a1 >> 62;
  if (v6)
  {
    goto LABEL_65;
  }

  v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      if (v6)
      {
        v8 = sub_26BB7D1A8();
      }

      else
      {
        v8 = *(v5 + 16);
      }

      goto LABEL_21;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D68DFB0](v8, v4);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v7 = sub_26BB7D1A8();
        goto LABEL_3;
      }

      v9 = *(v4 + 8 * v8 + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v12 = __OFADD__(v8++, 1);
    if (v12)
    {
      goto LABEL_59;
    }
  }

  v13 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_72;
  }

  if (v6)
  {
    if (v13 != sub_26BB7D1A8())
    {
      goto LABEL_25;
    }

LABEL_21:
    if (v4 >> 62)
    {
      v14 = sub_26BB7D1A8();
      if (v14 >= v8)
      {
LABEL_23:
        sub_26BB5A7D8(v8, v14);
        type metadata accessor for ObserverProxy();
        v15 = swift_allocObject();
        *(v15 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v15 + 24) = a3;
        v16 = swift_unknownObjectWeakAssign();
        MEMORY[0x26D68DCF0](v16);
        if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          return sub_26BB7CE28();
        }

LABEL_68:
        sub_26BB7CE18();
        return sub_26BB7CE28();
      }
    }

    else
    {
      v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14 >= v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  if (v13 == *(v5 + 16))
  {
    goto LABEL_21;
  }

LABEL_25:
  v5 = v8 + 5;
  while (2)
  {
    v17 = v5 - 4;
    v6 = v4 & 0xC000000000000001;
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D68DFB0](v5 - 4, v4);
    }

    else
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v17 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v18 = *(v4 + 8 * v5);
    }

    v19 = swift_unknownObjectWeakLoadStrong();

    if (!v19)
    {
      goto LABEL_49;
    }

    result = swift_unknownObjectRelease();
    if (v17 == v8)
    {
      goto LABEL_48;
    }

    if (v6)
    {
      v20 = MEMORY[0x26D68DFB0](v8, v4);
      v21 = MEMORY[0x26D68DFB0](v5 - 4, v4);
      goto LABEL_38;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v22)
      {
        goto LABEL_70;
      }

      if (v17 >= v22)
      {
        goto LABEL_71;
      }

      v20 = *(v4 + 8 * v8 + 32);
      v21 = *(v4 + 8 * v5);

LABEL_38:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_26BB5A238(v4);
        v23 = (v4 >> 62) & 1;
      }

      else
      {
        LODWORD(v23) = 0;
      }

      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
      *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v21;

      if ((v4 & 0x8000000000000000) != 0 || v23)
      {
        v4 = sub_26BB5A238(v4);
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if ((v17 & 0x8000000000000000) != 0)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      else if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v17 >= *(v6 + 16))
      {
        goto LABEL_64;
      }

      v25 = *(v6 + 8 * v5);
      *(v6 + 8 * v5) = v20;

      *a1 = v4;
LABEL_48:
      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_63;
      }

LABEL_49:
      v6 = v5 - 3;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_62;
      }

      if (v4 >> 62)
      {
        v26 = sub_26BB7D1A8();
      }

      else
      {
        v26 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v5;
      if (v6 == v26)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_26BB59DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = sub_26BB7BE78();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  sub_26BB7BE68();
  v15 = sub_26BB7BE58();
  v17 = v16;
  (*(v10 + 8))(v13, v9);
  sub_26BB5A458(v15, v17, a3, a4, a5);
}

void sub_26BB59EBC(uint64_t a1, uint64_t a2)
{
  v5 = *v2 + OBJC_IVAR____TtC9StocksKit21IdentificationService_lockedObservers;
  os_unfair_lock_lock(v5);
  sub_26BB59938((v5 + 8), a1, a2);

  os_unfair_lock_unlock(v5);
}

void sub_26BB59F30(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC9StocksKit21IdentificationService_lockedObservers;
  os_unfair_lock_lock(v3);
  swift_unknownObjectRetain();
  v4 = sub_26BB5A8B0((v3 + 8), a1);
  swift_unknownObjectRelease();
  v5 = *(v3 + 8);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v7 = *(v3 + 8);
    }

    v6 = sub_26BB7D1A8();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 < v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_26BB5A7D8(v4, v6);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_26BB5A000()
{
  sub_26BB597C0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_26BB5A068(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  return sub_26BB5A168(v12, a2, a3, v6, v10, v11, a6);
}

uint64_t sub_26BB5A0C8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_26BB7D1A8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_26BB7D0B8();
  *v1 = result;
  return result;
}

uint64_t sub_26BB5A168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17[3] = a5;
  v17[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    a7(v17, a2, a3, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t sub_26BB5A238(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26BB7D1A8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_26BB7D0B8();
}

uint64_t sub_26BB5A29C()
{
  v0 = sub_26BB7BE78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280439D40 != -1)
  {
    swift_once();
  }

  v5 = qword_280440450;
  v6 = sub_26BB7CD38();
  v7 = [v5 stringForKey_];

  if (v7)
  {
    v8 = sub_26BB7CD48();

    return v8;
  }

  else
  {
    sub_26BB7BE68();
    v10 = sub_26BB7BE58();
    (*(v1 + 8))(v4, v0);
    v11 = sub_26BB7CD38();
    v12 = sub_26BB7CD38();
    [v5 setObject:v11 forKey:v12];

    return v10;
  }
}

void sub_26BB5A458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v24 = a1;
  if (sub_26BB5A29C() == a1 && v9 == a2)
  {
LABEL_3:

    return;
  }

  v10 = sub_26BB7D378();

  if (v10)
  {
    return;
  }

  if (qword_280439D40 != -1)
  {
    swift_once();
  }

  v11 = qword_280440450;
  v12 = sub_26BB7CD38();
  v13 = sub_26BB7CD38();
  [v11 setObject:v12 forKey:v13];

  v14 = &v6[OBJC_IVAR____TtC9StocksKit21IdentificationService_lockedObservers];
  os_unfair_lock_lock(&v6[OBJC_IVAR____TtC9StocksKit21IdentificationService_lockedObservers]);
  v15 = *(v14 + 1);

  os_unfair_lock_unlock(v14);
  if (v15 >> 62)
  {
    v16 = sub_26BB7D1A8();
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x26D68DFB0](i, v15);
      }

      else
      {
        v21 = *(v15 + 8 * i + 32);
      }

      v26[3] = ObjectType;
      v26[4] = sub_26BB5AB98();
      v26[0] = v6;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v21 + 24);
        v19 = swift_getObjectType();
        v20 = v6;
        a5(v26, v24, a2, v19, v18);
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }
  }
}

uint64_t sub_26BB5A6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ObserverProxy();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_26BB7D1A8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_26BB7D1A8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BB5A7D8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_26BB7D1A8();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_26BB7D1A8();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_26BB5A0C8(result);

  return sub_26BB5A6D8(v4, v2, 0);
}

uint64_t sub_26BB5A8B0(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_62:
    v6 = sub_26BB7D1A8();
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D68DFB0](v7, v3);
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v9 = *(v3 + 8 * v7 + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v12 == sub_26BB7D1A8())
            {
              return v7;
            }
          }

          else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D68DFB0](v12, v3);
          }

          else
          {
            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v15 = *(v3 + 8 * v12 + 32);
          }

          v16 = swift_unknownObjectWeakLoadStrong();

          if (!v16 || (swift_unknownObjectRelease(), v16 != a2))
          {
            if (v7 != v12)
            {
              if (v5)
              {
                v17 = MEMORY[0x26D68DFB0](v7, v3);
                v18 = MEMORY[0x26D68DFB0](v12, v3);
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_59;
                }

                v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v19)
                {
                  goto LABEL_60;
                }

                if (v12 >= v19)
                {
                  goto LABEL_61;
                }

                v17 = *(v3 + 32 + 8 * v7);
                v18 = *(v3 + 32 + 8 * v12);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_26BB5A238(v3);
                v20 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v20) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

              if ((v3 & 0x8000000000000000) != 0 || v20)
              {
                v3 = sub_26BB5A238(v3);
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v12 & 0x8000000000000000) != 0)
                {
LABEL_50:
                  __break(1u);
                  return sub_26BB7D1A8();
                }
              }

              else if ((v12 & 0x8000000000000000) != 0)
              {
                goto LABEL_50;
              }

              if (v12 >= *(v5 + 16))
              {
                goto LABEL_58;
              }

              v13 = v5 + 8 * v12;
              v14 = *(v13 + 32);
              *(v13 + 32) = v17;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_57;
            }
          }

          v8 = __OFADD__(v12++, 1);
          if (v8)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_53;
    }
  }

  if (v5)
  {
    return sub_26BB7D1A8();
  }

  return *(v4 + 16);
}

unint64_t sub_26BB5AB98()
{
  result = qword_280439E20;
  if (!qword_280439E20)
  {
    type metadata accessor for IdentificationService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439E20);
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

uint64_t sub_26BB5AC50(uint64_t a1)
{
  sub_26BB5987C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BB5ACC8()
{
  v11 = sub_26BB7CFA8();
  v0 = *(v11 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v11);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26BB7CF88();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_26BB7CCB8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10[1] = sub_26BB3B454(0, &qword_28158BB68, 0x277D85C78);
  sub_26BB7CC98();
  v12 = MEMORY[0x277D84F90];
  sub_26BB603AC(&unk_28158BB70, MEMORY[0x277D85230]);
  v8 = MEMORY[0x277D85230];
  sub_26BB5FBA4(0, &unk_28158BB98, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_26BB603F4(&qword_28158BB90, &unk_28158BB98, v8);
  sub_26BB7D028();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v11);
  result = sub_26BB7CFD8();
  qword_28158B7D0 = result;
  return result;
}

uint64_t PeerHandler.init(session:stockService:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_26BB5F348(MEMORY[0x277D84F90]);
  sub_26BB5F538();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  a3[6] = v7;
  *a3 = a1;

  return sub_26BB28A3C(a2, (a3 + 1));
}

uint64_t PeerHandler.handleIncomingRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26BB7CC78();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  sub_26BB603AC(&qword_28158B980, type metadata accessor for CancellableStocksKitServiceRequest);
  sub_26BB7CC68();
  v16 = v26;
  v25[2] = a2;
  sub_26BB60344(v13, v15, type metadata accessor for CancellableStocksKitServiceRequest);
  if (qword_28158B7C8 != -1)
  {
    swift_once();
  }

  v25[1] = qword_28158B7D0;
  sub_26BB6057C(v15, v10, type metadata accessor for CancellableStocksKitServiceRequest);
  sub_26BB5F770(v16, v29);
  v26 = v15;
  v17 = v28;
  (*(v28 + 16))(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v17 + 80) + v19 + 56) & ~*(v17 + 80);
  v21 = swift_allocObject();
  sub_26BB60344(v10, v21 + v18, type metadata accessor for CancellableStocksKitServiceRequest);
  v22 = v21 + v19;
  v23 = v29[1];
  *v22 = v29[0];
  *(v22 + 16) = v23;
  *(v22 + 32) = v29[2];
  *(v22 + 48) = v30;
  (*(v17 + 32))(v21 + v20, v6, v4);
  sub_26BB7CC48();

  return sub_26BB5FF08(v26, type metadata accessor for CancellableStocksKitServiceRequest);
}

uint64_t sub_26BB5B35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StocksKitServiceRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_26BB7BE78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v30[-v16];
  v18 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v30[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26BB6057C(a1, v21, type metadata accessor for CancellableStocksKitServiceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = (*(v11 + 32))(v15, v21, v10);
    v23 = *(a2 + 48);
    MEMORY[0x28223BE20](v22);
    *&v30[-16] = v15;
    os_unfair_lock_lock((v23 + 24));
    sub_26BB5FC58((v23 + 16));
    os_unfair_lock_unlock((v23 + 24));
    v17 = v15;
  }

  else
  {
    sub_26BB54250();
    v24 = a3;
    v26 = *(v25 + 48);
    (*(v11 + 32))(v17, v21, v10);
    v27 = sub_26BB60344(&v21[v26], v9, type metadata accessor for StocksKitServiceRequest);
    v28 = *(a2 + 48);
    MEMORY[0x28223BE20](v27);
    *&v30[-32] = v17;
    *&v30[-24] = v24;
    *&v30[-16] = v9;
    *&v30[-8] = a2;
    os_unfair_lock_lock((v28 + 24));
    sub_26BB5FC74((v28 + 16));
    os_unfair_lock_unlock((v28 + 24));
    sub_26BB5FF08(v9, type metadata accessor for StocksKitServiceRequest);
  }

  return (*(v11 + 8))(v17, v10);
}

uint64_t sub_26BB5B650(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a1;
  v38 = a5;
  v35 = a3;
  v36 = a4;
  v43 = a2;
  v40 = sub_26BB7BE78();
  v5 = *(v40 - 8);
  v37 = *(v5 + 64);
  MEMORY[0x28223BE20](v40);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v7;
  v8 = type metadata accessor for StocksKitServiceRequest(0);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26BB7CC78();
  v31 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB5FBA4(0, &qword_28158B258, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v31 - v16;
  v18 = sub_26BB7CEC8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v13, v35, v10);
  sub_26BB6057C(v36, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StocksKitServiceRequest);
  (*(v5 + 16))(v7, v43, v40);
  sub_26BB5F770(v38, v41);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v12 + *(v34 + 80) + v19) & ~*(v34 + 80);
  v21 = (v9 + *(v5 + 80) + v20) & ~*(v5 + 80);
  v22 = (v37 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v11 + 32))(v23 + v19, v13, v31);
  sub_26BB60344(v32, v23 + v20, type metadata accessor for StocksKitServiceRequest);
  (*(v5 + 32))(v23 + v21, v33, v40);
  v24 = v23 + v22;
  v25 = v41[1];
  *v24 = v41[0];
  *(v24 + 16) = v25;
  *(v24 + 32) = v41[2];
  *(v24 + 48) = v42;
  v26 = sub_26BB5CC08(0, 0, v17, &unk_26BB81228, v23);
  v27 = v39;
  v28 = *v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41[0] = *v27;
  result = sub_26BB66618(v26, v43, isUniquelyReferenced_nonNull_native);
  *v27 = *&v41[0];
  return result;
}

uint64_t sub_26BB5BA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_26BB7BE78();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v11 = type metadata accessor for StocksKitServiceRequest(0);
  v7[14] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB5BB7C, 0, 0);
}

uint64_t sub_26BB5BB7C()
{
  v55 = v0;
  v1 = *(v0 + 56);
  v2 = sub_26BB7CC38();
  v52 = v4;
  v53 = v3;
  v51 = v5;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 136);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = sub_26BB7CB88();
  __swift_project_value_buffer(v12, qword_28158F140);
  sub_26BB6057C(v11, v6, type metadata accessor for StocksKitServiceRequest);
  (*(v8 + 16))(v7, v10, v9);
  v13 = sub_26BB7CB68();
  v14 = sub_26BB7CF78();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 136);
  if (v15)
  {
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v19 = *(v0 + 112);
    v20 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54 = v50;
    *v20 = 136315650;
    sub_26BB6057C(v16, v17, type metadata accessor for StocksKitServiceRequest);
    sub_26BB6057C(v17, v18, type metadata accessor for StocksKitServiceRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v24 = *(v0 + 120);
    if (EnumCaseMultiPayload == 1)
    {
      sub_26BB5FF08(*(v0 + 128), type metadata accessor for StocksKitServiceRequest);
      sub_26BB5FF08(v22, type metadata accessor for StocksKitServiceRequest);
      sub_26BB5FF08(v24, type metadata accessor for DataSource.Logo);
      v25 = 0xE400000000000000;
      v26 = 1869049708;
    }

    else
    {
      sub_26BB53CA4();
      v49 = v2;
      v34 = *(v33 + 48);
      v25 = 0x800000026BB83500;
      sub_26BB5FF08(v23, type metadata accessor for StocksKitServiceRequest);
      sub_26BB5FF08(v22, type metadata accessor for StocksKitServiceRequest);
      v35 = v24 + v34;
      v2 = v49;
      sub_26BB5FF68(v35, &qword_28158BB50, MEMORY[0x277D858F8]);
      v26 = 0xD000000000000013;
    }

    v37 = *(v0 + 96);
    v36 = *(v0 + 104);
    v38 = *(v0 + 88);
    v39 = sub_26BB38238(v26, v25, &v54);

    *(v20 + 4) = v39;
    *(v20 + 12) = 2080;
    sub_26BB603AC(&qword_28158BB00, MEMORY[0x277CC95F0]);
    v40 = sub_26BB7D348();
    v42 = v41;
    (*(v37 + 8))(v36, v38);
    v43 = sub_26BB38238(v40, v42, &v54);

    *(v20 + 14) = v43;
    *(v20 + 22) = 1024;
    v31 = v52;
    v30 = v53;
    *(v0 + 152) = v2;
    *(v0 + 160) = v53;
    v32 = v51;
    *(v0 + 168) = v52;
    *(v0 + 176) = v51;
    *(v20 + 24) = audit_token_to_pid((v0 + 152));
    _os_log_impl(&dword_26BB21000, v13, v14, "XPC handling request %s with id: %s for pid: %d", v20, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v50, -1, -1);
    MEMORY[0x26D68EA90](v20, -1, -1);
  }

  else
  {
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = *(v0 + 88);

    (*(v28 + 8))(v27, v29);
    sub_26BB5FF08(v16, type metadata accessor for StocksKitServiceRequest);
    v31 = v52;
    v30 = v53;
    v32 = v51;
  }

  v44 = swift_task_alloc();
  *(v0 + 144) = v44;
  *v44 = v0;
  v44[1] = sub_26BB5BFFC;
  v45 = *(v0 + 72);
  v46 = *(v0 + 80);
  v47 = *(v0 + 64);

  return sub_26BB5C270(v0 + 16, v47, v45, v2, v30, v31, v32, v0 + 184);
}

uint64_t sub_26BB5BFFC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v6 = *v1;

  if (v0)
  {
    *(v2 + 185) = *(v2 + 184);
    v4 = sub_26BB5C114;
  }

  else
  {
    v4 = sub_26BB5C1B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BB5C114()
{
  v1 = *(v0 + 80);
  sub_26BB5D5B0(*(v0 + 185) | 0x100, *(v0 + 56));
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26BB5C1B4()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  sub_26BB5D470(v5, v2, v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v9 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BB5C270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v8;
  v9[11] = a8;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;
  v10 = sub_26BB7BE78();
  v9[12] = v10;
  v11 = *(v10 - 8);
  v9[13] = v11;
  v12 = *(v11 + 64) + 15;
  v9[14] = swift_task_alloc();
  v9[15] = swift_task_alloc();
  v13 = sub_26BB7CE88();
  v9[16] = v13;
  v14 = *(v13 - 8);
  v9[17] = v14;
  v15 = *(v14 + 64) + 15;
  v9[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB5C3A8, 0, 0);
}

uint64_t sub_26BB5C3A8()
{
  if (qword_28158B800 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v3;
  *(v0 + 208) = 0;
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D85A70] + 4);
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  sub_26BB3D480(0, &qword_28158B280);
  *v6 = v0;
  v6[1] = sub_26BB5C51C;
  v7 = *(v0 + 24);

  return MEMORY[0x282200908](v7, v0 + 176, &unk_26BB81240, v4, 0, 0, 0xD00000000000001BLL, 0x800000026BB836C0);
}

uint64_t sub_26BB5C51C()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *v1;
  v4[21] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB5C698, 0, 0);
  }

  else
  {
    v5 = v4[18];
    v6 = v4[14];
    v7 = v4[15];

    v8 = v4[1];

    return v8();
  }
}

uint64_t sub_26BB5C698()
{
  v60 = v0;
  v1 = *(v0 + 168);
  *(v0 + 16) = v1;
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = v1;
  sub_26BB3D480(0, &qword_28158BB40);
  if (swift_dynamicCast())
  {

    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 120);
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = *(v0 + 40);
    v9 = sub_26BB7CB88();
    __swift_project_value_buffer(v9, qword_28158F140);
    (*(v7 + 16))(v5, v8, v6);
    v10 = sub_26BB7CB68();
    v11 = sub_26BB7CF68();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 120);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v16 = 136315138;
      sub_26BB603AC(&qword_28158BB00, MEMORY[0x277CC95F0]);
      v17 = sub_26BB7D348();
      v19 = v18;
      (*(v14 + 8))(v13, v15);
      v20 = sub_26BB38238(v17, v19, &v59);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_26BB21000, v10, v11, "Request cancelled in XPC for id: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x26D68EA90](v57, -1, -1);
      MEMORY[0x26D68EA90](v16, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v41 = *(v0 + 136);
    v40 = *(v0 + 144);
    v42 = *(v0 + 128);
    v43 = 2;
    *(v0 + 210) = 2;
    sub_26BB56CE8();
    swift_willThrowTypedImpl();
    (*(v41 + 8))(v40, v42);
    v44 = *(v0 + 16);
  }

  else
  {

    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 168);
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    v24 = *(v0 + 96);
    v25 = *(v0 + 40);
    v26 = sub_26BB7CB88();
    __swift_project_value_buffer(v26, qword_28158F140);
    (*(v23 + 16))(v22, v25, v24);
    v27 = v21;
    v28 = sub_26BB7CB68();
    v29 = sub_26BB7CF68();

    if (os_log_type_enabled(v28, v29))
    {
      v56 = *(v0 + 168);
      v31 = *(v0 + 104);
      v30 = *(v0 + 112);
      v32 = *(v0 + 96);
      v33 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = v58;
      *v33 = 136315394;
      sub_26BB603AC(&qword_28158BB00, MEMORY[0x277CC95F0]);
      v34 = sub_26BB7D348();
      v36 = v35;
      (*(v31 + 8))(v30, v32);
      v37 = sub_26BB38238(v34, v36, &v59);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2114;
      v38 = v56;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v39;
      *v55 = v39;
      _os_log_impl(&dword_26BB21000, v28, v29, "Request failed in XPC for id: %s, error: %{public}@", v33, 0x16u);
      sub_26BB5FF08(v55, sub_26BB3B3EC);
      MEMORY[0x26D68EA90](v55, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x26D68EA90](v58, -1, -1);
      MEMORY[0x26D68EA90](v33, -1, -1);
    }

    else
    {
      v46 = *(v0 + 104);
      v45 = *(v0 + 112);
      v47 = *(v0 + 96);

      (*(v46 + 8))(v45, v47);
    }

    v48 = *(v0 + 168);
    v43 = 1;
    *(v0 + 209) = 1;
    sub_26BB56CE8();
    swift_willThrowTypedImpl();
    v44 = v48;
  }

  v49 = *(v0 + 144);
  v50 = *(v0 + 112);
  v51 = *(v0 + 120);
  v52 = *(v0 + 88);

  *v52 = v43;
  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_26BB5CC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26BB5FBA4(0, &qword_28158B258, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_26BB5FE74(a3, v24 - v10);
  v12 = sub_26BB7CEC8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26BB5FF68(v11, &qword_28158B258, MEMORY[0x277D85720]);
  }

  else
  {
    sub_26BB7CEB8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26BB7CE48();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26BB7CD78() + 32;

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

      sub_26BB5FF68(a3, &qword_28158B258, MEMORY[0x277D85720]);

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

  sub_26BB5FF68(a3, &qword_28158B258, MEMORY[0x277D85720]);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_26BB5CEEC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_26BB7BE78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v9 = sub_26BB7CB88();
  __swift_project_value_buffer(v9, qword_28158F140);
  (*(v5 + 16))(v8, a2, v4);
  v10 = sub_26BB7CB68();
  v11 = sub_26BB7CF78();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = a1;
    v13 = v12;
    v25 = swift_slowAlloc();
    v28 = v25;
    *v13 = 136315138;
    sub_26BB603AC(&qword_28158BB00, MEMORY[0x277CC95F0]);
    v14 = sub_26BB7D348();
    v27 = a2;
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_26BB38238(v14, v16, &v28);
    a2 = v27;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_26BB21000, v10, v11, "XPC handling cancel request with id: %s", v13, 0xCu);
    v18 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x26D68EA90](v18, -1, -1);
    v19 = v13;
    a1 = v26;
    MEMORY[0x26D68EA90](v19, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v20 = *a1;
  if (*(*a1 + 16))
  {
    v21 = sub_26BB63908(a2);
    if (v22)
    {
      v23 = *(*(v20 + 56) + 8 * v21);
      sub_26BB3D480(0, &qword_28158BB40);

      sub_26BB7CED8();
    }
  }
}

void PeerHandler.handleCancellation(error:)(uint64_t a1)
{
  v2 = sub_26BB7CC28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v7 = sub_26BB7CB88();
  __swift_project_value_buffer(v7, qword_28158F140);
  v8 = *(v3 + 16);
  v8(v6, a1, v2);
  v9 = sub_26BB7CB68();
  v10 = sub_26BB7CF78();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_26BB603AC(&qword_28158B998, MEMORY[0x277D855E8]);
    swift_allocError();
    v8(v13, v6, v2);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v6, v2);
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_26BB21000, v9, v10, "XPC received cancellation because error: %@", v11, 0xCu);
    sub_26BB5FF08(v12, sub_26BB3B3EC);
    MEMORY[0x26D68EA90](v12, -1, -1);
    MEMORY[0x26D68EA90](v11, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_26BB5D470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26BB56CE8();
  v8 = type metadata accessor for StocksKitServiceResult();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  (*(*(a3 - 8) + 16))(&v14 - v11, a1, a3);
  swift_storeEnumTagMultiPayload();
  sub_26BB5D99C(v12, a2, a3, a4);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26BB5D5B0(__int16 a1, uint64_t a2)
{
  v4 = sub_26BB7CC88();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BB7CCB8();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26BB7CC78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  if (qword_28158B7C8 != -1)
  {
    swift_once();
  }

  v21 = qword_28158B7D0;
  (*(v13 + 16))(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
  v27 = HIBYTE(a1) & 1;
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = swift_allocObject();
  (*(v13 + 32))(v16 + v15, &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v17 = (v16 + v15 + v14);
  *v17 = a1;
  v17[1] = v27;
  aBlock[4] = sub_26BB600E4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BB3805C;
  aBlock[3] = &block_descriptor_14;
  v18 = _Block_copy(aBlock);
  sub_26BB7CC98();
  v25 = MEMORY[0x277D84F90];
  sub_26BB603AC(&qword_28158B990, MEMORY[0x277D85198]);
  v19 = MEMORY[0x277D85198];
  sub_26BB5FBA4(0, &qword_28158B270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_26BB603F4(&qword_28158B268, &qword_28158B270, v19);
  sub_26BB7D028();
  MEMORY[0x26D68DED0](0, v11, v7, v18);
  _Block_release(v18);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_26BB5D99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v32 = a1;
  v6 = sub_26BB7CC88();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26BB7CCB8();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB56CE8();
  v33 = a3;
  v13 = type metadata accessor for StocksKitServiceResult();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = sub_26BB7CC78();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158B7C8 != -1)
  {
    swift_once();
  }

  v31 = qword_28158B7D0;
  (*(v19 + 16))(&v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v18);
  (*(v14 + 16))(v17, v32, v13);
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = (v20 + v22 + *(v14 + 80)) & ~*(v14 + 80);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 16) = v33;
  *(v24 + 24) = v25;
  (*(v19 + 32))(v24 + v22, v21, v18);
  (*(v14 + 32))(v24 + v23, v17, v13);
  aBlock[4] = sub_26BB5FFD8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BB3805C;
  aBlock[3] = &block_descriptor_0;
  v26 = _Block_copy(aBlock);
  sub_26BB7CC98();
  v40 = MEMORY[0x277D84F90];
  sub_26BB603AC(&qword_28158B990, MEMORY[0x277D85198]);
  v27 = MEMORY[0x277D85198];
  sub_26BB5FBA4(0, &qword_28158B270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_26BB603F4(&qword_28158B268, &qword_28158B270, v27);
  v28 = v37;
  v29 = v39;
  sub_26BB7D028();
  MEMORY[0x26D68DED0](0, v12, v28, v26);
  _Block_release(v26);
  (*(v38 + 8))(v28, v29);
  (*(v35 + 8))(v12, v36);
}

uint64_t sub_26BB5DE64()
{
  sub_26BB56CE8();
  type metadata accessor for StocksKitServiceResult();
  sub_26BB5F71C();
  swift_getWitnessTable();
  return sub_26BB7CC58();
}

uint64_t sub_26BB5DEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v3[12] = v4;
  v3[13] = *(v4 + 64);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB5DFC4, 0, 0);
}

uint64_t sub_26BB5DFC4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  sub_26BB5F770(*(v0 + 80), v0 + 16);
  sub_26BB6057C(v3, v1, type metadata accessor for StocksKitServiceRequest);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 120) = v6;
  v7 = *(v0 + 32);
  *(v6 + 16) = *(v0 + 16);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v0 + 48);
  *(v6 + 64) = *(v0 + 64);
  sub_26BB60344(v1, v6 + v5, type metadata accessor for StocksKitServiceRequest);
  v8 = *(MEMORY[0x277D6CDA8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  v10 = sub_26BB3D480(0, &qword_28158B280);
  *v9 = v0;
  v9[1] = sub_26BB5E12C;
  v11 = *(v0 + 72);

  return MEMORY[0x2821D20A8](v11, &unk_26BB81250, v6, v10);
}

uint64_t sub_26BB5E12C()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB5E274, 0, 0);
  }

  else
  {
    v5 = v3[14];
    v4 = v3[15];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_26BB5E274()
{
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_26BB5E2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BB3BA30;

  return sub_26BB5E390(a1, a3);
}

uint64_t sub_26BB5E390(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = *(*(type metadata accessor for DataSource.Logo(0) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v5 = type metadata accessor for CurrencyConversionsResult();
  v3[22] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  sub_26BB5FBA4(0, &qword_28158BB50, MEMORY[0x277D858F8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v9 = type metadata accessor for StocksKitServiceRequest(0);
  v3[25] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB5E4E0, 0, 0);
}

uint64_t sub_26BB5E4E0()
{
  v1 = *(v0 + 200);
  sub_26BB6057C(*(v0 + 152), *(v0 + 208), type metadata accessor for StocksKitServiceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 208);
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    sub_26BB53D2C();
    v6 = *(v2 + *(v5 + 48));
    sub_26BB60344(v2, v3, type metadata accessor for DataSource.Logo);
    v7 = v4[4];
    v8 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v7);
    *(v0 + 136) = v6;
    v9 = *(v8 + 8);
    v31 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 232) = v11;
    *v11 = v0;
    v11[1] = sub_26BB5EA24;
    v12 = *(v0 + 168);
    v13 = v0 + 16;
    v14 = v0 + 136;
    v15 = v7;
    v16 = v8;
    v17 = v31;
  }

  else
  {
    v18 = *(v0 + 208);
    v19 = *(v0 + 192);
    v20 = *(v0 + 160);
    v21 = *v18;
    v22 = v18[1];
    v23 = *(v18 + 16);
    sub_26BB53CA4();
    sub_26BB580FC(v18 + *(v24 + 48), v19);
    v25 = v20[4];
    v26 = v20[5];
    __swift_project_boxed_opaque_existential_1(v20 + 1, v25);
    *(v0 + 112) = v21;
    *(v0 + 120) = v22;
    *(v0 + 128) = v23;
    v27 = *(v26 + 16);
    v32 = (v27 + *v27);
    v28 = v27[1];
    v29 = swift_task_alloc();
    *(v0 + 216) = v29;
    *v29 = v0;
    v29[1] = sub_26BB5E7F0;
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    v12 = v0 + 112;
    v15 = v25;
    v16 = v26;
    v17 = v32;
  }

  return v17(v13, v12, v14, v15, v16);
}

uint64_t sub_26BB5E7F0()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_26BB5EC2C;
  }

  else
  {
    v3 = sub_26BB5E904;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BB5E904()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[18];
  v3[3] = v0[22];
  v3[4] = sub_26BB603AC(&qword_28158BCE0, type metadata accessor for CurrencyConversionsResult);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  sub_26BB60344(v1, boxed_opaque_existential_1, type metadata accessor for CurrencyConversionsResult);
  sub_26BB5FF68(v2, &qword_28158BB50, MEMORY[0x277D858F8]);
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[21];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26BB5EA24()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_26BB5ECDC;
  }

  else
  {
    v3 = sub_26BB5EB38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BB5EB38()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v2[3] = &type metadata for DataSource.DownloadedLogo;
  v2[4] = sub_26BB602F0();
  v3 = swift_allocObject();
  *v2 = v3;
  v4 = *(v0 + 32);
  v3[1] = *(v0 + 16);
  v3[2] = v4;
  v5 = *(v0 + 64);
  v3[3] = *(v0 + 48);
  v3[4] = v5;
  v6 = *(v0 + 96);
  v3[5] = *(v0 + 80);
  v3[6] = v6;
  sub_26BB5FF08(v1, type metadata accessor for DataSource.Logo);
  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v10 = *(v0 + 168);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BB5EC2C()
{
  sub_26BB5FF68(v0[24], &qword_28158BB50, MEMORY[0x277D858F8]);
  v1 = v0[28];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BB5ECDC()
{
  sub_26BB5FF08(v0[21], type metadata accessor for DataSource.Logo);
  v1 = v0[30];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BB5EDA0()
{
  sub_26BB5FBA4(0, &qword_28158B0C0, sub_26BB5FC08, MEMORY[0x277D85A78]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26BB7D5C8();
  qword_28158F130 = result;
  return result;
}

uint64_t sub_26BB5EE2C(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_26BB5F638();
  sub_26BB5F69C();
  return sub_26BB7CC58();
}

unint64_t sub_26BB5EE84(uint64_t a1)
{
  sub_26BB5F944();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_26BB5F9D0();
    v9 = sub_26BB7D1D8();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_26BB6057C(v11, v7, sub_26BB5F944);
      result = sub_26BB637DC(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = type metadata accessor for Currency();
      result = sub_26BB60344(v7, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for Currency);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_26BB5F054(uint64_t a1)
{
  sub_26BB5FA98();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_26BB5FB00(0, &qword_28158B1E8, MEMORY[0x277D84460]);
    v9 = sub_26BB7D1D8();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_26BB6057C(v11, v7, sub_26BB5FA98);
      result = sub_26BB637DC(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = type metadata accessor for Currency();
      result = sub_26BB60344(v7, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for Currency);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_26BB5F240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_26BB605E4();
    v3 = sub_26BB7D1D8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26BB63890(v5, v6);
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

unint64_t sub_26BB5F348(uint64_t a1)
{
  sub_26BB60458();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_26BB604C8(0, &qword_28158B1F8, MEMORY[0x277D84460]);
    v9 = sub_26BB7D1D8();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_26BB6057C(v11, v7, sub_26BB60458);
      result = sub_26BB63908(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_26BB7BE78();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

void sub_26BB5F538()
{
  if (!qword_28158B218)
  {
    sub_26BB604C8(255, &qword_28158B2A8, MEMORY[0x277D834F8]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_26BB7D0F8();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B218);
    }
  }
}

void sub_26BB5F5BC()
{
  if (!qword_28158B250)
  {
    sub_26BB3D480(255, &qword_28158BB40);
    v0 = sub_26BB7CEE8();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B250);
    }
  }
}

void sub_26BB5F638()
{
  if (!qword_28158B8D0)
  {
    sub_26BB56CE8();
    v0 = type metadata accessor for StocksKitServiceResult();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B8D0);
    }
  }
}

unint64_t sub_26BB5F69C()
{
  result = qword_28158B8D8;
  if (!qword_28158B8D8)
  {
    sub_26BB5F638();
    sub_26BB5F71C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B8D8);
  }

  return result;
}

unint64_t sub_26BB5F71C()
{
  result = qword_28158C1F8[0];
  if (!qword_28158C1F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28158C1F8);
  }

  return result;
}

uint64_t sub_26BB5F7A8()
{
  v1 = *(type metadata accessor for CancellableStocksKitServiceRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_26BB7CC78() - 8);
  v5 = v0 + ((v3 + *(v4 + 80) + 56) & ~*(v4 + 80));

  return sub_26BB5B35C(v0 + v2, v0 + v3, v5);
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

uint64_t sub_26BB5F8A0(uint64_t *a1, int a2)
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

uint64_t sub_26BB5F8E8(uint64_t result, int a2, int a3)
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

void sub_26BB5F944()
{
  if (!qword_28158B2B8)
  {
    type metadata accessor for Currency();
    sub_26BB5FB00(255, &qword_28158BBB8, MEMORY[0x277D834F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28158B2B8);
    }
  }
}

void sub_26BB5F9D0()
{
  if (!qword_28158B1F0)
  {
    type metadata accessor for Currency();
    sub_26BB5FB00(255, &qword_28158BBB8, MEMORY[0x277D834F8]);
    sub_26BB603AC(qword_28158BC38, type metadata accessor for Currency);
    v0 = sub_26BB7D1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B1F0);
    }
  }
}

void sub_26BB5FA98()
{
  if (!qword_28158B2B0)
  {
    type metadata accessor for Currency();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28158B2B0);
    }
  }
}

void sub_26BB5FB00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Currency();
    v7 = sub_26BB603AC(qword_28158BC38, type metadata accessor for Currency);
    v8 = a3(a1, v6, MEMORY[0x277D839F8], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26BB5FBA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26BB5FC08()
{
  if (!qword_28158B7F8)
  {
    v0 = sub_26BB7CFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B7F8);
    }
  }
}

uint64_t sub_26BB5FC94(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26BB7CC78() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_26BB7BE78() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_26BB3BA30;

  return sub_26BB5BA70(a1, v14, v15, v1 + v6, v1 + v9, v1 + v12, v1 + v13);
}

uint64_t sub_26BB5FE74(uint64_t a1, uint64_t a2)
{
  sub_26BB5FBA4(0, &qword_28158B258, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB5FF08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BB5FF68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB5FBA4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26BB5FFD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(sub_26BB7CC78() - 8);
  v4 = ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 64);
  sub_26BB56CE8();
  v5 = *(*(type metadata accessor for StocksKitServiceResult() - 8) + 80);

  return sub_26BB5DE64();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BB600E4()
{
  v1 = *(sub_26BB7CC78() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = (v2 + *(v1 + 64));

  return sub_26BB5EE2C(v2, v3);
}

uint64_t sub_26BB60164(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BB3BF24;

  return sub_26BB5DEFC(a1, v5, v4);
}

uint64_t sub_26BB60210(uint64_t a1)
{
  v4 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BB3BF24;

  return sub_26BB5E2E0(a1, v1 + 16, v1 + v5);
}

unint64_t sub_26BB602F0()
{
  result = qword_28043A338;
  if (!qword_28043A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A338);
  }

  return result;
}

uint64_t sub_26BB60344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB603AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BB603F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_26BB5FBA4(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26BB60458()
{
  if (!qword_28158BAF8)
  {
    sub_26BB7BE78();
    sub_26BB5F5BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28158BAF8);
    }
  }
}

void sub_26BB604C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_26BB7BE78();
    sub_26BB5F5BC();
    v8 = v7;
    v9 = sub_26BB603AC(&qword_28158BB10, MEMORY[0x277CC95F0]);
    v10 = a3(a1, v6, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_26BB6057C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_26BB605E4()
{
  if (!qword_28043A340)
  {
    v0 = sub_26BB7D1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A340);
    }
  }
}

uint64_t sub_26BB60648@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v2 = sub_26BB7BEF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB60D78();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB60DDC();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = sub_26BB7BFA8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7BF18();
  sub_26BB7BF08();
  (*(v22 + 8))(v25, v21);
  sub_26BB7BEE8();
  (*(v3 + 56))(v18, 0, 1, v2);
  v26 = *(v7 + 56);
  sub_26BB60E34(v20, v10);
  sub_26BB60E34(v18, &v10[v26]);
  v27 = *(v3 + 48);
  if (v27(v10, 1, v2) == 1)
  {
    sub_26BB60E98(v18, sub_26BB60DDC);
    sub_26BB60E98(v20, sub_26BB60DDC);
    if (v27(&v10[v26], 1, v2) == 1)
    {
      sub_26BB60E98(v10, sub_26BB60DDC);
LABEL_11:
      v32 = sub_26BB7C4D8();
      v39 = *(v32 + 48);
      v40 = *(v32 + 52);
      swift_allocObject();
      result = sub_26BB7C4C8();
      v35 = MEMORY[0x277D69758];
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_26BB60E34(v10, v15);
  if (v27(&v10[v26], 1, v2) == 1)
  {
    sub_26BB60E98(v18, sub_26BB60DDC);
    sub_26BB60E98(v20, sub_26BB60DDC);
    (*(v3 + 8))(v15, v2);
LABEL_6:
    sub_26BB60E98(v10, sub_26BB60D78);
    goto LABEL_7;
  }

  v36 = v43;
  (*(v3 + 32))(v43, &v10[v26], v2);
  sub_26BB60EF8();
  v37 = sub_26BB7CD28();
  v38 = *(v3 + 8);
  v38(v36, v2);
  sub_26BB60E98(v18, sub_26BB60DDC);
  sub_26BB60E98(v20, sub_26BB60DDC);
  v38(v15, v2);
  sub_26BB60E98(v10, sub_26BB60DDC);
  if (v37)
  {
    goto LABEL_11;
  }

LABEL_7:
  v28 = v44;
  v29 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  sub_26BB3D480(0, &qword_28043A350);
  result = sub_26BB7C8C8();
  if (v47)
  {
    v31 = v28[4];
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_26BB3D480(0, &qword_28043A358);
    result = sub_26BB7C8C8();
    if (v46)
    {
      v32 = sub_26BB7C3A8();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      result = sub_26BB7C398();
      v35 = MEMORY[0x277D695F0];
LABEL_12:
      v41 = v45;
      v45[3] = v32;
      v41[4] = v35;
      *v41 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BB60BC0()
{
  v0 = sub_26BB7CA18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7C918();
  sub_26BB3D480(0, &qword_28158BA88);
  sub_26BB7C988();

  (*(v1 + 104))(v4, *MEMORY[0x277D6CF10], v0);
  sub_26BB7C858();

  (*(v1 + 8))(v4, v0);
  sub_26BB7C918();
  sub_26BB7C228();
  sub_26BB7C988();
}

void sub_26BB60D78()
{
  if (!qword_28043A348)
  {
    sub_26BB60DDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28043A348);
    }
  }
}

void sub_26BB60DDC()
{
  if (!qword_280439F88)
  {
    sub_26BB7BEF8();
    v0 = sub_26BB7CFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_280439F88);
    }
  }
}

uint64_t sub_26BB60E34(uint64_t a1, uint64_t a2)
{
  sub_26BB60DDC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB60E98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26BB60EF8()
{
  result = qword_28043A360;
  if (!qword_28043A360)
  {
    sub_26BB7BEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A360);
  }

  return result;
}

uint64_t sub_26BB60F50()
{
  v0 = sub_26BB7CB88();
  __swift_allocate_value_buffer(v0, qword_28158F140);
  __swift_project_value_buffer(v0, qword_28158F140);
  return sub_26BB7CB78();
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

uint64_t Currency.codingKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = _s9StocksKit8CurrencyV10identifierSSvg_0();
  v4 = v3;
  a1[3] = &type metadata for Currency.StringCodingKey;
  a1[4] = sub_26BB610B4();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

unint64_t sub_26BB610B4()
{
  result = qword_28158B2D0;
  if (!qword_28158B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B2D0);
  }

  return result;
}

uint64_t Currency.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Currency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7D598();
  _s9StocksKit8CurrencyVyACSScfC_0();
  (*(*(a2 - 8) + 8))(a1, a2);
  sub_26BB61284(v10, a3);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t type metadata accessor for Currency()
{
  result = qword_28158BC20;
  if (!qword_28158BC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BB61284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Currency();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB612E8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_26BB61318@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_26BB6132C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void sub_26BB61338(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_26BB61348(uint64_t a1)
{
  v2 = sub_26BB610B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB61384(uint64_t a1)
{
  v2 = sub_26BB610B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB613DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB61464(uint64_t a1)
{
  v2 = sub_26BB61688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB614A0(uint64_t a1)
{
  v2 = sub_26BB61688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Currency.encode(to:)(void *a1)
{
  sub_26BB67510(0, &qword_28043A368, sub_26BB61688, &type metadata for Currency.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB61688();
  sub_26BB7D488();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28043A378, MEMORY[0x277CC9720]);
  sub_26BB7D328();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26BB61688()
{
  result = qword_28043A370;
  if (!qword_28043A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A370);
  }

  return result;
}

uint64_t Currency.hash(into:)()
{
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720]);

  return sub_26BB7CCF8();
}

uint64_t Currency.hashValue.getter()
{
  sub_26BB7D418();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720]);
  sub_26BB7CCF8();
  return sub_26BB7D458();
}

uint64_t Currency.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_26BB7BF48();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB67510(0, &qword_28043A380, sub_26BB61688, &type metadata for Currency.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v21 = *(v6 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Currency();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB61688();
  v16 = v24;
  sub_26BB7D478();
  if (!v16)
  {
    v17 = v21;
    v18 = v22;
    sub_26BB680AC(&qword_28043A388, MEMORY[0x277CC9720]);
    sub_26BB7D288();
    (*(v17 + 8))(v10, v7);
    (*(v18 + 32))(v14, v23, v3);
    sub_26BB61284(v14, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_26BB61AB0()
{
  sub_26BB7D418();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720]);
  sub_26BB7CCF8();
  return sub_26BB7D458();
}

uint64_t sub_26BB61B38()
{
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720]);

  return sub_26BB7CCF8();
}

uint64_t sub_26BB61BBC()
{
  sub_26BB7D418();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720]);
  sub_26BB7CCF8();
  return sub_26BB7D458();
}

uint64_t sub_26BB61C58(void *a1)
{
  sub_26BB67510(0, &qword_28043A368, sub_26BB61688, &type metadata for Currency.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB61688();
  sub_26BB7D488();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28043A378, MEMORY[0x277CC9720]);
  sub_26BB7D328();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26BB61E04@<X0>(uint64_t *a1@<X8>)
{
  v2 = _s9StocksKit8CurrencyV10identifierSSvg_0();
  v4 = v3;
  a1[3] = &type metadata for Currency.StringCodingKey;
  a1[4] = sub_26BB610B4();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t CurrencyConversions.conversionRate(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Currency();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v35 = *v2;
  v12 = sub_26BB621E4(a1, a2);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v13 = sub_26BB7CB88();
  __swift_project_value_buffer(v13, qword_28158F140);
  sub_26BB67C60(a1, v11, type metadata accessor for Currency);
  sub_26BB67C60(a2, v9, type metadata accessor for Currency);

  v14 = sub_26BB7CB68();
  v15 = sub_26BB7CF78();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136446722;
    v18 = _s9StocksKit8CurrencyV10identifierSSvg_0();
    v20 = v19;
    sub_26BB67CC8(v11, type metadata accessor for Currency);
    v21 = sub_26BB38238(v18, v20, &v35);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v22 = _s9StocksKit8CurrencyV10identifierSSvg_0();
    v24 = v23;
    sub_26BB67CC8(v9, type metadata accessor for Currency);
    v25 = sub_26BB38238(v22, v24, &v35);

    *(v16 + 14) = v25;
    *(v16 + 22) = 2082;
    v26 = sub_26BB67178(v12);
    v28 = sub_26BB38238(v26, v27, &v35);

    *(v16 + 24) = v28;
    _os_log_impl(&dword_26BB21000, v14, v15, "Converting %{public}s -> %{public}s: %{public}s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v17, -1, -1);
    MEMORY[0x26D68EA90](v16, -1, -1);

    if (v12)
    {
      goto LABEL_5;
    }

    return 0;
  }

  sub_26BB67CC8(v9, type metadata accessor for Currency);
  sub_26BB67CC8(v11, type metadata accessor for Currency);
  if (!v12)
  {
    return 0;
  }

LABEL_5:
  v29 = *(v12 + 16);
  if (v29)
  {
    v30 = (v12 + 40);
    v31 = 1.0;
    do
    {
      v32 = *(v30 - 1);
      if (*v30)
      {
        v31 = v31 / v32;
      }

      else
      {
        v31 = v31 * v32;
      }

      v30 += 2;
      --v29;
    }

    while (v29);

    return *&v31;
  }

  else
  {

    return 0x3FF0000000000000;
  }
}

uint64_t sub_26BB621E4(uint64_t a1, uint64_t a2)
{
  sub_26BB680F4(0, &qword_28043A3D8, sub_26BB67F08, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - v7;
  sub_26BB5FA98();
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Currency();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v2;
  if (!*(*v2 + 16))
  {
    goto LABEL_23;
  }

  v19 = *v2;
  v20 = sub_26BB637DC(a2);
  if (v21)
  {
    v22 = *(*(v18 + 56) + 8 * v20);
    v23 = *(v22 + 16);

    if (v23)
    {

      v24 = sub_26BB637DC(a1);
      v26 = v25;

      if (v26)
      {
        v27 = *(*(v22 + 56) + 8 * v24);

        sub_26BB681B0(0, &qword_28043A3E8, &type metadata for CurrencyConversions.ConversionStep, MEMORY[0x277D84560]);
        result = swift_allocObject();
        *(result + 16) = xmmword_26BB7FDA0;
        *(result + 32) = v27;
        *(result + 40) = 0;
        return result;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  if (*(v18 + 16) && (v29 = sub_26BB637DC(a1), (v30 & 1) != 0))
  {
    v31 = *(*(v18 + 56) + 8 * v29);
    v32 = *(v31 + 16);

    if (v32)
    {

      v33 = sub_26BB637DC(a2);
      v35 = v34;

      if (v35)
      {

        v36 = *(*(v31 + 56) + 8 * v33);

        sub_26BB681B0(0, &qword_28043A3E8, &type metadata for CurrencyConversions.ConversionStep, MEMORY[0x277D84560]);
        result = swift_allocObject();
        *(result + 16) = xmmword_26BB7FDA0;
        *(result + 32) = v36;
        *(result + 40) = 1;
        return result;
      }
    }
  }

  else
  {
    v31 = 0;
  }

  if (!v22)
  {
    goto LABEL_23;
  }

  sub_26BB6265C(v37, v8);

  sub_26BB67F08();
  v39 = v38;
  if ((*(*(v38 - 8) + 48))(v8, 1, v38) == 1)
  {
    sub_26BB67F74(v8);
  }

  else
  {
    v40 = *&v8[*(v39 + 48)];
    v41 = *(v10 + 48);
    sub_26BB61284(v8, v13);
    *&v13[v41] = v40;
    v42 = *&v13[*(v10 + 48)];
    sub_26BB61284(v13, v17);
    if (v31)
    {
      if (*(v31 + 16))
      {

        v43 = sub_26BB637DC(v17);
        v45 = v44;

        if (v45)
        {

          v46 = *(*(v31 + 56) + 8 * v43);

          sub_26BB681B0(0, &qword_28043A3E8, &type metadata for CurrencyConversions.ConversionStep, MEMORY[0x277D84560]);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_26BB7EC90;
          *(v47 + 32) = v42;
          *(v47 + 40) = 0;
          *(v47 + 48) = v46;
          *(v47 + 56) = 1;
          sub_26BB67CC8(v17, type metadata accessor for Currency);
          return v47;
        }
      }
    }

    sub_26BB67CC8(v17, type metadata accessor for Currency);
  }

  if (v31)
  {
LABEL_23:
  }

  return 0;
}

uint64_t sub_26BB6265C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26BB67F08();
  v5 = v4;
  v16 = *(v4 - 8);
  v6 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(a1 + 32);
  v10 = sub_26BB7D038();
  if (v10 == 1 << *(a1 + 32))
  {
    v11 = *(v16 + 56);

    return v11(a2, 1, 1, v5);
  }

  else
  {
    sub_26BB670BC(v8, v10, *(a1 + 36), 0, a1);
    v14 = v13;
    sub_26BB61284(v8, a2);
    *(a2 + *(v5 + 48)) = v14;
    return (*(v16 + 56))(a2, 0, 1, v5);
  }
}

uint64_t sub_26BB627D8(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 8239;
  }

  else
  {
    v2 = 8234;
  }

  MEMORY[0x26D68DCA0](v2, 0xE200000000000000);
  sub_26BB7CF08();
  return 0;
}

uint64_t sub_26BB62884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69737265766E6F63 && a2 == 0xEF6F547942736E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB62914(uint64_t a1)
{
  v2 = sub_26BB67324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB62950(uint64_t a1)
{
  v2 = sub_26BB67324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CurrencyConversions.encode(to:)(void *a1)
{
  sub_26BB67510(0, &qword_28158B0F0, sub_26BB67324, &type metadata for CurrencyConversions.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB67324();

  sub_26BB7D488();
  v12[3] = v9;
  sub_26BB67D28(0, qword_28158BBC0, MEMORY[0x277D834F8]);
  sub_26BB67378();
  sub_26BB7D328();

  return (*(v5 + 8))(v8, v4);
}

uint64_t CurrencyConversions.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  sub_26BB67510(0, &qword_28158B170, sub_26BB67324, &type metadata for CurrencyConversions.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB67324();
  sub_26BB7D478();
  if (!v2)
  {
    v11 = v14;
    sub_26BB67D28(0, qword_28158BBC0, MEMORY[0x277D834F8]);
    sub_26BB67578();
    sub_26BB7D288();
    (*(v6 + 8))(v9, v5);
    *v11 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_26BB62D54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_26BB5FA98();
  v107 = v4;
  v106 = *(v4 - 8);
  v5 = *(v106 + 64);
  MEMORY[0x28223BE20](v4);
  v105 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Currency();
  v110 = *(v104 - 8);
  v7 = *(v110 + 64);
  v8 = MEMORY[0x28223BE20](v104);
  v109 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v112 = &v103 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v103 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v125 = &v103 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v120 = &v103 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v121 = &v103 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v124 = (&v103 - v22);
  MEMORY[0x28223BE20](v21);
  v111 = &v103 - v23;
  v119 = sub_26BB7C328();
  v24 = *(v119 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v119);
  v118 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_26BB5EE84(MEMORY[0x277D84F90]);
  v127 = MEMORY[0x277D84FA0];
  v117 = *(a1 + 16);
  if (v117)
  {
    v108 = a2;
    v28 = 0;
    v29 = 0;
    v116 = a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v114 = v24 + 8;
    v115 = v24 + 16;
    v113 = a1;
    v30 = v118;
    while (1)
    {
      if (v29 >= *(a1 + 16))
      {
        goto LABEL_43;
      }

      v35 = *(v24 + 72);
      v122 = v29;
      v123 = v28;
      v36 = v116 + v35 * v29;
      v37 = v119;
      (*(v24 + 16))(v30, v36, v119);
      sub_26BB7C308();
      v38 = v24;
      v39 = v27;
      v40 = v124;
      _s9StocksKit8CurrencyVyACSScfC_0();
      v41 = v120;
      sub_26BB67C60(v40, v120, type metadata accessor for Currency);
      v42 = v121;
      sub_26BB64518(v121, v41);
      sub_26BB67CC8(v42, type metadata accessor for Currency);
      sub_26BB7C2F8();
      v43 = v125;
      _s9StocksKit8CurrencyVyACSScfC_0();
      v44 = v40;
      v27 = v39;
      v24 = v38;
      v45 = v14;
      sub_26BB67C60(v44, v14, type metadata accessor for Currency);
      sub_26BB7C318();
      v47 = v46;
      (*(v38 + 8))(v30, v37);
      sub_26BB67BAC(v123);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v126 = v27;
      v50 = sub_26BB637DC(v43);
      v51 = v27[2];
      v52 = (v49 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_44;
      }

      v54 = v49;
      if (v27[3] < v53)
      {
        break;
      }

      v57 = v122;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26BB669DC();
        v27 = v126;
        if (v54)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }

      if ((v49 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_3:
      v29 = v57 + 1;
      v31 = v27[7];
      v32 = *(v31 + 8 * v50);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v126 = *(v31 + 8 * v50);
      *(v31 + 8 * v50) = 0x8000000000000000;
      v14 = v45;
      sub_26BB664A4(v45, v33, v47);
      sub_26BB67CC8(v45, type metadata accessor for Currency);
      v34 = *(v31 + 8 * v50);
      *(v31 + 8 * v50) = v126;

      sub_26BB67CC8(v125, type metadata accessor for Currency);
      sub_26BB67CC8(v124, type metadata accessor for Currency);
      v28 = sub_26BB637AC;
      a1 = v113;
      if (v117 == v29)
      {

        v124 = sub_26BB637AC;
        v60 = v127;
        a2 = v108;
        goto LABEL_17;
      }
    }

    sub_26BB6596C(v53, isUniquelyReferenced_nonNull_native);
    v27 = v126;
    v55 = sub_26BB637DC(v125);
    v57 = v122;
    if ((v54 & 1) != (v56 & 1))
    {
      goto LABEL_49;
    }

    v50 = v55;
    if (v54)
    {
      goto LABEL_3;
    }

LABEL_12:
    v58 = sub_26BB5F054(MEMORY[0x277D84F90]);
    v59 = v121;
    sub_26BB67C60(v125, v121, type metadata accessor for Currency);
    sub_26BB667E4(v50, v59, v58, v27);
    goto LABEL_3;
  }

  v124 = 0;
  v60 = MEMORY[0x277D84FA0];
LABEL_17:
  v61 = 0;
  v62 = v60 + 56;
  v63 = 1 << *(v60 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v60 + 56);
  v66 = (v63 + 63) >> 6;
  v67 = v110;
  v125 = v60;
  while (v65)
  {
    v68 = v61;
LABEL_25:
    v69 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    v70 = *(v67 + 72);
    v71 = v111;
    sub_26BB67C60(*(v60 + 48) + v70 * (v69 | (v68 << 6)), v111, type metadata accessor for Currency);
    v72 = v112;
    sub_26BB61284(v71, v112);
    if (v27[2] && (sub_26BB637DC(v72), (v73 & 1) != 0))
    {
      sub_26BB67CC8(v72, type metadata accessor for Currency);
      v61 = v68;
      v60 = v125;
    }

    else
    {
      v108 = a2;
      sub_26BB67C60(v72, v109, type metadata accessor for Currency);
      sub_26BB680F4(0, &qword_28043A3C0, sub_26BB5FA98, MEMORY[0x277D84560]);
      v74 = *(v106 + 72);
      v75 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v122 = swift_allocObject();
      v76 = v122 + v75;
      v77 = *(v107 + 48);
      sub_26BB67C60(v72, v76, type metadata accessor for Currency);
      *(v76 + v77) = 0x3FF0000000000000;
      sub_26BB67BBC(0, &qword_28158B1E8, MEMORY[0x277D84460]);
      v78 = sub_26BB7D1D8();
      v123 = *(v107 + 48);

      v79 = v105;
      sub_26BB67C60(v76, v105, sub_26BB5FA98);
      v80 = sub_26BB637DC(v79);
      if (v81)
      {
        goto LABEL_45;
      }

      v82 = v80;
      v78[(v80 >> 6) + 8] |= 1 << v80;
      sub_26BB61284(v79, v78[6] + v80 * v70);
      *(v78[7] + 8 * v82) = *(v79 + v123);
      v83 = v78[2];
      v84 = __OFADD__(v83, 1);
      v85 = v83 + 1;
      if (v84)
      {
        goto LABEL_46;
      }

      v78[2] = v85;

      swift_setDeallocating();
      sub_26BB67CC8(v76, sub_26BB5FA98);
      swift_deallocClassInstance();
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v126 = v27;
      v87 = sub_26BB637DC(v109);
      v89 = v27[2];
      v90 = (v88 & 1) == 0;
      v84 = __OFADD__(v89, v90);
      v91 = v89 + v90;
      if (v84)
      {
        goto LABEL_47;
      }

      v92 = v88;
      if (v27[3] >= v91)
      {
        if ((v86 & 1) == 0)
        {
          v101 = v87;
          sub_26BB669DC();
          v87 = v101;
        }
      }

      else
      {
        sub_26BB6596C(v91, v86);
        v87 = sub_26BB637DC(v109);
        if ((v92 & 1) != (v93 & 1))
        {
          goto LABEL_49;
        }
      }

      v67 = v110;
      v27 = v126;
      if (v92)
      {
        v94 = v126[7];
        v95 = *(v94 + 8 * v87);
        *(v94 + 8 * v87) = v78;

        sub_26BB67CC8(v109, type metadata accessor for Currency);
        sub_26BB67CC8(v112, type metadata accessor for Currency);
      }

      else
      {
        v126[(v87 >> 6) + 8] |= 1 << v87;
        v96 = v27[6] + v87 * v70;
        v97 = v87;
        v98 = v109;
        sub_26BB67C60(v109, v96, type metadata accessor for Currency);
        *(v27[7] + 8 * v97) = v78;
        sub_26BB67CC8(v98, type metadata accessor for Currency);
        sub_26BB67CC8(v112, type metadata accessor for Currency);
        v99 = v27[2];
        v84 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v84)
        {
          goto LABEL_48;
        }

        v27[2] = v100;
      }

      a2 = v108;
      v60 = v125;
      v61 = v68;
    }
  }

  while (1)
  {
    v68 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v68 >= v66)
    {

      result = sub_26BB67BAC(v124);
      *a2 = v27;
      return result;
    }

    v65 = *(v62 + 8 * v68);
    ++v61;
    if (v65)
    {
      goto LABEL_25;
    }
  }

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
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_26BB7D3A8();
  __break(1u);
  return result;
}

unint64_t sub_26BB637AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26BB5F054(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

unint64_t sub_26BB637DC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26BB7D418();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720]);
  sub_26BB7CCF8();
  v4 = sub_26BB7D458();

  return sub_26BB639A0(a1, v4);
}

unint64_t sub_26BB63890(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26BB7D418();
  sub_26BB7CD88();
  v6 = sub_26BB7D458();

  return sub_26BB63AFC(a1, a2, v6);
}

unint64_t sub_26BB63908(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26BB7BE78();
  sub_26BB680AC(&qword_28158BB10, MEMORY[0x277CC95F0]);
  v5 = sub_26BB7CCE8();

  return sub_26BB63BB4(a1, v5);
}

unint64_t sub_26BB639A0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Currency();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_26BB67C60(*(v2 + 48) + v13 * v11, v9, type metadata accessor for Currency);
      v14 = MEMORY[0x26D68CE40](v9, a1);
      sub_26BB67CC8(v9, type metadata accessor for Currency);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_26BB63AFC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26BB7D378())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26BB63BB4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_26BB7BE78();
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
      sub_26BB680AC(&qword_28043A3F0, MEMORY[0x277CC95F0]);
      v16 = sub_26BB7CD28();
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

char *sub_26BB63D74(char *a1, int64_t a2, char a3)
{
  result = sub_26BB63E34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BB63D94(char *a1, int64_t a2, char a3)
{
  result = sub_26BB63F70(a1, a2, a3, *v3, &qword_28043A400, &type metadata for FundMetadata.Sector);
  *v3 = result;
  return result;
}

char *sub_26BB63DC4(char *a1, int64_t a2, char a3)
{
  result = sub_26BB63F70(a1, a2, a3, *v3, &qword_28043A408, &type metadata for FundMetadata.Holding);
  *v3 = result;
  return result;
}

size_t sub_26BB63DF4(size_t a1, int64_t a2, char a3)
{
  result = sub_26BB640A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BB63E14(char *a1, int64_t a2, char a3)
{
  result = sub_26BB642A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BB63E34(char *result, int64_t a2, char a3, char *a4)
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
    sub_26BB681B0(0, &qword_28043A418, &type metadata for Stock, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BB63F70(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_26BB681B0(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

size_t sub_26BB640A8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_26BB680F4(0, &qword_28043A3F8, type metadata accessor for StockChart.Entry, MEMORY[0x277D84560]);
  v10 = *(type metadata accessor for StockChart.Entry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for StockChart.Entry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26BB642A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_26BB681B0(0, &qword_280439E90, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26BB643C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26BB7D418();
  sub_26BB7CD88();
  v9 = sub_26BB7D458();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_26BB7D378() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_26BB64D10(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26BB64518(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v4 = type metadata accessor for Currency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v25 = &v25 - v10;
  v26 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_26BB7D418();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720]);
  sub_26BB7CCF8();
  v13 = sub_26BB7D458();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v5 + 72);
    while (1)
    {
      sub_26BB67C60(*(v11 + 48) + v17 * v15, v9, type metadata accessor for Currency);
      v18 = MEMORY[0x26D68CE40](v9, a2);
      sub_26BB67CC8(v9, type metadata accessor for Currency);
      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_26BB67CC8(a2, type metadata accessor for Currency);
    sub_26BB67C60(*(v11 + 48) + v17 * v15, v27, type metadata accessor for Currency);
    return 0;
  }

  else
  {
LABEL_5:
    v19 = v26;
    v20 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v25;
    sub_26BB67C60(a2, v25, type metadata accessor for Currency);
    v28 = *v19;
    sub_26BB64E90(v22, v15, isUniquelyReferenced_nonNull_native);
    v23 = v27;
    *v19 = v28;
    sub_26BB61284(a2, v23);
    return 1;
  }
}

uint64_t sub_26BB6479C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_26BB68158();
  result = sub_26BB7D058();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_26BB7D418();
      sub_26BB7CD88();
      result = sub_26BB7D458();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26BB649F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Currency();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_26BB67DF8();
  result = sub_26BB7D058();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v36 + 72);
      sub_26BB61284(v23 + v24 * (v20 | (v12 << 6)), v7);
      v25 = *(v11 + 40);
      sub_26BB7D418();
      sub_26BB7BF48();
      sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720]);
      sub_26BB7CCF8();
      result = sub_26BB7D458();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_26BB61284(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v35;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v8 + 32);
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_26BB64D10(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26BB6479C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26BB65104();
      goto LABEL_16;
    }

    sub_26BB6543C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_26BB7D418();
  sub_26BB7CD88();
  result = sub_26BB7D458();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26BB7D378();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26BB7D398();
  __break(1u);
  return result;
}

uint64_t sub_26BB64E90(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Currency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v30 = v3;
  if (v14 > v13 && (a3 & 1) != 0)
  {
LABEL_13:
    v15 = v8;
    goto LABEL_14;
  }

  if (a3)
  {
    v29 = v10;
    sub_26BB649F0(v13 + 1);
    goto LABEL_8;
  }

  if (v14 <= v13)
  {
    v29 = v10;
    sub_26BB65668(v13 + 1);
LABEL_8:
    v16 = *v3;
    v17 = *(*v3 + 40);
    sub_26BB7D418();
    sub_26BB7BF48();
    sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720]);
    sub_26BB7CCF8();
    v18 = sub_26BB7D458();
    v19 = -1 << *(v16 + 32);
    a2 = v18 & ~v19;
    if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v15 = v8;
      v21 = *(v8 + 72);
      while (1)
      {
        sub_26BB67C60(*(v16 + 48) + v21 * a2, v12, type metadata accessor for Currency);
        v22 = MEMORY[0x26D68CE40](v12, a1);
        sub_26BB67CC8(v12, type metadata accessor for Currency);
        if (v22)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v20;
        if (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v15 = v8;
  sub_26BB65254();
LABEL_14:
  v23 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_26BB61284(a1, *(v23 + 48) + *(v15 + 72) * a2);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_26BB7D398();
  __break(1u);
  return result;
}

void *sub_26BB65104()
{
  v1 = v0;
  sub_26BB68158();
  v2 = *v0;
  v3 = sub_26BB7D048();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_26BB65254()
{
  v1 = v0;
  v2 = type metadata accessor for Currency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB67DF8();
  v7 = *v0;
  v8 = sub_26BB7D048();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_26BB67C60(*(v7 + 48) + v22, v6, type metadata accessor for Currency);
        result = sub_26BB61284(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_26BB6543C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_26BB68158();
  result = sub_26BB7D058();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_26BB7D418();

      sub_26BB7CD88();
      result = sub_26BB7D458();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26BB65668(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Currency();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_26BB67DF8();
  result = sub_26BB7D058();
  v11 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v35 + 72);
      sub_26BB67C60(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for Currency);
      v25 = *(v11 + 40);
      sub_26BB7D418();
      sub_26BB7BF48();
      sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720]);
      sub_26BB7CCF8();
      result = sub_26BB7D458();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_26BB61284(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_26BB6596C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Currency();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_26BB67D28(0, &qword_28158B1F0, MEMORY[0x277D84460]);
  v40 = a2;
  result = sub_26BB7D1C8();
  v13 = result;
  if (*(v10 + 16))
  {
    v37 = v3;
    v38 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(v10 + 48) + *(v39 + 72) * v25;
      v42 = *(v39 + 72);
      if (v40)
      {
        sub_26BB61284(v26, v9);
        v41 = *(*(v10 + 56) + 8 * v25);
      }

      else
      {
        sub_26BB67C60(v26, v9, type metadata accessor for Currency);
        v41 = *(*(v10 + 56) + 8 * v25);
      }

      v27 = *(v13 + 40);
      sub_26BB7D418();
      sub_26BB7BF48();
      sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720]);
      sub_26BB7CCF8();
      result = sub_26BB7D458();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_26BB61284(v9, *(v13 + 48) + v42 * v21);
      *(*(v13 + 56) + 8 * v21) = v41;
      ++*(v13 + 16);
      v10 = v38;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_26BB65D28(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Currency();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_26BB67BBC(0, &qword_28158B1E8, MEMORY[0x277D84460]);
  v42 = a2;
  result = sub_26BB7D1C8();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    v43 = v10;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(v10 + 48);
      v27 = *(v41 + 72);
      v28 = v26 + v27 * v25;
      if (v42)
      {
        sub_26BB61284(v28, v9);
      }

      else
      {
        sub_26BB67C60(v28, v9, type metadata accessor for Currency);
      }

      v29 = *(*(v43 + 56) + 8 * v25);
      v30 = *(v13 + 40);
      sub_26BB7D418();
      sub_26BB7BF48();
      sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720]);
      sub_26BB7CCF8();
      result = sub_26BB7D458();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_26BB61284(v9, *(v13 + 48) + v27 * v21);
      *(*(v13 + 56) + 8 * v21) = v29;
      ++*(v13 + 16);
      v10 = v43;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_26BB660D8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26BB7BE78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_26BB68000();
  v43 = a2;
  result = sub_26BB7D1C8();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v7 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_26BB680AC(&qword_28158BB10, MEMORY[0x277CC95F0]);
      result = sub_26BB7CCE8();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v7 = v41;
      v11 = v42;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_26BB664A4(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for Currency();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26BB637DC(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_26BB66C18();
      goto LABEL_7;
    }

    sub_26BB65D28(result, a2 & 1);
    v21 = *v4;
    result = sub_26BB637DC(a1);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_26BB67C60(a1, v11, type metadata accessor for Currency);
      return sub_26BB66884(v14, v11, v20, a3);
    }
  }

  result = sub_26BB7D3A8();
  __break(1u);
  return result;
}

uint64_t sub_26BB66618(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26BB7BE78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26BB63908(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_26BB66E50();
      goto LABEL_7;
    }

    sub_26BB660D8(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_26BB63908(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_26BB66924(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_26BB7D3A8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_26BB667E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Currency();
  result = sub_26BB61284(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_26BB66884(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = type metadata accessor for Currency();
  result = sub_26BB61284(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_26BB66924(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26BB7BE78();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_26BB669DC()
{
  v1 = v0;
  v2 = type metadata accessor for Currency();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB67D28(0, &qword_28158B1F0, MEMORY[0x277D84460]);
  v6 = *v0;
  v7 = sub_26BB7D1B8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_26BB67C60(*(v6 + 48) + v22, v5, type metadata accessor for Currency);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_26BB61284(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_26BB66C18()
{
  v1 = v0;
  v2 = type metadata accessor for Currency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB67BBC(0, &qword_28158B1E8, MEMORY[0x277D84460]);
  v7 = *v0;
  v8 = sub_26BB7D1B8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v26 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(v3 + 72) * v22;
        sub_26BB67C60(*(v7 + 48) + v23, v6, type metadata accessor for Currency);
        v24 = *(*(v7 + 56) + 8 * v22);
        result = sub_26BB61284(v6, *(v9 + 48) + v23);
        *(*(v9 + 56) + 8 * v22) = v24;
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v26;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_26BB66E50()
{
  v1 = v0;
  v32 = sub_26BB7BE78();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB68000();
  v4 = *v0;
  v5 = sub_26BB7D1B8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v28, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_21;
      }

      v18 = *(v28 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_26BB670BC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v7 = result;
    v8 = *(a5 + 48);
    v9 = type metadata accessor for Currency();
    result = sub_26BB67C60(v8 + *(*(v9 - 8) + 72) * a2, v7, type metadata accessor for Currency);
    v10 = *(*(a5 + 56) + 8 * a2);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26BB67178(uint64_t a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_26BB63E14(0, v2, 0);
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      if (*v3)
      {
        v5 = 8239;
      }

      else
      {
        v5 = 8234;
      }

      MEMORY[0x26D68DCA0](v5, 0xE200000000000000);
      sub_26BB7CF08();
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_26BB63E14((v6 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      v3 += 16;
      --v2;
    }

    while (v2);
  }

  sub_26BB681B0(0, &qword_28043A3C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_26BB67E8C();
  v9 = sub_26BB7CD08();

  return v9;
}

unint64_t sub_26BB67324()
{
  result = qword_28158BD10;
  if (!qword_28158BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD10);
  }

  return result;
}

unint64_t sub_26BB67378()
{
  result = qword_28158B2A0;
  if (!qword_28158B2A0)
  {
    sub_26BB67D28(255, qword_28158BBC0, MEMORY[0x277D834F8]);
    sub_26BB680AC(&qword_28158B2C8, type metadata accessor for Currency);
    sub_26BB67444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B2A0);
  }

  return result;
}

unint64_t sub_26BB67444()
{
  result = qword_28158B290;
  if (!qword_28158B290)
  {
    sub_26BB67BBC(255, &qword_28158BBB8, MEMORY[0x277D834F8]);
    sub_26BB680AC(&qword_28158B2C8, type metadata accessor for Currency);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B290);
  }

  return result;
}

void sub_26BB67510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_26BB67578()
{
  result = qword_28158B298;
  if (!qword_28158B298)
  {
    sub_26BB67D28(255, qword_28158BBC0, MEMORY[0x277D834F8]);
    sub_26BB680AC(&qword_28158B2C0, type metadata accessor for Currency);
    sub_26BB67644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B298);
  }

  return result;
}

unint64_t sub_26BB67644()
{
  result = qword_28158B288;
  if (!qword_28158B288)
  {
    sub_26BB67BBC(255, &qword_28158BBB8, MEMORY[0x277D834F8]);
    sub_26BB680AC(&qword_28158B2C0, type metadata accessor for Currency);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B288);
  }

  return result;
}

uint64_t sub_26BB67780()
{
  result = sub_26BB7BF48();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26BB67850(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_26BB67898(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26BB678F0()
{
  result = qword_28043A3A0;
  if (!qword_28043A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A3A0);
  }

  return result;
}

unint64_t sub_26BB67948()
{
  result = qword_28043A3A8;
  if (!qword_28043A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A3A8);
  }

  return result;
}

unint64_t sub_26BB679A0()
{
  result = qword_28158BD00;
  if (!qword_28158BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD00);
  }

  return result;
}

unint64_t sub_26BB679F8()
{
  result = qword_28158BD08;
  if (!qword_28158BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD08);
  }

  return result;
}

unint64_t sub_26BB67A50()
{
  result = qword_28043A3B0;
  if (!qword_28043A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A3B0);
  }

  return result;
}

unint64_t sub_26BB67AA8()
{
  result = qword_28043A3B8;
  if (!qword_28043A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A3B8);
  }

  return result;
}

unint64_t sub_26BB67B00()
{
  result = qword_28158B2E0;
  if (!qword_28158B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B2E0);
  }

  return result;
}

unint64_t sub_26BB67B58()
{
  result = qword_28158B2D8;
  if (!qword_28158B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B2D8);
  }

  return result;
}

uint64_t sub_26BB67BAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_26BB67BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Currency();
    v7 = sub_26BB680AC(qword_28158BC38, type metadata accessor for Currency);
    v8 = a3(a1, v6, MEMORY[0x277D839F8], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}