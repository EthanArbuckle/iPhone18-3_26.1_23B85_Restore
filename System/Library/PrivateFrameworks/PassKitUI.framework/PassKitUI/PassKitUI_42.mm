uint64_t sub_1BD4A98AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = sub_1BE04E0B4();
  v5[3] = v6;
  v5[4] = *(v6 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v7 = sub_1BE04D214();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[11] = v8;
  *v8 = v5;
  v8[1] = sub_1BD4A9A14;

  return MEMORY[0x1EEE38178]();
}

uint64_t sub_1BD4A9A14()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1BD4A9D78;
  }

  else
  {
    v2 = sub_1BD4A9B28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD4A9B28()
{
  v26 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_1BE04D094();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C24();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  v13 = v0[3];
  v12 = v0[4];
  if (v7)
  {
    v24 = v0[7];
    v14 = swift_slowAlloc();
    v22 = v6;
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    sub_1BD4B52D8(&unk_1EBD47730, MEMORY[0x1E69CDDE8]);
    v16 = sub_1BE053B24();
    v23 = v8;
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_1BD123690(v16, v18, &v25);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1BD026000, v5, v22, "Declined transfer with ID: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1BFB45F20](v15, -1, -1);
    MEMORY[0x1BFB45F20](v14, -1, -1);

    (*(v9 + 8))(v23, v24);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1BD4A9D78()
{
  v32 = v0;
  v1 = v0[12];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  sub_1BE04D094();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C34();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[3];
  if (v9)
  {
    v26 = v0[12];
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v17 = 136315394;
    sub_1BD4B52D8(&unk_1EBD47730, MEMORY[0x1E69CDDE8]);
    v29 = v13;
    v30 = v11;
    v18 = sub_1BE053B24();
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_1BD123690(v18, v20, &v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    v22 = v26;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v27 = v23;
    _os_log_impl(&dword_1BD026000, v7, v8, "Failed decline transfer with ID: %s with error: %@", v17, 0x16u);
    sub_1BD0DE53C(v27, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1BFB45F20](v28, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);

    (*(v12 + 8))(v30, v29);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v24 = v0[1];

  return v24();
}

void sub_1BD4AA048()
{
  v1 = sub_1BE051F54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_updating) & 1) == 0)
  {
    v23 = v9;
    v24 = v2;
    v13 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_effectiveState;
    if (*(v0 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_effectiveState))
    {
      aBlock = 0;
      v27 = 0xE000000000000000;
      sub_1BE053834();
      MEMORY[0x1BFB3F610](0xD000000000000058, 0x80000001BE12BA90);
      v19 = *(v0 + v13);
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v20 = 0xEB00000000646574;
          v21 = 0x6164696C61766E69;
        }

        else
        {
          v20 = 0xE600000000000000;
          v21 = 0x64656C696166;
        }
      }

      else if (*(v0 + v13))
      {
        v20 = 0xE600000000000000;
        v21 = 0x657669746361;
      }

      else
      {
        v20 = 0xE800000000000000;
        v21 = 0x6576697463616E69;
      }

      MEMORY[0x1BFB3F610](v21, v20);

      sub_1BE053994();
      __break(1u);
    }

    else
    {
      v14 = *(v0 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor__lock);
      MEMORY[0x1EEE9AC00](v9, v10);
      os_unfair_lock_lock(v14 + 4);
      sub_1BD4B5380(v15);
      os_unfair_lock_unlock(v14 + 4);
      v22[1] = *(v0 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_queue);
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = 1;
      v30 = sub_1BD4B48C0;
      v31 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = sub_1BD126964;
      v29 = &block_descriptor_67_0;
      v18 = _Block_copy(&aBlock);
      sub_1BE048964();
      sub_1BE051F74();
      v25 = MEMORY[0x1E69E7CC0];
      sub_1BD4B52D8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v12, v5, v18);
      _Block_release(v18);
      (*(v24 + 8))(v5, v1);
      (*(v7 + 8))(v12, v23);
    }
  }
}

uint64_t sub_1BD4AA4E0(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_transferSession))
    {
      v4 = result;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = a2;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BD2B7EA0(sub_1BD4B48CC, v5);
    }
  }

  return result;
}

void sub_1BD4AA5B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor__lock);
  os_unfair_lock_lock(v2 + 4);
  sub_1BD4B5380(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1BD4AA628(char a1, char a2, uint64_t a3)
{
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BE051FA4();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04D214();
  v42 = *(v14 - 8);
  v43 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v34 - v20;
  if ((a1 & 1) != 0 && a2 == 1)
  {
    *(a3 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_effectiveState) = 1;
    sub_1BE04D094();
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C54();
    if (!os_log_type_enabled(v22, v23))
    {
      v25 = v21;
      goto LABEL_10;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1BD026000, v22, v23, "NearbyPeerPayment: TransferMonitor: monitoring started", v24, 2u);
    v25 = v21;
  }

  else
  {
    v38 = v3;
    *(a3 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_effectiveState) = 3;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v35 = sub_1BE052D54();
    v26 = swift_allocObject();
    v37 = a3;
    swift_weakInit();
    aBlock[4] = sub_1BD4B48FC;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_75;
    v27 = _Block_copy(aBlock);
    v36 = v17;
    v28 = v27;
    sub_1BE048964();
    sub_1BE051F74();
    aBlock[7] = MEMORY[0x1E69E7CC0];
    sub_1BD4B52D8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    v29 = v40;
    sub_1BE053664();
    v30 = v35;
    MEMORY[0x1BFB3FDF0](0, v13, v29, v28);
    v31 = v28;
    v25 = v36;
    _Block_release(v31);

    (*(v8 + 8))(v29, v7);
    (*(v39 + 8))(v13, v41);

    sub_1BE04D094();
    v22 = sub_1BE04D204();
    v32 = sub_1BE052C54();
    if (!os_log_type_enabled(v22, v32))
    {
      a3 = v37;
      goto LABEL_10;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1BD026000, v22, v32, "NearbyPeerPayment: TransferMonitor: monitoring could not start", v24, 2u);
    a3 = v37;
  }

  MEMORY[0x1BFB45F20](v24, -1, -1);
LABEL_10:

  result = (*(v42 + 8))(v25, v43);
  *(a3 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_updating) = 0;
  return result;
}

Swift::Void __swiftcall NearbyPeerPaymentTransferMonitor.invalidate()()
{
  v1 = sub_1BE051F54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v87 = &v73[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_1BE051FA4();
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v5);
  v85 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1BE04D214();
  v89 = *(v7 - 8);
  v90 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v73[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A80);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v73[-v17];
  v19 = sub_1BE04E0B4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v22 = &v73[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v73[-v25];
  MEMORY[0x1EEE9AC00](v27, v28);
  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_updating) & 1) == 0)
  {
    v82 = v2;
    v83 = v1;
    v84 = &v73[-v29];
    v31 = v30;
    v32 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_currentTransferID;
    swift_beginAccess();
    v33 = v0 + v32;
    v34 = v31;
    sub_1BD0DE19C(v33, v18, &qword_1EBD40A80);
    if ((*(v31 + 48))(v18, 1, v19) == 1)
    {
      sub_1BD0DE53C(v18, &qword_1EBD40A80);
    }

    else
    {
      v35 = *(v31 + 32);
      v36 = v84;
      v81 = v34 + 32;
      v80 = v35;
      v35(v84, v18, v19);
      v37 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_effectiveState;
      if (*(v0 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_effectiveState) == 2)
      {
        sub_1BE04D094();
        sub_1BE048964();
        v38 = v0;
        v39 = sub_1BE04D204();
        v40 = sub_1BE052C34();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          aBlock[0] = v88;
          v42 = *(v38 + v37);
          v43 = 0xE800000000000000;
          *v41 = 136315138;
          v44 = 0x6576697463616E69;
          v45 = 0xEB00000000646574;
          v46 = 0x6164696C61766E69;
          if (v42 != 2)
          {
            v46 = 0x64656C696166;
            v45 = 0xE600000000000000;
          }

          if (v42)
          {
            v44 = 0x657669746361;
            v43 = 0xE600000000000000;
          }

          if (v42 <= 1)
          {
            v47 = v44;
          }

          else
          {
            v47 = v46;
          }

          if (v42 <= 1)
          {
            v48 = v43;
          }

          else
          {
            v48 = v45;
          }

          v49 = sub_1BD123690(v47, v48, aBlock);

          *(v41 + 4) = v49;
          _os_log_impl(&dword_1BD026000, v39, v40, "NearbyPeerPayment: TransferMonitor: cannot call invalidate on a session with effectiveState: %s", v41, 0xCu);
          v50 = v88;
          __swift_destroy_boxed_opaque_existential_0(v88);
          MEMORY[0x1BFB45F20](v50, -1, -1);
          MEMORY[0x1BFB45F20](v41, -1, -1);
        }

        (*(v89 + 8))(v10, v90);
        (*(v34 + 8))(v36, v19);
      }

      else
      {
        v79 = v0;
        sub_1BE04D094();
        v77 = *(v34 + 16);
        v77(v26, v36, v19);
        v51 = sub_1BE04D204();
        v52 = sub_1BE052C54();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v75 = v53;
          v76 = swift_slowAlloc();
          aBlock[0] = v76;
          *v53 = 136315138;
          sub_1BD4B52D8(&unk_1EBD47730, MEMORY[0x1E69CDDE8]);
          v74 = v52;
          v54 = sub_1BE053B24();
          v56 = v55;
          v78 = *(v34 + 8);
          v78(v26, v19);
          v57 = sub_1BD123690(v54, v56, aBlock);

          v58 = v75;
          *(v75 + 1) = v57;
          v59 = v58;
          _os_log_impl(&dword_1BD026000, v51, v74, "NearbyPeerPayment: TransferMonitor: invalidating monitoring of: %s", v58, 0xCu);
          v60 = v76;
          __swift_destroy_boxed_opaque_existential_0(v76);
          MEMORY[0x1BFB45F20](v60, -1, -1);
          MEMORY[0x1BFB45F20](v59, -1, -1);
        }

        else
        {

          v78 = *(v34 + 8);
          v78(v26, v19);
        }

        v61 = (*(v89 + 8))(v14, v90);
        v62 = v79;
        v63 = *(v79 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor__lock);
        MEMORY[0x1EEE9AC00](v61, v64);
        *&v73[-16] = sub_1BD4B3B28;
        *&v73[-8] = v62;
        os_unfair_lock_lock(v63 + 4);
        sub_1BD4B3B3C(v65);
        os_unfair_lock_unlock(v63 + 4);
        v90 = *(v62 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_queue);
        v66 = swift_allocObject();
        swift_weakInit();
        v77(v22, v84, v19);
        v67 = (*(v34 + 80) + 24) & ~*(v34 + 80);
        v68 = swift_allocObject();
        *(v68 + 16) = v66;
        v80(v68 + v67, v22, v19);
        *(v68 + v67 + v20) = 2;
        aBlock[4] = sub_1BD4B3B58;
        aBlock[5] = v68;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_105;
        v69 = _Block_copy(aBlock);
        sub_1BE048964();
        v70 = v85;
        sub_1BE051F74();
        v91 = MEMORY[0x1E69E7CC0];
        sub_1BD4B52D8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
        v71 = v87;
        v72 = v83;
        sub_1BE053664();
        MEMORY[0x1BFB3FDF0](0, v70, v71, v69);
        _Block_release(v69);
        (*(v82 + 8))(v71, v72);
        (*(v86 + 8))(v70, v88);
        v78(v84, v19);
      }
    }
  }
}

uint64_t sub_1BD4AB524(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v44) = a3;
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39 - v5;
  v7 = sub_1BE04E0B4();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v39 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v24 = *(result + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_transferSession);
    if (!v24)
    {
    }

    v25 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState;
    swift_beginAccess();
    sub_1BD26681C(v23 + v25, v21);
    sub_1BD266F10(v21, v17);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v41 = v24;
    v42 = v6;
    v27 = v7;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1BE048964();
        __swift_destroy_boxed_opaque_existential_0(v17);
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload != 4)
      {
        sub_1BE048964();
        goto LABEL_14;
      }

      sub_1BE048964();
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_1BE048964();
        sub_1BD32E45C(v17);
LABEL_14:
        v40 = 0;
        goto LABEL_15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);
      sub_1BE048964();

      sub_1BD0DE53C(v17, &unk_1EBD3F690);
    }

    v40 = 1;
LABEL_15:
    v28 = v43;
    v39 = *(v43 + 16);
    v29 = v46;
    v30 = v27;
    v39(v13, v46, v27);
    v31 = *(v28 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v23;
    *(v32 + 24) = v44;
    v44 = *(v28 + 32);
    v44(v32 + ((v31 + 25) & ~v31), v13, v30);
    v33 = sub_1BE0528D4();
    v34 = v42;
    (*(*(v33 - 8) + 56))(v42, 1, 1, v33);
    v35 = v45;
    v39(v45, v29, v30);
    v36 = (v31 + 41) & ~v31;
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    *(v37 + 32) = v41;
    *(v37 + 40) = v40;
    v44(v37 + v36, v35, v30);
    v38 = (v37 + ((v8 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v38 = sub_1BD4B46D8;
    v38[1] = v32;
    sub_1BD122C00(0, 0, v34, &unk_1BE0DA798, v37);
  }

  return result;
}

void sub_1BD4AB984(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor__lock);
  os_unfair_lock_lock(v2 + 4);
  sub_1BD4B5380(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1BD4AB9FC(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v54 = a3;
  v6 = sub_1BE04E0B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v49 - v13;
  v15 = sub_1BE04D214();
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A80);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v27 = &v49 - v26;
  if ((a1 & 1) != 0 && a2 == 2)
  {
    v28 = v54;
    *(v54 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_effectiveState) = 2;
    (*(v7 + 56))(v27, 1, 1, v6, v25);
    v29 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_currentTransferID;
    swift_beginAccess();
    sub_1BD2C7C4C(v27, v28 + v29, &qword_1EBD40A80);
    swift_endAccess();
    sub_1BE04D094();
    (*(v7 + 16))(v14, v50, v6);
    v30 = sub_1BE04D204();
    v31 = sub_1BE052C54();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v50 = v22;
      v33 = v32;
      v34 = swift_slowAlloc();
      v53[0] = v34;
      *v33 = 136315138;
      sub_1BD4B52D8(&unk_1EBD47730, MEMORY[0x1E69CDDE8]);
      v35 = sub_1BE053B24();
      v37 = v36;
      (*(v7 + 8))(v14, v6);
      v38 = sub_1BD123690(v35, v37, v53);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1BD026000, v30, v31, "NearbyPeerPayment: TransferMonitor: stopped monitoring transfer with ID: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1BFB45F20](v34, -1, -1);
      MEMORY[0x1BFB45F20](v33, -1, -1);

      (*(v51 + 8))(v50, v52);
    }

    else
    {

      (*(v7 + 8))(v14, v6);
      (*(v51 + 8))(v22, v52);
    }
  }

  else
  {
    *(v54 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_effectiveState) = 3;
    sub_1BE04D094();
    (*(v7 + 16))(v10, v50, v6);
    v39 = sub_1BE04D204();
    v40 = sub_1BE052C34();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v53[0] = v50;
      *v41 = 136315138;
      sub_1BD4B52D8(&unk_1EBD47730, MEMORY[0x1E69CDDE8]);
      v42 = sub_1BE053B24();
      v44 = v43;
      (*(v7 + 8))(v10, v6);
      v45 = sub_1BD123690(v42, v44, v53);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1BD026000, v39, v40, "NearbyPeerPayment: TransferMonitor: Failed cancel transfer with ID: %s", v41, 0xCu);
      v46 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x1BFB45F20](v46, -1, -1);
      MEMORY[0x1BFB45F20](v41, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    (*(v51 + 8))(v18, v52);
  }

  v47 = v54;
  *(v54 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_updating) = 0;
  *(*(v47 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_lockStateMonitor) + 24) = 0;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BD4ABFA8(uint64_t a1)
{
  v2 = v1;
  v33[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v34 = v33 - v5;
  v35 = sub_1BE04E0B4();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v35, v8);
  v9 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v33 - v12;
  v14 = sub_1BE04D214();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C54();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33[0] = v6;
    v22 = v2;
    v23 = v21;
    *v21 = 0;
    _os_log_impl(&dword_1BD026000, v19, v20, "NearbyPeerPayment: TransferMonitor: cancel transfer due to early failure", v21, 2u);
    v24 = v23;
    v2 = v22;
    v9 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = v33[0];
    MEMORY[0x1BFB45F20](v24, -1, -1);
  }

  result = (*(v15 + 8))(v18, v14);
  v26 = *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_transferSession);
  if (v26)
  {
    sub_1BE048964();
    sub_1BE04DE54();
    v27 = sub_1BE0528D4();
    v28 = v34;
    (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
    v29 = v35;
    (*(v6 + 16))(v9, v13, v35);
    v30 = (*(v6 + 80) + 41) & ~*(v6 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v31 + 32) = v26;
    *(v31 + 40) = 1;
    (*(v6 + 32))(v31 + v30, v9, v29);
    v32 = (v31 + ((v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v32 = 0;
    v32[1] = 0;
    sub_1BE048964();
    sub_1BD122C00(0, 0, v28, &unk_1BE0DA800, v31);

    return (*(v6 + 8))(v13, v29);
  }

  return result;
}

uint64_t sub_1BD4AC350()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v48 = &v44 - v2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47740);
  v46 = *(v49 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v49, v4);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v47 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD47748);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47758);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v44 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0);
  sub_1BE04E094();
  if ((*(v22 + 88))(v25, v21) != *MEMORY[0x1E69CDDD8])
  {
    return (*(v22 + 8))(v25, v21);
  }

  (*(v22 + 96))(v25, v21);

  v26 = *(v25 + 4);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47760) + 80);
  v28 = sub_1BE04E084();
  (*(*(v28 - 8) + 8))(&v25[v27], v28);
  if (!*(v26 + 16))
  {
  }

  v29 = *(v9 + 16);
  v29(v16, v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

  (*(v9 + 32))(v20, v16, v8);
  v29(v12, v20, v8);
  if ((*(v9 + 88))(v12, v8) == *MEMORY[0x1E69CDDA8])
  {
    (*(v9 + 96))(v12, v8);
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD47768) + 48);
    v32 = v46;
    v31 = v47;
    v44 = *(v46 + 32);
    v33 = v49;
    v44(v47, v12, v49);
    v34 = sub_1BE04AFE4();
    (*(*(v34 - 8) + 8))(&v12[v30], v34);
    v35 = sub_1BE0528D4();
    (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
    v36 = v45;
    (*(v32 + 16))(v45, v31, v33);
    sub_1BE0528A4();
    v37 = sub_1BE052894();
    v38 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v39 = swift_allocObject();
    v40 = MEMORY[0x1E69E85E0];
    *(v39 + 16) = v37;
    *(v39 + 24) = v40;
    v41 = v49;
    v44((v39 + v38), v36, v49);
    sub_1BD122C00(0, 0, v48, &unk_1BE0DA810, v39);

    (*(v32 + 8))(v47, v41);
    return (*(v9 + 8))(v20, v8);
  }

  else
  {
    v43 = *(v9 + 8);
    v43(v20, v8);
    return (v43)(v12, v8);
  }
}

uint64_t sub_1BD4AC958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47740);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1BE04DE14();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = sub_1BE04D214();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  sub_1BE0528A4();
  v4[13] = sub_1BE052894();
  v9 = sub_1BE052844();
  v4[14] = v9;
  v4[15] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD4ACB1C, v9, v8);
}

uint64_t sub_1BD4ACB1C()
{
  sub_1BE04D094();
  v1 = sub_1BE04D204();
  v2 = sub_1BE052C54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BD026000, v1, v2, "NearbyPeerPayment: TransferMonitor: move transfer to terminal state upon reaching waitingForOpenResponse.", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];

  v7 = *(v6 + 8);
  v0[16] = v7;
  v7(v4, v5);
  sub_1BE04E004();
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1BD4ACC80;
  v9 = v0[8];
  v10 = v0[3];

  return MEMORY[0x1EEE38150](v9, v10);
}

uint64_t sub_1BD4ACC80()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_1BD4ACEA8;
  }

  else
  {
    v8 = sub_1BD4ACE18;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BD4ACE18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD4ACEA8()
{
  v32 = v0;
  v1 = v0[18];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  sub_1BE04D094();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C34();

  v9 = os_log_type_enabled(v7, v8);
  v30 = v0[18];
  v10 = v0[16];
  v11 = v0[11];
  v12 = v0[9];
  v14 = v0[4];
  v13 = v0[5];
  v15 = v0[3];
  if (v9)
  {
    v29 = v0[9];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v16 = 136315394;
    v27 = v11;
    v28 = v10;
    v18 = sub_1BE04E014();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_1BD123690(v18, v20, &v31);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v30;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v17 = v23;
    _os_log_impl(&dword_1BD026000, v7, v8, "NearbyPeerPayment: TransferMonitor: transfer ID %s advancement to terminal state failed with error: %@", v16, 0x16u);
    sub_1BD0DE53C(v17, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1BFB45F20](v26, -1, -1);
    MEMORY[0x1BFB45F20](v16, -1, -1);

    v28(v27, v29);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    v10(v11, v12);
  }

  v24 = v0[1];

  return v24();
}

id sub_1BD4AD164@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v118 = a1;
  v122 = a2;
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  v119 = v3;
  v120 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v114 = &v105 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v117 = &v105 - v13;
  v121 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v121, v14);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v105 - v19;
  v21 = sub_1BE04C4C4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v116 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v105 - v27;
  v29 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_senderMetadata;
  swift_beginAccess();
  sub_1BD0DE19C(v2 + v29, v20, &unk_1EBD476F0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1BD0DE53C(v20, &unk_1EBD476F0);
LABEL_11:
    v50 = sub_1BE04B7C4();
    v51 = v122;
    v122[3] = v50;
    v51[4] = sub_1BD4B52D8(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
    (*(*(v50 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69B7EB0], v50);
    return swift_storeEnumTagMultiPayload();
  }

  v113 = *(v22 + 32);
  v113(v28, v20, v21);
  v30 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiverCoordinator;
  swift_beginAccess();
  v31 = *(v2 + v30);
  if (!v31)
  {
    (*(v22 + 8))(v28, v21);
    goto LABEL_11;
  }

  v32 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState;
  swift_beginAccess();
  sub_1BD26681C(v2 + v32, v16);
  v33 = v31;
  NearbyPeerPaymentReceiverState.nonce.getter();
  v35 = v34;
  sub_1BD32E45C(v16);
  if (!v35)
  {
LABEL_13:
    sub_1BE04D094();
    v53 = sub_1BE04D204();
    v54 = sub_1BE052C34();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1BD026000, v53, v54, "NearbyPeerPayment: receiver failed to validate perform response", v55, 2u);
      MEMORY[0x1BFB45F20](v55, -1, -1);
    }

    (*(v120 + 8))(v7, v119);
    v56 = sub_1BE04B844();
    v126 = v56;
    v127 = MEMORY[0x1E69B7F20];
    v57 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    (*(*(v56 - 8) + 104))(v57, *MEMORY[0x1E69B7F10], v56);
    sub_1BE04C454();
    sub_1BE04B8B4();

    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v58 = sub_1BE04B884();
    v59 = v122;
    v122[3] = v58;
    v59[4] = sub_1BD4B52D8(&qword_1EBD47898, MEMORY[0x1E69B7F50]);
    v60 = __swift_allocate_boxed_opaque_existential_1(v59);
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69B7F38], v58);

    (*(v22 + 8))(v28, v21);
    return swift_storeEnumTagMultiPayload();
  }

  if ((sub_1BE04C2B4() & 1) == 0)
  {

    goto LABEL_13;
  }

  v110 = v35;
  v109 = v22 + 32;
  v118 = v22;
  v36 = v117;
  sub_1BE04D094();
  v37 = sub_1BE04D204();
  v38 = sub_1BE052C54();
  v39 = os_log_type_enabled(v37, v38);
  v112 = v21;
  if (v39)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1BD026000, v37, v38, "NearbyPeerPayment: TransferMonitor: payment succceeded, updating received transaction", v40, 2u);
    MEMORY[0x1BFB45F20](v40, -1, -1);
  }

  v41 = *(v120 + 8);
  v120 += 8;
  v105 = v41;
  v41(v36, v119);
  v111 = sub_1BE04C454();
  v43 = v42;
  v44 = sub_1BE04C4A4();
  v46 = v45;
  v47 = sub_1BE04C4B4();
  if (v48 >> 60 == 15)
  {
    v49 = 0;
  }

  else
  {
    v62 = v47;
    v63 = v46;
    v64 = v48;
    sub_1BE04C3E4();
    v65 = objc_allocWithZone(MEMORY[0x1E69B8FB8]);
    sub_1BD041A38(v62, v64);
    v66 = sub_1BE052404();

    v67 = sub_1BE04AAB4();
    sub_1BD030220(v62, v64);
    v49 = [v65 initWithDisplayName:v66 imageData:v67];

    v68 = v64;
    v46 = v63;
    sub_1BD030220(v62, v68);
  }

  v69 = [objc_opt_self() sharedInstance];
  v117 = v69;
  if (v69)
  {
    v107 = v49;
    v106 = v69;
    v70 = v43;
    v71 = sub_1BE052404();
    v108 = v33;
    if (v46)
    {
      sub_1BE048C84();
      v72 = sub_1BE052404();
    }

    else
    {
      v72 = 0;
    }

    v73 = v46;
    v74 = v118 + 16;
    v75 = v116;
    v76 = v112;
    (*(v118 + 16))(v116, v28, v112);
    v77 = (*(v74 + 64) + 48) & ~*(v74 + 64);
    v78 = swift_allocObject();
    *(v78 + 2) = v111;
    *(v78 + 3) = v70;
    *(v78 + 4) = v44;
    *(v78 + 5) = v73;
    v113(&v78[v77], v75, v76);
    v127 = sub_1BD4B515C;
    v128 = v78;
    aBlock = MEMORY[0x1E69E9820];
    v124 = 1107296256;
    v125 = sub_1BD3F08C0;
    v126 = &block_descriptor_104;
    v79 = _Block_copy(&aBlock);
    sub_1BE048C84();
    sub_1BE048C84();

    v80 = v106;
    v81 = v107;
    [v106 insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier:v71 memo:v72 counterpartAppearanceData:v107 completion:v79];
    _Block_release(v79);

    v33 = v108;
    v43 = v70;
    v49 = v81;
    v69 = v117;
  }

  v82 = [v69 account];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v83 = result;

    v84 = v112;
    if (!v82 || (v85 = [v82 associatedPassUniqueID]) == 0)
    {
      v85 = 0;
    }

    v86 = [v83 passWithUniqueID_];

    v87 = [v86 secureElementPass];
    v88 = [v87 devicePrimaryPaymentApplication];

    v89 = v118;
    if (v88)
    {
    }

    else if (v82)
    {
      sub_1BE04D094();
      v90 = sub_1BE04D204();
      v91 = sub_1BE052C54();
      v92 = os_log_type_enabled(v90, v91);
      v107 = v82;
      if (v92)
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_1BD026000, v90, v91, "NearbyPeerPayment: TransferMonitor: ghost pass present, attempt to prompt user to set up cash", v93, 2u);
        v94 = v93;
        v82 = v107;
        MEMORY[0x1BFB45F20](v94, -1, -1);
      }

      v105(v114, v119);
      if (v117)
      {
        v95 = *(v89 + 16);
        v96 = v116;
        v97 = v84;
        v98 = v117;
        v120 = v43;
        v99 = v97;
        v95(v116, v28);
        v100 = (*(v89 + 80) + 40) & ~*(v89 + 80);
        v101 = swift_allocObject();
        v102 = v111;
        *(v101 + 2) = v98;
        *(v101 + 3) = v102;
        *(v101 + 4) = v120;
        v113(&v101[v100], v96, v99);
        v127 = sub_1BD4B50E4;
        v128 = v101;
        aBlock = MEMORY[0x1E69E9820];
        v124 = 1107296256;
        v125 = sub_1BD4B1970;
        v126 = &block_descriptor_98_0;
        v103 = _Block_copy(&aBlock);
        v104 = v98;

        [v104 registrationStatusWithCompletion_];

        _Block_release(v103);
        (*(v89 + 8))(v28, v99);
      }

      else
      {
        (*(v89 + 8))(v28, v84);
      }

      return swift_storeEnumTagMultiPayload();
    }

    (*(v89 + 8))(v28, v84);
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall NearbyPeerPaymentTransferMonitor.accept()()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v115 = *(v2 - 8);
  v116 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v114 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1BE051F54();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v5);
  v99 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1BE051FA4();
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v7);
  v97 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v105 = v95 - v11;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47740);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v12);
  v96 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95[1] = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v117 = v95 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD47748);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v17);
  v109 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v108 = v95 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v112 = v95 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = v95 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47758);
  v113 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v95 - v32;
  v34 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v104 = v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = v95 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = v95 - v43;
  v45 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState;
  swift_beginAccess();
  v103 = v45;
  sub_1BD26681C(v1 + v45, v44);
  sub_1BD266F10(v44, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      __swift_destroy_boxed_opaque_existential_0(v40);
    }

    v48 = v114;
    sub_1BE04D094();
    v49 = sub_1BE04D204();
    v50 = sub_1BE052C34();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1BD026000, v49, v50, "NearbyPeerPayment: TransferMonitor: receiver is not in a state that can accept", v51, 2u);
      MEMORY[0x1BFB45F20](v51, -1, -1);
    }

    (v115)[1](v48, v116);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v47 = v117;
      sub_1BD32E45C(v40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);

      sub_1BD0DE53C(v40, &unk_1EBD3F690);
      v47 = v117;
    }

    v52 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_permissionRequest;
    swift_beginAccess();
    if (!(*(v26 + 48))(v1 + v52, 1, v25))
    {
      v53 = v1;
      (*(v26 + 16))(v29, v1 + v52, v25);
      sub_1BE04E094();
      (*(v26 + 8))(v29, v25);
      v54 = v113;
      if ((*(v113 + 88))(v33, v30) == *MEMORY[0x1E69CDDD8])
      {
        (*(v54 + 96))(v33, v30);

        v55 = *(v33 + 4);
        v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47760) + 80);
        v57 = sub_1BE04E084();
        (*(*(v57 - 8) + 8))(&v33[v56], v57);
        if (*(v55 + 16))
        {
          v58 = v110;
          v59 = *(v110 + 16);
          v60 = v108;
          v61 = v111;
          v59(v108, v55 + ((*(v110 + 80) + 32) & ~*(v110 + 80)), v111);

          v62 = v112;
          (*(v58 + 32))(v112, v60, v61);
          v63 = v109;
          v59(v109, v62, v61);
          if ((*(v58 + 88))(v63, v61) == *MEMORY[0x1E69CDDA8])
          {
            (*(v58 + 96))(v63, v61);
            v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD47768) + 48);
            v65 = v106;
            v66 = v107;
            v116 = *(v106 + 32);
            v116(v47, v63, v107);
            v67 = sub_1BE04AFE4();
            (*(*(v67 - 8) + 8))(&v63[v64], v67);
            v68 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_appearanceData;
            swift_beginAccess();
            v69 = *(v53 + v68);
            if (v69)
            {
              v70 = v66;
              v71 = v104;
              sub_1BD26681C(v53 + v103, v104);
              v72 = v69;
              v73 = NearbyPeerPaymentReceiverState.nonce.getter();
              v75 = v74;
              sub_1BD32E45C(v71);
              if (v75)
              {
                v76 = sub_1BE0528D4();
                (*(*(v76 - 8) + 56))(v105, 1, 1, v76);
                v77 = v96;
                (*(v65 + 16))(v96, v47, v70);
                sub_1BE0528A4();
                v114 = v73;
                v78 = v72;
                v115 = v78;
                sub_1BE048964();
                sub_1BE048C84();
                v79 = sub_1BE052894();
                v80 = (*(v65 + 80) + 64) & ~*(v65 + 80);
                v81 = v65;
                v82 = swift_allocObject();
                v83 = MEMORY[0x1E69E85E0];
                *(v82 + 2) = v79;
                *(v82 + 3) = v83;
                *(v82 + 4) = v53;
                *(v82 + 5) = v78;
                v84 = v114;
                *(v82 + 6) = v114;
                *(v82 + 7) = v75;
                v85 = v77;
                v86 = v70;
                v116(&v82[v80], v85, v70);
                sub_1BD122C00(0, 0, v105, &unk_1BE0DA518, v82);

                sub_1BD0E5E8C(0, &qword_1EBD35E90);
                v87 = sub_1BE052D54();
                v88 = swift_allocObject();
                swift_weakInit();
                v89 = swift_allocObject();
                v89[2] = v88;
                v89[3] = v84;
                v89[4] = v75;
                aBlock[4] = sub_1BD4B3D00;
                aBlock[5] = v89;
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_1BD126964;
                aBlock[3] = &block_descriptor_14_0;
                v90 = _Block_copy(aBlock);

                v91 = v97;
                sub_1BE051F74();
                aBlock[0] = MEMORY[0x1E69E7CC0];
                sub_1BD4B52D8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
                sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
                v92 = v99;
                v93 = v102;
                sub_1BE053664();
                MEMORY[0x1BFB3FDF0](0, v91, v92, v90);
                _Block_release(v90);

                (*(v101 + 8))(v92, v93);
                (*(v98 + 8))(v91, v100);
                (*(v81 + 8))(v117, v86);
              }

              else
              {

                (*(v65 + 8))(v47, v70);
              }

              (*(v110 + 8))(v112, v111);
            }

            else
            {
              (*(v65 + 8))(v47, v66);
              (*(v58 + 8))(v112, v61);
            }
          }

          else
          {
            v94 = *(v58 + 8);
            v94(v62, v61);
            v94(v63, v61);
          }
        }

        else
        {
        }
      }

      else
      {
        (*(v54 + 8))(v33, v30);
      }
    }
  }
}

uint64_t sub_1BD4AEC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[29] = a4;
  v9 = sub_1BE051F54();
  v8[34] = v9;
  v8[35] = *(v9 - 8);
  v8[36] = swift_task_alloc();
  v10 = sub_1BE051FA4();
  v8[37] = v10;
  v8[38] = *(v10 - 8);
  v8[39] = swift_task_alloc();
  v11 = sub_1BE04C4C4();
  v8[40] = v11;
  v8[41] = *(v11 - 8);
  v8[42] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47740);
  v8[43] = v12;
  v8[44] = *(v12 - 8);
  v8[45] = swift_task_alloc();
  v13 = sub_1BE04DE14();
  v8[46] = v13;
  v8[47] = *(v13 - 8);
  v8[48] = swift_task_alloc();
  v14 = sub_1BE04D214();
  v8[49] = v14;
  v8[50] = *(v14 - 8);
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  sub_1BE0528A4();
  v8[53] = sub_1BE052894();
  v16 = sub_1BE052844();
  v8[54] = v16;
  v8[55] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1BD4AEF2C, v16, v15);
}

uint64_t sub_1BD4AEF2C()
{
  v1 = v0[29];
  v2 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_canAutoAccept;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    sub_1BE04D094();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: TransferMonitor: user auto accepted transfer", v5, 2u);
      MEMORY[0x1BFB45F20](v5, -1, -1);
    }

    v6 = v0[52];
    v7 = v0[49];
    v8 = v0[50];

    (*(v8 + 8))(v6, v7);
  }

  v9 = v0[29];
  v10 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiverCoordinator;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v0[56] = v11;
  if (v11)
  {
    v21 = (*MEMORY[0x1E69B8280] + MEMORY[0x1E69B8280]);
    v11;
    v12 = swift_task_alloc();
    v0[57] = v12;
    *v12 = v0;
    v12[1] = sub_1BD4AF1A8;
    v13 = v0[31];
    v14 = v0[32];
    v15 = v0[30];

    return v21(v15, v13, v14);
  }

  else
  {
    v0[61] = 0;
    v0[62] = 0xF000000000000000;
    v17 = v0[47];
    *v0[48] = xmmword_1BE0B8E60;
    (*(v17 + 104))();
    sub_1BD030394(0, 0xF000000000000000);
    v18 = swift_task_alloc();
    v0[63] = v18;
    *v18 = v0;
    v18[1] = sub_1BD4AF3C0;
    v19 = v0[48];
    v20 = v0[43];

    return MEMORY[0x1EEE38150](v19, v20);
  }
}

uint64_t sub_1BD4AF1A8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 464) = v2;

  if (v2)
  {
    v7 = *(v6 + 432);
    v8 = *(v6 + 440);
    v9 = sub_1BD4AF624;
  }

  else
  {

    *(v6 + 472) = a2;
    *(v6 + 480) = a1;
    v7 = *(v6 + 432);
    v8 = *(v6 + 440);
    v9 = sub_1BD4AF2E4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BD4AF2E4()
{
  v1 = v0[59];
  v2 = v0[60];
  v0[61] = v2;
  v0[62] = v1;
  v4 = v0[47];
  v3 = v0[48];
  *v3 = v2;
  v3[1] = v1;
  (*(v4 + 104))();
  sub_1BD030394(v2, v1);
  v5 = swift_task_alloc();
  v0[63] = v5;
  *v5 = v0;
  v5[1] = sub_1BD4AF3C0;
  v6 = v0[48];
  v7 = v0[43];

  return MEMORY[0x1EEE38150](v6, v7);
}

uint64_t sub_1BD4AF3C0()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 376);
  v5 = *(*v1 + 368);
  *(*v1 + 512) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 440);
  v7 = *(v2 + 432);
  if (v0)
  {
    v8 = sub_1BD4AFC40;
  }

  else
  {
    v8 = sub_1BD4AF558;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BD4AF558()
{
  v1 = v0[61];
  v2 = v0[62];

  sub_1BD030220(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD4AF624()
{
  v50 = v0;
  v1 = v0[56];

  v2 = v0[58];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[43];
  v6 = v0[33];
  sub_1BE04D094();
  (*(v3 + 16))(v4, v6, v5);
  v7 = v2;
  v8 = sub_1BE04D204();
  v9 = sub_1BE052C34();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[50];
  v11 = v0[51];
  v13 = v0[49];
  v15 = v0[44];
  v14 = v0[45];
  v16 = v0[43];
  if (v10)
  {
    v41 = v9;
    v17 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = v43;
    *v17 = 136315394;
    v45 = v11;
    v47 = v13;
    v18 = sub_1BE04E014();
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_1BD123690(v18, v20, &v49);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    v22 = v2;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v40 = v23;
    _os_log_impl(&dword_1BD026000, v8, v41, "NearbyPeerPayment: TransferMonitor: accept %s failed with error: %@", v17, 0x16u);
    sub_1BD0DE53C(v40, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1BFB45F20](v43, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);

    (*(v12 + 8))(v45, v47);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v0[27] = v2;
  v48 = v2;
  v24 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6D0);
  if (swift_dynamicCast())
  {
    v26 = v0[40];
    v25 = v0[41];
    v27 = v0[29];
    sub_1BD043990((v0 + 13), (v0 + 8));
    v28 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_senderMetadata;
    swift_beginAccess();
    if (!(*(v25 + 48))(v27 + v28, 1, v26))
    {
      v30 = v0[41];
      v29 = v0[42];
      v31 = v0[40];
      (*(v30 + 16))(v29, v27 + v28, v31);
      sub_1BE04C454();
      (*(v30 + 8))(v29, v31);
    }

    sub_1BE04B8B4();

    __swift_destroy_boxed_opaque_existential_0((v0 + 8));
  }

  else
  {
    v0[17] = 0;
    *(v0 + 15) = 0u;
    *(v0 + 13) = 0u;
    sub_1BD0DE53C((v0 + 13), &unk_1EBD47840);
  }

  v32 = v0[39];
  v44 = v0[38];
  v46 = v0[37];
  v33 = v0[34];
  v42 = v0[35];
  v39 = v0[36];
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v38 = sub_1BE052D54();
  v34 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_1BD4B46B4;
  v0[7] = v34;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BD126964;
  v0[5] = &block_descriptor_49_0;
  v35 = _Block_copy(v0 + 2);
  sub_1BE048964();
  sub_1BE051F74();
  v0[28] = MEMORY[0x1E69E7CC0];
  sub_1BD4B52D8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v32, v39, v35);
  _Block_release(v35);

  (*(v42 + 8))(v39, v33);
  (*(v44 + 8))(v32, v46);

  NearbyPeerPaymentTransferMonitor.decline(withAction:)(0, 0);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1BD4AFC40()
{
  v51 = v0;
  v1 = v0[61];
  v2 = v0[62];

  sub_1BD030220(v1, v2);
  v3 = v0[64];
  v4 = v0[44];
  v5 = v0[45];
  v6 = v0[43];
  v7 = v0[33];
  sub_1BE04D094();
  (*(v4 + 16))(v5, v7, v6);
  v8 = v3;
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C34();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[50];
  v12 = v0[51];
  v14 = v0[49];
  v16 = v0[44];
  v15 = v0[45];
  v17 = v0[43];
  if (v11)
  {
    v42 = v10;
    v18 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v18 = 136315394;
    v46 = v12;
    v48 = v14;
    v19 = sub_1BE04E014();
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    v22 = sub_1BD123690(v19, v21, &v50);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2112;
    v23 = v3;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v24;
    *v41 = v24;
    _os_log_impl(&dword_1BD026000, v9, v42, "NearbyPeerPayment: TransferMonitor: accept %s failed with error: %@", v18, 0x16u);
    sub_1BD0DE53C(v41, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1BFB45F20](v44, -1, -1);
    MEMORY[0x1BFB45F20](v18, -1, -1);

    (*(v13 + 8))(v46, v48);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v0[27] = v3;
  v49 = v3;
  v25 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6D0);
  if (swift_dynamicCast())
  {
    v27 = v0[40];
    v26 = v0[41];
    v28 = v0[29];
    sub_1BD043990((v0 + 13), (v0 + 8));
    v29 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_senderMetadata;
    swift_beginAccess();
    if (!(*(v26 + 48))(v28 + v29, 1, v27))
    {
      v31 = v0[41];
      v30 = v0[42];
      v32 = v0[40];
      (*(v31 + 16))(v30, v28 + v29, v32);
      sub_1BE04C454();
      (*(v31 + 8))(v30, v32);
    }

    sub_1BE04B8B4();

    __swift_destroy_boxed_opaque_existential_0((v0 + 8));
  }

  else
  {
    v0[17] = 0;
    *(v0 + 15) = 0u;
    *(v0 + 13) = 0u;
    sub_1BD0DE53C((v0 + 13), &unk_1EBD47840);
  }

  v33 = v0[39];
  v45 = v0[38];
  v47 = v0[37];
  v34 = v0[34];
  v43 = v0[35];
  v40 = v0[36];
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v39 = sub_1BE052D54();
  v35 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_1BD4B46B4;
  v0[7] = v35;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BD126964;
  v0[5] = &block_descriptor_49_0;
  v36 = _Block_copy(v0 + 2);
  sub_1BE048964();
  sub_1BE051F74();
  v0[28] = MEMORY[0x1E69E7CC0];
  sub_1BD4B52D8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v33, v40, v36);
  _Block_release(v36);

  (*(v43 + 8))(v40, v34);
  (*(v45 + 8))(v33, v47);

  NearbyPeerPaymentTransferMonitor.decline(withAction:)(0, 0);

  v37 = v0[1];

  return v37();
}

uint64_t sub_1BD4B0264(uint64_t a1, unsigned int *a2)
{
  v3 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v16 - v9);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B7C4();
    v10[3] = v13;
    v10[4] = sub_1BD4B52D8(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *a2, v13);
    swift_storeEnumTagMultiPayload();
    v15 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState;
    swift_beginAccess();
    sub_1BD26681C(v12 + v15, v6);
    swift_beginAccess();
    sub_1BD32E4B8(v10, v12 + v15);
    swift_endAccess();
    sub_1BD4A1550(v6);

    sub_1BD32E45C(v6);
    return sub_1BD32E45C(v10);
  }

  return result;
}

uint64_t NearbyPeerPaymentTransferMonitor.decline(withAction:)(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v56 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v51 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47758);
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v47 - v11;
  v55 = sub_1BE04E084();
  v48 = *(v55 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v55, v14);
  v47 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v54 = &v47 - v17;
  v18 = sub_1BE04D214();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C54();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1BD026000, v23, v24, "NearbyPeerPayment: user declined transfer", v25, 2u);
    MEMORY[0x1BFB45F20](v25, -1, -1);
  }

  (*(v19 + 8))(v22, v18);
  v26 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_permissionRequest;
  v27 = v57;
  swift_beginAccess();
  result = (*(v6 + 48))(&v27[v26], 1, v5);
  if (!result)
  {
    v29 = &v27[v26];
    v30 = v51;
    (*(v6 + 16))(v51, v29, v5);
    sub_1BE04E094();
    (*(v6 + 8))(v30, v5);
    v32 = v52;
    v31 = v53;
    if ((*(v52 + 88))(v12, v53) == *MEMORY[0x1E69CDDD8])
    {
      (*(v32 + 96))(v12, v31);

      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47760) + 80);
      v34 = v48;
      v57 = *(v48 + 32);
      v35 = v54;
      v36 = v55;
      (v57)(v54, &v12[v33], v55);
      v37 = sub_1BE0528D4();
      (*(*(v37 - 8) + 56))(v56, 1, 1, v37);
      v38 = v47;
      (*(v34 + 16))(v47, v35, v36);
      sub_1BE0528A4();
      v40 = v49;
      v39 = v50;
      sub_1BD0D44B8(v49);
      v41 = sub_1BE052894();
      v42 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v43 = swift_allocObject();
      v44 = MEMORY[0x1E69E85E0];
      *(v43 + 16) = v41;
      *(v43 + 24) = v44;
      v45 = v55;
      (v57)(v43 + v42, v38, v55);
      v46 = (v43 + ((v13 + v42 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v46 = v40;
      v46[1] = v39;
      sub_1BD122C00(0, 0, v56, &unk_1BE0DA528, v43);

      return (*(v34 + 8))(v54, v45);
    }

    else
    {
      return (*(v32 + 8))(v12, v31);
    }
  }

  return result;
}

uint64_t sub_1BD4B09F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v16 - v11);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    *v12 = a2;
    v12[1] = a3;
    swift_storeEnumTagMultiPayload();
    v15 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState;
    swift_beginAccess();
    sub_1BD26681C(v14 + v15, v8);
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BD32E4B8(v12, v14 + v15);
    swift_endAccess();
    sub_1BD4A1550(v8);

    sub_1BD32E45C(v8);
    return sub_1BD32E45C(v12);
  }

  return result;
}

uint64_t sub_1BD4B0B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1BE04E084();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_1BE04D214();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = sub_1BE0528A4();
  v6[12] = sub_1BE052894();
  v9 = swift_task_alloc();
  v6[13] = v9;
  *v9 = v6;
  v9[1] = sub_1BD4B0CC0;

  return MEMORY[0x1EEE38178]();
}

uint64_t sub_1BD4B0CC0()
{
  v2 = *v1;
  v2[14] = v0;

  v4 = sub_1BE052844();
  v2[15] = v4;
  v2[16] = v3;
  if (v0)
  {
    v5 = sub_1BD4B105C;
  }

  else
  {
    v5 = sub_1BD4B0E20;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD4B0E20()
{
  if (*(v0 + 24))
  {
    sub_1BE048964();

    return MEMORY[0x1EEE6DFA0](sub_1BD4B0EE0, 0, 0);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_1BD4B0EE0()
{
  *(v0 + 136) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD4B0F6C, v2, v1);
}

uint64_t sub_1BD4B0F6C()
{
  v1 = v0[3];

  v1(v2);
  v3 = v0[15];
  v4 = v0[16];

  return MEMORY[0x1EEE6DFA0](sub_1BD4B0FDC, v3, v4);
}

uint64_t sub_1BD4B0FDC()
{
  sub_1BD0D4744(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD4B105C()
{
  v33 = v0;
  v1 = v0[14];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = v0[2];

  sub_1BE04D094();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C34();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[7];
  v14 = v0[8];
  v15 = v0[5];
  v16 = v0[6];
  if (v9)
  {
    v27 = v0[14];
    v17 = swift_slowAlloc();
    v28 = v8;
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v17 = 136315394;
    v30 = v14;
    v31 = v11;
    v19 = sub_1BE04E064();
    v21 = v20;
    (*(v16 + 8))(v13, v15);
    v22 = sub_1BD123690(v19, v21, &v32);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v27;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&dword_1BD026000, v7, v28, "NearbyPeerPayment: decline action %s failed with error %@", v17, 0x16u);
    sub_1BD0DE53C(v18, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1BFB45F20](v29, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);

    (*(v12 + 8))(v31, v30);
  }

  else
  {

    (*(v16 + 8))(v13, v15);
    (*(v12 + 8))(v11, v14);
  }

  v25 = v0[1];

  return v25();
}

void sub_1BD4B12EC(int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v37 = a4;
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  sub_1BE048C84();
  sub_1BE048C84();
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C54();

  v18 = os_log_type_enabled(v16, v17);
  v38 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v35 = a1;
    v20 = a2;
    v21 = v19;
    v22 = swift_slowAlloc();
    v36 = v11;
    v23 = v22;
    v39 = v22;
    *v21 = 136315650;
    *(v21 + 4) = sub_1BD123690(v20, a3, &v39);
    *(v21 + 12) = 2080;
    if (a5)
    {
      v24 = v37;
    }

    else
    {
      v24 = 0;
    }

    v37 = a6;
    if (a5)
    {
      v25 = a5;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    sub_1BE048C84();
    v26 = sub_1BD123690(v24, v25, &v39);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    if (v35)
    {
      v27 = 5457241;
    }

    else
    {
      v27 = 20302;
    }

    if (v35)
    {
      v28 = 0xE300000000000000;
    }

    else
    {
      v28 = 0xE200000000000000;
    }

    v29 = sub_1BD123690(v27, v28, &v39);

    *(v21 + 24) = v29;
    _os_log_impl(&dword_1BD026000, v16, v17, "NearbyPeerPayment: TransferMonitor: finished updating received transaction %s with memo: %s, success: %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v23, -1, -1);
    MEMORY[0x1BFB45F20](v21, -1, -1);

    (*(v12 + 8))(v15, v36);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v30 = objc_opt_self();
  if ([v30 useMock])
  {
    v31 = sub_1BE052404();
    v32 = sub_1BE04C3F4();
    sub_1BE04C3E4();
    v33 = sub_1BE052404();

    [v30 processNearbyPeerPaymentTransactionSuccessWithIdentifier:v31 peerPaymentType:2 amount:v32 counterpartDisplayName:v33];
  }
}

void sub_1BD4B15FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 1)
  {
    v15[14] = v4;
    v15[15] = v5;
    if (a2)
    {
      v9 = sub_1BE052404();
      sub_1BE04C474();
      v10 = sub_1BE053344();
      sub_1BE04C494();
      v11 = sub_1BE052404();

      sub_1BE04C3E4();
      v12 = sub_1BE052404();

      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      *(v13 + 24) = a4;
      v15[4] = sub_1BD4B51D4;
      v15[5] = v13;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1BD3F08C0;
      v15[3] = &block_descriptor_110_0;
      v14 = _Block_copy(v15);
      sub_1BE048C84();

      [a2 insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier:v9 amount:v10 currency:v11 senderName:v12 completion:v14];
      _Block_release(v14);
    }
  }
}

uint64_t sub_1BD4B1770(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  sub_1BE048C84();
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1BD123690(a2, a3, &v20);
    *(v13 + 12) = 2080;
    if (a1)
    {
      v15 = 5457241;
    }

    else
    {
      v15 = 20302;
    }

    if (a1)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = 0xE200000000000000;
    }

    v17 = sub_1BD123690(v15, v16, &v20);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_1BD026000, v11, v12, "NearbyPeerPayment: TransferMonitor: finished inserting setup notification %s, success: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v14, -1, -1);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1BD4B1970(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1BE048964();
  v3(a2);
}

uint64_t sub_1BD4B19C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_1BE04D094();
    sub_1BD26681C(a2, v6);
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C54();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v25 = v7;
      v17 = v16;
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      v19 = NearbyPeerPaymentReceiverState.description.getter();
      v21 = v20;
      sub_1BD32E45C(v6);
      v22 = sub_1BD123690(v19, v21, &v26);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1BD026000, v14, v15, "NearbyPeerPayment: firing timer for state: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1BFB45F20](v18, -1, -1);
      MEMORY[0x1BFB45F20](v17, -1, -1);

      (*(v8 + 8))(v11, v25);
    }

    else
    {

      sub_1BD32E45C(v6);
      (*(v8 + 8))(v11, v7);
    }

    v23 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_timeoutTimer;
    if (*(v13 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_timeoutTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1BE052E04();
      swift_unknownObjectRelease();
    }

    *(v13 + v23) = 0;
    swift_unknownObjectRelease();
    sub_1BD4B1C70();
  }

  return result;
}

uint64_t sub_1BD4B1C70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v33 - v3;
  v5 = sub_1BE04B824();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BE04C4C4();
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04B844();
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState;
  swift_beginAccess();
  sub_1BD26681C(v0 + v20, v19);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1BD32E45C(v19);
  }

  v33 = v11;
  v34 = v8;
  v35 = v5;
  v36 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);

  v22 = v37;
  (*(v37 + 104))(v15, *MEMORY[0x1E69B7F00], v12);
  v41[3] = v12;
  v41[4] = MEMORY[0x1E69B7F20];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(v22 + 16))(boxed_opaque_existential_1, v15, v12);
  v24 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_senderMetadata;
  swift_beginAccess();
  v25 = v38;
  if (!(*(v40 + 48))(v0 + v24, 1, v38))
  {
    v26 = v40;
    v27 = v0 + v24;
    v28 = v33;
    (*(v40 + 16))(v33, v27, v25);
    sub_1BE04C454();
    (*(v26 + 8))(v28, v25);
  }

  sub_1BE04B8B4();

  __swift_destroy_boxed_opaque_existential_0(v41);
  v29 = v36;
  sub_1BE04B834();
  v30 = v39;
  v31 = v35;
  if ((*(v39 + 48))(v29, 1, v35) == 1)
  {
    (*(v22 + 8))(v15, v12);
    sub_1BD0DE53C(v29, &unk_1EBD3F6C0);
  }

  else
  {
    v32 = v34;
    (*(v30 + 32))(v34, v29, v31);
    _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
    (*(v30 + 8))(v32, v31);
    (*(v22 + 8))(v15, v12);
  }

  return sub_1BD0DE53C(v19, &unk_1EBD3F690);
}

uint64_t sub_1BD4B2124(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  sub_1BD26681C(a1, v5);
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    v15 = NearbyPeerPaymentReceiverState.description.getter();
    v17 = v16;
    sub_1BD32E45C(v5);
    v18 = sub_1BD123690(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1BD026000, v11, v12, "NearbyPeerPayment: cancelling timer for state: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1BFB45F20](v14, -1, -1);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  else
  {

    sub_1BD32E45C(v5);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t NearbyPeerPaymentTransferMonitor.deinit()
{
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_currentTransferID, &qword_1EBD40A80);

  sub_1BD32E45C(v0 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_senderMetadata, &unk_1EBD476F0);

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_permissionRequest, &unk_1EBD3F690);
  v1 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_creationDate;
  v2 = sub_1BE04AF64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NearbyPeerPaymentTransferMonitor.__deallocating_deinit()
{
  NearbyPeerPaymentTransferMonitor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BD4B25A0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  return sub_1BD0DE19C(v4 + v5, a2, &unk_1EBD476F0);
}

uint64_t sub_1BD4B2608()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_canAutoAccept;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1BD4B2650()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_requiresIDVToCompleteTransfer;
  swift_beginAccess();
  return *(v1 + v2);
}

void *sub_1BD4B2698()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_appearanceData;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1BD4B2758()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_isDebug;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1BD4B280C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_currentLockState) != (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_currentLockState) = result & 1;
  }

  return result;
}

uint64_t sub_1BD4B282C(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_receiveState;
  swift_beginAccess();
  sub_1BD26681C(v1 + v8, v7);
  LOBYTE(a1) = _s9PassKitUI30NearbyPeerPaymentReceiverStateO2eeoiySbAC_ACtFZ_0(a1, v7);
  result = sub_1BD32E45C(v7);
  if ((a1 & 1) == 0)
  {
    v10 = (v1 + OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_delegate);
    result = swift_beginAccess();
    if (*v10)
    {
      v11 = v10[1];
      ObjectType = swift_getObjectType();
      v15[3] = v3;
      v15[4] = &off_1F3BA9618;
      v15[0] = v1;
      sub_1BD26681C(v1 + v8, v7);
      v13 = *(v11 + 8);
      swift_unknownObjectRetain();
      sub_1BE048964();
      v13(v15, v7, ObjectType, v11);
      swift_unknownObjectRelease();
      sub_1BD32E45C(v7);
      return __swift_destroy_boxed_opaque_existential_0(v15);
    }
  }

  return result;
}

void sub_1BD4B29C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v61 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v58 - v10;
  v12 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v58 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v58 - v22);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v58 - v26);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v58 - v30;
  v32 = OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_receiveState;
  swift_beginAccess();
  sub_1BD26681C(v0 + v32, v31);
  sub_1BD26681C(v31, v27);
  sub_1BD26681C(v0 + v32, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1BD32E45C(v27);
        v34 = v23[1];
        *v27 = *v23;
        v27[1] = v34;
      }

      else
      {
        sub_1BD32E45C(v27);
        sub_1BD32E45C(v23);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v49 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);

      v50 = NearbyPeerPaymentReceiverState.nonce.getter();
      if (v51)
      {
        v52 = v50;
        v53 = v51;
        sub_1BD32E45C(v27);
        *v27 = v52;
        v27[1] = v53;
        swift_storeEnumTagMultiPayload();
      }

      sub_1BD0DE53C(v23, &unk_1EBD3F690);
      v0 = v49;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1BD32E45C(v27);
    swift_storeEnumTagMultiPayload();
    v54 = sub_1BE04C4C4();
    (*(*(v54 - 8) + 56))(v7, 1, 1, v54);
    v55 = OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_senderMetadata;
    swift_beginAccess();
    sub_1BD2C7C4C(v7, v0 + v55, &unk_1EBD476F0);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v23);
LABEL_17:
    sub_1BD26681C(v27, v19);
    sub_1BD26681C(v0 + v32, v15);
    swift_beginAccess();
    sub_1BD32E4B8(v19, v0 + v32);
    swift_endAccess();
    sub_1BD4B282C(v15);
    sub_1BD32E45C(v15);
    sub_1BD32E45C(v19);
    sub_1BD32E45C(v27);
    sub_1BD32E45C(v31);
    return;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_1BD32E45C(v27);
    swift_storeEnumTagMultiPayload();
    v56 = sub_1BE04C4C4();
    (*(*(v56 - 8) + 56))(v7, 1, 1, v56);
    v57 = OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_senderMetadata;
    swift_beginAccess();
    sub_1BD2C7C4C(v7, v0 + v57, &unk_1EBD476F0);
    swift_endAccess();
    goto LABEL_17;
  }

  v60 = v0;
  v35 = objc_allocWithZone(MEMORY[0x1E69B8FB8]);
  v36 = sub_1BE052404();
  v59 = [v35 initWithDisplayName:v36 imageData:0];

  sub_1BD0E5E8C(0, &qword_1EBD38840);
  v37 = sub_1BE053054();
  v38 = sub_1BE052404();
  v39 = PKCurrencyAmountMake();

  if (v39)
  {
    v40 = sub_1BE04AF64();
    (*(*(v40 - 8) + 56))(v61, 1, 1, v40);
    v41 = v59;
    sub_1BE04C464();
    v42 = OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_senderMetadata;
    v43 = v60;
    swift_beginAccess();
    sub_1BD2C7C4C(v11, v43 + v42, &unk_1EBD476F0);
    swift_endAccess();
    v0 = v43;
    v44 = NearbyPeerPaymentReceiverState.nonce.getter();
    v46 = v45;

    if (v46)
    {
      sub_1BD32E45C(v27);
      v47 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680) + 48));
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0);
      (*(*(v48 - 8) + 56))(v27, 1, 1, v48);
      *v47 = v44;
      v47[1] = v46;
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1BD4B3078()
{
  sub_1BD32E45C(v0 + OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_receiveState);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_senderMetadata, &unk_1EBD476F0);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1BD4B3184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (*v5 + *a5);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1BD4B3254@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  return sub_1BD26681C(v4 + v5, a2);
}

void *sub_1BD4B32B8()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC9PassKitUI27MockReceiverTransferMonitor_appearanceData;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1BD4B3314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *a4;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = a1;
}

uint64_t _s9PassKitUI30NearbyPeerPaymentReceiverStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v4);
  v62 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47850);
  MEMORY[0x1EEE9AC00](v6, v7);
  v64 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F690);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v67 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v66 = &v60 - v18;
  v19 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v60 - v25);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = (&v60 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47858);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v60 - v33;
  v36 = (&v60 + *(v35 + 56) - v33);
  sub_1BD26681C(a1, &v60 - v33);
  sub_1BD26681C(a2, v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1BD26681C(v34, v30);
        v38 = *v30;
        v39 = v30[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
LABEL_5:
          if (v38 == *v36 && v39 == v36[1])
          {
            v41 = 1;
          }

          else
          {
            v41 = sub_1BE053B84();
          }

          goto LABEL_37;
        }
      }

      else
      {
        sub_1BD26681C(v34, v26);
        v38 = *v26;
        v39 = v26[1];
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_20;
    }

    sub_1BD26681C(v34, v22);
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680) + 48);
    v44 = *&v22[v42];
    v43 = *&v22[v42 + 8];
    if (swift_getEnumCaseMultiPayload())
    {

      sub_1BD0DE53C(v22, &unk_1EBD3F690);
      goto LABEL_20;
    }

    v45 = *(v36 + v42 + 8);
    v60 = *(v36 + v42);
    v61 = v45;
    v46 = v66;
    sub_1BD0DE204(v22, v66, &unk_1EBD3F690);
    v47 = v36;
    v48 = v67;
    sub_1BD0DE204(v47, v67, &unk_1EBD3F690);
    v49 = *(v6 + 48);
    v50 = v46;
    v51 = v64;
    sub_1BD0DE19C(v50, v64, &unk_1EBD3F690);
    sub_1BD0DE19C(v48, v51 + v49, &unk_1EBD3F690);
    v52 = v63;
    v53 = *(v63 + 48);
    v54 = v65;
    if (v53(v51, 1, v65) == 1)
    {
      if (v53(v51 + v49, 1, v54) == 1)
      {
        sub_1BD0DE53C(v51, &unk_1EBD3F690);
        v55 = v61;
LABEL_32:
        if (v44 == v60 && v43 == v55)
        {

          v41 = 1;
        }

        else
        {
          v41 = sub_1BE053B84();
        }

        goto LABEL_36;
      }
    }

    else
    {
      sub_1BD0DE19C(v51, v12, &unk_1EBD3F690);
      if (v53(v51 + v49, 1, v54) != 1)
      {
        v56 = v62;
        (*(v52 + 32))(v62, v51 + v49, v54);
        sub_1BD0DE4F4(&qword_1EBD47860, &unk_1EBD43AE0);
        v57 = sub_1BE052334();
        v58 = *(v52 + 8);
        v58(v56, v54);
        v58(v12, v54);
        sub_1BD0DE53C(v51, &unk_1EBD3F690);
        v55 = v61;
        if (v57)
        {
          goto LABEL_32;
        }

LABEL_30:
        v41 = 0;
LABEL_36:
        sub_1BD0DE53C(v67, &unk_1EBD3F690);
        sub_1BD0DE53C(v66, &unk_1EBD3F690);
LABEL_37:
        sub_1BD32E45C(v34);
        return v41 & 1;
      }

      (*(v52 + 8))(v12, v54);
    }

    sub_1BD0DE53C(v51, &qword_1EBD47850);
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_20:
    sub_1BD0DE53C(v34, &qword_1EBD47858);
    v41 = 0;
    return v41 & 1;
  }

  if (EnumCaseMultiPayload == 4)
  {
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_20;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_20;
  }

  sub_1BD32E45C(v34);
  v41 = 1;
  return v41 & 1;
}

uint64_t sub_1BD4B3B58()
{
  v1 = *(sub_1BE04E0B4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_1BD4AB524(v2, v3, v4);
}

uint64_t sub_1BD4B3BDC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47740) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1BD126968;

  return sub_1BD4AEC4C(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1BD4B3D0C(uint64_t a1)
{
  v4 = *(sub_1BE04E084() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD4B0B50(a1, v6, v7, v1 + v5, v9, v10);
}

void sub_1BD4B3E3C()
{
  sub_1BD4B3EC4();
  if (v0 <= 0x3F)
  {
    sub_1BD4B3F3C();
    if (v1 <= 0x3F)
    {
      sub_1BD4B3F6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BD4B3EC4()
{
  if (!qword_1EBD477B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3F690);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD477B0);
    }
  }
}

uint64_t sub_1BD4B3F3C()
{
  result = qword_1EBD477B8;
  if (!qword_1EBD477B8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EBD477B8);
  }

  return result;
}

void sub_1BD4B3F6C()
{
  if (!qword_1EBD477C0)
  {
    v0 = sub_1BD4B3FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD477C0);
    }
  }
}

unint64_t sub_1BD4B3FB4()
{
  result = qword_1EBD477C8;
  if (!qword_1EBD477C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBD477C8);
  }

  return result;
}

void sub_1BD4B4180()
{
  sub_1BD4B43A8(319, &qword_1EBD47800, MEMORY[0x1E69CDDE8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NearbyPeerPaymentReceiverState(319);
    if (v1 <= 0x3F)
    {
      sub_1BD4B43A8(319, &qword_1EBD47808, MEMORY[0x1E69B82C0]);
      if (v2 <= 0x3F)
      {
        sub_1BD4B43FC();
        if (v3 <= 0x3F)
        {
          sub_1BE04AF64();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1BD4B43A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD4B43FC()
{
  if (!qword_1EBD47810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD43AE0);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD47810);
    }
  }
}

void sub_1BD4B4488()
{
  type metadata accessor for NearbyPeerPaymentReceiverState(319);
  if (v0 <= 0x3F)
  {
    sub_1BD4B43A8(319, &qword_1EBD47808, MEMORY[0x1E69B82C0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1BD4B459C()
{
  result = qword_1EBD47838;
  if (!qword_1EBD47838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47838);
  }

  return result;
}

uint64_t sub_1BD4B45F0()
{
  v1 = *(type metadata accessor for NearbyPeerPaymentReceiverState(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1BD4B19C4(v2, v3);
}

uint64_t sub_1BD4B4654()
{
  v1 = *(type metadata accessor for NearbyPeerPaymentReceiverState(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD4B2124(v2);
}

void sub_1BD4B46D8(uint64_t a1)
{
  sub_1BE04E0B4();
  v3 = *(v1 + 16);

  sub_1BD4AB984(a1, v3);
}

uint64_t sub_1BD4B4750(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1BE04E0B4() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1BD126968;

  return sub_1BD2B9C64(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_1BD4B498C(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_1BE04E084();
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v52 = v5;
  v56 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v55 = &v44 - v8;
  v9 = sub_1BE04E0B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v49 = v12;
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44 - v15;
  v17 = sub_1BE04D214();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  v57 = v10;
  v58 = v9;
  v22 = *(v10 + 16);
  v54 = a1;
  v48 = v22;
  v22(v16, a1, v9);
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C24();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = v17;
    v47 = v3;
    v26 = v25;
    v45 = swift_slowAlloc();
    v59 = v45;
    *v26 = 136315138;
    sub_1BD4B52D8(&unk_1EBD47730, MEMORY[0x1E69CDDE8]);
    v27 = v58;
    v28 = sub_1BE053B24();
    v30 = v29;
    (*(v57 + 8))(v16, v27);
    v31 = sub_1BD123690(v28, v30, &v59);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_1BD026000, v23, v24, "Prune stale transfer with ID: %s", v26, 0xCu);
    v32 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1BFB45F20](v32, -1, -1);
    v3 = v47;
    MEMORY[0x1BFB45F20](v26, -1, -1);

    (*(v18 + 8))(v21, v46);
  }

  else
  {

    (*(v57 + 8))(v16, v58);
    (*(v18 + 8))(v21, v17);
  }

  v33 = sub_1BE0528D4();
  v34 = v55;
  (*(*(v33 - 8) + 56))(v55, 1, 1, v33);
  v35 = v51;
  v36 = v56;
  (*(v51 + 16))(v56, v53, v3);
  v37 = v50;
  v38 = v58;
  v48(v50, v54, v58);
  v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v40 = v57;
  v41 = (v52 + *(v57 + 80) + v39) & ~*(v57 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  (*(v35 + 32))(v42 + v39, v36, v3);
  (*(v40 + 32))(v42 + v41, v37, v38);
  sub_1BD122C00(0, 0, v34, &unk_1BE0DA7D0, v42);
}

uint64_t sub_1BD4B4EA8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1BE04E084() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1BE04E0B4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1BD0F985C;

  return sub_1BD4A98AC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_56Tm()
{
  v1 = sub_1BE04E0B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

void sub_1BD4B50E4(uint64_t a1)
{
  sub_1BE04C4C4();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  sub_1BD4B15FC(a1, v3, v4, v5);
}

void sub_1BD4B515C(int a1)
{
  v3 = *(sub_1BE04C4C4() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_1BD4B12EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD4B51DC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47740) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD4AC958(a1, v6, v7, v1 + v5);
}

uint64_t sub_1BD4B52D8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BD4B5398()
{
  result = sub_1BD4B71C0();
  qword_1EBDAB168 = result;
  return result;
}

id sub_1BD4B53D0()
{
  result = sub_1BD4B71C0();
  qword_1EBDAB170 = result;
  return result;
}

uint64_t sub_1BD4B5408@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v53 = sub_1BE04FF64();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v3);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD478F8);
  MEMORY[0x1EEE9AC00](v48, v5);
  v7 = &v43 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47900);
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v8);
  v44 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47908);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v47 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v46 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v43 = &v43 - v22;
  sub_1BE04F624();
  v23 = swift_allocObject();
  v24 = *(a1 + 112);
  *(v23 + 112) = *(a1 + 96);
  *(v23 + 128) = v24;
  *(v23 + 144) = *(a1 + 128);
  v25 = *(a1 + 48);
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 64) = v25;
  v26 = *(a1 + 80);
  *(v23 + 80) = *(a1 + 64);
  *(v23 + 96) = v26;
  v27 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v27;
  sub_1BD33211C(a1, v55);
  sub_1BE051734();
  *v7 = sub_1BE04F504();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47910);
  sub_1BD4B5A00(a1, &v7[*(v28 + 44)]);
  v29 = v45;
  sub_1BE04FF44();
  v30 = sub_1BD0DE4F4(&qword_1EBD47918, &qword_1EBD478F8);
  v31 = v44;
  v32 = v48;
  sub_1BE050D14();
  (*(v51 + 8))(v29, v53);
  sub_1BD0DE53C(v7, &qword_1EBD478F8);
  sub_1BE052434();
  v55[0] = v32;
  v55[1] = v30;
  swift_getOpaqueTypeConformance2();
  v33 = v47;
  v34 = v50;
  sub_1BE050DE4();

  (*(v52 + 8))(v31, v34);
  v35 = *(v17 + 16);
  v36 = v46;
  v37 = v43;
  v35(v46, v43, v16);
  v38 = v49;
  sub_1BD070A38(v33, v49);
  v39 = v54;
  v35(v54, v36, v16);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47920);
  sub_1BD070A38(v38, &v39[*(v40 + 48)]);
  sub_1BD070AA8(v33);
  v41 = *(v17 + 8);
  v41(v37, v16);
  sub_1BD070AA8(v38);
  return (v41)(v36, v16);
}

uint64_t sub_1BD4B59A4(uint64_t result)
{
  v1 = *(result + 88);
  if (v1)
  {
    v2 = sub_1BE048964();
    v1(v2);

    return sub_1BD0D4744(v1);
  }

  return result;
}

uint64_t sub_1BD4B5A00@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47928);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  v13 = a1[6];
  v12 = a1[7];
  sub_1BE048C84();
  v14 = sub_1BE050224();
  sub_1BE04E1F4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v35[0]) = 0;
  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47930);
  sub_1BD4B5C70(a1, &v11[*(v23 + 44)]);
  sub_1BD0DE19C(v11, v7, &qword_1EBD47928);
  *&v30 = v13;
  *(&v30 + 1) = v12;
  v29 = xmmword_1BE0DA820;
  v28 = xmmword_1BE0DA830;
  v31 = xmmword_1BE0DA820;
  v32 = xmmword_1BE0DA830;
  LOBYTE(v33) = v14;
  *(&v33 + 1) = v16;
  *v34 = v18;
  *&v34[8] = v20;
  *&v34[16] = v22;
  v34[24] = 0;
  v24 = v33;
  a2[2] = xmmword_1BE0DA830;
  a2[3] = v24;
  a2[4] = *v34;
  *(a2 + 73) = *&v34[9];
  v25 = v31;
  *a2 = v30;
  a2[1] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47938);
  sub_1BD0DE19C(v7, a2 + *(v26 + 48), &qword_1EBD47928);
  sub_1BD0DE19C(&v30, v35, &qword_1EBD47940);
  sub_1BD0DE53C(v11, &qword_1EBD47928);
  sub_1BD0DE53C(v7, &qword_1EBD47928);
  v35[0] = v13;
  v35[1] = v12;
  v36 = v29;
  v37 = v28;
  v38 = v14;
  v39 = v16;
  v40 = v18;
  v41 = v20;
  v42 = v22;
  v43 = 0;
  return sub_1BD0DE53C(v35, &qword_1EBD47940);
}

uint64_t sub_1BD4B5C70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47948);
  MEMORY[0x1EEE9AC00](v69, v3);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v68 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47950);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v68 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47958);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47960);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v68 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v68 - v28;
  *v12 = sub_1BE04F504();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47968);
  sub_1BD4B610C(a1, &v12[*(v30 + 44)]);
  v31 = sub_1BE0501E4();
  sub_1BE051C54();
  sub_1BE04E1F4();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_1BD0DE204(v12, v17, &qword_1EBD47950);
  v40 = &v17[*(v14 + 44)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(v14) = sub_1BE0501F4();
  sub_1BE051C54();
  sub_1BE04E1F4();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_1BD0DE204(v17, v25, &qword_1EBD47958);
  v49 = &v25[*(v18 + 36)];
  *v49 = v14;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  sub_1BD0DE204(v25, v29, &qword_1EBD47960);
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0;
  v8[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47970);
  sub_1BD4B6B48();
  LOBYTE(v18) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47978) + 36)];
  *v58 = v18;
  *(v58 + 1) = v51;
  *(v58 + 2) = v53;
  *(v58 + 3) = v55;
  *(v58 + 4) = v57;
  v58[40] = 0;
  LOBYTE(v18) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v59 = &v8[*(v69 + 36)];
  *v59 = v18;
  *(v59 + 1) = v60;
  *(v59 + 2) = v61;
  *(v59 + 3) = v62;
  *(v59 + 4) = v63;
  v59[40] = 0;
  sub_1BD0DE19C(v29, v21, &qword_1EBD47960);
  v64 = v70;
  sub_1BD0DE19C(v8, v70, &qword_1EBD47948);
  v65 = v71;
  sub_1BD0DE19C(v21, v71, &qword_1EBD47960);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47980);
  sub_1BD0DE19C(v64, v65 + *(v66 + 48), &qword_1EBD47948);
  sub_1BD0DE53C(v8, &qword_1EBD47948);
  sub_1BD0DE53C(v29, &qword_1EBD47960);
  sub_1BD0DE53C(v64, &qword_1EBD47948);
  return sub_1BD0DE53C(v21, &qword_1EBD47960);
}

uint64_t sub_1BD4B610C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE38);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v76 = (&v68 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v69 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v75 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v79 = &v68 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC18);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v74 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v70 = a1;
  v71 = &v68 - v23;
  v24 = *a1;
  v25 = a1[1];
  *&v89[0] = v24;
  *(&v89[0] + 1) = v25;
  v26 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v68 = v26;
  v27 = sub_1BE0506C4();
  v29 = v28;
  v31 = v30;
  sub_1BE050324();
  v32 = sub_1BE0505F4();
  v34 = v33;
  v36 = v35;

  sub_1BD0DDF10(v27, v29, v31 & 1);
  v37 = v70;

  v38 = sub_1BE0505D4();
  v40 = v39;
  LOBYTE(v29) = v41;
  v43 = v42;
  sub_1BD0DDF10(v32, v34, v36 & 1);

  sub_1BE051CD4();
  sub_1BE04EE54();
  v90 = v29 & 1;
  *&v80 = v38;
  *(&v80 + 1) = v40;
  LOBYTE(v81) = v29 & 1;
  *(&v81 + 1) = v43;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090);
  sub_1BD19D16C();
  v44 = v71;
  sub_1BE050DE4();

  v89[6] = v86;
  v89[7] = v87;
  v89[8] = v88;
  v89[2] = v82;
  v89[3] = v83;
  v89[4] = v84;
  v89[5] = v85;
  v89[0] = v80;
  v89[1] = v81;
  sub_1BD0DE53C(v89, &qword_1EBD3E090);
  v45 = *(v37 + 40);
  if (v45)
  {
    *&v80 = *(v37 + 32);
    *(&v80 + 1) = v45;
    sub_1BE048C84();
    v46 = sub_1BE0506C4();
    v48 = v47;
    *&v80 = v46;
    *(&v80 + 1) = v47;
    v50 = v49 & 1;
    LOBYTE(v81) = v49 & 1;
    *(&v81 + 1) = v51;
    sub_1BE052434();
    v52 = v69;
    sub_1BE050DE4();

    sub_1BD0DDF10(v46, v48, v50);

    v53 = v79;
    sub_1BD0DE204(v52, v79, &qword_1EBD452C0);
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v53 = v79;
  }

  (*(v72 + 56))(v53, v54, 1, v73);
  v55 = sub_1BE051CD4();
  v56 = v76;
  *v76 = v55;
  *(v56 + 8) = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE40);
  sub_1BD4B67A0(v37, v56 + *(v58 + 44));
  v59 = v44;
  v60 = v74;
  sub_1BD0DE19C(v44, v74, &qword_1EBD3BC18);
  v61 = v53;
  v62 = v75;
  sub_1BD0DE19C(v61, v75, &unk_1EBD5BB60);
  v63 = v78;
  sub_1BD0DE19C(v56, v78, &qword_1EBD3EE38);
  v64 = v77;
  sub_1BD0DE19C(v60, v77, &qword_1EBD3BC18);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47988);
  v66 = v64 + v65[12];
  *v66 = 0;
  *(v66 + 8) = 1;
  sub_1BD0DE19C(v62, v64 + v65[16], &unk_1EBD5BB60);
  sub_1BD0DE19C(v63, v64 + v65[20], &qword_1EBD3EE38);
  sub_1BD0DE53C(v56, &qword_1EBD3EE38);
  sub_1BD0DE53C(v79, &unk_1EBD5BB60);
  sub_1BD0DE53C(v59, &qword_1EBD3BC18);
  sub_1BD0DE53C(v63, &qword_1EBD3EE38);
  sub_1BD0DE53C(v62, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v60, &qword_1EBD3BC18);
}

uint64_t sub_1BD4B67A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE50) - 8;
  MEMORY[0x1EEE9AC00](v39, v3);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v39 - v7;
  v9 = sub_1BE04C744();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2D8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v39 - v21;
  v45 = *(a1 + 64);
  v46 = *(a1 + 80);
  v43 = *(a1 + 64);
  v44 = *(a1 + 80);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v42);
  v24 = v42 | ~*(a1 + 81);
  (*(v10 + 104))(v13, *MEMORY[0x1E69BC950], v9);
  sub_1BE04C724();
  v22[*(v15 + 44)] = v24 & 1;
  sub_1BE04E4F4();
  v25 = sub_1BE050204();
  sub_1BE04E1F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE58) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v43 = v45;
  v44 = v46;
  MEMORY[0x1BFB3E970](&v42, v23);
  v8[*(v39 + 44)] = (v42 & 1) == 0;
  sub_1BD0DE19C(v22, v18, &qword_1EBD3B2D8);
  v35 = v40;
  sub_1BD0DE19C(v8, v40, &qword_1EBD3EE50);
  v36 = v41;
  sub_1BD0DE19C(v18, v41, &qword_1EBD3B2D8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE60);
  sub_1BD0DE19C(v35, v36 + *(v37 + 48), &qword_1EBD3EE50);
  sub_1BD0DE53C(v8, &qword_1EBD3EE50);
  sub_1BD0DE53C(v22, &qword_1EBD3B2D8);
  sub_1BD0DE53C(v35, &qword_1EBD3EE50);
  return sub_1BD0DE53C(v18, &qword_1EBD3B2D8);
}

uint64_t sub_1BD4B6B48()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  sub_1BE051234();
  v5 = sub_1BE050564();
  v7 = v6;
  v9 = v8;

  sub_1BD0DDF10(v0, v2, v4 & 1);

  sub_1BE0502A4();
  v10 = sub_1BE0505F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_1BD0DDF10(v5, v7, v9 & 1);

  sub_1BE051CD4();
  sub_1BE04EE54();
  v28 = v14 & 1;
  *&v18 = v10;
  *(&v18 + 1) = v12;
  LOBYTE(v19) = v14 & 1;
  *(&v19 + 1) = v16;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090);
  sub_1BD19D16C();
  sub_1BE050DE4();

  v27[6] = v24;
  v27[7] = v25;
  v27[8] = v26;
  v27[2] = v20;
  v27[3] = v21;
  v27[4] = v22;
  v27[5] = v23;
  v27[0] = v18;
  v27[1] = v19;
  return sub_1BD0DE53C(v27, &qword_1EBD3E090);
}

uint64_t sub_1BD4B6D5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD478E0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (v24 - v5);
  v7 = *(v1 + 112);
  v24[6] = *(v1 + 96);
  v24[7] = v7;
  v25 = *(v1 + 128);
  v8 = *(v1 + 48);
  v24[2] = *(v1 + 32);
  v24[3] = v8;
  v9 = *(v1 + 80);
  v24[4] = *(v1 + 64);
  v24[5] = v9;
  v10 = *(v1 + 16);
  v24[0] = *v1;
  v24[1] = v10;
  *v6 = sub_1BE051CD4();
  v6[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD478E8);
  sub_1BD4B5408(v24, v6 + *(v12 + 44));
  v13 = sub_1BE050234();
  sub_1BE051C54();
  sub_1BE04E1F4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1BD070958(v6, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD478F0);
  v23 = a1 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

double sub_1BD4B6EB4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04EDE4();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v28 - v10;
  sub_1BE048C84();
  v29 = sub_1BE051574();
  v12 = sub_1BE050354();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v28 = sub_1BE0503B4();
  sub_1BD0DE53C(v11, &qword_1EBD49130);
  KeyPath = swift_getKeyPath();
  v14 = sub_1BE051424();
  v15 = swift_getKeyPath();
  sub_1BE051C54();
  sub_1BE051C54();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v16 = sub_1BE0513F4();
  v17 = sub_1BE0501D4();
  v18 = sub_1BE051C54();
  v19 = 24;
  if (v18)
  {
    v19 = 16;
  }

  v20 = *(v1 + v19);
  v21 = *(v4 + 28);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1BE04F684();
  (*(*(v23 - 8) + 104))(&v7[v21], v22, v23);
  *v7 = v20;
  *(v7 + 1) = v20;
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD479A0) + 36);
  sub_1BD1E4AAC(v7, v24);
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)) = 256;
  v25 = v31;
  *(a1 + 40) = v30;
  v26 = v28;
  *a1 = v29;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v26;
  *(a1 + 24) = v15;
  *(a1 + 32) = v14;
  *(a1 + 56) = v25;
  result = *&v32;
  *(a1 + 72) = v32;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  return result;
}

id sub_1BD4B71C0()
{
  v0 = sub_1BE04B0F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v10, *MEMORY[0x1E69B80E0], v5, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    sub_1BE04B6F4();

    (*(v6 + 8))(v10, v5);
    v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1BE04B054();
    v14 = sub_1BE04B044();
    (*(v1 + 8))(v4, v0);
    [v13 setLocale_];

    v15 = sub_1BE052404();

    [v13 setLocalizedDateFormatFromTemplate_];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD4B7444()
{
  result = qword_1EBD47990;
  if (!qword_1EBD47990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD478F0);
    sub_1BD0DE4F4(&qword_1EBD47998, &qword_1EBD478E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47990);
  }

  return result;
}

unint64_t sub_1BD4B7518()
{
  result = qword_1EBD479A8;
  if (!qword_1EBD479A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD479A0);
    sub_1BD4B75D0();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD479A8);
  }

  return result;
}

unint64_t sub_1BD4B75D0()
{
  result = qword_1EBD479B0;
  if (!qword_1EBD479B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49150);
    sub_1BD4B7688();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD479B0);
  }

  return result;
}

unint64_t sub_1BD4B7688()
{
  result = qword_1EBD479B8;
  if (!qword_1EBD479B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49160);
    sub_1BD0F1430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD479B8);
  }

  return result;
}

void sub_1BD4B7714(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 cardType] == 4)
  {
    v8 = sub_1BE04BBD4();
    v9 = [v8 paymentSetupProductModel];

    if (v9)
    {
      v10 = [a1 setupProductIdentifier];
      [v9 productForProductIdentifier_];

      return;
    }
  }

  sub_1BE04D0E4();
  v11 = a1;
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    v16 = [v11 productIdentifier];

    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = sub_1BE052434();
    v19 = v18;

    v20 = sub_1BD123690(v17, v19, &v22);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1BD026000, v12, v13, "Unable to find product for product identifier: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1BFB45F20](v15, -1, -1);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v7, v2);
}

void sub_1BD4B799C(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 paymentPass];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1BE04BBD4();
    v11 = [v10 paymentSetupProductModel];

    if (!v11)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v12 = [v11 setupProductsOfType_];

    if (v12)
    {
      sub_1BD0DB624();
      v13 = sub_1BE052744();

      if (!(v13 >> 62))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
LABEL_5:
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_6;
        }

        goto LABEL_20;
      }
    }

    v14 = sub_1BE053704();
    if (v14)
    {
LABEL_6:
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1BFB40900](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v23 = v16;
        if ((sub_1BD4B7C5C(&v23, v9) & 1) == 0)
        {

          ++v15;
          if (v18 != v14)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_20:

    return;
  }

  sub_1BE04D0E4();
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C54();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1BD026000, v19, v20, "Unable to find pass for local credential", v21, 2u);
    MEMORY[0x1BFB45F20](v21, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
}

uint64_t sub_1BD4B7C5C(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 clientInfo];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v4;
  v6 = sub_1BE052244();

  sub_1BE052434();
  sub_1BE0537C4();
  if (!*(v6 + 16) || (v7 = sub_1BD149040(&v31), (v8 & 1) == 0))
  {

    sub_1BD149CE8(&v31);
LABEL_16:
    v33 = 0u;
    v34 = 0u;
    goto LABEL_17;
  }

  sub_1BD038CD0(*(v6 + 56) + 32 * v7, &v33);
  sub_1BD149CE8(&v31);

  if (!*(&v34 + 1))
  {
LABEL_17:
    sub_1BD14EC0C(&v33);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v23 = 0;
    return v23 & 1;
  }

  v10 = v31;
  v9 = v32;
  v11 = [v3 clientInfo];
  if (!v11)
  {

    goto LABEL_16;
  }

  v12 = v11;
  v13 = sub_1BE052244();

  sub_1BE052434();
  sub_1BE0537C4();
  if (!*(v13 + 16) || (v14 = sub_1BD149040(&v31), (v15 & 1) == 0))
  {

    sub_1BD149CE8(&v31);
    v33 = 0u;
    v34 = 0u;
    goto LABEL_21;
  }

  sub_1BD038CD0(*(v13 + 56) + 32 * v14, &v33);
  sub_1BD149CE8(&v31);

  if (!*(&v34 + 1))
  {
LABEL_21:

    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v17 = v31;
  v16 = v32;
  v18 = [a2 issuerAdministrativeAreaCode];
  if (!v18)
  {

    goto LABEL_30;
  }

  v19 = v18;
  v20 = sub_1BE052434();
  v22 = v21;

  if (v20 == v10 && v22 == v9)
  {

    goto LABEL_26;
  }

  v25 = sub_1BE053B84();

  if ((v25 & 1) == 0)
  {
LABEL_30:

    goto LABEL_18;
  }

LABEL_26:
  v26 = [a2 issuerCountryCode];
  if (!v26)
  {
    goto LABEL_30;
  }

  v27 = v26;
  v28 = sub_1BE052434();
  v30 = v29;

  if (v28 == v17 && v30 == v16)
  {

    v23 = 1;
  }

  else
  {
    v23 = sub_1BE053B84();
  }

  return v23 & 1;
}

uint64_t sub_1BD4B7FFC(uint64_t a1, void *a2, void *a3, void *a4, char *a5, _UNKNOWN **a6)
{
  v7 = a3;
  v8 = a2;
  if (a5)
  {
    v48 = a4;
    v49 = a5;
    v10 = a3;
    v11 = a2;
  }

  else
  {
    v13 = type metadata accessor for PaymentSetupIdentityFlowItem();
    v14 = objc_allocWithZone(v13);
    v46 = v8;
    v15 = OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_precursorPass;
    *&v14[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_precursorPass] = 0;
    v16 = &v14[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_region];
    *v16 = 0u;
    *(v16 + 1) = 0u;
    *&v14[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_viewController] = 0;
    *&v14[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_proofingManager] = 0;
    *&v14[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v17 = &v14[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_identifier];
    *v17 = 0xD000000000000010;
    *(v17 + 1) = 0x80000001BE12BC10;
    *&v14[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_context] = a1;
    *&v14[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_product] = v46;
    v18 = &v14[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_accountKeyIdentifier];
    *v18 = 0;
    *(v18 + 1) = 0;
    v19 = *&v14[v15];
    *&v14[v15] = v7;
    swift_retain_n();
    v20 = v46;
    v21 = v7;
    v22 = v20;
    v45 = v7;
    v23 = v21;
    v24 = a4;

    *&v14[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_credential] = a4;
    v52.receiver = v14;
    v52.super_class = v13;
    v25 = v24;
    v26 = objc_msgSendSuper2(&v52, sel_init);
    v27 = objc_allocWithZone(MEMORY[0x1E6997E78]);
    v28 = v26;
    v29 = [v27 initWithDelegate_];

    v11 = v22;

    v10 = v23;
    v7 = v45;
    v48 = v25;

    v30 = *&v28[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_proofingManager];
    *&v28[OBJC_IVAR____TtC9PassKitUI28PaymentSetupIdentityFlowItem_proofingManager] = v29;
    v49 = v28;

    v8 = v46;
    a6 = &off_1F3BC7530;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BE0B6CA0;
  v32 = type metadata accessor for ProvisioningIdentityRequirementFlowItem();
  v33 = objc_allocWithZone(v32);
  v34 = OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_credential;
  *&v33[OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_credential] = 0;
  v35 = &v33[OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_identifier];
  *v35 = 0xD00000000000001CLL;
  *(v35 + 1) = 0x80000001BE12BC50;
  *&v33[OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v33[OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_context] = a1;
  *&v33[OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product] = v8;
  *&v33[OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_precursorPass] = v7;
  v36 = *&v33[v34];
  *&v33[v34] = a4;
  swift_retain_n();
  v37 = v11;
  v38 = v10;
  v39 = v48;
  v40 = v37;
  v41 = v38;
  v42 = v39;
  swift_unknownObjectRetain();

  v51.receiver = v33;
  v51.super_class = v32;
  v43 = objc_msgSendSuper2(&v51, sel_init);

  *(v31 + 32) = v43;
  *(v31 + 40) = &off_1F3BB4BB0;
  *(v31 + 48) = v49;
  *(v31 + 56) = a6;
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 40) = 0xD000000000000013;
  *(v6 + 48) = 0x80000001BE12BC30;
  *(v6 + 56) = v31;
  *(v6 + 32) = 514;
  return v6;
}

uint64_t sub_1BD4B8490(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  sub_1BD1875C0(v1, &v45);
  sub_1BD7CD0C0();
  v5 = *(&v45 + 1);
  if (*(*(&v45 + 1) + 16))
  {
    v41 = KeyPath;
    sub_1BE053D04();
    sub_1BE052524();
    v6 = sub_1BE053D64();
    v7 = -1 << *(v5 + 32);
    v8 = v6 & ~v7;
    if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v39 = v1;
      v9 = ~v7;
      while (!*(*(v5 + 48) + v8) || *(*(v5 + 48) + v8) == 2)
      {
        v10 = sub_1BE053B84();

        if (v10)
        {
          goto LABEL_12;
        }

        v8 = (v8 + 1) & v9;
        if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

LABEL_12:
      v12 = v46;
      v2 = v39;
      if (!*(v46 + 16) || (sub_1BE053D04(), sub_1BE052524(), v13 = sub_1BE053D64(), v14 = -1 << *(v12 + 32), v15 = v13 & ~v14, ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0))
      {
        v11 = 1;
        goto LABEL_22;
      }

      v16 = ~v14;
      while (!*(*(v12 + 48) + v15) || *(*(v12 + 48) + v15) == 2)
      {
        v17 = sub_1BE053B84();

        if ((v17 & 1) == 0)
        {
          v15 = (v15 + 1) & v16;
          if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
          {
            continue;
          }
        }

        v11 = v17 ^ 1;
        goto LABEL_20;
      }

LABEL_8:
      v11 = 0;
LABEL_20:
      v2 = v39;
    }

    else
    {
      v11 = 0;
    }

LABEL_22:
    KeyPath = v41;
  }

  else
  {
    v11 = 0;
  }

  v48 = v45;
  v49 = v46;
  v50 = v47;
  v18 = v2;
  sub_1BD12F7D0(&v48, v18, KeyPath);

  v51 = *(&v48 + 1);
  sub_1BD0DE53C(&v51, &qword_1EBD39F98);
  v52 = v49;
  sub_1BD0DE53C(&v52, &qword_1EBD39F98);
  v53 = *(&v49 + 1);
  sub_1BD0DE53C(&v53, &qword_1EBD39F98);
  if ((v11 & 1) == 0 && *(v18 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_forceShow) != 1)
  {
    return a1(0xD000000000000025, 0x80000001BE12BCD0, 0, 1);
  }

  v42 = a1;
  v38 = swift_getKeyPath();
  v40 = v18;
  sub_1BD1875C0(v18, &v45);
  v19 = v46;
  v37 = *(&v45 + 1);
  v20 = *(&v46 + 1);
  v35 = v47;
  v36 = v45;
  sub_1BE053D04();
  sub_1BE052524();
  v21 = sub_1BE053D64();
  v22 = -1 << *(v19 + 32);
  v23 = v21 & ~v22;
  if ((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v24 = ~v22;
    while (!*(*(v19 + 48) + v23) || *(*(v19 + 48) + v23) == 2)
    {
      v25 = sub_1BE053B84();

      if (v25)
      {
        goto LABEL_32;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_31:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v19;
    sub_1BD2A939C(1, v23, isUniquelyReferenced_nonNull_native);
  }

LABEL_32:
  sub_1BE053D04();
  sub_1BE052524();
  v27 = sub_1BE053D64();
  v28 = -1 << *(v20 + 32);
  v29 = v27 & ~v28;
  if ((*(v20 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
  {
    v30 = ~v28;
    while (!*(*(v20 + 48) + v29) || *(*(v20 + 48) + v29) == 2)
    {
      v31 = sub_1BE053B84();

      if (v31)
      {
        goto LABEL_39;
      }

      v29 = (v29 + 1) & v30;
      if (((*(v20 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v20;
    sub_1BD2A939C(1, v29, v32);
  }

LABEL_39:
  LOBYTE(v43[0]) = v36;
  v43[1] = v37;
  v43[2] = v19;
  v43[3] = v20;
  v44 = v35;
  v33 = v40;
  sub_1BD12F7D0(v43, v33, v38);

  return v42(0, 0, 0, 0);
}

id sub_1BD4B8AF8()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_context];
  v8 = sub_1BE04BBD4();
  v9 = [v8 webService];

  v82 = v7;
  sub_1BE04BC34();
  v10 = sub_1BE04B9A4();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = [objc_allocWithZone(PKPaymentCameraCaptureViewController) initWithWebService:v9 context:v10];

  v83 = v12;
  v81 = v1;
  if (v12)
  {
    v13 = v12;
    sub_1BE04BC34();
    v14 = sub_1BE04BA54();
    v11(v6, v2);
    [v13 setHideSetupLaterButton_];

    KeyPath = swift_getKeyPath();
    v16 = v13;
    sub_1BD1875C0(v1, &v97);
    sub_1BD7CD0C0();
    v17 = *(&v97 + 1);
    if (*(*(&v97 + 1) + 16))
    {
      sub_1BE053D04();
      sub_1BE052524();
      v18 = sub_1BE053D64();
      v19 = -1 << *(v17 + 32);
      v20 = v18 & ~v19;
      if ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (!*(*(v17 + 48) + v20) || *(*(v17 + 48) + v20) == 1)
        {
          v22 = sub_1BE053B84();

          if (v22)
          {
            goto LABEL_31;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_9;
          }
        }

LABEL_31:
        v48 = *(&v98 + 1);
        v1 = v81;
        if (!*(*(&v98 + 1) + 16) || (sub_1BE053D04(), sub_1BE052524(), v49 = sub_1BE053D64(), v50 = -1 << *(v48 + 32), v51 = v49 & ~v50, ((*(v48 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0))
        {
          v23 = 1;
LABEL_11:
          v100 = v97;
          v101 = v98;
          v102 = v99;
          v24 = v1;
          sub_1BD12F7D0(&v100, v24, KeyPath);

          v103 = *(&v100 + 1);
          sub_1BD0DE53C(&v103, &qword_1EBD39F98);
          v104 = v101;
          sub_1BD0DE53C(&v104, &qword_1EBD39F98);
          v105 = *(&v101 + 1);
          sub_1BD0DE53C(&v105, &qword_1EBD39F98);
          [v16 setShowTapToProvisionButton_];

          goto LABEL_12;
        }

        v52 = ~v50;
        while (!*(*(v48 + 48) + v51) || *(*(v48 + 48) + v51) == 1)
        {
          v53 = sub_1BE053B84();

          if ((v53 & 1) == 0)
          {
            v51 = (v51 + 1) & v52;
            if ((*(v48 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
            {
              continue;
            }
          }

          v23 = v53 ^ 1;
          goto LABEL_10;
        }
      }
    }

LABEL_9:
    v23 = 0;
LABEL_10:
    v1 = v81;
    goto LABEL_11;
  }

LABEL_12:
  v25 = swift_getKeyPath();
  sub_1BD1875C0(v1, v86);
  v27 = v87;
  v26 = v88;
  v28 = v89;
  v79 = v90;
  v80 = v86[0];
  sub_1BE053D04();
  sub_1BE052524();
  v29 = sub_1BE053D64();
  v30 = -1 << *(v28 + 32);
  v31 = v29 & ~v30;
  if ((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
  {
    v32 = ~v30;
    while (!*(*(v28 + 48) + v31) || *(*(v28 + 48) + v31) == 1)
    {
      v33 = sub_1BE053B84();

      if (v33)
      {
        goto LABEL_19;
      }

      v31 = (v31 + 1) & v32;
      if (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v28;
    sub_1BD2A939C(2, v31, isUniquelyReferenced_nonNull_native);
    v28 = v84[0];
  }

LABEL_19:
  LOBYTE(v97) = v80;
  *(&v97 + 1) = v27;
  *&v98 = v26;
  *(&v98 + 1) = v28;
  v99 = v79;
  v35 = v81;
  sub_1BD12F7D0(&v97, v35, v25);

  v36 = v83;
  if (v83)
  {
    v37 = swift_getKeyPath();
    v38 = v36;
    sub_1BD1875C0(v35, &v91);
    sub_1BD7CD0C0();
    v39 = *(&v91 + 1);
    if (*(*(&v91 + 1) + 16) && (sub_1BE053D04(), sub_1BE052524(), v40 = sub_1BE053D64(), v41 = -1 << *(v39 + 32), v42 = v40 & ~v41, ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
    {
      v43 = v35;
      v44 = ~v41;
      while (1)
      {
        v45 = *(*(v39 + 48) + v42);
        if (v45 != 1 && v45 != 2)
        {
          break;
        }

        v46 = sub_1BE053B84();

        if (v46)
        {
          goto LABEL_41;
        }

        v42 = (v42 + 1) & v44;
        if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_41:
      v54 = *(&v92 + 1);
      v35 = v43;
      if (!*(*(&v92 + 1) + 16) || (sub_1BE053D04(), sub_1BE052524(), v55 = sub_1BE053D64(), v56 = -1 << *(v54 + 32), v57 = v55 & ~v56, ((*(v54 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0))
      {
        v47 = 1;
        goto LABEL_51;
      }

      v58 = ~v56;
      while (1)
      {
        v59 = *(*(v54 + 48) + v57);
        if (v59 != 1 && v59 != 2)
        {
          break;
        }

        v60 = sub_1BE053B84();

        if ((v60 & 1) == 0)
        {
          v57 = (v57 + 1) & v58;
          if ((*(v54 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            continue;
          }
        }

        v47 = v60 ^ 1;
        goto LABEL_49;
      }

LABEL_27:
      v47 = 0;
LABEL_49:
      v35 = v43;
    }

    else
    {
      v47 = 0;
    }

LABEL_51:
    v94 = v91;
    v95 = v92;
    v96 = v93;
    v61 = v35;
    sub_1BD12F7D0(&v94, v61, v37);

    v106 = *(&v94 + 1);
    sub_1BD0DE53C(&v106, &qword_1EBD39F98);
    v107 = v95;
    sub_1BD0DE53C(&v107, &qword_1EBD39F98);
    v108[0] = *(&v95 + 1);
    sub_1BD0DE53C(v108, &qword_1EBD39F98);
    [v38 setShowTypeCardNumberButton_];
  }

  v62 = swift_getKeyPath();
  v81 = v35;
  sub_1BD1875C0(v35, &v91);
  v63 = *(&v91 + 1);
  v65 = *(&v92 + 1);
  v64 = v92;
  v79 = v93;
  v80 = v91;
  sub_1BE053D04();
  sub_1BE052524();
  v66 = sub_1BE053D64();
  v67 = -1 << *(v65 + 32);
  v68 = v66 & ~v67;
  if ((*(v65 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68))
  {
    v69 = ~v67;
    while (1)
    {
      v70 = *(*(v65 + 48) + v68);
      if (v70 != 1 && v70 != 2)
      {
        break;
      }

      v71 = sub_1BE053B84();

      if (v71)
      {
        goto LABEL_59;
      }

      v68 = (v68 + 1) & v69;
      if (((*(v65 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
LABEL_58:
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v65;
    sub_1BD2A939C(0, v68, v72);
    v65 = v84[0];
  }

LABEL_59:
  LOBYTE(v84[0]) = v80;
  v84[1] = v63;
  v84[2] = v64;
  v84[3] = v65;
  v85 = v79;
  v73 = v81;
  sub_1BD12F7D0(v84, v73, v62);

  v74 = v83;
  if (v83)
  {
    [v83 setFlowItemDelegate_];
    sub_1BE052434();
    v75 = v74;
    v76 = sub_1BE04BB74();

    [v75 setReporter_];
  }

  return v74;
}

uint64_t sub_1BD4B97C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4B97FC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD4B9A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjectType());
  v7 = sub_1BE048964();
  v13 = sub_1BD87305C(v7, 1, 0);

  v8 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v8 = a2;
  }

  *&v13[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_outputObjects] = v8;
  sub_1BE048C84();

  v9 = a3 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v12 = v13;
    sub_1BD865948(a1, &off_1F3BA9B68, v13, &off_1F3BC0A18, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD4B9B9C()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5[0] = [objc_opt_self() userCancelError];
    v6 = 1;
    sub_1BD865A00(v0, &off_1F3BA9B68, v5, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_1BD0DE53C(v5, &unk_1EBD3F510);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BD4B9C88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1BD4B9CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1BD4B9D58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v17 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD479F0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - v5;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD479F8);
  (*(*(v7 - 8) + 16))(v6, v16, v7);
  v8 = &v6[*(v3 + 44)];
  v9 = v19;
  *v8 = v18;
  *(v8 + 1) = v9;
  *(v8 + 2) = v20;
  sub_1BE051CD4();
  sub_1BE04EE54();
  v10 = v17;
  sub_1BD4B9FC0(v6, v17);
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47A00) + 36);
  v12 = v26;
  *(v11 + 64) = v25;
  *(v11 + 80) = v12;
  *(v11 + 96) = v27;
  v13 = v22;
  *v11 = v21;
  *(v11 + 16) = v13;
  result = v24;
  *(v11 + 32) = v23;
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_1BD4B9FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD479F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4BA030(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD4BA050(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 57) = v3;
  return result;
}

unint64_t sub_1BD4BA09C()
{
  result = qword_1EBD47A08;
  if (!qword_1EBD47A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47A00);
    sub_1BD4BA128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47A08);
  }

  return result;
}

unint64_t sub_1BD4BA128()
{
  result = qword_1EBD47A10;
  if (!qword_1EBD47A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD479F0);
    sub_1BD4BA1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47A10);
  }

  return result;
}

unint64_t sub_1BD4BA1B4()
{
  result = qword_1EBD47A18;
  if (!qword_1EBD47A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD479F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47A18);
  }

  return result;
}

uint64_t sub_1BD4BA218()
{
  v1 = sub_1BE04C884();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(PKPaymentSetupNavigationController) initWithProvisioningController:*(v0 + 16) context:8];
  if (v6)
  {
    v7 = v6;
    [v6 setPaymentSetupMode_];
    [v7 setAllowsManualEntry_];
    type metadata accessor for PaymentSetupNavigationController(0);
    sub_1BD70A520(v5);
    v8 = (*(v2 + 88))(v5, v1);
    if (v8 == *MEMORY[0x1E69BC9B8])
    {
      [v7 setCustomFormSheetPresentationStyleForiPad];
    }

    else if (v8 == *MEMORY[0x1E69BC9C8])
    {
      v9 = v7;
      [v9 setModalPresentationStyle_];
      [v9 setModalTransitionStyle_];
    }

    else
    {
      [v7 setModalPresentationStyle_];
      (*(v2 + 8))(v5, v1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AC8);
    sub_1BE050154();
    v10 = v13;
    [v7 setSetupDelegate_];

    return v7;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

id sub_1BD4BA504()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentSetupNavigationController.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD4BA5B4()
{
  result = type metadata accessor for PaymentSetupNavigationController(319);
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

void sub_1BD4BA698()
{
  sub_1BD1030A8();
  if (v0 <= 0x3F)
  {
    sub_1BD4BA734();
    if (v1 <= 0x3F)
    {
      sub_1BD14639C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BD4BA734()
{
  result = qword_1EBD47AB0;
  if (!qword_1EBD47AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD47AB0);
  }

  return result;
}

uint64_t sub_1BD4BA784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD4BA9E8(v3, v6);
  v8 = *v3;
  v7 = v3[1];
  v9 = type metadata accessor for PaymentSetupNavigationController.Coordinator(0);
  v10 = objc_allocWithZone(v9);
  sub_1BD4BA9E8(v6, &v10[OBJC_IVAR____TtCV9PassKitUI32PaymentSetupNavigationController11Coordinator_parent]);
  v11 = &v10[OBJC_IVAR____TtCV9PassKitUI32PaymentSetupNavigationController11Coordinator_setupFinishedAction];
  *v11 = v8;
  *(v11 + 1) = v7;
  v14.receiver = v10;
  v14.super_class = v9;
  sub_1BE048964();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  result = sub_1BD4BAA4C(v6);
  *a3 = v12;
  return result;
}

uint64_t sub_1BD4BA870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4BAAA8(&unk_1EBD47AD0);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD4BA8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4BAAA8(&unk_1EBD47AD0);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD4BA970()
{
  sub_1BD4BAAA8(&unk_1EBD47AD0);
  sub_1BE0500A4();
  __break(1u);
}

uint64_t sub_1BD4BA9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentSetupNavigationController(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4BAA4C(uint64_t a1)
{
  v2 = type metadata accessor for PaymentSetupNavigationController(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD4BAAA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PaymentSetupNavigationController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BD4BAB34()
{
  type metadata accessor for PKPaymentRequestType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PKPaymentAuthorizationFundingMode(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Passes(319);
      if (v2 <= 0x3F)
      {
        sub_1BD4BB1D8(319, &qword_1EBD392F8, &_s18BillingAddressInfoVN, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BD4BB174(319, &qword_1EBD36458, type metadata accessor for PeerPaymentModel, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1BD4BB174(319, &qword_1EBD39300, _s14PaymentSummaryVMa, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BD10315C(319, &qword_1EBD39320, &qword_1EBD496B0);
              if (v6 <= 0x3F)
              {
                sub_1BD10315C(319, &qword_1EBD39318, &unk_1EBD3E560);
                if (v7 <= 0x3F)
                {
                  sub_1BD1030A8();
                  if (v8 <= 0x3F)
                  {
                    sub_1BD4BB1D8(319, &qword_1EBD47AF0, &type metadata for AdditionalPaymentMethodItem, MEMORY[0x1E69E62F8]);
                    if (v9 <= 0x3F)
                    {
                      sub_1BD4BB320(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
                      if (v10 <= 0x3F)
                      {
                        sub_1BD4BB174(319, &qword_1EBD3F238, type metadata accessor for ProvisioningAvailableCredentialsProvider, MEMORY[0x1E69E6720]);
                        if (v11 <= 0x3F)
                        {
                          sub_1BD4BB320(319, &qword_1EBD47AF8, &qword_1EBD41368, &unk_1BE0DAD70, MEMORY[0x1E6981790]);
                          if (v12 <= 0x3F)
                          {
                            sub_1BD1031B4();
                            if (v13 <= 0x3F)
                            {
                              sub_1BD4BB320(319, &qword_1EBD39360, &qword_1EBD49710, &unk_1BE0B8580, MEMORY[0x1E6981790]);
                              if (v14 <= 0x3F)
                              {
                                sub_1BD4BB320(319, &qword_1EBD47B00, &qword_1EBD520A0, &unk_1BE0B9840, MEMORY[0x1E6981790]);
                                if (v15 <= 0x3F)
                                {
                                  sub_1BD4BB320(319, &qword_1EBD3F248, &unk_1EBD43B50, &unk_1BE102360, MEMORY[0x1E6981790]);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1BD4BB320(319, &qword_1EBD366C0, &unk_1EBD43B20, &unk_1BE0DAD80, MEMORY[0x1E6981790]);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1BD4BB1D8(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1BD4BB320(319, &qword_1EBD388E0, &qword_1EBD51EC0, &unk_1BE0B7120, MEMORY[0x1E6981790]);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1BD4BB320(319, &qword_1EBD47B08, &unk_1EBD43B60, &unk_1BE0DAD90, MEMORY[0x1E6981790]);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1BD4BB320(319, &qword_1EBD47B10, &qword_1EBD3A5C8, &unk_1BE0BAA50, MEMORY[0x1E6981790]);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1BD4BB320(319, &qword_1EBD47B18, &qword_1EBD39250, &unk_1BE0DADA0, MEMORY[0x1E6981790]);
                                              if (v22 <= 0x3F)
                                              {
                                                sub_1BD4BB174(319, &qword_1EBD388F8, MEMORY[0x1E69BC9D0], MEMORY[0x1E697DCC0]);
                                                if (v23 <= 0x3F)
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
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD4BB174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD4BB1D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BD4BB270()
{
  sub_1BD4BB320(319, &qword_1EBD47B38, &qword_1EBD520A0, &unk_1BE0B9840, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD4BB320(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_1BD4BB3A0()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8068], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    result = (*(v1 + 8))(v5, v0);
    qword_1EBDAB188 = v8;
    unk_1EBDAB190 = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int *sub_1BD4BB4DC@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B40);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v110 = v95 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B48);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v109 = v95 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B50);
  v107 = *(v8 - 8);
  v108 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v106 = v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37198);
  v104 = *(v11 - 8);
  v105 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v116 = v95 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B58);
  v103 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v14);
  v117 = v95 - v15;
  v115 = sub_1BD4BC31C();
  v113 = v16;
  *&v118 = type metadata accessor for PaymentPassMethodSheet(0);
  v17 = *(v118 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v118, v19);
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = type metadata accessor for PaymentPassMethodSheet;
  sub_1BD4CCE58(v1, v95 - v20, type metadata accessor for PaymentPassMethodSheet);
  v21 = *(v17 + 80);
  v22 = (v21 + 16) & ~v21;
  v23 = swift_allocObject();
  v24 = sub_1BD4CCEC0(v95 - v20, v23 + v22, type metadata accessor for PaymentPassMethodSheet);
  MEMORY[0x1EEE9AC00](v24, v25);
  sub_1BD4CCE58(v1, v95 - v20, type metadata accessor for PaymentPassMethodSheet);
  v26 = swift_allocObject();
  sub_1BD4CCEC0(v95 - v20, v26 + v22, type metadata accessor for PaymentPassMethodSheet);
  *&v129 = sub_1BD4CCB7C;
  *(&v129 + 1) = v26;
  *&v130 = v115;
  *(&v130 + 1) = v113;
  *&v131 = sub_1BD4C9B5C;
  *(&v131 + 1) = v23;
  v132 = 0u;
  v133 = 0u;
  v134 = 0;
  v135[0] = sub_1BD4CCB7C;
  v135[1] = v26;
  v135[2] = v115;
  v135[3] = v113;
  v135[4] = sub_1BD4C9B5C;
  v135[5] = v23;
  v136 = 0u;
  v137 = 0u;
  v138 = 0;
  sub_1BD071330(&v129, v139);
  v27 = sub_1BD0DE53C(v135, &qword_1EBD47B68);
  MEMORY[0x1EEE9AC00](v27, v28);
  v102 = v20;
  v29 = v95 - v20;
  v30 = v1;
  sub_1BD4CCE58(v1, v29, v112);
  v113 = v18;
  v31 = swift_allocObject();
  v32 = v118;
  sub_1BD4CCEC0(v29, v31 + v22, type metadata accessor for PaymentPassMethodSheet);
  v123 = v131;
  v124 = v132;
  v125 = v133;
  v121 = v129;
  v122 = v130;
  *&v126 = v134;
  *(&v126 + 1) = sub_1BD4CCBFC;
  v127 = v31;
  v128 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
  v115 = v30;
  sub_1BE0516C4();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B70);
  v34 = sub_1BD4CCCA4();
  v112 = v33;
  v101 = v34;
  sub_1BE050704();
  sub_1BD0DE53C(&v120, &qword_1EBD51FA0);
  v139[4] = v125;
  v139[5] = v126;
  v139[6] = v127;
  v140 = v128;
  v139[0] = v121;
  v139[1] = v122;
  v139[2] = v123;
  v139[3] = v124;
  sub_1BD0DE53C(v139, &qword_1EBD47B70);
  v35 = sub_1BE04BD74();
  v36 = *(v35 - 8);
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v40 = v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 104))(v40, *MEMORY[0x1E69B8068], v35, v38);
  result = PKPassKitBundle();
  if (result)
  {
    v42 = result;
    v97 = v21;
    v98 = ~v21;
    v43 = sub_1BE04B6F4();
    v45 = v44;
    v96 = v44;

    (*(v36 + 8))(v40, v35);
    *&v120 = v43;
    *(&v120 + 1) = v45;
    v46 = v115;
    v47 = &v115[*(v32 + 152)];
    v48 = *v47;
    v49 = *(v47 + 1);
    LOBYTE(v119) = v48;
    *(&v119 + 1) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516C4();
    v95[3] = v122;
    v50 = v46 + *(v32 + 148);
    v51 = *(v50 + 16);
    v121 = *v50;
    *&v122 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
    sub_1BE0516A4();
    v121 = v119;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
    *&v119 = v112;
    *(&v119 + 1) = v101;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v54 = sub_1BD0DDEBC();
    v99 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v100 = v54;
    v101 = OpaqueTypeConformance2;
    v112 = v52;
    v55 = v114;
    v56 = v117;
    sub_1BE050F14();

    v57 = v103[1](v56, v55);
    v117 = v95;
    MEMORY[0x1EEE9AC00](v57, v58);
    v59 = v95 - v102;
    sub_1BD4CCE58(v46, v95 - v102, type metadata accessor for PaymentPassMethodSheet);
    sub_1BE0528A4();
    v60 = sub_1BE052894();
    v61 = (v97 + 8) & v98;
    v62 = swift_allocObject();
    v63 = MEMORY[0x1E69E85E0];
    *(v62 + 16) = v60;
    *(v62 + 24) = v63;
    sub_1BD4CCEC0(v59, v62 + v61, type metadata accessor for PaymentPassMethodSheet);
    v113 = sub_1BE0528D4();
    v64 = *(v113 - 8);
    v65 = *(v64 + 64);
    MEMORY[0x1EEE9AC00](v113, v66);
    v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
    v68 = v95 - v67;
    sub_1BE0528B4();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v102 = sub_1BE04EAA4();
      v103 = v95;
      v98 = *(v102 - 8);
      MEMORY[0x1EEE9AC00](v102, v69);
      v71 = v95 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
      *&v121 = 0;
      *(&v121 + 1) = 0xE000000000000000;
      sub_1BE053834();

      *&v121 = 0xD000000000000033;
      *(&v121 + 1) = 0x80000001BE12BE10;
      *&v120 = 197;
      v72 = sub_1BE053B24();
      MEMORY[0x1BFB3F610](v72);

      v97 = v95;
      v75 = MEMORY[0x1EEE9AC00](v73, v74);
      v76 = v95 - v67;
      v77 = v95 - v67;
      v78 = v113;
      (*(v64 + 16))(v76, v77, v113, v75);
      sub_1BE04EA94();
      (*(v64 + 8))(v68, v78);
      v55 = v114;
      v79 = v105;
      v80 = v106;
      (*(v104 + 32))(v106, v116, v105);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371A0);
      (*(v98 + 32))(&v80[*(v81 + 36)], v71, v102);
    }

    else
    {
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371A8);
      v80 = v106;
      v83 = &v106[*(v82 + 36)];
      v84 = sub_1BE04E7B4();
      (*(v64 + 32))(&v83[*(v84 + 20)], v68, v113);
      *v83 = &unk_1BE0DAEE8;
      *(v83 + 1) = v62;
      v79 = v105;
      (*(v104 + 32))(v80, v116, v105);
    }

    sub_1BE052434();
    *&v121 = v55;
    *(&v121 + 1) = MEMORY[0x1E69E6158];
    *&v122 = v112;
    *(&v122 + 1) = MEMORY[0x1E6981148];
    *&v123 = MEMORY[0x1E69E6158];
    *(&v123 + 1) = v101;
    *&v124 = v100;
    *(&v124 + 1) = v99;
    *&v125 = MEMORY[0x1E6981138];
    v85 = swift_getOpaqueTypeConformance2();
    *&v121 = v79;
    *(&v121 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    v86 = v108;
    v87 = v109;
    sub_1BE050DE4();

    (*(v107 + 8))(v80, v86);
    v88 = v118;
    v89 = v115;
    v120 = *&v115[*(v118 + 124)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390);
    sub_1BE0516C4();
    v90 = v122;
    v91 = v110;
    sub_1BD6FC744(v121, *(&v121 + 1), v122);

    sub_1BD0DE53C(v87, &qword_1EBD47B48);
    v120 = *&v89[*(v88 + 116)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
    sub_1BE0516C4();
    v118 = v121;
    v92 = v122;
    v93 = v111;
    sub_1BD0743A0(v91, v111);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B88);
    v94 = v93 + result[9];
    *v94 = v118;
    *(v94 + 24) = 0;
    *(v94 + 32) = 0;
    *(v94 + 16) = v92;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD4BC31C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v16 - v8;
  v11 = *MEMORY[0x1E69B8068];
  v12 = *(v2 + 104);
  if (*v0 == 10)
  {
    v12(&v16 - v8, v11, v1, v9);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
LABEL_6:

      (*(v2 + 8))(v10, v1);
      return v15;
    }

    __break(1u);
  }

  else
  {
    v12(v5, v11, v1, v9);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v10 = v5;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4BC4F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14[-v4];
  v6 = type metadata accessor for PaymentPassMethodSheet(0);
  v7 = *(a1 + v6[13]);
  v8 = type metadata accessor for AvailablePass(0);
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = (a1 + v6[39]);
  v10 = *v9;
  v11 = *(v9 + 1);
  v14[16] = v10;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78);
  sub_1BE0516A4();
  v7(v5, 0, v14[15]);
  v12 = sub_1BD0DE53C(v5, &qword_1EBD520A0);
  return (*(a1 + v6[23]))(v12);
}

uint64_t sub_1BD4BC658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v60 = a3;
  v5 = type metadata accessor for PaymentPassMethodSheet(0);
  v51 = *(v5 - 8);
  v49 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v52 = v7;
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B98);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47BA0);
  v14 = *(v13 - 8);
  v54 = v13;
  v55 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v45 = &v45 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47BA8);
  MEMORY[0x1EEE9AC00](v56, v17);
  v47 = &v45 - v18;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47BB0);
  MEMORY[0x1EEE9AC00](v58, v19);
  v57 = &v45 - v20;
  v46 = a2;
  v61 = a2;
  v62 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47BB8);
  sub_1BD0DE4F4(&qword_1EBD47BC0, &qword_1EBD47BB8);
  sub_1BE0504A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);
  sub_1BE0516C4();
  v53 = type metadata accessor for PaymentPassMethodSheet;
  v21 = v8;
  v48 = v8;
  sub_1BD4CCE58(a2, v8, type metadata accessor for PaymentPassMethodSheet);
  v22 = *(v51 + 80);
  v50 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v51 = type metadata accessor for PaymentPassMethodSheet;
  sub_1BD4CCEC0(v21, v23 + ((v22 + 16) & ~v22), type metadata accessor for PaymentPassMethodSheet);
  _s11DetailSheetOMa();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47BC8);
  sub_1BD0DE4F4(&qword_1EBD47BD0, &qword_1EBD47BA0);
  sub_1BD4CD3A0(&qword_1EBD47BD8, _s11DetailSheetOMa);
  sub_1BD4CD3E8();
  v24 = v47;
  v25 = v12;
  v26 = v54;
  v27 = v45;
  sub_1BE051124();

  sub_1BD0DE53C(v25, &qword_1EBD47B98);
  (*(v55 + 8))(v27, v26);
  sub_1BE051CD4();
  sub_1BE04EE54();
  v28 = (v24 + *(v56 + 36));
  v29 = v76;
  v28[4] = v75;
  v28[5] = v29;
  v28[6] = v77;
  v30 = v72;
  *v28 = v71;
  v28[1] = v30;
  v31 = v74;
  v28[2] = v73;
  v28[3] = v31;
  v32 = v46;
  v33 = v46 + *(v49 + 116);
  v34 = *(v33 + 48);
  v35 = *(v33 + 16);
  v78 = *v33;
  v79 = v35;
  v80 = *(v33 + 32);
  *&v81 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C50);
  sub_1BE0516C4();
  v63 = v67;
  v64 = v68;
  v65 = v69;
  v66 = v70;
  v36 = v48;
  sub_1BD4CCE58(v32, v48, v53);
  v37 = v50;
  v38 = swift_allocObject();
  sub_1BD4CCEC0(v36, v38 + v37, v51);
  sub_1BD4CD938();
  sub_1BD4CDAA8();
  sub_1BD459428();
  v39 = v57;
  sub_1BE050F74();

  v78 = v63;
  v79 = v64;
  v80 = v65;
  v81 = v66;
  sub_1BD0DE53C(&v78, &qword_1EBD47C68);
  sub_1BD0DE53C(v24, &qword_1EBD47BA8);
  v40 = sub_1BE051274();
  LOBYTE(v22) = sub_1BE0501D4();
  v41 = sub_1BE051CD4();
  v42 = v39 + *(v58 + 36);
  *v42 = v40;
  *(v42 + 8) = v22;
  *(v42 + 16) = v41;
  *(v42 + 24) = v43;
  sub_1BD4CDB04();
  sub_1BD4CDC28();
  sub_1BD4CDC7C();
  sub_1BE048964();
  sub_1BE050D64();

  return sub_1BD0DE53C(v39, &qword_1EBD47BB0);
}

id sub_1BD4BCD74@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v182 = a2;
  v181 = a3;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C88);
  v184 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186, v4);
  v173 = &v156 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C90);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v172 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v171 = &v156 - v11;
  v12 = type metadata accessor for PaymentPassMethodSheet(0);
  v165 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v166 = v14;
  v167 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for PaymentPassBillingAddressSection();
  MEMORY[0x1EEE9AC00](v168, v15);
  v170 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v169 = &v156 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C98);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v180 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v185 = &v156 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CA0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v179 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v194 = &v156 - v31;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CA8);
  v178 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183, v32);
  v160 = &v156 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CB0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v193 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v192 = &v156 - v39;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CB8);
  MEMORY[0x1EEE9AC00](v177, v40);
  v42 = &v156 - v41;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CC0);
  MEMORY[0x1EEE9AC00](v176, v43);
  v45 = &v156 - v44;
  v161 = sub_1BE04BD74();
  v159 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161, v46);
  v158 = &v156 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CC8);
  v157 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163, v48);
  v156 = &v156 - v49;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CD0);
  MEMORY[0x1EEE9AC00](v162, v50);
  v52 = &v156 - v51;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C8);
  v53 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174, v54);
  v56 = &v156 - v55;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CD8);
  MEMORY[0x1EEE9AC00](v175, v57);
  v59 = &v156 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CE0);
  MEMORY[0x1EEE9AC00](v60 - 8, v61);
  v191 = &v156 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v195 = &v156 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CE8);
  MEMORY[0x1EEE9AC00](v66 - 8, v67);
  v190 = &v156 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = &v156 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CF0);
  MEMORY[0x1EEE9AC00](v73 - 8, v74);
  v189 = &v156 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76, v77);
  v187 = &v156 - v78;
  sub_1BD4BE2E4(&v156 - v78);
  v188 = v72;
  sub_1BD4BE8D4(v72);
  v79 = a1[*(v12 + 100)];
  v80 = v12;
  v81 = *(v12 + 24);
  v82 = a1;
  v83 = &a1[v81];
  v182 = type metadata accessor for Passes(0);
  v84 = *(*&v83[*(v182 + 28)] + 16);
  v164 = v79;
  if (v79 == 1)
  {
    if (v84 || PKOslo2024UIUpdatesEnabled() && *(*&v82[v80[22]] + 16))
    {
      sub_1BD4BED10(v56);
      sub_1BD0DE19C(v56, v52, &qword_1EBD469C8);
      swift_storeEnumTagMultiPayload();
      sub_1BD462198();
      sub_1BD4CDDCC();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v56, &qword_1EBD469C8);
    }

    else
    {
      v86 = v159;
      v87 = v158;
      (*(v159 + 104))(v158, *MEMORY[0x1E69B8068], v161);
      result = PKPassKitBundle();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v89 = result;
      v90 = sub_1BE04B6F4();
      v92 = v91;

      (*(v86 + 8))(v87, v161);
      *&v197 = v90;
      *(&v197 + 1) = v92;
      sub_1BD0DDEBC();
      *&v197 = sub_1BE0506C4();
      *(&v197 + 1) = v93;
      LOBYTE(v198) = v94 & 1;
      *(&v198 + 1) = v95;
      MEMORY[0x1EEE9AC00](v197, v93);
      *(&v156 - 2) = v82;
      sub_1BD462198();
      v96 = v156;
      sub_1BE051A24();
      v97 = v157;
      v98 = v163;
      (*(v157 + 16))(v52, v96, v163);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CDDCC();
      sub_1BE04F9A4();
      (*(v97 + 8))(v96, v98);
    }

    v99 = v192;
    sub_1BD0DE19C(v59, v45, &qword_1EBD47CD8);
    swift_storeEnumTagMultiPayload();
    sub_1BD4CDD40();
    sub_1BD4CDEF4(&qword_1EBD47D08, &qword_1EBD47CB8, &unk_1BE0DAFC0, sub_1BD462198);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v59, &qword_1EBD47CD8);
  }

  else
  {
    if (v84 && !PKOslo2024UIUpdatesEnabled())
    {
      v85 = 1;
    }

    else
    {
      sub_1BD4BED10(v56);
      sub_1BD0DE204(v56, v42, &qword_1EBD469C8);
      v85 = 0;
    }

    (*(v53 + 56))(v42, v85, 1, v174);
    sub_1BD0DE19C(v42, v45, &qword_1EBD47CB8);
    swift_storeEnumTagMultiPayload();
    sub_1BD4CDD40();
    sub_1BD4CDEF4(&qword_1EBD47D08, &qword_1EBD47CB8, &unk_1BE0DAFC0, sub_1BD462198);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v42, &qword_1EBD47CB8);
    v99 = v192;
  }

  v100 = &v82[v80[6]];
  v101 = v178;
  if (*(v100 + *(v182 + 32)) != 1)
  {
    goto LABEL_19;
  }

  v102 = &v82[v80[36]];
  v104 = *v102;
  v103 = *(v102 + 1);
  *&v197 = v104;
  *(&v197 + 1) = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B90);
  sub_1BE0516A4();
  v105 = *(v196 + 16);

  v106 = v164 ^ 1;
  if (!v105)
  {
    v106 = 1;
  }

  if (v106)
  {
LABEL_19:
    v114 = 1;
    v113 = v183;
  }

  else
  {
    *&v197 = sub_1BD4BF034();
    *(&v197 + 1) = v107;
    sub_1BD0DDEBC();
    *&v197 = sub_1BE0506C4();
    *(&v197 + 1) = v108;
    LOBYTE(v198) = v109 & 1;
    *(&v198 + 1) = v110;
    MEMORY[0x1EEE9AC00](v197, v108);
    *(&v156 - 2) = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D20);
    sub_1BD4CDEF4(&qword_1EBD47D28, &qword_1EBD47D20, &unk_1BE0DB018, sub_1BD4CDF70);
    v111 = v160;
    sub_1BE051A24();
    v112 = v183;
    (*(v101 + 32))(v99, v111, v183);
    v113 = v112;
    v114 = 0;
  }

  (*(v101 + 56))(v99, v114, 1, v113);
  sub_1BD6E251C(v194);
  if (PKOslo2024UIUpdatesEnabled())
  {
    v115 = v185;
    (*(v184 + 56))(v185, 1, 1, v186);
  }

  else
  {
    v116 = v82;
    v117 = v169;
    sub_1BD4CCE58(v100, v169, type metadata accessor for Passes);
    v118 = (v116 + v80[7]);
    v119 = v118[4];
    v200 = v118[3];
    v201 = v119;
    v120 = v118[2];
    v198 = v118[1];
    v199 = v120;
    v197 = *v118;
    v121 = (v116 + v80[14]);
    v123 = *v121;
    v122 = v121[1];
    v124 = (v116 + v80[15]);
    v125 = v124[1];
    v183 = *v124;
    v126 = (v116 + v80[16]);
    v127 = v126[1];
    v182 = *v126;
    v128 = v167;
    sub_1BD4CCE58(v116, v167, type metadata accessor for PaymentPassMethodSheet);
    v129 = v99;
    v130 = (*(v165 + 80) + 16) & ~*(v165 + 80);
    v131 = swift_allocObject();
    v132 = v131 + v130;
    v99 = v129;
    sub_1BD4CCEC0(v128, v132, type metadata accessor for PaymentPassMethodSheet);
    v133 = v168;
    v134 = (v117 + *(v168 + 20));
    v135 = v200;
    v134[2] = v199;
    v134[3] = v135;
    v134[4] = v201;
    v136 = v198;
    *v134 = v197;
    v134[1] = v136;
    v137 = (v117 + v133[6]);
    *v137 = v123;
    v137[1] = v122;
    v138 = (v117 + v133[7]);
    *v138 = v183;
    v138[1] = v125;
    v139 = (v117 + v133[8]);
    *v139 = v182;
    v139[1] = v127;
    v140 = (v117 + v133[9]);
    *v140 = sub_1BD4CDE64;
    v140[1] = v131;
    sub_1BD0DE19C(&v197, &v196, &qword_1EBD395E0);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v141 = v171;
    sub_1BD4BF6A4(v171);
    v142 = v170;
    sub_1BD4CCE58(v117, v170, type metadata accessor for PaymentPassBillingAddressSection);
    v143 = v172;
    sub_1BD0DE19C(v141, v172, &qword_1EBD47C90);
    v144 = v173;
    sub_1BD4CCE58(v142, v173, type metadata accessor for PaymentPassBillingAddressSection);
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D10);
    sub_1BD0DE19C(v143, v144 + *(v145 + 48), &qword_1EBD47C90);
    sub_1BD0DE53C(v141, &qword_1EBD47C90);
    sub_1BD4CCF28(v117, type metadata accessor for PaymentPassBillingAddressSection);
    sub_1BD0DE53C(v143, &qword_1EBD47C90);
    sub_1BD4CCF28(v142, type metadata accessor for PaymentPassBillingAddressSection);
    v115 = v185;
    sub_1BD0DE204(v144, v185, &qword_1EBD47C88);
    (*(v184 + 56))(v115, 0, 1, v186);
  }

  v146 = v189;
  sub_1BD0DE19C(v187, v189, &qword_1EBD47CF0);
  v147 = v190;
  sub_1BD0DE19C(v188, v190, &qword_1EBD47CE8);
  v148 = v191;
  sub_1BD0DE19C(v195, v191, &qword_1EBD47CE0);
  v149 = v193;
  sub_1BD0DE19C(v99, v193, &qword_1EBD47CB0);
  v150 = v194;
  v151 = v179;
  sub_1BD0DE19C(v194, v179, &qword_1EBD47CA0);
  v152 = v180;
  sub_1BD0DE19C(v115, v180, &qword_1EBD47C98);
  v153 = v181;
  sub_1BD0DE19C(v146, v181, &qword_1EBD47CF0);
  v154 = v115;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D18);
  sub_1BD0DE19C(v147, v153 + v155[12], &qword_1EBD47CE8);
  sub_1BD0DE19C(v148, v153 + v155[16], &qword_1EBD47CE0);
  sub_1BD0DE19C(v149, v153 + v155[20], &qword_1EBD47CB0);
  sub_1BD0DE19C(v151, v153 + v155[24], &qword_1EBD47CA0);
  sub_1BD0DE19C(v152, v153 + v155[28], &qword_1EBD47C98);
  sub_1BD0DE53C(v154, &qword_1EBD47C98);
  sub_1BD0DE53C(v150, &qword_1EBD47CA0);
  sub_1BD0DE53C(v192, &qword_1EBD47CB0);
  sub_1BD0DE53C(v195, &qword_1EBD47CE0);
  sub_1BD0DE53C(v188, &qword_1EBD47CE8);
  sub_1BD0DE53C(v187, &qword_1EBD47CF0);
  sub_1BD0DE53C(v152, &qword_1EBD47C98);
  sub_1BD0DE53C(v151, &qword_1EBD47CA0);
  sub_1BD0DE53C(v193, &qword_1EBD47CB0);
  sub_1BD0DE53C(v191, &qword_1EBD47CE0);
  sub_1BD0DE53C(v190, &qword_1EBD47CE8);
  return sub_1BD0DE53C(v189, &qword_1EBD47CF0);
}

uint64_t sub_1BD4BE2E4@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for PeerPaymentModel();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for PeerPaymentToggleSection();
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v5);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PaymentPassMethodSheet(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v42 - v18;
  sub_1BD0DE19C(v1 + *(v8 + 40), &v42 - v18, &qword_1EBD45480);
  sub_1BD4CCE58(v1, &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_1BD4CCEC0(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PaymentPassMethodSheet);
  sub_1BD4CCE58(v1, &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
  v22 = v45;
  v23 = swift_allocObject();
  v24 = v23 + v20;
  v25 = v46;
  v26 = v48;
  sub_1BD4CCEC0(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24, type metadata accessor for PaymentPassMethodSheet);
  v27 = v25[7];
  v28 = v47;
  v43 = *(v47 + 7);
  v43(&v22[v27], 1, 1, v26);
  sub_1BD0DE19C(v19, v15, &qword_1EBD45480);
  if ((*(v28 + 48))(v15, 1, v26) == 1)
  {
    sub_1BD0DE53C(v19, &qword_1EBD45480);
  }

  else
  {
    v42 = v21;
    v47 = v19;
    v29 = v44;
    sub_1BD4CCEC0(v15, v44, type metadata accessor for PeerPaymentModel);
    if (*(v29 + v26[12]))
    {
      v30 = v25;
      v31 = &v22[v25[8]];
      v32 = v22;
      v33 = &v22[v25[9]];
      *v32 = *(v29 + v26[7]);
      v34 = v26[5];
      v35 = v26;
      v36 = v30[6];
      sub_1BD4CCE58(v29 + v34, &v32[v30[5]], type metadata accessor for AvailablePass);
      *&v32[v36] = 0;
      sub_1BD0DE53C(&v32[v27], &qword_1EBD45480);
      sub_1BD4CCE58(v29, &v32[v27], type metadata accessor for PeerPaymentModel);
      v43(&v32[v27], 0, 1, v35);
      *v33 = sub_1BD4D5884;
      v33[1] = v23;
      v37 = v42;
      *v31 = sub_1BD4D5820;
      v31[1] = v37;
      v38 = &v32[v30[10]];
      v51 = *(v29 + v35[10]);
      sub_1BE051694();
      sub_1BD4CCF28(v29, type metadata accessor for PeerPaymentModel);
      sub_1BD0DE53C(v47, &qword_1EBD45480);
      v39 = v53;
      *v38 = v52;
      *(v38 + 1) = v39;
      v40 = v50;
      sub_1BD4CCE58(v32, v50, type metadata accessor for PeerPaymentToggleSection);
      (*(v49 + 56))(v40, 0, 1, v30);
      return sub_1BD4CCF28(v32, type metadata accessor for PeerPaymentToggleSection);
    }

    sub_1BD4CCF28(v29, type metadata accessor for PeerPaymentModel);
    v15 = v47;
  }

  sub_1BD0DE53C(v15, &qword_1EBD45480);
  sub_1BD0DE53C(&v22[v27], &qword_1EBD45480);
  return (*(v49 + 56))(v50, 1, 1, v25);
}

uint64_t sub_1BD4BE8D4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentPassMethodSheet(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E60);
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v27 - v9;
  v11 = v1 + v3[6];
  if (*(*(v11 + *(type metadata accessor for Passes(0) + 28)) + 16) || PKOslo2024UIUpdatesEnabled() && *(*(v1 + v3[22]) + 16))
  {
    v12 = (v1 + v3[18]);
    v30 = v4;
    v13 = v12[1];
    *&v36[0] = *v12;
    *(&v36[0] + 1) = v13;
    sub_1BD0DDEBC();
    v29 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1BE048C84();
    v38 = sub_1BE0506C4();
    v39 = v14;
    v40 = v15 & 1;
    v41 = v16;
    v17 = sub_1BD4C36DC(v36);
    v27[1] = v27;
    v32 = v36[0];
    v33 = v36[1];
    v34 = v36[2];
    v35 = v37;
    MEMORY[0x1EEE9AC00](v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39618);
    v28 = a1;
    sub_1BD0DE4F4(&qword_1EBD47E70, &qword_1EBD47E68);
    sub_1BD10E438();
    sub_1BE051A34();
    v19 = &v10[*(v7 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);
    sub_1BE0516C4();
    v20 = v29;
    sub_1BD4CCE58(v1, v29, type metadata accessor for PaymentPassMethodSheet);
    v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v22 = swift_allocObject();
    sub_1BD4CCEC0(v20, v22 + v21, type metadata accessor for PaymentPassMethodSheet);
    v23 = &v19[*(type metadata accessor for PaymentPassDefaultConfirmationModifier(0) + 20)];
    *v23 = sub_1BD4CE798;
    v23[1] = v22;
    v24 = v28;
    sub_1BD0DE204(v10, v28, &qword_1EBD47E60);
    return (*(v31 + 56))(v24, 0, 1, v7);
  }

  else
  {
    v26 = *(v31 + 56);

    return v26(a1, 1, 1, v7);
  }
}

uint64_t sub_1BD4BED10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentPassMethodSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C0);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - v10;
  v12 = v1 + *(v3 + 24);
  if (*(v12 + *(type metadata accessor for Passes(0) + 32)) == 1)
  {
    v13 = sub_1BD4C7A7C();
    v15 = v14;
    sub_1BD4CCE58(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
    v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v17 = swift_allocObject();
    sub_1BD4CCEC0(v7, v17 + v16, type metadata accessor for PaymentPassMethodSheet);
    v18 = v1 + *(v3 + 132);
    v19 = *v18;
    v20 = *(v18 + 8);
    LOBYTE(v28) = v19;
    *(&v28 + 1) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516C4();
    v21 = v32;
    v22 = v33;
    v23 = sub_1BE0511D4();
    *&v28 = v13;
    *(&v28 + 1) = v15;
    *&v29 = sub_1BD4CE184;
    *(&v29 + 1) = v17;
    v30 = v21;
    LOBYTE(v31) = v22;
    *(&v31 + 1) = v23;
    sub_1BE052434();
    sub_1BD4622D8();
    sub_1BE050DE4();

    v32 = v28;
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_1BD4623B4(&v32);
    sub_1BD0DE204(v11, a1, &qword_1EBD469C0);
    return (*(v27 + 56))(a1, 0, 1, v8);
  }

  else
  {
    v25 = *(v27 + 56);

    return v25(a1, 1, 1, v8);
  }
}

id sub_1BD4BF034()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - v11;
  v13 = sub_1BE04C884();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD70A520(v17);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x1E69BC9B8])
  {
    (*(v1 + 104))(v12, *MEMORY[0x1E69B80D8], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v21 = sub_1BE04B6F4();

      (*(v1 + 8))(v12, v0);
      return v21;
    }

    __break(1u);
    goto LABEL_12;
  }

  v22 = *MEMORY[0x1E69B80D8];
  v23 = *(v1 + 104);
  if (v18 == *MEMORY[0x1E69BC9C8])
  {
    v23(v8, v22, v0);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v21 = sub_1BE04B6F4();

      (*(v1 + 8))(v8, v0);
      return v21;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23(v4, v22, v0);
  result = PKPassKitBundle();
  if (result)
  {
    v25 = result;
    v21 = sub_1BE04B6F4();

    (*(v1 + 8))(v4, v0);
    (*(v14 + 8))(v17, v13);
    return v21;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1BD4BF3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaymentPassMethodSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D38);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21[-v11];
  v22[3] = &type metadata for PaymentSheetFeatureFlag.Wallet;
  v22[4] = sub_1BD259180();
  LOBYTE(v22[0]) = 0;
  v13 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(v22);
  if (v13)
  {
    v14 = (a1 + *(v4 + 144));
    v16 = *v14;
    v15 = v14[1];
    v22[0] = v16;
    v22[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B90);
    sub_1BE0516A4();
    sub_1BD4CCE58(a1, &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentPassMethodSheet);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    sub_1BD4CCEC0(&v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17, type metadata accessor for PaymentPassMethodSheet);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D48);
    sub_1BD0DE4F4(&qword_1EBD47D70, &unk_1EBD43B60);
    sub_1BD4CDFF4();
    sub_1BD4CDAA8();
    sub_1BE0519D4();
    (*(v9 + 32))(a2, v12, v8);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v9 + 56))(a2, v19, 1, v8);
}

uint64_t sub_1BD4BF6A4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v37 = type metadata accessor for AvailablePass(0);
  v2 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v30 - v8;
  v31 = type metadata accessor for PaymentPassMethodSheet(0);
  v32 = v1;
  v10 = v1 + *(v31 + 24);
  result = type metadata accessor for Passes(0);
  v33 = result;
  v34 = v10;
  v12 = *(v10 + *(result + 28));
  v36 = *(v12 + 16);
  if (v36)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v16 = *(v2 + 72);
      sub_1BD4CCE58(v12 + v15 + v16 * v13, v9, type metadata accessor for AvailablePass);
      v17 = *&v9[*(v37 + 60)];
      if (v17 >> 62)
      {
        if (sub_1BE053704())
        {
LABEL_8:
          sub_1BD4CCEC0(v9, v5, type metadata accessor for AvailablePass);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BD531A40(0, *(v14 + 16) + 1, 1);
            v14 = v38;
          }

          v20 = *(v14 + 16);
          v19 = *(v14 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_1BD531A40(v19 > 1, v20 + 1, 1);
            v14 = v38;
          }

          *(v14 + 16) = v20 + 1;
          result = sub_1BD4CCEC0(v5, v14 + v15 + v20 * v16, type metadata accessor for AvailablePass);
          goto LABEL_4;
        }
      }

      else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

      result = sub_1BD4CCF28(v9, type metadata accessor for AvailablePass);
LABEL_4:
      if (v36 == ++v13)
      {
        goto LABEL_16;
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_16:
  if (*(*(v34 + *(v33 + 36)) + 16) || *(v14 + 16))
  {
    v21 = v32;
    v22 = (v32 + *(v31 + 76));
    v23 = v22[1];
    v38 = *v22;
    v39 = v23;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v38 = sub_1BE0506C4();
    v39 = v24;
    v40 = v25 & 1;
    v41 = v26;
    MEMORY[0x1EEE9AC00](v38, v24);
    *(&v30 - 2) = v14;
    *(&v30 - 1) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DA0);
    sub_1BD0DE4F4(&qword_1EBD47DA8, &qword_1EBD47DA0);
    v27 = v35;
    sub_1BE051A24();

    v28 = 0;
  }

  else
  {

    v28 = 1;
    v27 = v35;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DB0);
  return (*(*(v29 - 8) + 56))(v27, v28, 1, v29);
}

id sub_1BD4BFAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for PaymentPassMethodSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v18 = *(a1 + 40);
  v11 = *(a2 + *(v10 + 48));
  sub_1BD4CCE58(a2, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_1BD4CCEC0(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PaymentPassMethodSheet);
  *a3 = v18;
  a3[1] = v11;
  a3[2] = sub_1BD4CDCD0;
  a3[3] = v13;
  v14 = v11;
  v15 = v18;

  return v15;
}

void sub_1BD4BFBFC(void *a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for PaymentPassMethodSheet(0) + 96));
  if (v3)
  {
    sub_1BE048964();
    if ((v3(a1) & 1) == 0 && a1 && (v4 = [a1 paymentPass]) != 0)
    {
      v5 = v4;
      v6 = [v4 localizedDescription];
      sub_1BE052434();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
      sub_1BE0516B4();
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      sub_1BE0516B4();
      sub_1BD0D4744(v3);
    }

    else
    {

      sub_1BD0D4744(v3);
    }
  }
}

uint64_t sub_1BD4BFDA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  sub_1BE048964();
  sub_1BE048C84();

  return sub_1BE048C84();
}

void sub_1BD4BFDF4(uint64_t a1)
{
  v2 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v76 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v78, v5);
  v7 = (v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AvailablePass(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PaymentPassMethodSheet(0);
  v14 = *(a1 + *(v13 + 40));
  if (!v14)
  {
    return;
  }

  v74 = v13;
  v15 = a1 + *(v13 + 24);
  v16 = type metadata accessor for Passes(0);
  v17 = *(v15 + *(v16 + 28));
  MEMORY[0x1EEE9AC00](v16, v18);
  v75 = a1;
  v72[-2] = a1;
  v72[-1] = v14;
  v19 = v14;
  sub_1BE048C84();
  sub_1BD1CE7CC(sub_1BD4CCE38, &v72[-4], v17);
  v21 = v20;
  v72[1] = 0;
  v73 = v19;

  v77 = *(v21 + 16);
  if (v77)
  {
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v22 >= *(v21 + 16))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        return;
      }

      sub_1BD4CCE58(v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v12, type metadata accessor for AvailablePass);
      sub_1BD4CCE58(v12, v7, type metadata accessor for WrappedPass);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v31 = v76;
          sub_1BD4CCEC0(v7, v76, type metadata accessor for PlaceholderPass);
          v28 = *(v31 + 16);
          v30 = *(v31 + 24);
          sub_1BE048C84();
          sub_1BD4CCF28(v31, type metadata accessor for PlaceholderPass);
          goto LABEL_12;
        }

        v25 = *v7;
        v26 = [*v7 passIdentifier];
        if (!v26)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v25 = *v7;
        v26 = [*v7 uniqueID];
        if (!v26)
        {
          goto LABEL_56;
        }
      }

      v27 = v26;
      v28 = sub_1BE052434();
      v30 = v29;

LABEL_12:
      sub_1BD4CCF28(v12, type metadata accessor for AvailablePass);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1BD03B038(0, *(v23 + 2) + 1, 1, v23);
      }

      v33 = *(v23 + 2);
      v32 = *(v23 + 3);
      if (v33 >= v32 >> 1)
      {
        v23 = sub_1BD03B038((v32 > 1), v33 + 1, 1, v23);
      }

      ++v22;
      *(v23 + 2) = v33 + 1;
      v34 = &v23[16 * v33];
      *(v34 + 4) = v28;
      *(v34 + 5) = v30;
      if (v77 == v22)
      {
        goto LABEL_19;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v77 = sub_1BD537298(v23);

  v35 = *(v75 + *(v74 + 84));
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = 0;
    v38 = v35 + 40;
    v78 = *(v35 + 16);
    v75 = v36 - 1;
    v39 = MEMORY[0x1E69E7CC0];
    v76 = v35 + 40;
LABEL_21:
    v40 = (v38 + 16 * v37);
    v41 = v37;
    while (v41 < *(v35 + 16))
    {
      v42 = *(v40 - 8);
      v43 = *v40;
      v37 = v41 + 1;
      v44 = *v40;
      v45 = sub_1BD11285C(&unk_1F3B8E350);
      v46 = sub_1BD6CC328(v42, v45);

      if (v46)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD532168(0, *(v39 + 16) + 1, 1);
          v39 = v79;
        }

        v49 = *(v39 + 16);
        v48 = *(v39 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1BD532168((v48 > 1), v49 + 1, 1);
          v39 = v79;
        }

        *(v39 + 16) = v49 + 1;
        v50 = v39 + 16 * v49;
        *(v50 + 32) = v42;
        *(v50 + 40) = v43;
        v38 = v76;
        if (v75 != v41)
        {
          goto LABEL_21;
        }

        goto LABEL_33;
      }

      v40 += 2;
      ++v41;
      if (v78 == v37)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_55;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v51 = 0;
  v52 = *(v39 + 16);
  v53 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v54 = 16 * v51 + 40;
  while (v52 != v51)
  {
    if (v51 >= *(v39 + 16))
    {
      __break(1u);
      goto LABEL_54;
    }

    v55 = *(v39 + v54);
    v54 += 16;
    ++v51;
    if (v55)
    {
      v56 = v55;
      v57 = [v56 identifier];
      v58 = sub_1BE052434();
      v60 = v59;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_1BD03B038(0, *(v53 + 2) + 1, 1, v53);
      }

      v62 = *(v53 + 2);
      v61 = *(v53 + 3);
      if (v62 >= v61 >> 1)
      {
        v53 = sub_1BD03B038((v61 > 1), v62 + 1, 1, v53);
      }

      *(v53 + 2) = v62 + 1;
      v63 = &v53[16 * v62];
      *(v63 + 4) = v58;
      *(v63 + 5) = v60;
      goto LABEL_34;
    }
  }

  sub_1BD537298(v53);

  v64 = MEMORY[0x1E69E7CD0];
  v79 = MEMORY[0x1E69E7CD0];
  v65 = sub_1BE052A24();

  v66 = v73;
  v67 = [v73 merchandisingIdentifiersForPassUniqueIDs_];

  if (v67)
  {
    v64 = sub_1BE052A34();
  }

  sub_1BD4C0580(v64);
  v68 = sub_1BE052A24();

  v69 = [v66 merchandisingIdentifiersForCriteriaIdentifiers_];

  if (v69)
  {
    v70 = sub_1BE052A34();
  }

  else
  {
    v70 = MEMORY[0x1E69E7CD0];
  }

  sub_1BD4C0580(v70);
  if (*(v79 + 16))
  {
    v71 = sub_1BE052A24();

    [v66 updateMerchandisingDetailsIfNecessaryForMerchandisingIdentifiers_];
  }

  else
  {
  }
}

uint64_t sub_1BD4C0580(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_1BE048C84();
      sub_1BD2A5644(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

id sub_1BD4C0684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v16 - v2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8068], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v5 + 8))(v9, v4);
    v16[0] = v12;
    v16[1] = v14;
    sub_1BE04E1A4();
    v15 = sub_1BE04E1D4();
    (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
    sub_1BD0DDEBC();
    return sub_1BE051724();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD4C0884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8068], v4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0B69E0;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1BD110550();
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  sub_1BE048C84();
  v13 = sub_1BE04B714();
  v15 = v14;

  (*(v5 + 8))(v9, v4);
  v20[0] = v13;
  v20[1] = v15;
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_1BD4C0A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  sub_1BE0528A4();
  v3[11] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD4C0AD0, v5, v4);
}

uint64_t sub_1BD4C0AD0()
{
  *(v0 + 40) = &type metadata for PaymentSheetFeatureFlag.Wallet;
  v1 = sub_1BD259180();
  *(v0 + 16) = 0;
  *(v0 + 48) = v1;
  v2 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if ((v2 & 1) != 0 && (v3 = *(v0 + 80), v4 = type metadata accessor for PaymentPassMethodSheet(0), *(v0 + 112) = v4, v5 = *(v3 + *(v4 + 104)), (*(v0 + 120) = v5) != 0))
  {
    sub_1BE048964();
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = sub_1BD4C0BF8;

    return ProvisioningAvailableCredentialsProvider.availableCredentials()();
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1BD4C0BF8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1BD4C0D20, v4, v3);
}

uint64_t sub_1BD4C0D20()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[10];

  v4 = (v3 + *(v2 + 144));
  v5 = v4[1];
  v0[7] = *v4;
  v0[8] = v5;
  v0[9] = v1;
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B90);
  sub_1BE0516B4();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BD4C0E00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = type metadata accessor for PaymentPassMethodSheet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v9 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D68);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v27 - v13;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D58);
  v15 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v16);
  v18 = &v27 - v17;
  v19 = a1[1];
  v31 = *a1;
  v32 = v19;
  v33 = a1[2];
  sub_1BD4CCE58(a2, v9, type metadata accessor for PaymentPassMethodSheet);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_1BD4CCEC0(v9, v22 + v20, type metadata accessor for PaymentPassMethodSheet);
  v23 = (v22 + v21);
  v24 = v32;
  *v23 = v31;
  v23[1] = v24;
  v23[2] = v33;
  v29 = &v31;
  sub_1BD4CE35C(&v31, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D78);
  sub_1BD0DE4F4(&qword_1EBD47D80, &qword_1EBD47D78);
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD47D60, &qword_1EBD47D68);
  sub_1BE050DE4();

  (*(v11 + 8))(v14, v10);
  v25 = v28;
  sub_1BD0DE204(v18, v28, &qword_1EBD47D58);
  return (*(v15 + 56))(v25, 0, 1, v27);
}

uint64_t sub_1BD4C11B4(uint64_t a1, uint64_t a2)
{
  v14 = *(a2 + 16);
  v15 = *a2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = (a1 + *(type metadata accessor for PaymentPassMethodSheet(0) + 108));
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = v5[6];
  v21 = *v5;
  v6 = v21;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v17 = v15;
  v18 = v14;
  v19 = v3;
  v20 = v4;
  sub_1BD4CE35C(a2, v16);
  sub_1BD4CE3B8(v6, v7, v8, v9, v10, v11);
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C50);
  sub_1BE0516B4();
  sub_1BD4CE414(v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1BD4C12B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D88);
  return sub_1BD4C1310(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD4C1310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v68 = sub_1BE04C894();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v3);
  v64 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1BE04C764();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v5);
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v71 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v62 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v70 = &v62 - v15;
  v16 = sub_1BE051584();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 32);
  sub_1BE051544();
  (*(v17 + 104))(v20, *MEMORY[0x1E6981630], v16);
  v73 = sub_1BE0515E4();

  (*(v17 + 8))(v20, v16);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  LOBYTE(v85) = 1;
  *&v75[6] = v77;
  *&v75[22] = v78;
  *&v75[38] = v79;
  v72 = sub_1BE050224();
  sub_1BE04E1F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = *a1;
  v31 = *(a1 + 8);
  v85 = v30;
  v86 = v31;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v32 = sub_1BE0506C4();
  v34 = v33;
  v36 = v35;
  sub_1BE051224();
  v37 = sub_1BE050564();
  v39 = v38;
  LOBYTE(v17) = v40;
  v42 = v41;

  sub_1BD0DDF10(v32, v34, v36 & 1);

  v85 = v37;
  v86 = v39;
  LOBYTE(v17) = v17 & 1;
  LOBYTE(v87) = v17;
  *(&v88 + 6) = v42;
  sub_1BE052434();
  v43 = v70;
  sub_1BE050DE4();

  sub_1BD0DDF10(v37, v39, v17);

  (*(v66 + 104))(v64, *MEMORY[0x1E69BCA00], v68);
  v44 = v71;
  sub_1BE04C754();
  v45 = v62;
  sub_1BD0DE19C(v43, v62, &qword_1EBD452C0);
  v74 = 1;
  v46 = v65;
  v47 = *(v65 + 16);
  v48 = v63;
  v49 = v67;
  v47(v63, v44, v67);
  v80 = v73;
  LOWORD(v81[0]) = 1;
  *(v81 + 2) = *v75;
  *(&v81[1] + 2) = *&v75[16];
  *(&v81[2] + 2) = *&v75[32];
  *&v81[3] = *&v75[46];
  BYTE8(v81[3]) = v72;
  *(&v81[3] + 9) = *v76;
  HIDWORD(v81[3]) = *&v76[3];
  *&v82 = v23;
  *(&v82 + 1) = v25;
  *&v83 = v27;
  *(&v83 + 1) = v29;
  v50 = v81[2];
  v51 = v82;
  v52 = v83;
  v53 = v69;
  *(v69 + 64) = v81[3];
  *(v53 + 80) = v51;
  v54 = v81[0];
  v55 = v81[1];
  *v53 = v80;
  *(v53 + 16) = v54;
  *(v53 + 32) = v55;
  *(v53 + 48) = v50;
  v84 = 0;
  *(v53 + 112) = 0;
  *(v53 + 96) = v52;
  v56 = v53;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D90);
  sub_1BD0DE19C(v45, v56 + v57[12], &qword_1EBD452C0);
  v58 = v56 + v57[16];
  v59 = v74;
  *v58 = 0;
  *(v58 + 8) = v59;
  v47((v56 + v57[20]), v48, v49);
  sub_1BD0DE19C(&v80, &v85, &qword_1EBD47D98);
  v60 = *(v46 + 8);
  v60(v71, v49);
  sub_1BD0DE53C(v70, &qword_1EBD452C0);
  v60(v48, v49);
  sub_1BD0DE53C(v45, &qword_1EBD452C0);
  v88 = *v75;
  v85 = v73;
  v86 = 0;
  v87 = 1;
  v89 = *&v75[16];
  *v90 = *&v75[32];
  *&v90[14] = *&v75[46];
  v91 = v72;
  *v92 = *v76;
  *&v92[3] = *&v76[3];
  v93 = v23;
  v94 = v25;
  v95 = v27;
  v96 = v29;
  v97 = 0;
  return sub_1BD0DE53C(&v85, &qword_1EBD47D98);
}

uint64_t sub_1BD4C19B4(char a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04D084();
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BD026000, v9, v10, "Toggled peer payment", v11, 2u);
    MEMORY[0x1BFB45F20](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = (v2 + *(type metadata accessor for PaymentPassMethodSheet(0) + 156));
  v13 = *v12;
  v14 = *(v12 + 1);
  v16[16] = v13;
  v17 = v14;
  v16[15] = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78);
  return sub_1BE0516B4();
}

void sub_1BD4C1B48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v33 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for PeerPaymentModel();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v35 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1BE04D214();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v21 = sub_1BE04D204();
  v22 = sub_1BE052C54();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1BD026000, v21, v22, "Tapped peer payment terms", v23, 2u);
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  (*(v17 + 8))(v20, v16);
  v24 = type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v1 + *(v24 + 32), v11, &qword_1EBD45480);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD45480);
    return;
  }

  v25 = v35;
  sub_1BD4CCEC0(v11, v35, type metadata accessor for PeerPaymentModel);
  if (![*v25 termsAcceptanceRequired])
  {
    v30 = v33;
    sub_1BD4CCE58(v25 + *(v12 + 20), v33, type metadata accessor for AvailablePass);
    v31 = _s11DetailSheetOMa();
    swift_storeEnumTagMultiPayload();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    sub_1BD0DE19C(v30, v34, &unk_1EBD43B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);
    sub_1BE0516B4();
    sub_1BD0DE53C(v30, &unk_1EBD43B20);
    goto LABEL_10;
  }

  v26 = [objc_opt_self() sharedService];
  if (!v26)
  {
    __break(1u);
    goto LABEL_13;
  }

  v27 = v26;
  v28 = [v26 targetDevice];

  if (!v28)
  {
LABEL_13:
    __break(1u);
    return;
  }

  aBlock[4] = sub_1BD4C818C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD20815C;
  aBlock[3] = &block_descriptor_104_0;
  v29 = _Block_copy(aBlock);
  [v28 updateAccountWithCompletion_];
  _Block_release(v29);
  swift_unknownObjectRelease();
LABEL_10:
  sub_1BD4CCF28(v25, type metadata accessor for PeerPaymentModel);
}

uint64_t sub_1BD4C204C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F30);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v79 = &v67 - v8;
  v9 = type metadata accessor for PaymentPassMethodSheet(0);
  v73 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v74 = v11;
  v76 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AvailablePass(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v67 = &v67 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39738);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v68 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v67 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v67 - v32;
  v34 = *(a1 + *(v12 + 56));
  if (v34 >> 62)
  {
    v35 = sub_1BE053704();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v78 = a2;
  if (v35 > 1)
  {
    v36 = 0;
    v72 = 0;
    goto LABEL_11;
  }

  v37 = *(a1 + *(v12 + 60));
  if (v37 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_7;
    }
  }

  else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    v38 = a2;
    v36 = a2;
    v72 = a2;
    goto LABEL_11;
  }

  v72 = 0;
  v36 = a2;
LABEL_11:
  v69 = sub_1BD4C290C(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);
  v77 = v3;
  sub_1BE0516A4();
  sub_1BD4CCE58(a1, v29, type metadata accessor for AvailablePass);
  (*(v13 + 56))(v29, 0, 1, v12);
  v39 = *(v19 + 48);
  sub_1BD0DE19C(v33, v22, &qword_1EBD520A0);
  sub_1BD0DE19C(v29, &v22[v39], &qword_1EBD520A0);
  v70 = v13;
  v40 = *(v13 + 48);
  if (v40(v22, 1, v12) == 1)
  {
    sub_1BD0DE53C(v29, &qword_1EBD520A0);
    sub_1BD0DE53C(v33, &qword_1EBD520A0);
    v41 = v40(&v22[v39], 1, v12);
    v42 = v77;
    if (v41 == 1)
    {
      sub_1BD0DE53C(v22, &qword_1EBD520A0);
      v43 = 2;
      v44 = v72;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v45 = v68;
  sub_1BD0DE19C(v22, v68, &qword_1EBD520A0);
  if (v40(&v22[v39], 1, v12) == 1)
  {
    sub_1BD0DE53C(v29, &qword_1EBD520A0);
    sub_1BD0DE53C(v33, &qword_1EBD520A0);
    sub_1BD4CCF28(v45, type metadata accessor for AvailablePass);
    v42 = v77;
LABEL_16:
    sub_1BD0DE53C(v22, &qword_1EBD39738);
    v44 = v72;
LABEL_17:
    v43 = v69 & 1;
    goto LABEL_18;
  }

  v64 = v67;
  sub_1BD4CCEC0(&v22[v39], v67, type metadata accessor for AvailablePass);
  v65 = v45;
  v66 = sub_1BD498D50(v45, v64);
  sub_1BD4CCF28(v64, type metadata accessor for AvailablePass);
  sub_1BD0DE53C(v29, &qword_1EBD520A0);
  sub_1BD0DE53C(v33, &qword_1EBD520A0);
  sub_1BD4CCF28(v65, type metadata accessor for AvailablePass);
  sub_1BD0DE53C(v22, &qword_1EBD520A0);
  v42 = v77;
  v44 = v72;
  if ((v66 & 1) == 0)
  {
    goto LABEL_17;
  }

  v43 = 2;
LABEL_18:
  v46 = v76;
  sub_1BD4CCE58(v42, v76, type metadata accessor for PaymentPassMethodSheet);
  v47 = v75;
  sub_1BD4CCE58(a1, v75, type metadata accessor for AvailablePass);
  v48 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v49 = (v74 + *(v70 + 80) + v48) & ~*(v70 + 80);
  v50 = (v71 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  sub_1BD4CCEC0(v46, v51 + v48, type metadata accessor for PaymentPassMethodSheet);
  v52 = sub_1BD4CCEC0(v47, v51 + v49, type metadata accessor for AvailablePass);
  v53 = v78;
  *(v51 + v50) = v78;
  MEMORY[0x1EEE9AC00](v52, v54);
  *(&v67 - 4) = a1;
  *(&v67 - 3) = v44;
  *(&v67 - 16) = v43;
  type metadata accessor for PassRow(0);
  sub_1BD4CD3A0(&qword_1EBD397D8, type metadata accessor for PassRow);
  v55 = v53;
  sub_1BE048964();
  v56 = v79;
  sub_1BE051704();
  if (v43 > 1)
  {
    v59 = 1;
    v58 = v81;
    v57 = v82;
  }

  else
  {
    v58 = v81;
    v57 = v82;
    v59 = sub_1BE053B84();
  }

  KeyPath = swift_getKeyPath();
  v61 = swift_allocObject();
  *(v61 + 16) = v59 & 1;
  (*(v80 + 32))(v57, v56, v58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F20);
  v63 = (v57 + *(result + 36));
  *v63 = KeyPath;
  v63[1] = sub_1BD10DF54;
  v63[2] = v61;
  return result;
}

uint64_t sub_1BD4C290C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - v14;
  v16 = *(v2 + 8);
  if (v16 == 2)
  {
    v23 = sub_1BD492F00();
    v25 = v24;
    v20 = v2 + *(type metadata accessor for PaymentPassMethodSheet(0) + 24);
    sub_1BD0DE19C(v20, v11, &qword_1EBD520A0);
    v26 = type metadata accessor for AvailablePass(0);
    if ((*(*(v26 - 8) + 48))(v11, 1, v26) == 1)
    {
      v22 = v11;
      goto LABEL_7;
    }

    sub_1BD4CCE58(v11, v7, type metadata accessor for WrappedPass);
    sub_1BD4CCF28(v11, type metadata accessor for AvailablePass);
    v37 = sub_1BD492F00();
    v39 = v38;
    sub_1BD4CCF28(v7, type metadata accessor for WrappedPass);
    if (v23 == v37 && v25 == v39)
    {

      if (!a2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v41 = sub_1BE053B84();

      if ((v41 & 1) == 0)
      {
        goto LABEL_8;
      }

      if (!a2)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    if (v16)
    {
      goto LABEL_8;
    }

    v17 = sub_1BD492F00();
    v19 = v18;
    v20 = v2 + *(type metadata accessor for PaymentPassMethodSheet(0) + 24);
    sub_1BD0DE19C(v20, v15, &qword_1EBD520A0);
    v21 = type metadata accessor for AvailablePass(0);
    if ((*(*(v21 - 8) + 48))(v15, 1, v21) == 1)
    {
      v22 = v15;
LABEL_7:
      sub_1BD0DE53C(v22, &qword_1EBD520A0);

      goto LABEL_8;
    }

    sub_1BD4CCE58(v15, v7, type metadata accessor for WrappedPass);
    sub_1BD4CCF28(v15, type metadata accessor for AvailablePass);
    v29 = sub_1BD492F00();
    v31 = v30;
    sub_1BD4CCF28(v7, type metadata accessor for WrappedPass);
    if (v17 != v29 || v19 != v31)
    {
      v33 = sub_1BE053B84();

      if ((v33 & 1) == 0)
      {
        goto LABEL_8;
      }

      if (a2)
      {
        goto LABEL_16;
      }

LABEL_24:
      v27 = 1;
      return v27 & 1;
    }

    if (!a2)
    {
      goto LABEL_24;
    }
  }

LABEL_16:
  v34 = *(v20 + *(type metadata accessor for Passes(0) + 20));
  if (v34)
  {
    sub_1BD0E5E8C(0, &qword_1EBD43BA0);
    v35 = a2;
    v36 = v34;
    v27 = sub_1BE053074();

    return v27 & 1;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

void sub_1BD4C2D30(uint64_t a1, void *a2)
{
  v76 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v66 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v66 - v14;
  v16 = type metadata accessor for AvailablePass(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PaymentPassMethodSheet(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD4CCE58(v2, v24, type metadata accessor for PaymentPassMethodSheet);
  sub_1BD4CCE58(a1, v20, type metadata accessor for AvailablePass);
  if (!PKOslo2024UIUpdatesEnabled())
  {
    v31 = *&v24[v21[13]];
    sub_1BD4CCE58(v20, v15, type metadata accessor for AvailablePass);
    (*(v17 + 56))(v15, 0, 1, v16);
LABEL_7:
    v32 = &v24[v21[39]];
    v33 = *v32;
    v34 = *(v32 + 1);
    v78 = v33;
    v79 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78);
    sub_1BE0516A4();
    v31(v15, v76, v77);
    v35 = sub_1BD0DE53C(v15, &qword_1EBD520A0);
    (*&v24[v21[23]])(v35);
LABEL_8:
    sub_1BD4CCF28(v20, type metadata accessor for AvailablePass);
    sub_1BD4CCF28(v24, type metadata accessor for PaymentPassMethodSheet);
    return;
  }

  v75 = v17;
  v25 = *(v2 + v21[10]);
  if (!v25)
  {
    v31 = *&v24[v21[13]];
    sub_1BD4CCE58(v20, v15, type metadata accessor for AvailablePass);
    (*(v75 + 56))(v15, 0, 1, v16);
    goto LABEL_7;
  }

  v74 = v16;
  v71 = v7;
  v72 = v2;
  v26 = v25;
  v73 = a1;
  sub_1BD49C81C(v26);
  v27 = sub_1BE052404();
  v28 = [v26 eligiblePaymentOfferCriteriaForPassUniqueID_];

  v29 = v76;
  if (v28)
  {
    sub_1BD0E5E8C(0, &unk_1EBD496A0);
    v30 = sub_1BE052744();
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v67 = v30 >> 62;
  if (v30 >> 62)
  {
    goto LABEL_40;
  }

  v36 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
LABEL_41:

    v61 = *&v24[v21[13]];
    sub_1BD4CCE58(v20, v15, type metadata accessor for AvailablePass);
    (*(v75 + 56))(v15, 0, 1, v74);
    v62 = &v24[v21[39]];
    v63 = *v62;
    v64 = *(v62 + 1);
    v78 = v63;
    v79 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78);
    sub_1BE0516A4();
    v61(v15, v29, v77);
    v65 = sub_1BD0DE53C(v15, &qword_1EBD520A0);
    (*&v24[v21[23]])(v65);

    goto LABEL_8;
  }

LABEL_13:
  v66 = v11;
  v69 = v21;
  v70 = v26;
  v68 = v20;
  v26 = 0;
  v29 = v30 & 0xC000000000000001;
  v21 = (v30 & 0xFFFFFFFFFFFFFF8);
  v11 = &selRef_thumbnailWidth;
  while (1)
  {
    if (v29)
    {
      v37 = MEMORY[0x1BFB40900](v26, v30);
    }

    else
    {
      if (v26 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v37 = *(v30 + 8 * v26 + 32);
    }

    v38 = v37;
    v20 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v36 = sub_1BE053704();
      if (!v36)
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }

    if ([v37 type] == 1)
    {
      break;
    }

    v26 = v26 + 1;
    if (v20 == v36)
    {

      goto LABEL_33;
    }
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39)
  {

    goto LABEL_32;
  }

  v40 = v39;
  if (v67)
  {
    v41 = sub_1BE053704();
  }

  else
  {
    v41 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v41 != 1)
  {
LABEL_32:

LABEL_33:
    v43 = v75;
    v44 = v76;
    v46 = v68;
    v45 = v69;
LABEL_34:
    v48 = *&v24[v45[13]];
    sub_1BD4CCE58(v46, v15, type metadata accessor for AvailablePass);
    (*(v43 + 56))(v15, 0, 1, v74);
    v49 = &v24[v45[39]];
    v50 = *v49;
    v51 = *(v49 + 1);
    v78 = v50;
    v79 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78);
    sub_1BE0516A4();
    v48(v15, v44, v77);
    sub_1BD0DE53C(v15, &qword_1EBD520A0);
    sub_1BD4CCF28(v46, type metadata accessor for AvailablePass);
    sub_1BD4CCF28(v24, type metadata accessor for PaymentPassMethodSheet);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60);
    v53 = *(v52 + 48);
    v54 = *(v52 + 64);
    v55 = v66;
    sub_1BD4CCE58(v73, v66, type metadata accessor for AvailablePass);
    *(v55 + v53) = v44;
    v56 = v72 + v45[39];
    v57 = *v56;
    v58 = *(v56 + 8);
    v78 = v57;
    v79 = v58;
    v59 = v44;
    sub_1BE0516A4();
    *(v55 + v54) = v77;
    v60 = _s11DetailSheetOMa();
    swift_storeEnumTagMultiPayload();
    (*(*(v60 - 8) + 56))(v55, 0, 1, v60);
    sub_1BD0DE19C(v55, v71, &unk_1EBD43B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);
    sub_1BE0516B4();

    sub_1BD0DE53C(v55, &unk_1EBD43B20);
    return;
  }

  v42 = [v40 suppressPayInFull];
  v43 = v75;
  v44 = v76;
  v46 = v68;
  v45 = v69;
  if (!v42)
  {

    goto LABEL_34;
  }

  sub_1BD4CCF28(v68, type metadata accessor for AvailablePass);
  sub_1BD4CCF28(v24, type metadata accessor for PaymentPassMethodSheet);
  v47 = v72;
  if ((sub_1BD4C290C(v73, 0) & 1) != 0 && *(v47 + v45[11]))
  {
    (*(v47 + v45[23]))();
  }

  else
  {
    sub_1BD6E27DC(v73, v44, v40);
  }
}

id sub_1BD4C3614@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  sub_1BD4CCE58(a1, a4, type metadata accessor for AvailablePass);
  *(a4 + v8) = a2;
  *(a4 + v9) = 0;
  type metadata accessor for PassRow.Pass(0);
  swift_storeEnumTagMultiPayload();
  *(a4 + *(type metadata accessor for PassRow(0) + 20)) = a3;

  return a2;
}

id sub_1BD4C36DC@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for PaymentPassMethodSheet(0);
  v4 = v3 - 8;
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v48 = v6;
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - v17;
  v19 = *(v4 + 40);
  v20 = v1;
  sub_1BD0DE19C(v1 + v19, &v43 - v17, &qword_1EBD45480);
  v21 = type metadata accessor for PeerPaymentModel();
  v22 = *(*(v21 - 8) + 48);
  if (v22(v18, 1, v21) == 1)
  {
    sub_1BD0DE53C(v18, &qword_1EBD45480);
    goto LABEL_11;
  }

  v43 = v7;
  v23 = v18[*(v21 + 64)];
  sub_1BD4CCF28(v18, type metadata accessor for PeerPaymentModel);
  if ((v23 & 1) == 0)
  {
    goto LABEL_11;
  }

  v24 = v20 + v19;
  v25 = v20;
  sub_1BD0DE19C(v24, v14, &qword_1EBD45480);
  if (v22(v14, 1, v21) == 1)
  {
    sub_1BD0DE53C(v14, &qword_1EBD45480);
    goto LABEL_11;
  }

  v26 = v14[*(v21 + 48)];
  sub_1BD4CCF28(v14, type metadata accessor for PeerPaymentModel);
  if (v26)
  {
    goto LABEL_11;
  }

  v28 = v44;
  v27 = v45;
  v29 = v46;
  (*(v45 + 104))(v44, *MEMORY[0x1E69B80A0], v46);
  result = PKPassKitBundle();
  if (result)
  {
    v31 = result;
    v32 = sub_1BE04B6F4();
    v34 = v33;

    (*(v27 + 8))(v28, v29);
    v35 = v43;
    sub_1BD4CCE58(v25, v43, type metadata accessor for PaymentPassMethodSheet);
    v36 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v37 = swift_allocObject();
    sub_1BD4CCEC0(v35, v37 + v36, type metadata accessor for PaymentPassMethodSheet);
    v38 = objc_allocWithZone(PKTextRangeHyperlink);
    v39 = sub_1BE052404();
    aBlock[4] = sub_1BD4D5E40;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_101_2;
    v40 = _Block_copy(aBlock);

    v41 = [v38 initWithLinkText:v39 action:v40];
    _Block_release(v40);

    if (v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      result = swift_allocObject();
      *(result + 1) = xmmword_1BE0B7020;
      *(result + 4) = v41;
      v42 = 4;
LABEL_12:
      *a1 = result;
      a1[1] = v42;
      a1[2] = 0;
      a1[3] = v32;
      a1[5] = 0;
      a1[6] = 0;
      a1[4] = v34;
      return result;
    }

LABEL_11:
    result = 0;
    v42 = 0;
    v32 = 0;
    v34 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4C3BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v71 = a2;
  v76 = a3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C8);
  v4 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v5);
  v72 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CB8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v69 - v12;
  v14 = type metadata accessor for PaymentPassMethodSheet(0);
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14, v16);
  v77 = v17;
  v78 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E80);
  v73 = *(v18 - 8);
  v74 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v81 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v82 = &v69 - v23;
  v24 = *(a1 + v14[10]);
  if (v24)
  {
    v25 = a1 + v14[6];
    v26 = type metadata accessor for Passes(0);
    v27 = *(v25 + *(v26 + 28));
    MEMORY[0x1EEE9AC00](v26, v28);
    v67 = a1;
    v68 = v24;
    v29 = v24;
    sub_1BE048C84();
    sub_1BD1CE7CC(sub_1BD4D5E24, (&v69 - 4), v27);
    v31 = v30;
  }

  else
  {
    v32 = a1 + v14[6];
    v31 = *(v32 + *(type metadata accessor for Passes(0) + 28));
    sub_1BE048C84();
  }

  v83 = v31;
  v33 = v78;
  sub_1BD4CCE58(a1, v78, type metadata accessor for PaymentPassMethodSheet);
  v34 = *(v15 + 80);
  v35 = swift_allocObject();
  sub_1BD4CCEC0(v33, v35 + ((v34 + 16) & ~v34), type metadata accessor for PaymentPassMethodSheet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E88);
  sub_1BD0DE4F4(&qword_1EBD47DD8, &qword_1EBD47DC8);
  sub_1BD4CE8A8();
  v67 = sub_1BD4CD3A0(&qword_1EBD47DE8, type metadata accessor for AvailablePass);
  sub_1BE0519D4();
  if (PKOslo2024UIUpdatesEnabled())
  {
    v36 = 1;
  }

  else
  {
    v37 = v72;
    sub_1BD4BED10(v72);
    sub_1BD0DE204(v37, v13, &qword_1EBD469C8);
    v36 = 0;
  }

  (*(v4 + 56))(v13, v36, 1, v79);
  v38 = PKOslo2024UIUpdatesEnabled();
  v80 = v13;
  if (v38 && (v39 = *(a1 + v14[22]), *(v39 + 16)))
  {
    v70 = sub_1BD4C628C();
    v79 = v40;
    v41 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v43 = [v41 stringFromNumber_];

    if (v43)
    {
      v72 = sub_1BE052434();
      v45 = v44;
    }

    else
    {

      v72 = 0;
      v45 = 0xE000000000000000;
    }

    v49 = v78;
    sub_1BD4CCE58(a1, v78, type metadata accessor for PaymentPassMethodSheet);
    v50 = (v34 + 24) & ~v34;
    v51 = (v77 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v71;
    sub_1BD4CCEC0(v49, v52 + v50, type metadata accessor for PaymentPassMethodSheet);
    v78 = v52;
    v53 = (v52 + v51);
    v46 = v70;
    v54 = v79;
    *v53 = v70;
    v53[1] = v54;
    sub_1BE048964();
    sub_1BE048C84();
    v77 = sub_1BD4CE9A8;
    v47 = v72;
    v48 = v45;
  }

  else
  {
    v46 = 0;
    v78 = 0;
    v79 = 0;
    v47 = 0;
    v48 = 0;
    v77 = 0;
  }

  v55 = v73;
  v56 = v74;
  v57 = *(v73 + 16);
  v58 = v81;
  v57(v81, v82, v74);
  v59 = v75;
  sub_1BD0DE19C(v80, v75, &qword_1EBD47CB8);
  v60 = v76;
  v57(v76, v58, v56);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EA8);
  sub_1BD0DE19C(v59, &v60[*(v61 + 48)], &qword_1EBD47CB8);
  v62 = &v60[*(v61 + 64)];
  v64 = v78;
  v63 = v79;
  *v62 = v46;
  v62[1] = v63;
  v62[2] = v47;
  v62[3] = v48;
  v62[4] = v77;
  v62[5] = v64;
  sub_1BD0EE87C(v46, v63);
  sub_1BD0DE53C(v80, &qword_1EBD47CB8);
  v65 = *(v55 + 8);
  v65(v82, v56);
  sub_1BD4CE958(v46, v63);
  sub_1BD0DE53C(v59, &qword_1EBD47CB8);
  return (v65)(v81, v56);
}

uint64_t sub_1BD4C4378@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a2;
  v137 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EA0);
  v135 = *(v5 - 8);
  v136 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v133 = &KeyPath - v7;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EB8);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v8);
  v109 = &KeyPath - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EC0);
  v130 = *(v10 - 8);
  v131 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v110 = &KeyPath - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v122 = &KeyPath - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EC8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v132 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v128 = &KeyPath - v21;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47ED0);
  MEMORY[0x1EEE9AC00](v124, v22);
  v126 = &KeyPath - v23;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47ED8);
  MEMORY[0x1EEE9AC00](v125, v24);
  v121 = &KeyPath - v25;
  v26 = type metadata accessor for AvailablePass(0);
  v116 = *(v26 - 8);
  v27 = *(v116 + 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v29 = &KeyPath - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PaymentPassMethodSheet(0);
  v115 = *(v30 - 8);
  v31 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8, v32);
  v33 = &KeyPath - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EE0);
  v119 = *(v34 - 8);
  v120 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v118 = &KeyPath - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v114 = &KeyPath - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EE8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v117 = &KeyPath - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &KeyPath - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EF0);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v52.n128_f64[0] = MEMORY[0x1EEE9AC00](v49, v50);
  v127 = &KeyPath - v53;
  v129 = v26;
  v54 = a1;
  v55 = *(a1 + *(v26 + 56));
  v56 = v55 >> 62;
  if (v55 >> 62)
  {
    v113 = v51;
    v102 = sub_1BE053704();
    v51 = v113;
    if (v102)
    {
LABEL_3:
      v113 = v51;
      if ((v55 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x1BFB40900](0, v55, v52);
      }

      else
      {
        if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_29;
        }

        v57 = *(v55 + 32);
      }

      v123 = v57;
      if (v56)
      {
        v58 = sub_1BE053704();
      }

      else
      {
        v58 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v58 < 2)
      {
        v78 = v54;
        sub_1BD4C204C(v54, v123, v46);
        v80 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EF8) + 36)];
        *v80 = xmmword_1BE0D82B0;
        *(v80 + 1) = xmmword_1BE0D82B0;
        v80[32] = 0;
        v81 = sub_1BD4C52A4(v54);
        v82 = &v46[*(v40 + 36)];
        *v82 = v81;
        v82[1] = v83;
        v84 = type metadata accessor for ListRowGestureActionsModifier();
        v82[2] = 0;
        v82[3] = 0;
        v85 = *(v84 + 24);
        *(v82 + v85) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE19C(v46, v126, &qword_1EBD47EE8);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD47F00, &qword_1EBD47ED8);
        sub_1BD4CEA3C();
        v40 = v127;
        sub_1BE04F9A4();
      }

      else
      {
        v59 = v134;
        sub_1BD4C204C(v54, 0, v46);
        v60 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EF8) + 36)];
        *v60 = xmmword_1BE0D82B0;
        *(v60 + 1) = xmmword_1BE0D82B0;
        v60[32] = 0;
        v107 = v54;
        v61 = sub_1BD4C52A4(v54);
        v108 = v40;
        v62 = &v46[*(v40 + 36)];
        *v62 = v61;
        v62[1] = v63;
        v64 = type metadata accessor for ListRowGestureActionsModifier();
        v62[2] = 0;
        v62[3] = 0;
        v65 = *(v64 + 24);
        *(v62 + v65) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
        swift_storeEnumTagMultiPayload();
        v138 = v55;
        KeyPath = swift_getKeyPath();
        sub_1BD4CCE58(v59, &KeyPath - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
        sub_1BD4CCE58(v54, &KeyPath - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AvailablePass);
        v66 = (*(v115 + 80) + 16) & ~*(v115 + 80);
        v67 = (v31 + v116[80] + v66) & ~v116[80];
        v68 = swift_allocObject();
        sub_1BD4CCEC0(v33, v68 + v66, type metadata accessor for PaymentPassMethodSheet);
        sub_1BD4CCEC0(v29, v68 + v67, type metadata accessor for AvailablePass);
        sub_1BE048C84();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F40);
        sub_1BD0DE4F4(&qword_1EBD396B0, &qword_1EBD396A0);
        sub_1BD10E640();
        sub_1BD4CECEC();
        v69 = v114;
        sub_1BE0519C4();
        v70 = v117;
        sub_1BD0DE19C(v46, v117, &qword_1EBD47EE8);
        v71 = v118;
        v72 = v119;
        v73 = *(v119 + 16);
        v74 = v120;
        v73(v118, v69, v120);
        v116 = v46;
        v75 = v121;
        sub_1BD0DE19C(v70, v121, &qword_1EBD47EE8);
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F60);
        v73((v75 + *(v76 + 48)), v71, v74);
        v77 = *(v72 + 8);
        v77(v71, v74);
        sub_1BD0DE53C(v70, &qword_1EBD47EE8);
        sub_1BD0DE19C(v75, v126, &qword_1EBD47ED8);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD47F00, &qword_1EBD47ED8);
        sub_1BD4CEA3C();
        v40 = v127;
        v78 = v107;
        sub_1BE04F9A4();
        v79 = v75;
        v46 = v116;
        sub_1BD0DE53C(v79, &qword_1EBD47ED8);
        v77(v69, v74);
      }

      v31 = v128;
      sub_1BD0DE53C(v46, &qword_1EBD47EE8);
      if (*(v78 + *(v129 + 20)) != 1)
      {
        goto LABEL_18;
      }

      v86 = v122;
      sub_1BD0DE19C(v78 + *(v129 + 28), v122, &qword_1EBD39FF0);
      v87 = type metadata accessor for BalanceInfo(0);
      if ((*(*(v87 - 8) + 48))(v86, 1, v87) == 1)
      {
        sub_1BD0DE53C(v86, &qword_1EBD39FF0);
LABEL_18:
        v91 = 1;
LABEL_19:
        (*(v130 + 56))(v31, v91, 1, v131);
        v92 = v113;
        sub_1BD0DE19C(v40, v113, &qword_1EBD47EF0);
        v93 = v132;
        sub_1BD0DE19C(v31, v132, &qword_1EBD47EC8);
        v94 = v133;
        sub_1BD0DE19C(v92, v133, &qword_1EBD47EF0);
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F38);
        sub_1BD0DE19C(v93, v94 + *(v95 + 48), &qword_1EBD47EC8);

        sub_1BD0DE53C(v31, &qword_1EBD47EC8);
        sub_1BD0DE53C(v40, &qword_1EBD47EF0);
        sub_1BD0DE53C(v93, &qword_1EBD47EC8);
        sub_1BD0DE53C(v92, &qword_1EBD47EF0);
        v96 = v137;
        sub_1BD0DE204(v94, v137, &qword_1EBD47EA0);
        return (*(v135 + 56))(v96, 0, 1, v136);
      }

      v88 = *(v86 + 8);
      sub_1BD4CCF28(v86, type metadata accessor for BalanceInfo);
      if (v88 != 1)
      {
        goto LABEL_18;
      }

      if (*v134 == 10)
      {
        v89 = 1;
        v55 = v112;
        v56 = v111;
        v90 = v110;
LABEL_22:
        (*(v56 + 56))(v90, v89, 1, v55);
        sub_1BD0DE204(v90, v31, &qword_1EBD47EC0);
        v91 = 0;
        goto LABEL_19;
      }

      v98 = v78;
      v3 = v109;
      sub_1BD4CCE58(v98, v109, type metadata accessor for AvailablePass);
      v55 = v112;
      v56 = v111;
      if (qword_1EBD36CF0 == -1)
      {
LABEL_21:
        v99 = *&qword_1EBDAB3C8 + 16.0 + 16.0;
        v100 = v3 + *(v55 + 36);
        *v100 = 0;
        *(v100 + 8) = v99;
        *(v100 + 16) = xmmword_1BE0D82B0;
        *(v100 + 32) = 0;
        v101 = v3;
        v90 = v110;
        sub_1BD0DE204(v101, v110, &qword_1EBD47EB8);
        v89 = 0;
        goto LABEL_22;
      }

LABEL_29:
      swift_once();
      goto LABEL_21;
    }
  }

  else if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v103 = v136;
  v104 = *(v135 + 56);
  v105 = v137;

  return v104(v105, 1, 1, v103, v52);
}

uint64_t (*sub_1BD4C52A4(uint64_t a1))()
{
  v3 = type metadata accessor for AvailablePass(0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v6 = type metadata accessor for PaymentPassMethodSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD4CCE58(a1, v17, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD4CCF28(v17, type metadata accessor for WrappedPass);
      return 0;
    }

    sub_1BD4CCEC0(v17, v13, type metadata accessor for PlaceholderPass);
    v20 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v20 setCardType_];
    sub_1BD4CCF28(v13, type metadata accessor for PlaceholderPass);
  }

  else
  {
    v19 = *v17;
    v20 = [*v17 secureElementPass];

    if (!v20)
    {
      return 0;
    }
  }

  if ([v20 supportsDefaultCardSelection])
  {
    v21 = [v20 contactlessActivationState];

    if (!v21)
    {
      sub_1BD4CCE58(v1, &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
      sub_1BD4CCE58(a1, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AvailablePass);
      v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v23 = (v8 + *(v27 + 80) + v22) & ~*(v27 + 80);
      v24 = swift_allocObject();
      sub_1BD4CCEC0(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22, type metadata accessor for PaymentPassMethodSheet);
      sub_1BD4CCEC0(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for AvailablePass);
      return sub_1BD4D2348;
    }
  }

  else
  {
  }

  return 0;
}

double sub_1BD4C565C@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AvailablePass(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PaymentPassMethodSheet(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v16);
  v17 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *a1;
  sub_1BD4CCE58(a2, v17, type metadata accessor for PaymentPassMethodSheet);
  sub_1BD4CCE58(a3, v12, type metadata accessor for AvailablePass);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = (v15 + *(v9 + 80) + v19) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_1BD4CCEC0(v17, v22 + v19, type metadata accessor for PaymentPassMethodSheet);
  sub_1BD4CCEC0(v12, v22 + v20, type metadata accessor for AvailablePass);
  *(v22 + v21) = v18;
  v28 = v18;
  v29 = a2;
  v30 = a3;
  sub_1BD4CE73C();
  v23 = v18;
  sub_1BE051704();
  if (qword_1EBD36CF0 != -1)
  {
    swift_once();
  }

  v24 = *&qword_1EBDAB3C8 + 16.0 + 16.0;
  v25 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F40) + 36);
  *v25 = 0;
  *(v25 + 8) = v24;
  result = 0.0;
  *(v25 + 16) = xmmword_1BE0D82B0;
  *(v25 + 32) = 0;
  return result;
}

void sub_1BD4C5934(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v45 - v5;
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD4CCE58(a1, v19, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD4CCF28(v19, type metadata accessor for WrappedPass);
      return;
    }

    sub_1BD4CCEC0(v19, v15, type metadata accessor for PlaceholderPass);
    v22 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v22 setCardType_];
    sub_1BD4CCF28(v15, type metadata accessor for PlaceholderPass);
  }

  else
  {
    v21 = *v19;
    v22 = [*v19 secureElementPass];

    if (!v22)
    {
      return;
    }
  }

  if (![v22 supportsDefaultCardSelection])
  {

    return;
  }

  v23 = [v22 contactlessActivationState];

  if (!v23)
  {
    v47 = v1;
    v25 = sub_1BD49C81C(v24);
    v27 = v26;
    sub_1BE04D1E4();
    sub_1BE048C84();
    v28 = sub_1BE04D204();
    v29 = sub_1BE052C54();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v46 = v25;
      v31 = v30;
      v32 = swift_slowAlloc();
      v49[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1BD123690(v46, v27, v49);
      _os_log_impl(&dword_1BD026000, v28, v29, "Updating default pass to pass with unique id: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1BFB45F20](v32, -1, -1);
      MEMORY[0x1BFB45F20](v31, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    v33 = v47;
    v34 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    v35 = sub_1BE052404();

    [v34 setDefaultPaymentPassUniqueIdentifier_];

    v36 = type metadata accessor for PaymentPassMethodSheet(0);
    v37 = *(v33 + *(v36 + 52));
    sub_1BD4CCE58(a1, v6, type metadata accessor for AvailablePass);
    v38 = type metadata accessor for AvailablePass(0);
    (*(*(v38 - 8) + 56))(v6, 0, 1, v38);
    v39 = *(a1 + *(v38 + 56));
    if (v39 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_13;
      }
    }

    else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      if ((v39 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x1BFB40900](0, v39);
      }

      else
      {
        if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v40 = *(v39 + 32);
      }

      v41 = v40;
      goto LABEL_20;
    }

    v41 = 0;
LABEL_20:
    v42 = (v33 + *(v36 + 156));
    v43 = *v42;
    v44 = *(v42 + 1);
    LOBYTE(v49[0]) = v43;
    v49[1] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78);
    sub_1BE0516A4();
    v37(v6, v41, v48);

    sub_1BD0DE53C(v6, &qword_1EBD520A0);
  }
}

uint64_t sub_1BD4C5EA0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - v9;
  sub_1BD4CCE58(a2, &v13 - v9, type metadata accessor for AvailablePass);
  v11 = type metadata accessor for AvailablePass(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v10, v6, &qword_1EBD520A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v10, &qword_1EBD520A0);
}

uint64_t sub_1BD4C6004(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BD4C290C(a1, 0);
  if (v4)
  {
    return 1;
  }

  sub_1BD49C81C(v4);
  v5 = sub_1BE052404();
  v6 = [a3 eligiblePaymentOfferCriteriaForPassUniqueID_];

  if (v6)
  {
    sub_1BD0E5E8C(0, &unk_1EBD496A0);
    v7 = sub_1BE052744();
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1BD49C81C(v8);
  v9 = sub_1BE052404();

  v10 = [a3 paymentOfferCriteriaForPassUniqueID_];

  if (v10)
  {
    sub_1BD0E5E8C(0, &unk_1EBD496A0);
    v11 = sub_1BE052744();

    if (!(v7 >> 62))
    {
LABEL_7:
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    if (!(v7 >> 62))
    {
      goto LABEL_7;
    }
  }

  v12 = sub_1BE053704();
LABEL_8:

  if (v12)
  {
LABEL_9:

    return 1;
  }

  if (!v11)
  {
    return 1;
  }

  if (v11 >> 62)
  {
LABEL_30:
    v14 = sub_1BE053704();
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  v15 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1BFB40900](v15, v11);
    }

    else
    {
      if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(v11 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ([v16 type] == 1)
    {
      break;
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_9;
    }
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = [v19 suppressPayInFull];

    return v20 ^ 1;
  }

  return 1;
}

id sub_1BD4C628C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v20 - v12;
  v15 = *MEMORY[0x1E69B8068];
  v16 = *(v2 + 104);
  if (*v0 == 13)
  {
    v16(v9, v15, v1, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v18 = result;
      v19 = sub_1BE04B6F4();
      v14 = v9;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (*v0 == 9)
  {
    v16(&v20 - v12, v15, v1, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v18 = result;
      v19 = sub_1BE04B6F4();
LABEL_9:

      (*(v2 + 8))(v14, v1);
      return v19;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16(v5, v15, v1, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v14 = v5;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BD4C64F0()
{
  sub_1BD6B2184(10, 2u, 0);
  type metadata accessor for PaymentPassMethodSheet(0);
  swift_getKeyPath();
  sub_1BD4CD3A0(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  sub_1BD4CDC28();
  sub_1BE04E904();
  swift_endAccess();

  swift_getKeyPath();
  sub_1BE04B5A4();
}

uint64_t sub_1BD4C66B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v57 = a2;
  v66 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DB8);
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v71 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v70 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  v61 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v62 = v13;
  v63 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v72 = &v56 - v16;
  v17 = type metadata accessor for PaymentPassMethodSheet(0);
  v18 = v17 - 8;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17, v21);
  v22 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DC0);
  v64 = *(v23 - 8);
  v65 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v69 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v56 - v28;
  v73 = a1;
  sub_1BD4CCE58(a2, v22, type metadata accessor for PaymentPassMethodSheet);
  v30 = *(v19 + 80);
  v31 = (v30 + 16) & ~v30;
  v58 = v31 + v20;
  v59 = v30 | 7;
  v32 = swift_allocObject();
  v60 = v31;
  sub_1BD4CCEC0(v22, v32 + v31, type metadata accessor for PaymentPassMethodSheet);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DD0);
  sub_1BD0DE4F4(&qword_1EBD47DD8, &qword_1EBD47DC8);
  sub_1BD0DE4F4(&qword_1EBD47DE0, &qword_1EBD47DD0);
  sub_1BD4CD3A0(&qword_1EBD47DE8, type metadata accessor for AvailablePass);
  v33 = v29;
  v34 = v57;
  sub_1BE0519D4();
  v35 = v34 + *(v18 + 32);
  v36 = type metadata accessor for Passes(0);
  v37 = *(v35 + *(v36 + 36));
  if (*(*(v35 + *(v36 + 28)) + 16))
  {
    v38 = type metadata accessor for UnavailablePass(0);
    (*(*(v38 - 8) + 56))(v72, 1, 1, v38);
    sub_1BE048C84();
  }

  else
  {
    sub_1BE048C84();
    sub_1BD4941F8(v72);
  }

  v73 = v37;
  sub_1BD4CCE58(v34, v22, type metadata accessor for PaymentPassMethodSheet);
  v39 = v63;
  sub_1BD0DE19C(v72, v63, &qword_1EBD3C3F8);
  v40 = (v58 + *(v61 + 80)) & ~*(v61 + 80);
  v41 = swift_allocObject();
  sub_1BD4CCEC0(v22, v41 + v60, type metadata accessor for PaymentPassMethodSheet);
  sub_1BD0DE204(v39, v41 + v40, &qword_1EBD3C3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DF8);
  sub_1BD0DE4F4(&qword_1EBD47E00, &qword_1EBD47DF0);
  sub_1BD4CE5A4();
  sub_1BD4CD3A0(&qword_1EBD47E10, type metadata accessor for UnavailablePass);
  v42 = v70;
  sub_1BE0519D4();
  v43 = v64;
  v44 = v65;
  v45 = *(v64 + 16);
  v46 = v69;
  v56 = v33;
  v45(v69, v33, v65);
  v48 = v67;
  v47 = v68;
  v49 = *(v67 + 16);
  v49(v71, v42, v68);
  v50 = v66;
  v45(v66, v46, v44);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E18);
  v52 = v71;
  v49(&v50[*(v51 + 48)], v71, v47);
  v53 = *(v48 + 8);
  v53(v70, v47);
  sub_1BD0DE53C(v72, &qword_1EBD3C3F8);
  v54 = *(v43 + 8);
  v54(v56, v44);
  v53(v52, v47);
  return (v54)(v69, v44);
}

uint64_t sub_1BD4C6E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E30);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v49 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E38);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  v50 = type metadata accessor for PassRow(0);
  MEMORY[0x1EEE9AC00](v50, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DF8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v51 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v48 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v56 = &v48 - v27;
  v28 = a1;
  v29 = *(a1 + *(type metadata accessor for AvailablePass(0) + 60));
  v54 = v14;
  v55 = v10;
  if (!(v29 >> 62))
  {
    result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v31 = a2;
    v32 = 0;
    goto LABEL_9;
  }

  if (sub_1BE053704() > 1)
  {
    goto LABEL_8;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v31 = a2;
    v32 = MEMORY[0x1BFB40900](0, v29);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v31 = a2;
    v32 = *(v29 + 32);
  }

LABEL_9:
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 64);
  sub_1BD4CCE58(v28, v17, type metadata accessor for AvailablePass);
  *&v17[v34] = v32;
  v17[v35] = 1;
  type metadata accessor for PassRow.Pass(0);
  swift_storeEnumTagMultiPayload();
  v17[*(v50 + 20)] = 0;
  sub_1BD4CCEC0(v17, v24, type metadata accessor for PassRow);
  v36 = &v24[*(v18 + 36)];
  *v36 = xmmword_1BE0D82B0;
  *(v36 + 1) = xmmword_1BE0D82B0;
  v36[32] = 0;
  v37 = v56;
  sub_1BD0DE204(v24, v56, &qword_1EBD47DF8);
  if (v29 >> 62)
  {
    v38 = sub_1BE053704();
  }

  else
  {
    v38 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v31;
  v41 = v54;
  v40 = v55;
  if (v38 <= 1)
  {
    v45 = 1;
    v44 = v52;
    v43 = v53;
  }

  else
  {
    v57 = v29;
    swift_getKeyPath();
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E48);
    sub_1BD0DE4F4(&qword_1EBD396B0, &qword_1EBD396A0);
    sub_1BD10E640();
    sub_1BD4CE68C(&qword_1EBD47E50, &qword_1EBD47E48, &unk_1BE0DB108, sub_1BD4CE73C);
    v42 = v49;
    v37 = v56;
    sub_1BE0519C4();
    v44 = v52;
    v43 = v53;
    (*(v52 + 32))(v41, v42, v53);
    v45 = 0;
  }

  v46 = v51;
  (*(v44 + 56))(v41, v45, 1, v43);
  sub_1BD0DE19C(v37, v46, &qword_1EBD47DF8);
  sub_1BD0DE19C(v41, v40, &qword_1EBD47E38);
  sub_1BD0DE19C(v46, v39, &qword_1EBD47DF8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E40);
  sub_1BD0DE19C(v40, v39 + *(v47 + 48), &qword_1EBD47E38);
  sub_1BD0DE53C(v41, &qword_1EBD47E38);
  sub_1BD0DE53C(v37, &qword_1EBD47DF8);
  sub_1BD0DE53C(v40, &qword_1EBD47E38);
  return sub_1BD0DE53C(v46, &qword_1EBD47DF8);
}