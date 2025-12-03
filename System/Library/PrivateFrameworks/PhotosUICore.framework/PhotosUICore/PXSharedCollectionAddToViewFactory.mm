@interface PXSharedCollectionAddToViewFactory
+ (id)contentHostedViewControllerWithSharedCollection:(id)collection assets:(id)assets doneCallback:(id)callback;
+ (id)contentHostedViewControllerWithSharedCollection:(id)collection mediaSources:(id)sources doneCallback:(id)callback;
- (_TtC12PhotosUICore34PXSharedCollectionAddToViewFactory)init;
@end

@implementation PXSharedCollectionAddToViewFactory

+ (id)contentHostedViewControllerWithSharedCollection:(id)collection assets:(id)assets doneCallback:(id)callback
{
  v6 = _Block_copy(callback);
  sub_1A3C52C70(0, &qword_1EB126660);
  v7 = sub_1A524CA34();
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v6 = sub_1A4129F08;
  }

  else
  {
    v8 = 0;
  }

  sub_1A4126110(collection, v7, v6, v8);
}

+ (id)contentHostedViewControllerWithSharedCollection:(id)collection mediaSources:(id)sources doneCallback:(id)callback
{
  v6 = _Block_copy(callback);
  sub_1A3C52C70(0, &qword_1EB12B540);
  v7 = sub_1A524CA34();
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v6 = sub_1A3DB5554;
  }

  else
  {
    v8 = 0;
  }

  sub_1A41266E4(collection, v7, v6, v8);
}

- (_TtC12PhotosUICore34PXSharedCollectionAddToViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXSharedCollectionAddToViewFactory();
  return [(PXSharedCollectionAddToViewFactory *)&v3 init];
}

@end