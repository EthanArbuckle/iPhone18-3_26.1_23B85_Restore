@interface TPSFullTipUsageEventManager
- (id)contextualInfoForIdentifier:(id)identifier;
- (id)contextualInfoMap;
- (void)removeUsageEventCache;
- (void)updateContextualInfoForIdentifiers:(id)identifiers tipsDeliveryInfoMap:(id)map deliveryInfoMap:(id)infoMap;
@end

@implementation TPSFullTipUsageEventManager

- (void)updateContextualInfoForIdentifiers:(id)identifiers tipsDeliveryInfoMap:(id)map deliveryInfoMap:(id)infoMap
{
  v8 = sub_232E015D0();
  if (map)
  {
    map = sub_232E01470();
  }

  if (infoMap)
  {
    LOBYTE(infoMap) = sub_232E01470();
  }

  selfCopy = self;
  v11.value._rawValue = map;
  v11.is_nil = infoMap;
  TPSFullTipUsageEventManager.updateContextualInfo(for:tipsDeliveryInfoMap:deliveryInfoMap:)(v8, v11, v12);
}

- (id)contextualInfoForIdentifier:(id)identifier
{
  sub_232E014D0();
  v4 = *(&self->super.isa + OBJC_IVAR___TPSFullTipUsageEventManager_queue);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7448, &qword_232E06520);
  sub_232E01770();

  return v7;
}

- (id)contextualInfoMap
{
  v2 = *(&self->super.isa + OBJC_IVAR___TPSFullTipUsageEventManager_queue);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7450, &qword_232E06528);
  sub_232E01770();

  sub_232DB3688(0, &qword_2814E7BF8, off_2789AEDC8);
  v4 = sub_232E01450();

  return v4;
}

- (void)removeUsageEventCache
{
  v3 = *(&self->super.isa + OBJC_IVAR___TPSFullTipUsageEventManager_queue);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_232DB3710;
  *(v5 + 24) = v4;
  v8[4] = sub_232DB3708;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_232DB231C;
  v8[3] = &block_descriptor_25;
  v6 = _Block_copy(v8);
  selfCopy = self;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

@end