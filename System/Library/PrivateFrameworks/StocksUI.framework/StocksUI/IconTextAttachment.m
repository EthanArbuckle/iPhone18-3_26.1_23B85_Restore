@interface IconTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(int64_t)a6;
- (_TtC8StocksUI18IconTextAttachment)initWithCoder:(id)a3;
- (_TtC8StocksUI18IconTextAttachment)initWithData:(id)a3 ofType:(id)a4;
@end

@implementation IconTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(int64_t)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v15 = a3;
  v16 = self;
  v17 = sub_220840628(a3, a6, v12, v11, width, height, x, y);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (_TtC8StocksUI18IconTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  v5 = a3;
  if (!a3)
  {
    v13 = a4;
    v9 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v12 = 0;
    return sub_220840834(v5, v9, v10, v12);
  }

  v6 = a4;
  v7 = v5;
  v5 = sub_220884ECC();
  v9 = v8;

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_22089136C();
  v12 = v11;

  return sub_220840834(v5, v9, v10, v12);
}

- (_TtC8StocksUI18IconTextAttachment)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC8StocksUI18IconTextAttachment_baselineAdjustment;
  *v6 = 0;
  v6[8] = 1;
  v7 = self + OBJC_IVAR____TtC8StocksUI18IconTextAttachment_imageHeightOverride;
  *v7 = 0;
  v7[8] = 1;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = [(IconTextAttachment *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end