@interface ConfigFactoryInternal
- (id)loadWithData:(id)a3 userAgent:(id)a4 userDefaults:(id)a5;
- (id)loadWithUrl:(id)a3 userAgent:(id)a4 userDefaults:(id)a5;
@end

@implementation ConfigFactoryInternal

- (id)loadWithUrl:(id)a3 userAgent:(id)a4 userDefaults:(id)a5
{
  v8 = sub_1D8CD7554();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CD74E4();
  if (a4)
  {
    v13 = sub_1D8CD7B04();
    a4 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = a5;
  v16 = self;
  v17 = ConfigFactoryInternal.load(url:userAgent:userDefaults:)(v12, v13, a4, a5);

  (*(v9 + 8))(v12, v8);

  return v17;
}

- (id)loadWithData:(id)a3 userAgent:(id)a4 userDefaults:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a4;
  v11 = a5;
  v12 = sub_1D8CD7594();
  v14 = v13;

  if (v10)
  {
    v15 = sub_1D8CD7B04();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = ConfigFactoryInternal.load(data:userAgent:userDefaults:)(v12, v14, v15, v17, v11);

  sub_1D8CADC38(v12, v14);

  return v18;
}

@end