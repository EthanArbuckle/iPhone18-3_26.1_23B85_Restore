@interface BKSenderPositionKey
- (BOOL)isEqual:(id)equal;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BKSenderPositionKey

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendUInt64:self->_senderID withName:@"senderID" format:1];
  v5 = [formatterCopy appendInteger:self->_positionID withName:@"positionID"];
}

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

  v9 = v8 && self->_senderID == v8[1] && self->_positionID == v8[2];
  return v9;
}

@end