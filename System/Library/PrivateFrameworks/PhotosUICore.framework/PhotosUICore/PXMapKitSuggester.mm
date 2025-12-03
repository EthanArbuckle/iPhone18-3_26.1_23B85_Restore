@interface PXMapKitSuggester
- (_TtC12PhotosUICore17PXMapKitSuggester)init;
- (void)completer:(id)completer didFailWithError:(id)error;
- (void)completerDidUpdateResults:(id)results;
@end

@implementation PXMapKitSuggester

- (_TtC12PhotosUICore17PXMapKitSuggester)init
{
  *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester____lazy_storage___searchCompleter) = 0;
  v3 = (self + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester_input);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (&self->super.isa + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester_completion);
  *v4 = 0;
  v4[1] = 0;
  v5 = (self + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester_coordinateRegion);
  *v5 = MKCoordinateRegionForMapRect(*MEMORY[0x1E696F0D8]);
  v7.receiver = self;
  v7.super_class = type metadata accessor for PXMapKitSuggester();
  return [(PXMapKitSuggester *)&v7 init];
}

- (void)completerDidUpdateResults:(id)results
{
  resultsCopy = results;
  selfCopy = self;
  sub_1A3DD2404(resultsCopy);
}

- (void)completer:(id)completer didFailWithError:(id)error
{
  completerCopy = completer;
  errorCopy = error;
  selfCopy = self;
  sub_1A3DD2D0C();
}

@end