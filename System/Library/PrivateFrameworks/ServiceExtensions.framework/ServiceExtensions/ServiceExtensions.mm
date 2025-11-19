uint64_t sub_26573ABC8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26573AC4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26574FED8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_265750098();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_26574FEA8();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_26573ADC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26574FED8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_265750098();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_26574FEA8();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_26573AF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26574FED8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26573AFFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26574FED8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

id sub_26573B100@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

id sub_26573B134@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

id sub_26573B180@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCancelled];
  *a2 = result;
  return result;
}

uint64_t sub_26573B200()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26573B23C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26573B294()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26573B3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_265750048();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26573B428(uint64_t a1, uint64_t a2)
{
  v4 = sub_265750048();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26573B54C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26573B598()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_26573B618@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____SEHostable__context) layer];
  *a2 = result;
  return result;
}

id sub_26573B684@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t GPUServiceExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26574FEE8();
}

uint64_t sub_26573B8DC(uint64_t a1, int a2)
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

uint64_t sub_26573B8FC(uint64_t result, int a2, int a3)
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

BOOL sub_26573B954(void *a1, uint64_t *a2)
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

void sub_26573B9CC(uint64_t a1, unint64_t *a2)
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

uint64_t NetworkingServiceExtension._backgroundTransferManager.getter()
{
  if (qword_28001C0A0 != -1)
  {
    swift_once();
  }
}

uint64_t BackgroundTransferManager.Download.init(sourceURL:destinationURL:title:type:description:sourceDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v60 = a8;
  v61 = a5;
  v57 = a6;
  v58 = a7;
  v54 = a3;
  v62 = a2;
  v59 = a1;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C1A0, &unk_265751360) - 8) + 64);
  v13 = (MEMORY[0x28223BE20])();
  v53 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v55 = sub_265750098();
  v17 = *(v55 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v55);
  v51 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v52 = &v51 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v51 - v23;
  v25 = sub_26574FEA8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26574FEC8();
  v30 = type metadata accessor for BackgroundTransferManager.Download(0);
  v31 = v30[11];
  *(a9 + v31) = [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
  v56 = v25;
  if (a4)
  {
    v32 = v54;
  }

  else
  {
    sub_26574FE98();
    v32 = sub_26574FE88();
    a4 = v33;
    (*(v26 + 8))(v29, v25);
  }

  v54 = a10;
  v34 = (a9 + v30[5]);
  *v34 = v32;
  v34[1] = a4;
  v35 = v61;
  sub_26573C4D8(v61, v16);
  v36 = *(v17 + 48);
  v37 = v55;
  if (v36(v16, 1, v55) == 1)
  {
    sub_26573FADC(v16, &qword_28001C1A0, &unk_265751360);
    sub_26574FE78();
    sub_265750088();
    v38 = v53;
    sub_265750078();
    if (v36(v38, 1, v37) == 1)
    {
      v39 = v52;
      sub_265750088();
      sub_26573FADC(v61, &qword_28001C1A0, &unk_265751360);
      v40 = v36(v38, 1, v37);
      v41 = v39;
      v42 = v56;
      if (v40 != 1)
      {
        sub_26573FADC(v38, &qword_28001C1A0, &unk_265751360);
      }
    }

    else
    {
      sub_26573FADC(v61, &qword_28001C1A0, &unk_265751360);
      v41 = v52;
      (*(v17 + 32))(v52, v38, v37);
      v42 = v56;
    }

    (*(v17 + 32))(a9 + v30[6], v41, v37);
    v44 = v62;
  }

  else
  {
    sub_26573FADC(v35, &qword_28001C1A0, &unk_265751360);
    v43 = *(v17 + 32);
    v43(v24, v16, v37);
    v43((a9 + v30[6]), v24, v37);
    v44 = v62;
    v42 = v56;
  }

  v45 = (a9 + v30[7]);
  v46 = v58;
  *v45 = v57;
  v45[1] = v46;
  v47 = *(v26 + 32);
  v47(a9 + v30[8], v59, v42);
  v48 = (a9 + v30[9]);
  v49 = v54;
  *v48 = v60;
  v48[1] = v49;
  return (v47)(a9 + v30[10], v44, v42);
}

uint64_t BackgroundTransferManager.Download.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26574FED8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BackgroundTransferManager.Download.title.getter()
{
  v1 = (v0 + *(type metadata accessor for BackgroundTransferManager.Download(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BackgroundTransferManager.Download.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BackgroundTransferManager.Download(0) + 24);
  v4 = sub_265750098();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BackgroundTransferManager.Download.description.getter()
{
  v1 = (v0 + *(type metadata accessor for BackgroundTransferManager.Download(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BackgroundTransferManager.Download.sourceURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BackgroundTransferManager.Download(0) + 32);
  v4 = sub_26574FEA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BackgroundTransferManager.Download.sourceDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for BackgroundTransferManager.Download(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BackgroundTransferManager.Download.destinationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BackgroundTransferManager.Download(0) + 40);
  v4 = sub_26574FEA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BackgroundTransferManager.Download.destinationURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BackgroundTransferManager.Download(0) + 40);
  v4 = sub_26574FEA8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

id BackgroundTransferManager.Download.progress.getter()
{
  v1 = *(v0 + *(type metadata accessor for BackgroundTransferManager.Download(0) + 44));

  return v1;
}

uint64_t sub_26573C2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_26574FEA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26573C33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_26574FEA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26573C3BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26574FED8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26573C428()
{
  type metadata accessor for BackgroundTransferManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  qword_28001C5A8 = v0;
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

uint64_t sub_26573C4D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C1A0, &unk_265751360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26573C548(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26573C568, v1, 0);
}

uint64_t sub_26573C568()
{
  v1 = v0[3];
  sub_26573CB70(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_26573C5C8()
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C1A8, &qword_265751370);
  v1 = *(*(v57 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v57);
  v56 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v55 = &v49 - v5;
  MEMORY[0x28223BE20](v4);
  v54 = &v49 - v6;
  result = swift_beginAccess();
  v8 = *(v0 + 112);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    *&v62[0] = MEMORY[0x277D84F90];

    sub_26573D98C(0, v9, 0);
    v10 = *&v62[0];
    v11 = v8 + 64;
    v12 = -1 << *(v8 + 32);
    result = sub_265750308();
    v13 = result;
    v14 = 0;
    v50 = v8 + 72;
    v51 = v9;
    v52 = v8 + 64;
    v53 = v8;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v8 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_35;
      }

      v58 = v14;
      v59 = *(v8 + 36);
      v60 = 1 << v13;
      v17 = v57;
      v18 = *(v57 + 48);
      v19 = *(v8 + 48);
      v20 = sub_26574FED8();
      v21 = *(v20 - 8);
      v61 = v10;
      v22 = v21;
      v23 = v54;
      (*(v21 + 16))(v54, v19 + *(v21 + 72) * v13, v20);
      v24 = *(v8 + 56);
      v25 = (type metadata accessor for BackgroundTransferManager._Transfer(0) - 8);
      sub_26573F708(v24 + *(*v25 + 72) * v13, &v23[v18], type metadata accessor for BackgroundTransferManager._Transfer);
      v26 = v55;
      (*(v22 + 32))(v55, v23, v20);
      sub_26573F770(&v23[v18], v26 + *(v17 + 48), type metadata accessor for BackgroundTransferManager._Transfer);
      v27 = v56;
      sub_26573EE80(v26, v56);
      v28 = v27 + *(v17 + 48);
      sub_26573EEF0(v28 + v25[7], &v64);
      sub_26573EF54(v28);
      (*(v22 + 8))(v27, v20);
      v10 = v61;
      *&v62[0] = v61;
      v30 = *(v61 + 16);
      v29 = *(v61 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_26573D98C((v29 > 1), v30 + 1, 1);
        v10 = *&v62[0];
      }

      *(v10 + 16) = v30 + 1;
      result = sub_26573EFB0(&v64, v10 + 40 * v30 + 32);
      v8 = v53;
      v15 = 1 << *(v53 + 32);
      if (v13 >= v15)
      {
        goto LABEL_36;
      }

      v11 = v52;
      v31 = *(v52 + 8 * v16);
      if ((v31 & v60) == 0)
      {
        goto LABEL_37;
      }

      if (v59 != *(v53 + 36))
      {
        goto LABEL_38;
      }

      v32 = v31 & (-2 << (v13 & 0x3F));
      if (v32)
      {
        v15 = __clz(__rbit64(v32)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v16 << 6;
        v34 = v16 + 1;
        v35 = (v50 + 8 * v16);
        while (v34 < (v15 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_26573F058(v13, v59, 0);
            v15 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_26573F058(v13, v59, 0);
      }

LABEL_4:
      v14 = v58 + 1;
      v13 = v15;
      if (v58 + 1 == v51)
      {

        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v38 = *(v10 + 16);
    if (!v38)
    {
      v41 = MEMORY[0x277D84F90];
LABEL_32:

      return v41;
    }

    v39 = 0;
    v40 = v10 + 32;
    v41 = MEMORY[0x277D84F90];
    while (v39 < *(v10 + 16))
    {
      v42 = v10;
      sub_26573EEF0(v40, &v64);
      v43 = v65;
      v44 = v66;
      __swift_project_boxed_opaque_existential_1(&v64, v65);
      v45 = (*(v44 + 40))(v43, v44);
      LOBYTE(v43) = [v45 isFinished];

      if (v43)
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v64);
        v10 = v42;
      }

      else
      {
        sub_26573EFB0(&v64, v62);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26573D98C(0, *(v41 + 16) + 1, 1);
          v41 = v63;
        }

        v10 = v42;
        v48 = *(v41 + 16);
        v47 = *(v41 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_26573D98C((v47 > 1), v48 + 1, 1);
          v41 = v63;
        }

        *(v41 + 16) = v48 + 1;
        result = sub_26573EFB0(v62, v41 + 40 * v48 + 32);
      }

      ++v39;
      v40 += 40;
      if (v38 == v39)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_26573CB70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C210, qword_265751540);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v36 - v5;
  v47 = sub_26574FED8();
  v45 = *(v47 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  v46 = *(v43 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for BackgroundTransferManager.Download(0);
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  v12 = *(MEMORY[0x28223BE20](v40) + 44);
  v37 = a1;
  v49 = *(a1 + v12);
  v13 = v49;
  swift_getKeyPath();
  v41 = sub_26574FE68();

  v49 = v13;
  swift_getKeyPath();
  sub_26573F708(a1, &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BackgroundTransferManager.Download);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  sub_26573F770(&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for BackgroundTransferManager.Download);

  v39 = sub_26574FE68();

  v49 = v13;
  swift_getKeyPath();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  v38 = v1;

  v16 = v37;
  sub_26573F708(v37, &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BackgroundTransferManager.Download);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  sub_26573F770(&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v14, type metadata accessor for BackgroundTransferManager.Download);
  v18 = sub_26574FE68();

  v19 = v42;
  v20 = v43;
  v21 = &v42[*(v43 + 20)];
  v21[3] = v40;
  v21[4] = sub_26573F0BC(&qword_28001C218, type metadata accessor for BackgroundTransferManager.Download);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_26573F708(v16, boxed_opaque_existential_1, type metadata accessor for BackgroundTransferManager.Download);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C220, &qword_2657515F0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_265751340;
  v24 = v41;
  v25 = v39;
  *(v23 + 32) = v41;
  *(v23 + 40) = v25;
  *(v23 + 48) = v18;
  v26 = *(v45 + 16);
  v27 = boxed_opaque_existential_1;
  v28 = v47;
  v26(v19, v27, v47);
  v29 = v20;
  *(v19 + *(v20 + 24)) = v23;
  v30 = v44;
  v26(v44, v19, v28);
  v31 = v48;
  sub_26573F708(v19, v48, type metadata accessor for BackgroundTransferManager._Transfer);
  (*(v46 + 56))(v31, 0, 1, v29);
  swift_beginAccess();
  v32 = v24;
  v33 = v25;
  v34 = v18;
  sub_26573D6F4(v31, v30);
  swift_endAccess();

  return sub_26573EF54(v19);
}

uint64_t sub_26573D0CC(void **a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C238, &qword_265751618);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_265751350;
  MEMORY[0x26675C8B0](0x73736572676F7250, 0xEB0000000020203ALL);
  [v1 fractionCompleted];
  sub_265750268();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_2657504F8();
}

uint64_t sub_26573D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C210, qword_265751540) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26573D254, 0, 0);
}

uint64_t sub_26573D254()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C238, &qword_265751618);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_265751350;
  v4 = [v2 isFinished];
  v5 = v4 == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x26675C8B0](v6, v7);

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0x64656873696E6946;
  *(v3 + 40) = 0xEB0000000020203ALL;
  sub_2657504F8();

  return MEMORY[0x2822009F8](sub_26573D398, v1, 0);
}

uint64_t sub_26573D398()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  swift_beginAccess();
  sub_26573DAF4(v2, v1);
  sub_26573FADC(v1, &qword_28001C210, qword_265751540);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_26573D44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C210, qword_265751540) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26573D4EC, 0, 0);
}

uint64_t sub_26573D4EC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C238, &qword_265751618);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_265751350;
  v4 = [v2 isCancelled];
  v5 = v4 == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x26675C8B0](v6, v7);

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0x64656C65636E6143;
  *(v3 + 40) = 0xEB0000000020203ALL;
  sub_2657504F8();

  swift_unownedRetainStrong();

  return MEMORY[0x2822009F8](sub_26573D638, v1, 0);
}

uint64_t sub_26573D638()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  swift_beginAccess();
  sub_26573DAF4(v2, v1);
  sub_26573FADC(v1, &qword_28001C210, qword_265751540);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_26573D6F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C210, qword_265751540);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_26573FADC(a1, &qword_28001C210, qword_265751540);
    sub_26573DAF4(a2, v8);
    v14 = sub_26574FED8();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_26573FADC(v8, &qword_28001C210, qword_265751540);
  }

  else
  {
    sub_26573F770(a1, v12, type metadata accessor for BackgroundTransferManager._Transfer);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_26573E474(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_26574FED8();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t BackgroundTransferManager.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BackgroundTransferManager.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_26573D98C(void *a1, int64_t a2, char a3)
{
  result = sub_26573D9AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26573D9AC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C200, &qword_265751530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C208, &qword_265751538);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26573DAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26574E080(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26573E74C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_26574FED8();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for BackgroundTransferManager._Transfer(0);
    v22 = *(v15 - 8);
    sub_26573F770(v14 + *(v22 + 72) * v8, a2, type metadata accessor for BackgroundTransferManager._Transfer);
    sub_26573E130(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for BackgroundTransferManager._Transfer(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_26573DC90(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26574FED8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C228, &qword_2657515F8);
  v48 = a2;
  result = sub_265750428();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_26573F770(v31 + v32 * v28, v52, type metadata accessor for BackgroundTransferManager._Transfer);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_26573F708(v33 + v32 * v28, v52, type metadata accessor for BackgroundTransferManager._Transfer);
      }

      v34 = *(v16 + 40);
      sub_26573F0BC(&qword_28001C1B8, MEMORY[0x277CC95F0]);
      result = sub_265750198();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_26573F770(v52, *(v16 + 56) + v32 * v24, type metadata accessor for BackgroundTransferManager._Transfer);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

unint64_t sub_26573E130(int64_t a1, uint64_t a2)
{
  v4 = sub_26574FED8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_265750318();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_26573F0BC(&qword_28001C1B8, MEMORY[0x277CC95F0]);
      v24 = sub_265750198();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for BackgroundTransferManager._Transfer(0) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26573E474(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26574FED8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26574E080(a2);
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
      sub_26573E74C();
      goto LABEL_7;
    }

    sub_26573DC90(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_26574E080(a2);
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
      return sub_26573E65C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2657504A8();
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
  v23 = v22 + *(*(type metadata accessor for BackgroundTransferManager._Transfer(0) - 8) + 72) * v15;

  return sub_26573FB3C(a1, v23);
}

uint64_t sub_26573E65C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26574FED8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  result = sub_26573F770(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for BackgroundTransferManager._Transfer);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_26573E74C()
{
  v1 = v0;
  v2 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_26574FED8();
  v42 = *(v38 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C228, &qword_2657515F8);
  v7 = *v0;
  v8 = sub_265750418();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_26573F708(v28 + v30, v39, type metadata accessor for BackgroundTransferManager._Transfer);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_26573F770(v31, *(v20 + 56) + v30, type metadata accessor for BackgroundTransferManager._Transfer);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
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

uint64_t sub_26573EA70(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for BackgroundTransferManager.Download(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C230, &qword_265751600);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = *a1;
  v15 = sub_265750258();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_26573F708(a4, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BackgroundTransferManager.Download);
  v16 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v14;
  v17[5] = a3;
  sub_26573F770(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for BackgroundTransferManager.Download);
  v18 = v14;

  sub_26573FF90(0, 0, v13, &unk_265751628, v17);
}

uint64_t sub_26573EC4C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for BackgroundTransferManager.Download(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C230, &qword_265751600);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = *a1;
  v15 = sub_265750258();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_26573F708(a4, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BackgroundTransferManager.Download);
  v16 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v14;
  v17[5] = a3;
  sub_26573F770(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for BackgroundTransferManager.Download);
  v18 = v14;
  swift_unownedRetain();
  sub_26573FF90(0, 0, v13, &unk_265751610, v17);
}

uint64_t sub_26573EE48(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26573EE80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C1A8, &qword_265751370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26573EEF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26573EF54(uint64_t a1)
{
  v2 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26573EFB0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26573F058(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26573F064(uint64_t a1)
{
  result = sub_26573F0BC(&qword_28001C1B0, type metadata accessor for BackgroundTransferManager.Download);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26573F0BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of BackgroundTransferManager.register(download:)(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26573F2B0;

  return v8(a1);
}

uint64_t sub_26573F2B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_26573F3F0()
{
  sub_26574FED8();
  if (v0 <= 0x3F)
  {
    sub_265750098();
    if (v1 <= 0x3F)
    {
      sub_26573F4D0();
      if (v2 <= 0x3F)
      {
        sub_26574FEA8();
        if (v3 <= 0x3F)
        {
          sub_26573F520();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26573F4D0()
{
  if (!qword_28001C1D0)
  {
    v0 = sub_2657502E8();
    if (!v1)
    {
      atomic_store(v0, &qword_28001C1D0);
    }
  }
}

unint64_t sub_26573F520()
{
  result = qword_28001C1D8;
  if (!qword_28001C1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28001C1D8);
  }

  return result;
}

void sub_26573F594()
{
  sub_26574FED8();
  if (v0 <= 0x3F)
  {
    sub_26573F630();
    if (v1 <= 0x3F)
    {
      sub_26573F694();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_26573F630()
{
  result = qword_28001C1F0;
  if (!qword_28001C1F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28001C1F0);
  }

  return result;
}

void sub_26573F694()
{
  if (!qword_28001C1F8)
  {
    sub_26574FE28();
    v0 = sub_265750228();
    if (!v1)
    {
      atomic_store(v0, &qword_28001C1F8);
    }
  }
}

uint64_t sub_26573F708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26573F770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  v3 = (type metadata accessor for BackgroundTransferManager.Download(0) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(*v3 + 64);
  a1(*(v1 + 16));
  v7 = sub_26574FED8();
  (*(*(v7 - 8) + 8))(v1 + v5, v7);
  v8 = *(v1 + v5 + v3[7] + 8);

  v9 = v3[8];
  v10 = sub_265750098();
  (*(*(v10 - 8) + 8))(v1 + v5 + v9, v10);
  v11 = *(v1 + v5 + v3[9] + 8);

  v12 = v3[10];
  v13 = sub_26574FEA8();
  v14 = *(*(v13 - 8) + 8);
  v14(v1 + v5 + v12, v13);
  v15 = *(v1 + v5 + v3[11] + 8);

  v14(v1 + v5 + v3[12], v13);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_26573F9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for BackgroundTransferManager.Download(0) - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
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

uint64_t sub_26573FADC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26573FB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26573FBA0(uint64_t a1)
{
  v4 = *(type metadata accessor for BackgroundTransferManager.Download(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26573FF88;

  return sub_26573D44C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_29Tm(void (*a1)(void))
{
  v3 = (type metadata accessor for BackgroundTransferManager.Download(0) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();

  a1(*(v1 + 40));
  v8 = sub_26574FED8();
  (*(*(v8 - 8) + 8))(v1 + v5, v8);
  v9 = *(v1 + v5 + v3[7] + 8);

  v10 = v3[8];
  v11 = sub_265750098();
  (*(*(v11 - 8) + 8))(v1 + v5 + v10, v11);
  v12 = *(v1 + v5 + v3[9] + 8);

  v13 = v3[10];
  v14 = sub_26574FEA8();
  v15 = *(*(v14 - 8) + 8);
  v15(v1 + v5 + v13, v14);
  v16 = *(v1 + v5 + v3[11] + 8);

  v15(v1 + v5 + v3[12], v14);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_26573FE80(uint64_t a1)
{
  v4 = *(type metadata accessor for BackgroundTransferManager.Download(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26573FF88;

  return sub_26573D1B4(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_26573FF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C230, &qword_265751600);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_265743ED8(a3, v27 - v11);
  v13 = sub_265750258();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_265743F48(v12);
  }

  else
  {
    sub_265750248();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_265750238();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2657501D8() + 32;
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

      sub_265743F48(a3);

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

  sub_265743F48(a3);
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

uint64_t sub_26574026C()
{
  type metadata accessor for _ServiceManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_28001C240 = v0;
  return result;
}

uint64_t static _ServiceManager.shared.getter()
{
  if (qword_28001C0A8 != -1)
  {
    swift_once();
  }
}

uint64_t _ServiceManager.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_265740380()
{
  sub_265750508();
  MEMORY[0x26675CBD0](1);
  return sub_265750528();
}

uint64_t sub_2657403EC()
{
  sub_265750508();
  MEMORY[0x26675CBD0](1);
  return sub_265750528();
}

ServiceExtensions::_ServiceManager::ServiceExtensionPointIdentifier_optional __swiftcall _ServiceManager.ServiceExtensionPointIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_265750448();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t _ServiceManager.ServiceExtensionPointIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000027;
  }

  *v0;
  return result;
}

uint64_t sub_265740500(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000020;
  v3 = *a1;
  v4 = "owser-engine.networking";
  if (v3 == 1)
  {
    v5 = 0xD000000000000020;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (v3 == 1)
  {
    v6 = "owser-engine.networking";
  }

  else
  {
    v6 = "owser-engine.gpu";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000027;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "_LockdownVersion";
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000024;
    v4 = "owser-engine.gpu";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000027;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "_LockdownVersion";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_265750488();
  }

  return v11 & 1;
}

uint64_t sub_2657405DC()
{
  v1 = *v0;
  sub_265750508();
  sub_2657501E8();

  return sub_265750528();
}

uint64_t sub_265740678()
{
  *v0;
  *v0;
  sub_2657501E8();
}

uint64_t sub_265740700()
{
  v1 = *v0;
  sub_265750508();
  sub_2657501E8();

  return sub_265750528();
}

void sub_2657407A4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000020;
  v3 = "owser-engine.networking";
  if (*v1 != 1)
  {
    v2 = 0xD000000000000024;
    v3 = "owser-engine.gpu";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000027;
    v4 = "_LockdownVersion";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t _ServiceManager.networkProcess(serviceIdentifier:onInteruption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_265750108();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_26574FFC8();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v6[13] = *(v11 + 64);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v12 = *(*(sub_26574FF88() - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = sub_26574FF58();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v16 = sub_26574FFF8();
  v6[22] = v16;
  v17 = *(v16 - 8);
  v6[23] = v17;
  v18 = *(v17 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265740A40, v5, 0);
}

uint64_t sub_265740A40()
{
  v1 = v0[25];
  v3 = v0[3];
  v2 = v0[4];

  sub_26574FFD8();
  v15 = v0[25];
  v16 = sub_26574FFE8();
  if (v16 == 0xD000000000000027 && 0x8000000265752300 == v17)
  {
  }

  else
  {
    v19 = sub_265750488();

    if ((v19 & 1) == 0)
    {
      v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v21 = sub_2657501B8();
      [v20 initWithDomain:v21 code:1 userInfo:0];

      swift_willThrow();
      (*(v0[23] + 8))(v0[25], v0[22]);
      v5 = v0[24];
      v4 = v0[25];
      v7 = v0[20];
      v6 = v0[21];
      v9 = v0[16];
      v8 = v0[17];
      v11 = v0[14];
      v10 = v0[15];
      v12 = v0[10];

      v13 = v0[1];

      return v13();
    }
  }

  v23 = v0[20];
  v22 = v0[21];
  v24 = v0[18];
  v25 = v0[19];
  v26 = v0[17];
  v28 = v0[5];
  v27 = v0[6];
  (*(v0[23] + 16))(v0[24], v0[25], v0[22]);

  sub_26574FF28();
  sub_26574FF48();
  sub_26574FF78();
  sub_26574FF38();
  (*(v25 + 16))(v23, v22, v24);
  v29 = *(MEMORY[0x277CC5D68] + 4);
  v30 = swift_task_alloc();
  v0[26] = v30;
  *v30 = v0;
  v30[1] = sub_265740D08;
  v31 = v0[20];
  v32 = v0[16];

  return MEMORY[0x282116828](v32, v31);
}

uint64_t sub_265740D08()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_2657443C8;
  }

  else
  {
    v6 = sub_265740E34;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265740E34()
{
  v24 = v0[25];
  v25 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v26 = v0[20];
  v19 = v0[19];
  v20 = v0[18];
  v21 = v0[21];
  v27 = v0[17];
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v16 = v0[10];
  v6 = v0[8];
  v7 = v0[9];
  v17 = v6;
  v18 = v0[16];
  v8 = v0[2];
  v9 = *(v3 + 16);
  v9(v2);
  (v9)(v8, v2, v5);
  (v9)(v1, v2, v5);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v1, v5);
  *v16 = 1;
  (*(v7 + 104))(v16, *MEMORY[0x277D85188], v17);
  type metadata accessor for LaunchAssertionInvalidator();
  swift_allocObject();
  v12 = sub_2657479DC(sub_26574370C, v11, v16);

  v13 = *(v3 + 8);
  v13(v2, v5);
  v13(v18, v5);
  (*(v19 + 8))(v21, v20);
  (*(v22 + 8))(v24, v23);
  *(v8 + *(type metadata accessor for _NetworkProcess(0) + 20)) = v12;

  v14 = v0[1];

  return v14();
}

uint64_t _ServiceManager.gpuProcess(serviceIdentifier:onInteruption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_265750108();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_26574FFC8();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v6[13] = *(v11 + 64);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v12 = *(*(sub_26574FF88() - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = sub_26574FF58();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v16 = sub_26574FFF8();
  v6[22] = v16;
  v17 = *(v16 - 8);
  v6[23] = v17;
  v18 = *(v17 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2657412FC, v5, 0);
}

uint64_t sub_2657412FC()
{
  v1 = v0[25];
  v3 = v0[3];
  v2 = v0[4];

  sub_26574FFD8();
  v15 = v0[25];
  v16 = sub_26574FFE8();
  if (v16 == 0xD000000000000020 && 0x8000000265752330 == v17)
  {
  }

  else
  {
    v19 = sub_265750488();

    if ((v19 & 1) == 0)
    {
      v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v21 = sub_2657501B8();
      [v20 initWithDomain:v21 code:1 userInfo:0];

      swift_willThrow();
      (*(v0[23] + 8))(v0[25], v0[22]);
      v5 = v0[24];
      v4 = v0[25];
      v7 = v0[20];
      v6 = v0[21];
      v9 = v0[16];
      v8 = v0[17];
      v11 = v0[14];
      v10 = v0[15];
      v12 = v0[10];

      v13 = v0[1];

      return v13();
    }
  }

  v23 = v0[20];
  v22 = v0[21];
  v24 = v0[18];
  v25 = v0[19];
  v26 = v0[17];
  v28 = v0[5];
  v27 = v0[6];
  (*(v0[23] + 16))(v0[24], v0[25], v0[22]);

  sub_26574FF28();
  sub_26574FF48();
  sub_26574FF78();
  sub_26574FF38();
  (*(v25 + 16))(v23, v22, v24);
  v29 = *(MEMORY[0x277CC5D68] + 4);
  v30 = swift_task_alloc();
  v0[26] = v30;
  *v30 = v0;
  v30[1] = sub_2657415C4;
  v31 = v0[20];
  v32 = v0[16];

  return MEMORY[0x282116828](v32, v31);
}

uint64_t sub_2657415C4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_265741978;
  }

  else
  {
    v6 = sub_2657416F0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2657416F0()
{
  v24 = v0[25];
  v25 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v26 = v0[20];
  v19 = v0[19];
  v20 = v0[18];
  v21 = v0[21];
  v27 = v0[17];
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v16 = v0[10];
  v6 = v0[8];
  v7 = v0[9];
  v17 = v6;
  v18 = v0[16];
  v8 = v0[2];
  v9 = *(v3 + 16);
  v9(v2);
  (v9)(v8, v2, v5);
  (v9)(v1, v2, v5);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v1, v5);
  *v16 = 1;
  (*(v7 + 104))(v16, *MEMORY[0x277D85188], v17);
  type metadata accessor for LaunchAssertionInvalidator();
  swift_allocObject();
  v12 = sub_2657479DC(sub_26574370C, v11, v16);

  v13 = *(v3 + 8);
  v13(v2, v5);
  v13(v18, v5);
  (*(v19 + 8))(v21, v20);
  (*(v22 + 8))(v24, v23);
  *(v8 + *(type metadata accessor for _GPUProcess(0) + 20)) = v12;

  v14 = v0[1];

  return v14();
}

uint64_t sub_265741978()
{
  (*(v0[19] + 8))(v0[21], v0[18]);
  v1 = v0[27];
  (*(v0[23] + 8))(v0[25], v0[22]);
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t _ServiceManager.contentProcess(serviceIdentifier:onInteruption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_265750108();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_26574FFC8();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v6[13] = *(v11 + 64);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v12 = *(*(sub_26574FF88() - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = sub_26574FF58();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v16 = sub_26574FFF8();
  v6[22] = v16;
  v17 = *(v16 - 8);
  v6[23] = v17;
  v18 = *(v17 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265741CBC, v5, 0);
}

uint64_t sub_265741CBC()
{
  v1 = v0[25];
  v3 = v0[3];
  v2 = v0[4];

  sub_26574FFD8();
  v15 = v0[25];
  v16 = sub_26574FFE8();
  if (v16 == 0xD000000000000024 && 0x8000000265752360 == v17)
  {
  }

  else
  {
    v19 = sub_265750488();

    if ((v19 & 1) == 0)
    {
      v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v21 = sub_2657501B8();
      [v20 initWithDomain:v21 code:1 userInfo:0];

      swift_willThrow();
      (*(v0[23] + 8))(v0[25], v0[22]);
      v5 = v0[24];
      v4 = v0[25];
      v7 = v0[20];
      v6 = v0[21];
      v9 = v0[16];
      v8 = v0[17];
      v11 = v0[14];
      v10 = v0[15];
      v12 = v0[10];

      v13 = v0[1];

      return v13();
    }
  }

  v23 = v0[20];
  v22 = v0[21];
  v24 = v0[18];
  v25 = v0[19];
  v26 = v0[17];
  v28 = v0[5];
  v27 = v0[6];
  (*(v0[23] + 16))(v0[24], v0[25], v0[22]);

  sub_26574FF18();
  sub_26574FF48();
  sub_26574FF78();
  sub_26574FF38();
  (*(v25 + 16))(v23, v22, v24);
  v29 = *(MEMORY[0x277CC5D68] + 4);
  v30 = swift_task_alloc();
  v0[26] = v30;
  *v30 = v0;
  v30[1] = sub_265741F84;
  v31 = v0[20];
  v32 = v0[16];

  return MEMORY[0x282116828](v32, v31);
}

uint64_t sub_265741F84()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_2657443C8;
  }

  else
  {
    v6 = sub_2657420B0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2657420B0()
{
  v24 = v0[25];
  v25 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v26 = v0[20];
  v19 = v0[19];
  v20 = v0[18];
  v21 = v0[21];
  v27 = v0[17];
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v16 = v0[10];
  v6 = v0[8];
  v7 = v0[9];
  v17 = v6;
  v18 = v0[16];
  v8 = v0[2];
  v9 = *(v3 + 16);
  v9(v2);
  (v9)(v8, v2, v5);
  (v9)(v1, v2, v5);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v1, v5);
  *v16 = 1;
  (*(v7 + 104))(v16, *MEMORY[0x277D85188], v17);
  type metadata accessor for LaunchAssertionInvalidator();
  swift_allocObject();
  v12 = sub_2657479DC(sub_26574370C, v11, v16);

  v13 = *(v3 + 8);
  v13(v2, v5);
  v13(v18, v5);
  (*(v19 + 8))(v21, v20);
  (*(v22 + 8))(v24, v23);
  *(v8 + *(type metadata accessor for _ContentProcess(0) + 20)) = v12;

  v14 = v0[1];

  return v14();
}

id sub_265742394()
{
  result = [objc_allocWithZone(type metadata accessor for _SEServiceManager()) init];
  qword_28001C5B0 = result;
  return result;
}

id _SEServiceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2657423F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *(*(type metadata accessor for _ContentProcess(0) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265742498, 0, 0);
}

uint64_t sub_265742498()
{
  if (qword_28001C0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier);
  v3 = *(v1 + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier + 8);
  v0[9] = v3;
  v4 = (v1 + OBJC_IVAR____SEServiceConfiguration_interruptionHandler);
  v5 = *v4;
  v6 = v4[1];
  v0[10] = v6;

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_2657425C4;
  v8 = v0[8];

  return _ServiceManager.contentProcess(serviceIdentifier:onInteruption:)(v8, v2, v3, v5, v6);
}

uint64_t sub_2657425C4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_2657443C0;
  }

  else
  {
    v6 = *(v2 + 72);
    v5 = *(v2 + 80);

    v4 = sub_2657426E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2657426E8()
{
  super_class = v0[3].super_class;
  receiver = v0[4].receiver;
  v4 = v0[2].super_class;
  v3 = v0[3].receiver;
  sub_2657442F8(receiver, super_class, type metadata accessor for _ContentProcess);
  v5 = type metadata accessor for _SEContentProcess(0);
  v6 = objc_allocWithZone(v5);
  sub_2657442F8(super_class, v6 + OBJC_IVAR____SEContentProcess_inner, type metadata accessor for _ContentProcess);
  v0[1].receiver = v6;
  v0[1].super_class = v5;
  v7 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_265744360(super_class, type metadata accessor for _ContentProcess);
  v4(v7, 0);

  sub_265744360(receiver, type metadata accessor for _ContentProcess);
  v9 = v0[3].super_class;
  v8 = v0[4].receiver;

  v10 = v0->super_class;

  return v10();
}

uint64_t sub_265742848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *(*(type metadata accessor for _NetworkProcess(0) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2657428E8, 0, 0);
}

uint64_t sub_2657428E8()
{
  if (qword_28001C0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier);
  v3 = *(v1 + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier + 8);
  v0[9] = v3;
  v4 = (v1 + OBJC_IVAR____SEServiceConfiguration_interruptionHandler);
  v5 = *v4;
  v6 = v4[1];
  v0[10] = v6;

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_265742A14;
  v8 = v0[8];

  return _ServiceManager.networkProcess(serviceIdentifier:onInteruption:)(v8, v2, v3, v5, v6);
}

uint64_t sub_265742A14()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_2657443C0;
  }

  else
  {
    v6 = *(v2 + 72);
    v5 = *(v2 + 80);

    v4 = sub_265742B38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_265742B38()
{
  super_class = v0[3].super_class;
  receiver = v0[4].receiver;
  v4 = v0[2].super_class;
  v3 = v0[3].receiver;
  sub_2657442F8(receiver, super_class, type metadata accessor for _NetworkProcess);
  v5 = type metadata accessor for _SENetworkProcess(0);
  v6 = objc_allocWithZone(v5);
  sub_2657442F8(super_class, v6 + OBJC_IVAR____SENetworkProcess_inner, type metadata accessor for _NetworkProcess);
  v0[1].receiver = v6;
  v0[1].super_class = v5;
  v7 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_265744360(super_class, type metadata accessor for _NetworkProcess);
  v4(v7, 0);

  sub_265744360(receiver, type metadata accessor for _NetworkProcess);
  v9 = v0[3].super_class;
  v8 = v0[4].receiver;

  v10 = v0->super_class;

  return v10();
}

uint64_t sub_265742C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *(*(type metadata accessor for _GPUProcess(0) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265742D38, 0, 0);
}

uint64_t sub_265742D38()
{
  if (qword_28001C0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier);
  v3 = *(v1 + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier + 8);
  v0[9] = v3;
  v4 = (v1 + OBJC_IVAR____SEServiceConfiguration_interruptionHandler);
  v5 = *v4;
  v6 = v4[1];
  v0[10] = v6;

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_265742E64;
  v8 = v0[8];

  return _ServiceManager.gpuProcess(serviceIdentifier:onInteruption:)(v8, v2, v3, v5, v6);
}

uint64_t sub_265742E64()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_2657430AC;
  }

  else
  {
    v6 = *(v2 + 72);
    v5 = *(v2 + 80);

    v4 = sub_265742F88;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_265742F88()
{
  super_class = v0[3].super_class;
  receiver = v0[4].receiver;
  v4 = v0[2].super_class;
  v3 = v0[3].receiver;
  sub_2657442F8(receiver, super_class, type metadata accessor for _GPUProcess);
  v5 = type metadata accessor for _SEGPUProcess(0);
  v6 = objc_allocWithZone(v5);
  sub_2657442F8(super_class, v6 + OBJC_IVAR____SEGPUProcess_inner, type metadata accessor for _GPUProcess);
  v0[1].receiver = v6;
  v0[1].super_class = v5;
  v7 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_265744360(super_class, type metadata accessor for _GPUProcess);
  v4(v7, 0);

  sub_265744360(receiver, type metadata accessor for _GPUProcess);
  v9 = v0[3].super_class;
  v8 = v0[4].receiver;

  v10 = v0->super_class;

  return v10();
}

uint64_t sub_2657430AC()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[5];
  v4 = v0[6];

  v6 = sub_26574FE48();
  v5(0, v6);

  v8 = v0[7];
  v7 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_265743198(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C230, &qword_265751600);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22 - v14;
  v16 = _Block_copy(a4);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = sub_265750258();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a3;
  v19[5] = a7;
  v19[6] = v17;
  v20 = a3;
  sub_26573FF90(0, 0, v15, a8, v19);
}

id _SEServiceManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _SEServiceManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2657434D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_265743680(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_265743724(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26574381C;

  return v7(a1);
}

uint64_t sub_26574381C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_26574FFC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26574399C(uint64_t (*a1)(uint64_t))
{
  v2 = *(sub_26574FFC8() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_265743A6C()
{
  result = qword_28001C248;
  if (!qword_28001C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C248);
  }

  return result;
}

unint64_t sub_265743AC4()
{
  result = qword_28001C250;
  if (!qword_28001C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C250);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ServiceManager.ServiceExtensionsErrorCodes(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for _ServiceManager.ServiceExtensionsErrorCodes(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for _ServiceManager.ServiceExtensionPointIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for _ServiceManager.ServiceExtensionPointIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265743E10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26573F2B0;

  return sub_265742C98(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_265743ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C230, &qword_265751600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265743F48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C230, &qword_265751600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265743FB0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26573FF88;

  return sub_265743724(a1, v5);
}

uint64_t sub_265744068(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26573F2B0;

  return sub_265743724(a1, v5);
}

uint64_t sub_265744120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26573FF88;

  return sub_265742848(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_265744230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26573FF88;

  return sub_2657423F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2657442F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_265744360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2657443D0()
{
  sandbox_enable_local_state_flag();

  return sandbox_enable_local_state_flag();
}

uint64_t ContentServiceExtension._lockdown(version:)()
{
  sandbox_enable_local_state_flag();

  return sandbox_enable_local_state_flag();
}

uint64_t ContentServiceExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26574FEE8();
}

uint64_t sub_265744634()
{
  v0 = sub_265750048();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265747F2C(0, &qword_28001C268, 0x277CC1E90);
  _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  sub_265750058();
  v5 = sub_265750028();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  (*(v1 + 8))(v4, v0);
  v13 = sub_265744950(v5, v7, v9, v11);
  v14 = [v13 bundleIdentifier];

  if (!v14)
  {
    return 0;
  }

  v15 = sub_2657501C8();

  return v15;
}

uint64_t _Process.bundleIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_265750048();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265747F2C(0, &qword_28001C268, 0x277CC1E90);
  (*(a2 + 16))(a1, a2);
  v9 = sub_265750028();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v5 + 8))(v8, v4);
  v17 = sub_265744950(v9, v11, v13, v15);
  v18 = [v17 bundleIdentifier];

  if (!v18)
  {
    return 0;
  }

  v19 = sub_2657501C8();

  return v19;
}

id sub_265744950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v9 error:v10];
  if (v4)
  {
    v5 = v10[0];
  }

  else
  {
    v6 = v10[0];
    sub_26574FE58();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

id _GPUProcess.createVisibilityPropagationInteraction()()
{
  *v10.val = _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  v10.val[2] = v0;
  v10.val[3] = v1;
  v10.val[4] = v2;
  v10.val[5] = v3;
  v10.val[6] = v4;
  v10.val[7] = v5;
  v6 = audit_token_to_pid(&v10);
  v7 = sub_2657501B8();
  v8 = [objc_opt_self() interactionWithPID:v6 environmentIdentifier:v7];

  return v8;
}

uint64_t sub_265744BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26574FFC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

Swift::Void __swiftcall _ContentProcess.invalidate()()
{
  v1 = *(v0 + *(type metadata accessor for _ContentProcess(0) + 20));
  os_unfair_lock_lock((v1[4] + 16));
  v2 = v1[2];
  if (v2)
  {
    v3 = v1[3];
    v1[2] = 0;
    v1[3] = 0;
    sub_265746FD4(v2);
  }

  os_unfair_lock_unlock((v1[4] + 16));

  _s17ServiceExtensions11_GPUProcessV10invalidateyyF_0();
}

uint64_t _s17ServiceExtensions11_GPUProcessV17processIdentifiers5Int32Vvg_0()
{
  *v7.val = _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  v7.val[2] = v0;
  v7.val[3] = v1;
  v7.val[4] = v2;
  v7.val[5] = v3;
  v7.val[6] = v4;
  v7.val[7] = v5;
  return audit_token_to_pid(&v7);
}

uint64_t _s17ServiceExtensions11_GPUProcessV11_auditToken0aB4Core05AuditE0Vvg_0()
{
  _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();

  return sub_265750058();
}

id _ContentProcess.createVisibilityPropagationInteraction()()
{
  *v10.val = _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  v10.val[2] = v0;
  v10.val[3] = v1;
  v10.val[4] = v2;
  v10.val[5] = v3;
  v10.val[6] = v4;
  v10.val[7] = v5;
  v6 = audit_token_to_pid(&v10);
  v7 = sub_2657501B8();
  v8 = [objc_opt_self() interactionWithPID:v6 environmentIdentifier:v7];

  return v8;
}

uint64_t sub_265744DE8()
{
  sub_265750508();
  MEMORY[0x26675CBD0](0);
  return sub_265750528();
}

uint64_t sub_265744E2C()
{
  sub_265750508();
  MEMORY[0x26675CBD0](0);
  return sub_265750528();
}

uint64_t _BrowserProcess._auditToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265750048();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _BrowserProcess.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_265750068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265750048();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265750038();
  (*(v3 + 104))(v6, *MEMORY[0x277D4D3A8], v2);
  v12 = sub_265750008();
  (*(v3 + 8))(v6, v2);
  if (v12)
  {
    return (*(v8 + 32))(a1, v11, v7);
  }

  sub_265746FE4();
  swift_allocError();
  swift_willThrow();
  return (*(v8 + 8))(v11, v7);
}

uint64_t _BrowserProcess.init(auditToken:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v20 = a3;
  v3 = sub_265750068();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265750048();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_265750058();
  (*(v9 + 16))(v13, v15, v8);
  (*(v4 + 104))(v7, *MEMORY[0x277D4D3A8], v3);
  v16 = sub_265750008();
  (*(v4 + 8))(v7, v3);
  if (v16)
  {
    (*(v9 + 8))(v15, v8);
    return (*(v9 + 32))(v20, v13, v8);
  }

  else
  {
    sub_265746FE4();
    swift_allocError();
    swift_willThrow();
    v18 = *(v9 + 8);
    v18(v13, v8);
    return (v18)(v15, v8);
  }
}

uint64_t sub_265745368@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265750048();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2657453D0()
{
  sub_265747F2C(0, &qword_28001C268, 0x277CC1E90);
  v0 = sub_265750028();
  v5 = sub_265744950(v0, v1, v2, v3);
  v6 = [v5 bundleIdentifier];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_2657501C8();

  return v7;
}

uint64_t static _BrowserProcess.checkBrowserEngineEntitlement(forAuditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C270, &qword_265751960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12[-v8];
  _BrowserProcess.init(auditToken:)(a3, a4, &v12[-v8]);
  v10 = type metadata accessor for _BrowserProcess(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_265747058(v9);
  return 1;
}

uint64_t _s17ServiceExtensions15_BrowserProcessV05checkc27EngineEntitlementForCurrentD0SbyFZ_0()
{
  v0 = sub_265750068();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265750048();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C270, &qword_265751960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  sub_265750038();
  (*(v1 + 104))(v4, *MEMORY[0x277D4D3A8], v0);
  v14 = sub_265750008();
  (*(v1 + 8))(v4, v0);
  if (v14)
  {
    (*(v6 + 32))(v13, v9, v5);
    v15 = 0;
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v15 = 1;
  }

  v16 = type metadata accessor for _BrowserProcess(0);
  (*(*(v16 - 8) + 56))(v13, v15, 1, v16);
  sub_265747058(v13);
  return v14 & 1;
}

void sub_265745A18(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v2) + 0x50))(v31);
  v6 = v32;
  v7 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v8 = *(a1 + OBJC_IVAR____SECapability_inner + 48);
  v9 = *(a1 + OBJC_IVAR____SECapability_inner + 16);
  v35 = *(a1 + OBJC_IVAR____SECapability_inner + 32);
  v36 = v8;
  v10 = *(a1 + OBJC_IVAR____SECapability_inner + 48);
  v37 = *(a1 + OBJC_IVAR____SECapability_inner + 64);
  v11 = *(a1 + OBJC_IVAR____SECapability_inner + 16);
  v34[0] = *(a1 + OBJC_IVAR____SECapability_inner);
  v34[1] = v11;
  v26 = v35;
  v27 = v10;
  v28 = *(a1 + OBJC_IVAR____SECapability_inner + 64);
  v38 = *(a1 + OBJC_IVAR____SECapability_inner + 80);
  v29 = *(a1 + OBJC_IVAR____SECapability_inner + 80);
  v24 = v34[0];
  v25 = v9;
  v12 = *(v7 + 32);
  sub_265747E7C(v34, v22);
  v12(v30, &v24, v6, v7);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  sub_265747ED8(v22);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v13 = v30[0];
    v14 = v30[1];
    __swift_destroy_boxed_opaque_existential_1(v31);
    v15 = type metadata accessor for _SEInternalGrant();
    v16 = objc_allocWithZone(v15);
    v17 = &v16[OBJC_IVAR____TtC17ServiceExtensionsP33_620D12DBAD85E5FA4594BA268933638A16_SEInternalGrant_inner];
    *v17 = v13;
    *(v17 + 1) = v14;
    v21.receiver = v16;
    v21.super_class = v15;
    v18 = v13;
    v19 = v14;
    v20 = objc_msgSendSuper2(&v21, sel_init);
    a2[3] = v15;

    *a2 = v20;
  }
}

id sub_265745C18(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, id))
{
  v7 = a3;
  v8 = a1;
  a5(v11, v7);

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v9 = sub_265750468();
  __swift_destroy_boxed_opaque_existential_1(v11);

  return v9;
}

id _SEExtensionProcess.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _SEExtensionProcess();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_265745F74(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_265746030()
{
  v1 = type metadata accessor for _ContentProcess(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &atoken - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265747104(v0 + OBJC_IVAR____SEContentProcess_inner, v4, type metadata accessor for _ContentProcess);
  *atoken.val = _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  atoken.val[2] = v5;
  atoken.val[3] = v6;
  atoken.val[4] = v7;
  atoken.val[5] = v8;
  atoken.val[6] = v9;
  atoken.val[7] = v10;
  v11 = audit_token_to_pid(&atoken);
  v12 = sub_2657501B8();
  v13 = [objc_opt_self() interactionWithPID:v11 environmentIdentifier:v12];

  sub_26574716C(v4, type metadata accessor for _ContentProcess);
  return v13;
}

id sub_2657463EC()
{
  v1 = type metadata accessor for _GPUProcess(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &atoken - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265747104(v0 + OBJC_IVAR____SEGPUProcess_inner, v4, type metadata accessor for _GPUProcess);
  *atoken.val = _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  atoken.val[2] = v5;
  atoken.val[3] = v6;
  atoken.val[4] = v7;
  atoken.val[5] = v8;
  atoken.val[6] = v9;
  atoken.val[7] = v10;
  v11 = audit_token_to_pid(&atoken);
  v12 = sub_2657501B8();
  v13 = [objc_opt_self() interactionWithPID:v11 environmentIdentifier:v12];

  sub_26574716C(v4, type metadata accessor for _GPUProcess);
  return v13;
}

id _SEGPUProcess.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2657467DC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  a5[3] = a2(0);
  a5[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return sub_265747104(v5 + v9, boxed_opaque_existential_1, a4);
}

void sub_265746E64()
{
  v1 = sub_26574FFC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[4];
  os_unfair_lock_lock(v6 + 4);
  v7 = v0[2];
  if (v7)
  {
    v8 = v0[3];

    v7(v9);
    sub_26574FFA8();
    sub_265746FD4(v7);
    (*(v2 + 8))(v5, v1);
    v10 = v0[2];
    v11 = v0[3];
    v0[2] = 0;
    v0[3] = 0;
    sub_265746FD4(v10);
  }

  os_unfair_lock_unlock(v6 + 4);
}

uint64_t sub_265746FD4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_265746FE4()
{
  result = qword_281565E18;
  if (!qword_281565E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281565E18);
  }

  return result;
}

uint64_t sub_265747058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C270, &qword_265751960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265747104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26574716C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_265747230()
{
  result = qword_28001C278;
  if (!qword_28001C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C278);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26574FFC8();
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26574FFC8();
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

uint64_t sub_265747594()
{
  result = sub_26574FFC8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LaunchAssertionInvalidator();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_265747634()
{
  result = sub_265750048();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_265747768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_265747888()
{
  result = sub_265750048();
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

uint64_t sub_265747930()
{
  v1 = v0[3];
  sub_265746FD4(v0[2]);
  v2 = v0[4];

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_265747984()
{
  result = qword_28001C2E8;
  if (!qword_28001C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C2E8);
  }

  return result;
}

void *sub_2657479DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a3;
  v8 = sub_265750118();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_265750138();
  v27 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v4[2] = 0;
  v4[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C3E0, &qword_265751D00);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v4[3] = a2;
  v4[4] = v18;
  v4[2] = a1;
  sub_265747F2C(0, &qword_28001C2F0, 0x277D85C78);

  v19 = sub_2657502A8();
  sub_265750128();
  MEMORY[0x26675C820](v15, a3);
  v20 = *(v11 + 8);
  v20(v15, v10);
  aBlock[4] = sub_265747F74;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2657434D0;
  aBlock[3] = &block_descriptor_0;
  _Block_copy(aBlock);
  v29 = MEMORY[0x277D84F90];
  sub_265747F90();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C300, &qword_265751D08);
  sub_265747FE8();
  sub_2657502F8();
  v21 = sub_265750158();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_265750148();

  sub_265750298();

  v24 = sub_265750108();
  (*(*(v24 - 8) + 8))(v28, v24);
  v20(v17, v27);
  return v4;
}

uint64_t sub_265747D04()
{
  v0 = sub_265750048();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265747F2C(0, &qword_28001C268, 0x277CC1E90);
  sub_265750038();
  v5 = sub_265750028();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  (*(v1 + 8))(v4, v0);
  v13 = sub_265744950(v5, v7, v9, v11);
  v14 = [v13 bundleIdentifier];

  if (!v14)
  {
    return 0;
  }

  v15 = sub_2657501C8();

  return v15;
}

uint64_t sub_265747F2C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_265747F90()
{
  result = qword_28001C2F8;
  if (!qword_28001C2F8)
  {
    sub_265750118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C2F8);
  }

  return result;
}

unint64_t sub_265747FE8()
{
  result = qword_28001C308;
  if (!qword_28001C308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28001C300, &qword_265751D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C308);
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

Swift::Bool __swiftcall _BrowserEngineEntitlement.check(auditToken:)(audit_token_t_optional *auditToken)
{
  v2 = *auditToken->value.val;
  v3 = *&auditToken->value.val[2];
  v4 = *&auditToken->value.val[4];
  v5 = *&auditToken->value.val[6];
  v6 = sub_265750048();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (auditToken->is_nil)
  {
    sub_265750038();
    sub_265750028();
    (*(v7 + 8))(v10, v6);
  }

  sub_265750058();
  v11 = sub_265750008();
  (*(v7 + 8))(v10, v6);
  return v11 & 1;
}

uint64_t sub_2657482D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  (*(a2 + 56))(a1, a2);
  v7 = *(a2 + 8);
  v10[3] = a1;
  v10[4] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  sub_265748960(v10, a3);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_26574839C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t (*a3)(void)@<X4>, void *a4@<X8>)
{
  v8 = v4;
  v10 = *(v4 + *(a1 + 20));
  sub_265746E64();
  v13[3] = a1;
  v13[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_26574B8D4(v8, boxed_opaque_existential_1, a3);
  sub_265748960(v13, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _Capability.Grant.invalidate()()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v1 = *(v0 + 8);
  if (v1)
  {
    [v2 removeObserver_];
  }

  v7[0] = 0;
  if ([v2 invalidateSyncWithError_])
  {
    v3 = v7[0];
    if (v1)
    {
      v4 = v1;
      sub_26574AD38(&OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver__didInvalidate);
    }
  }

  else
  {
    v5 = v7[0];
    sub_26574FE58();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26574854C()
{
  v0 = sub_2657500C8();
  __swift_allocate_value_buffer(v0, qword_28001C5D0);
  __swift_project_value_buffer(v0, qword_28001C5D0);
  return sub_2657500B8();
}

uint64_t ServiceExtensionError.hashValue.getter()
{
  v1 = *v0;
  sub_265750508();
  MEMORY[0x26675CBD0](v1);
  return sub_265750528();
}

uint64_t sub_265748660()
{
  v1 = *v0;
  sub_265750508();
  MEMORY[0x26675CBD0](v1);
  return sub_265750528();
}

uint64_t sub_2657486D4()
{
  v1 = *v0;
  sub_265750508();
  MEMORY[0x26675CBD0](v1);
  return sub_265750528();
}

id sub_265748718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver__willInvalidate];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver__didInvalidate];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver_invalidationLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C3E0, &qword_265751D00);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v4[v11] = v12;
  *v9 = a1;
  *(v9 + 1) = a2;
  *v10 = a3;
  *(v10 + 1) = a4;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for _Capability.AssertionObserver();
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_265748960(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  if (v4 == 3)
  {
    sub_265748C88(a1, *v2, *(v2 + 8), a2);
  }

  else if (v4 == 2)
  {
    v13 = *(v2 + 64);
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);
    v7 = *(v2 + 32);
    v8 = *(v2 + 16);
    v9 = *(v2 + 24);
    v14[0] = *v2;
    v14[1] = v3;
    v14[2] = v8;
    v14[3] = v9;
    v15 = v7;
    v16 = v13;
    v17 = v6;
    v18 = v5;

    sub_26574B9FC(v6);
    sub_26574B9FC(v13);
    sub_265748A80(a1, a2);
    sub_26574BA0C(v14);
  }

  else
  {
    sub_26574B93C();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
  }
}

void sub_265748A80(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C220, &qword_2657515F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_265751D10;
  v11 = sub_2657501B8();
  v12 = sub_2657501B8();
  v13 = [objc_opt_self() attributeWithDomain:v11 name:v12];

  *(v10 + 32) = v13;
  v14 = sub_26574AA34(a1, v8, v9);

  if (!v25)
  {
    v15 = v2[8];
    v16 = v2[6];
    if (v15 | v16)
    {
      v18 = v2[7];
      v19 = v2[9];
      v20 = swift_allocObject();
      *(v20 + 16) = v15;
      *(v20 + 24) = v19;
      v21 = swift_allocObject();
      *(v21 + 16) = v16;
      *(v21 + 24) = v18;
      objc_allocWithZone(type metadata accessor for _Capability.AssertionObserver());
      v22 = v14;
      sub_26574B9FC(v15);
      sub_26574B9FC(v16);
      v17 = sub_265748718(sub_26574BBF0, v20, sub_26574BA3C, v21);
      v23 = v17;
      [v22 addObserver_];
    }

    else
    {
      v17 = 0;
    }

    *a2 = v14;
    a2[1] = v17;
  }
}

void sub_265748C88(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C220, &qword_2657515F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_265751D10;
  *(v8 + 32) = [objc_opt_self() attributeWithCompletionPolicy_];
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_265751D10;
  v10 = sub_2657501B8();
  v11 = sub_2657501B8();
  sub_265747F2C(0, &qword_28001C3F0, 0x277D46DD8);
  v12 = sub_265750218();

  v13 = [objc_opt_self() grantWithNamespace:v10 sourceEnvironment:v11 attributes:v12];

  *(v9 + 32) = v13;
  v14 = sub_26574AA34(a1, a2, a3);

  if (!v4)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = nullsub_1;
    *(v15 + 24) = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = nullsub_1;
    *(v16 + 24) = 0;
    objc_allocWithZone(type metadata accessor for _Capability.AssertionObserver());
    v17 = v14;
    v18 = sub_265748718(sub_26574BBF0, v15, sub_26574BBF0, v16);
    v19 = v18;
    [v17 addObserver_];

    *a4 = v17;
    a4[1] = v18;
  }
}

uint64_t sub_265748F00(char a1)
{
  v2 = *(v1 + 48);
  v21[2] = *(v1 + 32);
  v21[3] = v2;
  v21[4] = *(v1 + 64);
  v22 = *(v1 + 80);
  v3 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v3;
  if (a1)
  {
    sub_2657493CC();
    return 1;
  }

  if (v22 == 3)
  {
    sub_26574B040();
    return 1;
  }

  if (v22 == 2)
  {
    sub_26574B93C();
    v5 = swift_allocError();
    *v6 = 2;
    swift_willThrow();
    if (qword_28001C0B8 != -1)
    {
      swift_once();
    }

    v7 = sub_2657500C8();
    __swift_project_value_buffer(v7, qword_28001C5D0);
    sub_265747E7C(v21, v20);
    v8 = v5;
    v9 = sub_2657500A8();
    v10 = sub_265750288();
    sub_265747ED8(v21);
    if (!os_log_type_enabled(v9, v10))
    {

      return 0;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v11 = 136315394;
    if (v22 == 3)
    {
      v14 = v13;
      v15 = v21[0];

      v16 = sub_26574A2E8(v15, *(&v15 + 1), v20);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2114;
      v17 = v5;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v12 = v18;
      _os_log_impl(&dword_265739000, v9, v10, "Error invalidating root endowment for:%s  %{public}@", v11, 0x16u);
      sub_26573FADC(v12, &qword_28001C3B0, &qword_265752018);
      MEMORY[0x26675D1B0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x26675D1B0](v14, -1, -1);
      MEMORY[0x26675D1B0](v11, -1, -1);

      return 0;
    }

    v19 = v5;
    if (v22 == 2)
    {

      v19 = sub_265750408();
      __break(1u);
    }
  }

  result = sub_265750478();
  __break(1u);
  return result;
}

uint64_t sub_2657493CC()
{
  v1 = *(v0 + 80);
  if (v1 == 2)
  {
LABEL_6:
    sub_26574B93C();
    swift_allocError();
    *v13 = v1;
    return swift_willThrow();
  }

  if (v1 == 3)
  {
    v3 = *v0;
    v2 = v0[1];
    v5 = v0[2];
    v4 = v0[3];
    v6 = objc_opt_self();

    v7 = [v6 mainBundle];
    v8 = [v7 bundleIdentifier];

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3C0, &qword_265752020);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_265751350;
      *(inited + 32) = 0xD000000000000010;
      v10 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = 0x8000000265752A30;
      *(inited + 48) = v5;
      *(inited + 56) = v4;
      v11 = sub_26574F030(inited);
      swift_setDeallocating();
      sub_26573FADC(v10, &qword_28001C3C8, &qword_265752028);
      sub_265749590(v11);

      sub_26574AF28();
    }

    LOBYTE(v1) = 1;
    goto LABEL_6;
  }

  result = sub_265750478();
  __break(1u);
  return result;
}

uint64_t sub_265749590(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3D0, &qword_265752030);
    v2 = sub_265750438();
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
    sub_26574B990(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_26574B9EC(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_26574B9EC(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_26574B9EC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_265750378();
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
    result = sub_26574B9EC(v33, (*(v2 + 56) + 32 * v10));
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

id static _SECapability.assertion(domain:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for _SECapability();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____SECapability_inner];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  *(v10 + 6) = nullsub_1;
  *(v10 + 7) = 0;
  *(v10 + 8) = nullsub_1;
  *(v10 + 9) = 0;
  v10[80] = 2;
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

id static _SECapability.assertion(domain:name:environmentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for _SECapability();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____SECapability_inner];
  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  *(v14 + 5) = a6;
  *(v14 + 6) = nullsub_1;
  *(v14 + 7) = 0;
  *(v14 + 8) = nullsub_1;
  *(v14 + 9) = 0;
  v14[80] = 2;
  v16.receiver = v13;
  v16.super_class = v12;

  return objc_msgSendSuper2(&v16, sel_init);
}

id static _SECapability.assertion(domain:name:environmentIdentifier:willInvalidate:didInvalidate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = type metadata accessor for _SECapability();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____SECapability_inner];
  *v19 = a1;
  *(v19 + 1) = a2;
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *(v19 + 4) = a5;
  *(v19 + 5) = a6;
  *(v19 + 6) = a7;
  *(v19 + 7) = a8;
  *(v19 + 8) = a9;
  *(v19 + 9) = a10;
  v19[80] = 2;
  v22.receiver = v18;
  v22.super_class = v17;

  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_265749E28(char a1)
{
  v3 = *(v1 + OBJC_IVAR____SECapability_inner + 48);
  v4 = *(v1 + OBJC_IVAR____SECapability_inner + 16);
  v16 = *(v1 + OBJC_IVAR____SECapability_inner + 32);
  v17 = v3;
  v5 = *(v1 + OBJC_IVAR____SECapability_inner + 48);
  v18 = *(v1 + OBJC_IVAR____SECapability_inner + 64);
  v6 = *(v1 + OBJC_IVAR____SECapability_inner + 16);
  v15[0] = *(v1 + OBJC_IVAR____SECapability_inner);
  v15[1] = v6;
  v11 = v16;
  v12 = v5;
  v13 = *(v1 + OBJC_IVAR____SECapability_inner + 64);
  v19 = *(v1 + OBJC_IVAR____SECapability_inner + 80);
  v14 = *(v1 + OBJC_IVAR____SECapability_inner + 80);
  v9 = v15[0];
  v10 = v4;
  sub_265747E7C(v15, v20);
  v7 = sub_265748F00(a1);
  v20[2] = v11;
  v20[3] = v12;
  v20[4] = v13;
  v21 = v14;
  v20[0] = v9;
  v20[1] = v10;
  sub_265747ED8(v20);
  return v7 & 1;
}

id _SECapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_26574A1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_26574A1D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C3E0, &qword_265751D00);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_28001C310 = result;
  return result;
}

uint64_t sub_26574A218()
{
  v0 = sub_265750048();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265750038();
  v5 = _s17ServiceExtensions15_BrowserProcessV17processIdentifiers5Int32Vvg_0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_26574A2E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26574A3B4(v11, 0, 0, 1, a1, a2);
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
    sub_26574B990(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26574A3B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26574A4C0(a5, a6);
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
    result = sub_2657503F8();
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

uint64_t sub_26574A4C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_26574A50C(a1, a2);
  sub_26574A63C(&unk_287710B80);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26574A50C(uint64_t a1, unint64_t a2)
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

  v6 = sub_26574A728(v5, 0);
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

  result = sub_2657503F8();
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
        v10 = sub_265750208();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26574A728(v10, 0);
        result = sub_2657503D8();
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

uint64_t sub_26574A63C(uint64_t result)
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

  result = sub_26574A79C(result, v12, 1, v3);
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

void *sub_26574A728(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3D8, &qword_265752038);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26574A79C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3D8, &qword_265752038);
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

id sub_26574A890(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3C0, &qword_265752020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265751D20;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2657501C8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v4;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x8000000265752AB0;
  v5 = *MEMORY[0x277CCA7E8];
  *(inited + 80) = sub_2657501C8();
  *(inited + 88) = v6;
  *(inited + 120) = sub_265747F2C(0, &qword_28001C3F8, 0x277CCA9B8);
  *(inited + 96) = a1;
  v7 = a1;
  sub_26574F030(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3C8, &qword_265752028);
  swift_arrayDestroy();
  v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v9 = sub_2657501B8();
  v10 = sub_265750178();

  v11 = [v8 initWithDomain:v9 code:0 userInfo:v10];

  return v11;
}

id sub_26574AA34(void *a1, uint64_t a2, uint64_t a3)
{
  v24[2] = *MEMORY[0x277D85DE8];
  sub_2657503E8();

  v24[0] = 0xD00000000000002ELL;
  v24[1] = 0x8000000265752A50;
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = *(v5 + 8);
  v7(v6, v5);
  v8 = sub_265750458();
  MEMORY[0x26675C8B0](v8);

  if (a3)
  {
    v9 = (v7)(v6, v5);
    v10 = sub_2657501B8();
    v11 = [objc_opt_self() targetWithPid:v9 environmentIdentifier:v10];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
  }

  v23 = (v7)(v6, v5);
  v11 = [objc_opt_self() targetWithPid_];
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  v12 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v13 = v11;
  v14 = sub_2657501B8();

  sub_265747F2C(0, &qword_28001C3F0, 0x277D46DD8);
  v15 = sub_265750218();
  v16 = [v12 initWithExplanation:v14 target:v13 attributes:v15];

  v24[0] = 0;
  if ([v16 acquireWithError_])
  {
    v17 = v24[0];
  }

  else
  {
    v18 = v24[0];
    v19 = sub_26574FE58();

    swift_willThrow();
    [v16 invalidate];
    v20 = sub_26574FE48();
    sub_26574A890(v20);

    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_26574AD38(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver_invalidationLock);
  os_unfair_lock_lock(v3 + 4);
  v4 = v1 + *a1;
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
    v5();
    sub_265746FD4(v5);
  }

  os_unfair_lock_unlock(v3 + 4);
}

id sub_26574AF28()
{
  result = [objc_opt_self() sharedAVSystemController];
  if (result)
  {
    v1 = result;
    v2 = sub_2657501B8();
    v3 = sub_265750178();
    v4 = [v1 grantMediaEndowmentWithEnvironmentID:v2 endowmentPayload:v3];

    result = sub_2657500F8();
    if (v4 != result)
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:0];
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_26574B040()
{
  result = [objc_opt_self() sharedAVSystemController];
  if (result)
  {
    v1 = result;
    v2 = sub_2657501B8();
    v3 = [v1 revokeMediaEndowmentWithEnvironmentID_];

    result = sub_2657500F8();
    if (v3 != result)
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA590] code:v3 userInfo:0];
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s17ServiceExtensions13_SECapabilityC9assertion7websiteACSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = sub_2657501C8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  getpid();
  if (qword_28001C0C0 != -1)
  {
    swift_once();
  }

  v9 = qword_28001C310;

  os_unfair_lock_lock(v9 + 4);

  if (__OFADD__(qword_28001C318, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_28001C318;
    *&v20 = sub_265750458();
    *(&v20 + 1) = v11;
    MEMORY[0x26675C8B0](45, 0xE100000000000000);
    v19 = qword_28001C318;
    v12 = sub_265750458();
    MEMORY[0x26675C8B0](v12);

    MEMORY[0x26675C8B0](45, 0xE100000000000000);
    MEMORY[0x26675C8B0](v6, v8);

    v13 = qword_28001C310;

    os_unfair_lock_unlock(v13 + 4);

    v14 = type metadata accessor for _SECapability();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR____SECapability_inner];
    *v16 = v20;
    *(v16 + 2) = a1;
    *(v16 + 3) = a2;
    v17 = v21;
    *(v16 + 2) = v20;
    *(v16 + 3) = v17;
    *(v16 + 4) = v22;
    v16[80] = 3;
    v18.receiver = v15;
    v18.super_class = v14;

    return objc_msgSendSuper2(&v18, sel_init);
  }

  return result;
}

unint64_t sub_26574B360()
{
  result = qword_28001C328;
  if (!qword_28001C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceExtensionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ServiceExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_s5Error_pIegzo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26574B54C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26574B594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26574B614(uint64_t *a1, int a2)
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

uint64_t sub_26574B65C(uint64_t result, int a2, int a3)
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

void sub_26574B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 <= 1u)
  {
    if (a11 && a11 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (a11 != 2)
  {
    if (a11 != 3)
    {
      return;
    }

LABEL_8:

    return;
  }

  sub_265746FD4(a7);

  sub_265746FD4(a9);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

uint64_t sub_26574B8D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26574B93C()
{
  result = qword_28001C3B8;
  if (!qword_28001C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C3B8);
  }

  return result;
}

uint64_t sub_26574B990(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_26574B9EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26574B9FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26574BA94()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_26574BAE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26574BB28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NetworkingServiceExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26574FEE8();
}

uint64_t sub_26574BDE0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[3];
  v8 = a1[2];
  v9 = v2;
  v10 = a1[4];
  v11 = *(a1 + 80);
  v3 = a1[1];
  v6 = *a1;
  v7 = v3;
  v5[3] = &type metadata for Process;
  v5[4] = &off_287711558;
  sub_265748960(v5, a2);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

id _SEHostingHandle.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  if (!a1)
  {
    goto LABEL_14;
  }

  v4 = MEMORY[0x26675D2B0](a1);
  if (v4 != sub_2657500E8() || xpc_dictionary_get_count(a1) != 2 || (v5 = xpc_dictionary_get_value(a1, "pid")) == 0)
  {
LABEL_13:
    swift_unknownObjectRelease();
LABEL_14:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v5;
  v7 = swift_unknownObjectRetain();
  v8 = MEMORY[0x26675D2B0](v7);
  if (v8 != sub_2657500D8())
  {
    goto LABEL_6;
  }

  value = xpc_uint64_get_value(v6);
  swift_unknownObjectRelease();
  if (value - 0x80000000 < 0xFFFFFFFF80000001)
  {
    goto LABEL_11;
  }

  v10 = xpc_dictionary_get_value(a1, "cid");
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = MEMORY[0x26675D2B0]();
  if (v12 != sub_2657500D8())
  {
LABEL_6:
    swift_unknownObjectRelease();
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v13 = xpc_uint64_get_value(v11);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v13 - 0x100000000 < 0xFFFFFFFF00000001)
  {
    goto LABEL_13;
  }

  *&v1[OBJC_IVAR____SEHostingHandle_pid] = value;
  *&v1[OBJC_IVAR____SEHostingHandle_contextID] = v13;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v16, sel_init);
  swift_unknownObjectRelease();
  return v15;
}

xpc_object_t _SEHostingHandle.xpcRepresentation()()
{
  result = xpc_dictionary_create_empty();
  v2 = *(v0 + OBJC_IVAR____SEHostingHandle_pid);
  if ((v2 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    xpc_dictionary_set_uint64(result, "pid", v2);
    xpc_dictionary_set_uint64(v3, "cid", *(v0 + OBJC_IVAR____SEHostingHandle_contextID));
    return v3;
  }

  return result;
}

id _SEHostingHandle.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2657501B8();
  v5 = [a1 decodeInt32ForKey_];

  if (v5 >= 1 && (v6 = sub_2657501B8(), v7 = [a1 decodeInt32ForKey_], v6, v7))
  {
    *&v1[OBJC_IVAR____SEHostingHandle_pid] = v5;
    *&v1[OBJC_IVAR____SEHostingHandle_contextID] = v7;
    v10.receiver = v1;
    v10.super_class = ObjectType;
    v8 = objc_msgSendSuper2(&v10, sel_init);

    return v8;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

Swift::Void __swiftcall _SEHostingHandle.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____SEHostingHandle_pid);
  v4 = sub_2657501B8();
  [(objc_class *)with.super.isa encodeInt32:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____SEHostingHandle_contextID);
  v6 = sub_2657501B8();
  [(objc_class *)with.super.isa encodeInt32:v5 forKey:v6];
}

id _SEHostable.layer.getter()
{
  v1 = [*(v0 + OBJC_IVAR____SEHostable__context) layer];

  return v1;
}

void _SEHostable.layer.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____SEHostable__context) setLayer_];
}

void (*_SEHostable.layer.modify(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____SEHostable__context);
  a1[1] = v3;
  *a1 = [v3 layer];
  return sub_26574C6BC;
}

void sub_26574C6BC(id *a1)
{
  v1 = *a1;
  [a1[1] setLayer_];
}

id sub_26574C8D8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall _SEHostable.invalidate()()
{
  if ([*(v0 + OBJC_IVAR____SEHostable__invalidationSignal) signal])
  {
    v1 = *(v0 + OBJC_IVAR____SEHostable__context);

    [v1 invalidate];
  }
}

void *sub_26574CAD8()
{
  v1 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26574CBA0(void *a1)
{
  v3 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_26574CC6C();
}

uint64_t sub_26574CC08(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return sub_26574CC6C();
}

uint64_t sub_26574CC6C()
{
  v1 = OBJC_IVAR____SEHostingView__visibility;
  v2 = *&v0[OBJC_IVAR____SEHostingView__visibility];
  v3 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  v4 = *&v0[v3];
  swift_unknownObjectRetain();
  if (v4)
  {
    v5 = v4;
    v6 = [v0 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setContextId_];
    v7 = *&v5[OBJC_IVAR____SEHostingHandle_pid];
    v8 = sub_2657501B8();
    v9 = [objc_opt_self() interactionWithPID:v7 environmentIdentifier:v8];

    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  v11 = *&v0[v1];
  *&v0[v1] = v9;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v9)
  {
    [v0 addInteraction_];
    swift_unknownObjectRelease();
  }

  if (v2)
  {
    [v0 removeInteraction_];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t (*sub_26574CE18(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26574CE7C;
}

uint64_t sub_26574CE7C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_26574CC6C();
  }

  return result;
}

id _SEHostingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id _SEHostingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____SEHostingView__visibility] = 0;
  *&v4[OBJC_IVAR____SEHostingView_handle] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for _SEHostingView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id _SEHostingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id _SEHostingView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____SEHostingView__visibility] = 0;
  *&v1[OBJC_IVAR____SEHostingView_handle] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _SEHostingView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id _SEHostingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _SEHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _SEHostingUpdateCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _SEHostingUpdateCoordinator.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____SEHostingUpdateCoordinator__commitLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C3E0, &qword_265751D00);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v4 = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostables] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostingViews] = v4;
  v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_committed] = 0;
  *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__fence] = [objc_opt_self() newFenceFromDefaultServer];
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id _SEHostingUpdateCoordinator.__allocating_init(from:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26574F6A4(a1);
  swift_unknownObjectRelease();
  return v4;
}

id _SEHostingUpdateCoordinator.init(from:)(uint64_t a1)
{
  v1 = sub_26574F6A4(a1);
  swift_unknownObjectRelease();
  return v1;
}

id _SEHostingUpdateCoordinator.xpcRepresentation()()
{
  result = *(v0 + OBJC_IVAR____SEHostingUpdateCoordinator__fence);
  if (result)
  {
    return [result createXPCRepresentation];
  }

  return result;
}

id _SEHostingUpdateCoordinator.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26574F78C();

  return v4;
}

id _SEHostingUpdateCoordinator.init(coder:)(void *a1)
{
  v2 = sub_26574F78C();

  return v2;
}

Swift::Void __swiftcall _SEHostingUpdateCoordinator.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____SEHostingUpdateCoordinator__fence);
  v4 = sub_2657501B8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id _SEHostingUpdateCoordinator.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock];

  os_unfair_lock_lock(v2 + 4);
  sub_26574F878();
  os_unfair_lock_unlock(v2 + 4);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void _SEHostingUpdateCoordinator.add(_:)(char *a1)
{
  v3 = *(v1 + OBJC_IVAR____SEHostingUpdateCoordinator__commitLock);
  os_unfair_lock_lock(v3 + 4);
  if (*(v1 + OBJC_IVAR____SEHostingUpdateCoordinator__fence))
  {
    [*&a1[OBJC_IVAR____SEHostable__context] addFence_];
  }

  swift_beginAccess();
  sub_26574E470(&v4, a1, type metadata accessor for _SEHostable, &qword_28001C4F8, &qword_265752208, type metadata accessor for _SEHostable);
  swift_endAccess();

  os_unfair_lock_unlock(v3 + 4);
}

void _SEHostingUpdateCoordinator.add(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____SEHostingUpdateCoordinator__commitLock);
  os_unfair_lock_lock(v3 + 4);
  v4 = *(v1 + OBJC_IVAR____SEHostingUpdateCoordinator__fence);
  if (v4)
  {
    v5 = v4;
    v6 = [a1 window];
    v7 = [v6 _boundContext];

    [v7 addFence_];
  }

  swift_beginAccess();
  sub_26574E470(&v8, a1, type metadata accessor for _SEHostingView, &qword_28001C4F0, &qword_265752200, type metadata accessor for _SEHostingView);
  swift_endAccess();

  os_unfair_lock_unlock(v3 + 4);
}

Swift::Void __swiftcall _SEHostingUpdateCoordinator.commit()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____SEHostingUpdateCoordinator__commitLock);
  os_unfair_lock_lock(v2 + 4);
  *(v0 + OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_committed) = 1;
  v3 = *(v0 + OBJC_IVAR____SEHostingUpdateCoordinator__fence);
  v4 = 0x28001C000;
  if (!v3)
  {
LABEL_44:
    v45 = OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostables;
    swift_beginAccess();
    v46 = *(v1 + v45);
    v47 = MEMORY[0x277D84FA0];
    *(v1 + v45) = MEMORY[0x277D84FA0];

    v48 = *(v4 + 1112);
    swift_beginAccess();
    v49 = *(v1 + v48);
    *(v1 + v48) = v47;

    [v3 invalidate];
    os_unfair_lock_unlock(v2 + 4);
    return;
  }

  v50 = v2;
  v5 = OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostables;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *(v1 + v5);
    }

    v8 = v3;

    sub_265750338();
    type metadata accessor for _SEHostable();
    sub_26574FBE0(&qword_28001C470, v9, type metadata accessor for _SEHostable);
    sub_265750278();
    v6 = v52;
    v10 = v53;
    v11 = v54;
    v12 = v55;
    v13 = v56;
  }

  else
  {
    v14 = -1 << *(v6 + 32);
    v10 = v6 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v6 + 56);
    v17 = v3;

    v12 = 0;
  }

  v18 = (v11 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v19 = v12;
    v20 = v13;
    v21 = v12;
    if (!v13)
    {
      break;
    }

LABEL_15:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v6 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_21;
    }

    while (1)
    {
      [*&v23[OBJC_IVAR____SEHostable__context] addFence_];

      v12 = v21;
      v13 = v22;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_17:
      v24 = sub_265750368();
      if (v24)
      {
        v51 = v24;
        type metadata accessor for _SEHostable();
        swift_dynamicCast();
        v23 = v57;
        v21 = v12;
        v22 = v13;
        if (v57)
        {
          continue;
        }
      }

      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v21 >= v18)
    {
      break;
    }

    v20 = *(v10 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_15;
    }
  }

LABEL_21:
  sub_26574F8C4();
  v25 = OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostingViews;
  swift_beginAccess();
  v26 = *(v1 + v25);
  if ((v26 & 0xC000000000000001) != 0)
  {
    if (v26 < 0)
    {
      v27 = *(v1 + v25);
    }

    sub_265750338();
    type metadata accessor for _SEHostingView();
    sub_26574FBE0(&unk_28001C478, v28, type metadata accessor for _SEHostingView);
    sub_265750278();
    v26 = v57;
    v29 = v58;
    v30 = v59;
    v31 = v60;
    v32 = v61;
  }

  else
  {
    v33 = -1 << *(v26 + 32);
    v29 = v26 + 56;
    v30 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v26 + 56);

    v31 = 0;
  }

  v36 = (v30 + 64) >> 6;
  while (v26 < 0)
  {
    if (!sub_265750368() || (type metadata accessor for _SEHostingView(), swift_dynamicCast(), v41 = v51, v39 = v31, v40 = v32, !v51))
    {
LABEL_43:
      sub_26574F8C4();

      v2 = v50;
      v4 = 0x28001C000uLL;
      goto LABEL_44;
    }

LABEL_40:
    v42 = [v41 window];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 _boundContext];

      if (v44)
      {
        [v44 addFence_];
      }
    }

    v31 = v39;
    v32 = v40;
  }

  v37 = v31;
  v38 = v32;
  v39 = v31;
  if (v32)
  {
LABEL_36:
    v40 = (v38 - 1) & v38;
    v41 = *(*(v26 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
    if (!v41)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v36)
    {
      goto LABEL_43;
    }

    v38 = *(v29 + 8 * v39);
    ++v37;
    if (v38)
    {
      goto LABEL_36;
    }
  }

LABEL_46:
  __break(1u);
}

unint64_t sub_26574DFC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_265750488())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26574E080(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26574FED8();
  sub_26574FBE0(&qword_28001C1B8, 255, MEMORY[0x277CC95F0]);
  v5 = sub_265750198();

  return sub_26574E1E4(a1, v5);
}

uint64_t sub_26574E11C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_265750508();
  sub_2657501E8();
  v7 = sub_265750528();

  return a3(a1, a2, v7);
}

unint64_t sub_26574E1A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_265750378();

  return sub_26574E3A8(a1, v5);
}

unint64_t sub_26574E1E4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_26574FED8();
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
      sub_26574FBE0(&unk_28001C530, 255, MEMORY[0x277CC95F0]);
      v16 = sub_2657501A8();
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

unint64_t sub_26574E3A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26574FB30(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26675CA40](v9, a1);
      sub_26574FB8C(v9);
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

uint64_t sub_26574E470(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_265750358();

    if (v17)
    {

      a3();
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_265750348();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_26574E6CC(v15, result + 1, a4, a5, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_26574E8C0(v30 + 1, a4, a5);
        }

        v31 = v16;
        sub_26574EAE0(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    a3();
    v19 = *(v14 + 40);
    v20 = sub_2657502C8();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_2657502D8();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v28 = a2;
      sub_26574EB64(v28, v22, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v38;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_26574E6CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_2657503C8();
    v22 = v8;
    sub_265750338();
    if (sub_265750368())
    {
      a5();
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          sub_26574E8C0(v16 + 1, a3, a4);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_2657502C8();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_265750368());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_26574E8C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2657503B8();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_2657502C8();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_26574EAE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2657502C8();
  v5 = -1 << *(a2 + 32);
  result = sub_265750328();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_26574EB64(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_26574E8C0(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_26574ECE4(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_26574EE24(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_2657502C8();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11();
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_2657502D8();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_265750498();
  __break(1u);
}

id sub_26574ECE4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2657503A8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_26574EE24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2657503B8();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_2657502C8();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

unint64_t sub_26574F030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C510, &unk_265752210);
    v3 = sub_265750438();
    v4 = a1 + 32;

    while (1)
    {
      sub_26574FAC8(v4, &v13, &qword_28001C3C8, &qword_265752028);
      v5 = v13;
      v6 = v14;
      result = sub_26574E11C(v13, v14, sub_26574DFC8);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26574B9EC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_26574F174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3D0, &qword_265752030);
    v3 = sub_265750438();
    v4 = a1 + 32;

    while (1)
    {
      sub_26574FAC8(v4, v13, &qword_28001C528, &qword_265752228);
      result = sub_26574E1A0(v13);
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
      result = sub_26574B9EC(&v15, (v3[7] + 32 * result));
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

id sub_26574F2B0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____SEHostable__context;
  *&v1[OBJC_IVAR____SEHostable__context] = a1;
  v5 = objc_allocWithZone(MEMORY[0x277CF0B80]);
  v6 = a1;
  v7 = [v5 init];
  *&v1[OBJC_IVAR____SEHostable__invalidationSignal] = v7;
  LODWORD(a1) = getpid();
  LODWORD(v5) = [*&v1[v4] contextId];
  v8 = type metadata accessor for _SEHostingHandle();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____SEHostingHandle_pid] = a1;
  *&v9[OBJC_IVAR____SEHostingHandle_contextID] = v5;
  v12.receiver = v9;
  v12.super_class = v8;
  *&v1[OBJC_IVAR____SEHostable_handle] = objc_msgSendSuper2(&v12, sel_init);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_26574F39C()
{
  v0 = sub_26574FE18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = sub_265750178();
  v7 = [v5 remoteContextWithOptions_];

  if (v7)
  {
    v8 = objc_allocWithZone(type metadata accessor for _SEHostable());
    v9 = sub_26574F2B0(v7);

    return v9;
  }

  else
  {
    v11[3] = 1;
    sub_26574F030(MEMORY[0x277D84F90]);
    sub_26574FBE0(&qword_28001C508, 255, MEMORY[0x277CC8658]);
    sub_26574FE38();
    sub_26574FE08();
    (*(v1 + 8))(v4, v0);
    return swift_willThrow();
  }
}

uint64_t sub_26574F574()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C520, &qword_265752220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265751350;
  v1 = *MEMORY[0x277CDA118];
  sub_2657501C8();

  result = sub_265750398();
  if (*MEMORY[0x277CBED28])
  {
    v3 = *MEMORY[0x277CBED28];

    type metadata accessor for CFBoolean(0);
    *(inited + 96) = v4;
    *(inited + 72) = v3;
    sub_26574F174(inited);
    swift_setDeallocating();
    sub_26574FA60(inited + 32);
    v5 = sub_26574F39C();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_26574F6A4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____SEHostingUpdateCoordinator__commitLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C3E0, &qword_265751D00);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  v6 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostables] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostingViews] = v6;
  v1[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_committed] = 0;
  if (a1)
  {
    v7 = [objc_opt_self() handleFromXPCRepresentation_];
  }

  else
  {
    v7 = 0;
  }

  *&v1[OBJC_IVAR____SEHostingUpdateCoordinator__fence] = v7;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_26574F78C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____SEHostingUpdateCoordinator__commitLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C3E0, &qword_265751D00);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v4 = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostables] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostingViews] = v4;
  v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_committed] = 0;
  sub_265747F2C(0, &qword_28001C500, 0x277CD9E90);
  *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__fence] = sub_2657502B8();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_26574F878()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26574FA60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C528, &qword_265752228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26574FAC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26574FBE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _LockdownVersion.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_265750448();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_26574FC98()
{
  result = qword_28001C5A0;
  if (!qword_28001C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C5A0);
  }

  return result;
}

uint64_t sub_26574FCEC()
{
  sub_265750508();
  sub_2657501E8();
  return sub_265750528();
}

uint64_t sub_26574FD48()
{
  sub_265750508();
  sub_2657501E8();
  return sub_265750528();
}

uint64_t sub_26574FD90@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_265750448();

  *a2 = v5 != 0;
  return result;
}