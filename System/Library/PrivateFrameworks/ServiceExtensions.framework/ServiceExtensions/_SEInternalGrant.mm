@interface _SEInternalGrant
- (BOOL)invalidateWithError:(id *)error;
- (_TtC17ServiceExtensionsP33_620D12DBAD85E5FA4594BA268933638A16_SEInternalGrant)init;
@end

@implementation _SEInternalGrant

- (BOOL)invalidateWithError:(id *)error
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17ServiceExtensionsP33_620D12DBAD85E5FA4594BA268933638A16_SEInternalGrant_inner);
  v11 = *&self->inner[OBJC_IVAR____TtC17ServiceExtensionsP33_620D12DBAD85E5FA4594BA268933638A16_SEInternalGrant_inner];
  v5 = v11;
  v6 = v4;
  _Capability.Grant.invalidate()();

  if (v7)
  {
    if (error)
    {
      v8 = sub_26574FE48();

      v9 = v8;
      *error = v8;
    }

    else
    {
    }
  }

  return v7 == 0;
}

- (_TtC17ServiceExtensionsP33_620D12DBAD85E5FA4594BA268933638A16_SEInternalGrant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end