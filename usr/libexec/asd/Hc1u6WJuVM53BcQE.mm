@interface Hc1u6WJuVM53BcQE
- (Hc1u6WJuVM53BcQE)initWithdEyUJuqYjUufZYGN:(id)n;
- (id)cLH5z0XbtucU9RrW:(_KUwyEjpVZR65eUyl *)w UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
@end

@implementation Hc1u6WJuVM53BcQE

- (Hc1u6WJuVM53BcQE)initWithdEyUJuqYjUufZYGN:(id)n
{
  nCopy = n;
  v9.receiver = self;
  v9.super_class = Hc1u6WJuVM53BcQE;
  v6 = [(Hc1u6WJuVM53BcQE *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_Po0NnEfbQHpSgzj7, n);
  }

  return v7;
}

- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  vCopy = v;
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  var1 = compute->var1;
  if (var1 == 2)
  {
    v25 = *&ue1->profileIDPrefix;
    profileParsedDate = ue1->profileParsedDate;
    v20 = [(Hc1u6WJuVM53BcQE *)self cLH5z0XbtucU9RrW:compute UtPlzRffoEpw7Ue1:&v25];
    completionCopy[2](completionCopy, v20);
  }

  else
  {
    if (var1 == 1)
    {
      v19 = [kjAS9HuCdR1m5txL alloc];
      v32[0] = self->_Po0NnEfbQHpSgzj7;
      v30 = @"v";
      v20 = [NSNumber numberWithUnsignedInt:compute->var1];
      v31 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v32[1] = v21;
      v22 = v32;
    }

    else
    {
      v19 = [kjAS9HuCdR1m5txL alloc];
      v29[0] = self->_Po0NnEfbQHpSgzj7;
      v27 = @"v";
      v20 = [NSNumber numberWithUnsignedInt:compute->var1];
      v28 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v29[1] = v21;
      v22 = v29;
    }

    v23 = [NSArray arrayWithObjects:v22 count:2];
    v24 = [(kjAS9HuCdR1m5txL *)v19 initWithGyF0atX3JpCKc9pK:v23 qfSDGTGvqd3Hruzg:0];
    completionCopy[2](completionCopy, v24);
  }
}

- (id)cLH5z0XbtucU9RrW:(_KUwyEjpVZR65eUyl *)w UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1
{
  var0 = w->var4.var0.var0;
  v22 = var0;
  v6 = os_signpost_id_generate(qword_1006DF780);
  v7 = qword_1006DF780;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "kl_2", "enableTelemetry=YES", buf, 2u);
  }

  v21 = 0;

  sub_100013CA0(&v22, &v21);
  v9 = objc_alloc_init(NSMutableDictionary);
  if (var0)
  {
    v10 = [NSNumber numberWithUnsignedChar:v21];
    [v9 setValue:v10 forKey:@"k_m"];
  }

  if ((var0 & 2) != 0)
  {
    v11 = [NSNumber numberWithUnsignedChar:HIBYTE(v21)];
    [v9 setValue:v11 forKey:@"a_e"];
  }

  v12 = qword_1006DF780;
  v13 = v12;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    profileIDPrefix = ue1->profileIDPrefix;
    dataframeIndex = ue1->dataframeIndex;
    *buf = 67240448;
    v25 = profileIDPrefix;
    v26 = 1026;
    v27 = dataframeIndex;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v6, "kl_2", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
  }

  v16 = [kjAS9HuCdR1m5txL alloc];
  v17 = [NSDictionary dictionaryWithDictionary:v9];
  v23 = v17;
  v18 = [NSArray arrayWithObjects:&v23 count:1];
  v19 = [(kjAS9HuCdR1m5txL *)v16 initWithGyF0atX3JpCKc9pK:v18 qfSDGTGvqd3Hruzg:0];

  return v19;
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  completionCopy = completion;
  v8 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v8 encodeInt64:0x3D0D0285C2C47B97 forKey:@"0x5563"];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "kl_2", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, id, "kl_2", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end