void sub_20BF0E5D0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_defaultButtonInsets);
  *v4 = xmmword_20C16E7D0;
  v4[1] = xmmword_20C16E7D0;
  v5 = OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setAdjustsFontForContentSizeCategory_];
  v7 = *MEMORY[0x277D743F8];
  v8 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v10 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_20C14F980;
  v12 = *MEMORY[0x277D74430];
  *(v11 + 32) = *MEMORY[0x277D74430];
  *(v11 + 40) = v7;
  v13 = v10;
  v14 = v12;
  v15 = sub_20B6B134C(v11);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v15;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v16 = sub_20C13C744();

  v17 = [v8 fontDescriptorByAddingAttributes_];

  v18 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];
  [v6 setFont_];

  v19 = [objc_opt_self() whiteColor];
  [v6 setTextColor_];

  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  LODWORD(v20) = 1148846080;
  [v6 setContentCompressionResistancePriority:1 forAxis:v20];

  *(v1 + v5) = v6;
  v21 = OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_sortButton;
  type metadata accessor for SortButton();
  v22 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = [v22 titleLabel];
  [v23 setAdjustsFontForContentSizeCategory_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B7AA590(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BB94();
  LODWORD(v24) = v29;
  [v22 setContentHuggingPriority:0 forAxis:v24];
  v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v22 setTintColor_];

  LODWORD(v26) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [v22 setContentCompressionResistancePriority:1 forAxis:v27];

  *(v1 + v21) = v22;
  v28 = v1 + OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_localizer;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_shouldTriggerDismissEvent) = 1;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BF0EB1C()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_shouldTriggerDismissEvent) = 1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = 1;
    v7[24] = 0x80;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E2A84);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t sub_20BF0ED24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_20BF0ED38(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_20B6D8730(*a1, v3, v4);
  swift_getAtKeyPath();
  return sub_20B6D8758(v1, v3, v4);
}

uint64_t sub_20BF0EDB4()
{
  v0 = sub_20C1344C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C135AA4();
  v4 = sub_20C134324();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_20BF0EEA0()
{
  v0 = sub_20C1344C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C135AA4();
  v4 = sub_20C1344B4();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t GuestPairingNotificationCoordinator.__allocating_init(userNotificationCenter:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_20B51C710(a1, v2 + 16);
  return v2;
}

uint64_t sub_20BF0EFEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  v9 = sub_20C13CDF4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_20B6383D0(0, 0, v4, &unk_20C183C80, v10);
}

uint64_t sub_20BF0F1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_20C13BB84();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF0F284, 0, 0);
}

uint64_t sub_20BF0F284()
{
  v1 = v0[6];
  v2 = sub_20BF0F984();
  v0[10] = v2;
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_20BF0F350;

  return MEMORY[0x2821AF658](v2, v3, v4);
}

uint64_t sub_20BF0F350()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_20BF0F4CC;
  }

  else
  {
    v2 = sub_20BF0F464;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF0F464()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BF0F4CC()
{
  v22 = v0;
  v1 = *(v0 + 96);
  sub_20C13B484();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 80);
    v7 = *(v0 + 64);
    v19 = *(v0 + 56);
    v20 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_20C13E094();
    v12 = sub_20B51E694(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to post user notification with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v7 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 96);
    v14 = *(v0 + 72);
    v15 = *(v0 + 56);
    v16 = *(v0 + 64);

    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_20BF0F6AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BF0F1C4(a1, v4, v5, v6);
}

uint64_t sub_20BF0F760()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  return sub_20C13B2D4();
}

uint64_t GuestPairingNotificationCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_20BF0F984()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  v4 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  sub_20C132964();

  v8 = sub_20C13C914();

  [v4 setTitle_];

  v9 = [v6 bundleForClass_];
  sub_20C132964();

  v10 = sub_20C13C914();

  [v4 setBody_];

  v11 = sub_20C13C914();
  [v4 setCategoryIdentifier_];

  [v4 setInterruptionLevel_];
  [v4 setShouldIgnoreDowntime_];
  [v4 setShouldIgnoreDoNotDisturb_];
  v12 = v4;
  v13 = sub_20C13C914();
  v14 = [objc_opt_self() requestWithIdentifier:v13 content:v12 trigger:0];

  return v14;
}

uint64_t type metadata accessor for BodyFocusFilterUpdated()
{
  result = qword_27C7705D8;
  if (!qword_27C7705D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_20BF0FEB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PopTransitionDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20BF0FF10()
{
  result = qword_27C7705E8;
  if (!qword_27C7705E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7705E8);
  }

  return result;
}

id sub_20BF0FF74()
{
  v1 = sub_20C13C914();
  v2 = [v0 supportsFitnessDataDestinationForDeviceIdentifier_];

  return v2;
}

unint64_t sub_20BF0FFD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7705F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x800000020C1B6E80;
  *(inited + 48) = type metadata accessor for ShelfSolidBackgroundDecorationItem();
  v1 = sub_20B6B1250(inited);
  swift_setDeallocating();
  sub_20BF10080(inited + 32);
  return v1;
}

uint64_t sub_20BF10080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7705F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BF100EC()
{
  v1 = sub_20B633A38(0x6E6F697461746F72, 0xEF7865747265765FLL, 0xD000000000000011, 0x800000020C1B70A0, 0xD000000000000024, 0x800000020C1B70C0, *(v0 + 104));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript_];

  if (v3)
  {
    [v3 setPixelFormat_];
    [v3 setBlendingEnabled_];
    if (qword_27C760A40 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor_];

    return v1;
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

uint64_t sub_20BF1027C(uint64_t result)
{
  *(v1 + 16) = 1082130432;
  *(v1 + 24) = 0x3FF0000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1117782016;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 115;
  v2 = &unk_28228DEB0;
  *(v1 + 112) = &unk_28228DEB0;
  if (qword_27C760A68 != -1)
  {
    v13 = result;
    swift_once();
    result = v13;
    v2 = *(v1 + 112);
  }

  *(v1 + 120) = qword_27C79BEF0;
  *(v1 + 176) = 0;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 128) = 0u;
  v3 = *(result + 8);
  v5 = *(result + 24);
  v4 = *(result + 32);
  v6 = *(result + 16);
  *(v1 + 72) = *result;
  *(v1 + 88) = v6;
  *(v1 + 104) = v4;
  v7 = v2[2];
  if (v7 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = 2 * v7;
    swift_unknownObjectRetain_n();

    swift_unknownObjectRetain();
    v9 = v5;
    swift_unknownObjectRetain();
    *(v1 + 144) = [v3 newBufferWithBytes:v2 + 4 length:v8 options:0];
    result = swift_unknownObjectRelease();
    v10 = *(v1 + 120);
    v11 = *(v10 + 16);
    if (!(v11 >> 57))
    {
      *(v1 + 176) = [v3 newBufferWithBytes:v10 + 32 length:v11 << 6 options:0];
      swift_unknownObjectRelease();
      v12 = sub_20BF10B98();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      *(v1 + 152) = v12;
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BF10438(void *a1, uint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = v2[17];
  if (v12)
  {
    v13 = v2[18];
    if (v13)
    {
      v14 = v2[19];
      if (v14)
      {
        v15 = v2[21];
        if (v15)
        {
          if (v2[22])
          {
            v29 = v2[22];
            v30 = v15;
            v16 = v2[20];
            if (v16)
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v17 = [a1 renderCommandEncoderWithDescriptor_];
              if (v17)
              {
                v18 = v17;
                v19 = sub_20C13C914();
                [v18 setLabel_];

                [v18 setRenderPipelineState_];
                [v18 setVertexBuffer:v29 offset:0 atIndex:0];
                [v18 setVertexBytes:a2 length:384 atIndex:1];
                [v18 setFragmentBytes:a2 length:384 atIndex:1];
                [v18 setFragmentTexture:v2[4] atIndex:0];
                [v18 drawIndexedPrimitives:3 indexCount:*(v2[14] + 16) indexType:0 indexBuffer:v13 indexBufferOffset:0 instanceCount:3];
                [v18 endEncoding];
                v20 = v2[16];
                if (v20)
                {
                  v21 = v20;
                  [v21 encodeToCommandBuffer:a1 sourceTexture:v30 destinationTexture:v12];
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                return swift_unknownObjectRelease();
              }
            }

            else
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
            }

            sub_20C13B4F4();
            v26 = sub_20C13BB74();
            v27 = sub_20C13D1D4();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&dword_20B517000, v26, v27, "[ArtworkRenderer] Failed to create command encoder", v28, 2u);
              MEMORY[0x20F2F6A40](v28, -1, -1);
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return (*(v6 + 8))(v11, v5);
          }
        }
      }
    }
  }

  sub_20C13B4F4();
  v22 = sub_20C13BB74();
  v23 = sub_20C13D1D4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_20B517000, v22, v23, "[ArtworkRenderer] Failed to encode rotating artwork. Required value missing", v24, 2u);
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_20BF108AC(void *a1)
{
  v2 = *(v1 + 56);
  if (v2 > 0.0)
  {
    v3 = *(v1 + 64);
    if (v3 > 0.0)
    {
      if (v2 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v2 < 9.22337204e18)
      {
        if (*&v2 >> 52 <= 0x7FEuLL && *&v3 >> 52 <= 0x7FEuLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 48) width:v2 / 4 height:v3 / 4 mipmapped:0];
              [v5 setStorageMode_];
              [v5 setUsage_];
              *(v1 + 136) = [a1 newTextureWithDescriptor_];
              swift_unknownObjectRelease();
              *(v1 + 168) = [a1 newTextureWithDescriptor_];
              swift_unknownObjectRelease();
              v6 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
              v7 = [v6 colorAttachments];
              v8 = [v7 objectAtIndexedSubscript_];

              if (v8)
              {
                v9 = *(v1 + 168);
                v10 = v8;
                [v10 setTexture_];
                [v10 setLoadAction_];

                [v10 setClearColor_];
                v11 = *(v1 + 160);
                *(v1 + 160) = v6;

                return;
              }

LABEL_21:
              sub_20C13DE24();
              __break(1u);
              return;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  *(v1 + 136) = 0;
  swift_unknownObjectRelease();
  *(v1 + 168) = 0;

  swift_unknownObjectRelease();
}

id sub_20BF10B98()
{
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 80);
  v6 = sub_20BF100EC();
  v24 = 0;
  v7 = [v5 newRenderPipelineStateWithDescriptor:v6 error:&v24];

  v8 = v24;
  if (!v7)
  {
    v9 = v8;
    v10 = sub_20C132A44();

    swift_willThrow();
    v24 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v11 = sub_20B78B2B4();
    swift_dynamicCast();
    v12 = v23[1];
    sub_20C13B4F4();
    v13 = v12;
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[0] = v17;
      *v16 = 136315138;
      v23[0] = v13;
      v18 = sub_20B78B300();
      v19 = MEMORY[0x20F2F5860](v11, v18);
      v21 = sub_20B51E694(v19, v20, v25);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_20B517000, v14, v15, "[ArtworkRenderer] Failed to create pipeline state with error %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x20F2F6A40](v17, -1, -1);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);

    return 0;
  }

  return v7;
}

void sub_20BF10E3C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40) / (4.0 / v1);
  v3 = *(v0 + 128);
  if (!v3 || ([v3 sigma], v2 != v4))
  {
    v5 = *(v0 + 80);
    v6 = objc_allocWithZone(MEMORY[0x277CD7520]);
    *&v7 = v2;
    v8 = [v6 initWithDevice:v5 sigma:v7];
    v9 = *(v0 + 128);
    *(v0 + 128) = v8;
  }
}

uint64_t sub_20BF10EE0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 96);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_20BF10F78()
{
  sub_20BF10EE0();

  return swift_deallocClassInstance();
}

uint64_t sub_20BF10FF8()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController____lazy_storage___appOpeningSequence;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController____lazy_storage___appOpeningSequence);
  if (v2)
  {

    return v2;
  }

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_frames);
  v2 = v3 >> 62;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 41)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

  result = sub_20C13DB34();
  if ((result & 0x8000000000000000) == 0)
  {
    if (sub_20C13DB34() >= 41)
    {
LABEL_5:
      if ((v3 & 0xC000000000000001) != 0)
      {
        sub_20B51C88C(0, &qword_27C7626E8);

        v4 = 0;
        do
        {
          v5 = v4 + 1;
          sub_20C13DCB4();
          v4 = v5;
        }

        while (v5 != 41);
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      else
      {

        if (!v2)
        {
LABEL_9:
          v6 = 0;
          v7 = v3 & 0xFFFFFFFFFFFFFF8;
          v8 = v7 + 32;
          v9 = 83;
LABEL_13:
          sub_20C13E014();
          swift_unknownObjectRetain_n();
          v14 = swift_dynamicCastClass();
          if (!v14)
          {
            swift_unknownObjectRelease();
            v14 = MEMORY[0x277D84F90];
          }

          v15 = *(v14 + 16);

          if (__OFSUB__(v9 >> 1, v6))
          {
            __break(1u);
          }

          else if (v15 == (v9 >> 1) - v6)
          {
            v2 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v2)
            {
LABEL_20:
              if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
              {
                v16 = *(v2 + 16);
LABEL_23:
                *v1 = v2;
                *(v1 + 8) = v16 / 60.0;

                return v2;
              }

LABEL_28:
              v16 = sub_20C13DB34();
              goto LABEL_23;
            }

            v2 = MEMORY[0x277D84F90];
LABEL_19:
            swift_unknownObjectRelease();
            goto LABEL_20;
          }

          swift_unknownObjectRelease();
LABEL_12:
          sub_20BCC8420(v7, v8, v6, v9);
          v2 = v13;
          goto LABEL_19;
        }
      }

      v7 = sub_20C13DE54();
      v8 = v10;
      v6 = v11;
      v9 = v12;
      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BF1123C()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController____lazy_storage___pairingSuccessfulSequence;
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController____lazy_storage___pairingSuccessfulSequence))
  {
    v0 = *(v0 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController____lazy_storage___pairingSuccessfulSequence);
LABEL_23:

    return v0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_frames);
  v3 = v2 >> 62;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < 0x28)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v4 >= 41)
    {
      goto LABEL_6;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v2 < 0)
  {
    v0 = *(v0 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_frames);
  }

  else
  {
    v0 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_20C13DB34();
  if (result >= 40)
  {
    if (sub_20C13DB34() >= 41)
    {
LABEL_6:
      if ((v2 & 0xC000000000000001) != 0)
      {
        sub_20B51C88C(0, &qword_27C7626E8);

        sub_20C13DCB4();
        if (!v3)
        {
LABEL_8:
          v5 = v2 & 0xFFFFFFFFFFFFFF8;
          v6 = v5 + 32;
          v7 = 40;
          v8 = 83;
LABEL_12:
          sub_20C13E014();
          swift_unknownObjectRetain_n();
          v13 = swift_dynamicCastClass();
          if (!v13)
          {
            swift_unknownObjectRelease();
            v13 = MEMORY[0x277D84F90];
          }

          v14 = *(v13 + 16);

          if (__OFSUB__(v8 >> 1, v7))
          {
            __break(1u);
          }

          else if (v14 == (v8 >> 1) - v7)
          {
            v0 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v0)
            {
LABEL_19:
              if ((v0 & 0x8000000000000000) == 0 && (v0 & 0x4000000000000000) == 0)
              {
                v15 = *(v0 + 16);
LABEL_22:
                *v1 = v0;
                *(v1 + 8) = v15 / 60.0;

                goto LABEL_23;
              }

LABEL_31:
              v15 = sub_20C13DB34();
              goto LABEL_22;
            }

            v0 = MEMORY[0x277D84F90];
LABEL_18:
            swift_unknownObjectRelease();
            goto LABEL_19;
          }

          swift_unknownObjectRelease();
LABEL_11:
          sub_20BCC8420(v5, v6, v7, v8);
          v0 = v12;
          goto LABEL_18;
        }
      }

      else
      {

        if (!v3)
        {
          goto LABEL_8;
        }
      }

      v5 = sub_20C13DE54();
      v6 = v9;
      v7 = v10;
      v8 = v11;
      if ((v11 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

id sub_20BF114AC()
{
  v39.receiver = v0;
  v39.super_class = type metadata accessor for RemoteBrowsingGuestPairingViewController();
  objc_msgSendSuper2(&v39, sel_viewDidLoad);
  v1 = sub_20C13C914();
  [v0 setTitle_];

  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationImageView];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_frames];
  if (v3 >> 62)
  {
    result = sub_20C13DB34();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F2F5430](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;
LABEL_9:
  [v2 setImage_];

  [v2 setAnimationRepeatCount_];
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  v8 = *&v0[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_indicatorView];
  [result addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  v10 = *&v0[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_stackView];
  [result addSubview_];

  [v10 addArrangedSubview_];
  [v10 setCustomSpacing:v2 afterView:40.0];
  v11 = *&v0[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_titleLabel];
  [v10 addArrangedSubview_];
  [v10 setCustomSpacing:v11 afterView:25.0];
  v12 = *&v0[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_subtitleLabel];
  [v10 addArrangedSubview_];
  v37 = v12;
  [v10 setCustomSpacing:v12 afterView:30.0];
  v38 = *&v0[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_captionLabel];
  [v10 addArrangedSubview_];
  [v8 setAlpha_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C150050;
  v14 = [v10 centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = result;
  v16 = [result centerXAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v13 + 32) = v17;
  v18 = [v10 centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = result;
  v20 = [result centerYAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v13 + 40) = v21;
  v22 = [v10 widthAnchor];
  v23 = [v11 widthAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v13 + 48) = v24;
  v25 = [v8 bottomAnchor];
  v26 = [v2 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v13 + 56) = v27;
  v28 = [v8 centerXAnchor];
  result = [v0 view];
  if (result)
  {
    v29 = result;
    v30 = objc_opt_self();
    v31 = [v29 centerXAnchor];

    v32 = [v28 constraintEqualToAnchor_];
    *(v13 + 64) = v32;
    sub_20B51C88C(0, &qword_281100500);
    v33 = sub_20C13CC54();

    [v30 activateConstraints_];

    v34 = sub_20C13C914();

    [v11 setText_];

    v35 = sub_20C13C914();

    [v37 setText_];

    v36 = sub_20C13C914();

    [v38 setText_];

    return sub_20BF11AA0();
  }

LABEL_21:
  __break(1u);
  return result;
}

id sub_20BF11AA0()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  [*(v1 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationImageView) setAlpha_];
  [*(v1 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_indicatorView) setAlpha_];
  [*(v1 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_titleLabel) setAlpha_];
  [*(v1 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_subtitleLabel) setAlpha_];
  return [*(v1 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_captionLabel) setAlpha_];
}

uint64_t sub_20BF11CCC(char a1)
{
  v3 = sub_20C1390B4();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x28223BE20](v3);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v34 = sub_20C1333A4();
  v17 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  v23 = type metadata accessor for RemoteBrowsingGuestPairingViewController();
  v35 = v1;
  v40.receiver = v1;
  v40.super_class = v23;
  objc_msgSendSuper2(&v40, sel_viewDidAppear_, a1 & 1);
  sub_20B8F2840();
  v24 = *MEMORY[0x277D517F8];
  v25 = sub_20C1352F4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v16, v24, v25);
  (*(v26 + 56))(v16, 0, 1, v25);
  v27 = sub_20C132C14();
  (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  v28 = sub_20C135ED4();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  v29 = sub_20C136914();
  (*(*(v29 - 8) + 56))(v36, 1, 1, v29);
  sub_20C133384();
  v30 = v34;
  (*(v17 + 16))(v19, v22, v34);
  v31 = v37;
  sub_20C1390C4();
  swift_getObjectType();
  sub_20BF13FF8(&qword_281103B40, MEMORY[0x277D54270]);
  v32 = v38;
  sub_20C13A764();
  (*(v39 + 8))(v31, v32);
  (*(v17 + 8))(v22, v30);
  return sub_20BF12698(2);
}

void sub_20BF12244(char a1)
{
  v3 = sub_20C1393E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteBrowsingGuestPairingViewController();
  v15.receiver = v1;
  v15.super_class = v7;
  objc_msgSendSuper2(&v15, sel_viewWillDisappear_, a1 & 1);
  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v11 = sub_20C13CC74();

    v14 = v1;
    MEMORY[0x28223BE20](v12);
    *(&v13 - 2) = &v14;
    LOBYTE(v10) = sub_20B79AEEC(sub_20B5978BC, (&v13 - 4), v11);

    if (v10)
    {
    }

    else
    {
      swift_getObjectType();
      sub_20C1393D4();
      sub_20BF13FF8(&unk_281103B20, MEMORY[0x277D54388]);
      sub_20C13A764();

      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_20BF124CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v20 = sub_20B5E4150;
  v21 = v12;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_20B7B548C;
  v19 = &block_descriptor_151;
  v13 = _Block_copy(&v16);

  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B5D9B44;
  *(v14 + 24) = v10;
  v20 = sub_20B76BA10;
  v21 = v14;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_20B5E3874;
  v19 = &block_descriptor_78_6;
  v15 = _Block_copy(&v16);

  [v11 animateWithDuration:v13 animations:v15 completion:a5];
  _Block_release(v15);
  _Block_release(v13);
}

uint64_t sub_20BF12698(uint64_t result)
{
  v2 = (v1 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationState);
  if (!*(v1 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationState))
  {
    goto LABEL_9;
  }

  if (*(v1 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationState) == 1)
  {
    if (result != 2)
    {
      goto LABEL_9;
    }

LABEL_7:
    *v2 = 2;
    return sub_20B8F309C();
  }

  if (result == 1)
  {
    *v2 = 1;
    v2 = (v1 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationState);
    if (*(v1 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationState) == 1)
    {
      goto LABEL_7;
    }

    result = 2;
  }

LABEL_9:
  *v2 = result;
  return result;
}

void sub_20BF12728()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20BF11AA0();
  }
}

void sub_20BF1277C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_titleLabel);

    [v2 setAlpha_];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_titleLabel);

    v6 = sub_20C13C914();
    [v5 setText_];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_indicatorView);

    [v9 startAnimating];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_indicatorView);

    [v12 setAlpha_];
  }
}

void sub_20BF12918()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_titleLabel);

    [v2 setAlpha_];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_titleLabel);

    v6 = sub_20C13C914();
    [v5 setText_];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_indicatorView);

    [v9 stopAnimating];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationImageView);

    [v12 setAlpha_];
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = *(v13 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_subtitleLabel);

    [v15 setAlpha_];
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_captionLabel);

    [v18 setAlpha_];
  }
}

id sub_20BF12B88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteBrowsingGuestPairingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20BF12CE0()
{
  result = qword_27C770670;
  if (!qword_27C770670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770670);
  }

  return result;
}

uint64_t sub_20BF12D34(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v61 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v67 = *(v5 - 8);
  v6 = v67[8];
  MEMORY[0x28223BE20](v5);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v65 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v63 = &v58 - v15;
  MEMORY[0x28223BE20](v16);
  v64 = &v58 - v17;
  v18 = sub_20C13BB84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v19 + 8))(v21, v18);
  v22 = swift_allocObject();
  v60 = v3;
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = 0x3FD0000000000000;
  v23[3] = sub_20BF14AF0;
  v23[4] = v22;
  sub_20C137C94();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = v61;
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = a2;
  v27 = swift_allocObject();
  v27[2] = 0x3FD0000000000000;
  v27[3] = sub_20BF14B04;
  v27[4] = v25;

  v28 = v66;
  sub_20C137C94();
  v29 = v67;
  v30 = v67[2];
  v31 = v9;
  v32 = v9;
  v33 = v5;
  v30(v32, v28, v5);
  v61 = v30;
  v34 = v29;
  v35 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v36 = swift_allocObject();
  v37 = v34[4];
  v59 = v35;
  v37(v36 + v35, v31, v33);
  v38 = v37;
  v58 = v37;
  v39 = v62;
  v30(v62, v65, v33);
  v40 = (v35 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v38(v41 + v35, v39, v33);
  v42 = (v41 + v40);
  *v42 = sub_20BB08930;
  v42[1] = v36;
  v43 = v63;
  sub_20C137C94();
  v44 = v67[1];
  ++v67;
  v62 = v44;
  (v44)(v66, v33);
  v45 = v65;
  (v44)(v65, v33);
  v46 = swift_allocObject();
  v47 = v60;
  *(v46 + 16) = v60;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_20BF14B10;
  *(v48 + 24) = v46;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_20B5DF3B8;
  *(v49 + 24) = v48;
  v61(v45, v43, v33);
  v50 = swift_allocObject();
  v58(v50 + v59, v45, v33);
  v51 = (v50 + v40);
  *v51 = sub_20B5DF3D4;
  v51[1] = v49;
  v52 = v47;
  v53 = v64;
  sub_20C137C94();
  v54 = v62;
  (v62)(v43, v33);
  v55 = sub_20C137CB4();
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  v55(sub_20B52347C, v56);

  return v54(v53, v33);
}

uint64_t sub_20BF133BC(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v47 = *(v43 - 8);
  v3 = v47[8];
  MEMORY[0x28223BE20](v43);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - v5;
  v41 = &v41 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v10);
  v48 = &v41 - v11;
  MEMORY[0x28223BE20](v12);
  v46 = &v41 - v13;
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v15 + 8))(v17, v14);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = 0x3FD0000000000000;
  v19[3] = sub_20BF14BE4;
  v19[4] = v18;
  sub_20C137C94();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v22 = v44;
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = a2;
  v23 = swift_allocObject();
  v23[2] = 0x3FD0000000000000;
  v23[3] = sub_20BF14B40;
  v23[4] = v21;

  v42 = v9;
  sub_20C137C94();
  v24 = v47;
  v25 = v47[2];
  v26 = v6;
  v27 = v43;
  v25(v26, v9, v43);
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = v28 + v3;
  v30 = swift_allocObject();
  v31 = v24[4];
  v31(v30 + v28, v41, v27);
  v32 = v45;
  v25(v45, v48, v27);
  v33 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v31(v34 + v28, v32, v27);
  v35 = (v34 + v33);
  *v35 = sub_20BF14BF0;
  v35[1] = v30;
  v36 = v46;
  sub_20C137C94();
  v37 = v47[1];
  v37(v42, v27);
  v37(v48, v27);
  v38 = sub_20C137CB4();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  v38(sub_20B5DF6DC, v39);

  return (v37)(v36, v27);
}

uint64_t sub_20BF138C8(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v61 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v67 = *(v5 - 8);
  v6 = v67[8];
  MEMORY[0x28223BE20](v5);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v65 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v63 = &v58 - v15;
  MEMORY[0x28223BE20](v16);
  v64 = &v58 - v17;
  v18 = sub_20C13BB84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v19 + 8))(v21, v18);
  v22 = swift_allocObject();
  v60 = v3;
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = 0x3FD0000000000000;
  v23[3] = sub_20BF14BE4;
  v23[4] = v22;
  sub_20C137C94();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = v61;
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = a2;
  v27 = swift_allocObject();
  v27[2] = 0x3FD0000000000000;
  v27[3] = sub_20BF14BF4;
  v27[4] = v25;

  v28 = v66;
  sub_20C137C94();
  v29 = v67;
  v30 = v67[2];
  v31 = v9;
  v32 = v9;
  v33 = v5;
  v30(v32, v28, v5);
  v61 = v30;
  v34 = v29;
  v35 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v36 = swift_allocObject();
  v37 = v34[4];
  v59 = v35;
  v37(v36 + v35, v31, v33);
  v38 = v37;
  v58 = v37;
  v39 = v62;
  v30(v62, v65, v33);
  v40 = (v35 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v38(v41 + v35, v39, v33);
  v42 = (v41 + v40);
  *v42 = sub_20BF14BF0;
  v42[1] = v36;
  v43 = v63;
  sub_20C137C94();
  v44 = v67[1];
  ++v67;
  v62 = v44;
  (v44)(v66, v33);
  v45 = v65;
  (v44)(v65, v33);
  v46 = swift_allocObject();
  v47 = v60;
  *(v46 + 16) = v60;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_20BF14B38;
  *(v48 + 24) = v46;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_20B622D08;
  *(v49 + 24) = v48;
  v61(v45, v43, v33);
  v50 = swift_allocObject();
  v58(v50 + v59, v45, v33);
  v51 = (v50 + v40);
  *v51 = sub_20B66A8B4;
  v51[1] = v49;
  v52 = v47;
  v53 = v64;
  sub_20C137C94();
  v54 = v62;
  (v62)(v43, v33);
  v55 = sub_20C137CB4();
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  v55(sub_20B5DF6DC, v56);

  return v54(v53, v33);
}

uint64_t sub_20BF13F50(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_presenter);
  if (v1[22])
  {
    __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  v2 = sub_20BF1123C();
  sub_20B71D310(v2, v3);
}

uint64_t sub_20BF13FF8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_20BF14040(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_layout];
  *v2 = xmmword_20C183FE0;
  v2[1] = xmmword_20C183FF0;
  v3 = &v1[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_frameMarkers];
  *v3 = 0x404E000000000000;
  v3[1] = 40;
  v4 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationImageView;
  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = v1;
  *&v1[v4] = v5;
  v6 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  v7 = objc_opt_self();
  for (i = 0; i != 41; ++i)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20C14F980;
    *(v9 + 56) = MEMORY[0x277D83B88];
    *(v9 + 64) = MEMORY[0x277D83C10];
    *(v9 + 32) = i;
    v10 = sub_20C13C9A4();
    v12 = v11;
    sub_20C13DC94();

    v37 = 0xD000000000000022;
    v38 = 0x800000020C1B72B0;
    MEMORY[0x20F2F4230](v10, v12);

    v13 = sub_20C13C914();

    v14 = [v7 imageNamed_];

    if (v14)
    {
      MEMORY[0x20F2F43B0]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v6 = v39;
    }
  }

  *&v1[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_frames] = v6;
  v15 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_indicatorView;
  v16 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v34[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v19 = objc_opt_self();
  v20 = [v19 preferredFontForTextStyle_];
  [v18 setFont_];

  [v18 setTextAlignment_];
  [v18 &selRef_count + 2];
  *&v34[v17] = v18;
  v21 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_subtitleLabel;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v23 = [v19 preferredFontForTextStyle_];
  [v22 setFont_];

  [v22 setLineBreakMode_];
  [v22 setNumberOfLines_];
  [v22 setTextAlignment_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v34[v21] = v22;
  v24 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_captionLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v26 = [v19 preferredFontForTextStyle_];
  [v25 setFont_];

  [v25 setLineBreakMode_];
  [v25 setNumberOfLines_];
  [v25 setTextAlignment_];
  v27 = v25;
  [v27 setAlpha_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v34[v24] = v27;
  v28 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_stackView;
  v29 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v29 setAxis_];
  [v29 setAlignment_];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v34[v28] = v29;
  v30 = &v34[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController____lazy_storage___appOpeningSequence];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v34[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController____lazy_storage___pairingSuccessfulSequence];
  *v31 = 0;
  v31[1] = 0;
  *&v34[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_presenter] = a1;
  v34[OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationState] = 0;
  v36.receiver = v34;
  v36.super_class = type metadata accessor for RemoteBrowsingGuestPairingViewController();

  v32 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, 0, 0);
  *(a1 + 24) = &off_2822F5FB8;
  swift_unknownObjectWeakAssign();
  return v32;
}

void sub_20BF145B8()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_layout);
  *v1 = xmmword_20C183FE0;
  v1[1] = xmmword_20C183FF0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_frameMarkers);
  *v2 = 0x404E000000000000;
  v2[1] = 40;
  v3 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationImageView;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = v0;
  *(v0 + v3) = v4;
  v5 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v6 = objc_opt_self();
  v7 = 0;
  v8 = MEMORY[0x277D83C10];
  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20C14F980;
    *(v9 + 56) = MEMORY[0x277D83B88];
    *(v9 + 64) = v8;
    *(v9 + 32) = v7;
    v10 = sub_20C13C9A4();
    v12 = v11;
    sub_20C13DC94();

    MEMORY[0x20F2F4230](v10, v12);

    v13 = sub_20C13C914();

    v14 = [v6 imageNamed_];

    if (v14)
    {
      MEMORY[0x20F2F43B0]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v5 = v33;
    }

    ++v7;
  }

  while (v7 != 41);
  *(v0 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_frames) = v5;
  v15 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_indicatorView;
  v16 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v32 + v15) = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v19 = objc_opt_self();
  v20 = [v19 preferredFontForTextStyle_];
  [v18 setFont_];

  [v18 setTextAlignment_];
  [v18 &selRef_count + 2];
  *(v32 + v17) = v18;
  v21 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_subtitleLabel;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v23 = [v19 preferredFontForTextStyle_];
  [v22 setFont_];

  [v22 setLineBreakMode_];
  [v22 setNumberOfLines_];
  [v22 setTextAlignment_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v32 + v21) = v22;
  v24 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_captionLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v26 = [v19 preferredFontForTextStyle_];
  [v25 setFont_];

  [v25 setLineBreakMode_];
  [v25 setNumberOfLines_];
  [v25 setTextAlignment_];
  v27 = v25;
  [v27 setAlpha_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v32 + v24) = v27;
  v28 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_stackView;
  v29 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v29 setAxis_];
  [v29 setAlignment_];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v32 + v28) = v29;
  v30 = (v32 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController____lazy_storage___appOpeningSequence);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v32 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController____lazy_storage___pairingSuccessfulSequence);
  *v31 = 0;
  v31[1] = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t objectdestroy_46Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20BF14C20@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 344);
  v5 = *(v3 + 352);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20BF1F534;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20B584050(v4);
}

uint64_t sub_20BF14CB4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20BF1F4F4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 344);
  *(v7 + 344) = v6;
  *(v7 + 352) = v5;
  sub_20B584050(v3);
  return sub_20B583ECC(v8);
}

uint64_t sub_20BF14D70()
{
  swift_beginAccess();
  v1 = *(v0 + 344);
  sub_20B584050(v1);
  return v1;
}

uint64_t sub_20BF14DC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 344);
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
  return sub_20B583ECC(v5);
}

uint64_t sub_20BF14E64@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 360);
  v5 = *(v3 + 368);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20B5E0E90;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20B584050(v4);
}

uint64_t sub_20BF14EF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20BF1EF2C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 360);
  *(v7 + 360) = v6;
  *(v7 + 368) = v5;
  sub_20B584050(v3);
  return sub_20B583ECC(v8);
}

uint64_t sub_20BF14FB4()
{
  swift_beginAccess();
  v1 = *(v0 + 360);
  sub_20B584050(v1);
  return v1;
}

uint64_t sub_20BF15004(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 360);
  *(v2 + 360) = a1;
  *(v2 + 368) = a2;
  return sub_20B583ECC(v5);
}

uint64_t TVSceneCoordinator.__allocating_init(dependencies:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TVSceneCoordinator.init(dependencies:)(a1);
  return v2;
}

void *TVSceneCoordinator.init(dependencies:)(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  *(v1 + 328) = 0;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0;
  *(v1 + 24) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *(v1 + 16) = *&v74[0];
  *&v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v4 = *(&v74[0] + 1);
  *(v1 + 32) = *&v74[0];
  *(v1 + 40) = v4;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v1 + 304) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DE0);
  sub_20C133AA4();
  sub_20B51C710(v74, v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CE8);
  sub_20C133AA4();
  sub_20B51C710(v74, v1 + 144);
  v5 = type metadata accessor for RemoteBrowsingSubscriptionObserver();
  v6 = v2[21];
  v7 = v2[22];
  v8 = __swift_project_boxed_opaque_existential_1(v2 + 18, v6);
  v9 = v2[4];
  v10 = v2[5];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v73[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = *(*(v7 + 8) + 8);
  swift_unknownObjectRetain();
  v16 = sub_20C04E468(v13, v9, v10, v5, v6, v15);
  v2[26] = v5;
  v2[27] = &off_282302DA0;
  v2[23] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
  sub_20C133AA4();
  sub_20B51C710(v74, (v2 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763D20);
  sub_20C133AA4();
  sub_20B51C710(v74, (v2 + 33));
  v17 = type metadata accessor for MetricSceneLifecycleTracker();
  swift_allocObject();

  v18 = MetricSceneLifecycleTracker.init(dependencies:)();
  v2[14] = v17;
  v2[15] = &protocol witness table for MetricSceneLifecycleTracker;
  v2[11] = v18;
  v19 = objc_allocWithZone(type metadata accessor for TVBrowsingNavigationController());

  v2[47] = TVBrowsingNavigationController.init(dependencies:)(v20);
  type metadata accessor for TVNavigationRouterInterceptionPresenter(0);
  v21 = swift_allocObject();
  v22 = v21 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  *(v21 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  swift_storeEnumTagMultiPayload();
  v23 = objc_allocWithZone(type metadata accessor for NavigationInterceptionWindow());

  v2[39] = NavigationInterceptionWindow.init(presenter:)(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770680);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20C15C310;
  v26 = type metadata accessor for WelcomeAcknowledgementInterceptor(0);
  swift_allocObject();

  v28 = sub_20BA8DFC0(v27);
  *(v25 + 56) = v26;
  v29 = sub_20BF1E1B8(&qword_27C770688, type metadata accessor for WelcomeAcknowledgementInterceptor);
  *(v25 + 64) = v29;
  *(v25 + 32) = v28;
  v30 = type metadata accessor for MetricEnterEventInterceptor();
  v31 = swift_allocObject();

  sub_20C133AA4();
  *(v31 + 16) = v74[0];
  sub_20C133AA4();

  *(v31 + 32) = v74[0];
  *(v25 + 96) = v30;
  *(v25 + 104) = sub_20BF1E1B8(&qword_27C770690, type metadata accessor for MetricEnterEventInterceptor);
  *(v25 + 72) = v31;
  v32 = type metadata accessor for RemoteDisplayInterceptor();
  v33 = swift_allocObject();
  *(v33 + 72) = 0u;
  *(v33 + 88) = 0u;
  *(v33 + 16) = a1;
  swift_retain_n();
  sub_20C133AA4();
  sub_20B51C710(v74, v33 + 32);
  v34 = objc_allocWithZone(type metadata accessor for RemoteDisplayPresenter(0));
  v35 = RemoteDisplayPresenter.init(dependencies:)(a1);
  *(v33 + 24) = v35;
  v36 = &v35[OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_display];
  swift_beginAccess();
  *(v36 + 1) = &protocol witness table for RemoteDisplayInterceptor;
  swift_unknownObjectWeakAssign();
  *(v25 + 136) = v32;
  *(v25 + 144) = sub_20BF1E1B8(&qword_27C770698, type metadata accessor for RemoteDisplayInterceptor);
  *(v25 + 112) = v33;
  v37 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor(0);
  swift_allocObject();

  v38 = RemoteBrowsingAuthenticationInterceptor.init(dependencies:)();
  *(v25 + 176) = v37;
  *(v25 + 184) = sub_20BF1E1B8(&unk_27C7706A0, type metadata accessor for RemoteBrowsingAuthenticationInterceptor);
  *(v25 + 152) = v38;
  v39 = type metadata accessor for EngagementRedirectURLInterceptor();
  swift_allocObject();

  v41 = sub_20B8E82A8(v40);

  *(v25 + 216) = v39;
  *(v25 + 224) = sub_20BF1E1B8(&qword_27C773500, type metadata accessor for EngagementRedirectURLInterceptor);
  *(v25 + 192) = v41;
  swift_allocObject();

  v43 = sub_20BA8DFC0(v42);
  *(v25 + 256) = v26;
  *(v25 + 264) = v29;
  *(v25 + 232) = v43;
  v44 = type metadata accessor for AnalyticsConsentInterceptor(0);
  swift_allocObject();

  v46 = sub_20B75C7E0(v45);

  *(v25 + 296) = v44;
  *(v25 + 304) = sub_20BF1E1B8(&qword_27C7706B0, type metadata accessor for AnalyticsConsentInterceptor);
  *(v25 + 272) = v46;
  v47 = type metadata accessor for RemoteBrowsingSiriBeginSessionInterceptor();
  v48 = swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FA0);
  sub_20C133AA4();
  sub_20B51C710(v74, v48 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();

  sub_20B51C710(v74, v48 + 56);
  *(v25 + 336) = v47;
  *(v25 + 344) = sub_20BF1E1B8(&qword_27C7706B8, type metadata accessor for RemoteBrowsingSiriBeginSessionInterceptor);
  *(v25 + 312) = v48;
  started = type metadata accessor for MultiUserStartWorkoutInterceptor(0);
  v50 = objc_allocWithZone(started);

  v52 = sub_20BCB4FCC(v51);

  *(v25 + 376) = started;
  *(v25 + 384) = sub_20BF1E1B8(&unk_27C7706C0, type metadata accessor for MultiUserStartWorkoutInterceptor);
  *(v25 + 352) = v52;
  v53 = type metadata accessor for MetricAccountEventInterceptor();
  v54 = swift_allocObject();
  *(v54 + 16) = a1;

  sub_20C133AA4();
  *(v54 + 24) = v74[0];
  sub_20C133AA4();
  *(v54 + 40) = v74[0];
  *(v25 + 416) = v53;
  *(v25 + 424) = sub_20BF1E1B8(&qword_27C773520, type metadata accessor for MetricAccountEventInterceptor);
  *(v25 + 392) = v54;
  swift_retain_n();
  sub_20C133AA4();
  v72 = v74[0];
  sub_20C133AA4();
  LOBYTE(v52) = v74[0];
  v75 = &type metadata for TVCatalogPageNavigator;
  v76 = &off_2822C80E8;
  v55 = swift_allocObject();
  *(v55 + 16) = a1;
  *(v55 + 24) = v72;
  *(v55 + 40) = v52;
  *&v74[0] = a1;
  *(&v74[0] + 1) = v55;
  type metadata accessor for NavigationRouter(0);
  v56 = swift_allocObject();
  sub_20BF1E4DC(v74, v73);

  v57 = sub_20BF1E538(a1, v21, v25, v73, v56);

  *(v57 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_navigationController + 8) = &protocol witness table for TVBrowsingNavigationController;
  swift_unknownObjectWeakAssign();
  v2[16] = v57;
  v2[17] = &protocol witness table for NavigationRouter;
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = (v57 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_onNavigationRouterIdle);
  v60 = *(v57 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_onNavigationRouterIdle);
  *v59 = sub_20BF1E964;
  v59[1] = v58;

  sub_20B583ECC(v60);

  v61 = v2[39];
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = &v61[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_onRequestApplicationDeactivation];
  v64 = *&v61[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_onRequestApplicationDeactivation];
  *v63 = sub_20BF1E96C;
  v63[1] = v62;
  v65 = v61;

  sub_20B583ECC(v64);

  v66 = v2[39];
  v67 = swift_allocObject();
  swift_weakInit();
  v68 = &v66[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_onRequestApplicationTermination];
  v69 = *&v66[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_onRequestApplicationTermination];
  *v68 = sub_20BF1E974;
  v68[1] = v67;
  v70 = v66;

  sub_20B583ECC(v69);

  swift_getObjectType();
  sub_20C13A654();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v73);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BA1CA68();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v73);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BB2A16C();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v73);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B52E43C();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v73);

  swift_getObjectType();
  sub_20C139454();
  swift_allocObject();
  swift_weakInit();

  sub_20BF1E1B8(&unk_281103B10, MEMORY[0x277D543B0]);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v73);
  sub_20BF1E9F4(v74);

  return v2;
}

void sub_20BF16004()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 376);

    [v1 setNeedsFocusUpdate];
  }
}

uint64_t sub_20BF16078()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 360);
    sub_20B584050(v2);

    if (v2)
    {
      v2(result);
      return sub_20B583ECC(v2);
    }
  }

  return result;
}

uint64_t sub_20BF16110()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 344);
    sub_20B584050(v2);

    if (v2)
    {
      v2(result);
      return sub_20B583ECC(v2);
    }
  }

  return result;
}

uint64_t sub_20BF161A8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_20BF16208()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_20C13B534();
    sub_20C13BB64();
    (*(v8 + 8))(v10, v7);
    *v6 = 1;
    type metadata accessor for NavigationResource();
    swift_storeEnumTagMultiPayload();
    v6[v4[5]] = 1;
    type metadata accessor for NavigationIntent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for NavigationSource();
    swift_storeEnumTagMultiPayload();
    v6[v4[7]] = 0;
    v6[v4[8]] = 2;
    *&v6[v4[9]] = 0;
    v13 = *(v12 + 136);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(v6, ObjectType, v13);
    v15 = sub_20C137CB4();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v15(sub_20B5DF6DC, v16);

    (*(v1 + 8))(v3, v0);
    return sub_20BF1EECC(v6, type metadata accessor for NavigationRequest);
  }

  return result;
}

uint64_t sub_20BF1655C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v20 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v20 - v1;
  v3 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C136084();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_20C13B534();
    sub_20C13BB64();
    (*(v10 + 8))(v12, v9);
    __swift_project_boxed_opaque_existential_1(v14 + 18, v14[21]);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766A10);
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    sub_20C13B1A4();
    sub_20BF1EECC(v8, MEMORY[0x277D525B8]);
    *v5 = 0;
    type metadata accessor for NavigationResource();
    swift_storeEnumTagMultiPayload();
    v5[v3[5]] = 1;
    type metadata accessor for NavigationIntent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for NavigationSource();
    swift_storeEnumTagMultiPayload();
    v5[v3[7]] = 0;
    v5[v3[8]] = 2;
    *&v5[v3[9]] = 0;
    v16 = v14[17];
    ObjectType = swift_getObjectType();
    (*(v16 + 16))(v5, ObjectType, v16);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    v18(sub_20B5DF6DC, v19);

    (*(v20 + 8))(v2, v0);
    return sub_20BF1EECC(v5, type metadata accessor for NavigationRequest);
  }

  return result;
}

uint64_t sub_20BF16984()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_20C13B534();
    sub_20C13BB64();
    (*(v8 + 8))(v10, v7);
    *v6 = 1;
    type metadata accessor for NavigationResource();
    swift_storeEnumTagMultiPayload();
    v6[v4[5]] = 1;
    type metadata accessor for NavigationIntent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for NavigationSource();
    swift_storeEnumTagMultiPayload();
    v6[v4[7]] = 0;
    v6[v4[8]] = 2;
    *&v6[v4[9]] = 0;
    v13 = *(v12 + 136);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(v6, ObjectType, v13);
    v15 = sub_20C137CB4();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v15(sub_20B5DF6DC, v16);

    (*(v1 + 8))(v3, v0);
    return sub_20BF1EECC(v6, type metadata accessor for NavigationRequest);
  }

  return result;
}

uint64_t sub_20BF16CD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 24))(v7, v8);
  v10 = sub_20BEDD834(v9);

  if (v10)
  {
    swift_storeEnumTagMultiPayload();
    TVSceneCoordinator.continueUserActivity(_:source:)(v10, v6, a2);

    return sub_20BF1EECC(v6, type metadata accessor for NavigationSource);
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_20C13DB34();

    if (v14)
    {
LABEL_5:
      v15 = a1[3];
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      v17 = (*(v16 + 8))(v15, v16);
      swift_storeEnumTagMultiPayload();
      TVSceneCoordinator.openURLContexts(_:source:)(v17, v6, a2);

      return sub_20BF1EECC(v6, type metadata accessor for NavigationSource);
    }
  }

  else
  {
    v19 = *(v13 + 16);

    if (v19)
    {
      goto LABEL_5;
    }
  }

  sub_20B5D9BA8();
  v20 = swift_allocError();
  *v21 = 16;
  *(swift_allocObject() + 16) = v20;

  return sub_20C137CA4();
}

uint64_t TVSceneCoordinator.continueUserActivity(_:source:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = a2;
  v68 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v63 = *(v6 - 8);
  *&v64 = v6;
  MEMORY[0x28223BE20](v6);
  v57 = v7;
  v58 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10);
  v60 = v11;
  v61 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = v55 - v13;
  v14 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v14);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13BB84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v55[1] = "showContinueOnDevice(title:)";
  sub_20C13BB64();
  v55[0] = *(v18 + 8);
  (v55[0])(v20, v17);
  __swift_project_boxed_opaque_existential_1((v4 + 264), *(v4 + 288));
  if (sub_20C139164())
  {
    __swift_project_boxed_opaque_existential_1((v3 + 264), *(v3 + 288));
    sub_20C139154();
  }

  v62 = a1;
  v21 = [a1 activityType];
  v22 = sub_20C13C954();
  v24 = v23;

  if (v22 == sub_20C13C954() && v24 == v25)
  {
  }

  else
  {
    v26 = sub_20C13DFF4();

    if ((v26 & 1) == 0)
    {
      sub_20B5D9BA8();
      v53 = swift_allocError();
      *v54 = 10;
      *(swift_allocObject() + 16) = v53;
      return sub_20C137CA4();
    }
  }

  v27 = 2;
  swift_storeEnumTagMultiPayload();
  v28 = _s9SeymourUI16NavigationSourceO2eeoiySbAC_ACtFZ_0(v56, v16);
  sub_20BF1EECC(v16, type metadata accessor for NavigationSource);
  if (v28)
  {
    v27 = 4;
  }

  v29 = *(v4 + 112);
  v30 = *(v4 + 120);
  __swift_project_boxed_opaque_existential_1((v4 + 88), v29);
  (*(v30 + 32))(v29, v30);
  sub_20C13B534();
  sub_20C13BB64();
  (v55[0])(v20, v17);

  v31 = v59;
  sub_20C137C94();
  v32 = swift_allocObject();
  v33 = v62;
  v32[2] = v4;
  v32[3] = v33;
  v32[4] = v27;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BF1EA50;
  *(v34 + 24) = v32;
  v36 = v63;
  v35 = v64;
  v37 = v58;
  (*(v63 + 16))(v58, v31, v64);
  v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v39 = (v57 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v36 + 32))(v40 + v38, v37, v35);
  v41 = (v40 + v39);
  *v41 = sub_20B7F133C;
  v41[1] = v34;
  type metadata accessor for NavigationRequest();

  v42 = v33;
  v43 = v65;
  sub_20C137C94();
  (*(v36 + 8))(v31, v35);
  v44 = swift_allocObject();
  v64 = *(v4 + 128);
  *(v44 + 16) = v64;
  v46 = v66;
  v45 = v67;
  v47 = v61;
  (*(v66 + 16))(v61, v43, v67);
  v48 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v49 = (v60 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  (*(v46 + 32))(v50 + v48, v47, v45);
  v51 = (v50 + v49);
  *v51 = sub_20BF1F50C;
  v51[1] = v44;
  swift_unknownObjectRetain();
  sub_20C137C94();
  return (*(v46 + 8))(v43, v45);
}

void TVSceneCoordinator.openURLContexts(_:source:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v179 = a1;
  v173 = a3;
  v174 = a2;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v158 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v3;
  MEMORY[0x28223BE20](v4);
  v159 = &v139 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v165 = *(v6 - 8);
  v166 = v6;
  MEMORY[0x28223BE20](v6);
  v161 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v7;
  MEMORY[0x28223BE20](v8);
  v164 = &v139 - v9;
  v177 = type metadata accessor for NavigationSource();
  v171 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v156 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v143 = &v139 - v12;
  MEMORY[0x28223BE20](v13);
  v145 = &v139 - v14;
  MEMORY[0x28223BE20](v15);
  v149 = &v139 - v16;
  MEMORY[0x28223BE20](v17);
  v153 = &v139 - v18;
  v142 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v142);
  v140 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v141 = &v139 - v21;
  MEMORY[0x28223BE20](v22);
  v172 = &v139 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800);
  MEMORY[0x28223BE20](v24 - 8);
  v144 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v176 = &v139 - v27;
  v170 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v170);
  v152 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v147 = &v139 - v30;
  MEMORY[0x28223BE20](v31);
  v146 = &v139 - v32;
  MEMORY[0x28223BE20](v33);
  v154 = &v139 - v34;
  v35 = sub_20C132C14();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v151 = &v139 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v139 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v139 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v139 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v139 - v48;
  v50 = sub_20C13BB84();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v148 = &v139 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v139 - v54;
  sub_20C13B534();
  v155 = "showContinueOnDevice(title:)";
  sub_20C13BB64();
  v167 = *(v51 + 8);
  v168 = v51 + 8;
  v169 = v50;
  v167(v55, v50);
  v56 = v179;
  sub_20BF1C0F0(v179);
  sub_20BF1E200(v56);
  v175 = v57;
  if (v57)
  {
    v58 = [v57 URL];
    sub_20C132B94();

    v59 = *(v36 + 32);
    v59(v49, v46, v35);
    v150 = v36;
    v60 = *(v36 + 16);
    (v60)(v43, v49, v35);
    v61 = v176;
    sub_20BF1EBA8(v174, v176, type metadata accessor for NavigationSource);
    v62 = v61;
    v63 = v177;
    (*(v171 + 56))(v62, 0, 1, v177);
    (v60)(v40, v43, v35);
    sub_20BBD6CD8(v40, v172);
    *&v179 = v49;
    v92 = v151;
    v174 = v43;
    v165 = v60;
    v166 = v36 + 16;
    (v60)(v151, v43, v35);
    v93 = type metadata accessor for NavigationSharingURLInfo();
    v94 = v150;
    v95 = v153;
    (*(v150 + 56))(v153 + *(v93 + 20), 1, 1, v35);
    v59(v95, v92, v35);
    v96 = (v95 + *(v93 + 24));
    *v96 = 0;
    v96[1] = 0;
    swift_storeEnumTagMultiPayload();
    v97 = v176;
    v98 = v144;
    sub_20B610B00(v176, v144);
    v99 = *(v171 + 48);
    v100 = v99(v98, 1, v63);
    if (v100 == 1)
    {
      v101 = v149;
      sub_20BF1EBA8(v95, v149, type metadata accessor for NavigationSource);
      v102 = v99(v98, 1, v63) == 1;
      v103 = v170;
      v104 = v152;
      v105 = v98;
      v106 = v147;
      v107 = v172;
      v108 = v145;
      if (!v102)
      {
        sub_20B520158(v105, &unk_27C767800);
      }
    }

    else
    {
      v101 = v149;
      sub_20BF1EC10(v98, v149, type metadata accessor for NavigationSource);
      v103 = v170;
      v104 = v152;
      v106 = v147;
      v107 = v172;
      v108 = v145;
    }

    sub_20BF1EBA8(v101, v108, type metadata accessor for NavigationSource);
    if (swift_getEnumCaseMultiPayload())
    {
      v109 = v35;
      v110 = v94;
      v111 = type metadata accessor for NavigationSource;
    }

    else
    {
      sub_20BF1EECC(v108, type metadata accessor for NavigationSharingURLInfo);
      v108 = v141;
      sub_20BF1EBA8(v107, v141, type metadata accessor for NavigationResource);
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        sub_20BF1EECC(v153, type metadata accessor for NavigationSource);
        sub_20B520158(v97, &unk_27C767800);
        v112 = *(v94 + 8);
        v112(v174, v35);
        sub_20BF1EC10(v107, v106, type metadata accessor for NavigationResource);
        *(v106 + v103[5]) = 0;
        type metadata accessor for NavigationIntent();
        v113 = 2;
        swift_storeEnumTagMultiPayload();
LABEL_24:
        sub_20BF1EC10(v101, v106 + v103[6], type metadata accessor for NavigationSource);
        *(v106 + v103[7]) = 2;
        *(v106 + v103[8]) = v113;
        *(v106 + v103[9]) = 0;
        v123 = v146;
        sub_20BF1EC10(v106, v146, type metadata accessor for NavigationRequest);
        v124 = v123;
        v125 = v154;
        sub_20BF1EC10(v124, v154, type metadata accessor for NavigationRequest);
        v126 = v148;
        sub_20C13B534();
        sub_20BF1EBA8(v125, v104, type metadata accessor for NavigationRequest);
        v127 = sub_20C13BB74();
        v128 = sub_20C13D1F4();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v180 = v130;
          *v129 = 136446210;
          v131 = NavigationRequest.description.getter();
          v132 = v104;
          v134 = v133;
          sub_20BF1EECC(v132, type metadata accessor for NavigationRequest);
          v135 = sub_20B51E694(v131, v134, &v180);

          *(v129 + 4) = v135;
          _os_log_impl(&dword_20B517000, v127, v128, "Starting navigation to airplay request: %{public}s", v129, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v130);
          MEMORY[0x20F2F6A40](v130, -1, -1);
          MEMORY[0x20F2F6A40](v129, -1, -1);
        }

        else
        {

          sub_20BF1EECC(v104, type metadata accessor for NavigationRequest);
        }

        v167(v126, v169);
        v136 = *(v178 + 136);
        ObjectType = swift_getObjectType();
        v138 = v154;
        (*(v136 + 16))(v154, ObjectType, v136);

        sub_20BF1EECC(v138, type metadata accessor for NavigationRequest);
        v112(v179, v35);
        return;
      }

      v109 = v35;
      v110 = v94;
      v111 = type metadata accessor for NavigationResource;
    }

    sub_20BF1EECC(v108, v111);
    v114 = v143;
    sub_20BF1EBA8(v101, v143, type metadata accessor for NavigationSource);
    if (swift_getEnumCaseMultiPayload())
    {
      v115 = type metadata accessor for NavigationSource;
      v116 = v114;
    }

    else
    {
      sub_20BF1EECC(v114, type metadata accessor for NavigationSharingURLInfo);
      v117 = v140;
      sub_20BF1EBA8(v107, v140, type metadata accessor for NavigationResource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20BF1EECC(v153, type metadata accessor for NavigationSource);
        sub_20B520158(v97, &unk_27C767800);
        v112 = *(v110 + 8);
        v35 = v109;
        v112(v174, v109);
        v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0) + 48);
        v119 = sub_20C1388F4();
        (*(*(v119 - 8) + 8))(v117 + v118, v119);
        v112(v117, v109);
        sub_20BF1EC10(v172, v106, type metadata accessor for NavigationResource);
        *(v106 + v103[5]) = 1;
        type metadata accessor for NavigationIntent();
        swift_storeEnumTagMultiPayload();
        v113 = 2;
LABEL_23:
        v104 = v152;
        goto LABEL_24;
      }

      v115 = type metadata accessor for NavigationResource;
      v116 = v117;
    }

    sub_20BF1EECC(v116, v115);
    v120 = v110;
    sub_20BF1EBA8(v107, v106, type metadata accessor for NavigationResource);
    v121 = v151;
    v122 = v174;
    v35 = v109;
    (v165)(v151, v174, v109);
    sub_20BB7F2E8(v121, 1, v106 + v103[5]);
    sub_20BF1EECC(v153, type metadata accessor for NavigationSource);
    sub_20BF1EECC(v107, type metadata accessor for NavigationResource);
    sub_20B520158(v97, &unk_27C767800);
    v112 = *(v120 + 8);
    v112(v122, v109);
    v113 = 0;
    goto LABEL_23;
  }

  v64 = sub_20BEDD6C4(v179);
  if (v64)
  {
    v65 = v64;
    v66 = 2;
    v67 = v156;
    swift_storeEnumTagMultiPayload();
    v68 = _s9SeymourUI16NavigationSourceO2eeoiySbAC_ACtFZ_0(v174, v67);
    sub_20BF1EECC(v67, type metadata accessor for NavigationSource);
    if (v68)
    {
      v66 = 4;
    }

    sub_20C13B534();
    sub_20C13BB64();
    v167(v55, v169);
    v69 = v178;

    v70 = v159;
    sub_20C137C94();
    v71 = swift_allocObject();
    v71[2] = v69;
    v71[3] = v65;
    v71[4] = v66;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_20BF1EAB8;
    *(v72 + 24) = v71;
    v73 = v162;
    v74 = v158;
    v75 = v163;
    (*(v162 + 16))(v158, v70, v163);
    v76 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v77 = (v157 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    (*(v73 + 32))(v78 + v76, v74, v75);
    v79 = (v78 + v77);
    *v79 = sub_20B8955C4;
    v79[1] = v72;

    v80 = v65;
    v81 = v164;
    sub_20C137C94();
    (*(v73 + 8))(v70, v75);
    v82 = swift_allocObject();
    v179 = *(v69 + 128);
    *(v82 + 16) = v179;
    v84 = v165;
    v83 = v166;
    v85 = v161;
    v165[2](v161, v81, v166);
    v86 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v87 = (v160 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    v84[4]((v88 + v86), v85, v83);
    v89 = (v88 + v87);
    *v89 = sub_20BF1EB3C;
    v89[1] = v82;
    swift_unknownObjectRetain();
    sub_20C137C94();

    (v84[1])(v81, v83);
  }

  else
  {
    sub_20B5D9BA8();
    v90 = swift_allocError();
    *v91 = 16;
    *(swift_allocObject() + 16) = v90;
    sub_20C137CA4();
  }
}

uint64_t sub_20BF18AF4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  v6 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  result = (*(v10 + 8))(v12, v9);
  if (!*(v1 + 328))
  {
    *(v1 + 328) = 2;
    *v8 = 0;
    type metadata accessor for NavigationResource();
    swift_storeEnumTagMultiPayload();
    v8[v6[5]] = 1;
    type metadata accessor for NavigationIntent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for NavigationSource();
    swift_storeEnumTagMultiPayload();
    v8[v6[7]] = 0;
    v8[v6[8]] = 2;
    *&v8[v6[9]] = 4;
    v14 = *(v1 + 136);
    ObjectType = swift_getObjectType();
    (*(v14 + 16))(v8, ObjectType, v14);
    v16 = sub_20C137CB4();
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    v16(sub_20B5DF6DC, v17);

    (*(v3 + 8))(v5, v2);
    return sub_20BF1EECC(v8, type metadata accessor for NavigationRequest);
  }

  return result;
}

uint64_t sub_20BF18E20()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v44 - v3;
  v46 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v46);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C136084();
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  sub_20C13B534();
  sub_20C13BB64();
  v51 = *(v11 + 8);
  v51(v19, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_4:
    sub_20C13B534();

    v22 = sub_20C13BB74();
    v23 = sub_20C13D1D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = swift_unknownObjectWeakLoadStrong();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&dword_20B517000, v22, v23, "Wrong scene state: %{public}@", v24, 0xCu);
      sub_20B520158(v25, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v25, -1, -1);
      MEMORY[0x20F2F6A40](v24, -1, -1);
    }

    v27 = v13;
    return (v51)(v27, v10);
  }

  v21 = Strong;
  if ([Strong activationState])
  {

    goto LABEL_4;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
  sub_20C13B184();
  v29 = sub_20C135174();
  v30 = (*(*(v29 - 8) + 48))(v9, 1, v29);
  sub_20B520158(v9, &unk_27C76BC00);
  if (v30 != 1)
  {
    sub_20C13B534();
    sub_20C13BB64();
    v51(v19, v10);
    __swift_project_boxed_opaque_existential_1(v1 + 18, v1[21]);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766A10);
    v35 = v45;
    (*(*(v34 - 8) + 56))(v45, 1, 1, v34);
    sub_20C13B1A4();
    sub_20BF1EECC(v35, MEMORY[0x277D525B8]);
    v36 = v47;
    *v47 = 0;
    type metadata accessor for NavigationResource();
    swift_storeEnumTagMultiPayload();
    v37 = v46;
    *(v36 + *(v46 + 20)) = 1;
    type metadata accessor for NavigationIntent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for NavigationSource();
    swift_storeEnumTagMultiPayload();
    *(v36 + v37[7]) = 0;
    *(v36 + v37[8]) = 2;
    *(v36 + v37[9]) = 0;
    v38 = v1[17];
    ObjectType = swift_getObjectType();
    v40 = v48;
    (*(v38 + 16))(v36, ObjectType, v38);
    v41 = v50;
    v42 = sub_20C137CB4();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    v42(sub_20B5DF6DC, v43);

    (*(v49 + 8))(v40, v41);
    return sub_20BF1EECC(v36, type metadata accessor for NavigationRequest);
  }

  sub_20C13B534();
  v31 = sub_20C13BB74();
  v32 = sub_20C13D1D4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_20B517000, v31, v32, "We are not signed in!", v33, 2u);
    MEMORY[0x20F2F6A40](v33, -1, -1);
  }

  v27 = v16;
  return (v51)(v27, v10);
}

uint64_t sub_20BF19544()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v58 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v60 = *(v55 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v49 - v10;
  MEMORY[0x28223BE20](v11);
  v56 = &v49 - v12;
  MEMORY[0x28223BE20](v13);
  v57 = &v49 - v14;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v16 + 8))(v18, v15);
  __swift_project_boxed_opaque_existential_1((v1 + 224), *(v1 + 248));
  sub_20C13A0E4();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20BF1EE80;
  *(v19 + 24) = v1;
  v53 = v1;
  v20 = v58;
  (*(v3 + 16))(v58, v7, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = (v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v3 + 32))(v23 + v21, v20, v2);
  v24 = (v23 + v22);
  *v24 = sub_20B681EF8;
  v24[1] = v19;

  v25 = v59;
  sub_20C137C94();
  (*(v3 + 8))(v7, v2);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_20BF1AECC;
  *(v26 + 24) = 0;
  v27 = v60;
  v52 = *(v60 + 16);
  v28 = v54;
  v29 = v25;
  v30 = v55;
  v52(v54, v29, v55);
  v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v51 = v31;
  v58 = ((v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  v32 = swift_allocObject();
  v50 = *(v27 + 32);
  v50(v32 + v31, v28, v30);
  v33 = &v58[v32];
  *v33 = sub_20B5F7764;
  v33[1] = v26;
  v34 = v56;
  sub_20C137C94();
  v35 = *(v27 + 8);
  v60 = v27 + 8;
  v54 = v35;
  v36 = v59;
  (v35)(v59, v30);
  v37 = swift_allocObject();
  v38 = v53;
  *(v37 + 16) = sub_20BF1EEC4;
  *(v37 + 24) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BF1F51C;
  *(v39 + 24) = v37;
  v52(v36, v34, v30);
  v40 = v58;
  v41 = swift_allocObject();
  v50(v41 + v51, v36, v30);
  v42 = &v40[v41];
  *v42 = sub_20B66A8B4;
  v42[1] = v39;

  v43 = v57;
  sub_20C137C94();
  v44 = v34;
  v45 = v54;
  (v54)(v44, v30);
  v46 = sub_20C137CB4();
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  v46(sub_20B5DF6DC, v47);

  return v45(v43, v30);
}

uint64_t sub_20BF19BE4(uint64_t a1, void *a2)
{
  v97 = a2;
  v98 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v102 = v96 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v4 - 8);
  v101 = v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v100 = v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v8 - 8);
  v120 = v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v119 = v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v12 - 8);
  v118 = v96 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v14 - 8);
  v116 = v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v16 - 8);
  v115 = v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v18 - 8);
  v99 = v96 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v20 - 8);
  v117 = v96 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v22 - 8);
  v112 = v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v24 - 8);
  v126 = v96 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v26 - 8);
  v125 = v96 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v28 - 8);
  v124 = v96 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v30 - 8);
  v123 = v96 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v32 - 8);
  v121 = v96 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v34 - 8);
  v122 = v96 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v96 - v37;
  v105 = v96 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = v96 - v40;
  v106 = v96 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = v96 - v43;
  v107 = v96 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = v96 - v46;
  v108 = v96 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = v96 - v49;
  v109 = v96 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = v96 - v52;
  v110 = v96 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = v96 - v55;
  v111 = v96 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = v96 - v58;
  v113 = v96 - v58;
  v104 = sub_20C1337D4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v114 = v96 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13CE94();
  v127 = 1;
  sub_20C1337B4();
  v96[0] = v97[31];
  v96[1] = v97[32];
  v97 = __swift_project_boxed_opaque_existential_1(v97 + 28, v96[0]);
  v98 = sub_20C137D14();
  v61 = sub_20C133D84();
  (*(*(v61 - 8) + 56))(v59, 1, 1, v61);
  v62 = sub_20C135854();
  (*(*(v62 - 8) + 56))(v56, 1, 1, v62);
  v63 = sub_20C136194();
  (*(*(v63 - 8) + 56))(v53, 1, 1, v63);
  v64 = sub_20C133DD4();
  (*(*(v64 - 8) + 56))(v50, 1, 1, v64);
  v65 = sub_20C135274();
  (*(*(v65 - 8) + 56))(v47, 1, 1, v65);
  v66 = sub_20C134514();
  (*(*(v66 - 8) + 56))(v44, 1, 1, v66);
  v67 = sub_20C133B04();
  (*(*(v67 - 8) + 56))(v41, 1, 1, v67);
  v68 = sub_20C134C04();
  (*(*(v68 - 8) + 56))(v38, 1, 1, v68);
  v69 = sub_20C1368F4();
  (*(*(v69 - 8) + 56))(v122, 1, 1, v69);
  v70 = sub_20C134914();
  (*(*(v70 - 8) + 56))(v121, 1, 1, v70);
  v71 = sub_20C133374();
  (*(*(v71 - 8) + 56))(v123, 1, 1, v71);
  v72 = sub_20C135B74();
  (*(*(v72 - 8) + 56))(v124, 1, 1, v72);
  v73 = sub_20C134CD4();
  (*(*(v73 - 8) + 56))(v125, 1, 1, v73);
  v74 = sub_20C136EB4();
  (*(*(v74 - 8) + 56))(v126, 1, 1, v74);
  v75 = sub_20C133494();
  (*(*(v75 - 8) + 56))(v112, 1, 1, v75);
  v76 = sub_20C134594();
  (*(*(v76 - 8) + 56))(v117, 1, 1, v76);
  v77 = sub_20C138184();
  v78 = v99;
  (*(*(v77 - 8) + 56))(v99, 1, 1, v77);
  v79 = sub_20C1363D4();
  (*(*(v79 - 8) + 56))(v115, 1, 1, v79);
  v80 = sub_20C1337A4();
  (*(*(v80 - 8) + 56))(v116, 1, 1, v80);
  v81 = v103;
  v82 = v118;
  v83 = v104;
  (*(v103 + 16))(v118, v114, v104);
  (*(v81 + 56))(v82, 0, 1, v83);
  v84 = sub_20C134A94();
  (*(*(v84 - 8) + 56))(v119, 1, 1, v84);
  v85 = sub_20C135364();
  (*(*(v85 - 8) + 56))(v120, 1, 1, v85);
  v86 = sub_20C136484();
  v87 = v100;
  (*(*(v86 - 8) + 56))(v100, 1, 1, v86);
  v88 = sub_20C136784();
  v89 = v101;
  (*(*(v88 - 8) + 56))(v101, 1, 1, v88);
  v90 = sub_20C137FE4();
  v91 = v102;
  (*(*(v90 - 8) + 56))(v102, 1, 1, v90);
  v92 = v118;
  v93 = v117;
  v94 = v112;
  sub_20C13A174();

  sub_20B520158(v91, &unk_27C768AC0);
  sub_20B520158(v89, &unk_27C765070);
  sub_20B520158(v87, &unk_27C765CB0);
  sub_20B520158(v120, &unk_27C765080);
  sub_20B520158(v119, &unk_27C768AD0);
  sub_20B520158(v92, &unk_27C765090);
  sub_20B520158(v116, &unk_27C768AE0);
  sub_20B520158(v115, &unk_27C7650A0);
  sub_20B520158(v78, &unk_27C768AF0);
  sub_20B520158(v93, &unk_27C7650B0);
  sub_20B520158(v94, &unk_27C768B00);
  sub_20B520158(v126, &unk_27C7650C0);
  sub_20B520158(v125, &unk_27C768B10);
  sub_20B520158(v124, &unk_27C7650D0);
  sub_20B520158(v123, &unk_27C768B20);
  sub_20B520158(v121, &unk_27C7650E0);
  sub_20B520158(v122, &unk_27C767260);
  sub_20B520158(v105, &unk_27C7650F0);
  sub_20B520158(v106, &qword_27C768B30);
  sub_20B520158(v107, &unk_27C765050);
  sub_20B520158(v108, &unk_27C765100);
  sub_20B520158(v109, &unk_27C7687F0);
  sub_20B520158(v110, &unk_27C765110);
  sub_20B520158(v111, &unk_27C76BBF0);
  sub_20B520158(v113, &unk_27C765120);
  return (*(v103 + 8))(v114, v104);
}

uint64_t sub_20BF1AECC(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](v17[3], v17[4]);
    v15 = sub_20B51E694(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v8, v9, "Error querying active session when active user profile has changed: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20BF1B0A8(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - v3;
  v5 = type metadata accessor for NavigationRequest();
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C136084();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v13 + 8))(v15, v12);
  __swift_project_boxed_opaque_existential_1(a1 + 18, a1[21]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766A10);
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_20C13B1A4();
  sub_20BF1EECC(v11, MEMORY[0x277D525B8]);
  *v8 = 0;
  type metadata accessor for NavigationResource();
  swift_storeEnumTagMultiPayload();
  v8[v6[7]] = 1;
  type metadata accessor for NavigationIntent();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource();
  swift_storeEnumTagMultiPayload();
  v8[v6[9]] = 0;
  v8[v6[10]] = 2;
  *&v8[v6[11]] = 0;
  v17 = a1[17];
  ObjectType = swift_getObjectType();
  (*(v17 + 16))(v8, ObjectType, v17);
  v19 = v24;
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B5DF6DC, v21);

  (*(v2 + 8))(v4, v19);
  return sub_20BF1EECC(v8, type metadata accessor for NavigationRequest);
}

uint64_t sub_20BF1B49C(id *a1)
{
  v2 = type metadata accessor for NavigationSource();
  v97 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v87 = v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = v79 - v5;
  MEMORY[0x28223BE20](v6);
  v91 = v79 - v7;
  MEMORY[0x28223BE20](v8);
  v93 = v79 - v9;
  v94 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v94);
  v84 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = v79 - v12;
  MEMORY[0x28223BE20](v13);
  v83 = v79 - v14;
  MEMORY[0x28223BE20](v15);
  v99 = v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800);
  MEMORY[0x28223BE20](v17 - 8);
  v90 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v79 - v20;
  v22 = sub_20C132C14();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v92 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v79 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v79 - v29;
  v88 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v88);
  v32 = v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v34 = MEMORY[0x28223BE20](v33).n128_u64[0];
  v36 = v79 - v35;
  v37 = [*a1 URL];
  sub_20C132B94();

  v38 = *(v97 + 56);
  v95 = v21;
  v85 = v2;
  v38(v21, 1, 1, v2);
  v98 = v23;
  v39 = v23 + 16;
  v40 = *(v23 + 16);
  v41 = v99;
  v40(v27, v30, v22);
  v42 = v96;
  sub_20BBD6CD8(v27, v41);
  if (v42)
  {
    sub_20B520158(v95, &unk_27C767800);
    (*(v98 + 8))(v30, v22);

    return 0;
  }

  v81 = v32;
  v82 = v36;
  v96 = 0;
  v44 = v92;
  v79[1] = v39;
  v80 = v30;
  v40(v92, v30, v22);
  v45 = type metadata accessor for NavigationSharingURLInfo();
  v46 = v98;
  v47 = v93;
  (*(v98 + 56))(v93 + *(v45 + 20), 1, 1, v22);
  (*(v46 + 32))(v47, v44, v22);
  v48 = (v47 + *(v45 + 24));
  *v48 = 0;
  v48[1] = 0;
  v49 = v85;
  swift_storeEnumTagMultiPayload();
  v50 = v95;
  v51 = v90;
  sub_20B610B00(v95, v90);
  v52 = *(v97 + 48);
  v53 = v52(v51, 1, v49);
  v97 = v22;
  v54 = v49;
  v79[0] = v40;
  if (v53 == 1)
  {
    v55 = v91;
    sub_20BF1EBA8(v47, v91, type metadata accessor for NavigationSource);
    v56 = v52(v51, 1, v54);
    v57 = v99;
    v58 = v86;
    v59 = v87;
    if (v56 != 1)
    {
      sub_20B520158(v90, &unk_27C767800);
    }
  }

  else
  {
    v55 = v91;
    sub_20BF1EC10(v51, v91, type metadata accessor for NavigationSource);
    v57 = v99;
    v58 = v86;
    v59 = v87;
  }

  sub_20BF1EBA8(v55, v58, type metadata accessor for NavigationSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = v50;
  v62 = v80;
  if (EnumCaseMultiPayload)
  {
    sub_20BF1EECC(v58, type metadata accessor for NavigationSource);
  }

  else
  {
    sub_20BF1EECC(v58, type metadata accessor for NavigationSharingURLInfo);
    v63 = v83;
    sub_20BF1EBA8(v57, v83, type metadata accessor for NavigationResource);
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20BF1EECC(v93, type metadata accessor for NavigationSource);
      sub_20B520158(v61, &unk_27C767800);
      v64 = *(v98 + 8);
      v64(v62, v97);
      v65 = v81;
      sub_20BF1EC10(v57, v81, type metadata accessor for NavigationResource);
      v66 = v88;
      *(v65 + *(v88 + 20)) = 0;
      type metadata accessor for NavigationIntent();
      v55 = v91;
      goto LABEL_16;
    }

    sub_20BF1EECC(v63, type metadata accessor for NavigationResource);
  }

  v65 = v81;
  sub_20BF1EBA8(v55, v59, type metadata accessor for NavigationSource);
  v67 = swift_getEnumCaseMultiPayload();
  v68 = v84;
  if (!v67)
  {
    sub_20BF1EECC(v59, type metadata accessor for NavigationSharingURLInfo);
    sub_20BF1EBA8(v57, v68, type metadata accessor for NavigationResource);
    v70 = swift_getEnumCaseMultiPayload();
    v69 = v92;
    if (v70 != 1)
    {
      sub_20BF1EECC(v68, type metadata accessor for NavigationResource);
      goto LABEL_18;
    }

    sub_20BF1EECC(v93, type metadata accessor for NavigationSource);
    sub_20B520158(v61, &unk_27C767800);
    v71 = v97;
    v64 = *(v98 + 8);
    v64(v62, v97);
    v72 = v57;
    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0) + 48);
    v74 = sub_20C1388F4();
    (*(*(v74 - 8) + 8))(v68 + v73, v74);
    v64(v68, v71);
    sub_20BF1EC10(v72, v65, type metadata accessor for NavigationResource);
    v66 = v88;
    *(v65 + *(v88 + 20)) = 1;
    type metadata accessor for NavigationIntent();
    v55 = v91;
LABEL_16:
    swift_storeEnumTagMultiPayload();
    goto LABEL_19;
  }

  sub_20BF1EECC(v59, type metadata accessor for NavigationSource);
  v69 = v92;
LABEL_18:
  sub_20BF1EBA8(v57, v65, type metadata accessor for NavigationResource);
  v75 = v97;
  (v79[0])(v69, v62, v97);
  v76 = v62;
  v66 = v88;
  sub_20BB7F2E8(v69, 1, v65 + *(v88 + 20));
  sub_20BF1EECC(v93, type metadata accessor for NavigationSource);
  sub_20BF1EECC(v57, type metadata accessor for NavigationResource);
  sub_20B520158(v61, &unk_27C767800);
  v64 = *(v98 + 8);
  v64(v76, v75);
LABEL_19:
  v77 = v82;
  sub_20BF1EC10(v55, v65 + v66[6], type metadata accessor for NavigationSource);
  *(v65 + v66[7]) = 0;
  *(v65 + v66[8]) = 2;
  *(v65 + v66[9]) = 0;
  sub_20BF1EC10(v65, v77, type metadata accessor for NavigationRequest);
  v78 = v89;
  sub_20BF1EBA8(v77, v89, type metadata accessor for NavigationResource);
  sub_20BF1EECC(v77, type metadata accessor for NavigationRequest);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v64(v78, v97);
    return 1;
  }

  else
  {
    sub_20BF1EECC(v78, type metadata accessor for NavigationResource);
    return 0;
  }
}

void sub_20BF1BF9C(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  objc_allocWithZone(type metadata accessor for TVRootViewController());

  v6 = TVRootViewController.init(dependencies:)(v5);
  v7 = *(a3 + 376);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20C14F580;
  *(v8 + 32) = v6;
  sub_20B51C88C(0, &qword_281100550);
  v9 = v6;
  v10 = sub_20C13CC54();

  [v7 setViewControllers:v10 animated:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  sub_20C13E1D4();
  v11 = v15;
  v12 = v16;
  v13 = v15;
  v14 = v16;
  a1(&v13);

  sub_20B583FB8(v11, v12);
}

void sub_20BF1C0F0(uint64_t a1)
{
  v2 = v1;
  v34 = sub_20C132C14();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v30 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C13DAE4();
    sub_20B51C88C(0, &qword_27C76AF80);
    sub_20BF1F48C();
    sub_20C13CFF4();
    a1 = v38;
    v10 = v39;
    v11 = v40;
    v12 = v41;
    v13 = v42;
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

  v31 = v11;
  v17 = (v11 + 64) >> 6;
  v32 = (v4 + 8);
  v35 = a1;
  while (1)
  {
    v19 = v12;
    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    v23 = sub_20C13DB64();
    if (!v23 || (v36 = v23, sub_20B51C88C(0, &qword_27C76AF80), swift_dynamicCast(), (v22 = v37) == 0))
    {
LABEL_22:
      sub_20B583EDC();
      return;
    }

LABEL_18:
    v24 = [v22 URL];
    v25 = v33;
    sub_20C132B94();

    v26 = sub_20C132B24();
    v28 = v27;
    (*v32)(v25, v34);
    if (v26 == sub_20C135564() && v28 == v29)
    {

LABEL_21:
      sub_20B583EDC();
      sub_20BF1C50C();
      return;
    }

    v18 = sub_20C13DFF4();

    a1 = v35;
    if (v18)
    {
      goto LABEL_21;
    }
  }

  v20 = v12;
  v21 = v13;
  if (v13)
  {
LABEL_14:
    v13 = (v21 - 1) & v21;
    v22 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      goto LABEL_22;
    }

    v21 = *(v10 + 8 * v12);
    ++v20;
    if (v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_20BF1C50C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v14 + 8))(v16, v13);
  __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
  sub_20C1396C4();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20BF1F378;
  *(v17 + 24) = v1;
  (*(v3 + 16))(v5, v8, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = (v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v18, v5, v2);
  v21 = (v20 + v19);
  *v21 = sub_20BF1F394;
  v21[1] = v17;

  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v22 = v26;
  v23 = sub_20C137CB4();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v23(sub_20B5DF6DC, v24);

  return (*(v27 + 8))(v12, v22);
}

void sub_20BF1C8E8(uint64_t *a1)
{
  v2 = v1;
  v45 = *MEMORY[0x277D85DE8];
  v44 = sub_20C134884();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  LOBYTE(v5) = *(*a1 + 32);
  v8 = v5 & 0x3F;
  v9 = ((1 << v5) + 63) >> 6;
  v10 = 8 * v9;

  if (v8 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v36 = v9;
    v37 = v2;
    v35[1] = v35;
    MEMORY[0x28223BE20](v11);
    v38 = v35 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v10);
    v39 = 0;
    v10 = 0;
    v2 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v42 = v4 + 16;
    v43 = v4;
    v41 = (v4 + 8);
    while (v14)
    {
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = v17 | (v10 << 6);
      v19 = v43;
LABEL_13:
      v4 = v7;
      v22 = *(v7 + 48);
      v23 = *(v19 + 72);
      v40 = v18;
      (*(v19 + 16))(v6, v22 + v23 * v18, v44);
      v24 = sub_20C134874();
      v9 = v25;
      if (v24 == sub_20C1355C4() && v9 == v26)
      {

        (*v41)(v6, v44);
        goto LABEL_16;
      }

      v16 = sub_20C13DFF4();

      (*v41)(v6, v44);
      if (v16)
      {
LABEL_16:
        *&v38[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
LABEL_19:
          v28 = sub_20BC11FD8(v38, v36, v39, v7);
          goto LABEL_20;
        }
      }
    }

    v20 = v10;
    v19 = v43;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v21 = *(v2 + 8 * v10);
      ++v20;
      if (v21)
      {
        v14 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) | (v10 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v32 = swift_slowAlloc();
  v33 = sub_20BF1E084(v32, v9, v7, sub_20BF1CD2C, 0);
  if (v2)
  {

    MEMORY[0x20F2F6A40](v32, -1, -1);
    __break(1u);
  }

  else
  {
    v34 = v33;

    MEMORY[0x20F2F6A40](v32, -1, -1);
    v28 = v34;
LABEL_20:
    v29 = *(v28 + 16);

    v30 = [objc_opt_self() currentNotificationCenter];
    v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v30 smu:v31 setBadgeNumber:0 withCompletionHandler:?];
  }
}

uint64_t sub_20BF1CD2C()
{
  v0 = sub_20C134874();
  v2 = v1;
  if (v0 == sub_20C1355C4() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_20C13DFF4();
  }

  return v4 & 1;
}

uint64_t TVSceneCoordinator.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);
  __swift_destroy_boxed_opaque_existential_1(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1(v0 + 264);

  MEMORY[0x20F2F6B80](v0 + 320);
  sub_20B583ECC(*(v0 + 344));
  sub_20B583ECC(*(v0 + 360));

  return v0;
}

uint64_t TVSceneCoordinator.__deallocating_deinit()
{
  TVSceneCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t TVSceneCoordinator.scene(_:with:willConnectTo:options:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v66 = *(v63 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  MEMORY[0x28223BE20](v14);
  v64 = &v55 - v15;
  MEMORY[0x28223BE20](v16);
  v65 = &v55 - v17;
  v18 = sub_20C13BB84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v19 + 8))(v21, v18);
  [a2 setRootViewController_];
  swift_unknownObjectWeakAssign();
  v22 = *(v5 + 312);
  v23 = a1;
  [objc_msgSend(v23 coordinateSpace)];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  swift_unknownObjectRelease();
  [v22 setFrame_];
  [v22 setWindowScene_];

  *(v5 + 328) = 1;
  v67[3] = sub_20B51C88C(0, &unk_27C7706D8);
  v67[4] = &protocol witness table for UISceneConnectionOptions;
  v67[0] = a4;
  v32 = a4;
  v56 = v13;
  v58 = v5;
  sub_20BF16CD4(v67, v13);
  __swift_destroy_boxed_opaque_existential_1(v67);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_20BF1EC78;
  *(v33 + 24) = v5;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BF1EC90;
  *(v34 + 24) = v33;
  v35 = v66;
  v62 = *(v66 + 16);
  v36 = v63;
  v62(v10, v13, v63);
  v37 = *(v35 + 80);
  v61 = (v37 + 16) & ~v37;
  v38 = (v9 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = v38;
  v39 = swift_allocObject();
  v60 = *(v35 + 32);
  v60(v39 + ((v37 + 16) & ~v37), v10, v36);
  v40 = (v39 + v38);
  *v40 = sub_20B5DF3D4;
  v40[1] = v34;
  v41 = v58;

  v42 = v64;
  sub_20C137C94();
  v43 = *(v35 + 8);
  v66 = v35 + 8;
  v59 = v43;
  v44 = v56;
  v43(v56, v36);
  v45 = swift_allocObject();
  *(v45 + 16) = sub_20BF1ECB8;
  *(v45 + 24) = v41;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_20B5F67D4;
  *(v46 + 24) = v45;
  v62(v44, v42, v36);
  v47 = v57;
  v48 = swift_allocObject();
  v60(v48 + v61, v44, v36);
  v49 = (v48 + v47);
  *v49 = sub_20B5DF204;
  v49[1] = v46;

  v50 = v65;
  sub_20C137C94();
  v51 = v59;
  v59(v42, v36);
  v52 = sub_20C137CB4();
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  v52(sub_20B52347C, v53);

  return v51(v50, v36);
}

uint64_t sub_20BF1D490(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 328) == 1)
  {
    *(a2 + 328) = 0;
    sub_20BF18AF4();
    v3 = *(a2 + 112);
    v4 = *(a2 + 120);
    __swift_project_boxed_opaque_existential_1((a2 + 88), v3);
    return (*(v4 + 16))(v3, v4);
  }

  return result;
}

Swift::Void __swiftcall TVSceneCoordinator.sceneDidDisconnect(_:)(UIScene *a1)
{
  v2 = v1;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v4 + 8))(v6, v3);
  v7 = v2[42];
  v2[42] = 0;

  v8 = v2[14];
  v9 = v2[15];
  __swift_project_boxed_opaque_existential_1(v2 + 11, v8);
  (*(v9 + 8))(v8, v9);
}

Swift::Void __swiftcall TVSceneCoordinator.sceneWillEnterForeground(_:)(UIScene *a1)
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v2 + 8))(v4, v1);
  sub_20BF18AF4();
}

Swift::Void __swiftcall TVSceneCoordinator.sceneDidBecomeActive(_:)(UIScene *a1)
{
  v2 = v1;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v4 + 8))(v6, v3);
  v7 = v2[14];
  v8 = v2[15];
  __swift_project_boxed_opaque_existential_1(v2 + 11, v7);
  (*(v8 + 40))(v7, v8);
  sub_20BF1C50C();
}

Swift::Void __swiftcall TVSceneCoordinator.sceneWillResignActive(_:)(UIScene *a1)
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v2 + 8))(v4, v1);
}

Swift::Void __swiftcall TVSceneCoordinator.sceneDidEnterBackground(_:)(UIScene *a1)
{
  v2 = v1;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v4 + 8))(v6, v3);
  v7 = v2[14];
  v8 = v2[15];
  __swift_project_boxed_opaque_existential_1(v2 + 11, v7);
  (*(v8 + 48))(v7, v8);
}

uint64_t sub_20BF1DAE8()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = v1[42];
  v1[42] = 0;

  v7 = v1[14];
  v8 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v7);
  return (*(v8 + 8))(v7, v8);
}

uint64_t sub_20BF1DC20()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  return sub_20BF18AF4();
}

uint64_t sub_20BF1DD24()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = v1[14];
  v7 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v6);
  (*(v7 + 40))(v6, v7);
  return sub_20BF1C50C();
}

uint64_t sub_20BF1DE58()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_20BF1DF50()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = v1[14];
  v7 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v6);
  return (*(v7 + 48))(v6, v7);
}

void *sub_20BF1E084(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_20BEE1B44(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_20BF1E114(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}

uint64_t sub_20BF1E1B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20BF1E200(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C13DAE4();
    sub_20B51C88C(0, &qword_27C76AF80);
    sub_20BF1F48C();
    sub_20C13CFF4();
    a1 = v20[1];
    v6 = v20[2];
    v7 = v20[3];
    v8 = v20[4];
    v9 = v20[5];
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = (a1 + 56);
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = (v12 & *(a1 + 56));

    v8 = 0;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v20[0] = v17;
        if (sub_20BF1B49C(v20))
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v18 = sub_20C13DB64();
        if (!v18)
        {
          break;
        }

        v19 = v18;
        sub_20B51C88C(0, &qword_27C76AF80);
        swift_dynamicCast();
        v17 = v20[0];
        v15 = v8;
        v16 = v9;
      }

      while (v20[0]);
    }

LABEL_19:
    sub_20B583EDC();
  }

  else
  {
    while (1)
    {
      v15 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = v6[v15];
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20BF1E538(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v18[3] = type metadata accessor for TVNavigationRouterInterceptionPresenter(0);
  v18[4] = &protocol witness table for TVNavigationRouterInterceptionPresenter;
  v18[0] = a2;
  v17[3] = &type metadata for TVNavigationViewControllerFactory;
  v17[4] = &off_282304F08;
  v10 = swift_allocObject();
  v17[0] = v10;
  v11 = a4[1];
  v10[1] = *a4;
  v10[2] = v11;
  v10[3] = a4[2];
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_navigationController + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = (a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_onNavigationRouterIdle);
  *v12 = 0;
  v12[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_subscriptionToken) = sub_20C13A914();
  v13 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_state;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F968);
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  sub_20B51CC64(v17, a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_viewControllerFactory);
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_dependencies) = a1;
  sub_20B51CC64(v18, a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter);
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionChain) = a3;
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_pendingRequests) = MEMORY[0x277D84F90];
  swift_getObjectType();
  type metadata accessor for NavigationRequested();
  swift_allocObject();
  swift_weakInit();
  sub_20BF1E1B8(&unk_27C7706F0, type metadata accessor for NavigationRequested);

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v16);
  sub_20C139244();
  swift_allocObject();
  swift_weakInit();
  sub_20BF1E1B8(qword_27C76F9B8, MEMORY[0x277D542E8]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v16);
  sub_20C13B324();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return a5;
}

uint64_t sub_20BF1EAD0(uint64_t (*a1)(uint64_t, uint64_t *, uint64_t))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v7 = v4;
  return a1(v3, &v7, ObjectType);
}

uint64_t sub_20BF1EB40(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 16))(a1, ObjectType, v3);
}

uint64_t sub_20BF1EBA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BF1EC10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_20BF1EC78()
{
  if (*(v0 + 328) == 1)
  {
    *(v0 + 328) = 2;
  }
}

unint64_t sub_20BF1EE2C()
{
  result = qword_27C7706E8;
  if (!qword_27C7706E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7706E8);
  }

  return result;
}

uint64_t sub_20BF1EECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BF1EF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[3] = type metadata accessor for NavigationRouterInterceptionPresenter();
  v18[4] = &protocol witness table for NavigationRouterInterceptionPresenter;
  v18[0] = a2;
  v17[3] = &type metadata for NavigationViewControllerFactory;
  v17[4] = &off_2822FE458;
  v10 = swift_allocObject();
  v17[0] = v10;
  v11 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = *(a4 + 48);
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_navigationController + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = (a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_onNavigationRouterIdle);
  *v12 = 0;
  v12[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_subscriptionToken) = sub_20C13A914();
  v13 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_state;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F968);
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  sub_20B51CC64(v17, a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_viewControllerFactory);
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_dependencies) = a1;
  sub_20B51CC64(v18, a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter);
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionChain) = a3;
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_pendingRequests) = MEMORY[0x277D84F90];
  swift_getObjectType();
  type metadata accessor for NavigationRequested();
  swift_allocObject();
  swift_weakInit();
  sub_20BF1E1B8(&unk_27C7706F0, type metadata accessor for NavigationRequested);

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v16);
  sub_20C139244();
  swift_allocObject();
  swift_weakInit();
  sub_20BF1E1B8(qword_27C76F9B8, MEMORY[0x277D542E8]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v16);
  sub_20C13B324();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return a5;
}

uint64_t sub_20BF1F3C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20BF1F48C()
{
  result = qword_27C770710;
  if (!qword_27C770710)
  {
    sub_20B51C88C(255, &qword_27C76AF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770710);
  }

  return result;
}

uint64_t NavigationRootResourceState.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BF1F5C8()
{
  result = qword_27C770718;
  if (!qword_27C770718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770718);
  }

  return result;
}

void sub_20BF1F62C()
{
  v1 = [v0 fontDescriptor];
  v2 = [v1 objectForKey_];

  if (v2)
  {
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    *v6 = 0u;
    v7 = 0u;
  }

  v8[0] = *v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770720);
    if (swift_dynamicCast())
    {
      if (*(v5 + 16) && (v3 = sub_20B65CEB8(*MEMORY[0x277D74430]), (v4 & 1) != 0))
      {
        sub_20B51F1D8(*(v5 + 56) + 32 * v3, v8);

        sub_20B8602D4();
        if (swift_dynamicCast())
        {
          [v6[0] doubleValue];
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_20B8006F4(v8);
  }
}

uint64_t sub_20BF1F7A8(double a1)
{
  if (*MEMORY[0x277D743E8] == a1)
  {
    return 9;
  }

  if (*MEMORY[0x277D743F8] == a1)
  {
    return 7;
  }

  if (*MEMORY[0x277D74400] == a1)
  {
    return 8;
  }

  if (*MEMORY[0x277D74408] == a1)
  {
    return 3;
  }

  if (*MEMORY[0x277D74410] == a1)
  {
    return 5;
  }

  if (*MEMORY[0x277D74418] == a1)
  {
    return 4;
  }

  if (*MEMORY[0x277D74420] == a1)
  {
    return 6;
  }

  if (*MEMORY[0x277D74428] == a1)
  {
    return 2;
  }

  if (*MEMORY[0x277D74438] == a1)
  {
    return 1;
  }

  return 4;
}

char *sub_20BF1F8A4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_layout];
  sub_20BD3E4B4(v90);
  v13 = v90[3];
  *(v12 + 2) = v90[2];
  *(v12 + 3) = v13;
  *(v12 + 4) = v90[4];
  *(v12 + 10) = v91;
  v14 = v90[1];
  *v12 = v90[0];
  *(v12 + 1) = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_platter;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setClipsToBounds_];
  *&v5[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  [v18 setAdjustsFontSizeToFitWidth_];
  *&v5[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkContainer;
  v20 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setClipsToBounds_];
  *&v5[v19] = v20;
  v21 = &v5[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView];
  v22 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v23 = sub_20B91B5FC(1);
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setClipsToBounds_];

  *v21 = v23;
  v21[1] = &off_2822B63E8;
  v89.receiver = v5;
  v89.super_class = type metadata accessor for PreferredTrainerCell();
  v24 = objc_msgSendSuper2(&v89, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = *&v24[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_platter];
  v26 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_platter;
  v82 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_platter;
  v27 = objc_opt_self();
  v83 = v24;
  v28 = v24;
  v29 = v25;
  v30 = [v27 systemGray5Color];
  [v29 setBackgroundColor_];

  v31 = [v28 contentView];
  [v31 addSubview_];

  v32 = [v28 &selRef_setMaximumFractionDigits_];
  v85 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_titleLabel;
  [v32 addSubview_];

  v33 = v28;
  v34 = [v33 &selRef_setMaximumFractionDigits_];
  v35 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkContainer;
  v81 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkContainer;
  [v34 addSubview_];

  v36 = &v33[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView];
  v37 = *&v33[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView];
  v38 = *&v33[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  v40 = *(v38 + 288);
  v41 = v37;
  v40(2, ObjectType, v38);

  [*&v33[v35] addSubview_];
  v42 = [v33 traitCollection];

  v43 = *&v28[v85];
  v44 = &v33[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_layout];
  v45 = *&v33[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_layout + 16];
  v96 = *&v33[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_layout];
  v97 = v45;
  v98 = *&v33[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_layout + 32];
  v99 = *&v33[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_layout + 48];
  v46 = sub_20B7C6A74(v42);
  [v43 setFont_];

  v47 = *&v28[v85];
  v48 = [v42 preferredContentSizeCategory];
  LOBYTE(v26) = sub_20C13D424();

  if (v26)
  {
    v49 = 1;
  }

  else
  {
    v49 = 2;
  }

  [v47 setNumberOfLines_];

  v50 = *(v44 + 1);
  v87[0] = *v44;
  v87[1] = v50;
  v51 = *(v44 + 2);
  v52 = *(v44 + 3);
  v53 = *(v44 + 4);
  v88 = *(v44 + 10);
  v87[3] = v52;
  v87[4] = v53;
  v87[2] = v51;
  v54 = *&v83[v82];
  sub_20B839890(v87, v94);
  v55 = v54;
  v56 = [v33 contentView];
  v84 = sub_20BD3E708(v55, v56);

  sub_20B8398EC(v87);
  v57 = *(v44 + 1);
  v94[0] = *v44;
  v94[1] = v57;
  v59 = *(v44 + 3);
  v58 = *(v44 + 4);
  v60 = *(v44 + 2);
  v95 = *(v44 + 10);
  v94[3] = v59;
  v94[4] = v58;
  v94[2] = v60;
  v61 = *&v33[v81];
  v62 = *v36;
  sub_20B839890(v94, v92);
  v63 = v61;
  v64 = v62;
  v65 = [v33 contentView];
  v66 = sub_20BD3DD68(v63, v64, v65);

  sub_20B8398EC(v94);
  v67 = *(v44 + 1);
  v92[0] = *v44;
  v92[1] = v67;
  v69 = *(v44 + 3);
  v68 = *(v44 + 4);
  v70 = *(v44 + 2);
  v93 = *(v44 + 10);
  v92[3] = v69;
  v92[4] = v68;
  v92[2] = v70;
  v71 = *&v28[v85];
  v72 = *&v33[v81];
  sub_20B839890(v92, &v86);
  v73 = v71;
  v74 = v72;
  v75 = [v33 contentView];

  v76 = sub_20BD3E11C(v73, v74, v75);
  sub_20B8398EC(v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 32) = v84;
  *(inited + 16) = xmmword_20C1517D0;
  *(inited + 40) = v66;
  *(inited + 48) = v76;
  v78 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v79 = sub_20C13CC54();

  [v78 activateConstraints_];

  return v33;
}

void sub_20BF20054()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PreferredTrainerCell();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_platter] layer];
  [v0 bounds];
  [v1 setCornerRadius_];

  v3 = [*&v0[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkContainer] layer];
  [v3 setCornerRadius_];
}

uint64_t sub_20BF20324(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for PreferredTrainerCell();
  objc_msgSendSuper2(&v15, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        sub_20BF204C0(v13);

        v3 = v13;
      }
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    sub_20BF204C0(v3);
  }

  return swift_unknownObjectUnownedDestroy();
}

void sub_20BF204C0(void *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_titleLabel;
  v3 = *&Strong[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_titleLabel];
  v4 = sub_20B7C6A74(a1);
  [v3 setFont_];

  v5 = *&Strong[v2];
  v6 = [a1 preferredContentSizeCategory];
  LOBYTE(v3) = sub_20C13D424();

  if (v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v5 setNumberOfLines_];
}

id sub_20BF20620(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_titleLabel];
  if (a1)
  {
    v4 = 1.0;
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v3 setTextColor_];

    v6 = *&v1[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_platter];
    v7 = [v6 layer];
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    v9 = [v8 CGColor];

    [v7 setBorderColor_];
  }

  else
  {
    v10 = [objc_opt_self() whiteColor];
    [v3 setTextColor_];

    v6 = *&v1[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_platter];
    v9 = [v6 layer];
    [v9 setBorderColor_];
    v4 = 0.0;
  }

  v11 = [v6 layer];
  [v11 setBorderWidth_];

  return [v1 accessibilityApplyState_];
}

id sub_20BF20800()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreferredTrainerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PreferredTrainerCell()
{
  result = qword_281102C60;
  if (!qword_281102C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF20958()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BF20A18(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BF20A64@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BF20ABC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BF20B40(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v170 = *(v4 - 8);
  v171 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v7 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v154 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v155 = &v133 - v10;
  v153 = v11;
  MEMORY[0x28223BE20](v12);
  v156 = &v133 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v14 - 8);
  v162 = &v133 - v15;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v165 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v152 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v16;
  MEMORY[0x28223BE20](v17);
  v168 = &v133 - v18;
  v161 = sub_20C1391C4();
  v159 = *(v161 - 1);
  MEMORY[0x28223BE20](v161);
  v160 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C138A64();
  v163 = *(v20 - 8);
  v164 = v20;
  MEMORY[0x28223BE20](v20);
  v167 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v22 - 8);
  v158 = &v133 - v23;
  v24 = sub_20C13C554();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20C137C24();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  *&v33 = MEMORY[0x28223BE20](v30).n128_u64[0];
  v35 = &v133 - v34;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x3D)
  {
    v147 = v32;
    v166 = v31;
    v143 = v7;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681A0);
    v37 = swift_projectBox();
    LODWORD(v171) = *(v37 + *(v36 + 64));
    v38 = *(v29 + 16);
    v150 = v29 + 16;
    v170 = v38;
    v38(v35, v37, v28);
    v39 = *&v2[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_titleLabel];

    v40 = sub_20C13C914();

    [v39 setText_];

    v149 = sub_20C138044();
    v42 = v41;
    v148 = sub_20C138054();
    v44 = v43;
    sub_20B51C88C(0, &qword_281100530);
    *v27 = sub_20C13D374();
    (*(v25 + 104))(v27, *MEMORY[0x277D85200], v24);
    LOBYTE(v39) = sub_20C13C584();
    result = (*(v25 + 8))(v27, v24);
    if (v39)
    {
      v46 = *&v2[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView];
      v47 = *&v2[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v46 setContentMode_];
      if (sub_20BA66C54(v35, v46, v47, 0))
      {
        v49 = swift_allocObject();
        v146 = v42;
        v50 = v49;
        v145 = v2;
        swift_unknownObjectWeakInit();
        v144 = v44;
        v140 = v35;
        v170(v166, v35, v28);
        v51 = *(v29 + 80);
        v138 = ObjectType;
        v52 = (v51 + 24) & ~v51;
        v134 = v147 + 7;
        v53 = (v147 + 7 + v52) & 0xFFFFFFFFFFFFFFF8;
        v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
        v139 = v47;
        v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
        v137 = ((v55 + 15) & 0xFFFFFFFFFFFFFFF8);
        v56 = (v55 + 31) & 0xFFFFFFFFFFFFFFF8;
        v136 = v51;
        v57 = swift_allocObject();
        *(v57 + 16) = v50;
        v141 = v29;
        v59 = v29 + 32;
        v58 = *(v29 + 32);
        v60 = v144;
        v142 = v28;
        v61 = v28;
        v62 = v58;
        v135 = v59;
        (v58)(v57 + v52, v166, v61);
        v63 = (v57 + v53);
        v64 = v146;
        *v63 = v149;
        v63[1] = v64;
        v65 = (v57 + v54);
        *v65 = v148;
        v65[1] = v60;
        *(v57 + v55) = 2;
        v66 = v139;
        v67 = v137 + v57;
        *v67 = MEMORY[0x277D84F90];
        v67[8] = 0;
        v68 = (v57 + v56);
        *v68 = 0;
        v68[1] = 0;
        v69 = *(v66 + 152);

        v70 = v138;
        v69(sub_20BF21D60, v57, v138, v66);

        [v46 bounds];
        if (v71 <= 0.0 || (v73 = v72, v72 <= 0.0))
        {

          v28 = v142;
          v29 = v141;
          v35 = v140;
        }

        else
        {
          v74 = v71;
          v75 = v70;
          v133 = ~v136;
          (*(v66 + 120))(0, v70, v66);
          v76 = v158;
          v35 = v140;
          v137 = v62;
          v28 = v142;
          v77 = v170;
          v170(v158, v140, v142);
          v29 = v141;
          (*(v141 + 56))(v76, 0, 1, v28);
          (*(v66 + 16))(v76, v75, v66);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v78 = sub_20C13D5A4();
          [v46 setBackgroundColor_];

          (*(v66 + 176))(COERCE_DOUBLE(*&v74), COERCE_DOUBLE(*&v73), 0, v75, v66);
          v158 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v79 = v166;
          v77(v166, v35, v28);
          v80 = (v136 + 16) & v133;
          v81 = (v134 + v80) & 0xFFFFFFFFFFFFFFF8;
          v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
          v83 = swift_allocObject();
          v137(v83 + v80, v79, v28);
          *(v83 + v81) = v158;
          v84 = (v83 + v82);
          *v84 = v74;
          v84[1] = v73;
          v158 = v83;
          v85 = (v83 + ((v82 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v85 = 0;
          v85[1] = 0;
          v170(v79, v35, v28);
          (*(v159 + 104))(v160, *MEMORY[0x277D542A8], v161);
          v86 = v167;
          sub_20C138A54();
          v87 = v162;
          sub_20B5F19B0(v86, v162);
          v88 = v165;
          v89 = v169;
          if ((*(v165 + 48))(v87, 1, v169) == 1)
          {
            sub_20B520158(v87, &unk_27C766670);
            sub_20BA1D9EC();

            (*(v163 + 8))(v86, v164);
          }

          else
          {
            v161 = *(v88 + 32);
            v161(v168, v87, v89);
            v103 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v104 = v166;
            v170(v166, v35, v28);
            v105 = (v136 + 40) & v133;
            v106 = v105 + v147;
            v107 = (v105 + v147) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 2) = v103;
            v108[3] = v74;
            v108[4] = v73;
            v137(v108 + v105, v104, v28);
            *(v108 + v106) = 0;
            v109 = v108 + v107;
            *(v109 + 1) = 0;
            *(v109 + 2) = 0;
            v110 = swift_allocObject();
            *(v110 + 16) = sub_20BF21EF4;
            *(v110 + 24) = v108;
            v111 = v152;
            (*(v88 + 16))(v152, v168, v89);
            v112 = (*(v88 + 80) + 16) & ~*(v88 + 80);
            v113 = (v151 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
            v114 = swift_allocObject();
            v161((v114 + v112), v111, v89);
            v115 = (v114 + v113);
            *v115 = sub_20B5F67A4;
            v115[1] = v110;
            v116 = v155;
            sub_20C137C94();
            v117 = swift_allocObject();
            v118 = v158;
            *(v117 + 16) = sub_20BF21E38;
            *(v117 + 24) = v118;
            v119 = swift_allocObject();
            *(v119 + 16) = sub_20B5F67D4;
            *(v119 + 24) = v117;
            v120 = v143;
            v121 = v154;
            v122 = v157;
            (*(v143 + 16))(v154, v116, v157);
            v123 = (*(v120 + 80) + 16) & ~*(v120 + 80);
            v124 = (v153 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
            v125 = swift_allocObject();
            (*(v120 + 32))(v125 + v123, v121, v122);
            v126 = (v125 + v124);
            *v126 = sub_20B5DF204;
            v126[1] = v119;

            v127 = v156;
            sub_20C137C94();
            v128 = *(v120 + 8);
            v129 = v116;
            v28 = v142;
            v128(v129, v122);
            v130 = sub_20C137CB4();
            v131 = swift_allocObject();
            *(v131 + 16) = 0;
            *(v131 + 24) = 0;
            v130(sub_20B52347C, v131);

            v132 = v122;
            v29 = v141;
            v128(v127, v132);
            v35 = v140;
            (*(v88 + 8))(v168, v169);
            (*(v163 + 8))(v167, v164);
          }
        }
      }

      else
      {
      }

      sub_20BF20620(v171);
      return (*(v29 + 8))(v35, v28);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_titleLabel] setText_];
    v90 = *&v2[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView + 8];
    v91 = swift_getObjectType();
    (*(v90 + 120))(0, v91, v90);
    sub_20C13B534();

    v92 = v2;
    v93 = sub_20C13BB74();
    v94 = sub_20C13D1D4();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v172 = a1;
      v173 = v97;
      *v95 = 138543618;
      *(v95 + 4) = v92;
      *v96 = v92;
      *(v95 + 12) = 2082;
      v98 = sub_20B5F66D0();
      v99 = v92;
      v100 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v98);
      v102 = sub_20B51E694(v100, v101, &v173);

      *(v95 + 14) = v102;
      _os_log_impl(&dword_20B517000, v93, v94, "Attempted to configure %{public}@ with item: %{public}s", v95, 0x16u);
      sub_20B520158(v96, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v96, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v97);
      MEMORY[0x20F2F6A40](v97, -1, -1);
      MEMORY[0x20F2F6A40](v95, -1, -1);
    }

    return (*(v170 + 1))(v6, v171);
  }

  return result;
}

void sub_20BF21D60()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA3DB7C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BF21E38(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63060(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BF21EF4(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2768(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20BF21FA8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_layout;
  sub_20BD3E4B4(v15);
  v4 = v15[3];
  *(v3 + 32) = v15[2];
  *(v3 + 48) = v4;
  *(v3 + 64) = v15[4];
  *(v3 + 80) = v16;
  v5 = v15[1];
  *v3 = v15[0];
  *(v3 + 16) = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_platter;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setClipsToBounds_];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setAllowsDefaultTighteningForTruncation_];
  [v9 setAdjustsFontSizeToFitWidth_];
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkContainer;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setClipsToBounds_];
  *(v0 + v10) = v11;
  v12 = (v0 + OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView);
  v13 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v14 = sub_20B91B5FC(1);
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setClipsToBounds_];

  *v12 = v14;
  v12[1] = &off_2822B63E8;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20BF22244()
{
  result = qword_27C770730;
  if (!qword_27C770730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770730);
  }

  return result;
}

uint64_t PlaylistDetailViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

void sub_20BF223CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider);
    v4 = Strong;

    if (*(a1 + 16) && (sub_20C134DC4(), sub_20B7D69C4(), v5 = *(v3 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page), v6 = &v5[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate], swift_unknownObjectWeakLoadStrong()))
    {
      v7 = *(v6 + 1);
      swift_getObjectType();
      v8 = *(v7 + 120);
      v9 = v5;
      v8();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_20BF2251C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v42 - v3;
  v4 = sub_20C138204();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v46 = v0;
      v19 = *(v18 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider);
      v20 = v18;

      v21 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
      swift_beginAccess();
      sub_20BF28D00(v19 + v21, v15);

      if ((*(v5 + 48))(v15, 1, v4))
      {
        sub_20B520158(v15, &qword_27C7643F0);
        v22 = 0;
      }

      else
      {
        (*(v5 + 16))(v9, v15, v4);
        sub_20B520158(v15, &qword_27C7643F0);
        sub_20C1381D4();
        (*(v5 + 8))(v9, v4);
        v22 = sub_20C13C914();
      }

      v1 = v46;
    }

    else
    {
      v22 = 0;
    }

    [v17 setTitle_];
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = *(result + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider);
    v25 = result;

    v26 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
    swift_beginAccess();
    sub_20BF28D00(v24 + v26, v12);

    if ((*(v5 + 48))(v12, 1, v4))
    {
      return sub_20B520158(v12, &qword_27C7643F0);
    }

    v46 = v1;
    v27 = v44;
    (*(v5 + 16))(v44, v12, v4);
    sub_20B520158(v12, &qword_27C7643F0);
    v28 = sub_20C1381E4();
    (*(v5 + 8))(v27, v4);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = sub_20BEDE85C(*(v28 + 16), 0);
      v31 = *(sub_20C133B74() - 8);
      v32 = sub_20BEE200C(&v45, &v30[(*(v31 + 80) + 32) & ~*(v31 + 80)], v29, v28);

      sub_20B583EDC();
      if (v32 == v29)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    v30 = MEMORY[0x277D84F90];
LABEL_16:
    v33 = v46;
    v45 = v30;
    sub_20BF2663C(&v45);
    if (v33)
    {

      __break(1u);
    }

    else
    {

      v34 = v45;
      swift_beginAccess();
      v35 = swift_unknownObjectWeakLoadStrong();
      if (v35)
      {
        v36 = *(v35 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsViewPresenter);
        v37 = v35;

        v38 = sub_20BEF6794(v34);

        *(v36 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_items) = v38;

        v39 = sub_20C13CDF4();
        v40 = v43;
        (*(*(v39 - 8) + 56))(v43, 1, 1, v39);
        v41 = swift_allocObject();
        v41[2] = 0;
        v41[3] = 0;
        v41[4] = v36;
        v41[5] = v38;
        sub_20B6383D0(0, 0, v40, &unk_20C184730, v41);
      }
    }
  }

  return result;
}

void sub_20BF22B48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20BF22B9C();
  }
}

uint64_t sub_20BF22B9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v34 = &v28 - v6;
  MEMORY[0x28223BE20](v7);
  v33 = &v28 - v8;
  v10 = v9;
  sub_20B7D7B40(0, v9);
  sub_20B51C88C(0, &qword_281100530);
  v31 = sub_20C13D374();
  v32 = *(v1 + 16);
  v32(v3, v10, v0);
  v11 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v30 = v11;
  v12 = (v2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = v12;
  v13 = swift_allocObject();
  v29 = *(v1 + 32);
  v29(v13 + v11, v3, v0);
  *(v13 + v12) = v31;
  sub_20C137C94();
  v14 = *(v1 + 8);
  v31 = v1 + 8;
  v15 = v0;
  v14(v10, v0);
  v16 = v14;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20BF28CF8;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20B5DF3B8;
  *(v19 + 24) = v18;
  v20 = v34;
  v32(v10, v34, v15);
  v21 = v28;
  v22 = swift_allocObject();
  v29(v22 + v30, v10, v15);
  v23 = (v22 + v21);
  *v23 = sub_20B5DF3D4;
  v23[1] = v19;
  v24 = v33;
  sub_20C137C94();
  v16(v20, v15);
  v25 = sub_20C137CB4();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v25(sub_20B52347C, v26);

  return (v16)(v24, v15);
}

id PlaylistDetailViewController.__allocating_init(dependencies:pageContext:pageNavigator:playlistIdentifier:)(uint64_t a1, void (*a2)(unint64_t, char *, uint64_t), unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31[-v15 - 8];
  v17 = sub_20C138204();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  type metadata accessor for PlaylistDetailDataProvider();
  swift_allocObject();

  sub_20B58C2C8(a2, a3);
  v18 = sub_20B7DA994(a5, a6, a1, a2, a3, v16);

  sub_20B51CC64(a4, v31);
  v19 = objc_allocWithZone(v7);
  v20 = v32;
  v21 = v33;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v31[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v26 + 16))(v25, v23);

  v27 = sub_20BF27DF8(a1, v18, a2, a3, v25, v19, v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v31);
  v28 = v27;
  sub_20BF23204(&unk_28228E498);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v28;
}

void sub_20BF23204(uint64_t a1)
{
  if (_UISolariumEnabled())
  {
    sub_20B51C88C(0, &qword_27C770510);
    v3 = sub_20C13C914();
    v4 = [objc_opt_self() systemImageNamed_];

    v5 = sub_20C13D264();
    v6 = sub_20BF250AC(a1);
    [v5 setMenu_];

    v15 = [v1 navigationItem];
    [v15 setRightBarButtonItem_];
  }

  else
  {
    v7 = [v1 navigationItem];
    v8 = sub_20BF250AC(a1);
    v9 = sub_20BCC0CC0(v8, MEMORY[0x277D84FA0], 0);

    v10 = type metadata accessor for DynamicScrollObservingBarButtonItem();
    v11 = objc_allocWithZone(v10);
    v12 = &v11[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
    *v12 = v9;
    v12[1] = &off_2822DD228;
    v16.receiver = v11;
    v16.super_class = v10;
    v13 = v9;
    v14 = objc_msgSendSuper2(&v16, sel_init);
    [v14 setCustomView_];

    [v7 setRightBarButtonItem_];
  }
}

id PlaylistDetailViewController.__allocating_init(dependencies:pageContext:pageNavigator:lockup:)(uint64_t a1, void (*a2)(unint64_t, char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a4 + 24);
  v12 = *(a4 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_20BF27A54(a1, a2, a3, v16, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v18;
}

id PlaylistDetailViewController.__allocating_init(dependencies:pageContext:pageNavigator:playlist:)(uint64_t a1, void (*a2)(unint64_t, char *, uint64_t), unint64_t a3, uint64_t a4, char *a5)
{
  v46 = a5;
  v44 = a4;
  v41 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_20C138204();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 16);
  v16(v15, a5, v11, v13);

  v17 = a2;
  v18 = a2;
  v42 = a2;
  v43 = a3;
  v19 = a3;
  sub_20B58C2C8(v17, a3);
  v20 = sub_20C1381A4();
  v22 = v21;
  (v16)(v10, v15, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  type metadata accessor for PlaylistDetailDataProvider();
  swift_allocObject();
  v23 = v22;
  v24 = v41;
  v25 = sub_20B7DA994(v20, v23, v41, v18, v19, v10);
  v26 = v24;

  v27 = *(v12 + 8);
  v27(v15, v11);
  v28 = v44;
  sub_20B51CC64(v44, v47);
  v29 = objc_allocWithZone(v45);
  v30 = v48;
  v31 = v49;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v40 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35, v33);

  v37 = sub_20BF27DF8(v26, v25, v42, v43, v35, v29, v30, v31);
  __swift_destroy_boxed_opaque_existential_1(v47);
  v38 = v37;
  sub_20BF23204(&unk_28228E4E8);

  v27(v46, v11);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v38;
}

uint64_t PlaylistDetailViewController.supportedInterfaceOrientations.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_platform) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

Swift::Void __swiftcall PlaylistDetailViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v17 - v5;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_viewDidLoad, v4);
  v7 = *&v1[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider];
  sub_20B7DA2FC();
  v8 = *(*(v7 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = (v8 + 40);
    do
    {
      v11 = *v10;
      v12 = swift_getObjectType();
      v13 = *(v11 + 48);
      swift_unknownObjectRetain();
      v13(v12, v11);
      swift_unknownObjectRelease();
      v10 += 2;
      --v9;
    }

    while (v9);
  }

  sub_20BF23AD4();
  sub_20BAD5E3C();
  v14 = *&v1[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsViewPresenter];
  v15 = sub_20C13CDF4();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;

  sub_20B638964(0, 0, v6, &unk_20C184460, v16);
}

void sub_20BF23AD4()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider];
  v2 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page;
  *(*(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = &off_2822F7198;
  swift_unknownObjectWeakAssign();
  [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  v5 = *(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  [v4 addSubview_];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  v8 = *&v0[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsView];
  [v6 addSubview_];

  v9 = [v0 navigationItem];
  [v9 setLargeTitleDisplayMode_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  v11 = [v8 leadingAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v15 = [v11 constraintEqualToAnchor:v14 constant:*&qword_27C799F40];

  *(inited + 32) = v15;
  v16 = [v8 trailingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = v17;
  v19 = [v17 trailingAnchor];

  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v20 = [v16 constraintEqualToAnchor:v19 constant:-*&qword_27C799F50];

  *(inited + 40) = v20;
  v21 = [v8 topAnchor];
  v22 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) bottomAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(inited + 48) = v23;
  v24 = [v8 bottomAnchor];
  v25 = [v0 view];
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = v25;
  v27 = [v25 safeAreaLayoutGuide];

  v28 = [v27 bottomAnchor];
  v29 = [v24 constraintEqualToAnchor_];

  *(inited + 56) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20C14FE90;
  v31 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) leadingAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = [v31 constraintEqualToAnchor_];
  *(v30 + 32) = v35;
  v36 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) trailingAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = v37;
  v39 = [v37 trailingAnchor];

  v40 = [v36 constraintEqualToAnchor_];
  *(v30 + 40) = v40;
  v41 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) topAnchor];
  v42 = [v0 view];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 topAnchor];

    v45 = [v41 constraintEqualToAnchor_];
    *(v30 + 48) = v45;
    v46 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) bottomAnchor];
    v47 = [v8 topAnchor];
    v48 = [v46 constraintEqualToAnchor_];

    *(v30 + 56) = v48;
    v49 = objc_opt_self();
    sub_20B8D9310(inited);
    sub_20B51C88C(0, &qword_281100500);
    v50 = sub_20C13CC54();

    [v49 activateConstraints_];

    return;
  }

LABEL_21:
  __break(1u);
}

Swift::Void __swiftcall PlaylistDetailViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v38.receiver = v1;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, sel_viewWillAppear_, a1);
  v4 = [v1 navigationController];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [v4 viewControllers];

  sub_20B51C88C(0, &qword_281100550);
  v7 = sub_20C13CC74();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!sub_20C13DB34())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x20F2F5430](0, v7);
    goto LABEL_7;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
LABEL_7:
    v9 = v8;

    v35 = ObjectType;
    v32 = v1;
    v10 = v1;
    v11 = sub_20C13C914();
    v12 = v35;
    if (v35)
    {
      v13 = __swift_project_boxed_opaque_existential_1(&v32, v35);
      v14 = *(v12 - 8);
      v15 = MEMORY[0x28223BE20](v13);
      v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = sub_20C13DFD4();
      (*(v14 + 8))(v17, v12);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
      v18 = 0;
    }

    v19 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v20 = [v19 initWithTitle:v11 style:0 target:v18 action:{sel_backButtonPressed, v32}];

    swift_unknownObjectRelease();
    v21 = [v9 navigationItem];
    [v21 setBackBarButtonItem_];

LABEL_13:
    v22 = *&v1[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentNavigationBarTintColor];
    if (v22)
    {
      v23 = *&v1[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentNavigationBarTintColor];
    }

    else
    {
      v23 = *&v1[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_standardNavigationBarTintColor];
      v22 = 0;
    }

    v24 = v22;
    v25 = [v1 navigationController];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 navigationBar];

      [v27 setTintColor_];
    }

    v28 = &v1[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior];
    v29 = v1[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior + 16];
    if (v29 > 0xFB)
    {
      goto LABEL_24;
    }

    if (v29 >> 6)
    {
      if (v29 >> 6 != 1)
      {
        v30 = *v28;
        v31 = *(v28 + 1);
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_20C13DC94();
        v36 = v32;
        v37 = v33;
        MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
        v32 = v30;
        v33 = v31;
        v34 = v29;
        sub_20C13DDF4();
        sub_20C1380E4();

        goto LABEL_24;
      }

      v29 = 0;
    }

    sub_20BE8F76C(v29);
LABEL_24:

    return;
  }

  __break(1u);
}

Swift::Void __swiftcall PlaylistDetailViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_viewDidAppear_, a1, v7);
  v10[1] = v2;
  (*(v6 + 16))(v9, *&v2[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_metricPage, v5);
  sub_20BF28F28(&qword_27C770778);
  sub_20C138C54();
  (*(v6 + 8))(v9, v5);
  sub_20BF28F28(&qword_27C770780);
  sub_20BF28F28(&qword_27C770788);
  sub_20C139364();
}

Swift::Void __swiftcall PlaylistDetailViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, sel_viewWillDisappear_, a1, v7);
  v10 = [v2 navigationController];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 viewControllers];

  sub_20B51C88C(0, &qword_281100550);
  v13 = sub_20C13CC74();

  if (v13 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x20F2F5430](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 navigationItem];
  [v16 setBackBarButtonItem_];

LABEL_10:
  v23 = v2;
  sub_20C132E84();
  sub_20BF28F28(&qword_27C770780);
  sub_20C139274();
  (*(v6 + 8))(v9, v5);
  v17 = [v2 navigationController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v20 = sub_20C13CC74();

    v23 = v2;
    MEMORY[0x28223BE20](v21);
    *(&v22 - 2) = &v23;
    LOBYTE(v19) = sub_20B79AEEC(sub_20B5978BC, (&v22 - 4), v20);

    if ((v19 & 1) == 0)
    {
      v23 = v2;
      sub_20BF28F28(&qword_27C770778);
      sub_20C138C64();
    }
  }
}

Swift::Void __swiftcall PlaylistDetailViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  sub_20BF28F28(&qword_27C770780);
  sub_20BF28F28(&qword_27C770788);
  sub_20C139374();
}

Swift::Void __swiftcall PlaylistDetailViewController.viewDidLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v3 = v1;
  [v2 bounds];
  sub_20B9D8614(v4, v5, v6, v7);
}

uint64_t sub_20BF250AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20C13DD64();
    sub_20B51C88C(0, &qword_27C7713A0);
    v5 = (v1 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer);
    v6 = (a1 + 32);
    do
    {
      v12 = *v6++;
      v11 = v12;
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_20C138D34();

      v7 = sub_20C13C914();
      v8 = [objc_opt_self() smm:v7 systemImageNamed:?];

      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = v11;
      sub_20C13D624();
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      --v2;
    }

    while (v2);
    v3 = aBlock[0];
  }

  v13 = objc_opt_self();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v3;
  aBlock[4] = sub_20BF28F20;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  aBlock[3] = &block_descriptor_52;
  v16 = _Block_copy(aBlock);

  v17 = [v13 elementWithUncachedProvider_];
  _Block_release(v16);
  sub_20B51C88C(0, &unk_27C76FED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C14F580;
  *(v18 + 32) = v17;
  return sub_20C13D554();
}

void sub_20BF254D8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_20B7D7584(a3);
  }

  if (a3)
  {
    if (a3 == 1)
    {
      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        sub_20B7D5A5C();
      }
    }

    else
    {
      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_20B7D5D9C(sub_20BF28F68, v14);
      }
    }
  }

  else
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      if (_UISolariumEnabled())
      {
        v10 = [v9 navigationItem];
        v11 = [v10 rightBarButtonItem];
      }

      else
      {
        v11 = 0;
      }

      sub_20B7D4F48(v11);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_20BF256A0(void (*a1)(unint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20BF257A8();
  }

  if (a4 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v9 = sub_20C13DE34();

    a4 = v9;
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
  }

  a1(a4);
}

uint64_t sub_20BF257A8()
{
  ObjectType = swift_getObjectType();
  v27 = sub_20C1333A4();
  v1 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_20C1352E4();
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C134F24();
  v10 = *(v25 - 8);
  v11 = MEMORY[0x28223BE20](v25);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v0;
  (*(v10 + 104))(v13, *MEMORY[0x277D51390], v11);
  (*(v7 + 104))(v9, *MEMORY[0x277D51768], v6);
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider);
  v22 = *(*(v14 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v15 = *MEMORY[0x277D523D8];
  v16 = sub_20C135ED4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v5, v15, v16);
  (*(v17 + 56))(v5, 0, 1, v16);
  v18 = v14 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_metricPage;
  v20 = v26;
  v19 = v27;
  (*(v1 + 16))(v26, v18, v27);
  sub_20BF28F28(&qword_27C7707F0);

  sub_20C138D94();

  (*(v1 + 8))(v20, v19);
  sub_20B520158(v5, &unk_27C7621D0);
  (*(v24 + 8))(v9, v23);
  return (*(v10 + 8))(v13, v25);
}

void sub_20BF25BC4(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_20BF23204(&unk_28228E510);
    }
  }
}

uint64_t sub_20BF25C28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_20C138204();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v4 + 56))(v2, 1, 1, v3);
    return sub_20B520158(v2, &qword_27C7643F0);
  }

  v8 = *(Strong + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider);
  v9 = Strong;

  v10 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
  swift_beginAccess();
  sub_20BF28D00(v8 + v10, v2);

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_20B520158(v2, &qword_27C7643F0);
  }

  (*(v4 + 32))(v6, v2, v3);
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_20C1381D4();
    v13 = sub_20C13C914();

    [v12 setTitle_];
  }

  return (*(v4 + 8))(v6, v3);
}

id PlaylistDetailViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PlaylistDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BF260B0(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_standardNavigationBarTintColor];
    }

    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentNavigationBarTintColor] = v2;
    v4 = v2;

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    v10[4] = sub_20B7C9A90;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20B7B548C;
    v10[3] = &block_descriptor_152;
    v7 = _Block_copy(v10);
    v8 = v4;
    v9 = v1;

    [v5 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
  }
}

uint64_t sub_20BF26260(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

uint64_t sub_20BF26344@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20BF263FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider);
  v4 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BF264D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BF265B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_20BF28F28(&qword_27C770780);

  return a3(ObjectType, v5, a2);
}

void sub_20BF2663C(void **a1)
{
  v2 = *(sub_20C133B74() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0DD0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BF266E4(v5);
  *a1 = v3;
}

void sub_20BF266E4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C133B74();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C133B74() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BF26AB8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20BF26810(0, v2, 1, a1);
  }
}

void sub_20BF26810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C133B74();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_20C133B44();
      v28 = sub_20C133B44();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20BF26AB8(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C133B74();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_20B6A07A0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_20BF2749C(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_20B6A0714(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_20C133B44();
      v126 = sub_20C133B44();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_20C133B44();
        v39 = sub_20C133B44();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_20BC05740(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_20BC05740((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_20BF2749C(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_20B6A0714(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9, v17);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C133B44();
    v104 = sub_20C133B44();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_20BF2749C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C133B74();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_20C133B44();
          v45 = sub_20C133B44();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_20C133B44();
        v26 = sub_20C133B44();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_20B6A07CC(&v64, &v63, &v62);
}

id sub_20BF27A54(uint64_t a1, void (*a2)(unint64_t, char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5, objc_class *a6, objc_class *a7, uint64_t a8)
{
  v36 = a3;
  v37 = a8;
  v40 = a6;
  v41 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  v15 = *(a7 - 1);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v35 - v21;
  (*(v15 + 32))(&v35 - v21, a4, a7, v20);
  v39 = sub_20C133E44();
  v24 = v23;
  v25 = sub_20C138204();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  type metadata accessor for PlaylistDetailDataProvider();
  swift_allocObject();

  v26 = v36;
  sub_20B58C2C8(a2, v36);
  v27 = sub_20B7DA994(v39, v24, a1, a2, v26, v14);

  v28 = objc_allocWithZone(v40);
  v38 = v15;
  v39 = v22;
  (*(v15 + 16))(v18, v22, a7);

  v40 = a7;
  v29 = sub_20BF27DF8(a1, v27, a2, v26, v18, v28, a7, v37);
  sub_20B51CC64(v29 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_mediaTagStringBuilder, v42);
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  v30 = v29;
  sub_20C134004();
  v31 = sub_20C138544();

  v32 = [v31 string];

  if (!v32)
  {
    sub_20C13C954();
    v32 = sub_20C13C914();
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  [v30 setTitle_];

  sub_20BF23204(&unk_28228E4C0);

  v33 = sub_20C134014();
  (*(*(v33 - 8) + 8))(v41, v33);
  (*(v38 + 8))(v39, v40);
  return v30;
}

uint64_t sub_20BF27DF8(uint64_t a1, char *a2, void (*a3)(unint64_t, char *, uint64_t), unint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v97 = a4;
  v96 = a3;
  ObjectType = swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v14 - 8);
  v85 = &v85 - v15;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v88 = &v85 - v18;
  MEMORY[0x28223BE20](v19);
  v89 = &v85 - v20;
  v86 = v21;
  MEMORY[0x28223BE20](v22);
  v91 = &v85 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v24 - 8);
  v98 = (&v85 - v25);
  v26 = sub_20C138204();
  v100 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v94 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103[3] = a7;
  v103[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v103);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_resignActiveObserver] = 0;
  v29 = &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = -4;
  a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isTransitioningContentInset] = 0;
  a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_visibility] = 1;
  v30 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_standardNavigationBarTintColor;
  v31 = objc_opt_self();
  *&a6[v30] = [v31 whiteColor];
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentNavigationBarTintColor] = 0;
  a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isBeyondScrollBoundary] = 0;
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  v32 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_mediaTagStringBuilder;
  sub_20B51C710(&v102, &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_mediaTagStringBuilder]);
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider] = a2;
  v33 = &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_contentInsetInitialBehavior];
  *v33 = 0;
  v33[8] = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_eventHub] = v102;
  sub_20B51CC64(v103, &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_platform] = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v102, &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_bookmarkClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v102, &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(&v102, &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_subscriptionToken] = sub_20C13A914();
  v34 = *(a2 + 4);
  v35 = *(a2 + 5);
  type metadata accessor for QueueActionsViewPresenter();
  v36 = swift_allocObject();

  v37 = sub_20BF91BD8(a1, v34, v35, a2, v36);
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsViewPresenter] = v37;
  sub_20B51CC64(&a6[v32], &v102);
  v38 = objc_allocWithZone(type metadata accessor for QueueActionsView());

  v95 = a1;
  v39 = sub_20BF91514(a1, v37, &v102, 0, v38);
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsView] = v39;
  v101.receiver = a6;
  v101.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v101, sel_initWithNibName_bundle_, 0, 0);
  v41 = [v40 view];
  if (v41)
  {
    v42 = v41;
    sub_20B58CFB0(v96, v97);
    v43 = [v31 systemBackgroundColor];
    [v42 setBackgroundColor_];

    v44 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsViewPresenter;
    v45 = *&v40[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsViewPresenter];
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = (v45 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
    v48 = *(v45 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
    *v47 = sub_20BF28F70;
    v47[1] = v46;

    sub_20B583ECC(v48);

    v49 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
    swift_beginAccess();
    v50 = &a2[v49];
    v51 = v98;
    sub_20BF28D00(v50, v98);
    v52 = v100;
    LODWORD(v45) = (*(v100 + 6))(v51, 1, v26);

    v93 = a2;
    if (v45 == 1)
    {
      sub_20B520158(v51, &qword_27C7643F0);
      v100 = v40;
      v53 = v88;
      sub_20B7D7B40(0, v88);
      sub_20B51C88C(0, &qword_281100530);
      v98 = sub_20C13D374();
      v54 = v90;
      ObjectType = *(v90 + 16);
      v55 = v87;
      v56 = v92;
      (ObjectType)(v87, v53, v92);
      v57 = (*(v54 + 80) + 16) & ~*(v54 + 80);
      v97 = v57;
      v58 = (v86 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      v96 = *(v54 + 32);
      v96(v59 + v57, v55, v56);
      *(v59 + v58) = v98;
      v60 = v89;
      sub_20C137C94();
      v98 = *(v54 + 8);
      (v98)(v53, v56);
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = swift_allocObject();
      *(v62 + 16) = sub_20BF290D8;
      *(v62 + 24) = v61;
      (ObjectType)(v53, v60, v56);
      v63 = swift_allocObject();
      v64 = v53;
      v40 = v100;
      v96(v63 + v97, v64, v56);
      v65 = (v63 + v58);
      *v65 = sub_20B66A8B4;
      v65[1] = v62;
      v66 = v91;
      sub_20C137C94();
      v67 = v60;
      v68 = v98;
      (v98)(v67, v56);
      v69 = sub_20C137CB4();
      v70 = swift_allocObject();
      *(v70 + 16) = 0;
      *(v70 + 24) = 0;
      v69(sub_20B5DF6DC, v70);

      v68(v66, v56);
LABEL_9:
      swift_getObjectType();
      sub_20C13A7B4();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectRetain();

      sub_20C13A7A4();

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(&v102);
      __swift_destroy_boxed_opaque_existential_1(v103);

      return v40;
    }

    v71 = v26;
    (*(v52 + 4))(v94, v51, v26);
    sub_20C1381D4();
    v72 = sub_20C13C914();

    [v40 setTitle_];

    v73 = sub_20C1381E4();
    v74 = *(v73 + 16);
    if (!v74)
    {
      a2 = MEMORY[0x277D84F90];
      goto LABEL_8;
    }

    v98 = v44;
    ObjectType = v71;
    a2 = sub_20BEDE85C(v74, 0);
    v75 = *(sub_20C133B74() - 8);
    v76 = sub_20BEE200C(&v102, &a2[(*(v75 + 80) + 32) & ~*(v75 + 80)], v74, v73);

    sub_20B583EDC();
    if (v76 == v74)
    {
      v71 = ObjectType;
      v52 = v100;
      v44 = v98;
LABEL_8:
      *&v102 = a2;
      sub_20BF8F460(&v102);

      v77 = v102;
      v78 = *(v44 + v40);

      v79 = sub_20BEF6794(v77);

      *(v78 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_items) = v79;

      v80 = sub_20C13CDF4();
      v81 = v85;
      (*(*(v80 - 8) + 56))(v85, 1, 1, v80);
      v82 = swift_allocObject();
      v82[2] = 0;
      v82[3] = 0;
      v82[4] = v78;
      v82[5] = v79;

      sub_20B6383D0(0, 0, v81, &unk_20C184740, v82);

      (*(v52 + 1))(v94, v71);
      v83 = v40;
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_20BF28BD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20C116710(a1);
}

uint64_t sub_20BF28D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BF28D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20C1167AC(a1, v4, v5, v7, v6);
}

void sub_20BF28E30()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_resignActiveObserver) = 0;
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_visibility) = 1;
  v2 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_standardNavigationBarTintColor;
  *(v0 + v2) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BF28F28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlaylistDetailViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20BF29020(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BF90A2C(a1, a2, v2 + v6, v7);
}

uint64_t objectdestroy_35Tm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20BF29144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20C1167AC(a1, v4, v5, v7, v6);
}

uint64_t sub_20BF2922C(char a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 144);
    v39[1] = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 128);
    v39[2] = v7;
    v40 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 160);
    v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 80);
    v36 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 64);
    v37 = v8;
    v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 112);
    v38 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 96);
    v39[0] = v9;
    v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 16);
    v32 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow);
    v33 = v10;
    v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 48);
    v34 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 32);
    v35 = v11;
    sub_20B52F9E8(&v32, &v41, &qword_27C762340);
  }

  else
  {
    v32 = 0uLL;
    LOBYTE(v33) = 1;
    *(&v33 + 1) = 0;
    *&v34 = 0;
    WORD4(v34) = 128;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    LOBYTE(v38) = 0;
    *(&v38 + 1) = MEMORY[0x277D84F90];
    *&v39[0] = MEMORY[0x277D84F90];
    *(v39 + 8) = 0u;
    *(&v39[1] + 8) = 0u;
    *(&v39[2] + 1) = 0;
    v40 = 2;
    nullsub_1(&v32);
  }

  v49 = v39[1];
  v50 = v39[2];
  v51 = v40;
  v45 = v36;
  v46 = v37;
  v47 = v38;
  v48 = v39[0];
  v41 = v32;
  v42 = v33;
  v43 = v34;
  v44 = v35;
  v12 = *(v1 + 160);
  v39[1] = *(v1 + 144);
  v39[2] = v12;
  v40 = *(v1 + 176);
  v13 = *(v1 + 96);
  v36 = *(v1 + 80);
  v37 = v13;
  v14 = *(v1 + 128);
  v38 = *(v1 + 112);
  v39[0] = v14;
  v15 = *(v1 + 32);
  v32 = *(v1 + 16);
  v33 = v15;
  v16 = *(v1 + 64);
  v34 = *(v1 + 48);
  v35 = v16;
  v17 = v50;
  *(v1 + 144) = v49;
  *(v1 + 160) = v17;
  *(v1 + 176) = v51;
  v18 = v46;
  *(v1 + 80) = v45;
  *(v1 + 96) = v18;
  v19 = v48;
  *(v1 + 112) = v47;
  *(v1 + 128) = v19;
  v20 = v42;
  *(v1 + 16) = v41;
  *(v1 + 32) = v20;
  v21 = v44;
  *(v1 + 48) = v43;
  *(v1 + 64) = v21;
  sub_20B520158(&v32, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v24 = sub_20B61D398(v1, result);
      if (v25)
      {
        v27 = v24;
        v28 = v25;
        v29 = v26;
        v30 = v1;
        sub_20B5E2E18();
        *v6 = sub_20C13D374();
        (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
        v31 = sub_20C13C584();
        result = (*(v4 + 8))(v6, v3);
        if ((v31 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B61EB94(v27, v28, v29, v30, 1, v23);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BF29530()
{
  v1 = *(v0 + 160);
  v14[8] = *(v0 + 144);
  v14[9] = v1;
  v15 = *(v0 + 176);
  v2 = *(v0 + 96);
  v14[4] = *(v0 + 80);
  v14[5] = v2;
  v3 = *(v0 + 128);
  v14[6] = *(v0 + 112);
  v14[7] = v3;
  v4 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v14[1] = v4;
  v5 = *(v0 + 64);
  v14[2] = *(v0 + 48);
  v14[3] = v5;
  sub_20B520158(v14, &qword_27C762340);
  sub_20B583E6C(v0 + 184);
  v6 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_identifier;
  v7 = sub_20C132EE4();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_preview, &unk_27C7623C0);

  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 144);
  v16[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 128);
  v16[9] = v8;
  v17 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 160);
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 80);
  v16[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 64);
  v16[5] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 112);
  v16[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 96);
  v16[7] = v10;
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 16);
  v16[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow);
  v16[1] = v11;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 48);
  v16[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 32);
  v16[3] = v12;
  sub_20B520158(v16, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_storefrontLocalizer);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVFilterDetailHeaderShelf()
{
  result = qword_27C7707F8;
  if (!qword_27C7707F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF2971C()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20BF29810();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BF29810()
{
  if (!qword_27C76A130)
  {
    sub_20C134284();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76A130);
    }
  }
}

uint64_t sub_20BF29868@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20BF29900(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

__n128 sub_20BF29944@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 160);
  v22 = *(v1 + 144);
  v23 = v3;
  v24 = *(v1 + 176);
  v4 = *(v1 + 96);
  v18 = *(v1 + 80);
  v19 = v4;
  v5 = *(v1 + 128);
  v20 = *(v1 + 112);
  v21 = v5;
  v6 = *(v1 + 32);
  v14 = *(v1 + 16);
  v15 = v6;
  v7 = *(v1 + 64);
  v16 = *(v1 + 48);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BF29A00()
{
  sub_20B5D8060(&v17);
  v1 = v26;
  *(v0 + 144) = v25;
  *(v0 + 160) = v1;
  *(v0 + 176) = v27;
  v2 = v22;
  *(v0 + 80) = v21;
  *(v0 + 96) = v2;
  v3 = v24;
  *(v0 + 112) = v23;
  *(v0 + 128) = v3;
  v4 = v18;
  *(v0 + 16) = v17;
  *(v0 + 32) = v4;
  v5 = v20;
  *(v0 + 48) = v19;
  *(v0 + 64) = v5;
  *(v0 + 192) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_preview;
  v7 = sub_20C134284();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_contentIdentifier);
  *v8 = 0;
  v8[1] = 0;
  v9 = v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow;
  v10 = v26;
  *(v9 + 128) = v25;
  *(v9 + 144) = v10;
  *(v9 + 160) = v27;
  v11 = v22;
  *(v9 + 64) = v21;
  *(v9 + 80) = v11;
  v12 = v24;
  *(v9 + 96) = v23;
  *(v9 + 112) = v12;
  v13 = v18;
  *v9 = v17;
  *(v9 + 16) = v13;
  v14 = v20;
  *(v9 + 32) = v19;
  *(v9 + 48) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v16, v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v16, v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_storefrontLocalizer);
  return v0;
}

uint64_t sub_20BF29BC0()
{
  v1 = sub_20C13BB84();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v50);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_20C134284();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_preview;
  swift_beginAccess();
  v53 = v0;
  sub_20B52F9E8(v0 + v13, v8, &unk_27C7623C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B520158(v8, &unk_27C7623C0);
LABEL_10:
    sub_20C13B534();
    v45 = sub_20C13BB74();
    v46 = sub_20C13D1F4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20B517000, v45, v46, "FilterDetailHeader missing preview/contentIdentifier, not showing preview page", v47, 2u);
      MEMORY[0x20F2F6A40](v47, -1, -1);
    }

    return (*(v51 + 1))(v3, v52);
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_contentIdentifier + 8);
  if (!v14)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_10;
  }

  v51 = v12;
  v52 = v10;
  v15 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_contentIdentifier);
  v16 = sub_20C136664();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = v50;
  v18 = *(v50 + 20);
  v19 = *MEMORY[0x277D513F8];
  v20 = sub_20C134F24();
  (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
  v21 = v17[6];
  v22 = sub_20C132C14();
  (*(*(v22 - 8) + 56))(&v5[v21], 1, 1, v22);
  v23 = v17[8];
  v24 = *MEMORY[0x277D52388];
  v25 = sub_20C135ED4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(&v5[v23], v24, v25);
  v27 = v53;
  (*(v26 + 56))(&v5[v23], 0, 1, v25);
  v28 = v17[10];
  v29 = *MEMORY[0x277D51768];
  v30 = sub_20C1352E4();
  (*(*(v30 - 8) + 104))(&v5[v28], v29, v30);
  v31 = v17[11];
  v32 = sub_20C136E94();
  (*(*(v32 - 8) + 56))(&v5[v31], 1, 1, v32);
  swift_bridgeObjectRetain_n();
  v33 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v34 = &v5[v17[7]];
  *v34 = v15;
  *(v34 + 1) = v14;
  v35 = &v5[v17[9]];
  *v35 = 0;
  *(v35 + 1) = 0;
  *&v5[v17[12]] = v33;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BFA0128(v27, v5, Strong);
    swift_unknownObjectRelease();
  }

  v37 = swift_unknownObjectWeakLoadStrong();
  v38 = v9;
  v40 = v51;
  v39 = v52;
  if (v37)
  {
    v41 = v37;
    v42 = v37 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43 = *(v42 + 8);
      ObjectType = swift_getObjectType();
      (*(v43 + 80))(v41, v40, v15, v14, ObjectType, v43);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_20BF2A45C(v5, type metadata accessor for ShelfMetricAction);
  return (*(v39 + 8))(v40, v38);
}

uint64_t sub_20BF2A208(uint64_t a1)
{
  v2 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v2);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5EAE70(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 18)
  {
    return sub_20BF29BC0();
  }

  if (EnumCaseMultiPayload != 5)
  {
    return sub_20BF2A45C(v4, type metadata accessor for ShelfItemAction);
  }

  v6 = *v4;
  v20 = *(v4 + 8);
  v7 = *(v4 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v8 = (type metadata accessor for PageAlertAction() - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20C14F980;
  v11 = v10 + v9;
  sub_20C132ED4();
  v12 = (v11 + v8[8]);
  *v12 = 0;
  v12[1] = 0;
  *(v11 + v8[7]) = 2;
  v13 = (v11 + v8[9]);
  *v13 = 0;
  v13[1] = 0;
  v21[0] = v10;
  v21[1] = MEMORY[0x277D84F90];
  v21[2] = v6;
  v22 = v20;
  v23 = v7;
  v24 = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_20B76328C(v21);
  }

  v15 = Strong;
  v16 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 232))(v15, v21, ObjectType, v17);
    sub_20B76328C(v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_20B76328C(v21);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20BF2A45C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_20BF2A4BC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_currentConstraints] = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  __asm { FMOV            V0.2D, #10.0 }

  *&v4[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_layout] = _Q0;
  v16 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton;
  type metadata accessor for DownloadButton();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v18) = 1148846080;
  [v17 setContentHuggingPriority:0 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v17 &selRef:1 setTintColor:v19 + 4];
  LODWORD(v20) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v21];

  *&v4[v16] = v17;
  v22 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_summaryTextLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setAdjustsFontForContentSizeCategory_];
  v24 = *MEMORY[0x277D74418];
  v25 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v27 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v28 = swift_initStackObject();
  v29 = MEMORY[0x277D74430];
  *(v28 + 16) = xmmword_20C14F980;
  v30 = *v29;
  *(v28 + 32) = *v29;
  *(v28 + 40) = v24;
  v31 = v27;
  v32 = v30;
  v33 = sub_20B6B134C(v28);
  swift_setDeallocating();
  sub_20B520158(v28 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v33;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName);
  v34 = sub_20C13C744();

  v35 = [v25 fontDescriptorByAddingAttributes_];

  v36 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];
  [v23 setFont_];

  [v23 setLineBreakMode_];
  [v23 setNumberOfLines_];
  v37 = [objc_opt_self() whiteColor];
  [v23 setTextColor_];

  LODWORD(v38) = 1112014848;
  [v23 setContentHuggingPriority:1 forAxis:v38];

  *&v4[v22] = v23;
  v49.receiver = v4;
  v49.super_class = type metadata accessor for GuidedWalkMediaTagsCell();
  v39 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  v40 = [v39 contentView];
  [v40 addSubview_];

  v41 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton;
  v42 = *&v39[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton];
  [v42 addTarget:v39 action:sel_handleDownloadButtonTapped_ forControlEvents:64];

  v43 = [v39 contentView];
  [v43 addSubview_];

  v44 = [v39 traitCollection];
  v45 = objc_opt_self();
  sub_20B5E29D0();

  v46 = sub_20C13CC54();

  [v45 deactivateConstraints_];

  v47 = [v44 preferredContentSizeCategory];
  LOBYTE(v34) = sub_20C13D424();

  if (v34)
  {
    sub_20BF2B294();
  }

  else
  {
    sub_20BF2B79C();
  }

  [v39 setNeedsUpdateConstraints];

  return v39;
}

uint64_t sub_20BF2ACE0(void *a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for GuidedWalkMediaTagsCell();
  objc_msgSendSuper2(&v25, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {

      Strong = v3;
    }

    else
    {
      v12 = sub_20C13DFF4();

      if (v12)
      {
        Strong = v3;
      }

      else
      {
        v19 = [v1 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        v20 = objc_opt_self();
        sub_20B5E29D0();

        v21 = sub_20C13CC54();

        [v20 deactivateConstraints_];

        v22 = [v19 preferredContentSizeCategory];
        v23 = sub_20C13D424();

        if (v23)
        {
          sub_20BF2B294();
        }

        else
        {
          sub_20BF2B79C();
        }

        [Strong setNeedsUpdateConstraints];
      }
    }
  }

  else
  {
    v14 = [v1 traitCollection];
    Strong = swift_unknownObjectUnownedLoadStrong();
    v15 = objc_opt_self();
    sub_20B5E29D0();

    v16 = sub_20C13CC54();

    [v15 deactivateConstraints_];

    v17 = [v14 preferredContentSizeCategory];
    v18 = sub_20C13D424();

    if (v18)
    {
      sub_20BF2B294();
    }

    else
    {
      sub_20BF2B79C();
    }

    [Strong setNeedsUpdateConstraints];
  }

  return swift_unknownObjectUnownedDestroy();
}

id sub_20BF2B0AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedWalkMediaTagsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GuidedWalkMediaTagsCell()
{
  result = qword_27C770830;
  if (!qword_27C770830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF2B1C4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BF2B294()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C150040;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_summaryTextLabel];
  v4 = [v3 leadingAnchor];
  v5 = [v1 contentView];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = [v3 topAnchor];
  v9 = [v1 &selRef_setMaximumFractionDigits_];
  v10 = [v9 &selRef_setLineBreakMode_];

  v11 = [v8 &selRef:v10 alertControllerReleasedDictationButton:? + 5];
  *(v2 + 40) = v11;
  v12 = [v3 trailingAnchor];
  v13 = [v1 &selRef_setMaximumFractionDigits_];
  v14 = [v13 trailingAnchor];

  v15 = [v12 &selRef:v14 alertControllerReleasedDictationButton:? + 5];
  type metadata accessor for UILayoutPriority(0);
  sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v16) = v35;
  [v15 setPriority_];
  *(v2 + 48) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20C150040;
  v18 = *&v1[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton];
  v19 = [v18 leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v17 + 32) = v22;
  v23 = [v18 topAnchor];
  v24 = [v3 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:10.0];

  *(v17 + 40) = v25;
  v26 = [v18 bottomAnchor];
  v27 = [v1 contentView];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v30) = v35;
  [v29 setPriority_];
  *(v17 + 48) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = v2;
  *(inited + 40) = v17;
  v32 = sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  *&v1[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_currentConstraints] = v32;

  v33 = objc_opt_self();
  sub_20B5E29D0();

  v34 = sub_20C13CC54();

  [v33 activateConstraints_];
}

void sub_20BF2B79C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C14FE90;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_summaryTextLabel];
  v4 = [v3 leadingAnchor];
  v5 = [v1 contentView];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = [v3 trailingAnchor];
  v9 = *&v1[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton];
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintLessThanOrEqualToAnchor:v10 constant:-10.0];

  *(v2 + 40) = v11;
  v12 = [v3 topAnchor];
  v13 = [v1 contentView];
  v14 = [v13 &selRef_setLineBreakMode_];

  v15 = [v12 constraintEqualToAnchor_];
  *(v2 + 48) = v15;
  v16 = [v3 bottomAnchor];
  v17 = [v1 contentView];
  v18 = [v17 &selRef_secondaryLabel + 5];

  v19 = [v16 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v20) = v40;
  [v19 setPriority_];
  *(v2 + 56) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C150040;
  v22 = [v9 trailingAnchor];
  v23 = [v1 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v26) = v40;
  [v25 setPriority_];
  *(v21 + 32) = v25;
  v27 = [v9 topAnchor];
  v28 = [v1 contentView];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v21 + 40) = v30;
  v31 = [v9 bottomAnchor];
  v32 = [v1 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintLessThanOrEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v35) = v40;
  [v34 setPriority_];
  *(v21 + 48) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = v2;
  *(inited + 40) = v21;
  v37 = sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  *&v1[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_currentConstraints] = v37;

  v38 = objc_opt_self();
  sub_20B5E29D0();

  v39 = sub_20C13CC54();

  [v38 activateConstraints_];
}

uint64_t sub_20BF2BD50(unint64_t a1, int a2)
{
  v50 = a2;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v47 - v10;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x1B)
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    [*&v2[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_summaryTextLabel] setAttributedText_];
    sub_20C13B4A4();
    v14 = v2;
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1F4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v49 = v4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52 = v47;
      *v18 = 138543618;
      *(v18 + 4) = v14;
      *v19 = v14;
      *(v18 + 12) = 2082;
      v20 = v14;
      v21 = sub_20BCFF494(*&v12, v13);
      v48 = v5;
      v23 = sub_20B51E694(v21, v22, &v52);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_20B517000, v15, v16, "[DownloadButton] Updating download button state in %{public}@ to %{public}s", v18, 0x16u);
      sub_20B520158(v19, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v19, -1, -1);
      v24 = v47;
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x20F2F6A40](v24, -1, -1);
      MEMORY[0x20F2F6A40](v18, -1, -1);

      result = (*(v48 + 8))(v11, v49);
    }

    else
    {

      result = (*(v5 + 8))(v11, v4);
    }

    v38 = *&v14[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton];
    v39 = &v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    v40 = *&v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    v41 = v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8];
    if (v41 <= 1)
    {
      if (v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8])
      {
        if (v13 != 1 || ((LODWORD(v40) ^ LODWORD(v12)) & 1) != 0)
        {
          goto LABEL_26;
        }
      }

      else if (v13 || LOBYTE(v40) != LOBYTE(v12))
      {
        goto LABEL_26;
      }
    }

    else if (v41 == 2)
    {
      if (v13 != 2 || v40 != v12)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v41 == 255)
      {
LABEL_26:
        *v39 = v12;
        v39[8] = v13;
        sub_20C010054(*&v12, v13, 2.0);
        v43 = v42;
        v45 = v44;
        ObjectType = swift_getObjectType();
        sub_20C0DC2BC(v43, v50 & 1, v38, ObjectType, v45);
        return swift_unknownObjectRelease();
      }

      if (*&v40 <= 1)
      {
        if (v40 == 0.0)
        {
          if (v13 != 3 || v12 != 0.0)
          {
            goto LABEL_26;
          }
        }

        else if (v13 != 3 || *&v12 != 1)
        {
          goto LABEL_26;
        }
      }

      else if (*&v40 == 2)
      {
        if (v13 != 3 || *&v12 != 2)
        {
          goto LABEL_26;
        }
      }

      else if (*&v40 == 3)
      {
        if (v13 != 3 || *&v12 != 3)
        {
          goto LABEL_26;
        }
      }

      else if (v13 != 3 || *&v12 != 4)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    sub_20C13B534();

    v26 = v2;
    v27 = sub_20C13BB74();
    v28 = sub_20C13D1D4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49 = v4;
      v32 = v31;
      v51 = a1;
      v52 = v31;
      *v29 = 138543618;
      *(v29 + 4) = v26;
      *v30 = v26;
      *(v29 + 12) = 2082;
      v33 = sub_20B5F66D0();
      v34 = v26;
      v35 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v33);
      v37 = sub_20B51E694(v35, v36, &v52);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_20B517000, v27, v28, "Attempted to configure %{public}@ with item: %{public}s", v29, 0x16u);
      sub_20B520158(v30, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x20F2F6A40](v32, -1, -1);
      MEMORY[0x20F2F6A40](v29, -1, -1);

      return (*(v5 + 8))(v7, v49);
    }

    else
    {

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

uint64_t sub_20BF2C2A0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BF2C2EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BF2C344(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BF2C3B8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_currentConstraints) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  __asm { FMOV            V0.2D, #10.0 }

  *(v0 + OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_layout) = _Q0;
  v8 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton;
  type metadata accessor for DownloadButton();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v10) = 1148846080;
  [v9 setContentHuggingPriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v9 setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v13];

  *(v0 + v8) = v9;
  v14 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_summaryTextLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  v16 = *MEMORY[0x277D74418];
  v17 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v19 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_20C14F980;
  v21 = *MEMORY[0x277D74430];
  *(v20 + 32) = *MEMORY[0x277D74430];
  *(v20 + 40) = v16;
  v22 = v19;
  v23 = v21;
  v24 = sub_20B6B134C(v20);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v24;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName);
  v25 = sub_20C13C744();

  v26 = [v17 fontDescriptorByAddingAttributes_];

  v27 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];
  [v15 setFont_];

  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  v28 = [objc_opt_self() whiteColor];
  [v15 setTextColor_];

  LODWORD(v29) = 1112014848;
  [v15 setContentHuggingPriority:1 forAxis:v29];

  *(v0 + v14) = v15;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BF2C808()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t sub_20BF2CAAC()
{
  v0 = *aHighlight_2;

  return v0;
}