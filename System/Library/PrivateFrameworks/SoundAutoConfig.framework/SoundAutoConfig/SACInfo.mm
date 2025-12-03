@interface SACInfo
+ (BOOL)isSoundAutoConfigAvailable;
+ (id)calibrationModeDescription:(unint64_t)description;
- (SACInfo)init;
- (SACInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SACInfo

- (SACInfo)init
{
  v3.receiver = self;
  v3.super_class = SACInfo;
  return [(SACInfo *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SACInfo allocWithZone:?]];
  angle = [(SACInfo *)self angle];
  v6 = [angle copy];
  [(SACInfo *)v4 setAngle:v6];

  position = [(SACInfo *)self position];
  v8 = [position copy];
  [(SACInfo *)v4 setPosition:v8];

  role = [(SACInfo *)self role];
  v10 = [role copy];
  [(SACInfo *)v4 setRole:v10];

  roomGain = [(SACInfo *)self roomGain];
  v12 = [roomGain copy];
  [(SACInfo *)v4 setRoomGain:v12];

  v13 = objc_alloc(MEMORY[0x277CBEB18]);
  lfeqIR = [(SACInfo *)self lfeqIR];
  v15 = [v13 initWithArray:lfeqIR copyItems:1];
  [(SACInfo *)v4 setLfeqIR:v15];

  spatialAudio = [(SACInfo *)self spatialAudio];
  v17 = [spatialAudio copy];
  [(SACInfo *)v4 setSpatialAudio:v17];

  calibrationMode = [(SACInfo *)self calibrationMode];
  v19 = [calibrationMode copy];
  [(SACInfo *)v4 setCalibrationMode:v19];

  v20 = objc_alloc(MEMORY[0x277CBEB18]);
  companionInfo = [(SACInfo *)self companionInfo];
  v22 = [v20 initWithArray:companionInfo copyItems:1];
  [(SACInfo *)v4 setCompanionInfo:v22];

  return v4;
}

- (SACInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SACInfo *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"lfeqImpulseResponse"];
    [(SACInfo *)v5 setLfeqIR:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"angle"];
    [(SACInfo *)v5 setAngle:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"position"];
    [(SACInfo *)v5 setPosition:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"role"];
    [(SACInfo *)v5 setRole:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roomGain"];
    [(SACInfo *)v5 setRoomGain:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calibrationMode"];
    [(SACInfo *)v5 setCalibrationMode:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spatialAudio"];
    [(SACInfo *)v5 setSpatialAudio:v15];

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"companionInfo"];
    [(SACInfo *)v5 setCompanionInfo:v19];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lfeqIR = [(SACInfo *)self lfeqIR];
  [coderCopy encodeObject:lfeqIR forKey:@"lfeqImpulseResponse"];

  angle = [(SACInfo *)self angle];
  [coderCopy encodeObject:angle forKey:@"angle"];

  position = [(SACInfo *)self position];
  [coderCopy encodeObject:position forKey:@"position"];

  role = [(SACInfo *)self role];
  [coderCopy encodeObject:role forKey:@"role"];

  roomGain = [(SACInfo *)self roomGain];
  [coderCopy encodeObject:roomGain forKey:@"roomGain"];

  calibrationMode = [(SACInfo *)self calibrationMode];
  [coderCopy encodeObject:calibrationMode forKey:@"calibrationMode"];

  spatialAudio = [(SACInfo *)self spatialAudio];
  [coderCopy encodeObject:spatialAudio forKey:@"spatialAudio"];

  companionInfo = [(SACInfo *)self companionInfo];
  [coderCopy encodeObject:companionInfo forKey:@"companionInfo"];
}

+ (BOOL)isSoundAutoConfigAvailable
{
  v2 = MGGetProductType();
  v3 = v2 == 2702125347 || v2 == 4240173202;
  return v2 == 1540760353 || v3;
}

+ (id)calibrationModeDescription:(unint64_t)description
{
  if ((description & 2) != 0)
  {
    v3 = @"Full LF";
    if ((description & 4) != 0)
    {
LABEL_8:
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ + %@", v3, @"Full HF"];
    }
  }

  else
  {
    if ((description & 1) == 0)
    {
      if ((description & 4) != 0)
      {
        v3 = @"Full HF";
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_10;
    }

    v3 = @"Partial LF";
    if ((description & 4) != 0)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"None";
  }

  v5 = v4;

  return v4;
}

- (id)description
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"SACInfo <%lu> {\n", -[SACInfo hash](self, "hash")];
  angle = [(SACInfo *)self angle];

  if (angle)
  {
    angle2 = [(SACInfo *)self angle];
    [angle2 floatValue];
    [v3 appendFormat:@"angle = %1.0f\n", v6];
  }

  position = [(SACInfo *)self position];

  if (position)
  {
    position2 = [(SACInfo *)self position];
    [v3 appendFormat:@"position = %@\n", position2];
  }

  role = [(SACInfo *)self role];

  if (role)
  {
    role2 = [(SACInfo *)self role];
    [v3 appendFormat:@"role = %@\n", role2];
  }

  roomGain = [(SACInfo *)self roomGain];

  if (roomGain)
  {
    roomGain2 = [(SACInfo *)self roomGain];
    [v3 appendFormat:@"room gain = %@\n", roomGain2];
  }

  calibrationMode = [(SACInfo *)self calibrationMode];

  if (calibrationMode)
  {
    calibrationMode2 = [(SACInfo *)self calibrationMode];
    v15 = +[SACInfo calibrationModeDescription:](SACInfo, "calibrationModeDescription:", [calibrationMode2 unsignedIntegerValue]);
    [v3 appendFormat:@"calibration level = %@\n", v15];
  }

  lfeqIR = [(SACInfo *)self lfeqIR];

  if (lfeqIR)
  {
    lfeqIR2 = [(SACInfo *)self lfeqIR];
    [v3 appendFormat:@"lfeqIR = NSArray of Size %d\n", objc_msgSend(lfeqIR2, "count")];
  }

  companionInfo = [(SACInfo *)self companionInfo];
  if (companionInfo)
  {
    role3 = [(SACInfo *)self role];
    if (role3)
    {
      role4 = [(SACInfo *)self role];
      v21 = [role4 isEqualToString:@"solo"];

      if ((v21 & 1) == 0)
      {
        [v3 appendFormat:@"companion info = {\n"];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        companionInfo2 = [(SACInfo *)self companionInfo];
        v23 = [companionInfo2 countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v23)
        {
          v24 = *v50;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v50 != v24)
              {
                objc_enumerationMutation(companionInfo2);
              }

              v26 = *(*(&v49 + 1) + 8 * i);
              role5 = [v26 role];
              v28 = role5 == 0;

              if (!v28)
              {
                role6 = [v26 role];
                [v3 appendFormat:@"\tCompanion - %@ ", role6];
              }

              position3 = [v26 position];
              v31 = position3 == 0;

              if (!v31)
              {
                position4 = [v26 position];
                [v3 appendFormat:@"\tposition = %@ ", position4];
              }

              angle3 = [v26 angle];
              v34 = angle3 == 0;

              if (!v34)
              {
                angle4 = [v26 angle];
                [angle4 floatValue];
                [v3 appendFormat:@"\tangle = %1.0f ", v36];
              }

              roomGain3 = [v26 roomGain];
              v38 = roomGain3 == 0;

              if (!v38)
              {
                roomGain4 = [v26 roomGain];
                [v3 appendFormat:@"\troom gain = %@ ", roomGain4];
              }

              calibrationMode3 = [v26 calibrationMode];
              v41 = calibrationMode3 == 0;

              if (!v41)
              {
                calibrationMode4 = [v26 calibrationMode];
                v43 = +[SACInfo calibrationModeDescription:](SACInfo, "calibrationModeDescription:", [calibrationMode4 unsignedIntegerValue]);
                [v3 appendFormat:@"\tcalibration level = %@ ", v43];
              }

              lfeqIR3 = [v26 lfeqIR];
              v45 = lfeqIR3 == 0;

              if (!v45)
              {
                lfeqIR4 = [v26 lfeqIR];
                [v3 appendFormat:@"\tlfeqIR = NSArray of Size %d ", objc_msgSend(lfeqIR4, "count")];
              }

              [v3 appendFormat:@"\n"];
            }

            v23 = [companionInfo2 countByEnumeratingWithState:&v49 objects:v53 count:16];
          }

          while (v23);
        }

        [v3 appendFormat:@"  }\n"];
      }
    }

    else
    {
    }
  }

  [v3 appendString:@"}"];
  v47 = *MEMORY[0x277D85DE8];

  return v3;
}

@end