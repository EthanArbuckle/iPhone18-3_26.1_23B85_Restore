@interface KII4PpQSDEXNXgDb
- (KII4PpQSDEXNXgDb)initWithSmoothFunctions:(_yo6ptGgiZw8VbWk1 *)functions X5iUjoUzZPsj1b68:(int64_t)psj1b68 queue:(id)queue;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)signpost;
- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)signpost signpostId:(unint64_t)id;
@end

@implementation KII4PpQSDEXNXgDb

- (KII4PpQSDEXNXgDb)initWithSmoothFunctions:(_yo6ptGgiZw8VbWk1 *)functions X5iUjoUzZPsj1b68:(int64_t)psj1b68 queue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = KII4PpQSDEXNXgDb;
  v10 = [(KII4PpQSDEXNXgDb *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_jHoy3L8RogTTbjjB = functions;
    v10->_X5iUjoUzZPsj1b68 = psj1b68;
    objc_storeStrong(&v10->_queue, queue);
  }

  return v11;
}

- (void)compute:(_KUwyEjpVZR65eUyl *)compute UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  vCopy = v;
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  if (self->_X5iUjoUzZPsj1b68 <= compute->var4.var8.var0)
  {
    v29 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:164000];
    completionCopy[2](completionCopy, v29);
  }

  else
  {
    var0 = compute->var4.var8.var0;
    var1 = compute->var4.var9.var1;
    v19 = os_signpost_id_generate(qword_1006DF780);
    v20 = qword_1006DF780;
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "smf", "enableTelemetry=YES", buf, 2u);
    }

    selfCopy = self;
    v35 = vCopy;

    *buf = 0;
    v67 = buf;
    v68 = 0x3032000000;
    v69 = sub_1000276E8;
    v70 = sub_1000276F8;
    v71 = [[NSMutableArray alloc] initWithCapacity:var1];
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x2020000000;
    v65 = 0;
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100027700;
    v57[3] = &unk_100690070;
    v37 = objc_opt_new();
    v58 = v37;
    v60 = v64;
    v61 = v19;
    v32 = v19;
    v62 = *&ue1->profileIDPrefix;
    profileParsedDate = ue1->profileParsedDate;
    v33 = completionCopy;
    v30 = completionCopy;
    v59 = v30;
    v22 = objc_retainBlock(v57);
    v23 = dispatch_group_create();
    if (var1)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        dispatch_group_enter(v23);
        v26 = compute->var4.var1.var0.var2[0].var0;
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_100027884;
        v51[3] = &unk_100690098;
        v54 = v22;
        v52 = v37;
        v55 = buf;
        v56 = v25;
        v53 = v23;
        [Yp00msaYdVlZesvU HeSoUpzppdCV64Ik:&v26[v24] i4KDOQicW9Xd5WBz:bzCopy withCompletion:v51, v30];

        ++v25;
        v24 += 32;
      }

      while (32 * var1 != v24);
    }

    queue = [(KII4PpQSDEXNXgDb *)selfCopy queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100027930;
    block[3] = &unk_1006900C0;
    v44 = v64;
    v40 = hmmaCopy;
    v45 = buf;
    vCopy = v35;
    v41 = v35;
    v42 = selfCopy;
    v46 = var0;
    v47 = *&ue1->profileIDPrefix;
    v28 = ue1->profileParsedDate;
    rsCopy = rs;
    v48 = v28;
    v49 = v32;
    v43 = v31;
    dispatch_group_notify(v23, queue, block);

    _Block_object_dispose(v64, 8);
    _Block_object_dispose(buf, 8);

    completionCopy = v33;
  }
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)hash jAVr67FQ6j4EzsgV:(id)v i4KDOQicW9Xd5WBz:(id)bz TWWnmIjkBlMfHmma:(id)hmma withCompletion:(id)completion
{
  vCopy = v;
  bzCopy = bz;
  hmmaCopy = hmma;
  completionCopy = completion;
  v12 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  var1 = hash->var4.var9.var1;
  var0 = hash->var4.var8.var0;
  v32 = v12;
  [v12 encodeInt64:0xBDE2F5530BB436CLL forKey:@"0x5563"];
  v14 = [[NSMutableArray alloc] initWithCapacity:var1];
  if (var1)
  {
    v15 = var1;
    do
    {
      v16 = objc_opt_new();
      [v14 addObject:v16];

      --v15;
    }

    while (v15);
  }

  v36 = objc_opt_new();
  v17 = dispatch_group_create();
  v18 = bzCopy;
  if (var1)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      dispatch_group_enter(v17);
      v21 = v18;
      v22 = hash->var4.var1.var0.var2[0].var0;
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100027E44;
      v45[3] = &unk_1006900E8;
      v46 = v36;
      v47 = v14;
      v49 = v20;
      v48 = v17;
      v23 = &v22[v19];
      v18 = v21;
      [Yp00msaYdVlZesvU HeSoUpzppdCV64Ik:v23 i4KDOQicW9Xd5WBz:v21 withCompletion:v45];

      ++v20;
      v19 += 32;
    }

    while (32 * var1 != v19);
  }

  queue = [(KII4PpQSDEXNXgDb *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027EB4;
  block[3] = &unk_100690110;
  v38 = v32;
  v39 = v14;
  v43 = completionCopy;
  v44 = var0;
  selfCopy = self;
  v41 = vCopy;
  v42 = hmmaCopy;
  v25 = hmmaCopy;
  v26 = vCopy;
  v27 = completionCopy;
  v28 = v14;
  v29 = v32;
  dispatch_group_notify(v17, queue, block);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "smf", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, id, "smf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end