@interface BKMousePointerButtonDownRepositionAssertion
- (BKMousePointerButtonDownRepositionAssertion)initWithIdentifier:(id)identifier forReason:(id)reason contextRelativePointerPosition:(id)position displayUUID:(id)d restrictingToPID:(int)iD invalidationBlock:(id)block;
@end

@implementation BKMousePointerButtonDownRepositionAssertion

- (BKMousePointerButtonDownRepositionAssertion)initWithIdentifier:(id)identifier forReason:(id)reason contextRelativePointerPosition:(id)position displayUUID:(id)d restrictingToPID:(int)iD invalidationBlock:(id)block
{
  positionCopy = position;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = BKMousePointerButtonDownRepositionAssertion;
  v17 = [(BKMousePointerButtonDownRepositionAssertion *)&v20 initWithIdentifier:identifier forReason:reason invalidationBlock:block];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contextRelativePointerPosition, position);
    objc_storeStrong(&v18->_displayUUID, d);
    v18->_restrictingToPID = iD;
  }

  return v18;
}

@end