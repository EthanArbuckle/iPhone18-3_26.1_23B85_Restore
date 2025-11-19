@interface VISDeviceStateConfig
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (VISDeviceStateConfig)initWithDictionary:(id)a3;
- (VISDeviceStateConfig)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation VISDeviceStateConfig

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(VISDeviceStateConfig *)self frame_count])
  {
    PBDataWriterWriteInt32Field();
  }

  [(VISDeviceStateConfig *)self anchor_depth];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(VISDeviceStateConfig *)self set_zero_state_as_stable])
  {
    PBDataWriterWriteBOOLField();
  }

  [(VISDeviceStateConfig *)self camera_small_movement_threshold];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISDeviceStateConfig *)self camera_large_movement_threshold];
  v6 = v8;
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v6 = v8;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (frame_count = self->_frame_count, frame_count == objc_msgSend(v4, "frame_count")) && (anchor_depth = self->_anchor_depth, objc_msgSend(v4, "anchor_depth"), anchor_depth == v7) && (set_zero_state_as_stable = self->_set_zero_state_as_stable, set_zero_state_as_stable == objc_msgSend(v4, "set_zero_state_as_stable")) && (camera_small_movement_threshold = self->_camera_small_movement_threshold, objc_msgSend(v4, "camera_small_movement_threshold"), camera_small_movement_threshold == v10))
  {
    camera_large_movement_threshold = self->_camera_large_movement_threshold;
    [v4 camera_large_movement_threshold];
    v11 = camera_large_movement_threshold == v14;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  anchor_depth = self->_anchor_depth;
  v5 = anchor_depth < 0.0;
  if (anchor_depth == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v6 = anchor_depth;
    if (v5)
    {
      v6 = -v6;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v9 += v7;
      }
    }

    else
    {
      v9 -= fabs(v7);
    }
  }

  camera_small_movement_threshold = self->_camera_small_movement_threshold;
  v11 = camera_small_movement_threshold < 0.0;
  if (camera_small_movement_threshold == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v12 = camera_small_movement_threshold;
    if (v11)
    {
      v12 = -v12;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v15 = 2654435761u * *v2.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v15 += v13;
      }
    }

    else
    {
      v15 -= fabs(v13);
    }
  }

  camera_large_movement_threshold = self->_camera_large_movement_threshold;
  v17 = camera_large_movement_threshold < 0.0;
  if (camera_large_movement_threshold == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v18 = camera_large_movement_threshold;
    if (v17)
    {
      v18 = -v18;
    }

    *v2.i64 = floor(v18 + 0.5);
    v19 = (v18 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v21 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v3, v2).i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v21 += v19;
      }
    }

    else
    {
      v21 -= fabs(v19);
    }
  }

  if (self->_set_zero_state_as_stable)
  {
    v22 = 2654435761;
  }

  else
  {
    v22 = 0;
  }

  return v9 ^ v22 ^ v15 ^ v21 ^ (2654435761 * self->_frame_count);
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_anchor_depth != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(VISDeviceStateConfig *)self anchor_depth];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"anchorDepth"];
  }

  if (self->_camera_large_movement_threshold != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(VISDeviceStateConfig *)self camera_large_movement_threshold];
    v7 = [v6 numberWithFloat:?];
    [v3 setObject:v7 forKeyedSubscript:@"cameraLargeMovementThreshold"];
  }

  if (self->_camera_small_movement_threshold != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(VISDeviceStateConfig *)self camera_small_movement_threshold];
    v9 = [v8 numberWithFloat:?];
    [v3 setObject:v9 forKeyedSubscript:@"cameraSmallMovementThreshold"];
  }

  if (self->_frame_count)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[VISDeviceStateConfig frame_count](self, "frame_count")}];
    [v3 setObject:v10 forKeyedSubscript:@"frameCount"];
  }

  if (self->_set_zero_state_as_stable)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISDeviceStateConfig set_zero_state_as_stable](self, "set_zero_state_as_stable")}];
    [v3 setObject:v11 forKeyedSubscript:@"setZeroStateAsStable"];
  }

  return v3;
}

- (NSData)jsonData
{
  v2 = [(VISDeviceStateConfig *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (VISDeviceStateConfig)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(VISDeviceStateConfig *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (VISDeviceStateConfig)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VISDeviceStateConfig;
  v5 = [(VISDeviceStateConfig *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"frameCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISDeviceStateConfig setFrame_count:](v5, "setFrame_count:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"anchorDepth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(VISDeviceStateConfig *)v5 setAnchor_depth:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"setZeroStateAsStable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISDeviceStateConfig setSet_zero_state_as_stable:](v5, "setSet_zero_state_as_stable:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"cameraSmallMovementThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(VISDeviceStateConfig *)v5 setCamera_small_movement_threshold:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"cameraLargeMovementThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(VISDeviceStateConfig *)v5 setCamera_large_movement_threshold:?];
    }

    v11 = v5;
  }

  return v5;
}

@end