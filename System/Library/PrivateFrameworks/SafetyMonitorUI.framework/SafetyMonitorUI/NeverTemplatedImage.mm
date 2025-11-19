@interface NeverTemplatedImage
- (_TtC15SafetyMonitorUIP33_0136281DCC3F5D58BE1F34FEE765118619NeverTemplatedImage)init;
- (_TtC15SafetyMonitorUIP33_0136281DCC3F5D58BE1F34FEE765118619NeverTemplatedImage)initWithCGImage:(CGImage *)a3 imageOrientation:(int64_t)a4;
- (_TtC15SafetyMonitorUIP33_0136281DCC3F5D58BE1F34FEE765118619NeverTemplatedImage)initWithData:(id)a3;
- (_TtC15SafetyMonitorUIP33_0136281DCC3F5D58BE1F34FEE765118619NeverTemplatedImage)initWithData:(id)a3 scale:(double)a4;
@end

@implementation NeverTemplatedImage

- (_TtC15SafetyMonitorUIP33_0136281DCC3F5D58BE1F34FEE765118619NeverTemplatedImage)initWithData:(id)a3
{
  v4 = a3;
  v5 = sub_264783A14();
  v7 = v6;

  v8 = sub_264783A04();
  v11.receiver = self;
  v11.super_class = type metadata accessor for NeverTemplatedImage();
  v9 = [(NeverTemplatedImage *)&v11 initWithData:v8];
  sub_264655264(v5, v7);

  if (v9)
  {
  }

  return v9;
}

- (_TtC15SafetyMonitorUIP33_0136281DCC3F5D58BE1F34FEE765118619NeverTemplatedImage)initWithData:(id)a3 scale:(double)a4
{
  v6 = a3;
  v7 = sub_264783A14();
  v9 = v8;

  v10 = sub_264783A04();
  v13.receiver = self;
  v13.super_class = type metadata accessor for NeverTemplatedImage();
  v11 = [(NeverTemplatedImage *)&v13 initWithData:v10 scale:a4];
  sub_264655264(v7, v9);

  if (v11)
  {
  }

  return v11;
}

- (_TtC15SafetyMonitorUIP33_0136281DCC3F5D58BE1F34FEE765118619NeverTemplatedImage)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NeverTemplatedImage();
  return [(NeverTemplatedImage *)&v3 init];
}

- (_TtC15SafetyMonitorUIP33_0136281DCC3F5D58BE1F34FEE765118619NeverTemplatedImage)initWithCGImage:(CGImage *)a3 imageOrientation:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for NeverTemplatedImage();
  v6 = a3;
  v7 = [(NeverTemplatedImage *)&v9 initWithCGImage:v6 imageOrientation:a4];

  if (v7)
  {
  }

  return v7;
}

@end