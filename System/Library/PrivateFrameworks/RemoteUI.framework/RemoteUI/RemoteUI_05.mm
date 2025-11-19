uint64_t storeEnumTagSinglePayload for ViewContext(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21BA0F848()
{
  result = qword_27CD9EA30;
  if (!qword_27CD9EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EA30);
  }

  return result;
}

unint64_t sub_21BA0F8BC()
{
  result = qword_27CD9EA38;
  if (!qword_27CD9EA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D718);
    sub_21B9CD2B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EA38);
  }

  return result;
}

char *sub_21BA0F940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EA40);
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

void *sub_21BA0FA34()
{
  result = malloc(1uLL);
  if (result)
  {
    qword_27CDA9228 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BA0FA60()
{
  if (qword_27CDA9220 != -1)
  {
    swift_once();
  }

  return qword_27CDA9228;
}

Swift::Void __swiftcall RUITableViewRow.parseBadge()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v32[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v32[-v5];
  v7 = sub_21BA886AC();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [v0 sourceXMLElement];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  type metadata accessor for RUI.XMLUIDecoder();
  RUI.XMLUIDecoder.__allocating_init()();
  v14 = [v0 pageElement];
  if (!v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  v16 = [v14 page];

  if (!v16)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v17 = [v16 objectModel];

  v18 = sub_21B9C1334();
  (*(v8 + 16))(v11, v18, v7);
  if (v17)
  {
    v19 = [v17 sourceURL];
    if (v19)
    {
      v20 = v19;
      sub_21BA8643C();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v23 = sub_21BA864AC();
    (*(*(v23 - 8) + 56))(v3, v21, 1, v23);
    sub_21B9AFD2C(v3, v6);
  }

  else
  {
    v22 = sub_21BA864AC();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  }

  type metadata accessor for ResourceLoader();
  type metadata accessor for HTTPDataSource();
  v24 = HTTPDataSource.__allocating_init()();
  v25 = sub_21B9AAE44(v6, v24, &protocol witness table for HTTPDataSource);
  if (v17)
  {
    v26 = v17;
    v27 = RUIObjectModel.decodingUserInfo.getter();

    v28 = v26;
    v29 = RUIObjectModel.xmlUIData.getter();
  }

  else
  {
    type metadata accessor for RUIDecodingUserInfo();
    RUIDecodingUserInfo.init()(v30);
    v27 = v31;
    type metadata accessor for XMLUIData();
    v29 = sub_21B9ACF44(0);
  }

  v34[3] = &type metadata for DecodingContext;
  sub_21B9C10B4(v25, v27, v29, v34);
  swift_beginAccess();
  sub_21BA011F8(v34, v11);
  swift_endAccess();
  sub_21BA0FEF0();
  RUI.XMLUIDecoder.decode<A>(_:from:)(&type metadata for ImageBadge, v13);
  sub_21B9C0BAC(&v33, &type metadata for BadgeAssociatedKey, &type metadata for BadgeAssociatedKey, &off_28172C628);
}

unint64_t sub_21BA0FEF0()
{
  result = qword_27CD9EA50;
  if (!qword_27CD9EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EA50);
  }

  return result;
}

Swift::Void __swiftcall RUITableViewRow.setBadge(in:)(UITableViewCell *in)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = in;
    sub_21B9C09E8(&type metadata for BadgeAssociatedKey, &off_28172C628, v33);
    if (*&v33[56])
    {
      v21 = *&v33[40];
      v22 = *&v33[56];
      v23 = *&v33[72];
      v24 = *&v33[88];
      v19 = *&v33[8];
      v20 = *&v33[24];
      v30 = *&v33[64];
      v31 = *&v33[80];
      v32 = *&v33[96];
      v26 = *v33;
      v27 = *&v33[16];
      v28 = *&v33[32];
      v29 = *&v33[48];
      sub_21B9E52FC(&v19, &v12);
      sub_21B9ABAAC(&v26, &qword_27CD9EA48);
      v14 = v21;
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v12 = v19;
      v13 = v20;
      RUIImage.preloadedImage.getter();
      v6 = v5;
      sub_21B9EA8A0(&v19);
    }

    else
    {
      v30 = *&v33[64];
      v31 = *&v33[80];
      v32 = *&v33[96];
      v26 = *v33;
      v27 = *&v33[16];
      v28 = *&v33[32];
      v29 = *&v33[48];
      sub_21B9ABAAC(&v26, &qword_27CD9EA48);
      v6 = 0;
    }

    sub_21B9C09E8(&type metadata for BadgeAssociatedKey, &off_28172C628, &v26);
    if (*(&v29 + 1))
    {
      v7 = v29;
    }

    else
    {
      v7 = 0;
    }

    v23 = v30;
    v24 = v31;
    v25 = v32;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    sub_21B9ABAAC(&v19, &qword_27CD9EA48);
    sub_21B9C09E8(&type metadata for BadgeAssociatedKey, &off_28172C628, &v12);
    v8 = *(&v15 + 1) != 0;
    v9 = v12;
    v10[4] = v16;
    v10[5] = v17;
    v11 = v18;
    v10[0] = v12;
    v10[1] = v13;
    v10[2] = v14;
    v10[3] = v15;
    sub_21B9ABAAC(v10, &qword_27CD9EA48);
    [v3 setBadgeImage:v6 tintColor:v7 isCircular:v8 & v9];
  }
}

uint64_t sub_21BA10280@<X0>(void *a1@<X8>)
{
  result = sub_21BA86D4C();
  *a1 = v3;
  return result;
}

uint64_t sub_21BA102D4@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - v4;
  v6 = v1[7];
  v68 = v1[6];
  v69 = v6;
  v70[0] = v1[8];
  *(v70 + 9) = *(v1 + 137);
  v7 = v1[3];
  v64 = v1[2];
  v65 = v7;
  v8 = v1[5];
  v66 = v1[4];
  v67 = v8;
  v9 = v1[1];
  v62 = *v1;
  v63 = v9;
  v10 = v62;
  v11 = v9;
  if (v64 > 1u)
  {
    if (v64 == 2)
    {
      v20 = objc_allocWithZone(MEMORY[0x277D1B1B0]);

      v21 = sub_21BA87C8C();
      sub_21B9CA1E8(v10, *(&v10 + 1), v11, *(&v11 + 1), 2u);
      v22 = [v20 initWithBundleIdentifier_];
    }

    else
    {
      v29 = objc_allocWithZone(MEMORY[0x277D1B1B0]);

      v21 = sub_21BA87C8C();
      sub_21B9CA1E8(v10, *(&v10 + 1), v11, *(&v11 + 1), 3u);
      v22 = [v29 initWithType_];
    }

    v30 = v22;

    sub_21BA108E0();
    v31 = nullsub_1(v30);
    v33 = v32;
    *(&v60 + 1) = &type metadata for RUIAsyncIconImage;
    v61 = sub_21BA12CD0();
    *&v59 = v31;
    *(&v59 + 1) = v33;
  }

  else if (v64)
  {
    HIDWORD(v49) = BYTE1(v67);
    v51 = v62;
    v52 = v9;
    v23 = *(&v9 + 1);

    v24 = v11;
    if (sub_21BA8397C())
    {
      v59 = v10;
      v60 = v11;
      v25 = sub_21BA83AF8();
      v56 = v68;
      v57 = v69;
      v58[0] = v70[0];
      *(v58 + 9) = *(v70 + 9);
      v53[0] = v64;
      v53[1] = v65;
      v54 = v66;
      v55 = v67;
      v51 = v62;
      v52 = v63;
      sub_21BA108E0();
      v26 = nullsub_1(v25);
      v28 = v27;
      *(&v60 + 1) = &type metadata for RUIAsyncIconImage;
      v61 = sub_21BA12CD0();
      sub_21B9CA1E8(v10, *(&v10 + 1), v11, *(&v11 + 1), 1u);
      *&v59 = v26;
      *(&v59 + 1) = v28;
    }

    else
    {
      v51 = v10;
      v52 = v11;
      if (sub_21BA83990())
      {
        sub_21BA12DE4();

        sub_21BA882DC();
        v37 = sub_21BA8793C();
      }

      else
      {

        v37 = sub_21BA8790C();
      }

      sub_21BA3A818(SBYTE9(v69), v37, v5);

      *(&v60 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB88);
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v51 = v2;
      *(&v51 + 1) = OpaqueTypeConformance2;
      v61 = swift_getOpaqueTypeConformance2();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v59);
      sub_21BA39F98(HIDWORD(v49), v2, OpaqueTypeConformance2, boxed_opaque_existential_1);
      sub_21B9CA1E8(v10, *(&v10 + 1), v11, *(&v11 + 1), 1u);
      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    v12 = v66;
    v13 = v67;
    v51 = v62;
    v52 = v9;
    LOBYTE(v53[0]) = 0;
    *(v53 + 1) = *(v1 + 33);
    *&v53[1] = *(v1 + 6);
    *(&v53[1] + 1) = *(&v65 + 1);
    LOBYTE(v54) = v66;
    *(&v54 + 1) = *(v1 + 65);
    *(&v54 + 1) = *(v1 + 9);
    LOWORD(v55) = v67;
    v14 = *(v1 + 82);
    *(&v55 + 1) = *(v1 + 11);
    *(&v55 + 2) = v14;
    RUIImage.preloadedImage.getter();
    if (v15)
    {
      v16 = v15;
      v17 = sub_21B9E0628();
      v18 = v68 | ~(v12 & v13);
      *(&v60 + 1) = v2;
      v61 = swift_getOpaqueTypeConformance2();
      v19 = __swift_allocate_boxed_opaque_existential_1(&v59);
      sub_21BA3A818(v18 & 1, v17, v19);
    }

    else
    {
      v38 = sub_21BA87B2C();
      v40 = v39;
      v41 = swift_allocObject();
      v42 = v69;
      v41[7] = v68;
      v41[8] = v42;
      v41[9] = v70[0];
      *(v41 + 153) = *(v70 + 9);
      v43 = v65;
      v41[3] = v64;
      v41[4] = v43;
      v44 = v67;
      v41[5] = v66;
      v41[6] = v44;
      v45 = v63;
      v41[1] = v62;
      v41[2] = v45;
      *(&v60 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB68);
      v61 = sub_21BA12D2C();
      v46 = swift_allocObject();
      *&v59 = v46;
      v46[2] = v38;
      v46[3] = v40;
      v46[4] = sub_21BA12D24;
      v46[5] = v41;
      v46[6] = 0;
      v46[7] = 0;
      sub_21B9FA25C(&v62, &v51);
    }
  }

  sub_21B9AFF80(&v59, &v51, &qword_27CD9EB60);
  v34 = *(&v52 + 1);
  if (*(&v52 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
    v35 = sub_21B9FD000(v34);
    sub_21B9ABAAC(&v59, &qword_27CD9EB60);
    result = __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  else
  {
    sub_21B9ABAAC(&v59, &qword_27CD9EB60);
    result = sub_21B9ABAAC(&v51, &qword_27CD9EB60);
    v35 = 0;
  }

  *v50 = v35;
  return result;
}

id sub_21BA108E0()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + 56);
  v7 = *(v0 + 144);
  if (*(v0 + 64))
  {
    v6 = (v0 + 104);
  }

  v8 = *v6;
  if (*(v0 + 64) == 1 && (*(v0 + 120) & 1) != 0 || (!*(v0 + 80) ? (v9 = (v0 + 72)) : (v9 = (v0 + 112)), (*(v0 + 80) & *(v0 + 120) & 1) != 0))
  {
    v10 = objc_allocWithZone(MEMORY[0x277D1B1D0]);

    return [v10 init];
  }

  else
  {
    v12 = *v9;
    if (*(v0 + 152))
    {
      v13 = *(v0 + 144);
    }

    else
    {
      v14 = v3;

      sub_21BA8820C();
      v15 = sub_21BA8740C();
      sub_21BA8670C();

      sub_21BA86E8C();
      swift_getAtKeyPath();
      sub_21B9CB19C(v7, 0);
      (*(v2 + 8))(v5, v14);
      v13 = *&v16[1];
    }

    return [objc_allocWithZone(MEMORY[0x277D1B1D0]) initWithSize:v8 scale:{v12, v13}];
  }
}

uint64_t sub_21BA10AE8(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_21BA8801C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BA87FEC();
  sub_21B9FA25C(a1, v14);
  v6 = sub_21BA87FDC();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = a1[7];
  *(v7 + 128) = a1[6];
  *(v7 + 144) = v9;
  *(v7 + 160) = a1[8];
  *(v7 + 169) = *(a1 + 137);
  v10 = a1[3];
  *(v7 + 64) = a1[2];
  *(v7 + 80) = v10;
  v11 = a1[5];
  *(v7 + 96) = a1[4];
  *(v7 + 112) = v11;
  v12 = a1[1];
  *(v7 + 32) = *a1;
  *(v7 + 48) = v12;
  sub_21B9F2BA4(0, 0, v4, &unk_21BA99340, v7);
}

uint64_t sub_21BA10C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_21BA87FEC();
  v4[3] = sub_21BA87FDC();
  v8 = (*(**(a4 + 128) + 176) + **(**(a4 + 128) + 176));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_21B9F7028;

  return v8();
}

uint64_t RUIImageView.defaultSize(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(v3 + 48);
  v16[2] = *(v3 + 32);
  v17 = v7;
  v8 = *(v3 + 80);
  v18 = *(v3 + 64);
  v19 = v8;
  v9 = *(v3 + 16);
  v16[0] = *v3;
  v16[1] = v9;
  v10 = *(v3 + 121);
  *(a1 + 144) = swift_getKeyPath();
  *(a1 + 152) = 0;
  v11 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v11;
  v12 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v12;
  v13 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v13;
  *(a1 + 96) = 1;
  *(a1 + 104) = a2;
  *(a1 + 112) = a3;
  *(a1 + 120) = 0;
  *(a1 + 128) = v17;
  *(a1 + 136) = 0;
  *(a1 + 121) = v10;
  sub_21B9E52FC(v16, &v15);
}

uint64_t sub_21BA10E34@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = *(a1 + 48);
  *(a8 + 144) = swift_getKeyPath();
  *(a8 + 152) = 0;
  v17 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v17;
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 48) = v16;
  *(a8 + 56) = *(a1 + 56);
  *(a8 + 72) = *(a1 + 72);
  *(a8 + 88) = *(a1 + 88);
  *(a8 + 96) = a2;
  *(a8 + 104) = a4;
  *(a8 + 112) = a5;
  *(a8 + 120) = a6 & 1;
  *(a8 + 128) = v16;
  *(a8 + 136) = a7 & 1;
  *(a8 + 121) = a3;
}

uint64_t RUIImageView.resizable()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v15[2] = *(v1 + 32);
  v16 = v3;
  v4 = *(v1 + 80);
  v17 = *(v1 + 64);
  v18 = v4;
  v5 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v5;
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  v9 = *(v1 + 121);
  *(a1 + 144) = swift_getKeyPath();
  *(a1 + 152) = 0;
  v10 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v10;
  v11 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v11;
  v12 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v12;
  *(a1 + 96) = 1;
  *(a1 + 104) = v6;
  *(a1 + 112) = v7;
  *(a1 + 120) = v8;
  *(a1 + 128) = v16;
  *(a1 + 136) = 0;
  *(a1 + 121) = v9;
  sub_21B9E52FC(v15, &v14);
}

uint64_t RUIImageView.allowsSymbolResizing(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 48);
  v17[2] = *(v2 + 32);
  v18 = v5;
  v6 = *(v2 + 80);
  v19 = *(v2 + 64);
  v20 = v6;
  v7 = *(v2 + 16);
  v17[0] = *v2;
  v17[1] = v7;
  v8 = *(v2 + 96);
  v9 = *(v2 + 104);
  v10 = *(v2 + 112);
  v11 = *(v2 + 120);
  *(a2 + 144) = swift_getKeyPath();
  *(a2 + 152) = 0;
  v12 = *(v2 + 48);
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = v12;
  v13 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v13;
  v14 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v14;
  *(a2 + 96) = v8;
  *(a2 + 104) = v9;
  *(a2 + 112) = v10;
  *(a2 + 120) = v11;
  *(a2 + 128) = v18;
  *(a2 + 136) = 0;
  *(a2 + 121) = a1;
  sub_21B9E52FC(v17, &v16);
}

__n128 RUIImageView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 128);
  v34 = *(v1 + 112);
  *v35 = v3;
  *&v35[9] = *(v1 + 137);
  v4 = *(v1 + 48);
  v29 = *(v1 + 32);
  v30 = v4;
  v5 = *(v1 + 48);
  v31 = *(v1 + 64);
  v6 = *(v1 + 64);
  v7 = *(v1 + 96);
  v32 = *(v1 + 80);
  v33 = v7;
  v8 = *(v1 + 16);
  v28[0] = *v1;
  v28[1] = v8;
  v38 = v28[0];
  v39 = v8;
  v44 = v2;
  v45 = v34;
  v46[0] = *(v1 + 128);
  *(v46 + 9) = *(v1 + 137);
  v41 = v5;
  v42 = v6;
  *(&v40 + 1) = *(v1 + 33);
  DWORD1(v40) = *(v1 + 36);
  v43 = v32;
  LOBYTE(v40) = v29;
  *(&v40 + 1) = *(&v29 + 1);
  sub_21BA102D4(&v36);
  v9 = v36;
  if (*(&v29 + 1))
  {
    if (v36)
    {
      v10 = *(&v29 + 1);

      v11 = sub_21BA278A0();
    }

    else
    {
      v13 = *(&v29 + 1);
      v11 = 0;
    }

    *&v36 = v9;
    *(&v36 + 1) = v11;
    LOBYTE(v37) = 0;
    sub_21BA12C48(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EAC0);
    sub_21BA12A64();
    sub_21BA8715C();
    v14 = v38;
    v36 = v38;
    v37 = v39;
    sub_21BA12CC8(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E450);
    sub_21BA129E0();
    sub_21B9FD5F8();
    sub_21BA8715C();

    sub_21BA12CCC(v14);

    sub_21BA12C88(v9);
    v15 = *(&v38 + 1);
    v25 = v38;
    v16 = v39;
  }

  else
  {
    if (v29 == 1)
    {
      if (v36)
      {

        v12 = sub_21BA8787C();
      }

      else
      {
        v12 = 0;
      }

      *&v36 = v9;
      *(&v36 + 1) = v12;
      LOBYTE(v37) = 1;
      sub_21BA12C48(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EAC0);
      sub_21BA12A64();
      sub_21BA8715C();
      v36 = v38;
      v37 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EAB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E450);
      sub_21BA129E0();
      sub_21B9FD5F8();
      sub_21BA8715C();

      sub_21BA12C88(v9);
    }

    else
    {
      *(&v36 + 1) = 0;
      v37 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EAB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E450);
      sub_21BA129E0();
      sub_21B9FD5F8();
      sub_21BA8715C();
    }

    v15 = *(&v38 + 1);
    v25 = v38;
    v16 = v39;
  }

  v17 = BYTE1(v39);
  v18 = v35[8];
  sub_21BA87B2C();
  sub_21BA86AEC();
  LOBYTE(v36) = v17;
  *&v27[6] = v38;
  *&v27[22] = v39;
  *&v27[38] = v40;
  v19 = sub_21BA87B1C();
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EA58) + 36);
  sub_21BA11528(v28, v22);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EA60) + 36));
  *v23 = v19;
  v23[1] = v21;
  *(a1 + 80) = *&v27[46];
  *(a1 + 66) = *&v27[32];
  result = *&v27[16];
  *(a1 + 50) = *&v27[16];
  *a1 = v25;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 17) = v17;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 33) = v18;
  *(a1 + 34) = *v27;
  return result;
}

uint64_t sub_21BA11528@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EAF0);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EAF8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB00);
  MEMORY[0x28223BE20](v56);
  v10 = &v50 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB08);
  MEMORY[0x28223BE20](v57);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB10);
  v60 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v19 = a1[3];
  v70 = a1[2];
  v71 = v19;
  v20 = a1[5];
  v72 = a1[4];
  v73 = v20;
  v21 = a1[1];
  v68 = *a1;
  v69 = v21;
  v22.n128_f64[0] = sub_21BA57DFC(&v82);
  v23 = v84;
  if (v84)
  {
    v52 = v18;
    v54 = a2;
    v24 = v82;
    v74 = v82;
    v75 = *v83;
    v76 = *&v83[16];
    *v77 = *&v83[32];
    *&v77[15] = *&v83[47];
    v78 = v84;
    v79 = v85;
    v80 = v86;
    v81 = v87;
    KeyPath = swift_getKeyPath();
    v65 = *&v83[7];
    v66 = *&v83[23];
    v67 = *&v83[39];
    v62 = v85;
    v61[104] = 0;
    v63 = v86;
    v64 = v87;
    v61[112] = 0;
    v53 = v13;
    sub_21B9AFF80(&v82, v61, &qword_27CD9EA48);
    if (v24)
    {
      sub_21BA12BF4();
    }

    else
    {
      sub_21BA12BA0();
    }

    v50 = sub_21BA87AEC();
    v27 = sub_21BA87B2C();
    v29 = v28;
    v30 = 1;
    if (v24)
    {
      v31 = v55;
      sub_21BA872DC();
      *(v31 + *(v59 + 56)) = 256;
      sub_21B9AB6D4(v31, v8, &qword_27CD9EAF0);
      v30 = 0;
    }

    (*(v58 + 56))(v8, v30, 1, v59);
    v32 = &v10[*(v56 + 36)];
    sub_21B9AB6D4(v8, v32, &qword_27CD9EAF8);
    v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB20) + 36));
    *v33 = v27;
    v33[1] = v29;
    v34 = v67;
    *(v10 + 1) = v66;
    *(v10 + 2) = v34;
    *v10 = v65;
    *(v10 + 6) = v23;
    *(v10 + 11) = v64;
    *(v10 + 72) = v63;
    *(v10 + 56) = v62;
    v10[96] = 1;
    __asm { FMOV            V0.2D, #14.0 }

    *(v10 + 104) = _Q0;
    *(v10 + 60) = 256;
    *(v10 + 16) = v23;
    v10[136] = 0;
    v40 = v50;
    *(v10 + 18) = KeyPath;
    v10[152] = 0;
    *(v10 + 20) = v40;
    *(v10 + 84) = 256;
    v41 = sub_21BA87B2C();
    v43 = v42;
    v44 = &v12[*(v57 + 36)];
    sub_21BA11B20(&v74, v44);
    sub_21B9ABAAC(&v82, &qword_27CD9EA48);
    v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB28) + 36));
    *v45 = v41;
    v45[1] = v43;
    sub_21B9AB6D4(v10, v12, &qword_27CD9EB00);
    sub_21B9AB6D4(v12, v15, &qword_27CD9EB08);
    v46 = v52;
    v47 = v53;
    *&v15[*(v53 + 36)] = xmmword_21BA990B0;
    sub_21B9AB6D4(v15, v46, &qword_27CD9EB10);
    v48 = v46;
    v49 = v54;
    sub_21B9AB6D4(v48, v54, &qword_27CD9EB10);
    return (*(v60 + 56))(v49, 0, 1, v47);
  }

  else
  {
    v25 = *(v60 + 56);

    return v25(a2, 1, 1, v13, v22);
  }
}

uint64_t sub_21BA11B20@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BA872EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB38);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  if (*a1)
  {
    v25[0] = v9;
    sub_21BA872DC();
    sub_21BA86A9C();
    v13 = v25[1];
    v14 = v25[3];
    v15 = v25[4];
    v16 = v25[5];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB40);
    v18 = v25[2];
    (*(v5 + 16))(&v12[*(v17 + 52)], v7, v4);
    *v12 = v13;
    *(v12 + 1) = v18;
    *(v12 + 2) = v14;
    *(v12 + 3) = v15;
    *(v12 + 4) = v16;
    *&v12[*(v17 + 56)] = 256;
    v19 = sub_21BA87B2C();
    v21 = v20;
    (*(v5 + 8))(v7, v4);
    v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB48) + 36)];
    *v22 = v19;
    v22[1] = v21;
    sub_21B9AB6D4(v12, a2, &qword_27CD9EB38);
    return (*(v25[0] + 56))(a2, 0, 1, v8);
  }

  else
  {
    v24 = *(v9 + 56);

    return v24(a2, 1, 1, v8, v10);
  }
}

double RUIImageView.init(from:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_21B9B3220(a1, v13);
  memset(v10, 10, sizeof(v10));
  sub_21BA11EF8();
  RUIImage.Keys.init(image:systemImage:symbolColor:enclosureColor:imageBundleIdentifier:imageTypeIdentifier:tintColor:imageWidth:imageHeight:symbolRenderingMode:)(&v10[9], &v10[8], &v10[7], &v10[6], &v10[5], &v10[4], &v10[3], &v10[2], &v11, &v10[1], v10);
  sub_21BA11F4C(v13, v11, v12, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    v6 = v14[7];
    a2[6] = v14[6];
    a2[7] = v6;
    a2[8] = v15[0];
    *(a2 + 137) = *(v15 + 9);
    v7 = v14[3];
    a2[2] = v14[2];
    a2[3] = v7;
    v8 = v14[5];
    a2[4] = v14[4];
    a2[5] = v8;
    result = *v14;
    v9 = v14[1];
    *a2 = v14[0];
    a2[1] = v9;
  }

  return result;
}

unint64_t sub_21BA11EF8()
{
  result = qword_27CD9EA68;
  if (!qword_27CD9EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EA68);
  }

  return result;
}

uint64_t sub_21BA11F4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, _OWORD *a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v62 = 0;
  sub_21B9B3220(a1, v55);
  v53 = a2;
  v54 = a3;
  v10 = sub_21BA11EF8();
  v11 = sub_21B9AC2EC();
  RUIImage.init<A>(from:keys:decodeBadge:)(v55, &v53, v11 & 1, &type metadata for RUIImage.DefaultCodingKeys, v10, &v56);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v73 = v61;
    v68 = v56;
    v69 = v57;
    v66 = 1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    Decoder.ruiDecodingContext.getter();
    v13 = v34;

    v24[2] = v58;
    v24[3] = v59;
    v24[4] = v60;
    v24[5] = v61;
    v24[0] = v56;
    v24[1] = v57;
    v36 = v58;
    v37 = v59;
    v38 = v60;
    v39 = v61;
    v34 = v56;
    v35 = v57;
    sub_21B9E52FC(v24, v26);
    v14 = sub_21B9AB470();
    (*(*v13 + 168))(&v34, v14, v15);
    swift_unknownObjectRelease();
    v25[2] = v36;
    v25[3] = v37;
    v25[4] = v38;
    v25[5] = v39;
    v25[0] = v34;
    v25[1] = v35;
    sub_21B9EA8A0(v25);
    v27 = v70;
    v28 = v71;
    v29 = v72;
    v30 = v73;
    v26[0] = v68;
    v26[1] = v69;
    LOBYTE(v31) = 0;
    *(&v31 + 1) = *v67;
    DWORD1(v31) = *&v67[3];
    *(&v31 + 1) = 0;
    *&v32 = 0;
    v16 = v66;
    WORD4(v32) = v66;
    *(&v32 + 10) = v64;
    HIWORD(v32) = v65;
    *v33 = v13;
    v33[8] = 0;
    *&v33[9] = *v63;
    *&v33[12] = *&v63[3];
    *&v33[16] = KeyPath;
    v17 = v62;
    v33[24] = v62;
    v18 = v69;
    *a4 = v68;
    a4[1] = v18;
    v19 = v30;
    a4[4] = v29;
    a4[5] = v19;
    v20 = v28;
    a4[2] = v27;
    a4[3] = v20;
    v21 = v31;
    v22 = v32;
    v23 = *v33;
    *(a4 + 137) = *&v33[9];
    a4[7] = v22;
    a4[8] = v23;
    a4[6] = v21;
    sub_21B9FA25C(v26, &v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36 = v70;
    v37 = v71;
    v38 = v72;
    v39 = v73;
    v34 = v68;
    v35 = v69;
    v40 = 0;
    *v41 = *v67;
    *&v41[3] = *&v67[3];
    v42 = 0;
    v43 = 0;
    v44 = v16;
    v45 = 0;
    v46 = v64;
    v47 = v65;
    v48 = v13;
    v49 = 0;
    *v50 = *v63;
    *&v50[3] = *&v63[3];
    v51 = KeyPath;
    v52 = v17;
    return sub_21BA12620(&v34);
  }
}

uint64_t RUIImageView.init<A>(from:keys:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30[0] = a5;
  v9 = type metadata accessor for RUIImage.Keys();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - v11;
  KeyPath = swift_getKeyPath();
  v67 = 0;
  v13 = a1;
  sub_21B9B3220(a1, v60);
  (*(v10 + 16))(v12, a2, v9);
  v14 = sub_21B9AC2EC();
  v15 = v30[1];
  RUIImage.init<A>(from:keys:decodeBadge:)(v60, v12, v14 & 1, a3, a4, &v61);
  if (v15)
  {
    (*(v10 + 8))(a2, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v75 = v63;
    v76 = v64;
    v77 = v65;
    v78 = v66;
    v73 = v61;
    v74 = v62;
    v71 = 1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    Decoder.ruiDecodingContext.getter();
    v17 = v41;

    v31[2] = v63;
    v31[3] = v64;
    v31[4] = v65;
    v31[5] = v66;
    v31[0] = v61;
    v31[1] = v62;
    v43 = v63;
    v44 = v64;
    v45 = v65;
    v46 = v66;
    v41 = v61;
    v42 = v62;
    sub_21B9E52FC(v31, v33);
    v18 = sub_21B9AB470();
    (*(*v17 + 168))(&v41, v18, v19);
    swift_unknownObjectRelease();
    (*(v10 + 8))(a2, v9);
    v32[2] = v43;
    v32[3] = v44;
    v32[4] = v45;
    v32[5] = v46;
    v32[0] = v41;
    v32[1] = v42;
    sub_21B9EA8A0(v32);
    v34 = v75;
    v35 = v76;
    v36 = v77;
    v37 = v78;
    v33[0] = v73;
    v33[1] = v74;
    LOBYTE(v38) = 0;
    *(&v38 + 1) = *v72;
    DWORD1(v38) = *&v72[3];
    *(&v38 + 1) = 0;
    *&v39 = 0;
    v20 = v71;
    WORD4(v39) = v71;
    *(&v39 + 10) = v69;
    HIWORD(v39) = v70;
    *&v40[0] = v17;
    BYTE8(v40[0]) = 0;
    *(v40 + 9) = *v68;
    HIDWORD(v40[0]) = *&v68[3];
    v21 = KeyPath;
    *&v40[1] = KeyPath;
    v22 = v67;
    BYTE8(v40[1]) = v67;
    v23 = v74;
    v24 = v30[0];
    *v30[0] = v73;
    v24[1] = v23;
    v25 = v37;
    v24[4] = v36;
    v24[5] = v25;
    v26 = v35;
    v24[2] = v34;
    v24[3] = v26;
    v27 = v38;
    v28 = v39;
    v29 = v40[0];
    *(v24 + 137) = *(v40 + 9);
    v24[7] = v28;
    v24[8] = v29;
    v24[6] = v27;
    sub_21B9FA25C(v33, &v41);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v43 = v75;
    v44 = v76;
    v45 = v77;
    v46 = v78;
    v41 = v73;
    v42 = v74;
    v47 = 0;
    *v48 = *v72;
    *&v48[3] = *&v72[3];
    v49 = 0;
    v50 = 0;
    v51 = v20;
    v52 = 0;
    v53 = v69;
    v54 = v70;
    v55 = v17;
    v56 = 0;
    *v57 = *v68;
    *&v57[3] = *&v68[3];
    v58 = v21;
    v59 = v22;
    return sub_21BA12620(&v41);
  }
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_21BA126C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BA1270C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BA12784()
{
  result = qword_27CD9EA70;
  if (!qword_27CD9EA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EA58);
    sub_21BA1283C();
    sub_21B9B35B8(&qword_27CD9EAE8, &qword_27CD9EA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EA70);
  }

  return result;
}

unint64_t sub_21BA1283C()
{
  result = qword_27CD9EA78;
  if (!qword_27CD9EA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EA80);
    sub_21BA128C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EA78);
  }

  return result;
}

unint64_t sub_21BA128C8()
{
  result = qword_27CD9EA88;
  if (!qword_27CD9EA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EA90);
    sub_21BA12954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EA88);
  }

  return result;
}

unint64_t sub_21BA12954()
{
  result = qword_27CD9EA98;
  if (!qword_27CD9EA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EAA0);
    sub_21BA129E0();
    sub_21B9FD5F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EA98);
  }

  return result;
}

unint64_t sub_21BA129E0()
{
  result = qword_27CD9EAA8;
  if (!qword_27CD9EAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EAB0);
    sub_21BA12A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EAA8);
  }

  return result;
}

unint64_t sub_21BA12A64()
{
  result = qword_27CD9EAB8;
  if (!qword_27CD9EAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EAC0);
    sub_21BA12AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EAB8);
  }

  return result;
}

unint64_t sub_21BA12AE8()
{
  result = qword_27CD9EAC8;
  if (!qword_27CD9EAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EAD0);
    sub_21B9B35B8(&qword_27CD9EAD8, &qword_27CD9EAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EAC8);
  }

  return result;
}

unint64_t sub_21BA12BA0()
{
  result = qword_27CD9EB18;
  if (!qword_27CD9EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EB18);
  }

  return result;
}

unint64_t sub_21BA12BF4()
{
  result = qword_27CD9EB30;
  if (!qword_27CD9EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EB30);
  }

  return result;
}

uint64_t sub_21BA12C48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21BA12C88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_21BA12CD0()
{
  result = qword_27CD9EB58;
  if (!qword_27CD9EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EB58);
  }

  return result;
}

unint64_t sub_21BA12D2C()
{
  result = qword_27CD9EB70;
  if (!qword_27CD9EB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EB68);
    sub_21B9B35B8(&qword_27CD9EB78, &qword_27CD9EB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EB70);
  }

  return result;
}

unint64_t sub_21BA12DE4()
{
  result = qword_27CD9EB90;
  if (!qword_27CD9EB90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD9EB90);
  }

  return result;
}

uint64_t sub_21BA12E30()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21B9AC1F4;

  return sub_21BA10C40(v2, v3, v4, v0 + 32);
}

id sub_21BA12F80(void *a1)
{
  v1 = a1;
  v2 = sub_21BA12FC4();

  return v2;
}

id sub_21BA12FC4()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationItem];

    if (v3)
    {
      return v3;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for NavigationEnabledHostingController();
  v5 = objc_msgSendSuper2(&v6, sel_navigationItem);

  return v5;
}

uint64_t sub_21BA130E0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_21BA145F8(a1);
  (*(*(*(v2 + qword_27CDB21A0) - 8) + 8))(a1);
  return v5;
}

void *sub_21BA131A4(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27CDB21A0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v12 - v7, v6);
  v8 = sub_21BA8705C();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_21BA132DC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NavigationEnabledHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_21BA133B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationEnabledHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall RUIPage.initializeSwift()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E028);
  MEMORY[0x28223BE20](v0 - 8);
  v58 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v57 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB98);
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v44 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E3B8) - 8;
  MEMORY[0x28223BE20](v49);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v44 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4A0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v44 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4B8);
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E0C0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - v23;
  v50 = type metadata accessor for RUIToolbarContentManager();
  v60 = sub_21B9B4FD8();
  v46 = v60;
  swift_retain_n();
  sub_21B9C095C(&v60, &type metadata for ToolBarContentManagerKey, &type metadata for ToolBarContentManagerKey, &off_28172C688);

  *v17 = 1;
  (*(v15 + 104))(v17, *MEMORY[0x277D85768], v14);
  sub_21BA8802C();
  (*(v15 + 8))(v17, v14);
  v25 = *(v22 + 32);
  v45 = v13;
  v25(v13, v24, v21);
  v26 = v48;
  v27 = v49;
  v28 = *(v47 + 32);
  v28(&v13[*(v49 + 56)], v20, v48);
  v29 = v13;
  v30 = v51;
  sub_21B9AFF80(v29, v51, &qword_27CD9E3B8);
  v31 = *(v27 + 56);
  v32 = v52;
  v25(v52, v30, v21);
  v28((v32 + v31), (v30 + v31), v26);
  v33 = v59;
  sub_21B9C095C(v32, &type metadata for SMSTokenStreamKey, &type metadata for SMSTokenStreamKey, &off_28172C670);
  v34 = sub_21B9ABAAC(v45, &qword_27CD9E3B8);
  v60 = sub_21BA5291C(v34);
  v61 = v35 & 1;
  sub_21BA146E0();
  sub_21BA14734();

  v36 = v53;
  sub_21BA876EC();

  v37 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EBA8));
  v38 = v55;
  v39 = v56;
  (*(v55 + 16))(v54, v36, v56);
  v40 = sub_21BA8706C();
  (*(v38 + 8))(v36, v39);
  [v33 setToolbarContentViewController_];

  v41 = type metadata accessor for PinViewElement(0);
  v42 = v57;
  (*(*(v41 - 8) + 56))(v57, 1, 1, v41);
  v43 = v58;
  sub_21B9AFF80(v42, v58, &qword_27CD9E028);
  sub_21B9C095C(v43, &type metadata for PinViewElementKey, &type metadata for PinViewElementKey, &off_28172C658);

  sub_21B9ABAAC(v42, &qword_27CD9E028);
}

uint64_t sub_21BA13AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E028);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21B9AFF80(a1, &v6 - v3, &qword_27CD9E028);
  sub_21B9C095C(v4, &type metadata for PinViewElementKey, &type metadata for PinViewElementKey, &off_28172C658);
  return sub_21B9ABAAC(a1, &qword_27CD9E028);
}

Swift::Void __swiftcall RUIPage.deinitSwift()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E3B8) - 8;
  v20 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4B8);
  v21 = *(v3 - 8);
  v4 = v21;
  MEMORY[0x28223BE20](v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E0C0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  sub_21B9C07A0(&type metadata for SMSTokenStreamKey, &off_28172C670, v2);
  v13 = *(v0 + 56);
  v14 = *(v10 + 32);
  v14(v12, v2, v9);
  v15 = *(v4 + 32);
  v15(v8, &v2[v13], v3);
  v16 = *(v20 + 56);
  v14(v2, v12, v9);
  v15(&v2[v16], v8, v3);
  v17 = v21;
  v18 = v22;
  (*(v21 + 16))(v22, &v2[v16], v3);
  sub_21B9ABAAC(v2, &qword_27CD9E3B8);
  sub_21BA8804C();
  (*(v17 + 8))(v18, v3);
}

uint64_t sub_21BA13E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E3B8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  sub_21B9C07A0(&type metadata for SMSTokenStreamKey, &off_28172C670, &v12 - v6);
  v8 = *(v5 + 56);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E0C0);
  (*(*(v9 - 8) + 32))(a1, v7, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4B8);
  return (*(*(v10 - 8) + 32))(a2, &v7[v8], v10);
}

Swift::Void __swiftcall RUIPage.publishSMSToken(_:)(Swift::String a1)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E3B8) - 8;
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4B8);
  v25 = *(v4 - 8);
  v5 = v25;
  MEMORY[0x28223BE20](v4);
  v29 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E0C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9EBB0);
  v27 = *(v14 - 8);
  v28 = v14;
  MEMORY[0x28223BE20](v14);
  v26 = &v24 - v15;
  sub_21B9C07A0(&type metadata for SMSTokenStreamKey, &off_28172C670, v3);
  v16 = *(v1 + 56);
  v17 = *(v11 + 32);
  v17(v13, v3, v10);
  v18 = *(v5 + 32);
  v18(v9, &v3[v16], v4);
  v19 = *(v24 + 56);
  v17(v3, v13, v10);
  v18(&v3[v19], v9, v4);
  v20 = v25;
  v21 = &v3[v19];
  v22 = v29;
  (*(v25 + 16))(v29, v21, v4);
  sub_21B9ABAAC(v3, &qword_27CD9E3B8);
  v31 = v30;

  v23 = v26;
  sub_21BA8803C();
  (*(v20 + 8))(v22, v4);
  (*(v27 + 8))(v23, v28);
}

void RUIPage.toolbarContentViewController.setter(void *a1)
{
  v2 = a1;
  v1 = a1;
  sub_21B9C095C(&v2, &type metadata for TolbarContentViewControllerKey, &type metadata for TolbarContentViewControllerKey, &off_28172C640);
}

id sub_21BA145A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 toolbarContentViewController];
  *a2 = result;
  return result;
}

uint64_t sub_21BA145F8(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_21BA8706C();
}

unint64_t sub_21BA146E0()
{
  result = qword_27CD9EBA0;
  if (!qword_27CD9EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EBA0);
  }

  return result;
}

unint64_t sub_21BA14734()
{
  result = qword_27CD9CF98;
  if (!qword_27CD9CF98)
  {
    type metadata accessor for RUIToolbarContentManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CF98);
  }

  return result;
}

void *sub_21BA1481C()
{
  result = malloc(1uLL);
  if (result)
  {
    qword_27CDA9408 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BA14848()
{
  if (qword_27CDA9400 != -1)
  {
    swift_once();
  }

  return qword_27CDA9408;
}

id sub_21BA14898(void *a1)
{
  v1 = a1;
  sub_21B9C07A0(&type metadata for KVOAssociatedKey, &off_28172C6D0, &v4);

  v2 = v4;

  return v2;
}

void sub_21BA148F8(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = a3;
  v5 = a1;
  sub_21B9C095C(&v6, &type metadata for KVOAssociatedKey, &type metadata for KVOAssociatedKey, &off_28172C6D0);
}

void sub_21BA14964(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = _s19MarkdownTapDetectorCMa();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCE8RemoteUICSo7UILabel19MarkdownTapDetector_handler];
  *v9 = a1;
  *(v9 + 1) = a2;
  v13.receiver = v8;
  v13.super_class = v7;

  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v12 = [v11 initWithTarget:v10 action:{sel_didTapLabel_, v13.receiver, v13.super_class}];
  [v12 setDelegate_];
  [v3 setUserInteractionEnabled_];
  [v3 addGestureRecognizer_];
  a3[3] = v7;

  *a3 = v10;
}

id sub_21BA14A54(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtCE8RemoteUICSo7UILabel19MarkdownTapDetector_handler];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21BA14AD8(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  sub_21BA14964(sub_21BA16200, v5, v9);

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v7 = sub_21BA8898C();
  __swift_destroy_boxed_opaque_existential_1(v9);

  return v7;
}

void sub_21BA14B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v33 = a1;
  v34 = sub_21BA862DC();
  v29 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_21BA861FC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21BA8620C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21BA8622C();
  *&v18 = MEMORY[0x28223BE20](v17 - 8).n128_u64[0];
  if (a2)
  {
    v31 = v3;
    v30 = swift_allocBox();
    v20 = v19;
    (*(v14 + 104))(v16, *MEMORY[0x277CC8BA8], v13);
    (*(v10 + 104))(v12, *MEMORY[0x277CC8B98], v9);

    sub_21BA8621C();
    sub_21B9AACF0(v32, v8);
    sub_21BA862BC();
    v21 = v31;
    v35 = [v31 font];
    sub_21BA15514();
    sub_21BA862EC();
    [v21 setText_];
    sub_21BA15568();
    (*(v29 + 16))(v28, v20, v34);
    v22 = sub_21BA882CC();
    [v21 setAttributedText_];

    v35 = v21;
    swift_getKeyPath();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v25 = v30;
    *(v24 + 16) = v23;
    *(v24 + 24) = v25;

    v26 = sub_21BA863BC();

    [v21 setFontObserver_];
  }

  else
  {

    [v3 setText_];
  }
}

id sub_21BA1507C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 font];
  *a2 = result;
  return result;
}

void sub_21BA150CC()
{
  v0 = sub_21BA862DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong attributedText];
    if (v7)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EC78);
      sub_21BA863AC();
      v8 = v11;
      if (v11 == 1)
      {
        v8 = 0;
      }

      v12 = v8;
      swift_beginAccess();
      sub_21BA15514();
      sub_21BA862EC();
      swift_endAccess();
      sub_21BA15568();
      swift_beginAccess();
      (*(v1 + 16))(v3, v4, v0);
      v9 = sub_21BA882CC();
      [v6 setAttributedText_];

      v6 = v9;
    }
  }
}

uint64_t sub_21BA152A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  if (!a3)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = sub_21BA864AC();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    goto LABEL_6;
  }

  v10 = sub_21BA87CBC();
  a3 = v11;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21BA8643C();
  v12 = sub_21BA864AC();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
LABEL_6:
  v14 = a1;
  sub_21BA14B9C(v10, a3, v9);

  return sub_21B9CD454(v9);
}

uint64_t sub_21BA153FC()
{
  v1 = (v0 + OBJC_IVAR____TtCE8RemoteUICSo7UILabel19MarkdownTapDetector_handler);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_21BA15454(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCE8RemoteUICSo7UILabel19MarkdownTapDetector_handler);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

unint64_t sub_21BA15514()
{
  result = qword_27CD9EBD0;
  if (!qword_27CD9EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EBD0);
  }

  return result;
}

unint64_t sub_21BA15568()
{
  result = qword_27CD9EBD8;
  if (!qword_27CD9EBD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD9EBD8);
  }

  return result;
}

uint64_t sub_21BA155C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 && (v7 = v6, (v8 = [v6 attributedText]) != 0))
    {
      v9 = v8;
      v10 = [objc_allocWithZone(MEMORY[0x277D74238]) init];
      v11 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
      v12 = [objc_allocWithZone(MEMORY[0x277D742D8]) initWithAttributedString_];
      [v10 addTextContainer_];
      [v12 addLayoutManager_];
      [v11 setLineFragmentPadding_];
      [v11 setLineBreakMode_];
      [v11 setMaximumNumberOfLines_];
      v13 = v5;
      [v7 bounds];
      [v11 setSize_];
      [a1 locationInView_];
      v17 = v16;
      v19 = v18;

      v20 = [v9 attributesAtIndex:objc_msgSend(v10 effectiveRange:{sel_characterIndexForPoint_inTextContainer_fractionOfDistanceBetweenInsertionPoints_, v11, 0, v17, v19), 0}];
      type metadata accessor for Key();
      sub_21BA161BC(&unk_27CD9EBE0);
      v21 = sub_21BA87BCC();

      if (*(v21 + 16))
      {
        v22 = sub_21B9B8D3C(*MEMORY[0x277D740E8]);
        if (v23)
        {
          sub_21B9AFDF0(*(v21 + 56) + 32 * v22, &v29);

          v24 = sub_21BA864AC();
          v25 = swift_dynamicCast();
          return (*(*(v24 - 8) + 56))(a2, v25 ^ 1u, 1, v24);
        }
      }
    }

    else
    {
    }
  }

  v27 = sub_21BA864AC();
  v28 = *(*(v27 - 8) + 56);

  return v28(a2, 1, 1, v27);
}

uint64_t sub_21BA1596C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_21BA864AC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x78))(a1, v8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_21B9CD454(v5);
  }

  v13 = (*(v7 + 32))(v10, v5, v6);
  v14 = (*((*v11 & *v1) + 0x58))(v13);
  v14(v10);

  return (*(v7 + 8))(v10, v6);
}

BOOL sub_21BA15D88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  (*((*MEMORY[0x277D85000] & *v1) + 0x78))(a1, v4);
  v7 = sub_21BA864AC();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_21B9CD454(v6);
  return v8;
}

id sub_21BA15FE4()
{
  v2.receiver = v0;
  v2.super_class = _s19MarkdownTapDetectorCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for Key()
{
  if (!qword_27CD9EC50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27CD9EC50);
    }
  }
}

uint64_t sub_21BA16088(uint64_t a1)
{
  v2 = sub_21BA161BC(&unk_27CD9EBE0);
  v3 = sub_21BA161BC(&qword_27CD9EC70);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21BA161BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21BA16200()
{
  v1 = *(v0 + 16);
  v2 = sub_21BA8641C();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_21BA1626C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D3A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_21BA886AC();
  __swift_allocate_value_buffer(v3, qword_27CDB21B0);
  v4 = __swift_project_value_buffer(v3, qword_27CDB21B0);
  sub_21BA8869C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

_OWORD *sub_21BA163A4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v156 = a1;
  v148 = sub_21BA8673C();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v154 = &v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EC80);
  MEMORY[0x28223BE20](v144);
  v142 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v143 = (&v140 - v6);
  MEMORY[0x28223BE20](v7);
  v145 = (&v140 - v8);
  v9 = sub_21BA8685C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v149 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v140 = &v140 - v13;
  MEMORY[0x28223BE20](v14);
  v152 = &v140 - v15;
  MEMORY[0x28223BE20](v16);
  v141 = (&v140 - v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v140 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v140 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v140 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = (&v140 - v28);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v140 - v32;
  v34 = *(v10 + 16);
  v146 = v2;
  v34(&v140 - v32, v2, v9, v31);
  v35 = *(v10 + 88);
  v157 = v9;
  v36 = v35(v33, v9);
  v37 = *MEMORY[0x277D23298];
  v155 = v10;
  if (v36 == v37)
  {
    v38 = v157;
    (v34)(v29, v33, v157);
    (*(v10 + 96))(v29, v38);
    v39 = *v29;
    v40 = *(v39 + 24);
    v158 = *(v39 + 16);
    v159 = v40;

    v41 = v33;
    if (swift_dynamicCast())
    {
      sub_21B9AFF70(v160, &v161);

      v42 = v156;

LABEL_16:
      (*(v10 + 8))(v41, v157);
      return sub_21B9AFF70(&v161, v42);
    }

    v153 = v33;
    v150 = v34;

    v47 = v147;
    v45 = v154;
    v46 = v149;
    goto LABEL_18;
  }

  v150 = v34;
  v151 = v10 + 16;
  v153 = v33;
  if (v36 == *MEMORY[0x277D23250])
  {
    v43 = v157;
    v150(v20, v153, v157);
    v10 = v155;
    (*(v155 + 96))(v20, v43);
    v158 = *(*v20 + 16);
    v44 = swift_dynamicCast();
    v45 = v154;
    v46 = v149;
    if (v44)
    {
      sub_21B9AFF70(v160, &v161);

      v42 = v156;
      v41 = v153;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v45 = v154;
  v46 = v149;
  if (v36 == *MEMORY[0x277D23290])
  {
    v48 = v157;
    v150(v23, v153, v157);
    v10 = v155;
    (*(v155 + 96))(v23, v48);
    v158 = *(*v23 + 16);
    if (swift_dynamicCast())
    {
      sub_21B9AFF70(v160, &v161);

      v41 = v153;
LABEL_15:
      v42 = v156;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v36 == *MEMORY[0x277D23260])
  {
    v41 = v153;
    v49 = v157;
    v150(v26, v153, v157);
    v10 = v155;
    (*(v155 + 96))(v26, v49);
    LOBYTE(v158) = *(*v26 + 16);
    if (swift_dynamicCast())
    {
      sub_21B9AFF70(v160, &v161);

      goto LABEL_15;
    }

LABEL_17:

    v47 = v147;
LABEL_18:
    v51 = sub_21B9E0270();
    v52 = v148;
    (v47[2])(v45, v51, v148);
    v53 = v150;
    v150(v46, v146, v157);
    v54 = sub_21BA8671C();
    v55 = sub_21BA881FC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v161 = v57;
      *v56 = 136315138;
      v58 = v157;
      v53(v152, v46, v157);
      v59 = sub_21BA87D2C();
      v61 = v60;
      v62 = *(v155 + 8);
      v62(v46, v58);
      v63 = sub_21B9B2A60(v59, v61, &v161);
      v64 = v47;
      v65 = v63;
      v66 = v153;

      *(v56 + 4) = v65;
      _os_log_impl(&dword_21B93D000, v54, v55, "unkown ruiPostbackValue for DecodableState: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x21CEFF180](v57, -1, -1);
      MEMORY[0x21CEFF180](v56, -1, -1);

      (v64)[1](v154, v148);
    }

    else
    {

      v62 = *(v155 + 8);
      v62(v46, v157);
      (v47)[1](v45, v52);
      v66 = v153;
    }

    v68 = v156;
    v67 = v157;
    *v156 = 0u;
    v68[1] = 0u;
    return (v62)(v66, v67);
  }

  v69 = v153;
  v70 = v156;
  v47 = v147;
  if (v36 == *MEMORY[0x277D23280])
  {
    v71 = v141;
    v72 = v157;
    v73 = v150;
    v150(v141, v153, v157);
    v74 = v155;
    (*(v155 + 96))(v71, v72);
    v75 = *v71;
    v76 = *(v75 + 2);
    v77 = *(v76 + 2);
    v78 = MEMORY[0x277D84F90];
    if (v77)
    {
      v154 = v75;
      *&v160[0] = MEMORY[0x277D84F90];

      sub_21BA19348(0, v77, 0);
      v78 = *&v160[0];
      v79 = *(v74 + 80);
      v149 = v76;
      v80 = &v76[(v79 + 32) & ~v79];
      v81 = *(v74 + 72);
      v82 = (v74 + 8);
      do
      {
        v83 = v152;
        v84 = v157;
        v85 = v73(v152, v80, v157);
        sub_21BA163A4(&v161, v85);
        (*v82)(v83, v84);
        *&v160[0] = v78;
        v87 = *(v78 + 16);
        v86 = *(v78 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_21BA19348((v86 > 1), v87 + 1, 1);
          v78 = *&v160[0];
        }

        *(v78 + 16) = v87 + 1;
        v88 = v78 + 32 * v87;
        v89 = v162;
        *(v88 + 32) = v161;
        *(v88 + 48) = v89;
        v80 += v81;
        --v77;
      }

      while (v77);

      v70 = v156;
      v69 = v153;
    }

    v70[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EC88);
    *v70 = v78;

    return (*(v155 + 8))(v69, v157);
  }

  else
  {
    if (v36 != *MEMORY[0x277D23268])
    {
      goto LABEL_18;
    }

    v90 = v140;
    v91 = v157;
    v150(v140, v153, v157);
    v92 = v155;
    v93 = v155 + 96;
    (*(v155 + 96))(v90, v91);
    v94 = v92;
    v140 = *v90;
    v95 = *(v140 + 2);
    v70[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D960);
    v96 = (v95 + 64);
    v97 = 1 << v95[32];
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v99 = v98 & *(v95 + 8);
    v100 = (v97 + 63) >> 6;
    v101 = (v93 - 88);
    v149 = v95;
    swift_bridgeObjectRetain_n();
    v102 = 0;
    v103 = MEMORY[0x277D84F98];
    v147 = (v93 - 88);
    v146 = v100;
    v141 = v96;
    while (v99)
    {
      v154 = v103;
LABEL_42:
      v108 = __clz(__rbit64(v99)) | (v102 << 6);
      v109 = (*(v149 + 6) + 16 * v108);
      v110 = *v109;
      v111 = v109[1];
      v112 = v144;
      v113 = v145;
      v150(v145 + *(v144 + 48), (*(v149 + 7) + *(v94 + 72) * v108), v157);
      *v113 = v110;
      v113[1] = v111;
      v114 = v143;
      sub_21B9AFF80(v113, v143, &qword_27CD9EC80);
      v115 = *v114;
      v116 = v114[1];
      v152 = v115;
      v117 = v142;
      sub_21B9AFF80(v113, v142, &qword_27CD9EC80);

      v119 = *(v112 + 48);
      sub_21BA163A4(&v161, v118);
      v106 = *(v94 + 8);
      v101 = v147;
      v106(v117 + v119, v157);
      if (*(&v162 + 1))
      {
        sub_21B9AFF70(&v161, v160);
        v120 = v154;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v158 = v120;
        v122 = v152;
        v123 = sub_21B940DCC(v152, v116);
        v125 = *(v120 + 2);
        v126 = (v124 & 1) == 0;
        v127 = __OFADD__(v125, v126);
        v128 = v125 + v126;
        if (v127)
        {
          goto LABEL_61;
        }

        v129 = v124;
        v148 = v106;
        v96 = v141;
        if (*(v120 + 3) >= v128)
        {
          v130 = v122;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v139 = v123;
            sub_21B9C9F00();
            v123 = v139;
          }
        }

        else
        {
          sub_21B9C98DC(v128, isUniquelyReferenced_nonNull_native);
          v130 = v122;
          v123 = sub_21B940DCC(v122, v116);
          if ((v129 & 1) != (v131 & 1))
          {
            goto LABEL_63;
          }
        }

        v94 = v155;
        v100 = v146;
        if (v129)
        {
          v104 = v123;

          v103 = v158;
          v105 = (*(v158 + 7) + 32 * v104);
          __swift_destroy_boxed_opaque_existential_1(v105);
          sub_21B9AFF70(v160, v105);
          sub_21B9ABAAC(v145, &qword_27CD9EC80);
        }

        else
        {
          v103 = v158;
          *&v158[8 * (v123 >> 6) + 64] |= 1 << v123;
          v136 = (*(v103 + 6) + 16 * v123);
          *v136 = v130;
          v136[1] = v116;
          sub_21B9AFF70(v160, (*(v103 + 7) + 32 * v123));
          sub_21B9ABAAC(v145, &qword_27CD9EC80);
          v137 = *(v103 + 2);
          v127 = __OFADD__(v137, 1);
          v138 = v137 + 1;
          if (v127)
          {
            goto LABEL_62;
          }

          *(v103 + 2) = v138;
        }

        v70 = v156;
        v106 = v148;
      }

      else
      {
        sub_21B9ABAAC(&v161, &qword_27CD9E7C0);
        v103 = v154;
        v132 = sub_21B940DCC(v152, v116);
        v134 = v133;

        if (v134)
        {
          v135 = swift_isUniquelyReferenced_nonNull_native();
          v158 = v103;
          v100 = v146;
          v96 = v141;
          if (!v135)
          {
            sub_21B9C9F00();
            v103 = v158;
          }

          sub_21B9AFF70((*(v103 + 7) + 32 * v132), v160);
          sub_21B9C9B94(v132, v103);
          sub_21B9ABAAC(v145, &qword_27CD9EC80);
          v70 = v156;
        }

        else
        {
          sub_21B9ABAAC(v145, &qword_27CD9EC80);
          memset(v160, 0, sizeof(v160));
          v70 = v156;
          v100 = v146;
          v96 = v141;
        }

        sub_21B9ABAAC(v160, &qword_27CD9E7C0);
      }

      v99 &= v99 - 1;
      v106(v143 + *(v144 + 48), v157);
    }

    while (1)
    {
      v107 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        break;
      }

      if (v107 >= v100)
      {

        *v70 = v103;

        return (*v101)(v153, v157);
      }

      v99 = v96[v107];
      ++v102;
      if (v99)
      {
        v154 = v103;
        v102 = v107;
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    result = sub_21BA88B0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BA17308()
{
  v0 = sub_21BA8655C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21BA8654C();
  sub_21BA8652C();
  (*(v1 + 8))(v3, v0);
  return sub_21BA868CC();
}

void *sub_21BA17458()
{
  v1 = OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_xmlElement;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21BA17504(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_xmlElement;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21BA1755C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_21BA175B8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

void sub_21BA17680()
{
  v1 = v0;
  v2 = sub_21BA886AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = (*((*MEMORY[0x277D85000] & *v0) + 0xA0))(v7);
  if (!v10)
  {
    return;
  }

  v11 = OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_loadedXML;
  if (*&v0[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_loadedXML] == v10)
  {

    return;
  }

  v25 = v10;
  v24[1] = type metadata accessor for RUI.XMLUIDecoder();
  v12 = RUI.XMLUIDecoder.__allocating_init()();
  if (qword_27CDA9720 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_27CDB21B0);
  v14 = *(v3 + 16);
  v14(v9, v13, v2);
  v15 = sub_21BA17A44();
  v28 = sub_21BA8688C();
  v27[0] = v15;
  swift_beginAccess();
  sub_21BA011F8(v27, v9);
  swift_endAccess();
  v16 = sub_21BA4F2BC();
  v14(v5, v16, v2);
  v17 = [v1 pageElement];
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v17 page];

  if (!v19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = [v19 objectModel];

  v21 = 0;
  if (v20)
  {
    v21 = sub_21BA198D8();
  }

  else
  {
    v27[1] = 0;
    v27[2] = 0;
  }

  v27[0] = v20;
  v28 = v21;
  swift_beginAccess();
  sub_21BA011F8(v27, v5);
  swift_endAccess();
  v22 = sub_21BA77524();
  v14(v9, v22, v2);
  v28 = MEMORY[0x277D839B0];
  LOBYTE(v27[0]) = 1;
  swift_beginAccess();
  sub_21BA011F8(v27, v9);
  swift_endAccess();
  sub_21BA17AA4();
  v27[0] = v25;
  v26 = v12;
  sub_21BA19890(&qword_27CD9ED10, type metadata accessor for RUI.XMLUIDecoder);
  sub_21BA8683C();

  v23 = *&v1[v11];
  *&v1[v11] = v25;
}

id sub_21BA17A44()
{
  v1 = OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow____lazy_storage___contentRegistry;
  v2 = *(v0 + OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow____lazy_storage___contentRegistry);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow____lazy_storage___contentRegistry);
  }

  else
  {
    v4 = sub_21BA5194C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_21BA17AA4()
{
  v1 = OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow____lazy_storage___remoteLoader;
  if (*(v0 + OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow____lazy_storage___remoteLoader))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow____lazy_storage___remoteLoader);
  }

  else
  {
    sub_21BA8684C();
    v3 = *(v0 + OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_remoteState);
    v4 = objc_allocWithZone(sub_21BA8688C());

    v2 = MEMORY[0x21CEFBB70](v3, [v4 init]);
    v5 = sub_21BA17A44();
    sub_21BA8682C();

    *(v0 + v1) = v2;
  }

  return v2;
}

id RUISwiftUITableViewRow.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RUISwiftUITableViewRow.init()()
{
  *&v0[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_cell] = 0;
  *&v0[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_xmlElement] = 0;
  *&v0[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_loadedXML] = 0;
  v1 = OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_remoteState;
  sub_21BA868AC();
  swift_allocObject();
  *&v0[v1] = sub_21BA8689C();
  *&v0[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow____lazy_storage___contentRegistry] = 0;
  *&v0[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow____lazy_storage___remoteLoader] = 0;
  *&v0[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_subscription] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RUISwiftUITableViewRow();
  return objc_msgSendSuper2(&v3, sel_init);
}

id RUISwiftUITableViewRow.__allocating_init(attributes:parent:)(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = sub_21BA87BBC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v2) initWithAttributes:v4 parent:a2];

  return v5;
}

id RUISwiftUITableViewRow.init(attributes:parent:)(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_cell] = 0;
  *&v2[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_xmlElement] = 0;
  *&v2[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_loadedXML] = 0;
  v6 = OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_remoteState;
  sub_21BA868AC();
  swift_allocObject();
  *&v2[v6] = sub_21BA8689C();
  *&v2[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow____lazy_storage___contentRegistry] = 0;
  *&v2[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow____lazy_storage___remoteLoader] = 0;
  *&v2[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_subscription] = 0;
  if (a1)
  {
    v7 = sub_21BA87BBC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for RUISwiftUITableViewRow();
  v8 = objc_msgSendSuper2(&v10, sel_initWithAttributes_parent_, v7, a2);

  if (v8)
  {
  }

  return v8;
}

void sub_21BA18074(void *a1)
{
  sub_21BA87CBC();

  sub_21BA8853C();
  v3 = [v1 attributes];
  if (v3)
  {
    v4 = v3;

    v5 = sub_21BA87BCC();

    if (*(v5 + 16) && (v6 = sub_21B947758(v10), (v7 & 1) != 0))
    {
      sub_21B9AFDF0(*(v5 + 56) + 32 * v6, v11);
      sub_21B9AFD9C(v10);

      if (swift_dynamicCast())
      {
        v8 = sub_21BA87C8C();

        v9 = [objc_opt_self() _remoteUI_colorWithString_defaultColor_];

        if (v9)
        {
          [a1 setBackgroundColor_];
        }
      }
    }

    else
    {

      sub_21B9AFD9C(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_21BA18208()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ECA8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v25 - v3);
  v5 = OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_cell;
  v6 = *(v0 + OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_cell);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_cell);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ECD8);
    v7 = sub_21BA43AB8(0, 0, 0);
  }

  v8 = OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_subscription;
  if (*(v0 + OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_subscription))
  {
    v9 = v6;

    sub_21BA868DC();
  }

  else
  {
    v10 = v6;
  }

  if ([v0 isSelected])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v7 isSelected];
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *v4 = v12;
  v13 = *MEMORY[0x277D23260];
  v14 = sub_21BA8685C();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v4, v13, v14);
  (*(v15 + 56))(v4, 0, 1, v14);
  sub_21BA868BC();
  sub_21BA17680();
  v16 = *((*MEMORY[0x277D85000] & *v0) + 0x128);
  v17 = v7;
  v16();
  [v17 setAccessoryType_];
  [v17 setAccessoryView_];
  [v17 setSelectionStyle_];

  sub_21BA17AA4();
  sub_21BA8684C();
  sub_21BA19890(&qword_27CD9EC90, MEMORY[0x277D23200]);
  v18 = sub_21BA8690C();

  v25[0] = v18;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21BA194C0;
  *(v20 + 24) = v19;
  sub_21BA8693C();
  v21 = sub_21BA869DC();

  *(v1 + v8) = v21;

  v25[0] = sub_21BA86BBC();
  v25[1] = v22;
  sub_21BA43F54(v25);

  v23 = *(v1 + v5);
  *(v1 + v5) = v17;

  return v17;
}

void sub_21BA18658(void *a1, uint64_t a2, const char **a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ECA8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v17 - v8);
  v10 = type metadata accessor for RUISwiftUITableViewRow();
  v17.receiver = a1;
  v17.super_class = v10;
  v11 = *a3;
  v12 = a1;
  objc_msgSendSuper2(&v17, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *v9 = v13;
  v14 = *MEMORY[0x277D23260];
  v15 = sub_21BA8685C();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v9, v14, v15);
  (*(v16 + 56))(v9, 0, 1, v15);
  sub_21BA868BC();
}

uint64_t sub_21BA187D0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EC80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v77 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v69 - v8);
  MEMORY[0x28223BE20](v10);
  v81 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ECE0);
  MEMORY[0x28223BE20](v12 - 8);
  v74 = &v69 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ECE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BA928B0;
  *(inited + 32) = 0x65756C6176;
  *(inited + 40) = 0xE500000000000000;
  *&v84 = 0x65756C6176;
  *(&v84 + 1) = 0xE500000000000000;
  sub_21BA8853C();
  v15 = [v1 attributes];
  if (!v15)
  {
    goto LABEL_45;
  }

  v16 = v15;
  v17 = sub_21BA87BCC();

  v18 = *(v17 + 16);
  v70 = a1;
  if (v18 && (v19 = sub_21B947758(v87), (v20 & 1) != 0))
  {
    sub_21B9AFDF0(*(v17 + 56) + 32 * v19, inited + 48);
  }

  else
  {
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  v72 = inited + 32;

  *(inited + 80) = 0x6574617473;
  *(inited + 88) = 0xE500000000000000;
  v73 = v2;
  v21 = *&v2[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_remoteState];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D960);
  v71 = inited;
  *(inited + 120) = v22;
  *&v84 = v21;
  sub_21BA868AC();
  sub_21BA19890(&qword_27CD9ECF0, MEMORY[0x277D23338]);

  sub_21BA87E5C();
  v23 = v74;
  v78 = v86;
  sub_21BA8873C();
  v24 = *(v5 + 48);
  v76 = v5 + 48;
  v75 = v24;
  v25 = v24(v23, 1, v4);
  v26 = MEMORY[0x277D84F98];
  if (v25 == 1)
  {
LABEL_7:

    v27 = v71;
    *(v71 + 96) = v26;
    sub_21B9AFD9C(v87);
    sub_21BA195D4(v27);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ECF8);
    swift_arrayDestroy();
    *&v83[0] = 0x6F72476F69646172;
    *(&v83[0] + 1) = 0xEA00000000007075;
    sub_21BA8853C();
    v28 = v73;
    v29 = [v73 attributes];
    if (!v29)
    {
      goto LABEL_46;
    }

    v30 = v29;
    v31 = sub_21BA87BCC();

    if (*(v31 + 16))
    {
      v32 = sub_21B947758(v87);
      if (v33)
      {
        sub_21B9AFDF0(*(v31 + 56) + 32 * v32, v83);
        sub_21B9AFD9C(v87);

        sub_21B9AFF70(v83, &v84);
        if (![v28 isSelected])
        {

          return __swift_destroy_boxed_opaque_existential_1(&v84);
        }

        v34 = v70;
        if (v70)
        {
LABEL_17:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7C0);
          v40 = sub_21BA87BBC();

          __swift_project_boxed_opaque_existential_1(&v84, v85);
          [v34 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(&v84);
        }

        __break(1u);
      }
    }

    sub_21B9AFD9C(v87);
    *&v83[0] = 25705;
    *(&v83[0] + 1) = 0xE200000000000000;
    sub_21BA8853C();
    v35 = [v28 attributes];
    if (!v35)
    {
      goto LABEL_47;
    }

    v36 = v35;
    v37 = sub_21BA87BCC();

    if (!*(v37 + 16) || (v38 = sub_21B947758(v87), (v39 & 1) == 0))
    {

      return sub_21B9AFD9C(v87);
    }

    sub_21B9AFDF0(*(v37 + 56) + 32 * v38, v83);
    sub_21B9AFD9C(v87);

    sub_21B9AFF70(v83, &v84);
    v34 = v70;
    if (!v70)
    {
      goto LABEL_48;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v42 = v81;
    sub_21BA19704(v23, v81);
    sub_21B9AFF80(v42, v9, &qword_27CD9EC80);
    v44 = *v9;
    v43 = v9[1];
    v45 = v77;
    sub_21B9AFF80(v42, v77, &qword_27CD9EC80);

    v46 = *(v4 + 48);
    sub_21BA163A4(&v84);
    v47 = sub_21BA8685C();
    v48 = *(v47 - 8);
    v80 = *(v48 + 8);
    v79 = v48 + 8;
    v80(v45 + v46, v47);
    if (!v85)
    {
      sub_21B9ABAAC(&v84, &qword_27CD9E7C0);
      v60 = sub_21B940DCC(v44, v43);
      v62 = v61;

      if (v62)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v26;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_21B9C9F00();
          v26 = v82;
        }

        sub_21B9AFF70((v26[7] + 32 * v60), v83);
        sub_21B9C9B94(v60, v26);
        sub_21B9ABAAC(v81, &qword_27CD9EC80);
      }

      else
      {
        sub_21B9ABAAC(v81, &qword_27CD9EC80);
        memset(v83, 0, sizeof(v83));
      }

      sub_21B9ABAAC(v83, &qword_27CD9E7C0);
      goto LABEL_21;
    }

    v49 = v9;
    v50 = v4;
    sub_21B9AFF70(&v84, v83);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v82 = v26;
    v53 = sub_21B940DCC(v44, v43);
    v54 = v26[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      break;
    }

    v57 = v52;
    if (v26[3] >= v56)
    {
      if (v51)
      {
        if ((v52 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_21B9C9F00();
        if ((v57 & 1) == 0)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      sub_21B9C98DC(v56, v51);
      v58 = sub_21B940DCC(v44, v43);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_49;
      }

      v53 = v58;
      if ((v57 & 1) == 0)
      {
LABEL_34:
        v26 = v82;
        v82[(v53 >> 6) + 8] |= 1 << v53;
        v64 = (v26[6] + 16 * v53);
        *v64 = v44;
        v64[1] = v43;
        sub_21B9AFF70(v83, (v26[7] + 32 * v53));
        sub_21B9ABAAC(v81, &qword_27CD9EC80);
        v65 = v26[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_44;
        }

        v26[2] = v67;
        goto LABEL_20;
      }
    }

    v26 = v82;
    v41 = (v82[7] + 32 * v53);
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_21B9AFF70(v83, v41);
    sub_21B9ABAAC(v81, &qword_27CD9EC80);
LABEL_20:
    v4 = v50;
    v9 = v49;
    v23 = v74;
LABEL_21:
    v80(v9 + *(v4 + 48), v47);
    sub_21BA8873C();
    if (v75(v23, 1, v4) == 1)
    {
      goto LABEL_7;
    }
  }

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
  result = sub_21BA88B0C();
  __break(1u);
  return result;
}

id RUISwiftUITableViewRow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RUISwiftUITableViewRow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_21BA19348(void *a1, int64_t a2, char a3)
{
  result = sub_21BA19368(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21BA19368(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_21BA194C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_cell];
    if (v2)
    {
      v3 = v2;
      [v3 setAccessoryType_];
      [v3 setAccessoryView_];
      sub_21BA17AA4();
      sub_21BA8684C();
      sub_21BA19890(&qword_27CD9EC90, MEMORY[0x277D23200]);
      v5[0] = sub_21BA86BBC();
      v5[1] = v4;
      sub_21BA43F54(v5);
    }

    else
    {
    }
  }
}

unint64_t sub_21BA195D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED08);
    v3 = sub_21BA8872C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B9AFF80(v4, &v15, &qword_27CD9ECF8);
      v5 = v15;
      v6 = v16;
      result = sub_21B940DCC(v15, v16);
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

uint64_t sub_21BA19704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EC80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA19890(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BA198D8()
{
  result = qword_27CD9E758;
  if (!qword_27CD9E758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD9E758);
  }

  return result;
}

uint64_t sub_21BA19938()
{
  v1 = [v0 sourceXMLElement];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 name];

    v4 = sub_21BA87CBC();
    return v4;
  }

  else
  {
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED20);
    return sub_21BA87D4C();
  }
}

Swift::Void __swiftcall RUIElement.reportInternalRenderEvent()()
{
  v1 = [v0 sourceXMLElement];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 name];

    sub_21BA87CBC();
  }

  else
  {
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED20);
    sub_21BA87D4C();
  }

  v4 = sub_21BA87C8C();

  [v0 reportInternalRenderEventWithElementName:v4 deprecated:{objc_msgSend(v0, sel_isDeprecatedForInternalAnalytics)}];
}

uint64_t RUIElement.isDeprecatedForInternalAnalytics.getter()
{
  v1 = [v0 sourceXMLElement];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 name];

    sub_21BA87CBC();
  }

  else
  {
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED20);
    sub_21BA87D4C();
  }

  sub_21BA87D3C();

  sub_21B9BAB9C();
  v4 = sub_21BA8840C();

  return v4 & 1;
}

Swift::Void __swiftcall RUIElement.reportInternalRenderEvent(with:)(Swift::String with)
{
  v2 = v1;
  v3 = sub_21BA87C8C();
  v4 = [v1 name];
  if (v4)
  {
    v5 = v4;
    sub_21BA87CBC();

    v6 = sub_21BA87D3C();
    v8 = v7;

    v9 = v6;
    sub_21B9BAB9C();
    LOBYTE(v6) = sub_21BA8840C();

    [v2 reportInternalRenderEventWithElementName:v3 deprecated:{v6 & 1, 1819112552, 0xE400000000000000, v9, v8}];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall RUIElement.reportInternalRenderEvent(with:deprecated:)(Swift::String with, Swift::Bool deprecated)
{
  v3 = v2;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v7 = sub_21BA8673C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  *&v12 = MEMORY[0x28223BE20](v11 - 8).n128_u64[0];
  v14 = &v32 - v13;
  v15 = [v3 pageElement];
  if (v15 && (v16 = v15, v17 = [v15 page], v16, v17) && (v33 = objc_msgSend(v17, sel_objectModel), v17, v33))
  {
    v18 = RUIObjectModel.decodingUserInfo.getter();
    v19 = sub_21BA07558();

    if (v19)
    {
      v20 = [v33 sourceURL];
      if (v20)
      {
        v21 = v20;
        sub_21BA8643C();

        v22 = sub_21BA864AC();
        (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
      }

      else
      {
        v31 = sub_21BA864AC();
        (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
      }

      (*(*v19 + 112))(countAndFlagsBits, object, v14, deprecated);

      sub_21B9ABAAC(v14, &qword_27CD9DBA0);
    }

    else
    {
      v30 = v33;
    }
  }

  else
  {
    v23 = sub_21B9E0404();
    (*(v8 + 16))(v10, v23, v7);
    v24 = v3;
    v25 = sub_21BA8671C();
    v26 = sub_21BA881FC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&dword_21B93D000, v25, v26, "Could not find object model for element: %@", v27, 0xCu);
      sub_21B9ABAAC(v28, &qword_27CD9E278);
      MEMORY[0x21CEFF180](v28, -1, -1);
      MEMORY[0x21CEFF180](v27, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }
}

uint64_t XMLUIData.postbackBinding<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a4;
  v8[5] = v4;
  v8[6] = a2;
  v8[7] = a3;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a4;
  v9[5] = v4;
  v9[6] = a2;
  v9[7] = a3;
  sub_21BA883CC();
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return sub_21BA87A7C();
}

uint64_t sub_21BA1A49C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = (*(**(v1 + 40) + 120))();
  if (*(v6 + 16) && (v7 = sub_21B940DCC(v4, v5), (v8 & 1) != 0))
  {
    sub_21B9AFDF0(*(v6 + 56) + 32 * v7, v11);
  }

  else
  {

    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7C0);
  v9 = swift_dynamicCast();
  return (*(*(v3 - 8) + 56))(a1, v9 ^ 1u, 1, v3);
}

uint64_t sub_21BA1A5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_21BA883CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-v12];
  (*(v11 + 16))(&v19[-v12], a1, v10);
  v14 = *(a5 - 8);
  if ((*(v14 + 48))(v13, 1, a5) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    *(&v21 + 1) = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
    (*(v14 + 32))(boxed_opaque_existential_1, v13, a5);
  }

  v16 = *(*a2 + 136);

  v17 = v16(v19);
  sub_21B9C8A00(&v20, a3, a4);
  return v17(v19, 0);
}

uint64_t XMLUIData.postbackBinding<A>(_:forKey:default:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v12);
  v13 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a5;
  *(v14 + 5) = v5;
  *(v14 + 6) = a2;
  *(v14 + 7) = a3;
  (*(v9 + 32))(&v14[v13], &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a5;
  v15[5] = v5;
  v15[6] = a2;
  v15[7] = a3;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  return sub_21BA87A7C();
}

uint64_t sub_21BA1A940@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v21 = a3;
  v9 = sub_21BA883CC();
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = sub_21BA87A9C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  XMLUIData.postbackBinding<A>(_:forKey:)(v14, a1, a2, a4);
  MEMORY[0x21CEFCD90](v12);
  (*(v13 + 8))(v16, v12);
  v17 = *(a4 - 8);
  v18 = *(v17 + 48);
  if (v18(v11, 1, a4) != 1)
  {
    return (*(v17 + 32))(a5, v11, a4);
  }

  (*(v17 + 16))(a5, v21, a4);
  result = (v18)(v11, 1, a4);
  if (result != 1)
  {
    return (*(v20 + 8))(v11, v9);
  }

  return result;
}

uint64_t sub_21BA1ABD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_21BA883CC();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = sub_21BA87A9C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  XMLUIData.postbackBinding<A>(_:forKey:)(v14, a3, a4, a5);
  v17 = *(a5 - 8);
  (*(v17 + 16))(v11, a1, a5);
  (*(v17 + 56))(v11, 0, 1, a5);
  sub_21BA87A4C();
  return (*(v13 + 8))(v16, v12);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t XMLUIData.postbackBinding<A, B>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21BA87E9C();
  XMLUIData.postbackBinding<A>(_:forKey:)(v5, v7, v8, a4);
}

uint64_t XMLUIData.postbackBinding<A, B>(_:forKey:default:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21BA87E9C();
  XMLUIData.postbackBinding<A>(_:forKey:default:)(v7, v9, v10, a3, a5);
}

void RemoteUIController.registerViewType(_:named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B9DDCB8();
  v9 = *((*MEMORY[0x277D85000] & **v8) + 0x88);
  v10 = *v8;
  v9(a1, a2, a3, a4);
}

uint64_t type metadata accessor for OpenURLViewModifier()
{
  result = qword_27CDA9840;
  if (!qword_27CDA9840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BA1AFF8(uint64_t a1)
{
  v2 = sub_21BA86B2C();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21BA86E3C();
}

uint64_t sub_21BA1B0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v5 = sub_21BA864AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OpenURLViewModifier();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v23 - v14;
  v16 = sub_21BA8801C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_21BA1B38C(a2, v12, type metadata accessor for OpenURLViewModifier);
  (*(v6 + 16))(v8, a1, v5);
  sub_21BA87FEC();
  v17 = sub_21BA87FDC();
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + *(v6 + 80) + v18) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v17;
  *(v20 + 24) = v21;
  sub_21BA1B698(v12, v20 + v18, type metadata accessor for OpenURLViewModifier);
  (*(v6 + 32))(v20 + v19, v8, v5);
  sub_21B9C7AF4(0, 0, v15, &unk_21BA998C8, v20);

  return sub_21BA86B0C();
}

uint64_t sub_21BA1B38C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BA1B3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_21BA87FEC();
  v5[3] = sub_21BA87FDC();
  v7 = swift_task_alloc();
  v5[4] = v7;
  v8 = type metadata accessor for URLLoader(0);
  *v7 = v5;
  v7[1] = sub_21BA1B4D0;

  return URLLoadingCapable.handle(url:)(a5, v8, &protocol witness table for URLLoader);
}

uint64_t sub_21BA1B4D0()
{
  *(*v1 + 40) = v0;

  v3 = sub_21BA87F9C();
  if (v0)
  {
    v4 = sub_21BA1B62C;
  }

  else
  {
    v4 = sub_21B9B1B88;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21BA1B62C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BA1B698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BA1B700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  KeyPath = swift_getKeyPath();
  sub_21BA1B38C(v4, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenURLViewModifier);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_21BA1B698(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for OpenURLViewModifier);
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED28) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED30);
  sub_21BA86B1C();
  *v12 = KeyPath;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED38);
  return (*(*(v13 - 8) + 16))(a3, a1, v13);
}

uint64_t sub_21BA1B8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OpenURLViewModifier();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BA1B38C(a1, v8, type metadata accessor for URLLoader);
  MEMORY[0x21CEFCB90](v8, a2, v6, a3);
  return sub_21BA1B994(v8);
}

uint64_t sub_21BA1B994(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BA1BA34()
{
  result = type metadata accessor for URLLoader(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21BA1BAA0()
{
  result = qword_27CD9ED40;
  if (!qword_27CD9ED40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9ED28);
    sub_21B9B35B8(&qword_27CD9ED48, &qword_27CD9ED38);
    sub_21B9B35B8(&qword_27CD9ED50, &qword_27CD9ED30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9ED40);
  }

  return result;
}

unint64_t sub_21BA1BB84()
{
  result = qword_27CD9E9D8;
  if (!qword_27CD9E9D8)
  {
    type metadata accessor for OpenURLViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E9D8);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(type metadata accessor for OpenURLViewModifier() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(v1 + 64);
  v4 = v0 + v3;
  v5 = sub_21BA864AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v8 = type metadata accessor for URLLoadingParameters(0);

  if (*(v4 + *(v8 + 64) + 8))
  {
  }

  v9 = type metadata accessor for URLLoader(0);
  sub_21B94B4EC(*(v4 + v9[5]), *(v4 + v9[5] + 8));
  sub_21B94B4EC(*(v4 + v9[6]), *(v4 + v9[6] + 8));
  sub_21B9B01C4(*(v4 + v9[7]), *(v4 + v9[7] + 8), *(v4 + v9[7] + 16));
  v10 = v9[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!v7(v4 + v10, 1, v5))
    {
      (*(v6 + 8))(v4 + v10, v5);
    }
  }

  else
  {
  }

  sub_21B9B01C4(*(v4 + v9[9]), *(v4 + v9[9] + 8), *(v4 + v9[9] + 16));
  sub_21B9CB19C(*(v4 + v9[10]), *(v4 + v9[10] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v12, v2 | 7);
}

uint64_t sub_21BA1BEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OpenURLViewModifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21BA1B0C0(a1, v6, a2);
}

uint64_t sub_21BA1BF2C()
{
  v2 = *(type metadata accessor for OpenURLViewModifier() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_21BA864AC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21B9AC1F4;

  return sub_21BA1B3F8(v7, v8, v9, v0 + v3, v0 + v6);
}

Swift::Void __swiftcall RUITableViewRow.reportInternalRenderEvent()()
{
  v1 = v0;
  v8.super_class = RUITableViewRow;
  objc_msgSendSuper2(&v8, sel_reportInternalRenderEvent);
  v2 = [v0 htmlSubLabelData];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21BA864DC();
    v6 = v5;

    sub_21B9B37F0(v4, v6);
    sub_21BA19938();
    MEMORY[0x21CEFD130](0x6275536C6D74682ELL, 0xED00006C6562614CLL);
    v7 = sub_21BA87C8C();

    [v1 reportInternalRenderEventWithElementName:v7 deprecated:1];
  }
}

uint64_t sub_21BA1C1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v31 = a5;
  v32 = a2;
  v33 = a3;
  v8 = sub_21BA883CC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = *(v9 + 16);
  v34 = a1;
  v15(&v27 - v13, a1, v8);
  v16 = *(a4 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, a4) == 1)
  {
    (*(v9 + 8))(v14, v8);
    v18 = sub_21BA88C5C();
    v28 = v19;
    v29 = v18;
  }

  else
  {
    v20 = sub_21BA88C5C();
    v28 = v21;
    v29 = v20;
    (*(v16 + 8))(v14, a4);
  }

  v15(v12, v34, v8);
  if (v17(v12, 1, a4) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v22 = v32;
  }

  else
  {
    sub_21BA88C7C();
    v24 = v23;
    (*(v16 + 8))(v12, a4);
    v22 = v32;
    if ((v24 & 1) == 0)
    {
      v25 = v33;
      goto LABEL_9;
    }
  }

  v25 = v33;
  sub_21BA88C7C();
LABEL_9:
  (*(*(v25 - 8) + 8))(v22, v25);
  (*(v9 + 8))(v34, v8);
  return v29;
}

uint64_t sub_21BA1C4F0()
{
  v1 = *v0;

  return v1;
}

void sub_21BA1C520(uint64_t a1@<X8>)
{
  sub_21BA1C194();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t sub_21BA1C560@<X0>(uint64_t a1@<X8>)
{
  result = sub_21BA1C1A0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_21BA1C590(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_21BA1C5E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_21BA1C638()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21BA1C688(uint64_t a1, int a2)
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

uint64_t sub_21BA1C6D0(uint64_t result, int a2, int a3)
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

uint64_t sub_21BA1C72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v9, v5);
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v7, v10);
  }

  result = sub_21BA886DC();
  __break(1u);
  return result;
}

uint64_t sub_21BA1C8A8()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_21BA8820C();
    v6 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9CA1D0(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_21BA1C9F8()
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  return sub_21BA88BCC();
}

uint64_t sub_21BA1CA4C()
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  return sub_21BA88BCC();
}

uint64_t sub_21BA1CA90@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21BA8875C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21BA1CB00@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21BA8875C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21BA1CB58(uint64_t a1)
{
  v2 = sub_21BA1EFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA1CB94(uint64_t a1)
{
  v2 = sub_21BA1EFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA1CC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v61 = a2;
  v65 = a3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6D8);
  v58 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v57 = &v55 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED58);
  MEMORY[0x28223BE20](v62);
  v64 = &v55 - v5;
  v6 = type metadata accessor for FooterElement(0);
  v7 = v6 - 8;
  v59 = *(v6 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED60);
  v9 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v15 = type metadata accessor for FooterElement.LinkRenderingLogic(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = (&v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_21BA1C8A8();
  v20 = *(v7 + 32);
  v21 = *(v16 + 28);
  v56 = v20;
  sub_21BA1D3E8(v3 + v20, v18 + v21, type metadata accessor for URLLoader);
  *v18 = v19;
  if (sub_21B9CC538(5, v19))
  {
    sub_21BA1DF2C(v18, type metadata accessor for FooterElement.LinkRenderingLogic);
  }

  else
  {
    sub_21B9AFF80(v18 + v21, v14, &qword_27CD9DBA0);
    v22 = sub_21BA864AC();
    v23 = (*(*(v22 - 8) + 48))(v14, 1, v22);
    sub_21B9ABAAC(v14, &qword_27CD9DBA0);
    sub_21BA1DF2C(v18, type metadata accessor for FooterElement.LinkRenderingLogic);
    if (v23 == 1)
    {

      sub_21BA86F3C();
      v54 = 256;
      v53 = 0;
      v24 = sub_21BA8765C();
      v26 = v25;
      v28 = v27;
      sub_21BA8749C();
      v29 = sub_21BA8760C();
      v31 = v30;
      v33 = v32;

      sub_21B9C318C(v24, v26, v28 & 1);

      sub_21BA878AC();
      v34 = sub_21BA875EC();
      v36 = v35;
      v38 = v37;
      v40 = v39;

      sub_21B9C318C(v29, v31, v33 & 1);

      v67 = v34;
      v68 = v36;
      LOBYTE(v24) = v38 & 1;
      v69 = v38 & 1;
      v70 = v40;
      v41 = MEMORY[0x277CE0BD0];
      v42 = MEMORY[0x277CE0BC0];
      v43 = v57;
      sub_21BA1B8C0(v3 + v56, MEMORY[0x277CE0BD0], MEMORY[0x277CE0BC0]);
      sub_21B9C318C(v34, v36, v24);

      v44 = v58;
      v45 = v66;
      (*(v58 + 16))(v64, v43, v66);
      swift_storeEnumTagMultiPayload();
      sub_21B9B35B8(&qword_27CD9ED68, &qword_27CD9ED60);
      v67 = v41;
      v68 = v42;
      swift_getOpaqueTypeConformance2();
      sub_21BA8715C();
      return (*(v44 + 8))(v43, v45);
    }
  }

  sub_21BA1D3E8(v3, &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FooterElement);
  v47 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v48 = swift_allocObject();
  v49 = sub_21BA1D450(&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47, type metadata accessor for FooterElement);
  MEMORY[0x28223BE20](v49);
  v51 = v60;
  v50 = v61;
  *(&v55 - 4) = v3;
  *(&v55 - 3) = v51;
  v53 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED70);
  sub_21B9B35B8(&qword_27CD9ED78, &qword_27CD9ED70);
  sub_21BA879BC();
  v52 = v63;
  (*(v9 + 16))(v64, v11, v63);
  swift_storeEnumTagMultiPayload();
  sub_21B9B35B8(&qword_27CD9ED68, &qword_27CD9ED60);
  v67 = MEMORY[0x277CE0BD0];
  v68 = MEMORY[0x277CE0BC0];
  swift_getOpaqueTypeConformance2();
  sub_21BA8715C();
  return (*(v9 + 8))(v11, v52);
}

uint64_t sub_21BA1D3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BA1D450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21BA1D4B8()
{
  type metadata accessor for FooterElement(0);
  type metadata accessor for URLLoader(0);
  URLLoadingCapable.activate()();
}

uint64_t sub_21BA1D52C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BA86ECC();
  v3 = sub_21BA1C8A8();
  v4 = sub_21B9CC538(5, v3);

  if (v4)
  {
    v5 = sub_21BA878DC();
  }

  else
  {
    v5 = 0;
  }

  sub_21B9BAB9C();

  v6 = sub_21BA8767C();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v10 &= 1u;
  sub_21B9C320C(v6, v8, v10);

  sub_21B9C318C(v6, v8, v10);

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 48) = v10;
  *(a1 + 56) = v12;
  return result;
}

uint64_t sub_21BA1D67C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EDA8);
  MEMORY[0x28223BE20](v2);
  v4 = &v12[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EE08);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12[-1] - v6);
  v8 = type metadata accessor for FooterElement(0);
  sub_21BA1CC10(a1 + *(v8 + 28), v14);
  if (v15)
  {
    sub_21BA1CC48(*&v14[0], *(&v14[0] + 1), v4);

    sub_21B9484E4(v4, v7);
    swift_storeEnumTagMultiPayload();
    sub_21BA1D984();
    sub_21BA8715C();
    return sub_21B9ABAAC(v4, &qword_27CD9EDA8);
  }

  else
  {
    sub_21B9B5E1C(v14, v12);
    v10 = v13;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    *v7 = sub_21B9FD000(v10);
    swift_storeEnumTagMultiPayload();
    sub_21BA1D984();
    sub_21BA8715C();
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }
}

unint64_t sub_21BA1D874()
{
  result = qword_27CD9ED88;
  if (!qword_27CD9ED88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9ED80);
    sub_21BA1D8F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9ED88);
  }

  return result;
}

unint64_t sub_21BA1D8F8()
{
  result = qword_27CD9ED90;
  if (!qword_27CD9ED90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9ED98);
    sub_21BA1D984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9ED90);
  }

  return result;
}

unint64_t sub_21BA1D984()
{
  result = qword_27CD9EDA0;
  if (!qword_27CD9EDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EDA8);
    sub_21B9B35B8(&qword_27CD9ED68, &qword_27CD9ED60);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EDA0);
  }

  return result;
}

uint64_t sub_21BA1DA6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLLoader(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for FooterElement(0);
  MEMORY[0x28223BE20](v41);
  v8 = (v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8->_countAndFlagsBits = swift_getKeyPath();
  LOBYTE(v8->_object) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = Decoder.decodeRUIID()();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a2;
  v8[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA88BEC();
  sub_21B9B3220(a1, v37);
  URLLoader.init(from:)(v37, v6);
  sub_21BA1D450(v6, v8 + *(v41 + 24), type metadata accessor for URLLoader);
  v25[1] = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA58);
  sub_21B9E3428();
  sub_21BA889CC();
  if (*(v29 + 16))
  {
    sub_21B9FCF24(v29 + 32, v37);
  }

  else
  {

    memset(v37, 0, 113);
  }

  __swift_project_boxed_opaque_existential_1(v38, v39);
  v12 = sub_21BA889BC();
  v14 = v13;
  v15 = v26;
  sub_21B9AFF80(v37, v27, &qword_27CD9E860);
  if (*(&v27[0] + 1))
  {

    v34 = v27[5];
    v35 = v27[6];
    v29 = v27[0];
    v30 = v27[1];
    v31 = v27[2];
    v36 = v28;
    v32 = v27[3];
    v33 = v27[4];
    v16 = v8 + *(v41 + 28);
    *(v16 + 3) = &type metadata for RUIViewContent;
    *(v16 + 4) = sub_21B9FD108();
    v17 = swift_allocObject();
    v18 = v34;
    v19 = v35;
    v20 = v32;
    *(v17 + 80) = v33;
    *(v17 + 96) = v18;
    *(v17 + 112) = v19;
    v21 = v30;
    v22 = v31;
    *(v17 + 16) = v29;
    *(v17 + 32) = v21;
    *v16 = v17;
    *(v17 + 128) = v36;
    *(v17 + 48) = v22;
    *(v17 + 64) = v20;
  }

  else
  {
    sub_21B9ABAAC(v27, &qword_27CD9E860);
    if (v14)
    {
      sub_21B9ABAAC(v37, &qword_27CD9E860);
      v23 = v8 + *(v41 + 28);
      *v23 = v12;
      *(v23 + 1) = v14;
      v23[40] = 1;
      goto LABEL_12;
    }

    v16 = v8 + *(v41 + 28);
    v24 = MEMORY[0x277CE1418];
    *(v16 + 3) = MEMORY[0x277CE1420];
    *(v16 + 4) = v24;
  }

  sub_21B9ABAAC(v37, &qword_27CD9E860);
  v16[40] = 0;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v38);
  sub_21BA1D3E8(v8, v15, type metadata accessor for FooterElement);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21BA1DF2C(v8, type metadata accessor for FooterElement);
}

uint64_t sub_21BA1DF2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21BA1DF8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED80);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  sub_21BA1D67C(v0);
  sub_21BA1D874();
  sub_21BA0F5A8(3);
  return sub_21B9ABAAC(v3, &qword_27CD9ED80);
}

uint64_t sub_21BA1E06C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_21BA883CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  v11[1] = *(a1 + 32);
  swift_getWitnessTable();
  v9 = *(v6 + 16);
  v9(v8, v2, v5);
  v9(a2, v8, v5);
  return (*(v6 + 8))(v8, v5);
}

id sub_21BA1E1A0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24[-v3];
  v5 = sub_21BA87D1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BA87CFC();
  v9 = sub_21BA87CCC();
  v11 = v10;
  result = (*(v6 + 8))(v8, v5);
  if (v11 >> 60 == 15)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v13 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v14 = sub_21BA864CC();
  v15 = [v13 initWithData_];

  sub_21B9B91AC(v9, v11);
  type metadata accessor for RUIXMLParserDelegate(0);
  RUIXMLParserDelegate.init()(v16);
  v18 = v17;
  [v15 setDelegate_];
  [v15 parse];
  v19 = [v15 parserError];
  if (v19)
  {
    v20 = v19;

    v21 = type metadata accessor for FooterElement(0);
    return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
  }

  type metadata accessor for RUI.XMLUIDecoder();
  RUI.XMLUIDecoder.__allocating_init()();
  result = [v18 xmlElement];
  if (!result)
  {
    goto LABEL_8;
  }

  v22 = result;

  v23 = type metadata accessor for FooterElement(0);
  sub_21BA1E6B4(&qword_27CD9DE70);
  RUI.XMLUIDecoder.decode<A>(_:from:)(v23, v22);

  (*(*(v23 - 8) + 56))(v4, 0, 1, v23);
  return sub_21BA1F028(v4, a1);
}

unint64_t sub_21BA1E524()
{
  result = qword_27CD9EDB0;
  if (!qword_27CD9EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EDB0);
  }

  return result;
}

unint64_t sub_21BA1E57C()
{
  result = qword_27CD9EDB8;
  if (!qword_27CD9EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EDB8);
  }

  return result;
}

unint64_t sub_21BA1E5D4()
{
  result = qword_27CD9EDC0;
  if (!qword_27CD9EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EDC0);
  }

  return result;
}

uint64_t sub_21BA1E628(void *a1)
{
  a1[1] = sub_21BA1E6B4(&qword_27CD9DE70);
  a1[2] = sub_21BA1E6B4(&qword_27CD9EDC8);
  result = sub_21BA1E6B4(&qword_27CD9EDD0);
  a1[3] = result;
  return result;
}

uint64_t sub_21BA1E6B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FooterElement(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BA1E764()
{
  result = qword_27CD9EDD8;
  if (!qword_27CD9EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EDD8);
  }

  return result;
}

uint64_t sub_21BA1E7F4(uint64_t a1)
{
  v2 = sub_21BA1EF80();

  return MEMORY[0x28212D8E8](a1, v2);
}

uint64_t sub_21BA1E840(uint64_t a1)
{
  v2 = sub_21BA1EF80();

  return MEMORY[0x28212D8D8](a1, v2);
}

void sub_21BA1E8B4()
{
  sub_21B9406C8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URLLoader(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21BA1E980()
{
  sub_21BA1EA04();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URLLoader(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21BA1EA04()
{
  if (!qword_27CD9EDE0)
  {
    v0 = sub_21BA87F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9EDE0);
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21BA1EA74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21BA1EAB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_21BA1EAFC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_21BA1EB3C()
{
  result = sub_21BA883CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21BA1EBAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_21BA1ED2C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t sub_21BA1EF80()
{
  result = qword_27CD9EDF8;
  if (!qword_27CD9EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EDF8);
  }

  return result;
}

unint64_t sub_21BA1EFD4()
{
  result = qword_27CD9EE00;
  if (!qword_27CD9EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EE00);
  }

  return result;
}

uint64_t sub_21BA1F028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TextElement.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for TextElement()
{
  result = qword_27CDAAA80;
  if (!qword_27CDAAA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BA1F128(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007468;
  v3 = 0x67694C6172746C75;
  if (a1 <= 3u)
  {
    v4 = 0xE500000000000000;
    v5 = 0x746867696CLL;
    if (a1 != 2)
    {
      v5 = 0x72616C75676572;
      v4 = 0xE700000000000000;
    }

    v7 = 0xE400000000000000;
    v8 = 1852401780;
    if (!a1)
    {
      v8 = 0x67694C6172746C75;
      v7 = 0xEA00000000007468;
    }

    v9 = a1 <= 1u;
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1684828002;
    v6 = 0x7976616568;
    if (a1 != 7)
    {
      v6 = 0x6B63616C62;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = 0xE500000000000000;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6D756964656DLL;
    if (a1 != 4)
    {
      v8 = 0x646C6F62696D6573;
      v7 = 0xE800000000000000;
    }

    v9 = a1 <= 5u;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE500000000000000;
        if (v10 != 0x746867696CLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v10 != 0x72616C75676572)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2)
    {
      v2 = 0xE400000000000000;
      if (v10 != 1852401780)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x6D756964656DLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v10 != 0x646C6F62696D6573)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 6)
    {
      v2 = 0xE400000000000000;
      if (v10 != 1684828002)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v2 = 0xE500000000000000;
    if (a2 == 7)
    {
      if (v10 != 0x7976616568)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v3 = 0x6B63616C62;
  }

  if (v10 != v3)
  {
LABEL_45:
    v12 = sub_21BA8899C();
    goto LABEL_46;
  }

LABEL_42:
  if (v11 != v2)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_21BA1F38C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E6F6974706163;
  if (a1 != 5)
  {
    v5 = 0x6C64616568627573;
    v4 = 0xEB00000000656E69;
  }

  v6 = 0xE800000000000000;
  v7 = 0x656E696C64616568;
  if (a1 != 3)
  {
    v7 = 2036625250;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x32656C746974;
  if (a1 != 1)
  {
    v8 = 0x33656C746974;
  }

  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v8 = 0x656C746974;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE600000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x32656C746974)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x33656C746974)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x656C746974)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6E6F6974706163)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xEB00000000656E69;
      if (v9 != 0x6C64616568627573)
      {
LABEL_39:
        v12 = sub_21BA8899C();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x656E696C64616568)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v9 != 2036625250)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_21BA1F5A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x67696557746E6F66;
    }

    else
    {
      v3 = 0x6C6562616CLL;
    }

    if (v2 == 2)
    {
      v4 = 0xEA00000000007468;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1953394534;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x67696557746E6F66;
  v8 = 0xEA00000000007468;
  if (a2 != 2)
  {
    v7 = 0x6C6562616CLL;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v6 = 1953394534;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BA8899C();
  }

  return v11 & 1;
}

uint64_t sub_21BA1F6D0()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA1F780()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA1F81C()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA1F950()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA1F9FC()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA1FB14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA20CC4();
  *a1 = result;
  return result;
}

void sub_21BA1FB44(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEA00000000007468;
  v5 = 0x67696557746E6F66;
  if (*v1 != 2)
  {
    v5 = 0x6C6562616CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1953394534;
    v2 = 0xE400000000000000;
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

uint64_t sub_21BA1FBB0()
{
  v1 = 25705;
  v2 = 0x67696557746E6F66;
  if (*v0 != 2)
  {
    v2 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    v1 = 1953394534;
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

uint64_t sub_21BA1FC18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA20CC4();
  *a1 = result;
  return result;
}

uint64_t sub_21BA1FC40(uint64_t a1)
{
  v2 = sub_21BA20DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA1FC7C(uint64_t a1)
{
  v2 = sub_21BA20DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA1FCD0()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA1FDDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA20D10();
  *a1 = result;
  return result;
}

void sub_21BA1FE0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xE700000000000000;
  v6 = 0x6E6F6974706163;
  if (v2 != 5)
  {
    v6 = 0x6C64616568627573;
    v5 = 0xEB00000000656E69;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656E696C64616568;
  if (v2 != 3)
  {
    v8 = 2036625250;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x32656C746974;
  if (v2 != 1)
  {
    v9 = 0x33656C746974;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_21BA1FF40(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x67694C6172746C75;
    v6 = 0x746867696CLL;
    if (a1 != 2)
    {
      v6 = 0x72616C75676572;
    }

    if (a1)
    {
      v5 = 1852401780;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1684828002;
    v2 = 0x7976616568;
    if (a1 != 7)
    {
      v2 = 0x6B63616C62;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D756964656DLL;
    if (a1 != 4)
    {
      v3 = 0x646C6F62696D6573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21BA2004C()
{
  sub_21BA88BAC();
  sub_21BA1F81C();
  return sub_21BA88BCC();
}

uint64_t sub_21BA2009C()
{
  sub_21BA88BAC();
  sub_21BA1F81C();
  return sub_21BA88BCC();
}

uint64_t sub_21BA200E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA20D5C();
  *a1 = result;
  return result;
}

uint64_t sub_21BA20110@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BA1FF40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TextElement.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21BA862DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TextElement();
  (*(v4 + 16))(v6, v1 + *(v7 + 28), v3);
  v8 = sub_21BA8766C();
  v10 = v9;
  v12 = v11;
  v13 = *(v1 + 16);
  v30 = a1;
  if (v13 <= 2)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        sub_21BA8757C();
      }

      else
      {
        sub_21BA8758C();
      }
    }

    else
    {
      sub_21BA874BC();
    }
  }

  else if (v13 > 4)
  {
    if (v13 == 5)
    {
      sub_21BA8759C();
    }

    else
    {
      sub_21BA8749C();
    }
  }

  else if (v13 == 3)
  {
    sub_21BA875BC();
  }

  else
  {
    sub_21BA874AC();
  }

  v14 = sub_21BA8760C();
  v16 = v15;
  v18 = v17;

  sub_21B9C318C(v8, v10, v12 & 1);

  v19 = *(v1 + 17);
  if (v19 <= 3)
  {
    if (*(v1 + 17) > 1u)
    {
      if (v19 == 2)
      {
        sub_21BA8752C();
      }

      else
      {
        sub_21BA8754C();
      }
    }

    else if (*(v1 + 17))
    {
      sub_21BA874FC();
    }

    else
    {
      sub_21BA874DC();
    }
  }

  else if (*(v1 + 17) <= 5u)
  {
    if (v19 == 4)
    {
      sub_21BA8753C();
    }

    else
    {
      sub_21BA8755C();
    }
  }

  else if (v19 == 6)
  {
    sub_21BA874EC();
  }

  else if (v19 == 7)
  {
    sub_21BA8751C();
  }

  else
  {
    sub_21BA8750C();
  }

  v20 = sub_21BA875DC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_21B9C318C(v14, v16, v18 & 1);

  result = swift_getKeyPath();
  v28 = v30;
  *v30 = v20;
  v28[1] = v22;
  *(v28 + 16) = v24 & 1;
  v28[3] = v26;
  v28[4] = result;
  *(v28 + 40) = 0;
  return result;
}

uint64_t TextElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_21BA861FC();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21BA8620C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BA8622C();
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v41 - v9;
  v47 = sub_21BA862DC();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EE10);
  v58 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TextElement();
  MEMORY[0x28223BE20](v15);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA20DA8();
  v18 = v59;
  sub_21BA88C0C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45 = v11;
  v59 = v14;
  v46 = v17;
  v19 = v57;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = Decoder.decodeRUIID()();
  if (v21)
  {
    (*(v58 + 8))(v59, v12);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  *v46 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA88BEC();
  v23 = v12;
  v44 = a1;
  LOBYTE(v60[0]) = 3;
  v24 = sub_21BA887BC();
  if (v25)
  {
    v43 = v25;
    v42 = v24;
    v26 = v56;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    v29 = sub_21BA889BC();
    v26 = v56;
    v43 = v34;
    v42 = v29;
  }

  v27 = sub_21BA864AC();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  (*(v50 + 104))(v51, *MEMORY[0x277CC8BB0], v52);
  (*(v54 + 104))(v53, *MEMORY[0x277CC8B98], v55);
  sub_21BA8621C();
  v28 = v45;
  sub_21BA862BC();
  v30 = v19;
  v31 = v46;
  (*(v48 + 32))(v46 + *(v15 + 28), v28, v47);
  v62 = 1;
  sub_21BA20DFC();
  v32 = v59;
  sub_21BA887EC();
  v33 = v60[0];
  if (LOBYTE(v60[0]) == 7)
  {
    v33 = 4;
  }

  LOBYTE(v31[1]._countAndFlagsBits) = v33;
  v62 = 2;
  sub_21BA20E50();
  sub_21BA887EC();
  v35 = v60[0];
  if (LOBYTE(v60[0]) == 9)
  {
    v35 = 3;
  }

  BYTE1(v31[1]._countAndFlagsBits) = v35;
  sub_21B9B3220(v44, v60);
  v36 = sub_21B9AC534(v60);
  v38 = v37;
  (*(v58 + 8))(v32, v23);
  v39 = v46;
  v40 = (&v46->_countAndFlagsBits + *(v15 + 32));
  *v40 = v36;
  v40[1] = v38;
  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_21BA20EA4(v39, v30);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_21BA20F08(v39);
}

uint64_t sub_21BA20C70(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_21BA20CC4()
{
  v0 = sub_21BA8875C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BA20D10()
{
  v0 = sub_21BA8875C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BA20D5C()
{
  v0 = sub_21BA8875C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21BA20DA8()
{
  result = qword_27CD9EE18;
  if (!qword_27CD9EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EE18);
  }

  return result;
}

unint64_t sub_21BA20DFC()
{
  result = qword_27CD9EE20;
  if (!qword_27CD9EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EE20);
  }

  return result;
}

unint64_t sub_21BA20E50()
{
  result = qword_27CD9EE28;
  if (!qword_27CD9EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EE28);
  }

  return result;
}

uint64_t sub_21BA20EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextElement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA20F08(uint64_t a1)
{
  v2 = type metadata accessor for TextElement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BA20F68()
{
  result = qword_27CD9EE30;
  if (!qword_27CD9EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EE30);
  }

  return result;
}

unint64_t sub_21BA20FC0()
{
  result = qword_27CD9EE38;
  if (!qword_27CD9EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EE38);
  }

  return result;
}

unint64_t sub_21BA21018()
{
  result = qword_27CD9EE40;
  if (!qword_27CD9EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EE40);
  }

  return result;
}

unint64_t sub_21BA21070()
{
  result = qword_27CD9EE48;
  if (!qword_27CD9EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EE48);
  }

  return result;
}

unint64_t sub_21BA210C8()
{
  result = qword_27CD9EE50;
  if (!qword_27CD9EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EE50);
  }

  return result;
}

uint64_t sub_21BA2111C(void *a1)
{
  a1[1] = sub_21BA211A8(&qword_27CD9EE58);
  a1[2] = sub_21BA211A8(&qword_27CD9EE60);
  result = sub_21BA211A8(&qword_27CD9EE68);
  a1[3] = result;
  return result;
}

uint64_t sub_21BA211A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TextElement();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BA21230()
{
  result = sub_21BA862DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21BA212FC()
{
  result = qword_27CD9EE70;
  if (!qword_27CD9EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EE70);
  }

  return result;
}

unint64_t sub_21BA21350()
{
  result = qword_27CD9EE78;
  if (!qword_27CD9EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EE78);
  }

  return result;
}

uint64_t sub_21BA213A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = *(a5 + 8);
  *v11 = v5;
  v11[1] = sub_21B9AC1F4;

  return RemoteUIDataSource.request(for:context:)(a1, a2, a3, a4, v12);
}

uint64_t sub_21BA21470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a4 + 8);
  *v9 = v4;
  v9[1] = sub_21B9DE818;

  return RemoteUIDataSource.data(for:context:)(a1, a2, a3, v10);
}

uint64_t RemoteUIDataSourceWithContext.data(for:context:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[12] = a3;
  v10 = sub_21BA860AC();
  v5[15] = v10;
  v5[16] = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *a2;
  v13 = a2[1];
  v5[17] = v11;
  v5[18] = v12;
  v14 = a2[2];
  v15 = a2[3];
  v5[19] = v13;
  v5[20] = v14;
  v16 = a2[4];
  v5[21] = v15;
  v5[22] = v16;
  v5[2] = v12;
  v5[3] = v13;
  v5[4] = v14;
  v5[5] = v15;
  v5[6] = v16;
  v19 = (*(a4 + 16) + **(a4 + 16));
  v17 = swift_task_alloc();
  v5[23] = v17;
  *v17 = v5;
  v17[1] = sub_21BA216FC;

  return v19(v11, a1, v5 + 2, a3, a4);
}

uint64_t sub_21BA216FC()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21B9DF63C, 0, 0);
  }

  else
  {
    *(v2 + 56) = *(v2 + 144);
    v3 = *(v2 + 104);
    *(v2 + 72) = *(v2 + 160);
    *(v2 + 80) = *(v2 + 168);
    v9 = (*(v3 + 24) + **(v3 + 24));
    v4 = swift_task_alloc();
    *(v2 + 200) = v4;
    *v4 = v2;
    v4[1] = sub_21B9DF484;
    v5 = *(v2 + 104);
    v6 = *(v2 + 96);
    v7 = *(v2 + 136);

    return v9(v7, v2 + 56, v6, v5);
  }
}

uint64_t RemoteUIDataSourceWithContext.request(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return MEMORY[0x2822009F8](sub_21BA21938, 0, 0);
}

uint64_t sub_21BA21938()
{
  v13 = *(v0 + 112);
  v1 = MEMORY[0x277D84F90];
  v2 = sub_21B9AF734(MEMORY[0x277D84F90]);
  v3 = sub_21B9AF734(v1);
  *(v0 + 80) = sub_21B9AF864(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EE80);
  sub_21BA87A8C();

  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  v12 = (*(v13 + 16) + **(v13 + 16));
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_21BA21ADC;
  v7 = *(v0 + 112);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v10 = *(v0 + 88);

  return v12(v10, v8, v0 + 16, v9, v7);
}

uint64_t sub_21BA21ADC()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21BA21C58, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t RemoteUIDataSourceWithContext.data(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_21BA21C94, 0, 0);
}

uint64_t sub_21BA21C94()
{
  v12 = *(v0 + 104);
  v1 = MEMORY[0x277D84F90];
  v2 = sub_21B9AF734(MEMORY[0x277D84F90]);
  v3 = sub_21B9AF734(v1);
  *(v0 + 80) = sub_21B9AF864(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EE80);
  sub_21BA87A8C();

  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  v11 = (*(v12 + 24) + **(v12 + 24));
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_21BA21E34;
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);

  return v11(v9, v0 + 16, v8, v7);
}

uint64_t sub_21BA21E34(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 128) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_21BA21FCC, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t RemoteUIDataSourceContext.userInfo.getter()
{
  v3[1] = *(v0 + 16);
  v4 = *(v0 + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EE88);
  MEMORY[0x21CEFCD90](v3, v1);
  return v3[0];
}

void *sub_21BA2204C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[1] = *(a1 + 16);
  v6 = *(a1 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EE88);
  result = MEMORY[0x21CEFCD90](v5, v3);
  *a2 = v5[0];
  return result;
}

uint64_t sub_21BA220AC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EE88);
  return sub_21BA87A4C();
}

void (*RemoteUIDataSourceContext.userInfo.modify(void *a1))(char **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = v1[2];
  v5 = v1[3];
  v3[5] = v4;
  v3[6] = v5;
  v6 = v1[4];
  v3[7] = v6;
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EE88);
  MEMORY[0x21CEFCD90]();
  return sub_21BA2220C;
}

void sub_21BA2220C(char **a1, char a2)
{
  v2 = *a1;
  *(v2 + 4) = *(*a1 + 3);
  *v2 = *(v2 + 5);
  *(v2 + 8) = *(v2 + 3);
  if (a2)
  {

    sub_21BA87A4C();
  }

  else
  {
    sub_21BA87A4C();
  }

  free(v2);
}

uint64_t sub_21BA22298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = (*(a5 + 16))(a4, a5);
  v13 = (*(a5 + 24))(a4, a5);
  v14 = (*(*v13 + 120))(v13);

  *a6 = v12;
  a6[1] = v14;
  a6[2] = a1;
  a6[3] = a2;
  a6[4] = a3;
}

uint64_t sub_21BA22384(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BA8673C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a2 + 8))(a1, a2, v10);
  if (!result)
  {
    v14 = sub_21B9E0270();
    (*(v9 + 16))(v12, v14, v8);
    (*(v5 + 16))(v7, v2, a1);
    v15 = sub_21BA8671C();
    v16 = sub_21BA881FC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = v17;
      v30 = swift_slowAlloc();
      v32 = v30;
      *v17 = 136315138;
      DynamicType = swift_getDynamicType();
      swift_getMetatypeMetadata();
      v18 = sub_21BA87D2C();
      v29 = v9;
      v20 = v19;
      (*(v5 + 8))(v7, a1);
      v21 = sub_21B9B2A60(v18, v20, &v32);

      v22 = v28;
      *(v28 + 1) = v21;
      v23 = v22;
      _os_log_impl(&dword_21B93D000, v15, v16, "%s has no dataSource", v22, 0xCu);
      v24 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x21CEFF180](v24, -1, -1);
      MEMORY[0x21CEFF180](v23, -1, -1);

      (*(v29 + 8))(v12, v8);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
      (*(v5 + 8))(v7, a1);
    }

    type metadata accessor for RemoteLoaderError();
    sub_21BA23934();
    swift_allocError();
    v26 = v25;
    v27 = sub_21BA860AC();
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21BA22704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  return MEMORY[0x2822009F8](sub_21BA22730, 0, 0);
}

uint64_t sub_21BA22730()
{
  v1 = sub_21BA22384(*(v0 + 136), *(v0 + 144));
  *(v0 + 160) = v1;
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v23 = (*(v4 + 8) + **(v4 + 8));
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_21BA22C3C;
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);

    return v23(v9, v10, ObjectType, v4);
  }

  else
  {
    v12 = v6;
    v13 = *(v0 + 144);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    v18 = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_21BA22298(v17, v16, v15, v14, v13, (v0 + 16));
    v19 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v19;
    *(v0 + 80) = *(v0 + 40);
    v24 = (*(v12 + 16) + **(v12 + 16));
    v20 = swift_task_alloc();
    *(v0 + 168) = v20;
    *v20 = v0;
    v20[1] = sub_21BA22A50;
    v21 = *(v0 + 96);
    v22 = *(v0 + 104);

    return v24(v21, v22, v0 + 56, v18, v12);
  }
}

uint64_t sub_21BA22A50()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    swift_unknownObjectRelease();

    v2 = sub_21BA22DB4;
  }

  else
  {

    v2 = sub_21BA22BD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BA22BD4()
{
  swift_unknownObjectRelease_n();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA22C3C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_21BA22E18;
  }

  else
  {
    v2 = sub_21BA22D50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BA22D50()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA22DB4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA22E18()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA22E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[25] = a6;
  v7[26] = v6;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v7[20] = a1;
  return MEMORY[0x2822009F8](sub_21BA22EA8, 0, 0);
}

uint64_t sub_21BA22EA8()
{
  v1 = sub_21BA22384(*(v0 + 192), *(v0 + 200));
  *(v0 + 216) = v1;
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v21 = (*(v4 + 16) + **(v4 + 16));
    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    *v8 = v0;
    v8[1] = sub_21BA233C0;
    v9 = *(v0 + 160);

    return v21(v9, ObjectType, v4);
  }

  else
  {
    v11 = v6;
    v12 = *(v0 + 200);
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v17 = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_21BA22298(v16, v15, v14, v13, v12, (v0 + 16));
    v18 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v18;
    *(v0 + 80) = *(v0 + 40);
    v22 = (*(v11 + 24) + **(v11 + 24));
    v19 = swift_task_alloc();
    *(v0 + 224) = v19;
    *v19 = v0;
    v19[1] = sub_21BA231C8;
    v20 = *(v0 + 160);

    return v22(v20, v0 + 56, v17, v11);
  }
}

uint64_t sub_21BA231C8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[12] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;
  v4[29] = v2;

  if (v2)
  {
    swift_unknownObjectRelease();

    v5 = sub_21BA23544;
  }

  else
  {

    v5 = sub_21BA23354;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21BA23354()
{
  swift_unknownObjectRelease_n();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_21BA233C0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[16] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;
  v4[31] = v2;

  if (v2)
  {
    v5 = sub_21BA235A8;
  }

  else
  {
    v5 = sub_21BA234DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21BA234DC()
{
  swift_unknownObjectRelease();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_21BA23544()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA235A8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of RemoteUIDataSourceWithContext.request(for:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21B9AC1F4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RemoteUIDataSourceWithContext.data(for:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21B9DFB3C;

  return v11(a1, a2, a3, a4);
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

uint64_t sub_21BA23894(uint64_t *a1, int a2)
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

uint64_t sub_21BA238DC(uint64_t result, int a2, int a3)
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

unint64_t sub_21BA23934()
{
  result = qword_27CD9EE90;
  if (!qword_27CD9EE90)
  {
    type metadata accessor for RemoteLoaderError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EE90);
  }

  return result;
}

uint64_t ConfirmationInfo.confirmationTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfirmationInfo.confirmationBody.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConfirmationInfo.confirmationOK.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ConfirmationInfo.confirmationCancel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t sub_21BA23A4C()
{
  v1 = 0x616D7269666E6F63;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21BA23AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BA26F14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BA23B08(uint64_t a1)
{
  v2 = sub_21BA2708C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA23B44(uint64_t a1)
{
  v2 = sub_21BA2708C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EE98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA2708C();
  sub_21BA88C0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_21BA887FC();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_21BA887FC();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_21BA887FC();
  v25 = v13;
  v33 = 3;
  v14 = sub_21BA887FC();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_21BA270E0(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_21BA27118(v32);
}

void *URLLoader.objectModel.getter()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for URLLoader(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

void *URLLoader.ruiParentElement.getter()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for URLLoader(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t URLLoader.baseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_21BA86E9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + *(type metadata accessor for URLLoader(0) + 20);
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {

    sub_21BA8820C();
    v15 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(v11, 0);
    (*(v7 + 8))(v9, v6);
    v11 = v20;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = sub_21BA864AC();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  v12 = v11;
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = [v11 sourceURL];

  if (v13)
  {
    sub_21BA8643C();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v18 = sub_21BA864AC();
  (*(*(v18 - 8) + 56))(v5, v14, 1, v18);
  return sub_21B9AB6D4(v5, a1, &qword_27CD9DBA0);
}

uint64_t URLLoader.scriptEnvironment.getter()
{
  v4 = URLLoader.objectModel.getter();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E790);
  sub_21BA1C72C(0xD000000000000044, v0, &v5);

  v1 = v5;
  v2 = RUIObjectModel.scriptEnvironment.getter();

  return v2;
}

unint64_t URLLoader.clientInfo.getter()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for URLLoader(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(v6, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v14;
    if (!v14)
    {
LABEL_7:
      v11 = sub_21B9AF734(MEMORY[0x277D84F90]);

      return v11;
    }
  }

  v9 = [v6 clientInfo];

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = sub_21BA87BCC();

  v11 = sub_21B9AD11C(v10);

  if (!v11)
  {
    goto LABEL_7;
  }

  return v11;
}

uint64_t URLLoader.dataSource.getter()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for URLLoader(0) + 28);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9B01C4(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t URLLoader.legacyRefreshURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BA86E9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for URLLoader(0);
  sub_21B9AFF80(v1 + *(v10 + 32), v9, &qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21B9AB6D4(v9, a1, &qword_27CD9DBA0);
  }

  sub_21BA8820C();
  v12 = sub_21BA8740C();
  sub_21BA8670C();

  sub_21BA86E8C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21BA24A00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21B9AFF80(a1, &v6 - v3, &qword_27CD9DBA0);
  return sub_21B9CD694(v4);
}

uint64_t URLLoader.hooks.getter()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for URLLoader(0) + 36);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9B01C4(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t sub_21BA24C18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B9D5370();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BA24C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t URLLoader.defaultURLLoadingMode.getter()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for URLLoader(0);
  v6 = v0 + *(result + 40);
  if ((*(v6 + 8) & 1) == 0)
  {
    v7 = *v6;

    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9CB19C(v7, 0);
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t URLLoader.activityIndicatorManager.getter()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for URLLoader(0) + 44));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t URLLoader.init<A>(from:keys:defaultHTTPMethod:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a5;
  v40 = a6;
  v41 = a3;
  v42 = a4;
  v37 = a2;
  v38 = a1;
  v36 = type metadata accessor for URLLoadingParameters.Keys();
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v10 = &v30 - v9;
  v11 = type metadata accessor for URLLoadingParameters(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URLLoader(0);
  v15 = a7 + v14[5];
  KeyPath = swift_getKeyPath();
  *v15 = KeyPath;
  *(v15 + 8) = 0;
  v16 = a7 + v14[6];
  v34 = swift_getKeyPath();
  *v16 = v34;
  *(v16 + 8) = 0;
  v17 = a7 + v14[7];
  v32 = swift_getKeyPath();
  *v17 = v32;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  v18 = v14[8];
  *(a7 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  v33 = v18;
  swift_storeEnumTagMultiPayload();
  v19 = a7 + v14[9];
  v31 = swift_getKeyPath();
  *v19 = v31;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  v20 = a7 + v14[10];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a7 + v14[11];
  type metadata accessor for ActivityIndicatorManager(0);
  sub_21BA27210();
  v30 = sub_21BA86A6C();
  *v21 = v30;
  *(v21 + 8) = v22 & 1;
  v23 = v38;
  sub_21B9B3220(v38, v43);
  v24 = v8;
  v25 = *(v8 + 16);
  v26 = v37;
  v27 = v36;
  v25(v10);
  v28 = v43[6];
  URLLoadingParameters.init<A>(from:keys:defaultHTTPMethod:)(v43, v10, v41, v42, v39, v40, v13);
  (*(v24 + 8))(v26, v27);
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (!v28)
  {
    return sub_21BA27268(v13, a7);
  }

  sub_21B9ABAAC(a7 + v33, &qword_27CD9CEA8);

  sub_21B9CB19C(*v20, *(v20 + 8));
}

uint64_t URLLoader.init<A>(from:keys:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a4;
  v39 = a2;
  v40 = a3;
  v7 = type metadata accessor for URLLoadingParameters.Keys();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for URLLoadingParameters(0);
  MEMORY[0x28223BE20](v11 - 8);
  v44 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URLLoader(0);
  v14 = a5 + v13[5];
  KeyPath = swift_getKeyPath();
  *v14 = KeyPath;
  *(v14 + 8) = 0;
  v15 = a5 + v13[6];
  v37 = swift_getKeyPath();
  *v15 = v37;
  *(v15 + 8) = 0;
  v16 = a5 + v13[7];
  v35 = swift_getKeyPath();
  *v16 = v35;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v17 = v13[8];
  *(a5 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  v36 = v17;
  swift_storeEnumTagMultiPayload();
  v18 = a5 + v13[9];
  v34 = swift_getKeyPath();
  *v18 = v34;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  v19 = a5 + v13[10];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a5 + v13[11];
  type metadata accessor for ActivityIndicatorManager(0);
  sub_21BA27210();
  v33 = sub_21BA86A6C();
  *v20 = v33;
  *(v20 + 8) = v21 & 1;
  v22 = a1;
  sub_21B9B3220(a1, v43);
  v23 = v8;
  v24 = *(v8 + 16);
  v25 = v39;
  v24(v10);
  v27 = v40;
  v26 = v41;
  v28 = sub_21BA2DF04();
  v29 = v42;
  URLLoadingParameters.init<A>(from:keys:defaultHTTPMethod:)(v43, v10, v28, v30, v27, v26, v44);
  (*(v23 + 8))(v25, v7);
  __swift_destroy_boxed_opaque_existential_1(v22);
  if (!v29)
  {
    return sub_21BA27268(v44, a5);
  }

  sub_21B9ABAAC(a5 + v36, &qword_27CD9CEA8);

  sub_21B9CB19C(*v19, *(v19 + 8));
}

uint64_t URLLoader.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLLoadingParameters(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URLLoader(0);
  v8 = a2 + v7[5];
  KeyPath = swift_getKeyPath();
  *v8 = KeyPath;
  *(v8 + 8) = 0;
  v9 = a2 + v7[6];
  v19 = swift_getKeyPath();
  *v9 = v19;
  *(v9 + 8) = 0;
  v10 = a2 + v7[7];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = v7[8];
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + v7[9];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = a2 + v7[10];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a2 + v7[11];
  type metadata accessor for ActivityIndicatorManager(0);
  sub_21BA27210();
  *v14 = sub_21BA86A6C();
  *(v14 + 8) = v15 & 1;
  sub_21B9B3220(a1, v21);
  v16 = v22;
  URLLoadingParameters.init(from:)(v21, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v16)
  {
    return sub_21BA27268(v6, a2);
  }

  sub_21B9ABAAC(a2 + v11, &qword_27CD9CEA8);

  sub_21B9CB19C(*v13, *(v13 + 8));
}

uint64_t URLLoader.init(from:defaultHTTPMethod:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a2;
  v24 = a3;
  v6 = type metadata accessor for URLLoadingParameters(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLLoader(0);
  v10 = a4 + v9[5];
  KeyPath = swift_getKeyPath();
  *v10 = KeyPath;
  *(v10 + 8) = 0;
  v11 = a4 + v9[6];
  v21 = swift_getKeyPath();
  *v11 = v21;
  *(v11 + 8) = 0;
  v12 = a4 + v9[7];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = v9[8];
  *(a4 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  swift_storeEnumTagMultiPayload();
  v14 = a4 + v9[9];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  v15 = a4 + v9[10];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a4 + v9[11];
  type metadata accessor for ActivityIndicatorManager(0);
  sub_21BA27210();
  *v16 = sub_21BA86A6C();
  *(v16 + 8) = v17 & 1;
  sub_21B9B3220(a1, v25);
  v18 = v26;
  URLLoadingParameters.init(from:defaultHTTPMethod:)(v25, v23, v24, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v18)
  {
    return sub_21BA27268(v8, a4);
  }

  sub_21B9ABAAC(a4 + v13, &qword_27CD9CEA8);

  sub_21B9CB19C(*v15, *(v15 + 8));
}

uint64_t sub_21BA25AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B9AC2E8;

  return URLLoadingCapable.handle(url:)(a1, a2, a3);
}

uint64_t sub_21BA25B80()
{
  v4 = URLLoader.objectModel.getter();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E790);
  sub_21BA1C72C(0xD000000000000044, v0, &v5);

  v1 = v5;
  v2 = RUIObjectModel.scriptEnvironment.getter();

  return v2;
}

uint64_t sub_21BA25C0C()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_21BA8820C();
    v7 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9B01C4(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

void *URLLoaderProvider.objectModel.getter()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_21BA8820C();
    v7 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void *URLLoaderProvider.ruiParentElement.getter()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_21BA8820C();
    v7 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t URLLoaderProvider.baseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_21BA86E9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 24);
  if (*(v1 + 32) != 1)
  {

    sub_21BA8820C();
    v14 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(v10, 0);
    (*(v7 + 8))(v9, v6);
    v10 = v19;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = sub_21BA864AC();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  v11 = v10;
  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = [v10 sourceURL];

  if (v12)
  {
    sub_21BA8643C();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v17 = sub_21BA864AC();
  (*(*(v17 - 8) + 56))(v5, v13, 1, v17);
  return sub_21B9AB6D4(v5, a1, &qword_27CD9DBA0);
}

uint64_t URLLoaderProvider.scriptEnvironment.getter()
{
  v4 = URLLoaderProvider.objectModel.getter();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E790);
  sub_21BA1C72C(0xD00000000000004CLL, v0, &v5);

  v1 = v5;
  v2 = RUIObjectModel.scriptEnvironment.getter();

  return v2;
}

unint64_t URLLoaderProvider.clientInfo.getter()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v6 = v5;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_21BA8820C();
    v7 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(v5, 0);
    (*(v2 + 8))(v4, v1);
    v5 = v13;
    if (!v13)
    {
LABEL_7:
      v10 = sub_21B9AF734(MEMORY[0x277D84F90]);

      return v10;
    }
  }

  v8 = [v5 clientInfo];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = sub_21BA87BCC();

  v10 = sub_21B9AD11C(v9);

  if (!v10)
  {
    goto LABEL_7;
  }

  return v10;
}

uint64_t sub_21BA264F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BA86E9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for URLLoaderProvider(0);
  sub_21B9AFF80(v1 + *(v10 + 28), v9, &qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21B9AB6D4(v9, a1, &qword_27CD9DBA0);
  }

  sub_21BA8820C();
  v12 = sub_21BA8740C();
  sub_21BA8670C();

  sub_21BA86E8C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21BA266D8()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for URLLoaderProvider(0) + 32);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9B01C4(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t sub_21BA26848()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for URLLoaderProvider(0) + 40));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t URLLoaderProvider.loader(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21BA86E9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  URLLoaderProvider.baseURL.getter(&v36 - v13);
  sub_21BA264F0(v11);
  v15 = v2 + *(type metadata accessor for URLLoaderProvider(0) + 36);
  if ((*(v15 + 8) & 1) == 0)
  {
    v16 = *v15;

    sub_21BA8820C();
    v17 = sub_21BA8740C();
    v39 = v5;
    v18 = a1;
    v19 = v17;
    sub_21BA8670C();

    a1 = v18;
    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9CB19C(v16, 0);
    (*(v6 + 8))(v8, v39);
  }

  v39 = URLLoaderProvider.objectModel.getter();
  v38 = URLLoaderProvider.ruiParentElement.getter();
  v20 = sub_21BA25C0C();
  v36 = v21;
  v37 = v20;
  v22 = URLLoaderProvider.objectModel.getter();
  v40 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E790);
  sub_21BA1C72C(0xD00000000000004CLL, v23, &v41);

  v24 = v41;
  v25 = RUIObjectModel.scriptEnvironment.getter();

  v26 = sub_21BA266D8();
  v28 = v27;
  v29 = type metadata accessor for StaticURLLoader(0);
  sub_21BA27148(a1, a2 + v29[12]);
  v30 = sub_21BA26848();
  sub_21B9AB6D4(v14, a2, &qword_27CD9DBA0);
  result = sub_21B9AB6D4(v11, a2 + v29[5], &qword_27CD9DBA0);
  v32 = v38;
  *(a2 + v29[7]) = v39;
  *(a2 + v29[8]) = v32;
  v33 = (a2 + v29[9]);
  v34 = v36;
  *v33 = v37;
  v33[1] = v34;
  *(a2 + v29[10]) = v25;
  v35 = (a2 + v29[11]);
  *v35 = v26;
  v35[1] = v28;
  *(a2 + v29[13]) = v30;
  return result;
}

void *sub_21BA26CB0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = v2;
  return v2;
}

void *sub_21BA26CDC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  v3 = v2;
  return v2;
}

uint64_t sub_21BA26D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B9AC1F4;

  return URLLoadingCapable.handle(url:)(a1, a2, a3);
}

unint64_t sub_21BA26E74(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  if (!v2 || (v3 = [v2 clientInfo]) == 0 || (v4 = v3, v5 = sub_21BA87BCC(), v4, v6 = sub_21B9AD11C(v5), , !v6))
  {
    v6 = sub_21B9AF734(MEMORY[0x277D84F90]);
  }

  return v6;
}

uint64_t sub_21BA26F14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000021BAA5670 == a2;
  if (v3 || (sub_21BA8899C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021BAA5650 == a2 || (sub_21BA8899C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D7269666E6F63 && a2 == 0xEE004B4F6E6F6974 || (sub_21BA8899C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021BAA5630 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21BA8899C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_21BA2708C()
{
  result = qword_27CD9EEA0;
  if (!qword_27CD9EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EEA0);
  }

  return result;
}

uint64_t sub_21BA27148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLLoadingParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA271AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLLoadingParameters(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BA27210()
{
  result = qword_27CD9D770;
  if (!qword_27CD9D770)
  {
    type metadata accessor for ActivityIndicatorManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D770);
  }

  return result;
}

uint64_t sub_21BA27268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLLoadingParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BA27310()
{
  result = qword_27CD9EEA8;
  if (!qword_27CD9EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EEA8);
  }

  return result;
}

unint64_t sub_21BA27368()
{
  result = qword_27CD9EEB0;
  if (!qword_27CD9EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EEB0);
  }

  return result;
}

unint64_t sub_21BA273C0()
{
  result = qword_27CD9EEB8;
  if (!qword_27CD9EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EEB8);
  }

  return result;
}

void sub_21BA27484()
{
  sub_21B940168(319, &unk_27CD9BC90, &qword_27CD9CF70, &unk_21BA959E0, MEMORY[0x277CDF470]);
  if (v0 <= 0x3F)
  {
    sub_21B940168(319, &unk_27CD9BC40, &qword_27CD9E790, &unk_21BA97F50, MEMORY[0x277CDF470]);
    if (v1 <= 0x3F)
    {
      sub_21B940168(319, &qword_27CD9BC50, &qword_27CD9DF48, &unk_21BA971C8, MEMORY[0x277CDF470]);
      if (v2 <= 0x3F)
      {
        sub_21B940168(319, &qword_27CD9BC60, &qword_27CD9DBA0, &unk_21BA92240, MEMORY[0x277CDF470]);
        if (v3 <= 0x3F)
        {
          sub_21B940168(319, &qword_27CD9BC88, &qword_27CD9EEC0, &unk_21BA9A6F8, MEMORY[0x277CDF470]);
          if (v4 <= 0x3F)
          {
            sub_21B9401CC();
            if (v5 <= 0x3F)
            {
              sub_21B94021C(319, &qword_27CD9BC78, type metadata accessor for ActivityIndicatorManager, MEMORY[0x277CDF470]);
              if (v6 <= 0x3F)
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

void sub_21BA276B4()
{
  sub_21B94021C(319, &qword_27CD9BCA8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21BA04D98(319, &qword_27CD9E750, &qword_27CD9E758);
    if (v1 <= 0x3F)
    {
      sub_21BA04D98(319, &qword_27CD9E760, &qword_27CD9E768);
      if (v2 <= 0x3F)
      {
        sub_21B940168(319, &qword_27CD9EEC8, &qword_27CD9EED0, &unk_21BA9B8B0, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ScriptEnvironment();
          if (v4 <= 0x3F)
          {
            sub_21B940168(319, &qword_27CD9EED8, &qword_27CD9EEE0, &unk_21BA9A730, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for URLLoadingParameters(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for ActivityIndicatorManager(319);
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

uint64_t sub_21BA278A0()
{
  v1 = v0;

  return sub_21BA8786C();
}

uint64_t sub_21BA278C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v4 = 0x6C6562614C627573;
    v3 = 0xE800000000000000;
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

  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (*a2 != 1)
  {
    v8 = 0x6C6562614C627573;
    v7 = 0xE800000000000000;
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
    v11 = sub_21BA8899C();
  }

  return v11 & 1;
}

uint64_t sub_21BA279BC()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA27A50()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA27AD0()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA27B60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA29F48();
  *a1 = result;
  return result;
}

void sub_21BA27B90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v5 = 0x6C6562614C627573;
    v4 = 0xE800000000000000;
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

uint64_t sub_21BA27BE0()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6C6562614C627573;
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

uint64_t sub_21BA27C2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA29F48();
  *a1 = result;
  return result;
}

uint64_t sub_21BA27C54(uint64_t a1)
{
  v2 = sub_21BA2A28C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA27C90(uint64_t a1)
{
  v2 = sub_21BA2A28C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BannerRowElement.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21BA27CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BA86E9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EEE8);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for BannerRowElement();
  sub_21B9AFF80(v1 + *(v10 + 36), v9, &qword_27CD9EEE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21B9AB6D4(v9, a1, &qword_27CD9EF98);
  }

  sub_21BA8820C();
  v12 = sub_21BA8740C();
  sub_21BA8670C();

  sub_21BA86E8C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21BA27F08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EF98);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21B9AFF80(a1, &v5 - v3, &qword_27CD9EF98);
  return sub_21BA86DDC();
}

double sub_21BA27FB0()
{
  v0 = sub_21BA8723C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EFE0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EF98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_21BA27CFC(&v23 - v14);
  (*(v1 + 104))(v12, *MEMORY[0x277CE0568], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_21B9AFF80(v15, v6, &qword_27CD9EF98);
  sub_21B9AFF80(v12, &v6[v16], &qword_27CD9EF98);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_21B9ABAAC(v12, &qword_27CD9EF98);
    sub_21B9ABAAC(v15, &qword_27CD9EF98);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_21B9ABAAC(v6, &qword_27CD9EF98);
      return 20.0;
    }

    goto LABEL_6;
  }

  sub_21B9AFF80(v6, v9, &qword_27CD9EF98);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_21B9ABAAC(v12, &qword_27CD9EF98);
    sub_21B9ABAAC(v15, &qword_27CD9EF98);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_21B9ABAAC(v6, &qword_27CD9EFE0);
    return 15.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_21B940830(&qword_27CD9EFE8, MEMORY[0x277CE0578]);
  v21 = sub_21BA87C7C();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_21B9ABAAC(v12, &qword_27CD9EF98);
  sub_21B9ABAAC(v15, &qword_27CD9EF98);
  v22(v9, v0);
  sub_21B9ABAAC(v6, &qword_27CD9EF98);
  result = 15.0;
  if (v21)
  {
    return 20.0;
  }

  return result;
}

double sub_21BA28404()
{
  v0 = sub_21BA8723C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EFE0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EF98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_21BA27CFC(&v23 - v14);
  (*(v1 + 104))(v12, *MEMORY[0x277CE0568], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_21B9AFF80(v15, v6, &qword_27CD9EF98);
  sub_21B9AFF80(v12, &v6[v16], &qword_27CD9EF98);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_21B9ABAAC(v12, &qword_27CD9EF98);
    sub_21B9ABAAC(v15, &qword_27CD9EF98);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_21B9ABAAC(v6, &qword_27CD9EF98);
      return 8.0;
    }

    goto LABEL_6;
  }

  sub_21B9AFF80(v6, v9, &qword_27CD9EF98);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_21B9ABAAC(v12, &qword_27CD9EF98);
    sub_21B9ABAAC(v15, &qword_27CD9EF98);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_21B9ABAAC(v6, &qword_27CD9EFE0);
    return 4.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_21B940830(&qword_27CD9EFE8, MEMORY[0x277CE0578]);
  v21 = sub_21BA87C7C();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_21B9ABAAC(v12, &qword_27CD9EF98);
  sub_21B9ABAAC(v15, &qword_27CD9EF98);
  v22(v9, v0);
  sub_21B9ABAAC(v6, &qword_27CD9EF98);
  result = 4.0;
  if (v21)
  {
    return 8.0;
  }

  return result;
}

uint64_t sub_21BA28858@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v18 = sub_21BA86F9C();
  v1 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21BA8757C();
  v4 = sub_21BA8760C();
  v6 = v5;
  v8 = v7;

  sub_21BA874EC();
  v9 = sub_21BA875DC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_21B9C318C(v4, v6, v8 & 1);

  v19 = v9;
  v20 = v11;
  v21 = v13 & 1;
  v22 = v15;
  sub_21BA86F8C();
  sub_21BA877BC();
  (*(v1 + 8))(v3, v18);
  sub_21B9C318C(v9, v11, v13 & 1);
}

uint64_t sub_21BA28A14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BA86F9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EFC0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v36 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5A8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for BannerRowElement();
  sub_21B9AFF80(v1 + *(v13 + 28), v12, &qword_27CD9D5A8);
  v14 = type metadata accessor for SubLabelElement();
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {
    sub_21B9ABAAC(v12, &qword_27CD9D5A8);
LABEL_5:
    v29 = 1;
    return (*(v8 + 56))(a1, v29, 1, v7);
  }

  v15 = *(v12 + 5);

  sub_21BA2A504(v12, type metadata accessor for SubLabelElement);
  if (!v15)
  {
    goto LABEL_5;
  }

  sub_21BA874AC();
  v16 = sub_21BA8760C();
  v18 = v17;
  v33 = v4;
  v20 = v19;
  v35 = a1;

  v37 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EFD0);
  v32 = v3;
  sub_21B9B35B8(&qword_27CD9EFD8, &qword_27CD9EFD0);
  v21 = sub_21BA875FC();
  v23 = v22;
  v25 = v24;
  v34 = v7;
  v27 = v26;
  sub_21B9C318C(v16, v18, v20 & 1);

  v37 = v21;
  v38 = v23;
  v39 = v25 & 1;
  v40 = v27;
  sub_21BA86F8C();
  v28 = v36;
  sub_21BA877BC();
  (*(v33 + 8))(v6, v32);
  a1 = v35;
  sub_21B9C318C(v21, v23, v25 & 1);
  v7 = v34;

  sub_21B9AB6D4(v28, a1, &qword_27CD9EFC0);
  v29 = 0;
  return (*(v8 + 56))(a1, v29, 1, v7);
}

uint64_t sub_21BA28DF8@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EFA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (v33 - v8);
  v10 = a1[9];
  v11 = a1[7];
  v74 = a1[8];
  v75 = v10;
  v12 = a1[9];
  v76[0] = a1[10];
  *(v76 + 9) = *(a1 + 169);
  v13 = a1[5];
  v14 = a1[3];
  v70 = a1[4];
  v71 = v13;
  v15 = a1[5];
  v16 = a1[7];
  v72 = a1[6];
  v73 = v16;
  v17 = a1[3];
  v68 = a1[2];
  v69 = v17;
  v83 = v74;
  v84 = v12;
  v85[0] = a1[10];
  *(v85 + 9) = *(a1 + 169);
  v79 = v70;
  v80 = v15;
  v81 = v72;
  v82 = v11;
  v77 = v68;
  v78 = v14;
  if (sub_21B9FA0A8(&v77) == 1)
  {
    v65 = v74;
    v66 = v75;
    v67[0] = v76[0];
    *(v67 + 9) = *(v76 + 9);
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v64 = v73;
    v18 = v68;
    v19 = v69;
  }

  else
  {
    v56 = v83;
    v57 = v84;
    v58[0] = v85[0];
    *(v58 + 9) = *(v85 + 9);
    v52 = v79;
    v53 = v80;
    v54 = v81;
    v55 = v82;
    v50 = v77;
    v51 = v78;
    v35[6] = v74;
    v35[7] = v75;
    v36[0] = v76[0];
    *(v36 + 9) = *(v76 + 9);
    v35[2] = v70;
    v35[3] = v71;
    v35[4] = v72;
    v35[5] = v73;
    v35[0] = v68;
    v35[1] = v69;
    sub_21B9FA25C(v35, &v41);
    RUIImageView.defaultSize(_:)(v33, 60.0, 60.0);
    v37[6] = v56;
    v37[7] = v57;
    v38[0] = v58[0];
    *(v38 + 9) = *(v58 + 9);
    v37[2] = v52;
    v37[3] = v53;
    v37[4] = v54;
    v37[5] = v55;
    v37[0] = v50;
    v37[1] = v51;
    sub_21BA12620(v37);
    RUIImageView.allowsSymbolResizing(_:)(1, &v41);
    v39[6] = v33[6];
    v39[7] = v33[7];
    v40[0] = v34[0];
    *(v40 + 9) = *(v34 + 9);
    v39[2] = v33[2];
    v39[3] = v33[3];
    v39[4] = v33[4];
    v39[5] = v33[5];
    v39[0] = v33[0];
    v39[1] = v33[1];
    sub_21BA12620(v39);
    v56 = v47;
    v57 = v48;
    v58[0] = v49[0];
    *(v58 + 9) = *(v49 + 9);
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v50 = v41;
    v51 = v42;
    nullsub_1(&v50);
    v65 = v56;
    v66 = v57;
    v67[0] = v58[0];
    *(v67 + 9) = *(v58 + 9);
    v61 = v52;
    v62 = v53;
    v63 = v54;
    v64 = v55;
    v18 = v50;
    v19 = v51;
  }

  v59 = v18;
  v60 = v19;
  v20 = sub_21BA86FEC();
  v21 = sub_21BA28404();
  *v9 = v20;
  v9[1] = v21;
  *(v9 + 16) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EFA8);
  sub_21BA292B0(v9 + *(v22 + 44));
  sub_21B9AFF80(v9, v6, &qword_27CD9EFA0);
  v23 = v66;
  v47 = v65;
  v48 = v66;
  v24 = v67[0];
  v49[0] = v67[0];
  *(v49 + 9) = *(v67 + 9);
  v25 = v61;
  v26 = v62;
  v43 = v61;
  v44 = v62;
  v27 = v63;
  v28 = v64;
  v45 = v63;
  v46 = v64;
  v29 = v59;
  v30 = v60;
  v41 = v59;
  v42 = v60;
  a2[6] = v65;
  a2[7] = v23;
  a2[8] = v24;
  *(a2 + 137) = *(v67 + 9);
  a2[2] = v25;
  a2[3] = v26;
  a2[4] = v27;
  a2[5] = v28;
  *a2 = v29;
  a2[1] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EFB0);
  sub_21B9AFF80(v6, a2 + *(v31 + 48), &qword_27CD9EFA0);
  sub_21B9AFF80(&v41, &v50, &unk_27CD9DD50);
  sub_21B9ABAAC(v9, &qword_27CD9EFA0);
  sub_21B9ABAAC(v6, &qword_27CD9EFA0);
  v56 = v65;
  v57 = v66;
  v58[0] = v67[0];
  *(v58 + 9) = *(v67 + 9);
  v52 = v61;
  v53 = v62;
  v54 = v63;
  v55 = v64;
  v50 = v59;
  v51 = v60;
  return sub_21B9ABAAC(&v50, &unk_27CD9DD50);
}

uint64_t sub_21BA292B0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EFB8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EFC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_21BA28858(&v16 - v12);
  sub_21BA28A14(v7);
  sub_21B9AFF80(v13, v10, &qword_27CD9EFC0);
  sub_21B9AFF80(v7, v4, &qword_27CD9EFB8);
  sub_21B9AFF80(v10, a1, &qword_27CD9EFC0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EFC8);
  sub_21B9AFF80(v4, a1 + *(v14 + 48), &qword_27CD9EFB8);
  sub_21B9ABAAC(v7, &qword_27CD9EFB8);
  sub_21B9ABAAC(v13, &qword_27CD9EFC0);
  sub_21B9ABAAC(v4, &qword_27CD9EFB8);
  return sub_21B9ABAAC(v10, &qword_27CD9EFC0);
}

uint64_t BannerRowElement.body.getter@<X0>(char *a1@<X8>)
{
  v41 = a1;
  v2 = sub_21BA872BC();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EEF0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v35 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EEF8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EF00);
  MEMORY[0x28223BE20](v35);
  v12 = &v35 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EF08);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v14 = &v35 - v13;
  v15 = sub_21BA86FEC();
  v16 = sub_21BA27FB0();
  *v6 = v15;
  v6[1] = v16;
  *(v6 + 16) = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EF10);
  sub_21BA28DF8(v1, (v6 + *(v17 + 44)));
  sub_21B9B35B8(&qword_27CD9EF18, &qword_27CD9EEF0);
  View.ruiCellSelectionStyle(_:)();
  sub_21B9ABAAC(v6, &qword_27CD9EEF0);
  KeyPath = swift_getKeyPath();
  v19 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EF20) + 36)];
  *v19 = KeyPath;
  v19[8] = 0;
  v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EF28) + 36)] = 0;
  sub_21BA27FB0();
  LOBYTE(KeyPath) = sub_21BA8743C();
  sub_21BA869EC();
  v20 = &v10[*(v8 + 44)];
  *v20 = KeyPath;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_21BA87B3C();
  sub_21BA86CEC();
  sub_21B948CD0(v10, v12);
  v25 = v35;
  v26 = &v12[*(v35 + 36)];
  v27 = v49;
  *(v26 + 4) = v48;
  *(v26 + 5) = v27;
  *(v26 + 6) = v50;
  v28 = v45;
  *v26 = v44;
  *(v26 + 1) = v28;
  v29 = v47;
  *(v26 + 2) = v46;
  *(v26 + 3) = v29;
  v30 = v36;
  sub_21BA872AC();
  v31 = sub_21BA29F94();
  sub_21BA8779C();
  (*(v39 + 8))(v30, v40);
  sub_21B948D40(v12);
  type metadata accessor for BannerRowElement();
  v42 = v25;
  v43 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v37;
  sub_21B9AC578(OpaqueTypeConformance2, v41);
  return (*(v38 + 8))(v14, v33);
}

uint64_t BannerRowElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EF60);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v36 - v7;
  v9 = type metadata accessor for BannerRowElement();
  MEMORY[0x28223BE20](v9);
  v11 = (v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v12 + 36);
  *(&v11->_countAndFlagsBits + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EEE8);
  v41 = v13;
  v56 = v11;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA2A28C();
  v14 = v42;
  sub_21BA88C0C();
  if (v14)
  {
    goto LABEL_4;
  }

  v37 = v5;
  v38 = v6;
  v42 = v8;
  v15 = v40;
  v16 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = Decoder.decodeRUIID()();
  if (v18)
  {
    (*(v15 + 8))(v42, v38);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21B9ABAAC(v56 + v41, &qword_27CD9EF70);
  }

  v20 = v56;
  *v56 = v17;
  v36[2] = v17._object;
  LOBYTE(v54[0]) = 1;
  v21 = sub_21BA887BC();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v22)
  {
    v24 = v22;
  }

  v20[1]._countAndFlagsBits = v23;
  v20[1]._object = v24;
  type metadata accessor for SubLabelElement();
  LOBYTE(v54[0]) = 2;
  sub_21B940830(&qword_27CD9D5D0, type metadata accessor for SubLabelElement);
  v25 = v37;
  sub_21BA887EC();
  v36[1] = 0;
  v26 = v56;
  sub_21B9AB6D4(v25, v56 + *(v9 + 28), &qword_27CD9D5A8);
  sub_21B9B3220(v16, v53);
  RUIImageView.init(from:)(v53, v54);
  v50 = v54[6];
  v51 = v54[7];
  v52[0] = v55[0];
  *(v52 + 9) = *(v55 + 9);
  v46 = v54[2];
  v47 = v54[3];
  v48 = v54[4];
  v49 = v54[5];
  v44 = v54[0];
  v45 = v54[1];
  nullsub_1(&v44);
  v27 = v51;
  v26[8] = v50;
  v26[9] = v27;
  v26[10] = v52[0];
  *(v26 + 169) = *(v52 + 9);
  v28 = v47;
  v26[4] = v46;
  v26[5] = v28;
  v29 = v49;
  v26[6] = v48;
  v26[7] = v29;
  v30 = v45;
  v26[2] = v44;
  v26[3] = v30;
  sub_21B9B3220(v16, v43);
  v31 = sub_21B9AC534(v43);
  v37 = 0;
  v32 = v31;
  v34 = v33;
  (*(v15 + 8))(v42, v38);
  v35 = (&v26->_countAndFlagsBits + *(v9 + 32));
  *v35 = v32;
  v35[1] = v34;
  sub_21BA2A2E0(v26, v39);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_21BA2A504(v26, type metadata accessor for BannerRowElement);
}