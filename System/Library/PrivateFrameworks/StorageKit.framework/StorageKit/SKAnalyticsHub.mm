@interface SKAnalyticsHub
+ (void)addSink:(id)sink;
+ (void)sendEventWithName:(id)name eventPayloadBuilder:(id)builder;
@end

@implementation SKAnalyticsHub

+ (void)addSink:(id)sink
{
  v3 = qword_2814C1B30;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectRetain();
  MEMORY[0x26D68F5D0](v4);
  if (*((qword_2814C1B38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_2814C1B38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((qword_2814C1B38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_26BBE51B8();
  }

  sub_26BBE51C8();
  swift_endAccess();
  swift_unknownObjectRelease();
}

+ (void)sendEventWithName:(id)name eventPayloadBuilder:(id)builder
{
  v4 = _Block_copy(builder);
  v5 = sub_26BBE5198();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  _s10StorageKit14SKAnalyticsHubC9sendEvent4name19eventPayloadBuilderySS_SDySSSo8NSObjectCGSgyctFZ_0(v5, v7, sub_26BBE4F34, v8);
}

@end