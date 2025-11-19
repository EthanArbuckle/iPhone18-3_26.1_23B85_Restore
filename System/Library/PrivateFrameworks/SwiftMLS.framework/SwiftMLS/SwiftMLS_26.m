uint64_t sub_26BFF5E44(__int128 *a1, uint64_t a2)
{
  v4 = v2;
  v62 = a2;
  v6 = _s18RCSParticipantInfoVMa();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v10 = *(*(v9 - 1) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  swift_beginAccess();
  v16 = *(v2 + 24);
  if (v16 == 2)
  {
    v69 = &type metadata for SwiftMLSFeatureFlags;
    v70 = sub_26BE295D8();
    LOBYTE(v3) = 1;
    LOBYTE(v68) = 1;
    v17 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(&v68);
    if ((v17 & 1) == 0)
    {
      return v3 & 1;
    }
  }

  else if ((v16 & 1) == 0)
  {
    LOBYTE(v3) = 1;
    return v3 & 1;
  }

  v68 = *a1;
  MLS.Identity.Credential.telURI.getter();
  if (!v18)
  {
LABEL_45:
    type metadata accessor for MLS.IdentityError();
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
LABEL_48:
    swift_willThrow();
    return v3 & 1;
  }

  v20 = v18;
  v3 = *(v18 + 16);
  if (!v3)
  {

    goto LABEL_45;
  }

  v21 = 0;
  v58 = v18 + 16 * v3;
  v22 = (v18 + 40);
  *&v19 = 136315394;
  v56 = v19;
  v57 = v15;
  v60 = v13;
  v61 = v18;
  v59 = v3;
  v55 = v4;
  while (1)
  {
    if (v21 >= *(v20 + 16))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:

      swift_bridgeObjectRelease_n();
      sub_26BFF55C8(v9);
      sub_26BE2E258(v15, &qword_28045E4A8, &unk_26C00ECB0);
      LOBYTE(v3) = 1;
      return v3 & 1;
    }

    v24 = *(v22 - 1);
    v23 = *v22;
    v65 = v21;
    v66 = v24;
    v64 = v22;
    v25 = qword_28045DF48;
    v67 = v23;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v9, qword_28045E4F0);
    swift_beginAccess();
    sub_26BE30C8C(v26, v13);
    v27 = sub_26C00921C();
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (v29(v13, 1, v27) == 1)
    {
      sub_26C00920C();
      if (v29(v13, 1, v27) != 1)
      {
        sub_26BE2E258(v13, &qword_28045E4A8, &unk_26C00ECB0);
      }
    }

    else
    {
      (*(v28 + 32))(v15, v13, v27);
    }

    (*(v28 + 56))(v15, 0, 1, v27);
    v30 = *(v4 + 16);

    v31 = v67;

    result = MLS.Identity.SigningIdentity.verifyConsistentKeys()();
    v34 = v33;
    if (v33)
    {

      goto LABEL_20;
    }

    if ((result & 1) == 0 || (*(v62 + 15) & 0x20) == 0)
    {

      type metadata accessor for MLS.IdentityError();
      sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
      v34 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_20;
    }

    v49 = *v62;
    if (*v62 >> 62)
    {
      if (v49 < 0)
      {
        v51 = *v62;
      }

      result = sub_26C00AB8C();
      if (!result)
      {
LABEL_41:

        type metadata accessor for MLS.IdentityError();
        sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
        v34 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v31 = v67;
        goto LABEL_20;
      }
    }

    else if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v53 = v9;
    if ((v49 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x26D6996F0](0, v49);
      goto LABEL_36;
    }

    if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v50 = *(v49 + 32);
LABEL_36:
    v3 = v50;
    v9 = v54;
    sub_26BECF754(v3);
    MLS.Identity.SigningIdentity.verifyTrust(certs:vendorId:telURI:timestamp:anchors:)(v49, *v9, 0, v66, v67, v15, v30);

    if (sub_26BED00C4(v3, v15))
    {
      goto LABEL_52;
    }

    type metadata accessor for MLS.IdentityError();
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
    v34 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_26BFF55C8(v9);
    v9 = v53;
    v31 = v67;
LABEL_20:
    sub_26BE2E258(v15, &qword_28045E4A8, &unk_26C00ECB0);
    if (qword_28045E1D8 != -1)
    {
      swift_once();
    }

    v35 = sub_26C009A5C();
    __swift_project_value_buffer(v35, qword_280479338);

    v36 = v34;
    v37 = sub_26C009A3C();
    v38 = sub_26C00AA0C();

    v39 = os_log_type_enabled(v37, v38);
    v63 = 0;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v71 = v42;
      *v40 = v56;
      v43 = v9;
      v44 = sub_26BE29740(v66, v31, &v71);

      *(v40 + 4) = v44;
      v9 = v43;
      *(v40 + 12) = 2112;
      v45 = v34;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&dword_26BDFE000, v37, v38, "Error succeessor identity with %s: %@", v40, 0x16u);
      sub_26BE2E258(v41, &qword_28045FB40, &unk_26C021280);
      v47 = v41;
      v4 = v55;
      v15 = v57;
      MEMORY[0x26D69A4E0](v47, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x26D69A4E0](v42, -1, -1);
      MEMORY[0x26D69A4E0](v40, -1, -1);
    }

    else
    {
    }

    v13 = v60;
    v20 = v61;
    v3 = v59;
    if (v59 > *(v61 + 16))
    {
      goto LABEL_51;
    }

    if (v66 == *(v58 + 16) && v67 == *(v58 + 24))
    {

LABEL_47:

      goto LABEL_48;
    }

    v48 = sub_26C00AF2C();

    if (v48)
    {
      goto LABEL_47;
    }

    v21 = v65 + 1;

    v22 = v64 + 2;
    if (v3 == v21)
    {

      LOBYTE(v3) = 0;
      return v3 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t MLS.Identity.X509RCSIdentityProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MLS.Identity.X509RCSIdentityProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_26BFF6830(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  v7 = *v6;
  sub_26BFF5C10(a1, a2, a3, a4 & 1, a5, a6);
  return 1;
}

uint64_t sub_26BFF685C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_26BFF5700(a1, a2);
  return 1;
}

uint64_t sub_26BFF68AC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_26BFF690C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_26BFF6980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFF69C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_26BFF6A10(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_26BFF6CA4(__int128 *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  v29 = a1[4];
  v30 = v3;
  v31 = *(a1 + 12);
  v4 = a1[1];
  v25 = *a1;
  v26 = v4;
  v5 = a1[3];
  v27 = a1[2];
  v28 = v5;
  v6 = *(a1 + 104);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v32 = *(a1 + 104);
  *&v33[15] = *(a1 + 120);
  *v33 = *(a1 + 105);
  result = sub_26BE7EBA4(&v25);
  if (!v2 && v6)
  {
    if (v7 >> 60 == 15)
    {
      sub_26BE01654();
      swift_allocError();
      *v12 = 10;
      v12[112] = 0;
      result = swift_willThrow();
      goto LABEL_2;
    }

    v13 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v13 != 2)
      {
        v14 = result;
        v15 = 0;
LABEL_16:
        v18 = sub_26BF30414(v15);
        sub_26BE11228(v8, v7);
        v19 = v18 + v15;
        if (__OFADD__(v18, v15))
        {
          __break(1u);
        }

        else
        {
          v20 = v14 + v19;
          if (!__OFADD__(v14, v19))
          {
            v24 = bswap32(v9);
            *(&v26 + 1) = MEMORY[0x277D838B0];
            *&v27 = MEMORY[0x277CC9C18];
            *&v25 = &v24;
            *(&v25 + 1) = &v25;
            v21 = __swift_project_boxed_opaque_existential_1(&v25, MEMORY[0x277D838B0]);
            v23 = *v21;
            v22 = v21[1];
            sub_26C00908C();
            __swift_destroy_boxed_opaque_existential_1(&v25);
            sub_26BE132D4(v8, v7);
            result = v20 + 4;
            if (!__OFADD__(v20, 4))
            {
              goto LABEL_2;
            }

            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      v15 = v16 - v17;
      if (__OFSUB__(v16, v17))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v14 = result;
    }

    else
    {
      if (!v13)
      {
        v14 = result;
        v15 = BYTE6(v7);
        goto LABEL_16;
      }

      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_24;
      }

      v14 = result;
      v15 = HIDWORD(v8) - v8;
    }

    sub_26BE00608(v8, v7);
    goto LABEL_16;
  }

LABEL_2:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BFF6ED4(unsigned __int16 *a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 100);
  v65 = *(a1 + 92);
  v66 = v3;
  v67[0] = *(a1 + 108);
  *(v67 + 9) = *(a1 + 225);
  v4 = *(a1 + 60);
  v5 = *(a1 + 76);
  v62 = *(a1 + 68);
  v63 = v5;
  v64 = *(a1 + 84);
  v6 = *(a1 + 28);
  v7 = *(a1 + 44);
  v58 = *(a1 + 36);
  v59 = v7;
  v60 = *(a1 + 52);
  v61 = v4;
  v8 = *(a1 + 12);
  v54 = *(a1 + 4);
  v55 = v8;
  v56 = *(a1 + 20);
  v57 = v6;
  v10 = *(a1 + 31);
  v9 = *(a1 + 32);
  v25 = bswap32(v2) >> 16;
  *(&v27 + 1) = MEMORY[0x277D838B0];
  *&v28 = MEMORY[0x277CC9C18];
  *&v26 = &v25;
  *(&v26 + 1) = &v26;
  v11 = __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277D838B0]);
  v12 = *v11;
  v13 = v11[1];
  sub_26BE2FB24(&v54, &v40);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v51 = v65;
  v52 = v66;
  v53[0] = v67[0];
  *(v53 + 9) = *(v67 + 9);
  v48 = v62;
  v49 = v63;
  v50 = v64;
  v44 = v58;
  v45 = v59;
  v46 = v60;
  v47 = v61;
  v40 = v54;
  v41 = v55;
  v42 = v56;
  v43 = v57;
  v14 = sub_26BEDC390(&v40);
  if (!v1)
  {
    v16 = v14;
    v38 = v52;
    v39[0] = v53[0];
    *(v39 + 9) = *(v53 + 9);
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v30 = v44;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    sub_26BE71494(&v26);
    v17 = v16 + 2;
    if (__OFADD__(v16, 2))
    {
      __break(1u);
      goto LABEL_18;
    }

    v18 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v18 != 2)
      {
        v19 = 0;
        goto LABEL_14;
      }

      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      v19 = v20 - v21;
      if (!__OFSUB__(v20, v21))
      {
LABEL_14:
        v22 = sub_26BF30414(v19);
        sub_26BE11228(v10, v9);
        v23 = v22 + v19;
        if (!__OFADD__(v22, v19))
        {
          result = v17 + v23;
          if (!__OFADD__(v17, v23))
          {
            goto LABEL_16;
          }

          goto LABEL_19;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
      }

      __break(1u);
    }

    else if (!v18)
    {
      v19 = BYTE6(v9);
      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(v10), v10))
    {
      goto LABEL_20;
    }

    v19 = HIDWORD(v10) - v10;
    goto LABEL_14;
  }

  v38 = v52;
  v39[0] = v53[0];
  *(v39 + 9) = *(v53 + 9);
  v34 = v48;
  v35 = v49;
  v36 = v50;
  v37 = v51;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  result = sub_26BE71494(&v26);
LABEL_16:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BFF71A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 264))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 36);
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

uint64_t sub_26BFF71F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 248) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 264) = 0;
    }

    if (a2)
    {
      *(result + 36) = -a2;
    }
  }

  return result;
}

uint64_t MLS.UpdatePathNode.init(encryptionKey:encryptedPathSecret:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_26BFF72A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BF2F7B0();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    result = sub_26BF2F7B0();
    *a1 = v5;
    a1[1] = v6;
    a1[2] = result;
    a1[3] = v7;
  }

  return result;
}

uint64_t MLS.Extension.RequiredCapabilitiesExtension.extensionTypes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MLS.Extension.RequiredCapabilitiesExtension.proposalTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MLS.Extension.RequiredCapabilitiesExtension.credentialTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MLS.Extension.RequiredCapabilitiesExtension.init(extensionTypes:proposalTypes:credentialTypes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_26BFF740C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = 0;
  v70 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v4 = *(v6 + 16);
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    v4 = v6;
LABEL_6:
    sub_26BE00608(*(a1 + 8), v5);
  }

  v67 = v6;
  v68 = v5;
  v69 = v4;
  sub_26BE00608(v6, v5);
  sub_26BE00608(v6, v5);
  sub_26BF30764(&v67, &v65);
  if (v2)
  {
    sub_26BE00258(v67, v68);
    v67 = v6;
    v68 = v5;
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (v66)
  {
    sub_26BE00258(v67, v68);
    v8 = v5;
    v9 = v6;
LABEL_13:
    sub_26BE00258(v9, v8);
    v67 = v6;
    v68 = v5;
    goto LABEL_14;
  }

  v13 = v65;
  sub_26BE00258(v6, v5);
  if (v13 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v14 = 5;
    goto LABEL_9;
  }

  v61 = a2;
  result = sub_26BF2A44C(v13);
  if (v15 >> 60 == 15)
  {
    v9 = v67;
    v8 = v68;
    goto LABEL_13;
  }

  v17 = result;
  v18 = v15;
  v19 = v16;
  v20 = v15 >> 62;
  v62 = result >> 32;
  v63 = BYTE6(v15);
  v64 = MEMORY[0x277D84F90];
  if ((v15 >> 62) > 1)
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = v63;
  if (v20)
  {
    v21 = v62;
  }

  while (1)
  {
    v22 = __OFSUB__(v21, v19);
    v23 = v21 - v19;
    if (v22)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v43 = *(v19 + 24);
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v43 = v60;
        if (!v17)
        {
          v43 = v62;
        }
      }

      if (__OFSUB__(v43, v5))
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      if (v43 != v5)
      {
        v44 = v15;
        sub_26BE01654();
        swift_allocError();
        *v46 = 0;
        v46[112] = 1;
LABEL_107:
        swift_willThrow();

        sub_26BE00258(v19, v44);
        goto LABEL_57;
      }

      sub_26BE00258(v19, v15);
      sub_26BE00258(v18, v6);
      v18 = v67;
      v6 = v68;
      sub_26BE00608(v67, v68);
      sub_26BE00608(v18, v6);
      sub_26BF30764(&v67, &v65);
      if (v66)
      {
        sub_26BE00258(v67, v68);

LABEL_61:

        v32 = v6;
        v33 = v18;
LABEL_62:
        sub_26BE00258(v33, v32);
        v67 = v18;
        v68 = v6;
LABEL_14:
        sub_26BE01600();
        swift_allocError();
        *v10 = 1;
        goto LABEL_15;
      }

      v47 = v65;
      sub_26BE00258(v18, v6);
      if (v47 > 100000000)
      {
        sub_26BE01600();
        swift_allocError();
        *v48 = 5;
        swift_willThrow();
        goto LABEL_106;
      }

      result = sub_26BF2A44C(v47);
      v62 = result;
      v60 = v49;
      if (v49 >> 60 == 15)
      {

        goto LABEL_66;
      }

      goto LABEL_115;
    }

    if (v23 < 1)
    {
      break;
    }

    v24 = v19 + 2;
    if (__OFADD__(v19, 2))
    {
      goto LABEL_92;
    }

    if (v20 <= 1)
    {
      v25 = v63;
      if (v20)
      {
        v25 = v62;
      }

LABEL_35:
      if (v25 < v24)
      {
        goto LABEL_49;
      }

      goto LABEL_38;
    }

    if (v20 == 2)
    {
      v25 = *(v17 + 24);
      goto LABEL_35;
    }

    if (v24 > 0)
    {
LABEL_49:
      sub_26BE01600();
      swift_allocError();
      *v29 = 1;
      goto LABEL_58;
    }

LABEL_38:
    v65 = v17;
    v66 = v18;
    if (v24 < v19)
    {
      goto LABEL_93;
    }

    sub_26BE00608(v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v65, v66);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BEEBA70(0, *(v64 + 16) + 1, 1, v64);
      v64 = result;
    }

    v27 = *(v64 + 16);
    v26 = *(v64 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_26BEEBA70((v26 > 1), v27 + 1, 1, v64);
      v64 = result;
    }

    *(v64 + 16) = v27 + 1;
    *(v64 + 2 * v27 + 32) = bswap32(0) >> 16;
    v19 += 2;
    if (v20 <= 1)
    {
      goto LABEL_22;
    }

LABEL_24:
    if (v20 == 2)
    {
      v21 = *(v17 + 24);
    }

    else
    {
      v21 = 0;
    }
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v28 = *(v17 + 24);
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = v62;
    if (!v20)
    {
      v28 = v63;
    }
  }

  if (__OFSUB__(v28, v19))
  {
    __break(1u);
LABEL_115:
    v5 = v16;
    v19 = v60 >> 62;
    v59 = v62 >> 32;
    v17 = MEMORY[0x277D84F90];
    v30 = BYTE6(v60);
    if ((v60 >> 62) > 1)
    {
      goto LABEL_118;
    }

LABEL_116:
    v50 = BYTE6(v60);
    if (v19)
    {
      v50 = v62 >> 32;
    }

    while (1)
    {
      v22 = __OFSUB__(v50, v5);
      v51 = v50 - v5;
      if (v22)
      {
        goto LABEL_156;
      }

      if (v51 < 1)
      {
        goto LABEL_142;
      }

      v52 = v5 + 2;
      if (__OFADD__(v5, 2))
      {
        goto LABEL_157;
      }

      if (v19 <= 1)
      {
        break;
      }

      if (v19 == 2)
      {
        v53 = *(v62 + 24);
        goto LABEL_129;
      }

      if (v52 > 0)
      {
LABEL_146:
        sub_26BE01600();
        swift_allocError();
        *v57 = 1;
        goto LABEL_154;
      }

LABEL_132:
      result = v62;
      v65 = v62;
      v66 = v60;
      if (v52 < v5)
      {
        goto LABEL_158;
      }

      sub_26BE00608(v62, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      sub_26BE016FC();
      sub_26C008E1C();
      sub_26BE00258(v65, v66);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26BEEBA48(0, *(v17 + 16) + 1, 1, v17);
        v17 = result;
      }

      v55 = *(v17 + 16);
      v54 = *(v17 + 24);
      if (v55 >= v54 >> 1)
      {
        result = sub_26BEEBA48((v54 > 1), v55 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 16) = v55 + 1;
      *(v17 + 2 * v55 + 32) = bswap32(0) >> 16;
      v5 += 2;
      if (v19 <= 1)
      {
        goto LABEL_116;
      }

LABEL_118:
      if (v19 == 2)
      {
        v50 = *(v62 + 24);
      }

      else
      {
        v50 = 0;
      }
    }

    v53 = BYTE6(v60);
    if (v19)
    {
      v53 = v62 >> 32;
    }

LABEL_129:
    if (v53 < v52)
    {
      goto LABEL_146;
    }

    goto LABEL_132;
  }

  if (v28 != v19)
  {
    sub_26BE01654();
    swift_allocError();
    *v31 = 0;
    v31[112] = 1;
LABEL_58:
    swift_willThrow();

    sub_26BE00258(v17, v18);
LABEL_10:
    sub_26BE00258(v67, v68);
    v67 = v6;
    v68 = v5;
    goto LABEL_15;
  }

  sub_26BE00258(v17, v18);
  sub_26BE00258(v6, v5);
  v18 = v67;
  v6 = v68;
  v30 = v69;
  sub_26BE00608(v67, v68);
  sub_26BE00608(v18, v6);
  sub_26BF30764(&v67, &v65);
  if (v66)
  {
    sub_26BE00258(v67, v68);
    goto LABEL_61;
  }

  v34 = v65;
  sub_26BE00258(v18, v6);
  if (v34 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v35 = 5;
    swift_willThrow();
    goto LABEL_57;
  }

  result = sub_26BF2A44C(v34);
  if (v15 >> 60 == 15)
  {
LABEL_66:

    v33 = v67;
    v32 = v68;
    goto LABEL_62;
  }

  v19 = result;
  v5 = v36;
  v17 = v15 >> 62;
  v60 = result >> 32;
  v62 = BYTE6(v15);
  v63 = MEMORY[0x277D84F90];
  if ((v15 >> 62) > 1)
  {
    goto LABEL_70;
  }

  while (2)
  {
    v37 = v62;
    if (v17)
    {
      v37 = v60;
    }

LABEL_73:
    v22 = __OFSUB__(v37, v5);
    v38 = v37 - v5;
    if (!v22)
    {
      if (v38 < 1)
      {
        goto LABEL_94;
      }

      v39 = v5 + 2;
      if (__OFADD__(v5, 2))
      {
        goto LABEL_140;
      }

      if (v17 <= 1)
      {
        v40 = v62;
        if (v17)
        {
          v40 = v60;
        }

        goto LABEL_81;
      }

      if (v17 == 2)
      {
        v40 = *(v19 + 24);
LABEL_81:
        if (v40 < v39)
        {
          goto LABEL_98;
        }
      }

      else if (v39 > 0)
      {
LABEL_98:
        v44 = v15;
        sub_26BE01600();
        swift_allocError();
        *v45 = 1;
        goto LABEL_107;
      }

      v65 = v19;
      v66 = v15;
      if (v39 < v5)
      {
        goto LABEL_141;
      }

      v30 = v15;
      sub_26BE00608(v19, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      sub_26BE016FC();
      sub_26C008E1C();
      sub_26BE00258(v65, v66);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26BEEBA5C(0, *(v63 + 16) + 1, 1, v63);
        v63 = result;
      }

      v42 = *(v63 + 16);
      v41 = *(v63 + 24);
      if (v42 >= v41 >> 1)
      {
        result = sub_26BEEBA5C((v41 > 1), v42 + 1, 1, v63);
        v63 = result;
      }

      *(v63 + 16) = v42 + 1;
      *(v63 + 2 * v42 + 32) = bswap32(0) >> 16;
      v5 += 2;
      v15 = v30;
      if (v17 <= 1)
      {
        continue;
      }

LABEL_70:
      if (v17 == 2)
      {
        v37 = *(v19 + 24);
      }

      else
      {
        v37 = 0;
      }

      goto LABEL_73;
    }

    break;
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v56 = *(v62 + 24);
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = v59;
    if (!v19)
    {
      v56 = v30;
    }
  }

  if (__OFSUB__(v56, v5))
  {
LABEL_159:
    __break(1u);
    return result;
  }

  if (v56 == v5)
  {
    sub_26BE00258(v62, v60);
    sub_26BE00258(v18, v6);
    result = sub_26BE00258(v67, v68);
    *v61 = v64;
    v61[1] = v63;
    v61[2] = v17;
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v58 = 0;
    v58[112] = 1;
LABEL_154:
    swift_willThrow();

    sub_26BE00258(v62, v60);
LABEL_106:

LABEL_57:

    sub_26BE00258(v67, v68);
    v67 = v18;
    v68 = v6;
LABEL_15:
    swift_willThrow();
    result = sub_26BE00258(v67, v68);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.Extension.RequiredCapabilitiesExtension.toExtension()@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v19 = xmmword_26C00BBD0;
  v20 = 0;
  v17 = xmmword_26C00BBD0;
  v18 = 0;
  v7 = sub_26BE7F300(0, v4);
  if (!v2)
  {
    sub_26BF30414(v7);
    sub_26BF2A30C(&v17);
    sub_26BE00258(v17, *(&v17 + 1));
    v17 = xmmword_26C00BBD0;
    v18 = 0;
    v11 = sub_26BE7F300(0, v5);
    sub_26BF30414(v11);
    sub_26BF2A30C(&v17);
    sub_26BE00258(v17, *(&v17 + 1));
    v17 = xmmword_26C00BBD0;
    v18 = 0;
    v12 = sub_26BE7F300(0, v6);
    sub_26BF30414(v12);
    sub_26BF2A30C(&v17);
    sub_26BE00258(v17, *(&v17 + 1));
    v13 = v19;
    v14 = *(&v19 + 1) >> 62;
    if ((*(&v19 + 1) >> 62) > 1)
    {
      if (v14 != 2 || (*(v19 + 24) & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (!v14 || ((v19 >> 32) & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    v15 = sub_26C00909C();
    *a1 = 3;
    *(a1 + 8) = v15;
    *(a1 + 16) = v16;
    v9 = v13 >> 64;
    v8 = v13;
    return sub_26BE00258(v8, v9);
  }

  sub_26BE00258(v17, *(&v17 + 1));
  v8 = 0;
  v9 = 0xC000000000000000;
  return sub_26BE00258(v8, v9);
}

uint64_t sub_26BFF8178@<X0>(uint64_t a1@<X8>)
{
  result = sub_26BE7DE38(v70);
  if (v2)
  {
    return result;
  }

  v67 = v70[6];
  v68 = v70[7];
  v69 = v71;
  v63 = v70[2];
  v64 = v70[3];
  v65 = v70[4];
  v66 = v70[5];
  v61 = v70[0];
  v62 = v70[1];
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  sub_26BE00608(*v1, v5);
  sub_26BE00608(v6, v5);
  sub_26BF30764(v1, &v58);
  if (v59)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v8 = v5;
    v9 = v6;
    v1[2] = v7;
LABEL_6:
    sub_26BE00258(v9, v8);
    *v1 = v6;
    v1[1] = v5;
    v1[2] = v7;
    sub_26BE01600();
    swift_allocError();
    *v10 = 1;
LABEL_7:
    swift_willThrow();
    return sub_26BE00854(&v61);
  }

  v11 = v58;
  sub_26BE00258(v6, v5);
  if (v11 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v12 = 5;
    swift_willThrow();
LABEL_3:
    sub_26BE00258(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v1[2] = v7;
    goto LABEL_7;
  }

  result = sub_26BF2A44C(v11);
  if (v13 >> 60 == 15)
  {
    v9 = *v1;
    v8 = v1[1];
    goto LABEL_6;
  }

  v15 = result;
  v16 = v13;
  v58 = result;
  v59 = v13;
  v60 = v14;
  v72 = MEMORY[0x277D84F90];
  v51 = a1;
  for (i = v7; ; v7 = i)
  {
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v18 = *(v15 + 24);
      }

      else
      {
        v18 = 0;
      }
    }

    else if (v17)
    {
      v18 = v15 >> 32;
    }

    else
    {
      v18 = BYTE6(v16);
    }

    v19 = __OFSUB__(v18, v14);
    v20 = v18 - v14;
    if (v19)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v20 < 1)
    {
      break;
    }

    sub_26BE00608(v15, v16);
    sub_26BE00608(v15, v16);
    sub_26BF30764(&v58, &v56);
    if (v57)
    {
      sub_26BE00258(v58, v59);
      v41 = v16;
      v24 = v15;
      goto LABEL_54;
    }

    v21 = v15;
    v22 = v56;
    v54 = v21;
    v55 = v16;
    sub_26BE00258(v21, v16);
    result = v60;
    v19 = __OFADD__(v60, v22);
    v23 = v60 + v22;
    if (v19)
    {
      goto LABEL_66;
    }

    v24 = v58;
    v16 = v59;
    v25 = v59 >> 62;
    if ((v59 >> 62) <= 1)
    {
      if (v25)
      {
        v26 = v58 >> 32;
      }

      else
      {
        v26 = BYTE6(v59);
      }

LABEL_31:
      if (v26 < v23)
      {
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    if (v25 == 2)
    {
      v26 = *(v58 + 24);
      goto LABEL_31;
    }

    if (v23 > 0)
    {
LABEL_53:
      v15 = v54;
      v41 = v55;
LABEL_54:
      sub_26BE00258(v24, v16);
      v58 = v15;
      v59 = v41;
      sub_26BE01600();
      swift_allocError();
      *v42 = 1;
LABEL_55:
      swift_willThrow();
LABEL_57:

      sub_26BE00258(v58, v59);
      goto LABEL_3;
    }

LABEL_34:
    if (v23 < v60)
    {
      goto LABEL_67;
    }

    v53 = v58;
    result = sub_26C00909C();
    v27 = result;
    v29 = v28;
    v60 = v23;
    v30 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_42;
      }

      result = *(result + 16);
      v31 = *(v27 + 24);
    }

    else
    {
      if (!v30)
      {
        goto LABEL_42;
      }

      result = result;
      v31 = v27 >> 32;
    }

    if (v31 < result)
    {
      goto LABEL_68;
    }

LABEL_42:
    v32 = sub_26C00909C();
    v34 = v33;
    sub_26BE00258(v27, v29);
    sub_26BE00258(v54, v55);
    sub_26BE00608(v53, v16);
    v35 = sub_26BF2FE68(&v58, sub_26BFF72A0, 0);
    if (!v35)
    {
      sub_26BE00258(v58, v59);
      v58 = v53;
      v59 = v16;
      sub_26BE01600();
      swift_allocError();
      *v43 = 1;
      swift_willThrow();
      sub_26BE00258(v32, v34);
      v7 = i;
      goto LABEL_57;
    }

    sub_26BE00258(v53, v16);
    sub_26BE00608(v32, v34);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = sub_26BEECC88(0, *(v72 + 2) + 1, 1, v72);
    }

    v37 = *(v72 + 2);
    v36 = *(v72 + 3);
    if (v37 >= v36 >> 1)
    {
      v72 = sub_26BEECC88((v36 > 1), v37 + 1, 1, v72);
    }

    sub_26BE00258(v32, v34);

    v38 = v72;
    *(v72 + 2) = v37 + 1;
    v39 = &v38[24 * v37];
    *(v39 + 4) = v32;
    *(v39 + 5) = v34;
    *(v39 + 6) = v35;
    v15 = v58;
    v16 = v59;
    v14 = v60;
    a1 = v51;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v40 = *(v15 + 24);
    }

    else
    {
      v40 = 0;
    }
  }

  else if (v17)
  {
    v40 = v15 >> 32;
  }

  else
  {
    v40 = BYTE6(v16);
  }

  if (__OFSUB__(v40, v14))
  {
LABEL_69:
    __break(1u);
    return result;
  }

  if (v40 != v14)
  {
    sub_26BE01654();
    swift_allocError();
    *v50 = 0;
    v50[112] = 1;
    goto LABEL_55;
  }

  sub_26BE00258(v15, v16);
  result = sub_26BE00258(v6, v5);
  v44 = v68;
  *(a1 + 96) = v67;
  *(a1 + 112) = v44;
  v45 = v69;
  v46 = v64;
  *(a1 + 32) = v63;
  *(a1 + 48) = v46;
  v47 = v66;
  *(a1 + 64) = v65;
  *(a1 + 80) = v47;
  v48 = v62;
  *a1 = v61;
  *(a1 + 16) = v48;
  v49 = v72;
  *(a1 + 128) = v45;
  *(a1 + 136) = v49;
  return result;
}

uint64_t MLS.UpdatePath.leafNode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 112);
  v20 = *(v1 + 96);
  v21 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v18 = *(v1 + 64);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 16);
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 112);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 128);
  *(a1 + 128) = *(v1 + 128);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_26BE00758(v15, v14);
}

__n128 MLS.UpdatePath.leafNode.setter(uint64_t a1)
{
  v3 = *(v1 + 112);
  v11[6] = *(v1 + 96);
  v11[7] = v3;
  v12 = *(v1 + 128);
  v4 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v4;
  v5 = *(v1 + 80);
  v11[4] = *(v1 + 64);
  v11[5] = v5;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v6;
  sub_26BE00854(v11);
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  *(v1 + 128) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v8;
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t MLS.UpdatePath.nodes.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_26BFF8930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_26BFF8978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MLS.MLSMessage.groupID.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.PublicMessage();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLS.GroupInfo();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BEE3514(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v15 = *v13;
      v16 = v13[1];
      v17 = v13[4];
      v18 = v13[5];
      v19 = v13[6];
      v20 = v13[7];
      v22 = v13[8];
      v21 = v13[9];
      sub_26BE00608(v15, v16);
      sub_26BE00258(v15, v16);
      sub_26BE00258(v17, v18);
      sub_26BE00258(v19, v20);
      sub_26BE00258(v22, v21);
      break;
    case 3:
      sub_26BFF8C48(v13, v5, type metadata accessor for MLS.PublicMessage);
      v15 = *v5;
      sub_26BE00608(*v5, *(v5 + 1));
      sub_26BFF8CB0(v5, type metadata accessor for MLS.PublicMessage);
      break;
    case 1:
      sub_26BFF8C48(v13, v9, type metadata accessor for MLS.GroupInfo);
      v15 = *(v9 + 1);
      sub_26BE00608(v15, *(v9 + 2));
      sub_26BFF8CB0(v9, type metadata accessor for MLS.GroupInfo);
      break;
    default:
      sub_26BFF8CB0(v13, type metadata accessor for MLS.MLSMessage.Inner);
      return 0;
  }

  return v15;
}

uint64_t sub_26BFF8C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFF8CB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MLS.MLSMessage.epoch.getter()
{
  v1 = type metadata accessor for MLS.PublicMessage();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLS.GroupInfo();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BEE3514(v0, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v17 = *v12;
    v18 = v12[1];
    v14 = v12[2];
    v19 = v12[4];
    v20 = v12[5];
    v21 = v12[6];
    v22 = v12[7];
    v24 = v12[8];
    v23 = v12[9];
    sub_26BE00258(v17, v18);
    sub_26BE00258(v19, v20);
    sub_26BE00258(v21, v22);
    sub_26BE00258(v24, v23);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26BFF8C48(v12, v4, type metadata accessor for MLS.PublicMessage);
      v14 = *(v4 + 2);
      v15 = type metadata accessor for MLS.PublicMessage;
      v16 = v4;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_26BFF8CB0(v12, type metadata accessor for MLS.MLSMessage.Inner);
        return 0;
      }

      sub_26BFF8C48(v12, v8, type metadata accessor for MLS.GroupInfo);
      v14 = *(v8 + 3);
      v15 = type metadata accessor for MLS.GroupInfo;
      v16 = v8;
    }

    sub_26BFF8CB0(v16, v15);
  }

  return v14;
}

uint64_t MLS.MLSMessage.contentType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MLS.PublicMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEE3514(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v22 = *v11;
    v23 = *(v11 + 1);
    v21 = v11[24];
    v24 = *(v11 + 4);
    v25 = *(v11 + 5);
    v26 = *(v11 + 6);
    v27 = *(v11 + 7);
    v29 = *(v11 + 8);
    v28 = *(v11 + 9);
    sub_26BE00258(v22, v23);
    sub_26BE00258(v24, v25);
    sub_26BE00258(v26, v27);
    result = sub_26BE00258(v29, v28);
LABEL_11:
    v31 = 0;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_26BFF8C48(v11, v7, type metadata accessor for MLS.PublicMessage);
    v13 = v7[13];
    v44 = v7[12];
    v45[0] = v13;
    *(v45 + 9) = *(v7 + 217);
    v14 = v7[9];
    v40 = v7[8];
    v41 = v14;
    v15 = v7[11];
    v42 = v7[10];
    v43 = v15;
    v16 = v7[5];
    v36 = v7[4];
    v37 = v16;
    v17 = v7[7];
    v38 = v7[6];
    v39 = v17;
    v18 = v7[1];
    v34[0] = *v7;
    v34[1] = v18;
    v19 = v7[3];
    v34[2] = v7[2];
    v35 = v19;
    sub_26BE2FB24(v34, v32);
    sub_26BFF8CB0(v7, type metadata accessor for MLS.PublicMessage);
    v32[8] = v43;
    v32[9] = v44;
    v33[0] = v45[0];
    *(v33 + 9) = *(v45 + 9);
    v32[4] = v39;
    v32[5] = v40;
    v32[6] = v41;
    v32[7] = v42;
    v32[0] = v35;
    v32[1] = v36;
    v32[2] = v37;
    v32[3] = v38;
    v20 = sub_26BE6917C(v32);
    if (v20)
    {
      if (v20 == 1)
      {
        nullsub_1(v32);
        v21 = 2;
      }

      else
      {
        nullsub_1(v32);
        v21 = 3;
      }
    }

    else
    {
      nullsub_1(v32);
      v21 = 1;
    }

    result = sub_26BE71494(v34);
    goto LABEL_11;
  }

  result = sub_26BFF8CB0(v11, type metadata accessor for MLS.MLSMessage.Inner);
  v21 = 0;
  v31 = 1;
LABEL_12:
  *a1 = v21;
  a1[1] = v31;
  return result;
}

uint64_t sub_26BFF91C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BEE6180();
  if ((v3 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    v11 = 1;
LABEL_8:
    *v10 = v11;
    return swift_willThrow();
  }

  if (v3 != 1)
  {
    sub_26BE01600();
    swift_allocError();
    v11 = 11;
    goto LABEL_8;
  }

  result = sub_26BF2F7B0();
  if (!v1)
  {
    v6 = result;
    v7 = v5;
    v8 = sub_26BEE6028();
    if ((v8 & 0x100000000) != 0)
    {
      sub_26BE01600();
      swift_allocError();
      *v12 = 1;
      swift_willThrow();
      return sub_26BE00258(v6, v7);
    }

    else
    {
      v9 = v8;
      sub_26BE02A74(v15);
      v13[0] = v15[0];
      v13[1] = v15[1];
      v14 = v16;
      *(a1 + 48) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 64) = 0;
      *a1 = 1;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      *(a1 + 24) = v9;
      return sub_26BE822A4(v13, a1 + 32);
    }
  }

  return result;
}

uint64_t sub_26BFF933C(unsigned __int16 *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  LOWORD(v25) = bswap32(*a1) >> 16;
  v3 = MEMORY[0x277D838B0];
  v4 = MEMORY[0x277CC9C18];
  v28 = MEMORY[0x277D838B0];
  v29 = MEMORY[0x277CC9C18];
  v26 = &v25;
  v27 = (&v25 + 2);
  v5 = __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277D838B0]);
  v7 = *v5;
  v6 = v5[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v9);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  v11 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      goto LABEL_23;
    }

    v11 = HIDWORD(v8) - v8;
  }

LABEL_11:
  result = sub_26BF30414(v11);
  if (v1)
  {
    goto LABEL_16;
  }

  v15 = result;
  sub_26BE11228(v8, v9);
  v16 = v15 + v11;
  if (__OFADD__(v15, v11))
  {
    goto LABEL_20;
  }

  v17 = v16 + 2;
  if (__OFADD__(v16, 2))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = bswap32(*(a1 + 6));
  v28 = v3;
  v29 = v4;
  v26 = &v25;
  v27 = &v26;
  v18 = __swift_project_boxed_opaque_existential_1(&v26, v3);
  v20 = *v18;
  v19 = v18[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v21 = v17 + 4;
  if (__OFADD__(v17, 4))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v22 = sub_26BE0256C((a1 + 16));
  v24 = __OFADD__(v21, v22);
  result = v21 + v22;
  if (v24)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_16:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.AuthenticatedData.init(version:messageID:era:verifiableDerivedContent:)@<X0>(__int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0;
  *a6 = v6;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = 0u;
  return sub_26BE822A4(a5, a6 + 32);
}

uint64_t MLS.AuthenticatedData.messageID.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

uint64_t MLS.AuthenticatedData.messageID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

double MLS.AuthenticatedData.init(version:messageID:originalMessageID:era:)@<D0>(__int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  sub_26BE00258(a4, a5);
  v12 = *a1;
  result = 0.0;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0;
  *a7 = v12;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a6;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O24VerifiableDerivedContent_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BFF96E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_26BFF973C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_26BFF97B0(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E700, &qword_26C011368);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v46 - v5;
  v6 = sub_26C009C8C();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = _s11HashRatchetVMa(0);
  v16 = v15[6];
  v17 = *(v1 + v16);
  v18 = (v1 + v15[8]);
  v20 = *(v18 + 3);
  v19 = *(v18 + 4);
  v57 = *v18;
  *v58 = *(v18 + 8);
  *&v58[16] = v20;
  v59 = v19;
  v21 = v15[5];

  v60 = v17;
  v22 = v20;
  v23 = v56;
  MLS.Cryptography.Ciphersuite.deriveTreeSecret(_:_:_:_:)(v1 + v21, 7955819, 0xE300000000000000, v17, v22, v14);

  if (v23)
  {
    return v60;
  }

  v47 = v16;
  v48 = v15;
  v49 = v10;
  v50 = v14;
  v24 = *(v18 + 1);
  v25 = *(v18 + 4);
  v57 = *v18;
  *v58 = v24;
  v56 = *(v18 + 1);
  *&v58[8] = v56;
  v59 = v25;

  v26 = v53;
  v27 = v60;
  MLS.Cryptography.Ciphersuite.deriveTreeSecret(_:_:_:_:)(v1 + v21, 0x65636E6F6ELL, 0xE500000000000000, v60, v56, v53);
  v28 = v21;

  v30 = *(v18 + 3);
  v29 = *(v18 + 4);
  v57 = *v18;
  v56 = *(v18 + 8);
  *v58 = v56;
  *&v58[16] = v30;
  v59 = v29;

  MLS.Cryptography.Ciphersuite.deriveTreeSecret(_:_:_:_:)(v1 + v21, 0x746572636573, 0xE600000000000000, v27, v56, v49);
  v31 = v50;
  v32 = v26;

  v35 = v54;
  v34 = v55;
  if (v27 != -1)
  {
    *(v2 + v47) = v27 + 1;
    v36 = v2 + v28;
    v37 = v49;
    (*(v35 + 24))(v36, v49, v34);
    *&v56 = v2;
    v38 = v35;
    v39 = *(v35 + 16);
    v40 = v51;
    v39(v51, v31, v34);
    v41 = v34;
    v42 = type metadata accessor for MLS.KeyAndNonce(0);
    v39(v40 + *(v42 + 20), v32, v41);
    v43 = v52;
    sub_26BFFAE4C(v40, v52);
    (*(*(v42 - 8) + 56))(v43, 0, 1, v42);
    v44 = v56 + v48[7];
    sub_26BE4D8CC(v43, v60);
    v45 = *(v38 + 8);
    v45(v37, v41);
    v45(v32, v41);
    v45(v50, v41);
    return v60;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFF9BFC@<X0>(char *a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for MLS.KeyAndNonce(0);
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v75 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = &v65 - v9;
  v11 = sub_26C009C8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v19 = sub_26BEE6180();
  if ((v19 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v26 = 1;
    return swift_willThrow();
  }

  v80 = v19;
  v72 = v16;
  result = sub_26BF2F7B0();
  if (v2)
  {
    return result;
  }

  v76 = result;
  *&v77 = v21;
  sub_26C009C5C();
  v22 = sub_26BEE6028();
  if (v22 & 0x100000000) != 0 || (v68 = v22, v23 = sub_26BEEE594(), (v24))
  {
    sub_26BE01600();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();
    return (*(v12 + 8))(v18, v11);
  }

  v27 = v23;
  v66 = v11;
  v67 = v18;
  v28 = sub_26C0050B4(MEMORY[0x277D84F90]);
  v65 = a1;
  if (v27)
  {
    v69 = v3;
    v70 = v12;
    do
    {
      while (1)
      {
        v71 = v27;
        v29 = sub_26BEE6028();
        if ((v29 & 0x100000000) != 0)
        {
          sub_26BE01600();
          swift_allocError();
          *v64 = 1;
          swift_willThrow();

          v11 = v66;
          v18 = v67;
          return (*(v12 + 8))(v18, v11);
        }

        v30 = v29;
        v31 = sub_26BF2F7B0();
        v33 = v32;
        v34 = sub_26BF2F7B0();
        v36 = v35;
        v76 = v31;
        *&v77 = v33;
        sub_26BE00608(v31, v33);
        sub_26C009C5C();
        v76 = v34;
        *&v77 = v36;
        v37 = v30;
        v38 = v28;
        v39 = *(v74 + 20);
        sub_26BE00608(v34, v36);
        sub_26C009C5C();
        sub_26BE00258(v31, v33);
        sub_26BE00258(v34, v36);
        sub_26BFFAE4C(v10, v75);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v38;
        v41 = sub_26BEBB208(v37);
        v43 = v38[2];
        v44 = (v42 & 1) == 0;
        v45 = __OFADD__(v43, v44);
        v46 = v43 + v44;
        if (v45)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          result = sub_26C00AF8C();
          __break(1u);
          return result;
        }

        v47 = v42;
        v12 = v70;
        if (v38[3] < v46)
        {
          break;
        }

        v49 = v71;
        if (isUniquelyReferenced_nonNull_native)
        {
          v28 = v76;
          if ((v42 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v52 = v41;
          sub_26BE6EE0C();
          v49 = v71;
          v41 = v52;
          v28 = v76;
          if ((v47 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

LABEL_11:
        sub_26BFFAF84(v75, v28[7] + *(v73 + 72) * v41);
        sub_26BF2E220(v10);
        v27 = v49 - 1;
        if (!v27)
        {
          goto LABEL_25;
        }
      }

      sub_26BE6BA84(v46, isUniquelyReferenced_nonNull_native);
      v41 = sub_26BEBB208(v37);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_31;
      }

      v49 = v71;
      v28 = v76;
      if (v47)
      {
        goto LABEL_11;
      }

LABEL_20:
      v28[(v41 >> 6) + 8] |= 1 << v41;
      *(v28[6] + 4 * v41) = v37;
      sub_26BFFAEB0(v75, v28[7] + *(v73 + 72) * v41);
      sub_26BF2E220(v10);
      v50 = v28[2];
      v45 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v45)
      {
        goto LABEL_29;
      }

      v28[2] = v51;
      v27 = v49 - 1;
    }

    while (v27);
  }

LABEL_25:
  v75 = v28;
  v53 = v80;
  v54 = *(v12 + 16);
  v55 = v72;
  v56 = v66;
  v54(v72, v67, v66);
  v57 = v65;
  *v65 = v53;
  v58 = _s11HashRatchetVMa(0);
  v54(&v57[v58[5]], v55, v56);
  *&v57[v58[6]] = v68;
  *&v57[v58[7]] = v75;
  if ((v53 - 3) < 0xFFFFFFFE)
  {
    goto LABEL_30;
  }

  v81 = v53 != 1;
  v59 = MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v81, &v76);
  v60 = *(v12 + 8);
  v60(v55, v56, v59);
  result = (v60)(v67, v56);
  v61 = v78;
  v62 = v79;
  v63 = &v57[v58[8]];
  *v63 = v76;
  *(v63 + 8) = v77;
  *(v63 + 3) = v61;
  *(v63 + 4) = v62;
  return result;
}

uint64_t MLS.KeyAndNonce.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26C009C8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MLS.KeyAndNonce.key.setter(uint64_t a1)
{
  v3 = sub_26C009C8C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MLS.KeyAndNonce.nonce.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeyAndNonce(0) + 20);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeyAndNonce.nonce.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeyAndNonce(0) + 20);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static MLS.KeyAndNonce.== infix(_:_:)()
{
  if (MEMORY[0x26D698700]())
  {
    v0 = *(type metadata accessor for MLS.KeyAndNonce(0) + 20);

    JUMPOUT(0x26D698700);
  }

  return 0;
}

uint64_t sub_26BFFA4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x26D698700]())
  {
    v4 = *(a3 + 20);

    JUMPOUT(0x26D698700);
  }

  return 0;
}

uint64_t sub_26BFFA538(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BFFA5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BFFA628()
{
  result = sub_26C009C8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFFA6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C009C8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26BFFA77C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C009C8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_26BFFA858()
{
  sub_26C009C8C();
  if (v0 <= 0x3F)
  {
    sub_26BFFA8FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BFFA8FC()
{
  if (!qword_280460978)
  {
    type metadata accessor for MLS.KeyAndNonce(255);
    v0 = sub_26C00A39C();
    if (!v1)
    {
      atomic_store(v0, &qword_280460978);
    }
  }
}

uint64_t sub_26BFFA968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.KeyAndNonce(0);
  v5 = *(v4 - 8);
  v61 = v4;
  v62 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v55 - v11;
  MEMORY[0x28223BE20](v10);
  v59 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460980, &qword_26C028FD0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = (&v55 - v20);
  if (a1 == a2)
  {
    return 1;
  }

  v22 = *(a1 + 16);
  v60 = a2;
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  v57 = a1;
  v58 = v9;
  v23 = 0;
  v26 = *(a1 + 64);
  v25 = a1 + 64;
  v24 = v26;
  v27 = 1 << *(v25 - 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v24;
  v30 = (v27 + 63) >> 6;
  v55 = v18;
  v56 = v12;
  while (v29)
  {
    v31 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v32 = v31 | (v23 << 6);
LABEL_16:
    v37 = *(*(v57 + 48) + 4 * v32);
    v38 = v59;
    sub_26BFFAE4C(*(v57 + 56) + *(v62 + 72) * v32, v59);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460988, &qword_26C028FD8);
    v40 = *(v39 + 48);
    v41 = v55;
    *v55 = v37;
    v18 = v41;
    sub_26BFFAEB0(v38, &v41[v40]);
    (*(*(v39 - 8) + 56))(v18, 0, 1, v39);
    v12 = v56;
LABEL_17:
    sub_26BFFAF14(v18, v21);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460988, &qword_26C028FD8);
    v43 = (*(*(v42 - 8) + 48))(v21, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = *(v42 + 48);
    v46 = *v21;
    sub_26BFFAEB0(v21 + v45, v12);
    v47 = v60;
    v48 = sub_26BEBB208(v46);
    if ((v49 & 1) == 0)
    {
      goto LABEL_25;
    }

    v50 = v58;
    sub_26BFFAE4C(*(v47 + 56) + *(v62 + 72) * v48, v58);
    if ((MEMORY[0x26D698700](v50, v12) & 1) == 0)
    {
      sub_26BF2E220(v50);
LABEL_25:
      sub_26BF2E220(v12);
      return 0;
    }

    v51 = MEMORY[0x26D698700](v50 + *(v61 + 20), &v12[*(v61 + 20)]);
    v52 = v50;
    v53 = v51;
    sub_26BF2E220(v52);
    result = sub_26BF2E220(v12);
    if ((v53 & 1) == 0)
    {
      return v44;
    }
  }

  if (v30 <= v23 + 1)
  {
    v33 = v23 + 1;
  }

  else
  {
    v33 = v30;
  }

  v34 = v33 - 1;
  while (1)
  {
    v35 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v35 >= v30)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460988, &qword_26C028FD8);
      (*(*(v54 - 8) + 56))(v18, 1, 1, v54);
      v29 = 0;
      v23 = v34;
      goto LABEL_17;
    }

    v36 = *(v25 + 8 * v35);
    ++v23;
    if (v36)
    {
      v29 = (v36 - 1) & v36;
      v32 = __clz(__rbit64(v36)) | (v35 << 6);
      v23 = v35;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFFAD9C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = _s11HashRatchetVMa(0);
  if (MEMORY[0x26D698700](a1 + v4[5], a2 + v4[5]) & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]) && (sub_26BFFA968(*(a1 + v4[7]), *(a2 + v4[7])))
  {
    v5 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_26BFFAE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.KeyAndNonce(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFFAEB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.KeyAndNonce(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFFAF14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460980, &qword_26C028FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFFAF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.KeyAndNonce(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BFFAFE8@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    result = 0;
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    result = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v7)
  {
    result = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    return result;
  }

  result = HIDWORD(v5) - v5;
LABEL_10:
  sub_26BF30414(result);
  if (v3)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  sub_26BE11228(v5, a2);
  v10 = sub_26C00909C();
  v12 = v11;
  result = sub_26BE00258(0, 0xC000000000000000);
  *a3 = 4;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  return result;
}

unint64_t sub_26BFFB11C@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    result = 0;
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    result = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v7)
  {
    result = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    return result;
  }

  result = HIDWORD(v5) - v5;
LABEL_10:
  sub_26BF30414(result);
  if (v3)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  sub_26BE11228(v5, a2);
  v10 = sub_26C00909C();
  v12 = v11;
  result = sub_26BE00258(0, 0xC000000000000000);
  *a3 = -4091;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  return result;
}

uint64_t static MLS.Storage.StorageOptions.testInMemoryOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MLS.Storage.InMemoryGroupStateStore();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = sub_26C00581C(MEMORY[0x277D84F90], sub_26BEBE840);
  *(v3 + 24) = sub_26C001A90(v4);
  *(a1 + 32) = v2;
  *(a1 + 40) = &protocol witness table for MLS.Storage.InMemoryGroupStateStore;
  *(a1 + 8) = v3;
  v5 = type metadata accessor for MLS.Storage.InMemoryGroupStateStoreV2();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_26C00581C(v4, sub_26BEBE840);
  *(v6 + 24) = sub_26C001BDC(v4);
  v11 = v5;
  v12 = &protocol witness table for MLS.Storage.InMemoryGroupStateStoreV2;
  *&v10 = v6;
  v7 = type metadata accessor for MLS.Storage.InMemoryClientStateStore();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_26C001D40(v4);
  *(a1 + 112) = v7;
  *(a1 + 120) = &protocol witness table for MLS.Storage.InMemoryClientStateStore;
  *a1 = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = v8;
  *(a1 + 48) = 0u;
  a1 += 48;
  sub_26C001F28(a1);
  return sub_26BE03890(&v10, a1);
}

uint64_t sub_26BFFB3F4(uint64_t (*a1)(uint64_t))
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = sub_26C00581C(MEMORY[0x277D84F90], sub_26BEBE840);
  *(v2 + 24) = a1(v3);
  return v2;
}

uint64_t MLS.Storage.InMemoryClientStateStore.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_26C001D40(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t MLS.Storage.StorageOptions.init(storeHPKESecretsInSEP:groupStateStorage:groupStateStorageV2:clientStateStorage:)@<X0>(char a1@<W0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 80) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 48) = 0u;
  v8 = a5 + 48;
  *a5 = a1;
  sub_26BE03890(a2, a5 + 8);
  sub_26C001F28(v8);
  sub_26BE03890(a3, v8);

  return sub_26BE03890(a4, a5 + 88);
}

uint64_t MLS.Storage.StorageOptions.groupStateStorage.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_26BE03890(a1, v1 + 8);
}

uint64_t MLS.Storage.StorageOptions.clientStateStorage.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 88));

  return sub_26BE03890(a1, v1 + 88);
}

uint64_t MLS.Storage.StorageOptions.init(storeHPKESecretsInSEP:groupStateStorage:clientStateStorage:)@<X0>(char a1@<W0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 80) = 0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *a4 = a1;
  sub_26BE03890(a2, a4 + 8);

  return sub_26BE03890(a3, a4 + 88);
}

uint64_t MLS.Storage.EpochRecord.data.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

uint64_t MLS.Storage.GroupStateUpdate.groupState.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Storage.GroupStateUpdate.groupState.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MLS.Storage.GroupStateUpdate.epochInserts.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MLS.Storage.GroupStateUpdate.epochUpdates.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t MLS.Storage.GroupStateUpdate.epochDeletes.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_26BFFB968()
{
  if (*v0)
  {
    result = 0x444968636F7065;
  }

  else
  {
    result = 6386277;
  }

  *v0;
  return result;
}

uint64_t sub_26BFFB99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6386277 && a2 == 0xE300000000000000;
  if (v5 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x444968636F7065 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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

uint64_t sub_26BFFBA78(uint64_t a1)
{
  v2 = sub_26C001F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BFFBAB4(uint64_t a1)
{
  v2 = sub_26C001F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.Storage.EpochKey.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460990, &qword_26C029078);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C001F90();
  sub_26C00B10C();
  v14 = 0;
  sub_26C00AECC();
  if (!v2)
  {
    v13 = 1;
    sub_26C00AECC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MLS.Storage.EpochKey.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x26D699B60](*v0);
  return MEMORY[0x26D699B60](v1);
}

uint64_t MLS.Storage.EpochKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

uint64_t MLS.Storage.EpochKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609A0, &qword_26C029080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C001F90();
  sub_26C00B0FC();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_26C00AE4C();
    v15 = 1;
    v12 = sub_26C00AE4C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26BFFBEB4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFFBF10()
{
  v1 = v0[1];
  MEMORY[0x26D699B60](*v0);
  return MEMORY[0x26D699B60](v1);
}

uint64_t sub_26BFFBF4C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

__n128 MLS.Storage.Record.key.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 MLS.Storage.Record.key.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t MLS.Storage.Record.data.getter()
{
  v1 = *(v0 + 16);
  sub_26BE00608(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.Storage.Record.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLS.Storage.ReadGroupKey.groupID.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Storage.ReadGroupKey.groupID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MLS.Storage.ReadEpochKey.groupID.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Storage.ReadEpochKey.groupID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

__n128 MLS.Storage.ReadEpochKey.key.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 MLS.Storage.ReadEpochKey.key.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

BOOL static MLS.Storage.ReadEpochKey.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = sub_26BE02DEC(*a1, a1[1], *a2, a2[1]);
  v8 = v2 == v4 && v3 == v5;
  return (v6 & 1) != 0 && v8;
}

uint64_t sub_26BFFC23C()
{
  if (*v0)
  {
    result = 7955819;
  }

  else
  {
    result = 0x444970756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_26BFFC270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444970756F7267 && a2 == 0xE700000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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

uint64_t sub_26BFFC34C(uint64_t a1)
{
  v2 = sub_26C001FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BFFC388(uint64_t a1)
{
  v2 = sub_26C001FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.Storage.ReadEpochKey.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609A8, &qword_26C029088);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14 = v1[3];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BE00608(v8, v9);
  sub_26C001FE4();
  sub_26C00B10C();
  v17 = v8;
  v18 = v9;
  v19 = 0;
  sub_26BE3AFC4();
  sub_26C00AEBC();
  sub_26BE00258(v17, v18);
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v19 = 1;
    sub_26C002038();
    sub_26C00AEBC();
  }

  return (*(v16 + 8))(v7, v4);
}

uint64_t MLS.Storage.ReadEpochKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_26C00911C();
  MEMORY[0x26D699B60](v3);
  return MEMORY[0x26D699B60](v4);
}

uint64_t MLS.Storage.ReadEpochKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v3);
  MEMORY[0x26D699B60](v4);
  return sub_26C00B0CC();
}

uint64_t MLS.Storage.ReadEpochKey.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609C0, &qword_26C029090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C001FE4();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_26BE3B018();
  sub_26C00AE3C();
  v11 = v14;
  v15 = 1;
  sub_26C00208C();
  sub_26C00AE3C();
  (*(v6 + 8))(v9, v5);
  v12 = v14;
  *a2 = v11;
  a2[1] = v12;
  sub_26BE00608(v11, *(&v11 + 1));
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26BE00258(v11, *(&v11 + 1));
}

BOOL sub_26BFFC834(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = sub_26BE02DEC(*a1, a1[1], *a2, a2[1]);
  v8 = v2 == v4 && v3 == v5;
  return (v6 & 1) != 0 && v8;
}

uint64_t sub_26BFFC888()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v3);
  MEMORY[0x26D699B60](v4);
  return sub_26C00B0CC();
}

uint64_t sub_26BFFC900()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_26C00911C();
  MEMORY[0x26D699B60](v3);
  return MEMORY[0x26D699B60](v4);
}

uint64_t sub_26BFFC948()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v3);
  MEMORY[0x26D699B60](v4);
  return sub_26C00B0CC();
}

uint64_t MLS.Storage.WriteGroupData.groupID.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Storage.WriteGroupData.groupID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MLS.Storage.WriteGroupData.groupState.getter()
{
  v1 = *(v0 + 16);
  sub_26BE2E408(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.Storage.WriteGroupData.groupState.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE136AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLS.Storage.WriteGroupData.epochInserts.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t MLS.Storage.WriteGroupData.epochUpdates.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t MLS.Storage.WriteGroupData.epochDeletes.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_26BFFCC00(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_26BFFCC24, 0, 0);
}

uint64_t sub_26BFFCC24()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v4 = v0[5];
    v3 = v0[6];

    v5 = sub_26BEBE840(v4, v3);
    if (v6)
    {
      v7 = (*(v2 + 56) + 16 * v5);
      v8 = *v7;
      v9 = v7[1];
      sub_26BE00608(*v7, v9);
    }

    else
    {
      v8 = 0;
      v9 = 0xF000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = v0[1];

  return v10(v8, v9);
}

uint64_t sub_26BFFCD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_26BFFCD2C, 0, 0);
}

uint64_t sub_26BFFCD2C()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];

    v6 = sub_26BEBB250(v5, v4, v3);
    if (v7)
    {
      v8 = (*(v2 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      sub_26BE00608(*v8, v10);
    }

    else
    {
      v9 = 0;
      v10 = 0xF000000000000000;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  v11 = v0[1];

  return v11(v9, v10);
}

uint64_t sub_26BFFCE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(v4 + 88) = *a3;
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  *(v4 + 104) = v5;
  *(v4 + 120) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_26BFFCE50, 0, 0);
}

unint64_t sub_26BFFCE50()
{
  v92 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  swift_beginAccess();
  sub_26BE00608(v5, v3);
  sub_26BE00608(v2, v1);
  v6 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v91 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_26BE57374(v2, v1, v5, v3, isUniquelyReferenced_nonNull_native);
  sub_26BE00258(v5, v3);
  *(v4 + 16) = v91;
  result = swift_endAccess();
  v9 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (v9)
    {
      if (*(v0 + 88) != *(v0 + 88) >> 32)
      {
        goto LABEL_10;
      }
    }

    else if (*(v0 + 102))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v9 != 2 || *(*(v0 + 88) + 16) == *(*(v0 + 88) + 24))
  {
LABEL_9:
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    swift_beginAccess();
    sub_26BE00608(v11, v10);
    sub_26C000288(v11, v10, &v91);
    sub_26BE00258(v11, v10);
    sub_26BE136AC(v91, *(&v91 + 1));
    result = swift_endAccess();
  }

LABEL_10:
  v87 = *(v0 + 104);
  v89 = *(v0 + 80);
  v90 = v0;
  v85 = *(v87 + 16);
  if (!v85)
  {
LABEL_24:
    v88 = *(v0 + 112);
    v86 = *(v88 + 16);
    if (!v86)
    {
LABEL_40:
      v69 = *(v0 + 120);
      v70 = *(v69 + 16);
      if (v70)
      {
        v71 = (v69 + 32);
        do
        {
          v72 = *(v0 + 64);
          v73 = *(v0 + 72);
          v74 = *v71++;
          swift_beginAccess();
          v75 = *(v89 + 24);
          sub_26BE00608(v72, v73);
          v76 = sub_26BEBB250(v72, v73, v74);
          if (v77)
          {
            v78 = v76;
            v79 = *(v89 + 24);
            v80 = swift_isUniquelyReferenced_nonNull_native();
            v81 = *(v89 + 24);
            *&v91 = v81;
            *(v89 + 24) = 0x8000000000000000;
            if (!v80)
            {
              sub_26BE6E610();
              v81 = v91;
            }

            v83 = *(v0 + 64);
            v82 = *(v0 + 72);
            sub_26BE00258(*(*(v81 + 48) + 24 * v78), *(*(v81 + 48) + 24 * v78 + 8));
            sub_26BE00258(*(*(v81 + 56) + 16 * v78), *(*(v81 + 56) + 16 * v78 + 8));
            sub_26C00117C(v78, v81);
            sub_26BE00258(v83, v82);
            *(v89 + 24) = v81;
          }

          else
          {
            sub_26BE00258(*(v0 + 64), *(v0 + 72));
          }

          swift_endAccess();
          --v70;
        }

        while (v70);
      }

      v84 = *(v0 + 8);

      return v84();
    }

    v41 = 0;
    v42 = (v88 + 48);
    while (1)
    {
      if (v41 >= *(v88 + 16))
      {
        goto LABEL_56;
      }

      v47 = *(v0 + 64);
      v46 = *(v0 + 72);
      v49 = *(v42 - 2);
      v48 = *(v42 - 1);
      v50 = *v42;
      swift_beginAccess();
      sub_26BE00608(v48, v50);
      sub_26BE00608(v47, v46);
      sub_26BE00608(v48, v50);
      v51 = *(v89 + 24);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *&v91 = *(v89 + 24);
      v53 = v91;
      *(v89 + 24) = 0x8000000000000000;
      result = sub_26BEBB250(v47, v46, v49);
      v55 = v53[2];
      v56 = (v54 & 1) == 0;
      v28 = __OFADD__(v55, v56);
      v57 = v55 + v56;
      if (v28)
      {
        goto LABEL_57;
      }

      v58 = v54;
      if (v53[3] >= v57)
      {
        v0 = v90;
        if (v52)
        {
          v63 = *(v90 + 64);
          v62 = *(v90 + 72);
          if (v54)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v68 = result;
          sub_26BE6E610();
          result = v68;
          v53 = v91;
          v63 = *(v90 + 64);
          v62 = *(v90 + 72);
          if (v58)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v60 = *(v90 + 64);
        v59 = *(v90 + 72);
        sub_26BE6AE10(v57, v52);
        v53 = v91;
        result = sub_26BEBB250(v60, v59, v49);
        if ((v58 & 1) != (v61 & 1))
        {
          goto LABEL_51;
        }

        v0 = v90;
        v63 = *(v90 + 64);
        v62 = *(v90 + 72);
        if (v58)
        {
LABEL_26:
          v43 = (v53[7] + 16 * result);
          v44 = *v43;
          v45 = v43[1];
          *v43 = v48;
          v43[1] = v50;
          sub_26BE00258(v44, v45);
          sub_26BE00258(v63, v62);
          goto LABEL_27;
        }
      }

      v53[(result >> 6) + 8] |= 1 << result;
      v64 = (v53[6] + 24 * result);
      *v64 = v63;
      v64[1] = v62;
      v64[2] = v49;
      v65 = (v53[7] + 16 * result);
      *v65 = v48;
      v65[1] = v50;
      v66 = v53[2];
      v28 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v28)
      {
        goto LABEL_59;
      }

      v53[2] = v67;
LABEL_27:
      ++v41;
      *(v89 + 24) = v53;
      swift_endAccess();
      result = sub_26BE00258(v48, v50);
      v42 += 3;
      if (v86 == v41)
      {
        goto LABEL_40;
      }
    }
  }

  v12 = 0;
  v13 = (v87 + 48);
  while (v12 < *(v87 + 16))
  {
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v20 = *(v13 - 2);
    v19 = *(v13 - 1);
    v21 = *v13;
    swift_beginAccess();
    sub_26BE00608(v19, v21);
    sub_26BE00608(v18, v17);
    sub_26BE00608(v19, v21);
    v22 = *(v89 + 24);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v91 = *(v89 + 24);
    v24 = v91;
    *(v89 + 24) = 0x8000000000000000;
    result = sub_26BEBB250(v18, v17, v20);
    v26 = v24[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_55;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v23 & 1) == 0)
      {
        v40 = result;
        sub_26BE6E610();
        result = v40;
        v24 = v91;
      }
    }

    else
    {
      v32 = *(v90 + 64);
      v31 = *(v90 + 72);
      sub_26BE6AE10(v29, v23);
      v24 = v91;
      result = sub_26BEBB250(v32, v31, v20);
      if ((v30 & 1) != (v33 & 1))
      {
LABEL_51:

        return sub_26C00AF8C();
      }
    }

    v35 = *(v90 + 64);
    v34 = *(v90 + 72);
    if (v30)
    {
      v14 = (v24[7] + 16 * result);
      v15 = *v14;
      v16 = v14[1];
      *v14 = v19;
      v14[1] = v21;
      sub_26BE00258(v15, v16);
      sub_26BE00258(v35, v34);
    }

    else
    {
      v24[(result >> 6) + 8] |= 1 << result;
      v36 = (v24[6] + 24 * result);
      *v36 = v35;
      v36[1] = v34;
      v36[2] = v20;
      v37 = (v24[7] + 16 * result);
      *v37 = v19;
      v37[1] = v21;
      v38 = v24[2];
      v28 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v28)
      {
        goto LABEL_58;
      }

      v24[2] = v39;
    }

    ++v12;
    v0 = v90;
    *(v89 + 24) = v24;
    swift_endAccess();
    result = sub_26BE00258(v19, v21);
    v13 += 3;
    if (v85 == v12)
    {
      goto LABEL_24;
    }
  }

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
  return result;
}

uint64_t sub_26BFFD510()
{
  if (*v0)
  {
    return 0x74614468636F7065;
  }

  else
  {
    return 0x74614470756F7267;
  }
}

uint64_t sub_26BFFD54C(uint64_t a1)
{
  v2 = sub_26C0020E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BFFD588(uint64_t a1)
{
  v2 = sub_26C0020E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BFFD5CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609D0, &qword_26C0290B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C0020E0();
  sub_26C00B10C();
  swift_beginAccess();
  v14 = *(v3 + 16);
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609E0, &qword_26C0290B8);
  sub_26C002188(&qword_2804609E8, sub_26BE3AFC4);
  sub_26C00AEBC();
  if (!v2)
  {
    swift_beginAccess();
    v13 = *(v3 + 24);
    v12[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609F0, &qword_26C0290C0);
    sub_26C002200(&qword_2804609F8, sub_26C002134, sub_26BE3AFC4);
    sub_26C00AEBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MLS.Storage.InMemoryGroupStateStore.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  MLS.Storage.InMemoryGroupStateStore.init(from:)(a1);
  return v2;
}

uint64_t MLS.Storage.InMemoryGroupStateStore.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A08, &qword_26C0290C8);
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = MEMORY[0x277D84F90];
  *(v3 + 16) = sub_26C00581C(MEMORY[0x277D84F90], sub_26BEBE840);
  v10 = (v3 + 16);
  *(v3 + 24) = sub_26C001A90(v9);
  v11 = (v3 + 24);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C0020E0();
  sub_26C00B0FC();
  if (v2)
  {
  }

  else
  {
    v13 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609E0, &qword_26C0290B8);
    v23 = 0;
    sub_26C002188(&qword_280460A10, sub_26BE3B018);
    v14 = v21;
    sub_26C00AE3C();
    v15 = v22;
    swift_beginAccess();
    v16 = *v10;
    *v10 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609F0, &qword_26C0290C0);
    LOBYTE(v22) = 1;
    sub_26C002200(&qword_280460A18, sub_26C002290, sub_26BE3B018);
    sub_26C00AE3C();
    (*(v13 + 8))(v8, v14);
    v18 = v24;
    swift_beginAccess();
    v19 = *v11;
    *v11 = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26BFFDB78(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26BFFDC20;

  return sub_26BFFCC00(a1, a2);
}

uint64_t sub_26BFFDC20(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_26BFFDD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26C006454;

  return sub_26BFFCD08(a1, a2, a3);
}

uint64_t sub_26BFFDDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26BE28F58;

  return sub_26BFFCE18(a1, a2, a3);
}

uint64_t sub_26BFFDEF8(_OWORD *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  return MEMORY[0x2822009F8](sub_26BFFDF20, 0, 0);
}

uint64_t sub_26BFFDF20()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v4 = v0[6];
    v3 = v0[7];

    v5 = sub_26BEBE840(v4, v3);
    if (v6)
    {
      v7 = (*(v2 + 56) + 16 * v5);
      v8 = *v7;
      v9 = v7[1];
      sub_26BE00608(*v7, v9);
    }

    else
    {
      v8 = 0;
      v9 = 0xF000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = v0[1];

  return v10(v8, v9);
}

uint64_t sub_26BFFE004(_OWORD *a1)
{
  *(v2 + 40) = v1;
  v3 = a1[1];
  *(v2 + 48) = *a1;
  *(v2 + 64) = v3;
  return MEMORY[0x2822009F8](sub_26BFFE02C, 0, 0);
}

uint64_t sub_26BFFE02C()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v4 = v0[8];
    v3 = v0[9];
    v6 = v0[6];
    v5 = v0[7];

    v7 = sub_26BEBB2E8(v6, v5, v4, v3);
    if (v8)
    {
      v9 = (*(v2 + 56) + 16 * v7);
      v10 = *v9;
      v11 = v9[1];
      sub_26BE00608(*v9, v11);
    }

    else
    {
      v10 = 0;
      v11 = 0xF000000000000000;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = v0[1];

  return v12(v10, v11);
}

uint64_t sub_26BFFE124(uint64_t a1)
{
  *(v2 + 64) = v1;
  v3 = *(a1 + 16);
  *(v2 + 72) = *a1;
  *(v2 + 88) = v3;
  *(v2 + 104) = *(a1 + 32);
  *(v2 + 120) = *(a1 + 48);
  return MEMORY[0x2822009F8](sub_26BFFE160, 0, 0);
}

unint64_t sub_26BFFE160()
{
  v97 = v0;
  v1 = v0[12];
  v2 = v0[8];
  swift_beginAccess();
  if (v1 >> 60 == 15)
  {
    v4 = v0[9];
    v3 = v0[10];
    sub_26BE00608(v4, v3);
    sub_26C000288(v4, v3, &v96);
    sub_26BE136AC(v96, *(&v96 + 1));
    swift_endAccess();
    swift_beginAccess();
    sub_26C000288(v4, v3, &v96);
    sub_26BE00258(v4, v3);
    sub_26BE136AC(v96, *(&v96 + 1));
    result = swift_endAccess();
  }

  else
  {
    v7 = v0[11];
    v6 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    sub_26BE00608(v9, v8);
    sub_26BE00608(v9, v8);
    sub_26BE2E408(v7, v6);
    v10 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v96 = *(v2 + 16);
    sub_26BE57374(v7, v6, v9, v8, isUniquelyReferenced_nonNull_native);
    sub_26BE00258(v9, v8);
    *(v2 + 16) = v96;
    swift_endAccess();
    result = sub_26BE00258(v9, v8);
  }

  v94 = v0[8];
  v95 = v0;
  v88 = *(v0[13] + 16);
  v90 = v0[13];
  if (!v88)
  {
LABEL_20:
    v91 = v0[14];
    v89 = *(v91 + 16);
    if (!v89)
    {
LABEL_36:
      v69 = v0[15];
      v70 = *(v69 + 16);
      if (v70)
      {
        v71 = (v69 + 40);
        do
        {
          v72 = v0[9];
          v73 = v0[10];
          v74 = *(v71 - 1);
          v75 = *v71;
          swift_beginAccess();
          v76 = *(v94 + 24);
          sub_26BE00608(v72, v73);
          v77 = sub_26BEBB2E8(v72, v73, v74, v75);
          if (v78)
          {
            v79 = v77;
            v80 = *(v94 + 24);
            v81 = swift_isUniquelyReferenced_nonNull_native();
            v82 = *(v94 + 24);
            *&v96 = v82;
            *(v94 + 24) = 0x8000000000000000;
            if (!v81)
            {
              sub_26BE6E474();
              v82 = v96;
            }

            v84 = v0[9];
            v83 = v0[10];
            sub_26BE00258(*(*(v82 + 48) + 32 * v79), *(*(v82 + 48) + 32 * v79 + 8));
            sub_26BE00258(*(*(v82 + 56) + 16 * v79), *(*(v82 + 56) + 16 * v79 + 8));
            sub_26C000F68(v79, v82);
            sub_26BE00258(v84, v83);
            *(v94 + 24) = v82;
          }

          else
          {
            sub_26BE00258(v0[9], v0[10]);
          }

          v71 += 2;
          swift_endAccess();
          --v70;
        }

        while (v70);
      }

      v85 = v0[1];

      return v85();
    }

    v41 = 0;
    v42 = v0[14];
    v43 = (v91 + 56);
    while (1)
    {
      if (v41 >= *(v91 + 16))
      {
        goto LABEL_52;
      }

      v48 = v0[9];
      v47 = v0[10];
      v49 = *(v43 - 2);
      v93 = *(v43 - 3);
      v50 = *(v43 - 1);
      v51 = *v43;
      swift_beginAccess();
      sub_26BE00608(v50, v51);
      sub_26BE00608(v48, v47);
      sub_26BE00608(v50, v51);
      v52 = *(v94 + 24);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *&v96 = *(v94 + 24);
      v54 = v96;
      *(v94 + 24) = 0x8000000000000000;
      result = sub_26BEBB2E8(v48, v47, v93, v49);
      v56 = v54[2];
      v57 = (v55 & 1) == 0;
      v29 = __OFADD__(v56, v57);
      v58 = v56 + v57;
      if (v29)
      {
        goto LABEL_53;
      }

      v59 = v55;
      if (v54[3] >= v58)
      {
        if (v53)
        {
          v63 = v95[9];
          v62 = v95[10];
          if (v55)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v68 = result;
          sub_26BE6E474();
          result = v68;
          v54 = v96;
          v63 = v95[9];
          v62 = v95[10];
          if (v59)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v60 = v95[9];
        v87 = v95[10];
        sub_26BE6AB30(v58, v53);
        v54 = v96;
        result = sub_26BEBB2E8(v60, v87, v93, v49);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_47;
        }

        v63 = v95[9];
        v62 = v95[10];
        if (v59)
        {
LABEL_22:
          v44 = (v54[7] + 16 * result);
          v45 = *v44;
          v46 = v44[1];
          *v44 = v50;
          v44[1] = v51;
          sub_26BE00258(v45, v46);
          sub_26BE00258(v63, v62);
          goto LABEL_23;
        }
      }

      v54[(result >> 6) + 8] |= 1 << result;
      v64 = (v54[6] + 32 * result);
      *v64 = v63;
      v64[1] = v62;
      v64[2] = v93;
      v64[3] = v49;
      v65 = (v54[7] + 16 * result);
      *v65 = v50;
      v65[1] = v51;
      v66 = v54[2];
      v29 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v29)
      {
        goto LABEL_55;
      }

      v54[2] = v67;
LABEL_23:
      ++v41;
      v0 = v95;
      *(v94 + 24) = v54;
      swift_endAccess();
      result = sub_26BE00258(v50, v51);
      v43 += 4;
      if (v89 == v41)
      {
        goto LABEL_36;
      }
    }
  }

  v12 = 0;
  v13 = v0[13];
  v14 = (v90 + 56);
  while (v12 < *(v90 + 16))
  {
    v19 = v0[9];
    v18 = v0[10];
    v20 = *(v14 - 2);
    v92 = *(v14 - 3);
    v21 = *(v14 - 1);
    v22 = *v14;
    swift_beginAccess();
    sub_26BE00608(v21, v22);
    sub_26BE00608(v19, v18);
    sub_26BE00608(v21, v22);
    v23 = *(v94 + 24);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&v96 = *(v94 + 24);
    v25 = v96;
    *(v94 + 24) = 0x8000000000000000;
    result = sub_26BEBB2E8(v19, v18, v92, v20);
    v27 = v25[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_51;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if (v24)
      {
        v35 = v95[9];
        v34 = v95[10];
        if (v26)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v40 = result;
        sub_26BE6E474();
        result = v40;
        v25 = v96;
        v35 = v95[9];
        v34 = v95[10];
        if (v31)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v32 = v95[9];
      v86 = v95[10];
      sub_26BE6AB30(v30, v24);
      v25 = v96;
      result = sub_26BEBB2E8(v32, v86, v92, v20);
      if ((v31 & 1) != (v33 & 1))
      {
LABEL_47:

        return sub_26C00AF8C();
      }

      v35 = v95[9];
      v34 = v95[10];
      if (v31)
      {
LABEL_6:
        v15 = (v25[7] + 16 * result);
        v16 = *v15;
        v17 = v15[1];
        *v15 = v21;
        v15[1] = v22;
        sub_26BE00258(v16, v17);
        sub_26BE00258(v35, v34);
        goto LABEL_7;
      }
    }

    v25[(result >> 6) + 8] |= 1 << result;
    v36 = (v25[6] + 32 * result);
    *v36 = v35;
    v36[1] = v34;
    v36[2] = v92;
    v36[3] = v20;
    v37 = (v25[7] + 16 * result);
    *v37 = v21;
    v37[1] = v22;
    v38 = v25[2];
    v29 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v29)
    {
      goto LABEL_54;
    }

    v25[2] = v39;
LABEL_7:
    ++v12;
    v0 = v95;
    *(v94 + 24) = v25;
    swift_endAccess();
    result = sub_26BE00258(v21, v22);
    v14 += 4;
    if (v88 == v12)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_26BFFE850(uint64_t (*a1)(uint64_t))
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 16) = sub_26C00581C(MEMORY[0x277D84F90], sub_26BEBE840);
  *(v1 + 24) = a1(v3);
  return v1;
}

uint64_t sub_26BFFE8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74614470756F7267 && a2 == 0xE900000000000061;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74614468636F7065 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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

uint64_t sub_26BFFE998(uint64_t a1)
{
  v2 = sub_26C0022E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BFFE9D4(uint64_t a1)
{
  v2 = sub_26C0022E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s8SwiftMLS0B0O7StorageO23InMemoryGroupStateStoreCfd_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t _s8SwiftMLS0B0O7StorageO23InMemoryGroupStateStoreCfD_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_26BFFEA78(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A28, &qword_26C0290E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C0022E4();
  sub_26C00B10C();
  swift_beginAccess();
  v14 = *(v3 + 16);
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609E0, &qword_26C0290B8);
  sub_26C002188(&qword_2804609E8, sub_26BE3AFC4);
  sub_26C00AEBC();
  if (!v2)
  {
    swift_beginAccess();
    v13 = *(v3 + 24);
    v12[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A38, &qword_26C0290F0);
    sub_26C00238C(&qword_280460A40, sub_26C002338, sub_26BE3AFC4);
    sub_26C00AEBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MLS.Storage.InMemoryGroupStateStoreV2.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  MLS.Storage.InMemoryGroupStateStoreV2.init(from:)(a1);
  return v2;
}

uint64_t MLS.Storage.InMemoryGroupStateStoreV2.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A50, &qword_26C0290F8);
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = MEMORY[0x277D84F90];
  *(v3 + 16) = sub_26C00581C(MEMORY[0x277D84F90], sub_26BEBE840);
  v10 = (v3 + 16);
  *(v3 + 24) = sub_26C001BDC(v9);
  v11 = (v3 + 24);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C0022E4();
  sub_26C00B0FC();
  if (v2)
  {
  }

  else
  {
    v13 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609E0, &qword_26C0290B8);
    v23 = 0;
    sub_26C002188(&qword_280460A10, sub_26BE3B018);
    v14 = v21;
    sub_26C00AE3C();
    v15 = v22;
    swift_beginAccess();
    v16 = *v10;
    *v10 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A38, &qword_26C0290F0);
    LOBYTE(v22) = 1;
    sub_26C00238C(&qword_280460A58, sub_26C00241C, sub_26BE3B018);
    sub_26C00AE3C();
    (*(v13 + 8))(v8, v14);
    v18 = v24;
    swift_beginAccess();
    v19 = *v11;
    *v11 = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26BFFF024(_OWORD *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26C006454;

  return sub_26BFFDEF8(a1);
}

uint64_t sub_26BFFF0BC(_OWORD *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26C006454;

  return sub_26BFFE004(a1);
}

uint64_t sub_26BFFF154(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26BE2E3F4;

  return sub_26BFFE124(a1);
}

uint64_t sub_26BFFF254(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_26BFFF274, 0, 0);
}

uint64_t sub_26BFFF274()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v3 = v0[5];

    v4 = sub_26BEBB390(v3);
    if (v5)
    {
      v6 = (*(v2 + 56) + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
      sub_26BE00608(*v6, v8);
    }

    else
    {
      v7 = 0;
      v8 = 0xF000000000000000;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  v9 = v0[1];

  return v9(v7, v8);
}

uint64_t sub_26BFFF354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_26BFFF378, 0, 0);
}

uint64_t sub_26BFFF378()
{
  v12 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  swift_beginAccess();
  sub_26BE00608(v3, v1);
  v5 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v11 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_26BE569E0(v3, v1, v4, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v11;
  swift_endAccess();
  v7 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (v7)
    {
      if (*(v0 + 48) != *(v0 + 48) >> 32)
      {
        goto LABEL_10;
      }
    }

    else if (*(v0 + 62))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7 != 2 || *(*(v0 + 48) + 16) == *(*(v0 + 48) + 24))
  {
LABEL_9:
    v8 = *(v0 + 40);
    swift_beginAccess();
    sub_26C0000EC(v8, &v11);
    sub_26BE136AC(v11, *(&v11 + 1));
    swift_endAccess();
  }

LABEL_10:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26BFFF510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C00AF2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BFFF598(uint64_t a1)
{
  v2 = sub_26C002470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BFFF5D4(uint64_t a1)
{
  v2 = sub_26C002470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.Storage.InMemoryClientStateStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MLS.Storage.InMemoryClientStateStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_26BFFF668(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A68, &qword_26C029110);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C002470();
  sub_26C00B10C();
  swift_beginAccess();
  v11 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A78, &qword_26C029118);
  sub_26C0024C4();
  sub_26C00AEBC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t MLS.Storage.InMemoryClientStateStore.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  MLS.Storage.InMemoryClientStateStore.init(from:)(a1);
  return v2;
}

uint64_t MLS.Storage.InMemoryClientStateStore.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A90, &qword_26C029120);
  v15[0] = *(v5 - 8);
  v6 = *(v15[0] + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  *(v1 + 16) = sub_26C001D40(MEMORY[0x277D84F90]);
  v9 = (v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C002470();
  sub_26C00B0FC();
  if (v2)
  {
  }

  else
  {
    v11 = v15[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A78, &qword_26C029118);
    sub_26C00256C();
    sub_26C00AE3C();
    (*(v11 + 8))(v8, v5);
    v12 = v15[5];
    swift_beginAccess();
    v13 = *v9;
    *v9 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26BFFFA18(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26C006454;

  return sub_26BFFF254(a1);
}

uint64_t sub_26BFFFAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26BE2E3F4;

  return sub_26BFFF354(a1, a2, a3);
}

uint64_t sub_26BFFFBA4@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_26BFFFC38(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B38, &qword_26C02A160);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C004428();
  sub_26C00B10C();
  v16 = a2;
  v17 = a3;
  v18 = 0;
  sub_26BE00608(a2, a3);
  sub_26BE3AFC4();
  sub_26C00AEBC();
  sub_26BE00258(v16, v17);
  if (!v4)
  {
    LOBYTE(v16) = 1;
    sub_26C00AECC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26BFFFDD4()
{
  if (*v0)
  {
    result = 0x68636F7065;
  }

  else
  {
    result = 0x444970756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_26BFFFE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444970756F7267 && a2 == 0xE700000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x68636F7065 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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

uint64_t sub_26BFFFEE4(uint64_t a1)
{
  v2 = sub_26C004428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BFFFF20(uint64_t a1)
{
  v2 = sub_26C004428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BFFFF5C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v3);
  return sub_26C00B0CC();
}

uint64_t sub_26BFFFFC0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26C00911C();
  return MEMORY[0x26D699B60](v3);
}

uint64_t sub_26BFFFFF8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v3);
  return sub_26C00B0CC();
}

uint64_t sub_26C000058(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  return sub_26BE02DEC(*a1, a1[1], *a2, a2[1]) & (v2 == v3);
}

uint64_t sub_26C00009C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26C00613C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

double sub_26C0000EC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26BEBB390(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26BE6D5C0();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_26C00928C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    *a2 = *(*(v11 + 56) + 16 * v8);
    sub_26C0003D0(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_26C00DA60;
  }

  return result;
}

double sub_26C0001C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26BEBE840(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26BE6D84C();
      v12 = v17;
    }

    sub_26BE00258(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    v13 = (*(v12 + 56) + 80 * v9);
    v14 = v13[3];
    a3[2] = v13[2];
    a3[3] = v14;
    a3[4] = v13[4];
    v15 = v13[1];
    *a3 = *v13;
    a3[1] = v15;
    sub_26C0006D8(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_26C000288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26BEBE840(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26BE6E2F0();
      v12 = v14;
    }

    sub_26BE00258(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    *a3 = *(*(v12 + 56) + 16 * v9);
    sub_26C000DB0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_26C00DA60;
  }

  return result;
}

uint64_t sub_26C000338(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_26BEBB618(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26BE6F278();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_26C0018C8(v7, v10);
  *v3 = v10;
  return v12;
}

unint64_t sub_26C0003D0(int64_t a1, uint64_t a2)
{
  v43 = sub_26C00928C();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_26C00AB5C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_26BEBE70C(&qword_28045E828);
      v26 = sub_26C00A3BC();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

char *sub_26C0006D8(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26C00B05C();
      sub_26BE00608(v11, v12);
      sub_26C00911C();
      v13 = sub_26C00B0CC();
      result = sub_26BE00258(v11, v12);
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
        result = (v18 + 80 * v3);
        v19 = (v18 + 80 * v6);
        if (v3 != v6 || result >= v19 + 80)
        {
          result = memmove(result, v19, 0x50uLL);
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

  return result;
}

uint64_t sub_26C000898(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 4 * v6);
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26C000A2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 4 * v6);
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v13 = result & v7;
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
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v3;
        v19 = (v17 + 40 * v6);
        if (v3 != v6 || v18 >= v19 + 40)
        {
          v9 = *v19;
          v10 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v9;
          *(v18 + 16) = v10;
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

  return result;
}

unint64_t sub_26C000BCC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = *(v10 + 1);
      sub_26C00B05C();
      sub_26C00B09C();
      MEMORY[0x26D699B60](v12);
      result = sub_26C00B0CC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v3);
      v16 = (v14 + 16 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_26C00921C() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26C000DB0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26C00B05C();
      sub_26BE00608(v11, v12);
      sub_26C00911C();
      v13 = sub_26C00B0CC();
      result = sub_26BE00258(v11, v12);
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

uint64_t sub_26C000F68(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    v31 = v4;
    do
    {
      v9 = *(v2 + 40);
      v10 = v2;
      v11 = (*(v2 + 48) + 32 * v6);
      v12 = v7;
      v13 = *v11;
      v14 = v11[1];
      v15 = v11[2];
      v16 = v11[3];
      v17 = v8;
      sub_26C00B05C();
      sub_26BE00608(v13, v14);
      sub_26C00911C();
      MEMORY[0x26D699B60](v15);
      MEMORY[0x26D699B60](v16);
      v18 = sub_26C00B0CC();
      v19 = v13;
      v7 = v12;
      result = sub_26BE00258(v19, v14);
      v8 = v17;
      v20 = v18 & v12;
      if (v3 >= v17)
      {
        if (v20 < v17)
        {
          v4 = v31;
          v2 = v10;
        }

        else
        {
          v4 = v31;
          v2 = v10;
          if (v3 >= v20)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v31;
        v2 = v10;
        if (v20 >= v8 || v3 >= v20)
        {
LABEL_11:
          v21 = *(v2 + 48);
          v22 = (v21 + 32 * v3);
          v23 = (v21 + 32 * v6);
          if (v3 != v6 || v22 >= v23 + 2)
          {
            v24 = v23[1];
            *v22 = *v23;
            v22[1] = v24;
          }

          v25 = *(v2 + 56);
          v26 = (v25 + 16 * v3);
          v27 = (v25 + 16 * v6);
          if (v3 != v6 || v26 >= v27 + 1)
          {
            *v26 = *v27;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v12;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_26C00117C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 24 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      sub_26C00B05C();
      sub_26BE00608(v11, v12);
      sub_26C00911C();
      MEMORY[0x26D699B60](v13);
      v14 = sub_26C00B0CC();
      result = sub_26BE00258(v11, v12);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C001358(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 4 * v6);
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 4 * v3);
      v14 = (v12 + 4 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_26C009C8C() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

unint64_t sub_26C001528(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 8 * v6);
      v11 = *v10;
      v12 = *(v10 + 1);
      sub_26C00B05C();
      sub_26C00B07C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(_s11HashRatchetVMa(0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C001714(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x26D699B00](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for MLS.KeyAndNonce(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

uint64_t sub_26C0018C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26C00B05C();

      sub_26C00A58C();
      v13 = sub_26C00B0CC();

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
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
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

unint64_t sub_26C001A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E840, &unk_26C0124E0);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;
      sub_26BE00608(v5, v6);
      sub_26BE00608(v7, v9);
      result = sub_26BEBB250(v5, v6, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v8;
      v13 = (v3[7] + 16 * result);
      *v13 = v7;
      v13[1] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_26C001BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E830, &qword_26C0124D0);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 5);
      v16 = *(i - 5);
      v17 = *(i - 3);
      v8 = *(i - 4);
      sub_26BE00608(v7, v8);
      sub_26BE00608(v5, v6);
      result = sub_26BEBB2E8(v7, v8, v17, *(&v17 + 1));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 32 * result);
      *v11 = v16;
      v11[1] = v17;
      v12 = (v3[7] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
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

unint64_t sub_26C001D40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460BA0, &qword_26C02A218);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E820, &qword_26C02A220);
    v8 = sub_26C00ADAC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26BE2E1F0(v10, v6, &qword_280460BA0, &qword_26C02A218);
      result = sub_26BEBB390(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26C00928C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

uint64_t sub_26C001F28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA20, &qword_26C029070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C001F90()
{
  result = qword_280460998;
  if (!qword_280460998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460998);
  }

  return result;
}

unint64_t sub_26C001FE4()
{
  result = qword_2804609B0;
  if (!qword_2804609B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804609B0);
  }

  return result;
}

unint64_t sub_26C002038()
{
  result = qword_2804609B8;
  if (!qword_2804609B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804609B8);
  }

  return result;
}

unint64_t sub_26C00208C()
{
  result = qword_2804609C8;
  if (!qword_2804609C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804609C8);
  }

  return result;
}

unint64_t sub_26C0020E0()
{
  result = qword_2804609D8;
  if (!qword_2804609D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804609D8);
  }

  return result;
}

unint64_t sub_26C002134()
{
  result = qword_280460A00;
  if (!qword_280460A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A00);
  }

  return result;
}

uint64_t sub_26C002188(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804609E0, &qword_26C0290B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26C002200(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804609F0, &qword_26C0290C0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26C002290()
{
  result = qword_280460A20;
  if (!qword_280460A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A20);
  }

  return result;
}

unint64_t sub_26C0022E4()
{
  result = qword_280460A30;
  if (!qword_280460A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A30);
  }

  return result;
}

unint64_t sub_26C002338()
{
  result = qword_280460A48;
  if (!qword_280460A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A48);
  }

  return result;
}

uint64_t sub_26C00238C(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460A38, &qword_26C0290F0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26C00241C()
{
  result = qword_280460A60;
  if (!qword_280460A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A60);
  }

  return result;
}

unint64_t sub_26C002470()
{
  result = qword_280460A70;
  if (!qword_280460A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A70);
  }

  return result;
}

unint64_t sub_26C0024C4()
{
  result = qword_280460A80;
  if (!qword_280460A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460A78, &qword_26C029118);
    sub_26BEBE70C(&qword_280460A88);
    sub_26BE3AFC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A80);
  }

  return result;
}

unint64_t sub_26C00256C()
{
  result = qword_280460A98;
  if (!qword_280460A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460A78, &qword_26C029118);
    sub_26BEBE70C(&qword_280460AA0);
    sub_26BE3B018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A98);
  }

  return result;
}

unint64_t sub_26C002618()
{
  result = qword_280460AA8;
  if (!qword_280460AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AA8);
  }

  return result;
}

unint64_t sub_26C002670()
{
  result = qword_280460AB0;
  if (!qword_280460AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AB0);
  }

  return result;
}

uint64_t sub_26C0026D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C00271C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C00279C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C0027E4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t dispatch thunk of MLS.Storage.GroupStateStorage.readGroupState(groupID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_26BE3B910;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Storage.GroupStateStorage.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_26BE45BF4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Storage.GroupStateStorage.write(groupID:groupStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_26BE28F58;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_26C002BFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C002C50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26C002CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C002D18(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t dispatch thunk of MLS.Storage.GroupStateStorageV2.readGroupState(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26BE45BF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Storage.GroupStateStorageV2.readEpochData(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26BE45BF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Storage.GroupStateStorageV2.write(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26BE2E3F4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Storage.ClientStateStorage.read(clientUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26BE45BF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Storage.ClientStateStorage.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_26BE2E3F4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryGroupStateStore.readGroupState(groupID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE45BF4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryGroupStateStore.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 152);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26BE45BF4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryGroupStateStore.write(groupID:groupStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 160);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26BE2E3F4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryGroupStateStoreV2.readGroupState(_:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE45BF4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryGroupStateStoreV2.readEpochData(_:)(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE45BF4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryGroupStateStoreV2.write(_:)(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryClientStateStore.read(clientUUID:)(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE45BF4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryClientStateStore.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26BE2E3F4;

  return v12(a1, a2, a3);
}

unint64_t sub_26C003EAC()
{
  result = qword_280460AB8;
  if (!qword_280460AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AB8);
  }

  return result;
}

unint64_t sub_26C003F04()
{
  result = qword_280460AC0;
  if (!qword_280460AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AC0);
  }

  return result;
}

unint64_t sub_26C003F5C()
{
  result = qword_280460AC8;
  if (!qword_280460AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AC8);
  }

  return result;
}

unint64_t sub_26C003FB4()
{
  result = qword_280460AD0;
  if (!qword_280460AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AD0);
  }

  return result;
}

unint64_t sub_26C00400C()
{
  result = qword_280460AD8;
  if (!qword_280460AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AD8);
  }

  return result;
}

unint64_t sub_26C004064()
{
  result = qword_280460AE0;
  if (!qword_280460AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AE0);
  }

  return result;
}

unint64_t sub_26C0040BC()
{
  result = qword_280460AE8;
  if (!qword_280460AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AE8);
  }

  return result;
}

unint64_t sub_26C004114()
{
  result = qword_280460AF0;
  if (!qword_280460AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AF0);
  }

  return result;
}

unint64_t sub_26C00416C()
{
  result = qword_280460AF8;
  if (!qword_280460AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AF8);
  }

  return result;
}

unint64_t sub_26C0041C4()
{
  result = qword_280460B00;
  if (!qword_280460B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B00);
  }

  return result;
}

unint64_t sub_26C00421C()
{
  result = qword_280460B08;
  if (!qword_280460B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B08);
  }

  return result;
}

unint64_t sub_26C004274()
{
  result = qword_280460B10;
  if (!qword_280460B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B10);
  }

  return result;
}

unint64_t sub_26C0042CC()
{
  result = qword_280460B18;
  if (!qword_280460B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B18);
  }

  return result;
}

unint64_t sub_26C004324()
{
  result = qword_280460B20;
  if (!qword_280460B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B20);
  }

  return result;
}

unint64_t sub_26C00437C()
{
  result = qword_280460B28;
  if (!qword_280460B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B28);
  }

  return result;
}

unint64_t sub_26C0043D4()
{
  result = qword_280460B30;
  if (!qword_280460B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B30);
  }

  return result;
}

unint64_t sub_26C004428()
{
  result = qword_280460B40;
  if (!qword_280460B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B40);
  }

  return result;
}

unint64_t sub_26C00447C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E858, &qword_26C0124F8);
  v3 = sub_26C00ADAC();

  v4 = *(a1 + 208);
  v48 = *(a1 + 192);
  v49 = v4;
  v50 = *(a1 + 224);
  v5 = *(a1 + 144);
  v44 = *(a1 + 128);
  v45 = v5;
  v6 = *(a1 + 176);
  v46 = *(a1 + 160);
  v47 = v6;
  v7 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v7;
  v8 = *(a1 + 112);
  v42 = *(a1 + 96);
  v43 = v8;
  v9 = *(a1 + 48);
  v38 = *(a1 + 32);
  v39 = v9;
  v11 = *(&v38 + 1);
  v10 = v38;
  sub_26BE2E1F0(&v38, v37, &qword_280460B98, &qword_26C02A210);
  result = sub_26BEBE840(v10, v11);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = (a1 + 232);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v15 = (v3[6] + 16 * result);
    *v15 = v10;
    v15[1] = v11;
    v16 = v3[7] + 184 * result;
    v17 = v39;
    v18 = v40;
    v19 = v42;
    *(v16 + 32) = v41;
    *(v16 + 48) = v19;
    *v16 = v17;
    *(v16 + 16) = v18;
    v20 = v43;
    v21 = v44;
    v22 = v46;
    *(v16 + 96) = v45;
    *(v16 + 112) = v22;
    *(v16 + 64) = v20;
    *(v16 + 80) = v21;
    v23 = v47;
    v24 = v48;
    v25 = v49;
    *(v16 + 176) = v50;
    *(v16 + 144) = v24;
    *(v16 + 160) = v25;
    *(v16 + 128) = v23;
    v26 = v3[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      break;
    }

    v3[2] = v28;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v29 = (v14 + 200);
    v30 = v14[11];
    v48 = v14[10];
    v49 = v30;
    v50 = *(v14 + 24);
    v31 = v14[7];
    v44 = v14[6];
    v45 = v31;
    v32 = v14[9];
    v46 = v14[8];
    v47 = v32;
    v33 = v14[3];
    v40 = v14[2];
    v41 = v33;
    v34 = v14[5];
    v42 = v14[4];
    v43 = v34;
    v35 = v14[1];
    v38 = *v14;
    v39 = v35;
    v11 = *(&v38 + 1);
    v10 = v38;
    sub_26BE2E1F0(&v38, v37, &qword_280460B98, &qword_26C02A210);
    result = sub_26BEBE840(v10, v11);
    v14 = v29;
    if (v36)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C004684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E850, &qword_26C0124F0);
    v3 = sub_26C00ADAC();
    v4 = a1 + 32;

    while (1)
    {
      sub_26BE2E1F0(v4, v14, &qword_280460B90, &unk_26C02A200);
      result = sub_26BEBE840(*&v14[0], *(&v14[0] + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v14[0];
      v7 = (v3[7] + 80 * result);
      *v7 = v14[1];
      v8 = v14[2];
      v9 = v14[3];
      v10 = v14[5];
      v7[3] = v14[4];
      v7[4] = v10;
      v7[1] = v8;
      v7[2] = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 96;
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

unint64_t sub_26C0047C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7E8, &qword_26C012490);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 2);
      v8 = *i;

      result = sub_26BEBB618(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
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

unint64_t sub_26C0048D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B58, &qword_26C02A188);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7F8, &unk_26C0124A0);
    v8 = sub_26C00ADAC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_26BE2E1F0(v10, v6, &qword_280460B58, &qword_26C02A188);
      result = sub_26BEBB598(*v6, *(v6 + 1));
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6] + 16 * result;
      v16 = *(v6 + 1);
      *v15 = *v6;
      *(v15 + 8) = v16;
      v17 = v8[7];
      v18 = sub_26C00921C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

unint64_t sub_26C004AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8A0, &unk_26C012540);
  v3 = sub_26C00ADAC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_26BEBB414(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_26BE00608(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 4);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_26BEBB414(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C004BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E898, &qword_26C012538);
    v3 = sub_26C00ADAC();
    for (i = a1 + 32; ; i += 48)
    {
      sub_26BE2E1F0(i, &v10, &qword_280460B80, &unk_26C02A1E0);
      result = sub_26BEBB414(v10);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v10;
      result = sub_26BE03890(&v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_26C004CEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA90, &qword_26C01D990);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E890, &qword_26C012530);
    v8 = sub_26C00ADAC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_26BE2E1F0(v10, v6, &qword_28045FA90, &qword_26C01D990);
      result = sub_26BEBB414(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 4 * result) = *v6;
      v15 = v8[7];
      v16 = sub_26C009C8C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6 + v9, v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_26C004EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B68, &qword_26C02A1A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E888, &unk_26C02A1B0);
    v8 = sub_26C00ADAC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_26BE2E1F0(v10, v6, &qword_280460B68, &qword_26C02A1A8);
      result = sub_26BEBB480(*v6 | (*(v6 + 1) << 32));
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6] + 8 * result;
      v16 = *(v6 + 1);
      *v15 = *v6;
      *(v15 + 4) = v16;
      v17 = v8[7];
      v18 = _s11HashRatchetVMa(0);
      result = sub_26BF97370(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, _s11HashRatchetVMa);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

unint64_t sub_26C0050B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B60, &qword_26C02A198);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E848, &qword_26C02A1A0);
    v8 = sub_26C00ADAC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_26BE2E1F0(v10, v6, &qword_280460B60, &qword_26C02A198);
      v12 = *v6;
      result = sub_26BEBB208(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 4 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for MLS.KeyAndNonce(0);
      result = sub_26BF97370(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for MLS.KeyAndNonce);
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

unint64_t sub_26C00528C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B88, &unk_26C02A1F0);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;
      sub_26BE00608(v6, v8);
      sub_26BE00608(v7, v9);
      result = sub_26BEBB504(v5, v6, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v8;
      v13 = (v3[7] + 16 * result);
      *v13 = v7;
      v13[1] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_26C0053B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D0, &qword_26C012578);
  v3 = sub_26C00ADAC();

  v4 = *(a1 + 208);
  v48 = *(a1 + 192);
  v49 = v4;
  v50 = *(a1 + 224);
  v51 = *(a1 + 240);
  v5 = *(a1 + 144);
  v44 = *(a1 + 128);
  v45 = v5;
  v6 = *(a1 + 176);
  v46 = *(a1 + 160);
  v47 = v6;
  v7 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v7;
  v8 = *(a1 + 112);
  v42 = *(a1 + 96);
  v43 = v8;
  v9 = *(a1 + 48);
  v38 = *(a1 + 32);
  v39 = v9;
  v11 = *(&v38 + 1);
  v10 = v38;
  sub_26BE2E1F0(&v38, v37, &qword_280460B78, &unk_26C02A1D0);
  result = sub_26BEBE840(v10, v11);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = (a1 + 248);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v15 = (v3[6] + 16 * result);
    *v15 = v10;
    v15[1] = v11;
    v16 = v3[7] + 200 * result;
    *v16 = v39;
    v17 = v40;
    v18 = v41;
    v19 = v43;
    *(v16 + 48) = v42;
    *(v16 + 64) = v19;
    *(v16 + 16) = v17;
    *(v16 + 32) = v18;
    v20 = v44;
    v21 = v45;
    v22 = v47;
    *(v16 + 112) = v46;
    *(v16 + 128) = v22;
    *(v16 + 80) = v20;
    *(v16 + 96) = v21;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    *(v16 + 192) = v51;
    *(v16 + 160) = v24;
    *(v16 + 176) = v25;
    *(v16 + 144) = v23;
    v26 = v3[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      break;
    }

    v3[2] = v28;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v29 = (v14 + 216);
    v30 = v14[11];
    v48 = v14[10];
    v49 = v30;
    v50 = v14[12];
    v51 = *(v14 + 208);
    v31 = v14[7];
    v44 = v14[6];
    v45 = v31;
    v32 = v14[9];
    v46 = v14[8];
    v47 = v32;
    v33 = v14[3];
    v40 = v14[2];
    v41 = v33;
    v34 = v14[5];
    v42 = v14[4];
    v43 = v34;
    v35 = v14[1];
    v38 = *v14;
    v39 = v35;
    v11 = *(&v38 + 1);
    v10 = v38;
    sub_26BE2E1F0(&v38, v37, &qword_280460B78, &unk_26C02A1D0);
    result = sub_26BEBE840(v10, v11);
    v14 = v29;
    if (v36)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C0055D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E818, &unk_26C0124C0);
    v3 = sub_26C00ADAC();
    v4 = a1 + 32;

    while (1)
    {
      sub_26BE2E1F0(v4, &v13, &qword_28045E940, &unk_26C014270);
      v5 = v13;
      v6 = v14;
      result = sub_26BEBB618(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26BE5B0F0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_26C005704(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7E0, &qword_26C012488);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_26BE04890(v7, v8);
      result = sub_26BEBB618(v5, v6);
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

unint64_t sub_26C00581C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E838, &qword_26C0124D8);
    v5 = sub_26C00ADAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      sub_26BE00608(v7, v8);
      sub_26BE00608(v9, v10);
      result = a2(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v2)
      {

        return v5;
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

unint64_t sub_26C005940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B70, &unk_26C02A1C0);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_26BE00608(v7, v8);
      result = sub_26BEBB618(v5, v6);
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

unint64_t sub_26C005A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E878, &qword_26C012518);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26BEBB618(v5, v6);
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

unint64_t sub_26C005B6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B50, &unk_26C02A170);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26BEBB618(v5, v6);
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

unint64_t sub_26C005CC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_26C00ADAC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_26BEBB618(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_26C005DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E868, &qword_26C02A180);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_26BE00608(v7, v8);
      result = sub_26BEBB618(v5, v6);
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

unint64_t sub_26C005EE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_26C00ADAC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_26BEBB618(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_26C005FE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E880, &unk_26C012520);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = i[5];

      sub_26BE00608(v7, v8);
      sub_26BE00608(v9, v10);
      sub_26BE00608(v11, v12);
      result = sub_26BEBB618(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 48 * result);
      *v16 = v7;
      v16[1] = v8;
      v16[2] = v9;
      v16[3] = v10;
      v16[4] = v11;
      v16[5] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

uint64_t sub_26C00613C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B48, &qword_26C02A168);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_26C004428();
  sub_26C00B0FC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11[15] = 0;
    sub_26BE3B018();
    sub_26C00AE3C();
    v8 = v12;
    v10 = v13;
    LOBYTE(v12) = 1;
    sub_26C00AE4C();
    (*(v4 + 8))(v7, v3);
    sub_26BE00608(v8, v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_26BE00258(v8, v10);
  }

  return v8;
}

unint64_t sub_26C006340()
{
  result = qword_280460BA8;
  if (!qword_280460BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BA8);
  }

  return result;
}

unint64_t sub_26C006398()
{
  result = qword_280460BB0;
  if (!qword_280460BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BB0);
  }

  return result;
}

unint64_t sub_26C0063F0()
{
  result = qword_280460BB8;
  if (!qword_280460BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BB8);
  }

  return result;
}

uint64_t static MLS.Identity.DefaultIdentityProvider()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MLS.Identity.PermissiveIdentityProvider();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for MLS.Identity.PermissiveIdentityProvider;
  *a1 = result;
  return result;
}

uint64_t MLS.Identity.Credential.description.getter()
{
  if ((v0[1] & 0x2000000000000000) == 0)
  {
    return 0x63697361622ELL;
  }

  v5 = *v0;
  v6 = v0[1];
  MLS.Identity.Credential.telURI.getter();
  if (!v2)
  {
    goto LABEL_7;
  }

  if (!v2[2])
  {

LABEL_7:
    v3 = 0xE300000000000000;
    v4 = 7104878;
    goto LABEL_8;
  }

  v4 = v2[4];
  v3 = v2[5];

LABEL_8:
  MEMORY[0x26D699090](v4, v3);

  MEMORY[0x26D699090](93, 0xE100000000000000);
  return 0x3A4952556C65745BLL;
}

void sub_26C006590(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x2000000000000000) == 0)
  {
LABEL_10:
    *a2 = v2;
    a2[1] = v3;
    return;
  }

  v4 = *(v2 + 16);
  if (!v4)
  {
    v12 = a2;
    sub_26BE0489C(*a1, v3);
    a2 = v12;
    v2 = MEMORY[0x277D84F90];
LABEL_9:
    v3 = 0x2000000000000000;
    goto LABEL_10;
  }

  v13 = a2;
  v14 = MEMORY[0x277D84F90];
  sub_26C00ACBC();
  v5 = 0;
  v6 = (v2 + 40);
  while (v5 < *(v2 + 16))
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    sub_26BE00608(v7, *v6);
    v9 = sub_26C0090DC();
    v10 = SecCertificateCreateWithData(0, v9);

    if (!v10)
    {
      goto LABEL_12;
    }

    ++v5;
    sub_26BE00258(v7, v8);
    sub_26C00AC8C();
    v11 = *(v14 + 16);
    sub_26C00ACCC();
    sub_26C00ACDC();
    sub_26C00AC9C();
    v6 += 2;
    if (v4 == v5)
    {
      sub_26BE0489C(v2, v3);
      v2 = v14;
      a2 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

char *MLS.Identity.Credential.serializedRepresentation.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if ((v1 & 0x2000000000000000) == 0)
  {
    sub_26BE00608(*v0, *(v0 + 8));
LABEL_20:
    v23 = MLS.Credential.rawValue.getter();
    sub_26BE0489C(v2, v1);
    return v23;
  }

  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v24 = *v0;
    }

    v3 = sub_26C00AB8C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    v2 = MEMORY[0x277D84F90];
LABEL_19:
    v1 = 0x2000000000000000;
    goto LABEL_20;
  }

  v25 = MEMORY[0x277D84F90];
  result = sub_26BECB894(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x26D6996F0](v5, v2);
        v7 = SecCertificateCopyData(v6);
        v8 = sub_26C00910C();
        v10 = v9;

        swift_unknownObjectRelease();
        v12 = *(v25 + 16);
        v11 = *(v25 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_26BECB894((v11 > 1), v12 + 1, 1);
        }

        ++v5;
        *(v25 + 16) = v12 + 1;
        v13 = v25 + 16 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
      }

      while (v3 != v5);
    }

    else
    {
      v14 = (v2 + 32);
      do
      {
        v15 = *v14;
        v16 = SecCertificateCopyData(v15);
        v17 = sub_26C00910C();
        v19 = v18;

        v21 = *(v25 + 16);
        v20 = *(v25 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_26BECB894((v20 > 1), v21 + 1, 1);
        }

        *(v25 + 16) = v21 + 1;
        v22 = v25 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        ++v14;
        --v3;
      }

      while (v3);
    }

    v2 = v25;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t MLS.Identity.Credential.init(serializedCredential:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_26BE00608(a1, a2);
  MLS.Credential.init(rawValue:)(a1, a2, &v9);
  if (v3)
  {
    return sub_26BE00258(a1, a2);
  }

  v8 = v9;
  sub_26C006590(&v8, &v9);
  result = sub_26BE00258(a1, a2);
  *a3 = v9;
  return result;
}

void sub_26C006990()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    sub_26BE00608(v1, v2);
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D6996F0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = SecCertificateCopyKey(v3);
  if (v5)
  {
    v6 = v5;
    v7 = SecKeyCopyExternalRepresentation(v5, 0);
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_26C0090FC();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t MLS.Identity.SigningIdentity.description.getter()
{
  v1 = v0;
  sub_26C00AC1C();

  strcpy(v20, "[credential: ");
  HIWORD(v20[1]) = -4864;
  v19 = *v0;
  v2 = MLS.Identity.Credential.description.getter();
  MEMORY[0x26D699090](v2);

  MEMORY[0x26D699090](0x79656B627570202CLL, 0xEA0000000000203ALL);
  v4 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, *(v1 + 5));
  v5 = (*(*(v3 + 8) + 16))(v4);
  v7 = v6;
  sub_26BF87240(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  sub_26C00A3EC();
  sub_26BE00258(v5, v7);

  v8 = sub_26BE411D0(16);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x26D698FE0](v8, v10, v12, v14);
  v17 = v16;

  MEMORY[0x26D699090](v15, v17);

  MEMORY[0x26D699090](93, 0xE100000000000000);
  return v20[0];
}

uint64_t static MLS.Identity.findPriorAppearance(groupInfo:credential:ratchetTree:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _DWORD *a4@<X8>)
{
  v49 = a4;
  v8 = type metadata accessor for MLS.GroupInfo();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v12 = a2[1];
  v14 = *a3;
  if (qword_28045E1D0 != -1)
  {
    swift_once();
  }

  v15 = sub_26C009A5C();
  __swift_project_value_buffer(v15, qword_280479320);
  sub_26C008A70(a1, v11, type metadata accessor for MLS.GroupInfo);
  sub_26BE04890(v13, v12);
  v16 = sub_26C009A3C();
  v17 = sub_26C00AA1C();
  sub_26BE0489C(v13, v12);
  v18 = os_log_type_enabled(v16, v17);
  v50 = v12;
  v51 = v13;
  if (v18)
  {
    v19 = v12;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = a1;
    v22 = v21;
    v56 = v21;
    *v20 = 136315394;
    v53 = v13;
    *&v54 = v19;
    v23 = MLS.Identity.Credential.description.getter();
    v25 = sub_26BE29740(v23, v24, &v56);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = MLS.GroupInfo.description.getter();
    v28 = v27;
    sub_26C008AD8(v11, type metadata accessor for MLS.GroupInfo);
    v29 = sub_26BE29740(v26, v28, &v56);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_26BDFE000, v16, v17, "Finding prior appearance for credential %s in group %s", v20, 0x16u);
    swift_arrayDestroy();
    v30 = v22;
    a1 = v48;
    MEMORY[0x26D69A4E0](v30, -1, -1);
    MEMORY[0x26D69A4E0](v20, -1, -1);

    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {

    sub_26C008AD8(v11, type metadata accessor for MLS.GroupInfo);
    if (v14)
    {
LABEL_5:

LABEL_6:
      v52 = *a1;
      v56 = v14;
      result = MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(&v52, &v56, &v53);
      if (!v4)
      {
        v32 = v53;
        v33 = v54;
        v34 = DWORD2(v54);
        v35 = v55;
        v36 = swift_allocObject();
        *(v36 + 16) = 0;
        *(v36 + 20) = 1;
        LOWORD(v53) = v32;
        *&v54 = v33;
        DWORD2(v54) = v34;
        v55 = v35;
        v38 = v50;
        v37 = v51;
        sub_26BE04890(v51, v50);

        sub_26BE5AB10(&v53, v37, v38, v36);

        swift_beginAccess();
        v44 = *(v36 + 20);
        v45 = v49;
        *v49 = *(v36 + 16);
        *(v45 + 4) = v44;
      }

      return result;
    }
  }

  v39 = *(a1 + 72);
  v40 = (v39 + 32);
  v41 = *(v39 + 16) + 1;
  while (--v41)
  {
    v42 = v40 + 12;
    v43 = *v40;
    v40 += 12;
    if (v43 == 2)
    {
      LOWORD(v53) = 2;
      v54 = *(v42 - 1);
      sub_26BEDFEB0(&v53, &v56);
      if (v4)
      {
      }

      v14 = v56;
      if (v56)
      {

        goto LABEL_6;
      }

      break;
    }
  }

  sub_26BE01654();
  swift_allocError();
  *v46 = 14;
  *(v46 + 8) = 0u;
  *(v46 + 24) = 0u;
  *(v46 + 40) = 0u;
  *(v46 + 56) = 0u;
  *(v46 + 72) = 0u;
  *(v46 + 88) = 0u;
  *(v46 + 104) = 0;
  *(v46 + 112) = 23;
  return swift_willThrow();
}

uint64_t MLS.Identity.CredentialType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t MLS.Identity.CredentialType.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void MLS.Identity.Credential.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if ((v1[1] & 0x2000000000000000) != 0)
  {
    MEMORY[0x26D699B20](1);

    sub_26C0077E8(a1, v3);
  }

  else
  {
    MEMORY[0x26D699B20](0);

    sub_26C00911C();
  }
}

uint64_t MLS.Identity.Credential.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00B05C();
  if ((v2 & 0x2000000000000000) != 0)
  {
    MEMORY[0x26D699B20](1);
    sub_26C0077E8(v4, v1);
  }

  else
  {
    MEMORY[0x26D699B20](0);
    sub_26C00911C();
  }

  return sub_26C00B0CC();
}

uint64_t sub_26C00722C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00B05C();
  if ((v2 & 0x2000000000000000) != 0)
  {
    MEMORY[0x26D699B20](1);
    sub_26C0077E8(v4, v1);
  }

  else
  {
    MEMORY[0x26D699B20](0);
    sub_26C00911C();
  }

  return sub_26C00B0CC();
}

void sub_26C0072A8(uint64_t a1)
{
  v3 = *v1;
  if ((v1[1] & 0x2000000000000000) != 0)
  {
    MEMORY[0x26D699B20](1);

    sub_26C0077E8(a1, v3);
  }

  else
  {
    MEMORY[0x26D699B20](0);

    sub_26C00911C();
  }
}

uint64_t sub_26C007334()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00B05C();
  if ((v2 & 0x2000000000000000) != 0)
  {
    MEMORY[0x26D699B20](1);
    sub_26C0077E8(v4, v1);
  }

  else
  {
    MEMORY[0x26D699B20](0);
    sub_26C00911C();
  }

  return sub_26C00B0CC();
}

uint64_t sub_26C0073C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26C009A5C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26C009A4C();
}

uint64_t MLS.Identity.SigningIdentity.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((v1[1] & 0x2000000000000000) != 0)
  {
    MEMORY[0x26D699B20](1);
    sub_26C0077E8(a1, v4);
  }

  else
  {
    MEMORY[0x26D699B20](0);
    sub_26C00911C();
  }

  v6 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  (*(*(v5 + 8) + 24))(v13, v6);

  sub_26C00B08C();
  v8 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v8);
  v9 = (*(*(v7 + 8) + 16))(v8);
  v11 = v10;
  sub_26C00911C();

  return sub_26BE00258(v9, v11);
}

uint64_t MLS.Identity.SigningIdentity.credential.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_26BE04890(v2, v3);
}

uint64_t MLS.Identity.SigningIdentity.credential.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26BE0489C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t MLS.Identity.SigningIdentity.signaturePublicKey.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_26BE2E410(a1, v1 + 16);
}

uint64_t MLS.Identity.SigningIdentity.hashValue.getter()
{
  sub_26C00B05C();
  MLS.Identity.SigningIdentity.hash(into:)(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26C007684()
{
  sub_26C00B05C();
  MLS.Identity.SigningIdentity.hash(into:)(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26C0076C8()
{
  sub_26C00B05C();
  MLS.Identity.SigningIdentity.hash(into:)(v1);
  return sub_26C00B0CC();
}

void (*sub_26C007760(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6996F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26C0077E0;
  }

  __break(1u);
  return result;
}

void sub_26C0077E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_26C00AB8C();
    MEMORY[0x26D699B20](v8);
    v3 = sub_26C00AB8C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x26D699B20](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    do
    {
      MEMORY[0x26D6996F0](v4++, a2);
      type metadata accessor for SecCertificate(0);
      sub_26C008B38(&qword_28045FB08, type metadata accessor for SecCertificate);
      sub_26C0092BC();
      swift_unknownObjectRelease();
    }

    while (v3 != v4);
  }

  else
  {
    v5 = (a2 + 32);
    type metadata accessor for SecCertificate(0);
    sub_26C008B38(&qword_28045FB08, type metadata accessor for SecCertificate);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_26C0092BC();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_26C007978(uint64_t a1, uint64_t a2)
{
  v3 = sub_26C0094DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = _s21RCSParticipantKeyRollVMa();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  result = MEMORY[0x26D699B20](v18);
  if (v18)
  {
    v20 = *(type metadata accessor for MLS.AlgorithmIdentifier() + 20);
    v21 = *(v13 + 24);
    v35 = *(v13 + 20);
    v41 = &v17[v21];
    v42 = v20;
    v22 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
    v23 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v40 = (v4 + 48);
    v33 = *(v14 + 72);
    v34 = v22;
    v31 = (v4 + 8);
    v32 = (v4 + 32);
    v36 = v12;
    v37 = v3;
    v43 = v17;
    do
    {
      sub_26C008A70(v23, v17, _s21RCSParticipantKeyRollVMa);
      sub_26C00947C();
      sub_26C008B38(&qword_28045F0C0, MEMORY[0x277D6A958]);
      sub_26C00A3CC();
      sub_26BEE2A7C(&v17[v42], v12);
      v24 = *v40;
      if ((*v40)(v12, 1, v3) == 1)
      {
        sub_26C00B07C();
      }

      else
      {
        v25 = v39;
        (*v32)(v39, v12, v3);
        sub_26C00B07C();
        sub_26C008B38(&qword_28045F0C8, MEMORY[0x277D6A988]);
        sub_26C00A3CC();
        (*v31)(v25, v3);
      }

      sub_26C00959C();
      sub_26C008B38(&qword_28045F0D0, MEMORY[0x277D6A9E0]);
      sub_26C00A3CC();
      v26 = v41;
      sub_26C00A3CC();
      v27 = &v26[v42];
      v28 = v38;
      sub_26BEE2A7C(v27, v38);
      if (v24(v28, 1, v3) == 1)
      {
        sub_26C00B07C();
      }

      else
      {
        v29 = v39;
        (*v32)(v39, v28, v3);
        sub_26C00B07C();
        sub_26C008B38(&qword_28045F0C8, MEMORY[0x277D6A988]);
        sub_26C00A3CC();
        (*v31)(v29, v3);
      }

      sub_26C00A3CC();
      v17 = v43;
      result = sub_26C008AD8(v43, _s21RCSParticipantKeyRollVMa);
      v23 += v33;
      --v18;
      v12 = v36;
      v3 = v37;
    }

    while (v18);
  }

  return result;
}

uint64_t _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      sub_26BE04890(*a2, a2[1]);
      sub_26BE04890(v5, v4);
      sub_26BE04890(v7, v6);
      sub_26BE04890(v5, v4);
      v8 = sub_26BFB0104(v5, v7);
      goto LABEL_7;
    }

LABEL_5:
    sub_26BE04890(*a2, a2[1]);
    sub_26BE04890(v5, v4);
    sub_26BE0489C(v5, v4);
    sub_26BE0489C(v7, v6);
    return 0;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    goto LABEL_5;
  }

  sub_26BE04890(*a2, a2[1]);
  sub_26BE04890(v5, v4);
  sub_26BE04890(v7, v6);
  sub_26BE04890(v5, v4);
  v8 = sub_26BE02DEC(v5, v4, v7, v6);
LABEL_7:
  v9 = v8;
  sub_26BE0489C(v5, v4);
  sub_26BE0489C(v7, v6);
  sub_26BE0489C(v7, v6);
  sub_26BE0489C(v5, v4);
  if (v9)
  {
    v11 = a1[5];
    v10 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v11);
    (*(*(v10 + 8) + 24))(v27, v11);
    v12 = LOBYTE(v27[0]);

    v14 = a2[5];
    v13 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v14);
    (*(*(v13 + 8) + 24))(v26, v14);
    LODWORD(v13) = LOBYTE(v26[0]);

    if (v12 == v13)
    {
      v17 = a1[5];
      v16 = a1[6];
      __swift_project_boxed_opaque_existential_1(a1 + 2, v17);
      v18 = (*(*(v16 + 8) + 16))(v17);
      v20 = v19;
      v22 = a2[5];
      v21 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v22);
      v23 = (*(*(v21 + 8) + 16))(v22);
      v25 = v24;
      LOBYTE(v22) = sub_26BE02DEC(v18, v20, v23, v24);
      sub_26BE00258(v23, v25);
      sub_26BE00258(v18, v20);
      return v22 & 1;
    }
  }

  return 0;
}

uint64_t _s8SwiftMLS0B0O8IdentityO10CredentialO2eeoiySbAG_AGtFZ_0(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((v3 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      sub_26BE04890(*a2, *(a2 + 8));
      sub_26BE04890(v2, v3);
      v6 = sub_26BFB0104(v2, v4);
      goto LABEL_7;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
    sub_26BE04890(*a2, *(a2 + 8));
    sub_26BE04890(v2, v3);
    v6 = sub_26BE02DEC(v2, v3, v4, v5);
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  sub_26BE04890(*a2, *(a2 + 8));
  sub_26BE04890(v2, v3);
  v7 = 0;
LABEL_8:
  sub_26BE0489C(v2, v3);
  sub_26BE0489C(v4, v5);
  return v7 & 1;
}

uint64_t sub_26C0081F4(int *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((a4 & 0x2000000000000000) == 0)
  {
    sub_26BE04890(*(a2 + 32), *(a2 + 40));
    if ((v10 & 0x2000000000000000) == 0)
    {
      sub_26BE04890(v11, v10);
      sub_26BE04890(a3, a4);
      if (sub_26BE02DEC(a3, a4, v11, v10))
      {
        swift_beginAccess();
        if (*(a5 + 20) == 1)
        {
          v12 = v11;
          v13 = v10;
LABEL_6:
          sub_26BE0489C(v12, v13);
          sub_26BE0489C(a3, a4);
          sub_26BE0489C(v11, v10);
          result = swift_beginAccess();
          *(a5 + 16) = v9;
          *(a5 + 20) = 0;
          return result;
        }

        sub_26BE01654();
        swift_allocError();
        *v24 = 36;
        *(v24 + 8) = 0u;
        *(v24 + 24) = 0u;
        *(v24 + 40) = 0u;
        *(v24 + 56) = 0u;
        *(v24 + 72) = 0u;
        *(v24 + 88) = 0u;
        *(v24 + 104) = 0;
        *(v24 + 112) = 23;
        swift_willThrow();
      }

      v23 = v11;
      v22 = v10;
      goto LABEL_46;
    }

    goto LABEL_9;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v52 = *(a2 + 32);
    v53 = v10;
    sub_26BE04890(v11, v10);
    sub_26BE04890(v11, v10);
    sub_26BE04890(a3, a4);
    sub_26C006590(&v52, &v54);
    if (v5)
    {
      goto LABEL_47;
    }

    v15 = v55;
    v51 = v54;
    v54 = a3;
    v55 = a4;
    MLS.Identity.Credential.telURI.getter();
    if (!v16)
    {
      goto LABEL_45;
    }

    v17 = *(v16 + 16);

    if (!v17)
    {
      goto LABEL_45;
    }

    v54 = a3;
    v55 = a4;
    MLS.Identity.Credential.telURI.getter();
    v18 = v15;
    v20 = v19;
    v52 = v51;
    v53 = v18;
    v50 = v18;
    MLS.Identity.Credential.telURI.getter();
    if (v20)
    {
      if (v21)
      {
        v48 = sub_26BFB2508(v20, v21);

        v22 = v50;
        if ((v48 & 1) == 0)
        {
          v23 = v51;
LABEL_46:
          sub_26BE0489C(v23, v22);
          goto LABEL_47;
        }

LABEL_20:
        if (qword_28045E1D0 != -1)
        {
          swift_once();
        }

        v25 = sub_26C009A5C();
        __swift_project_value_buffer(v25, qword_280479320);

        v26 = sub_26C009A3C();
        v27 = sub_26C00AA1C();
        sub_26BE0489C(a3, a4);
        v44 = v27;
        if (!os_log_type_enabled(v26, v27))
        {

          goto LABEL_31;
        }

        log = v26;
        v28 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v52 = v42;
        buf = v28;
        *v28 = 136315138;
        v54 = a3;
        v55 = a4;
        MLS.Identity.Credential.telURI.getter();
        if (v29)
        {
          if (v29[2])
          {
            v31 = v29[4];
            v30 = v29[5];

LABEL_30:
            v32 = sub_26BE29740(v31, v30, &v52);

            *(buf + 4) = v32;
            _os_log_impl(&dword_26BDFE000, log, v44, "Found prior appearance for tel URI %s", buf, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v42);
            MEMORY[0x26D69A4E0](v42, -1, -1);
            MEMORY[0x26D69A4E0](buf, -1, -1);

LABEL_31:
            v15 = v50;
            swift_beginAccess();
            if (*(a5 + 20) == 1)
            {
              v12 = v51;
              v13 = v50;
              goto LABEL_6;
            }

            sub_26BE04890(a3, a4);

            v33 = sub_26C009A3C();
            v34 = sub_26C00AA0C();
            sub_26BE0489C(a3, a4);
            if (!os_log_type_enabled(v33, v34))
            {

LABEL_44:
              sub_26BE01654();
              swift_allocError();
              *v41 = 36;
              *(v41 + 8) = 0u;
              *(v41 + 24) = 0u;
              *(v41 + 40) = 0u;
              *(v41 + 56) = 0u;
              *(v41 + 72) = 0u;
              *(v41 + 88) = 0u;
              *(v41 + 104) = 0;
              *(v41 + 112) = 23;
              swift_willThrow();
LABEL_45:
              v23 = v51;
              v22 = v15;
              goto LABEL_46;
            }

            loga = v34;
            v49 = v33;
            v35 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v56 = v45;
            *v35 = 136315650;
            v52 = a3;
            v53 = a4;
            MLS.Identity.Credential.telURI.getter();
            if (v36)
            {
              if (v36[2])
              {
                v38 = v36[4];
                v37 = v36[5];

LABEL_40:
                v39 = sub_26BE29740(v38, v37, &v56);

                *(v35 + 4) = v39;
                *(v35 + 12) = 1024;
                swift_beginAccess();
                if (*(a5 + 20))
                {
                  v40 = 0;
                }

                else
                {
                  v40 = *(a5 + 16);
                }

                *(v35 + 14) = v40;

                *(v35 + 18) = 1024;
                *(v35 + 20) = v9;
                _os_log_impl(&dword_26BDFE000, v49, loga, "Multiple prior appearances found for tel URI %s, first appearance at %u, second appearance at %u", v35, 0x18u);
                __swift_destroy_boxed_opaque_existential_1(v45);
                MEMORY[0x26D69A4E0](v45, -1, -1);
                MEMORY[0x26D69A4E0](v35, -1, -1);

                v15 = v50;
                goto LABEL_44;
              }
            }

            v37 = 0xE500000000000000;
            v38 = 0x3E6C696E3CLL;
            goto LABEL_40;
          }
        }

        v31 = 0;
        v30 = 0xE000000000000000;
        goto LABEL_30;
      }
    }

    else if (!v21)
    {
      goto LABEL_20;
    }

    sub_26BE0489C(v51, v50);
    sub_26BE0489C(a3, a4);
    sub_26BE0489C(v11, v10);
  }

  sub_26BE04890(*(a2 + 32), *(a2 + 40));
LABEL_9:
  sub_26BE04890(a3, a4);
LABEL_47:
  sub_26BE0489C(a3, a4);
  return sub_26BE0489C(v11, v10);
}

unint64_t sub_26C008860()
{
  result = qword_280460BC0;
  if (!qword_280460BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BC0);
  }

  return result;
}

unint64_t sub_26C0088B8()
{
  result = qword_280460BC8;
  if (!qword_280460BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BC8);
  }

  return result;
}

unint64_t sub_26C008910()
{
  result = qword_280460BD0;
  if (!qword_280460BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BD0);
  }

  return result;
}

uint64_t sub_26C008A70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C008AD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C008B38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MLS.SharedPathSecretResult.pathSecret.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

uint64_t MLS.SharedPathSecretResult.pathSecret.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26C008C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C008CDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26C008D48()
{
  result = qword_280460BD8;
  if (!qword_280460BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BD8);
  }

  return result;
}