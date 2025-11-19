@interface PUIDPointerRecenteringContext
- (BOOL)isEqual:(id)a3;
- (PUIDPointerRecenteringContext)initWithContextRelativePointerPosition:(id)a3 displayUUID:(id)a4 restrictingToPID:(int)a5;
@end

@implementation PUIDPointerRecenteringContext

- (PUIDPointerRecenteringContext)initWithContextRelativePointerPosition:(id)a3 displayUUID:(id)a4 restrictingToPID:(int)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = PUIDPointerRecenteringContext;
  v11 = [(PUIDPointerRecenteringContext *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contextRelativePointerPosition, a3);
    v13 = [v10 copy];
    displayUUID = v12->_displayUUID;
    v12->_displayUUID = v13;

    v12->_restrictingToPID = a5;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(PUIDPointerRecenteringContext *)self restrictingToPID], v5 == [(PUIDPointerRecenteringContext *)v4 restrictingToPID]) && ([(PUIDPointerRecenteringContext *)self displayUUID], v6 = objc_claimAutoreleasedReturnValue(), [(PUIDPointerRecenteringContext *)v4 displayUUID], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, v8))
    {
      v9 = [(PUIDPointerRecenteringContext *)self contextRelativePointerPosition];
      v10 = [(PUIDPointerRecenteringContext *)v4 contextRelativePointerPosition];
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