@interface PFArtworkFormatter
+ (id)formatArtworkUrlWithString:(id)a3 for:(CGSize)a4 cropCode:(id)a5 fileExtension:(id)a6;
+ (id)formatArtworkUrlWithUrl:(id)a3 for:(CGSize)a4 cropCode:(id)a5 fileExtension:(id)a6;
- (PFArtworkFormatter)init;
@end

@implementation PFArtworkFormatter

+ (id)formatArtworkUrlWithString:(id)a3 for:(CGSize)a4 cropCode:(id)a5 fileExtension:(id)a6
{
  height = a4.height;
  width = a4.width;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  sub_1D917820C();
  if (a5)
  {
    sub_1D917820C();
    a5 = v13;
  }

  sub_1D917820C();
  static ArtworkFormatter.formatArtworkUrl(string:for:cropCode:fileExtension:)(a5, v12, width, height);

  v14 = sub_1D9176C2C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v12, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_1D9176B1C();
    (*(v15 + 8))(v12, v14);
    v17 = v18;
  }

  return v17;
}

+ (id)formatArtworkUrlWithUrl:(id)a3 for:(CGSize)a4 cropCode:(id)a5 fileExtension:(id)a6
{
  height = a4.height;
  width = a4.width;
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v23 - v16;
  sub_1D9176B9C();
  if (a5)
  {
    sub_1D917820C();
    a5 = v18;
  }

  sub_1D917820C();
  static ArtworkFormatter.formatArtworkUrl(url:for:cropCode:fileExtension:)(a5, v17, width, height);

  v19 = *(v10 + 8);
  v19(v13, v9);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    v20 = 0;
  }

  else
  {
    v21 = sub_1D9176B1C();
    v19(v17, v9);
    v20 = v21;
  }

  return v20;
}

- (PFArtworkFormatter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArtworkFormatter();
  return [(PFArtworkFormatter *)&v3 init];
}

@end