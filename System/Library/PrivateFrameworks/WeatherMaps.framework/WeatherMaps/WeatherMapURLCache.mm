@interface WeatherMapURLCache
- (_TtC11WeatherMaps18WeatherMapURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity directoryURL:(id)l;
- (_TtC11WeatherMaps18WeatherMapURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity diskPath:(id)path;
- (id)cachedResponseForRequest:(id)request;
- (void)getCachedResponseForDataTask:(NSURLSessionDataTask *)task completionHandler:(id)handler;
- (void)storeCachedResponse:(id)response forDataTask:(id)task;
- (void)storeCachedResponse:(id)response forRequest:(id)request;
@end

@implementation WeatherMapURLCache

- (void)storeCachedResponse:(id)response forRequest:(id)request
{
  v6 = sub_220FBFC00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FBFBC0();
  responseCopy = response;
  selfCopy = self;
  sub_220F3EE74(responseCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (id)cachedResponseForRequest:(id)request
{
  v4 = sub_220FBFC00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FBFBC0();
  selfCopy = self;
  v10 = sub_220F3F1E0(v8);

  (*(v5 + 8))(v8, v4);

  return v10;
}

- (void)storeCachedResponse:(id)response forDataTask:(id)task
{
  responseCopy = response;
  taskCopy = task;
  selfCopy = self;
  sub_220F3F3F4(responseCopy, taskCopy);
}

- (void)getCachedResponseForDataTask:(NSURLSessionDataTask *)task completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = task;
  v7[3] = v6;
  v7[4] = self;
  taskCopy = task;
  selfCopy = self;

  sub_220F3FD04(&unk_220FD5158, v7);
}

- (_TtC11WeatherMaps18WeatherMapURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity diskPath:(id)path
{
  if (path)
  {
    v7 = sub_220FC2700();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return sub_220F3FE14(capacity, diskCapacity, v7, v9);
}

- (_TtC11WeatherMaps18WeatherMapURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity directoryURL:(id)l
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v15 - v10;
  if (l)
  {
    sub_220FC0070();
    v12 = sub_220FC0090();
    v13 = 0;
  }

  else
  {
    v12 = sub_220FC0090();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v13, 1, v12);
  return sub_220F3FF14(capacity, diskCapacity, v11);
}

@end