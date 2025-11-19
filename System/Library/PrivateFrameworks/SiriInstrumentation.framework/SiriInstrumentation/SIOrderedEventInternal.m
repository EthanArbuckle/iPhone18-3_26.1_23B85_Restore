@interface SIOrderedEventInternal
+ (id)deserializeFrom:(id)a3;
- (BOOL)readFrom:(id)a3;
- (SIComponentIdentifier)clusterId;
- (SILogicalTimestampInternal)logicalTimestamp;
- (SIOrderedEventInternal)initWithData:(id)a3;
- (SIOrderedEventInternal)initWithLogicalTimestamp:(id)a3 messageUUID:(id)a4 tluEvent:(id)a5;
- (SIOrderedEventInternal)initWithLogicalTimestamp:(id)a3 tluEvent:(id)a4;
- (SISchemaTopLevelUnionType)tluEvent;
- (id)copyWithZone:(void *)a3;
- (void)setClusterId:(id)a3;
- (void)setLogicalTimestamp:(id)a3;
- (void)setTluEvent:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIOrderedEventInternal

- (SILogicalTimestampInternal)logicalTimestamp
{
  v2 = sub_1A9CB0E70();

  return v2;
}

- (void)setLogicalTimestamp:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1A9CB0F14(a3);
}

- (SISchemaTopLevelUnionType)tluEvent
{
  v2 = sub_1A9CB0FC8();

  return v2;
}

- (void)setTluEvent:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1A9CB106C(a3);
}

- (SIComponentIdentifier)clusterId
{
  v2 = sub_1A9CB1168();

  return v2;
}

- (void)setClusterId:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1A9CB120C(a3);
}

- (SIOrderedEventInternal)initWithData:(id)a3
{
  if (a3)
  {
    v3 = a3;
    sub_1AA651884();
  }

  return OrderedEvent.init(data:)();
}

- (SIOrderedEventInternal)initWithLogicalTimestamp:(id)a3 messageUUID:(id)a4 tluEvent:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  if (a4)
  {
    sub_1AA651914();
    v11 = sub_1AA651944();
    v12 = 0;
  }

  else
  {
    v11 = sub_1AA651944();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v12, 1, v11);
  return OrderedEvent.init(logicalTimestamp:messageUUID:tluEvent:)(a3, v10, a5);
}

- (SIOrderedEventInternal)initWithLogicalTimestamp:(id)a3 tluEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  return OrderedEvent.init(logicalTimestamp:tluEvent:)();
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A9CB3474(v4);
}

- (BOOL)readFrom:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_1A9CB3A6C(v3);

  return v3 & 1;
}

+ (id)deserializeFrom:(id)a3
{
  v3 = a3;
  v4 = sub_1AA651884();
  v6 = v5;

  swift_getObjCClassMetadata();
  v7 = static OrderedEvent.deserialize(from:)();
  sub_1A9C6BB4C(v4, v6);

  return v7;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  OrderedEvent.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1AA651F54();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

@end