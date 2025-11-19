@interface CSInjectionService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CSInjectionService)init;
- (id)syncgetClassForName:(id)a3;
- (void)beginService;
@end

@implementation CSInjectionService

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v6 = a3;
  v5 = a4 + 1;
  if (v5 < [v6 count])
  {
    [objc_msgSend(v6 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", v6, v5}];
  }
}

+ (id)getSilo
{
  if (qword_100458780 != -1)
  {
    sub_100357B34();
  }

  v3 = qword_100458778;

  return v3;
}

- (CSInjectionService)init
{
  v3.receiver = self;
  v3.super_class = CSInjectionService;
  result = [(CSInjectionService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CSInjectionServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CSInjectionServiceClientProtocol];
  if (result)
  {
    result->_mapMissBehavior = 0;
  }

  return result;
}

- (void)beginService
{
  v3 = objc_opt_new();
  classInjectionMap = self->_classInjectionMap;
  self->_classInjectionMap = v3;

  _objc_release_x1();
}

- (id)syncgetClassForName:(id)a3
{
  v4 = a3;
  v5 = [(CSInjectionService *)self classInjectionMap];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = NSClassFromString(v6);
LABEL_7:
    v9 = v7;
    goto LABEL_8;
  }

  v8 = [(CSInjectionService *)self mapMissBehavior];
  if (!v8)
  {
    v7 = NSClassFromString(v4);
    goto LABEL_7;
  }

  if (v8 != 2)
  {
    v9 = 0;
LABEL_8:

    return v9;
  }

  v11 = sub_1000067CC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289795;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2114;
    v19 = v4;
    v20 = 2082;
    v21 = "assert";
    v22 = 2081;
    v23 = "realClass";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to find classForName, name:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v12 = sub_1000067CC();
  if (os_signpost_enabled(v12))
  {
    *buf = 68289795;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2114;
    v19 = v4;
    v20 = 2082;
    v21 = "assert";
    v22 = 2081;
    v23 = "realClass";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to find classForName", "{msg%{public}.0s:Unable to find classForName, name:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v13 = sub_1000067CC();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 68289795;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2114;
    v19 = v4;
    v20 = 2082;
    v21 = "assert";
    v22 = 2081;
    v23 = "realClass";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unable to find classForName, name:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

@end