@interface VKCStickerEffectInternal
+ (id)effectWithType:(unint64_t)type;
- (NSString)description;
- (void)applyComicInkParameters;
- (void)applyComicParameters;
@end

@implementation VKCStickerEffectInternal

- (NSString)description
{
  v2 = sub_1B4416070();

  return v2;
}

- (void)applyComicParameters
{
  v2 = qword_1EB898A38;
  selfCopy = self;
  if (v2 != -1)
  {
    v7 = selfCopy;
    swift_once();
    selfCopy = v7;
  }

  v4 = selfCopy + OBJC_IVAR___VKCStickerEffectInternal_comicParameters;
  v5 = qword_1EB89A4A8;
  v6 = unk_1EB89A498;
  *v4 = xmmword_1EB89A488;
  *(v4 + 1) = v6;
  *(v4 + 4) = v5;
}

- (void)applyComicInkParameters
{
  v2 = qword_1EB898A40;
  selfCopy = self;
  if (v2 != -1)
  {
    v7 = selfCopy;
    swift_once();
    selfCopy = v7;
  }

  v4 = selfCopy + OBJC_IVAR___VKCStickerEffectInternal_comicParameters;
  v5 = qword_1EB89A4D0;
  v6 = unk_1EB89A4C0;
  *v4 = xmmword_1EB89A4B0;
  *(v4 + 1) = v6;
  *(v4 + 4) = v5;
}

+ (id)effectWithType:(unint64_t)type
{
  v3 = sub_1B4400EA4(type);

  return v3;
}

@end