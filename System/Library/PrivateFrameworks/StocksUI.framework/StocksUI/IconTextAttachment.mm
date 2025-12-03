@interface IconTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index;
- (_TtC8StocksUI18IconTextAttachment)initWithCoder:(id)coder;
- (_TtC8StocksUI18IconTextAttachment)initWithData:(id)data ofType:(id)type;
@end

@implementation IconTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index
{
  y = position.y;
  x = position.x;
  height = fragment.size.height;
  width = fragment.size.width;
  v11 = fragment.origin.y;
  v12 = fragment.origin.x;
  containerCopy = container;
  selfCopy = self;
  v17 = sub_220840628(container, index, v12, v11, width, height, x, y);
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

- (_TtC8StocksUI18IconTextAttachment)initWithData:(id)data ofType:(id)type
{
  dataCopy = data;
  if (!data)
  {
    typeCopy = type;
    v9 = 0xF000000000000000;
    if (type)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v12 = 0;
    return sub_220840834(dataCopy, v9, v10, v12);
  }

  typeCopy2 = type;
  v7 = dataCopy;
  dataCopy = sub_220884ECC();
  v9 = v8;

  if (!type)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_22089136C();
  v12 = v11;

  return sub_220840834(dataCopy, v9, v10, v12);
}

- (_TtC8StocksUI18IconTextAttachment)initWithCoder:(id)coder
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
  coderCopy = coder;
  v9 = [(IconTextAttachment *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end