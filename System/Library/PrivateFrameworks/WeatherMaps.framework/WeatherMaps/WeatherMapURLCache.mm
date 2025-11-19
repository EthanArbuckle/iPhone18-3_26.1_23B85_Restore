@interface WeatherMapURLCache
- (_TtC11WeatherMaps18WeatherMapURLCache)initWithMemoryCapacity:(int64_t)a3 diskCapacity:(int64_t)a4 directoryURL:(id)a5;
- (_TtC11WeatherMaps18WeatherMapURLCache)initWithMemoryCapacity:(int64_t)a3 diskCapacity:(int64_t)a4 diskPath:(id)a5;
- (id)cachedResponseForRequest:(id)a3;
- (void)getCachedResponseForDataTask:(NSURLSessionDataTask *)a3 completionHandler:(id)a4;
- (void)storeCachedResponse:(id)a3 forDataTask:(id)a4;
- (void)storeCachedResponse:(id)a3 forRequest:(id)a4;
@end

@implementation WeatherMapURLCache

- (void)storeCachedResponse:(id)a3 forRequest:(id)a4
{
  v6 = sub_220FBFC00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FBFBC0();
  v11 = a3;
  v12 = self;
  sub_220F3EE74(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (id)cachedResponseForRequest:(id)a3
{
  v4 = sub_220FBFC00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FBFBC0();
  v9 = self;
  v10 = sub_220F3F1E0(v8);

  (*(v5 + 8))(v8, v4);

  return v10;
}

- (void)storeCachedResponse:(id)a3 forDataTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_220F3F3F4(v6, v7);
}

- (void)getCachedResponseForDataTask:(NSURLSessionDataTask *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_220F3FD04(&unk_220FD5158, v7);
}

- (_TtC11WeatherMaps18WeatherMapURLCache)initWithMemoryCapacity:(int64_t)a3 diskCapacity:(int64_t)a4 diskPath:(id)a5
{
  if (a5)
  {
    v7 = sub_220FC2700();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return sub_220F3FE14(a3, a4, v7, v9);
}

- (_TtC11WeatherMaps18WeatherMapURLCache)initWithMemoryCapacity:(int64_t)a3 diskCapacity:(int64_t)a4 directoryURL:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v15 - v10;
  if (a5)
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
  return sub_220F3FF14(a3, a4, v11);
}

@end