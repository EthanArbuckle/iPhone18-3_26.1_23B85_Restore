@interface _SEHostingHandle
- (_SEHostingHandle)init;
- (id)xpcRepresentation;
- (void)encodeWithCoder:(id)coder;
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
  selfCopy = self;
  result = xpc_dictionary_create_empty();
  v4 = *(&selfCopy->super.isa + OBJC_IVAR____SEHostingHandle_pid);
  if ((v4 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    xpc_dictionary_set_uint64(result, "pid", v4);
    xpc_dictionary_set_uint64(v5, "cid", *(&selfCopy->super.isa + OBJC_IVAR____SEHostingHandle_contextID));

    return v5;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____SEHostingHandle_pid);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_2657501B8();
  [coderCopy encodeInt32:v4 forKey:v6];

  v7 = *(&selfCopy->super.isa + OBJC_IVAR____SEHostingHandle_contextID);
  v8 = sub_2657501B8();
  [coderCopy encodeInt32:v7 forKey:v8];
}

@end