@interface EncodedImageArray
- (_NSRange)tokenRangeAt:(int)at;
- (int)imageCount;
- (void)getEncodedImageAt:(int)at withHandler:(id)handler;
@end

@implementation EncodedImageArray

- (int)imageCount
{
  swift_beginAccess();
  v3 = *(*&self->encodedImages[7] + 16);
  if (v3 >> 31)
  {
    __break(1u);
  }

  return v3;
}

- (_NSRange)tokenRangeAt:(int)at
{
  v5 = swift_beginAccess();
  if (at < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *&self->encodedImages[7];
  if (*(v7 + 16) <= at)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7 + 40 * at;
  v5 = *(v8 + 48);
  v9 = *(v8 + 56);
  v10 = __OFADD__(v5, v9);
  v11 = v5 + v9;
  if (v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v11 - v5;
  if (v11 >= v5)
  {
    if (!__OFSUB__(v11, v5))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  result.length = v6;
  result.location = v5;
  return result;
}

- (void)getEncodedImageAt:(int)at withHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);

  specialized EncodedImageArray.getEncodedImage(at:withHandler:)(at, self);
  _Block_release(v6);
  _Block_release(v6);
}

@end