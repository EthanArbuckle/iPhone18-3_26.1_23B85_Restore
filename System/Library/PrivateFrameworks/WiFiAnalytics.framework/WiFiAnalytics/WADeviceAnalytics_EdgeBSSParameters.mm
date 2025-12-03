@interface WADeviceAnalytics_EdgeBSSParameters
- (WADeviceAnalytics_EdgeBSSParameters)initWithBSS:(id)s;
- (id)description;
@end

@implementation WADeviceAnalytics_EdgeBSSParameters

- (id)description
{
  if (self->_isEdge)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Edge Parameters for BSSID %@: isEdge:%@, autoLeaveRssi:%hd, manualLeaveCount:%hd", self->_bssid, v2, self->_autoLeaveRssi, self->_manualLeaveCount];
}

- (WADeviceAnalytics_EdgeBSSParameters)initWithBSS:(id)s
{
  sCopy = s;
  if (sCopy)
  {
    v9.receiver = self;
    v9.super_class = WADeviceAnalytics_EdgeBSSParameters;
    v5 = [(WADeviceAnalytics_EdgeBSSParameters *)&v9 init];
    if (v5)
    {
      bssid = [sCopy bssid];
      [(WADeviceAnalytics_EdgeBSSParameters *)v5 setBssid:bssid];

      -[WADeviceAnalytics_EdgeBSSParameters setIsEdge:](v5, "setIsEdge:", [sCopy isEdgeForLeave]);
      if ([sCopy isEdgeForLeave])
      {
        autoLeaveRssi = [sCopy autoLeaveRssi];
      }

      else
      {
        autoLeaveRssi = 0;
      }

      [(WADeviceAnalytics_EdgeBSSParameters *)v5 setAutoLeaveRssi:autoLeaveRssi];
      -[WADeviceAnalytics_EdgeBSSParameters setManualLeaveCount:](v5, "setManualLeaveCount:", [sCopy disUsrForcedInWeakRssiCount]);
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

@end