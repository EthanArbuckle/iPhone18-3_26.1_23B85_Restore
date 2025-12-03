@interface BKDisplayCloneRecord
- (BOOL)isEqual:(id)equal;
@end

@implementation BKDisplayCloneRecord

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && (v9 = -[CAWindowServerDisplay displayId](self->_sourceDisplay, "displayId"), v9 == [*(v8 + 2) displayId]) && (v10 = -[CAWindowServerDisplay displayId](self->_destinationDisplay, "displayId"), v10 == objc_msgSend(*(v8 + 3), "displayId")) && self->_clientPID == *(v8 + 2))
  {
    v11 = [(NSDictionary *)self->_options isEqual:*(v8 + 4)];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end