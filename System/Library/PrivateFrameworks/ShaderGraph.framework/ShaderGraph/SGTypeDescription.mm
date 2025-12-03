@interface SGTypeDescription
+ (id)typeDescriptionRepresenting:(unint64_t)representing error:(id *)error;
- (NSArray)properties;
- (NSString)description;
- (SGTypeDescription)init;
- (unsigned)offset;
- (void)setOffset:(unsigned int)offset;
@end

@implementation SGTypeDescription

- (NSArray)properties
{
  v2 = *(self + OBJC_IVAR___SGTypeDescription_properties);
  type metadata accessor for SGPropertyDescription();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (unsigned)offset
{
  v3 = OBJC_IVAR___SGTypeDescription_offset;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setOffset:(unsigned int)offset
{
  v5 = OBJC_IVAR___SGTypeDescription_offset;
  swift_beginAccess();
  *(self + v5) = offset;
}

+ (id)typeDescriptionRepresenting:(unint64_t)representing error:(id *)error
{
  v4 = specialized static SGTypeDescription.create(_:)(representing);

  return v4;
}

- (NSString)description
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return @objc SGTypeDescription.description.getter(self, a2, closure #1 in SGTypeDescription.description.getter);
}

- (SGTypeDescription)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end