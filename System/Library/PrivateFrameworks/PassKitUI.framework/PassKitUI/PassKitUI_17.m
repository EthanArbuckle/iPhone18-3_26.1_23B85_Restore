uint64_t sub_1BD2088AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

char *sub_1BD20899C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v0 = v38;
  v1 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v2 = [v38 editingFieldArrangement];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
    v3 = sub_1BE052744();

    v4 = *(v3 + 16);
    if (v4)
    {
      result = sub_1BD531D80(0, v4, 0);
      v6 = 0;
      v7 = v1;
      v34 = v3;
      v35 = v3 + 32;
      v33 = v4;
      do
      {
        if (v6 >= *(v3 + 16))
        {
          goto LABEL_43;
        }

        v8 = *(v35 + 8 * v6);
        v9 = *(v8 + 16);
        if (v9)
        {
          v36 = v7;
          sub_1BE048C84();
          result = sub_1BD531DC0(0, v9, 0);
          v10 = 0;
          v11 = v1;
          v12 = (v8 + 40);
          while (v10 < *(v8 + 16))
          {
            v13 = *(v12 - 1);
            v14 = *v12;
            sub_1BE048C84();
            result = sub_1BD251780(v13, v14);
            if (result == 8)
            {
              goto LABEL_46;
            }

            v37 = v11;
            v16 = *(v11 + 2);
            v15 = *(v11 + 3);
            if (v16 >= v15 >> 1)
            {
              v17 = result;
              sub_1BD531DC0((v15 > 1), v16 + 1, 1);
              result = v17;
              v11 = v37;
            }

            ++v10;
            *(v11 + 2) = v16 + 1;
            v11[v16 + 32] = result;
            v12 += 2;
            if (v9 == v10)
            {

              v7 = v36;
              v4 = v33;
              v3 = v34;
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          return result;
        }

        v11 = v1;
LABEL_14:
        v19 = *(v7 + 2);
        v18 = *(v7 + 3);
        if (v19 >= v18 >> 1)
        {
          result = sub_1BD531D80((v18 > 1), v19 + 1, 1);
        }

        ++v6;
        *(v7 + 2) = v19 + 1;
        *&v7[8 * v19 + 32] = v11;
      }

      while (v6 != v4);

      v0 = v38;
      v20 = *(v7 + 2);
      if (v20)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }

    v7 = MEMORY[0x1E69E7CC0];
    v20 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v20)
    {
LABEL_36:
      v1 = MEMORY[0x1E69E7CC0];
LABEL_37:

      return v1;
    }

LABEL_18:
    v21 = 0;
    v22 = v7 + 32;
    v1 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v21 >= *(v7 + 2))
      {
        goto LABEL_40;
      }

      v23 = v7;
      v24 = *&v22[8 * v21];
      v25 = *(v24 + 16);
      v26 = *(v1 + 2);
      v27 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_41;
      }

      sub_1BE048C84();
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v27 <= *(v1 + 3) >> 1)
      {
        if (!*(v24 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v26 <= v27)
        {
          v28 = v26 + v25;
        }

        else
        {
          v28 = v26;
        }

        result = sub_1BD1D7CC4(result, v28, 1, v1);
        v1 = result;
        if (!*(v24 + 16))
        {
LABEL_19:

          if (v25)
          {
            goto LABEL_42;
          }

          goto LABEL_20;
        }
      }

      v29 = *(v1 + 2);
      if ((*(v1 + 3) >> 1) - v29 < v25)
      {
        goto LABEL_44;
      }

      memcpy(&v1[v29 + 32], (v24 + 32), v25);

      if (v25)
      {
        v30 = *(v1 + 2);
        v31 = __OFADD__(v30, v25);
        v32 = v30 + v25;
        if (v31)
        {
          goto LABEL_45;
        }

        *(v1 + 2) = v32;
      }

LABEL_20:
      ++v21;
      v7 = v23;
      if (v20 == v21)
      {
        goto LABEL_37;
      }
    }
  }

  return v1;
}

uint64_t sub_1BD208D3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void sub_1BD208DB0(void *a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BE04B0D4();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04B0F4();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA80);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v62 = &v56 - v17;
  [a1 mutableCopy];
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD3DA60);
  swift_dynamicCast();
  v18 = v68;
  v19 = [v68 street];
  v20 = sub_1BE052434();
  v22 = v21;

  v69 = v20;
  v70 = v22;
  sub_1BD0DDEBC();
  v23 = sub_1BE053604();

  v24 = *(v23 + 16);
  v67 = v18;
  if (v24 < 3)
  {
  }

  else
  {
    v69 = v23;
    v70 = v23 + 32;
    v71 = xmmword_1BE0C1C30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAD0);
    sub_1BD0DE4F4(&qword_1EBD3DAD8, &qword_1EBD3DAD0);
    sub_1BD20DFE4();
    v18 = v67;
    sub_1BE0526D4();

    v25 = sub_1BE052404();

    [v18 setStreet_];
  }

  v26 = [v18 ISOCountryCode];
  sub_1BE052434();

  sub_1BE0524C4();

  v27 = sub_1BE052404();

  [v18 setISOCountryCode_];

  v28 = [objc_opt_self() supportedCountries];
  sub_1BD0E5E8C(0, &qword_1EBD3DA70);
  v29 = sub_1BE052744();

  if (v29 >> 62)
  {
    v30 = sub_1BE053704();
    v66 = a2;
    if (v30)
    {
      goto LABEL_6;
    }

LABEL_16:

    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v66 = a2;
  if (!v30)
  {
    goto LABEL_16;
  }

LABEL_6:
  v69 = MEMORY[0x1E69E7CC0];
  sub_1BD03B254(0, v30 & ~(v30 >> 63), 0);
  if (v30 < 0)
  {
    __break(1u);
    return;
  }

  v56 = a1;
  v57 = a3;
  v58 = v4;
  v31 = 0;
  v32 = v69;
  do
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1BFB40900](v31, v29);
    }

    else
    {
      v33 = *(v29 + 8 * v31 + 32);
    }

    v34 = v33;
    v35 = [v33 isoCountryCode];
    sub_1BE052434();

    v36 = sub_1BE0524C4();
    v38 = v37;

    v69 = v32;
    v40 = *(v32 + 16);
    v39 = *(v32 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_1BD03B254((v39 > 1), v40 + 1, 1);
      v32 = v69;
    }

    ++v31;
    *(v32 + 16) = v40 + 1;
    v41 = v32 + 16 * v40;
    *(v41 + 32) = v36;
    *(v41 + 40) = v38;
  }

  while (v30 != v31);

  a3 = v57;
  v4 = v58;
  a1 = v56;
LABEL_17:
  v42 = v67;
  v43 = [v67 ISOCountryCode];
  v44 = sub_1BE052434();
  v46 = v45;

  v69 = v44;
  v70 = v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v56 - 2) = &v69;
  LOBYTE(v43) = sub_1BD2FF084(sub_1BD20DFC4, (&v56 - 4), v32);

  if ((v43 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v49 = v59;
    sub_1BE04D8B4();

    v50 = v63;
    sub_1BE04B0E4();
    (*(v60 + 8))(v49, v61);
    v51 = v62;
    sub_1BE04B0C4();
    (*(v64 + 8))(v50, v65);
    v52 = sub_1BE04B084();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      sub_1BD20DE2C(v51);
    }

    else
    {
      sub_1BE04B004();
      (*(v53 + 8))(v51, v52);
      sub_1BE0524C4();
    }

    v54 = sub_1BE052404();

    [v42 setISOCountryCode_];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v69 = v42;
  v55 = v42;
  sub_1BE048964();
  sub_1BE04D8C4();
  *(v4 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressSource) = v66;

  *(v4 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressFormattingConstrained) = a3;
  sub_1BD20A594();
}

id sub_1BD20958C()
{
  v21 = [objc_allocWithZone(MEMORY[0x1E695CF30]) init];
  v0 = sub_1BD20899C();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = 32;
    v3 = *MEMORY[0x1E695CC30];
    v20 = v0;
    while (1)
    {
      v22 = v2;
      v23 = v1;
      v4 = v0[v2];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v5 = &selRef_country;
      if (v4 != 6)
      {
        v5 = &selRef_ISOCountryCode;
      }

      v6 = &selRef_state;
      if (v4 != 4)
      {
        v6 = &selRef_postalCode;
      }

      if (v4 <= 5)
      {
        v5 = v6;
      }

      v7 = &selRef_city;
      if (v4 != 2)
      {
        v7 = &selRef_subAdministrativeArea;
      }

      v8 = &selRef_street;
      if (v4)
      {
        v8 = &selRef_subLocality;
      }

      if (v4 <= 1)
      {
        v7 = v8;
      }

      if (v4 <= 3)
      {
        v5 = v7;
      }

      v9 = v3;
      v10 = [v24 *v5];
      sub_1BE052434();

      v11 = sub_1BE052404();

      sub_1BE052434();
      v12 = sub_1BE052404();

      [v21 setValue:v11 forKey:v12];

      v3 = v9;
      v13 = sub_1BE052434();
      v15 = v14;
      if (v13 == sub_1BE052434() && v15 == v16)
      {
        break;
      }

      v17 = sub_1BE053B84();

      if (v17)
      {
        goto LABEL_23;
      }

LABEL_4:
      v2 = v22 + 1;
      v1 = v23 - 1;
      v0 = v20;
      if (v23 == 1)
      {
        goto LABEL_25;
      }
    }

LABEL_23:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v18 = [v24 ISOCountryCode];

    if (!v18)
    {
      sub_1BE052434();
      v18 = sub_1BE052404();
    }

    [v21 setISOCountryCode_];

    goto LABEL_4;
  }

LABEL_25:

  return v21;
}

void sub_1BD209980(void *a1, char a2, uint64_t a3)
{
  [a1 copy];
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD3DAC8);
  swift_dynamicCast();
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v9;
  sub_1BE048964();
  sub_1BE04D8C4();
  v8 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressSource;
  *(v3 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressSource) = a2;

  *(v3 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressFormattingConstrained) = a3;
  sub_1BD208DB0(v7, *(v3 + v8), a3);
}

uint64_t sub_1BD209A98(uint64_t a1)
{
  v2 = v1;
  v69 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA78);
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v76 = &v65 - v5;
  v6 = sub_1BE04B0D4();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v73 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA80);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v68 = &v65 - v11;
  v12 = sub_1BE04B0F4();
  v13 = *(v12 - 8);
  v80 = v12;
  v81 = v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v71 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v72 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA88);
  v66 = *(v19 - 8);
  v67 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v65 = &v65 - v21;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA90);
  v22 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v23);
  v25 = &v65 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA98);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v65 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAA0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v65 - v34;
  v36 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__originalAddress;
  v83 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA20);
  sub_1BE04D874();
  (*(v32 + 32))(v2 + v36, v35, v31);
  v37 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__invalidKeys;
  v38 = MEMORY[0x1E69E7CD0];
  v83 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA30);
  sub_1BE04D874();
  v39 = *(v27 + 32);
  v39(v2 + v37, v30, v26);
  v40 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__requiredKeys;
  v83 = v38;
  sub_1BE04D874();
  v39(v2 + v40, v30, v26);
  v41 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__excludedKeys;
  v83 = v38;
  v42 = v69;
  sub_1BE04D874();
  v43 = v2 + v41;
  v44 = v80;
  v39(v43, v30, v26);
  v45 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__contactFormatValidator;
  v83 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA40);
  sub_1BE04D874();
  v46 = *(v22 + 32);
  v70 = v45;
  v47 = v25;
  v48 = v68;
  v46(v2 + v45, v47, v79);
  v49 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__formattingSpecification;
  v83 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA50);
  v50 = v65;
  sub_1BE04D874();
  (*(v66 + 32))(v2 + v49, v50, v67);
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BE053704())
  {
    v38 = sub_1BD1120F4(MEMORY[0x1E69E7CC0]);
  }

  v69 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel_subscribers;
  *(v2 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel_subscribers) = v38;
  v51 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__countryCodeDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAA8);
  swift_allocObject();
  *(v2 + v51) = sub_1BE04D834();
  v52 = v81;
  v53 = *(v81 + 16);
  v54 = v72;
  v53(v72, v42, v44);
  swift_beginAccess();
  v53(v71, v54, v44);
  sub_1BE04D874();
  v55 = *(v52 + 8);
  v81 = v52 + 8;
  v55(v54, v44);
  swift_endAccess();
  v56 = [objc_allocWithZone(MEMORY[0x1E695CF30]) init];
  v57 = v73;
  sub_1BE04B0E4();
  sub_1BE04B0C4();
  (*(v74 + 8))(v57, v75);
  v58 = sub_1BE04B084();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v48, 1, v58) == 1)
  {
    sub_1BD20DE2C(v48);
  }

  else
  {
    sub_1BE04B004();
    (*(v59 + 8))(v48, v58);
    sub_1BE0524C4();
  }

  v60 = sub_1BE052404();

  [v56 setISOCountryCode_];

  swift_beginAccess();
  v82 = v56;
  sub_1BD0E5E8C(0, &qword_1EBD3DA60);
  v61 = v56;
  sub_1BE04D874();
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressSource) = 6;
  *(v2 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressFormattingConstrained) = 2;
  swift_beginAccess();
  v62 = v76;
  sub_1BE04D884();
  swift_endAccess();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v2;
  sub_1BD0DE4F4(&qword_1EBD3DAB0, &qword_1EBD3DA78);
  v63 = v78;
  sub_1BE04D954();

  (*(v77 + 8))(v62, v63);
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();

  sub_1BD20A594();

  v55(v42, v80);
  return v2;
}

uint64_t sub_1BD20A474(void **a1, uint64_t a2)
{
  v3 = *a1;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v4 = [v8 ISOCountryCode];

  if (v4)
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:

    goto LABEL_7;
  }

  sub_1BE052434();
  v4 = sub_1BE052404();

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = [v3 hasFormatValidationConfigurationForCountryCode_];

  if ((v5 & 1) == 0)
  {
LABEL_7:
    v6 = 2;
    goto LABEL_8;
  }

  v6 = 1;
LABEL_8:
  *(a2 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressFormattingConstrained) = v6;
}

void sub_1BD20A594()
{
  v1 = v0;
  type metadata accessor for PostalAddressEditingModel();
  sub_1BD20DEB4();
  sub_1BE04D814();
  sub_1BE04D854();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v2 = objc_opt_self();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v3 = [v14 ISOCountryCode];

  sub_1BE052434();
  sub_1BE0524B4();

  v4 = sub_1BE052404();

  v5 = [v2 localizedCountryNameForISOCountryCode_];

  if (!v5)
  {
    sub_1BE052434();
    v5 = sub_1BE052404();
  }

  [v14 setCountry_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6 = [v14 ISOCountryCode];

  sub_1BE052434();
  sub_1BE0524B4();

  v7 = sub_1BE052404();

  v8 = [v2 specificationForCountry_];

  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v8;
  sub_1BE048964();
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v9 = v8;
  v10 = [v8 ISOCountryCode];

  if (!v10)
  {
    sub_1BE052434();
    v10 = sub_1BE052404();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!v15)
  {

    goto LABEL_9;
  }

  v11 = [v15 hasFormatValidationConfigurationForCountryCode_];

  if ((v11 & 1) == 0)
  {
LABEL_9:
    v12 = 2;
    goto LABEL_10;
  }

  v12 = 1;
LABEL_10:
  *(v1 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressFormattingConstrained) = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  v13 = [v15 ISOCountryCode];

  sub_1BE052434();
  sub_1BE04D824();

  sub_1BD20AA3C();
}

void sub_1BD20AA3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v0 = [v44 state];
  if (!v0)
  {
    sub_1BE052434();
    v0 = sub_1BE052404();
  }

  v1 = sub_1BE052434();
  v3 = v2;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!v44)
  {
    goto LABEL_36;
  }

  v4 = *MEMORY[0x1E695CC28];
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  sub_1BE04D8B4();

  v6 = [v44 ISOCountryCode];

  if (!v6)
  {
    sub_1BE052434();
    v6 = sub_1BE052404();
  }

  v7 = [v44 contactFieldConfigurationForPostalField:v5 forCountryCode:v6];

  if (!v7)
  {
LABEL_36:

    return;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

    return;
  }

  v9 = v8;
  v10 = [v8 pickerItems];
  if (!v10)
  {
LABEL_64:

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:

    __break(1u);
    return;
  }

  v11 = v10;
  v42 = v7;
  v43 = v3;
  v41 = v1;
  sub_1BD0E5E8C(0, &qword_1EBD3DA68);
  v12 = sub_1BE052744();

  v13 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
LABEL_51:
    v14 = sub_1BE053704();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  while (v14 != v15)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1BFB40900](v15, v12);
    }

    else
    {
      if (v15 >= *(v13 + 16))
      {
        goto LABEL_48;
      }

      v16 = *(v12 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v18 = [v16 isValueAccepted_];

    ++v15;
    if (v18)
    {

      goto LABEL_36;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v1 = [v44 state];
  if (!v1)
  {
    sub_1BE052434();
    v1 = sub_1BE052404();
  }

  v0 = sub_1BE052434();
  v20 = v19;

  v21 = [v9 pickerItems];
  if (!v21)
  {
    goto LABEL_66;
  }

  v22 = v21;
  v39 = v0;
  v40 = v20;
  v23 = sub_1BE052744();

  v13 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
    v12 = sub_1BE053704();
  }

  else
  {
    v12 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  while (v12 != v24)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1BFB40900](v24, v23);
    }

    else
    {
      if (v24 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v25 = *(v23 + 8 * v24 + 32);
    }

    v26 = v25;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_49;
    }

    v0 = [v25 isValueAccepted_];

    ++v24;
    if (v0)
    {

      v33 = v43;
      v35 = v40;
      v34 = v41;
      v36 = v39;
      goto LABEL_55;
    }
  }

  v27 = [v9 pickerItems];
  if (!v27)
  {
    goto LABEL_65;
  }

  v0 = v27;
  v28 = sub_1BE052744();

  v33 = v43;
  v34 = v41;
  if (!(v28 >> 62))
  {
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

LABEL_53:

LABEL_54:
    v36 = 0;
    v35 = 0xE000000000000000;
    goto LABEL_55;
  }

  if (!sub_1BE053704())
  {
    goto LABEL_53;
  }

LABEL_42:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1BFB40900](0, v28);
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_64;
    }

    v29 = *(v28 + 32);
  }

  v30 = v29;

  v31 = [v30 submissionValue];

  if (!v31)
  {
    goto LABEL_54;
  }

  v36 = sub_1BE052434();
  v35 = v32;

LABEL_55:
  if (v36 == v34 && v35 == v33)
  {
  }

  else
  {
    v37 = sub_1BE053B84();

    if (v37)
    {
    }

    else
    {
      type metadata accessor for PostalAddressEditingModel();
      sub_1BD20DEB4();
      sub_1BE04D814();
      sub_1BE04D854();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v38 = sub_1BE052404();

      [v44 setState_];
    }
  }
}

uint64_t sub_1BD20B140(unsigned __int8 a1)
{
  v1 = 0x31746565727473;
  v2 = 0x6F436C6174736F70;
  if (a1 != 6)
  {
    v2 = 0x7972746E756F63;
  }

  v3 = 0xD000000000000015;
  if (a1 != 4)
  {
    v3 = 0x6574617473;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6C61636F4C627573;
  if (a1 != 2)
  {
    v4 = 2037672291;
  }

  if (a1)
  {
    v1 = 0x32746565727473;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BD20B268@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD20DBA0();
  *a1 = result;
  return result;
}

void sub_1BD20B298(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_1BE052434();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void *sub_1BD20B2EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_1BD20B3A0()
{
  swift_getKeyPath();
  type metadata accessor for PostalAddressEditingModel();
  sub_1BD20DEB4();
  sub_1BE04D814();
  sub_1BE04D854();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_setAtReferenceWritableKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAC0);
  swift_getKeyPath();
  v0 = sub_1BE052334();

  if (v0)
  {
    sub_1BD20A594();
  }
}

uint64_t sub_1BD20B4F4(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v2 = sub_1BD2514B0(a1);
  v4 = v3;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!v25)
  {
    goto LABEL_9;
  }

  v5 = sub_1BD2514B0(a1);
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = a1;
  v9 = sub_1BD111A78(inited);
  swift_setDeallocating();
  v25 = v9;
  v10 = sub_1BD251514();
  v12 = v11;
  if (v10 == sub_1BE052434() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_1BE053B84();

    if ((v14 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_1BD2A5394(&v24, 6);
LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v15 = sub_1BD6A0F4C(v25, v24);

  if (v15)
  {

    goto LABEL_9;
  }

  if (v2 != v5 || v4 != v7)
  {
    v23 = sub_1BE053B84();

    if (v23)
    {
      goto LABEL_20;
    }

LABEL_9:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v16 = v25;
    if (v25)
    {
      sub_1BD251514();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v17 = v25;
      v18 = [v25 ISOCountryCode];

      if (!v18)
      {
        sub_1BE052434();
        v18 = sub_1BE052404();
      }

      v19 = sub_1BE052404();

      v20 = sub_1BE052404();

      v21 = [v16 isPostalAddressFieldEntry:v19 validForPostalFieldKey:v20 forCountryCode:v18];

      if (!v21)
      {
        return 0;
      }
    }

    else
    {
    }

    return 1;
  }

LABEL_20:

  return 0;
}

BOOL sub_1BD20B8F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v0 = sub_1BD208538(v21);

  v1 = *(v0 + 16);
  if (v1)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v1, 0);
    v2 = 32;
    v3 = v22;
    do
    {
      v4 = *(v0 + v2);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v5 = [v20 *off_1E800F838[v4]];
      v6 = sub_1BE052434();
      v8 = v7;

      v10 = *(v22 + 16);
      v9 = *(v22 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1BD03B254((v9 > 1), v10 + 1, 1);
      }

      *(v22 + 16) = v10 + 1;
      v11 = v22 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      ++v2;
      --v1;
    }

    while (v1);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v12 = (v3 + 40);
  v13 = *(v3 + 16) + 1;
  do
  {
    if (!--v13)
    {
      break;
    }

    v15 = *(v12 - 1);
    v14 = *v12;
    v12 += 2;
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  while ((v14 & 0x2000000000000000) != 0 ? HIBYTE(v14) & 0xF : v16);
  v18 = v13 == 0;

  return v18;
}

uint64_t sub_1BD20BAFC()
{
  v0 = sub_1BD20899C();
  v1 = *(v0 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v26 = MEMORY[0x1E69E7CC0];
    result = sub_1BD531DC0(0, v1, 0);
    v4 = 0;
    v5 = v26;
    do
    {
      if (v4 >= *(v0 + 2))
      {
        __break(1u);
        return result;
      }

      v6 = v0[v4 + 32];
      v7 = sub_1BE052434();
      v9 = v8;
      if (v7 == sub_1BE052434() && v9 == v10)
      {

        v6 = 7;
      }

      else
      {
        v11 = sub_1BE053B84();

        if (v11)
        {
          v6 = 7;
        }
      }

      v13 = *(v26 + 16);
      v12 = *(v26 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1BD531DC0((v12 > 1), v13 + 1, 1);
      }

      ++v4;
      *(v26 + 16) = v13 + 1;
      *(v26 + v13 + 32) = v6;
    }

    while (v1 != v4);

    v2 = MEMORY[0x1E69E7CC0];
    v14 = *(v26 + 16);
    if (!v14)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v14 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v14)
  {
LABEL_13:
    v27 = v2;
    sub_1BD531DF0(0, v14, 0);
    v15 = 32;
    v16 = v27;
    do
    {
      v17 = sub_1BD20B4F4(*(v5 + v15));
      v28 = v16;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        v20 = v17;
        sub_1BD531DF0((v18 > 1), v19 + 1, 1);
        v17 = v20;
        v16 = v28;
      }

      *(v16 + 16) = v19 + 1;
      *(v16 + v19 + 32) = v17 & 1;
      ++v15;
      --v14;
    }

    while (v14);

    goto LABEL_20;
  }

LABEL_19:

  v16 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v21 = *(v16 + 16);
  v22 = (v16 + 32);
  do
  {
    v23 = v21;
    if (!v21)
    {
      break;
    }

    v24 = *v22++;
    --v21;
  }

  while ((v24 & 1) != 0);
  v25 = v23 == 0;

  return v25;
}

uint64_t sub_1BD20BE24()
{
  v1 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__locale;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAE8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__originalAddress;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__invalidKeys;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA98);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__requiredKeys, v6);
  v7(v0 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__excludedKeys, v6);
  v8 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__contactFormatValidator;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA90);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__formattingSpecification;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA88);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel___draftAddress;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAF0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);

  return v0;
}

uint64_t sub_1BD20C078()
{
  sub_1BD20BE24();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PostalAddressEditingModel()
{
  result = qword_1EBD3DA00;
  if (!qword_1EBD3DA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD20C124()
{
  sub_1BD20C374();
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD3DA18, &qword_1EBD3DA20);
    if (v1 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD3DA28, &qword_1EBD3DA30);
      if (v2 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD3DA38, &qword_1EBD3DA40);
        if (v3 <= 0x3F)
        {
          sub_1BD0E4578(319, &qword_1EBD3DA48, &qword_1EBD3DA50);
          if (v4 <= 0x3F)
          {
            sub_1BD20C3CC();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1BD20C374()
{
  if (!qword_1EBD3DA10)
  {
    sub_1BE04B0F4();
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3DA10);
    }
  }
}

void sub_1BD20C3CC()
{
  if (!qword_1EBD3DA58)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3DA60);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3DA58);
    }
  }
}

uint64_t sub_1BD20C434@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PostalAddressEditingModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

void sub_1BD20C474(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x31746565727473;
  v5 = 0xEA00000000006564;
  v6 = 0x6F436C6174736F70;
  if (v2 != 6)
  {
    v6 = 0x7972746E756F63;
    v5 = 0xE700000000000000;
  }

  v7 = 0x80000001BE0C1D20;
  v8 = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0x6574617473;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000797469;
  v10 = 0x6C61636F4C627573;
  if (v2 != 2)
  {
    v10 = 2037672291;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x32746565727473;
    v3 = 0xE700000000000000;
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

uint64_t sub_1BD20C578()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v0 = MEMORY[0x1E69E7CC0];
  if (!v72)
  {
    return v0;
  }

  v59 = v72;
  v1 = [v72 editingFieldArrangement];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
  v2 = sub_1BE052744();

  v3 = *(v2 + 16);
  if (!v3)
  {

    v5 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v36 = v5[2];
    v0 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      v37 = 0;
      v38 = v5 + 4;
      v65 = v5;
      v69 = v5 + 4;
      v70 = v5[2];
      do
      {
        if (v37 >= v5[2])
        {
          goto LABEL_85;
        }

        v39 = v38[v37];
        v40 = sub_1BE048C84();
        if (sub_1BD400A30(v40, &unk_1F3B8CF08))
        {

          v41 = &unk_1F3B8CF80;
        }

        else
        {
          v42 = *(v39 + 16);
          if (v42)
          {
            v71 = v0;
            v73 = MEMORY[0x1E69E7CC0];
            sub_1BD531E10(0, v42, 0);
            v43 = 0;
            v44 = v73;
            v45 = v39 + 32;
            while (v43 < *(v39 + 16))
            {
              v46 = *(v45 + v43);
              if (v46 > 3)
              {
                if (*(v45 + v43) > 5u)
                {
                  if (v46 != 6)
                  {
                    goto LABEL_90;
                  }

                  v47 = 7;
                }

                else if (v46 == 4)
                {
                  v47 = 5;
                }

                else
                {
                  v47 = 6;
                }
              }

              else if (*(v45 + v43) > 2u)
              {
                v47 = 4;
              }

              else if (v46 == 1)
              {
                v47 = 2;
              }

              else
              {
                if (v46 != 2)
                {
                  goto LABEL_90;
                }

                v47 = 3;
              }

              v49 = *(v73 + 16);
              v48 = *(v73 + 24);
              if (v49 >= v48 >> 1)
              {
                sub_1BD531E10((v48 > 1), v49 + 1, 1);
              }

              ++v43;
              *(v73 + 16) = v49 + 1;
              *(v73 + v49 + 32) = v47;
              if (v42 == v43)
              {
                v0 = v71;
                v5 = v65;
                goto LABEL_67;
              }
            }

            goto LABEL_83;
          }

          v44 = MEMORY[0x1E69E7CC0];
LABEL_67:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA28);
          v41 = swift_allocObject();
          v41[1] = xmmword_1BE0B69E0;
          *(v41 + 4) = v44;

          v38 = v69;
          v36 = v70;
        }

        v50 = *(v41 + 2);
        v51 = v0[2];
        v52 = v51 + v50;
        if (__OFADD__(v51, v50))
        {
          goto LABEL_86;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v52 <= v0[3] >> 1)
        {
          if (!v50)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v51 <= v52)
          {
            v54 = v51 + v50;
          }

          else
          {
            v54 = v51;
          }

          v0 = sub_1BD1D7CD8(isUniquelyReferenced_nonNull_native, v54, 1, v0);
          if (!v50)
          {
LABEL_41:

            goto LABEL_42;
          }
        }

        if ((v0[3] >> 1) - v0[2] < v50)
        {
          goto LABEL_87;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA30);
        swift_arrayInitWithCopy();

        v55 = v0[2];
        v56 = __OFADD__(v55, v50);
        v57 = v55 + v50;
        if (v56)
        {
          goto LABEL_88;
        }

        v0[2] = v57;
LABEL_42:
        ++v37;
      }

      while (v37 != v36);
    }

    return v0;
  }

  sub_1BD531D80(0, v3, 0);
  v4 = 0;
  v5 = v0;
  v62 = v2 + 32;
  v60 = v2;
  v61 = v3;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      goto LABEL_84;
    }

    v63 = v4;
    v6 = *(v62 + 8 * v4);
    v7 = *(v6 + 16);
    v66 = v6;
    if (v7)
    {
      break;
    }

    sub_1BE048C84();
    v16 = v0[2];
    if (v16)
    {
      v64 = v5;
      v9 = v0;
      goto LABEL_15;
    }

    v19 = v0;
LABEL_33:
    v34 = v5[2];
    v33 = v5[3];
    v35 = v63;
    if (v34 >= v33 >> 1)
    {
      sub_1BD531D80((v33 > 1), v34 + 1, 1);
      v35 = v63;
    }

    v4 = v35 + 1;
    v5[2] = v34 + 1;
    v5[v34 + 4] = v19;
    if (v4 == v61)
    {

      goto LABEL_39;
    }
  }

  sub_1BE048C84();
  sub_1BD531DC0(0, v7, 0);
  v8 = 0;
  v9 = v0;
  v10 = (v6 + 40);
  while (v8 < *(v6 + 16))
  {
    v11 = *(v10 - 1);
    v12 = *v10;
    sub_1BE048C84();
    v13 = sub_1BD251780(v11, v12);
    if (v13 == 8)
    {
      goto LABEL_89;
    }

    v72 = v9;
    v15 = v9[2];
    v14 = v9[3];
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v17 = v13;
      sub_1BD531DC0((v14 > 1), v15 + 1, 1);
      v13 = v17;
      v9 = v72;
    }

    ++v8;
    v9[2] = v16;
    *(v9 + v15 + 32) = v13;
    v10 += 2;
    v6 = v66;
    if (v7 == v8)
    {
      v64 = v5;
LABEL_15:
      v18 = 0;
      v67 = v9 + 4;
      v68 = v16;
      v19 = v0;
      do
      {
        v21 = *(v67 + v18);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        if (v72[2] && (sub_1BE053D04(), sub_1BE052434(), sub_1BE052524(), , v22 = sub_1BE053D64(), v23 = -1 << *(v72 + 32), v24 = v22 & ~v23, ((*(v72 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v24) & 1) != 0))
        {
          v25 = ~v23;
          while (1)
          {
            v26 = sub_1BE052434();
            v28 = v27;
            if (v26 == sub_1BE052434() && v28 == v29)
            {
              break;
            }

            v30 = sub_1BE053B84();

            if (v30)
            {
              goto LABEL_17;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v72 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v24) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

LABEL_17:

          v20 = v68;
        }

        else
        {
LABEL_26:

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BD531DC0(0, v19[2] + 1, 1);
          }

          v32 = v19[2];
          v31 = v19[3];
          v20 = v68;
          if (v32 >= v31 >> 1)
          {
            sub_1BD531DC0((v31 > 1), v32 + 1, 1);
          }

          v19[2] = v32 + 1;
          *(v19 + v32 + 32) = v21;
        }

        ++v18;
      }

      while (v18 != v20);

      v0 = MEMORY[0x1E69E7CC0];
      v5 = v64;
      v2 = v60;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000019, 0x80000001BE11E3A0);
  sub_1BE053974();
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD20CF14()
{
  v0 = sub_1BD251514();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v4)
  {
    v1 = sub_1BE052404();
    v2 = [v4 localizedPlaceholderForKey_];

    if (v2)
    {
      v0 = sub_1BE052434();
    }
  }

  return v0;
}

id sub_1BD20D008(char a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v6 = MEMORY[0x1EEE9AC00](v2, v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v9 = v5;
    (*(v3 + 104))(v8, *MEMORY[0x1E69B8068], v6);
    result = PKPassKitBundle();
    if (result)
    {
      v11 = result;
      v12 = sub_1BE04B6F4();

      (*(v3 + 8))(v8, v9);
      return v12;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return sub_1BD20CF14();
  }

  return result;
}

uint64_t sub_1BD20D1DC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BE053B84(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BE053B84();
    }
  }

  return result;
}

char *sub_1BD20D280()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v0 = v24;
  if (!v24)
  {
    return v0;
  }

  sub_1BD251514();
  v1 = sub_1BE052404();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v2 = [v24 ISOCountryCode];

  if (!v2)
  {
    sub_1BE052434();
    v2 = sub_1BE052404();
  }

  v3 = [v24 contactFieldConfigurationForPostalField:v1 forCountryCode:v2];

  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    return 0;
  }

  result = [v4 pickerItems];
  if (result)
  {
    v6 = result;
    sub_1BD0E5E8C(0, &qword_1EBD3DA68);
    v7 = sub_1BE052744();

    if (v7 >> 62)
    {
      goto LABEL_26;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v22 = v3;
        v25 = MEMORY[0x1E69E7CC0];
        result = sub_1BD531E40(0, v8 & ~(v8 >> 63), 0);
        if (v8 < 0)
        {
          break;
        }

        v9 = 0;
        v0 = v25;
        while (1)
        {
          v10 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if ((v7 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1BFB40900](v9, v7);
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v11 = *(v7 + 8 * v9 + 32);
          }

          v12 = v11;
          result = [v11 submissionValue];
          if (!result)
          {
            goto LABEL_30;
          }

          v13 = result;
          v14 = sub_1BE052434();
          v16 = v15;

          result = [v12 displayName];
          if (!result)
          {
            goto LABEL_31;
          }

          v17 = result;
          v18 = sub_1BE052434();
          v23 = v19;

          v3 = v25[2];
          v20 = v25[3];
          if (v3 >= v20 >> 1)
          {
            sub_1BD531E40((v20 > 1), v3 + 1, 1);
          }

          v25[2] = v3 + 1;
          v21 = &v25[4 * v3];
          v21[4] = v14;
          v21[5] = v16;
          v21[6] = v18;
          v21[7] = v23;
          ++v9;
          if (v10 == v8)
          {

            return v0;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v8 = sub_1BE053704();
        if (!v8)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_27:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_32:
  __break(1u);
  return result;
}

char *sub_1BD20D60C(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u && a1 != 6)
    {
      return sub_1BD20DBEC();
    }
  }

  else if (a1 < 2u)
  {
    return 0;
  }

  return sub_1BD20D280();
}

uint64_t sub_1BD20D69C(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 == 6)
    {
      v5 = 5;
    }

    else
    {
      v5 = a1;
    }

    if (a1 == 4)
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }

    if (a1 <= 5u)
    {
      a1 = v6;
    }

    else
    {
      a1 = v5;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      a1 = 1;
    }

    else
    {
      a1 = 2;
    }
  }

  else if (a1)
  {
    v1 = sub_1BD20B2EC();
    v3 = v2;

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v4)
    {
      return 1;
    }

    a1 = 0;
  }

  return sub_1BD20B4F4(a1);
}

uint64_t sub_1BD20D768()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD20D7E4(uint64_t a1)
{
  v2 = sub_1BE04B0F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  (v12)(v6, v11, v2);
  sub_1BE048964();
  sub_1BE04D8C4();
  return (*(v3 + 8))(v11, v2);
}

uint64_t sub_1BD20D954@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD20D9D4(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  v2 = v1;
  return sub_1BE04D8C4();
}

void sub_1BD20DAB0(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD20AA3C();
}

uint64_t sub_1BD20DB2C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD20DBA0()
{
  v0 = sub_1BE053A44();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

char *sub_1BD20DBEC()
{
  v23 = objc_opt_self();
  v0 = [v23 supportedCountries];
  sub_1BD0E5E8C(0, &qword_1EBD3DA70);
  v1 = sub_1BE052744();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1BE053704();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_1BD531E40(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v24;
    v6 = v1;
    v22 = v1 & 0xC000000000000001;
    v7 = v1;
    do
    {
      if (v22)
      {
        v8 = MEMORY[0x1BFB40900](v4, v6);
      }

      else
      {
        v8 = *(v6 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = [v8 isoCountryCode];
      sub_1BE052434();

      sub_1BE0524B4();
      v11 = sub_1BE052404();

      v12 = [v23 localizedCountryNameForISOCountryCode_];

      v13 = sub_1BE052434();
      v15 = v14;

      v16 = sub_1BE0524C4();
      v18 = v17;

      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1BD531E40((v19 > 1), v20 + 1, 1);
      }

      ++v4;
      *(v24 + 16) = v20 + 1;
      v21 = (v24 + 32 * v20);
      v21[4] = v16;
      v21[5] = v18;
      v21[6] = v13;
      v21[7] = v15;
      v6 = v7;
    }

    while (v2 != v4);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD20DE2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD20DE9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1BD20DEB4()
{
  result = qword_1EBD3DAB8;
  if (!qword_1EBD3DAB8)
  {
    type metadata accessor for PostalAddressEditingModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DAB8);
  }

  return result;
}

void keypath_set_106Tm(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_1BE052404();
  [v6 *a5];
}

unint64_t sub_1BD20DFE4()
{
  result = qword_1EBD3DAE0;
  if (!qword_1EBD3DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DAE0);
  }

  return result;
}

uint64_t sub_1BD20E048(uint64_t a1, int a2)
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

uint64_t sub_1BD20E090(uint64_t result, int a2, int a3)
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

unint64_t sub_1BD20E0E4()
{
  result = qword_1EBD3DAF8;
  if (!qword_1EBD3DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DAF8);
  }

  return result;
}

uint64_t type metadata accessor for AppleCardDetailsSheet()
{
  result = qword_1EBD3DB00;
  if (!qword_1EBD3DB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD20E1B0()
{
  sub_1BD170C00();
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD456C0);
    if (v1 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v2 <= 0x3F)
      {
        sub_1BD20E2A4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for TransactionsModel();
          if (v4 <= 0x3F)
          {
            type metadata accessor for WalletSettingsModel(319);
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

void sub_1BD20E2A4()
{
  if (!qword_1EBD3DB10)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3CCE0);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3DB10);
    }
  }
}

id sub_1BD20E328@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v176 = a1;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB18);
  MEMORY[0x1EEE9AC00](v175, v3);
  v160 = &v147 - v4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB20);
  v155 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v5);
  v151 = (&v147 - v6);
  v148 = type metadata accessor for SettingsTransactionSection();
  MEMORY[0x1EEE9AC00](v148, v7);
  v150 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v149 = (&v147 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB28);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v156 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v171 = &v147 - v17;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB30);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159, v18);
  v154 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v181 = &v147 - v22;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v164, v23);
  v163 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v147 - v27;
  v161 = type metadata accessor for AppleCardBillingAddressSection();
  MEMORY[0x1EEE9AC00](v161, v29);
  v153 = &v147 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v147 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v180 = &v147 - v37;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB38);
  MEMORY[0x1EEE9AC00](v172, v38);
  v174 = &v147 - v39;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB40);
  MEMORY[0x1EEE9AC00](v173, v40);
  v170 = &v147 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB48);
  v167 = *(v42 - 8);
  v168 = v42;
  MEMORY[0x1EEE9AC00](v42, v43);
  v152 = &v147 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v48 = &v147 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v147 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB50);
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v166 = &v147 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56, v57);
  v177 = &v147 - v58;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB58);
  v162 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169, v59);
  v165 = &v147 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = &v147 - v63;
  v65 = type metadata accessor for AppleCardDetailsSheet();
  v66 = &v1[v65[7]];
  v68 = *v66;
  v67 = *(v66 + 1);
  *&v183 = v68;
  *(&v183 + 1) = v67;
  v178 = v67;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB60);
  sub_1BE0516A4();
  v69 = v182;
  v70 = [v182 state];

  if (v70 != 1)
  {
    MEMORY[0x1EEE9AC00](v71, v72);
    *(&v147 - 2) = v2;
    sub_1BD20FAB8();
    sub_1BE051A44();
    type metadata accessor for WalletSettingsModel(0);
    v106 = v65[5];
    v107 = v2;
    v108 = *&v2[v106];
    v109 = [v108 paymentPass];
    if (v109)
    {
      v110 = v109;
      v111 = sub_1BE052434();
      sub_1BD4089F0(v110, v111, v112, v52);

      v113 = sub_1BE04AA64();
      v114 = (*(*(v113 - 8) + 48))(v52, 1, v113);
      v115 = v177;
      if (v114 != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v125 = sub_1BE04AA64();
      (*(*(v125 - 8) + 56))(v52, 1, 1, v125);
      v115 = v177;
    }

    sub_1BD0DE53C(v52, &unk_1EBD3CF70);
    v126 = [v108 paymentPass];
    if (v126)
    {
      v127 = v126;
      v128 = sub_1BE052434();
      sub_1BD4089F0(v127, v128, v129, v48);

      v130 = sub_1BE04AA64();
      if ((*(*(v130 - 8) + 48))(v48, 1, v130) != 1)
      {
        v52 = v48;
LABEL_14:
        v131 = sub_1BD0DE53C(v52, &unk_1EBD3CF70);
        MEMORY[0x1EEE9AC00](v131, v132);
        *(&v147 - 2) = v107;
        sub_1BD20FB14();
        v133 = v152;
        sub_1BE051A44();
        v135 = v167;
        v134 = v168;
        (*(v167 + 32))(v115, v133, v168);
        v136 = 0;
LABEL_17:
        (*(v135 + 56))(v115, v136, 1, v134);
        v138 = v162;
        v139 = *(v162 + 16);
        v140 = v165;
        v141 = v169;
        v139(v165, v64, v169);
        v142 = v115;
        v143 = v166;
        sub_1BD0DE19C(v142, v166, &qword_1EBD3DB50);
        v181 = v64;
        v144 = v170;
        v139(v170, v140, v141);
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB70);
        sub_1BD0DE19C(v143, v144 + *(v145 + 48), &qword_1EBD3DB50);
        sub_1BD0DE53C(v143, &qword_1EBD3DB50);
        v146 = *(v138 + 8);
        v146(v140, v141);
        sub_1BD0DE19C(v144, v174, &qword_1EBD3DB40);
        swift_storeEnumTagMultiPayload();
        sub_1BD20FBD4(&qword_1EBD3DB78, &qword_1EBD3DB40);
        sub_1BD20FBD4(&qword_1EBD3DB80, &qword_1EBD3DB18);
        sub_1BE04F9A4();
        sub_1BD0DE53C(v144, &qword_1EBD3DB40);
        sub_1BD0DE53C(v177, &qword_1EBD3DB50);
        return (v146)(v181, v141);
      }
    }

    else
    {
      v137 = sub_1BE04AA64();
      (*(*(v137 - 8) + 56))(v48, 1, 1, v137);
    }

    sub_1BD0DE53C(v48, &unk_1EBD3CF70);
    v136 = 1;
    v135 = v167;
    v134 = v168;
    goto LABEL_17;
  }

  v73 = *&v2[v65[5]];
  v74 = *&v2[v65[9]];
  *&v183 = v68;
  *(&v183 + 1) = v178;
  v177 = v73;
  sub_1BE048964();
  sub_1BE0516A4();
  v75 = v182;
  LOBYTE(v182) = 0;
  sub_1BE051694();
  v76 = *(&v183 + 1);
  v34[64] = v183;
  *(v34 + 9) = v76;
  LOBYTE(v182) = 1;
  sub_1BE051694();
  v77 = *(&v183 + 1);
  v34[80] = v183;
  *(v34 + 11) = v77;
  v182 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393C8);
  sub_1BE051694();
  *(v34 + 6) = v183;
  v170 = v2;
  v78 = type metadata accessor for FeatureError(0);
  (*(*(v78 - 8) + 56))(v28, 1, 1, v78);
  sub_1BD0DE19C(v28, v163, &qword_1EBD416C0);
  v79 = v177;
  sub_1BE051694();
  sub_1BD0DE53C(v28, &qword_1EBD416C0);
  *v34 = v79;
  *(v34 + 1) = 0;
  *(v34 + 2) = v74;
  v182 = v75;
  sub_1BD0E5E8C(0, &qword_1EBD3CCE0);
  v80 = v75;
  sub_1BE051694();
  v81 = *(&v183 + 1);
  *(v34 + 3) = v183;
  *(v34 + 4) = v81;
  result = [v80 accountIdentifier];
  if (result)
  {
    v83 = result;
    v84 = sub_1BE052434();
    v86 = v85;

    *(v34 + 5) = v84;
    *(v34 + 6) = v86;
    v87 = [v80 feature];

    *(v34 + 7) = v87;
    v88 = sub_1BD20FB68(v34, v180);
    MEMORY[0x1EEE9AC00](v88, v89);
    v90 = v170;
    *(&v147 - 2) = v170;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB90);
    sub_1BD20FBD4(&qword_1EBD3DB98, &qword_1EBD3DB90);
    sub_1BE051A44();
    *&v183 = v68;
    *(&v183 + 1) = v178;
    sub_1BE0516A4();
    v91 = v182;
    v92 = [v182 accessLevel];

    if (v92 == 1)
    {
      v93 = *&v90[v65[8]];
      *&v183 = v68;
      *(&v183 + 1) = v178;
      v94 = v93;
      v95 = v79;
      v96 = v94;
      sub_1BE0516A4();
      v97 = v182;
      v98 = v149;
      *v149 = v95;
      v99 = v148;
      type metadata accessor for TransactionsModel();
      sub_1BD20FC28();
      sub_1BE051A94();
      *(v98 + *(v99 + 24)) = v97;
      v100 = v150;
      sub_1BD20FC80(v98, v150, type metadata accessor for SettingsTransactionSection);
      v101 = v151;
      *v151 = v96;
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBB0);
      sub_1BD20FC80(v100, v101 + *(v102 + 48), type metadata accessor for SettingsTransactionSection);
      v103 = v96;
      sub_1BD20FCE8(v98, type metadata accessor for SettingsTransactionSection);
      sub_1BD20FCE8(v100, type metadata accessor for SettingsTransactionSection);

      v104 = v171;
      sub_1BD20FD48(v101, v171);
      v105 = 0;
    }

    else
    {
      v105 = 1;
      v104 = v171;
    }

    (*(v155 + 56))(v104, v105, 1, v157);
    v116 = v153;
    sub_1BD20FC80(v180, v153, type metadata accessor for AppleCardBillingAddressSection);
    v117 = v158;
    v118 = *(v158 + 16);
    v119 = v154;
    v120 = v159;
    v118(v154, v181, v159);
    v121 = v156;
    sub_1BD0DE19C(v104, v156, &qword_1EBD3DB28);
    v122 = v160;
    sub_1BD20FC80(v116, v160, type metadata accessor for AppleCardBillingAddressSection);
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBA0);
    v118((v122 + *(v123 + 48)), v119, v120);
    sub_1BD0DE19C(v121, v122 + *(v123 + 64), &qword_1EBD3DB28);
    sub_1BD0DE53C(v121, &qword_1EBD3DB28);
    v124 = *(v117 + 8);
    v124(v119, v120);
    sub_1BD20FCE8(v116, type metadata accessor for AppleCardBillingAddressSection);
    sub_1BD0DE19C(v122, v174, &qword_1EBD3DB18);
    swift_storeEnumTagMultiPayload();
    sub_1BD20FBD4(&qword_1EBD3DB78, &qword_1EBD3DB40);
    sub_1BD20FBD4(&qword_1EBD3DB80, &qword_1EBD3DB18);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v122, &qword_1EBD3DB18);
    sub_1BD0DE53C(v171, &qword_1EBD3DB28);
    v124(v181, v120);
    return sub_1BD20FCE8(v180, type metadata accessor for AppleCardBillingAddressSection);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD20F534(void *a1@<X8>)
{
  type metadata accessor for AppleCardDetailsSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB60);
  sub_1BE0516A4();
  v2 = [v3 state];

  *a1 = v2;
}

uint64_t sub_1BD20F5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AppleCardDetailsSheet() + 20));
  sub_1BE051694();
  result = sub_1BE051694();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

void sub_1BD20F668(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for AppleCardDetailsSheet();
  v13 = *(a1 + v12[5]);
  v14 = *(a1 + v12[9]);
  v15 = (a1 + v12[6]);
  v16 = v15[1];
  v41 = *v15;
  v42 = 0;
  v17 = v13;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE051694();
  v40 = v43;
  v39 = v44;
  type metadata accessor for WalletSettingsModel(0);
  v18 = [v17 paymentPass];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1BE052434();
    sub_1BD4089F0(v19, v20, v21, v11);

    v22 = sub_1BE04AA64();
    if ((*(*(v22 - 8) + 48))(v11, 1, v22) != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v23 = sub_1BE04AA64();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  }

  sub_1BD0DE53C(v11, &unk_1EBD3CF70);
  v24 = [v17 paymentPass];
  if (!v24)
  {
    v35 = sub_1BE04AA64();
    (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
    goto LABEL_10;
  }

  v25 = v24;
  v26 = sub_1BE052434();
  sub_1BD4089F0(v25, v26, v27, v7);

  v28 = sub_1BE04AA64();
  if ((*(*(v28 - 8) + 48))(v7, 1, v28) == 1)
  {
LABEL_10:
    sub_1BD0DE53C(v7, &unk_1EBD3CF70);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_11;
  }

  v11 = v7;
LABEL_8:
  sub_1BD0DE53C(v11, &unk_1EBD3CF70);
  v42 = 0;
  v29 = v17;
  sub_1BE051694();
  v30 = v43;
  v31 = v44;
  v42 = 0;
  sub_1BE051694();
  v32 = v43;
  v33 = v44;
  sub_1BE048964();
  v34 = v29;
  sub_1BE048964();
LABEL_11:
  v36 = v39;
  sub_1BE048964();
  v37 = v17;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD20FDB8(v29);
  sub_1BD20FE04(v29);
  v38 = v41;
  *a2 = v37;
  *(a2 + 8) = v38;
  *(a2 + 16) = v16;
  *(a2 + 24) = v14;
  *(a2 + 32) = v40;
  *(a2 + 40) = v36;
  *(a2 + 48) = v29;
  *(a2 + 56) = v30;
  *(a2 + 64) = v31;
  *(a2 + 72) = v32;
  *(a2 + 80) = v33;
  sub_1BD20FE04(v29);
}

unint64_t sub_1BD20FAB8()
{
  result = qword_1EBD3DB68;
  if (!qword_1EBD3DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DB68);
  }

  return result;
}

unint64_t sub_1BD20FB14()
{
  result = qword_1EBD3DB88;
  if (!qword_1EBD3DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DB88);
  }

  return result;
}

uint64_t sub_1BD20FB68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardBillingAddressSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD20FBD4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD20FC28()
{
  result = qword_1EBD3DBA8;
  if (!qword_1EBD3DBA8)
  {
    type metadata accessor for TransactionsModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DBA8);
  }

  return result;
}

uint64_t sub_1BD20FC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD20FCE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD20FD48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD20FDB8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1BE048964();
    v2 = v1;

    return sub_1BE048964();
  }

  return result;
}

void *sub_1BD20FE04(void *result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1BD20FE50()
{
  result = qword_1EBD3DBB8;
  if (!qword_1EBD3DBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DBC0);
    sub_1BD20FBD4(&qword_1EBD3DB78, &qword_1EBD3DB40);
    sub_1BD20FBD4(&qword_1EBD3DB80, &qword_1EBD3DB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DBB8);
  }

  return result;
}

uint64_t sub_1BD20FF50(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BE051384();
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v5);
  result = sub_1BE0514A4();
  *a2 = result;
  return result;
}

uint64_t sub_1BD210044()
{
  result = sub_1BE051244();
  qword_1EBDAAE90 = result;
  return result;
}

uint64_t sub_1BD210064()
{
  result = sub_1BE051234();
  qword_1EBDAAE98 = result;
  return result;
}

uint64_t sub_1BD210084()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  result = sub_1BE0511C4();
  qword_1EBDAAEA0 = result;
  return result;
}

uint64_t sub_1BD2100F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBC8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBD0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBD8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v21 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBE0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v21 - v18;
  if (a1 > 5)
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD210858();
    return sub_1BE04F9A4();
  }

  else if (a1 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC00);
    sub_1BD0DE4F4(&qword_1EBD3DBF8, &qword_1EBD3DC00);
    sub_1BE051A44();
    (*(v16 + 16))(v10, v19, v15);
    swift_storeEnumTagMultiPayload();
    sub_1BD210888();
    sub_1BE04F9A4();
    sub_1BD210944(v14, v6);
    swift_storeEnumTagMultiPayload();
    sub_1BD210858();
    sub_1BE04F9A4();
    sub_1BD2109B4(v14);
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD210888();
    sub_1BE04F9A4();
    sub_1BD210944(v14, v6);
    swift_storeEnumTagMultiPayload();
    sub_1BD210858();
    sub_1BE04F9A4();
    return sub_1BD2109B4(v14);
  }
}

uint64_t sub_1BD2104B8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B660);
  sub_1BD0DE4F4(&qword_1EBD3B668, &qword_1EBD3B660);
  return sub_1BE04E2B4();
}

id sub_1BD210580@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v41 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v37[-v9];
  v11 = *MEMORY[0x1E69B80F0];
  v12 = *(v3 + 104);
  v12(&v37[-v9], v11, v2, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    v18 = *(v3 + 8);
    v18(v10, v2);
    v44 = v15;
    v45 = v17;
    sub_1BD0DDEBC();
    v39 = sub_1BE0506C4();
    v40 = v19;
    v21 = v20;
    v38 = v22;
    (v12)(v41, v11, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = v41;
      v25 = sub_1BE04B6F4();
      v27 = v26;

      v18(v24, v2);
      v44 = v25;
      v45 = v27;
      v28 = sub_1BE0506C4();
      v30 = v29;
      v31 = v38 & 1;
      v42 = v38 & 1;
      LOBYTE(v44) = v38 & 1;
      v33 = v32 & 1;
      v43 = v32 & 1;
      v35 = v39;
      v34 = v40;
      *a1 = v39;
      *(a1 + 8) = v21;
      *(a1 + 16) = v31;
      *(a1 + 24) = v34;
      *(a1 + 32) = v28;
      *(a1 + 40) = v29;
      *(a1 + 48) = v32 & 1;
      *(a1 + 56) = v36;
      sub_1BD0D7F18(v35, v21, v31);
      sub_1BE048C84();
      sub_1BD0D7F18(v28, v30, v33);
      sub_1BE048C84();
      sub_1BD0DDF10(v28, v30, v33);

      sub_1BD0DDF10(v35, v21, v42);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD210888()
{
  result = qword_1EBD3DBF0;
  if (!qword_1EBD3DBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DBE0);
    sub_1BD0DE4F4(&qword_1EBD3DBF8, &qword_1EBD3DC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DBF0);
  }

  return result;
}

uint64_t sub_1BD210944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2109B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD210A1C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t destroy for PaymentOfferInstallmentAmountEntry(uint64_t a1)
{

  v2 = *(a1 + 80);
  if (v2)
  {
  }
}

uint64_t initializeWithCopy for PaymentOfferInstallmentAmountEntry(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  *(a1 + 16) = v6;
  v25 = *(a2 + 24);
  *(a1 + 24) = v25;
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v7;
  v9 = (a2 + 80);
  v8 = *(a2 + 80);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v25;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  if (v8)
  {
    *(a1 + 80) = v8;
    v14 = *(a2 + 104);
    v26 = *(a2 + 88);
    *(a1 + 88) = v26;
    *(a1 + 104) = v14;
    v15 = v8;
    v16 = v26;
    sub_1BE048964();
  }

  else
  {
    v17 = v9[1];
    *(a1 + 80) = *v9;
    *(a1 + 96) = v17;
  }

  v18 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v18;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v19 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v19;
  v20 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v20;
  *(a1 + 176) = *(a2 + 176);
  v21 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v21;
  sub_1BE048964();
  v22 = v18;
  sub_1BE048964();
  sub_1BE048964();
  v23 = v19;
  sub_1BE048964();
  sub_1BE048C84();
  return a1;
}

uint64_t assignWithCopy for PaymentOfferInstallmentAmountEntry(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *(a1 + 16) = v11;
  v12 = v11;

  v13 = *(a2 + 24);
  v14 = *(a1 + 24);
  *(a1 + 24) = v13;
  v15 = v13;

  v16 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v16;
  sub_1BE048964();

  v17 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v17;
  sub_1BE048964();

  v18 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v18;
  sub_1BE048964();

  v19 = (a1 + 80);
  v20 = *(a1 + 80);
  v22 = (a2 + 80);
  v21 = *(a2 + 80);
  if (v20)
  {
    if (v21)
    {
      *(a1 + 80) = v21;
      v23 = v21;

      v24 = *(a2 + 88);
      v25 = *(a1 + 88);
      *(a1 + 88) = v24;
      v26 = v24;

      v27 = *(a2 + 104);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = v27;
      sub_1BE048964();
    }

    else
    {
      sub_1BD210F3C(a1 + 80);
      v32 = *(a2 + 96);
      *v19 = *v22;
      *(a1 + 96) = v32;
    }
  }

  else if (v21)
  {
    *(a1 + 80) = v21;
    v28 = *(a2 + 88);
    *(a1 + 88) = v28;
    v29 = *(a2 + 104);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v29;
    v30 = v21;
    v31 = v28;
    sub_1BE048964();
  }

  else
  {
    v33 = *(a2 + 96);
    *v19 = *v22;
    *(a1 + 96) = v33;
  }

  *(a1 + 112) = *(a2 + 112);
  sub_1BE048964();

  v34 = *(a1 + 120);
  v35 = *(a2 + 120);
  *(a1 + 120) = v35;
  v36 = v35;

  *(a1 + 128) = *(a2 + 128);
  sub_1BE048964();

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  sub_1BE048964();

  v37 = *(a1 + 152);
  v38 = *(a2 + 152);
  *(a1 + 152) = v38;
  v39 = v38;

  *(a1 + 160) = *(a2 + 160);
  sub_1BE048964();

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  sub_1BE048C84();

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 190) = *(a2 + 190);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 198) = *(a2 + 198);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 202) = *(a2 + 202);
  return a1;
}

__n128 __swift_memcpy204_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t assignWithTake for PaymentOfferInstallmentAmountEntry(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  v8 = *(a1 + 80);
  v9 = *(a2 + 80);
  if (!v8)
  {
    goto LABEL_5;
  }

  if (!v9)
  {
    sub_1BD210F3C(a1 + 80);
LABEL_5:
    v11 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v11;
    goto LABEL_6;
  }

  *(a1 + 80) = v9;

  v10 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

LABEL_6:
  *(a1 + 112) = *(a2 + 112);

  v12 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  v13 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  v14 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v14;

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 188) = *(a2 + 188);
  return a1;
}

uint64_t getEnumTagSinglePayload for PaymentOfferInstallmentAmountEntry(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 204))
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

uint64_t storeEnumTagSinglePayload for PaymentOfferInstallmentAmountEntry(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 204) = 1;
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

    *(result + 204) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BD2111F8(SEL *a1)
{
  v2 = [*(v1 + 8) *a1];
  sub_1BD0E5E8C(0, &qword_1EBD43B00);
  sub_1BD214890(&qword_1EBD45080, &qword_1EBD43B00);
  v3 = sub_1BE052A34();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE052A74();
    v3 = v29;
    v4 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v9 = ~v8;
    v10 = -v8;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v3 + 56);
    sub_1BE048C84();
    v5 = v9;
    v6 = 0;
  }

  v26 = v5;
  v12 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_1BE053744())
    {
      goto LABEL_24;
    }

    swift_dynamicCast();
    v17 = v28;
    v15 = v6;
    v16 = v7;
    if (!v28)
    {
      goto LABEL_24;
    }

LABEL_18:
    v18 = [v17 currency];
    if (v18)
    {
      v19 = v18;
      v20 = v3;
      v21 = sub_1BE052434();
      v23 = v22;

      if (v21 == *(v27 + 168) && v23 == *(v27 + 176))
      {

LABEL_24:
        sub_1BD0D45FC();

        return;
      }

      v25 = sub_1BE053B84();

      v3 = v20;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    v6 = v15;
    v7 = v16;
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  if (v7)
  {
LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1BD2114A0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC20);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v25 - v4;
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC28);
  sub_1BD213DF8();
  sub_1BE04EC04();
  v6 = swift_allocObject();
  v7 = v1[11];
  v6[11] = v1[10];
  v6[12] = v7;
  *(v6 + 204) = *(v1 + 188);
  v8 = v1[7];
  v6[7] = v1[6];
  v6[8] = v8;
  v9 = v1[9];
  v6[9] = v1[8];
  v6[10] = v9;
  v10 = v1[3];
  v6[3] = v1[2];
  v6[4] = v10;
  v11 = v1[5];
  v6[5] = v1[4];
  v6[6] = v11;
  v12 = v1[1];
  v6[1] = *v1;
  v6[2] = v12;
  v13 = &v5[*(v2 + 36)];
  *v13 = sub_1BD213FD4;
  *(v13 + 1) = v6;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  v14 = v1[6];
  v31 = v1[5];
  v32 = v14;
  v33 = *(v1 + 14);
  sub_1BD213FD8(v1, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC58);
  sub_1BE0516C4();
  v26 = *(&v36 + 1);
  v27 = v36;
  v25[1] = v37;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  v34 = v38;
  v15 = swift_allocObject();
  v16 = v1[11];
  v15[11] = v1[10];
  v15[12] = v16;
  *(v15 + 204) = *(v1 + 188);
  v17 = v1[7];
  v15[7] = v1[6];
  v15[8] = v17;
  v18 = v1[9];
  v15[9] = v1[8];
  v15[10] = v18;
  v19 = v1[3];
  v15[3] = v1[2];
  v15[4] = v19;
  v20 = v1[5];
  v15[5] = v1[4];
  v15[6] = v20;
  v21 = v1[1];
  v15[1] = *v1;
  v15[2] = v21;
  sub_1BD213FD8(v1, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57BE0);
  sub_1BD21403C();
  sub_1BD2140F4();
  v22 = type metadata accessor for PaymentOfferActionExplanationView();
  v23 = sub_1BD213F8C(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
  *&v35 = v22;
  *(&v35 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  sub_1BE050F74();

  sub_1BD214148(v27, v26);
  return sub_1BD055048(v5);
}

double sub_1BD2117BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  *&v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v101, v3);
  v5 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v88 - v8;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC38);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v88 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC80);
  v103 = *(v19 - 8);
  v104 = v19;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v102 = v88 - v22;
  (*(v11 + 104))(v14, *MEMORY[0x1E69B8078], v10, v21);
  v23 = sub_1BE04B714();
  v99 = v24;
  v100 = v23;
  (*(v11 + 8))(v14, v10);
  v25 = *(a1 + 176);
  v97 = *(a1 + 168);
  v98 = v25;
  sub_1BE048C84();
  sub_1BD2111F8(&selRef_minimumAmounts);
  if (v26 && (v27 = v26, v28 = [v26 amount], v27, v28))
  {
    v29 = sub_1BE0533F4();
    v95 = v30;
    v96 = v29;
    v94 = v31;
  }

  else
  {
    v32 = MEMORY[0x1BFB403C0](0);
    v95 = v33;
    v96 = v32;
    v94 = v34;
  }

  sub_1BD2111F8(&selRef_maximumAmounts);
  if (v35 && (v36 = v35, v37 = [v35 amount], v36, v37))
  {
    v38 = sub_1BE0533F4();
    v92 = v39;
    v93 = v38;
    v91 = v40;

    v41 = *(a1 + 16);
    if (!v41)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v42 = sub_1BE0533A4();
    v92 = v43;
    v93 = v42;
    v91 = v44;
    v41 = *(a1 + 16);
    if (!v41)
    {
LABEL_12:
      v47 = 0;
      goto LABEL_13;
    }
  }

  v45 = [v41 dynamicContent];
  if (!v45)
  {
    goto LABEL_12;
  }

  v46 = v45;
  v47 = [v45 dynamicContentPageForPageType_];

LABEL_13:
  v114 = *(a1 + 184);
  v115 = *(a1 + 200);
  v90 = [v47 footerContent];

  v108 = *(a1 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v89 = LOBYTE(v112[0]);
  v48 = swift_allocObject();
  v49 = *(a1 + 176);
  v48[11] = *(a1 + 160);
  v48[12] = v49;
  *(v48 + 204) = *(a1 + 188);
  v50 = *(a1 + 112);
  v48[7] = *(a1 + 96);
  v48[8] = v50;
  v51 = *(a1 + 144);
  v48[9] = *(a1 + 128);
  v48[10] = v51;
  v52 = *(a1 + 48);
  v48[3] = *(a1 + 32);
  v48[4] = v52;
  v53 = *(a1 + 80);
  v48[5] = *(a1 + 64);
  v48[6] = v53;
  v54 = *(a1 + 16);
  v48[1] = *a1;
  v48[2] = v54;
  v55 = swift_allocObject();
  v56 = *(a1 + 176);
  v55[11] = *(a1 + 160);
  v55[12] = v56;
  *(v55 + 204) = *(a1 + 188);
  v57 = *(a1 + 112);
  v55[7] = *(a1 + 96);
  v55[8] = v57;
  v58 = *(a1 + 144);
  v55[9] = *(a1 + 128);
  v55[10] = v58;
  v59 = *(a1 + 48);
  v55[3] = *(a1 + 32);
  v55[4] = v59;
  v60 = *(a1 + 80);
  v55[5] = *(a1 + 64);
  v55[6] = v60;
  v61 = *(a1 + 16);
  v55[1] = *a1;
  v55[2] = v61;
  v112[0] = 0uLL;
  sub_1BD213FD8(a1, &v108);
  sub_1BD213FD8(a1, &v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  sub_1BE051694();
  v62 = v109;
  *(v18 + 19) = v108;
  *(v18 + 40) = v62;
  *&v112[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC88);
  sub_1BE051694();
  *(v18 + 328) = v108;
  LOBYTE(v112[0]) = 0;
  sub_1BE051694();
  v63 = *(&v108 + 1);
  v18[344] = v108;
  *(v18 + 44) = v63;
  v18[360] = sub_1BE04E274() & 1;
  *(v18 + 46) = v64;
  v18[376] = v65 & 1;
  v88[1] = v15;
  v66 = type metadata accessor for MultiHyperLinkDetailSheet();
  (*(*(v66 - 8) + 56))(v9, 1, 1, v66);
  sub_1BD0DE19C(v9, v5, &unk_1EBD45160);
  sub_1BE051694();
  sub_1BD0DE53C(v9, &unk_1EBD45160);
  v67 = v99;
  *v18 = v100;
  *(v18 + 1) = v67;
  v68 = v98;
  *(v18 + 2) = v97;
  *(v18 + 3) = v68;
  v108 = v114;
  LODWORD(v109) = v115;
  type metadata accessor for Decimal(0);
  sub_1BE051694();
  v69 = v111;
  *(v18 + 17) = v110;
  *(v18 + 18) = v69;
  v70 = v95;
  *(v18 + 4) = v96;
  *(v18 + 5) = v70;
  *(v18 + 12) = v94;
  v71 = v92;
  *(v18 + 52) = v93;
  *(v18 + 60) = v71;
  *(v18 + 17) = v91;
  *(v18 + 9) = 0;
  sub_1BD2120C0(v112);
  v72 = v113[0];
  *(v18 + 11) = v112[6];
  *(v18 + 12) = v72;
  *(v18 + 201) = *(v113 + 9);
  v73 = v112[3];
  *(v18 + 7) = v112[2];
  *(v18 + 8) = v73;
  v74 = v112[5];
  *(v18 + 9) = v112[4];
  *(v18 + 10) = v74;
  v75 = v112[1];
  *(v18 + 5) = v112[0];
  *(v18 + 6) = v75;
  *(v18 + 28) = v90;
  v18[232] = v89;
  *(v18 + 30) = sub_1BD214694;
  *(v18 + 31) = v48;
  *(v18 + 32) = sub_1BD2146C8;
  *(v18 + 33) = v55;
  v106 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC90);
  sub_1BE0516C4();
  v100 = v108;
  *&v101 = v109;
  v106 = v108;
  v107 = v109;
  v76 = swift_allocObject();
  v77 = *(a1 + 176);
  v76[11] = *(a1 + 160);
  v76[12] = v77;
  *(v76 + 204) = *(a1 + 188);
  v78 = *(a1 + 112);
  v76[7] = *(a1 + 96);
  v76[8] = v78;
  v79 = *(a1 + 144);
  v76[9] = *(a1 + 128);
  v76[10] = v79;
  v80 = *(a1 + 48);
  v76[3] = *(a1 + 32);
  v76[4] = v80;
  v81 = *(a1 + 80);
  v76[5] = *(a1 + 64);
  v76[6] = v81;
  v82 = *(a1 + 16);
  v76[1] = *a1;
  v76[2] = v82;
  sub_1BD213FD8(a1, &v108);
  sub_1BD0E5E8C(0, &qword_1EBD3DC40);
  type metadata accessor for PaymentOfferInstallmentSelectionView();
  sub_1BD0DE4F4(&qword_1EBD3DC48, &qword_1EBD3DC38);
  sub_1BD214890(&qword_1EBD3DC50, &qword_1EBD3DC40);
  sub_1BD213F8C(&qword_1EBD57AE0, type metadata accessor for PaymentOfferInstallmentSelectionView);
  v83 = v102;
  sub_1BE050D74();

  sub_1BD0DE53C(v18, &qword_1EBD3DC38);
  v106 = *(a1 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  sub_1BE0516C4();
  v101 = v108;
  v84 = v109;
  v85 = v105;
  (*(v103 + 32))(v105, v83, v104);
  v86 = v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC28) + 36);
  result = *&v101;
  *v86 = v101;
  *(v86 + 24) = 0;
  *(v86 + 32) = 0;
  *(v86 + 16) = v84;
  return result;
}

__n128 sub_1BD2120C0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1BD212BA4();
  if (v3)
  {
    DWORD1(v38) = HIDWORD(v2);
    *(&v38 + 1) = v3;
    sub_1BD0DDEBC();
    v4 = sub_1BE0506C4();
    v6 = v5;
    v8 = v7;
    LODWORD(v38) = sub_1BE04FC94();
    v9 = sub_1BE050574();
    v11 = v10;
    v13 = v12;
    sub_1BD0DDF10(v4, v6, v8 & 1);

    sub_1BE050324();
    v14 = sub_1BE0505F4();
    v16 = v15;
    v18 = v17;
    v31 = v19;

    sub_1BD0DDF10(v9, v11, v13 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v9) = sub_1BE0501C4();
    LOBYTE(v11) = v18 & 1;
    v21 = sub_1BE0501E4();
    sub_1BE04E1F4();
    LOBYTE(v38) = 0;
    *&v32 = v14;
    *(&v32 + 1) = v16;
    v33.n128_u8[0] = v11;
    v33.n128_u64[1] = v31;
    *&v34 = KeyPath;
    BYTE8(v34) = 1;
    v35[0] = v9;
    memset(&v35[8], 0, 32);
    v35[40] = 1;
    LOBYTE(v36) = v21;
    *(&v36 + 1) = v22;
    *v37 = v23;
    *&v37[8] = v24;
    *&v37[16] = v25;
    v37[24] = 0;
    PKEdgeInsetsMake(&v32, v26);
    v43 = *&v35[32];
    v44 = v36;
    v45[0] = *v37;
    *(v45 + 9) = *&v37[9];
    v40 = v34;
    v41 = *v35;
    v42 = *&v35[16];
    v38 = v32;
    v39 = v33;
  }

  else
  {
    sub_1BD2146D8(&v38);
  }

  v27 = v45[0];
  *(a1 + 96) = v44;
  *(a1 + 112) = v27;
  *(a1 + 121) = *(v45 + 9);
  v28 = v41;
  *(a1 + 32) = v40;
  *(a1 + 48) = v28;
  v29 = v43;
  *(a1 + 64) = v42;
  *(a1 + 80) = v29;
  result = v39;
  *a1 = v38;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BD2122C8(unint64_t a1, unint64_t a2, unsigned int a3, _OWORD *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIWORD(a1);
  v10 = a2 >> 16;
  v11 = HIDWORD(a2);
  v28 = HIWORD(a2);
  v29 = HIWORD(a3);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v27 - v14;
  sub_1BD214278();
  v16 = sub_1BE0528D4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1BE0528A4();
  sub_1BD213FD8(a4, v30);
  v17 = sub_1BE052894();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = a4[11];
  *(v18 + 192) = a4[10];
  *(v18 + 208) = v20;
  *(v18 + 220) = *(a4 + 188);
  v21 = a4[7];
  *(v18 + 128) = a4[6];
  *(v18 + 144) = v21;
  v22 = a4[9];
  *(v18 + 160) = a4[8];
  *(v18 + 176) = v22;
  v23 = a4[3];
  *(v18 + 64) = a4[2];
  *(v18 + 80) = v23;
  v24 = a4[5];
  *(v18 + 96) = a4[4];
  *(v18 + 112) = v24;
  v25 = a4[1];
  *(v18 + 32) = *a4;
  *(v18 + 48) = v25;
  *(v18 + 236) = v7;
  *(v18 + 240) = v8;
  *(v18 + 242) = v9;
  *(v18 + 244) = v6;
  *(v18 + 246) = v10;
  *(v18 + 248) = v11;
  *(v18 + 250) = v28;
  *(v18 + 252) = v5;
  *(v18 + 254) = v29;
  sub_1BD122C00(0, 0, v15, &unk_1BE0C2668, v18);
}

uint64_t sub_1BD2124B4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v38 - v12;
  v14 = *a1;
  v15 = *(a2 + 24);
  v16 = *(a2 + 8);
  v38 = *a2;
  v17 = *(a2 + 64);
  v18 = *(a2 + 72);
  v19 = *(a2 + 56);
  v42 = *(a2 + 48);
  v43 = v17;
  v44 = 0;
  v20 = v38;
  v41 = v15;
  v39 = v16;
  v40 = v14;
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
  sub_1BE051694();
  *(a3 + 72) = v46;
  v21 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v22 = type metadata accessor for MultiHyperLinkDetailSheet();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  sub_1BD0DE19C(v13, v9, &unk_1EBD45160);
  sub_1BE051694();
  sub_1BD0DE53C(v13, &unk_1EBD45160);
  v23 = a3 + v21[13];
  LOBYTE(v44) = 0;
  sub_1BE051694();
  v24 = *(&v46 + 1);
  *v23 = v46;
  *(v23 + 8) = v24;
  v25 = a3 + v21[14];
  v44 = 0;
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  sub_1BE051694();
  v26 = v47;
  *v25 = v46;
  *(v25 + 16) = v26;
  v27 = a3 + v21[15];
  LOBYTE(v44) = 0;
  sub_1BE051694();
  v28 = *(&v46 + 1);
  *v27 = v46;
  *(v27 + 8) = v28;
  v29 = a3 + v21[16];
  LOBYTE(v44) = 0;
  sub_1BE051694();
  v30 = *(&v46 + 1);
  *v29 = v46;
  *(v29 + 8) = v30;
  v31 = v21[17];
  *(a3 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  swift_storeEnumTagMultiPayload();
  v32 = a3 + v21[18];
  result = swift_getKeyPath();
  *v32 = result;
  *(v32 + 8) = 0;
  *a3 = v38;
  *(a3 + 8) = 672;
  v34 = v39;
  v35 = v40;
  *(a3 + 16) = v41;
  *(a3 + 24) = v34;
  v36 = v42;
  v37 = v43;
  *(a3 + 32) = v35;
  *(a3 + 40) = v37;
  *(a3 + 48) = v18;
  *(a3 + 56) = v36;
  *(a3 + 64) = v19;
  return result;
}

uint64_t sub_1BD2127D4@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v48 = a3;
  v51 = a1;
  v58 = a4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v52, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for PaymentOfferActionExplanationView();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v57 = &v48 - v20;
  v21 = *(v4 + 24);
  v22 = *(v4 + 8);
  v49 = *v4;
  v50 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v24 = sub_1BE052434();
  v55 = v25;
  v56 = v24;
  v26 = sub_1BE052434();
  v53 = v27;
  v54 = v26;
  v63 = 0;
  v28 = type metadata accessor for MultiHyperLinkDetailSheet();
  (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  sub_1BD0DE19C(v13, v9, &unk_1EBD45160);
  v29 = v22;
  v30 = v51;
  v31 = v49;
  v32 = v49;
  sub_1BE048964();
  sub_1BE051694();
  sub_1BD0DE53C(v13, &unk_1EBD45160);
  v33 = &v17[*(v14 + 68)];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = v50;
  *v17 = v50;
  *(v17 + 1) = v29;
  *(v17 + 2) = v30;
  *(v17 + 3) = 0;
  *(v17 + 4) = 0xE000000000000000;
  *(v17 + 11) = 0;
  *(v17 + 72) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 40) = 0u;
  v17[96] = 0;
  *(v17 + 13) = v31;
  *(v17 + 16) = sub_1BD214190;
  *(v17 + 17) = v23;
  *(v17 + 72) = 1792;
  v35 = v34;
  v36 = [v29 identifier];
  if (!v36)
  {
    sub_1BE052434();
    v36 = sub_1BE052404();
  }

  v37 = [v35 preferredLocalizationLanguageForCriteriaIdentifier_];

  v38 = sub_1BE052434();
  v40 = v39;

  *(v17 + 14) = v38;
  *(v17 + 15) = v40;
  v59 = 0;
  sub_1BE051944();
  v41 = v61;
  v42 = v62;
  v43 = &v17[*(v14 + 64)];
  *v43 = v60;
  *(v43 + 1) = v41;
  v43[16] = v42;
  v44 = v55;
  *(v17 + 19) = v56;
  *(v17 + 20) = v44;
  v45 = v53;
  *(v17 + 21) = v54;
  *(v17 + 22) = v45;
  v17[184] = 1;
  *(v17 + 24) = 0;
  *(v17 + 25) = 0;
  v46 = v57;
  sub_1BD2141B8(v17, v57);
  sub_1BD213F8C(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
  sub_1BE050E54();
  return sub_1BD21421C(v46);
}

id sub_1BD212BA4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v50 - v8;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v50 - v13;
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = [v15 dynamicContent];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 dynamicContentPageForPageType_];

      if (v18)
      {
        v19 = [v18 title];

        if (v19)
        {
          v20 = sub_1BE052434();

          return v20;
        }
      }
    }
  }

  sub_1BD2111F8(&selRef_minimumAmounts);
  v51 = v1;
  if (v21)
  {
    v22 = v21;
    sub_1BD2111F8(&selRef_maximumAmounts);
    if (v23)
    {
      v24 = v23;
      (*(v2 + 104))(v14, *MEMORY[0x1E69B8078], v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1BE0B6CA0;
      result = [v22 minimalFormattedStringValue];
      if (result)
      {
        v27 = result;
        v28 = sub_1BE052434();
        v30 = v29;

        *(v25 + 56) = MEMORY[0x1E69E6158];
        v31 = sub_1BD110550();
        *(v25 + 64) = v31;
        *(v25 + 32) = v28;
        *(v25 + 40) = v30;
        result = [v24 minimalFormattedStringValue];
        if (result)
        {
          v32 = result;
          v33 = sub_1BE052434();
          v35 = v34;

          *(v25 + 96) = MEMORY[0x1E69E6158];
          *(v25 + 104) = v31;
          *(v25 + 72) = v33;
          *(v25 + 80) = v35;
          v20 = sub_1BE04B714();

          (*(v2 + 8))(v14, v51);
          return v20;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  sub_1BD2111F8(&selRef_minimumAmounts);
  if (v36)
  {
    v37 = v36;
    (*(v2 + 104))(v9, *MEMORY[0x1E69B8078], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1BE0B69E0;
    result = [v37 minimalFormattedStringValue];
    if (result)
    {
      v39 = result;
      v40 = sub_1BE052434();
      v42 = v41;

      *(v38 + 56) = MEMORY[0x1E69E6158];
      *(v38 + 64) = sub_1BD110550();
      *(v38 + 32) = v40;
      *(v38 + 40) = v42;
      v20 = sub_1BE04B714();

      (*(v2 + 8))(v9, v51);
      return v20;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1BD2111F8(&selRef_maximumAmounts);
  if (!v43)
  {
    return 0;
  }

  v44 = v43;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B8078], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BE0B69E0;
  result = [v44 minimalFormattedStringValue];
  if (result)
  {
    v46 = result;
    v47 = sub_1BE052434();
    v49 = v48;

    *(v45 + 56) = MEMORY[0x1E69E6158];
    *(v45 + 64) = sub_1BD110550();
    *(v45 + 32) = v47;
    *(v45 + 40) = v49;
    v20 = sub_1BE04B714();

    (*(v2 + 8))(v5, v51);
    return v20;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1BD2130A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v7 + 220) = a7;
  *(v7 + 664) = a6;
  *(v7 + 656) = a5;
  *(v7 + 648) = a4;
  v8 = sub_1BE04D214();
  *(v7 + 672) = v8;
  *(v7 + 680) = *(v8 - 8);
  *(v7 + 688) = swift_task_alloc();
  sub_1BE0528A4();
  *(v7 + 696) = sub_1BE052894();
  v10 = sub_1BE052844();
  *(v7 + 704) = v10;
  *(v7 + 712) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD2131A4, v10, v9);
}

uint64_t sub_1BD2131A4()
{
  v1 = *(v0 + 648);
  *(v0 + 376) = *(v1 + 136);
  *(v0 + 504) = *(v0 + 384);
  *(v0 + 424) = *(v1 + 136);
  *(v0 + 764) = 1;
  sub_1BD0DE19C(v0 + 504, v0 + 568, &unk_1EBD4EF10);
  sub_1BD0DE19C(v0 + 504, v0 + 560, &unk_1EBD4EF10);
  sub_1BD0DE19C(v0 + 504, v0 + 552, &unk_1EBD4EF10);
  sub_1BD0DE19C(v0 + 504, v0 + 520, &unk_1EBD4EF10);
  sub_1BD0DE19C(v0 + 504, v0 + 512, &unk_1EBD4EF10);
  *(v0 + 720) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v2 = sub_1BE053344();
  v3 = sub_1BE052404();
  v4 = PKCurrencyAmountMake();
  *(v0 + 728) = v4;

  sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);
  if (v4)
  {
    v8 = (*(*(v0 + 648) + 32) + **(*(v0 + 648) + 32));
    v5 = swift_task_alloc();
    *(v0 + 736) = v5;
    *v5 = v0;
    v5[1] = sub_1BD2134B0;

    return v8(v4);
  }

  else
  {
    sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);
    sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);
    sub_1BD0DE53C(v0 + 504, &unk_1EBD4EF10);

    *(v0 + 360) = *(v0 + 376);
    *(v0 + 760) = 0;
    sub_1BE0516B4();
    sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1BD2134B0(uint64_t a1)
{
  v3 = *v2;
  v3[93] = a1;
  v3[94] = v1;

  if (v1)
  {
    sub_1BD0DE53C((v3 + 47), &qword_1EBD54350);
    sub_1BD0DE53C((v3 + 47), &qword_1EBD54350);
    sub_1BD0DE53C((v3 + 47), &qword_1EBD54350);
    v4 = v3[89];
    v5 = v3[88];
    v6 = sub_1BD213B3C;
  }

  else
  {
    v4 = v3[89];
    v5 = v3[88];
    v6 = sub_1BD213618;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1BD213618()
{
  v1 = (v0 + 376);
  v2 = *(v0 + 744);

  if (v2)
  {
    v3 = *(v0 + 744);
    sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);
    v4 = [v3 isEligible];
    sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);
    if (v4)
    {
      v5 = *(v0 + 744);
      v6 = *(v0 + 728);
      v7 = *(v0 + 648);
      sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);
      v8 = *(v7 + 120);
      v9 = *(v7 + 128);
      *(v0 + 584) = v8;
      *(v0 + 576) = v9;
      *(v0 + 392) = v8;
      *(v0 + 400) = v9;
      *(v0 + 624) = v5;
      v10 = v3;
      sub_1BD0DE19C(v0 + 584, v0 + 632, &unk_1EBD57C20);
      sub_1BD0DE19C(v0 + 576, v0 + 640, &qword_1EBD3DCB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC90);
      sub_1BE0516B4();

      sub_1BD0DE53C(v0 + 584, &unk_1EBD57C20);
      sub_1BD0DE53C(v0 + 576, &qword_1EBD3DCB0);
      *(v0 + 472) = *v1;
      *(v0 + 761) = 0;
    }

    else
    {
      v12 = [v3 ineligibleDynamicContent];
      if (v12)
      {
        v13 = v12;
        v14 = *(v0 + 744);
        v42 = *(v0 + 728);
        v15 = *(v0 + 648);
        sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);
        v16 = swift_allocObject();
        v16[1] = *v15;
        v17 = v15[4];
        v19 = v15[1];
        v18 = v15[2];
        v16[4] = v15[3];
        v16[5] = v17;
        v16[2] = v19;
        v16[3] = v18;
        v20 = v15[8];
        v22 = v15[5];
        v21 = v15[6];
        v16[8] = v15[7];
        v16[9] = v20;
        v16[6] = v22;
        v16[7] = v21;
        v24 = v15[10];
        v23 = v15[11];
        v25 = v15[9];
        *(v16 + 204) = *(v15 + 188);
        v16[11] = v24;
        v16[12] = v23;
        v16[10] = v25;
        v26 = v15[6];
        *(v0 + 224) = v15[5];
        *(v0 + 240) = v26;
        v27 = *(v15 + 14);
        v28 = v15[6];
        *(v0 + 264) = v15[5];
        *(v0 + 280) = v28;
        *(v0 + 592) = v27;
        *(v0 + 256) = v27;
        *(v0 + 328) = v14;
        *(v0 + 336) = v13;
        *(v0 + 344) = sub_1BD214888;
        *(v0 + 352) = v16;
        v29 = v3;
        v30 = v13;
        v31 = v29;
        v32 = v30;
        sub_1BD213FD8(v15, v0 + 16);
        sub_1BD0DE19C(v0 + 264, v0 + 296, &qword_1EBD3DCA0);
        sub_1BD0DE19C(v0 + 592, v0 + 600, &qword_1EBD3DCA8);
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC58);
        sub_1BE0516B4();

        sub_1BD0DE53C(v0 + 264, &qword_1EBD3DCA0);
        sub_1BD0DE53C(v0 + 592, &qword_1EBD3DCA8);
        *(v0 + 408) = *v1;
        *(v0 + 765) = 0;
      }

      else
      {
        sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);
        sub_1BE04D1E4();
        v33 = sub_1BE04D204();
        v34 = sub_1BE052C34();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = v3;
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_1BD026000, v33, v34, "No dynamic content defined for ineligible installment assessment", v36, 2u);
          MEMORY[0x1BFB45F20](v36, -1, -1);
          v3 = v33;
          v33 = v35;
        }

        v37 = *(v0 + 688);
        v38 = *(v0 + 680);
        v39 = *(v0 + 672);

        (*(v38 + 8))(v37, v39);
        *(v0 + 440) = *v1;
        *(v0 + 763) = 0;
      }
    }
  }

  else
  {
    v11 = *(v0 + 728);
    sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);
    sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);
    sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);

    *(v0 + 456) = *v1;
    *(v0 + 762) = 0;
  }

  sub_1BE0516B4();
  sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1BD213B3C()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 728);
  v3 = *(v0 + 648);

  v4 = v1;
  v5 = sub_1BE04A844();

  v6 = *(v3 + 152);
  v7 = *(v3 + 160);
  *(v0 + 616) = v6;
  *(v0 + 608) = v7;
  *(v0 + 488) = v6;
  *(v0 + 496) = v7;
  *(v0 + 528) = v5;
  sub_1BD0DE19C(v0 + 616, v0 + 536, &qword_1EBD49710);
  sub_1BD0DE19C(v0 + 608, v0 + 544, &qword_1EBD3DC98);
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  sub_1BE0516B4();

  sub_1BD0DE53C(v0 + 616, &qword_1EBD49710);
  sub_1BD0DE53C(v0 + 608, &qword_1EBD3DC98);
  *(v0 + 472) = *(v0 + 376);
  *(v0 + 761) = 0;
  sub_1BE0516B4();
  sub_1BD0DE53C(v0 + 376, &qword_1EBD54350);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BD213CE0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC58);
  v2 = sub_1BE0516B4();
  return (*(a1 + 48))(v2);
}

unint64_t sub_1BD213DF8()
{
  result = qword_1EBD3DC30;
  if (!qword_1EBD3DC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DC28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DC38);
    sub_1BD0E5E8C(255, &qword_1EBD3DC40);
    type metadata accessor for PaymentOfferInstallmentSelectionView();
    sub_1BD0DE4F4(&qword_1EBD3DC48, &qword_1EBD3DC38);
    sub_1BD214890(&qword_1EBD3DC50, &qword_1EBD3DC40);
    sub_1BD213F8C(&qword_1EBD57AE0, type metadata accessor for PaymentOfferInstallmentSelectionView);
    swift_getOpaqueTypeConformance2();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DC30);
  }

  return result;
}

uint64_t sub_1BD213F8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD21403C()
{
  result = qword_1EBD3DC60;
  if (!qword_1EBD3DC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DC20);
    sub_1BD0DE4F4(&qword_1EBD3DC68, &qword_1EBD3DC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DC60);
  }

  return result;
}

unint64_t sub_1BD2140F4()
{
  result = qword_1EBD3DC78;
  if (!qword_1EBD3DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DC78);
  }

  return result;
}

void *sub_1BD214148(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BD2141B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferActionExplanationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD21421C(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferActionExplanationView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD214278()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B6CA0;
  v2 = *MEMORY[0x1E69BB6C0];
  v3 = *MEMORY[0x1E69BB6F8];
  *(v1 + 32) = *MEMORY[0x1E69BB6C0];
  *(v1 + 40) = v3;
  type metadata accessor for PKAnalyticsSubject(0);
  v4 = v2;
  v5 = v3;
  v6 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v8 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v9;
  v10 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  v11 = sub_1BE052434();
  v12 = MEMORY[0x1E69BABE8];
  *(inited + 64) = v11;
  *(inited + 72) = v13;
  v14 = *v12;
  *(inited + 80) = *v12;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v15;
  v16 = v8;
  v17 = v10;
  v18 = v14;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD213F8C(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v19 = sub_1BE052224();

  [v0 subjects:v6 sendEvent:v19];
}

void sub_1BD21449C()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B6CA0;
  v2 = *MEMORY[0x1E69BB6C0];
  v3 = *MEMORY[0x1E69BB6F8];
  *(v1 + 32) = *MEMORY[0x1E69BB6C0];
  *(v1 + 40) = v3;
  type metadata accessor for PKAnalyticsSubject(0);
  v4 = v2;
  v5 = v3;
  v6 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v8 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v9 = sub_1BE052434();
  v10 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  v12 = *v10;
  *(inited + 56) = *v10;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v13;
  v14 = v8;
  v15 = v12;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD213F8C(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v16 = sub_1BE052224();

  [v0 subjects:v6 sendEvent:v16];
}

double sub_1BD2146D8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1BD2146F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 244);
  v7 = *(v1 + 252);
  v8 = *(v1 + 236);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD2130A0(a1, v4, v5, v1 + 32, v8, v6, v7);
}

uint64_t objectdestroyTm_12()
{

  v1 = *(v0 + 96);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD214890(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BD0E5E8C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD2148E0(uint64_t *a1, int a2)
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

uint64_t sub_1BD214928(uint64_t result, int a2, int a3)
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

uint64_t sub_1BD21499C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v44 = sub_1BE04F434();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v4);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCB8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCC0);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCC8);
  v17 = *(v16 - 8);
  v42 = v16;
  v43 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v37 - v19;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCD0);
  MEMORY[0x1EEE9AC00](v45, v21);
  v38 = &v37 - v22;
  v47 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCD8);
  sub_1BD216668();
  sub_1BE0504A4();
  v53 = *(v2 + 1);
  v48 = *(v2 + 1);
  v23 = sub_1BD0DE4F4(&qword_1EBD3DD48, &qword_1EBD3DCB8);
  v24 = sub_1BD0DDEBC();
  v25 = MEMORY[0x1E69E6158];
  sub_1BE050B74();
  (*(v7 + 8))(v10, v6);
  v26 = v41;
  v27 = v44;
  (*(v3 + 104))(v41, *MEMORY[0x1E697C438], v44);
  *&v48 = v6;
  *(&v48 + 1) = v25;
  v49 = v23;
  v50 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v39;
  sub_1BE050E84();
  (*(v3 + 8))(v26, v27);
  (*(v40 + 8))(v15, v29);
  sub_1BE052434();
  *&v48 = v29;
  *(&v48 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v38;
  v31 = v42;
  sub_1BE050DE4();

  (*(v43 + 8))(v20, v31);
  v32 = *v2;
  v51 = v2[4];
  v52 = v32;
  v33 = swift_allocObject();
  v34 = *(v2 + 1);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v34;
  *(v33 + 48) = v2[4];
  v35 = (v30 + *(v45 + 36));
  *v35 = sub_1BD216A68;
  v35[1] = v33;
  v35[2] = 0;
  v35[3] = 0;
  sub_1BE052434();
  sub_1BD216A6C(&v52, &v48);
  sub_1BD206260(&v53, &v48);
  sub_1BD0DE19C(&v51, &v48, &qword_1EBD3DD40);
  sub_1BD216AC8();
  sub_1BE050DE4();

  return sub_1BD0552E8(v30);
}

id sub_1BD214F0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v9, v10);
  v14 = &v26 - v13;
  if (*(*a1 + 16))
  {
    v27 = a2;
    v28 = v11;
    (*(v5 + 104))(v8, *MEMORY[0x1E69B8068], v4, v12.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      v19 = v18;

      (*(v5 + 8))(v8, v4);
      v31 = v17;
      v32 = v19;
      sub_1BD0DDEBC();
      v31 = sub_1BE0506C4();
      v32 = v20;
      v33 = v21 & 1;
      v22 = a1[4];
      v34 = v23;
      v35 = v22;
      v30 = v22;
      MEMORY[0x1EEE9AC00](v31, v20);
      sub_1BD0DE19C(&v35, v29, &qword_1EBD3DD40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD40);
      sub_1BD216784();
      sub_1BD2169EC();
      sub_1BE051A34();
      v24 = v27;
      (*(v28 + 32))(v27, v14, v9);
      return (*(v28 + 56))(v24, 0, 1, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v25 = *(v11 + 56);

    return v25(a2, 1, 1, v9, v12);
  }

  return result;
}

uint64_t sub_1BD215278(uint64_t a1, uint64_t *a2)
{
  v7 = a1;
  swift_getKeyPath();
  v10 = *a2;
  v9 = *(a2 + 1);
  v8 = a2[4];
  v3 = swift_allocObject();
  v4 = *(a2 + 1);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[4];
  sub_1BE048C84();
  sub_1BD216A6C(&v10, v6);
  sub_1BD206260(&v9, v6);
  sub_1BD0DE19C(&v8, v6, &qword_1EBD3DD40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD10);
  sub_1BD0DE4F4(&qword_1EBD3DD70, &qword_1EBD3DD68);
  sub_1BD217414(&qword_1EBD3DD78, type metadata accessor for UnavailableIdentityMethodItem);
  sub_1BD216808();
  return sub_1BE0519C4();
}

uint64_t sub_1BD21542C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v35 = sub_1BE04FF64();
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD80);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD28);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v34 - v15;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD88);
  v17 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v18);
  v20 = &v34 - v19;
  *v16 = sub_1BE04F504();
  *(v16 + 1) = 0x4020000000000000;
  v16[16] = 0;
  *v12 = sub_1BE04F504();
  *(v12 + 1) = 0x4030000000000000;
  v12[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD90);
  sub_1BD215890(a2, a1, &v12[*(v21 + 44)]);
  sub_1BE051CE4();
  v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD98) + 44)];
  sub_1BE04EE54();
  sub_1BD0DE204(v12, v22, &qword_1EBD3DD80);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDA0) + 36));
  v24 = v44;
  v23[4] = v43;
  v23[5] = v24;
  v23[6] = v45;
  v25 = v40;
  *v23 = v39;
  v23[1] = v25;
  v26 = v42;
  v23[2] = v41;
  v23[3] = v26;
  sub_1BE04FF44();
  v27 = sub_1BD0DE4F4(&qword_1EBD3DD30, &qword_1EBD3DD28);
  sub_1BE050D14();
  (*(v5 + 8))(v8, v35);
  sub_1BD0DE53C(v16, &qword_1EBD3DD28);
  sub_1BE052434();
  v37 = v13;
  v38 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v36;
  v29 = v34;
  sub_1BE050DE4();

  (*(v17 + 8))(v20, v29);
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD10);
  v33 = (v28 + *(result + 36));
  *v33 = KeyPath;
  v33[1] = sub_1BD10DF54;
  v33[2] = v31;
  return result;
}

uint64_t sub_1BD215890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v61 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDA8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v57 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDB0);
  v11 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v12);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v57 - v17;
  v19 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v57 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDB8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v57 - v33;
  v35 = *(type metadata accessor for UnavailableIdentityMethodItem() + 20);
  v60 = a2;
  sub_1BD0DE19C(a2 + v35, v18, &qword_1EBD3C3F8);
  v36 = type metadata accessor for UnavailablePass(0);
  if ((*(*(v36 - 8) + 48))(v18, 1, v36) == 1)
  {
    sub_1BD0DE53C(v18, &qword_1EBD3C3F8);
    v37 = 1;
    v38 = v58;
  }

  else
  {
    sub_1BD0E8EA0(v18, v22);
    sub_1BD21745C(v18, type metadata accessor for UnavailablePass);
    sub_1BD2174BC(v22, v26, type metadata accessor for WrappedPass);
    v39 = type metadata accessor for PassImage(0);
    sub_1BD0E8EA0(v26, &v14[v39[6]]);
    PKPassFrontFaceContentSize();
    *(v14 + 3) = 0x4049800000000000;
    *(v14 + 4) = v41 / v40 * 51.0;
    *v14 = sub_1BD70C870;
    *(v14 + 1) = 0;
    v14[16] = 0;
    v14[v39[7]] = 0;
    *&v14[v39[8]] = 1911;
    LOBYTE(v39) = sub_1BE050234();
    sub_1BE04E1F4();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    sub_1BD21745C(v26, type metadata accessor for WrappedPass);
    v50 = v58;
    v51 = &v14[*(v58 + 36)];
    *v51 = v39;
    *(v51 + 1) = v43;
    *(v51 + 2) = v45;
    *(v51 + 3) = v47;
    *(v51 + 4) = v49;
    v51[40] = 0;
    sub_1BD0DE204(v14, v34, &qword_1EBD3DDB0);
    v37 = 0;
    v38 = v50;
  }

  (*(v11 + 56))(v34, v37, 1, v38);
  *v10 = sub_1BE04F7C4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDC0);
  sub_1BD215DE4(v59, v60, &v10[*(v52 + 44)]);
  sub_1BD0DE19C(v34, v30, &qword_1EBD3DDB8);
  v53 = v62;
  sub_1BD0DE19C(v10, v62, &qword_1EBD3DDA8);
  v54 = v61;
  sub_1BD0DE19C(v30, v61, &qword_1EBD3DDB8);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDC8);
  sub_1BD0DE19C(v53, v54 + *(v55 + 48), &qword_1EBD3DDA8);
  sub_1BD0DE53C(v10, &qword_1EBD3DDA8);
  sub_1BD0DE53C(v34, &qword_1EBD3DDB8);
  sub_1BD0DE53C(v53, &qword_1EBD3DDA8);
  return sub_1BD0DE53C(v30, &qword_1EBD3DDB8);
}

uint64_t sub_1BD215DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v38 = a2;
  v39 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDD0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDD8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v37 - v26;
  *v27 = sub_1BE04F504();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDE0) + 44)];
  sub_1BD2161B4();
  v29 = sub_1BE04F794();
  v30 = &v19[*(v12 + 44)];
  *v30 = v29;
  v30[1] = sub_1BD21636C;
  v30[2] = 0;
  sub_1BD0DE19C(v19, v15, &qword_1EBD3DDD0);
  sub_1BD0DE19C(v15, v28, &qword_1EBD3DDD0);
  v31 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDE8) + 48));
  v40 = 0uLL;
  *&v41 = 0;
  *(&v41 + 1) = 1;
  v42 = 0u;
  v43 = 0u;
  v32 = v41;
  *v31 = 0uLL;
  v31[1] = v32;
  v33 = v43;
  v31[2] = v42;
  v31[3] = v33;
  sub_1BD0DE19C(&v40, v44, &qword_1EBD3DDF0);
  sub_1BD0DE53C(v19, &qword_1EBD3DDD0);
  memset(v44, 0, 24);
  v44[3] = 1;
  v45 = 0u;
  v46 = 0u;
  sub_1BD0DE53C(v44, &qword_1EBD3DDF0);
  sub_1BD0DE53C(v15, &qword_1EBD3DDD0);
  sub_1BD216394(v38, v10);
  sub_1BD0DE19C(v27, v23, &qword_1EBD3DDD8);
  sub_1BD0DE19C(v10, v6, &unk_1EBD5BB60);
  v34 = v39;
  sub_1BD0DE19C(v23, v39, &qword_1EBD3DDD8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDF8);
  sub_1BD0DE19C(v6, v34 + *(v35 + 48), &unk_1EBD5BB60);
  sub_1BD0DE53C(v10, &unk_1EBD5BB60);
  sub_1BD0DE53C(v27, &qword_1EBD3DDD8);
  sub_1BD0DE53C(v6, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v23, &qword_1EBD3DDD8);
}

uint64_t sub_1BD2161B4()
{
  sub_1BD690908();
  sub_1BD0DDEBC();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  sub_1BE050324();
  v5 = sub_1BE0505F4();
  v7 = v6;
  v9 = v8;

  sub_1BD0DDF10(v0, v2, v4 & 1);

  sub_1BE051234();
  v10 = sub_1BE050564();
  v12 = v11;
  v14 = v13;

  sub_1BD0DDF10(v5, v7, v9 & 1);

  swift_getKeyPath();
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
  sub_1BD1B9C50();
  sub_1BE050DE4();

  sub_1BD0DDF10(v10, v12, v14 & 1);
}

uint64_t sub_1BD216394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v30 - v6;
  v8 = sub_1BD216CD8(a1);
  if (v9)
  {
    v34 = v8;
    v35 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v14 = v13;
    sub_1BE0502E4();
    v15 = sub_1BE0505F4();
    v17 = v16;
    v31 = a2;
    v32 = v4;
    v19 = v18;

    sub_1BD0DDF10(v10, v12, v14 & 1);

    sub_1BE051234();
    v20 = sub_1BE050564();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    sub_1BD0DDF10(v15, v17, v19 & 1);

    v34 = v20;
    v35 = v22;
    v36 = v24 & 1;
    v37 = v26;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v20, v22, v24 & 1);

    v27 = v31;
    sub_1BD0DE204(v7, v31, &qword_1EBD452C0);
    return (*(v33 + 56))(v27, 0, 1, v32);
  }

  else
  {
    v29 = *(v33 + 56);

    return v29(a2, 1, 1, v4);
  }
}

unint64_t sub_1BD216668()
{
  result = qword_1EBD3DCE0;
  if (!qword_1EBD3DCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DCD8);
    sub_1BD2166EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DCE0);
  }

  return result;
}

unint64_t sub_1BD2166EC()
{
  result = qword_1EBD3DCE8;
  if (!qword_1EBD3DCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DCF0);
    sub_1BD216784();
    sub_1BD2169EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DCE8);
  }

  return result;
}

unint64_t sub_1BD216784()
{
  result = qword_1EBD3DCF8;
  if (!qword_1EBD3DCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DD00);
    sub_1BD216808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DCF8);
  }

  return result;
}

unint64_t sub_1BD216808()
{
  result = qword_1EBD3DD08;
  if (!qword_1EBD3DD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DD10);
    sub_1BD2168C0();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DD08);
  }

  return result;
}

unint64_t sub_1BD2168C0()
{
  result = qword_1EBD3DD18;
  if (!qword_1EBD3DD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DD20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DD28);
    sub_1BD0DE4F4(&qword_1EBD3DD30, &qword_1EBD3DD28);
    swift_getOpaqueTypeConformance2();
    sub_1BD217414(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DD18);
  }

  return result;
}

unint64_t sub_1BD2169EC()
{
  result = qword_1EBD3DD38;
  if (!qword_1EBD3DD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DD38);
  }

  return result;
}

unint64_t sub_1BD216AC8()
{
  result = qword_1EBD3DD50;
  if (!qword_1EBD3DD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DCD0);
    sub_1BD216B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DD50);
  }

  return result;
}

unint64_t sub_1BD216B54()
{
  result = qword_1EBD3DD58;
  if (!qword_1EBD3DD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DD60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DCC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DCB8);
    sub_1BD0DE4F4(&qword_1EBD3DD48, &qword_1EBD3DCB8);
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD217414(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DD58);
  }

  return result;
}

id sub_1BD216CD8(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v44 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for UnavailablePass(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  v25 = *(type metadata accessor for UnavailableIdentityMethodItem() + 20);
  sub_1BD0DE19C(a1 + v25, v15, &qword_1EBD3C3F8);
  v26 = *(v17 + 48);
  if (v26(v15, 1, v16) == 1)
  {
    sub_1BD0DE53C(v15, &qword_1EBD3C3F8);
LABEL_9:
    sub_1BD0DE19C(a1 + v25, v11, &qword_1EBD3C3F8);
    if (v26(v11, 1, v16) == 1)
    {
      sub_1BD0DE53C(v11, &qword_1EBD3C3F8);
      return 0;
    }

    sub_1BD2174BC(v11, v20, type metadata accessor for UnavailablePass);
    v36 = sub_1BD68BA18(*&v20[*(v16 + 28)], *&v20[*(v16 + 28) + 8], v20[*(v16 + 28) + 16], 0);
    sub_1BD21745C(v20, type metadata accessor for UnavailablePass);
    return v36;
  }

  sub_1BD2174BC(v15, v24, type metadata accessor for UnavailablePass);
  v27 = WrappedPass.secureElementPass.getter();
  if (!v27)
  {
    sub_1BD21745C(v24, type metadata accessor for UnavailablePass);
    goto LABEL_9;
  }

  v28 = v27;
  if (([v27 isIdentityPass] & 1) == 0)
  {
    sub_1BD21745C(v24, type metadata accessor for UnavailablePass);

    goto LABEL_9;
  }

  v29 = &v24[*(v16 + 20)];
  v30 = *(v29 + 1);
  if (v30)
  {
    v31 = *v29;
    v33 = v44;
    v32 = v45;
    v34 = v46;
    (*(v45 + 104))(v44, *MEMORY[0x1E69B8068], v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BE0B69E0;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = sub_1BD110550();
    *(v35 + 32) = v31;
    *(v35 + 40) = v30;
    sub_1BE048C84();
    v36 = sub_1BE04B714();

    (*(v32 + 8))(v33, v34);
    sub_1BD21745C(v24, type metadata accessor for UnavailablePass);
    return v36;
  }

  v39 = v45;
  v38 = v46;
  v40 = v43;
  (*(v45 + 104))(v43, *MEMORY[0x1E69B8068], v46);
  result = PKPassKitBundle();
  if (result)
  {
    v41 = result;
    v42 = sub_1BE04B6F4();

    (*(v39 + 8))(v40, v38);
    sub_1BD21745C(v24, type metadata accessor for UnavailablePass);
    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD217234()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69BB6E0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = v3;
  v10 = v7;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD217414(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v11 = sub_1BE052224();

  [v0 subject:v1 sendEvent:v11];
}

uint64_t objectdestroyTm_13()
{

  return swift_deallocObject();
}

uint64_t sub_1BD217414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD21745C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD2174BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD217524()
{
  result = qword_1EBD3DE00;
  if (!qword_1EBD3DE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DE08);
    sub_1BD216AC8();
    sub_1BD217414(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DE00);
  }

  return result;
}

uint64_t PeerPaymentIdentityManager.firstName.getter()
{
  v1 = *(v0 + OBJC_IVAR____PKPeerPaymentIdentityManager_firstName);
  sub_1BE048C84();
  return v1;
}

id sub_1BD217634()
{
  sub_1BE048C84();
  v0 = sub_1BE052404();

  return v0;
}

uint64_t PeerPaymentIdentityManager.lastName.getter()
{
  v1 = *(v0 + OBJC_IVAR____PKPeerPaymentIdentityManager_lastName);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD217824(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  v6 = *(v2 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v5 = *(v2 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  if (v5 >> 60 == 15)
  {
    if (a2 >> 60 == 15)
    {
      sub_1BD030394(v6, v5);
      sub_1BD030394(a1, a2);
      return sub_1BD030220(v6, v5);
    }

    goto LABEL_5;
  }

  if (a2 >> 60 == 15)
  {
LABEL_5:
    sub_1BD030394(v6, v5);
    sub_1BD030394(a1, a2);
    sub_1BD030220(v6, v5);
    sub_1BD030220(a1, a2);
    return sub_1BD217A8C();
  }

  sub_1BD030394(v6, v5);
  sub_1BD030394(v6, v5);
  sub_1BD030394(a1, a2);
  v8 = sub_1BD3D8CB4(v6, v5, a1, a2);
  sub_1BD030220(v6, v5);
  sub_1BD030220(a1, a2);
  result = sub_1BD030220(v6, v5);
  if ((v8 & 1) == 0)
  {
    return sub_1BD217A8C();
  }

  return result;
}

uint64_t PeerPaymentIdentityManager.profilePictureData.getter()
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  sub_1BD030394(v1, *(v0 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8));
  return v1;
}

uint64_t sub_1BD217A8C()
{
  v1 = v0;
  v2 = sub_1BE051FD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  *v6 = sub_1BE052D54();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = sub_1BE052004();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    swift_getKeyPath();
    v23 = v1;
    sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
    sub_1BE04B594();

    v9 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
    v10 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference);
    v11 = sub_1BE052404();
    v12 = sub_1BE052404();
    v13 = PKPeerPaymentDisplayNameWithNamesAndPreferences();

    if (v13)
    {
      sub_1BE052434();
    }

    else
    {
      sub_1BE048C84();
    }

    swift_getKeyPath();
    v23 = v1;
    sub_1BE04B594();

    if ([*(v1 + v9) shareProfilePicture])
    {
      swift_getKeyPath();
      v23 = v1;
      sub_1BE04B594();

      v14 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
      v15 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
      sub_1BD030394(v14, v15);
    }

    else
    {
      v14 = 0;
      v15 = 0xF000000000000000;
    }

    sub_1BD030394(v14, v15);
    v16 = sub_1BE052404();

    if (v15 >> 60 == 15)
    {
      v17 = 0;
    }

    else
    {
      v17 = sub_1BE04AAB4();
      sub_1BD030220(v14, v15);
    }

    v18 = [objc_allocWithZone(MEMORY[0x1E69B8FB8]) initWithDisplayName:v16 imageData:v17];

    sub_1BD2185B0(v18);
    swift_getKeyPath();
    v23 = v1;
    sub_1BE04B594();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      swift_getKeyPath();
      v22 = v1;
      sub_1BE04B594();

      v21 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
      [v20 peerPaymentIdentityManager:v1 didUpdateProfileAppearanceData:v21];
      sub_1BD030220(v14, v15);

      return swift_unknownObjectRelease();
    }

    else
    {
      return sub_1BD030220(v14, v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD218070(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v6 = *(v2 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v7 = *(v2 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  sub_1BD030394(v6, v7);
  v8 = sub_1BD1257C0(v6, v7, a1, a2);
  sub_1BD030220(v6, v7);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
    sub_1BE04B584();
    sub_1BD030220(a1, a2);
  }

  else
  {
    v12 = *v5;
    v13 = v5[1];
    *v5 = a1;
    v5[1] = a2;
    sub_1BD030394(v12, v13);
    sub_1BD030394(a1, a2);
    sub_1BD030220(v12, v13);
    sub_1BD217824(v12, v13);
    sub_1BD030220(v12, v13);

    return sub_1BD030220(a1, a2);
  }
}

uint64_t sub_1BD218240@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v5 = *(v3 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_1BD030394(v4, v5);
}

uint64_t sub_1BD2182F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BD030394(*a1, v2);
  return sub_1BD218070(v1, v2);
}

uint64_t type metadata accessor for PeerPaymentIdentityManager()
{
  result = qword_1EBD3DE58;
  if (!qword_1EBD3DE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD218388(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v6 = *(a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v7 = *(a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  *v5 = a2;
  v5[1] = a3;
  sub_1BD030394(v6, v7);
  sub_1BD030394(a2, a3);
  sub_1BD030220(v6, v7);
  sub_1BD217824(v6, v7);
  return sub_1BD030220(v6, v7);
}

void sub_1BD2185B0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData;
  v5 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
  sub_1BD0E5E8C(0, &qword_1EBD3DE68);
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
    sub_1BE04B584();
  }
}

id sub_1BD218778(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_1BD21883C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1BD21892C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  v5 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference);
  sub_1BD0E5E8C(0, &qword_1EBD3DE50);
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
    sub_1BE04B584();
  }
}

void (*PeerPaymentIdentityManager.shareLastName.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____PKPeerPaymentIdentityManager___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  v5 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  *(v4 + 32) = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  *(v4 + 40) = [*(v1 + v5) shareLastName];
  return sub_1BD218C30;
}

id sub_1BD218C50(void *a1, uint64_t a2, SEL *a3)
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  v5 = a1;
  sub_1BE04B594();

  v6 = [*&v5[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference] *a3];

  return v6;
}

id sub_1BD218D30(SEL *a1)
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  return [*(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference) *a1];
}

id sub_1BD218E4C(char a1, SEL *a2, SEL *a3)
{
  v6 = a1 & 1;
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  v7 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  result = [*(v3 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference) *a2];
  if (result != v6)
  {
    swift_getKeyPath();
    sub_1BE04B594();

    [*(v3 + v7) *a3];
    return sub_1BD217A8C();
  }

  return result;
}

id sub_1BD218F6C@<X0>(uint64_t *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  result = [*(v5 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference) *a2];
  *a3 = result;
  return result;
}

void (*PeerPaymentIdentityManager.shareProfilePicture.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____PKPeerPaymentIdentityManager___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  v5 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  *(v4 + 32) = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  *(v4 + 40) = [*(v1 + v5) shareProfilePicture];
  return sub_1BD219140;
}

void sub_1BD219154(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 40);
  swift_getKeyPath();
  v8 = v6[4];
  v9 = v6[1];
  *v6 = v9;
  sub_1BE04B594();

  if (v7 != [*(v9 + v8) *a3])
  {
    v10 = v6[4];
    v11 = v6[1];
    swift_getKeyPath();
    *v6 = v11;
    sub_1BE04B594();

    [*(v11 + v10) *a4];
    sub_1BD217A8C();
  }

  free(v6);
}

uint64_t PeerPaymentIdentityManager.delegate.getter()
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t PeerPaymentIdentityManager.delegate.setter()
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B584();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD219670@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1BD219738()
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B584();
}

void (*PeerPaymentIdentityManager.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____PKPeerPaymentIdentityManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v4[7] = OBJC_IVAR____PKPeerPaymentIdentityManager__delegate;
  swift_beginAccess();
  v4[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1BD2199D8;
}

void sub_1BD2199D8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  v4 = v3[4];
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  *v3 = v4;
  swift_getKeyPath();
  sub_1BE04B5A4();

  free(v3);
}

id PeerPaymentIdentityManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void PeerPaymentIdentityManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData];
  *&v0[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData] = xmmword_1BE0B8E60;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_1BE04B5C4();
  v3 = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR____PKPeerPaymentIdentityManager_service] = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [v3 preferences];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v4 profileAppearance];

  if (!v6)
  {
LABEL_39:
    __break(1u);
    return;
  }

  [v6 copy];

  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD3DE50);
  if (swift_dynamicCast())
  {
    v7 = v46;
  }

  else
  {
LABEL_6:
    v7 = [objc_allocWithZone(MEMORY[0x1E69B8FB0]) init];
    [v7 setShareLastName_];
    [v7 setShareProfilePicture_];
  }

  *&v0[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference] = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedInstance];
  if (!v10)
  {
    __break(1u);
    goto LABEL_39;
  }

  v11 = v10;
  v12 = [v10 appleAccountInformation];

  v44 = v12;
  v45 = v2;
  if (v12)
  {
    v13 = [v12 firstName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1BE052434();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v23 = [v12 lastName];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1BE052434();
      v21 = v26;

      if (v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v25 = 0;
      v21 = 0;
      if (v17)
      {
LABEL_15:
        v27 = v9;
        sub_1BE048C84();
        v22 = v15;
        v20 = sub_1BE052404();

        if (v21)
        {
LABEL_16:
          sub_1BE048C84();
          v12 = v25;
          v19 = sub_1BE052404();

          goto LABEL_20;
        }

LABEL_19:
        v12 = v25;
        v19 = 0;
        goto LABEL_20;
      }
    }

    v22 = v15;
    v28 = v9;
    v20 = 0;
    if (v21)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v18 = v9;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
LABEL_20:
  v29 = PKPeerPaymentDisplayNameWithNamesAndPreferences();

  if (v29)
  {
    sub_1BE052434();
  }

  v30 = objc_allocWithZone(MEMORY[0x1E69B8FB8]);
  v31 = sub_1BE052404();

  v32 = [v30 initWithDisplayName:v31 imageData:0];

  *&v0[OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData] = v32;
  if (v17)
  {
    v33 = v22;
  }

  else
  {
    v33 = 0;
  }

  if (v17)
  {
    v34 = v17;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  v35 = &v0[OBJC_IVAR____PKPeerPaymentIdentityManager_firstName];
  *v35 = v33;
  *(v35 + 1) = v34;
  if (v21)
  {
    v36 = v12;
  }

  else
  {
    v36 = 0;
  }

  if (v21)
  {
    v37 = v21;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  v38 = &v0[OBJC_IVAR____PKPeerPaymentIdentityManager_lastName];
  *v38 = v36;
  *(v38 + 1) = v37;
  sub_1BD030220(*v45, *(v45 + 1));
  *v45 = xmmword_1BE0B8E60;
  v48.receiver = v0;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, sel_init);
  v39 = [objc_allocWithZone(MEMORY[0x1E698BB40]) init];
  if (v39)
  {
    v40 = v39;
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD21A2D4;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD21AC88;
    aBlock[3] = &block_descriptor_28;
    v42 = _Block_copy(aBlock);
    v43 = v40;

    [v43 profilePictureForAccountOwnerWithCompletion_];

    _Block_release(v42);
    v9 = v43;
  }

  else
  {
  }
}

uint64_t sub_1BD21A004(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE051FA4();
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;
  aBlock[4] = sub_1BD21AB88;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_29;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD21AB90(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v20);
}

void sub_1BD21A2DC(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = a1;
      v5 = UIImagePNGRepresentation(v4);
      if (v5)
      {
        v6 = v5;
        v7 = sub_1BE04AAC4();
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0xF000000000000000;
      }

      sub_1BD218070(v7, v9);
    }
  }
}

Swift::Void __swiftcall PeerPaymentIdentityManager.commitUpdatesIfNeeded()()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager_service);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 preferences];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 profileAppearance];
      swift_getKeyPath();
      aBlock[0] = v1;
      sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
      sub_1BE04B594();

      v12 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
      if (v11 && (v13 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference), sub_1BD0E5E8C(0, &qword_1EBD3DE50), v14 = v13, v15 = sub_1BE053074(), v11, v14, (v15 & 1) != 0))
      {
      }

      else
      {
        swift_getKeyPath();
        aBlock[0] = v1;
        sub_1BE04B594();

        [v10 setProfileAppearance_];
        aBlock[4] = sub_1BD21A6FC;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD21AC88;
        aBlock[3] = &block_descriptor_16_0;
        v16 = _Block_copy(aBlock);
        v17 = v10;
        [v8 setPreferences:v17 completion:v16];

        _Block_release(v16);
      }

      return;
    }
  }

  sub_1BE04D094();
  v18 = sub_1BE04D204();
  v19 = sub_1BE052C34();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1BD026000, v18, v19, "NearbyPeerPayment: unable to update appearance preferences", v20, 2u);
    MEMORY[0x1BFB45F20](v20, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

void sub_1BD21A6FC(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a2;
    sub_1BE04D094();
    v9 = a2;
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_1BE053C74();
      v16 = sub_1BD123690(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1BD026000, v10, v11, "NearbyPeerPayment: updating appearance preferences failed with error %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1BFB45F20](v13, -1, -1);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
  }
}

id PeerPaymentIdentityManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD21AA5C()
{
  result = sub_1BE04B5D4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1BD21AB28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
  *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData) = v2;
  v4 = v2;
}

uint64_t sub_1BD21AB90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD21AC38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference);
  *(v1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference) = v2;
  v4 = v2;
}

id sub_1BD21ACB4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = [objc_allocWithZone(PKAccountSupportTopicsViewController) initWithAccount_];
  [v3 setSuggestedTopic_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  return v4;
}

id sub_1BD21AD40@<X0>(void *a1@<X8>)
{
  result = sub_1BD21AEB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD21AD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD21AF7C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD21ADD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD21AF7C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD21AE34()
{
  sub_1BD21AF7C();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD21AE60()
{
  result = qword_1EBD3DE70;
  if (!qword_1EBD3DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DE70);
  }

  return result;
}

id sub_1BD21AEB4(void *a1)
{
  result = [a1 accountIdentifier];
  if (result)
  {
    v2 = result;
    sub_1BE052434();

    v3 = sub_1BE052644();
    sub_1BE052564();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD21AF7C()
{
  result = qword_1EBD3DE78;
  if (!qword_1EBD3DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DE78);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CurrencyAmountTextField(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for CurrencyAmountTextField(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD21B0CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DE80);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DE88);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v49 - v12;
  *v13 = sub_1BE04F7B4();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DE90);
  sub_1BD21B718(&v13[*(v14 + 44)]);
  KeyPath = swift_getKeyPath();
  v16 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DE98) + 36)];
  *v16 = KeyPath;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = swift_getKeyPath();
  v18 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DEA0) + 36)];
  *v18 = v17;
  v18[8] = 1;
  v19 = *(v2 + 32);
  v54 = vsubq_f64(xmmword_1BE0C2BD0, *(v2 + 16));
  v53 = vsubq_f64(xmmword_1BE0C2BE0, v19);
  v20 = sub_1BE0501D4();
  v21 = &v13[*(v10 + 44)];
  *v21 = v20;
  *(v21 + 8) = v54;
  *(v21 + 24) = v53;
  v21[40] = 0;
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v13, v8, &qword_1EBD3DE88);
  v22 = &v8[*(v5 + 44)];
  v23 = v63;
  *(v22 + 4) = v62;
  *(v22 + 5) = v23;
  *(v22 + 6) = v64;
  v24 = v59;
  *v22 = v58;
  *(v22 + 1) = v24;
  v25 = v61;
  *(v22 + 2) = v60;
  *(v22 + 3) = v25;
  sub_1BE0528A4();
  sub_1BD222678(v2, &v56);
  v26 = sub_1BE052894();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  v29 = *(v2 + 80);
  *(v27 + 96) = *(v2 + 64);
  *(v27 + 112) = v29;
  *(v27 + 128) = *(v2 + 96);
  *(v27 + 144) = *(v2 + 112);
  v30 = *(v2 + 16);
  *(v27 + 32) = *v2;
  *(v27 + 48) = v30;
  v31 = *(v2 + 48);
  *(v27 + 64) = *(v2 + 32);
  *(v27 + 80) = v31;
  v32 = sub_1BE0528D4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32, v35);
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v49 - v36;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v52 = sub_1BE04EAA4();
    *&v53.f64[0] = &v49;
    v51 = *(v52 - 8);
    MEMORY[0x1EEE9AC00](v52, v38);
    v50 = &v49 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_1BE053834();

    v56 = 0xD000000000000031;
    v57 = 0x80000001BE11E830;
    v55 = 44;
    v40 = sub_1BE053B24();
    v49 = v8;
    MEMORY[0x1BFB3F610](v40);

    *&v54.f64[0] = &v49;
    v43 = MEMORY[0x1EEE9AC00](v41, v42);
    (*(v33 + 16))(&v49 - v36, &v49 - v36, v32, v43);
    v44 = v50;
    sub_1BE04EA94();
    (*(v33 + 8))(v37, v32);
    sub_1BD0DE204(v49, a1, &qword_1EBD3DE80);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD37170);
    return (*(v51 + 32))(a1 + *(v45 + 36), v44, v52);
  }

  else
  {
    v47 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DEB0) + 36));
    v48 = sub_1BE04E7B4();
    (*(v33 + 32))(&v47[*(v48 + 20)], &v49 - v36, v32);
    *v47 = &unk_1BE0C2E08;
    *(v47 + 1) = v27;
    return sub_1BD0DE204(v8, a1, &qword_1EBD3DE80);
  }
}

uint64_t sub_1BD21B718@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF38);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF40);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v46 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v42 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF48);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v45 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v44 = &v42 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF50);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v48 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v42 - v27;
  v43 = &v42 - v27;
  sub_1BD21BC10(&v42 - v27);
  sub_1BD21C020(v49);
  sub_1BD21C390();
  sub_1BD21DD2C(&v50);
  sub_1BD21DF7C(v8);
  sub_1BD0DE19C(v8, v4, &qword_1EBD3DF38);
  v29 = v53[0];
  v54[2] = v52;
  v55[0] = v53[0];
  v30 = *(v53 + 10);
  *(v55 + 10) = *(v53 + 10);
  v32 = v50;
  v31 = v51;
  v54[0] = v50;
  v54[1] = v51;
  v15[2] = v52;
  v15[3] = v29;
  *(v15 + 58) = v30;
  *v15 = v32;
  v15[1] = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF58);
  sub_1BD0DE19C(v4, v15 + *(v33 + 48), &qword_1EBD3DF38);
  sub_1BD0DE19C(v54, v59, &qword_1EBD3DF60);
  sub_1BD0DE53C(v8, &qword_1EBD3DF38);
  sub_1BD0DE53C(v4, &qword_1EBD3DF38);
  v56[2] = v52;
  v57[0] = v53[0];
  *(v57 + 10) = *(v53 + 10);
  v56[0] = v50;
  v56[1] = v51;
  sub_1BD0DE53C(v56, &qword_1EBD3DF60);
  v34 = v48;
  sub_1BD0DE19C(v28, v48, &qword_1EBD3DF50);
  v36 = v44;
  v35 = v45;
  sub_1BD0DE19C(v44, v45, &qword_1EBD3DF48);
  v37 = v46;
  sub_1BD0DE19C(v15, v46, &qword_1EBD3DF40);
  v38 = v47;
  sub_1BD0DE19C(v34, v47, &qword_1EBD3DF50);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF68);
  v40 = v39[12];
  memcpy(v58, v49, 0x274uLL);
  memcpy((v38 + v40), v49, 0x274uLL);
  sub_1BD0DE19C(v35, v38 + v39[16], &qword_1EBD3DF48);
  sub_1BD0DE19C(v37, v38 + v39[20], &qword_1EBD3DF40);
  sub_1BD0DE19C(v58, v59, &qword_1EBD3DF70);
  sub_1BD0DE53C(v15, &qword_1EBD3DF40);
  sub_1BD0DE53C(v36, &qword_1EBD3DF48);
  sub_1BD0DE53C(v43, &qword_1EBD3DF50);
  sub_1BD0DE53C(v37, &qword_1EBD3DF40);
  sub_1BD0DE53C(v35, &qword_1EBD3DF48);
  memcpy(v59, v49, 0x274uLL);
  sub_1BD0DE53C(v59, &qword_1EBD3DF70);
  return sub_1BD0DE53C(v48, &qword_1EBD3DF50);
}

uint64_t sub_1BD21BC10@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = sub_1BE04F6E4();
  v1 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E1F8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E200);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v32 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - v17;
  sub_1BD21D038(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E208);
  sub_1BD2238E4();
  sub_1BE050A24();
  memcpy(v38, v37, 0x142uLL);
  sub_1BD0DE53C(v38, &qword_1EBD3E208);
  sub_1BD21D4F8(v37);
  sub_1BE04F6D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF60);
  sub_1BD223D28();
  sub_1BE050DA4();
  (*(v1 + 8))(v4, v30);
  v39[2] = *&v37[32];
  v40[0] = *&v37[48];
  *(v40 + 10) = *&v37[58];
  v39[0] = *v37;
  v39[1] = *&v37[16];
  sub_1BD0DE53C(v39, &qword_1EBD3DF60);
  sub_1BD21D7C4(&v33);
  v19 = v32;
  sub_1BD0DE19C(v18, v32, &qword_1EBD3E200);
  v20 = v29;
  sub_1BD0DE19C(v11, v29, &qword_1EBD3E1F8);
  v21 = v31;
  sub_1BD0DE19C(v19, v31, &qword_1EBD3E200);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E298);
  sub_1BD0DE19C(v20, v21 + *(v22 + 48), &qword_1EBD3E1F8);
  v23 = (v21 + *(v22 + 64));
  v24 = *(v36 + 10);
  *(v42 + 10) = *(v36 + 10);
  v25 = v36[0];
  v41[2] = v35;
  v42[0] = v36[0];
  v27 = v33;
  v26 = v34;
  v41[0] = v33;
  v41[1] = v34;
  v23[2] = v35;
  v23[3] = v25;
  *(v23 + 58) = v24;
  *v23 = v27;
  v23[1] = v26;
  sub_1BD0DE19C(v41, v37, &qword_1EBD3DF60);
  sub_1BD0DE53C(v11, &qword_1EBD3E1F8);
  sub_1BD0DE53C(v18, &qword_1EBD3E200);
  *&v37[32] = v35;
  *&v37[48] = v36[0];
  *&v37[58] = *(v36 + 10);
  *v37 = v33;
  *&v37[16] = v34;
  sub_1BD0DE53C(v37, &qword_1EBD3DF60);
  sub_1BD0DE53C(v20, &qword_1EBD3E1F8);
  return sub_1BD0DE53C(v32, &qword_1EBD3E200);
}

void *sub_1BD21C020@<X0>(void *a1@<X8>)
{
  v3 = *(*(v1 + 8) + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_template);
  if (v3 > 2 || v3 == 0)
  {
    sub_1BD223078(__src);
    memcpy(__dst, __src, sizeof(__dst));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0B0);
    sub_1BD223084();
    sub_1BE04F9A4();
  }

  else
  {
    if (v3 == 1)
    {
      sub_1BD21DBE8(v6);
      memcpy(v8, v6, 0x272uLL);
      sub_1BD2236E4(v8);
      memcpy(v11, v8, 0x273uLL);
      sub_1BD0DE19C(v6, __src, &qword_1EBD3E0C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0D8);
      sub_1BD0DE4F4(&qword_1EBD3E0C0, &qword_1EBD3E0C8);
      sub_1BD22313C();
      sub_1BE04F9A4();
      memcpy(__src, v7, 0x273uLL);
      sub_1BD2236DC(__src);
      memcpy(v11, __src, sizeof(v11));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0B0);
      sub_1BD223084();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v6, &qword_1EBD3E0C8);
    }

    else
    {
      sub_1BD21E918(v6);
      memcpy(v8, v6, 0x19CuLL);
      sub_1BD2236D0(v8);
      memcpy(v11, v8, 0x273uLL);
      sub_1BD0DE19C(v6, __src, &qword_1EBD3E0D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0D8);
      sub_1BD0DE4F4(&qword_1EBD3E0C0, &qword_1EBD3E0C8);
      sub_1BD22313C();
      sub_1BE04F9A4();
      memcpy(__src, v7, 0x273uLL);
      sub_1BD2236DC(__src);
      memcpy(v11, __src, sizeof(v11));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0B0);
      sub_1BD223084();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v6, &qword_1EBD3E0D8);
    }

    memcpy(v11, __dst, sizeof(v11));
  }

  return memcpy(a1, v11, 0x274uLL);
}

uint64_t sub_1BD21C390()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFA0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFA8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFB0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v16 - v12;
  if ([*(*(v0 + 8) + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) isInTerminalState])
  {
    goto LABEL_6;
  }

  if (qword_1EBD36BD0 != -1)
  {
    swift_once();
  }

  v14 = sub_1BD2220F0();
  if (!v14)
  {
LABEL_6:
    sub_1BD220980(v4);
    sub_1BD0DE19C(v4, v8, &qword_1EBD3DFA0);
    swift_storeEnumTagMultiPayload();
    sub_1BD2227A8();
    sub_1BD222B38();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v4, &qword_1EBD3DFA0);
  }

  else
  {

    sub_1BD2204E4(v13);
    sub_1BD0DE19C(v13, v8, &qword_1EBD3DFB0);
    swift_storeEnumTagMultiPayload();
    sub_1BD2227A8();
    sub_1BD222B38();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v13, &qword_1EBD3DFB0);
  }
}

uint64_t sub_1BD21C630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a3;
  sub_1BE0528A4();
  v3[10] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD21C6C8, v5, v4);
}

uint64_t sub_1BD21C6C8()
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1BD2217E0();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 remoteImage];
    if (v3)
    {
      v4 = v3;
      PKScreenScale();
      v5 = [v4 imageForScaleFactorValue_];
      v0[13] = v5;

      if (v5)
      {
        v6 = swift_task_alloc();
        v0[14] = v6;
        *v6 = v0;
        v6[1] = sub_1BD21C84C;

        return sub_1BD21CB68(v5);
      }
    }

    else
    {
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BD21C84C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_1BD21CAF4;
  }

  else
  {
    v7 = sub_1BD21C990;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD21C990()
{
  v1 = *(v0 + 128);

  sub_1BE052984();
  if (v1)
  {
    v2 = *(v0 + 120);
  }

  else
  {
    v3 = *(v0 + 120);
    v4 = *(*(v0 + 72) + 64);
    *(v0 + 48) = v3;
    v5 = *(v0 + 104);
    *(v0 + 32) = v4;
    *(v0 + 16) = v4;
    sub_1BD0DE19C(v0 + 32, v0 + 56, &unk_1EBD4AB00);
    sub_1BD0DE19C(v0 + 40, v0 + 64, &qword_1EBD3DEC0);
    v6 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DEC8);
    sub_1BE0516B4();

    sub_1BD0DE53C(v0 + 32, &unk_1EBD4AB00);
    sub_1BD0DE53C(v0 + 40, &qword_1EBD3DEC0);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1BD21CAF4()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD21CB68(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_1BE0528A4();
  v2[21] = sub_1BE052894();
  v4 = sub_1BE052844();
  v2[22] = v4;
  v2[23] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD21CC00, v4, v3);
}

uint64_t sub_1BD21CC00()
{
  sub_1BE052984();
  v0[24] = 0;
  v1 = v0[19];
  v2 = *(v0[20] + 112);
  v3 = sub_1BD36B104();
  v5 = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD21CDB0;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DED0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD1F07A8;
  v0[13] = &block_descriptor_29;
  v0[14] = v6;
  [v2 fetchRemoteImage:v1 scaleToSize:1 preheatBitmap:v0 + 10 completion:{v3, v5}];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD21CDB0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1BD21CEB8, v2, v1);
}

id sub_1BD21CEB8()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[24];
    sub_1BE052984();
    if (v2)
    {

      v3 = v0[1];

      return v3();
    }

    result = [v1 imageRef];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;

    v7 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    v5 = v7;
  }

  else
  {

    v5 = 0;
  }

  v8 = v0[1];

  return v8(v5);
}

void *sub_1BD21D038@<X0>(void *a1@<X8>)
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  v3 = sub_1BD2217E0();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 remoteImage];
    if (v5)
    {
      v6 = v5;
      PKScreenScale();
      v7 = [v6 imageForScaleFactorValue_];

      if (v7)
      {
        sub_1BD21F154(v1, v41);
        v8 = v7;
        [v8 width];
        v10 = v9;
        if (PKRemoteImageDimensionIsMaximum())
        {
          v11 = 0;
          v12 = 1;
        }

        else
        {
          IsAutomatic = PKRemoteImageDimensionIsAutomatic();
          v12 = IsAutomatic;
          if (IsAutomatic)
          {
            v11 = 1;
          }

          else
          {
            v11 = v10;
          }
        }

        [v8 height];
        v15 = v14;
        if (PKRemoteImageDimensionIsMaximum())
        {
          if (v12)
          {
LABEL_15:
            v34 = 0;
            v35 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 1;
            v45[0] = 1;
            __src[0] = 1;
            __dst[0] = 0;
            LOBYTE(v38[0]) = 0;
            v36 = 0x4072C00000000000;
            v37 = 0x7FF0000000000000;
            v19 = 1;
LABEL_26:
            v38[6] = v41[6];
            v38[7] = v42[0];
            *(&v38[7] + 9) = *(v42 + 9);
            v38[2] = v41[2];
            v38[3] = v41[3];
            v38[4] = v41[4];
            v38[5] = v41[5];
            v38[0] = v41[0];
            v38[1] = v41[1];
            v22 = sub_1BD36A9B4();
            v23 = [objc_opt_self() systemGrayColor];
            v24 = sub_1BE0511C4();
            v25 = PKUIPixelLength();
            v26 = sub_1BD36AABC();
            v27 = sub_1BE0501F4();
            sub_1BE04E1F4();
            v39 = 0;
            *(&v38[9] + 8) = vdupq_n_s64(0x4046800000000000uLL);
            *(&v38[10] + 8) = xmmword_1BE0C2BF0;
            *&v38[9] = v8;
            *(&v38[11] + 1) = v34;
            LOBYTE(v38[12]) = v18;
            *(&v38[12] + 1) = v35;
            LOBYTE(v38[13]) = v19;
            *(&v38[13] + 1) = v37;
            LOBYTE(v38[14]) = v16;
            *(&v38[14] + 1) = v36;
            LOBYTE(v38[15]) = v17;
            BYTE8(v38[15]) = v22 & 1;
            *&v38[16] = v24;
            *(&v38[16] + 1) = v25;
            *&v38[17] = v26;
            BYTE8(v38[17]) = v27;
            *(&v38[17] + 9) = *v40;
            HIDWORD(v38[17]) = *&v40[3];
            *&v38[18] = v28;
            *(&v38[18] + 1) = v29;
            *&v38[19] = v30;
            *(&v38[19] + 1) = v31;
            LOBYTE(v38[20]) = 0;
            memcpy(__src, v38, 0x141uLL);
            sub_1BD223E78(__src);
            memcpy(v45, __src, sizeof(v45));
            sub_1BD0DE19C(v38, __dst, &qword_1EBD3E220);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E220);
            sub_1BD223970();
            sub_1BE04F9A4();

            sub_1BD0DE53C(v38, &qword_1EBD3E220);
            memcpy(v45, __dst, sizeof(v45));
            return memcpy(a1, v45, 0x142uLL);
          }
        }

        else
        {
          v20 = PKRemoteImageDimensionIsAutomatic();
          if (v12)
          {
            if (v11)
            {
              if (v20)
              {
                v18 = 0;
                v19 = 0;
                v36 = 0;
                v37 = 0;
                v45[0] = 0;
                v34 = 0x4046800000000000;
                v35 = 0x4046800000000000;
                __src[0] = 0;
                v16 = 1;
                __dst[0] = 1;
                LOBYTE(v38[0]) = 1;
                v17 = 1;
                goto LABEL_26;
              }
            }

            else if (v20)
            {
              goto LABEL_15;
            }

            v34 = 0;
            v19 = 0;
            v36 = 0;
            v37 = 0;
            v33 = 300.0;
            v18 = 1;
            v45[0] = 1;
            __src[0] = 0;
            if (v15 <= 300.0)
            {
              v33 = v15;
            }

            v35 = *&v33;
            __dst[0] = 1;
            LOBYTE(v38[0]) = 1;
            v16 = 1;
            v17 = 1;
            goto LABEL_26;
          }

          if ((v20 & 1) == 0)
          {
            v18 = 0;
            v19 = 0;
            v36 = 0;
            v37 = 0;
            v21 = 300.0;
            if (v15 <= 300.0)
            {
              v21 = v15;
            }

            v35 = *&v21;
            v45[0] = 0;
            __src[0] = 0;
            v16 = 1;
            __dst[0] = 1;
            LOBYTE(v38[0]) = 1;
            goto LABEL_25;
          }
        }

        v18 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v45[0] = 0;
        v19 = 1;
        __src[0] = 1;
        __dst[0] = 1;
        LOBYTE(v38[0]) = 1;
        v16 = 1;
LABEL_25:
        v17 = 1;
        v34 = v11;
        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  sub_1BD223E6C(__src);
  memcpy(__dst, __src, 0x142uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E220);
  sub_1BD223970();
  sub_1BE04F9A4();
  return memcpy(a1, v45, 0x142uLL);
}

__n128 sub_1BD21D4F8@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36BB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BD221C68();
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_1BD21F554(v3);
  if (!v7)
  {

LABEL_7:
    LOBYTE(v26) = 1;
    v32[25] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
    sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90);
    sub_1BE04F9A4();
    goto LABEL_8;
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_1BE0503E4();
  sub_1BE050334();

  v25 = v10 & 1;
  v11 = sub_1BE0505F4();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = sub_1BE0501F4();
  sub_1BE04E1F4();
  LOBYTE(v31[0]) = 0;
  *&v26 = v11;
  *(&v26 + 1) = v13;
  v27.n128_u8[0] = v15 & 1;
  v27.n128_u64[1] = v17;
  LOBYTE(v28) = v18;
  *(&v28 + 1) = v19;
  *v29 = v20;
  *&v29[8] = v21;
  *&v29[16] = v22;
  v29[24] = 0;
  v35 = v28;
  *v36 = *v29;
  *&v36[9] = *&v29[9];
  v33 = v26;
  v34 = v27;
  v30 = 0;
  v36[25] = 0;
  sub_1BD0DE19C(&v26, v31, &unk_1EBD3DF90);
  sub_1BD0DE19C(&v26, v31, &unk_1EBD3DF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
  sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90);
  sub_1BE04F9A4();
  sub_1BD0DDF10(v8, v9, v25);

  sub_1BD0DE53C(&v26, &unk_1EBD3DF90);

  sub_1BD0DE53C(&v26, &unk_1EBD3DF90);
  v35 = v31[2];
  *v36 = *v32;
  *&v36[10] = *&v32[10];
  v33 = v31[0];
  v34 = v31[1];
LABEL_8:
  v23 = *v36;
  *(a1 + 32) = v35;
  *(a1 + 48) = v23;
  *(a1 + 58) = *&v36[10];
  result = v34;
  *a1 = v33;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1BD21D7C4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE050404();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBD36BC0 != -1)
  {
    swift_once();
  }

  v7 = sub_1BD221C68();
  if (!v7)
  {
    goto LABEL_7;
  }

  v36 = v7;
  v8 = sub_1BD21F554(v36);
  if (!v11)
  {

LABEL_7:
    LOBYTE(v38) = 1;
    BYTE9(v44[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
    sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90);
    sub_1BE04F9A4();
    goto LABEL_8;
  }

  v32 = v9;
  v33 = v11;
  v31 = v8;
  v35 = v10;
  sub_1BE0502A4();
  (*(v3 + 104))(v6, *MEMORY[0x1E6980EA8], v2);
  sub_1BE050434();

  (*(v3 + 8))(v6, v2);
  v34 = v35 & 1;
  LOBYTE(v45) = v35 & 1;
  v12 = sub_1BE0505F4();
  v14 = v13;
  v16 = v15;
  v35 = a1;

  sub_1BE051234();
  v17 = sub_1BE050564();
  v19 = v18;
  v21 = v20;
  v30 = v22;

  sub_1BD0DDF10(v12, v14, v16 & 1);
  a1 = v35;

  v23 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v37 = 0;
  *&v38 = v17;
  *(&v38 + 1) = v19;
  v39.n128_u8[0] = v21 & 1;
  *(v39.n128_u32 + 1) = v45;
  v39.n128_u32[1] = *(&v45 + 3);
  v39.n128_u64[1] = v30;
  LOBYTE(v40) = v23;
  DWORD1(v40) = *(v43 + 3);
  *(&v40 + 1) = v43[0];
  *(&v40 + 1) = v24;
  *&v41[0] = v25;
  *(&v41[0] + 1) = v26;
  *&v41[1] = v27;
  BYTE8(v41[1]) = 0;
  v47 = v40;
  *v48 = v41[0];
  *&v48[9] = *(v41 + 9);
  v45 = v38;
  v46 = v39;
  v42 = 0;
  v48[25] = 0;
  sub_1BD0DE19C(&v38, v43, &unk_1EBD3DF90);
  sub_1BD0DE19C(&v38, v43, &unk_1EBD3DF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
  sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90);
  sub_1BE04F9A4();
  sub_1BD0DDF10(v31, v32, v34);

  sub_1BD0DE53C(&v38, &unk_1EBD3DF90);

  sub_1BD0DE53C(&v38, &unk_1EBD3DF90);
  v47 = v43[2];
  *v48 = v44[0];
  *&v48[10] = *(v44 + 10);
  v45 = v43[0];
  v46 = v43[1];
LABEL_8:
  v28 = *v48;
  *(a1 + 32) = v47;
  *(a1 + 48) = v28;
  *(a1 + 58) = *&v48[10];
  result = v46;
  *a1 = v45;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BD21DBE8@<X0>(void *a1@<X8>)
{
  sub_1BD21E2BC(__src);
  sub_1BD21E670(&v4);
  memcpy(__dst, __src, 0x222uLL);
  memcpy(v3, __src, 0x222uLL);
  v10[1] = v5;
  v10[2] = v6;
  v11[0] = v7[0];
  *(v11 + 10) = *(v7 + 10);
  v10[0] = v4;
  *&v3[73] = v6;
  *&v3[75] = v7[0];
  *(&v3[76] + 2) = *(v7 + 10);
  *&v3[69] = v4;
  *&v3[71] = v5;
  memcpy(a1, v3, 0x272uLL);
  v12[2] = v6;
  v13[0] = v7[0];
  *(v13 + 10) = *(v7 + 10);
  v12[0] = v4;
  v12[1] = v5;
  sub_1BD0DE19C(__dst, v14, &qword_1EBD3E180);
  sub_1BD0DE19C(v10, v14, &qword_1EBD3DF60);
  sub_1BD0DE53C(v12, &qword_1EBD3DF60);
  memcpy(v14, __src, 0x222uLL);
  return sub_1BD0DE53C(v14, &qword_1EBD3E180);
}

__n128 sub_1BD21DD2C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE050404();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD36ABF8();
  if (v7)
  {
    sub_1BE0502A4();
    (*(v3 + 104))(v6, *MEMORY[0x1E6980EA8], v2);
    sub_1BE050434();

    (*(v3 + 8))(v6, v2);
    sub_1BE050334();

    v8 = sub_1BE0505F4();
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = sub_1BE0501F4();
    sub_1BE04E1F4();
    LOBYTE(v32) = v12 & 1;
    v31 = 0;
    v22[2] = v8;
    v22[3] = v10;
    v23 = v12 & 1;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = 0;
  }

  else
  {
    v31 = 1;
    HIBYTE(v30) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
  sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90);
  sub_1BE04F9A4();
  v20 = v35[0];
  *(a1 + 32) = v34;
  *(a1 + 48) = v20;
  *(a1 + 58) = *(v35 + 10);
  result = v33;
  *a1 = v32;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BD21DF7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DF78);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v24[-v6 - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24[-v11 - 8];
  if (qword_1EBD36BE0 != -1)
  {
    swift_once();
  }

  v13 = sub_1BD2220F0();
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    v23 = a1;
    v16 = *(v2 + 80);
    *(v15 + 80) = *(v2 + 64);
    *(v15 + 96) = v16;
    *(v15 + 112) = *(v2 + 96);
    v17 = *(v2 + 112);
    v18 = *(v2 + 16);
    *(v15 + 16) = *v2;
    *(v15 + 32) = v18;
    v19 = *(v2 + 48);
    *(v15 + 48) = *(v2 + 32);
    *(v15 + 64) = v19;
    *(v15 + 128) = v17;
    *(v15 + 136) = v14;
    MEMORY[0x1EEE9AC00](v15, v20);
    *(&v23 - 2) = v14;
    sub_1BD222678(v2, v24);
    v21 = v14;
    sub_1BE051704();
    (*(v9 + 16))(v7, v12, v8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    sub_1BE04F9A4();

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    return sub_1BE04F9A4();
  }
}

void *sub_1BD21E2BC@<X0>(void *a1@<X8>)
{
  v2 = sub_1BD36BFB4();
  if (v2 && (v3 = v2, v4 = sub_1BD36C0FC(), v6 = v5, v3, (v6 & 1) == 0))
  {
    v7 = PKRewardsHubPurpleColor();
    v41 = sub_1BE0511C4();
    v8 = PKRewardsHubPurpleColor();
    v40 = sub_1BE0511C4();
    v9 = PKRewardsHubIncompleteProgressGrayColor();
    v39 = sub_1BE0511C4();
    v38 = sub_1BE051CD4();
    v11 = v10;
    sub_1BD2212EC(__src, *&v4);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v43, __src, 0x118uLL);
    sub_1BD0DE19C(__dst, v52, &qword_1EBD3E1C8);
    sub_1BD0DE53C(v43, &qword_1EBD3E1C8);
    memcpy(v50, __dst, sizeof(v50));
    sub_1BE0513F4();
    v12 = sub_1BE051454();

    v13 = PKUIScreenScale();
    *v52 = 0;
    v37 = 4.4 / v13;
    sub_1BE051694();
    v36 = __src[0];
    v14 = __src[1];
    *v52 = 0;
    sub_1BE051694();
    v35 = __src[0];
    v15 = __src[1];
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v16 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    LOBYTE(__src[0]) = 0;
    v25 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    *v52 = v4;
    *&v52[8] = v41;
    *&v52[16] = v40;
    *&v52[24] = v39;
    *&v52[32] = xmmword_1BE0C2C00;
    *&v52[48] = v38;
    *&v52[56] = v11;
    memcpy(&v52[64], v50, 0x118uLL);
    *&v52[344] = v12;
    *&v52[352] = v37;
    *&v52[368] = 0;
    *&v52[360] = 0;
    *&v52[376] = v36;
    *&v52[384] = v14;
    *&v52[392] = v35;
    *&v52[400] = v15;
    *&v52[408] = v47;
    *&v52[424] = v48;
    *&v52[440] = v49;
    v52[456] = v16;
    *&v52[457] = *v46;
    *&v52[460] = *&v46[3];
    *&v52[464] = v18;
    *&v52[472] = v20;
    *&v52[480] = v22;
    *&v52[488] = v24;
    v52[496] = 0;
    *&v52[497] = *v45;
    *&v52[500] = *&v45[3];
    v52[504] = v25;
    *&v52[505] = *v44;
    *&v52[508] = *&v44[3];
    *&v52[512] = v27;
    *&v52[520] = v29;
    *&v52[528] = v31;
    *&v52[536] = v33;
    v52[544] = 0;
    sub_1BD2238C8(v52);
  }

  else
  {
    sub_1BD2236EC(v52);
  }

  memcpy(v51, v52, sizeof(v51));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E188);
  sub_1BD2236F8();
  sub_1BE04F9A4();
  return memcpy(a1, __src, 0x222uLL);
}

__n128 sub_1BD21E670@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE050404();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD36AEE0();
  if (v7)
  {
    sub_1BE050424();
    (*(v3 + 104))(v6, *MEMORY[0x1E6980EA8], v2);
    sub_1BE050434();

    (*(v3 + 8))(v6, v2);
    v8 = sub_1BE0505F4();
    v10 = v9;
    v12 = v11;

    v13 = [objc_opt_self() labelColor];
    sub_1BE0511C4();
    v14 = sub_1BE050564();
    v16 = v15;
    v18 = v17;
    v20 = v19;

    sub_1BD0DDF10(v8, v10, v12 & 1);

    v21 = sub_1BE0501F4();
    sub_1BE04E1F4();
    LOBYTE(v38) = v18 & 1;
    v37 = 0;
    v28[3] = v14;
    v28[4] = v16;
    v29 = v18 & 1;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v36 = 0;
  }

  else
  {
    v37 = 1;
    HIBYTE(v36) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
  sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90);
  sub_1BE04F9A4();
  v26 = v41[0];
  *(a1 + 32) = v40;
  *(a1 + 48) = v26;
  *(a1 + 58) = *(v41 + 10);
  result = v39;
  *a1 = v38;
  *(a1 + 16) = result;
  return result;
}

id sub_1BD21E918@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F3D4();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BD36BFB4();
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13;
  v56 = a1;
  if ([v13 progressType] != 1 || (v15 = objc_msgSend(v14, sel_currentValue)) == 0)
  {
    v16 = v14;
LABEL_14:

    a1 = v56;
LABEL_15:
    sub_1BD2238D0(v74);
LABEL_16:
    memcpy(v73, v74, sizeof(v73));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0E8);
    sub_1BD2231C8();
    sub_1BE04F9A4();
    return memcpy(a1, v79, 0x19CuLL);
  }

  v16 = v15;
  v17 = [v14 currencyCode];
  if (!v17)
  {

    goto LABEL_14;
  }

  v18 = v17;
  v19 = PKCurrencyAmountMake();

  a1 = v56;
  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = [v19 formattedStringValue];

  if (!v20)
  {
    goto LABEL_15;
  }

  v53 = sub_1BE052434();

  (*(v9 + 104))(v12, *MEMORY[0x1E69B80B0], v8);
  result = PKPassKitBundle();
  if (result)
  {
    v22 = result;
    sub_1BE04B6E4();

    (*(v9 + 8))(v12, v8);
    sub_1BD21FC70(v79);

    v65 = v79[4];
    v66[0] = v79[5];
    *(v66 + 9) = *(&v79[5] + 9);
    v61 = v79[0];
    v62 = v79[1];
    v63 = v79[2];
    v64 = v79[3];
    v23 = sub_1BE0501C4();
    if (qword_1EBD37098 != -1)
    {
      swift_once();
    }

    sub_1BE04E1F4();
    v53 = v24;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v71 = v65;
    v72[0] = v66[0];
    *(v72 + 9) = *(v66 + 9);
    v67 = v61;
    v68 = v62;
    v69 = v63;
    v70 = v64;
    v57 = 0;
    v31 = sub_1BE050234();
    v32 = *(v2 + 80);
    v77 = v32;
    v78 = *(v2 + 88);
    if (v78 == 1)
    {
      a1 = v56;
      if (v32)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v33 = sub_1BE050174();
      sub_1BE04CF84();

      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v77, &qword_1EBD5C6E0);
      (*(v54 + 8))(v7, v55);
      a1 = v56;
      if (v79[0])
      {
LABEL_21:
        sub_1BE04E1F4();
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v58 = 0;
        if (qword_1EBD370A0 != -1)
        {
          swift_once();
        }

        sub_1BE051CD4();
        sub_1BE04EE54();
        *&v59[55] = v74[29];
        *&v59[71] = v74[30];
        *&v59[87] = v74[31];
        *&v59[103] = v74[32];
        *&v59[7] = v74[26];
        *&v59[23] = v74[27];
        *&v59[39] = v74[28];
        v43 = [objc_opt_self() systemGroupedBackgroundColor];
        v44 = sub_1BE0511C4();
        v45 = sub_1BE0501D4();
        if (qword_1EBD370A8 != -1)
        {
          swift_once();
        }

        v46 = qword_1EBDAB940;
        v47 = sub_1BE051214();
        v48 = sub_1BE0501F4();
        sub_1BE04E1F4();
        v60 = 0;
        v74[4] = v71;
        v74[5] = v72[0];
        v74[6] = v72[1];
        v74[0] = v67;
        v74[1] = v68;
        v74[2] = v69;
        v74[3] = v70;
        LOBYTE(v74[7]) = v23;
        *(&v74[7] + 1) = v53;
        *&v74[8] = v26;
        *(&v74[8] + 1) = v28;
        *&v74[9] = v30;
        BYTE8(v74[9]) = 0;
        LOBYTE(v74[10]) = v31;
        *(&v74[10] + 1) = v36;
        *&v74[11] = v38;
        *(&v74[11] + 1) = v40;
        *&v74[12] = v42;
        BYTE8(v74[12]) = 0;
        *(&v74[17] + 9) = *&v59[80];
        *(&v74[18] + 9) = *&v59[96];
        *(&v74[16] + 9) = *&v59[64];
        *(&v74[15] + 9) = *&v59[48];
        *(&v74[14] + 9) = *&v59[32];
        *(&v74[13] + 9) = *&v59[16];
        *(&v74[12] + 9) = *v59;
        *(&v74[19] + 1) = *&v59[111];
        *&v74[20] = v44;
        BYTE8(v74[20]) = v45;
        LOBYTE(v74[21]) = 0;
        *(&v74[21] + 1) = v47;
        *&v74[22] = 0x3FF0000000000000;
        *(&v74[22] + 1) = v46;
        LOBYTE(v74[23]) = v48;
        *(&v74[23] + 1) = v49;
        *&v74[24] = v50;
        *(&v74[24] + 1) = v51;
        *&v74[25] = v52;
        BYTE8(v74[25]) = 0;
        *(&v74[25] + 9) = 256;
        sub_1BD2238DC(v74);
        goto LABEL_16;
      }
    }

    v76 = *(v2 + 104);
    v75 = *(v2 + 96);
    if (v76 != 1)
    {
      sub_1BE048964();
      sub_1BE052C44();
      v34 = sub_1BE050174();
      sub_1BE04CF84();

      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v75, &qword_1EBD5C6E0);
      (*(v54 + 8))(v7, v55);
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

__n128 sub_1BD21F154@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051584();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DEC8);
  sub_1BE0516A4();
  if (v27)
  {
    v14 = v27;
    sub_1BE051544();
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v9 = sub_1BE0515E4();

    (*(v5 + 8))(v8, v4);
    sub_1BE051CD4();
    sub_1BE04EE54();
    *&v17[54] = v34[5];
    *&v17[70] = v34[6];
    *&v17[86] = v34[7];
    *&v17[102] = v35;
    *&v17[6] = v34[2];
    v18 = 1;
    *&v17[22] = v34[3];
    *&v17[38] = v34[4];
    v15[0] = v9;
    v15[1] = 0;
    *v16 = 1;
    *&v16[66] = *&v17[64];
    *&v16[82] = *&v17[80];
    *&v16[98] = *&v17[96];
    *&v16[112] = *(&v35 + 1);
    *&v16[2] = *v17;
    *&v16[18] = *&v17[16];
    *&v16[34] = *&v17[32];
    *&v16[50] = *&v17[48];
    *&v34[1] = *(&v35 + 1);
    v33 = *&v16[80];
    v34[0] = *&v16[96];
    v31 = *&v16[48];
    v32 = *&v16[64];
    v29 = *&v16[16];
    v30 = *&v16[32];
    v27 = v9;
    v28 = *v16;
    sub_1BD223E8C(&v27);
    v41 = v32;
    v42 = v33;
    v43[0] = v34[0];
    *(v43 + 9) = *(v34 + 9);
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v36 = v27;
    v37 = v28;
    sub_1BD0DE19C(v15, &v19, &qword_1EBD3E270);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E270);
    sub_1BD223BC4();
    sub_1BE04F9A4();

    sub_1BD0DE53C(v15, &qword_1EBD3E270);
    v42 = v25;
    v43[0] = v26[0];
    *(v43 + 9) = *(v26 + 9);
    v38 = v21;
    v39 = v22;
    v40 = v23;
    v41 = v24;
    v36 = v19;
    v37 = v20;
  }

  else
  {
    *&v27 = sub_1BE0512C4();
    sub_1BD223E80(&v27);
    v24 = v32;
    v25 = v33;
    v26[0] = v34[0];
    *(v26 + 9) = *(v34 + 9);
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v19 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E270);
    sub_1BD223BC4();
    sub_1BE04F9A4();
  }

  v10 = v43[0];
  *(a2 + 96) = v42;
  *(a2 + 112) = v10;
  *(a2 + 121) = *(v43 + 9);
  v11 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v11;
  v12 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v12;
  result = v37;
  *a2 = v36;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BD21F554(void *a1)
{
  v2 = sub_1BE04A564();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04A574();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04A594();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v43 - v19;
  v21 = sub_1BE04A5B4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v43 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v44 = &v43 - v28;
  v49 = a1;
  v29 = [a1 markdownText];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1BE052434();
    v45 = v32;
    v46 = v31;

    v33 = sub_1BE04AA64();
    (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
    (*(v47 + 104))(v10, *MEMORY[0x1E6968750], v48);
    (*(v3 + 104))(v6, *MEMORY[0x1E6968728], v2);
    sub_1BE04A584();
    sub_1BE04A5A4();
    (*(v22 + 56))(v20, 0, 1, v21);
    v40 = v44;
    (*(v22 + 32))(v44, v20, v21);
    (*(v22 + 16))(v43, v40, v21);
    v41 = sub_1BE0506A4();

    (*(v22 + 8))(v40, v21);
  }

  else
  {
    v34 = v49;
    v35 = [v49 displayText];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1BE052434();
      v39 = v38;

      v50 = v37;
      v51 = v39;
      sub_1BD0DDEBC();
      v41 = sub_1BE0506C4();
    }

    else
    {

      return 0;
    }
  }

  return v41;
}

uint64_t sub_1BD21FA68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE050404();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 displayText];
  sub_1BE052434();

  sub_1BE050424();
  (*(v5 + 104))(v9, *MEMORY[0x1E6980EA8], v4);
  sub_1BE050434();

  (*(v5 + 8))(v9, v4);
  v11 = sub_1BE0505F4();
  v13 = v12;
  v15 = v14;

  v16 = [objc_opt_self() systemBlueColor];
  sub_1BE0511C4();
  v17 = sub_1BE050564();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_1BD0DDF10(v11, v13, v15 & 1);

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  return result;
}

__n128 sub_1BD21FC70@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v1 + 88);
  v7 = *(v1 + 80);
  v49 = v7;
  v21 = v9;
  v22 = v8;
  if (v50 == 1)
  {
    v46 = v7 & 1;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v10 = sub_1BE050174();
    v20 = a1;
    v11 = v10;
    sub_1BE04CF84();

    a1 = v20;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v49, &qword_1EBD5C6E0);
    (*(v21 + 8))(v6, v22);
    if (v46)
    {
      goto LABEL_9;
    }
  }

  v48 = *(v1 + 104);
  v12 = *(v1 + 96);
  v47 = v12;
  if (v48 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v47, &qword_1EBD5C6E0);
    (*(v21 + 8))(v6, v22);
    if (v24 != 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v15 = sub_1BE04F7B4();
    LOBYTE(v24) = 0;
    sub_1BD220158(&v35);
    *&v23[55] = v38;
    *&v23[39] = v37;
    *&v23[23] = v36;
    *&v23[7] = v35;
    *&v25[17] = *&v23[16];
    *&v25[33] = *&v23[32];
    *&v25[49] = *&v23[48];
    v16 = v24;
    LOBYTE(v30) = 0;
    v24 = v15;
    v25[0] = v16;
    *&v25[64] = *(&v38 + 1);
    *&v25[1] = *v23;
    v26 = 0;
    goto LABEL_10;
  }

  if (v12)
  {
    goto LABEL_9;
  }

LABEL_7:
  v13 = sub_1BE04F504();
  v29 = 0;
  sub_1BD220314(&v24);
  v32 = *&v25[16];
  v33 = *&v25[32];
  v30 = v24;
  v31 = *v25;
  v36 = *v25;
  v37 = *&v25[16];
  v38 = *&v25[32];
  v39 = *&v25[48];
  v34 = *&v25[48];
  v35 = v24;
  sub_1BD0DE19C(&v30, v27, &qword_1EBD3E1F0);
  sub_1BD0DE53C(&v35, &qword_1EBD3E1F0);
  *&v28[71] = v34;
  *&v28[55] = v33;
  *&v28[39] = v32;
  *&v28[23] = v31;
  *&v28[7] = v30;
  *&v25[33] = *&v28[32];
  *&v25[49] = *&v28[48];
  *&v25[65] = *&v28[64];
  *&v25[17] = *&v28[16];
  v27[0] = 1;
  v24 = v13;
  v25[0] = v29;
  *&v25[80] = *(&v34 + 1);
  *&v25[1] = *v28;
  v26 = 1;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3D0);
  sub_1BD0DE4F4(&unk_1EBD3E160, &qword_1EBD3B890);
  sub_1BD0DE4F4(&unk_1EBD3E170, &unk_1EBD4D3D0);
  sub_1BE04F9A4();
  result = v43;
  v18 = *v45;
  *(a1 + 64) = v44;
  *(a1 + 80) = v18;
  *(a1 + 89) = *&v45[9];
  v19 = v41;
  *a1 = v40;
  *(a1 + 16) = v19;
  *(a1 + 32) = v42;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BD220158@<X0>(uint64_t a1@<X8>)
{
  sub_1BE048C84();
  sub_1BE0502A4();
  v20 = sub_1BE0505F4();
  v21 = v2;
  v4 = v3;
  v19 = v5;

  sub_1BE048C84();
  sub_1BE0502A4();
  v6 = sub_1BE0505F4();
  v8 = v7;
  v10 = v9;

  v11 = sub_1BE0505D4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1BD0DDF10(v6, v8, v10 & 1);

  *a1 = v20;
  *(a1 + 8) = v4;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_1BD0D7F18(v20, v4, v19 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v11, v13, v15 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v11, v13, v15 & 1);

  sub_1BD0DDF10(v20, v4, v19 & 1);
}

uint64_t sub_1BD220314@<X0>(uint64_t a1@<X8>)
{
  sub_1BE048C84();
  sub_1BE0502A4();
  v20 = sub_1BE0505F4();
  v21 = v2;
  v4 = v3;
  v19 = v5;

  sub_1BE048C84();
  sub_1BE0502A4();
  v6 = sub_1BE0505F4();
  v8 = v7;
  v10 = v9;

  v11 = sub_1BE0505D4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1BD0DDF10(v6, v8, v10 & 1);

  *a1 = v20;
  *(a1 + 8) = v4;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = v15 & 1;
  *(a1 + 72) = v17;
  sub_1BD0D7F18(v20, v4, v19 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v11, v13, v15 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v11, v13, v15 & 1);

  sub_1BD0DDF10(v20, v4, v19 & 1);
}

uint64_t sub_1BD2204E4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E070);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFD0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFC8);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v34 - v14;
  if ([*(*(v1 + 8) + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) isInTerminalState])
  {
    goto LABEL_6;
  }

  if (qword_1EBD36BD0 != -1)
  {
    swift_once();
  }

  v16 = sub_1BD2220F0();
  if (!v16)
  {
LABEL_6:
    swift_storeEnumTagMultiPayload();
    sub_1BD222834();
    return sub_1BE04F9A4();
  }

  else
  {
    v17 = v16;
    v18 = swift_allocObject();
    v37 = v3;
    v19 = *(v1 + 80);
    *(v18 + 80) = *(v1 + 64);
    *(v18 + 96) = v19;
    *(v18 + 112) = *(v1 + 96);
    v20 = *(v1 + 112);
    v21 = *(v1 + 16);
    *(v18 + 16) = *v1;
    *(v18 + 32) = v21;
    v22 = *(v1 + 48);
    *(v18 + 48) = *(v1 + 32);
    *(v18 + 64) = v22;
    *(v18 + 128) = v20;
    *(v18 + 136) = v17;
    MEMORY[0x1EEE9AC00](v18, v23);
    v36 = a1;
    sub_1BD222678(v1, v38);
    v35 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E078);
    sub_1BD222E24();
    sub_1BE051704();
    v24 = [objc_opt_self() systemBlueColor];
    v25 = sub_1BE0511C4();
    v26 = sub_1BE0501D4();
    v27 = &v10[*(v7 + 36)];
    *v27 = v25;
    v27[8] = v26;
    sub_1BE051C64();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFE0);
    sub_1BD22299C();
    sub_1BD222A80();
    sub_1BD22330C(&qword_1EBD3E018, &qword_1EBD3DFE0, &unk_1BE0C2EC8, sub_1BD22299C);
    sub_1BE0510B4();
    sub_1BD0DE53C(v10, &qword_1EBD3DFD0);
    LOBYTE(v25) = sub_1BE0501F4();
    sub_1BE04E1F4();
    v28 = &v15[*(v11 + 36)];
    *v28 = v25;
    *(v28 + 1) = v29;
    *(v28 + 2) = v30;
    *(v28 + 3) = v31;
    *(v28 + 4) = v32;
    v28[40] = 0;
    sub_1BD0DE19C(v15, v6, &qword_1EBD3DFC8);
    swift_storeEnumTagMultiPayload();
    sub_1BD222834();
    sub_1BE04F9A4();

    return sub_1BD0DE53C(v15, &qword_1EBD3DFC8);
  }
}

uint64_t sub_1BD220980@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E098);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E038);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = v36 - v10;
  if (([*(*(v1 + 8) + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) isInTerminalState] & 1) == 0)
  {
    if (qword_1EBD36BD8 != -1)
    {
      swift_once();
    }

    v12 = sub_1BD2220F0();
    if (v12)
    {
      v13 = v12;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v14 = v38;
      if (v38)
      {
        v36[2] = a1;
        v15 = v37;
        v16 = swift_allocObject();
        v36[1] = v36;
        v17 = *(v1 + 80);
        *(v16 + 80) = *(v1 + 64);
        *(v16 + 96) = v17;
        *(v16 + 112) = *(v1 + 96);
        v18 = *(v1 + 112);
        v19 = *(v1 + 16);
        *(v16 + 16) = *v1;
        *(v16 + 32) = v19;
        v20 = *(v1 + 48);
        *(v16 + 48) = *(v1 + 32);
        *(v16 + 64) = v20;
        *(v16 + 128) = v18;
        *(v16 + 136) = v13;
        MEMORY[0x1EEE9AC00](v16, v21);
        v36[-2] = v15;
        v36[-1] = v14;
        sub_1BD222678(v1, &v37);
        v22 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E0A0);
        sub_1BD222FCC();
        sub_1BE051704();

        v23 = PKRewardsHubGrayButtonColor();
        v24 = sub_1BE0511C4();
        v25 = sub_1BE0501D4();
        v26 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E058) + 36)];
        *v26 = v24;
        v26[8] = v25;
        v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E048) + 36)];
        v28 = *MEMORY[0x1E697F468];
        v29 = sub_1BE04F684();
        (*(*(v29 - 8) + 104))(v27, v28, v29);
        *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E010) + 36)] = 256;
        LOBYTE(v27) = sub_1BE0501F4();
        sub_1BE04E1F4();
        v30 = &v11[*(v7 + 36)];
        *v30 = v27;
        *(v30 + 1) = v31;
        *(v30 + 2) = v32;
        *(v30 + 3) = v33;
        *(v30 + 4) = v34;
        v30[40] = 0;
        sub_1BD0DE19C(v11, v6, &qword_1EBD3E038);
        swift_storeEnumTagMultiPayload();
        sub_1BD222BC4();
        sub_1BE04F9A4();

        return sub_1BD0DE53C(v11, &qword_1EBD3E038);
      }
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1BD222BC4();
  return sub_1BE04F9A4();
}

void sub_1BD220DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 8) + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication);
  v5 = v4;
  v3(a2, v4);
}

__n128 sub_1BD220E2C@<Q0>(uint64_t a1@<X8>)
{
  sub_1BE048C84();
  sub_1BE0502A4();
  sub_1BE0503A4();
  sub_1BE0503F4();

  v2 = sub_1BE0505F4();
  v4 = v3;
  v6 = v5;

  v7 = [objc_opt_self() labelColor];
  sub_1BE0511C4();
  v8 = sub_1BE050564();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  v15 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v25[39] = v28;
  *&v25[23] = v27;
  *&v25[7] = v26;
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v17;
  *(a1 + 48) = v19;
  *(a1 + 56) = v21;
  *(a1 + 64) = v23;
  *(a1 + 72) = 0;
  *(a1 + 73) = *v25;
  *(a1 + 89) = *&v25[16];
  result = *&v25[32];
  *(a1 + 105) = *&v25[32];
  *(a1 + 120) = *(&v28 + 1);
  return result;
}

__n128 sub_1BD220FFC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 displayText];
  sub_1BE052434();

  sub_1BE050464();
  v4 = sub_1BE0505F4();
  v6 = v5;
  v8 = v7;

  sub_1BE051424();
  v9 = sub_1BE050564();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_1BD0DDF10(v4, v6, v8 & 1);

  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 96) = v24;
  *(a2 + 112) = v25;
  result = v26;
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  *(a2 + 64) = v22;
  *(a2 + 80) = v23;
  *(a2 + 160) = v18;
  *(a2 + 176) = v19;
  *(a2 + 128) = v26;
  *(a2 + 144) = v17;
  return result;
}

uint64_t sub_1BD2211A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFD8) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1BE04F684();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E010) + 36)) = 256;
  return sub_1BD0DE19C(a1, a2, &qword_1EBD3DFD0);
}

double sub_1BD22126C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051214();
  sub_1BD0DE19C(a1, a2, &qword_1EBD3DFD0);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DFE0) + 36);
  *v5 = 0;
  *(v5 + 8) = v4;
  result = 1.0;
  *(v5 + 16) = xmmword_1BE0C2C10;
  return result;
}

uint64_t sub_1BD2212EC@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v32 = a1;
  v3 = sub_1BE051584();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BE051424();
  sub_1BE04E3F4();
  v8 = v107;
  v35 = v109;
  v36 = v108;
  v9 = v110;
  v34 = v111;
  v10 = v112;
  v11 = sub_1BE051CD4();
  v30 = v12;
  v31 = v11;
  if (a2 == 0.0)
  {
    v13 = PKRewardsHubIncompleteProgressGrayColor();
  }

  else
  {
    v13 = PKRewardsHubPurpleColor();
  }

  v14 = v13;
  v15 = sub_1BE0511C4();
  v16 = PKRewardsHubCellBackgroundColor();
  v17 = sub_1BE0511C4();
  v18 = sub_1BE051CD4();
  v20 = v19;
  v21 = sub_1BE051CD4();
  *&v43 = v15;
  WORD4(v43) = 256;
  *&v44 = v17;
  WORD4(v44) = 256;
  *&v45 = v18;
  *(&v45 + 1) = v20;
  *&v46 = v21;
  *(&v46 + 1) = v22;
  v58 = v43;
  v59 = v44;
  v60 = v45;
  v61 = v46;
  v47 = v15;
  v48 = 256;
  v49 = v17;
  v50 = 256;
  v51 = v18;
  v52 = v20;
  v53 = v21;
  v54 = v22;
  sub_1BD0DE19C(&v43, v88, &qword_1EBD3E1D0);
  sub_1BD0DE53C(&v47, &qword_1EBD3E1D0);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BE051574();
  (*(v4 + 104))(v7, *MEMORY[0x1E6981630], v3);
  v23 = sub_1BE0515E4();

  (*(v4 + 8))(v7, v3);
  v24 = sub_1BE051424();
  KeyPath = swift_getKeyPath();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v64 = v8 * 0.5;
  *(&v64 + 1) = v8;
  *&v65 = __PAIR64__(v35, v36);
  *(&v65 + 1) = v9;
  v26 = v33;
  *&v66 = v34;
  *(&v66 + 1) = v10;
  *&v67 = v33;
  WORD4(v67) = 256;
  *(&v67 + 10) = v62;
  HIWORD(v67) = v63;
  v27 = v30;
  v28 = v31;
  *&v68 = v31;
  *(&v68 + 1) = v30;
  v71 = v60;
  v72 = v61;
  v69 = v58;
  v70 = v59;
  v73 = v55;
  v74 = v56;
  v75 = v57;
  v37[4] = v68;
  v37[5] = v58;
  v37[6] = v59;
  v37[7] = v60;
  v37[8] = v61;
  v37[9] = v55;
  v37[10] = v56;
  v37[11] = v57;
  v37[0] = v64;
  v37[1] = v65;
  v37[2] = v66;
  v37[3] = v67;
  v76[0] = v23;
  v76[1] = 0;
  LOWORD(v77) = 1;
  *(&v77 + 2) = v41;
  WORD3(v77) = v42;
  *(&v77 + 1) = KeyPath;
  *v78 = v24;
  *&v78[40] = v40;
  *&v78[24] = v39;
  *&v78[8] = v38;
  v37[12] = v23;
  v37[13] = v77;
  *&v37[17] = *(&v40 + 1);
  v37[15] = *&v78[16];
  v37[16] = *&v78[32];
  v37[14] = *v78;
  memcpy(v32, v37, 0x118uLL);
  v79[0] = v23;
  v79[1] = 0;
  v80 = 1;
  v81 = v41;
  v82 = v42;
  v83 = KeyPath;
  v84 = v24;
  v85 = v38;
  v86 = v39;
  v87 = v40;
  sub_1BD0DE19C(&v64, v88, &qword_1EBD3E1D8);
  sub_1BD0DE19C(v76, v88, &unk_1EBD3E1E0);
  sub_1BD0DE53C(v79, &unk_1EBD3E1E0);
  v88[0] = v8 * 0.5;
  v88[1] = v8;
  v89 = v36;
  v90 = v35;
  v91 = v9;
  v92 = v34;
  v93 = v10;
  v94 = v26;
  v95 = 256;
  v96 = v62;
  v97 = v63;
  v98 = v28;
  v99 = v27;
  v102 = v60;
  v103 = v61;
  v100 = v58;
  v101 = v59;
  v104 = v55;
  v105 = v56;
  v106 = v57;
  return sub_1BD0DE53C(v88, &qword_1EBD3E1D8);
}

uint64_t sub_1BD2217E0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) state];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = [objc_opt_self() fromDeviceVersion];
  if (v3)
  {
    v4 = v3;
    v5 = PKDeviceClass();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1BE052434();
      v9 = v8;

      v10 = swift_allocObject();
      v10[2] = v4;
      v10[3] = v7;
      v10[4] = v9;
      sub_1BE048964();
      v11 = sub_1BD222768;
    }

    else
    {

      v10 = 0;
      v11 = sub_1BD134F50;
    }

    v12 = v11;
  }

  else
  {
    v12 = sub_1BD134F50;
    v10 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = sub_1BD222754;
  v13[3] = v2;
  v13[4] = v12;
  v13[5] = v10;
  v14 = swift_allocObject();
  v14[2] = sub_1BD36CA6C;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = v10;
  v15 = *(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_layout);
  sub_1BE048964();
  sub_1BE048964();
  v16 = v15;
  v17 = sub_1BE052404();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1BD22275C;
  *(v18 + 24) = v13;
  v32 = sub_1BD224180;
  v33 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1BD224168;
  v31 = &block_descriptor_22;
  v19 = _Block_copy(&aBlock);
  sub_1BE048964();

  v20 = [v16 layoutImageNamed:v17 passingTest:v19];

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    if (v20)
    {

      goto LABEL_12;
    }

    v22 = sub_1BE052404();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1BD22275C;
    *(v23 + 24) = v14;
    v32 = sub_1BD224180;
    v33 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1BD224168;
    v31 = &block_descriptor_29_0;
    v24 = _Block_copy(&aBlock);
    sub_1BE048964();

    v25 = [v16 layoutImageNamed:v22 passingTest:v24];

    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (!v25)
      {

        return 0;
      }

LABEL_12:
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();

      if (v27)
      {
        return v27;
      }

      swift_unknownObjectRelease();
      return 0;
    }
  }

  __break(1u);
  return result;
}