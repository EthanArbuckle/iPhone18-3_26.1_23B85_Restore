void _registerObservers(uint64_t a1, void *a2)
{
  if (a2[2])
  {
    v2 = a2;
    [v2 setShouldRegisterForZoomListeners:1];
    [v2 setRegisteredForZoomListener:0];
    [v2 setRegisteredForZoomAttributeListeners:0];
    [v2 _zoomChanged:0];
  }
}

void sub_275238BC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

double ZOTMainScreenSize()
{
  if (ZOTMainScreenSize_onceToken != -1)
  {
    ZOTMainScreenSize_cold_1();
  }

  return *&ZOTMainScreenSize_ScreenSize_0;
}

id ZOTWindowServerDisplay()
{
  v0 = ZOTWindowServerDisplay_kZOTWindowServerDisplay;
  if (!ZOTWindowServerDisplay_kZOTWindowServerDisplay)
  {
    v1 = [MEMORY[0x277CDA018] server];
    v2 = [v1 displays];
    v3 = [v2 firstObject];
    v4 = ZOTWindowServerDisplay_kZOTWindowServerDisplay;
    ZOTWindowServerDisplay_kZOTWindowServerDisplay = v3;

    v0 = ZOTWindowServerDisplay_kZOTWindowServerDisplay;
  }

  return v0;
}

uint64_t ZOTDeviceRotation()
{
  result = ZOTDeviceRotation_Rotation;
  if (ZOTDeviceRotation_Rotation == -1)
  {
    result = MGCopyAnswer();
    if (result)
    {
      CFRelease(result);
      GSMainScreenOrientation();
      v2 = fabsf(v1);
      if (v2 < 0.001)
      {
        result = 0;
        ZOTDeviceRotation_Rotation = 0;
        return result;
      }

      if (fabs(v2 + -4.71238898) < 0.001)
      {
        result = 2;
LABEL_10:
        ZOTDeviceRotation_Rotation = result;
        return result;
      }

      if (fabs(v2 + -1.57079633) < 0.001)
      {
        result = 1;
        goto LABEL_10;
      }

      return ZOTDeviceRotation_Rotation;
    }
  }

  return result;
}

uint64_t ZOTRotateToScreen(char a1)
{
  if ((a1 & 1) == 0)
  {
    ZOTMainScreenSize();
    ZOTDeviceRotation();
  }

  return ZOTDeviceRotation();
}

uint64_t ZOTRotateFromScreen(char a1)
{
  if ((a1 & 1) == 0)
  {
    ZOTMainScreenSize();
    ZOTDeviceRotation();
  }

  return ZOTDeviceRotation();
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x28211F868](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}