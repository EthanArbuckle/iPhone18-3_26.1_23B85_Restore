@interface TPSAssetsInfo
- (NSString)description;
- (TPSAssetsInfo)init;
- (TPSAssetsInfo)initWithCoder:(id)coder;
- (TPSAssetsInfo)initWithVideoIdentifier:(id)identifier videoURL:(id)l imageIdentifier:(id)imageIdentifier imageURL:(id)rL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAssetsInfo

- (TPSAssetsInfo)initWithVideoIdentifier:(id)identifier videoURL:(id)l imageIdentifier:(id)imageIdentifier imageURL:(id)rL
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  if (identifier)
  {
    identifier = sub_1C014C230();
    v18 = v17;
    if (l)
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
    if (l)
    {
      goto LABEL_3;
    }
  }

  v20 = sub_1C014BC50();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
LABEL_6:
  if (!imageIdentifier)
  {
    v22 = 0;
    rLCopy2 = rL;
    if (rLCopy2)
    {
      goto LABEL_8;
    }

LABEL_10:
    v25 = 1;
    goto LABEL_11;
  }

  imageIdentifier = sub_1C014C230();
  v22 = v21;
  rLCopy2 = rL;
  if (!rLCopy2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v24 = rLCopy2;
  sub_1C014BBC0();

  v25 = 0;
LABEL_11:
  v26 = sub_1C014BC50();
  (*(*(v26 - 8) + 56))(v14, v25, 1, v26);
  return TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)(identifier, v18, v16, imageIdentifier, v22, v14);
}

- (TPSAssetsInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TPSAssetsInfo.encode(with:)(coderCopy);
}

- (TPSAssetsInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1C0128960();

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  TPSAssetsInfo.description.getter();

  v3 = sub_1C014C200();

  return v3;
}

@end