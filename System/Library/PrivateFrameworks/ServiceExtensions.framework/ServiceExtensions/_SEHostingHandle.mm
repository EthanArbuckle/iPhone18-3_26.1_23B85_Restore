@interface _SEHostingHandle
- (_SEHostingHandle)init;
- (id)xpcRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SEHostingHandle

- (_SEHostingHandle)init
{
  result = sub_265750408();
  __break(1u);
  return result;
}

- (id)xpcRepresentation
{
  v2 = self;
  result = xpc_dictionary_create_empty();
  v4 = *(&v2->super.isa + OBJC_IVAR____SEHostingHandle_pid);
  if ((v4 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    xpc_dictionary_set_uint64(result, "pid", v4);
    xpc_dictionary_set_uint64(v5, "cid", *(&v2->super.isa + OBJC_IVAR____SEHostingHandle_contextID));

    return v5;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____SEHostingHandle_pid);
  v5 = a3;
  v9 = self;
  v6 = sub_2657501B8();
  [v5 encodeInt32:v4 forKey:v6];

  v7 = *(&v9->super.isa + OBJC_IVAR____SEHostingHandle_contextID);
  v8 = sub_2657501B8();
  [v5 encodeInt32:v7 forKey:v8];
}

@end