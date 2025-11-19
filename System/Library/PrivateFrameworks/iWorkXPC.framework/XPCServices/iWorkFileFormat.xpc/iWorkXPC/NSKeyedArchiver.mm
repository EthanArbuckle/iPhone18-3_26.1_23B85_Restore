@interface NSKeyedArchiver
+ (id)tsu_securelyArchiveRoot:(id)a3;
@end

@implementation NSKeyedArchiver

+ (id)tsu_securelyArchiveRoot:(id)a3
{
  v3 = a3;
  v19 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v19];
  v5 = v19;
  if (!v4)
  {
    v6 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100158F78();
    }

    v7 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      v14 = v7;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v5 domain];
      v18 = [v5 code];
      *buf = 67111170;
      v21 = v6;
      v22 = 2082;
      v23 = "+[NSKeyedArchiver(TSUAdditions) tsu_securelyArchiveRoot:]";
      v24 = 2082;
      v25 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSKeyedArchiver_TSUAdditions.m";
      v26 = 1024;
      v27 = 21;
      v28 = 2112;
      v29 = v3;
      v30 = 2114;
      v31 = v16;
      v32 = 2114;
      v33 = v17;
      v34 = 2048;
      v35 = v18;
      v36 = 2112;
      v37 = v5;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to encode object %@: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x54u);
    }

    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSKeyedArchiver(TSUAdditions) tsu_securelyArchiveRoot:]");
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSKeyedArchiver_TSUAdditions.m"];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v5 domain];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, v9, 21, 0, "Unable to encode object %@: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v3, v11, v12, [v5 code], v5);

    +[TSUAssertionHandler logFullBacktrace];
  }

  return v4;
}

@end