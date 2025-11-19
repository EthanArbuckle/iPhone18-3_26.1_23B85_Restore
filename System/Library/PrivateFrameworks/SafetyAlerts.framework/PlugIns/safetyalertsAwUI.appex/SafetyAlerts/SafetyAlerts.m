void SADeviceTime::getCurrentTime(uint64_t a1@<X8>)
{
  *a1 = CFAbsoluteTimeGetCurrent();
  *(a1 + 8) = 0xBFF0000000000000;
  *(a1 + 16) = -1;
}

void SACircleRenderer::drawCircle(SACircleRenderer *this, CGFloat a2, CGFloat a3, CGFloat a4, CGColor *a5, CGColor *a6, int a7)
{
  v13 = [UIColor colorWithCGColor:a5];
  [v13 setFill];

  v14 = [*this CGContext];
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a4;
  CGContextFillEllipseInRect(v14, v42);
  v15 = [UIColor colorWithCGColor:a6];
  [v15 setStroke];

  CGContextSetLineWidth([*this CGContext], *(this + 3));
  v16 = [*this CGContext];
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a4;
  CGContextStrokeEllipseInRect(v16, v43);
  if (a7)
  {
    points = 0;
    v40 = 0;
    v41 = 0;
    v17 = +[UIColor systemRedColor];
    CGContextSetStrokeColorWithColor([*this CGContext], objc_msgSend(v17, "CGColor"));
    CGContextSetLineWidth([*this CGContext], *(this + 2));
    v18 = 0.5;
    v19 = a4 * 0.5;
    v20 = 0;
    if (a4 * 0.5 > 0.0)
    {
      v21 = v19 + a2;
      v22 = v19 + a3;
      v23 = 0.0;
      v35 = v19;
      v34 = 0xBFE6A09E667F3BCCLL;
      do
      {
        v24 = sqrt(v19 * v19 - v23 * v23);
        v25 = v21;
        v26 = v21 + v23 - v21;
        v27 = v22 + v24 - v22;
        v36 = v27 * -0.707106781;
        v37 = v23;
        v28 = v27 * 0.707106781;
        *&v38 = v21 + v27 * -0.707106781 + v26 * 0.707106781;
        *(&v38 + 1) = v22 + v27 * 0.707106781 + v26 * 0.707106781;
        sub_1000012DC(&points, &v38);
        v29 = v22 - v24 - v22;
        v30 = v29 * -0.707106781;
        v31 = v29 * 0.707106781;
        *&v38 = v25 + v29 * -0.707106781 + v26 * 0.707106781;
        *(&v38 + 1) = v22 + v29 * 0.707106781 + v26 * 0.707106781;
        sub_1000012DC(&points, &v38);
        v32 = v25 - v37 - v25;
        *&v38 = v25 + v36 + v32 * 0.707106781;
        *(&v38 + 1) = v22 + v28 + v32 * 0.707106781;
        sub_1000012DC(&points, &v38);
        *&v38 = v25 + v30 + v32 * 0.707106781;
        *(&v38 + 1) = v22 + v31 + v32 * 0.707106781;
        sub_1000012DC(&points, &v38);
        v21 = v25;
        v18 = *(this + 1);
        v23 = v37 + v18;
        v20 += 4;
        v19 = v35;
      }

      while (v37 + v18 < v35);
    }

    v33 = [*this CGContext];
    CGContextStrokeLineSegments(v33, points, v20);

    if (points)
    {
      v40 = points;
      operator delete(points);
    }
  }
}

void sub_1000012DC(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1000013B4();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_10000145C(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1000013CC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100001428(exception, a1);
}

std::logic_error *sub_100001428(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_10000145C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000014A4();
}

void sub_1000014A4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100002410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000025D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289539;
    v37 = 2082;
    v38 = "";
    v39 = 2113;
    v40 = v5;
    v41 = 2113;
    v42 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,snapshotCallback, snapshot:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", &buf, 0x26u);
  }

  v8 = [[UIGraphicsImageRenderer alloc] initWithSize:{200.0, 150.0}];
  v16 = _NSConcreteStackBlock;
  v17 = 3321888768;
  v18 = sub_100002888;
  v19 = &unk_1000082D8;
  v9 = v5;
  v22 = *(a1 + 40);
  v23 = *(a1 + 56);
  v34 = *(a1 + 192);
  v24 = *(a1 + 64);
  v25 = *(a1 + 80);
  v10 = *(a1 + 104);
  v26 = *(a1 + 88);
  v27 = v10;
  v35 = *(a1 + 194);
  v11 = *(a1 + 120);
  v12 = *(a1 + 32);
  v20 = v9;
  v21 = v12;
  v13 = *(a1 + 136);
  v28 = v11;
  v29 = v13;
  v30 = *(a1 + 152);
  if (*(a1 + 183) < 0)
  {
    sub_100003780(__p, *(a1 + 160), *(a1 + 168));
  }

  else
  {
    *__p = *(a1 + 160);
    v32 = *(a1 + 176);
  }

  v33 = *(a1 + 184);
  v14 = [v8 imageWithActions:&v16];
  v15 = [*(a1 + 32) mapImageView];
  [v15 setImage:v14];

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100002888(uint64_t a1, void *a2)
{
  v3 = a2;
  v55[0] = v3;
  v55[1] = 3;
  __asm { FMOV            V0.2D, #1.0 }

  v56 = _Q0;
  v9 = [*(a1 + 32) image];
  [v9 drawAtPoint:{CGPointZero.x, CGPointZero.y}];

  v71 = MKCoordinateRegionMakeWithDistance(*(a1 + 48), *(a1 + 64), *(a1 + 64));
  latitude = v71.center.latitude;
  longitude = v71.center.longitude;
  latitudeDelta = v71.span.latitudeDelta;
  longitudeDelta = v71.span.longitudeDelta;
  v14 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 64);
    *buf = 68290307;
    *&buf[4] = 0;
    *v60 = 2082;
    *&v60[2] = "";
    v61 = 2049;
    v62 = latitude;
    v63 = 2049;
    v64 = longitude;
    v65 = 2049;
    v66 = v15;
    v67 = 2049;
    v68 = latitudeDelta;
    v69 = 2049;
    v70 = longitudeDelta;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,snapshotCallback,geometry,quadrant, epiLat:%{private}0.2f, epiLon:%{private}0.2f, eqRadius:%{private}0.1f, spanLat:%{private}0.1f, spanLon:%{private}0.1f}", buf, 0x44u);
  }

  [*(a1 + 32) pointForCoordinate:{latitudeDelta + *(a1 + 48), *(a1 + 56) - longitudeDelta}];
  v17 = v16;
  v19 = v18;
  [*(a1 + 32) pointForCoordinate:{*(a1 + 48), *(a1 + 56)}];
  v21 = v20;
  v23 = v22;
  v24 = [UIColor colorWithCGColor:*(a1 + 72)];
  [v24 setFill];

  if (*(a1 + 200) == 1)
  {
    SACircleRenderer::drawCircle(v55, v17, v19, v21 - v17 + v21 - v17, *(a1 + 80), *(a1 + 88), *(a1 + 201));
  }

  v25 = CLLocationCoordinate2DMake(*(a1 + 96), *(a1 + 104));
  [*(a1 + 32) pointForCoordinate:?];
  v27 = v26;
  v29 = v28;
  v30 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290051;
    *&buf[4] = 0;
    *v60 = 2082;
    *&v60[2] = "";
    v61 = 2053;
    v62 = v25.latitude;
    v63 = 2053;
    v64 = v25.longitude;
    v65 = 2053;
    v66 = v27;
    v67 = 2053;
    v68 = v29;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,snapshotCallback,geometry,currentLocation, lat:%{sensitive}0.2f, lon:%{sensitive}0.2f, x:%{sensitive}0.1f, y:%{sensitive}0.1f}", buf, 0x3Au);
  }

  SACircleRenderer::drawCircle(v55, v27 + -5.0, v29 + -5.0, 10.0, *(a1 + 112), *(a1 + 120), 0);
  SACircleRenderer::drawCircle(v55, v27 + -3.0, v29 + -3.0, 6.0, *(a1 + 128), *(a1 + 120), 0);
  v31 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 48);
    v33 = *(a1 + 56);
    *buf = 68290051;
    *v60 = 2082;
    *&buf[4] = 0;
    *&v60[2] = "";
    v61 = 2049;
    v62 = v32;
    v63 = 2049;
    v64 = v33;
    v65 = 2049;
    v66 = v21;
    v67 = 2053;
    v68 = v23;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,snapshotCallback,geometry,center, epiLat:%{private}0.2f, epiLon:%{private}0.2f, x:%{private}0.1f, y:%{sensitive}0.1f}", buf, 0x3Au);
  }

  if (*(a1 + 202) == 1)
  {
    SACircleRenderer::drawCircle(v55, v21 + -3.0, v23 + -3.0, 6.0, *(a1 + 136), *(a1 + 120), 0);
  }

  +[UIFont systemFontSize];
  v35 = fmin(v34, 6.0);
  v54 = v35;
  v36 = [NSString stringWithUTF8String:"/System/Library/UserNotifications/Bundles/com.apple.safetyalerts.bundle"];
  v37 = [NSBundle bundleWithPath:v36];
  v53 = [v37 localizedStringForKey:@"SAFETY_ALERTS_EARTHQUAKE_EPICENTER" value:&stru_100008710 table:@"earthquake_alerts"];

  v38 = [NSString stringWithUTF8String:"/System/Library/UserNotifications/Bundles/com.apple.safetyalerts.bundle"];
  v39 = [NSBundle bundleWithPath:v38];
  v52 = [v39 localizedStringForKey:@"SAFETY_ALERTS_EARTHQUAKE_AREA_STRONG_SHAKING" value:&stru_100008710 table:@"earthquake_alerts"];

  memset(v51, 0, sizeof(v51));
  NSLog(@"#notif,snapshotCallback,getLegendFont");
  v57[0] = NSFontAttributeName;
  v40 = [UIFont systemFontOfSize:v35];
  v58[0] = v40;
  v57[1] = NSForegroundColorAttributeName;
  v41 = [UIColor colorWithCGColor:*(a1 + 144)];
  v58[1] = v41;
  v50 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];

  v42 = *(a1 + 200);
  if (v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = *(a1 + 202);
  }

  [v53 sizeWithAttributes:v50];
  v44 = (v35 + 2.0) * 0.5;
  v45 = v44 + 2.0;
  v46 = v44 + 2.0;
  if (v43)
  {
    *buf = v44 + 2.0;
    *v60 = v44 + 2.0;
    v66 = 0.0;
    operator new();
  }

  [v52 sizeWithAttributes:v50];
  if (v42)
  {
    *buf = v46;
    *v60 = v45;
    v66 = 0.0;
    operator new();
  }

  if ((*(a1 + 200) & 1) != 0 || *(a1 + 202) == 1)
  {
    [*(a1 + 40) renderLegendBgWithContext:objc_msgSend(v3 color:"CGContext") topLeftX:*(a1 + 152) topLeftY:v45 width:v45 height:{v46 - v45, v35}];
  }

  CFRelease(*(a1 + 144));
  CFRelease(*(a1 + 128));
  CFRelease(*(a1 + 112));
  CFRelease(*(a1 + 136));
  CFRelease(*(a1 + 72));
  CFRelease(*(a1 + 80));
  CFRelease(*(a1 + 152));
  CFRelease(*(a1 + 88));
  CFRelease(*(a1 + 160));
  if (*(a1 + 191) < 0)
  {
    if (*(a1 + 176))
    {
      v47 = *(a1 + 168);
    }

    else
    {
      v47 = 0;
    }
  }

  else if (*(a1 + 191))
  {
    v47 = a1 + 168;
  }

  else
  {
    v47 = 0;
  }

  v48 = *(a1 + 40);
  v49 = *(a1 + 192);
  SADeviceTime::getCurrentTime(buf);
  [v48 submitMetricsInfoToDaemonForUid:v47 tapTimestampSeconds:v49 snapshotTimestampSeconds:*buf];

  sub_1000033E0(v51);
}

void sub_1000030C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, id a14, id a15, uint64_t a16, id a17)
{
  sub_100003700(v18);

  sub_1000033E0(&a11);
  _Unwind_Resume(a1);
}

void sub_1000031E4(uint64_t *a1, _OWORD *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (v6 + 1 > 0x555555555555555)
    {
      sub_1000013B4();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1000014A4();
    }

    v10 = (16 * ((v4 - *a1) >> 4));
    *v10 = *a2;
    sub_100003680(48 * v6 + 16, (a2 + 1));
    v11 = *a1;
    v12 = a1[1];
    v13 = 48 * v6 - (v12 - *a1);
    if (v12 != *a1)
    {
      v14 = 48 * v6 - 16 * ((v12 - *a1) >> 4) + 16;
      v15 = *a1;
      do
      {
        *(v14 - 16) = *v15;
        v16 = sub_100003680(v14, (v15 + 1));
        v15 += 3;
        v14 = v16 + 48;
      }

      while (v15 != v12);
      do
      {
        sub_100003700((v11 + 1));
        v11 += 3;
      }

      while (v11 != v12);
      v11 = *a1;
    }

    v5 = v10 + 3;
    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v4 = *a2;
    sub_100003680((v4 + 1), (a2 + 1));
    v5 = v4 + 3;
  }

  a1[1] = v5;
}

uint64_t sub_100003388(uint64_t a1, double a2, double a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100003CF8();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void **sub_1000033E0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 48;
        sub_100003700((v3 - 32));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

char *sub_100003448(char *result, uint64_t a2)
{
  if (*(a2 + 191) < 0)
  {
    return sub_100003780(result + 168, *(a2 + 168), *(a2 + 176));
  }

  v2 = *(a2 + 168);
  *(result + 23) = *(a2 + 184);
  *(result + 168) = v2;
  return result;
}

void sub_100003474(uint64_t a1)
{
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }
}

_BYTE *sub_100003488(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 183) < 0)
  {
    return sub_100003780(result + 160, *(a2 + 160), *(a2 + 168));
  }

  v2 = *(a2 + 160);
  *(result + 22) = *(a2 + 176);
  *(result + 10) = v2;
  return result;
}

void sub_1000034B4(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }
}

uint64_t sub_100003680(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_100003700(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100003780(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100003654();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

__n128 sub_1000038A0(uint64_t a1, uint64_t a2)
{
  *a2 = off_100008350;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100003900(uint64_t a1, uint64_t a2)
{
  if (sub_10000394C(a2, &off_1000083C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10000394C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

__n128 sub_100003A14(uint64_t a1, uint64_t a2)
{
  *a2 = off_1000083E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100003A5C(uint64_t a1, uint64_t a2)
{
  if (sub_10000394C(a2, &off_100008440))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100003B2C(uint64_t a1, uint64_t a2)
{
  *a2 = off_100008460;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_100003B6C(uint64_t a1, double *a2, double *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *(v5 + 1) = 2;
  *(v5 + 2) = 0x3FE0000000000000;
  SACircleRenderer::drawCircle(v5, v3, v4, *v6, **(a1 + 24), **(a1 + 32), **(a1 + 40));
}

uint64_t sub_100003BA4(uint64_t a1, uint64_t a2)
{
  if (sub_10000394C(a2, &off_1000084C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100003C64(uint64_t a1, uint64_t a2)
{
  *a2 = off_1000084E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100003CAC(uint64_t a1, uint64_t a2)
{
  if (sub_10000394C(a2, &off_100008540))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100003CF8()
{
  exception = __cxa_allocate_exception(8uLL);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}