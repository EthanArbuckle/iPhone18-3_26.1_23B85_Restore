uint64_t sub_18244(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_12D78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18288()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_292D4();

  return v1;
}

uint64_t sub_182FC()
{
  v1 = v0;
  v2 = sub_51E0(&unk_39950, &unk_2B4C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_28D44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + *(type metadata accessor for ContactImageView(0) + 24);
  sub_1DAA8();
  if (sub_B89C(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v10, enum case for ImageElement.ImageStyle.default(_:), v6);
    if (sub_B89C(v5, 1, v6) != 1)
    {
      sub_1663C(v5);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
  }

  if (*v1)
  {
    v12 = *v1;
    sub_28D24();

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v14 = *(v1 + 8);
    sub_29A94();
    sub_18244(&qword_3A0D0, &type metadata accessor for Context);
    result = sub_293F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1853C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_29CE4();
  *(v1 + 24) = sub_29CD4();
  v3 = sub_29CC4();

  return _swift_task_switch(sub_185D4, v3, v2);
}

uint64_t sub_185D4()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  type metadata accessor for ContactImageView.ContactImageLoader(0);
  sub_19F90();
  sub_18244(v6, v7);
  sub_29344();
  sub_182FC();
  sub_189A4(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_186AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactImageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18710()
{
  v1 = (type metadata accessor for ContactImageView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 16);
  v7 = *(v0 + v3 + 24);
  v8 = *(v0 + v3 + 32);
  sub_123A0();
  v9 = v1[8];
  sub_51E0(&qword_38FE0, &qword_2AB60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_28D44();
    if (!sub_B89C(v5 + v9, 1, v10))
    {
      (*(*(v10 - 8) + 8))(v5 + v9, v10);
    }
  }

  else
  {
    v11 = *(v5 + v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_18858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactImageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188BC()
{
  v2 = *(type metadata accessor for ContactImageView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_A57C;

  return sub_1853C(v0 + v3);
}

uint64_t sub_189A4(double a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_28CD4();
  v8 = sub_7AA0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_16B7C();
  v15 = (v14 - v13);
  v16 = objc_opt_self();
  v17 = sub_19668();
  v18 = [v16 scopeWithPointSize:sub_196C8() scale:0 rightToLeft:a1 style:{a2, v17}];
  (*(v10 + 16))(v15, v2 + OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader_model, v7);
  v19 = *(v10 + 88);
  v20 = sub_19FA8();
  v22 = v21(v20);
  if (v22 == enum case for ContactImage.letters(_:))
  {
    v23 = *(v10 + 96);
    v24 = sub_19FA8();
    v25(v24);
    v26 = *v15;
    v27 = v15[1];
    if (qword_38FD0 != -1)
    {
      sub_19F24();
    }

    v28 = qword_3A0C8;
    v29 = sub_29B04();

    v30 = swift_allocObject();
    swift_weakInit();
    v72 = sub_19E34;
    v73 = v30;
    sub_19F5C();
    sub_19F44(COERCE_DOUBLE(1107296256));
    v70 = v31;
    v71 = &unk_36488;
    v32 = _Block_copy(aBlock);

    v33 = [v28 renderMonogramForString:v29 scope:v18 imageHandler:v32];
    swift_unknownObjectRelease();
    _Block_release(v32);

LABEL_5:
    v34 = *(v3 + OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader_cnCancellable);
    *(v3 + OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader_cnCancellable) = v33;
    return swift_unknownObjectRelease();
  }

  if (v22 == enum case for ContactImage.contacts(_:))
  {
    v35 = *(v10 + 96);
    v36 = sub_19FA8();
    v37(v36);
    v38 = *v15;
    v39 = objc_opt_self();
    isa = sub_29C74().super.isa;

    v41 = [v39 predicateForContactsWithIdentifiers:isa];

    sub_51E0(&unk_3A270, &unk_2B378);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_2B1D0;
    *(v42 + 32) = [objc_opt_self() descriptorForRequiredKeys];
    if (qword_38FC8 != -1)
    {
      swift_once();
    }

    v43 = qword_3A0C0;
    sub_51E0(&qword_39AA0, &qword_2B388);
    sub_12D78();
    v44 = sub_29C74().super.isa;

    aBlock[0] = 0;
    v45 = [v43 unifiedContactsMatchingPredicate:v41 keysToFetch:v44 error:aBlock];

    v46 = aBlock[0];
    if (v45)
    {
      sub_62A0(0, &qword_3A280, CNContact_ptr);
      sub_12D78();
      v47 = sub_29C84();
      v48 = sub_7A84(v47);
      v49 = v46;

      if (v48)
      {
        if (qword_38FD0 != -1)
        {
          sub_19F24();
        }

        v50 = qword_3A0C8;
        v51 = swift_allocObject();
        swift_weakInit();
        v72 = sub_19DDC;
        v73 = v51;
        sub_19F5C();
        sub_19F44(COERCE_DOUBLE(1107296256));
        v70 = v52;
        v71 = &unk_36460;
        v53 = _Block_copy(aBlock);
        v54 = v50;

        v33 = [v54 renderAvatarsForContacts:v45 scope:v18 imageHandler:v53];
        swift_unknownObjectRelease();

        _Block_release(v53);
        goto LABEL_5;
      }
    }

    else
    {
      v63 = aBlock[0];
      sub_28BC4();

      swift_willThrow();
    }

    sub_19724(a1, a2);
    sub_1944C();

    return swift_unknownObjectRelease();
  }

  if (v22 == enum case for ContactImage.visual(_:))
  {
    if (qword_38FB0 != -1)
    {
      sub_19F7C();
      swift_once();
    }

    v64 = sub_29264();
    sub_5BB4(v64, qword_3C140);
    v65 = sub_29254();
    v66 = sub_29DA4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock[0] = v68;
      *v67 = 136446210;
      *(v67 + 4) = sub_DA08(0xD00000000000003ELL, 0x800000000002E370, aBlock);
      _os_log_impl(&dword_0, v65, v66, "%{public}s", v67, 0xCu);
      sub_5FD0(v68);
    }

    result = sub_29FD4();
    __break(1u);
  }

  else
  {
    if (qword_38FB0 != -1)
    {
      sub_19F7C();
      swift_once();
    }

    v55 = sub_29264();
    sub_5BB4(v55, qword_3C140);
    v56 = sub_29254();
    v57 = sub_29D94();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v56, v57, "Unknown ContactImage model type", v58, 2u);
    }

    swift_unknownObjectRelease();
    v59 = *(v10 + 8);
    v60 = sub_19FA8();
    return v61(v60);
  }

  return result;
}

uint64_t sub_19184(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_51E0(&unk_39C40, &unk_2B4B0);
    v10 = a1 + *(a3 + 24);

    return sub_B89C(v10, a2, v9);
  }
}

void *sub_19238(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_51E0(&unk_39C40, &unk_2B4B0);
    v8 = v5 + *(a4 + 24);

    return sub_53C4(v8, a2, a2, v7);
  }

  return result;
}

void sub_192C4()
{
  sub_BABC();
  if (v0 <= 0x3F)
  {
    sub_1938C();
    if (v1 <= 0x3F)
    {
      sub_19D3C(319, &unk_39CD0, &unk_39950, &unk_2B4C0, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1938C()
{
  if (!qword_3A158)
  {
    type metadata accessor for ContactImageView.ContactImageLoader(255);
    sub_18244(&qword_3A0E0, type metadata accessor for ContactImageView.ContactImageLoader);
    v0 = sub_29354();
    if (!v1)
    {
      atomic_store(v0, &qword_3A158);
    }
  }
}

uint64_t sub_19420(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1944C();
}

uint64_t sub_1944C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_292E4();
}

uint64_t sub_194BC(uint64_t a1)
{
  v3 = sub_51E0(&unk_398B0, &unk_2B2A0);
  v4 = sub_7AA0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = v16 - v9;
  v11 = OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader__image;
  v16[1] = 0;
  sub_51E0(&unk_39770, &qword_2B200);
  sub_292B4();
  (*(v6 + 32))(v1 + v11, v10, v3);
  *(v1 + OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader_cnCancellable) = 0;
  v12 = OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader_model;
  v13 = sub_28CD4();
  sub_C3B0(v13);
  (*(v14 + 32))(v1 + v12, a1);
  return v1;
}

id sub_19600()
{
  result = [objc_allocWithZone(CNContactStore) init];
  qword_3A0C0 = result;
  return result;
}

id sub_19634()
{
  result = [objc_allocWithZone(CNAvatarImageRenderer) init];
  qword_3A0C8 = result;
  return result;
}

double sub_19668()
{
  v0 = [objc_opt_self() currentTraitCollection];
  [v0 displayScale];
  v2 = v1;

  return v2;
}

BOOL sub_196C8()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 layoutDirection];

  return v1 == &dword_0 + 1;
}

uint64_t sub_19724(double a1, double a2)
{
  v5 = *v2;
  if (qword_38FD0 != -1)
  {
    sub_19F24();
  }

  v6 = [objc_msgSend(qword_3A0C8 "placeholderImageProvider")];
  swift_unknownObjectRelease();

  return sub_29804();
}

uint64_t sub_19804(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_298F4();
  v9 = sub_7AA0(v8);
  v31 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_16B7C();
  v15 = v14 - v13;
  v30 = sub_29914();
  v16 = sub_7AA0(v30);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_16B7C();
  v23 = v22 - v21;
  sub_62A0(0, &qword_39150, OS_dispatch_queue_ptr);
  v24 = sub_29DB4();
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a1;
  aBlock[4] = a4;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_5140;
  aBlock[3] = a5;
  v26 = _Block_copy(aBlock);

  v27 = a1;

  sub_29904();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_18244(&unk_39D80, &type metadata accessor for DispatchWorkItemFlags);
  sub_51E0(&unk_39160, &qword_2AD50);
  sub_12C8C(&qword_39D90, &unk_39160, &qword_2AD50);
  sub_29E54();
  sub_29DC4();
  _Block_release(v26);

  (*(v31 + 8))(v15, v8);
  return (*(v18 + 8))(v23, v30);
}

uint64_t sub_19AD0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2;
    sub_29804();
    sub_1944C();
  }

  return result;
}

uint64_t sub_19B34()
{
  v1 = OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader__image;
  v2 = sub_51E0(&unk_398B0, &unk_2B2A0);
  sub_C3B0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader_model;
  v5 = sub_28CD4();
  sub_C3B0(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader_cnCancellable);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_19BE0()
{
  sub_19B34();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_19C40()
{
  sub_19D3C(319, qword_39BA0, &unk_39770, &qword_2B200, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_28CD4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_19D3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_558C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_19DA4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_19E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19E78()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_19ED4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_18288();
  *a2 = result;
  return result;
}

uint64_t sub_19F24()
{

  return swift_once();
}

uint64_t MapsPlaceCardView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29044();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MapsPlaceCardView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29034();
  v4 = v3;
  result = sub_29024();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  return result;
}

uint64_t sub_1A094()
{
  v2 = sub_1A888();

  return sub_B89C(v1, v0, v2);
}

uint64_t sub_1A0E0()
{
  v2 = sub_1A888();

  return sub_53C4(v1, v0, v0, v2);
}

uint64_t type metadata accessor for MapsPlaceCardView()
{
  result = qword_3A2E0;
  if (!qword_3A2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A168()
{
  result = sub_29044();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1A1D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MUPlaceViewControllerConfiguration) init];
  [v7 setOptions:a4];
  v8 = type metadata accessor for MapView();
  v16.receiver = objc_allocWithZone(v8);
  v16.super_class = v8;
  v9 = objc_msgSendSuper2(&v16, "initWithConfiguration:", v7);
  result = [v9 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor:v12];

    sub_1A82C();
    sub_DACC(a2, a3);
    v13 = sub_1A330(a2, a3);
    if (v13)
    {
      v14 = v13;
      v15 = v9;
      [v15 setMapItem:v14];
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A330(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_28BD4().super.isa;
    sub_1A870(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() mapItemWithSerializedPlaceData:isa];

  return v5;
}

uint64_t sub_1A410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7D8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1A474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7D8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1A4D8()
{
  sub_1A7D8();
  sub_29654();
  __break(1u);
}

id sub_1A544()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  LODWORD(v1) = 1148846080;
  LODWORD(v2) = 1112014848;
  return objc_msgSendSuper2(&v4, "_systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:", 0.0, 0.0, v1, v2);
}

unint64_t sub_1A698()
{
  result = qword_3A340;
  if (!qword_3A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A340);
  }

  return result;
}

uint64_t sub_1A6EC(uint64_t a1)
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

__n128 sub_1A708(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A71C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1A768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1A7D8()
{
  result = qword_3A348;
  if (!qword_3A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A348);
  }

  return result;
}

unint64_t sub_1A82C()
{
  result = qword_3A350;
  if (!qword_3A350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3A350);
  }

  return result;
}

uint64_t sub_1A870(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_DB24(a1, a2);
  }

  return a1;
}

uint64_t sub_1A888()
{

  return sub_29044();
}

uint64_t sub_1A8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AA0C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1A928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AA0C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1A98C()
{
  sub_1AA0C();
  sub_29654();
  __break(1u);
}

unint64_t sub_1A9B8()
{
  result = qword_3A358;
  if (!qword_3A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A358);
  }

  return result;
}

unint64_t sub_1AA0C()
{
  result = qword_3A360;
  if (!qword_3A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A360);
  }

  return result;
}

uint64_t sub_1AAB8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AppIconView(0);
  v7 = (a3 + v6[5]);
  sub_29A94();
  sub_1DE3C();
  sub_1DA60(v8, v9);
  *v7 = sub_29404();
  v7[1] = v10;
  v11 = v6[6];
  *(a3 + v11) = swift_getKeyPath();
  sub_51E0(&qword_38FE0, &qword_2AB60);
  swift_storeEnumTagMultiPayload();
  v12 = a3 + v6[7];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v6[8];
  sub_51E0(&unk_39770, &qword_2B200);
  sub_1DEAC();
  *(a3 + v13) = v17;
  v14 = a2(0);
  sub_C3B0(v14);
  (*(v15 + 32))(a3, a1);
  type metadata accessor for AppIconView.Model(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t AppIconView.init(modelData:)@<X0>(uint64_t a1@<X8>)
{
  v49 = type metadata accessor for AppIconView.Model(0);
  v2 = sub_C3B0(v49);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_16B7C();
  v43 = (v6 - v5);
  v7 = *(*(sub_51E0(&qword_3A368, &qword_2BE70) - 8) + 64);
  sub_1DEC8();
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_28D84();
  v12 = sub_7AA0(v11);
  v44 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_16B7C();
  v18 = (v17 - v16);
  v19 = type metadata accessor for AppIconView(0);
  v20 = (a1 + v19[5]);
  sub_29A94();
  sub_1DE3C();
  sub_1DA60(v21, v22);
  v47 = sub_29404();
  *v20 = v47;
  v20[1] = v23;
  v24 = v19[6];
  *(a1 + v24) = swift_getKeyPath();
  sub_51E0(&qword_38FE0, &qword_2AB60);
  swift_storeEnumTagMultiPayload();
  v25 = a1 + v19[7];
  KeyPath = swift_getKeyPath();
  *v25 = KeyPath;
  *(v25 + 8) = 0;
  v26 = (a1 + v19[8]);
  v52 = 0;
  sub_51E0(&unk_39770, &qword_2B200);
  sub_29854();
  v27 = v51;
  *v26 = v50;
  v26[1] = v27;
  v45 = v27;
  v28 = sub_1DED4();
  sub_DACC(v28, v29);
  sub_1DED4();
  v30 = v48;
  sub_28D64();
  if (v30)
  {

    sub_53C4(v10, 1, 1, v11);
    sub_1D958(v10, &qword_3A368, &qword_2BE70);
    v31 = sub_28BB4();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_28BA4();
    sub_28B94();
    v34 = sub_1DED4();
    sub_DB24(v34, v35);

    v39 = v51;
    v40 = v43;
    *v43 = v50;
    v40[1] = v39;
    swift_storeEnumTagMultiPayload();
    return sub_1D608();
  }

  else
  {
    v36 = sub_1DED4();
    sub_DB24(v36, v37);
    sub_53C4(v10, 0, 1, v11);
    v38 = *(v44 + 32);
    v38(v18, v10, v11);
    v38(a1, v18, v11);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B034()
{
  v0 = *(*(sub_51E0(&unk_39950, &unk_2B4C0) - 8) + 64);
  sub_1DEC8();
  __chkstk_darwin(v1);
  sub_1DDE8();
  return sub_29494();
}

uint64_t sub_1B0DC@<X0>(void *a1@<X8>)
{
  result = sub_294D4();
  *a1 = v3;
  return result;
}

uint64_t sub_1B108@<X0>(void *a1@<X8>)
{
  result = sub_294D4();
  *a1 = v3;
  return result;
}

uint64_t property wrapper backing initializer of AppIconView.appIconImage()
{
  sub_51E0(&unk_39770, &qword_2B200);
  sub_1DEAC();
  return v1;
}

uint64_t AppIconView.init(applicationBundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for AppIconView(0);
  v7 = (a3 + v6[5]);
  sub_29A94();
  sub_1DE3C();
  sub_1DA60(v8, v9);
  *v7 = sub_29404();
  v7[1] = v10;
  v11 = v6[6];
  *(a3 + v11) = swift_getKeyPath();
  sub_51E0(&qword_38FE0, &qword_2AB60);
  swift_storeEnumTagMultiPayload();
  v12 = a3 + v6[7];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = v6[8];
  sub_51E0(&unk_39770, &qword_2B200);
  sub_1DEAC();
  *(a3 + v13) = v15;
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for AppIconView.Model(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t AppIconView.body.getter@<X0>(void *a1@<X8>)
{
  result = sub_1B344(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1B344@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v30 = sub_51E0(&qword_3A4C0, &qword_2BEE8);
  v1 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v28 = &v26 - v2;
  v29 = sub_28F24();
  v27 = *(v29 - 8);
  v3 = *(v27 + 64);
  __chkstk_darwin(v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_28D84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_51E0(&qword_3A4C8, &qword_2BEF0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = type metadata accessor for AppIconView.Model(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D3CC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v7 + 32))(v10, v18, v6);
      v20 = sub_28D74();
      sub_1B700(v20, v21, v14);

      sub_1D19C();
      v22 = sub_298A4();
      result = (*(v7 + 8))(v10, v6);
    }

    else
    {
      v24 = v27;
      v25 = v29;
      (*(v27 + 32))(v5, v18, v29);
      sub_28F14();
      swift_getOpaqueTypeConformance2();
      v22 = sub_298A4();
      result = (*(v24 + 8))(v5, v25);
    }
  }

  else
  {
    sub_1B700(*v18, v18[1], v14);

    sub_1D19C();
    result = sub_298A4();
    v22 = result;
  }

  *v31 = v22;
  return result;
}

uint64_t sub_1B700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v6 = type metadata accessor for AppIconView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_51E0(&qword_3A4E0, &qword_2BEF8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v13 = sub_1B9D0();
  if (v15)
  {

    return sub_53C4(a3, 1, 1, v9);
  }

  else
  {
    v17 = v13;
    v30 = v14;
    *v12 = sub_295A4();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v18 = sub_51E0(&qword_3A508, &qword_2BF10);
    sub_1BBF0(v3, &v12[*(v18 + 44)]);
    sub_298E4();
    sub_29364();
    v19 = &v12[*(sub_51E0(&qword_3A4F0, &qword_2BF00) + 36)];
    v20 = v33;
    *v19 = v32;
    *(v19 + 1) = v20;
    *(v19 + 2) = v34;
    v29 = v9;
    sub_1D3CC();
    v21 = *(v7 + 80);
    v22 = a3;
    v23 = v31;
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = v23;
    v25 = v30;
    v24[4] = v17;
    v24[5] = v25;
    sub_1D608();
    v26 = v29;
    v27 = &v12[*(v29 + 36)];
    LODWORD(v17) = *(sub_29384() + 20);

    sub_29CF4();
    *v27 = &unk_2BF20;
    *(v27 + 1) = v24;
    sub_1DA0C();
    return sub_53C4(v22, 0, 1, v26);
  }
}

uint64_t sub_1B9D0()
{
  v1 = sub_51E0(&unk_39950, &unk_2B4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_28D44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C798(v4);
  if (sub_B89C(v4, 1, v5) == 1)
  {
    sub_1D958(v4, &unk_39950, &unk_2B4C0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v11 = v0 + *(type metadata accessor for AppIconView(0) + 20);
    if (*v11)
    {
      v12 = *v11;
      sub_28D24();
      v14 = v13;

      (*(v6 + 8))(v9, v5);
      return v14;
    }

    else
    {
      v15 = *(v11 + 8);
      sub_29A94();
      sub_1DA60(&qword_3A0D0, &type metadata accessor for Context);
      result = sub_293F4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BBF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29824();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + *(type metadata accessor for AppIconView(0) + 32));
  sub_51E0(&qword_3A518, &qword_2BF28);
  sub_29864();
  if (v21[1])
  {
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v9 = sub_29844();

    (*(v5 + 8))(v8, v4);
    sub_1BE3C();
    v11 = v10;
    v12 = sub_51E0(&qword_3A528, &unk_2BF30);
    v13 = a2 + *(v12 + 36);
    v14 = *(sub_293D4() + 20);
    v15 = enum case for RoundedCornerStyle.continuous(_:);
    v16 = sub_29594();
    (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
    *v13 = v11;
    *(v13 + 1) = v11;
    *&v13[*(sub_51E0(&qword_39A20, &qword_2B358) + 36)] = 256;
    *a2 = v9;
    v17 = a2;
    v18 = 0;
    v19 = v12;
  }

  else
  {
    v19 = sub_51E0(&qword_3A528, &unk_2BF30);
    v17 = a2;
    v18 = 1;
  }

  return sub_53C4(v17, v18, 1, v19);
}

uint64_t sub_1BE3C()
{
  v1 = sub_51E0(&unk_39950, &unk_2B4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_28D44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C798(v4);
  if (sub_B89C(v4, 1, v5) == 1)
  {
    return sub_1D958(v4, &unk_39950, &unk_2B4C0);
  }

  (*(v6 + 32))(v9, v4, v5);
  v11 = v0 + *(type metadata accessor for AppIconView(0) + 20);
  if (*v11)
  {
    v12 = *v11;
    sub_28D14();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v13 = *(v11 + 8);
    sub_29A94();
    sub_1DA60(&qword_3A0D0, &type metadata accessor for Context);
    result = sub_293F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C044(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 88) = a3;
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = sub_29574();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = sub_29CE4();
  *(v5 + 128) = sub_29CD4();
  v10 = sub_29CC4();
  *(v5 + 136) = v10;
  *(v5 + 144) = v9;

  return _swift_task_switch(sub_1C144, v10, v9);
}

uint64_t sub_1C144()
{
  v1 = *(v0 + 88);
  *(v0 + 208) = sub_1C598() & 1;
  v2 = type metadata accessor for AppIconView(0);
  *(v0 + 152) = v2;
  v3 = v1 + *(v2 + 28);
  v4 = *v3;
  if (*(v3 + 8) == 1)
  {
    v5 = *v3;
  }

  else
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 96);

    sub_29DA4();
    v9 = sub_29684();
    sub_1DE54();

    sub_29564();
    sub_1DEA0();
    swift_getAtKeyPath();
    sub_12CD8(v4, 0);
    (*(v7 + 8))(v6, v8);
    v5 = *(v0 + 32);
  }

  *(v0 + 160) = v5;

  return _swift_task_switch(sub_1C270, 0, 0);
}

uint64_t sub_1C270()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 208);
  v3 = *(v0 + 120);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  sub_1D74C();

  v8 = sub_1D790();
  *(v0 + 168) = v8;
  v9 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v5 scale:{v4, v1}];
  v10 = v9;
  *(v0 + 176) = v9;
  if (v2)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  [v9 setShape:v11];
  *(v0 + 184) = [v8 prepareImageForDescriptor:v10];
  *(v0 + 192) = sub_29CD4();
  v13 = sub_29CC4();

  return _swift_task_switch(sub_1C3B4, v13, v12);
}

uint64_t sub_1C3B4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = *(v0 + 20);

  sub_1D804(v2, v0 + 5, v3);
  v0[25] = v0[5];

  return _swift_task_switch(sub_1C470, 0, 0);
}

uint64_t sub_1C470()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  v3 = *(v0 + 136);
  v4 = *(v0 + 144);

  return _swift_task_switch(sub_1C4E0, v3, v4);
}

uint64_t sub_1C4E0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);

  *(v0 + 16) = *(v5 + *(v2 + 32));
  *(v0 + 48) = v1;
  sub_51E0(&qword_3A518, &qword_2BF28);
  sub_29874();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C598()
{
  v1 = sub_51E0(&unk_39950, &unk_2B4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v15 - v3;
  v5 = sub_28D44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C798(v4);
  if (sub_B89C(v4, 1, v5) == 1)
  {
    sub_1D958(v4, &unk_39950, &unk_2B4C0);
    v10 = 0;
    return v10 & 1;
  }

  (*(v6 + 32))(v9, v4, v5);
  v11 = v0 + *(type metadata accessor for AppIconView(0) + 20);
  if (*v11)
  {
    v12 = *v11;
    v10 = sub_28D04();

    (*(v6 + 8))(v9, v5);
    return v10 & 1;
  }

  v14 = *(v11 + 8);
  sub_29A94();
  sub_1DA60(&qword_3A0D0, &type metadata accessor for Context);
  result = sub_293F4();
  __break(1u);
  return result;
}

uint64_t sub_1C798@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v47 = sub_29574();
  v45 = *(v47 - 8);
  v3 = *(v45 + 64);
  __chkstk_darwin(v47);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_51E0(&qword_38FE0, &qword_2AB60);
  v5 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v7 = (&v44 - v6);
  v8 = sub_51E0(&unk_39950, &unk_2B4C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v44 - v10;
  v51 = sub_28D44();
  v49 = *(v51 - 8);
  v12 = *(v49 + 64);
  v13 = __chkstk_darwin(v51);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  v18 = sub_28D84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AppIconView.Model(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v2;
  sub_1D3CC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_53C4(v50, 1, 1, v51);
      return sub_1D9B0(v26);
    }

    v28 = v19;
    (*(v19 + 32))(v22, v26, v18);
    sub_28D54();
    v29 = v49;
    v30 = v51;
    (*(v49 + 104))(v15, enum case for ImageElement.ImageStyle.default(_:), v51);
    sub_1DA60(&qword_3A520, &type metadata accessor for ImageElement.ImageStyle);
    v31 = sub_29AF4();
    v32 = *(v29 + 8);
    v32(v15, v30);
    v32(v17, v30);
    if (v31)
    {
      v33 = v48 + *(type metadata accessor for AppIconView(0) + 24);
      sub_1DAA8();
      return (*(v28 + 8))(v22, v18);
    }

    v41 = v50;
    sub_28D54();
    (*(v28 + 8))(v22, v18);
  }

  else
  {
    v36 = v44;
    v35 = v45;
    v37 = v11;
    v38 = v47;
    sub_1D9B0(v26);
    v39 = *(type metadata accessor for AppIconView(0) + 24);
    sub_1DDE8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = v37;
      sub_1DA0C();
    }

    else
    {
      v42 = *v7;
      sub_29DA4();
      v43 = sub_29684();
      sub_29244();

      sub_29564();
      v40 = v37;
      swift_getAtKeyPath();

      (*(v35 + 8))(v36, v38);
    }

    v41 = v50;
    v30 = v51;
    if (sub_B89C(v40, 1, v51) == 1)
    {
      (*(v49 + 104))(v41, enum case for ImageElement.ImageStyle.appIcon2(_:), v30);
      if (sub_B89C(v40, 1, v30) != 1)
      {
        sub_1D958(v40, &unk_39950, &unk_2B4C0);
      }
    }

    else
    {
      (*(v49 + 32))(v41, v40, v30);
    }
  }

  return sub_53C4(v41, 0, 1, v30);
}

uint64_t sub_1CDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppIconView.Model(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_B89C(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_51E0(&unk_39C40, &unk_2B4B0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1CEB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppIconView.Model(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_51E0(&unk_39C40, &unk_2B4B0);
    v10 = a1 + *(a4 + 24);
  }

  return sub_53C4(v10, a2, a2, v9);
}

void sub_1CF88()
{
  type metadata accessor for AppIconView.Model(319);
  if (v0 <= 0x3F)
  {
    sub_BABC();
    if (v1 <= 0x3F)
    {
      sub_1D0AC(319, &unk_39CD0, &unk_39950, &unk_2B4C0, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_114FC();
        if (v3 <= 0x3F)
        {
          sub_1D0AC(319, &unk_3A3D8, &unk_39770, &qword_2B200, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D0AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_558C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D11C()
{
  result = sub_28D84();
  if (v1 <= 0x3F)
  {
    result = sub_28F24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D19C()
{
  result = qword_3A4D0;
  if (!qword_3A4D0)
  {
    sub_558C(&qword_3A4C8, &qword_2BEF0);
    sub_1D220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A4D0);
  }

  return result;
}

unint64_t sub_1D220()
{
  result = qword_3A4D8;
  if (!qword_3A4D8)
  {
    sub_558C(&qword_3A4E0, &qword_2BEF8);
    sub_1D2DC();
    sub_1DA60(&unk_39B40, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A4D8);
  }

  return result;
}

unint64_t sub_1D2DC()
{
  result = qword_3A4E8;
  if (!qword_3A4E8)
  {
    sub_558C(&qword_3A4F0, &qword_2BF00);
    sub_1D368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A4E8);
  }

  return result;
}

unint64_t sub_1D368()
{
  result = qword_3A4F8;
  if (!qword_3A4F8)
  {
    sub_558C(&qword_3A500, &qword_2BF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A4F8);
  }

  return result;
}

uint64_t sub_1D3CC()
{
  sub_C3F0();
  v2 = v1(0);
  sub_C3B0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DEA0();
  v6(v5);
  return v0;
}

uint64_t sub_1D420()
{
  v1 = type metadata accessor for AppIconView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  type metadata accessor for AppIconView.Model(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9 = sub_28F24();
      goto LABEL_7;
    case 1:
      v9 = sub_28D84();
LABEL_7:
      sub_C3B0(v9);
      (*(v10 + 8))(v0 + v3);
      break;
    case 0:
      v8 = *(v6 + 8);

      break;
  }

  v11 = v1[6];
  sub_51E0(&qword_38FE0, &qword_2AB60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_28D44();
    if (!sub_B89C(v6 + v11, 1, v12))
    {
      (*(*(v12 - 8) + 8))(v6 + v11, v12);
    }
  }

  else
  {
    v13 = *(v6 + v11);
  }

  sub_12CD8(*(v6 + v1[7]), *(v6 + v1[7] + 8));
  v14 = (v6 + v1[8]);
  v15 = *v14;

  v16 = v14[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D608()
{
  sub_C3F0();
  v2 = v1(0);
  sub_C3B0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1DEA0();
  v6(v5);
  return v0;
}

uint64_t sub_1D65C()
{
  v2 = *(type metadata accessor for AppIconView(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[4];
  v7 = v0[5];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_A57C;

  return sub_1C044(v4, v5, v0 + v3, v6, v7);
}

unint64_t sub_1D74C()
{
  result = qword_3A510;
  if (!qword_3A510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3A510);
  }

  return result;
}

id sub_1D790()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_29B04();

  v2 = [v0 initWithBundleIdentifier:v1];

  return v2;
}

void sub_1D804(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  if (a1 && (v5 = [a1 CGImage]) != 0)
  {
    v6 = v5;
    [objc_allocWithZone(UIImage) initWithCGImage:v5 scale:0 orientation:a3];
    v7 = sub_29804();
  }

  else
  {
    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v8 = sub_29264();
    sub_5BB4(v8, qword_3C140);
    v9 = sub_29254();
    v10 = sub_29D94();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Unable to convert ISIcon to a cgImage", v11, 2u);
    }

    v7 = 0;
  }

  *a2 = v7;
}

uint64_t sub_1D958(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_51E0(a2, a3);
  sub_C3B0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1D9B0(uint64_t a1)
{
  v2 = type metadata accessor for AppIconView.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA0C()
{
  sub_C3F0();
  v3 = sub_51E0(v1, v2);
  sub_C3B0(v3);
  v5 = *(v4 + 32);
  v6 = sub_1DEA0();
  v7(v6);
  return v0;
}

uint64_t sub_1DA60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA8()
{
  v1 = sub_29574();
  v2 = sub_7AA0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_16B7C();
  v9 = v8 - v7;
  v10 = sub_51E0(&qword_38FE0, &qword_2AB60);
  sub_C3B0(v10);
  v12 = *(v11 + 64);
  sub_1DEC8();
  __chkstk_darwin(v13);
  sub_1DE74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DA0C();
  }

  v15 = *v0;
  sub_29DA4();
  v16 = sub_29684();
  sub_1DE54();

  sub_29564();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v9, v1);
}

uint64_t sub_1DC3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29574();
  v4 = sub_7AA0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_16B7C();
  v11 = v10 - v9;
  v12 = sub_51E0(&qword_39A08, &qword_2B550);
  sub_C3B0(v12);
  v14 = *(v13 + 64);
  sub_1DEC8();
  __chkstk_darwin(v15);
  sub_1DE74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_293C4();
    sub_C3B0(v16);
    return (*(v17 + 32))(a1, v1);
  }

  else
  {
    v19 = *v1;
    sub_29DA4();
    v20 = sub_29684();
    sub_1DE54();

    sub_29564();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v11, v3);
  }
}

uint64_t sub_1DDE8()
{
  sub_C3F0();
  v3 = sub_51E0(v1, v2);
  sub_C3B0(v3);
  v5 = *(v4 + 16);
  v6 = sub_1DEA0();
  v7(v6);
  return v0;
}

uint64_t sub_1DE54()
{

  return sub_29244();
}

uint64_t sub_1DE74()
{

  return sub_1DDE8();
}

uint64_t sub_1DEAC()
{

  return sub_29854();
}

uint64_t CoreChartPluginView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_291B4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1DF7C()
{
  v2 = sub_1E0C8();

  return sub_B89C(v1, v0, v2);
}

uint64_t sub_1DFC8()
{
  v2 = sub_1E0C8();

  return sub_53C4(v1, v0, v0, v2);
}

uint64_t type metadata accessor for CoreChartPluginView()
{
  result = qword_3A588;
  if (!qword_3A588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E050()
{
  result = sub_291B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E0C8()
{

  return sub_291B4();
}

uint64_t ContactPickerButtonView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactPickerButtonView();
  v5 = (a2 + *(v4 + 20));
  sub_29A94();
  sub_1E208();
  *v5 = sub_29404();
  v5[1] = v6;
  v7 = a2 + *(v4 + 24);
  sub_29854();
  *v7 = v11;
  *(v7 + 8) = v12;
  v8 = sub_290C4();
  sub_C3B0(v8);
  return (*(v9 + 32))(a2, a1);
}

uint64_t type metadata accessor for ContactPickerButtonView()
{
  result = qword_3A628;
  if (!qword_3A628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E208()
{
  result = qword_3A0D0;
  if (!qword_3A0D0)
  {
    sub_29A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A0D0);
  }

  return result;
}

uint64_t ContactPickerButtonView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_298E4();
  a1[1] = v3;
  v4 = sub_51E0(&qword_3A5C8, &qword_2BFC0);
  return sub_1E2E8(v1, a1 + *(v4 + 44));
}

uint64_t sub_1E2E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v74 = a2;
  v67 = sub_28C54();
  v65 = *(v67 - 8);
  v3 = *(v65 + 64);
  __chkstk_darwin(v67);
  v66 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29104();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  __chkstk_darwin(v5);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_28EC4();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29124();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29934();
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  __chkstk_darwin(v14);
  v69 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_51E0(&qword_3A738, &qword_2C1A0);
  v17 = *(*(v68 - 8) + 64);
  v18 = __chkstk_darwin(v68);
  v73 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v57 - v21;
  __chkstk_darwin(v20);
  v72 = &v57 - v23;
  v24 = type metadata accessor for ContactPickerButtonView();
  v75 = *(v24 - 8);
  v25 = *(v75 + 64);
  v26 = a1 + *(__chkstk_darwin(v24) + 24);
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(__src[0]) = *v26;
  __src[1] = v28;
  sub_51E0(&qword_3A740, &qword_2C1A8);
  sub_29864();
  v79 = 0;
  v80 = 0;
  v29 = 0;
  v76 = 0;
  v77 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v78 = 0;
  if (v90 == 1)
  {
    LOBYTE(v90) = v27;
    v91 = v28;
    sub_29884();
    v79 = __src[1];
    v80 = __src[0];
    v78 = LOBYTE(__src[2]);
    sub_1FCB4(a1, &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    v37 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v77 = swift_allocObject();
    sub_1FD1C(&v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v77 + v37);
    sub_29A94();
    sub_1E208();
    v30 = sub_29404();
    v76 = v38;
    sub_298E4();
    sub_29364();
    v31 = v103;
    v32 = v104;
    v33 = v105;
    v34 = v106;
    v35 = v107;
    v36 = v108;
    v29 = sub_1FFA0;
  }

  v81 = v29;
  v82 = v36;
  v83 = v35;
  v84 = v34;
  v85 = v33;
  v86 = v32;
  v87 = v31;
  v88 = v30;
  v39 = sub_29134();
  __src[3] = v39;
  __src[4] = &protocol witness table for Command;
  v40 = sub_BF4C(__src);
  (*(*(v39 - 8) + 104))(v40, enum case for Command.noOp(_:), v39);
  v93 = sub_28EB4();
  v94 = &protocol witness table for TextProperty;
  sub_BF4C(&v90);
  sub_290B4();
  memset(v89, 0, 40);
  (*(v58 + 104))(v60, enum case for _ProtoButton.FormAction.none(_:), v59);
  (*(v62 + 104))(v64, enum case for Button.LabelStyle.automatic(_:), v63);
  (*(v65 + 104))(v66, enum case for ButtonRole.standard(_:), v67);
  sub_29114();
  sub_1FCB4(a1, &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v42 = swift_allocObject();
  sub_1FD1C(&v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41);
  v43 = v69;
  sub_29924();
  v44 = a1 + *(v24 + 20);
  if (*v44)
  {
    v45 = *v44;
    sub_29A34();

    sub_298E4();
    sub_293E4();
    (*(v70 + 32))(v22, v43, v71);
    memcpy(&v22[*(v68 + 36)], __src, 0x70uLL);
    v46 = v72;
    sub_1FDE0(v22, v72);
    v47 = v73;
    sub_1FE50(v46, v73, &qword_3A738, &qword_2C1A0);
    v49 = v79;
    v48 = v80;
    v89[0] = v80;
    v89[1] = v79;
    v50 = v77;
    v51 = v78;
    v89[2] = v78;
    v89[3] = v81;
    v89[4] = v77;
    v89[5] = v88;
    v52 = v76;
    v89[6] = v76;
    v89[7] = v87;
    v89[8] = v86;
    v89[9] = v85;
    v89[10] = v84;
    v89[11] = v83;
    v89[12] = v82;
    v53 = v74;
    memcpy(v74, v89, 0x68uLL);
    v54 = sub_51E0(&qword_3A748, &qword_2C1B0);
    sub_1FE50(v47, v53 + *(v54 + 48), &qword_3A738, &qword_2C1A0);
    sub_1FE50(v89, &v90, &qword_3A750, &qword_2C1B8);
    sub_1D958(v46, &qword_3A738, &qword_2C1A0);
    sub_1D958(v47, &qword_3A738, &qword_2C1A0);
    v90 = v48;
    v91 = v49;
    v92 = v51;
    v93 = v81;
    v94 = v50;
    v95 = v88;
    v96 = v52;
    v97 = v87;
    v98 = v86;
    v99 = v85;
    v100 = v84;
    v101 = v83;
    v102 = v82;
    return sub_1D958(&v90, &qword_3A750, &qword_2C1B8);
  }

  else
  {
    v56 = *(v44 + 8);
    sub_29A94();
    sub_1E208();
    result = sub_293F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1EBF0(void *a1)
{
  v2 = v1;
  v4 = sub_29094();
  v5 = sub_29084();
  v7 = v6;
  v8 = [a1 identifier];
  v9 = sub_29B14();
  v11 = v10;

  v20 = &type metadata for String;
  *&v19 = v9;
  *(&v19 + 1) = v11;
  sub_20004(&v19, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20398(v18, v5, v7, isUniquelyReferenced_nonNull_native);

  v13 = v4;
  v14 = v2 + *(type metadata accessor for ContactPickerButtonView() + 20);
  if (*v14)
  {
    v15 = *v14;
    sub_290A4();
    sub_1EDBC(v13);

    sub_29A84();
  }

  else
  {
    v17 = *(v14 + 8);
    sub_29A94();
    sub_1E208();
    result = sub_20890();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ED48(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ContactPickerButtonView() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_51E0(&qword_3A740, &qword_2C1A8);
  return sub_29874();
}

uint64_t sub_1EDBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_51E0(&qword_3A758, &qword_2C1C0);
    v2 = sub_29FF4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_DF18(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_20004(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_20004(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_20004(v31, v32);
    result = sub_29EC4(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_20004(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1F098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_290C4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_B89C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1F164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_290C4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_53C4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_1F20C()
{
  sub_290C4();
  if (v0 <= 0x3F)
  {
    sub_BABC();
    if (v1 <= 0x3F)
    {
      sub_1F2A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1F2A8()
{
  if (!qword_3A640)
  {
    v0 = sub_29894();
    if (!v1)
    {
      atomic_store(v0, &qword_3A640);
    }
  }
}

id sub_1F2F8()
{
  objc_allocWithZone(type metadata accessor for SystemContactPicker.SystemContactPickerViewController());
  v1 = *(v0 + 8);
  v6 = *v0;
  v2 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_1FC04(&v6, v4);

  sub_1FE50(&v5, v4, &qword_3A720, &qword_2C190);
  return sub_1F388(v0);
}

id sub_1F388(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 6) = *(a1 + 48);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_1F3F8()
{
  if (qword_38FB0 != -1)
  {
    swift_once();
  }

  v0 = sub_29264();
  sub_5BB4(v0, qword_3C140);
  v1 = sub_29254();
  v2 = sub_29DA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_DA08(0xD000000000000025, 0x800000000002E5C0, &v6);
    _os_log_impl(&dword_0, v1, v2, "%{public}s", v3, 0xCu);
    sub_5FD0(v4);
  }

  result = sub_29FD4();
  __break(1u);
  return result;
}

void sub_1F570()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v2 = [objc_allocWithZone(CNContactPickerViewController) init];
  [v2 setDelegate:v0];
  v3 = *&v0[OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container + 40];
  if (v3)
  {
    v4 = v3;
    sub_29A54();

    [v1 presentViewController:v2 animated:1 completion:0];
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container + 48];
    sub_29A94();
    sub_1E208();
    sub_20890();
    __break(1u);
  }
}

void sub_1F690()
{
  v1 = v0 + OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container;
  v5 = *(v0 + OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container);
  v6 = *(v0 + OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container + 8);
  v7 = *(v0 + OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container + 16);
  sub_51E0(&qword_3A730, &qword_2C198);
  sub_298B4();
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = v2;
    sub_29A44();
  }

  else
  {
    v4 = *(v1 + 48);
    sub_29A94();
    sub_1E208();
    sub_20890();
    __break(1u);
  }
}

uint64_t sub_1F78C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container;
  v10 = *(v2 + OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container);
  v11 = *(v2 + OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container + 8);
  v12 = *(v2 + OBJC_IVAR____TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController_container + 16);
  sub_51E0(&qword_3A730, &qword_2C198);
  sub_298B4();
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = v5;
    sub_29A44();

    v7 = *(v4 + 32);
    return (*(v4 + 24))(a2);
  }

  else
  {
    v9 = *(v4 + 48);
    sub_29A94();
    sub_1E208();
    result = sub_20890();
    __break(1u);
  }

  return result;
}

unint64_t sub_1F99C()
{
  result = qword_3A708;
  if (!qword_3A708)
  {
    sub_558C(&qword_3A710, &qword_2C068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A708);
  }

  return result;
}

__n128 sub_1FA00(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1FA1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1FA5C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1FABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1FC60();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1FB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1FC60();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1FB84()
{
  sub_1FC60();
  sub_29654();
  __break(1u);
}

unint64_t sub_1FBB0()
{
  result = qword_3A718;
  if (!qword_3A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A718);
  }

  return result;
}

unint64_t sub_1FC60()
{
  result = qword_3A728;
  if (!qword_3A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A728);
  }

  return result;
}

uint64_t sub_1FCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPickerButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1FD1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPickerButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1FD80()
{
  v1 = *(type metadata accessor for ContactPickerButtonView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1ED48(v2);
}

uint64_t sub_1FDE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A738, &qword_2C1A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1FE50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_51E0(a3, a4);
  sub_C3B0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1FEB0()
{
  v1 = (type metadata accessor for ContactPickerButtonView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_290C4();
  sub_C3B0(v5);
  (*(v6 + 8))(v0 + v3);

  v7 = *(v0 + v3 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1FFA0(void *a1)
{
  v3 = *(type metadata accessor for ContactPickerButtonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_1EBF0(a1);
}

_OWORD *sub_20004(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_20014(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2A0B4();
  sub_20590(__src, a1);
  v4 = sub_2A0D4();

  return sub_200F8(a1, v4);
}

unint64_t sub_20080(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2A0B4();
  sub_29BA4();
  v6 = sub_2A0D4();

  return sub_201AC(a1, a2, v6);
}

unint64_t sub_200F8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = *(*(v2 + 48) + 8 * i);

    v8 = sub_206E4(v7, a1);

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_201AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2A034() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_20260(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_20014(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_51E0(&qword_39B10, &qword_2C1D0);
  if (!sub_29FB4(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_20014(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_51E0(&unk_3A770, &qword_2B320);
    result = sub_2A054();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    sub_204E0(v14, a2, a1, v19);
  }
}

_OWORD *sub_20398(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20080(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_51E0(&unk_3A760, &qword_2C1C8);
  if (!sub_29FB4(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_20080(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_2A054();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v16);
    sub_5FD0(v22);

    return sub_20004(a1, v22);
  }

  else
  {
    sub_20524(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_204E0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_20524(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20004(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_20590(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_2A0D4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v14)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_2A0B4();

    sub_29BA4();
    v14 = sub_2A0D4();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_2A0C4(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_206E4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_2A0B4();

      sub_29BA4();
      v16 = sub_2A0D4();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_2A034();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20890()
{

  return sub_293F4();
}

uint64_t IntentsUIStandardView.init(modelData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29014();
  v7 = sub_7AA0(v6);
  v35 = v8;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v7);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v15 = type metadata accessor for IntentsUIStandardView();
  v16 = (a3 + v15[5]);
  sub_29A94();
  sub_20D60(&qword_3A0D0, &type metadata accessor for Context);
  v17 = sub_29404();
  *v16 = v17;
  v16[1] = v18;
  v19 = v15[6];
  *(a3 + v19) = swift_getKeyPath();
  sub_51E0(&qword_38FE8, &unk_2C210);
  swift_storeEnumTagMultiPayload();
  v20 = v15[7];
  _s12SystemPlugin16SashStandardViewV14_actionHandler33_289897A7AC71DBD41716A1019D2705CFLL9SnippetUI06ActionG0Vvpfi_0();
  sub_DACC(a1, a2);
  sub_20D60(&qword_396B0, &type metadata accessor for IntentsUIStandard);
  v38 = a1;
  v21 = v37;
  sub_28FA4();
  if (v21)
  {
    sub_DB24(v38, a2);

    sub_236D8(a3 + v19, &qword_396B8, &qword_2B0E0);
    v22 = sub_29994();
    sub_7B1C(v22);
    return (*(v23 + 8))(a3 + v20);
  }

  else
  {
    v25 = v35;
    (*(v35 + 32))(a3, v14, v6);
    v26 = v36;
    (*(v25 + 16))(v36, a3, v6);
    v27 = objc_allocWithZone(type metadata accessor for IntentsUIStandardViewModel());
    sub_1F30(v26, 0, 0);
    v28 = (a3 + v15[8]);
    sub_237EC();
    sub_20D60(v29, v30);
    v31 = sub_29394();
    v33 = v32;
    result = sub_DB24(v38, a2);
    *v28 = v31;
    v28[1] = v33;
  }

  return result;
}

uint64_t type metadata accessor for IntentsUIStandardView()
{
  result = qword_3A7F8;
  if (!qword_3A7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntentsUIStandardView.model.getter()
{
  v0 = sub_29014();
  sub_C3B0(v0);
  v2 = *(v1 + 16);
  v3 = sub_1DEA0();

  return v4(v3);
}

uint64_t sub_20CB8(uint64_t a1)
{
  v2 = sub_51E0(&qword_3A810, &unk_2C2B8);
  v3 = sub_23804(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_2379C(a1, &v8 - v6, &qword_3A810, &unk_2C2B8);
  return sub_294B4();
}

uint64_t sub_20D60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t property wrapper backing initializer of IntentsUIStandardView.viewModel()
{
  swift_getObjectType();
  sub_237EC();
  sub_20D60(v0, v1);
  sub_1DEA0();

  return sub_29394();
}

uint64_t IntentsUIStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IntentsUIStandardView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_51E0(&qword_3A780, &qword_2C220);
  v7 = sub_23804(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &__src[-v10];
  v12 = sub_51E0(&qword_3A788, &qword_2C228);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &__src[-v15];
  *v11 = sub_295A4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v17 = &v11[*(sub_51E0(&qword_3A790, &qword_2C230) + 44)];
  sub_21094(v1);
  sub_298E4();
  sub_293E4();
  sub_225F4(v11, v16, &qword_3A780, &qword_2C220);
  memcpy(&v16[*(v13 + 44)], __src, 0x70uLL);
  sub_22510(v1, &__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_22578(&__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18);
  sub_225F4(v16, a1, &qword_3A788, &qword_2C228);
  result = sub_51E0(&qword_3A798, &qword_2C238);
  v21 = (a1 + *(result + 36));
  *v21 = sub_225DC;
  v21[1] = v19;
  v21[2] = 0;
  v21[3] = 0;
  return result;
}

uint64_t sub_21094(uint64_t a1)
{
  v2 = type metadata accessor for IntentsUIStandardView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(__chkstk_darwin(v2 - 8) + 40) + 8);
  v6 = *(sub_1CC0() + 16);

  v10[0] = 0;
  v10[1] = v6;
  swift_getKeyPath();
  sub_22510(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_22578(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_51E0(&qword_3A870, &qword_2C2E0);
  sub_51E0(&qword_3A878, &qword_2C2E8);
  sub_22C80();
  sub_22D60();
  return sub_298D4();
}

uint64_t sub_21228@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = type metadata accessor for IntentsUIStandardView();
  v6 = v5 - 8;
  v51 = *(v5 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v5);
  v52 = v8;
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29194();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_51E0(&qword_3A8E8, &qword_2C318);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v51 - v16;
  v56 = sub_51E0(&qword_3A8F0, &unk_2C320);
  v18 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v20 = (&v51 - v19);
  v21 = sub_51E0(&qword_39550, &qword_2AF20);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v51 - v23;
  v57 = sub_51E0(&qword_3A8F8, &qword_2C330);
  v55 = *(v57 - 8);
  v25 = *(v55 + 64);
  __chkstk_darwin(v57);
  v54 = &v51 - v26;
  v27 = *a1;
  v28 = *(a2 + *(v6 + 40) + 8);
  result = sub_1CC0();
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v27 >= *(result + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_230B8(result + 48 * v27 + 32, v65);

  if (v66)
  {
    sub_23114(v65, &v59);
    sub_21FF4(v13);
    sub_29954();
    (*(v10 + 8))(v13, v9);
    v30 = sub_29964();
    if (sub_B89C(v17, 1, v30) == 1)
    {
      sub_236D8(v17, &qword_3A8E8, &qword_2C318);
      v31 = 0;
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v31 = sub_29944();
      (*(*(v30 - 8) + 8))(v17, v30);
      v44 = v53;
      sub_22510(a2, v53);
      v45 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v33 = swift_allocObject();
      sub_22578(v44, v33 + v45);
      v32 = sub_232CC;
    }

    *v20 = v31;
    v20[1] = v32;
    v20[3] = 0;
    v20[4] = 0;
    v20[2] = v33;
    swift_storeEnumTagMultiPayload();
    sub_51E0(&qword_3A8D0, &qword_2C308);
    v46 = sub_558C(&qword_3A898, &qword_2C2F0);
    v47 = sub_28EE4();
    v48 = sub_558C(&qword_3A8A0, &qword_2C2F8);
    v49 = sub_22E6C();
    v50 = sub_22EF8();
    v67 = v46;
    v68 = v47;
    v69 = v48;
    v70 = v49;
    *&v71 = v50;
    swift_getOpaqueTypeConformance2();
    sub_22FB0();
    sub_295D4();
    return sub_5FD0(&v59);
  }

  else
  {
    v34 = *&v65[0];
    v53 = v34;
    [v34 preferredContentSize];
    sub_298E4();
    sub_29364();
    v59 = v34;
    v60 = v67;
    LOBYTE(v61) = v68;
    v62 = v69;
    LOBYTE(v63) = v70;
    v64 = v71;
    v35 = sub_29004();
    v52 = &v51;
    __chkstk_darwin(v35);
    *(&v51 - 2) = a2;
    v51 = sub_51E0(&qword_3A898, &qword_2C2F0);
    v36 = v20;
    v37 = sub_28EE4();
    v38 = sub_51E0(&qword_3A8A0, &qword_2C2F8);
    v39 = sub_22E6C();
    v40 = sub_22EF8();
    v41 = v54;
    sub_29754();
    sub_236D8(v24, &qword_39550, &qword_2AF20);

    v42 = v55;
    v43 = v57;
    (*(v55 + 16))(v36, v41, v57);
    swift_storeEnumTagMultiPayload();
    sub_51E0(&qword_3A8D0, &qword_2C308);
    v59 = v51;
    v60 = v37;
    v61 = v38;
    v62 = v39;
    v63 = v40;
    swift_getOpaqueTypeConformance2();
    sub_22FB0();
    sub_295D4();

    return (*(v42 + 8))(v41, v43);
  }
}

id sub_219A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v19 = *(a1 + 40);
  v17 = *a1;
  v18 = *(a1 + 48);
  v11 = sub_298E4();
  v13 = v12;
  v14 = a4 + *(sub_51E0(&qword_3A8A0, &qword_2C2F8) + 36);
  sub_21A90(a3, a2, v14);
  v15 = (v14 + *(sub_51E0(&qword_3A8C0, &qword_2C300) + 36));
  *v15 = v11;
  v15[1] = v13;
  *a4 = v17;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v19;
  *(a4 + 48) = v18;

  return v17;
}

uint64_t sub_21A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a3;
  v4 = sub_28EE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for IntentsUIStandardView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_297C4();
  v11 = sub_297E4();

  sub_298E4();
  sub_293E4();
  __src[0] = v11;
  sub_22510(a1, v10);
  (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v4);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_22578(v10, v14 + v12);
  (*(v5 + 32))(v14 + v13, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_51E0(&qword_3A900, &qword_2C338);
  sub_23654();
  sub_29784();

  memcpy(__dst, __src, sizeof(__dst));
  return sub_236D8(__dst, &qword_3A900, &qword_2C338);
}

uint64_t sub_21D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_39548, &qword_2C340);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_51E0(&qword_39550, &qword_2AF20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_51E0(&qword_39558, &qword_2AF28);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22 - v14;
  v16 = a1 + *(type metadata accessor for IntentsUIStandardView() + 28);
  sub_29974();
  v17 = sub_29A14();
  if (sub_B89C(v15, 1, v17) == 1)
  {
    return sub_236D8(v15, &qword_39558, &qword_2AF28);
  }

  v19 = sub_28EE4();
  (*(*(v19 - 8) + 16))(v11, a2, v19);
  sub_53C4(v11, 0, 1, v19);
  v20 = enum case for InteractionType.componentTapped(_:);
  v21 = sub_299A4();
  (*(*(v21 - 8) + 104))(v7, v20, v21);
  sub_53C4(v7, 0, 1, v21);
  sub_29A04();
  sub_236D8(v7, &qword_39548, &qword_2C340);
  sub_236D8(v11, &qword_39550, &qword_2AF20);
  return (*(*(v17 - 8) + 8))(v15, v17);
}

uint64_t sub_21FF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29574();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_51E0(&qword_38FE8, &unk_2C210);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v26 - v10);
  v12 = sub_51E0(&qword_3A810, &unk_2C2B8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v26 - v14;
  v16 = type metadata accessor for IntentsUIStandardView();
  sub_2379C(v1 + *(v16 + 24), v11, &qword_38FE8, &unk_2C210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2372C(v11, v15);
  }

  else
  {
    v17 = *v11;
    sub_29DA4();
    v18 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
  }

  v19 = sub_29194();
  if (sub_B89C(v15, 1, v19) != 1)
  {
    return (*(*(v19 - 8) + 32))(a1, v15, v19);
  }

  sub_236D8(v15, &qword_3A810, &unk_2C2B8);
  if (qword_38FB0 != -1)
  {
    swift_once();
  }

  v21 = sub_29264();
  sub_5BB4(v21, qword_3C140);
  v22 = sub_29254();
  v23 = sub_29DA4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_DA08(0xD00000000000003BLL, 0x800000000002E650, &v27);
    _os_log_impl(&dword_0, v22, v23, "%{public}s", v24, 0xCu);
    sub_5FD0(v25);
  }

  result = sub_29FD4();
  __break(1u);
  return result;
}

void sub_223DC(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for IntentsUIStandardView() + 20);
  if (*v1)
  {
    v2 = *v1;
    v3 = sub_29A64();

    if (v3)
    {
      if ([v3 respondsToSelector:"informHostOfViewResize:"])
      {
        [v3 informHostOfViewResize:{0.0, 0.0}];
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v4 = *(v1 + 8);
    sub_29A94();
    sub_20D60(&qword_3A0D0, &type metadata accessor for Context);
    sub_293F4();
    __break(1u);
  }
}

uint64_t sub_22510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentsUIStandardView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentsUIStandardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_23828(a1, a2, a3, a4);
  sub_C3B0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1DEA0();
  v9(v8);
  return v4;
}

uint64_t sub_22670(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29014();
  v7 = sub_C40C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return sub_B89C(v10, a2, v9);
  }

  v11 = sub_51E0(&qword_396B8, &qword_2B0E0);
  v12 = sub_C40C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[6];
LABEL_7:
    v10 = a1 + v14;
    goto LABEL_8;
  }

  v15 = sub_29994();
  v16 = sub_C40C(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[7];
    goto LABEL_7;
  }

  v19 = *(a1 + a3[8] + 8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_227C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_29014();
  v9 = sub_C40C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_51E0(&qword_396B8, &qword_2B0E0);
    v14 = sub_C40C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = sub_29994();
      result = sub_C40C(v17);
      if (*(v19 + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v11 = result;
      v16 = a4[7];
    }

    v12 = a1 + v16;
  }

  return sub_53C4(v12, a2, a2, v11);
}

void sub_228F8()
{
  sub_29014();
  if (v0 <= 0x3F)
  {
    sub_BABC();
    if (v1 <= 0x3F)
    {
      sub_229C4();
      if (v2 <= 0x3F)
      {
        sub_29994();
        if (v3 <= 0x3F)
        {
          sub_22A28();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_229C4()
{
  if (!qword_3A808)
  {
    sub_558C(&qword_3A810, &unk_2C2B8);
    v0 = sub_29334();
    if (!v1)
    {
      atomic_store(v0, &qword_3A808);
    }
  }
}

void sub_22A28()
{
  if (!qword_3A818)
  {
    type metadata accessor for IntentsUIStandardViewModel();
    sub_20D60(&qword_396C0, type metadata accessor for IntentsUIStandardViewModel);
    v0 = sub_293A4();
    if (!v1)
    {
      atomic_store(v0, &qword_3A818);
    }
  }
}

unint64_t sub_22AC0()
{
  result = qword_3A858;
  if (!qword_3A858)
  {
    sub_558C(&qword_3A798, &qword_2C238);
    sub_22B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A858);
  }

  return result;
}

unint64_t sub_22B4C()
{
  result = qword_3A860;
  if (!qword_3A860)
  {
    sub_558C(&qword_3A788, &qword_2C228);
    sub_156A4(&qword_3A868, &qword_3A780, &qword_2C220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A860);
  }

  return result;
}

uint64_t sub_22C04@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IntentsUIStandardView();
  sub_23804(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_21228(a1, v7, a2);
}

unint64_t sub_22C80()
{
  result = qword_3A880;
  if (!qword_3A880)
  {
    sub_558C(&qword_3A870, &qword_2C2E0);
    sub_22D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A880);
  }

  return result;
}

unint64_t sub_22D0C()
{
  result = qword_3A888;
  if (!qword_3A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A888);
  }

  return result;
}

unint64_t sub_22D60()
{
  result = qword_3A890;
  if (!qword_3A890)
  {
    sub_558C(&qword_3A878, &qword_2C2E8);
    sub_558C(&qword_3A898, &qword_2C2F0);
    sub_28EE4();
    sub_558C(&qword_3A8A0, &qword_2C2F8);
    sub_22E6C();
    sub_22EF8();
    swift_getOpaqueTypeConformance2();
    sub_22FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A890);
  }

  return result;
}

unint64_t sub_22E6C()
{
  result = qword_3A8A8;
  if (!qword_3A8A8)
  {
    sub_558C(&qword_3A898, &qword_2C2F0);
    sub_1A9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A8A8);
  }

  return result;
}

unint64_t sub_22EF8()
{
  result = qword_3A8B0;
  if (!qword_3A8B0)
  {
    sub_558C(&qword_3A8A0, &qword_2C2F8);
    sub_22E6C();
    sub_156A4(&qword_3A8B8, &qword_3A8C0, &qword_2C300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A8B0);
  }

  return result;
}

unint64_t sub_22FB0()
{
  result = qword_3A8C8;
  if (!qword_3A8C8)
  {
    sub_558C(&qword_3A8D0, &qword_2C308);
    sub_23034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A8C8);
  }

  return result;
}

unint64_t sub_23034()
{
  result = qword_3A8D8;
  if (!qword_3A8D8)
  {
    sub_558C(&qword_3A8E0, &qword_2C310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A8D8);
  }

  return result;
}

uint64_t sub_23114(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2312C()
{
  v2 = type metadata accessor for IntentsUIStandardView();
  sub_23810(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;
  v9 = sub_29014();
  sub_7B1C(v9);
  (*(v10 + 8))(v1 + v5);

  v11 = v0[6];
  sub_51E0(&qword_38FE8, &unk_2C210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_29194();
    if (!sub_B89C(v8 + v11, 1, v12))
    {
      (*(*(v12 - 8) + 8))(v8 + v11, v12);
    }
  }

  else
  {
    v13 = *(v8 + v11);
  }

  v14 = v0[7];
  v15 = sub_29994();
  sub_7B1C(v15);
  (*(v16 + 8))(v8 + v14);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_232E4(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for IntentsUIStandardView();
  sub_23804(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_2335C()
{
  v2 = type metadata accessor for IntentsUIStandardView();
  sub_23810(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v24 = *(v6 + 64);
  v7 = sub_28EE4();
  sub_7AA0(v7);
  v9 = v8;
  v10 = *(v8 + 80);
  v25 = *(v11 + 64);
  v12 = v1 + v5;
  v13 = sub_29014();
  sub_7B1C(v13);
  (*(v14 + 8))(v1 + v5);

  v15 = v0[6];
  sub_51E0(&qword_38FE8, &unk_2C210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_29194();
    if (!sub_B89C(v12 + v15, 1, v16))
    {
      (*(*(v16 - 8) + 8))(v12 + v15, v16);
    }
  }

  else
  {
    v17 = *(v12 + v15);
  }

  v18 = v4 | v10;
  v19 = (v5 + v24 + v10) & ~v10;
  v20 = v0[7];
  v21 = sub_29994();
  sub_7B1C(v21);
  (*(v22 + 8))(v12 + v20);

  (*(v9 + 8))(v1 + v19, v7);

  return _swift_deallocObject(v1, v19 + v25, v18 | 7);
}

uint64_t sub_2358C()
{
  v1 = *(type metadata accessor for IntentsUIStandardView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_28EE4();
  sub_23804(v4);
  v6 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_21D5C(v0 + v2, v6);
}

unint64_t sub_23654()
{
  result = qword_3A908;
  if (!qword_3A908)
  {
    sub_558C(&qword_3A900, &qword_2C338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A908);
  }

  return result;
}

uint64_t sub_236D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_51E0(a2, a3);
  sub_7B1C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2372C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A810, &unk_2C2B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_23828(a1, a2, a3, a4);
  sub_C3B0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1DEA0();
  v9(v8);
  return v4;
}

uint64_t sub_23828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_51E0(a3, a4);
}

uint64_t CircleImageView.init(model:)(uint64_t a1)
{
  v2 = sub_28CD4();
  v3 = sub_7AA0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_16B7C();
  v10 = v9 - v8;
  sub_29A94();
  sub_2455C();
  sub_24050(v11, v12);
  v13 = sub_29404();
  (*(v5 + 16))(v10, a1, v2);
  if ((*(v5 + 88))(v10, v2) == enum case for ContactImage.visual(_:))
  {
    (*(v5 + 8))(a1, v2);
    (*(v5 + 96))(v10, v2);
    return *v10;
  }

  else
  {
    v15 = *(v5 + 8);
    v15(v10, v2);
    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v16 = sub_29264();
    sub_5BB4(v16, qword_3C140);
    v17 = sub_29254();
    v18 = sub_29D94();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Provided model is not a visual model.", v19, 2u);
    }

    sub_23AD8();
    swift_allocError();
    swift_willThrow();

    return (v15)(a1, v2);
  }
}

unint64_t sub_23AD8()
{
  result = qword_3A910;
  if (!qword_3A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A910);
  }

  return result;
}

uint64_t CircleImageView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a1;
  v72 = a3;
  v4 = sub_28D44();
  v5 = sub_7AA0(v4);
  v70 = v6;
  v71 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_16B7C();
  v65 = v10 - v9;
  v64 = sub_28CA4();
  v11 = sub_7AA0(v64);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_16B7C();
  v18 = v17 - v16;
  v19 = *(*(sub_51E0(&qword_39568, &qword_2AF38) - 8) + 64);
  sub_1DEC8();
  __chkstk_darwin(v20);
  v21 = sub_299E4();
  v22 = sub_7AA0(v21);
  v66 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_16B7C();
  v28 = v27 - v26;
  v29 = sub_51E0(&qword_3A918, &qword_2C348);
  v30 = sub_7AA0(v29);
  v67 = v31;
  v68 = v30;
  v33 = *(v32 + 64);
  sub_1DEC8();
  __chkstk_darwin(v34);
  v36 = &v61 - v35;
  v37 = sub_51E0(&qword_3A920, &qword_2C350);
  v38 = sub_7AA0(v37);
  v62 = v39;
  v63 = v38;
  v41 = *(v40 + 64);
  sub_1DEC8();
  __chkstk_darwin(v42);
  v44 = &v61 - v43;
  v61 = sub_51E0(&qword_3A928, &qword_2C358);
  v45 = *(*(v61 - 8) + 64);
  sub_1DEC8();
  __chkstk_darwin(v46);
  v48 = &v61 - v47;
  if (a2)
  {
    v49 = a2;
    sub_29A24();

    sub_29E14();
    sub_28ED4();
    sub_29C94();
    (*(v13 + 8))(v18, v64);
    sub_299D4();
    v51 = v70;
    v50 = v71;
    v52 = v65;
    (*(v70 + 104))(v65, enum case for ImageElement.ImageStyle.contactImage5(_:), v71);
    v53 = sub_24050(&qword_3A930, &type metadata accessor for VisualElementView);
    sub_29714();
    (*(v51 + 8))(v52, v50);
    (*(v66 + 8))(v28, v21);
    v73 = v21;
    v74 = v53;
    swift_getOpaqueTypeConformance2();
    v54 = v68;
    sub_29734();
    (*(v67 + 8))(v36, v54);
    (*(v62 + 32))(v48, v44, v63);
    *&v48[*(v61 + 36)] = 256;
    KeyPath = swift_getKeyPath();
    v56 = v72;
    sub_240F0(v48, v72);
    result = sub_51E0(&qword_3A938, &qword_2C390);
    v58 = v56 + *(result + 36);
    *v58 = KeyPath;
    *(v58 + 8) = 1;
  }

  else
  {
    sub_29A94();
    sub_2455C();
    sub_24050(v59, v60);
    result = sub_293F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_24050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24098@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29444();
  *a1 = result & 1;
  return result;
}

uint64_t sub_240F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A928, &qword_2C358);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24188(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_241C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2421C()
{
  result = qword_3A940;
  if (!qword_3A940)
  {
    sub_558C(&qword_3A938, &qword_2C390);
    sub_242D4();
    sub_156A4(&qword_3A960, &qword_3A968, &qword_2C438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A940);
  }

  return result;
}

unint64_t sub_242D4()
{
  result = qword_3A948;
  if (!qword_3A948)
  {
    sub_558C(&qword_3A928, &qword_2C358);
    sub_558C(&qword_3A918, &qword_2C348);
    sub_299E4();
    sub_24050(&qword_3A930, &type metadata accessor for VisualElementView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_156A4(&qword_3A950, &qword_3A958, &qword_2C430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A948);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CircleImageView.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x244CCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24508()
{
  result = qword_3A970;
  if (!qword_3A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A970);
  }

  return result;
}

uint64_t sub_24574(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_245B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2461C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_295A4();
  v11 = 1;
  sub_24740(a1, a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  sub_24A24(__dst, v9);
  sub_24AA4(v13, &qword_3A978, &qword_2C578);
  memcpy(&v10[7], __dst, 0x48uLL);
  LOBYTE(a2) = v11;
  sub_298E4();
  sub_293E4();
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = a2;
  memcpy((a3 + 17), v10, 0x4FuLL);
  return memcpy((a3 + 96), __src, 0x70uLL);
}

uint64_t sub_24740@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_51E0(&qword_3A980, &qword_2C580);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v30 - v8;
  v10 = sub_51E0(&qword_3A988, &qword_2C588);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v30 - v12;
  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v30[0] = a1;
    v30[1] = a2;
    sub_179D0();

    v15 = sub_29704();
    v17 = v16;
    v19 = v18;
    v21 = v20 & 1;
    sub_24A94(v15, v16, v20 & 1);
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v21 = 0;
    v19 = 0;
  }

  sub_29814();
  sub_295B4();
  v22 = sub_295C4();
  sub_53C4(v13, 0, 1, v22);
  v23 = sub_29834();

  sub_24AA4(v13, &qword_3A988, &qword_2C588);
  v24 = sub_297A4();
  v25 = sub_297D4();
  v26 = sub_296E4();
  sub_53C4(v9, 1, 1, v26);
  v27 = sub_296F4();
  sub_24AA4(v9, &qword_3A980, &qword_2C580);
  KeyPath = swift_getKeyPath();
  sub_24B60(v15, v17, v21, v19);

  sub_24BA4(v15, v17, v21, v19);
  *a3 = v15;
  a3[1] = v17;
  a3[2] = v21;
  a3[3] = v19;
  a3[4] = v23;
  a3[5] = v24;
  a3[6] = v25;
  a3[7] = KeyPath;
  a3[8] = v27;

  return sub_24BA4(v15, v17, v21, v19);
}

uint64_t sub_24A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A978, &qword_2C578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24AA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_51E0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24B04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29524();
  *a1 = result;
  return result;
}

uint64_t sub_24B30(uint64_t *a1)
{
  v1 = *a1;

  return sub_29534();
}

uint64_t sub_24B60(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24A94(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24BA4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24BE8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24BE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24BFC()
{
  result = qword_3A990;
  if (!qword_3A990)
  {
    sub_558C(&qword_3A998, &qword_2C5C0);
    sub_24C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A990);
  }

  return result;
}

unint64_t sub_24C88()
{
  result = qword_3A9A0;
  if (!qword_3A9A0)
  {
    sub_558C(&qword_3A9A8, &qword_2C5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A9A0);
  }

  return result;
}

uint64_t MapsOverlayView.init(model:)(uint64_t a1)
{
  v3 = sub_28B1C();
  v4 = type metadata accessor for MapsOverlayView(v3);
  v5 = (v1 + *(v4 + 24));
  sub_29A94();
  sub_27B74();
  *v5 = sub_29404();
  v5[1] = v6;
  v7 = sub_28F84();
  sub_C40C(v7);
  v9 = v8;
  (*(v8 + 16))(v1, a1, v7);
  sub_28F64();
  v11 = v10;
  sub_28F74();
  v13 = v12;
  v14 = COERCE_DOUBLE(sub_28F34());
  if (v15)
  {
    v16 = 0.01;
  }

  else
  {
    v16 = v14;
  }

  v17 = sub_28F44();
  v19 = v18;
  result = (*(v9 + 8))(a1, v7);
  v21 = *&v17;
  if (v19)
  {
    v21 = 0.01;
  }

  v22 = v1 + *(v4 + 20);
  *v22 = v11;
  *(v22 + 8) = v13;
  *(v22 + 16) = v16;
  *(v22 + 24) = v21;
  *(v22 + 32) = 0;
  return result;
}

double property wrapper backing initializer of MapsOverlayView.region@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for MKCoordinateRegion(0);
  sub_29854();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t MapsOverlayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_24F88(v1, a1);
  v3 = a1 + *(sub_51E0(&qword_3A9B0, &qword_2C5D0) + 36);
  *v3 = 0x3FF0000000000000;
  *(v3 + 8) = 0;
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  result = sub_51E0(&qword_3A9B8, &qword_2C608);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = sub_27908;
  v7[2] = v5;
  return result;
}

uint64_t sub_24F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v72 = sub_51E0(&qword_3ACC0, &qword_2C8C0);
  v3 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v70 = v68 - v4;
  v5 = sub_29204();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v68[1] = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_51E0(&qword_3AC60, &qword_2C888);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v68 - v10;
  v12 = sub_51E0(&qword_3AC48, &qword_2C718);
  v69 = *(v12 - 8);
  v13 = *(v69 + 64);
  __chkstk_darwin(v12);
  v15 = v68 - v14;
  v16 = sub_51E0(&qword_3ACC8, &qword_2C8C8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v68 - v18;
  v20 = sub_29184();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28F54();
  v25 = v20;
  if (sub_B89C(v19, 1, v20) == 1)
  {
    sub_288A0();
    v26 = a1 + *(type metadata accessor for MapsOverlayView(0) + 20);
    v27 = *(v26 + 32);
    v28 = *(v26 + 16);
    *v80 = *v26;
    *&v80[16] = v28;
    *&v80[32] = v27;
    sub_51E0(&qword_3ACD0, &qword_2C8D0);
    sub_29884();
    v29 = sub_51E0(&qword_3AC70, &qword_2C898);
    sub_53C4(v11, 1, 1, v29);
    sub_291F4();
    sub_291D4();
    v30 = v69;
    (*(v69 + 16))(v70, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_51E0(&qword_3AC00, &qword_2C700);
    sub_2841C();
    sub_C26C();
    sub_295D4();
    return (*(v30 + 8))(v15, v12);
  }

  v32 = a1;
  v33 = *(v21 + 32);
  v69 = v25;
  v33(v24, v19, v25);
  MapItems.mapAnnotation.getter();
  v68[0] = v24;
  if (!v34)
  {
    MapItems.mapMarker.getter();
    if (v50)
    {
      v51 = v50;
      v52 = type metadata accessor for MapsOverlayView(0);
      v37 = a1 + *(v52 + 24);
      v53 = *v37;
      v49 = v70;
      if (!*v37)
      {
        goto LABEL_16;
      }

      v54 = v32 + *(v52 + 20);
      v55 = *(v54 + 32);
      v56 = *(v54 + 16);
      *v80 = *v54;
      *&v80[16] = v56;
      *&v80[32] = v55;
      v57 = v53;
      sub_51E0(&qword_3ACD0, &qword_2C8D0);
      sub_29884();
      *&v74 = v51;
      *(&v74 + 1) = v57;
      v75 = v82;
      v76 = v83;
      v77 = v84;
      v82 = v74;
      v83 = v75;
      v58 = v84;
      v84 = v76;
      v85 = v58;
      v78 = 1;
      LOBYTE(v86) = 1;
      sub_288F4(&v74, v80);
      sub_285B8();
      sub_2860C();
      sub_295D4();
      memcpy(v80, v73, sizeof(v80));
      v79 = 0;
      v81 = 0;
      sub_51E0(&qword_3AC20, &qword_2C710);
      sub_2852C();
      sub_28660();
      sub_295D4();
      sub_2892C(&v74);
    }

    else
    {
      MapItems.mapPin.getter();
      v49 = v70;
      if (!v59)
      {
        v44 = 0uLL;
        v48 = -256;
        v45 = 0uLL;
        v47 = 0uLL;
        v46 = 0uLL;
        goto LABEL_13;
      }

      v60 = v59;
      v61 = type metadata accessor for MapsOverlayView(0);
      v37 = v32 + *(v61 + 24);
      v62 = *v37;
      if (!*v37)
      {
LABEL_16:
        v67 = *(v37 + 8);
        sub_29A94();
        sub_27B74();
        result = sub_293F4();
        __break(1u);
        return result;
      }

      v63 = v32 + *(v61 + 20);
      v64 = *(v63 + 32);
      v65 = *(v63 + 16);
      *v80 = *v63;
      *&v80[16] = v65;
      *&v80[32] = v64;
      v66 = v62;
      sub_51E0(&qword_3ACD0, &qword_2C8D0);
      sub_29884();
      v73[0] = 1;
      *v80 = v60;
      *&v80[8] = v66;
      *&v80[16] = v82;
      *&v80[32] = v83;
      *&v80[48] = v84;
      v81 = 1;
      sub_51E0(&qword_3AC20, &qword_2C710);
      sub_2852C();
      sub_28660();
      sub_295D4();
    }

    v44 = v82;
    v45 = v83;
    v47 = v84;
    v46 = v85;
    v48 = v86;
    goto LABEL_13;
  }

  v35 = v34;
  v36 = type metadata accessor for MapsOverlayView(0);
  v37 = a1 + *(v36 + 24);
  v38 = *v37;
  if (!*v37)
  {
    goto LABEL_16;
  }

  v39 = a1 + *(v36 + 20);
  v40 = *(v39 + 32);
  v41 = *(v39 + 16);
  *v80 = *v39;
  *&v80[16] = v41;
  *&v80[32] = v40;
  v42 = v38;
  sub_51E0(&qword_3ACD0, &qword_2C8D0);
  sub_29884();
  *&v74 = v35;
  *(&v74 + 1) = v42;
  v75 = v82;
  v76 = v83;
  v77 = v84;
  v82 = v74;
  v83 = v75;
  v43 = v84;
  v84 = v76;
  v85 = v43;
  v78 = 0;
  LOBYTE(v86) = 0;
  sub_2895C(&v74, v80);
  sub_285B8();
  sub_2860C();
  sub_295D4();
  memcpy(v80, v73, sizeof(v80));
  v79 = 0;
  v81 = 0;
  sub_51E0(&qword_3AC20, &qword_2C710);
  sub_2852C();
  sub_28660();
  sub_295D4();
  sub_28994(&v74);
  v44 = v82;
  v45 = v83;
  v47 = v84;
  v46 = v85;
  v48 = v86;
  v49 = v70;
LABEL_13:
  *v49 = v44;
  *(v49 + 1) = v45;
  *(v49 + 2) = v47;
  *(v49 + 3) = v46;
  *(v49 + 32) = v48;
  swift_storeEnumTagMultiPayload();
  sub_51E0(&qword_3AC00, &qword_2C700);
  sub_2841C();
  sub_C26C();
  sub_295D4();
  return (*(v21 + 8))(v68[0], v69);
}

void MapItems.mapAnnotation.getter()
{
  sub_28B5C();
  v1 = type metadata accessor for MapIdentifiablePlace.ViewType(0);
  v2 = sub_C3B0(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_28A18();
  v98 = (v5 - v6);
  __chkstk_darwin(v7);
  sub_28AE0();
  sub_E4E0(v8);
  v112 = sub_28C44();
  v9 = sub_7AA0(v112);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_16B7C();
  v111 = v15 - v14;
  v16 = sub_51E0(&qword_3A9C0, &qword_2C610);
  v17 = sub_23804(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_28A18();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  sub_28AE0();
  v110 = v24;
  v109 = sub_29174();
  v25 = sub_7AA0(v109);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_16B7C();
  v108 = v31 - v30;
  v32 = type metadata accessor for MapIdentifiablePlace(0);
  v33 = sub_7AA0(v32);
  v106 = v34;
  v107 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  sub_28A18();
  v39 = v37 - v38;
  __chkstk_darwin(v40);
  v42 = &v96 - v41;
  v43 = sub_29184();
  v44 = sub_7AA0(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  __chkstk_darwin(v44);
  sub_16B7C();
  v51 = (v50 - v49);
  (*(v46 + 16))(v50 - v49, v0, v43);
  if ((*(v46 + 88))(v51, v43) == enum case for MapItems.mapAnnotationItem(_:))
  {
    v114 = v11;
    (*(v46 + 96))(v51, v43);
    v52 = *v51;
    v53 = *(*v51 + 16);
    if (v53)
    {
      v115 = v39;
      v116 = &_swiftEmptyArrayStorage;
      sub_276CC(0, v53, 0);
      v54 = v116;
      v56 = *(v27 + 16);
      v55 = v27 + 16;
      v102 = v56;
      v57 = (*(v55 + 64) + 32) & ~*(v55 + 64);
      v96 = v52;
      v58 = v52 + v57;
      v100 = (v114 + 32);
      v101 = (v55 - 8);
      v104 = v42;
      v105 = v55;
      v99 = *(v55 + 56);
      v113 = v1;
      v103 = v22;
      do
      {
        v114 = v54;
        v60 = v108;
        v59 = v109;
        v102(v108, v58, v109);
        sub_29154();
        v62 = v61;
        sub_29164();
        v64 = v63;
        v65 = v110;
        sub_29144();
        swift_storeEnumTagMultiPayload();
        sub_28AB8();
        sub_53C4(v66, v67, v68, v1);
        v69 = v111;
        sub_28C34();
        (*v101)(v60, v59);
        v70 = v1;
        v71 = v107;
        v72 = *(v107 + 24);
        v73 = v115;
        *(v115 + v72) = 0;
        v74 = *(v71 + 28);
        v75 = sub_28CF4();
        sub_28A8C();
        sub_53C4(v76, v77, v78, v75);
        v79 = v69;
        v80 = v103;
        (*v100)(v73, v79, v112);
        v81 = (v73 + *(v71 + 20));
        *v81 = v62;
        v81[1] = v64;
        sub_27960(v65, v80);
        if (sub_B89C(v80, 1, v70) == 1)
        {
          sub_288A0();
          v82 = v115;
        }

        else
        {
          v83 = v80;
          v84 = v97;
          sub_279D0(v83, v97, type metadata accessor for MapIdentifiablePlace.ViewType);
          v85 = v98;
          sub_279D0(v84, v98, type metadata accessor for MapIdentifiablePlace.ViewType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v82 = v115;
            sub_288A0();
            sub_28A80(v75);
            (*(v86 + 32))(v82 + v74, v85, v75);
            sub_28AB8();
            sub_53C4(v87, v88, v89, v75);
          }

          else
          {
            v82 = v115;
            *(v115 + v72) = *v85;
          }
        }

        v90 = v104;
        sub_279D0(v82, v104, type metadata accessor for MapIdentifiablePlace);
        v54 = v114;
        v116 = v114;
        v92 = *(v114 + 2);
        v91 = *(v114 + 3);
        if (v92 >= v91 >> 1)
        {
          sub_276CC(v91 > 1, v92 + 1, 1);
          v54 = v116;
        }

        *(v54 + 2) = v92 + 1;
        sub_28AEC();
        sub_28A50();
        sub_279D0(v90, v93, v94);
        v58 += v99;
        --v53;
        v1 = v113;
      }

      while (v53);
    }

    else
    {
      v95 = *v51;
    }
  }

  else
  {
    (*(v46 + 8))(v51, v43);
  }

  sub_28B78();
}

void sub_25F68()
{
  sub_28B5C();
  v166 = v1;
  v167 = v2;
  v165 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for MapIdentifiablePlace.ViewType(0);
  v9 = sub_C3B0(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_28A18();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  sub_28B28();
  sub_28A28();
  __chkstk_darwin(v16);
  sub_28B28();
  sub_28A28();
  __chkstk_darwin(v17);
  sub_28AE0();
  sub_E4E0(v18);
  v164 = sub_28C44();
  v19 = sub_7AA0(v164);
  v170 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_28A18();
  sub_28A28();
  __chkstk_darwin(v23);
  sub_28AE0();
  v149 = v24;
  v25 = sub_51E0(&qword_3A9C0, &qword_2C610);
  v26 = sub_23804(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_28A18();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  sub_28B28();
  sub_28A28();
  __chkstk_darwin(v33);
  sub_28B28();
  sub_28A28();
  __chkstk_darwin(v34);
  sub_28AE0();
  sub_E4E0(v35);
  v163 = sub_290F4();
  v36 = sub_7AA0(v163);
  v169 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_16B7C();
  v162 = v41 - v40;
  v161 = v7(0);
  v42 = sub_7AA0(v161);
  v44 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v42);
  v48 = v139 - v47;
  v49 = type metadata accessor for MapIdentifiablePlace(0);
  v50 = sub_7AA0(v49);
  v159 = v51;
  v160 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v50);
  sub_28A18();
  sub_28A28();
  __chkstk_darwin(v54);
  sub_28B28();
  sub_28A28();
  __chkstk_darwin(v55);
  sub_28AE0();
  sub_E4E0(v56);
  v57 = sub_29184();
  v58 = sub_7AA0(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  __chkstk_darwin(v58);
  sub_16B7C();
  v65 = (v64 - v63);
  (*(v60 + 16))(v64 - v63, v0, v57);
  if ((*(v60 + 88))(v65, v57) != *v5)
  {
    (*(v60 + 8))(v65, v57);
    goto LABEL_24;
  }

  (*(v60 + 96))(v65, v57);
  v66 = *v65;
  v67 = *(*v65 + 16);
  if (!v67)
  {
    v138 = *v65;

    goto LABEL_24;
  }

  v140 = v14;
  v168 = v8;
  v171 = &_swiftEmptyArrayStorage;
  sub_276CC(0, v67, 0);
  v69 = *(v44 + 16);
  v68 = v44 + 16;
  v156 = v69;
  v70 = (*(v68 + 64) + 32) & ~*(v68 + 64);
  v139[1] = v66;
  v71 = v66 + v70;
  v154 = v68 - 8;
  v155 = (v169 + 8);
  v72 = v171;
  v153 = v170 + 4;
  v158 = v68;
  v152 = *(v68 + 56);
  v73 = v146;
  v157 = v48;
  v74 = v151;
  v142 = v31;
  do
  {
    v169 = v67;
    v170 = v72;
    v75 = v156(v48, v71, v161);
    v76 = v162;
    v165(v75);
    v77 = sub_290E4();
    v78 = (*v155)(v76, v163);
    if (v77)
    {
      v79 = v166(v78);
      v80 = v167();
      v81 = v148;
      *v148 = v77;
      v82 = v168;
      swift_storeEnumTagMultiPayload();
      sub_28AB8();
      sub_53C4(v83, v84, v85, v82);
      sub_28C34();
      v86 = sub_28B48();
      v87(v86);
      v88 = v160;
      v89 = *(v160 + 24);
      v90 = v147;
      *(v147 + v89) = 0;
      v91 = *(v88 + 28);
      v92 = sub_28CF4();
      sub_28A8C();
      sub_53C4(v93, v94, v95, v92);
      v96 = sub_28B04();
      v97(v96);
      v98 = (v90 + *(v88 + 20));
      *v98 = v79;
      v98[1] = v80;
      sub_27960(v81, v73);
      if (sub_B89C(v73, 1, v82) == 1)
      {
        sub_288A0();
        v99 = v90;
        v48 = v157;
        v74 = v151;
        goto LABEL_18;
      }

      v121 = v143;
      sub_279D0(v73, v143, type metadata accessor for MapIdentifiablePlace.ViewType);
      sub_279D0(v121, v150, type metadata accessor for MapIdentifiablePlace.ViewType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v74 = v151;
      if (EnumCaseMultiPayload == 1)
      {
        sub_288A0();
        sub_28A80(v92);
        (*(v123 + 32))(v90 + v91, v150, v92);
        sub_28AB8();
        sub_53C4(v124, v125, v126, v92);
      }

      else
      {
        *(v90 + v89) = *v150;
      }

      v99 = v90;
    }

    else
    {
      v100 = v166(v78);
      v101 = v167();
      v102 = v145;
      sub_28A8C();
      v103 = v168;
      sub_53C4(v104, v105, v106, v168);
      sub_28C34();
      v107 = sub_28B48();
      v108(v107);
      v109 = v160;
      v110 = *(v160 + 24);
      v111 = v144;
      *(v144 + v110) = 0;
      v112 = *(v109 + 28);
      v113 = sub_28CF4();
      sub_28A8C();
      sub_53C4(v114, v115, v116, v113);
      v117 = sub_28B04();
      v118(v117);
      v119 = (v111 + *(v109 + 20));
      *v119 = v100;
      v119[1] = v101;
      v120 = v142;
      sub_27960(v102, v142);
      if (sub_B89C(v120, 1, v103) == 1)
      {
        sub_288A0();
      }

      else
      {
        v127 = v120;
        v128 = v141;
        sub_279D0(v127, v141, type metadata accessor for MapIdentifiablePlace.ViewType);
        v129 = v140;
        sub_279D0(v128, v140, type metadata accessor for MapIdentifiablePlace.ViewType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_288A0();
          sub_28A80(v113);
          (*(v130 + 32))(v111 + v112, v129, v113);
          sub_28AB8();
          sub_53C4(v131, v132, v133, v113);
        }

        else
        {
          *(v111 + v110) = *v129;
        }
      }

      v99 = v111;
      v73 = v146;
    }

    v48 = v157;
LABEL_18:
    sub_279D0(v99, v74, type metadata accessor for MapIdentifiablePlace);
    v72 = v170;
    v171 = v170;
    v135 = v170[2];
    v134 = v170[3];
    if (v135 >= v134 >> 1)
    {
      sub_276CC(v134 > 1, v135 + 1, 1);
      v72 = v171;
    }

    v72[2] = v135 + 1;
    sub_28AEC();
    sub_28A50();
    sub_279D0(v74, v136, v137);
    v71 += v152;
    v67 = v169 - 1;
  }

  while (v169 != 1);

LABEL_24:
  sub_28B78();
}

uint64_t sub_26918()
{
  sub_28B1C();
  v1 = sub_29204();
  v2 = sub_23804(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_16B7C();
  v5 = sub_51E0(&qword_3AC60, &qword_2C888);
  v6 = sub_23804(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_28B34();
  sub_51E0(&qword_3AC68, &qword_2C890);
  sub_298C4();
  sub_51E0(&qword_3AC70, &qword_2C898);
  sub_28A8C();
  sub_53C4(v9, v10, v11, v12);
  v14 = *v0;

  sub_291F4();
  sub_51E0(&qword_3AC78, &qword_2C8A0);
  sub_51E0(&qword_3AC80, &qword_2C8A8);
  sub_28A68();
  sub_C26C();
  sub_C26C();
  sub_28A38();
  sub_27B74();
  return sub_291C4();
}

uint64_t sub_26B30(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MapIdentifiablePlace(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_51E0(&qword_3ACA0, &qword_2C8B0);
  sub_287EC();
  return sub_291E4();
}

uint64_t sub_26BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_299C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_51E0(&qword_3A9C8, &qword_2C618);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_28CF4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - v19;
  v21 = type metadata accessor for MapIdentifiablePlace(0);
  sub_27A30(a1 + *(v21 + 28), v12);
  if (sub_B89C(v12, 1, v13) == 1)
  {
    sub_288A0();
    v22 = 1;
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
    (*(v14 + 16))(v18, v20, v13);
    sub_299B4();
    (*(v14 + 8))(v20, v13);
    (*(v5 + 32))(a2, v8, v4);
    v22 = 0;
  }

  return sub_53C4(a2, v22, 1, v4);
}

uint64_t sub_26EBC(void (*a1)(void))
{
  v3 = sub_29204();
  v4 = sub_23804(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_16B7C();
  v7 = sub_51E0(&qword_3AC60, &qword_2C888);
  v8 = sub_23804(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_28B34();
  sub_51E0(&qword_3AC68, &qword_2C890);
  sub_298C4();
  sub_51E0(&qword_3AC70, &qword_2C898);
  sub_28A8C();
  sub_53C4(v11, v12, v13, v14);
  v16 = *v1;

  sub_291F4();
  sub_51E0(&qword_3AC78, &qword_2C8A0);
  a1(0);
  sub_28A68();
  sub_C26C();
  sub_28A38();
  sub_27B74();
  return sub_291C4();
}

uint64_t sub_270B0(uint64_t a1, uint64_t (*a2)(uint64_t, __n128, __n128))
{
  v3 = type metadata accessor for MapIdentifiablePlace(0);
  v4 = (a1 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(a1 + *(v3 + 24));

  v9.n128_u64[0] = v5;
  v10.n128_u64[0] = v6;

  return a2(v8, v9, v10);
}

void MapIdentifiablePlace.init(id:lat:lon:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_28B5C();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = sub_28B1C();
  v34 = type metadata accessor for MapIdentifiablePlace.ViewType(v33);
  v35 = sub_C3B0(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_28A18();
  v40 = (v38 - v39);
  __chkstk_darwin(v41);
  v43 = &a9 - v42;
  v44 = type metadata accessor for MapIdentifiablePlace(0);
  v45 = v44[6];
  *(v22 + v45) = 0;
  v46 = v44[7];
  v47 = sub_28CF4();
  sub_28A8C();
  sub_53C4(v48, v49, v50, v47);
  v51 = sub_28C44();
  sub_C3B0(v51);
  (*(v52 + 32))(v22, v32);
  v53 = (v22 + v44[5]);
  *v53 = v30;
  v53[1] = v28;
  if (sub_B89C(v26, 1, v34) == 1)
  {
    sub_288A0();
  }

  else
  {
    sub_279D0(v26, v43, type metadata accessor for MapIdentifiablePlace.ViewType);
    sub_279D0(v43, v40, type metadata accessor for MapIdentifiablePlace.ViewType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_288A0();
      sub_28A80(v47);
      (*(v54 + 32))(v22 + v46, v40, v47);
      sub_28AB8();
      sub_53C4(v55, v56, v57, v47);
    }

    else
    {
      *(v22 + v45) = *v40;
    }
  }

  sub_28B78();
}

uint64_t MapIdentifiablePlace.id.getter()
{
  sub_28B1C();
  v2 = sub_28C44();
  v3 = sub_C3B0(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

double MapIdentifiablePlace.location.getter()
{
  v1 = v0 + *(type metadata accessor for MapIdentifiablePlace(0) + 20);
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MapIdentifiablePlace.tint.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapIdentifiablePlace(0) + 24));
}

uint64_t MapIdentifiablePlace.tint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MapIdentifiablePlace(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t (*MapIdentifiablePlace.tint.modify())(void, void)
{
  sub_C400();
  v0 = *(type metadata accessor for MapIdentifiablePlace(0) + 24);
  return CoreChartPluginView.body.getter;
}

uint64_t MapIdentifiablePlace.canvas.getter()
{
  v2 = sub_28B1C();
  v3 = v1 + *(type metadata accessor for MapIdentifiablePlace(v2) + 28);

  return sub_27A30(v3, v0);
}

uint64_t MapIdentifiablePlace.canvas.setter()
{
  sub_C400();
  v2 = v1 + *(type metadata accessor for MapIdentifiablePlace(0) + 28);

  return sub_27AA0(v0, v2);
}

uint64_t (*MapIdentifiablePlace.canvas.modify())(void, void)
{
  sub_C400();
  v0 = *(type metadata accessor for MapIdentifiablePlace(0) + 28);
  return CoreChartPluginView.body.getter;
}

uint64_t sub_27560@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_28C44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

char *sub_275C8(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[48 * a2] <= __dst)
  {
    return memmove(__dst, __src, 48 * a2);
  }

  return __src;
}

uint64_t sub_275F8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for MapIdentifiablePlace(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for MapIdentifiablePlace(0);

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

size_t sub_276CC(size_t a1, int64_t a2, char a3)
{
  result = sub_276EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_276EC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_51E0(&qword_3ACB8, &qword_2C8B8);
  v10 = *(type metadata accessor for MapIdentifiablePlace(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MapIdentifiablePlace(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_275F8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_278A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29544();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27960(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A9C0, &qword_2C610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_279D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_C3B0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_27A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A9C8, &qword_2C618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&qword_3A9C8, &qword_2C618);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_27B74()
{
  sub_C400();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_27BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_28F84();
  v7 = sub_C40C(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_28A98(*(a1 + *(a3 + 20) + 32));
  }

  return sub_B89C(a1, a2, v7);
}

uint64_t sub_27C80()
{
  sub_28AC4();
  v4 = sub_28F84();
  result = sub_C40C(v4);
  if (*(v6 + 84) == v3)
  {

    return sub_53C4(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20) + 32) = v0;
  }

  return result;
}

void sub_27D14()
{
  sub_28F84();
  if (v0 <= 0x3F)
  {
    sub_280C8(319, &unk_3AA40, type metadata accessor for MKCoordinateRegion, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_BABC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_27DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_28C44();
  v7 = sub_C40C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    if (a2 == 2147483646)
    {
      return sub_28A98(*(a1 + *(a3 + 24)));
    }

    v9 = sub_51E0(&qword_3A9C8, &qword_2C618);
    v10 = a1 + *(a3 + 28);
  }

  return sub_B89C(v10, a2, v9);
}

uint64_t sub_27ED4()
{
  sub_28AC4();
  v4 = sub_28C44();
  result = sub_C40C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = result;
    v8 = v1;
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 24)) = v0;
      return result;
    }

    v7 = sub_51E0(&qword_3A9C8, &qword_2C618);
    v8 = v1 + *(v2 + 28);
  }

  return sub_53C4(v8, v0, v0, v7);
}

void sub_27F94()
{
  sub_28C44();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLLocationCoordinate2D(319);
    if (v1 <= 0x3F)
    {
      sub_28078();
      if (v2 <= 0x3F)
      {
        sub_280C8(319, &unk_3AAE8, &type metadata accessor for CustomCanvas, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_28078()
{
  if (!qword_3AAE0)
  {
    v0 = sub_29E34();
    if (!v1)
    {
      atomic_store(v0, &qword_3AAE0);
    }
  }
}

void sub_280C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2812C()
{
  result = sub_28CF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2819C()
{
  result = qword_3ABC8;
  if (!qword_3ABC8)
  {
    sub_558C(&qword_3A9B8, &qword_2C608);
    sub_28254();
    sub_C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ABC8);
  }

  return result;
}

unint64_t sub_28254()
{
  result = qword_3ABD0;
  if (!qword_3ABD0)
  {
    sub_558C(&qword_3A9B0, &qword_2C5D0);
    sub_282E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ABD0);
  }

  return result;
}

unint64_t sub_282E0()
{
  result = qword_3ABD8;
  if (!qword_3ABD8)
  {
    sub_558C(&qword_3ABE0, &qword_2C6F0);
    sub_28364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ABD8);
  }

  return result;
}

unint64_t sub_28364()
{
  result = qword_3ABE8;
  if (!qword_3ABE8)
  {
    sub_558C(&qword_3ABF0, &qword_2C6F8);
    sub_2841C();
    sub_C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ABE8);
  }

  return result;
}

unint64_t sub_2841C()
{
  result = qword_3ABF8;
  if (!qword_3ABF8)
  {
    sub_558C(&qword_3AC00, &qword_2C700);
    sub_284A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ABF8);
  }

  return result;
}

unint64_t sub_284A0()
{
  result = qword_3AC08;
  if (!qword_3AC08)
  {
    sub_558C(&qword_3AC10, &qword_2C708);
    sub_2852C();
    sub_28660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AC08);
  }

  return result;
}

unint64_t sub_2852C()
{
  result = qword_3AC18;
  if (!qword_3AC18)
  {
    sub_558C(&qword_3AC20, &qword_2C710);
    sub_285B8();
    sub_2860C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AC18);
  }

  return result;
}

unint64_t sub_285B8()
{
  result = qword_3AC28;
  if (!qword_3AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AC28);
  }

  return result;
}

unint64_t sub_2860C()
{
  result = qword_3AC30;
  if (!qword_3AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AC30);
  }

  return result;
}

unint64_t sub_28660()
{
  result = qword_3AC38;
  if (!qword_3AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AC38);
  }

  return result;
}

__n128 sub_286B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_286F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_28730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_287EC()
{
  result = qword_3ACA8;
  if (!qword_3ACA8)
  {
    sub_558C(&qword_3ACA0, &qword_2C8B0);
    sub_27B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ACA8);
  }

  return result;
}

uint64_t sub_288A0()
{
  sub_C400();
  v3 = sub_51E0(v1, v2);
  sub_C3B0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_28A98@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t sub_28B04()
{
  v2 = **(v1 - 256);
  result = v0;
  v4 = *(v1 - 168);
  return result;
}

__n128 sub_28B34()
{
  v2 = *(v0 + 32);
  *(v1 - 176) = *(v0 + 16);
  *(v1 - 160) = v2;
  result = *(v0 + 48);
  *(v1 - 144) = result;
  return result;
}