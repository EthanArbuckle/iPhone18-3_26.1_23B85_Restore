@interface ConfigFactoryInternal
- (id)loadWithData:(id)data userAgent:(id)agent userDefaults:(id)defaults;
- (id)loadWithUrl:(id)url userAgent:(id)agent userDefaults:(id)defaults;
@end

@implementation ConfigFactoryInternal

- (id)loadWithUrl:(id)url userAgent:(id)agent userDefaults:(id)defaults
{
  v8 = sub_1D8CD7554();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CD74E4();
  if (agent)
  {
    v13 = sub_1D8CD7B04();
    agent = v14;
  }

  else
  {
    v13 = 0;
  }

  defaultsCopy = defaults;
  selfCopy = self;
  v17 = ConfigFactoryInternal.load(url:userAgent:userDefaults:)(v12, v13, agent, defaults);

  (*(v9 + 8))(v12, v8);

  return v17;
}

- (id)loadWithData:(id)data userAgent:(id)agent userDefaults:(id)defaults
{
  dataCopy = data;
  selfCopy = self;
  agentCopy = agent;
  defaultsCopy = defaults;
  v12 = sub_1D8CD7594();
  v14 = v13;

  if (agentCopy)
  {
    v15 = sub_1D8CD7B04();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = ConfigFactoryInternal.load(data:userAgent:userDefaults:)(v12, v14, v15, v17, defaultsCopy);

  sub_1D8CADC38(v12, v14);

  return v18;
}

@end