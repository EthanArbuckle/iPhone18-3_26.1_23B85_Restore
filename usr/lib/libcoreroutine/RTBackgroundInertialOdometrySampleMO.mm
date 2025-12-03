@interface RTBackgroundInertialOdometrySampleMO
+ (id)managedObjectWithCLBackgroundInertialOdometrySample:(id)sample inManagedObjectContext:(id)context;
@end

@implementation RTBackgroundInertialOdometrySampleMO

+ (id)managedObjectWithCLBackgroundInertialOdometrySample:(id)sample inManagedObjectContext:(id)context
{
  sampleCopy = sample;
  contextCopy = context;
  v7 = contextCopy;
  if (!sampleCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v25 = 0;
    v21 = "Invalid parameter not satisfying: ioSample";
    v22 = &v25;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, v22, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    v8 = [[RTBackgroundInertialOdometrySampleMO alloc] initWithContext:contextCopy];
    cfAbsTimestamp = [sampleCopy cfAbsTimestamp];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setCfAbsTimestamp:cfAbsTimestamp];

    [sampleCopy machContinuousTimestamp_s];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setMachContinuousTimestamp_s:?];
    [sampleCopy sampleInterval_s];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setSampleInterval_s:?];
    deltaPosition_m = [sampleCopy deltaPosition_m];
    [deltaPosition_m X];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setDeltaPositionX_m:?];

    deltaPosition_m2 = [sampleCopy deltaPosition_m];
    [deltaPosition_m2 Y];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setDeltaPositionY_m:?];

    deltaPosition_m3 = [sampleCopy deltaPosition_m];
    [deltaPosition_m3 Z];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setDeltaPositionZ_m:?];

    deltaVelocity_mps = [sampleCopy deltaVelocity_mps];
    [deltaVelocity_mps X];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setDeltaVelocityX_mps:?];

    deltaVelocity_mps2 = [sampleCopy deltaVelocity_mps];
    [deltaVelocity_mps2 Y];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setDeltaVelocityY_mps:?];

    deltaVelocity_mps3 = [sampleCopy deltaVelocity_mps];
    [deltaVelocity_mps3 Z];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setDeltaVelocityZ_mps:?];

    quaternion = [sampleCopy quaternion];
    [quaternion X];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setQuaternionX:?];

    quaternion2 = [sampleCopy quaternion];
    [quaternion2 Y];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setQuaternionY:?];

    quaternion3 = [sampleCopy quaternion];
    [quaternion3 Z];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setQuaternionZ:?];

    quaternion4 = [sampleCopy quaternion];
    [quaternion4 W];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setQuaternionW:?];

    -[RTBackgroundInertialOdometrySampleMO setReferenceFrame:](v8, "setReferenceFrame:", [sampleCopy sessionReferenceFrame]);
    -[RTBackgroundInertialOdometrySampleMO setReferenceFrameContinuity:](v8, "setReferenceFrameContinuity:", [sampleCopy referenceFrameContinuity]);
    -[RTBackgroundInertialOdometrySampleMO setStaticFlag:](v8, "setStaticFlag:", [sampleCopy staticFlag]);
    -[RTBackgroundInertialOdometrySampleMO setDotBiasChange:](v8, "setDotBiasChange:", [sampleCopy dotBiasChange]);
    -[RTBackgroundInertialOdometrySampleMO setZupt:](v8, "setZupt:", [sampleCopy zupt]);
    -[RTBackgroundInertialOdometrySampleMO setMountState:](v8, "setMountState:", [sampleCopy mountState]);
    goto LABEL_8;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v24 = 0;
    v21 = "Invalid parameter not satisfying: managedObjectContext";
    v22 = &v24;
    goto LABEL_12;
  }

LABEL_7:

  v8 = 0;
LABEL_8:

  return v8;
}

@end