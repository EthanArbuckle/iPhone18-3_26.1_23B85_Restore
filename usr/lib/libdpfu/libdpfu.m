uint64_t DPFUSessionGetTypeID()
{
  result = __kDPFUSessionTypeID;
  if (!__kDPFUSessionTypeID)
  {
    pthread_once(&__DPFUSessionTypeInit, __DPFUSessionRegister);
    return __kDPFUSessionTypeID;
  }

  return result;
}

uint64_t __DPFUSessionRegister()
{
  result = _CFRuntimeRegisterClass();
  __kDPFUSessionTypeID = result;
  return result;
}

uint64_t DPFUSessionCreate(uint64_t a1, const void *a2, unsigned int a3)
{
  v3 = 0;
  if (a2 && a3 <= 2)
  {
    if (!__kDPFUSessionTypeID)
    {
      pthread_once(&__DPFUSessionTypeInit, __DPFUSessionRegister);
    }

    Instance = _CFRuntimeCreateInstance();
    v3 = Instance;
    if (Instance)
    {
      *(Instance + 48) = 0;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 16) = a2;
      *(Instance + 24) = &__DPFUProtocolInfo + 24 * a3;
      *(Instance + 48) = 5;
      *(Instance + 53) = 1;
      CFRetain(a2);
    }
  }

  return v3;
}

uint64_t DPFUSessionSetProgressCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t __DPFUSessionWrite(uint64_t a1, char a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  for (i = 0; i < a4; i += v8)
  {
    if (a4 - i >= 0x1000)
    {
      v8 = 4096;
    }

    else
    {
      v8 = a4 - i;
    }

    v9 = *(a1 + 16);
    v10 = IODPDeviceWriteDPCD();
    v11 = v10;
    if (v10 && (*(a1 + 48) & 0x80000000) == 0)
    {
      mach_error_string(v10);
      __DPFULog(0, "Error writing to device address 0x%08x offset 0x%08x: %s (0x%08x)", v12, v13, v14, v15, v16, v17, a2);
    }
  }

  return v11;
}

void __DPFULog(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (isatty(2))
  {
    fputs("dpfu: ", __stderrp);
    vfprintf(__stderrp, a2, &a9);
    fputc(10, __stderrp);
  }

  else
  {
    vsyslog(a1, a2, &a9);
  }
}

const char *DPFUGetDeviceModeString(int a1)
{
  if (a1 > 119)
  {
    if (a1 != 120)
    {
      if (a1 == 127)
      {
        return "32-KByte Update Mode";
      }

      return "Unknown Mode";
    }

    return "Eight-Byte Update Mode";
  }

  else
  {
    if (a1)
    {
      if (a1 == 113)
      {
        return "Single-Byte Update Mode";
      }

      return "Unknown Mode";
    }

    return "Normal Mode";
  }
}

uint64_t DPFUSessionLeaveUpdateMode(uint64_t a1)
{
  if (*(a1 + 54))
  {
    return 0;
  }

  else
  {
    return __DPFUDeviceSetProperty(*(a1 + 16));
  }
}

uint64_t dpfuUpdateDeviceWithContentsOfFile(const char *a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = IODPDeviceCreate();
  v13 = DPFUSessionCreate(kCFAllocatorDefault, v12, a2);
  CFRelease(v12);
  if (v13)
  {
    *(v13 + 32) = a5;
    *(v13 + 40) = a6;
    updated = DPFUSessionEnterUpdateMode(v13);
    if (updated)
    {
      v26 = updated;
    }

    else
    {
      v26 = DPFUSessionInstallFilePayload(v13, a1, a3, v21, v22, v23, v24, v25);
      if (a4 && (*(v13 + 54) & 1) == 0)
      {
        dpfuUpdateDeviceWithContentsOfFile_cold_1(v13);
      }
    }

    CFRelease(v13);
  }

  else
  {
    v26 = 3758097136;
    __DPFULog(0, "Can't create device update session", v14, v15, v16, v17, v18, v19, v28);
  }

  return v26;
}

void __DPFUSessionUpdateProgress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 0x3FF) == 0 || a3)
  {
    if (*(a1 + 48) >= 5)
    {
      __DPFULog(5, "  %u bytes written", a3, a4, a5, a6, a7, a8, a2);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(a1 + 40);

      v10(a2, v11);
    }
  }
}

uint64_t __DPFUSessionRequestMode(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2 | 0x80;
  if (*(a1 + 48) >= 7)
  {
    if (a2 > 119)
    {
      if (a2 == 120)
      {
        v9 = "Eight-Byte Update Mode";
        goto LABEL_12;
      }

      if (a2 == 127)
      {
        v9 = "32-KByte Update Mode";
        goto LABEL_12;
      }
    }

    else
    {
      if (!a2)
      {
        v9 = "Normal Mode";
        goto LABEL_12;
      }

      if (a2 == 113)
      {
        v9 = "Single-Byte Update Mode";
LABEL_12:
        __DPFULog(7, "Requesting Device Mode: %s (0x%02x)", a3, a4, a5, a6, a7, a8, v9);
        return __DPFUSessionWrite(a1, 13, &v11, 1u);
      }
    }

    v9 = "Unknown Mode";
    goto LABEL_12;
  }

  return __DPFUSessionWrite(a1, 13, &v11, 1u);
}

const char *DPFUGetDeviceStatusString(int a1)
{
  if (a1 > 3)
  {
    if (a1 > 126)
    {
      if (a1 == 127)
      {
        return "Error";
      }

      if (a1 == 255)
      {
        return "None";
      }
    }

    else
    {
      if (a1 == 4)
      {
        return "Validated";
      }

      if (a1 == 5)
      {
        return "Installed";
      }
    }

    return "Unknown";
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return "Idle";
    }

    if (a1 == 1)
    {
      return "Busy";
    }

    return "Unknown";
  }

  if (a1 == 2)
  {
    return "Ready";
  }

  else
  {
    return "Data End";
  }
}

void __DPFUSessionFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t __DPFUSessionRead(uint64_t a1)
{
  v2 = *(a1 + 16);
  DPCD = IODPDeviceReadDPCD();
  v4 = DPCD;
  if (DPCD && (*(a1 + 48) & 0x80000000) == 0)
  {
    v5 = mach_error_string(DPCD);
    __DPFULog(0, "Error reading from device: %s (0x%08x)", v6, v7, v8, v9, v10, v11, v5);
  }

  return v4;
}

uint64_t __DPFUSessionSendHostCommand(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2 | 0x80;
  if (*(a1 + 48) >= 7)
  {
    if ((a2 - 1) > 5)
    {
      v9 = "Unknown";
    }

    else
    {
      v9 = off_4070[a2 - 1];
    }

    __DPFULog(7, "Sending Host Command: %s (0x%02x)", a3, a4, a5, a6, a7, a8, v9);
  }

  return __DPFUSessionWrite(a1, 14, &v11, 1u);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{

  return __DPFUSessionPollStatus(v15, &a15, 0x3E8u, 0x3E8u);
}

double DPFUSessionGetDeviceInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!IODPDeviceReadDPCD())
  {
    result = v5;
    *a2 = v5;
    *(a2 + 8) = v6;
  }

  return result;
}

uint64_t DPFUSessionEnterUpdateMode(uint64_t a1)
{
  result = __DPFUDeviceSetProperty(*(a1 + 16));
  if (!result)
  {
    result = __DPFUDeviceSetProperty(*(a1 + 16));
    if (!result)
    {
      result = __DPFUSessionWrite(a1, 0, &kAppleOUI, 3u);
      if (!result)
      {
        result = __DPFUSessionGetMode(a1, (a1 + 52));
        if (!result)
        {
          OUTLINED_FUNCTION_3();
          if (v9 == v10)
          {
            v11 = *(a1 + 52);
            if (*(a1 + 52))
            {
              switch(v11)
              {
                case '\x7F':
                  v12 = "32-KByte Update Mode";
                  break;
                case 'x':
                  v12 = "Eight-Byte Update Mode";
                  break;
                case 'q':
                  v12 = "Single-Byte Update Mode";
                  break;
                default:
                  v12 = "Unknown Mode";
                  break;
              }
            }

            else
            {
              v12 = "Normal Mode";
            }

            v13 = *(a1 + 52);
            __DPFULog(6, "Initial Device Mode: %s (0x%02x)", v3, v4, v5, v6, v7, v8, v12);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t __DPFUDeviceSetProperty(uint64_t a1)
{
  v1 = 3758097088;
  if (!a1)
  {
    return 3758097101;
  }

  if (!IODPDeviceGetAVDevice())
  {
    return v1;
  }

  return _IOAVDeviceSetProperty();
}

uint64_t __DPFUSessionGetMode(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  result = __DPFUSessionRead(a1);
  if (!result)
  {
    if (*(a1 + 48) >= 7)
    {
      __DPFULog(7, "Current Device Mode: %s%s (0x%02x)", v5, v6, v7, v8, v9, v10, "");
    }

    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t DPFUSessionInstallFilePayload(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v11 = *(a1 + 24);
  if ((*(a1 + 48) & 0x80000000) == 0)
  {
    __DPFULog(0, "DPFUSessionInstallFilePayload( %s)", a3, a4, a5, a6, a7, a8, a2);
  }

  v12 = 3758097136;
  v13 = malloc_type_calloc(1uLL, *(v11 + 8), 0xD951F906uLL);
  if (!v13)
  {
    return 3758097085;
  }

  v14 = v13;
  OUTLINED_FUNCTION_2();
  if (v21 == v22)
  {
    __DPFULog(5, "Opening package file: %s", v15, v16, v17, v18, v19, v20, a2);
  }

  v23 = fopen(a2, "rb");
  v30 = *(a1 + 48);
  if (!v23)
  {
    if (v30 >= 5)
    {
      __DPFULog(5, "  Error opening file: %s", v24, v25, v26, v27, v28, v29, a2);
    }

    goto LABEL_27;
  }

  v31 = v23;
  if (v30 >= 5)
  {
    __DPFULog(5, "  Successfully opened %s", v24, v25, v26, v27, v28, v29, a2);
  }

  v32 = __DPFUSessionPrepareForDownload(a1);
  if (v32)
  {
LABEL_31:
    v12 = v32;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_2();
  if (v21 == v22)
  {
    __DPFULog(5, "Writing Data from File...", v39, v40, v41, v42, v43, v44, v67);
  }

  v51 = 0;
  if (feof(v31))
  {
LABEL_22:
    v32 = __DPFUSessionFinishDownload(a1, v51, v45, v46, v47, v48, v49, v50);
    if (!v32)
    {
      v32 = __DPFUSessionInstallUpdate(a1, v65, v33, v34, v35, v36, v37, v38);
      if (!v32)
      {
        v12 = __DPFUSessionFinishUpdate(a1, v8);
        if (v12)
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    goto LABEL_31;
  }

  while (1)
  {
    v52 = fread(v14, 1uLL, *(v11 + 8), v31);
    if (v52 != *(v11 + 8) && !feof(v31) && *(a1 + 48) >= 7)
    {
      __DPFULog(7, "Warning: attempted to read %u bytes, fread returned %lu", v53, v54, v55, v56, v57, v58, *(v11 + 8));
    }

    if (!v52)
    {
      goto LABEL_18;
    }

    v59 = __DPFUSessionDownloadData(a1, v14, v52);
    if (v59)
    {
      break;
    }

    v51 = (v51 + v52);
    __DPFUSessionUpdateProgress(a1, v51, 0, v60, v61, v62, v63, v64);
LABEL_18:
    if (feof(v31))
    {
      goto LABEL_22;
    }
  }

  v12 = v59;
  OUTLINED_FUNCTION_2();
  if (v21 == v22)
  {
    __DPFULog(5, "  Error writing data after %u successful bytes", v33, v34, v35, v36, v37, v38, v51);
  }

LABEL_25:
  __DPFUSessionRequestMode(a1, 0, v33, v34, v35, v36, v37, v38);
LABEL_26:
  fclose(v31);
LABEL_27:
  free(v14);
  return v12;
}

uint64_t __DPFUSessionPrepareForDownload(uint64_t a1)
{
  v2 = *(a1 + 24);
  v91 = 0;
  Status = __DPFUSessionGetStatus(a1, &v91);
  if (Status)
  {
    return Status;
  }

  v10 = v91;
  if (*(a1 + 48) >= 6)
  {
    v11 = DPFUGetDeviceStatusString(v91);
    v84 = v10;
    __DPFULog(6, "Initial Device Status: %s (0x%02x)", v12, v13, v14, v15, v16, v17, v11);
  }

  v18 = *(a1 + 52);
  v19 = *v2;
  if (v18 != v19 || v10 != 2)
  {
    v90 = 0;
    OUTLINED_FUNCTION_0();
    if (v28 == v29)
    {
      if (v21)
      {
        switch(v21)
        {
          case '\x7F':
            v30 = "32-KByte Update Mode";
            break;
          case 'x':
            v30 = "Eight-Byte Update Mode";
            break;
          case 'q':
            v30 = "Single-Byte Update Mode";
            break;
          default:
            v30 = "Unknown Mode";
            break;
        }
      }

      else
      {
        v30 = "Normal Mode";
      }

      __DPFULog(5, "Requesting %s...", v22, v23, v24, v25, v26, v27, v30);
      v21 = *v2;
    }

    Status = __DPFUSessionRequestMode(a1, v21, v22, v23, v24, v25, v26, v27);
    if (!Status)
    {
      while (1)
      {
        Status = __DPFUSessionGetMode(a1, &v90);
        if (Status)
        {
          break;
        }

        usleep(0x3E8u);
        if ((v90 & 0x80) == 0)
        {
          OUTLINED_FUNCTION_3();
          if (v28 == v29)
          {
            if (v31)
            {
              switch(v31)
              {
                case '\x7F':
                  v32 = "32-KByte Update Mode";
                  break;
                case 'x':
                  v32 = "Eight-Byte Update Mode";
                  break;
                case 'q':
                  v32 = "Single-Byte Update Mode";
                  break;
                default:
                  v32 = "Unknown Mode";
                  break;
              }
            }

            else
            {
              v32 = "Normal Mode";
            }

            v84 = v31;
            __DPFULog(6, "  New Mode: %s (0x%02x)", v4, v5, v6, v7, v8, v9, v32);
            LODWORD(v31) = v90;
          }

          v33 = v31;
          if (!v31)
          {
            OUTLINED_FUNCTION_0();
            if (v28 == v29)
            {
              v40 = *v2;
              if (*v2)
              {
                switch(v40)
                {
                  case '\x7F':
                    v41 = "32-KByte Update Mode";
                    break;
                  case 'x':
                    v41 = "Eight-Byte Update Mode";
                    break;
                  case 'q':
                    v41 = "Single-Byte Update Mode";
                    break;
                  default:
                    v41 = "Unknown Mode";
                    break;
                }
              }

              else
              {
                v41 = "Normal Mode";
              }

              __DPFULog(5, "Requesting %s Again...", v34, v35, v36, v37, v38, v39, v41);
            }

            Status = __DPFUSessionRequestMode(a1, *v2, v34, v35, v36, v37, v38, v39);
            if (!Status)
            {
              while (1)
              {
                Status = __DPFUSessionGetMode(a1, &v90);
                if (Status)
                {
                  break;
                }

                Status = usleep(0x3E8u);
                v33 = v90;
                if ((v90 & 0x80) == 0)
                {
                  if (*(a1 + 48) >= 6)
                  {
                    if (v90)
                    {
                      switch(v90)
                      {
                        case '\x7F':
                          v43 = "32-KByte Update Mode";
                          break;
                        case 'x':
                          v43 = "Eight-Byte Update Mode";
                          break;
                        case 'q':
                          v43 = "Single-Byte Update Mode";
                          break;
                        default:
                          v43 = "Unknown Mode";
                          break;
                      }
                    }

                    else
                    {
                      v43 = "Normal Mode";
                    }

                    v84 = v90;
                    __DPFULog(6, "  New Mode: %s (0x%02x)", v4, v5, v6, v7, v8, v9, v43);
                    v33 = v90;
                  }

                  goto LABEL_65;
                }
              }
            }

            return Status;
          }

LABEL_65:
          if (v33 == *v2)
          {
            goto LABEL_66;
          }

          v52 = 3758097112;
          OUTLINED_FUNCTION_0();
          if (v28 == v29)
          {
            if (v79)
            {
              switch(v79)
              {
                case '\x7F':
                  v80 = "32-KByte Update Mode";
                  break;
                case 'x':
                  v80 = "Eight-Byte Update Mode";
                  break;
                case 'q':
                  v80 = "Single-Byte Update Mode";
                  break;
                default:
                  v80 = "Unknown Mode";
                  break;
              }
            }

            else
            {
              v80 = "Normal Mode";
            }

            __DPFULog(5, "Unable to Enter %s...", v73, v74, v75, v76, v77, v78, v80);
          }

          return v52;
        }
      }
    }

    return Status;
  }

  if (*(a1 + 48) >= 6)
  {
    if (*(a1 + 52))
    {
      switch(v18)
      {
        case '\x7F':
          v42 = "32-KByte Update Mode";
          break;
        case 'x':
          v42 = "Eight-Byte Update Mode";
          break;
        case 'q':
          v42 = "Single-Byte Update Mode";
          break;
        default:
          v42 = "Unknown Mode";
          break;
      }
    }

    else
    {
      v42 = "Normal Mode";
    }

    __DPFULog(6, "Device already in %s", v4, v5, v6, v7, v8, v9, v42);
  }

LABEL_66:
  Status = OUTLINED_FUNCTION_4(Status, v19, v4, v5, v6, v7, v8, v9, v81, v84, v86, *v88, *&v88[4], v90, v91);
  if (Status)
  {
    return Status;
  }

  OUTLINED_FUNCTION_3();
  if (v28 == v29)
  {
    v44 = v91;
    v45 = DPFUGetDeviceStatusString(v91);
    v85 = v44;
    __DPFULog(6, "  Current Status in this Mode: %s (0x%02x)", v46, v47, v48, v49, v50, v51, v45);
  }

  v52 = 3758097112;
  if (v91 == 2)
  {
    OUTLINED_FUNCTION_0();
    if (v28 == v29)
    {
      __DPFULog(5, "Commanding Download...", v53, v54, v55, v56, v57, v58, v82);
    }

    Status = __DPFUSessionSendHostCommand(a1, 1, v53, v54, v55, v56, v57, v58);
    if (!Status)
    {
      Status = OUTLINED_FUNCTION_4(Status, v59, v60, v61, v62, v63, v64, v65, v82, v85, v87, *v89, *&v89[4], v90, v91);
      if (!Status)
      {
        if (v91 == 2)
        {
          OUTLINED_FUNCTION_0();
          if (v28 == v29)
          {
            __DPFULog(5, "  Download Ready", v66, v67, v68, v69, v70, v71, v83);
          }

          return 0;
        }

        return v52;
      }
    }

    return Status;
  }

  return v52;
}

uint64_t __DPFUSessionDownloadData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 3758097090;
  }

  result = __DPFUSessionWrite(a1, *(*(a1 + 24) + 4), a2, a3);
  if (!result)
  {
    result = __DPFUSessionSendHostCommand(a1, 2, v5, v6, v7, v8, v9, v10);
    if (!result)
    {
      v11 = OUTLINED_FUNCTION_1();
      result = __DPFUSessionPollStatus(v11, v12, v13, 0xAu);
      if (!result)
      {
        return 3758097084;
      }
    }
  }

  return result;
}

uint64_t __DPFUSessionFinishDownload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v27 = 0;
  __DPFUSessionUpdateProgress(a1, a2, 1, a4, a5, a6, a7, a8);
  result = __DPFUSessionGetStatus(a1, &v27);
  if (!result)
  {
    v11 = v27;
    if (*(a1 + 48) >= 6)
    {
      v12 = DPFUGetDeviceStatusString(v27);
      __DPFULog(6, "Final Status: %s (0x%02x)", v13, v14, v15, v16, v17, v18, v12);
    }

    if (v11 == 3)
    {
      OUTLINED_FUNCTION_2();
      if (v25 == v26)
      {
        __DPFULog(5, "Successfully wrote %u total bytes", v19, v20, v21, v22, v23, v24, v8);
      }

      return 0;
    }

    else
    {
      return 3758097098;
    }
  }

  return result;
}

uint64_t __DPFUSessionInstallUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48) >= 5)
  {
    __DPFULog(5, "Commanding Validate...", a3, a4, a5, a6, a7, a8, v15);
  }

  v9 = __DPFUSessionSendHostCommand(a1, 4, a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    return v9;
  }

  v10 = OUTLINED_FUNCTION_1();
  v9 = __DPFUSessionPollStatus(v10, v11, v12, 0x186A0u);
  if (v9)
  {
    return v9;
  }

  else
  {
    return 3758097105;
  }
}

uint64_t __DPFUSessionFinishUpdate(uint64_t a1, int a2)
{
  v29 = 0;
  if (*(a1 + 53) != 1)
  {
    return __DPFUDeviceSetProperty(*(a1 + 16));
  }

  OUTLINED_FUNCTION_0();
  if (v19 == v20)
  {
    __DPFULog(5, "Commanding Restart...", v4, v5, v6, v7, v8, v9, v28);
  }

  result = __DPFUSessionSendHostCommand(a1, 6, v4, v5, v6, v7, v8, v9);
  if (!result)
  {
    if (*(a1 + 54))
    {
      return 0;
    }

    else
    {
      while (1)
      {
        result = __DPFUSessionGetMode(a1, &v29);
        if (result)
        {
          break;
        }

        OUTLINED_FUNCTION_3();
        if (v19 == v20)
        {
          if (v29)
          {
            if (v29 == 113)
            {
              v17 = "Single-Byte Update Mode";
            }

            else
            {
              v17 = "Unknown Mode";
            }

            if (v29 == 120)
            {
              v17 = "Eight-Byte Update Mode";
            }

            if (v29 == 127)
            {
              v17 = "32-KByte Update Mode";
            }
          }

          else
          {
            v17 = "Normal Mode";
          }

          __DPFULog(6, "Device Mode: %s (0x%02x)", v11, v12, v13, v14, v15, v16, v17);
        }

        v18 = v29;
        if (v29)
        {
          usleep(0x3E8u);
          v18 = v29;
        }

        if (v18 == a2)
        {
          OUTLINED_FUNCTION_0();
          if (v19 == v20)
          {
            if (a2)
            {
              switch(a2)
              {
                case '\x7F':
                  v27 = "32-KByte Update Mode";
                  break;
                case 'x':
                  v27 = "Eight-Byte Update Mode";
                  break;
                case 'q':
                  v27 = "Single-Byte Update Mode";
                  break;
                default:
                  v27 = "Unknown Mode";
                  break;
              }
            }

            else
            {
              v27 = "Normal Mode";
            }

            __DPFULog(5, "  Restarted in mode: %s (0x%02x)", v21, v22, v23, v24, v25, v26, v27);
          }

          return __DPFUDeviceSetProperty(*(a1 + 16));
        }
      }
    }
  }

  return result;
}

uint64_t DPFUSessionInstallMemoryPayload(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v8 = *(a1 + 24);
  v9 = __DPFUSessionPrepareForDownload(a1);
  if (v9)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_0();
  if (v22 == v23)
  {
    __DPFULog(5, "Writing Data from Memory...", v16, v17, v18, v19, v20, v21, v36);
  }

  if (a3)
  {
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v26 = a3 - v24 >= *(v8 + 8) ? *(v8 + 8) : a3 - v24;
      v27 = __DPFUSessionDownloadData(a1, a2 + v24, v26);
      if (v27)
      {
        break;
      }

      __DPFUSessionUpdateProgress(a1, v26 + v25, 0, v28, v29, v30, v31, v32);
      v25 += v26;
      v24 = v25;
      if (v25 >= a3)
      {
        goto LABEL_11;
      }
    }

    v34 = v27;
    OUTLINED_FUNCTION_0();
    if (v22 == v23)
    {
      __DPFULog(5, "  Error writing data after %u successful bytes", v10, v11, v12, v13, v14, v15, v25);
    }

    goto LABEL_14;
  }

  v24 = 0;
LABEL_11:
  v9 = __DPFUSessionFinishDownload(a1, v24, v16, v17, v18, v19, v20, v21);
  if (v9 || (v9 = __DPFUSessionInstallUpdate(a1, v33, v10, v11, v12, v13, v14, v15), v9))
  {
LABEL_19:
    v34 = v9;
    goto LABEL_14;
  }

  v34 = __DPFUSessionFinishUpdate(a1, a4);
  if (v34)
  {
LABEL_14:
    __DPFUSessionRequestMode(a1, 0, v10, v11, v12, v13, v14, v15);
  }

  return v34;
}

uint64_t __DPFUSessionGetStatus(uint64_t a1, _BYTE *a2)
{
  deadline = 0;
  result = __DPFUClockIntervalToDeadline(&deadline);
  if (!result)
  {
    result = __DPFUSessionRead(a1);
    if (!result)
    {
      mach_wait_until(deadline);
      result = __DPFUClockIntervalToDeadline(&deadline);
      if (!result)
      {
        result = __DPFUSessionRead(a1);
        if (!result)
        {
          result = 0;
          *a2 = 0;
        }
      }
    }
  }

  return result;
}

uint64_t __DPFUSessionPollStatus(uint64_t a1, _BYTE *a2, useconds_t a3, useconds_t a4)
{
  if (!a2)
  {
    return 3758097090;
  }

  v18 = 0;
  for (result = __DPFUSessionGetStatus(a1, &v18); !result; result = __DPFUSessionGetStatus(a1, &v18))
  {
    v9 = v18;
    if (*(a1 + 48) >= 6)
    {
      v10 = DPFUGetDeviceStatusString(v18);
      __DPFULog(6, "  Device Status: %s (0x%02x)", v11, v12, v13, v14, v15, v16, v10);
    }

    v17 = a4;
    if (v9 == 1 || a3 && (v17 = a3, v9 == 255))
    {
      usleep(v17);
    }

    else if (v9 != 255)
    {
      result = 0;
      *a2 = v9;
      return result;
    }
  }

  return result;
}

uint64_t __DPFUClockIntervalToDeadline(void *a1)
{
  info = 0;
  v2 = mach_timebase_info(&info);
  if (!v2)
  {
    v3 = 100000 * info.denom / info.numer;
    *a1 = mach_absolute_time() + v3;
  }

  return v2;
}