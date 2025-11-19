uint64_t sub_1DAE1642C()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__logger;
  v3 = sub_1DAECEDEC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__environmentFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__descriptorProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__cacheReader));
  v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);

  v5 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage);

  v6 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_currentDataProtectionLevel;
  v7 = sub_1DAED18CC();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__subscriptions);

  return v0;
}

uint64_t sub_1DAE1655C()
{
  sub_1DAE1642C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE165DC()
{
  result = sub_1DAECEDEC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DAED18CC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1DAE166E8(uint64_t a1)
{
  result = sub_1DAE167B4(&qword_1EE0062F0, type metadata accessor for ActivityArchiveEntryAssertion);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DAE16740()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1DAE119CC(v2, v3, v4, v5);
}

uint64_t sub_1DAE167B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAE167FC(unint64_t *a1)
{
  v5 = *a1;
  v6 = sub_1DADFAA54(*a1);
  v8 = v6;
  if (v1)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_1DAED247C();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_1DAED247C())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E127E1F0](v9, v5);
      goto LABEL_17;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v13 = *(v5 + 8 * v9 + 32);

LABEL_17:
    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (!Strong || (, v13 != Strong))
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v2 = MEMORY[0x1E127E1F0](v8, v5);
          v15 = MEMORY[0x1E127E1F0](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v16)
          {
            goto LABEL_48;
          }

          if (v9 >= v16)
          {
            goto LABEL_49;
          }

          v2 = *(v5 + 32 + 8 * v8);
          v15 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_1DADFA95C(v5);
          v17 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v3 = v5 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v15;

        if ((v5 & 0x8000000000000000) != 0 || v17)
        {
          v5 = sub_1DADFA95C(v5);
          v3 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_40:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v9 >= *(v3 + 16))
        {
          goto LABEL_46;
        }

LABEL_8:
        v10 = v3 + 8 * v9;
        v11 = *(v10 + 32);
        *(v10 + 32) = v2;

        *a1 = v5;
      }

      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_45;
      }
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      goto LABEL_44;
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
  __break(1u);
  return sub_1DAED247C();
}

void sub_1DAE16A78()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1DAE13994(v5, v0 + v2, v6);
}

uint64_t sub_1DAE16B60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityContentDidChangeEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE16BC4(uint64_t a1)
{
  v2 = type metadata accessor for ActivityContentDidChangeEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAE16C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityContentDidChangeEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE16CA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAE16D20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DAE16D68(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DAE16DA8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1DAECF33C();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DC8, &qword_1DAED8200);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  v17 = sub_1DAED064C();
  v18 = sub_1DAED061C();
  sub_1DAE171C4(v18, v17, &v56);

  v19 = sub_1DAE1784C(a1, a2);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = sub_1DAED004C();
  LOBYTE(v71[0]) = 0;
  [a1 cornerRadius];
  v28 = v27;
  [a1 scaleFactor];
  v30 = v28 * v29;
  v31 = *(v7 + 28);
  v32 = *MEMORY[0x1E697F468];
  v33 = sub_1DAECF99C();
  (*(*(v33 - 8) + 104))(v10 + v31, v32, v33);
  *v10 = v30;
  v10[1] = v30;
  v34 = sub_1DAED060C();
  sub_1DAECF0DC();
  sub_1DADB1A4C(v10, v16);
  v35 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DD0, &qword_1DAED8208) + 36)];
  v36 = v53;
  *v35 = v52;
  *(v35 + 1) = v36;
  *(v35 + 4) = v54;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DD8, &qword_1DAED8210);
  *&v16[*(v37 + 52)] = v34;
  *&v16[*(v37 + 56)] = 256;
  v38 = sub_1DAED091C();
  v40 = v39;
  sub_1DAE17A44(v10);
  v41 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DE0, &qword_1DAED8218) + 36)];
  *v41 = v38;
  v41[1] = v40;
  v42 = v51;
  sub_1DAD6495C(v16, v51, &qword_1ECC08DC8, &qword_1DAED8200);
  *&v67 = v61;
  v64 = v58;
  v65 = v59;
  v66 = v60;
  v62 = v56;
  v63 = v57;
  BYTE8(v67) = v26;
  *(&v67 + 9) = *v55;
  HIDWORD(v67) = *&v55[3];
  *&v68 = v19;
  *(&v68 + 1) = v21;
  *&v69 = v23;
  *(&v69 + 1) = v25;
  v70 = 0;
  v43 = v68;
  v44 = v69;
  *(a3 + 128) = 0;
  *(a3 + 96) = v43;
  *(a3 + 112) = v44;
  v45 = v62;
  v46 = v63;
  v47 = v67;
  *(a3 + 64) = v66;
  *(a3 + 80) = v47;
  v48 = v65;
  *(a3 + 32) = v64;
  *(a3 + 48) = v48;
  *a3 = v45;
  *(a3 + 16) = v46;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DE8, &qword_1DAED8220);
  sub_1DAD6495C(v42, a3 + *(v49 + 48), &qword_1ECC08DC8, &qword_1DAED8200);
  sub_1DAD6495C(&v62, v71, &qword_1ECC08DF0, &qword_1DAED8228);
  sub_1DAD64398(v16, &qword_1ECC08DC8, &qword_1DAED8200);
  sub_1DAD64398(v42, &qword_1ECC08DC8, &qword_1DAED8200);
  v71[2] = v58;
  v71[3] = v59;
  v71[4] = v60;
  v72 = v61;
  v71[0] = v56;
  v71[1] = v57;
  v73 = v26;
  *v74 = *v55;
  *&v74[3] = *&v55[3];
  v75 = v19;
  v76 = v21;
  v77 = v23;
  v78 = v25;
  v79 = 0;
  return sub_1DAD64398(v71, &qword_1ECC08DF0, &qword_1DAED8228);
}

uint64_t sub_1DAE171C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DAECF0DC();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;

  v12 = sub_1DAED091C();
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v13 = *v29;
  v14 = *&v29[16];
  v36 = *v29;
  v37 = *&v29[16];
  v35[0] = v33[0];
  v35[1] = v31;
  *&v38 = v12;
  *(&v38 + 1) = v15;
  v16 = v31;
  *(a3 + 8) = v33[0];
  v17 = v37;
  *(a3 + 72) = v38;
  v18 = v36;
  *(a3 + 56) = v17;
  *a3 = a2;
  *(a3 + 40) = v18;
  *(a3 + 24) = v16;
  v39[2] = v13;
  v39[3] = v14;
  v39[0] = v27;
  v39[1] = v28;
  v40 = v12;
  v41 = v15;
  sub_1DAD6495C(v33, v20, &qword_1ECC08DF8, &qword_1DAED8230);

  sub_1DAD6495C(v35, v20, &qword_1ECC08E00, &qword_1DAED8238);
  sub_1DAD64398(v39, &qword_1ECC08E00, &qword_1DAED8238);
  *v20 = v7;
  *&v20[1] = v6;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a1;
  v26 = 256;
  return sub_1DAD64398(v20, &qword_1ECC08DF8, &qword_1DAED8230);
}

__n128 sub_1DAE17378@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1DAECFA2C();
  sub_1DAE1746C(a1, a2, v14);
  *&v13[7] = v14[0];
  *&v13[23] = v14[1];
  *&v13[39] = v14[2];
  *&v13[55] = v14[3];
  v7 = sub_1DAED066C();
  v8 = sub_1DAED060C();
  v9 = sub_1DAED004C();
  v10 = sub_1DAED01BC();
  KeyPath = swift_getKeyPath();
  *(a3 + 33) = *&v13[16];
  result = *&v13[32];
  *(a3 + 49) = *&v13[32];
  *(a3 + 65) = *&v13[48];
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 17) = *v13;
  *(a3 + 80) = *&v13[63];
  *(a3 + 88) = v7;
  *(a3 + 96) = v8;
  *(a3 + 104) = v9;
  *(a3 + 112) = KeyPath;
  *(a3 + 120) = v10;
  return result;
}

uint64_t sub_1DAE1746C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1DAECF96C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1DAECF95C();
  sub_1DAECF94C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087D0, &qword_1DAED7228);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DAED6200;
  [a1 scaleFactor];
  v10 = v9;
  *(v8 + 56) = MEMORY[0x1E69E7DE0];
  *(v8 + 64) = sub_1DAE177F8();
  *(v8 + 32) = v10;
  sub_1DAED1D1C();
  sub_1DAECF93C();

  sub_1DAECF94C();
  sub_1DAECF98C();
  v11 = sub_1DAED033C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1DAECF95C();
  sub_1DAECF94C();
  sub_1DAE17924(a1, a2);
  sub_1DAECF93C();

  sub_1DAECF94C();
  sub_1DAECF98C();
  v18 = sub_1DAED033C();
  v20 = v19;
  v21 = v15 & 1;
  v26 = v15 & 1;
  v23 = v22 & 1;
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v21;
  *(a3 + 24) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v22 & 1;
  *(a3 + 56) = v24;
  sub_1DAE17A34(v11, v13, v21);

  sub_1DAE17A34(v18, v20, v23);

  sub_1DADEA34C(v18, v20, v23);

  sub_1DADEA34C(v11, v13, v26);
}

uint64_t sub_1DAE17704@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_1DAE17784(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

unint64_t sub_1DAE177F8()
{
  result = qword_1ECC08DC0;
  if (!qword_1ECC08DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08DC0);
  }

  return result;
}

double sub_1DAE1784C(void *a1, char a2)
{
  v4 = [a1 margins];
  v5 = v4;
  v6 = &selRef_contentMargins;
  if ((a2 & 1) == 0)
  {
    v6 = &selRef_backgroundRemovedContentMargins;
  }

  [v4 *v6];
  v8 = v7;

  [a1 scaleFactor];
  v10 = v8 * v9;
  [a1 scaleFactor];
  [a1 scaleFactor];
  [a1 scaleFactor];
  return v10;
}

uint64_t sub_1DAE17924(void *a1, char a2)
{
  v3 = [a1 margins];
  v4 = v3;
  v5 = &selRef_contentMargins;
  if ((a2 & 1) == 0)
  {
    v5 = &selRef_backgroundRemovedContentMargins;
  }

  [v3 *v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087D0, &qword_1DAED7228);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DAED7A10;
  v15 = MEMORY[0x1E69E7DE0];
  *(v14 + 56) = MEMORY[0x1E69E7DE0];
  v16 = sub_1DAE177F8();
  *(v14 + 64) = v16;
  *(v14 + 32) = v7;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 72) = v9;
  *(v14 + 136) = v15;
  *(v14 + 144) = v16;
  *(v14 + 112) = v11;
  *(v14 + 176) = v15;
  *(v14 + 184) = v16;
  *(v14 + 152) = v13;

  return sub_1DAED1D1C();
}

uint64_t sub_1DAE17A34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1DAE17A44(uint64_t a1)
{
  v2 = sub_1DAECF33C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CompactLiveActivityView.init(leadingView:trailingView:spacing:smartStackPlatterPadding:launchRequestHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v18 = type metadata accessor for CompactLiveActivityView();
  v19 = (a7 + v18[16]);
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  result = (*(*(a6 - 8) + 32))(a7 + v18[13], a2, a6);
  *(a7 + v18[14]) = a8;
  *(a7 + v18[15]) = a9;
  *v19 = a3;
  v19[1] = a4;
  return result;
}

uint64_t CompactLiveActivityView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a1;
  v66 = a2;
  v3 = sub_1DAECF2DC();
  v49 = v3;
  v65 = *(v3 - 8);
  v4 = *(v65 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v64 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(a1 - 8);
  *&v62 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED07DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E10, &unk_1DAED8250);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E18, &qword_1DAED9270);
  v9 = sub_1DAECF2AC();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1DAD64B94(&qword_1ECC08E20, &qword_1ECC08E10, &unk_1DAED8250);
  v81 = WitnessTable;
  v82 = v11;
  v79 = swift_getWitnessTable();
  v80 = MEMORY[0x1E697E5D8];
  v12 = swift_getWitnessTable();
  v13 = sub_1DAD64B94(&qword_1ECC08E28, &qword_1ECC08E18, &qword_1DAED9270);
  v77 = v12;
  v78 = v13;
  v57 = v9;
  v56 = swift_getWitnessTable();
  v14 = sub_1DAED07BC();
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v48 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E30, &qword_1DAED8260);
  v53 = v14;
  v17 = sub_1DAECF2AC();
  v50 = v17;
  v58 = *(v17 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v48 - v19;
  v20 = swift_getWitnessTable();
  v48 = v20;
  v21 = sub_1DAD64B94(&qword_1ECC08E38, &qword_1ECC08E30, &qword_1DAED8260);
  v75 = v20;
  v76 = v21;
  v22 = swift_getWitnessTable();
  v52 = v22;
  v51 = sub_1DAE183BC();
  v71 = v17;
  v72 = v3;
  v73 = v22;
  v74 = v51;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = *(OpaqueTypeMetadata2 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v48 - v29;
  v31 = v60;
  v32 = v8;
  v33 = v8;
  v34 = v63;
  v35 = v61;
  (*(v60 + 16))(v33, v63, v61);
  v36 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v37 = swift_allocObject();
  v62 = *(v35 + 32);
  v38 = v62;
  *(v37 + 16) = v67;
  *(v37 + 32) = v38;
  (*(v31 + 32))(v37 + v36, v32, v35);
  v68 = v67;
  v69 = v62;
  v70 = v34;
  v39 = v55;
  sub_1DAED07AC();
  sub_1DAED091C();
  v40 = v54;
  v41 = v53;
  sub_1DAED03CC();
  (*(v59 + 8))(v39, v41);
  v42 = v64;
  sub_1DAECF2CC();
  v43 = v50;
  v44 = v49;
  sub_1DAED03FC();
  (*(v65 + 8))(v42, v44);
  (*(v58 + 8))(v40, v43);
  v45 = v24[2];
  v45(v30, v28, OpaqueTypeMetadata2);
  v46 = v24[1];
  v46(v28, OpaqueTypeMetadata2);
  v45(v66, v30, OpaqueTypeMetadata2);
  return (v46)(v30, OpaqueTypeMetadata2);
}

unint64_t sub_1DAE183BC()
{
  result = qword_1ECC08E40[0];
  if (!qword_1ECC08E40[0])
  {
    sub_1DAECF2DC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC08E40);
  }

  return result;
}

uint64_t sub_1DAE18414()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for CompactLiveActivityView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  result = type metadata accessor for CompactLiveActivityView();
  v11 = v0 + *(result + 64) + v6;
  if (*v11)
  {
    v12 = *(v11 + 1);
    return (*v11)(result, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1DAE184C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v50 = a5;
  v39 = a4;
  v43 = a1;
  v49 = a6;
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  v9 = sub_1DAED07DC();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E10, &unk_1DAED8250);
  v13 = sub_1DAECF2AC();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v39 - v15;
  v16 = sub_1DAECF2AC();
  v48 = *(v16 - 8);
  v17 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v41 = &v39 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E18, &qword_1DAED9270);
  v19 = sub_1DAECF2AC();
  v45 = *(v19 - 8);
  v20 = *(v45 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v42 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v39 - v23;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = v50;
  v24 = v43;
  v55 = v43;
  sub_1DAECF8FC();
  sub_1DAED07CC();
  WitnessTable = swift_getWitnessTable();
  v26 = v40;
  sub_1DAED049C();
  (*(v44 + 8))(v12, v9);
  sub_1DAED003C();
  v62 = a2;
  v63 = a3;
  v64 = v39;
  v65 = v50;
  v27 = *(v24 + *(type metadata accessor for CompactLiveActivityView() + 60));
  v28 = sub_1DAD64B94(&qword_1ECC08E20, &qword_1ECC08E10, &unk_1DAED8250);
  v60 = WitnessTable;
  v61 = v28;
  v29 = swift_getWitnessTable();
  v30 = v41;
  sub_1DAED058C();
  (*(v47 + 8))(v26, v13);
  v58 = v29;
  v59 = MEMORY[0x1E697E5D8];
  v31 = swift_getWitnessTable();
  sub_1DAE19364();
  v32 = v42;
  sub_1DAED043C();
  (*(v48 + 8))(v30, v16);
  v33 = sub_1DAD64B94(&qword_1ECC08E28, &qword_1ECC08E18, &qword_1DAED9270);
  v56 = v31;
  v57 = v33;
  swift_getWitnessTable();
  v34 = v45;
  v35 = *(v45 + 16);
  v36 = v46;
  v35(v46, v32, v19);
  v37 = *(v34 + 8);
  v37(v32, v19);
  v35(v49, v36, v19);
  return (v37)(v36, v19);
}

uint64_t sub_1DAE18A9C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a4;
  v37 = a5;
  v42 = a6;
  v38 = *(a3 - 1);
  v11 = v38;
  v12 = *(v38 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v40 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v39 = &v36 - v16;
  v41 = *(v17 - 8);
  v18 = v41;
  v19 = *(v41 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v36 - v23;
  v25 = *(v18 + 16);
  v25(&v36 - v23, a1, a2);
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v26 = type metadata accessor for CompactLiveActivityView();
  v27 = *(a1 + *(v26 + 56));
  v28 = *(v11 + 16);
  v29 = a1 + *(v26 + 52);
  v30 = v39;
  v28(v39, v29, a3);
  v25(v22, v24, a2);
  v47 = v27;
  v48 = 0;
  v49 = v22;
  v50 = &v47;
  v31 = v40;
  v28(v40, v30, a3);
  v51 = v31;
  v32 = v31;
  v46[0] = a2;
  v46[1] = MEMORY[0x1E6981840];
  v46[2] = a3;
  v43 = v36;
  v44 = MEMORY[0x1E6981838];
  v45 = v37;
  sub_1DADB7ABC(&v49, 3uLL, v46);
  v33 = *(v38 + 8);
  v33(v30, a3);
  v34 = *(v41 + 8);
  v34(v24, a2);
  v33(v32, a3);
  return (v34)(v22, a2);
}

uint64_t sub_1DAE18D70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAED063C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAE18D98(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_1DAE18DE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_1DAD6F984();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DAE18E9C(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v13);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v10)
  {
    return (*(v4 + 48))();
  }

  v23 = (a1 + v11) & ~v9;
  if (v8 == v10)
  {
    return (*(v7 + 48))(v23, v8, v6);
  }

  v24 = *((((((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  if ((v24 + 1) >= 2)
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_1DAE19094(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((v11 + 7 + v14) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(result + v16) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v16) = 0;
      }

      else if (v20)
      {
        *(result + v16) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = ((result + v13) & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          v27 = ((((((result + v15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v27 = 0;
            v27[1] = 0;
            *v27 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v27 = a2;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(result + v16) = v22;
    }

    else
    {
      *(result + v16) = v22;
    }
  }

  else if (v20)
  {
    *(result + v16) = v22;
  }

  return result;
}

unint64_t sub_1DAE19364()
{
  result = qword_1ECC08ED0;
  if (!qword_1ECC08ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08ED0);
  }

  return result;
}

uint64_t ActivityArchivedViewCollection.ViewEntry.containsPrivacyRedactions.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1DAED1B7C();
  v4 = sub_1DAED1B1C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1DAD64398(v3, &unk_1ECC0A520, &unk_1DAED6D30);
    v6 = 0;
  }

  else
  {
    v6 = sub_1DAED1AEC();
    (*(v5 + 8))(v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_1DAE194E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAED1B5C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAE1950C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAE1958C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1DAED1B7C();
  v4 = sub_1DAED1B1C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1DAD64398(v3, &unk_1ECC0A520, &unk_1DAED6D30);
    v6 = 0;
  }

  else
  {
    v6 = sub_1DAED1AEC();
    (*(v5 + 8))(v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_1DAE196AC()
{
  v1 = OBJC_IVAR____TtCC14WidgetRenderer36ActivityPreviewHostingViewController15StateController__stateIndex;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09068, &qword_1DAED85F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE19754@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityPreviewHostingViewController.StateController(0);
  result = sub_1DAECEE4C();
  *a1 = result;
  return result;
}

double sub_1DAE19794()
{
  v1 = v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DAE197DC(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double sub_1DAE19894()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAE198D8(double a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DAE19988()
{
  v0 = sub_1DAED187C();
  v42 = *(v0 - 8);
  v43 = v0;
  v1 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v41 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DAED1BEC();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v40 - v8;
  v9 = sub_1DAED1A5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = sub_1DAED182C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *MEMORY[0x1E6985918];
  v23 = *(v18 + 104);
  v48 = v24;
  v44 = v23;
  (v23)(v21, v22);
  v25 = *(v10 + 16);
  v25(v16, v50 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewKind, v9);
  v26 = (*(v10 + 88))(v16, v9);
  if (v26 != *MEMORY[0x1E6985A88])
  {
    v30 = v48;
    if (v26 != *MEMORY[0x1E6985A90])
    {
      goto LABEL_11;
    }

    (*(v18 + 8))(v21, v48);
    v32 = v21;
    v33 = v22;
    goto LABEL_10;
  }

  v25(v14, v16, v9);
  (*(v10 + 96))(v14, v9);
  v27 = sub_1DAED1A4C();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 88))(v14, v27);
  if (v29 == *MEMORY[0x1E6985A70])
  {
    v30 = v48;
    (*(v18 + 8))(v21, v48);
    v31 = 1;
LABEL_8:
    *v21 = v31;
LABEL_9:
    v33 = *MEMORY[0x1E6985910];
    v32 = v21;
LABEL_10:
    v44(v32, v33, v30);
    goto LABEL_11;
  }

  if (v29 == *MEMORY[0x1E6985A78])
  {
    v30 = v48;
    (*(v18 + 8))(v21, v48);
    v31 = 3;
    goto LABEL_8;
  }

  if (v29 == *MEMORY[0x1E6985A80])
  {
    v30 = v48;
    (*(v18 + 8))(v21, v48);
    *v21 = 0;
    goto LABEL_9;
  }

  (*(v28 + 8))(v14, v27);
  v30 = v48;
LABEL_11:
  (*(v10 + 8))(v16, v9);
  v34 = v45;
  sub_1DAE1B740(v45);
  sub_1DAED1BDC();
  v35 = v49;
  sub_1DAED1BCC();
  (*(v46 + 8))(v34, v47);

  v36 = sub_1DAED1B8C();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    (*(v18 + 8))(v21, v30);
    return sub_1DAD64398(v35, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  else
  {
    v39 = v41;
    sub_1DAED1B6C();
    (*(v37 + 8))(v35, v36);
    sub_1DAED185C();
    (*(v42 + 8))(v39, v43);
    return (*(v18 + 8))(v21, v30);
  }
}

uint64_t sub_1DAE1A068()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAE1A0AC(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ActivityPreviewHostingViewController.viewKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewKind;
  v4 = sub_1DAED1A5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAE1A200(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1DAE1A26C()
{
  v1 = (v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1DAE1A2C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void ActivityPreviewHostingViewController.__allocating_init(viewCollections:currentStateIndex:widgetLocation:environment:viewKind:apertureTopEdgeMetric:islandSize:renderBoxRendersAsynchronously:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v85) = a8;
  v83 = *&a7;
  v82 = *&a6;
  v81 = a5;
  v88 = a10;
  v86 = a12;
  v87 = a3;
  v90 = a1;
  v91 = a11;
  v17 = sub_1DAECFFCC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v75 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0);
  v20 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v80 = (&v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = objc_allocWithZone(v12);
  v23 = &v22[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize];
  v79 = &v22[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize];
  *v23 = 0;
  v23[1] = 0;
  v77 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric;
  *&v22[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric] = 0;
  v22[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced] = 0;
  *&v22[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewCollections] = a1;
  v84 = type metadata accessor for ActivityPreviewHostingViewController.StateController(0);
  v24 = *(v84 + 48);
  v25 = *(v84 + 52);
  v26 = swift_allocObject();
  v78 = v26;
  swift_beginAccess();
  v95 = a2;

  sub_1DAECEEFC();
  swift_endAccess();
  *&v22[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_stateController] = v26;
  v27 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_environment;
  v28 = sub_1DAECF8EC();
  v74 = *(v28 - 8);
  v76 = *(v74 + 16);
  v76(&v22[v27], a4, v28);
  v29 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewKind;
  v30 = sub_1DAED1A5C();
  v73 = *(v30 - 8);
  v31 = *(v73 + 16);
  v32 = &v22[v29];
  v33 = v89;
  v34 = v81;
  v31(v32, v81, v30);
  v35 = v77;
  swift_beginAccess();
  *&v22[v35] = a9;
  if (v85)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = v82;
  }

  if (v85)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = v83;
  }

  v38 = v79;
  swift_beginAccess();
  *v38 = v36;
  v38[1] = v37;
  v39 = &v22[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName];
  v40 = v86;
  *v39 = v91;
  v39[1] = v40;
  v41 = v80 + v33[8];
  v85 = a4;
  v83 = *&v28;
  v42 = v28;
  v43 = v80;
  v76(v41, a4, v42);
  v44 = v34;
  v45 = v43 + v33[9];
  v82 = *&v30;
  v31(v45, v34, v30);
  v46 = v40;
  v43[2] = 0;
  v47 = (v43 + v33[12]);
  v94 = 0;
  swift_bridgeObjectRetain_n();
  v48 = v90;

  sub_1DAED076C();
  v49 = v93;
  *v47 = v92;
  v47[1] = v49;
  v43[4] = v48;
  sub_1DAE2002C(&qword_1ECC08F18, type metadata accessor for ActivityPreviewHostingViewController.StateController);
  *v43 = sub_1DAECF21C();
  v43[1] = v50;
  v43[3] = v87;
  v51 = (v43 + v33[10]);
  *v51 = v36;
  v51[1] = v37;
  v52 = (v43 + v33[11]);
  *v52 = v91;
  v52[1] = v46;
  sub_1DAE1B934(v43, &v22[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_autoupdatingPreviewView]);
  v53 = sub_1DAED087C();
  v22[OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_requiresStrictViewFraming] = 0;
  *&v22[OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters] = 0;
  v22[OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize] = 1;
  _s14WidgetRenderer12ViewDecodersC018registerArchivablecD0yyFZ_0();
  sub_1DADA5544(v53, 0, 1, v88);
  v55 = v54;

  v56 = v55;
  v57 = [v56 view];
  if (!v57)
  {
    __break(1u);
    goto LABEL_12;
  }

  v58 = v57;
  v59 = [v57 layer];

  sub_1DAE19988();
  [v59 setCornerRadius_];

  v60 = [v56 view];
  if (!v60)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v61 = [v60 layer];

  [v61 setMasksToBounds_];
  v62 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v63 = *&v56[v62];
  v64 = v56;
  v65 = v63;
  sub_1DAECFA6C();

  v66 = *&v56[v62];
  sub_1DAECFFBC();
  sub_1DAECFA5C();

  v67 = [*&v56[v62] view];
  if (v67)
  {
    v68 = v67;

    v69 = [objc_opt_self() blackColor];
    [v68 setBackgroundColor_];

    sub_1DAE1FFC8(&v64[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_autoupdatingPreviewView], v43);
    sub_1DAE2002C(&qword_1ECC08F20, type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView);
    v70 = sub_1DAED087C();
    v71 = *&v56[v62];
    v94 = v70;
    v72 = v71;

    sub_1DAECFABC();

    (*(v73 + 8))(v44, COERCE_DOUBLE(*&v82));
    (*(v74 + 8))(v85, COERCE_DOUBLE(*&v83));
    return;
  }

LABEL_13:
  __break(1u);
}

void ActivityPreviewHostingViewController.init(viewCollections:currentStateIndex:widgetLocation:environment:viewKind:apertureTopEdgeMetric:islandSize:renderBoxRendersAsynchronously:appName:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v81) = a8;
  v80 = *&a7;
  v79 = *&a6;
  v86 = a5;
  v87 = a4;
  v85 = a10;
  v83 = a12;
  v84 = a3;
  v88 = a11;
  v17 = sub_1DAECFFCC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v74 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v78 = (&v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize);
  *v23 = 0.0;
  v23[1] = 0.0;
  v24 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric;
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric) = 0;
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced) = 0;
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewCollections) = a1;
  v77 = a1;
  v82 = type metadata accessor for ActivityPreviewHostingViewController.StateController(0);
  v25 = *(v82 + 48);
  v26 = *(v82 + 52);
  v27 = swift_allocObject();
  v76 = v27;
  swift_beginAccess();
  v92 = a2;

  sub_1DAECEEFC();
  swift_endAccess();
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_stateController) = v27;
  v28 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_environment;
  v29 = sub_1DAECF8EC();
  v73 = *(v29 - 8);
  v75 = *(v73 + 16);
  v75(v12 + v28, a4, v29);
  v30 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewKind;
  v31 = sub_1DAED1A5C();
  v72 = *(v31 - 8);
  v32 = *(v72 + 16);
  v33 = v12 + v30;
  v34 = v20;
  v35 = v86;
  v32(v33, v86, v31);
  swift_beginAccess();
  *(v12 + v24) = a9;
  if (v81)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = v79;
  }

  if (v81)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = v80;
  }

  swift_beginAccess();
  *v23 = v36;
  v23[1] = v37;
  v38 = (v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName);
  v39 = v87;
  v40 = v83;
  *v38 = v88;
  v38[1] = v40;
  v41 = v78 + v34[8];
  v81 = v29;
  v42 = v29;
  v43 = v78;
  v75(v41, v39, v42);
  v44 = v43 + v34[9];
  v80 = *&v31;
  v32(v44, v35, v31);
  v45 = v40;
  v43[2] = 0;
  v46 = (v43 + v34[12]);
  v91 = 0;
  swift_bridgeObjectRetain_n();
  v47 = v77;

  sub_1DAED076C();
  v48 = v90;
  *v46 = v89;
  v46[1] = v48;
  v43[4] = v47;
  sub_1DAE2002C(&qword_1ECC08F18, type metadata accessor for ActivityPreviewHostingViewController.StateController);
  *v43 = sub_1DAECF21C();
  v43[1] = v49;
  v43[3] = v84;
  v50 = (v43 + v34[10]);
  *v50 = v36;
  v50[1] = v37;
  v84 = v34;
  v51 = (v43 + v34[11]);
  *v51 = v88;
  v51[1] = v45;
  sub_1DAE1B934(v43, v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_autoupdatingPreviewView);
  v52 = sub_1DAED087C();
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_requiresStrictViewFraming) = 0;
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters) = 0;
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize) = 1;
  _s14WidgetRenderer12ViewDecodersC018registerArchivablecD0yyFZ_0();
  sub_1DADA5544(v52, 0, 1, v85);
  v54 = v53;

  v55 = v54;
  v56 = [v55 view];
  if (!v56)
  {
    __break(1u);
    goto LABEL_12;
  }

  v57 = v56;
  v58 = [v56 layer];

  sub_1DAE19988();
  [v58 setCornerRadius_];

  v59 = [v55 view];
  if (!v59)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v60 = [v59 layer];

  [v60 setMasksToBounds_];
  v61 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v62 = *&v55[v61];
  v63 = v55;
  v64 = v62;
  sub_1DAECFA6C();

  v65 = *&v55[v61];
  sub_1DAECFFBC();
  sub_1DAECFA5C();

  v66 = [*&v55[v61] view];
  if (v66)
  {
    v67 = v66;

    v68 = [objc_opt_self() blackColor];
    [v67 setBackgroundColor_];

    sub_1DAE1FFC8(&v63[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_autoupdatingPreviewView], v43);
    sub_1DAE2002C(&qword_1ECC08F20, type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView);
    v69 = sub_1DAED087C();
    v70 = *&v55[v61];
    v91 = v69;
    v71 = v70;

    sub_1DAECFABC();

    (*(v72 + 8))(v86, COERCE_DOUBLE(*&v80));
    (*(v73 + 8))(v87, v81);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1DAE1B20C(void *a1)
{
  [a1 preferredContentSize];
  [v1 setPreferredContentSize_];
  v3 = [v1 view];
  if (v3)
  {
    [a1 preferredContentSize];
    [v3 frame];
    [v3 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id ActivityPreviewHostingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ActivityPreviewHostingViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced) = 0;
  sub_1DAED273C();
  __break(1u);
}

uint64_t sub_1DAE1B50C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_stateController);
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1DAECEF4C();
  }

  else
  {
    if (qword_1EE0071E8 != -1)
    {
      swift_once();
    }

    MEMORY[0x1EEE9AC00](qword_1EE0118A0);
    return sub_1DAECF1DC();
  }
}

uint64_t sub_1DAE1B61C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_stateController);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE1B6B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_stateController);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF3C();

  return v3;
}

uint64_t sub_1DAE1B740@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_stateController;
  v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_stateController);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF3C();

  v6 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewCollections);
  v7 = *(v6 + 16);
  if (v11 < v7)
  {
    v8 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1DAECEF3C();

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 < *(v6 + 16))
      {
        v9 = sub_1DAED1BEC();
        return (*(*(v9 - 8) + 16))(a1, v6 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v11, v9);
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v10 = sub_1DAED1BEC();
  return (*(*(v10 - 8) + 16))(a1, v6 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v10);
}

uint64_t sub_1DAE1B934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE1B998@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAED1B8C();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1DAED182C();
  v45 = *(v50 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED1BEC();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v46 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v40 - v17;
  v18 = sub_1DAED1A5C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v40 - v24;
  v26 = *(v19 + 16);
  v26(&v40 - v24, v1 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewKind, v18);
  if ((*(v19 + 88))(v25, v18) != *MEMORY[0x1E6985A88])
  {
    goto LABEL_5;
  }

  v41 = a1;
  v26(v23, v25, v18);
  (*(v19 + 96))(v23, v18);
  v27 = sub_1DAED1A4C();
  v28 = *(v27 - 8);
  if ((*(v28 + 88))(v23, v27) != *MEMORY[0x1E6985A70])
  {
    (*(v28 + 8))(v23, v27);
    a1 = v41;
LABEL_5:
    v31 = sub_1DAED187C();
    (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
    return (*(v19 + 8))(v25, v18);
  }

  sub_1DAE1B740(v12);
  *v8 = 1;
  v29 = v45;
  (*(v45 + 104))(v8, *MEMORY[0x1E6985910], v50);
  sub_1DAED1BDC();
  v30 = v47;
  sub_1DAED1BCC();

  (*(v29 + 8))(v8, v50);
  (*(v43 + 8))(v12, v44);
  v33 = v41;
  v35 = v48;
  v34 = v49;
  v36 = v46;
  sub_1DAD6495C(v30, v46, &unk_1ECC09E40, &qword_1DAED68E0);
  if ((*(v35 + 48))(v36, 1, v34) == 1)
  {
    sub_1DAD64398(v30, &unk_1ECC09E40, &qword_1DAED68E0);
    sub_1DAD64398(v36, &unk_1ECC09E40, &qword_1DAED68E0);
    (*(v19 + 8))(v25, v18);
    v37 = sub_1DAED187C();
    return (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
  }

  v38 = v42;
  (*(v35 + 32))(v42, v36, v34);
  sub_1DAED1B6C();
  (*(v35 + 8))(v38, v34);
  sub_1DAD64398(v30, &unk_1ECC09E40, &qword_1DAED68E0);
  v39 = sub_1DAED187C();
  (*(*(v39 - 8) + 56))(v33, 0, 1, v39);
  return (*(v19 + 8))(v25, v18);
}

uint64_t sub_1DAE1C040(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAED1B8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v25 - v14;
  sub_1DAE1C3A8(a1, v25 - v14);
  sub_1DAD6495C(v15, v13, &unk_1ECC09E40, &qword_1DAED68E0);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_1DAD64398(v15, &unk_1ECC09E40, &qword_1DAED68E0);
    sub_1DAD64398(v13, &unk_1ECC09E40, &qword_1DAED68E0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v13, v4);
    v16 = sub_1DAED1B5C();
    v17 = *(v2 + 16);
    if (v17)
    {
      v18 = type metadata accessor for TintedWidgetViewModel();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      swift_beginAccess();
      v25[5] = v17;
      sub_1DADA657C();
      v21 = v17;
      sub_1DAECEEFC();
      swift_endAccess();
      sub_1DAE2002C(&qword_1EE008CE8, type metadata accessor for TintedWidgetViewModel);
      swift_retain_n();

      v25[1] = sub_1DAECF21C();
      v25[2] = v22;
      v25[3] = v16;
      v25[4] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FE0, &qword_1DAED8598);
      sub_1DAD64B94(&qword_1ECC08FE8, &qword_1ECC08FE0, &qword_1DAED8598);
      v23 = sub_1DAED087C();

      v16 = v23;
    }

    (*(v5 + 8))(v8, v4);
    sub_1DAD64398(v15, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  return v16;
}

uint64_t sub_1DAE1C3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = v66 - v6;
  v7 = sub_1DAED1B8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v69 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAECF8EC();
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v76 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DAECF32C();
  v83 = *(v14 - 1);
  v15 = *(v83 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v66 - v19;
  v21 = sub_1DAED1BEC();
  v85 = *(v21 - 8);
  v86 = v21;
  v22 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v87 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v72 = v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v77 = v66 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v70 = v66 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v75 = v66 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = v66 - v34;
  v80 = v8;
  v36 = *(v8 + 56);
  v82 = v7;
  v73 = v36;
  v74 = v8 + 56;
  v36(v66 - v34, 1, 1, v7);
  v37 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  v84 = v2;
  v38 = *(v2 + 32);
  if (v88 >= *(v38 + 16))
  {
    return sub_1DAD7C48C(v35, a2, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  v67 = v35;
  v68 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (v88 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v88 >= *(v38 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  (*(v85 + 16))(v87, v38 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v88, v86);
  v39 = *(type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0) + 32);
  v40 = v84;
  sub_1DAECF46C();
  sub_1DAECF30C();
  sub_1DAE2002C(&qword_1EE00BE58, MEMORY[0x1E697EA58]);
  v41 = sub_1DAED23AC();
  v42 = v83;
  v43 = *(v83 + 8);
  v43(v18, v14);
  v43(v20, v14);
  v66[1] = v39;
  if ((v41 & 1) == 0)
  {
    v14 = 0;
    v38 = v82;
    v37 = v80;
LABEL_17:
    v35 = v67;
LABEL_18:
    v49 = v87;
    goto LABEL_19;
  }

  (*(v78 + 16))(v76, v40 + v39, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09038, &unk_1DAED85C0);
  v44 = *(v42 + 72);
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1DAED6200;
  sub_1DAECF31C();
  v88 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAED23CC();
  sub_1DAECF47C();
  sub_1DAED1BDC();
  v47 = v75;
  v48 = v87;
  v14 = 0;
  sub_1DAED1BCC();
  v38 = v82;
  v49 = v48;

  v37 = v80;
  v51 = v70;
  v50 = v71;
  sub_1DAD6495C(v47, v70, &unk_1ECC09E40, &qword_1DAED68E0);
  v52 = (*(v37 + 48))(v51, 1, v38);
  if (v52 != 1)
  {
    v20 = *(v37 + 32);
    a2 = v69;
    (v20)(v69, v51, v38);
    sub_1DAED1B7C();
    v53 = sub_1DAED1B1C();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v50, 1, v53) == 1)
    {
      sub_1DAD64398(v50, &unk_1ECC0A520, &unk_1DAED6D30);
LABEL_16:
      (*(v37 + 8))(a2, v38);
      sub_1DAD64398(v75, &unk_1ECC09E40, &qword_1DAED68E0);
      (*(v78 + 8))(v76, v79);
      goto LABEL_17;
    }

    v55 = sub_1DAED1AEC();
    v56 = v50;
    v57 = v55;
    (*(v54 + 8))(v56, v53);
    if ((v57 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_1ECC07A18 == -1)
    {
LABEL_13:
      v58 = sub_1DAECEDEC();
      __swift_project_value_buffer(v58, qword_1ECC0DEC0);
      v59 = sub_1DAECEDCC();
      v60 = sub_1DAED200C();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1DAD61000, v59, v60, "Preview placeholder containsPrivacyRedactions, switching to privacy", v61, 2u);
        MEMORY[0x1E127F100](v61, -1, -1);
      }

      sub_1DAD64398(v75, &unk_1ECC09E40, &qword_1DAED68E0);
      (*(v78 + 8))(v76, v79);
      v62 = v67;
      sub_1DAD64398(v67, &unk_1ECC09E40, &qword_1DAED68E0);
      (v20)(v62, a2, v38);
      v35 = v62;
      v73(v62, 0, 1, v38);
      goto LABEL_18;
    }

LABEL_29:
    swift_once();
    goto LABEL_13;
  }

  sub_1DAD64398(v47, &unk_1ECC09E40, &qword_1DAED68E0);
  (*(v78 + 8))(v76, v79);
  sub_1DAD64398(v51, &unk_1ECC09E40, &qword_1DAED68E0);
  v35 = v67;
LABEL_19:
  v63 = v77;
  sub_1DAD6495C(v35, v77, &unk_1ECC09E40, &qword_1DAED68E0);
  if ((*(v37 + 48))(v63, 1, v38) == 1)
  {
    sub_1DAD64398(v63, &unk_1ECC09E40, &qword_1DAED68E0);
    sub_1DAED1BDC();
    v64 = v72;
    sub_1DAED1BCC();
    if (v14)
    {

      (*(v85 + 8))(v49, v86);
      sub_1DAD64398(v35, &unk_1ECC09E40, &qword_1DAED68E0);
      v73(v64, 1, 1, v38);
    }

    else
    {

      (*(v85 + 8))(v49, v86);
      sub_1DAD64398(v35, &unk_1ECC09E40, &qword_1DAED68E0);
    }

    sub_1DAD7C48C(v64, v35, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  else
  {
    (*(v85 + 8))(v49, v86);
    sub_1DAD64398(v63, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  a2 = v68;
  return sub_1DAD7C48C(v35, a2, &unk_1ECC09E40, &qword_1DAED68E0);
}

uint64_t sub_1DAE1CF28@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v283 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086B0, &unk_1DAED84D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v253 - v5;
  v7 = sub_1DAED1B8C();
  v285 = *(v7 - 8);
  v286 = v7;
  v8 = *(v285 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v254 = &v253 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v268 = &v253 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v257 = &v253 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v261 = &v253 - v15;
  v275 = sub_1DAED17AC();
  v288 = *(v275 - 8);
  v16 = *(v288 + 64);
  v17 = MEMORY[0x1EEE9AC00](v275);
  v277 = &v253 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v278 = &v253 - v19;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08F80, &unk_1DAEDC8D0);
  v20 = *(*(v272 - 8) + 64);
  MEMORY[0x1EEE9AC00](v272);
  v274 = &v253 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v259 = &v253 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v263 = &v253 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08698, &qword_1DAED84E0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v264 = &v253 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v253 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v276 = &v253 - v34;
  v289 = sub_1DAED182C();
  v293 = *(v289 - 8);
  v35 = *(v293 + 64);
  MEMORY[0x1EEE9AC00](v289);
  v287 = &v253 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v258 = &v253 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v262 = (&v253 - v42);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v266 = &v253 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v267 = (&v253 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v265 = &v253 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v256 = &v253 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v260 = &v253 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v271 = &v253 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v280 = &v253 - v55;
  v294 = sub_1DAED1A5C();
  v290 = *(v294 - 8);
  v56 = *(v290 + 64);
  v57 = MEMORY[0x1EEE9AC00](v294);
  v270 = &v253 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v291 = &v253 - v59;
  v60 = type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v253 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DAECF0AC();
  v281 = *(v64 - 8);
  v65 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v296 = &v253 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = objc_opt_self();
  v279 = [v284 clearColor];
  if (qword_1ECC07A18 != -1)
  {
    swift_once();
  }

  v67 = sub_1DAECEDEC();
  v68 = __swift_project_value_buffer(v67, qword_1ECC0DEC0);
  sub_1DAE1FFC8(v2, v63);
  v269 = v68;
  v69 = sub_1DAECEDCC();
  v70 = sub_1DAED200C();
  v71 = os_log_type_enabled(v69, v70);
  v295 = v60;
  v255 = v6;
  v273 = v33;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v73 = v64;
    v74 = v2;
    v75 = swift_slowAlloc();
    *&v306 = v75;
    *v72 = 136446210;
    v76 = &v63[*(v60 + 32)];
    v77 = sub_1DAECF3BC();
    v79 = v78;
    sub_1DAE20A70(v63);
    v80 = sub_1DAD6482C(v77, v79, &v306);
    v60 = v295;

    *(v72 + 4) = v80;
    _os_log_impl(&dword_1DAD61000, v69, v70, "Trying to use preview view for environment: %{public}s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    v81 = v75;
    v2 = v74;
    v64 = v73;
    MEMORY[0x1E127F100](v81, -1, -1);
    MEMORY[0x1E127F100](v72, -1, -1);
  }

  else
  {

    sub_1DAE20A70(v63);
  }

  v83 = v290;
  v82 = v291;
  v84 = *(v290 + 16);
  v85 = v294;
  v84(v291, v2 + *(v60 + 36), v294);
  v86 = (*(v83 + 88))(v82, v85);
  v87 = *MEMORY[0x1E6985A88];
  v88 = v296;
  v292 = v2;
  v282 = v64;
  if (v86 != v87)
  {
    if (v86 != *MEMORY[0x1E6985A90])
    {
      goto LABEL_65;
    }

    v107 = [v284 systemBackgroundColor];

    v108 = v293;
    v110 = (v293 + 104);
    v109 = *(v293 + 104);
    v111 = v287;
    LODWORD(v258) = *MEMORY[0x1E6985918];
    v112 = v289;
    v267 = v109;
    v109(v287);
    v113 = v280;
    sub_1DAE1C3A8(v111, v280);
    v270 = *(v108 + 8);
    (v270)(v111, v112);
    v114 = v271;
    sub_1DAD6495C(v113, v271, &unk_1ECC09E40, &qword_1DAED68E0);
    v116 = v285;
    v115 = v286;
    v117 = *(v285 + 48);
    v266 = v285 + 48;
    v262 = v117;
    v118 = v117(v114, 1, v286);
    v119 = v276;
    v284 = v107;
    v293 = v108 + 8;
    v268 = v110;
    if (v118 == 1)
    {
      v120 = &unk_1ECC09E40;
      v121 = &qword_1DAED68E0;
      v122 = v114;
    }

    else
    {
      v131 = v263;
      sub_1DAED1B7C();
      (*(v116 + 8))(v114, v115);
      v132 = sub_1DAED1B1C();
      v133 = *(v132 - 8);
      if ((*(v133 + 48))(v131, 1, v132) != 1)
      {
        sub_1DAED1ACC();
        (*(v133 + 8))(v131, v132);
        v134 = 0;
LABEL_24:
        v142 = v288;
        v143 = *(v288 + 56);
        v144 = v275;
        v143(v119, v134, 1, v275);
        v279 = v295[8];
        v145 = v273;
        sub_1DAECF67C();
        v143(v145, 0, 1, v144);
        v146 = *(v272 + 48);
        v147 = v119;
        v148 = v119;
        v149 = v274;
        sub_1DAD6495C(v147, v274, &qword_1ECC08698, &qword_1DAED84E0);
        sub_1DAD6495C(v145, &v149[v146], &qword_1ECC08698, &qword_1DAED84E0);
        v150 = *(v142 + 48);
        if (v150(v149, 1, v144) == 1)
        {
          sub_1DAD64398(v145, &qword_1ECC08698, &qword_1DAED84E0);
          sub_1DAD64398(v148, &qword_1ECC08698, &qword_1DAED84E0);
          v151 = v150(&v149[v146], 1, v144);
          v152 = v144;
          v153 = v270;
          if (v151 == 1)
          {
            sub_1DAD64398(v149, &qword_1ECC08698, &qword_1DAED84E0);
            v154 = v289;
            goto LABEL_34;
          }
        }

        else
        {
          v155 = v264;
          sub_1DAD6495C(v149, v264, &qword_1ECC08698, &qword_1DAED84E0);
          if (v150(&v149[v146], 1, v144) != 1)
          {
            v165 = v288;
            v166 = v278;
            (*(v288 + 32))(v278, &v149[v146], v144);
            sub_1DAE2002C(&qword_1ECC09008, MEMORY[0x1E69858D8]);
            v167 = sub_1DAED1CAC();
            v168 = *(v165 + 8);
            v168(v166, v144);
            sub_1DAD64398(v145, &qword_1ECC08698, &qword_1DAED84E0);
            sub_1DAD64398(v276, &qword_1ECC08698, &qword_1DAED84E0);
            v168(v155, v144);
            sub_1DAD64398(v149, &qword_1ECC08698, &qword_1DAED84E0);
            v152 = v144;
            v153 = v270;
            v154 = v289;
            if (v167)
            {
              goto LABEL_34;
            }

            goto LABEL_30;
          }

          sub_1DAD64398(v145, &qword_1ECC08698, &qword_1DAED84E0);
          sub_1DAD64398(v276, &qword_1ECC08698, &qword_1DAED84E0);
          (*(v288 + 8))(v155, v144);
          v152 = v144;
          v153 = v270;
        }

        sub_1DAD64398(v149, &qword_1ECC08F80, &unk_1DAEDC8D0);
LABEL_30:
        v156 = v278;
        sub_1DAECF67C();
        v157 = v288;
        v158 = v277;
        (*(v288 + 104))(v277, *MEMORY[0x1E69858D0], v152);
        sub_1DAE2002C(&qword_1ECC08FF0, MEMORY[0x1E69858D8]);
        sub_1DAED1E4C();
        sub_1DAED1E4C();
        v159 = *(v157 + 8);
        v159(v158, v152);
        v154 = v289;
        v159(v156, v152);
        if (v306 == v322)
        {
          v160 = v287;
          *v287 = 1;
          LODWORD(v276) = *MEMORY[0x1E6985910];
          v161 = v267;
          v267(v160);
          v162 = v260;
          sub_1DAE1C3A8(v160, v260);
          (v153)(v160, v154);
          v163 = v286;
          v164 = v262;
          if (v262(v162, 1, v286) != 1)
          {
            v274 = *(v285 + 32);
            (v274)(v261, v162, v163);
            *v160 = 2;
            v183 = v289;
            (v161)(v160, v276, v289);
            v184 = v256;
            sub_1DAE1C3A8(v160, v256);
            (v270)(v160, v183);
            if (v164(v184, 1, v163) == 1)
            {
              (*(v285 + 8))(v261, v163);
              sub_1DAD64398(v184, &unk_1ECC09E40, &qword_1DAED68E0);
              v276 = 0;
              v82 = v291;
              v83 = v290;
              v152 = v275;
            }

            else
            {
              (v274)(v257, v184, v163);
              v200 = (v292 + v295[11]);
              v201 = v200[1];
              v293 = *v200;

              v289 = sub_1DAED1B5C();
              sub_1DAED091C();
              sub_1DAECF15C();
              v202 = v311;
              v203 = BYTE8(v311);
              v204 = v312;
              v205 = BYTE8(v312);
              v206 = v313;
              v207 = sub_1DAED1B5C();
              sub_1DAED091C();
              sub_1DAECF15C();
              LOBYTE(v309) = v203;
              v300 = v205;
              v299 = BYTE8(v322);
              v298 = BYTE8(v323);
              v297 = 0;
              *&v306 = v293;
              *(&v306 + 1) = v201;
              *v307 = v289;
              *&v307[8] = v202;
              v307[16] = v203;
              *&v307[17] = v305[0];
              *&v307[20] = *(v305 + 3);
              *&v307[24] = v204;
              v307[32] = v205;
              *&v307[33] = *v304;
              *&v307[36] = *&v304[3];
              *&v307[40] = v206;
              *&v307[56] = v207;
              *&v307[64] = v322;
              v307[72] = BYTE8(v322);
              *&v307[76] = *&v303[3];
              *&v307[73] = *v303;
              *&v307[80] = v323;
              v307[88] = BYTE8(v323);
              *&v307[92] = *&v302[3];
              *&v307[89] = *v302;
              *&v307[96] = v324;
              *&v307[112] = xmmword_1DAED8300;
              *&v307[128] = 0x4018000000000000;
              *&v307[136] = 0x403827EF9DB22D0FLL;
              v307[144] = 0;
              *&v308[3] = *&v301[3];
              *v308 = *v301;
              *&v308[15] = 0;
              *&v308[7] = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FF8, &qword_1DAED85A0);
              sub_1DAD64B94(&qword_1ECC09000, &qword_1ECC08FF8, &qword_1DAED85A0);
              v208 = sub_1DAED087C();
              v209 = v208;
              v210 = *(v292 + 16);
              if (v210)
              {
                v211 = type metadata accessor for TintedWidgetViewModel();
                v212 = *(v211 + 48);
                v213 = *(v211 + 52);
                swift_allocObject();
                swift_beginAccess();
                v309 = v210;
                sub_1DADA657C();
                v214 = v210;
                sub_1DAECEEFC();
                swift_endAccess();
                sub_1DAE2002C(&qword_1EE008CE8, type metadata accessor for TintedWidgetViewModel);
                swift_retain_n();

                *&v306 = sub_1DAECF21C();
                *(&v306 + 1) = v215;
                *v307 = v209;
                *&v307[8] = v209;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FE0, &qword_1DAED8598);
                sub_1DAD64B94(&qword_1ECC08FE8, &qword_1ECC08FE0, &qword_1DAED8598);
                v216 = sub_1DAED087C();

                v276 = v216;
              }

              else
              {
                v276 = v208;
              }

              v83 = v290;
              v82 = v291;
              v251 = v286;
              v252 = *(v285 + 8);
              v252(v257, v286);
              v252(v261, v251);
              v152 = v275;
            }

            goto LABEL_36;
          }

          sub_1DAD64398(v162, &unk_1ECC09E40, &qword_1DAED68E0);
          v276 = 0;
LABEL_35:
          v83 = v290;
          v82 = v291;
LABEL_36:
          v170 = v278;
          sub_1DAECF67C();
          v171 = v288;
          v172 = v277;
          (*(v288 + 104))(v277, *MEMORY[0x1E69858D0], v152);
          sub_1DAE2002C(&qword_1ECC08FF0, MEMORY[0x1E69858D8]);
          sub_1DAED1E4C();
          sub_1DAED1E4C();
          v173 = *(v171 + 8);
          v173(v172, v152);
          v173(v170, v152);
          if (v306 == v309)
          {
            v174 = v280;
            v175 = v265;
            sub_1DAD6495C(v280, v265, &unk_1ECC09E40, &qword_1DAED68E0);
            v176 = v286;
            v177 = v262(v175, 1, v286);
            v130 = v296;
            if (v177 == 1)
            {
              sub_1DAD64398(v174, &unk_1ECC09E40, &qword_1DAED68E0);
              sub_1DAD64398(v175, &unk_1ECC09E40, &qword_1DAED68E0);
              v60 = v295;
              v106 = v292;
            }

            else
            {
              v178 = v259;
              sub_1DAED1B7C();
              v179 = v178;
              (*(v285 + 8))(v175, v176);
              v180 = sub_1DAED1B1C();
              v181 = *(v180 - 8);
              v182 = (*(v181 + 48))(v179, 1, v180);
              v106 = v292;
              if (v182 == 1)
              {
                sub_1DAD64398(v174, &unk_1ECC09E40, &qword_1DAED68E0);
                sub_1DAD64398(v179, &unk_1ECC0A520, &unk_1DAED6D30);
              }

              else
              {
                v197 = v255;
                sub_1DAED1ADC();
                (*(v181 + 8))(v179, v180);
                v198 = sub_1DAED175C();
                v199 = *(v198 - 8);
                if ((*(v199 + 48))(v197, 1, v198) == 1)
                {
                  sub_1DAD64398(v174, &unk_1ECC09E40, &qword_1DAED68E0);
                  sub_1DAD64398(v197, &qword_1ECC086B0, &unk_1DAED84D0);
                }

                else
                {
                  v217 = sub_1DAED173C();
                  sub_1DAD64398(v174, &unk_1ECC09E40, &qword_1DAED68E0);
                  (*(v199 + 8))(v197, v198);
                  if (v217)
                  {

                    v284 = v217;
                  }
                }
              }

              v60 = v295;
              v82 = v291;
            }
          }

          else
          {
            sub_1DAD64398(v280, &unk_1ECC09E40, &qword_1DAED68E0);
            v60 = v295;
            v130 = v296;
            v106 = v292;
          }

          v129 = v276;
LABEL_54:
          (*(v83 + 8))(v82, v294);
          if (!v129)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

LABEL_34:
        v169 = v287;
        (v267)(v287, v258, v154);
        v276 = sub_1DAE1C040(v169);
        (v153)(v169, v154);
        goto LABEL_35;
      }

      v120 = &unk_1ECC0A520;
      v121 = &unk_1DAED6D30;
      v122 = v131;
    }

    sub_1DAD64398(v122, v120, v121);
    v134 = 1;
    goto LABEL_24;
  }

  v89 = v270;
  v84(v270, v82, v85);
  (*(v83 + 96))(v89, v85);
  v90 = sub_1DAED1A4C();
  v91 = *(v90 - 8);
  v92 = (*(v91 + 88))(v89, v90);
  if (v92 == *MEMORY[0x1E6985A70])
  {
    v284 = [v284 blackColor];

    v93 = v293;
    v94 = v287;
    *v287 = 1;
    v95 = *MEMORY[0x1E6985910];
    v96 = *(v93 + 104);
    v97 = v289;
    v96(v94, v95, v289);
    v98 = v267;
    sub_1DAE1C3A8(v94, v267);
    v99 = *(v93 + 8);
    v99(v94, v97);
    *v94 = 2;
    v96(v94, v95, v97);
    v100 = v266;
    sub_1DAE1C3A8(v94, v266);
    v99(v94, v97);
    v101 = v98;
    v102 = v262;
    sub_1DAD6495C(v98, v262, &unk_1ECC09E40, &qword_1DAED68E0);
    v104 = v285;
    v103 = v286;
    v105 = *(v285 + 48);
    if (v105(v102, 1, v286) == 1)
    {
      v106 = v292;
      sub_1DAD64398(v100, &unk_1ECC09E40, &qword_1DAED68E0);
      sub_1DAD64398(v101, &unk_1ECC09E40, &qword_1DAED68E0);
      sub_1DAD64398(v102, &unk_1ECC09E40, &qword_1DAED68E0);
LABEL_20:
      v130 = v296;
      (*(v290 + 8))(v291, v294);
LABEL_56:
      v224 = sub_1DAECEDCC();
      v225 = sub_1DAED200C();
      if (os_log_type_enabled(v224, v225))
      {
        v226 = swift_slowAlloc();
        *v226 = 0;
        _os_log_impl(&dword_1DAD61000, v224, v225, "No view found in activity preview view collection: showing empty view.", v226, 2u);
        MEMORY[0x1E127F100](v226, -1, -1);
      }

      v222 = v281;
      v223 = v282;
      (*(v281 + 104))(v130, *MEMORY[0x1E697DBB8], v282);
      v129 = sub_1DAED087C();
      v219 = 0xEF295954504D4528;
      v221 = 0x2057454956455250;
      v220 = v295;
      goto LABEL_59;
    }

    v135 = *(v104 + 32);
    v135(v268, v102, v103);
    v136 = v258;
    sub_1DAD6495C(v100, v258, &unk_1ECC09E40, &qword_1DAED68E0);
    if (v105(v136, 1, v103) == 1)
    {
      v106 = v292;
      sub_1DAD64398(v100, &unk_1ECC09E40, &qword_1DAED68E0);
      sub_1DAD64398(v101, &unk_1ECC09E40, &qword_1DAED68E0);
      sub_1DAD64398(v136, &unk_1ECC09E40, &qword_1DAED68E0);
      (*(v104 + 8))(v268, v103);
      goto LABEL_20;
    }

    v185 = v254;
    v135(v254, v136, v103);
    v106 = v292;
    v186 = *(v292 + v295[10]);
    v187 = sub_1DAECF8FC();
    LOBYTE(v305[0]) = 0;
    sub_1DAE1F264(v106, v185, &v306, v186);
    v319 = *&v307[112];
    v320 = *&v307[128];
    v315 = *&v307[48];
    v316 = *&v307[64];
    v318 = *&v307[96];
    v317 = *&v307[80];
    v311 = v306;
    v312 = *v307;
    v313 = *&v307[16];
    v314 = *&v307[32];
    v330 = *&v307[112];
    v331 = *&v307[128];
    v326 = *&v307[48];
    v327 = *&v307[64];
    v329 = *&v307[96];
    v328 = *&v307[80];
    v322 = v306;
    v323 = *v307;
    v321 = v307[144];
    v332 = v307[144];
    v325 = *&v307[32];
    v324 = *&v307[16];
    sub_1DAD6495C(&v311, &v309, &qword_1ECC08FC8, &qword_1DAED8588);
    sub_1DAD64398(&v322, &qword_1ECC08FC8, &qword_1DAED8588);
    *&v310[119] = v318;
    *&v310[135] = v319;
    *&v310[151] = v320;
    v310[167] = v321;
    *&v310[55] = v314;
    *&v310[71] = v315;
    *&v310[87] = v316;
    *&v310[103] = v317;
    *&v310[7] = v311;
    *&v310[23] = v312;
    *&v310[39] = v313;
    *&v307[113] = *&v310[112];
    *&v307[129] = *&v310[128];
    *v308 = *&v310[144];
    *&v307[49] = *&v310[48];
    *&v307[65] = *&v310[64];
    *&v307[81] = *&v310[80];
    *&v307[97] = *&v310[96];
    *&v307[1] = *v310;
    *&v307[17] = *&v310[16];
    v306 = v187;
    v307[0] = v305[0];
    *&v308[16] = *&v310[160];
    *&v307[33] = *&v310[32];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FD0, &qword_1DAED8590);
    sub_1DAD64B94(&qword_1ECC08FD8, &qword_1ECC08FD0, &qword_1DAED8590);
    v188 = sub_1DAED087C();
    v189 = *(v106 + 16);
    if (v189)
    {
      v190 = type metadata accessor for TintedWidgetViewModel();
      v191 = *(v190 + 48);
      v192 = *(v190 + 52);
      swift_allocObject();
      swift_beginAccess();
      v309 = v189;
      sub_1DADA657C();
      v193 = v189;
      sub_1DAECEEFC();
      swift_endAccess();
      sub_1DAE2002C(&qword_1EE008CE8, type metadata accessor for TintedWidgetViewModel);
      swift_retain_n();

      *&v306 = sub_1DAECF21C();
      *(&v306 + 1) = v194;
      *v307 = v188;
      *&v307[8] = v188;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FE0, &qword_1DAED8598);
      sub_1DAD64B94(&qword_1ECC08FE8, &qword_1ECC08FE0, &qword_1DAED8598);
      v195 = v294;
      v196 = sub_1DAED087C();

      v188 = v196;
    }

    else
    {
      v195 = v294;
    }

    sub_1DAD64398(v266, &unk_1ECC09E40, &qword_1DAED68E0);
    sub_1DAD64398(v267, &unk_1ECC09E40, &qword_1DAED68E0);
    v249 = v286;
    v250 = *(v285 + 8);
    v250(v185, v286);
    v250(v268, v249);
    (*(v290 + 8))(v291, v195);
    v60 = v295;
    v129 = v188;
LABEL_55:
    v218 = v106 + *(v60 + 32);
    sub_1DAECF39C();
    v219 = 0xE700000000000000;
    v220 = v60;
    v221 = 0x57454956455250;
    v222 = v281;
    v223 = v282;
LABEL_59:

    v227 = sub_1DAED004C();
    v228 = sub_1DAED091C();
    v229 = v283;
    *v283 = v228;
    v229[1] = v230;
    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08F88, &qword_1DAED84E8);
    sub_1DAE1FABC(v129, v227, v221, v219, (v229 + *(v231 + 44)));

    v232 = v284;
    v233 = sub_1DAED070C();
    LOBYTE(v227) = sub_1DAED004C();
    v234 = v229 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08F90, &qword_1DAED84F0) + 36);
    *v234 = v233;
    v234[8] = v227;
    v235 = (v106 + *(v220 + 48));
    v236 = *v235;
    v237 = v235[1];
    *&v306 = v236;
    *(&v306 + 1) = v237;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08F98, &qword_1DAED84F8);
    sub_1DAED077C();

    v238 = v309;
    v239 = v229 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FA0, &qword_1DAED8500) + 36);
    v240 = *(sub_1DAECF33C() + 20);
    v241 = *MEMORY[0x1E697F468];
    v242 = sub_1DAECF99C();
    (*(*(v242 - 8) + 104))(&v239[v240], v241, v242);
    *v239 = v238;
    *(v239 + 1) = v238;
    v239[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FA8, &qword_1DAED8508) + 36)] = 0;
    KeyPath = swift_getKeyPath();
    v244 = (v229 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FB0, &qword_1DAED8540) + 36));
    v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FB8, &qword_1DAED8548);
    (*(v222 + 32))(v244 + *(v245 + 28), v296, v223);
    *v244 = KeyPath;
    v246 = swift_getKeyPath();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FC0, &qword_1DAED8580);
    v248 = v229 + *(result + 36);
    *v248 = v246;
    v248[8] = 1;
    return result;
  }

  v106 = v292;
  if (v92 == *MEMORY[0x1E6985A78])
  {
    v284 = [v284 blackColor];

    v123 = v287;
    *v287 = 3;
    v124 = v88;
    v125 = v293;
    v126 = v289;
    (*(v293 + 104))(v123, *MEMORY[0x1E6985910], v289);
    v127 = sub_1DAE1C040(v123);
    v128 = v126;
    v129 = v127;
    (*(v125 + 8))(v123, v128);
    v130 = v124;
    goto LABEL_54;
  }

  if (v92 == *MEMORY[0x1E6985A80])
  {
    v284 = [v284 blackColor];

    v137 = v287;
    *v287 = 0;
    v138 = v293;
    v139 = v289;
    (*(v293 + 104))(v137, *MEMORY[0x1E6985910], v289);
    v140 = sub_1DAE1C040(v137);
    v141 = v139;
    v129 = v140;
    (*(v138 + 8))(v137, v141);
    v130 = v296;
    goto LABEL_54;
  }

  (*(v91 + 8))(v270, v90);
LABEL_65:
  result = sub_1DAED273C();
  __break(1u);
  return result;
}

__n128 sub_1DAE1F264@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v29[1] = a2;
  v7 = sub_1DAED17AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v29 - v13;
  v15 = a1 + *(type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0) + 32);
  sub_1DAECF67C();
  (*(v8 + 104))(v12, *MEMORY[0x1E69858D0], v7);
  sub_1DAE2002C(&qword_1ECC08FF0, MEMORY[0x1E69858D8]);
  sub_1DAED1E4C();
  sub_1DAED1E4C();
  v16 = *(v8 + 8);
  v16(v12, v7);
  v16(v14, v7);
  if (v66 == v62)
  {
    v17 = sub_1DAECF8FC();
    v18 = sub_1DAED1B5C();
    v19 = sub_1DAED1B5C();
    LOBYTE(v60[0]) = 1;
    LOBYTE(v52) = 1;
    LOBYTE(v50[0]) = 1;
    v62 = v17;
    LOBYTE(v63) = 1;
    *(&v63 + 1) = 0;
    LOBYTE(v64[0]) = 1;
    *(&v64[0] + 1) = v18;
    v64[1] = v19;
    LOBYTE(v64[2]) = 1;
    sub_1DAE20AD8(&v62);
    v38 = v64[6];
    v39 = v64[7];
    v40 = v65;
    v34 = v64[2];
    v35 = v64[3];
    v36 = v64[4];
    v37 = v64[5];
    v30 = v62;
    v31 = v63;
    v32 = v64[0];
    v33 = v64[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09018, &qword_1DAED85B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09020, &qword_1DAED85B8);
    sub_1DAD64B94(&qword_1ECC09028, &qword_1ECC09018, &qword_1DAED85B0);
    sub_1DAD64B94(&qword_1ECC09030, &qword_1ECC09020, &qword_1DAED85B8);
    sub_1DAECFB1C();
  }

  else
  {
    v20 = sub_1DAECF8FC();
    v21 = sub_1DAED1B5C();
    v22 = sub_1DAED1B5C();
    v23 = sub_1DAED063C();
    sub_1DAED091C();
    sub_1DAECF35C();
    *&v42 = v23;
    v60[4] = v46;
    v60[5] = v47;
    v60[6] = v48;
    v60[2] = v44;
    v60[3] = v45;
    v60[0] = v42;
    v60[1] = v43;
    v50[2] = v44;
    v50[3] = v45;
    v50[0] = v42;
    v50[1] = v43;
    v50[6] = v48;
    v50[4] = v46;
    v50[5] = v47;
    v54 = v44;
    v55 = v45;
    v61 = v49;
    v41 = 0;
    v51 = v49;
    v52 = v42;
    v53 = v43;
    v59 = v49;
    v57 = v47;
    v58 = v48;
    v56 = v46;

    sub_1DAD6495C(&v42, &v66, &qword_1ECC09010, &qword_1DAED85A8);

    sub_1DAD6495C(v50, &v66, &qword_1ECC09010, &qword_1DAED85A8);
    sub_1DAD64398(v60, &qword_1ECC09010, &qword_1DAED85A8);

    *(&v62 + 1) = a4;
    *(&v64[4] + 8) = v56;
    *(&v64[5] + 8) = v57;
    *(&v64[6] + 8) = v58;
    *(v64 + 8) = v52;
    *(&v64[1] + 8) = v53;
    *(&v64[2] + 8) = v54;
    *&v62 = v20;
    LOBYTE(v63) = 0;
    *(&v63 + 1) = v21;
    *&v64[0] = v22;
    *(&v64[7] + 1) = v59;
    *(&v64[3] + 8) = v55;
    sub_1DAE20ACC(&v62);
    v74 = v64[6];
    v75 = v64[7];
    v76 = v65;
    v70 = v64[2];
    v71 = v64[3];
    v72 = v64[4];
    v73 = v64[5];
    v66 = v62;
    v67 = v63;
    v68 = v64[0];
    v69 = v64[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09018, &qword_1DAED85B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09020, &qword_1DAED85B8);
    sub_1DAD64B94(&qword_1ECC09028, &qword_1ECC09018, &qword_1DAED85B0);
    sub_1DAD64B94(&qword_1ECC09030, &qword_1ECC09020, &qword_1DAED85B8);
    sub_1DAECFB1C();
    sub_1DAD64398(&v42, &qword_1ECC09010, &qword_1DAED85A8);

    v74 = v38;
    v75 = v39;
    v76 = v40;
    v70 = v34;
    v71 = v35;
    v72 = v36;
    v73 = v37;
    v66 = v30;
    v67 = v31;
    v68 = v32;
    v69 = v33;
  }

  v24 = v75;
  *(a3 + 128) = v74;
  *(a3 + 144) = v24;
  *(a3 + 160) = v76;
  v25 = v71;
  *(a3 + 64) = v70;
  *(a3 + 80) = v25;
  v26 = v73;
  *(a3 + 96) = v72;
  *(a3 + 112) = v26;
  v27 = v67;
  *a3 = v66;
  *(a3 + 16) = v27;
  result = v69;
  *(a3 + 32) = v68;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_1DAE1F8A8()
{
  sub_1DAE20A70(v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_autoupdatingPreviewView);
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewCollections);

  v2 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_environment;
  v3 = sub_1DAECF8EC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewKind;
  v5 = sub_1DAED1A5C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName + 8);

  v7 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_stateController);
}

id ActivityPreviewHostingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPreviewHostingViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DAE1FABC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v48 = a3;
  v49 = a4;
  v50 = a2;
  v51 = a5;
  v52 = a1;
  v5 = sub_1DAED05EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09048, &qword_1DAED85D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v46[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09050, &qword_1DAED85D8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v46[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46[-v20];
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v22 = sub_1DAECDFDC();

  if (v22)
  {

    v47 = sub_1DAED004C();
    sub_1DAECF06C();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v54 = 0;
    v53 = 0;
    (*(v6 + 104))(v9, *MEMORY[0x1E69814D8], v5);
    sub_1DAED06FC();
    v31 = sub_1DAED067C();

    v32 = sub_1DAED004C();
    v33 = &v14[*(v10 + 36)];
    v34 = *(sub_1DAECF33C() + 20);
    v35 = *MEMORY[0x1E697F468];
    v36 = sub_1DAECF99C();
    (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
    __asm { FMOV            V0.2D, #5.0 }

    *v33 = _Q0;
    *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09060, &qword_1DAED85E8) + 36)] = 256;
    v42 = v49;
    *v14 = v48;
    *(v14 + 1) = v42;
    v14[16] = 0;
    *(v14 + 3) = MEMORY[0x1E69E7CC0];
    v14[32] = v47;
    *(v14 + 5) = v24;
    *(v14 + 6) = v26;
    *(v14 + 7) = v28;
    *(v14 + 8) = v30;
    v14[72] = 0;
    *(v14 + 10) = v31;
    v14[88] = v32;
    sub_1DAD7C48C(v14, v21, &qword_1ECC09048, &qword_1DAED85D0);
    (*(v11 + 56))(v21, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v21, 1, 1, v10);
  }

  sub_1DAD6495C(v21, v19, &qword_1ECC09050, &qword_1DAED85D8);
  v43 = v51;
  *v51 = v52;
  *(v43 + 8) = v50;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09058, &qword_1DAED85E0);
  sub_1DAD6495C(v19, v43 + *(v44 + 48), &qword_1ECC09050, &qword_1DAED85D8);
  swift_retain_n();
  sub_1DAD64398(v21, &qword_1ECC09050, &qword_1DAED85D8);
  sub_1DAD64398(v19, &qword_1ECC09050, &qword_1DAED85D8);
}

uint64_t sub_1DAE1FED4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_1DAE1FF54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE1FFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE2002C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAE200C4()
{
  result = type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(319);
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_1DAECF8EC();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_1DAED1A5C();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1DAE20690()
{
  sub_1DAE20A04(319, &qword_1ECC08F48, MEMORY[0x1E69E6530], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DAE2076C()
{
  sub_1DAE2090C();
  if (v0 <= 0x3F)
  {
    sub_1DAE209A0(319, &qword_1ECC08F68, sub_1DADA657C, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CHSWidgetLocation(319);
      if (v2 <= 0x3F)
      {
        sub_1DAE209A0(319, &qword_1ECC08F70, MEMORY[0x1E6985B08], MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1DAECF8EC();
          if (v4 <= 0x3F)
          {
            sub_1DAED1A5C();
            if (v5 <= 0x3F)
            {
              type metadata accessor for CGSize(319);
              if (v6 <= 0x3F)
              {
                sub_1DAE20A04(319, &qword_1ECC08F78, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
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

void sub_1DAE2090C()
{
  if (!qword_1ECC08F60)
  {
    type metadata accessor for ActivityPreviewHostingViewController.StateController(255);
    sub_1DAE2002C(&qword_1ECC08F18, type metadata accessor for ActivityPreviewHostingViewController.StateController);
    v0 = sub_1DAECF24C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC08F60);
    }
  }
}

void sub_1DAE209A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAE20A04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DAE20A70(uint64_t a1)
{
  v2 = type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAE20AE0()
{
  result = qword_1ECC09070;
  if (!qword_1ECC09070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08FC0, &qword_1DAED8580);
    sub_1DAE20B98();
    sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09070);
  }

  return result;
}

unint64_t sub_1DAE20B98()
{
  result = qword_1ECC09078;
  if (!qword_1ECC09078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08FB0, &qword_1DAED8540);
    sub_1DAE20C50();
    sub_1DAD64B94(&qword_1ECC090B0, &qword_1ECC08FB8, &qword_1DAED8548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09078);
  }

  return result;
}

unint64_t sub_1DAE20C50()
{
  result = qword_1ECC09080;
  if (!qword_1ECC09080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08FA0, &qword_1DAED8500);
    sub_1DAE20D08();
    sub_1DAD64B94(&qword_1EE00AB88, &qword_1ECC08FA8, &qword_1DAED8508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09080);
  }

  return result;
}

unint64_t sub_1DAE20D08()
{
  result = qword_1ECC09088;
  if (!qword_1ECC09088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08F90, &qword_1DAED84F0);
    sub_1DAD64B94(&qword_1ECC09090, &qword_1ECC09098, &qword_1DAED85F8);
    sub_1DAD64B94(&qword_1ECC090A0, &qword_1ECC090A8, &unk_1DAED8600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09088);
  }

  return result;
}

uint64_t sub_1DAE20DEC()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_requiresStrictViewFraming;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAE20E30(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_requiresStrictViewFraming;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1DAE20EE0()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DAE20F2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DAE20FE4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAE21028(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1DAE21114();
}

void (*sub_1DAE2107C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAE210E0;
}

void sub_1DAE210E0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_1DAE21114();
  }
}

void sub_1DAE21114()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize;
  v2 = swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v1) == 1)
  {
    v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))(v2);
  }

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [v4 layer];

  [v6 setMasksToBounds_];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 _setContinuousCornerRadius_];

  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    [v9 setNeedsLayout];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1DAE2132C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id PreviewHostingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PreviewHostingViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_requiresStrictViewFraming) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize) = 1;
  sub_1DAED273C();
  __break(1u);
}

id PreviewHostingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewHostingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t InProcessListItemActivityInstance.__allocating_init(identity:metricsRequest:contentConfiguration:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_1DAE21AC4(a1, a2, a3);

  return v9;
}

uint64_t InProcessListItemActivityInstance.init(identity:metricsRequest:contentConfiguration:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1DAE21AC4(a1, a2, a3);

  return v4;
}

uint64_t sub_1DAE21950()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer33InProcessListItemActivityInstance___observationRegistrar;
  v2 = sub_1DAECDF3C();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t InProcessListItemActivityInstance.deinit()
{
  v0 = InProcessActivityInstanceBase.deinit();
  v1 = OBJC_IVAR____TtC14WidgetRenderer33InProcessListItemActivityInstance___observationRegistrar;
  v2 = sub_1DAECDF3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t InProcessListItemActivityInstance.__deallocating_deinit()
{
  v0 = InProcessActivityInstanceBase.deinit();
  v1 = OBJC_IVAR____TtC14WidgetRenderer33InProcessListItemActivityInstance___observationRegistrar;
  v2 = sub_1DAECDF3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE21AC4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v62 = a3;
  v63 = a1;
  v5 = *v3;
  v53 = a2;
  v54 = v5;
  v6 = sub_1DAECDE4C();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1DAECE83C();
  v12 = *(v60 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DAECEDEC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECDF2C();
  if (qword_1EE005E28 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v15, qword_1EE011718);
  v52 = v16;
  v50 = *(v16 + 16);
  v50(v19, v20, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
  v58 = v15;
  v21 = sub_1DAED182C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v51 = v19;
  v26 = v25;
  *(v25 + 16) = xmmword_1DAED6200;
  (*(v22 + 104))(v25 + v24, *MEMORY[0x1E6985918], v21);
  v27 = v12[2];
  v28 = v60;
  v27(v59, v63, v60);
  v29 = v61;
  sub_1DADEAD64(v62, v61);
  v30 = v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__backgroundTintColor) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__textColor) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) = 0;
  v31 = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___cancellables) = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___activeRequesters) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08658, &qword_1DAED6B20);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher) = sub_1DAECEE7C();
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded) = 0;
  sub_1DAECDF2C();
  v50((v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__logger), v19, v58);
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags) = v26;
  v35 = v59;
  v27((v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity), v59, v28);
  v36 = v53;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_metricsRequest) = v53;
  sub_1DADEAD64(v29, v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration);
  v37 = (v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  *v37 = 0x796D6D7564;
  v37[1] = 0xE500000000000000;
  v64 = v4;
  v38 = v36;
  v39 = sub_1DAED29CC();
  v41 = v40;
  v64 = v54;
  swift_getMetatypeMetadata();
  v64 = sub_1DAED1D4C();
  v65 = v42;
  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  v43 = v55;
  sub_1DAECE81C();
  v44 = sub_1DAECDE3C();
  v46 = v45;
  (*(v56 + 8))(v43, v57);
  MEMORY[0x1E127DA50](v44, v46);

  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  MEMORY[0x1E127DA50](v39, v41);

  sub_1DADEC6F8(v64, v65);
  sub_1DADEAF80(v62);
  v47 = v12[1];
  v48 = v60;
  v47(v63, v60);
  sub_1DADEAF80(v61);
  v47(v35, v48);
  (*(v52 + 8))(v51, v58);
  return v4;
}

unint64_t sub_1DAE220E0()
{
  result = qword_1ECC090E0;
  if (!qword_1ECC090E0)
  {
    type metadata accessor for InProcessListItemActivityInstance();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC090E0);
  }

  return result;
}

uint64_t type metadata accessor for InProcessListItemActivityInstance()
{
  result = qword_1ECC090E8;
  if (!qword_1ECC090E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE2218C()
{
  result = sub_1DAECDF3C();
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

uint64_t sub_1DAE22248@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v167 = a4;
  v159 = sub_1DAED0B1C();
  v158 = *(v159 - 8);
  v7 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1DAECE7BC();
  v168 = *(v170 - 8);
  v9 = *(v168 + 64);
  v10 = MEMORY[0x1EEE9AC00](v170);
  v164 = (&v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v160 = &v150 - v12;
  v174 = sub_1DAECDBFC();
  v172 = *(v174 - 8);
  v13 = *(v172 + 64);
  v14 = MEMORY[0x1EEE9AC00](v174);
  v154 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v150 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v171 = &v150 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v150 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v150 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v150 - v32;
  v34 = sub_1DAECDE4C();
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v163 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = *a2;
  v165 = v39;
  v40 = *(v39 + 16);
  v169 = &v150 - v41;
  v166 = v42;
  v162 = v39 + 16;
  v161 = v40;
  v40();
  v173 = v33;
  sub_1DAD6495C(a3, v33, &unk_1ECC09EC0, &qword_1DAED7970);
  if ((sub_1DAED181C() & 1) != 0 && !v38)
  {
    sub_1DAE62330(v23);
    v43 = sub_1DAED1BEC();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v23, 1, v43) == 1)
    {
      v45 = v173;
      sub_1DAD64398(v173, &unk_1ECC09EC0, &qword_1DAED7970);
      sub_1DAD64398(v23, &qword_1ECC08D70, &unk_1DAED8710);
      (*(v172 + 56))(v31, 1, 1, v174);
    }

    else
    {
      sub_1DAED1B4C();
      v45 = v173;
      sub_1DAD64398(v173, &unk_1ECC09EC0, &qword_1DAED7970);
      (*(v44 + 8))(v23, v43);
    }

    sub_1DAE23E30(v31, v45);
  }

  v46 = v173;
  sub_1DAD6495C(v173, v28, &unk_1ECC09EC0, &qword_1DAED7970);
  v47 = v172;
  v48 = v174;
  if ((*(v172 + 48))(v28, 1, v174) == 1)
  {
    sub_1DAD64398(v28, &unk_1ECC09EC0, &qword_1DAED7970);
    v50 = v169;
    v49 = v170;
    if (qword_1EE005E70 != -1)
    {
      swift_once();
    }

    v51 = sub_1DAECEDEC();
    __swift_project_value_buffer(v51, qword_1EE011790);

    v52 = sub_1DAECEDCC();
    v53 = sub_1DAED203C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v178 = v55;
      *v54 = 136446210;
      *(v54 + 4) = sub_1DAD6482C(*(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v178);
      _os_log_impl(&dword_1DAD61000, v52, v53, "[%{public}s] Open application from tap requested.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1E127F100](v55, -1, -1);
      MEMORY[0x1E127F100](v54, -1, -1);
    }

    v56 = sub_1DAECE7AC();
    v57 = sub_1DAE238B8(a1);
    if (v57)
    {
      v58 = v57;

      v59 = sub_1DAECEDCC();
      v60 = sub_1DAED203C();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v178 = v62;
        *v61 = 136446210;
        *(v61 + 4) = sub_1DAD6482C(*(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v178);
        _os_log_impl(&dword_1DAD61000, v59, v60, "[%{public}s] Handled with event publisher.", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        MEMORY[0x1E127F100](v62, -1, -1);
        MEMORY[0x1E127F100](v61, -1, -1);
      }

      [v58 publishOpenEventWithUserActivity_];
      [v58 deactivate];

      sub_1DAD64398(v46, &unk_1ECC09EC0, &qword_1DAED7970);
      (*(v165 + 8))(v50, v166);
      goto LABEL_27;
    }

    v89 = v164;
    *v164 = v56;
    (*(v168 + 104))(v89, *MEMORY[0x1E6989B90], v49);
    v90 = v166;
    (v161)(v163, v50, v166);
    v88 = v167;
    sub_1DAECE7CC();
    sub_1DAD64398(v46, &unk_1ECC09EC0, &qword_1DAED7970);
    (*(v165 + 8))(v50, v90);
LABEL_66:
    v87 = 0;
    goto LABEL_67;
  }

  v63 = v171;
  (*(v47 + 32))(v171, v28, v48);
  if (qword_1EE005E70 != -1)
  {
    swift_once();
  }

  v64 = sub_1DAECEDEC();
  v65 = __swift_project_value_buffer(v64, qword_1EE011790);
  v156 = *(v47 + 16);
  v156(v18, v63, v48);

  v153 = v65;
  v66 = sub_1DAECEDCC();
  v67 = sub_1DAED203C();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v178 = v69;
    *v68 = 136446467;
    *(v68 + 4) = sub_1DAD6482C(*(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v178);
    *(v68 + 12) = 2085;
    sub_1DAE23DD8();
    v70 = sub_1DAED287C();
    v72 = v71;
    v155 = *(v47 + 8);
    v155(v18, v174);
    v73 = sub_1DAD6482C(v70, v72, &v178);
    v63 = v171;

    *(v68 + 14) = v73;
    _os_log_impl(&dword_1DAD61000, v66, v67, "[%{public}s] Open application from openURL requested: %{sensitive}s", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v69, -1, -1);
    v74 = v68;
    v48 = v174;
    MEMORY[0x1E127F100](v74, -1, -1);
  }

  else
  {

    v155 = *(v47 + 8);
    v155(v18, v48);
  }

  v75 = v169;
  v76 = sub_1DAE238B8(a1);
  v77 = v160;
  if (!v76)
  {
LABEL_30:
    v156(v77, v63, v48);
    v91 = *MEMORY[0x1E6989B88];
    v92 = *(v168 + 104);
    v152 = v168 + 104;
    v151 = v92;
    v92(v77, v91, v170);
    v93 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
    swift_beginAccess();
    sub_1DAD6495C(a1 + v93, &v178, &qword_1ECC090F8, &unk_1DAED8720);
    if (v179)
    {
      v94 = __swift_project_boxed_opaque_existential_1(&v178, v179);
      v95 = *v94;
      sub_1DAD648F8(*v94 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client, v175);
      v96 = v177;
      __swift_project_boxed_opaque_existential_1(v175, v176);
      v97 = *(v95 + 16);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      v99 = v157;
      MEMORY[0x1E127CAC0](v98);
      v100 = sub_1DAED0AEC();
      (*(v158 + 8))(v99, v159);
      v101 = *(v96 + 16);
      v117 = sub_1DAED132C();

      __swift_destroy_boxed_opaque_existential_1Tm(v175);
      if (v117)
      {
        v118 = [v117 entitlements];

        v75 = v169;
        if (v118)
        {
          v119 = [v118 canOpenSystemURLs];

          __swift_destroy_boxed_opaque_existential_1Tm(&v178);
          if (v119)
          {
            v120 = v154;
            sub_1DAED148C();
            v121 = sub_1DAECDBAC();
            v155(v120, v174);
            if (v121)
            {

              v122 = sub_1DAECEDCC();
              v123 = sub_1DAED203C();

              if (os_log_type_enabled(v122, v123))
              {
                v124 = swift_slowAlloc();
                v125 = swift_slowAlloc();
                v178 = v125;
                *v124 = 136446210;
                *(v124 + 4) = sub_1DAD6482C(*(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v178);
                _os_log_impl(&dword_1DAD61000, v122, v123, "[%{public}s] Open URL ignored for no-op URL.", v124, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v125);
                MEMORY[0x1E127F100](v125, -1, -1);
                MEMORY[0x1E127F100](v124, -1, -1);
              }

              (*(v168 + 8))(v77, v170);
              v155(v171, v174);
              goto LABEL_26;
            }
          }

LABEL_35:
          sub_1DAECDE1C();
          if (v102)
          {

            v103 = v171;
            sub_1DAECDBDC();
            v104 = v174;
            if (v105)
            {
              v106 = sub_1DAED1D5C();
              v108 = v107;

              if (v106 == 1886680168 && v108 == 0xE400000000000000)
              {

                v103 = v171;
              }

              else
              {
                v126 = sub_1DAED289C();
                v103 = v171;
                if ((v126 & 1) != 0 || v106 == 0x7370747468 && v108 == 0xE500000000000000)
                {
                }

                else
                {
                  v149 = sub_1DAED289C();

                  if ((v149 & 1) == 0)
                  {
                    goto LABEL_65;
                  }
                }
              }

              v127 = sub_1DAECEDCC();
              v128 = sub_1DAED203C();

              if (!os_log_type_enabled(v127, v128))
              {
                goto LABEL_64;
              }

              v129 = swift_slowAlloc();
              v130 = swift_slowAlloc();
              v178 = v130;
              *v129 = 136446210;
              *(v129 + 4) = sub_1DAD6482C(*(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v178);
              v131 = "[%{public}s] Remote launch http/https launch request.";
              goto LABEL_63;
            }

LABEL_65:
            v141 = v168;
            v142 = v170;
            (*(v168 + 16))(v164, v77, v170);
            v143 = v166;
            (v161)(v163, v75, v166);
            v88 = v167;
            sub_1DAECE7CC();
            (*(v141 + 8))(v77, v142);
            v155(v103, v104);
            sub_1DAD64398(v173, &unk_1ECC09EC0, &qword_1DAED7970);
            (*(v165 + 8))(v75, v143);
            goto LABEL_66;
          }

          sub_1DAD6495C(a1 + v93, &v178, &qword_1ECC090F8, &unk_1DAED8720);
          if (v179)
          {
            v109 = __swift_project_boxed_opaque_existential_1(&v178, v179);
            v110 = *v109;
            sub_1DAD648F8(*v109 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client, v175);
            v111 = v177;
            __swift_project_boxed_opaque_existential_1(v175, v176);
            v112 = *(v110 + 16);
            v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
            v114 = v157;
            MEMORY[0x1E127CAC0](v113);
            v115 = sub_1DAED0AEC();
            (*(v158 + 8))(v114, v159);
            v116 = *(v111 + 16);
            v146 = sub_1DAED132C();

            __swift_destroy_boxed_opaque_existential_1Tm(v175);
            v75 = v169;
            v104 = v174;
            v103 = v171;
            if (v146 && (v147 = [v146 entitlements], v146, v147))
            {
              v148 = [v147 canOpenSystemURLs];

              __swift_destroy_boxed_opaque_existential_1Tm(&v178);
              if (v148)
              {
                goto LABEL_61;
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1Tm(&v178);
            }
          }

          else
          {
            sub_1DAD64398(&v178, &qword_1ECC090F8, &unk_1DAED8720);
            v104 = v174;
            v103 = v171;
          }

          v132 = sub_1DAECDB7C();
          v134 = v133;
          v135 = *MEMORY[0x1E6994208];
          if (v132 == sub_1DAED1CEC() && v134 == v136)
          {
          }

          else
          {
            v137 = sub_1DAED289C();

            if ((v137 & 1) == 0)
            {
              goto LABEL_65;
            }
          }

LABEL_61:

          v127 = sub_1DAECEDCC();
          v128 = sub_1DAED203C();

          if (!os_log_type_enabled(v127, v128))
          {
LABEL_64:

            v139 = v170;
            (*(v168 + 8))(v77, v170);
            v140 = v151;
            v156(v77, v103, v104);
            v140(v77, *MEMORY[0x1E6989B78], v139);
            goto LABEL_65;
          }

          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v178 = v130;
          *v129 = 136446210;
          *(v129 + 4) = sub_1DAD6482C(*(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v178);
          v131 = "[%{public}s] Entitled url launch (can open system URLs) requested.";
LABEL_63:
          _os_log_impl(&dword_1DAD61000, v127, v128, v131, v129, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v130);
          v138 = v130;
          v103 = v171;
          MEMORY[0x1E127F100](v138, -1, -1);
          MEMORY[0x1E127F100](v129, -1, -1);
          goto LABEL_64;
        }
      }

      else
      {
        v75 = v169;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v178);
      goto LABEL_35;
    }

    sub_1DAD64398(&v178, &qword_1ECC090F8, &unk_1DAED8720);
    goto LABEL_35;
  }

  v78 = v76;
  sub_1DAECDE1C();
  v79 = sub_1DAECDE8C();

  if ((v79 & 1) == 0)
  {

    goto LABEL_30;
  }

  v80 = sub_1DAECEDCC();
  v81 = sub_1DAED203C();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v178 = v83;
    *v82 = 136446210;
    *(v82 + 4) = sub_1DAD6482C(*(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v178);
    _os_log_impl(&dword_1DAD61000, v80, v81, "[%{public}s] Handled with event publisher.", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    v84 = v83;
    v48 = v174;
    MEMORY[0x1E127F100](v84, -1, -1);
    v85 = v82;
    v63 = v171;
    MEMORY[0x1E127F100](v85, -1, -1);
  }

  v86 = sub_1DAECDB8C();
  [v78 publishOpenEventWithURL_];

  [v78 deactivate];
  v155(v63, v48);
LABEL_26:
  sub_1DAD64398(v173, &unk_1ECC09EC0, &qword_1DAED7970);
  (*(v165 + 8))(v75, v166);
LABEL_27:
  v87 = 1;
  v88 = v167;
LABEL_67:
  v144 = sub_1DAECE7EC();
  return (*(*(v144 - 8) + 56))(v88, v87, 1, v144);
}

id sub_1DAE238B8(uint64_t a1)
{
  v2 = sub_1DAED0B1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
  swift_beginAccess();
  sub_1DAD6495C(a1 + v7, &v42, &qword_1ECC090F8, &unk_1DAED8720);
  if (v43)
  {
    sub_1DAD657D8(&v42, v45);
    v8 = *(*__swift_project_boxed_opaque_existential_1(v45, v46) + 24);
    if (v8)
    {
      v9 = v8;
      v10 = [v9 eventMachServiceName];
      if (v10)
      {
        v11 = v10;
        v39 = v9;
        v12 = __swift_project_boxed_opaque_existential_1(v45, v46);
        v13 = *v12;
        sub_1DAD648F8(*v12 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client, &v42);
        v14 = v44;
        __swift_project_boxed_opaque_existential_1(&v42, v43);
        v15 = *(v13 + 16);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
        MEMORY[0x1E127CAC0]();
        v16 = sub_1DAED0AEC();
        v17 = *(v3 + 8);
        v17(v6, v2);
        v18 = *(v14 + 16);
        v19 = sub_1DAED132C();

        __swift_destroy_boxed_opaque_existential_1Tm(&v42);
        if (v19)
        {
          v20 = [v19 entitlements];

          if (v20)
          {
            v21 = [v20 usesEventService];

            if (v21)
            {
              v22 = [objc_allocWithZone(MEMORY[0x1E69943A8]) initWithMachServiceName_];

              __swift_destroy_boxed_opaque_existential_1Tm(v45);
              return v22;
            }
          }
        }

        if (qword_1EE005E70 != -1)
        {
          swift_once();
        }

        v24 = sub_1DAECEDEC();
        __swift_project_value_buffer(v24, qword_1EE011790);
        sub_1DAD648F8(v45, &v42);
        sub_1DAD648F8(v45, v41);
        v25 = sub_1DAECEDCC();
        v26 = sub_1DAED201C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v37 = v17;
          v29 = v28;
          v30 = swift_slowAlloc();
          v40 = v30;
          *v27 = 136446466;
          v31 = (*__swift_project_boxed_opaque_existential_1(&v42, v43) + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
          v32 = *v31;
          v33 = v31[1];

          __swift_destroy_boxed_opaque_existential_1Tm(&v42);
          v34 = sub_1DAD6482C(v32, v33, &v40);

          *(v27 + 4) = v34;
          *(v27 + 12) = 2114;
          v35 = *(*__swift_project_boxed_opaque_existential_1(v41, v41[3]) + 16);

          MEMORY[0x1E127CAC0](v38);
          v36 = sub_1DAED0AEC();

          v37(v6, v2);
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
          *(v27 + 14) = v36;
          *v29 = v36;
          _os_log_impl(&dword_1DAD61000, v25, v26, "[%{public}s] missing entitlement for event service: %{public}@", v27, 0x16u);
          sub_1DAD64398(v29, &qword_1ECC07CF0, &qword_1DAED57A0);
          MEMORY[0x1E127F100](v29, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          MEMORY[0x1E127F100](v30, -1, -1);
          MEMORY[0x1E127F100](v27, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v42);
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
        }
      }

      else
      {
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  else
  {
    sub_1DAD64398(&v42, &qword_1ECC090F8, &unk_1DAED8720);
  }

  return 0;
}

unint64_t sub_1DAE23DD8()
{
  result = qword_1EE00BD10;
  if (!qword_1EE00BD10)
  {
    sub_1DAECDBFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BD10);
  }

  return result;
}

uint64_t sub_1DAE23E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WidgetViewClippingModifier.init(metrics:clip:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t WidgetViewClippingModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DAECF33C();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  v11 = *(v2 + 8);
  [v10 _effectiveCornerRadius];
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = *(v6 + 28);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1DAECF99C();
  (*(*(v16 - 8) + 104))(v9 + v14, v15, v16);
  *v9 = v13;
  v9[1] = v13;
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09100, &unk_1DAED8760) + 36);
  sub_1DADB1A4C(v9, v17);
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FA8, &qword_1DAED8508) + 36)) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09108, &qword_1DAED8770);
  (*(*(v18 - 8) + 16))(a2, a1, v18);
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09110, &qword_1DAED8778) + 36);
  sub_1DAED169C();
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09118, &unk_1DAED8780) + 36);
  sub_1DADB1AB0(v9, v20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09060, &qword_1DAED85E8);
  *(v20 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1DAE24100(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1DAE24148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAE241A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DAE24204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DAE24280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09150, &qword_1DAED89E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09158, &qword_1DAED89E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  if (a3)
  {
    v16[0] = a2;
    v16[1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09160, &qword_1DAED89F0);
    sub_1DAE24C34(&qword_1EE0058D8, &qword_1ECC09160, &qword_1DAED89F0);
    sub_1DADE6330();
    sub_1DAED04EC();
    sub_1DAD6495C(v13, v9, &qword_1ECC09158, &qword_1DAED89E8);
    swift_storeEnumTagMultiPayload();
    sub_1DAE24B90();
    sub_1DAECFB1C();
    return sub_1DAD64398(v13, &qword_1ECC09158, &qword_1DAED89E8);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09160, &qword_1DAED89F0);
    (*(*(v15 - 8) + 16))(v9, a1, v15);
    swift_storeEnumTagMultiPayload();
    sub_1DAE24B90();
    sub_1DAE24C34(&qword_1EE0058D8, &qword_1ECC09160, &qword_1DAED89F0);
    return sub_1DAECFB1C();
  }
}

uint64_t sub_1DAE24508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09138, &qword_1DAED89C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09140, &qword_1DAED89D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  if (a3)
  {
    v16[0] = a2;
    v16[1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09148, &qword_1DAED89D8);
    sub_1DAE24C34(&qword_1EE0058D0, &qword_1ECC09148, &qword_1DAED89D8);
    sub_1DADE6330();
    sub_1DAED04FC();
    sub_1DAD6495C(v13, v9, &qword_1ECC09140, &qword_1DAED89D0);
    swift_storeEnumTagMultiPayload();
    sub_1DAE24AEC();
    sub_1DAECFB1C();
    return sub_1DAD64398(v13, &qword_1ECC09140, &qword_1DAED89D0);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09148, &qword_1DAED89D8);
    (*(*(v15 - 8) + 16))(v9, a1, v15);
    swift_storeEnumTagMultiPayload();
    sub_1DAE24AEC();
    sub_1DAE24C34(&qword_1EE0058D0, &qword_1ECC09148, &qword_1DAED89D8);
    return sub_1DAECFB1C();
  }
}

uint64_t sub_1DAE24790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09120, &qword_1DAED89B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09128, &qword_1DAED89B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  if (a2)
  {
    v16[1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09130, &qword_1DAED89C0);
    sub_1DAE24C34(&qword_1EE0058C8, &qword_1ECC09130, &qword_1DAED89C0);
    sub_1DAED053C();
    sub_1DAD6495C(v13, v9, &qword_1ECC09128, &qword_1DAED89B8);
    swift_storeEnumTagMultiPayload();
    sub_1DAE249F0();
    sub_1DAECFB1C();
    return sub_1DAD64398(v13, &qword_1ECC09128, &qword_1DAED89B8);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09130, &qword_1DAED89C0);
    (*(*(v15 - 8) + 16))(v9, a1, v15);
    swift_storeEnumTagMultiPayload();
    sub_1DAE249F0();
    sub_1DAE24C34(&qword_1EE0058C8, &qword_1ECC09130, &qword_1DAED89C0);
    return sub_1DAECFB1C();
  }
}

unint64_t sub_1DAE249F0()
{
  result = qword_1EE005AB0;
  if (!qword_1EE005AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09128, &qword_1DAED89B8);
    sub_1DAE24C34(&qword_1EE0058C8, &qword_1ECC09130, &qword_1DAED89C0);
    sub_1DAE24A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AB0);
  }

  return result;
}

unint64_t sub_1DAE24A94()
{
  result = qword_1EE005860;
  if (!qword_1EE005860)
  {
    sub_1DAECFFAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005860);
  }

  return result;
}

unint64_t sub_1DAE24AEC()
{
  result = qword_1EE005AB8;
  if (!qword_1EE005AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09140, &qword_1DAED89D0);
    sub_1DAE24C34(&qword_1EE0058D0, &qword_1ECC09148, &qword_1DAED89D8);
    sub_1DAE24A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AB8);
  }

  return result;
}

unint64_t sub_1DAE24B90()
{
  result = qword_1EE005AC0;
  if (!qword_1EE005AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09158, &qword_1DAED89E8);
    sub_1DAE24C34(&qword_1EE0058D8, &qword_1ECC09160, &qword_1DAED89F0);
    sub_1DAE24A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AC0);
  }

  return result;
}

uint64_t sub_1DAE24C34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1DAE24C88()
{
  result = qword_1EE005990;
  if (!qword_1EE005990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09168, &qword_1DAED89F8);
    sub_1DAE249F0();
    sub_1DAE24C34(&qword_1EE0058C8, &qword_1ECC09130, &qword_1DAED89C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005990);
  }

  return result;
}

unint64_t sub_1DAE24D2C()
{
  result = qword_1EE005998;
  if (!qword_1EE005998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09170, &qword_1DAED8A00);
    sub_1DAE24AEC();
    sub_1DAE24C34(&qword_1EE0058D0, &qword_1ECC09148, &qword_1DAED89D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005998);
  }

  return result;
}

unint64_t sub_1DAE24DD0()
{
  result = qword_1EE0059A0;
  if (!qword_1EE0059A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09178, &qword_1DAED8A08);
    sub_1DAE24B90();
    sub_1DAE24C34(&qword_1EE0058D8, &qword_1ECC09160, &qword_1DAED89F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0059A0);
  }

  return result;
}

uint64_t RBImageSnapshotter.RBImageOptions.colorMode.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t RBImageSnapshotter.RBImageOptions.scale.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t RBImageSnapshotter.RBImageOptions.format.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RBImageSnapshotter.RBImageOptions(0) + 24);
  v4 = sub_1DAECDFCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RBImageSnapshotter.RBImageOptions.format.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RBImageSnapshotter.RBImageOptions(0) + 24);
  v4 = sub_1DAECDFCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RBImageSnapshotter.RBImageOptions.init(colorMode:scale:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 4) = BYTE4(a1) & 1;
  *(a4 + 8) = a2;
  *(a4 + 12) = BYTE4(a2) & 1;
  v6 = *(type metadata accessor for RBImageSnapshotter.RBImageOptions(0) + 24);
  v7 = sub_1DAECDFCC();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a3, v7);
}

uint64_t sub_1DAE250FC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC8];
  if ((v0[1] & 1) == 0)
  {
    v3 = *MEMORY[0x1E69C71C8];
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    v15 = sub_1DAE25DA0();
    *&v14 = v4;
    sub_1DADDC968(&v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DADDAF4C(v13, v3, isUniquelyReferenced_nonNull_native);
  }

  if ((v1[3] & 1) == 0)
  {
    v6 = v1[2];
    v7 = *MEMORY[0x1E69C71D0];
    v8 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v9) = v6;
    v10 = [v8 initWithFloat_];
    v15 = sub_1DAE25DA0();
    *&v14 = v10;
    sub_1DADDC968(&v14, v13);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DADDAF4C(v13, v7, v11);
  }

  return v2;
}

void sub_1DAE25254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v30 = a3;
  v27 = a2;
  v7 = sub_1DAECDBFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = type metadata accessor for RBImageSnapshotter(0);
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09180, &qword_1DAEDBB90) + 44));
  [v13 size];
  v15 = v14;
  v17 = v16;
  sub_1DAE250FC();
  type metadata accessor for RBLayerCopyImageKey(0);
  sub_1DAE25D58(&unk_1EE0055D8, type metadata accessor for RBLayerCopyImageKey);
  v18 = sub_1DAED1C0C();

  sub_1DAE25CF0(v5, v12, type metadata accessor for RBImageSnapshotter);
  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v7);
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = (v11 + *(v8 + 80) + v19) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_1DAE25B34(v12, v21 + v19);
  (*(v8 + 32))(v21 + v20, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v22 = (v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  aBlock[4] = sub_1DAE25B98;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAE25990;
  aBlock[3] = &block_descriptor_10;
  v24 = _Block_copy(aBlock);

  [v13 copyImageInRect:v18 options:v30 completionQueue:v24 handler:{0.0, 0.0, v15, v17}];
  _Block_release(v24);
}

void sub_1DAE255A8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v18[-v10];
  if (a1)
  {
    sub_1DAE25CF0(a2, &v18[-v10], type metadata accessor for RBImageSnapshotter.RBImageOptions);
    v12 = *(v7 + 24);
    v13 = a1;
    sub_1DAE25770(v13);
    v17 = sub_1DAECDFCC();
    (*(*(v17 - 8) + 8))(&v11[v12], v17);
    a4(0);
  }

  else
  {
    sub_1DAE25C9C();
    v14 = swift_allocError();
    *v15 = 0;
    v15[1] = 0;
    swift_willThrow();
    v16 = v14;
    a4(v14);
  }
}

void sub_1DAE25770(CGImage *a1)
{
  v2 = sub_1DAECDB8C();
  v3 = CGDataConsumerCreateWithURL(v2);

  if (v3)
  {
    sub_1DAECDFBC();
    v4 = sub_1DAED1CBC();

    v5 = CGImageDestinationCreateWithDataConsumer(v3, v4, 1uLL, 0);

    if (v5)
    {
      if (sub_1DAECDF8C())
      {
        type metadata accessor for CFString(0);
        sub_1DAE25D58(&qword_1EE005670, type metadata accessor for CFString);
        v6 = sub_1DAED1C0C();
      }

      else
      {
        v6 = 0;
      }

      CGImageDestinationAddImage(v5, a1, v6);

      if (!CGImageDestinationFinalize(v5))
      {
        sub_1DAE25C9C();
        swift_allocError();
        *v9 = xmmword_1DAED8A10;
        swift_willThrow();
      }
    }

    else
    {
      sub_1DAE25C9C();
      swift_allocError();
      *v8 = 0xD000000000000023;
      v8[1] = 0x80000001DAEE2F60;
      swift_willThrow();
    }
  }

  else
  {
    sub_1DAE25C9C();
    swift_allocError();
    *v7 = 0xD00000000000001FLL;
    v7[1] = 0x80000001DAEE2F40;
    swift_willThrow();
  }
}

void sub_1DAE25990(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1DAE259FC()
{
  v1 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAE25CF0(v0, v5, type metadata accessor for RBImageSnapshotter.RBImageOptions);
  v6 = *(v2 + 32);
  v7 = sub_1DAECDFBC();
  v8 = sub_1DAECDFCC();
  (*(*(v8 - 8) + 8))(&v5[v6], v8);
  return v7;
}

uint64_t sub_1DAE25B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RBImageSnapshotter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DAE25B98(void *a1)
{
  v3 = *(type metadata accessor for RBImageSnapshotter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DAECDBFC() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1DAE255A8(a1, v1 + v4, v1 + v7, v9);
}

unint64_t sub_1DAE25C9C()
{
  result = qword_1ECC09188;
  if (!qword_1ECC09188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09188);
  }

  return result;
}

uint64_t sub_1DAE25CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAE25D58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DAE25DA0()
{
  result = qword_1EE005470;
  if (!qword_1EE005470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE005470);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14WidgetRenderer18RBImageSnapshotterV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAE25E04(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DAE25E58(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1DAE25EB4(void *result, int a2)
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

uint64_t sub_1DAE25F98()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1DAE25FB8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE26158()
{
  v1 = *(*(*v0 + 120) + 16);
  v2 = *(*v0 + 112);
  v3 = v0 + *(*v0 + 128);
  return v1(v2);
}

uint64_t sub_1DAE261CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(*v5 + 120) + 24);
  v7 = *(*v5 + 112);
  v8 = v5 + *(*v5 + 128);
  return v6(a1, a2, a3, a4, a5, v7);
}

uint64_t sub_1DAE26298()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 128));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE26344()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091A0, &qword_1DAED8D38);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1DAED8CA0;
  v3 = *MEMORY[0x1E6979640];
  if (!*MEMORY[0x1E6979640])
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  *(result + 32) = v3;
  v5 = *v1;
  *(result + 64) = MEMORY[0x1E69E6370];
  *(result + 40) = v5;
  v6 = *MEMORY[0x1E6979630];
  if (!*MEMORY[0x1E6979630])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(result + 72) = v6;
  v7 = *(type metadata accessor for CAMLSnapshotter.CAMLOptions(0) + 20);
  v8 = v6;
  v9 = v3;
  result = sub_1DAECDFBC();
  *(v4 + 104) = MEMORY[0x1E69E6158];
  *(v4 + 80) = result;
  *(v4 + 88) = v10;
  v11 = *MEMORY[0x1E6979638];
  if (!*MEMORY[0x1E6979638])
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(v4 + 112) = v11;
  v12 = v11;
  v13 = sub_1DAECDF8C();
  if (v13)
  {
    v14 = v13;
    *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091B0, &qword_1DAED8D40);
    *&v17 = v14;
    sub_1DADDC968(&v17, (v4 + 120));
  }

  else
  {
    v18 = 0u;
    v15 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v4 + 144) = sub_1DAE26910();
    *(v4 + 120) = v15;
    if (*(&v18 + 1))
    {
      sub_1DAE2695C(&v17);
    }
  }

  sub_1DADDC978(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080E8, &qword_1DAED6270);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_1DAE269C4();
  v16 = sub_1DAED1C0C();

  return v16;
}

uint64_t sub_1DAE26530()
{
  sub_1DAED294C();
  MEMORY[0x1E127E5D0](0);
  return sub_1DAED297C();
}

uint64_t sub_1DAE2659C()
{
  sub_1DAED294C();
  MEMORY[0x1E127E5D0](0);
  return sub_1DAED297C();
}

uint64_t sub_1DAE265DC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DAE26618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 activateBackground_];
  v7 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09190, &qword_1DAED8D30) + 44));
  sub_1DAECDBCC();
  v8 = sub_1DAED1CBC();

  [v8 fileSystemRepresentation];
  v9 = v8;
  CAEncodeLayerTreeToFile();
  [v6 commit];
  return a4(0);
}

uint64_t sub_1DAE26728(uint64_t a1, int a2)
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

uint64_t sub_1DAE26770(uint64_t result, int a2, int a3)
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

void sub_1DAE267AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09190, &qword_1DAED8D30) + 44));
  sub_1DAECDBCC();
  v6 = sub_1DAED1CBC();

  v7 = v3 + *(type metadata accessor for CAMLSnapshotter(0) + 20);
  v8 = sub_1DAE26344();
  v9 = CAMLEncodeLayerTreeToPathWithOptions();

  if (v9)
  {
    (a3)(0);
  }

  else
  {
    sub_1DAE268BC();
    v10 = swift_allocError();
    a3();
  }
}

unint64_t sub_1DAE268BC()
{
  result = qword_1ECC09198;
  if (!qword_1ECC09198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09198);
  }

  return result;
}

unint64_t sub_1DAE26910()
{
  result = qword_1ECC091A8;
  if (!qword_1ECC091A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC091A8);
  }

  return result;
}

uint64_t sub_1DAE2695C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A3A0, &qword_1DAEDFE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAE269C4()
{
  result = qword_1EE005670;
  if (!qword_1EE005670)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005670);
  }

  return result;
}

unint64_t sub_1DAE26A34()
{
  result = qword_1ECC091B8;
  if (!qword_1ECC091B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC091B8);
  }

  return result;
}

uint64_t sub_1DAE26A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAECFB0C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1DAECFB1C();
}

uint64_t sub_1DAE26B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DAECFB0C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1DAECFB1C();
}

uint64_t sub_1DAE26CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1DAECF1CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  return a5(v10);
}

uint64_t WidgetURLSource.hashValue.getter()
{
  v1 = *v0;
  sub_1DAED294C();
  MEMORY[0x1E127E5D0](v1);
  return sub_1DAED297C();
}

uint64_t sub_1DAE26E2C()
{
  v1 = *v0;
  sub_1DAED294C();
  MEMORY[0x1E127E5D0](v1);
  return sub_1DAED297C();
}

uint64_t sub_1DAE26EA0()
{
  v1 = *v0;
  sub_1DAED294C();
  MEMORY[0x1E127E5D0](v1);
  return sub_1DAED297C();
}

uint64_t View.onSystemURLInvoked(enabled:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a2;
  v41 = a3;
  v44 = a1;
  v48 = a6;
  v43 = *(a4 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  v14 = type metadata accessor for SystemURLActionViewModifier(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DAECF2AC();
  v42 = *(v18 - 8);
  v19 = *(v42 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v39 - v23;
  v25 = sub_1DAECFB2C();
  v46 = *(v25 - 8);
  v47 = v25;
  v26 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v39 - v27;
  if (v44)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = v40;
    *(v29 + 24) = v41;

    sub_1DAECF1BC();
    MEMORY[0x1E127C210](v17, a4, v14, a5);
    sub_1DAE27E1C(v17, type metadata accessor for SystemURLActionViewModifier);
    v30 = sub_1DADB17F4(&qword_1EE00BF18, type metadata accessor for SystemURLActionViewModifier);
    v49 = a5;
    v50 = v30;
    WitnessTable = swift_getWitnessTable();
    sub_1DADB6258(v22, v18, WitnessTable);
    v32 = *(v42 + 8);
    v32(v22, v18);
    sub_1DADB6258(v24, v18, WitnessTable);
    sub_1DAE26A88(v22, v18);
    v32(v22, v18);
    v32(v24, v18);
  }

  else
  {
    sub_1DADB6258(v45, a4, a5);
    sub_1DADB6258(v13, a4, a5);
    v33 = sub_1DADB17F4(&qword_1EE00BF18, type metadata accessor for SystemURLActionViewModifier);
    v55 = a5;
    v56 = v33;
    swift_getWitnessTable();
    sub_1DAE26B80(v11, v18, a4);
    v34 = *(v43 + 8);
    v34(v11, a4);
    v34(v13, a4);
  }

  v35 = sub_1DADB17F4(&qword_1EE00BF18, type metadata accessor for SystemURLActionViewModifier);
  v53 = a5;
  v54 = v35;
  v51 = swift_getWitnessTable();
  v52 = a5;
  v36 = v47;
  v37 = swift_getWitnessTable();
  sub_1DADB6258(v28, v36, v37);
  return (*(v46 + 8))(v28, v36);
}

uint64_t sub_1DAE27420(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = v4();
  return a2(v6 & 1);
}

uint64_t View.onWidgetLaunch(enabled:launchHandler:touchDownHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v39 = a2;
  v43 = a1;
  v47 = a8;
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  v17 = sub_1DAECF2AC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v39 - v23;
  v25 = sub_1DAECFB2C();
  v45 = *(v25 - 8);
  v46 = v25;
  v26 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v39 - v27;
  if (v43)
  {
    KeyPath = swift_getKeyPath();
    v50[0] = v39;
    v50[1] = v40;
    v50[2] = v41;
    v50[3] = v42;
    v50[4] = KeyPath;
    v51 = 0;
    MEMORY[0x1E127C210](v50, a6, &type metadata for WidgetLaunchViewModifier, a7);

    v30 = sub_1DAD71948();
    v48 = a7;
    v49 = v30;
    WitnessTable = swift_getWitnessTable();
    sub_1DADB6258(v22, v17, WitnessTable);
    v32 = *(v18 + 8);
    v32(v22, v17);
    sub_1DADB6258(v24, v17, WitnessTable);
    sub_1DAE26A88(v22, v17);
    v32(v22, v17);
    v32(v24, v17);
  }

  else
  {
    sub_1DADB6258(v44, a6, a7);
    sub_1DADB6258(v16, a6, a7);
    v33 = sub_1DAD71948();
    v56 = a7;
    v57 = v33;
    swift_getWitnessTable();
    sub_1DAE26B80(v14, v17, a6);
    v34 = *(v10 + 8);
    v34(v14, a6);
    v34(v16, a6);
  }

  v35 = sub_1DAD71948();
  v54 = a7;
  v55 = v35;
  v52 = swift_getWitnessTable();
  v53 = a7;
  v36 = v46;
  v37 = swift_getWitnessTable();
  sub_1DADB6258(v28, v36, v37);
  return (*(v45 + 8))(v28, v36);
}

uint64_t View.widgetURLReader(enabled:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a4;
  v47 = a5;
  v42 = a1;
  v6 = *(a3 - 8);
  v40 = a2;
  v41 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for WidgetURLReaderModifier(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DAECF2AC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v40 - v23;
  v25 = sub_1DAECFB2C();
  v44 = *(v25 - 8);
  v45 = v25;
  v26 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v40 - v27;
  if (v42)
  {
    sub_1DAD6495C(v40, v16, &qword_1ECC091C0, &qword_1DAED8E80);
    v29 = v46;
    MEMORY[0x1E127C210](v16, a3, v13, v46);
    sub_1DAE27E1C(v16, type metadata accessor for WidgetURLReaderModifier);
    v30 = sub_1DADB17F4(qword_1EE00C130, type metadata accessor for WidgetURLReaderModifier);
    v48 = v29;
    v49 = v30;
    WitnessTable = swift_getWitnessTable();
    sub_1DADB6258(v22, v17, WitnessTable);
    v32 = *(v18 + 8);
    v32(v22, v17);
    sub_1DADB6258(v24, v17, WitnessTable);
    v33 = v29;
    sub_1DAE26A88(v22, v17);
    v32(v22, v17);
    v32(v24, v17);
  }

  else
  {
    v33 = v46;
    sub_1DADB6258(v43, a3, v46);
    sub_1DADB6258(v12, a3, v33);
    v34 = sub_1DADB17F4(qword_1EE00C130, type metadata accessor for WidgetURLReaderModifier);
    v54 = v33;
    v55 = v34;
    swift_getWitnessTable();
    sub_1DAE26B80(v10, v17, a3);
    v35 = *(v41 + 8);
    v35(v10, a3);
    v35(v12, a3);
  }

  v36 = sub_1DADB17F4(qword_1EE00C130, type metadata accessor for WidgetURLReaderModifier);
  v52 = v33;
  v53 = v36;
  v50 = swift_getWitnessTable();
  v51 = v33;
  v37 = v45;
  v38 = swift_getWitnessTable();
  sub_1DADB6258(v28, v37, v38);
  return (*(v44 + 8))(v28, v37);
}

uint64_t sub_1DAE27DB8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DAECF3CC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1DAE27DEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DAECF3DC();
}

uint64_t sub_1DAE27E1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAE27E80()
{
  result = qword_1ECC091C8;
  if (!qword_1ECC091C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC091C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebugOverlayValidationState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DebugOverlayValidationState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA19_ConditionalContentVyAA08ModifiedE0Vyx14WidgetRenderer015SystemURLActionC8ModifierVGxGAaBHPAjaBHPxAaBHD1__AiA0cK0HPyHCHC_xAaBHD1_HCTm(uint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  a2(255);
  sub_1DAECF2AC();
  sub_1DAECFB2C();
  sub_1DADB17F4(a3, a4);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1DAE2810C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_1DAE28154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAE281C8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1DAE281C8(*(v0 + 48), *(v0 + 56), *(v0 + 57));

  return swift_deallocObject();
}

uint64_t sub_1DAE28224()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t InteractiveWidgetSetupViewModifier.init<A>(logger:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  *a5 = (*(a4 + 8))(a3, a4);
  *(a5 + 8) = v10;
  LOBYTE(v5) = (*(v5 + 16))(a3, v5);
  (*(*(a3 - 8) + 8))(a2, a3);
  *(a5 + 16) = v5 & 1;
  v11 = *(type metadata accessor for InteractiveWidgetSetupViewModifier() + 24);
  v12 = sub_1DAECEDEC();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a1, v12);
}

void sub_1DAE28358(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *(a2 + 8);
    v5 = *(type metadata accessor for InteractiveWidgetSetupViewModifier() + 24);

    v6 = sub_1DAECEDCC();
    v7 = sub_1DAED200C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DAD61000, v6, v7, "Asking WidgetKit to execute an LNAction.", v8, 2u);
      MEMORY[0x1E127F100](v8, -1, -1);
    }

    v2(a1);

    sub_1DAD660D8(v2);
  }

  else
  {
    v9 = a2 + *(type metadata accessor for InteractiveWidgetSetupViewModifier() + 24);
    oslog = sub_1DAECEDCC();
    v10 = sub_1DAED201C();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DAD61000, oslog, v10, "Missing interaction handler.", v11, 2u);
      MEMORY[0x1E127F100](v11, -1, -1);
    }
  }
}

void sub_1DAE284F0(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractiveWidgetSetupViewModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1DAE28358(a1, v4);
}

uint64_t WatchExpandedJindoView.init(appName:leadingView:trailingView:spacing:smartStackPlatterPadding:smartStackPlatterPaddingOutset:titleHeight:launchRequestHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, uint64_t a14)
{
  v22 = type metadata accessor for WatchExpandedJindoView();
  v23 = &a9[v22[18]];
  v24 = &a9[v22[19]];
  *a9 = a1;
  *(a9 + 1) = a2;
  (*(*(a13 - 8) + 32))(&a9[v22[13]], a3, a13);
  result = (*(*(a14 - 8) + 32))(&a9[v22[14]], a4, a14);
  *&a9[v22[15]] = a10;
  *&a9[v22[16]] = a11;
  *&a9[v22[17]] = a12;
  *v23 = a5;
  v23[8] = a6 & 1;
  *v24 = a7;
  *(v24 + 1) = a8;
  return result;
}

uint64_t sub_1DAE286F4()
{
  if (*(v0 + 8))
  {
    sub_1DAECF32C();
    sub_1DAD7A244();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
    sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0);
    return sub_1DAED23CC();
  }

  else
  {

    return sub_1DAECF30C();
  }
}

uint64_t WatchExpandedJindoView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECC09240, &unk_1DAED9260);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED07DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E10, &unk_1DAED8250);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E18, &qword_1DAED9270);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  swift_getTupleTypeMetadata2();
  sub_1DAED097C();
  swift_getWitnessTable();
  v6 = sub_1DAED084C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  v17[4] = v4;
  v17[5] = v5;
  v18 = *(a1 + 32);
  v19 = v2;
  sub_1DAECFA1C();
  sub_1DAED083C();
  WitnessTable = swift_getWitnessTable();
  sub_1DADB6258(v11, v6, WitnessTable);
  v15 = *(v7 + 8);
  v15(v11, v6);
  sub_1DADB6258(v13, v6, WitnessTable);
  return (v15)(v13, v6);
}

uint64_t sub_1DAE28AB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v191 = a4;
  v187 = a6;
  v189 = a2;
  v190 = a3;
  swift_getTupleTypeMetadata3();
  v170 = sub_1DAED097C();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1DAED07DC();
  v172 = *(v8 - 8);
  v9 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v169 = &v139 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E10, &unk_1DAED8250);
  v173 = v8;
  v11 = sub_1DAECF2AC();
  v176 = *(v11 - 8);
  v12 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v174 = &v139 - v13;
  v177 = v14;
  v15 = sub_1DAECF2AC();
  v179 = *(v15 - 8);
  v16 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v175 = &v139 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E18, &qword_1DAED9270);
  v180 = v15;
  v18 = sub_1DAECF2AC();
  v181 = *(v18 - 8);
  v19 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v178 = &v139 - v20;
  v182 = v21;
  v186 = sub_1DAECF2AC();
  v183 = *(v186 - 8);
  v22 = *(v183 + 64);
  v23 = MEMORY[0x1EEE9AC00](v186);
  v185 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v184 = &v139 - v25;
  v165 = sub_1DAECF28C();
  v164 = *(v165 - 8);
  v26 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08598, &qword_1DAED6970);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v139 - v30;
  v144 = sub_1DAECF32C();
  v143 = *(v144 - 8);
  v32 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v34 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC092D0, &qword_1DAED9318);
  v141 = *(v142 - 8);
  v35 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v37 = &v139 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC092D8, &qword_1DAED9320);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v139 - v40;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC092E0, &qword_1DAED9328);
  v148 = *(v151 - 8);
  v42 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v44 = &v139 - v43;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC092E8, &qword_1DAED9330);
  v150 = *(v152 - 8);
  v45 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v140 = &v139 - v46;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC092F0, &qword_1DAED9338);
  v147 = *(v149 - 8);
  v47 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v146 = &v139 - v48;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC092F8, &qword_1DAED9340);
  v49 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v155 = &v139 - v50;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09300, &qword_1DAED9348);
  v51 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v159 = &v139 - v52;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09308, &qword_1DAED9350);
  v53 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v162 = &v139 - v54;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09310, &qword_1DAED9358);
  v55 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v139 - v56;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09318, &qword_1DAED9360);
  v57 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v139 - v58;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC09240, &unk_1DAED9260);
  v59 = *(*(v188 - 8) + 64);
  v60 = MEMORY[0x1EEE9AC00](v188);
  v167 = &v139 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v153 = &v139 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v166 = &v139 - v64;
  if (a1[1])
  {
    v65 = *a1;
    v66 = a1[1];
  }

  else
  {
    v66 = 0xEB00000000726564;
    v65 = 0x6C6F686563616C70;
  }

  *&v199 = v65;
  *(&v199 + 1) = v66;
  LOBYTE(v200) = 0;
  *(&v200 + 1) = MEMORY[0x1E69E7CC0];

  v195 = v189;
  v196 = v190;
  v197 = v191;
  v171 = a5;
  v198 = a5;
  v67 = type metadata accessor for WatchExpandedJindoView();
  v68 = a1;
  sub_1DAE286F4();
  sub_1DAED05BC();
  (*(v143 + 8))(v34, v144);

  v69 = sub_1DAED00AC();
  KeyPath = swift_getKeyPath();
  (*(v141 + 32))(v41, v37, v142);
  v71 = &v41[*(v38 + 36)];
  *v71 = KeyPath;
  v71[1] = v69;
  sub_1DAED011C();
  v72 = sub_1DAE2A880();
  sub_1DAED03EC();
  sub_1DAD64398(v41, &qword_1ECC092D8, &qword_1DAED9320);
  v73 = *MEMORY[0x1E6980E28];
  v74 = sub_1DAED00EC();
  v75 = *(v74 - 8);
  (*(v75 + 104))(v31, v73, v74);
  (*(v75 + 56))(v31, 0, 1, v74);
  *&v199 = v38;
  *(&v199 + 1) = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = v140;
  v78 = v151;
  sub_1DAED03DC();
  sub_1DAE2A968(v31);
  (*(v148 + 8))(v44, v78);
  v79 = v164;
  v80 = v163;
  v81 = v165;
  (*(v164 + 104))(v163, *MEMORY[0x1E697E720], v165);
  *&v199 = v78;
  *(&v199 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v82 = v146;
  v83 = v152;
  sub_1DAED04AC();
  (*(v79 + 8))(v80, v81);
  (*(v150 + 8))(v77, v83);
  LODWORD(v83) = sub_1DAECFB9C();
  v84 = v155;
  (*(v147 + 32))(v155, v82, v149);
  *(v84 + *(v145 + 36)) = v83;
  v85 = v68 + v67[18];
  if (!v85[8])
  {
    v86 = *v85;
  }

  sub_1DAED092C();
  sub_1DAECF35C();
  v87 = v159;
  sub_1DAD7C48C(v84, v159, &qword_1ECC092F8, &qword_1DAED9340);
  v88 = (v87 + *(v154 + 36));
  v89 = v204;
  v88[4] = v203;
  v88[5] = v89;
  v88[6] = v205;
  v90 = v200;
  *v88 = v199;
  v88[1] = v90;
  v91 = v202;
  v88[2] = v201;
  v88[3] = v91;
  v92 = v162;
  sub_1DAD7C48C(v87, v162, &qword_1ECC09300, &qword_1DAED9348);
  *(v92 + *(v157 + 36)) = 0x3FE0000000000000;
  LOBYTE(v87) = sub_1DAED003C();
  v93 = v67;
  v94 = *(v68 + v67[16]);
  sub_1DAECF06C();
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v103 = v92;
  v104 = v160;
  sub_1DAD7C48C(v103, v160, &qword_1ECC09308, &qword_1DAED9350);
  v105 = v104 + *(v161 + 36);
  *v105 = v87;
  *(v105 + 8) = v96;
  *(v105 + 16) = v98;
  *(v105 + 24) = v100;
  *(v105 + 32) = v102;
  *(v105 + 40) = 0;
  v106 = v156;
  sub_1DAD7C48C(v104, v156, &qword_1ECC09310, &qword_1DAED9358);
  *(v106 + *(v158 + 36)) = 0;
  v107 = (v68 + v67[19]);
  v108 = *v107;
  v109 = v107[1];
  v110 = v106;
  v111 = v153;
  sub_1DAD7C48C(v110, v153, &qword_1ECC09318, &qword_1DAED9360);
  v112 = (v111 + *(v188 + 36));
  *v112 = v108;
  v112[1] = v109;
  v113 = v166;
  v114 = sub_1DAD7C48C(v111, v166, qword_1ECC09240, &unk_1DAED9260);
  MEMORY[0x1EEE9AC00](v114);
  sub_1DADCA8EC(v108);
  sub_1DAECF8FC();
  v115 = v169;
  sub_1DAED07CC();
  v116 = v173;
  v117 = swift_getWitnessTable();
  v118 = v174;
  sub_1DAED049C();
  (*(v172 + 8))(v115, v116);
  sub_1DAED003C();
  v119 = v94 - *(v68 + v93[17]);
  v120 = sub_1DAD64B94(&qword_1ECC08E20, &qword_1ECC08E10, &unk_1DAED8250);
  v194[8] = v117;
  v194[9] = v120;
  v121 = v177;
  v122 = swift_getWitnessTable();
  v123 = v175;
  sub_1DAED058C();
  (*(v176 + 8))(v118, v121);
  v194[6] = v122;
  v194[7] = MEMORY[0x1E697E5D8];
  v124 = v180;
  v125 = swift_getWitnessTable();
  sub_1DAE19364();
  v126 = v178;
  sub_1DAED043C();
  (*(v179 + 8))(v123, v124);
  v127 = sub_1DAD64B94(&qword_1ECC08E28, &qword_1ECC08E18, &qword_1DAED9270);
  v194[4] = v125;
  v194[5] = v127;
  v128 = v182;
  v129 = swift_getWitnessTable();
  v130 = v185;
  sub_1DAE2AFCC(v108, v109, v128);
  (*(v181 + 8))(v126, v128);
  v131 = sub_1DAE2AA00();
  v194[2] = v129;
  v194[3] = v131;
  v132 = v186;
  v133 = swift_getWitnessTable();
  v134 = v184;
  sub_1DADB6258(v130, v132, v133);
  v135 = v183;
  v136 = *(v183 + 8);
  v136(v130, v132);
  v137 = v167;
  sub_1DADCE3DC(v113, v167);
  v195 = v137;
  (*(v135 + 16))(v130, v134, v132);
  v196 = v130;
  v194[0] = v188;
  v194[1] = v132;
  v192 = sub_1DAE2AA54();
  v193 = v133;
  sub_1DADB7ABC(&v195, 2uLL, v194);
  v136(v134, v132);
  sub_1DAD64398(v113, qword_1ECC09240, &unk_1DAED9260);
  v136(v130, v132);
  return sub_1DAD64398(v137, qword_1ECC09240, &unk_1DAED9260);
}

uint64_t sub_1DAE29F70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DAE29FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a6;
  v41 = *(a3 - 8);
  v11 = *(v41 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v14);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v39 - v23;
  v49 = v25;
  v50 = v26;
  v39 = v27;
  v51 = v27;
  v52 = v28;
  v29 = type metadata accessor for WatchExpandedJindoView();
  sub_1DADB6258(a1 + v29[13], a2, a4);
  v30 = v29[14];
  v31 = *(a1 + v29[15]);
  v32 = a1 + v30;
  v33 = a5;
  sub_1DADB6258(v32, a3, a5);
  (*(v18 + 16))(v22, v24, a2);
  v47 = v31;
  v48 = 0;
  v49 = v22;
  v50 = &v47;
  v35 = v40;
  v34 = v41;
  (*(v41 + 16))(v40, v16, a3);
  v51 = v35;
  v46[0] = a2;
  v46[1] = MEMORY[0x1E6981840];
  v46[2] = a3;
  v43 = v39;
  v44 = MEMORY[0x1E6981838];
  v45 = v33;
  sub_1DADB7ABC(&v49, 3uLL, v46);
  v36 = *(v34 + 8);
  v36(v16, a3);
  v37 = *(v18 + 8);
  v37(v24, a2);
  v36(v35, a3);
  return (v37)(v22, a2);
}

void sub_1DAE2A278(uint64_t a1)
{
  sub_1DAE2A834(319, &qword_1EE005698);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        sub_1DAE2A834(319, &qword_1ECC092C8);
        if (v7 <= 0x3F)
        {
          sub_1DAD6F984();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1DAE2A370(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((((((((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = a2 - v13;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v14);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v12 > 0x7FFFFFFE)
  {
    v25 = (a1 + v9 + 16) & ~v9;
    if (v5 == v13)
    {
      return (*(v4 + 48))(v25);
    }

    else
    {
      return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
    }
  }

  else
  {
    v24 = *(a1 + 1);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    if ((v24 + 1) >= 2)
    {
      return v24;
    }

    else
    {
      return 0;
    }
  }
}

unsigned int *sub_1DAE2A580(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= *(v7 + 84))
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((((((((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a3 - v13;
    if (((((((((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(result + v14) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v14) = 0;
      }

      else if (v18)
      {
        *(result + v14) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if (v12 > 0x7FFFFFFE)
        {
          v23 = (result + v8 + 16) & ~v8;
          if (v6 == v13)
          {
            v24 = *(v5 + 56);

            return v24(v23);
          }

          else
          {
            v25 = *(v7 + 56);
            v26 = (v23 + v9 + v10) & ~v10;

            return v25(v26);
          }
        }

        else if (a2 > 0x7FFFFFFE)
        {
          *result = 0;
          *(result + 1) = 0;
          *result = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(result + 1) = a2;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((((((((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((((((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    v22 = result;
    bzero(result, ((((((((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(result + v14) = v20;
    }

    else
    {
      *(result + v14) = v20;
    }
  }

  else if (v18)
  {
    *(result + v14) = v20;
  }

  return result;
}

void sub_1DAE2A834(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DAED233C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1DAE2A880()
{
  result = qword_1ECC09320;
  if (!qword_1ECC09320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC092D8, &qword_1DAED9320);
    swift_getOpaqueTypeConformance2();
    sub_1DAD64B94(&qword_1EE005898, &qword_1ECC09328, &qword_1DAED9398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09320);
  }

  return result;
}

uint64_t sub_1DAE2A968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08598, &qword_1DAED6970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAE2AA00()
{
  result = qword_1ECC09330;
  if (!qword_1ECC09330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09330);
  }

  return result;
}

unint64_t sub_1DAE2AA54()
{
  result = qword_1ECC09338;
  if (!qword_1ECC09338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECC09240, &unk_1DAED9260);
    sub_1DAE2AAE0();
    sub_1DAE2AA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09338);
  }

  return result;
}

unint64_t sub_1DAE2AAE0()
{
  result = qword_1ECC09340;
  if (!qword_1ECC09340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09318, &qword_1DAED9360);
    sub_1DAE2AB98();
    sub_1DAD64B94(&qword_1ECC08E28, &qword_1ECC08E18, &qword_1DAED9270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09340);
  }

  return result;
}

unint64_t sub_1DAE2AB98()
{
  result = qword_1ECC09348;
  if (!qword_1ECC09348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09310, &qword_1DAED9358);
    sub_1DAE2AC24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09348);
  }

  return result;
}

unint64_t sub_1DAE2AC24()
{
  result = qword_1ECC09350;
  if (!qword_1ECC09350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09308, &qword_1DAED9350);
    sub_1DAE2ACDC();
    sub_1DAD64B94(&qword_1ECC08E20, &qword_1ECC08E10, &unk_1DAED8250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09350);
  }

  return result;
}

unint64_t sub_1DAE2ACDC()
{
  result = qword_1ECC09358;
  if (!qword_1ECC09358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09300, &qword_1DAED9348);
    sub_1DAE2AD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09358);
  }

  return result;
}

unint64_t sub_1DAE2AD68()
{
  result = qword_1ECC09360;
  if (!qword_1ECC09360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC092F8, &qword_1DAED9340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC092E8, &qword_1DAED9330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC092E0, &qword_1DAED9328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC092D8, &qword_1DAED9320);
    sub_1DAE2A880();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1DAD64B94(&qword_1ECC09368, &qword_1ECC09370, &unk_1DAED93A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09360);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAE2AEF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DAE2AF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DAE2AFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x1E127C210](v4, a3, &type metadata for LiveActivityLaunchHandlingModifier);
}

void sub_1DAE2B004(void (*a1)(uint64_t))
{
  if (a1)
  {

    a1(v2);

    sub_1DAD660D8(a1);
  }

  else
  {
    if (qword_1EE005DD8 != -1)
    {
      swift_once();
    }

    v3 = sub_1DAECEDEC();
    __swift_project_value_buffer(v3, qword_1EE011688);
    oslog = sub_1DAECEDCC();
    v4 = sub_1DAED203C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DAD61000, oslog, v4, "Tap Gesture on Live Activity ignored because launch request handler was not set", v5, 2u);
      MEMORY[0x1E127F100](v5, -1, -1);
    }
  }
}

uint64_t sub_1DAE2B130()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1DADCA8EC(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09378, &qword_1DAED9478);
  sub_1DAE2B1F8();
  sub_1DAED045C();
}

unint64_t sub_1DAE2B1F8()
{
  result = qword_1ECC09380;
  if (!qword_1ECC09380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09378, &qword_1DAED9478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09380);
  }

  return result;
}

double sub_1DAE2B25C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v45 = a3;
  v4 = sub_1DAECDCEC();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09490, &qword_1DAED99F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38 - v13;
  *v14 = sub_1DAECF8FC();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09498, &qword_1DAED9A00) + 44);
  v44 = v14;
  v16 = &v14[v15];
  v17 = sub_1DAECFF0C();
  (*(*(v17 - 8) + 16))(v16, a2, v17);
  v18 = type metadata accessor for InlineTextView(0);
  v19 = *(v18 + 24);
  v20 = *(a2 + *(v18 + 20));
  v21 = type metadata accessor for MetadataInlineView(0);
  v22 = *(v21 + 24);
  v23 = sub_1DAECEDEC();
  v24 = *(*(v23 - 8) + 16);
  v24(&v16[v22], a2 + v19, v23);
  *&v16[*(v21 + 20)] = v20;
  v25 = v20;
  sub_1DAECFD4C();
  v26 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094A0, &qword_1DAED9A08) + 36)];
  sub_1DAED158C();
  v27 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094A8, &qword_1DAED9A10) + 36)];
  v28 = type metadata accessor for InlineDateModifier(0);
  v24(&v27[v28[5]], a2 + v19, v23);
  v29 = v39;
  sub_1DAECDCDC();
  *&v27[v28[7]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094B0, &qword_1DAED9A48);
  swift_storeEnumTagMultiPayload();
  *&v27[v28[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094B8, &qword_1DAED9A80);
  swift_storeEnumTagMultiPayload();
  *v27 = v20;
  v30 = v28[6];
  v31 = v41;
  v32 = v42;
  (*(v41 + 16))(v40, v29, v42);
  sub_1DAED076C();
  (*(v31 + 8))(v29, v32);
  sub_1DAECF17C();
  sub_1DAECF17C();
  if (!v20)
  {
    goto LABEL_5;
  }

  v33 = [v25 horizontalAlignment];
  if (v33 == 1)
  {
    sub_1DAED092C();
    goto LABEL_7;
  }

  if (v33 == 2)
  {
    sub_1DAED093C();
  }

  else
  {
LABEL_5:
    sub_1DAED091C();
  }

LABEL_7:
  sub_1DAECF15C();
  v34 = v45;
  sub_1DAD7C48C(v44, v45, &qword_1ECC09490, &qword_1DAED99F8);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094C0, &qword_1DAED9A88) + 36));
  v36 = v47;
  *v35 = v46;
  v35[1] = v36;
  result = *&v48;
  v35[2] = v48;
  return result;
}

uint64_t sub_1DAE2B6C4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09470, &qword_1DAED99A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v23 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09478, &qword_1DAED99A8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v23 - v14);
  if (a1)
  {
    KeyPath = swift_getKeyPath();
    v17 = (v15 + *(v12 + 36));
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09488, &qword_1DAED99B8);
    v23[1] = a4;
    v19 = *(v18 + 28);
    v20 = *MEMORY[0x1E697E7D0];
    v21 = sub_1DAECF29C();
    (*(*(v21 - 8) + 104))(v17 + v19, v20, v21);
    *v17 = KeyPath;
    *v15 = a2;
    v15[1] = a3;
    sub_1DAD6495C(v15, v11, &qword_1ECC09478, &qword_1DAED99A8);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09480, &qword_1DAED99B0);
    sub_1DAE34B3C();
    sub_1DAD64B94(&qword_1EE005B70, &qword_1ECC09480, &qword_1DAED99B0);
    sub_1DAECFB1C();
    return sub_1DAD64398(v15, &qword_1ECC09478, &qword_1DAED99A8);
  }

  else
  {
    *v11 = a2;
    v11[1] = a3;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09480, &qword_1DAED99B0);
    sub_1DAE34B3C();
    sub_1DAD64B94(&qword_1EE005B70, &qword_1ECC09480, &qword_1DAED99B0);
    return sub_1DAECFB1C();
  }
}

uint64_t sub_1DAE2B98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1 - 8;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1DAE353FC(v3, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InlineTextView);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_1DAE35464(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for InlineTextView);
  v10 = *(v3 + *(v5 + 28));
  if (v10)
  {
    LOBYTE(v10) = [v10 ignoresRTL];
  }

  sub_1DAE2B6C4(v10, sub_1DAE34B10, v9, a2);
}

uint64_t MetadataInlineGraphicView.alwaysTemplate.setter(char a1)
{
  result = type metadata accessor for MetadataInlineGraphicView(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

void *MetadataInlineGraphicView.parameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetadataInlineGraphicView(0) + 24));
  v2 = v1;
  return v1;
}

void MetadataInlineGraphicView.parameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetadataInlineGraphicView(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t MetadataInlineGraphicView.init(_:alwaysTemplate:parameters:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MetadataInlineGraphicView(0);
  v9 = *(v8 + 24);
  v10 = sub_1DAECFE7C();
  result = (*(*(v10 - 8) + 32))(a4, a1, v10);
  *(a4 + *(v8 + 20)) = a2;
  *(a4 + v9) = a3;
  return result;
}

uint64_t MetadataInlineGraphicView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09388, &qword_1DAED9490);
  v2 = *(*(v70 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v70);
  v60 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v60 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09390, &qword_1DAED9498);
  v6 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09398, &qword_1DAED94A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093A0, &qword_1DAED94A8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v60 - v14;
  v16 = sub_1DAECFE7C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DAED18DC();
  v65 = *(v21 - 8);
  v66 = v21;
  v22 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093A8, &qword_1DAED94B0);
  v25 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v60 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093B0, &qword_1DAED94B8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v67 = &v60 - v29;
  (*(v17 + 16))(v20, v1, v16);
  v30 = *(v1 + *(type metadata accessor for MetadataInlineGraphicView(0) + 24));
  if (v30)
  {
    v62 = [v30 allowsNonSystemForegroundColors];
  }

  else
  {
    v62 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093B8, &qword_1DAED94C0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DAED6200;
  if (v30 && [v30 foregroundColor])
  {
    v32 = sub_1DAED06DC();
  }

  else
  {
    v32 = sub_1DAED066C();
  }

  *(v31 + 32) = v32;
  sub_1DAECFE4C();
  v33 = sub_1DAECFA4C();
  (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
  v34 = sub_1DAECF37C();
  (*(*(v34 - 8) + 56))(v11, 1, 1, v34);
  sub_1DAED18FC();
  sub_1DAED18EC();
  sub_1DAE337C8(v30);
  if (v30)
  {
    v35 = v30;
    v36 = [v35 fontSpecification];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 weight];

      if (v38)
      {
        [v38 doubleValue];
        sub_1DAED010C();

        goto LABEL_14;
      }
    }
  }

  sub_1DAED012C();
LABEL_14:
  v39 = sub_1DAED017C();

  if (v30)
  {
    v40 = v30;
    v41 = [v40 fontSpecification];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 fontFeatures];

      sub_1DAD674D4(0, &qword_1EE0054E0, 0x1E69942A8);
      v44 = sub_1DAED1E7C();
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  v45 = sub_1DAE33A18(v44, v39);

  KeyPath = swift_getKeyPath();
  v47 = v63;
  (*(v65 + 32))(v63, v24, v66);
  v48 = (v47 + *(v64 + 36));
  *v48 = KeyPath;
  v48[1] = v45;
  v49 = v67;
  sub_1DAD7C48C(v47, v67, &qword_1ECC093A8, &qword_1DAED94B0);
  v50 = v49 + *(v27 + 36);
  *v50 = v30;
  *(v50 + 8) = 0;
  v51 = v30;
  if (sub_1DAECFE4C())
  {
    sub_1DAD6495C(v49, v69, &qword_1ECC093B0, &qword_1DAED94B8);
    swift_storeEnumTagMultiPayload();
    sub_1DAE33B84();
    sub_1DAE33D4C();
    sub_1DAECFB1C();
  }

  else
  {
    if (v30)
    {
      [v51 graphicMaxSize];
      v53 = v52;
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    v56 = v60;
    sub_1DAD6495C(v49, v60, &qword_1ECC093B0, &qword_1DAED94B8);
    v57 = v56 + *(v70 + 36);
    *v57 = v53;
    *(v57 + 8) = v55;
    *(v57 + 16) = v30 == 0;
    v58 = v61;
    sub_1DAD7C48C(v56, v61, &qword_1ECC09388, &qword_1DAED9490);
    sub_1DAD6495C(v58, v69, &qword_1ECC09388, &qword_1DAED9490);
    swift_storeEnumTagMultiPayload();
    sub_1DAE33B84();
    sub_1DAE33D4C();
    sub_1DAECFB1C();
    sub_1DAD64398(v58, &qword_1ECC09388, &qword_1DAED9490);
  }

  return sub_1DAD64398(v49, &qword_1ECC093B0, &qword_1DAED94B8);
}

uint64_t sub_1DAE2C538()
{
  v1 = type metadata accessor for MetadataInlineTextGraphicView(0);
  v2 = *(*(v1 - 1) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09548, &qword_1DAED9BE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09550, &qword_1DAED9BF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = sub_1DAE2C8D0();
  if (v13)
  {
    if (*(v13 + 16))
    {
      v14 = v13;
      *v12 = sub_1DAED002C();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09558, &qword_1DAED9BF8);
      sub_1DAE2CB64(v14, v0, &v12[*(v15 + 44)]);

      sub_1DAD6495C(v12, v8, &qword_1ECC09550, &qword_1DAED9BF0);
      swift_storeEnumTagMultiPayload();
      sub_1DAD64B94(&qword_1EE005B78, &qword_1ECC09550, &qword_1DAED9BF0);
      sub_1DAE34E60(&qword_1EE0061A8, type metadata accessor for MetadataInlineTextGraphicView);
      sub_1DAECFB1C();
      return sub_1DAD64398(v12, &qword_1ECC09550, &qword_1DAED9BF0);
    }
  }

  sub_1DAECFCEC();
  v17 = &v4[v1[5]];
  sub_1DAECFE8C();
  v18 = type metadata accessor for MetadataInlineView(0);
  v19 = *(v18 + 24);
  v20 = *(v0 + *(v18 + 20));
  v21 = v1[7];
  v22 = sub_1DAECEDEC();
  (*(*(v22 - 8) + 16))(&v4[v21], v0 + v19, v22);
  v23 = v1[8];
  v24 = v20;
  sub_1DAECFD3C();
  *&v4[v1[6]] = v20;
  sub_1DAE353FC(v4, v8, type metadata accessor for MetadataInlineTextGraphicView);
  swift_storeEnumTagMultiPayload();
  sub_1DAD64B94(&qword_1EE005B78, &qword_1ECC09550, &qword_1DAED9BF0);
  sub_1DAE34E60(&qword_1EE0061A8, type metadata accessor for MetadataInlineTextGraphicView);
  sub_1DAECFB1C();
  return sub_1DAE35788(v4, type metadata accessor for MetadataInlineTextGraphicView);
}

uint64_t sub_1DAE2C8D0()
{
  v0 = sub_1DAECFF0C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetadataInlineView.IterableFallback(0);
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECFEFC();
  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v11 = v9;
    sub_1DAE02244(0, v10, 0);
    v12 = v27;
    v13 = v1 + 16;
    v14 = *(v1 + 16);
    v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    v22 = v11;
    v23 = v16;
    v24 = v13;
    v17 = (v13 - 8);
    do
    {
      v14(v4, v15, v0);
      v14(v8, v4, v0);
      v18 = &v8[*(v26 + 20)];
      sub_1DAECDD2C();
      (*v17)(v4, v0);
      v27 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1DAE02244(v19 > 1, v20 + 1, 1);
        v12 = v27;
      }

      *(v12 + 16) = v20 + 1;
      sub_1DAE35464(v8, v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for MetadataInlineView.IterableFallback);
      v15 += v23;
      --v10;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1DAE2CB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v90 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09560, &qword_1DAED9C00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09568, &qword_1DAED9C08);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v74 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v74 - v14;
  v15 = type metadata accessor for MetadataInlineTextGraphicView(0);
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = *(v88 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v77 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v74 - v19;
  v20 = type metadata accessor for MetadataInlineView.IterableFallback(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09570, &qword_1DAED9C10);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v87 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v86 = &v74 - v29;
  v75 = type metadata accessor for MetadataInlineView(0);
  v30 = *(v75 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09578, &qword_1DAED9C18);
  v83 = *(v32 - 8);
  v84 = v32;
  v33 = *(v83 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v85 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v74 - v36;
  v91 = a1;
  v81 = a2;
  sub_1DAE353FC(a2, &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MetadataInlineView);
  v38 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v39 = swift_allocObject();
  sub_1DAE35464(&v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38, type metadata accessor for MetadataInlineView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09580, &qword_1DAED9C20);
  sub_1DAECDD3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09588, &qword_1DAED9C28);
  sub_1DAD64B94(&qword_1ECC09590, &qword_1ECC09580, &qword_1DAED9C20);
  sub_1DAE356CC();
  sub_1DAE34E60(&qword_1ECC095A0, type metadata accessor for MetadataInlineView.IterableFallback);
  v82 = v37;
  sub_1DAED08AC();
  v40 = *(a1 + 16);
  if (v40)
  {
    sub_1DAE353FC(a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * (v40 - 1), v24, type metadata accessor for MetadataInlineView.IterableFallback);
    v41 = v74;
    sub_1DAECFCEC();
    v42 = sub_1DAECFDDC();
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);
    if (v44(v41, 1, v42) == 1)
    {
      v45 = v79;
      v46 = v81;
      sub_1DAECFCEC();
      v47 = v44(v41, 1, v42);
      v48 = v80;
      if (v47 != 1)
      {
        sub_1DAD64398(v41, &qword_1ECC09568, &qword_1DAED9C08);
      }
    }

    else
    {
      v45 = v79;
      (*(v43 + 32))(v79, v41, v42);
      (*(v43 + 56))(v45, 0, 1, v42);
      v48 = v80;
      v46 = v81;
    }

    v52 = v76;
    sub_1DAECFE8C();
    v53 = sub_1DAECFE7C();
    v54 = *(v53 - 8);
    v55 = *(v54 + 48);
    if (v55(v52, 1, v53) == 1)
    {
      sub_1DAECFE8C();
      if (v55(v52, 1, v53) != 1)
      {
        sub_1DAD64398(v52, &qword_1ECC09560, &qword_1DAED9C00);
      }
    }

    else
    {
      (*(v54 + 32))(v48, v52, v53);
      (*(v54 + 56))(v48, 0, 1, v53);
    }

    v56 = *(v75 + 24);
    v57 = *(v46 + *(v75 + 20));
    v50 = v89;
    v58 = v89[7];
    v59 = sub_1DAECEDEC();
    v60 = v77;
    (*(*(v59 - 8) + 16))(&v77[v58], v46 + v56, v59);
    v61 = v50[8];
    v62 = v57;
    sub_1DAECFD3C();
    sub_1DAE35788(v24, type metadata accessor for MetadataInlineView.IterableFallback);
    sub_1DAD7C48C(v45, v60, &qword_1ECC09568, &qword_1DAED9C08);
    sub_1DAD7C48C(v48, v60 + v50[5], &qword_1ECC09560, &qword_1DAED9C00);
    *(v60 + v50[6]) = v57;
    v63 = v78;
    sub_1DAE35464(v60, v78, type metadata accessor for MetadataInlineTextGraphicView);
    v51 = v86;
    sub_1DAE35464(v63, v86, type metadata accessor for MetadataInlineTextGraphicView);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v50 = v89;
    v51 = v86;
  }

  (*(v88 + 56))(v51, v49, 1, v50);
  v64 = v82;
  v65 = v83;
  v66 = *(v83 + 16);
  v67 = v84;
  v68 = v85;
  v66(v85, v82, v84);
  v69 = v87;
  sub_1DAD6495C(v51, v87, &qword_1ECC09570, &qword_1DAED9C10);
  v70 = v90;
  v66(v90, v68, v67);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC095A8, &unk_1DAED9C30);
  sub_1DAD6495C(v69, &v70[*(v71 + 48)], &qword_1ECC09570, &qword_1DAED9C10);
  sub_1DAD64398(v51, &qword_1ECC09570, &qword_1DAED9C10);
  v72 = *(v65 + 8);
  v72(v64, v67);
  sub_1DAD64398(v69, &qword_1ECC09570, &qword_1DAED9C10);
  return (v72)(v68, v67);
}

uint64_t sub_1DAE2D504@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09560, &qword_1DAED9C00);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09568, &qword_1DAED9C08);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v15 = type metadata accessor for MetadataInlineTextGraphicView(0);
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECFCEC();
  v19 = sub_1DAECFDDC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v12, 1, v19) == 1)
  {
    sub_1DAECFCEC();
    if (v21(v12, 1, v19) != 1)
    {
      sub_1DAD64398(v12, &qword_1ECC09568, &qword_1DAED9C08);
    }
  }

  else
  {
    (*(v20 + 32))(v14, v12, v19);
    (*(v20 + 56))(v14, 0, 1, v19);
  }

  sub_1DAECFE8C();
  v22 = sub_1DAECFE7C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v6, 1, v22) == 1)
  {
    v25 = v37;
    v26 = v39;
    sub_1DAECFE8C();
    if (v24(v6, 1, v22) != 1)
    {
      sub_1DAD64398(v6, &qword_1ECC09560, &qword_1DAED9C00);
    }
  }

  else
  {
    v25 = v37;
    (*(v23 + 32))(v37, v6, v22);
    (*(v23 + 56))(v25, 0, 1, v22);
    v26 = v39;
  }

  v27 = type metadata accessor for MetadataInlineView(0);
  v28 = *(v27 + 24);
  v29 = *(v26 + *(v27 + 20));
  v30 = v15[7];
  v31 = sub_1DAECEDEC();
  (*(*(v31 - 8) + 16))(&v18[v30], v26 + v28, v31);
  v32 = v15[8];
  v33 = v29;
  sub_1DAECFD3C();
  sub_1DAD7C48C(v14, v18, &qword_1ECC09568, &qword_1DAED9C08);
  sub_1DAD7C48C(v25, &v18[v15[5]], &qword_1ECC09560, &qword_1DAED9C00);
  *&v18[v15[6]] = v29;
  v34 = v38;
  sub_1DAE35464(v18, v38, type metadata accessor for MetadataInlineTextGraphicView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09588, &qword_1DAED9C28);
  *(v34 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1DAE2D954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1DAECDD3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1DAE2D9CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7B0, &unk_1DAEDE9B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v58 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - v9;
  v59 = sub_1DAECFCAC();
  v11 = *(v59 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC095C0, &qword_1DAED9D08);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC095C8, &qword_1DAED9D10);
  v54 = *(v19 - 8);
  v55 = v19;
  v20 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - v21;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC095D0, &qword_1DAED9D18);
  v23 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v25 = &v52 - v24;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC095D8, &qword_1DAED9D20);
  v26 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v52 - v27;
  *v18 = sub_1DAECF8FC();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC095E0, &qword_1DAED9D28);
  sub_1DAE2DFDC(v2, &v18[*(v28 + 44)]);
  sub_1DAECFC9C();
  sub_1DAD64B94(&qword_1EE005818, &qword_1ECC095C0, &qword_1DAED9D08);
  sub_1DAED051C();
  (*(v11 + 8))(v14, v59);
  sub_1DAD64398(v18, &qword_1ECC095C0, &qword_1DAED9D08);
  v29 = *(type metadata accessor for MetadataInlineTextGraphicView(0) + 32);
  v59 = v2;
  sub_1DAD6495C(v2 + v29, v10, &unk_1ECC0A7B0, &unk_1DAEDE9B0);
  v30 = sub_1DAECFD2C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  if (v32(v10, 1, v30) == 1)
  {
    sub_1DAD64398(v10, &unk_1ECC0A7B0, &unk_1DAEDE9B0);
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v33 = sub_1DAECFD0C();
    v34 = v35;
    (*(v31 + 8))(v10, v30);
  }

  (*(v54 + 32))(v25, v22, v55);
  v36 = &v25[*(v53 + 36)];
  *v36 = v33;
  v36[1] = v34;
  v37 = v58;
  v38 = v59;
  sub_1DAD6495C(v59 + v29, v58, &unk_1ECC0A7B0, &unk_1DAEDE9B0);
  if (v32(v37, 1, v30) == 1)
  {
    sub_1DAD64398(v37, &unk_1ECC0A7B0, &unk_1DAEDE9B0);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v39 = sub_1DAECFD1C();
    v40 = v41;
    (*(v31 + 8))(v37, v30);
  }

  v42 = v60;
  v43 = v25;
  v44 = v57;
  sub_1DAD7C48C(v43, v57, &qword_1ECC095D0, &qword_1DAED9D18);
  v45 = (v44 + *(v56 + 36));
  *v45 = v39;
  v45[1] = v40;
  sub_1DAD6495C(v38 + v29, v42, &unk_1ECC0A7B0, &unk_1DAEDE9B0);
  if (v32(v42, 1, v30) == 1)
  {
    sub_1DAD64398(v42, &unk_1ECC0A7B0, &unk_1DAEDE9B0);
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v46 = sub_1DAECFCFC();
    v47 = v48;
    (*(v31 + 8))(v42, v30);
  }

  v49 = v61;
  sub_1DAD7C48C(v44, v61, &qword_1ECC095D8, &qword_1DAED9D20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC095E8, &qword_1DAED9D30);
  v51 = (v49 + *(result + 36));
  *v51 = v46;
  v51[1] = v47;
  return result;
}

uint64_t sub_1DAE2DFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC095F0, &qword_1DAED9D38);
  v116 = *(v3 - 8);
  v4 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v108 = &v101 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC095F8, &qword_1DAED9D40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v119 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v101 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09600, &qword_1DAED9D48);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v118 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v101 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09608, &qword_1DAED9D50);
  v110 = *(v17 - 8);
  v18 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v101 - v19;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09610, &qword_1DAED9D58);
  v112 = *(v114 - 8);
  v20 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v107 = &v101 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09560, &qword_1DAED9C00);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v105 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v101 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09618, &qword_1DAED9D60);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v109 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v113 = &v101 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v101 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09620, &qword_1DAED9D68);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v106 = &v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v111 = &v101 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v101 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09628, &qword_1DAED9D70);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v115 = &v101 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v122 = &v101 - v48;
  v49 = type metadata accessor for MetadataInlineTextGraphicView(0);
  v50 = *(v49 + 24);
  v121 = a1;
  v51 = *(a1 + v50);
  v52 = &selRef__registerSceneActionsHandlerArray_forKey_;
  if (v51 && [v51 graphicAlignment] == 2)
  {
    sub_1DAECFA3C();
  }

  else
  {
    sub_1DAECFA2C();
  }

  sub_1DAECFA2C();
  v53 = sub_1DAECFA0C();
  v117 = v11;
  if (v53)
  {
    v102 = v17;
    v103 = v3;
    v54 = v121;
    sub_1DAE2EC80(v43);
    v101 = v49;
    sub_1DAD6495C(v54 + *(v49 + 20), v27, &qword_1ECC09560, &qword_1DAED9C00);
    v55 = sub_1DAECFE7C();
    v56 = 1;
    v57 = (*(*(v55 - 8) + 48))(v27, 1, v55);
    sub_1DAD64398(v27, &qword_1ECC09560, &qword_1DAED9C00);
    if (v57 != 1)
    {
      sub_1DAECF97C();
      v58 = sub_1DAED033C();
      v60 = v59;
      v124 = v58;
      v125 = v59;
      v62 = v61 & 1;
      v126 = v61 & 1;
      v127 = v63;
      v64 = v107;
      sub_1DAED050C();
      sub_1DADEA34C(v58, v60, v62);

      sub_1DAD7C48C(v64, v35, &qword_1ECC09610, &qword_1DAED9D58);
      v56 = 0;
    }

    (*(v112 + 56))(v35, v56, 1, v114);
    v65 = v111;
    sub_1DAD6495C(v43, v111, &qword_1ECC09620, &qword_1DAED9D68);
    v66 = v113;
    sub_1DAD6495C(v35, v113, &qword_1ECC09618, &qword_1DAED9D60);
    v67 = v104;
    sub_1DAD6495C(v65, v104, &qword_1ECC09620, &qword_1DAED9D68);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09640, &qword_1DAED9D88);
    sub_1DAD6495C(v66, v67 + *(v68 + 48), &qword_1ECC09618, &qword_1DAED9D60);
    sub_1DAD64398(v35, &qword_1ECC09618, &qword_1DAED9D60);
    sub_1DAD64398(v43, &qword_1ECC09620, &qword_1DAED9D68);
    sub_1DAD64398(v66, &qword_1ECC09618, &qword_1DAED9D60);
    sub_1DAD64398(v65, &qword_1ECC09620, &qword_1DAED9D68);
    v69 = v122;
    sub_1DAD7C48C(v67, v122, &qword_1ECC09608, &qword_1DAED9D50);
    (*(v110 + 56))(v69, 0, 1, v102);
    v11 = v117;
    v3 = v103;
    v49 = v101;
    v52 = &selRef__registerSceneActionsHandlerArray_forKey_;
  }

  else
  {
    (*(v110 + 56))(v122, 1, 1, v17);
  }

  v70 = v121;
  sub_1DAE2F1FC(v123);
  if (v51 && [v51 v52[176]] == 2)
  {
    sub_1DAECFA3C();
  }

  else
  {
    sub_1DAECFA2C();
  }

  sub_1DAECFA3C();
  if (sub_1DAECFA0C())
  {
    v71 = v70 + *(v49 + 20);
    v72 = v105;
    sub_1DAD6495C(v71, v105, &qword_1ECC09560, &qword_1DAED9C00);
    v73 = sub_1DAECFE7C();
    v74 = 1;
    v75 = (*(*(v73 - 8) + 48))(v72, 1, v73);
    sub_1DAD64398(v72, &qword_1ECC09560, &qword_1DAED9C00);
    if (v75 != 1)
    {
      sub_1DAECF97C();
      v76 = sub_1DAED033C();
      v78 = v77;
      v124 = v76;
      v125 = v77;
      v80 = v79 & 1;
      v126 = v79 & 1;
      v127 = v81;
      v82 = v107;
      sub_1DAED050C();
      sub_1DADEA34C(v76, v78, v80);

      sub_1DAD7C48C(v82, v109, &qword_1ECC09610, &qword_1DAED9D58);
      v74 = 0;
    }

    v83 = v109;
    (*(v112 + 56))(v109, v74, 1, v114);
    v84 = v111;
    sub_1DAE2EC80(v111);
    v85 = v113;
    sub_1DAD6495C(v83, v113, &qword_1ECC09618, &qword_1DAED9D60);
    v86 = v106;
    sub_1DAD6495C(v84, v106, &qword_1ECC09620, &qword_1DAED9D68);
    v87 = v3;
    v88 = v108;
    sub_1DAD6495C(v85, v108, &qword_1ECC09618, &qword_1DAED9D60);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09638, &qword_1DAED9D80);
    sub_1DAD6495C(v86, v88 + *(v89 + 48), &qword_1ECC09620, &qword_1DAED9D68);
    sub_1DAD64398(v84, &qword_1ECC09620, &qword_1DAED9D68);
    sub_1DAD64398(v83, &qword_1ECC09618, &qword_1DAED9D60);
    sub_1DAD64398(v86, &qword_1ECC09620, &qword_1DAED9D68);
    sub_1DAD64398(v85, &qword_1ECC09618, &qword_1DAED9D60);
    v90 = v88;
    v3 = v87;
    v11 = v117;
    sub_1DAD7C48C(v90, v117, &qword_1ECC095F0, &qword_1DAED9D38);
    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  (*(v116 + 56))(v11, v91, 1, v3);
  v92 = v122;
  v93 = v115;
  v94 = v11;
  sub_1DAD6495C(v122, v115, &qword_1ECC09628, &qword_1DAED9D70);
  v95 = v123;
  v96 = v118;
  sub_1DAD6495C(v123, v118, &qword_1ECC09600, &qword_1DAED9D48);
  v97 = v119;
  sub_1DAD6495C(v11, v119, &qword_1ECC095F8, &qword_1DAED9D40);
  v98 = v120;
  sub_1DAD6495C(v93, v120, &qword_1ECC09628, &qword_1DAED9D70);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09630, &qword_1DAED9D78);
  sub_1DAD6495C(v96, v98 + *(v99 + 48), &qword_1ECC09600, &qword_1DAED9D48);
  sub_1DAD6495C(v97, v98 + *(v99 + 64), &qword_1ECC095F8, &qword_1DAED9D40);
  sub_1DAD64398(v94, &qword_1ECC095F8, &qword_1DAED9D40);
  sub_1DAD64398(v95, &qword_1ECC09600, &qword_1DAED9D48);
  sub_1DAD64398(v92, &qword_1ECC09628, &qword_1DAED9D70);
  sub_1DAD64398(v97, &qword_1ECC095F8, &qword_1DAED9D40);
  sub_1DAD64398(v96, &qword_1ECC09600, &qword_1DAED9D48);
  return sub_1DAD64398(v93, &qword_1ECC09628, &qword_1DAED9D70);
}

uint64_t sub_1DAE2EC80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09648, &qword_1DAED9D90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - v5;
  v55 = type metadata accessor for MetadataInlineGraphicView(0);
  v7 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09560, &qword_1DAED9C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v46 - v11;
  v13 = sub_1DAECFE7C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v53 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - v21;
  v23 = type metadata accessor for MetadataInlineTextGraphicView(0);
  v24 = v2;
  sub_1DAD6495C(v2 + *(v23 + 20), v12, &qword_1ECC09560, &qword_1DAED9C00);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DAD64398(v12, &qword_1ECC09560, &qword_1DAED9C00);
    swift_storeEnumTagMultiPayload();
    sub_1DAE34E60(qword_1EE006870, type metadata accessor for MetadataInlineGraphicView);
    return sub_1DAECFB1C();
  }

  else
  {
    v51 = v6;
    v52 = v3;
    (*(v14 + 32))(v22, v12, v13);
    v49 = v22;
    v50 = v23;
    v26 = *(v23 + 28);
    v27 = *(v14 + 16);
    v27(v20, v22, v13);
    v28 = sub_1DAECEDCC();
    v29 = sub_1DAED200C();
    v30 = v24;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v48 = v24;
      v32 = v31;
      v33 = swift_slowAlloc();
      v57 = v33;
      *v32 = 136380675;
      v47 = v29;
      v27(v53, v20, v13);
      v46 = sub_1DAED1D4C();
      v34 = v27;
      v36 = v35;
      v53 = *(v14 + 8);
      (v53)(v20, v13);
      v37 = sub_1DAD6482C(v46, v36, &v57);

      v38 = v32;
      v30 = v48;
      *(v38 + 1) = v37;
      v39 = v38;
      _os_log_impl(&dword_1DAD61000, v28, v47, "Inline image: %{private}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1E127F100](v33, -1, -1);
      MEMORY[0x1E127F100](v39, -1, -1);
    }

    else
    {

      v53 = *(v14 + 8);
      (v53)(v20, v13);
      v34 = v27;
    }

    v40 = v54;
    v41 = v49;
    v34(v54, v49, v13);
    v42 = v51;
    v43 = *(v30 + *(v50 + 24));
    v44 = *(v55 + 24);
    *(v40 + *(v55 + 20)) = 1;
    *(v40 + v44) = v43;
    sub_1DAE353FC(v40, v42, type metadata accessor for MetadataInlineGraphicView);
    swift_storeEnumTagMultiPayload();
    sub_1DAE34E60(qword_1EE006870, type metadata accessor for MetadataInlineGraphicView);
    v45 = v43;
    sub_1DAECFB1C();
    (v53)(v41, v13);
    return sub_1DAE35788(v40, type metadata accessor for MetadataInlineGraphicView);
  }
}

uint64_t sub_1DAE2F1FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09650, &qword_1DAED9D98);
  v3 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v62 - v4;
  v75 = type metadata accessor for MetadataTextView(0);
  v5 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09658, &qword_1DAED9DA0);
  v7 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09660, &qword_1DAED9DA8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v74 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09568, &qword_1DAED9C08);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v62 - v16;
  v18 = sub_1DAECFDDC();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v78 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v62 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v62 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v62 - v28;
  v30 = v2;
  v32 = v31;
  sub_1DAD6495C(v2, v17, &qword_1ECC09568, &qword_1DAED9C08);
  if ((*(v32 + 48))(v17, 1, v18) == 1)
  {
    sub_1DAD64398(v17, &qword_1ECC09568, &qword_1DAED9C08);
    swift_storeEnumTagMultiPayload();
    sub_1DAE35B64();
    return sub_1DAECFB1C();
  }

  else
  {
    v70 = v9;
    v65 = *(v32 + 32);
    v66 = v32 + 32;
    v65(v29, v17, v18);
    v64 = type metadata accessor for MetadataInlineTextGraphicView(0);
    v34 = *(v64 + 28);
    v35 = *(v32 + 16);
    v68 = v29;
    v71 = v35;
    v35(v27, v29, v18);
    v36 = sub_1DAECEDCC();
    v37 = sub_1DAED200C();
    v38 = os_log_type_enabled(v36, v37);
    v69 = v32;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v63 = v30;
      v40 = v39;
      v41 = swift_slowAlloc();
      v82 = v41;
      *v40 = 136380675;
      v71(v24, v27, v18);
      v42 = sub_1DAED1D4C();
      v44 = v43;
      v67 = *(v32 + 8);
      v67(v27, v18);
      v45 = sub_1DAD6482C(v42, v44, &v82);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1DAD61000, v36, v37, "Inline text: %{private}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x1E127F100](v41, -1, -1);
      v30 = v63;
      MEMORY[0x1E127F100](v40, -1, -1);
    }

    else
    {

      v67 = *(v32 + 8);
      v67(v27, v18);
    }

    v46 = v68;
    v71(v78, v68, v18);
    v47 = *(v30 + *(v64 + 24));
    v48 = v70;
    v49 = v73;
    if (v47)
    {
      v50 = [v47 allowsNonSystemForegroundColors];
    }

    else
    {
      v50 = 0;
    }

    v51 = v75;
    v52 = *(v75 + 20);
    v65(v49, v78, v18);
    *(v49 + v52) = v47;
    *(v49 + *(v51 + 24)) = v50;
    v53 = v76;
    sub_1DAE353FC(v49, v76, type metadata accessor for MetadataTextView);
    v54 = v53 + *(v72 + 36);
    *v54 = v47;
    *(v54 + 8) = 0;
    v55 = v47;
    sub_1DAE35788(v49, type metadata accessor for MetadataTextView);
    KeyPath = swift_getKeyPath();
    v57 = v53;
    v58 = v74;
    sub_1DAD7C48C(v57, v74, &qword_1ECC09658, &qword_1DAED9DA0);
    v59 = v58 + *(v48 + 36);
    *v59 = KeyPath;
    *(v59 + 8) = 1;
    *(v59 + 16) = 0;
    v60 = v58;
    v61 = v77;
    sub_1DAD7C48C(v60, v77, &qword_1ECC09660, &qword_1DAED9DA8);
    sub_1DAD6495C(v61, v80, &qword_1ECC09660, &qword_1DAED9DA8);
    swift_storeEnumTagMultiPayload();
    sub_1DAE35B64();
    sub_1DAECFB1C();
    sub_1DAD64398(v61, &qword_1ECC09660, &qword_1DAED9DA8);
    return (v67)(v46, v18);
  }
}

uint64_t MetadataTextView.init(_:parameters:allowsCustomColors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MetadataTextView(0);
  v9 = *(v8 + 20);
  v10 = sub_1DAECFDDC();
  result = (*(*(v10 - 8) + 32))(a4, a1, v10);
  *(a4 + v9) = a2;
  *(a4 + *(v8 + 24)) = a3;
  return result;
}

uint64_t sub_1DAE2F990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09400, &qword_1DAED97F0) + 44);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09408, &qword_1DAED97F8);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2 + v6, a1, v7);
}

uint64_t sub_1DAE2FA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[1] = a6;
  v6 = sub_1DAECF1AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECF1FC();
  sub_1DAECF2EC();
  v16 = v11 & 1;
  v15 = v12 & 1;
  sub_1DAECF18C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DAE2FBF4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  v13 = *(v6 + 8);
  v14 = *(v6 + 16);
  sub_1DAECF1EC();
  sub_1DAE34E60(&qword_1ECC094C8, MEMORY[0x1E697E3C0]);
  sub_1DAED1FBC();
  sub_1DAED1FDC();
  result = sub_1DAED1FCC();
  if (result == 1)
  {
    return sub_1DAE2FA38(a1, a2 & 1, a3, a4 & 1, a5, v12);
  }

  return result;
}

uint64_t sub_1DAE2FD0C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  return sub_1DAE34C60(a9, a1, a2, a3, a4, a10, *v10);
}

void (*sub_1DAE2FDD4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DAECF02C();
  return sub_1DAE08444;
}

uint64_t sub_1DAE2FE60(int a1)
{
  v98 = a1;
  v82 = sub_1DAECFCDC();
  v81 = *(v82 - 8);
  v1 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09418, &qword_1DAED9810);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v80 - v7;
  v8 = sub_1DAECDA2C();
  v89 = *(v8 - 8);
  v90 = v8;
  v9 = *(v89 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v87 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v80 - v12;
  v13 = sub_1DAED02FC();
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v94 = &v80 - v17;
  v95 = sub_1DAECDCEC();
  v93 = *(v95 - 8);
  v18 = *(v93 + 64);
  v19 = MEMORY[0x1EEE9AC00](v95);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v80 - v22;
  v23 = sub_1DAED073C();
  v85 = *(v23 - 8);
  v86 = v23;
  v24 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093A0, &qword_1DAED94A8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v80 - v29;
  v31 = sub_1DAECFE7C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1DAECFD5C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v80 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECFD6C();
  v41 = (*(v37 + 88))(v40, v36);
  if (v41 != *MEMORY[0x1E697CAC8])
  {
    if (v41 == *MEMORY[0x1E697CAD0])
    {
      (*(v37 + 96))(v40, v36);
      v47 = v32;
      v48 = *(v32 + 32);
      v49 = v31;
      v48(v35, v40, v31);
      v50 = sub_1DAECFA4C();
      (*(*(v50 - 8) + 56))(v30, 1, 1, v50);
      v51 = sub_1DAECFE5C();
      sub_1DAD64398(v30, &qword_1ECC093A0, &qword_1DAED94A8);
      if (v51)
      {
        if ((sub_1DAECFE4C() & 1) == 0)
        {
          v67 = v85;
          v66 = v86;
          (*(v85 + 104))(v26, *MEMORY[0x1E6981630], v86);
          sub_1DAED075C();
          (*(v67 + 8))(v26, v66);
          v65 = sub_1DAED036C();

          (*(v47 + 8))(v35, v49);
          return v65;
        }

        v52 = sub_1DAED036C();
      }

      else
      {
        sub_1DAECF97C();
        v52 = sub_1DAED033C();
      }

      v65 = v52;
      (*(v47 + 8))(v35, v31);
    }

    else
    {
      if (v41 == *MEMORY[0x1E697CAB8])
      {
        (*(v37 + 96))(v40, v36);
        v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09428, &unk_1DAED9828) + 48);
        v54 = v93;
        v55 = v91;
        v56 = v95;
        (*(v93 + 32))(v91, v40, v95);
        v58 = v96;
        v57 = v97;
        v59 = v94;
        (*(v96 + 32))(v94, &v40[v53], v97);
        (*(v54 + 16))(v21, v55, v56);
        (*(v58 + 16))(v92, v59, v57);
        v60 = sub_1DAED031C();
        (*(v58 + 8))(v59, v57);
        (*(v54 + 8))(v55, v56);
        return v60;
      }

      if (v41 == *MEMORY[0x1E697CAC0])
      {
        (*(v37 + 96))(v40, v36);
        v62 = v88;
        v61 = v89;
        v63 = v90;
        (*(v89 + 32))(v88, v40, v90);
        (*(v61 + 16))(v87, v62, v63);
        v64 = sub_1DAED034C();
      }

      else
      {
        if (v41 == *MEMORY[0x1E697CAB0])
        {
          (*(v37 + 96))(v40, v36);
          v68 = *v40;
          v69 = *(v40 + 1);
          v70 = v40[16];
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A6B0, &qword_1DAED9820);
          v72 = v84;
          sub_1DAD7C48C(&v40[*(v71 + 64)], v84, &qword_1ECC09418, &qword_1DAED9810);
          sub_1DAD6495C(v72, v83, &qword_1ECC09418, &qword_1DAED9810);
          if (v70)
          {
            v73 = sub_1DAED024C();
          }

          else
          {
            v73 = sub_1DAED01FC();
          }

          v65 = v73;
          sub_1DAD64398(v72, &qword_1ECC09418, &qword_1DAED9810);
          return v65;
        }

        if (v41 == *MEMORY[0x1E697CAE0])
        {
          (*(v37 + 96))(v40, v36);
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09420, &qword_1DAED9818);
          v75 = &v40[*(v74 + 48)];
          v76 = *v75;
          v77 = v75[8];
          v78 = v40[*(v74 + 64)];
          v62 = v88;
          v61 = v89;
          v63 = v90;
          (*(v89 + 32))(v88, v40, v90);
          (*(v61 + 16))(v87, v62, v63);
          v64 = sub_1DAED028C();
        }

        else
        {
          if (v41 == *MEMORY[0x1E697CAA8])
          {
            (*(v37 + 96))(v40, v36);
            v79 = *v40;
            return sub_1DAED021C();
          }

          if (v41 != *MEMORY[0x1E697CAD8])
          {
            sub_1DAECF97C();
            v65 = sub_1DAED033C();
            (*(v37 + 8))(v40, v36);
            return v65;
          }

          (*(v37 + 96))(v40, v36);
          v61 = v81;
          v62 = v80;
          v63 = v82;
          (*(v81 + 32))(v80, v40, v82);
          v64 = sub_1DAECFCBC();
        }
      }

      v65 = v64;
      (*(v61 + 8))(v62, v63);
    }

    return v65;
  }

  (*(v37 + 96))(v40, v36);
  v43 = *v40;
  v42 = *(v40 + 1);
  if (v98)
  {
    v99 = *v40;
    v100 = v42;
    sub_1DADE6330();
    v43 = sub_1DAED235C();
    v45 = v44;

    v42 = v45;
  }

  v99 = v43;
  v100 = v42;
  sub_1DADE6330();
  return sub_1DAED035C();
}

uint64_t sub_1DAE30A74@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_1DAE30AFC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

void *MetadataTextView.parameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetadataTextView(0) + 20));
  v2 = v1;
  return v1;
}

void MetadataTextView.parameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetadataTextView(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t MetadataTextView.allowsCustomColors.setter(char a1)
{
  result = type metadata accessor for MetadataTextView(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

void MetadataTextView.body.getter(uint64_t a1@<X8>)
{
  sub_1DAE30D14();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
}

void sub_1DAE30D14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09410, &unk_1DAED9800);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v88 = &v75 - v3;
  v87 = sub_1DAED027C();
  v4 = *(v87 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v78 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1DAECFDBC();
  v90 = *(v98 - 8);
  v7 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECF97C();
  v10 = sub_1DAED033C();
  v12 = v11;
  v99 = v13;
  v15 = v14;
  v16 = type metadata accessor for MetadataTextView(0);
  v17 = *(v0 + *(v16 + 20));
  if (v17)
  {
    v89 = [v17 forceUppercase];
  }

  else
  {
    v89 = 0;
  }

  v18 = sub_1DAECFDCC();
  v86 = *(v18 + 16);
  if (!v86)
  {
LABEL_40:

    return;
  }

  v19 = 0;
  v20 = *(v16 + 24);
  v77 = v0;
  v81 = *(v0 + v20);
  v85 = v18 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
  v84 = v90 + 16;
  v80 = (v4 + 48);
  v76 = (v4 + 32);
  v75 = (v4 + 8);
  v79 = (v90 + 8);
  v21 = &selRef__registerSceneActionsHandlerArray_forKey_;
  v100 = v9;
  v83 = v17;
  v82 = v18;
  while (v19 < *(v18 + 16))
  {
    v95 = v10;
    v96 = v12;
    v97 = v15;
    v33 = *(v90 + 72);
    v101 = v19;
    (*(v90 + 16))(v9, v85 + v33 * v19, v98);
    v34 = v89;
    if (v89)
    {
      v35 = sub_1DAECFD9C();
      v36 = sub_1DAE3157C(v35);

      v34 = v36 ^ 1;
    }

    v37 = sub_1DAE2FE60(v34 & 1);
    v93 = v38;
    v94 = v37;
    v92 = v39;
    v40 = sub_1DAECFD9C();
    sub_1DAE337C8(v17);
    if (v17)
    {
      v41 = v17;
      v42 = [v41 fontSpecification];
      if (v42)
      {
        v43 = v42;
        v44 = [v42 weight];

        if (v44)
        {
          [v44 doubleValue];
          sub_1DAED010C();

          goto LABEL_16;
        }
      }
    }

    sub_1DAED012C();
LABEL_16:
    sub_1DAED017C();

    if (v17)
    {
      v45 = v17;
      v46 = [v45 fontSpecification];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 fontFeatures];

        sub_1DAD674D4(0, &qword_1EE0054E0, 0x1E69942A8);
        v49 = sub_1DAED1E7C();
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
    }

    if (v49 >> 62)
    {
      v50 = sub_1DAED247C();
      if (!v50)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v50)
      {
        goto LABEL_32;
      }
    }

    if (v50 < 1)
    {
      goto LABEL_42;
    }

    v91 = v40;

    v51 = 0;
    do
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x1E127E1F0](v51, v49);
      }

      else
      {
        v52 = *(v49 + 8 * v51 + 32);
      }

      v53 = v52;
      ++v51;
      [v52 v21[159]];
      [v53 selector];
      sub_1DAED019C();
    }

    while (v50 != v51);

    v40 = v91;
LABEL_32:

    if (v40)
    {
      sub_1DAED01CC();
    }

    v54 = v92;
    v56 = v93;
    v55 = v94;
    v57 = sub_1DAED026C();
    v59 = v58;
    v61 = v60;

    sub_1DADEA34C(v55, v56, v54 & 1);

    v62 = v88;
    sub_1DAECFDAC();
    v63 = v87;
    if ((*v80)(v62, 1, v87) == 1)
    {
      sub_1DAD64398(v62, &qword_1ECC09410, &unk_1DAED9800);
    }

    else
    {
      v64 = v78;
      (*v76)(v78, v62, v63);
      v65 = sub_1DAED030C();
      v67 = v66;
      v69 = v68;
      sub_1DADEA34C(v57, v59, v61 & 1);

      (*v75)(v64, v63);
      v57 = v65;
      v59 = v67;
      v61 = v69;
    }

    if (v81)
    {
      if (sub_1DAECFD8C())
      {
        v70 = sub_1DAED022C();
        v72 = v71;
        v74 = v73;

        sub_1DADEA34C(v57, v59, v61 & 1);

        v57 = v70;
        v59 = v72;
        v61 = v74;
      }
    }

    ++v101;
    v22 = v99;
    v23 = v95;
    v24 = v96;
    v25 = sub_1DAED025C();
    v27 = v26;
    v29 = v28;
    v30 = v23;
    v15 = v31;
    v32 = v24;
    v12 = v27;
    sub_1DADEA34C(v30, v32, v22 & 1);
    v10 = v25;

    sub_1DADEA34C(v57, v59, v61 & 1);

    v9 = v100;
    (*v79)(v100, v98);
    v19 = v101;
    v99 = v29;
    v17 = v83;
    v18 = v82;
    v21 = &selRef__registerSceneActionsHandlerArray_forKey_;
    if (v101 == v86)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

unint64_t sub_1DAE3157C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DAED247C())
    {
      v4 = 0;
      v5 = *MEMORY[0x1E69657B0];
      v9 = *MEMORY[0x1E69657A0];
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1E127E1F0](v4, v1);
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_25;
          }

          v6 = *(v1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ([v6 __swift_objectForKeyedSubscript_])
        {
          sub_1DAED238C();
          swift_unknownObjectRelease();
        }

        else
        {
          v10 = 0u;
          v11 = 0u;
        }

        v12 = v10;
        v13 = v11;
        if (!*(&v11 + 1))
        {

LABEL_23:
          sub_1DAD64398(&v12, &qword_1ECC0A3A0, &qword_1DAEDFE30);
          goto LABEL_6;
        }

        if (swift_dynamicCast())
        {
          if ([v7 __swift_objectForKeyedSubscript_])
          {
            sub_1DAED238C();

            swift_unknownObjectRelease();
          }

          else
          {

            v10 = 0u;
            v11 = 0u;
          }

          v12 = v10;
          v13 = v11;
          if (!*(&v11 + 1))
          {
            goto LABEL_23;
          }

          swift_dynamicCast();
        }

        else
        {
        }

LABEL_6:
        ++v4;
        if (v8 == i)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    return 0;
  }

  return result;
}

void sub_1DAE317B0(uint64_t a1@<X8>)
{
  sub_1DAE30D14();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
}

uint64_t sub_1DAE317E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAECF8EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094B0, &qword_1DAED9A48);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for InlineDateModifier(0);
  sub_1DAD6495C(v1 + *(v12 + 28), v11, &qword_1ECC094B0, &qword_1DAED9A48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1DAECDDEC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1DAED202C();
    v16 = sub_1DAED001C();
    sub_1DAECECEC();

    sub_1DAECF8DC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1DAE319EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAECF8EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094B8, &qword_1DAED9A80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for InlineDateModifier(0);
  sub_1DAD6495C(v1 + *(v12 + 32), v11, &qword_1ECC094B8, &qword_1DAED9A80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1DAECDDAC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1DAED202C();
    v16 = sub_1DAED001C();
    sub_1DAECECEC();

    sub_1DAECF8DC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1DAE31BF4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v100 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09508, &qword_1DAED9BA8);
  v101 = *(v4 - 8);
  v5 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v99 = &v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09510, &qword_1DAED9BB0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v84 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09518, &qword_1DAED9BB8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v96 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v84 - v16;
  v17 = sub_1DAECDCEC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09520, &qword_1DAED9BC0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v97 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v84 - v23;
  v102 = *a1;
  if (v102 && [v102 showsDateAlongsideText])
  {
    v92 = v8;
    v93 = v7;
    v94 = v4;
    v25 = *(type metadata accessor for InlineDateModifier(0) + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094D0, &qword_1DAED9A90);
    sub_1DAED077C();
    sub_1DAE32598();
    sub_1DAE34E60(&qword_1EE00A6E8, MEMORY[0x1E6969530]);
    v26 = sub_1DAED032C();
    v85 = v27;
    v29 = v28;
    v30 = v102;
    sub_1DAE337C8(v102);
    v31 = v30;
    v32 = [v31 fontSpecification];
    v91 = v11;
    if (v32 && (v33 = v32, v34 = [v32 weight], v33, v34))
    {
      [v34 doubleValue];
      sub_1DAED010C();
    }

    else
    {

      sub_1DAED012C();
    }

    v35 = sub_1DAED017C();

    v36 = v31;
    v37 = [v36 fontSpecification];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 fontFeatures];

      sub_1DAD674D4(0, &qword_1EE0054E0, 0x1E69942A8);
      v40 = sub_1DAED1E7C();
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
    }

    sub_1DAE33A18(v40, v35);

    v41 = v85;
    v89 = sub_1DAED026C();
    v87 = v42;
    v86 = v43;
    v90 = v44;

    sub_1DADEA34C(v26, v41, v29 & 1);

    v45 = v36;
    sub_1DAECF97C();
    v84 = sub_1DAED033C();
    v85 = v46;
    v48 = v47;
    sub_1DAE337C8(v102);
    v49 = v45;
    v50 = [v49 fontSpecification];
    if (v50 && (v51 = v50, v52 = [v50 weight], v51, v52))
    {
      [v52 doubleValue];
      sub_1DAED010C();
    }

    else
    {

      sub_1DAED012C();
    }

    v53 = sub_1DAED017C();

    v54 = v49;
    v55 = [v54 fontSpecification];
    v88 = v24;
    if (v55)
    {
      v56 = v55;
      v57 = [v55 fontFeatures];

      sub_1DAD674D4(0, &qword_1EE0054E0, 0x1E69942A8);
      v58 = sub_1DAED1E7C();
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
    }

    sub_1DAE33A18(v58, v53);

    v59 = v84;
    v60 = v85;
    v61 = sub_1DAED026C();
    v63 = v62;
    v65 = v64;
    v67 = v66;

    sub_1DADEA34C(v59, v60, v48 & 1);

    v103 = v61;
    v104 = v63;
    v105 = v65 & 1;
    v106 = v67;
    v107 = v102;
    v108 = 0;
    v68 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09530, &qword_1DAED9BD0);
    sub_1DAE3553C();
    v69 = v95;
    sub_1DAED050C();
    sub_1DADEA34C(v61, v63, v65 & 1);

    v70 = v96;
    sub_1DAD6495C(v69, v96, &qword_1ECC09518, &qword_1DAED9BB8);
    v71 = v91;
    v72 = v89;
    v73 = v87;
    *v91 = v89;
    *(v71 + 8) = v73;
    LOBYTE(v63) = v86 & 1;
    *(v71 + 16) = v86 & 1;
    v74 = v102;
    *(v71 + 24) = v90;
    *(v71 + 32) = v74;
    *(v71 + 40) = 1;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09538, &qword_1DAED9BD8);
    sub_1DAD6495C(v70, v71 + *(v75 + 48), &qword_1ECC09518, &qword_1DAED9BB8);
    sub_1DAE17A34(v72, v73, v63);

    v76 = v68;
    sub_1DAD64398(v69, &qword_1ECC09518, &qword_1DAED9BB8);
    sub_1DAD64398(v70, &qword_1ECC09518, &qword_1DAED9BB8);
    sub_1DADEA34C(v72, v73, v63);

    v24 = v88;
    sub_1DAD7C48C(v71, v88, &qword_1ECC09510, &qword_1DAED9BB0);
    (*(v92 + 56))(v24, 0, 1, v93);
    v4 = v94;
  }

  else
  {
    (*(v8 + 56))(v24, 1, 1, v7);
  }

  v77 = v97;
  sub_1DAD6495C(v24, v97, &qword_1ECC09520, &qword_1DAED9BC0);
  v78 = v101;
  v79 = *(v101 + 16);
  v80 = v99;
  v79(v99, v98, v4);
  v81 = v100;
  sub_1DAD6495C(v77, v100, &qword_1ECC09520, &qword_1DAED9BC0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09528, &qword_1DAED9BC8);
  v79((v81 + *(v82 + 48)), v80, v4);
  sub_1DAD64398(v24, &qword_1ECC09520, &qword_1DAED9BC0);
  (*(v78 + 8))(v80, v4);
  return sub_1DAD64398(v77, &qword_1ECC09520, &qword_1DAED9BC0);
}