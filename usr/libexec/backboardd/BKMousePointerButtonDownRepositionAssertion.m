@interface BKMousePointerButtonDownRepositionAssertion
- (BKMousePointerButtonDownRepositionAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 contextRelativePointerPosition:(id)a5 displayUUID:(id)a6 restrictingToPID:(int)a7 invalidationBlock:(id)a8;
@end

@implementation BKMousePointerButtonDownRepositionAssertion

- (BKMousePointerButtonDownRepositionAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 contextRelativePointerPosition:(id)a5 displayUUID:(id)a6 restrictingToPID:(int)a7 invalidationBlock:(id)a8
{
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = BKMousePointerButtonDownRepositionAssertion;
  v17 = [(BKMousePointerButtonDownRepositionAssertion *)&v20 initWithIdentifier:a3 forReason:a4 invalidationBlock:a8];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contextRelativePointerPosition, a5);
    objc_storeStrong(&v18->_displayUUID, a6);
    v18->_restrictingToPID = a7;
  }

  return v18;
}

@end