uint64_t sub_1AFAC3190(void (*a1)(void *))
{
  v7 = *MEMORY[0x1E69E9840];
  sub_1AFAD0A24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C6B0;
  strcpy((inited + 32), "screenPosition");
  *(inited + 47) = -18;
  *(inited + 48) = v1 + 32;
  *(inited + 56) = 0x6E6F74747562;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = v1 + 40;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000001AFF22530;
  *(inited + 96) = v1 + 48;
  *(inited + 104) = 1937009000;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = &v6;
  v4 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8);
  swift_arrayDestroy();
  a1(v4);
}

uint64_t sub_1AFAC330C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  sub_1AFAD0A24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = 0x65646F4379656BLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = 0x7461657065527369;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = v4 + 8;
  v7 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8);
  swift_arrayDestroy();
  a4(v7);
}

uint64_t sub_1AFAC3400(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  sub_1AFAD0A24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = 0x65646F4379656BLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = 0x7461657065527369;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = v3 + 8;
  v6 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8);
  swift_arrayDestroy();
  a3(v6);
}

uint64_t sub_1AFAC34F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AFDFCEF8();
  v5 = v4;
  if (v3 == sub_1AFDFCEF8() && v5 == v6)
  {
    goto LABEL_13;
  }

  v8 = sub_1AFDFEE28();

  if (v8)
  {
    goto LABEL_14;
  }

  v9 = sub_1AFDFCEF8();
  v11 = v10;
  if (v9 == sub_1AFDFCEF8() && v11 == v12)
  {
LABEL_13:

    goto LABEL_14;
  }

  v14 = sub_1AFDFEE28();

  if ((v14 & 1) == 0)
  {
    v15 = sub_1AFDFCEF8();
    v17 = v16;
    if (v15 != sub_1AFDFCEF8() || v17 != v18)
    {
      v24 = sub_1AFDFEE28();

      if (v24)
      {
        goto LABEL_14;
      }

      v25 = sub_1AFDFCEF8();
      v27 = v26;
      if (v25 != sub_1AFDFCEF8() || v27 != v28)
      {
        v29 = sub_1AFDFEE28();

        if (v29)
        {
          goto LABEL_14;
        }

        v30 = sub_1AFDFCEF8();
        v32 = v31;
        if (v30 != sub_1AFDFCEF8() || v32 != v33)
        {
          v34 = sub_1AFDFEE28();

          if (v34)
          {
            goto LABEL_14;
          }

          v35 = sub_1AFDFCEF8();
          v37 = v36;
          if (v35 == sub_1AFDFCEF8() && v37 == v38)
          {
            goto LABEL_25;
          }

          v41 = sub_1AFDFEE28();

          if (v41)
          {
            goto LABEL_32;
          }

          v42 = sub_1AFDFCEF8();
          v44 = v43;
          if (v42 == sub_1AFDFCEF8() && v44 == v45)
          {
LABEL_25:
          }

          else
          {
            v46 = sub_1AFDFEE28();

            if ((v46 & 1) == 0)
            {
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF45E60);
              type metadata accessor for VFXTriggerType(0);
              sub_1AFDFE458();
              result = sub_1AFDFE518();
              __break(1u);
              return result;
            }
          }

LABEL_32:
          *(a1 + 24) = &type metadata for TriggerOSEvent.KeyboardParams;
          *(a1 + 32) = &off_1F255DCB8;
          *a1 = 0;
          *(a1 + 8) = 0;
          return result;
        }
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  sub_1AFAD082C(v1, &v47);
  *(a1 + 24) = &type metadata for TriggerOSEvent.TapParams;
  *(a1 + 32) = &off_1F255DCA0;
  v19 = swift_allocObject();
  *a1 = v19;
  v20 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v39 = sub_1AFDFE108();
    if (v39)
    {
      v40 = v39;
      v20 = sub_1AFC892CC(v39, 0);
      sub_1AF56E46C(v20 + 32, v40, MEMORY[0x1E69E7CC0]);
    }
  }

  v19[9] = v20;
  sub_1AFAD082C(&v47, v19 + 2);
  v21 = v48;
  v19[6] = *(v48 + 56);
  v19[7] = *(v21 + 72);
  v22 = v49;
  result = sub_1AFAD0864(&v47);
  v19[8] = v22;
  return result;
}

uint64_t sub_1AFAC39F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  sub_1AFAD0A24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  strcpy((inited + 32), "worldTransform");
  *(inited + 47) = -18;
  *(inited + 48) = v4;
  *(inited + 56) = 0x64656B63617274;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = v4 + 64;
  v7 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8);
  swift_arrayDestroy();
  a4(v7);
}

uint64_t sub_1AFAC3AF0(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  sub_1AFAD0A24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  strcpy((inited + 32), "worldTransform");
  *(inited + 47) = -18;
  *(inited + 48) = v3;
  *(inited + 56) = 0x64656B63617274;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = v3 + 64;
  v6 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8);
  swift_arrayDestroy();
  a3(v6);
}

uint64_t sub_1AFAC3BF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  sub_1AFAD0A24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C680;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001AFF222F0;
  *(inited + 48) = v4;
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000001AFF22310;
  *(inited + 72) = v4 + 64;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001AFF22330;
  *(inited + 96) = v4 + 128;
  v7 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8);
  swift_arrayDestroy();
  a4(v7);
}

uint64_t sub_1AFAC3D04(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  sub_1AFAD0A24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C680;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001AFF222F0;
  *(inited + 48) = v3;
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000001AFF22310;
  *(inited + 72) = v3 + 64;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001AFF22330;
  *(inited + 96) = v3 + 128;
  v6 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8);
  swift_arrayDestroy();
  a3(v6);
}

uint64_t sub_1AFAC3E18(uint64_t a1, uint64_t a2)
{
  sub_1AFAD0A24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C630;
  *(inited + 32) = 0x6564757469747461;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  strcpy((inited + 56), "rotationRate");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = a1 + 64;
  *(inited + 80) = 0x79746976617267;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = a1 + 80;
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x80000001AFF22470;
  *(inited + 120) = a1 + 96;
  strcpy((inited + 128), "magneticField");
  *(inited + 142) = -4864;
  *(inited + 144) = a1 + 112;
  *(inited + 152) = 0xD000000000000015;
  *(inited + 160) = 0x80000001AFF22490;
  *(inited + 168) = a1 + 128;
  *(inited + 176) = 0x676E6964616568;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = a1 + 132;
  v5 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8);
  swift_arrayDestroy();
  v6 = *(a2 + 56);

  v6(v5);
}

uint64_t sub_1AFAC3FC8(void (*a1)(void *))
{
  sub_1AFAD0A24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C630;
  *(inited + 32) = 0x6564757469747461;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v1;
  strcpy((inited + 56), "rotationRate");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = v1 + 64;
  *(inited + 80) = 0x79746976617267;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v1 + 80;
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x80000001AFF22470;
  *(inited + 120) = v1 + 96;
  strcpy((inited + 128), "magneticField");
  *(inited + 142) = -4864;
  *(inited + 144) = v1 + 112;
  *(inited + 152) = 0xD000000000000015;
  *(inited + 160) = 0x80000001AFF22490;
  *(inited + 168) = v1 + 128;
  *(inited + 176) = 0x676E6964616568;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = v1 + 132;
  v4 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8);
  swift_arrayDestroy();
  a1(v4);
}

uint64_t sub_1AFAC4188(void (*a1)(void *))
{
  sub_1AFAD0A24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C6A0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v1;
  *(inited + 56) = 0x6C616D726F6ELL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = v1 + 16;
  *(inited + 80) = 0x6F69746365726964;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = v1 + 32;
  strcpy((inited + 104), "hasParticleID");
  *(inited + 118) = -4864;
  *(inited + 120) = v1 + 73;
  *(inited + 128) = 0x656C636974726170;
  *(inited + 136) = 0xEA00000000004449;
  *(inited + 144) = v1 + 76;
  v4 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8);
  swift_arrayDestroy();
  a1(v4);
}

void *sub_1AFAC42E4@<X0>(uint64_t a1@<X8>)
{
  swift_unknownObjectWeakInit();
  v2 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CD0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v3;
  result = sub_1AF42C520(v2);
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
  return result;
}

void *sub_1AFAC4334@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1AF42D44C(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1AFAC4368(uint64_t a1)
{
  v1 = sub_1AF1CF8AC(a1);
  v2 = *(sub_1AF0FB884(v1) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = *(v2 + 184);

  sub_1AF6D5188(&type metadata for TriggerListComponent, &off_1F255DD10, v3, v6);

  swift_unknownObjectWeakAssign();
  v4 = *(v2 + 184);

  sub_1AF6D2ADC(&type metadata for TriggerListComponent, &off_1F255DD10, v4, sub_1AFAD3AF4);

  swift_unknownObjectRelease();

  return sub_1AF645830(v6);
}

uint64_t sub_1AFAC44EC(uint64_t a1, _OWORD *a2)
{
  v3 = sub_1AF1CF8AC(a1);
  v4 = *(sub_1AF0FB884(v3) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v5 = *(v4 + 184);

  v6 = sub_1AF6D6574(&type metadata for CollisionEventsComponent, &off_1F255DCD0, v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1AF427460(0, *(v6 + 16) + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1AF427460(v9 > 1, v10 + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  *(v6 + 16) = v10 + 1;
  v11 = (v6 + 80 * v10);
  v11[2] = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  *(v11 + 93) = *(a2 + 61);
  v11[4] = v13;
  v11[5] = v14;
  v11[3] = v12;
  v18 = v6;
  v15 = *(v4 + 184);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v8);
  sub_1AFAD07C4(a2, v17);

  sub_1AF6D655C(&type metadata for CollisionEventsComponent, &off_1F255DCD0, v15, sub_1AFAD3AC0);

  swift_unknownObjectRelease();
}

uint64_t sub_1AFAC4744(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1CF8AC(a1);
  v4 = *(sub_1AF0FB884(v3) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v5 = *(v4 + 184);

  sub_1AF6D5188(&type metadata for TriggerListComponent, &off_1F255DD10, v5, v14);

  sub_1AFAD082C(a2, v13);
  v6 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AF42757C(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1AF42757C(v7 > 1, v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v9 = sub_1AFAD13A4(v13, &v6[4 * v8 + 4]);
  v15 = v6;
  v10 = *(v4 + 184);
  MEMORY[0x1EEE9AC00](v9, v11);

  sub_1AF6D2ADC(&type metadata for TriggerListComponent, &off_1F255DD10, v10, sub_1AFAD3AF4);

  swift_unknownObjectRelease();

  return sub_1AF645830(v14);
}

uint64_t sub_1AFAC4A08(void *a1, void *a2, _BYTE *a3, void *a4, void *a5)
{
  v7 = a2;
  if (a4)
  {
    if (!a5)
    {
      if (a1)
      {
        sub_1AF0D4478(0, &qword_1ED72F7F0);
        v20 = a4;
        v21 = a1;
        v22 = sub_1AFDFDC48();

        if (v22)
        {

          return 1;
        }
      }

      else
      {
        v33 = a4;
      }

      if (v7)
      {
        sub_1AF0D4478(0, &qword_1ED72F7F0);
        v27 = v7;
        v29 = sub_1AFDFDC48();
LABEL_31:

        if (v29)
        {
          goto LABEL_32;
        }

        return 0;
      }

LABEL_33:

      return 0;
    }

    if (a1)
    {
      sub_1AF0D4478(0, &qword_1ED72F7F0);
      v10 = a4;
      v11 = a5;
      v12 = a1;
      v13 = sub_1AFDFDC48();

      if (v13)
      {
        if (!v7)
        {

          return 0;
        }

        v14 = v11;
        v7 = v7;
        v15 = sub_1AFDFDC48();

        if (v15)
        {

          return 1;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v23 = a4;
      v24 = a5;
    }

    if (v7)
    {
LABEL_17:
      sub_1AF0D4478(0, &qword_1ED72F7F0);
      v25 = v7;
      v26 = sub_1AFDFDC48();

      if ((v26 & 1) != 0 && a1)
      {
        v27 = a5;
        v28 = a1;
        v29 = sub_1AFDFDC48();

        goto LABEL_31;
      }

      goto LABEL_33;
    }

LABEL_27:
    return 0;
  }

  if (!a5)
  {
    return 1;
  }

  if (a2)
  {
    sub_1AF0D4478(0, &qword_1ED72F7F0);
    v17 = v7;
    v18 = a5;
    v19 = sub_1AFDFDC48();

    if (v19)
    {

      return 1;
    }
  }

  else
  {
    v30 = a5;
  }

  if (!a1)
  {
    goto LABEL_27;
  }

  sub_1AF0D4478(0, &qword_1ED72F7F0);
  v31 = a1;
  v32 = sub_1AFDFDC48();

  if (v32)
  {
LABEL_32:
    result = 1;
    *a3 = 1;
    return result;
  }

  return 0;
}

uint64_t sub_1AFAC4CE4(void *a1, void *a2)
{
  sub_1AFDFF288();
  if (!a1)
  {
    sub_1AFDFF2A8();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1AFDFF2A8();
    return sub_1AFDFF2F8();
  }

  sub_1AFDFF2A8();
  v4 = a1;
  sub_1AFDFDC58();

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1AFDFF2A8();
  v5 = a2;
  sub_1AFDFDC58();

  return sub_1AFDFF2F8();
}

void sub_1AFAC4D98()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*v0)
  {
    sub_1AFDFF2A8();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1AFDFF2A8();
    return;
  }

  sub_1AFDFF2A8();
  v3 = v2;
  sub_1AFDFDC58();

  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1AFDFF2A8();
  v4 = v1;
  sub_1AFDFDC58();
}

uint64_t sub_1AFAC4E5C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  sub_1AFDFF288();
  if (!v2)
  {
    sub_1AFDFF2A8();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1AFDFF2A8();
    return sub_1AFDFF2F8();
  }

  sub_1AFDFF2A8();
  v3 = v2;
  sub_1AFDFDC58();

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1AFDFF2A8();
  v4 = v1;
  sub_1AFDFDC58();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAC4F14(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v45 = a4;
  if (Strong)
  {
    v43 = Strong;
    v44 = a1;
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v69 = qword_1ED73B840;
    v70 = 0;
    v71 = 2;
    v72 = 0;
    v73 = 2;
    v74 = 0;
    sub_1AF703D3C(1, v58);
    v67[0] = v58[0];
    v67[1] = v58[1];
    v68 = v59;
    sub_1AF6B06C0(a2, v67, 0x200000000, v60);
    if (*&v60[0])
    {
      if (v63 > 0 && (v49 = *(&v61 + 1)) != 0)
      {
        v42 = a2;
        v48 = *(&v60[2] + 1);
        v10 = *(&v62 + 1);
        v11 = *(v62 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v53 = *(*(&v62 + 1) + 32);
        v64 = *&v60[0];
        v65 = *(v60 + 8);
        v66 = *(&v60[1] + 8);
        v12 = type metadata accessor for TriggerScript(0);
        v57[2] = v60[2];
        v57[3] = v61;
        v57[4] = v62;
        v57[5] = v63;
        v57[0] = v60[0];
        v57[1] = v60[1];
        sub_1AF5DD298(v57, v55);
        v13 = 0;
        v46 = v12 - 8;
        v47 = v11;
        do
        {
          v51 = v13;
          v52 = v8;
          v14 = (v48 + 48 * v13);
          v15 = *v14;
          v50 = v14[1];
          v17 = *(v14 + 2);
          v16 = *(v14 + 3);
          v19 = *(v14 + 4);
          v18 = *(v14 + 5);
          if (v11)
          {
            v20 = *(v18 + 376);

            os_unfair_lock_lock(v20);
            os_unfair_lock_lock(*(v18 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v53);
          v21 = *(v10 + 64);
          v55[0] = *(v10 + 48);
          v55[1] = v21;
          v56 = *(v10 + 80);
          v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
          *(v10 + 48) = ecs_stack_allocator_allocate(*(v10 + 32), 48 * v22, 8);
          *(v10 + 56) = v22;
          *(v10 + 72) = 0;
          *(v10 + 80) = 0;
          *(v10 + 64) = 0;
          v23 = sub_1AF64B110(v12, &off_1F255BBC8, v17, v16, v19, v10);
          v24 = v23;
          if (v17)
          {
            if (v19)
            {
              v25 = *(*v46 + 72);
              do
              {
                sub_1AF70DB3C(&v54, *(v24 + *(v12 + 48)));

                v24 += v25;
                --v19;
              }

              while (v19);
            }
          }

          else if (v15 != v50)
          {
            v26 = *(*v46 + 72);
            v27 = v50 - v15;
            v28 = v23 + v26 * v15;
            do
            {
              sub_1AF70DB3C(&v54, *(v28 + *(v12 + 48)));

              v28 += v26;
              --v27;
            }

            while (v27);
          }

          v8 = v52;
          sub_1AF630994(v10, &v64, v55);
          sub_1AF62D29C(v18);
          ecs_stack_allocator_pop_snapshot(v53);
          v11 = v47;
          if (v47)
          {
            os_unfair_lock_unlock(*(v18 + 344));
            os_unfair_lock_unlock(*(v18 + 376));
          }

          v13 = v51 + 1;
        }

        while (v51 + 1 != v49);
        sub_1AF0D9DB0(v60, &qword_1ED725EA0);
        sub_1AF0D9DB0(v60, &qword_1ED725EA0);
        a2 = v42;
      }

      else
      {
        sub_1AF0D9DB0(v60, &qword_1ED725EA0);
      }
    }

    a1 = v44;
    v29 = *a3;
    v30 = *(v44 + 16);

    v31 = sub_1AFAC66D4(v29, v30);

    if (v31)
    {
      sub_1AFACFDF0(v58, &unk_1ED723DC0, type metadata accessor for TriggerScript, &off_1F255BBC8, type metadata accessor for Query1);
      v32 = v43;
    }

    else
    {
      *(v44 + 16) = *a3;

      type metadata accessor for VFXTriggerType(0);
      sub_1AFAD0C04(&qword_1EB630D10, type metadata accessor for VFXTriggerType);

      v33 = sub_1AFDFD768();

      v32 = v43;
      [v43 enableTriggerTypes_];
      sub_1AFACFDF0(v58, &unk_1ED723DC0, type metadata accessor for TriggerScript, &off_1F255BBC8, type metadata accessor for Query1);
    }
  }

  v34 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];

  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
  v35 = sub_1AF6D6500(a1, v57);
  v36 = *(a2 + 184);
  MEMORY[0x1EEE9AC00](v35, v37);

  sub_1AF6D2ADC(&type metadata for TriggerListComponent, &off_1F255DD10, v36, sub_1AFAD0BA8);

  sub_1AF645830(v57);
  *v45 = v34;

  *&v57[0] = v34;
  v39 = *(a2 + 184);
  MEMORY[0x1EEE9AC00](v38, v40);

  sub_1AF6D655C(&type metadata for CollisionEventsComponent, &off_1F255DCD0, v39, sub_1AFAD0BEC);
}

void sub_1AFAC55A0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1AFAD0C4C(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v10 - v8;
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) && (HIDWORD(a2) == 0xFFFFFFFF || *(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2 + 8) == HIDWORD(a2)))
  {
    sub_1AFACFE6C(a3, v9, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298);
    sub_1AFBFDEEC(v9, a2);
    sub_1AFACFDF0(v9, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  }
}

uint64_t sub_1AFAC5724(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1AFAD0C4C(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v7 = swift_projectBox();
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);

  return sub_1AFACE760(v7, v8, v9, a4, a4, a1);
}

uint64_t sub_1AFAC57C0(uint64_t a1, uint64_t a2)
{
  sub_1AFAD092C(0, &unk_1ED7246F0, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1AFAD0584(a2, &v10 - v6, &unk_1ED7246F0);
  v8 = *(v7 + 7);

  sub_1AFAD2E00(v7, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  v8(a1);
}

void sub_1AFAC58B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam() - 8;
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    do
    {
      sub_1AFACFD88(v10, v8, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
      v8[7](a1);
      sub_1AFAD2E00(v8, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
      v10 += v11;
      --v9;
    }

    while (v9);
  }
}

void sub_1AFAC5A30(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, uint64_t a5)
{
  *&v50 = sub_1AFACFF44;
  *(&v50 + 1) = a2;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v49 = sub_1AFAC6668;
  *(&v49 + 1) = &unk_1F24E61B8;
  v10 = _Block_copy(&aBlock);

  sub_1AFADA764();
  *(&v49 + 1) = sub_1AFACFF64();
  *&aBlock = v10;
  _Block_copy(v10);
  sub_1AFAD4E28(&aBlock);
  v11 = *(a4 + 7);
  *(&v49 + 1) = sub_1AF0D4478(0, &qword_1EB642748);
  *&aBlock = v11;
  v12 = v11;
  sub_1AFAD4E28(&aBlock);
  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(&v49 + 1) = sub_1AF0D4478(0, &qword_1ED721F80);
  *&aBlock = v13;
  sub_1AFAD4E28(&aBlock);
  sub_1AFAD08C0(0, &qword_1EB642760, &unk_1EB642768, MEMORY[0x1E69E7CA0] + 8, sub_1AF0D8108);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C680;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 32) = 1701669236;
  *(v14 + 40) = 0xE400000000000000;
  v16 = a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  v17 = MEMORY[0x1E69E63B0];
  *(v14 + 64) = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
  *(v14 + 120) = v15;
  *(v14 + 88) = v17;
  *(v14 + 96) = 29796;
  *(v14 + 104) = 0xE200000000000000;
  v18 = *(v16 + 64);
  v19 = MEMORY[0x1E69E6448];
  *(v14 + 128) = v18;
  *(v14 + 184) = v15;
  *(v14 + 152) = v19;
  *(v14 + 160) = 0x6D5F6E75725F7369;
  *(v14 + 168) = 0xEB0000000065646FLL;
  LOBYTE(v15) = *(a2 + 57);
  *(v14 + 216) = MEMORY[0x1E69E6370];
  *(v14 + 192) = (v15 & 1) == 0;
  v20 = sub_1AF0D4478(0, &unk_1EB642770);
  v21 = sub_1AFDFD9E8();
  *(&v49 + 1) = v20;
  *&aBlock = v21;
  sub_1AFAD4E28(&aBlock);
  sub_1AFAD0C4C(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v23 = *(a5 + *(v22 + 44));
  if (v23[2])
  {
    v24 = v23[4];
    v25 = v23[5];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = v24;
  v27 = v53;
  sub_1AF456138(v26, v25, MEMORY[0x1E69E7CC0]);
  if (v27)
  {

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    strcpy(&aBlock, "script error: ");
    HIBYTE(aBlock) = -18;
    swift_getErrorValue();
    v29 = sub_1AFDFF1D8();
    MEMORY[0x1B2718AE0](v29);

    v30 = aBlock;
    v31 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v46 = v31;
      swift_once();
      v31 = v46;
    }

    *&aBlock = 0;
    sub_1AF0D4F18(v31, &aBlock, v30, *(&v30 + 1));

    sub_1AFAD0C4C(0, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
    v33 = v32;
    v34 = *(v32 + 44);
    v35 = *(a5 + v34);
    *(a5 + v34) = v27;
    v36 = v27;

    swift_getErrorValue();
    v37 = sub_1AFDFF1D8();
    v39 = v38;

    v40 = (a5 + *(v33 + 48));
    *v40 = v37;
    v40[1] = v39;
  }

  else
  {
    v41 = v28;
  }

  v42 = sub_1AFDFCEC8();
  v43 = [a3 objectForKeyedSubscript_];

  if (v43)
  {
    v44 = a4[3];
    v50 = a4[2];
    v51 = v44;
    v52 = *(a4 + 8);
    v45 = a4[1];
    aBlock = *a4;
    v49 = v45;
    sub_1AFACFFBC(&aBlock, v47);
    sub_1AFAD560C(v43);
    sub_1AFACFEF0(&aBlock);
  }

  _Block_release(v10);
}

void sub_1AFAC604C(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, uint64_t a5)
{
  *&v50 = sub_1AFAD3AF0;
  *(&v50 + 1) = a2;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v49 = sub_1AFAC6668;
  *(&v49 + 1) = &unk_1F255D2E0;
  v10 = _Block_copy(&aBlock);

  sub_1AFADA764();
  *(&v49 + 1) = sub_1AFACFF64();
  *&aBlock = v10;
  _Block_copy(v10);
  sub_1AFAD4E28(&aBlock);
  v11 = *(a4 + 7);
  *(&v49 + 1) = sub_1AF0D4478(0, &qword_1EB642748);
  *&aBlock = v11;
  v12 = v11;
  sub_1AFAD4E28(&aBlock);
  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(&v49 + 1) = sub_1AF0D4478(0, &qword_1ED721F80);
  *&aBlock = v13;
  sub_1AFAD4E28(&aBlock);
  sub_1AFAD08C0(0, &qword_1EB642760, &unk_1EB642768, MEMORY[0x1E69E7CA0] + 8, sub_1AF0D8108);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C680;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 32) = 1701669236;
  *(v14 + 40) = 0xE400000000000000;
  v16 = a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  v17 = MEMORY[0x1E69E63B0];
  *(v14 + 64) = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
  *(v14 + 120) = v15;
  *(v14 + 88) = v17;
  *(v14 + 96) = 29796;
  *(v14 + 104) = 0xE200000000000000;
  v18 = *(v16 + 64);
  v19 = MEMORY[0x1E69E6448];
  *(v14 + 128) = v18;
  *(v14 + 184) = v15;
  *(v14 + 152) = v19;
  *(v14 + 160) = 0x6D5F6E75725F7369;
  *(v14 + 168) = 0xEB0000000065646FLL;
  LOBYTE(v15) = *(a2 + 57);
  *(v14 + 216) = MEMORY[0x1E69E6370];
  *(v14 + 192) = (v15 & 1) == 0;
  v20 = sub_1AF0D4478(0, &unk_1EB642770);
  v21 = sub_1AFDFD9E8();
  *(&v49 + 1) = v20;
  *&aBlock = v21;
  sub_1AFAD4E28(&aBlock);
  sub_1AFAD0C4C(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v23 = *(a5 + *(v22 + 44));
  if (v23[2])
  {
    v24 = v23[4];
    v25 = v23[5];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = v24;
  v27 = v53;
  sub_1AF456138(v26, v25, MEMORY[0x1E69E7CC0]);
  if (v27)
  {

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    strcpy(&aBlock, "script error: ");
    HIBYTE(aBlock) = -18;
    swift_getErrorValue();
    v29 = sub_1AFDFF1D8();
    MEMORY[0x1B2718AE0](v29);

    v30 = aBlock;
    v31 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v46 = v31;
      swift_once();
      v31 = v46;
    }

    *&aBlock = 0;
    sub_1AF0D4F18(v31, &aBlock, v30, *(&v30 + 1));

    sub_1AFAD0C4C(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
    v33 = v32;
    v34 = *(v32 + 44);
    v35 = *(a5 + v34);
    *(a5 + v34) = v27;
    v36 = v27;

    swift_getErrorValue();
    v37 = sub_1AFDFF1D8();
    v39 = v38;

    v40 = (a5 + *(v33 + 48));
    *v40 = v37;
    v40[1] = v39;
  }

  else
  {
    v41 = v28;
  }

  v42 = sub_1AFDFCEC8();
  v43 = [a3 objectForKeyedSubscript_];

  if (v43)
  {
    v44 = a4[3];
    v50 = a4[2];
    v51 = v44;
    v52 = *(a4 + 8);
    v45 = a4[1];
    aBlock = *a4;
    v49 = v45;
    sub_1AFACFFBC(&aBlock, v47);
    sub_1AFAD560C(v43);
    sub_1AFACFEF0(&aBlock);
  }

  _Block_release(v10);
}

uint64_t sub_1AFAC6668(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1AFDFCEF8();
  v4 = v3;

  v1(v2, v4);
}

uint64_t sub_1AFAC66D4(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v9 = a1 + 64;
  v26 = a1 + 64;
  v27 = a1;
  if (v6)
  {
    while (1)
    {
      v28 = (v6 - 1) & v6;
      v10 = __clz(__rbit64(v6)) | (v3 << 6);
LABEL_12:
      v14 = *(*(a1 + 48) + 8 * v10);
      sub_1AFDFCEF8();
      sub_1AFDFF288();
      v29 = v14;
      sub_1AFDFD038();
      v15 = sub_1AFDFF2F8();

      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = sub_1AFDFCEF8();
        v21 = v20;
        if (v19 == sub_1AFDFCEF8() && v21 == v22)
        {

          goto LABEL_23;
        }

        v24 = sub_1AFDFEE28();

        if (v24)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

LABEL_23:
      v9 = v26;
      a1 = v27;
      v6 = v28;
      if (!v28)
      {
        goto LABEL_8;
      }
    }

LABEL_26:

    return 0;
  }

LABEL_8:
  v11 = v3 << 6;
  while (1)
  {
    v12 = v3 + 1;
    if (v3 + 1 >= v7)
    {
      return 1;
    }

    v13 = *(v9 + 8 * v3);
    v11 += 64;
    ++v3;
    if (v13)
    {
      v28 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v3 = v12;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1AFAC6918(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_1AFDFDFD8();
  if (v6 != sub_1AFDFDFD8())
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28() & 1;
  }
}

uint64_t sub_1AFAC69FC(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a1;
    sub_1AF0D4478(0, &qword_1ED72F7F0);
    v8 = a3;
    v9 = v7;
    LOBYTE(v7) = sub_1AFDFDC48();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      sub_1AF0D4478(0, &qword_1ED72F7F0);
      v10 = a4;
      v11 = a2;
      v12 = sub_1AFDFDC48();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1AFAC6AEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v80 = a6;
  v81 = a3;
  v82 = a5;
  v83 = a4;
  v84 = a2;
  v108 = *MEMORY[0x1E69E9840];
  sub_1AFAD0C4C(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v77 - v10;
  v12 = type metadata accessor for GraphScript(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v77 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v77 - v22;
  v24 = v8[13];
  v25 = *(a1 + v24);
  sub_1AFACFD88(a1, &v77 - v22, type metadata accessor for GraphScript);
  v26 = v23[40];
  sub_1AFAD2E00(v23, type metadata accessor for GraphScript);
  if (v25 != 1)
  {
    goto LABEL_4;
  }

  if (v26 == 1)
  {
    return 0;
  }

  if (!v26)
  {
LABEL_4:
    *(a1 + v24) = 1;
  }

  v79 = HIDWORD(v83);
  sub_1AFACFE6C(a1, v11, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8);
  sub_1AFACFD88(v11, v19, type metadata accessor for GraphScript);

  sub_1AFACFDF0(v11, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v27 = *v19;

  sub_1AFAD2E00(v19, type metadata accessor for GraphScript);
  sub_1AFACFD88(a1, v15, type metadata accessor for GraphScript);
  v28 = v15[24];
  sub_1AFAD2E00(v15, type metadata accessor for GraphScript);
  if (v28 <= 2)
  {
    v29 = v84;
  }

  else
  {
    v29 = v84;
    if (v28 != 3)
    {

LABEL_13:
      v32 = *(a1 + v8[9]);
      if (v32 && (v33 = *(v32 + 96)) != 0)
      {
        v34 = a1 + v8[14];
        v77 = *v34;
        v78 = HIDWORD(v82);
        v35 = *(v34 + 8);
        sub_1AF0D4478(0, &qword_1EB642748);
        swift_retain_n();
        v36 = v33;

        v37 = v80;

        v38 = MEMORY[0x1E69E7CC0];
        v39 = MEMORY[0x1B2719630](MEMORY[0x1E69E7CC0]);
        v85 = v35;
        *&v90 = v36;
        *(&v90 + 1) = v29;
        *&v91 = v27;
        *(&v91 + 1) = v37;
        v40 = v77;
        *&v92 = v77;
        v41 = v35;
        BYTE8(v92) = v35;
        *(&v92 + 9) = v86;
        BYTE11(v92) = v87;
        HIDWORD(v92) = v82;
        LODWORD(v93) = v78;
        *(&v93 + 1) = v39;
        v94 = v38;
        if (sub_1AFAD4FA4())
        {
          v43 = thread_worker_index(v42);
          v44 = v84;
          if (*v43 == -1)
          {
            v45 = *(v84 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          }

          else
          {
            v45 = *(v84 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v43 + 8;
          }

          v46 = *(*v45 + 32);
          v47 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
          swift_unknownObjectUnownedInit();
          v48 = 3031;
          if (!v41)
          {
            v48 = v40;
          }

          *&v96 = v48;
          *(&v96 + 1) = v44;
          *(&v97 + 1) = __PAIR64__(v79, v83);
          *&v99 = 0;
          v98 = v46;
          BYTE8(v99) = 1;
          *&v100 = 0;
          *(&v100 + 1) = v47;
          if (v81)
          {
            Strong = swift_unknownObjectUnownedLoadStrong();
          }

          else
          {
            Strong = 0;
          }

          swift_unknownObjectUnownedAssign();

          sub_1AFABB57C(&v96, &v103);
          sub_1AFAC5A30(&v103, v44, v36, &v90, a1);

          sub_1AFABB5D8(&v103);
          v88[2] = v92;
          v88[3] = v93;
          v89 = v94;
          v88[0] = v90;
          v88[1] = v91;
          v59 = v88;
        }

        else
        {

          *&v104[16] = v92;
          v105 = v93;
          *&v106 = v94;
          v103 = v90;
          *v104 = v91;
          v59 = &v103;
        }

        sub_1AFACFEF0(v59);
      }

      else
      {
      }

      return 1;
    }
  }

  v31 = sub_1AFDFEE28();

  if (v31)
  {

    goto LABEL_13;
  }

  v50 = *(a1 + v8[10]);
  if (v50)
  {
    v78 = *(v50 + 32);
    v51 = v8[14];
    v52 = a1 + v8[15];
    v53 = *(v52 + 8);
    v54 = *(a1 + v51);
    LODWORD(v77) = *(a1 + v51 + 8);
    LOBYTE(v88[0]) = v77;
    LOBYTE(v86) = 0;
    if (v53)
    {
      v55 = v53;
    }

    else
    {
      v56 = *(v27 + 16);
      if (v56)
      {
        sub_1AF6B740C(0, &qword_1ED724EE0);
        v55 = sub_1AFDFD488();
        *(v55 + 16) = v56;
        v57 = 32;
        do
        {
          v58 = v55 + v57;
          *v58 = 0;
          *(v58 + 8) = 0;
          *(v58 + 16) = 0;
          *(v58 + 24) = xmmword_1AFE4C450;
          v57 += 40;
          --v56;
        }

        while (v56);
      }

      else
      {
        v55 = MEMORY[0x1E69E7CC0];
      }
    }

    *&v103 = 0;
    *(&v103 + 1) = v27;
    *v104 = v54;
    v104[8] = v88[0];
    *&v104[12] = v82;
    v104[20] = v86;
    *&v104[24] = v55;
    *&v105 = MEMORY[0x1E69E7CC0];
    *(&v105 + 1) = MEMORY[0x1E69E7CC0];
    v106 = 0uLL;
    *v107 = 0;
    *&v107[8] = xmmword_1AFE22A20;
    v60 = thread_worker_index;
    v61 = thread_worker_index(xmmword_1AFE22A20);
    v62 = *(v29 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    if (*v61 == -1)
    {
      v63 = *(v29 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    }

    else
    {
      v63 = (v62 + 8 * *v61 + 8);
    }

    v64 = *v63;

    v65 = v81;
    if ((sub_1AFAE1FA0(v64, v81) & 1) == 0)
    {

      v100 = v106;
      v101 = *v107;
      v102 = *&v107[16];
      v96 = v103;
      v97 = *v104;
      v98 = *&v104[16];
      v99 = v105;
      sub_1AFABB4CC(&v96);
      return 0;
    }

    v82 = v103;
    v66 = *&v104[24];

    *(v52 + 8) = v66;
    v67 = (v60)(&thread_worker_index);
    if (*v67 == -1)
    {
      v68 = v62;
    }

    else
    {
      v68 = v62 + 8 * *v67 + 8;
    }

    v69 = *(*v68 + 32);
    swift_unknownObjectUnownedInit();
    v70 = 3031;
    if (!v77)
    {
      v70 = v54;
    }

    *&v90 = v70;
    *(&v90 + 1) = v29;
    *(&v91 + 1) = __PAIR64__(v79, v83);
    *&v93 = 0;
    v92 = v69;
    BYTE8(v93) = 1;
    v94 = v82;
    v95 = v80;
    if (v65)
    {
      v71 = swift_unknownObjectUnownedLoadStrong();
    }

    else
    {
      v71 = 0;
    }

    v72 = v78;
    swift_unknownObjectUnownedAssign();

    sub_1AFABB57C(&v90, &v96);
    v72(&v96);
    sub_1AFABB5D8(&v96);
    v73 = *(v105 + 16);
    if (v73)
    {
      v74 = v105 + 40;
      do
      {
        v75 = *(v74 - 8);

        v75(v76);

        v74 += 16;
        --v73;
      }

      while (v73);
    }

    v100 = v106;
    v101 = *v107;
    v102 = *&v107[16];
    v96 = v103;
    v97 = *v104;
    v98 = *&v104[16];
    v99 = v105;
    sub_1AFABB4CC(&v96);
    return 1;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AFAC73C0(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v3 = type metadata accessor for GraphScript(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = (&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AFAD0018(0, &qword_1ED725718, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v70 = &v59 - v8;
  v9 = a1;
  sub_1AFAD0C4C(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v69 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v68 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v59 - v20;
  if (*(v9 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81) == 1 && (*(v9 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 84) & 1) == 0)
  {
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v104 = qword_1ED73B840;
    v105 = 0;
    v106 = 2;
    v107 = 0;
    v108 = 2;
    v109 = 0;
    sub_1AFCC5420(1, 1, v77);
    v95[0] = v77[0];
    v95[1] = v77[1];
    v96 = v78;
    sub_1AF6B06C0(v9, v95, 0x200000000, &v79);
    v63 = v79;
    if (v79)
    {
      v60 = v14;
      v64 = v9;
      v22 = v82;
      v23 = v83;
      v62 = v84;
      v24 = v85;
      v87 = v80;
      v88 = v81;
      v25 = MEMORY[0x1E69E7CC0];
      v76 = MEMORY[0x1E69E7CC0];
      v61 = v86;
      v65 = v21;
      if (v86 < 1 || !v83)
      {
        v73 = 0;
        v38 = v64;
        goto LABEL_19;
      }

      v59 = v11;
      v26 = *(v85 + 32);
      LODWORD(v75) = *(v62 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF6B724C(&v79, v99, &qword_1ED725EA0);
      v27 = (v22 + 24);
      do
      {
        v73 = 0;
        v29 = *(v27 - 6);
        v28 = *(v27 - 5);
        v30 = *(v27 - 4);
        v31 = *v27;
        v74 = *(v27 - 1);
        v32 = v27[2];
        v66 = v27[1];
        v67 = v31;
        if (v75)
        {
          v33 = *(v32 + 376);

          os_unfair_lock_lock(v33);
          os_unfair_lock_lock(*(v32 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v26);
        v34 = *(v24 + 64);
        v97[0] = *(v24 + 48);
        v97[1] = v34;
        v98 = *(v24 + 80);
        v35 = *(*(*(*(v32 + 40) + 16) + 32) + 16) + 1;
        *(v24 + 48) = ecs_stack_allocator_allocate(*(v24 + 32), 48 * v35, 8);
        *(v24 + 56) = v35;
        *(v24 + 72) = 0;
        *(v24 + 80) = 0;
        *(v24 + 64) = 0;
        LOBYTE(v92) = 1;
        v99[0] = v62;
        v99[1] = v32;
        v99[2] = v24;
        v99[3] = v30;
        v99[4] = (v28 - v29 + v30);
        v99[5] = v61;
        v99[6] = v29;
        v99[7] = v28;
        v99[8] = 0;
        v99[9] = 0;
        v100 = 1;
        v101 = v74;
        v102 = v67;
        v103 = v66;
        v36 = v64;

        v37 = v73;
        sub_1AFD29024(v99, v36, &v76);
        if (v37)
        {

          v92 = v63;
          v93 = v87;
          v94 = v88;
          sub_1AF630994(v24, &v92, v97);
          sub_1AF62D29C(v32);
          ecs_stack_allocator_pop_snapshot(v26);
          os_unfair_lock_unlock(*(v32 + 344));
          os_unfair_lock_unlock(*(v32 + 376));
          __break(1u);
LABEL_36:

          os_unfair_lock_unlock(*(v24 + 344));
          __break(1u);
          return;
        }

        v89 = v63;
        v90 = v87;
        v91 = v88;
        sub_1AF630994(v24, &v89, v97);
        sub_1AF62D29C(v32);
        ecs_stack_allocator_pop_snapshot(v26);
        if (v75)
        {
          os_unfair_lock_unlock(*(v32 + 344));
          os_unfair_lock_unlock(*(v32 + 376));
        }

        v27 += 6;
        --v23;
      }

      while (v23);
      v73 = 0;
      sub_1AF0D9DB0(&v79, &qword_1ED725EA0);
      v38 = v64;

      v25 = v76;
      v21 = v65;
      v11 = v59;
LABEL_19:
      v62 = v25;
      v39 = *(v25 + 16);
      if (v39)
      {
        v63 = v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries;
        v66 = (v11 + 48);
        v40 = &unk_1ED72C4F0;
        v41 = (v62 + 36);
        v42 = &off_1ED72D7D8;
        while (1)
        {
          v43 = *v41;
          v74 = *(v41 - 1);
          v75 = v39;
          v44 = v42;
          v45 = v21;
          v46 = v74 | (v43 << 32);
          v47 = v70;
          sub_1AF3CAB4C(v46, v70);
          (*v66)(v47, 1, v69);
          sub_1AFAD0144(v47, v45, v40, type metadata accessor for GraphScript, v44);
          v67 = v46;
          sub_1AFAC6AEC(v45, v38, v72, v46, v46, MEMORY[0x1E69E7CC8]);
          v48 = v68;
          sub_1AFACFE6C(v45, v68, v40, type metadata accessor for GraphScript, v44);
          v49 = v71;
          sub_1AFACFD88(v48, v71, type metadata accessor for GraphScript);
          v50 = v44;
          sub_1AFACFDF0(v48, v40, type metadata accessor for GraphScript, v44, type metadata accessor for ScriptRuntime);
          v51 = *v49;

          sub_1AFAD2E00(v49, type metadata accessor for GraphScript);
          sub_1AFABF7C8(v51);

          if (v74 == -1 && !v43)
          {
            break;
          }

          v21 = v65;
          if ((v74 & 0x80000000) != 0 || *(v63 + 8) <= v74)
          {
            goto LABEL_22;
          }

          v52 = (*v63 + 12 * v74);
          v42 = v50;
          if (v43 == -1 || v52[2] == v43)
          {
            v53 = v40;
            v54 = v60;
            sub_1AFACFE6C(v65, v60, v53, type metadata accessor for GraphScript, v50);
            v55 = v64;
            v24 = *(*(v64 + 144) + 8 * *v52 + 32);
            v56 = *(v52 + 2);
            os_unfair_lock_lock(*(v24 + 344));
            v57 = v55;
            v58 = v73;
            sub_1AFC126E4(v24, v56, v54, v57, v67);
            v73 = v58;
            if (v58)
            {
              goto LABEL_36;
            }

            os_unfair_lock_unlock(*(v24 + 344));
            sub_1AFACFDF0(v54, v53, type metadata accessor for GraphScript, v42, type metadata accessor for ScriptRuntime);
            v38 = v64;
            v40 = v53;
          }

          else
          {
            v38 = v64;
          }

LABEL_23:
          v41 += 2;
          sub_1AFACFDF0(v21, v40, type metadata accessor for GraphScript, v42, type metadata accessor for ScriptRuntime);
          v39 = v75 - 1;
          if (v75 == 1)
          {
            goto LABEL_33;
          }
        }

        v21 = v65;
LABEL_22:
        v42 = v44;
        goto LABEL_23;
      }

LABEL_33:
      sub_1AFAD2E00(v77, sub_1AFAD01C8);
      sub_1AF0D9DB0(&v79, &qword_1ED725EA0);
    }

    else
    {
      sub_1AFAD2E00(v77, sub_1AFAD01C8);
    }
  }
}

void sub_1AFAC7C94(uint64_t a1, uint64_t a2)
{
  v107 = a2;
  v174 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for SimpleScript(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v106 = (&v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v114 = &v92 - v8;
  sub_1AFAD0018(0, &qword_1ED725700, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v113 = &v92 - v11;
  sub_1AFAD0C4C(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v105 = &v92 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v27 = &v92 - v26;
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81) != 1 || (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 84) & 1) != 0)
  {
    return;
  }

  v99 = v25;
  v28 = v24;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v135 = qword_1ED73B840;
  v136 = 0;
  v137 = 2;
  v138 = 0;
  v139 = 2;
  v140 = 0;
  sub_1AFCC565C(1, 1, v128);
  v133[0] = v128[0];
  v133[1] = v128[1];
  v134 = v129;
  sub_1AF6B06C0(a1, v133, 0x200000000, &v157);
  *&v115 = v157;
  if (!v157)
  {
    sub_1AFAD2E00(v128, sub_1AFAD0088);
    return;
  }

  v109 = v13;
  v100 = v28;
  v29 = v160;
  v30 = v161;
  v112 = v162;
  v31 = v163;
  v165 = v158;
  v166 = v159;
  v32 = MEMORY[0x1E69E7CC0];
  v123 = MEMORY[0x1E69E7CC0];
  v111 = v164;
  v101 = a1;
  v93 = v16;
  v98 = v27;
  if (v164 >= 1 && v161)
  {
    v33 = *(v163 + 32);
    v34 = v112[OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach];

    sub_1AF6B724C(&v157, v169, &qword_1ED725EA0);
    v116 = 0;
    v35 = (v29 + 24);
    LODWORD(v110) = v34;
    do
    {
      v37 = *(v35 - 6);
      v36 = *(v35 - 5);
      v38 = *(v35 - 4);
      v39 = *(v35 - 1);
      v118 = *v35;
      v119 = v39;
      v27 = v35[2];
      v117 = v35[1];
      v120 = v30;
      if (v34)
      {
        v40 = *(v27 + 47);

        os_unfair_lock_lock(v40);
        os_unfair_lock_lock(*(v27 + 43));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v33);
      v41 = *(v31 + 64);
      v42 = &v152;
      v167[0] = *(v31 + 48);
      v167[1] = v41;
      v168 = *(v31 + 80);
      v43 = *(*(*(*(v27 + 5) + 16) + 32) + 16) + 1;
      *(v31 + 48) = ecs_stack_allocator_allocate(*(v31 + 32), 48 * v43, 8);
      *(v31 + 56) = v43;
      *(v31 + 72) = 0;
      *(v31 + 80) = 0;
      *(v31 + 64) = 0;
      LOBYTE(v152) = 1;
      v169[0] = v112;
      v169[1] = v27;
      v169[2] = v31;
      v169[3] = v38;
      v169[4] = (v36 - v37 + v38);
      v169[5] = v111;
      v169[6] = v37;
      v169[7] = v36;
      v169[8] = 0;
      v169[9] = 0;
      v170 = 1;
      v171 = v119;
      v172 = v118;
      v173 = v117;
      v44 = v101;

      v45 = v116;
      sub_1AFD295C0(v169, v44, &v123);
      if (v45)
      {
        goto LABEL_63;
      }

      v130 = v115;
      v131 = v165;
      v132 = v166;
      sub_1AF630994(v31, &v130, v167);
      v116 = 0;
      sub_1AF62D29C(v27);
      ecs_stack_allocator_pop_snapshot(v33);
      v34 = v110;
      if (v110)
      {
        os_unfair_lock_unlock(*(v27 + 43));
        os_unfair_lock_unlock(*(v27 + 47));
      }

      v35 += 6;
      v30 = v120 - 1;
    }

    while (v120 != 1);
    sub_1AF0D9DB0(&v157, &qword_1ED725EA0);
    a1 = v101;

    v32 = v123;
    v27 = v98;
  }

  else
  {
    v116 = 0;
  }

  v92 = v32;
  v42 = v100;
  v104 = *(v32 + 16);
  if (!v104)
  {
LABEL_60:
    sub_1AFAD2E00(v128, sub_1AFAD0088);
    sub_1AF0D9DB0(&v157, &qword_1ED725EA0);

    return;
  }

  v33 = 0;
  v95 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v97 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v112 = v27 + 8;
  v102 = (v109 + 48);
  v103 = v92 + 32;
  v94 = xmmword_1AFE4C450;
  *(&v46 + 1) = 0;
  v96 = xmmword_1AFE22A20;
  while (1)
  {
    *&v46 = *(v103 + 8 * v33);
    v115 = v46;
    v119 = v46;
    v120 = DWORD1(v46);
    v47 = v113;
    v118 = v46;
    sub_1AF3CAB24(v46, v113);
    (*v102)(v47, 1, v42);
    sub_1AFAD0144(v47, v27, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00);
    v31 = *(v42 + 13);
    v48 = v27[v31];
    v49 = v114;
    sub_1AFACFD88(v27, v114, type metadata accessor for SimpleScript);
    v50 = *(v49 + 56);
    sub_1AFAD2E00(v49, type metadata accessor for SimpleScript);
    if (v48 != 1)
    {
      goto LABEL_25;
    }

    if (v50 == 1)
    {
      goto LABEL_52;
    }

    if (!v50)
    {
LABEL_25:
      v27[v31] = 1;
    }

    v117 = v33;
    v45 = v99;
    sub_1AFACFE6C(v27, v99, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00);
    v51 = *&v45[*(v42 + 10)];
    if (!v51)
    {
      break;
    }

    v111 = *(v51 + 32);

    sub_1AFACFDF0(v45, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    v52 = v105;
    sub_1AFACFE6C(v27, v105, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00);
    v53 = v106;
    sub_1AFACFD88(v52, v106, type metadata accessor for SimpleScript);
    sub_1AFACFDF0(v52, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    v54 = *v53;

    sub_1AFAD2E00(v53, type metadata accessor for SimpleScript);
    v55 = *(v42 + 14);
    v110 = *(v42 + 15);
    v56 = *&v112[v110];
    v57 = &v27[v55];
    v58 = *v57;
    LODWORD(v109) = v57[8];
    v122 = v109;
    v121 = 0;
    if (v56)
    {
      v59 = v56;
      v60 = a1;
    }

    else
    {
      v61 = *(v54 + 16);
      if (!v61)
      {
        v65 = MEMORY[0x1E69E7CC0];
        v59 = MEMORY[0x1E69E7CC0];
        v60 = v101;
        goto LABEL_34;
      }

      sub_1AF6B740C(0, &qword_1ED724EE0);
      v59 = sub_1AFDFD488();
      *(v59 + 16) = v61;
      v62 = 32;
      v63 = v94;
      do
      {
        v64 = v59 + v62;
        *v64 = 0;
        *(v64 + 8) = 0;
        *(v64 + 16) = 0;
        *(v64 + 24) = v63;
        v62 += 40;
        --v61;
      }

      while (v61);
      v60 = v101;
    }

    v65 = MEMORY[0x1E69E7CC0];
LABEL_34:
    *(v153 + 9) = v126;
    BYTE11(v153[0]) = v127;
    *(&v153[1] + 5) = v124;
    BYTE7(v153[1]) = v125;
    *&v152 = 0;
    *(&v152 + 1) = v54;
    *&v153[0] = v58;
    BYTE8(v153[0]) = v122;
    *(v153 + 12) = v118;
    BYTE4(v153[1]) = v121;
    *(&v153[1] + 1) = v59;
    *&v154 = v65;
    *(&v154 + 1) = v65;
    v155 = 0uLL;
    *v156 = 0;
    *&v156[8] = v96;
    v66 = thread_worker_index;
    v67 = thread_worker_index(v96);
    v108 = v58;
    v68 = *(v60 + v97);
    if (*v67 == -1)
    {
      v69 = *(v60 + v97);
    }

    else
    {
      v69 = (v68 + 8 * *v67 + 8);
    }

    v70 = *v69;

    v71 = v70;
    v72 = v107;
    if (sub_1AFAE1FA0(v71, v107))
    {
      v73 = (v66)(&thread_worker_index);
      if (*v73 == -1)
      {
        v74 = v68;
      }

      else
      {
        v74 = v68 + 8 * *v73 + 8;
      }

      v75 = *(*v74 + 32);
      v76 = v152;
      v77 = sub_1AF43E4E8(v65);
      swift_unknownObjectUnownedInit();
      v78 = 3031;
      if (!v109)
      {
        v78 = v108;
      }

      v141[0] = v78;
      v141[1] = v60;
      v141[3] = v115;
      v141[4] = v75;
      v141[5] = 0;
      v141[6] = 0;
      v142 = 1;
      v143 = v76;
      v144 = v77;
      a1 = v60;
      if (v72)
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
      }

      else
      {
        Strong = 0;
      }

      v27 = v98;
      swift_unknownObjectUnownedAssign();

      sub_1AFABB57C(v141, &v145);
      v111(&v145);
      sub_1AFABB5D8(&v145);
      v80 = *(&v153[1] + 1);
      v81 = v112;
      v82 = v110;

      *&v81[v82] = v80;
      v83 = *(v154 + 16);
      v42 = v100;
      if (v83)
      {
        v84 = v154 + 40;
        do
        {
          v85 = *(v84 - 8);

          v85(v86);

          v84 += 16;
          --v83;
        }

        while (v83);
      }

      v149 = v155;
      v150 = *v156;
      v151 = *&v156[16];
      v145 = v152;
      v146 = v153[0];
      v147 = v153[1];
      v148 = v154;
      sub_1AFABB4CC(&v145);
    }

    else
    {

      v149 = v155;
      v150 = *v156;
      v151 = *&v156[16];
      v145 = v152;
      v146 = v153[0];
      v147 = v153[1];
      v148 = v154;
      sub_1AFABB4CC(&v145);
      v42 = v100;
      v27 = v98;
      a1 = v60;
    }

    v33 = v117;
LABEL_52:

    sub_1AFABF7C8(v87);

    if (__PAIR64__(v120, v119) != 0xFFFFFFFF && (v119 & 0x80000000) == 0 && v95[1] > v119)
    {
      v88 = (*v95 + 12 * v119);
      if (v120 == -1 || v88[2] == v120)
      {
        v89 = v93;
        sub_1AFACFE6C(v27, v93, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00);
        v31 = *(*(a1 + 144) + 8 * *v88 + 32);
        v90 = *(v88 + 2);
        os_unfair_lock_lock(*(v31 + 344));
        v91 = v116;
        sub_1AFC13440(v31, v90, v89, a1, v118);
        v116 = v91;
        if (v91)
        {
          goto LABEL_64;
        }

        os_unfair_lock_unlock(*(v31 + 344));
        sub_1AFACFDF0(v89, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      }
    }

    ++v33;
    sub_1AFACFDF0(v27, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    if (v33 == v104)
    {
      goto LABEL_60;
    }
  }

  sub_1AFDFE518();
  __break(1u);
LABEL_63:

  *v42 = v115;
  *(v42 + 8) = *(v42 + 200);
  *(v42 + 24) = *(v42 + 216);
  sub_1AF630994(v31, &v152, v167);
  sub_1AF62D29C(v27);
  ecs_stack_allocator_pop_snapshot(v33);
  os_unfair_lock_unlock(*(v27 + 43));
  os_unfair_lock_unlock(*(v27 + 47));
  __break(1u);
LABEL_64:

  os_unfair_lock_unlock(*(v31 + 344));
  __break(1u);
}

uint64_t sub_1AFAC8A4C(uint64_t a1, void (*a2)(void))
{
  v4 = *(a1 + 57);
  sub_1AFAD0A24();
  inited = swift_initStackObject();
  v6 = inited;
  *(inited + 32) = 0x4165646F6ELL;
  *(inited + 16) = xmmword_1AFE4C630;
  *(inited + 40) = 0xE500000000000000;
  v7 = *(v2 + 76);
  v8 = 8;
  if (*(v2 + 76))
  {
    v8 = 16;
  }

  v9 = *(v2 + v8);
  if (v4)
  {
    v10 = v9;
    v11 = a2;
    v12 = [v10 presentationNode];

    *(v6 + 48) = v12;
    *(v6 + 56) = 0x4265646F6ELL;
    *(v6 + 64) = 0xE500000000000000;
    if (v7)
    {
      v13 = (v2 + 8);
    }

    else
    {
      v13 = (v2 + 16);
    }

    v14 = *v13;
    v15 = [v14 presentationNode];

    a2 = v11;
  }

  else
  {
    *(inited + 48) = v9;
    *(inited + 56) = 0x4265646F6ELL;
    *(inited + 64) = 0xE500000000000000;
    if (v7)
    {
      v16 = (v2 + 8);
    }

    else
    {
      v16 = (v2 + 16);
    }

    v15 = *v16;
  }

  *(v6 + 72) = v15;
  strcpy((v6 + 80), "contactPoint");
  *(v6 + 93) = 0;
  *(v6 + 94) = -5120;
  *(v6 + 96) = v2 + 32;
  strcpy((v6 + 104), "contactNormal");
  *(v6 + 118) = -4864;
  *(v6 + 120) = v2 + 48;
  *(v6 + 128) = 0xD000000000000010;
  *(v6 + 136) = 0x80000001AFF224B0;
  *(v6 + 144) = v2 + 64;
  *(v6 + 152) = 0xD000000000000013;
  *(v6 + 160) = 0x80000001AFF224D0;
  *(v6 + 168) = v2 + 68;
  *(v6 + 176) = 0xD000000000000011;
  *(v6 + 184) = 0x80000001AFF224F0;
  *(v6 + 192) = v2 + 72;
  v17 = sub_1AF43E4E8(v6);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8);
  swift_arrayDestroy();
  a2(v17);
}

uint64_t sub_1AFAC8CAC(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFAD0A24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C6B0;
  strcpy((inited + 32), "screenPosition");
  *(inited + 47) = -18;
  *(inited + 48) = a1 + 32;
  *(inited + 56) = 0x6E6F74747562;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = a1 + 40;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000001AFF22530;
  *(inited + 96) = a1 + 48;
  *(inited + 104) = 1937009000;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = &v16;
  v10 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8);
  swift_arrayDestroy();
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_1AFACFD88(v12, v8, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
      (*(v8 + 7))(v10);
      sub_1AFAD2E00(v8, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
      v12 += v13;
      --v11;
    }

    while (v11);
  }
}

void sub_1AFAC8EE4(uint64_t a1, __CFString *a2, unsigned int a3)
{
  v869 = a3;
  v868 = a2;
  v974 = *MEMORY[0x1E69E9840];
  sub_1AFACFCD8(0, &qword_1ED7246E0, sub_1AFAD03B8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v780 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  *&v866 = &v780 - v10;
  sub_1AFAD092C(0, &unk_1ED724700, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  v815 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v780 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v817 = &v780 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v814 = &v780 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v816 = &v780 - v24;
  sub_1AFAD092C(0, qword_1ED724720, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  v26 = *(v25 - 8);
  v824 = v25;
  v825 = v26;
  MEMORY[0x1EEE9AC00](v25, v27);
  v833 = &v780 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v831 = &v780 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v823 = &v780 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v830 = &v780 - v37;
  sub_1AFAD092C(0, &unk_1ED724710, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  v827 = v38;
  v828 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v820 = &v780 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v780 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v826 = &v780 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v832 = &v780 - v50;
  sub_1AFAD092C(0, &unk_1ED7246F0, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  v841 = v51;
  length = v51[-1].length;
  MEMORY[0x1EEE9AC00](v51, v52);
  v844 = (&v780 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v54, v55);
  v840 = (&v780 - v56);
  MEMORY[0x1EEE9AC00](v57, v58);
  v819 = &v780 - v59;
  sub_1AF442A54(0);
  v835 = v60;
  v834 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v780 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64, v65);
  v857 = &v780 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v865 = &v780 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v822 = &v780 - v72;
  v837 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam();
  v864 = *(v837 - 1);
  MEMORY[0x1EEE9AC00](v837, v73);
  v75 = (&v780 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v76, v77);
  v79 = &v780 - v78;
  MEMORY[0x1EEE9AC00](v80, v81);
  v858 = &v780 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v873 = (&v780 - v85);
  MEMORY[0x1EEE9AC00](v86, v87);
  *&v863 = &v780 - v88;
  MEMORY[0x1EEE9AC00](v89, v90);
  *&v867 = &v780 - v91;
  MEMORY[0x1EEE9AC00](v92, v93);
  *&v874 = &v780 - v94;
  MEMORY[0x1EEE9AC00](v95, v96);
  v813 = &v780 - v97;
  MEMORY[0x1EEE9AC00](v98, v99);
  v101 = &v780 - v100;
  MEMORY[0x1EEE9AC00](v102, v103);
  v829 = &v780 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  *&v849 = &v780 - v107;
  sub_1AFAD0018(0, &qword_1ED7256F8, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298);
  MEMORY[0x1EEE9AC00](v108 - 8, v109);
  v848 = (&v780 - v110);
  v856 = type metadata accessor for TriggerScript(0);
  MEMORY[0x1EEE9AC00](v856, v111);
  v850 = &v780 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF442910();
  v847 = v113;
  MEMORY[0x1EEE9AC00](v113, v114);
  *&v846 = &v780 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81) != 1 || (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 84) & 1) != 0)
  {
    return;
  }

  info = v115;
  v802 = v44;
  v839 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock);
  v783 = v12;
  v781 = v15;
  v861 = v101;
  v798 = v79;
  v796 = v75;
  v787 = v63;
  v117 = *(a1 + 184);

  sub_1AF6D5188(&type metadata for TriggerListComponent, &off_1F255DD10, v117, &v883);

  v118 = *(a1 + 184);

  v807 = sub_1AF6D6574(&type metadata for IncommingTickedEventsComponent, &off_1F255D248, v118);

  v119 = *(a1 + 184);

  v811 = sub_1AF6D4F2C(&type metadata for TickedEventsComponent, &off_1F255DCF0, v119);
  v845 = v120;

  v121 = *(a1 + 184);

  v122 = sub_1AF6D6574(&type metadata for CollisionEventsComponent, &off_1F255DCD0, v121);

  v786 = v122;
  v882[0] = v122;
  v123 = *(a1 + 184);

  v809 = sub_1AF6D6574(&type metadata for ARHandTrackingData, &off_1F254B4F0, v123);

  v124 = *(a1 + 184);

  v810 = sub_1AF6D6574(&type metadata for ARGazeData, &off_1F254B510, v124);

  v125 = *(a1 + 184);

  sub_1AF6D4CE0(&type metadata for VFXMotionDataComponent, &off_1F254AE48, v125, v941);

  v881 = MEMORY[0x1E69E7CD0];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v914 = qword_1ED73B840;
  v915 = 0;
  v916 = 2;
  v917 = 0;
  v918 = 2;
  v919 = 0;
  sub_1AFCC594C(1, 1, v899);
  v126 = MEMORY[0x1E69E7CC0];
  v880 = sub_1AF43E608(MEMORY[0x1E69E7CC0]);
  v879 = sub_1AF43E620(v126);
  v878 = sub_1AF43E718(v126);
  v912[0] = v899[0];
  v912[1] = v899[1];
  v913 = v900;
  v836 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v912, 0x200000000, &v942);
  v852 = v942;
  if (!v942)
  {

    sub_1AFAD2E00(v899, sub_1AFAD0470);

    v146 = a1;
LABEL_177:
    sub_1AFAC4F14(&v883, v146, &v881, v882);

    goto LABEL_567;
  }

  v872 = a1;
  v127 = v945;
  v128 = v946;
  *&v851 = v947;
  v129 = v948;
  v957 = v943;
  v958 = v944;
  v877 = v126;
  v843 = v949;
  v862 = v7;
  if (v949 < 1)
  {
    v130 = v872;
  }

  else
  {
    v130 = v872;
    if (v946)
    {
      v131 = *(v948 + 4);
      LODWORD(v871.f64[0]) = *(v851 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF6B724C(&v942, v932, &qword_1ED725EA0);
      v132 = v127 + 24;
      do
      {
        v870 = 0;
        v133 = *(v132 - 24);
        v134 = *(v132 - 20);
        v135 = *(v132 - 16);
        v136 = *(v132 - 8);
        v137 = *v132;
        v138 = *(v132 + 8);
        v139 = *(v132 + 16);
        *&v860 = v128;
        v859 = v136;
        v855 = v137;
        v854[0] = *&v138;
        v853 = v133;
        if (LODWORD(v871.f64[0]))
        {
          v140 = *(v139 + 47);

          os_unfair_lock_lock(v140);
          os_unfair_lock_lock(*(v139 + 43));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v131);
        v141 = *(v129 + 4);
        v967[0] = *(v129 + 3);
        v967[1] = v141;
        v968 = *(v129 + 10);
        v142 = *(v129 + 4);
        v143 = *(*(*(*(v139 + 5) + 16) + 32) + 16) + 1;

        *(v129 + 6) = ecs_stack_allocator_allocate(v142, 48 * v143, 8);
        *(v129 + 7) = v143;
        *(v129 + 9) = 0;
        *(v129 + 10) = 0;
        *(v129 + 8) = 0;

        LOBYTE(v932[0]) = 1;
        v969[0] = v851;
        v969[1] = v139;
        v969[2] = v129;
        v969[3] = v135;
        v969[4] = (v134 - v853 + v135);
        v969[5] = v843;
        v969[6] = v853;
        v969[7] = v134;
        v969[8] = 0;
        v969[9] = 0;
        v970 = 1;
        v971 = v859;
        v972 = v855;
        v973 = *v854;
        v130 = v872;

        v144 = v870;
        sub_1AFD29F14(v969, v130, &v877);
        if (v144)
        {
          goto LABEL_571;
        }

        v904 = v852;
        v905 = v957;
        v906 = v958;
        sub_1AF630994(v129, &v904, v967);
        sub_1AF62D29C(v139);
        ecs_stack_allocator_pop_snapshot(v131);
        v145 = v860;
        if (LOBYTE(v871.f64[0]))
        {
          os_unfair_lock_unlock(*(v139 + 43));
          os_unfair_lock_unlock(*(v139 + 47));
        }

        v132 += 48;
        v128 = v145 - 1;
      }

      while (v128);
      sub_1AF0D9DB0(&v942, &qword_1ED725EA0);

      v126 = v877;
    }
  }

  v870 = 0;
  v147 = v126[2];
  v782 = v126;
  if (v147)
  {
    v148 = v126 + ((LOBYTE(info[2].data) + 32) & ~LOBYTE(info[2].data));
    v843 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
    info = info[2].info;
    v784 = @"VFXTriggerTypeGazeTracking";
    v785 = v809 + 32;
    v780 = @"VFXTriggerTypeMotionTracking";
    v806 = xmmword_1AFE201A0;
    v805 = xmmword_1AFE20150;
    v804 = xmmword_1AFE20160;
    v803 = xmmword_1AFE20180;
    v808 = MEMORY[0x1E69E7CC0];
    v797 = MEMORY[0x1E69E7CC0];
    v812 = MEMORY[0x1E69E7CC0];
    v838 = MEMORY[0x1E69E7CC0];
    v818 = MEMORY[0x1E69E7CC0];
    v149 = v850;
    while (1)
    {
      *&v860 = v147;
      v859 = v148;
      v153 = v846;
      sub_1AFACFD88(v148, v846, sub_1AF442910);
      v154 = *v153;
      v155 = v153[1];
      v852 = *(v153 + 1);
      LODWORD(v851) = *(v153 + 16);
      sub_1AFAD06F0(v153 + SLODWORD(v847[2].isa), v149, type metadata accessor for TriggerScript);
      v156 = v149;
      v157 = v848;
      v855 = (v154 | (v155 << 32));
      sub_1AF3CB2C0(v855, v848);
      sub_1AFAD0C4C(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      (*(*(v158 - 8) + 48))(v157, 1, v158);
      v159 = swift_allocBox();
      v853 = v160;
      sub_1AFAD0144(v157, v160, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298);
      v161 = swift_allocObject();
      v162 = v868;
      *(v161 + 16) = v130;
      *(v161 + 24) = v162;
      *(v161 + 32) = v869;
      v163 = swift_allocObject();
      *(v163 + 16) = v159;
      *(v163 + 24) = v161;
      *(v163 + 32) = v154;
      *(v163 + 36) = v155;
      *&v871.f64[0] = v163;
      v164 = *(v156 + *(v856 + 48));
      v165 = v880;
      v166 = v880[2];

      v854[0] = v159;
      v167 = v164;

      if (v166 && (v168 = sub_1AF0D5878(v164), (v169 & 1) != 0))
      {
        v170 = *(v165[7] + 8 * v168);
        *&v950[0] = v170;
      }

      else
      {
        v170 = sub_1AF43E800(MEMORY[0x1E69E7CC0]);
        *&v950[0] = v170;
      }

      v171 = v851 ? v154 : v852;
      v172 = v851 ? v155 : HIDWORD(v852);
      v130 = v872;
      v173 = *(v872 + v843);
      v149 = v850;
      if (v173)
      {
        if (*(v173 + 24))
        {
          break;
        }
      }

      v150 = v860;
LABEL_22:
      v151 = v167;

      sub_1AF8256BC(v152, v151);

      sub_1AFAC55A0(v130, v855, v853);
      sub_1AFAD2E00(v149, type metadata accessor for TriggerScript);

      v148 = info + v859;
      v147 = v150 - 1;
      if (!v147)
      {
        goto LABEL_123;
      }
    }

    v852 = v167;
    *(&v932[1] + 1) = &type metadata for Entity;
    *&v932[2] = &off_1F2535EA8;
    *&v932[0] = __PAIR64__(v172, v171);
    v174 = sub_1AF441150(v932, &type metadata for Entity);
    *(&v924 + 1) = &type metadata for Entity;
    *&v925 = &off_1F2535EA8;
    v175 = sub_1AF585714(&v923);
    v176 = *v174;
    swift_unknownObjectRetain();
    *v175 = sub_1AF6C97E0(v176);
    swift_unknownObjectRelease();
    sub_1AF5C5358(0, &qword_1ED722510);
    v167 = v852;
    swift_dynamicCast();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v932);
    *&v851 = v959;
    v177 = DWORD1(v959);
    v178 = *(v856 + 52);
    v179 = v849;
    sub_1AF9B3B24(v149 + v178, v849 + 16);
    sub_1AFACFD88(v149, v179 + v837[8], type metadata accessor for TriggerScript);
    *v179 = v167;
    *(v179 + 8) = v171;
    *(v179 + 12) = v172;
    v180 = v871.f64[0];
    *(v179 + 56) = sub_1AFAD0578;
    *(v179 + 64) = v180;
    sub_1AF9B3B24(v149 + v178, &v923);
    if (v925 > 2u)
    {
      if (v925 == 3)
      {
        sub_1AFAD0B30(&v923, v932, &qword_1EB641248, &type metadata for VFXObjectReference, sub_1AF6B740C);
        sub_1AF6B724C(v932, &v959, &qword_1EB641248);
        v150 = v860;
        if (v959 == __PAIR128__(1, 0))
        {
          v216 = v852;

          sub_1AF0D9DB0(&v959, &qword_1EB641248);
          v130 = v872;
          goto LABEL_112;
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        v265 = v852;

        sub_1AF4459C8(&v959);
        v130 = v872;
        if (Strong)
        {
          objc_opt_self();
          v266 = swift_dynamicCastObjCClass();
          if (v266)
          {
            v267 = [v266 presentationNode];
            v268 = [v267 coreEntity];

            v269 = HIDWORD(v268);
            if (v268)
            {
              v270 = v268;
            }

            else
            {
              v270 = -1;
            }

            v271 = (v819 + SLODWORD(v841[1].data));
            sub_1AFACFD88(v849, v819, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            *v271 = v270;
            v271[1] = v269;
            v272 = v808;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v272 = sub_1AF4243F8(0, v272[2] + 1, 1, v272);
            }

            v274 = v272[2];
            v273 = v272[3];
            v808 = v272;
            v130 = v872;
            if (v274 >= v273 >> 1)
            {
              v808 = sub_1AF4243F8(v273 > 1, v274 + 1, 1, v808);
            }

            swift_unknownObjectRelease();
            sub_1AF0D9DB0(v932, &qword_1EB641248);
            sub_1AFAD2E00(v849, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            v275 = v808;
            v808[2] = v274 + 1;
            v276 = v275 + ((*(length + 80) + 32) & ~*(length + 80)) + *(length + 72) * v274;
            v277 = v819;
            v278 = &unk_1ED7246F0;
LABEL_101:
            sub_1AFAD0674(v277, v276, v278);
LABEL_113:
            v167 = v852;
            goto LABEL_22;
          }

          swift_unknownObjectRelease();
        }

LABEL_112:
        sub_1AF0D9DB0(v932, &qword_1EB641248);
        sub_1AFAD2E00(v849, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        goto LABEL_113;
      }

      if (v925 == 5)
      {
        v188 = BYTE1(v923);
        v189 = *(v785 + 8 * v923);
        v190 = *(v189 + 16);
        v191 = v167;

        v192 = v803;
        v193 = v804;
        v194 = v805;
        v195 = v806;
        if (v190)
        {
          v196 = sub_1AF419B48(v188);
          v192 = v803;
          v193 = v804;
          v194 = v805;
          v195 = v806;
          if (v197)
          {
            v198 = (*(v189 + 56) + 80 * v196);
            v194 = *v198;
            v193 = v198[1];
            v192 = v198[2];
            v195 = v198[3];
          }
        }

        v799 = v194;
        v800 = v193;
        v801 = v192;
        v130 = v872;
        v199 = v802;
        v150 = v860;
        if (*(v189 + 16))
        {
          v851 = v195;
          v200 = sub_1AF419B48(v188);
          if (v201)
          {
            v202 = *(*(v189 + 56) + 80 * v200 + 64);
          }

          else
          {
            v202 = 0;
          }

          v195 = v851;
        }

        else
        {
          v202 = 0;
        }

        HIDWORD(v195) = 1.0;
        v851 = v195;

        v288 = v827;
        v289 = v832;
        v290 = v832 + *(v827 + 48);
        sub_1AFACFD88(v849, v832, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v291 = v800;
        *v290 = v799;
        *(v290 + 16) = v291;
        v292 = v851;
        *(v290 + 32) = v801;
        *(v290 + 48) = v292;
        *(v290 + 64) = v202;
        v293 = v289;
        v294 = v826;
        sub_1AFAD0584(v293, v826, &unk_1ED724710);
        v295 = *(v288 + 48);
        v296 = *(v294 + v295 + 16);
        v851 = *(v294 + v295);
        v297 = *(v294 + v295 + 48);
        v800 = *(v294 + v295 + 32);
        v801 = v296;
        v799 = v297;
        LOBYTE(v290) = *(v294 + v295 + 64);
        v298 = v199 + v295;
        sub_1AFAD06F0(v294, v199, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v300 = v800;
        v299 = v801;
        *v298 = v851;
        *(v298 + 16) = v299;
        v301 = v799;
        *(v298 + 32) = v300;
        *(v298 + 48) = v301;
        *(v298 + 64) = v290;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v818 = sub_1AF4243DC(0, v818[2] + 1, 1, v818);
        }

        v149 = v850;
        v303 = v818[2];
        v302 = v818[3];
        if (v303 >= v302 >> 1)
        {
          v818 = sub_1AF4243DC(v302 > 1, v303 + 1, 1, v818);
        }

        sub_1AFAD0600(v832, &unk_1ED724710);
        sub_1AFAD2E00(v849, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v304 = v818;
        v818[2] = v303 + 1;
        v276 = v304 + ((*(v828 + 80) + 32) & ~*(v828 + 80)) + *(v828 + 72) * v303;
        v277 = v199;
        v278 = &unk_1ED724710;
        goto LABEL_101;
      }
    }

    else
    {
      if (!v925)
      {
        v208 = v923;
        if (v923)
        {
          v209 = v167;

          v210 = [v208 coreEntity];
          v211 = v210 & 0xFFFFFFFF00000000;
          if (v210)
          {
            v212 = v210;
          }

          else
          {
            v212 = 0xFFFFFFFFLL;
          }

          if (v170[2] && (v213 = sub_1AF449D3C(v211 | v212), (v214 & 1) != 0))
          {
            v215 = *(v170[7] + 8 * v213);
          }

          else
          {
            v215 = MEMORY[0x1E69E7CC0];
          }

          sub_1AFACFD88(v849, v829, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v215 = sub_1AF424448(0, v215[2] + 1, 1, v215);
          }

          v280 = v215[2];
          v279 = v215[3];
          if (v280 >= v279 >> 1)
          {
            v215 = sub_1AF424448(v279 > 1, v280 + 1, 1, v215);
          }

          v215[2] = v280 + 1;
          sub_1AFAD06F0(v829, v215 + ((*(v864 + 80) + 32) & ~*(v864 + 80)) + *(v864 + 72) * v280, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          sub_1AF8254E8(v215, v211 | v212);
          sub_1AF8255BC(v208, v211 | v212);
          sub_1AFAD2E00(v849, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v130 = v872;
          v150 = v860;
        }

        else
        {
          v281 = *(v835 + 48);
          v282 = v822;
          sub_1AFACFD88(v149, v822, type metadata accessor for TriggerScript);
          sub_1AFACFD88(v849, v282 + v281, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v283 = v167;

          v284 = v838;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v284 = sub_1AF424414(0, v284[2] + 1, 1, v284);
          }

          v130 = v872;
          v150 = v860;
          v286 = v284[2];
          v285 = v284[3];
          v838 = v284;
          if (v286 >= v285 >> 1)
          {
            v838 = sub_1AF424414(v285 > 1, v286 + 1, 1, v838);
          }

          sub_1AFAD2E00(v849, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v287 = v838;
          v838[2] = v286 + 1;
          sub_1AFAD06F0(v822, v287 + ((*(v834 + 80) + 32) & ~*(v834 + 80)) + *(v834 + 72) * v286, sub_1AF442A54);
        }

        goto LABEL_22;
      }

      if (v925 == 2)
      {
        v181 = v923;
        v182 = v879;
        v183 = *(v879 + 2);
        v184 = v167;

        *&v851 = v184;
        if (v183 && (v185 = sub_1AF0D5878(v184), (v186 & 1) != 0))
        {
          v187 = *(*(v182 + 7) + 8 * v185);
        }

        else
        {
          v187 = sub_1AF43E818(MEMORY[0x1E69E7CC0]);
        }

        v217 = v849;
        v218 = v861;
        sub_1AFACFD88(v849, v861, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v219 = *(&v181 + 1);
        v220 = v181;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v932[0] = v187;
        sub_1AF855B50(v218, v181, *(&v181 + 1), isUniquelyReferenced_nonNull_native);

        sub_1AF82567C(*&v932[0], v851);
        sub_1AFAD2E00(v217, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v130 = v872;
        v150 = v860;
        goto LABEL_113;
      }
    }

    v203 = sub_1AFDFCEF8();
    v205 = v204;
    if (v203 == sub_1AFDFCEF8() && v205 == v206)
    {
      v207 = v167;
    }

    else
    {
      v222 = sub_1AFDFEE28();
      v223 = v167;

      if ((v222 & 1) == 0)
      {
        v305 = sub_1AFDFCEF8();
        v307 = v306;
        if (v305 == sub_1AFDFCEF8() && v307 == v308)
        {
        }

        else
        {
          v309 = sub_1AFDFEE28();

          if ((v309 & 1) == 0)
          {
            v333 = v851 | (v177 << 32);
            v334 = sub_1AF9713C4(v333, v170);
            if (v334)
            {
              v335 = v334;
            }

            else
            {
              v335 = MEMORY[0x1E69E7CC0];
            }

            sub_1AFACFD88(v849, v813, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v335 = sub_1AF424448(0, v335[2] + 1, 1, v335);
            }

            v150 = v860;
            v337 = v335[2];
            v336 = v335[3];
            if (v337 >= v336 >> 1)
            {
              v335 = sub_1AF424448(v336 > 1, v337 + 1, 1, v335);
            }

            v335[2] = v337 + 1;
            sub_1AFAD06F0(v813, v335 + ((*(v864 + 80) + 32) & ~*(v864 + 80)) + *(v864 + 72) * v337, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            sub_1AF8254E8(v335, v333);
            sub_1AFAD2E00(v849, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            v130 = v872;
            goto LABEL_71;
          }
        }

        v310 = v815;
        v311 = v816;
        v312 = (v816 + *(v815 + 48));
        sub_1AFACFD88(v849, v816, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v313 = v941[7];
        v312[6] = v941[6];
        v312[7] = v313;
        v312[8] = v941[8];
        v314 = v941[3];
        v312[2] = v941[2];
        v312[3] = v314;
        v315 = v941[5];
        v312[4] = v941[4];
        v312[5] = v315;
        v316 = v941[1];
        *v312 = v941[0];
        v312[1] = v316;
        v317 = v311;
        v318 = v814;
        sub_1AFAD0584(v317, v814, &unk_1ED724700);
        v319 = (v318 + *(v310 + 48));
        v320 = v319[7];
        v935 = v319[6];
        v936 = v320;
        v937 = v319[8];
        v321 = v319[4];
        v934 = v319[5];
        v933[1] = v321;
        v322 = v319[2];
        v933[0] = v319[3];
        v932[2] = v322;
        v323 = *v319;
        v932[1] = v319[1];
        v932[0] = v323;
        v324 = (v817 + *(v310 + 48));
        sub_1AFAD06F0(v318, v817, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v325 = v936;
        v324[6] = v935;
        v324[7] = v325;
        v324[8] = v937;
        v326 = v933[0];
        v324[2] = v932[2];
        v324[3] = v326;
        v327 = v934;
        v324[4] = v933[1];
        v324[5] = v327;
        v328 = v932[1];
        *v324 = v932[0];
        v324[1] = v328;
        v329 = v797;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v329 = sub_1AF4241B8(0, v329[2] + 1, 1, v329);
        }

        v130 = v872;
        v150 = v860;
        v331 = v329[2];
        v330 = v329[3];
        if (v331 >= v330 >> 1)
        {
          v329 = sub_1AF4241B8(v330 > 1, v331 + 1, 1, v329);
        }

        v260 = &unk_1ED724700;
        sub_1AFAD0600(v816, &unk_1ED724700);
        sub_1AFAD2E00(v849, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v329[2] = v331 + 1;
        v332 = (*(v783 + 80) + 32) & ~*(v783 + 80);
        v797 = v329;
        v262 = v329 + v332 + *(v783 + 72) * v331;
        v263 = v817;
LABEL_70:
        sub_1AFAD0674(v263, v262, v260);
        v167 = v852;
LABEL_71:
        sub_1AF4470F0(&v923);
        goto LABEL_22;
      }
    }

    v224 = v810[7];
    v851 = v810[6];
    v225 = v810[9];
    v800 = v810[8];
    v801 = v224;
    v799 = v225;
    v226 = v810[2];
    v794 = v810[3];
    v795 = v226;
    v227 = v810[4];
    v792 = v810[5];
    v793 = v227;
    v228 = v810[10];
    v790 = v810[11];
    v791 = v228;
    v229 = v824;
    v230 = v830;
    v231 = (v830 + *(v824 + 48));
    v232 = v810[12];
    v788 = v810[13];
    v789 = v232;
    sub_1AFACFD88(v849, v830, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
    v234 = v800;
    v233 = v801;
    *v231 = v851;
    v231[1] = v233;
    v235 = v799;
    v231[2] = v234;
    v231[3] = v235;
    v236 = v794;
    v231[4] = v795;
    v231[5] = v236;
    v237 = v792;
    v231[6] = v793;
    v231[7] = v237;
    v238 = v790;
    v231[8] = v791;
    v231[9] = v238;
    v239 = v788;
    v231[10] = v789;
    v231[11] = v239;
    v240 = v230;
    v241 = v823;
    sub_1AFAD0584(v240, v823, qword_1ED724720);
    v242 = (v241 + *(v229 + 48));
    v243 = v242[9];
    v937 = v242[8];
    v938 = v243;
    v244 = v242[11];
    v939 = v242[10];
    v940 = v244;
    v245 = v242[5];
    v933[1] = v242[4];
    v934 = v245;
    v246 = v242[7];
    v935 = v242[6];
    v936 = v246;
    v247 = v242[1];
    v932[0] = *v242;
    v932[1] = v247;
    v248 = v242[2];
    v933[0] = v242[3];
    v932[2] = v248;
    v249 = (v831 + *(v229 + 48));
    sub_1AFAD06F0(v241, v831, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
    v250 = v938;
    v249[8] = v937;
    v249[9] = v250;
    v251 = v940;
    v249[10] = v939;
    v249[11] = v251;
    v252 = v934;
    v249[4] = v933[1];
    v249[5] = v252;
    v253 = v936;
    v249[6] = v935;
    v249[7] = v253;
    v254 = v932[1];
    *v249 = v932[0];
    v249[1] = v254;
    v255 = v933[0];
    v249[2] = v932[2];
    v249[3] = v255;
    v256 = v812;
    v257 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v872;
    v150 = v860;
    if ((v257 & 1) == 0)
    {
      v256 = sub_1AF4241D4(0, v256[2] + 1, 1, v256);
    }

    v259 = v256[2];
    v258 = v256[3];
    if (v259 >= v258 >> 1)
    {
      v256 = sub_1AF4241D4(v258 > 1, v259 + 1, 1, v256);
    }

    v260 = qword_1ED724720;
    sub_1AFAD0600(v830, qword_1ED724720);
    sub_1AFAD2E00(v849, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
    v256[2] = v259 + 1;
    v261 = (*(v825 + 80) + 32) & ~*(v825 + 80);
    v812 = v256;
    v262 = v256 + v261 + *(v825 + 72) * v259;
    v263 = v831;
    goto LABEL_70;
  }

  v818 = MEMORY[0x1E69E7CC0];
  v838 = MEMORY[0x1E69E7CC0];
  v812 = MEMORY[0x1E69E7CC0];
  v797 = MEMORY[0x1E69E7CC0];
  v808 = MEMORY[0x1E69E7CC0];
LABEL_123:

  v338 = swift_unknownObjectWeakLoadStrong();
  if (!v338)
  {

    sub_1AF0D9DB0(&v942, &qword_1ED725EA0);
    sub_1AFAD2E00(v899, sub_1AFAD0470);

    v146 = v130;
    goto LABEL_177;
  }

  v339 = *(v807 + 16);
  v340 = v811;
  v837 = v338;
  if (v339)
  {
    v341 = (v807 + 32);
    do
    {
      v343 = *v341;
      v342 = v341[1];
      *(v898 + 13) = *(v341 + 29);
      v897 = v343;
      v898[0] = v342;
      v344 = *(&v343 + 1);
      v345 = v342;
      if (BYTE12(v898[1]))
      {
        sub_1AFAD0758(&v897, v932);
        v346 = v845;
        v347 = sub_1AF419914(v344, v345);
        if (v348)
        {
          v349 = v347;
          v350 = swift_isUniquelyReferenced_nonNull_native();
          *&v932[0] = v346;
          sub_1AF842EDC(v350, v346->length);
          v351 = *&v932[0];

          v352 = *(*(v351 + 56) + 48 * v349);

          v845 = v351;
          sub_1AF6B4360(v349, v351);
        }

        sub_1AFAD0790(&v897);
      }

      else if (*&v898[1] <= 0.0)
      {
        sub_1AFAD0758(&v897, v932);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v340 = sub_1AF424088(0, *(v340 + 2) + 1, 1, v340);
        }

        v356 = *(v340 + 2);
        v355 = *(v340 + 3);
        if (v356 >= v355 >> 1)
        {
          v340 = sub_1AF424088(v355 > 1, v356 + 1, 1, v340);
        }

        *(v340 + 2) = v356 + 1;
        v357 = &v340[48 * v356];
        v358 = v897;
        v359 = v898[0];
        *(v357 + 61) = *(v898 + 13);
        *(v357 + 2) = v358;
        *(v357 + 3) = v359;
      }

      else
      {
        sub_1AFAD0758(&v897, v932);
        sub_1AFAD0758(&v897, v932);
        v353 = v845;
        v354 = swift_isUniquelyReferenced_nonNull_native();
        *&v932[0] = v353;
        sub_1AF855808(&v897, v344, v345, v354);
        sub_1AFAD0790(&v897);
        v845 = *&v932[0];
      }

      v341 += 3;
      --v339;
    }

    while (v339);
  }

  v360 = MEMORY[0x1E69E7CC0];
  v361 = v872;
  sub_1AFBFFEAC();
  v362 = *(v340 + 2);
  *&v849 = @"VFXTriggerTypeTick";
  v852 = v362;
  v811 = v340;
  if (v362)
  {
    v363 = 0;
    *&v851 = v340 + 32;
    v364 = MEMORY[0x1E69E7CC0];
    v365 = v874;
    while (1)
    {
      v855 = v364;
      v366 = v851 + 48 * v363;
      v367 = *v366;
      v368 = *(v366 + 8);
      v369 = *(v366 + 16);
      v370 = *(v366 + 24);
      v371 = *&v839[1].data;
      v871.f64[0] = v368;
      v859 = v363;
      if (*&v370 > v371)
      {
        v860 = v370;
        v372 = *(v366 + 40);
        v373 = *(v366 + 44);
        v374 = v367;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v364 = v855;
        }

        else
        {
          v364 = sub_1AF424088(0, *(v855 + 2) + 1, 1, v855);
        }

        v376 = *(v364 + 2);
        v375 = *(v364 + 3);
        v377 = v860;
        if (v376 >= v375 >> 1)
        {
          v397 = sub_1AF424088(v375 > 1, v376 + 1, 1, v364);
          v377 = v860;
          v364 = v397;
        }

        *(v364 + 2) = v376 + 1;
        v378 = &v364[48 * v376];
        v379 = v871.f64[0];
        *(v378 + 4) = v374;
        *(v378 + 5) = v379;
        *(v378 + 6) = v369;
        *(v378 + 56) = v377;
        *(v378 + 18) = v372;
        v378[76] = v373;
        goto LABEL_141;
      }

      v380 = v880[2];
      v850 = v367;

      if (v380 && (sub_1AF0D5878(v849), (v381 & 1) != 0))
      {
      }

      else
      {
        v382 = sub_1AF43E800(MEMORY[0x1E69E7CC0]);
      }

      v383 = 0;
      v384 = 1 << *(v382 + 32);
      if (v384 < 64)
      {
        v385 = ~(-1 << v384);
      }

      else
      {
        v385 = -1;
      }

      v386 = v385 & *(v382 + 64);
      v853 = ((v384 + 63) >> 6);
      v854[0] = v382;
      while (1)
      {
LABEL_157:
        if (v386)
        {
          goto LABEL_161;
        }

LABEL_158:
        v387 = v383 + 1;
        if (v383 + 1 >= v853)
        {
          break;
        }

        v386 = *(v382 + 8 * v383++ + 72);
        if (!v386)
        {
          goto LABEL_158;
        }

        v383 = v387;
LABEL_161:
        v388 = __clz(__rbit64(v386));
        v386 &= v386 - 1;
        v389 = *(*(v382 + 56) + ((v383 << 9) | (8 * v388)));
        v390 = *(v389 + 16);
        if (v390)
        {
          v391 = v864;
          v392 = v389 + ((*(v864 + 80) + 32) & ~*(v864 + 80));
          *&v860 = *(*(v382 + 56) + ((v383 << 9) | (8 * v388)));

          v393 = *(v391 + 72);
          while (1)
          {
            sub_1AFACFD88(v392, v365, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            sub_1AF9B3B24(v365 + 16, v932);
            if (LOBYTE(v932[2]) == 1)
            {
              break;
            }

            sub_1AFAD2E00(v365, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            sub_1AF4470F0(v932);
LABEL_164:
            v392 += v393;
            if (!--v390)
            {

              v382 = v854[0];
              goto LABEL_157;
            }
          }

          if (*&v932[0] == *&v368 && *(&v932[0] + 1) == v369)
          {
          }

          else
          {
            v395 = sub_1AFDFEE28();

            if ((v395 & 1) == 0)
            {
              goto LABEL_174;
            }
          }

          v396 = *(v874 + 56);
          sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
          v396();
          v365 = v874;

LABEL_174:
          sub_1AFAD2E00(v365, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v368 = v871.f64[0];
          goto LABEL_164;
        }
      }

      v361 = v872;
      v364 = v855;
LABEL_141:
      v363 = v859 + 1;
      if (v859 + 1 == v852)
      {
        goto LABEL_179;
      }
    }
  }

  v364 = v360;
LABEL_179:
  v855 = v364;
  swift_bridgeObjectRetain_n();

  v398 = 1 << LOBYTE(v845[1].isa);
  if (v398 < 64)
  {
    v399 = ~(-1 << v398);
  }

  else
  {
    v399 = -1;
  }

  v400 = v399 & v845[2].isa;
  v401 = ((v398 + 63) >> 6);

  v402 = 0;
  v843 = MEMORY[0x1E69E7CC8];
  v403 = v867;
  v852 = v401;
  if (v400)
  {
LABEL_183:
    while (1)
    {
      v404 = v402;
      v405 = v845;
LABEL_187:
      v406 = __clz(__rbit64(v400));
      v400 &= v400 - 1;
      v407 = v406 | (v404 << 6);
      v408 = &v405[1].data[16 * v407];
      v410 = *v408;
      v409 = *(v408 + 8);
      v411 = (v405[1].length + 48 * v407);
      v412 = *v411;
      v413 = v411[1];
      *(v896 + 13) = *(v411 + 29);
      v896[0] = v413;
      v895 = v412;
      if (*(&v413 + 1) <= *&v839[1].data)
      {
        break;
      }

      sub_1AFAD0758(&v895, v932);

      sub_1AFAD0758(&v895, v932);
      v414 = v843;
      v415 = swift_isUniquelyReferenced_nonNull_native();
      *&v932[0] = v414;
      sub_1AF855808(&v895, v410, v409, v415);
      sub_1AFAD0790(&v895);

      v843 = *&v932[0];
      v402 = v404;
      if (!v400)
      {
        goto LABEL_184;
      }
    }

    v416 = v880;

    sub_1AFAD0758(&v895, v932);
    v417 = sub_1AF9713AC(v849, v416);
    v859 = v400;
    v854[0] = v409;
    v853 = v410;
    if (!v417)
    {
      v417 = sub_1AF43E800(MEMORY[0x1E69E7CC0]);
    }

    v418 = 0;
    v419 = 1 << *(v417 + 32);
    if (v419 < 64)
    {
      v420 = ~(-1 << v419);
    }

    else
    {
      v420 = -1;
    }

    v421 = v420 & *(v417 + 64);
    *&v860 = (v419 + 63) >> 6;
    *&v871.f64[0] = v417;
    while (1)
    {
LABEL_197:
      if (v421)
      {
        goto LABEL_201;
      }

      do
      {
        v422 = v418 + 1;
        if (v418 + 1 >= v860)
        {

          v432 = v895;
          v433 = *&v896[1] + *&v839[1].data;
          v889 = v895;
          v890 = *&v896[0];
          v891 = v433;
          v892 = *&v896[1];
          v893 = DWORD2(v896[1]) + 1;
          v894 = BYTE12(v896[1]);
          sub_1AFAD0758(&v889, v932);
          v434 = v843;
          v435 = swift_isUniquelyReferenced_nonNull_native();
          *&v932[0] = v434;
          sub_1AF855808(&v889, v853, v854[0], v435);

          v843 = *&v932[0];

          v402 = v404;
          v401 = v852;
          v400 = v859;
          if (!v859)
          {
            goto LABEL_184;
          }

          goto LABEL_183;
        }

        v421 = *(v417 + 8 * v418++ + 72);
      }

      while (!v421);
      v418 = v422;
LABEL_201:
      v423 = __clz(__rbit64(v421));
      v421 &= v421 - 1;
      v424 = *(*(v417 + 56) + ((v418 << 9) | (8 * v423)));
      v425 = *(v424 + 16);
      if (v425)
      {
        v426 = v864;
        v427 = v424 + ((*(v864 + 80) + 32) & ~*(v864 + 80));
        *&v874 = *(*(v417 + 56) + ((v418 << 9) | (8 * v423)));

        v428 = *(v426 + 72);
        while (1)
        {
          sub_1AFACFD88(v427, v403, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          sub_1AF9B3B24(v403 + 16, v932);
          if (LOBYTE(v932[2]) == 1)
          {
            break;
          }

          sub_1AFAD2E00(v403, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          sub_1AF4470F0(v932);
LABEL_204:
          v427 += v428;
          if (!--v425)
          {

            v361 = v872;
            v417 = *&v871.f64[0];
            goto LABEL_197;
          }
        }

        if (*&v932[0] == *(&v895 + 1) && *(&v932[0] + 1) == *&v896[0])
        {
        }

        else
        {
          v430 = sub_1AFDFEE28();

          if ((v430 & 1) == 0)
          {
            goto LABEL_214;
          }
        }

        v431 = *(v867 + 56);
        sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
        v431();
        v403 = v867;

LABEL_214:
        sub_1AFAD2E00(v403, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        goto LABEL_204;
      }
    }
  }

LABEL_184:
  v405 = v845;
  while (1)
  {
    v404 = v402 + 1;
    if (v402 + 1 >= v401)
    {
      break;
    }

    v400 = *(&v845[2].info + v402++);
    if (v400)
    {
      goto LABEL_187;
    }
  }

  swift_bridgeObjectRetain_n();

  sub_1AFBFFF2C();

  v436 = v786;
  v437 = sub_1AF449D1C(v786);
  if (v437)
  {
    v438 = v437;
    v439 = 0;
    v440 = v879;
    v441 = v436 + 32;
    v853 = v437;
    v852 = v879;
    *&v851 = v436 + 32;
    do
    {
      v442 = (v441 + 80 * v439);
      v932[0] = *v442;
      v443 = v442[1];
      v444 = v442[2];
      v445 = v442[3];
      *(v933 + 13) = *(v442 + 61);
      v933[0] = v445;
      v932[2] = v444;
      v932[1] = v443;
      v924 = v442[1];
      v925 = v442[2];
      v926[0] = v442[3];
      *(v926 + 13) = *(v442 + 61);
      v923 = *v442;
      if (*(v440 + 2))
      {
        v446 = *&v932[0];
        sub_1AFAD07C4(v932, &v959);
        v447 = v446;
        v448 = sub_1AF0D5878(v447);
        if (v449)
        {
          *&v860 = v439;
          v450 = *&v932[1];
          v451 = *(&v932[0] + 1);
          v452 = *(*(v440 + 7) + 8 * v448);

          v453 = 1 << *(v452 + 32);
          if (v453 < 64)
          {
            v454 = ~(-1 << v453);
          }

          else
          {
            v454 = -1;
          }

          v455 = v454 & *(v452 + 64);
          v456 = (v453 + 63) >> 6;
          *&v871.f64[0] = v451;
          v859 = v451;
          *&v874 = v450;
          v854[0] = v450;
          v457 = 0;
          *&v867 = v452;
          v458 = v452 + 72;
          while (1)
          {
            if (v455)
            {
              v459 = v457;
LABEL_237:
              v462 = __clz(__rbit64(v455));
              v455 &= v455 - 1;
              v463 = v462 | (v459 << 6);
              v464 = *(v867 + 48) + 16 * v463;
              v466 = *v464;
              v465 = *(v464 + 8);
              v467 = v861;
              sub_1AFACFD88(*(v867 + 56) + *(v864 + 72) * v463, v861, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
              sub_1AFAD03B8();
              v469 = v468;
              v470 = *(v468 + 48);
              v471 = v862;
              *v862 = v466;
              *(v471 + 8) = v465;
              sub_1AFAD06F0(v467, v471 + v470, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
              (*(*(v469 - 8) + 56))(v471, 0, 1, v469);
              v472 = v465;
              v473 = v466;
            }

            else
            {
              v460 = v456 <= v457 + 1 ? v457 + 1 : v456;
              v461 = v460 - 1;
              while (1)
              {
                v459 = v457 + 1;
                if (v457 + 1 >= v456)
                {
                  break;
                }

                v455 = *(v458 + 8 * v457++);
                if (v455)
                {
                  v457 = v459;
                  goto LABEL_237;
                }
              }

              sub_1AFAD03B8();
              v469 = v480;
              v471 = v862;
              (*(*(v480 - 8) + 56))(v862, 1, 1, v480);
              v455 = 0;
              v457 = v461;
            }

            v474 = v866;
            sub_1AFAD0B30(v471, v866, &qword_1ED7246E0, sub_1AFAD03B8, sub_1AFACFCD8);
            sub_1AFAD03B8();
            if ((*(*(v469 - 8) + 48))(v474, 1, v469) == 1)
            {
              break;
            }

            v476 = *v474;
            v475 = *(v474 + 8);
            v477 = v863;
            sub_1AFAD06F0(v474 + *(v469 + 48), v863, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            LOBYTE(v959) = 0;
            v478 = sub_1AFAC4A08(*&v871.f64[0], v874, &v959, v476, v475);
            if (v478)
            {
              BYTE12(v926[1]) = v959;
              MEMORY[0x1EEE9AC00](v478, v479);
              *(&v780 - 2) = v477;
              sub_1AFAC8A4C(v872, sub_1AFAD3AD8);
            }

            sub_1AFAD2E00(v477, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          }

          v961 = v925;
          v962[0] = v926[0];
          *(v962 + 13) = *(v926 + 13);
          v960 = v924;
          v959 = v923;
          sub_1AFAD07FC(&v959);

          v361 = v872;
          v438 = v853;
          v439 = v860;
          v440 = v852;
          v441 = v851;
          goto LABEL_220;
        }
      }

      else
      {
        sub_1AFAD07C4(v932, &v959);
      }

      v961 = v925;
      v962[0] = v926[0];
      *(v962 + 13) = *(v926 + 13);
      v960 = v924;
      v959 = v923;
      sub_1AFAD07FC(&v959);
LABEL_220:
      v439 = v439 + 1;
    }

    while (v439 != v438);
  }

  v481 = v808;
  v853 = sub_1AF449D1C(v808);
  if (!v853)
  {
LABEL_263:

    v511 = v820;
    if (v886 == 1)
    {
      v512 = v818;
      v513 = sub_1AF449D1C(v818);
      if (v513)
      {
        v514 = v513;
        v515 = v511 + *(v827 + 48);
        v516 = v512 + ((*(v828 + 80) + 32) & ~*(v828 + 80));
        v517 = *(v828 + 72);
        v863 = xmmword_1AFE4C620;
        v518 = v861;
        do
        {
          sub_1AFAD0584(v516, v511, &unk_1ED724710);
          v519 = *(v515 + 16);
          v874 = *v515;
          v871 = v519;
          v520 = *(v515 + 32);
          v866 = *(v515 + 48);
          v867 = v520;
          v521 = *(v515 + 64);
          sub_1AFAD06F0(v511, v518, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v932[0] = v874;
          v932[1] = v871;
          v932[2] = v867;
          v933[0] = v866;
          LOBYTE(v923) = v521;
          sub_1AFAD0A24();
          v522 = swift_allocObject();
          strcpy((v522 + 32), "worldTransform");
          *(v522 + 16) = v863;
          *(v522 + 47) = -18;
          *(v522 + 48) = v932;
          *(v522 + 56) = 0x64656B63617274;
          *(v522 + 64) = 0xE700000000000000;
          *(v522 + 72) = &v923;
          v523 = sub_1AF43E4E8(v522);
          swift_setDeallocating();
          sub_1AF0D8108(0, &qword_1EB6427B8);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          (*(v518 + 56))(v523);

          sub_1AFAD2E00(v518, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v516 += v517;
          --v514;
        }

        while (v514);
      }
    }

    if (v887 == 1)
    {
      v524 = v812;
      v525 = sub_1AF449D1C(v812);
      if (v525)
      {
        v526 = (v833 + *(v824 + 48));
        v527 = v524 + ((*(v825 + 80) + 32) & ~*(v825 + 80));
        *&v874 = 0x80000001AFF222F0;
        *&v871.f64[0] = 0x80000001AFF22310;
        *&v867 = 0x80000001AFF22330;
        v862 = *(v825 + 72);
        *&v866 = &v926[1];
        v528 = v525 - 1;
        v863 = xmmword_1AFE4C680;
        while (1)
        {
          v529 = v833;
          sub_1AFAD0584(v527, v833, qword_1ED724720);
          v530 = v526[9];
          v937 = v526[8];
          v938 = v530;
          v531 = v526[11];
          v939 = v526[10];
          v940 = v531;
          v532 = v526[5];
          v933[1] = v526[4];
          v934 = v532;
          v533 = v526[7];
          v935 = v526[6];
          v936 = v533;
          v534 = v526[1];
          v932[0] = *v526;
          v932[1] = v534;
          v535 = v526[3];
          v932[2] = v526[2];
          v933[0] = v535;
          v536 = v861;
          sub_1AFAD06F0(v529, v861, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v930[0] = v937;
          v930[1] = v938;
          v930[2] = v939;
          v930[3] = v940;
          v926[1] = v933[1];
          v927 = v934;
          v928 = v935;
          v929 = v936;
          v923 = v932[0];
          v924 = v932[1];
          v925 = v932[2];
          v926[0] = v933[0];
          sub_1AFAD0A24();
          v537 = swift_allocObject();
          *(v537 + 16) = v863;
          *(v537 + 32) = 0xD000000000000015;
          *(v537 + 40) = v874;
          *(v537 + 48) = &v923;
          v538 = v871.f64[0];
          *(v537 + 56) = 0xD000000000000014;
          *(v537 + 64) = v538;
          *(v537 + 72) = v866;
          *(v537 + 80) = 0xD000000000000016;
          *(v537 + 88) = v867;
          *(v537 + 96) = v930;
          v539 = sub_1AF43E4E8(v537);
          swift_setDeallocating();
          sub_1AF0D8108(0, &qword_1EB6427B8);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          (*(v536 + 56))(v539);

          sub_1AFAD2E00(v536, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          if (!v528)
          {
            break;
          }

          --v528;
          v527 += v862;
        }
      }
    }

    v540 = v872;
    if (v888 == 1)
    {
      v541 = v797;
      v542 = sub_1AF449D1C(v797);
      if (v542)
      {
        v543 = v542;
        v544 = v781;
        v545 = &v781[*(v815 + 48)];
        v546 = v541 + ((*(v783 + 80) + 32) & ~*(v783 + 80));
        v547 = *(v783 + 72);
        v548 = v861;
        do
        {
          sub_1AFAD0584(v546, v544, &unk_1ED724700);
          v549 = *(v545 + 7);
          v935 = *(v545 + 6);
          v936 = v549;
          v937 = *(v545 + 8);
          v550 = *(v545 + 3);
          v932[2] = *(v545 + 2);
          v933[0] = v550;
          v551 = *(v545 + 4);
          v934 = *(v545 + 5);
          v933[1] = v551;
          v552 = *v545;
          v932[1] = *(v545 + 1);
          v932[0] = v552;
          sub_1AFAD06F0(v544, v548, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          sub_1AFAC3E18(v932, v548);
          sub_1AFAD2E00(v548, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v546 += v547;
          --v543;
        }

        while (v543);
      }
    }

    v553 = v884;
    *&v851 = sub_1AF449D1C(v884);
    if (v851)
    {
      v554 = 0;
      v850 = v553 + 32;
      *&v849 = @"VFXTriggerTypeTapBegan";
      v844 = @"VFXTriggerTypeTapDragged";
      v845 = @"VFXTriggerTypeTapEnded";
      info = @"VFXTriggerTypeTapCancelled";
      v840 = @"VFXTriggerTypeMouseMoved";
      v841 = @"VFXTriggerTypeKeyDown";
      v839 = @"VFXTriggerTypeKeyUp";
      v848 = @"kHitTestIgnoreChildNodes";
      v847 = @"kHitTestRootNode";
      v846 = xmmword_1AFE4C620;
      do
      {
        *&v867 = v554;
        sub_1AFAD082C(v850 + 32 * v554, &v875);
        sub_1AFAC34F4(&v920);
        v558 = v880;
        v559 = v880[2];
        v560 = v875;
        v561 = v560;
        if (v559 && (v562 = sub_1AF0D5878(v560), (v563 & 1) != 0))
        {
          v564 = *(*(v558 + 56) + 8 * v562);
        }

        else
        {
          v564 = sub_1AF43E800(MEMORY[0x1E69E7CC0]);
        }

        v565 = sub_1AFDFCEF8();
        v567 = v566;
        v569 = v565 == sub_1AFDFCEF8() && v567 == v568;
        *&v874 = v561;
        if (v569)
        {
        }

        else
        {
          v570 = sub_1AFDFEE28();

          if ((v570 & 1) == 0)
          {
            v610 = sub_1AFDFCEF8();
            v612 = v611;
            if (v610 == sub_1AFDFCEF8() && v612 == v613)
            {
              goto LABEL_324;
            }

            v614 = sub_1AFDFEE28();

            if (v614)
            {
              goto LABEL_327;
            }

            v685 = sub_1AFDFCEF8();
            v687 = v686;
            if (v685 == sub_1AFDFCEF8() && v687 == v688)
            {
              goto LABEL_324;
            }

            v689 = sub_1AFDFEE28();

            if (v689)
            {
              goto LABEL_327;
            }

            v690 = sub_1AFDFCEF8();
            v692 = v691;
            if (v690 == sub_1AFDFCEF8() && v692 == v693)
            {
LABEL_324:

LABEL_328:
              v615 = v885;
              if (*(v885 + 16))
              {
                v616 = sub_1AF449CB8(0);
                if (v617)
                {
                  if (v564[2])
                  {
                    v618 = *(*(v615 + 56) + 8 * v616);
                    v619 = sub_1AF449D3C(v618);
                    if (v620)
                    {
                      v621 = *(v564[7] + 8 * v619);

                      v622 = v878;
                      if (v878[2] && (v623 = sub_1AF449D3C(v618), (v624 & 1) != 0) && (v625 = *(v622[7] + 8 * v623), v626 = v876[7], (v627 = swift_unknownObjectWeakLoadStrong()) != 0))
                      {
                        v628 = v627;
                        v871 = vcvtq_f64_f32(v626);
                        sub_1AFAD08C0(0, &unk_1EB642790, &qword_1EB638440, type metadata accessor for VFXHitTestOption, sub_1AFAD092C);
                        v629 = swift_allocObject();
                        v630 = sub_1AF757508(v629, 2);
                        v632 = v631;
                        v633 = v848;
                        *v631 = v848;
                        *(v631 + 8) = 1;
                        v634 = v847;
                        *(v631 + 32) = MEMORY[0x1E69E6370];
                        *(v631 + 40) = v634;
                        *(v631 + 72) = sub_1AF0D4478(0, &qword_1ED72F7F0);
                        *(v632 + 48) = v625;
                        v635 = v625;
                        v636 = v633;
                        v637 = v634;
                        sub_1AF43EA40(v630);

                        type metadata accessor for VFXHitTestOption(0);
                        sub_1AFAD0C04(&qword_1EB637E00, type metadata accessor for VFXHitTestOption);
                        v638 = sub_1AFDFCBE8();

                        v639 = [v628 hitTest:v638 options:{v871.f64[0], v871.f64[1]}];

                        sub_1AF0D4478(0, &qword_1EB6427A0);
                        v640 = sub_1AFDFD418();

                        v641 = sub_1AF449CFC(v640);

                        if (v641)
                        {
                          MEMORY[0x1EEE9AC00](v642, v643);
                          *(&v780 - 2) = v621;
                          v644 = v922;
                          sub_1AF448018(&v920, v922);
                          (*(*(&v644 + 1) + 8))(v872, v868, v869, sub_1AFAD0998, &v780 - 4, v644, *(&v644 + 1));
                        }

                        else
                        {
                        }
                      }

                      else
                      {
                      }

LABEL_375:
                      v699 = sub_1AFDFCEF8();
                      v701 = v700;
                      if (v699 == sub_1AFDFCEF8() && v701 == v702)
                      {
LABEL_377:
                      }

                      else
                      {
                        v703 = sub_1AFDFEE28();

                        if ((v703 & 1) == 0)
                        {
                          v704 = sub_1AFDFCEF8();
                          v706 = v705;
                          if (v704 == sub_1AFDFCEF8() && v706 == v707)
                          {
                            goto LABEL_377;
                          }

                          v708 = sub_1AFDFEE28();

                          if ((v708 & 1) == 0)
                          {
                            goto LABEL_279;
                          }
                        }
                      }

                      sub_1AF850CFC(0);
                      goto LABEL_279;
                    }
                  }
                }
              }

              v645 = v838[2];
              v646 = v858;
              if (!v645)
              {
                goto LABEL_375;
              }

              *&v871.f64[0] = *(v835 + 48);
              v647 = *(v856 + 48);
              v648 = v838 + ((*(v834 + 80) + 32) & ~*(v834 + 80));
              v649 = *(v834 + 72);
              while (2)
              {
                v653 = v857;
                sub_1AFACFD88(v648, v857, sub_1AF442A54);
                sub_1AFAD06F0(v653 + *&v871.f64[0], v646, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                v654 = *(v653 + v647);
                sub_1AFAD2E00(v653, type metadata accessor for TriggerScript);
                v655 = sub_1AFDFCEF8();
                v657 = v656;
                if (v655 == sub_1AFDFCEF8() && v657 == v658)
                {

                  v646 = v858;
                }

                else
                {
                  v660 = sub_1AFDFEE28();

                  v646 = v858;
                  if ((v660 & 1) == 0)
                  {
LABEL_342:
                    sub_1AFAD2E00(v646, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                    v648 += v649;
                    if (!--v645)
                    {
                      goto LABEL_375;
                    }

                    continue;
                  }
                }

                break;
              }

              MEMORY[0x1EEE9AC00](v650, v651);
              *(&v780 - 2) = v646;
              v652 = v922;
              sub_1AF448018(&v920, v922);
              (*(*(&v652 + 1) + 8))(v872, v868, v869, sub_1AFAD3AD8, &v780 - 4, v652, *(&v652 + 1));
              goto LABEL_342;
            }

            v694 = sub_1AFDFEE28();

            if (v694)
            {
LABEL_327:

              goto LABEL_328;
            }

            v695 = sub_1AFDFCEF8();
            v697 = v696;
            if (v695 == sub_1AFDFCEF8() && v697 == v698)
            {

              goto LABEL_386;
            }

            v709 = sub_1AFDFEE28();

            if (v709)
            {

LABEL_386:
              v710 = v838[2];
              if (!v710)
              {
                goto LABEL_279;
              }

              *&v871.f64[0] = *(v835 + 48);
              v711 = *(v856 + 48);
              v712 = v838 + ((*(v834 + 80) + 32) & ~*(v834 + 80));
              v713 = *(v834 + 72);
              while (2)
              {
                v718 = v787;
                sub_1AFACFD88(v712, v787, sub_1AF442A54);
                sub_1AFAD06F0(v718 + *&v871.f64[0], v798, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                v719 = *(v718 + v711);
                sub_1AFAD2E00(v718, type metadata accessor for TriggerScript);
                v720 = sub_1AFDFCEF8();
                v722 = v721;
                if (v720 == sub_1AFDFCEF8() && v722 == v723)
                {

                  v716 = v798;
                }

                else
                {
                  v725 = sub_1AFDFEE28();

                  v716 = v798;
                  if ((v725 & 1) == 0)
                  {
LABEL_390:
                    sub_1AFAD2E00(v716, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                    v712 += v713;
                    if (!--v710)
                    {
                      goto LABEL_279;
                    }

                    continue;
                  }
                }

                break;
              }

              MEMORY[0x1EEE9AC00](v714, v715);
              *(&v780 - 2) = v716;
              v717 = v922;
              sub_1AF448018(&v920, v922);
              (*(*(&v717 + 1) + 8))(v872, v868, v869, sub_1AFAD0894, &v780 - 4, v717, *(&v717 + 1));
              goto LABEL_390;
            }

            v726 = sub_1AFDFCEF8();
            v728 = v727;
            if (v726 == sub_1AFDFCEF8() && v728 == v729)
            {
LABEL_400:

              goto LABEL_403;
            }

            v730 = sub_1AFDFEE28();

            if (v730)
            {

LABEL_403:
              v731 = sub_1AF9713AC(v561, v558);
              if (!v731)
              {
                v731 = sub_1AF43E800(MEMORY[0x1E69E7CC0]);
              }

              v732 = 0;
              v733 = 1 << *(v731 + 32);
              if (v733 < 64)
              {
                v734 = ~(-1 << v733);
              }

              else
              {
                v734 = -1;
              }

              v735 = v734 & *(v731 + 64);
              v862 = (v733 + 63) >> 6;
              *&v863 = v731;
              while (v735)
              {
LABEL_414:
                v737 = __clz(__rbit64(v735));
                v735 &= v735 - 1;
                v738 = *(*(v731 + 56) + ((v732 << 9) | (8 * v737)));
                v739 = *(*&v738 + 16);
                if (v739)
                {
                  *&v866 = v735;
                  v740 = v864;
                  v741 = *&v738 + ((*(v864 + 80) + 32) & ~*(v864 + 80));
                  v871.f64[0] = v738;

                  v742 = *(v740 + 72);
                  v743 = v796;
                  do
                  {
                    sub_1AFACFD88(v741, v743, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                    sub_1AF441194(&v920, v932);
                    sub_1AF5C5358(0, &qword_1EB642788);
                    if (swift_dynamicCast())
                    {
                      v744 = v923;
                      v745 = BYTE8(v923);
                      v746 = sub_1AF9B3B24(v743 + 16, v932);
                      if (LOBYTE(v932[2]) == 4)
                      {
                        v748 = 123;
                        switch(LOBYTE(v932[0]))
                        {
                          case 1:
                            goto LABEL_540;
                          case 2:
                            v748 = 124;
                            goto LABEL_540;
                          case 3:
                            v748 = 125;
                            goto LABEL_540;
                          case 4:
                            v748 = 126;
                            goto LABEL_540;
                          case 5:
                            v748 = 12;
                            goto LABEL_540;
                          case 6:
                            v748 = 13;
                            goto LABEL_540;
                          case 7:
                            v748 = 14;
                            goto LABEL_540;
                          case 8:
                            v748 = 15;
                            goto LABEL_540;
                          case 9:
                            v748 = 17;
                            goto LABEL_540;
                          case 0xA:
                            v748 = 16;
                            goto LABEL_540;
                          case 0xB:
                            v748 = 32;
                            goto LABEL_540;
                          case 0xC:
                            v748 = 34;
                            goto LABEL_540;
                          case 0xD:
                            v748 = 31;
                            goto LABEL_540;
                          case 0xE:
                            v748 = 35;
                            goto LABEL_540;
                          case 0xF:
                            v748 = 0;
                            goto LABEL_540;
                          case 0x10:
                            v748 = 1;
                            goto LABEL_540;
                          case 0x11:
                            v748 = 2;
                            goto LABEL_540;
                          case 0x12:
                            v748 = 3;
                            goto LABEL_540;
                          case 0x13:
                            v748 = 5;
                            goto LABEL_540;
                          case 0x14:
                            v748 = 4;
                            goto LABEL_540;
                          case 0x15:
                            v748 = 38;
                            goto LABEL_540;
                          case 0x16:
                            v748 = 40;
                            goto LABEL_540;
                          case 0x17:
                            v748 = 37;
                            goto LABEL_540;
                          case 0x18:
                            v748 = 6;
                            goto LABEL_540;
                          case 0x19:
                            v748 = 7;
                            goto LABEL_540;
                          case 0x1A:
                            v748 = 8;
                            goto LABEL_540;
                          case 0x1B:
                            v748 = 9;
                            goto LABEL_540;
                          case 0x1C:
                            v748 = 11;
                            goto LABEL_540;
                          case 0x1D:
                            v748 = 45;
                            goto LABEL_540;
                          case 0x1E:
                            v748 = 46;
                            goto LABEL_540;
                          case 0x1F:
                            v748 = 18;
                            goto LABEL_540;
                          case 0x20:
                            v748 = 19;
                            goto LABEL_540;
                          case 0x21:
                            v748 = 20;
                            goto LABEL_540;
                          case 0x22:
                            v748 = 21;
                            goto LABEL_540;
                          case 0x23:
                            v748 = 22;
                            goto LABEL_540;
                          case 0x24:
                            v748 = 23;
                            goto LABEL_540;
                          case 0x25:
                            v748 = 26;
                            goto LABEL_540;
                          case 0x26:
                            v748 = 28;
                            goto LABEL_540;
                          case 0x27:
                            v748 = 25;
                            goto LABEL_540;
                          case 0x28:
                            v748 = 29;
                            goto LABEL_540;
                          case 0x29:
                            v748 = 24;
                            goto LABEL_540;
                          case 0x2A:
                            v748 = 27;
                            goto LABEL_540;
                          case 0x2B:
                            v748 = 30;
                            goto LABEL_540;
                          case 0x2C:
                            v748 = 33;
                            goto LABEL_540;
                          case 0x2D:
                            v748 = 39;
                            goto LABEL_540;
                          case 0x2E:
                            v748 = 41;
                            goto LABEL_540;
                          case 0x2F:
                            v748 = 42;
                            goto LABEL_540;
                          case 0x30:
                            v748 = 43;
                            goto LABEL_540;
                          case 0x31:
                            v748 = 44;
                            goto LABEL_540;
                          case 0x32:
                            v748 = 47;
                            goto LABEL_540;
                          case 0x33:
                            v748 = 50;
                            goto LABEL_540;
                          case 0x34:
                            v748 = 65;
                            goto LABEL_540;
                          case 0x35:
                            v748 = 67;
                            goto LABEL_540;
                          case 0x36:
                            v748 = 69;
                            goto LABEL_540;
                          case 0x37:
                            v748 = 71;
                            goto LABEL_540;
                          case 0x38:
                            v748 = 75;
                            goto LABEL_540;
                          case 0x39:
                            v748 = 76;
                            goto LABEL_540;
                          case 0x3A:
                            v748 = 78;
                            goto LABEL_540;
                          case 0x3B:
                            v748 = 81;
                            goto LABEL_540;
                          case 0x3C:
                            v748 = 82;
                            goto LABEL_540;
                          case 0x3D:
                            v748 = 83;
                            goto LABEL_540;
                          case 0x3E:
                            v748 = 84;
                            goto LABEL_540;
                          case 0x3F:
                            v748 = 85;
                            goto LABEL_540;
                          case 0x40:
                            v748 = 86;
                            goto LABEL_540;
                          case 0x41:
                            v748 = 87;
                            goto LABEL_540;
                          case 0x42:
                            v748 = 88;
                            goto LABEL_540;
                          case 0x43:
                            v748 = 89;
                            goto LABEL_540;
                          case 0x44:
                            v748 = 91;
                            goto LABEL_540;
                          case 0x45:
                            v748 = 92;
                            goto LABEL_540;
                          case 0x46:
                            v748 = 36;
                            goto LABEL_540;
                          case 0x47:
                            v748 = 48;
                            goto LABEL_540;
                          case 0x48:
                            v748 = 49;
                            goto LABEL_540;
                          case 0x49:
                            v748 = 51;
                            goto LABEL_540;
                          case 0x4A:
                            v748 = 53;
                            goto LABEL_540;
                          case 0x4B:
                            v748 = 55;
                            goto LABEL_540;
                          case 0x4C:
                            v748 = 56;
                            goto LABEL_540;
                          case 0x4D:
                            v748 = 57;
                            goto LABEL_540;
                          case 0x4E:
                            v748 = 58;
                            goto LABEL_540;
                          case 0x4F:
                            v748 = 59;
                            goto LABEL_540;
                          case 0x50:
                            v748 = 54;
                            goto LABEL_540;
                          case 0x51:
                            v748 = 60;
                            goto LABEL_540;
                          case 0x52:
                            v748 = 61;
                            goto LABEL_540;
                          case 0x53:
                            v748 = 62;
                            goto LABEL_540;
                          case 0x54:
                            v748 = 63;
                            goto LABEL_540;
                          case 0x55:
                            v748 = 72;
                            goto LABEL_540;
                          case 0x56:
                            v748 = 73;
                            goto LABEL_540;
                          case 0x57:
                            v748 = 74;
                            goto LABEL_540;
                          case 0x58:
                            v748 = 110;
                            goto LABEL_540;
                          case 0x59:
                            v748 = 122;
                            goto LABEL_540;
                          case 0x5A:
                            v748 = 120;
                            goto LABEL_540;
                          case 0x5B:
                            v748 = 99;
                            goto LABEL_540;
                          case 0x5C:
                            v748 = 118;
                            goto LABEL_540;
                          case 0x5D:
                            v748 = 96;
                            goto LABEL_540;
                          case 0x5E:
                            v748 = 97;
                            goto LABEL_540;
                          case 0x5F:
                            v748 = 98;
                            goto LABEL_540;
                          case 0x60:
                            v748 = 100;
                            goto LABEL_540;
                          case 0x61:
                            v748 = 101;
                            goto LABEL_540;
                          case 0x62:
                            v748 = 109;
                            goto LABEL_540;
                          case 0x63:
                            v748 = 103;
                            goto LABEL_540;
                          case 0x64:
                            v748 = 111;
                            goto LABEL_540;
                          case 0x65:
                            v748 = 105;
                            goto LABEL_540;
                          case 0x66:
                            v748 = 107;
                            goto LABEL_540;
                          case 0x67:
                            v748 = 113;
                            goto LABEL_540;
                          case 0x68:
                            v748 = 106;
                            goto LABEL_540;
                          case 0x69:
                            v748 = 64;
                            goto LABEL_540;
                          case 0x6A:
                            v748 = 79;
                            goto LABEL_540;
                          case 0x6B:
                            v748 = 80;
                            goto LABEL_540;
                          case 0x6C:
                            v748 = 90;
                            goto LABEL_540;
                          case 0x6D:
                            v748 = 114;
                            goto LABEL_540;
                          case 0x6E:
                            v748 = 115;
                            goto LABEL_540;
                          case 0x6F:
                            v748 = 116;
                            goto LABEL_540;
                          case 0x70:
                            v748 = 117;
                            goto LABEL_540;
                          case 0x71:
                            v748 = 119;
                            goto LABEL_540;
                          case 0x72:
                            v748 = 121;
                            goto LABEL_540;
                          case 0x73:
                            v748 = 10;
                            goto LABEL_540;
                          case 0x74:
                            v748 = 93;
                            goto LABEL_540;
                          case 0x75:
                            v748 = 94;
                            goto LABEL_540;
                          case 0x76:
                            v748 = 95;
                            goto LABEL_540;
                          case 0x77:
                            v748 = 102;
                            goto LABEL_540;
                          case 0x78:
                            v748 = 104;
LABEL_540:
                            if (v748 == v744)
                            {
                              goto LABEL_541;
                            }

                            break;
                          default:
LABEL_541:
                            if ((BYTE1(v932[0]) & v745) != 1)
                            {
                              goto LABEL_546;
                            }

                            v749 = sub_1AFDFCEF8();
                            v751 = v750;
                            if (v749 == sub_1AFDFCEF8() && v751 == v752)
                            {
                            }

                            else
                            {
                              v753 = sub_1AFDFEE28();

                              if ((v753 & 1) == 0)
                              {
LABEL_546:
                                MEMORY[0x1EEE9AC00](v746, v747);
                                *(&v780 - 2) = v796;
                                v754 = v922;
                                sub_1AF448018(&v920, v922);
                                (*(*(&v754 + 1) + 8))(v872, v868, v869, sub_1AFAD3AD8, &v780 - 4, v754, *(&v754 + 1));
                              }
                            }

                            break;
                        }
                      }

                      else
                      {
                        sub_1AF4470F0(v932);
                      }
                    }

                    v743 = v796;
                    sub_1AFAD2E00(v796, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                    v741 += v742;
                    --v739;
                  }

                  while (v739);

                  v731 = v863;
                  v735 = v866;
                }
              }

              while (1)
              {
                v736 = v732 + 1;
                if (v732 + 1 >= v862)
                {
                  break;
                }

                v735 = *(v731 + 8 * v732++ + 72);
                if (v735)
                {
                  v732 = v736;
                  goto LABEL_414;
                }
              }

              goto LABEL_279;
            }

            v755 = sub_1AFDFCEF8();
            v757 = v756;
            if (v755 == sub_1AFDFCEF8() && v757 == v758)
            {
              goto LABEL_400;
            }

            v759 = sub_1AFDFEE28();

            if (v759)
            {
              goto LABEL_403;
            }

            *&v863 = [objc_opt_self() worldWithWorldRef_];
            v760 = sub_1AF9713AC(v561, v558);
            if (!v760)
            {
              v760 = sub_1AF43E800(MEMORY[0x1E69E7CC0]);
            }

            v761 = 0;
            v762 = 1 << *(v760 + 32);
            if (v762 < 64)
            {
              v763 = ~(-1 << v762);
            }

            else
            {
              v763 = -1;
            }

            v764 = v763 & *(v760 + 64);
            *&v860 = (v762 + 63) >> 6;
            v765 = v861;
            v862 = v760;
            while (v764)
            {
LABEL_561:
              v767 = __clz(__rbit64(v764));
              v764 &= v764 - 1;
              v768 = *(*(v760 + 56) + ((v761 << 9) | (8 * v767)));
              v769 = *(v768 + 16);
              if (v769)
              {
                *&v871.f64[0] = v764;
                *&v874 = v761;
                v770 = v864;
                v771 = v768 + ((*(v864 + 80) + 32) & ~*(v864 + 80));
                *&v866 = v768;

                v772 = *(v770 + 72);
                v773 = v863;
                do
                {
                  v774 = sub_1AFACFD88(v771, v765, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                  v775 = *(v765 + 8);
                  MEMORY[0x1EEE9AC00](v774, v776);
                  *(&v780 - 2) = v765;
                  v778 = *(&v922 + 1);
                  v777 = v922;
                  sub_1AF448018(&v920, v922);
                  v779 = v777;
                  v765 = v861;
                  (*(v778 + 16))(v773, v775, sub_1AFAD3AD8, &v780 - 4, v779, v778);
                  sub_1AFAD2E00(v765, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                  v771 += v772;
                  --v769;
                }

                while (v769);

                v760 = v862;
                v761 = v874;
                v764 = *&v871.f64[0];
              }
            }

            while (1)
            {
              v766 = v761 + 1;
              if (v761 + 1 >= v860)
              {
                break;
              }

              v764 = *(v760 + 8 * v761++ + 72);
              if (v764)
              {
                v761 = v766;
                goto LABEL_561;
              }
            }

            v684 = *&v863;
            goto LABEL_364;
          }
        }

        v871.f64[0] = 0.0;
        v571 = 0;
        v572 = 0;
        v573 = 0;
        v574 = 1 << *(v564 + 32);
        if (v574 < 64)
        {
          v575 = ~(-1 << v574);
        }

        else
        {
          v575 = -1;
        }

        v576 = v575 & v564[8];
        v577 = 3.4028e38;
        v578 = (v574 + 63) >> 6;
        while (v576)
        {
          v579 = v576;
LABEL_301:
          v576 = (v579 - 1) & v579;
          v582 = v878;
          if (v878[2])
          {
            v583 = __clz(__rbit64(v579)) | (v573 << 6);
            v584 = *(v564[7] + 8 * v583);
            v585 = sub_1AF449D3C(*(v564[6] + 8 * v583));
            if (v586)
            {
              v587 = *(v582[7] + 8 * v585);
              v588 = v876[7];
              v589 = swift_unknownObjectWeakLoadStrong();
              if (v589)
              {
                *&v860 = v576;
                *&v863 = v572;
                *&v866 = v571;
                *v854 = vcvtq_f64_f32(v588);
                v852 = type metadata accessor for VFXHitTestOption;
                v853 = v589;
                sub_1AFAD08C0(0, &unk_1EB642790, &qword_1EB638440, type metadata accessor for VFXHitTestOption, sub_1AFAD092C);
                v590 = swift_allocObject();
                *(v590 + 16) = v846;
                v591 = v848;
                *(v590 + 32) = v848;
                *(v590 + 40) = 1;
                v592 = v847;
                *(v590 + 64) = MEMORY[0x1E69E6370];
                *(v590 + 72) = v592;
                *(v590 + 104) = sub_1AF0D4478(0, &qword_1ED72F7F0);
                *(v590 + 80) = v587;
                v859 = v587;
                v862 = v584;

                v593 = v591;
                v594 = v592;
                sub_1AF43EA40(v590);
                swift_setDeallocating();
                sub_1AFAD092C(0, &qword_1EB638440, v852);
                swift_arrayDestroy();
                swift_deallocClassInstance();
                type metadata accessor for VFXHitTestOption(0);
                sub_1AFAD0C04(&qword_1EB637E00, type metadata accessor for VFXHitTestOption);
                v595 = sub_1AFDFCBE8();

                v596 = v853;
                v597 = [v853 hitTest:v595 options:{*v854, *&v854[1]}];

                sub_1AF0D4478(0, &qword_1EB6427A0);
                v572 = sub_1AFDFD418();

                if (v572 >> 62)
                {
                  v598 = sub_1AFDFE108();
                }

                else
                {
                  v598 = *((v572 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v599 = v862;
                v576 = v860;
                if (v598 >= 1 && ((v572 & 0xC000000000000001) != 0 ? (v600 = MEMORY[0x1B2719C70](0, v572)) : (v600 = *(v572 + 32)), v601 = v600, [v600 sortingValue], v603 = v602, v601, v603 < v577))
                {

                  if ((v572 & 0xC000000000000001) != 0)
                  {
                    v604 = MEMORY[0x1B2719C70](0, v572);
                  }

                  else
                  {
                    v604 = *(v572 + 32);
                  }

                  v605 = v604;
                  [v604 sortingValue];
                  v577 = v606;

                  *&v871.f64[0] = v859;
                  v571 = v599;
                }

                else
                {

                  v571 = v866;
                  v572 = v863;
                }
              }
            }
          }
        }

        v580 = v873;
        while (1)
        {
          v581 = v573 + 1;
          if (v573 + 1 >= v578)
          {
            break;
          }

          v579 = v564[v573++ + 9];
          if (v579)
          {
            v573 = v581;
            goto LABEL_301;
          }
        }

        if (!v572 || !v571)
        {
          goto LABEL_350;
        }

        v607 = v871.f64[0];
        if (!*&v871.f64[0])
        {

LABEL_350:

LABEL_351:
          v661 = v838;
          v662 = sub_1AF449D1C(v838);
          if (v662)
          {
            v663 = v662;
            v664 = *(v835 + 48);
            v665 = *(v856 + 48);
            v666 = v661 + ((*(v834 + 80) + 32) & ~*(v834 + 80));
            v667 = *(v834 + 72);
            while (1)
            {
              v668 = v865;
              sub_1AFACFD88(v666, v865, sub_1AF442A54);
              sub_1AFAD06F0(v668 + v664, v580, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
              v669 = *(v668 + v665);
              sub_1AFAD2E00(v668, type metadata accessor for TriggerScript);
              v670 = sub_1AFDFCEF8();
              v672 = v671;
              if (v670 == sub_1AFDFCEF8() && v672 == v673)
              {
                break;
              }

              v675 = sub_1AFDFEE28();

              if (v675)
              {
                goto LABEL_361;
              }

LABEL_353:
              v580 = v873;
              sub_1AFAD2E00(v873, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
              v666 += v667;
              if (!--v663)
              {
                goto LABEL_363;
              }
            }

LABEL_361:
            MEMORY[0x1EEE9AC00](v676, v677);
            *(&v780 - 2) = v873;
            v678 = v922;
            sub_1AF448018(&v920, v922);
            (*(*(&v678 + 1) + 8))(v872, v868, v869, sub_1AFAD3AD8, &v780 - 4, v678, *(&v678 + 1));
            v679 = sub_1AF449CB8(0);
            if (v680)
            {
              v681 = v679;
              v682 = swift_isUniquelyReferenced_nonNull_native();
              *&v932[0] = v885;
              v885 = 0x8000000000000000;
              sub_1AF842E84(v682, *(*&v932[0] + 24));
              v683 = *&v932[0];
              sub_1AF6B2F08(v681, *&v932[0]);
              v885 = v683;
            }

            goto LABEL_353;
          }

LABEL_363:
          v684 = v871.f64[0];
LABEL_364:

          goto LABEL_279;
        }

        sub_1AF441194(&v920, &v931);
        sub_1AF5C5358(0, &qword_1EB642788);
        v608 = *&v607;
        v609 = swift_dynamicCast();

        if ((v609 & 1) == 0)
        {

          v926[0] = 0u;
          v925 = 0u;
          v924 = 0u;
          v923 = 0u;
          sub_1AF0D9DB0(&v923, &qword_1EB6427A8);
          v580 = v873;
          goto LABEL_351;
        }

        sub_1AFAD09A0(&v923, v932);
        v555 = sub_1AFABF06C(v572);

        *(&v933[0] + 1) = v555;
        sub_1AFAC8CAC(v932, v571);

        v556 = sub_1AF9A3170();
        v557 = swift_isUniquelyReferenced_nonNull_native();
        *&v923 = v885;
        sub_1AF852D2C(v556, 0, v557);

        v885 = v923;
        sub_1AFAD09F4(v932);
LABEL_279:
        v554 = v867 + 1;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v920);
        sub_1AFAD0864(&v875);
        v540 = v872;
      }

      while (v554 != v851);
    }

    sub_1AF0D9DB0(&v942, &qword_1ED725EA0);
    sub_1AFAD2E00(v899, sub_1AFAD0470);

    sub_1AFAC4F14(&v883, v540, &v881, v882);

LABEL_567:

    sub_1AF645830(&v883);
    return;
  }

  v482 = 0.0;
  v852 = (v840 + SLODWORD(v841[1].data));
  *&v851 = v481 + ((*(length + 80) + 32) & ~*(length + 80));
  v850 = *(length + 72);
  v849 = xmmword_1AFE431C0;
LABEL_249:
  v483 = v840;
  sub_1AFAD0584(v851 + v850 * *&v482, v840, &unk_1ED7246F0);
  v484 = *v852;
  v485 = *(v852 + 1);
  v486 = v844;
  v487 = (v844 + SLODWORD(v841[1].data));
  sub_1AFAD06F0(v483, v844, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  *v487 = v484;
  v487[1] = v485;
  sub_1AF5C9198(v901);
  sub_1AFAD0308(0, &qword_1ED726A10, &qword_1ED72C1D0);
  v488 = swift_allocObject();
  *(v488 + 16) = v849;
  *(v488 + 56) = &type metadata for EmitterReference;
  *(v488 + 64) = &off_1F2563D20;
  *(v488 + 32) = v484;
  v489 = v488 + 32;
  *(v488 + 36) = v485;
  sub_1AF5FDBF0(v902);
  sub_1AFAD2E00(v901, sub_1AF9B41F4);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v489);
  swift_deallocClassInstance();
  v910[0] = v902[0];
  v910[1] = v902[1];
  v911 = v903;
  sub_1AF6B06C0(v361, v910, 0x200000000, v950);
  v932[2] = v950[2];
  v933[0] = v951;
  v933[1] = v952;
  v934 = v953;
  v932[0] = v950[0];
  v932[1] = v950[1];
  *&v863 = *&v950[0];
  if (!*&v950[0])
  {
    sub_1AFAD2E00(v902, sub_1AF9B41F4);
    goto LABEL_248;
  }

  v854[0] = *&v482;
  v492 = *(&v950[2] + 1);
  v493 = *(&v951 + 1);
  v494 = *(&v952 + 1);
  v862 = v952;
  v955 = *(v950 + 8);
  v956 = *(&v950[1] + 8);
  MEMORY[0x1EEE9AC00](v490, v491);
  v139 = (&v780 - 6);
  v495 = v868;
  *(&v780 - 4) = v361;
  *(&v780 - 3) = v495;
  *(&v780 - 16) = v869;
  *(&v780 - 1) = v486;
  *&v860 = v496;
  if (v496 <= 0 || !v493)
  {
    sub_1AFAD2E00(v902, sub_1AF9B41F4);
    sub_1AF0D9DB0(v950, &qword_1ED725EA0);
    goto LABEL_262;
  }

  v848 = &v780;
  v497 = *(v494 + 4);
  LODWORD(v874) = *(v862 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v925 = v932[2];
  v926[0] = v933[0];
  v926[1] = v933[1];
  v927 = v934;
  v923 = v932[0];
  v924 = v932[1];
  sub_1AF5DD298(&v923, &v920);
  v498 = (v492 + 24);
  v859 = v494;
  while (1)
  {
    v499 = *(v498 - 6);
    v500 = *(v498 - 5);
    v501 = *(v498 - 4);
    v502 = *v498;
    *&v871.f64[0] = *(v498 - 1);
    *&v867 = v502;
    v503 = v498[2];
    *&v866 = v498[1];
    if (v874)
    {
      v504 = v493;
      v505 = v139;
      v506 = v497;
      v507 = *(v503 + 376);

      v508 = v507;
      v497 = v506;
      v139 = v505;
      v493 = v504;
      os_unfair_lock_lock(v508);
      os_unfair_lock_lock(*(v503 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v497);

    v129 = v859;
    sub_1AF630914(v509, v859, v954);

    LOBYTE(v920) = 1;
    *&v959 = v862;
    *(&v959 + 1) = v503;
    *&v960 = v129;
    *(&v960 + 1) = v501;
    *&v961 = (v500 - v499 + v501);
    *(&v961 + 1) = v860;
    *&v962[0] = v499;
    *(&v962[0] + 1) = v500;
    v962[1] = 0uLL;
    v963 = 1;
    v964 = v871.f64[0];
    v965 = v867;
    v966 = v866;
    v131 = v497;
    v510 = v870;
    sub_1AF88A110(&v959, sub_1AFAD0A94, v139);
    if (v510)
    {
      break;
    }

    v907 = v863;
    v908 = v955;
    v909 = v956;
    sub_1AF630994(v129, &v907, v954);
    v870 = 0;
    sub_1AF62D29C(v503);
    ecs_stack_allocator_pop_snapshot(v131);
    v497 = v131;
    if (v874)
    {
      os_unfair_lock_unlock(*(v503 + 344));
      os_unfair_lock_unlock(*(v503 + 376));
    }

    v498 += 6;
    if (!--v493)
    {
      sub_1AFAD2E00(v902, sub_1AF9B41F4);
      sub_1AF0D9DB0(v950, &qword_1ED725EA0);
      sub_1AF0D9DB0(v950, &qword_1ED725EA0);
      v361 = v872;
      v486 = v844;
LABEL_262:
      v482 = *v854;
LABEL_248:
      ++*&v482;
      sub_1AFAD0600(v486, &unk_1ED7246F0);
      if (*&v482 == v853)
      {
        goto LABEL_263;
      }

      goto LABEL_249;
    }
  }

  v920 = v863;
  v921 = v955;
  v922 = v956;
  v144 = 0;
  sub_1AF630994(v129, &v920, v954);
  sub_1AF62D29C(v503);
  ecs_stack_allocator_pop_snapshot(v131);
  os_unfair_lock_unlock(*(v503 + 344));
  os_unfair_lock_unlock(*(v503 + 376));
  __break(1u);
LABEL_571:

  *&v932[0] = v852;
  *(v932 + 8) = v957;
  *(&v932[1] + 8) = v958;
  sub_1AF630994(v129, v932, v967);
  sub_1AF62D29C(v139);
  ecs_stack_allocator_pop_snapshot(v131);
  os_unfair_lock_unlock(*(v139 + 43));
  os_unfair_lock_unlock(*(v139 + 47));
  __break(1u);
}

uint64_t sub_1AFACE760(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6)
{
  v82 = a6;
  v83 = a5;
  v84 = a3;
  v85 = a4;
  v86 = a2;
  v110 = *MEMORY[0x1E69E9840];
  sub_1AFAD0C4C(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v79 - v10;
  v12 = type metadata accessor for TriggerScript(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v79 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v79 - v22;
  v24 = v8[13];
  v25 = *(a1 + v24);
  sub_1AFACFD88(a1, &v79 - v22, type metadata accessor for TriggerScript);
  v26 = v23[40];
  sub_1AFAD2E00(v23, type metadata accessor for TriggerScript);
  if (v25 != 1)
  {
    goto LABEL_4;
  }

  if (v26 == 1)
  {
    return 0;
  }

  if (!v26)
  {
LABEL_4:
    *(a1 + v24) = 1;
  }

  v81 = HIDWORD(v85);
  sub_1AFACFE6C(a1, v11, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298);
  sub_1AFACFD88(v11, v19, type metadata accessor for TriggerScript);

  sub_1AFACFDF0(v11, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v27 = *v19;

  sub_1AFAD2E00(v19, type metadata accessor for TriggerScript);
  sub_1AFACFD88(a1, v15, type metadata accessor for TriggerScript);
  v28 = v15[24];
  sub_1AFAD2E00(v15, type metadata accessor for TriggerScript);
  if (v28 >= 4)
  {
    v30 = v86;

LABEL_11:
    v32 = *(a1 + v8[9]);
    if (v32 && (v33 = *(v32 + 96)) != 0)
    {
      v34 = v83;
      v86 = HIDWORD(v83);
      v35 = a1 + v8[14];
      v80 = *v35;
      v36 = *(v35 + 8);
      sub_1AF0D4478(0, &qword_1EB642748);
      v37 = v33;
      swift_retain_n();
      v38 = v37;

      v39 = v82;

      v40 = MEMORY[0x1B2719630](MEMORY[0x1E69E7CC0]);
      v87 = v36;
      *&v92 = v38;
      *(&v92 + 1) = v30;
      *&v93 = v27;
      *(&v93 + 1) = v39;
      v41 = v80;
      *&v94 = v80;
      BYTE8(v94) = v36;
      *(&v94 + 9) = v88;
      BYTE11(v94) = v89;
      HIDWORD(v94) = v34;
      LODWORD(v95) = v86;
      *(&v95 + 1) = v40;
      v96 = MEMORY[0x1E69E7CC0];
      if (sub_1AFAD4FA4())
      {
        v43 = thread_worker_index(v42);
        if (*v43 == -1)
        {
          v44 = *(v30 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        }

        else
        {
          v44 = *(v30 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v43 + 8;
        }

        v45 = *(*v44 + 32);
        v46 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
        swift_unknownObjectUnownedInit();
        v47 = 3031;
        if (!v36)
        {
          v47 = v41;
        }

        *&v98 = v47;
        *(&v98 + 1) = v30;
        *(&v99 + 1) = __PAIR64__(v81, v85);
        *&v101 = 0;
        v100 = v45;
        BYTE8(v101) = 1;
        *&v102 = 0;
        *(&v102 + 1) = v46;
        if (v84)
        {
          Strong = swift_unknownObjectUnownedLoadStrong();
        }

        else
        {
          Strong = 0;
        }

        swift_unknownObjectUnownedAssign();

        sub_1AFABB57C(&v98, &v105);
        sub_1AFAC604C(&v105, v30, v38, &v92, a1);

        sub_1AFABB5D8(&v105);
        v90[2] = v94;
        v90[3] = v95;
        v91 = v96;
        v90[0] = v92;
        v90[1] = v93;
        v60 = v90;
      }

      else
      {

        *&v106[16] = v94;
        v107 = v95;
        *&v108 = v96;
        v105 = v92;
        *v106 = v93;
        v60 = &v105;
      }

      sub_1AFACFEF0(v60);
    }

    else
    {
    }

    return 1;
  }

  v30 = v86;
  v31 = sub_1AFDFEE28();

  if (v31)
  {

    goto LABEL_11;
  }

  v49 = *(a1 + v8[10]);
  if (v49)
  {
    v50 = *(v49 + 32);
    v51 = v8[14];
    v52 = a1 + v8[15];
    v53 = *(v52 + 8);
    v54 = a1 + v51;
    v55 = *(a1 + v51);
    LODWORD(v86) = *(v54 + 8);
    LOBYTE(v90[0]) = v86;
    LOBYTE(v88) = 0;
    if (v53)
    {
      v56 = v53;
    }

    else
    {
      v57 = *(v27 + 16);
      if (v57)
      {
        sub_1AF6B740C(0, &qword_1ED724EE0);
        v56 = sub_1AFDFD488();
        *(v56 + 16) = v57;
        v58 = 32;
        do
        {
          v59 = v56 + v58;
          *v59 = 0;
          *(v59 + 8) = 0;
          *(v59 + 16) = 0;
          *(v59 + 24) = xmmword_1AFE4C450;
          v58 += 40;
          --v57;
        }

        while (v57);
      }

      else
      {
        v56 = MEMORY[0x1E69E7CC0];
      }
    }

    *&v105 = 0;
    *(&v105 + 1) = v27;
    *v106 = v55;
    v106[8] = v90[0];
    *&v106[12] = v83;
    v106[20] = v88;
    *&v106[24] = v56;
    *&v107 = MEMORY[0x1E69E7CC0];
    *(&v107 + 1) = MEMORY[0x1E69E7CC0];
    v108 = 0uLL;
    *v109 = 0;
    *&v109[8] = xmmword_1AFE22A20;
    v61 = thread_worker_index;
    v62 = thread_worker_index(xmmword_1AFE22A20);
    v63 = *(v30 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    if (*v62 == -1)
    {
      v64 = *(v30 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    }

    else
    {
      v64 = (v63 + 8 * *v62 + 8);
    }

    v65 = *v64;

    if ((sub_1AFAE1FA0(v65, v84) & 1) == 0)
    {

      v102 = v108;
      v103 = *v109;
      v104 = *&v109[16];
      v98 = v105;
      v99 = *v106;
      v100 = *&v106[16];
      v101 = v107;
      sub_1AFABB4CC(&v98);
      return 0;
    }

    v83 = v50;
    v66 = v105;
    v67 = *&v106[24];

    v68 = v84;

    *(v52 + 8) = v67;
    v69 = (v61)(&thread_worker_index);
    if (*v69 == -1)
    {
      v70 = v63;
    }

    else
    {
      v70 = v63 + 8 * *v69 + 8;
    }

    v71 = *(*v70 + 32);
    swift_unknownObjectUnownedInit();
    v72 = 3031;
    if (!v86)
    {
      v72 = v55;
    }

    *&v92 = v72;
    *(&v92 + 1) = v30;
    *(&v93 + 1) = __PAIR64__(v81, v85);
    *&v95 = 0;
    v94 = v71;
    BYTE8(v95) = 1;
    v96 = v66;
    v97 = v82;
    if (v68)
    {
      v73 = swift_unknownObjectUnownedLoadStrong();
    }

    else
    {
      v73 = 0;
    }

    v74 = v83;
    swift_unknownObjectUnownedAssign();

    sub_1AFABB57C(&v92, &v98);
    v74(&v98);
    sub_1AFABB5D8(&v98);
    v75 = *(v107 + 16);
    if (v75)
    {
      v76 = v107 + 40;
      do
      {
        v77 = *(v76 - 8);

        v77(v78);

        v76 += 16;
        --v75;
      }

      while (v75);
    }

    v102 = v108;
    v103 = *v109;
    v104 = *&v109[16];
    v98 = v105;
    v99 = *v106;
    v100 = *&v106[16];
    v101 = v107;
    sub_1AFABB4CC(&v98);
    return 1;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AFACF034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v88 = a1;
  sub_1AFACFCD8(0, &unk_1ED725EB0, type metadata accessor for GraphScript);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v83 - v6;
  v8 = type metadata accessor for GraphScript(0);
  v84 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v87 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFACFCD8(0, &qword_1ED725998, type metadata accessor for EmitterScript);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v83 - v13;
  v15 = type metadata accessor for EmitterScript(0);
  v85 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFAD0C4C(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v83 - v26;
  updated = type metadata accessor for ParticleUpdateScript(0);
  MEMORY[0x1EEE9AC00](updated, updated);
  if (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81) == 1 && (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 84) & 1) == 0)
  {
    v83 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        v36 = a2;
        v37 = *(v88 + 8);

        sub_1AF3CF378(v37, v14);

        v38 = *(v85 + 48);
        if (v38(v14, 1, v15) == 1)
        {
          *v18 = 0;
          v18[32] = 0;
          v39 = *(v15 + 32);
          v40 = type metadata accessor for ScriptIndex();
          (*(*(v40 - 8) + 56))(&v18[v39], 1, 1, v40);
          v41 = &v18[*(v15 + 36)];
          *v41 = 0;
          *(v41 + 1) = 0;
          *(v18 + 2) = 0x80000001AFF2B740;
          *(v18 + 3) = &unk_1F2507150;
          *(v18 + 1) = 0xD0000000000000C0;
          if (v38(v14, 1, v15) != 1)
          {
            sub_1AFACFD2C(v14, &qword_1ED725998, type metadata accessor for EmitterScript);
          }
        }

        else
        {
          sub_1AFAD06F0(v14, v18, type metadata accessor for EmitterScript);
        }

        sub_1AFAD0C4C(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
        v48 = v36;
        v50 = sub_1AF6824B0(v49, &off_1F2558F90, v37);
        if (v50)
        {
          v51 = v50;
          v52 = *(v88 + 32);
          sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
          sub_1AFABC528(v51, v48, v86, v37, v52);

          sub_1AFABF7C8(v53);
        }

        v54 = type metadata accessor for EmitterScript;
        v34 = v18;
      }

      else
      {
        v42 = a2;
        if (!swift_dynamicCastMetatype())
        {
LABEL_51:
          *&v90[0] = 0;
          *(&v90[0] + 1) = 0xE000000000000000;
          sub_1AFDFE218();

          *&v90[0] = 0xD000000000000011;
          *(&v90[0] + 1) = 0x80000001AFF2E910;
          v82 = sub_1AFDFF4B8();
          MEMORY[0x1B2718AE0](v82);

          MEMORY[0x1B2718AE0](33, 0xE100000000000000);
          sub_1AFDFE518();
          __break(1u);
          return;
        }

        v43 = *(v88 + 8);

        sub_1AF3CF34C(v43, v7);

        v44 = *(v84 + 48);
        if (v44(v7, 1, v8) == 1)
        {
          v45 = v87;
          *v87 = MEMORY[0x1E69E7CC0];
          *(v45 + 8) = 0;
          *(v45 + 16) = 0xE000000000000000;
          *(v45 + 24) = 3;
          *(v45 + 32) = &unk_1F2507180;
          *(v45 + 40) = 0;
          *(v45 + 48) = 0;
          *(v45 + 56) = 0;
          v46 = *(v8 + 44);
          v47 = type metadata accessor for ScriptIndex();
          (*(*(v47 - 8) + 56))(v45 + v46, 1, 1, v47);
          if (v44(v7, 1, v8) != 1)
          {
            sub_1AFACFD2C(v7, &unk_1ED725EB0, type metadata accessor for GraphScript);
          }
        }

        else
        {
          sub_1AFAD06F0(v7, v87, type metadata accessor for GraphScript);
        }

        if (*(v87 + 41))
        {
          sub_1AFAD0C4C(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
          v75 = v42;
          v77 = sub_1AF6824B0(v76, &off_1F2558F90, v43);
          if (v77)
          {
            v78 = v77;
            v79 = *(v88 + 32);
            v80 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
            sub_1AFAC6AEC(v78, v75, v86, v43, v79, v80);

            sub_1AFABF7C8(v81);
          }
        }

        v54 = type metadata accessor for GraphScript;
        v34 = v87;
      }

      goto LABEL_46;
    }

    v30 = *(v88 + 8);
    v31 = a2;
    v32 = sub_1AF6824B0(v20, &off_1F2558F90, v30);
    if (!v32)
    {
      return;
    }

    v33 = v32;
    sub_1AFACFE6C(v32, v27, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8);
    sub_1AFACFD88(v27, v83, type metadata accessor for ParticleUpdateScript);
    sub_1AFACFDF0(v27, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
    v34 = v83;
    if (*(v83 + 24) != 2)
    {
      sub_1AFACFE6C(v33, v23, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8);
      if (*&v23[v20[10]] || *&v23[v20[11]])
      {
        sub_1AFACFDF0(v23, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
        if ((*(v83 + 40) & 1) == 0 && *(*(v83 + 32) + 16) && !sub_1AFABF13C(*(v88 + 32)))
        {
          v54 = type metadata accessor for ParticleUpdateScript;
          v34 = v83;
          goto LABEL_46;
        }

        v35 = *(a2 + 56) == 1;
        v87 = v30;
        if (v35)
        {
          sub_1AF68B2A4(v30, a2);
        }

        v84 = 0;
        v55 = *(v33 + v20[15]);
        v56 = *(v55 + 16);

        v57 = 0;
        v58 = v56 + 1;
        v59 = MEMORY[0x1E69E7CC0];
        v60 = 32;
LABEL_27:
        v61 = v60 + 40 * v57;
        while (v58 != ++v57)
        {
          v62 = *(v55 + v61);
          v61 += 40;
          if (((v62 >> 59) & 0x1E | (v62 >> 2) & 1) == 0xA)
          {

            v63 = sub_1AFDFDFD8();
            v64 = swift_conformsToProtocol2();
            if (!v64)
            {
              __break(1u);
              goto LABEL_51;
            }

            v65 = v64;
            sub_1AF443F24(v62);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v85 = v60;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v59 = sub_1AF420E4C(0, *(v59 + 2) + 1, 1, v59);
            }

            v68 = *(v59 + 2);
            v67 = *(v59 + 3);
            if (v68 >= v67 >> 1)
            {
              v59 = sub_1AF420E4C(v67 > 1, v68 + 1, 1, v59);
            }

            v69 = *(v65 + 8);
            *(v59 + 2) = v68 + 1;
            v70 = &v59[16 * v68];
            *(v70 + 4) = v63;
            *(v70 + 5) = v69;
            a2 = v31;
            v60 = v85;
            goto LABEL_27;
          }
        }

        v71 = v88;
        v72 = *(v88 + 104);
        v90[6] = *(v88 + 88);
        v90[7] = v72;
        v91 = *(v88 + 120);
        sub_1AF5B4630(v59, v89);

        sub_1AF6B06C0(a2, v89, 0x200000000, v90);
        v73 = *(v71 + 32);
        if (!*&v90[0])
        {
          v74 = *(v71 + 32);
          sub_1AFABF248(v74, v89);
          v73 = v74;
        }

        sub_1AFABBE38(v89, v90, v87, v73, v33, a2, v86);
        sub_1AF0D9DB0(v90, &qword_1ED725EA0);
        sub_1AF692DB0(v89);
      }

      else
      {
        sub_1AFACFDF0(v23, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      }

      v34 = v83;
    }

    v54 = type metadata accessor for ParticleUpdateScript;
LABEL_46:
    sub_1AFAD2E00(v34, v54);
  }
}

void sub_1AFACFCD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AFACFD2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1AFACFCD8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AFACFD88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFACFDF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFAD0C4C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFACFE6C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1AFAD0C4C(0, a3, a4, a5, type metadata accessor for ScriptRuntime);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AFACFF4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1AFACFF64()
{
  result = qword_1EB642750;
  if (!qword_1EB642750)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB642750);
  }

  return result;
}

void sub_1AFAD0018(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_1AFAD0C4C(255, a3, a4, a5, type metadata accessor for ScriptRuntime);
    v6 = sub_1AFDFDD58();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AFAD0088()
{
  if (!qword_1ED723B10)
  {
    type metadata accessor for SimpleScript(255);
    sub_1AFAD0C4C(255, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723B10);
    }
  }
}

uint64_t sub_1AFAD0144(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1AFAD0C4C(0, a3, a4, a5, type metadata accessor for ScriptRuntime);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1AFAD01C8()
{
  if (!qword_1ED723B40)
  {
    type metadata accessor for GraphScript(255);
    sub_1AFAD0C4C(255, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723B40);
    }
  }
}

uint64_t sub_1AFAD0284(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 28);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  v10[2] = a1;
  v10[3] = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = *(v1 + 52);
  v17 = v8;
  v18 = *(v1 + 72);
  return sub_1AFC3FA8C(v3 | (v4 << 32), sub_1AFAD0360, v10);
}

void sub_1AFAD0308(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AF5C5358(255, a3);
    v4 = sub_1AFDFEA18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AFAD03B8()
{
  if (!qword_1ED7246E8)
  {
    type metadata accessor for TriggerScriptRunnerSystem.TriggerParam();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED7246E8);
    }
  }
}

uint64_t type metadata accessor for TriggerScriptRunnerSystem.TriggerParam()
{
  result = qword_1ED7247C8;
  if (!qword_1ED7247C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AFAD0470()
{
  if (!qword_1ED723AE8)
  {
    type metadata accessor for TriggerScript(255);
    sub_1AFAD0C4C(255, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723AE8);
    }
  }
}

uint64_t sub_1AFAD052C(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1AFAD0584(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1AFAD092C(0, a3, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFAD0600(uint64_t a1, unint64_t *a2)
{
  sub_1AFAD092C(0, a2, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFAD0674(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1AFAD092C(0, a3, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFAD06F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1AFAD08C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4, MEMORY[0x1E69E7CA0] + 8);
    v6 = sub_1AFDFEA18();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AFAD092C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AFAD09A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  swift_unknownObjectWeakTakeInit();
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  return a2;
}

void sub_1AFAD0A24()
{
  if (!qword_1EB6427B0)
  {
    sub_1AF0D8108(255, &qword_1EB6427B8);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6427B0);
    }
  }
}

uint64_t sub_1AFAD0B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AFAD0BA8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1AF645830(a1);
  return sub_1AF6D6500(v3, a1);
}

uint64_t sub_1AFAD0C04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AFAD0C4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

__n128 sub_1AFAD0CB8@<Q0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = [a1 nodeA];
  v7 = [a1 nodeB];
  [a1 contactPoint];
  v19 = v8;
  [a1 contactNormal];
  v18 = v9;
  [a1 collisionImpulse];
  v11 = v10;
  [a1 penetrationDistance];
  v13 = v12;
  [a1 sweepTestFraction];
  v15 = v14;

  *&v21 = a2;
  *(&v21 + 1) = v6;
  v22.n128_u64[0] = v7;
  v23 = v19;
  *v24 = v18;
  *&v24[16] = v11;
  *&v24[20] = v13;
  *&v24[24] = v15;
  v24[28] = 0;
  v25[0] = a2;
  v25[1] = v6;
  v25[2] = v7;
  v26 = v19;
  v27 = v18;
  v28 = v11;
  v29 = v13;
  v30 = v15;
  v31 = 0;
  sub_1AFAD07C4(&v21, v20);
  sub_1AFAD07FC(v25);
  v16 = *v24;
  *(a3 + 32) = v23;
  *(a3 + 48) = v16;
  *(a3 + 61) = *&v24[13];
  result = v22;
  *a3 = v21;
  *(a3 + 16) = result;
  return result;
}

void sub_1AFAD0E08(void *a1, id a2)
{
  v3 = [a2 worldRef];
  if (v3)
  {
    v9 = v3;
    if (sub_1AF1CFF64(v3, 1))
    {
    }

    else
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v9;
      *(v5 + 24) = a1;
      aBlock[4] = sub_1AFAD144C;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AFCDA98C;
      aBlock[3] = &unk_1F255D3D0;
      v6 = _Block_copy(aBlock);
      v7 = v9;
      v8 = a1;

      [v4 postCommandWithWorldRef:v7 applyBlock:v6];
      _Block_release(v6);
    }
  }
}

void sub_1AFAD0F74(int a1, int a2, void *a3, id a4)
{
  v5 = [a4 worldRef];
  if (v5)
  {
    v13 = v5;
    if (sub_1AF1CFF64(v5, 1))
    {
    }

    else
    {
      v6 = sub_1AFDFCEC8();
      sub_1AFAD0CB8(a3, v6, v16);
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v13;
      v9 = v17[0];
      *(v8 + 64) = v16[2];
      *(v8 + 80) = v9;
      *(v8 + 93) = *(v17 + 13);
      v10 = v16[1];
      *(v8 + 32) = v16[0];
      *(v8 + 48) = v10;
      aBlock[4] = sub_1AFAD13F4;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AFCDA98C;
      aBlock[3] = &unk_1F255D380;
      v11 = _Block_copy(aBlock);
      v12 = v13;
      sub_1AFAD07C4(v16, v14);

      [v7 postCommandWithWorldRef:v12 applyBlock:v11];
      _Block_release(v11);

      sub_1AFAD07FC(v16);
    }
  }
}

void sub_1AFAD1130(int a1, int a2, void *a3, void *a4, id a5)
{
  v7 = [a5 worldRef];
  if (v7)
  {
    v25 = v7;
    if (sub_1AF1CFF64(v7, 1))
    {
    }

    else
    {
      v8 = a4;
      [a3 locationInView_];
      v10 = v9;
      v12 = v11;
      [v8 frame];
      Width = CGRectGetWidth(v30);
      v23 = v12 / Width;
      [v8 frame];
      Height = CGRectGetHeight(v31);
      *&v10 = v10;
      *&v15 = v23;
      *(&v15 + 1) = 1.0 - (*&v10 / Height);
      v24 = v15;
      v16 = sub_1AFDFCEC8();
      type metadata accessor for InputEvent();
      swift_allocObject();
      v17 = a3;
      v18 = sub_1AF6A5CD4(v17, v8);

      v28[0] = v16;
      v28[1] = v18;
      swift_unknownObjectWeakInit();
      v28[3] = v24;
      v19 = objc_opt_self();
      sub_1AFAD082C(v28, v27);
      v20 = swift_allocObject();
      *(v20 + 16) = v25;
      sub_1AFAD13A4(v27, (v20 + 24));
      aBlock[4] = sub_1AFAD13E8;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AFCDA98C;
      aBlock[3] = &unk_1F255D330;
      v21 = _Block_copy(aBlock);
      v22 = v25;

      [v19 postCommandWithWorldRef:v22 applyBlock:v21];
      _Block_release(v21);

      sub_1AFAD0864(v28);
    }
  }
}

void *sub_1AFAD13A4(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = *a1;
  a2[1] = v4;
  swift_unknownObjectWeakTakeInit();
  a2[3] = a1[3];
  return a2;
}

uint64_t sub_1AFAD1400(void *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
}

uint64_t destroy for TriggerOSEvent.TapParams(id *a1)
{

  MEMORY[0x1B271E060](a1 + 2);
}

uint64_t initializeWithCopy for TriggerOSEvent.TapParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = v4;

  swift_unknownObjectWeakCopyInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for TriggerOSEvent.TapParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  swift_unknownObjectWeakCopyAssign();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t initializeWithTake for TriggerOSEvent.TapParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  swift_unknownObjectWeakTakeInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for TriggerOSEvent.TapParams(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  swift_unknownObjectWeakTakeAssign();
  v5 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v5;
  *(a1 + 40) = a2[5];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = a2[7];

  return a1;
}

void destroy for TriggerOSEvent(id *a1)
{

  JUMPOUT(0x1B271E060);
}

void *initializeWithCopy for TriggerOSEvent(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v5;
  v6 = v4;

  swift_unknownObjectWeakCopyInit();
  a1[3] = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for TriggerOSEvent(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  swift_unknownObjectWeakCopyAssign();
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *initializeWithTake for TriggerOSEvent(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  swift_unknownObjectWeakTakeInit();
  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for TriggerOSEvent(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  swift_unknownObjectWeakTakeAssign();
  *(a1 + 24) = a2[3];
  return a1;
}

void destroy for CollisionTriggerEvent(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t initializeWithCopy for CollisionTriggerEvent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  return a1;
}

uint64_t assignWithCopy for CollisionTriggerEvent(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *(a1 + 16) = v11;
  v12 = v11;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  return a1;
}

__n128 initializeWithTake for CollisionTriggerEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for CollisionTriggerEvent(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  return a1;
}

uint64_t getEnumTagSinglePayload for CollisionTriggerEvent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 77))
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

uint64_t storeEnumTagSinglePayload for CollisionTriggerEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 77) = 1;
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

    *(result + 77) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TriggerListComponent()
{
  MEMORY[0x1B271E060]();
}

uint64_t initializeWithCopy for TriggerListComponent(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);

  return a1;
}

uint64_t assignWithCopy for TriggerListComponent(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

__n128 initializeWithTake for TriggerListComponent(uint64_t a1, uint64_t a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  *(v3 + 24) = *(a2 + 24);
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 33) = *(a2 + 33);
  return result;
}

uint64_t assignWithTake for TriggerListComponent(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

uint64_t getEnumTagSinglePayload for TriggerListComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t storeEnumTagSinglePayload for TriggerListComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandTrackingParams(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HandTrackingParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

char *sub_1AFAD1E6C(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = &v5[(v4 + 16) & ~v4];
  }

  else
  {
    *(a1 + 1) = a2[1];
    v8 = *(a2 + 48);
    v9 = v5;
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v15 = a2[2];
        v16 = a2[3];
        *(a1 + 2) = v15;
        *(a1 + 3) = v16;
        a1[48] = 2;
        v17 = v15;
        v18 = v16;
      }

      else if (v8 == 3)
      {
        if (a2[2] || a2[3] != 1)
        {
          swift_unknownObjectWeakCopyInit();
          v19 = a2[4];
          *(a1 + 3) = a2[3];
          *(a1 + 4) = v19;
          *(a1 + 5) = a2[5];
        }

        else
        {
          v11 = *(a2 + 2);
          *(a1 + 1) = *(a2 + 1);
          *(a1 + 2) = v11;
        }

        a1[48] = 3;
      }

      else
      {
        v12 = *(a2 + 2);
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = v12;
        a1[48] = *(a2 + 48);
      }
    }

    else if (v8)
    {
      v10 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v10;
      a1[48] = 1;
    }

    else
    {
      v13 = a2[2];
      *(a1 + 2) = v13;
      a1[48] = 0;
      v14 = v13;
    }

    v20 = a2[8];
    *(a1 + 7) = a2[7];
    *(a1 + 8) = v20;
    v21 = *(a3 + 32);
    v22 = &a1[v21];
    v23 = a2 + v21;
    v25 = *(a2 + v21);
    v24 = *(v23 + 8);
    *v22 = v25;
    *(v22 + 1) = v24;
    *(v22 + 2) = *(v23 + 16);
    v22[24] = *(v23 + 24);
    *(v22 + 4) = *(v23 + 32);
    v22[40] = *(v23 + 40);
    v22[41] = *(v23 + 41);
    v26 = *(v23 + 48);

    if (v26)
    {
      v27 = *(v23 + 56);
      *(v22 + 6) = v26;
      *(v22 + 7) = v27;
    }

    else
    {
      *(v22 + 3) = *(v23 + 48);
    }

    v28 = type metadata accessor for TriggerScript(0);
    v29 = v28[11];
    v30 = type metadata accessor for ScriptIndex();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v23 + v29, 1, v30))
    {
      sub_1AFACFCD8(0, qword_1ED730680, type metadata accessor for ScriptIndex);
      memcpy(&v22[v29], (v23 + v29), *(*(v32 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = sub_1AFDFC318();
        (*(*(v33 - 8) + 16))(&v22[v29], v23 + v29, v33);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(&v22[v29], (v23 + v29), *(v31 + 64));
      }

      (*(v31 + 56))(&v22[v29], 0, 1, v30);
    }

    v34 = v28[12];
    v35 = *(v23 + v34);
    *&v22[v34] = v35;
    v36 = v28[13];
    v37 = &v22[v36];
    v38 = v23 + v36;
    v39 = *(v23 + v36 + 32);
    v40 = v35;
    if (v39 > 1)
    {
      if (v39 == 2)
      {
        v47 = *v38;
        v48 = *(v38 + 8);
        *v37 = v47;
        *(v37 + 1) = v48;
        v37[32] = 2;
        v49 = v47;
        v50 = v48;
      }

      else
      {
        if (v39 == 3)
        {
          if (*v38 || *(v38 + 8) != 1)
          {
            swift_unknownObjectWeakCopyInit();
            v51 = *(v38 + 16);
            *(v37 + 1) = *(v38 + 8);
            *(v37 + 2) = v51;
            *(v37 + 3) = *(v38 + 24);
          }

          else
          {
            v42 = *(v38 + 16);
            *v37 = *v38;
            *(v37 + 1) = v42;
          }

          v44 = 3;
        }

        else
        {
          v43 = *(v38 + 16);
          *v37 = *v38;
          *(v37 + 1) = v43;
          v44 = *(v38 + 32);
        }

        v37[32] = v44;
      }
    }

    else if (v39)
    {
      v41 = *(v38 + 8);
      *v37 = *v38;
      *(v37 + 1) = v41;
      v37[32] = 1;
    }

    else
    {
      v45 = *v38;
      *v37 = *v38;
      v37[32] = 0;
      v46 = v45;
    }
  }

  return a1;
}

void sub_1AFAD2280(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4 <= 1)
  {
    if (*(a1 + 48))
    {
      if (v4 == 1)
      {
      }

      goto LABEL_13;
    }

    v5 = *(a1 + 16);
LABEL_12:

    goto LABEL_13;
  }

  if (v4 == 2)
  {

    v5 = *(a1 + 24);
    goto LABEL_12;
  }

  if (v4 == 3 && (*(a1 + 16) || *(a1 + 24) != 1))
  {
    MEMORY[0x1B271E060](a1 + 16);
  }

LABEL_13:

  v6 = a1 + *(a2 + 32);

  if (*(v6 + 48))
  {
  }

  v7 = type metadata accessor for TriggerScript(0);
  v8 = v7[11];
  v9 = type metadata accessor for ScriptIndex();
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9) && swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1AFDFC318();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  v11 = v6 + v7[13];
  v12 = *(v11 + 32);
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 != 3 || !*v11 && *(v11 + 8) == 1)
      {
        return;
      }

      MEMORY[0x1B271E060](v11);
      goto LABEL_33;
    }

    v13 = *(v11 + 8);
  }

  else
  {
    if (*(v11 + 32))
    {
      if (v12 != 1)
      {
        return;
      }

LABEL_33:

      return;
    }

    v13 = *v11;
  }
}

uint64_t sub_1AFAD24B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v7;
  v8 = *(a2 + 48);
  v9 = v6;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v15 = *(a2 + 16);
      v16 = *(a2 + 24);
      *(a1 + 16) = v15;
      *(a1 + 24) = v16;
      *(a1 + 48) = 2;
      v17 = v15;
      v18 = v16;
    }

    else if (v8 == 3)
    {
      if (*(a2 + 16) || *(a2 + 24) != 1)
      {
        swift_unknownObjectWeakCopyInit();
        v19 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v19;
        *(a1 + 40) = *(a2 + 40);
      }

      else
      {
        v11 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v11;
      }

      *(a1 + 48) = 3;
    }

    else
    {
      v12 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v12;
      *(a1 + 48) = *(a2 + 48);
    }
  }

  else if (v8)
  {
    v10 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v10;
    *(a1 + 48) = 1;
  }

  else
  {
    v13 = *(a2 + 16);
    *(a1 + 16) = v13;
    *(a1 + 48) = 0;
    v14 = v13;
  }

  v20 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v20;
  v21 = *(a3 + 32);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v25 = *(a2 + v21);
  v24 = *(v23 + 8);
  *v22 = v25;
  *(v22 + 8) = v24;
  *(v22 + 16) = *(v23 + 16);
  *(v22 + 24) = *(v23 + 24);
  *(v22 + 32) = *(v23 + 32);
  *(v22 + 40) = *(v23 + 40);
  *(v22 + 41) = *(v23 + 41);
  v26 = *(v23 + 48);

  if (v26)
  {
    v27 = *(v23 + 56);
    *(v22 + 48) = v26;
    *(v22 + 56) = v27;
  }

  else
  {
    *(v22 + 48) = *(v23 + 48);
  }

  v28 = type metadata accessor for TriggerScript(0);
  v29 = v28[11];
  v30 = type metadata accessor for ScriptIndex();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v23 + v29, 1, v30))
  {
    sub_1AFACFCD8(0, qword_1ED730680, type metadata accessor for ScriptIndex);
    memcpy((v22 + v29), (v23 + v29), *(*(v32 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = sub_1AFDFC318();
      (*(*(v33 - 8) + 16))(v22 + v29, v23 + v29, v33);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((v22 + v29), (v23 + v29), *(v31 + 64));
    }

    (*(v31 + 56))(v22 + v29, 0, 1, v30);
  }

  v34 = v28[12];
  v35 = *(v23 + v34);
  *(v22 + v34) = v35;
  v36 = v28[13];
  v37 = v22 + v36;
  v38 = v23 + v36;
  v39 = *(v23 + v36 + 32);
  v40 = v35;
  if (v39 > 1)
  {
    if (v39 == 2)
    {
      v47 = *v38;
      v48 = *(v38 + 8);
      *v37 = v47;
      *(v37 + 8) = v48;
      *(v37 + 32) = 2;
      v49 = v47;
      v50 = v48;
    }

    else
    {
      if (v39 == 3)
      {
        if (*v38 || *(v38 + 8) != 1)
        {
          swift_unknownObjectWeakCopyInit();
          v51 = *(v38 + 16);
          *(v37 + 8) = *(v38 + 8);
          *(v37 + 16) = v51;
          *(v37 + 24) = *(v38 + 24);
        }

        else
        {
          v42 = *(v38 + 16);
          *v37 = *v38;
          *(v37 + 16) = v42;
        }

        v44 = 3;
      }

      else
      {
        v43 = *(v38 + 16);
        *v37 = *v38;
        *(v37 + 16) = v43;
        v44 = *(v38 + 32);
      }

      *(v37 + 32) = v44;
    }
  }

  else if (v39)
  {
    v41 = *(v38 + 8);
    *v37 = *v38;
    *(v37 + 8) = v41;
    *(v37 + 32) = 1;
  }

  else
  {
    v45 = *v38;
    *v37 = *v38;
    *(v37 + 32) = 0;
    v46 = v45;
  }

  return a1;
}

uint64_t sub_1AFAD2880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  if (a1 != a2)
  {
    sub_1AF4470F0(a1 + 16);
    v9 = *(a2 + 48);
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v15 = *(a2 + 16);
        *(a1 + 16) = v15;
        v16 = *(a2 + 24);
        *(a1 + 24) = v16;
        *(a1 + 48) = 2;
        v17 = v15;
        v18 = v16;
      }

      else
      {
        if (v9 != 3)
        {
LABEL_11:
          v11 = *(a2 + 16);
          v12 = *(a2 + 32);
          *(a1 + 48) = *(a2 + 48);
          *(a1 + 16) = v11;
          *(a1 + 32) = v12;
          goto LABEL_16;
        }

        if (*(a2 + 16) || *(a2 + 24) != 1)
        {
          swift_unknownObjectWeakCopyInit();
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 40) = *(a2 + 40);
        }

        else
        {
          v10 = *(a2 + 32);
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 32) = v10;
        }

        *(a1 + 48) = 3;
      }
    }

    else
    {
      if (*(a2 + 48))
      {
        if (v9 == 1)
        {
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 48) = 1;

          goto LABEL_16;
        }

        goto LABEL_11;
      }

      v13 = *(a2 + 16);
      *(a1 + 16) = v13;
      *(a1 + 48) = 0;
      v14 = v13;
    }
  }

LABEL_16:
  v19 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v19;

  v20 = *(a3 + 32);
  v21 = a1 + v20;
  v22 = a2 + v20;
  *(a1 + v20) = *(a2 + v20);

  *(v21 + 8) = *(v22 + 8);
  *(v21 + 16) = *(v22 + 16);

  *(v21 + 24) = *(v22 + 24);
  *(v21 + 32) = *(v22 + 32);

  *(v21 + 40) = *(v22 + 40);
  *(v21 + 41) = *(v22 + 41);
  v23 = *(v22 + 48);
  if (*(v21 + 48))
  {
    if (v23)
    {
      v24 = *(v22 + 56);
      *(v21 + 48) = v23;
      *(v21 + 56) = v24;

      goto LABEL_23;
    }
  }

  else if (v23)
  {
    v25 = *(v22 + 56);
    *(v21 + 48) = v23;
    *(v21 + 56) = v25;

    goto LABEL_23;
  }

  *(v21 + 48) = *(v22 + 48);
LABEL_23:
  v54 = type metadata accessor for TriggerScript(0);
  v26 = v54[11];
  v27 = type metadata accessor for ScriptIndex();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = v29(v21 + v26, 1, v27);
  v31 = v29(v22 + v26, 1, v27);
  if (!v30)
  {
    if (!v31)
    {
      if (a1 == a2)
      {
        goto LABEL_36;
      }

      sub_1AFAD2E00(v21 + v26, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = sub_1AFDFC318();
        (*(*(v35 - 8) + 16))(v21 + v26, v22 + v26, v35);
        swift_storeEnumTagMultiPayload();
        goto LABEL_36;
      }

      v34 = *(v28 + 64);
LABEL_30:
      memcpy((v21 + v26), (v22 + v26), v34);
      goto LABEL_36;
    }

    sub_1AFAD2E00(v21 + v26, type metadata accessor for ScriptIndex);
LABEL_29:
    sub_1AFACFCD8(0, qword_1ED730680, type metadata accessor for ScriptIndex);
    v34 = *(*(v33 - 8) + 64);
    goto LABEL_30;
  }

  if (v31)
  {
    goto LABEL_29;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_1AFDFC318();
    (*(*(v32 - 8) + 16))(v21 + v26, v22 + v26, v32);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((v21 + v26), (v22 + v26), *(v28 + 64));
  }

  (*(v28 + 56))(v21 + v26, 0, 1, v27);
LABEL_36:
  v36 = v54[12];
  v37 = *(v22 + v36);
  v38 = *(v21 + v36);
  *(v21 + v36) = v37;
  v39 = v37;

  if (a1 != a2)
  {
    v40 = v54[13];
    v41 = v21 + v40;
    v42 = (v22 + v40);
    sub_1AF4470F0(v21 + v40);
    v43 = *(v42 + 32);
    if (v43 <= 1)
    {
      if (!*(v42 + 32))
      {
        v47 = *v42;
        *v41 = *v42;
        *(v41 + 32) = 0;
        v48 = v47;
        return a1;
      }

      if (v43 == 1)
      {
        *v41 = *v42;
        *(v41 + 8) = *(v42 + 1);
        *(v41 + 32) = 1;

        return a1;
      }

LABEL_46:
      v45 = *v42;
      v46 = v42[1];
      *(v41 + 32) = *(v42 + 32);
      *v41 = v45;
      *(v41 + 16) = v46;
      return a1;
    }

    if (v43 == 2)
    {
      v49 = *v42;
      *v41 = *v42;
      v50 = *(v42 + 1);
      *(v41 + 8) = v50;
      *(v41 + 32) = 2;
      v51 = v49;
      v52 = v50;
      return a1;
    }

    if (v43 != 3)
    {
      goto LABEL_46;
    }

    if (*v42 || *(v42 + 1) != 1)
    {
      swift_unknownObjectWeakCopyInit();
      *(v41 + 8) = *(v42 + 1);
      *(v41 + 16) = *(v42 + 2);
      *(v41 + 24) = *(v42 + 3);
    }

    else
    {
      v44 = v42[1];
      *v41 = *v42;
      *(v41 + 16) = v44;
    }

    *(v41 + 32) = 3;
  }

  return a1;
}

uint64_t sub_1AFAD2E00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFAD2E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 + 16;
  if (*(a2 + 48) == 3)
  {
    if (*(a2 + 16))
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a2 + 24) == 1;
    }

    if (v5)
    {
      v9 = *(a2 + 32);
      *v4 = *(a2 + 16);
      *(v4 + 16) = v9;
    }

    else
    {
      v6 = a2;
      v7 = a3;
      swift_unknownObjectWeakTakeInit();
      a3 = v7;
      a2 = v6;
      *(a1 + 24) = *(v6 + 24);
      *(a1 + 32) = *(v6 + 32);
    }

    *(a1 + 48) = 3;
  }

  else
  {
    v8 = *(a2 + 32);
    *v4 = *(a2 + 16);
    *(v4 + 16) = v8;
    *(v4 + 32) = *(a2 + 48);
  }

  *(a1 + 56) = *(a2 + 56);
  v10 = *(a3 + 32);
  v11 = a1 + v10;
  v12 = a2 + v10;
  *v11 = *(a2 + v10);
  *(v11 + 8) = *(a2 + v10 + 8);
  *(v11 + 24) = *(a2 + v10 + 24);
  *(v11 + 32) = *(a2 + v10 + 32);
  *(v11 + 40) = *(a2 + v10 + 40);
  *(v11 + 48) = *(a2 + v10 + 48);
  v13 = type metadata accessor for TriggerScript(0);
  v14 = v13[11];
  v15 = type metadata accessor for ScriptIndex();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12 + v14, 1, v15))
  {
    sub_1AFACFCD8(0, qword_1ED730680, type metadata accessor for ScriptIndex);
    memcpy((v11 + v14), (v12 + v14), *(*(v17 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = sub_1AFDFC318();
      (*(*(v18 - 8) + 32))(v11 + v14, v12 + v14, v18);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((v11 + v14), (v12 + v14), *(v16 + 64));
    }

    (*(v16 + 56))(v11 + v14, 0, 1, v15);
  }

  *(v11 + v13[12]) = *(v12 + v13[12]);
  v19 = v13[13];
  v20 = v11 + v19;
  v21 = v12 + v19;
  if (*(v12 + v19 + 32) == 3)
  {
    if (*v21 || *(v21 + 8) != 1)
    {
      v20 = swift_unknownObjectWeakTakeInit();
      *(v20 + 8) = *(v21 + 8);
      *(v20 + 16) = *(v21 + 16);
    }

    else
    {
      v22 = *(v21 + 16);
      *v20 = *v21;
      *(v20 + 16) = v22;
    }

    v24 = 3;
  }

  else
  {
    v23 = *(v21 + 16);
    *v20 = *v21;
    *(v20 + 16) = v23;
    v24 = *(v21 + 32);
  }

  *(v20 + 32) = v24;
  return a1;
}

uint64_t sub_1AFAD310C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    sub_1AF4470F0(a1 + 16);
    if (*(a2 + 48) == 3)
    {
      if (*(a2 + 16) || *(a2 + 24) != 1)
      {
        swift_unknownObjectWeakTakeInit();
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
      }

      else
      {
        v7 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v7;
      }

      *(a1 + 48) = 3;
    }

    else
    {
      v8 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v8;
      *(a1 + 48) = *(a2 + 48);
    }
  }

  *(a1 + 56) = *(a2 + 56);

  v9 = *(a3 + 32);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *(a1 + v9) = *(a2 + v9);

  v12 = *(v11 + 16);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = v12;

  *(v10 + 24) = *(v11 + 24);
  *(v10 + 32) = *(v11 + 32);

  *(v10 + 40) = *(v11 + 40);
  *(v10 + 41) = *(v11 + 41);
  v13 = *(v11 + 48);
  if (*(v10 + 48))
  {
    if (v13)
    {
      v14 = *(v11 + 56);
      *(v10 + 48) = v13;
      *(v10 + 56) = v14;

      goto LABEL_16;
    }
  }

  else if (v13)
  {
    v15 = *(v11 + 56);
    *(v10 + 48) = v13;
    *(v10 + 56) = v15;
    goto LABEL_16;
  }

  *(v10 + 48) = *(v11 + 48);
LABEL_16:
  v35 = type metadata accessor for TriggerScript(0);
  v16 = *(v35 + 44);
  v17 = type metadata accessor for ScriptIndex();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v10 + v16, 1, v17);
  v21 = v19(v11 + v16, 1, v17);
  if (v20)
  {
    if (!v21)
    {
      v22 = v35;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = sub_1AFDFC318();
        (*(*(v23 - 8) + 32))(v10 + v16, v11 + v16, v23);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy((v10 + v16), (v11 + v16), *(v18 + 64));
      }

      (*(v18 + 56))(v10 + v16, 0, 1, v17);
      goto LABEL_28;
    }

LABEL_22:
    sub_1AFACFCD8(0, qword_1ED730680, type metadata accessor for ScriptIndex);
    memcpy((v10 + v16), (v11 + v16), *(*(v24 - 8) + 64));
    v22 = v35;
    goto LABEL_28;
  }

  if (v21)
  {
    sub_1AFAD2E00(v10 + v16, type metadata accessor for ScriptIndex);
    goto LABEL_22;
  }

  v22 = v35;
  if (a1 != a2)
  {
    sub_1AFAD2E00(v10 + v16, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = sub_1AFDFC318();
      (*(*(v25 - 8) + 32))(v10 + v16, v11 + v16, v25);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((v10 + v16), (v11 + v16), *(v18 + 64));
    }
  }

LABEL_28:
  v26 = *(v22 + 48);
  v27 = *(v10 + v26);
  *(v10 + v26) = *(v11 + v26);

  if (a1 != a2)
  {
    v28 = *(v22 + 52);
    v29 = v10 + v28;
    v30 = v11 + v28;
    sub_1AF4470F0(v10 + v28);
    if (*(v30 + 32) == 3)
    {
      if (*v30 || *(v30 + 8) != 1)
      {
        swift_unknownObjectWeakTakeInit();
        *(v29 + 8) = *(v30 + 8);
        *(v29 + 16) = *(v30 + 16);
      }

      else
      {
        v31 = *(v30 + 16);
        *v29 = *v30;
        *(v29 + 16) = v31;
      }

      v33 = 3;
    }

    else
    {
      v32 = *(v30 + 16);
      *v29 = *v30;
      *(v29 + 16) = v32;
      v33 = *(v30 + 32);
    }

    *(v29 + 32) = v33;
  }

  return a1;
}

uint64_t sub_1AFAD3580()
{
  result = type metadata accessor for TriggerScript(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t assignWithCopy for TriggerScriptRunnerSystem.CollisionNodePair(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  return a1;
}

uint64_t destroy for TickedEvent(id *a1)
{
}

uint64_t initializeWithCopy for TickedEvent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for TickedEvent(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

__n128 initializeWithTake for TickedEvent(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TickedEvent(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t getEnumTagSinglePayload for TickedEvent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
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

uint64_t storeEnumTagSinglePayload for TickedEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AFAD38E8()
{
  result = qword_1EB6427C0;
  if (!qword_1EB6427C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6427C0);
  }

  return result;
}

void sub_1AFAD393C()
{
  if (!qword_1EB6427C8)
  {
    sub_1AFAD3998();
    v0 = sub_1AFDFE9A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6427C8);
    }
  }
}

unint64_t sub_1AFAD3998()
{
  result = qword_1EB6427D0;
  if (!qword_1EB6427D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6427D0);
  }

  return result;
}

unint64_t sub_1AFAD3A00()
{
  result = qword_1EB6427D8;
  if (!qword_1EB6427D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6427D8);
  }

  return result;
}

unint64_t sub_1AFAD3A58()
{
  result = qword_1EB6427E0;
  if (!qword_1EB6427E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6427E0);
  }

  return result;
}

void sub_1AFAD3B10(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E6370];
  v3 = MEMORY[0x1E69E6448];
  v4 = MEMORY[0x1E69E7668];
  v5 = MEMORY[0x1E69E76D8];
  v6 = MEMORY[0x1E69E72F0];
  v7 = MEMORY[0x1E69E7360];
  v8 = MEMORY[0x1E69E6530];
  do
  {
    if (swift_dynamicCastMetatype())
    {
      v22 = [a1 toBool];
      *(a2 + 24) = v2;
      *a2 = v22;
      return;
    }

    if (swift_dynamicCastMetatype())
    {
      [a1 toDouble];
      *&v23 = v23;
      *(a2 + 24) = v3;
      *a2 = LODWORD(v23);
      return;
    }

    if (swift_dynamicCastMetatype())
    {
      [a1 toDouble];
      *(a2 + 24) = v4;
      *a2 = v24;
      return;
    }

    if (swift_dynamicCastMetatype())
    {
      [a1 toDouble];
      *(a2 + 24) = v5;
      *a2 = v25;
      return;
    }

    if (swift_dynamicCastMetatype())
    {
      [a1 toDouble];
      *(a2 + 24) = v6;
      *a2 = v26;
      return;
    }

    if (swift_dynamicCastMetatype())
    {
      [a1 toDouble];
      *(a2 + 24) = v7;
      *a2 = v27;
      return;
    }

    if (swift_dynamicCastMetatype())
    {
      [a1 toDouble];
      *(a2 + 24) = v8;
      *a2 = v28;
      return;
    }

    sub_1AFAD5900(0, &unk_1ED72F770, sub_1AF43A0C8, v3, MEMORY[0x1E69E7428]);
    v10 = v9;
    if (swift_dynamicCastMetatype())
    {
      v29 = [a1 objectAtIndexedSubscript_];
      [v29 toDouble];
      v68 = v30;

      v31 = [a1 objectAtIndexedSubscript_];
      [v31 toDouble];
      v73 = v32;

      v33.f64[0] = v68;
      v33.f64[1] = v73;
      *(a2 + 24) = v10;
      *a2 = vcvt_f32_f64(v33);
      return;
    }

    sub_1AFAD5900(0, &qword_1ED72F740, sub_1AF43A0C8, v3, MEMORY[0x1E69E7450]);
    v12 = v11;
    if (swift_dynamicCastMetatype())
    {
      v34 = [a1 objectAtIndexedSubscript_];
      [v34 toDouble];
      v36 = v35;

      v37 = v36;
      v69 = v37;
      v38 = [a1 objectAtIndexedSubscript_];
      [v38 toDouble];
      v40 = v39;

      v41 = v40;
      v65 = v41;
      v42 = [a1 objectAtIndexedSubscript_];
      [v42 toDouble];
      v44 = v43;

      v45 = v44;
      v74 = v45;
      *(a2 + 24) = v12;
      v46 = swift_allocObject();
      v47.i64[0] = __PAIR64__(LODWORD(v65), LODWORD(v69));
      *a2 = v46;
      v47.i64[1] = LODWORD(v74);
LABEL_25:
      *(v46 + 16) = v47;
      return;
    }

    sub_1AFAD5900(0, &qword_1ED72F6E0, sub_1AF43A0C8, v3, MEMORY[0x1E69E74A8]);
    v14 = v13;
    if (swift_dynamicCastMetatype())
    {
      v48 = [a1 objectAtIndexedSubscript_];
      [v48 toDouble];
      v70 = v49;

      v50 = [a1 objectAtIndexedSubscript_];
      [v50 toDouble];
      v66 = v51;

      v52 = [a1 objectAtIndexedSubscript_];
      [v52 toDouble];
      v64 = v53;

      v54 = [a1 objectAtIndexedSubscript_];
      [v54 toDouble];
      v75 = v55;

      *(a2 + 24) = v14;
      v46 = swift_allocObject();
      v56.f64[0] = v64;
      v57.f64[0] = v70;
      v56.f64[1] = v75;
      *a2 = v46;
      v57.f64[1] = v66;
      v47 = vcvt_hight_f32_f64(vcvt_f32_f64(v57), v56);
      goto LABEL_25;
    }

    type metadata accessor for simd_quatf(0);
  }

  while (swift_dynamicCastMetatype());
  sub_1AFAD5900(0, &qword_1ED722EC8, sub_1AF477C08, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7428]);
  v16 = v15;
  if (swift_dynamicCastMetatype())
  {
    v17 = [a1 objectAtIndexedSubscript_];
    [v17 toDouble];
    v67 = v18;

    v19 = [a1 objectAtIndexedSubscript_];
    [v19 toDouble];
    v72 = v20;

    v21.f64[0] = v67;
    v21.f64[1] = v72;
    *(a2 + 24) = v16;
    *a2 = vmovn_s64(vcvtq_s64_f64(v21));
  }

  else
  {
    v58 = MEMORY[0x1E69E6158];
    if (swift_dynamicCastMetatype())
    {
      v59 = [a1 toString];
      v60 = sub_1AFDFCEF8();
      v62 = v61;

      *(a2 + 24) = v58;
      *a2 = v60;
      *(a2 + 8) = v62;
    }

    else
    {
      sub_1AF0D4478(0, &qword_1EB633BB0);
      if (swift_dynamicCastMetatype() || (sub_1AFADAF14(0, &qword_1EB632948, &qword_1EB633BB0, 0x1E69E58C0, MEMORY[0x1E69E6720]), swift_dynamicCastMetatype()))
      {
        [a1 toObject];
        sub_1AFDFDFB8();

        swift_unknownObjectRelease();
      }

      else
      {
        sub_1AFDFE218();

        v63 = sub_1AFDFF4B8();
        MEMORY[0x1B2718AE0](v63);

        sub_1AFDFE518();
        __break(1u);
      }
    }
  }
}

uint64_t sub_1AFAD42DC(void *a1, void *a2)
{
  sub_1AF0D5A54(a1, v39);
  if (swift_dynamicCast())
  {
    LODWORD(v38) = v37[0];
    v4 = sub_1AFDFF168();
    v5 = [objc_opt_self() valueWithObject:v4 inContext:a2];
    swift_unknownObjectRelease();
LABEL_10:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v39);
    return v5;
  }

  sub_1AFAD5900(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  if (swift_dynamicCast())
  {
    goto LABEL_4;
  }

  sub_1AFAD5900(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  if (swift_dynamicCast())
  {
    TypedArray = JSObjectMakeTypedArray([a2 JSGlobalContextRef], kJSTypedArrayTypeFloat32Array, 3uLL, 0);
    v5 = [objc_opt_self() valueWithJSValueRef:TypedArray inContext:a2];
    v10 = sub_1AFDFD718();
    [v5 setObject:v10 atIndexedSubscript:0];

    v11 = sub_1AFDFD718();
    [v5 setObject:v11 atIndexedSubscript:1];

    v8 = sub_1AFDFD718();
    [v5 setObject:v8 atIndexedSubscript:2];
    goto LABEL_9;
  }

  sub_1AFAD5900(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v13 = v12;
  if (swift_dynamicCast())
  {
    v14 = JSObjectMakeTypedArray([a2 JSGlobalContextRef], kJSTypedArrayTypeFloat32Array, 4uLL, 0);
    v5 = [objc_opt_self() valueWithJSValueRef:v14 inContext:a2];
    v15 = sub_1AFDFD718();
    [v5 setObject:v15 atIndexedSubscript:0];

    v16 = sub_1AFDFD718();
    [v5 setObject:v16 atIndexedSubscript:1];

    v17 = sub_1AFDFD718();
    [v5 setObject:v17 atIndexedSubscript:2];

    v8 = sub_1AFDFD718();
    [v5 setObject:v8 atIndexedSubscript:3];
    goto LABEL_9;
  }

  type metadata accessor for simd_quatf(0);
  if (swift_dynamicCast())
  {
    v37[3] = v13;
    v37[0] = swift_allocObject();
    *(v37[0] + 1) = v38;
    v5 = sub_1AFAD42DC(v37, a2);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v37);
    goto LABEL_10;
  }

  type metadata accessor for simd_float4x4(0);
  if (swift_dynamicCast())
  {
    v19 = JSObjectMakeTypedArray([a2 JSGlobalContextRef], kJSTypedArrayTypeFloat32Array, 0x10uLL, 0);
    v5 = [objc_opt_self() valueWithJSValueRef:v19 inContext:a2];
    v20 = sub_1AFDFD718();
    [v5 setObject:v20 atIndexedSubscript:0];

    v21 = sub_1AFDFD718();
    [v5 setObject:v21 atIndexedSubscript:1];

    v22 = sub_1AFDFD718();
    [v5 setObject:v22 atIndexedSubscript:2];

    v23 = sub_1AFDFD718();
    [v5 setObject:v23 atIndexedSubscript:3];

    v24 = sub_1AFDFD718();
    [v5 setObject:v24 atIndexedSubscript:4];

    v25 = sub_1AFDFD718();
    [v5 setObject:v25 atIndexedSubscript:5];

    v26 = sub_1AFDFD718();
    [v5 setObject:v26 atIndexedSubscript:6];

    v27 = sub_1AFDFD718();
    [v5 setObject:v27 atIndexedSubscript:7];

    v28 = sub_1AFDFD718();
    [v5 setObject:v28 atIndexedSubscript:8];

    v29 = sub_1AFDFD718();
    [v5 setObject:v29 atIndexedSubscript:9];

    v30 = sub_1AFDFD718();
    [v5 setObject:v30 atIndexedSubscript:10];

    v31 = sub_1AFDFD718();
    [v5 setObject:v31 atIndexedSubscript:11];

    v32 = sub_1AFDFD718();
    [v5 setObject:v32 atIndexedSubscript:12];

    v33 = sub_1AFDFD718();
    [v5 setObject:v33 atIndexedSubscript:13];

    v34 = sub_1AFDFD718();
    [v5 setObject:v34 atIndexedSubscript:14];

    v8 = sub_1AFDFD718();
    [v5 setObject:v8 atIndexedSubscript:15];
    goto LABEL_9;
  }

  sub_1AFAD5900(0, &qword_1ED722EC8, sub_1AF477C08, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7428]);
  if (swift_dynamicCast())
  {
LABEL_4:
    v6 = JSObjectMakeTypedArray([a2 JSGlobalContextRef], kJSTypedArrayTypeFloat32Array, 2uLL, 0);
    v5 = [objc_opt_self() valueWithJSValueRef:v6 inContext:a2];
    v7 = sub_1AFDFD718();
    [v5 setObject:v7 atIndexedSubscript:0];

    v8 = sub_1AFDFD718();
    [v5 setObject:v8 atIndexedSubscript:1];
LABEL_9:

    goto LABEL_10;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
    v35 = [objc_opt_self() valueWithNewBigIntFromUInt64:v37[0] inContext:a2];
LABEL_19:
    v5 = v35;
    goto LABEL_10;
  }

  sub_1AF0D4478(0, &qword_1EB633BB0);
  if (swift_dynamicCast())
  {
    v5 = [objc_opt_self() valueWithObject:v37[0] inContext:a2];

    goto LABEL_10;
  }

  sub_1AFADAF14(0, &qword_1EB632948, &qword_1EB633BB0, 0x1E69E58C0, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    if (!v37[0] || (v5 = [objc_opt_self() valueWithObject:v37[0] inContext:a2]) == 0)
    {
      v5 = [objc_opt_self() valueWithNullInContext_];
    }

    goto LABEL_10;
  }

  type metadata accessor for vfx_script_buffer(0);
  if (swift_dynamicCast())
  {
    v35 = [objc_opt_self() valueWithNullInContext_];
    goto LABEL_19;
  }

  sub_1AFDFE218();

  v37[0] = 0xD000000000000011;
  v37[1] = 0x80000001AFF45EE0;
  sub_1AF441150(a1, a1[3]);
  swift_getDynamicType();
  v36 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v36);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFAD4E28(uint64_t a1)
{
  sub_1AF44CBE4(a1, v12);
  v3 = v13;
  if (v13)
  {
    v4 = sub_1AF441150(v12, v13);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4, v4);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1AFDFEE08();
    (*(v5 + 8))(v8, v3);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1AFDFCEC8();

  [v1 setObject:v9 forKeyedSubscript:v10];
  swift_unknownObjectRelease();

  return sub_1AF44CB60(a1);
}

uint64_t sub_1AFAD4FA4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = v0;
  v54 = *(v0 + 32);
  v53 = *(v0 + 40);
  v52 = *(v0 + 44);
  v4 = *(v0 + 8);
  v58 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v5 = (v1 + 48);
  v57 = thread_worker_index;
  v61 = v3;
  v51 = v4;
  while (1)
  {
    v60 = v2;
    v6 = *(v5 - 2);
    v7 = *(v5 - 8);
    v8 = *v5;
    sub_1AF443EE0(v6);
    sub_1AF444224(v8);
    sub_1AFA9EF20(v6);
    if (sub_1AFADB4E4(v9, 0))
    {
      v10 = MEMORY[0x1E69E6878];
      if ((v7 & 2) == 0)
      {
        v10 = MEMORY[0x1E69E6270];
      }

      v55 = v10;
    }

    else
    {
      sub_1AFA9EF20(v6);
      v55 = v11;
    }

    v12 = (v57)(&thread_worker_index);
    v13 = *(v4 + v58);
    if (*v12 != -1)
    {
      v13 += *v12 + 1;
    }

    v14 = sub_1AFAE0478(v6, v7, v54, v53, v52, 0, *v13, 0, 0);
    if (v17 >= 0xFCu)
    {
      if (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) != 1)
      {
        v46 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
        v64 = 0;
        v65 = 0xE000000000000000;

        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF28340);
        sub_1AFDFE458();
        v47 = v8;
        v48 = v64;
        v49 = v65;
        v50 = sub_1AFDFDA08();
        v64 = 0;
        (*(*v46 + 88))(v50, &v64, v48, v49);
        sub_1AF443F24(v6);
        sub_1AF444AF4(v47);

        return 0;
      }

LABEL_37:
      sub_1AF443F24(v6);
      sub_1AF444AF4(v8);
      return 0;
    }

    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
    if (v17 >> 6 && v17 >> 6 != 1)
    {
      v23 = (v57)(&thread_worker_index);
      v24 = *(v4 + v58);
      if (*v23 != -1)
      {
        v24 += *v23 + 1;
      }

      v22 = v18(*v24);
      v62 = v26;
      v63 = v25;
    }

    else
    {
      sub_1AF448910(v14, v15, v16, v17);
      v22 = v18;
      v62 = v20;
      v63 = v19;
    }

    v27 = (v6 >> 59) & 0x1E | (v6 >> 2) & 1;
    v59 = v8;
    if (v27 == 2)
    {
      if (v22)
      {
        v66 = sub_1AF0D4478(0, &qword_1EB633BB0);
        v64 = v22;
        v37 = v22;
        goto LABEL_27;
      }

      sub_1AF93DA44(v18, v19, v20, v21);
      sub_1AF0FB8EC(v63);
      goto LABEL_37;
    }

    if (v27 != 15)
    {
      if (v22)
      {
        sub_1AF871824(v22, v55, &v64);
        v3 = v61;
        goto LABEL_27;
      }

      sub_1AF0FB8EC(v63);
      sub_1AF93DA44(v18, v19, v20, v21);
      goto LABEL_37;
    }

    v28 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    v56 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v29 = v61[3];
    if (!*(v29 + 16) || (v30 = v20, v31 = v6, v32 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x20), v33 = sub_1AF419914(v56, v28), (v34 & 1) == 0))
    {
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](v56, v28);
      MEMORY[0x1B2718AE0](39, 0xE100000000000000);
      goto LABEL_41;
    }

    v35 = *(*(v29 + 56) + 8 * v33);
    sub_1AF90E730(v32);
    if (!v36)
    {
      break;
    }

    sub_1AF871824(v35, v36, &v64);
    v6 = v31;
    v3 = v61;
    v20 = v30;
LABEL_27:
    v38 = sub_1AFAD42DC(&v64, *v3);
    v39 = v3[8];
    sub_1AF0FBD8C(v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1AF423C1C(0, *(v39 + 2) + 1, 1, v39);
    }

    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    if (v41 >= v40 >> 1)
    {
      v39 = sub_1AF423C1C(v40 > 1, v41 + 1, 1, v39);
    }

    v5 += 5;
    *(v39 + 2) = v41 + 1;
    v42 = &v39[24 * v41];
    *(v42 + 4) = v22;
    *(v42 + 5) = v63;
    *(v42 + 6) = v62;
    v3 = v61;
    v61[8] = v39;
    v43 = v61[7];
    v44 = v38;
    [v43 addObject_];
    sub_1AF93DA44(v18, v19, v20, v21);

    sub_1AF443F24(v6);
    sub_1AF444AF4(v59);

    sub_1AF0FB8EC(v63);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v64);
    v2 = v60 - 1;
    v4 = v51;
    if (v60 == 1)
    {
      return 1;
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
  sub_1AFDFE458();
LABEL_41:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AFAD560C(unint64_t result)
{
  v20 = result;
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = (v2 + 48);
    v18 = MEMORY[0x1E69E7CA0] + 8;
    v19 = *(v2 + 16);
    while (1)
    {
      if ((*(v6 - 1) & 2) == 0)
      {
        goto LABEL_6;
      }

      v7 = *(v6 - 2);
      v8 = *v6;
      v9 = *(v21 + 64) + v4;
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      sub_1AF443EE0(v7);
      sub_1AF444224(v8);
      sub_1AF0FBD8C(v11);
      v12 = [v20 objectAtIndexedSubscript_];
      if (v12)
      {
        break;
      }

      if (v11)
      {
        goto LABEL_4;
      }

LABEL_5:
      sub_1AF443F24(v7);
      result = sub_1AF444AF4(v8);
LABEL_6:
      ++v5;
      v6 += 5;
      v4 += 24;
      if (v3 == v5)
      {
        return result;
      }
    }

    v13 = v12;
    sub_1AFA9EF20(v7);
    v15 = v14;
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_11;
    }

    type metadata accessor for frame_constants(0);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_11;
    }

    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
LABEL_22:
      sub_1AFA9EF20(v7);
      v16 = v17;
LABEL_12:
      sub_1AFAD3B10(v13, v22);
      if (v10)
      {
        sub_1AF871630(v22, v10, v16);

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
        v3 = v19;
        if (!v11)
        {
          goto LABEL_5;
        }
      }

      else
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);

        v3 = v19;
        if (!v11)
        {
          goto LABEL_5;
        }
      }

LABEL_4:
      v11();
      sub_1AF0FB8EC(v11);
      goto LABEL_5;
    }

    if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
    {
      sub_1AF8C0110();
      if (!swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          sub_1AFDFEE28();
          goto LABEL_22;
        }

        if (v15 != v18 && !swift_dynamicCastMetatype())
        {
          type metadata accessor for __vfx_sampler1d(0);
          if (!swift_dynamicCastMetatype())
          {
            type metadata accessor for __vfx_sampler2d(0);
            if (!swift_dynamicCastMetatype())
            {
              type metadata accessor for __vfx_sampler3d(0);
              if (!swift_dynamicCastMetatype())
              {
                goto LABEL_22;
              }
            }
          }
        }
      }
    }

LABEL_11:
    v16 = MEMORY[0x1E69E6878];
    goto LABEL_12;
  }

  return result;
}

void sub_1AFAD5900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AFAD5990(void *a1, void *a2, void *a3, void *a4)
{
  v52[10] = *MEMORY[0x1E69E9840];
  v7 = [a1 toNumber];
  v8 = [v7 unsignedIntegerValue];

  sub_1AFADAE08(v8, v51);
  sub_1AFABB57C(v51, v52);
  v9 = sub_1AFDFCEC8();
  v10 = [a2 objectForKeyedSubscript_];

  v11 = [v10 toString];
  v12 = sub_1AFDFCEF8();
  v14 = v13;

  v15 = sub_1AFDFCEC8();
  v16 = [a2 objectForKeyedSubscript_];

  v17 = [v16 toString];
  v18 = sub_1AFDFCEF8();
  v20 = v19;

  v21 = sub_1AFDFCEC8();
  v22 = [a2 objectForKeyedSubscript_];

  if (v22)
  {
    if ([v22 isNull] || objc_msgSend(v22, sel_isUndefined))
    {

LABEL_5:
      v23 = 0;
      v22 = 0;
      goto LABEL_9;
    }

    v24 = [v22 toString];

    if (!v24)
    {
      goto LABEL_5;
    }

    v25 = sub_1AFDFCEF8();
    v22 = v26;

    v23 = v25;
  }

  else
  {
    v23 = 0;
  }

LABEL_9:
  sub_1AFBFFFAC(v12, v14, v18, v20, v23, v22, v52[0], v51);

  v27 = v51[0];
  if (!v51[0])
  {
    return sub_1AFABB5D8(v52);
  }

  v28 = v51[1];
  v29 = v51[4];
  v30 = v51[5];
  if ([a3 toObject])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v47 = v43;
  v48 = v44;
  if (!*(&v44 + 1))
  {
    sub_1AF44CB60(&v47);
    goto LABEL_18;
  }

  sub_1AF0D4478(0, &qword_1EB633BB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v32 = 0;
    goto LABEL_19;
  }

  v32 = v50[0];

LABEL_19:
  sub_1AFAD3B10(a4, v50);
  *(&v48 + 1) = &type metadata for Extensions;
  v49 = &off_1F253E6E8;
  sub_1AF60685C(&v47, v50);
  v33 = *(&v48 + 1);
  v34 = v49;
  sub_1AF448018(&v47, *(&v48 + 1));
  v35 = sub_1AF8727C0(v33, v34);
  if (v32)
  {
    v36 = v35;
    v37 = v32;
    v38 = sub_1AFAF6214(v29, v37, v27, v28);

    if (v38)
    {
      sub_1AF871824(v36, v30, v46);
      ObjectType = swift_getObjectType();
      *&v41 = v37;
      *(&v44 + 1) = &type metadata for Extensions;
      v45 = &off_1F253E6E8;
      v39 = v37;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v43);
      sub_1AF449D40(&v41, &v43);
      v40 = *(&v44 + 1);
      sub_1AF441150(&v43, *(&v44 + 1));
      sub_1AF871960(v46, v38, v40);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v46);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v43);
    }

    else
    {
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v50);
  sub_1AFABB5D8(v52);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v47);
}

void sub_1AFAD5E48(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);

  v13 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v9(v13, v10, v11, v12);
}

id sub_1AFAD5F24(void *a1, void *a2, void *a3)
{
  v6 = [a1 toNumber];
  v7 = [v6 unsignedIntegerValue];

  sub_1AFADAE08(v7, v39);
  sub_1AFABB57C(v39, v40);
  v8 = sub_1AFDFCEC8();
  v9 = [a2 objectForKeyedSubscript_];

  v10 = [v9 toString];
  v11 = sub_1AFDFCEF8();
  v13 = v12;

  v14 = sub_1AFDFCEC8();
  v15 = [a2 objectForKeyedSubscript_];

  v16 = [v15 toString];
  v17 = sub_1AFDFCEF8();
  v19 = v18;

  v20 = sub_1AFDFCEC8();
  v21 = [a2 objectForKeyedSubscript_];

  if (v21)
  {
    if ([v21 isNull] || objc_msgSend(v21, sel_isUndefined))
    {

LABEL_5:
      v22 = 0;
      v21 = 0;
      goto LABEL_9;
    }

    v23 = [v21 toString];

    if (!v23)
    {
      goto LABEL_5;
    }

    v24 = sub_1AFDFCEF8();
    v21 = v25;

    v22 = v24;
  }

  else
  {
    v22 = 0;
  }

LABEL_9:
  sub_1AFBFFFAC(v11, v13, v17, v19, v22, v21, v40[0], v39);

  v26 = v39[0];
  if (!v39[0])
  {
    v29 = [a1 context];
    v30 = [objc_opt_self() valueWithNullInContext_];
LABEL_23:

    sub_1AFABB5D8(v40);
    return v30;
  }

  v27 = v39[1];
  v28 = v39[4];
  if ([a3 toObject])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38[0] = v36;
  v38[1] = v37;
  if (!*(&v37 + 1))
  {
    sub_1AF44CB60(v38);
    goto LABEL_20;
  }

  sub_1AF0D4478(0, &qword_1EB633BB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v29 = [a1 context];
    v30 = [objc_opt_self() valueWithNullInContext_];

    goto LABEL_23;
  }

  if (!sub_1AFAF6214(v28, v35, v26, v27))
  {
    v36 = 0u;
    v37 = 0u;
    sub_1AF44CB60(&v36);
    v29 = [a1 context];
    v30 = [objc_opt_self() valueWithNullInContext_];

    goto LABEL_23;
  }

  v31 = v35;
  swift_getAtAnyKeyPath();

  sub_1AF449D40(&v36, v38);
  v32 = [a1 context];
  v33 = sub_1AFAD42DC(v38, v32);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v38);
  sub_1AFABB5D8(v40);
  return v33;
}