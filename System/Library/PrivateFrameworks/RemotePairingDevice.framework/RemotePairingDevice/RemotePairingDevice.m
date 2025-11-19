uint64_t OUTLINED_FUNCTION_7_1()
{
  sub_261F7D45C(v1);
  sub_261F81D84(v0, v3);
  return v2;
}

double OUTLINED_FUNCTION_7_3()
{
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
  result = 0.0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{

  return swift_allocError();
}

uint64_t sub_261F65204()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_42(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

id OUTLINED_FUNCTION_42_2@<X0>(uint64_t a1@<X0>, const char *a2@<X8>)
{
  *(v3 - 112) = a1;

  return [v2 a2];
}

uint64_t sub_261F652A8()
{
  OUTLINED_FUNCTION_43();
  *(v0 + 56) = 1;
  v1 = *(v0 + 32);
  return sub_26203974C();
}

uint64_t sub_261F65314(uint64_t result)
{
  v1 = *(result + 144) & 0xE7FF | 0x800;
  *result &= 0xFFFFFFFFFFFFFF9uLL;
  *(result + 144) = v1;
  return result;
}

uint64_t sub_261F65340()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_261F653A0();
  }

  return result;
}

void sub_261F653A0()
{
  OUTLINED_FUNCTION_96();
  v2 = v0;
  v4 = v3;
  memcpy(v61, v3, 0x92uLL);
  switch(sub_261F658D0(v61))
  {
    case 1u:
      v27 = *sub_261F65858(v61);
      memset(v60, 0, 32);
      v60[32] = 2;
      LOBYTE(v58[0]) = 0;
      memcpy(__dst, v4, sizeof(__dst));
      v28 = *sub_261F65858(__dst);
      v29 = ControlChannelConnectionError.Message.format(code:)(v58);
      sub_261F65C08(v60);
      v60[0] = 0;
      *&v60[8] = v29;
      memset(&v60[24], 0, 32);
      *&v60[56] = v27;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      v30 = swift_allocError();
      v31 = *&v60[48];
      v33 = *v60;
      v32 = *&v60[16];
      v34[2] = *&v60[32];
      v34[3] = v31;
      *v34 = v33;
      v34[1] = v32;
      sub_261F65CB0(v60, v58);
      v35 = OUTLINED_FUNCTION_72_1();
      sub_261F65D0C(v35);

      v36 = v60;
      goto LABEL_26;
    case 2u:
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      if (*(v2 + 168) != 4)
      {
        goto LABEL_27;
      }

      v6 = *(v2 + 128);
      OUTLINED_FUNCTION_162(*(v2 + 152), *(v2 + 136));
      if (v8 != 1 || v7 != 0)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_161();
      __dst[40] = 4;
      sub_261F68720(__dst);
      OUTLINED_FUNCTION_51_1();
      if (v10 < 0)
      {
      }

      else
      {
        OUTLINED_FUNCTION_3_5();
        sub_26203AC0C();
        OUTLINED_FUNCTION_85_0();

        if ((v2 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      sub_261FAF4D4();
LABEL_27:
      OUTLINED_FUNCTION_31_0();
      return;
    case 3u:
      if (qword_27FEF85B0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v11 = byte_27FEF90C8;

      v12 = OUTLINED_FUNCTION_72();
      v15 = sub_261F83BA8(v12, v13, v14);

      if (v15)
      {
        sub_26203A4AC();
        if (qword_28108B600 != -1)
        {
          OUTLINED_FUNCTION_0_11();
          swift_once();
        }

        if (OUTLINED_FUNCTION_149())
        {
          OUTLINED_FUNCTION_42_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_27_2();
          v16 = swift_slowAlloc();
          *__dst = v16;
          OUTLINED_FUNCTION_137(4.8751e-34);
          sub_261F67FE4(v17, v18, __dst);
          OUTLINED_FUNCTION_114();
          *(v11 + 4) = v1;
          OUTLINED_FUNCTION_50_1(&dword_261F5B000, v19, v20, "%{public}s: CUNetLinkManager reported the device as unavailable using ARP. Sending control channel message to probe for availability");
          __swift_destroy_boxed_opaque_existential_0Tm(v16);
          v21 = OUTLINED_FUNCTION_9_2();
          MEMORY[0x266724180](v21);
          v22 = OUTLINED_FUNCTION_8_2();
          MEMORY[0x266724180](v22);
        }

        *&v23 = OUTLINED_FUNCTION_161();
        *&__dst[40] = v23;
        *&__dst[56] = v23;
        memset(&__dst[80], 0, 17);
        *&__dst[72] = 0xC000000000000000;
        sub_261FBA7C0(__dst);
        memcpy(v60, __dst, sizeof(v60));
        OUTLINED_FUNCTION_58_1();
        sub_261FABDA0(v24, v25, v26);
      }

      else
      {
        sub_26203A48C();
        if (qword_28108B600 != -1)
        {
          OUTLINED_FUNCTION_0_11();
          swift_once();
        }

        if (OUTLINED_FUNCTION_149())
        {
          OUTLINED_FUNCTION_42_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_27_2();
          v37 = swift_slowAlloc();
          *__dst = v37;
          OUTLINED_FUNCTION_137(4.8751e-34);
          sub_261F67FE4(v38, v39, __dst);
          OUTLINED_FUNCTION_114();
          *(v11 + 4) = v1;
          OUTLINED_FUNCTION_50_1(&dword_261F5B000, v40, v41, "%{public}s: CUNetLinkManager reported the device as unavailable using ARP. Invalidating connection");
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          v42 = OUTLINED_FUNCTION_9_2();
          MEMORY[0x266724180](v42);
          v43 = OUTLINED_FUNCTION_8_2();
          MEMORY[0x266724180](v43);
        }

        *&__dst[24] = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_31_2();
        *__dst = 0xD00000000000001FLL;
        *&__dst[8] = v44;
        __dst[32] = 1;
        v60[0] = 0;
        v45 = ControlChannelConnectionError.Message.format(code:)(v60);
        sub_261F65C08(__dst);
        __dst[0] = 0;
        *&__dst[8] = v45;
        memset(&__dst[24], 0, 40);
        sub_261F65C5C();
        OUTLINED_FUNCTION_72_0();
        v46 = swift_allocError();
        OUTLINED_FUNCTION_87_0(v46, v47, v48, v49, v50, v51, v52, v53, v57, v58[0], v58[1], v58[2], v58[3], v58[4], v58[5], v58[6], v58[7], *__dst, *&__dst[16], *&__dst[32], *&__dst[48]);
        sub_261F65CB0(v54, v55);
        v56 = OUTLINED_FUNCTION_72_1();
        sub_261F65D0C(v56);

        v36 = __dst;
LABEL_26:
        sub_261F6A70C(v36);
      }

      goto LABEL_27;
    default:
      v5 = sub_261F65858(v61);
      memcpy(__dst, v5, sizeof(__dst));
      sub_261FAA09C();
      goto LABEL_27;
  }
}

uint64_t OUTLINED_FUNCTION_57()
{

  return swift_once();
}

uint64_t sub_261F658D0(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (((v1 >> 11) & 2) != 0)
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 2;
  }

  else
  {
    return (v1 >> 11) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice29ControlChannelConnectionErrorV7MessageO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

unint64_t sub_261F65C5C()
{
  result = qword_28108B7A0;
  if (!qword_28108B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B7A0);
  }

  return result;
}

void sub_261F65D0C(void *a1)
{
  v2 = a1;
  sub_261F65D98();

  sub_261F6A6D0(a1);
}

uint64_t OUTLINED_FUNCTION_80_0()
{
  result = v0[16];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[20];
  return result;
}

void sub_261F65D98()
{
  OUTLINED_FUNCTION_96();
  v3 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__invalidateCalled;
  if ((v0[OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__invalidateCalled] & 1) == 0)
  {
    v4 = v0;
    v5 = *v2;
    v6 = *&v0[OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__transaction];
    *&v0[OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__transaction] = 0;
    swift_unknownObjectRelease();
    v7 = 0;
    if (v5 >= 5)
    {
      if (v5 == 5)
      {
        sub_261F9D610();
        OUTLINED_FUNCTION_19();
        v7 = swift_allocError();
        sub_261F9BCE0();
        OUTLINED_FUNCTION_151();
        sub_26203AD3C();
      }

      else
      {
        v58 = v5;
        v7 = v5;
      }
    }

    v91 = v7;
    sub_26203A4AC();
    if (qword_28108B600 == -1)
    {
      goto LABEL_4;
    }

    while (1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
LABEL_4:
      v8 = OUTLINED_FUNCTION_152();
      if (os_log_type_enabled(v8, v9))
      {
        OUTLINED_FUNCTION_57_1();
        v10 = swift_slowAlloc();
        OUTLINED_FUNCTION_56();
        *&v100[0] = swift_slowAlloc();
        *v10 = 136446466;
        sub_261F666D8();
        sub_261F67FE4(v11, v12, v100);
        OUTLINED_FUNCTION_61_1();

        *(v10 + 4) = v1;
        *(v10 + 12) = 2080;
        __src[0] = v5;
        sub_261F68250(v5);
        v13 = sub_26203A20C();
        sub_261F67FE4(v13, v14, v100);
        OUTLINED_FUNCTION_61_1();

        *(v10 + 14) = v1;
        OUTLINED_FUNCTION_75_1();
        _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
        OUTLINED_FUNCTION_117();
        swift_arrayDestroy();
        v20 = OUTLINED_FUNCTION_16_3();
        MEMORY[0x266724180](v20);
        v21 = OUTLINED_FUNCTION_9_2();
        MEMORY[0x266724180](v21);
      }

      v22 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_invalidationReason;
      v97 = v4;
      OUTLINED_FUNCTION_88_0();
      v23 = *&v4[v22];
      *&v4[v22] = v5;
      sub_261F68250(v5);
      sub_261F68710(v23);
      v4[v3] = 1;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v25 = *(v4 + 16);
      v24 = *(v4 + 17);
      v27 = *(v4 + 18);
      v26 = *(v4 + 19);
      v28 = *(v4 + 20);
      v29 = v4[168];
      if ((v29 - 1) >= 2)
      {
        if (v29 == 3)
        {
          OUTLINED_FUNCTION_7_2();
          swift_beginAccess();
          sub_261F674BC((v4 + 320), v100, &qword_27FEF99A0, &qword_26203F7D8);
          if (*(&v100[1] + 1))
          {
            sub_261F79740(v100, __src);
            sub_261F6B73C(v25, v24);
            sub_261F66E60(v100, &qword_27FEF99A0, &qword_26203F7D8);
            v5 = __src[3];
            v45 = __src[4];
            __swift_project_boxed_opaque_existential_0Tm(__src, __src[3]);
            (*(v45 + 32))(v5, v45);
            OUTLINED_FUNCTION_1_9();
            OUTLINED_FUNCTION_73_1();
            sub_261F68B30(v46, v47, v48, v49, v28, 3, v50, v51, v89);
            __swift_destroy_boxed_opaque_existential_0Tm(__src);
          }

          else
          {
            sub_261F66E60(v100, &qword_27FEF99A0, &qword_26203F7D8);
          }
        }
      }

      else if (v25)
      {
        *(&v100[1] + 1) = MEMORY[0x277D837D0];
        *&v100[0] = 0xD00000000000001ALL;
        *(&v100[0] + 1) = 0x800000026204E5D0;
        LOBYTE(v100[2]) = 1;
        sub_261F65C5C();
        OUTLINED_FUNCTION_72_0();
        v95 = swift_allocError();
        v5 = v30;
        *v30 = 1;
        LOBYTE(__src[0]) = 1;
        OUTLINED_FUNCTION_2_7();
        OUTLINED_FUNCTION_73_1();
        sub_261F68B30(v31, v32, v33, v34, v28, v29, v35, v36, v89);
        v37 = v91;
        v38 = ControlChannelConnectionError.Message.format(code:)(__src);
        sub_261F65C08(v100);
        *(v5 + 8) = v38;
        *(v5 + 24) = 0u;
        *(v5 + 40) = 0u;
        *(v5 + 56) = v91;
        v100[0] = v95;
        LOBYTE(v100[1]) = 0;
        v25(v100);
        OUTLINED_FUNCTION_1_9();
        OUTLINED_FUNCTION_73_1();
        sub_261F68B30(v39, v40, v41, v42, v28, v29, v43, v44, v90);
        sub_261FB9BAC(*&v100[0], *(&v100[0] + 1), v100[1]);
      }

      else
      {
        OUTLINED_FUNCTION_2_7();
        OUTLINED_FUNCTION_73_1();
        sub_261F68B30(v52, v53, v54, v55, v28, v29, v56, v57, v89);
      }

      *&v100[0] = 6;
      *(v100 + 8) = 0u;
      *(&v100[1] + 8) = 0u;
      BYTE8(v100[2]) = 4;
      sub_261F68720(v100);
      v59 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__replyHandlers;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v60 = *&v4[v59];
      v63 = *(v60 + 64);
      v62 = v60 + 64;
      v61 = v63;
      v64 = 1 << *(*&v4[v59] + 32);
      v65 = -1;
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      v66 = v65 & v61;
      v3 = (v64 + 63) >> 6;
      OUTLINED_FUNCTION_31_2();
      v93 = v67;
      v94 = v68;
      OUTLINED_FUNCTION_31_2();
      v92 = v69;
      v4 = __src + 1;
      v96 = v70;

      v1 = 0;
      for (i = v91; v66; i = v5)
      {
LABEL_24:
        v73 = *(v96 + 56) + ((v1 << 10) | (16 * __clz(__rbit64(v66))));
        v74 = *v73;
        v75 = *(v73 + 8);
        v103[3] = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_151();
        v103[0] = v76;
        v103[1] = v94;
        v104 = 1;
        sub_261F65B90(v103, v101);
        if (v102)
        {
          if (v102 == 1)
          {
            sub_261F8D184(v101, v100);
            sub_261F681A8(v100, __src);
            v77 = i;

            sub_26203A20C();
            v5 = i;
            OUTLINED_FUNCTION_151();
            __src[0] = v78 - 4;
            __src[1] = v92;
            MEMORY[0x266722710]();

            v79 = __src[0];
            v80 = __src[1];
            __swift_destroy_boxed_opaque_existential_0Tm(v100);
          }

          else
          {
            v82 = i;

            OUTLINED_FUNCTION_151();
            v79 = v83 - 6;
            v5 = i;
            v80 = v93;
          }
        }

        else
        {
          v5 = i;
          v80 = *(&v101[0] + 1);
          v79 = *&v101[0];
          v81 = v5;
        }

        v66 &= v66 - 1;
        sub_261F65C08(v103);
        *(__src + 1) = v105[0];
        HIDWORD(__src[0]) = *(v105 + 3);
        LOBYTE(__src[0]) = 1;
        __src[1] = v79;
        __src[2] = v80;
        memset(&__src[3], 0, 32);
        __src[7] = v5;
        sub_261FBA8D4(__src);
        memcpy(__dst, __src, 0x7AuLL);
        v74(__dst);

        memcpy(v100, __dst, 0x7AuLL);
        sub_261FBA8E0(v100);
      }

      while (1)
      {
        v72 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v72 >= v3)
        {

          OUTLINED_FUNCTION_36_1();
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF99D8, &qword_26203F808);
          sub_26203A10C();
          swift_endAccess();
          v84 = v97[27];
          v85 = v97[28];
          __swift_project_boxed_opaque_existential_0Tm(v97 + 24, v84);
          (*(v85 + 48))(v84, v85);
          sub_261F6A480(0);
          sub_261F6A504(0);
          OUTLINED_FUNCTION_7_2();
          swift_beginAccess();
          v86 = v97[33];
          if (v86)
          {
            v87 = v97[34];

            v86(v88);

            sub_261F665E4(v86);
          }

          else
          {
          }

          goto LABEL_34;
        }

        v66 = *(v62 + 8 * v72);
        ++v1;
        if (v66)
        {
          v1 = v72;
          goto LABEL_24;
        }
      }

      __break(1u);
    }
  }

LABEL_34:
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261F665E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_once();
}

void sub_261F666D8()
{
  v1 = v0;
  v2 = v0[28];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 24, v0[27]);
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_72();
  v50 = v5(v4);
  v51 = v6;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  memcpy(__dst, v0 + 2, 0x61uLL);
  v7 = __dst[6];
  v8 = __dst[7];
  if (__dst[3])
  {
    v46 = *(v0 + 1);
    v47 = v0[4];
    v48 = __dst[3];
    OUTLINED_FUNCTION_92();
    sub_261F674BC(__dst, v45, &qword_27FEF9978, &qword_262045D80);

    sub_261F66E60(&v46, &qword_27FEF9978, &qword_262045D80);
    goto LABEL_3;
  }

  v46 = *(v0 + 1);
  v47 = v0[4];
  v48 = 0;
  OUTLINED_FUNCTION_92();
  v7 = &qword_262045D80;
  sub_261F674BC(__dst, v45, &qword_27FEF9978, &qword_262045D80);
  sub_261F66E60(&v46, &qword_27FEF9978, &qword_262045D80);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v10 = v0[15];
  if (!v10)
  {
LABEL_10:
    v7 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v11 = v10;
  CUPairedPeer.udid.getter();
  OUTLINED_FUNCTION_67_1();

  if (v8)
  {
LABEL_3:
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:
  v12 = v1[28];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 24, v1[27]);
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_39_1();
  v15(v14);
  if (v48)
  {
    v16 = v49;
    v17 = __swift_project_boxed_opaque_existential_0Tm(&v46, v48);
    v18 = *(v16 + 24);
    v19 = v17;
    v20 = OUTLINED_FUNCTION_39_1();
    v21(v20);
    OUTLINED_FUNCTION_129();
    __swift_destroy_boxed_opaque_existential_0Tm(&v46);
  }

  else
  {
    sub_261F66E60(&v46, &qword_27FEF9980, &qword_26203F7C0);
    v19 = 0;
    v16 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9988, &qword_26203F7C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26203F720;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  *(inited + 48) = v19;
  *(inited + 56) = v16;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (v1[23])
  {
    v23 = v1[22];

    v24 = OUTLINED_FUNCTION_108();
    MEMORY[0x266722710](v24);

    v25 = 0x5F6E6F6363;
    v26 = 0xE500000000000000;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v27 = 0;
  *(inited + 64) = v25;
  *(inited + 72) = v26;
  v28 = MEMORY[0x277D84F90];
LABEL_18:
  v29 = v27 - 1;
  v30 = 16 * v27 + 40;
  while (v29 != 2)
  {
    if (++v29 > 2)
    {
      __break(1u);
      return;
    }

    v31 = v30 + 16;
    v32 = *(inited + v30);
    v30 += 16;
    if (v32)
    {
      v33 = *(inited + v31 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = *(v28 + 16);
        sub_261F67ABC();
        v28 = v37;
      }

      v34 = *(v28 + 16);
      if (v34 >= *(v28 + 24) >> 1)
      {
        sub_261F67ABC();
        v28 = v38;
      }

      v27 = v29 + 1;
      *(v28 + 16) = v34 + 1;
      v35 = v28 + 16 * v34;
      *(v35 + 32) = v33;
      *(v35 + 40) = v32;
      goto LABEL_18;
    }
  }

  swift_setDeallocating();
  sub_261F67ECC(&qword_27FEF9A60, &unk_26203E650);
  v39 = OUTLINED_FUNCTION_22_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
  OUTLINED_FUNCTION_68_1(&qword_28108B318);
  v41 = sub_26203A13C();
  v43 = v42;

  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    MEMORY[0x266722710](v41, v43);

    OUTLINED_FUNCTION_182();
    MEMORY[0x266722710](10272, 0xE200000000000000);
  }
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_71_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(a29 + 48) + 40 * v29;

  return sub_261F67914(v31);
}

uint64_t sub_261F66BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FC69E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return sub_26203A8EC();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_7()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 272);

  return sub_261F665E4(v2);
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return sub_26203A8EC();
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  *(v2 - 152) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_11()
{

  return sub_26203A8CC();
}

uint64_t OUTLINED_FUNCTION_8_15()
{
  result = v0;
  v3 = *(v1 - 264);
  return result;
}

uint64_t sub_261F66E20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261F66E60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t CUPairedPeer.udid.getter()
{
  if (sub_261F6752C(v0, &selRef_info))
  {
    OUTLINED_FUNCTION_3_17();
    v20[0] = v2;
    v20[1] = v1;
    v3 = OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_12_9(v3, v4, v5, v6, v7, v8);

    sub_261F67914(v19);
    if (v20[3])
    {
      v9 = OUTLINED_FUNCTION_4_12();
      return OUTLINED_FUNCTION_5_10(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  sub_261FCB894(v20, &qword_27FEF9870, &qword_26203C960);
  return OUTLINED_FUNCTION_84();
}

uint64_t OUTLINED_FUNCTION_31()
{

  return sub_26203AE3C();
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_26203AD3C();
}

id OUTLINED_FUNCTION_3_6()
{

  return sub_261FBF774(v0, v1, v2, 0);
}

uint64_t OUTLINED_FUNCTION_3_9()
{
  result = v0;
  v3 = *(v1 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_12()
{

  return sub_26203ABAC();
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_3_23(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char __dst, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char __src)
{

  return memcpy(&__dst, &__src, 0x93uLL);
}

__n128 OUTLINED_FUNCTION_24()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

void OUTLINED_FUNCTION_24_3()
{

  JUMPOUT(0x266722710);
}

void OUTLINED_FUNCTION_1_0()
{

  JUMPOUT(0x266724180);
}

uint64_t OUTLINED_FUNCTION_24_4()
{
  v2 = *(*(v1 - 256) + 8);
  result = v0;
  v4 = *(v1 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_6()
{

  return sub_26203AB3C();
}

unint64_t sub_261F67388()
{
  v1 = *(v0 + 40);
  sub_26203A77C();
  v2 = OUTLINED_FUNCTION_23_1();

  return sub_261F673C8(v2, v3);
}

unint64_t sub_261F673C8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_261F67C78(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x266722C30](v8, a1);
    sub_261F67914(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_261F674BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_97(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_47();
  v9(v8);
  return v4;
}

void *OUTLINED_FUNCTION_138(void *a1)
{

  return memcpy(a1, (v1 - 224), 0x82uLL);
}

uint64_t sub_261F6752C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_26203A0DC();

  return v4;
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return sub_261F8C34C(&a17, &a9, v17, v18);
}

unint64_t OUTLINED_FUNCTION_20_1()
{
  v2 = *v0;

  return sub_261F67388();
}

void OUTLINED_FUNCTION_18()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_20_5()
{
  v2 = *(v0 - 104);

  return sub_26203AB3C();
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_26203A79C();
}

uint64_t OUTLINED_FUNCTION_79()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_9()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_20_10()
{
  v2 = *(v0 - 264);
}

void OUTLINED_FUNCTION_12(uint64_t a1@<X8>)
{
  *v1 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v1 + 8) = a1;
  *(v1 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return sub_26203972C();
}

uint64_t OUTLINED_FUNCTION_12_3@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;

  return sub_26203AB6C();
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return sub_26203ACEC();
}

double OUTLINED_FUNCTION_12_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_261F678B4(v6, va);
}

uint64_t OUTLINED_FUNCTION_12_12@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

double sub_261F678B4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_25_1();
  }

  v4 = sub_261F67388();
  if ((v5 & 1) == 0)
  {
    return OUTLINED_FUNCTION_25_1();
  }

  v6 = *(a1 + 56) + 32 * v4;

  sub_261F681A8(v6, a2);
  return result;
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return type metadata accessor for PairedHostInfo(0);
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_5()
{
}

uint64_t sub_261F67A58@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    v4 = sub_2620396FC();
    v5 = &protocol witness table for RemoteDevice;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

void sub_261F67ABC()
{
  OUTLINED_FUNCTION_66_1();
  if (v5)
  {
    OUTLINED_FUNCTION_51_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_64_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_18_3(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B00, &unk_26203E630);
    v9 = OUTLINED_FUNCTION_124();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_66();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_165();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_61_3(unint64_t *a1)
{

  return sub_2620247CC(a1);
}

uint64_t OUTLINED_FUNCTION_46_0(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return sub_26203A91C();
}

void OUTLINED_FUNCTION_18_3(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_18_6()
{
  v1 = *(v0 - 160);
  *(v0 - 128) = *(v0 - 168);
  *(v0 - 120) = v1;
}

void OUTLINED_FUNCTION_18_7()
{

  JUMPOUT(0x2667241A0);
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_45_1(void *a1)
{

  return memcpy(a1, v1, 0x93uLL);
}

uint64_t OUTLINED_FUNCTION_59()
{

  return swift_once();
}

void OUTLINED_FUNCTION_59_2()
{
  v1 = v0[146];
  v0[140] = v0[145];
  v0[141] = v1;
}

uint64_t sub_261F67ECC(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8D8](v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_65_1()
{

  JUMPOUT(0x266722710);
}

uint64_t sub_261F67F70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_175()
{

  return sub_261F674BC(v3 - 216, v0 + 24, v1, v2);
}

uint64_t sub_261F67FE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_261F680A8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_261F681A8(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_261F680A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_261F69424(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_26203A82C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_261F681A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_261F68250(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s6ResultOy19RemotePairingDevice08WirelessC7SessionCs5Error_pGIegg_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_68_1(unint64_t *a1)
{

  return sub_261F67F70(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_68_2()
{

  return sub_26203AD4C();
}

uint64_t OUTLINED_FUNCTION_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_3(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  *v15 = a1;

  return sub_261F67FE4(v16, v14, va);
}

uint64_t OUTLINED_FUNCTION_17_13()
{

  return sub_26203A8CC();
}

uint64_t OUTLINED_FUNCTION_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_3()
{
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);

  return sub_26203AA9C();
}

_OWORD *OUTLINED_FUNCTION_9_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, __int128 a18)
{

  return sub_261F8D184(&a18, &a15);
}

uint64_t OUTLINED_FUNCTION_9_8()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 280);

  return sub_261F665E4(v2);
}

uint64_t OUTLINED_FUNCTION_9_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a11 + 48) + 40 * v11;

  return sub_261F67914(v13);
}

uint64_t OUTLINED_FUNCTION_9_12()
{
  v1 = *(v0[107] + 8);
  result = v0[108];
  v3 = v0[111];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return sub_26203A8CC();
}

uint64_t OUTLINED_FUNCTION_9_15()
{

  return sub_26203A97C();
}

void sub_261F68710(id a1)
{
  if (a1 != 6)
  {
    sub_261F6A6D0(a1);
  }
}

uint64_t OUTLINED_FUNCTION_103()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return sub_26203AC0C();
}

uint64_t OUTLINED_FUNCTION_2_9()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 272);
  return result;
}

void OUTLINED_FUNCTION_2_13()
{

  JUMPOUT(0x266722710);
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_21()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return swift_once();
}

void sub_261F68B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(void), void (*a8)(uint64_t), void (*a9)(void))
{
  switch(a6)
  {
    case 0:
      (a7)(a2, a3);
      v9 = OUTLINED_FUNCTION_111();

      a8(v9);
      break;
    case 1:
    case 2:

      a7();
      break;
    case 3:

      a9();
      break;
    default:
      return;
  }
}

void sub_261F68C28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = v2;
  v13 = v3;
  swift_beginAccess();
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  v9 = *(v1 + 160);
  v10 = *(v1 + 168);
  sub_261F68B30(v5, v6, v7, v8, v9, v10, sub_261F7D45C, sub_261F81D84, sub_261F6B73C);
  sub_261FA9C88(v11);
  sub_261F68B30(v5, v6, v7, v8, v9, v10, sub_261F99050, sub_261F6ADEC, sub_261F6BFFC);
}

Swift::Void __swiftcall OS_dispatch_queue.assertOnQueueHierarchy()()
{
  v1 = sub_26203A07C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_74();
  v9 = (v8 - v7);
  v10 = OS_dispatch_queue.parentQueue.getter();
  if (v10)
  {
    v13 = v10;
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  else
  {
    *v9 = v0;
    (*(v4 + 104))(v9, *MEMORY[0x277D85200], v1);
    v11 = v0;
    v12 = sub_26203A0AC();
    (*(v4 + 8))(v9, v1);
    if ((v12 & 1) == 0)
    {
      __break(1u);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_4()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17) == 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return sub_26203A91C();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_20@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  result = a1[1];
  v4 = *(a1 + 16);
  *v1 = v3;
  *(v1 + 8) = result;
  *(v1 + 16) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_31@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return swift_once();
}

uint64_t OS_dispatch_queue.parentQueue.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27FEFA178);
  swift_endAccess();
  if (v1)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_261F6935C();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_261F693A0(v6);
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return sub_26203A0FC();
}

uint64_t OUTLINED_FUNCTION_69_2()
{

  return sub_26203AD3C();
}

unint64_t sub_261F6935C()
{
  result = qword_28108CFB0;
  if (!qword_28108CFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28108CFB0);
  }

  return result;
}

uint64_t sub_261F693A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice24ControlChannelConnectionC5StateO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_261F69424(uint64_t a1, unint64_t a2)
{
  v4 = sub_261F69470(a1, a2);
  sub_261F695F8(&unk_2874891B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_261F69470(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26203A27C())
  {
    result = sub_261F69588(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26203A7AC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26203A82C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_261F69588(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9918, &qword_26203F700);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_261F695F8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_261FA3764(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_261F696DC(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *v2;
  v11 = *(v2 + 8);
  v13 = *(v2 + 16);
  v12 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = *(v2 + 40);
  v133[0] = *a1;
  v133[1] = v3;
  v133[2] = v6;
  v133[3] = v5;
  v133[4] = v7;
  v134 = v8;
  v135 = v10;
  v136 = v11;
  v137 = v13;
  v138 = v12;
  v139 = v14;
  v140 = v15;
  switch(v15)
  {
    case 1:
      if (v8)
      {
        v40 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v40, v41, v42, v43, v44, v45);
        v27 = OUTLINED_FUNCTION_0_6();
        v32 = 1;
        goto LABEL_53;
      }

      v52 = "sThroughLockdown";
      v53 = 0;
      switch(v4)
      {
        case 1:
          OUTLINED_FUNCTION_6_4();
          break;
        case 2:
          v53 = 0;
          v52 = "setupManualPairing";
          break;
        case 3:
          v53 = 0;
          v52 = "tionLockdownPairing";
          break;
        default:
          break;
      }

      if (v53 && (v52 | 0x8000000000000000) == 0x800000026204C570)
      {
        v96 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v96, v97, v98, v99, v100, 0);
        v73 = 1;
        v101 = OUTLINED_FUNCTION_0_6();
        sub_261F69F78(v101, v102, v103, v104, v105, 1);

        sub_261F6A254(v133);
      }

      else
      {
        v106 = v7;
        v132 = sub_26203AC0C();
        v107 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v107, v108, v109, v110, v106, 0);
        v73 = 1;
        v111 = OUTLINED_FUNCTION_0_6();
        sub_261F69F78(v111, v112, v113, v114, v115, 1);

        sub_261F6A254(v133);
        if ((v132 & 1) == 0)
        {
          return 0;
        }
      }

      return v73;
    case 2:
      if (v8)
      {
        v21 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v21, v22, v23, v24, v25, v26);
        v27 = OUTLINED_FUNCTION_0_6();
        v32 = 2;
        goto LABEL_53;
      }

      v46 = 0;
      v47 = "sThroughLockdown";
      switch(v4)
      {
        case 1:
          OUTLINED_FUNCTION_6_4();
          break;
        case 2:
          v47 = "setupManualPairing";
          v46 = 1;
          break;
        case 3:
          v46 = 0;
          v47 = "tionLockdownPairing";
          break;
        default:
          break;
      }

      if (v46 && (v47 | 0x8000000000000000) == 0x800000026204C590)
      {
        v76 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v76, v77, v78, v79, v80, 0);
        v81 = OUTLINED_FUNCTION_0_6();
        sub_261F69F78(v81, v82, v83, v84, v85, 2);
        goto LABEL_111;
      }

      v86 = v7;
      v131 = sub_26203AC0C();
      v87 = OUTLINED_FUNCTION_1_6();
      sub_261F69F78(v87, v88, v89, v90, v86, 0);
      v91 = OUTLINED_FUNCTION_0_6();
      sub_261F69F78(v91, v92, v93, v94, v95, 2);

      if (v131)
      {
        goto LABEL_112;
      }

      switch(v4)
      {
        case 1:
          OUTLINED_FUNCTION_6_4();
          break;
        case 3:
          goto LABEL_111;
        default:
          break;
      }

      v18 = sub_26203AC0C();
      goto LABEL_91;
    case 3:
      v33 = v8 == 4 && v4 == 5;
      if (!v33 || (OUTLINED_FUNCTION_3_2(), v49))
      {
        v34 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v34, v35, v36, v37, v38, v39);
        v27 = OUTLINED_FUNCTION_0_6();
        v32 = 3;
        goto LABEL_53;
      }

      if (!v48)
      {
        v18 = OUTLINED_FUNCTION_2_3();
        v74 = v10;
        v75 = v11;
        goto LABEL_56;
      }

      v50 = v10;
      v51 = v11;
LABEL_27:
      sub_261F6B73C(v50, v51);
      goto LABEL_111;
    case 4:
      if (!(v13 | v11 | v10 | v12 | v14))
      {
        goto LABEL_52;
      }

      v19 = v13 | v11 | v12 | v14;
      if (v10 == 1 && !v19)
      {
        if (v8 == 4)
        {
          v20 = v6 | v3 | v4 | v5 | v7;
          goto LABEL_41;
        }

        goto LABEL_52;
      }

      if (v10 == 2 && !v19)
      {
        if (v8 == 4 && v4 == 1)
        {
          v20 = v6 | v3 | v5 | v7;
LABEL_41:
          if (!v20)
          {
            goto LABEL_112;
          }
        }

LABEL_52:
        v27 = OUTLINED_FUNCTION_1_6();
        goto LABEL_53;
      }

      if (v10 == 3 && !v19)
      {
        if (v8)
        {
          goto LABEL_52;
        }

        v118 = "sThroughLockdown";
        v119 = 1;
        v120 = "sThroughLockdown";
        switch(v4)
        {
          case 1:
            OUTLINED_FUNCTION_6_4();
            break;
          case 2:
            v119 = 0;
            v120 = "setupManualPairing";
            break;
          case 3:
            v119 = 0;
            v120 = "tionLockdownPairing";
            break;
          default:
            break;
        }

        if (v119 && (v120 | 0x8000000000000000) == (v118 | 0x8000000000000000))
        {
LABEL_110:
          OUTLINED_FUNCTION_7_1();
LABEL_111:

          goto LABEL_112;
        }

LABEL_115:
        v124 = sub_26203AC0C();
        OUTLINED_FUNCTION_7_1();

        sub_261F6A254(v133);
        return (v124 & 1) != 0;
      }

      if (v10 != 4 || v19)
      {
        if (v10 != 5 || v19)
        {
          if (v10 == 6 && !v19)
          {
            v60 = OUTLINED_FUNCTION_1_6();
LABEL_32:
            sub_261F69F78(v60, v61, v62, v63, v64, v65);
            goto LABEL_112;
          }

          if (v10 == 7 && !v19)
          {
            if (v8 != 4 || v4 != 3)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_3_2();
            if (v122)
            {
              goto LABEL_52;
            }

LABEL_104:
            if ((v116 & 1) == 0)
            {
              goto LABEL_111;
            }

            v18 = OUTLINED_FUNCTION_4_1();
            goto LABEL_91;
          }

          if (v8 != 4 || v4 != 2)
          {
            goto LABEL_52;
          }

          OUTLINED_FUNCTION_3_2();
          if (v127)
          {
            goto LABEL_52;
          }

          if (v126)
          {
            goto LABEL_111;
          }

          v18 = OUTLINED_FUNCTION_2_3();
        }

        else
        {
          switch(v8)
          {
            case 0:
              v128 = "sThroughLockdown";
              v129 = 0;
              v130 = "setupManualPairing";
              switch(v4)
              {
                case 1:
                  OUTLINED_FUNCTION_6_4();
                  break;
                case 2:
                  v129 = 0;
                  v128 = "setupManualPairing";
                  break;
                case 3:
                  v129 = 0;
                  v128 = "tionLockdownPairing";
                  break;
                default:
                  break;
              }

              if (!v129 || (v128 | 0x8000000000000000) != ((v130 - 32) | 0x8000000000000000))
              {
                goto LABEL_115;
              }

              goto LABEL_110;
            case 1:
            case 2:
              goto LABEL_86;
            case 3:
              if (v9)
              {
                v50 = v4;
                v51 = v3;
                goto LABEL_27;
              }

              v18 = OUTLINED_FUNCTION_2_3();
              v74 = v4;
              v75 = v3;
              break;
            case 4:
              v20 = v6 | v3 | v5 | v7;
              if (v4 == 2 && !v20 || v4 == 3 && !v20)
              {
                goto LABEL_112;
              }

              if (v4 != 4)
              {
                goto LABEL_52;
              }

              goto LABEL_41;
            default:
              goto LABEL_52;
          }

LABEL_56:
          sub_261F6B73C(v74, v75);
        }

LABEL_91:

        sub_261F6A254(v133);
        return (v18 & 1) != 0;
      }

      if (v8 != 1 && v8 != 2)
      {
        if (v8 != 4)
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_3_2();
        if (v4 == 3 && !v117)
        {
          goto LABEL_112;
        }

        if (v4 != 7 || v117)
        {
          goto LABEL_52;
        }

        goto LABEL_104;
      }

LABEL_86:
      sub_261F7D45C(v4);
LABEL_112:
      sub_261F6A254(v133);
      return 1;
    default:
      if (v8 == 3)
      {
        v54 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v54, v55, v56, v57, v58, v59);
        v60 = OUTLINED_FUNCTION_0_6();
        v65 = 0;
        goto LABEL_32;
      }

      if (v8 != 4)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_3_2();
      if (v4 == 2 && !v17)
      {
        if (v16)
        {
          v18 = OUTLINED_FUNCTION_4_1();
          OUTLINED_FUNCTION_5_0();
          goto LABEL_91;
        }

        OUTLINED_FUNCTION_5_0();
        goto LABEL_111;
      }

      if (v4 == 5 && !v17 || v4 == 8 && !v17)
      {
        OUTLINED_FUNCTION_5_0();
        goto LABEL_112;
      }

LABEL_48:
      v67 = OUTLINED_FUNCTION_1_6();
      sub_261F69F78(v67, v68, v69, v70, v71, v72);
      v27 = OUTLINED_FUNCTION_0_6();
      v32 = 0;
LABEL_53:
      sub_261F69F78(v27, v28, v29, v30, v31, v32);
      sub_261F6A254(v133);
      return 0;
  }
}

uint64_t sub_261F69F78(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
      sub_261F7D45C(a2);

      result = sub_261F81D84(a4, a5);
      break;
    case 1:
    case 2:

      result = sub_261F7D45C(result);
      break;
    case 3:

      result = sub_261F6B73C(result, a2);
      break;
    default:
      return result;
  }

  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_1_4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17) == 0;
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return sub_26203AD3C();
}

void OUTLINED_FUNCTION_1_19()
{

  sub_261FA447C();
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return sub_26203AD3C();
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return swift_once();
}

uint64_t sub_261F6A254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF96C8, &unk_26203E9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_8()
{
  v3 = *(v1 - 304);

  return sub_26202D0F8(v0, v3);
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_slowAlloc();
}

void sub_261F6A480(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__encryptionStream);
  *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__encryptionStream) = a1;
  v2 = a1;
  sub_261F6A4E0(v3);
}

id sub_261F6A4E0(id result)
{
  if (result)
  {
    return [*(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) closeStream_];
  }

  return result;
}

void sub_261F6A504(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession);
  *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) = a1;
  v2 = a1;
  [v3 invalidate];
}

uint64_t sub_261F6A58C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261F6A5C4()
{
  sub_26203ADDC();
  v1 = *v0;
  swift_getWitnessTable();
  HashableByObjectIdentity.hash(into:)();
  return sub_26203AE0C();
}

BOOL sub_261F6A658(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static HashableByObjectIdentity.== infix(_:_:)(v2, v3);
}

void sub_261F6A6D0(id a1)
{
  if (a1 >= 6)
  {
  }
}

uint64_t OUTLINED_FUNCTION_90_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return sub_261F665E4(v5);
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice28ControlChannelTransportEventO(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (((v1 >> 11) & 2) != 0)
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 2;
  }

  else
  {
    return (v1 >> 11) & 3;
  }
}

uint64_t ControlChannelConnection.deinit()
{
  v21 = *(v0 + 112);
  sub_261F6AABC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  OUTLINED_FUNCTION_80_0();
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_1_9();
  sub_261F68B30(v2, v3, v4, v5, v6, v7, sub_261F99050, sub_261F6ADEC, v20);
  v8 = *(v0 + 184);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 192));

  v9 = *(v0 + 256);
  sub_261F665E4(*(v0 + 248));
  v10 = *(v0 + 272);
  sub_261F665E4(*(v0 + 264));
  v11 = *(v0 + 288);
  sub_261F665E4(*(v0 + 280));
  v12 = *(v0 + 304);
  sub_261F665E4(*(v0 + 296));
  sub_261F66E60(v0 + 320, &qword_27FEF99A0, &qword_26203F7D8);
  sub_261F66E60(v0 + 360, &qword_27FEF99A8, &qword_26203F7E0);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 400));
  sub_261F66E60(v0 + 440, &qword_27FEF99B0, &qword_26203F7E8);
  sub_261F66E60(v0 + 480, &qword_27FEF99B8, &qword_26203F7F0);

  v13 = *(v0 + 552);
  sub_261F665E4(*(v0 + 544));
  v14 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_startedAt;
  v15 = sub_26203A03C();
  OUTLINED_FUNCTION_6_1(v15);
  (*(v16 + 8))(v0 + v14);
  v17 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__replyHandlers);

  sub_261F6ADEC(*(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__mdmChallengeData), *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__mdmChallengeData + 8));
  v18 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__transaction);
  swift_unknownObjectRelease();

  sub_261F68710(*(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_invalidationReason));
  return v0;
}

uint64_t ControlChannelConnection.__deallocating_deinit()
{
  ControlChannelConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_261F6AABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a4)
  {

    sub_261F6ADEC(a11, a12);
  }
}

uint64_t RemoteXPCControlChannelTransport.__deallocating_deinit()
{
  RemoteXPCControlChannelTransport.deinit();

  return MEMORY[0x2821FE8D8](v0, 60, 7);
}

void *RemoteXPCControlChannelTransport.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t sub_261F6AB9C()
{
  v1 = v0;
  v2 = v0[29];
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_26203A7CC();
  v12[6] = 0;
  v12[7] = 0xE000000000000000;
  MEMORY[0x266722710](0xD000000000000031, 0x800000026204E3A0);
  sub_261F79740((v0 + 24), v12);
  __swift_project_boxed_opaque_existential_0Tm(v12, v12[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v3 = sub_26203AE8C();
  MEMORY[0x266722710](v3);

  sub_26203A21C();
  OUTLINED_FUNCTION_70();

  v4 = os_transaction_create();

  v5 = *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__transaction);
  *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__transaction) = v4;
  swift_unknownObjectRelease();
  v12[0] = 1;
  OUTLINED_FUNCTION_14_4();
  sub_261F68720(v6);
  v7 = v1[27];
  v8 = v1[28];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 24, v7);
  OUTLINED_FUNCTION_63();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = *(v8 + 32);

  v10(v2, sub_261F65338, v9, v7, v8);
}

uint64_t sub_261F6AD48()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_once();
}

uint64_t sub_261F6ADEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_261F6BFFC(a1, a2);
  }

  return a1;
}

uint64_t sub_261F6AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);

  v16(a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_261F6AEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v88 = a5;
  v89 = a4;
  __dst[15] = *MEMORY[0x277D85DE8];
  v8 = sub_26203A07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_52;
  }

  v85 = a6;
  v14 = (result + 88);
  v15 = result;
  if (!*(result + 88))
  {
    sub_26203A48C();
    if (qword_28108B5E0 != -1)
    {
      goto LABEL_59;
    }

    goto LABEL_50;
  }

  v16 = *(result + 80);
  *v12 = v16;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v17 = v16;
  LOBYTE(v16) = sub_26203A0AC();
  (*(v9 + 8))(v12, v8);
  if ((v16 & 1) == 0)
  {
    goto LABEL_57;
  }

  if (!a2 || !v89)
  {
    __break(1u);
    goto LABEL_62;
  }

  v19 = &unk_28108B000;
  if (!v88)
  {
    goto LABEL_58;
  }

  v81 = v14;
  v82 = v15;
  v20 = 0;
  v87 = ", dropping %d packets";
  v83 = MEMORY[0x277D84F90];
  *&v18 = 138543362;
  v84 = v18;
  v21 = v85;
  while (1)
  {
    if (v21 == v20)
    {
      v63 = v82;
      v64 = v83;
      v65 = v83[2];
      if (v65)
      {
        v66 = (v83 + 4);
        do
        {
          memcpy(__dst, v66, 0x60uLL);
          memcpy(v91, __dst, sizeof(v91));
          sub_261F6D6B0(__dst, &v90);
          sub_261F6CDE4();
          sub_261F6D70C(__dst);
          v66 += 96;
          --v65;
        }

        while (v65);
      }

      v67 = v81;
      v68 = *v81;
      if (*v81)
      {
        v69 = *(v63 + 96);
        *v81 = 0;
        v67[1] = 0;
        __dst[0] = v64;
        __dst[1] = nullsub_1;
        __dst[2] = 0;
        v68(__dst);
        sub_261F665E4(v68);

        goto LABEL_51;
      }

LABEL_62:
      __break(1u);
      JUMPOUT(0x261F6B72CLL);
    }

    if (v20 >= v21)
    {
      break;
    }

    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_54;
    }

    v23 = *(v89 + 8 * v20);
    if (!v23)
    {
      __break(1u);
    }

    v24 = *(v88 + 8 * v20);
    if (v24)
    {
      if (v24 <= 0xE)
      {
        *(__dst + 6) = 0;
        __dst[0] = 0;
        BYTE6(__dst[1]) = v24;
        memcpy(__dst, v23, v24);
        v30 = __dst[0];
        v31 = v86 & 0xF00000000000000 | LODWORD(__dst[1]) | ((WORD2(__dst[1]) | (BYTE6(__dst[1]) << 16)) << 32);
        v86 = v31;
      }

      else
      {
        v25 = sub_2620393BC();
        v26 = *(v25 + 48);
        v27 = *(v25 + 52);
        swift_allocObject();
        v28 = sub_26203936C();
        v29 = v28;
        if (v24 >= 0x7FFFFFFF)
        {
          sub_2620394AC();
          v30 = swift_allocObject();
          *(v30 + 16) = 0;
          *(v30 + 24) = v24;
          v31 = v29 | 0x8000000000000000;
        }

        else
        {
          v30 = v24 << 32;
          v31 = v28 | 0x4000000000000000;
        }
      }

      switch(v31 >> 62)
      {
        case 1uLL:
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_55;
          }

          v32 = HIDWORD(v30) - v30;
LABEL_24:
          sub_261F6B73C(v30, v31);
          sub_261F6B73C(v30, v31);
LABEL_25:
          if (v32 <= 39)
          {
            sub_261F6BFFC(v30, v31);
            goto LABEL_27;
          }

          sub_261F6B73C(v30, v31);
          IPv6Header.init(_:)();
          v45 = __dst[0];
          v44 = __dst[1];
          v46 = __dst[2];
          v47 = __dst[3];
          v48 = __dst[4];
          v50 = __dst[5];
          v49 = __dst[6];
          v79 = __dst[1];
          v80 = LOBYTE(__dst[2]);
          if (qword_28108CB70 != -1)
          {
            swift_once();
            v46 = v80;
            v44 = v79;
          }

          if (byte_27FF07DF0)
          {
            __dst[0] = v45;
            __dst[1] = v44;
            LOBYTE(__dst[2]) = v46;
            __dst[3] = v47;
            __dst[4] = v48;
            __dst[5] = v50;
            __dst[6] = v49;
            sub_261F6B73C(v47, v48);
            sub_261F6B73C(v50, v49);
            sub_2620043E4(__dst, v30, v31, v91);
            sub_261F6BFFC(v30, v31);
            v51 = v91[1];
            v76 = v91[0];
          }

          else
          {
            sub_261F6BFFC(v30, v31);
            sub_261F6BFFC(v30, v31);
            v76 = 0;
            v51 = 0xF000000000000000;
          }

          v75 = v51;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = v50;
          v78 = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v60 = v83[2];
            sub_261F6C054();
            v83 = v61;
          }

          v53 = v80;
          v54 = v83[2];
          if (v54 >= v83[3] >> 1)
          {
            sub_261F6C054();
            v53 = v80;
            v83 = v62;
          }

          v55 = v83;
          v83[2] = v54 + 1;
          v56 = &v55[12 * v54];
          *(v56 + 8) = 30;
          v57 = v79;
          v56[5] = v45;
          v56[6] = v57;
          *(v56 + 56) = v53;
          LODWORD(v57) = *(__dst + 3);
          *(v56 + 57) = __dst[0];
          *(v56 + 15) = v57;
          v56[8] = v47;
          v56[9] = v48;
          v58 = v78;
          v56[10] = v77;
          v56[11] = v58;
          v59 = v75;
          v56[12] = v76;
          v56[13] = v59;
          v56[14] = v30;
          v56[15] = v31;
          v20 = v22;
          v21 = v85;
          v19 = &unk_28108B000;
          break;
        case 2uLL:
          v34 = *(v30 + 16);
          v33 = *(v30 + 24);
          v32 = v33 - v34;
          if (!__OFSUB__(v33, v34))
          {
            goto LABEL_24;
          }

          goto LABEL_56;
        case 3uLL:
          goto LABEL_27;
        default:
          v32 = BYTE6(v31);
          goto LABEL_25;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0xC000000000000000;
LABEL_27:
      sub_261F9BCE0();
      sub_26203ACEC();
      v91[0] = __dst[0];
      v91[1] = __dst[1];
      sub_261F9D610();
      v35 = swift_allocError();
      sub_26203AD4C();
      swift_willThrow();
      sub_261F6BFFC(v30, v31);
      v36 = sub_26203A48C();
      v37 = v36;
      if (v19[188] != -1)
      {
        swift_once();
      }

      v38 = qword_28108B5F0;
      if (os_log_type_enabled(qword_28108B5F0, v37))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = v84;
        v41 = v35;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_261F5B000, v38, v37, "Discarding packet data as it is not a valid IPv6 packet: %{public}@", v39, 0xCu);
        sub_261FC2F14(v40, qword_27FEF9B90, &qword_262040548);
        v43 = v40;
        v21 = v85;
        MEMORY[0x266724180](v43, -1, -1);
        MEMORY[0x266724180](v39, -1, -1);
      }

      sub_261F6BFFC(v30, v31);

      ++v20;
      v19 = &unk_28108B000;
    }
  }

  __break(1u);
LABEL_54:
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
  swift_once();
LABEL_50:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AA0, &qword_262040540);
  v70 = swift_allocObject();
  v71 = MEMORY[0x277D83B88];
  *(v70 + 16) = xmmword_26203E9E0;
  v72 = MEMORY[0x277D83C10];
  *(v70 + 56) = v71;
  *(v70 + 64) = v72;
  *(v70 + 32) = v85;
  sub_26203969C();

LABEL_51:

LABEL_52:
  v73 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_261F6B73C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t IPv6Header.init(_:)()
{
  OUTLINED_FUNCTION_13_6();
  if (v3 < 40)
  {
    sub_261F9BCE0();
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_4_8();

    v4 = OUTLINED_FUNCTION_1_1();
    MEMORY[0x266721A20](v4);
    v5 = OUTLINED_FUNCTION_3_12();
    MEMORY[0x266722710](v5);

    OUTLINED_FUNCTION_2_13();
    v6 = OUTLINED_FUNCTION_3_12();
    MEMORY[0x266722710](v6);

    OUTLINED_FUNCTION_5_8();
    sub_261F9D610();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_0_0();
    sub_26203AD4C();
    swift_willThrow();
    v7 = OUTLINED_FUNCTION_1_1();
    return sub_261F6BFFC(v7, v8);
  }

  OUTLINED_FUNCTION_11_5();
  switch(v13)
  {
    case 1:
      v11 = v12;
      break;
    case 2:
      v11 = *(v2 + 16);
      break;
    default:
      break;
  }

  v14 = __OFADD__(v11, 4);
  v15 = v11 + 4;
  if (v14)
  {
    __break(1u);
    goto LABEL_23;
  }

  v16 = v15 + 2;
  if (__OFADD__(v15, 2))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  switch(v10)
  {
    case 1:
      goto LABEL_12;
    case 2:
      v12 = *(v2 + 16);
LABEL_12:
      if (v15 < v12)
      {
        goto LABEL_26;
      }

      if (v10 != 2)
      {
        goto LABEL_18;
      }

      v17 = *(v2 + 24);
      break;
    case 3:
      if (v15 < 0)
      {
        goto LABEL_27;
      }

      if (v16 <= 0)
      {
        goto LABEL_20;
      }

      __break(1u);
LABEL_18:
      v17 = v2 >> 32;
      break;
    default:
      if (v15 < 0)
      {
        goto LABEL_28;
      }

      v17 = BYTE6(v0);
      break;
  }

  if (v17 < v16)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    JUMPOUT(0x261F6B9F0);
  }

LABEL_20:
  if (v15 >= v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = OUTLINED_FUNCTION_1_1();
  v29 = sub_261F6BE04(v18, v19, 4);
  v20 = sub_26203950C();
  v21 = OUTLINED_FUNCTION_16_6();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_16_6();
  v26 = v25;
  v27 = OUTLINED_FUNCTION_1_1();
  result = sub_261F6BFFC(v27, v28);
  *v1 = 40;
  *(v1 + 8) = v29;
  *(v1 + 16) = v20;
  *(v1 + 24) = v21;
  *(v1 + 32) = v23;
  *(v1 + 40) = v24;
  *(v1 + 48) = v26;
  return result;
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return sub_26203ADDC();
}

uint64_t OUTLINED_FUNCTION_13_5@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_261FD36BC(v3 + a2, v2, a1);
}

void OUTLINED_FUNCTION_13_6()
{

  JUMPOUT(0x266721A20);
}

_OWORD *OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  v18 = (*(v15 + 56) + 32 * v16);

  return sub_261F8D184(v18, &a15);
}

uint64_t OUTLINED_FUNCTION_13_12()
{

  return sub_26203A91C();
}

uint64_t OUTLINED_FUNCTION_13_13()
{

  return sub_26203A97C();
}

uint64_t OUTLINED_FUNCTION_13_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_1()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  return result;
}

void OUTLINED_FUNCTION_11_2()
{

  JUMPOUT(0x266722710);
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_11_11()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_16_2(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return sub_2620394FC();
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return sub_26203A97C();
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_16_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x16u);
}

uint64_t sub_261F6BE04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v11 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = v11;
      goto LABEL_8;
    case 2uLL:
      v6 = *(a1 + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v8 = v6;
LABEL_8:
      result = sub_261F6BF7C(a1, v8, v7, a3);
      v12 = *MEMORY[0x277D85DE8];
      return result;
    case 3uLL:
      memset(v13, 0, 14);
      v4 = *(v13 + a3);
      v9 = *MEMORY[0x277D85DE8];
      return bswap32(v4) >> 16;
    default:
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      v4 = *(v13 + a3);
      v5 = *MEMORY[0x277D85DE8];
      return bswap32(v4) >> 16;
  }
}

uint64_t sub_261F6BF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26203937C();
  if (v6)
  {
    v7 = v6;
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = a1 - result + v7;
  }

  else
  {
    v9 = 0;
  }

  result = sub_26203939C();
  if (v9)
  {
    return bswap32(*(v9 + a4)) >> 16;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_261F6BFFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_261F6C054()
{
  OUTLINED_FUNCTION_66_1();
  if (v5)
  {
    OUTLINED_FUNCTION_51_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_64_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_18_3(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AC8, &qword_262040310);
    v9 = OUTLINED_FUNCTION_103();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_40_1(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_165();
  if (v1)
  {
    if (v9 != v0 || &v12[96 * v2] <= v11)
    {
      memmove(v11, v12, 96 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_261F6C158(id a1, unint64_t a2, char a3, uint64_t a4, void (*a5)(id, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (a3)
  {
    v10 = a1;
    v11 = 1;
  }

  else
  {
    v14 = a1;
    v15 = a2;
    sub_261F6B73C(a1, a2);
    sub_261F6C3D8(&v14, a7, a8, &v16);
    sub_261F6BFFC(v14, v15);
    v9 = v16;
    v11 = v17;
  }

  a5(v9, v11);

  sub_261F79EA0(v9, v11);
}

uint64_t sub_261F6C230(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 16))(a3, a4);
  if (v11 >> 60 == 15)
  {
    v12 = sub_261F6B73C(a1, a2);
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v18 = v10;
    v19 = v11;
    sub_261F6B73C(v10, v11);
    sub_26200BABC(a1, a2);
    v12 = sub_261F6ADEC(v13, v14);
    a1 = v18;
    a2 = v19;
  }

  v18 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v12);
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = &v18;
  v17[5] = v4;
  sub_261F6C44C(sub_261F6CC04, v17, a1, a2);
  sub_261F6BFFC(a1, a2);
  v15 = v18;
  if (v5)
  {
  }

  return v15;
}

uint64_t sub_261F6C380@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  result = sub_261F6C230(a1, a2, a3, a4);
  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_261F6C3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_261F6C380(*a1, *(a1 + 8), a2, a3, &v6, &v7);
  *a4 = v7;
  *(a4 + 8) = 0;
  return result;
}

uint64_t sub_261F6C44C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v6 = a3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
LABEL_8:
      result = sub_261F6C654(v6, v7, a1);
      goto LABEL_9;
    case 3uLL:
      v10 = 0;
      v12 = 0;
      v11 = 0;
      v5 = &v10;
      goto LABEL_5;
    default:
      v10 = a3;
      LOWORD(v11) = a4;
      BYTE2(v11) = BYTE2(a4);
      HIBYTE(v11) = BYTE3(a4);
      LOBYTE(v12) = BYTE4(a4);
      HIBYTE(v12) = BYTE5(a4);
      v5 = (&v10 + BYTE6(a4));
LABEL_5:
      result = a1(&v10, v5);
LABEL_9:
      v9 = *MEMORY[0x277D85DE8];
      return result;
  }
}

uint64_t sub_261F6C5A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

unint64_t sub_261F6C5D8()
{
  result = qword_28108B258;
  if (!qword_28108B258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEFA510, &qword_262045938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B258);
  }

  return result;
}

uint64_t sub_261F6C654(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_26203937C();
  v7 = result;
  if (result)
  {
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_26203939C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

int64_t sub_261F6C6FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = a1;
  if (a1)
  {
    while (1)
    {
      v10 = a2 - v9;
      if (a2 - v9 < 40)
      {
        break;
      }

      if (sub_261F6C5A4(0, a2 - v9, v9, a2) >= 0x28)
      {
        v11 = 40;
      }

      else
      {
        v11 = a2 - v9;
      }

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA510, &qword_262045938);
      *(&v61 + 1) = v12;
      v13 = sub_261F6C5D8();
      v62 = v13;
      v14 = swift_allocObject();
      *&v60 = v14;
      v14[2] = 0;
      v14[3] = v11;
      v14[4] = v9;
      v14[5] = a2;
      v15 = __swift_project_boxed_opaque_existential_0Tm(&v60, v12);
      v58 = *v15;
      v59 = v15[1];
      sub_26203ADAC();
      __swift_destroy_boxed_opaque_existential_0Tm(&v60);
      result = IPv6Header.init(_:)();
      if (v7)
      {
        return result;
      }

      v56 = v64;
      v57 = v63;
      result = v63 + v64;
      if (__OFADD__(v63, v64))
      {
        __break(1u);
        goto LABEL_29;
      }

      v18 = v66;
      v17 = v67;
      v19 = v69;
      v52 = a2 - v9;
      v53 = v68;
      v20 = result - (a2 - v9);
      if (result > a2 - v9)
      {
        sub_261F6BFFC(v66, v67);
        sub_261F6BFFC(v53, v19);
        if (a2 == v9)
        {
          goto LABEL_24;
        }

        v42 = a6;
        v43 = *(a6 + 48);
        result = v20;
        goto LABEL_26;
      }

      v55 = v65;
      v50 = v63 + v64;
      v51 = v9;
      v21 = sub_261F6DE7C(result, v9, a2);
      v23 = v22;
      v25 = v24;
      v70 = 0;
      v27 = v26;
      v66 = v12;
      v67 = v13;
      v28 = swift_allocObject();
      v63 = v28;
      v28[2] = v21;
      v28[3] = v23;
      v28[4] = v25;
      v28[5] = v27;
      v29 = __swift_project_boxed_opaque_existential_0Tm(&v63, v12);
      v30 = v29[1];
      v60 = *v29;
      v61 = v30;
      v31 = v70;
      sub_26203ADAC();
      v70 = v31;
      __swift_destroy_boxed_opaque_existential_0Tm(&v63);
      sub_261F6B73C(v18, v17);
      sub_261F6B73C(v53, v19);
      sub_261F6B73C(v18, v17);
      sub_261F6B73C(v53, v19);
      sub_261F6B73C(v58, *(&v58 + 1));
      if (qword_28108CB70 != -1)
      {
        swift_once();
      }

      if (byte_27FF07DF0 == 1)
      {
        v63 = v57;
        v64 = v56;
        v65 = v55;
        v66 = v18;
        v67 = v17;
        v68 = v53;
        v69 = v19;
        sub_2620043E4(&v63, v58, *(&v58 + 1), &v60);
        v32 = *(&v60 + 1);
        v49 = v60;
      }

      else
      {
        sub_261F6BFFC(v18, v17);
        sub_261F6BFFC(v53, v19);
        sub_261F6BFFC(v58, *(&v58 + 1));
        v49 = 0;
        v32 = 0xF000000000000000;
      }

      v48 = v32;
      v33 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v33;
      v35 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = *(v33 + 16);
        sub_261F6C054();
        v33 = v40;
        *a3 = v40;
      }

      v36 = *(v33 + 16);
      if (v36 >= *(v33 + 24) >> 1)
      {
        sub_261F6C054();
        *a3 = v41;
      }

      sub_261F6BFFC(v18, v17);
      sub_261F6BFFC(v53, v19);
      v37 = *a3;
      *(v37 + 16) = v36 + 1;
      v38 = v37 + 96 * v36;
      *(v38 + 32) = 30;
      *(v38 + 40) = v57;
      *(v38 + 48) = v56;
      *(v38 + 56) = v55;
      *(v38 + 64) = v18;
      *(v38 + 72) = v17;
      *(v38 + 80) = v53;
      *(v38 + 88) = v19;
      *(v38 + 96) = v49;
      *(v38 + 104) = v48;
      *(v38 + 112) = v58;
      a2 = v51 + v52;
      v7 = v35;
      v9 = &v50[v51];
      if (!&v50[v51])
      {
        goto LABEL_24;
      }
    }

    if (a2 == v9)
    {
      goto LABEL_24;
    }

    result = 40 - v10;
    if (!__OFSUB__(40, v10))
    {
      v42 = a6;
      v43 = *(a6 + 48);
LABEL_26:
      v43(result, a5, v42);
      v44 = sub_261FDC428(v9, a2);
      return (*(v42 + 24))(v44, v45, a5, v42);
    }

LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_24:
    (*(a6 + 48))(40, a5, a6);
    return (*(a6 + 24))(0, 0xF000000000000000, a5, a6);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_0()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

void OUTLINED_FUNCTION_35_2()
{

  JUMPOUT(0x266722710);
}

_BYTE *OUTLINED_FUNCTION_35_4(_BYTE *a1, uint64_t a2)
{

  return sub_262008160(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_35_7(uint64_t a1)
{

  return sub_261F66E60(a1, v1, v2);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice12TunnelPacketV23TransportProtocolHeaderOSg(uint64_t a1)
{
  v1 = ((*(a1 + 8) >> 60) >> 1) & 0xFFFFFFF7 | (8 * ((*(a1 + 8) & 0x1000000000000000) != 0));
  v2 = v1 ^ 0xF;
  v3 = 16 - v1;
  if (v2 >= 0xB)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

_OWORD *OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __int128 a47)
{
  v50 = (*(v48 + 56) + 32 * v47);

  return sub_261F8D184(v50, &a47);
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_once();
}

double OUTLINED_FUNCTION_38_1()
{
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
  result = 0.0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_2()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return swift_weakInit();
}

void sub_261F6CDE4()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  v4 = OUTLINED_FUNCTION_40(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  v8 = OUTLINED_FUNCTION_40(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  v16 = sub_262039ACC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](v20);
  v25 = *(v0 + 160);
  if (v25)
  {
    v26 = v2[9];
    if (v26 >> 60 != 15)
    {
      v62 = v24;
      v63 = &v54 - v22;
      v59 = v0;
      v64 = v23;
      v28 = v2[4];
      v27 = v2[5];
      v29 = v21;
      v30 = v2[6];
      v60 = v2[7];
      v61 = v30;
      v31 = v2[8];
      sub_262039B3C();
      OUTLINED_FUNCTION_32_1();
      v32 = v25;
      sub_261F7B690(v31, v26);
      sub_261F6B73C(v28, v27);
      sub_262039ADC();
      if (__swift_getEnumTagSinglePayload(v15, 1, v29) == 1)
      {

        sub_261F7B6A4(v31, v26);
        v33 = v15;
LABEL_7:
        sub_261FC2F14(v33, &qword_27FEFA270, &qword_262041910);
        goto LABEL_17;
      }

      v56 = v32;
      v57 = v26;
      v58 = v31;
      v34 = v64;
      v35 = *(v64 + 4);
      v36 = v63;
      v35();
      OUTLINED_FUNCTION_32_1();
      sub_261F6B73C(v61, v60);
      sub_262039ADC();
      v37 = v29;
      if (__swift_getEnumTagSinglePayload(v13, 1, v29) == 1)
      {

        sub_261F7B6A4(v58, v57);
        v34[1](v36, v29);
        v33 = v13;
        goto LABEL_7;
      }

      (v35)(v62, v13, v29);
      v39 = v57;
      v38 = v58;
      switch(v57 >> 61)
      {
        case 1uLL:
          v61 = v58 >> 16;
          OUTLINED_FUNCTION_8_3();
          sub_26203A7CC();
          OUTLINED_FUNCTION_18();
          MEMORY[0x266722710](0x203A504455, 0xE500000000000000);
          OUTLINED_FUNCTION_4_4();
          sub_26203A8CC();
          OUTLINED_FUNCTION_35_2();
          LOWORD(v65) = v38;
          v46 = sub_26203ABAC();
          MEMORY[0x266722710](v46);
          v38 = v58;

          OUTLINED_FUNCTION_24_3();
          OUTLINED_FUNCTION_3_7();
          sub_26203A8CC();
          OUTLINED_FUNCTION_35_2();
          LOWORD(v65) = v61;
          v39 = v57;
          sub_26203ABAC();
          OUTLINED_FUNCTION_23_2();

          goto LABEL_16;
        case 2uLL:
          v44 = v58 >> 8;
          OUTLINED_FUNCTION_8_3();
          sub_26203A7CC();
          OUTLINED_FUNCTION_18();
          MEMORY[0x266722710](0x203A504D4349, 0xE600000000000000);
          OUTLINED_FUNCTION_4_4();
          sub_26203A8CC();
          OUTLINED_FUNCTION_24_3();
          OUTLINED_FUNCTION_3_7();
          sub_26203A8CC();
          MEMORY[0x266722710](0x3D657079745B20, 0xE700000000000000);
          LOBYTE(v65) = v38;
          OUTLINED_FUNCTION_14_5();
          v45 = sub_26203ABAC();
          MEMORY[0x266722710](v45);

          MEMORY[0x266722710](0x3D65646F6320, 0xE600000000000000);
          LOBYTE(v65) = v44;
          OUTLINED_FUNCTION_14_5();
          goto LABEL_12;
        case 3uLL:
          OUTLINED_FUNCTION_8_3();
          sub_26203A7CC();
          OUTLINED_FUNCTION_18();
          MEMORY[0x266722710](0x6165737261706E55, 0xEC00000020656C62);
          LOBYTE(v65) = v38;
          sub_26203ABAC();
          OUTLINED_FUNCTION_23_2();

          MEMORY[0x266722710](8250, 0xE200000000000000);
          OUTLINED_FUNCTION_4_4();
          sub_26203A8CC();
          OUTLINED_FUNCTION_24_3();
          OUTLINED_FUNCTION_3_7();
          sub_26203A8CC();
          MEMORY[0x266722710](0x3D726F7272655B20, 0xE800000000000000);
          v65 = v39 & 0x1FFFFFFFFFFFFFFFLL;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
          sub_26203A8CC();
          goto LABEL_14;
        case 4uLL:
          OUTLINED_FUNCTION_8_3();
          sub_26203A7CC();
          OUTLINED_FUNCTION_18();
          MEMORY[0x266722710](0x206E776F6E6B6E55, 0xE800000000000000);
          LOBYTE(v65) = v38;
          sub_26203ABAC();
          OUTLINED_FUNCTION_23_2();

          MEMORY[0x266722710](8250, 0xE200000000000000);
          OUTLINED_FUNCTION_4_4();
          sub_26203A8CC();
          OUTLINED_FUNCTION_24_3();
          OUTLINED_FUNCTION_3_7();
          sub_26203A8CC();
          goto LABEL_16;
        default:
          v40 = v58 >> 16;
          v60 = HIDWORD(v58);
          v61 = HIDWORD(v57);
          v55 = HIWORD(v57);
          OUTLINED_FUNCTION_8_3();
          sub_26203A7CC();
          OUTLINED_FUNCTION_18();
          MEMORY[0x266722710](0x203A504354, 0xE500000000000000);
          v34 = v63;
          sub_26203A8CC();
          OUTLINED_FUNCTION_35_2();
          LOWORD(v65) = v58;
          v41 = sub_26203ABAC();
          MEMORY[0x266722710](v41);

          OUTLINED_FUNCTION_24_3();
          v15 = v62;
          sub_26203A8CC();
          OUTLINED_FUNCTION_35_2();
          LOWORD(v65) = v40;
          v37 = v29;
          v38 = v58;
          sub_26203ABAC();
          OUTLINED_FUNCTION_23_2();

          MEMORY[0x266722710](0x3D7367616C665B20, 0xE800000000000000);
          v39 = v57;
          v42 = sub_2620033D4(v55);
          MEMORY[0x266722710](v42);

          MEMORY[0x266722710](0x3D71657320, 0xE500000000000000);
          LODWORD(v65) = v60;
          OUTLINED_FUNCTION_14_5();
          v43 = sub_26203ABAC();
          MEMORY[0x266722710](v43);

          MEMORY[0x266722710](0x3D6B636120, 0xE500000000000000);
          LODWORD(v65) = v39;
          OUTLINED_FUNCTION_14_5();
          sub_26203ABAC();
          OUTLINED_FUNCTION_23_2();

          MEMORY[0x266722710](0x3D776F646E697720, 0xE800000000000000);
          LOWORD(v65) = v61;
LABEL_12:
          sub_26203ABAC();
          OUTLINED_FUNCTION_23_2();

LABEL_14:
          MEMORY[0x266722710](93, 0xE100000000000000);
LABEL_16:
          OUTLINED_FUNCTION_18();
          MEMORY[0x266722710](10, 0xE100000000000000);
          sub_261FDBDF0();
          v48 = v47;
          v50 = v49;
          v51 = *(v59 + 80);
          v52 = v56;
          OS_dispatch_io.write(content:completingOn:completion:)(v48, v50, v51, nullsub_1, 0);

          sub_261F6BFFC(v48, v50);
          sub_261F7B6A4(v38, v39);
          v53 = *(v64 + 1);
          v53(v15, v37);
          v53(v34, v37);
          break;
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_31_0();
}

void sub_261F6D760()
{
  OUTLINED_FUNCTION_96();
  v3 = *v0;
  v39 = sub_262039FAC();
  v4 = OUTLINED_FUNCTION_0(v39);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_9_5();
  v7 = sub_262039FEC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v40 = v9;
  v41 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_96_0();
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_96_0();
  v18 = *(v17 + 88);
  v19 = type metadata accessor for TunnelEndpoint.Event();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_127();
  v38 = sub_261F6E294();
  OUTLINED_FUNCTION_63();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_262(v25);
  swift_weakInit();
  v26 = *(v22 + 16);
  v27 = OUTLINED_FUNCTION_133_0();
  v28(v27);
  v29 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = v16;
  *(v30 + 3) = v18;
  *(v30 + 4) = v1;
  (*(v22 + 32))(&v30[v29], v2, v19);
  v42[4] = sub_261F78FA8;
  v42[5] = v30;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 1107296256;
  v42[2] = sub_261F78F64;
  v42[3] = &block_descriptor_760;
  v31 = _Block_copy(v42);

  sub_262039FCC();
  OUTLINED_FUNCTION_104_0();
  sub_261F6E4A4(v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  OUTLINED_FUNCTION_25_2();
  sub_261F67F70(v34, &qword_27FEFA0B0, &unk_262040690);
  sub_26203A75C();
  v35 = OUTLINED_FUNCTION_210();
  MEMORY[0x266722A20](v35);
  _Block_release(v31);

  v36 = OUTLINED_FUNCTION_99();
  v37(v36, v39);
  (*(v40 + 8))(v14, v41);

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261F6DAD8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_261F6DB0C()
{
  OUTLINED_FUNCTION_243();
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_56_2();
  v3 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_249(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = v0[4];

  v9 = v0 + v5;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 0xCu:
      v10 = OUTLINED_FUNCTION_300();
      goto LABEL_11;
    case 3u:
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));
      v9 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA378, &qword_2620447D0) + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
      OUTLINED_FUNCTION_151_0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_10;
      }

      type metadata accessor for TunnelMessage();
      OUTLINED_FUNCTION_151_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA350, &unk_262041920) + 48);
        v32 = sub_262039ACC();
        if (!OUTLINED_FUNCTION_286(v32))
        {
          OUTLINED_FUNCTION_71(v1);
          (*(v33 + 8))(&v9[v31]);
        }
      }

      else if (EnumCaseMultiPayload == 1)
      {
        v23 = sub_262039ACC();
        OUTLINED_FUNCTION_6_1(v23);
        v25 = *(v24 + 8);
        v26 = OUTLINED_FUNCTION_108();
        v25(v26);
        v27 = type metadata accessor for TunnelInterfaceParameters();
        v28 = OUTLINED_FUNCTION_257(*(v27 + 20));
        v25(v28);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E10, &qword_2620447B0);
        v30 = OUTLINED_FUNCTION_257(*(v29 + 48));
        v25(v30);
      }

      break;
    case 4u:
      OUTLINED_FUNCTION_56_2();
      type metadata accessor for TunnelEndpoint.State();
      OUTLINED_FUNCTION_151_0();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        break;
      }

      v11 = &unk_27FEFA348;
      v12 = &unk_262044798;
LABEL_8:
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v11, v12) + 48);
      v14 = sub_26203965C();
      OUTLINED_FUNCTION_6_1(v14);
      (*(v15 + 8))(&v9[v13]);
      break;
    case 5u:
      v16 = *v9;

      v17 = *(v9 + 2);

      break;
    case 6u:
    case 8u:
    case 0xAu:
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));
      break;
    case 7u:
    case 9u:
      OUTLINED_FUNCTION_300();

      break;
    case 0xBu:

      v11 = &unk_27FEFA370;
      v12 = &unk_2620447C8;
      goto LABEL_8;
    case 0xDu:
LABEL_10:
      v10 = *v9;
LABEL_11:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_22_2();

  return MEMORY[0x2821FE8E8](v18, v19, v20);
}

uint64_t sub_261F6DE04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_26203943C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x266721900]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x266721920]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_261F6DE7C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      v6 = a3 - a2;
    }

    else
    {
      v6 = 0;
    }

    v7 = OUTLINED_FUNCTION_34_2();
    result = sub_261F6C5A4(v7, v8, v9, v10);
    if (!v5 || result >= v5)
    {
      result = sub_261F6DEF8(0, v5, a2, a3);
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      return OUTLINED_FUNCTION_34_2();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261F6DEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = a4 - a3;
  if (!a3)
  {
    v6 = 0;
  }

  if (result < 0 || v6 < result)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_261F6DF24()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_43_1();
  v2 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_126_0();
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  OUTLINED_FUNCTION_146();
  if (swift_weakLoadStrong())
  {
    *v1 = v8;
    v1[1] = v9;
    v1[2] = v10;
    OUTLINED_FUNCTION_98_0();
    swift_storeEnumTagMultiPayload();

    sub_261F6D760(v1);

    v11 = *(v4 + 8);
    v12 = OUTLINED_FUNCTION_98_0();
    v13(v12);
  }

  else
  {
    v9();
  }

  OUTLINED_FUNCTION_22_2();
}

void sub_261F6E03C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_261F6DF24();
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_261F67FE4(a1, a2, &a65);
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return swift_slowAlloc();
}

_OWORD *OUTLINED_FUNCTION_22_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_261F8D184(&a14, &a11);
}

void *OUTLINED_FUNCTION_22_6(void *a1)
{
  result = __swift_project_boxed_opaque_existential_0Tm(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_8()
{
  result = v0 - 65;
  v2 = *(v0 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_9(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_11()
{

  return sub_26203A20C();
}

uint64_t OUTLINED_FUNCTION_95()
{
  *(v1 - 248) = 5;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v1 - 208) = 4;

  return sub_261F68720(v1 - 248);
}

void OUTLINED_FUNCTION_95_0()
{

  JUMPOUT(0x266722710);
}

uint64_t OUTLINED_FUNCTION_179()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_179_0()
{
  *(v0 + 3) = 8;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_25(uint64_t a1@<X8>)
{
  *v1 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v1 + 8) = a1;
  *(v1 + 16) = 0;
}

double OUTLINED_FUNCTION_25_1()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_3()
{

  return sub_26203AA2C();
}

uint64_t sub_261F6E4A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_97(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_97_0()
{
  v1 = *(v0 - 256);
  *(v0 - 184) = *(v0 - 248);
  *(v0 - 176) = v1;
  v2 = *(v0 - 232);
  *(v0 - 168) = *(v0 - 240);
  *(v0 - 160) = v2;
}

uint64_t sub_261F6E52C(NSObject *a1)
{
  v1746 = a1;
  v3 = *v1;
  v4 = sub_26203A03C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v1655 = v6;
  v1656 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v1653 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_88_1();
  v1654 = v11;
  OUTLINED_FUNCTION_9_5();
  v12 = sub_262039FAC();
  v13 = OUTLINED_FUNCTION_40(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16_10();
  v1652 = v16;
  OUTLINED_FUNCTION_9_5();
  v1731 = sub_26203965C();
  v17 = OUTLINED_FUNCTION_0(v1731);
  v1730 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v1713 = &i - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_55_2();
  v1689 = v23;
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_55_2();
  v1714 = v25;
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_55_2();
  v1688 = v27;
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_55_2();
  v1658 = v29;
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_55_2();
  v1709 = v31;
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_55_2();
  v1690 = v33;
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_55_2();
  v1651 = v35;
  v1710 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_44();
  v1669 = v38;
  v39 = *(v3 + 80);
  OUTLINED_FUNCTION_210();
  v40 = sub_26203A6DC();
  v41 = OUTLINED_FUNCTION_40(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_0();
  v1657 = v44;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_43_0();
  v1685 = v46;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_43_0();
  v1650 = v48;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_88_1();
  v1648 = v50;
  OUTLINED_FUNCTION_16();
  v1706 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_44();
  v1670 = v55;
  OUTLINED_FUNCTION_9_5();
  v1725 = sub_262039ACC();
  v56 = OUTLINED_FUNCTION_0(v1725);
  v1721 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_0();
  v1668 = v60;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_43_0();
  v1647 = v62;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_43_0();
  v1717 = v64;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_88_1();
  v1684 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2A0, &qword_2620440B0);
  v68 = OUTLINED_FUNCTION_40(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_0();
  v1649 = v71;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_43_0();
  v1646 = v73;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_43_0();
  v1671 = v75;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_43_0();
  v1686 = v77;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_43_0();
  v1675 = v79;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_43_0();
  v1695 = v81;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_88_1();
  v1694 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  v85 = OUTLINED_FUNCTION_40(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_6_0();
  v1638 = v88;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_43_0();
  v1672 = v90;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_88_1();
  v1693 = v92;
  OUTLINED_FUNCTION_9_5();
  v1712 = type metadata accessor for TunnelInterfaceParameters();
  v93 = OUTLINED_FUNCTION_6_1(v1712);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_16_10();
  v1716 = v96;
  OUTLINED_FUNCTION_9_5();
  v1707 = type metadata accessor for TunnelMessage();
  v97 = OUTLINED_FUNCTION_6_1(v1707);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_6_0();
  i = v100;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_43_0();
  v1635 = v102;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_43_0();
  v1643 = v104;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_43_0();
  v1642 = v106;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_88_1();
  v1708 = v108;
  v109 = *(v3 + 88);
  OUTLINED_FUNCTION_153();
  v110 = type metadata accessor for TunnelEndpoint.State();
  v1737 = v39;
  v1735 = v109;
  v111 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_157();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0(TupleTypeMetadata2);
  v1724 = v112;
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_44();
  v1747 = v116;
  v1741 = v110;
  v1742 = *(v110 - 8);
  isa = v1742[8].isa;
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_6_0();
  v1691 = v119;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_43_0();
  v1726 = v121;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_43_0();
  v1727 = v123;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_43_0();
  v1681 = v125;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_43_0();
  v1683 = v127;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_43_0();
  v1705 = v129;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_43_0();
  v1682 = v131;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_43_0();
  v1704 = v133;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_43_0();
  v1680 = v135;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_43_0();
  v1679 = v137;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_43_0();
  v1678 = v139;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_43_0();
  v1677 = v141;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_43_0();
  v1692 = v143;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_43_0();
  v1640 = v145;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_43_0();
  v1660 = v147;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_43_0();
  v1645 = v149;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_43_0();
  v1664 = v151;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_43_0();
  v1639 = v153;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_43_0();
  v1659 = v155;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_43_0();
  v1644 = v157;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_43_0();
  v1663 = v159;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_43_0();
  v1729 = v161;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_88_1();
  v1740 = v163;
  v1722 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
  v164 = OUTLINED_FUNCTION_6_1(v1722);
  v166 = *(v165 + 64);
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_6_0();
  v1636 = v167;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_43_0();
  v1641 = v169;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_43_0();
  v1637 = v171;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_43_0();
  v1665 = v173;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v174);
  OUTLINED_FUNCTION_43_0();
  v1662 = v175;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_43_0();
  v1674 = v177;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v178);
  OUTLINED_FUNCTION_43_0();
  v1661 = v179;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_43_0();
  v1673 = v181;
  OUTLINED_FUNCTION_29();
  v183 = MEMORY[0x28223BE20](v182);
  v185 = (&i - v184);
  MEMORY[0x28223BE20](v183);
  v187 = &i - v186;
  OUTLINED_FUNCTION_16();
  v189 = v188;
  v191 = *(v190 + 64);
  MEMORY[0x28223BE20](v192);
  v1733 = &i - ((&v191[1].isa + 7) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_55_2();
  v1711 = v194;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_55_2();
  v1687 = v196;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_55_2();
  v1728 = v198;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_55_2();
  v1723 = v200;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_55_2();
  v1676 = v202;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v203);
  OUTLINED_FUNCTION_55_2();
  v1702 = v204;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v205);
  OUTLINED_FUNCTION_55_2();
  v1701 = v206;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v207);
  OUTLINED_FUNCTION_55_2();
  v1703 = v208;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v209);
  OUTLINED_FUNCTION_55_2();
  v1700 = v210;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_55_2();
  v1719 = v212;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v213);
  OUTLINED_FUNCTION_55_2();
  v1699 = v214;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_55_2();
  *&v1718 = v216;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v217);
  OUTLINED_FUNCTION_55_2();
  v1667 = v218;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v219);
  OUTLINED_FUNCTION_55_2();
  v1666 = v220;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v221);
  OUTLINED_FUNCTION_55_2();
  v1698 = v222;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v223);
  OUTLINED_FUNCTION_55_2();
  v1697 = v224;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v225);
  OUTLINED_FUNCTION_55_2();
  v1715 = v226;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v227);
  OUTLINED_FUNCTION_55_2();
  v1732 = v228;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v229);
  OUTLINED_FUNCTION_55_2();
  v1720 = v230;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v231);
  OUTLINED_FUNCTION_55_2();
  v1696 = v232;
  OUTLINED_FUNCTION_62_2();
  v234 = MEMORY[0x28223BE20](v233);
  v236 = (&i - v235);
  MEMORY[0x28223BE20](v234);
  OUTLINED_FUNCTION_195();
  v1748 = v1;
  v237 = sub_261F6E294();
  OS_dispatch_queue.assertOnQueueHierarchy()();

  v1739 = v189;
  v238 = *(v189 + 16);
  v1745 = v189 + 16;
  v1744 = v238;
  (v238)(v2, v1746, v111);
  v1743 = v111;
  v239 = 0xEB00000000657375;
  v240 = 0x6150746E65696C63;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v268 = *v2;
      OUTLINED_FUNCTION_241();
      v245 = v269 - 21;
      goto LABEL_12;
    case 2u:
      v272 = *(v2 + 5);
      OUTLINED_FUNCTION_224();
      OUTLINED_FUNCTION_13_10();
      *&v1755 = v274 - 34;
      *(&v1755 + 1) = v273;
      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_19_6();
      v275 = OUTLINED_FUNCTION_158_0();
      v276(v275);
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_227();
      v277 = OUTLINED_FUNCTION_158_0();
      MEMORY[0x266722710](v277);

      OUTLINED_FUNCTION_95_0();
      if (v272)
      {
        swift_getErrorValue();
        v278 = v272;
        OUTLINED_FUNCTION_158_0();
        sub_26203ACCC();
      }

      v289 = OUTLINED_FUNCTION_11_0();
      goto LABEL_31;
    case 3u:
      v254 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA378, &qword_2620447D0) + 48);
      OUTLINED_FUNCTION_224();
      sub_261FFF604(v2 + v254, v187);
      v255 = OUTLINED_FUNCTION_42_3();
      sub_261F674BC(v255, v256, v257, v258);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v259 = *v185;
        swift_getErrorValue();
        sub_26203ACCC();
      }

      else
      {
        sub_261F66E60(v185, &qword_27FEFA2D0, &qword_262045930);
      }

      OUTLINED_FUNCTION_13_10();
      *&v1755 = v310 - 30;
      *(&v1755 + 1) = v309;
      v312 = *(&v1759 + 1);
      v311 = v1760;
      __swift_project_boxed_opaque_existential_0Tm(&aBlock, *(&v1759 + 1));
      OUTLINED_FUNCTION_19_6();
      v313(v312, v311);
      OUTLINED_FUNCTION_91_0();

      v314 = OUTLINED_FUNCTION_126();
      MEMORY[0x266722710](v314);

      OUTLINED_FUNCTION_95_0();
      v315 = OUTLINED_FUNCTION_122();
      MEMORY[0x266722710](v315);

      MEMORY[0x266722710](23842, 0xE200000000000000);
      v239 = *(&v1755 + 1);
      v240 = v1755;
      sub_261F66E60(v187, &qword_27FEFA2D0, &qword_262045930);
      goto LABEL_33;
    case 4u:
      OUTLINED_FUNCTION_277();
      v283(v2, v1741);
      v239 = 0xEF65636166726574;
      v240 = 0x6E49657461657263;
      goto LABEL_34;
    case 5u:
      v290 = *v2;
      v291 = *(v2 + 2);
      OUTLINED_FUNCTION_13_10();
      *&aBlock = v293 - 16;
      *(&aBlock + 1) = v292;
      *&v1755 = v290[2];
      v294 = sub_26203ABAC();
      MEMORY[0x266722710](v294);

      OUTLINED_FUNCTION_302();

      goto LABEL_22;
    case 6u:
      OUTLINED_FUNCTION_224();
      OUTLINED_FUNCTION_13_10();
      v281 = v280 - 7;
      goto LABEL_25;
    case 7u:
      v302 = *(v2 + 5);
      OUTLINED_FUNCTION_224();
      *&v1755 = sub_261F79C04(51);
      *(&v1755 + 1) = v303;
      OUTLINED_FUNCTION_33_2();
      OUTLINED_FUNCTION_184_0();
      MEMORY[0x266722710]();
      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_19_6();
      v304 = OUTLINED_FUNCTION_158_0();
      v305(v304);
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_227();
      v306 = OUTLINED_FUNCTION_158_0();
      MEMORY[0x266722710](v306);

      MEMORY[0x266722710](0x3D746E756F63202CLL, 0xE800000000000000);
      v307 = *(v302 + 16);

      *&v1753 = v307;
      v308 = sub_26203ABAC();
      MEMORY[0x266722710](v308);
      goto LABEL_27;
    case 8u:
      OUTLINED_FUNCTION_217();
      OUTLINED_FUNCTION_13_10();
      v253 = v262 - 26;
      goto LABEL_10;
    case 9u:
      v295 = *(v2 + 5);

      OUTLINED_FUNCTION_224();
      OUTLINED_FUNCTION_13_10();
      v281 = v296 - 26;
LABEL_25:
      *&v1755 = v281;
      *(&v1755 + 1) = v279;
      v297 = OUTLINED_FUNCTION_101_0();
      __swift_project_boxed_opaque_existential_0Tm(v297, v298);
      v299 = OUTLINED_FUNCTION_6_12();
      v300(v299);
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_185_0();
      v301 = OUTLINED_FUNCTION_42_3();
      MEMORY[0x266722710](v301);
LABEL_27:

      OUTLINED_FUNCTION_302();
      goto LABEL_32;
    case 0xAu:
      OUTLINED_FUNCTION_217();
      OUTLINED_FUNCTION_13_10();
      v253 = v252 - 33;
LABEL_10:
      *&v1755 = v253;
      *(&v1755 + 1) = v251;
      v263 = OUTLINED_FUNCTION_101_0();
      __swift_project_boxed_opaque_existential_0Tm(v263, v264);
      v265 = OUTLINED_FUNCTION_6_12();
      v266(v265);
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_185_0();
      v267 = OUTLINED_FUNCTION_42_3();
      MEMORY[0x266722710](v267);

      OUTLINED_FUNCTION_302();
      v239 = *(&v1755 + 1);
      v240 = v1755;
      sub_261FFEDE8(&aBlock);
      goto LABEL_34;
    case 0xBu:

      v260 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA370, &qword_2620447C8) + 48);
      OUTLINED_FUNCTION_254();
      (v1730[1].isa)(v2 + v261, v1731);
      goto LABEL_14;
    case 0xCu:
      v272 = *(v2 + 5);
      OUTLINED_FUNCTION_224();
      OUTLINED_FUNCTION_13_10();
      *&v1755 = v285 - 30;
      *(&v1755 + 1) = v284;
      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_19_6();
      v286 = OUTLINED_FUNCTION_158_0();
      v287(v286);
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_227();
      v288 = OUTLINED_FUNCTION_158_0();
      MEMORY[0x266722710](v288);

      OUTLINED_FUNCTION_95_0();
      swift_getErrorValue();
      v289 = sub_26203ACCC();
LABEL_31:
      MEMORY[0x266722710](v289);

      MEMORY[0x266722710](23842, 0xE200000000000000);

LABEL_32:
      v239 = *(&v1755 + 1);
      v240 = v1755;
LABEL_33:
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      goto LABEL_34;
    case 0xDu:
      v247 = *v2;
      OUTLINED_FUNCTION_13_10();
      *&aBlock = v249 - 29;
      *(&aBlock + 1) = v248;
      swift_getErrorValue();
      v250 = sub_26203ACCC();
      MEMORY[0x266722710](v250);

      MEMORY[0x266722710](23842, 0xE200000000000000);

      goto LABEL_22;
    case 0xEu:
      OUTLINED_FUNCTION_254();
LABEL_14:
      OUTLINED_FUNCTION_171_0();
      v240 = v271 - 30;
      goto LABEL_34;
    case 0xFu:
      OUTLINED_FUNCTION_254();
      OUTLINED_FUNCTION_171_0();
      v240 = v246 - 32;
      goto LABEL_34;
    case 0x10u:
      OUTLINED_FUNCTION_254();
      OUTLINED_FUNCTION_171_0();
      v240 = v282 - 20;
      goto LABEL_34;
    case 0x11u:
      goto LABEL_34;
    case 0x12u:
      v239 = 0xE600000000000000;
      v240 = 0x6C65636E6163;
      goto LABEL_34;
    default:
      v241 = *v2;
      OUTLINED_FUNCTION_241();
      v245 = v244 - 25;
LABEL_12:
      *&aBlock = v245;
      *(&aBlock + 1) = v243;
      LOWORD(v1755) = v242;
      v270 = sub_26203ABAC();
      MEMORY[0x266722710](v270);

      OUTLINED_FUNCTION_302();
LABEL_22:
      v239 = *(&aBlock + 1);
      v240 = aBlock;
LABEL_34:
      OUTLINED_FUNCTION_200();
      v318 = (v317 + *(v316 + 216));
      OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_36_1();
      swift_beginAccess();
      v319 = v318[1];

      sub_261F79AD8();
      v320 = *v318;
      v321 = OUTLINED_FUNCTION_42_3();
      sub_261F79B18(v321, v322);
      OUTLINED_FUNCTION_228();
      *v318 = v320;
      if (__OFADD__(v319, 1))
      {
        __break(1u);
        goto LABEL_359;
      }

      v323 = v318[2];
      if (!v323)
      {
LABEL_359:
        __break(1u);
        goto LABEL_360;
      }

      v324 = v319 == 0x7FFFFFFFFFFFFFFFLL && v323 == -1;
      if (v324)
      {
        __break(1u);
LABEL_363:
        OUTLINED_FUNCTION_1_20();
        sub_261FFEE7C(v319, v1577);
        v1512 = v1739;
        goto LABEL_364;
      }

      OUTLINED_FUNCTION_287(v319 + 1);
      OUTLINED_FUNCTION_63_2();
      v325();
      OUTLINED_FUNCTION_123();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v327 = v1741;
      switch(EnumCaseMultiPayload)
      {
        case 2:
        case 12:

          goto LABEL_65;
        case 3:
          v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA378, &qword_2620447D0);
          sub_261F66E60(v236 + *(v358 + 48), &qword_27FEFA2D0, &qword_262045930);
          goto LABEL_65;
        case 4:
          OUTLINED_FUNCTION_277();
          v329 = v236;
          v330 = v327;
          goto LABEL_54;
        case 5:
          v332 = *(v1739 + 8);
          v333 = OUTLINED_FUNCTION_123();
          v334(v333);
          goto LABEL_44;
        case 6:
          goto LABEL_52;
        case 7:
          v348 = v236[5];

          __swift_destroy_boxed_opaque_existential_0Tm(v236);
          goto LABEL_56;
        case 8:
        case 10:
        case 13:
          v328 = *(v1739 + 8);
          v329 = OUTLINED_FUNCTION_123();
LABEL_54:
          v331(v329, v330);
          goto LABEL_66;
        case 9:
          v359 = v236[5];

LABEL_65:
          __swift_destroy_boxed_opaque_existential_0Tm(v236);
          goto LABEL_66;
        case 11:

          v632 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA370, &qword_2620447C8);
          (v1730[1].isa)(v236 + *(v632 + 48), v1731);
          goto LABEL_66;
        case 16:
LABEL_44:
          OUTLINED_FUNCTION_200();
          v337 = (v336 + *(v335 + 232));
          OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_36_1();
          swift_beginAccess();
          v338 = v337[1];

          sub_261F79AD8();
          v339 = *v337;
          v340 = OUTLINED_FUNCTION_42_3();
          sub_261F79B18(v340, v341);
          OUTLINED_FUNCTION_228();
          *v337 = v339;
          v342 = v338 + 1;
          if (__OFADD__(v338, 1))
          {
            __break(1u);
            goto LABEL_370;
          }

          v343 = v337[2];
          if (!v343)
          {
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            OUTLINED_FUNCTION_0_27();
            swift_once();
LABEL_294:
            v1730 = qword_28108B620;
            v1293 = v1744;
            (v1744)(v1711, v1746, v239);
            v1294 = OUTLINED_FUNCTION_42_3();
            (v1293)(v1294);
            v1295 = (*(v240 + 80) + 32) & ~*(v240 + 80);
            v1296 = swift_allocObject();
            OUTLINED_FUNCTION_28_6(v1296);
            v1297 = *(v240 + 32);
            v1299 = v1298;
            v1740 = v1298;
            OUTLINED_FUNCTION_153();
            v1300();
            OUTLINED_FUNCTION_45_2();
            v1735 = swift_allocObject();
            *(v1735 + 16) = 34;
            OUTLINED_FUNCTION_45_2();
            v1724 = swift_allocObject();
            OUTLINED_FUNCTION_139_0(v1724);
            OUTLINED_FUNCTION_46();
            v1301 = swift_allocObject();
            v1302 = v1748;
            v1301[2].isa = sub_261FFF800;
            v1301[3].isa = v1302;
            v1303 = v1301;
            TupleTypeMetadata2 = v1301;
            OUTLINED_FUNCTION_46();
            v1304 = swift_allocObject();
            v1737 = v1304;
            *(v1304 + 16) = sub_261FFEF54;
            *(v1304 + 24) = v1303;
            OUTLINED_FUNCTION_45_2();
            v1742 = swift_allocObject();
            LOBYTE(v1742[2].isa) = 34;
            OUTLINED_FUNCTION_45_2();
            v1736 = swift_allocObject();
            *(v1736 + 16) = 8;
            OUTLINED_FUNCTION_46();
            v1305 = swift_allocObject();
            v1305[2].isa = sub_261FFF808;
            v1305[3].isa = v1299;
            OUTLINED_FUNCTION_46();
            v1306 = swift_allocObject();
            *(v1306 + 16) = sub_261FFF818;
            *(v1306 + 24) = v1305;
            v1307 = v1306;
            v1723 = v1306;
            OUTLINED_FUNCTION_45_2();
            v1747 = swift_allocObject();
            LOBYTE(v1747[2].isa) = 34;
            OUTLINED_FUNCTION_45_2();
            v1731 = swift_allocObject();
            *(v1731 + 16) = 8;
            OUTLINED_FUNCTION_46();
            v1308 = swift_allocObject();
            *(v1308 + 2) = sub_261FFEF44;
            *(v1308 + 3) = v1302;
            OUTLINED_FUNCTION_46();
            v1309 = swift_allocObject();
            *(v1309 + 16) = sub_261FFF818;
            *(v1309 + 24) = v1308;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
            v1310 = OUTLINED_FUNCTION_289();
            *(v1310 + 16) = xmmword_262044050;
            v1311 = v1735;
            *(v1310 + 32) = sub_261FFEF4C;
            *(v1310 + 40) = v1311;
            v1312 = v1724;
            *(v1310 + 48) = sub_261FFF848;
            *(v1310 + 56) = v1312;
            v1313 = v1737;
            *(v1310 + 64) = sub_261FFEF5C;
            *(v1310 + 72) = v1313;
            v1314 = v1742;
            *(v1310 + 80) = sub_261FFF848;
            *(v1310 + 88) = v1314;
            v1315 = v1736;
            *(v1310 + 96) = sub_261FFF848;
            *(v1310 + 104) = v1315;
            *(v1310 + 112) = sub_261FFF7F0;
            *(v1310 + 120) = v1307;
            v1316 = v1747;
            *(v1310 + 128) = sub_261FFF848;
            *(v1310 + 136) = v1316;
            v1317 = v1731;
            *(v1310 + 144) = sub_261FFF848;
            *(v1310 + 152) = v1317;
            *(v1310 + 160) = sub_261FFF7F0;
            *(v1310 + 168) = v1309;
            swift_retain_n();
            swift_setDeallocating();
            swift_retain_n();

            v1725 = v1305;

            v1728 = v1308;

            v1727 = v1309;

            sub_261FB9814();
            v1318 = v1726;
            if (os_log_type_enabled(v1730, v1726))
            {
              OUTLINED_FUNCTION_30();
              v1319 = swift_slowAlloc();
              OUTLINED_FUNCTION_101();
              v1726 = swift_slowAlloc();
              *&aBlock = v1726;
              OUTLINED_FUNCTION_244();

              *(v1319 + 3) = 8;

              LODWORD(v1735) = v1318;
              v1320 = sub_261F7C884();
              v1322 = v1321;
              v1323 = sub_261F67FE4(v1320, v1321, &aBlock);
              v1324 = v1743;
              v1325 = v1323;

              *(v1319 + 4) = v1325;
              OUTLINED_FUNCTION_272();

              *(v1319 + 12) = 34;

              *(v1319 + 13) = 8;

              OUTLINED_FUNCTION_63_2();
              v1326();
              OUTLINED_FUNCTION_275();
              sub_26203A20C();
              OUTLINED_FUNCTION_74_2();
              sub_261F67FE4(v1327, v1328, v1329);
              OUTLINED_FUNCTION_73_2();

              *(v1319 + 14) = v1322;

              OUTLINED_FUNCTION_52_2();
              v1330 = OUTLINED_FUNCTION_59_0();
              v1331(v1330);
              *(v1319 + 22) = 34;

              *(v1319 + 23) = 8;

              v1332 = v1729;
              sub_261F798CC(v1729);
              sub_26203A20C();
              OUTLINED_FUNCTION_74_2();
              sub_261F67FE4(v1333, v1334, v1335);
              OUTLINED_FUNCTION_70();

              *(v1319 + 24) = v1324;
              OUTLINED_FUNCTION_294();

              OUTLINED_FUNCTION_271();
              _os_log_impl(v1336, v1337, v1338, v1339, v1340, v1341);
              OUTLINED_FUNCTION_273();
              swift_arrayDestroy();
              v1342 = OUTLINED_FUNCTION_29_7();
              MEMORY[0x266724180](v1342);
              v1343 = OUTLINED_FUNCTION_24_5();
              MEMORY[0x266724180](v1343);
            }

            else
            {

              OUTLINED_FUNCTION_272();

              OUTLINED_FUNCTION_52_2();
              v1346(v1733, v1743);
              OUTLINED_FUNCTION_272();

              v1332 = v1729;
            }

            static RemotePairingError.tunnelError.getter();
            v1755 = aBlock;
            *&v1753 = sub_26203ABEC();
            *(&v1753 + 1) = v1347;
            MEMORY[0x266722710](0xD000000000000039, 0x80000002620516C0);
            OUTLINED_FUNCTION_63_2();
            v1348();
            v1349 = sub_26203A20C();
            MEMORY[0x266722710](v1349);

            MEMORY[0x266722710](0xD000000000000015, 0x8000000262051700);
            sub_261F798CC(v1332);
            v1350 = sub_26203A20C();
            MEMORY[0x266722710](v1350);

            OUTLINED_FUNCTION_170_0();
            sub_261F9D610();
            OUTLINED_FUNCTION_72_0();
            swift_allocError();
            sub_261F9BCE0();
            OUTLINED_FUNCTION_113_0();
            sub_26203AD4C();
            return swift_willThrow();
          }

          v344 = v338 == 0x7FFFFFFFFFFFFFFFLL && v343 == -1;
          v327 = v1741;
          if (!v344)
          {
            goto LABEL_62;
          }

          __break(1u);
LABEL_52:
          v345 = *(v1739 + 8);
          v346 = OUTLINED_FUNCTION_123();
          v347(v346);
LABEL_56:
          OUTLINED_FUNCTION_200();
          v351 = (v350 + *(v349 + 224));
          OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_36_1();
          swift_beginAccess();
          v352 = v351[1];

          sub_261F79AD8();
          v353 = *v351;
          v354 = OUTLINED_FUNCTION_42_3();
          sub_261F79B18(v354, v355);
          OUTLINED_FUNCTION_228();
          *v351 = v353;
          v342 = v352 + 1;
          if (__OFADD__(v352, 1))
          {
LABEL_370:
            __break(1u);
            goto LABEL_371;
          }

          v356 = v351[2];
          if (!v356)
          {
            goto LABEL_372;
          }

          v357 = v352 == 0x7FFFFFFFFFFFFFFFLL && v356 == -1;
          v327 = v1741;
          if (v357)
          {
            __break(1u);
LABEL_375:
            OUTLINED_FUNCTION_0_27();
            swift_once();
LABEL_289:
            v1744 = qword_28108B620;
            v1260 = v327[2].isa;
            v1261 = v1689;
            v1262 = OUTLINED_FUNCTION_123();
            v1260(v1262);
            (v1260)(v1713, v1261, v240);
            v1263 = (LOBYTE(v327[10].isa) + 16) & ~LOBYTE(v327[10].isa);
            v1264 = swift_allocObject();
            v1746 = v1264;
            (v352)(v1264 + v1263, v1261, v240);
            OUTLINED_FUNCTION_45_2();
            v1265 = swift_allocObject();
            *(v1265 + 16) = 34;
            v1266 = v1265;
            v1745 = v1265;
            OUTLINED_FUNCTION_45_2();
            v1737 = swift_allocObject();
            *(v1737 + 16) = 8;
            OUTLINED_FUNCTION_46();
            v1267 = swift_allocObject();
            v1268 = v1748;
            *(v1267 + 16) = sub_261FFF800;
            *(v1267 + 24) = v1268;
            OUTLINED_FUNCTION_46();
            v1269 = swift_allocObject();
            *(v1269 + 16) = sub_261FFF818;
            *(v1269 + 24) = v1267;
            OUTLINED_FUNCTION_45_2();
            v1270 = swift_allocObject();
            *(v1270 + 16) = 34;
            OUTLINED_FUNCTION_45_2();
            v1271 = swift_allocObject();
            *(v1271 + 16) = 8;
            OUTLINED_FUNCTION_46();
            v1272 = swift_allocObject();
            *(v1272 + 16) = sub_261FFF804;
            *(v1272 + 24) = v1264;
            OUTLINED_FUNCTION_46();
            v1273 = swift_allocObject();
            v1273[2].isa = sub_261FFF818;
            v1273[3].isa = v1272;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
            v1274 = swift_allocObject();
            *(v1274 + 16) = xmmword_262044040;
            *(v1274 + 32) = sub_261FFF848;
            *(v1274 + 40) = v1266;
            v1275 = v1737;
            *(v1274 + 48) = sub_261FFF848;
            *(v1274 + 56) = v1275;
            *(v1274 + 64) = sub_261FFF7F0;
            *(v1274 + 72) = v1269;
            *(v1274 + 80) = sub_261FFF848;
            *(v1274 + 88) = v1270;
            *(v1274 + 96) = sub_261FFF848;
            *(v1274 + 104) = v1271;
            *(v1274 + 112) = sub_261FFF7F0;
            *(v1274 + 120) = v1273;
            swift_setDeallocating();
            OUTLINED_FUNCTION_290();
            v1740 = v1267;

            v1739 = v1270;

            TupleTypeMetadata2 = v1273;

            sub_261FB9814();
            v1276 = os_log_type_enabled(v1744, v1743);
            v1277 = v1731;
            if (v1276)
            {
              OUTLINED_FUNCTION_57_1();
              v1278 = swift_slowAlloc();
              OUTLINED_FUNCTION_56();
              v1735 = swift_slowAlloc();
              OUTLINED_FUNCTION_261(v1735);
              *v1278 = v1279;
              *(v1278 + 2) = 34;

              *(v1278 + 3) = 8;

              sub_261F7C884();
              OUTLINED_FUNCTION_74_2();
              sub_261F67FE4(v1280, v1281, v1282);
              OUTLINED_FUNCTION_73_2();

              *(v1278 + 4) = v1275;
              OUTLINED_FUNCTION_201();

              *(v1278 + 12) = 34;

              *(v1278 + 13) = 8;

              OUTLINED_FUNCTION_10_8();
              sub_261F6E4A4(v1283, v1284);
              v1285 = v1713;
              sub_26203ABAC();
              OUTLINED_FUNCTION_74_2();
              sub_261F67FE4(v1286, v1287, v1288);
              OUTLINED_FUNCTION_73_2();

              *(v1278 + 14) = v1275;

              v1289 = v1730[1].isa;
              (v1289)(v1285, v1277);
              _os_log_impl(&dword_261F5B000, v1744, v1743, "%{public}s: Received scheduled cancellation event %{public}s but cancellation has since been aborted. Ignoring.", v1278, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_26();
              MEMORY[0x266724180]();
              v1290 = OUTLINED_FUNCTION_32_4();
              MEMORY[0x266724180](v1290);
            }

            else
            {

              OUTLINED_FUNCTION_223();

              v1289 = v1730[1].isa;
              (v1289)(v1713, v1277);
            }

            (v1289)(v1714, v1277);
            v466 = OUTLINED_FUNCTION_54_2();
            return v468(v466, v467);
          }

LABEL_62:
          OUTLINED_FUNCTION_287(v342);
LABEL_66:
          v360 = v1740;
          sub_261F798CC(v1740);
          v361 = v1747 + SLODWORD(TupleTypeMetadata2[6].isa);
          v362 = v1742[4].isa;
          v362();
          OUTLINED_FUNCTION_63_2();
          v363();
          v1740 = v361;
          OUTLINED_FUNCTION_126();
          v364 = &unk_28108B000;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v365 = v1696;
              OUTLINED_FUNCTION_21_6();
              v366();
              v367 = *v365;
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() != 3)
              {
                goto LABEL_221;
              }

              LODWORD(v1747) = v367;
              v1734 = v239;
              v368 = sub_26203A4AC();
              OUTLINED_FUNCTION_265();
              if (!v324)
              {
                OUTLINED_FUNCTION_0_27();
                swift_once();
              }

              v369 = qword_28108B620;
              OUTLINED_FUNCTION_45_2();
              v370 = swift_allocObject();
              OUTLINED_FUNCTION_86_2(v370);
              OUTLINED_FUNCTION_45_2();
              v371 = swift_allocObject();
              OUTLINED_FUNCTION_121_0(v371);
              OUTLINED_FUNCTION_46();
              v372 = swift_allocObject();
              v373 = v1748;
              *(v372 + 16) = sub_261FFF698;
              *(v372 + 24) = v373;
              OUTLINED_FUNCTION_46();
              v364 = swift_allocObject();
              *(v364 + 16) = sub_261FFF818;
              *(v364 + 24) = v372;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
              v374 = OUTLINED_FUNCTION_167();
              *(v374 + 16) = xmmword_26203F720;
              *(v374 + 32) = sub_261FFF848;
              *(v374 + 40) = v370;
              *(v374 + 48) = sub_261FFF848;
              *(v374 + 56) = v360;
              *(v374 + 64) = sub_261FFF7F0;
              *(v374 + 72) = v364;
              swift_setDeallocating();
              OUTLINED_FUNCTION_299();

              sub_261FB9814();
              if (OUTLINED_FUNCTION_296())
              {
                OUTLINED_FUNCTION_42_1();
                v375 = swift_slowAlloc();
                v1746 = v369;
                v376 = v375;
                OUTLINED_FUNCTION_30();
                v377 = swift_slowAlloc();
                LODWORD(v1745) = v368;
                v378 = v377;
                *&aBlock = v377;
                OUTLINED_FUNCTION_66_2();
                OUTLINED_FUNCTION_179_0();
                sub_261F7C884();
                OUTLINED_FUNCTION_74_2();
                sub_261F67FE4(v379, v380, v381);
                OUTLINED_FUNCTION_65();

                OUTLINED_FUNCTION_178_0();

                _os_log_impl(&dword_261F5B000, v1746, v1745, "%{public}s: Client sending handshake request", v376, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v378);
                v382 = OUTLINED_FUNCTION_32_4();
                MEMORY[0x266724180](v382);
                OUTLINED_FUNCTION_26();
                MEMORY[0x266724180]();
              }

              else
              {
                OUTLINED_FUNCTION_187();
              }

              v769 = v1729;
              swift_storeEnumTagMultiPayload();
              sub_261FF2200(v769);
              sub_261F7B38C();
              if (!*(&v1756 + 1))
              {
                sub_261F66E60(&v1755, &qword_27FEFA288, &qword_262044098);
                *&aBlock = OUTLINED_FUNCTION_292();
                *(&aBlock + 1) = v1605;
                OUTLINED_FUNCTION_33_2();
                MEMORY[0x266722710](v1606 - 10, v1607 | 0x8000000000000000);
                sub_261F798CC(v769);
                OUTLINED_FUNCTION_59_0();
                sub_26203ABDC();
                OUTLINED_FUNCTION_76_0();
                v1608 = OUTLINED_FUNCTION_59_0();
                v1609(v1608);
                OUTLINED_FUNCTION_170_0();
                OUTLINED_FUNCTION_51_2();
                v1596 = 674;
                goto LABEL_397;
              }

              OUTLINED_FUNCTION_237();
              v770 = (v373 + *(*v373 + 160));
              if ((v770[1] & 1) == 0)
              {
                v771 = *v770;

                v772 = v1708;
                *v1708 = v1747;
                *(v772 + 1) = v771;
                *(v772 + 2) = 1;
                swift_storeEnumTagMultiPayload();
                v773 = *(&v1759 + 1);
                v774 = v1760;
                v775 = OUTLINED_FUNCTION_101_0();
                __swift_project_boxed_opaque_existential_0Tm(v775, v776);
                OUTLINED_FUNCTION_63();
                v777 = swift_allocObject();
                OUTLINED_FUNCTION_262(v777);
                swift_weakInit();
                v778 = OUTLINED_FUNCTION_85_1();
                sub_261F79740(v778, v779);
                v780 = OUTLINED_FUNCTION_167();
                *(OUTLINED_FUNCTION_28_6(v780) + 32) = v769;
                sub_261F797BC(&v1755, v780 + 40);
                v781 = *(v774 + 24);

                v781(v772, sub_261FFF828, v780, v773, v774);

                OUTLINED_FUNCTION_1_20();
                sub_261FFEE7C(v772, v782);

                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v783 = OUTLINED_FUNCTION_9_12();
                return v784(v783);
              }

              OUTLINED_FUNCTION_33_2();
              OUTLINED_FUNCTION_75_2();
              i = 675;
              goto LABEL_398;
            case 1u:
              v473 = v1697;
              OUTLINED_FUNCTION_21_6();
              v474();
              v475 = *v473;
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() != 7)
              {
                goto LABEL_221;
              }

              OUTLINED_FUNCTION_153_0();
              sub_261F7B38C();
              if (!*(&v1756 + 1))
              {
                sub_261F66E60(&v1755, &qword_27FEFA288, &qword_262044098);
                *&aBlock = OUTLINED_FUNCTION_231();
                *(&aBlock + 1) = v1602;
                OUTLINED_FUNCTION_65_1();
                OUTLINED_FUNCTION_174_0();
                OUTLINED_FUNCTION_42_3();
                sub_26203ABDC();
                OUTLINED_FUNCTION_76_0();
                v1603 = OUTLINED_FUNCTION_42_3();
                v1604(v1603);
                OUTLINED_FUNCTION_170_0();
                OUTLINED_FUNCTION_51_2();
                v1596 = 741;
                goto LABEL_397;
              }

              OUTLINED_FUNCTION_237();
              LODWORD(v1745) = v475;
              sub_261FF1B80(v475);
              v476 = v1693;
              sub_261FF19A8();
              v364 = v1725;
              OUTLINED_FUNCTION_150_0(v476, 1, v1725);
              v477 = v1721;
              v478 = v1712;
              v479 = v1694;
              v480 = v1695;
              if (!v324)
              {
                sub_261FF23A0();
                v481 = OUTLINED_FUNCTION_255();
                OUTLINED_FUNCTION_150_0(v481, v482, v478);
                v483 = v1684;
                if (!v324)
                {
                  v484 = v477[2].isa;
                  v485 = v479 + *(v478 + 20);
                  v1747 = v477 + 2;
                  v1746 = v484;
                  (v484)(v1684, v485, v364);
                  sub_261FF23A0();
                  OUTLINED_FUNCTION_150_0(v480, 1, v478);
                  if (!v324)
                  {
                    v486 = v483;
                    v487 = *(v480 + *(v478 + 24));
                    v488 = v478;
                    v489 = v477[4].isa;
                    v490 = v1716;
                    v489(v1716, v1693, v364);
                    v489(v490 + *(v488 + 20), v486, v364);
                    *(v490 + *(v488 + 24)) = v487;
                    sub_261FFEE7C(v1695, type metadata accessor for TunnelInterfaceParameters);
                    sub_261FFEE7C(v1694, type metadata accessor for TunnelInterfaceParameters);
                    v491 = v1675;
                    EnumTagSinglePayload = v1748;
                    sub_261FF23A0();
                    OUTLINED_FUNCTION_150_0(v491, 1, v488);
                    if (!v324)
                    {
                      (v1746)(v1717, v491, v364);
                      OUTLINED_FUNCTION_2_19();
                      sub_261FFEE7C(v491, v493);
                      LODWORD(v1744) = sub_26203A4AC();
                      if (qword_28108B618 == -1)
                      {
LABEL_104:
                        v494 = qword_28108B620;
                        OUTLINED_FUNCTION_45_2();
                        v495 = swift_allocObject();
                        OUTLINED_FUNCTION_86_2(v495);
                        OUTLINED_FUNCTION_45_2();
                        v496 = swift_allocObject();
                        OUTLINED_FUNCTION_139_0(v496);
                        OUTLINED_FUNCTION_46();
                        v497 = swift_allocObject();
                        *(v497 + 16) = sub_261FFF800;
                        *(v497 + 24) = EnumTagSinglePayload;
                        OUTLINED_FUNCTION_46();
                        v498 = EnumTagSinglePayload;
                        v499 = swift_allocObject();
                        *(v499 + 16) = sub_261FFF818;
                        *(v499 + 24) = v497;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
                        v500 = OUTLINED_FUNCTION_167();
                        *(v500 + 16) = xmmword_26203F720;
                        *(v500 + 32) = sub_261FFF848;
                        *(v500 + 40) = v495;
                        *(v500 + 48) = sub_261FFF848;
                        *(v500 + 56) = v496;
                        *(v500 + 64) = sub_261FFF7F0;
                        *(v500 + 72) = v499;
                        swift_setDeallocating();
                        swift_retain_n();

                        sub_261FB9814();
                        v501 = v1744;
                        v1742 = v494;
                        if (os_log_type_enabled(v494, v1744))
                        {
                          OUTLINED_FUNCTION_42_1();
                          v502 = swift_slowAlloc();
                          v1734 = v239;
                          v503 = v502;
                          OUTLINED_FUNCTION_30();
                          v494 = v498;
                          v504 = swift_slowAlloc();
                          *&v1755 = v504;
                          OUTLINED_FUNCTION_166_0(258);
                          *(v503 + 3) = 8;

                          v505 = sub_261F7C884();
                          sub_261F67FE4(v505, v506, &v1755);
                          OUTLINED_FUNCTION_142_0();

                          *(v503 + 4) = v495;
                          OUTLINED_FUNCTION_187();

                          _os_log_impl(&dword_261F5B000, v1742, v501, "%{public}s: Server sending handshake response", v503, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0Tm(v504);
                          OUTLINED_FUNCTION_26();
                          MEMORY[0x266724180]();
                          OUTLINED_FUNCTION_26();
                          MEMORY[0x266724180]();
                        }

                        else
                        {
                        }

                        v811 = v1729;
                        swift_storeEnumTagMultiPayload();
                        sub_261FF2200(v811);
                        v812 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E10, &qword_2620447B0);
                        v813 = v812[12];
                        v814 = v812[16];
                        v815 = v812[20];
                        OUTLINED_FUNCTION_4_13();
                        v1744 = v816;
                        v817 = v1708;
                        sub_261FFEE24(v1716, v1708);
                        v818 = v1725;
                        (v1746)(v817 + v813, v1717, v1725);
                        *(v817 + v814) = v1745;
                        *(v817 + v815) = 1;
                        swift_storeEnumTagMultiPayload();
                        OUTLINED_FUNCTION_236();
                        OUTLINED_FUNCTION_63();
                        v819 = swift_allocObject();
                        OUTLINED_FUNCTION_270(v819);
                        swift_weakInit();
                        v820 = OUTLINED_FUNCTION_85_1();
                        sub_261F79740(v820, v821);
                        v822 = OUTLINED_FUNCTION_167();
                        *(OUTLINED_FUNCTION_28_6(v822) + 32) = v494;
                        sub_261F797BC(&v1755, v822 + 40);
                        v823 = *(v815 + 24);

                        v823(v817, sub_261FFF5E0, v822, v814, v815);

                        OUTLINED_FUNCTION_1_20();
                        sub_261FFEE7C(v817, v824);
                        (*(v1721 + 8))(v1717, v818);
                        sub_261FFEE7C(v1716, v1744);

LABEL_334:
                        __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                        goto LABEL_335;
                      }

LABEL_377:
                      OUTLINED_FUNCTION_0_27();
                      swift_once();
                      goto LABEL_104;
                    }

                    goto LABEL_388;
                  }

LABEL_387:
                  __break(1u);
LABEL_388:
                  __break(1u);
LABEL_389:
                  __break(1u);
LABEL_390:
                  __break(1u);
                  goto LABEL_391;
                }

LABEL_386:
                __break(1u);
                goto LABEL_387;
              }

              __break(1u);
              goto LABEL_385;
            case 2u:
              v443 = v1720;
              OUTLINED_FUNCTION_21_6();
              v444();
              v1725 = *(v443 + 5);
              OUTLINED_FUNCTION_72_2();
              v445 = swift_getEnumCaseMultiPayload();
              v1734 = v239;
              if (v445 != 8)
              {
                if (v445 == 4)
                {
                  v446 = OUTLINED_FUNCTION_118_0();
                  sub_261F797BC(v446, v447);
                  sub_261F7B38C();
                  if (!v1754)
                  {
                    sub_261F66E60(&v1753, &qword_27FEFA288, &qword_262044098);
                    *&v1755 = OUTLINED_FUNCTION_292();
                    *(&v1755 + 1) = v1617;
                    OUTLINED_FUNCTION_33_2();
                    OUTLINED_FUNCTION_184_0();
                    MEMORY[0x266722710]();
                    OUTLINED_FUNCTION_203();
                    sub_261F798CC(v1618);
                    OUTLINED_FUNCTION_143_0();
                    OUTLINED_FUNCTION_76_0();
                    v1619 = OUTLINED_FUNCTION_71_2();
                    v1620(v1619);
                    OUTLINED_FUNCTION_170_0();
                    OUTLINED_FUNCTION_75_2();
                    v1596 = 686;
                    goto LABEL_397;
                  }

                  sub_261F797BC(&v1753, &v1755);
                  v448 = BYTE8(v1759);
                  v449 = OUTLINED_FUNCTION_101_0();
                  __swift_project_boxed_opaque_existential_0Tm(v449, v450);
                  v451 = OUTLINED_FUNCTION_6_12();
                  v452(v451);
                  OUTLINED_FUNCTION_247();
                  v364 = v1757;
                  __swift_project_boxed_opaque_existential_0Tm(&v1755, *(&v1756 + 1));
                  OUTLINED_FUNCTION_53_2();
                  v453 = OUTLINED_FUNCTION_126();
                  v454(v453);
                  v455 = *(&v1752[0] + 1);
                  v456 = OUTLINED_FUNCTION_42_3();
                  sub_261FA3600(v456, v457, v458, v455);
                  OUTLINED_FUNCTION_298();

                  v459 = v1725;
                  if ((v448 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_33_2();
                    OUTLINED_FUNCTION_75_2();
                    for (i = 687; ; i = v1596)
                    {
LABEL_398:
                      OUTLINED_FUNCTION_253();
                      OUTLINED_FUNCTION_252();
                      sub_26203A91C();
                      __break(1u);
LABEL_399:
                      sub_261F66E60(&v1755, &qword_27FEFA288, &qword_262044098);
                      *&aBlock = OUTLINED_FUNCTION_292();
                      *(&aBlock + 1) = v1597;
                      OUTLINED_FUNCTION_33_2();
                      MEMORY[0x266722710](v1598 - 10, v1599 | 0x8000000000000000);
                      sub_261F798CC(v364);
                      OUTLINED_FUNCTION_11_0();
                      sub_26203ABDC();
                      OUTLINED_FUNCTION_76_0();
                      v1600 = OUTLINED_FUNCTION_11_0();
                      v1601(v1600);
                      OUTLINED_FUNCTION_170_0();
                      OUTLINED_FUNCTION_51_2();
                      v1596 = 718;
LABEL_397:
                      ;
                    }
                  }

                  v460 = v1739;
                  if (!v1725)
                  {
                    v1382 = sub_26203A4AC();
                    if (qword_28108B618 != -1)
                    {
                      OUTLINED_FUNCTION_0_27();
                      swift_once();
                    }

                    v1383 = qword_28108B620;
                    OUTLINED_FUNCTION_45_2();
                    v1384 = swift_allocObject();
                    OUTLINED_FUNCTION_86_2(v1384);
                    OUTLINED_FUNCTION_45_2();
                    v1385 = swift_allocObject();
                    OUTLINED_FUNCTION_121_0(v1385);
                    OUTLINED_FUNCTION_46();
                    v1386 = swift_allocObject();
                    v1387 = v1748;
                    *(v1386 + 16) = sub_261FFF800;
                    *(v1386 + 24) = v1387;
                    OUTLINED_FUNCTION_46();
                    v1388 = swift_allocObject();
                    *(v1388 + 16) = sub_261FFF818;
                    *(v1388 + 24) = v1386;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
                    v1389 = OUTLINED_FUNCTION_167();
                    *(v1389 + 16) = xmmword_26203F720;
                    *(v1389 + 32) = sub_261FFF848;
                    *(v1389 + 40) = v1384;
                    *(v1389 + 48) = sub_261FFF848;
                    *(v1389 + 56) = &unk_28108B000;
                    *(v1389 + 64) = sub_261FFF7F0;
                    *(v1389 + 72) = v1388;
                    swift_setDeallocating();
                    OUTLINED_FUNCTION_299();

                    sub_261FB9814();
                    if (OUTLINED_FUNCTION_296())
                    {
                      OUTLINED_FUNCTION_42_1();
                      swift_slowAlloc();
                      v1747 = v1383;
                      OUTLINED_FUNCTION_30();
                      v1390 = swift_slowAlloc();
                      LODWORD(v1746) = v1382;
                      v1391 = v1390;
                      *&v1753 = v1390;
                      OUTLINED_FUNCTION_66_2();
                      OUTLINED_FUNCTION_179_0();
                      v1392 = sub_261F7C884();
                      sub_261F67FE4(v1392, v1393, &v1753);
                      OUTLINED_FUNCTION_65();

                      OUTLINED_FUNCTION_178_0();

                      OUTLINED_FUNCTION_135_0(&dword_261F5B000, v1394, v1395, "%{public}s: Client sent handshake request, waiting for server response");
                      __swift_destroy_boxed_opaque_existential_0Tm(v1391);
                      v1396 = OUTLINED_FUNCTION_32_4();
                      MEMORY[0x266724180](v1396);
                      OUTLINED_FUNCTION_26();
                      MEMORY[0x266724180]();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_187();
                    }

                    v1479 = v1729;
                    swift_storeEnumTagMultiPayload();
                    sub_261FF2200(v1479);
                    OUTLINED_FUNCTION_63();
                    v1480 = swift_allocObject();
                    OUTLINED_FUNCTION_136_0(v1480);
                    swift_weakInit();
                    sub_261F79740(&v1755, &v1753);
                    v1481 = OUTLINED_FUNCTION_167();
                    *(OUTLINED_FUNCTION_28_6(v1481) + 32) = v1479;
                    sub_261F797BC(&v1753, v1481 + 40);

                    sub_261FF6E8C();

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1755);
                    goto LABEL_334;
                  }

                  goto LABEL_163;
                }

                OUTLINED_FUNCTION_278();
                v696 = v1663;
                OUTLINED_FUNCTION_239();
                (v443)();
                LODWORD(v1722) = sub_261FF5EE8(2, v696);
                v698 = *(v361 + 1);
                v697 = (v361 + 8);
                v699 = v698;
                (v698)(v696, v239);
                v1721 = v698;
                if ((v1722 & 1) == 0)
                {
                  goto LABEL_168;
                }

                *&v1718 = v443;
                sub_261F79740(v1720, &aBlock);
                sub_261F798CC(v1644);
                v700 = v1725;
                v701 = v1725;
                v702 = sub_261FF6158(v239);
                LODWORD(v1719) = v702;
                v703 = OUTLINED_FUNCTION_94();
                v1722 = v697;
                v699(v703);

                if (v1719 == 2 || (v702 & 1) != 0)
                {
                  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                  v239 = v1741;
                  v699 = v1721;
                  v443 = v1718;
LABEL_168:
                  OUTLINED_FUNCTION_239();
                  (v443)();
                  OUTLINED_FUNCTION_155_0();
                  v706 = sub_261FF5EE8(v704, v705);
                  v707 = OUTLINED_FUNCTION_94();
                  v699(v707);
                  v327 = v239;
                  if (v706)
                  {
                    sub_261F797BC(v1720, &v1753);
                    sub_261F798CC(v1639);
                    v708 = sub_261FF6158(v239);
                    v709 = OUTLINED_FUNCTION_122();
                    v699(v709);
                    v239 = v1734;
                    if (v708 != 2 && (v708 & 1) != 0)
                    {
                      OUTLINED_FUNCTION_22_6(&v1753);
                      v710 = OUTLINED_FUNCTION_18_5();
                      v711(v710);
                      v712 = sub_261FF2178();
                      OUTLINED_FUNCTION_71_2();
                      sub_261FA1BC8(v712, v713);

                      if (*(&v1756 + 1))
                      {
                        aBlock = v1755;
                        v1759 = v1756;
                        v1760 = v1757;
                        v714 = v1741;
                        v715 = v1739;
                        v716 = v1740;
                        v717 = v1725;
                        if (v1725)
                        {
                          v718 = v1732;
                          sub_261F79740(&v1753, v1732);
                          v719 = v717;

                          *(v718 + 40) = v717;
                          swift_storeEnumTagMultiPayload();
                          sub_261F6D760(v718);

                          v720 = *(v715 + 8);
                          v721 = OUTLINED_FUNCTION_275();
                          v720(v721);
                          sub_261FFEDE8(&aBlock);
                          __swift_destroy_boxed_opaque_existential_0Tm(&v1753);
                          v722 = OUTLINED_FUNCTION_71_2();
                          v720(v722);
                        }

                        else
                        {

                          sub_261FF8A80(&aBlock, v1564, v1565, v1566, v1567, v1568, v1569, v1570, i, v1635, v1636, v1637, v1638, v1639, v1640, v1641, v1642, v1643, v1644, v1645);
                          sub_261FFEDE8(&aBlock);
                          __swift_destroy_boxed_opaque_existential_0Tm(&v1753);
                          (*(v715 + 8))(v716, v1743);
                        }

                        v1533 = v1747;
                        v1534 = v714;
                      }

                      else
                      {

                        sub_261F66E60(&v1755, &qword_27FEFA340, &qword_262044790);
                        __swift_destroy_boxed_opaque_existential_0Tm(&v1753);
                        v1531 = OUTLINED_FUNCTION_9_12();
                        v1532(v1531);
                        v1533 = OUTLINED_FUNCTION_130_0();
                      }

                      return (v1721)(v1533, v1534);
                    }

                    p_aBlock = &v1753;
                    goto LABEL_156;
                  }

                  v883 = v1720;
                  goto LABEL_217;
                }

                sub_261FF2178();
                v1486 = BYTE8(v1759);
                v1487 = v1760;
                OUTLINED_FUNCTION_202();
                OUTLINED_FUNCTION_149_0();
                v1488 = OUTLINED_FUNCTION_67_2();
                v1489(v1488, v1487);
                OUTLINED_FUNCTION_113_0();
                sub_261F78910(v1490, v1491, v1492);
                OUTLINED_FUNCTION_297();

                if ((v1486 & 1) == 0)
                {

                  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                  __swift_destroy_boxed_opaque_existential_0Tm(v1720);
                  v1516 = OUTLINED_FUNCTION_9_12();
                  v1517(v1516);
                  goto LABEL_361;
                }

                v239 = v1739;
                v240 = v1740;
                v1493 = v1725;
                if (v1725)
                {
                  v1494 = v1732;
                  sub_261F79740(&aBlock, v1732);
                  v1495 = v1493;

                  *(v1494 + 40) = v1493;
                  swift_storeEnumTagMultiPayload();
                  sub_261F6D760(v1494);

                  v1496 = *(v239 + 8);
                  v1497 = OUTLINED_FUNCTION_71_2();
                  v1496(v1497);
                  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                  __swift_destroy_boxed_opaque_existential_0Tm(v1720);
                  v1498 = OUTLINED_FUNCTION_133_0();
                  v1496(v1498);
LABEL_361:
                  v1576 = OUTLINED_FUNCTION_130_0();
                  return (v1721)(v1576);
                }

LABEL_360:

                OUTLINED_FUNCTION_63();
                v1571 = swift_allocObject();
                OUTLINED_FUNCTION_136_0(v1571);
                swift_weakInit();
                v1572 = OUTLINED_FUNCTION_85_1();
                sub_261F79740(v1572, v1573);
                v1574 = OUTLINED_FUNCTION_167();
                v1575 = OUTLINED_FUNCTION_28_6(v1574);
                OUTLINED_FUNCTION_191(v1575);
                OUTLINED_FUNCTION_196();
                sub_261FF6E8C();

                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                __swift_destroy_boxed_opaque_existential_0Tm(v1720);
                (*(v239 + 8))(v240, v1743);
                goto LABEL_361;
              }

              v682 = OUTLINED_FUNCTION_118_0();
              sub_261F797BC(v682, v683);
              sub_261F7B38C();
              if (!v1754)
              {
                sub_261F66E60(&v1753, &qword_27FEFA288, &qword_262044098);
                *&v1755 = OUTLINED_FUNCTION_231();
                *(&v1755 + 1) = v1624;
                OUTLINED_FUNCTION_184_0();
                MEMORY[0x266722710](0xD000000000000033);
                OUTLINED_FUNCTION_203();
                sub_261F798CC(v1625);
                OUTLINED_FUNCTION_143_0();
                OUTLINED_FUNCTION_76_0();
                v1626 = OUTLINED_FUNCTION_71_2();
                v1627(v1626);
                OUTLINED_FUNCTION_170_0();
                OUTLINED_FUNCTION_75_2();
                v1596 = 764;
                goto LABEL_397;
              }

              sub_261F797BC(&v1753, &v1755);
              v684 = BYTE8(v1759);
              v685 = OUTLINED_FUNCTION_101_0();
              __swift_project_boxed_opaque_existential_0Tm(v685, v686);
              v687 = OUTLINED_FUNCTION_6_12();
              v688(v687);
              OUTLINED_FUNCTION_247();
              v565 = *(&v1756 + 1);
              __swift_project_boxed_opaque_existential_0Tm(&v1755, *(&v1756 + 1));
              OUTLINED_FUNCTION_53_2();
              v689 = OUTLINED_FUNCTION_126();
              v690(v689);
              v691 = *(&v1752[0] + 1);
              v692 = OUTLINED_FUNCTION_42_3();
              sub_261FA3600(v692, v693, v694, v691);
              OUTLINED_FUNCTION_298();

              v459 = v1725;
              if (v684)
              {
                v460 = v1739;
                if (v1725)
                {
LABEL_163:

                  sub_261F9BCE0();
                  OUTLINED_FUNCTION_71_2();
                  sub_26203ACDC();
                  OUTLINED_FUNCTION_59_2();
                  OUTLINED_FUNCTION_171_0();
                  OUTLINED_FUNCTION_267();
                  sub_26203AD4C();
                  OUTLINED_FUNCTION_132_0();
                  sub_261F9D610();
                  OUTLINED_FUNCTION_72_0();
                  swift_allocError();
                  sub_2620399DC();

                  swift_willThrow();

                  OUTLINED_FUNCTION_259();
                  v695 = *(v460 + 8);
                  v466 = OUTLINED_FUNCTION_161_0();
                  return v468(v466, v467);
                }

                v1423 = sub_26203A4AC();
                if (qword_28108B618 != -1)
                {
                  OUTLINED_FUNCTION_0_27();
                  swift_once();
                }

                v1424 = qword_28108B620;
                OUTLINED_FUNCTION_45_2();
                v1425 = swift_allocObject();
                OUTLINED_FUNCTION_86_2(v1425);
                OUTLINED_FUNCTION_45_2();
                v1426 = swift_allocObject();
                OUTLINED_FUNCTION_121_0(v1426);
                OUTLINED_FUNCTION_46();
                v1427 = swift_allocObject();
                v1428 = v1748;
                *(v1427 + 16) = sub_261FFF800;
                *(v1427 + 24) = v1428;
                OUTLINED_FUNCTION_46();
                v1429 = swift_allocObject();
                *(v1429 + 16) = sub_261FFF818;
                *(v1429 + 24) = v1427;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
                v1430 = OUTLINED_FUNCTION_167();
                *(v1430 + 16) = xmmword_26203F720;
                *(v1430 + 32) = sub_261FFF848;
                *(v1430 + 40) = v1425;
                *(v1430 + 48) = sub_261FFF848;
                *(v1430 + 56) = &unk_28108B000;
                *(v1430 + 64) = sub_261FFF7F0;
                *(v1430 + 72) = v1429;
                swift_setDeallocating();
                OUTLINED_FUNCTION_299();

                sub_261FB9814();
                if (OUTLINED_FUNCTION_296())
                {
                  OUTLINED_FUNCTION_42_1();
                  swift_slowAlloc();
                  v1747 = v1424;
                  OUTLINED_FUNCTION_30();
                  v1431 = swift_slowAlloc();
                  LODWORD(v1746) = v1423;
                  v1432 = v1431;
                  *&v1753 = v1431;
                  OUTLINED_FUNCTION_66_2();
                  OUTLINED_FUNCTION_179_0();
                  v1433 = sub_261F7C884();
                  sub_261F67FE4(v1433, v1434, &v1753);
                  OUTLINED_FUNCTION_65();

                  OUTLINED_FUNCTION_178_0();

                  OUTLINED_FUNCTION_135_0(&dword_261F5B000, v1435, v1436, "%{public}s: Server sent handshake response");
                  __swift_destroy_boxed_opaque_existential_0Tm(v1432);
                  v1437 = OUTLINED_FUNCTION_32_4();
                  MEMORY[0x266724180](v1437);
                  OUTLINED_FUNCTION_26();
                  MEMORY[0x266724180]();
                }

                else
                {
                  OUTLINED_FUNCTION_187();
                }

                v364 = v1729;
                v1482 = sub_261FF246C();
                v521 = v1743;
                if (!v1482)
                {
                  goto LABEL_395;
                }

                v1483 = v1482;

                *v364 = 1;
                swift_storeEnumTagMultiPayload();
                sub_261FF2200(v364);
                OUTLINED_FUNCTION_84();
                sub_261FF24AC();
                OUTLINED_FUNCTION_84();
                v1484 = sub_261FF2510();
                v1483(v1484);
                v1485 = OUTLINED_FUNCTION_71_2();
                sub_261F665E4(v1485);
                OUTLINED_FUNCTION_259();
                v466 = OUTLINED_FUNCTION_17_8();
                goto LABEL_110;
              }

              __break(1u);
              goto LABEL_381;
            case 3u:
              v553 = v1715;
              OUTLINED_FUNCTION_21_6();
              v554();
              v555 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA378, &qword_2620447D0) + 48);
              OUTLINED_FUNCTION_72_2();
              v556 = swift_getEnumCaseMultiPayload();
              if (v556 == 6)
              {
                v723 = OUTLINED_FUNCTION_118_0();
                sub_261F797BC(v723, v724);
                v364 = v1674;
                sub_261FFF604(v555 + v553, v1674);
                OUTLINED_FUNCTION_153_0();
                sub_261F7B38C();
                if (!v1754)
                {
                  sub_261F66E60(&v1753, &qword_27FEFA288, &qword_262044098);
                  *&v1755 = OUTLINED_FUNCTION_231();
                  *(&v1755 + 1) = v1628;
                  OUTLINED_FUNCTION_184_0();
                  MEMORY[0x266722710](0xD000000000000033);
                  OUTLINED_FUNCTION_174_0();
                  OUTLINED_FUNCTION_42_3();
                  sub_26203ABDC();
                  OUTLINED_FUNCTION_76_0();
                  v1629 = OUTLINED_FUNCTION_42_3();
                  v1630(v1629);
                  OUTLINED_FUNCTION_170_0();
                  OUTLINED_FUNCTION_75_2();
                  v1596 = 728;
                  goto LABEL_397;
                }

                sub_261F797BC(&v1753, &v1755);
                v725 = BYTE8(v1759);
                v726 = OUTLINED_FUNCTION_101_0();
                __swift_project_boxed_opaque_existential_0Tm(v726, v727);
                v728 = OUTLINED_FUNCTION_6_12();
                v729(v728);
                OUTLINED_FUNCTION_247();
                v730 = *(&v1756 + 1);
                v565 = v1757;
                __swift_project_boxed_opaque_existential_0Tm(&v1755, *(&v1756 + 1));
                OUTLINED_FUNCTION_53_2();
                v731(v730, v565);
                v732 = *(&v1752[0] + 1);
                v733 = OUTLINED_FUNCTION_42_3();
                sub_261FA3600(v733, v734, v735, v732);
                OUTLINED_FUNCTION_298();

                v327 = v1743;
                if (v725)
                {
                  v571 = v1662;
                  sub_261F674BC(v364, v1662, &qword_27FEFA2D0, &qword_262045930);
                  if (OUTLINED_FUNCTION_301() == 1)
                  {
LABEL_177:
                    v736 = *v571;
                    sub_261F9BCE0();
                    OUTLINED_FUNCTION_122();
                    sub_26203ACDC();
                    OUTLINED_FUNCTION_59_2();
                    sub_26203AD4C();
                    OUTLINED_FUNCTION_132_0();
                    sub_261F9D610();
                    OUTLINED_FUNCTION_72_0();
                    swift_allocError();
                    v737 = v736;
                    OUTLINED_FUNCTION_94();
                    sub_2620399DC();

                    swift_willThrow();

                    sub_261F66E60(v364, &qword_27FEFA2D0, &qword_262045930);
                    OUTLINED_FUNCTION_259();
                    v466 = OUTLINED_FUNCTION_17_8();
                    v467 = v327;
                    return v468(v466, v467);
                  }

                  OUTLINED_FUNCTION_3_19();
                  v873 = v1643;
                  sub_261FFEEEC(v571, v1643);
                  v874 = OUTLINED_FUNCTION_101_0();
                  sub_261FF7550(v874, v875, v876, v877, v878, v879, v880, v881, i, v1635, v1636, v1637, v1638, v1639, v1640, v1641, v1642, v1643, v1644, v1645);
                  OUTLINED_FUNCTION_1_20();
                  sub_261FFEE7C(v873, v882);
                  v872 = v1674;
LABEL_214:
                  sub_261F66E60(v872, &qword_27FEFA2D0, &qword_262045930);
                  OUTLINED_FUNCTION_259();
                  v466 = OUTLINED_FUNCTION_17_8();
LABEL_300:
                  v467 = v327;
                  return v468(v466, v467);
                }

LABEL_382:
                __break(1u);
                goto LABEL_383;
              }

              if (v556 == 5)
              {
                v557 = OUTLINED_FUNCTION_118_0();
                sub_261F797BC(v557, v558);
                v364 = v1673;
                sub_261FFF604(v555 + v553, v1673);
                OUTLINED_FUNCTION_153_0();
                sub_261F7B38C();
                if (!v1754)
                {
                  sub_261F66E60(&v1753, &qword_27FEFA288, &qword_262044098);
                  *&v1755 = OUTLINED_FUNCTION_292();
                  *(&v1755 + 1) = v1621;
                  OUTLINED_FUNCTION_33_2();
                  OUTLINED_FUNCTION_184_0();
                  MEMORY[0x266722710]();
                  OUTLINED_FUNCTION_174_0();
                  OUTLINED_FUNCTION_42_3();
                  sub_26203ABDC();
                  OUTLINED_FUNCTION_76_0();
                  v1622 = OUTLINED_FUNCTION_42_3();
                  v1623(v1622);
                  OUTLINED_FUNCTION_170_0();
                  OUTLINED_FUNCTION_75_2();
                  v1596 = 703;
                  goto LABEL_397;
                }

                sub_261F797BC(&v1753, &v1755);
                v559 = BYTE8(v1759);
                v560 = OUTLINED_FUNCTION_101_0();
                __swift_project_boxed_opaque_existential_0Tm(v560, v561);
                v562 = OUTLINED_FUNCTION_6_12();
                v563(v562);
                OUTLINED_FUNCTION_247();
                v564 = *(&v1756 + 1);
                v565 = v1757;
                __swift_project_boxed_opaque_existential_0Tm(&v1755, *(&v1756 + 1));
                OUTLINED_FUNCTION_53_2();
                v566(v564, v565);
                v567 = *(&v1752[0] + 1);
                v568 = OUTLINED_FUNCTION_42_3();
                sub_261FA3600(v568, v569, v570, v567);
                OUTLINED_FUNCTION_298();

                v327 = v1743;
                if (v559)
                {
                  v571 = v1661;
                  sub_261F674BC(v364, v1661, &qword_27FEFA2D0, &qword_262045930);
                  if (OUTLINED_FUNCTION_301() == 1)
                  {
                    goto LABEL_177;
                  }

                  OUTLINED_FUNCTION_3_19();
                  v862 = v1642;
                  sub_261FFEEEC(v571, v1642);
                  v863 = OUTLINED_FUNCTION_101_0();
                  sub_261FF7550(v863, v864, v865, v866, v867, v868, v869, v870, i, v1635, v1636, v1637, v1638, v1639, v1640, v1641, v1642, v1643, v1644, v1645);
                  OUTLINED_FUNCTION_1_20();
                  sub_261FFEE7C(v862, v871);
                  v872 = v1673;
                  goto LABEL_214;
                }

LABEL_381:
                __break(1u);
                goto LABEL_382;
              }

              v1725 = v555;
              v1734 = v239;
              OUTLINED_FUNCTION_278();
              v738 = v1664;
              OUTLINED_FUNCTION_239();
              v553();
              LODWORD(v1721) = sub_261FF5EE8(2, v738);
              v740 = *(v361 + 1);
              v739 = v361 + 8;
              v741 = v738;
              v742 = v740;
              (v740)(v741, v239);
              if ((v1721 & 1) == 0)
              {
                goto LABEL_182;
              }

              v1719 = v553;
              v1720 = v360;
              v743 = v1715;
              sub_261F79740(v1715, &aBlock);
              sub_261F674BC(v1725 + v743, v1665, &qword_27FEFA2D0, &qword_262045930);
              sub_261F798CC(v1645);
              v744 = sub_261FF6158(v239);
              v745 = OUTLINED_FUNCTION_94();
              v1721 = v739;
              (v742)(v745);
              if (v744 == 2 || (v744 & 1) != 0)
              {
                sub_261F66E60(v1665, &qword_27FEFA2D0, &qword_262045930);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v239 = v1741;
                v553 = v1719;
LABEL_182:
                v746 = v1660;
                OUTLINED_FUNCTION_239();
                v553();
                v747 = sub_261FF5EE8(2, v746);
                v748 = OUTLINED_FUNCTION_94();
                (v742)(v748);
                v749 = v742;
                v327 = v239;
                if ((v747 & 1) == 0)
                {
                  v884 = v1715;
                  sub_261F66E60(v1725 + v1715, &qword_27FEFA2D0, &qword_262045930);
                  v883 = v884;
LABEL_217:
                  __swift_destroy_boxed_opaque_existential_0Tm(v883);
                  goto LABEL_220;
                }

                v750 = v1715;
                sub_261F797BC(v1715, &aBlock);
                v751 = v1641;
                sub_261FFF604(v1725 + v750, v1641);
                sub_261F798CC(v1640);
                v752 = sub_261FF6158(v239);
                v753 = OUTLINED_FUNCTION_122();
                v1725 = v749;
                (v749)(v753);
                v239 = v1734;
                if (v752 != 2 && (v752 & 1) != 0)
                {

                  sub_261FF21BC();
                  v754 = BYTE8(v1759);
                  v755 = v1760;
                  OUTLINED_FUNCTION_202();
                  OUTLINED_FUNCTION_164_0();
                  v756 = OUTLINED_FUNCTION_67_2();
                  v757(v756, v755);
                  OUTLINED_FUNCTION_113_0();
                  sub_261F78910(v758, v759, v760);
                  OUTLINED_FUNCTION_297();

                  if ((v754 & 1) == 0)
                  {
                    sub_261F66E60(v751, &qword_27FEFA2D0, &qword_262045930);
                    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                    v1527 = OUTLINED_FUNCTION_9_12();
                    v1528(v1527);
                    v1529 = OUTLINED_FUNCTION_130_0();
                    return (v1725)(v1529, v1530);
                  }

                  v761 = v1636;
                  sub_261F674BC(v751, v1636, &qword_27FEFA2D0, &qword_262045930);
                  v762 = OUTLINED_FUNCTION_301();
                  v763 = v1743;
                  if (v762 == 1)
                  {
                    v764 = *v761;
                    v765 = v1732;
                    sub_261F79740(&aBlock, v1732);
                    *(v765 + 40) = v764;
                    OUTLINED_FUNCTION_11_0();
                    swift_storeEnumTagMultiPayload();
                    v766 = v764;
                    sub_261F6D760(v765);

                    v767 = v1739;
                    v751 = v1641;
                    (*(v1739 + 8))(v765, v763);
                    v768 = v1741;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_3_19();
                    v1553 = i;
                    sub_261FFEEEC(v761, i);
                    v1554 = v1736;
                    sub_261FF7550(&aBlock, v1553, v1555, v1556, v1557, v1558, v1559, v1560, i, v1635, v1636, v1637, v1638, v1639, v1640, v1641, v1642, v1643, v1644, v1645);
                    v768 = v1741;
                    if (v1554)
                    {
                      OUTLINED_FUNCTION_1_20();
                      sub_261FFEE7C(v1553, v1561);
                      sub_261F66E60(v751, &qword_27FEFA2D0, &qword_262045930);
                      OUTLINED_FUNCTION_30_5(&aBlock);
                      v1562 = OUTLINED_FUNCTION_100();
                      v1563(v1562);
                      return (v1725)(v1747, v768);
                    }

                    OUTLINED_FUNCTION_1_20();
                    sub_261FFEE7C(v1553, v1589);
                    v767 = v1739;
                  }

                  sub_261F66E60(v751, &qword_27FEFA2D0, &qword_262045930);
                  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                  v1590 = *(v767 + 8);
                  v1591 = OUTLINED_FUNCTION_100();
                  v1592(v1591);
                  return (v1725)(v1747, v768);
                }

                sub_261F66E60(v751, &qword_27FEFA2D0, &qword_262045930);
                p_aBlock = &aBlock;
LABEL_156:
                __swift_destroy_boxed_opaque_existential_0Tm(p_aBlock);
                goto LABEL_221;
              }

              v191 = v742;

              OUTLINED_FUNCTION_153_0();
              sub_261FF2178();
              v1499 = BYTE8(v1759);
              v1500 = v1760;
              OUTLINED_FUNCTION_202();
              OUTLINED_FUNCTION_164_0();
              v1501 = OUTLINED_FUNCTION_67_2();
              v1502(v1501, v1500);
              OUTLINED_FUNCTION_113_0();
              sub_261F78910(v1503, v1504, v1505);
              OUTLINED_FUNCTION_297();

              if ((v1499 & 1) == 0)
              {
                OUTLINED_FUNCTION_113_0();
                sub_261F66E60(v1518, v1519, v1520);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                OUTLINED_FUNCTION_113_0();
                sub_261F66E60(v1521, v1522, v1523);
                __swift_destroy_boxed_opaque_existential_0Tm(v743);
                v1524 = OUTLINED_FUNCTION_9_12();
                v1525(v1524);
                v1526 = OUTLINED_FUNCTION_130_0();
                return (v191)(v1526);
              }

              v1506 = v1637;
              sub_261F674BC(v1665, v1637, &qword_27FEFA2D0, &qword_262045930);
              v1507 = OUTLINED_FUNCTION_301();
              v1508 = v1740;
              if (v1507 == 1)
              {
                v1509 = *v1506;
                v1510 = v1732;
                sub_261F79740(&aBlock, v1732);
                *(v1510 + 40) = v1509;
                swift_storeEnumTagMultiPayload();
                v1511 = v1509;
                sub_261F6D760(v1510);

                v1512 = v1739;
                v1513 = *(v1739 + 8);
                v1514 = OUTLINED_FUNCTION_39_1();
                v1515(v1514);
LABEL_364:
                OUTLINED_FUNCTION_113_0();
                sub_261F66E60(v1578, v1579, v1580);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v1581 = v1715;
                OUTLINED_FUNCTION_113_0();
                sub_261F66E60(v1582, v1583, v1584);
                __swift_destroy_boxed_opaque_existential_0Tm(v1581);
                v1585 = *(v1512 + 8);
                v1586 = OUTLINED_FUNCTION_35_3();
                v1587(v1586);
                goto LABEL_365;
              }

              OUTLINED_FUNCTION_3_19();
              v319 = v1635;
              sub_261FFEEEC(v1506, v1635);
              v1535 = OUTLINED_FUNCTION_101_0();
              v1536 = v1736;
              sub_261FF7550(v1535, v1537, v1538, v1539, v1540, v1541, v1542, v1543, i, v1635, v1636, v1637, v1638, v1639, v1640, v1641, v1642, v1643, v1644, v1645);
              if (v1536)
              {
                OUTLINED_FUNCTION_1_20();
                sub_261FFEE7C(v319, v1544);
                OUTLINED_FUNCTION_113_0();
                sub_261F66E60(v1545, v1546, v1547);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v1548 = v1715;
                OUTLINED_FUNCTION_113_0();
                sub_261F66E60(v1549, v1550, v1551);
                OUTLINED_FUNCTION_30_5(v1548);
                v1552(v1508, v1743);
LABEL_365:
                v1588 = OUTLINED_FUNCTION_130_0();
                return (v191)(v1588);
              }

              goto LABEL_363;
            case 4u:
              v572 = v1698;
              OUTLINED_FUNCTION_21_6();
              v573();
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() != 9)
              {
                OUTLINED_FUNCTION_277();
                v679 = OUTLINED_FUNCTION_100();
                v680(v679);
                goto LABEL_221;
              }

              v1734 = v239;
              (v362)(v1692, v572, v327);
              v574 = sub_26203A4AC();
              OUTLINED_FUNCTION_265();
              if (!v324)
              {
                OUTLINED_FUNCTION_0_27();
                swift_once();
              }

              v575 = qword_28108B620;
              OUTLINED_FUNCTION_45_2();
              v576 = swift_allocObject();
              OUTLINED_FUNCTION_86_2(v576);
              OUTLINED_FUNCTION_45_2();
              v577 = swift_allocObject();
              OUTLINED_FUNCTION_121_0(v577);
              OUTLINED_FUNCTION_46();
              v578 = swift_allocObject();
              v579 = v1748;
              *(v578 + 16) = sub_261FFF800;
              *(v578 + 24) = v579;
              OUTLINED_FUNCTION_46();
              v580 = swift_allocObject();
              *(v580 + 16) = sub_261FFF818;
              *(v580 + 24) = v578;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
              v581 = OUTLINED_FUNCTION_167();
              *(v581 + 16) = xmmword_26203F720;
              *(v581 + 32) = sub_261FFF848;
              *(v581 + 40) = v576;
              *(v581 + 48) = sub_261FFF848;
              *(v581 + 56) = v360;
              *(v581 + 64) = sub_261FFF7F0;
              *(v581 + 72) = v580;
              swift_setDeallocating();
              OUTLINED_FUNCTION_299();

              sub_261FB9814();
              if (OUTLINED_FUNCTION_296())
              {
                OUTLINED_FUNCTION_42_1();
                swift_slowAlloc();
                v1747 = v575;
                OUTLINED_FUNCTION_30();
                v582 = swift_slowAlloc();
                LODWORD(v1746) = v574;
                v583 = v582;
                *&aBlock = v582;
                OUTLINED_FUNCTION_66_2();
                OUTLINED_FUNCTION_179_0();
                sub_261F7C884();
                OUTLINED_FUNCTION_74_2();
                sub_261F67FE4(v584, v585, v586);
                OUTLINED_FUNCTION_65();

                OUTLINED_FUNCTION_178_0();

                OUTLINED_FUNCTION_135_0(&dword_261F5B000, v587, v588, "%{public}s: Creating virtual interface");
                __swift_destroy_boxed_opaque_existential_0Tm(v583);
                v589 = OUTLINED_FUNCTION_32_4();
                MEMORY[0x266724180](v589);
                OUTLINED_FUNCTION_26();
                MEMORY[0x266724180]();
              }

              else
              {
                OUTLINED_FUNCTION_187();
              }

              v364 = v579;
              v385 = v1725;
              v786 = v1686;
              sub_261FF23A0();
              v787 = OUTLINED_FUNCTION_211();
              v239 = v1712;
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v787, v788, v1712);
              sub_261F66E60(v786, &qword_27FEFA2A0, &qword_2620440B0);
              if (EnumTagSinglePayload == 1)
              {
                __break(1u);
                goto LABEL_377;
              }

              v789 = v1672;
              sub_261FF19A8();
              v384 = __swift_getEnumTagSinglePayload(v789, 1, v385);
              sub_261F66E60(v789, &qword_27FEFA270, &qword_262041910);
              if (v384 != 1)
              {
                sub_261F7B38C();
                if (!*(&v1756 + 1))
                {
                  sub_261F66E60(&v1755, &qword_27FEFA288, &qword_262044098);
                  *&aBlock = OUTLINED_FUNCTION_231();
                  *(&aBlock + 1) = v1610;
                  OUTLINED_FUNCTION_65_1();
                  OUTLINED_FUNCTION_203();
                  sub_261F798CC(v1611);
                  OUTLINED_FUNCTION_143_0();
                  OUTLINED_FUNCTION_76_0();
                  v1612 = OUTLINED_FUNCTION_71_2();
                  v1613(v1612);
                  OUTLINED_FUNCTION_170_0();
                  OUTLINED_FUNCTION_51_2();
                  v1596 = 787;
                  goto LABEL_397;
                }

                OUTLINED_FUNCTION_237();
                sub_261F6E294();
                sub_261FF23A0();
                v790 = OUTLINED_FUNCTION_255();
                OUTLINED_FUNCTION_150_0(v790, v791, v239);
                if (v324)
                {
                  goto LABEL_389;
                }

                v792 = v1735;
                v793 = *(v1735 + 32);
                v794 = OUTLINED_FUNCTION_71_2();
                v795(v794);
                OUTLINED_FUNCTION_236();
                v796 = *(v789 + 72);
                v797 = OUTLINED_FUNCTION_82_1();
                v798 = v1737;
                v799(v797);
                LOBYTE(v1755) = 0;
                v800 = v1670;
                v801 = OUTLINED_FUNCTION_177_0();
                v802 = v1736;
                sub_2620028E4(v801, v803, v804, v805, v806, v798, v792);
                if (v802)
                {

                  static RemotePairingError.tunnelError.getter();
                  OUTLINED_FUNCTION_132_0();
                  sub_261F9BCE0();
                  OUTLINED_FUNCTION_171_0();
                  OUTLINED_FUNCTION_267();
                  sub_26203AD4C();
                  v1753 = v1755;
                  sub_261F9D610();
                  OUTLINED_FUNCTION_72_0();
                  swift_allocError();
                  v807 = v802;
                  sub_2620399DC();

                  swift_willThrow();

                  OUTLINED_FUNCTION_76_0();
                  v808(v1692, v1741);
                  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                  v809 = OUTLINED_FUNCTION_9_12();
                  return v810(v809);
                }

                *&v1755 = sub_26203ABEC();
                *(&v1755 + 1) = v833;
                OUTLINED_FUNCTION_170_0();
                MEMORY[0x266722710](*(v364 + 16), *(v364 + 24));
                MEMORY[0x266722710](10272, 0xE200000000000000);
                v834 = *(v792 + 40);
                v835 = OUTLINED_FUNCTION_133_0();
                v837 = v836(v835);
                MEMORY[0x266722710](v837);

                MEMORY[0x266722710](47, 0xE100000000000000);
                v838 = v1646;
                sub_261FF23A0();
                v839 = OUTLINED_FUNCTION_255();
                OUTLINED_FUNCTION_150_0(v839, v840, v1712);
                if (v324)
                {
                  goto LABEL_393;
                }

                sub_262002A18(v1647);
                OUTLINED_FUNCTION_2_19();
                sub_261FFEE7C(v838, v841);
                v842 = v1725;
                sub_26203A8CC();
                v843 = OUTLINED_FUNCTION_99();
                v844(v843, v842);
                MEMORY[0x266722710](41, 0xE100000000000000);
                sub_261FF1D58();
                v845 = v1706;
                OUTLINED_FUNCTION_248();
                v846 = v1648;
                v847 = OUTLINED_FUNCTION_131();
                v848(v847);
                OUTLINED_FUNCTION_182_0();
                __swift_storeEnumTagSinglePayload(v849, v850, v851, v798);
                sub_261FF1804(v846);
                (*(v845 + 8))(v800, v798);
                v852 = sub_261FF246C();
                v1747 = v853;
                v854 = v1739;
                if (!v852)
                {
LABEL_394:
                  __break(1u);
LABEL_395:
                  __break(1u);
LABEL_396:
                  *&aBlock = OUTLINED_FUNCTION_231();
                  *(&aBlock + 1) = v1593;
                  OUTLINED_FUNCTION_65_1();
                  OUTLINED_FUNCTION_203();
                  sub_261F798CC(v1594);
                  OUTLINED_FUNCTION_143_0();
                  v1595 = OUTLINED_FUNCTION_71_2();
                  (v1724)(v1595);
                  OUTLINED_FUNCTION_170_0();
                  OUTLINED_FUNCTION_51_2();
                  v1596 = 986;
                  goto LABEL_397;
                }

                v855 = v852;

                v856 = v1742;
                v857 = v1729;
                (v1742[2].isa)(v1729, v1692, v1741);
                sub_261FF2200(v857);
                OUTLINED_FUNCTION_84();
                sub_261FF24AC();
                OUTLINED_FUNCTION_84();
                v858 = sub_261FF2510();
                v855(v858);
                sub_261F665E4(v855);
                v859 = v856[1].isa;
                v860 = OUTLINED_FUNCTION_94();
                v861(v860);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v468 = *(v854 + 8);
                v466 = v1740;
                v467 = v1743;
                return v468(v466, v467);
              }

              __break(1u);
LABEL_379:
              OUTLINED_FUNCTION_0_27();
              swift_once();
LABEL_76:
              v1725 = qword_28108B620;
              OUTLINED_FUNCTION_46();
              v386 = swift_allocObject();
              v386[2] = v384;
              v386[3] = v385;
              v387 = v386;
              v1728 = v386;
              OUTLINED_FUNCTION_45_2();
              v1744 = swift_allocObject();
              OUTLINED_FUNCTION_86_2(v1744);
              OUTLINED_FUNCTION_45_2();
              v1747 = swift_allocObject();
              LOBYTE(v1747[2].isa) = 8;
              OUTLINED_FUNCTION_46();
              v388 = swift_allocObject();
              *(v388 + 16) = sub_261FFF800;
              *(v388 + 24) = v360;
              v389 = v388;
              v1732 = v388;
              OUTLINED_FUNCTION_46();
              v390 = swift_allocObject();
              *(v390 + 16) = sub_261FFF818;
              *(v390 + 24) = v389;
              v1731 = v390;
              OUTLINED_FUNCTION_45_2();
              v1746 = swift_allocObject();
              LOBYTE(v1746[2].isa) = 32;
              OUTLINED_FUNCTION_45_2();
              v1745 = swift_allocObject();
              *(v1745 + 16) = 8;
              OUTLINED_FUNCTION_46();
              v391 = swift_allocObject();
              v391[2].isa = sub_261FFF528;
              v391[3].isa = v360;
              v392 = v391;
              v1730 = v391;
              OUTLINED_FUNCTION_46();
              v393 = swift_allocObject();
              v1742 = v393;
              v393[2].isa = sub_261FFF818;
              v393[3].isa = v392;
              OUTLINED_FUNCTION_45_2();
              TupleTypeMetadata2 = swift_allocObject();
              LOBYTE(TupleTypeMetadata2[2].isa) = 0;
              OUTLINED_FUNCTION_45_2();
              v1727 = swift_allocObject();
              *(v1727 + 16) = 2;
              OUTLINED_FUNCTION_46();
              v394 = swift_allocObject();
              *(v394 + 16) = sub_261FFF530;
              *(v394 + 24) = v360;
              OUTLINED_FUNCTION_46();
              v395 = swift_allocObject();
              v395[2].isa = sub_261FFF570;
              v395[3].isa = v394;
              v1724 = v395;
              OUTLINED_FUNCTION_45_2();
              v1723 = swift_allocObject();
              *(v1723 + 16) = 0;
              OUTLINED_FUNCTION_45_2();
              v1733 = swift_allocObject();
              v1733[16] = 4;
              OUTLINED_FUNCTION_46();
              v396 = swift_allocObject();
              v396[2] = sub_261FFF538;
              v396[3] = v387;
              OUTLINED_FUNCTION_46();
              v397 = swift_allocObject();
              v397[2] = sub_261FFF5A8;
              v397[3] = v396;
              OUTLINED_FUNCTION_208();
              swift_retain_n();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
              v398 = swift_allocObject();
              *(v398 + 16) = xmmword_262044030;
              v399 = v1744;
              *(v398 + 32) = sub_261FFF848;
              *(v398 + 40) = v399;
              v400 = v1747;
              *(v398 + 48) = sub_261FFF848;
              *(v398 + 56) = v400;
              *(v398 + 64) = sub_261FFF7F0;
              *(v398 + 72) = v390;
              v401 = v1746;
              *(v398 + 80) = sub_261FFF848;
              *(v398 + 88) = v401;
              v402 = v1745;
              *(v398 + 96) = sub_261FFF848;
              *(v398 + 104) = v402;
              v403 = v1742;
              *(v398 + 112) = sub_261FFF7F0;
              *(v398 + 120) = v403;
              v404 = TupleTypeMetadata2;
              *(v398 + 128) = sub_261FFF848;
              *(v398 + 136) = v404;
              v405 = v1727;
              *(v398 + 144) = sub_261FFF848;
              *(v398 + 152) = v405;
              *(v398 + 160) = sub_261FFF5A0;
              *(v398 + 168) = v395;
              v406 = v1723;
              *(v398 + 176) = sub_261FFF848;
              *(v398 + 184) = v406;
              v407 = v1733;
              *(v398 + 192) = sub_261FFF848;
              *(v398 + 200) = v407;
              *(v398 + 208) = sub_261FFF5D8;
              *(v398 + 216) = v397;
              OUTLINED_FUNCTION_208();
              swift_retain_n();
              swift_setDeallocating();
              swift_retain_n();

              v1721 = v394;

              v1720 = v396;

              sub_261FB9814();
              if (os_log_type_enabled(v1725, v1726))
              {
                v1719 = v397;
                v1734 = v239;
                OUTLINED_FUNCTION_30();
                v408 = swift_slowAlloc();
                OUTLINED_FUNCTION_56();
                *&v1718 = swift_slowAlloc();
                *&v1755 = v1718;
                OUTLINED_FUNCTION_120_0(1026);

                *(v408 + 3) = 8;

                v409 = sub_261F7C884();
                sub_261F67FE4(v409, v410, &v1755);
                OUTLINED_FUNCTION_154_0();

                *(v408 + 4) = v406;
                v364 = 2;
                OUTLINED_FUNCTION_294();

                *(v408 + 12) = 32;

                *(v408 + 13) = 8;

                v411 = v1650;
                sub_261F7A074(v1650);
                v412 = OUTLINED_FUNCTION_211();
                v413 = v1737;
                OUTLINED_FUNCTION_150_0(v412, v414, v1737);
                if (v324)
                {
LABEL_391:
                  __break(1u);
                  goto LABEL_392;
                }

                v415 = v1735;
                (*(v1735 + 40))(v413, v1735);
                v416 = OUTLINED_FUNCTION_67_2();
                (*(v1706 + 8))(v416, v413);
                v417 = OUTLINED_FUNCTION_131();
                sub_261F67FE4(v417, v418, v419);
                OUTLINED_FUNCTION_67_2();

                *(v408 + 14) = v411;
                OUTLINED_FUNCTION_294();

                *(v408 + 22) = 0;

                *(v408 + 23) = 2;

                v364 = v1649;
                sub_261FF23A0();
                v420 = v1712;
                OUTLINED_FUNCTION_150_0(v364, 1, v1712);
                v421 = v413;
                v422 = v1739;
                if (v324)
                {
LABEL_392:
                  __break(1u);
LABEL_393:
                  __break(1u);
                  goto LABEL_394;
                }

                v423 = *(v364 + *(v420 + 24));
                OUTLINED_FUNCTION_2_19();
                sub_261FFEE7C(v364, v424);
                OUTLINED_FUNCTION_294();
                *(v408 + 24) = v423;

                *(v408 + 26) = 0;

                *(v408 + 27) = 4;

                v425 = (*(v415 + 32))(v421, v415);

                *(v408 + 28) = v425;

                _os_log_impl(&dword_261F5B000, v1725, v1726, "%{public}s: Starting packet transfer on %s, MTU=%hu, maxPendingPackets=%u", v408, 0x20u);
                OUTLINED_FUNCTION_230();
                v426 = OUTLINED_FUNCTION_29_7();
                MEMORY[0x266724180](v426);
                OUTLINED_FUNCTION_26();
                MEMORY[0x266724180]();
              }

              else
              {

                v422 = v1739;
              }

              v825 = v1729;
              v826 = v1667;
              *v1729 = v1722;
              swift_storeEnumTagMultiPayload();
              sub_261FF2200(v825);
              v827 = v1666;
              v828 = v1743;
              swift_storeEnumTagMultiPayload();
              v829 = v1736;
              sub_261F6E52C(v827);
              if (v829)
              {
                v830 = *(v422 + 8);
                v831 = OUTLINED_FUNCTION_42_3();
                v830(v831);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v832 = OUTLINED_FUNCTION_122();
                return (v830)(v832);
              }

              else
              {
                v885 = *(v422 + 8);
                v885(v827, v828);
                sub_261F79740(&aBlock, v826);
                OUTLINED_FUNCTION_11_0();
                swift_storeEnumTagMultiPayload();
                sub_261F6E52C(v826);
                v886 = OUTLINED_FUNCTION_11_0();
                (v885)(v886);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v887 = OUTLINED_FUNCTION_122();
                return (v885)(v887);
              }

            case 5u:
              v1734 = v239;
              v461 = v1699;
              OUTLINED_FUNCTION_63_2();
              v462();
              v463 = *v461;
              v464 = *(v461 + 8);
              v465 = *(v461 + 16);
              OUTLINED_FUNCTION_100();
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                v1721 = v465;
                v1722 = v464;
                v1725 = v463;
                v633 = v1742;
                v634 = v1742[2].isa;
                v635 = v1679;
                v636 = OUTLINED_FUNCTION_175_0();
                v637(v636);
                v638 = OUTLINED_FUNCTION_234(0, v635);
                v639 = v633[1].isa;
                v639(v635, v327);
                if (v638)
                {

                  (v1722)(v640);
                  v641 = v1732;
                  v642 = v1743;
                  swift_storeEnumTagMultiPayload();
                  sub_261F6D760(v641);

                  v643 = *(v1739 + 8);
                  v643(v641, v642);
                  v643(v1740, v642);
                  v644 = OUTLINED_FUNCTION_100();
                  return (v639)(v644);
                }

                OUTLINED_FUNCTION_100();
                if (swift_getEnumCaseMultiPayload() == 12)
                {
                  (v1722)();

                  v240 = v1739;
                  v239 = v1743;
                  (*(v1739 + 8))(v1740, v1743);
LABEL_226:
                  v896 = v1735;
                  v897 = v240;
                  LODWORD(v1741) = sub_26203A4AC();
                  if (qword_28108B618 != -1)
                  {
                    OUTLINED_FUNCTION_0_27();
                    swift_once();
                  }

                  v1742 = qword_28108B620;
                  v898 = v1744;
                  (v1744)(v1723, v1746, v239);
                  OUTLINED_FUNCTION_206();
                  v898();
                  v899 = (*(v897 + 80) + 32) & ~*(v897 + 80);
                  v900 = swift_allocObject();
                  v900[2].isa = v1737;
                  v900[3].isa = v896;
                  v901 = *(v897 + 32);
                  v902 = v900;
                  v1747 = v900;
                  OUTLINED_FUNCTION_206();
                  v903();
                  OUTLINED_FUNCTION_45_2();
                  v904 = swift_allocObject();
                  *(v904 + 16) = 34;
                  OUTLINED_FUNCTION_45_2();
                  v905 = swift_allocObject();
                  *(v905 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v906 = swift_allocObject();
                  v907 = v1748;
                  *(v906 + 16) = sub_261FFF800;
                  *(v906 + 24) = v907;
                  OUTLINED_FUNCTION_46();
                  v908 = swift_allocObject();
                  v908[2].isa = sub_261FFF818;
                  v908[3].isa = v906;
                  v909 = v908;
                  v1746 = v908;
                  OUTLINED_FUNCTION_45_2();
                  v910 = swift_allocObject();
                  *(v910 + 16) = 34;
                  OUTLINED_FUNCTION_45_2();
                  v1733 = swift_allocObject();
                  v1733[16] = 8;
                  OUTLINED_FUNCTION_46();
                  v911 = swift_allocObject();
                  v911[2].isa = sub_261FFF454;
                  v911[3].isa = v902;
                  OUTLINED_FUNCTION_46();
                  v912 = swift_allocObject();
                  *(v912 + 16) = sub_261FFF818;
                  *(v912 + 24) = v911;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
                  v913 = swift_allocObject();
                  *(v913 + 16) = xmmword_262044040;
                  *(v913 + 32) = sub_261FFF848;
                  *(v913 + 40) = v904;
                  *(v913 + 48) = sub_261FFF848;
                  *(v913 + 56) = v905;
                  *(v913 + 64) = sub_261FFF7F0;
                  *(v913 + 72) = v909;
                  *(v913 + 80) = sub_261FFF848;
                  *(v913 + 88) = v910;
                  v914 = v1733;
                  *(v913 + 96) = sub_261FFF848;
                  *(v913 + 104) = v914;
                  *(v913 + 112) = sub_261FFF7F0;
                  *(v913 + 120) = v912;
                  swift_setDeallocating();
                  OUTLINED_FUNCTION_290();
                  v1740 = v906;

                  TupleTypeMetadata2 = v911;

                  v1735 = v910;

                  v1737 = v912;

                  sub_261FB9814();
                  v915 = v1741;
                  if (os_log_type_enabled(v1742, v1741))
                  {
                    OUTLINED_FUNCTION_57_1();
                    swift_slowAlloc();
                    OUTLINED_FUNCTION_57_2();
                    v1731 = swift_slowAlloc();
                    OUTLINED_FUNCTION_261(v1731);
                    *v904 = v916;
                    *(v904 + 2) = 34;

                    *(v904 + 3) = 8;

                    OUTLINED_FUNCTION_153_0();
                    sub_261F7C884();
                    OUTLINED_FUNCTION_74_2();
                    sub_261F67FE4(v917, v918, v919);
                    OUTLINED_FUNCTION_65();

                    *(v904 + 4) = v904;
                    OUTLINED_FUNCTION_208();

                    *(v904 + 12) = 34;

                    *(v904 + 13) = 8;

                    OUTLINED_FUNCTION_63_2();
                    v920();
                    OUTLINED_FUNCTION_135();
                    sub_26203A20C();
                    OUTLINED_FUNCTION_74_2();
                    sub_261F67FE4(v921, v922, v923);
                    OUTLINED_FUNCTION_65();

                    *(v904 + 14) = v904;

                    OUTLINED_FUNCTION_52_2();
                    v924 = OUTLINED_FUNCTION_275();
                    v925(v924);
                    _os_log_impl(&dword_261F5B000, v1742, v915, "%{public}s: ignoring event %{public}s as the endpoint is already in state failed", v904, 0x16u);
                    OUTLINED_FUNCTION_230();
                    v926 = OUTLINED_FUNCTION_29_7();
                    MEMORY[0x266724180](v926);
                    v927 = OUTLINED_FUNCTION_24_5();
                    return MEMORY[0x266724180](v927);
                  }

                  OUTLINED_FUNCTION_223();

                  OUTLINED_FUNCTION_52_2();
                  v466 = v1728;
                  goto LABEL_336;
                }

                v327 = v1741;
                goto LABEL_220;
              }

              *&aBlock = v463;
              *(&aBlock + 1) = v464;
              *&v1759 = v465;
              sub_261F7AF14();

              OUTLINED_FUNCTION_52_2();
              v466 = OUTLINED_FUNCTION_123();
              return v468(v466, v467);
            case 6u:
              v507 = v1740;
              v508 = v1743;
              OUTLINED_FUNCTION_63_2();
              v509();
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() == 1)
              {

                v510 = OUTLINED_FUNCTION_118_0();
                sub_261F797BC(v510, v511);
                v513 = *(&v1759 + 1);
                v512 = v1760;
                __swift_project_boxed_opaque_existential_0Tm(&aBlock, *(&v1759 + 1));
                OUTLINED_FUNCTION_63();
                v514 = swift_allocObject();
                OUTLINED_FUNCTION_262(v514);
                swift_weakInit();
                v515 = OUTLINED_FUNCTION_85_1();
                sub_261F79740(v515, v516);
                v517 = OUTLINED_FUNCTION_167();
                *(OUTLINED_FUNCTION_28_6(v517) + 32) = v239;
                sub_261F797BC(&v1755, v517 + 40);
                v518 = *(v512 + 32);

                v518(sub_261F7972C, v517, v513, v512);

                OUTLINED_FUNCTION_30_5(&aBlock);
                v466 = v507;
                v467 = v508;
                return v468(v466, v467);
              }

              v1734 = v239;
              v645 = v1742;
              OUTLINED_FUNCTION_248();
              v646 = v1678;
              OUTLINED_FUNCTION_147();
              v647();
              v648 = OUTLINED_FUNCTION_234(0, v646);
              v649 = v327;
              v650 = v645[1].isa;
              v651 = OUTLINED_FUNCTION_35_3();
              v650(v651);
              if (v648)
              {

                __swift_destroy_boxed_opaque_existential_0Tm(v1718);
                v652 = OUTLINED_FUNCTION_17_8();
                v654 = v508;
LABEL_150:
                v653(v652, v654);
                return (v650)(v1747, v649);
              }

              v785 = v1718;
              goto LABEL_196;
            case 7u:
              v519 = v1719;
              v520 = v1740;
              v521 = v1743;
              OUTLINED_FUNCTION_63_2();
              v522();
              v523 = v519[5];
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() == 1)
              {

                v524 = OUTLINED_FUNCTION_118_0();
                sub_261F797BC(v524, v525);
                sub_261F79C64();
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);

                OUTLINED_FUNCTION_52_2();
                v466 = v520;
LABEL_110:
                v467 = v521;
                return v468(v466, v467);
              }

              v1734 = v239;

              v655 = v1742;
              OUTLINED_FUNCTION_248();
              v656 = v1680;
              OUTLINED_FUNCTION_147();
              v657();
              v658 = OUTLINED_FUNCTION_234(0, v656);
              v649 = v327;
              v650 = v655[1].isa;
              v659 = OUTLINED_FUNCTION_161_0();
              v650(v659);
              if (v658)
              {

                __swift_destroy_boxed_opaque_existential_0Tm(v1719);
                v652 = OUTLINED_FUNCTION_17_8();
                v654 = v521;
                goto LABEL_150;
              }

              v785 = v1719;
LABEL_196:
              __swift_destroy_boxed_opaque_existential_0Tm(v785);
              v327 = v649;
LABEL_220:
              v239 = v1734;
LABEL_221:
              v1734 = v239;
              OUTLINED_FUNCTION_72_2();
              v888 = swift_getEnumCaseMultiPayload();
              if (v888 == 1)
              {
                v889 = v1740;
                v239 = v1743;
                v939 = swift_getEnumCaseMultiPayload();
                v240 = v1739;
                if (v939 != 12)
                {
                  goto LABEL_287;
                }

LABEL_236:
                v933 = *(v889 + 40);
                sub_261F797BC(v889, v1761);
                goto LABEL_237;
              }

              v239 = v1743;
              v889 = v1740;
              v890 = v1732;
              if (v888 != 2)
              {
                v240 = v1739;
                if (v888 != 11)
                {
                  if (v888 == 12)
                  {
                    v891 = *(v1739 + 8);
                    v892 = OUTLINED_FUNCTION_161_0();
                    v893(v892);
                    v894 = OUTLINED_FUNCTION_54_2();
                    v895(v894, v327);
                    goto LABEL_226;
                  }

LABEL_287:
                  OUTLINED_FUNCTION_161_0();
                  v1258 = swift_getEnumCaseMultiPayload();
                  switch(v1258)
                  {
                    case 11:

                      v1259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA370, &qword_2620447C8);
                      v327 = v1730;
                      v352 = v1730[4].isa;
                      v240 = v1731;
                      (v352)(v1714, v889 + *(v1259 + 48), v1731);
                      LODWORD(v1743) = sub_26203A4AC();
                      if (qword_28108B618 == -1)
                      {
                        goto LABEL_289;
                      }

                      goto LABEL_375;
                    case 12:

                      v1345 = *(v889 + 40);
                      swift_willThrow();
                      __swift_destroy_boxed_opaque_existential_0Tm(v889);
                      goto LABEL_299;
                    case 13:

                      v1344 = *v889;
                      swift_willThrow();
LABEL_299:
                      v466 = OUTLINED_FUNCTION_54_2();
                      goto LABEL_300;
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                      goto LABEL_293;
                    case 18:

                      sub_261FF97CC();
                      v466 = OUTLINED_FUNCTION_54_2();
                      v467 = v327;
                      return v468(v466, v467);
                    default:
                      if (v1258 == 5)
                      {
                        v1291 = *v889;
                        v1292 = *(v889 + 16);
                        (*(v889 + 8))();

                        v1724 = v1742;
                        TupleTypeMetadata2 = v327;
                      }

LABEL_293:
                      (v1724[1].isa)(v1747, TupleTypeMetadata2);
                      LODWORD(v1726) = sub_26203A49C();
                      if (qword_28108B618 == -1)
                      {
                        goto LABEL_294;
                      }

                      goto LABEL_373;
                  }
                }

                OUTLINED_FUNCTION_161_0();
                if (swift_getEnumCaseMultiPayload() != 12)
                {
                  goto LABEL_287;
                }

                goto LABEL_236;
              }

              v928 = v1742[2].isa;
              OUTLINED_FUNCTION_147();
              v929();
              v930 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798) + 48);
              OUTLINED_FUNCTION_161_0();
              v931 = swift_getEnumCaseMultiPayload();
              v240 = v1739;
              if (v931 != 11)
              {
                if (v931 != 12)
                {
                  v1205 = OUTLINED_FUNCTION_216();
                  v1206(v1205);
                  v327 = v1741;
                  goto LABEL_287;
                }

                OUTLINED_FUNCTION_206();
                OUTLINED_FUNCTION_63_2();
                v932();
                v933 = *(v890 + 40);
                sub_261F797BC(v890, v1761);
                v934 = OUTLINED_FUNCTION_216();
                v935(v934);
                v936 = *(v240 + 8);
                v937 = OUTLINED_FUNCTION_161_0();
                v938(v937);
LABEL_237:
                OUTLINED_FUNCTION_277();
                v940 = OUTLINED_FUNCTION_72_2();
                v1742 = v941;
                v1724 = v942;
                (v942)(v940);
                LODWORD(v1725) = sub_26203A4AC();
                if (qword_28108B618 != -1)
                {
                  OUTLINED_FUNCTION_0_27();
                  swift_once();
                }

                v1747 = qword_28108B620;
                OUTLINED_FUNCTION_291();
                v943 = OUTLINED_FUNCTION_85_1();
                sub_261F79740(v943, v944);
                OUTLINED_FUNCTION_14_1();
                swift_allocObject();
                v945 = OUTLINED_FUNCTION_116_0();
                v947 = v946;
                TupleTypeMetadata2 = v946;
                sub_261F797BC(v945, v948);
                OUTLINED_FUNCTION_63();
                v949 = swift_allocObject();
                *(v949 + 16) = v933;
                v1739 = v949;
                OUTLINED_FUNCTION_45_2();
                v950 = swift_allocObject();
                v951 = OUTLINED_FUNCTION_86_2(v950);
                v1719 = v951;
                OUTLINED_FUNCTION_45_2();
                v1740 = swift_allocObject();
                v1740[16] = 8;
                OUTLINED_FUNCTION_46();
                v952 = swift_allocObject();
                v1728 = v933;
                v953 = v1748;
                *(v952 + 16) = sub_261FFF800;
                *(v952 + 24) = v953;
                v954 = v952;
                v1732 = v952;
                OUTLINED_FUNCTION_46();
                v955 = swift_allocObject();
                v1746 = v955;
                v955[2].isa = sub_261FFF818;
                v955[3].isa = v954;
                OUTLINED_FUNCTION_45_2();
                v1745 = swift_allocObject();
                *(v1745 + 16) = 32;
                OUTLINED_FUNCTION_45_2();
                v1744 = swift_allocObject();
                LOBYTE(v1744[2].isa) = 8;
                OUTLINED_FUNCTION_46();
                v956 = swift_allocObject();
                *(v956 + 16) = sub_261FFF038;
                *(v956 + 24) = v947;
                OUTLINED_FUNCTION_46();
                v957 = swift_allocObject();
                v957[2] = sub_261FFF818;
                v957[3] = v956;
                OUTLINED_FUNCTION_45_2();
                v1727 = swift_allocObject();
                *(v1727 + 16) = 32;
                OUTLINED_FUNCTION_45_2();
                v958 = swift_allocObject();
                v958[16] = 8;
                v1733 = v958;
                OUTLINED_FUNCTION_46();
                v959 = swift_allocObject();
                *(v959 + 16) = sub_261FFF054;
                *(v959 + 24) = v949;
                OUTLINED_FUNCTION_46();
                v960 = swift_allocObject();
                *(v960 + 16) = sub_261FFF818;
                *(v960 + 24) = v959;
                v1743 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
                v961 = OUTLINED_FUNCTION_289();
                v1718 = xmmword_262044050;
                *(v961 + 16) = xmmword_262044050;
                *(v961 + 32) = sub_261FFF848;
                *(v961 + 40) = v951;
                v962 = v1740;
                *(v961 + 48) = sub_261FFF848;
                *(v961 + 56) = v962;
                v963 = v1746;
                *(v961 + 64) = sub_261FFF7F0;
                *(v961 + 72) = v963;
                v964 = v1745;
                *(v961 + 80) = sub_261FFF848;
                *(v961 + 88) = v964;
                v965 = v1744;
                *(v961 + 96) = sub_261FFF848;
                *(v961 + 104) = v965;
                *(v961 + 112) = sub_261FFF7F0;
                *(v961 + 120) = v957;
                v966 = v1727;
                *(v961 + 128) = sub_261FFF848;
                *(v961 + 136) = v966;
                *(v961 + 144) = sub_261FFF848;
                *(v961 + 152) = v958;
                *(v961 + 160) = sub_261FFF7F0;
                *(v961 + 168) = v960;
                swift_setDeallocating();

                v967 = OUTLINED_FUNCTION_245();

                v968 = v958;
                v969 = v1719;

                v1721 = v956;

                v1722 = v959;

                v1720 = v957;

                v1723 = v960;

                sub_261FB9814();
                v970 = v1725;
                if (os_log_type_enabled(v1747, v1725))
                {
                  OUTLINED_FUNCTION_30();
                  v971 = swift_slowAlloc();
                  OUTLINED_FUNCTION_101();
                  *&v1752[0] = swift_slowAlloc();
                  *v971 = 770;
                  *(v971 + 2) = 34;

                  *(v971 + 3) = 8;

                  v972 = v1748;
                  v973 = sub_261F7C884();
                  OUTLINED_FUNCTION_218(v973, v974);
                  OUTLINED_FUNCTION_73_2();

                  *(v971 + 4) = v970;

                  *(v971 + 12) = 32;

                  *(v971 + 13) = 8;

                  sub_261F79740(&v1755, &v1753);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
                  v975 = sub_26203A20C();
                  OUTLINED_FUNCTION_218(v975, v976);
                  OUTLINED_FUNCTION_70();

                  *(v971 + 14) = v969;

                  __swift_destroy_boxed_opaque_existential_0Tm(&v1755);
                  *(v971 + 22) = 32;

                  *(v971 + 23) = 8;

                  v958 = v1728;
                  *&v1753 = v1728;
                  v977 = v1728;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
                  v978 = sub_26203A20C();
                  OUTLINED_FUNCTION_218(v978, v979);
                  OUTLINED_FUNCTION_70();

                  *(v971 + 24) = v969;

                  OUTLINED_FUNCTION_141_0();
                  _os_log_impl(v980, v981, v982, v983, v971, 0x20u);
                  swift_arrayDestroy();
                  OUTLINED_FUNCTION_26();
                  MEMORY[0x266724180]();
                  v984 = OUTLINED_FUNCTION_16_3();
                  MEMORY[0x266724180](v984);
                  v364 = v972;
                }

                else
                {

                  v364 = v1748;
                  OUTLINED_FUNCTION_201();

                  __swift_destroy_boxed_opaque_existential_0Tm(&v1755);
                }

                sub_261F798CC(v1726);
                LODWORD(v1720) = sub_261FF6158(v1741);
                v985 = v1720;
                v986 = OUTLINED_FUNCTION_71_2();
                (v1724)(v986);
                if (v985 == 2)
                {
                  goto LABEL_396;
                }

                v987 = v1763;
                __swift_project_boxed_opaque_existential_0Tm(v1761, v1762);
                v988 = *(v987 + 48);
                v989 = OUTLINED_FUNCTION_18_5();
                v990(v989);
                OUTLINED_FUNCTION_22_6(v1761);
                v991 = OUTLINED_FUNCTION_18_5();
                v992(v991);
                v993 = aBlock;
                OUTLINED_FUNCTION_242();
                v995 = *(v994 + 184);
                OUTLINED_FUNCTION_36_1();
                swift_beginAccess();
                v996 = OUTLINED_FUNCTION_199();
                v1746 = *(&v993 + 1);
                sub_261FF6864(v996, *(&v993 + 1), v997);
                swift_endAccess();
                v998 = *(&v1759 + 1);
                sub_261F66E60(&aBlock, &qword_27FEFA340, &qword_262044790);
                v1744 = v993;
                if (v998)
                {
                  LODWORD(v1733) = sub_26203A4AC();
                  OUTLINED_FUNCTION_291();
                  v999 = OUTLINED_FUNCTION_85_1();
                  sub_261F79740(v999, v1000);
                  OUTLINED_FUNCTION_14_1();
                  swift_allocObject();
                  v1001 = OUTLINED_FUNCTION_116_0();
                  v1003 = v1002;
                  v1740 = v1002;
                  sub_261F797BC(v1001, v1004);
                  OUTLINED_FUNCTION_46();
                  v1005 = swift_allocObject();
                  *(v1005 + 16) = sub_261FFF17C;
                  *(v1005 + 24) = v1003;
                  v1006 = v1005;
                  v1739 = v1005;
                  OUTLINED_FUNCTION_45_2();
                  v1007 = swift_allocObject();
                  OUTLINED_FUNCTION_86_2(v1007);
                  OUTLINED_FUNCTION_45_2();
                  v1008 = swift_allocObject();
                  *(v1008 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v1009 = swift_allocObject();
                  v1009[2].isa = sub_261FFF800;
                  v1009[3].isa = v364;
                  v1010 = v1009;
                  TupleTypeMetadata2 = v1009;
                  OUTLINED_FUNCTION_46();
                  v1011 = swift_allocObject();
                  *(v1011 + 16) = sub_261FFF818;
                  *(v1011 + 24) = v1010;
                  OUTLINED_FUNCTION_45_2();
                  v1745 = swift_allocObject();
                  *(v1745 + 16) = 32;
                  OUTLINED_FUNCTION_45_2();
                  v1726 = swift_allocObject();
                  *(v1726 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v1012 = swift_allocObject();
                  *(v1012 + 16) = sub_261FFF81C;
                  *(v1012 + 24) = v1006;
                  OUTLINED_FUNCTION_46();
                  v1013 = swift_allocObject();
                  *(v1013 + 16) = sub_261FFF818;
                  *(v1013 + 24) = v1012;
                  v1014 = OUTLINED_FUNCTION_221();
                  *(v1014 + 16) = xmmword_262044040;
                  *(v1014 + 32) = sub_261FFF848;
                  *(v1014 + 40) = v1007;
                  *(v1014 + 48) = sub_261FFF848;
                  *(v1014 + 56) = v1008;
                  *(v1014 + 64) = sub_261FFF7F0;
                  *(v1014 + 72) = v1011;
                  v1015 = v1745;
                  *(v1014 + 80) = sub_261FFF848;
                  *(v1014 + 88) = v1015;
                  v1016 = v1726;
                  *(v1014 + 96) = sub_261FFF848;
                  *(v1014 + 104) = v1016;
                  *(v1014 + 112) = sub_261FFF7F0;
                  *(v1014 + 120) = v1013;
                  swift_setDeallocating();
                  swift_retain_n();

                  v1727 = v1012;

                  v1732 = v1013;

                  sub_261FB9814();
                  if (OUTLINED_FUNCTION_293(v1733))
                  {
                    OUTLINED_FUNCTION_57_1();
                    v1017 = swift_slowAlloc();
                    OUTLINED_FUNCTION_56();
                    v1725 = swift_slowAlloc();
                    *&v1752[0] = v1725;
                    OUTLINED_FUNCTION_166_0(514);
                    *(v1017 + 3) = 8;

                    v364 = v1748;
                    v1018 = v1748;
                    v1019 = sub_261F7C884();
                    OUTLINED_FUNCTION_218(v1019, v1020);
                    OUTLINED_FUNCTION_73_2();

                    *(v1017 + 4) = v1008;
                    OUTLINED_FUNCTION_201();

                    *(v1017 + 12) = 32;

                    *(v1017 + 13) = 8;

                    __swift_project_boxed_opaque_existential_0Tm(&v1755, *(&v1756 + 1));
                    v1021 = OUTLINED_FUNCTION_6_12();
                    v1022(v1021);
                    OUTLINED_FUNCTION_91_0();
                    OUTLINED_FUNCTION_185_0();
                    v1023 = OUTLINED_FUNCTION_42_3();
                    sub_261F67FE4(v1023, v1024, v1025);
                    OUTLINED_FUNCTION_67_2();

                    *(v1017 + 14) = v1018;

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1755);
                    OUTLINED_FUNCTION_141_0();
                    _os_log_impl(v1026, v1027, v1028, v1029, v1017, 0x16u);
                    OUTLINED_FUNCTION_230();
                    v1030 = OUTLINED_FUNCTION_29_7();
                    MEMORY[0x266724180](v1030);
                    OUTLINED_FUNCTION_26();
                    MEMORY[0x266724180]();
                  }

                  else
                  {

                    v364 = v1748;
                    OUTLINED_FUNCTION_201();

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1755);
                  }

                  v958 = v1728;
                }

                OUTLINED_FUNCTION_242();
                v1032 = *(v1031 + 192);
                OUTLINED_FUNCTION_36_1();
                swift_beginAccess();
                v1033 = OUTLINED_FUNCTION_199();
                sub_261FF6998(v1033, v1746, v1034);
                swift_endAccess();
                v1035 = *(&v1759 + 1);
                sub_261F66E60(&aBlock, &qword_27FEFA288, &qword_262044098);
                if (v1035)
                {
                  LODWORD(TupleTypeMetadata2) = sub_26203A4AC();
                  OUTLINED_FUNCTION_291();
                  v1036 = OUTLINED_FUNCTION_85_1();
                  sub_261F79740(v1036, v1037);
                  OUTLINED_FUNCTION_14_1();
                  swift_allocObject();
                  v1038 = OUTLINED_FUNCTION_116_0();
                  v1040 = v1039;
                  v1745 = v1039;
                  sub_261F797BC(v1038, v1041);
                  OUTLINED_FUNCTION_46();
                  v1042 = swift_allocObject();
                  *(v1042 + 16) = sub_261FFF7FC;
                  *(v1042 + 24) = v1040;
                  v1043 = v1042;
                  v1740 = v1042;
                  OUTLINED_FUNCTION_45_2();
                  v1044 = swift_allocObject();
                  v1045 = OUTLINED_FUNCTION_86_2(v1044);
                  OUTLINED_FUNCTION_45_2();
                  v1046 = swift_allocObject();
                  *(v1046 + 16) = 8;
                  v1047 = v1046;
                  OUTLINED_FUNCTION_46();
                  v1048 = swift_allocObject();
                  *(v1048 + 16) = sub_261FFF800;
                  *(v1048 + 24) = v364;
                  OUTLINED_FUNCTION_46();
                  v1049 = swift_allocObject();
                  *(v1049 + 16) = sub_261FFF818;
                  *(v1049 + 24) = v1048;
                  OUTLINED_FUNCTION_45_2();
                  v1725 = swift_allocObject();
                  LOBYTE(v1725[2].isa) = 32;
                  OUTLINED_FUNCTION_45_2();
                  v1739 = swift_allocObject();
                  *(v1739 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v1050 = swift_allocObject();
                  *(v1050 + 16) = sub_261FFF81C;
                  *(v1050 + 24) = v1043;
                  OUTLINED_FUNCTION_46();
                  v1051 = swift_allocObject();
                  *(v1051 + 16) = sub_261FFF818;
                  *(v1051 + 24) = v1050;
                  v1052 = OUTLINED_FUNCTION_221();
                  *(v1052 + 16) = xmmword_262044040;
                  *(v1052 + 32) = sub_261FFF848;
                  *(v1052 + 40) = v1045;
                  *(v1052 + 48) = sub_261FFF848;
                  *(v1052 + 56) = v1047;
                  v1053 = v1047;
                  *(v1052 + 64) = sub_261FFF7F0;
                  *(v1052 + 72) = v1049;
                  v1054 = v1725;
                  *(v1052 + 80) = sub_261FFF848;
                  *(v1052 + 88) = v1054;
                  v1055 = v1739;
                  *(v1052 + 96) = sub_261FFF848;
                  *(v1052 + 104) = v1055;
                  *(v1052 + 112) = sub_261FFF7F0;
                  *(v1052 + 120) = v1051;
                  swift_setDeallocating();
                  OUTLINED_FUNCTION_290();

                  v1733 = v1048;

                  v1732 = v1050;

                  v1726 = v1049;

                  v1727 = v1051;

                  sub_261FB9814();
                  if (OUTLINED_FUNCTION_293(TupleTypeMetadata2))
                  {
                    OUTLINED_FUNCTION_57_1();
                    v1056 = swift_slowAlloc();
                    OUTLINED_FUNCTION_56();
                    v1723 = swift_slowAlloc();
                    *&v1752[0] = v1723;
                    OUTLINED_FUNCTION_166_0(514);
                    *(v1056 + 3) = 8;

                    v364 = v1748;
                    v1057 = v1748;
                    v1058 = sub_261F7C884();
                    OUTLINED_FUNCTION_218(v1058, v1059);
                    OUTLINED_FUNCTION_73_2();

                    *(v1056 + 4) = v1053;
                    OUTLINED_FUNCTION_201();

                    *(v1056 + 12) = 32;

                    *(v1056 + 13) = 8;

                    __swift_project_boxed_opaque_existential_0Tm(&v1755, *(&v1756 + 1));
                    v1060 = OUTLINED_FUNCTION_6_12();
                    v1061(v1060);
                    OUTLINED_FUNCTION_91_0();
                    OUTLINED_FUNCTION_185_0();
                    v1062 = OUTLINED_FUNCTION_42_3();
                    sub_261F67FE4(v1062, v1063, v1064);
                    OUTLINED_FUNCTION_67_2();

                    *(v1056 + 14) = v1057;

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1755);
                    OUTLINED_FUNCTION_141_0();
                    _os_log_impl(v1065, v1066, v1067, v1068, v1056, 0x16u);
                    OUTLINED_FUNCTION_230();
                    v1069 = OUTLINED_FUNCTION_29_7();
                    MEMORY[0x266724180](v1069);
                    OUTLINED_FUNCTION_26();
                    MEMORY[0x266724180]();
                  }

                  else
                  {

                    v1070 = v1748;
                    OUTLINED_FUNCTION_208();

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1755);
                    v364 = v1070;
                  }

                  v958 = v1728;
                }

                OUTLINED_FUNCTION_242();
                v1072 = *(v1071 + 168);
                OUTLINED_FUNCTION_36_1();
                swift_beginAccess();
                v1073 = OUTLINED_FUNCTION_199();
                sub_261FF6864(v1073, v1746, v1074);
                swift_endAccess();
                v1075 = *(&v1759 + 1);
                sub_261F66E60(&aBlock, &qword_27FEFA340, &qword_262044790);
                if (v1075)
                {
                  LODWORD(v1726) = sub_26203A4AC();
                  OUTLINED_FUNCTION_291();
                  v1076 = OUTLINED_FUNCTION_85_1();
                  sub_261F79740(v1076, v1077);
                  OUTLINED_FUNCTION_14_1();
                  swift_allocObject();
                  v1078 = OUTLINED_FUNCTION_116_0();
                  v1080 = v1079;
                  v1733 = v1079;
                  sub_261F797BC(v1078, v1081);
                  OUTLINED_FUNCTION_46();
                  v1082 = swift_allocObject();
                  *(v1082 + 16) = sub_261FFF7FC;
                  *(v1082 + 24) = v1080;
                  v1083 = v1082;
                  v1740 = v1082;
                  OUTLINED_FUNCTION_45_2();
                  v1084 = swift_allocObject();
                  OUTLINED_FUNCTION_86_2(v1084);
                  OUTLINED_FUNCTION_45_2();
                  v1732 = swift_allocObject();
                  *(v1732 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v1085 = swift_allocObject();
                  v1085[2].isa = sub_261FFF800;
                  v1085[3].isa = v364;
                  v1086 = v1085;
                  TupleTypeMetadata2 = v1085;
                  OUTLINED_FUNCTION_46();
                  v1087 = swift_allocObject();
                  *(v1087 + 16) = sub_261FFF818;
                  *(v1087 + 24) = v1086;
                  v1088 = v1087;
                  v1721 = v1087;
                  OUTLINED_FUNCTION_45_2();
                  v1744 = swift_allocObject();
                  LOBYTE(v1744[2].isa) = 32;
                  OUTLINED_FUNCTION_45_2();
                  v1727 = swift_allocObject();
                  *(v1727 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v1089 = v364;
                  v1090 = swift_allocObject();
                  *(v1090 + 16) = sub_261FFF15C;
                  *(v1090 + 24) = v1083;
                  OUTLINED_FUNCTION_46();
                  v1091 = swift_allocObject();
                  *(v1091 + 16) = sub_261FFF818;
                  *(v1091 + 24) = v1090;
                  OUTLINED_FUNCTION_45_2();
                  v1745 = swift_allocObject();
                  *(v1745 + 16) = 0;
                  OUTLINED_FUNCTION_45_2();
                  v1739 = swift_allocObject();
                  *(v1739 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v1092 = swift_allocObject();
                  v1092[2].isa = sub_261FFF164;
                  v1092[3].isa = v1089;
                  OUTLINED_FUNCTION_46();
                  v1093 = swift_allocObject();
                  *(v1093 + 16) = sub_261FFF16C;
                  *(v1093 + 24) = v1092;
                  v1094 = OUTLINED_FUNCTION_289();
                  *(v1094 + 16) = v1718;
                  *(v1094 + 32) = sub_261FFF848;
                  *(v1094 + 40) = v1084;
                  v1095 = v1732;
                  *(v1094 + 48) = sub_261FFF848;
                  *(v1094 + 56) = v1095;
                  *(v1094 + 64) = sub_261FFF7F0;
                  *(v1094 + 72) = v1088;
                  v1096 = v1744;
                  *(v1094 + 80) = sub_261FFF848;
                  *(v1094 + 88) = v1096;
                  v1097 = v1727;
                  *(v1094 + 96) = sub_261FFF848;
                  *(v1094 + 104) = v1097;
                  *(v1094 + 112) = sub_261FFF7F0;
                  *(v1094 + 120) = v1091;
                  v1098 = v1745;
                  *(v1094 + 128) = sub_261FFF848;
                  *(v1094 + 136) = v1098;
                  v1099 = v1739;
                  *(v1094 + 144) = sub_261FFF848;
                  *(v1094 + 152) = v1099;
                  *(v1094 + 160) = sub_261FFF174;
                  *(v1094 + 168) = v1093;
                  OUTLINED_FUNCTION_208();
                  swift_retain_n();
                  swift_setDeallocating();
                  swift_retain_n();

                  v1723 = v1090;

                  v1725 = v1092;

                  v1722 = v1091;

                  sub_261FB9814();
                  if (OUTLINED_FUNCTION_293(v1726))
                  {
                    OUTLINED_FUNCTION_30();
                    swift_slowAlloc();
                    OUTLINED_FUNCTION_57_2();
                    v1719 = swift_slowAlloc();
                    *&v1752[0] = v1719;
                    OUTLINED_FUNCTION_244();

                    *(v1084 + 3) = 8;

                    v1100 = v1748;
                    v1101 = v1748;
                    v1102 = sub_261F7C884();
                    v1104 = OUTLINED_FUNCTION_218(v1102, v1103);

                    *(v1084 + 4) = v1104;
                    OUTLINED_FUNCTION_187();

                    *(v1084 + 12) = 32;

                    *(v1084 + 13) = 8;

                    __swift_project_boxed_opaque_existential_0Tm(&v1755, *(&v1756 + 1));
                    OUTLINED_FUNCTION_19_6();
                    v1105 = OUTLINED_FUNCTION_94();
                    v1106(v1105);
                    OUTLINED_FUNCTION_91_0();

                    v1107 = OUTLINED_FUNCTION_94();
                    sub_261F67FE4(v1107, v1108, v1109);
                    OUTLINED_FUNCTION_128_0();

                    *(v1084 + 14) = v1101;

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1755);
                    *(v1084 + 22) = 0;

                    *(v1084 + 23) = 8;

                    v1110 = *(sub_261FF2098() + 16);
                    OUTLINED_FUNCTION_187();

                    *(v1084 + 24) = v1110;

                    OUTLINED_FUNCTION_141_0();
                    OUTLINED_FUNCTION_271();
                    _os_log_impl(v1111, v1112, v1113, v1114, v1115, v1116);
                    OUTLINED_FUNCTION_230();
                    v1117 = OUTLINED_FUNCTION_29_7();
                    MEMORY[0x266724180](v1117);
                    v1118 = OUTLINED_FUNCTION_24_5();
                    MEMORY[0x266724180](v1118);
                    v364 = v1100;
                  }

                  else
                  {

                    v364 = v1748;

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1755);
                  }

                  v958 = v1728;
                }

                v1119 = *(sub_261FF2098() + 16);

                if (!v1119)
                {
                  v1136 = v1691;
                  sub_261F798CC(v1691);
                  v1137 = v1741;
                  if (swift_getEnumCaseMultiPayload() == 2)
                  {
                    v1138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798);
                    (v1730[1].isa)(v1136 + *(v1138 + 48), v1731);
                    v1139 = sub_26203A4AC();
                    OUTLINED_FUNCTION_45_2();
                    v1140 = swift_allocObject();
                    OUTLINED_FUNCTION_86_2(v1140);
                    OUTLINED_FUNCTION_45_2();
                    v1141 = swift_allocObject();
                    OUTLINED_FUNCTION_139_0(v1141);
                    OUTLINED_FUNCTION_46();
                    v1142 = swift_allocObject();
                    *(v1142 + 16) = sub_261FFF800;
                    *(v1142 + 24) = v364;
                    OUTLINED_FUNCTION_46();
                    v1143 = swift_allocObject();
                    *(v1143 + 16) = sub_261FFF818;
                    *(v1143 + 24) = v1142;
                    v1144 = OUTLINED_FUNCTION_167();
                    *(v1144 + 16) = xmmword_26203F720;
                    *(v1144 + 32) = sub_261FFF848;
                    *(v1144 + 40) = v1140;
                    *(v1144 + 48) = sub_261FFF848;
                    *(v1144 + 56) = v1141;
                    *(v1144 + 64) = sub_261FFF7F0;
                    *(v1144 + 72) = v1143;
                    swift_setDeallocating();
                    swift_retain_n();

                    sub_261FB9814();
                    v1145 = v1747;
                    if (os_log_type_enabled(v1747, v1139))
                    {
                      OUTLINED_FUNCTION_42_1();
                      v1146 = v1139;
                      v1147 = swift_slowAlloc();
                      OUTLINED_FUNCTION_30();
                      v1148 = swift_slowAlloc();
                      *&aBlock = v1148;
                      OUTLINED_FUNCTION_120_0(258);

                      OUTLINED_FUNCTION_225();
                      sub_261F7C884();
                      OUTLINED_FUNCTION_74_2();
                      sub_261F67FE4(v1149, v1150, v1151);
                      OUTLINED_FUNCTION_73_2();

                      *(v1147 + 4) = v1140;
                      OUTLINED_FUNCTION_223();

                      _os_log_impl(&dword_261F5B000, v1145, v1146, "%{public}s: No more connections in connection pool but cancellation is already pending. Waiting for deferred cancellation", v1147, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0Tm(v1148);
                      v958 = v1728;
                      OUTLINED_FUNCTION_26();
                      MEMORY[0x266724180]();
                      v364 = v1748;
                      OUTLINED_FUNCTION_26();
                      MEMORY[0x266724180]();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_201();
                    }
                  }

                  else
                  {
                    (v1724)(v1136, v1137);
                    sub_261FF1EC8();
                    if (BYTE8(v1755))
                    {
                      v1207 = sub_26203A4AC();
                      OUTLINED_FUNCTION_45_2();
                      v1208 = swift_allocObject();
                      OUTLINED_FUNCTION_86_2(v1208);
                      OUTLINED_FUNCTION_45_2();
                      v1209 = swift_allocObject();
                      OUTLINED_FUNCTION_139_0(v1209);
                      OUTLINED_FUNCTION_46();
                      v1210 = swift_allocObject();
                      *(v1210 + 16) = sub_261FFF800;
                      *(v1210 + 24) = v364;
                      OUTLINED_FUNCTION_46();
                      v1211 = swift_allocObject();
                      *(v1211 + 16) = sub_261FFF818;
                      *(v1211 + 24) = v1210;
                      v1212 = OUTLINED_FUNCTION_167();
                      *(v1212 + 16) = xmmword_26203F720;
                      *(v1212 + 32) = sub_261FFF848;
                      *(v1212 + 40) = v1208;
                      *(v1212 + 48) = sub_261FFF848;
                      *(v1212 + 56) = v1209;
                      *(v1212 + 64) = sub_261FFF7F0;
                      *(v1212 + 72) = v1211;
                      swift_setDeallocating();
                      swift_retain_n();

                      sub_261FB9814();
                      v1213 = v1747;
                      if (os_log_type_enabled(v1747, v1207))
                      {
                        OUTLINED_FUNCTION_42_1();
                        v1214 = swift_slowAlloc();
                        LODWORD(v1745) = v1207;
                        v1215 = v1214;
                        OUTLINED_FUNCTION_30();
                        v1216 = swift_slowAlloc();
                        *&aBlock = v1216;
                        OUTLINED_FUNCTION_120_0(258);

                        OUTLINED_FUNCTION_225();
                        sub_261F7C884();
                        OUTLINED_FUNCTION_74_2();
                        sub_261F67FE4(v1217, v1218, v1219);
                        OUTLINED_FUNCTION_73_2();

                        *(v1215 + 4) = v1208;

                        _os_log_impl(&dword_261F5B000, v1213, v1745, "%{public}s: No more connections in connection pool. Cannot migrate. Cancelling tunnel", v1215, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0Tm(v1216);
                        OUTLINED_FUNCTION_26();
                        MEMORY[0x266724180]();
                        OUTLINED_FUNCTION_26();
                        MEMORY[0x266724180]();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_201();
                      }

                      swift_willThrow();
                      return __swift_destroy_boxed_opaque_existential_0Tm(v1761);
                    }

                    v1357 = v1755;
                    LODWORD(v1740) = sub_26203A4AC();
                    OUTLINED_FUNCTION_63();
                    v1358 = swift_allocObject();
                    *(v1358 + 16) = v1357;
                    v1359 = v1358;
                    v1745 = v1358;
                    OUTLINED_FUNCTION_45_2();
                    v1742 = swift_allocObject();
                    OUTLINED_FUNCTION_86_2(v1742);
                    OUTLINED_FUNCTION_45_2();
                    v1360 = swift_allocObject();
                    *(v1360 + 16) = 8;
                    OUTLINED_FUNCTION_46();
                    v1361 = swift_allocObject();
                    *(v1361 + 16) = sub_261FFF800;
                    *(v1361 + 24) = v364;
                    v1362 = v1361;
                    v1744 = v1361;
                    OUTLINED_FUNCTION_46();
                    v1363 = swift_allocObject();
                    v1363[2].isa = sub_261FFF818;
                    v1363[3].isa = v1362;
                    OUTLINED_FUNCTION_45_2();
                    v1364 = swift_allocObject();
                    *(v1364 + 16) = 0;
                    OUTLINED_FUNCTION_45_2();
                    v1365 = swift_allocObject();
                    *(v1365 + 16) = 8;
                    OUTLINED_FUNCTION_46();
                    v1366 = swift_allocObject();
                    *(v1366 + 16) = sub_261FFF078;
                    *(v1366 + 24) = v1359;
                    OUTLINED_FUNCTION_46();
                    v1367 = swift_allocObject();
                    *(v1367 + 16) = sub_261FFF080;
                    *(v1367 + 24) = v1366;
                    v1368 = OUTLINED_FUNCTION_221();
                    *(v1368 + 16) = xmmword_262044040;
                    v1369 = v1742;
                    *(v1368 + 32) = sub_261FFF848;
                    *(v1368 + 40) = v1369;
                    *(v1368 + 48) = sub_261FFF848;
                    *(v1368 + 56) = v1360;
                    *(v1368 + 64) = sub_261FFF7F0;
                    *(v1368 + 72) = v1363;
                    *(v1368 + 80) = sub_261FFF848;
                    *(v1368 + 88) = v1364;
                    *(v1368 + 96) = sub_261FFF848;
                    *(v1368 + 104) = v1365;
                    *(v1368 + 112) = sub_261FFF0A8;
                    *(v1368 + 120) = v1367;
                    swift_setDeallocating();
                    swift_retain_n();

                    v1739 = v1366;

                    v1370 = v1742;

                    TupleTypeMetadata2 = v1363;

                    v1733 = v1367;

                    sub_261FB9814();
                    v1371 = v1747;
                    if (os_log_type_enabled(v1747, v1740))
                    {
                      OUTLINED_FUNCTION_57_1();
                      v1372 = swift_slowAlloc();
                      OUTLINED_FUNCTION_30();
                      v1373 = swift_slowAlloc();
                      OUTLINED_FUNCTION_261(v1373);
                      OUTLINED_FUNCTION_120_0(v1374);

                      OUTLINED_FUNCTION_225();
                      sub_261F7C884();
                      OUTLINED_FUNCTION_74_2();
                      sub_261F67FE4(v1375, v1376, v1377);
                      OUTLINED_FUNCTION_154_0();

                      *(v1372 + 4) = v1370;
                      OUTLINED_FUNCTION_223();

                      *(v1372 + 12) = 0;

                      *(v1372 + 13) = 8;

                      *(v1372 + 14) = v1357;

                      _os_log_impl(&dword_261F5B000, v1371, v1740, "%{public}s: No more connections in connection pool. Cannot migrate. Scheduling tunnel cancellation for %f seconds", v1372, 0x16u);
                      __swift_destroy_boxed_opaque_existential_0Tm(v1373);
                      v1378 = OUTLINED_FUNCTION_16_3();
                      MEMORY[0x266724180](v1378);
                      v364 = v1748;
                      OUTLINED_FUNCTION_26();
                      MEMORY[0x266724180]();
                    }

                    else
                    {

                      OUTLINED_FUNCTION_201();
                    }

                    OUTLINED_FUNCTION_205();
                    sub_261FF1FB8();
                    OUTLINED_FUNCTION_242();
                    v1439 = v364 + *(v1438 + 160);
                    *v1439 = 0;
                    *(v1439 + 8) = 1;
                    v1440 = v1669;
                    sub_26203964C();
                    OUTLINED_FUNCTION_63();
                    v1441 = swift_allocObject();
                    OUTLINED_FUNCTION_136_0(v1441);
                    swift_weakInit();
                    v1442 = v1730;
                    v1443 = v1730[2].isa;
                    v1744 = v1730 + 2;
                    v1745 = v1443;
                    v1444 = v1651;
                    v1445 = v1731;
                    (v1443)(v1651, v1440, v1731);
                    v1446 = (LOBYTE(v1442[10].isa) + 48) & ~LOBYTE(v1442[10].isa);
                    v1447 = swift_allocObject();
                    v1448 = OUTLINED_FUNCTION_28_6(v1447);
                    v1449 = v1728;
                    *(v1448 + 32) = v1360;
                    *(v1448 + 40) = v1449;
                    (v1442[4].isa)(v1448 + v1446, v1444, v1445);
                    *&v1760 = sub_261FFF0E0;
                    *(&v1760 + 1) = v1447;
                    *&aBlock = MEMORY[0x277D85DD0];
                    *(&aBlock + 1) = 1107296256;
                    *&v1759 = sub_261F78F64;
                    *(&v1759 + 1) = &block_descriptor_373;
                    _Block_copy(&aBlock);
                    v1450 = OUTLINED_FUNCTION_181_0();

                    sub_262034790();
                    v1451 = sub_26203A06C();
                    v1452 = *(v1451 + 48);
                    v1453 = *(v1451 + 52);
                    swift_allocObject();
                    sub_26203A04C();

                    sub_261FF25D8();
                    v1454 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798) + 48);
                    v1455 = v1729;
                    *v1729 = v1720 & 1;
                    v1456 = v1669;
                    OUTLINED_FUNCTION_63_2();
                    v1457();
                    swift_storeEnumTagMultiPayload();
                    sub_261FF2200(v1455);
                    v1458 = sub_261F6E294();
                    v1459 = v1653;
                    sub_26203A02C();
                    v1460 = v1654;
                    sub_26203A09C();
                    v1461 = *(v1655 + 8);
                    v1462 = v1459;
                    v1463 = v1656;
                    v1461(v1462, v1656);
                    sub_26203A55C();

                    v1464 = v1460;
                    v958 = v1728;
                    v1461(v1464, v1463);
                    (v1730[1].isa)(v1456, v1731);
                  }
                }

                sub_261F7B38C();
                v1120 = *(&v1759 + 1);
                if (*(&v1759 + 1))
                {
                  v1121 = OUTLINED_FUNCTION_101_0();
                  __swift_project_boxed_opaque_existential_0Tm(v1121, v1122);
                  OUTLINED_FUNCTION_16();
                  v1124 = v1123;
                  v1126 = *(v1125 + 64);
                  MEMORY[0x28223BE20](v1127);
                  OUTLINED_FUNCTION_74();
                  (*(v1124 + 16))(v1129 - v1128);
                  sub_261F66E60(&aBlock, &qword_27FEFA288, &qword_262044098);
                  OUTLINED_FUNCTION_80_1();
                  v1130 = OUTLINED_FUNCTION_42_3();
                  v1131(v1130);
                  v1132 = *(v1124 + 8);
                  v1133 = OUTLINED_FUNCTION_135();
                  v1134(v1133);
                  v1135 = v1755;
                  v1120 = *(&v1755 + 1);
                }

                else
                {
                  sub_261F66E60(&aBlock, &qword_27FEFA288, &qword_262044098);
                  v1135 = 0;
                }

                __swift_project_boxed_opaque_existential_0Tm(v1761, v1762);
                OUTLINED_FUNCTION_149_0();
                v1152 = OUTLINED_FUNCTION_82_1();
                v1153(v1152);
                v1154 = *(&aBlock + 1);
                if (v1120)
                {
                  if (*(&aBlock + 1))
                  {
                    v1155 = OUTLINED_FUNCTION_71_2();
                    sub_261FA3600(v1155, v1156, v1157, v1154);
                    OUTLINED_FUNCTION_297();

                    if ((v1135 & 1) == 0)
                    {

                      return __swift_destroy_boxed_opaque_existential_0Tm(v1761);
                    }

LABEL_283:
                    sub_261FF74C0(&v1755);
                    if (*(&v1756 + 1))
                    {
                      aBlock = v1755;
                      v1759 = v1756;
                      v1760 = v1757;
                      LODWORD(v1737) = sub_26203A4AC();
                      v1220 = OUTLINED_FUNCTION_85_1();
                      sub_261FA5688(v1220, v1221);
                      sub_261FA5688(&v1755, &v1753);
                      OUTLINED_FUNCTION_269();
                      v1222 = swift_allocObject();
                      v1223 = v1756;
                      *&v1222[2].isa = v1755;
                      *&v1222[4].isa = v1223;
                      *&v1222[6].isa = v1757;
                      v1224 = v1222;
                      v1741 = v1222;
                      sub_261F79740(v1761, v1752);
                      sub_261F79740(v1752, v1751);
                      OUTLINED_FUNCTION_14_1();
                      v1225 = swift_allocObject();
                      v1742 = v1225;
                      sub_261F797BC(v1752, &v1225[2]);
                      OUTLINED_FUNCTION_45_2();
                      v1226 = swift_allocObject();
                      OUTLINED_FUNCTION_86_2(v1226);
                      OUTLINED_FUNCTION_45_2();
                      v1227 = swift_allocObject();
                      *(v1227 + 16) = 8;
                      OUTLINED_FUNCTION_46();
                      v1228 = swift_allocObject();
                      *(v1228 + 16) = sub_261FFF800;
                      *(v1228 + 24) = v364;
                      v1229 = v1228;
                      v1740 = v1228;
                      OUTLINED_FUNCTION_46();
                      v1230 = swift_allocObject();
                      v1745 = v1230;
                      *(v1230 + 16) = sub_261FFF818;
                      *(v1230 + 24) = v1229;
                      OUTLINED_FUNCTION_45_2();
                      v1744 = swift_allocObject();
                      LOBYTE(v1744[2].isa) = 32;
                      OUTLINED_FUNCTION_45_2();
                      v1739 = swift_allocObject();
                      *(v1739 + 16) = 8;
                      OUTLINED_FUNCTION_46();
                      v1231 = swift_allocObject();
                      *(v1231 + 16) = sub_261FFF070;
                      *(v1231 + 24) = v1224;
                      OUTLINED_FUNCTION_46();
                      v1232 = swift_allocObject();
                      *(v1232 + 16) = sub_261FFF818;
                      *(v1232 + 24) = v1231;
                      OUTLINED_FUNCTION_45_2();
                      v1233 = swift_allocObject();
                      *(v1233 + 16) = 32;
                      v1234 = v1233;
                      OUTLINED_FUNCTION_45_2();
                      TupleTypeMetadata2 = swift_allocObject();
                      LOBYTE(TupleTypeMetadata2[2].isa) = 8;
                      OUTLINED_FUNCTION_46();
                      v1235 = swift_allocObject();
                      *(v1235 + 16) = sub_261FFF7E8;
                      *(v1235 + 24) = v1225;
                      OUTLINED_FUNCTION_46();
                      v1236 = swift_allocObject();
                      *(v1236 + 16) = sub_261FFF818;
                      *(v1236 + 24) = v1235;
                      v1237 = OUTLINED_FUNCTION_289();
                      *(v1237 + 16) = v1718;
                      *(v1237 + 32) = sub_261FFF848;
                      *(v1237 + 40) = v1226;
                      *(v1237 + 48) = sub_261FFF848;
                      *(v1237 + 56) = v1227;
                      v1238 = v1745;
                      *(v1237 + 64) = sub_261FFF7F0;
                      *(v1237 + 72) = v1238;
                      v1239 = v1744;
                      *(v1237 + 80) = sub_261FFF848;
                      *(v1237 + 88) = v1239;
                      v1240 = v1739;
                      *(v1237 + 96) = sub_261FFF848;
                      *(v1237 + 104) = v1240;
                      *(v1237 + 112) = sub_261FFF7F0;
                      *(v1237 + 120) = v1232;
                      *(v1237 + 128) = sub_261FFF848;
                      *(v1237 + 136) = v1234;
                      v1241 = TupleTypeMetadata2;
                      *(v1237 + 144) = sub_261FFF848;
                      *(v1237 + 152) = v1241;
                      *(v1237 + 160) = sub_261FFF7F0;
                      *(v1237 + 168) = v1236;
                      swift_setDeallocating();
                      OUTLINED_FUNCTION_290();

                      v1732 = v1231;

                      v1743 = v1235;

                      v1731 = v1232;

                      v1733 = v1234;

                      v1735 = v1236;

                      sub_261FB9814();
                      if (OUTLINED_FUNCTION_293(v1737))
                      {
                        OUTLINED_FUNCTION_30();
                        v1242 = swift_slowAlloc();
                        OUTLINED_FUNCTION_101();
                        v1730 = swift_slowAlloc();
                        v1750 = v1730;
                        *v1242 = 770;
                        *(v1242 + 2) = 34;

                        *(v1242 + 3) = 8;

                        v1243 = sub_261F7C884();
                        sub_261F67FE4(v1243, v1244, &v1750);
                        OUTLINED_FUNCTION_154_0();

                        *(v1242 + 4) = v1226;
                        OUTLINED_FUNCTION_223();

                        *(v1242 + 12) = 32;

                        *(v1242 + 13) = 8;

                        sub_261F79740(&v1753, v1749);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
                        v1245 = sub_26203A20C();
                        v1247 = sub_261F67FE4(v1245, v1246, &v1750);

                        *(v1242 + 14) = v1247;

                        sub_261FFEDE8(&v1753);
                        *(v1242 + 22) = 32;

                        *(v1242 + 23) = 8;

                        sub_261F79740(v1751, v1749);
                        v1248 = sub_26203A20C();
                        sub_261F67FE4(v1248, v1249, &v1750);
                        OUTLINED_FUNCTION_73_2();

                        *(v1242 + 24) = 8;

                        __swift_destroy_boxed_opaque_existential_0Tm(v1751);
                        OUTLINED_FUNCTION_141_0();
                        _os_log_impl(v1250, v1251, v1252, v1253, v1242, 0x20u);
                        OUTLINED_FUNCTION_273();
                        swift_arrayDestroy();
                        v1254 = OUTLINED_FUNCTION_29_7();
                        MEMORY[0x266724180](v1254);
                        v1255 = OUTLINED_FUNCTION_32_4();
                        MEMORY[0x266724180](v1255);
                      }

                      else
                      {

                        OUTLINED_FUNCTION_223();

                        sub_261FFEDE8(&v1753);

                        __swift_destroy_boxed_opaque_existential_0Tm(v1751);
                      }

                      v1351 = OUTLINED_FUNCTION_85_1();
                      sub_261F79740(v1351, v1352);
                      v1353 = v1748;
                      sub_261FF1FB8();
                      v1354 = *(&v1760 + 1);
                      sub_261FFEDE8(&aBlock);
                      OUTLINED_FUNCTION_2_8();
                      v1356 = v1353 + *(v1355 + 160);
                      *v1356 = v1354;
                      *(v1356 + 8) = 0;
                    }

                    else
                    {

                      sub_261F66E60(&v1755, &qword_27FEFA340, &qword_262044790);
                    }

                    return __swift_destroy_boxed_opaque_existential_0Tm(v1761);
                  }
                }

                else
                {
                  if (!*(&aBlock + 1))
                  {

                    goto LABEL_283;
                  }
                }

                return __swift_destroy_boxed_opaque_existential_0Tm(v1761);
              }

              v1158 = v1687;
              OUTLINED_FUNCTION_123();
              OUTLINED_FUNCTION_63_2();
              v1159();
              v1728 = *v1158;
              v1726 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA370, &qword_2620447C8) + 48);
              v1160 = v1730[4].isa;
              v1161 = v1731;
              (v1160)(v1690, v1727 + v930, v1731);
              v1162 = v1158 + v1726;
              v1163 = v1709;
              v1727 = v1160;
              (v1160)(v1709, v1162, v1161);
              OUTLINED_FUNCTION_129_0();
              if ((sub_26203962C() & 1) == 0)
              {

                v1256 = v1730[1].isa;
                (v1256)(v1163, v1731);
                v1257 = OUTLINED_FUNCTION_42_3();
                (v1256)(v1257);
                v327 = v1741;
                v240 = v1739;
                goto LABEL_287;
              }

              v565 = v1728;
              LODWORD(v1736) = sub_26203A48C();
              if (qword_28108B618 == -1)
              {
LABEL_274:
                TupleTypeMetadata2 = qword_28108B620;
                v1164 = v1730 + 2;
                v1165 = v1730[2].isa;
                v1166 = v1658;
                v1167 = v1731;
                (v1165)(v1658, v1709, v1731);
                (v1165)(v1688, v1166, v1167);
                v1168 = (LOBYTE(v1164[8].isa) + 16) & ~LOBYTE(v1164[8].isa);
                v1169 = swift_allocObject();
                v1744 = v1169;
                (v1727)(v1169 + v1168, v1166, v1167);
                OUTLINED_FUNCTION_63();
                v1170 = swift_allocObject();
                *(v1170 + 16) = v565;
                v1171 = v1170;
                v1748 = v1170;
                OUTLINED_FUNCTION_45_2();
                v1172 = swift_allocObject();
                *(v1172 + 16) = 32;
                OUTLINED_FUNCTION_45_2();
                v1173 = swift_allocObject();
                *(v1173 + 16) = 8;
                OUTLINED_FUNCTION_46();
                v1174 = swift_allocObject();
                *(v1174 + 16) = sub_261FFEFE4;
                *(v1174 + 24) = v1169;
                OUTLINED_FUNCTION_46();
                v1175 = swift_allocObject();
                *(v1175 + 16) = sub_261FFF818;
                *(v1175 + 24) = v1174;
                v1176 = v1175;
                v1732 = v1175;
                OUTLINED_FUNCTION_45_2();
                v1746 = swift_allocObject();
                LOBYTE(v1746[2].isa) = 32;
                OUTLINED_FUNCTION_45_2();
                v1177 = swift_allocObject();
                v1177[16] = 8;
                v1745 = v1177;
                OUTLINED_FUNCTION_46();
                v1178 = swift_allocObject();
                *(v1178 + 16) = sub_261FFF838;
                *(v1178 + 24) = v1171;
                OUTLINED_FUNCTION_46();
                v1179 = swift_allocObject();
                *(v1179 + 16) = sub_261FFF818;
                *(v1179 + 24) = v1178;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
                v1180 = swift_allocObject();
                *(v1180 + 16) = xmmword_262044040;
                *(v1180 + 32) = sub_261FFF848;
                *(v1180 + 40) = v1172;
                *(v1180 + 48) = sub_261FFF848;
                *(v1180 + 56) = v1173;
                *(v1180 + 64) = sub_261FFF7F0;
                *(v1180 + 72) = v1176;
                v1181 = v1746;
                *(v1180 + 80) = sub_261FFF848;
                *(v1180 + 88) = v1181;
                *(v1180 + 96) = sub_261FFF848;
                *(v1180 + 104) = v1177;
                *(v1180 + 112) = sub_261FFF7F0;
                *(v1180 + 120) = v1179;
                swift_setDeallocating();
                v1182 = OUTLINED_FUNCTION_245();
                v1183 = v1177;

                v1735 = v1174;
                v1184 = v1732;

                v1737 = v1178;

                v1733 = v1179;

                sub_261FB9814();
                v1185 = v1736;
                if (os_log_type_enabled(TupleTypeMetadata2, v1736))
                {
                  OUTLINED_FUNCTION_57_1();
                  v1186 = swift_slowAlloc();
                  v1187 = v1688;
                  v1188 = v1186;
                  OUTLINED_FUNCTION_56();
                  v1729 = swift_slowAlloc();
                  OUTLINED_FUNCTION_261(v1729);
                  *v1188 = v1189;
                  *(v1188 + 2) = 32;

                  *(v1188 + 3) = 8;

                  OUTLINED_FUNCTION_10_8();
                  sub_261F6E4A4(v1190, v1191);
                  v1192 = v1731;
                  sub_26203ABAC();
                  OUTLINED_FUNCTION_74_2();
                  v1196 = sub_261F67FE4(v1193, v1194, v1195);

                  *(v1188 + 4) = v1196;

                  OUTLINED_FUNCTION_279();
                  (v1173)(v1187, v1192);
                  *(v1188 + 12) = 32;

                  *(v1188 + 13) = 8;

                  v1197 = v1728;
                  *&v1755 = v1728;
                  v1198 = v1728;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
                  sub_26203A20C();
                  OUTLINED_FUNCTION_74_2();
                  sub_261F67FE4(v1199, v1200, v1201);
                  OUTLINED_FUNCTION_73_2();

                  *(v1188 + 14) = v1184;

                  _os_log_impl(&dword_261F5B000, TupleTypeMetadata2, v1185, "Processing deferred cancellation event %s for error: %s", v1188, 0x16u);
                  OUTLINED_FUNCTION_230();
                  v1202 = OUTLINED_FUNCTION_29_7();
                  MEMORY[0x266724180](v1202);
                  v1203 = OUTLINED_FUNCTION_32_4();
                  MEMORY[0x266724180](v1203);
                  v1204 = v1192;
                }

                else
                {

                  OUTLINED_FUNCTION_279();
                  v1204 = v1731;
                  (v1173)(v1688, v1731);
                }

                v1379 = v1690;
                swift_willThrow();
                (v1173)(v1709, v1204);
                (v1173)(v1379, v1204);
                v1380 = OUTLINED_FUNCTION_9_12();
                v1381(v1380);
                v466 = OUTLINED_FUNCTION_54_2();
                v467 = v1741;
                return v468(v466, v467);
              }

LABEL_383:
              OUTLINED_FUNCTION_0_27();
              swift_once();
              goto LABEL_274;
            case 8u:
              v618 = v1700;
              OUTLINED_FUNCTION_21_6();
              v619();
              v620 = v1742;
              v621 = v1742[2].isa;
              v622 = v1704;
              OUTLINED_FUNCTION_147();
              v623();
              v624 = OUTLINED_FUNCTION_234(2, v622);
              v626 = v620[1].isa;
              v364 = &v620[1];
              v625 = v626;
              v627 = OUTLINED_FUNCTION_42_3();
              v626(v627);
              if ((v624 & 1) == 0)
              {
                v631 = v618;
                goto LABEL_158;
              }

              v628 = v618[1];
              aBlock = *v618;
              v1759 = v628;
              v1760 = v618[2];
              sub_261F798CC(v1682);
              v629 = sub_261FF6158(v327);
              v630 = OUTLINED_FUNCTION_100();
              v625(v630);
              if (v629 == 2 || (v629 & 1) != 0)
              {
                v631 = &aBlock;
LABEL_158:
                sub_261FFEDE8(v631);
                goto LABEL_221;
              }

              v1397 = v1638;
              v1398 = v1748;
              sub_261FF19A8();
              v1399 = v1725;
              OUTLINED_FUNCTION_150_0(v1397, 1, v1725);
              if (v324)
              {
                sub_261F66E60(v1397, &qword_27FEFA270, &qword_262041910);
                *&v1755 = sub_26203ABEC();
                *(&v1755 + 1) = v1631;
                OUTLINED_FUNCTION_33_2();
                OUTLINED_FUNCTION_184_0();
                MEMORY[0x266722710]();
                OUTLINED_FUNCTION_203();
                sub_261F798CC(v1632);
                OUTLINED_FUNCTION_143_0();
                v1633 = OUTLINED_FUNCTION_71_2();
                v625(v1633);
                OUTLINED_FUNCTION_170_0();
                OUTLINED_FUNCTION_75_2();
                v1596 = 852;
                goto LABEL_397;
              }

              (*(v1721 + 32))(v1668, v1397, v1399);
              OUTLINED_FUNCTION_22_6(&aBlock);
              v1400 = OUTLINED_FUNCTION_18_5();
              v1401(v1400);
              v1402 = *&v1752[0];
              v1403 = OUTLINED_FUNCTION_85_1();
              sub_261FA5688(v1403, v1404);
              v1405 = *(*v1398 + 184);
              OUTLINED_FUNCTION_36_1();
              swift_beginAccess();
              OUTLINED_FUNCTION_155_0();
              sub_262029D2C();
              swift_endAccess();
              v1406 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA350, &unk_262041920) + 48);
              v1407 = v1708;
              *v1708 = *(&v1760 + 1);
              (*(v1721 + 16))(&v1407[v1406], v1668, v1399);
              OUTLINED_FUNCTION_182_0();
              __swift_storeEnumTagSinglePayload(v1408, v1409, v1410, v1399);
              swift_storeEnumTagMultiPayload();
              v1411 = v1760;
              v1746 = *(&v1759 + 1);
              __swift_project_boxed_opaque_existential_0Tm(&aBlock, *(&v1759 + 1));
              OUTLINED_FUNCTION_63();
              v1412 = swift_allocObject();
              OUTLINED_FUNCTION_136_0(v1412);
              swift_weakInit();
              v1413 = OUTLINED_FUNCTION_85_1();
              sub_261FA5688(v1413, v1414);
              v1415 = swift_allocObject();
              v1416 = OUTLINED_FUNCTION_28_6(v1415);
              *(v1416 + 32) = v1402;
              v1417 = v1756;
              *(v1416 + 40) = v1755;
              *(v1416 + 56) = v1417;
              *(v1416 + 72) = v1757;
              v1418 = *(v1411 + 24);

              v1418(v1407, sub_261FFF518, v1415, v1746, v1411);

              OUTLINED_FUNCTION_1_20();
              sub_261FFEE7C(v1407, v1419);
              (*(v1721 + 8))(v1668, v1725);
              sub_261FFEDE8(&aBlock);

              v1420 = OUTLINED_FUNCTION_9_12();
              v1421(v1420);
              v1422 = OUTLINED_FUNCTION_130_0();
              result = (v625)(v1422);
              break;
            case 9u:
              v590 = v1703;
              OUTLINED_FUNCTION_21_6();
              v591();
              v1725 = *(v590 + 40);
              v592 = v1742;
              v593 = v1742[2].isa;
              v594 = v1705;
              OUTLINED_FUNCTION_147();
              v595();
              v596 = OUTLINED_FUNCTION_234(2, v594);
              v597 = v592[1].isa;
              v598 = OUTLINED_FUNCTION_11_0();
              v597(v598);
              if ((v596 & 1) == 0)
              {

                p_aBlock = v590;
                goto LABEL_156;
              }

              sub_261F797BC(v590, &aBlock);
              v599 = v1683;
              sub_261F798CC(v1683);
              v600 = sub_261FF6158(v327);
              (v597)(v599, v327);
              if (v600 == 2 || (v600 & 1) == 0)
              {

                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v327 = v1741;
                goto LABEL_221;
              }

              OUTLINED_FUNCTION_202();
              OUTLINED_FUNCTION_53_2();
              v601 = OUTLINED_FUNCTION_39_1();
              v602(v601);
              v603 = OUTLINED_FUNCTION_85_1();
              sub_261F79740(v603, v604);
              v605 = v1748;
              v606 = *(*v1748 + 192);
              OUTLINED_FUNCTION_36_1();
              swift_beginAccess();
              OUTLINED_FUNCTION_153();
              sub_262029DF0();
              swift_endAccess();
              if (v1725)
              {
                OUTLINED_FUNCTION_202();
                OUTLINED_FUNCTION_19_6();
                v607 = OUTLINED_FUNCTION_39_1();
                v608(v607);
                v609 = *(*v605 + 176);
                OUTLINED_FUNCTION_36_1();
                swift_beginAccess();
                OUTLINED_FUNCTION_42_3();
                sub_262029EAC();
                swift_endAccess();
              }

              OUTLINED_FUNCTION_63();
              v610 = swift_allocObject();
              OUTLINED_FUNCTION_136_0(v610);
              swift_weakInit();
              v611 = OUTLINED_FUNCTION_85_1();
              sub_261F79740(v611, v612);
              v613 = OUTLINED_FUNCTION_167();
              v614 = OUTLINED_FUNCTION_28_6(v613);
              OUTLINED_FUNCTION_191(v614);
              OUTLINED_FUNCTION_196();
              sub_261FF6E8C();

              __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
              v615 = OUTLINED_FUNCTION_9_12();
              v616(v615);
              v617 = OUTLINED_FUNCTION_130_0();
              return (v597)(v617);
            case 0xAu:
              v427 = v1702;
              OUTLINED_FUNCTION_63_2();
              v428();
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() == 10)
              {

                v429 = v427[1];
                aBlock = *v427;
                v1759 = v429;
                v1760 = v427[2];
                v430 = v1729;
                OUTLINED_FUNCTION_131();
                swift_storeEnumTagMultiPayload();
                sub_261FF2200(v430);
                v431 = v1676;
                sub_261FA5688(&aBlock, v1676);
                OUTLINED_FUNCTION_59_0();
                swift_storeEnumTagMultiPayload();
                sub_261F6E52C(v431);
                v432 = *(v1739 + 8);
                v433 = OUTLINED_FUNCTION_59_0();
                v432(v433);
                sub_261FFEDE8(&aBlock);
                v434 = OUTLINED_FUNCTION_133_0();
                return (v432)(v434);
              }

              v631 = v427;
              goto LABEL_158;
            case 0xCu:
              v469 = v1701;
              v470 = v1740;
              v471 = v1743;
              OUTLINED_FUNCTION_63_2();
              v472();
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() != 10)
              {
                sub_261F66E60(v469, &qword_27FEFA388, &qword_2620447E0);
                goto LABEL_221;
              }

              OUTLINED_FUNCTION_30_5(v469);
              v466 = v470;
              v467 = v471;
              return v468(v466, v467);
            case 0xEu:
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() != 3)
              {
                goto LABEL_221;
              }

              sub_26203A4AC();
              OUTLINED_FUNCTION_265();
              if (!v324)
              {
                OUTLINED_FUNCTION_0_27();
                swift_once();
              }

              sub_26203969C();
              OUTLINED_FUNCTION_153_0();
              sub_261F7B38C();
              v436 = v1743;
              v437 = v1739;
              v364 = v1729;
              if (!*(&v1756 + 1))
              {
                goto LABEL_399;
              }

              OUTLINED_FUNCTION_237();
              OUTLINED_FUNCTION_11_0();
              swift_storeEnumTagMultiPayload();
              sub_261FF2200(v364);
              OUTLINED_FUNCTION_63();
              v438 = swift_allocObject();
              OUTLINED_FUNCTION_136_0(v438);
              swift_weakInit();
              v439 = OUTLINED_FUNCTION_85_1();
              sub_261F79740(v439, v440);
              v441 = OUTLINED_FUNCTION_167();
              v442 = OUTLINED_FUNCTION_28_6(v441);
              OUTLINED_FUNCTION_191(v442);
              OUTLINED_FUNCTION_196();
              sub_261FF6E8C();

              __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);

              return (*(v437 + 8))(v1740, v436);
            case 0xFu:
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload())
              {
                goto LABEL_221;
              }

              isa_low = LOBYTE(v1747->isa);
              OUTLINED_FUNCTION_153_0();
              sub_261F7B38C();
              if (!*(&v1756 + 1))
              {
                sub_261F66E60(&v1755, &qword_27FEFA288, &qword_262044098);
                *&aBlock = OUTLINED_FUNCTION_231();
                *(&aBlock + 1) = v1614;
                OUTLINED_FUNCTION_65_1();
                OUTLINED_FUNCTION_174_0();
                OUTLINED_FUNCTION_42_3();
                sub_26203ABDC();
                OUTLINED_FUNCTION_76_0();
                v1615 = OUTLINED_FUNCTION_42_3();
                v1616(v1615);
                OUTLINED_FUNCTION_170_0();
                OUTLINED_FUNCTION_51_2();
                v1596 = 811;
                goto LABEL_397;
              }

              LODWORD(v1722) = isa_low;
              OUTLINED_FUNCTION_237();
              LODWORD(v1726) = sub_26203A4AC();
              OUTLINED_FUNCTION_265();
              v384 = v1737;
              v385 = v1735;
              if (!v324)
              {
                goto LABEL_379;
              }

              goto LABEL_76;
            case 0x10u:
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_261F7A074(v1685);
                v526 = OUTLINED_FUNCTION_255();
                v527 = v1737;
                OUTLINED_FUNCTION_150_0(v526, v528, v1737);
                if (!v324)
                {

                  OUTLINED_FUNCTION_63();
                  v529 = swift_allocObject();
                  OUTLINED_FUNCTION_136_0(v529);
                  swift_weakInit();
                  OUTLINED_FUNCTION_107();
                  v530 = swift_allocObject();
                  v531 = v1735;
                  v530[2] = v527;
                  v530[3] = v531;
                  v530[4] = v362;
                  v532 = *(v531 + 72);

                  v532(sub_261F6E03C, v530, v527, v531);

                  v533 = *(v1706 + 8);
                  v534 = OUTLINED_FUNCTION_175_0();
                  v535(v534);
LABEL_335:
                  v466 = OUTLINED_FUNCTION_17_8();
LABEL_336:
                  v467 = v1743;
                  return v468(v466, v467);
                }

LABEL_385:
                __break(1u);
                goto LABEL_386;
              }

              v660 = v1742;
              v661 = v1742[2].isa;
              v662 = v1677;
              OUTLINED_FUNCTION_147();
              v663();
              v664 = OUTLINED_FUNCTION_234(0, v662);
              v665 = v660[1].isa;
              v666 = OUTLINED_FUNCTION_42_3();
              (v665)(v666);
              if (v664)
              {
                v1746 = v665;
                v364 = v1657;
                sub_261F7A074(v1657);
                v667 = v1737;
                OUTLINED_FUNCTION_150_0(v364, 1, v1737);
                if (!v324)
                {

                  OUTLINED_FUNCTION_63();
                  v668 = swift_allocObject();
                  OUTLINED_FUNCTION_136_0(v668);
                  swift_weakInit();
                  OUTLINED_FUNCTION_107();
                  v669 = swift_allocObject();
                  v670 = v1735;
                  v669[2] = v667;
                  v669[3] = v670;
                  v669[4] = v662;
                  v671 = *(v670 + 72);

                  v671(sub_261FFF824, v669, v667, v670);

                  v672 = *(v1706 + 8);
                  v673 = OUTLINED_FUNCTION_162_0();
                  v674(v673);
                  v675 = OUTLINED_FUNCTION_9_12();
                  v676(v675);
                  v677 = OUTLINED_FUNCTION_130_0();
                  return (v1746)(v677, v678);
                }

                goto LABEL_390;
              }

              goto LABEL_221;
            case 0x11u:
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                goto LABEL_221;
              }

              v536 = v1742[2].isa;
              v537 = v1681;
              OUTLINED_FUNCTION_147();
              v538();
              if (*v537)
              {
                goto LABEL_221;
              }

              v539 = sub_261FF21BC();
              sub_261FF673C(v539);
              v540 = sub_261FF2178();
              v541 = v1736;
              sub_261FF0078(v540);

              v542 = OUTLINED_FUNCTION_42_3();
              sub_261FF03B8();
              v543 = v542;

              v544 = sub_261FF2098();
              sub_261FF0078(v544);
              v1728 = v541;

              v545 = OUTLINED_FUNCTION_100();
              sub_261FF03B8();
              v546 = v545;

              v547 = *(v546 + 16);
              if (v547)
              {
                v548 = v546 + 32;
                v549 = v1729;
                do
                {
                  sub_261F79740(v548, &aBlock);
                  OUTLINED_FUNCTION_236();
                  v550 = *(v543 + 48);
                  v551 = OUTLINED_FUNCTION_82_1();
                  v552(v551);
                  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                  v548 += 40;
                  --v547;
                }

                while (v547);
              }

              else
              {

                v549 = v1729;
              }

              v1465 = v1748;
              OUTLINED_FUNCTION_246();
              v1467 = *(v1466 + 184);
              OUTLINED_FUNCTION_36_1();
              swift_beginAccess();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA390, &qword_2620447E8);
              sub_26203A10C();
              swift_endAccess();
              OUTLINED_FUNCTION_246();
              v1469 = *(v1468 + 192);
              OUTLINED_FUNCTION_36_1();
              swift_beginAccess();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA398, &unk_2620447F0);
              sub_26203A10C();
              swift_endAccess();
              OUTLINED_FUNCTION_246();
              v1471 = *(v1470 + 168);
              OUTLINED_FUNCTION_36_1();
              swift_beginAccess();
              sub_26203A10C();
              swift_endAccess();
              OUTLINED_FUNCTION_205();
              sub_261FF1FB8();
              OUTLINED_FUNCTION_246();
              v1473 = v1465 + *(v1472 + 160);
              *v1473 = 0;
              *(v1473 + 8) = 1;
              v1474 = v1741;
              swift_storeEnumTagMultiPayload();
              sub_261FF2200(v549);
              v1475 = OUTLINED_FUNCTION_9_12();
              v1476(v1475);
              v1477 = OUTLINED_FUNCTION_54_2();
              return v1478(v1477, v1474);
            default:
              goto LABEL_221;
          }

          return result;
        default:
          goto LABEL_66;
      }
  }
}