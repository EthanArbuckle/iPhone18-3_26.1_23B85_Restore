@interface EncodedImageArray
- (_NSRange)tokenRangeAt:(int)a3;
- (int)imageCount;
- (void)getEncodedImageAt:(int)a3 withHandler:(id)a4;
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

- (_NSRange)tokenRangeAt:(int)a3
{
  v5 = swift_beginAccess();
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *&self->encodedImages[7];
  if (*(v7 + 16) <= a3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7 + 40 * a3;
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

- (void)getEncodedImageAt:(int)a3 withHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);

  specialized EncodedImageArray.getEncodedImage(at:withHandler:)(a3, self);
  _Block_release(v6);
  _Block_release(v6);
}

@end