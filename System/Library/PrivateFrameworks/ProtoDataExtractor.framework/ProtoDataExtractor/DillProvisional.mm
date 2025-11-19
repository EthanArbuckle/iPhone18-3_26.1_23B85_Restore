@interface DillProvisional
- (_TtC18ProtoDataExtractor15DillProvisional)init;
- (_TtC18ProtoDataExtractor15DillProvisional)initWithCoder:(id)a3;
- (_TtC18ProtoDataExtractor15DillProvisional)initWithData:(id)a3;
- (id)getVersion;
@end

@implementation DillProvisional

- (_TtC18ProtoDataExtractor15DillProvisional)init
{
  result = sub_260F499A8();
  __break(1u);
  return result;
}

- (_TtC18ProtoDataExtractor15DillProvisional)initWithCoder:(id)a3
{
  result = sub_260F499A8();
  __break(1u);
  return result;
}

- (_TtC18ProtoDataExtractor15DillProvisional)initWithData:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = sub_260F49328();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  return sub_260F44D34(v4, v6);
}

- (id)getVersion
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];

  return v2;
}

@end