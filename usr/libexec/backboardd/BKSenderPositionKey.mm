@interface BKSenderPositionKey
- (BOOL)isEqual:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation BKSenderPositionKey

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  v4 = [v6 appendUInt64:self->_senderID withName:@"senderID" format:1];
  v5 = [v6 appendInteger:self->_positionID withName:@"positionID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
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