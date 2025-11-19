char *sub_1AF873E94(uint64_t *a1)
{
  v2 = sub_1AF8731C4(a1);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v2;
  v50 = sub_1AF872FBC(a1);
  if (v50)
  {
    v5 = 0;
    v6 = a1 + 1;
    v48 = v4 + 32;
    v49 = v3;
    while (1)
    {
      if (*v6)
      {
        sub_1AF38C65C();
        v8 = v7;
        if (sub_1AF8744B4(*a1) == 14)
        {
          v9 = &unk_1EB63FAA0;
        }

        else
        {
          v9 = &unk_1EB63FA98;
        }

        sub_1AF8745C4(0, v9);
        *(&v52 + 1) = v10;
        v53 = &off_1F253E8C0;
        *&v51 = v8;
        sub_1AF0FBA54(&v51, v54);
        v11 = v55;
        v12 = v56;
        sub_1AF441150(v54, v55);
        v13 = (*(v12 + 32))(v11, v12);
        sub_1AF38C65C();
        v15 = v14 + v13;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v54);
        v16 = *(v15 + 28);
        if (v16)
        {
          v54[0] = v3;
          sub_1AFC06F28(0, v16 & ~(v16 >> 63), 0);
          v17 = v54[0];
          v18 = v15 + 32;
          v19 = *(v54[0] + 16);
          do
          {
            v54[0] = v17;
            v20 = *(v17 + 3);
            if (v19 >= v20 >> 1)
            {
              sub_1AFC06F28(v20 > 1, v19 + 1, 1);
              v17 = v54[0];
            }

            *(v17 + 2) = v19 + 1;
            *&v17[8 * v19 + 32] = v18;
            v18 += 12;
            ++v19;
            --v16;
          }

          while (v16);
          v3 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v17 = v3;
        }

        v21 = *&v17[8 * v5 + 32];

        if (v21 + 8 + *(v21 + 8))
        {
          v22 = sub_1AFDFD0F8();
          v24 = v23;
          if (*v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v22 = 0;
          v24 = 0xE000000000000000;
          if (*v6)
          {
LABEL_22:
            sub_1AF38C65C();
            v26 = v25;
            if (sub_1AF8744B4(*a1) == 14)
            {
              v27 = &unk_1EB63FAA0;
            }

            else
            {
              v27 = &unk_1EB63FA98;
            }

            sub_1AF8745C4(0, v27);
            *(&v52 + 1) = v28;
            v53 = &off_1F253E8C0;
            *&v51 = v26;
            sub_1AF0FBA54(&v51, v54);
            v29 = v55;
            v30 = v56;
            sub_1AF441150(v54, v55);
            v31 = (*(v30 + 32))(v29, v30);
            sub_1AF38C65C();
            v33 = v32 + v31;
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v54);
            v34 = *(v33 + 28);
            if (v34)
            {
              v54[0] = v3;
              sub_1AFC06F28(0, v34 & ~(v34 >> 63), 0);
              v35 = v54[0];
              v36 = v33 + 32;
              v37 = *(v54[0] + 16);
              do
              {
                v54[0] = v35;
                v38 = *(v35 + 3);
                if (v37 >= v38 >> 1)
                {
                  sub_1AFC06F28(v38 > 1, v37 + 1, 1);
                  v35 = v54[0];
                }

                *(v35 + 2) = v37 + 1;
                *&v35[8 * v37 + 32] = v36;
                v36 += 12;
                ++v37;
                --v34;
              }

              while (v34);
              v3 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v35 = v3;
            }

            v39 = *&v35[8 * v5 + 32];

            if (v39 + 4 + *(v39 + 4))
            {
              if (*v6)
              {
                sub_1AF38C65C();
                if (a1[2])
                {
                  goto LABEL_35;
                }
              }

              else if (a1[2])
              {
LABEL_35:
                sub_1AF38C65C();
              }

              TypeByMangledNameInContext = swift_getTypeByMangledNameInContext();
              if (TypeByMangledNameInContext)
              {
                v41 = TypeByMangledNameInContext;
                v42 = *(v48 + 8 * v5);
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v43 = v49;
                }

                else
                {
                  v43 = sub_1AF4209BC(0, *(v49 + 2) + 1, 1, v49);
                }

                v45 = *(v43 + 2);
                v44 = *(v43 + 3);
                if (v45 >= v44 >> 1)
                {
                  v43 = sub_1AF4209BC(v44 > 1, v45 + 1, 1, v43);
                }

                *(v43 + 2) = v45 + 1;
                v49 = v43;
                v46 = &v43[32 * v45];
                *(v46 + 4) = v22;
                *(v46 + 5) = v24;
                *(v46 + 6) = v41;
                *(v46 + 7) = v42;
                goto LABEL_6;
              }
            }

            goto LABEL_6;
          }
        }
      }

      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      sub_1AF87439C(&v51);
LABEL_6:
      if (++v5 == v50)
      {

        return v49;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AF87439C(uint64_t a1)
{
  sub_1AF8743F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF8743F8()
{
  if (!qword_1EB63FA88)
  {
    sub_1AF874450();
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63FA88);
    }
  }
}

unint64_t sub_1AF874450()
{
  result = qword_1EB63FA90;
  if (!qword_1EB63FA90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB63FA90);
  }

  return result;
}

uint64_t sub_1AF8744B4(uint64_t a1)
{
  if (a1 > 770)
  {
    if (a1 > 773)
    {
      if (a1 > 1279)
      {
        if (a1 == 1280)
        {
          return 12;
        }

        if (a1 == 1281)
        {
          return 13;
        }
      }

      else
      {
        if (a1 == 774)
        {
          return 10;
        }

        if (a1 == 1024)
        {
          return 11;
        }
      }

      return 14;
    }

    if (a1 == 771)
    {
      return 7;
    }

    else if (a1 == 772)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }

  else
  {
    if (a1 <= 514)
    {
      switch(a1)
      {
        case 512:
          return 0;
        case 513:
          return 1;
        case 514:
          return 2;
      }

      return 14;
    }

    if (a1 <= 768)
    {
      if (a1 == 515)
      {
        return 4;
      }

      if (a1 == 768)
      {
        return 3;
      }

      return 14;
    }

    if (a1 == 769)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1AF8745C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for ContextDescriptor();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for _Metadata._Class(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for _Metadata._Class(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1AF874718(uint64_t a1)
{
  result = sub_1AF874740();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF874740()
{
  result = qword_1EB63FAA8;
  if (!qword_1EB63FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FAA8);
  }

  return result;
}

unint64_t sub_1AF874794(uint64_t a1)
{
  result = sub_1AF8747BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF8747BC()
{
  result = qword_1EB63FAB0;
  if (!qword_1EB63FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FAB0);
  }

  return result;
}

BOOL sub_1AF874814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = v6(a3, a4);
  return v7 == v6(a3, a4);
}

uint64_t sub_1AF874898(uint64_t *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  sub_1AF441150(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v3 = sub_1AF874A70(DynamicType);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v23 = &type metadata for Extensions;
  v24 = &off_1F253E6E8;
  sub_1AF60685C(v22, a1);
  v5 = v23;
  v6 = v24;
  sub_1AF448018(v22, v23);
  v7 = sub_1AF8727C0(v5, v6);
  v8 = *(v4 + 2);
  if (v8)
  {
    v9 = v7;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1AFC06F68(0, v8, 0);
    v10 = v19;
    v11 = v4 + 56;
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      sub_1AF871824(v9 + *v11, *(v11 - 1), v21);
      *&v20 = v12;
      *(&v20 + 1) = v13;
      v15 = *(v19 + 16);
      v14 = *(v19 + 24);

      if (v15 >= v14 >> 1)
      {
        sub_1AFC06F68(v14 > 1, v15 + 1, 1);
      }

      v11 += 4;
      *(v19 + 16) = v15 + 1;
      v16 = (v19 + 48 * v15);
      v17 = v21[1];
      v16[3] = v21[0];
      v16[4] = v17;
      v16[2] = v20;
      --v8;
    }

    while (v8);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
  return v10;
}

char *sub_1AF874A70(uint64_t *a1)
{
  v1 = a1;
  for (i = *a1; sub_1AF8744B4(i); i = *v1)
  {
    if (sub_1AF8744B4(*v1) == 14)
    {

      return sub_1AF873D7C(v1);
    }

    if (sub_1AF8744B4(*v1) == 9)
    {
      v1 = v1[1];
      if (v1)
      {
        continue;
      }
    }

    return 0;
  }

  return sub_1AF873E94(v1);
}

uint64_t initializeWithCopy for Property.Description(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for Property.Description(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for Property.Description(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *initializeWithCopy for Property(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[5];
  a1[5] = v5;
  v6 = **(v5 - 8);

  v6(a1 + 2, a2 + 2, v5);
  return a1;
}

void *assignWithCopy for Property(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  sub_1AF60685C(a1 + 2, a2 + 2);
  return a1;
}

uint64_t assignWithTake for Property(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1 + 16);
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  return a1;
}

uint64_t sub_1AF874D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

void sub_1AF874DF4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v70 = a4;
  v71 = a2;
  v91 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(a1);
  sub_1AF87549C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF875C58(0, &unk_1ED72C510, type metadata accessor for ScriptRuntime);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14, v18);
  v19 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v21);
  v68 = v9;
  if (!v9 && a1 == -1)
  {
    (*(v16 + 56))(v13, 1, 1, v15, v23);
LABEL_5:
    sub_1AF87770C(v13, sub_1AF87549C);
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v25 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v62 = v25;
      swift_once();
      v25 = v62;
    }

    *&aBlock = 0;
    sub_1AF0D4F18(v25, &aBlock, 0xD000000000000016, 0x80000001AFF376A0);
LABEL_10:
    sub_1AF875B40(&aBlock);
LABEL_11:
    v26 = v89;
    *(a6 + 96) = v88;
    *(a6 + 112) = v26;
    *(a6 + 128) = v90;
    v27 = v85;
    *(a6 + 32) = v84;
    *(a6 + 48) = v27;
    v28 = v87;
    *(a6 + 64) = v86;
    *(a6 + 80) = v28;
    v29 = v83;
    *a6 = aBlock;
    *(a6 + 16) = v29;
    return;
  }

  v66 = a3;
  v67 = &v64 - v22;
  v24 = v71;

  sub_1AF3C97B0(a1, v13);

  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    goto LABEL_5;
  }

  v30 = v67;
  sub_1AF875B60(v13, v67);
  v31 = *(v30 + *(v15 + 44));
  if (!v31 || !v31[2])
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v55 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v63 = v55;
      swift_once();
      v55 = v63;
    }

    *&aBlock = 0;
    sub_1AF0D4F18(v55, &aBlock, 0xD000000000000016, 0x80000001AFF376C0);
    sub_1AF875BE0(v67);
    goto LABEL_10;
  }

  v32 = v31[5];
  v65 = v31[4];
  sub_1AF875C58(0, &unk_1ED728E20, type metadata accessor for ScriptCompileAttempt);
  v34 = v30 + *(v33 + 36);
  v35 = v30;
  if (*(v34 + 8))
  {
    v36 = 1;
  }

  else
  {
    v36 = *v34;
  }

  sub_1AF876794(v35, v19);
  v37 = (*(v16 + 80) + 56) & ~*(v16 + 80);
  v38 = swift_allocObject();
  v39 = v68;
  *(v38 + 16) = a1;
  *(v38 + 20) = v39;
  *(v38 + 24) = v24;
  *(v38 + 32) = v36;
  *(v38 + 40) = v65;
  *(v38 + 48) = v32;
  sub_1AF875B60(v19, v38 + v37);
  v40 = (v38 + ((v17 + v37 + 7) & 0xFFFFFFFFFFFFFFF8));
  v41 = v66;
  v42 = v70;
  *v40 = v66;
  v40[1] = v42;
  *&v84 = sub_1AF876814;
  *(&v84 + 1) = v38;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v83 = sub_1AF874D7C;
  *(&v83 + 1) = &unk_1F24E60F0;
  v43 = _Block_copy(&aBlock);
  v71 = v32;
  swift_bridgeObjectRetain_n();

  ComputePass = RGBuilderCreateComputePass(v69, "Custom compute", v43);
  _Block_release(v43);
  v45 = *(v42 + 16);
  if (v45)
  {
    v46 = (v42 + 32);
    do
    {
      v47 = *v46++;
      RGPassDependsOn(ComputePass, v47);
      --v45;
    }

    while (v45);
  }

  sub_1AF24EDD0(v81);
  v48 = *(v41 + 16);
  v49 = v41;
  v50 = v67;
  if (!v48)
  {
LABEL_35:

    sub_1AF875BE0(v50);
    v76 = v81[4];
    v77 = v81[5];
    v78 = v81[6];
    v79 = v81[7];
    v72 = v81[0];
    v73 = v81[1];
    v74 = v81[2];
    v75 = v81[3];
    sub_1AF448404(&v72);
    v88 = v78;
    v89 = v79;
    v90 = v80;
    v84 = v74;
    v85 = v75;
    v86 = v76;
    v87 = v77;
    aBlock = v72;
    v83 = v73;
    goto LABEL_11;
  }

  v51 = 0;
  v52 = 0;
  v53 = v49 + 56;
  v54 = -v48;
  while (1)
  {
    v58 = (v53 + 32 * v51++);
    while (1)
    {
      v59 = *(v58 - 1);
      v60 = *v58;
      if (*v58)
      {
        break;
      }

      v58 += 32;
      RGPassReadsFrom(ComputePass, v59);
      ++v51;
      if (v54 + v51 == 1)
      {
        goto LABEL_35;
      }
    }

    if (v60 == 1)
    {
      goto LABEL_27;
    }

    if (v60 != 2)
    {
      break;
    }

    v61 = *(v58 - 1);
    RGPassReadsFrom(ComputePass, v59);
    v59 = v61;
LABEL_27:
    v56 = v59;
    RGPassWritesTo(ComputePass, v59);
    v57 = &v81[v52];
    *v57 = ComputePass;
    v57[1] = v56;
    ++v52;
    if (!(v54 + v51))
    {
      goto LABEL_35;
    }
  }

  sub_1AFDFE518();
  __break(1u);
}

void sub_1AF87549C()
{
  if (!qword_1EB632EA0)
  {
    sub_1AF875C58(255, &unk_1ED72C510, type metadata accessor for ScriptRuntime);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632EA0);
    }
  }
}

__n128 sub_1AF875510@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a5;
  v61 = a4;
  v62 = a3;
  v83 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(a1);
  sub_1AF87549C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF875C58(0, &unk_1ED72C510, type metadata accessor for ScriptRuntime);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14, v18);
  v19 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v63 = &v58 - v23;
  if (v9 || a1 != -1)
  {

    sub_1AF3C97B0(a1, v13);

    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      goto LABEL_5;
    }

    v29 = v13;
    v30 = v63;
    sub_1AF875B60(v29, v63);
    v31 = *(v30 + *(v15 + 44));
    if (!v31 || !v31[2])
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v55 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v57 = v55;
        swift_once();
        v55 = v57;
      }

      *&aBlock = 0;
      sub_1AF0D4F18(v55, &aBlock, 0xD000000000000027, 0x80000001AFF37800);
      sub_1AF875BE0(v30);
      goto LABEL_10;
    }

    v32 = v31[4];
    v58 = v31[5];
    v59 = v32;
    sub_1AF875C58(0, &unk_1ED728E20, type metadata accessor for ScriptCompileAttempt);
    v34 = v30 + *(v33 + 36);
    v35 = v30;
    if (*(v34 + 8))
    {
      v36 = 1;
    }

    else
    {
      v36 = *v34;
    }

    sub_1AF876794(v35, v19);
    v37 = (*(v16 + 80) + 56) & ~*(v16 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    *(v38 + 24) = a1;
    *(v38 + 28) = v9;
    v40 = v58;
    v39 = v59;
    *(v38 + 32) = a2;
    *(v38 + 40) = v39;
    *(v38 + 48) = v40;
    sub_1AF875B60(v19, v38 + v37);
    v41 = (v38 + ((v17 + v37 + 7) & 0xFFFFFFFFFFFFFFF8));
    v42 = v61;
    v43 = v62;
    *v41 = v62;
    v41[1] = v42;
    *&v76 = sub_1AF8779F8;
    *(&v76 + 1) = v38;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v75.n128_u64[0] = sub_1AF874D7C;
    v75.n128_u64[1] = &unk_1F253EDA0;
    v44 = _Block_copy(&aBlock);

    RenderPass = RGBuilderCreateRenderPass(v60, "Custom frag", v44);
    _Block_release(v44);
    v46 = *(v42 + 16);
    if (v46)
    {
      v47 = (v42 + 32);
      do
      {
        v48 = *v47++;
        RGPassDependsOn(RenderPass, v48);
        --v46;
      }

      while (v46);
    }

    sub_1AF24EDD0(v73);
    v49 = *(v43 + 16);
    if (!v49)
    {
LABEL_37:
      sub_1AF875BE0(v63);
      v68 = v73[4];
      v69 = v73[5];
      v70 = v73[6];
      v71 = v73[7];
      v64 = v73[0];
      v65 = v73[1];
      v66 = v73[2];
      v67 = v73[3];
      sub_1AF448404(&v64);
      v80 = v70;
      v81 = v71;
      v82 = v72;
      v76 = v66;
      v77 = v67;
      v78 = v68;
      v79 = v69;
      aBlock = v64;
      v75 = v65;
      goto LABEL_11;
    }

    v50 = 0;
    v51 = (v43 + 56);
    while (1)
    {
      v52 = *(v51 - 1);
      if (*v51 > 1u)
      {
        v53 = &v73[v50];
        if (*v51 == 2)
        {
          RGPassReadsFrom(RenderPass, *(v51 - 1));
          RGPassWritesTo(RenderPass, v52);
        }

        else
        {
          RGPassRendersTo(RenderPass, *(v51 - 1), 2u, 1, *(v51 - 3));
        }

        *v53 = RenderPass;
        v53[1] = v52;
      }

      else
      {
        if (!*v51)
        {
          RGPassReadsFrom(RenderPass, *(v51 - 1));
          goto LABEL_25;
        }

        RGPassWritesTo(RenderPass, *(v51 - 1));
        v54 = &v73[v50];
        *v54 = RenderPass;
        v54[1] = v52;
      }

      ++v50;
LABEL_25:
      v51 += 32;
      if (!--v49)
      {
        goto LABEL_37;
      }
    }
  }

  (*(v16 + 56))(v13, 1, 1, v15, v22);
LABEL_5:
  sub_1AF87770C(v13, sub_1AF87549C);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v24 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v56 = v24;
    swift_once();
    v24 = v56;
  }

  *&aBlock = 0;
  sub_1AF0D4F18(v24, &aBlock, 0xD000000000000016, 0x80000001AFF376A0);
LABEL_10:
  sub_1AF875B40(&aBlock);
LABEL_11:
  v25 = v81;
  *(a6 + 96) = v80;
  *(a6 + 112) = v25;
  *(a6 + 128) = v82;
  v26 = v77;
  *(a6 + 32) = v76;
  *(a6 + 48) = v26;
  v27 = v79;
  *(a6 + 64) = v78;
  *(a6 + 80) = v27;
  result = v75;
  *a6 = aBlock;
  *(a6 + 16) = result;
  return result;
}

double sub_1AF875B40(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_1AF875B60(uint64_t a1, uint64_t a2)
{
  sub_1AF875C58(0, &unk_1ED72C510, type metadata accessor for ScriptRuntime);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF875BE0(uint64_t a1)
{
  sub_1AF875C58(0, &unk_1ED72C510, type metadata accessor for ScriptRuntime);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF875C58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, _UNKNOWN **))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MetalFunctionScript(255);
    v7 = a3(a1, v6, &off_1ED729C40);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1AF875CC0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v103 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74();
  v89 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v86 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1AFDFC298();
  v21 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v22);
  v87 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a5 - 0x61C8864680B583EBLL;
  v25 = a7 + ((a5 - 0x61C8864680B583EBLL) << 6) + ((a5 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL;
  if (a3 <= 1u)
  {
    if (!a3)
    {
      return;
    }

    if (a3 == 1)
    {
      CrossFrameResourceManager = RGContextGetCrossFrameResourceManager(a2);
      v27 = RGCrossFrameResourceManagerGet(CrossFrameResourceManager, v25 ^ v24);
      if (RGCrossFrameResourceGetData(v27))
      {
        return;
      }

      v28 = a6;
      v29 = a2;
      sub_1AF875C58(0, &unk_1ED72C510, type metadata accessor for ScriptRuntime);
      v31 = *(a10 + *(v30 + 36));
      if (v31)
      {
        v32 = *(v31 + 88);
        swift_unknownObjectRetain();
      }

      else
      {
        v32 = 0;
      }

      sub_1AFDFF308();
      swift_unknownObjectRetain();

      v62 = MEMORY[0x1E69E7CC0];
      sub_1AF88352C(v96, a8, a9, v32, MEMORY[0x1E69E7CC0]);
      swift_unknownObjectRelease();
      v63 = sub_1AFDFF2E8();
      *&v98 = a8;
      *(&v98 + 1) = a9;
      v99 = 0;
      v100 = v32;
      v101 = v62;
      v102 = v63;
      GPUResourceManager = RGContextGetGPUResourceManager(v29);
      v65 = RGGPUResourceManagerGetDevice(GPUResourceManager);
      _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v65);
      swift_unknownObjectRelease();
      v66 = *(v28 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
      v67 = v66;
      v68 = sub_1AF73BD84(&v98, 0, 0, v66);
      v70 = v69;

      if (v68)
      {
        v89 = RGContextGetCrossFrameResourceManager(v29);
        v71 = swift_slowAlloc();
        *v71 = v68;
        v94 = sub_1AF87768C;
        v95 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v91 = 1107296256;
        v92 = sub_1AF877638;
        v93 = &unk_1F253ED50;
        v72 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        RGCrossFrameResourceManagerCreate(v89, v25 ^ v24, v71, 0, v72);
        _Block_release(v72);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      aBlock = 0;
      v91 = 0xE000000000000000;
      sub_1AFDFE218();

      aBlock = 0xD00000000000001FLL;
      v91 = 0x80000001AFF377D0;
      MEMORY[0x1B2718AE0](a8, a9);
      v73 = aBlock;
      v74 = v91;
      v75 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v77 = v75;
        swift_once();
        v75 = v77;
      }

      aBlock = 0;
      sub_1AF0D4F18(v75, &aBlock, v73, v74);

      swift_unknownObjectRelease();

      goto LABEL_45;
    }

    goto LABEL_29;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      return;
    }

LABEL_29:
    type metadata accessor for RGExecutionPhase(0);
    LOBYTE(v98) = a3;
    sub_1AFDFF138();
    __break(1u);
LABEL_30:
    if (a6)
    {
      swift_getObjectType();
      v58 = swift_unknownObjectRetain();
      sub_1AF6F448C(v58, a6, 0);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      return;
    }

    goto LABEL_48;
  }

  v33 = RGArgumentsGetComputeEncoder(a4);
  v34 = RGContextGetCrossFrameResourceManager(a2);
  v35 = RGCrossFrameResourceManagerGet(v34, v25 ^ v24);
  Data = RGCrossFrameResourceGetData(v35);
  if (Data)
  {
    v37 = *Data;
    v38 = *(a11 + 16);
    if (!v38)
    {
      swift_unknownObjectRetain();
LABEL_48:
      sub_1AFDFE518();
      __break(1u);
      return;
    }

    v81 = 0x80000001AFF377B0;
    v80 = (v21 + 32);
    v78[1] = v37;
    swift_unknownObjectRetain();
    a6 = 0;
    v39 = (a11 + 56);
    v79 = xmmword_1AFE431C0;
    v83 = a2;
    v82 = v33;
    while (1)
    {
      v40 = *(v39 - 3);
      v41 = *(v39 - 1);
      v42 = *v39;
      if (RGResourceIsTexture(v41))
      {
        v43 = RGContextGetGPUResourceManager(a2);
        v44 = RGGPUResourceManagerGetTexture(v43, v41);
        if (!v44)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          *&v98 = 0;
          *(&v98 + 1) = 0xE000000000000000;
          sub_1AFDFE218();

          *&v98 = 0xD00000000000001FLL;
          *(&v98 + 1) = v81;
          aBlock = v40;
          v49 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v49);

          MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
          RGResourceGetName(v41);
          v50 = sub_1AFDFD0E8();
          MEMORY[0x1B2718AE0](v50);

          v51 = v98;
          v52 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          v85 = a6;
          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          sub_1AF6EFB60();
          v53 = swift_allocObject();
          *(v53 + 16) = v79;
          *(v53 + 56) = MEMORY[0x1E69E6158];
          *(v53 + 64) = sub_1AF0D544C();
          *(v53 + 32) = v51;

          sub_1AFDFC4C8();

          v54 = v87;
          sub_1AFDFC288();
          v84 = *(v89 + 12);
          v55 = *(v89 + 16);
          v56 = v86;
          v57 = &v86[*(v89 + 20)];
          (*v80)(v86, v54, v88);
          *(v56 + v84) = v52;
          *(v56 + v55) = 0;
          *v57 = v51;
          sub_1AFDFC608();

          sub_1AF87770C(v56, sub_1AF0D4E74);
          a2 = v83;
          v33 = v82;
          a6 = v85;
          goto LABEL_12;
        }

        v45 = v44;
        [v33 setTexture:v44 atIndex:v40];
        if (v42 != 2 && v42 != 1)
        {
          goto LABEL_20;
        }

        swift_unknownObjectRelease();
        a6 = v45;
      }

      else if (RGResourceGetType(v41) == 1)
      {
        v46 = RGContextGetGPUResourceManager(a2);
        v97 = 0;
        *&v98 = 0;
        aBlock = 0;
        RGGPUResourceManagerGetBuffer(v46, v41, &v97, &v98, &aBlock);
        v47 = v97;
        v48 = aBlock;
        swift_unknownObjectRetain();
        [v33 setBuffer:v47 offset:v48 atIndex:v40];
LABEL_20:
        swift_unknownObjectRelease();
      }

LABEL_12:
      v39 += 32;
      if (!--v38)
      {
        goto LABEL_30;
      }
    }
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  *&v98 = 0xD000000000000028;
  *(&v98 + 1) = 0x80000001AFF37750;
  v59 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v59);

  v60 = v98;
  v61 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v76 = v61;
    swift_once();
    v61 = v76;
  }

  *&v98 = 0;
  sub_1AF0D4F18(v61, &v98, v60, *(&v60 + 1));
  swift_unknownObjectRelease();
LABEL_45:
}

uint64_t sub_1AF876794(uint64_t a1, uint64_t a2)
{
  sub_1AF875C58(0, &unk_1ED72C510, type metadata accessor for ScriptRuntime);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF87682C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AF876844(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void (**a8)(char *, char *, uint64_t), int *a9, char *a10, uint64_t a11)
{
  v103 = a7;
  v104 = a8;
  v108 = a5;
  ShaderCache6deviceyXlSo9MTLDevice_p_tF_0 = a6;
  v105 = a4;
  v14 = a3;
  v187 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1AFDFC298();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v14)
  {
    return;
  }

  OutputAtIndex = RGPassGetOutputAtIndex(a1, 0);
  v26 = RGContextResolveTextureDescriptor(a2, OutputAtIndex);
  v107 = a2;
  v101 = v19;
  v102 = v16;
  v99 = v24;
  v100 = v20;
  v97 = v21;
  LODWORD(v106) = a3;
  if (v26)
  {
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[2];
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  *&v138 = v27;
  *(&v138 + 1) = v28;
  LOWORD(v139) = v29;
  BYTE2(v139) = BYTE2(v29);
  v30 = sub_1AF467494(&v138);
  v90 = v27;
  v91 = HIDWORD(v28);
  *&v138 = v27;
  v95 = v27 >> 16;
  v96 = v27 >> 8;
  v93 = v28;
  v94 = v27 >> 24;
  *&v98 = HIDWORD(v27);
  *(&v138 + 1) = v28;
  BYTE2(v139) = BYTE2(v29);
  v92 = v29;
  LOWORD(v139) = v29;
  v31 = (((v30 - 0x61C8864680B583EBLL) << 6) + ((v30 - 0x61C8864680B583EBLL) >> 2) + sub_1AF448440(&v138) - 0x61C8864680B583EBLL) ^ (v30 - 0x61C8864680B583EBLL);
  v32 = (v108 + 64 * v31 + (v31 >> 2) - 0x61C8864680B583EBLL) ^ v31;
  v33 = ShaderCache6deviceyXlSo9MTLDevice_p_tF_0 + (v32 << 6) + (v32 >> 2) - 0x61C8864680B583EBLL;
  if (v106 == 2)
  {
    v52 = RGArgumentsGetRenderEncoder(v105);
    v53 = v107;
    CrossFrameResourceManager = RGContextGetCrossFrameResourceManager(v107);
    v55 = RGCrossFrameResourceManagerGet(CrossFrameResourceManager, v33 ^ v32);
    Data = RGCrossFrameResourceGetData(v55);
    if (!Data)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v138 = 0;
      *(&v138 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v138 = 0xD000000000000027;
      *(&v138 + 1) = 0x80000001AFF37840;
      v78 = sub_1AF656F38();
      MEMORY[0x1B2718AE0](v78);

      v79 = v138;
      v80 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v87 = v80;
        swift_once();
        v80 = v87;
      }

      *&v138 = 0;
      sub_1AF0D4F18(v80, &v138, v79, *(&v79 + 1));
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    v57 = *(a11 + 16);
    v96 = *Data;
    if (!v57)
    {
      swift_unknownObjectRetain();
LABEL_37:
      swift_getObjectType();
      [v52 setRenderPipelineState_];
      sub_1AF6F5B7C(1);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    v104 = (v97 + 32);
    v105 = 0x80000001AFF377B0;
    swift_unknownObjectRetain();
    v58 = (a11 + 56);
    v103 = 0xD00000000000001FLL;
    v98 = xmmword_1AFE431C0;
    v106 = v52;
    while (1)
    {
      if (*v58 != 3)
      {
        v61 = *(v58 - 3);
        v62 = *(v58 - 1);
        if (RGResourceIsTexture(v62))
        {
          GPUResourceManager = RGContextGetGPUResourceManager(v53);
          v60 = RGGPUResourceManagerGetTexture(GPUResourceManager, v62);
          if (!v60)
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            *&v138 = 0;
            *(&v138 + 1) = 0xE000000000000000;
            sub_1AFDFE218();

            *&v138 = v103;
            *(&v138 + 1) = v105;
            *&v174 = v61;
            v66 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v66);

            MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
            RGResourceGetName(v62);
            v67 = sub_1AFDFD0E8();
            MEMORY[0x1B2718AE0](v67);

            v68 = v138;
            v69 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF6EFB60();
            v70 = swift_allocObject();
            *(v70 + 16) = v98;
            *(v70 + 56) = MEMORY[0x1E69E6158];
            *(v70 + 64) = sub_1AF0D544C();
            *(v70 + 32) = v68;

            sub_1AFDFC4C8();

            LODWORD(ShaderCache6deviceyXlSo9MTLDevice_p_tF_0) = v69;
            v71 = v99;
            sub_1AFDFC288();
            v72 = v102[12];
            v73 = v102[16];
            v74 = v102[20];
            v108 = *(&v68 + 1);
            v75 = v101;
            v76 = &v101[v74];
            (*v104)(v101, v71, v100);
            *(v75 + v72) = ShaderCache6deviceyXlSo9MTLDevice_p_tF_0;
            *(v75 + v73) = 0;
            v77 = v108;
            *v76 = v68;
            *(v76 + 1) = v77;
            sub_1AFDFC608();

            sub_1AF87770C(v75, sub_1AF0D4E74);
            v52 = v106;
            v53 = v107;
            goto LABEL_19;
          }

          [v52 setFragmentTexture:v60 atIndex:v61];
        }

        else
        {
          if (RGResourceGetType(v62) != 1)
          {
            goto LABEL_19;
          }

          v63 = RGContextGetGPUResourceManager(v53);
          *&v138 = 0;
          *&v174 = 0;
          *&v127 = 0;
          RGGPUResourceManagerGetBuffer(v63, v62, &v127, &v138, &v174);
          v64 = v127;
          v65 = v174;
          swift_unknownObjectRetain();
          [v52 setFragmentBuffer:v64 offset:v65 atIndex:v61];
        }

        swift_unknownObjectRelease();
      }

LABEL_19:
      v58 += 32;
      if (!--v57)
      {
        goto LABEL_37;
      }
    }
  }

  v34 = v107;
  if (v106 == 1)
  {
    v35 = RGContextGetCrossFrameResourceManager(v107);
    v36 = RGCrossFrameResourceManagerGet(v35, v33 ^ v32);
    if (!RGCrossFrameResourceGetData(v36))
    {
      v100 = v33;
      v101 = a10;
      v102 = a9;
      v37 = RGContextGetGPUResourceManager(v34);
      v38 = RGGPUResourceManagerGetDevice(v37);
      ShaderCache6deviceyXlSo9MTLDevice_p_tF_0 = _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v38);
      swift_unknownObjectRelease();
      LODWORD(v106) = *(v103 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
      v105 = *(v103 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
      v108 = v105;
      v40 = v90;
      v39 = v91;
      LOBYTE(v138) = v90;
      v41 = v95;
      v42 = v96;
      BYTE1(v138) = v96;
      BYTE2(v138) = v95;
      v43 = v93;
      v44 = v94;
      BYTE3(v138) = v94;
      *(&v138 + 4) = __PAIR64__(v93, v98);
      HIDWORD(v138) = v91;
      v45 = v92;
      v46 = WORD1(v92);
      BYTE2(v139) = BYTE2(v92);
      LOWORD(v139) = v92;
      v103 = sub_1AF467494(&v138);
      LOBYTE(v138) = v40;
      BYTE1(v138) = v42;
      BYTE2(v138) = v41;
      BYTE3(v138) = v44;
      *(&v138 + 4) = __PAIR64__(v43, v98);
      HIDWORD(v138) = v39;
      BYTE2(v139) = v46;
      LOWORD(v139) = v45;
      v47 = sub_1AF448440(&v138);
      if (v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = 1;
      }

      sub_1AF875C58(0, &unk_1ED72C510, type metadata accessor for ScriptRuntime);
      v50 = *&v101[*(v49 + 36)];
      v89 = v32;
      if (v50)
      {
        v51 = *(v50 + 88);
        swift_unknownObjectRetain();
      }

      else
      {
        v51 = 0;
      }

      *&v174 = 0xD000000000000023;
      *(&v174 + 1) = 0x80000001AFF37870;
      v176 = 0;
      v175 = 0;
      *&v177 = MEMORY[0x1E69E7CC0];
      *(&v177 + 1) = v104;
      v178 = v102;
      v179 = 0;
      *&v180 = v51;
      *(&v180 + 1) = MEMORY[0x1E69E7CC0];
      v181 = 0u;
      v182 = 0u;
      v183 = 0u;
      v184 = 0u;
      v185 = 0u;
      v186 = 0u;
      v129 = v177;
      v130 = v102;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v131 = v180;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v127 = v174;
      v128 = 0u;
      sub_1AF5FF2F0(&v112);
      v114 = xmmword_1AFE68E40;
      v115 = xmmword_1AFE68E40;
      v112 = xmmword_1AFE68E40;
      v113 = xmmword_1AFE68E40;
      v116 = xmmword_1AFE68E40;
      v117 = xmmword_1AFE68E40;
      v118 = xmmword_1AFE68E40;
      v119 = xmmword_1AFE68E40;
      sub_1AFDFF308();
      swift_unknownObjectRetain();
      swift_bridgeObjectRetain_n();
      sub_1AF6021F8(&v174, &v138);
      sub_1AF89747C(&v111);
      v81 = v103;
      MEMORY[0x1B271ACB0](v103);
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](0);
      sub_1AFDFF2A8();
      v120 = v112;
      v121 = v113;
      v122 = v114;
      v123 = v115;
      sub_1AF5FF304();
      sub_1AFDFF2A8();
      sub_1AFDFF2A8();
      MEMORY[0x1B271ACB0](3);
      sub_1AFDFF2A8();
      sub_1AFDFF2A8();
      v82 = sub_1AFDFF2E8();
      v146 = v135;
      v147 = v136;
      v148 = v137;
      v142 = v131;
      v143 = v132;
      v144 = v133;
      v145 = v134;
      v138 = v127;
      v139 = v128;
      v140 = v129;
      v141 = v130;
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      v149 = v81;
      v154 = 0;
      v155 = v48;
      *v156 = *v126;
      *&v156[3] = *&v126[3];
      v157 = v116;
      v158 = v117;
      v159 = v118;
      v160 = v119;
      v162 = 0;
      v161 = 0;
      v163 = 3;
      v164 = 0;
      v165 = 0;
      v166 = 2;
      v169 = 0;
      v167 = 0;
      v168 = 0;
      v170 = 257;
      v171 = v124;
      v172 = v125;
      v173 = v82;
      v83 = sub_1AF73B99C(&v138);
      v84 = RGContextGetCrossFrameResourceManager(v107);
      v85 = swift_slowAlloc();
      *v85 = v83;
      v110[4] = sub_1AF8776CC;
      v110[5] = 0;
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 1107296256;
      v110[2] = sub_1AF877638;
      v110[3] = &unk_1F253EDC8;
      v86 = _Block_copy(v110);
      swift_unknownObjectRetain();

      RGCrossFrameResourceManagerCreate(v84, v100 ^ v89, v85, 0, v86);
      _Block_release(v86);
      sub_1AF602304(&v138);

      sub_1AF602254(&v174);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_40:
    }
  }
}

uint64_t sub_1AF877638(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1AF87768C(uint64_t a1)
{
  sub_1AF87776C(a1);

  JUMPOUT(0x1B271DEA0);
}

void sub_1AF8776CC(uint64_t a1)
{
  sub_1AF877B0C(a1);

  JUMPOUT(0x1B271DEA0);
}

uint64_t sub_1AF87770C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF8777B0()
{
  sub_1AF875C58(0, &unk_1ED72C510, type metadata accessor for ScriptRuntime);
  v2 = v1;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(*(v1 - 8) + 64);

  v6 = v0 + v4;

  v7 = type metadata accessor for MetalFunctionScript(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for ScriptIndex();
  if (!(*(*(v9 - 8) + 48))(v0 + v4 + v8, 1, v9) && swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1AFDFC318();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 28)))
  {
  }

  sub_1AF875C58(0, &unk_1ED728E20, type metadata accessor for ScriptCompileAttempt);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1AF877A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, char *, void, void))
{
  sub_1AF875C58(0, &unk_1ED72C510, type metadata accessor for ScriptRuntime);
  v12 = (*(*(v11 - 8) + 80) + 56) & ~*(*(v11 - 8) + 80);
  v13 = (*(*(v11 - 8) + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a5(a1, a2, a3, a4, *(v5 + 2), *(v5 + 3), *(v5 + 4), *(v5 + 5), *(v5 + 6), &v5[v12], *&v5[v13], *&v5[v13 + 8]);
}

uint64_t getEnumTagSinglePayload for MetalIOData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MetalIOData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1AF877C20()
{
  result = qword_1EB63FAB8;
  if (!qword_1EB63FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FAB8);
  }

  return result;
}

double sub_1AF877C8C@<D0>(void *a1@<X8>)
{
  *&result = 0x10000010F00;
  *a1 = 0x10000010F00;
  return result;
}

uint64_t sub_1AF877C9C()
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF877D5C()
{
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2A8();
}

uint64_t sub_1AF877DE8()
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

BOOL sub_1AF877EA4(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  result = 0;
  a3.i32[0] = *(a1 + 1);
  a4.i32[0] = *(a2 + 1);
  if ((vminv_u16(vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL))) & 1) != 0 && *(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6))
  {
    return *(a1 + 7) == *(a2 + 7);
  }

  return result;
}

uint64_t sub_1AF877F10()
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x203A626772, 0xE500000000000000);
  type metadata accessor for MTLBlendFactor(0);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  type metadata accessor for MTLBlendOperation(0);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x3A6168706C61202CLL, 0xE900000000000020);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x3A6574697277202CLL, 0xE900000000000020);
  type metadata accessor for MTLColorWriteMask(0);
  sub_1AFDFE458();
  return 0;
}

unint64_t sub_1AF878158()
{
  result = qword_1EB63FAC0;
  if (!qword_1EB63FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FAC0);
  }

  return result;
}

uint64_t sub_1AF8781AC(uint64_t a1)
{
  result = 0x10000010F00;
  if ((a1 & 0x100000000) != 0)
  {
    return qword_1AFE7C030[a1] | qword_1AFE7C018[a1] | 0x10000010F00;
  }

  return result;
}

uint64_t sub_1AF8781E4(void *a1, uint64_t a2)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v5, v6);
  if ((a2 & 0x100000000) != 0)
  {
    sub_1AFDFEC28();
  }

  else
  {
    sub_1AFDFEC28();
    if (!v2)
    {
      sub_1AF448018(v5, v6);
      sub_1AFDFEC18();
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

uint64_t sub_1AF8782EC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x1B271ACB0](v3);
  }

  else
  {
    MEMORY[0x1B271ACB0](3);
    return sub_1AFDFF2C8();
  }
}

BOOL sub_1AF878358(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 4);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (LODWORD(v2) == 1)
    {
      if (LODWORD(v3) == 1)
      {
        v4 = *(a2 + 4);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (LODWORD(v3) > 1)
      {
        v7 = *(a2 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 4) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t sub_1AF8783DC()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1AFDFF288();
  sub_1AF8782EC(v4, v1 | (v2 << 32));
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF878450()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1AFDFF288();
  sub_1AF8782EC(v4, v1 | (v2 << 32));
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF8784A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF878508(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
  }

  return result;
}

unint64_t sub_1AF878508(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF448018(v8, v9);
  v3 = sub_1AFDFEAB8();
  if (v3 >= 3)
  {
    if (v3 == 3)
    {
      sub_1AF448018(v8, v9);
      sub_1AFDFEAA8();
      v6 = 0;
      v5 = v7;
      goto LABEL_6;
    }

    sub_1AFDFE2C8();
    swift_allocError();
    sub_1AFDFE288();
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v5 = v3;
  v6 = 1;
LABEL_6:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v8[0] = v6;
  return v5 | (v6 << 32);
}

unint64_t sub_1AF87868C()
{
  result = qword_1EB63FAC8;
  if (!qword_1EB63FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FAC8);
  }

  return result;
}

uint64_t sub_1AF8786E0()
{
  v1 = *(v0 + 40);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF878754()
{
  v1 = *(v0 + 40);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t destroy for FunctionDescriptor()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void *initializeWithCopy for ComputePipelineDescriptor(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return a1;
}

void *assignWithCopy for ComputePipelineDescriptor(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[3] = a2[3];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[4] = a2[4];

  a1[5] = a2[5];
  return a1;
}

uint64_t assignWithTake for ComputePipelineDescriptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

unint64_t sub_1AF8789A8()
{
  result = qword_1EB63FAD0;
  if (!qword_1EB63FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FAD0);
  }

  return result;
}

uint64_t sub_1AF8789FC(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t *a9, uint64_t a10)
{
  if ((a1 != a6 || a2 != a7) && (sub_1AFDFEE28() & 1) == 0)
  {
    return 0;
  }

  if (!a3)
  {
    if (!a8)
    {
      return sub_1AFB7B210(a4, a9) & (a5 == a10);
    }

    return 0;
  }

  result = 0;
  if (a8 && a3 == a8)
  {
    return sub_1AFB7B210(a4, a9) & (a5 == a10);
  }

  return result;
}

unint64_t sub_1AF878A90(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v26 = 0;
    LOBYTE(v25) = 1;
    goto LABEL_61;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v29[0] = a1;
      v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          LODWORD(v7) = 0;
          v17 = v29 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v7;
            if (v19 != v19)
            {
              break;
            }

            LODWORD(v7) = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v3)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (a1 == 45)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          LODWORD(v7) = 0;
          v11 = v29 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if (v13 != v13)
            {
              break;
            }

            LODWORD(v7) = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (v2)
      {
        LODWORD(v7) = 0;
        v22 = v29;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if (v24 != v24)
          {
            break;
          }

          LODWORD(v7) = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v2)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_57;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v5 = sub_1AFDFE308();
      v3 = v28;
    }

    v6 = *v5;
    if (v6 == 43)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        if (v5)
        {
          v14 = v5 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              goto LABEL_57;
            }

            v16 = 10 * v7;
            if (v16 != v16)
            {
              goto LABEL_57;
            }

            LODWORD(v7) = v16 + v15;
            if (__OFADD__(v16, v15))
            {
              goto LABEL_57;
            }

            ++v14;
            if (!--v3)
            {
              goto LABEL_58;
            }
          }
        }

        goto LABEL_56;
      }
    }

    else if (v6 == 45)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        if (v5)
        {
          v8 = v5 + 1;
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_57;
            }

            v10 = 10 * v7;
            if (v10 != v10)
            {
              goto LABEL_57;
            }

            LODWORD(v7) = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_57;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_58;
            }
          }
        }

LABEL_56:
        LOBYTE(v3) = 0;
LABEL_58:
        v30 = v3;
        LOBYTE(v25) = v3;

        goto LABEL_59;
      }
    }

    else if (v3)
    {
      LODWORD(v7) = 0;
      if (v5)
      {
        while (1)
        {
          v20 = *v5 - 48;
          if (v20 > 9)
          {
            goto LABEL_57;
          }

          v21 = 10 * v7;
          if (v21 != v21)
          {
            goto LABEL_57;
          }

          LODWORD(v7) = v21 + v20;
          if (__OFADD__(v21, v20))
          {
            goto LABEL_57;
          }

          ++v5;
          if (!--v3)
          {
            goto LABEL_58;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_57:
    LODWORD(v7) = 0;
    LOBYTE(v3) = 1;
    goto LABEL_58;
  }

  v7 = sub_1AF87B240(a1, a2, 10);

  v25 = HIDWORD(v7) & 1;
LABEL_59:
  v26 = v7;
  if (v25)
  {
    v26 = 0;
  }

LABEL_61:
  LOBYTE(v29[0]) = v25;
  return v26 | ((v25 & 1) << 32);
}

uint64_t sub_1AF878D44(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v29[0] = a1;
      v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v7 = 0;
          v17 = v29 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v3)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (a1 == 45)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v7 = 0;
          v11 = v29 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (v2)
      {
        v7 = 0;
        v22 = v29;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v2)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_57;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v5 = sub_1AFDFE308();
      v3 = v28;
    }

    v6 = *v5;
    if (v6 == 43)
    {
      if (--v3)
      {
        v7 = 0;
        if (v5)
        {
          v14 = v5 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              goto LABEL_57;
            }

            v16 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_57;
            }

            v7 = v16 + v15;
            if (__OFADD__(v16, v15))
            {
              goto LABEL_57;
            }

            ++v14;
            if (!--v3)
            {
              goto LABEL_58;
            }
          }
        }

        goto LABEL_56;
      }
    }

    else if (v6 == 45)
    {
      if (--v3)
      {
        v7 = 0;
        if (v5)
        {
          v8 = v5 + 1;
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_57;
            }

            v10 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_57;
            }

            v7 = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_57;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_58;
            }
          }
        }

LABEL_56:
        LOBYTE(v3) = 0;
LABEL_58:
        v30 = v3;
        v25 = v3;
        goto LABEL_59;
      }
    }

    else if (v3)
    {
      v7 = 0;
      if (v5)
      {
        while (1)
        {
          v20 = *v5 - 48;
          if (v20 > 9)
          {
            goto LABEL_57;
          }

          v21 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            goto LABEL_57;
          }

          v7 = v21 + v20;
          if (__OFADD__(v21, v20))
          {
            goto LABEL_57;
          }

          ++v5;
          if (!--v3)
          {
            goto LABEL_58;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_57:
    v7 = 0;
    LOBYTE(v3) = 1;
    goto LABEL_58;
  }

  v7 = sub_1AF87B790(a1, a2, 10);
  v25 = v27;
LABEL_59:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

__n128 sub_1AF879030@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, a2);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v9 = *(v6 + 8);
      v9(a1, a2);
      v13.n128_u8[0] = v32.n128_u8[0];
LABEL_7:
      v31 = v13;
      v12 = 15;
      goto LABEL_8;
    }

    if (swift_dynamicCast())
    {
      v9 = *(v6 + 8);
      v9(a1, a2);
      v11 = v32.n128_i16[0];
      goto LABEL_3;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      v9 = *(v6 + 8);
      v9(a1, a2);
      v13.n128_u32[0] = v32.n128_u16[0];
      goto LABEL_7;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
LABEL_17:
      v9 = *(v6 + 8);
      v9(a1, a2);
      v13.n128_u32[0] = v32.n128_u32[0];
      goto LABEL_7;
    }

    if (swift_dynamicCast())
    {
LABEL_12:
      v9 = *(v6 + 8);
      v9(a1, a2);
      v10.n128_u32[0] = v32.n128_u32[0];
      goto LABEL_4;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_17;
    }

    if (swift_dynamicCast())
    {
      v9 = *(v6 + 8);
      v16 = v9(a1, a2);
      v16.n128_u32[0] = v32.n128_u8[0];
      v31 = v16;
      v12 = 13;
      goto LABEL_8;
    }

    type metadata accessor for simd_float2x2(0);
    if (swift_dynamicCast())
    {
LABEL_23:
      v9 = *(v6 + 8);
      v9(a1, a2);
      v31 = v32;
      v12 = 4;
      goto LABEL_8;
    }

    type metadata accessor for simd_float2x3(0);
    v18 = v17;
    if (swift_dynamicCast())
    {
LABEL_25:
      v9 = *(v6 + 8);
      v9(a1, a2);
      v30 = v33;
      v31 = v32;
      v12 = 5;
      goto LABEL_8;
    }

    v31.n128_u64[0] = v18;
    type metadata accessor for simd_float2x4(0);
    if (swift_dynamicCast())
    {
LABEL_27:
      v9 = *(v6 + 8);
      v9(a1, a2);
      v30 = v33;
      v31 = v32;
      v12 = 6;
      goto LABEL_8;
    }

    type metadata accessor for simd_float3x2(0);
    if (swift_dynamicCast())
    {
LABEL_29:
      v9 = *(v6 + 8);
      v9(a1, a2);
      *&v19 = v33;
      v30 = v19;
      v31 = v32;
      v12 = 7;
      goto LABEL_8;
    }

    type metadata accessor for simd_float3x3(0);
    if (swift_dynamicCast())
    {
      goto LABEL_31;
    }

    type metadata accessor for simd_float3x4(0);
    if (swift_dynamicCast())
    {
LABEL_33:
      v9 = *(v6 + 8);
      v9(a1, a2);
      v30 = v33;
      v31 = v32;
      v12 = 9;
      goto LABEL_34;
    }

    type metadata accessor for simd_float4x2(0);
    *&v30 = v20;
    if (swift_dynamicCast())
    {
LABEL_36:
      v9 = *(v6 + 8);
      v9(a1, a2);
      v30 = v33;
      v31 = v32;
      v12 = 10;
      goto LABEL_8;
    }

    type metadata accessor for simd_float4x3(0);
    *&v29 = v21;
    if (swift_dynamicCast())
    {
      goto LABEL_38;
    }

    type metadata accessor for simd_float4x4(0);
    v28.n128_u64[0] = v22;
    if (swift_dynamicCast())
    {
      goto LABEL_40;
    }

    if (swift_dynamicCast())
    {
      v9 = *(v6 + 8);
      v9(a1, a2);
      v12 = 0;
      v24.n128_u32[0] = v32.n128_u32[0];
LABEL_45:
      v31 = v24;
      goto LABEL_8;
    }

    sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
    if (swift_dynamicCast())
    {
      v9 = *(v6 + 8);
      v25 = v9(a1, a2);
      v25.n128_u64[0] = v32.n128_u64[0];
      v31 = v25;
      v12 = 1;
      goto LABEL_8;
    }

    sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
    if (swift_dynamicCast())
    {
      v9 = *(v6 + 8);
      v9(a1, a2);
      v31 = v32;
      v12 = 2;
      goto LABEL_8;
    }

    sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
    if (swift_dynamicCast())
    {
      v9 = *(v6 + 8);
      v9(a1, a2);
      v31 = v32;
      v12 = 3;
      goto LABEL_8;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_23;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_36;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_25;
    }

    if (swift_dynamicCast())
    {
LABEL_31:
      v9 = *(v6 + 8);
      v9(a1, a2);
      v30 = v33;
      v31 = v32;
      v12 = 8;
LABEL_34:
      v29 = v34;
      goto LABEL_8;
    }

    if (swift_dynamicCast())
    {
LABEL_38:
      v9 = *(v6 + 8);
      v9(a1, a2);
      v30 = v33;
      v31 = v32;
      v12 = 11;
LABEL_41:
      v23 = v35;
      v29 = v34;
LABEL_42:
      v28 = v23;
      goto LABEL_8;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_27;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_33;
    }

    if (swift_dynamicCast())
    {
LABEL_40:
      v9 = *(v6 + 8);
      v9(a1, a2);
      v30 = v33;
      v31 = v32;
      v12 = 12;
      goto LABEL_41;
    }

    if (swift_dynamicCast())
    {
      v26 = v32;
      if (*&v32 == __PAIR128__(0xE500000000000000, 0x65736C6166) || (sub_1AFDFEE28() & 1) != 0)
      {
        v9 = *(v6 + 8);
        v9(a1, a2);

        v12 = 13;
        v24 = 0uLL;
        goto LABEL_45;
      }

      if (*&v26 == __PAIR128__(0xE400000000000000, 1702195828) || (sub_1AFDFEE28() & 1) != 0)
      {
        v9 = *(v6 + 8);
        v9(a1, a2);

        v12 = 13;
        v24.n128_u64[0] = 0x101010101010101;
        v24.n128_u64[1] = 0x101010101010101;
        goto LABEL_45;
      }

      v27 = sub_1AF878A90(v26.n128_i64[0], v26.n128_u64[1]);
      v9 = *(v6 + 8);
      v9(a1, a2);
      if ((v27 & 0x100000000) == 0)
      {
        v10.n128_u32[0] = v27;
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *(v6 + 8);
      v9(a1, a2);
    }

    v12 = -1;
    v23 = 0uLL;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    goto LABEL_42;
  }

  v9 = *(v6 + 8);
  v9(a1, a2);
  v11 = v32.n128_i8[0];
LABEL_3:
  v10.n128_u32[0] = v11;
LABEL_4:
  v31 = v10;
  v12 = 14;
LABEL_8:
  v9(v8, a2);
  v14 = v30;
  *a3 = v31;
  *(a3 + 16) = v14;
  result = v28;
  *(a3 + 32) = v29;
  *(a3 + 48) = result;
  *(a3 + 64) = v12;
  return result;
}

uint64_t sub_1AF879ACC()
{
  v1 = *v0;
  switch(*(v0 + 64))
  {
    case 1:
      v2 = &unk_1ED72F770;
      v3 = MEMORY[0x1E69E7428];
      sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
      v4 = &qword_1EB63ED98;
      goto LABEL_12;
    case 2:
      v2 = &qword_1ED72F740;
      v3 = MEMORY[0x1E69E7450];
      sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
      v4 = &unk_1EB63ED90;
      goto LABEL_12;
    case 3:
      v2 = &qword_1ED72F6E0;
      v3 = MEMORY[0x1E69E74A8];
      sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
      v4 = &unk_1EB63ED88;
LABEL_12:
      sub_1AF87B130(v4, v2, v3);
      return sub_1AFDFF178();
    case 4:
      type metadata accessor for simd_float2x2(0);
      sub_1AFDFE458();
      return 0;
    case 5:
      type metadata accessor for simd_float2x3(0);
      goto LABEL_25;
    case 6:
      type metadata accessor for simd_float2x4(0);
      goto LABEL_25;
    case 7:
      type metadata accessor for simd_float3x2(0);
      goto LABEL_25;
    case 8:
      type metadata accessor for simd_float3x3(0);
      goto LABEL_25;
    case 9:
      type metadata accessor for simd_float3x4(0);
      goto LABEL_25;
    case 0xA:
      type metadata accessor for simd_float4x2(0);
      goto LABEL_25;
    case 0xB:
      type metadata accessor for simd_float4x3(0);
      goto LABEL_25;
    case 0xC:
      type metadata accessor for simd_float4x4(0);
LABEL_25:
      sub_1AFDFE458();
      return 0;
    case 0xD:
      if (v1)
      {
        v6 = 1702195828;
      }

      else
      {
        v6 = 0x65736C6166;
      }

      if (v1)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      MEMORY[0x1B2718AE0](v6, v7);

      return 0;
    case 0xE:
    case 0xF:
      return sub_1AFDFEA08();
    default:
      sub_1AFDFD748();
      return 0;
  }
}

void sub_1AF879E50(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 1);
  switch(*(v1 + 64))
  {
    case 1:
      sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
      *(a1 + 24) = v16;
      *a1 = v2;
      *(a1 + 4) = v3;
      return;
    case 2:
      v11 = &qword_1ED72F740;
      v12 = MEMORY[0x1E69E7450];
      goto LABEL_13;
    case 3:
      v11 = &qword_1ED72F6E0;
      v12 = MEMORY[0x1E69E74A8];
LABEL_13:
      sub_1AF87B174(0, v11, v12);
      *(a1 + 24) = v13;
      v14 = swift_allocObject();
      *a1 = v14;
      *(v14 + 16) = v2;
      *(v14 + 20) = v3;
      *(v14 + 24) = v4;
      return;
    case 4:
      type metadata accessor for simd_float2x2(0);
      *(a1 + 24) = v8;
      *a1 = v2;
      *(a1 + 4) = v3;
      *(a1 + 8) = v4;
      return;
    case 5:
      v27 = *(v1 + 1);
      type metadata accessor for simd_float2x3(0);
      goto LABEL_19;
    case 6:
      v27 = *(v1 + 1);
      type metadata accessor for simd_float2x4(0);
LABEL_19:
      *(a1 + 24) = v17;
      goto LABEL_21;
    case 7:
      v26 = *(v1 + 1);
      type metadata accessor for simd_float3x2(0);
      *(a1 + 24) = v15;
      *a1 = v2;
      *(a1 + 4) = v3;
      *(a1 + 8) = v4;
      *(a1 + 16) = v26;
      return;
    case 8:
      v23 = *(v1 + 2);
      v25 = *(v1 + 1);
      type metadata accessor for simd_float3x3(0);
      goto LABEL_23;
    case 9:
      v23 = *(v1 + 2);
      v25 = *(v1 + 1);
      type metadata accessor for simd_float3x4(0);
LABEL_23:
      *(a1 + 24) = v10;
      v20 = swift_allocObject();
      *a1 = v20;
      *(v20 + 16) = v2;
      *(v20 + 20) = v3;
      *(v20 + 24) = v4;
      *(v20 + 32) = v25;
      *(v20 + 48) = v23;
      return;
    case 0xA:
      v27 = *(v1 + 1);
      type metadata accessor for simd_float4x2(0);
      *(a1 + 24) = v18;
LABEL_21:
      v19 = swift_allocObject();
      *a1 = v19;
      *(v19 + 16) = v2;
      *(v19 + 20) = v3;
      *(v19 + 24) = v4;
      *(v19 + 32) = v27;
      return;
    case 0xB:
      v22 = *(v1 + 2);
      v24 = *(v1 + 1);
      v21 = *(v1 + 3);
      type metadata accessor for simd_float4x3(0);
      goto LABEL_7;
    case 0xC:
      v22 = *(v1 + 2);
      v24 = *(v1 + 1);
      v21 = *(v1 + 3);
      type metadata accessor for simd_float4x4(0);
LABEL_7:
      *(a1 + 24) = v7;
      v9 = swift_allocObject();
      *a1 = v9;
      *(v9 + 16) = v2;
      *(v9 + 20) = v3;
      *(v9 + 24) = v4;
      *(v9 + 32) = v24;
      *(v9 + 48) = v22;
      *(v9 + 64) = v21;
      return;
    case 0xD:
      *(a1 + 24) = MEMORY[0x1E69E6370];
      *a1 = v2;
      return;
    case 0xE:
      v6 = MEMORY[0x1E69E72F0];
      goto LABEL_11;
    case 0xF:
      v6 = MEMORY[0x1E69E7668];
      goto LABEL_11;
    default:
      v6 = MEMORY[0x1E69E6448];
LABEL_11:
      *(a1 + 24) = v6;
      *a1 = v2;
      return;
  }
}

uint64_t sub_1AF87A0E4()
{
  switch(*(v0 + 64))
  {
    case 1:
      MEMORY[0x1B271ACB0](1);
      goto LABEL_23;
    case 2:
      MEMORY[0x1B271ACB0](2);
      goto LABEL_27;
    case 3:
      MEMORY[0x1B271ACB0](3);
      goto LABEL_19;
    case 4:
      MEMORY[0x1B271ACB0](4);
      goto LABEL_14;
    case 5:
      MEMORY[0x1B271ACB0](5);
      sub_1AF6A8C94();
      goto LABEL_27;
    case 6:
      MEMORY[0x1B271ACB0](6);
      sub_1AF6A8C04();
      goto LABEL_19;
    case 7:
      MEMORY[0x1B271ACB0](7);
      sub_1AF6A8D0C();
LABEL_14:
      sub_1AF6A8D0C();
      goto LABEL_23;
    case 8:
      MEMORY[0x1B271ACB0](8);
      sub_1AF6A8C94();
      sub_1AF6A8C94();
      goto LABEL_27;
    case 9:
      MEMORY[0x1B271ACB0](9);
      sub_1AF6A8C04();
      sub_1AF6A8C04();
      goto LABEL_19;
    case 0xA:
      MEMORY[0x1B271ACB0](10);
      sub_1AF6A8D0C();
      sub_1AF6A8D0C();
      sub_1AF6A8D0C();
LABEL_23:

      return sub_1AF6A8D0C();
    case 0xB:
      MEMORY[0x1B271ACB0](11);
      sub_1AF6A8C94();
      sub_1AF6A8C94();
      sub_1AF6A8C94();
LABEL_27:

      return sub_1AF6A8C94();
    case 0xC:
      MEMORY[0x1B271ACB0](12);
      sub_1AF6A8C04();
      sub_1AF6A8C04();
      sub_1AF6A8C04();
LABEL_19:

      return sub_1AF6A8C04();
    case 0xD:
      MEMORY[0x1B271ACB0](15);
      return sub_1AFDFF2A8();
    case 0xE:
      v1 = 13;
      goto LABEL_10;
    case 0xF:
      v1 = 14;
LABEL_10:
      MEMORY[0x1B271ACB0](v1);
      break;
    default:
      MEMORY[0x1B271ACB0](0);
      break;
  }

  return sub_1AFDFF2C8();
}

unint64_t *sub_1AF87A470(unint64_t *result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  switch(*(v1 + 64))
  {
    case 1:
      v31 = *v1;
      v32 = *result;
      v33 = (*result << 6) + (*result >> 2) - 0x61C8864680B583EALL;
      goto LABEL_13;
    case 2:
      v30 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583E9) ^ *result;
      v6 = (v2 + (v30 << 6) + (v30 >> 2) - 0x61C8864680B583EBLL) ^ v30;
      v7 = DWORD2(v2);
      goto LABEL_22;
    case 3:
      v34 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583E8) ^ *result;
      v6 = (v2 + (v34 << 6) + (v34 >> 2) - 0x61C8864680B583EBLL) ^ v34;
      v7 = *(v1 + 1);
      goto LABEL_22;
    case 4:
      v16 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583E7) ^ *result;
      v6 = (v2 + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583EBLL) ^ v16;
      v17 = *(&v2 + 1) + (v6 << 6);
      goto LABEL_23;
    case 5:
      v36 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583E6) ^ *result;
      v37 = (v2 + (v36 << 6) + (v36 >> 2) - 0x61C8864680B583EBLL) ^ v36;
      v38 = (DWORD2(v2) + (v37 << 6) + (v37 >> 2) - 0x61C8864680B583EBLL) ^ v37;
      v6 = (v3 + (v38 << 6) + (v38 >> 2) - 0x61C8864680B583EBLL) ^ v38;
      v7 = DWORD2(v3);
      goto LABEL_22;
    case 6:
      v40 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583E5) ^ *result;
      v41 = (v2 + (v40 << 6) + (v40 >> 2) - 0x61C8864680B583EBLL) ^ v40;
      v42 = (*(&v2 + 1) + (v41 << 6) + (v41 >> 2) - 0x61C8864680B583EBLL) ^ v41;
      v6 = (v3 + (v42 << 6) + (v42 >> 2) - 0x61C8864680B583EBLL) ^ v42;
      v7 = *(v1 + 3);
      goto LABEL_22;
    case 7:
      v31 = *(v1 + 2);
      v35 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583E4) ^ *result;
      v32 = (v2 + (v35 << 6) + (v35 >> 2) - 0x61C8864680B583EBLL) ^ v35;
      v33 = *(&v2 + 1) + (v32 << 6) + (v32 >> 2) - 0x61C8864680B583EBLL;
      goto LABEL_13;
    case 8:
      v46 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583E3) ^ *result;
      v47 = (v2 + (v46 << 6) + (v46 >> 2) - 0x61C8864680B583EBLL) ^ v46;
      v48 = (DWORD2(v2) + (v47 << 6) + (v47 >> 2) - 0x61C8864680B583EBLL) ^ v47;
      v49 = (v3 + (v48 << 6) + (v48 >> 2) - 0x61C8864680B583EBLL) ^ v48;
      v50 = (DWORD2(v3) + (v49 << 6) + (v49 >> 2) - 0x61C8864680B583EBLL) ^ v49;
      v6 = (v4 + (v50 << 6) + (v50 >> 2) - 0x61C8864680B583EBLL) ^ v50;
      v7 = DWORD2(v4);
      goto LABEL_22;
    case 9:
      v25 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583E2) ^ *result;
      v26 = (v2 + (v25 << 6) + (v25 >> 2) - 0x61C8864680B583EBLL) ^ v25;
      v27 = (*(&v2 + 1) + (v26 << 6) + (v26 >> 2) - 0x61C8864680B583EBLL) ^ v26;
      v28 = (v3 + (v27 << 6) + (v27 >> 2) - 0x61C8864680B583EBLL) ^ v27;
      v29 = (*(&v3 + 1) + (v28 << 6) + (v28 >> 2) - 0x61C8864680B583EBLL) ^ v28;
      v6 = (v4 + (v29 << 6) + (v29 >> 2) - 0x61C8864680B583EBLL) ^ v29;
      v7 = *(v1 + 5);
      goto LABEL_22;
    case 0xA:
      v43 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583E1) ^ *result;
      v44 = v2 + (v43 << 6) + (v43 >> 2) - 0x61C8864680B583EBLL;
      v45 = (*(&v2 + 1) + ((v44 ^ v43) << 6) + ((v44 ^ v43) >> 2) - 0x61C8864680B583EBLL) ^ v44 ^ v43;
      v6 = (v3 + (v45 << 6) + (v45 >> 2) - 0x61C8864680B583EBLL) ^ v45;
      v17 = *(&v3 + 1) + (v6 << 6);
      goto LABEL_23;
    case 0xB:
      v9 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583E0) ^ *result;
      v10 = (v2 + (v9 << 6) + (v9 >> 2) - 0x61C8864680B583EBLL) ^ v9;
      v11 = (DWORD2(v2) + (v10 << 6) + (v10 >> 2) - 0x61C8864680B583EBLL) ^ v10;
      v12 = (v3 + (v11 << 6) + (v11 >> 2) - 0x61C8864680B583EBLL) ^ v11;
      v13 = (DWORD2(v3) + (v12 << 6) + (v12 >> 2) - 0x61C8864680B583EBLL) ^ v12;
      v14 = (v4 + (v13 << 6) + (v13 >> 2) - 0x61C8864680B583EBLL) ^ v13;
      v15 = (DWORD2(v4) + (v14 << 6) + (v14 >> 2) - 0x61C8864680B583EBLL) ^ v14;
      v6 = (v5 + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583EBLL) ^ v15;
      v7 = DWORD2(v5);
      goto LABEL_22;
    case 0xC:
      v18 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583DFLL) ^ *result;
      v19 = (v2 + (v18 << 6) + (v18 >> 2) - 0x61C8864680B583EBLL) ^ v18;
      v20 = (*(&v2 + 1) + (v19 << 6) + (v19 >> 2) - 0x61C8864680B583EBLL) ^ v19;
      v21 = (v3 + (v20 << 6) + (v20 >> 2) - 0x61C8864680B583EBLL) ^ v20;
      v22 = (*(&v3 + 1) + (v21 << 6) + (v21 >> 2) - 0x61C8864680B583EBLL) ^ v21;
      v23 = (v4 + (v22 << 6) + (v22 >> 2) - 0x61C8864680B583EBLL) ^ v22;
      v24 = (*(&v4 + 1) + (v23 << 6) + (v23 >> 2) - 0x61C8864680B583EBLL) ^ v23;
      v6 = (v5 + (v24 << 6) + (v24 >> 2) - 0x61C8864680B583EBLL) ^ v24;
      v7 = *(v1 + 7);
      goto LABEL_22;
    case 0xD:
      v6 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583DCLL) ^ *result;
      if (v2)
      {
        v39 = 0x9E3779B97F4A7C16;
      }

      else
      {
        v39 = 0x9E3779B97F4A7C15;
      }

      v8 = v39 + (v6 << 6);
      break;
    case 0xE:
      v6 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583DELL) ^ *result;
      v8 = (v6 << 6) + v2 - 0x61C8864680B583EBLL;
      break;
    case 0xF:
      v31 = v2;
      v32 = *result;
      v33 = (*result << 6) + (*result >> 2) - 0x61C8864680B583DDLL;
LABEL_13:
      v6 = v33 ^ v32;
      v8 = v31 + (v6 << 6) - 0x61C8864680B583EBLL;
      break;
    default:
      v6 = ((*result << 6) + (*result >> 2) - 0x61C8864680B583EBLL) ^ *result;
      v7 = v2;
LABEL_22:
      v17 = v7 + (v6 << 6);
LABEL_23:
      v8 = v17 - 0x61C8864680B583EBLL;
      break;
  }

  *result = (v8 + (v6 >> 2)) ^ v6;
  return result;
}

uint64_t sub_1AF87AB04()
{
  sub_1AFDFF288();
  sub_1AF87A0E4();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF87AB48()
{
  sub_1AFDFF288();
  sub_1AF87A0E4();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF87AB84(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8 = a1[4].i8[0];
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10 = a2[4].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AF87C134(v7, v9) & 1;
}

uint64_t sub_1AF87ABE0(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF87901C();
  sub_1AF448018(v7, v8);
  type metadata accessor for MTLDataType(0);
  sub_1AF87CCD4(&qword_1EB63FAD8);
  sub_1AFDFEC38();
  if (!v2)
  {
    switch(*(v1 + 64))
    {
      case 1:
        sub_1AF448018(v7, v8);
        v3 = &unk_1ED72F770;
        v4 = MEMORY[0x1E69E7428];
        sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
        v5 = &qword_1ED72F798;
        goto LABEL_14;
      case 2:
        sub_1AF448018(v7, v8);
        v3 = &qword_1ED72F740;
        v4 = MEMORY[0x1E69E7450];
        sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
        v5 = &qword_1ED72F758;
        goto LABEL_14;
      case 3:
        sub_1AF448018(v7, v8);
        v3 = &qword_1ED72F6E0;
        v4 = MEMORY[0x1E69E74A8];
        sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
        v5 = &qword_1ED72F710;
LABEL_14:
        sub_1AF87B130(v5, v3, v4);
        goto LABEL_20;
      case 4:
        sub_1AF448018(v7, v8);
        sub_1AF608A04();
        goto LABEL_20;
      case 5:
        sub_1AF448018(v7, v8);
        sub_1AF6089B0();
        goto LABEL_20;
      case 6:
        sub_1AF448018(v7, v8);
        sub_1AF60895C();
        goto LABEL_20;
      case 7:
        sub_1AF448018(v7, v8);
        sub_1AF608908();
        goto LABEL_20;
      case 8:
        sub_1AF448018(v7, v8);
        sub_1AF6088B4();
        goto LABEL_20;
      case 9:
        sub_1AF448018(v7, v8);
        sub_1AF608860();
        goto LABEL_20;
      case 0xA:
        sub_1AF448018(v7, v8);
        sub_1AF60880C();
        goto LABEL_20;
      case 0xB:
        sub_1AF448018(v7, v8);
        sub_1AF6087B8();
        goto LABEL_20;
      case 0xC:
        sub_1AF448018(v7, v8);
        sub_1AF48D74C();
LABEL_20:
        sub_1AFDFEC38();
        break;
      case 0xD:
        sub_1AF448018(v7, v8);
        sub_1AFDFEBF8();
        break;
      case 0xE:
        sub_1AF448018(v7, v8);
        sub_1AFDFEC48();
        break;
      case 0xF:
        sub_1AF448018(v7, v8);
        sub_1AFDFEC68();
        break;
      default:
        sub_1AF448018(v7, v8);
        sub_1AFDFEC18();
        break;
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
}

__n128 sub_1AF87B0C8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF87C4BC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1AF87B130(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF87B174(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF87B174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF43A0C8();
    v7 = a3(a1, MEMORY[0x1E69E6448], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *sub_1AF87B1D8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AF87C0E4();
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1AF87B240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  v5 = sub_1AFDFD1E8();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    v5 = sub_1AF87BCF0();
    v6 = v40;

    if ((v6 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_66:
    v41 = HIBYTE(v6) & 0xF;
    v70 = v5;
    v71 = v6 & 0xFFFFFFFFFFFFFFLL;
    if (v5 != 43)
    {
      if (v5 == 45)
      {
        v42 = v41 - 1;
        if (v42)
        {
          v43 = 0;
          v44 = a3 + 48;
          v45 = a3 + 55;
          v46 = a3 + 87;
          if (a3 > 10)
          {
            v44 = 58;
          }

          else
          {
            v46 = 97;
            v45 = 65;
          }

          v47 = &v70 + 1;
          v16 = 1;
          while (1)
          {
            v48 = *v47;
            if (v48 < 0x30 || v48 >= v44)
            {
              if (v48 < 0x41 || v48 >= v45)
              {
                v19 = 0;
                if (v48 < 0x61 || v48 >= v46)
                {
                  goto LABEL_123;
                }

                v49 = -87;
              }

              else
              {
                v49 = -55;
              }
            }

            else
            {
              v49 = -48;
            }

            v50 = v43 * a3;
            if (v50 != v50)
            {
              goto LABEL_122;
            }

            v51 = v48 + v49;
            v22 = __OFSUB__(v50, v51);
            v43 = v50 - v51;
            if (v22)
            {
              goto LABEL_122;
            }

            ++v47;
            if (!--v42)
            {
              goto LABEL_121;
            }
          }
        }
      }

      else if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v16 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_123;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_122;
          }

          v68 = v65 + v66;
          v22 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_122;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_121;
          }
        }
      }

      goto LABEL_122;
    }

    v52 = v41 - 1;
    if (!v52)
    {
LABEL_122:
      v19 = 0;
      v16 = 1;
      goto LABEL_123;
    }

    v43 = 0;
    v53 = a3 + 48;
    v54 = a3 + 55;
    v55 = a3 + 87;
    if (a3 > 10)
    {
      v53 = 58;
    }

    else
    {
      v55 = 97;
      v54 = 65;
    }

    v56 = &v70 + 1;
    v16 = 1;
    do
    {
      v57 = *v56;
      if (v57 < 0x30 || v57 >= v53)
      {
        if (v57 < 0x41 || v57 >= v54)
        {
          v19 = 0;
          if (v57 < 0x61 || v57 >= v55)
          {
            goto LABEL_123;
          }

          v58 = -87;
        }

        else
        {
          v58 = -55;
        }
      }

      else
      {
        v58 = -48;
      }

      v59 = v43 * a3;
      if (v59 != v59)
      {
        goto LABEL_122;
      }

      v60 = v57 + v58;
      v22 = __OFADD__(v59, v60);
      v43 = v59 + v60;
      if (v22)
      {
        goto LABEL_122;
      }

      ++v56;
      --v52;
    }

    while (v52);
LABEL_121:
    v16 = 0;
    v19 = v43;
    goto LABEL_123;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    goto LABEL_66;
  }

LABEL_3:
  if ((v5 & 0x1000000000000000) != 0)
  {
    v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_1AFDFE308();
  }

  v9 = *v7;
  if (v9 != 43)
  {
    if (v9 == 45)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_123;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if (v20 != v20)
            {
              goto LABEL_122;
            }

            v21 = v17 + v18;
            v22 = __OFSUB__(v20, v21);
            v14 = v20 - v21;
            if (v22)
            {
              goto LABEL_122;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_44;
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_122;
    }

    if (!v8)
    {
      goto LABEL_122;
    }

    v32 = a3 + 48;
    v33 = a3 + 55;
    v34 = a3 + 87;
    if (a3 > 10)
    {
      v32 = 58;
    }

    else
    {
      v34 = 97;
      v33 = 65;
    }

    if (v7)
    {
      v35 = 0;
      v16 = 1;
      do
      {
        v36 = *v7;
        if (v36 < 0x30 || v36 >= v32)
        {
          if (v36 < 0x41 || v36 >= v33)
          {
            v19 = 0;
            if (v36 < 0x61 || v36 >= v34)
            {
              goto LABEL_123;
            }

            v37 = -87;
          }

          else
          {
            v37 = -55;
          }
        }

        else
        {
          v37 = -48;
        }

        v38 = v35 * a3;
        if (v38 != v38)
        {
          goto LABEL_122;
        }

        v39 = v36 + v37;
        v22 = __OFADD__(v38, v39);
        v35 = v38 + v39;
        if (v22)
        {
          goto LABEL_122;
        }

        ++v7;
        --v8;
      }

      while (v8);
      v16 = 0;
      v19 = v35;
      goto LABEL_123;
    }

LABEL_64:
    v19 = 0;
    v16 = 0;
    goto LABEL_123;
  }

  v23 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_122;
  }

  v24 = a3 + 48;
  v25 = a3 + 55;
  v26 = a3 + 87;
  if (a3 > 10)
  {
    v24 = 58;
  }

  else
  {
    v26 = 97;
    v25 = 65;
  }

  if (!v7)
  {
    goto LABEL_64;
  }

  v14 = 0;
  v27 = v7 + 1;
  v16 = 1;
  do
  {
    v28 = *v27;
    if (v28 < 0x30 || v28 >= v24)
    {
      if (v28 < 0x41 || v28 >= v25)
      {
        v19 = 0;
        if (v28 < 0x61 || v28 >= v26)
        {
          goto LABEL_123;
        }

        v29 = -87;
      }

      else
      {
        v29 = -55;
      }
    }

    else
    {
      v29 = -48;
    }

    v30 = v14 * a3;
    if (v30 != v30)
    {
      goto LABEL_122;
    }

    v31 = v28 + v29;
    v22 = __OFADD__(v30, v31);
    v14 = v30 + v31;
    if (v22)
    {
      goto LABEL_122;
    }

    ++v27;
    --v23;
  }

  while (v23);
LABEL_44:
  v16 = 0;
  v19 = v14;
LABEL_123:

  LOBYTE(v70) = v16;
  return v19 | (v16 << 32);
}

uint64_t sub_1AF87B790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  v5 = sub_1AFDFD1E8();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    v5 = sub_1AF87BCF0();
    v6 = v35;

    if ((v6 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_66:
    v36 = HIBYTE(v6) & 0xF;
    v62 = v5;
    v63 = v6 & 0xFFFFFFFFFFFFFFLL;
    if (v5 != 43)
    {
      if (v5 == 45)
      {
        v37 = v36 - 1;
        if (v37)
        {
          v38 = 0;
          v39 = a3 + 48;
          v40 = a3 + 55;
          v41 = a3 + 87;
          if (a3 > 10)
          {
            v39 = 58;
          }

          else
          {
            v41 = 97;
            v40 = 65;
          }

          v42 = &v62 + 1;
          while (1)
          {
            v43 = *v42;
            if (v43 < 0x30 || v43 >= v39)
            {
              if (v43 < 0x41 || v43 >= v40)
              {
                v18 = 0;
                if (v43 < 0x61 || v43 >= v41)
                {
                  goto LABEL_123;
                }

                v44 = -87;
              }

              else
              {
                v44 = -55;
              }
            }

            else
            {
              v44 = -48;
            }

            v45 = v38 * a3;
            if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
            {
              goto LABEL_122;
            }

            v38 = v45 - (v43 + v44);
            if (__OFSUB__(v45, (v43 + v44)))
            {
              goto LABEL_122;
            }

            ++v42;
            if (!--v37)
            {
              goto LABEL_121;
            }
          }
        }
      }

      else if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v18 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_123;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_122;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_122;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_121;
          }
        }
      }

      goto LABEL_122;
    }

    v46 = v36 - 1;
    if (!v46)
    {
LABEL_122:
      v18 = 0;
      goto LABEL_123;
    }

    v38 = 0;
    v47 = a3 + 48;
    v48 = a3 + 55;
    v49 = a3 + 87;
    if (a3 > 10)
    {
      v47 = 58;
    }

    else
    {
      v49 = 97;
      v48 = 65;
    }

    v50 = &v62 + 1;
    do
    {
      v51 = *v50;
      if (v51 < 0x30 || v51 >= v47)
      {
        if (v51 < 0x41 || v51 >= v48)
        {
          v18 = 0;
          if (v51 < 0x61 || v51 >= v49)
          {
            goto LABEL_123;
          }

          v52 = -87;
        }

        else
        {
          v52 = -55;
        }
      }

      else
      {
        v52 = -48;
      }

      v53 = v38 * a3;
      if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
      {
        goto LABEL_122;
      }

      v38 = v53 + (v51 + v52);
      if (__OFADD__(v53, (v51 + v52)))
      {
        goto LABEL_122;
      }

      ++v50;
      --v46;
    }

    while (v46);
LABEL_121:
    v18 = v38;
    goto LABEL_123;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    goto LABEL_66;
  }

LABEL_3:
  if ((v5 & 0x1000000000000000) != 0)
  {
    v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_1AFDFE308();
  }

  v9 = *v7;
  if (v9 != 43)
  {
    if (v9 == 45)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_123;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_122;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_122;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_44;
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_122;
    }

    if (!v8)
    {
      goto LABEL_122;
    }

    v28 = a3 + 48;
    v29 = a3 + 55;
    v30 = a3 + 87;
    if (a3 > 10)
    {
      v28 = 58;
    }

    else
    {
      v30 = 97;
      v29 = 65;
    }

    if (v7)
    {
      v31 = 0;
      do
      {
        v32 = *v7;
        if (v32 < 0x30 || v32 >= v28)
        {
          if (v32 < 0x41 || v32 >= v29)
          {
            v18 = 0;
            if (v32 < 0x61 || v32 >= v30)
            {
              goto LABEL_123;
            }

            v33 = -87;
          }

          else
          {
            v33 = -55;
          }
        }

        else
        {
          v33 = -48;
        }

        v34 = v31 * a3;
        if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
        {
          goto LABEL_122;
        }

        v31 = v34 + (v32 + v33);
        if (__OFADD__(v34, (v32 + v33)))
        {
          goto LABEL_122;
        }

        ++v7;
        --v8;
      }

      while (v8);
      v18 = v34 + (v32 + v33);
      goto LABEL_123;
    }

LABEL_64:
    v18 = 0;
    goto LABEL_123;
  }

  v20 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_122;
  }

  v21 = a3 + 48;
  v22 = a3 + 55;
  v23 = a3 + 87;
  if (a3 > 10)
  {
    v21 = 58;
  }

  else
  {
    v23 = 97;
    v22 = 65;
  }

  if (!v7)
  {
    goto LABEL_64;
  }

  v14 = 0;
  v24 = v7 + 1;
  do
  {
    v25 = *v24;
    if (v25 < 0x30 || v25 >= v21)
    {
      if (v25 < 0x41 || v25 >= v22)
      {
        v18 = 0;
        if (v25 < 0x61 || v25 >= v23)
        {
          goto LABEL_123;
        }

        v26 = -87;
      }

      else
      {
        v26 = -55;
      }
    }

    else
    {
      v26 = -48;
    }

    v27 = v14 * a3;
    if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
    {
      goto LABEL_122;
    }

    v14 = v27 + (v25 + v26);
    if (__OFADD__(v27, (v25 + v26)))
    {
      goto LABEL_122;
    }

    ++v24;
    --v20;
  }

  while (v20);
LABEL_44:
  v18 = v14;
LABEL_123:

  return v18;
}

uint64_t sub_1AF87BCF0()
{
  v0 = sub_1AFDFD1F8();
  v4 = sub_1AF87BD70(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1AF87BD70(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1AFDFDDF8();
    if (v9)
    {
      v10 = v9;
      v11 = sub_1AF87B1D8(v9, 0);
      sub_1AF87BEBC(v13, v11 + 32, v10, a1, a2, a3, a4);
    }

    v12 = sub_1AFDFD028();

    return v12;
  }

  else if ((a4 & 0x2000000000000000) != 0)
  {
    v13[0] = a3;
    v13[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    return sub_1AFDFD028();
  }

  else
  {
    if ((a3 & 0x1000000000000000) == 0)
    {
      sub_1AFDFE308();
    }

    return sub_1AFDFD028();
  }
}

uint64_t sub_1AF87BEBC(unint64_t *a1, _BYTE *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_5:
    v11 = a4;
    goto LABEL_6;
  }

  v25 = a5 >> 14;
  if (a5 >> 14 == a4 >> 14)
  {
LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  v13 = a2;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v11 = a4;
  v15 = 4 << v14;
  v24 = a7 & 0xFFFFFFFFFFFFFFLL;
  v22 = a5;
  v23 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v16 = 1;
  v21 = a4;
  while (1)
  {
    v17 = v11;
    if ((v11 & 0xC) == v15)
    {
      v17 = sub_1AF87C068(v11, a6, a7);
      if ((a7 & 0x1000000000000000) != 0)
      {
LABEL_18:
        v20 = sub_1AFDFD158();
        goto LABEL_19;
      }
    }

    else if ((a7 & 0x1000000000000000) != 0)
    {
      goto LABEL_18;
    }

    v18 = v17 >> 16;
    if ((a7 & 0x2000000000000000) != 0)
    {
      v26[0] = a6;
      v26[1] = v24;
      v20 = *(v26 + v18);
    }

    else
    {
      v19 = v23;
      if ((a6 & 0x1000000000000000) == 0)
      {
        v19 = sub_1AFDFE308();
      }

      v20 = *(v19 + v18);
    }

LABEL_19:
    if ((v11 & 0xC) == v15)
    {
      v11 = sub_1AF87C068(v11, a6, a7);
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_21:
        v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_21;
    }

    v11 = sub_1AFDFD128();
LABEL_24:
    *v13 = v20;
    if (v10 == v16)
    {
      goto LABEL_28;
    }

    if (v25 == v11 >> 14)
    {
      break;
    }

    ++v13;
    ++v16;
  }

  v10 = v16;
LABEL_28:
  a4 = v21;
  a5 = v22;
LABEL_6:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;
  a1[4] = v11;
  return v10;
}

uint64_t sub_1AF87C068(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1AFDFD168();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B2718B50](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_1AF87C0E4()
{
  if (!qword_1ED726920)
  {
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726920);
    }
  }
}

uint64_t sub_1AF87C134(float32x4_t *a1, float32x4_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  switch(a1[4].i8[0])
  {
    case 1:
      if (a2[4].i8[0] != 1)
      {
        goto LABEL_44;
      }

      v16 = 0;
      v17 = *a2->f32;
LABEL_46:
      v24 = v2.i64[0];
      v21 = *(&v24 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v16 & 1)));
      v25 = v17;
      v18 = v21 == *(&v25 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v16 & 1)));
      LOBYTE(v12) = v18;
      while (v16 != 1)
      {
        ++v16;
        if (v18)
        {
          goto LABEL_46;
        }

        v18 = 0;
        LOBYTE(v12) = 0;
      }

      return v12 & 1;
    case 2:
      if (a2[4].i8[0] != 2)
      {
        goto LABEL_44;
      }

      v9 = 0;
      v10 = *a2;
LABEL_50:
      v26 = v2;
      v22 = *(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
      v27 = v10;
      v11 = v22 == *(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
      LOBYTE(v12) = v11;
      while (v9 != 2)
      {
        ++v9;
        if (v11)
        {
          goto LABEL_50;
        }

        v11 = 0;
        LOBYTE(v12) = 0;
      }

      return v12 & 1;
    case 3:
      if (a2[4].i8[0] != 3)
      {
        goto LABEL_44;
      }

      v13 = 0;
      v14 = *a2;
      break;
    case 4:
      if (a2[4].i8[0] != 4)
      {
        goto LABEL_44;
      }

      v8 = vand_s8(vceq_f32(*a2->f32, *v2.f32), vceq_f32(*&a2->u32[2], *&vextq_s8(v2, v2, 8uLL)));
      goto LABEL_38;
    case 5:
      if (a2[4].i8[0] != 5)
      {
        goto LABEL_44;
      }

      v7 = vandq_s8(vceqq_f32(v2, *a2), vceqq_f32(v3, a2[1]));
      goto LABEL_41;
    case 6:
      if (a2[4].i8[0] != 6)
      {
        goto LABEL_44;
      }

      v7 = vandq_s8(vceqq_f32(v2, *a2), vceqq_f32(v3, a2[1]));
      goto LABEL_42;
    case 7:
      if (a2[4].i8[0] != 7)
      {
        goto LABEL_44;
      }

      v8 = vand_s8(vceq_f32(*&a2->u32[2], *&vextq_s8(v2, v2, 8uLL)), vand_s8(vceq_f32(*v3.f32, *a2[1].f32), vceq_f32(*a2->f32, *v2.f32)));
      goto LABEL_38;
    case 8:
      if (a2[4].i8[0] != 8)
      {
        goto LABEL_44;
      }

      v7 = vandq_s8(vandq_s8(vceqq_f32(v3, a2[1]), vceqq_f32(v4, a2[2])), vceqq_f32(v2, *a2));
      goto LABEL_41;
    case 9:
      if (a2[4].i8[0] != 9)
      {
        goto LABEL_44;
      }

      v7 = vandq_s8(vandq_s8(vceqq_f32(v3, a2[1]), vceqq_f32(v4, a2[2])), vceqq_f32(v2, *a2));
      goto LABEL_42;
    case 0xA:
      if (a2[4].i8[0] != 10)
      {
        goto LABEL_44;
      }

      v8 = vand_s8(vand_s8(vceq_f32(*v3.f32, *a2[1].f32), vceq_f32(*&vextq_s8(v3, v3, 8uLL), *&a2[1].u32[2])), vand_s8(vceq_f32(*&a2->u32[2], *&vextq_s8(v2, v2, 8uLL)), vceq_f32(*a2->f32, *v2.f32)));
LABEL_38:
      v19 = vpmin_u32(v8, v8).u32[0];
      goto LABEL_43;
    case 0xB:
      if (a2[4].i8[0] != 11)
      {
        goto LABEL_44;
      }

      v7 = vandq_s8(vandq_s8(vceqq_f32(v4, a2[2]), vceqq_f32(v5, a2[3])), vandq_s8(vceqq_f32(v3, a2[1]), vceqq_f32(v2, *a2)));
LABEL_41:
      v7.i32[3] = v7.i32[2];
      goto LABEL_42;
    case 0xC:
      if (a2[4].i8[0] != 12)
      {
        goto LABEL_44;
      }

      v7 = vandq_s8(vandq_s8(vceqq_f32(v4, a2[2]), vceqq_f32(v5, a2[3])), vandq_s8(vceqq_f32(v3, a2[1]), vceqq_f32(v2, *a2)));
LABEL_42:
      v19 = vminvq_u32(v7);
LABEL_43:
      v12 = v19 >> 31;
      return v12 & 1;
    case 0xD:
      if (a2[4].i8[0] != 13)
      {
        goto LABEL_44;
      }

      v30 = *a1;
      LOBYTE(v12) = v2.i8[0] & 1 ^ a2->i8[0] ^ 1;
      return v12 & 1;
    case 0xE:
      if (a2[4].i8[0] == 14)
      {
        goto LABEL_18;
      }

      goto LABEL_44;
    case 0xF:
      if (a2[4].i8[0] != 15)
      {
        goto LABEL_44;
      }

LABEL_18:
      v6 = v2.i32[0] == a2->i32[0];
      goto LABEL_19;
    default:
      if (a2[4].i8[0])
      {
LABEL_44:
        LOBYTE(v12) = 0;
      }

      else
      {
        v6 = v2.f32[0] == a2->f32[0];
LABEL_19:
        LOBYTE(v12) = v6;
      }

      return v12 & 1;
  }

LABEL_54:
  v28 = v2;
  v23 = *(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3)));
  v29 = v14;
  v15 = v23 == *(&v29 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3)));
  LOBYTE(v12) = v15;
  while (v13 != 3)
  {
    ++v13;
    if (v15)
    {
      goto LABEL_54;
    }

    v15 = 0;
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

uint64_t sub_1AF87C4BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  type metadata accessor for MTLDataType(0);
  sub_1AF448018(v24, v25);
  sub_1AF87CCD4(&qword_1ED721FC8);
  sub_1AFDFEAD8();
  switch(v26)
  {
    case 3:
      sub_1AF448018(v24, v25);
      sub_1AFDFEAA8();
      v6 = 0;
      v19 = v7;
      break;
    case 4:
      v10 = MEMORY[0x1E69E7428];
      sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
      sub_1AF448018(v24, v25);
      sub_1AF87B130(&qword_1ED72F780, &unk_1ED72F770, v10);
      sub_1AFDFEAD8();
      *&v11 = v20;
      v19 = v11;
      v6 = 1;
      break;
    case 5:
      v9 = MEMORY[0x1E69E7450];
      sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
      sub_1AF448018(v24, v25);
      sub_1AF87B130(&qword_1ED72F748, &qword_1ED72F740, v9);
      sub_1AFDFEAD8();
      v19 = v20;
      v6 = 2;
      break;
    case 6:
      v15 = MEMORY[0x1E69E74A8];
      sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
      sub_1AF448018(v24, v25);
      sub_1AF87B130(&qword_1ED72F6F0, &qword_1ED72F6E0, v15);
      sub_1AFDFEAD8();
      v19 = v20;
      v6 = 3;
      break;
    case 7:
      sub_1AF448018(v24, v25);
      sub_1AF6086A4();
      sub_1AFDFEAD8();
      v19 = v20;
      v6 = 4;
      break;
    case 8:
      sub_1AF448018(v24, v25);
      sub_1AF608650();
      sub_1AFDFEAD8();
      v18 = v21;
      v19 = v20;
      v6 = 5;
      break;
    case 9:
      sub_1AF448018(v24, v25);
      sub_1AF6085FC();
      sub_1AFDFEAD8();
      v18 = v21;
      v19 = v20;
      v6 = 6;
      break;
    case 10:
      sub_1AF448018(v24, v25);
      sub_1AF6085A8();
      sub_1AFDFEAD8();
      *&v12 = v21;
      v18 = v12;
      v19 = v20;
      v6 = 7;
      break;
    case 11:
      sub_1AF448018(v24, v25);
      sub_1AF608554();
      sub_1AFDFEAD8();
      v18 = v21;
      v19 = v20;
      v6 = 8;
      goto LABEL_23;
    case 12:
      sub_1AF448018(v24, v25);
      sub_1AF608500();
      sub_1AFDFEAD8();
      v18 = v21;
      v19 = v20;
      v6 = 9;
LABEL_23:
      v17 = v22;
      break;
    case 13:
      sub_1AF448018(v24, v25);
      sub_1AF6084AC();
      sub_1AFDFEAD8();
      v18 = v21;
      v19 = v20;
      v6 = 10;
      break;
    case 14:
      sub_1AF448018(v24, v25);
      sub_1AF608458();
      sub_1AFDFEAD8();
      v18 = v21;
      v19 = v20;
      v6 = 11;
      goto LABEL_12;
    case 15:
      sub_1AF448018(v24, v25);
      sub_1AF48D6F8();
      sub_1AFDFEAD8();
      v18 = v21;
      v19 = v20;
      v6 = 12;
LABEL_12:
      v16 = v23;
      v17 = v22;
      break;
    case 29:
      sub_1AF448018(v24, v25);
      LODWORD(v8) = sub_1AFDFEAE8();
      v19 = v8;
      v6 = 14;
      break;
    case 33:
      sub_1AF448018(v24, v25);
      LODWORD(v13) = sub_1AFDFEB08();
      v19 = v13;
      v6 = 15;
      break;
    case 53:
      sub_1AF448018(v24, v25);
      LODWORD(v14) = sub_1AFDFEA88() & 1;
      v19 = v14;
      v6 = 13;
      break;
    default:
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF378C0);
      sub_1AFDFE458();
      sub_1AFDFE2C8();
      swift_allocError();
      sub_1AFDFE288();

      swift_willThrow();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v19;
  *(a2 + 16) = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v16;
  *(a2 + 64) = v6;
  return result;
}

uint64_t sub_1AF87CCD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTLDataType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF87CD18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v5 = 0;
  v6 = 0uLL;
  switch(result)
  {
    case 3:
      goto LABEL_16;
    case 4:
      v5 = 1;
      goto LABEL_16;
    case 5:
      v5 = 2;
      goto LABEL_16;
    case 6:
      v5 = 3;
      goto LABEL_16;
    case 7:
      v6 = xmmword_1AFE21170;
      v5 = 4;
      goto LABEL_16;
    case 8:
      v5 = 5;
      goto LABEL_11;
    case 9:
      v5 = 6;
      goto LABEL_11;
    case 10:
      v5 = 7;
      goto LABEL_11;
    case 11:
      a4 = xmmword_1AFE20180;
      a3 = xmmword_1AFE20160;
      v6 = xmmword_1AFE20150;
      v5 = 8;
      goto LABEL_16;
    case 12:
      v5 = 9;
      a3 = 0uLL;
      a4 = 0uLL;
      goto LABEL_16;
    case 13:
      v5 = 10;
LABEL_11:
      a3 = 0uLL;
      goto LABEL_16;
    case 14:
      v5 = 11;
      a3 = 0uLL;
      goto LABEL_20;
    case 15:
      a5 = xmmword_1AFE201A0;
      a4 = xmmword_1AFE20180;
      a3 = xmmword_1AFE20160;
      v6 = xmmword_1AFE20150;
      v5 = 12;
      goto LABEL_16;
    case 29:
      v5 = 14;
      goto LABEL_16;
    case 33:
      v5 = 15;
      goto LABEL_16;
    case 53:
      v5 = 13;
      goto LABEL_16;
    default:
      v5 = -1;
      a3 = 0uLL;
      v6 = 0uLL;
LABEL_20:
      a4 = 0uLL;
      a5 = 0uLL;
LABEL_16:
      *a2 = v6;
      *(a2 + 16) = a3;
      *(a2 + 32) = a4;
      *(a2 + 48) = a5;
      *(a2 + 64) = v5;
      return result;
  }
}

_DWORD *sub_1AF87CE38(int *a1, uint64_t a2, id a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  switch(*(a1 + 64))
  {
    case 1:
      result = [a3 constantDataAtIndex_];
      *result = v3;
      result[1] = v4;
      break;
    case 2:
    case 3:
    case 4:
      result = [a3 constantDataAtIndex_];
      *result = v3;
      result[1] = v4;
      *(result + 1) = v5;
      break;
    case 5:
    case 6:
    case 0xA:
      v13 = *(a1 + 1);
      result = [a3 constantDataAtIndex_];
      *result = v3;
      result[1] = v4;
      *(result + 1) = v5;
      *(result + 1) = v13;
      break;
    case 7:
      v16 = *(a1 + 1);
      result = [a3 constantDataAtIndex_];
      *result = v3;
      result[1] = v4;
      *(result + 1) = v5;
      *(result + 2) = v16;
      break;
    case 8:
    case 9:
      v11 = *(a1 + 2);
      v14 = *(a1 + 1);
      result = [a3 constantDataAtIndex_];
      *result = v3;
      result[1] = v4;
      *(result + 1) = v5;
      *(result + 1) = v14;
      *(result + 2) = v11;
      break;
    case 0xB:
    case 0xC:
      v12 = *(a1 + 2);
      v15 = *(a1 + 1);
      v10 = *(a1 + 3);
      result = [a3 constantDataAtIndex_];
      *result = v3;
      result[1] = v4;
      *(result + 1) = v5;
      *(result + 1) = v15;
      *(result + 2) = v12;
      *(result + 3) = v10;
      break;
    case 0xD:
      result = [a3 constantDataAtIndex_];
      *result = v3;
      break;
    default:
      result = [a3 constantDataAtIndex_];
      *result = v3;
      break;
  }

  return result;
}

int *sub_1AF87CFFC(int *result, uint64_t a2, uint64_t a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = *(result + 1);
  v6 = *(result + 1);
  v7 = *(result + 2);
  v8 = *(result + 3);
  switch(*(result + 64))
  {
    case 1:
      v13 = (a2 + a3);
      *v13 = v4;
      v13[1] = v3;
      break;
    case 2:
    case 3:
    case 4:
      v9 = a2 + a3;
      *v9 = v4;
      *(v9 + 4) = v3;
      *(v9 + 8) = v5;
      break;
    case 5:
    case 6:
    case 0xA:
      v10 = a2 + a3;
      *v10 = v4;
      *(v10 + 4) = v3;
      *(v10 + 8) = v5;
      *(v10 + 16) = v6;
      break;
    case 7:
      v14 = a2 + a3;
      *v14 = v4;
      *(v14 + 4) = v3;
      *(v14 + 8) = v5;
      *(v14 + 16) = v6;
      break;
    case 8:
    case 9:
      v12 = a2 + a3;
      *v12 = v4;
      *(v12 + 4) = v3;
      *(v12 + 8) = v5;
      *(v12 + 16) = v6;
      *(v12 + 32) = v7;
      break;
    case 0xB:
    case 0xC:
      v11 = a2 + a3;
      *v11 = v4;
      *(v11 + 4) = v3;
      *(v11 + 8) = v5;
      *(v11 + 16) = v6;
      *(v11 + 32) = v7;
      *(v11 + 48) = v8;
      break;
    case 0xD:
      *(a2 + a3) = v4;
      break;
    default:
      *(a2 + a3) = v4;
      break;
  }

  return result;
}

__n128 initializeWithCopy for DataValue(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DataValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF1 && *(a1 + 65))
  {
    return (*a1 + 241);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0xF)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DataValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 241;
    if (a3 >= 0xF1)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF1)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_1AF87D1D4()
{
  result = qword_1EB63FAE0;
  if (!qword_1EB63FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FAE0);
  }

  return result;
}

uint64_t sub_1AF87D238(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF6247C4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1AF8811A8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF87D2A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
LABEL_8:

    return v3;
  }

  if (qword_1EB633478 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v4 = off_1EB633480;
  if (*(off_1EB633480 + 2))
  {
    v5 = sub_1AF449CB8(a1);
    if (v6)
    {
      v3 = *(v4[7] + 16 * v5);
      goto LABEL_8;
    }
  }

  return 0;
}

double sub_1AF87D34C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x65736C6166 && a2 == 0xE500000000000000;
  if (!v6 && (sub_1AFDFEE28() & 1) == 0)
  {
    if (a1 == 1702195828 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
    {

      v8 = 0;
      v7 = 1;
      goto LABEL_7;
    }

    v11 = HIBYTE(a2) & 0xF;
    v12 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v13 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {

      goto LABEL_71;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v16 = sub_1AF87B240(a1, a2, 10);

      if ((v16 & 0x100000000) != 0)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v35[0] = a1;
      v35[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (--v11)
        {
          LODWORD(v16) = 0;
          v26 = v35 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v16;
            if (v28 != v28)
            {
              break;
            }

            LODWORD(v16) = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v11)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (a1 == 45)
      {
        if (--v11)
        {
          LODWORD(v16) = 0;
          v20 = v35 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v16;
            if (v22 != v22)
            {
              break;
            }

            LODWORD(v16) = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v11)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v11)
      {
        LODWORD(v16) = 0;
        v31 = v35;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v16;
          if (v33 != v33)
          {
            break;
          }

          LODWORD(v16) = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v11)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v14 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v14 = sub_1AFDFE308();
    }

    v15 = *v14;
    if (v15 == 43)
    {
      v11 = v12 - 1;
      if (v12 != 1)
      {
        LODWORD(v16) = 0;
        if (v14)
        {
          v23 = v14 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_69;
            }

            v25 = 10 * v16;
            if (v25 != v25)
            {
              goto LABEL_69;
            }

            LODWORD(v16) = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              goto LABEL_69;
            }

            ++v23;
            if (!--v11)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else if (v15 == 45)
    {
      v11 = v12 - 1;
      if (v12 != 1)
      {
        LODWORD(v16) = 0;
        if (v14)
        {
          v17 = v14 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_69;
            }

            v19 = 10 * v16;
            if (v19 != v19)
            {
              goto LABEL_69;
            }

            LODWORD(v16) = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_69;
            }

            ++v17;
            if (!--v11)
            {
              goto LABEL_70;
            }
          }
        }

LABEL_61:
        LOBYTE(v11) = 0;
        goto LABEL_70;
      }
    }

    else if (v12)
    {
      LODWORD(v16) = 0;
      if (v14)
      {
        while (1)
        {
          v29 = *v14 - 48;
          if (v29 > 9)
          {
            goto LABEL_69;
          }

          v30 = 10 * v16;
          if (v30 != v30)
          {
            goto LABEL_69;
          }

          LODWORD(v16) = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            goto LABEL_69;
          }

          ++v14;
          if (!--v12)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_61;
    }

LABEL_69:
    LODWORD(v16) = 0;
    LOBYTE(v11) = 1;
LABEL_70:
    v36 = v11;
    v34 = v11;

    if (v34)
    {
LABEL_71:
      v7 = 0;
      v8 = 0;
      v9 = -1;
      goto LABEL_8;
    }

LABEL_74:
    v8 = v16 & 0xFFFFFF00;
    v7 = v16;
    v9 = 14;
    goto LABEL_8;
  }

  v7 = 0;
  v8 = 0;
LABEL_7:
  v9 = 13;
LABEL_8:
  *a3 = v8 | v7;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 64) = v9;
  return result;
}

uint64_t sub_1AF87D6C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    if (qword_1EB633478 != -1)
    {
      swift_once();
    }

    v4 = off_1EB633480;
    if (*(off_1EB633480 + 2) && (v5 = sub_1AF449CB8(a1), (v6 & 1) != 0))
    {
      a1 = *(v4[7] + 16 * v5);
    }

    else
    {
      return sub_1AFDFEA08();
    }
  }

  return a1;
}

uint64_t sub_1AF87D790()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1AFDFF288();
  if (v2 == 1)
  {
    MEMORY[0x1B271ACB0](1);
    sub_1AFDFD038();
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v1);
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF87D818()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    MEMORY[0x1B271ACB0](1);

    return sub_1AFDFD038();
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    return MEMORY[0x1B271ACB0](v1);
  }
}

uint64_t sub_1AF87D8A0()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1AFDFF288();
  if (v2 == 1)
  {
    MEMORY[0x1B271ACB0](1);
    sub_1AFDFD038();
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v1);
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF87D924(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  if (v3 != 1)
  {
    if ((v5 & 1) == 0)
    {
      return v2 < v4;
    }

    return v5 & (v3 ^ 1u);
  }

  if ((v5 & 1) == 0)
  {
    return v5 & (v3 ^ 1u);
  }

  v6 = v2 == v4 && a1[1] == a2[1];
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {
    return 0;
  }

  return sub_1AFDFEE28();
}

BOOL sub_1AF87D9E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (v4 != 1)
  {
    if ((a1[2] & 1) == 0)
    {
      v6 = v3 < v2;
      return (v6 & 1) == 0;
    }

    goto LABEL_10;
  }

  if ((a1[2] & 1) == 0)
  {
LABEL_10:
    v6 = a1[2] & (v4 ^ 1);
    return (v6 & 1) == 0;
  }

  v5 = v3 == v2 && a2[1] == a1[1];
  if (v5 || (sub_1AFDFEE28() & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1AFDFEE28();
  }

  return (v6 & 1) == 0;
}

BOOL sub_1AF87DA9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  if (v3 != 1)
  {
    if ((a2[2] & 1) == 0)
    {
      v6 = v2 < v4;
      return (v6 & 1) == 0;
    }

    goto LABEL_10;
  }

  if ((a2[2] & 1) == 0)
  {
LABEL_10:
    v6 = a2[2] & (v3 ^ 1);
    return (v6 & 1) == 0;
  }

  v5 = v2 == v4 && a1[1] == a2[1];
  if (v5 || (sub_1AFDFEE28() & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1AFDFEE28();
  }

  return (v6 & 1) == 0;
}

uint64_t sub_1AF87DB50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  if (v5 != 1)
  {
    if ((v3 & 1) == 0)
    {
      return v4 < v2;
    }

    return v3 & (v5 ^ 1u);
  }

  if ((v3 & 1) == 0)
  {
    return v3 & (v5 ^ 1u);
  }

  v6 = v4 == v2 && a2[1] == a1[1];
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {
    return 0;
  }

  return sub_1AFDFEE28();
}

uint64_t sub_1AF87DC14(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    return (v3 == v4) & ~v5;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if (v3 == v4 && v6 == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28();
  }
}

uint64_t sub_1AF87DC74()
{
  v1 = *v0;
  if (*(v0 + 16) != 1)
  {
    if (qword_1EB633478 != -1)
    {
      swift_once();
    }

    v2 = off_1EB633480;
    if (!*(off_1EB633480 + 2))
    {
      return 0;
    }

    v3 = sub_1AF449CB8(v1);
    if ((v4 & 1) == 0)
    {
      return 0;
    }

    v1 = *(v2[7] + 16 * v3);
  }

  return v1;
}

uint64_t sub_1AF87DD1C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1AFDFF288();
  if (v2 == 1)
  {
    MEMORY[0x1B271ACB0](1);
    sub_1AFDFD038();
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v1);
  }

  sub_1AF87A0E4();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF87DDC4()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    MEMORY[0x1B271ACB0](1);
    sub_1AFDFD038();
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v1);
  }

  return sub_1AF87A0E4();
}

uint64_t sub_1AF87DE5C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1AFDFF288();
  if (v2 == 1)
  {
    MEMORY[0x1B271ACB0](1);
    sub_1AFDFD038();
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v1);
  }

  sub_1AF87A0E4();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF87DF00(float32x4_t *a1, float32x4_t *a2)
{
  v4 = a1->i64[0];
  v5 = a1->i64[1];
  v6 = a1[1].u8[0];
  v7 = a1[5];
  v19[2] = a1[4];
  v19[3] = v7;
  v20 = a1[6].i8[0];
  v8 = a1[3];
  v19[0] = a1[2];
  v19[1] = v8;
  v9 = a2->i64[0];
  v10 = a2->i64[1];
  v11 = a2[1].i8[0];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v22 = a2[6].i8[0];
  v21[2] = v14;
  v21[3] = v15;
  v21[0] = v12;
  v21[1] = v13;
  if (v6 != 1)
  {
    if (v4 == v9)
    {
      v17 = v11;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_6;
    }

LABEL_11:
    v16 = sub_1AF87C134(v19, v21);
    return v16 & 1;
  }

  if (v11 & 1) != 0 && (v4 == v9 && v5 == v10 || (sub_1AFDFEE28()))
  {
    goto LABEL_11;
  }

LABEL_6:
  v16 = 0;
  return v16 & 1;
}

unint64_t sub_1AF87DFB8()
{
  result = qword_1ED7228F0;
  if (!qword_1ED7228F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7228F0);
  }

  return result;
}

uint64_t sub_1AF87E00C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7865646E69;
  if (v2 != 1)
  {
    v3 = 0x65756C6176;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1701667182;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x7865646E69;
  if (*a2 != 1)
  {
    v6 = 0x65756C6176;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1701667182;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();
  }

  return v9 & 1;
}

uint64_t sub_1AF87E0F8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF87E18C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF87E20C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF87E29C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF881E40();
  *a1 = result;
  return result;
}

void sub_1AF87E2CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x7865646E69;
  if (v2 != 1)
  {
    v4 = 0x65756C6176;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1701667182;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1AF87E31C()
{
  v1 = 0x7865646E69;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1AF87E368@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF881E40();
  *a1 = result;
  return result;
}

uint64_t sub_1AF87E390(uint64_t a1)
{
  v2 = sub_1AF8822C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF87E3CC(uint64_t a1)
{
  v2 = sub_1AF8822C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF87E408(void *a1)
{
  v3 = v1;
  sub_1AF8823DC(0, &qword_1EB63FB00, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AF8822C0();
  sub_1AFDFF3F8();
  if (*(v3 + 16))
  {
    LOBYTE(v15) = 0;
    sub_1AFDFE8B8();
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(v15) = 1;
    sub_1AFDFE8F8();
    if (!v2)
    {
LABEL_5:
      v11 = *(v3 + 80);
      v17 = *(v3 + 64);
      v18 = v11;
      v19 = *(v3 + 96);
      v12 = *(v3 + 48);
      v15 = *(v3 + 32);
      v16 = v12;
      v14[15] = 2;
      sub_1AF882440();
      sub_1AFDFE918();
    }
  }

  return (*(v7 + 8))(v10, v6);
}

__n128 sub_1AF87E5D8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF881FA8(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_1AF87E644(uint64_t a1)
{
  v31 = sub_1AFDFC218();
  v2 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v30, v6);
  v29 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v11 = a1 + 32;
  v25 = (v2 + 8);
  v26 = (v7 + 8);
  v27 = a1 + 32;
  v28 = v9;
  do
  {
    v12 = v11 + 112 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 80);
    v35 = *(v12 + 64);
    v36 = v16;
    v37 = *(v12 + 96);
    v17 = *(v12 + 48);
    v33 = *(v12 + 32);
    v34 = v17;
    if (v15)
    {

      v18 = v29;
      sub_1AFDFCF58();
      v19 = sub_1AFDFCF08();
      v21 = v20;
      (*v26)(v18, v30);
      sub_1AF43C9F0(v19, v21);
      sub_1AFDFC228();
      for (i = v32; ; i ^= v23 - 0x61C8864680B583EBLL + (i << 6) + (i >> 2))
      {
        v23 = sub_1AFDFC208();
        if ((v23 & 0x100) != 0)
        {
          break;
        }
      }

      v32 = i;
      sub_1AF587E7C(v19, v21);
      (*v25)(v5, v31);
      v11 = v27;
      v9 = v28;
    }

    else
    {
      v32 ^= v13 - 0x61C8864680B583EBLL + (v32 << 6) + (v32 >> 2);
    }

    ++v10;
    sub_1AF87A470(&v32);
    sub_1AF4456D0(v13, v14, v15);
  }

  while (v10 != v9);
  return v32;
}

uint64_t sub_1AF87E924()
{
  v3 = sub_1AF87D6C8(*v0, *(v0 + 8), *(v0 + 16));
  MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
  v1 = sub_1AF879ACC();
  MEMORY[0x1B2718AE0](v1);

  return v3;
}

void sub_1AF87E9A0(uint64_t *a1, char a2, double a3, double a4, double a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2 & 1) != 0 || (a1[2])
  {
    sub_1AF87DC74();
    v7 = *(a1 + 9);
    v8 = *(a1 + 5);
    v9 = *(a1 + 3);
    v10 = *(a1 + 4);
    v11 = *(a1 + 5);
    switch(*(a1 + 96))
    {
      case 1:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = v7;
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:4 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 2:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = v7;
        v19 = v8;
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:5 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 3:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = v7;
        v19 = v8;
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:6 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 4:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = v7;
        v19 = v8;
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:7 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 5:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = v7;
        v19 = v8;
        v20 = v9;
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:8 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 6:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = v7;
        v19 = v8;
        v20 = v9;
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:9 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 7:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = v7;
        v19 = v8;
        *&v20 = v9;
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:10 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 8:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = v7;
        v19 = v8;
        v20 = v9;
        v21 = v10;
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:11 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 9:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = v7;
        v19 = v8;
        v20 = v9;
        v21 = v10;
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:12 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 0xA:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = v7;
        v19 = v8;
        v20 = v9;
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:13 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 0xB:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = v7;
        v19 = v8;
        v20 = v9;
        v21 = v10;
        v22 = v11;
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:14 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 0xC:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = v7;
        v19 = v8;
        v20 = v9;
        v21 = v10;
        v22 = v11;
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:15 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 0xD:
        LOBYTE(v18) = *(a1 + 8);
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:53 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 0xE:
        LODWORD(v18) = *(a1 + 8);
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:29 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      case 0xF:
        LODWORD(v18) = *(a1 + 8);
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:33 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
      default:
        LODWORD(v18) = *(a1 + 8);
        v12 = sub_1AFDFCEC8();

        [v5 setConstantValue:&v18 type:3 withName:{v12, v18, *&v19, v20, v21, v22}];
        break;
    }
  }

  else
  {
    v13 = *a1;
    LODWORD(a5) = *(a1 + 9);
    v14 = *(a1 + 5);
    v15 = *(a1 + 3);
    v16 = *(a1 + 4);
    v17 = *(a1 + 5);
    switch(*(a1 + 96))
    {
      case 1:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = LODWORD(a5);
        [v5 setConstantValue:&v18 type:4 atIndex:{v13, v14, *&v15}];
        break;
      case 2:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = LODWORD(a5);
        v19 = v14;
        [v5 setConstantValue:&v18 type:5 atIndex:v13];
        break;
      case 3:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = LODWORD(a5);
        v19 = v14;
        [v5 setConstantValue:&v18 type:6 atIndex:v13];
        break;
      case 4:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = LODWORD(a5);
        v19 = v14;
        [v5 setConstantValue:&v18 type:7 atIndex:v13];
        break;
      case 5:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = LODWORD(a5);
        v19 = v14;
        v20 = v15;
        [v5 setConstantValue:&v18 type:8 atIndex:v13];
        break;
      case 6:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = LODWORD(a5);
        v19 = v14;
        v20 = v15;
        [v5 setConstantValue:&v18 type:9 atIndex:v13];
        break;
      case 7:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = LODWORD(a5);
        v19 = v14;
        *&v20 = v15;
        [v5 setConstantValue:&v18 type:10 atIndex:v13];
        break;
      case 8:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = LODWORD(a5);
        v19 = v14;
        v20 = v15;
        v21 = v16;
        [v5 setConstantValue:&v18 type:11 atIndex:v13];
        break;
      case 9:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = LODWORD(a5);
        v19 = v14;
        v20 = v15;
        v21 = v16;
        [v5 setConstantValue:&v18 type:12 atIndex:v13];
        break;
      case 0xA:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = LODWORD(a5);
        v19 = v14;
        v20 = v15;
        [v5 setConstantValue:&v18 type:13 atIndex:v13];
        break;
      case 0xB:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = LODWORD(a5);
        v19 = v14;
        v20 = v15;
        v21 = v16;
        v22 = v17;
        [v5 setConstantValue:&v18 type:14 atIndex:v13];
        break;
      case 0xC:
        LODWORD(v18) = *(a1 + 8);
        HIDWORD(v18) = LODWORD(a5);
        v19 = v14;
        v20 = v15;
        v21 = v16;
        v22 = v17;
        [v5 setConstantValue:&v18 type:15 atIndex:v13];
        break;
      case 0xD:
        LOBYTE(v18) = *(a1 + 8);
        [v5 setConstantValue:&v18 type:53 atIndex:{v13, v14, *&v15, a5}];
        break;
      case 0xE:
        LODWORD(v18) = *(a1 + 8);
        [v5 setConstantValue:&v18 type:29 atIndex:{v13, v14, *&v15, a5}];
        break;
      case 0xF:
        LODWORD(v18) = *(a1 + 8);
        [v5 setConstantValue:&v18 type:33 atIndex:{v13, v14, *&v15, a5}];
        break;
      default:
        LODWORD(v18) = *(a1 + 8);
        [v5 setConstantValue:&v18 type:3 atIndex:{v13, v14, *&v15, a5}];
        break;
    }
  }
}

uint64_t sub_1AF87F034(int a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = a3 + 64;
  while (*(v4 - 16) == 1 || *(v4 - 32) != a1)
  {
    v4 += 112;
    if (!--v3)
    {
      goto LABEL_7;
    }
  }

  v5 = *(v4 + 64);
  if (v5 == 14)
  {
LABEL_7:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (v5 == 13)
  {
    v6 = *v4 ^ a2 ^ 1;
    return v6 & 1;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF87F104(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  v55 = v7;
  v56 = v8;
  v59 = a2;
LABEL_4:
  v10 = v9;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
    v9 = v10;
LABEL_8:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v3 + 56) + ((v9 << 9) | (8 * v11)));
    v57 = v12;
    if (!a2)
    {
      v32 = v12;
      goto LABEL_31;
    }

    v13 = *(a2 + 16);
    v14 = v12;
    if (!v13)
    {
      goto LABEL_31;
    }

    v15 = v14;
    v16 = 32;
    while (1)
    {
      v19 = *(a2 + v16 + 16);
      v18 = *(a2 + v16 + 32);
      v65 = *(a2 + v16);
      v66 = v19;
      v67 = v18;
      v20 = *(a2 + v16 + 48);
      v21 = *(a2 + v16 + 64);
      v22 = *(a2 + v16 + 80);
      v71 = *(a2 + v16 + 96);
      v69 = v21;
      v70 = v22;
      v68 = v20;
      v23 = v65;
      if (v66 != 1)
      {
        break;
      }

      v24 = *(&v65 + 1);

      v25 = [v15 name];
      v26 = sub_1AFDFCEF8();
      v28 = v27;

      if (v26 == v23 && v24 == v28)
      {
      }

      else
      {
        v30 = sub_1AFDFEE28();

        if ((v30 & 1) == 0)
        {
          sub_1AF7D4D70(&v65);
          a2 = v59;
          goto LABEL_14;
        }
      }

      v17 = [v15 type];
      a2 = v59;
      if (v17 == qword_1AFE7CB48[v71])
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v60 = 0;
        v61 = 0xE000000000000000;
        sub_1AFDFE218();
        v63 = v60;
        v64 = v61;
        MEMORY[0x1B2718AE0](0xD00000000000002CLL, 0x80000001AFF38620);
        v60 = v23;
        v61 = v24;
        v62 = 1;
        sub_1AFDFE458();
        v33 = v63;
        v34 = v64;
        v35 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v48 = v35;
          swift_once();
          v35 = v48;
        }

        v60 = 0;
        sub_1AF0D4F18(v35, &v60, v33, v34);

        goto LABEL_39;
      }

LABEL_13:
      sub_1AF7D4D70(&v65);
LABEL_14:
      v16 += 112;
      if (!--v13)
      {
        goto LABEL_31;
      }
    }

    if ([v15 index] != v23)
    {
      goto LABEL_14;
    }

    v31 = [v15 type];
    if (v31 != qword_1AFE7CB48[v71])
    {
      goto LABEL_13;
    }

    if (v23 != 606 || (sub_1AF87F034(601, 1, a2) & 1) != 0 || (sub_1AF87F034(602, 1, a2) & 1) != 0 || (sub_1AF87F034(603, 1, a2) & 1) != 0 || (sub_1AF87F034(604, 1, a2) & 1) != 0)
    {

LABEL_39:
      v36 = v66;
      v72[0] = *(&v66 + 1);
      *(v72 + 7) = *(&v66 + 1);
      *v58 = v67;
      v52 = v68;
      v53 = v65;
      v50 = v70;
      v51 = v69;
      v37 = v71;
      goto LABEL_59;
    }

LABEL_31:
    if ([v57 required])
    {
      v38 = [v57 index];
      v39 = [v57 type];

      v40 = v39 - 3;
      v37 = 0;
      v41 = 0uLL;
      switch(v40)
      {
        case 0uLL:
          break;
        case 1uLL:
          v37 = 1;
          break;
        case 2uLL:
          v37 = 2;
          break;
        case 3uLL:
          v37 = 3;
          break;
        case 4uLL:
          v37 = 4;
          v41 = xmmword_1AFE21170;
          break;
        case 5uLL:
          v37 = 5;
          v52 = 0uLL;
          break;
        case 6uLL:
          v37 = 6;
          v52 = 0uLL;
          break;
        case 7uLL:
          v37 = 7;
          v52 = 0uLL;
          break;
        case 8uLL:
          v37 = 8;
          v41 = xmmword_1AFE20150;
          v52 = xmmword_1AFE20160;
          v51 = xmmword_1AFE20180;
          break;
        case 9uLL:
          v37 = 9;
          v52 = 0uLL;
          v51 = 0u;
          break;
        case 0xAuLL:
          v37 = 10;
          v52 = 0uLL;
          break;
        case 0xBuLL:
          v37 = 11;
          v52 = 0uLL;
          v50 = 0u;
          v51 = 0u;
          break;
        case 0xCuLL:
          v37 = 12;
          v41 = xmmword_1AFE20150;
          v52 = xmmword_1AFE20160;
          v50 = xmmword_1AFE201A0;
          v51 = xmmword_1AFE20180;
          break;
        case 0x1AuLL:
          v37 = 14;
          break;
        case 0x1EuLL:
          v37 = 15;
          break;
        case 0x32uLL:
          v37 = 13;
          break;
        default:
          v37 = 14;
          *&v41 = -1;
          *(&v41 + 1) = -1;
          break;
      }

      *v58 = v41;
      v36 = 0;
      v53 = v38;
LABEL_59:
      v7 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1AF4228D4(0, *(v54 + 2) + 1, 1, v54);
      }

      v3 = v56;
      v43 = *(v54 + 2);
      v42 = *(v54 + 3);
      v44 = *v58;
      if (v43 >= v42 >> 1)
      {
        v47 = sub_1AF4228D4(v42 > 1, v43 + 1, 1, v54);
        v44 = *v58;
        v54 = v47;
      }

      *(v54 + 2) = v43 + 1;
      v45 = &v54[112 * v43];
      *(v45 + 2) = v53;
      v45[48] = v36;
      v46 = *(v72 + 7);
      *(v45 + 49) = v72[0];
      *(v45 + 7) = v46;
      *(v45 + 4) = v44;
      *(v45 + 5) = v52;
      *(v45 + 6) = v51;
      *(v45 + 7) = v50;
      v45[128] = v37;
      a2 = v59;
      goto LABEL_4;
    }

    v10 = v9;
    v7 = v55;
    v3 = v56;
  }

  while (v6);
LABEL_6:
  while (1)
  {
    v9 = v10 + 1;
    if (v10 + 1 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10++ + 72);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  *&v65 = v54;

  sub_1AF87D238(&v65);

  return v65;
}

uint64_t sub_1AF87F7A8()
{
  result = sub_1AF87F7C8();
  qword_1EB6C3270 = result;
  return result;
}

uint64_t sub_1AF87F7C8()
{
  if (qword_1EB633478 != -1)
  {
    swift_once();
  }

  v0 = off_1EB633480;
  v1 = MEMORY[0x1B2718660](*(off_1EB633480 + 2), MEMORY[0x1E69E6158], MEMORY[0x1E69E6530], MEMORY[0x1E69E6168]);
  v2 = 1 << v0[32];
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(v0 + 8);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_13:
    v8 = __clz(__rbit64(v4)) | (v7 << 6);
    v42 = *(*(v0 + 6) + 8 * v8);
    v9 = (*(v0 + 7) + 16 * v8);
    v11 = *v9;
    v10 = v9[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_1AF419914(v11, v10);
    v15 = v14;
    if (*(v1 + 24) >= (*(v1 + 16) + ((v14 & 1) == 0)))
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v1;
      }

      else
      {
        v39 = v13;
        sub_1AF44371C();
        v19 = sub_1AFDFE598();
        v16 = v19;
        if (*(v1 + 16))
        {
          v20 = (v19 + 64);
          v21 = (v1 + 64);
          v22 = ((1 << *(v16 + 32)) + 63) >> 6;
          if (v16 != v1 || v20 >= &v21[8 * v22])
          {
            memmove(v20, v21, 8 * v22);
          }

          v23 = 0;
          *(v16 + 16) = *(v1 + 16);
          v24 = 1 << *(v1 + 32);
          if (v24 < 64)
          {
            v25 = ~(-1 << v24);
          }

          else
          {
            v25 = -1;
          }

          v26 = v25 & *(v1 + 64);
          v27 = (v24 + 63) >> 6;
          v28 = v1 + 72;
          v40 = v27;
          if (v26)
          {
            do
            {
              v41 = (v26 - 1) & v26;
              v29 = __clz(__rbit64(v26)) | (v23 << 6);
LABEL_33:
              v33 = (*(v1 + 48) + 16 * v29);
              v35 = *v33;
              v34 = v33[1];
              v36 = *(*(v1 + 56) + 8 * v29);
              v37 = (*(v16 + 48) + 16 * v29);
              *v37 = v35;
              v37[1] = v34;
              *(*(v16 + 56) + 8 * v29) = v36;

              v28 = v1 + 72;
              v27 = v40;
              v26 = v41;
            }

            while (v41);
          }

          v30 = v23 << 6;
          while (1)
          {
            v31 = v23 + 1;
            if (v23 + 1 >= v27)
            {
              break;
            }

            v32 = *(v28 + 8 * v23);
            v30 += 64;
            ++v23;
            if (v32)
            {
              v41 = (v32 - 1) & v32;
              v29 = __clz(__rbit64(v32)) + v30;
              v23 = v31;
              goto LABEL_33;
            }
          }
        }

        v13 = v39;
      }
    }

    else
    {
      sub_1AF83D2E8(*(v1 + 16) + ((v14 & 1) == 0), isUniquelyReferenced_nonNull_native);
      v16 = v1;
      v13 = sub_1AF419914(v11, v10);
      if ((v15 & 1) != (v17 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    v4 &= v4 - 1;
    if (v15)
    {
      *(*(v16 + 56) + 8 * v13) = v42;
    }

    else
    {
      *(v16 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v18 = (*(v16 + 48) + 16 * v13);
      *v18 = v11;
      v18[1] = v10;
      *(*(v16 + 56) + 8 * v13) = v42;
      ++*(v16 + 16);
    }

    v6 = v7;
    v1 = v16;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      break;
    }

    v4 = *&v0[8 * v6++ + 72];
    if (v4)
    {
      goto LABEL_13;
    }
  }

  return v1;
}

void *sub_1AF87FB38()
{
  sub_1AF8810F0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE7C2D0;
  *(v0 + 32) = xmmword_1AFE7C2E0;
  *(v0 + 48) = 0x80000001AFF378E0;
  *(v0 + 56) = xmmword_1AFE7C2F0;
  *(v0 + 72) = 0x80000001AFF37900;
  *(v0 + 80) = xmmword_1AFE7C300;
  *(v0 + 96) = 0x80000001AFF37920;
  *(v0 + 104) = xmmword_1AFE7C310;
  *(v0 + 120) = 0x80000001AFF37940;
  *(v0 + 128) = xmmword_1AFE7C320;
  *(v0 + 144) = 0xEE006E6F6974704FLL;
  *(v0 + 152) = xmmword_1AFE7C330;
  *(v0 + 168) = 0x80000001AFF37960;
  *(v0 + 176) = xmmword_1AFE7C340;
  *(v0 + 192) = 0xEE00676E69707069;
  *(v0 + 200) = xmmword_1AFE7C350;
  *(v0 + 216) = 0xEC0000006B73614DLL;
  *(v0 + 224) = xmmword_1AFE7C360;
  *(v0 + 240) = 0x80000001AFF37980;
  *(v0 + 248) = xmmword_1AFE7C370;
  *(v0 + 264) = 0x80000001AFF379A0;
  *(v0 + 272) = xmmword_1AFE7C380;
  *(v0 + 288) = 0x80000001AFF379C0;
  *(v0 + 296) = 400;
  *(v0 + 304) = 0xD000000000000013;
  *(v0 + 312) = 0x80000001AFF379E0;
  *(v0 + 320) = xmmword_1AFE7C390;
  *(v0 + 336) = 0x80000001AFF37A00;
  *(v0 + 344) = 402;
  strcpy((v0 + 352), "has_vertex_uv0");
  *(v0 + 367) = -18;
  *(v0 + 368) = xmmword_1AFE7C3A0;
  *(v0 + 384) = 0xEE003176755F7865;
  *(v0 + 392) = 404;
  strcpy((v0 + 400), "has_vertex_uv2");
  *(v0 + 415) = -18;
  *(v0 + 416) = xmmword_1AFE7C3B0;
  *(v0 + 432) = 0xEE003376755F7865;
  *(v0 + 440) = 406;
  *(v0 + 448) = 0xD000000000000010;
  *(v0 + 456) = 0x80000001AFF37A20;
  *(v0 + 464) = xmmword_1AFE7C3C0;
  *(v0 + 480) = 0x80000001AFF37A40;
  *(v0 + 488) = 450;
  strcpy((v0 + 496), "gamma_blending");
  *(v0 + 511) = -18;
  *(v0 + 512) = xmmword_1AFE7C3D0;
  *(v0 + 528) = 0xEB00000000736D72;
  *(v0 + 536) = 452;
  *(v0 + 544) = 0x635F656C62616E65;
  *(v0 + 552) = 0xEF676E697070696CLL;
  *(v0 + 560) = xmmword_1AFE7C3E0;
  *(v0 + 576) = 0x80000001AFF37A60;
  *(v0 + 584) = 455;
  *(v0 + 592) = 0xD000000000000011;
  *(v0 + 600) = 0x80000001AFF37A80;
  *(v0 + 608) = xmmword_1AFE7C3F0;
  *(v0 + 624) = 0x80000001AFF37AA0;
  *(v0 + 632) = 457;
  *(v0 + 640) = 0xD000000000000011;
  *(v0 + 648) = 0x80000001AFF37AC0;
  *(v0 + 656) = xmmword_1AFE7C400;
  *(v0 + 672) = 0x80000001AFF37AE0;
  *(v0 + 680) = 459;
  *(v0 + 688) = 0xD000000000000014;
  *(v0 + 696) = 0x80000001AFF37B00;
  *(v0 + 704) = xmmword_1AFE7C410;
  *(v0 + 720) = 0x80000001AFF37B20;
  *(v0 + 728) = 461;
  *(v0 + 736) = 0xD000000000000018;
  *(v0 + 744) = 0x80000001AFF37B40;
  *(v0 + 752) = xmmword_1AFE7C420;
  *(v0 + 768) = 0xEE0065646F6D5F67;
  *(v0 + 776) = 463;
  *(v0 + 784) = 0xD000000000000018;
  *(v0 + 792) = 0x80000001AFF37B60;
  *(v0 + 800) = xmmword_1AFE7C430;
  *(v0 + 816) = 0x80000001AFF37B80;
  *(v0 + 824) = 465;
  *(v0 + 832) = 0xD00000000000001ELL;
  *(v0 + 840) = 0x80000001AFF37BA0;
  *(v0 + 848) = xmmword_1AFE7C440;
  *(v0 + 864) = 0x80000001AFF37BC0;
  *(v0 + 872) = 467;
  *(v0 + 880) = 0xD000000000000026;
  *(v0 + 888) = 0x80000001AFF37BF0;
  *(v0 + 896) = xmmword_1AFE7C450;
  *(v0 + 912) = 0x80000001AFF37C20;
  *(v0 + 920) = 500;
  strcpy((v0 + 928), "has_velocity");
  *(v0 + 941) = 0;
  *(v0 + 942) = -5120;
  *(v0 + 944) = xmmword_1AFE7C460;
  *(v0 + 960) = 0xE700000000000000;
  *(v0 + 968) = 502;
  strcpy((v0 + 976), "has_lifetime");
  *(v0 + 989) = 0;
  *(v0 + 990) = -5120;
  *(v0 + 992) = xmmword_1AFE7C470;
  *(v0 + 1008) = 0x80000001AFF37C40;
  *(v0 + 1016) = 504;
  *(v0 + 1024) = 0x6F6C6F635F736168;
  *(v0 + 1032) = 0xE900000000000072;
  *(v0 + 1040) = xmmword_1AFE7C480;
  *(v0 + 1056) = 0xEF6E6F697461746ELL;
  *(v0 + 1064) = 507;
  *(v0 + 1072) = 0xD000000000000014;
  *(v0 + 1080) = 0x80000001AFF37C60;
  *(v0 + 1088) = xmmword_1AFE7C490;
  *(v0 + 1104) = 0xE900000000000065;
  *(v0 + 1112) = 509;
  *(v0 + 1120) = 0xD000000000000012;
  *(v0 + 1128) = 0x80000001AFF37C80;
  *(v0 + 1136) = xmmword_1AFE7C4A0;
  *(v0 + 1152) = 0xE900000000000074;
  *(v0 + 1160) = 511;
  *(v0 + 1168) = 0x677261745F736168;
  *(v0 + 1176) = 0xEA00000000007465;
  *(v0 + 1184) = xmmword_1AFE7C4B0;
  *(v0 + 1200) = 0xE800000000000000;
  *(v0 + 1208) = 513;
  *(v0 + 1216) = 0xD000000000000011;
  *(v0 + 1224) = 0x80000001AFF37CA0;
  *(v0 + 1232) = xmmword_1AFE7C4C0;
  *(v0 + 1248) = 0x80000001AFF37CC0;
  *(v0 + 1256) = 515;
  *(v0 + 1264) = 0xD000000000000012;
  *(v0 + 1272) = 0x80000001AFF37CE0;
  *(v0 + 1280) = xmmword_1AFE7C4D0;
  *(v0 + 1296) = 0x80000001AFF37D00;
  *(v0 + 1304) = 517;
  strcpy((v0 + 1312), "has_user_data1");
  *(v0 + 1327) = -18;
  *(v0 + 1328) = xmmword_1AFE7C4E0;
  *(v0 + 1344) = 0xEE0032617461645FLL;
  *(v0 + 1352) = 519;
  strcpy((v0 + 1360), "has_user_data3");
  *(v0 + 1375) = -18;
  *(v0 + 1376) = xmmword_1AFE7C4F0;
  *(v0 + 1392) = 0xEE0034617461645FLL;
  *(v0 + 1400) = 521;
  *(v0 + 1408) = 0x657A69735F736168;
  *(v0 + 1416) = 0xEA00000000004431;
  *(v0 + 1424) = xmmword_1AFE7C500;
  *(v0 + 1440) = 0xEA00000000004432;
  *(v0 + 1448) = 523;
  *(v0 + 1456) = 0x657A69735F736168;
  *(v0 + 1464) = 0xEA00000000004433;
  *(v0 + 1472) = xmmword_1AFE7C510;
  *(v0 + 1488) = 0xED0000657A69735FLL;
  *(v0 + 1496) = 526;
  *(v0 + 1504) = 0x6C61636F6C5F7369;
  *(v0 + 1512) = 0xE800000000000000;
  *(v0 + 1520) = xmmword_1AFE7C520;
  *(v0 + 1536) = 0xEF64695F656C6369;
  *(v0 + 1544) = 528;
  strcpy((v0 + 1552), "has_parent_id");
  *(v0 + 1566) = -4864;
  *(v0 + 1568) = xmmword_1AFE7C530;
  *(v0 + 1584) = 0x80000001AFF37D20;
  *(v0 + 1592) = 531;
  strcpy((v0 + 1600), "drag_use_size");
  *(v0 + 1614) = -4864;
  *(v0 + 1616) = xmmword_1AFE7C540;
  *(v0 + 1632) = 0x80000001AFF37D40;
  *(v0 + 1640) = 533;
  *(v0 + 1648) = 0xD000000000000013;
  *(v0 + 1656) = 0x80000001AFF37D60;
  *(v0 + 1664) = xmmword_1AFE7C550;
  *(v0 + 1680) = 0x80000001AFF37D80;
  *(v0 + 1688) = 535;
  *(v0 + 1696) = 0xD000000000000015;
  *(v0 + 1704) = 0x80000001AFF37DA0;
  *(v0 + 1712) = xmmword_1AFE7C560;
  *(v0 + 1728) = 0x80000001AFF37DC0;
  *(v0 + 1736) = 537;
  strcpy((v0 + 1744), "enable_gravity");
  *(v0 + 1759) = -18;
  *(v0 + 1760) = xmmword_1AFE7C570;
  *(v0 + 1776) = 0x80000001AFF37DE0;
  *(v0 + 1784) = 539;
  *(v0 + 1792) = 0xD000000000000010;
  *(v0 + 1800) = 0x80000001AFF37E00;
  *(v0 + 1808) = xmmword_1AFE7C580;
  *(v0 + 1824) = 0x80000001AFF37E20;
  *(v0 + 1832) = 541;
  *(v0 + 1840) = 0xD00000000000001ALL;
  *(v0 + 1848) = 0x80000001AFF37E40;
  *(v0 + 1856) = xmmword_1AFE7C590;
  *(v0 + 1872) = 0x80000001AFF37E60;
  *(v0 + 1880) = 543;
  *(v0 + 1888) = 0xD000000000000017;
  *(v0 + 1896) = 0x80000001AFF37E80;
  *(v0 + 1904) = xmmword_1AFE7C5A0;
  *(v0 + 1920) = 0x80000001AFF37EA0;
  *(v0 + 1928) = 550;
  *(v0 + 1936) = 0xD000000000000023;
  *(v0 + 1944) = 0x80000001AFF37EC0;
  *(v0 + 1952) = xmmword_1AFE7C5B0;
  *(v0 + 1968) = 0x80000001AFF37EF0;
  *(v0 + 1976) = 552;
  *(v0 + 1984) = 0xD000000000000023;
  *(v0 + 1992) = 0x80000001AFF37F20;
  *(v0 + 2000) = xmmword_1AFE7C5C0;
  *(v0 + 2016) = 0x80000001AFF37F50;
  *(v0 + 2024) = 554;
  *(v0 + 2032) = 0xD00000000000001FLL;
  *(v0 + 2040) = 0x80000001AFF37F80;
  *(v0 + 2048) = xmmword_1AFE7C5D0;
  *(v0 + 2064) = 0x80000001AFF37FA0;
  *(v0 + 2072) = 560;
  strcpy((v0 + 2080), "set_color_mode");
  *(v0 + 2095) = -18;
  *(v0 + 2096) = xmmword_1AFE7C5E0;
  *(v0 + 2112) = 0xED000065646F6D5FLL;
  *(v0 + 2120) = 601;
  *(v0 + 2128) = 0xD000000000000011;
  *(v0 + 2136) = 0x80000001AFF37FD0;
  *(v0 + 2144) = xmmword_1AFE7C5F0;
  *(v0 + 2160) = 0x80000001AFF37FF0;
  *(v0 + 2168) = 603;
  *(v0 + 2176) = 0xD000000000000017;
  *(v0 + 2184) = 0x80000001AFF38010;
  *(v0 + 2192) = xmmword_1AFE7C600;
  *(v0 + 2208) = 0x80000001AFF38030;
  *(v0 + 2216) = 605;
  *(v0 + 2224) = 0xD000000000000019;
  *(v0 + 2232) = 0x80000001AFF38050;
  *(v0 + 2240) = xmmword_1AFE7C610;
  *(v0 + 2256) = 0x80000001AFF38070;
  *(v0 + 2264) = 607;
  *(v0 + 2272) = 0x5F65727574786574;
  *(v0 + 2280) = 0xEF6C656E6E616863;
  *(v0 + 2288) = xmmword_1AFE7C620;
  *(v0 + 2304) = 0x80000001AFF380A0;
  *(v0 + 2312) = 609;
  *(v0 + 2320) = 0xD000000000000016;
  *(v0 + 2328) = 0x80000001AFF380C0;
  *(v0 + 2336) = xmmword_1AFE7C630;
  *(v0 + 2352) = 0x80000001AFF380E0;
  *(v0 + 2360) = 611;
  *(v0 + 2368) = 0xD000000000000010;
  *(v0 + 2376) = 0x80000001AFF38100;
  *(v0 + 2384) = xmmword_1AFE7C640;
  *(v0 + 2400) = 0xEE0065646F6D5F6ELL;
  *(v0 + 2408) = 613;
  *(v0 + 2416) = 0xD000000000000019;
  *(v0 + 2424) = 0x80000001AFF38120;
  *(v0 + 2432) = xmmword_1AFE7C650;
  *(v0 + 2448) = 0x80000001AFF38140;
  *(v0 + 2456) = 615;
  *(v0 + 2464) = 0xD000000000000010;
  *(v0 + 2472) = 0x80000001AFF38160;
  *(v0 + 2480) = xmmword_1AFE7C660;
  *(v0 + 2496) = 0xEA00000000006564;
  *(v0 + 2504) = 617;
  *(v0 + 2512) = 0xD00000000000001ELL;
  *(v0 + 2520) = 0x80000001AFF38180;
  *(v0 + 2528) = xmmword_1AFE7C670;
  *(v0 + 2544) = 0xED000066666F7475;
  *(v0 + 2552) = 619;
  strcpy((v0 + 2560), "enable_sorting");
  *(v0 + 2575) = -18;
  *(v0 + 2576) = xmmword_1AFE7C680;
  *(v0 + 2592) = 0x80000001AFF381A0;
  *(v0 + 2600) = 621;
  *(v0 + 2608) = 0xD000000000000015;
  *(v0 + 2616) = 0x80000001AFF381C0;
  *(v0 + 2624) = xmmword_1AFE7C690;
  *(v0 + 2640) = 0x80000001AFF381E0;
  *(v0 + 2648) = 623;
  *(v0 + 2656) = 0xD000000000000012;
  *(v0 + 2664) = 0x80000001AFF38200;
  *(v0 + 2672) = xmmword_1AFE7C6A0;
  *(v0 + 2688) = 0x80000001AFF38220;
  *(v0 + 2696) = 625;
  *(v0 + 2704) = 0x657A696C65786F76;
  *(v0 + 2712) = 0xEF7974696361704FLL;
  *(v0 + 2720) = xmmword_1AFE7C6B0;
  *(v0 + 2736) = 0xED0000726F6C6F43;
  *(v0 + 2744) = 627;
  *(v0 + 2752) = 0xD000000000000017;
  *(v0 + 2760) = 0x80000001AFF38240;
  *(v0 + 2768) = xmmword_1AFE7C6C0;
  *(v0 + 2784) = 0x80000001AFF38260;
  *(v0 + 2792) = 629;
  *(v0 + 2800) = 0xD000000000000016;
  *(v0 + 2808) = 0x80000001AFF38280;
  *(v0 + 2816) = xmmword_1AFE7C6D0;
  *(v0 + 2832) = 0x80000001AFF382A0;
  *(v0 + 2840) = 632;
  *(v0 + 2848) = 0xD000000000000019;
  *(v0 + 2856) = 0x80000001AFF382C0;
  *(v0 + 2864) = xmmword_1AFE7C6E0;
  *(v0 + 2880) = 0x80000001AFF382E0;
  *(v0 + 2888) = 634;
  *(v0 + 2896) = 0xD00000000000001ALL;
  *(v0 + 2904) = 0x80000001AFF38300;
  *(v0 + 2912) = xmmword_1AFE7C6F0;
  *(v0 + 2928) = 0x80000001AFF38320;
  *(v0 + 2936) = 800;
  *(v0 + 2944) = 0xD000000000000012;
  *(v0 + 2952) = 0x80000001AFF38340;
  *(v0 + 2960) = xmmword_1AFE7C700;
  *(v0 + 2976) = 0x80000001AFF38360;
  *(v0 + 2984) = 20001;
  *(v0 + 2992) = 0xD000000000000017;
  *(v0 + 3000) = 0x80000001AFF38380;
  *(v0 + 3008) = xmmword_1AFE7C710;
  *(v0 + 3024) = 0x80000001AFF383A0;
  *(v0 + 3032) = 20003;
  *(v0 + 3040) = 0xD000000000000019;
  *(v0 + 3048) = 0x80000001AFF383C0;
  *(v0 + 3056) = xmmword_1AFE7C720;
  *(v0 + 3072) = 0x80000001AFF383E0;
  *(v0 + 3080) = 20050;
  *(v0 + 3088) = 0xD000000000000018;
  *(v0 + 3096) = 0x80000001AFF38400;
  *(v0 + 3104) = xmmword_1AFE7C730;
  *(v0 + 3120) = 0x80000001AFF38420;
  *(v0 + 3128) = 20052;
  *(v0 + 3136) = 0xD000000000000015;
  *(v0 + 3144) = 0x80000001AFF38440;
  *(v0 + 3152) = xmmword_1AFE7C740;
  *(v0 + 3168) = 0xEF64656469735F65;
  *(v0 + 3176) = 20054;
  *(v0 + 3184) = 0xD000000000000012;
  *(v0 + 3192) = 0x80000001AFF38460;
  *(v0 + 3200) = xmmword_1AFE7C750;
  *(v0 + 3216) = 0x80000001AFF38460;
  *(v0 + 3224) = 20071;
  strcpy((v0 + 3232), "has_color_map");
  *(v0 + 3246) = -4864;
  *(v0 + 3248) = xmmword_1AFE7C760;
  *(v0 + 3264) = 0xEE0070616D5F6C61;
  *(v0 + 3272) = 20073;
  *(v0 + 3280) = 0xD000000000000017;
  *(v0 + 3288) = 0x80000001AFF38480;
  *(v0 + 3296) = xmmword_1AFE7C770;
  *(v0 + 3312) = 0x80000001AFF384A0;
  *(v0 + 3320) = 20101;
  *(v0 + 3328) = 0x666F44736168;
  *(v0 + 3336) = 0xE600000000000000;
  *(v0 + 3344) = xmmword_1AFE7C780;
  *(v0 + 3360) = 0xEB0000000072756CLL;
  *(v0 + 3368) = 20103;
  strcpy((v0 + 3376), "hasVignetting");
  *(v0 + 3390) = -4864;
  *(v0 + 3392) = xmmword_1AFE7C790;
  *(v0 + 3408) = 0xEF676E6964617247;
  *(v0 + 3416) = 20105;
  *(v0 + 3424) = 0x6D6F6F6C42736168;
  *(v0 + 3432) = 0xE800000000000000;
  *(v0 + 3440) = xmmword_1AFE7C7A0;
  *(v0 + 3456) = 0xED0000676E69726FLL;
  *(v0 + 3464) = 20107;
  *(v0 + 3472) = 0xD000000000000021;
  *(v0 + 3480) = 0x80000001AFF384C0;
  *(v0 + 3488) = xmmword_1AFE7C7B0;
  *(v0 + 3504) = 0xEB00000000424752;
  *(v0 + 3512) = 20109;
  strcpy((v0 + 3520), "hasClearColor");
  *(v0 + 3534) = -4864;
  *(v0 + 3536) = xmmword_1AFE7C7C0;
  *(v0 + 3552) = 0xED0000676E69646ELL;
  *(v0 + 3560) = 20300;
  strcpy((v0 + 3568), "useHighQuality");
  *(v0 + 3583) = -18;
  *(v0 + 3584) = xmmword_1AFE7C7D0;
  *(v0 + 3600) = 0xE800000000000000;
  *(v0 + 3608) = 20302;
  *(v0 + 3616) = 0xD000000000000011;
  *(v0 + 3624) = 0x80000001AFF384F0;
  *(v0 + 3632) = xmmword_1AFE7C7E0;
  *(v0 + 3648) = 0xE900000000000042;
  *(v0 + 3656) = 20401;
  strcpy((v0 + 3664), "needsDithering");
  *(v0 + 3679) = -18;
  *(v0 + 3680) = xmmword_1AFE7C7F0;
  *(v0 + 3696) = 0xEC00000073746E65;
  *(v0 + 3704) = 20501;
  *(v0 + 3712) = 0x4247525364616572;
  *(v0 + 3720) = 0xE800000000000000;
  *(v0 + 3728) = xmmword_1AFE7C800;
  *(v0 + 3744) = 0x80000001AFF38510;
  *(v0 + 3752) = 20601;
  *(v0 + 3760) = 0xD000000000000015;
  *(v0 + 3768) = 0x80000001AFF38530;
  *(v0 + 3776) = xmmword_1AFE7C810;
  *(v0 + 3792) = 0x80000001AFF38550;
  *(v0 + 3800) = 20603;
  *(v0 + 3808) = 0xD000000000000014;
  *(v0 + 3816) = 0x80000001AFF38570;
  *(v0 + 3824) = xmmword_1AFE7C820;
  *(v0 + 3840) = 0xEC00000073726566;
  v1 = sub_1AF42C2A4(v0);
  swift_setDeallocating();
  sub_1AF881148();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = xmmword_1AFE7C830;
  *(inited + 48) = 0x80000001AFF38590;
  *(inited + 56) = xmmword_1AFE7C840;
  *(inited + 72) = 0x80000001AFF385C0;
  v3 = sub_1AF42C2A4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v1;
  sub_1AF881BC0(v3, sub_1AF881BA8, 0, isUniquelyReferenced_nonNull_native, &v6);

  result = v6;
  off_1EB633480 = v6;
  return result;
}

void sub_1AF8810F0()
{
  if (!qword_1EB633068)
  {
    sub_1AF881148();
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633068);
    }
  }
}

void sub_1AF881148()
{
  if (!qword_1EB6332C0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6332C0);
    }
  }
}

uint64_t sub_1AF8811A8(void *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2)
    {
      return sub_1AF88128C(0, v2, 1, a1);
    }
  }

  else
  {
    v4 = result;
    if (v2 <= 1)
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v5 = sub_1AFDFD488();
      *(v5 + 16) = v2 / 2;
    }

    v7[0] = (v5 + 32);
    v7[1] = (v2 / 2);
    v6 = v5;
    sub_1AF88139C(v7, v8, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF88128C(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 != a2)
  {
    v4 = *a4 + 112 * a3 - 112;
    v5 = result - a3;
    do
    {
      v6 = v5;
      v7 = v4;
      do
      {
        v8 = *(v7 + 112);
        v9 = *(v7 + 128);
        v10 = *v7;
        if (v9)
        {
          result = 0;
        }

        else
        {
          result = *(v7 + 112);
        }

        if (*(v7 + 16))
        {
          v10 = 0;
        }

        if (result >= v10)
        {
          break;
        }

        v11 = *(v7 + 120);
        v19 = *(v7 + 176);
        v20 = *(v7 + 192);
        v21 = *(v7 + 208);
        v17 = *(v7 + 144);
        v18 = *(v7 + 160);
        v12 = *(v7 + 80);
        *(v7 + 176) = *(v7 + 64);
        *(v7 + 192) = v12;
        *(v7 + 208) = *(v7 + 96);
        v13 = *(v7 + 16);
        *(v7 + 112) = *v7;
        *(v7 + 128) = v13;
        v14 = *(v7 + 48);
        *(v7 + 144) = *(v7 + 32);
        *(v7 + 160) = v14;
        *&v16[31] = v18;
        *&v16[47] = v19;
        *&v16[63] = v20;
        v16[79] = v21;
        *&v16[15] = v17;
        *v7 = v8;
        *(v7 + 8) = v11;
        *(v7 + 16) = v9;
        *(v7 + 17) = *v16;
        *(v7 + 81) = *&v16[64];
        *(v7 + 65) = *&v16[48];
        *(v7 + 49) = *&v16[32];
        *(v7 + 33) = *&v16[16];
        v7 -= 112;
      }

      while (!__CFADD__(v6++, 1));
      ++a3;
      v4 += 112;
      --v5;
    }

    while (a3 != a2);
  }

  return result;
}

uint64_t sub_1AF88139C(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v66 = *a1;
    v8 = MEMORY[0x1E69E7CC0];
    v65 = a4;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3 + 112 * v7;
        v11 = 112 * v9;
        v12 = *a3 + 112 * v9;
        if (*(v10 + 16))
        {
          v13 = 0;
        }

        else
        {
          v13 = *v10;
        }

        if (*(v12 + 16))
        {
          v14 = 0;
        }

        else
        {
          v14 = *v12;
        }

        v15 = v9 + 2;
        v16 = (v12 + 240);
        while (v6 != v15)
        {
          v17 = *(v16 - 2);
          if (*v16)
          {
            v17 = 0;
          }

          if (*(v16 - 112))
          {
            v18 = 0;
          }

          else
          {
            v18 = *(v16 - 16);
          }

          ++v15;
          v16 += 112;
          if (v13 < v14 == v17 >= v18)
          {
            v7 = v15 - 1;
            if (v13 >= v14)
            {
              goto LABEL_28;
            }

            goto LABEL_22;
          }
        }

        v7 = v6;
        if (v13 >= v14)
        {
          goto LABEL_28;
        }

LABEL_22:
        if (v9 < v7)
        {
          v19 = 112 * v7 - 112;
          v20 = v7;
          v63 = v9;
          do
          {
            if (v9 != --v20)
            {
              v21 = (*a3 + v11);
              v22 = (*a3 + v19);
              *&v68[64] = v21[4];
              v69 = v21[5];
              v70 = *(v21 + 96);
              *v68 = *v21;
              *&v68[16] = v21[1];
              *&v68[32] = v21[2];
              *&v68[48] = v21[3];
              memmove(v21, v22, 0x70uLL);
              v22[4] = *&v68[64];
              v22[5] = v69;
              *(v22 + 96) = v70;
              *v22 = *v68;
              v22[1] = *&v68[16];
              v22[2] = *&v68[32];
              v22[3] = *&v68[48];
            }

            ++v9;
            v19 -= 112;
            v11 += 112;
          }

          while (v9 < v20);
          v6 = a3[1];
          a4 = v65;
          v9 = v63;
        }
      }

LABEL_28:
      if (v7 < v6 && v7 - v9 < a4)
      {
        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v9 + a4 != v7)
        {
          v42 = *a3 + 112 * v7 - 112;
          v43 = v9 - v7;
          do
          {
            v44 = v43;
            v45 = v42;
            do
            {
              v46 = *(v45 + 112);
              v47 = *(v45 + 128);
              v48 = *v45;
              if (v47)
              {
                v49 = 0;
              }

              else
              {
                v49 = *(v45 + 112);
              }

              if (*(v45 + 16))
              {
                v48 = 0;
              }

              if (v49 >= v48)
              {
                break;
              }

              v50 = *(v45 + 120);
              v73 = *(v45 + 176);
              v74 = *(v45 + 192);
              v75 = *(v45 + 208);
              v71 = *(v45 + 144);
              v72 = *(v45 + 160);
              v51 = *(v45 + 80);
              *(v45 + 176) = *(v45 + 64);
              *(v45 + 192) = v51;
              *(v45 + 208) = *(v45 + 96);
              v52 = *(v45 + 16);
              *(v45 + 112) = *v45;
              *(v45 + 128) = v52;
              v53 = *(v45 + 48);
              *(v45 + 144) = *(v45 + 32);
              *(v45 + 160) = v53;
              *&v68[31] = v72;
              *&v68[47] = v73;
              *&v68[63] = v74;
              v68[79] = v75;
              *&v68[15] = v71;
              *v45 = v46;
              *(v45 + 8) = v50;
              *(v45 + 16) = v47;
              *(v45 + 17) = *v68;
              *(v45 + 81) = *&v68[64];
              *(v45 + 65) = *&v68[48];
              *(v45 + 49) = *&v68[32];
              *(v45 + 33) = *&v68[16];
              v45 -= 112;
            }

            while (!__CFADD__(v44++, 1));
            ++v7;
            v42 += 112;
            --v43;
          }

          while (v7 != v6);
        }

        v7 = v6;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF4209A4(0, *(v8 + 2) + 1, 1, v8);
      }

      v24 = *(v8 + 2);
      v23 = *(v8 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v8 = sub_1AF4209A4(v23 > 1, v24 + 1, 1, v8);
      }

      *(v8 + 2) = v25;
      v26 = v8 + 32;
      v27 = &v8[16 * v24 + 32];
      *v27 = v9;
      *(v27 + 1) = v7;
      if (v24)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      a4 = v65;
      if (v7 >= v6)
      {
        goto LABEL_67;
      }
    }

    while (1)
    {
      v28 = v25 - 1;
      if (v25 >= 4)
      {
        v32 = &v26[16 * v25];
        v33 = *(v32 - 7) - *(v32 - 8);
        v31 = *(v32 - 5) - *(v32 - 6);
        v34 = &v8[16 * v25];
        v29 = *v34;
        v30 = *(v34 + 1);
        if (v31 - v29 + v30 >= v33)
        {
          v37 = v25 - 2;
          v36 = *&v26[16 * v28 + 8] - *&v26[16 * v28];
          goto LABEL_49;
        }
      }

      else
      {
        if (v25 != 3)
        {
          v35 = *&v8[16 * v25 + 8] - *&v8[16 * v25];
          v36 = *&v26[16 * v28 + 8] - *&v26[16 * v28];
LABEL_46:
          if (v36 < v35)
          {
            goto LABEL_3;
          }

          goto LABEL_51;
        }

        v29 = *(v8 + 6);
        v30 = *(v8 + 7);
        v31 = *(v8 + 5) - *(v8 + 4);
      }

      v35 = v30 - v29;
      v36 = *&v26[16 * v28 + 8] - *&v26[16 * v28];
      if (v35 + v36 < v31)
      {
        goto LABEL_46;
      }

      v37 = v25 - 2;
LABEL_49:
      if (v31 < v36)
      {
        v28 = v37;
      }

LABEL_51:
      v38 = &v26[16 * v28];
      v39 = *(v38 - 2);
      v40 = *(v38 + 1);
      sub_1AF881904((*a3 + 112 * v39), (*a3 + 112 * *v38), (*a3 + 112 * v40), v66);
      if (v5)
      {
      }

      *(v38 - 2) = v39;
      *(v38 - 1) = v40;
      v41 = *(v8 + 2);
      v25 = v41 - 1;
      memmove(&v26[16 * v28], v38 + 16, 16 * (v41 - 1 - v28));
      *(v8 + 2) = v41 - 1;
      if (v41 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_67:
  v67 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AF650C88(v8);
  }

  v55 = v8 + 16;
  v56 = *(v8 + 2);
  if (v56 >= 2)
  {
    do
    {
      v57 = &v8[16 * v56];
      v58 = *v57;
      v59 = &v55[2 * v56];
      v60 = v59[1];
      sub_1AF881904((*a3 + 112 * *v57), (*a3 + 112 * *v59), (*a3 + 112 * v60), v67);
      if (v5)
      {
        break;
      }

      *v57 = v58;
      *(v57 + 1) = v60;
      v61 = *v55 - 1;
      memmove(&v55[2 * v56], v59 + 2, 16 * (*v55 - v56));
      *v55 = v61;
      v56 = v61;
    }

    while (v61 > 1);
  }
}

uint64_t sub_1AF881904(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 112;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 112;
  if (v9 < v11)
  {
    v12 = 112 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 112 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      v14 = *v6;
      if (v6[16])
      {
        v14 = 0;
      }

      v15 = v4[16] ? 0 : *v4;
      if (v14 >= v15)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 112;
      if (!v17)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 112;
      if (v4 >= v13 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }
    }

    v16 = v4;
    v17 = v7 == v4;
    v4 += 112;
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_17:
    memmove(v7, v16, 0x70uLL);
    goto LABEL_18;
  }

  v18 = 112 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 112 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 112 && v6 > v7)
  {
    do
    {
      v19 = v6 - 112;
      v5 -= 112;
      v20 = v13;
      while (1)
      {
        v22 = *(v20 - 14);
        v20 -= 112;
        v21 = v22;
        v23 = v5 + 112;
        if (v20[16])
        {
          v21 = 0;
        }

        v24 = *(v6 - 96) ? 0 : *(v6 - 14);
        if (v21 < v24)
        {
          break;
        }

        if (v23 != v13)
        {
          memmove(v5, v20, 0x70uLL);
        }

        v5 -= 112;
        v13 = v20;
        if (v20 <= v4)
        {
          v13 = v20;
          goto LABEL_43;
        }
      }

      if (v23 != v6)
      {
        memmove(v5, v6 - 112, 0x70uLL);
      }

      if (v13 <= v4)
      {
        break;
      }

      v6 -= 112;
    }

    while (v19 > v7);
    v6 = v19;
  }

LABEL_43:
  v25 = 112 * ((v13 - v4) / 112);
  if (v6 != v4 || v6 >= &v4[v25])
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

uint64_t sub_1AF881BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
}

uint64_t sub_1AF881BC0(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v38 = a1;
  v13 = a1 + 72;
  v44 = a5;
  while (v10)
  {
    v41 = a4;
    v19 = v12;
LABEL_13:
    v21 = __clz(__rbit64(v10)) | (v19 << 6);
    v22 = *(*(v38 + 48) + 8 * v21);
    v23 = (*(v38 + 56) + 16 * v21);
    v24 = *v23;
    v25 = v23[1];
    v43[0] = v22;
    v43[1] = v24;
    v43[2] = v25;

    a2(v42, v43);

    v26 = v42[0];
    v39 = v42[1];
    v40 = v42[2];
    v27 = *a5;
    v28 = sub_1AF449CB8(v42[0]);
    v30 = v29;
    v31 = *(v27 + 16) + ((v29 & 1) == 0);
    if (*(v27 + 24) >= v31)
    {
      if ((v41 & 1) == 0)
      {
        sub_1AF844684();
      }
    }

    else
    {
      sub_1AF82C678(v31, v41 & 1);
      v32 = sub_1AF449CB8(v26);
      if ((v30 & 1) != (v33 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

      v28 = v32;
    }

    v10 &= v10 - 1;
    v34 = *v44;
    if (v30)
    {
      v14 = 16 * v28;
      v15 = (v34[7] + v14);
      v17 = *v15;
      v16 = v15[1];

      v18 = (v34[7] + v14);
      *v18 = v17;
      v18[1] = v16;

      a4 = 1;
    }

    else
    {
      a4 = 1;
      v34[(v28 >> 6) + 8] |= 1 << v28;
      *(v34[6] + 8 * v28) = v26;
      v35 = (v34[7] + 16 * v28);
      *v35 = v39;
      v35[1] = v40;
      ++v34[2];
    }

    v12 = v19;
    a5 = v44;
  }

  v20 = v12;
  while (1)
  {
    v19 = v20 + 1;
    if (v20 + 1 >= v11)
    {
      break;
    }

    v10 = *(v13 + 8 * v20++);
    if (v10)
    {
      v41 = a4;
      goto LABEL_13;
    }
  }

  sub_1AF0FBB14();
}

uint64_t sub_1AF881E40()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id sub_1AF881E8C(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 reset];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    do
    {
      v7 = *(v6 + 80);
      v15[4] = *(v6 + 64);
      v15[5] = v7;
      v16 = *(v6 + 96);
      v8 = *(v6 + 16);
      v15[0] = *v6;
      v15[1] = v8;
      v9 = *(v6 + 48);
      v15[2] = *(v6 + 32);
      v15[3] = v9;
      v17 = v15[0];
      v18 = *(v6 + 16);
      sub_1AF881F5C(&v17, v14);
      sub_1AF87E9A0(v15, a2 & 1, v10, v11, v12);
      sub_1AF7D4D70(v15);
      v6 += 112;
      --v5;
    }

    while (v5);
  }

  return v4;
}

uint64_t sub_1AF881F5C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1AF725E8C(*a1, v4, v5);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return a2;
}

uint64_t sub_1AF881FA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF8823DC(0, &qword_1EB63FAE8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8822C0();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v22[0] = 1;
  v11 = sub_1AFDFE6D8();
  v14 = v12;
  if ((v12 & 1) == 0)
  {
    v21 = v11;
    v17 = 0;
    goto LABEL_8;
  }

  v22[0] = 0;
  v15 = sub_1AFDFE698();
  v17 = v16;
  if (!v16)
  {
    v22[0] = 1;
    sub_1AFDFE2C8();
    swift_allocError();
    sub_1AF882314();
    sub_1AFDFE298();
    swift_willThrow();
    (*(v7 + 8))(v10, v6);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v21 = v15;
LABEL_8:
  v29 = 2;
  sub_1AF882388();
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v23 = v14 & 1;
  *&v22[31] = v25;
  *&v22[47] = v26;
  *&v22[63] = v27;
  v22[79] = v28;
  *&v22[15] = v24;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v21;
  *(a2 + 8) = v17;
  *(a2 + 16) = v23;
  v18 = *v22;
  *(a2 + 33) = *&v22[16];
  v19 = *&v22[48];
  *(a2 + 49) = *&v22[32];
  *(a2 + 65) = v19;
  *(a2 + 81) = *&v22[64];
  *(a2 + 17) = v18;
  return result;
}

unint64_t sub_1AF8822C0()
{
  result = qword_1EB63FAF0;
  if (!qword_1EB63FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FAF0);
  }

  return result;
}

unint64_t sub_1AF882314()
{
  result = qword_1EB63FAF8;
  if (!qword_1EB63FAF8)
  {
    sub_1AF8823DC(255, &qword_1EB63FAE8, MEMORY[0x1E69E6F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FAF8);
  }

  return result;
}

unint64_t sub_1AF882388()
{
  result = qword_1ED7220A8;
  if (!qword_1ED7220A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7220A8);
  }

  return result;
}

void sub_1AF8823DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF8822C0();
    v7 = a3(a1, &type metadata for FunctionConstant.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF882440()
{
  result = qword_1EB640170;
  if (!qword_1EB640170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640170);
  }

  return result;
}

char *sub_1AF882494(uint64_t a1)
{
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
LABEL_10:
    v10 = (v6 << 10) | (16 * __clz(__rbit64(v4)));
    v11 = (*(a1 + 48) + v10);
    v12 = v11[1];
    v27 = *v11;
    v13 = (*(a1 + 56) + v10);
    v15 = *v13;
    v14 = v13[1];
    v16 = qword_1EB6371A0;

    if (v16 != -1)
    {
      swift_once();
    }

    v4 &= v4 - 1;
    v17 = qword_1EB6C3270;
    if (*(qword_1EB6C3270 + 16) && (v18 = sub_1AF419914(v27, v12), (v19 & 1) != 0))
    {
      v20 = v18;

      v21 = *(*(v17 + 56) + 8 * v20);
      sub_1AF87D34C(v15, v14, &v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF4228D4(0, *(v7 + 2) + 1, 1, v7);
      }

      v23 = *(v7 + 2);
      v22 = *(v7 + 3);
      if (v23 >= v22 >> 1)
      {
        v7 = sub_1AF4228D4(v22 > 1, v23 + 1, 1, v7);
      }

      v29 = 0;
      v28[79] = v34;
      *&v28[63] = v33;
      *&v28[47] = v32;
      *&v28[31] = v31;
      *&v28[15] = v30;
      *(v7 + 2) = v23 + 1;
      v8 = &v7[112 * v23];
      *(v8 + 4) = v21;
      *(v8 + 5) = 0;
    }

    else
    {
      sub_1AF87D34C(v15, v14, &v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF4228D4(0, *(v7 + 2) + 1, 1, v7);
      }

      v25 = *(v7 + 2);
      v24 = *(v7 + 3);
      if (v25 >= v24 >> 1)
      {
        v7 = sub_1AF4228D4(v24 > 1, v25 + 1, 1, v7);
      }

      v29 = 1;
      v28[79] = v34;
      *&v28[63] = v33;
      *&v28[47] = v32;
      *&v28[31] = v31;
      *&v28[15] = v30;
      *(v7 + 2) = v25 + 1;
      v8 = &v7[112 * v25];
      *(v8 + 4) = v27;
      *(v8 + 5) = v12;
    }

    v8[48] = v29;
    *(v8 + 49) = *v28;
    *(v8 + 113) = *&v28[64];
    *(v8 + 97) = *&v28[48];
    *(v8 + 81) = *&v28[32];
    *(v8 + 65) = *&v28[16];
  }

  while (1)
  {
    v9 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      break;
    }

    v4 = *(a1 + 8 * v6++ + 72);
    if (v4)
    {
      v6 = v9;
      goto LABEL_10;
    }
  }

  return v7;
}

uint64_t sub_1AF88276C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  if (!v2)
  {
    return v3;
  }

  for (i = a1 + 64; ; i += 112)
  {
    v8 = *(i - 32);
    v7 = *(i - 24);
    v25 = *(i - 16);
    v26 = v7;
    v27 = v8;
    if (v25 == 1)
    {
      sub_1AF725E8C(v8, v7, 1);
LABEL_12:

      goto LABEL_14;
    }

    if (qword_1EB633478 != -1)
    {
      swift_once();
    }

    v9 = off_1EB633480;
    if (*(off_1EB633480 + 2))
    {
      v10 = sub_1AF449CB8(v8);
      if (v11)
      {
        v12 = (v9[7] + 16 * v10);
        v8 = *v12;
        v7 = v12[1];
        goto LABEL_12;
      }
    }

    v8 = 0;
    v7 = 0;
LABEL_14:
    v13 = sub_1AF879ACC();
    v24 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_1AF419914(v8, v7);
    v18 = v16;
    v19 = v3[2] + ((v16 & 1) == 0);
    if (v3[3] < v19)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v16)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1AF849704();
      if (v18)
      {
LABEL_20:

        v22 = (v3[7] + 16 * v17);
        *v22 = v13;
        v22[1] = v24;

        sub_1AF4456D0(v27, v26, v25);
        goto LABEL_4;
      }
    }

LABEL_3:
    v3[(v17 >> 6) + 8] |= 1 << v17;
    v5 = (v3[6] + 16 * v17);
    *v5 = v8;
    v5[1] = v7;
    v6 = (v3[7] + 16 * v17);
    *v6 = v13;
    v6[1] = v24;
    sub_1AF4456D0(v27, v26, v25);
    ++v3[2];
LABEL_4:
    if (!--v2)
    {
      return v3;
    }
  }

  sub_1AF8357A0(v19, isUniquelyReferenced_nonNull_native);
  v20 = sub_1AF419914(v8, v7);
  if ((v18 & 1) == (v21 & 1))
  {
    v17 = v20;
    if (v18)
    {
      goto LABEL_20;
    }

    goto LABEL_3;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF8829F0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AF725E8C(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for FunctionConstant.Key(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AF725E8C(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_1AF4456D0(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for FunctionConstant.Key(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_1AF4456D0(v4, v5, v6);
  return a1;
}

unint64_t sub_1AF882AEC()
{
  result = qword_1EB63FB08;
  if (!qword_1EB63FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FB08);
  }

  return result;
}

unint64_t sub_1AF882B44()
{
  result = qword_1EB63FB10;
  if (!qword_1EB63FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FB10);
  }

  return result;
}

unint64_t sub_1AF882B9C()
{
  result = qword_1EB63FB18;
  if (!qword_1EB63FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FB18);
  }

  return result;
}

unint64_t sub_1AF882BF4()
{
  result = qword_1EB63FB20;
  if (!qword_1EB63FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FB20);
  }

  return result;
}

void *initializeWithCopy for FunctionDescriptor(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return a1;
}

void *assignWithCopy for FunctionDescriptor(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[3] = a2[3];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for FunctionDescriptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t sub_1AF882DB8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = v3[2];
  v7 = v4[3];
  if (v7)
  {
    if (v6)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
LABEL_13:
      swift_unknownObjectRetain();
      if (sub_1AF8832C4())
      {
        swift_unknownObjectRelease();
        v21 = [v6 functionConstantsDictionary];
        sub_1AF8834E0();
        v22 = sub_1AFDFCC08();

        v23 = sub_1AF87F104(v22, v4[4]);
      }

      else
      {
        swift_unknownObjectRelease();
        v23 = MEMORY[0x1E69E7CC0];
      }

      v24 = *v4;

      *a3 = v24;
      a3[1] = result;
      a3[2] = v6;
      a3[3] = v7;
      a3[4] = v23;
      return result;
    }

    swift_getObjectType();
    v17 = *v4;
    v16 = v4[1];
    swift_unknownObjectRetain_n();

    v18 = sub_1AFDFCEC8();
    v6 = [v7 newFunctionWithName_];

    if (v6)
    {

      swift_unknownObjectRelease_n();
      goto LABEL_13;
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v34 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF38670);
    MEMORY[0x1B2718AE0](v17, v16);
    MEMORY[0x1B2718AE0](0x7262696C206E6920, 0xEC00000020797261);
    v35 = v7;
    sub_1AFDFEDD8();
    v26 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v30 = v26;
      swift_once();
      v26 = v30;
    }

    v33 = 0;
    sub_1AF0D4F18(v26, &v33, 0, 0xE000000000000000);

    sub_1AF74554C();
    swift_allocError();
    *v27 = v17;
    *(v27 + 8) = v16;
    *(v27 + 16) = v7;
    *(v27 + 24) = 0;
    swift_willThrow();
    return swift_unknownObjectRelease_n();
  }

  else
  {
    v9 = a1;
    v11 = *v4;
    v10 = v4[1];
    if (a2)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = sub_1AFDFCEC8();
      v13 = v10;
      v14 = v11;
      v15 = [a2 newFunctionWithName_];

      swift_unknownObjectRelease();
      if (v15)
      {
        v6 = v15;
        v7 = a2;
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
      v11 = v14;
      v10 = v13;
      v9 = a1;
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v19 = sub_1AFDFCEC8();
    v20 = [v9 newFunctionWithName_];

    swift_unknownObjectRelease();
    if (v20)
    {

      swift_unknownObjectRetain();
      v6 = v20;
      v7 = v9;
      goto LABEL_13;
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    sub_1AFDFE218();

    v34 = 0x80000001AFF38670;
    MEMORY[0x1B2718AE0](v11, v10);
    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF38690);
    v28 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v31 = v28;
      swift_once();
      v28 = v31;
    }

    v33 = 0;
    sub_1AF0D4F18(v28, &v33, 0xD000000000000011, 0x80000001AFF38670);

    sub_1AF74554C();
    swift_allocError();
    *v29 = v11;
    *(v29 + 8) = v10;
    *(v29 + 16) = v9;
    *(v29 + 24) = 0;
    swift_willThrow();
    return swift_unknownObjectRetain();
  }
}

BOOL sub_1AF8832C4()
{
  v1 = [v0 functionConstantsDictionary];
  sub_1AF8834E0();
  v2 = sub_1AFDFCC08();

  v3 = *(v2 + 16);

  return v3 != 0;
}

uint64_t sub_1AF883354()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1AFDFF288();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 64;
    do
    {
      v5 = *(v4 - 32);
      v6 = *(v4 - 24);
      v7 = *(v4 - 16);
      if (v7 == 1)
      {
        MEMORY[0x1B271ACB0](1);

        sub_1AFDFD038();
      }

      else
      {
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](v5);
      }

      sub_1AF87A0E4();
      sub_1AF4456D0(v5, v6, v7);
      v4 += 112;
      --v3;
    }

    while (v3);
  }

  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF88348C()
{
  result = qword_1EB63FB30;
  if (!qword_1EB63FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FB30);
  }

  return result;
}

unint64_t sub_1AF8834E0()
{
  result = qword_1ED726B70;
  if (!qword_1ED726B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED726B70);
  }

  return result;
}

uint64_t sub_1AF88352C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AFDFD038();
  v7 = *(a5 + 16);
  MEMORY[0x1B271ACB0](v7);
  if (v7)
  {
    v8 = a5 + 64;
    do
    {
      v9 = *(v8 - 32);
      v10 = *(v8 - 24);
      v11 = *(v8 - 16);
      if (v11 == 1)
      {
        MEMORY[0x1B271ACB0](1);

        sub_1AFDFD038();
      }

      else
      {
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](v9);
      }

      sub_1AF87A0E4();
      sub_1AF4456D0(v9, v10, v11);
      v8 += 112;
      --v7;
    }

    while (v7);
  }

  return MEMORY[0x1B271ACB0](a4);
}

uint64_t sub_1AF88362C(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, float32x4_t *a8)
{
  if ((a1 != a5 || a2 != a6) && (sub_1AFDFEE28() & 1) == 0)
  {
    return 0;
  }

  if (!a3)
  {
    if (!a7)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!a7 || a3 != a7)
  {
    return 0;
  }

LABEL_7:

  return sub_1AFB7B210(a4, a8);
}