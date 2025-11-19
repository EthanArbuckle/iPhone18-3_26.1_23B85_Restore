@interface GradientView
+ (Class)layerClass;
- (_TtC9SeymourUI12GradientView)initWithCoder:(id)a3;
- (_TtC9SeymourUI12GradientView)initWithFrame:(CGRect)a3;
@end

@implementation GradientView

+ (Class)layerClass
{
  sub_20B51C88C(0, &qword_27C762D80);

  return swift_getObjCClassFromMetadata();
}

- (_TtC9SeymourUI12GradientView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GradientView();
  return [(GradientView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI12GradientView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GradientView();
  v4 = a3;
  v5 = [(GradientView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end