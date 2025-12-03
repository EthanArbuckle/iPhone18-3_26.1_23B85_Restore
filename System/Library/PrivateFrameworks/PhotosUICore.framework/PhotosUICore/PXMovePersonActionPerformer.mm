@interface PXMovePersonActionPerformer
- (NSArray)sourcePeople;
- (NSString)targetLocalIdentifier;
- (PXMovePersonActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (int64_t)destinationManualOrder;
- (int64_t)destinationType;
- (int64_t)sourceType;
- (void)performBackgroundTask;
- (void)setDestinationManualOrder:(int64_t)order;
- (void)setDestinationType:(int64_t)type;
- (void)setSourcePeople:(id)people;
- (void)setSourceType:(int64_t)type;
- (void)setTargetLocalIdentifier:(id)identifier;
@end

@implementation PXMovePersonActionPerformer

- (NSArray)sourcePeople
{
  swift_beginAccess();
  sub_1A3C52C70(0, &qword_1EB1265C0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

- (void)setSourcePeople:(id)people
{
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v4 = sub_1A524CA34();
  v5 = OBJC_IVAR___PXMovePersonActionPerformer_sourcePeople;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (int64_t)sourceType
{
  v3 = OBJC_IVAR___PXMovePersonActionPerformer_sourceType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceType:(int64_t)type
{
  v5 = OBJC_IVAR___PXMovePersonActionPerformer_sourceType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (int64_t)destinationManualOrder
{
  v3 = OBJC_IVAR___PXMovePersonActionPerformer_destinationManualOrder;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDestinationManualOrder:(int64_t)order
{
  v5 = OBJC_IVAR___PXMovePersonActionPerformer_destinationManualOrder;
  swift_beginAccess();
  *(self + v5) = order;
}

- (int64_t)destinationType
{
  v3 = OBJC_IVAR___PXMovePersonActionPerformer_destinationType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDestinationType:(int64_t)type
{
  v5 = OBJC_IVAR___PXMovePersonActionPerformer_destinationType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (NSString)targetLocalIdentifier
{
  v2 = self + OBJC_IVAR___PXMovePersonActionPerformer_targetLocalIdentifier;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

- (void)setTargetLocalIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1A524C674();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___PXMovePersonActionPerformer_targetLocalIdentifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (void)performBackgroundTask
{
  selfCopy = self;
  sub_1A3FF34DC();
}

- (PXMovePersonActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  v6 = sub_1A524C674();
  v8 = v7;
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  sub_1A524C3E4();
  return sub_1A3FF3BB8(v6, v8, reference);
}

@end