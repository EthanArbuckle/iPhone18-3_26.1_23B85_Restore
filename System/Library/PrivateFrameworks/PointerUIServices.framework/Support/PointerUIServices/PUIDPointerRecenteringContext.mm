@interface PUIDPointerRecenteringContext
- (BOOL)isEqual:(id)equal;
- (PUIDPointerRecenteringContext)initWithContextRelativePointerPosition:(id)position displayUUID:(id)d restrictingToPID:(int)iD;
@end

@implementation PUIDPointerRecenteringContext

- (PUIDPointerRecenteringContext)initWithContextRelativePointerPosition:(id)position displayUUID:(id)d restrictingToPID:(int)iD
{
  positionCopy = position;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = PUIDPointerRecenteringContext;
  v11 = [(PUIDPointerRecenteringContext *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contextRelativePointerPosition, position);
    v13 = [dCopy copy];
    displayUUID = v12->_displayUUID;
    v12->_displayUUID = v13;

    v12->_restrictingToPID = iD;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(PUIDPointerRecenteringContext *)self restrictingToPID], v5 == [(PUIDPointerRecenteringContext *)equalCopy restrictingToPID]) && ([(PUIDPointerRecenteringContext *)self displayUUID], v6 = objc_claimAutoreleasedReturnValue(), [(PUIDPointerRecenteringContext *)equalCopy displayUUID], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, v8))
    {
      contextRelativePointerPosition = [(PUIDPointerRecenteringContext *)self contextRelativePointerPosition];
      contextRelativePointerPosition2 = [(PUIDPointerRecenteringContext *)equalCopy contextRelativePointerPosition];
      v11 = BSEqualObjects();
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end