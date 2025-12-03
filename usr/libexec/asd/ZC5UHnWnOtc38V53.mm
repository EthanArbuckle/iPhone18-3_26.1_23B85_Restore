@interface ZC5UHnWnOtc38V53
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
@end

@implementation ZC5UHnWnOtc38V53

- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  completionCopy = completion;
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = os_signpost_id_generate(qword_1006DF780);
  v14 = qword_1006DF780;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "ba", "enableTelemetry=YES", buf, 2u);
  }

  v16 = +[LARatchetManager sharedInstance];
  isFeatureEnabled = [v16 isFeatureEnabled];

  v18 = +[LARatchetManager sharedInstance];
  ratchetState = [v18 ratchetState];
  rawValue = [ratchetState rawValue];

  v21 = [NSNumber numberWithBool:isFeatureEnabled];
  [v12 setObject:v21 forKeyedSubscript:@"dto"];

  v22 = [NSNumber numberWithInteger:rawValue];
  [v12 setObject:v22 forKeyedSubscript:@"rs"];

  if (compute->var1 == 2)
  {
    ue1Copy = ue1;
    v23 = objc_alloc_init(_TtC3asd20ASBiometricKitHelper);
    v41 = 0;
    v24 = [(ASBiometricKitHelper *)v23 timeSinceLastSuccessfulBiometricAuthenticationAndReturnError:&v41];
    v25 = v41;
    v40 = 0;
    v26 = [(ASBiometricKitHelper *)v23 tenureOfActiveBiometricTemplateAndReturnError:&v40];
    v27 = v40;
    if (v25)
    {
      code = [v25 code];
      [v12 setObject:&off_1006BA7D8 forKeyedSubscript:@"st"];
      if (v27)
      {
LABEL_7:
        code = [v27 code];
        v29 = &off_1006BA7D8;
        v30 = v12;
LABEL_11:
        [v30 setObject:v29 forKeyedSubscript:{@"tt", ue1Copy}];

        ue1 = v39;
        goto LABEL_12;
      }
    }

    else
    {
      [v12 setObject:v24 forKeyedSubscript:@"st"];
      code = 0;
      if (v27)
      {
        goto LABEL_7;
      }
    }

    v30 = v12;
    v29 = v26;
    goto LABEL_11;
  }

  code = 0;
LABEL_12:
  v31 = qword_1006DF780;
  v32 = v31;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    profileIDPrefix = ue1->profileIDPrefix;
    dataframeIndex = ue1->dataframeIndex;
    *buf = 67240448;
    v44 = profileIDPrefix;
    v45 = 1026;
    v46 = dataframeIndex;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v13, "ba", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
  }

  v35 = [kjAS9HuCdR1m5txL alloc];
  v42 = v12;
  v36 = [NSArray arrayWithObjects:&v42 count:1];
  v37 = [(kjAS9HuCdR1m5txL *)v35 initWithGyF0atX3JpCKc9pK:v36 qfSDGTGvqd3Hruzg:code];
  completionCopy[2](completionCopy, v37);
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  completionCopy = completion;
  v8 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v8 encodeInt64:0x97EE7E1D1A32667CLL forKey:@"0x5563"];
  completionCopy[2](completionCopy, [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:v8]);
}

- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost
{
  v4 = os_signpost_id_generate(qword_1006DF788);
  v5 = qword_1006DF788;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    profileIDPrefix = signpost->profileIDPrefix;
    dataframeIndex = signpost->dataframeIndex;
    v10[0] = 67240448;
    v10[1] = profileIDPrefix;
    v11 = 1026;
    v12 = dataframeIndex;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ba", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }

  return v4;
}

- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id
{
  v6 = qword_1006DF788;
  v7 = v6;
  if (id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    profileIDPrefix = signpost->profileIDPrefix;
    dataframeIndex = signpost->dataframeIndex;
    v10[0] = 67240448;
    v10[1] = profileIDPrefix;
    v11 = 1026;
    v12 = dataframeIndex;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, id, "ba", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end