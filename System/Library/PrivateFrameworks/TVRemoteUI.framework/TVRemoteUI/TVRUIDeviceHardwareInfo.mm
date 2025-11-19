@interface TVRUIDeviceHardwareInfo
- (CGPoint)volumeButtonsCenterPoint;
- (CGRect)userIntentButtonRect;
- (CGRect)volumeDownButtonRect;
- (CGRect)volumeUpButtonRect;
- (double)initWithUserIntentButton:(double)a3 volumeUpButton:(double)a4 volumeDownButton:(double)a5 volumeTotalHeight:(double)a6;
- (id)description;
- (unsigned)userIntentButtonEdge;
- (unsigned)volumeButtonsEdge;
@end

@implementation TVRUIDeviceHardwareInfo

- (double)initWithUserIntentButton:(double)a3 volumeUpButton:(double)a4 volumeDownButton:(double)a5 volumeTotalHeight:(double)a6
{
  v30.receiver = a1;
  v30.super_class = TVRUIDeviceHardwareInfo;
  result = objc_msgSendSuper2(&v30, sel_init);
  if (result)
  {
    result[3] = a3;
    result[4] = a4;
    result[5] = a5;
    result[6] = a6;
    result[7] = a7;
    result[8] = a8;
    result[9] = a9;
    *(result + 10) = a17;
    *(result + 11) = a18;
    *(result + 12) = a19;
    *(result + 13) = a20;
    *(result + 1) = a21;
    result[2] = a2;
  }

  return result;
}

- (CGPoint)volumeButtonsCenterPoint
{
  MaxX = CGRectGetMaxX(self->_volumeDownButtonRect);
  v4 = (MaxX - CGRectGetMinX(self->_volumeUpButtonRect)) * 0.5;
  v5 = v4 + CGRectGetMinX(self->_volumeUpButtonRect);
  MaxY = CGRectGetMaxY(self->_volumeDownButtonRect);
  v7 = (MaxY - CGRectGetMinY(self->_volumeUpButtonRect)) * 0.5;
  v8 = v7 + CGRectGetMinY(self->_volumeUpButtonRect);
  v9 = v5;
  result.y = v8;
  result.x = v9;
  return result;
}

- (unsigned)volumeButtonsEdge
{
  if (CGRectGetWidth(self->_volumeUpButtonRect) <= 0.0)
  {
    return CGRectGetMinX(self->_volumeUpButtonRect) > 0.0;
  }

  else
  {
    return 2;
  }
}

- (unsigned)userIntentButtonEdge
{
  if (CGRectGetMinX(self->_userIntentButtonRect) <= 0.0)
  {
    return 0;
  }

  if (CGRectGetMinY(self->_userIntentButtonRect) <= 0.0)
  {
    return 1;
  }

  return 2;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = BSNSStringFromCGRect();
  [v3 appendString:v4 withName:@"userIntentButtonRect"];

  v5 = BSNSStringFromCGRect();
  [v3 appendString:v5 withName:@"volumeUpButtonRect"];

  v6 = BSNSStringFromCGRect();
  [v3 appendString:v6 withName:@"volumeDownButtonRect"];

  v7 = [v3 appendFloat:@"totalVolumeHeight" withName:self->_volumeTotalHeight];
  [(TVRUIDeviceHardwareInfo *)self volumeButtonsCenterPoint];
  v8 = [v3 appendPoint:@"volumeButtonsCenterPoint" withName:?];
  v9 = [v3 build];

  return v9;
}

- (CGRect)userIntentButtonRect
{
  x = self->_userIntentButtonRect.origin.x;
  y = self->_userIntentButtonRect.origin.y;
  width = self->_userIntentButtonRect.size.width;
  height = self->_userIntentButtonRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)volumeUpButtonRect
{
  x = self->_volumeUpButtonRect.origin.x;
  y = self->_volumeUpButtonRect.origin.y;
  width = self->_volumeUpButtonRect.size.width;
  height = self->_volumeUpButtonRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)volumeDownButtonRect
{
  x = self->_volumeDownButtonRect.origin.x;
  y = self->_volumeDownButtonRect.origin.y;
  width = self->_volumeDownButtonRect.size.width;
  height = self->_volumeDownButtonRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end