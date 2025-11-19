uint64_t sub_1BD3CC834()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3CC870(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD3CC8C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1BE048964();
  v6 = a3;
  v5(a2, a3);
}

id sub_1BD3CC938(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v1[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_identifier];
  *v5 = 0xD00000000000002ELL;
  *(v5 + 1) = 0x80000001BE0D2F30;
  *&v1[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_context] = a1;
  swift_unknownObjectWeakAssign();
  sub_1BE052434();
  sub_1BE048964();
  v6 = sub_1BE04BB74();

  *&v2[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_reporter] = v6;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id PeerPaymentCounterpartImageResolver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeerPaymentCounterpartImageResolver.init()()
{
  v1 = OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v2 = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_peerPaymentService] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PeerPaymentCounterpartImageResolver();
  return objc_msgSendSuper2(&v4, sel_init);
}

BOOL sub_1BD3CCBD8()
{
  v1 = *(v0 + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache);
  v2 = sub_1BE052404();
  v3 = [v1 objectForKey_];

  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t sub_1BD3CCC8C()
{
  v1 = *(v0 + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache);
  v2 = sub_1BE052404();
  v3 = [v1 objectForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1BE04AAC4();

  return v4;
}

void sub_1BD3CCDC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache);
  v10 = sub_1BE052404();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    v12 = sub_1BE04AAC4();
    v14 = v13;

    sub_1BD041A38(v12, v14);
    a3(v12, v14);
    sub_1BD1245AC(v12, v14);

    sub_1BD1245AC(v12, v14);
  }

  else
  {
    v15 = *(v4 + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_peerPaymentService);
    if (v15)
    {
      v16 = v15;
      v17 = sub_1BE052404();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a1;
      v19[4] = a2;
      v19[5] = a3;
      v19[6] = a4;
      v21[4] = sub_1BD3CD158;
      v21[5] = v19;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 1107296256;
      v21[2] = sub_1BD20815C;
      v21[3] = &block_descriptor_82;
      v20 = _Block_copy(v21);
      sub_1BE048C84();
      sub_1BE048964();

      [v16 counterpartImageDataWithIdentifier:v17 completion:v20];
      _Block_release(v20);
    }

    else
    {
      a3(0, 0xF000000000000000);
    }
  }
}

void sub_1BD3CCFEC(id a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = [a1 imageData];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1BE04AAC4();
        v13 = v12;

        v14 = sub_1BE04AAB4();
        sub_1BD1245AC(v11, v13);
        v15 = *&v8[OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache];
        a1 = v14;
        v16 = v15;
        v17 = sub_1BE052404();
        [v16 setObject:a1 forKey:v17];

        v18 = sub_1BE04AAC4();
        v20 = v19;
LABEL_8:
        a5(v18, v20);
        sub_1BD030220(v18, v20);

        return;
      }

      v18 = 0;
      a1 = 0;
    }

    else
    {
      v18 = 0;
    }

    v20 = 0xF000000000000000;
    goto LABEL_8;
  }
}

id PeerPaymentCounterpartImageResolver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentCounterpartImageResolver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD3CD324(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a3 + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache);
  _Block_copy(a4);
  v10 = sub_1BE052404();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    v12 = sub_1BE04AAC4();
    v14 = v13;

    sub_1BD041A38(v12, v14);
    v15 = sub_1BE04AAB4();
    (a4)[2](a4, v15);

    sub_1BD1245AC(v12, v14);
    sub_1BD1245AC(v12, v14);
  }

  else
  {
    v16 = *(a3 + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_peerPaymentService);
    if (v16)
    {
      v17 = v16;
      v18 = sub_1BE052404();
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = a1;
      v20[4] = a2;
      v20[5] = sub_1BD3CD5AC;
      v20[6] = v8;
      v22[4] = sub_1BD3CD614;
      v22[5] = v20;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = sub_1BD20815C;
      v22[3] = &block_descriptor_16_3;
      v21 = _Block_copy(v22);
      sub_1BE048C84();
      sub_1BE048964();

      [v17 counterpartImageDataWithIdentifier:v18 completion:v21];
      _Block_release(v21);

      return;
    }

    a4[2](a4, 0);
  }
}

uint64_t objectdestroy_2Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD3CD638()
{
  result = sub_1BE04AA64();
  if (v1 <= 0x3F)
  {
    result = sub_1BD0E5E8C(319, qword_1EBD4F790);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BD3CD70C()
{
  sub_1BD1C86BC();
  if (v0 <= 0x3F)
  {
    sub_1BD3CD930(319, &qword_1EBD44D60, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BD3CD930(319, &qword_1EBD45140, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD3CD930(319, &qword_1EBD36A40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BD3CD930(319, &qword_1EBD44D68, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1BD3CD930(319, &qword_1EBD44D70, type metadata accessor for UnifiedMerchantTokenData.PastPayment, MEMORY[0x1E69E62F8]);
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

void sub_1BD3CD930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD3CD9FC()
{
  result = sub_1BE0493F4();
  if (v1 <= 0x3F)
  {
    result = sub_1BE04AF64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BD3CDAD8()
{
  sub_1BD3CD930(319, &qword_1EBD44D60, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD3CDB9C()
{
  result = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1BD3CDCAC()
{
  sub_1BD3CD930(319, &qword_1EBD44DB8, MEMORY[0x1E6967790], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD3CDD70()
{
  sub_1BD3CD930(319, &qword_1EBD44DB8, MEMORY[0x1E6967790], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BD3CD930(319, &qword_1EBD44DD8, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD3CDE7C()
{
  sub_1BE04A004();
  if (v0 <= 0x3F)
  {
    sub_1BD3CD930(319, &qword_1EBD44DF0, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD3CDF78()
{
  sub_1BD3CD930(319, &qword_1EBD44DB8, MEMORY[0x1E6967790], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BE04A474();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_1BD3CE02C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v108 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v108 - v11;
  v13 = sub_1BE04AF64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v133 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v134 = v108 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v131 = v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v130 = v108 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v132 = v108 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v108 - v31;
  v33 = sub_1BE04AA64();
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v40 = v108 - v39;
  if (!v0[1])
  {
    return 0;
  }

  v126 = v38;
  v127 = v14;
  v128 = v13;
  v129 = v37;
  v41 = *v0;
  v42 = type metadata accessor for UnifiedMerchantTokenData(0);
  v43 = v0 + *(v42 + 76);
  if (!*(v43 + 1))
  {
    return 0;
  }

  v44 = v0[9];
  if (!v44)
  {
    return 0;
  }

  v45 = v42;
  v120 = *(v43 + 1);
  v121 = v41;
  v125 = v40;
  v119 = *v43;
  v122 = v0[8];
  v123 = v44;
  sub_1BD0DE19C(v0 + *(v42 + 44), v32, &unk_1EBD3CF70);
  v46 = v129;
  v47 = (v129 + 48);
  v124 = *(v129 + 48);
  if (v124(v32, 1, v33) == 1)
  {
    v48 = &unk_1EBD3CF70;
    v49 = v32;
LABEL_10:
    sub_1BD0DE53C(v49, v48);
    return 0;
  }

  v51 = *(v46 + 32);
  v117 = v46 + 32;
  v118 = v47;
  v116 = v51;
  v51(v125, v32, v33);
  sub_1BD0DE19C(v0 + v45[12], v12, &unk_1EBD39970);
  v52 = v127;
  v53 = v128;
  if ((*(v127 + 48))(v12, 1, v128) == 1)
  {
    (*(v46 + 8))(v125, v33);
    v48 = &unk_1EBD39970;
    v49 = v12;
    goto LABEL_10;
  }

  (*(v52 + 32))(v134, v12, v53);
  sub_1BD0DE19C(v0 + v45[10], v8, &qword_1EBD44D48);
  v54 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v55 = 1;
  v56 = v33;
  if ((*(*(v54 - 8) + 48))(v8, 1, v54) != 1)
  {
    sub_1BD0DE19C(v8, v4, &qword_1EBD44D48);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1BD3D85F0(v4, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    }

    else
    {
      v116(v132, v4, v33);
      v55 = 0;
    }
  }

  v57 = v129;
  v58 = v132;
  (*(v129 + 56))(v132, v55, 1, v33);
  sub_1BD0DE53C(v8, &qword_1EBD44D48);
  v59 = v0[3];
  v116 = v0[2];
  v111 = v59;
  v60 = (v0 + v45[20]);
  v61 = v60[1];
  v108[1] = *v60;
  v62 = v0[5];
  v108[6] = v0[4];
  v108[5] = v62;
  v63 = v0[7];
  v108[2] = v0[6];
  v64 = v0[11];
  v108[3] = v0[10];
  v109 = v64;
  v65 = v58;
  v66 = v130;
  sub_1BD0DE19C(v65, v130, &unk_1EBD3CF70);
  (*(v57 + 16))(v126, v125, v56);
  v67 = (v0 + v45[21]);
  v69 = *v67;
  v68 = v67[1];
  v114 = v69;
  v113 = v68;
  LODWORD(v117) = *(v0 + v45[17]);
  (*(v127 + 16))(v133, v134, v128);
  sub_1BD0DE19C(v0 + v45[14], v131, &unk_1EBD3CF70);
  v70 = v45[16];
  v71 = (v0 + v45[15]);
  v73 = *v71;
  v72 = v71[1];
  v108[4] = v73;
  v110 = v72;
  v112 = *(v0 + v70);
  v116 = sub_1BE052404();
  v111 = sub_1BE052404();
  v121 = sub_1BE052404();
  if (v61)
  {
    v120 = sub_1BE052404();
  }

  else
  {
    v120 = 0;
  }

  v123 = sub_1BE052404();
  v122 = sub_1BE052404();
  v74 = v131;
  if (v63)
  {
    v75 = sub_1BE052404();
  }

  else
  {
    v75 = 0;
  }

  if (v109)
  {
    v76 = sub_1BE052404();
  }

  else
  {
    v76 = 0;
  }

  if (v124(v66, 1, v56) == 1)
  {
    v77 = 0;
  }

  else
  {
    v77 = sub_1BE04A9C4();
    (*(v129 + 8))(v66, v56);
  }

  v78 = sub_1BE04A9C4();
  v79 = sub_1BE052404();
  v80 = sub_1BE04AE64();
  if (v124(v74, 1, v56) == 1)
  {
    v81 = 0;
  }

  else
  {
    v81 = sub_1BE04A9C4();
    (*(v129 + 8))(v74, v56);
  }

  v115 = v56;
  if (v110)
  {
    v82 = sub_1BE052404();
  }

  else
  {
    v82 = 0;
  }

  v124 = v82;
  v83 = objc_allocWithZone(MEMORY[0x1E69B89B8]);
  LOBYTE(v107) = v112;
  v105 = v81;
  v106 = v82;
  v119 = v80;
  v104 = v80;
  LOBYTE(v103) = v117;
  v84 = v79;
  v101 = v78;
  v102 = v79;
  v130 = v81;
  v85 = v77;
  v99 = v76;
  v100 = v77;
  v86 = v76;
  v98 = v75;
  v87 = v116;
  v88 = v111;
  v89 = v121;
  v90 = v122;
  v118 = v78;
  v91 = v75;
  v92 = v120;
  v93 = v123;
  v131 = [v83 initWithMerchantTokenId:v116 primaryAccountIdentifier:v111 primaryAccountDisplayName:v121 primaryAccountSuffix:v120 appleMerchantId:v123 merchantName:v122 merchantDomain:v98 merchantApplicationIdentifier:v99 merchantIconURL:v100 merchantTokenManagementURL:v101 tokenCategory:v102 isDeferredPayment:v103 tokenIssuanceDate:v104 issuerServiceURL:v105 issuerName:v106 disallowUserRevoke:v107];

  v94 = v128;
  v95 = *(v127 + 8);
  v95(v133, v128);
  v96 = *(v129 + 8);
  v97 = v115;
  v96(v126, v115);
  sub_1BD0DE53C(v132, &unk_1EBD3CF70);
  v95(v134, v94);
  v96(v125, v97);
  return v131;
}

uint64_t sub_1BD3CEA04()
{
  v0 = sub_1BE04B104();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04B2F4();
  __swift_allocate_value_buffer(v5, qword_1EBDAB000);
  __swift_project_value_buffer(v5, qword_1EBDAB000);
  (*(v1 + 104))(v4, *MEMORY[0x1E6969830], v0);
  sub_1BE04B114();
  return (*(v1 + 8))(v4, v0);
}

void sub_1BD3CEB24()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD3D89A4(v0, v9, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *v9;
      v12 = v9[1];
      MEMORY[0x1BFB40DA0](1);
      sub_1BE04AAD4();
      sub_1BD1245AC(v11, v12);
    }

    else
    {
      v13 = *v9;
      MEMORY[0x1BFB40DA0](2);
      sub_1BE053084();
    }
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x1BFB40DA0](0);
    sub_1BD3D1640(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
    sub_1BE052294();
    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_1BD3CED70(uint64_t a1)
{
  v71 = a1;
  v63 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v63, v1);
  v66 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04A474();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v62 = &v58 - v8;
  v9 = sub_1BE0493F4();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v67 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v58 - v21;
  v60 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v60, v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE049FD4();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD3D89A4(v70, v38, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return MEMORY[0x1BFB40DA0](3);
    }

    v43 = v66;
    sub_1BD3D8A0C(v38, v66, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
    MEMORY[0x1BFB40DA0](2);
    sub_1BD0DE19C(v43, v18, &qword_1EBD3BCA0);
    v45 = v68;
    v44 = v69;
    v46 = *(v68 + 48);
    if (v46(v18, 1, v69) == 1)
    {
      sub_1BE053D24();
    }

    else
    {
      v50 = v67;
      (*(v45 + 32))(v67, v18, v44);
      sub_1BE053D24();
      sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
      sub_1BE052294();
      (*(v45 + 8))(v50, v44);
    }

    v51 = v61;
    sub_1BD0DE19C(v43 + *(v63 + 20), v61, &qword_1EBD3BCA0);
    if (v46(v51, 1, v44) == 1)
    {
      sub_1BE053D24();
    }

    else
    {
      v56 = v67;
      (*(v45 + 32))(v67, v51, v44);
      sub_1BE053D24();
      sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
      sub_1BE052294();
      (*(v45 + 8))(v56, v44);
    }

    v41 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails;
    v42 = v43;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1BD3D8A0C(v38, v25, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
    MEMORY[0x1BFB40DA0](1);
    sub_1BD0DE19C(v25, v22, &qword_1EBD3BCA0);
    v48 = v68;
    v47 = v69;
    if ((*(v68 + 48))(v22, 1, v69) == 1)
    {
      sub_1BE053D24();
    }

    else
    {
      v52 = v67;
      (*(v48 + 32))(v67, v22, v47);
      sub_1BE053D24();
      sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
      sub_1BE052294();
      (*(v48 + 8))(v52, v47);
    }

    v53 = v62;
    sub_1BD0DE19C(&v25[*(v60 + 20)], v62, &qword_1EBD44DC0);
    v55 = v64;
    v54 = v65;
    if ((*(v64 + 48))(v53, 1, v65) == 1)
    {
      sub_1BE053D24();
    }

    else
    {
      v57 = v59;
      (*(v55 + 32))(v59, v53, v54);
      sub_1BE053D24();
      sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278]);
      sub_1BE052294();
      (*(v55 + 8))(v57, v54);
    }

    v41 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails;
    v42 = v25;
  }

  else
  {
    sub_1BD3D8A0C(v38, v34, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
    v40 = v71;
    MEMORY[0x1BFB40DA0](0);
    sub_1BE049FE4();
    sub_1BE049FC4();
    (*(v27 + 8))(v30, v26);
    sub_1BE052524();

    sub_1BE049FF4();
    sub_1BE053D34();
    sub_1BD3D8650(v40, *&v34[*(v31 + 20)]);
    v41 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails;
    v42 = v34;
  }

  return sub_1BD3D85F0(v42, v41);
}

uint64_t sub_1BD3CF6C0()
{
  v1 = v0;
  v2 = sub_1BE0493F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v12 - v9;
  sub_1BE053D04();
  sub_1BD0DE19C(v1, v10, &qword_1EBD3BCA0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
    sub_1BE052294();
    (*(v3 + 8))(v6, v2);
  }

  type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
  sub_1BE04A474();
  sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278]);
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD3CF91C()
{
  v1 = v0;
  v2 = sub_1BE0493F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v12 - v9;
  sub_1BD0DE19C(v1, &v12 - v9, &qword_1EBD3BCA0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
    sub_1BE052294();
    (*(v3 + 8))(v6, v2);
  }

  sub_1BE04A474();
  sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278]);
  return sub_1BE052294();
}

uint64_t sub_1BD3CFB64()
{
  v1 = v0;
  v2 = sub_1BE0493F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v12 - v9;
  sub_1BE053D04();
  sub_1BD0DE19C(v1, v10, &qword_1EBD3BCA0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
    sub_1BE052294();
    (*(v3 + 8))(v6, v2);
  }

  sub_1BE04A474();
  sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278]);
  sub_1BE052294();
  return sub_1BE053D64();
}

id sub_1BD3CFE10()
{
  v0 = sub_1BE04BD74();
  v56 = *(v0 - 8);
  v57 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v54 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v55 = &v54 - v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v54 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E68);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v54 - v25;
  v27 = sub_1BE049FD4();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049FE4();
  v32 = sub_1BE049FF4();
  v33 = *(v23 + 56);
  (*(v28 + 32))(v26, v31, v27);
  *&v26[v33] = v32;
  v34 = (*(v28 + 88))(v26, v27);
  if (v34 == *MEMORY[0x1E6967D48])
  {
    (*(v28 + 8))(v26, v27);
    return 0;
  }

  if (v34 == *MEMORY[0x1E6967D40])
  {
    v37 = v56;
    v36 = v57;
    (*(v56 + 104))(v21, *MEMORY[0x1E69B8080], v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1BE0B69E0;
    v39 = MEMORY[0x1E69E72E8];
    *(v38 + 56) = MEMORY[0x1E69E7290];
    *(v38 + 64) = v39;
    *(v38 + 32) = v32;
    v40 = sub_1BE04B714();

    (*(v37 + 8))(v21, v36);
    return v40;
  }

  if (v34 != *MEMORY[0x1E6967D20])
  {
    if (v34 == *MEMORY[0x1E6967D18])
    {
      v45 = v56;
      v44 = v57;
      (*(v56 + 104))(v13, *MEMORY[0x1E69B8080], v57);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v46 = result;
    }

    else
    {
      if (v34 == *MEMORY[0x1E6967D28])
      {
        v52 = v56;
        v51 = v57;
        (*(v56 + 104))(v9, *MEMORY[0x1E69B8080], v57);
        result = PKPassKitBundle();
        if (result)
        {
          v53 = result;
          sub_1BE04B6F4();

          (*(v52 + 8))(v9, v51);
          goto LABEL_13;
        }

        goto LABEL_27;
      }

      if (v34 == *MEMORY[0x1E6967D38])
      {
        v13 = v55;
        v45 = v56;
        v44 = v57;
        (*(v56 + 104))(v55, *MEMORY[0x1E69B8080], v57);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }

        v46 = result;
      }

      else
      {
        if (v34 != *MEMORY[0x1E6967D30])
        {
          sub_1BD0DE53C(v26, &qword_1EBD44E68);
          return 0;
        }

        v45 = v56;
        v44 = v57;
        v13 = v54;
        (*(v56 + 104))(v54, *MEMORY[0x1E69B8080], v57);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_29;
        }

        v46 = result;
      }
    }

    sub_1BE04B6F4();

    (*(v45 + 8))(v13, v44);
    goto LABEL_13;
  }

  v42 = v56;
  v41 = v57;
  (*(v56 + 104))(v17, *MEMORY[0x1E69B8080], v57);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v43 = result;
  sub_1BE04B6F4();

  (*(v42 + 8))(v17, v41);
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E7290];
  *(v47 + 16) = xmmword_1BE0B69E0;
  v49 = MEMORY[0x1E69E72E8];
  *(v47 + 56) = v48;
  *(v47 + 64) = v49;
  *(v47 + 32) = v32;
  v50 = sub_1BE052454();

  return v50;
}

uint64_t sub_1BD3D04FC()
{
  v1 = v0;
  v2 = sub_1BE04A474();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v23 - v7;
  v9 = sub_1BE0493F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v23 - v16;
  sub_1BD0DE19C(v1, &v23 - v16, &qword_1EBD3BCA0);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
    sub_1BE052294();
    (*(v10 + 8))(v13, v9);
  }

  v18 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  sub_1BD0DE19C(v1 + *(v18 + 20), v8, &qword_1EBD44DC0);
  v20 = v25;
  v19 = v26;
  if ((*(v25 + 48))(v8, 1, v26) == 1)
  {
    return sub_1BE053D24();
  }

  v22 = v24;
  (*(v20 + 32))(v24, v8, v19);
  sub_1BE053D24();
  sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278]);
  sub_1BE052294();
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_1BD3D08A4()
{
  v1 = v0;
  v2 = sub_1BE04A474();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v22 - v7;
  v9 = sub_1BE0493F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v22 - v16;
  sub_1BE053D04();
  sub_1BD0DE19C(v1, v17, &qword_1EBD3BCA0);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
    sub_1BE052294();
    (*(v10 + 8))(v13, v9);
  }

  v18 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  sub_1BD0DE19C(v1 + *(v18 + 20), v8, &qword_1EBD44DC0);
  v19 = v24;
  if ((*(v24 + 48))(v8, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v20 = v23;
    (*(v19 + 32))(v23, v8, v2);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278]);
    sub_1BE052294();
    (*(v19 + 8))(v20, v2);
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD3D0C64()
{
  v1 = v0;
  v2 = sub_1BE0493F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v18 - v13;
  sub_1BD0DE19C(v1, &v18 - v13, &qword_1EBD3BCA0);
  v15 = *(v3 + 48);
  if (v15(v14, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v6, v14, v2);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
    sub_1BE052294();
    (*(v3 + 8))(v6, v2);
  }

  v16 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  sub_1BD0DE19C(v1 + *(v16 + 20), v10, &qword_1EBD3BCA0);
  if (v15(v10, 1, v2) == 1)
  {
    return sub_1BE053D24();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_1BE053D24();
  sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
  sub_1BE052294();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD3D0F5C()
{
  v1 = v0;
  v2 = sub_1BE0493F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v18 - v13;
  sub_1BE053D04();
  sub_1BD0DE19C(v1, v14, &qword_1EBD3BCA0);
  v15 = *(v3 + 48);
  if (v15(v14, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v6, v14, v2);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
    sub_1BE052294();
    (*(v3 + 8))(v6, v2);
  }

  v16 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  sub_1BD0DE19C(v1 + *(v16 + 20), v10, &qword_1EBD3BCA0);
  if (v15(v10, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
    sub_1BE052294();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD3D1260(uint64_t a1)
{
  v3 = sub_1BE049FD4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BE053D04();
  sub_1BE049FE4();
  sub_1BE049FC4();
  (*(v4 + 8))(v7, v3);
  sub_1BE052524();

  sub_1BE049FF4();
  sub_1BE053D34();
  sub_1BD3D8650(v10, *(v1 + *(a1 + 20)));
  return sub_1BE053D64();
}

uint64_t sub_1BD3D1394(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BE049FD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049FE4();
  sub_1BE049FC4();
  (*(v6 + 8))(v9, v5);
  sub_1BE052524();

  sub_1BE049FF4();
  sub_1BE053D34();
  return sub_1BD3D8650(a1, *(v2 + *(a2 + 20)));
}

uint64_t sub_1BD3D14B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049FD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BE053D04();
  sub_1BE049FE4();
  sub_1BE049FC4();
  (*(v5 + 8))(v8, v4);
  sub_1BE052524();

  sub_1BE049FF4();
  sub_1BE053D34();
  sub_1BD3D8650(v11, *(v2 + *(a2 + 20)));
  return sub_1BE053D64();
}

uint64_t sub_1BD3D1640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD3D1690(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_1BE04A474();
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v22 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = sub_1BE0493F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v22 - v17;
  sub_1BE053D04();
  sub_1BD0DE19C(v2, v18, &qword_1EBD3BCA0);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
    sub_1BE052294();
    (*(v11 + 8))(v14, v10);
  }

  sub_1BD0DE19C(v2 + *(v23 + 20), v9, &qword_1EBD44DC0);
  v19 = v24;
  if ((*(v24 + 48))(v9, 1, v3) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v20 = v22;
    (*(v19 + 32))(v22, v9, v3);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278]);
    sub_1BE052294();
    (*(v19 + 8))(v20, v3);
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD3D1AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0493F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v19 - v15;
  sub_1BE053D04();
  sub_1BD0DE19C(v2, v16, &qword_1EBD3BCA0);
  v17 = *(v5 + 48);
  if (v17(v16, 1, v4) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v5 + 32))(v8, v16, v4);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
    sub_1BE052294();
    (*(v5 + 8))(v8, v4);
  }

  sub_1BD0DE19C(v2 + *(a2 + 20), v12, &qword_1EBD3BCA0);
  if (v17(v12, 1, v4) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
    sub_1BE052294();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1BE053D64();
}

id sub_1BD3D1E44()
{
  v0 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
  v180 = *(v0 - 8);
  v181 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v185 = &v162 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v189, v3);
  v190 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1BE04ABD4();
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175, v5);
  v172 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1BE04ACA4();
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170, v7);
  v168 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1BE04AD84();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177, v9);
  v167 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v171 = &v162 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v173 = &v162 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v179 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v178 = &v162 - v22;
  v23 = sub_1BE04AF64();
  v194 = *(v23 - 8);
  v195 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v184 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v183 = &v162 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v162 - v31;
  v33 = sub_1BE04A474();
  v192 = *(v33 - 8);
  v193 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v182 = &v162 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v191 = &v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1BE04B0F4();
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166, v39);
  v164 = &v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BE04BD74();
  v187 = *(v41 - 8);
  v188 = v41;
  MEMORY[0x1EEE9AC00](v41, v42);
  v186 = &v162 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v162 = &v162 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v162 - v49;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v162 - v53;
  v55 = sub_1BE0493F4();
  v56 = *(v55 - 8);
  v196 = v55;
  v197 = v56;
  MEMORY[0x1EEE9AC00](v55, v57);
  v163 = &v162 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v162 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v162 - v65;
  v67 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v162 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v162 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  sub_1BD3D89A4(&v198[*(v75 + 28)], v74, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v77 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v78 = v190;
      sub_1BD3D8A0C(v74, v190, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
      v79 = *(v78 + *(v189 + 20));
      if (!*(v79 + 16))
      {
LABEL_8:
        v85 = sub_1BD3CFE10();
        sub_1BD3D85F0(v78, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
        return v85;
      }

      v80 = v185;
      sub_1BD3D89A4(v79 + ((*(v180 + 80) + 32) & ~*(v180 + 80)), v185, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
      if (qword_1EBD36BF8 != -1)
      {
        swift_once();
      }

      v81 = sub_1BE04B2F4();
      __swift_project_value_buffer(v81, qword_1EBDAB000);
      v82 = v179;
      sub_1BE04B204();
      v84 = v194;
      v83 = v195;
      if ((*(v194 + 48))(v82, 1, v195) == 1)
      {
        sub_1BD3D85F0(v80, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
        sub_1BD0DE53C(v82, &unk_1EBD39970);
        goto LABEL_8;
      }

      v107 = (*(v84 + 32))(v184, v82, v83);
      v108 = v167;
      MEMORY[0x1BFB371E0](v107);
      v109 = v168;
      sub_1BE04AC84();
      v110 = v171;
      sub_1BE04ABB4();
      (*(v169 + 8))(v109, v170);
      v111 = *(v176 + 8);
      v112 = v177;
      v111(v108, v177);
      v113 = v172;
      sub_1BE04ABC4();
      v114 = v173;
      sub_1BE04AB64();
      (*(v174 + 8))(v113, v175);
      v111(v110, v112);
      sub_1BD3D1640(&qword_1EBD4E940, MEMORY[0x1E6969328]);
      sub_1BE04AF44();
      v111(v114, v112);
      v115 = v199;
      v116 = v200;
      v118 = v186;
      v117 = v187;
      v119 = v188;
      (*(v187 + 104))(v186, *MEMORY[0x1E69B8080], v188);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1BE0B69E0;
      *(v120 + 56) = MEMORY[0x1E69E6158];
      *(v120 + 64) = sub_1BD110550();
      *(v120 + 32) = v115;
      *(v120 + 40) = v116;
      v121 = sub_1BE04B714();

      (*(v117 + 8))(v118, v119);
      (*(v84 + 8))(v184, v83);
      sub_1BD3D85F0(v185, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
      v122 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails;
      v123 = v78;
      goto LABEL_28;
    }

    v93 = v191;
    sub_1BD3D8A0C(v74, v191, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
    sub_1BD0DE19C(v93 + *(v36 + 20), v32, &qword_1EBD44DC0);
    v95 = v192;
    v94 = v193;
    if ((*(v192 + 48))(v32, 1, v193) == 1)
    {
      sub_1BD3D85F0(v93, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
      v92 = &qword_1EBD44DC0;
      v96 = v32;
LABEL_22:
      sub_1BD0DE53C(v96, v92);
      return 0;
    }

    v99 = v182;
    (*(v95 + 32))(v182, v32, v94);
    if (qword_1EBD36BF8 != -1)
    {
      swift_once();
    }

    v100 = sub_1BE04B2F4();
    __swift_project_value_buffer(v100, qword_1EBDAB000);
    v54 = v178;
    sub_1BE04B204();
    v102 = v194;
    v101 = v195;
    v103 = (*(v194 + 48))(v54, 1, v195);
    v104 = v196;
    v105 = v197;
    v106 = v183;
    if (v103 == 1)
    {
      (*(v95 + 8))(v99, v94);
      sub_1BD3D85F0(v93, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
      v92 = &unk_1EBD39970;
      goto LABEL_21;
    }

    (*(v102 + 32))(v183, v54, v101);
    v54 = v162;
    sub_1BD0DE19C(v93, v162, &qword_1EBD3BCA0);
    if ((*(v105 + 48))(v54, 1, v104) != 1)
    {
      v139 = (*(v105 + 32))(v163, v54, v104);
      v140 = v167;
      MEMORY[0x1BFB371E0](v139);
      v141 = v168;
      sub_1BE04AC84();
      v142 = v171;
      sub_1BE04ABB4();
      (*(v169 + 8))(v141, v170);
      v143 = *(v176 + 8);
      v144 = v140;
      v145 = v177;
      v143(v144, v177);
      v146 = v172;
      sub_1BE04ABC4();
      v147 = v173;
      sub_1BE04AB64();
      (*(v174 + 8))(v146, v175);
      v143(v142, v145);
      sub_1BD3D1640(&qword_1EBD4E940, MEMORY[0x1E6969328]);
      sub_1BE04AF44();
      v143(v147, v145);
      v148 = v200;
      v190 = v199;
      v198 = "CURRING_SUBTITLE";
      v150 = v186;
      v149 = v187;
      v151 = v102;
      v152 = v188;
      (*(v187 + 104))(v186, *MEMORY[0x1E69B8080], v188);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v153 = swift_allocObject();
      *(v153 + 16) = xmmword_1BE0B6CA0;
      v154 = v164;
      sub_1BE04B054();
      v155 = v163;
      v156 = sub_1BE0493E4();
      v158 = v157;
      (*(v165 + 8))(v154, v166);
      v159 = MEMORY[0x1E69E6158];
      *(v153 + 56) = MEMORY[0x1E69E6158];
      v160 = sub_1BD110550();
      *(v153 + 32) = v156;
      *(v153 + 40) = v158;
      *(v153 + 96) = v159;
      *(v153 + 104) = v160;
      v161 = v190;
      *(v153 + 64) = v160;
      *(v153 + 72) = v161;
      *(v153 + 80) = v148;
      v121 = sub_1BE04B714();

      (*(v149 + 8))(v150, v152);
      (*(v197 + 8))(v155, v196);
      (*(v151 + 8))(v183, v195);
      (*(v192 + 8))(v182, v193);
      v122 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails;
      v123 = v191;
LABEL_28:
      sub_1BD3D85F0(v123, v122);
      return v121;
    }

    (*(v102 + 8))(v106, v101);
    (*(v95 + 8))(v99, v94);
    v90 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails;
    v91 = v93;
LABEL_12:
    sub_1BD3D85F0(v91, v90);
    v92 = &qword_1EBD3BCA0;
LABEL_21:
    v96 = v54;
    goto LABEL_22;
  }

  result = 0;
  if (v77 != 2)
  {
    return result;
  }

  sub_1BD3D8A0C(v74, v70, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
  sub_1BD0DE19C(v70, v54, &qword_1EBD3BCA0);
  v87 = v196;
  v88 = v197;
  v89 = *(v197 + 48);
  if (v89(v54, 1, v196) == 1)
  {
    v90 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails;
    v91 = v70;
    goto LABEL_12;
  }

  v97 = v54;
  v98 = *(v88 + 32);
  v98(v66, v97, v87);
  sub_1BD0DE19C(&v70[*(v67 + 20)], v50, &qword_1EBD3BCA0);
  if (v89(v50, 1, v87) == 1)
  {
    (*(v197 + 8))(v66, v87);
    sub_1BD3D85F0(v70, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
    v92 = &qword_1EBD3BCA0;
    v96 = v50;
    goto LABEL_22;
  }

  v98(v62, v50, v87);
  v198 = "ETAIL_PREAUTH_DEFERRED_SUBTITLE";
  (*(v187 + 104))(v186, *MEMORY[0x1E69B8080], v188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_1BE0B6CA0;
  v125 = v164;
  sub_1BE04B054();
  v126 = sub_1BE0493E4();
  v195 = v127;
  v128 = *(v165 + 8);
  v129 = v166;
  v128(v125, v166);
  *(v124 + 56) = MEMORY[0x1E69E6158];
  v130 = sub_1BD110550();
  *(v124 + 64) = v130;
  v131 = v195;
  *(v124 + 32) = v126;
  *(v124 + 40) = v131;
  sub_1BE04B054();
  v132 = sub_1BE0493E4();
  v195 = v133;
  v128(v125, v129);
  *(v124 + 96) = MEMORY[0x1E69E6158];
  *(v124 + 104) = v130;
  v134 = v195;
  *(v124 + 72) = v132;
  *(v124 + 80) = v134;
  v135 = v186;
  v121 = sub_1BE04B714();

  (*(v187 + 8))(v135, v188);
  v136 = *(v197 + 8);
  v137 = v62;
  v138 = v196;
  v136(v137, v196);
  v136(v66, v138);
  sub_1BD3D85F0(v70, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
  return v121;
}

uint64_t sub_1BD3D3320(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v15 - v11;
  sub_1BE052524();
  sub_1BE052524();
  v13 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  sub_1BD0DE19C(v2 + *(v13 + 24), v12, &qword_1EBD44D48);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BD3D8A0C(v12, v8, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BE053D24();
    sub_1BD3CEB24();
    sub_1BD3D85F0(v8, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  }

  return sub_1BD3CED70(a1);
}

uint64_t sub_1BD3D3508()
{
  v1 = v0;
  v2 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v14[-v9 - 8];
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE052524();
  v11 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  sub_1BD0DE19C(v1 + *(v11 + 24), v10, &qword_1EBD44D48);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BD3D8A0C(v10, v6, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BE053D24();
    sub_1BD3CEB24();
    sub_1BD3D85F0(v6, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  }

  sub_1BD3CED70(v14);
  return sub_1BE053D64();
}

uint64_t sub_1BD3D3704(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v16[-v12 - 8];
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE052524();
  sub_1BD0DE19C(v4 + *(a2 + 24), v13, &qword_1EBD44D48);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BD3D8A0C(v13, v9, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BE053D24();
    sub_1BD3CEB24();
    sub_1BD3D85F0(v9, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  }

  sub_1BD3CED70(v16);
  return sub_1BE053D64();
}

uint64_t sub_1BD3D3948()
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE0493F4();
  sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
  sub_1BE052294();
  sub_1BE04AF64();
  sub_1BD3D1640(&qword_1EBD52550, MEMORY[0x1E6969530]);
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD3D3A4C()
{
  sub_1BE052524();
  sub_1BE0493F4();
  sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
  sub_1BE052294();
  sub_1BE04AF64();
  sub_1BD3D1640(&qword_1EBD52550, MEMORY[0x1E6969530]);
  return sub_1BE052294();
}

uint64_t sub_1BD3D3B3C()
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE0493F4();
  sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
  sub_1BE052294();
  sub_1BE04AF64();
  sub_1BD3D1640(&qword_1EBD52550, MEMORY[0x1E6969530]);
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD3D3C3C(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1BE053B84() & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
  {
    return 0;
  }

  return sub_1BE04AED4();
}

unint64_t sub_1BD3D3D1C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 88));
  v7 = *(v6 + 16);
  if (v7 == 2)
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69B8080], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    result = swift_allocObject();
    *(result + 16) = xmmword_1BE0B6CA0;
    v11 = *(v6 + 16);
    if (v11)
    {
      v12 = result;
      v13 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0) - 8);
      v14 = v6 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      v17 = MEMORY[0x1E69E6158];
      v12[7] = MEMORY[0x1E69E6158];
      result = sub_1BD110550();
      v12[8] = result;
      v12[4] = v16;
      v12[5] = v15;
      if (v11 != 1)
      {
        v18 = v14 + *(v13 + 72);
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v12[12] = v17;
        v12[13] = result;
        v12[9] = v19;
        v12[10] = v20;
        sub_1BE048C84();
        sub_1BE048C84();
LABEL_10:
        v9 = sub_1BE04B714();

        (*(v2 + 8))(v5, v1);
        return v9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (v7 == 1)
    {
      v8 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0) - 8);
      v9 = *(v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + 16);
      sub_1BE048C84();
      return v9;
    }

    if (v7 < 3)
    {
      return 0;
    }

    (*(v2 + 104))(v5, *MEMORY[0x1E69B8080], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    result = swift_allocObject();
    *(result + 16) = xmmword_1BE0B6CA0;
    v21 = *(v6 + 16);
    if (v21)
    {
      v22 = result;
      v23 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0) - 8);
      v24 = v6 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
      v22[7] = MEMORY[0x1E69E6158];
      v27 = sub_1BD110550();
      v22[4] = v26;
      v22[5] = v25;
      v28 = MEMORY[0x1E69E65A8];
      v22[12] = MEMORY[0x1E69E6530];
      v22[13] = v28;
      v22[8] = v27;
      v22[9] = v21 - 1;
      sub_1BE048C84();
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3D409C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AF64();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v50 = &v47 - v9;
  v10 = sub_1BE04AA64();
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v54 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v51 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v47 - v21;
  v49 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v23 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v47 - v29;
  if (v1[1])
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  sub_1BE052524();
  sub_1BE052524();
  if (v1[7])
  {
    sub_1BE053D24();
    sub_1BE052524();
    if (v1[9])
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_1BE053D24();
    if (v1[11])
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  sub_1BE053D24();
  if (!v1[9])
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_1BE053D24();
  sub_1BE052524();
  if (v1[11])
  {
LABEL_7:
    sub_1BE053D24();
    sub_1BE052524();
    goto LABEL_11;
  }

LABEL_10:
  sub_1BE053D24();
LABEL_11:
  v31 = type metadata accessor for UnifiedMerchantTokenData(0);
  sub_1BD0DE19C(v1 + v31[10], v30, &qword_1EBD44D48);
  if ((*(v23 + 48))(v30, 1, v49) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BD3D8A0C(v30, v26, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BE053D24();
    sub_1BD3CEB24();
    sub_1BD3D85F0(v26, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  }

  v32 = v56;
  sub_1BD0DE19C(v1 + v31[11], v22, &unk_1EBD3CF70);
  v33 = *(v32 + 48);
  if (v33(v22, 1, v10) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v34 = v55;
    (*(v32 + 32))(v55, v22, v10);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
    sub_1BE052294();
    (*(v32 + 8))(v34, v10);
  }

  v35 = v53;
  v36 = v50;
  sub_1BD0DE19C(v2 + v31[12], v50, &unk_1EBD39970);
  v37 = v52;
  if ((*(v52 + 48))(v36, 1, v35) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v38 = v10;
    v39 = v33;
    v40 = v48;
    (*(v37 + 32))(v48, v36, v35);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD52550, MEMORY[0x1E6969530]);
    sub_1BE052294();
    v41 = v40;
    v33 = v39;
    v10 = v38;
    v32 = v56;
    (*(v37 + 8))(v41, v35);
  }

  if (*(v2 + v31[13] + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  v42 = v51;
  sub_1BD0DE19C(v2 + v31[14], v51, &unk_1EBD3CF70);
  if (v33(v42, 1, v10) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v43 = v55;
    (*(v32 + 32))(v55, v42, v10);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
    sub_1BE052294();
    (*(v32 + 8))(v43, v10);
  }

  if (*(v2 + v31[15] + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  sub_1BE053D24();
  sub_1BE053D24();
  v44 = v54;
  sub_1BD0DE19C(v2 + v31[18], v54, &unk_1EBD3CF70);
  if (v33(v44, 1, v10) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v45 = v55;
    (*(v32 + 32))(v55, v44, v10);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
    sub_1BE052294();
    (*(v32 + 8))(v45, v10);
  }

  if (*(v2 + v31[19] + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  if (*(v2 + v31[20] + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  sub_1BE052524();
  sub_1BD3D7474(a1, *(v2 + v31[22]));
  return sub_1BD3D7288(a1, *(v2 + v31[23]));
}

uint64_t sub_1BD3D4A68(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1BE053D04();
  a3(v5);
  return sub_1BE053D64();
}

uint64_t sub_1BD3D4ACC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1BE053D04();
  a4(v6);
  return sub_1BE053D64();
}

uint64_t sub_1BD3D4B10@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_1BE048C84();
}

uint64_t sub_1BD3D4BAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v202 = a2;
  v198 = sub_1BE049E94();
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198, v5);
  v194 = &v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v196 = (&v189 - v9);
  v215 = sub_1BE04AA64();
  v207 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215, v10);
  v195 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_1BE04A474();
  v218 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222, v12);
  v221 = &v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v213 = (&v189 - v16);
  v17 = type metadata accessor for UnifiedMerchantTokenData.PastPayment(0);
  v210 = *(v17 - 8);
  v211 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v209 = (&v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v223 = &v189 - v22;
  v23 = sub_1BE04AF64();
  v201 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v208 = &v189 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v224 = (&v189 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v214 = &v189 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v226 = &v189 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v189 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v212 = &v189 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v189 - v44;
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v50 = &v189 - v49;
  v199 = [a1 entity];
  v51 = [a1 tokenIdentifier];
  v52 = sub_1BE052434();
  v54 = v53;

  a3[2] = v52;
  a3[3] = v54;
  LOBYTE(v51) = [a1 isLikelyDeferredPaymentToken];
  v225 = type metadata accessor for UnifiedMerchantTokenData(0);
  *(a3 + v225[17]) = v51;
  v55 = [a1 primaryAccountIdentifier];
  v56 = sub_1BE052434();
  v58 = v57;

  *a3 = v56;
  a3[1] = v58;
  v206 = a1;
  v59 = [a1 primaryAccountDisplayName];
  if (v59)
  {
    v60 = v59;
    v61 = sub_1BE052434();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v64 = (a3 + v225[19]);
  *v64 = v61;
  v64[1] = v63;
  v65 = [v206 primaryAccountSuffix];
  if (v65)
  {
    v66 = v65;
    v67 = sub_1BE052434();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0;
  }

  v70 = (a3 + v225[20]);
  *v70 = v67;
  v70[1] = v69;
  v71 = v206;
  v72 = [v206 cardArtURL];
  if (v72)
  {
    v73 = v72;
    sub_1BE04A9F4();

    v74 = *(v207 + 56);
    v74(v50, 0, 1, v215);
  }

  else
  {
    v74 = *(v207 + 56);
    v74(v50, 1, 1, v215);
  }

  sub_1BD0DE204(v50, a3 + v225[18], &unk_1EBD3CF70);
  v75 = [v71 issuerName];
  if (v75)
  {
    v76 = v75;
    v77 = sub_1BE052434();
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  v80 = (a3 + v225[15]);
  *v80 = v77;
  v80[1] = v79;
  v81 = [v71 issuerTokenManagementURL];
  if (v81)
  {
    v82 = v81;
    sub_1BE04A9F4();

    v83 = 0;
  }

  else
  {
    v83 = 1;
  }

  v84 = 1;
  v74(v45, v83, 1, v215);
  v85 = v225;
  sub_1BD0DE204(v45, a3 + v225[14], &unk_1EBD3CF70);
  *(a3 + v85[16]) = [v71 userRevokeDisallowed];
  v86 = [v71 merchantIdentifier];
  v87 = sub_1BE052434();
  v89 = v88;

  a3[8] = v87;
  a3[9] = v89;
  v90 = [v71 merchantIconURL];
  if (v90)
  {
    v91 = v90;
    sub_1BE04A9F4();

    v84 = 0;
  }

  v92 = v201;
  v74(v38, v84, 1, v215);
  sub_1BD0DE204(v38, v212, &unk_1EBD3CF70);
  v93 = [v71 merchantDomain];
  if (v93)
  {
    v94 = v93;
    v95 = sub_1BE052434();
    v97 = v96;
  }

  else
  {
    v95 = 0;
    v97 = 0;
  }

  a3[6] = v95;
  a3[7] = v97;
  v98 = [v71 merchantApplicationIdentifier];
  if (v98)
  {
    v99 = v98;
    v100 = sub_1BE052434();
    v102 = v101;
  }

  else
  {
    v100 = 0;
    v102 = 0;
  }

  v103 = v226;
  a3[10] = v100;
  a3[11] = v102;
  v104 = [v71 merchantTokenManagementURL];
  if (v104)
  {
    v105 = v104;
    sub_1BE04A9F4();

    v106 = 0;
  }

  else
  {
    v106 = 1;
  }

  v74(v103, v106, 1, v215);
  v107 = v225;
  sub_1BD0DE204(v103, a3 + v225[11], &unk_1EBD3CF70);
  v108 = v107[12];
  v109 = [v71 tokenIssuanceDate];
  sub_1BE04AEE4();

  (*(v92 + 56))(a3 + v108, 0, 1, v23);
  v110 = [v71 usageMetadata];
  if (!v110)
  {
    goto LABEL_32;
  }

  v111 = v110;
  v112 = [v110 effectiveExpirationDate];
  v113 = v224;
  sub_1BE04AEE4();

  LOBYTE(v112) = sub_1BE04AE84();
  (*(v92 + 8))(v113, v23);
  if ((v112 & 1) == 0)
  {

LABEL_32:
    v118 = [v71 merchantName];
    v119 = sub_1BE052434();
    v121 = v120;

    a3[4] = v119;
    a3[5] = v121;
    v122 = v225;
    v123 = (a3 + v225[13]);
    *v123 = 0;
    v123[1] = 0;
    v124 = MEMORY[0x1E69E7CC0];
    *(a3 + v122[22]) = MEMORY[0x1E69E7CC0];
    *(a3 + v122[23]) = v124;
    v125 = v214;
    goto LABEL_33;
  }

  v114 = [v111 usageInformation];
  v115 = [v114 merchantLogoName];
  v192 = v111;
  if (v115)
  {
    v116 = v115;
    sub_1BE052434();

    v117 = [v111 usageInformation];
    sub_1BE04B034();
    v144 = sub_1BE049F84();
  }

  else
  {
    v144 = 0;
  }

  v200 = v144;
  v145 = [v114 merchantName];
  v146 = sub_1BE0495B4();
  v148 = v147;

  a3[4] = v146;
  a3[5] = v148;
  v149 = [v114 otherUsageDescription];
  if (v149)
  {
    v150 = v149;
    v151 = sub_1BE0495B4();
    v153 = v152;
  }

  else
  {
    v151 = 0;
    v153 = 0;
  }

  v154 = v225;
  v155 = (a3 + v225[13]);
  *v155 = v151;
  v155[1] = v153;
  v156 = sub_1BE049F74();
  MEMORY[0x1EEE9AC00](v156, v157);
  v187 = v114;
  v188 = v212;
  sub_1BDA3DAE8(sub_1BD3DBD20, (&v189 - 4), v156);
  v159 = v158;

  *(a3 + v154[22]) = v159;
  v160 = sub_1BE049F64();
  v161 = v160;
  if (v160 >> 62)
  {
    goto LABEL_72;
  }

  for (i = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v125 = v214;
    v190 = v144;
    v191 = v114;
    v193 = a3;
    if (!i)
    {
      break;
    }

    v144 = 0;
    v219 = v161 & 0xFFFFFFFFFFFFFF8;
    v220 = v161 & 0xC000000000000001;
    ++v218;
    v217 = (v201 + 48);
    v203 = (v201 + 32);
    v224 = MEMORY[0x1E69E7CC0];
    a3 = v213;
    v205 = v161;
    v204 = i;
    while (1)
    {
      if (v220)
      {
        v164 = MEMORY[0x1BFB40900](v144, v161);
      }

      else
      {
        if (v144 >= *(v219 + 16))
        {
          goto LABEL_71;
        }

        v164 = *(v161 + 8 * v144 + 32);
      }

      v165 = v164;
      if (__OFADD__(v144, 1))
      {
        break;
      }

      v226 = (v144 + 1);
      if (qword_1EBD36BF8 != -1)
      {
        swift_once();
      }

      v166 = sub_1BE04B2F4();
      v114 = __swift_project_value_buffer(v166, qword_1EBDAB000);
      v167 = v221;
      sub_1BE049F14();
      sub_1BE04B204();
      (*v218)(v167, v222);
      if ((*v217)(a3, 1, v23) == 1)
      {

        sub_1BD0DE53C(a3, &unk_1EBD39970);
        v163 = v226;
      }

      else
      {
        v114 = v203;
        v168 = *v203;
        v169 = v208;
        (*v203)(v208, a3, v23);
        v170 = [v165 identifier];
        v216 = sub_1BE052434();
        v172 = v171;

        v173 = v211;
        v174 = v209;
        sub_1BE049F04();

        v168(v174 + *(v173 + 24), v169, v23);
        *v174 = v216;
        v174[1] = v172;
        sub_1BD3D8A0C(v174, v223, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v224 = sub_1BD1D8D0C(0, v224[2] + 1, 1, v224);
        }

        v176 = v224[2];
        v175 = v224[3];
        a3 = v213;
        v161 = v205;
        i = v204;
        v163 = v226;
        if (v176 >= v175 >> 1)
        {
          v224 = sub_1BD1D8D0C(v175 > 1, v176 + 1, 1, v224);
        }

        v125 = v214;
        v177 = v223;
        v178 = v224;
        v224[2] = v176 + 1;
        sub_1BD3D8A0C(v177, v178 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v176, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      }

      ++v144;
      if (v163 == i)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    ;
  }

  v224 = MEMORY[0x1E69E7CC0];
LABEL_68:

  a3 = v193;
  *(v193 + v225[23]) = v224;
  v71 = v206;
  v92 = v201;
  if (v190)
  {
    v179 = (a3 + v225[10]);
    v180 = v200;
    v181 = [v200 data];
    v182 = sub_1BE04AAC4();
    v184 = v183;

    *v179 = v182;
    v179[1] = v184;
    v185 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v185 - 8) + 56))(v179, 0, 1, v185);
    goto LABEL_37;
  }

LABEL_33:
  sub_1BD0DE19C(v212, v125, &unk_1EBD3CF70);
  v126 = v125;
  v127 = v207;
  v128 = v215;
  if ((*(v207 + 48))(v126, 1, v215) == 1)
  {
    sub_1BD0DE53C(v126, &unk_1EBD3CF70);
    v129 = v225[10];
    v130 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
    (*(*(v130 - 8) + 56))(a3 + v129, 1, 1, v130);
  }

  else
  {
    v131 = *(v127 + 32);
    v132 = v195;
    v131(v195, v126, v128);
    v133 = v225[10];
    v131(a3 + v133, v132, v128);
    v134 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v134 - 8) + 56))(a3 + v133, 0, 1, v134);
  }

  v200 = 0;
LABEL_37:
  v135 = v198;
  v136 = v197;
  v137 = v196;
  sub_1BE049EB4();
  v138 = (*(v136 + 88))(v137, v135);
  if (v138 == *MEMORY[0x1E6967CB8])
  {
    (*(v92 + 8))(v202, v23);

    (*(v136 + 96))(v137, v135);
    v139 = *v137;
    v140 = v137[1];
LABEL_43:
    v142 = (a3 + v225[21]);
    *v142 = v139;
    v142[1] = v140;
    return sub_1BD0DE53C(v212, &unk_1EBD3CF70);
  }

  if (v138 == *MEMORY[0x1E6967CB0] || v138 == *MEMORY[0x1E6967CA0] || v138 == *MEMORY[0x1E6967CA8])
  {
    v139 = sub_1BE052434();
    v140 = v141;

    (*(v92 + 8))(v202, v23);
    goto LABEL_43;
  }

  v227 = 0;
  v228 = 0xE000000000000000;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD00000000000001DLL, 0x80000001BE127800);
  v186 = v194;
  sub_1BE049EB4();
  sub_1BE053974();
  (*(v136 + 8))(v186, v135);
  LODWORD(v188) = 0;
  v187 = 308;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

size_t sub_1BD3D5F60@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v98 = a4;
  v90 = a2;
  v91 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v92 = &v84 - v7;
  v8 = sub_1BE04AA64();
  v94 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v87 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v96 = (&v84 - v13);
  v85 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v85, v14);
  v86 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
  v100 = *(v20 - 8);
  v101 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v89, v24);
  v88 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE049F24();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = (&v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
  MEMORY[0x1EEE9AC00](v93, v31);
  v95 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *a1;
  sub_1BE049F34();
  v33 = (*(v27 + 88))(v30, v26);
  if (v33 != *MEMORY[0x1E6967D10])
  {
    if (v33 != *MEMORY[0x1E6967D08])
    {
      v50 = v94;
      if (v33 == *MEMORY[0x1E6967D00])
      {
        (*(v27 + 96))(v30, v26);
        v51 = *v30;
        v52 = v86;
        sub_1BE04A034();
        sub_1BE04A024();

        v49 = v95;
        sub_1BD3D8A0C(v52, v95, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v53 = v95;
        swift_storeEnumTagMultiPayload();
        (*(v27 + 8))(v30, v26);
        v49 = v53;
      }

LABEL_22:
      v56 = [v99 imageName];
      v58 = v96;
      v57 = v97;
      if (v56)
      {
        v59 = v56;
        sub_1BE052434();

        sub_1BE04B034();
        v60 = sub_1BE049F84();
        if (v57)
        {
        }

        else
        {
          v78 = v60;

          if (v78)
          {
            v66 = v78;
            v79 = [v66 data];
            v80 = sub_1BE04AAC4();
            v82 = v81;

            *v58 = v80;
            v58[1] = v82;
            v83 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v83 - 8) + 56))(v58, 0, 1, v83);
LABEL_29:
            v67 = v99;
            v68 = [v99 identifier];
            v69 = sub_1BE052434();
            v71 = v70;

            v72 = [v67 label];
            v73 = sub_1BE0495B4();
            v75 = v74;

            v76 = v98;
            *v98 = v69;
            v76[1] = v71;
            v76[2] = v73;
            v76[3] = v75;
            v77 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
            sub_1BD0DE204(v58, v76 + *(v77 + 24), &qword_1EBD44D48);
            return sub_1BD3D8A0C(v49, v76 + *(v77 + 28), type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
          }
        }
      }

      v61 = v92;
      sub_1BD0DE19C(v91, v92, &unk_1EBD3CF70);
      if ((*(v50 + 48))(v61, 1, v8) == 1)
      {
        sub_1BD0DE53C(v61, &unk_1EBD3CF70);
        v62 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
        (*(*(v62 - 8) + 56))(v58, 1, 1, v62);
      }

      else
      {
        v63 = *(v50 + 32);
        v64 = v87;
        v63(v87, v61, v8);
        v63(v58, v64, v8);
        v65 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v65 - 8) + 56))(v58, 0, 1, v65);
      }

      v66 = 0;
      goto LABEL_29;
    }

    (*(v27 + 96))(v30, v26);
    v48 = *v30;
    sub_1BE049FA4();
    sub_1BE049F94();

    v49 = v95;
    sub_1BD3D8A0C(v19, v95, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    v50 = v94;
    goto LABEL_22;
  }

  (*(v27 + 96))(v30, v26);
  v34 = *v30;
  v35 = sub_1BE049FB4();
  if (!(v35 >> 62))
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_4;
    }

LABEL_19:

    v40 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v55 = v88;
    sub_1BE04A014();

    *(v55 + *(v89 + 20)) = v40;
    v49 = v95;
    sub_1BD3D8A0C(v55, v95, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
    goto LABEL_21;
  }

  v54 = v35;
  v36 = sub_1BE053704();
  v35 = v54;
  if (!v36)
  {
    goto LABEL_19;
  }

LABEL_4:
  v37 = v35;
  v102 = MEMORY[0x1E69E7CC0];
  result = sub_1BD5320C0(0, v36 & ~(v36 >> 63), 0);
  if ((v36 & 0x8000000000000000) == 0)
  {
    v85 = v34;
    v86 = v8;
    v39 = 0;
    v40 = v102;
    v41 = v37;
    v42 = v37 & 0xC000000000000001;
    v43 = v37;
    do
    {
      if (v42)
      {
        v44 = MEMORY[0x1BFB40900](v39, v41);
      }

      else
      {
        v44 = *(v41 + 8 * v39 + 32);
      }

      v45 = v44;
      sub_1BE049F54();
      sub_1BE049F44();

      v102 = v40;
      v47 = *(v40 + 16);
      v46 = *(v40 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1BD5320C0(v46 > 1, v47 + 1, 1);
        v40 = v102;
      }

      ++v39;
      *(v40 + 16) = v47 + 1;
      sub_1BD3D8A0C(v23, v40 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v47, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
      v41 = v43;
    }

    while (v36 != v39);

    v34 = v85;
    v8 = v86;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3D694C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1BE04A3C4();
    if (v10)
    {
      v11 = sub_1BE04A3E4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1BE04A3D4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1BE04A3C4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1BE04A3E4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1BE04A3D4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1BD3D6B7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1BD3D8BFC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1BD1245AC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1BD3D694C(v13, a3, a4, &v12);
  v10 = v4;
  sub_1BD1245AC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1BD3D6D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageUsageGroup(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 16);
  result = MEMORY[0x1BFB40DA0](v10, v7);
  if (v10)
  {
    v12 = *(v4 + 24);
    v13 = *(v4 + 28);
    v14 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    do
    {
      sub_1BD3D89A4(v14, v9, type metadata accessor for SEStorageUsageGroup);
      sub_1BD3D6EDC(a1, *v9);
      sub_1BE04C164();
      sub_1BD3D1640(&qword_1EBD3A348, MEMORY[0x1E69B8260]);
      sub_1BE052294();
      v16 = *(v9 + v12);
      if (v16 == 0.0)
      {
        v16 = 0.0;
      }

      MEMORY[0x1BFB40DD0](*&v16);
      v17 = *(v9 + v13);
      if (v17 == 0.0)
      {
        v17 = 0.0;
      }

      MEMORY[0x1BFB40DD0](*&v17);
      result = sub_1BD3D85F0(v9, type metadata accessor for SEStorageUsageGroup);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1BD3D6EDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04AF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v12 = *(v11 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  result = MEMORY[0x1BFB40DA0](v17, v14);
  v39 = v17;
  if (v17)
  {
    v19 = v12;
    v20 = 0;
    v21 = v11[6];
    v37 = v11[7];
    v38 = v21;
    v22 = v11[8];
    v35 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v36 = v22;
    v23 = v4;
    v24 = (v4 + 48);
    v34 = *(v19 + 72);
    v31 = (v23 + 8);
    v32 = (v23 + 32);
    do
    {
      sub_1BD3D89A4(v35 + v34 * v20, v16, type metadata accessor for SEStorageUsageGroup.PassEntry);
      sub_1BE053084();
      v27 = *(v16 + 1);
      MEMORY[0x1BFB40DA0](*(v27 + 16));
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = v27 + 40;
        do
        {
          sub_1BE048C84();
          sub_1BE052524();

          v29 += 16;
          --v28;
        }

        while (v28);
      }

      sub_1BD0DE19C(&v16[v38], v10, &unk_1EBD39970);
      if ((*v24)(v10, 1, v3) == 1)
      {
        sub_1BE053D24();
      }

      else
      {
        v25 = v33;
        (*v32)(v33, v10, v3);
        sub_1BE053D24();
        sub_1BD3D1640(&qword_1EBD52550, MEMORY[0x1E6969530]);
        sub_1BE052294();
        (*v31)(v25, v3);
      }

      v26 = *&v16[v37];
      if (v26 == 0.0)
      {
        v26 = 0.0;
      }

      MEMORY[0x1BFB40DD0](*&v26);
      ++v20;
      sub_1BE053D24();
      result = sub_1BD3D85F0(v16, type metadata accessor for SEStorageUsageGroup.PassEntry);
    }

    while (v20 != v39);
  }

  return result;
}

uint64_t sub_1BD3D7288(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnifiedMerchantTokenData.PastPayment(0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x1BFB40DA0](v9, v6);
  if (v9)
  {
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_1BD3D89A4(v11, v8, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      sub_1BE052524();
      sub_1BE0493F4();
      sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
      sub_1BE052294();
      sub_1BE04AF64();
      sub_1BD3D1640(&qword_1EBD52550, MEMORY[0x1E6969530]);
      sub_1BE052294();
      result = sub_1BD3D85F0(v8, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1BD3D7474(uint64_t a1, uint64_t a2)
{
  v114 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v114, v3);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1BE04A474();
  v133 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v6);
  v98 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v115 = &v95 - v10;
  v113 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v113, v11);
  v130 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE0493F4();
  v134 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v136 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v112 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v111 = &v95 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = &v95 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v95 - v27;
  v102 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v29);
  v31 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1BE049FD4();
  v117 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v32);
  v108 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v107, v34);
  v118 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
  MEMORY[0x1EEE9AC00](v129, v36);
  v131 = &v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1BE04AA64();
  v135 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v38);
  v103 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v122 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v40);
  v127 = (&v95 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v42, v43);
  v126 = &v95 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v125 = &v95 - v47;
  v48 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  v119 = *(v48 - 8);
  v50 = MEMORY[0x1EEE9AC00](v48, v49);
  v52 = &v95 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a2 + 16);
  result = MEMORY[0x1BFB40DA0](v53, v50);
  v124 = v53;
  if (v53)
  {
    v55 = 0;
    v123 = a2 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    v122 += 6;
    v100 = (v135 + 4);
    v56 = *(v48 + 24);
    v120 = *(v48 + 28);
    v121 = v56;
    v99 = (v135 + 1);
    v57 = v134;
    v58 = (v134 + 6);
    v119 = *(v119 + 72);
    ++v134;
    v135 = (v57 + 4);
    v106 = (v133 + 6);
    v97 = (v133 + 4);
    v96 = (v133 + 1);
    v105 = (v117 + 8);
    v133 = (v57 + 6);
    v116 = v5;
    v132 = v52;
    while (1)
    {
      sub_1BD3D89A4(v123 + v119 * v55, v52, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      sub_1BE052524();
      sub_1BE052524();
      v59 = v125;
      sub_1BD0DE19C(&v52[v121], v125, &qword_1EBD44D48);
      if ((*v122)(v59, 1, v128) == 1)
      {
        sub_1BE053D24();
        v60 = v130;
        goto LABEL_14;
      }

      v61 = v126;
      sub_1BD3D8A0C(v59, v126, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      sub_1BE053D24();
      sub_1BD3D89A4(v61, v127, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v60 = v130;
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v63 = *v127;
        v64 = v127[1];
        MEMORY[0x1BFB40DA0](1);
        sub_1BE04AAD4();
        v65 = v64;
        v60 = v130;
        sub_1BD1245AC(v63, v65);
LABEL_12:
        sub_1BD3D85F0(v126, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
        goto LABEL_14;
      }

      v70 = *v127;
      MEMORY[0x1BFB40DA0](2);
      sub_1BE053084();
      sub_1BD3D85F0(v126, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);

LABEL_14:
      sub_1BD3D89A4(&v132[v120], v131, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
      v71 = swift_getEnumCaseMultiPayload();
      if (v71 > 1)
      {
        if (v71 == 2)
        {
          sub_1BD3D8A0C(v131, v5, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
          MEMORY[0x1BFB40DA0](2);
          v83 = v111;
          sub_1BD0DE19C(v5, v111, &qword_1EBD3BCA0);
          v84 = *v58;
          if ((*v58)(v83, 1, v13) == 1)
          {
            sub_1BE053D24();
          }

          else
          {
            v86 = v136;
            (*v135)(v136, v83, v13);
            sub_1BE053D24();
            sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
            sub_1BE052294();
            (*v134)(v86, v13);
          }

          v87 = v112;
          sub_1BD0DE19C(&v5[*(v114 + 20)], v112, &qword_1EBD3BCA0);
          if (v84(v87, 1, v13) == 1)
          {
            sub_1BE053D24();
          }

          else
          {
            v90 = v136;
            (*v135)(v136, v87, v13);
            sub_1BE053D24();
            sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
            sub_1BE052294();
            (*v134)(v90, v13);
          }

          sub_1BD3D85F0(v5, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
        }

        else
        {
          MEMORY[0x1BFB40DA0](3);
        }
      }

      else
      {
        if (!v71)
        {
          v117 = v55;
          v72 = v118;
          sub_1BD3D8A0C(v131, v118, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
          MEMORY[0x1BFB40DA0](0);
          v73 = v108;
          sub_1BE049FE4();
          sub_1BE049FC4();
          (*v105)(v73, v109);
          sub_1BE052524();

          sub_1BE049FF4();
          sub_1BE053D34();
          v74 = *(v72 + *(v107 + 20));
          MEMORY[0x1BFB40DA0](*(v74 + 16));
          v75 = *(v74 + 16);
          if (v75)
          {
            v76 = v74 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
            v77 = *(v101 + 72);
            do
            {
              sub_1BD3D89A4(v76, v31, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
              sub_1BD0DE19C(v31, v28, &qword_1EBD3BCA0);
              if ((*v58)(v28, 1, v13) == 1)
              {
                sub_1BE053D24();
              }

              else
              {
                v78 = v31;
                v79 = v28;
                v80 = v13;
                v81 = v136;
                (*v135)(v136, v79, v80);
                sub_1BE053D24();
                sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
                sub_1BE052294();
                v82 = v81;
                v13 = v80;
                v28 = v79;
                v31 = v78;
                v58 = v133;
                (*v134)(v82, v13);
              }

              sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278]);
              sub_1BE052294();
              sub_1BD3D85F0(v31, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
              v76 += v77;
              --v75;
            }

            while (v75);
          }

          sub_1BD3D85F0(v118, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
          v5 = v116;
          v52 = v132;
          v55 = v117;
          goto LABEL_5;
        }

        sub_1BD3D8A0C(v131, v60, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
        MEMORY[0x1BFB40DA0](1);
        v85 = v110;
        sub_1BD0DE19C(v60, v110, &qword_1EBD3BCA0);
        if ((*v58)(v85, 1, v13) == 1)
        {
          sub_1BE053D24();
        }

        else
        {
          v88 = v136;
          (*v135)(v136, v85, v13);
          sub_1BE053D24();
          sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
          sub_1BE052294();
          (*v134)(v88, v13);
        }

        v89 = v115;
        sub_1BD0DE19C(v60 + *(v113 + 20), v115, &qword_1EBD44DC0);
        if ((*v106)(v89, 1, v137) == 1)
        {
          sub_1BE053D24();
        }

        else
        {
          v91 = v98;
          v92 = v55;
          v93 = v137;
          (*v97)(v98, v115, v137);
          sub_1BE053D24();
          sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278]);
          sub_1BE052294();
          v94 = v93;
          v55 = v92;
          v58 = v133;
          (*v96)(v91, v94);
        }

        sub_1BD3D85F0(v60, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
      }

      v52 = v132;
LABEL_5:
      ++v55;
      result = sub_1BD3D85F0(v52, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      if (v55 == v124)
      {
        return result;
      }
    }

    v66 = v55;
    v67 = v103;
    v68 = v104;
    (*v100)(v103, v127, v104);
    MEMORY[0x1BFB40DA0](0);
    sub_1BD3D1640(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
    sub_1BE052294();
    v69 = v67;
    v55 = v66;
    v58 = v133;
    v5 = v116;
    (*v99)(v69, v68);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1BD3D85F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD3D8650(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE0493F4();
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  result = MEMORY[0x1BFB40DA0](v17, v14);
  if (v17)
  {
    v19 = *(v11 + 20);
    v20 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v21 = (v24 + 48);
    v22 = (v24 + 8);
    v23 = (v24 + 32);
    v24 = *(v12 + 72);
    v25 = v19;
    do
    {
      sub_1BD3D89A4(v20, v16, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
      sub_1BD0DE19C(v16, v10, &qword_1EBD3BCA0);
      if ((*v21)(v10, 1, v3) == 1)
      {
        sub_1BE053D24();
      }

      else
      {
        (*v23)(v6, v10, v3);
        sub_1BE053D24();
        sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790]);
        sub_1BE052294();
        (*v22)(v6, v3);
      }

      sub_1BE04A474();
      sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278]);
      sub_1BE052294();
      result = sub_1BD3D85F0(v16, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
      v20 += v24;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_1BD3D89A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3D8A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3D8A74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1BFB40DA0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[1];
      v15 = *v5;
      v16 = v6;
      v7 = v5[7];
      v21 = v5[6];
      v22 = v7;
      v23 = *(v5 + 16);
      v8 = v5[3];
      v17 = v5[2];
      v18 = v8;
      v9 = v5[5];
      v19 = v5[4];
      v20 = v9;
      v10 = *(&v16 + 1);
      sub_1BD31435C(&v15, v14);
      sub_1BE052524();
      if (v10)
      {
        sub_1BE052524();
      }

      if (*(&v17 + 1))
      {
        sub_1BE052524();
      }

      if (*(&v18 + 1))
      {
        sub_1BE052524();
      }

      if (v19)
      {
        v11 = v19;
        sub_1BE053084();
      }

      if (*(&v19 + 1))
      {
        v12 = *(&v19 + 1);
        sub_1BE053084();
      }

      if (v22)
      {
        sub_1BE052524();
      }

      if (v20)
      {
        v13 = v20;
        sub_1BE053084();
      }

      if ((v21 & 1) == 0)
      {
        MEMORY[0x1BFB40DA0](*(&v20 + 1));
      }

      result = sub_1BD3143B8(&v15);
      v5 = (v5 + 136);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1BD3D8BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1BE04A3C4();
  v11 = result;
  if (result)
  {
    result = sub_1BE04A3E4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1BE04A3D4();
  sub_1BD3D694C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1BD3D8CB4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1BD041A38(a3, a4);
          return sub_1BD3D6B7C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BD3D8E1C(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_1BE04AA64();
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v37 - v13);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E70);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v37 - v21;
  v24 = (&v37 + *(v23 + 56) - v21);
  sub_1BD3D89A4(a1, &v37 - v21, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  sub_1BD3D89A4(v38, v24, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD3D89A4(v22, v14, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      v26 = *v14;
      v27 = v14[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = *v24;
        v28 = v24[1];
        v30 = sub_1BD3D8CB4(v26, v27, v29, v28);
        sub_1BD1245AC(v29, v28);
        sub_1BD1245AC(v26, v27);
LABEL_13:
        sub_1BD3D85F0(v22, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
        return v30 & 1;
      }

      sub_1BD1245AC(v26, v27);
    }

    else
    {
      sub_1BD3D89A4(v22, v10, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      v33 = *v10;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v34 = *v24;
        sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
        v30 = sub_1BE053074();

        goto LABEL_13;
      }
    }
  }

  else
  {
    v31 = v6;
    v32 = v37;
    sub_1BD3D89A4(v22, v18, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v32 + 32))(v31, v24, v3);
      v30 = sub_1BE04A9E4();
      v35 = *(v32 + 8);
      v35(v31, v3);
      v35(v18, v3);
      goto LABEL_13;
    }

    (*(v32 + 8))(v18, v3);
  }

  sub_1BD0DE53C(v22, &qword_1EBD44E70);
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1BD3D91F4(void *a1, void *a2)
{
  v4 = sub_1BE04AF64();
  v141 = *(v4 - 8);
  v142 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v136 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v139 = &v130 - v9;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  MEMORY[0x1EEE9AC00](v138, v10);
  v140 = &v130 - v11;
  v12 = sub_1BE04AA64();
  v13 = *(v12 - 8);
  v144 = v12;
  v145 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v137 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v132 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v134 = &v130 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v130 - v24;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E78);
  MEMORY[0x1EEE9AC00](v143, v26);
  v133 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v135 = &v130 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v130 - v33;
  v35 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v130 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E80);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v130 - v46;
  v48 = a1[1];
  v49 = a2[1];
  if (v48)
  {
    if (!v49 || (*a1 != *a2 || v48 != v49) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v49)
  {
    goto LABEL_57;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1BE053B84() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_57;
  }

  v50 = a1[7];
  v51 = a2[7];
  if (v50)
  {
    if (!v51 || (a1[6] != a2[6] || v50 != v51) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v51)
  {
    goto LABEL_57;
  }

  v52 = a1[9];
  v53 = a2[9];
  if (v52)
  {
    if (!v53 || (a1[8] != a2[8] || v52 != v53) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v53)
  {
    goto LABEL_57;
  }

  v54 = a1[11];
  v55 = a2[11];
  if (v54)
  {
    if (!v55 || (a1[10] != a2[10] || v54 != v55) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v55)
  {
    goto LABEL_57;
  }

  v56 = type metadata accessor for UnifiedMerchantTokenData(0);
  v57 = *(v56 + 40);
  v130 = v56;
  v131 = v57;
  v58 = *(v44 + 48);
  sub_1BD0DE19C(&v57[a1], v47, &qword_1EBD44D48);
  v59 = &v131[a2];
  v131 = v58;
  sub_1BD0DE19C(v59, &v58[v47], &qword_1EBD44D48);
  v60 = *(v36 + 48);
  if (v60(v47, 1, v35) == 1)
  {
    if (v60(&v131[v47], 1, v35) == 1)
    {
      sub_1BD0DE53C(v47, &qword_1EBD44D48);
      goto LABEL_42;
    }

LABEL_40:
    v61 = &qword_1EBD44E80;
    v62 = v47;
LABEL_56:
    sub_1BD0DE53C(v62, v61);
    goto LABEL_57;
  }

  sub_1BD0DE19C(v47, v43, &qword_1EBD44D48);
  if (v60(&v131[v47], 1, v35) == 1)
  {
    sub_1BD3D85F0(v43, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    goto LABEL_40;
  }

  sub_1BD3D8A0C(&v131[v47], v39, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  v63 = sub_1BD3D8E1C(v43, v39);
  sub_1BD3D85F0(v39, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  sub_1BD3D85F0(v43, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  sub_1BD0DE53C(v47, &qword_1EBD44D48);
  if ((v63 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_42:
  v64 = v130;
  v65 = v130[11];
  v66 = *(v143 + 48);
  sub_1BD0DE19C(a1 + v65, v34, &unk_1EBD3CF70);
  sub_1BD0DE19C(a2 + v65, &v34[v66], &unk_1EBD3CF70);
  v67 = v144;
  v68 = *(v145 + 48);
  if ((v68)(v34, 1, v144) == 1)
  {
    if ((v68)(&v34[v66], 1, v67) == 1)
    {
      v131 = v68;
      sub_1BD0DE53C(v34, &unk_1EBD3CF70);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  sub_1BD0DE19C(v34, v25, &unk_1EBD3CF70);
  if ((v68)(&v34[v66], 1, v67) == 1)
  {
    (*(v145 + 8))(v25, v67);
LABEL_47:
    v61 = &qword_1EBD44E78;
    v62 = v34;
    goto LABEL_56;
  }

  v131 = v68;
  v69 = v145;
  v70 = v137;
  (*(v145 + 32))(v137, &v34[v66], v67);
  sub_1BD3D1640(&qword_1EBD5AAF0, MEMORY[0x1E6968FB0]);
  v71 = sub_1BE052334();
  v72 = *(v69 + 8);
  v73 = v70;
  v64 = v130;
  v72(v73, v67);
  v72(v25, v67);
  sub_1BD0DE53C(v34, &unk_1EBD3CF70);
  if ((v71 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_49:
  v74 = v64[12];
  v75 = *(v138 + 48);
  v76 = v140;
  sub_1BD0DE19C(a1 + v74, v140, &unk_1EBD39970);
  sub_1BD0DE19C(a2 + v74, v76 + v75, &unk_1EBD39970);
  v78 = v141;
  v77 = v142;
  v79 = *(v141 + 48);
  if (v79(v76, 1, v142) == 1)
  {
    if (v79(v76 + v75, 1, v77) == 1)
    {
      sub_1BD0DE53C(v76, &unk_1EBD39970);
      goto LABEL_60;
    }

LABEL_54:
    v61 = &qword_1EBD3A750;
LABEL_55:
    v62 = v76;
    goto LABEL_56;
  }

  sub_1BD0DE19C(v76, v139, &unk_1EBD39970);
  if (v79(v76 + v75, 1, v77) == 1)
  {
    (*(v78 + 8))(v139, v77);
    goto LABEL_54;
  }

  (*(v78 + 32))(v136, v76 + v75, v77);
  sub_1BD3D1640(&qword_1EBD3E460, MEMORY[0x1E6969530]);
  v82 = v139;
  v83 = sub_1BE052334();
  v84 = *(v78 + 8);
  v84(v136, v77);
  v84(v82, v77);
  sub_1BD0DE53C(v76, &unk_1EBD39970);
  if ((v83 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_60:
  v85 = v64[13];
  v86 = (a1 + v85);
  v87 = *(a1 + v85 + 8);
  v88 = (a2 + v85);
  v89 = v88[1];
  if (v87)
  {
    if (!v89 || (*v86 != *v88 || v87 != v89) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v89)
  {
    goto LABEL_57;
  }

  v90 = v64[14];
  v91 = *(v143 + 48);
  v76 = v135;
  sub_1BD0DE19C(a1 + v90, v135, &unk_1EBD3CF70);
  sub_1BD0DE19C(a2 + v90, v76 + v91, &unk_1EBD3CF70);
  v92 = v144;
  v93 = v131;
  if ((v131)(v76, 1, v144) == 1)
  {
    if ((v93)(v76 + v91, 1, v92) == 1)
    {
      v131 = v93;
      sub_1BD0DE53C(v76, &unk_1EBD3CF70);
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  v94 = v134;
  sub_1BD0DE19C(v76, v134, &unk_1EBD3CF70);
  v131 = v93;
  if ((v93)(v76 + v91, 1, v92) == 1)
  {
    (*(v145 + 8))(v94, v92);
LABEL_72:
    v61 = &qword_1EBD44E78;
    goto LABEL_55;
  }

  v95 = v145;
  v96 = v137;
  (*(v145 + 32))(v137, v76 + v91, v92);
  sub_1BD3D1640(&qword_1EBD5AAF0, MEMORY[0x1E6968FB0]);
  v97 = sub_1BE052334();
  v98 = *(v95 + 8);
  v98(v96, v92);
  v98(v94, v92);
  sub_1BD0DE53C(v76, &unk_1EBD3CF70);
  v64 = v130;
  if ((v97 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_74:
  v99 = v64[15];
  v100 = (a1 + v99);
  v101 = *(a1 + v99 + 8);
  v102 = (a2 + v99);
  v103 = v102[1];
  if (v101)
  {
    if (!v103 || (*v100 != *v102 || v101 != v103) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v103)
  {
    goto LABEL_57;
  }

  if (*(a1 + v64[16]) != *(a2 + v64[16]) || *(a1 + v130[17]) != *(a2 + v130[17]))
  {
    goto LABEL_57;
  }

  v104 = v130[18];
  v105 = *(v143 + 48);
  v106 = v133;
  sub_1BD0DE19C(a1 + v104, v133, &unk_1EBD3CF70);
  sub_1BD0DE19C(a2 + v104, v106 + v105, &unk_1EBD3CF70);
  if ((v131)(v106, 1, v144) != 1)
  {
    v107 = v133;
    sub_1BD0DE19C(v133, v132, &unk_1EBD3CF70);
    if ((v131)(v107 + v105, 1, v144) != 1)
    {
      v108 = v144;
      v109 = v145;
      v110 = v133;
      v111 = v133 + v105;
      v112 = v137;
      (*(v145 + 32))(v137, v111, v144);
      sub_1BD3D1640(&qword_1EBD5AAF0, MEMORY[0x1E6968FB0]);
      v113 = v132;
      v114 = sub_1BE052334();
      v115 = *(v109 + 8);
      v115(v112, v108);
      v115(v113, v108);
      sub_1BD0DE53C(v110, &unk_1EBD3CF70);
      if ((v114 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_90;
    }

    (*(v145 + 8))(v132, v144);
    goto LABEL_88;
  }

  if ((v131)(v133 + v105, 1, v144) != 1)
  {
LABEL_88:
    v61 = &qword_1EBD44E78;
    v62 = v133;
    goto LABEL_56;
  }

  sub_1BD0DE53C(v133, &unk_1EBD3CF70);
LABEL_90:
  v116 = v130[19];
  v117 = (a1 + v116);
  v118 = *(a1 + v116 + 8);
  v119 = (a2 + v116);
  v120 = v119[1];
  if (v118)
  {
    if (!v120 || (*v117 != *v119 || v118 != v120) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v120)
  {
    goto LABEL_57;
  }

  v121 = v130[20];
  v122 = (a1 + v121);
  v123 = *(a1 + v121 + 8);
  v124 = (a2 + v121);
  v125 = v124[1];
  if (v123)
  {
    if (!v125 || (*v122 != *v124 || v123 != v125) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v125)
  {
    goto LABEL_57;
  }

  v126 = v130[21];
  v127 = *(a1 + v126);
  v128 = *(a1 + v126 + 8);
  v129 = (a2 + v126);
  if (v127 == *v129 && v128 == v129[1] || (sub_1BE053B84()) && (sub_1BD3FE6DC(*(a1 + v130[22]), *(a2 + v130[22])))
  {
    v80 = sub_1BD3FEC0C(*(a1 + v130[23]), *(a2 + v130[23]));
    return v80 & 1;
  }

LABEL_57:
  v80 = 0;
  return v80 & 1;
}

BOOL sub_1BD3DA260(void *a1, void *a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E80);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BE053B84() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v24 = v8;
  v25 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  v17 = *(v25 + 24);
  v18 = *(v13 + 48);
  sub_1BD0DE19C(a1 + v17, v16, &qword_1EBD44D48);
  sub_1BD0DE19C(a2 + v17, &v16[v18], &qword_1EBD44D48);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &qword_1EBD44D48);
      return sub_1BD3DA5C8(a1 + *(v25 + 28), a2 + *(v25 + 28));
    }

    goto LABEL_12;
  }

  sub_1BD0DE19C(v16, v12, &qword_1EBD44D48);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1BD3D85F0(v12, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
LABEL_12:
    sub_1BD0DE53C(v16, &qword_1EBD44E80);
    return 0;
  }

  v21 = v24;
  sub_1BD3D8A0C(&v16[v18], v24, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  v22 = sub_1BD3D8E1C(v12, v21);
  sub_1BD3D85F0(v21, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  sub_1BD3D85F0(v12, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  sub_1BD0DE53C(v16, &qword_1EBD44D48);
  if (v22)
  {
    return sub_1BD3DA5C8(a1 + *(v25 + 28), a2 + *(v25 + 28));
  }

  return 0;
}

BOOL sub_1BD3DA5C8(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v3 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE049FD4();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v58 - v15;
  v59 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v59, v17);
  v64 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v58 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v58 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E88);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v58 - v33;
  v36 = *(v35 + 56);
  sub_1BD3D89A4(a1, &v58 - v33, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
  sub_1BD3D89A4(v65, &v34[v36], type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
LABEL_16:
        sub_1BD0DE53C(v34, &qword_1EBD44E88);
        return 0;
      }

LABEL_12:
      sub_1BD3D85F0(v34, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
      return 1;
    }

    sub_1BD3D89A4(v34, v22, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v38 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails;
      v39 = v22;
      goto LABEL_15;
    }

    v40 = v63;
    sub_1BD3D8A0C(&v34[v36], v63, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
    v41 = sub_1BD3DB7B0(v22, v40);
    sub_1BD3D85F0(v40, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
    v42 = v22;
    v43 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1BD3D89A4(v34, v30, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
      if (swift_getEnumCaseMultiPayload())
      {
        v38 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails;
        v39 = v30;
LABEL_15:
        sub_1BD3D85F0(v39, v38);
        goto LABEL_16;
      }

      sub_1BD3D8A0C(&v34[v36], v64, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
      sub_1BE049FE4();
      v45 = sub_1BE049FC4();
      v47 = v46;
      v48 = v62;
      v49 = *(v61 + 8);
      v49(v16, v62);
      v50 = v60;
      sub_1BE049FE4();
      v51 = sub_1BE049FC4();
      v53 = v52;
      v49(v50, v48);
      if (v45 == v51 && v47 == v53)
      {

        v54 = v64;
      }

      else
      {
        v55 = sub_1BE053B84();

        v54 = v64;
        if ((v55 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v56 = sub_1BE049FF4();
      if (v56 == sub_1BE049FF4())
      {
        v57 = sub_1BD3FEE38(*&v30[*(v59 + 20)], *(v54 + *(v59 + 20)));
        sub_1BD3D85F0(v54, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
        sub_1BD3D85F0(v30, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
        if ((v57 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_12;
      }

LABEL_26:
      sub_1BD3D85F0(v54, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
      sub_1BD3D85F0(v30, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
LABEL_27:
      sub_1BD3D85F0(v34, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
      return 0;
    }

    sub_1BD3D89A4(v34, v26, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v38 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails;
      v39 = v26;
      goto LABEL_15;
    }

    sub_1BD3D8A0C(&v34[v36], v9, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
    v41 = sub_1BD3DB180(v26, v9);
    sub_1BD3D85F0(v9, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
    v42 = v26;
    v43 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails;
  }

  sub_1BD3D85F0(v42, v43);
  sub_1BD3D85F0(v34, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
  return v41;
}

uint64_t sub_1BD3DAC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049FD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - v11;
  sub_1BE049FE4();
  v13 = sub_1BE049FC4();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v12, v4);
  sub_1BE049FE4();
  v17 = sub_1BE049FC4();
  v19 = v18;
  v16(v8, v4);
  if (v13 == v17 && v15 == v19)
  {
  }

  else
  {
    v21 = sub_1BE053B84();

    if ((v21 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v22 = sub_1BE049FF4();
  if (v22 != sub_1BE049FF4())
  {
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  v23 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  v24 = sub_1BD3FEE38(*(a1 + *(v23 + 20)), *(a2 + *(v23 + 20)));
  return v24 & 1;
}

uint64_t sub_1BD3DAE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0493F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E98);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v25 - v15;
  v18 = *(v17 + 56);
  sub_1BD0DE19C(a1, &v25 - v15, &qword_1EBD3BCA0);
  sub_1BD0DE19C(a2, &v16[v18], &qword_1EBD3BCA0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &qword_1EBD3BCA0);
LABEL_9:
      v23 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
      v20 = MEMORY[0x1BFB374A0](a1 + *(v23 + 20), a2 + *(v23 + 20));
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1BD0DE19C(v16, v12, &qword_1EBD3BCA0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_1BD0DE53C(v16, &qword_1EBD44E98);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1BD3D1640(&qword_1EBD44EA8, MEMORY[0x1E6967790]);
  v21 = sub_1BE052334();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1BD0DE53C(v16, &qword_1EBD3BCA0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

BOOL sub_1BD3DB180(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04A474();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v44 = &v43 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E90);
  MEMORY[0x1EEE9AC00](v45, v10);
  v46 = &v43 - v11;
  v12 = sub_1BE0493F4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E98);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v43 - v23;
  v26 = *(v25 + 56);
  v47 = a1;
  sub_1BD0DE19C(a1, &v43 - v23, &qword_1EBD3BCA0);
  v48 = a2;
  sub_1BD0DE19C(a2, &v24[v26], &qword_1EBD3BCA0);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) != 1)
  {
    sub_1BD0DE19C(v24, v20, &qword_1EBD3BCA0);
    if (v27(&v24[v26], 1, v12) != 1)
    {
      (*(v13 + 32))(v16, &v24[v26], v12);
      sub_1BD3D1640(&qword_1EBD44EA8, MEMORY[0x1E6967790]);
      v30 = sub_1BE052334();
      v31 = *(v13 + 8);
      v31(v16, v12);
      v31(v20, v12);
      sub_1BD0DE53C(v24, &qword_1EBD3BCA0);
      if ((v30 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v13 + 8))(v20, v12);
LABEL_6:
    v28 = &qword_1EBD44E98;
    v29 = v24;
LABEL_14:
    sub_1BD0DE53C(v29, v28);
    return 0;
  }

  if (v27(&v24[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_1BD0DE53C(v24, &qword_1EBD3BCA0);
LABEL_8:
  v32 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0) + 20);
  v33 = v46;
  v34 = *(v45 + 48);
  sub_1BD0DE19C(v47 + v32, v46, &qword_1EBD44DC0);
  sub_1BD0DE19C(v48 + v32, v33 + v34, &qword_1EBD44DC0);
  v36 = v49;
  v35 = v50;
  v37 = *(v49 + 48);
  if (v37(v33, 1, v50) == 1)
  {
    if (v37(v33 + v34, 1, v35) == 1)
    {
      sub_1BD0DE53C(v33, &qword_1EBD44DC0);
      return 1;
    }

    goto LABEL_13;
  }

  v38 = v44;
  sub_1BD0DE19C(v33, v44, &qword_1EBD44DC0);
  if (v37(v33 + v34, 1, v35) == 1)
  {
    (*(v36 + 8))(v38, v35);
LABEL_13:
    v28 = &qword_1EBD44E90;
    v29 = v33;
    goto LABEL_14;
  }

  v40 = v43;
  (*(v36 + 32))(v43, v33 + v34, v35);
  sub_1BD3D1640(&qword_1EBD44EA0, MEMORY[0x1E6968278]);
  v41 = sub_1BE052334();
  v42 = *(v36 + 8);
  v42(v40, v35);
  v42(v38, v35);
  sub_1BD0DE53C(v33, &qword_1EBD44DC0);
  return (v41 & 1) != 0;
}

BOOL sub_1BD3DB7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0493F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E98);
  MEMORY[0x1EEE9AC00](v15, v16);
  v44 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v41 - v20;
  v23 = *(v22 + 48);
  v45 = a1;
  sub_1BD0DE19C(a1, &v41 - v20, &qword_1EBD3BCA0);
  v46 = a2;
  sub_1BD0DE19C(a2, &v21[v23], &qword_1EBD3BCA0);
  v24 = *(v5 + 48);
  if (v24(v21, 1, v4) != 1)
  {
    sub_1BD0DE19C(v21, v14, &qword_1EBD3BCA0);
    if (v24(&v21[v23], 1, v4) != 1)
    {
      v26 = *(v5 + 32);
      v27 = &v21[v23];
      v28 = v5;
      v29 = v43;
      v26(v43, v27, v4);
      sub_1BD3D1640(&qword_1EBD44EA8, MEMORY[0x1E6967790]);
      v30 = sub_1BE052334();
      v41 = v28;
      v31 = *(v28 + 8);
      v31(v29, v4);
      v31(v14, v4);
      sub_1BD0DE53C(v21, &qword_1EBD3BCA0);
      if ((v30 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v14, v4);
LABEL_6:
    v25 = v21;
LABEL_14:
    sub_1BD0DE53C(v25, &qword_1EBD44E98);
    return 0;
  }

  if (v24(&v21[v23], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v41 = v5;
  sub_1BD0DE53C(v21, &qword_1EBD3BCA0);
LABEL_8:
  v32 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0) + 20);
  v33 = *(v15 + 48);
  v34 = v44;
  sub_1BD0DE19C(v45 + v32, v44, &qword_1EBD3BCA0);
  sub_1BD0DE19C(v46 + v32, v34 + v33, &qword_1EBD3BCA0);
  if (v24(v34, 1, v4) == 1)
  {
    if (v24((v34 + v33), 1, v4) == 1)
    {
      sub_1BD0DE53C(v34, &qword_1EBD3BCA0);
      return 1;
    }

    goto LABEL_13;
  }

  v35 = v42;
  sub_1BD0DE19C(v34, v42, &qword_1EBD3BCA0);
  if (v24((v34 + v33), 1, v4) == 1)
  {
    (*(v41 + 8))(v35, v4);
LABEL_13:
    v25 = v34;
    goto LABEL_14;
  }

  v37 = v41;
  v38 = v43;
  (*(v41 + 32))(v43, v34 + v33, v4);
  sub_1BD3D1640(&qword_1EBD44EA8, MEMORY[0x1E6967790]);
  v39 = sub_1BE052334();
  v40 = *(v37 + 8);
  v40(v38, v4);
  v40(v35, v4);
  sub_1BD0DE53C(v34, &qword_1EBD3BCA0);
  return (v39 & 1) != 0;
}

uint64_t sub_1BD3DBD4C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE051FA4();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_1BD3DCBA4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_83;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v18);
  _Block_release(v18);

  (*(v23 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v22);
}

uint64_t type metadata accessor for ProvisioningVerificationAppClipFlowItem()
{
  result = qword_1EBD44EE8;
  if (!qword_1EBD44EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD3DC168()
{
  result = sub_1BE04AA64();
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

void sub_1BD3DC240(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_allocWithZone(MEMORY[0x1E6994678]);
  sub_1BE048964();
  v6 = sub_1BE04A9C4();
  v7 = [v5 initWithURL_];

  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BD3DCBF4;
  *(v8 + 24) = v4;
  v10[4] = sub_1BD201978;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1BD14E1D8;
  v10[3] = &block_descriptor_26;
  v9 = _Block_copy(v10);
  sub_1BE048964();

  [v7 requestMetadataWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1BD3DC3A8()
{
  [*(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_reporter) reportViewAppeared];
  v1 = objc_allocWithZone(MEMORY[0x1E6994680]);
  v2 = sub_1BE04A9C4();
  v3 = [v1 initWithURL_];

  [v3 setShouldReturnErrorOnUserCancellation_];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_1BD3DCBDC;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1BD3CC8C0;
  v7[3] = &block_descriptor_10_2;
  v5 = _Block_copy(v7);

  [v3 requestClipWithCompletion_];
  _Block_release(v5);

  return 1;
}

uint64_t sub_1BD3DC4F8(char a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE051FA4();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v10);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  aBlock[4] = sub_1BD3DCBE4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_17_2;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v8, v17);
  _Block_release(v17);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v20);
}

void sub_1BD3DC7D8(uint64_t a1, char a2, void *a3)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v32 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a2)
    {
      sub_1BE04D0C4();
      v16 = sub_1BE04D204();
      v17 = sub_1BE052C54();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1BD026000, v16, v17, "Starting app clip verification", v18, 2u);
        MEMORY[0x1BFB45F20](v18, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v13, v5);
    }

    else
    {
      sub_1BE04D0C4();
      v19 = a3;
      v20 = sub_1BE04D204();
      v21 = sub_1BE052C54();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v32[1] = a3;
        v33 = v23;
        *v22 = 136315138;
        v24 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD419B0);
        v25 = sub_1BE0524A4();
        v27 = sub_1BD123690(v25, v26, &v33);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_1BD026000, v20, v21, "Failed to start app clip verification with error: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x1BFB45F20](v23, -1, -1);
        MEMORY[0x1BFB45F20](v22, -1, -1);
      }

      (*(v6 + 8))(v9, v5);
      v28 = &v15[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = *(v28 + 1);
        ObjectType = swift_getObjectType();
        v31 = v15;
        sub_1BD8659A4(v31, &off_1F3BA4BB0, ObjectType, v29);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1BD3DCAFC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3DCB38(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD3DCBA4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24) == 0;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  return (*(v0 + 32))(v2);
}

uint64_t sub_1BD3DCBF4(char a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 0x80000001BE127870;
    v2 = 0xD000000000000016;
    v4 = 1;
  }

  return (*(v1 + 16))(v2, v3, 0, v4);
}

void sub_1BD3DCC6C()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v77 - v10;
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v77 - v13;
  swift_getKeyPath();
  v85 = v0;
  v15 = sub_1BD3DF1D0();
  sub_1BE04B594();

  if (*(v0 + 72))
  {
    if ((*(v0 + 73) & 1) == 0)
    {
      *(v0 + 73) = 0;
      return;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v17);
    *(&v77 - 2) = v0;
    *(&v77 - 8) = 0;
    v85 = v0;
LABEL_26:
    sub_1BE04B584();

    return;
  }

  swift_getKeyPath();
  v85 = v0;
  sub_1BE04B594();

  v18 = *(v0 + 16);
  v83 = v15;
  v84 = v3;
  if (!v18)
  {
LABEL_20:
    sub_1BE04D094();
    sub_1BE048964();
    v49 = sub_1BE04D204();
    v50 = sub_1BE052C24();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v87[0] = v81;
      *v51 = 136315906;
      swift_getKeyPath();
      v85 = v1;
      sub_1BE04B594();

      v85 = *(v1 + 16);
      v52 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F60);
      v53 = sub_1BE0524A4();
      v55 = sub_1BD123690(v53, v54, v87);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      swift_getKeyPath();
      v85 = v1;
      sub_1BE04B594();

      v56 = *(v1 + 32);
      v85 = *(v1 + 24);
      v86 = v56;
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
      v57 = sub_1BE0524A4();
      v59 = sub_1BD123690(v57, v58, v87);
      v82 = v2;
      v60 = v59;

      *(v51 + 14) = v60;
      *(v51 + 22) = 2080;
      swift_getKeyPath();
      v85 = v1;
      sub_1BE04B594();

      v61 = *(v1 + 48);
      v85 = *(v1 + 40);
      v86 = v61;
      sub_1BE048C84();
      v62 = sub_1BE0524A4();
      v64 = sub_1BD123690(v62, v63, v87);

      *(v51 + 24) = v64;
      *(v51 + 32) = 2080;
      swift_getKeyPath();
      v85 = v1;
      sub_1BE04B594();

      v65 = *(v1 + 64);
      v85 = *(v1 + 56);
      v86 = v65;
      sub_1BE048C84();
      v66 = sub_1BE0524A4();
      v68 = sub_1BD123690(v66, v67, v87);

      *(v51 + 34) = v68;
      _os_log_impl(&dword_1BD026000, v49, v50, "PeerPaymentMessagesExtension: ObserverBubble: incomplete dataset to perform signature validation. currencyAmount: %s, recipient: %s, sender: %s, paymentSignature: %s", v51, 0x2Au);
      v69 = v81;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v69, -1, -1);
      MEMORY[0x1BFB45F20](v51, -1, -1);

      (*(v84 + 8))(v7, v82);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    if (*(v1 + 73) == 1)
    {
      *(v1 + 73) = 1;
      return;
    }

    v70 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v70, v71);
    *(&v77 - 2) = v1;
    *(&v77 - 8) = 1;
    v85 = v1;
    goto LABEL_26;
  }

  swift_getKeyPath();
  v85 = v1;
  v19 = v18;
  sub_1BE04B594();

  v20 = *(v1 + 32);
  if (!v20)
  {

LABEL_19:
    v3 = v84;
    goto LABEL_20;
  }

  v81 = v19;
  v79 = *(v1 + 24);
  swift_getKeyPath();
  v85 = v1;
  sub_1BE048C84();
  v21 = v20;
  sub_1BE04B594();

  v22 = *(v1 + 48);
  if (!v22)
  {

    goto LABEL_19;
  }

  v82 = v2;
  v78 = *(v1 + 40);
  swift_getKeyPath();
  v85 = v1;
  sub_1BE048C84();
  sub_1BE04B594();

  if (!*(v1 + 64))
  {

    v2 = v82;
    goto LABEL_19;
  }

  v77 = *(v1 + 56);
  sub_1BE048C84();
  v23 = sub_1BD3E04C8();
  v24 = v81;
  v25 = [v81 amount];
  v26 = [v23 stringForObjectValue_];

  if (v26)
  {
    v27 = sub_1BE052434();
    v29 = v28;

    v85 = v78;
    v86 = v22;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v79, v21);
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v27, v29);

    v30 = v24;
    v31 = v85;
    v32 = v86;
    v33 = [v30 currency];
    if (v33)
    {
      v34 = v33;

      v35 = sub_1BE052434();
      v37 = v36;

      v85 = v31;
      v86 = v32;
      sub_1BE048C84();
      MEMORY[0x1BFB3F610](v35, v37);

      v39 = v85;
      v38 = v86;
      sub_1BE04D094();
      sub_1BE048C84();
      v40 = sub_1BE04D204();
      v41 = sub_1BE052C14();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v85 = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_1BD123690(v39, v38, &v85);
        _os_log_impl(&dword_1BD026000, v40, v41, "PeerPaymentMessagesExtension: ObserverBubble: validating transaction string: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x1BFB45F20](v43, -1, -1);
        MEMORY[0x1BFB45F20](v42, -1, -1);
      }

      (*(v84 + 8))(v14, v82);
      v44 = sub_1BE052404();

      v45 = sub_1BE052404();

      IsValid = PKPeerPaymentSignatureIsValid();

      if (IsValid)
      {
        if ((*(v1 + 73) & 1) == 0)
        {

          *(v1 + 73) = 0;
          return;
        }

        v47 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v47, v48);
        *(&v77 - 2) = v1;
        *(&v77 - 8) = 0;
        v85 = v1;
      }

      else
      {
        if (*(v1 + 73))
        {

          *(v1 + 73) = 1;
          return;
        }

        v75 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v75, v76);
        *(&v77 - 2) = v1;
        *(&v77 - 8) = 1;
        v85 = v1;
      }

      sub_1BE04B584();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_1BE04D094();
    v72 = sub_1BE04D204();
    v73 = sub_1BE052C34();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1BD026000, v72, v73, "PeerPaymentMessagesExtension: ObserverBubble: error formatting the amount", v74, 2u);
      MEMORY[0x1BFB45F20](v74, -1, -1);
    }

    (*(v84 + 8))(v11, v82);
  }
}

void *sub_1BD3DD76C()
{
  swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1BD3DD7E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1BD3DD86C(void *a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1BD3DF1D0();
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD3DE6D8();
  v4 = v3;
  v5 = a1;
  v6 = sub_1BE053074();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v1 + 16);
LABEL_8:
  *(v1 + 16) = a1;
  v10 = v5;

  sub_1BD3DCC6C();
}

uint64_t sub_1BD3DD9DC()
{
  swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();

  v1 = *(v0 + 24);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3DDA5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
  return sub_1BE048C84();
}

void sub_1BD3DDAD8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 24) == a1 && v5 == a2;
      if (v6 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1BD3DF1D0();
    sub_1BE04B584();

    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  sub_1BD3DCC6C();
}

uint64_t sub_1BD3DDC1C()
{
  swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();

  v1 = *(v0 + 40);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3DDC9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
  return sub_1BE048C84();
}

void sub_1BD3DDD18(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 40) == a1 && v5 == a2;
      if (v6 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1BD3DF1D0();
    sub_1BE04B584();

    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  sub_1BD3DCC6C();
}

uint64_t sub_1BD3DDE5C()
{
  swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();

  v1 = *(v0 + 56);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3DDEDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
  return sub_1BE048C84();
}

void sub_1BD3DDF58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 56) == a1 && v5 == a2;
      if (v6 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1BD3DF1D0();
    sub_1BE04B584();

    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  sub_1BD3DCC6C();
}

uint64_t sub_1BD3DE09C()
{
  swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();

  return *(v0 + 72);
}

uint64_t sub_1BD3DE10C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();

  *a2 = *(v3 + 72);
  return result;
}

void sub_1BD3DE184(char a1)
{
  if (*(v1 + 72) == (a1 & 1))
  {
    *(v1 + 72) = a1 & 1;

    sub_1BD3DCC6C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD3DF1D0();
    sub_1BE04B584();
  }
}

uint64_t sub_1BD3DE288()
{
  swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();

  return *(v0 + 73);
}

uint64_t sub_1BD3DE2F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();

  *a2 = *(v3 + 73);
  return result;
}

uint64_t sub_1BD3DE370(uint64_t result)
{
  if (*(v1 + 73) == (result & 1))
  {
    *(v1 + 73) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD3DF1D0();
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD3DE450()
{

  v1 = OBJC_IVAR____TtC9PassKitUI19ObserverBubbleModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1BD3DE558()
{
  v1 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BD3DE600(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    v9 = a1;
    sub_1BE048964();
    sub_1BD3DD86C(a1);

    goto LABEL_7;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD3DE6D8();
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v10 = *(v2 + v4);
  *(v2 + v4) = a1;
}

unint64_t sub_1BD3DE6D8()
{
  result = qword_1EBD43B00;
  if (!qword_1EBD43B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43B00);
  }

  return result;
}

void (*sub_1BD3DE724(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1BD3DE7C0;
}

void sub_1BD3DE7C0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;
    sub_1BD3DE600(v3);
    v5 = v2[3];
    goto LABEL_10;
  }

  v6 = v2[4];
  v7 = *(v6 + v2[5]);
  if (v7)
  {
    if (v3)
    {
      sub_1BD3DE6D8();
      v8 = v7;
      v9 = v3;
      v10 = sub_1BE053074();

      v6 = v2[4];
      if (v10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  if (v3)
  {
LABEL_8:
    v11 = v3;
    sub_1BE048964();
    sub_1BD3DD86C(v3);

    v6 = v2[4];
  }

LABEL_9:
  v12 = v2[5];
  v5 = *(v6 + v12);
  *(v6 + v12) = v3;
LABEL_10:

  free(v2);
}

void (*sub_1BD3DE908(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_recipient;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  sub_1BE048C84();
  return sub_1BD3DE9A8;
}

void sub_1BD3DEA04(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

void (*sub_1BD3DEAAC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_sender;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  sub_1BE048C84();
  return sub_1BD3DEB4C;
}

void sub_1BD3DEB78(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    sub_1BE048C84();
    a4(v5, v6);
    goto LABEL_14;
  }

  v9 = v4[5];
  v10 = (v9 + v4[6]);
  v11 = v10[1];
  if (v11)
  {
    if (v6)
    {
      if (*v10 == v5 && v11 == v6)
      {
        goto LABEL_13;
      }

      v13 = sub_1BE053B84();
      v9 = v4[5];
      if (v13)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  if (v6)
  {
LABEL_12:
    sub_1BE048C84();
    sub_1BE048964();
    a3(v5, v6);

    v9 = v4[5];
  }

LABEL_13:
  v14 = (v9 + v4[6]);
  *v14 = v5;
  v14[1] = v6;
LABEL_14:

  free(v4);
}

id sub_1BD3DEC94(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {
    sub_1BE048C84();
    v4 = sub_1BE052404();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1BD3DED28(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_1BE048C84();
  return v3;
}

uint64_t sub_1BD3DEDB4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  if (!v9)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_1BE048C84();
    sub_1BE048964();
    a4(a1, a2);

    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v10 = *v8 == a1 && v9 == a2;
  if (!v10 && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  *v8 = a1;
  v8[1] = a2;
}

void (*sub_1BD3DEE88(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_signature;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  sub_1BE048C84();
  return sub_1BD3DEF28;
}

uint64_t sub_1BD3DEF9C()
{
  v1 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BD3DF034(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript;
  result = swift_beginAccess();
  if (*(v2 + v5) != v4)
  {
    v7 = *(v2 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_observerBubbleModel);
    if (*(v7 + 72) == v4)
    {
      LOBYTE(v4) = a1 & 1;
      *(v7 + 72) = a1 & 1;
      sub_1BE048964();
      sub_1BD3DCC6C();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v9);
      LOBYTE(v4) = a1 & 1;
      sub_1BD3DF1D0();
      sub_1BE048964();
      sub_1BE04B584();
    }
  }

  *(v2 + v5) = v4;
  return result;
}

unint64_t sub_1BD3DF1D0()
{
  result = qword_1EBD44F30;
  if (!qword_1EBD44F30)
  {
    type metadata accessor for ObserverBubbleModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44F30);
  }

  return result;
}

uint64_t type metadata accessor for ObserverBubbleModel()
{
  result = qword_1EBD44F48;
  if (!qword_1EBD44F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1BD3DF274(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v5);
  return sub_1BD3DF308;
}

void sub_1BD3DF308(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    sub_1BD3DF034(*(*a1 + 48));
  }

  else
  {
    v4 = v2[4];
    if (v3 != *(v4 + v2[5]))
    {
      v5 = *(v4 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_observerBubbleModel);
      if (v3 == *(v5 + 72))
      {
        *(v5 + 72) = v3;
        sub_1BE048964();
        sub_1BD3DCC6C();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v7);
        v2[3] = v5;
        sub_1BD3DF1D0();
        sub_1BE048964();
        sub_1BE04B584();
      }
    }

    *(v2[4] + v2[5]) = v3;
  }

  free(v2);
}

id PeerPaymentObserverBubbleContentView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *PeerPaymentObserverBubbleContentView.init()()
{
  *&v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount] = 0;
  v1 = &v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_recipient];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_sender];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_signature];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript] = 0;
  *&v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_contentView] = 0;
  type metadata accessor for ObserverBubbleModel();
  v4 = swift_allocObject();
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *(v4 + 58) = 0u;
  sub_1BE04B5C4();
  *&v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_observerBubbleModel] = v4;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for PeerPaymentObserverBubbleContentView();
  v5 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v19[0] = *&v5[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_observerBubbleModel];
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F40));
  swift_retain_n();
  v7 = v5;
  v8 = sub_1BE04F894();
  v9 = sub_1BE04EC64();
  v11 = sub_1BE04F864();
  if ((*v10 & v9) != 0)
  {
    *v10 &= ~v9;
  }

  v11(v19, 0);
  v12 = v8;
  result = [v12 view];
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    v16 = [v12 view];
    v17 = *&v7[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_contentView];
    *&v7[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_contentView] = v16;
    v18 = v16;

    if (v18)
    {
      [v7 addSubview_];
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PeerPaymentObserverBubbleContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PeerPaymentObserverBubbleContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentObserverBubbleContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_set_7Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_1BE048C84();
  return a5(v7, v6);
}

uint64_t keypath_get_6Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
  return sub_1BE048C84();
}

uint64_t sub_1BD3DF990()
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

id sub_1BD3DFE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD3E00D8(a1);
  *(&v26 + 1) = v3;
  sub_1BD0DDEBC();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  sub_1BE050424();
  v9 = sub_1BE0505F4();
  v11 = v10;
  v13 = v12;

  sub_1BD0DDF10(v4, v6, v8 & 1);

  v14 = [objc_opt_self() clearColor];
  result = [objc_opt_self() primaryTextColor];
  if (result)
  {

    *&v26 = sub_1BE0511C4();
    v16 = sub_1BE050574();
    v18 = v17;
    v20 = v19;
    v24 = v21;
    sub_1BD0DDF10(v9, v11, v13 & 1);

    KeyPath = swift_getKeyPath();
    v23 = swift_getKeyPath();
    sub_1BE051CA4();
    result = sub_1BE04EE54();
    *&v25[54] = v29;
    *&v25[70] = v30;
    *&v25[86] = v31;
    *&v25[102] = v32;
    *&v25[6] = v26;
    *&v25[22] = v27;
    *&v25[38] = v28;
    *(a2 + 146) = *&v25[64];
    *(a2 + 162) = *&v25[80];
    *(a2 + 178) = *&v25[96];
    *(a2 + 82) = *v25;
    *(a2 + 98) = *&v25[16];
    *(a2 + 114) = *&v25[32];
    *a2 = v16;
    *(a2 + 8) = v18;
    *(a2 + 16) = v20 & 1;
    *(a2 + 24) = v24;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    *(a2 + 56) = v23;
    *(a2 + 64) = 0x3FE8000000000000;
    *(a2 + 72) = 0;
    *(a2 + 80) = 1;
    *(a2 + 192) = *(&v32 + 1);
    *(a2 + 130) = *&v25[48];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3E00D8(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v31 - v9;
  swift_getKeyPath();
  v32 = a1;
  sub_1BD3DF1D0();
  sub_1BE04B594();

  if (*(a1 + 73))
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69B8050], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();

      (*(v3 + 8))(v6, v2);
      return v13;
    }

    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v32 = a1;
    sub_1BE04B594();

    v14 = *(a1 + 16);
    if (v14 && (v15 = [v14 minimalFormattedStringValue]) != 0)
    {
      v16 = v15;
      v17 = sub_1BE052434();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    swift_getKeyPath();
    v32 = a1;
    sub_1BE04B594();

    v20 = *(a1 + 24);
    v21 = *(a1 + 32);
    sub_1BE048C84();
    v22 = sub_1BD3E0704(v20, v21);
    v24 = v23;

    (*(v3 + 104))(v10, *MEMORY[0x1E69B8050], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v25 = result;
      sub_1BE04B6F4();

      (*(v3 + 8))(v10, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1BE0B6CA0;
      v27 = MEMORY[0x1E69E6158];
      *(v26 + 56) = MEMORY[0x1E69E6158];
      v28 = sub_1BD110550();
      *(v26 + 32) = v17;
      *(v26 + 40) = v19;
      *(v26 + 96) = v27;
      *(v26 + 104) = v28;
      if (v24)
      {
        v29 = v22;
      }

      else
      {
        v29 = 0;
      }

      v30 = 0xE000000000000000;
      if (v24)
      {
        v30 = v24;
      }

      *(v26 + 64) = v28;
      *(v26 + 72) = v29;
      *(v26 + 80) = v30;
      v13 = sub_1BE052454();

      return v13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD3E0474()
{
  result = qword_1EBD44F58;
  if (!qword_1EBD44F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44F58);
  }

  return result;
}

id sub_1BD3E04C8()
{
  v0 = sub_1BE04B0F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v5 setMaximumFractionDigits_];
  [v5 setMinimumFractionDigits_];
  [v5 setUsesGroupingSeparator_];
  [v5 setNumberStyle_];
  sub_1BE04AFF4();
  sub_1BE04B024();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7)
  {
    v8 = sub_1BE052404();
  }

  else
  {
    v8 = 0;
  }

  [v5 setDecimalSeparator_];

  return v5;
}

void sub_1BD3E0654()
{
  *(v0 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount) = 0;
  v1 = (v0 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_recipient);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_sender);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_signature);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript) = 0;
  *(v0 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_contentView) = 0;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD3E0704(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BE052404();
  }

  else
  {
    v3 = 0;
  }

  v4 = PKIDSSanitizedAddress();

  v5 = [objc_opt_self() defaultContactResolver];
  v6 = [v5 contactForHandle_];
  v7 = [objc_opt_self() displayNameForCounterpartHandle:v4 contact:v6];

  if (v7)
  {
    a1 = sub_1BE052434();
  }

  else
  {

    sub_1BE048C84();
  }

  return a1;
}

void sub_1BD3E0828()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;
  sub_1BE048C84();

  sub_1BD3DCC6C();
}

void sub_1BD3E0878()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
  sub_1BE048C84();

  sub_1BD3DCC6C();
}

void sub_1BD3E08C8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
  sub_1BE048C84();

  sub_1BD3DCC6C();
}

void sub_1BD3E0918()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  v4 = v1;

  sub_1BD3DCC6C();
}

unint64_t sub_1BD3E0960()
{
  result = qword_1EBD44F68;
  if (!qword_1EBD44F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44F70);
    sub_1BD3E09EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44F68);
  }

  return result;
}

unint64_t sub_1BD3E09EC()
{
  result = qword_1EBD44F78;
  if (!qword_1EBD44F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44F80);
    sub_1BD3E0A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44F78);
  }

  return result;
}

unint64_t sub_1BD3E0A78()
{
  result = qword_1EBD44F88;
  if (!qword_1EBD44F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44F90);
    sub_1BD1B9C50();
    sub_1BD3E0B1C(&qword_1EBD3A8B0, &qword_1EBD3A8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44F88);
  }

  return result;
}

uint64_t sub_1BD3E0B1C(unint64_t *a1, uint64_t *a2)
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

uint64_t _s16BreakdownRowViewVMa()
{
  result = qword_1EBD44FA0;
  if (!qword_1EBD44FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD3E0C14()
{
  sub_1BD1C86BC();
  if (v0 <= 0x3F)
  {
    sub_1BD3E0CC0();
    if (v1 <= 0x3F)
    {
      sub_1BD3E0D28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD3E0CC0()
{
  if (!qword_1EBD44090)
  {
    sub_1BD0E5E8C(255, qword_1EBD4F790);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD44090);
    }
  }
}

void sub_1BD3E0D28()
{
  if (!qword_1EBD44FB0)
  {
    type metadata accessor for FinanceKitSpendingTrend();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD44FB0);
    }
  }
}

uint64_t sub_1BD3E0D80(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v27 - v5;
  v7 = sub_1BE0493F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  v15 = sub_1BE052404();
  [a1 setPrimaryString_];

  v16 = sub_1BE052404();
  [a1 setSecondaryString_];

  if (*(v1 + 40))
  {
    v17 = v8;
    sub_1BD1ACD28(MEMORY[0x1E69E7CC0]);
    v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v19 = sub_1BE052404();
    type metadata accessor for Key(0);
    sub_1BD3E1654(&qword_1EBD37B80, type metadata accessor for Key);
    v20 = sub_1BE052224();

    v21 = [v18 initWithString:v19 attributes:v20];

    v8 = v17;
    [a1 setTransactionValueAttributedText_];
  }

  v22 = *(v1 + 48);
  if (v22)
  {
    [a1 setPrimaryImage:v22 animated:1];
  }

  else
  {
    [a1 setPrimaryImage_];
  }

  [a1 setShowsDisclosureView_];
  v23 = _s16BreakdownRowViewVMa();
  sub_1BD3E15E4(v1 + *(v23 + 32), v6);
  v24 = type metadata accessor for FinanceKitSpendingTrend();
  result = (*(*(v24 - 8) + 48))(v6, 1, v24);
  if (result != 1)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result < 2)
    {
      (*(v8 + 32))(v14, v6, v7);
      v26 = a1;
    }

    else
    {
      if ((result - 2) >= 2)
      {
        return result;
      }

      v14 = v28;
      (*(v8 + 32))(v28, v6, v7);
      v26 = a1;
    }

    sub_1BD3E1148(v26);
    return (*(v8 + 8))(v14, v7);
  }

  return result;
}

void sub_1BD3E1148(void *a1)
{
  v2 = sub_1BE04B0F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B054();
  sub_1BE0493E4();
  (*(v3 + 8))(v6, v2);
  v7 = sub_1BE052404();

  [a1 setBadgeString_];

  v8 = sub_1BE052404();
  [a1 setSecondaryBadgeSymbol_];

  [a1 setHideBadgeBackground_];
  [a1 setHideSecondaryBadgeSymbolBackground_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0D39A0;
  v10 = objc_opt_self();
  *(v9 + 32) = [v10 labelColor];
  *(v9 + 40) = [v10 tertiarySystemFillColor];
  sub_1BD0E5E8C(0, &qword_1EBD43100);
  v11 = sub_1BE052724();

  v12 = [objc_opt_self() configurationWithPaletteColors_];

  [a1 setSecondaryBadgeSymbolConfiguration_];
}

id sub_1BD3E13A0()
{
  v0 = objc_allocWithZone(PKPaymentTransactionView);

  return [v0 init];
}

id sub_1BD3E13DC(uint64_t a1, int a2, id a3)
{
  result = [a3 sizeThatFits_];
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1BD3E141C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD3E1654(&unk_1EBD44FC0, _s16BreakdownRowViewVMa);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD3E14B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD3E1654(&unk_1EBD44FC0, _s16BreakdownRowViewVMa);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD3E1544()
{
  sub_1BD3E1654(&unk_1EBD44FC0, _s16BreakdownRowViewVMa);
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD3E15E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3E1654(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BD3E169C(void *a1, void *a2, void *a3, __int128 *a4)
{
  v8 = [a1 isQuantitative];
  v9 = a3;
  result = [v9 amount];
  v11 = result;
  if (v8)
  {
    if (result)
    {
      v12 = sub_1BE0533F4();
      v14 = v13;
      v16 = v15;

      result = [v9 currency];
      if (result)
      {
        v17 = result;
        v18 = sub_1BE052434();
        v20 = v19;

        v68[0] = v12;
        v68[1] = v14;
        v69 = v16;
        v70 = v18;
        v71 = v20;
        type metadata accessor for PaymentRewardsAmountAndQuantityModel(0);
        v21 = swift_allocObject();
        sub_1BE048964();
        sub_1BD994058(v12, v14, v16);
        if ((v24 & 0x100000000) != 0)
        {
          v22 = MEMORY[0x1BFB403C0](0);
        }

        v25 = (v21 + OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel_maximumRedeemableQuantity);
        *v25 = v22;
        *(v25 + 1) = v23;
        v25[4] = v24;
        v26 = a4[1];
        v66[0] = *a4;
        v66[1] = v26;
        v67[0] = a4[2];
        *(v67 + 10) = *(a4 + 42);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45070);
        MEMORY[0x1BFB3E970](&v60, v27);
        v58 = a2;
        v59 = a4;
        v57 = a1;
        if (v65 == 1 || v64 == 1)
        {
          v28 = *v25;
          v29 = *(v25 + 1);
          v30 = v25[4];
        }

        else
        {
          v29 = *&v63[8];
          v28 = *v63;
          v30 = *&v63[16];
        }

        v56 = v21;

        v44 = *(v25 + 3);
        v45 = *(v25 + 4);
        v46 = *(v25 + 5);
        v47 = *(v25 + 6);
        v48 = *(v25 + 7);
        v49 = *(v25 + 8);
        v53 = *(v25 + 2);
        v54 = *v25;
        v50 = *(v25 + 9);
        if (MEMORY[0x1BFB403F0](v54 | (v53 << 32) | (v44 << 48), v45 | (v46 << 16) | (v47 << 32) | (v48 << 48), v49 | (v50 << 16), v28, v29, v30))
        {
          LOWORD(v51) = v44;
          LOWORD(v55) = v48;
          LOWORD(v48) = v53;
          v52 = v54;
        }

        else
        {
          v50 = WORD1(v30);
          v55 = HIWORD(v29);
          v46 = v29 >> 16;
          v52 = v28;
          v48 = HIDWORD(v28);
          LOWORD(v45) = v29;
          v47 = HIDWORD(v29);
          v51 = HIWORD(v28);
          LOWORD(v49) = v30;
        }

        v40 = v56;
        swift_beginAccess();
        LODWORD(v60) = v52;
        WORD2(v60) = v48;
        HIWORD(v60) = v51;
        LOWORD(v61) = v45;
        WORD1(v61) = v46;
        WORD2(v61) = v47;
        HIWORD(v61) = v55;
        LOWORD(v62) = v49;
        HIWORD(v62) = v50;
        type metadata accessor for Decimal(0);
        sub_1BE04D874();
        swift_endAccess();
        v41 = v57;
        v42 = v58;
        a4 = v59;
        sub_1BD0DE19C(v59, v66, &unk_1EBD45070);
        v43 = v68;
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!result)
  {
    goto LABEL_19;
  }

  v31 = sub_1BE0533F4();
  v33 = v32;
  v35 = v34;

  result = [v9 currency];
  if (result)
  {
    v36 = result;
    v37 = sub_1BE052434();
    v39 = v38;

    v60 = v31;
    v61 = v33;
    v62 = v35;
    *&v63[4] = v37;
    *&v63[12] = v39;
    type metadata accessor for PaymentRewardsAmountModel(0);
    v40 = swift_allocObject();
    v41 = a1;
    v42 = a2;
    sub_1BD0DE19C(a4, v66, &unk_1EBD45070);
    v43 = &v60;
LABEL_17:
    sub_1BD3E7E10(v41, v42, v43, a4);
    return v40;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BD3E1A54@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B348);
  MEMORY[0x1EEE9AC00](v47, v2);
  v51 = v41 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45170) - 8;
  MEMORY[0x1EEE9AC00](v48, v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = v41 - v8;
  v9 = sub_1BE04ECC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45178);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18, v20);
  v45 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v41 - v24;
  v53 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45180);
  sub_1BD3EC21C();
  v42 = v25;
  sub_1BE051A44();
  sub_1BE04ECB4();
  v44 = *(v10 + 16);
  v44(v13, v17, v9);
  v43 = sub_1BD3EBF40(&qword_1EBD451A0, MEMORY[0x1E697E8B8]);
  v26 = sub_1BE04E644();
  v27 = *(v10 + 8);
  v41[1] = v10 + 8;
  v27(v17, v9);
  *&v25[*(v19 + 44)] = v26;
  sub_1BD3E2174(v51);
  v52 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD451A8);
  v28 = type metadata accessor for MultiHyperLinkDetailSheet();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD451B0);
  v30 = sub_1BD3EC358();
  v31 = sub_1BD3EBF40(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
  v32 = sub_1BD3EC3AC();
  v54 = &type metadata for PaymentPassHubRewardsInfoView;
  v55 = v28;
  v56 = v29;
  v57 = v30;
  v58 = v31;
  v59 = v32;
  swift_getOpaqueTypeConformance2();
  sub_1BD3EC438();
  v33 = v46;
  sub_1BE051A54();
  sub_1BE04ECB4();
  v44(v13, v17, v9);
  v34 = sub_1BE04E644();
  v27(v17, v9);
  *(v33 + *(v48 + 44)) = v34;
  v35 = v42;
  v36 = v45;
  sub_1BD0DE19C(v42, v45, &qword_1EBD45178);
  v37 = v49;
  sub_1BD0DE19C(v33, v49, &qword_1EBD45170);
  v38 = v50;
  sub_1BD0DE19C(v36, v50, &qword_1EBD45178);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45210);
  sub_1BD0DE19C(v37, v38 + *(v39 + 48), &qword_1EBD45170);
  sub_1BD0DE53C(v33, &qword_1EBD45170);
  sub_1BD0DE53C(v35, &qword_1EBD45178);
  sub_1BD0DE53C(v37, &qword_1EBD45170);
  return sub_1BD0DE53C(v36, &qword_1EBD45178);
}

double sub_1BD3E1FB0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for PaymentPassHubRewardsApplyView(0);
  type metadata accessor for PaymentRewardsAmountModel(0);
  sub_1BD3EBF40(&unk_1EBD45150, type metadata accessor for PaymentRewardsAmountModel);
  sub_1BE04E3C4();
  type metadata accessor for PaymentRewardsAmountAndQuantityModel(0);
  v2 = swift_dynamicCastClass();

  sub_1BE04E3C4();
  if (v2)
  {
    swift_dynamicCastClassUnconditional();
    sub_1BD3EBF40(&qword_1EBD45218, type metadata accessor for PaymentRewardsAmountAndQuantityModel);
  }

  sub_1BE04E954();
  sub_1BD3EC2A8();
  sub_1BD3EC2FC();
  sub_1BE04F9A4();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1BD3E2174@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for PaymentPassHubRewardsApplyView(0);
  v42 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v43 = v4;
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v45 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v39 - v13;
  v15 = sub_1BE04AA64();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v19 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v39 - v22;
  sub_1BD0DE19C(v1, v14, &unk_1EBD3CF70);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1BD0DE53C(v14, &unk_1EBD3CF70);
    v24 = 1;
    v25 = v50;
  }

  else
  {
    v26 = *(v16 + 32);
    v27 = v23;
    v40 = v23;
    v26(v23, v14, v15);
    v28 = v41;
    sub_1BD3EC4BC(v1, v41);
    (*(v16 + 16))(v19, v27, v15);
    v29 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v30 = (v43 + *(v16 + 80) + v29) & ~*(v16 + 80);
    v31 = swift_allocObject();
    sub_1BD3EC520(v28, v31 + v29);
    v32 = (v26)(v31 + v30, v19, v15);
    MEMORY[0x1EEE9AC00](v32, v33);
    *(&v39 - 2) = v1;
    v34 = v45;
    sub_1BE051704();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v35 = v44;
    v36 = v47;
    sub_1BE050DE4();

    (*(v46 + 8))(v34, v36);
    (*(v16 + 8))(v40, v15);
    v37 = v50;
    sub_1BD0DE204(v35, v50, &unk_1EBD45200);
    v24 = 0;
    v25 = v37;
  }

  return (*(v48 + 56))(v25, v24, 1, v49);
}

uint64_t sub_1BD3E2698()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v6 - v2;
  type metadata accessor for PaymentPassHubRewardsApplyView(0);
  type metadata accessor for PaymentRewardsAmountModel(0);
  sub_1BD3EBF40(&unk_1EBD45150, type metadata accessor for PaymentRewardsAmountModel);
  sub_1BE04E3C4();
  v6[0] = sub_1BE04E954();
  v6[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  sub_1BE0516C4();
  type metadata accessor for MultiHyperLinkDetailSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD451B0);
  sub_1BD3EC358();
  sub_1BD3EBF40(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
  sub_1BD3EC3AC();
  sub_1BE050F74();
  sub_1BD0DE53C(v3, &qword_1EBD393E8);
}

uint64_t sub_1BD3E28B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD957218(a1, a2);
  v3 = sub_1BE04EC54();
  v4 = sub_1BE0501D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD451B0);
  v6 = a2 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_1BD3E2918(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;
  v11 = sub_1BE04AA64();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  v12 = type metadata accessor for MultiHyperLinkDetailSheet();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  type metadata accessor for PaymentPassHubRewardsApplyView(0);
  sub_1BD0DE19C(v10, v6, &unk_1EBD45160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v10, &unk_1EBD45160);
}

uint64_t sub_1BD3E2AAC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8088], v2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE0B69E0;
  type metadata accessor for PaymentPassHubRewardsApplyView(0);
  type metadata accessor for PaymentRewardsAmountModel(0);
  sub_1BD3EBF40(&unk_1EBD45150, type metadata accessor for PaymentRewardsAmountModel);
  v9 = [*(sub_1BE04E3C4() + 16) programName];
  v10 = sub_1BE052434();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1BD110550();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v13 = sub_1BE04B714();
  v15 = v14;

  (*(v3 + 8))(v7, v2);
  v27[2] = v13;
  v27[3] = v15;
  sub_1BD0DDEBC();
  v16 = sub_1BE0506C4();
  v18 = v17;
  LOBYTE(v8) = v19;
  sub_1BE050454();
  v20 = sub_1BE0505F4();
  v22 = v21;
  LOBYTE(v3) = v23;
  v25 = v24;

  sub_1BD0DDF10(v16, v18, v8 & 1);

  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v25;
  return result;
}

id sub_1BD3E2D5C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8088], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v23 = v8;
    v24 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    LOBYTE(v7) = v14;
    v15 = sub_1BE0505D4();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_1BD0DDF10(v11, v13, v7 & 1);

    v23 = v15;
    v24 = v17;
    v25 = v19 & 1;
    v26 = v21;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v15, v17, v19 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD3E2F60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1BE0532E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v38 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v40 = v38 - v14;
  v15 = sub_1BE04A974();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE04B0F4();
  v41 = *(v19 - 8);
  v42 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v38 - v23;
  v39 = *(a1 + 48);
  v38[1] = *(a1 + 40);
  sub_1BE048C84();
  sub_1BE04B054();
  sub_1BE04A964();
  sub_1BE04B054();
  sub_1BE0532B4();
  sub_1BE0532C4();
  v25 = *(v4 + 8);
  v25(v7, v3);
  v26 = v40;
  sub_1BE0532D4();
  v25(v11, v3);
  sub_1BD3EBF40(&qword_1EBD45388, MEMORY[0x1E6969FC0]);
  sub_1BE053464();
  v25(v26, v3);
  (*(v43 + 8))(v18, v44);
  (*(v41 + 8))(v24, v42);
  sub_1BD0DDEBC();
  v27 = sub_1BE0506C4();
  v29 = v28;
  LOBYTE(v3) = v30;
  v31 = sub_1BE0505D4();
  v33 = v32;
  LOBYTE(v18) = v34;
  v36 = v35;
  sub_1BD0DDF10(v27, v29, v3 & 1);

  v46 = v31;
  v47 = v33;
  v48 = v18 & 1;
  v49 = v36;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v31, v33, v18 & 1);
}

id sub_1BD3E335C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8088], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v23 = v8;
    v24 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    LOBYTE(v7) = v14;
    sub_1BE051494();
    v15 = sub_1BE050564();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    sub_1BD0DDF10(v11, v13, v7 & 1);

    v23 = v15;
    v24 = v17;
    v25 = v19 & 1;
    v26 = v21;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v15, v17, v19 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD3E357C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_1BE0532E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v35 = &v34 - v12;
  v39 = sub_1BE04A974();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1BE04B0F4();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v34 - v19;
  sub_1BD3E8918(&v45);
  v43 = v45;
  v44 = v46;
  sub_1BE053424();
  *&v42[8] = v47;
  *v42 = v44;
  v48[0] = v43;
  v48[1] = *v42;
  v49 = *(&v47 + 1);
  sub_1BE04B054();
  sub_1BE04A964();
  sub_1BD3EB974(v48, v41);
  sub_1BE04B054();
  sub_1BE0532B4();
  sub_1BE0532C4();
  v21 = *(v2 + 8);
  v21(v5, v1);
  v22 = v35;
  sub_1BE0532D4();
  v21(v9, v1);
  sub_1BD3EBF40(&qword_1EBD45388, MEMORY[0x1E6969FC0]);
  sub_1BE053464();
  sub_1BD3EB9B4(v48);
  v21(v22, v1);
  (*(v38 + 8))(v15, v39);
  (*(v36 + 8))(v20, v37);
  sub_1BD0DDEBC();
  v23 = sub_1BE0506C4();
  v25 = v24;
  LOBYTE(v1) = v26;
  sub_1BE051494();
  v27 = sub_1BE050564();
  v29 = v28;
  LOBYTE(v9) = v30;
  v32 = v31;

  sub_1BD0DDF10(v23, v25, v1 & 1);

  v41[0] = v27;
  v41[1] = v29;
  v42[0] = v9 & 1;
  *&v42[8] = v32;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v27, v29, v9 & 1);
}

id sub_1BD3E3A18()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8088], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v23 = v8;
    v24 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    LOBYTE(v7) = v14;
    sub_1BE051494();
    v15 = sub_1BE050564();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    sub_1BD0DDF10(v11, v13, v7 & 1);

    v23 = v15;
    v24 = v17;
    v25 = v19 & 1;
    v26 = v21;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v15, v17, v19 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD3E3C38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = sub_1BE0532E4();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v43 = &v41 - v12;
  v13 = sub_1BE04A974();
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1BE04B0F4();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v41 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v21 = sub_1BE053394();
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  *&v54 = v21;
  *(&v54 + 1) = v24;
  v55 = v25;
  v56 = v22;
  v57 = v23;
  sub_1BE048C84();
  sub_1BE04B054();
  v26 = v42;
  sub_1BE04A964();
  sub_1BD3EB974(&v54, v51);
  sub_1BE04B054();
  sub_1BE0532B4();
  sub_1BE0532C4();
  v27 = *(v44 + 8);
  v28 = v46;
  v27(v5, v46);
  v29 = v43;
  sub_1BE0532D4();
  v27(v9, v28);
  sub_1BD3EBF40(&qword_1EBD45388, MEMORY[0x1E6969FC0]);
  sub_1BE053464();
  sub_1BD3EB9B4(&v54);
  v27(v29, v28);
  (*(v48 + 8))(v26, v49);
  (*(v45 + 8))(v20, v47);
  sub_1BD0DDEBC();
  v30 = sub_1BE0506C4();
  v32 = v31;
  LOBYTE(v22) = v33;
  sub_1BE051494();
  v34 = sub_1BE050564();
  v36 = v35;
  LOBYTE(v9) = v37;
  v39 = v38;

  sub_1BD0DDF10(v30, v32, v22 & 1);

  v51[0] = v34;
  v51[1] = v36;
  v52 = v9 & 1;
  v53 = v39;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v34, v36, v9 & 1);
}

id sub_1BD3E40E8()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8088], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v26 = v8;
    v27 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    LOBYTE(v7) = v14;
    sub_1BE051494();
    v15 = sub_1BE050564();
    v17 = v16;
    v19 = v18;

    sub_1BD0DDF10(v11, v13, v7 & 1);

    sub_1BE0502A4();
    v20 = sub_1BE0505F4();
    v22 = v21;
    LOBYTE(v8) = v23;
    v25 = v24;

    sub_1BD0DDF10(v15, v17, v19 & 1);

    v26 = v20;
    v27 = v22;
    LOBYTE(v8) = v8 & 1;
    v28 = v8;
    v29 = v25;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v20, v22, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD3E4354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v62[1] = a1;
  v68 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v67 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v77 = v62 - v9;
  v66 = sub_1BE051994();
  v78 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v10);
  v65 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v76 = v62 - v14;
  v80 = sub_1BE04FF64();
  v83 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v15);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45328);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v62 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45330);
  v64 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v22);
  v24 = v62 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45338);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v75 = v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v82 = v62 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v74 = v62 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v73 = v62 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v79 = v62 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v81 = v62 - v42;
  *v21 = sub_1BE050194();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45340);
  sub_1BD3E5034(a2, sub_1BD3E2D5C, sub_1BD3E2F60, &v21[*(v69 + 44)]);
  sub_1BE04FF44();
  v43 = sub_1BD0DE4F4(&qword_1EBD45348, &qword_1EBD45328);
  sub_1BE050D14();
  v70 = *(v83 + 8);
  v83 += 8;
  v70(v17, v80);
  sub_1BD0DE53C(v21, &qword_1EBD45328);
  sub_1BE052434();
  v84 = v18;
  v85 = v43;
  v62[0] = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v72;
  sub_1BE050DE4();

  v64 = *(v64 + 8);
  (v64)(v24, v44);
  *v21 = sub_1BE050194();
  v45 = v63;
  sub_1BD3E5034(v63, sub_1BD3E335C, sub_1BD3E357C, &v21[*(v69 + 44)]);
  sub_1BE04FF44();
  sub_1BE050D14();
  v70(v17, v80);
  sub_1BD0DE53C(v21, &qword_1EBD45328);
  sub_1BE052434();
  v46 = v72;
  sub_1BE050DE4();

  v47 = v64;
  (v64)(v24, v46);
  *v21 = sub_1BE050194();
  sub_1BD3E5034(v45, sub_1BD3E3A18, sub_1BD3E3C38, &v21[*(v69 + 44)]);
  sub_1BE04FF44();
  sub_1BE050D14();
  v70(v17, v80);
  sub_1BD0DE53C(v21, &qword_1EBD45328);
  sub_1BE052434();
  v48 = v73;
  sub_1BE050DE4();

  v47(v24, v46);
  v49 = v76;
  sub_1BE051984();
  v50 = v77;
  sub_1BD3E40E8();
  v51 = v74;
  sub_1BD0DE19C(v81, v74, &qword_1EBD45338);
  sub_1BD0DE19C(v79, v82, &qword_1EBD45338);
  v52 = v75;
  sub_1BD0DE19C(v48, v75, &qword_1EBD45338);
  v53 = *(v78 + 16);
  v55 = v65;
  v54 = v66;
  v53(v65, v49, v66);
  v56 = v67;
  sub_1BD0DE19C(v50, v67, &qword_1EBD452C0);
  v57 = v51;
  v58 = v68;
  sub_1BD0DE19C(v57, v68, &qword_1EBD45338);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45350);
  sub_1BD0DE19C(v82, v58 + v59[12], &qword_1EBD45338);
  sub_1BD0DE19C(v52, v58 + v59[16], &qword_1EBD45338);
  v53((v58 + v59[20]), v55, v54);
  sub_1BD0DE19C(v56, v58 + v59[24], &qword_1EBD452C0);
  sub_1BD0DE53C(v77, &qword_1EBD452C0);
  v60 = *(v78 + 8);
  v60(v76, v54);
  sub_1BD0DE53C(v73, &qword_1EBD45338);
  sub_1BD0DE53C(v79, &qword_1EBD45338);
  sub_1BD0DE53C(v81, &qword_1EBD45338);
  sub_1BD0DE53C(v56, &qword_1EBD452C0);
  v60(v55, v54);
  sub_1BD0DE53C(v75, &qword_1EBD45338);
  sub_1BD0DE53C(v82, &qword_1EBD45338);
  return sub_1BD0DE53C(v74, &qword_1EBD45338);
}

uint64_t sub_1BD3E4C88@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(double)@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v29 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v29 - v23;
  v25 = a2(v22);
  a3(v25, a1);
  sub_1BD0DE19C(v24, v15, &qword_1EBD452C0);
  sub_1BD0DE19C(v19, v11, &qword_1EBD452C0);
  sub_1BD0DE19C(v15, a4, &qword_1EBD452C0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45390);
  v27 = a4 + *(v26 + 48);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_1BD0DE19C(v11, a4 + *(v26 + 64), &qword_1EBD452C0);
  sub_1BD0DE53C(v19, &qword_1EBD452C0);
  sub_1BD0DE53C(v24, &qword_1EBD452C0);
  sub_1BD0DE53C(v11, &qword_1EBD452C0);
  return sub_1BD0DE53C(v15, &qword_1EBD452C0);
}

uint64_t sub_1BD3E4E68@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(double)@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v28 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v28 - v23;
  v25 = a2(v22);
  a3(v25, a1);
  sub_1BD0DE19C(v24, v15, &qword_1EBD452C0);
  sub_1BD0DE19C(v19, v11, &qword_1EBD452C0);
  sub_1BD0DE19C(v15, a4, &qword_1EBD452C0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45380);
  sub_1BD0DE19C(v11, a4 + *(v26 + 48), &qword_1EBD452C0);
  sub_1BD0DE53C(v19, &qword_1EBD452C0);
  sub_1BD0DE53C(v24, &qword_1EBD452C0);
  sub_1BD0DE53C(v11, &qword_1EBD452C0);
  return sub_1BD0DE53C(v15, &qword_1EBD452C0);
}

uint64_t sub_1BD3E5034@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(double)@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B58);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45360);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v28 - v21;
  *v22 = sub_1BE04F504();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45368);
  sub_1BD3E4C88(a1, a2, a3, &v22[*(v23 + 44)]);
  *v14 = sub_1BE04F7C4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45370);
  sub_1BD3E4E68(a1, a2, a3, &v14[*(v24 + 44)]);
  sub_1BD0DE19C(v22, v18, &qword_1EBD45360);
  sub_1BD0DE19C(v14, v10, &qword_1EBD42B58);
  v25 = v29;
  sub_1BD0DE19C(v18, v29, &qword_1EBD45360);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45378);
  sub_1BD0DE19C(v10, v25 + *(v26 + 48), &qword_1EBD42B58);
  sub_1BD0DE53C(v14, &qword_1EBD42B58);
  sub_1BD0DE53C(v22, &qword_1EBD45360);
  sub_1BD0DE53C(v10, &qword_1EBD42B58);
  return sub_1BD0DE53C(v18, &qword_1EBD45360);
}

uint64_t sub_1BD3E52D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v21[0] = sub_1BE04FF64();
  v5 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0], v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45250);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45258);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v21 - v16;
  *v12 = sub_1BE050194();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45268);
  sub_1BD3E6E90(a1, a2, sub_1BD3E5838, &v12[*(v18 + 44)]);
  sub_1BE04FF44();
  v19 = sub_1BD0DE4F4(&qword_1EBD45270, &qword_1EBD45250);
  sub_1BE050D14();
  (*(v5 + 8))(v8, v21[0]);
  sub_1BD0DE53C(v12, &qword_1EBD45250);
  sub_1BE052434();
  v21[2] = v9;
  v21[3] = v19;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v14 + 8))(v17, v13);
}

void sub_1BD3E55B0(uint64_t a1, uint64_t a2)
{
  sub_1BE0528A4();
  sub_1BE048964();
  v4 = sub_1BE052894();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = a1;
  v5[5] = a2;
  sub_1BE048964();
  v7 = sub_1BE052894();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = a1;
  v8[5] = a2;
  type metadata accessor for Decimal(0);
  sub_1BE051934();
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v28 = *(a2 + 72);
  v29 = *(a2 + 88);
  v30 = *(a2 + 92);
  v31 = *(a2 + 108);
  v9 = [*(a2 + 16) monetaryValue];
  v10 = [v9 currency];

  if (v10)
  {
    v11 = sub_1BE052434();
    v13 = v12;

    sub_1BD3E5ACC(v14, a2);
    v16 = v15;
    *&v19[4] = v30;
    *v19 = v27;
    *&v19[20] = v31;
    *&v19[24] = v28;
    *&v19[40] = v29;
    *&v17 = v11;
    *(&v17 + 1) = v13;
    *&v18 = 2;
    *(&v18 + 1) = [objc_opt_self() systemBlueColor];
    sub_1BE052434();
    sub_1BD3EC708();
    sub_1BE050DE4();

    v20[4] = *&v19[32];
    v20[5] = v17;
    v20[6] = v18;
    v21 = v16;
    v20[0] = v25;
    v20[1] = v26;
    v20[2] = *v19;
    v20[3] = *&v19[16];
    sub_1BD3EC75C(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD3E5838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a1;
  v32 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45300);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - v17;
  v33 = sub_1BD3E8D8C();
  v34 = v19;
  sub_1BD0DDEBC();
  v20 = sub_1BE0506C4();
  v22 = v21;
  v33 = v20;
  v34 = v21;
  v24 = v23 & 1;
  v35 = v23 & 1;
  v36 = v25;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v20, v22, v24);

  sub_1BD3E55B0(v31, v30);
  sub_1BD0DE19C(v18, v14, &qword_1EBD452C0);
  sub_1BD0DE19C(v10, v6, &qword_1EBD45300);
  v26 = v32;
  sub_1BD0DE19C(v14, v32, &qword_1EBD452C0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45308);
  sub_1BD0DE19C(v6, v26 + *(v27 + 48), &qword_1EBD45300);
  sub_1BD0DE53C(v10, &qword_1EBD45300);
  sub_1BD0DE53C(v18, &qword_1EBD452C0);
  sub_1BD0DE53C(v6, &qword_1EBD45300);
  return sub_1BD0DE53C(v14, &qword_1EBD452C0);
}

void sub_1BD3E5ACC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE0B7020;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8088], v3);
  v9 = PKPassKitBundle();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = v9;
  sub_1BE04B6F4();

  (*(v4 + 8))(v7, v3);
  v11 = sub_1BE053344();
  v12 = [*(a2 + 16) monetaryValue];
  v13 = [v12 currency];

  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1BE052434();

  v14 = sub_1BE052404();

  v15 = sub_1BE052404();

  v16 = [objc_opt_self() suggestionWithTitle:v14 value:v11 currencyCode:v15];

  if (v16)
  {
    *(v8 + 32) = v16;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1BD3E5D24@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v23 - v4;
  v6 = sub_1BD993C74();
  if (v7)
  {
    v26 = v6;
    v27 = v7;
    sub_1BD0DDEBC();
    v8 = sub_1BE0506C4();
    v10 = v9;
    v12 = v11;
    sub_1BE051494();
    v13 = sub_1BE050564();
    v15 = v14;
    v23 = a1;
    v24 = v2;
    v17 = v16;
    v19 = v18;

    sub_1BD0DDF10(v8, v10, v12 & 1);

    v26 = v13;
    v27 = v15;
    v17 &= 1u;
    v28 = v17;
    v29 = v19;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v13, v15, v17);

    v20 = v23;
    sub_1BD0DE204(v5, v23, &qword_1EBD452C0);
    return (*(v25 + 56))(v20, 0, 1, v24);
  }

  else
  {
    v22 = *(v25 + 56);

    return v22(a1, 1, 1, v2);
  }
}

id sub_1BD3E5F68()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8088], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v16 = v8;
    v17 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    v16 = v11;
    v17 = v12;
    LOBYTE(v10) = v14 & 1;
    v18 = v14 & 1;
    v19 = v15;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v11, v13, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD3E6130(uint64_t a1, uint64_t a2)
{
  sub_1BE0528A4();
  sub_1BE048964();
  v4 = sub_1BE052894();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = a1;
  v5[5] = a2;
  sub_1BE048964();
  v7 = sub_1BE052894();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = a1;
  v8[5] = a2;
  type metadata accessor for Decimal(0);
  sub_1BE051934();
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v28 = *(a2 + 72);
  v29 = *(a2 + 88);
  v30 = *(a2 + 92);
  v31 = *(a2 + 108);
  v9 = [*(a2 + 16) monetaryValue];
  v10 = [v9 currency];

  if (v10)
  {
    v11 = sub_1BE052434();
    v13 = v12;

    sub_1BD3E6448(v14, a2);
    v16 = v15;
    *&v19[4] = v30;
    *v19 = v27;
    *&v19[20] = v31;
    *&v19[24] = v28;
    *&v19[40] = v29;
    *&v17 = v11;
    *(&v17 + 1) = v13;
    *&v18 = 2;
    *(&v18 + 1) = [objc_opt_self() systemBlueColor];
    sub_1BE052434();
    sub_1BD3EC708();
    sub_1BE050DE4();

    v20[4] = *&v19[32];
    v20[5] = v17;
    v20[6] = v18;
    v21 = v16;
    v20[0] = v25;
    v20[1] = v26;
    v20[2] = *v19;
    v20[3] = *&v19[16];
    sub_1BD3EC75C(v20);
  }

  else
  {
    __break(1u);
  }
}

double sub_1BD3E63B8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void sub_1BD3E6448(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x1E69B8088], v3, v6);
  v9 = PKPassKitBundle();
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  sub_1BE04B6F4();

  (*(v4 + 8))(v8, v3);
  v11 = sub_1BE053344();
  v12 = [*(a2 + 16) monetaryValue];
  v13 = [v12 currency];

  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1BE052434();

  v14 = sub_1BE052404();

  v15 = sub_1BE052404();

  v16 = [objc_opt_self() suggestionWithTitle:v14 value:v11 currencyCode:v15];

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BE0B7020;
    *(v17 + 32) = v16;
  }
}

uint64_t sub_1BD3E6698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a1;
  v72 = a2;
  v82 = a3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45238);
  MEMORY[0x1EEE9AC00](v78, v5);
  v74 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45240);
  v8 = *(v7 - 8);
  v80 = v7;
  v81 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v75 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45248);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v79 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v85 = &v64 - v16;
  v77 = sub_1BE051994();
  v86 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v17);
  v76 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v84 = &v64 - v21;
  v83 = sub_1BE04FF64();
  v22 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45250);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v64 - v28;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45258);
  v30 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v31);
  v33 = &v64 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45260);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v73 = &v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v64 - v39;
  *v29 = sub_1BE050194();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45268);
  sub_1BD3E6E90(a1, a2, sub_1BD3E70FC, &v29[*(v41 + 44)]);
  sub_1BE04FF44();
  v69 = MEMORY[0x1E697BF80];
  v42 = sub_1BD0DE4F4(&qword_1EBD45270, &qword_1EBD45250);
  sub_1BE050D14();
  v43 = *(v22 + 8);
  v67 = v22 + 8;
  v68 = v43;
  v43(v25, v83);
  sub_1BD0DE53C(v29, &qword_1EBD45250);
  sub_1BE052434();
  v87 = v26;
  v88 = v42;
  v66 = MEMORY[0x1E697D248];
  swift_getOpaqueTypeConformance2();
  v44 = v40;
  v65 = v40;
  v45 = v70;
  sub_1BE050DE4();

  (*(v30 + 8))(v33, v45);
  v46 = v84;
  sub_1BE051984();
  v47 = sub_1BE050194();
  v48 = v74;
  *v74 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45278);
  sub_1BD3E72FC(v48 + *(v49 + 44));
  sub_1BE04FF44();
  v50 = sub_1BD0DE4F4(&qword_1EBD45280, &qword_1EBD45238);
  v51 = v75;
  v52 = v78;
  sub_1BE050D14();
  v68(v25, v83);
  sub_1BD0DE53C(v48, &qword_1EBD45238);
  sub_1BE052434();
  v87 = v52;
  v88 = v50;
  swift_getOpaqueTypeConformance2();
  v53 = v85;
  v54 = v80;
  sub_1BE050DE4();

  (*(v81 + 8))(v51, v54);
  v55 = v73;
  sub_1BD0DE19C(v44, v73, &qword_1EBD45260);
  v56 = *(v86 + 16);
  v58 = v76;
  v57 = v77;
  v56(v76, v46, v77);
  v59 = v79;
  sub_1BD0DE19C(v53, v79, &qword_1EBD45248);
  v60 = v82;
  sub_1BD0DE19C(v55, v82, &qword_1EBD45260);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45288);
  v56((v60 + *(v61 + 48)), v58, v57);
  sub_1BD0DE19C(v59, v60 + *(v61 + 64), &qword_1EBD45248);
  sub_1BD0DE53C(v85, &qword_1EBD45248);
  v62 = *(v86 + 8);
  v62(v84, v57);
  sub_1BD0DE53C(v65, &qword_1EBD45260);
  sub_1BD0DE53C(v59, &qword_1EBD45248);
  v62(v58, v57);
  return sub_1BD0DE53C(v55, &qword_1EBD45260);
}

uint64_t sub_1BD3E6E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452D8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452E0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v26 - v21;
  *v22 = sub_1BE04F504();
  *(v22 + 1) = 0;
  v22[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452E8);
  a3(a1, a2);
  *v14 = sub_1BE04F7C4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452F0);
  a3(a1, a2);
  sub_1BD0DE19C(v22, v18, &qword_1EBD452E0);
  sub_1BD0DE19C(v14, v10, &qword_1EBD452D8);
  v23 = v27;
  sub_1BD0DE19C(v18, v27, &qword_1EBD452E0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452F8);
  sub_1BD0DE19C(v10, v23 + *(v24 + 48), &qword_1EBD452D8);
  sub_1BD0DE53C(v14, &qword_1EBD452D8);
  sub_1BD0DE53C(v22, &qword_1EBD452E0);
  sub_1BD0DE53C(v10, &qword_1EBD452D8);
  return sub_1BD0DE53C(v18, &qword_1EBD452E0);
}

uint64_t sub_1BD3E70FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45300);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v24 - v20;
  sub_1BD3E5F68();
  sub_1BD3E6130(a1, a2);
  sub_1BD0DE19C(v21, v17, &qword_1EBD452C0);
  sub_1BD0DE19C(v13, v9, &qword_1EBD45300);
  sub_1BD0DE19C(v17, a3, &qword_1EBD452C0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45308);
  sub_1BD0DE19C(v9, a3 + *(v22 + 48), &qword_1EBD45300);
  sub_1BD0DE53C(v13, &qword_1EBD45300);
  sub_1BD0DE53C(v21, &qword_1EBD452C0);
  sub_1BD0DE53C(v9, &qword_1EBD45300);
  return sub_1BD0DE53C(v17, &qword_1EBD452C0);
}

uint64_t sub_1BD3E72FC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45290);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45298);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v29 - v16;
  *v17 = sub_1BE04F504();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452A0);
  sub_1BD3E758C(&v17[*(v18 + 44)]);
  v19 = sub_1BE050234();
  sub_1BE04E1F4();
  v20 = &v17[*(v10 + 44)];
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  *v8 = sub_1BE04F7C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452A8);
  sub_1BD3E7980(&v8[*(v25 + 44)]);
  sub_1BD0DE19C(v17, v13, &qword_1EBD45298);
  sub_1BD0DE19C(v8, v4, &qword_1EBD45290);
  v26 = v30;
  sub_1BD0DE19C(v13, v30, &qword_1EBD45298);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD452B0);
  sub_1BD0DE19C(v4, v26 + *(v27 + 48), &qword_1EBD45290);
  sub_1BD0DE53C(v8, &qword_1EBD45290);
  sub_1BD0DE53C(v17, &qword_1EBD45298);
  sub_1BD0DE53C(v4, &qword_1EBD45290);
  return sub_1BD0DE53C(v13, &qword_1EBD45298);
}

uint64_t sub_1BD3E758C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v43 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v44 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v42 - v19;
  v48 = sub_1BD3E8D8C();
  v49 = v21;
  sub_1BD0DDEBC();
  v22 = sub_1BE0506C4();
  v24 = v23;
  v48 = v22;
  v49 = v23;
  v26 = v25 & 1;
  v50 = v25 & 1;
  v51 = v27;
  sub_1BE052434();
  v42 = v20;
  sub_1BE050DE4();

  sub_1BD0DDF10(v22, v24, v26);

  v28 = v43;
  sub_1BD3E5D24(v43);
  v48 = sub_1BD3E92E0();
  v49 = v29;
  v30 = sub_1BE0506C4();
  v32 = v31;
  v48 = v30;
  v49 = v31;
  LOBYTE(v24) = v33 & 1;
  v50 = v33 & 1;
  v51 = v34;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v30, v32, v24);

  v35 = v44;
  sub_1BD0DE19C(v20, v44, &qword_1EBD452C0);
  v36 = v46;
  sub_1BD0DE19C(v28, v46, &unk_1EBD5BB60);
  v37 = v45;
  sub_1BD0DE19C(v16, v45, &qword_1EBD452C0);
  v38 = v47;
  sub_1BD0DE19C(v35, v47, &qword_1EBD452C0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452D0);
  sub_1BD0DE19C(v36, v38 + v39[12], &unk_1EBD5BB60);
  v40 = v38 + v39[16];
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_1BD0DE19C(v37, v38 + v39[20], &qword_1EBD452C0);
  sub_1BD0DE53C(v16, &qword_1EBD452C0);
  sub_1BD0DE53C(v28, &unk_1EBD5BB60);
  sub_1BD0DE53C(v42, &qword_1EBD452C0);
  sub_1BD0DE53C(v37, &qword_1EBD452C0);
  sub_1BD0DE53C(v36, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v35, &qword_1EBD452C0);
}

uint64_t sub_1BD3E7980@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v43 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v44 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v42 - v19;
  v48 = sub_1BD3E8D8C();
  v49 = v21;
  sub_1BD0DDEBC();
  v22 = sub_1BE0506C4();
  v24 = v23;
  v48 = v22;
  v49 = v23;
  v26 = v25 & 1;
  v50 = v25 & 1;
  v51 = v27;
  sub_1BE052434();
  v42 = v20;
  sub_1BE050DE4();

  sub_1BD0DDF10(v22, v24, v26);

  v28 = v43;
  sub_1BD3E5D24(v43);
  v48 = sub_1BD3E92E0();
  v49 = v29;
  v30 = sub_1BE0506C4();
  v32 = v31;
  v48 = v30;
  v49 = v31;
  v34 = v33 & 1;
  v50 = v33 & 1;
  v51 = v35;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v30, v32, v34);

  v36 = v44;
  sub_1BD0DE19C(v20, v44, &qword_1EBD452C0);
  v37 = v46;
  sub_1BD0DE19C(v28, v46, &unk_1EBD5BB60);
  v38 = v45;
  sub_1BD0DE19C(v16, v45, &qword_1EBD452C0);
  v39 = v47;
  sub_1BD0DE19C(v36, v47, &qword_1EBD452C0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C8);
  sub_1BD0DE19C(v37, v39 + *(v40 + 48), &unk_1EBD5BB60);
  sub_1BD0DE19C(v38, v39 + *(v40 + 64), &qword_1EBD452C0);
  sub_1BD0DE53C(v16, &qword_1EBD452C0);
  sub_1BD0DE53C(v28, &unk_1EBD5BB60);
  sub_1BD0DE53C(v42, &qword_1EBD452C0);
  sub_1BD0DE53C(v38, &qword_1EBD452C0);
  sub_1BD0DE53C(v37, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v36, &qword_1EBD452C0);
}

uint64_t sub_1BD3E7D9C@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(uint64_t, uint64_t)@<X4>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  *a3 = sub_1BE04F7C4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  return a2(v8, v7);
}

void sub_1BD3E7E10(void *a1, void *a2, uint64_t a3, __int128 *a4)
{
  v8 = a4[1];
  *(v4 + 112) = *a4;
  *(v4 + 128) = v8;
  *(v4 + 144) = a4[2];
  *(v4 + 154) = *(a4 + 42);
  *(v4 + 16) = a1;
  v9 = *(a3 + 16);
  *(v4 + 32) = *a3;
  *(v4 + 48) = v9;
  *(v4 + 64) = *(a3 + 32);
  v136 = a1;
  v134 = a4;
  sub_1BD0DE19C(a4, &v157, &unk_1EBD45070);
  v138 = a3;
  sub_1BD3EB974(a3, &v157);
  v135 = a2;
  v10 = [a2 userEnteredMinimumAmounts];
  v137 = v4;
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = v10;
  sub_1BD0E5E8C(0, &qword_1EBD43B00);
  sub_1BD2B5358();
  v12 = sub_1BE052A34();

  if ((v12 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE052A74();
    v12 = v160;
    v13 = v161;
    v14 = v162;
    v15 = v163;
    v16 = v164;
  }

  else
  {
    v17 = -1 << *(v12 + 32);
    v13 = v12 + 56;
    v18 = ~v17;
    v19 = -v17;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v16 = v20 & *(v12 + 56);
    sub_1BE048C84();
    v14 = v18;
    v15 = 0;
  }

  v21 = (v14 + 64) >> 6;
  while (1)
  {
    if (v12 < 0)
    {
      v27 = sub_1BE053744();
      if (v27)
      {
        *&v146 = v27;
        swift_dynamicCast();
        v26 = v157;
        v24 = v15;
        v25 = v16;
        if (v157)
        {
          goto LABEL_19;
        }
      }

LABEL_26:
      sub_1BD0D45FC();

      v4 = v137;
LABEL_27:
      v36 = MEMORY[0x1BFB403C0](0);
      goto LABEL_28;
    }

    v22 = v15;
    v23 = v16;
    v24 = v15;
    if (!v16)
    {
      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v24 >= v21)
        {
          goto LABEL_26;
        }

        v23 = *(v13 + 8 * v24);
        ++v22;
        if (v23)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

LABEL_15:
    v25 = (v23 - 1) & v23;
    v26 = *(*(v12 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v26)
    {
      goto LABEL_26;
    }

LABEL_19:
    v28 = [v26 currency];
    if (!v28)
    {
      goto LABEL_9;
    }

    v29 = v28;
    v30 = v12;
    v31 = sub_1BE052434();
    v33 = v32;

    if (v31 == *(v138 + 24) && v33 == *(v138 + 32))
    {
      break;
    }

    v35 = sub_1BE053B84();

    v12 = v30;
    if (v35)
    {
      goto LABEL_110;
    }

LABEL_9:

    v15 = v24;
    v16 = v25;
  }

LABEL_110:
  sub_1BD0D45FC();

  v118 = [v26 amount];
  if (!v118)
  {
LABEL_118:
    __break(1u);
    return;
  }

  v119 = v118;
  v120 = sub_1BE0533F4();
  v122 = v121;
  v124 = v123;

  v38 = v124;
  v37 = v122;
  v36 = v120;
  v4 = v137;
LABEL_28:
  *(v4 + 72) = v36;
  *(v4 + 80) = v37;
  *(v4 + 88) = v38;
  v39 = *v138;
  v40 = *(v138 + 8);
  v41 = *(v138 + 16);
  v42 = [v136 monetaryValue];
  v43 = [v42 amount];

  if (!v43)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v44 = sub_1BE0533F4();
  v46 = v45;
  v48 = v47;

  v49 = MEMORY[0x1BFB403F0](v39, v40, v41, v44, v46, v48);
  if (v49)
  {
    v50 = v41;
  }

  else
  {
    v50 = v48;
  }

  if (v49)
  {
    v46 = v40;
    v51 = v39;
  }

  else
  {
    v51 = v44;
  }

  v52 = [v135 userEnteredMaximumAmounts];
  if (!v52)
  {
    sub_1BD3EB9B4(v138);
LABEL_65:
    v132 = 0;
    goto LABEL_66;
  }

  v53 = v52;
  v128 = v51;
  v129 = v46;
  v130 = v50;
  sub_1BD0E5E8C(0, &qword_1EBD43B00);
  sub_1BD2B5358();
  v54 = sub_1BE052A34();

  if ((v54 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE052A74();
    v55 = v165;
    v56 = v166;
    v57 = v167;
    v58 = v168;
    v59 = v169;
  }

  else
  {
    v60 = -1 << *(v54 + 32);
    v56 = v54 + 56;
    v61 = ~v60;
    v62 = -v60;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    else
    {
      v63 = -1;
    }

    v59 = v63 & *(v54 + 56);
    sub_1BE048C84();
    v57 = v61;
    v58 = 0;
    v55 = v54;
  }

  v64 = (v57 + 64) >> 6;
  while (2)
  {
    if (v55 < 0)
    {
      v70 = sub_1BE053744();
      if (!v70)
      {
        goto LABEL_61;
      }

      *&v146 = v70;
      swift_dynamicCast();
      v69 = v157;
      i = v58;
      v68 = v59;
      if (!v157)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v65 = v58;
      v66 = v59;
      for (i = v58; !v66; ++v65)
      {
        i = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_116;
        }

        if (i >= v64)
        {
          goto LABEL_61;
        }

        v66 = *(v56 + 8 * i);
      }

      v68 = (v66 - 1) & v66;
      v69 = *(*(v55 + 48) + ((i << 9) | (8 * __clz(__rbit64(v66)))));
      if (!v69)
      {
LABEL_61:
        sub_1BD3EB9B4(v138);
        sub_1BD0D45FC();
        v69 = 0;
        goto LABEL_62;
      }
    }

    v71 = [v69 currency];
    if (!v71)
    {
LABEL_44:

      v58 = i;
      v59 = v68;
      continue;
    }

    break;
  }

  v72 = v71;
  v73 = sub_1BE052434();
  v75 = v74;

  if (v73 != *(v138 + 24) || v75 != *(v138 + 32))
  {
    v77 = sub_1BE053B84();

    if (v77)
    {
      goto LABEL_113;
    }

    goto LABEL_44;
  }

LABEL_113:
  sub_1BD0D45FC();
  sub_1BD3EB9B4(v138);
LABEL_62:
  v4 = v137;

  v78 = [v69 amount];

  v50 = v130;
  v51 = v128;
  v46 = v129;
  if (!v78)
  {
    goto LABEL_65;
  }

  v157 = 0uLL;
  LODWORD(v158) = 0;
  BYTE4(v158) = 1;
  v79 = v78;
  sub_1BE0533E4();
  v132 = v79;

  if ((BYTE4(v158) & 1) == 0)
  {
    v80 = v158;
    v81 = *(&v157 + 1);
    v82 = v157;
    goto LABEL_67;
  }

LABEL_66:
  v80 = v50;
  v81 = v46;
  v82 = v51;
LABEL_67:
  v139 = WORD1(v50);
  v83 = MEMORY[0x1BFB403F0](v51, v46, v50, v82, v81, v80);
  if (v83)
  {
    v84 = v51;
  }

  else
  {
    v84 = v82;
  }

  *(v4 + 92) = v84;
  if (v83)
  {
    v85 = v46;
  }

  else
  {
    v85 = v81;
  }

  if (v83)
  {
    v86 = v50;
  }

  else
  {
    v86 = v80;
  }

  *(v4 + 100) = v85;
  *(v4 + 108) = v86;
  v87 = v134[1];
  v157 = *v134;
  v158 = v87;
  v159[0] = v134[2];
  *(v159 + 10) = *(v134 + 42);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45070);
  MEMORY[0x1BFB3E970](&v149);
  if (v156)
  {
    v88 = v51;
    v89 = WORD2(v51);
    v90 = HIWORD(v51);
    v91 = v46;
    v92 = v46 >> 16;
    v93 = WORD2(v46);
    v94 = HIWORD(v46);
    v95 = v50;
    v96 = WORD1(v50);
  }

  else
  {
    v88 = v149;
    v89 = WORD2(v149);
    v90 = HIWORD(v149);
    v91 = v150;
    LOWORD(v92) = v151;
    v93 = v152;
    v94 = v153;
    v95 = v154;
    LOWORD(v96) = v155;
  }

  v125 = v96;
  v126 = v88;
  v97 = v50;
  v98 = v50;
  v99 = v91;
  v100 = v93;
  v101 = MEMORY[0x1BFB403F0](v51, v46, v98, v88 | (v89 << 32) | (v90 << 48), v91 | (v92 << 16) | (v93 << 32) | (v94 << 48), v95 | (v96 << 16));
  v102 = v126;
  if (v101)
  {
    v102 = v51;
  }

  v127 = v102;
  if (v101)
  {
    v103 = WORD2(v51);
  }

  else
  {
    v103 = v89;
  }

  v133 = v103;
  if (v101)
  {
    v104 = HIWORD(v51);
  }

  else
  {
    v104 = v90;
  }

  if (v101)
  {
    v105 = v46;
  }

  else
  {
    v105 = v99;
  }

  if (v101)
  {
    v106 = WORD1(v46);
  }

  else
  {
    v106 = v92;
  }

  if (v101)
  {
    v107 = WORD2(v46);
  }

  else
  {
    v107 = v100;
  }

  if (v101)
  {
    v108 = HIWORD(v46);
  }

  else
  {
    v108 = v94;
  }

  if (v101)
  {
    v109 = v97;
  }

  else
  {
    v109 = v95;
  }

  if (v101)
  {
    v110 = v139;
  }

  else
  {
    v110 = v125;
  }

  swift_beginAccess();
  LODWORD(v143) = v127;
  WORD2(v143) = v133;
  WORD3(v143) = v104;
  WORD4(v143) = v105;
  WORD5(v143) = v106;
  WORD6(v143) = v107;
  HIWORD(v143) = v108;
  LOWORD(v144) = v109;
  WORD1(v144) = v110;
  type metadata accessor for Decimal(0);
  sub_1BE04D874();
  swift_endAccess();
  *(v137 + 24) = v135;
  v111 = *(v137 + 128);
  v146 = *(v137 + 112);
  v147 = v111;
  v148[0] = *(v137 + 144);
  *(v148 + 10) = *(v137 + 154);
  v112 = v135;
  MEMORY[0x1BFB3E970](&v143, v131);
  if (v145[9] & 1) != 0 || (v113 = v143, v114 = v144, swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , (MEMORY[0x1BFB40440](v113, *(&v113 + 1), v114, v146, *(&v146 + 1), v147)))
  {

    sub_1BD0DE53C(v134, &unk_1EBD45070);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v115 = *(v137 + 128);
    v143 = *(v137 + 112);
    v144 = v115;
    v117 = *(v137 + 112);
    v116 = *(v137 + 128);
    *v145 = *(v137 + 144);
    *&v145[10] = *(v137 + 154);
    v140 = v117;
    v141 = v116;
    *v142 = *(v137 + 144);
    *&v142[10] = *(v137 + 154);
    sub_1BD0DE19C(&v143, &v146, &unk_1EBD45070);
    sub_1BE0518F4();

    sub_1BD0DE53C(v134, &unk_1EBD45070);
    v146 = v140;
    v147 = v141;
    v148[0] = *v142;
    *(v148 + 10) = *&v142[10];
    sub_1BD0DE53C(&v146, &unk_1EBD45070);
  }
}

void sub_1BD3E8918(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v3 = [*(v1 + 16) monetaryValue];
  v4 = [v3 currency];

  if (v4)
  {
    v5 = sub_1BE052434();
    v7 = v6;

    *a1 = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v5;
    *(a1 + 32) = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD3E8A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  if (MEMORY[0x1BFB403F0](*(v3 + 92), *(v3 + 100), *(v3 + 108), a1, a2, a3))
  {
    v6 = *(v3 + 92);
    v5 = *(v3 + 100);
    v4 = *(v3 + 108);
  }

  v7 = MEMORY[0x1BFB403C0](0);
  if (MEMORY[0x1BFB403F0](v6, v5, v4, v7, v8, v9))
  {
    v6 = MEMORY[0x1BFB403C0](0);
    v5 = v10;
    LODWORD(v4) = v11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v21 = v6;
  *(&v21 + 1) = v5;
  LODWORD(v22) = v4;
  sub_1BE048964();
  sub_1BE04D8C4();
  v12 = *(v3 + 128);
  v19[0] = *(v3 + 112);
  v19[1] = v12;
  v14 = *(v3 + 112);
  v13 = *(v3 + 128);
  v20[0] = *(v3 + 144);
  *(v20 + 10) = *(v3 + 154);
  v16 = v14;
  v17 = v13;
  *v18 = *(v3 + 144);
  *&v18[10] = *(v3 + 154);
  sub_1BD0DE19C(v19, &v21, &unk_1EBD45070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45070);
  sub_1BE0518F4();
  v21 = v16;
  v22 = v17;
  v23[0] = *v18;
  *(v23 + 10) = *&v18[10];
  return sub_1BD0DE53C(&v21, &unk_1EBD45070);
}

uint64_t sub_1BD3E8BB8()
{
  sub_1BE053D04();
  sub_1BE053404();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD3E8C30()
{
  sub_1BE053404();

  return sub_1BE052524();
}

uint64_t sub_1BD3E8C84()
{
  sub_1BE053D04();
  sub_1BE053404();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD3E8CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if ((MEMORY[0x1BFB40440](*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1BE053B84();
}

id sub_1BD3E8D8C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v19 - v13;
  v15 = [*(v0 + 16) type];
  if (v15 == 1)
  {
    (*(v2 + 104))(v9, *MEMORY[0x1E69B8088], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v18 = sub_1BE04B6F4();
      v14 = v9;
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 == 2)
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69B8088], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v18 = sub_1BE04B6F4();
      v14 = v5;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v15 != 3)
  {
    return 0;
  }

  (*(v2 + 104))(v14, *MEMORY[0x1E69B8088], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();
LABEL_10:

    (*(v2 + 8))(v14, v1);
    return v18;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BD3E9034()
{

  v1 = OBJC_IVAR____TtC9PassKitUI25PaymentRewardsAmountModel__selectedAmount;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45108);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BD3E912C()
{
  sub_1BD3EC09C(319, &qword_1EBD44FF0, type metadata accessor for Decimal, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BD3E9230()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}