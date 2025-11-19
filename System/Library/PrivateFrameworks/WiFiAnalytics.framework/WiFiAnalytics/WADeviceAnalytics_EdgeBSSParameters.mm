@interface WADeviceAnalytics_EdgeBSSParameters
- (WADeviceAnalytics_EdgeBSSParameters)initWithBSS:(id)a3;
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

- (WADeviceAnalytics_EdgeBSSParameters)initWithBSS:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = WADeviceAnalytics_EdgeBSSParameters;
    v5 = [(WADeviceAnalytics_EdgeBSSParameters *)&v9 init];
    if (v5)
    {
      v6 = [v4 bssid];
      [(WADeviceAnalytics_EdgeBSSParameters *)v5 setBssid:v6];

      -[WADeviceAnalytics_EdgeBSSParameters setIsEdge:](v5, "setIsEdge:", [v4 isEdgeForLeave]);
      if ([v4 isEdgeForLeave])
      {
        v7 = [v4 autoLeaveRssi];
      }

      else
      {
        v7 = 0;
      }

      [(WADeviceAnalytics_EdgeBSSParameters *)v5 setAutoLeaveRssi:v7];
      -[WADeviceAnalytics_EdgeBSSParameters setManualLeaveCount:](v5, "setManualLeaveCount:", [v4 disUsrForcedInWeakRssiCount]);
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

@end