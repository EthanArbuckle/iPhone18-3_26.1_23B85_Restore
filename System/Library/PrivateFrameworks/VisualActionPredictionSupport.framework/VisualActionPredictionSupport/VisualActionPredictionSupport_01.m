uint64_t sub_1D9E4C020(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16))
  {
    return 0;
  }

  if (!v6 || a1 == a2)
  {
    return 1;
  }

  v64 = v5;
  v65 = v4;
  v66 = v2;
  v67 = v3;
  v7 = (a1 + 32);
  v8 = (a2 + 32);
  for (i = v6 - 1; ; --i)
  {
    v10 = v7[3];
    v11 = v7[5];
    v53 = v7[4];
    *v54 = v11;
    *&v54[9] = *(v7 + 89);
    v12 = v7[1];
    v49 = *v7;
    v50 = v12;
    v13 = v7[3];
    v15 = *v7;
    v14 = v7[1];
    v51 = v7[2];
    v52 = v13;
    v16 = v8[1];
    v55 = *v8;
    v56 = v16;
    *&v60[9] = *(v8 + 89);
    v17 = v8[3];
    v18 = v8[5];
    v59 = v8[4];
    *v60 = v18;
    v19 = v8[3];
    v20 = *v8;
    v21 = v8[1];
    v57 = v8[2];
    v58 = v19;
    v61[0] = v15;
    v61[1] = v14;
    *(v62 + 9) = *(v7 + 89);
    v22 = v7[5];
    v61[4] = v53;
    v62[0] = v22;
    v61[2] = v51;
    v61[3] = v10;
    v62[2] = v20;
    v62[3] = v21;
    *(v63 + 9) = *(v8 + 89);
    v23 = v8[5];
    v62[6] = v59;
    v63[0] = v23;
    v62[4] = v57;
    v62[5] = v17;
    v24 = v50;
    v25 = v51;
    if (v54[24])
    {
      if (v54[24] == 1)
      {
        if (v60[24] != 1)
        {
          goto LABEL_44;
        }

        v26 = v56;
        v27 = v57;
        if (v49 != v55 && (sub_1D9F2BA1C() & 1) == 0)
        {
          goto LABEL_44;
        }

        if (v24 != v26 && (sub_1D9F2BA1C() & 1) == 0)
        {
          goto LABEL_44;
        }

        if (v25 == v27)
        {
          sub_1D9E51B38(&v55, v48);
          sub_1D9E51B38(&v49, v48);
LABEL_33:
          sub_1D9E51FE8(v61, &qword_1ECB731F8, &qword_1D9F2F5A0);
          goto LABEL_40;
        }

        v33 = sub_1D9F2BA1C();
        sub_1D9E51B38(&v55, v48);
        sub_1D9E51B38(&v49, v48);
        sub_1D9E51FE8(v61, &qword_1ECB731F8, &qword_1D9F2F5A0);
        if ((v33 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v60[24] != 2)
        {
          goto LABEL_44;
        }

        if (v49 == v55)
        {
          sub_1D9E51B38(&v49, v48);
          sub_1D9E51B38(&v55, v48);
          goto LABEL_33;
        }

        v32 = sub_1D9F2BA1C();
        sub_1D9E51B38(&v49, v48);
        sub_1D9E51B38(&v55, v48);
        sub_1D9E51FE8(v61, &qword_1ECB731F8, &qword_1D9F2F5A0);
        if ((v32 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v60[24])
      {
        goto LABEL_44;
      }

      v47 = v52;
      v42 = *(&v53 + 1);
      v43 = v53;
      v38 = *&v54[8];
      v39 = *v54;
      v28 = *&v54[16];
      v29 = v56;
      v30 = v57;
      v45 = v58;
      v46 = *(&v52 + 1);
      v44 = *(&v58 + 1);
      v40 = *(&v59 + 1);
      v41 = v59;
      v36 = *&v60[8];
      v37 = *v60;
      v31 = *&v60[16];
      if (v49 != v55 && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_44;
      }

      if (v24 != v29 && (sub_1D9F2BA1C() & 1) == 0 || v25 != v30 && (sub_1D9F2BA1C() & 1) == 0 || (v47 != v45 || v46 != v44) && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_44;
      }

      if ((v43 != v41 || v42 != v40) && (sub_1D9F2BA1C() & 1) == 0)
      {
LABEL_44:
        sub_1D9E51B38(&v55, v48);
        sub_1D9E51B38(&v49, v48);
        sub_1D9E51FE8(v61, &qword_1ECB731F8, &qword_1D9F2F5A0);
        return 0;
      }

      if (v39 == v37 && v38 == v36)
      {
        sub_1D9E51B38(&v55, v48);
        sub_1D9E51B38(&v49, v48);
        sub_1D9E51FE8(v61, &qword_1ECB731F8, &qword_1D9F2F5A0);
      }

      else
      {
        v34 = sub_1D9F2BA1C();
        sub_1D9E51B38(&v55, v48);
        sub_1D9E51B38(&v49, v48);
        sub_1D9E51FE8(v61, &qword_1ECB731F8, &qword_1D9F2F5A0);
        if ((v34 & 1) == 0)
        {
          return 0;
        }
      }

      if (v28 != v31)
      {
        return 0;
      }
    }

LABEL_40:
    if (!i)
    {
      break;
    }

    v8 += 7;
    v7 += 7;
  }

  return 1;
}

uint64_t sub_1D9E4C4CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 80);
    for (i = a2 + 40; ; i += 56)
    {
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v7 = *(v3 - 4);
      v8 = *v3;
      v16 = *(v3 - 1);
      v9 = *(i + 8);
      v10 = *(i + 16);
      v11 = *(i + 24);
      v13 = *(i + 32);
      v12 = *(i + 40);
      if ((*(v3 - 6) != *(i - 8) || *(v3 - 5) != *i) && (sub_1D9F2BA1C() & 1) == 0)
      {
        break;
      }

      if (v5 == v9 && v6 == v10)
      {
        if (v7 != v11)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_1D9F2BA1C();
        result = 0;
        if ((v14 & 1) == 0 || v7 != v11)
        {
          return result;
        }
      }

      if (v8)
      {
        if (!v12 || (v16 != v13 || v8 != v12) && (sub_1D9F2BA1C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v12)
      {
        return 0;
      }

      v3 += 14;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D9E4C634(uint64_t a1)
{
  v2 = sub_1D9E50D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4C670(uint64_t a1)
{
  v2 = sub_1D9E50D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E4C6AC(uint64_t a1)
{
  v2 = sub_1D9E50E38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4C6E8(uint64_t a1)
{
  v2 = sub_1D9E50E38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E4C724()
{
  v1 = 0x6D75626C61;
  if (*v0 != 1)
  {
    v1 = 0x636972656E6567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802465122;
  }
}

uint64_t sub_1D9E4C774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E51A24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E4C79C(uint64_t a1)
{
  v2 = sub_1D9E50C94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4C7D8(uint64_t a1)
{
  v2 = sub_1D9E50C94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E4C814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9E4C894(uint64_t a1)
{
  v2 = sub_1D9E50CE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4C8D0(uint64_t a1)
{
  v2 = sub_1D9E50CE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualLookupResult.Entity.encode(to:)(void *a1)
{
  v2 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73038, &qword_1D9F2ECE0);
  v33 = *(v34 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v29 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73040, &qword_1D9F2ECE8);
  v30 = *(v31 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73048, &qword_1D9F2ECF0);
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73050, &qword_1D9F2ECF8);
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v17 = v2[1];
  v39 = *v2;
  v40 = v17;
  v18 = v2[3];
  v35 = v2[2];
  v36 = v18;
  v19 = v2[5];
  v37 = v2[4];
  v38 = v19;
  v20 = *(v2 + 104);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E50C94();
  sub_1D9F2BB8C();
  if (v20)
  {
    if (v20 == 1)
    {
      LOBYTE(v43) = 1;
      sub_1D9E50D90();
      v22 = v42;
      sub_1D9F2B8FC();
      v43 = v39;
      v44 = v40;
      v45 = v35;
      v46 = v36;
      v47 = v37;
      v48 = v38;
      sub_1D9E50DE4();
      v23 = v31;
      sub_1D9F2B9AC();
      (*(v30 + 8))(v8, v23);
    }

    else
    {
      LOBYTE(v43) = 2;
      sub_1D9E50CE8();
      v27 = v32;
      v22 = v42;
      sub_1D9F2B8FC();
      v43 = v39;
      v44 = v40;
      sub_1D9E50D3C();
      v28 = v34;
      sub_1D9F2B9AC();
      (*(v33 + 8))(v27, v28);
    }

    return (*(v41 + 8))(v16, v22);
  }

  else
  {
    LOBYTE(v43) = 0;
    sub_1D9E50E38();
    v24 = v42;
    sub_1D9F2B8FC();
    v43 = v39;
    v44 = v40;
    v45 = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    v25 = *(v2 + 4);
    v49 = *(v2 + 3);
    v50 = v25;
    v51 = *(v2 + 5);
    v52 = v2[12];
    sub_1D9E50E8C();
    sub_1D9F2B9AC();
    (*(v29 + 8))(v12, v9);
    return (*(v41 + 8))(v16, v24);
  }
}

uint64_t VisualLookupResult.Entity.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  if (*(v0 + 104))
  {
    if (*(v0 + 104) == 1)
    {
      MEMORY[0x1DA7438F0](1);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
    }

    else
    {
      MEMORY[0x1DA7438F0](2);
    }

    return sub_1D9F2B18C();
  }

  else
  {
    v7 = *(v0 + 12);
    v14 = v0[10];
    v15 = v0[11];
    v12 = v0[8];
    v13 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
    sub_1D9F2B18C();
    sub_1D9F2B18C();
    sub_1D9F2B18C();
    sub_1D9F2B18C();
    sub_1D9F2B18C();
    v10 = 0.0;
    if (v7 != 0.0)
    {
      v10 = v7;
    }

    return MEMORY[0x1DA743920](*&v10);
  }
}

uint64_t VisualLookupResult.Entity.hashValue.getter()
{
  sub_1D9F2BAFC();
  VisualLookupResult.Entity.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t VisualLookupResult.Entity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73090, &qword_1D9F2ED00);
  v50 = *(v47 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v52 = &v43[-v4];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73098, &qword_1D9F2ED08);
  v48 = *(v49 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v43[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730A0, &qword_1D9F2ED10);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730A8, &unk_1D9F2ED18);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43[-v15];
  v17 = a1[3];
  v18 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D9E50C94();
  v19 = v53;
  sub_1D9F2BB7C();
  if (!v19)
  {
    v53 = v8;
    v20 = v52;
    v21 = sub_1D9F2B8DC();
    v22 = (2 * *(v21 + 16)) | 1;
    v68 = v21;
    v69 = v21 + 32;
    v70 = 0;
    v71 = v22;
    v23 = sub_1D9E46190();
    v24 = v12;
    if (v23 == 3 || v70 != v71 >> 1)
    {
      v27 = sub_1D9F2B6BC();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
      *v29 = &type metadata for VisualLookupResult.Entity;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v13 + 8))(v16, v24);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v12;
      v44 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          LOBYTE(v54) = 1;
          sub_1D9E50D90();
          v25 = v7;
          sub_1D9F2B7DC();
          v26 = v51;
          sub_1D9E50F34();
          v35 = v49;
          sub_1D9F2B89C();
          (*(v48 + 8))(v25, v35);
          (*(v13 + 8))(v16, v45);
          swift_unknownObjectRelease();
          v36 = v54;
          v37 = v55;
          v38 = v56;
          v39 = v57;
          v40 = v58;
          v41 = v59;
        }

        else
        {
          LOBYTE(v54) = 2;
          sub_1D9E50CE8();
          sub_1D9F2B7DC();
          v26 = v51;
          sub_1D9E50EE0();
          v34 = v47;
          sub_1D9F2B89C();
          (*(v50 + 8))(v20, v34);
          (*(v13 + 8))(v16, v45);
          swift_unknownObjectRelease();
          v36 = v54;
          v37 = v55;
        }
      }

      else
      {
        LOBYTE(v54) = 0;
        sub_1D9E50E38();
        v32 = v45;
        sub_1D9F2B7DC();
        sub_1D9E50F88();
        v33 = v53;
        sub_1D9F2B89C();
        (*(v46 + 8))(v11, v33);
        (*(v13 + 8))(v16, v32);
        swift_unknownObjectRelease();
        v36 = v54;
        v37 = v55;
        v38 = v56;
        v39 = v57;
        v40 = v58;
        v41 = v59;
        v64 = v60;
        v65 = v61;
        v66 = v62;
        v67 = v63;
        v26 = v51;
      }

      *v26 = v36;
      *(v26 + 8) = v37;
      *(v26 + 16) = v38;
      *(v26 + 24) = v39;
      *(v26 + 32) = v40;
      *(v26 + 40) = v41;
      v42 = v65;
      *(v26 + 48) = v64;
      *(v26 + 64) = v42;
      *(v26 + 80) = v66;
      *(v26 + 96) = v67;
      *(v26 + 104) = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_1D9E4D788()
{
  sub_1D9F2BAFC();
  VisualLookupResult.Entity.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E4D7CC()
{
  sub_1D9F2BAFC();
  VisualLookupResult.Entity.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t VisualLookupResult.entities.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t VisualLookupResult.resultItems.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

VisualActionPredictionSupport::VisualLookupResult __swiftcall VisualLookupResult.init(entities:resultItems:)(Swift::OpaquePointer entities, Swift::OpaquePointer resultItems)
{
  v2->_rawValue = entities._rawValue;
  v2[1]._rawValue = resultItems._rawValue;
  result.resultItems = resultItems;
  result.entities = entities;
  return result;
}

uint64_t static VisualLookupResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D9E4C020(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D9E4C4CC(v2, v3);
}

uint64_t sub_1D9E4D918()
{
  if (*v0)
  {
    result = 0x7449746C75736572;
  }

  else
  {
    result = 0x7365697469746E65;
  }

  *v0;
  return result;
}

uint64_t sub_1D9E4D95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7449746C75736572 && a2 == 0xEB00000000736D65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9E4DA3C(uint64_t a1)
{
  v2 = sub_1D9E50FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4DA78(uint64_t a1)
{
  v2 = sub_1D9E50FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualLookupResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730C8, &qword_1D9F2ED28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E50FDC();

  sub_1D9F2BB8C();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730D8, &qword_1D9F2ED30);
  sub_1D9E51150(&qword_1ECB730E0, sub_1D9E51030);
  sub_1D9F2B9AC();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730F0, &qword_1D9F2ED38);
    sub_1D9E51084(&qword_1ECB730F8, sub_1D9E510FC);
    sub_1D9F2B9AC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t VisualLookupResult.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1D9E5074C(a1, v3);

  return sub_1D9E50640(a1, v4);
}

uint64_t VisualLookupResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9E5074C(v4, v1);
  sub_1D9E50640(v4, v2);
  return sub_1D9F2BB4C();
}

uint64_t VisualLookupResult.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73108, &qword_1D9F2ED40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E50FDC();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730D8, &qword_1D9F2ED30);
  v15 = 0;
  sub_1D9E51150(&qword_1ECB73110, sub_1D9E511C8);
  sub_1D9F2B89C();
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730F0, &qword_1D9F2ED38);
  v15 = 1;
  sub_1D9E51084(&qword_1ECB73120, sub_1D9E5121C);
  sub_1D9F2B89C();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E4E040()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9E5074C(v4, v1);
  sub_1D9E50640(v4, v2);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E4E094(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1D9E5074C(a1, v3);

  return sub_1D9E50640(a1, v4);
}

uint64_t sub_1D9E4E0D4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9E5074C(v4, v1);
  sub_1D9E50640(v4, v2);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E4E124(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D9E4C020(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D9E4C4CC(v2, v3);
}

void *sub_1D9E4E180()
{
  v1 = type metadata accessor for DetectedEntity();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v55 = (&v53 - v7);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v53 - v11;
  v13 = *v0;
  v53 = v0[1];
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 80);
    v16 = MEMORY[0x1E69E7CC0];
    v56 = v1;
    v54 = v10;
    while (1)
    {
      v20 = *(v15 - 2);
      v19 = *(v15 - 1);
      v66 = *(v15 - 3);
      v67 = v20;
      v68 = v19;
      v21 = *v15;
      v22 = v15[1];
      v23 = v15[2];
      *(v71 + 9) = *(v15 + 41);
      v70 = v22;
      v71[0] = v23;
      v69 = v21;
      v24 = *(&v66 + 1);
      v25 = v67;
      v26 = v68;
      v27 = *v15;
      v28 = v15[1];
      v29 = v15[2];
      v75 = *(v15 + 6);
      v73 = v28;
      v74 = v29;
      v72 = v27;
      if (BYTE8(v71[1]))
      {
        if (BYTE8(v71[1]) != 1)
        {
          v36 = v55;
          *v55 = v66;
          v36[1] = v24;
          swift_storeEnumTagMultiPayload();
          sub_1D9E51B38(&v66, &v60);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_1D9F0C150(0, v16[2] + 1, 1, v16);
          }

          v38 = v16[2];
          v37 = v16[3];
          if (v38 >= v37 >> 1)
          {
            v16 = sub_1D9F0C150((v37 > 1), v38 + 1, 1, v16);
          }

          sub_1D9E51B70(&v66);
          *(&v61 + 1) = v56;
          *&v62 = &off_1EECD2758;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
          v40 = v55;
          sub_1D9E51E08(v55, boxed_opaque_existential_1, type metadata accessor for DetectedEntity);
          v16[2] = v38 + 1;
          sub_1D9E3EE4C(&v60, &v16[5 * v38 + 4]);
          sub_1D9E51F3C(v40, type metadata accessor for DetectedEntity);
          v10 = v54;
          goto LABEL_5;
        }

        *v10 = v66;
        *(v10 + 1) = v24;
        *(v10 + 1) = v25;
        *(v10 + 2) = v26;
        swift_storeEnumTagMultiPayload();
        sub_1D9E51B38(&v66, &v60);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D9F0C150(0, v16[2] + 1, 1, v16);
        }

        v31 = v16[2];
        v30 = v16[3];
        if (v31 >= v30 >> 1)
        {
          v16 = sub_1D9F0C150((v30 > 1), v31 + 1, 1, v16);
        }

        sub_1D9E51B70(&v66);
        *(&v61 + 1) = v56;
        *&v62 = &off_1EECD2758;
        v17 = __swift_allocate_boxed_opaque_existential_1(&v60);
        sub_1D9E51E08(v10, v17, type metadata accessor for DetectedEntity);
        v16[2] = v31 + 1;
        sub_1D9E3EE4C(&v60, &v16[5 * v31 + 4]);
        v18 = v10;
      }

      else
      {
        *v12 = v66;
        *(v12 + 1) = v24;
        *(v12 + 1) = v25;
        *(v12 + 2) = v26;
        v32 = v73;
        *(v12 + 3) = v72;
        *(v12 + 4) = v32;
        *(v12 + 5) = v74;
        *(v12 + 12) = v75;
        swift_storeEnumTagMultiPayload();
        v64 = v70;
        v65[0] = v71[0];
        *(v65 + 9) = *(v71 + 9);
        v60 = v66;
        v61 = v67;
        v62 = v68;
        v63 = v69;
        sub_1D9E51B38(&v66, &v57);
        sub_1D9E51C04(&v60, &v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D9F0C150(0, v16[2] + 1, 1, v16);
        }

        v34 = v16[2];
        v33 = v16[3];
        if (v34 >= v33 >> 1)
        {
          v16 = sub_1D9F0C150((v33 > 1), v34 + 1, 1, v16);
        }

        sub_1D9E51B70(&v66);
        v58 = v56;
        v59 = &off_1EECD2758;
        v35 = __swift_allocate_boxed_opaque_existential_1(&v57);
        sub_1D9E51E08(v12, v35, type metadata accessor for DetectedEntity);
        v16[2] = v34 + 1;
        sub_1D9E3EE4C(&v57, &v16[5 * v34 + 4]);
        v18 = v12;
      }

      sub_1D9E51F3C(v18, type metadata accessor for DetectedEntity);
LABEL_5:
      v15 += 7;
      --v14;
      v1 = v56;
      if (!v14)
      {
        goto LABEL_23;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v41 = *(v53 + 16);
  if (v41)
  {
    v42 = (v53 + 80);
    do
    {
      v43 = *(v42 - 5);
      v44 = *(v42 - 4);
      v45 = *(v42 - 3);
      v46 = *(v42 - 4);
      v47 = *(v42 - 1);
      v48 = *v42;
      *v5 = *(v42 - 6);
      *(v5 + 1) = v43;
      *(v5 + 2) = v44;
      *(v5 + 3) = v45;
      *(v5 + 8) = v46;
      *(v5 + 5) = v47;
      *(v5 + 6) = v48;
      swift_storeEnumTagMultiPayload();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D9F0C150(0, v16[2] + 1, 1, v16);
      }

      v50 = v16[2];
      v49 = v16[3];
      if (v50 >= v49 >> 1)
      {
        v16 = sub_1D9F0C150((v49 > 1), v50 + 1, 1, v16);
      }

      v42 += 7;
      *(&v67 + 1) = v1;
      *&v68 = &off_1EECD2758;
      v51 = __swift_allocate_boxed_opaque_existential_1(&v66);
      sub_1D9E51E08(v5, v51, type metadata accessor for DetectedEntity);
      v16[2] = v50 + 1;
      sub_1D9E3EE4C(&v66, &v16[5 * v50 + 4]);
      sub_1D9E51F3C(v5, type metadata accessor for DetectedEntity);
      --v41;
    }

    while (v41);
  }

  return v16;
}

uint64_t sub_1D9E4E78C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DetectedEntity();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D9E4E7F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9F2AD7C();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v30 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = v29 - v7;
  v8 = type metadata accessor for Feedback.Event(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = v29 - v14;
  v16 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v16);
  v38 = v16;
  if (v16)
  {
    v18 = 0;
    v37 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v36 = *(v9 + 72);
    v32 = (v31 + 32);
    v33 = v15;
    v19 = (v31 + 8);
    v29[0] = v13;
    v29[1] = v8;
    do
    {
      v39 = v18;
      sub_1D9E51E08(v37 + v36 * v18, v15, type metadata accessor for Feedback.Event);
      sub_1D9E51E08(v15, v13, type metadata accessor for Feedback.Event);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = *v13;
        MEMORY[0x1DA7438F0](1);
        MEMORY[0x1DA7438F0](*(v22 + 16));
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = v30;
          v25 = (*(v31 + 80) + 32) & ~*(v31 + 80);
          v35 = v22;
          v26 = v22 + v25;
          v27 = *(v31 + 72);
          v28 = *(v31 + 16);
          do
          {
            v28(v24, v26, v3);
            sub_1D9E51C60(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
            sub_1D9F2B0EC();
            (*v19)(v24, v3);
            v26 += v27;
            --v23;
          }

          while (v23);

          v13 = v29[0];
        }

        else
        {
        }

        v20 = v33;
      }

      else
      {
        v20 = v15;
        v21 = v34;
        (*v32)(v34, v13, v3);
        MEMORY[0x1DA7438F0](0);
        sub_1D9E51C60(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
        sub_1D9F2B0EC();
        (*v19)(v21, v3);
      }

      result = sub_1D9E51F3C(v20, type metadata accessor for Feedback.Event);
      v18 = v39 + 1;
      v15 = v20;
    }

    while (v39 + 1 != v38);
  }

  return result;
}

uint64_t sub_1D9E4EBD0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731B8, &unk_1D9F2F580);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v8);
  if (v8)
  {
    v10 = &v7[*(v3 + 28)];
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_1D9E51E70(v11, v7, &qword_1ECB731B8, &unk_1D9F2F580);
      sub_1D9F2AC4C();
      sub_1D9E51C60(&qword_1ECB731C8, MEMORY[0x1E6968FB0]);
      sub_1D9F2B0EC();
      if (*(v10 + 1))
      {
        v12 = *v10;
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
      }

      else
      {
        sub_1D9F2BB1C();
      }

      result = sub_1D9E51FE8(v7, &qword_1ECB731B8, &unk_1D9F2F580);
      v11 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1D9E4EDA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v7 = *(v5 - 5);
      v6 = *(v5 - 4);
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);
      v11 = *(v5 - 1);
      v10 = *v5;

      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2BB1C();
      if (v10)
      {

        sub_1D9F2B18C();

        result = swift_bridgeObjectRelease_n();
      }

      else
      {
      }

      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E4EEB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[1];
      v14 = *v5;
      v15 = v6;
      v7 = v5[3];
      v16 = v5[2];
      v17 = v7;
      v8 = v5[5];
      v18 = v5[4];
      v19 = v8;
      v9 = *(&v15 + 1);
      v10 = *(&v16 + 1);
      v11 = *(&v17 + 1);
      v12 = *(&v18 + 1);
      if (*(&v14 + 1))
      {
        sub_1D9F2BB1C();
        sub_1D9E51E70(&v14, v13, &qword_1ECB731D0, &qword_1D9F42160);
        sub_1D9F2B18C();
        if (v9)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1D9F2BB1C();
        sub_1D9E51E70(&v14, v13, &qword_1ECB731D0, &qword_1D9F42160);
        if (v9)
        {
LABEL_7:
          sub_1D9F2BB1C();
          sub_1D9F2B18C();
          if (v10)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }

      sub_1D9F2BB1C();
      if (v10)
      {
LABEL_8:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (v11)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D9F2BB1C();
      if (v11)
      {
LABEL_9:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_1D9F2BB1C();
      if (v12)
      {
LABEL_10:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (!*(&v19 + 1))
        {
          goto LABEL_17;
        }

        goto LABEL_3;
      }

LABEL_16:
      sub_1D9F2BB1C();
      if (!*(&v19 + 1))
      {
LABEL_17:
        sub_1D9F2BB1C();
        goto LABEL_4;
      }

LABEL_3:
      sub_1D9F2BB1C();

      sub_1D9F2B18C();

LABEL_4:
      result = sub_1D9E51FE8(&v14, &qword_1ECB731D0, &qword_1D9F42160);
      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E4F0BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v9 = *(v5 - 1);
      v8 = *v5;

      sub_1D9F2B18C();
      sub_1D9F2BB1C();
      if (v8)
      {

        sub_1D9F2B18C();

        result = swift_bridgeObjectRelease_n();
      }

      else
      {
      }

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E4F198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v9);
  v19 = v9;
  if (v9)
  {
    v11 = 0;
    v17[5] = 0x80000001D9F47C50;
    v18 = a2 + 32;
    v17[3] = 0x80000001D9F47BF0;
    v17[4] = 0x80000001D9F47C20;
    v17[1] = 0x80000001D9F47B90;
    v17[2] = 0x80000001D9F47BC0;
    do
    {
      v12 = v18 + 16 * v11;
      v13 = *(v12 + 8);
      *v12;

      sub_1D9F2B18C();

      MEMORY[0x1DA7438F0](*(v13 + 16));
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v16 = *(v5 + 72);
        do
        {
          sub_1D9E51E08(v15, v8, type metadata accessor for DetectedEntity);
          DetectedEntity.hash(into:)(a1);
          sub_1D9E51F3C(v8, type metadata accessor for DetectedEntity);
          v15 += v16;
          --v14;
        }

        while (v14);
      }

      ++v11;
    }

    while (v11 != v19);
  }

  return result;
}

uint64_t sub_1D9E4F52C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PredictedAction();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v8);
  if (v8)
  {
    v10 = v3[6];
    v38 = &v7[v3[5]];
    v11 = &v7[v10];
    v12 = v3[8];
    v37 = &v7[v3[7]];
    v36 = &v7[v12];
    v13 = v3[9];
    v34 = &v7[v3[10]];
    v35 = v13;
    v14 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v33 = *(v4 + 72);
    while (1)
    {
      sub_1D9E51E08(v14, v7, type metadata accessor for PredictedAction);
      sub_1D9F2AD7C();
      sub_1D9E51C60(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
      v15 = v7;
      sub_1D9F2B0EC();
      v16 = *v38;
      v17 = *(v38 + 1);
      sub_1D9F2B18C();
      v18 = *v11;
      v19 = *(v11 + 1);
      v20 = *(v11 + 2);
      if (v11[48] > 1u)
      {
        break;
      }

      if (v11[48])
      {
        MEMORY[0x1DA7438F0](1);
        if (v20)
        {
          if (v20 != 1)
          {
            v7 = v15;
            switch(v18)
            {
              case 1:
                v31 = 1;
                break;
              case 2:
                v31 = 2;
                break;
              case 3:
                v31 = 3;
                break;
              case 4:
                v31 = 4;
                break;
              case 5:
                v31 = 5;
                break;
              case 6:
                v31 = 6;
                break;
              case 7:
                v31 = 7;
                break;
              case 8:
                v31 = 8;
                break;
              case 9:
                v31 = 9;
                break;
              case 10:
                v31 = 10;
                break;
              case 11:
                v31 = 11;
                break;
              case 12:
                v31 = 12;
                break;
              case 13:
                v31 = 13;
                break;
              default:
                v31 = 0;
                break;
            }

            MEMORY[0x1DA7438F0](v31);
            goto LABEL_16;
          }

          v21 = 15;
        }

        else
        {
          v21 = 14;
        }

LABEL_13:
        MEMORY[0x1DA7438F0](v21);
        goto LABEL_14;
      }

      MEMORY[0x1DA7438F0](0);
      sub_1D9F2B18C();
      sub_1D9F2BB1C();
LABEL_15:
      v7 = v15;
LABEL_16:
      v24 = *v37;
      v25 = *(v37 + 1);
      sub_1D9F2B18C();
      v26 = *v36;
      v27 = *(v36 + 1);
      sub_1D9F2B18C();
      MEMORY[0x1DA7438F0](v7[v35]);
      v28 = *v34;
      v29 = v34[1];
      v30 = v34[2];
      sub_1D9F2BB1C();
      sub_1D9F2BB1C();
      sub_1D9F2BB1C();
      result = sub_1D9E51F3C(v7, type metadata accessor for PredictedAction);
      v14 += v33;
      if (!--v8)
      {
        return result;
      }
    }

    if (v11[48] == 2)
    {
      v21 = 2;
      goto LABEL_13;
    }

    v22 = *(v11 + 5);
    v32[0] = *(v11 + 4);
    v32[1] = v22;
    v23 = *(v11 + 3);
    MEMORY[0x1DA7438F0](3);
    sub_1D9F2B18C();
    sub_1D9F2B18C();
LABEL_14:
    sub_1D9F2B18C();
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1D9E4F8D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_1D9F2BB2C();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E4F938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedAction();
  v120 = *(v4 - 1);
  v5 = *(v120 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v107 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v107 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v118 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v117 = &v107 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v107 - v20;
  v21 = type metadata accessor for QueryResult.DisplayItem(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  v26 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v26);
  v121 = v26;
  if (v26)
  {
    v28 = v25;
    v29 = &v25[*(v21 + 24)];
    v30 = type metadata accessor for PredictedActionSet();
    v31 = v30[5];
    v113 = v30[6];
    v114 = v31;
    v32 = v30[7];
    v33 = v122 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v111 = *(v22 + 72);
    v112 = v32;
    v34 = (v120 + 48);
    v109 = v11;
    v110 = v8;
    v108 = v13;
    v119 = (v120 + 48);
    v120 = v29;
    v115 = v28;
    while (1)
    {
      sub_1D9E51E08(v33, v28, type metadata accessor for QueryResult.DisplayItem);
      v35 = v28[1];
      v36 = v28[2];
      sub_1D9F2B18C();
      v37 = *v28;
      sub_1D9F2B57C();
      v38 = v116;
      sub_1D9E51E70(v29, v116, &qword_1ECB731E8, &qword_1D9F37F70);
      v122 = *v34;
      if (v122(v38, 1, v4) == 1)
      {
        sub_1D9F2BB1C();
        goto LABEL_20;
      }

      sub_1D9E51ED8(v38, v13);
      sub_1D9F2BB1C();
      sub_1D9F2AD7C();
      sub_1D9E51C60(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
      sub_1D9F2B0EC();
      v39 = &v13[v4[5]];
      v40 = *v39;
      v41 = *(v39 + 1);
      sub_1D9F2B18C();
      v42 = &v13[v4[6]];
      v44 = *v42;
      v43 = *(v42 + 1);
      v45 = *(v42 + 2);
      if (v42[48] > 1u)
      {
        break;
      }

      if (v42[48])
      {
        MEMORY[0x1DA7438F0](1);
        if (v45)
        {
          if (v45 != 1)
          {
            switch(v44)
            {
              case 1:
                v104 = 1;
                break;
              case 2:
                v104 = 2;
                break;
              case 3:
                v104 = 3;
                break;
              case 4:
                v104 = 4;
                break;
              case 5:
                v104 = 5;
                break;
              case 6:
                v104 = 6;
                break;
              case 7:
                v104 = 7;
                break;
              case 8:
                v104 = 8;
                break;
              case 9:
                v104 = 9;
                break;
              case 10:
                v104 = 10;
                break;
              case 11:
                v104 = 11;
                break;
              case 12:
                v104 = 12;
                break;
              case 13:
                v104 = 13;
                break;
              default:
                v104 = 0;
                break;
            }

            MEMORY[0x1DA7438F0](v104);
            goto LABEL_19;
          }

          v46 = 15;
        }

        else
        {
          v46 = 14;
        }

LABEL_17:
        MEMORY[0x1DA7438F0](v46);
        goto LABEL_18;
      }

      MEMORY[0x1DA7438F0](0);
      sub_1D9F2B18C();
      sub_1D9F2BB1C();
LABEL_19:
      v29 = v120;
      v50 = &v13[v4[7]];
      v51 = *v50;
      v52 = *(v50 + 1);
      sub_1D9F2B18C();
      v53 = &v13[v4[8]];
      v54 = *v53;
      v55 = *(v53 + 1);
      sub_1D9F2B18C();
      MEMORY[0x1DA7438F0](v13[v4[9]]);
      v56 = &v13[v4[10]];
      v57 = *v56;
      v58 = v56[1];
      v59 = v56[2];
      sub_1D9F2BB1C();
      sub_1D9F2BB1C();
      sub_1D9F2BB1C();
      sub_1D9E51F3C(v13, type metadata accessor for PredictedAction);
      v34 = v119;
LABEL_20:
      v60 = v117;
      sub_1D9E51E70(v29 + v114, v117, &qword_1ECB731E8, &qword_1D9F37F70);
      if (v122(v60, 1, v4) == 1)
      {
        sub_1D9F2BB1C();
        goto LABEL_35;
      }

      sub_1D9E51ED8(v60, v11);
      sub_1D9F2BB1C();
      sub_1D9F2AD7C();
      sub_1D9E51C60(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
      sub_1D9F2B0EC();
      v61 = &v11[v4[5]];
      v62 = *v61;
      v63 = *(v61 + 1);
      sub_1D9F2B18C();
      v64 = &v11[v4[6]];
      v66 = *v64;
      v65 = *(v64 + 1);
      v67 = *(v64 + 2);
      if (v64[48] > 1u)
      {
        if (v64[48] == 2)
        {
          v68 = 2;
          goto LABEL_32;
        }

        v70 = *(v64 + 4);
        v69 = *(v64 + 5);
        v71 = *(v64 + 3);
        MEMORY[0x1DA7438F0](3);
        sub_1D9F2B18C();
        v13 = v108;
        sub_1D9F2B18C();
        v11 = v109;
        v8 = v110;
LABEL_33:
        sub_1D9F2B18C();
        goto LABEL_34;
      }

      if (v64[48])
      {
        MEMORY[0x1DA7438F0](1);
        if (v67)
        {
          if (v67 != 1)
          {
            switch(v66)
            {
              case 1:
                v105 = 1;
                break;
              case 2:
                v105 = 2;
                break;
              case 3:
                v105 = 3;
                break;
              case 4:
                v105 = 4;
                break;
              case 5:
                v105 = 5;
                break;
              case 6:
                v105 = 6;
                break;
              case 7:
                v105 = 7;
                break;
              case 8:
                v105 = 8;
                break;
              case 9:
                v105 = 9;
                break;
              case 10:
                v105 = 10;
                break;
              case 11:
                v105 = 11;
                break;
              case 12:
                v105 = 12;
                break;
              case 13:
                v105 = 13;
                break;
              default:
                v105 = 0;
                break;
            }

            MEMORY[0x1DA7438F0](v105);
            goto LABEL_34;
          }

          v68 = 15;
        }

        else
        {
          v68 = 14;
        }

LABEL_32:
        MEMORY[0x1DA7438F0](v68);
        goto LABEL_33;
      }

      MEMORY[0x1DA7438F0](0);
      sub_1D9F2B18C();
      sub_1D9F2BB1C();
LABEL_34:
      v29 = v120;
      v72 = &v11[v4[7]];
      v73 = *v72;
      v74 = *(v72 + 1);
      sub_1D9F2B18C();
      v75 = &v11[v4[8]];
      v76 = *v75;
      v77 = *(v75 + 1);
      sub_1D9F2B18C();
      MEMORY[0x1DA7438F0](v11[v4[9]]);
      v78 = &v11[v4[10]];
      v79 = *v78;
      v80 = v78[1];
      v81 = v78[2];
      sub_1D9F2BB1C();
      sub_1D9F2BB1C();
      sub_1D9F2BB1C();
      sub_1D9E51F3C(v11, type metadata accessor for PredictedAction);
      v34 = v119;
LABEL_35:
      v82 = v118;
      sub_1D9E51E70(v29 + v113, v118, &qword_1ECB731E8, &qword_1D9F37F70);
      if (v122(v82, 1, v4) != 1)
      {
        sub_1D9E51ED8(v82, v8);
        sub_1D9F2BB1C();
        sub_1D9F2AD7C();
        sub_1D9E51C60(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
        sub_1D9F2B0EC();
        v83 = &v8[v4[5]];
        v84 = *v83;
        v85 = *(v83 + 1);
        sub_1D9F2B18C();
        v86 = &v8[v4[6]];
        v87 = *v86;
        v88 = *(v86 + 1);
        v89 = *(v86 + 2);
        if (v86[48] > 1u)
        {
          if (v86[48] == 2)
          {
            v90 = 2;
            goto LABEL_46;
          }

          v92 = *(v86 + 4);
          v91 = *(v86 + 5);
          v93 = *(v86 + 3);
          MEMORY[0x1DA7438F0](3);
          sub_1D9F2B18C();
          v13 = v108;
          sub_1D9F2B18C();
          v11 = v109;
          v8 = v110;
        }

        else
        {
          if (!v86[48])
          {
            MEMORY[0x1DA7438F0](0);
            sub_1D9F2B18C();
            sub_1D9F2BB1C();
            goto LABEL_48;
          }

          MEMORY[0x1DA7438F0](1);
          if (v89)
          {
            if (v89 == 1)
            {
              v90 = 15;
              goto LABEL_46;
            }

            v29 = v120;
            switch(v87)
            {
              case 1:
                v106 = 1;
                break;
              case 2:
                v106 = 2;
                break;
              case 3:
                v106 = 3;
                break;
              case 4:
                v106 = 4;
                break;
              case 5:
                v106 = 5;
                break;
              case 6:
                v106 = 6;
                break;
              case 7:
                v106 = 7;
                break;
              case 8:
                v106 = 8;
                break;
              case 9:
                v106 = 9;
                break;
              case 10:
                v106 = 10;
                break;
              case 11:
                v106 = 11;
                break;
              case 12:
                v106 = 12;
                break;
              case 13:
                v106 = 13;
                break;
              default:
                v106 = 0;
                break;
            }

            MEMORY[0x1DA7438F0](v106);
LABEL_49:
            v94 = &v8[v4[7]];
            v95 = *v94;
            v96 = *(v94 + 1);
            sub_1D9F2B18C();
            v97 = &v8[v4[8]];
            v98 = *v97;
            v99 = *(v97 + 1);
            sub_1D9F2B18C();
            MEMORY[0x1DA7438F0](v8[v4[9]]);
            v100 = &v8[v4[10]];
            v101 = *v100;
            v102 = v100[1];
            v103 = v100[2];
            sub_1D9F2BB1C();
            sub_1D9F2BB1C();
            sub_1D9F2BB1C();
            sub_1D9E51F3C(v8, type metadata accessor for PredictedAction);
            v34 = v119;
            goto LABEL_4;
          }

          v90 = 14;
LABEL_46:
          MEMORY[0x1DA7438F0](v90);
        }

        sub_1D9F2B18C();
LABEL_48:
        v29 = v120;
        goto LABEL_49;
      }

      sub_1D9F2BB1C();
LABEL_4:
      sub_1D9E4F52C(a1, *(v29 + v112));
      v28 = v115;
      result = sub_1D9E51F3C(v115, type metadata accessor for QueryResult.DisplayItem);
      v33 += v111;
      if (!--v121)
      {
        return result;
      }
    }

    if (v42[48] == 2)
    {
      v46 = 2;
      goto LABEL_17;
    }

    v48 = *(v42 + 4);
    v47 = *(v42 + 5);
    v49 = *(v42 + 3);
    MEMORY[0x1DA7438F0](3);
    sub_1D9F2B18C();
    v11 = v109;
    sub_1D9F2B18C();
    v13 = v108;
    v8 = v110;
LABEL_18:
    sub_1D9F2B18C();
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1D9E504F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v10 = *v5;
      v5 += 4;
      v9 = v10;

      sub_1D9F2B18C();
      if (v8 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v8;
      }

      MEMORY[0x1DA743920](*&v11);
      MEMORY[0x1DA7438F0](*&v9);

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E50594(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v9 = v5[3];
      v10 = v5[4];
      MEMORY[0x1DA7438F0](*(v5 - 1));
      MEMORY[0x1DA7438F0](v6);
      MEMORY[0x1DA7438F0](v7);
      MEMORY[0x1DA7438F0](v8);
      sub_1D9E400F4(v9, v10);
      sub_1D9F2AC9C();
      result = sub_1D9E4015C(v9, v10);
      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E50640(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 80);
    do
    {
      v7 = *(v5 - 6);
      v6 = *(v5 - 5);
      v9 = *(v5 - 4);
      v8 = *(v5 - 3);
      v10 = *(v5 - 4);
      v12 = *(v5 - 1);
      v11 = *v5;

      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2BB2C();
      sub_1D9F2BB1C();
      if (v11)
      {
        sub_1D9F2B18C();
      }

      v5 += 7;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E5074C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v8 = v5[1];
      v11[0] = *v5;
      v11[1] = v8;
      *&v12[9] = *(v5 + 89);
      v9 = v5[3];
      v11[2] = v5[2];
      v11[3] = v9;
      v10 = v5[5];
      v11[4] = v5[4];
      *v12 = v10;
      if (v12[24])
      {
        if (v12[24] == 1)
        {
          MEMORY[0x1DA7438F0](1);

          sub_1D9F2B18C();
          sub_1D9F2B18C();
        }

        else
        {
          MEMORY[0x1DA7438F0](2);
        }

        sub_1D9F2B18C();
      }

      else
      {
        v6 = *&v12[16];
        MEMORY[0x1DA7438F0](0);

        sub_1D9F2B18C();
        sub_1D9F2B18C();
        sub_1D9F2B18C();
        sub_1D9F2B18C();
        sub_1D9F2B18C();
        sub_1D9F2B18C();
        if (v6 == 0.0)
        {
          v7 = 0.0;
        }

        else
        {
          v7 = v6;
        }

        MEMORY[0x1DA743920](*&v7);
      }

      result = sub_1D9E51B70(v11);
      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s29VisualActionPredictionSupport0A12LookupResultV6EntityO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v33 = a1[4];
  *v34 = v3;
  *&v34[9] = *(a1 + 89);
  v4 = a1[1];
  v29 = *a1;
  v30 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v31 = a1[2];
  v32 = v5;
  v8 = a2[1];
  v35 = *a2;
  v36 = v8;
  *&v40[9] = *(a2 + 89);
  v9 = a2[3];
  v10 = a2[5];
  v39 = a2[4];
  *v40 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v37 = a2[2];
  v38 = v11;
  v41[0] = v7;
  v41[1] = v6;
  *(v42 + 9) = *(a1 + 89);
  v14 = a1[5];
  v41[4] = v33;
  v42[0] = v14;
  v41[2] = v31;
  v41[3] = v2;
  v42[2] = v12;
  v42[3] = v13;
  *(v43 + 9) = *(a2 + 89);
  v15 = a2[5];
  v42[6] = v39;
  v43[0] = v15;
  v42[4] = v37;
  v42[5] = v9;
  if (v34[24])
  {
    if (v34[24] == 1)
    {
      if (v40[24] == 1 && (v29 == v35 || (sub_1D9F2BA1C() & 1) != 0) && (v30 == v36 || (sub_1D9F2BA1C() & 1) != 0))
      {
        if (v31 != v37)
        {
          v16 = sub_1D9F2BA1C();
          sub_1D9E51B38(&v35, v28);
          sub_1D9E51B38(&v29, v28);
          sub_1D9E51FE8(v41, &qword_1ECB731F8, &qword_1D9F2F5A0);
          return (v16 & 1) != 0;
        }

        goto LABEL_15;
      }

LABEL_16:
      sub_1D9E51B38(&v35, v28);
      sub_1D9E51B38(&v29, v28);
      sub_1D9E51FE8(v41, &qword_1ECB731F8, &qword_1D9F2F5A0);
      return 0;
    }

    if (v40[24] != 2)
    {
      goto LABEL_16;
    }

    if (v29 == v35)
    {
LABEL_15:
      sub_1D9E51B38(&v35, v28);
      sub_1D9E51B38(&v29, v28);
      sub_1D9E51FE8(v41, &qword_1ECB731F8, &qword_1D9F2F5A0);
      return 1;
    }

    v23 = sub_1D9F2BA1C();
    sub_1D9E51B38(&v35, v28);
    sub_1D9E51B38(&v29, v28);
    sub_1D9E51FE8(v41, &qword_1ECB731F8, &qword_1D9F2F5A0);
    v21 = 0;
    if (v23)
    {
      return 1;
    }
  }

  else
  {
    if (v40[24])
    {
      goto LABEL_16;
    }

    v26[0] = v29;
    v26[1] = v30;
    v26[2] = v31;
    v17 = a1[4];
    v26[3] = a1[3];
    v26[4] = v17;
    v26[5] = a1[5];
    v27 = *(a1 + 12);
    v18 = a2[5];
    v24[4] = a2[4];
    v24[5] = v18;
    v25 = *(a2 + 12);
    v19 = a2[1];
    v24[0] = *a2;
    v24[1] = v19;
    v20 = a2[3];
    v24[2] = a2[2];
    v24[3] = v20;
    v21 = _s29VisualActionPredictionSupport4BookV2eeoiySbAC_ACtFZ_0(v26, v24);
    sub_1D9E51B38(&v35, v28);
    sub_1D9E51B38(&v29, v28);
    sub_1D9E51FE8(v41, &qword_1ECB731F8, &qword_1D9F2F5A0);
  }

  return v21;
}

unint64_t sub_1D9E50C94()
{
  result = qword_1ECB73058;
  if (!qword_1ECB73058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73058);
  }

  return result;
}

unint64_t sub_1D9E50CE8()
{
  result = qword_1ECB73060;
  if (!qword_1ECB73060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73060);
  }

  return result;
}

unint64_t sub_1D9E50D3C()
{
  result = qword_1ECB73068;
  if (!qword_1ECB73068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73068);
  }

  return result;
}

unint64_t sub_1D9E50D90()
{
  result = qword_1ECB73070;
  if (!qword_1ECB73070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73070);
  }

  return result;
}

unint64_t sub_1D9E50DE4()
{
  result = qword_1ECB73078;
  if (!qword_1ECB73078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73078);
  }

  return result;
}

unint64_t sub_1D9E50E38()
{
  result = qword_1ECB73080;
  if (!qword_1ECB73080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73080);
  }

  return result;
}

unint64_t sub_1D9E50E8C()
{
  result = qword_1ECB73088;
  if (!qword_1ECB73088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73088);
  }

  return result;
}

unint64_t sub_1D9E50EE0()
{
  result = qword_1ECB730B0;
  if (!qword_1ECB730B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB730B0);
  }

  return result;
}

unint64_t sub_1D9E50F34()
{
  result = qword_1ECB730B8;
  if (!qword_1ECB730B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB730B8);
  }

  return result;
}

unint64_t sub_1D9E50F88()
{
  result = qword_1ECB730C0;
  if (!qword_1ECB730C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB730C0);
  }

  return result;
}

unint64_t sub_1D9E50FDC()
{
  result = qword_1ECB730D0;
  if (!qword_1ECB730D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB730D0);
  }

  return result;
}

unint64_t sub_1D9E51030()
{
  result = qword_1ECB730E8;
  if (!qword_1ECB730E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB730E8);
  }

  return result;
}

uint64_t sub_1D9E51084(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB730F0, &qword_1D9F2ED38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9E510FC()
{
  result = qword_1ECB73100;
  if (!qword_1ECB73100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73100);
  }

  return result;
}

uint64_t sub_1D9E51150(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB730D8, &qword_1D9F2ED30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9E511C8()
{
  result = qword_1ECB73118;
  if (!qword_1ECB73118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73118);
  }

  return result;
}

unint64_t sub_1D9E5121C()
{
  result = qword_1ECB73128;
  if (!qword_1ECB73128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73128);
  }

  return result;
}

unint64_t sub_1D9E51274()
{
  result = qword_1ECB73130;
  if (!qword_1ECB73130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73130);
  }

  return result;
}

unint64_t sub_1D9E512CC()
{
  result = qword_1ECB73138;
  if (!qword_1ECB73138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73138);
  }

  return result;
}

uint64_t sub_1D9E51320(uint64_t *a1, int a2)
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

uint64_t sub_1D9E51368(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D9E513EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 105))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 104);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9E51434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D9E51500()
{
  result = qword_1ECB73140;
  if (!qword_1ECB73140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73140);
  }

  return result;
}

unint64_t sub_1D9E51558()
{
  result = qword_1ECB73148;
  if (!qword_1ECB73148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73148);
  }

  return result;
}

unint64_t sub_1D9E515B0()
{
  result = qword_1ECB73150;
  if (!qword_1ECB73150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73150);
  }

  return result;
}

unint64_t sub_1D9E51608()
{
  result = qword_1ECB73158;
  if (!qword_1ECB73158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73158);
  }

  return result;
}

unint64_t sub_1D9E51660()
{
  result = qword_1ECB73160;
  if (!qword_1ECB73160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73160);
  }

  return result;
}

unint64_t sub_1D9E516B8()
{
  result = qword_1ECB73168;
  if (!qword_1ECB73168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73168);
  }

  return result;
}

unint64_t sub_1D9E51710()
{
  result = qword_1ECB73170;
  if (!qword_1ECB73170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73170);
  }

  return result;
}

unint64_t sub_1D9E51768()
{
  result = qword_1ECB73178;
  if (!qword_1ECB73178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73178);
  }

  return result;
}

unint64_t sub_1D9E517C0()
{
  result = qword_1ECB73180;
  if (!qword_1ECB73180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73180);
  }

  return result;
}

unint64_t sub_1D9E51818()
{
  result = qword_1ECB73188;
  if (!qword_1ECB73188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73188);
  }

  return result;
}

unint64_t sub_1D9E51870()
{
  result = qword_1ECB73190;
  if (!qword_1ECB73190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73190);
  }

  return result;
}

unint64_t sub_1D9E518C8()
{
  result = qword_1ECB73198;
  if (!qword_1ECB73198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73198);
  }

  return result;
}

unint64_t sub_1D9E51920()
{
  result = qword_1ECB731A0;
  if (!qword_1ECB731A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB731A0);
  }

  return result;
}

unint64_t sub_1D9E51978()
{
  result = qword_1ECB731A8;
  if (!qword_1ECB731A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB731A8);
  }

  return result;
}

unint64_t sub_1D9E519D0()
{
  result = qword_1ECB731B0;
  if (!qword_1ECB731B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB731B0);
  }

  return result;
}

uint64_t sub_1D9E51A24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802465122 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D75626C61 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D9E51C60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9E51CA8(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 1u)
  {
    if (a7 != 2)
    {
      if (a7 != 3)
      {
        return result;
      }
    }

LABEL_12:
  }

  if (!a7)
  {
    goto LABEL_12;
  }

  if (a7 == 1)
  {

    return sub_1D9E51D40(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D9E51D40(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D9E51D58(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 1u)
  {
    if (a7 != 2)
    {
      if (a7 != 3)
      {
        return result;
      }
    }

LABEL_12:
  }

  if (!a7)
  {
    goto LABEL_12;
  }

  if (a7 == 1)
  {

    return sub_1D9E51DF0(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D9E51DF0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D9E51E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9E51E70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D9E51ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9E51F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9E51F9C()
{
  result = qword_1ECB731F0;
  if (!qword_1ECB731F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB731F0);
  }

  return result;
}

uint64_t sub_1D9E51FE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D9E5204C()
{
  v0 = sub_1D9F2B73C();
  __swift_allocate_value_buffer(v0, qword_1ECB73200);
  __swift_project_value_buffer(v0, qword_1ECB73200);
  return sub_1D9F2B72C();
}

uint64_t withTimeProfiling<A>(_:instrument:)(void (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v18[1] = a4;
  v19 = a3;
  v5 = sub_1D9F2B71C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  if (qword_1EE0F1850 != -1)
  {
    swift_once();
  }

  v13 = sub_1D9F2B73C();
  __swift_project_value_buffer(v13, qword_1ECB73200);
  v14 = sub_1D9F2B6FC();
  a1(v14);
  sub_1D9F2B6FC();
  v15 = sub_1D9F2B70C();
  v19(v15);
  v16 = *(v6 + 8);
  v16(v10, v5);
  return (v16)(v12, v5);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t withAsyncTimeProfiling<A>(_:instrument:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1D9F2B71C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9E52358, 0, 0);
}

uint64_t sub_1D9E52358()
{
  if (qword_1EE0F1850 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[3];
  v3 = sub_1D9F2B73C();
  v0[11] = __swift_project_value_buffer(v3, qword_1ECB73200);
  sub_1D9F2B6FC();
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1D9E524A8;
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7);
}

uint64_t sub_1D9E524A8()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1D9E5269C;
  }

  else
  {
    v3 = sub_1D9E525BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9E525BC()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  sub_1D9F2B6FC();
  v8 = sub_1D9F2B70C();
  v7(v8);
  v9 = *(v4 + 8);
  v9(v3, v5);
  v9(v1, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D9E5269C()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  sub_1D9F2B6FC();
  v8 = sub_1D9F2B70C();
  v7(v8);
  v9 = *(v4 + 8);
  v9(v3, v5);
  v9(v1, v5);

  v10 = v0[1];
  v11 = v0[13];

  return v10();
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

uint64_t sub_1D9E527EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedActionSet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9E528A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65536E6F69746361 && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9E52930(uint64_t a1)
{
  v2 = sub_1D9E532D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5296C(uint64_t a1)
{
  v2 = sub_1D9E532D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExecutionFollowup.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73218, &unk_1D9F2F5B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E532D4();
  sub_1D9F2BB8C();
  type metadata accessor for PredictedActionSet();
  sub_1D9E534F0(&qword_1ECB73228, type metadata accessor for PredictedActionSet);
  sub_1D9F2B9AC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ExecutionFollowup.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PredictedAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v22 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  sub_1D9E53328(v2, &v22 - v17);
  v19 = *(v5 + 48);
  if (v19(v18, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9E53440(v18, v8, type metadata accessor for PredictedAction);
    sub_1D9F2BB1C();
    PredictedAction.hash(into:)();
    sub_1D9E53398(v8);
  }

  v20 = type metadata accessor for PredictedActionSet();
  sub_1D9E53328(v2 + v20[5], v16);
  if (v19(v16, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9E53440(v16, v8, type metadata accessor for PredictedAction);
    sub_1D9F2BB1C();
    PredictedAction.hash(into:)();
    sub_1D9E53398(v8);
  }

  sub_1D9E53328(v2 + v20[6], v13);
  if (v19(v13, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9E53440(v13, v8, type metadata accessor for PredictedAction);
    sub_1D9F2BB1C();
    PredictedAction.hash(into:)();
    sub_1D9E53398(v8);
  }

  return sub_1D9E4F52C(a1, *(v2 + v20[7]));
}

uint64_t ExecutionFollowup.hashValue.getter()
{
  sub_1D9F2BAFC();
  ExecutionFollowup.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t ExecutionFollowup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for PredictedActionSet();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73230, &qword_1D9F2F5C0);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ExecutionFollowup();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E532D4();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v16 = v19;
    sub_1D9E534F0(&qword_1ECB73238, type metadata accessor for PredictedActionSet);
    v17 = v21;
    sub_1D9F2B89C();
    (*(v20 + 8))(v10, v7);
    sub_1D9E53440(v17, v14, type metadata accessor for PredictedActionSet);
    sub_1D9E53440(v14, v16, type metadata accessor for ExecutionFollowup);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E530D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73218, &unk_1D9F2F5B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E532D4();
  sub_1D9F2BB8C();
  type metadata accessor for PredictedActionSet();
  sub_1D9E534F0(&qword_1ECB73228, type metadata accessor for PredictedActionSet);
  sub_1D9F2B9AC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D9E53250()
{
  sub_1D9F2BAFC();
  ExecutionFollowup.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E53294()
{
  sub_1D9F2BAFC();
  ExecutionFollowup.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9E532D4()
{
  result = qword_1ECB73220;
  if (!qword_1ECB73220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73220);
  }

  return result;
}

uint64_t sub_1D9E53328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9E53398(uint64_t a1)
{
  v2 = type metadata accessor for PredictedAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ExecutionFollowup()
{
  result = qword_1ECB73248;
  if (!qword_1ECB73248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9E53440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9E534F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9E53560()
{
  result = type metadata accessor for PredictedActionSet();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D9E535E0()
{
  result = qword_1ECB73258;
  if (!qword_1ECB73258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73258);
  }

  return result;
}

unint64_t sub_1D9E53638()
{
  result = qword_1ECB73260;
  if (!qword_1ECB73260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73260);
  }

  return result;
}

unint64_t sub_1D9E53690()
{
  result = qword_1ECB73268;
  if (!qword_1ECB73268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73268);
  }

  return result;
}

uint64_t sub_1D9E53700@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = v2[*(a1 + 32)];
  sub_1D9F2AD7C();
  v6 = *(a1 + 16);
  sub_1D9F2B38C();
  sub_1D9E5501C();
  sub_1D9F2B0AC();
  v7 = sub_1D9F2B59C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = TupleTypeMetadata2;
  if (v5 == 1)
  {
    v10 = *(*(TupleTypeMetadata2 - 8) + 56);

    return v10(a2, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v12 = *(TupleTypeMetadata2 + 48);
    *a2 = *v2;
    (*(*(v7 - 8) + 16))(&a2[v12], &v2[*(a1 + 28)], v7);
    (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
  }
}

uint64_t sub_1D9E538A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D9F2AD7C();
  sub_1D9F2B38C();
  sub_1D9E5501C();
  *a2 = sub_1D9F2B07C();
  v4 = type metadata accessor for AsyncMultiplexer.Context();
  result = (*(*(a1 - 8) + 56))(a2 + *(v4 + 28), 1, 1, a1);
  *(a2 + *(v4 + 32)) = 0;
  return result;
}

void sub_1D9E53958(void (*a1)(uint64_t))
{
  v3 = v1[3];
  v4 = *(*v1 + 80);
  type metadata accessor for AsyncMultiplexer.Context();
  v5 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  a1(v3 + v5);
  os_unfair_lock_unlock((v3 + v6));
}

uint64_t AsyncMultiplexer.__allocating_init(configuration:)(char *a1)
{
  v2 = swift_allocObject();
  AsyncMultiplexer.init(configuration:)(a1);
  return v2;
}

uint64_t AsyncMultiplexer.init(configuration:)(char *a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for AsyncMultiplexer.Context();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *a1;
  sub_1D9E538A4(v3, (&v12 - v7));
  v10 = sub_1D9E54F84();
  (*(v5 + 8))(v8, v4);
  *(v1 + 24) = v10;
  *(v1 + 16) = v9;
  return v1;
}

uint64_t AsyncMultiplexer.deinit()
{
  AsyncMultiplexer.cancel()();
  v1 = *(v0 + 24);

  return v0;
}

Swift::Void __swiftcall AsyncMultiplexer.cancel()()
{
  v1 = *(*v0 + 80);
  sub_1D9F2AD7C();
  sub_1D9F2B38C();
  sub_1D9E5501C();
  sub_1D9F2B0AC();
  sub_1D9E53958(sub_1D9E55000);
  swift_getWitnessTable();
  sub_1D9F2B1FC();
}

uint64_t AsyncMultiplexer.__deallocating_deinit()
{
  AsyncMultiplexer.cancel()();
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t AsyncMultiplexer.send(_:)(uint64_t a1)
{
  v3 = *v1;
  sub_1D9F2AD7C();
  v4 = *(v3 + 80);
  sub_1D9F2B38C();
  sub_1D9E5501C();
  sub_1D9F2B0AC();
  sub_1D9E53958(sub_1D9E550C8);
  swift_getWitnessTable();
  sub_1D9F2B1FC();

  return (*(*(v4 - 8) + 8))(a1, v4);
}

uint64_t sub_1D9E53E6C@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2[16] == 1)
  {
    v7 = *(*a2 + 80);
    v8 = type metadata accessor for AsyncMultiplexer.Context();
    if ((a1[*(v8 + 32)] & 1) == 0)
    {
      v9 = *(v8 + 28);
      v10 = sub_1D9F2B59C();
      (*(*(v10 - 8) + 8))(&a1[v9], v10);
      v11 = *(v7 - 8);
      (*(v11 + 16))(&a1[v9], a3, v7);
      (*(v11 + 56))(&a1[v9], 0, 1, v7);
    }
  }

  *a4 = *a1;
}

uint64_t sub_1D9E53FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9F2B34C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v6 + 16))(v9, a3, a4);
  sub_1D9F2B38C();
  sub_1D9F2B36C();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1D9E5412C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_1D9F2AD7C();
  sub_1D9F2B38C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1D9E541BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for AsyncMultiplexer.Context();
  *(a1 + *(v6 + 32)) = 1;
  v7 = *(v6 + 28);
  v8 = sub_1D9F2B59C();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  (*(*(a2 - 8) + 56))(a1 + v7, 1, 1, a2);
  *a3 = *a1;
}

uint64_t AsyncMultiplexer.makeStream(bufferingPolicy:)@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = *(*v1 + 80);
  v59 = sub_1D9F2B34C();
  v58 = *(v59 - 8);
  v3 = *(v58 + 64);
  v4 = MEMORY[0x1EEE9AC00](v59);
  v57 = &v56 - v5;
  v61 = *(v2 - 8);
  v6 = *(v61 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v56 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v56 - v9;
  v68 = sub_1D9F2B59C();
  v64 = *(v68 - 8);
  v10 = *(v64 + 64);
  v11 = MEMORY[0x1EEE9AC00](v68);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v56 - v13;
  v67 = type metadata accessor for AsyncMultiplexer.Context.State();
  v77 = *(v67 - 8);
  v14 = *(v77 + 64);
  v15 = MEMORY[0x1EEE9AC00](v67);
  v66 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v56 - v17;
  v18 = sub_1D9F2AD7C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v56 - v23;
  v25 = sub_1D9F2B38C();
  v72 = *(v25 - 8);
  v26 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v56 - v27;
  v29 = sub_1D9F2B39C();
  v70 = *(v29 - 8);
  v71 = v29;
  v30 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v69 = &v56 - v31;
  sub_1D9F2B33C();
  sub_1D9F2A93C();
  v32 = swift_allocObject();
  swift_weakInit();
  (*(v19 + 16))(v22, v24, v18);
  v33 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  *(v34 + 24) = v32;
  v35 = v77;
  v73 = v19;
  v36 = v19;
  v37 = v65;
  v38 = v34 + v33;
  v39 = v67;
  (*(v36 + 32))(v38, v22, v18);
  sub_1D9F2B35C();
  v78 = v2;
  v79 = v24;
  v74 = v24;
  v40 = v25;
  v41 = v66;
  v80 = v28;
  sub_1D9E53958(sub_1D9E55188);
  v42 = v68;
  (*(v35 + 16))(v41, v37, v39);
  sub_1D9E5501C();
  sub_1D9F2B0AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v41, 1, TupleTypeMetadata2) == 1)
  {
    sub_1D9F2B37C();
    (*(v35 + 8))(v37, v39);
  }

  else
  {
    v44 = *v41;

    v45 = v64;
    v46 = v41 + *(TupleTypeMetadata2 + 48);
    v47 = v63;
    (*(v64 + 32))(v63, v46, v42);
    if (v76[16] == 1)
    {
      v76 = v28;
      v48 = v60;
      (*(v45 + 16))(v60, v47, v42);
      v49 = v61;
      if ((*(v61 + 48))(v48, 1, v2) == 1)
      {
        v50 = *(v45 + 8);
        v50(v47, v42);
        (*(v77 + 8))(v37, v39);
        v50(v48, v42);
        v28 = v76;
      }

      else
      {
        (*(v49 + 32))(v62, v48, v2);
        (*(v49 + 16))(v56, v62, v2);
        v66 = v18;
        v51 = v39;
        v52 = v57;
        v53 = v76;
        sub_1D9F2B36C();
        (*(v58 + 8))(v52, v59);
        (*(v49 + 8))(v62, v2);
        v28 = v53;
        (*(v45 + 8))(v47, v42);
        v54 = v51;
        v18 = v66;
        (*(v77 + 8))(v37, v54);
      }
    }

    else
    {
      (*(v45 + 8))(v47, v42);
      (*(v77 + 8))(v37, v39);
    }
  }

  (*(v70 + 32))(v75, v69, v71);
  (*(v73 + 8))(v74, v18);
  return (*(v72 + 8))(v28, v40);
}

uint64_t sub_1D9E54B3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    sub_1D9E53958(sub_1D9E55E2C);
  }

  return result;
}

uint64_t sub_1D9E54BF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9F2B38C();
  v4 = sub_1D9F2B59C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = sub_1D9F2AD7C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
  sub_1D9E5501C();
  sub_1D9F2B0AC();
  return sub_1D9F2B0CC();
}

uint64_t sub_1D9E54D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v22 = a3;
  v7 = sub_1D9F2B38C();
  v8 = sub_1D9F2B59C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  v12 = sub_1D9F2AD7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AsyncMultiplexer.Context();
  if ((*(a1 + *(v17 + 32)) & 1) == 0)
  {
    v18 = v17;
    (*(v13 + 16))(v16, a2, v12);
    v19 = *(v7 - 8);
    (*(v19 + 16))(v11, v22, v7);
    (*(v19 + 56))(v11, 0, 1, v7);
    sub_1D9E5501C();
    sub_1D9F2B0AC();
    sub_1D9F2B0CC();
    v17 = v18;
  }

  return sub_1D9E53700(v17, a4);
}

uint64_t sub_1D9E54F84()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1D9F2B6DC();
  return sub_1D9F2B6CC();
}

unint64_t sub_1D9E5501C()
{
  result = qword_1EE0F22A8;
  if (!qword_1EE0F22A8)
  {
    sub_1D9F2AD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F22A8);
  }

  return result;
}

uint64_t sub_1D9E55074()
{
  v1 = *(v0 + 16);
  sub_1D9F2B38C();
  return sub_1D9F2B37C();
}

uint64_t sub_1D9E550A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1D9E5412C(a1, *(v1 + 24));
}

uint64_t sub_1D9E55104()
{
  v1 = *(v0 + 16);
  v2 = *(*(sub_1D9F2AD7C() - 8) + 80);
  v3 = *(v0 + 24);

  return sub_1D9E54B3C();
}

uint64_t sub_1D9E55240()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for PredictionOverrides(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D9E55348(uint64_t a1)
{
  sub_1D9F2AD7C();
  v2 = *(a1 + 16);
  sub_1D9F2B38C();
  sub_1D9E5501C();
  sub_1D9F2B0AC();
  sub_1D9F2B59C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1D9E55404(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 - 1 >= a2)
  {
    goto LABEL_31;
  }

  v10 = v9 + ((v8 + 8) & ~v8);
  v11 = 8 * v10;
  if (v10 > 3)
  {
    goto LABEL_12;
  }

  v14 = (((1 << v11) + a2 - v7) >> v11) + 1;
  if (HIWORD(v14))
  {
    v12 = *(a1 + v10);
    if (v12)
    {
      goto LABEL_20;
    }

LABEL_31:
    if ((v6 & 0x80000000) != 0)
    {
      v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
      v17 = v18 - 1;
      if (v18 < 2)
      {
        v17 = 0;
      }
    }

    else
    {
      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      v17 = v16 + 1;
    }

    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v14 > 0xFF)
  {
    v12 = *(a1 + v10);
    if (*(a1 + v10))
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  if (v14 < 2)
  {
    goto LABEL_31;
  }

LABEL_12:
  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_31;
  }

LABEL_20:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + v7;
}

void sub_1D9E555C8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 - 1;
  v13 = *(v7 + 80);
  v14 = *(*(*(a4 + 16) - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = ((v13 + 8) & ~v13) + v14;
  if (v12 < a3)
  {
    v16 = (((1 << (8 * v15)) + a3 - v11) >> (8 * v15)) + 1;
    v17 = HIWORD(v16);
    if (v16 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v16 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v17)
    {
      v19 = 4;
    }

    if (v15 <= 3)
    {
      v6 = v19;
    }

    else
    {
      v6 = 1;
    }
  }

  if (v12 < a2)
  {
    v20 = a2 - v11;
    if (v15 < 4)
    {
      v21 = (v20 >> (8 * v15)) + 1;
      if (v15)
      {
        v22 = v20 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v22;
            if (v6 > 1)
            {
LABEL_61:
              if (v6 == 2)
              {
                *&a1[v15] = v21;
              }

              else
              {
                *&a1[v15] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v6 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v6 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, ((v13 + 8) & ~v13) + v14);
      *a1 = v20;
      v21 = 1;
      if (v6 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v6)
    {
      a1[v15] = v21;
    }

    return;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v15] = 0;
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v6)
  {
    goto LABEL_35;
  }

  a1[v15] = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if ((v10 & 0x80000000) != 0)
  {
    v23 = (&a1[v13 + 8] & ~v13);
    v24 = a2 - v10;
    if (a2 >= v10)
    {
      if (v14 <= 3)
      {
        v28 = ~(-1 << (8 * v14));
      }

      else
      {
        v28 = -1;
      }

      if (v14)
      {
        v29 = v28 & v24;
        if (v14 <= 3)
        {
          v30 = v14;
        }

        else
        {
          v30 = 4;
        }

        bzero(v23, v14);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            *v23 = v29;
            v23[2] = BYTE2(v29);
          }

          else
          {
            *v23 = v29;
          }
        }

        else if (v30 == 1)
        {
          *v23 = v29;
        }

        else
        {
          *v23 = v29;
        }
      }
    }

    else
    {
      v25 = *(v8 + 56);
      v26 = a2 + 2;
      v27 = &a1[v13 + 8] & ~v13;

      v25(v27, v26);
    }
  }

  else if ((a2 + 1) < 0)
  {
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t sub_1D9E558AC(uint64_t a1)
{
  sub_1D9F2AD7C();
  v2 = *(a1 + 16);
  sub_1D9F2B38C();
  sub_1D9E5501C();
  result = sub_1D9F2B0AC();
  if (v4 <= 0x3F)
  {
    result = sub_1D9F2B59C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9E55974(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_32;
  }

  v11 = v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1D9E55B34(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 8) & ~v11) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 8) & ~v11) != -1)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26(v22, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

uint64_t sub_1D9E55E48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

void _s29VisualActionPredictionSupport17SystemXPCListenerV8activate4withyAA28ServiceListenerShimCallbacksVyAA0E13XPCConnectionVAA10XPCFailureOG_tAKYKF(__int128 *a1)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v14 = *(a1 + 4);
  v3 = v14;
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  v17 = *(v1 + 32);
  v5 = *(v1 + 5);
  sub_1D9E56074(&v15, aBlock);
  xpc_connection_set_target_queue(v5, v3);
  v6 = swift_allocObject();
  v7 = v13;
  *(v6 + 16) = v12;
  *(v6 + 32) = v7;
  v8 = v16;
  *(v6 + 56) = v15;
  *(v6 + 48) = v14;
  *(v6 + 72) = v8;
  *(v6 + 88) = v17;
  aBlock[4] = sub_1D9E56A20;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9E56A2C;
  aBlock[3] = &block_descriptor;
  v9 = _Block_copy(aBlock);
  sub_1D9E56AA4(&v12, v10);

  xpc_connection_set_event_handler(v5, v9);
  _Block_release(v9);
  xpc_connection_activate(v5);
}

void sub_1D9E560D0(_xpc_connection_s *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2B02C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v84[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a2 + 32);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  v13 = sub_1D9F2B04C();
  (*(v7 + 8))(v10, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = sub_1D9F2AF1C();
  v15 = MEMORY[0x1DA744500](a1);
  if (v15 == v14)
  {
    v19 = *(a3 + 24);
    v20 = *(v19 + 16);
    if (!v20)
    {
LABEL_9:
      v27 = *(a3 + 8);
      v28 = *(a3 + 16);
      v29 = *(a3 + 32);
      v30 = *(a2 + 16);
      v31 = *(a2 + 24);
      v85 = *a3;
      v86 = v27;
      v87 = v28;
      v88 = v19;
      v89 = v29 & 1;
      v90 = a1;
      sub_1D9E56074(a3, v84);
      swift_unknownObjectRetain();
      v30(&v85);
      swift_unknownObjectRelease();

      return;
    }

    v21 = (v19 + 40);
    while (1)
    {
      v23 = *(v21 - 1);
      v22 = *v21;

      v24 = sub_1D9F2AF1C();
      v25 = MEMORY[0x1DA744500](a1);
      if (v25 != v24)
      {
        v23 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1D9F2F8F0;
        *(v32 + 32) = v24;
        v85 = v23;
        v86 = v32;
        v33 = 1;
        LOBYTE(v87) = 1;
        sub_1D9E56B78();
        swift_willThrowTypedImpl();

        goto LABEL_12;
      }

      sub_1D9F2B15C();
      v26 = xpc_connection_copy_entitlement_value();

      if (!v26)
      {
        break;
      }

      swift_unknownObjectRelease();
      v21 += 2;
      if (!--v20)
      {
        goto LABEL_9;
      }
    }

    v85 = v23;
    v86 = v22;
    v33 = 4;
    LOBYTE(v87) = 4;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    v32 = v22;
LABEL_12:
    sub_1D9E56B78();
    v10 = swift_allocError();
    *v34 = v23;
    *(v34 + 8) = v32;
    *(v34 + 16) = v33;
    v35 = v10;
    if (qword_1ECB72A98 != -1)
    {
      swift_once();
    }

    v36 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v36, qword_1ECB73940);
    v37 = v10;
    v38 = sub_1D9F2AE6C();
    v39 = sub_1D9F2B43C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v85 = v41;
      *v40 = 136315138;
      ErrorValue = swift_getErrorValue();
      v43 = *(*(v91 - 8) + 64);
      MEMORY[0x1EEE9AC00](ErrorValue);
      (*(v45 + 16))(&v84[-1] - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
      v46 = sub_1D9F2B13C();
      v48 = sub_1D9E71CA4(v46, v47, &v85);

      *(v40 + 4) = v48;
      _os_log_impl(&dword_1D9E39000, v38, v39, "Rejected XPC connection: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1DA744270](v41, -1, -1);
      MEMORY[0x1DA744270](v40, -1, -1);
    }

    xpc_connection_cancel(a1);
    swift_willThrow();
  }

  else
  {
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D9F2F8F0;
    *(v17 + 32) = v14;
    v85 = v16;
    v86 = v17;
    LOBYTE(v87) = 1;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    v10 = swift_allocError();
    *v18 = v16;
    *(v18 + 8) = v17;
    *(v18 + 16) = 1;
  }

  v49 = v10;
  sub_1D9EAC23C(a1, &v85);
  LOBYTE(v6) = v87;
  if (v87 != 255)
  {
    a1 = v85;
    v13 = v86;

    if (qword_1ECB72A98 == -1)
    {
LABEL_19:
      v50 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v50, qword_1ECB73940);
      sub_1D9E56E7C(a1, v13, v6);
      v51 = sub_1D9F2AE6C();
      v52 = sub_1D9F2B43C();
      sub_1D9E56EC8(a1, v13, v6);
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v83 = a2;
        v84[0] = v54;
        v55 = v54;
        *v53 = 136315138;
        v85 = a1;
        v86 = v13;
        LOBYTE(v87) = v6;
        sub_1D9E56E7C(a1, v13, v6);
        v56 = XPCFailure.description.getter();
        v58 = v57;
        sub_1D9E56E30(v85, v86, v87);
        v59 = sub_1D9E71CA4(v56, v58, v84);

        *(v53 + 4) = v59;
        _os_log_impl(&dword_1D9E39000, v51, v52, "Encountered XPC error: %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        v60 = v55;
        a2 = v83;
        MEMORY[0x1DA744270](v60, -1, -1);
        MEMORY[0x1DA744270](v53, -1, -1);
      }

      v61 = *a2;
      v62 = *(a2 + 8);
      v85 = a1;
      v86 = v13;
      LOBYTE(v87) = v6;
      v61(&v85);

      sub_1D9E56EC8(a1, v13, v6);
      return;
    }

LABEL_31:
    swift_once();
    goto LABEL_19;
  }

  if (qword_1ECB72A98 != -1)
  {
    swift_once();
  }

  v63 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v63, qword_1ECB73940);
  v64 = v10;
  v65 = sub_1D9F2AE6C();
  v66 = sub_1D9F2B43C();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v85 = v68;
    *v67 = 136315138;
    v69 = swift_getErrorValue();
    v70 = *(*(v92 - 8) + 64);
    MEMORY[0x1EEE9AC00](v69);
    (*(v72 + 16))(&v84[-1] - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
    v73 = sub_1D9F2B13C();
    v75 = sub_1D9E71CA4(v73, v74, &v85);

    *(v67 + 4) = v75;
    _os_log_impl(&dword_1D9E39000, v65, v66, "Failed to handle XPC event: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x1DA744270](v68, -1, -1);
    MEMORY[0x1DA744270](v67, -1, -1);
  }

  v84[0] = v10;
  v76 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73288, &qword_1D9F334E0);
  if (swift_dynamicCast())
  {
    v78 = v85;
    v77 = v86;
    v79 = v87;
  }

  else
  {
    v80 = v10;
    v77 = 0;
    v79 = 0;
    v78 = v10;
  }

  v81 = *a2;
  v82 = *(a2 + 8);
  v85 = v78;
  v86 = v77;
  LOBYTE(v87) = v79;
  v81(&v85);

  sub_1D9E56E30(v85, v86, v87);
}

uint64_t sub_1D9E56A2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9E56AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB73270, &qword_1D9F2F900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9E56B20()
{
  result = qword_1EE0F2938;
  if (!qword_1EE0F2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2938);
  }

  return result;
}

unint64_t sub_1D9E56B78()
{
  result = qword_1EE0F3070;
  if (!qword_1EE0F3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3070);
  }

  return result;
}

void sub_1D9E56BCC(__int128 *a1)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v14 = *(a1 + 4);
  v3 = v14;
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  v17 = *(v1 + 32);
  v5 = *(v1 + 5);
  sub_1D9E56074(&v15, aBlock);
  xpc_connection_set_target_queue(v5, v3);
  v6 = swift_allocObject();
  v7 = v13;
  *(v6 + 16) = v12;
  *(v6 + 32) = v7;
  v8 = v16;
  *(v6 + 56) = v15;
  *(v6 + 48) = v14;
  *(v6 + 72) = v8;
  *(v6 + 88) = v17;
  aBlock[4] = sub_1D9E56EDC;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9E56A2C;
  aBlock[3] = &block_descriptor_7;
  v9 = _Block_copy(aBlock);
  sub_1D9E56AA4(&v12, v10);

  xpc_connection_set_event_handler(v5, v9);
  _Block_release(v9);
  xpc_connection_activate(v5);
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

uint64_t sub_1D9E56D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D9E56D7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

void sub_1D9E56E30(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {

      return;
    }

    if (a3 != 1)
    {
      return;
    }

LABEL_5:

    return;
  }

  if (a3 == 2)
  {
    goto LABEL_5;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      return;
    }

    goto LABEL_5;
  }

  swift_unknownObjectRelease();
}

id sub_1D9E56E7C(id result, id a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      return result;
    }

    if (a3 != 1)
    {
      return result;
    }
  }

  if (a3 == 2)
  {
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      return result;
    }
  }

  return swift_unknownObjectRetain();
}

void sub_1D9E56EC8(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1D9E56E30(a1, a2, a3);
  }
}

void static VisualActionPredictionServiceDefinition.descriptor.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000002CLL;
  *(a1 + 8) = 0x80000001D9F479F0;
  *(a1 + 16) = 25;
  *(a1 + 24) = &unk_1F555DDC8;
  *(a1 + 32) = 0;
}

void sub_1D9E56F1C(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000002CLL;
  *(a1 + 8) = 0x80000001D9F479F0;
  *(a1 + 16) = 25;
  *(a1 + 24) = &unk_1F555DDF8;
  *(a1 + 32) = 0;
}

uint64_t sub_1D9E56F70(uint64_t a1)
{
  v2 = sub_1D9E5702C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E56FAC(uint64_t a1)
{
  v2 = sub_1D9E5702C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9E5702C()
{
  result = qword_1EE0F1FE8;
  if (!qword_1EE0F1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1FE8);
  }

  return result;
}

uint64_t sub_1D9E57100(uint64_t a1)
{
  v2 = sub_1D9E571BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5713C(uint64_t a1)
{
  v2 = sub_1D9E571BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9E571BC()
{
  result = qword_1EE0F1F30[0];
  if (!qword_1EE0F1F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F1F30);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.PredictionRequest.workflow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

__n128 VisualActionPredictionServiceDefinition.PredictionRequest.options.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest(0) + 24));
  v4 = v3->n128_u8[8];
  v5 = v3[2].n128_u8[0];
  v6 = v3[2].n128_u8[1];
  a1->n128_u64[0] = v3->n128_u64[0];
  a1->n128_u8[8] = v4;
  result = v3[1];
  a1[1] = result;
  a1[2].n128_u8[0] = v5;
  a1[2].n128_u8[1] = v6;
  return result;
}

uint64_t VisualActionPredictionServiceDefinition.PredictionRequest.init(visualContext:workflow:options:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = a3[2];
  v9 = a3[3];
  v10 = *(a3 + 32);
  v11 = *(a3 + 33);
  sub_1D9E57E24(a1, a4, type metadata accessor for VisualContext);
  result = type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest(0);
  *(a4 + *(result + 20)) = v5;
  v13 = a4 + *(result + 24);
  *v13 = v6;
  *(v13 + 8) = v7;
  *(v13 + 16) = v8;
  *(v13 + 24) = v9;
  *(v13 + 32) = v10;
  *(v13 + 33) = v11;
  return result;
}

uint64_t sub_1D9E573B4()
{
  v1 = 0x776F6C666B726F77;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F436C6175736976;
  }
}

uint64_t sub_1D9E5741C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E646D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E57444(uint64_t a1)
{
  v2 = sub_1D9E576F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E57480(uint64_t a1)
{
  v2 = sub_1D9E576F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.PredictionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732A0, &qword_1D9F2F9C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E576F8();
  sub_1D9F2BB8C();
  LOBYTE(v18) = 0;
  type metadata accessor for VisualContext();
  sub_1D9E57BA0(&qword_1EE0F2190, type metadata accessor for VisualContext);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v11 = type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest(0);
    LOBYTE(v18) = *(v3 + *(v11 + 20));
    v23 = 1;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
    v12 = (v3 + *(v11 + 24));
    v13 = *(v12 + 8);
    v14 = *(v12 + 32);
    v15 = *(v12 + 33);
    v18 = *v12;
    v19 = v13;
    v20 = *(v12 + 1);
    v21 = v14;
    v22 = v15;
    v23 = 2;
    sub_1D9E577A0();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9E576F8()
{
  result = qword_1EE0F3270;
  if (!qword_1EE0F3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3270);
  }

  return result;
}

unint64_t sub_1D9E5774C()
{
  result = qword_1EE0F1310[0];
  if (!qword_1EE0F1310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F1310);
  }

  return result;
}

unint64_t sub_1D9E577A0()
{
  result = qword_1EE0F2160;
  if (!qword_1EE0F2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2160);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.PredictionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for VisualContext();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732A8, &qword_1D9F2F9C8);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E576F8();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v26;
  v17 = v14;
  LOBYTE(v29) = 0;
  sub_1D9E57BA0(&qword_1EE0F2188, type metadata accessor for VisualContext);
  v18 = v27;
  sub_1D9F2B89C();
  sub_1D9E57E24(v28, v17, type metadata accessor for VisualContext);
  v34 = 1;
  sub_1D9E57BE8();
  sub_1D9F2B89C();
  *(v17 + *(v11 + 20)) = v29;
  v34 = 2;
  sub_1D9E57C3C();
  sub_1D9F2B89C();
  (*(v16 + 8))(v10, v18);
  v20 = v30;
  v21 = v32;
  v22 = v33;
  v23 = v17 + *(v11 + 24);
  *v23 = v29;
  *(v23 + 8) = v20;
  *(v23 + 16) = v31;
  *(v23 + 32) = v21;
  *(v23 + 33) = v22;
  sub_1D9E57C90(v17, v25, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9E57CF8(v17, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest);
}

uint64_t sub_1D9E57BA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9E57BE8()
{
  result = qword_1EE0F1308;
  if (!qword_1EE0F1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1308);
  }

  return result;
}

unint64_t sub_1D9E57C3C()
{
  result = qword_1EE0F2158;
  if (!qword_1EE0F2158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2158);
  }

  return result;
}

uint64_t sub_1D9E57C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9E57CF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9E57E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9E57EA0(uint64_t a1)
{
  v2 = sub_1D9E58090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E57EDC(uint64_t a1)
{
  v2 = sub_1D9E58090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.PredictionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732B0, &qword_1D9F2F9D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E58090();
  sub_1D9F2BB8C();
  type metadata accessor for PredictionResult();
  sub_1D9E57BA0(&qword_1EE0F2170, type metadata accessor for PredictionResult);
  sub_1D9F2B9AC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D9E58090()
{
  result = qword_1EE0F31B0[0];
  if (!qword_1EE0F31B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F31B0);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.PredictionResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for PredictionResult();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732B8, &qword_1D9F2F9D8);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for VisualActionPredictionServiceDefinition.PredictionResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E58090();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v16 = v19;
    sub_1D9E57BA0(&qword_1EE0F2168, type metadata accessor for PredictionResult);
    v17 = v21;
    sub_1D9F2B89C();
    (*(v20 + 8))(v10, v7);
    sub_1D9E57E24(v17, v14, type metadata accessor for PredictionResult);
    sub_1D9E57E24(v14, v16, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E583AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732B0, &qword_1D9F2F9D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E58090();
  sub_1D9F2BB8C();
  type metadata accessor for PredictionResult();
  sub_1D9E57BA0(&qword_1EE0F2170, type metadata accessor for PredictionResult);
  sub_1D9F2B9AC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t VisualActionPredictionServiceDefinition.ExecutionRequest.workflow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t VisualActionPredictionServiceDefinition.ExecutionRequest.options.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  LOBYTE(v4) = *(v4 + 24);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v4;
  return result;
}

__n128 VisualActionPredictionServiceDefinition.ExecutionRequest.init(selectedAction:visualContext:imageFrame:workflow:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a4;
  v10 = *a5;
  v11 = *(a5 + 8);
  v12 = a5[2];
  v13 = *(a5 + 24);
  sub_1D9E57E24(a1, a6, type metadata accessor for PredictedAction);
  v14 = type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest(0);
  sub_1D9E57E24(a2, a6 + v14[5], type metadata accessor for VisualContext);
  v15 = a6 + v14[6];
  v16 = *(a3 + 48);
  *(v15 + 32) = *(a3 + 32);
  *(v15 + 48) = v16;
  *(v15 + 64) = *(a3 + 64);
  *(v15 + 80) = *(a3 + 80);
  result = *a3;
  v18 = *(a3 + 16);
  *v15 = *a3;
  *(v15 + 16) = v18;
  *(a6 + v14[7]) = v9;
  v19 = a6 + v14[8];
  *v19 = v10;
  *(v19 + 8) = v11;
  *(v19 + 16) = v12;
  *(v19 + 24) = v13;
  return result;
}

uint64_t sub_1D9E58794()
{
  v1 = *v0;
  v2 = 0x64657463656C6573;
  v3 = 0x6172466567616D69;
  v4 = 0x776F6C666B726F77;
  if (v1 != 3)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F436C6175736976;
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

uint64_t sub_1D9E5884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E647F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E58874(uint64_t a1)
{
  v2 = sub_1D9E58C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E588B0(uint64_t a1)
{
  v2 = sub_1D9E58C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.ExecutionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732C0, &qword_1D9F2F9E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E58C80();
  sub_1D9F2BB8C();
  LOBYTE(v35[0]) = 0;
  type metadata accessor for PredictedAction();
  sub_1D9E57BA0(&qword_1EE0F2268, type metadata accessor for PredictedAction);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v11 = type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest(0);
    v12 = v11[5];
    v42 = 1;
    type metadata accessor for VisualContext();
    sub_1D9E57BA0(&qword_1EE0F2190, type metadata accessor for VisualContext);
    sub_1D9F2B9AC();
    v13 = v3 + v11[6];
    v14 = *(v13 + 48);
    v15 = *(v13 + 16);
    v36 = *(v13 + 32);
    v37 = v14;
    v16 = *(v13 + 48);
    v38 = *(v13 + 64);
    v17 = *(v13 + 16);
    v35[0] = *v13;
    v35[1] = v17;
    v31 = v36;
    v32 = v16;
    v33 = *(v13 + 64);
    v39 = *(v13 + 80);
    v34 = *(v13 + 80);
    v29 = v35[0];
    v30 = v15;
    v41 = 2;
    sub_1D9E585C4(v35, v27);
    sub_1D9E58CD4();
    sub_1D9F2B9AC();
    v27[2] = v31;
    v27[3] = v32;
    v27[4] = v33;
    v28 = v34;
    v27[0] = v29;
    v27[1] = v30;
    sub_1D9E58D28(v27);
    LOBYTE(v23) = *(v3 + v11[7]);
    v40 = 3;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
    v18 = (v3 + v11[8]);
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = v18[2];
    LOBYTE(v18) = *(v18 + 24);
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v18;
    v40 = 4;
    sub_1D9E58D7C();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9E58C80()
{
  result = qword_1ECB732C8;
  if (!qword_1ECB732C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB732C8);
  }

  return result;
}

unint64_t sub_1D9E58CD4()
{
  result = qword_1ECB732D0;
  if (!qword_1ECB732D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB732D0);
  }

  return result;
}

unint64_t sub_1D9E58D7C()
{
  result = qword_1ECB732D8;
  if (!qword_1ECB732D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB732D8);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.ExecutionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = type metadata accessor for VisualContext();
  v3 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PredictedAction();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732E0, &qword_1D9F2F9E8);
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D9E58C80();
  v19 = v37;
  sub_1D9F2BB7C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v20 = v16;
  LOBYTE(v43) = 0;
  sub_1D9E57BA0(&qword_1EE0F2260, type metadata accessor for PredictedAction);
  v21 = v35;
  sub_1D9F2B89C();
  sub_1D9E57E24(v36, v20, type metadata accessor for PredictedAction);
  LOBYTE(v43) = 1;
  sub_1D9E57BA0(&qword_1EE0F2188, type metadata accessor for VisualContext);
  sub_1D9F2B89C();
  sub_1D9E57E24(v5, v20 + v13[5], type metadata accessor for VisualContext);
  v50 = 2;
  sub_1D9E59364();
  sub_1D9F2B89C();
  v22 = v34;
  v23 = v20 + v13[6];
  v24 = v46;
  *(v23 + 32) = v45;
  *(v23 + 48) = v24;
  *(v23 + 64) = v47;
  *(v23 + 80) = v48;
  v25 = v44;
  *v23 = v43;
  *(v23 + 16) = v25;
  v49 = 3;
  sub_1D9E57BE8();
  sub_1D9F2B89C();
  *v13[7] = v39;
  v49 = 4;
  sub_1D9E593B8();
  sub_1D9F2B89C();
  (*(v22 + 8))(v12, v21);
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v13[8];
  *v29 = v39;
  *(v29 + 8) = v26;
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  sub_1D9E57C90(0, v32, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1D9E57CF8(0, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest);
}

unint64_t sub_1D9E59364()
{
  result = qword_1ECB732E8;
  if (!qword_1ECB732E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB732E8);
  }

  return result;
}

unint64_t sub_1D9E593B8()
{
  result = qword_1ECB732F0;
  if (!qword_1ECB732F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB732F0);
  }

  return result;
}

uint64_t sub_1D9E59458(uint64_t a1)
{
  v2 = sub_1D9E59694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E59494(uint64_t a1)
{
  v2 = sub_1D9E59694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E59514(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D9F2BB8C();
  type metadata accessor for ExecutionResult();
  sub_1D9E57BA0(&qword_1ECB73308, type metadata accessor for ExecutionResult);
  sub_1D9F2B9AC();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D9E59694()
{
  result = qword_1ECB73300;
  if (!qword_1ECB73300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73300);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.ExecutionResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for ExecutionResult();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73310, &qword_1D9F2F9F8);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E59694();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v16 = v19;
    sub_1D9E57BA0(&qword_1ECB73318, type metadata accessor for ExecutionResult);
    v17 = v21;
    sub_1D9F2B89C();
    (*(v20 + 8))(v10, v7);
    sub_1D9E57E24(v17, v14, type metadata accessor for ExecutionResult);
    sub_1D9E57E24(v14, v16, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E599D8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1D9F2BB8C();
  type metadata accessor for ExecutionResult();
  sub_1D9E57BA0(&qword_1ECB73308, type metadata accessor for ExecutionResult);
  sub_1D9F2B9AC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t VisualActionPredictionServiceDefinition.FeedbackRequest.workflow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1D9E59C28()
{
  if (*v0)
  {
    return 0x776F6C666B726F77;
  }

  else
  {
    return 0x6B63616264656566;
  }
}

uint64_t sub_1D9E59C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B63616264656566 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9E59D38(uint64_t a1)
{
  v2 = sub_1D9E59F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E59D74(uint64_t a1)
{
  v2 = sub_1D9E59F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.FeedbackRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73320, &qword_1D9F2FA00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E59F80();
  sub_1D9F2BB8C();
  v12[15] = 0;
  type metadata accessor for Feedback(0);
  sub_1D9E57BA0(&qword_1ECB73330, type metadata accessor for Feedback);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest(0) + 20));
    v12[13] = 1;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9E59F80()
{
  result = qword_1ECB73328;
  if (!qword_1ECB73328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73328);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.FeedbackRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for Feedback(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73338, &qword_1D9F2FA08);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E59F80();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v21;
  v17 = v14;
  v26 = 0;
  sub_1D9E57BA0(&qword_1ECB73340, type metadata accessor for Feedback);
  v18 = v22;
  sub_1D9F2B89C();
  sub_1D9E57E24(v23, v17, type metadata accessor for Feedback);
  v24 = 1;
  sub_1D9E57BE8();
  sub_1D9F2B89C();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v25;
  sub_1D9E57C90(v17, v20, type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9E57CF8(v17, type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest);
}

uint64_t sub_1D9E5A364(uint64_t a1)
{
  v2 = sub_1D9E5A420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5A3A0(uint64_t a1)
{
  v2 = sub_1D9E5A420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9E5A420()
{
  result = qword_1ECB73350;
  if (!qword_1ECB73350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73350);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionRegistrationRequest.customActionIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D9E51D40(v2, v3, v4);
}

__n128 VisualActionPredictionServiceDefinition.CustomActionRegistrationRequest.init(customActionIdentity:isUnregisteringAction:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u8[1] = a2;
  return result;
}

unint64_t sub_1D9E5A524()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_1D9E5A55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D9F48990 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9F489B0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E5A640(uint64_t a1)
{
  v2 = sub_1D9E5A868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5A67C(uint64_t a1)
{
  v2 = sub_1D9E5A868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionRegistrationRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73358, &qword_1D9F2FA18);
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v18 = *(v1 + 17);
  v9 = a1[4];
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E51D40(v7, v8, v10);
  sub_1D9E5A868();
  sub_1D9F2BB8C();
  v15 = v7;
  v16 = v8;
  v17 = v10;
  v19 = 0;
  sub_1D9E5A8BC();
  v11 = v13[1];
  sub_1D9F2B9AC();
  sub_1D9E51DF0(v15, v16, v17);
  if (!v11)
  {
    LOBYTE(v15) = 1;
    sub_1D9F2B96C();
  }

  return (*(v14 + 8))(v6, v3);
}

unint64_t sub_1D9E5A868()
{
  result = qword_1ECB73360;
  if (!qword_1ECB73360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73360);
  }

  return result;
}

unint64_t sub_1D9E5A8BC()
{
  result = qword_1EE0F3718;
  if (!qword_1EE0F3718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3718);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionRegistrationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73368, &qword_1D9F2FA20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5A868();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_1D9E5AB24();
  sub_1D9F2B89C();
  v11 = v18;
  v12 = v19;
  v21 = v20;
  LOBYTE(v18) = 1;
  v13 = sub_1D9F2B85C();
  (*(v6 + 8))(v9, v5);
  v14 = v13 & 1;
  *a2 = v11;
  *(a2 + 8) = v12;
  v15 = v21;
  *(a2 + 16) = v21;
  *(a2 + 17) = v14;
  sub_1D9E51D40(v11, v12, v15);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9E51DF0(v11, v12, v15);
}

unint64_t sub_1D9E5AB24()
{
  result = qword_1EE0F3710;
  if (!qword_1EE0F3710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3710);
  }

  return result;
}

uint64_t sub_1D9E5ABE4(uint64_t a1)
{
  v2 = sub_1D9E5ACA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5AC20(uint64_t a1)
{
  v2 = sub_1D9E5ACA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9E5ACA0()
{
  result = qword_1ECB73378;
  if (!qword_1ECB73378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73378);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionExecutionRequest.customActionIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D9E51D40(v2, v3, v4);
}

uint64_t sub_1D9E5AE50@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 24));
  v5 = v4[2];
  v7 = v4[4];
  v16 = v4[3];
  v6 = v16;
  v17 = v7;
  v18 = *(v4 + 80);
  v8 = v18;
  v10 = *v4;
  v14 = v4[1];
  v9 = v14;
  v15 = v5;
  v13 = v10;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = v7;
  *(a2 + 80) = v8;
  *a2 = v10;
  *(a2 + 16) = v9;
  return sub_1D9E585C4(&v13, v12);
}

__n128 VisualActionPredictionServiceDefinition.CustomActionExecutionRequest.init(customActionIdentity:visualContext:imageFrame:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  v8 = type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest(0);
  sub_1D9E57E24(a2, a4 + *(v8 + 20), type metadata accessor for VisualContext);
  v9 = a4 + *(v8 + 24);
  v10 = *(a3 + 48);
  *(v9 + 32) = *(a3 + 32);
  *(v9 + 48) = v10;
  *(v9 + 64) = *(a3 + 64);
  *(v9 + 80) = *(a3 + 80);
  result = *a3;
  v12 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 16) = v12;
  return result;
}

unint64_t sub_1D9E5AF70()
{
  v1 = 0x6F436C6175736976;
  if (*v0 != 1)
  {
    v1 = 0x6172466567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1D9E5AFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E649C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E5B008(uint64_t a1)
{
  v2 = sub_1D9E5B35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5B044(uint64_t a1)
{
  v2 = sub_1D9E5B35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionExecutionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73380, &qword_1D9F2FA30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5B35C();
  sub_1D9F2BB8C();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  *&v29 = *v3;
  *(&v29 + 1) = v11;
  LOBYTE(v30) = v12;
  LOBYTE(v23) = 0;
  sub_1D9E51D40(v29, v11, v12);
  sub_1D9E5A8BC();
  sub_1D9F2B9AC();
  sub_1D9E51DF0(v29, *(&v29 + 1), v30);
  if (!v2)
  {
    v13 = type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest(0);
    v14 = *(v13 + 20);
    v36 = 1;
    type metadata accessor for VisualContext();
    sub_1D9E57BA0(&qword_1EE0F2190, type metadata accessor for VisualContext);
    sub_1D9F2B9AC();
    v16 = (v3 + *(v13 + 24));
    v17 = v16[3];
    v18 = v16[1];
    v31 = v16[2];
    v32 = v17;
    v19 = v16[3];
    v33 = v16[4];
    v20 = v16[1];
    v29 = *v16;
    v30 = v20;
    v25 = v31;
    v26 = v19;
    v27 = v16[4];
    v34 = *(v16 + 80);
    v28 = *(v16 + 80);
    v23 = v29;
    v24 = v18;
    v35 = 2;
    sub_1D9E585C4(&v29, v21);
    sub_1D9E58CD4();
    sub_1D9F2B9AC();
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v22 = v28;
    v21[0] = v23;
    v21[1] = v24;
    sub_1D9E58D28(v21);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9E5B35C()
{
  result = qword_1ECB73388;
  if (!qword_1ECB73388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73388);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionExecutionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for VisualContext();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73390, &qword_1D9F2FA38);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D9E5B35C();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v27 = v12;
  v38 = 0;
  sub_1D9E5AB24();
  v18 = v30;
  sub_1D9F2B89C();
  v19 = v33;
  v20 = v15;
  *v15 = v32;
  v15[16] = v19;
  LOBYTE(v32) = 1;
  sub_1D9E57BA0(&qword_1EE0F2188, type metadata accessor for VisualContext);
  sub_1D9F2B89C();
  v21 = v27;
  sub_1D9E57E24(v7, v20 + *(v27 + 20), type metadata accessor for VisualContext);
  v38 = 2;
  sub_1D9E59364();
  sub_1D9F2B89C();
  (*(v29 + 8))(v11, v18);
  v22 = v20 + *(v21 + 24);
  v23 = v35;
  *(v22 + 32) = v34;
  *(v22 + 48) = v23;
  *(v22 + 64) = v36;
  *(v22 + 80) = v37;
  v24 = v33;
  *v22 = v32;
  *(v22 + 16) = v24;
  sub_1D9E57C90(v20, v28, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_1D9E57CF8(v20, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest);
}

uint64_t sub_1D9E5B87C(uint64_t a1)
{
  v2 = sub_1D9E5B938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5B8B8(uint64_t a1)
{
  v2 = sub_1D9E5B938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9E5B938()
{
  result = qword_1ECB733A0;
  if (!qword_1ECB733A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB733A0);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionExecutionResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for ExecutionResult();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733A8, &qword_1D9F2FA48);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5B938();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v16 = v19;
    sub_1D9E57BA0(&qword_1ECB73318, type metadata accessor for ExecutionResult);
    v17 = v21;
    sub_1D9F2B89C();
    (*(v20 + 8))(v10, v7);
    sub_1D9E57E24(v17, v14, type metadata accessor for ExecutionResult);
    sub_1D9E57E24(v14, v16, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest.workflow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1D9E5BD3C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9E5BDA0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  sub_1D9E57E24(a1, a5, a3);
  result = a4(0);
  *(a5 + *(result + 20)) = v7;
  return result;
}

uint64_t sub_1D9E5BDEC()
{
  if (*v0)
  {
    result = 0x776F6C666B726F77;
  }

  else
  {
    result = 0x6F436C6175736976;
  }

  *v0;
  return result;
}

uint64_t sub_1D9E5BE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F436C6175736976 && a2 == 0xED0000747865746ELL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9E5BF18(uint64_t a1)
{
  v2 = sub_1D9E5C160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5BF54(uint64_t a1)
{
  v2 = sub_1D9E5C160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733B0, &qword_1D9F2FA50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5C160();
  sub_1D9F2BB8C();
  v12[15] = 0;
  type metadata accessor for VisualContext();
  sub_1D9E57BA0(&qword_1EE0F2190, type metadata accessor for VisualContext);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest(0) + 20));
    v12[13] = 1;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9E5C160()
{
  result = qword_1ECB733B8;
  if (!qword_1ECB733B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB733B8);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for VisualContext();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733C0, &qword_1D9F2FA58);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5C160();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v21;
  v17 = v14;
  v26 = 0;
  sub_1D9E57BA0(&qword_1EE0F2188, type metadata accessor for VisualContext);
  v18 = v22;
  sub_1D9F2B89C();
  sub_1D9E57E24(v23, v17, type metadata accessor for VisualContext);
  v24 = 1;
  sub_1D9E57BE8();
  sub_1D9F2B89C();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v25;
  sub_1D9E57C90(v17, v20, type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9E57CF8(v17, type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest);
}

uint64_t sub_1D9E5C550(uint64_t a1)
{
  v2 = sub_1D9E5C700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5C58C(uint64_t a1)
{
  v2 = sub_1D9E5C700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733C8, &qword_1D9F2FA60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5C700();
  sub_1D9F2BB8C();
  sub_1D9F2B96C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9E5C700()
{
  result = qword_1ECB733D0;
  if (!qword_1ECB733D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB733D0);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733D8, &qword_1D9F2FA68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5C700();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v11 = sub_1D9F2B85C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E5C8E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733C8, &qword_1D9F2FA60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5C700();
  sub_1D9F2BB8C();
  sub_1D9F2B96C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D9E5CA58()
{
  if (*v0)
  {
    result = 0x776F6C666B726F77;
  }

  else
  {
    result = 0x6F436C6175736976;
  }

  *v0;
  return result;
}

uint64_t sub_1D9E5CAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F436C6175736976 && a2 == 0xEE0073747865746ELL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9E5CB84(uint64_t a1)
{
  v2 = sub_1D9E5CDFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5CBC0(uint64_t a1)
{
  v2 = sub_1D9E5CDFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.BundleRankingRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733E0, &qword_1D9F2FA70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5CDFC();

  sub_1D9F2BB8C();
  v17 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733E8, &qword_1D9F2FA78);
  sub_1D9E5D08C(&qword_1EE0F1160, &qword_1EE0F2190);
  sub_1D9F2B9AC();

  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D9E5CDFC()
{
  result = qword_1EE0F30C8;
  if (!qword_1EE0F30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30C8);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.BundleRankingRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733F0, &qword_1D9F2FA80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5CDFC();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733E8, &qword_1D9F2FA78);
  v14[15] = 0;
  sub_1D9E5D08C(&qword_1EE0F1158, &qword_1EE0F2188);
  sub_1D9F2B89C();
  v11 = v15;
  v14[13] = 1;
  sub_1D9E57BE8();
  sub_1D9F2B89C();
  (*(v6 + 8))(v9, v5);
  v12 = v14[14];
  *a2 = v11;
  *(a2 + 8) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E5D08C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB733E8, &qword_1D9F2FA78);
    sub_1D9E57BA0(a2, type metadata accessor for VisualContext);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E5D1A8(uint64_t a1)
{
  v2 = sub_1D9E5D380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5D1E4(uint64_t a1)
{
  v2 = sub_1D9E5D380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.BundleRankingResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733F8, &qword_1D9F2FA88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5D380();

  sub_1D9F2BB8C();
  v11[1] = v8;
  sub_1D9E5D3D4();
  sub_1D9F2B9AC();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9E5D380()
{
  result = qword_1EE0F30A0;
  if (!qword_1EE0F30A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30A0);
  }

  return result;
}

unint64_t sub_1D9E5D3D4()
{
  result = qword_1EE0F1638;
  if (!qword_1EE0F1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1638);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.BundleRankingResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73400, &qword_1D9F2FA90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5D380();
  sub_1D9F2BB7C();
  if (!v2)
  {
    sub_1D9E5D594();
    sub_1D9F2B89C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9E5D594()
{
  result = qword_1EE0F1630;
  if (!qword_1EE0F1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1630);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.ClearDatabaseRequest.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D9E5D6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9E5D728(uint64_t a1)
{
  v2 = sub_1D9E5D8DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5D764(uint64_t a1)
{
  v2 = sub_1D9E5D8DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.ClearDatabaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73408, &qword_1D9F2FA98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5D8DC();
  sub_1D9F2BB8C();
  sub_1D9F2B90C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9E5D8DC()
{
  result = qword_1ECB73410;
  if (!qword_1ECB73410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73410);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.ClearDatabaseRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73418, &qword_1D9F2FAA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5D8DC();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v11 = sub_1D9F2B7FC();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E5DAD8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73408, &qword_1D9F2FA98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5D8DC();
  sub_1D9F2BB8C();
  sub_1D9F2B90C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t VisualActionPredictionServiceDefinition.ClearDatabaseResponse.result.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D9E5DC68(uint64_t a1)
{
  v2 = sub_1D9E5DE1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5DCA4(uint64_t a1)
{
  v2 = sub_1D9E5DE1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.ClearDatabaseResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73420, &qword_1D9F2FAA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5DE1C();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9E5DE1C()
{
  result = qword_1ECB73428;
  if (!qword_1ECB73428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73428);
  }

  return result;
}

uint64_t sub_1D9E5DEE8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73420, &qword_1D9F2FAA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5DE1C();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D9E5E044(uint64_t a1)
{
  v2 = sub_1D9E5E220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5E080(uint64_t a1)
{
  v2 = sub_1D9E5E220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E5E100(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D9F2BB8C();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D9E5E220()
{
  result = qword_1ECB73440;
  if (!qword_1ECB73440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73440);
  }

  return result;
}

uint64_t sub_1D9E5E2D4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1D9F2BB8C();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D9E5E410(uint64_t a1)
{
  v2 = sub_1D9E5E5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5E44C(uint64_t a1)
{
  v2 = sub_1D9E5E5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.ClearEngagementStreamResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73448, &qword_1D9F2FAC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5E5C4();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9E5E5C4()
{
  result = qword_1ECB73450;
  if (!qword_1ECB73450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73450);
  }

  return result;
}

uint64_t sub_1D9E5E690(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73448, &qword_1D9F2FAC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5E5C4();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t VisualActionPredictionServiceDefinition.SetDeviceStateRequest.timestamp.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t VisualActionPredictionServiceDefinition.SetDeviceStateRequest.init(appPopularityMap:timestamp:appCategoryMap:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  return result;
}

unint64_t sub_1D9E5E818()
{
  v1 = 0x6D617473656D6974;
  if (*v0 != 1)
  {
    v1 = 0x6765746143707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D9E5E888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E64AF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E5E8B0(uint64_t a1)
{
  v2 = sub_1D9E5EB50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5E8EC(uint64_t a1)
{
  v2 = sub_1D9E5EB50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.SetDeviceStateRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73460, &qword_1D9F2FAD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v15 = v1[1];
  v14 = *(v1 + 16);
  v13 = v1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5EB50();

  sub_1D9F2BB8C();
  v17 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73470, &qword_1D9F2FAD8);
  sub_1D9E5EE4C(&qword_1ECB73478);
  sub_1D9F2B94C();

  if (!v2)
  {
    v11 = v13;
    LOBYTE(v17) = 1;
    sub_1D9F2B92C();
    v17 = v11;
    v16 = 2;
    sub_1D9F2B94C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D9E5EB50()
{
  result = qword_1ECB73468;
  if (!qword_1ECB73468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73468);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.SetDeviceStateRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73480, &qword_1D9F2FAE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5EB50();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73470, &qword_1D9F2FAD8);
  v19 = 0;
  sub_1D9E5EE4C(&qword_1ECB73488);
  sub_1D9F2B83C();
  v18 = v20;
  LOBYTE(v20) = 1;
  v11 = sub_1D9F2B81C();
  HIDWORD(v16) = v12;
  v17 = v11;
  v19 = 2;
  sub_1D9F2B83C();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v15 = v17;
  *a2 = v18;
  *(a2 + 8) = v15;
  *(a2 + 16) = BYTE4(v16) & 1;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E5EE4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73470, &qword_1D9F2FAD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E5EF24(uint64_t a1)
{
  v2 = sub_1D9E5F0D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5EF60(uint64_t a1)
{
  v2 = sub_1D9E5F0D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.SetDeviceStateResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73490, &qword_1D9F2FAE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5F0D8();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9E5F0D8()
{
  result = qword_1ECB73498;
  if (!qword_1ECB73498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73498);
  }

  return result;
}

uint64_t sub_1D9E5F1A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73490, &qword_1D9F2FAE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5F0D8();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t VisualActionPredictionServiceDefinition.PopulateDatabaseRequest.init(vectors:bundleIds:majorLabels:minorLabels:dates:actionIds:appsInFocus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1D9E5F348()
{
  v1 = *v0;
  v2 = 0x73726F74636576;
  v3 = 0x64496E6F69746361;
  if (v1 != 5)
  {
    v3 = 0x6F466E4973707061;
  }

  v4 = 0x62614C726F6E696DLL;
  if (v1 != 3)
  {
    v4 = 0x7365746164;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6449656C646E7562;
  if (v1 != 1)
  {
    v5 = 0x62614C726F6A616DLL;
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

uint64_t sub_1D9E5F444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E64C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E5F478(uint64_t a1)
{
  v2 = sub_1D9E5F8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5F4B4(uint64_t a1)
{
  v2 = sub_1D9E5F8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.PopulateDatabaseRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734A8, &qword_1D9F2FAF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v24 = v1[2];
  v25 = v9;
  v12 = v1[5];
  v22 = v1[4];
  v23 = v11;
  v20 = v1[6];
  v21 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5F8A4();

  v14 = v4;
  sub_1D9F2BB8C();
  v27 = v10;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734B8, &qword_1D9F2FB00);
  sub_1D9E5F8F8();
  sub_1D9F2B9AC();
  if (v2)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = v23;
    v16 = v24;

    v27 = v25;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E5FA7C();
    sub_1D9F2B9AC();
    v27 = v16;
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734E0, &unk_1D9F2FB20);
    sub_1D9E5FAF8();
    v25 = v14;
    sub_1D9F2B9AC();
    v27 = v15;
    v26 = 3;
    sub_1D9F2B9AC();
    v27 = v22;
    v26 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73500, &qword_1D9F2FB30);
    sub_1D9E5FBF8(&qword_1ECB73508, &qword_1ECB73510);
    sub_1D9F2B9AC();
    v27 = v21;
    v26 = 5;
    sub_1D9F2B9AC();
    v27 = v20;
    v26 = 6;
    v18 = v25;
    sub_1D9F2B9AC();
    return (*(v5 + 8))(v8, v18);
  }
}

unint64_t sub_1D9E5F8A4()
{
  result = qword_1ECB734B0;
  if (!qword_1ECB734B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB734B0);
  }

  return result;
}

unint64_t sub_1D9E5F8F8()
{
  result = qword_1ECB734C0;
  if (!qword_1ECB734C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734B8, &qword_1D9F2FB00);
    sub_1D9E5F97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB734C0);
  }

  return result;
}

unint64_t sub_1D9E5F97C()
{
  result = qword_1ECB734C8;
  if (!qword_1ECB734C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734D0, &qword_1D9F2FB08);
    sub_1D9E5FA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB734C8);
  }

  return result;
}

unint64_t sub_1D9E5FA00()
{
  result = qword_1EE0F1110;
  if (!qword_1EE0F1110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734D8, &unk_1D9F2FB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1110);
  }

  return result;
}

unint64_t sub_1D9E5FA7C()
{
  result = qword_1EE0F1120;
  if (!qword_1EE0F1120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75480, &qword_1D9F2D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1120);
  }

  return result;
}

unint64_t sub_1D9E5FAF8()
{
  result = qword_1ECB734E8;
  if (!qword_1ECB734E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734E0, &unk_1D9F2FB20);
    sub_1D9E5FB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB734E8);
  }

  return result;
}

unint64_t sub_1D9E5FB7C()
{
  result = qword_1ECB734F0;
  if (!qword_1ECB734F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734F8, &qword_1D9F45A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB734F0);
  }

  return result;
}

uint64_t sub_1D9E5FBF8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73500, &qword_1D9F2FB30);
    sub_1D9E57BA0(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.PopulateDatabaseRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73518, &qword_1D9F2FB38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5F8A4();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734B8, &qword_1D9F2FB00);
  v27 = 0;
  sub_1D9E6021C();
  sub_1D9F2B89C();
  v25 = a2;
  v26 = v28;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
  v27 = 1;
  v12 = sub_1D9E603A0();
  sub_1D9F2B89C();
  v22 = v11;
  v23 = v12;
  v24 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734E0, &unk_1D9F2FB20);
  v27 = 2;
  sub_1D9E6041C();
  sub_1D9F2B89C();
  v21 = v28;
  v27 = 3;
  sub_1D9F2B89C();
  v20 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73500, &qword_1D9F2FB30);
  v27 = 4;
  sub_1D9E5FBF8(&qword_1ECB73540, &qword_1ECB73548);
  v19[1] = 0;
  sub_1D9F2B89C();
  v19[0] = v28;
  v27 = 5;
  sub_1D9F2B89C();
  v14 = v28;
  v27 = 6;
  sub_1D9F2B89C();
  (*(v6 + 8))(v9, v5);
  v15 = v28;
  v16 = v25;
  v17 = v24;
  *v25 = v26;
  v16[1] = v17;
  v18 = v20;
  v16[2] = v21;
  v16[3] = v18;
  v16[4] = v19[0];
  v16[5] = v14;
  v16[6] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9E6021C()
{
  result = qword_1ECB73520;
  if (!qword_1ECB73520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734B8, &qword_1D9F2FB00);
    sub_1D9E602A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73520);
  }

  return result;
}

unint64_t sub_1D9E602A0()
{
  result = qword_1ECB73528;
  if (!qword_1ECB73528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734D0, &qword_1D9F2FB08);
    sub_1D9E60324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73528);
  }

  return result;
}

unint64_t sub_1D9E60324()
{
  result = qword_1EE0F1108;
  if (!qword_1EE0F1108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734D8, &unk_1D9F2FB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1108);
  }

  return result;
}

unint64_t sub_1D9E603A0()
{
  result = qword_1EE0F1118;
  if (!qword_1EE0F1118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75480, &qword_1D9F2D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1118);
  }

  return result;
}

unint64_t sub_1D9E6041C()
{
  result = qword_1ECB73530;
  if (!qword_1ECB73530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734E0, &unk_1D9F2FB20);
    sub_1D9E604A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73530);
  }

  return result;
}

unint64_t sub_1D9E604A0()
{
  result = qword_1ECB73538;
  if (!qword_1ECB73538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734F8, &qword_1D9F45A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73538);
  }

  return result;
}

uint64_t sub_1D9E60584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9E60608(uint64_t a1)
{
  v2 = sub_1D9E607BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E60644(uint64_t a1)
{
  v2 = sub_1D9E607BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.PopulateDatabaseResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73550, &qword_1D9F2FB40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E607BC();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9E607BC()
{
  result = qword_1ECB73558;
  if (!qword_1ECB73558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73558);
  }

  return result;
}

uint64_t sub_1D9E60854@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D9F2BB7C();
  if (!v5)
  {
    v13 = v20;
    v14 = v21;
    v15 = sub_1D9F2B84C();
    v17 = v16;
    (*(v13 + 8))(v11, v8);
    *v14 = v15;
    v14[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9E609D8()
{
  result = qword_1EE0F2930;
  if (!qword_1EE0F2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2930);
  }

  return result;
}

unint64_t sub_1D9E60A30()
{
  result = qword_1EE0F30D0;
  if (!qword_1EE0F30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30D0);
  }

  return result;
}

unint64_t sub_1D9E60AB0()
{
  result = qword_1EE0F30E8;
  if (!qword_1EE0F30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30E8);
  }

  return result;
}

unint64_t sub_1D9E60B04()
{
  result = qword_1EE0F30F0[0];
  if (!qword_1EE0F30F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F30F0);
  }

  return result;
}

unint64_t sub_1D9E60B84()
{
  result = qword_1EE0F30D8;
  if (!qword_1EE0F30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30D8);
  }

  return result;
}

unint64_t sub_1D9E60BD8()
{
  result = qword_1EE0F30E0;
  if (!qword_1EE0F30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30E0);
  }

  return result;
}

uint64_t sub_1D9E60C74(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1EE0F3250, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest);
  result = sub_1D9E57BA0(&qword_1EE0F3258, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D9E60CF8(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1EE0F3190, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionResponse);
  result = sub_1D9E57BA0(&qword_1EE0F3198, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D9E60DC4(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1EE0F1F10, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest);
  result = sub_1D9E57BA0(&qword_1EE0F1F18, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D9E60E48(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1ECB73570, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionResponse);
  result = sub_1D9E57BA0(&qword_1ECB73578, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionResponse);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D9E60ED0()
{
  result = qword_1ECB73580;
  if (!qword_1ECB73580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73580);
  }

  return result;
}

uint64_t sub_1D9E60F24(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1EE0F1FC8, type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest);
  result = sub_1D9E57BA0(&qword_1EE0F1FD0, type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D9E60FD4()
{
  result = qword_1ECB73588;
  if (!qword_1ECB73588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73588);
  }

  return result;
}

unint64_t sub_1D9E61028()
{
  result = qword_1ECB73590;
  if (!qword_1ECB73590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73590);
  }

  return result;
}

unint64_t sub_1D9E61080()
{
  result = qword_1ECB73598;
  if (!qword_1ECB73598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73598);
  }

  return result;
}

unint64_t sub_1D9E61100()
{
  result = qword_1EE0F1FF0;
  if (!qword_1EE0F1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1FF0);
  }

  return result;
}

unint64_t sub_1D9E61154()
{
  result = qword_1EE0F1FF8[0];
  if (!qword_1EE0F1FF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F1FF8);
  }

  return result;
}

unint64_t sub_1D9E611D4()
{
  result = qword_1ECB735A0;
  if (!qword_1ECB735A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735A0);
  }

  return result;
}

unint64_t sub_1D9E61228()
{
  result = qword_1ECB735A8;
  if (!qword_1ECB735A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735A8);
  }

  return result;
}

uint64_t sub_1D9E612C4(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1EE0F2098, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest);
  result = sub_1D9E57BA0(qword_1EE0F20A0, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D9E61348(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1ECB735B8, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionResponse);
  result = sub_1D9E57BA0(&qword_1ECB735C0, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionResponse);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D9E613D0()
{
  result = qword_1ECB735C8;
  if (!qword_1ECB735C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735C8);
  }

  return result;
}

uint64_t sub_1D9E61424(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1EE0F2138, type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest);
  result = sub_1D9E57BA0(&qword_1EE0F2140, type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D9E614D4()
{
  result = qword_1ECB735D0;
  if (!qword_1ECB735D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735D0);
  }

  return result;
}

unint64_t sub_1D9E61528()
{
  result = qword_1ECB735D8;
  if (!qword_1ECB735D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735D8);
  }

  return result;
}

unint64_t sub_1D9E61580()
{
  result = qword_1EE0F3078;
  if (!qword_1EE0F3078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3078);
  }

  return result;
}

unint64_t sub_1D9E61600()
{
  result = qword_1EE0F30A8;
  if (!qword_1EE0F30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30A8);
  }

  return result;
}

unint64_t sub_1D9E61654()
{
  result = qword_1EE0F30B0;
  if (!qword_1EE0F30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30B0);
  }

  return result;
}

unint64_t sub_1D9E616D4()
{
  result = qword_1EE0F3080;
  if (!qword_1EE0F3080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3080);
  }

  return result;
}

unint64_t sub_1D9E61728()
{
  result = qword_1EE0F3088;
  if (!qword_1EE0F3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3088);
  }

  return result;
}

unint64_t sub_1D9E61780()
{
  result = qword_1ECB735E0;
  if (!qword_1ECB735E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735E0);
  }

  return result;
}

unint64_t sub_1D9E61800()
{
  result = qword_1EE0F1E60;
  if (!qword_1EE0F1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E60);
  }

  return result;
}

unint64_t sub_1D9E61854()
{
  result = qword_1EE0F1E68[0];
  if (!qword_1EE0F1E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F1E68);
  }

  return result;
}

unint64_t sub_1D9E618D4()
{
  result = qword_1ECB735E8;
  if (!qword_1ECB735E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735E8);
  }

  return result;
}

unint64_t sub_1D9E61928()
{
  result = qword_1ECB735F0;
  if (!qword_1ECB735F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735F0);
  }

  return result;
}

unint64_t sub_1D9E61980()
{
  result = qword_1ECB735F8;
  if (!qword_1ECB735F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735F8);
  }

  return result;
}

unint64_t sub_1D9E61A00()
{
  result = qword_1EE0F1E30;
  if (!qword_1EE0F1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E30);
  }

  return result;
}

unint64_t sub_1D9E61A54()
{
  result = qword_1EE0F1E38;
  if (!qword_1EE0F1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E38);
  }

  return result;
}

unint64_t sub_1D9E61AD4()
{
  result = qword_1ECB73600;
  if (!qword_1ECB73600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73600);
  }

  return result;
}

unint64_t sub_1D9E61B28()
{
  result = qword_1ECB73608;
  if (!qword_1ECB73608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73608);
  }

  return result;
}

unint64_t sub_1D9E61B80()
{
  result = qword_1ECB73610;
  if (!qword_1ECB73610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73610);
  }

  return result;
}

unint64_t sub_1D9E61C00()
{
  result = qword_1EE0F1E50;
  if (!qword_1EE0F1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E50);
  }

  return result;
}

unint64_t sub_1D9E61C54()
{
  result = qword_1EE0F1E58;
  if (!qword_1EE0F1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E58);
  }

  return result;
}

unint64_t sub_1D9E61CD4()
{
  result = qword_1ECB73618;
  if (!qword_1ECB73618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73618);
  }

  return result;
}

unint64_t sub_1D9E61D28()
{
  result = qword_1ECB73620;
  if (!qword_1ECB73620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73620);
  }

  return result;
}

unint64_t sub_1D9E61D80()
{
  result = qword_1ECB73628;
  if (!qword_1ECB73628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73628);
  }

  return result;
}

unint64_t sub_1D9E61E00()
{
  result = qword_1EE0F1E40;
  if (!qword_1EE0F1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E40);
  }

  return result;
}

unint64_t sub_1D9E61E54()
{
  result = qword_1EE0F1E48;
  if (!qword_1EE0F1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E48);
  }

  return result;
}

uint64_t sub_1D9E61EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D9E61F2C()
{
  result = qword_1ECB73630;
  if (!qword_1ECB73630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73630);
  }

  return result;
}

unint64_t sub_1D9E61F80()
{
  result = qword_1ECB73638;
  if (!qword_1ECB73638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73638);
  }

  return result;
}

uint64_t sub_1D9E61FEC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73550, &qword_1D9F2FB40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E607BC();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D9E62180()
{
  result = type metadata accessor for VisualContext();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9E6226C()
{
  result = type metadata accessor for PredictedAction();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for VisualContext();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport06CustomB8IdentityO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D9E623B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D9E62408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D9E62494()
{
  result = type metadata accessor for VisualContext();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1D9E62624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_74Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 4)
    {
      return v11 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_75Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1D9E6284C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9E628D4(uint64_t *a1, int a2)
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

uint64_t sub_1D9E6291C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AtomicFlag(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AtomicFlag(uint64_t result, int a2, int a3)
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

uint64_t sub_1D9E62A00(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D9E62A5C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D9E62AEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1D9E62B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
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

uint64_t sub_1D9E62BD8(uint64_t *a1, int a2)
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

uint64_t sub_1D9E62C20(uint64_t result, int a2, int a3)
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

uint64_t sub_1D9E62C7C(uint64_t a1, int a2)
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

uint64_t sub_1D9E62CC4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for VisualActionPredictionServiceDefinition.PopulateDatabaseRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualActionPredictionServiceDefinition.PopulateDatabaseRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}