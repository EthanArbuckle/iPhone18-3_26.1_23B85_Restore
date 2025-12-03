@interface VFXBidirectionalRemapTable
- (VFXBidirectionalRemapTable)init;
- (int64_t)presentationEntityFromModel:(int64_t)model;
- (void)add:(int64_t)add :(int64_t)a4;
@end

@implementation VFXBidirectionalRemapTable

- (int64_t)presentationEntityFromModel:(int64_t)model
{
  selfCopy = self;
  v5 = sub_1AFCE2EB8(model);

  return v5;
}

- (void)add:(int64_t)add :(int64_t)a4
{
  selfCopy = self;
  sub_1AFCE2FB4(add, a4);
}

- (VFXBidirectionalRemapTable)init
{
  v3 = OBJC_IVAR___VFXBidirectionalRemapTable_remapTable;
  type metadata accessor for BidirectionalRemapTable();
  v4 = swift_allocObject();
  *(v4 + 2) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 3) = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
  *(v4 + 4) = sub_1AF42B4D0(v5);
  *(&self->super.isa + v3) = v4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for VFXBidirectionalRemapTable();
  return [(VFXBidirectionalRemapTable *)&v7 init];
}

@end