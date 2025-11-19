@interface PXAppIntentsViewAnnotationsBridge
+ (void)clearViewAnnotationDelegateFor:(id)a3;
+ (void)setViewAnnotationDelegate:(id)a3 for:(id)a4;
- (_TtC12PhotosUICore33PXAppIntentsViewAnnotationsBridge)init;
@end

@implementation PXAppIntentsViewAnnotationsBridge

+ (void)setViewAnnotationDelegate:(id)a3 for:(id)a4
{
  type metadata accessor for PXAppIntentsViewAnnotations();
  swift_unknownObjectRetain();
  v6 = a4;
  static PXAppIntentsViewAnnotations.setDelegate(_:for:)(a3, v6);
  swift_unknownObjectRelease();
}

+ (void)clearViewAnnotationDelegateFor:(id)a3
{
  v4 = a3;
  _s12PhotosUICore27PXAppIntentsViewAnnotationsC13clearDelegate3forySo6UIViewCSg_tFZ_0(a3);
}

- (_TtC12PhotosUICore33PXAppIntentsViewAnnotationsBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXAppIntentsViewAnnotationsBridge();
  return [(PXAppIntentsViewAnnotationsBridge *)&v3 init];
}

@end