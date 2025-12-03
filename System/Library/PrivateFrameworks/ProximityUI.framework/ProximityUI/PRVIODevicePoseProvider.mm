@interface PRVIODevicePoseProvider
- (PRVIODevicePoseProvider)initWithARSession:(id)session;
- (void)reset;
- (void)session:(id)session didUpdateFrame:(id)frame;
@end

@implementation PRVIODevicePoseProvider

- (PRVIODevicePoseProvider)initWithARSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = PRVIODevicePoseProvider;
  v5 = [(PRVIODevicePoseProvider *)&v9 init];
  if (v5)
  {
    v6 = [[PRDevicePoseValidator alloc] initWithMaximumSpeed:4.0];
    [(PRVIODevicePoseProvider *)v5 setPoseValidator:v6];

    [(PRVIODevicePoseProvider *)v5 setTrackingNormal:0];
    [(PRVIODevicePoseProvider *)v5 setSession:sessionCopy];
    session = [(PRVIODevicePoseProvider *)v5 session];
    [session setDelegate:v5];
  }

  return v5;
}

- (void)reset
{
  [(PRVIODevicePoseProvider *)self setTrackingNormal:0];
  session = [(PRVIODevicePoseProvider *)self session];
  session2 = [(PRVIODevicePoseProvider *)self session];
  configuration = [session2 configuration];
  [session runWithConfiguration:configuration options:15];
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  frameCopy = frame;
  camera = [frameCopy camera];
  trackingState = [camera trackingState];

  if (trackingState == 2)
  {
    [(PRVIODevicePoseProvider *)self setTrackingNormal:1];
    camera2 = [frameCopy camera];
    [camera2 transform];
    v21 = v9;
    v22 = v8;
    v19 = v11;
    v20 = v10;

    [frameCopy timestamp];
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
    poseValidator = [(PRVIODevicePoseProvider *)self poseValidator];
    v15 = [poseValidator validatePose:v13];

    delegate = [(PRDevicePoseProvider *)self delegate];
    v17 = delegate;
    if (v15)
    {
      [delegate devicePoseUpdated:v13];
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
      delegate2 = [(PRDevicePoseProvider *)self delegate];
      [delegate2 invalidPoseDetected];

      [(PRVIODevicePoseProvider *)self setTrackingNormal:0];
    }
  }
}

@end