@interface MTContentKeyResponse
- (MTContentKeyResponse)init;
- (MTContentKeyResponse)initWithRequest:(id)a3 error:(id)a4;
- (MTContentKeyResponse)initWithRequest:(id)a3 keyData:(id)a4 renewalDate:(id)a5 error:(id)a6;
- (NSDate)renewalDate;
- (NSError)error;
- (void)setError:(id)a3;
@end

@implementation MTContentKeyResponse

- (NSDate)renewalDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  sub_1D8CF6B1C(self + OBJC_IVAR___MTContentKeyResponse_renewalDate, &v13 - v5);
  v7 = sub_1D9176E3C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (NSError)error
{
  v3 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v4 = *(self + v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D9176A5C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setError:(id)a3
{
  v5 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = self;
  v8 = a3;
}

- (MTContentKeyResponse)initWithRequest:(id)a3 error:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = a4;
    v8 = sub_1D9176A5C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MTContentKeyResponse *)self initWithRequest:v6 keyData:0 renewalDate:0 error:v8];

  return v9;
}

- (MTContentKeyResponse)initWithRequest:(id)a3 keyData:(id)a4 renewalDate:(id)a5 error:(id)a6
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - v12;
  if (!a4)
  {
    v21 = a3;
    v22 = a5;
    v23 = a6;
    v19 = 0xF000000000000000;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v24 = sub_1D9176E3C();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    goto LABEL_6;
  }

  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a4;
  a4 = sub_1D9176C8C();
  v19 = v18;

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D9176DFC();

  v20 = sub_1D9176E3C();
  (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
LABEL_6:
  v25 = sub_1D8FF9600(a3, a4, v19, v13, a6);

  sub_1D8D75668(a4, v19);
  return v25;
}

- (MTContentKeyResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end