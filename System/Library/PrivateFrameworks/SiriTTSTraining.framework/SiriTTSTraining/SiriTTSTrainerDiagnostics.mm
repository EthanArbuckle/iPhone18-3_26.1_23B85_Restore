@interface SiriTTSTrainerDiagnostics
+ (void)collectTailspin:(id)tailspin;
+ (void)collectTailspinToFile:(id)file minTimestamp:(unint64_t)timestamp completion:(id)completion;
@end

@implementation SiriTTSTrainerDiagnostics

+ (void)collectTailspin:(id)tailspin
{
  tailspinCopy = tailspin;
  objc_opt_self();
  if (qword_100029C90 != -1)
  {
    dispatch_once(&qword_100029C90, &stru_100025280);
  }

  v5 = off_100029738;
  v6 = mach_absolute_time();
  v7 = [NSString stringWithFormat:@"%llu.tailspin", v6];
  objc_opt_self();
  if (qword_100029CA0 != -1)
  {
    dispatch_once(&qword_100029CA0, &stru_1000252A0);
  }

  v8 = *&qword_100029C98;
  v9 = [(__CFString *)v5 stringByAppendingPathComponent:v7];
  v10 = +[NSFileManager defaultManager];
  [v10 createFileAtPath:v9 contents:0 attributes:0];

  v11 = [NSFileHandle fileHandleForUpdatingAtPath:v9];
  v12 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dumping tailspin to %@", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D2D4;
  v15[3] = &unk_1000252C8;
  v16 = v9;
  v17 = tailspinCopy;
  v13 = tailspinCopy;
  v14 = v9;
  [self collectTailspinToFile:v11 minTimestamp:v6 + (v8 * -10.0) completion:v15];
}

+ (void)collectTailspinToFile:(id)file minTimestamp:(unint64_t)timestamp completion:(id)completion
{
  completionCopy = completion;
  v8 = dispatch_get_global_queue(9, 0);
  v14[0] = UnsafePointer;
  v14[1] = UnsafePointer;
  v15[0] = &__kCFBooleanTrue;
  fileCopy = file;
  v10 = [NSNumber numberWithUnsignedLongLong:timestamp];
  v15[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  [fileCopy fileDescriptor];
  v13 = completionCopy;
  v12 = completionCopy;
  tailspin_dump_output_with_options();
}

@end