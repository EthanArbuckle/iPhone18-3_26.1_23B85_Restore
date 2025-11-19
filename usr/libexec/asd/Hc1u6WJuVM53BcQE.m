@interface Hc1u6WJuVM53BcQE
- (Hc1u6WJuVM53BcQE)initWithdEyUJuqYjUufZYGN:(id)a3;
- (id)cLH5z0XbtucU9RrW:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
@end

@implementation Hc1u6WJuVM53BcQE

- (Hc1u6WJuVM53BcQE)initWithdEyUJuqYjUufZYGN:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = Hc1u6WJuVM53BcQE;
  v6 = [(Hc1u6WJuVM53BcQE *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_Po0NnEfbQHpSgzj7, a3);
  }

  return v7;
}

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  var1 = a3->var1;
  if (var1 == 2)
  {
    v25 = *&a4->profileIDPrefix;
    profileParsedDate = a4->profileParsedDate;
    v20 = [(Hc1u6WJuVM53BcQE *)self cLH5z0XbtucU9RrW:a3 UtPlzRffoEpw7Ue1:&v25];
    v17[2](v17, v20);
  }

  else
  {
    if (var1 == 1)
    {
      v19 = [kjAS9HuCdR1m5txL alloc];
      v32[0] = self->_Po0NnEfbQHpSgzj7;
      v30 = @"v";
      v20 = [NSNumber numberWithUnsignedInt:a3->var1];
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
      v20 = [NSNumber numberWithUnsignedInt:a3->var1];
      v28 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v29[1] = v21;
      v22 = v29;
    }

    v23 = [NSArray arrayWithObjects:v22 count:2];
    v24 = [(kjAS9HuCdR1m5txL *)v19 initWithGyF0atX3JpCKc9pK:v23 qfSDGTGvqd3Hruzg:0];
    v17[2](v17, v24);
  }
}

- (id)cLH5z0XbtucU9RrW:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4
{
  var0 = a3->var4.var0.var0;
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
    profileIDPrefix = a4->profileIDPrefix;
    dataframeIndex = a4->dataframeIndex;
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

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v7 = a7;
  v8 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v8 encodeInt64:0x3D0D0285C2C47B97 forKey:@"0x5563"];
  v7[2](v7, [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:v8]);
}

- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3
{
  v4 = os_signpost_id_generate(qword_1006DF788);
  v5 = qword_1006DF788;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    profileIDPrefix = a3->profileIDPrefix;
    dataframeIndex = a3->dataframeIndex;
    v10[0] = 67240448;
    v10[1] = profileIDPrefix;
    v11 = 1026;
    v12 = dataframeIndex;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "kl_2", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }

  return v4;
}

- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4
{
  v6 = qword_1006DF788;
  v7 = v6;
  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    profileIDPrefix = a3->profileIDPrefix;
    dataframeIndex = a3->dataframeIndex;
    v10[0] = 67240448;
    v10[1] = profileIDPrefix;
    v11 = 1026;
    v12 = dataframeIndex;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "kl_2", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end