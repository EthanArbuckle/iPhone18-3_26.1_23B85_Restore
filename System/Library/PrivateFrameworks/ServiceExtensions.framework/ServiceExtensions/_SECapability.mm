@interface _SECapability
+ (id)assertionWithDomain:(id)domain name:(id)name;
+ (id)assertionWithDomain:(id)domain name:(id)name environmentIdentifier:(id)identifier;
+ (id)assertionWithDomain:(id)domain name:(id)name environmentIdentifier:(id)identifier willInvalidate:(id)invalidate didInvalidate:(id)didInvalidate;
+ (id)mediaWithWebsite:(id)website;
- (BOOL)setActive:(BOOL)active;
- (NSString)mediaEnvironment;
- (_SECapability)init;
@end

@implementation _SECapability

+ (id)assertionWithDomain:(id)domain name:(id)name
{
  v4 = sub_2657501C8();
  v6 = v5;
  v7 = sub_2657501C8();
  v9 = v8;
  v10 = type metadata accessor for _SECapability();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____SECapability_inner];
  *v12 = v4;
  *(v12 + 1) = v6;
  *(v12 + 2) = v7;
  *(v12 + 3) = v9;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  *(v12 + 6) = nullsub_1;
  *(v12 + 7) = 0;
  *(v12 + 8) = nullsub_1;
  *(v12 + 9) = 0;
  v12[80] = 2;
  v15.receiver = v11;
  v15.super_class = v10;
  v13 = objc_msgSendSuper2(&v15, sel_init);

  return v13;
}

+ (id)assertionWithDomain:(id)domain name:(id)name environmentIdentifier:(id)identifier
{
  v5 = sub_2657501C8();
  v7 = v6;
  v8 = sub_2657501C8();
  v10 = v9;
  v11 = sub_2657501C8();
  v13 = v12;
  v14 = type metadata accessor for _SECapability();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____SECapability_inner];
  *v16 = v5;
  *(v16 + 1) = v7;
  *(v16 + 2) = v8;
  *(v16 + 3) = v10;
  *(v16 + 4) = v11;
  *(v16 + 5) = v13;
  *(v16 + 6) = nullsub_1;
  *(v16 + 7) = 0;
  *(v16 + 8) = nullsub_1;
  *(v16 + 9) = 0;
  v16[80] = 2;
  v19.receiver = v15;
  v19.super_class = v14;
  v17 = objc_msgSendSuper2(&v19, sel_init);

  return v17;
}

+ (id)assertionWithDomain:(id)domain name:(id)name environmentIdentifier:(id)identifier willInvalidate:(id)invalidate didInvalidate:(id)didInvalidate
{
  v8 = _Block_copy(invalidate);
  v9 = _Block_copy(didInvalidate);
  v10 = sub_2657501C8();
  v12 = v11;
  v13 = sub_2657501C8();
  v15 = v14;
  v16 = sub_2657501C8();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v8;
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  v21 = type metadata accessor for _SECapability();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____SECapability_inner];
  *v23 = v10;
  *(v23 + 1) = v12;
  *(v23 + 2) = v13;
  *(v23 + 3) = v15;
  *(v23 + 4) = v16;
  *(v23 + 5) = v18;
  *(v23 + 6) = sub_26574B728;
  *(v23 + 7) = v19;
  *(v23 + 8) = sub_26574BB8C;
  *(v23 + 9) = v20;
  v23[80] = 2;
  v26.receiver = v22;
  v26.super_class = v21;
  v24 = objc_msgSendSuper2(&v26, sel_init);

  return v24;
}

+ (id)mediaWithWebsite:(id)website
{
  v3 = sub_2657501C8();
  v5 = _s17ServiceExtensions13_SECapabilityC9assertion7websiteACSS_tFZ_0(v3, v4);

  return v5;
}

- (BOOL)setActive:(BOOL)active
{
  v4 = *&self->inner[OBJC_IVAR____SECapability_inner + 40];
  v5 = *&self->inner[OBJC_IVAR____SECapability_inner + 8];
  v17 = *&self->inner[OBJC_IVAR____SECapability_inner + 24];
  v18 = v4;
  v6 = *&self->inner[OBJC_IVAR____SECapability_inner + 40];
  v19 = *&self->inner[OBJC_IVAR____SECapability_inner + 56];
  v7 = *&self->inner[OBJC_IVAR____SECapability_inner + 8];
  v16[0] = *(&self->super.isa + OBJC_IVAR____SECapability_inner);
  v16[1] = v7;
  v12 = v17;
  v13 = v6;
  v14 = *&self->inner[OBJC_IVAR____SECapability_inner + 56];
  v20 = self->inner[OBJC_IVAR____SECapability_inner + 72];
  v15 = self->inner[OBJC_IVAR____SECapability_inner + 72];
  v10 = v16[0];
  v11 = v5;
  sub_265747E7C(v16, v21);
  v8 = sub_265748F00(active);
  v21[2] = v12;
  v21[3] = v13;
  v21[4] = v14;
  v22 = v15;
  v21[0] = v10;
  v21[1] = v11;
  sub_265747ED8(v21);
  return v8 & 1;
}

- (NSString)mediaEnvironment
{
  v2 = (self + OBJC_IVAR____SECapability_inner);
  v3 = self->inner[OBJC_IVAR____SECapability_inner + 72];
  if (v3 == 3)
  {
    v5 = *v2;
    v4 = v2[1];

    v6 = sub_2657501B8();

    return v6;
  }

  else
  {
    if (v3 == 2)
    {
      self = sub_265750408();
      __break(1u);
    }

    selfCopy = self;
    result = sub_265750478();
    __break(1u);
  }

  return result;
}

- (_SECapability)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end