@interface PXAppIntentsViewAnnotationsBridge
+ (void)clearViewAnnotationDelegateFor:(id)for;
+ (void)setViewAnnotationDelegate:(id)delegate for:(id)for;
- (_TtC12PhotosUICore33PXAppIntentsViewAnnotationsBridge)init;
@end

@implementation PXAppIntentsViewAnnotationsBridge

+ (void)setViewAnnotationDelegate:(id)delegate for:(id)for
{
  type metadata accessor for PXAppIntentsViewAnnotations();
  swift_unknownObjectRetain();
  forCopy = for;
  static PXAppIntentsViewAnnotations.setDelegate(_:for:)(delegate, forCopy);
  swift_unknownObjectRelease();
}

+ (void)clearViewAnnotationDelegateFor:(id)for
{
  forCopy = for;
  _s12PhotosUICore27PXAppIntentsViewAnnotationsC13clearDelegate3forySo6UIViewCSg_tFZ_0(for);
}

- (_TtC12PhotosUICore33PXAppIntentsViewAnnotationsBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXAppIntentsViewAnnotationsBridge();
  return [(PXAppIntentsViewAnnotationsBridge *)&v3 init];
}

@end