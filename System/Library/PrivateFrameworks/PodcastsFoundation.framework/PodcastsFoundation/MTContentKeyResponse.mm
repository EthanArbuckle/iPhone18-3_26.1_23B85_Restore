@interface MTContentKeyResponse
- (MTContentKeyResponse)init;
- (MTContentKeyResponse)initWithRequest:(id)request error:(id)error;
- (MTContentKeyResponse)initWithRequest:(id)request keyData:(id)data renewalDate:(id)date error:(id)error;
- (NSDate)renewalDate;
- (NSError)error;
- (void)setError:(id)error;
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

- (void)setError:(id)error
{
  v5 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = error;
  selfCopy = self;
  errorCopy = error;
}

- (MTContentKeyResponse)initWithRequest:(id)request error:(id)error
{
  requestCopy = request;
  if (error)
  {
    errorCopy = error;
    v8 = sub_1D9176A5C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MTContentKeyResponse *)self initWithRequest:requestCopy keyData:0 renewalDate:0 error:v8];

  return v9;
}

- (MTContentKeyResponse)initWithRequest:(id)request keyData:(id)data renewalDate:(id)date error:(id)error
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - v12;
  if (!data)
  {
    requestCopy = request;
    dateCopy = date;
    errorCopy = error;
    v19 = 0xF000000000000000;
    if (date)
    {
      goto LABEL_3;
    }

LABEL_5:
    v24 = sub_1D9176E3C();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    goto LABEL_6;
  }

  requestCopy2 = request;
  dateCopy2 = date;
  errorCopy2 = error;
  dataCopy = data;
  data = sub_1D9176C8C();
  v19 = v18;

  if (!date)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D9176DFC();

  v20 = sub_1D9176E3C();
  (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
LABEL_6:
  v25 = sub_1D8FF9600(request, data, v19, v13, error);

  sub_1D8D75668(data, v19);
  return v25;
}

- (MTContentKeyResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end