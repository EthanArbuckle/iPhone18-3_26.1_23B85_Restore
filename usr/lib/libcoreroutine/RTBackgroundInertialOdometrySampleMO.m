@interface RTBackgroundInertialOdometrySampleMO
+ (id)managedObjectWithCLBackgroundInertialOdometrySample:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTBackgroundInertialOdometrySampleMO

+ (id)managedObjectWithCLBackgroundInertialOdometrySample:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
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

  if (v6)
  {
    v8 = [[RTBackgroundInertialOdometrySampleMO alloc] initWithContext:v6];
    v9 = [v5 cfAbsTimestamp];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setCfAbsTimestamp:v9];

    [v5 machContinuousTimestamp_s];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setMachContinuousTimestamp_s:?];
    [v5 sampleInterval_s];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setSampleInterval_s:?];
    v10 = [v5 deltaPosition_m];
    [v10 X];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setDeltaPositionX_m:?];

    v11 = [v5 deltaPosition_m];
    [v11 Y];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setDeltaPositionY_m:?];

    v12 = [v5 deltaPosition_m];
    [v12 Z];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setDeltaPositionZ_m:?];

    v13 = [v5 deltaVelocity_mps];
    [v13 X];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setDeltaVelocityX_mps:?];

    v14 = [v5 deltaVelocity_mps];
    [v14 Y];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setDeltaVelocityY_mps:?];

    v15 = [v5 deltaVelocity_mps];
    [v15 Z];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setDeltaVelocityZ_mps:?];

    v16 = [v5 quaternion];
    [v16 X];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setQuaternionX:?];

    v17 = [v5 quaternion];
    [v17 Y];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setQuaternionY:?];

    v18 = [v5 quaternion];
    [v18 Z];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setQuaternionZ:?];

    v19 = [v5 quaternion];
    [v19 W];
    [(RTBackgroundInertialOdometrySampleMO *)v8 setQuaternionW:?];

    -[RTBackgroundInertialOdometrySampleMO setReferenceFrame:](v8, "setReferenceFrame:", [v5 sessionReferenceFrame]);
    -[RTBackgroundInertialOdometrySampleMO setReferenceFrameContinuity:](v8, "setReferenceFrameContinuity:", [v5 referenceFrameContinuity]);
    -[RTBackgroundInertialOdometrySampleMO setStaticFlag:](v8, "setStaticFlag:", [v5 staticFlag]);
    -[RTBackgroundInertialOdometrySampleMO setDotBiasChange:](v8, "setDotBiasChange:", [v5 dotBiasChange]);
    -[RTBackgroundInertialOdometrySampleMO setZupt:](v8, "setZupt:", [v5 zupt]);
    -[RTBackgroundInertialOdometrySampleMO setMountState:](v8, "setMountState:", [v5 mountState]);
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