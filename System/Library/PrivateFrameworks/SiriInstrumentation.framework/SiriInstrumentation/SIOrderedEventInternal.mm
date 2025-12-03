@interface SIOrderedEventInternal
+ (id)deserializeFrom:(id)from;
- (BOOL)readFrom:(id)from;
- (SIComponentIdentifier)clusterId;
- (SILogicalTimestampInternal)logicalTimestamp;
- (SIOrderedEventInternal)initWithData:(id)data;
- (SIOrderedEventInternal)initWithLogicalTimestamp:(id)timestamp messageUUID:(id)d tluEvent:(id)event;
- (SIOrderedEventInternal)initWithLogicalTimestamp:(id)timestamp tluEvent:(id)event;
- (SISchemaTopLevelUnionType)tluEvent;
- (id)copyWithZone:(void *)zone;
- (void)setClusterId:(id)id;
- (void)setLogicalTimestamp:(id)timestamp;
- (void)setTluEvent:(id)event;
- (void)writeTo:(id)to;
@end

@implementation SIOrderedEventInternal

- (SILogicalTimestampInternal)logicalTimestamp
{
  v2 = sub_1A9CB0E70();

  return v2;
}

- (void)setLogicalTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  selfCopy = self;
  sub_1A9CB0F14(timestamp);
}

- (SISchemaTopLevelUnionType)tluEvent
{
  v2 = sub_1A9CB0FC8();

  return v2;
}

- (void)setTluEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1A9CB106C(event);
}

- (SIComponentIdentifier)clusterId
{
  v2 = sub_1A9CB1168();

  return v2;
}

- (void)setClusterId:(id)id
{
  idCopy = id;
  selfCopy = self;
  sub_1A9CB120C(id);
}

- (SIOrderedEventInternal)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    sub_1AA651884();
  }

  return OrderedEvent.init(data:)();
}

- (SIOrderedEventInternal)initWithLogicalTimestamp:(id)timestamp messageUUID:(id)d tluEvent:(id)event
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  if (d)
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
  return OrderedEvent.init(logicalTimestamp:messageUUID:tluEvent:)(timestamp, v10, event);
}

- (SIOrderedEventInternal)initWithLogicalTimestamp:(id)timestamp tluEvent:(id)event
{
  timestampCopy = timestamp;
  eventCopy = event;
  return OrderedEvent.init(logicalTimestamp:tluEvent:)();
}

- (void)writeTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  sub_1A9CB3474(toCopy);
}

- (BOOL)readFrom:(id)from
{
  fromCopy = from;
  fromCopy2 = from;
  selfCopy = self;
  LOBYTE(fromCopy) = sub_1A9CB3A6C(fromCopy);

  return fromCopy & 1;
}

+ (id)deserializeFrom:(id)from
{
  fromCopy = from;
  v4 = sub_1AA651884();
  v6 = v5;

  swift_getObjCClassMetadata();
  v7 = static OrderedEvent.deserialize(from:)();
  sub_1A9C6BB4C(v4, v6);

  return v7;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  OrderedEvent.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1AA651F54();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

@end