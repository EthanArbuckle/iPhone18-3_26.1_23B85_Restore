@interface VUWGalleryTransaction
- (BOOL)removeWithAsset:(id)asset error:(id *)error;
- (BOOL)tag:(id)tag with:(id)with type:(int64_t)type error:(id *)error;
- (id)addWithObservation:(id)observation context:(id)context priority:(int64_t)priority at:(id)at error:(id *)error;
@end

@implementation VUWGalleryTransaction

- (id)addWithObservation:(id)observation context:(id)context priority:(int64_t)priority at:(id)at error:(id *)error
{
  observationCopy = observation;
  contextCopy = context;
  atCopy = at;
  selfCopy = self;
  v15 = sub_1D21DD344(observationCopy, context, priority, at);

  return v15;
}

- (BOOL)removeWithAsset:(id)asset error:(id *)error
{
  v5 = sub_1D225055C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D225054C();
  selfCopy = self;

  sub_1D224B354(v8);

  (*(v6 + 8))(v8, v5);
  return 1;
}

- (BOOL)tag:(id)tag with:(id)with type:(int64_t)type error:(id *)error
{
  v9 = sub_1D225055C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D225054C();
  tagCopy = tag;
  selfCopy = self;
  sub_1D21DD7F4(tagCopy, v12, type);
  (*(v10 + 8))(v12, v9);

  return 1;
}

@end