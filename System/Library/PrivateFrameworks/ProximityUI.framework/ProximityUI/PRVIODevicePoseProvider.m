@interface PRVIODevicePoseProvider
- (PRVIODevicePoseProvider)initWithARSession:(id)a3;
- (void)reset;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
@end

@implementation PRVIODevicePoseProvider

- (PRVIODevicePoseProvider)initWithARSession:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRVIODevicePoseProvider;
  v5 = [(PRVIODevicePoseProvider *)&v9 init];
  if (v5)
  {
    v6 = [[PRDevicePoseValidator alloc] initWithMaximumSpeed:4.0];
    [(PRVIODevicePoseProvider *)v5 setPoseValidator:v6];

    [(PRVIODevicePoseProvider *)v5 setTrackingNormal:0];
    [(PRVIODevicePoseProvider *)v5 setSession:v4];
    v7 = [(PRVIODevicePoseProvider *)v5 session];
    [v7 setDelegate:v5];
  }

  return v5;
}

- (void)reset
{
  [(PRVIODevicePoseProvider *)self setTrackingNormal:0];
  v5 = [(PRVIODevicePoseProvider *)self session];
  v3 = [(PRVIODevicePoseProvider *)self session];
  v4 = [v3 configuration];
  [v5 runWithConfiguration:v4 options:15];
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v23 = a4;
  v5 = [v23 camera];
  v6 = [v5 trackingState];

  if (v6 == 2)
  {
    [(PRVIODevicePoseProvider *)self setTrackingNormal:1];
    v7 = [v23 camera];
    [v7 transform];
    v21 = v9;
    v22 = v8;
    v19 = v11;
    v20 = v10;

    [v23 timestamp];
    v12 = 0;
    v24[0] = xmmword_2614160D0;
    v24[1] = xmmword_2614160E0;
    v24[2] = xmmword_2614160F0;
    v24[3] = xmmword_261416000;
    do
    {
      v24[v12 + 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(v24[v12])), v21, *&v24[v12], 1), v20, v24[v12], 2), v19, v24[v12], 3);
      ++v12;
    }

    while (v12 != 4);
    v13 = [PRPose poseWithTime:"poseWithTime:pose:" pose:?];
    v14 = [(PRVIODevicePoseProvider *)self poseValidator];
    v15 = [v14 validatePose:v13];

    v16 = [(PRDevicePoseProvider *)self delegate];
    v17 = v16;
    if (v15)
    {
      [v16 devicePoseUpdated:v13];
    }

    else
    {
      [(PRVIODevicePoseProvider *)self reset];
      [v17 invalidPoseDetected];
    }
  }

  else
  {
    NSLog(&cfstr_CameraTracking.isa);
    if ([(PRVIODevicePoseProvider *)self trackingNormal])
    {
      v18 = [(PRDevicePoseProvider *)self delegate];
      [v18 invalidPoseDetected];

      [(PRVIODevicePoseProvider *)self setTrackingNormal:0];
    }
  }
}

@end