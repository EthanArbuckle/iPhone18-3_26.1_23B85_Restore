@interface RhizomeLayeredFlowerView
- (CGAffineTransform)transform;
- (NSString)debugDescription;
- (_TtC13RhizomePoster24RhizomeLayeredFlowerView)initWithFrame:(CGRect)frame;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)layoutSubviews;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)sizeToFit;
@end

@implementation RhizomeLayeredFlowerView

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_10000EB74(layerCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10000EDD4();
}

- (void)sizeToFit
{
  selfCopy = self;
  sub_10000E478();
}

- (CGAffineTransform)transform
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  result = [(CGAffineTransform *)&v10 transform];
  v5 = v8;
  v6 = v9;
  *&retstr->a = v7;
  *&retstr->c = v5;
  *&retstr->tx = v6;
  return result;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  v5 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v5;
  v6[2] = *&transform->tx;
  [(RhizomeLayeredFlowerView *)&v7 setTransform:v6];
  if (*&v4[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet])
  {

    sub_10003411C(v4);
  }
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_10000F718();

  v3 = sub_100037058();

  return v3;
}

- (_TtC13RhizomePoster24RhizomeLayeredFlowerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end