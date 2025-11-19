uint64_t sub_21AF542EC(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database);
  *(*a2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database) = *a1;
}

uint64_t sub_21AF54338()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21AF54370()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21AF543A8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21AF543E0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21AF76648();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21AF5448C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21AF76648();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21AF54530()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21AF54568()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21AF545A0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21AF546A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21AF546C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  swift_beginAccess();
  return sub_21AF5597C(v3 + v4, a2, &qword_27CD40298, &unk_21AF77180);
}

uint64_t sub_21AF54734(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_21AF5597C(a1, &v11 - v6, &qword_27CD40298, &unk_21AF77180);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  swift_beginAccess();
  sub_21AF55914(v7, v8 + v9, &qword_27CD40298, &unk_21AF77180);
  return swift_endAccess();
}

uint64_t sub_21AF54814@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  swift_beginAccess();
  return sub_21AF5597C(v1 + v3, a1, &qword_27CD40298, &unk_21AF77180);
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

uint64_t sub_21AF548C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  swift_beginAccess();
  sub_21AF55914(a1, v1 + v3, &qword_27CD40298, &unk_21AF77180);
  return swift_endAccess();
}

uint64_t sub_21AF54998@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21AF549F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_21AF54A5C()
{
  v1 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_21AF54AA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t UDFSchemaProvider.__allocating_init(columns:manifest:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  v10 = sub_21AF76468();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  swift_weakInit();
  v11 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  v12 = sub_21AF763E8();
  (*(*(v12 - 8) + 56))(v8 + v11, 1, 1, v12);
  *(v8 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns) = a1;
  swift_beginAccess();
  sub_21AF55914(a2, v8 + v9, &qword_27CD40298, &unk_21AF77180);
  swift_endAccess();
  return v8;
}

uint64_t UDFSchemaProvider.init(columns:manifest:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  v6 = sub_21AF76468();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  swift_weakInit();
  v7 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  v8 = sub_21AF763E8();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns) = a1;
  swift_beginAccess();
  sub_21AF55914(a2, v2 + v5, &qword_27CD40298, &unk_21AF77180);
  swift_endAccess();
  return v2;
}

uint64_t UDFSchemaProvider.getSchemaStore()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A0, &unk_21AF77960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  swift_beginAccess();
  sub_21AF5597C(v1 + v7, v6, &qword_27CD402A0, &unk_21AF77960);
  v8 = sub_21AF763E8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_21AF567F8(v6, &qword_27CD402A0, &unk_21AF77960);
  result = sub_21AF76A18();
  __break(1u);
  return result;
}

void *UDFSchemaProvider.configure(withContext:)()
{
  v2 = sub_21AF763E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21AF66B18();
  if (!v1)
  {
    type metadata accessor for MessageInBlobBridge();
    if (!swift_dynamicCastClass())
    {
      swift_unknownObjectRelease();
    }

    swift_weakAssign();

    sub_21AF66848();
    swift_getObjectType();
    sub_21AF765B8();
    swift_unknownObjectRelease();
    (*(*v0 + 216))(v6);
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_21AF55104(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A0, &unk_21AF77960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_21AF763E8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  swift_beginAccess();
  sub_21AF55914(v6, v1 + v9, &qword_27CD402A0, &unk_21AF77960);
  return swift_endAccess();
}

uint64_t UDFSchemaProvider.sqlValue(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21AF76738();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v43 - v12);
  sub_21AF5597C(a1, &v43 - v12, &qword_27CD402A8, &qword_21AF77190);
  v14 = sub_21AF766F8();
  result = (*(*(v14 - 8) + 48))(v13, 1, v14);
  if (result == 1)
  {
    v16 = 0uLL;
    *(a2 + 16) = 0u;
LABEL_3:
    *a2 = v16;
    return result;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result > 4)
  {
    if (result <= 7)
    {
      if (result == 5)
      {
        v22 = *v13;
        *(a2 + 24) = MEMORY[0x277D839F8];
        *a2 = v22;
      }

      else if (result == 6)
      {
        v17 = *v13;
        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v17;
      }

      else
      {
        (*(v6 + 32))(v9, v13, v5);
        v26 = sub_21AF76728();
        if (!v2)
        {
          *(a2 + 24) = MEMORY[0x277D837D0];
          *a2 = v26;
          *(a2 + 8) = v27;
        }

        return (*(v6 + 8))(v9, v5);
      }

      return result;
    }

    if (result == 8)
    {
      v23 = *v13;
      v24 = v13[1];
      *(a2 + 24) = MEMORY[0x277D837D0];
      *a2 = v23;
      *(a2 + 8) = v24;
      return result;
    }

    if (result == 9)
    {
      *(a2 + 24) = MEMORY[0x277CC9318];
      v16 = *v13;
      goto LABEL_3;
    }

    v28 = *v13;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_45:
      result = sub_21AF76A18();
      __break(1u);
      return result;
    }

    v30 = Strong;
    v31 = sub_21AF764A8();
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 != 2)
      {
        sub_21AF559E4(v31, v32);
        v35 = 0;
        goto LABEL_39;
      }

      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      v31 = sub_21AF559E4(v31, v32);
      v35 = v36 - v37;
      if (!__OFSUB__(v36, v37))
      {
        goto LABEL_39;
      }

      __break(1u);
    }

    else if (!v33)
    {
      v34 = BYTE6(v32);
      sub_21AF559E4(v31, v32);
      v35 = v34;
      goto LABEL_39;
    }

    v38 = HIDWORD(v31);
    v39 = v31;
    sub_21AF559E4(v31, v32);
    LODWORD(v35) = v38 - v39;
    if (__OFSUB__(v38, v39))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v35 = v35;
LABEL_39:
    if (!__OFADD__(v35, 4))
    {
      v43 = sub_21AF56704(v35 + 4);
      v44 = v40;

      sub_21AF55A38(&v43, v30, v28);
      if (v2)
      {

        return sub_21AF559E4(v43, v44);
      }

      else
      {
        v41 = v43;
        v42 = v44;
        *(a2 + 24) = MEMORY[0x277CC9318];
        sub_21AF567A4(v41, v42);

        *a2 = v41;
        *(a2 + 8) = v42;
        return sub_21AF559E4(v41, v42);
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      v18 = *v13;
      v19 = MEMORY[0x277D84A28];
    }

    else
    {
      if (result != 3)
      {
        v25 = *v13;
        *(a2 + 24) = MEMORY[0x277D83A90];
        *a2 = v25;
        return result;
      }

      v18 = *v13;
      v19 = MEMORY[0x277D84D38];
    }

    *(a2 + 24) = v19;
    *a2 = v18;
    return result;
  }

  v20 = *v13;
  if (result)
  {
    v21 = MEMORY[0x277D84CC0];
  }

  else
  {
    v21 = MEMORY[0x277D849A8];
  }

  *(a2 + 24) = v21;
  *a2 = v20;
  return result;
}

uint64_t UDFSchemaProvider.deinit()
{
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest, &qword_27CD40298, &unk_21AF77180);
  v1 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns);

  swift_weakDestroy();
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore, &qword_27CD402A0, &unk_21AF77960);
  return v0;
}

uint64_t UDFSchemaProvider.__deallocating_deinit()
{
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest, &qword_27CD40298, &unk_21AF77180);
  v1 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns);

  swift_weakDestroy();
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore, &qword_27CD402A0, &unk_21AF77960);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t sub_21AF557F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  swift_beginAccess();
  return sub_21AF5597C(v3 + v4, a1, &qword_27CD40298, &unk_21AF77180);
}

uint64_t sub_21AF558C8()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_21AF55914(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_21AF5597C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21AF559E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21AF55A38(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v88 = a2;
  v92 = *MEMORY[0x277D85DE8];
  v5 = sub_21AF76448();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v76 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v76 - v14;
  v87 = a1;
  v17 = *a1;
  v16 = a1[1];
  v18 = v16 >> 62;
  if ((v16 >> 62) <= 1)
  {
    if (v18)
    {
      v37 = v88;

      sub_21AF567A4(v17, v16);
      sub_21AF559E4(v17, v16);
      __dst = v17;
      v91 = v16 & 0x3FFFFFFFFFFFFFFFLL;
      v38 = v87;
      *v87 = xmmword_21AF77170;
      sub_21AF559E4(0, 0xC000000000000000);
      sub_21AF5637C(&__dst, v37);

      v39 = v91 | 0x4000000000000000;
      *v38 = __dst;
      v38[1] = v39;
LABEL_86:

      v75 = *MEMORY[0x277D85DE8];
      return result;
    }

    v76 = HIDWORD(v17);
    v77 = v17 >> 40;
    v78 = HIWORD(v17);
    v79 = HIBYTE(v17);
    v80 = v16 >> 8;
    v81 = v16 >> 16;
    v82 = v16 >> 24;
    v83 = HIDWORD(v16);
    v84 = v16 >> 40;
    v85 = HIWORD(v16);

    sub_21AF559E4(v17, v16);
    LOWORD(__dst) = v17;
    BYTE2(__dst) = BYTE2(v17);
    BYTE3(__dst) = BYTE3(v17);
    BYTE4(__dst) = v76;
    BYTE5(__dst) = v77;
    BYTE6(__dst) = v78;
    HIBYTE(__dst) = v79;
    LOBYTE(v91) = v16;
    BYTE1(v91) = v80;
    BYTE2(v91) = v81;
    BYTE3(v91) = v82;
    BYTE4(v91) = v83;
    BYTE5(v91) = v84;
    BYTE6(v91) = v85;
    sub_21AF76498();
    v19 = sub_21AF76438();
    v21 = v20;
    (*(v6 + 8))(v13, v5);
    v23 = sub_21AF764A8();
    v24 = v22;
    v25 = v22 >> 62;
    if ((v22 >> 62) <= 1)
    {
      if (!v25)
      {
        v26 = BYTE6(v22);
LABEL_40:
        v48 = v86;
        v49 = sub_21AF6D020(v19, v21);
        if (v48)
        {

          sub_21AF559E4(v23, v24);
          v50 = __dst;
          v51 = v91 | ((WORD2(v91) | (BYTE6(v91) << 16)) << 32);

          v52 = v87;
          *v87 = v50;
          v52[1] = v51;
          goto LABEL_86;
        }

        v19 = v49;

        if (v25 <= 1)
        {
          if (!v25)
          {
            __src[0] = v23;
            LOWORD(__src[1]) = v24;
            BYTE2(__src[1]) = BYTE2(v24);
            BYTE3(__src[1]) = BYTE3(v24);
            BYTE4(__src[1]) = BYTE4(v24);
            BYTE5(__src[1]) = BYTE5(v24);
LABEL_75:
            v64 = __src;
            goto LABEL_76;
          }

LABEL_69:
          if (v23 <= v23 >> 32)
          {
            v56 = sub_21AF75D78();
            if (v56)
            {
              v63 = sub_21AF75DA8();
              v58 = v23 - v63;
              if (!__OFSUB__(v23, v63))
              {
LABEL_72:
                v56 += v58;
                goto LABEL_73;
              }

              goto LABEL_95;
            }

LABEL_73:
            sub_21AF75D98();
            v64 = v56;
LABEL_76:
            memcpy(&__dst, v64, v26);
            *(&__dst + v26) = v19;
            sub_21AF559E4(v23, v24);
            v65 = __dst;
            v66 = v91 | ((WORD2(v91) | (BYTE6(v91) << 16)) << 32);

            v67 = v87;
            *v87 = v65;
            v67[1] = v66;
            goto LABEL_86;
          }

          goto LABEL_92;
        }

        if (v25 != 2)
        {
          memset(__src, 0, 14);
          goto LABEL_75;
        }

        v25 = *(v23 + 16);
        v56 = sub_21AF75D78();
        if (!v56)
        {
          goto LABEL_73;
        }

        v57 = sub_21AF75DA8();
        v58 = v25 - v57;
        if (!__OFSUB__(v25, v57))
        {
          goto LABEL_72;
        }

        __break(1u);
        goto LABEL_64;
      }

      goto LABEL_37;
    }

    goto LABEL_18;
  }

  if (v18 != 2)
  {

    sub_21AF76498();
    v19 = sub_21AF76438();
    v21 = v40;
    (*(v6 + 8))(v15, v5);
    v23 = a3;
    v41 = sub_21AF764A8();
    v24 = v41;
    a3 = v42;
    v25 = v42 >> 62;
    if ((v42 >> 62) > 1)
    {
      goto LABEL_22;
    }

    if (!v25 || !__OFSUB__(HIDWORD(v41), v41))
    {
LABEL_24:
      v45 = v86;
      sub_21AF6D020(v19, v21);
      if (v45)
      {

LABEL_58:
        sub_21AF559E4(v24, a3);

        goto LABEL_86;
      }

LABEL_30:

      if (v25 > 1)
      {
        if (v25 != 2)
        {
          goto LABEL_58;
        }

        v55 = *(v24 + 16);
        if (sub_21AF75D78() && __OFSUB__(v55, sub_21AF75DA8()))
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (!v25)
        {
          goto LABEL_58;
        }

        LODWORD(v25) = v24;
        if (v24 > v24 >> 32)
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        if (sub_21AF75D78() && __OFSUB__(v24, sub_21AF75DA8()))
        {
          __break(1u);
LABEL_37:
          if (!__OFSUB__(HIDWORD(v23), v23))
          {
            v26 = HIDWORD(v23) - v23;
            goto LABEL_40;
          }

          goto LABEL_89;
        }
      }

      sub_21AF75D98();
      goto LABEL_58;
    }

    __break(1u);
LABEL_18:
    if (v25 != 2)
    {
      v26 = 0;
      goto LABEL_40;
    }

    v44 = *(v23 + 16);
    v43 = *(v23 + 24);
    v26 = v43 - v44;
    if (!__OFSUB__(v43, v44))
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_22:
    if (v25 != 2 || !__OFSUB__(*(v24 + 24), *(v24 + 16)))
    {
      goto LABEL_24;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  sub_21AF559E4(v17, v16);
  __dst = v17;
  v91 = v16 & 0x3FFFFFFFFFFFFFFFLL;
  *v87 = xmmword_21AF77170;
  sub_21AF559E4(0, 0xC000000000000000);
  sub_21AF75DC8();
  v28 = __dst;
  v27 = v91;
  v29 = *(__dst + 16);
  v30 = sub_21AF75D78();
  if (v30)
  {
    v31 = v30;
    v32 = sub_21AF75DA8();
    if (!__OFSUB__(v29, v32))
    {
      v83 = v29 - v32;
      v84 = v27;
      sub_21AF75D98();
      sub_21AF76498();
      v24 = sub_21AF76438();
      v21 = v33;
      (*(v6 + 8))(v10, v5);
      v34 = sub_21AF764A8();
      v19 = v34;
      v23 = v35;
      v25 = v35 >> 62;
      v85 = v28;
      if ((v35 >> 62) > 1)
      {
        if (v25 == 2)
        {
          v47 = *(v34 + 16);
          v46 = *(v34 + 24);
          v82 = v46 - v47;
          if (__OFSUB__(v46, v47))
          {
            __break(1u);
            goto LABEL_30;
          }
        }

        else
        {
          v82 = 0;
        }
      }

      else
      {
        if (v25)
        {
          LODWORD(v36) = HIDWORD(v34) - v34;
          if (__OFSUB__(HIDWORD(v34), v34))
          {
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          v36 = v36;
        }

        else
        {
          v36 = BYTE6(v35);
        }

        v82 = v36;
      }

      v53 = v86;
      v54 = sub_21AF6D020(v24, v21);
      if (v53)
      {

        sub_21AF559E4(v19, v23);

LABEL_85:

        v72 = v84 | 0x8000000000000000;
        v73 = v87;
        *v87 = v85;
        v73[1] = v72;
        goto LABEL_86;
      }

      LODWORD(v86) = v54;
      v26 = v31 + v83;

      if (v25 <= 1)
      {
        if (v25)
        {
          if (v19 > v19 >> 32)
          {
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
          }

          v60 = sub_21AF75D78();
          if (!v60)
          {
            goto LABEL_81;
          }

          v68 = sub_21AF75DA8();
          v62 = v19 - v68;
          if (__OFSUB__(v19, v68))
          {
            goto LABEL_96;
          }

          goto LABEL_80;
        }

        __src[0] = v19;
        LOWORD(__src[1]) = v23;
        BYTE2(__src[1]) = BYTE2(v23);
        BYTE3(__src[1]) = BYTE3(v23);
        BYTE4(__src[1]) = BYTE4(v23);
        BYTE5(__src[1]) = BYTE5(v23);
LABEL_83:
        v71 = __src;
        v70 = v26;
        v69 = v82;
        goto LABEL_84;
      }

LABEL_64:
      v24 = v88;
      if (v25 == 2)
      {
        v59 = *(v19 + 16);
        v60 = sub_21AF75D78();
        if (!v60)
        {
LABEL_81:
          v69 = v82;
          sub_21AF75D98();
          v70 = v26;
          v71 = v60;
LABEL_84:
          memcpy(v70, v71, v69);
          *(v26 + v69) = v86;
          sub_21AF559E4(v19, v23);

          goto LABEL_85;
        }

        v61 = sub_21AF75DA8();
        v62 = v59 - v61;
        if (__OFSUB__(v59, v61))
        {
          __break(1u);
          goto LABEL_69;
        }

LABEL_80:
        v60 += v62;
        goto LABEL_81;
      }

      memset(__src, 0, 14);
      goto LABEL_83;
    }

    __break(1u);
    goto LABEL_88;
  }

  __break(1u);
  return result;
}

uint64_t sub_21AF5637C(int *a1, uint64_t a2)
{
  v43 = a2;
  __src[2] = *MEMORY[0x277D85DE8];
  v4 = sub_21AF76448();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AF75DD8();
  v9 = *a1;
  if (a1[1] < v9)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v10 = *(a1 + 1);

  v11 = sub_21AF75D78();
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = v11;
  v13 = sub_21AF75DA8();
  if (__OFSUB__(v9, v13))
  {
    goto LABEL_36;
  }

  v41 = v9 - v13;
  v42 = v10;
  sub_21AF75D98();
  sub_21AF76498();
  v14 = sub_21AF76438();
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  v17 = sub_21AF764A8();
  v19 = v17;
  v20 = v18;
  v21 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v21)
    {
      v22 = BYTE6(v18);
LABEL_13:
      v40 = v22;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v21 == 2)
  {
    v24 = *(v17 + 16);
    v23 = *(v17 + 24);
    v40 = v23 - v24;
    if (__OFSUB__(v23, v24))
    {
      __break(1u);
LABEL_11:
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (!__OFSUB__(HIDWORD(v17), v17))
      {
        v22 = v22;
        goto LABEL_13;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }

  else
  {
    v40 = 0;
  }

LABEL_15:
  v25 = sub_21AF6D020(v14, v16);
  if (!v2)
  {
    HIDWORD(v39) = v25;
    v26 = (v12 + v41);

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        memset(__src, 0, 14);
        goto LABEL_30;
      }

      v27 = *(v19 + 16);
      v28 = sub_21AF75D78();
      if (!v28)
      {
        goto LABEL_31;
      }

      v29 = v28;
      v30 = sub_21AF75DA8();
      v31 = v27 - v30;
      if (!__OFSUB__(v27, v30))
      {
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v21)
    {
      __src[0] = v19;
      LOWORD(__src[1]) = v20;
      BYTE2(__src[1]) = BYTE2(v20);
      BYTE3(__src[1]) = BYTE3(v20);
      BYTE4(__src[1]) = BYTE4(v20);
      BYTE5(__src[1]) = BYTE5(v20);
LABEL_30:
      v35 = v40;
      memcpy(v26, __src, v40);
LABEL_33:
      *&v26[v35] = HIDWORD(v39);
      sub_21AF559E4(v19, v20);
      goto LABEL_34;
    }

    if (v19 <= v19 >> 32)
    {
      v32 = sub_21AF75D78();
      if (v32)
      {
        v29 = v32;
        v33 = sub_21AF75DA8();
        v31 = v19 - v33;
        if (!__OFSUB__(v19, v33))
        {
LABEL_28:
          v34 = (v31 + v29);
LABEL_32:
          sub_21AF75D98();
          v36 = v34;
          v35 = v40;
          memcpy(v26, v36, v40);
          goto LABEL_33;
        }

        goto LABEL_39;
      }

LABEL_31:
      v34 = 0;
      goto LABEL_32;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  sub_21AF559E4(v19, v20);
LABEL_34:

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21AF56704(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_21AF75DB8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_21AF75D88();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_21AF75DF8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_21AF567A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21AF567F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for UDFSchemaProvider()
{
  result = qword_280B17760;
  if (!qword_280B17760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AF568AC()
{
  sub_21AF56B14(319, &qword_280B16C48, MEMORY[0x277D3E578]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21AF56B14(319, qword_280B16C50, MEMORY[0x277D3E4D8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21AF56B14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21AF76908();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for PGetFirstFunction()
{
  result = qword_27CD402B0;
  if (!qword_27CD402B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF56C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402C0, &unk_21AF77240);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - v10;
  v12 = sub_21AF76188();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v53 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v59 = &v50 - v19;
  v20 = *(a2 + 16);
  v21 = *(v13 + 56);
  v21(v11, 1, 1, v12);
  if (v20 == 3)
  {
    v52 = v7;
    v54 = a1;
    sub_21AF573A8(v11);
    v22 = *(v13 + 16);
    v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v22(v11, a2 + v23 + 2 * *(v13 + 72), v12);
    v55 = v11;
    v21(v11, 0, 1, v12);
    goto LABEL_5;
  }

  if (v20 == 2)
  {
    v52 = v7;
    v54 = a1;
    v55 = v11;
    v22 = *(v13 + 16);
    v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
LABEL_5:
    v24 = a2 + v23;
    v25 = v59;
    v22(v59, v24, v12);
    v26 = v58;
    v22(v58, v24 + *(v13 + 72), v12);
    if (sub_21AF76118())
    {
      sub_21AF76008();
      v27 = v55;
LABEL_7:
      v28 = *(v13 + 8);
      v28(v26, v12);
      v28(v25, v12);
      return sub_21AF573A8(v27);
    }

    v30 = v57 + qword_27CD40568;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v30 + 8);
      ObjectType = swift_getObjectType();
      v33 = v56;
      (*(v31 + 8))(ObjectType, v31);
      if (!v33)
      {
        swift_unknownObjectRelease();
        v41 = off_282C89A80;
        type metadata accessor for MessageInBlobBridge();
        v42 = v52;
        v41();
        swift_unknownObjectRelease();
        v26 = v58;
        v51 = sub_21AF760E8();
        v56 = 0;
        v57 = v43;
        v44 = v55;
        v45 = (*(v13 + 48))(v55, 1, v12);
        v55 = v44;
        if (v45)
        {
          v46 = 0;
          v47 = 0;
        }

        else
        {
          v48 = v53;
          v22(v53, v44, v12);
          v46 = sub_21AF76168();
          v47 = v49;
          (*(v13 + 8))(v48, v12);
        }

        sub_21AF6A5D0(v51, v57, v46, v47, v54);

        sub_21AF57410(v42);
        v27 = v55;
        v25 = v59;
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_21AF57354();
      swift_allocError();
      *v39 = 0xD000000000000012;
      *(v39 + 8) = 0x800000021AF78CB0;
      *(v39 + 16) = 1;
      swift_willThrow();
    }

    v11 = v55;
    v40 = *(v13 + 8);
    v40(v58, v12);
    v40(v59, v12);
    return sub_21AF573A8(v11);
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  sub_21AF769B8();

  v60 = 0x20676E696C6C6143;
  v61 = 0xE800000000000000;
  result = sub_21AF762C8();
  if (v34)
  {
    MEMORY[0x21CEE74A0](result);

    MEMORY[0x21CEE74A0](0x206874697720, 0xE600000000000000);
    v62 = v20;
    v35 = sub_21AF76B18();
    MEMORY[0x21CEE74A0](v35);

    MEMORY[0x21CEE74A0](0x74656D6172617020, 0xEB00000000737265);
    v36 = v60;
    v37 = v61;
    sub_21AF57354();
    swift_allocError();
    *v38 = v36;
    *(v38 + 8) = v37;
    *(v38 + 16) = 4;
    swift_willThrow();
    return sub_21AF573A8(v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_21AF57254(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  *(swift_allocObject() + qword_27CD40568 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v6 = sub_21AF762D8();
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_21AF572D0()
{
  v0 = sub_21AF762E8();
  sub_21AF5732C(v0 + qword_27CD40568);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_21AF57354()
{
  result = qword_27CD402C8;
  if (!qword_27CD402C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD402C8);
  }

  return result;
}

uint64_t sub_21AF573A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402C0, &unk_21AF77240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF57410(uint64_t a1)
{
  v2 = type metadata accessor for AttributedMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PPayloadFunction()
{
  result = qword_27CD402D0;
  if (!qword_27CD402D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF57500(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v35 = a1;
  v4 = sub_21AF75E98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedMessage();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21AF76648();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2 + qword_27CD40568;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(ObjectType, v17);
    result = swift_unknownObjectRelease();
    if (!v3)
    {
      v30 = v12;
      v31 = v5;
      v32 = v4;
      if (*(v36 + 16))
      {
        v20 = *(sub_21AF76188() - 8);
        v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v22 = off_282C89A80;
        type metadata accessor for MessageInBlobBridge();
        v22();
        swift_unknownObjectRelease();
        v24 = v33;
        v25 = v30;
        (*(v33 + 16))(v15, &v11[*(v8 + 20)], v30);
        sub_21AF57410(v11);
        v26 = sub_21AF76608();
        v28 = v27;
        v29 = v34;
        sub_21AF75E88();
        sub_21AF75FF8();
        sub_21AF559E4(v26, v28);
        (*(v31 + 8))(v29, v32);
        return (*(v24 + 8))(v15, v25);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21AF57354();
    swift_allocError();
    *v23 = 0xD000000000000012;
    *(v23 + 8) = 0x800000021AF78CB0;
    *(v23 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t type metadata accessor for POneOfFunction()
{
  result = qword_27CD402E0;
  if (!qword_27CD402E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF5791C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for AttributedMessage();
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(sub_21AF76188() - 8);
  v14 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  if (sub_21AF76118())
  {
    return sub_21AF76008();
  }

  v15 = v4 + qword_27CD40568;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_21AF57354();
    swift_allocError();
    *v19 = 0xD000000000000012;
    *(v19 + 8) = 0x800000021AF78CB0;
    *(v19 + 16) = 1;
    return swift_willThrow();
  }

  v26 = a1;
  v16 = *(v15 + 8);
  ObjectType = swift_getObjectType();
  (*(v16 + 8))(ObjectType, v16);
  result = swift_unknownObjectRelease();
  if (v3)
  {
    return result;
  }

  v18 = off_282C89A80;
  type metadata accessor for MessageInBlobBridge();
  v18();
  result = swift_unknownObjectRelease();
  if (v12 == 1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v20 = v14 + *(v13 + 72);
  sub_21AF760E8();
  v21 = &v11[*(v7 + 20)];
  v22 = sub_21AF765E8();
  v24 = v23;

  if (v22)
  {
    swift_getObjectType();
    v25 = *(v24 + 8);
    sub_21AF76518();
    swift_unknownObjectRelease();
  }

  sub_21AF76088();

  return sub_21AF57410(v11);
}

uint64_t type metadata accessor for PHasOneOfFunction()
{
  result = qword_27CD402F0;
  if (!qword_27CD402F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF57CC8(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for AttributedMessage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21AF76648();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  if (!v16)
  {
    __break(1u);
    goto LABEL_22;
  }

  v37[2] = a1;
  v38 = result;
  v40 = v13;
  v17 = *(sub_21AF76188() - 8);
  v18 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  result = sub_21AF76118();
  if ((result & 1) == 0)
  {
    if (v16 != 1)
    {
      v22 = *(v17 + 72);
      if ((sub_21AF76118() & 1) != 0 || (sub_21AF76128() & 1) == 0)
      {
        v19 = 0x800000021AF78D80;
        sub_21AF58214();
        swift_allocError();
        v21 = 0xD00000000000002CLL;
        goto LABEL_12;
      }

      v23 = v2 + qword_27CD40568;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        sub_21AF57354();
        swift_allocError();
        *v29 = 0xD000000000000012;
        *(v29 + 8) = 0x800000021AF78CB0;
        *(v29 + 16) = 1;
        return swift_willThrow();
      }

      v37[1] = v22;
      v24 = *(v23 + 8);
      ObjectType = swift_getObjectType();
      v26 = (*(v24 + 8))(ObjectType, v24);
      result = swift_unknownObjectRelease();
      if (v3)
      {
        return result;
      }

      if (sub_21AF76128())
      {
        v27 = *(v26 + 32);
        v28 = *(v26 + 40);
        swift_unknownObjectRetain();
        sub_21AF760E8();
        swift_getObjectType();
        sub_21AF765A8();
        v37[0] = v34;

        swift_unknownObjectRelease();
      }

      else
      {
        if ((sub_21AF76108() & 1) == 0)
        {
          sub_21AF58214();
          swift_allocError();
          *v33 = 0xD000000000000040;
          v33[1] = 0x800000021AF78DB0;
          swift_willThrow();
          return swift_unknownObjectRelease();
        }

        v37[0] = off_282C89A80;
        type metadata accessor for MessageInBlobBridge();
        (v37[0])();
        v30 = v40;
        v31 = v38;
        (*(v40 + 16))(v15, &v9[*(v6 + 20)], v38);
        sub_21AF57410(v9);
        sub_21AF765F8();
        v37[0] = v32;
        (*(v30 + 8))(v15, v31);
      }

      swift_getObjectType();
      v35 = sub_21AF76698();
      v39[0] = sub_21AF760E8();
      v39[1] = v36;
      MEMORY[0x28223BE20](v39[0]);
      v37[-2] = v39;
      sub_21AF58268(sub_21AF58314, &v37[-4], v35);

      sub_21AF75FE8();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v19 = 0x800000021AF78E00;
  sub_21AF58214();
  swift_allocError();
  v21 = 0xD000000000000016;
LABEL_12:
  *v20 = v21;
  v20[1] = v19;
  return swift_willThrow();
}

unint64_t sub_21AF58214()
{
  result = qword_27CD40300;
  if (!qword_27CD40300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40300);
  }

  return result;
}

uint64_t sub_21AF58268(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_21AF58314(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21AF76B58() & 1;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21AF58378(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21AF583C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t static ColumnsMappedMessage.makeColumns(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a2, a3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v15 = MEMORY[0x277D84F90];
    sub_21AF58730(0, v4, 0);
    v5 = v15;
    v6 = (v3 + 49);
    do
    {
      v7 = *(v6 - 17);
      v8 = *(v6 - 9);
      v9 = *(v6 - 1);
      v10 = *v6;
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_21AF58730((v11 > 1), v12 + 1, 1);
      }

      *(v15 + 16) = v12 + 1;
      v13 = v15 + 24 * v12;
      *(v13 + 32) = v7;
      *(v13 + 40) = v8;
      *(v13 + 48) = v9;
      *(v13 + 49) = v10;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t ColumnsMappedMessage.getValue(forColumnIndex:with:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  result = (*(a4 + 16))(a3, a4);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v11 = (result + 40 * a1);
    v12 = v11[5];
    v14 = v11[7];
    v13 = v11[8];

    v16[3] = a3;
    v16[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v5, a3);
    v14(v16, a2);

    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __break(1u);
  return result;
}

char *sub_21AF58730(char *a1, int64_t a2, char a3)
{
  result = sub_21AF58874(a1, a2, a3, *v3);
  *v3 = result;
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_21AF58814(char *a1, int64_t a2, char a3)
{
  result = sub_21AF58990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21AF58834(void *a1, int64_t a2, char a3)
{
  result = sub_21AF58AA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21AF58854(void *a1, int64_t a2, char a3)
{
  result = sub_21AF58BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21AF58874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40330, &qword_21AF773C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21AF58990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40308, &qword_21AF78290);
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

void *sub_21AF58AA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40320, &qword_21AF773B0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40328, &qword_21AF773B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21AF58BE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40310, &qword_21AF773A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40318, &qword_21AF773A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21AF58D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF58E54(uint64_t a1, char *a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t), uint64_t a6, const void *a7, uint64_t a8, uint64_t (*a9)(char *, char *, char *, uint64_t *), uint64_t a10)
{
  v57 = a7;
  v58 = a8;
  v54 = a6;
  v56 = a5;
  v63 = a3;
  v64 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v51 - v12;
  v14 = sub_21AF766F8();
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = sub_21AF76488();
  v59 = *(v21 - 8);
  v22 = *(v59 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v51 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v51 - v33;
  v35 = v65;
  result = v62(v60, v61, v63, v64);
  if (!v35)
  {
    v52 = v29;
    v61 = v13;
    v62 = v14;
    v60 = v20;
    v37 = v56;
    v65 = 0;
    v64 = &v51;
    MEMORY[0x28223BE20](result);
    v38 = v57;
    v39 = v58;
    *(&v51 - 2) = v57;
    *(&v51 - 1) = v39;
    v63 = v34;
    sub_21AF58D88(v34, v32);
    v40 = *(v59 + 48);
    v53 = v21;
    if (v40(v32, 1, v21) == 1)
    {
      sub_21AF567F8(v32, &qword_27CD40338, &unk_21AF77F80);
LABEL_9:
      v45 = v63;
      sub_21AF593F0(v63, v38, v39);
      return sub_21AF567F8(v45, &qword_27CD40338, &unk_21AF77F80);
    }

    sub_21AF59B88(v32, v24, MEMORY[0x277D3E588]);
    if (!v37)
    {
      sub_21AF59B18(v24, MEMORY[0x277D3E588]);
      goto LABEL_9;
    }

    v41 = v18;
    v42 = v24;
    sub_21AF76478();
    v43 = v61;
    v37(v41);
    sub_21AF59B18(v41, MEMORY[0x277D3E5A8]);
    if ((*(v55 + 48))(v43, 1, v62) == 1)
    {
      sub_21AF567F8(v43, &qword_27CD402A8, &qword_21AF77190);
      v44 = v52;
      (*(v59 + 56))(v52, 1, 1, v53);
      sub_21AF593F0(v44, v38, v39);
      sub_21AF59B78(v37);
      sub_21AF567F8(v44, &qword_27CD40338, &unk_21AF77F80);
    }

    else
    {
      v46 = v43;
      v47 = v37;
      v48 = MEMORY[0x277D3E5A8];
      v49 = v60;
      v50 = sub_21AF59B88(v46, v60, MEMORY[0x277D3E5A8]);
      MEMORY[0x28223BE20](v50);
      *(&v51 - 2) = a10;
      *(&v51 - 1) = (&v51 - 4);
      sub_21AF766E8();
      sub_21AF59B78(v47);
      sub_21AF59B18(v49, v48);
    }

    sub_21AF59B18(v42, MEMORY[0x277D3E588]);
    return sub_21AF567F8(v63, &qword_27CD40338, &unk_21AF77F80);
  }

  return result;
}

uint64_t sub_21AF593F0(uint64_t a1, const void *a2, uint64_t a3)
{
  v59[1] = a3;
  v67 = a1;
  v4 = sub_21AF76648();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21AF76418();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v59[0] = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v59 - v15;
  v17 = sub_21AF76488();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v66 = v59 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40340, &qword_21AF773C8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = v59 - v26;
  v28 = sub_21AF760B8();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  v33 = v32;
  sub_21AF760C8();
  if ((*(v33 + 48))(v27, 1, v28) == 1)
  {
    return sub_21AF567F8(v27, &qword_27CD40340, &qword_21AF773C8);
  }

  (*(v33 + 32))(v31, v27, v28);
  sub_21AF58D88(v67, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_21AF567F8(v16, &qword_27CD40338, &unk_21AF77F80);
    sub_21AF76008();
    return (*(v33 + 8))(v31, v28);
  }

  else
  {
    v35 = v16;
    v36 = v66;
    sub_21AF59B88(v35, v66, MEMORY[0x277D3E588]);
    sub_21AF59C28(v36, v22);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      v42 = v33;
      v43 = v63;
      v44 = v64;
      v45 = v65;
      (*(v64 + 32))(v63, v22, v65);
      v46 = v68;
      sub_21AF66B18();
      v68 = v46;
      if (v46)
      {
        (*(v44 + 8))(v43, v45);
        sub_21AF59B18(v36, MEMORY[0x277D3E588]);
      }

      else
      {
        v49 = sub_21AF765C8();
        v67 = v31;
        v62 = v49;
        v51 = v50;
        sub_21AF765F8();
        v52 = v44;
        v54 = v53;
        swift_getObjectType();
        v55 = *(v54 + 8);
        v56 = sub_21AF76518();
        v58 = v57;
        swift_unknownObjectRelease();
        v31 = v67;
        sub_21AF70688(v62, v51, v56, v58, v67);
        swift_unknownObjectRelease();

        (*(v52 + 8))(v43, v65);
        sub_21AF59B18(v66, MEMORY[0x277D3E588]);
      }

      return (*(v42 + 8))(v31, v28);
    }

    else
    {
      v67 = v33;
      if (EnumCaseMultiPayload == 7)
      {
        v39 = v60;
        v38 = v61;
        v40 = v59[0];
        (*(v60 + 32))();
        v41 = v68;
        sub_21AF763F8();
        if (!v41)
        {
          sub_21AF76088();
        }

        (*(v39 + 8))(v40, v38);
        sub_21AF59B18(v36, MEMORY[0x277D3E588]);
        return (*(v67 + 1))(v31, v28);
      }

      else
      {
        sub_21AF59C28(v36, v14);
        (*(v18 + 56))(v14, 0, 1, v17);
        sub_21AF6228C(v14);
        v47 = v36;
        sub_21AF567F8(v14, &qword_27CD40338, &unk_21AF77F80);
        v48 = MEMORY[0x277D3E588];
        sub_21AF59B18(v47, MEMORY[0x277D3E588]);
        (*(v67 + 1))(v31, v28);
        return sub_21AF59B18(v22, v48);
      }
    }
  }
}

uint64_t sub_21AF59B18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21AF59B78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21AF59B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21AF59C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AF76488();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BaseStreamSchemaProvider.messageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName);
  v2 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName + 8);

  return v1;
}

uint64_t BaseStreamSchemaProvider.__allocating_init(messageName:manifest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = *(v4 + 48);
  v13 = *(v4 + 52);
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName);
  *v15 = a1;
  v15[1] = a2;
  sub_21AF5A058(a3, v11);
  v16 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  v17 = sub_21AF76468();
  (*(*(v17 - 8) + 56))(v14 + v16, 1, 1, v17);
  swift_weakInit();
  v18 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  v19 = sub_21AF763E8();
  (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
  *(v14 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns) = MEMORY[0x277D84F90];
  swift_beginAccess();
  sub_21AF5A0C8(v11, v14 + v16);
  swift_endAccess();
  return v14;
}

uint64_t BaseStreamSchemaProvider.init(messageName:manifest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = (v3 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName);
  *v11 = a1;
  v11[1] = a2;
  sub_21AF5A058(a3, v10);
  v12 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  v13 = sub_21AF76468();
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  swift_weakInit();
  v14 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  v15 = sub_21AF763E8();
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  *(v3 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns) = MEMORY[0x277D84F90];
  swift_beginAccess();
  sub_21AF5A0C8(v10, v3 + v12);
  swift_endAccess();
  return v3;
}

uint64_t sub_21AF5A058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF5A0C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF5A138(unint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v2 + v7);
    if (*(v9 + 16) > a1)
    {
      v10 = v9 + 24 * a1;
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v14[0] = v4;
      v14[1] = v5;
      v14[2] = v6;
      v13 = *(*v2 + 248);

      v13(v11, v12, v14);
    }
  }

  __break(1u);
  return result;
}

uint64_t BaseStreamSchemaProvider.deinit()
{
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest, &qword_27CD40298, &unk_21AF77180);
  v1 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns);

  swift_weakDestroy();
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore, &qword_27CD402A0, &unk_21AF77960);
  v2 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName + 8);

  return v0;
}

uint64_t BaseStreamSchemaProvider.__deallocating_deinit()
{
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest, &qword_27CD40298, &unk_21AF77180);
  v1 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns);

  swift_weakDestroy();
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore, &qword_27CD402A0, &unk_21AF77960);
  v2 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for BaseStreamSchemaProvider()
{
  result = qword_280B17750;
  if (!qword_280B17750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PBGetFunction()
{
  result = qword_27CD40350;
  if (!qword_27CD40350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_21AF5A67C(uint64_t a1, uint64_t a2)
{
  v5 = sub_21AF76508();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40360, &qword_21AF77458);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v65 - v11;
  v13 = sub_21AF76388();
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = *(v73 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v72 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v65 - v17;
  v19 = sub_21AF76188();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  result = MEMORY[0x28223BE20](v19);
  v24 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(a2 + 16);
  if (!v75)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v80 = v12;
  v71 = v18;
  v25 = a2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v26 = (*(v20 + 16))(v24, v25, v19);
  MEMORY[0x28223BE20](v26);
  v65[-2] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40368, &qword_21AF784C0);
  sub_21AF760D8();
  if (v2)
  {
    return (*(v20 + 8))(v24, v19);
  }

  if (v79)
  {
    v27 = sub_21AF75FA8();
    sub_21AF5AF00();
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D3E258], v27);
    swift_willThrow();
    return (*(v20 + 8))(v24, v19);
  }

  v68 = v25;
  v29 = v77;
  v30 = v78;
  result = (*(v20 + 8))(v24, v19);
  if (v75 == 1)
  {
    goto LABEL_43;
  }

  v31 = *(v20 + 72);
  v32 = sub_21AF76138();
  result = sqlite3_value_text(v32);
  v33 = v80;
  if (!result)
  {
    sub_21AF57354();
    swift_allocError();
    *v61 = 0xD000000000000024;
    *(v61 + 8) = 0x800000021AF78F50;
    *(v61 + 16) = 0;
    return swift_willThrow();
  }

  v34 = result;
  v65[2] = v29;
  v65[3] = v31;
  v65[1] = v30;
  v66 = v8;
  v67 = a1;
  v35 = *result;
  v36 = v76;
  if (*result)
  {
    v37 = 0;
    v69 = qword_27CD40348;
    v70 = 0;
    while ((v35 - 58) < 0xF6u)
    {
      v39 = 0;
LABEL_18:
      v42 = v35 == 105;
      if (v35 == 105)
      {
        v70 = v39;
      }

      else
      {
        if (v37)
        {
          if (!v70)
          {
            goto LABEL_33;
          }

          v43 = v69;
          swift_beginAccess();
          v44 = *(v36 + v43);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v36 + v43) = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = sub_21AF6D4F0(0, *(v44 + 2) + 1, 1, v44);
            *(v36 + v69) = v44;
          }

          v47 = *(v44 + 2);
          v46 = *(v44 + 3);
          if (v47 >= v46 >> 1)
          {
            v44 = sub_21AF6D4F0((v46 > 1), v47 + 1, 1, v44);
          }

          *(v44 + 2) = v47 + 1;
          v48 = &v44[24 * v47];
          *(v48 + 4) = v70;
          *(v48 + 5) = v39;
          v48[48] = 1;
        }

        else
        {
          if (!v39)
          {
            goto LABEL_33;
          }

          v49 = v69;
          swift_beginAccess();
          v44 = *(v36 + v49);
          v50 = swift_isUniquelyReferenced_nonNull_native();
          *(v36 + v49) = v44;
          if ((v50 & 1) == 0)
          {
            v44 = sub_21AF6D4F0(0, *(v44 + 2) + 1, 1, v44);
            *(v36 + v69) = v44;
          }

          v52 = *(v44 + 2);
          v51 = *(v44 + 3);
          if (v52 >= v51 >> 1)
          {
            v44 = sub_21AF6D4F0((v51 > 1), v52 + 1, 1, v44);
          }

          *(v44 + 2) = v52 + 1;
          v53 = &v44[24 * v52];
          *(v53 + 4) = v39;
          *(v53 + 5) = 0;
          v53[48] = 0;
        }

        v36 = v76;
        *(v76 + v69) = v44;
        result = swift_endAccess();
        v33 = v80;
        if (!v35)
        {
          goto LABEL_33;
        }
      }

      v38 = *++v34;
      v35 = v38;
      v37 = v42;
      if (!v38)
      {
        goto LABEL_33;
      }
    }

    v39 = 0;
    while (1)
    {
      v40 = 10 * v39;
      if ((v39 * 10) >> 64 != (10 * v39) >> 63)
      {
        break;
      }

      v39 = v40 + (v35 - 48);
      if (__OFADD__(v40, (v35 - 48)))
      {
        goto LABEL_41;
      }

      v41 = *++v34;
      v35 = v41;
      if ((v41 - 58) <= 0xF5u)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_33:
  if (v75 < 3)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v54 = sub_21AF76138();
  result = sqlite3_value_text(v54);
  v55 = v66;
  v56 = v73;
  if (!result)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v57 = qword_27CD40348;
  v58 = *result;
  swift_beginAccess();
  v59 = *(v36 + v57);
  sub_21AF75044(v58, v33);
  v60 = v74;
  if ((*(v56 + 48))(v33, 1, v74) == 1)
  {
    sub_21AF5AF58(v33);
    sub_21AF76018();
  }

  else
  {
    v62 = v33;
    v63 = v71;
    (*(v56 + 32))(v71, v62, v60);
    (*(v56 + 16))(v72, v63, v60);

    sub_21AF764F8();
    sub_21AF7525C(v67);
    sub_21AF5AFC0(v55);
    (*(v56 + 8))(v63, v60);
  }

  v64 = *(v36 + v57);
  *(v36 + v57) = MEMORY[0x277D84F90];
}

uint64_t sub_21AF5ADD8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  v6 = swift_allocObject();
  *(v6 + qword_27CD40348) = MEMORY[0x277D84F90];
  *(v6 + qword_27CD40568 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v7 = sub_21AF762D8();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_21AF5AE78()
{
  v0 = sub_21AF762E8();
  sub_21AF5732C(v0 + qword_27CD40568);
  v1 = *(v0 + qword_27CD40348);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_21AF5AF00()
{
  result = qword_27CD40370;
  if (!qword_27CD40370)
  {
    sub_21AF75FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40370);
  }

  return result;
}

uint64_t sub_21AF5AF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40360, &qword_21AF77458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF5AFC0(uint64_t a1)
{
  v2 = sub_21AF76508();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF5B088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21AF5CD34();

  return MEMORY[0x28219E770](a1, a2, a3, v6);
}

uint64_t sub_21AF5B0DC()
{
  v1 = *v0;
  sub_21AF76BE8();
  sub_21AF767F8();

  return sub_21AF76C08();
}

uint64_t sub_21AF5B1C4()
{
  *v0;
  *v0;
  *v0;
  sub_21AF767F8();
}

uint64_t sub_21AF5B298()
{
  v1 = *v0;
  sub_21AF76BE8();
  sub_21AF767F8();

  return sub_21AF76C08();
}

uint64_t sub_21AF5B37C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21AF5D4A8();
  *a2 = result;
  return result;
}

void sub_21AF5B3AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x65756C6176;
  v5 = 0xE700000000000000;
  v6 = 0x64616F6C796170;
  v7 = 0xEA0000000000656DLL;
  v8 = 0x614E616D65686373;
  if (v2 != 3)
  {
    v8 = 0x79747265706F7270;
    v7 = 0xEC00000068746150;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7463656A626FLL;
    v3 = 0xE600000000000000;
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

uint64_t sub_21AF5B470()
{
  if (*v0 > 2u)
  {
    return MEMORY[0x277D837D0];
  }

  if (*v0)
  {
    v1 = MEMORY[0x277CC9318];
    sub_21AF5CE88();
  }

  else
  {
    v1 = sub_21AF76318();
    sub_21AF5D0F0(&qword_27CD403F0, MEMORY[0x277D3E330]);
  }

  return v1;
}

uint64_t sub_21AF5B50C(uint64_t a1)
{
  v2 = sub_21AF5CCDC();
  v3 = sub_21AF5CE34();

  return MEMORY[0x28219EA78](a1, v2, v3);
}

uint64_t *sub_21AF5B5B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_21AF5B614();
}

uint64_t *sub_21AF5B614()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40410, &qword_21AF77640);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    sub_21AF5D09C();
    swift_allocError();
    *v11 = xmmword_21AF77460;
LABEL_7:
    swift_willThrow();
    goto LABEL_8;
  }

  v4 = v3 + *(*v3 + qword_27CD40990 + 16);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_21AF57354();
    swift_allocError();
    *v12 = 0xD000000000000012;
    *(v12 + 8) = 0x800000021AF78CB0;
    *(v12 + 16) = 1;
    goto LABEL_7;
  }

  v5 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);

  v8 = v7(ObjectType, v5);
  v10 = v9;
  swift_unknownObjectRelease();
  if (!v1)
  {
    v14 = (v0 + qword_27CD40378);
    *v14 = v8;
    v14[1] = v10;
    v0 = sub_21AF76278();

    return v0;
  }

LABEL_8:

  swift_deallocPartialClassInstance();
  return v0;
}

uint64_t sub_21AF5B854(uint64_t result)
{
  v15 = result;
  v1 = *result;
  if ((v1 & 0x80000000) != 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v13 = 0;
  v2 = 0;
  while (2)
  {
    v3 = 8 * v2;
    v4 = 12 * v2;
    do
    {
      if (v1 == v2)
      {
        v15[8] = 0;
        v15[9] = 1;
        return (v13 & 0xFFFFFFFE) != 2;
      }

      if (v2 >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_18;
      }

      v14 = v2 + 1;
      v5 = v15[1];
      if (!v5)
      {
        goto LABEL_21;
      }

      v6 = (v5 + v4);
      v7 = *v6;
      v8 = *(v6 + 4);
      v9 = *(v6 + 5);
      sub_21AF5CD34();
      sub_21AF5CEDC();
      sub_21AF5CE34();
      result = sub_21AF75EF8();
      v3 += 8;
      ++v2;
      v4 += 12;
    }

    while (!v16);
    result = 19;
    if (v16 != 5 && v9 && v8 == 2)
    {
      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_20;
      }

      v11 = v15[4];
      if (v11)
      {
        v12 = v11 + v3;
        ++v13;
        *(v12 - 8) = v10;
        *(v12 - 4) = 1;
        v2 = v14;
        continue;
      }

      goto LABEL_22;
    }

    return result;
  }
}

uint64_t sub_21AF5B9CC()
{
  v0 = sub_21AF76268();
  v1 = *(v0 + qword_27CD40378);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21AF5BA44(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF5BAE8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_21AF5BB34();
}

uint64_t sub_21AF5BB34()
{
  v1 = *v0;
  v2 = qword_27CD40390;
  *(v0 + qword_27CD40390) = 0;
  v3 = (v0 + qword_27CD40398);
  *v3 = 0;
  v3[1] = 0;
  v4 = qword_27CD403A8;
  *(v0 + qword_27CD403A8) = MEMORY[0x277D84F90];
  type metadata accessor for PGetManyConnection(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    *(v0 + qword_27CD403A0) = *(v5 + qword_27CD40378);
    swift_unknownObjectRetain();
    return sub_21AF76228();
  }

  else
  {
    sub_21AF5D09C();
    swift_allocError();
    *v7 = xmmword_21AF77460;
    swift_willThrow();

    v8 = *(v0 + v2);

    v9 = v3[1];

    v10 = *(v0 + v4);

    return swift_deallocPartialClassInstance();
  }
}

uint64_t sub_21AF5BC80(uint64_t a1)
{
  v3 = sub_21AF76188();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedMessage();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21AF76648();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v20 = v53 - v19;
  v21 = *(a1 + 16);
  if (v21 == 3)
  {
    v54 = v7;
    v55 = v3;
    v59 = v18;
    v60 = v17;
    v37 = *(v1 + qword_27CD403A0);
    v38 = *(v37 + 32);
    v56 = *(v37 + 40);
    v39 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v40 = *(v4 + 72);
    swift_unknownObjectRetain();
    v41 = v62;
    sub_21AF760E8();
    if (v41)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v53[1] = v40;
      v62 = v39;
      v57 = v1;
      v58 = v4;
      swift_getObjectType();
      v43 = sub_21AF765A8();
      v53[0] = v44;
      v56 = v43;

      swift_unknownObjectRelease();
      v45 = v58;
      v47 = v54;
      v46 = v55;
      v48 = (*(v58 + 16))(v54, v62, v55);
      MEMORY[0x28223BE20](v48);
      v53[-2] = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40368, &qword_21AF784C0);
      sub_21AF760D8();
      if ((v61 & 1) == 0)
      {
        swift_getObjectType();
        (*(v45 + 8))(v47, v46);
        sub_21AF76668();
        swift_unknownObjectRelease();
        v51 = sub_21AF76638();
        (*(v59 + 8))(v16, v60);
        v30 = v57;
        v52 = *(v57 + qword_27CD40390);
        *(v57 + qword_27CD40390) = v51;

        goto LABEL_5;
      }

      swift_unknownObjectRelease();
      v49 = sub_21AF75FA8();
      sub_21AF5D0F0(&qword_27CD40370, MEMORY[0x277D3E2E8]);
      swift_allocError();
      (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D3E258], v49);
      swift_willThrow();
      return (*(v45 + 8))(v47, v46);
    }
  }

  else if (v21 == 2)
  {
    v59 = v18;
    v60 = v17;
    v22 = *(v1 + qword_27CD403A0);
    v23 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v24 = off_282C89A80;
    type metadata accessor for MessageInBlobBridge();
    v57 = v1;
    v58 = v4;
    swift_unknownObjectRetain();
    v56 = v23;
    v25 = v62;
    v24();
    result = swift_unknownObjectRelease();
    if (!v25)
    {
      v28 = v59;
      v27 = v60;
      (*(v59 + 16))(v20, &v11[*(v8 + 20)], v60);
      sub_21AF5D138(v11, type metadata accessor for AttributedMessage);
      v29 = sub_21AF76638();
      (*(v28 + 8))(v20, v27);
      v30 = v57;
      v31 = *(v57 + qword_27CD40390);
      *(v57 + qword_27CD40390) = v29;

      v32 = v56 + *(v58 + 72);
LABEL_5:
      v33 = sub_21AF760E8();
      v34 = (v30 + qword_27CD40398);
      v35 = *(v30 + qword_27CD40398 + 8);
      *v34 = v33;
      v34[1] = v36;
    }
  }

  else
  {
    sub_21AF5D09C();
    swift_allocError();
    *v42 = 0;
    v42[1] = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21AF5C294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40400, &unk_21AF77630);
  v9 = sub_21AF75F88();
  result = v9(a1, a2, a3);
  if (!v4 && !result)
  {
    sub_21AF5BC80(a3);
    if (*(v5 + qword_27CD40390) && *(v5 + qword_27CD40398 + 8))
    {
      v11 = *(v5 + qword_27CD40398);
      v12 = *(v5 + qword_27CD40390);

      v14 = sub_21AF764E8();

      v15 = *(v5 + qword_27CD403A8);
      *(v5 + qword_27CD403A8) = v14;

      return 0;
    }

    else
    {
      sub_21AF5D09C();
      swift_allocError();
      *v13 = 0xD000000000000012;
      v13[1] = 0x800000021AF79020;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_21AF5C434(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_21AF76448();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21AF75E98();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21AF766F8();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21AF75F78();
  sub_21AF5CD34();
  sub_21AF5CEDC();
  sub_21AF5CE34();
  result = sub_21AF75EF8();
  if (v37 == 5 || !*(v2 + qword_27CD40390))
  {
    return 1;
  }

  if (v37 > 1u)
  {
    if (v37 == 2)
    {
      v23 = *(v2 + qword_27CD40390);

      v24 = sub_21AF764A8();
      v26 = v25;
      sub_21AF75E88();
      sub_21AF75FF8();

      sub_21AF559E4(v24, v26);
      (*(v32 + 8))(v10, v7);
    }

    else
    {
      if (v37 == 3)
      {
        v17 = *(v2 + qword_27CD40390);

        sub_21AF76498();
        sub_21AF76438();
        (*(v33 + 8))(v6, v34);
      }

      else
      {
        v28 = *(v2 + qword_27CD40398);
        v27 = *(v2 + qword_27CD40398 + 8);
      }

      sub_21AF76088();
    }

    return 0;
  }

  if (!v37)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v18 = *(v2 + qword_27CD403A8);
      if (v15 < *(v18 + 16))
      {
        v19 = sub_21AF5CF68(v18 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v15, v14, MEMORY[0x277D3E5A8]);
        MEMORY[0x28223BE20](v19);
        v20 = v35;
        *(&v31 - 2) = v2;
        *(&v31 - 1) = v20;

        v21 = v36;
        sub_21AF766E8();
        v22 = v21;
        sub_21AF5D138(v14, MEMORY[0x277D3E5A8]);
        goto LABEL_17;
      }
    }

    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  v29 = v35;
  *(&v31 - 2) = v2;
  *(&v31 - 1) = v29;

  v30 = v36;
  sub_21AF764D8();
  v22 = v30;
LABEL_17:

  if (!v22)
  {
    return 0;
  }

  return result;
}

uint64_t sub_21AF5C8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21AF76488();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  v18 = *(a2 + qword_27CD403A0);
  sub_21AF5CF68(a1, v20 - v16, MEMORY[0x277D3E588]);
  (*(v7 + 56))(v17, 0, 1, v6);
  sub_21AF58D88(v17, v15);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    swift_unknownObjectRetain();
    sub_21AF5CFD0(v15);
    sub_21AF76008();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_21AF5D038(v15, v10);
    swift_unknownObjectRetain();
    sub_21AF6AC78(a3, v18);
    swift_unknownObjectRelease();
    sub_21AF5D138(v10, MEMORY[0x277D3E588]);
  }

  return sub_21AF5CFD0(v17);
}

uint64_t sub_21AF5CB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + qword_27CD403A0);
  swift_unknownObjectRetain();
  v5 = sub_21AF765C8();
  v7 = v6;
  sub_21AF765F8();
  v9 = v8;
  swift_getObjectType();
  v10 = *(v9 + 8);
  v11 = sub_21AF76518();
  v13 = v12;
  swift_unknownObjectRelease();
  sub_21AF70688(v5, v7, v11, v13, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_21AF5CBC8()
{
  v1 = *(v0 + qword_27CD40390);

  v2 = *(v0 + qword_27CD40398 + 8);

  v3 = *(v0 + qword_27CD403A0);
  swift_unknownObjectRelease();
  v4 = *(v0 + qword_27CD403A8);
}

uint64_t sub_21AF5CC2C()
{
  v0 = sub_21AF76218();
  v1 = *(v0 + qword_27CD40390);

  v2 = *(v0 + qword_27CD40398 + 8);

  v3 = *(v0 + qword_27CD403A0);
  swift_unknownObjectRelease();
  v4 = *(v0 + qword_27CD403A8);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_21AF5CCDC()
{
  result = qword_27CD403C0;
  if (!qword_27CD403C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403C0);
  }

  return result;
}

unint64_t sub_21AF5CD34()
{
  result = qword_27CD403C8;
  if (!qword_27CD403C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403C8);
  }

  return result;
}

unint64_t sub_21AF5CD8C()
{
  result = qword_27CD403D0;
  if (!qword_27CD403D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403D0);
  }

  return result;
}

unint64_t sub_21AF5CDE0()
{
  result = qword_27CD403D8;
  if (!qword_27CD403D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403D8);
  }

  return result;
}

unint64_t sub_21AF5CE34()
{
  result = qword_27CD403E0;
  if (!qword_27CD403E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403E0);
  }

  return result;
}

unint64_t sub_21AF5CE88()
{
  result = qword_27CD403E8;
  if (!qword_27CD403E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403E8);
  }

  return result;
}

unint64_t sub_21AF5CEDC()
{
  result = qword_27CD403F8;
  if (!qword_27CD403F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403F8);
  }

  return result;
}

uint64_t sub_21AF5CF68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21AF5CFD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF5D038(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AF76488();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21AF5D09C()
{
  result = qword_27CD40408;
  if (!qword_27CD40408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40408);
  }

  return result;
}

uint64_t sub_21AF5D0F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21AF5D138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_10PoirotUDFs13PGetManyErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21AF5D1B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF5D204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_21AF5D260(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PGetManyColumn(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PGetManyColumn(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21AF5D3FC()
{
  result = qword_27CD40418;
  if (!qword_27CD40418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD40420, &qword_21AF77760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40418);
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

uint64_t sub_21AF5D4A8()
{
  v0 = sub_21AF76A58();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t Optional<A>.asAnyValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[2] = *(a2 + 16);
  v8[3] = a3;
  v8[4] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40428, &qword_21AF77BA0);
  v6 = sub_21AF766F8();
  return sub_21AF5D640(sub_21AF5D628, v8, v5, v6, &v9, a4);
}

uint64_t sub_21AF5D5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = (*(a4 + 16))(a2, a3, a4);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_21AF5D640@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t sub_21AF5D924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 - 8);
  v9[2] = *(a2 + 16);
  v9[3] = v5;
  v9[4] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40428, &qword_21AF77BA0);
  v7 = sub_21AF766F8();
  return sub_21AF5D640(sub_21AF5EE94, v9, v6, v7, &v10, a4);
}

uint64_t sub_21AF5DA70@<X0>(int a1@<W1>, _DWORD *a2@<X8>)
{
  *a2 = a1;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

uint64_t sub_21AF5DB24@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t sub_21AF5DBDC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

uint64_t sub_21AF5DC90@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t Float.asAnyValue(_:)@<X0>(float *a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t sub_21AF5DDC0@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t Double.asAnyValue(_:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t sub_21AF5DEEC@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t Bool.asAnyValue(_:)@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

uint64_t sub_21AF5E018@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

void static EnumManifestConstructing<>.columnType.getter(_BYTE *a1@<X8>)
{
  *a1 = 0;
}

{
  *a1 = 0;
}

uint64_t EnumManifestConstructing<>.asAnyValue(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = sub_21AF76348();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_21AF76868();
  v7 = *(a1 + 8);
  sub_21AF766B8();
  sub_21AF763B8();

  if (v2)
  {
  }

  sub_21AF76718();
  v9 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
}

uint64_t EnumManifestConstructing<>.asAnyValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v44 = a1;
  v42 = a3;
  v39 = a5;
  v7 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness();
  v38 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = sub_21AF76348();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v40 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v43 = a2;
  sub_21AF76868();
  if ((sub_21AF76958() & 1) != 0 && sub_21AF76948() > 64)
  {
    v46 = 0x8000000000000000;
    if (sub_21AF76958())
    {
      if (sub_21AF76948() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v20 = sub_21AF76958();
    v21 = sub_21AF76948();
    if (v20)
    {
      if (v21 > 64)
      {
LABEL_8:
        sub_21AF5E79C();
        v22 = v40;
        sub_21AF76928();
        v23 = *(*(a4 + 32) + 8);
        v24 = sub_21AF76768();
        result = (*(v14 + 8))(v22, v13);
        if ((v24 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_28:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      sub_21AF76B68();
      v26 = v40;
      sub_21AF76B38();
      v27 = *(*(a4 + 32) + 8);
      v28 = sub_21AF76768();
      result = (*(v14 + 8))(v26, v13);
      if (v28)
      {
        goto LABEL_28;
      }

LABEL_13:
      sub_21AF76938();
      goto LABEL_14;
    }

    if (v21 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (sub_21AF76948() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v29 = sub_21AF76958();
    v30 = sub_21AF76948();
    if ((v29 & 1) == 0)
    {
      break;
    }

    if (v30 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_21AF5E79C();
    v31 = v40;
    sub_21AF76928();
    v32 = *(*(a4 + 32) + 8);
    v33 = sub_21AF76768();
    (*(v14 + 8))(v31, v13);
    if (v33)
    {
      __break(1u);
LABEL_19:
      if (sub_21AF76948() == 64 && (sub_21AF76958() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v30 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_21AF76938();
LABEL_24:
  sub_21AF76938();
  (*(v14 + 8))(v19, v13);
  v34 = *(v42 + 8);
  sub_21AF766B8();
  v35 = v45;
  sub_21AF763B8();
  if (v35)
  {
  }

  v36 = v39;
  sub_21AF76708();
  v37 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
}

unint64_t sub_21AF5E79C()
{
  result = qword_27CD40430;
  if (!qword_27CD40430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40430);
  }

  return result;
}

uint64_t String.asAnyValue(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
}

uint64_t sub_21AF5E894@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  v5 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

uint64_t Data.asAnyValue(_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v6 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
  return sub_21AF567A4(a1, a2);
}

uint64_t sub_21AF5E9E4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v4;
  a1[1] = v3;
  v5 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
  return sub_21AF567A4(v4, v3);
}

uint64_t Date.asAnyValue(_:)@<X0>(void *a1@<X8>)
{
  sub_21AF75E18();
  *a1 = v2;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t sub_21AF5EB28@<X0>(void *a1@<X8>)
{
  sub_21AF75E18();
  *a1 = v2;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t MessageManifestConstructing<>.asAnyValue(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v23 = a4;
  v8 = sub_21AF76448();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 8);
  sub_21AF766B8();
  sub_21AF763C8();
  if (v4)
  {
  }

  v15 = v9;
  v16 = v23;

  v17 = (*(a3 + 8))(a1, a3);
  v19 = v18;
  v20 = sub_21AF76428();
  (*(v15 + 8))(v12, v8);
  sub_21AF559E4(v17, v19);
  *v16 = v20;
  v21 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
}

uint64_t sub_21AF5EE2C(uint64_t a1, void *a2)
{
  result = (*(v2[3] + 16))(v2[4], v2[2]);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t DefaultStreamSchemaProvider.__allocating_init(messageName:manifest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  DefaultStreamSchemaProvider.init(messageName:manifest:)(a1, a2, a3);
  return v9;
}

uint64_t DefaultStreamSchemaProvider.init(messageName:manifest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = (v3 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
  *v14 = 0;
  v14[1] = 0;
  *(v3 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_oneofs) = MEMORY[0x277D84FA0];
  v15 = (v3 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageColumnName);
  *v15 = 0;
  v15[1] = 0;
  sub_21AF5F160(a3, &v22 - v12);
  v16 = (v3 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName);
  *v16 = a1;
  v16[1] = a2;
  sub_21AF5A058(v13, v11);
  v17 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  v18 = sub_21AF76468();
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 1, v18);
  swift_weakInit();
  v19 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  v20 = sub_21AF763E8();
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 1, v20);
  *(v3 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns) = MEMORY[0x277D84F90];
  swift_beginAccess();
  sub_21AF5A0C8(v11, v3 + v17);
  swift_endAccess();
  sub_21AF567F8(a3, &qword_27CD40298, &unk_21AF77180);
  return v3;
}

uint64_t sub_21AF5F160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF5F1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_21AF76BE8();
  sub_21AF767F8();
  v7 = sub_21AF76C08();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_21AF76B58() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21AF5F2C8(uint64_t a1, _BYTE *a2)
{
  v71 = a2;
  v4 = sub_21AF76388();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v43[-v10];
  v12 = *(v2 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
  if (v12)
  {
    v72 = *(v2 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema + 8);
    v73 = v12;
    v13 = *(a1 + 16);
    swift_unknownObjectRetain();
    if (!v13)
    {
      v16 = MEMORY[0x277D84F90];
LABEL_54:
      swift_unknownObjectRelease();
      return v16;
    }

    v69 = v11;
    v14 = 0;
    v66 = (v5 + 16);
    v65 = *MEMORY[0x277D3E458];
    v64 = (v5 + 88);
    v62 = *MEMORY[0x277D3E4C0];
    v61 = *MEMORY[0x277D3E470];
    v60 = *MEMORY[0x277D3E4A0];
    v59 = *MEMORY[0x277D3E488];
    v58 = *MEMORY[0x277D3E4B0];
    v57 = *MEMORY[0x277D3E4C8];
    v56 = *MEMORY[0x277D3E478];
    v55 = *MEMORY[0x277D3E4A8];
    v54 = *MEMORY[0x277D3E490];
    v53 = *MEMORY[0x277D3E4B8];
    v52 = *MEMORY[0x277D3E4D0];
    v51 = *MEMORY[0x277D3E480];
    v50 = *MEMORY[0x277D3E468];
    v49 = *MEMORY[0x277D3E450];
    v48 = *MEMORY[0x277D3E498];
    v63 = (v5 + 8);
    v15 = a1 + 40;
    v47 = *MEMORY[0x277D3E460];
    v16 = MEMORY[0x277D84F90];
    v67 = v9;
    v68 = v4;
    while (2)
    {
      v70 = v16;
      v17 = (v15 + 16 * v14);
      v18 = v14;
      while (1)
      {
        if (v18 >= v13)
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v14 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_58;
        }

        v19 = *(v17 - 1);
        v20 = *v17;
        swift_getObjectType();

        v21 = v74;
        sub_21AF76658();
        v74 = v21;
        if (v21)
        {
          v16 = v70;

          swift_unknownObjectRelease();
LABEL_53:

          return v16;
        }

        v23 = v22;
        swift_getObjectType();
        if ((sub_21AF76568() & 1) == 0)
        {
          break;
        }

        swift_unknownObjectRelease();

        *v71 = 1;
        ++v18;
        v17 += 2;
        if (v14 == v13)
        {
          v16 = v70;
          goto LABEL_54;
        }
      }

      v24 = *(v23 + 8);
      v46 = sub_21AF76518();
      v26 = v25;
      v27 = v69;
      v28 = v74;
      sub_21AF76578();
      if (v28)
      {
        v16 = v70;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_53;
      }

      v45 = v26;
      v74 = 0;
      v29 = v67;
      v30 = v68;
      (*v66)(v67, v27, v68);
      v31 = (*v64)(v29, v30);
      if (v31 == v65)
      {
        v44 = 0;
LABEL_16:
        v32 = v63;
        (*v63)(v29, v30);
        goto LABEL_23;
      }

      if (v31 == v62)
      {
        v44 = 10;
        goto LABEL_16;
      }

      if (v31 == v61)
      {
        goto LABEL_18;
      }

      if (v31 == v60)
      {
LABEL_20:
        v33 = 4;
        goto LABEL_21;
      }

      if (v31 == v59)
      {
        goto LABEL_18;
      }

      if (v31 == v58)
      {
        goto LABEL_20;
      }

      if (v31 == v57)
      {
LABEL_18:
        v33 = 2;
LABEL_21:
        v44 = v33;
LABEL_22:
        v32 = v63;
LABEL_23:
        swift_unknownObjectRelease();

        (*v32)(v27, v30);
        v34 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_21AF6D2A0(0, *(v34 + 2) + 1, 1, v34);
        }

        v36 = *(v34 + 2);
        v35 = *(v34 + 3);
        v37 = v34;
        if (v36 >= v35 >> 1)
        {
          v37 = sub_21AF6D2A0((v35 > 1), v36 + 1, 1, v34);
        }

        *(v37 + 2) = v36 + 1;
        v38 = &v37[24 * v36];
        v16 = v37;
        v39 = v45;
        *(v38 + 4) = v46;
        *(v38 + 5) = v39;
        *(v38 + 24) = v44;
        if (v14 != v13)
        {
          continue;
        }

        goto LABEL_54;
      }

      break;
    }

    if (v31 == v56)
    {
LABEL_33:
      v33 = 3;
      goto LABEL_21;
    }

    if (v31 == v55)
    {
      goto LABEL_35;
    }

    if (v31 == v54)
    {
      goto LABEL_33;
    }

    if (v31 == v53)
    {
LABEL_35:
      v33 = 5;
      goto LABEL_21;
    }

    if (v31 == v52)
    {
      goto LABEL_33;
    }

    if (v31 == v51)
    {
      v40 = 7;
    }

    else if (v31 == v50)
    {
      v40 = 6;
    }

    else if (v31 == v49)
    {
      v40 = 9;
    }

    else
    {
      if (v31 == v48)
      {
        v44 = 0;
LABEL_50:
        v30 = v68;
        v27 = v69;
        goto LABEL_22;
      }

      if (v31 != v47)
      {
        v42 = 0;
        goto LABEL_61;
      }

      v40 = 1;
    }

    v44 = v40;
    goto LABEL_50;
  }

LABEL_59:
  v42 = 0;
LABEL_61:
  result = sub_21AF76A18();
  __break(1u);
  return result;
}

uint64_t sub_21AF5F974()
{
  v2 = (v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
  if (*(v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema))
  {
    v3 = v0;
    v4 = v2[1];
    v5 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v6 = sub_21AF76688();
    swift_unknownObjectRelease();
    v30 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40330, &qword_21AF773C0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21AF77930;
    if (qword_27CD40280 != -1)
    {
      swift_once();
    }

    v8 = unk_27CD40620;
    v9 = word_27CD40628;
    v10 = HIBYTE(word_27CD40628);
    *(v7 + 32) = qword_27CD40618;
    *(v7 + 40) = v8;
    *(v7 + 48) = v9;
    *(v7 + 49) = v10;
    v29 = v6;
    v11 = *v2;
    if (*v2)
    {
      v12 = v2[1];
      v13 = *v2;
      swift_getObjectType();

      swift_unknownObjectRetain();
      v14 = sub_21AF76698();
      swift_unknownObjectRetain();

      v15 = sub_21AF61570(v14, v11, v12, &v29);
      if (v1)
      {

        swift_unknownObjectRelease_n();
      }

      v16 = v15;

      swift_unknownObjectRelease_n();

      v18 = sub_21AF5F2C8(v29, &v30);
      v19 = *(v16 + 16);

      if (v19 || v30 == 1)
      {
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_21AF77930;
        if (qword_27CD40288 != -1)
        {
          swift_once();
        }

        v21 = *algn_27CD40638;
        v22 = word_27CD40640;
        v23 = HIBYTE(word_27CD40640);
        *(v20 + 32) = qword_27CD40630;
        *(v20 + 40) = v21;
        *(v20 + 48) = v22;
        *(v20 + 49) = v23;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (!*(MEMORY[0x277D84F90] + 16))
        {
          v25 = 0;
          v26 = 0;
          goto LABEL_13;
        }
      }

      v25 = *(v20 + 32);
      v24 = *(v20 + 40);

LABEL_13:
      v27 = (v3 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageColumnName);
      v28 = *(v3 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageColumnName + 8);
      *v27 = v25;
      v27[1] = v26;

      sub_21AF60FF8(v18);
      sub_21AF60FF8(v16);
      sub_21AF60FF8(v20);
      return v7;
    }
  }

  result = sub_21AF76A18();
  __break(1u);
  return result;
}

uint64_t sub_21AF5FCD0()
{
  v2 = v0;
  sub_21AF763D8();
  swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName);
  v4 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName + 8);
  v5 = sub_21AF765A8();
  if (v1)
  {
    return swift_unknownObjectRelease();
  }

  v7 = v5;
  v8 = v6;
  swift_unknownObjectRelease();
  v9 = (v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
  v10 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
  *v9 = v7;
  v9[1] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v11 = sub_21AF5F974();
  swift_unknownObjectRelease();
  v12 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  swift_beginAccess();
  v13 = *(v2 + v12);
  *(v2 + v12) = v11;
}

uint64_t sub_21AF5FDE0@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_21AF763A8();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  MEMORY[0x28223BE20](v10);
  v76 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40438, &qword_21AF77958);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v79 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = &v72 - v17;
  v18 = sub_21AF76378();
  v80 = *(v18 - 8);
  v19 = *(v80 + 64);
  MEMORY[0x28223BE20](v18);
  v75 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  v24 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  swift_beginAccess();
  v25 = *(v6 + v24);
  if (*(v25 + 16) <= a1)
  {
    goto LABEL_35;
  }

  v26 = v25 + 24 * a1;
  v28 = *(v26 + 32);
  v27 = *(v26 + 40);
  v29 = qword_27CD40280;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v28 == qword_27CD40618 && v27 == unk_27CD40620;
  if (v30 || (sub_21AF76B58() & 1) != 0)
  {

    *a3 = v21;
    v31 = sub_21AF766F8();
    swift_storeEnumTagMultiPayload();
    v32 = *(*(v31 - 8) + 56);
    v33 = a3;
LABEL_11:
    v34 = 0;
    v35 = v31;
    return v32(v33, v34, 1, v35);
  }

  v73 = v18;
  v74 = a3;
  if (!*(v6 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema))
  {
    goto LABEL_35;
  }

  v37 = *(v6 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema + 8);
  v38 = *(v6 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v39 = sub_21AF76678();
  if (v5)
  {

    return swift_unknownObjectRelease();
  }

  v40 = v39;
  swift_unknownObjectRelease();
  v41 = *(v6 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageColumnName + 8);
  if (v41)
  {
    v42 = v28 == *(v6 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageColumnName) && v41 == v27;
    if (v42 || (sub_21AF76B58() & 1) != 0)
    {

      v43 = v74;
      *v74 = v40;
      v31 = sub_21AF766F8();
      swift_storeEnumTagMultiPayload();
      v32 = *(*(v31 - 8) + 56);
      v33 = v43;
      goto LABEL_11;
    }
  }

  v44 = sub_21AF76848();
  v45 = v74;
  if (v44)
  {
    v46 = sub_21AF76808();
    v47 = sub_21AF76808();
    v49 = __OFSUB__(v46, v47);
    v50 = v46 - v47;
    v51 = v73;
    if (!v49)
    {
      v52 = sub_21AF618E4(v50, v28, v27, v48);
      v54 = v53;
      v56 = v55;
      v58 = v57;

      MEMORY[0x21CEE7460](v52, v54, v56, v58);

      v59 = v81;
      sub_21AF764C8();

      v60 = v80;
      if ((*(v80 + 48))(v59, 1, v51) != 1)
      {
        v67 = v75;
        (*(v60 + 32))(v75, v59, v51);
        v68 = v76;
        sub_21AF76358();
        v69 = sub_21AF76398();
        v71 = v70;

        (*(v77 + 8))(v68, v78);
        (*(v60 + 8))(v67, v51);
        *v45 = v69;
        v45[1] = v71;
        v31 = sub_21AF766F8();
        swift_storeEnumTagMultiPayload();
        v32 = *(*(v31 - 8) + 56);
        v33 = v45;
        goto LABEL_11;
      }

      v61 = v59;
LABEL_30:
      sub_21AF567F8(v61, &qword_27CD40438, &qword_21AF77958);
      v35 = sub_21AF766F8();
      v32 = *(*(v35 - 8) + 56);
      v33 = v45;
      v34 = 1;
      return v32(v33, v34, 1, v35);
    }

    __break(1u);
    while (1)
    {
LABEL_35:
      sub_21AF76A18();
      __break(1u);
    }
  }

  v62 = OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_oneofs;
  swift_beginAccess();
  v63 = *(v6 + v62);

  LOBYTE(v62) = sub_21AF5F1D0(v28, v27, v63);

  v64 = v73;
  if (v62)
  {
    v65 = v79;
    sub_21AF764C8();

    v66 = v80;
    if ((*(v80 + 48))(v65, 1, v64) != 1)
    {
      sub_21AF76368();

      (*(v66 + 8))(v65, v64);
      v35 = sub_21AF766F8();
      v32 = *(*(v35 - 8) + 56);
      v33 = v45;
      v34 = 0;
      return v32(v33, v34, 1, v35);
    }

    v61 = v65;
    goto LABEL_30;
  }

  sub_21AF764B8();
}

uint64_t sub_21AF605B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_oneofs);

  v3 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageColumnName + 8);
}

uint64_t DefaultStreamSchemaProvider.deinit()
{
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest, &qword_27CD40298, &unk_21AF77180);
  v1 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns);

  swift_weakDestroy();
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore, &qword_27CD402A0, &unk_21AF77960);
  v2 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName + 8);

  v3 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_oneofs);

  v5 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageColumnName + 8);

  return v0;
}

uint64_t DefaultStreamSchemaProvider.__deallocating_deinit()
{
  DefaultStreamSchemaProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21AF60734(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21AF76BE8();
  sub_21AF767F8();
  v9 = sub_21AF76C08();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_21AF76B58() & 1) != 0)
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

    sub_21AF60AE4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21AF60884(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40440, &qword_21AF779C0);
  result = sub_21AF76998();
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
      sub_21AF76BE8();
      sub_21AF767F8();
      result = sub_21AF76C08();
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

uint64_t sub_21AF60AE4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_21AF60884(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21AF60C64();
      goto LABEL_16;
    }

    sub_21AF60DC0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_21AF76BE8();
  sub_21AF767F8();
  result = sub_21AF76C08();
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

      result = sub_21AF76B58();
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
  result = sub_21AF76B78();
  __break(1u);
  return result;
}

void *sub_21AF60C64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40440, &qword_21AF779C0);
  v2 = *v0;
  v3 = sub_21AF76988();
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

uint64_t sub_21AF60DC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40440, &qword_21AF779C0);
  result = sub_21AF76998();
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
      sub_21AF76BE8();

      sub_21AF767F8();
      result = sub_21AF76C08();
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

uint64_t sub_21AF60FF8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21AF6D2A0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21AF61104(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v17 = a1 + 32;
  v5 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_4;
    }

    v6 = (v17 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(a2 + 40);
    sub_21AF76BE8();

    sub_21AF767F8();
    v10 = sub_21AF76C08();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v8 && v14[1] == v7;
    if (v15 || (sub_21AF76B58() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v4;
}

uint64_t sub_21AF61264(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_21AF61104(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return *(v5 + 16);
  }

  v38 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = a2 + 56;
    while (1)
    {
      while (1)
      {
        v14 = *(v5 + 16);
        if (v9 == v14)
        {
          return v8;
        }

        if (v9 >= v14)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v15 = v5 + 32;
        v16 = (v5 + 32 + 16 * v9);
        if (*(a2 + 16))
        {
          break;
        }

LABEL_21:
        if (v8 != v9)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v26 = *(v5 + 16);
          if (v8 >= v26)
          {
            goto LABEL_37;
          }

          if (v9 >= v26)
          {
            goto LABEL_38;
          }

          v27 = (v15 + 16 * v8);
          v29 = *v27;
          v28 = v27[1];
          v30 = v5;
          v32 = *v16;
          v31 = v16[1];

          v33 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_21AF610F0(v30);
          }

          v34 = v33;
          v35 = v33 + 32;
          v36 = &v35[16 * v8];
          v37 = *(v36 + 1);
          *v36 = v32;
          *(v36 + 1) = v31;
          v5 = v34;

          if (v9 >= *(v5 + 16))
          {
            goto LABEL_39;
          }

          v11 = &v35[16 * v9];
          v12 = *(v11 + 1);
          *v11 = v29;
          *(v11 + 1) = v28;

          *v38 = v5;
        }

        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_35;
        }

        v13 = __OFADD__(v9++, 1);
        if (v13)
        {
          goto LABEL_34;
        }
      }

      v39 = v5 + 32;
      v40 = v5;
      v18 = *v16;
      v17 = v16[1];
      v19 = *(a2 + 40);
      sub_21AF76BE8();

      sub_21AF767F8();
      v20 = sub_21AF76C08();
      v21 = -1 << *(a2 + 32);
      v22 = v20 & ~v21;
      if (((*(v10 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
LABEL_20:

        v5 = v40;
        v15 = v39;
        goto LABEL_21;
      }

      v23 = ~v21;
      while (1)
      {
        v24 = (*(a2 + 48) + 16 * v22);
        v25 = *v24 == v18 && v24[1] == v17;
        if (v25 || (sub_21AF76B58() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v10 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v5 = v40;
      v13 = __OFADD__(v9++, 1);
      if (v13)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_21AF614B0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF61570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v43 = a4;
    v7 = (a1 + 40);
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      swift_getObjectType();

      sub_21AF766A8();
      if (v5)
      {

        return v8;
      }

      v12 = v11;
      v39 = v7;
      v38 = v6;
      swift_getObjectType();
      v13 = sub_21AF76588();
      v14 = v43;
      result = sub_21AF61264(v43, v13);
      v16 = *v14;
      v17 = *(*v14 + 16);
      if (result > v17)
      {
        break;
      }

      v18 = result;
      if (result < 0)
      {
        goto LABEL_28;
      }

      v19 = result;
      if (__OFADD__(v17, result - v17))
      {
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v43;
      *v43 = v16;
      if (!isUniquelyReferenced_nonNull_native || v19 > *(v16 + 24) >> 1)
      {
        if (v17 <= v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = v17;
        }

        v23 = sub_21AF6D600(isUniquelyReferenced_nonNull_native, v22, 1, v16);
        v21 = v43;
        v16 = v23;
        *v43 = v23;
      }

      sub_21AF614B0(v18, v17, 0);
      *v21 = v16;

      v24 = *(v12 + 8);
      v25 = sub_21AF76518();
      v27 = v26;
      swift_beginAccess();
      sub_21AF60734(&v42, v25, v27);
      swift_endAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40330, &qword_21AF773C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21AF77940;
      v40 = sub_21AF76518();
      v41 = v29;

      MEMORY[0x21CEE74A0](0x666F656E6F5FLL, 0xE600000000000000);

      *(inited + 32) = v40;
      *(inited + 40) = v41;
      *(inited + 48) = 256;
      *(inited + 56) = sub_21AF76518();
      *(inited + 64) = v30;
      *(inited + 72) = 266;

      result = swift_unknownObjectRelease();
      v31 = *(v8 + 16);
      v32 = v31 + 2;
      if (__OFADD__(v31, 2))
      {
        goto LABEL_30;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0 || (v33 = *(v8 + 24) >> 1, v33 < v32))
      {
        if (v31 <= v32)
        {
          v34 = v31 + 2;
        }

        else
        {
          v34 = v31;
        }

        result = sub_21AF6D2A0(result, v34, 1, v8);
        v8 = result;
        v33 = *(result + 24) >> 1;
      }

      v5 = 0;
      if (v33 - *(v8 + 16) < 2)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      v35 = *(v8 + 16);
      v36 = __OFADD__(v35, 2);
      v37 = v35 + 2;
      if (v36)
      {
        goto LABEL_32;
      }

      *(v8 + 16) = v37;
      v7 = v39 + 2;
      v6 = v38 - 1;
      if (v38 == 1)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_21AF618E4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_21AF76818();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t type metadata accessor for DefaultStreamSchemaProvider()
{
  result = qword_280B16E28;
  if (!qword_280B16E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF61AF8(uint64_t a1, char *a2, char *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, char *a7, uint64_t (*a8)(char *, char *, char *, uint64_t), char *a9, uint64_t a10)
{
  v58 = a8;
  v56 = a4;
  v50 = a6;
  v51 = a7;
  v49 = a5;
  v54 = a2;
  v55 = a3;
  v53 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - v12;
  v14 = sub_21AF766F8();
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v21 = sub_21AF76488();
  v52 = *(v21 - 8);
  v22 = *(v52 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v46 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v46 - v33;
  v35 = v57;
  result = v58(v53, v54, v55, v56);
  if (!v35)
  {
    v46 = v29;
    v53 = v20;
    v54 = v18;
    v55 = v13;
    v56 = v14;
    v37 = v49;
    v58 = 0;
    v57 = &v46;
    MEMORY[0x28223BE20](result);
    *(&v46 - 2) = v51;
    sub_21AF58D88(v34, v32);
    v38 = *(v52 + 48);
    v47 = v21;
    if (v38(v32, 1, v21) == 1)
    {
      sub_21AF567F8(v32, &qword_27CD40338, &unk_21AF77F80);
LABEL_9:
      sub_21AF6228C(v34);
      return sub_21AF567F8(v34, &qword_27CD40338, &unk_21AF77F80);
    }

    sub_21AF59B88(v32, v24, MEMORY[0x277D3E588]);
    if (!v37)
    {
      sub_21AF59B18(v24, MEMORY[0x277D3E588]);
      goto LABEL_9;
    }

    v39 = v54;
    sub_21AF76478();
    v40 = v55;
    v37(v39);
    sub_21AF59B18(v39, MEMORY[0x277D3E5A8]);
    if ((*(v48 + 48))(v40, 1, v56) == 1)
    {
      sub_21AF567F8(v40, &qword_27CD402A8, &qword_21AF77190);
      v41 = v46;
      (*(v52 + 56))(v46, 1, 1, v47);
      sub_21AF6228C(v41);
      sub_21AF59B78(v37);
      sub_21AF567F8(v41, &qword_27CD40338, &unk_21AF77F80);
    }

    else
    {
      v56 = a10;
      v42 = MEMORY[0x277D3E5A8];
      v43 = v40;
      v44 = v53;
      v45 = sub_21AF59B88(v43, v53, MEMORY[0x277D3E5A8]);
      MEMORY[0x28223BE20](v45);
      *(&v46 - 2) = a9;
      *(&v46 - 1) = (&v46 - 4);
      sub_21AF766E8();
      sub_21AF59B78(v37);
      sub_21AF59B18(v44, v42);
    }

    sub_21AF59B18(v24, MEMORY[0x277D3E588]);
    return sub_21AF567F8(v34, &qword_27CD40338, &unk_21AF77F80);
  }

  return result;
}

uint64_t sub_21AF62070(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v10 - v6;
  sub_21AF59C28(a1, v10 - v6);
  v8 = sub_21AF76488();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  a2(v7);
  return sub_21AF567F8(v7, &qword_27CD40338, &unk_21AF77F80);
}

uint64_t sub_21AF62180(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, char *))
{
  v7 = sub_21AF75E98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return sub_21AF76008();
  }

  sub_21AF75E88();
  a4(a1, a2 - a1, v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_21AF6228C(uint64_t a1)
{
  v64 = a1;
  v1 = sub_21AF75E98();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v1);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21AF76648();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21AF76418();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v54 - v12;
  v14 = sub_21AF76488();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40340, &qword_21AF773C8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v54 - v24;
  v26 = sub_21AF760B8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v31;
  sub_21AF760C8();
  if ((*(v27 + 48))(v25, 1, v32) == 1)
  {
    return sub_21AF567F8(v25, &qword_27CD40340, &qword_21AF773C8);
  }

  (*(v27 + 32))(v30, v25, v32);
  sub_21AF58D88(v64, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21AF567F8(v13, &qword_27CD40338, &unk_21AF77F80);
    sub_21AF76008();
    return (*(v27 + 8))(v30, v32);
  }

  v34 = v21;
  sub_21AF59B88(v13, v21, MEMORY[0x277D3E588]);
  sub_21AF59C28(v21, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v36 = v30;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v45 = *v19;
        sub_21AF76098();
      }

      else
      {
        v40 = *v19;
        sub_21AF76048();
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v41 = *v19;
      sub_21AF76058();
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v39 = *v19;
      sub_21AF760A8();
    }

    else
    {
      v44 = *v19;
      sub_21AF76038();
    }

    goto LABEL_27;
  }

  v36 = v30;
  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v42 = *v19;
      sub_21AF76078();
    }

    else
    {
      v37 = v65[6];
      if (EnumCaseMultiPayload == 6)
      {
        v38 = *v19;
        sub_21AF75FE8();
      }

      else
      {
        v47 = v58;
        v46 = v59;
        v48 = v19;
        v49 = v60;
        (*(v59 + 32))(v58, v48, v60);
        sub_21AF76408();
        if (!v37)
        {
          sub_21AF75FC8();
        }

        (*(v46 + 8))(v47, v49);
      }
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
  {
    sub_21AF546A0(v19, v65);
    v43 = __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    MEMORY[0x28223BE20](v43);
    *(&v54 - 2) = v30;
    sub_21AF76528();
    sub_21AF59B18(v21, MEMORY[0x277D3E588]);
    __swift_destroy_boxed_opaque_existential_1(v65);
    return (*(v27 + 8))(v36, v32);
  }

  v51 = v61;
  v50 = v62;
  v52 = v63;
  (*(v61 + 32))(v63, v19, v62);
  if (sub_21AF765C8())
  {
    sub_21AF765C8();
    v53 = v55;
    sub_21AF75E88();
    sub_21AF76068();
    (*(v56 + 8))(v53, v57);
    (*(v51 + 8))(v63, v50);
LABEL_27:
    sub_21AF59B18(v34, MEMORY[0x277D3E588]);
    return (*(v27 + 8))(v36, v32);
  }

  sub_21AF76008();
  (*(v51 + 8))(v52, v50);
  sub_21AF59B18(v34, MEMORY[0x277D3E588]);
  return (*(v27 + 8))(v30, v32);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for PStreamConnection()
{
  result = qword_27CD40458;
  if (!qword_27CD40458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF62C04()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject() + qword_27CD40448;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40470, &qword_21AF77A38);
  if (swift_dynamicCastClass())
  {
    swift_weakAssign();
    return sub_21AF76258();
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF62D28@<X0>(uint64_t a1@<X8>)
{
  v4 = qword_27CD40448;
  swift_beginAccess();
  sub_21AF63F00(v1 + v4, &v13);
  if (v14)
  {
    return sub_21AF546A0(&v13, a1);
  }

  sub_21AF63E7C(&v13);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong + *(*Strong + qword_27CD409E0 + 16);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 1);
      swift_getObjectType();
      v15 = v1;
      v9 = sub_21AF75F48();
      (*(v8 + 24))(&v13, v9);
      if (!v2)
      {
        swift_unknownObjectRelease();

        sub_21AF63F70(&v13, v12);
        v11 = v15;
        swift_beginAccess();
        sub_21AF63FD4(v12, v11 + v4);
        swift_endAccess();
        return sub_21AF546A0(&v13, a1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_21AF57354();
      swift_allocError();
      *v10 = 0xD000000000000012;
      *(v10 + 8) = 0x800000021AF78CB0;
      *(v10 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF62F78()
{
  result = sub_21AF62D28(v9);
  if (!v0)
  {
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v3 + 32))(v6, v2, v3);
    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v5 + 16))(v4, v5);
    sub_21AF76238();

    __swift_destroy_boxed_opaque_existential_1(v6);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

uint64_t sub_21AF6304C()
{
  sub_21AF62D28(v15);
  if (v1)
  {
    return v0;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0 = Strong;
    v4 = Strong + *(*Strong + qword_27CD409E0 + 16);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);

      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 8))(ObjectType, v5);
      v10 = v9;
      v11 = v7;
      swift_unknownObjectRelease();
      v12 = type metadata accessor for PStreamEnumerator();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v0 = sub_21AF70938(v15, v11, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_21AF57354();
      swift_allocError();
      *v8 = 0xD000000000000012;
      *(v8 + 8) = 0x800000021AF78CB0;
      *(v8 + 16) = 1;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    return v0;
  }

  result = sub_21AF76A18();
  __break(1u);
  return result;
}

uint64_t sub_21AF63244(uint64_t a1)
{
  sub_21AF62D28(v3);
  sub_21AF632B0(a1, v3);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return 0;
}

uint64_t sub_21AF632B0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 48);
  v34[2] = *(a1 + 32);
  v34[3] = v5;
  v6 = *(a1 + 80);
  v34[4] = *(a1 + 64);
  v35 = v6;
  v7 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v7;
  v8 = sub_21AF63800(v34, a2);
  if (!v2)
  {
    v11 = v8;
    v12 = v9;
    v13 = v10;
    v15 = a2[3];
    v14 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    v16 = (*(v14 + 8))(v15, v14);
    v36 = v13;
    if (v17)
    {
      v18 = 100;
    }

    else
    {
      v18 = v16;
    }

    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v19);
    v21 = (*(v20 + 16))(v19, v20);
    v22 = *(&v35 + 1);
    v33[0] = v18;
    v33[1] = v18 / 2;
    v33[2] = 1;
    v23 = v33[v12 + v11];
    v24 = *&v21;
    if (v25)
    {
      v24 = 0.01;
    }

    *(a1 + 72) = v23;
    v26 = v24 * v23;
    if (v22 <= 1)
    {
      v26 = 0.0;
    }

    *(a1 + 64) = v26;
    v27 = sub_21AF63478(a1, a2);
    v28 = sub_21AF71C18((v27 & 1) == 0, v36, v22, 0);
    v30 = v29;
    v31 = v28;

    sub_21AF63C68(v31, v30, a1);
  }

  return 1;
}

uint64_t sub_21AF63478(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = v2;
  if (v4 != 1)
  {
    v3 = a2[3];
    v6 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v3);
    if (((*(v6 + 3))(v3, v6) & 1) == 0)
    {
      return 1;
    }

    if ((v4 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v19 = 0;
      while (1)
      {
        v20 = *(a1 + 24);
        if (!v20)
        {
          break;
        }

        v21 = (v20 + v19);
        v22 = *v21;
        v23 = *(v21 + 4);
        v7 = *(sub_21AF76248() + 16);

        if (v7 <= v22)
        {
          goto LABEL_49;
        }

        v10 = v5;
        v24 = sub_21AF76248();
        if ((v22 & 0x80000000) != 0)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (*(v24 + 16) <= v22)
        {
          goto LABEL_42;
        }

        v3 = v5;
        v25 = v24 + 24 * v22;
        v6 = *(v25 + 32);
        v26 = *(v25 + 40);
        v27 = *(v25 + 48);
        v31 = *(v25 + 49);

        if (qword_27CD40280 != -1)
        {
          swift_once();
        }

        v28 = word_27CD40628;
        v29 = HIBYTE(word_27CD40628);
        v30 = qword_27CD40618 == v6 && unk_27CD40620 == v26;
        if (v30 || (sub_21AF76B58() & 1) != 0)
        {

          if (v28 == v27 && ((v31 ^ v29) & 1) == 0)
          {
            return v23 == 0;
          }
        }

        else
        {
        }

        v19 += 8;
        --v4;
        v5 = v3;
        if (!v4)
        {
          return 1;
        }
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v7 = a2;
  v8 = *v6;
  v9 = *(sub_21AF76248() + 16);

  if (v9 <= v8)
  {
LABEL_49:
    result = sub_21AF76A18();
    __break(1u);
    return result;
  }

  v10 = v5;
  v11 = sub_21AF76248();
  if ((v8 & 0x80000000) != 0)
  {
LABEL_43:
    __break(1u);
  }

  else if (*(v11 + 16) > v8)
  {
    v12 = v11 + 24 * v8;
    v5 = *(v12 + 32);
    v10 = *(v12 + 40);
    LODWORD(v4) = *(v12 + 48);
    LODWORD(v3) = *(v12 + 49);

    if (qword_27CD40280 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  __break(1u);
LABEL_45:
  swift_once();
LABEL_8:
  v13 = word_27CD40628;
  v14 = HIBYTE(word_27CD40628);
  v15 = qword_27CD40618 == v5 && unk_27CD40620 == v10;
  if (!v15 && (sub_21AF76B58() & 1) == 0)
  {

    return 1;
  }

  result = 1;
  if (v13 == v4 && ((v3 ^ v14) & 1) == 0)
  {
    v17 = v7[3];
    v18 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v17);
    if ((*(v18 + 24))(v17, v18))
    {
      *(a1 + 60) = 1;
      return *(v6 + 4) == 0;
    }

    *(a1 + 60) = *(v6 + 4) == 0;
    return 1;
  }

  return result;
}

uint64_t sub_21AF63800(unsigned int *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  if (((*(v4 + 24))(v3, v4) & 1) == 0)
  {
    return 0;
  }

  v5 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    if (v5)
    {
      v6 = 0;
      result = 0;
      v8 = 0;
      v38 = 0;
      v9 = MEMORY[0x277D84F90];
      v40 = a1;
      v39 = *a1;
      while (1)
      {
        v36 = v8;
        v37 = result;
        v35 = v9;
        v10 = v6;
        v11 = v6 <= v5 ? v5 : v6;
        v41 = v11;
        v12 = 8 * v6;
        for (i = 12 * v6 + 5; ; i += 12)
        {
          if (v41 == v10)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          if (i == 0x5FFFFFFF9)
          {
            goto LABEL_49;
          }

          v14 = *(a1 + 1);
          if (!v14)
          {
            goto LABEL_54;
          }

          v15 = (v14 + i);
          v16 = *(v15 - 5);
          v42 = *(v15 - 1);
          v17 = *v15;
          v18 = *(sub_21AF76248() + 16);

          if (v18 <= v16)
          {
            goto LABEL_56;
          }

          v19 = sub_21AF76248();
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_50;
          }

          if (*(v19 + 16) <= v16)
          {
            goto LABEL_51;
          }

          v43 = v12;
          v20 = v19 + 24 * v16;
          v22 = *(v20 + 32);
          v21 = *(v20 + 40);
          v23 = *(v20 + 48);
          v24 = *(v20 + 49);

          if (qword_27CD40280 != -1)
          {
            swift_once();
          }

          v25 = word_27CD40628;
          v26 = HIBYTE(word_27CD40628);
          v27 = qword_27CD40618 == v22 && unk_27CD40620 == v21;
          if (v27 || (sub_21AF76B58()) && v25 == v23 && ((v24 ^ v26) & 1) == 0 && v17)
          {
            break;
          }

LABEL_9:
          ++v10;

          v12 = v43 + 8;
          a1 = v40;
          if (v39 == v10)
          {
            return v37;
          }
        }

        HIDWORD(v29) = v42 - 4;
        LODWORD(v29) = v42 - 4;
        v28 = v29 >> 2;
        if (v28 <= 2)
        {
          break;
        }

        if (v28 != 7)
        {
          if (v28 == 3)
          {
            goto LABEL_32;
          }

          goto LABEL_9;
        }

LABEL_34:
        v6 = v10 + 1;
        v9 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = 1;
          goto LABEL_45;
        }

        v37 = 1;
LABEL_36:
        a1 = v40;
LABEL_37:
        v31 = *(v9 + 2);
        v30 = *(v9 + 3);
        if (v31 >= v30 >> 1)
        {
          v9 = sub_21AF6D70C((v30 > 1), v31 + 1, 1, v9);
        }

        v5 = v39;
        *(v9 + 2) = v31 + 1;
        v9[v31 + 32] = v42;
        if (__OFADD__(v38++, 1))
        {
          goto LABEL_52;
        }

        v33 = *(a1 + 4);
        if (!v33)
        {
          goto LABEL_55;
        }

        v34 = v33 + v43;
        *v34 = v38;
        *(v34 + 4) = 1;
        v8 = v36;
        result = v37;
        if (v39 == v6)
        {
          return result;
        }
      }

      if (!v28)
      {
        goto LABEL_34;
      }

      if (v28 == 1)
      {
LABEL_32:
        v6 = v10 + 1;
        v9 = v35;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v36 = 1;
          goto LABEL_36;
        }

        v36 = 1;
LABEL_45:
        a1 = v40;
        v9 = sub_21AF6D70C(0, *(v9 + 2) + 1, 1, v9);
        goto LABEL_37;
      }

      goto LABEL_9;
    }

    return 0;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_21AF76A18();
  __break(1u);
  return result;
}

void *sub_21AF63BD8(const char *a1, uint64_t a2)
{
  result = strlen(a1);
  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sqlite3_malloc(result + 1);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(a2 + 48) = result;
  *(a2 + 56) = 1;

  return memcpy(result, a1, v5);
}

void *sub_21AF63C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_21AF769A8();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__s = a1;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    result = strlen(__s);
    v7 = result + 1;
    if (!__OFADD__(result, 1))
    {
      if (v7 >= 0xFFFFFFFF80000000)
      {
        if (v7 <= 0x7FFFFFFF)
        {
          result = sqlite3_malloc(result + 1);
          if (result)
          {
            *(a3 + 48) = result;
            *(a3 + 56) = 1;
            return memcpy(result, __s, v7);
          }

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_21AF769A8();
  }

  v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
  result = strlen(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
  v6 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_19;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sqlite3_malloc(result + 1);
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  *(a3 + 48) = result;
  *(a3 + 56) = 1;

  return memcpy(result, (v4 + 32), v6);
}

uint64_t sub_21AF63DC8()
{
  sub_21AF63E7C(v0 + qword_27CD40448);

  return swift_weakDestroy();
}

uint64_t sub_21AF63E08()
{
  v0 = sub_21AF76268();
  v1 = qword_27CD40448;

  sub_21AF63E7C(v2 + v1);
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_21AF63E7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40468, &qword_21AF77A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF63F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40468, &qword_21AF77A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF63F70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21AF63FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40468, &qword_21AF77A30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF64044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404B0, &qword_21AF77B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AF77A40;
  *(inited + 32) = 0x6D756E655F70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = type metadata accessor for PEnumFunction();
  *(inited + 56) = &off_282C897C8;
  *(inited + 64) = 0x6A626F5F70;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = type metadata accessor for PObjFunction();
  *(inited + 88) = &off_282C897C8;
  *(inited + 96) = 0x7465675F70;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = type metadata accessor for PGetFunction();
  *(inited + 120) = &off_282C897C8;
  *(inited + 128) = 0x6E616D7465675F70;
  *(inited + 136) = 0xE900000000000079;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40410, &qword_21AF77640);
  v2 = sub_21AF68404();
  *(inited + 144) = v1;
  *(inited + 152) = v2;
  *(inited + 160) = 0x7269667465675F70;
  *(inited + 168) = 0xEA00000000007473;
  *(inited + 176) = type metadata accessor for PGetFirstFunction();
  *(inited + 184) = &off_282C897C8;
  *(inited + 192) = 0x666F656E6F5F70;
  *(inited + 200) = 0xE700000000000000;
  *(inited + 208) = type metadata accessor for POneOfFunction();
  *(inited + 216) = &off_282C897C8;
  *(inited + 224) = 0x6E6F5F7361685F70;
  *(inited + 232) = 0xEB00000000666F65;
  *(inited + 240) = type metadata accessor for PHasOneOfFunction();
  *(inited + 248) = &off_282C897C8;
  *(inited + 256) = 0x6E6F736A5F70;
  *(inited + 264) = 0xE600000000000000;
  *(inited + 272) = type metadata accessor for PJSONFunction();
  *(inited + 280) = &off_282C897C8;
  *(inited + 288) = 0x616F6C7961705F70;
  *(inited + 296) = 0xE900000000000064;
  *(inited + 304) = type metadata accessor for PPayloadFunction();
  *(inited + 312) = &off_282C897C8;
  strcpy((inited + 320), "p_message_name");
  *(inited + 335) = -18;
  *(inited + 336) = type metadata accessor for PMessageNameFunction();
  *(inited + 344) = &off_282C897C8;
  *(inited + 352) = 0x7465675F6270;
  *(inited + 360) = 0xE600000000000000;
  *(inited + 368) = type metadata accessor for PBGetFunction();
  *(inited + 376) = &off_282C897C8;
  *(inited + 384) = 0x65646F6365645F70;
  *(inited + 392) = 0xEF3436657361625FLL;
  *(inited + 400) = type metadata accessor for PBase64DecodeFunction();
  *(inited + 408) = &off_282C897C8;
  v3 = sub_21AF67910(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404C0, &qword_21AF77B18);
  result = swift_arrayDestroy();
  qword_27CD40978 = v3;
  return result;
}

uint64_t sub_21AF642C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF6434C()
{
  if (*(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database))
  {
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF643D4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database);
  *(v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database) = a1;
}

uint64_t (*sub_21AF643EC(void *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    *a1 = v4;

    return sub_21AF6449C;
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF6449C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
}

uint64_t sub_21AF644B0()
{
  v2 = v0;
  v3 = sub_21AF75F68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule;
  if (*(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule))
  {
    v9 = *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule);
    goto LABEL_3;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40470, &qword_21AF77A38);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + *(*v13 + qword_27CD409E0 + 16) + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_282C896D0;
  swift_unknownObjectWeakAssign();
  (*(v4 + 104))(v7, *MEMORY[0x277D3E228], v3);
  v14 = sub_21AF76298();
  if (*(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database))
  {
    v9 = v14;
    v15 = *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database);

    sub_21AF75F98();
    if (v1)
    {

      return v9;
    }

    v17 = *(v2 + v8);
    *(v2 + v8) = v9;

LABEL_3:

    return v9;
  }

  result = sub_21AF76A18();
  __break(1u);
  return result;
}

uint64_t sub_21AF6470C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_21AF66C60(a1, a2);
    if (v10)
    {
      sub_21AF63F70(*(v8 + 56) + 40 * v9, a3);
    }
  }

  sub_21AF769B8();

  MEMORY[0x21CEE74A0](a1, a2);
  result = sub_21AF76A18();
  __break(1u);
  return result;
}

uint64_t sub_21AF64838(uint64_t a1)
{
  v2 = type metadata accessor for UDFContext(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  UDFContext.init(databaseConnection:ownsConnection:)(a1, 0);
  return v5;
}

uint64_t UDFContext.__allocating_init(databaseConnection:ownsConnection:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  UDFContext.init(databaseConnection:ownsConnection:)(a1, a2);
  return v7;
}

uint64_t sub_21AF6490C()
{
  sub_21AF76208();
  result = sub_21AF761D8();
  if (!v1)
  {
    return (*(v0 + 320))(result);
  }

  return result;
}

uint64_t sub_21AF6496C(uint64_t a1)
{
  v25 = a1;
  v2 = sub_21AF76468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UDFContext.StoreState(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_storeState;
  swift_beginAccess();
  sub_21AF65E94(v1 + v17, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 16))(v14, v25, v2);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_21AF65F54(v14, v1 + v17);
      return swift_endAccess();
    }

    v21 = 0x800000021AF791F0;
    sub_21AF57354();
    swift_allocError();
    v23 = 0xD00000000000002FLL;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21AF65EF8(v16);
    v21 = 0x800000021AF79220;
    sub_21AF57354();
    swift_allocError();
    v23 = 0xD00000000000003DLL;
LABEL_9:
    *v22 = v23;
    *(v22 + 8) = v21;
    *(v22 + 16) = 1;
    return swift_willThrow();
  }

  (*(v3 + 32))(v6, v16, v2);
  v19 = v26;
  sub_21AF76458();
  if (v19)
  {
    return (*(v3 + 8))(v6, v2);
  }

  (*(v3 + 8))(v6, v2);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_21AF65F54(v11, v1 + v17);
  return swift_endAccess();
}

uint64_t sub_21AF64CA8(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_21AF76308();
  v129 = *(v6 - 8);
  v7 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v132 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF763E8();
  v128 = *(v9 - 8);
  v10 = *(v128 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v134 = &v115 - v15;
  v133 = sub_21AF76468();
  v16 = *(v133 - 1);
  v17 = *(v16 + 64);
  result = MEMORY[0x28223BE20](v133);
  v138 = a1;
  if (!*(a1 + 16))
  {
    return result;
  }

  v127 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21AF644B0();
  if (v2)
  {
    return result;
  }

  v122 = v16;
  v125 = v12;
  v126 = v9;
  v124 = v6;
  v121 = result;
  v20 = v138;
  v21 = v138 + 64;
  v22 = 1 << *(v138 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v138 + 64);
  v25 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders;

  swift_beginAccess();
  v26 = 0;
  v27 = (v22 + 63) >> 6;
  v136 = v21;
  v130 = v27;
  v135 = 0;
  v137 = v4;
  v131 = v25;
  while (1)
  {
    if (!v24)
    {
      while (1)
      {
        v30 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          goto LABEL_74;
        }

        if (v30 >= v27)
        {
          break;
        }

        v24 = *(v21 + 8 * v30);
        ++v26;
        if (v24)
        {
          v26 = v30;
          goto LABEL_14;
        }
      }

      v77 = 1 << *(v20 + 32);
      v78 = -1;
      if (v77 < 64)
      {
        v78 = ~(-1 << v77);
      }

      v79 = v78 & *(v20 + 64);
      v80 = (v77 + 63) >> 6;
      v131 = (v122 + 48);
      v123 = (v122 + 32);
      v130 = (v122 + 8);

      v81 = 0;
      while (v79)
      {
LABEL_53:
        v83 = __clz(__rbit64(v79)) | (v81 << 6);
        v84 = (*(v20 + 48) + 16 * v83);
        v85 = *v84;
        v86 = v84[1];
        sub_21AF63F70(*(v20 + 56) + 40 * v83, &v145);
        v143 = v85;
        v144 = v86;

        sub_21AF767D8();
        if (v3)
        {

LABEL_71:

          return sub_21AF567F8(&v143, &qword_27CD40480, &qword_21AF77A58);
        }

        v87 = v146;
        v88 = v147;
        __swift_project_boxed_opaque_existential_1(&v145, v146);
        (*(v88 + 32))(&v140, v87, v88);
        v90 = *(&v141 + 1);
        v89 = v142;
        __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
        v91 = v134;
        (*(*(v89 + 8) + 8))(v90);
        v92 = v133;
        if ((*v131)(v91, 1, v133) == 1)
        {
          sub_21AF567F8(v91, &qword_27CD40298, &unk_21AF77180);
          __swift_destroy_boxed_opaque_existential_1(&v140);
          v3 = 0;
          v21 = v136;
        }

        else
        {
          v93 = v127;
          (*v123)(v127, v91, v92);
          __swift_destroy_boxed_opaque_existential_1(&v140);
          sub_21AF6496C(v93);
          v3 = 0;
          v94 = v92;
          v21 = v136;
          (*v130)(v93, v94);
        }

        v79 &= v79 - 1;
        sub_21AF567F8(&v143, &qword_27CD40480, &qword_21AF77A58);
      }

      while (1)
      {
        v82 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          break;
        }

        if (v82 >= v80)
        {

          v95 = 1 << *(v20 + 32);
          v96 = -1;
          if (v95 < 64)
          {
            v96 = ~(-1 << v95);
          }

          v97 = v96 & *(v20 + 64);
          v131 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database;
          v98 = (v95 + 63) >> 6;
          v133 = (v128 + 8);
          v130 = 0x800000021AF79290;
          v129 += 8;

          v99 = 0;
          v128 = v98;
          if (v97)
          {
            while (1)
            {
              v135 = v3;
              v100 = v99;
LABEL_64:
              v101 = __clz(__rbit64(v97)) | (v100 << 6);
              v102 = *(v20 + 56);
              v103 = (*(v20 + 48) + 16 * v101);
              v105 = *v103;
              v104 = v103[1];
              sub_21AF63F70(v102 + 40 * v101, &v145);
              v143 = v105;
              v144 = v104;
              v106 = v146;
              v107 = v147;
              __swift_project_boxed_opaque_existential_1(&v145, v146);
              v108 = *(v107 + 32);
              v134 = v104;

              v108(&v140, v106, v107);
              v110 = *(&v141 + 1);
              v109 = v142;
              __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
              v111 = v135;
              sub_21AF66848();
              v3 = v111;
              if (v111)
              {
                break;
              }

              v135 = v105;
              swift_getObjectType();
              v112 = v125;
              sub_21AF765B8();
              swift_unknownObjectRelease();
              (*(*(v109 + 8) + 16))(v112, v110);
              (*v133)(v112, v126);
              __swift_destroy_boxed_opaque_existential_1(&v140);
              v113 = v138;
              if (!*&v131[v137])
              {
                goto LABEL_81;
              }

              *&v140 = 0;
              *(&v140 + 1) = 0xE000000000000000;

              sub_21AF769B8();

              *&v140 = 0xD000000000000016;
              *(&v140 + 1) = v130;
              MEMORY[0x21CEE74A0](v135, v134);
              MEMORY[0x21CEE74A0](0x20474E4953552022, 0xE800000000000000);
              MEMORY[0x21CEE74A0](0x6D61657274735F70, 0xE800000000000000);
              v114 = v132;
              sub_21AF761F8();

              sub_21AF762F8();
              v97 &= v97 - 1;
              (*v129)(v114, v124);

              sub_21AF567F8(&v143, &qword_27CD40480, &qword_21AF77A58);
              v99 = v100;
              v20 = v113;
              v21 = v136;
              v98 = v128;
              if (!v97)
              {
                goto LABEL_60;
              }
            }

            __swift_destroy_boxed_opaque_existential_1(&v140);

            goto LABEL_71;
          }

LABEL_60:
          while (1)
          {
            v100 = v99 + 1;
            if (__OFADD__(v99, 1))
            {
              goto LABEL_75;
            }

            if (v100 >= v98)
            {
            }

            v97 = *(v21 + 8 * v100);
            ++v99;
            if (v97)
            {
              v135 = v3;
              goto LABEL_64;
            }
          }
        }

        v79 = *(v21 + 8 * v82);
        ++v81;
        if (v79)
        {
          v81 = v82;
          goto LABEL_53;
        }
      }

LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_81;
    }

LABEL_14:
    v31 = __clz(__rbit64(v24)) | (v26 << 6);
    v32 = (*(v20 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    sub_21AF63F70(*(v20 + 56) + 40 * v31, &v145);
    v143 = v33;
    v144 = v34;
    v35 = *(v4 + v25);
    v36 = *(v35 + 16);

    if (v36)
    {
      break;
    }

LABEL_17:
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    sub_21AF567F8(&v140, &qword_27CD40468, &qword_21AF77A30);
    swift_beginAccess();
    sub_21AF63F70(&v145, &v140);

    v39 = *(v4 + v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v33;
    v42 = isUniquelyReferenced_nonNull_native;
    v148 = *(v4 + v25);
    v43 = v148;
    *(v4 + v25) = 0x8000000000000000;
    v44 = v41;
    v46 = sub_21AF66C60(v41, v34);
    v47 = *(v43 + 16);
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_76;
    }

    v50 = v45;
    if (*(v43 + 24) >= v49)
    {
      if (v42)
      {
        v51 = v43;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40478, &qword_21AF77A50);
        v58 = sub_21AF76A28();
        v51 = v58;
        if (*(v43 + 16))
        {
          v59 = (v58 + 64);
          v60 = (v43 + 64);
          v61 = ((1 << *(v51 + 32)) + 63) >> 6;
          v115 = v43 + 64;
          if (v51 != v43 || v59 >= &v60[8 * v61])
          {
            memmove(v59, v60, 8 * v61);
          }

          v62 = 0;
          *(v51 + 16) = *(v43 + 16);
          v63 = 1 << *(v43 + 32);
          if (v63 < 64)
          {
            v64 = ~(-1 << v63);
          }

          else
          {
            v64 = -1;
          }

          v65 = v64 & *(v43 + 64);
          v66 = (v63 + 63) >> 6;
          v116 = v66;
          if (v65)
          {
            do
            {
              v67 = __clz(__rbit64(v65));
              v120 = (v65 - 1) & v65;
LABEL_40:
              v70 = v67 | (v62 << 6);
              v118 = 16 * v70;
              v71 = *(v43 + 56);
              v72 = (*(v43 + 48) + 16 * v70);
              v74 = *v72;
              v73 = v72[1];
              v119 = v74;
              v123 = v73;
              v117 = 40 * v70;
              sub_21AF63F70(v71 + 40 * v70, v139);
              v75 = (*(v51 + 48) + v118);
              v76 = v123;
              *v75 = v119;
              v75[1] = v76;
              sub_21AF546A0(v139, *(v51 + 56) + v117);

              v66 = v116;
              v65 = v120;
            }

            while (v120);
          }

          v68 = v62;
          while (1)
          {
            v62 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              goto LABEL_78;
            }

            if (v62 >= v66)
            {
              break;
            }

            v69 = *(v115 + 8 * v62);
            ++v68;
            if (v69)
            {
              v67 = __clz(__rbit64(v69));
              v120 = (v69 - 1) & v69;
              goto LABEL_40;
            }
          }
        }
      }
    }

    else
    {
      sub_21AF670E0(v49, v42);
      v51 = v148;
      v52 = sub_21AF66C60(v44, v34);
      if ((v50 & 1) != (v53 & 1))
      {
        goto LABEL_82;
      }

      v46 = v52;
    }

    v3 = v135;
    if (v50)
    {
      v28 = (*(v51 + 56) + 40 * v46);
      __swift_destroy_boxed_opaque_existential_1(v28);
      sub_21AF546A0(&v140, v28);
    }

    else
    {
      *(v51 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v54 = (*(v51 + 48) + 16 * v46);
      *v54 = v44;
      v54[1] = v34;
      sub_21AF546A0(&v140, *(v51 + 56) + 40 * v46);
      v55 = *(v51 + 16);
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_77;
      }

      *(v51 + 16) = v57;
    }

    v24 &= v24 - 1;
    v4 = v137;
    v25 = v131;
    v29 = *&v131[v137];
    *&v131[v137] = v51;

    swift_endAccess();
    sub_21AF567F8(&v143, &qword_27CD40480, &qword_21AF77A58);
    v20 = v138;
    v21 = v136;
    v27 = v130;
  }

  v37 = sub_21AF66C60(v33, v34);
  if ((v38 & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_21AF63F70(*(v35 + 56) + 40 * v37, &v140);

  sub_21AF567F8(&v140, &qword_27CD40468, &qword_21AF77A30);
  *&v140 = 0;
  *(&v140 + 1) = 0xE000000000000000;
  sub_21AF769B8();

  *&v140 = 0xD000000000000021;
  *(&v140 + 1) = 0x800000021AF79260;
  MEMORY[0x21CEE74A0](v33, v34);
  MEMORY[0x21CEE74A0](34, 0xE100000000000000);
LABEL_81:
  sub_21AF76A18();
  __break(1u);
LABEL_82:
  result = sub_21AF76B88();
  __break(1u);
  return result;
}

uint64_t sub_21AF65B9C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database))
  {

    v3 = sub_21AF761B8();

    if (v3)
    {
      v4 = v3 == a1;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return sub_21AF66268();
    }

    else
    {
      sub_21AF57354();
      swift_allocError();
      *v5 = 0xD00000000000003ALL;
      *(v5 + 8) = 0x800000021AF792B0;
      *(v5 + 16) = 3;
      return swift_willThrow();
    }
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t UDFContext.init(databaseConnection:ownsConnection:)(uint64_t a1, char a2)
{
  v4 = (v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions;
  v6 = MEMORY[0x277D84F90];
  *(v2 + v5) = sub_21AF67A20(MEMORY[0x277D84F90]);
  v7 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders;
  *(v2 + v7) = sub_21AF67B3C(v6);
  *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule) = 0;
  v8 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database;
  *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database) = 0;
  v9 = sub_21AF76208();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_21AF761A8();
  if (v3)
  {
    v13 = *v4;
    swift_unknownObjectRelease();
    v14 = *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions);

    v15 = *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders);

    v16 = *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule);

    v17 = *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database);

    type metadata accessor for UDFContext(0);
    v18 = *(*v2 + 48);
    v19 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = *(v2 + v8);
    *(v2 + v8) = v12;

    *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_ownsConnection) = a2 & 1;
    type metadata accessor for UDFContext.StoreState(0);
    swift_storeEnumTagMultiPayload();
    sub_21AF66704();
  }

  return v2;
}

uint64_t sub_21AF65E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UDFContext.StoreState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF65EF8(uint64_t a1)
{
  v2 = type metadata accessor for UDFContext.StoreState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF65F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UDFContext.StoreState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UDFContext.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = (v3 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions;
  v6 = MEMORY[0x277D84F90];
  *(v3 + v5) = sub_21AF67A20(MEMORY[0x277D84F90]);
  v7 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders;
  *(v3 + v7) = sub_21AF67B3C(v6);
  *(v3 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule) = 0;
  *(v3 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database) = 0;
  *(v3 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_ownsConnection) = 0;
  type metadata accessor for UDFContext.StoreState(0);
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t UDFContext.init()()
{
  v1 = (v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions;
  v3 = MEMORY[0x277D84F90];
  *(v0 + v2) = sub_21AF67A20(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders;
  *(v0 + v4) = sub_21AF67B3C(v3);
  *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule) = 0;
  *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database) = 0;
  *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_ownsConnection) = 0;
  type metadata accessor for UDFContext.StoreState(0);
  swift_storeEnumTagMultiPayload();
  return v0;
}

uint64_t UDFContext.deinit()
{
  sub_21AF66268();
  sub_21AF65EF8(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_storeState);
  v1 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions);

  v3 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders);

  v4 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule);

  v5 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database);

  return v0;
}

uint64_t UDFContext.__deallocating_deinit()
{
  sub_21AF66268();
  sub_21AF65EF8(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_storeState);
  v1 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions);

  v3 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders);

  v4 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule);

  v5 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_21AF66268()
{
  v1 = v0;
  v2 = type metadata accessor for UDFContext.StoreState(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21AF76308();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v43 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database;
  if (*(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database))
  {

    v12 = sub_21AF761C8();

    if (v12)
    {
      if (*(v0 + v11))
      {
        v13 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions;
        v14 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions);

        sub_21AF68EFC(v15, v14);

        v16 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule);
        if (v16)
        {
          v40 = v6;
          v36 = v13;
          v37 = v2;
          v38 = v5;
          v17 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders;
          swift_beginAccess();
          v18 = *(v1 + v17);
          v19 = v18 + 64;
          v20 = 1 << *(v18 + 32);
          v21 = -1;
          if (v20 < 64)
          {
            v21 = ~(-1 << v20);
          }

          v22 = v21 & *(v18 + 64);
          v23 = (v20 + 63) >> 6;
          v39 = (v7 + 8);
          v41 = v18;
          v42 = v1;
          swift_bridgeObjectRetain_n();
          v35[1] = v16;

          v24 = 0;
          if (v22)
          {
LABEL_12:
            while (1)
            {
              v26 = __clz(__rbit64(v22)) | (v24 << 6);
              v27 = (*(v41 + 48) + 16 * v26);
              v29 = *v27;
              v28 = v27[1];
              sub_21AF63F70(*(v41 + 56) + 40 * v26, &v46);
              v45[0] = v29;
              v45[1] = v28;
              if (!*(v42 + v11))
              {
                goto LABEL_22;
              }

              strcpy(v44, "DROP TABLE ");
              HIBYTE(v44[6]) = 0;
              v44[7] = -5120;

              MEMORY[0x21CEE74A0](v29, v28);
              MEMORY[0x21CEE74A0](34, 0xE100000000000000);
              v30 = v43;
              sub_21AF761F8();

              sub_21AF762F8();
              (*v39)(v30, v40);
              v22 &= v22 - 1;

              sub_21AF567F8(v45, &qword_27CD40480, &qword_21AF77A58);
              if (!v22)
              {
                goto LABEL_8;
              }
            }
          }

          while (1)
          {
LABEL_8:
            v25 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              __break(1u);
              goto LABEL_22;
            }

            if (v25 >= v23)
            {
              break;
            }

            v22 = *(v19 + 8 * v25);
            ++v24;
            if (v22)
            {
              v24 = v25;
              goto LABEL_12;
            }
          }

          v1 = v42;
          if (!*(v42 + v11))
          {
            goto LABEL_22;
          }

          v31 = *(v42 + v11);

          sub_21AF75F58();

          v5 = v38;
          v13 = v36;
        }

        swift_storeEnumTagMultiPayload();
        v32 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_storeState;
        swift_beginAccess();
        sub_21AF65F54(v5, v1 + v32);
        swift_endAccess();
        v33 = *(v1 + v13);
        *(v1 + v13) = MEMORY[0x277D84F98];

        if (*(v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_ownsConnection))
        {
          return result;
        }

        if (*(v1 + v11))
        {
          v34 = *(v1 + v11);

          sub_21AF761B8();
        }
      }

LABEL_22:
      result = sub_21AF76A18();
      __break(1u);
    }
  }

  return result;
}

void sub_21AF66704()
{
  v1 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions;
  if (!*(*(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions) + 16))
  {
    if (qword_280B17658 != -1)
    {
      swift_once();
    }

    v2 = qword_27CD40978;

    v3 = sub_21AF67D6C(v2);

    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    if (*(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database))
    {

      sub_21AF6903C(v5, v3);
    }

    else
    {
      sub_21AF76A18();
      __break(1u);
    }
  }
}

uint64_t sub_21AF66848()
{
  v2 = sub_21AF76468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UDFContext.StoreState(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v26[-v12];
  v14 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_storeState;
  swift_beginAccess();
  sub_21AF65E94(v0 + v14, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v19 = 0x800000021AF79320;
      sub_21AF57354();
      swift_allocError();
      v21 = 0xD000000000000031;
    }

    else
    {
      v19 = 0x800000021AF792F0;
      sub_21AF57354();
      swift_allocError();
      v21 = 0xD00000000000002CLL;
    }

    *v20 = v21;
    *(v20 + 8) = v19;
    *(v20 + 16) = 1;
    return swift_willThrow();
  }

  else if (EnumCaseMultiPayload)
  {
    result = *v13;
    v22 = v13[1];
  }

  else
  {
    (*(v3 + 32))(v6, v13, v2);
    v16 = sub_21AF76338();
    if (v1)
    {
      return (*(v3 + 8))(v6, v2);
    }

    else
    {
      v23 = v17;
      v24 = *(v3 + 8);
      v27 = v16;
      v24(v6, v2);
      v25 = v27;
      *v11 = v27;
      v11[1] = v23;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_21AF65F54(v11, v0 + v14);
      swift_endAccess();
      return v25;
    }
  }

  return result;
}

void *sub_21AF66B18()
{
  v3 = (v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge);
  v4 = *(v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge);
  if (v4)
  {
    v5 = v3[1];
    v0 = v4;
  }

  else
  {
    v6 = sub_21AF66848();
    if (v2)
    {
      return v0;
    }

    v9 = v6;
    v10 = v7;
    type metadata accessor for MessageInBlobBridge();
    v0 = swift_allocObject();
    v11 = MEMORY[0x277D84F90];
    v0[2] = MEMORY[0x277D84F90];
    v0[3] = sub_21AF67644(v11);
    v0[4] = v9;
    v0[5] = v10;
    v12 = *v3;
    *v3 = v0;
    v3[1] = &off_282C89A70;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v0;
}

unint64_t sub_21AF66C60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21AF76BE8();
  sub_21AF767F8();
  v6 = sub_21AF76C08();

  return sub_21AF66D1C(a1, a2, v6);
}

unint64_t sub_21AF66CD8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_21AF76BD8();

  return sub_21AF66DD4(a1, v4);
}

unint64_t sub_21AF66D1C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21AF76B58())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21AF66DD4(uint64_t a1, uint64_t a2)
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

uint64_t sub_21AF66E40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40488, "B");
  v38 = a2;
  result = sub_21AF76A38();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_21AF76BE8();
      sub_21AF767F8();
      result = sub_21AF76C08();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21AF670E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40478, &qword_21AF77A50);
  v36 = a2;
  result = sub_21AF76A38();
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_21AF546A0(v25, v37);
      }

      else
      {
        sub_21AF63F70(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_21AF76BE8();
      sub_21AF767F8();
      result = sub_21AF76C08();
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
      result = sub_21AF546A0(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_21AF673A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404A0, &qword_21AF77B00);
  v38 = a2;
  result = sub_21AF76A38();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_21AF76BE8();
      sub_21AF767F8();
      result = sub_21AF76C08();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_21AF67644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40488, "B");
    v3 = sub_21AF76A48();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21AF66C60(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_21AF67740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40490, "F");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40498, "J");
    v8 = sub_21AF76A48();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_21AF5597C(v10, v6, &qword_27CD40490, "F");
      v12 = *v6;
      result = sub_21AF66CD8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
      result = sub_21AF68394(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_21AF67910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404C8, &qword_21AF77B20);
    v3 = sub_21AF76A48();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_21AF66C60(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_21AF67A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404A8, &qword_21AF77B08);
    v3 = sub_21AF76A48();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_21AF66C60(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_21AF67B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40478, &qword_21AF77A50);
    v3 = sub_21AF76A48();
    v4 = a1 + 32;

    while (1)
    {
      sub_21AF5597C(v4, &v13, &qword_27CD404D0, &qword_21AF77B28);
      v5 = v13;
      v6 = v14;
      result = sub_21AF66C60(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21AF546A0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_21AF67C70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404A0, &qword_21AF77B00);
    v3 = sub_21AF76A48();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21AF66C60(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_21AF67D6C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404A8, &qword_21AF77B08);
  result = sub_21AF76A28();
  v3 = result;
  v4 = 0;
  v29 = result;
  v30 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v28 = result + 64;
  if (v10)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v31 = (v10 - 1) & v10;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v30 + 48) + 16 * v15);
      v17 = v16[1];
      v32 = *v16;
      v18 = (*(v30 + 56) + 16 * v15);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v20 + 24);

      result = v21(v22, &off_282C896D0, v19, v20);
      v3 = v29;
      *(v28 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v23 = (v29[6] + 16 * v15);
      *v23 = v32;
      v23[1] = v17;
      v24 = (v29[7] + 16 * v15);
      *v24 = result;
      v24[1] = v20;
      v25 = v29[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v29[2] = v27;
      v10 = v31;
      if (!v31)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v31 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}