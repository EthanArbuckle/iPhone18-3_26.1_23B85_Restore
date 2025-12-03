@interface _STKStickerAttributionInfo
- (_STKStickerAttributionInfo)init;
- (_STKStickerAttributionInfo)initWithAdamID:(id)d bundleIdentifier:(id)identifier name:(id)name;
@end

@implementation _STKStickerAttributionInfo

- (_STKStickerAttributionInfo)initWithAdamID:(id)d bundleIdentifier:(id)identifier name:(id)name
{
  if (!identifier)
  {
    v8 = 0;
    v10 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v8 = sub_1B8A23F24();
  v10 = v9;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1B8A23F24();
LABEL_6:
  *(self + OBJC_IVAR____STKStickerAttributionInfo_adamID) = d;
  v13 = (self + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier);
  *v13 = v8;
  v13[1] = v10;
  v14 = (self + OBJC_IVAR____STKStickerAttributionInfo_name);
  *v14 = v11;
  v14[1] = v12;
  v17.receiver = self;
  v17.super_class = type metadata accessor for _STKStickerAttributionInfo();
  dCopy = d;
  return [(_STKStickerAttributionInfo *)&v17 init];
}

- (_STKStickerAttributionInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end