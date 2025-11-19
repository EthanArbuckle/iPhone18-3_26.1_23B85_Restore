@interface NIEyYkb5fUSqW222
- (BOOL)hasActiveCalls;
- (NIEyYkb5fUSqW222)init;
- (unint64_t)beginSignpost:(_eipjLVDiD7LNwlPc *)a3;
- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9;
- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7;
- (void)computeSCSSignalsWithCompletion:(id)a3;
- (void)computeTUSignalsWithCompletion:(id)a3;
- (void)endSignpost:(_eipjLVDiD7LNwlPc *)a3 signpostId:(unint64_t)a4;
@end

@implementation NIEyYkb5fUSqW222

- (NIEyYkb5fUSqW222)init
{
  v10.receiver = self;
  v10.super_class = NIEyYkb5fUSqW222;
  v2 = [(NIEyYkb5fUSqW222 *)&v10 init];
  v3 = dispatch_queue_create("com.apple.asd.ssdfe.scs", 0);
  queue = v2->_queue;
  v2->_queue = v3;

  v5 = objc_alloc_init(_TtC3asd32ASScreenContinuityServicesHelper);
  scsHelper = v2->_scsHelper;
  v2->_scsHelper = v5;

  v7 = [[TUCallCenter alloc] initWithQueue:v2->_queue];
  tuCallCenter = v2->_tuCallCenter;
  v2->_tuCallCenter = v7;

  return v2;
}

- (void)compute:(_KUwyEjpVZR65eUyl *)a3 UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)a4 SFkZRA5Ek9YzhDRs:(unsigned int)a5 jAVr67FQ6j4EzsgV:(id)a6 i4KDOQicW9Xd5WBz:(id)a7 TWWnmIjkBlMfHmma:(id)a8 withCompletion:(id)a9
{
  v30 = a6;
  v29 = a7;
  v13 = a8;
  v14 = a9;
  v15 = objc_opt_new();
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = sub_100024B70;
  v54[4] = sub_100024B80;
  v55 = objc_opt_new();
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = sub_100024B70;
  v52[4] = sub_100024B80;
  v53 = objc_opt_new();
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v51[3] = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = 0;
  v16 = dispatch_group_create();
  dispatch_time(0, 1000000 * a3->var3);
  v17 = os_signpost_id_generate(qword_1006DF780);
  v18 = qword_1006DF780;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "ss", "enableTelemetry=YES", buf, 2u);
  }

  var1 = a3->var1;
  if (var1 == 1)
  {
    LOBYTE(v22) = 1;
    goto LABEL_9;
  }

  if (var1 == 2)
  {
    var0 = a3->var4.var0.var0;
    if ((var0 & 1) == 0)
    {
      if ((var0 & 2) == 0)
      {
        v27 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:&__NSArray0__struct qfSDGTGvqd3Hruzg:0, v29, v30];
        v14[2](v14, v27);
        goto LABEL_19;
      }

      v23 = 0;
      goto LABEL_17;
    }

    v22 = (var0 >> 1) & 1;
LABEL_9:
    dispatch_group_enter(v16);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100024B88;
    v45[3] = &unk_10068FEE0;
    v47 = v51;
    v46 = v16;
    v48 = v54;
    [(NIEyYkb5fUSqW222 *)self computeSCSSignalsWithCompletion:v45, v29, v30];

    v23 = 1;
    if ((v22 & 1) == 0)
    {
      v24 = 0;
LABEL_18:
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100024C40;
      block[3] = &unk_10068FF08;
      v39 = v23;
      v32 = v15;
      v34 = v54;
      v40 = v24;
      v35 = v51;
      v36 = v52;
      v37 = v50;
      v38 = v17;
      v33 = v14;
      dispatch_group_notify(v16, queue, block);

      v27 = v32;
      goto LABEL_19;
    }

LABEL_17:
    dispatch_group_enter(v16);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100024BE4;
    v41[3] = &unk_10068FEE0;
    v43 = v50;
    v42 = v16;
    v44 = v52;
    [(NIEyYkb5fUSqW222 *)self computeTUSignalsWithCompletion:v41];

    v24 = 1;
    goto LABEL_18;
  }

  v25 = qword_1006DF780;
  v26 = v25;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v17, "ss", "", buf, 2u);
  }

  v27 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:176008, v29, v30];
  v14[2](v14, v27);
LABEL_19:

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v52, 8);

  _Block_object_dispose(v54, 8);
}

- (void)computeSCSSignalsWithCompletion:(id)a3
{
  v4 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100024B70;
  v17[4] = sub_100024B80;
  v18 = objc_opt_new();
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v5 = os_signpost_id_generate(qword_1006DF780);
  v6 = qword_1006DF780;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ss_1", "enableTelemetry=YES", buf, 2u);
  }

  scsHelper = self->_scsHelper;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100024FCC;
  v10[3] = &unk_10068FF30;
  v13 = v17;
  v14 = v5;
  v12 = v16;
  v9 = v4;
  v11 = v9;
  [(ASScreenContinuityServicesHelper *)scsHelper loadScreenMirroringStatusWithCompletionHandler:v10];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
}

- (void)computeTUSignalsWithCompletion:(id)a3
{
  v4 = a3;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_100024B70;
  v12[4] = sub_100024B80;
  v13 = objc_opt_new();
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000252D8;
  v7[3] = &unk_10068FFA8;
  v7[4] = self;
  v8 = v4;
  v9 = v11;
  v10 = v12;
  v6 = v4;
  dispatch_async(queue, v7);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v12, 8);
}

- (BOOL)hasActiveCalls
{
  v2 = os_signpost_id_generate(qword_1006DF780);
  v3 = qword_1006DF780;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ss_2", "enableTelemetry=YES", buf, 2u);
  }

  v5 = +[AVSystemController sharedAVSystemController];
  v6 = [v5 attributeForKey:AVSystemController_CallIsActive];

  v7 = qword_1006DF780;
  v8 = v7;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v2, "ss_2", "", v11, 2u);
  }

  v9 = [v6 BOOLValue];
  return v9;
}

- (void)computeHash:(_KUwyEjpVZR65eUyl *)a3 jAVr67FQ6j4EzsgV:(id)a4 i4KDOQicW9Xd5WBz:(id)a5 TWWnmIjkBlMfHmma:(id)a6 withCompletion:(id)a7
{
  v8 = a7;
  v9 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v9 encodeInt64:0xE5FAC2E77EC39DECLL forKey:@"0x5563"];
  if (a3->var1 == 2)
  {
    [v9 encodeInt64:a3->var4.var0.var0 forKey:@"0x57e6"];
  }

  v8[2](v8, [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:v9]);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ss", "enableTelemetry=YES,p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a4, "ss", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v10, 0xEu);
  }
}

@end