void sub_13A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _appTransitionOccurred()
{
  if (operator|| == 1)
  {
    v1 = ZOTSharedWorkspace;
    v2 = [ZOTSharedWorkspace threadKey];
    [v1 performSelector:"_handleApplicationActivated" withThreadKey:v2 count:0 objects:0];
  }
}

void sub_210C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id LocString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.ZoomTouch.axbundle"];
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"ZoomStrings"];

  return v3;
}

uint64_t ZOTInitializeUtilities()
{
  result = AXDeviceIsPad();
  ZOTIsWildcat = result;
  return result;
}

uint64_t ZOTTimeSinceBoot()
{
  v0 = +[NSDate date];
  [v0 timeIntervalSince1970];
  v2 = v1 - ZOTSystemBootTime();

  return v2;
}

uint64_t ZOTSystemBootTime()
{
  result = ZOTSystemBootTime___boottime;
  if (!ZOTSystemBootTime___boottime)
  {
    v4 = 0;
    v2[1] = 0;
    *v3 = 0x1500000001;
    v1 = 16;
    v2[0] = 0;
    if (sysctl(v3, 2u, v2, &v1, 0, 0) == -1)
    {
      result = 0;
    }

    else
    {
      result = v2[0];
    }

    ZOTSystemBootTime___boottime = result;
  }

  return result;
}

double ZOTMainScreenScaleFactor()
{
  result = *&ZOTUnitTestScaleFactor;
  if (*&ZOTUnitTestScaleFactor <= 0.0)
  {
    AXDeviceGetMainScreenBounds();
    v7.origin.x = v1;
    v7.origin.y = v2;
    v7.size.width = v3;
    v7.size.height = v4;
    v6.origin.x = CGRectZero.origin.x;
    v6.origin.y = CGRectZero.origin.y;
    v6.size.width = CGRectZero.size.width;
    v6.size.height = CGRectZero.size.height;
    v5 = CGRectEqualToRect(v6, v7);
    result = 1.0;
    if (!v5)
    {
      if (ZOTMainScreenScaleFactor_onceToken != -1)
      {
        ZOTMainScreenScaleFactor_cold_1();
      }

      return *&ZOTMainScreenScaleFactor_kZOTMainScreenScaleFactor;
    }
  }

  return result;
}

id ZOTEventMeetsOrbThreshold(void *a1)
{
  v1 = a1;
  v2 = [v1 handInfo];
  v3 = [v2 paths];
  v4 = [v3 firstPath];
  [v4 orbValue];
  v6 = v5;
  AXForceTouchThresholdPeek();
  if (v7 < v6 && ZOTEventRealFingerCount(v1) == 1 && AXForceTouchAvailableAndEnabled())
  {
    v8 = +[AXSettings sharedInstance];
    v9 = [v8 zoomPeekZoomEnabled];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t ZOTEventRealFingerCount(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 handInfo];
  v2 = [v1 paths];

  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) pathIdentity])
        {
          ++v5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void ZOTDispatchEventThreadWithDelay(void *a1, void *a2, float a3)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __ZOTDispatchEventThreadWithDelay_block_invoke;
  v9[3] = &unk_84C0;
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v5 = v11;
  v6 = v10;
  v7 = objc_retainBlock(v9);
  v8 = [v7 copy];
  [v6 performSelector:"zotRunBlock:" onThread:v6 withObject:v8 waitUntilDone:0];
}

void __ZOTDispatchEventThreadWithDelay_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [v2 performSelector:"zotRunBlock:" withObject:v3 afterDelay:*(a1 + 48)];
}

void ZOTDispatchEventThread(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 copy];
  [v3 performSelector:"zotRunBlock:" onThread:v3 withObject:v4 waitUntilDone:0];
}

double ZOTConvertVectorToScreenStandard(uint64_t a1, double a2)
{
  v2 = 180.0;
  v3 = a2 * 3.14159265 / 180.0;
  result = v3 / 0.0174532925;
  switch(a1)
  {
    case 4:
      v2 = 270.0;
      goto LABEL_7;
    case 3:
      v2 = 90.0;
      goto LABEL_7;
    case 2:
LABEL_7:
      result = result + v2;
      break;
  }

  v5 = 360.0;
  if (result <= 360.0)
  {
    if (result >= 0.0)
    {
      return result;
    }
  }

  else
  {
    v5 = -360.0;
  }

  return result + v5;
}

double ZOTAlignDistanceAlongAngle(double result, double a2, double a3)
{
  if (a3 >= 45.0)
  {
    v3 = 90.0;
    if (a3 < 90.0)
    {
LABEL_3:
      v4 = (v3 - a3) / 45.0;
      return result * v4;
    }

    v5 = 135.0;
    if (a3 < 135.0)
    {
      goto LABEL_5;
    }

    if (a3 >= 180.0 && a3 >= 225.0)
    {
      v3 = 270.0;
      if (a3 < 270.0)
      {
        goto LABEL_3;
      }

      v5 = 315.0;
      if (a3 < 315.0)
      {
LABEL_5:
        v4 = (v5 - a3) / -45.0 + 1.0;
        return result * v4;
      }
    }
  }

  return result;
}

double ZOTCalculateDistanceForAngle(double a1)
{
  ZOTMainScreenSize();
  v3 = v2 / ZOTMainScreenScaleFactor();
  if (a1 >= 90.0)
  {
    if (a1 >= 180.0)
    {
      if (a1 >= 270.0)
      {
        v4 = -v3;
      }

      else
      {
        v4 = v3;
      }

      v3 = -v3;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = -v3;
  }

  return ZOTAlignDistanceAlongAngle(v4, v3, a1);
}

double ZOTNormalizeVelocity(double a1)
{
  v1 = 2300.0;
  if (a1 <= 2300.0)
  {
    v1 = a1;
    if (a1 < 125.0)
    {
      v1 = 125.0;
    }
  }

  return v1 / 2175.0;
}

void ZOTDistanceForTimeAndVelocityWithMaxDistance(double a1, double a2, double a3, double a4, double a5)
{
  v7 = a2 * a2 * ((1.1 - a2) * 0.85) * (a2 * 0.5 * ((a1 + 0.400000006) * 9.0 * exp((a1 + 0.400000006) * -3.0)) * 0.5) * ((AXZoomMaximumZoomLevel - a5) / AXZoomMaximumZoomLevel + 0.75);
  if (ZOTIsWildcat)
  {
    v7 = v7 / 1.2;
  }

  if (((fabs(a3 * v7) < 0.00800000038) & (fabs(a4 * v7) < 0.00800000038)) != 0)
  {
    y = CGPointZero.y;
  }
}

float ZOTGutterDistance()
{
  v0 = _UnitTestGutterDistance;
  if (*&_UnitTestGutterDistance <= 0.0)
  {
    if (ZOTGutterDistance_onceToken != -1)
    {
      ZOTGutterDistance_cold_1();
    }

    v0 = ZOTGutterDistance__GutterDistance;
  }

  return *&v0;
}

double ZOTNotGutterFrame()
{
  if (ZOTNotGutterFrame_onceToken != -1)
  {
    ZOTNotGutterFrame_cold_1();
  }

  return *&ZOTNotGutterFrame_nonGutterFrame_0;
}

uint64_t ZOTShouldStartAutopan(double *a1, BOOL *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v24 = a5 != 0.0 && a8 > 1.0;
  if (!v24 || (v25 = 0.0, *a2))
  {
    SCRCMathGetDistanceBetweenPoints();
    if (ZOTIsWildcat != 1)
    {
      result = 0;
      *a2 = 0;
      return result;
    }

    v25 = v26;
    v27 = CGPointZero.x != a6;
    if (CGPointZero.y != a7)
    {
      v27 = 1;
    }

    if (v26 <= 0.0700000003)
    {
      v27 = 0;
    }

    *a2 = v27;
    if (!v27)
    {
      return 0;
    }
  }

  v28 = _AXSVoiceOverTouchEnabled();
  v29 = ZOTGutterDistance();
  if (v28)
  {
    v29 = v29 / 3.0;
  }

  v30 = v29 / ZOTMainScreenScaleFactor();
  if (a3 >= a11 + v30)
  {
    if (a3 <= a11 + a13 - v30)
    {
      v36 = 0;
      v35 = 0.0;
      goto LABEL_26;
    }

    v31 = a11 + a13 - a3;
  }

  else
  {
    v31 = a3 - a11;
  }

  v33 = ZOTGutterDistance();
  if (ZOTIsWildcat == 1)
  {
    v34 = pow(v31 / v33, -1.2) * 1.5 / 10.0;
  }

  else
  {
    v34 = (v33 - v31) / v33;
  }

  v35 = (v34 + 0.0) * ZOTMainScreenScaleFactor() + 0.0;
  v36 = 1;
LABEL_26:
  if (a4 >= a12 + v30)
  {
    if (a4 <= a12 + a14 - v30)
    {
      goto LABEL_34;
    }

    v37 = a12 + a14 - a4;
  }

  else
  {
    v37 = a4 - a12;
  }

  v38 = ZOTGutterDistance();
  if (ZOTIsWildcat == 1)
  {
    v39 = pow(v37 / v38, -1.2) * 1.5 / 10.0;
  }

  else
  {
    v39 = (v38 - v37) / v38;
  }

  v35 = v35 + (v39 + 0.0) * ZOTMainScreenScaleFactor();
  ++v36;
LABEL_34:
  if (*a2)
  {
    v40 = v25 + -0.0700000003;
    if (v25 > 0.899999976)
    {
      v40 = 0.819999976;
    }

    v41 = pow(v40, 3.0) * 1000.0;
    v35 = v41 * ZOTMainScreenScaleFactor();
    ++v36;
  }

  else if (!v36)
  {
    result = 0;
    v42 = 0.0;
    goto LABEL_40;
  }

  v42 = v35 / v36;
  result = 1;
LABEL_40:
  *a1 = v42;
  return result;
}

uint64_t ZOTScreenRegionForPoint(int a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = 0.0;
  if (a1)
  {
    v14 = ZOTGutterDistance();
    v15 = v14 / ZOTMainScreenScaleFactor();
    v13 = v15;
  }

  if (a2 >= a4 + a6 - v13)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  if (a2 > a4 + v13)
  {
    result = v16;
  }

  else
  {
    result = 1;
  }

  if (a3 <= a5 + v13)
  {
    return result | 4;
  }

  if (a3 >= a5 + a7 - v13)
  {
    return result | 8;
  }

  return result;
}

uint64_t ZOTScreenRegionForRelativePushPan(uint64_t a1)
{
  SCRCMathGetVectorAndDistanceForPoints();
  v2 = 0.0;
  switch(a1)
  {
    case 4:
      v3 = 90.0;
      goto LABEL_8;
    case 3:
      v3 = -90.0;
      goto LABEL_8;
    case 2:
      v2 = 0.0 + -180.0;
      if (0.0 + -180.0 < 0.0)
      {
        v3 = 360.0;
LABEL_8:
        v2 = v2 + v3;
      }

      break;
  }

  v4 = 360.0;
  if (v2 < 0.0)
  {
LABEL_12:
    v2 = v2 + v4;
    goto LABEL_13;
  }

  if (v2 > 360.0)
  {
    v4 = -360.0;
    goto LABEL_12;
  }

LABEL_13:
  if (v2 >= 0.0 && v2 <= 90.0)
  {
    if (v2 < 35.0)
    {
      result = 4;
LABEL_29:
      v6 = 1;
      goto LABEL_30;
    }

    v7 = v2 <= 55.0;
    v8 = 6;
    v9 = 2;
LABEL_26:
    if (v7)
    {
      result = v8;
    }

    else
    {
      result = v9;
    }

    goto LABEL_29;
  }

  if (v2 <= 90.0 || v2 > 180.0)
  {
    if (v2 <= 180.0 || v2 > 270.0)
    {
      result = 0;
      v6 = 1;
      if (v2 > 270.0 && v2 <= 360.0)
      {
        if (v2 >= 305.0)
        {
          v7 = v2 <= 325.0;
          v8 = 5;
          v9 = 4;
          goto LABEL_26;
        }

        v6 = 1;
        result = 1;
      }
    }

    else if (v2 >= 215.0)
    {
      v6 = v2 > 235.0;
      if (v2 > 235.0)
      {
        result = 1;
      }

      else
      {
        result = 9;
      }
    }

    else
    {
      v6 = 0;
      result = 8;
    }
  }

  else
  {
    if (v2 < 125.0)
    {
      result = 2;
      goto LABEL_29;
    }

    v6 = 0;
    if (v2 <= 145.0)
    {
      result = 10;
    }

    else
    {
      result = 8;
    }
  }

LABEL_30:
  if (ZOTIsWildcat != 1)
  {
    return result;
  }

  switch(a1)
  {
    case 4:
      if (v6)
      {
        v11 = ((2 * result) | (result >> 1)) & 9;
      }

      else
      {
        v11 = ((2 * result) | (result >> 1)) & 9 | 4;
      }

      return v11 & 0xFFFFFFFD | (2 * (result & 1));
    case 3:
      return result;
    case 2:
      return !v6 & 0xFFFFFFF3 | (8 * ((result >> 1) & 1)) | (result >> 1) & 2 | (4 * (result & 1));
    default:
      if (v6)
      {
        v12 = ((result >> 2) | (2 * result)) & 5;
      }

      else
      {
        v12 = ((result >> 2) | (2 * result)) & 5 | 2;
      }

      return v12 & 0xFFFFFFF7 | (8 * (result & 1));
  }
}