@interface PRDevicePoseValidator
- (BOOL)validatePose:(id)a3;
- (PRDevicePoseValidator)initWithMaximumSpeed:(double)a3;
@end

@implementation PRDevicePoseValidator

- (PRDevicePoseValidator)initWithMaximumSpeed:(double)a3
{
  v9.receiver = self;
  v9.super_class = PRDevicePoseValidator;
  v4 = [(PRDevicePoseValidator *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(PRDevicePoseValidator *)v4 setMaximumSpeed:a3];
    v6 = os_log_create("com.apple.proximity", "posevalidator");
    logger = v5->_logger;
    v5->_logger = v6;
  }

  return v5;
}

- (BOOL)validatePose:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PRDevicePoseValidator *)self previousPose];

  if (!v5)
  {
    [(PRDevicePoseValidator *)self setPreviousPose:v4];
    goto LABEL_9;
  }

  [v4 timestamp];
  v7 = v6;
  v8 = [(PRDevicePoseValidator *)self previousPose];
  [v8 timestamp];
  v10 = v7 - v9;

  if (v10 > 0.0)
  {
    if (v10 >= 1.0)
    {
      [v4 pose];
      v25 = v11;
      v12 = [(PRDevicePoseValidator *)self previousPose];
      [v12 pose];
      v24 = v13;

      v14 = vsubq_f32(v25, v24);
      v15 = vmulq_f32(v14, v14);
      v16 = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32)) / v10;
      [(PRDevicePoseValidator *)self setPreviousPose:v4];
      [(PRDevicePoseValidator *)self maximumSpeed];
      if (v16 > v17)
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          v19 = logger;
          [(PRDevicePoseValidator *)self maximumSpeed];
          *buf = 134218240;
          v27 = v16;
          v28 = 2048;
          v29 = v20;
          _os_log_impl(&dword_2613DF000, v19, OS_LOG_TYPE_DEFAULT, "PoseValidator found invalid pose. speed = %f m/s, threshold = %f m/s", buf, 0x16u);
        }

        goto LABEL_7;
      }
    }

LABEL_9:
    v21 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v21 = 0;
LABEL_10:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

@end