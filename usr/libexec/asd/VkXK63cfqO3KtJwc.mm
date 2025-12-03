@interface VkXK63cfqO3KtJwc
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
@end

@implementation VkXK63cfqO3KtJwc

- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  vCopy = v;
  hmmaCopy = hmma;
  completionCopy = completion;
  var1 = compute->var1;
  v17 = +[PJXBDBF1h0EU80dy sharedInstance];
  if (var1 == 1)
  {
    var0 = compute->var4.var0.var0;
    v19 = rs & 2;
LABEL_8:
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100017884;
    v45[3] = &unk_10068F7D8;
    v34 = vCopy;
    v23 = vCopy;
    v46 = v23;
    v50 = var0;
    v51 = *&ue1->profileIDPrefix;
    profileParsedDate = ue1->profileParsedDate;
    rsCopy = rs;
    v24 = hmmaCopy;
    v55 = var1;
    v47 = v24;
    computeCopy = compute;
    v25 = v17;
    v48 = v25;
    v32 = completionCopy;
    v33 = v17;
    v26 = completionCopy;
    v49 = v26;
    v27 = hmmaCopy;
    v28 = objc_retainBlock(v45);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100017B48;
    v36[3] = &unk_10068F828;
    v43 = v19;
    v29 = v25;
    v44 = var1;
    v21 = v27;
    v41 = *&ue1->profileIDPrefix;
    v42 = ue1->profileParsedDate;
    v37 = v29;
    selfCopy = self;
    v39 = v26;
    v40 = v28;
    v30 = v28;
    v31 = v23;
    vCopy = v34;
    [(kjAS9HuCdR1m5txL *)v31 jCbmcix0xxhNVOSS:var0 TWWnmIjkBlMfHmma:v24 withCompletion:v36];

    completionCopy = v32;
    v17 = v33;

    v22 = v46;
    goto LABEL_9;
  }

  var0 = compute->var4.var0.var0;
  v20 = sub_100035854((rs >> 4) & 1, compute->var4.var5.var3, 0);
  if (((v20 == 0) & (rs >> 1)) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = v20;
  }

  if (v19 != 3)
  {
    goto LABEL_8;
  }

  v21 = hmmaCopy;
  v22 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:&__NSArray0__struct qfSDGTGvqd3Hruzg:163003];
  (*(completionCopy + 2))(completionCopy, v22);
LABEL_9:
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  vCopy = v;
  hmmaCopy = hmma;
  completionCopy = completion;
  v13 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  var1 = hash->var1;
  [v13 encodeInt32:var1 forKey:@"0x6595"];
  if (var1 == 2)
  {
    var0 = hash->var4.var0.var0;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000181B8;
    v22 = &unk_10068F850;
    v16 = &v23;
    v23 = v13;
    v24[1] = hash;
    v17 = v24;
    v24[0] = completionCopy;
    v18 = &v19;
    goto LABEL_5;
  }

  if (var1 == 1)
  {
    var0 = hash->var4.var0.var0;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100018118;
    v25[3] = &unk_10068F850;
    v16 = &v26;
    v26 = v13;
    v27[1] = hash;
    v17 = v27;
    v27[0] = completionCopy;
    v18 = v25;
LABEL_5:
    [vCopy jCbmcix0xxhNVOSS:var0 TWWnmIjkBlMfHmma:hmmaCopy withCompletion:{v18, v19, v20, v21, v22}];
  }
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "cdf", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }

  return v4;
}

- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id
{
  v7 = qword_1006DF788;
  v8 = v7;
  if (id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    profileIDPrefix = signpost->profileIDPrefix;
    dataframeIndex = signpost->dataframeIndex;
    isCacheHit = self->isCacheHit;
    v12[0] = 67240704;
    v12[1] = profileIDPrefix;
    v13 = 1026;
    v14 = dataframeIndex;
    v15 = 1026;
    v16 = isCacheHit;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, id, "cdf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d,h=%{public,signpost.telemetry:number2}d", v12, 0x14u);
  }
}

@end