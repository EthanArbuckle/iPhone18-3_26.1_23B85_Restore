@interface TPSAssetsInfo
- (NSString)description;
- (TPSAssetsInfo)init;
- (TPSAssetsInfo)initWithCoder:(id)a3;
- (TPSAssetsInfo)initWithVideoIdentifier:(id)a3 videoURL:(id)a4 imageIdentifier:(id)a5 imageURL:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAssetsInfo

- (TPSAssetsInfo)initWithVideoIdentifier:(id)a3 videoURL:(id)a4 imageIdentifier:(id)a5 imageURL:(id)a6
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  if (a3)
  {
    a3 = sub_1C014C230();
    v18 = v17;
    if (a4)
    {
LABEL_3:
      sub_1C014BBC0();
      v19 = sub_1C014BC50();
      (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v20 = sub_1C014BC50();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
LABEL_6:
  if (!a5)
  {
    v22 = 0;
    v23 = a6;
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_10:
    v25 = 1;
    goto LABEL_11;
  }

  a5 = sub_1C014C230();
  v22 = v21;
  v23 = a6;
  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_8:
  v24 = v23;
  sub_1C014BBC0();

  v25 = 0;
LABEL_11:
  v26 = sub_1C014BC50();
  (*(*(v26 - 8) + 56))(v14, v25, 1, v26);
  return TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)(a3, v18, v16, a5, v22, v14);
}

- (TPSAssetsInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  TPSAssetsInfo.encode(with:)(v4);
}

- (TPSAssetsInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1C0128960();

  return v4;
}

- (NSString)description
{
  v2 = self;
  TPSAssetsInfo.description.getter();

  v3 = sub_1C014C200();

  return v3;
}

@end