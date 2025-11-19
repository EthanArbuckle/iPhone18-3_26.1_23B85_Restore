uint64_t sub_22739B294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF88, &qword_227682DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22739B304(uint64_t a1)
{
  result = sub_22739B35C(&qword_28139B618, MEMORY[0x277D526D0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22739B35C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22739B3A4(void *a1)
{
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227662750();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666810();
  v12 = sub_22766BFD0();

  [a1 setIdentifier_];

  v13 = sub_227666870();
  v14 = 0x7FFFFFFFLL;
  if (v13 < 0x7FFFFFFF)
  {
    v14 = v13;
  }

  if (v14 <= 0xFFFFFFFF80000000)
  {
    v15 = 0xFFFFFFFF80000000;
  }

  else
  {
    v15 = v14;
  }

  [a1 setVersion_];
  [a1 setCanFreeDeviceSlot_];
  sub_227666840();
  v16 = sub_22766BFD0();

  [a1 setUserIdentifier_];

  sub_227666860();
  v17 = sub_22766BFD0();

  [a1 setWorkoutIdentifier_];

  sub_227666830();
  v18 = sub_22766BFD0();

  [a1 setSlotIdentifier_];

  sub_227666890();
  v19 = sub_2276626A0();
  (*(v8 + 8))(v11, v7);
  [a1 setRenewDate_];

  sub_227666820();
  sub_227662390();
  (*(v3 + 8))(v6, v2);
  v20 = sub_22766BFD0();

  [a1 setMasterPlaylist_];
}

unint64_t sub_22739B6AC()
{
  result = qword_27D7BCF90;
  if (!qword_27D7BCF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCF90);
  }

  return result;
}

unint64_t sub_22739B700(uint64_t a1)
{
  result = sub_22739B728();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22739B728()
{
  result = qword_27D7BCF98;
  if (!qword_27D7BCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCF98);
  }

  return result;
}

uint64_t sub_22739B77C()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EEF0(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1EEF0((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_22739B884@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  v23 = a2;
  v22 = a3;
  v7 = sub_22766CB90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - v11;
  v13 = [v5 recordID];
  v14 = [v13 recordName];

  sub_22766C000();
  v15 = *(type metadata accessor for SyncEncryptionKey() + 20);
  sub_22739C5E8();
  if (v4)
  {
  }

  v17 = v8;
  v18 = v22;

  sub_22766D160();
  v19 = *(a1 - 8);
  if ((*(v19 + 48))(v12, 1, a1) != 1)
  {
    return (*(v19 + 32))(v18, v12, a1);
  }

  (*(v17 + 8))(v12, v7);
  sub_226F1893C();
  swift_allocError();
  *v20 = 16;
  return swift_willThrow();
}

uint64_t sub_22739BAC0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B4C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v27 - v14;
  if (sub_22766B4B0() == 256)
  {
    v28 = sub_2274EE270(0xD000000000000013, 0x800000022769F460);
    v29 = v16;
    sub_22766B5A0();
    sub_22739D19C(&qword_2813991E0, MEMORY[0x277CC5540]);
    v27[0] = a2;
    sub_22739C52C();
    sub_22766B570();
    sub_226EDC420(v28, v29);
    v28 = sub_2274EE270(0xD000000000000015, 0x800000022769F480);
    v29 = v17;
    sub_22766B570();
    sub_226EDC420(v28, v29);
    v18 = v27[1];
    sub_22766B470();
    v19 = v28;
    v20 = v29;
    (*(v9 + 16))(v30, v15, v8);
    v28 = v19;
    v29 = v20;
    sub_22766B520();
    v21 = *(v9 + 8);
    if (v18)
    {
      v21(v30, v8);
    }

    v21(v12, v8);
    return (v21)(v15, v8);
  }

  else
  {
    sub_22766A6B0();
    v22 = sub_22766B380();
    v23 = sub_22766C890();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_226E8E000, v22, v23, "Invalid Encryption Key: Not a 256 bit key.", v24, 2u);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    sub_226F1893C();
    swift_allocError();
    *v25 = 7;
    return swift_willThrow();
  }
}

uint64_t sub_22739BEAC(char *a1, uint64_t a2, unint64_t a3)
{
  v70 = a1;
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v68 = v5;
  v69 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFA0, &unk_227682F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v57 - v13;
  v14 = sub_22766B560();
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  MEMORY[0x28223BE20](v14);
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22766B530();
  v65 = *(v17 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22766B4C0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

  v26 = sub_2274EE270(a2, a3);
  v28 = v27;
  v29 = v73;
  sub_22739BAC0(v25, v20);
  if (v29)
  {
    sub_226EDC420(v26, v28);
  }

  else
  {
    v30 = v22;
    v73 = v21;
    v59 = v26;
    v60 = v28;
    v71 = v26;
    v72 = v28;
    v31 = v65;
    v32 = *(v65 + 16);
    v33 = v67;
    v70 = v20;
    v32(v67, v20, v17);
    v34 = v31;
    (*(v31 + 56))(v33, 0, 1, v17);
    sub_22739C52C();
    v35 = v66;
    sub_22766B500();
    v58 = v17;
    v36 = v25;
    sub_22739C580(v33);
    v37 = sub_22766B540();
    v39 = v38;
    (*(v62 + 8))(v35, v63);
    v41 = v68;
    v40 = v69;
    if (v39 >> 60 == 15)
    {
      v42 = v64;
      sub_22766A6B0();
      v43 = sub_22766B380();
      v44 = sub_22766C890();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_226E8E000, v43, v44, "Couldn't encrypt string.", v45, 2u);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      v46 = *(v40 + 8);
      v26 = v40 + 8;
      v46(v42, v41);
      sub_226F1893C();
      swift_allocError();
      *v47 = 8;
      swift_willThrow();
      sub_226EDC420(v59, v60);
      (*(v34 + 8))(v70, v58);
      (*(v30 + 8))(v36, v73);
    }

    else
    {
      v26 = sub_227662570();
      if (sub_22766C110() < 256)
      {
        sub_226FB1424(v37, v39);
        sub_226EDC420(v59, v60);
        (*(v34 + 8))(v70, v58);
        (*(v30 + 8))(v36, v73);
      }

      else
      {
        v66 = v37;
        v67 = v36;

        v49 = v61;
        sub_22766A6B0();
        v50 = sub_22766B380();
        v26 = sub_22766C8A0();
        v51 = os_log_type_enabled(v50, v26);
        v52 = v73;
        v53 = v70;
        if (v51)
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_226E8E000, v50, v26, "Resulting identifier would be too long.", v54, 2u);
          v55 = v54;
          v49 = v61;
          MEMORY[0x22AA9A450](v55, -1, -1);
        }

        (*(v69 + 8))(v49, v41);
        sub_226F1893C();
        swift_allocError();
        *v56 = 8;
        swift_willThrow();
        sub_226FB1424(v66, v39);
        sub_226EDC420(v59, v60);
        (*(v34 + 8))(v53, v58);
        (*(v30 + 8))(v67, v52);
      }
    }
  }

  return v26;
}

unint64_t sub_22739C52C()
{
  result = qword_28139BDC8;
  if (!qword_28139BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BDC8);
  }

  return result;
}

uint64_t sub_22739C580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFA0, &unk_227682F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSObject *sub_22739C5E8()
{
  v71 = sub_22766B390();
  v67 = *(v71 - 8);
  v0 = *(v67 + 64);
  MEMORY[0x28223BE20](v71);
  v2 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v59 = &v54 - v4;
  MEMORY[0x28223BE20](v5);
  v58 = &v54 - v6;
  MEMORY[0x28223BE20](v7);
  v56 = &v54 - v8;
  v9 = sub_22766C050();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_22766B560();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22766B530();
  v61 = *(v17 - 8);
  v62 = v17;
  v18 = *(v61 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22766B4C0();
  v63 = *(v21 - 8);
  v64 = v21;
  v22 = *(v63 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_227662510();
  if (v26 >> 60 != 15)
  {
    v65 = v25;
    v60 = v26;
    v30 = v66;
    sub_22739BAC0(v24, v20);
    if (v30)
    {
      sub_226FB1424(v65, v60);
      return v12;
    }

    v66 = v24;
    v31 = v65;
    v32 = v60;
    sub_226F5E0B4(v65, v60);
    sub_2273FC4D8(12, v31, v32, v70);
    v33 = v70[0];
    v34 = v70[1];
    v55 = v20;
    sub_22766B510();
    v54 = 0;
    v35 = v68;
    v36 = v69;
    LOBYTE(v31) = sub_227130B5C(v33, v34, v68, v69);
    sub_226EDC420(v33, v34);
    sub_226EDC420(v35, v36);
    if (v31)
    {
      v37 = v65;
      sub_226F5E0B4(v65, v32);
      v38 = v54;
      sub_22739CE8C(v37, v32);
      if (!v38)
      {
        v45 = sub_22766B4F0();
        v47 = v46;
        (*(v57 + 8))(v16, v13);
        sub_22766C040();
        v48 = sub_22766C020();
        if (v49)
        {
          v12 = v48;
          sub_226EDC420(v45, v47);
          sub_226FB1424(v65, v60);
          (*(v61 + 8))(v55, v62);
          (*(v63 + 8))(v66, v64);
          return v12;
        }

        v50 = v56;
        sub_22766A6B0();
        v12 = sub_22766B380();
        v51 = sub_22766C890();
        if (os_log_type_enabled(v12, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_226E8E000, v12, v51, "Decrypted data isn't valid utf8", v52, 2u);
          MEMORY[0x22AA9A450](v52, -1, -1);
        }

        (*(v67 + 8))(v50, v71);
        sub_226F1893C();
        swift_allocError();
        *v53 = 8;
        swift_willThrow();
        sub_226EDC420(v45, v47);
        goto LABEL_17;
      }

      v39 = v58;
      sub_22766A6B0();
      v12 = sub_22766B380();
      v40 = sub_22766C890();
      if (os_log_type_enabled(v12, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "Couldn't decrypt data.";
        goto LABEL_15;
      }
    }

    else
    {
      v39 = v59;
      sub_22766A6B0();
      v12 = sub_22766B380();
      v40 = sub_22766C890();
      if (os_log_type_enabled(v12, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "Data nonce doesn't match key nonce.";
LABEL_15:
        _os_log_impl(&dword_226E8E000, v12, v40, v42, v41, 2u);
        MEMORY[0x22AA9A450](v41, -1, -1);
      }
    }

    (*(v67 + 8))(v39, v71);
    sub_226F1893C();
    swift_allocError();
    *v43 = 8;
    swift_willThrow();
LABEL_17:
    sub_226FB1424(v65, v60);
    (*(v61 + 8))(v55, v62);
    (*(v63 + 8))(v66, v64);
    return v12;
  }

  sub_22766A6B0();
  v12 = sub_22766B380();
  v27 = sub_22766C890();
  if (os_log_type_enabled(v12, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_226E8E000, v12, v27, "Invalid Identifier: Not in base64", v28, 2u);
    MEMORY[0x22AA9A450](v28, -1, -1);
  }

  (*(v67 + 8))(v2, v71);
  sub_226F1893C();
  swift_allocError();
  *v29 = 8;
  swift_willThrow();
  return v12;
}

uint64_t sub_22739CDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_0(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_2274F1248(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_2274F13A0(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_2274F141C(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_22739CE8C(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x277CC9318];
      v30[4] = MEMORY[0x277CC9300];
      v30[0] = a1;
      v30[1] = a2;
      v10 = __swift_project_boxed_opaque_existential_0(v30, MEMORY[0x277CC9318]);
      v11 = *v10;
      v12 = v10[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          v15 = v28;
          v14 = v28;
          goto LABEL_33;
        }

        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        v18 = sub_227662060();
        if (v18)
        {
          v19 = sub_227662090();
          v11 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v18 += v11;
        }

        v5 = __OFSUB__(v17, v16);
        v20 = v17 - v16;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v28[0] = *v10;
        LOWORD(v28[1]) = v12;
        BYTE2(v28[1]) = BYTE2(v12);
        BYTE3(v28[1]) = BYTE3(v12);
        BYTE4(v28[1]) = BYTE4(v12);
        BYTE5(v28[1]) = BYTE5(v12);
        v14 = v28 + BYTE6(v12);
        v15 = v28;
LABEL_33:
        sub_2274F0FC8(v15, v14, &v29);
        __swift_destroy_boxed_opaque_existential_0(v30);
        result = sub_22766B550();
        goto LABEL_34;
      }

      v21 = v11;
      v22 = v11 >> 32;
      v20 = v22 - v21;
      if (v22 >= v21)
      {
        v18 = sub_227662060();
        if (!v18)
        {
LABEL_25:
          v24 = sub_227662080();
          if (v24 >= v20)
          {
            v25 = v20;
          }

          else
          {
            v25 = v24;
          }

          v26 = (v25 + v18);
          if (v18)
          {
            v14 = v26;
          }

          else
          {
            v14 = 0;
          }

          v15 = v18;
          goto LABEL_33;
        }

        v23 = sub_227662090();
        if (!__OFSUB__(v21, v23))
        {
          v18 += v21 - v23;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_226EDC420(a1, a2);
  v7 = sub_22766B440();
  sub_22739D19C(&qword_27D7BCFA8, MEMORY[0x277CC51E8]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  result = swift_willThrow();
LABEL_34:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22739D19C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22739D1FC()
{
  v1 = v0;
  v2 = sub_227669A70();
  v68 = *(v2 - 8);
  v3 = v68;
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = v1[2];
  v62 = v1[4];
  ObjectType = swift_getObjectType();
  v69 = v12;
  v14 = *MEMORY[0x277D4E908];
  v65 = *(v3 + 104);
  v65(v6, v14, v2);
  swift_allocObject();
  v59 = v1;
  swift_weakInit();
  v61 = sub_227666C80();
  swift_unknownObjectRetain_n();
  v63 = ObjectType;
  sub_227669E90();

  v15 = v68 + 8;
  v66 = *(v68 + 8);
  v66(v6, v2);
  v68 = v15;
  swift_unknownObjectRelease();
  v69 = v12;
  v16 = v65;
  v65(v6, *MEMORY[0x277D4E8A0], v2);
  swift_allocObject();
  swift_weakInit();
  v60 = sub_2276666A0();
  swift_unknownObjectRetain();
  sub_227669E90();

  v66(v6, v2);
  swift_unknownObjectRelease();
  v69 = v12;
  v16(v6, *MEMORY[0x277D4E8D8], v2);
  v64 = v3 + 104;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v17 = v2;
  v67 = v2;
  v18 = v2;
  v19 = v66;
  v66(v6, v18);
  swift_unknownObjectRelease();
  v69 = v12;
  v16(v6, *MEMORY[0x277D4E888], v17);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v19(v6, v67);
  swift_unknownObjectRelease();
  v69 = v12;
  v58 = *MEMORY[0x277D4E9C0];
  (v16)(v6);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v20 = v66;
  v66(v6, v67);
  swift_unknownObjectRelease();
  v69 = v12;
  v57 = *MEMORY[0x277D4E938];
  v21 = v65;
  (v65)(v6);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v22 = v67;
  v20(v6, v67);
  swift_unknownObjectRelease();
  v69 = v12;
  v21(v6, *MEMORY[0x277D4EA30], v22);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB0, &qword_227682F60);
  sub_22739F1C4();
  sub_22739F248();
  sub_227669E90();

  v23 = v22;
  v24 = v66;
  v66(v6, v23);
  swift_unknownObjectRelease();
  v69 = v12;
  v56 = *MEMORY[0x277D4E8E0];
  v25 = v65;
  (v65)(v6);
  swift_allocObject();
  swift_weakInit();
  v55 = sub_227666710();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v26 = v67;
  v24(v6, v67);
  swift_unknownObjectRelease();
  v69 = v12;
  v54 = *MEMORY[0x277D4EC88];
  v27 = v26;
  v25(v6);
  swift_allocObject();
  v28 = v59;
  swift_weakInit();
  v53 = sub_227668A00();
  sub_227669EE0();

  v29 = v66;
  v66(v6, v27);
  swift_unknownObjectRelease();
  v69 = v12;
  v30 = v27;
  v31 = v65;
  v65(v6, *MEMORY[0x277D4EC68], v30);
  swift_allocObject();
  swift_weakInit();
  sub_227669ED0();

  v32 = v67;
  v29(v6, v67);
  swift_unknownObjectRelease();
  v33 = v28[11];
  v34 = v28[13];
  v63 = swift_getObjectType();
  v69 = v33;
  v31(v6, v58, v32);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v35 = v34;
  sub_227669EA0();

  v37 = v66;
  v36 = v67;
  v66(v6, v67);
  swift_unknownObjectRelease();
  v69 = v33;
  v31(v6, v57, v36);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v62 = v35;
  sub_227669EA0();

  v38 = v67;
  v37(v6, v67);
  swift_unknownObjectRelease();
  v69 = v33;
  v65(v6, v56, v38);
  swift_allocObject();
  swift_weakInit();
  sub_227669EA0();

  v39 = v67;
  v37(v6, v67);
  swift_unknownObjectRelease();
  v69 = v33;
  v65(v6, v54, v39);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v37(v6, v39);
  swift_unknownObjectRelease();
  v40 = __swift_project_boxed_opaque_existential_0(v28 + 6, v28[9]);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = *v40;
  sub_226F66214(47, sub_22739F544, v41);

  v43 = __swift_project_boxed_opaque_existential_0(v28 + 6, v28[9]);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = *v43;
  sub_226F66024(48, sub_22739F548, v44);

  v46 = __swift_project_boxed_opaque_existential_0(v28 + 6, v28[9]);
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = *v46;
  sub_226F66024(9, sub_22739F528, v47);

  v49 = __swift_project_boxed_opaque_existential_0(v28 + 6, v28[9]);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = *v49;
  sub_226F66024(10, sub_22739F54C, v50);
}

uint64_t sub_22739E058@<X0>(unsigned __int8 *a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 40);

    a2(v9);

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return (*(*(v13 - 8) + 56))(a5, v12, 1, v13);
}

uint64_t sub_22739E150@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 40);

    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = __swift_project_boxed_opaque_existential_0((v8 + 16), *(v8 + 40));
    v10 = *(*v9 + 56);
    v11 = *(*v9 + 64);
    __swift_project_boxed_opaque_existential_0((*v9 + 32), v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB0, &qword_227682F60);
    sub_226ECF5D8(sub_2273622C4, 0, v10, v12, v11, a1);

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD550, &unk_22767E3F0);
  return (*(*(v14 - 8) + 56))(a1, v13, 1, v14);
}

uint64_t sub_22739E35C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22739E37C, 0, 0);
}

uint64_t sub_22739E37C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[7] = *(Strong + 40);

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2270026B8;
    v4 = v0[5];

    return sub_226FC1684(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22739E484(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22739E4A4, 0, 0);
}

uint64_t sub_22739E4A4()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[7] = *(Strong + 40);

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_22739E5EC;
    v4 = v0[5];

    return sub_226FC1D60(v4);
  }

  else
  {
    v6 = v0[5];
    v7 = sub_227668A00();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22739E5EC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_22700162C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_22739E708;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22739E708()
{
  v1 = *(v0 + 40);
  v2 = sub_227668A00();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22739E7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 40);

    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *__swift_project_boxed_opaque_existential_0((v10 + 16), *(v10 + 40));
    sub_227360EBC(a1, a2);

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v13 - 8) + 56))(a2, v12, 1, v13);
}

uint64_t sub_22739E974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 40);

    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *__swift_project_boxed_opaque_existential_0((v10 + 16), *(v10 + 40));
    sub_2273617E0(a1, a2);

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v13 - 8) + 56))(a2, v12, 1, v13);
}

uint64_t sub_22739EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 40);

    sub_226FC0E44(a1, a2);

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

uint64_t sub_22739EC24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 40);

    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *__swift_project_boxed_opaque_existential_0((v8 + 16), *(v8 + 40));
    sub_227360A74(a1);

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

uint64_t sub_22739EDE0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 40);

    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *__swift_project_boxed_opaque_existential_0((v8 + 16), *(v8 + 40));
    sub_226EDD55C(a1);

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

uint64_t sub_22739EF9C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);

    sub_226EDE0C0(a1);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
}

uint64_t sub_22739F074()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_0(v0 + 6);
  v3 = v0[11];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_22739F1C4()
{
  result = qword_281398D20;
  if (!qword_281398D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCFB0, &qword_227682F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D20);
  }

  return result;
}

unint64_t sub_22739F248()
{
  result = qword_281398D18;
  if (!qword_281398D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCFB0, &qword_227682F60);
    sub_22739F2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D18);
  }

  return result;
}

unint64_t sub_22739F2CC()
{
  result = qword_28139B640;
  if (!qword_28139B640)
  {
    sub_227666710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B640);
  }

  return result;
}

uint64_t sub_22739F324(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22739E35C(a1, v1);
}

uint64_t sub_22739F3BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22739E484(a1, v1);
}

uint64_t sub_22739F490(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22739E35C(a1, v1);
}

uint64_t sub_22739F55C(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v27 = a2;
  v29 = MEMORY[0x277D84F90];
  v28 = *(a1 + 16);
  a2(0, v3, 0);
  v4 = v29;
  v6 = a1 + 56;
  v7 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v9 = v28;
  v10 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v12 = result >> 6;
    v13 = 1 << result;
    if ((*(v6 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(*(a1 + 48) + result);
    v15 = *(a1 + 36);
    v17 = *(v29 + 16);
    v16 = *(v29 + 24);
    if (v17 >= v16 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      v27(v16 > 1, v17 + 1, 1);
      v9 = v28;
      v15 = v25;
      result = v26;
    }

    *(v29 + 16) = v17 + 1;
    *(v29 + v17 + 32) = v14;
    v11 = 1 << *(a1 + 32);
    if (result >= v11)
    {
      goto LABEL_22;
    }

    v18 = *(v6 + 8 * v12);
    if ((v18 & v13) == 0)
    {
      goto LABEL_23;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v11 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v12 << 6;
      v21 = v12 + 1;
      v22 = (a1 + 64 + 8 * v12);
      while (v21 < (v11 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_226EB526C(result, v15, 0);
          v9 = v28;
          v11 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_226EB526C(result, v15, 0);
      v9 = v28;
    }

LABEL_4:
    ++v10;
    result = v11;
    if (v10 == v9)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22739F788(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(BOOL, unint64_t, uint64_t), void (*a5)(uint64_t))
{
  v55 = a5;
  v54 = a2(0);
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v41 - v11;
  v52 = a3(0);
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v52);
  v15 = &v41 - v14;
  v16 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v50 = v15;
    v42 = a4;
    v43 = v5;
    v59 = MEMORY[0x277D84F90];
    a4(0, v16, 0);
    v18 = -1 << *(a1 + 32);
    v57 = a1 + 56;
    v58 = v59;
    result = sub_22766CC90();
    v19 = result;
    v20 = 0;
    v48 = v9 + 8;
    v49 = v9 + 16;
    v51 = v12;
    v46 = v9;
    v47 = v12 + 32;
    v44 = a1 + 64;
    v45 = v16;
    v21 = v9;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(a1 + 32))
    {
      v24 = v19 >> 6;
      if ((*(v57 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_22;
      }

      v56 = *(a1 + 36);
      v26 = v53;
      v25 = v54;
      v27 = (*(v21 + 16))(v53, *(a1 + 48) + *(v21 + 72) * v19, v54);
      v28 = a1;
      v29 = v50;
      v55(v27);
      (*(v21 + 8))(v26, v25);
      v30 = v58;
      v59 = v58;
      v32 = *(v58 + 16);
      v31 = *(v58 + 24);
      if (v32 >= v31 >> 1)
      {
        v42(v31 > 1, v32 + 1, 1);
        v30 = v59;
      }

      *(v30 + 16) = v32 + 1;
      v33 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v58 = v30;
      result = (*(v51 + 32))(v30 + v33 + *(v51 + 72) * v32, v29, v52);
      v22 = 1 << *(v28 + 32);
      if (v19 >= v22)
      {
        goto LABEL_23;
      }

      v34 = *(v57 + 8 * v24);
      if ((v34 & (1 << v19)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v28;
      if (v56 != *(v28 + 36))
      {
        goto LABEL_25;
      }

      v35 = v34 & (-2 << (v19 & 0x3F));
      if (v35)
      {
        v22 = __clz(__rbit64(v35)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v23 = v45;
      }

      else
      {
        v36 = v24 << 6;
        v37 = v24 + 1;
        v23 = v45;
        v38 = (v44 + 8 * v24);
        while (v37 < (v22 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_226EB526C(v19, v56, 0);
            v22 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v19, v56, 0);
      }

LABEL_4:
      ++v20;
      v19 = v22;
      v21 = v46;
      if (v20 == v23)
      {
        return v58;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22739FB64@<X0>(uint64_t a1@<X8>)
{
  v22[7] = a1;
  v1 = sub_227662CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v22 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v22[6] = sub_227667060();
  sub_227667040();
  sub_227667070();
  v14 = sub_227667080();
  v15 = sub_22739F788(v14, MEMORY[0x277D533E0], MEMORY[0x277D494A8], sub_226F20428, sub_226F76214);

  v22[5] = sub_226F465A8(v15);

  sub_2276670C0();
  v22[4] = sub_2276670A0();
  v22[3] = sub_2276670D0();
  v22[2] = sub_227667030();
  v22[1] = sub_227667090();
  v24 = sub_2276670F0();
  v25 = v16 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9298, &unk_227676680);
  sub_227663B00();
  v17 = MEMORY[0x277D494D8];
  if (v23 > 1u)
  {
    if (v23 != 2)
    {
      (*(v2 + 104))(v11, *MEMORY[0x277D494D8], v1);
      goto LABEL_9;
    }

    v17 = MEMORY[0x277D494E8];
  }

  else if (!v23)
  {
    v17 = MEMORY[0x277D494E0];
  }

  (*(v2 + 104))(v6, *v17, v1);
  v18 = *(v2 + 32);
  v18(v9, v6, v1);
  v18(v11, v9, v1);
LABEL_9:
  v19 = sub_2276670E0();
  v20 = sub_22739F55C(v19, sub_226F1F808);

  sub_226F46744(v20);

  return sub_227662DD0();
}

uint64_t sub_22739FED0@<X0>(uint64_t a1@<X8>)
{
  v17[4] = a1;
  v1 = sub_227662CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v17[3] = sub_227662DE0();
  sub_227662DC0();
  sub_227662DF0();
  v11 = sub_227662E00();
  v12 = sub_22739F788(v11, MEMORY[0x277D494A8], MEMORY[0x277D533E0], sub_226F203C8, sub_227521184);

  v17[2] = sub_226F46364(v12);

  sub_227662E30();
  v17[1] = sub_227662E20();
  v17[0] = sub_227662E60();
  sub_227662DB0();
  sub_227662E10();
  sub_227662E80();
  (*(v2 + 32))(v5, v8, v1);
  v13 = (*(v2 + 88))(v5, v1);
  if (v13 != *MEMORY[0x277D494D8] && v13 != *MEMORY[0x277D494E0] && v13 != *MEMORY[0x277D494E8])
  {
    (*(v2 + 8))(v5, v1);
  }

  v14 = sub_227662E70();
  v15 = sub_22739F55C(v14, sub_226F1FB48);

  sub_226F43718(v15);

  return sub_227667050();
}

uint64_t sub_2273A01F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  if ((LODWORD(a4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v6 = *(a2 + 16);
    v9 = floorf(v6() * a4);
    result = (v6)(a1, a2);
    if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v9 > -9.2234e18)
    {
      if (v9 < 9.2234e18)
      {
        sub_227663CB0();
        v5 = 0;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  v5 = 1;
LABEL_7:
  v11 = sub_227663CD0();
  v12 = *(*(v11 - 8) + 56);

  return v12(a3, v5, 1, v11);
}

id sub_2273A033C(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A0544(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFC0, &qword_227683170);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A074C(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A0954(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFD8 qword_2276832F0))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A0B5C(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B8EB0 &unk_2276833A0))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A0D64(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EF8 qword_2276830E0))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A0F6C(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF70 qword_227682A88))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A1174(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9068 &unk_227683240))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A137C(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C50 qword_2276759C0))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A1584(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFC0, &qword_227683170);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC528 &qword_22767DED0))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A178C(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB8 &qword_227683030))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A1994(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDE8 &qword_2276835A0))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A1B9C(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFE0 qword_2276833D8))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A1DA4(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFE8 &qword_227683420))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A1FAC(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F30 qword_227683060))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A21B4(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC388 &qword_22767D6B0))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A23BC(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC378 &unk_227683640))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A25C4(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFC0, &qword_227683170);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFC8 qword_227683178))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A27CC(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC368 &qword_22767D640))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A29D4(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4C8 qword_22767DC60))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A2BDC(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9180 &qword_227673220))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A2DE4(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0A0 &qword_22767C630))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A2FEC(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9ED8 &unk_227676A90))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A31F4(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE98 &qword_227681E28))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A33FC(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F18 &unk_227676BA0))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A3604(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50 &qword_2276834E0))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A380C(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFD0 qword_2276831F0))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A3A20(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFF0, &qword_227683488);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0E8 &qword_22767C9E0))];

  sub_226EBC888(v16);
  return v12;
}

id sub_2273A3C28(uint64_t a1)
{
  swift_getKeyPath();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFF0, &qword_227683488);
  v16[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v16, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](v4);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v9, v7);
    v10 = sub_22766D170();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFF8 qword_227683490))];

  sub_226EBC888(v16);
  return v12;
}

uint64_t sub_2273A3EB8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CE8];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2273A3F2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227664E00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2273A3F54(uint64_t a1)
{
  *(a1 + 24) = sub_2273A3FBC(&qword_2813A5760);
  result = sub_2273A3FBC(&unk_2813A5750);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2273A3FBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227664E20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2273A4000(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD020, &qword_227683790);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2273A47C4();
  sub_22766D480();
  LOBYTE(v16) = 0;
  sub_22766D0F0();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_226F5E0B4(v14, v15);
    sub_2273A486C();
    sub_22766D120();
    sub_226EDC420(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2273A419C()
{
  if (*v0)
  {
    result = 0x4965746176697270;
  }

  else
  {
    result = 0x456465646E696C62;
  }

  *v0;
  return result;
}

uint64_t sub_2273A41EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x456465646E696C62 && a2 == 0xEE00746E656D656CLL;
  if (v6 || (sub_22766D190() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4965746176697270 && a2 == 0xEC0000007475706ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22766D190();

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

uint64_t sub_2273A42E0(uint64_t a1)
{
  v2 = sub_2273A47C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2273A431C(uint64_t a1)
{
  v2 = sub_2273A47C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2273A4358@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2273A45A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2273A43A8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22766D370();
  sub_22766C100();
  sub_2276625A0();
  return sub_22766D3F0();
}

uint64_t sub_2273A4410()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22766C100();

  return sub_2276625A0();
}

uint64_t sub_2273A4460()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22766D370();
  sub_22766C100();
  sub_2276625A0();
  return sub_22766D3F0();
}

uint64_t sub_2273A44C4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_22766D190() & 1) == 0)
  {
    return 0;
  }

  return sub_227130B5C(v2, v3, v4, v5);
}

unint64_t sub_2273A4554()
{
  result = qword_27D7BD000;
  if (!qword_27D7BD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD000);
  }

  return result;
}

uint64_t sub_2273A45A8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD008, &qword_227683788);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2273A47C4();
  sub_22766D460();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v13) = 0;
    v8 = sub_22766D080();
    v12[15] = 1;
    sub_2273A4818();
    sub_22766D0B0();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;

    sub_226F5E0B4(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_226EDC420(v10, v11);
  }

  return v8;
}

unint64_t sub_2273A47C4()
{
  result = qword_27D7BD010;
  if (!qword_27D7BD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD010);
  }

  return result;
}

unint64_t sub_2273A4818()
{
  result = qword_27D7BD018;
  if (!qword_27D7BD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD018);
  }

  return result;
}

unint64_t sub_2273A486C()
{
  result = qword_27D7BD028;
  if (!qword_27D7BD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD028);
  }

  return result;
}

uint64_t sub_2273A48D0(uint64_t a1, int a2)
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

uint64_t sub_2273A4918(uint64_t result, int a2, int a3)
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

unint64_t sub_2273A496C()
{
  result = qword_27D7BD030;
  if (!qword_27D7BD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD030);
  }

  return result;
}

unint64_t sub_2273A49C4()
{
  result = qword_27D7BD038;
  if (!qword_27D7BD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD038);
  }

  return result;
}

unint64_t sub_2273A4A1C()
{
  result = qword_27D7BD040;
  if (!qword_27D7BD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD040);
  }

  return result;
}

uint64_t static WorkoutPlanScheduleFilterProperty.representativeSamples()()
{
  result = sub_22766C090();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (result + 40);
    v5 = MEMORY[0x277D84F90];
    while (v3 < *(v1 + 16))
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
      result = swift_initStackObject();
      *(result + 16) = xmmword_2276707E0;
      *(result + 32) = v6;
      *(result + 40) = v7;
      *(result + 48) = 0;
      *(result + 56) = v6;
      *(result + 64) = v7;
      *(result + 72) = 1;
      *(result + 80) = v6;
      *(result + 88) = v7;
      *(result + 96) = 2;
      *(result + 104) = v6;
      *(result + 112) = v7;
      *(result + 120) = 3;
      v8 = *(v5 + 16);
      v9 = v8 + 4;
      if (__OFADD__(v8, 4))
      {
        goto LABEL_18;
      }

      swift_bridgeObjectRetain_n();
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v10 = *(v5 + 24) >> 1, v10 < v9))
      {
        if (v8 <= v9)
        {
          v11 = v8 + 4;
        }

        else
        {
          v11 = v8;
        }

        result = sub_2273A6B58(result, v11, 1, v5, &qword_27D7BACD8, &qword_227679728);
        v5 = result;
        v10 = *(result + 24) >> 1;
      }

      if (v10 - *(v5 + 16) < 4)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      v12 = *(v5 + 16);
      v13 = __OFADD__(v12, 4);
      v14 = v12 + 4;
      if (v13)
      {
        goto LABEL_20;
      }

      ++v3;
      *(v5 + 16) = v14;
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_16:

    return v5;
  }

  return result;
}

void sub_2273A4C44(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2273A73F8(a1);
  v7 = v6;
  v9 = v8;

  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9;
  }
}

void *sub_2273A4CC4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEE8, &qword_227679978);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEF0, &qword_227679980);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2273A4FB0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB0A0, &qword_227679BC8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB0A8, &qword_227679BD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2273A5120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B92A0, &qword_2276767A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2273A5360(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1F0, &qword_227678898);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_2273A5460(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF20, &qword_2276799C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2273A5624(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0F8, &qword_227683A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD100, &qword_227683A48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2273A57A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABC8, &qword_2276795C0);
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

char *sub_2273A58D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEB0, &qword_227679930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2273A5A4C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_2273A5BDC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_2273A5D10(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE78, &qword_2276798E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE80, &unk_2276798F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2273A5E68(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_2273A6074(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_2273A61B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE38, &qword_2276798A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE40, &qword_2276798A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2273A6300(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_2273A6460(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2273A6668(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t sub_2273A67C0(uint64_t a1)
{
  result = sub_2273A67E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2273A67E8()
{
  result = qword_27D7BD048;
  if (!qword_27D7BD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD048);
  }

  return result;
}

char *sub_2273A6850(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_2273A6B58(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2273A6D3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD090, &qword_2276839E8);
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

char *sub_2273A6E5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEA0, &qword_227679918);
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

void *sub_2273A7008(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD058, &qword_2276839B0);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_2273A7134(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0D8, &qword_227683A20);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0E0, &qword_227683A28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2273A727C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void sub_2273A7390(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_22766BFD0();
  [a1 *off_2785D40E8[a4]];
}

uint64_t sub_2273A73F8(void *a1)
{
  v3 = [a1 bodyFocus];
  if (v3 || (v3 = [a1 equipment]) != 0 || (v3 = objc_msgSend(a1, sel_skillLevel)) != 0 || (v3 = objc_msgSend(a1, sel_theme)) != 0)
  {
    v4 = v3;
    v1 = sub_22766C000();
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_2273A753C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  v1 = v0[24];

  v2 = v0[25];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v3 = v0[37];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2273A75C8(char a1, uint64_t a2)
{
  *(v3 + 128) = a2;
  *(v3 + 136) = v2;
  *(v3 + 288) = a1;
  v4 = sub_22766AE90();
  *(v3 + 144) = v4;
  v5 = *(v4 - 8);
  *(v3 + 152) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v7 = sub_22766B390();
  *(v3 + 168) = v7;
  v8 = *(v7 - 8);
  *(v3 + 176) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273A7700, v2, 0);
}

uint64_t sub_2273A7700()
{
  v23 = v0;
  v1 = *(v0 + 200);
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  if (v4)
  {
    v8 = *(v0 + 288);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    v11 = sub_227666360();
    v13 = sub_226E97AE8(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v2, v3, "[CatalogSyncCoordinator] Catalog sync requested with mode: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  v14 = *(v7 + 8);
  v14(v5, v6);
  *(v0 + 208) = v14;
  if (*(v0 + 288) == 2)
  {
    v15 = swift_task_alloc();
    *(v0 + 216) = v15;
    *v15 = v0;
    v15[1] = sub_2273A793C;
    v16 = *(v0 + 136);

    return sub_2273A86A8();
  }

  else
  {
    v18 = *(*(v0 + 136) + 192);
    v19 = swift_task_alloc();
    *(v0 + 232) = v19;
    *v19 = v0;
    v19[1] = sub_2273A7B08;
    v20 = *(v0 + 128);
    v21 = *(v0 + 288);

    return sub_227500130(v20, v21);
  }
}

uint64_t sub_2273A793C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_2273A7EEC;
  }

  else
  {
    v6 = sub_2273A7A68;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2273A7A68()
{
  v1 = *(*(v0 + 136) + 192);
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_2273A7B08;
  v3 = *(v0 + 128);
  v4 = *(v0 + 288);

  return sub_227500130(v3, v4);
}

uint64_t sub_2273A7B08()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_2273A80EC;
  }

  else
  {
    v6 = sub_2273A7C34;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2273A7C34()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 288);
  v3 = *(v1 + 296);
  sub_226E91B50(v1 + 256, v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 248) = v4;
  sub_226F19770((v0 + 16), v4 + 16);
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  v5 = *(MEMORY[0x277D4FAF0] + 4);

  v6 = swift_task_alloc();
  *(v0 + 256) = v6;
  *v6 = v0;
  v6[1] = sub_2273A7D38;

  return MEMORY[0x2821AFC88](v6, &unk_227683B68, v4);
}

uint64_t sub_2273A7D38()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v9 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = sub_2273A84A0;
  }

  else
  {
    v6 = *(v2 + 248);
    v7 = *(v2 + 136);

    v5 = sub_2273A7E60;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2273A7E60()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2273A7EEC()
{
  v30 = v0;
  v1 = v0[28];
  v2 = v0[24];
  sub_22766A730();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v28 = v0[26];
    v7 = v0[24];
    v8 = v0[21];
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[10];
    v13 = MEMORY[0x22AA995D0](v0[11], v0[12]);
    v15 = sub_226E97AE8(v13, v14, &v29);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v4, v5, "[CatalogSyncCoordinator] Failed deleting catalog - %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v28(v7, v8);
  }

  else
  {
    v16 = v0[26];
    v17 = v0[24];
    v18 = v0[21];
    v19 = v0[22];

    v16(v17, v18);
  }

  v20 = v0[28];
  swift_willThrow();
  v21 = v0[28];
  v23 = v0[24];
  v22 = v0[25];
  v24 = v0[23];
  v25 = v0[20];

  v26 = v0[1];

  return v26();
}

uint64_t sub_2273A80EC()
{
  v1 = *(*(v0 + 136) + 296);
  v2 = *(MEMORY[0x277D4FAE8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  *v3 = v0;
  v3[1] = sub_2273A8184;

  return MEMORY[0x2821AFC80]();
}

uint64_t sub_2273A8184()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_2273A8344;
  }

  else
  {
    v6 = sub_2273A82B0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2273A82B0()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2273A8344()
{
  v1 = *(v0 + 280);
  *(v0 + 104) = v1;
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 152) + 88))(*(v0 + 160), *(v0 + 144)) == *MEMORY[0x277D4FB00])
    {
      v5 = (v0 + 240);
      v6 = *(v0 + 240);

      swift_willThrow();
      v7 = *(v0 + 104);
      goto LABEL_6;
    }

    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  }

  v5 = (v0 + 280);
  v8 = *(v0 + 280);
  v9 = *(v0 + 240);

  swift_willThrow();
  v7 = v9;
LABEL_6:

  v10 = *v5;
  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  v13 = *(v0 + 184);
  v14 = *(v0 + 160);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2273A84A0()
{
  v31 = v0;
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[23];

  sub_22766A730();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[33];
    v29 = v0[26];
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = v0[7];
    v14 = MEMORY[0x22AA995D0](v0[8], v0[9]);
    v16 = sub_226E97AE8(v14, v15, &v30);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "[CatalogSyncCoordinator] Sync remote catalog failed - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    v29(v8, v10);
  }

  else
  {
    v17 = v0[26];
    v19 = v0[22];
    v18 = v0[23];
    v20 = v0[21];

    v17(v18, v20);
  }

  v21 = v0[33];
  swift_willThrow();
  v22 = v0[33];
  v24 = v0[24];
  v23 = v0[25];
  v25 = v0[23];
  v26 = v0[20];

  v27 = v0[1];

  return v27();
}

uint64_t sub_2273A86A8()
{
  v1[2] = v0;
  v2 = sub_2276698B0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_22766B390();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273A87C4, v0, 0);
}

uint64_t sub_2273A87C4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  sub_22766A730();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[36];
  __swift_project_boxed_opaque_existential_0(v4 + 32, v4[35]);
  *(v0 + 88) = 18;
  sub_226F19410();
  sub_226F19464();
  sub_22766A130();
  v6 = v4[31];
  __swift_project_boxed_opaque_existential_0(v4 + 27, v4[30]);
  v7 = *(v6 + 24);

  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_2273A8A04;
  v10 = *(v0 + 16);

  return v12();
}

uint64_t sub_2273A8A04()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_2273A8C2C;
  }

  else
  {
    v7 = *(v2 + 16);

    v6 = sub_2273A8B48;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2273A8B48()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v5[25];
  v7 = v5[26];
  swift_getObjectType();
  sub_2276698A0();
  sub_2276699D0();
  (*(v3 + 8))(v2, v4);
  sub_2273AA154(v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2273A8C2C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];

  sub_2273AA154(v3);

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_2273A8CBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 273) = a4;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  v6 = sub_2276698E0();
  *(v4 + 32) = v6;
  v7 = *(v6 - 8);
  *(v4 + 40) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v9 = sub_227669A90();
  *(v4 + 56) = v9;
  v10 = *(v9 - 8);
  *(v4 + 64) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  *(v4 + 80) = v12;
  v13 = *(v12 - 8);
  *(v4 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v15 = sub_227665030();
  *(v4 + 104) = v15;
  v16 = *(v15 - 8);
  *(v4 + 112) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v18 = sub_22766B390();
  *(v4 + 136) = v18;
  v19 = *(v18 - 8);
  *(v4 + 144) = v19;
  v20 = *(v19 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A0, &unk_227683B80);
  *(v4 + 168) = v21;
  v22 = *(v21 - 8);
  *(v4 + 176) = v22;
  v23 = *(v22 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  *(v4 + 192) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273A8FBC, a3, 0);
}

uint64_t sub_2273A8FBC()
{
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v10 = *(v0 + 136);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  *(v0 + 272) = 17;
  sub_226F19410();
  sub_226F19464();
  sub_22766A130();
  sub_22766A730();
  sub_22766B370();
  v6 = *(v2 + 8);
  *(v0 + 208) = v6;
  *(v0 + 216) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v10);
  v7 = v4[30];
  v8 = v4[31];
  __swift_project_boxed_opaque_existential_0(v4 + 27, v7);

  sub_226ECF5D8(sub_2273AA324, v4, v7, v12, v8, v11);

  return MEMORY[0x2822009F8](sub_2273A917C, 0, 0);
}

uint64_t sub_2273A917C()
{
  v1 = v0[23];
  v2 = swift_task_alloc();
  v0[28] = v2;
  *(v2 + 16) = "SeymourServices/CatalogSyncCoordinator.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 76;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_2273A9288;
  v6 = v0[24];
  v5 = v0[25];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2273AA374, v2, v6);
}

uint64_t sub_2273A9288()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  v2[30] = v0;

  v5 = v2[28];
  if (v0)
  {

    v6 = sub_2273A96F0;
    v7 = 0;
  }

  else
  {
    v9 = v2[22];
    v8 = v2[23];
    v10 = v2[21];
    v11 = v2[3];

    (*(v9 + 8))(v8, v10);
    v6 = sub_2273A93F0;
    v7 = v11;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_2273A93F0()
{
  v1 = v0[25];
  v2 = v0[12];
  v3 = *__swift_project_boxed_opaque_existential_0((v0[3] + 152), *(v0[3] + 176));
  sub_2274E556C(v1, v2);

  return MEMORY[0x2822009F8](sub_2273A9480, 0, 0);
}

uint64_t sub_2273A9480()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  v0[31] = v2;
  *(v2 + 16) = "SeymourServices/CatalogSyncCoordinator.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 77;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_2273A9588;
  v5 = v0[16];
  v6 = v0[13];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2273AA38C, v2, v6);
}

uint64_t sub_2273A9588()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[31];
  if (v0)
  {

    v6 = sub_2273A9D58;
    v7 = 0;
  }

  else
  {
    v9 = v2[11];
    v8 = v2[12];
    v10 = v2[10];
    v11 = v2[3];

    (*(v9 + 8))(v8, v10);
    v6 = sub_2273A985C;
    v7 = v11;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_2273A96F0()
{
  v1 = v0[3];
  (*(v0[22] + 8))(v0[23], v0[21]);

  return MEMORY[0x2822009F8](sub_2273A976C, v1, 0);
}

uint64_t sub_2273A976C()
{
  v12 = *(v0 + 240);
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  sub_2273A9F80(*(v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2273A985C()
{
  v75 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = [objc_opt_self() standardUserDefaults];
  sub_2273AA424(&qword_28139B868);
  v5 = sub_2276683C0();
  v7 = *(v0 + 128);
  if (v1)
  {
    v8 = *(v0 + 200);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);

    (*(v10 + 8))(v7, v9);
    sub_2273AA3BC(v8);
    v11 = *(v0 + 200);
    v12 = *(v0 + 184);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 96);
    v18 = *(v0 + 72);
    v71 = *(v0 + 48);
    sub_2273A9F80(*(v0 + 16));

    v19 = *(v0 + 8);
  }

  else
  {
    v65 = *(v0 + 152);
    v67 = *(v0 + 112);
    v69 = *(v0 + 104);
    v72 = *(v0 + 120);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v62 = *(v0 + 32);
    v63 = *(v0 + 40);
    v59 = *(v0 + 24);
    v60 = *(v0 + 273);
    v24 = v5;
    v25 = v6;
    v26 = sub_227662560();
    sub_226EDC420(v24, v25);
    (*(v21 + 104))(v20, *MEMORY[0x277D4F010], v22);
    sub_227669A80();
    (*(v21 + 8))(v20, v22);
    v27 = sub_22766BFD0();

    [v4 setValue:v26 forKey:v27];

    v28 = *(v59 + 200);
    v29 = *(v59 + 208);
    swift_getObjectType();
    sub_2276698D0();
    sub_2276699D0();
    (*(v63 + 8))(v23, v62);
    sub_22766A730();
    (*(v67 + 16))(v72, v7, v69);
    v30 = sub_22766B380();
    v31 = sub_22766C8B0();
    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v0 + 208);
    v33 = *(v0 + 216);
    v35 = *(v0 + 200);
    v36 = *(v0 + 136);
    v68 = v36;
    v70 = *(v0 + 152);
    v73 = *(v0 + 128);
    v38 = *(v0 + 112);
    v37 = *(v0 + 120);
    v39 = *(v0 + 104);
    if (v32)
    {
      v66 = *(v0 + 208);
      v40 = swift_slowAlloc();
      v61 = v31;
      v41 = swift_slowAlloc();
      v74 = v41;
      *v40 = 136315138;
      sub_2273AA424(&qword_28139B878);
      v64 = v35;
      v42 = sub_22766D140();
      v44 = v43;
      v45 = *(v38 + 8);
      v45(v37, v39);
      v46 = sub_226E97AE8(v42, v44, &v74);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_226E8E000, v30, v61, "[CatalogSyncCoordinator] Sync remote catalog succeeded - anchor: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AA9A450](v41, -1, -1);
      MEMORY[0x22AA9A450](v40, -1, -1);

      v66(v70, v68);
      v45(v73, v39);
      v47 = v64;
    }

    else
    {

      v48 = *(v38 + 8);
      v48(v37, v39);
      v34(v70, v68);
      v48(v73, v39);
      v47 = v35;
    }

    sub_2273AA3BC(v47);
    v49 = *(v0 + 200);
    v50 = *(v0 + 184);
    v52 = *(v0 + 152);
    v51 = *(v0 + 160);
    v54 = *(v0 + 120);
    v53 = *(v0 + 128);
    v55 = *(v0 + 96);
    v56 = *(v0 + 72);
    v57 = *(v0 + 48);
    sub_2273A9F80(*(v0 + 16));

    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_2273A9D58()
{
  v1 = v0[3];
  (*(v0[11] + 8))(v0[12], v0[10]);

  return MEMORY[0x2822009F8](sub_2273A9DD4, v1, 0);
}

uint64_t sub_2273A9DD4()
{
  sub_2273AA3BC(*(v0 + 200));
  v12 = *(v0 + 264);
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  sub_2273A9F80(*(v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2273A9ECC(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E92F34;

  return sub_2273A8CBC(a1, v1 + 16, v4, v5);
}

uint64_t sub_2273A9F80(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v12[15] = 17;
  sub_226F19410();
  sub_226F19464();
  sub_22766A120();
  sub_22766A710();
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226E8E000, v8, v9, "Finished catalog sync", v10, 2u);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2273AA154(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a1[36];
  __swift_project_boxed_opaque_existential_0(a1 + 32, a1[35]);
  v12[15] = 18;
  sub_226F19410();
  sub_226F19464();
  sub_22766A120();
  sub_22766A710();
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226E8E000, v8, v9, "Finished deleting catalog", v10, 2u);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2273AA3BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2273AA424(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227665030();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2273AA468@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_227662190();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_227666A70();
  v6 = v5;
  v8 = v7 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
  sub_227663B00();
  sub_226EB2DFC(v4, v6, v8);
  if (v34 == 3 || (v9 = sub_227666B50(), v11 = v10, v13 = v12 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B98, &qword_227675438), sub_227663B00(), sub_226EB2DFC(v9, v11, v13), v34 == 4))
  {
    v14 = 1;
LABEL_20:
    v32 = sub_227662D00();
    return (*(*(v32 - 8) + 56))(a1, v14, 1, v32);
  }

  else
  {
    sub_227666A50();
    sub_227666AC0();
    sub_227666B00();
    sub_227666AD0();
    sub_227666A60();
    sub_227666B40();
    sub_227666A90();
    sub_227666AE0();
    sub_227666AF0();
    sub_227666A80();
    sub_227666AA0();
    v15 = sub_227666B20();
    v16 = v15;
    v17 = v15 + 56;
    v18 = 1 << *(v15 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v15 + 56);
    v21 = (v18 + 63) >> 6;

    v23 = 0;
    v24 = MEMORY[0x277D84F90];
    if (!v20)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_7:
      while (1)
      {
        v25 = *(v16 + 48) + 24 * (__clz(__rbit64(v20)) | (v23 << 6));
        v20 &= v20 - 1;
        v35 = *v25;
        v36 = *(v25 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
        result = sub_227663B00();
        if (v34 != 9)
        {
          break;
        }

        if (!v20)
        {
          goto LABEL_9;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2273A6A8C(0, *(v24 + 16) + 1, 1, v24);
        v24 = result;
      }

      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v33 = v28 + 1;
        v30 = v24;
        v31 = *(v24 + 16);
        result = sub_2273A6A8C((v27 > 1), v28 + 1, 1, v30);
        v29 = v33;
        v28 = v31;
        v24 = result;
      }

      *(v24 + 16) = v29;
      *(v24 + v28 + 32) = v34;
    }

    while (v20);
LABEL_9:
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v21)
      {

        sub_226F46778(v24);

        sub_227662CF0();
        v14 = 0;
        goto LABEL_20;
      }

      v20 = *(v17 + 8 * v26);
      ++v23;
      if (v20)
      {
        v23 = v26;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2273AA834(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v33 - v5;
  v41 = sub_2276687D0();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v39 = v9;
  v33 = v1;
  v45 = MEMORY[0x277D84F90];
  sub_226F1F488(0, v10, 0);
  v11 = v45;
  v12 = -1 << *(a1 + 32);
  v44 = a1 + 56;
  result = sub_22766CC90();
  v14 = result;
  v15 = 0;
  v37 = v6 + 32;
  v38 = "workoutIdentifier";
  v34 = a1 + 64;
  v35 = v10;
  v40 = v6;
  v36 = a1;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v44 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_22;
    }

    v43 = *(a1 + 36);
    v18 = (*(a1 + 48) + 16 * v14);
    v20 = *v18;
    v19 = v18[1];
    v21 = sub_2276624A0();
    (*(*(v21 - 8) + 56))(v42, 1, 1, v21);

    v22 = v39;
    sub_227668790();
    v45 = v11;
    v24 = *(v11 + 16);
    v23 = *(v11 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_226F1F488(v23 > 1, v24 + 1, 1);
      v11 = v45;
    }

    *(v11 + 16) = v24 + 1;
    result = (*(v40 + 32))(v11 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v24, v22, v41);
    a1 = v36;
    v16 = 1 << *(v36 + 32);
    if (v14 >= v16)
    {
      goto LABEL_23;
    }

    v25 = *(v44 + 8 * v17);
    if ((v25 & (1 << v14)) == 0)
    {
      goto LABEL_24;
    }

    if (v43 != *(v36 + 36))
    {
      goto LABEL_25;
    }

    v26 = v25 & (-2 << (v14 & 0x3F));
    if (v26)
    {
      v16 = __clz(__rbit64(v26)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v36;
      v28 = v17 << 6;
      v29 = v17 + 1;
      v30 = (v34 + 8 * v17);
      while (v29 < (v16 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_226EB526C(v14, v43, 0);
          v16 = __clz(__rbit64(v31)) + v28;
          goto LABEL_19;
        }
      }

      result = sub_226EB526C(v14, v43, 0);
LABEL_19:
      a1 = v27;
    }

    ++v15;
    v14 = v16;
    if (v15 == v35)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_2273AABE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v3 = 0;
    v14 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v4 = MEMORY[0x22AA991A0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = sub_22766BFD0();
      v8 = [v5 valueForKey_];

      if (v8)
      {
        sub_22766CC20();
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
      }

      v13[0] = v11;
      v13[1] = v12;
      if (*(&v12 + 1))
      {
        if (swift_dynamicCast())
        {

          v9 = v5;
          sub_2270BF598(v13, v9);
          v10 = *&v13[0];

          goto LABEL_6;
        }
      }

      else
      {
        sub_226E97D1C(v13, &unk_27D7BC990, &qword_227670A30);
      }

LABEL_6:
      ++v3;
      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

void sub_2273AADB8(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA991A0](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_2273B27C4(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_2273AAEB8(void *(*a1)(_OWORD *__return_ptr), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = v4;
  v11 = sub_227284634(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedDirtySyncZone();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F472C0(v14);

    v25 = v15;
    v16 = sub_2273B53C8(v15, a1, a2, sub_226F205A8, sub_2274DDA38, &qword_27D7BD228, &unk_227684170);
    if (v16[2])
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9858, &qword_227674CA8);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B5DAC(v16, 1, &v27, a3, a4, sub_226FED094, sub_226FF4C40);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1E70(v22, v23);
    }

    v24 = sub_22700ACE8(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedDirtySyncZone, &qword_27D7B87A0, type metadata accessor for ManagedDirtySyncZone);
  }
}

void sub_2273AB108(void *(*a1)(_OWORD *__return_ptr), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = v4;
  v11 = sub_2272849AC(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedHealthKitMindfulSession();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F3DA04(v14);

    v25 = v15;
    v16 = sub_2273B53C8(v15, a1, a2, sub_226F205C8, sub_2274DDC5C, &qword_27D7BD220, &unk_2276840D8);
    if (v16[2])
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9850, &qword_227674CA0);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B5DAC(v16, 1, &v27, a3, a4, sub_226FED0A8, sub_226FF4C54);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1BFC(v22, v23);
    }

    v24 = sub_22700AD90(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedHealthKitMindfulSession, &qword_27D7B8798, type metadata accessor for ManagedHealthKitMindfulSession);
  }
}

void sub_2273AB358(void *(*a1)(_OWORD *__return_ptr), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = v4;
  v11 = sub_2272849DC(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedPrivacyAcknowledgement();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F47308(v14);

    v25 = v15;
    v16 = sub_2273B53C8(v15, a1, a2, sub_226F205E8, sub_2274DDC74, &qword_27D7BD218, &qword_2276840D0);
    if (v16[2])
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9848, &qword_227674C98);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B5DAC(v16, 1, &v27, a3, a4, sub_226FED0BC, sub_226FF4C68);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1E98(v22, v23);
    }

    v24 = sub_22700B370(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedPrivacyAcknowledgement, &qword_27D7B8790, type metadata accessor for ManagedPrivacyAcknowledgement);
  }
}

void sub_2273AB5A8(void *(*a1)(_OWORD *__return_ptr), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = v4;
  v11 = sub_2272846DC(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedEngagementBadge();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F47350(v14);

    v25 = v15;
    v16 = sub_2273B53C8(v15, a1, a2, sub_226F20608, sub_2274DDC8C, &qword_27D7BD1B8, &qword_227684070);
    if (v16[2])
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9840, &qword_227674C90);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B5DAC(v16, 1, &v27, a3, a4, sub_226FED0D0, sub_226FF4C7C);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1EC0(v22, v23);
    }

    v24 = sub_22700B418(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedEngagementBadge, &qword_27D7B8788, type metadata accessor for ManagedEngagementBadge);
  }
}

void sub_2273AB7F8(void *(*a1)(_OWORD *__return_ptr), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = v4;
  v11 = sub_227252148(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedPlaylistItem();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F3DA4C(v14);

    v25 = v15;
    v16 = sub_2273B53C8(v15, a1, a2, sub_226F20628, sub_2274DDCA4, &qword_27D7BD1A8, &qword_227684068);
    if (v16[2])
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9838, &qword_227674C88);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B5DAC(v16, 1, &v27, a3, a4, sub_226FED0E4, sub_226FF4C90);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1C24(v22, v23);
    }

    v24 = sub_22700B4C0(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedPlaylistItem, &qword_27D7B8780, type metadata accessor for ManagedPlaylistItem);
  }
}

void sub_2273ABA48(void *(*a1)(_OWORD *__return_ptr), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = v4;
  v11 = sub_227284A54(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedArchivedWorkoutPlanSession();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F47410(v14);

    v25 = v15;
    v16 = sub_2273B53C8(v15, a1, a2, sub_226F20648, sub_2274DDCBC, &qword_27D7BD198, &qword_227684058);
    if (v16[2])
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9830, &qword_227674C80);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B5DAC(v16, 1, &v27, a3, a4, sub_226FED0F8, sub_226FF4CA4);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1EE8(v22, v23);
    }

    v24 = sub_22700B568(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedArchivedWorkoutPlanSession, &qword_27D7B8768, type metadata accessor for ManagedArchivedWorkoutPlanSession);
  }
}

void sub_2273ABC98(void (*a1)(void), uint64_t a2, uint64_t (*a3)(id), uint64_t a4)
{
  v6 = v4;
  v11 = sub_22724B330(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedWorkoutPlanSummaryViewed();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F47458(v14);

    v25 = v15;
    v16 = sub_2273B5748(v15, a1, a2);
    if (*(v16 + 16))
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9828, &qword_227674C78);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B60E4(v16, 1, &v27, a3, a4);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1F10(v22, v23);
    }

    v24 = sub_22700B610(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedWorkoutPlanSummaryViewed, &qword_27D7B8758, type metadata accessor for ManagedWorkoutPlanSummaryViewed);
  }
}

void sub_2273ABE88(uint64_t a1, id a2, id a3)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    sub_226E99364(0, &qword_27D7B8770, 0x277CBE438);
    sub_2273B6624();
    sub_22766C700();
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
    v7 = v30;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v6;
  v12 = v7;
  v13 = v6;
  if (v7)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      while (1)
      {
        v16 = [v15 managedObjectContext];
        if (v16 && (v17 = v16, v16, v17 == a3))
        {
          [a3 deleteObject_];
        }

        else
        {
          v18 = [v15 managedObjectContext];
          if (!v18 || (v19 = v18, v18, v19 != a2))
          {
            v22 = sub_227664DD0();
            sub_2273B65DC(&qword_28139B8D0, MEMORY[0x277D51040]);
            swift_allocError();
            (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D50FE8], v22);
            swift_willThrow();
            sub_226EBB21C();

            return;
          }

          v20 = [v15 objectID];
          v21 = [a3 objectWithID_];

          [a3 deleteObject_];
          v15 = v21;
        }

        v6 = v13;
        v7 = v14;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_22766CD50())
        {
          sub_226E99364(0, &qword_27D7B8770, 0x277CBE438);
          swift_dynamicCast();
          v15 = v31;
          v13 = v6;
          v14 = v7;
          if (v31)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_24:
    sub_226EBB21C();
    return;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_2273AC208(uint64_t a1, id a2, id a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    a4(0);
    sub_2273B65DC(a5, a6);
    sub_22766C700();
    v6 = v33;
    v10 = v34;
    v11 = v35;
    v12 = v36;
    v13 = v37;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
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

    v13 = v16 & *(a1 + 56);

    v12 = 0;
  }

  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v17 = v12;
  v18 = v13;
  v19 = v12;
  if (v13)
  {
LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v6 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v21)
    {
      while (1)
      {
        v22 = [v21 managedObjectContext];
        if (v22 && (v23 = v22, v22, v23 == a3))
        {
          [a3 deleteObject_];
        }

        else
        {
          v24 = [v21 managedObjectContext];
          if (!v24 || (v25 = v24, v24, v25 != a2))
          {
            v28 = sub_227664DD0();
            sub_2273B65DC(&qword_28139B8D0, MEMORY[0x277D51040]);
            swift_allocError();
            (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D50FE8], v28);
            swift_willThrow();
            sub_226EBB21C();

            return;
          }

          v26 = [v21 objectID];
          v27 = [a3 objectWithID_];

          [a3 deleteObject_];
          v21 = v27;
        }

        v12 = v19;
        v13 = v20;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_22766CD50())
        {
          a4(0);
          swift_dynamicCast();
          v21 = v38;
          v19 = v12;
          v20 = v13;
          if (v38)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_24:
    sub_226EBB21C();
    return;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= ((v11 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v18 = *(v10 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

double sub_2273AC5A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD090, &qword_2276839E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227683B90;
  v1 = sub_226F505B8(&unk_283A94480);
  v2 = swift_allocObject();
  v2[2] = v1;
  v2[3] = sub_2273AE684;
  v2[4] = 0;
  *(v0 + 32) = 0x1000000;
  *(v0 + 40) = sub_2273B6580;
  *(v0 + 48) = v2;
  *(v0 + 56) = 16843008;
  *(v0 + 64) = nullsub_1;
  *(v0 + 72) = 0;
  v3 = sub_226F505B8(&unk_283A944A8);
  v4 = swift_allocObject();
  *(v4 + 16) = 257;
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = sub_2273B65A0;
  v5[4] = v4;
  *(v0 + 80) = 33620225;
  *(v0 + 88) = sub_2273B65BC;
  *(v0 + 96) = v5;
  *(v0 + 104) = 33882625;
  *(v0 + 112) = nullsub_1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 33882626;
  *(v0 + 136) = nullsub_1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 33882627;
  *(v0 + 160) = nullsub_1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 33882628;
  *(v0 + 184) = nullsub_1;
  *(v0 + 192) = 0;
  v6 = sub_226F505B8(&unk_283A944D0);
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = sub_2273AEC1C;
  v7[4] = 0;
  *(v0 + 200) = 50659845;
  *(v0 + 208) = sub_2273B66E0;
  *(v0 + 216) = v7;
  *(v0 + 224) = 50987781;
  *(v0 + 232) = nullsub_1;
  *(v0 + 240) = 0;
  *(v0 + 248) = 50987782;
  *(v0 + 256) = nullsub_1;
  *(v0 + 264) = 0;
  *(v0 + 272) = 50987783;
  *(v0 + 280) = nullsub_1;
  *(v0 + 288) = 0;
  *(v0 + 296) = 50987784;
  *(v0 + 304) = nullsub_1;
  *(v0 + 312) = 0;
  *(v0 + 320) = 50987785;
  *(v0 + 328) = nullsub_1;
  *(v0 + 336) = 0;
  v8 = sub_226F505B8(&unk_283A944F8);
  v9 = swift_allocObject();
  *(v9 + 16) = 778;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = sub_2273B668C;
  v10[4] = v9;
  *(v0 + 344) = 67765002;
  *(v0 + 352) = sub_2273B66F8;
  *(v0 + 360) = v10;
  *(v0 + 368) = 67830794;
  *(v0 + 376) = nullsub_1;
  *(v0 + 384) = 0;
  v11 = sub_226F505B8(&unk_283A94520);
  v12 = swift_allocObject();
  *(v12 + 16) = 1035;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = sub_2273B668C;
  v13[4] = v12;
  *(v0 + 392) = 84608011;
  *(v0 + 400) = sub_2273B66F8;
  *(v0 + 408) = v13;
  *(v0 + 416) = 84870411;
  *(v0 + 424) = nullsub_1;
  *(v0 + 432) = 0;
  *(v0 + 440) = 84870412;
  *(v0 + 448) = nullsub_1;
  *(v0 + 456) = 0;
  *(v0 + 464) = 84870413;
  *(v0 + 472) = nullsub_1;
  *(v0 + 480) = 0;
  *(v0 + 488) = 84870414;
  *(v0 + 496) = nullsub_1;
  *(v0 + 504) = 0;
  v14 = sub_226F505B8(&unk_283A94548);
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_2273B66A4;
  v15[4] = 0;
  *(v0 + 512) = 118424847;
  *(v0 + 520) = sub_2273B66F8;
  *(v0 + 528) = v15;
  v16 = sub_226F505B8(&unk_283A94570);
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = sub_2273B66A4;
  v17[4] = 0;
  *(v0 + 536) = 118425103;
  *(v0 + 544) = sub_2273B66F8;
  *(v0 + 552) = v17;
  v18 = sub_226F505B8(&unk_283A94598);
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = sub_2273AF5A8;
  v19[4] = 0;
  *(v0 + 560) = 135202575;
  *(v0 + 568) = sub_2273B66E0;
  *(v0 + 576) = v19;
  v20 = sub_226F505B8(&unk_283A945C0);
  v21 = swift_allocObject();
  *(v21 + 16) = 2063;
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = sub_2273B668C;
  v22[4] = v21;
  *(v0 + 584) = 151980047;
  *(v0 + 592) = sub_2273B66F8;
  *(v0 + 600) = v22;
  *(v0 + 608) = 152045839;
  *(v0 + 616) = nullsub_1;
  *(v0 + 624) = 0;
  v23 = sub_226F505B8(&unk_283A945E8);
  v24 = swift_allocObject();
  *(v24 + 16) = 2320;
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = sub_2273B668C;
  v25[4] = v24;
  *(v0 + 632) = 168823056;
  *(v0 + 640) = sub_2273B66F8;
  *(v0 + 648) = v25;
  *(v0 + 656) = 168888848;
  *(v0 + 664) = nullsub_1;
  *(v0 + 672) = 0;
  v26 = sub_226F505B8(&unk_283A94610);
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = sub_2273B66C8;
  v27[4] = 0;
  *(v0 + 680) = 185666065;
  *(v0 + 688) = sub_2273B66E0;
  *(v0 + 696) = v27;
  *(v0 + 704) = 185731857;
  *(v0 + 712) = nullsub_1;
  *(v0 + 720) = 0;
  v28 = sub_226F505B8(&unk_283A94638);
  v29 = swift_allocObject();
  *(v29 + 16) = 2834;
  v30 = swift_allocObject();
  v30[2] = v28;
  v30[3] = sub_2273B668C;
  v30[4] = v29;
  *(v0 + 728) = 202509074;
  *(v0 + 736) = sub_2273B66F8;
  *(v0 + 744) = v30;
  *(v0 + 752) = 202574866;
  *(v0 + 760) = nullsub_1;
  *(v0 + 768) = 0;
  v31 = sub_226F505B8(&unk_283A94660);
  v32 = swift_allocObject();
  *(v32 + 16) = 3091;
  v33 = swift_allocObject();
  v33[2] = v31;
  v33[3] = sub_2273B668C;
  v33[4] = v32;
  *(v0 + 776) = 219352083;
  *(v0 + 784) = sub_2273B66F8;
  *(v0 + 792) = v33;
  *(v0 + 800) = 219417875;
  *(v0 + 808) = nullsub_1;
  *(v0 + 816) = 0;
  v34 = sub_226F505B8(&unk_283A94688);
  v35 = swift_allocObject();
  *(v35 + 16) = 3348;
  v36 = swift_allocObject();
  v36[2] = v34;
  v36[3] = sub_2273B668C;
  v36[4] = v35;
  *(v0 + 824) = 252972308;
  *(v0 + 832) = sub_2273B66F8;
  *(v0 + 840) = v36;
  v37 = sub_226F505B8(&unk_283A946B0);
  v38 = swift_allocObject();
  *(v38 + 16) = 3604;
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = sub_2273B668C;
  v39[4] = v38;
  *(v0 + 848) = 252972564;
  *(v0 + 856) = sub_2273B66F8;
  *(v0 + 864) = v39;
  *(v0 + 872) = 253038356;
  *(v0 + 880) = nullsub_1;
  *(v0 + 888) = 0;
  v40 = sub_226F505B8(&unk_283A946D8);
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_2273B66C8;
  v41[4] = 0;
  *(v0 + 896) = 269815573;
  *(v0 + 904) = sub_2273B66E0;
  *(v0 + 912) = v41;
  *(v0 + 920) = 269881365;
  *(v0 + 928) = nullsub_1;
  *(v0 + 936) = 0;
  v42 = sub_226F505B8(&unk_283A94700);
  v43 = swift_allocObject();
  *(v43 + 16) = 4118;
  v44 = swift_allocObject();
  v44[2] = v42;
  v44[3] = sub_2273B668C;
  v44[4] = v43;
  *(v0 + 944) = 286658582;
  *(v0 + 952) = sub_2273B66F8;
  *(v0 + 960) = v44;
  *(v0 + 968) = 286789910;
  *(v0 + 976) = nullsub_1;
  *(v0 + 984) = 0;
  *(v0 + 992) = 286789911;
  *(v0 + 1000) = nullsub_1;
  *(v0 + 1008) = 0;
  v45 = sub_226F505B8(&unk_283A94728);
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = sub_2273AF7D0;
  v46[4] = 0;
  *(v0 + 1016) = 303567128;
  *(v0 + 1024) = sub_2273B66F8;
  *(v0 + 1032) = v46;
  v47 = sub_226F505B8(&unk_283A94750);
  v48 = swift_allocObject();
  *(v48 + 16) = 24;
  *(v48 + 17) = 18;
  v49 = swift_allocObject();
  v49[2] = v47;
  v49[3] = sub_2273B668C;
  v49[4] = v48;
  *(v0 + 1040) = 320344600;
  *(v0 + 1048) = sub_2273B66F8;
  *(v0 + 1056) = v49;
  *(v0 + 1064) = 320410392;
  *(v0 + 1072) = nullsub_1;
  *(v0 + 1080) = 0;
  v50 = sub_226F505B8(&unk_283A94778);
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = sub_2273AFD5C;
  v51[4] = 0;
  *(v0 + 1088) = 337187609;
  *(v0 + 1096) = sub_2273B66E0;
  *(v0 + 1104) = v51;
  v52 = sub_226F505B8(&unk_283A947A0);
  v53 = swift_allocObject();
  *(v53 + 16) = 25;
  *(v53 + 17) = 20;
  v54 = swift_allocObject();
  v54[2] = v52;
  v54[3] = sub_2273B668C;
  v54[4] = v53;
  *(v0 + 1112) = 353965081;
  *(v0 + 1120) = sub_2273B66F8;
  *(v0 + 1128) = v54;
  *(v0 + 1136) = 354030873;
  *(v0 + 1144) = nullsub_1;
  *(v0 + 1152) = 0;
  v55 = sub_226F505B8(&unk_283A947C8);
  v56 = swift_allocObject();
  v56[2] = v55;
  v56[3] = sub_2273B0E68;
  v56[4] = 0;
  *(v0 + 1160) = 370808090;
  *(v0 + 1168) = sub_2273B66E0;
  *(v0 + 1176) = v56;
  *(v0 + 1184) = 370939418;
  *(v0 + 1192) = nullsub_1;
  *(v0 + 1200) = 0;
  *(v0 + 1208) = 370939419;
  *(v0 + 1216) = nullsub_1;
  *(v0 + 1224) = 0;
  v57 = sub_226F505B8(&unk_283A947F0);
  v58 = swift_allocObject();
  *(v58 + 16) = 28;
  *(v58 + 17) = 22;
  v59 = swift_allocObject();
  v59[2] = v57;
  v59[3] = sub_2273B668C;
  v59[4] = v58;
  *(v0 + 1232) = 387716636;
  *(v0 + 1240) = sub_2273B66F8;
  *(v0 + 1248) = v59;
  *(v0 + 1256) = 387782428;
  *(v0 + 1264) = nullsub_1;
  *(v0 + 1272) = 0;
  v60 = sub_226F505B8(&unk_283A94818);
  v61 = swift_allocObject();
  *(v61 + 16) = 29;
  *(v61 + 17) = 23;
  v62 = swift_allocObject();
  v62[2] = v60;
  v62[3] = sub_2273B668C;
  v62[4] = v61;
  *(v0 + 1280) = 404559645;
  *(v0 + 1288) = sub_2273B66F8;
  *(v0 + 1296) = v62;
  *(v0 + 1304) = 404625437;
  *(v0 + 1312) = nullsub_1;
  *(v0 + 1320) = 0;
  v63 = sub_226F505B8(&unk_283A94840);
  v64 = swift_allocObject();
  *(v64 + 16) = 30;
  *(v64 + 17) = 24;
  v65 = swift_allocObject();
  v65[2] = v63;
  v65[3] = sub_2273B668C;
  v65[4] = v64;
  *(v0 + 1328) = 421402654;
  *(v0 + 1336) = sub_2273B66F8;
  *(v0 + 1344) = v65;
  v66 = sub_226F505B8(&unk_283A94868);
  v67 = swift_allocObject();
  v67[2] = v66;
  v67[3] = sub_2273B0FFC;
  v67[4] = 0;
  *(v0 + 1352) = 438180126;
  *(v0 + 1360) = sub_2273B66E0;
  *(v0 + 1368) = v67;
  v68 = sub_226F505B8(&unk_283A94890);
  v69 = swift_allocObject();
  v69[2] = v68;
  v69[3] = sub_2273B1028;
  v69[4] = 0;
  *(v0 + 1376) = 454957598;
  *(v0 + 1384) = sub_2273B66E0;
  *(v0 + 1392) = v69;
  *(v0 + 1400) = 455023390;
  *(v0 + 1408) = nullsub_1;
  *(v0 + 1416) = 0;
  v70 = sub_226F505B8(&unk_283A948B8);
  v71 = swift_allocObject();
  *(v71 + 16) = 31;
  *(v71 + 17) = 24;
  v72 = swift_allocObject();
  v72[2] = v70;
  v72[3] = sub_2273B668C;
  v72[4] = v71;
  *(v0 + 1424) = 421468191;
  *(v0 + 1432) = sub_2273B66F8;
  *(v0 + 1440) = v72;
  v73 = sub_226F505B8(&unk_283A948E0);
  v74 = swift_allocObject();
  v74[2] = v73;
  v74[3] = sub_2273B0FFC;
  v74[4] = 0;
  *(v0 + 1448) = 438245663;
  *(v0 + 1456) = sub_2273B66E0;
  *(v0 + 1464) = v74;
  v75 = sub_226F505B8(&unk_283A94908);
  v76 = swift_allocObject();
  v76[2] = v75;
  v76[3] = sub_2273B1028;
  v76[4] = 0;
  *(v0 + 1472) = 455023135;
  *(v0 + 1480) = sub_2273B66E0;
  *(v0 + 1488) = v76;
  v77 = sub_226F505B8(&unk_283A94930);
  v78 = swift_allocObject();
  *(v78 + 16) = 31;
  *(v78 + 17) = 27;
  v79 = swift_allocObject();
  v79[2] = v77;
  v79[3] = sub_2273B668C;
  v79[4] = v78;
  *(v0 + 1496) = 505355039;
  *(v0 + 1504) = sub_2273B66F8;
  *(v0 + 1512) = v79;
  *(v0 + 1520) = 505486879;
  *(v0 + 1528) = nullsub_1;
  *(v0 + 1536) = 0;
  *(v0 + 1544) = 471866398;
  *(v0 + 1552) = nullsub_1;
  *(v0 + 1560) = 0;
  v80 = sub_226F505B8(&unk_283A94958);
  v81 = swift_allocObject();
  *(v81 + 16) = 32;
  *(v81 + 17) = 28;
  v82 = swift_allocObject();
  v82[2] = v80;
  v82[3] = sub_2273B668C;
  v82[4] = v81;
  *(v0 + 1568) = 488643616;
  *(v0 + 1576) = sub_2273B66F8;
  *(v0 + 1584) = v82;
  v83 = sub_226F505B8(&unk_283A94980);
  v84 = swift_allocObject();
  v84[2] = v83;
  v84[3] = sub_2273B0FFC;
  v84[4] = 0;
  *(v0 + 1592) = 505421088;
  *(v0 + 1600) = sub_2273B66E0;
  *(v0 + 1608) = v84;
  v85 = sub_226F505B8(&unk_283A949A8);
  v86 = swift_allocObject();
  v86[2] = v85;
  v86[3] = sub_2273B1028;
  v86[4] = 0;
  *(v0 + 1616) = 522198560;
  *(v0 + 1624) = sub_2273B66E0;
  *(v0 + 1632) = v86;
  *(v0 + 1640) = 522264352;
  *(v0 + 1648) = nullsub_1;
  *(v0 + 1656) = 0;
  v87 = sub_226F505B8(&unk_283A949D0);
  v88 = swift_allocObject();
  v88[2] = v87;
  v88[3] = sub_2273B1028;
  v88[4] = 0;
  *(v0 + 1664) = 522264097;
  *(v0 + 1672) = sub_2273B66E0;
  *(v0 + 1680) = v88;
  *(v0 + 1688) = 522329889;
  *(v0 + 1696) = nullsub_1;
  *(v0 + 1704) = 0;
  v89 = sub_226F505B8(&unk_283A949F8);
  v90 = swift_allocObject();
  *(v90 + 16) = 34;
  *(v90 + 17) = 31;
  v91 = swift_allocObject();
  v91[2] = v89;
  v91[3] = sub_2273B668C;
  v91[4] = v90;
  *(v0 + 1712) = 539107106;
  *(v0 + 1720) = sub_2273B66F8;
  *(v0 + 1728) = v91;
  *(v0 + 1736) = 539172898;
  *(v0 + 1744) = nullsub_1;
  *(v0 + 1752) = 0;
  *(v0 + 1760) = 539238435;
  *(v0 + 1768) = nullsub_1;
  *(v0 + 1776) = 0;
  *(v0 + 1784) = 539303972;
  *(v0 + 1792) = nullsub_1;
  *(v0 + 1800) = 0;
  v92 = sub_226F505B8(&unk_283A94A20);
  v93 = swift_allocObject();
  v93[2] = v92;
  v93[3] = sub_2273B2570;
  v93[4] = 0;
  *(v0 + 1808) = 556081189;
  *(v0 + 1816) = sub_2273B66E0;
  *(v0 + 1824) = v93;
  v94 = sub_226F505B8(&unk_283A94A48);
  v95 = swift_allocObject();
  *(v95 + 16) = 37;
  *(v95 + 17) = 33;
  v96 = swift_allocObject();
  v96[2] = v94;
  v96[3] = sub_2273B668C;
  v96[4] = v95;
  *(v0 + 1832) = 572858661;
  *(v0 + 1840) = sub_2273B66F8;
  *(v0 + 1848) = v96;
  *(v0 + 1856) = 572924453;
  *(v0 + 1864) = nullsub_1;
  *(v0 + 1872) = 0;
  *(v0 + 1880) = 572989990;
  *(v0 + 1888) = nullsub_1;
  *(v0 + 1896) = 0;
  v97 = sub_226F505B8(&unk_283A94A70);
  v98 = swift_allocObject();
  *(v98 + 16) = 39;
  *(v98 + 17) = 34;
  v99 = swift_allocObject();
  v99[2] = v97;
  v99[3] = sub_2273B668C;
  v99[4] = v98;
  *(v0 + 1904) = 589767207;
  *(v0 + 1912) = sub_2273B66F8;
  *(v0 + 1920) = v99;
  *(v0 + 1928) = 589832999;
  *(v0 + 1936) = nullsub_1;
  *(v0 + 1944) = 0;
  *(v0 + 1952) = 589898536;
  *(v0 + 1960) = nullsub_1;
  *(v0 + 1968) = 0;
  *(v0 + 1976) = 589964073;
  *(v0 + 1984) = nullsub_1;
  *(v0 + 1992) = 0;
  v100 = sub_226F505B8(&unk_283A94A98);
  v101 = swift_allocObject();
  *(v101 + 16) = 42;
  *(v101 + 17) = 35;
  v102 = swift_allocObject();
  v102[2] = v100;
  v102[3] = sub_2273B668C;
  v102[4] = v101;
  *(v0 + 2000) = 606741290;
  *(v0 + 2008) = sub_2273B66F8;
  *(v0 + 2016) = v102;
  *(v0 + 2024) = 606807082;
  *(v0 + 2032) = nullsub_1;
  *(v0 + 2040) = 0;
  *(v0 + 2048) = 606872619;
  *(v0 + 2056) = nullsub_1;
  *(v0 + 2064) = 0;
  *(v0 + 2072) = 606938156;
  *(v0 + 2080) = nullsub_1;
  *(v0 + 2088) = 0;
  v103 = sub_226F505B8(&unk_283A94AC0);
  v104 = swift_allocObject();
  v104[2] = v103;
  v104[3] = sub_2273B25C0;
  v104[4] = 0;
  *(v0 + 2096) = 623715373;
  *(v0 + 2104) = sub_2273B66E0;
  *(v0 + 2112) = v104;
  *(v0 + 2120) = 624043309;
  *(v0 + 2128) = nullsub_1;
  *(v0 + 2136) = 0;
  *(v0 + 2144) = 624043310;
  *(v0 + 2152) = nullsub_1;
  *(v0 + 2160) = 0;
  *(v0 + 2168) = 624043311;
  *(v0 + 2176) = nullsub_1;
  *(v0 + 2184) = 0;
  *(v0 + 2192) = 624043312;
  *(v0 + 2200) = nullsub_1;
  *(v0 + 2208) = 0;
  *(v0 + 2216) = 624043313;
  *(v0 + 2224) = nullsub_1;
  *(v0 + 2232) = 0;
  v105 = sub_226F505B8(&unk_283A94AE8);
  v106 = swift_allocObject();
  *(v106 + 16) = 50;
  *(v106 + 17) = 37;
  v107 = swift_allocObject();
  v107[2] = v105;
  v107[3] = sub_2273B668C;
  v107[4] = v106;
  *(v0 + 2240) = 640820530;
  *(v0 + 2248) = sub_2273B66F8;
  *(v0 + 2256) = v107;
  v108 = sub_226F505B8(&unk_283A94B10);
  v109 = swift_allocObject();
  v109[2] = v108;
  v109[3] = sub_2273B66C8;
  v109[4] = 0;
  *(v0 + 2264) = 657598002;
  *(v0 + 2272) = sub_2273B66E0;
  *(v0 + 2280) = v109;
  *(v0 + 2288) = 657663794;
  *(v0 + 2296) = nullsub_1;
  *(v0 + 2304) = 0;
  *(v0 + 2312) = 657729331;
  *(v0 + 2320) = nullsub_1;
  *(v0 + 2328) = 0;
  v110 = sub_226F505B8(&unk_283A94B38);
  v111 = swift_allocObject();
  v111[2] = v110;
  v111[3] = sub_2273B2610;
  v111[4] = 0;
  *(v0 + 2336) = 674506548;
  *(v0 + 2344) = sub_2273B66F8;
  *(v0 + 2352) = v111;
  v112 = sub_226F505B8(&unk_283A94B60);
  v113 = swift_allocObject();
  v113[2] = v112;
  v113[3] = sub_2273B2A2C;
  v113[4] = 0;
  *(v0 + 2360) = 691284020;
  *(v0 + 2368) = sub_2273B66E0;
  *(v0 + 2376) = v113;
  *(v0 + 2384) = 691349812;
  *(v0 + 2392) = nullsub_1;
  *(v0 + 2400) = 0;
  *(v0 + 2408) = 691415349;
  *(v0 + 2416) = nullsub_1;
  *(v0 + 2424) = 0;
  v114 = sub_226F505B8(&unk_283A94B88);
  v115 = swift_allocObject();
  *(v115 + 16) = 54;
  *(v115 + 17) = 41;
  v116 = swift_allocObject();
  v116[2] = v114;
  v116[3] = sub_2273B668C;
  v116[4] = v115;
  *(v0 + 2432) = 708192566;
  *(v0 + 2440) = sub_2273B66F8;
  *(v0 + 2448) = v116;
  *(v0 + 2456) = 708258358;
  *(v0 + 2464) = nullsub_1;
  *(v0 + 2472) = 0;
  *(v0 + 2480) = 708323895;
  *(v0 + 2488) = nullsub_1;
  *(v0 + 2496) = 0;
  v117 = sub_226F505B8(&unk_283A94BB0);
  v118 = swift_allocObject();
  v118[2] = v117;
  v118[3] = sub_2273B2BC0;
  v118[4] = 0;
  *(v0 + 2504) = 725101112;
  *(v0 + 2512) = sub_2273B66F8;
  *(v0 + 2520) = v118;
  *(v0 + 2528) = 725166904;
  *(v0 + 2536) = nullsub_1;
  *(v0 + 2544) = 0;
  *(v0 + 2552) = 725232441;
  *(v0 + 2560) = nullsub_1;
  *(v0 + 2568) = 0;
  v119 = sub_226F505B8(&unk_283A94BD8);
  v120 = swift_allocObject();
  v120[2] = v119;
  v120[3] = sub_2273B4408;
  v120[4] = 0;
  *(v0 + 2576) = 742009658;
  *(v0 + 2584) = sub_2273B66F8;
  *(v0 + 2592) = v120;
  v121 = sub_226F505B8(&unk_283A94C00);
  v122 = swift_allocObject();
  *(v122 + 16) = 58;
  *(v122 + 17) = 44;
  v123 = swift_allocObject();
  v123[2] = v121;
  v123[3] = sub_2273B668C;
  v123[4] = v122;
  *(v0 + 2600) = 758787130;
  *(v0 + 2608) = sub_2273B66F8;
  *(v0 + 2616) = v123;
  *(v0 + 2624) = 758852922;
  *(v0 + 2632) = nullsub_1;
  *(v0 + 2640) = 0;
  v124 = sub_226F505B8(&unk_283A94C28);
  v125 = swift_allocObject();
  *(v125 + 16) = 59;
  *(v125 + 17) = 45;
  v126 = swift_allocObject();
  v126[2] = v124;
  v126[3] = sub_2273B668C;
  v126[4] = v125;
  *(v0 + 2648) = 775630139;
  *(v0 + 2656) = sub_2273B66F8;
  *(v0 + 2664) = v126;
  *(v0 + 2672) = 775695931;
  *(v0 + 2680) = nullsub_1;
  *(v0 + 2688) = 0;
  v127 = sub_226F505B8(&unk_283A94C50);
  v128 = swift_allocObject();
  v128[2] = v127;
  v128[3] = sub_2273B4648;
  v128[4] = 0;
  *(v0 + 2696) = 792473148;
  *(v0 + 2704) = sub_2273B66E0;
  *(v0 + 2712) = v128;
  *(v0 + 2720) = 792538940;
  *(v0 + 2728) = nullsub_1;
  *(v0 + 2736) = 0;
  v129 = sub_226F505B8(&unk_283A94C78);
  v130 = swift_allocObject();
  *(v130 + 16) = 61;
  *(v130 + 17) = 47;
  v131 = swift_allocObject();
  v131[2] = v129;
  v131[3] = sub_2273B668C;
  v131[4] = v130;
  *(v0 + 2744) = 809316157;
  *(v0 + 2752) = sub_2273B66F8;
  *(v0 + 2760) = v131;
  *(v0 + 2768) = 809381949;
  *(v0 + 2776) = nullsub_1;
  *(v0 + 2784) = 0;
  v132 = sub_226F505B8(&unk_283A94CA0);
  v133 = swift_allocObject();
  v133[2] = v132;
  v133[3] = sub_2273B487C;
  v133[4] = 0;
  *(v0 + 2792) = 826159166;
  *(v0 + 2800) = sub_2273B66F8;
  *(v0 + 2808) = v133;
  *(v0 + 2816) = 826224958;
  *(v0 + 2824) = nullsub_1;
  *(v0 + 2832) = 0;
  *(v0 + 2840) = 826290495;
  *(v0 + 2848) = nullsub_1;
  *(v0 + 2856) = 0;
  *(v0 + 2864) = 826356032;
  *(v0 + 2872) = nullsub_1;
  *(v0 + 2880) = 0;
  *(v0 + 2888) = 826421569;
  *(v0 + 2896) = nullsub_1;
  *(v0 + 2904) = 0;
  *(v0 + 2912) = 826487106;
  *(v0 + 2920) = nullsub_1;
  *(v0 + 2928) = 0;
  v134 = sub_226F505B8(&unk_283A94CC8);
  v135 = swift_allocObject();
  *(v135 + 16) = 67;
  *(v135 + 17) = 49;
  v136 = swift_allocObject();
  v136[2] = v134;
  v136[3] = sub_2273B668C;
  v136[4] = v135;
  *(v0 + 2936) = 843264323;
  *(v0 + 2944) = sub_2273B66F8;
  *(v0 + 2952) = v136;
  v137 = sub_226F505B8(&unk_283A94CF0);
  v138 = swift_allocObject();
  v138[2] = v137;
  v138[3] = sub_2273B66C8;
  v138[4] = 0;
  *(v0 + 2960) = 860041795;
  *(v0 + 2968) = sub_2273B66E0;
  *(v0 + 2976) = v138;
  *(v0 + 2984) = 860107587;
  *(v0 + 2992) = nullsub_1;
  *(v0 + 3000) = 0;
  v139 = sub_226F505B8(&unk_283A94D18);
  v140 = swift_allocObject();
  *(v140 + 16) = 68;
  *(v140 + 17) = 51;
  v141 = swift_allocObject();
  v141[2] = v139;
  v141[3] = sub_2273B668C;
  v141[4] = v140;
  *(v0 + 3008) = 876884804;
  *(v0 + 3016) = sub_2273B66F8;
  *(v0 + 3024) = v141;
  v142 = sub_226F505B8(&unk_283A94D40);
  v143 = swift_allocObject();
  v143[2] = v142;
  v143[3] = sub_2273B66C8;
  v143[4] = 0;
  *(v0 + 3032) = 893662276;
  *(v0 + 3040) = sub_2273B66E0;
  *(v0 + 3048) = v143;
  *(v0 + 3056) = 893728068;
  *(v0 + 3064) = nullsub_1;
  *(v0 + 3072) = 0;
  *(v0 + 3080) = 893793605;
  *(v0 + 3088) = nullsub_1;
  *(v0 + 3096) = 0;
  *(v0 + 3104) = 893859142;
  *(v0 + 3112) = nullsub_1;
  *(v0 + 3120) = 0;
  *(v0 + 3128) = 893924679;
  *(v0 + 3136) = nullsub_1;
  *(v0 + 3144) = 0;
  *(v0 + 3152) = 893990216;
  *(v0 + 3160) = nullsub_1;
  *(v0 + 3168) = 0;
  *(v0 + 3176) = 894055753;
  *(v0 + 3184) = nullsub_1;
  *(v0 + 3192) = 0;
  *(v0 + 3200) = 894121290;
  *(v0 + 3208) = nullsub_1;
  *(v0 + 3216) = 0;
  *(v0 + 3224) = 894186827;
  *(v0 + 3232) = nullsub_1;
  *(v0 + 3240) = 0;
  v144 = sub_226F505B8(&unk_283A94D68);
  v145 = swift_allocObject();
  v145[2] = v144;
  v145[3] = sub_2273B4CD8;
  v145[4] = 0;
  *(v0 + 3248) = 910964044;
  *(v0 + 3256) = sub_2273B66F8;
  *(v0 + 3264) = v145;
  *(v0 + 3272) = 911029836;
  *(v0 + 3280) = nullsub_1;
  *(v0 + 3288) = 0;
  *(v0 + 3296) = 911095373;
  *(v0 + 3304) = nullsub_1;
  *(v0 + 3312) = 0;
  *(v0 + 3320) = 911160910;
  *(v0 + 3328) = nullsub_1;
  *(v0 + 3336) = 0;
  *(v0 + 3344) = 911226447;
  *(v0 + 3352) = nullsub_1;
  *(v0 + 3360) = 0;
  *(v0 + 3368) = 911291984;
  *(v0 + 3376) = nullsub_1;
  *(v0 + 3384) = 0;
  *(v0 + 3392) = 911357521;
  *(v0 + 3400) = nullsub_1;
  *(v0 + 3408) = 0;
  v146 = sub_226F505B8(&unk_283A94D90);
  v147 = swift_allocObject();
  v147[2] = v146;
  v147[3] = sub_2273B509C;
  v147[4] = 0;
  *&result = 928134738;
  *(v0 + 3416) = 928134738;
  *(v0 + 3424) = sub_2273B66E0;
  *(v0 + 3432) = v147;
  qword_27D7CE358 = v0;
  return result;
}

uint64_t sub_2273AE684(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8480, &qword_22767A4E0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = v2;
  v11 = v3;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  sub_2273AAEB8(sub_2273AE818, 0, sub_2273AE824, 0);
  swift_setDeallocating();

  v12 = *(v9 + 40);

  v13 = qword_2813B2078;
  v14 = sub_22766A100();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  v15 = *(*v9 + 48);
  v16 = *(*v9 + 52);
  return swift_deallocClassInstance();
}

id sub_2273AE824(void *a1, void *a2)
{
  v41 = a2;
  v42 = a1;
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF28, &qword_2276823E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = [v42 timestamp];
  if (v20)
  {
    v21 = v20;
    sub_227662710();

    v22 = v3[7];
    v22(v19, 0, 1, v2);
  }

  else
  {
    v22 = v3[7];
    v22(v19, 1, 1, v2);
  }

  v23 = [v41 timestamp];
  if (v23)
  {
    v24 = v23;
    sub_227662710();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v22(v17, v25, 1, v2);
  v26 = *(v9 + 48);
  sub_226E95D18(v19, v12, &qword_27D7B9690, qword_227670B50);
  sub_226E95D18(v17, &v12[v26], &qword_27D7B9690, qword_227670B50);
  v27 = v3[6];
  v28 = v27(v12, 1, v2);
  v29 = v27(&v12[v26], 1, v2);
  if (v28 != 1)
  {
    if (v29 != 1)
    {
      v34 = v3[4];
      v34(v8, v12, v2);
      v35 = &v12[v26];
      v36 = v40;
      v34(v40, v35, v2);
      v37 = sub_2276626B0();
      v38 = v3[1];
      v38(v36, v2);
      v38(v8, v2);
      v30 = v42;
      if ((v37 & 1) == 0)
      {
        v30 = v41;
      }

      goto LABEL_16;
    }

    v31 = v3[1];
    v32 = v42;
    v31(v12, v2);
    return v32;
  }

  if (v29 != 1)
  {
    v32 = v41;
    sub_226E97D1C(&v12[v26], &qword_27D7B9690, qword_227670B50);
    return v32;
  }

  v30 = v42;
LABEL_16:

  return v30;
}

uint64_t sub_2273AEC1C(void *a1)
{
  v2 = a1[3];
  v74 = a1;
  v3 = __swift_project_boxed_opaque_existential_0(a1, v2);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  v14 = sub_227665FE0();
  v16 = v15;
  v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v73[0] = v14;
  v73[1] = v16;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226E93170(v73, v71, &unk_27D7BC990, &qword_227670A30);
  v18 = v72;
  if (v72)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v71, v72);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v71);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v73, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v27 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v67 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v73, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v32 = sub_2273FC724(KeyPath);
  if (v1)
  {

    swift_setDeallocating();

    v33 = *(v11 + 40);

    v34 = qword_2813B2078;
    v35 = sub_22766A100();
    (*(*(v35 - 8) + 8))(v11 + v34, v35);
    v56 = *(*v11 + 48);
    v57 = *(*v11 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v70 = sub_226F3E6A8(v32);

    swift_setDeallocating();

    v36 = *(v11 + 40);

    v37 = qword_2813B2078;
    v38 = sub_22766A100();
    v39 = *(v38 - 8);
    v40 = *(v39 + 8);
    v68[1] = v39 + 8;
    v69 = v40;
    v40(v11 + v37, v38);
    v41 = *(*v11 + 48);
    v42 = *(*v11 + 52);
    swift_deallocClassInstance();
    v43 = __swift_project_boxed_opaque_existential_0(v74, v74[3]);
    v44 = *v43;
    v45 = v43[1];
    v46 = *(v43 + 16);
    v47 = v43[3];
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA080, &qword_227677700);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    v51 = swift_allocObject();
    v52 = v44;
    v53 = v45;

    sub_22766A070();
    *(v51 + 16) = v52;
    *(v51 + 24) = v53;
    *(v51 + 32) = v46;
    *(v51 + 40) = v47;
    v54 = swift_getKeyPath();
    v55 = sub_2273FCA6C(v54);
    v59 = sub_226F3E6A8(v55);

    swift_setDeallocating();

    v60 = *(v51 + 40);

    v69(v51 + qword_2813B2078, v38);
    v61 = *(*v51 + 48);
    v62 = *(*v51 + 52);
    swift_deallocClassInstance();
    if (*(v59 + 16) <= *(v70 + 16) >> 3)
    {
      v73[0] = v70;
      sub_22700604C(v59);

      v63 = v73[0];
    }

    else
    {
      v63 = sub_22700776C(v59, v70);
    }

    v64 = v74;
    v65 = sub_2273AA834(v63);

    v66 = __swift_project_boxed_opaque_existential_0(v64, v64[3]);
    sub_22756D164(v65, v66[1], *(v66 + 16), v66[3]);
  }
}

void sub_2273AF320()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_22766BFD0();
  v3 = [v1 initWithEntityName_];

  type metadata accessor for ManagedBookmark();
  v4 = sub_22766C9E0();
  if (v0)
  {
  }

  else
  {
    v5 = v4;
    v15 = v3;
    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
    {
      v7 = 0;
      v18 = v5 & 0xC000000000000001;
      while (1)
      {
        if (v18)
        {
          v8 = MEMORY[0x22AA991A0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = sub_22766BFD0();
        v12 = [v9 valueForKey_];

        if (v12)
        {
          sub_22766CC20();
          swift_unknownObjectRelease();
          sub_226F04970(&v16, v17);
          sub_226E97D1C(v17, &unk_27D7BC990, &qword_227670A30);
          sub_227664C10();
          v13 = sub_22766BFD0();

          v14 = sub_22766BFD0();
          [v9 setValue:v13 forKey:v14];
        }

        else
        {

          memset(v17, 0, sizeof(v17));
          sub_226E97D1C(v17, &unk_27D7BC990, &qword_227670A30);
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }
}

void sub_2273AF5F8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, void *), uint64_t (*a5)(void))
{
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v13 = *(v9 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v10;
  v19 = v11;

  sub_22766A070();
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v13;
  *(v17 + 40) = v12;
  v20 = qword_2813B2078;
  swift_beginAccess();
  v21 = a4(v17 + v20, v13, v12);
  if (v21)
  {
    if (v21 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_5;
  }

  v22 = a5();
  if (v5)
  {
LABEL_5:

    return;
  }

  v23 = v22;
  [v22 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v24 = sub_22766C9E0();
  v25 = sub_226EDAB24(v24);

  sub_226EDAB78(v25, v19);
}

void sub_2273AF7D0()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_22766BFD0();
  v3 = [v1 initWithEntityName_];

  type metadata accessor for ManagedHealthKitMindfulSession();
  v4 = sub_22766C9E0();
  if (!v0)
  {
    v5 = v4;
    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x22AA991A0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = v8;
        sub_2273AF94C(&v11);

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }
}

void sub_2273AF94C(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = sub_227662750();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = *a1;
  v17 = sub_22766BFD0();
  v18 = [v16 valueForKey_];

  if (v18)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {
    sub_226E97D1C(v30, &unk_27D7BC990, &qword_227670A30);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v22 = sub_227664DD0();
    sub_2273B65DC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D50FE0], v22);
    swift_willThrow();
    return;
  }

  v19 = [v16 startDate];
  if (v19)
  {
    v20 = v19;
    sub_227662710();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v24 = v27;
  (*(v27 + 56))(v6, v21, 1, v9);
  sub_226E95D18(v6, v8, &qword_27D7B9690, qword_227670B50);
  if ((*(v24 + 48))(v8, 1, v9))
  {
    sub_226E97D1C(v8, &qword_27D7B9690, qword_227670B50);
    v25 = 0;
  }

  else
  {
    (*(v24 + 16))(v13, v8, v9);
    sub_226E97D1C(v8, &qword_27D7B9690, qword_227670B50);
    sub_227662690();
    v26 = *(v24 + 8);
    v26(v13, v9);
    v25 = sub_2276626A0();
    v26(v15, v9);
  }

  [v16 setEndDate_];
}

void sub_2273AFD5C(void *a1)
{
  sub_2276693D0();
  v3 = sub_227669410();
  if (v3 == sub_227669410())
  {
    v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[3];
    v8 = *(v4 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();
    v13 = v5;
    v14 = v6;

    sub_22766A070();
    *(v12 + 16) = v13;
    *(v12 + 24) = v14;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v15 = qword_2813B2078;
    swift_beginAccess();
    v16 = sub_227542F30(v12 + v15, v8, v7);
    if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v160 = sub_226EC6320(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v161 = v160;
      [v160 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v162 = sub_22766C9E0();
      v163 = sub_226EDAB24(v162);

      sub_226EDAB78(v163, v14);
    }

    v17 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[3];
    v21 = *(v17 + 16);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    v26 = v18;
    v27 = v19;

    sub_22766A070();
    *(v25 + 16) = v26;
    *(v25 + 24) = v27;
    *(v25 + 32) = v21;
    *(v25 + 40) = v20;
    v28 = qword_2813B2078;
    swift_beginAccess();
    v29 = sub_227542468(v25 + v28, v21, v20);
    if (v29)
    {
      if (v29 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v164 = sub_227284664(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v165 = v164;
      [v164 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v166 = sub_22766C9E0();
      v167 = sub_226EDAB24(v166);

      sub_226EDAB78(v167, v27);
    }

    v30 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v31 = *v30;
    v32 = v30[1];
    v33 = v30[3];
    v34 = *(v30 + 16);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v38 = swift_allocObject();
    v39 = v31;
    v40 = v32;

    sub_22766A070();
    *(v38 + 16) = v39;
    *(v38 + 24) = v40;
    *(v38 + 32) = v34;
    *(v38 + 40) = v33;
    v41 = qword_2813B2078;
    swift_beginAccess();
    v42 = sub_227543290(v38 + v41, v34, v33);
    if (v42)
    {
      if (v42 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v168 = sub_22728494C(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v169 = v168;
      [v168 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v170 = sub_22766C9E0();
      v171 = sub_226EDAB24(v170);

      sub_226EDAB78(v171, v40);
    }

    v43 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[3];
    v47 = *(v43 + 16);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC380, &qword_22767D680);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    v51 = swift_allocObject();
    v52 = v44;
    v53 = v45;

    sub_22766A070();
    *(v51 + 16) = v52;
    *(v51 + 24) = v53;
    *(v51 + 32) = v47;
    *(v51 + 40) = v46;
    v54 = qword_2813B2078;
    swift_beginAccess();
    v55 = sub_227543488(v51 + v54, v47, v46);
    if (v55)
    {
      if (v55 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v172 = sub_227284A24(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v173 = v172;
      [v172 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v174 = sub_22766C9E0();
      v175 = sub_226EDAB24(v174);

      sub_226EDAB78(v175, v53);
    }

    v56 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v57 = *v56;
    v58 = v56[1];
    v59 = v56[3];
    v60 = *(v56 + 16);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C78, &unk_227671C70);
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    v64 = swift_allocObject();
    v65 = v57;
    v66 = v58;

    sub_22766A070();
    *(v64 + 16) = v65;
    *(v64 + 24) = v66;
    *(v64 + 32) = v60;
    *(v64 + 40) = v59;
    v67 = qword_2813B2078;
    swift_beginAccess();
    v68 = sub_227542660(v64 + v67, v60, v59);
    if (v68)
    {
      if (v68 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v176 = sub_2272846F4(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v177 = v176;
      [v176 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v178 = sub_22766C9E0();
      v179 = sub_226EDAB24(v178);

      sub_226EDAB78(v179, v66);
    }

    v69 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v70 = *v69;
    v71 = v69[1];
    v72 = v69[3];
    v73 = *(v69 + 16);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9ED0, qword_227676A40);
    v75 = *(v74 + 48);
    v76 = *(v74 + 52);
    v77 = swift_allocObject();
    v78 = v70;
    v79 = v71;

    sub_22766A070();
    *(v77 + 16) = v78;
    *(v77 + 24) = v79;
    *(v77 + 32) = v73;
    *(v77 + 40) = v72;
    v80 = qword_2813B2078;
    swift_beginAccess();
    v81 = sub_227543050(v77 + v80, v73, v72);
    if (v81)
    {
      if (v81 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v180 = sub_227284814(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v181 = v180;
      [v180 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v182 = sub_22766C9E0();
      v183 = sub_226EDAB24(v182);

      sub_226EDAB78(v183, v79);
    }

    v82 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v83 = *v82;
    v84 = v82[1];
    v85 = v82[3];
    v86 = *(v82 + 16);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EF0, qword_227676AD8);
    v88 = *(v87 + 48);
    v89 = *(v87 + 52);
    v90 = swift_allocObject();
    v91 = v83;
    v92 = v84;

    sub_22766A070();
    *(v90 + 16) = v91;
    *(v90 + 24) = v92;
    *(v90 + 32) = v86;
    *(v90 + 40) = v85;
    v93 = qword_2813B2078;
    swift_beginAccess();
    v94 = sub_227543440(v90 + v93, v86, v85);
    if (v94)
    {
      if (v94 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v184 = sub_227284A0C(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v185 = v184;
      [v184 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v186 = sub_22766C9E0();
      v187 = sub_226EDAB24(v186);

      sub_226EDAB78(v187, v92);
    }

    v95 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v96 = *v95;
    v97 = v95[1];
    v98 = v95[3];
    v99 = *(v95 + 16);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC370, &qword_22767D648);
    v101 = *(v100 + 48);
    v102 = *(v100 + 52);
    v103 = swift_allocObject();
    v104 = v96;
    v105 = v97;

    sub_22766A070();
    *(v103 + 16) = v104;
    *(v103 + 24) = v105;
    *(v103 + 32) = v99;
    *(v103 + 40) = v98;
    v106 = qword_2813B2078;
    swift_beginAccess();
    v107 = sub_2275433F8(v103 + v106, v99, v98);
    if (v107)
    {
      if (v107 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v188 = sub_2272849F4(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v189 = v188;
      [v188 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v190 = sub_22766C9E0();
      v191 = sub_226EDAB24(v190);

      sub_226EDAB78(v191, v105);
    }

    v108 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v109 = *v108;
    v110 = v108[1];
    v111 = v108[3];
    v112 = *(v108 + 16);
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCEA0, &qword_227681E30);
    v114 = *(v113 + 48);
    v115 = *(v113 + 52);
    v116 = swift_allocObject();
    v117 = v109;
    v118 = v110;

    sub_22766A070();
    *(v116 + 16) = v117;
    *(v116 + 24) = v118;
    *(v116 + 32) = v112;
    *(v116 + 40) = v111;
    v119 = qword_2813B2078;
    swift_beginAccess();
    v120 = sub_2275433B0(v116 + v119, v112, v111);
    if (!v120)
    {
      v192 = sub_2272849DC(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v193 = v192;
      [v192 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v194 = sub_22766C9E0();
      v195 = sub_226EDAB24(v194);

      sub_226EDAB78(v195, v118);

      goto LABEL_29;
    }

    if (v120 == 1)
    {

LABEL_29:
      v121 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      v122 = *v121;
      v123 = v121[1];
      v124 = v121[3];
      v125 = *(v121 + 16);
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC360, qword_22767D5F8);
      v127 = *(v126 + 48);
      v128 = *(v126 + 52);
      v129 = swift_allocObject();
      v130 = v122;
      v131 = v123;

      sub_22766A070();
      *(v129 + 16) = v130;
      *(v129 + 24) = v131;
      *(v129 + 32) = v125;
      *(v129 + 40) = v124;
      v132 = qword_2813B2078;
      swift_beginAccess();
      v133 = sub_227543368(v129 + v132, v125, v124);
      if (v133)
      {
        if (v133 != 1)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v196 = sub_2272849C4(0);
        if (v1)
        {
          goto LABEL_61;
        }

        v197 = v196;
        [v196 setResultType_];
        sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
        v198 = sub_22766C9E0();
        v199 = sub_226EDAB24(v198);

        sub_226EDAB78(v199, v131);
      }

      v134 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      v135 = *v134;
      v136 = v134[1];
      v137 = v134[3];
      v138 = *(v134 + 16);
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F28, &qword_227676BC8);
      v140 = *(v139 + 48);
      v141 = *(v139 + 52);
      v142 = swift_allocObject();
      v143 = v135;
      v144 = v136;

      sub_22766A070();
      *(v142 + 16) = v143;
      *(v142 + 24) = v144;
      *(v142 + 32) = v138;
      *(v142 + 40) = v137;
      v145 = qword_2813B2078;
      swift_beginAccess();
      v146 = sub_227543320(v142 + v145, v138, v137);
      if (v146)
      {
        if (v146 == 1)
        {

          goto LABEL_35;
        }

LABEL_57:
        swift_willThrow();

        return;
      }

      v200 = sub_2272849AC(0);
      if (!v1)
      {
        v202 = v200;
        [v200 setResultType_];
        sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
        v203 = sub_22766C9E0();
        v206 = sub_226EDAB24(v203);

        sub_226EDAB78(v206, v144);

LABEL_35:
        v147 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
        v148 = *v147;
        v149 = v147[1];
        v150 = v147[3];
        v151 = *(v147 + 16);
        v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F10, &qword_227676B70);
        v153 = *(v152 + 48);
        v154 = *(v152 + 52);
        v155 = swift_allocObject();
        v156 = v148;
        v157 = v149;

        sub_22766A070();
        *(v155 + 16) = v156;
        *(v155 + 24) = v157;
        *(v155 + 32) = v151;
        *(v155 + 40) = v150;
        v158 = qword_2813B2078;
        swift_beginAccess();
        v159 = sub_227543008(v155 + v158, v151, v150);
        if (v159)
        {
          if (v159 != 1)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v201 = sub_227248AE8(0);
          if (!v1)
          {
            v204 = v201;
            [v201 setResultType_];
            sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
            v205 = sub_22766C9E0();
            v207 = sub_226EDAB24(v205);

            sub_226EDAB78(v207, v157);

            return;
          }
        }
      }

LABEL_61:

      return;
    }

LABEL_38:
    swift_willThrow();
    goto LABEL_61;
  }
}

uint64_t sub_2273B0E68(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F28, &qword_227676BC8);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = v2;
  v11 = v3;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  sub_2273AB108(sub_2273B66C0, 0, j_j__objc_retain, 0);
  swift_setDeallocating();

  v12 = *(v9 + 40);

  v13 = qword_2813B2078;
  v14 = sub_22766A100();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  v15 = *(*v9 + 48);
  v16 = *(*v9 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2273B1028(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C88, &qword_227671C80);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = v2;
  v11 = v3;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  sub_2273AB5A8(sub_2273B66C0, 0, j_j__objc_retain, 0);
  swift_setDeallocating();

  v12 = *(v9 + 40);

  v13 = qword_2813B2078;
  v14 = sub_22766A100();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  v15 = *(*v9 + 48);
  v16 = *(*v9 + 52);
  return swift_deallocClassInstance();
}

void sub_2273B11BC(void *a1, void *(*a2)(_OWORD *__return_ptr))
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = *(v3 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0F8, &qword_22767C9F0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v7;
  *(v11 + 40) = v6;
  v14 = qword_2813B2078;
  swift_beginAccess();
  v15 = sub_227543890(v11 + v14, v7, v6);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v188 = sub_227251C30(0);
    if (v241)
    {
      goto LABEL_67;
    }

    v189 = v188;
    [v188 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v241 = 0;
    v190 = sub_22766C9E0();
    v191 = sub_226EDAB24(v190);

    sub_226EDAB78(v191, v13);
  }

  v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[3];
  v20 = *(v16 + 16);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1C0, &qword_227684078);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = v17;
  v26 = v18;

  sub_22766A070();
  *(v24 + 16) = v25;
  *(v24 + 24) = v26;
  *(v24 + 32) = v20;
  *(v24 + 40) = v19;
  v27 = qword_2813B2078;
  swift_beginAccess();
  v28 = sub_227543788(v24 + v27, v20, v19);
  if (v28)
  {
    if (v28 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v192 = sub_227251730(0);
    if (v241)
    {
      goto LABEL_67;
    }

    v193 = v192;
    [v192 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v241 = 0;
    v194 = sub_22766C9E0();
    v195 = sub_226EDAB24(v194);

    sub_226EDAB78(v195, v26);
  }

  v29 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v30 = *v29;
  v31 = v29[1];
  v32 = v29[3];
  v33 = *(v29 + 16);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1C8, &qword_227684080);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v38 = v30;
  v39 = v31;

  sub_22766A070();
  *(v37 + 16) = v38;
  *(v37 + 24) = v39;
  *(v37 + 32) = v33;
  *(v37 + 40) = v32;
  v40 = qword_2813B2078;
  swift_beginAccess();
  v41 = sub_227543760(v37 + v40, v33, v32);
  if (v41)
  {
    if (v41 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v196 = sub_227251230(0);
    if (v241)
    {
      goto LABEL_67;
    }

    v197 = v196;
    [v196 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v241 = 0;
    v198 = sub_22766C9E0();
    v199 = sub_226EDAB24(v198);

    sub_226EDAB78(v199, v39);
  }

  v42 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[3];
  v46 = *(v42 + 16);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1D0, &qword_227684088);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  v51 = v43;
  v52 = v44;

  sub_22766A070();
  *(v50 + 16) = v51;
  *(v50 + 24) = v52;
  *(v50 + 32) = v46;
  *(v50 + 40) = v45;
  v53 = qword_2813B2078;
  swift_beginAccess();
  v54 = sub_227543738(v50 + v53, v46, v45);
  if (v54)
  {
    if (v54 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v200 = sub_227250D30(0);
    if (v241)
    {
      goto LABEL_67;
    }

    v201 = v200;
    [v200 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v241 = 0;
    v202 = sub_22766C9E0();
    v203 = sub_226EDAB24(v202);

    sub_226EDAB78(v203, v52);
  }

  v55 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v56 = *v55;
  v57 = v55[1];
  v58 = v55[3];
  v59 = *(v55 + 16);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1D8, &qword_227684090);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  v63 = swift_allocObject();
  v64 = v56;
  v65 = v57;

  sub_22766A070();
  *(v63 + 16) = v64;
  *(v63 + 24) = v65;
  *(v63 + 32) = v59;
  *(v63 + 40) = v58;
  v66 = qword_2813B2078;
  swift_beginAccess();
  v67 = sub_2275436F0(v63 + v66, v59, v58);
  if (v67)
  {
    if (v67 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v204 = sub_227250830(0);
    if (v241)
    {
      goto LABEL_67;
    }

    v205 = v204;
    [v204 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v241 = 0;
    v206 = sub_22766C9E0();
    v207 = sub_226EDAB24(v206);

    sub_226EDAB78(v207, v65);
  }

  v68 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v69 = *v68;
  v70 = v68[1];
  v71 = v68[3];
  v72 = *(v68 + 16);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7F0, &unk_22767F090);
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  v76 = swift_allocObject();
  v77 = v69;
  v78 = v70;

  sub_22766A070();
  *(v76 + 16) = v77;
  *(v76 + 24) = v78;
  *(v76 + 32) = v72;
  *(v76 + 40) = v71;
  v79 = qword_2813B2078;
  swift_beginAccess();
  v80 = sub_2275436A8(v76 + v79, v72, v71);
  if (v80)
  {
    if (v80 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v208 = sub_227284A3C(0);
    if (v241)
    {
      goto LABEL_67;
    }

    v209 = v208;
    [v208 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v241 = 0;
    v210 = sub_22766C9E0();
    v211 = sub_226EDAB24(v210);

    sub_226EDAB78(v211, v78);
  }

  v81 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v82 = *v81;
  v83 = v81[1];
  v84 = v81[3];
  v85 = *(v81 + 16);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1E0, &qword_227684098);
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  v89 = swift_allocObject();
  v90 = v82;
  v91 = v83;

  sub_22766A070();
  *(v89 + 16) = v90;
  *(v89 + 24) = v91;
  *(v89 + 32) = v85;
  *(v89 + 40) = v84;
  v92 = qword_2813B2078;
  swift_beginAccess();
  v93 = sub_227543680(v89 + v92, v85, v84);
  if (v93)
  {
    if (v93 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v212 = sub_22724FE30(0);
    if (v241)
    {
      goto LABEL_67;
    }

    v213 = v212;
    [v212 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v241 = 0;
    v214 = sub_22766C9E0();
    v215 = sub_226EDAB24(v214);

    sub_226EDAB78(v215, v91);
  }

  v94 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v95 = *v94;
  v96 = v94[1];
  v97 = v94[3];
  v98 = *(v94 + 16);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1E8, &qword_2276840A0);
  v100 = *(v99 + 48);
  v101 = *(v99 + 52);
  v102 = swift_allocObject();
  v103 = v95;
  v104 = v96;

  sub_22766A070();
  *(v102 + 16) = v103;
  *(v102 + 24) = v104;
  *(v102 + 32) = v98;
  *(v102 + 40) = v97;
  v105 = qword_2813B2078;
  swift_beginAccess();
  v106 = sub_227543638(v102 + v105, v98, v97);
  if (v106)
  {
    if (v106 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v216 = sub_22724F930(0);
    if (v241)
    {
      goto LABEL_67;
    }

    v217 = v216;
    [v216 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v241 = 0;
    v218 = sub_22766C9E0();
    v227 = sub_226EDAB24(v218);

    sub_226EDAB78(v227, v104);
  }

  v107 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v108 = *v107;
  v109 = v107[1];
  v110 = v107[3];
  v111 = *(v107 + 16);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1F0, &qword_2276840A8);
  v113 = *(v112 + 48);
  v114 = *(v112 + 52);
  v115 = swift_allocObject();
  v116 = v108;
  v117 = v109;

  sub_22766A070();
  *(v115 + 16) = v116;
  *(v115 + 24) = v117;
  *(v115 + 32) = v111;
  *(v115 + 40) = v110;
  v118 = qword_2813B2078;
  swift_beginAccess();
  v119 = sub_2275435F0(v115 + v118, v111, v110);
  if (v119)
  {
    if (v119 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v219 = sub_22724F430(0);
    if (v241)
    {
      goto LABEL_67;
    }

    v220 = v219;
    [v219 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v241 = 0;
    v221 = sub_22766C9E0();
    v222 = sub_226EDAB24(v221);

    sub_226EDAB78(v222, v117);
  }

  v120 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v121 = *v120;
  v122 = v120[1];
  v123 = v120[3];
  v124 = *(v120 + 16);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1F8, &qword_2276840B0);
  v126 = *(v125 + 48);
  v127 = *(v125 + 52);
  v128 = swift_allocObject();
  v129 = v121;
  v130 = v122;

  sub_22766A070();
  *(v128 + 16) = v129;
  *(v128 + 24) = v130;
  *(v128 + 32) = v124;
  *(v128 + 40) = v123;
  v131 = qword_2813B2078;
  swift_beginAccess();
  v132 = sub_2275435A8(v128 + v131, v124, v123);
  if (v132)
  {
    if (v132 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v223 = sub_22724EF30(0);
    if (v241)
    {
      goto LABEL_67;
    }

    v224 = v223;
    [v223 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v241 = 0;
    v225 = sub_22766C9E0();
    v226 = sub_226EDAB24(v225);

    sub_226EDAB78(v226, v130);
  }

  v133 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v134 = *v133;
  v135 = v133[1];
  v136 = v133[3];
  v137 = *(v133 + 16);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD200, &qword_2276840B8);
  v139 = *(v138 + 48);
  v140 = *(v138 + 52);
  v141 = swift_allocObject();
  v142 = v134;
  v143 = v135;

  sub_22766A070();
  *(v141 + 16) = v142;
  *(v141 + 24) = v143;
  *(v141 + 32) = v137;
  *(v141 + 40) = v136;
  v144 = qword_2813B2078;
  swift_beginAccess();
  v145 = sub_227543560(v141 + v144, v137, v136);
  if (v145)
  {
    if (v145 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v228 = sub_22724EA30(0);
    if (v241)
    {
      goto LABEL_67;
    }

    v229 = v228;
    [v228 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v241 = 0;
    v230 = sub_22766C9E0();
    v231 = sub_226EDAB24(v230);

    sub_226EDAB78(v231, v143);
  }

  v146 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v147 = *v146;
  v148 = v146[1];
  v149 = v146[3];
  v150 = *(v146 + 16);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD208, &qword_2276840C0);
  v152 = *(v151 + 48);
  v153 = *(v151 + 52);
  v154 = swift_allocObject();
  v155 = v147;
  v156 = v148;

  sub_22766A070();
  *(v154 + 16) = v155;
  *(v154 + 24) = v156;
  *(v154 + 32) = v150;
  *(v154 + 40) = v149;
  v157 = qword_2813B2078;
  swift_beginAccess();
  v158 = sub_227543518(v154 + v157, v150, v149);
  if (v158)
  {
    if (v158 == 1)
    {

      goto LABEL_37;
    }

LABEL_41:
    swift_willThrow();
    goto LABEL_67;
  }

  v232 = sub_22724E530(0);
  if (v241)
  {
    goto LABEL_67;
  }

  v233 = v232;
  [v232 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v241 = 0;
  v234 = sub_22766C9E0();
  v235 = sub_226EDAB24(v234);

  sub_226EDAB78(v235, v156);

LABEL_37:
  v159 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v160 = *v159;
  v161 = v159[1];
  v162 = v159[3];
  v163 = *(v159 + 16);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD210, &qword_2276840C8);
  v165 = *(v164 + 48);
  v166 = *(v164 + 52);
  v167 = swift_allocObject();
  v168 = v160;
  v169 = v161;

  sub_22766A070();
  *(v167 + 16) = v168;
  *(v167 + 24) = v169;
  *(v167 + 32) = v163;
  *(v167 + 40) = v162;
  v170 = qword_2813B2078;
  swift_beginAccess();
  v171 = sub_2275434D0(v167 + v170, v163, v162);
  if (v171)
  {
    if (v171 == 1)
    {

LABEL_40:
      v172 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      v173 = *v172;
      v174 = v172[1];
      v175 = *(v172 + 16);
      v176 = v172[3];
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCEA0, &qword_227681E30);
      v178 = *(v177 + 48);
      v179 = *(v177 + 52);
      v180 = swift_allocObject();
      v181 = v173;
      v182 = v174;

      sub_22766A070();
      *(v180 + 16) = v181;
      *(v180 + 24) = v182;
      *(v180 + 32) = v175;
      *(v180 + 40) = v176;
      sub_2273AB358(a2, 0, j_j__objc_retain, 0);
      swift_setDeallocating();

      v183 = *(v180 + 40);

      v184 = qword_2813B2078;
      v185 = sub_22766A100();
      (*(*(v185 - 8) + 8))(v180 + v184, v185);
      v186 = *(*v180 + 48);
      v187 = *(*v180 + 52);
      swift_deallocClassInstance();
      return;
    }

    goto LABEL_41;
  }

  v236 = sub_22724E030(0);
  if (!v241)
  {
    v237 = v236;
    [v236 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v238 = sub_22766C9E0();
    v239 = sub_226EDAB24(v238);

    sub_226EDAB78(v239, v169);

    goto LABEL_40;
  }

LABEL_67:
}