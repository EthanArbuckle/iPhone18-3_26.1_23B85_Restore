unint64_t sub_1A46CCF0C()
{
  result = qword_1EB1404E8;
  if (!qword_1EB1404E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1404E8);
  }

  return result;
}

uint64_t sub_1A46CCF58@<X0>(uint64_t *a1@<X8>)
{
  sub_1A43F81D8(0, 0, sub_1A46CCFDC, a1);
  type metadata accessor for LemonadeNavigationDestination();
  return swift_storeEnumTagMultiPayload();
}

void sub_1A46CCFDC(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 48);
  a1[3] = &type metadata for LemonadePhototypesDestinationView;
  a1[4] = sub_1A46CD080();
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
  swift_unknownObjectRetain();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A46CD080()
{
  result = qword_1EB161DF0[0];
  if (!qword_1EB161DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB161DF0);
  }

  return result;
}

uint64_t sub_1A46CD100@<X0>(uint64_t a1@<X8>)
{
  sub_1A46CDA04();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46CE5C8(0, &qword_1EB140538, MEMORY[0x1E697F948]);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  *&v32[32] = *(v1 + 32);
  v12 = *(v1 + 16);
  *v32 = *v1;
  *&v32[16] = v12;
  v13 = *(*v32 + 16);
  if (v13 == 1)
  {
    sub_1A3C341C8(*v32 + 32, &v26);
    v33[0] = *&v32[8];
    v33[1] = *&v32[24];
    v22 = *&v32[8];
    v23 = *&v32[24];
    sub_1A46CE0F0(v33, v30);
    sub_1A46B6988(&v26, &v22, v30);
    *&v22 = v30[0];
    *(&v22 + 1) = v31;
    v24 = 0;
    v23 = 0uLL;
    v25 = 1;
    sub_1A46CDE70(0, &qword_1EB140548);
    v21 = v4;
    v20 = a1;
    v19 = v8;
    sub_1A46CDE70(0, &qword_1EB140180);
    sub_1A46CE0A0(&qword_1EB140558, &qword_1EB140548);
    sub_1A46CE0A0(&qword_1EB140188, &qword_1EB140180);

    sub_1A5249744();
    v14 = v28;
    v15 = v29;
    v16 = v27;
    *v11 = v26;
    *(v11 + 1) = v16;
    *(v11 + 4) = v14;
    v11[40] = v15;
    swift_storeEnumTagMultiPayload();
    sub_1A46CDDD8();
    sub_1A46CDFE0();
    sub_1A46CDCE8(&qword_1EB140560, sub_1A46CDA04);
    sub_1A5249744();
  }

  else
  {
    if (!v13)
    {
      LOBYTE(v22) = 3;
      sub_1A46B6B2C(&v22, sub_1A46CD784, &v26);
      v21 = v4;
      v18 = *(&v26 + 1);
      v20 = a1;
      v19 = v8;
      *&v22 = v26;
      *(&v22 + 1) = *(&v26 + 1);
      *&v23 = v27;
      *(&v23 + 1) = BYTE8(v27);
      v24 = v28;
      v25 = 0;
      sub_1A3E75E68(*(&v26 + 1), v27, SBYTE8(v27));
      sub_1A46CDE70(0, &qword_1EB140548);
      sub_1A46CDE70(0, &qword_1EB140180);
      sub_1A46CE0A0(&qword_1EB140558, &qword_1EB140548);
      sub_1A46CE0A0(&qword_1EB140188, &qword_1EB140180);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    LOBYTE(v26) = 2;
    MEMORY[0x1EEE9AC00](v9);
    *(&v18 - 2) = v32;
    sub_1A46CDA98();
    sub_1A46CDCE8(&qword_1EB140530, sub_1A46CDA98);
    sub_1A46B6B2C(&v26, sub_1A46CDEC0, v6);
    sub_1A46CE308(v6, v11, sub_1A46CDA04);
    swift_storeEnumTagMultiPayload();
    sub_1A46CDDD8();
    sub_1A46CDFE0();
    sub_1A46CDCE8(&qword_1EB140560, sub_1A46CDA04);
    sub_1A5249744();
    return sub_1A46CE3A8(v6, sub_1A46CDA04);
  }
}

void sub_1A46CD784(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001A53E5BD0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A46CD7B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1A46CD80C(void *a1, uint64_t a2)
{
  v15 = a1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(a2 + 24);
  v18[0] = *(a2 + 8);
  v18[1] = v5;
  v6 = *(a2 + 24);
  v16[0] = *(a2 + 8);
  v16[1] = v6;
  v7 = *(v4 + 32);
  sub_1A46CE0F0(v18, v17);
  v7(v17, v16, v3, v4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v8 = __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
  v12 = sub_1A524B8E4();
  __swift_destroy_boxed_opaque_existential_0(v17);
  v17[0] = v12;
  sub_1A3E429B4();
  sub_1A46CDCE8(&qword_1EB1274F0, sub_1A3E429B4);
  return sub_1A5248444();
}

void sub_1A46CDA04()
{
  if (!qword_1EB1404F0)
  {
    sub_1A46CDA98();
    sub_1A46CDCE8(&qword_1EB140530, sub_1A46CDA98);
    v0 = type metadata accessor for PhototypeRootContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1404F0);
    }
  }
}

void sub_1A46CDA98()
{
  if (!qword_1EB1404F8)
  {
    sub_1A46CDB18();
    sub_1A46CDD30();
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1404F8);
    }
  }
}

void sub_1A46CDB18()
{
  if (!qword_1EB140500)
  {
    sub_1A46CDBE0();
    sub_1A46CDC38();
    sub_1A46CDCE8(&qword_1EB140518, sub_1A46CDBE0);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140500);
    }
  }
}

void sub_1A46CDBE0()
{
  if (!qword_1EB140508)
  {
    sub_1A3F47C30();
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140508);
    }
  }
}

void sub_1A46CDC38()
{
  if (!qword_1EB140510)
  {
    sub_1A3E429B4();
    sub_1A46CDCE8(&qword_1EB1274F0, sub_1A3E429B4);
    v0 = sub_1A5248454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140510);
    }
  }
}

uint64_t sub_1A46CDCE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A46CDD30()
{
  result = qword_1EB140520;
  if (!qword_1EB140520)
  {
    sub_1A46CDB18();
    sub_1A46CDCE8(&qword_1EB140528, sub_1A46CDC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140520);
  }

  return result;
}

void sub_1A46CDDD8()
{
  if (!qword_1EB140540)
  {
    sub_1A46CDE70(255, &qword_1EB140548);
    sub_1A46CDE70(255, &qword_1EB140180);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140540);
    }
  }
}

void sub_1A46CDE70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for PhototypeRootContainer();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1A46CDEC0()
{
  v1 = *(v0 + 16);
  v9 = *v1;
  v2 = v9;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
  v8 = v2;
  sub_1A46CE308(&v9, v7, sub_1A46CDBE0);
  sub_1A46CE370(v1, v7);
  sub_1A46CDB18();
  sub_1A46CDD30();
  sub_1A524A2C4();

  return sub_1A46CE3A8(&v9, sub_1A46CDBE0);
}

unint64_t sub_1A46CDFE0()
{
  result = qword_1EB140550;
  if (!qword_1EB140550)
  {
    sub_1A46CDDD8();
    sub_1A46CE0A0(&qword_1EB140558, &qword_1EB140548);
    sub_1A46CE0A0(&qword_1EB140188, &qword_1EB140180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140550);
  }

  return result;
}

uint64_t sub_1A46CE0A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A46CDE70(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_73()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1A46CE1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1A46CDBE0();
  sub_1A46CDC38();
  sub_1A46CDCE8(&qword_1EB140518, sub_1A46CDBE0);
  sub_1A46CDCE8(&qword_1EB140528, sub_1A46CDC38);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46CE308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46CE3A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A46CE430()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 16))(v4, v5);
  sub_1A3D5F9DC();
  return sub_1A524B614();
}

unint64_t sub_1A46CE4FC()
{
  result = qword_1EB140568;
  if (!qword_1EB140568)
  {
    sub_1A46CE5C8(255, &unk_1EB140570, MEMORY[0x1E697F960]);
    sub_1A46CDFE0();
    sub_1A46CDCE8(&qword_1EB140560, sub_1A46CDA04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140568);
  }

  return result;
}

void sub_1A46CE5C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A46CDDD8();
    v7 = v6;
    sub_1A46CDA04();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id PhotosConcreteSelectableItem.photokitObject.getter()
{
  sub_1A52430E4();
  v0 = v4;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v1 = PhotosModel.photokitObject.getter(v0);
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v1;
}

id PhotosModel.photokitObject.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = *(v4 + 16);
  v15(&v22 - v16, v2, a1, v14);
  sub_1A3C652C8(0, &qword_1EB129240);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    v17 = sub_1A46CEB50();
    swift_unknownObjectRelease();
  }

  else
  {
    (v15)(v12, v2, a1);
    sub_1A3C652C8(0, &qword_1EB12A2A8);
    if (swift_dynamicCast())
    {
      sub_1A3C34460(&v22, &v25);
      v18 = v26;
      v19 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, v26);
      v17 = (*(v19 + 16))(v18, v19);
      __swift_destroy_boxed_opaque_existential_0(&v25);
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      sub_1A46CEA98(&v22, &qword_1EB12A2A0, &qword_1EB12A2A8);
      (v15)(v9, v2, a1);
      type metadata accessor for PeopleUnifiedItem();
      if (swift_dynamicCast())
      {
        v17 = PeopleUnifiedItem.value.getter();
      }

      else
      {
        (v15)(v6, v2, a1);
        sub_1A3C652C8(0, &qword_1EB128C90);
        if (swift_dynamicCast())
        {
          sub_1A3C34460(&v22, &v25);
          __swift_project_boxed_opaque_existential_1(&v25, v26);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          sub_1A5246234();
        }

        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        sub_1A46CEA98(&v22, &qword_1EB128C80, &qword_1EB128C90);
        return 0;
      }
    }
  }

  return v17;
}

uint64_t sub_1A46CEA98(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1A46CEAF4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A46CEAF4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3C652C8(255, a3);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1A46CEB50()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5242604();
  type metadata accessor for PeopleUnifiedItem();
  if (swift_dynamicCast())
  {
    v2 = PeopleUnifiedItem.value.getter();
  }

  else
  {
    sub_1A5242604();
    sub_1A3C652C8(0, &qword_1EB12A2A8);
    if (swift_dynamicCast())
    {
      v3 = *(&v7 + 1);
      v4 = v8;
      __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
      v2 = (*(v4 + 16))(v3, v4);
      __swift_destroy_boxed_opaque_existential_0(&v6);
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      sub_1A46CEA98(&v6, &qword_1EB12A2A0, &qword_1EB12A2A8);
      return 0;
    }
  }

  return v2;
}

void PhotosModel.collectionKind.getter(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = PhotosModel.photokitObject.getter(a1);
  if (v3)
  {
    v4 = v3;
    PHObject.photosPickerCollectionType.getter(a2);
  }

  else
  {
    *a2 = 24;
  }
}

uint64_t PHObject.photosPickerCollectionType.getter@<X0>(char *a1@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      sub_1A5244D04();
      v12 = sub_1A3C52C70(0, &qword_1EB126AA0);
      v43 = v12;
      v42[0] = v11;
      v13 = v1;
      v14 = sub_1A5244E84();
      result = __swift_destroy_boxed_opaque_existential_0(v42);
      if (v14)
      {
LABEL_10:
        v9 = 1;
        goto LABEL_84;
      }

      sub_1A5244824();
      v43 = v12;
      v42[0] = v11;
      v15 = v13;
      v16 = sub_1A5244E84();
      result = __swift_destroy_boxed_opaque_existential_0(v42);
      if (v16)
      {
        goto LABEL_3;
      }

      result = [v11 px_isSharedLibrarySharingSuggestion];
      if (result)
      {
        v9 = 22;
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      goto LABEL_14;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v9 = 9;
      goto LABEL_84;
    }

    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        goto LABEL_83;
      }

      v30 = result;
      result = [result px_isSharedAlbumsFolder];
      if (result)
      {
        goto LABEL_26;
      }

      result = [v30 px_isSharedAlbumsAndActivityFolder];
      if (result)
      {
        goto LABEL_26;
      }

      result = [v30 px_isMediaTypesFolder];
      if (result)
      {
        goto LABEL_30;
      }

      result = [v30 px_isUtilitiesFolder];
      if ((result & 1) == 0)
      {
        result = [v30 px_isProjectsFolder];
        if ((result & 1) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_43;
      }

      goto LABEL_45;
    }

    v22 = v21;
    v23 = [v21 transientIdentifier];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1A524C674();
      v27 = v26;

      v28 = sub_1A524C674();
      if (v27)
      {
        if (v25 == v28 && v27 == v29)
        {

LABEL_34:

          v9 = 2;
          goto LABEL_84;
        }

        v31 = sub_1A524EAB4();

        if (v31)
        {
          goto LABEL_34;
        }

        if (v25 == sub_1A524C674() && v27 == v32)
        {

LABEL_47:

          v9 = 6;
          goto LABEL_84;
        }

        v33 = sub_1A524EAB4();

        if (v33)
        {
          goto LABEL_47;
        }

        if (v25 == sub_1A524C674() && v27 == v34)
        {

LABEL_56:

          v9 = 4;
          goto LABEL_84;
        }

        v35 = sub_1A524EAB4();

        if (v35)
        {
          goto LABEL_56;
        }

        if (v25 == sub_1A524C674() && v27 == v36)
        {

LABEL_65:

          v9 = 8;
          goto LABEL_84;
        }

        v37 = sub_1A524EAB4();

        if (v37)
        {
          goto LABEL_65;
        }

        if (v25 == sub_1A524C674() && v27 == v38)
        {

LABEL_74:

          v9 = 14;
          goto LABEL_84;
        }

        v39 = sub_1A524EAB4();

        if (v39)
        {
          goto LABEL_74;
        }

        if (v25 == sub_1A524C674() && v27 == v40)
        {

          v9 = 21;
          goto LABEL_84;
        }

        v41 = sub_1A524EAB4();

        if (v41)
        {
          v9 = 21;
          goto LABEL_84;
        }

LABEL_29:
        result = [v22 px_isMediaTypeSmartAlbum];
        if (result)
        {
LABEL_30:
          v9 = 11;
          goto LABEL_84;
        }

        result = [v22 px_isFavoritesSmartAlbum];
        if (result)
        {
          v9 = 16;
          goto LABEL_84;
        }

        result = [v22 px_isVideosSmartAlbum];
        if (result)
        {
          v9 = 15;
          goto LABEL_84;
        }

        result = [v22 px_isRecentlyDeletedSmartAlbum];
        if ((result & 1) == 0)
        {
          result = [v22 px_isRecentlySavedCollection];
          if (result)
          {
            v9 = 17;
            goto LABEL_84;
          }

          result = [v22 px_isRecentlyViewedCollection];
          if (result)
          {
            v9 = 18;
            goto LABEL_84;
          }

          result = [v22 px_isRecentlyEditedCollection];
          if (result)
          {
            v9 = 19;
            goto LABEL_84;
          }

          result = [v22 px_isRecentlySharedCollection];
          if (result)
          {
            v9 = 20;
            goto LABEL_84;
          }

          result = [v22 px_isLemonadeUtilitiesAlbum];
          if ((result & 1) == 0)
          {
            result = [v22 px_isUserCreated];
            if (result & 1) != 0 || (result = [v22 px_isMacSyncedAlbum], (result))
            {
              v9 = 0;
              goto LABEL_84;
            }

            result = [v22 px_isSharedAlbum];
            if ((result & 1) == 0)
            {
              result = [v22 px_isSharedLibrarySharingSuggestionsSmartAlbum];
              if ((result & 1) == 0)
              {
                result = [v22 px_isTripsVirtualCollection];
                if (result)
                {
                  goto LABEL_10;
                }

                result = [v22 px_isMemoriesVirtualCollection];
                if (result)
                {
                  goto LABEL_12;
                }

                result = [v22 px_isPeopleVirtualCollection];
                if ((result & 1) == 0)
                {
LABEL_83:
                  v9 = 23;
                  goto LABEL_84;
                }

LABEL_14:
                v9 = 7;
                goto LABEL_84;
              }

LABEL_43:
              v9 = 24;
              goto LABEL_84;
            }

LABEL_26:
            v9 = 13;
            goto LABEL_84;
          }
        }

LABEL_45:
        v9 = 12;
        goto LABEL_84;
      }
    }

    else
    {
      sub_1A524C674();
    }

    sub_1A524C674();

    sub_1A524C674();

    sub_1A524C674();

    sub_1A524C674();

    sub_1A524C674();

    goto LABEL_29;
  }

  v4 = v3;
  sub_1A52445C4();
  v5 = sub_1A3C52C70(0, &qword_1EB1265E0);
  v43 = v5;
  v42[0] = v4;
  v6 = v1;
  v7 = sub_1A5244E84();
  result = __swift_destroy_boxed_opaque_existential_0(v42);
  if ((v7 & 1) == 0)
  {
    sub_1A52445A4();
    v43 = v5;
    v42[0] = v4;
    v17 = v6;
    v18 = sub_1A5244E84();
    result = __swift_destroy_boxed_opaque_existential_0(v42);
    if (v18)
    {
      goto LABEL_10;
    }

    sub_1A5244B94();
    v43 = v5;
    v42[0] = v4;
    v19 = v17;
    v20 = sub_1A5244E84();
    result = __swift_destroy_boxed_opaque_existential_0(v42);
    if (v20)
    {
LABEL_12:
      v9 = 3;
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_3:
  v9 = 5;
LABEL_84:
  *a1 = v9;
  return result;
}

void LemonadeMemoriesEntryCardTimeSlotProvider.timeSlot.getter()
{
  v1 = v0;
  sub_1A3C56088(0, &qword_1EB124A78, MEMORY[0x1E69E6530], off_1E7721240);
  v3 = *(v2 - 8);
  v11[2] = v2;
  v11[3] = v3;
  MEMORY[0x1EEE9AC00](v2);
  v11[1] = v11 - v4;
  v5 = sub_1A3DE714C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v11[0]);
  v9 = sub_1A52413D4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1A5241394();
  v10 = OBJC_IVAR____TtC12PhotosUICore41LemonadeMemoriesEntryCardTimeSlotProvider__validationDate;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v10, v5);
  sub_1A5246594();
}

void sub_1A46CFA04()
{
  v0 = sub_1A5241144();
  v6[7] = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v6[5] = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6[6] = v6 - v3;
  sub_1A3C56088(0, &qword_1EB124A78, MEMORY[0x1E69E6530], off_1E7721240);
  v6[4] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v5);
  v6[13] = sub_1A4429704(3uLL);
  swift_beginAccess();
  sub_1A52465A4();
}

uint64_t LemonadeMemoriesEntryCardTimeSlotProvider.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore41LemonadeMemoriesEntryCardTimeSlotProvider__currentIndex;
  sub_1A3C56088(0, &qword_1EB124A78, MEMORY[0x1E69E6530], off_1E7721240);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore41LemonadeMemoriesEntryCardTimeSlotProvider__validationDate;
  v4 = sub_1A3DE714C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1A46D002C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A44D5E5C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A46D00CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D5E18;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_badgesModifier);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A3C66EE8(v3);
  return sub_1A3C784D4(v8, v9);
}

uint64_t sub_1A46D0194()
{
  v1 = (v0 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_badgesModifier);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1);
  return v2;
}

uint64_t sub_1A46D01F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_badgesModifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C784D4(v6, v7);
}

uint64_t sub_1A46D0250@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46D02D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46D0358@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

void *sub_1A46D03C8()
{
  v1 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_promotedRankedCollection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A46D0414(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_promotedRankedCollection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A46D046C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46D04F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46D057C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46D0604@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

void sub_1A46D0674(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *sub_1A46D06D0()
{
  v1 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_searchMatchInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A46D071C(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_searchMatchInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A46D07BC()
{
  v1 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_isDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46D0854(char a1)
{
  v3 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_isDisabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46D08A4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A46D090C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_isDisabled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1A46D0960@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A46D09C8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_showsShelfTitle;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1A46D0A1C()
{
  v1 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_showsShelfTitle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46D0A60(char a1)
{
  v3 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_showsShelfTitle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1A46D0AB0()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  if (result)
  {
    v2 = result;
    v3 = [result localizedQueryString];

    if (v3)
    {
      v4 = sub_1A524C674();
      v6 = v5;

      sub_1A3C38BD4();
      sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1A52F8E10;
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = sub_1A3D710E8();
      *(v7 + 32) = v4;
      *(v7 + 40) = v6;
      v8 = sub_1A524C6C4();

      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id PhotosSearchCollectionSectionProvider.init(photoLibrary:)(void *a1)
{
  v3 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_observable;
  *&v1[v3] = [objc_allocWithZone(off_1E77217D8) init];
  v4 = &v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_badgesModifier];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_promotedRankedCollection] = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_topCollections] = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_allCollections;
  *&v1[v6] = sub_1A46D47F8(v5, sub_1A46D51F8, sub_1A46D4FA0, sub_1A46D51F8);
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_allPeople] = v5;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_searchMatchInfo] = 0;
  v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_isDisabled] = 0;
  v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_showsShelfTitle] = 1;
  v7 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_collectionResultsScores;
  *&v1[v7] = sub_1A3DAF0C0(v5);
  v8 = &v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibraryObservation];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_albumsFetchResult] = 0;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_collectionShareFetchResult] = 0;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_tripsFetchResult] = 0;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_memoriesFetchResult] = 0;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary] = a1;
  v9 = a1;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_collectionResultUUIDs] = sub_1A46D47F8(v5, sub_1A3DAF4EC, sub_1A40FCA64, sub_1A3DAF4EC);
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_rankedCollectionResultUUIDs] = sub_1A46D47F8(v5, sub_1A3DAF4EC, sub_1A40FCA64, sub_1A3DAF4EC);
  v16.receiver = v1;
  v16.super_class = type metadata accessor for PhotosSearchCollectionSectionProvider();
  v10 = objc_msgSendSuper2(&v16, sel_init);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v10;

  PHPhotoLibrary.registerObserver(_:block:)(0, 0, sub_1A46D49C8, v11, v15);

  v13 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibraryObservation;
  swift_beginAccess();
  sub_1A3C6F55C(v15, v12 + v13);
  swift_endAccess();

  return v12;
}

void sub_1A46D0F30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = v6;
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x188))();
  v15 = v14;
  if (a1)
  {
    if (!v14)
    {
      goto LABEL_11;
    }

    sub_1A3C52C70(0, &qword_1EB1207F0);
    v16 = a5;
    v17 = a6;
    v18 = a1;
    v19 = sub_1A524DBF4();

    a6 = v17;
    a5 = v16;
    v13 = MEMORY[0x1E69E7D40];

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v14)
  {

    goto LABEL_11;
  }

  v20 = (*((*v13 & *v7) + 0xF8))();
  sub_1A3DA633C(v20, a2);
  v22 = v21;

  if (v22)
  {
    v24 = (*((*v13 & *v7) + 0x110))(v23);
    sub_1A3DA633C(v24, a3);
    v26 = v25;

    if ((v26 & 1) != 0 && (((*((*v13 & *v7) + 0x1A0))(v27) ^ a5) & 1) == 0 && (((*((*v13 & *v7) + 0x1B8))() ^ a6) & 1) == 0)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

LABEL_11:
  v28 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_searchMatchInfo;
  swift_beginAccess();
  v29 = *(v7 + v28);
  *(v7 + v28) = a1;
  v30 = a1;

  v31 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_collectionResultUUIDs;
  swift_beginAccess();
  *(v7 + v31) = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46D1298()
{
  if (MEMORY[0x1A590D320]() || (v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x288))(), v1 < 1))
  {

    return sub_1A3C38BD4();
  }

  else
  {
    v2 = v1;
    v3 = sub_1A524C634();
    v4 = PXLocalizedString(v3);

    sub_1A524C674();
    sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    v6 = MEMORY[0x1E69E6530];
    *(v5 + 16) = xmmword_1A52F8E10;
    v7 = MEMORY[0x1E69E65A8];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v2;
    v8 = sub_1A524C644();

    return v8;
  }
}

uint64_t sub_1A46D1440()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
  v3 = sub_1A46D15C8(v2);

  v5 = (*((*v1 & *v0) + 0x170))(v4);
  if (v5 >> 62)
  {
    goto LABEL_9;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {

    v7 = *(v3 + 16);
    if (!v7)
    {
      break;
    }

    v8 = (v3 + 32);
    while (1)
    {
      v9 = *v8++;
      v10 = __OFADD__(i, v9);
      i += v9;
      if (v10)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:
    ;
  }

LABEL_7:

  return i;
}

uint64_t sub_1A46D1570@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 >> 62)
  {
    result = sub_1A524E2B4();
    *a2 = result;
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A46D15C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3FD1D1C(0, v1, 0);
  result = sub_1A524E234();
  if (result < 0 || result >= 1 << *(a1 + 32))
  {
    __break(1u);
  }

  else if ((*(a1 + 64 + 8 * (result >> 6)) & (1 << result)) != 0)
  {
    swift_getKeyPath();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1A46D1834(uint64_t a1)
{
  v3 = sub_1A5243994();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69C2700], v3, v5);
  sub_1A46D50B4(&qword_1EB12D1B0, MEMORY[0x1E69C2718]);
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v14[2] == v14[0] && v14[3] == v14[1])
  {
    (*(v4 + 8))(v7, v3);

LABEL_5:
    v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(v8);
    if (v10 >> 62)
    {
      v11 = sub_1A524E2B4();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v11;
  }

  v9 = sub_1A524EAB4();
  (*(v4 + 8))(v7, v3);

  if (v9)
  {
    goto LABEL_5;
  }

  if (*((*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(v8) + 16))
  {
    sub_1A3DAC880(a1);
    if (v13)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return 0;
}

uint64_t sub_1A46D1B28(uint64_t a1)
{
  if (*((*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))() + 16))
  {
    sub_1A3DAC880(a1);
    if (v3)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  sub_1A524C674();

  return 0;
}

id sub_1A46D1D00()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (v1 >> 62)
  {
    v8 = v1;
    v9 = sub_1A524E2B4();
    v1 = v8;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = v1;
  v3 = *MEMORY[0x1E6978DA0];
  sub_1A3D64B88(v2, &qword_1EB126AC0);
  v4 = *(v0 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary);
  v5 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v6 = sub_1A524CA14();

  v7 = [v5 initWithObjects:v6 photoLibrary:v4 fetchType:v3 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  return v7;
}

id sub_1A46D1E5C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1A3C69C0C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F9790;
  *(inited + 32) = v2;
  v4 = *MEMORY[0x1E6978DA0];
  v5 = v2;
  v6 = v4;
  sub_1A3D64B88(inited, &qword_1EB126AC0);
  v7 = *(v0 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary);
  v8 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v9 = sub_1A524CA14();

  v10 = [v8 initWithObjects:v9 photoLibrary:v7 fetchType:v6 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  swift_setDeallocating();
  swift_arrayDestroy();
  return v10;
}

id sub_1A46D2004()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  if (v1 >> 62)
  {
    v8 = v1;
    v9 = sub_1A524E2B4();
    v1 = v8;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = v1;
  v3 = *MEMORY[0x1E6978DC0];
  sub_1A3D64B88(v2, &qword_1EB1265C0);
  v4 = *(v0 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary);
  v5 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v6 = sub_1A524CA14();

  v7 = [v5 initWithObjects:v6 photoLibrary:v4 fetchType:v3 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  return v7;
}

uint64_t sub_1A46D2160()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  v2 = v1;
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = result;
    }

    if (result >= v4)
    {
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  v11 = sub_1A524E2B4();
  if ((sub_1A524E2B4() & 0x8000000000000000) == 0)
  {
    if (v11 >= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    if (v11 >= 0)
    {
      v4 = v12;
    }

    else
    {
      v4 = 2;
    }

    result = sub_1A524E2B4();
    if (result >= v4)
    {
LABEL_6:
      if ((v2 & 0xC000000000000001) != 0 && v4 != 0)
      {
        sub_1A3C52C70(0, &qword_1EB1265C0);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_24;
  }

  __break(1u);
  if (sub_1A524E2B4())
  {
    v6 = *MEMORY[0x1E6978DC0];
    sub_1A3D64B88(v2, &qword_1EB1265C0);
    v7 = *(v0 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary);
    v8 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    v9 = sub_1A524CA14();

    v10 = [v8 initWithObjects:v9 photoLibrary:v7 fetchType:v6 fetchPropertySets:0 identifier:0 registerIfNeeded:1];
  }

  else
  {

    return 0;
  }

  return v10;
}

void sub_1A46D24A0()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_badgesModifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = sub_1A46D50FC;
  v3[1] = v2;

  sub_1A3C784D4(v4, v5);

  type metadata accessor for PhotosSearchUtilities();
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF8))();
  (*((*v6 & *v1) + 0x110))(v7);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46D281C()
{
  v1 = v0;
  v2 = sub_1A5243994();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v45[7] = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = v45 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v45[6] = v45 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v46 = v45 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v45[5] = v45 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v45 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v45 - v20;
  v50 = [objc_opt_self() px:*(v0 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary) searchAssetFetchOptionsForPhotoLibrary:?];
  v55 = sub_1A46D47F8(MEMORY[0x1E69E7CC0], sub_1A46D51F8, sub_1A46D4FA0, sub_1A46D51F8);
  v22 = *(v3 + 104);
  v23 = *MEMORY[0x1E69C2710];
  v48 = v3 + 104;
  v49 = v22;
  v24 = v22(v21, v23, v2);
  v25 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v53 = (*MEMORY[0x1E69E7D40] & *v0) + 248;
  v54 = v25;
  v26 = *(v25(v24) + 16);
  v52 = v3;
  if (v26)
  {
    sub_1A3DAC880(v21);
    if (v27)
    {
      v45[4] = v18;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v28 = *(v3 + 8);
  v28(v21, v2);
  v29 = v49;
  v30 = v49(v15, *MEMORY[0x1E69C26E8], v2);
  if (*(v54(v30) + 16))
  {
    sub_1A3DAC880(v15);
    if (v31)
    {
      v51 = v28;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v28(v15, v2);
  v32 = *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_albumsFetchResult);
  *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_albumsFetchResult) = 0;

  v33 = *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_collectionShareFetchResult);
  *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_collectionShareFetchResult) = 0;

  v34 = v47;
  v35 = v46;
  v36 = v29(v46, *MEMORY[0x1E69C26E0], v2);
  if (*(v54(v36) + 16))
  {
    sub_1A3DAC880(v35);
    if (v37)
    {
      v51 = v28;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v28(v35, v2);
  v38 = *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_tripsFetchResult);
  *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_tripsFetchResult) = 0;

  v39 = v29(v34, *MEMORY[0x1E69C26F8], v2);
  if (*(v54(v39) + 16))
  {
    sub_1A3DAC880(v34);
    if (v40)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v28(v34, v2);
  v41 = *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_memoriesFetchResult);
  *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_memoriesFetchResult) = 0;

  v42 = v55;
  v43 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_allCollections;
  swift_beginAccess();
  *(v1 + v43) = v42;
}

uint64_t sub_1A46D380C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1A46D43C0(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1A5243994();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1A3DAC880(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1A46D458C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1A5243994();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1A46D40A0(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1A5243994();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

id PhotosSearchCollectionSectionProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosSearchCollectionSectionProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosSearchCollectionSectionProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A46D3BC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1A3C52C70(0, &qword_1EB1265C0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A3C69C0C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1A46D3CD4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1A5243994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1A46D4FA0();
  v39 = a2;
  result = sub_1A524E774();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if ((v39 & 1) == 0)
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*v40)(v43, v25, v5);
      v41 = *(*(v9 + 56) + 8 * v23);
      sub_1A46D50B4(&qword_1EB124D30, MEMORY[0x1E69C2718]);
      result = sub_1A524C4A4();
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
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_1A46D40A0(int64_t a1, uint64_t a2)
{
  v38 = sub_1A5243994();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1A524E244();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1A46D50B4(&qword_1EB124D30, MEMORY[0x1E69C2718]);
      v22 = sub_1A524C4A4();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_1A46D43C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A5243994();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1A3DAC880(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1A46D458C();
      goto LABEL_7;
    }

    sub_1A46D3CD4(v17, a3 & 1);
    v22 = sub_1A3DAC880(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1A40FC740(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void *sub_1A46D458C()
{
  v1 = v0;
  v31 = sub_1A5243994();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46D4FA0();
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      v15 = __clz(__rbit64(v13));
      v34 = (v13 - 1) & v13;
      goto LABEL_17;
    }

    v16 = 0;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_20;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_1A46D47F8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void, __n128), uint64_t (*a4)(void))
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    a3(0, v9);
    v13 = sub_1A524E794();
    v14 = *(v7 + 48);
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v16 = *(v8 + 72);

    while (1)
    {
      sub_1A46D5268(v15, v11, a4);
      result = sub_1A3DAC880(v11);
      if (v18)
      {
        break;
      }

      v19 = result;
      *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = v13[6];
      v21 = sub_1A5243994();
      result = (*(*(v21 - 8) + 32))(v20 + *(*(v21 - 8) + 72) * v19, v11, v21);
      *(v13[7] + 8 * v19) = *&v11[v14];
      v22 = v13[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_10;
      }

      v13[2] = v24;
      v15 += v16;
      if (!--v12)
      {

        return v13;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A46D49C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_albumsFetchResult);
    if (v2)
    {
      sub_1A3C52C70(0, &qword_1EB126AC0);
      v3 = v2;
      v4 = sub_1A524DC44();
      if (v4)
      {
        goto LABEL_10;
      }
    }

    v5 = *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_tripsFetchResult];
    if (v5)
    {
      sub_1A3C52C70(0, &qword_1EB126AC0);
      v6 = v5;
      v4 = sub_1A524DC44();
      if (v4)
      {
        goto LABEL_10;
      }
    }

    v7 = *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_memoriesFetchResult];
    if (v7)
    {
      sub_1A3C52C70(0, &qword_1EB1265E0);
      v8 = v7;
      v4 = sub_1A524DC44();
      if (v4)
      {
LABEL_10:

        sub_1A46D24A0();
      }
    }
  }
}

void sub_1A46D4FA0()
{
  if (!qword_1EB140618)
  {
    sub_1A5243994();
    sub_1A46D504C();
    sub_1A46D50B4(&qword_1EB124D30, MEMORY[0x1E69C2718]);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140618);
    }
  }
}

void sub_1A46D504C()
{
  if (!qword_1EB140620)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140620);
    }
  }
}

uint64_t sub_1A46D50B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A46D50FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x188))();
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for PhotosSearchUtilities();
  v8 = (*(v7 + 272))(a1, a2, v6);

  return v8;
}

void sub_1A46D51F8()
{
  if (!qword_1EB140650)
  {
    sub_1A5243994();
    sub_1A46D504C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB140650);
    }
  }
}

uint64_t sub_1A46D5268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46D52D4(uint64_t result)
{
  if (v1[16] == (result & 1))
  {
    v1[16] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 320))(v3);
  }

  return result;
}

void sub_1A46D53BC(void *a1)
{
  v2 = v1;
  v4 = v1[6];
  sub_1A3C52C70(0, &qword_1EB12D040);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[6];
    v2[6] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 320))(v9);
  }
}

uint64_t sub_1A46D550C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524BEE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BF64();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 == 0xD000000000000025 && 0x80000001A53E5F10 == a2 || (result = sub_1A524EAB4(), (result & 1) != 0))
  {
    sub_1A3C52C70(0, &qword_1EB12B180);
    v16 = sub_1A524D474();
    aBlock[4] = sub_1A46D5EFC;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_29_6;
    v17 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C51A84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C38394();
    sub_1A3C51A84(&qword_1EB12B1B0, sub_1A3C38394);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v14, v9, v17);
    _Block_release(v17);

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_1A46D582C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A46D58A4(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  (*(*v1 + 312))();

  if (v1[16] != v2)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 320))(v5);
  }

  return result;
}

uint64_t sub_1A46D59C8@<X0>(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 312))();

  *a2 = v3[16];
  return result;
}

id sub_1A46D5A68()
{
  swift_getKeyPath();
  (*(*v0 + 312))();

  v1 = v0[6];

  return v1;
}

id sub_1A46D5ADC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 312))();

  v4 = v3[6];
  *a2 = v4;

  return v4;
}

id *SharedAlbumsAvailabilityObserver.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsAvailabilityObserver___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t _s12PhotosUICore32SharedAlbumsAvailabilityObserverC06sharedD9Available15forPhotoLibrarySbSo07PHPhotoK0C_tFZ_0(void *a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [a1 photoLibraryURL];
  sub_1A5240DE4();

  v8 = sub_1A5240D44();
  (*(v3 + 8))(v5, v2);
  LODWORD(v2) = [v6 sharedStreamsEnabledForPhotoLibraryURL_];

  sub_1A3C52C70(0, &qword_1EB126910);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  LODWORD(v5) = [v9 shouldSimulateSharedAlbumsUnavailable];

  return (v5 ^ 1) & v2;
}

void sub_1A46D5EC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

void sub_1A46D5EFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    (*(*v1 + 39))();

    v2 = v1[6];

    [v2 inputEvent];
  }
}

void sub_1A46D6010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = &v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarksManagerObserver];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarkCores] = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListObjects] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListManagers] = v7;
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListManagerObservers] = v7;
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_privacyControllerObservers] = v7;
  v8 = *(a1 + 56);
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_photoLibrary] = v8;
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarksManager] = a1;
  v9 = &v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_topLevelIdentifier];
  *v9 = a2;
  *(v9 + 1) = a3;
  type metadata accessor for LemonadePhotoLibraryContext();
  v10 = v8;
  swift_retain_n();
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_photoLibraryContext] = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v10, 0, a1);
  sub_1A3C52C70(0, &unk_1EB120900);
  v11 = sub_1A524CA14();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for LemonadeBookmarksDataSectionManager();
  v12 = objc_msgSendSuper2(&v14, sel_initWithChildDataSectionManagers_, v11);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for LemonadeBookmarksManager(0);
  sub_1A3C75A8C(&qword_1EB129F18, type metadata accessor for LemonadeBookmarksManager);
  v13 = v12;
  sub_1A5245C54();
}

uint64_t sub_1A46D625C()
{
  sub_1A524CC54();
  v0 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A3C67884(sub_1A46DBD88, v0);
}

void sub_1A46D631C()
{
  v1 = v0;
  sub_1A46DB850(0, &unk_1EB12AF40, MEMORY[0x1E6969B50], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v126 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v113 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v113 - v8;
  sub_1A46DB850(0, &qword_1EB1406E8, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6EE8]);
  v130 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v129 = &v113 - v13;
  sub_1A46DB8B4();
  v114 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v127 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1A52414C4();
  v119 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v131 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v128 = &v113 - v18;
  sub_1A46DB850(0, &qword_1EB1406F8, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6EF0]);
  v123 = *(v19 - 8);
  v124 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v113 - v20;
  v132 = type metadata accessor for LemonadeBookmark(0);
  v21 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LemonadeBookmarkCore();
  v133 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v116 = &v113 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v115 = &v113 - v29;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v113 - v32;
  v34 = (*(**&v0[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarksManager] + 328))(v31);
  v35 = *(v34 + 16);
  v118 = v6;
  v117 = v9;
  if (v35)
  {
    v135[0] = MEMORY[0x1E69E7CC0];
    sub_1A46DAA8C(0, v35, 0);
    v36 = v135[0];
    v37 = *(v21 + 80);
    v121 = v34;
    v38 = v34 + ((v37 + 32) & ~v37);
    v39 = *(v21 + 72);
    do
    {
      sub_1A3C58E50(v38, v23, type metadata accessor for LemonadeBookmark);
      v40 = v36;
      v41 = v23[16];
      sub_1A3C58E50(&v23[*(v132 + 24)], &v33[*(v24 + 20)], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      sub_1A3C9ECF8(v23, type metadata accessor for LemonadeBookmark);
      *v33 = v41;
      v36 = v40;
      v135[0] = v40;
      v43 = *(v40 + 16);
      v42 = *(v40 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1A46DAA8C(v42 > 1, v43 + 1, 1);
        v36 = v135[0];
      }

      *(v36 + 16) = v43 + 1;
      sub_1A46DB354(v33, v36 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v43);
      v38 += v39;
      --v35;
    }

    while (v35);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v44 = v125;
  v45 = v126;
  v46 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarkCores;
  v47 = *&v1[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarkCores];
  v48 = *(v47 + 16);
  v49 = v120;
  v121 = v36;
  if (v48)
  {
    v113 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarkCores;
    v135[0] = v36;
    v136 = v47;
    v50 = MEMORY[0x1E69E62F8];
    sub_1A46DB850(0, &qword_1EB140708, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E62F8]);
    sub_1A46DB97C(&qword_1EB140710, &qword_1EB140708, v50);
    sub_1A46DB310(&unk_1EB16BDF0);
    v51 = v122;
    sub_1A524C504();
    sub_1A52414B4();
    sub_1A52414B4();
    v52 = v127;
    (*(v123 + 16))(v127, v51, v124);
    v53 = *(v114 + 36);
    sub_1A46DB97C(&qword_1EB140700, &qword_1EB1406F8, MEMORY[0x1E69E6EF0]);
    sub_1A524CFD4();
    sub_1A524D034();
    v54 = *(v52 + v53);
    v55 = MEMORY[0x1E69E7CC0];
    if (v54 != v135[0])
    {
      do
      {
        v132 = v55;
        v56 = v127;
        while (1)
        {
          v57 = sub_1A524D0C4();
          v58 = v129;
          sub_1A46DB9D8(v59, v129);
          v57(v135, 0);
          sub_1A524D044();
          sub_1A46DBA6C(v58, v49);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          sub_1A46DBB00();
          v61 = v49;
          v63 = *(v62 + 48);
          if (EnumCaseMultiPayload == 1)
          {
            break;
          }

          sub_1A5241484();
          sub_1A3C9ECF8(v61 + v63, type metadata accessor for LemonadeBookmarkCore);
          sub_1A524D034();
          v49 = v61;
          if (*(v56 + v53) == v135[0])
          {
            v44 = v125;
            v45 = v126;
            v55 = v132;
            goto LABEL_21;
          }
        }

        v64 = v115;
        sub_1A46DB354(v61 + v63, v115);
        sub_1A5241484();
        sub_1A3C58E50(v64, v116, type metadata accessor for LemonadeBookmarkCore);
        v55 = v132;
        v49 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_1A46D92F8(0, v55[2] + 1, 1, v55);
        }

        v44 = v125;
        v45 = v126;
        v66 = v55[2];
        v65 = v55[3];
        if (v66 >= v65 >> 1)
        {
          v55 = sub_1A46D92F8(v65 > 1, v66 + 1, 1, v55);
        }

        sub_1A3C9ECF8(v115, type metadata accessor for LemonadeBookmarkCore);
        v55[2] = v66 + 1;
        sub_1A46DB354(v116, v55 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v66);
        v67 = v127;
        sub_1A524D034();
      }

      while (*(v67 + v53) != v135[0]);
    }

LABEL_21:
    sub_1A3C9ECF8(v127, sub_1A46DB8B4);
    v69 = v55[2];
    if (v69)
    {
      v70 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListObjects;
      v71 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListManagers;
      v72 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListManagerObservers;
      v73 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_privacyControllerObservers;
      v74 = v134;
      v75 = *(v133 + 80);
      v132 = v55;
      v76 = v55 + ((v75 + 32) & ~v75);
      v77 = *(v133 + 72);
      do
      {
        sub_1A3C58E50(v76, v74, type metadata accessor for LemonadeBookmarkCore);
        swift_beginAccess();
        v78 = sub_1A46D94F4(v74);
        if (v79)
        {
          v80 = v78;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v82 = *&v1[v70];
          v136 = v82;
          *&v1[v70] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1A46DA874();
            v82 = v136;
          }

          sub_1A3C9ECF8(*(v82 + 48) + v80 * v77, type metadata accessor for LemonadeBookmarkCore);

          sub_1A46DA0BC(v80, v82);
          *&v1[v70] = v82;
        }

        swift_endAccess();
        swift_beginAccess();
        v83 = sub_1A46D94F4(v134);
        if (v84)
        {
          v85 = v83;
          v86 = swift_isUniquelyReferenced_nonNull_native();
          v87 = *&v1[v71];
          v136 = v87;
          *&v1[v71] = 0x8000000000000000;
          if (!v86)
          {
            sub_1A46DA638(&qword_1EB1406D0, &qword_1EB1406D8);
            v87 = v136;
          }

          sub_1A3C9ECF8(*(v87 + 48) + v85 * v77, type metadata accessor for LemonadeBookmarkCore);
          swift_unknownObjectRelease();
          sub_1A46D9D80(v85, v87);
          *&v1[v71] = v87;
        }

        swift_endAccess();
        swift_beginAccess();
        v88 = sub_1A46D94F4(v134);
        if (v89)
        {
          v90 = v88;
          v91 = swift_isUniquelyReferenced_nonNull_native();
          v92 = *&v1[v72];
          v136 = v92;
          *&v1[v72] = 0x8000000000000000;
          if (!v91)
          {
            sub_1A46DA638(&qword_1EB1406C8, &qword_1EB124A70);
            v92 = v136;
          }

          sub_1A3C9ECF8(*(v92 + 48) + v90 * v77, type metadata accessor for LemonadeBookmarkCore);
          swift_unknownObjectRelease();
          sub_1A46D9D80(v90, v92);
          *&v1[v72] = v92;
        }

        swift_endAccess();
        swift_beginAccess();
        v93 = sub_1A46D94F4(v134);
        if (v94)
        {
          v95 = v93;
          v96 = swift_isUniquelyReferenced_nonNull_native();
          v97 = *&v1[v73];
          v136 = v97;
          *&v1[v73] = 0x8000000000000000;
          if (!v96)
          {
            sub_1A46DA638(&qword_1EB1406C8, &qword_1EB124A70);
            v97 = v136;
          }

          sub_1A3C9ECF8(*(v97 + 48) + v95 * v77, type metadata accessor for LemonadeBookmarkCore);
          swift_unknownObjectRelease();
          sub_1A46D9D80(v95, v97);
          *&v1[v73] = v97;
        }

        swift_endAccess();
        v74 = v134;
        sub_1A3C9ECF8(v134, type metadata accessor for LemonadeBookmarkCore);
        v76 += v77;
        --v69;
      }

      while (v69);

      v44 = v125;
      v45 = v126;
    }

    else
    {
    }

    v98 = v119;
    v99 = v117;
    (*(v119 + 16))(v117, v131, v44);
    v100 = *(v98 + 56);
    v100(v99, 0, 1, v44);
    v101 = v118;
    v100(v118, 1, 1, v44);
    v100(v45, 1, 1, v44);
    v102 = sub_1A5241414();
    v103 = *(v98 + 48);
    if (v103(v99, 1, v44) == 1)
    {
      v104 = 0;
    }

    else
    {
      v105 = sub_1A5241414();
      v106 = v99;
      v104 = v105;
      (*(v98 + 8))(v106, v44);
    }

    if (v103(v101, 1, v44) == 1)
    {
      v107 = 0;
    }

    else
    {
      v108 = sub_1A5241414();
      v109 = v101;
      v107 = v108;
      (*(v98 + 8))(v109, v44);
    }

    if (v103(v45, 1, v44) == 1)
    {
      v110 = 0;
    }

    else
    {
      v110 = sub_1A5241414();
      (*(v98 + 8))(v45, v44);
    }

    v68 = [objc_allocWithZone(off_1E7721450) initWithIncrementalChangeDetailsRemovedIndexes:v102 insertedIndexes:v104 movesToIndexes:v107 movesFromIndexes:0 changedIndexes:v110];

    v111 = *(v98 + 8);
    v111(v131, v44);
    v111(v128, v44);
    (*(v123 + 8))(v122, v124);
    v46 = v113;
  }

  else
  {
    v68 = [objc_opt_self() changeDetailsWithNoIncrementalChanges];
  }

  *&v1[v46] = v121;
  v112 = v68;

  [v1 updateDataSectionWithChangeDetails_];
}

void sub_1A46D730C()
{
  v0 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for LemonadeBookmarkCore();
  v4[0] = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4[1] = v2;
  v4[2] = v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A52414C4();
  MEMORY[0x1EEE9AC00](v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46D79F0(_BYTE *a1, uint64_t a2)
{
  v18 = type metadata accessor for LemonadeBookmarkCore();
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v17 = a1;
    v9 = *a1;
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1A3C58E50(v10, v6, type metadata accessor for LemonadeBookmarkCore);
      v24 = *v6;
      v23 = v9;
      sub_1A3C3BE04();
      sub_1A524C9C4();
      sub_1A524C9C4();
      if (v21 == v19 && v22 == v20)
      {
      }

      else
      {
        v13 = sub_1A524EAB4();

        if ((v13 & 1) == 0)
        {
          sub_1A3C9ECF8(v6, type metadata accessor for LemonadeBookmarkCore);
          goto LABEL_4;
        }
      }

      v14 = sub_1A3CA1BC0(&v6[*(v18 + 20)], &v17[*(v18 + 20)]);
      sub_1A3C9ECF8(v6, type metadata accessor for LemonadeBookmarkCore);
      if (v14)
      {
        return v8;
      }

LABEL_4:
      ++v8;
      v10 += v11;
    }

    while (v7 != v8);
  }

  return 0;
}

uint64_t sub_1A46D7C0C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeBookmarkCore();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  sub_1A3C58E50(a1 + v13, v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3C9ECF8(v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  result = 0;
  if (EnumCaseMultiPayload != 6)
  {
    v16 = *(a1 + 16);
    v17 = *(v4 + 20);
    sub_1A3C58E50(a1 + v13, &v9[v17], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    *v9 = v16;
    v18 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListManagers;
    swift_beginAccess();
    if (*(*(v2 + v18) + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3CA034C(*(v2 + OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_photoLibrary), v30);
    v19 = v31;
    v20 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v21 = (*(v20 + 24))(&v9[v17], *(v2 + OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_photoLibraryContext), v19, v20);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_beginAccess();
    swift_unknownObjectRetain_n();
    LOBYTE(v19) = swift_isUniquelyReferenced_nonNull_native();
    v29[0] = *(v2 + v18);
    *(v2 + v18) = 0x8000000000000000;
    v23 = swift_checkMetadataState();
    sub_1A46DB3B8(v21, v9, v19, v29, v23, AssociatedConformanceWitness);
    *(v2 + v18) = v29[0];
    swift_endAccess();
    swift_getObjectType();
    v29[1] = v21;
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A3C58E50(v9, v6, type metadata accessor for LemonadeBookmarkCore);
    v25 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    sub_1A46DB354(v6, v26 + v25);
    sub_1A52457C4();
  }

  return result;
}

uint64_t sub_1A46D821C(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeBookmarkCore();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A46D7C0C(a1))
  {
    v7[0] = v5;
    v7[1] = v1;
    swift_getObjectType();
    v8[3] = swift_getAssociatedTypeWitness();
    v8[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v8);
    sub_1A5245904();
  }

  memset(v9, 0, sizeof(v9));
  sub_1A465E250(v9);
  return 0;
}

id sub_1A46D864C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeBookmarkCore();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  result = sub_1A3F9EAF8(*(v1 + OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_photoLibrary));
  if (!result)
  {
    result = sub_1A46D821C(a1);
    if (result)
    {
      v12 = result;
      objc_opt_self();
      v23 = v12;
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v15 = objc_opt_self();
        v16 = v23;
        if ([v15 privacyControllerForCollection_])
        {
          v17 = *(a1 + 16);
          v18 = type metadata accessor for LemonadeBookmark(0);
          sub_1A3C58E50(a1 + *(v18 + 24), &v10[*(v4 + 20)], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          *v10 = v17;
          v19 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_privacyControllerObservers;
          swift_beginAccess();
          if (*(*(v2 + v19) + 16))
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v20 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1A3C58E50(v10, v7, type metadata accessor for LemonadeBookmarkCore);
          v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
          v22 = swift_allocObject();
          *(v22 + 16) = v20;
          sub_1A46DB354(v7, v22 + v21);

          sub_1A524D1A4();
        }
      }

      return v23;
    }
  }

  return result;
}

void sub_1A46D8990()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeBookmark(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(**&v0[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarksManager] + 328))(v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v9 = &v0[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_topLevelIdentifier];
    v10 = *(v3 + 80);
    v23 = v7;
    v11 = v7 + ((v10 + 32) & ~v10);
    v12 = *(v3 + 72);
    do
    {
      sub_1A3C58E50(v11, v6, type metadata accessor for LemonadeBookmark);
      v13 = sub_1A46D864C(v6);
      if (!v13)
      {
        goto LABEL_12;
      }

      v14 = v13;
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v15 = [objc_opt_self() lockStateForCollection_];
      }

      v16 = *(v9 + 1) ? sub_1A524C634() : 0;
      v17 = PXNavigationListItemWithObject(v14, 0, v15, 1, v16);

      if (!v17)
      {
LABEL_12:
        v18 = *(v9 + 1);
        v19 = sub_1A524C634();
        v20 = sub_1A524C634();
        if (v18)
        {
          v18 = sub_1A524C634();
        }

        [objc_allocWithZone(PXNavigationListItem) initWithIdentifier:v19 title:v20 accessoryTitle:0 reorderable:1 topLevelIdentifier:v18];
      }

      sub_1A3C9ECF8(v6, type metadata accessor for LemonadeBookmark);
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v11 += v12;
      --v8;
    }

    while (v8);

    v21 = v24;
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = [v1 outlineObject];
  if (!(v21 >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4036910();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A46D8E40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeBookmarksDataSectionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LemonadeBookmarkCore()
{
  result = qword_1EB1CEB80;
  if (!qword_1EB1CEB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46D8FB8()
{
  result = type metadata accessor for LemonadeBookmark.CollectionIdentifier(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A46D9034()
{
  sub_1A524EC94();
  sub_1A46D92A4();
  sub_1A524C4B4();
  type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A46D90F8()
{
  sub_1A46D92A4();
  sub_1A524C4B4();
  type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  return sub_1A524C4B4();
}

uint64_t sub_1A46D91AC()
{
  sub_1A524EC94();
  sub_1A46D92A4();
  sub_1A524C4B4();
  type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

unint64_t sub_1A46D92A4()
{
  result = qword_1EB1406B0;
  if (!qword_1EB1406B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1406B0);
  }

  return result;
}

size_t sub_1A46D92F8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A46DB850(0, &qword_1EB140720, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for LemonadeBookmarkCore() - 8);
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
  v15 = *(type metadata accessor for LemonadeBookmarkCore() - 8);
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

unint64_t sub_1A46D94F4(_BYTE *a1)
{
  sub_1A524EC94();
  sub_1A46D92A4();
  sub_1A524C4B4();
  type metadata accessor for LemonadeBookmarkCore();
  type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  sub_1A524C4B4();
  v2 = sub_1A524ECE4();
  return sub_1A46DA3F8(a1, v2);
}

uint64_t sub_1A46D95D4(uint64_t a1, int a2, unint64_t *a3, unint64_t *a4)
{
  v7 = v4;
  v9 = type metadata accessor for LemonadeBookmarkCore();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3;
  v13 = *v4;
  sub_1A46DB618(0, v12, a4);
  v43 = a2;
  result = sub_1A524E774();
  v15 = result;
  if (*(v13 + 16))
  {
    v39 = v4;
    v40 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v41 + 72);
      v29 = *(v13 + 48) + v28 * v27;
      if (v43)
      {
        sub_1A46DB354(v29, v11);
        v44 = *(*(v13 + 56) + 16 * v27);
      }

      else
      {
        sub_1A3C58E50(v29, v11, type metadata accessor for LemonadeBookmarkCore);
        v44 = *(*(v13 + 56) + 16 * v27);
        swift_unknownObjectRetain();
      }

      sub_1A524EC94();
      v45 = *v11;
      sub_1A46D92A4();
      sub_1A524C4B4();
      type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
      sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      sub_1A524C4B4();
      result = sub_1A524ECE4();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v13 = v40;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v13 = v40;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_1A46DB354(v11, *(v15 + 48) + v28 * v23);
      *(*(v15 + 56) + 16 * v23) = v44;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_1A46D99B8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for LemonadeBookmarkCore();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1A46DB268();
  v38 = a2;
  result = sub_1A524E774();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v3;
    v35 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v36 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v38)
      {
        sub_1A46DB354(v25, v7);
        v39 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_1A3C58E50(v25, v7, type metadata accessor for LemonadeBookmarkCore);
        v39 = *(*(v10 + 56) + 8 * v23);
      }

      sub_1A524EC94();
      v40 = *v7;
      sub_1A46D92A4();
      sub_1A524C4B4();
      type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
      sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      sub_1A524C4B4();
      result = sub_1A524ECE4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v10 = v35;
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
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v10 = v35;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1A46DB354(v7, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v39;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v10 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_1A46D9D80(int64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for LemonadeBookmarkCore();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_1A524E244() + 1) & ~v8;
    v12 = *(v4 + 72);
    v24 = a2 + 64;
    do
    {
      v13 = v12;
      v14 = v12 * v9;
      sub_1A3C58E50(*(a2 + 48) + v12 * v9, v6, type metadata accessor for LemonadeBookmarkCore);
      sub_1A524EC94();
      v26 = *v6;
      sub_1A46D92A4();
      sub_1A524C4B4();
      type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
      sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      sub_1A524C4B4();
      v15 = sub_1A524ECE4();
      sub_1A3C9ECF8(v6, type metadata accessor for LemonadeBookmarkCore);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v7 = v24;
          v12 = v13;
          goto LABEL_4;
        }

        v12 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v13;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v24;
          }

          else
          {
            v17 = v12 * a1 == v14;
            v7 = v24;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * a1);
          v20 = (v18 + 16 * v9);
          if (a1 != v9 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v24;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

void sub_1A46DA0BC(int64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for LemonadeBookmarkCore();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_1A524E244() + 1) & ~v8;
    v12 = *(v4 + 72);
    v24 = a2 + 64;
    do
    {
      v13 = v12;
      v14 = v12 * v9;
      sub_1A3C58E50(*(a2 + 48) + v12 * v9, v6, type metadata accessor for LemonadeBookmarkCore);
      sub_1A524EC94();
      v26 = *v6;
      sub_1A46D92A4();
      sub_1A524C4B4();
      type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
      sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      sub_1A524C4B4();
      v15 = sub_1A524ECE4();
      sub_1A3C9ECF8(v6, type metadata accessor for LemonadeBookmarkCore);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v7 = v24;
          v12 = v13;
          goto LABEL_4;
        }

        v12 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v13;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v24;
          }

          else
          {
            v17 = v12 * a1 == v14;
            v7 = v24;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * a1);
          v20 = (v18 + 8 * v9);
          if (a1 != v9 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v24;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

unint64_t sub_1A46DA3F8(_BYTE *a1, uint64_t a2)
{
  v19 = type metadata accessor for LemonadeBookmarkCore();
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + 64;
  v20 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v18 = a1;
    v12 = *a1;
    v13 = *(v5 + 72);
    do
    {
      sub_1A3C58E50(*(v20 + 48) + v13 * v10, v7, type metadata accessor for LemonadeBookmarkCore);
      v26 = *v7;
      v25 = v12;
      sub_1A3C3BE04();
      sub_1A524C9C4();
      sub_1A524C9C4();
      if (v23 == v21 && v24 == v22)
      {
      }

      else
      {
        v15 = sub_1A524EAB4();

        if ((v15 & 1) == 0)
        {
          sub_1A3C9ECF8(v7, type metadata accessor for LemonadeBookmarkCore);
          goto LABEL_4;
        }
      }

      v16 = sub_1A3CA1BC0(&v7[*(v19 + 20)], &v18[*(v19 + 20)]);
      sub_1A3C9ECF8(v7, type metadata accessor for LemonadeBookmarkCore);
      if (v16)
      {
        return v10;
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_1A46DA638(unint64_t *a1, unint64_t *a2)
{
  v5 = v2;
  v6 = type metadata accessor for LemonadeBookmarkCore();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46DB618(0, a1, a2);
  v10 = *v2;
  v11 = sub_1A524E764();
  v12 = v11;
  if (*(v10 + 16))
  {
    v29 = v5;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = *(v10 + 64);
    v19 = -1;
    if (v17 < 64)
    {
      v19 = ~(-1 << v17);
    }

    v20 = v19 & v18;
    v21 = (v17 + 63) >> 6;
    if ((v19 & v18) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = *(v7 + 72) * v25;
        sub_1A3C58E50(*(v10 + 48) + v26, v9, type metadata accessor for LemonadeBookmarkCore);
        v25 *= 16;
        v27 = *(v12 + 48);
        v30 = *(*(v10 + 56) + v25);
        sub_1A46DB354(v9, v27 + v26);
        *(*(v12 + 56) + v25) = v30;
        result = swift_unknownObjectRetain();
      }

      while (v20);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v5 = v29;
        goto LABEL_21;
      }

      v24 = *(v10 + 64 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v12;
  }

  return result;
}

id sub_1A46DA874()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeBookmarkCore();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46DB268();
  v5 = *v0;
  v6 = sub_1A524E764();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1A3C58E50(*(v5 + 48) + v21, v4, type metadata accessor for LemonadeBookmarkCore);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1A46DB354(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
        result = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

size_t sub_1A46DAA8C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A46DAAAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A46DAAAC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A46DB850(0, &qword_1EB140720, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for LemonadeBookmarkCore() - 8);
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
  v15 = *(type metadata accessor for LemonadeBookmarkCore() - 8);
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

uint64_t sub_1A46DACA8(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for LemonadeBookmarkCore();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1A46D94F4(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1A46DA638(&qword_1EB1406C8, &qword_1EB124A70);
      goto LABEL_7;
    }

    sub_1A46D95D4(v18, a4 & 1, &qword_1EB1406C8, &qword_1EB124A70);
    v24 = sub_1A46D94F4(a3);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A3C58E50(a3, v12, type metadata accessor for LemonadeBookmarkCore);
      return sub_1A46DB02C(v15, v12, a1, a2, v21);
    }

LABEL_15:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 16 * v15);
  *v22 = a1;
  v22[1] = a2;

  return swift_unknownObjectRelease();
}

void sub_1A46DAE88(uint64_t a1, _BYTE *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for LemonadeBookmarkCore();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1A46D94F4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1A46DA874();
      goto LABEL_7;
    }

    sub_1A46D99B8(v16, a3 & 1);
    v22 = sub_1A46D94F4(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A3C58E50(a2, v10, type metadata accessor for LemonadeBookmarkCore);
      sub_1A46DB0D4(v13, v10, a1, v19);
      return;
    }

LABEL_15:
    sub_1A524EB84();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = *(v20 + 8 * v13);
  *(v20 + 8 * v13) = a1;
}

uint64_t sub_1A46DB02C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for LemonadeBookmarkCore();
  result = sub_1A46DB354(a2, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1A46DB0D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for LemonadeBookmarkCore();
  result = sub_1A46DB354(a2, v8 + *(*(v9 - 8) + 72) * a1);
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

uint64_t sub_1A46DB174(uint64_t a1, uint64_t a2)
{
  sub_1A3C3BE04();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v11 == v9 && v12 == v10)
  {
  }

  else
  {
    v5 = sub_1A524EAB4();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = type metadata accessor for LemonadeBookmarkCore();
  v6 = sub_1A3CA1BC0(a1 + *(v7 + 20), a2 + *(v7 + 20));
  return v6 & 1;
}

void sub_1A46DB268()
{
  if (!qword_1EB1406C0)
  {
    type metadata accessor for LemonadeBookmarkCore();
    sub_1A3C52C70(255, &qword_1EB1265D0);
    sub_1A46DB310(&unk_1EB16BE00);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1406C0);
    }
  }
}

uint64_t sub_1A46DB310(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeBookmarkCore();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46DB354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmarkCore();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A46DB3B8(uint64_t a1, _BYTE *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v11 = type metadata accessor for LemonadeBookmarkCore();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v16 = sub_1A46D94F4(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1A46DA638(&qword_1EB1406D0, &qword_1EB1406D8);
      goto LABEL_7;
    }

    sub_1A46D95D4(v19, a3 & 1, &qword_1EB1406D0, &qword_1EB1406D8);
    v25 = sub_1A46D94F4(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *a4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A3C58E50(a2, v13, type metadata accessor for LemonadeBookmarkCore);
      return sub_1A46DB6C4(v16, v13, a1, v22, v28, a6);
    }

LABEL_15:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *a4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 16 * v16);
  *v23 = a1;
  v23[1] = a6;

  return swift_unknownObjectRelease();
}

void sub_1A46DB5A4()
{
  type metadata accessor for LemonadeBookmarkCore();

  sub_1A46D80C4();
}

void sub_1A46DB618(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for LemonadeBookmarkCore();
    sub_1A3C652C8(255, a3);
    sub_1A46DB310(&unk_1EB16BE00);
    v5 = sub_1A524E7A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A46DB6C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = type metadata accessor for LemonadeBookmarkCore();
  result = sub_1A46DB354(a2, v11 + *(*(v12 - 8) + 72) * a1);
  v14 = (a4[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a6;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

void sub_1A46DB76C()
{
  if (!qword_1EB1434E0)
  {
    sub_1A3C652C8(255, &qword_1EB1406E0);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1434E0);
    }
  }
}

uint64_t sub_1A46DB7D8()
{
  v1 = type metadata accessor for LemonadeBookmarkCore();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)));
  return sub_1A42E16DC(*v2, &v2[*(v1 + 20)]);
}

void sub_1A46DB850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A46DB8B4()
{
  if (!qword_1EB1406F0)
  {
    v0 = MEMORY[0x1E69E6EF0];
    sub_1A46DB850(255, &qword_1EB1406F8, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6EF0]);
    sub_1A46DB97C(&qword_1EB140700, &qword_1EB1406F8, v0);
    v1 = sub_1A524E684();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1406F0);
    }
  }
}

uint64_t sub_1A46DB97C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A46DB850(255, a2, type metadata accessor for LemonadeBookmarkCore, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46DB9D8(uint64_t a1, uint64_t a2)
{
  sub_1A46DB850(0, &qword_1EB1406E8, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6EE8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A46DBA6C(uint64_t a1, uint64_t a2)
{
  sub_1A46DB850(0, &qword_1EB1406E8, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6EE8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A46DBB00()
{
  if (!qword_1EB140718)
  {
    type metadata accessor for LemonadeBookmarkCore();
    sub_1A3FADBE8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB140718);
    }
  }
}

uint64_t objectdestroy_23Tm_0()
{
  v1 = (type metadata accessor for LemonadeBookmarkCore() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v1[7] + v2;
  type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        goto LABEL_11;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_14;
      }

      v5 = sub_1A5241144();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_14;
        }

LABEL_11:

        goto LABEL_14;
      }

      v5 = sub_1A5244EB4();
    }

    (*(*(v5 - 8) + 8))(v3, v5);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_11;
  }

LABEL_14:

  return swift_deallocObject();
}

void sub_1A46DBCE0(uint64_t a1, char a2)
{
  type metadata accessor for LemonadeBookmarkCore();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a2 & 3) != 0)
    {
      sub_1A46D730C();
    }
  }
}

void sub_1A46DBD88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A46D631C();
  }
}

id sub_1A46DBDE0(void *a1)
{
  result = [a1 firstAsset];
  if (result)
  {
    v3 = result;
    v4 = objc_opt_self();
    v5 = [a1 containingAlbum];
    v6 = [v4 px:v3 fetchContainingCollectionsForAsset:v5 excludedAssetCollection:?];

    v7 = [v6 count];
    return (v7 > 0);
  }

  return result;
}

void sub_1A46DBEE8(void *a1, uint64_t a2, void *a3)
{
  v22 = 2;
  sub_1A3C6C180(v18);
  v13 = *&v18[0];
  v14 = BYTE8(v18[0]);
  sub_1A3C6C18C(v20);
  v15 = *&v20[0];
  LOBYTE(v16) = BYTE8(v20[0]);
  v5 = sub_1A3C5A374();
  v6 = sub_1A3C30368();
  v7 = sub_1A3C5A374();
  v8 = sub_1A3C5A374();
  v9 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v13, 0, &unk_1F171FBD8, 0, 1, &v15, v5 & 1, &v22, v23, v6, v7 & 1, v8 & 1, v9 & 1, 0);
  sub_1A3C47D24(0, &qword_1EB129FB0, sub_1A3D9D024, type metadata accessor for PhotoKitItemListManager);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v18[2] = v23[2];
  v18[3] = v23[3];
  v18[4] = v23[4];
  v19 = v24;
  v18[0] = v23[0];
  v18[1] = v23[1];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a3;
  v11 = a1;
  sub_1A3C6DB58(v23, &v13);
  v12 = a3;
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v11, 0, v20, v18, &v15, sub_1A46DC130, v10);
}

id sub_1A46DC130()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_opt_self();
  v4 = [v2 containingAlbum];
  v5 = [v3 px:v1 fetchContainingCollectionsForAsset:v4 excludedAssetCollection:?];

  return v5;
}

uint64_t sub_1A46DC1B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A40F2AD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46DC1F4()
{
  v0 = *(sub_1A5243164() + 16);

  return v0;
}

uint64_t sub_1A46DC22C()
{
  v0 = *(sub_1A5243164() + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    if (sub_1A52431A4())
    {
      MEMORY[0x1A5907D70]();
      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v1 = v3;
      if (v0 == 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
      if (v0 == 1)
      {
LABEL_13:

        return v1;
      }
    }

    if (sub_1A52431A4())
    {
      MEMORY[0x1A5907D70]();
      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v1 = v3;
    }

    goto LABEL_13;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1A46DC3A8()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v3 = result;
  v4 = sub_1A524E2B4();
  result = v3;
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    v2 = sub_1A52426E4();

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A46DC4B4()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x180))();
  v1 = sub_1A524C634();
  v2 = PXLocalizedString(v1);

  v3 = sub_1A524C674();
  return v3;
}

uint64_t sub_1A46DC590(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x180))();
  (*((*v3 & *v1) + 0x190))();
  v5 = objc_opt_self();
  v6 = sub_1A524C634();

  v8 = [v5 localizedAttributedAlbumAttributionStringWithAlbumCount:v4 albumTitle:v6 userInterfaceIdiom:(*((*v3 & *v1) + 0x140))(v7) textStyle:a1];

  if (v8)
  {

    return sub_1A5240834();
  }

  else
  {

    return sub_1A5240714();
  }
}

void sub_1A46DC740(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x180))() != 1)
  {
    goto LABEL_13;
  }

  v5 = (*((*v4 & *v1) + 0x188))();
  if (v5 >> 62)
  {
    v9 = v5;
    v10 = sub_1A524E2B4();
    v5 = v9;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  sub_1A40F2AD0();
  v7 = v6;
  sub_1A46DC1B0(&qword_1EB140728);
  v8 = PhotosModel.photokitObject.getter(v7);

  if (v8)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      (*((*v4 & *v2) + 0x1B8))();

      return;
    }
  }

LABEL_13:
  v11 = sub_1A5240E64();
  (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

uint64_t sub_1A46DC974@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C47D24(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x140))(v6) == 5)
  {
    v10 = [a1 px_isSharedAlbum];
    if (v10)
    {
      v11 = 0x6C61646572616873;
    }

    else
    {
      v11 = 0x6D75626C61;
    }

    if (v10)
    {
      v12 = 0xEB000000006D7562;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1A524E404();

    v22 = 0x2F3A736F746F6870;
    v23 = 0xE90000000000002FLL;
    MEMORY[0x1A5907B60](v11, v12);

    MEMORY[0x1A5907B60](0x6669746E6564693FLL, 0xEC0000003D726569);
    v13 = [a1 localIdentifier];
    v14 = sub_1A524C674();
    v16 = v15;

    MEMORY[0x1A5907B60](v14, v16);

    sub_1A5240E34();
  }

  else
  {
    v18 = (*((*v9 & *v2) + 0x88))();
    v19 = [a1 px:v18 navigationURLWithSelectedObject:?];

    if (v19)
    {
      sub_1A5240DE4();

      v20 = sub_1A5240E64();
      (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    }

    else
    {
      v21 = sub_1A5240E64();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    }

    return sub_1A408A03C(v8, a2);
  }
}

uint64_t sub_1A46DCC8C()
{
}

id sub_1A46DCCCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel()
{
  result = qword_1EB18EB50;
  if (!qword_1EB18EB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46DCDEC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 64) == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1A46DCF2C(uint64_t result)
{
  if (*(v1 + 80) == (result & 1))
  {
    *(v1 + 80) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DD00C(uint64_t result)
{
  if (*(v1 + 81) == (result & 1))
  {
    *(v1 + 81) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DD0EC(uint64_t result)
{
  if (*(v1 + 82) == (result & 1))
  {
    *(v1 + 82) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DD1CC(uint64_t result)
{
  if (*(v1 + 83) == (result & 1))
  {
    *(v1 + 83) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A46DD2AC(double a1)
{
  if (*(v1 + 88) == a1)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

uint64_t sub_1A46DD394(uint64_t result)
{
  if (*(v1 + 96) == (result & 1))
  {
    *(v1 + 96) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DD474(uint64_t result)
{
  if (*(v1 + 97) == (result & 1))
  {
    *(v1 + 97) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A46DD554(char a1)
{
  if (*(v1 + 98) == (a1 & 1))
  {
    *(v1 + 98) = a1 & 1;
    swift_getKeyPath();
    sub_1A3C79318();
    sub_1A52415D4();

    if (*(v1 + 344) == 1)
    {
      swift_getKeyPath();
      sub_1A52415D4();

      v3 = *(v1 + 98);
    }

    else
    {
      v3 = 0;
    }

    sub_1A46E0848(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

uint64_t sub_1A46DD6C8(uint64_t result)
{
  if (*(v1 + 99) == (result & 1))
  {
    *(v1 + 99) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DD7A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 104) == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_1A46DD8E8(uint64_t result)
{
  if (*(v1 + 120) == (result & 1))
  {
    *(v1 + 120) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DD9C8(uint64_t result)
{
  if (*(v1 + 121) == (result & 1))
  {
    *(v1 + 121) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DDAA8(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 144) == a1)
  {
    *(v1 + 144) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DDBA4(double a1)
{
  if (*(v1 + 152) == a1)
  {

    sub_1A46E251C(a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3C79318();
  sub_1A52415C4();
}

uint64_t sub_1A46DDCB0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(v1 + 160) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DDD98(uint64_t result, uint64_t a2, char a3)
{
  v4 = *(v3 + 176);
  v5 = *(v3 + 192);
  if (v5 <= 1)
  {
    if (*(v3 + 192))
    {
      if (a3 != 1)
      {
        goto LABEL_33;
      }
    }

    else if (a3)
    {
      goto LABEL_33;
    }

    if (v4 == *&result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v6 = *(v3 + 184);
    if (v5 == 2)
    {
      if (a3 == 2)
      {
LABEL_10:
        if (v4 != *&result || v6 != *&a2)
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (v5 == 3)
      {
        if (a3 != 3)
        {
          goto LABEL_33;
        }

        goto LABEL_10;
      }

      if (*&v4 > 1uLL)
      {
        if (*&v4 ^ 2 | *&v6)
        {
          if (a3 != 4 || result != 3)
          {
            goto LABEL_33;
          }
        }

        else if (a3 != 4 || result != 2)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (!(*&v4 | *&v6))
        {
          if (a3 != 4 || a2 | result)
          {
            goto LABEL_33;
          }

LABEL_22:
          *(v3 + 176) = *&result;
          *(v3 + 184) = *&a2;
          *(v3 + 192) = a3;
          return result;
        }

        if (a3 != 4 || result != 1)
        {
          goto LABEL_33;
        }
      }

      if (*&a2 == 0.0)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_33:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3C79318();
  sub_1A52415C4();
  *&result = COERCE_DOUBLE();
  return result;
}

void sub_1A46DDF94(double a1)
{
  if (*(v1 + 224) == a1)
  {
    *(v1 + 224) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DE07C(double a1, double a2)
{
  if (*(v2 + 304) == a1 && *(v2 + 312) == a2)
  {
    *(v2 + 304) = a1;
    *(v2 + 312) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DE16C(double a1)
{
  if (*(v1 + 336) == a1)
  {
    *(v1 + 336) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

uint64_t sub_1A46DE254(char a1)
{
  if (*(v1 + 344) == (a1 & 1))
  {
    *(v1 + 344) = a1 & 1;
    swift_getKeyPath();
    sub_1A3C79318();
    sub_1A52415D4();

    if (*(v1 + 344) == 1)
    {
      swift_getKeyPath();
      sub_1A52415D4();

      v4 = *(v1 + 98);
    }

    else
    {
      v4 = 0;
    }

    sub_1A46E0848(v4);
    return sub_1A46E4A54();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

uint64_t sub_1A46DE3CC(uint64_t result)
{
  if (*(v1 + 345) == (result & 1))
  {
    *(v1 + 345) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DE4AC(uint64_t result)
{
  if (*(v1 + 346) == (result & 1))
  {
    *(v1 + 346) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DE58C(uint64_t result, char a2)
{
  if (*(v2 + 360))
  {
    if ((a2 & 1) == 0)
    {
LABEL_8:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3C79318();
      sub_1A52415C4();
      *&result = COERCE_DOUBLE();
      return result;
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + 352) != *&result)
  {
    goto LABEL_8;
  }

  *(v2 + 352) = *&result;
  *(v2 + 360) = a2 & 1;
  if (*(v2 + 346) == (a2 & 1))
  {
    v3 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v3);
    sub_1A3C79318();
    sub_1A52415C4();

    *&result = COERCE_DOUBLE(sub_1A46E2BFC());
  }

  return result;
}

void sub_1A46DE748(double a1)
{
  if (*(v1 + 368) == a1)
  {
    *(v1 + 368) = a1;
    swift_getKeyPath();
    sub_1A3C79318();
    sub_1A52415D4();

    sub_1A46DFCC8(*(v1 + 368) > 0.5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

uint64_t sub_1A46DE888(double a1)
{
  if (*(v1 + 376) == a1)
  {
    *(v1 + 376) = a1;

    return sub_1A46E4FF0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

uint64_t sub_1A46DE998(double a1)
{
  if (*(v1 + 384) == a1)
  {
    *(v1 + 384) = a1;

    return sub_1A46E4FF0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DEAA8(double a1)
{
  if (*(v1 + 392) == a1)
  {
    *(v1 + 392) = a1;

    sub_1A46DF0D8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DEBB8(double a1)
{
  if (*(v1 + 400) == a1)
  {
    *(v1 + 400) = a1;

    sub_1A46DF0D8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

uint64_t sub_1A46DECC8(uint64_t result)
{
  if (*(v1 + 449) == (result & 1))
  {
    *(v1 + 449) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DEDA8(uint64_t result)
{
  if (*(v1 + 464) == (result & 1))
  {
    *(v1 + 464) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DEE88()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    [*(result + 248) presentationValue];
    if (*(v1 + 400) != v2)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3C79318();
      sub_1A52415C4();
    }

    sub_1A46E2BFC();
  }

  return result;
}

uint64_t sub_1A46DEFB0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    [*(result + 256) presentationValue];
    if (*(v1 + 152) != v2)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3C79318();
      sub_1A52415C4();
    }

    sub_1A46E2BFC();
  }

  return result;
}

void sub_1A46DF0D8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v1 = *(v0 + 392);
  swift_getKeyPath();
  sub_1A52415D4();

  v2 = fmax(v1 - *(v0 + 224), 1.0);
  swift_getKeyPath();
  sub_1A52415D4();

  v3 = *(v0 + 400);
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  v4 = v2 * v3;
  sub_1A3C52C70(0, &qword_1EB126A10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [ObjCClassFromMetadata sharedInstance];
  swift_getKeyPath();
  sub_1A52415D4();

  v8 = *(v0 + 224);
  v9 = *(**(v0 + 264) + 152);
  v10 = v8 - v9(v7);
  [v6 curatedLibraryBottomPadding];
  v12 = v11;

  if (v10 - v12 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v10 - v12;
  }

  swift_getKeyPath();
  sub_1A52415D4();

  v14 = v13 * *(v0 + 152);
  swift_getKeyPath();
  sub_1A52415D4();

  v15 = *(v0 + 392);
  swift_getKeyPath();
  sub_1A52415D4();

  v16 = fmax(v15 - *(v0 + 224), 1.0);
  v17 = [ObjCClassFromMetadata sharedInstance];
  swift_getKeyPath();
  sub_1A52415D4();

  v19 = *(v0 + 224);
  v20 = v19 - v9(v18);
  [v17 curatedLibraryBottomPadding];
  v22 = v21;

  v23 = v20 - v22;
  if (v20 - v22 < 0.0)
  {
    v23 = 0.0;
  }

  v24 = v16 + v23;
  if (v24 >= v4 + v14)
  {
    v25 = v4 + v14;
  }

  else
  {
    v25 = v24;
  }

  if (v25 != *(v0 + 336))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();
  }
}

double sub_1A46DF494()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 368);
}

void sub_1A46DF504(double a1)
{
  if (*(v1 + 368) != a1)
  {
    sub_1A46DE748(a1);
  }
}

uint64_t sub_1A46DF518()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return sub_1A3C38BD4();
}

unint64_t sub_1A46DF5C8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v0 + 344))
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t sub_1A46DF66C(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + 72);
  if (v4)
  {
    if (a2)
    {
      v5 = *(v2 + 64) == result && v4 == a2;
      if (v5 || (sub_1A524EAB4() & 1) != 0)
      {
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  MEMORY[0x1EEE9AC00](v6);
  if (v7)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v8 = sub_1A47ED860();
  MEMORY[0x1EEE9AC00](v8);
  sub_1A5248914();
}

uint64_t sub_1A46DF8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 72);
  if (v6)
  {
    if (a3)
    {
      v7 = *(a1 + 64) == a2 && v6 == a3;
      if (v7 || (sub_1A524EAB4() & 1) != 0)
      {
LABEL_8:
        *(a1 + 64) = a2;
        *(a1 + 72) = a3;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3C79318();
  sub_1A52415C4();

  if (((a3 != 0) ^ *(a1 + 80)))
  {
    v10 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v10);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A46DFAAC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46DFB44()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 80);
}

uint64_t sub_1A46DFBB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_1A46DFC58()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 81);
}

void sub_1A46DFCC8(uint64_t a1)
{
  v2 = a1 & 1;
  if (*(v1 + 81) != (a1 & 1))
  {
    MEMORY[0x1EEE9AC00](a1);
    aBlock[0] = 0;
    v3 = sub_1A47ED860();
    MEMORY[0x1EEE9AC00](v3);
    sub_1A5248914();

    sub_1A3CA7D34(1);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    aBlock[4] = sub_1A46E5FE0;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_258;
    v6 = _Block_copy(aBlock);

    px_perform_after_ca_commit(v6);
    _Block_release(v6);
  }
}

uint64_t sub_1A46DFE94(uint64_t result, char a2)
{
  if (*(result + 81) == (a2 & 1))
  {
    *(result + 81) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46DFF78(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 82) != (a2 & 1))
    {
      MEMORY[0x1EEE9AC00](result);
      v4 = sub_1A47ED860();
      MEMORY[0x1EEE9AC00](v4);
      sub_1A5248914();
    }
  }

  return result;
}

uint64_t sub_1A46E00AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 81);
  return result;
}

uint64_t sub_1A46E0150()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 82);
}

uint64_t sub_1A46E01C0(uint64_t result, char a2)
{
  if (*(result + 82) == (a2 & 1))
  {
    *(result + 82) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46E02A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 82);
  return result;
}

uint64_t sub_1A46E0348()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 83);
}

uint64_t sub_1A46E03B8(uint64_t result, char a2)
{
  if (*(result + 83) == (a2 & 1))
  {
    *(result + 83) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46E049C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 83);
  return result;
}

double sub_1A46E053C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 88);
  *a2 = result;
  return result;
}

uint64_t sub_1A46E05E0()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 96);
}

uint64_t sub_1A46E0650(uint64_t result, char a2)
{
  if (*(result + 96) == (a2 & 1))
  {
    *(result + 96) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46E0734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_1A46E07D8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 97);
}

void sub_1A46E0848(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 97) != (a1 & 1))
  {
    v3 = v1;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();

    sub_1A3C52C70(0, &qword_1EB1208C0);
    v6 = [swift_getObjCClassFromMetadata() sharedInstance];
    v7 = [v6 shouldWorkAround133571598];

    if (v7)
    {
      if (*(v3 + 97) == (a1 & 1))
      {
        *(v3 + 97) = v2;
      }

      else
      {
        v8 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v8);
        sub_1A52415C4();
      }
    }
  }
}

uint64_t sub_1A46E0A18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 97);
  return result;
}

uint64_t sub_1A46E0ABC()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 98);
}

void sub_1A46E0B2C(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 98) != v2)
  {
    sub_1A46DD554(v2);
  }
}

uint64_t sub_1A46E0B44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 98);
  return result;
}

id sub_1A46E0BEC()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [objc_allocWithZone(PXCuratedLibraryViewConfiguration) initWithPhotoLibrary_];
    [v4 setEnableDays_];
    [v4 setEnableFooter_];
    [v4 setEnableNavigationHeader_];
    [v4 setEnableSecondaryToolbarContainerView_];
    [v4 setIsExpandedInitially_];
    [v4 setAllowedInteractiveDismissBehaviors_];
    [v4 setInitialZoomLevel_];
    [v4 setSecondaryToolbarStyle_];
    v5 = [objc_allocWithZone(PXPhotosViewOptionsModel) initWithPhotoLibrary_];
    [v4 setViewOptionsModel_];

    [v4 setLayoutStyle_];
    v6 = [objc_allocWithZone(PXCuratedLibraryUIViewController) initWithConfiguration_];
    [v6 setModalPresentationStyle_];
    v7 = sub_1A46E158C();
    [v6 setDelegate_];

    v8 = *(v0 + 136);
    *(v0 + 136) = v6;
    v2 = v6;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t sub_1A46E0DA0()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 99);
}

uint64_t sub_1A46E0E10(uint64_t result)
{
  if (*(v1 + 99) != (result & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46E0EE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 99);
  return result;
}

uint64_t sub_1A46E0F88(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 112);
  if (!a2)
  {
    if (!v3)
    {
      return result;
    }

LABEL_12:
    sub_1A46DD7A8(result, a2);

    sub_1A3CA7B08();
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  if (*(v2 + 104) != result || v3 != a2)
  {
    v5 = result;
    v6 = a2;
    v7 = sub_1A524EAB4();
    a2 = v6;
    v8 = v7;
    result = v5;
    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }
  }
}

void sub_1A46E1034(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v4 = *(v3 + 112);
  *a2 = *(v3 + 104);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46E1110()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 120);
}

uint64_t sub_1A46E1180(uint64_t result)
{
  if (*(v1 + 120) != (result & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46E1258@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_1A46E12F8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 121);
}

uint64_t sub_1A46E1368(uint64_t result)
{
  if (*(v1 + 121) != (result & 1))
  {
    v2 = result;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();

    if ((v2 & 1) == 0)
    {
      if (*(v1 + 464))
      {
        v4 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v4);
        sub_1A52415C4();
      }

      else
      {
        *(v1 + 464) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A46E14EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 121);
  return result;
}

id sub_1A46E158C()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 128);
  }

  else
  {
    v3 = type metadata accessor for LemonadeCuratedLibraryViewModel.AllPhotosDelegateProxy();
    v4 = objc_allocWithZone(v3);
    swift_weakInit();
    swift_weakAssign();
    v9.receiver = v4;
    v9.super_class = v3;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    v6 = *(v0 + 128);
    *(v0 + 128) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_1A46E162C(char a1)
{
  result = a1 & 1;
  if (*(v1 + 344) != result)
  {
    sub_1A46DE254(result);
    if (a1)
    {
      v4 = 0;
    }

    else
    {
      swift_getKeyPath();
      sub_1A3C79318();
      sub_1A52415D4();

      if (*(v1 + 464))
      {
        v4 = 3;
      }

      else
      {
        v4 = 1;
      }
    }

    if (*(v1 + 192) < 4u)
    {
      goto LABEL_8;
    }

    v5 = *(v1 + 176);
    v6 = *(v1 + 184);
    if (v5 > 1)
    {
      if (v5 ^ 2 | v6 && v4 == 3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v5 | v6)
    {
      if (v4 == 1)
      {
LABEL_9:
        swift_getKeyPath();
        sub_1A3C79318();
        sub_1A52415D4();

        if (*(v1 + 344))
        {
          swift_getKeyPath();
          sub_1A52415D4();

          swift_getKeyPath();
          sub_1A52415F4();

          swift_beginAccess();
          ++*(v1 + 160);
          swift_getKeyPath();
          sub_1A52415E4();
        }

        sub_1A46E3D60();
        sub_1A3EF6938();
        sub_1A524C524();
      }
    }

    else if (!v4)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_1A46DDD98(v4, 0, 4);
    goto LABEL_9;
  }

  return result;
}

BOOL sub_1A46E1B98(void *a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = a1;
    sub_1A46E162C(0);
  }

  return Strong != 0;
}

id sub_1A46E1C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeCuratedLibraryViewModel.AllPhotosDelegateProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1A46E1CC8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 144);
}

double sub_1A46E1D4C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  swift_beginAccess();
  result = *(v3 + 144);
  *a2 = result;
  return result;
}

double sub_1A46E1E04()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 304);
}

void sub_1A46E1E74(double a1, double a2)
{
  if (v2[38] != a1 || v2[39] != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();

    swift_getKeyPath();
    sub_1A52415D4();

    if (v2[48] != v2[39])
    {
      v5 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v5);
      sub_1A52415C4();
    }

    type metadata accessor for CuratedLibraryGeometryHelper();
    swift_getKeyPath();
    sub_1A52415D4();

    static CuratedLibraryGeometryHelper.carouselHeight(for:)(v2[38], v2[39]);
    if (v2[47] != v6)
    {
      v7 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v7);
      sub_1A52415C4();
    }
  }
}

double sub_1A46E2100()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 376);
}

double sub_1A46E2174()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 384);
}

double sub_1A46E21E8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 392);
}

double sub_1A46E225C()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 336);
}

uint64_t sub_1A46E22CC()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v1 = *(v0 + 176);
  if (*(v0 + 192) == 1)
  {
    if (v1 > 0.0)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = -v1;
    }

    swift_getKeyPath();
    sub_1A52415D4();

    v4 = *(v0 + 392);
    swift_getKeyPath();
    sub_1A52415D4();

    v5 = v4 - *(v0 + 224);
    if (v5 < 1.0)
    {
      v5 = 1.0;
    }

    v2 = v3 - v5;
    if (v2 < 0.0)
    {
      v2 = 0.0;
    }

    return *&v2;
  }

  if (!*(v0 + 192))
  {
    v2 = 0.0;
    if (v1 <= 0.0)
    {
      v2 = -v1;
    }

    return *&v2;
  }

  return 0;
}

double sub_1A46E2438()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 400);
}

double sub_1A46E24AC()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 152);
}

void sub_1A46E251C(double a1)
{
  *(v1 + 152) = a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  sub_1A3EF6938();
  sub_1A524C524();
}

double sub_1A46E2600@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 152);
  *a2 = result;
  return result;
}

uint64_t sub_1A46E26A0()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 344);
}

uint64_t sub_1A46E2714()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 345);
}

uint64_t sub_1A46E2784()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 464);
}

uint64_t sub_1A46E27F4(uint64_t result, uint64_t a2, char a3)
{
  v4 = *(v3 + 176);
  v5 = *(v3 + 192);
  if (v5 <= 1)
  {
    if (*(v3 + 192))
    {
      if (a3 != 1)
      {
        goto LABEL_33;
      }
    }

    else if (a3)
    {
      goto LABEL_33;
    }

    if (v4 == *&result)
    {
      return result;
    }

LABEL_33:
    *&result = COERCE_DOUBLE(sub_1A46DDD98(result, a2, a3));
    return result;
  }

  v6 = *(v3 + 184);
  if (v5 == 2)
  {
    if (a3 == 2)
    {
LABEL_10:
      if (v4 != *&result || v6 != *&a2)
      {
        goto LABEL_33;
      }

      return result;
    }

    goto LABEL_33;
  }

  if (v5 == 3)
  {
    if (a3 != 3)
    {
      goto LABEL_33;
    }

    goto LABEL_10;
  }

  if (*&v4 > 1uLL)
  {
    if (*&v4 ^ 2 | *&v6)
    {
      if (a3 != 4 || result != 3)
      {
        goto LABEL_33;
      }
    }

    else if (a3 != 4 || result != 2)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (*&v4 | *&v6)
  {
    if (a3 != 4 || result != 1)
    {
      goto LABEL_33;
    }

LABEL_32:
    if (*&a2 == 0.0)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (a3 != 4 || a2 | result)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_1A46E290C()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 160);
}

uint64_t sub_1A46E2990@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 160);
  return result;
}

uint64_t sub_1A46E2A44()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v0 + 344))
  {
    v1 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1A52415D4();

    if (*(v0 + 346) == 1 && (swift_getKeyPath(), sub_1A52415D4(), , *(v0 + 346) == 1))
    {
      swift_getKeyPath();
      sub_1A52415D4();

      v1 = *(v0 + 344) ^ 1;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_1A46E2B8C()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 346);
}

uint64_t sub_1A46E2BFC()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if ((*(v0 + 346) & 1) == 0 && (*(v0 + 448) & 1) == 0)
  {
    v1 = *(v0 + 248);
    if (([v1 isAnimating] & 1) == 0 && (objc_msgSend(*(v0 + 256), sel_isAnimating) & 1) == 0)
    {
      swift_getKeyPath();
      sub_1A52415D4();

      [v1 presentationValue];
      PXFloatApproximatelyEqualToFloat();
    }
  }

  return sub_1A46E54CC(1);
}

uint64_t sub_1A46E2D84(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    MEMORY[0x1A590A010](v7);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0;
    }

    return MEMORY[0x1A590A040](v9);
  }

  if (a4 == 2)
  {
    v6 = 4;
    goto LABEL_8;
  }

  if (a4 == 3)
  {
    v6 = 5;
LABEL_8:
    MEMORY[0x1A590A010](v6);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1A590A040](v8);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    return MEMORY[0x1A590A040](v9);
  }

  if (a2 > 1)
  {
    if (a2 ^ 2 | a3)
    {
      return MEMORY[0x1A590A010](7);
    }

    else
    {
      return MEMORY[0x1A590A010](6);
    }
  }

  else if (a2 | a3)
  {
    return MEMORY[0x1A590A010](1);
  }

  else
  {
    return MEMORY[0x1A590A010](0);
  }
}

uint64_t sub_1A46E2E6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A524EC94();
  sub_1A46E2D84(v5, v1, v2, v3);
  return sub_1A524ECE4();
}

uint64_t sub_1A46E2ED4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A524EC94();
  sub_1A46E2D84(v5, v1, v2, v3);
  return sub_1A524ECE4();
}

uint64_t sub_1A46E2F48()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 176);
}

__n128 sub_1A46E2FBC@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v4 = v3[12].n128_u8[0];
  result = v3[11];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

void sub_1A46E3070(char a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = sub_1A5246F24();
  v82 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC12PhotosUICore31LemonadeCuratedLibraryViewModel___observationRegistrar;
  aBlock = v5;
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v5 + 360) == 1 && (a1 & 1) == 0)
  {
    v81 = v11;
    sub_1A46DE58C(*&a3, 0);
    swift_getKeyPath();
    aBlock = v5;
    v15 = v14;
    sub_1A52415D4();

    *(v5 + 232) = *(v5 + 400);
    *(v5 + 240) = 0;
    v16 = objc_opt_self();
    v17 = [v16 sharedScheduler];
    v18 = sub_1A524C634();
    v19 = [v17 startTrackedAnimationWithLabel_];

    v20 = *(v6 + 408);
    *(v6 + 408) = v19;
    if (v20)
    {
      v21 = v19;
      v22 = [v16 sharedScheduler];
      [v22 endTrackedAnimation_];
    }

    v23 = *(v6 + 16);
    v24 = sub_1A524C634();
    v25 = [v23 px:v24 beginPausingChangesWithTimeout:30.0 identifier:?];

    sub_1A524E0B4();
    swift_unknownObjectRelease();
    sub_1A46E3C58(&aBlock);
    [*(v6 + 248) setPrepareForAnimation_];
    [*(v6 + 256) setPrepareForAnimation_];
    v14 = v15;
    v11 = v81;
  }

  sub_1A3C52C70(0, &qword_1EB126A10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v83 = [ObjCClassFromMetadata sharedInstance];
  v26 = *(v6 + 248);
  v27 = swift_allocObject();
  *(v27 + 16) = v6;
  *(v27 + 24) = a2;
  *(v27 + 32) = a3;
  v88 = sub_1A46E6304;
  v89 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1A3D59380;
  v87 = &block_descriptor_135_5;
  v28 = _Block_copy(&aBlock);

  [v26 performChangesWithoutAnimation_];
  _Block_release(v28);
  if (a5 <= 0.0 && (swift_getKeyPath(), aBlock = v6, sub_1A52415D4(), , *(v6 + 392) + -100.0 >= a3))
  {
    v31 = 0;
    if (a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v29 = COERCE_DOUBLE(sub_1A46E22CC());
    if (v30)
    {
      v31 = 1;
      if ((a1 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      swift_getKeyPath();
      aBlock = v6;
      sub_1A52415D4();

      v39 = *&a3;
      v40 = *&a5;
      if (*(v6 + 344) == 1)
      {
        if (v31)
        {
          v39 = 0;
          v40 = 0;
          v41 = 4;
        }

        else
        {
          v41 = 3;
        }
      }

      else if (v31)
      {
        v41 = 2;
      }

      else
      {
        v41 = 3;
      }

      sub_1A46DDD98(v39, v40, v41);
      v44 = [v26 prepareForAnimation];
      v45 = sub_1A3C38A40();
      (*(v82 + 16))(v13, v45, v11);
      v79[1] = v14;
      if ((v44 & 1) == 0)
      {
        v46 = sub_1A5246F04();
        v47 = sub_1A524D244();
        if (os_log_type_enabled(v46, v47))
        {
          v81 = v11;
          v48 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v48 = 136315138;
          sub_1A3C2EF94();
        }
      }

      (*(v82 + 8))(v13, v11);
      swift_getKeyPath();
      aBlock = v6;
      sub_1A52415D4();

      if (v31)
      {
        v49 = a5 < 0.0;
      }

      else
      {
        v49 = *(v6 + 344);
      }

      v50 = *(v6 + 448);
      *(v6 + 448) = 1;
      if ((v50 & 1) == 0)
      {
        sub_1A46E2BFC();
      }

      v51 = 0.0;
      v52 = 0.0;
      if ((v49 & 1) == 0)
      {
        swift_getKeyPath();
        aBlock = v6;
        sub_1A52415D4();

        v53 = *(v6 + 392);
        swift_getKeyPath();
        aBlock = v6;
        sub_1A52415D4();

        v52 = a5 / fmax(v53 - *(v6 + 224), 1.0);
      }

      v54 = v83;
      [v83 curatedLibraryExpansionGestureSpringStiffness];
      v56 = v55;
      v57 = swift_allocObject();
      *(v57 + 16) = v6;
      *(v57 + 24) = v31;
      *(v57 + 32) = v54;
      v88 = sub_1A46E63B4;
      v89 = v57;
      aBlock = MEMORY[0x1E69E9820];
      v85 = 1107296256;
      v86 = sub_1A3D59380;
      v87 = &block_descriptor_147_1;
      v58 = _Block_copy(&aBlock);

      v59 = v54;

      [v26 performChangesUsingSpringAnimationWithStiffness:v58 dampingRatio:v56 initialVelocity:1.0 changes:v52];
      _Block_release(v58);
      if ((v49 & 1) == 0)
      {
        v60 = [ObjCClassFromMetadata sharedInstance];
        swift_getKeyPath();
        aBlock = v6;
        sub_1A52415D4();

        v62 = *(v6 + 224);
        v63 = v62 - (*(**(v6 + 264) + 152))(v61);
        [v60 curatedLibraryBottomPadding];
        v65 = v64;

        v66 = v63 - v65;
        if (v63 - v65 < 1.0 || v66 < 0.0)
        {
          v66 = 1.0;
        }

        v51 = a5 / v66;
      }

      v68 = *(v6 + 256);
      [v59 curatedLibraryExpansionGestureSpringStiffness];
      v70 = v69;
      v88 = sub_1A46E64A8;
      v89 = v6;
      aBlock = MEMORY[0x1E69E9820];
      v85 = 1107296256;
      v86 = sub_1A3D59380;
      v87 = &block_descriptor_150_0;
      v71 = _Block_copy(&aBlock);

      [v68 performChangesUsingSpringAnimationWithStiffness:v71 dampingRatio:v70 initialVelocity:1.0 changes:v51];
      _Block_release(v71);
      v72 = *(v6 + 448);
      *(v6 + 448) = 0;
      v34 = v83;
      if (v72 == 1)
      {
        sub_1A46E2BFC();
      }

      goto LABEL_55;
    }

    v31 = v29 <= 0.0;
    if (a1)
    {
      goto LABEL_14;
    }
  }

LABEL_10:
  swift_getKeyPath();
  aBlock = v6;
  sub_1A52415D4();

  sub_1A46DDD98(*&a3, 0, *(v6 + 344));
  sub_1A46E3D60();
  v33 = v32;
  if (v31)
  {
    v34 = v83;
    [v83 curatedLibraryTransitionChromeExpandPercentage];
    if (v35 <= v33)
    {
      v36 = 0;
      v37 = 1;
      v38 = 1.0;
      goto LABEL_47;
    }

    goto LABEL_21;
  }

  v34 = v83;
  [v83 curatedLibraryTransitionChromeCollapsePercentage];
  if (v33 > v42)
  {
LABEL_21:
    [*(v6 + 256) value];
    v38 = v43;
    v36 = 0;
    v37 = 0;
    goto LABEL_47;
  }

  v37 = 0;
  v36 = 1;
  v38 = 0.0;
LABEL_47:
  v73 = *(v6 + 256);
  [v73 value];
  if (v74 != v38)
  {
    [v34 curatedLibraryChromeAutoAnimateSpringStiffness];
    v76 = v75;
    v77 = swift_allocObject();
    *(v77 + 16) = v38;
    v88 = sub_1A46E63A0;
    v89 = v77;
    aBlock = MEMORY[0x1E69E9820];
    v85 = 1107296256;
    v86 = sub_1A3D59380;
    v87 = &block_descriptor_141_0;
    v78 = _Block_copy(&aBlock);

    [v73 performChangesUsingSpringAnimationWithStiffness:v78 dampingRatio:v76 initialVelocity:1.0 changes:0.0];
    _Block_release(v78);
  }

  if ([v73 isAnimating])
  {
    if (v37)
    {
      [v34 curatedLibraryTransitionChromeExpandPercentage];
      swift_getKeyPath();
      aBlock = v6;
      sub_1A52415D4();

      swift_getKeyPath();
      aBlock = v6;
      sub_1A52415D4();

      swift_getKeyPath();
      aBlock = v6;
      sub_1A52415D4();

      goto LABEL_54;
    }

    if (v36)
    {
      [v34 curatedLibraryTransitionChromeCollapsePercentage];
LABEL_54:
      PXFloatProgressBetween();
    }
  }

LABEL_55:
}

uint64_t sub_1A46E3C58(uint64_t a1)
{
  swift_beginAccess();
  sub_1A3EBECA4(v1 + 416, v9);
  swift_beginAccess();
  sub_1A423EEB8(a1, v1 + 416);
  swift_endAccess();
  sub_1A3EBECA4(v9, &v5);
  if (v6)
  {
    sub_1A3C57128(&v5, &v7);
    v3 = *(v1 + 16);
    __swift_project_boxed_opaque_existential_1(&v7, v8);
    [v3 px:sub_1A524EA94() endPausingChanges:?];
    swift_unknownObjectRelease();
    sub_1A3C35B00(a1);
    sub_1A3C35B00(v9);
    return __swift_destroy_boxed_opaque_existential_0(&v7);
  }

  else
  {
    sub_1A3C35B00(a1);
    sub_1A3C35B00(v9);
    return sub_1A3C35B00(&v5);
  }
}

uint64_t sub_1A46E3D60()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v0 + 360) & 1) != 0 || (*(v0 + 240))
  {
    swift_getKeyPath();
    sub_1A52415D4();
  }

  else
  {
    swift_getKeyPath();
    sub_1A52415D4();

    swift_getKeyPath();
    sub_1A52415D4();
  }
}

uint64_t sub_1A46E3EC8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if ((*(v0 + 216) & 1) == 0)
  {
    swift_getKeyPath();
    sub_1A52415D4();

    PXFloatProgressBetween();
  }

  swift_getKeyPath();
  sub_1A52415D4();
}

uint64_t sub_1A46E40BC()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 200);
}

__n128 sub_1A46E4130@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v4 = *(v3 + 216);
  result = *(v3 + 200);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1A46E41B0()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415C4();
}

double sub_1A46E4260()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 224);
}

void sub_1A46E42D0(double a1)
{
  if (*(v1 + 224) != a1)
  {
    swift_getKeyPath();
    sub_1A3C79318();
    sub_1A52415D4();

    if (*(v1 + 449) == 1)
    {
      swift_getKeyPath();
      sub_1A52415D4();

      sub_1A46E3EC8();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A52415C4();
    }

    if (*(v1 + 224) == a1)
    {
      *(v1 + 224) = a1;
    }

    else
    {
      v4 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v4);
      sub_1A52415C4();
    }

    sub_1A46DF0D8();
  }
}

double sub_1A46E44DC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 224);
  *a2 = result;
  return result;
}

uint64_t sub_1A46E457C()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 352);
}

uint64_t sub_1A46E45F0()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A46E4668@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 272);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A46E4710()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A46E4788@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 288);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A46E4828()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415C4();
}

uint64_t sub_1A46E48C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A46DF0D8();
  }

  return result;
}

__n128 sub_1A46E4914@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = v3[19];
  *a2 = result;
  return result;
}

double sub_1A46E49B4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 336);
  *a2 = result;
  return result;
}

uint64_t sub_1A46E4A54()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if ((v0[344] & 1) == 0)
  {
    if ((v0[345] & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_1A52415D4();

  if (v0[345] != ((v0[449] ^ 1) & 1))
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46E4BB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 344);
  return result;
}

uint64_t sub_1A46E4C54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 345);
  return result;
}

uint64_t sub_1A46E4CF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 346);
  return result;
}

uint64_t sub_1A46E4D94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v5 = *(v3 + 360);
  *a2 = *(v3 + 352);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1A46E4E48(uint64_t result, uint64_t a2, char a3)
{
  *(result + 352) = a2;
  *(result + 360) = a3 & 1;
  if (*(result + 346) == (a3 & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();

    return sub_1A46E2BFC();
  }

  return result;
}

double sub_1A46E4F50@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 368);
  *a2 = result;
  return result;
}

uint64_t sub_1A46E4FF0()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v1 = v0[48];
  swift_getKeyPath();
  sub_1A52415D4();

  if (v0[49] != v1 - v0[47])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();
  }

  return result;
}

double sub_1A46E513C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 376);
  *a2 = result;
  return result;
}

double sub_1A46E51DC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 384);
  *a2 = result;
  return result;
}

double sub_1A46E527C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 392);
  *a2 = result;
  return result;
}

double sub_1A46E531C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 400);
  *a2 = result;
  return result;
}

uint64_t sub_1A46E53BC()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 449);
}

uint64_t sub_1A46E542C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 449);
  return result;
}

uint64_t sub_1A46E54CC(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 449) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();

    (*(**(v1 + 456) + 184))(v2);
    sub_1A46E4A54();
    return sub_1A46E55E8();
  }

  return result;
}

uint64_t sub_1A46E55E8()
{
  v1 = v0;
  swift_getKeyPath();
  *&v7 = v0;
  sub_1A3C79318();
  sub_1A52415D4();

  if ((*(v0 + 449) & 1) == 0)
  {
    [*(v0 + 248) setPrepareForAnimation_];
    [*(v0 + 256) setPrepareForAnimation_];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v7 = v0;
    sub_1A52415C4();

    v4 = *(v0 + 408);
    if (v4)
    {
      *(v1 + 408) = 0;
      v5 = [objc_opt_self() sharedScheduler];
      [v5 endTrackedAnimation_];
    }

    swift_beginAccess();
    sub_1A3EBECA4(v1 + 416, &v7);
    v6 = *(&v8 + 1);
    result = sub_1A3C35B00(&v7);
    if (v6)
    {
      v7 = 0u;
      v8 = 0u;
      return sub_1A46E3C58(&v7);
    }
  }

  return result;
}

uint64_t sub_1A46E57A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 464);
  return result;
}

uint64_t sub_1A46E5844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 144) = v2;
  return result;
}

uint64_t sub_1A46E5898()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 160) = v1;
  return result;
}

uint64_t sub_1A46E58E8(uint64_t result, double a2)
{
  if (*(result + 88) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

id sub_1A46E59CC()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A46E0BEC();
  v6 = [v5 canResetToInitialState];

  if (v6)
  {
    v7 = *(v0 + 136);
    aBlock[4] = sub_1A46E5BF8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3E01E70;
    aBlock[3] = &block_descriptor_159_0;
    v8 = _Block_copy(aBlock);
    v9 = v7;

    [v9 resetToInitialStateWithCompletionHandler_];
    _Block_release(v8);

    sub_1A46E162C(0);
  }

  else
  {
    v10 = sub_1A3C38A40();
    (*(v2 + 16))(v4, v10, v1);
    v11 = sub_1A524D244();
    v12 = sub_1A5246F04();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1A3C1C000, v12, v11, "All Photos can not be reset to initial state at this point", v13, 2u);
      MEMORY[0x1A590EEC0](v13, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return v6;
}

uint64_t sub_1A46E5BF8()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A3C38A40();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1A524D244();
  v6 = sub_1A5246F04();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A3C1C000, v6, v5, "Unable to reset All Photos to initial state", v7, 2u);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1A46E5D44(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3E01E70;
  v4[3] = &block_descriptor_162_3;
  v3 = _Block_copy(v4);

  [v2 resetToInitialStateWithCompletionHandler_];
  _Block_release(v3);
}

id *sub_1A46E5DF8()
{
  sub_1A46E6AD0((v0 + 3), &unk_1EB129F60, sub_1A3C6F5F0);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1A3C35B00((v0 + 52));

  v1 = OBJC_IVAR____TtC12PhotosUICore31LemonadeCuratedLibraryViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A46E5EE4()
{
  sub_1A46E5DF8();

  return swift_deallocClassInstance();
}

id sub_1A46E5F3C()
{
  result = [v0 viewProviderIfLoaded];
  if (result)
  {
    v2 = result;
    v3 = [result viewModel];

    [v3 currentDataSource];
    sub_1A524D634();
  }

  return result;
}

__n128 sub_1A46E6070()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 304) = result;
  return result;
}

double sub_1A46E6128()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 336) = result;
  return result;
}

BOOL sub_1A46E61C4(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 != 1)
      {
        return 0;
      }

      v6 = *&a1;
      v7 = *&a4;
    }

    else
    {
      if (a6)
      {
        return 0;
      }

      v6 = *&a1;
      v7 = *&a4;
    }

    return v6 == v7;
  }

  if (a3 == 2)
  {
    if (a6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 3)
    {
      if (a1 > 1)
      {
        if (a1 ^ 2 | a2)
        {
          if (a6 == 4 && a4 == 3 && *&a5 == 0.0)
          {
            return 1;
          }
        }

        else if (a6 == 4 && a4 == 2 && *&a5 == 0.0)
        {
          return 1;
        }
      }

      else if (a1 | a2)
      {
        if (a6 == 4 && a4 == 1 && *&a5 == 0.0)
        {
          return 1;
        }
      }

      else if (a6 == 4 && !(a5 | a4))
      {
        return 1;
      }

      return 0;
    }

    if (a6 != 3)
    {
      return 0;
    }
  }

  return *&a1 == *&a4 && *&a2 == *&a5;
}

void sub_1A46E6304()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 32);
  if ((*(v2 + 360) & 1) != 0 || *(v2 + 352) != *&v3)
  {
    sub_1A46DE58C(v3, 0);
  }

  sub_1A46E3D60();
  sub_1A3EF6938();
  sub_1A524C524();
}

void sub_1A46E63B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((*(v1 + 360) & 1) == 0)
  {
    sub_1A46DE58C(0, 1);
  }

  *(v1 + 232) = 0;
  *(v1 + 240) = 1;
  sub_1A46DE254(v2);
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  sub_1A46E3D60();
  sub_1A3EF6938();
  sub_1A524C524();
}

void sub_1A46E64A8()
{
  sub_1A46E3D60();
  sub_1A3EF6938();
  sub_1A524C524();
}

double sub_1A46E651C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 224) = result;
  return result;
}

__n128 sub_1A46E652C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  *(v1 + 200) = result;
  *(v1 + 216) = v2;
  return result;
}

unint64_t sub_1A46E6558()
{
  result = qword_1EB140730;
  if (!qword_1EB140730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140730);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LemonadeCuratedLibraryViewModel.ExpansionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for LemonadeCuratedLibraryViewModel.ExpansionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1A46E6678(uint64_t a1)
{
  if (*(a1 + 16) <= 3u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1A46E6690(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

BOOL sub_1A46E66B8()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    swift_getKeyPath();
    sub_1A3C79318();
    sub_1A52415D4();

    if ((*(Strong + 344) & 1) == 0)
    {
      sub_1A46E162C(1);
    }
  }

  return Strong != 0;
}

__n128 sub_1A46E678C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  v1[11] = result;
  v1[12].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1A46E67A4()
{
  v1 = *(v0 + 16);
  *(v1 + 344) = *(v0 + 24);
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v1 + 344) == 1)
  {
    swift_getKeyPath();
    sub_1A52415D4();

    v2 = *(v1 + 98);
  }

  else
  {
    v2 = 0;
  }

  sub_1A46E0848(v2);
  return sub_1A46E4A54();
}

void sub_1A46E6880()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 104) = v0[3];
  *(v1 + 112) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A46E68C0()
{
  v1 = *(v0 + 16);
  *(v1 + 98) = *(v0 + 24);
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v1 + 344) == 1)
  {
    swift_getKeyPath();
    sub_1A52415D4();

    v2 = *(v1 + 98);
  }

  else
  {
    v2 = 0;
  }

  sub_1A46E0848(v2);
}

void sub_1A46E69FC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A46E6A3C()
{
  v1 = *(v0 + 16);
  *(v1 + 368) = *(v0 + 24);
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  sub_1A46DFCC8(*(v1 + 368) > 0.5);
}

uint64_t sub_1A46E6AD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3C56940(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PhotosSearchBarLocalizedPlaceholder(_:)(uint64_t a1)
{
  sub_1A3C451FC(a1, v5);
  v1 = v6;
  if (v6)
  {
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = (*(v2 + 40))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v5);
    return v3;
  }

  else
  {
    sub_1A3C2CE9C(v5);
    return sub_1A3C38BD4();
  }
}

void LemonadeSearchableContainer.fetchAssetUUIDsForSearchScope(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 48))();
  v4 = [v3 count];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = v4;
    if (!v4)
    {
LABEL_10:

      return;
    }

    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v3 objectAtIndexedSubscript_];
      v10 = [v9 uuid];

      if (!v10)
      {
        break;
      }

      v11 = sub_1A524C674();
      v13 = v12;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A3D3D914(0, *(v7 + 2) + 1, 1, v7);
      }

      v15 = *(v7 + 2);
      v14 = *(v7 + 3);
      if (v15 >= v14 >> 1)
      {
        v7 = sub_1A3D3D914((v14 > 1), v15 + 1, 1, v7);
      }

      ++v6;
      *(v7 + 2) = v15 + 1;
      v16 = &v7[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      objc_autoreleasePoolPop(v8);
      if (v5 == v6)
      {
        goto LABEL_10;
      }
    }
  }

  __break(1u);
}

uint64_t PHAssetCollection.localizedTitleForSearchScope.getter()
{
  sub_1A46E75F0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v2;
  *(inited + 48) = sub_1A524C674();
  *(inited + 56) = v3;
  *(inited + 64) = sub_1A524C674();
  *(inited + 72) = v4;
  v5 = [v0 transientIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A524C674();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v16[0] = v7;
  v16[1] = v9;
  MEMORY[0x1EEE9AC00](v5);
  v15[2] = v16;
  v10 = sub_1A46E7664(sub_1A46E7788, v15, inited);
  swift_setDeallocating();
  sub_1A3C39988(0, &qword_1EB126FA0, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();

  if ((v10 & 1) == 0)
  {
    return sub_1A3C38BD4();
  }

  v11 = [v0 localizedTitle];
  if (!v11)
  {
    return sub_1A3C38BD4();
  }

  v12 = v11;
  v13 = sub_1A524C674();

  return v13;
}

id PHAssetCollection.fetchAssetsForSearchScope(options:)(uint64_t a1)
{
  v2 = [objc_opt_self() fetchAssetsInAssetCollection:v1 options:a1];

  return v2;
}

id sub_1A46E7310(uint64_t a1)
{
  v2 = [objc_opt_self() fetchAssetsInAssetCollection:*v1 options:a1];

  return v2;
}

uint64_t sub_1A46E7384(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_1A524C674();

  return v3;
}

id sub_1A46E7400()
{
  result = [v0 uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A46E74B4(uint64_t a1, SEL *a2)
{
  result = [objc_opt_self() *a2];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1A46E750C()
{
  result = [*v0 uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A46E7594(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = [objc_opt_self() *a4];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1A46E75F0()
{
  if (!qword_1EB1407A8)
  {
    sub_1A3C39988(255, &qword_1EB126FA0, MEMORY[0x1E69E6720]);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1407A8);
    }
  }
}

uint64_t sub_1A46E7664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = *(a3 + 32);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

BOOL sub_1A46E7714(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1A524EAB4() & 1;
    }
  }

  return result;
}

uint64_t sub_1A46E784C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1A46E7CBC(a1);
  (*(*(*(v2 + qword_1EB1EBF10) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1A46E78CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

void sub_1A46E7A34()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for LemonadeHostingController();
  objc_msgSendSuper2(&v1, sel_viewWillLayoutSubviews);
  sub_1A46E7AFC();
}

void sub_1A46E7AB4(void *a1)
{
  v1 = a1;
  sub_1A46E7A34();
}

void sub_1A46E7AFC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 safeAreaInsets];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      type metadata accessor for LemonadeFeedSpec();
      sub_1A46E7F24();
      v17.top = v10;
      v17.left = v12;
      v17.bottom = v14;
      v17.right = v16;
      LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v6, v4), v17);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1A46E7C08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A46E7CBC(uint64_t a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = type metadata accessor for LemonadeFeedSpec();
  v7 = *(v4 + qword_1EB1EBF10);
  v6 = *(v4 + qword_1EB1EBF10 + 8);
  v18[0] = v5;
  v18[1] = v7;
  v18[2] = &protocol witness table for LemonadeFeedSpec;
  v18[3] = v6;
  v8 = type metadata accessor for LemonadeSpecsProviderView();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  v11 = LemonadeFeedSpec.__allocating_init()();
  *(v2 + qword_1EB1407B0) = v11;
  v18[0] = v11;
  v14 = v7;
  v15 = v6;
  v16 = a1;

  _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v17);
  LemonadeSpecsProviderView.init(model:presentationContext:content:)(v18, &v17, sub_1A46E7F7C, v5, v10);
  swift_getWitnessTable();
  v18[0] = sub_1A524B8E4();
  return sub_1A5249624();
}

unint64_t sub_1A46E7F24()
{
  result = qword_1EB13C680;
  if (!qword_1EB13C680)
  {
    type metadata accessor for LemonadeFeedSpec();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C680);
  }

  return result;
}

uint64_t sub_1A46E7FAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A46E8024()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return v0[25];
}

uint64_t sub_1A46E80CC(char a1)
{
  v2 = a1 & 1;
  result = sub_1A524C594();
  if (result)
  {
    v1[25] = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 824))(v5);
  }

  return result;
}

uint64_t sub_1A46E8254@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A46E82D4()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return v0[26];
}

uint64_t sub_1A46E837C(char a1)
{
  v2 = a1 & 1;
  result = sub_1A524C594();
  if (result)
  {
    v1[26] = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 824))(v5);
  }

  return result;
}

uint64_t sub_1A46E851C()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return v0[4];
}

uint64_t sub_1A46E85C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A46E851C();
  *a1 = result;
  return result;
}

uint64_t sub_1A46E8618(uint64_t a1)
{
  result = sub_1A524C594();
  if (result)
  {
    v1[4] = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 824))(v5);
  }

  return result;
}

uint64_t sub_1A46E8788(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A46E87EC()
{
  sub_1A46EE774();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A46E8814(uint64_t *a1@<X8>)
{
  *a1 = sub_1A46EE774();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46E887C(uint64_t a1)
{
  swift_beginAccess();
  v3 = MEMORY[0x1E69E62F8];
  sub_1A46EF014(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1A46F0074(&unk_1EB140910, &qword_1EB12D788, v3);
  v4 = sub_1A524C594();
  if (v4)
  {
    return sub_1A46E8788(a1);
  }

  MEMORY[0x1EEE9AC00](v4);
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 824))(v7);
}

uint64_t sub_1A46E8A90(uint64_t a1)
{
  v3 = *(*v1 + 160);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A46E8AF4()
{
  sub_1A46EE844();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A46E8B1C(uint64_t *a1@<X8>)
{
  *a1 = sub_1A46EE844();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46E8B84(uint64_t a1)
{
  swift_beginAccess();
  v3 = MEMORY[0x1E69E62F8];
  sub_1A46EF014(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1A46F0074(&unk_1EB140910, &qword_1EB12D788, v3);
  v4 = sub_1A524C594();
  if (v4)
  {
    return sub_1A46E8A90(a1);
  }

  MEMORY[0x1EEE9AC00](v4);
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 824))(v7);
}

uint64_t sub_1A46E8D98()
{
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator();
  swift_getWitnessTable();
  sub_1A52415E4();
}

uint64_t sub_1A46E8E9C()
{
  sub_1A46EE914();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A46E8EC4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A46EE914();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A46E8F2C(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  (*(*v1 + 824))(KeyPath, sub_1A46F0170, &v5, MEMORY[0x1E69E7CA8] + 8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A46E9048()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return *(v0 + *(*v0 + 176));
}

uint64_t sub_1A46E9104@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A46E9048();
  *a1 = result;
  return result;
}

uint64_t sub_1A46E9158(uint64_t a1)
{
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + *(*v1 + 176)) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 824))(v5);
  }

  return result;
}

uint64_t sub_1A46E92F8()
{
  sub_1A524D264();
  v0 = *sub_1A486DB9C();
  sub_1A5246DF4();

  return sub_1A46EAE24();
}

uint64_t sub_1A46E9374@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 184);
  swift_beginAccess();
  return sub_1A46F01C0(v1 + v3, a1, &unk_1EB1407C0, sub_1A3E8814C);
}

uint64_t sub_1A46E93F4(uint64_t a1)
{
  v3 = *(*v1 + 184);
  swift_beginAccess();
  sub_1A46EFEAC(a1, v1 + v3);
  swift_endAccess();
  sub_1A46E92F8();
  return sub_1A46EF8F4(a1, &unk_1EB1407C0, sub_1A3E8814C);
}

uint64_t (*sub_1A46E9488(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A46E94F8;
}

uint64_t sub_1A46E94F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A46E92F8();
  }

  return result;
}

uint64_t sub_1A46E9604@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  (*(*v1 + 816))(KeyPath);

  return sub_1A46E9374(a1);
}

uint64_t sub_1A46E96BC(uint64_t a1)
{
  v3 = *v1;
  sub_1A46E9374(v10);
  sub_1A46EF8F4(v10, &unk_1EB1407C0, sub_1A3E8814C);
  v9 = *(v3 + 80);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  (*(*v1 + 824))(KeyPath, sub_1A46EE6F4, &v6, MEMORY[0x1E69E7CA8] + 8);

  return sub_1A46EF8F4(a1, &unk_1EB1407C0, sub_1A3E8814C);
}

void (*sub_1A46E97E8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 816))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v6);
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46E9488(v4);
  return sub_1A46E99B8;
}

void sub_1A46E99B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator();
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v1);
}