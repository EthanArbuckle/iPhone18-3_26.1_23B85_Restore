@interface CLBackgroundInertialOdometrySample(RTCoreDataTransformable)
+ (id)createWithBackgroundInertialOdometrySampleMO:()RTCoreDataTransformable;
+ (id)createWithManagedObject:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
@end

@implementation CLBackgroundInertialOdometrySample(RTCoreDataTransformable)

+ (id)createWithManagedObject:()RTCoreDataTransformable
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [objc_opt_class() createWithBackgroundInertialOdometrySampleMO:v5];

      goto LABEL_8;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138413058;
      v11 = v9;
      v12 = 2112;
      v14 = 2080;
      v13 = v4;
      v15 = "+[CLBackgroundInertialOdometrySample(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 36;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by CLBackgroundInertialOdometrySample+CoreDataTransformable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithBackgroundInertialOdometrySampleMO:()RTCoreDataTransformable
{
  v3 = MEMORY[0x277CBFBB0];
  v4 = a3;
  v41 = [v3 alloc];
  cfAbsTimestamp = [v4 cfAbsTimestamp];
  [v4 machContinuousTimestamp_s];
  v6 = v5;
  [v4 sampleInterval_s];
  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBFB90]);
  [v4 deltaPositionX_m];
  v11 = v10;
  [v4 deltaPositionY_m];
  v13 = v12;
  [v4 deltaPositionZ_m];
  v15 = [v9 initWithX:v11 Y:v13 Z:v14];
  v16 = objc_alloc(MEMORY[0x277CBFB98]);
  [v4 deltaVelocityX_mps];
  v18 = v17;
  [v4 deltaVelocityY_mps];
  v20 = v19;
  [v4 deltaVelocityZ_mps];
  v22 = [v16 initWithX:v18 Y:v20 Z:v21];
  v23 = objc_alloc(MEMORY[0x277CBFBA0]);
  [v4 quaternionX];
  v25 = v24;
  [v4 quaternionY];
  v27 = v26;
  [v4 quaternionZ];
  v29 = v28;
  [v4 quaternionW];
  v31 = [v23 initWithX:v25 Y:v27 Z:v29 W:v30];
  referenceFrameContinuity = [v4 referenceFrameContinuity];
  referenceFrame = [v4 referenceFrame];
  staticFlag = [v4 staticFlag];
  mountState = [v4 mountState];
  zupt = [v4 zupt];
  dotBiasChange = [v4 dotBiasChange];

  v38 = [v41 initWithTimestamp:cfAbsTimestamp machContinuousTimestamp:v15 sampleInterval:v22 deltaPosition:v31 deltaVelocity:referenceFrameContinuity quaternion:referenceFrame referenceFrameContinuity:v6 referenceFrame:v8 staticFlag:staticFlag mountState:mountState zupt:zupt dotBiasChange:dotBiasChange calibration:0];

  return v38;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTBackgroundInertialOdometrySampleMO managedObjectWithCLBackgroundInertialOdometrySample:self inManagedObjectContext:a3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

@end