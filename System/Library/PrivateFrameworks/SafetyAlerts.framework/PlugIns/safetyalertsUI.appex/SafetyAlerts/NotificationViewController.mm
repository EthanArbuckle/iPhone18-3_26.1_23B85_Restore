@interface NotificationViewController
- (UIImageView)mapImageView;
- (UILabel)attribution;
- (UIStackView)mainStackView;
- (UIView)mapViewHolder;
- (void)didReceiveNotification:(id)notification;
- (void)renderLegendBgWithContext:(CGContext *)context color:(CGColor *)color topLeftX:(double)x topLeftY:(double)y width:(double)width height:(double)height;
- (void)submitMetricsInfoToDaemonForUid:(const char *)uid tapTimestampSeconds:(double)seconds snapshotTimestampSeconds:(double)timestampSeconds;
- (void)viewDidLoad;
@end

@implementation NotificationViewController

- (void)renderLegendBgWithContext:(CGContext *)context color:(CGColor *)color topLeftX:(double)x topLeftY:(double)y width:(double)width height:(double)height
{
  v10 = height + 2.0;
  v14.origin.x = x - (height + 2.0) * 0.5;
  v14.origin.y = y - (height + 2.0) * 0.5;
  v14.size.width = (height + 2.0 + width);
  v14.size.height = (height + 2.0 + height);
  v11 = CGPathCreateWithRoundedRect(v14, v10, v10, 0);
  v12 = [UIColor colorWithCGColor:color];
  [v12 setFill];

  CGContextAddPath(context, v11);

  CGContextFillPath(context);
}

- (void)submitMetricsInfoToDaemonForUid:(const char *)uid tapTimestampSeconds:(double)seconds snapshotTimestampSeconds:(double)timestampSeconds
{
  if (uid)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    if (v8)
    {
      SADeviceTime::getCurrentTime(&v19);
      v9 = [NSString stringWithUTF8String:uid];
      [v8 setObject:v9 forKey:@"UID"];

      v10 = [NSNumber numberWithDouble:seconds];
      [v8 setObject:v10 forKey:@"userTappedSeconds"];

      v11 = [NSNumber numberWithDouble:timestampSeconds];
      [v8 setObject:v11 forKey:@"snapshotSeconds"];

      v12 = +[SafetyAlerts sharedInterface];
      [v12 onUserTappedOnUiWithInfo:v8];

      v13 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 68289795;
        v20 = 2082;
        v21 = "";
        v22 = 2081;
        uidCopy = uid;
        v24 = 2049;
        secondsCopy = seconds;
        v26 = 2049;
        timestampSecondsCopy = timestampSeconds;
        v14 = "{msg%{public}.0s:#saNotificationExtension,sentMetricsToDaemon, uid:%{private, location:escape_only}s, tapTimestampSeconds:%{private}.1f, snapshotTimestampSeconds:%{private}.1f}";
        v15 = v13;
        v16 = 48;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v19, v16);
      }
    }

    else
    {
      v18 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 68289026;
        v20 = 2082;
        v21 = "";
        v14 = "{msg%{public}.0s:#saNotificationExtension,cantCreateDictionary}";
        v15 = v18;
        v16 = 18;
        goto LABEL_9;
      }
    }

    return;
  }

  v17 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 68289026;
    v20 = 2082;
    v21 = "";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saNotificationExtension,invalidUid}", &v19, 0x12u);
  }
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = NotificationViewController;
  [(NotificationViewController *)&v2 viewDidLoad];
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2117;
    *&buf[20] = notificationCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saNotificationExtension,didReceiveNotification, notification:%{sensitive, location:escape_only}@}", buf, 0x1Cu);
  }

  SADeviceTime::getCurrentTime(buf);
  v5 = *buf;
  request = [notificationCopy request];
  content = [request content];
  v78 = v5;
  attachments = [content attachments];

  request2 = [notificationCopy request];
  content2 = [request2 content];
  userInfo = [content2 userInfo];

  v11 = userInfo;
  v12 = [v11 objectForKey:@"userLat"];
  v13 = -1000.0;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      v13 = v14;
    }
  }

  v15 = [v11 objectForKey:@"userLon"];
  v16 = -1000.0;
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 doubleValue];
      v16 = v17;
    }
  }

  v18 = [v11 objectForKey:@"epiLat"];
  v19 = -1000.0;
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 doubleValue];
      v19 = v20;
    }
  }

  v21 = [v11 objectForKey:@"epiLon"];
  v22 = -1000.0;
  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 doubleValue];
      v22 = v23;
    }
  }

  v24 = [v11 objectForKey:@"regionSpan"];
  v25 = -1000.0;
  if (v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v24 doubleValue];
      v25 = v26;
    }
  }

  v27 = [v11 objectForKey:@"eqRadius"];
  v28 = -1000.0;
  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v27 doubleValue];
      v28 = v29;
    }
  }

  v30 = [v11 objectForKey:@"displayEpicenter"];
  if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v30 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v31 = [v11 objectForKey:@"lineShadeStrongShakingArea"];
  if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue2 = [v31 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  v32 = [v11 objectForKey:@"uid"];
  if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v33 = v32;
    uTF8String = [v32 UTF8String];
  }

  else
  {
    uTF8String = 0;
  }

  v35 = strlen(uTF8String);
  if (v35 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003654();
  }

  v36 = v35;
  if (v35 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v107) = v35;
  if (v35)
  {
    memmove(&__dst, uTF8String, v35);
  }

  *(&__dst + v36) = 0;
  v37 = fabs(v19);
  if (v37 <= 90.0)
  {
    v38 = fabs(v22);
    if (v38 <= 180.0 && (fabs(v37 + -0.0000001) > 0.0000001 || fabs(v38 + -0.0000001) > 0.0000001))
    {
      v39 = 0;
      v40 = fabs(v13);
      if (v40 <= 90.0)
      {
        v41 = fabs(v16);
        if (v41 <= 180.0)
        {
          v42 = fabs(v40 + -0.0000001) > 0.0000001;
          v39 = fabs(v41 + -0.0000001) > 0.0000001 || v42;
        }
      }

      v43 = CLLocationCoordinate2DMake(v13, v16);
      v44 = CLLocationCoordinate2DMake(v19, v22);
      GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
      v74 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
      v73 = CGColorCreateGenericRGB(0.0117647059, 0.447058824, 0.97254902, 1.0);
      v72 = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 1.0);
      v45 = +[UIColor systemRedColor];
      v104 = 0.0;
      v105 = 1.0;
      v102 = 1.0;
      v103 = 0.0;
      v71 = v45;
      if (v45)
      {
        [v45 getRed:&v105 green:&v104 blue:&v103 alpha:&v102];
      }

      else
      {
        v46 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,#warning,getSystemRedFailed}", buf, 0x12u);
        }
      }

      traitCollection = [(NotificationViewController *)self traitCollection];
      v48 = [traitCollection userInterfaceStyle] == 2;

      if (v48)
      {
        v49 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
        v50 = CGColorCreateGenericRGB(1.0, 1.0, 0.0, 0.25);
        v70 = CGColorCreateGenericRGB(0.97254902, 0.415686275, 0.415686275, 0.55);
        centerCoordinate_8 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
        v51 = CGColorCreateGenericRGB(0.196078431, 0.196078431, 0.196078431, 1.0);
      }

      else
      {
        v49 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
        v50 = CGColorCreateGenericRGB(1.0, 1.0, 0.0, 0.2);
        v70 = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 0.2);
        centerCoordinate_8 = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
        v51 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
      }

      v52 = CGColorCreateGenericRGB(v105, v104, v103, v102);
      v53 = CGColorCreateGenericRGB(0.588235294, 0.588235294, 0.588235294, 1.0);
      if (v39)
      {
        latitude = centerCoordinate;
        longitude = v43.longitude;
      }

      else
      {
        latitude = v44.latitude;
        longitude = v44.longitude;
      }

      v113 = MKCoordinateRegionMakeWithDistance(*&latitude, v25 * 0.0, v25);
      v56 = v113.center.latitude;
      v57 = v113.center.longitude;
      latitudeDelta = v113.span.latitudeDelta;
      longitudeDelta = v113.span.longitudeDelta;
      v60 = objc_alloc_init(MKMapSnapshotOptions);
      [v60 _setUseSnapshotService:1];
      [v60 setRegion:{v56, v57, latitudeDelta, longitudeDelta}];
      [v60 setSize:{200.0, 150.0}];
      [v60 setMapType:0];
      [v60 setTraitCollection:v49];
      [v60 _setNetworkUsageMode:1];
      v112 = 0;
      v111 = 0u;
      memset(buf, 0, sizeof(buf));
      v61 = objc_alloc_init(MKStandardMapConfiguration);
      [MKMapConfiguration _cartographicConfigurationForMapConfiguration:v61];

      *&buf[24] = 0;
      v62 = [_MKCartographicMapConfiguration alloc];
      *v108 = *buf;
      *&v108[16] = *&buf[16];
      *&v108[32] = v111;
      v109 = v112;
      v63 = [v62 initWithCartographicConfiguration:v108];
      [v60 setPreferredConfiguration:v63];

      v64 = [[MKMapSnapshotter alloc] initWithOptions:v60];
      v65 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v108 = 68289539;
        *&v108[4] = 0;
        *&v108[8] = 2082;
        *&v108[10] = "";
        *&v108[18] = 2113;
        *&v108[20] = v60;
        *&v108[28] = 2113;
        *&v108[30] = v64;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,objects, options:%{private, location:escape_only}@, snapshot:%{private, location:escape_only}@}", v108, 0x26u);
      }

      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3321888768;
      v81[2] = sub_1000025D8;
      v81[3] = &unk_100008310;
      v82 = v44;
      v83 = v28;
      v99 = v28 != 0.0;
      v84 = v50;
      v85 = v70;
      v86 = v52;
      v100 = bOOLValue2;
      v87 = v13;
      v88 = v16;
      v89 = v74;
      v90 = GenericRGB;
      v101 = bOOLValue;
      v91 = v73;
      v92 = v72;
      v81[4] = self;
      v93 = centerCoordinate_8;
      v94 = v51;
      v95 = v53;
      if (SHIBYTE(v107) < 0)
      {
        sub_100003780(&__p, __dst, *(&__dst + 1));
      }

      else
      {
        __p = __dst;
        v97 = v107;
      }

      v98 = v78;
      [v64 startWithCompletionHandler:v81];
      v66 = [v11 objectForKey:@"attribution"];
      attribution = [(NotificationViewController *)self attribution];
      [attribution setText:v66];

      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p);
      }
    }
  }

  if (SHIBYTE(v107) < 0)
  {
    operator delete(__dst);
  }
}

- (UIStackView)mainStackView
{
  WeakRetained = objc_loadWeakRetained(&self->_mainStackView);

  return WeakRetained;
}

- (UIView)mapViewHolder
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewHolder);

  return WeakRetained;
}

- (UIImageView)mapImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapImageView);

  return WeakRetained;
}

- (UILabel)attribution
{
  WeakRetained = objc_loadWeakRetained(&self->_attribution);

  return WeakRetained;
}

@end