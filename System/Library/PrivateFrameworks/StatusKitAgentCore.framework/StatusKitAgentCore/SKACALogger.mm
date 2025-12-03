@interface SKACALogger
+ (id)startLoggingEvent:(int64_t)event forClient:(id)client;
+ (void)logEvent:(int64_t)event withMetadata:(id)metadata;
+ (void)logFailureWithError:(id)error event:(int64_t)event forClient:(id)client;
+ (void)logFailureWithError:(id)error forToken:(id)token;
+ (void)logSuccessForEvent:(int64_t)event forClient:(id)client;
+ (void)logSuccessForToken:(id)token;
- (SKACALogger)init;
@end

@implementation SKACALogger

+ (id)startLoggingEvent:(int64_t)event forClient:(id)client
{
  if (client)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = type metadata accessor for SKACALogger.SKACALogToken();
  v9 = objc_allocWithZone(v8);
  static Date.now.getter();
  *&v9[OBJC_IVAR___SKACALogToken_event] = event;
  v10 = &v9[OBJC_IVAR___SKACALogToken_client];
  *v10 = v5;
  v10[1] = v7;
  v13.receiver = v9;
  v13.super_class = v8;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

+ (void)logSuccessForToken:(id)token
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(token + OBJC_IVAR___SKACALogToken_event);
  v9 = *(token + OBJC_IVAR___SKACALogToken_client);
  v10 = *(token + OBJC_IVAR___SKACALogToken_client + 8);
  v11 = OBJC_IVAR___SKACALogToken_startTime;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, token + v11, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  tokenCopy = token;
  specialized static SKACALogger._logSuccess(_:for:startTime:)(v8, v9, v10, v7);
  outlined destroy of UUID?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

+ (void)logFailureWithError:(id)error forToken:(id)token
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = *(token + OBJC_IVAR___SKACALogToken_event);
  v11 = *(token + OBJC_IVAR___SKACALogToken_client);
  v12 = *(token + OBJC_IVAR___SKACALogToken_client + 8);
  v13 = OBJC_IVAR___SKACALogToken_startTime;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v9, token + v13, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  errorCopy = error;
  tokenCopy = token;
  specialized static SKACALogger._logFailure(with:event:for:startTime:)(errorCopy, v10, v11, v12, v9);
  outlined destroy of UUID?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

+ (void)logSuccessForEvent:(int64_t)event forClient:(id)client
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  specialized static SKACALogger._logSuccess(_:for:startTime:)(event, v9, v11, v8);
  outlined destroy of UUID?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

+ (void)logFailureWithError:(id)error event:(int64_t)event forClient:(id)client
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  errorCopy = error;
  specialized static SKACALogger._logFailure(with:event:for:startTime:)(errorCopy, event, v11, v13, v10);
  outlined destroy of UUID?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

+ (void)logEvent:(int64_t)event withMetadata:(id)metadata
{
  metadataCopy = metadata;
  specialized static SKACALogger.log(_:with:)(event, metadataCopy);
}

- (SKACALogger)init
{
  swift_defaultActor_initialize();
  v4.receiver = self;
  v4.super_class = type metadata accessor for SKACALogger();
  return [(SKACALogger *)&v4 init];
}

@end