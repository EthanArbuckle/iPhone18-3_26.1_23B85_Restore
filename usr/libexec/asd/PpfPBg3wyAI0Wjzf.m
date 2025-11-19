@interface PpfPBg3wyAI0Wjzf
+ (void)initializeNFHardwareManagerStateWithCompletion:(id)a3;
- (id)createSeidFuture;
- (void)ILEFYKTi2wz6Hf5l:(id)a3;
- (void)traHoYtdjqKLUZYc:(id)a3;
@end

@implementation PpfPBg3wyAI0Wjzf

+ (void)initializeNFHardwareManagerStateWithCompletion:(id)a3
{
  v3 = a3;
  v4 = os_signpost_id_generate(qword_1006DF780);
  v5 = qword_1006DF780;
  v6 = v5;
  v7 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "asd.nfhw.init", "enableTelemetry=YES", buf, 2u);
  }

  v8 = +[NFHardwareManager sharedHardwareManagerWithNoUI];
  v9 = objc_alloc_init(ASNFHardwareMonitor);
  if (!v9)
  {
    v13 = qword_1006DF780;
    v12 = v13;
    if (v7 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
    {
      goto LABEL_14;
    }

    *buf = 0;
    goto LABEL_13;
  }

  [v8 registerEventListener:v9];
  v10 = [v8 getHwSupport];
  if (v10 == 2)
  {
    [v8 unregisterEventListener:v9];
  }

  else
  {
    if (v10 == 4)
    {
      [v8 unregisterEventListener:v9];
      v11 = qword_1006DF780;
      v12 = v11;
      if (v7 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v11))
      {
        goto LABEL_14;
      }

      *buf = 0;
LABEL_13:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v4, "asd.nfhw.init", "", buf, 2u);
LABEL_14:

      v3[2](v3, 0);
      goto LABEL_27;
    }

    [(ASNFHardwareMonitor *)v9 waitForNotification];
    v14 = [v8 getHwSupport];
    [v8 unregisterEventListener:v9];
    if (v14 != 2)
    {
      v16 = 0;
      goto LABEL_22;
    }
  }

  v20 = 0;
  v15 = [NFSecureElement embeddedSecureElementWithError:&v20];
  v16 = v20;
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_1005934D0(v16, v17);
  }

LABEL_22:
  v15 = 0;
LABEL_23:
  v18 = qword_1006DF780;
  v19 = v18;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v4, "asd.nfhw.init", "", buf, 2u);
  }

  (v3)[2](v3, v15);
LABEL_27:
}

- (void)traHoYtdjqKLUZYc:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  if (!v5)
  {
    (*(v4 + 2))(v4, 0, 0, 0);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008654;
  v8[3] = &unk_10068EFD0;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  v7 = v4;
  [(PpfPBg3wyAI0Wjzf *)self ILEFYKTi2wz6Hf5l:v8];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)ILEFYKTi2wz6Hf5l:(id)a3
{
  v3 = a3;
  v4 = os_signpost_id_generate(qword_1006DF780);
  v5 = qword_1006DF780;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "asd.nfhw.seid", "enableTelemetry=YES", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000087AC;
  v8[3] = &unk_10068F040;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  [PpfPBg3wyAI0Wjzf initializeNFHardwareManagerStateWithCompletion:v8];
}

- (id)createSeidFuture
{
  v3 = objc_opt_new();
  objc_initWeak(&location, v3);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008ACC;
  v5[3] = &unk_10068F068;
  objc_copyWeak(&v6, &location);
  [(PpfPBg3wyAI0Wjzf *)self ILEFYKTi2wz6Hf5l:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

@end