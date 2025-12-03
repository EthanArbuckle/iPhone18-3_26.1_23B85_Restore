@interface RTSCTuningParametersV1
- (RTSCTuningParametersV1)init;
- (RTSCTuningParametersV1)initWithDictionary:(id)dictionary;
@end

@implementation RTSCTuningParametersV1

- (RTSCTuningParametersV1)init
{
  v8.receiver = self;
  v8.super_class = RTSCTuningParametersV1;
  v2 = [(RTSCTuningParametersV1 *)&v8 init];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"RTSCTuningParametersV1" ofType:@"plist"];
  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];
  if (v4)
  {
    v2 = [(RTSCTuningParametersV1 *)v2 initWithDictionary:v5];
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RTSCTuningParametersV1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = RTSCTuningParametersV1;
  v5 = [(RTSCTuningParametersV1 *)&v14 init];
  plist = v5->_plist;
  v5->_plist = dictionaryCopy;
  v7 = dictionaryCopy;

  v13 = 0;
  [(NSDictionary *)v5->_plist cmi_floatValueForKey:@"naturalOutputFOV" defaultValue:&v13 found:0.0];
  v5->_naturalOutputFOV = v8;
  [(NSDictionary *)v5->_plist cmi_floatValueForKey:@"faceReframingOutputFOV" defaultValue:&v13 found:0.0];
  v5->_faceReframingOutputFOV = v9;
  [(NSDictionary *)v5->_plist cmi_floatValueForKey:@"stabilizationReservedFOV" defaultValue:&v13 found:0.0];
  v11 = v10;

  v5->_stabilizationReservedFOV = v11;
  return v5;
}

@end