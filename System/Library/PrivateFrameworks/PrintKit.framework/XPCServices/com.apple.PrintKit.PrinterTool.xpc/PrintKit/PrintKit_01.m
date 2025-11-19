uint64_t lite_print_pdfimage(void *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100022EF8;
  v3[3] = &unk_1000A21F0;
  v4 = a1;
  v1 = v4;
  [v1 _withActivity:v3];

  return 0;
}

void sub_100022EF8(uint64_t a1, os_activity_t activity)
{
  v3 = _os_activity_create(&_mh_execute_header, "Thread: Print PDF Image", activity, OS_ACTIVITY_FLAG_DEFAULT);
  v4 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) printd_job_id];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 destination_job_id];
    }

    else
    {
      v7 = -1;
    }

    *buf = 67109890;
    v15 = v5;
    v16 = 1024;
    v17 = v7;
    v18 = 2048;
    v19 = v3;
    v20 = 2080;
    v21 = "Thread: Print PDF Image";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) ENTER: %s", buf, 0x22u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002316C;
  block[3] = &unk_100095380;
  v13 = *(a1 + 32);
  os_activity_apply(v3, block);
  v8 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) printd_job_id];
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = [v10 destination_job_id];
    }

    else
    {
      v11 = -1;
    }

    *buf = 67109890;
    v15 = v9;
    v16 = 1024;
    v17 = v11;
    v18 = 2048;
    v19 = v3;
    v20 = 2080;
    v21 = "Thread: Print PDF Image";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) EXIT: %s", buf, 0x22u);
  }
}

void sub_10002316C(uint64_t a1)
{
  v2 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) printd_job_id];
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v4 destination_job_id];
    }

    else
    {
      v5 = -1;
    }

    *buf = 67109634;
    v60 = v3;
    v61 = 1024;
    v62 = v5;
    v63 = 2080;
    v64 = "lite_print_pdfimage_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] #### %s.", buf, 0x18u);
  }

  v6 = *(a1 + 32);
  v72 = 0;
  theDict = 0;
  liteSetThreadPriority(1u);
  v7 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 printd_job_id];
    if (v6)
    {
      v9 = [v6 destination_job_id];
    }

    else
    {
      v9 = -1;
    }

    v10 = [v6 spoolDocumentFilename];
    v11 = v10;
    *valuePtr = 67109634;
    v54 = v8;
    v55 = 1024;
    v56 = v9;
    v57 = 2080;
    v58[0] = [v10 UTF8String];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] lite_print_pdfimage: filename=%s", valuePtr, 0x18u);
  }

  [v6 set_processing];
  v12 = [v6 spoolDocumentFilename];
  v14 = lite_create_image(v12, 0, v13, &theDict);

  if (v14)
  {
    if (![v6 openDriver:buf format:@"application/pdf" orient:0 num_sheets:1 passthru:1])
    {
      v20 = 8;
      goto LABEL_62;
    }

    if (theDict)
    {
      *valuePtr = 0;
      Value = CFDictionaryGetValue(theDict, kCGImagePropertyOrientation);
      if (Value)
      {
        if (CFNumberGetValue(Value, kCFNumberIntType, valuePtr))
        {
          v16 = *valuePtr;
        }

        else
        {
          v16 = 1;
        }
      }

      else
      {
        v16 = 1;
      }

      CFRelease(theDict);
      theDict = 0;
    }

    else
    {
      v16 = 1;
    }

    Width = CGImageGetWidth(v14);
    Height = CGImageGetHeight(v14);
    LODWORD(v23) = v67;
    v24.i64[0] = v65;
    v24.i64[1] = v66;
    v25 = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v24), vdupq_n_s64(0x4052000000000000uLL)), vdupq_lane_s64(COERCE__INT64(v23), 0));
    v26 = v25.f64[1];
    if (v16 <= 4)
    {
      v27 = Width;
    }

    else
    {
      v27 = Height;
    }

    if (v16 <= 4)
    {
      v28 = Height;
    }

    else
    {
      v28 = Width;
    }

    if (v25.f64[0] <= v25.f64[1] || (v29 = v25.f64[1], v30 = v25.f64[0], v27 >= v28))
    {
      v31 = v25.f64[0] < v25.f64[1];
      v32 = v27 > v28;
      if (v31 && v32)
      {
        v29 = v25.f64[1];
      }

      else
      {
        v29 = v25.f64[0];
      }

      if (v31 && v32)
      {
        v30 = v25.f64[0];
      }

      else
      {
        v30 = v25.f64[1];
      }
    }

    v33 = v70;
    v34 = v71;
    v35 = v68;
    v36 = v69;
    mediaBox.origin.x = 0.0;
    mediaBox.origin.y = 0.0;
    mediaBox.size.width = v29;
    mediaBox.size.height = v30;
    v37 = [v6 createDataConsumer];
    v38 = v37;
    if (v37)
    {
      v39 = CGPDFContextCreate(v37, &mediaBox, 0);
      CGDataConsumerRelease(v38);
      if (v39)
      {
        v40 = time(0);
        CGContextBeginPage(v39, &mediaBox);
        v74.origin.x = v35 * 72.0 / 2540.0;
        v74.origin.y = v36 * 72.0 / 2540.0;
        v73.width = v50;
        v74.size.width = v50 - v74.origin.x - v33 * 72.0 / 2540.0;
        v74.size.height = v26 - v34 * 72.0 / 2540.0 - v74.origin.y;
        v73.height = v26;
        _liteDrawImageToSheet(v39, v14, v16, v73, v74);
        CGContextEndPage(v39);
        CGPDFContextClose(v39);
        CGContextRelease(v39);
        v41 = time(0);
        v17 = _PKLogCategory(PKLogCategoryProgress[0]);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [v6 printd_job_id];
          if (v6)
          {
            v43 = [v6 destination_job_id];
          }

          else
          {
            v43 = -1;
          }

          *valuePtr = 67109888;
          v54 = v42;
          v55 = 1024;
          v56 = v43;
          v57 = 1024;
          LODWORD(v58[0]) = (v41 - v40) / 60;
          WORD2(v58[0]) = 1024;
          *(v58 + 6) = (v41 - v40) % 60;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] lite_print_pdfimage: TIME %d:%02d", valuePtr, 0x1Au);
        }

        v20 = 9;
        goto LABEL_61;
      }

      v17 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v46 = [v6 printd_job_id];
        if (v6)
        {
          v47 = [v6 destination_job_id];
        }

        else
        {
          v47 = -1;
        }

        *valuePtr = 67109376;
        v54 = v46;
        v55 = 1024;
        v56 = v47;
        v48 = "[Job %d][%d] lite_print_pdfimage: Unable to create PDF context";
LABEL_59:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v48, valuePtr, 0xEu);
      }
    }

    else
    {
      v17 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v44 = [v6 printd_job_id];
        if (v6)
        {
          v45 = [v6 destination_job_id];
        }

        else
        {
          v45 = -1;
        }

        *valuePtr = 67109376;
        v54 = v44;
        v55 = 1024;
        v56 = v45;
        v48 = "[Job %d][%d] lite_print_pdfimage: Unable to create data consumer.";
        goto LABEL_59;
      }
    }
  }

  else
  {
    v17 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v6 printd_job_id];
      if (v6)
      {
        v19 = [v6 destination_job_id];
      }

      else
      {
        v19 = -1;
      }

      *valuePtr = 67109376;
      v54 = v18;
      v55 = 1024;
      v56 = v19;
      v48 = "[Job %d][%d] lite_print_pdfimage: Unable to get image from job file.";
      goto LABEL_59;
    }
  }

  v20 = 8;
LABEL_61:

LABEL_62:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if ([v6 closeDriver:buf])
  {
    if ([v6 is_canceled])
    {
      v49 = 7;
    }

    else
    {
      v49 = v20;
    }

    [v6 finishJob:v49];
  }

  else
  {
    [v6 resetJob];
  }
}

CGContext *sub_1000238A4(size_t a1, size_t a2)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v5 = CGBitmapContextCreate(0, a1, a2, 8uLL, (4 * a1 + 15) & 0xFFFFFFFFFFFFFFF0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  sub_100023918(v5);
  return v5;
}

void sub_100023918(CGContext *a1)
{
  CGContextSaveGState(a1);
  ColorSpace = CGBitmapContextGetColorSpace(a1);
  if (ColorSpace)
  {
    v3 = ColorSpace;
    Model = CGColorSpaceGetModel(ColorSpace);
    if (Model != kCGColorSpaceModelCMYK)
    {
      if (Model != kCGColorSpaceModelRGB)
      {
        if (Model == kCGColorSpaceModelMonochrome)
        {
          CGContextSetGrayFillColor(a1, 1.0, 1.0);
LABEL_14:
          v7 = *&CGAffineTransformIdentity.c;
          v10[0] = *&CGAffineTransformIdentity.a;
          v10[1] = v7;
          v10[2] = *&CGAffineTransformIdentity.tx;
          CGContextSetCTM();
          Width = CGBitmapContextGetWidth(a1);
          Height = CGBitmapContextGetHeight(a1);
          v11.size.width = Width;
          v11.size.height = Height;
          v11.origin.x = 0.0;
          v11.origin.y = 0.0;
          CGContextFillRect(a1, v11);
          goto LABEL_15;
        }

        v6 = _PKLogCategory(PKLogCategoryProgress[0]);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v10[0]) = 67109120;
          DWORD1(v10[0]) = CGColorSpaceGetModel(v3);
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "lite_bitmap_context_erase: Unknown color model: %d", v10, 8u);
        }
      }

      CGContextSetRGBFillColor(a1, 1.0, 1.0, 1.0, 1.0);
      goto LABEL_14;
    }

    CGContextSetCMYKFillColor(a1, 0.0, 0.0, 0.0, 0.0, 1.0);
    goto LABEL_14;
  }

  v5 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "lite_bitmap_context_erase: Bitmap context has no colorspace!", v10, 2u);
  }

LABEL_15:
  CGContextRestoreGState(a1);
}

uint64_t sub_100023B14(void *a1, signed int a2, signed int *a3)
{
  v5 = a1;
  *a3 = 0;
  v6 = [v5 request_attrs];
  v7 = (*(*v6 + 480))(v6);
  if (![v7 count])
  {
    *a3 = a2;
    goto LABEL_9;
  }

  v8 = [v7 count];
  if (v8 < 1)
  {
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  v9 = 0;
  v10 = v8 & 0x7FFFFFFF;
  while (1)
  {
    v11 = [v7 objectAtIndexedSubscript:v9];
    v12 = [v11 rangeValue];
    v14 = v13;

    v15 = 0;
    if (v12 >= a2 || v12 + v14 > a2)
    {
      break;
    }

    *a3 += v14;
    if (v10 == ++v9)
    {
      goto LABEL_9;
    }
  }

LABEL_10:

  return v15;
}

unint64_t sub_100023C5C(CGPDFPage *a1, CGImage *a2, _OWORD *a3, uint64_t a4, uint64_t a5, _OWORD *a6, int a7)
{
  if (*(a5 + 8) == 3)
  {
    v10 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.printbandservice"];
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PrintBandServiceProtocol];
    [v10 setRemoteObjectInterface:v11];

    v12 = v10;
    [v10 resume];
  }

  else
  {
    v12 = 0;
  }

  v13 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 136315394;
    *(&buf.a + 4) = "lite_render_page";
    WORD2(buf.b) = 2112;
    *(&buf.b + 6) = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: znXPC=%@", &buf, 0x16u);
  }

  v14 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a5 + 24);
    LODWORD(buf.a) = 136315394;
    *(&buf.a + 4) = "lite_render_page";
    WORD2(buf.b) = 2048;
    *(&buf.b + 6) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: raster_info->page_height=%zu", &buf, 0x16u);
  }

  if (a2)
  {
    Width = CGImageGetWidth(a2);
    Height = CGImageGetHeight(a2);
  }

  else
  {
    Height = 0.0;
    Width = 0.0;
  }

  if (*(a5 + 24))
  {
    v19 = 0;
    if (a1 | a2)
    {
      v20 = a4 == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    v85 = v21;
    v22 = 0.0;
    *&v16 = 136315650;
    v76 = v16;
    v79 = a1;
    v80 = a2;
    v78 = v12;
    while (([*(a5 + 2160) is_canceled] & 1) == 0)
    {
      sub_100023918(*a5);
      if (v85)
      {
        CGContextSaveGState(*a5);
        CGContextTranslateCTM(*a5, 0.0, v22);
        v23 = *(a5 + 48);
        if (v23)
        {
          v24 = *a5;
          v25 = *v23;
          v26 = v23[2];
          *&buf.c = v23[1];
          *&buf.tx = v26;
          *&buf.a = v25;
          CGContextConcatCTM(v24, &buf);
        }

        if (a6)
        {
          v27 = *a5;
          v28 = a6[1];
          *&buf.a = *a6;
          *&buf.c = v28;
          *&buf.tx = a6[2];
          CGContextConcatCTM(v27, &buf);
        }

        v29 = *a5;
        v30 = a3[1];
        *&buf.a = *a3;
        *&buf.c = v30;
        *&buf.tx = a3[2];
        CGContextConcatCTM(v29, &buf);
        if (a1)
        {
          v31 = *a5;
          BoxRect = CGPDFPageGetBoxRect(a1, kCGPDFCropBox);
          CGContextClipToRect(v31, BoxRect);
          if (a7)
          {
            CGContextDrawPDFPageWithAnnotations();
          }

          else
          {
            CGContextDrawPDFPage(*a5, a1);
          }
        }

        else if (a2)
        {
          v100.origin.x = 0.0;
          v100.origin.y = 0.0;
          v100.size.width = Width;
          v100.size.height = Height;
          CGContextDrawImage(*a5, v100, a2);
        }

        CGContextRestoreGState(*a5);
        if (v12)
        {
          v83 = v12;
          v87 = 0;
          v88 = &v87;
          v89 = 0x2020000000;
          v90 = 0;
          v32 = *(a5 + 2200);
          v33 = *(a5 + 24);
          v34 = *(a5 + 168);
          v35 = *(a5 + 72);
          v36 = *(a5 + 16);
          if (*(a5 + 2208) >= v33 - v19)
          {
            LODWORD(v37) = v33 - v19;
          }

          else
          {
            v37 = *(a5 + 2208);
          }

          v38 = *(a5 + 73) == 7;
          if (CGBitmapContextGetData(*a5))
          {
            v39 = *(a5 + 2216);
            *&buf.a = _NSConcreteStackBlock;
            *&buf.b = 3221225472;
            *&buf.c = sub_100024620;
            *&buf.d = &unk_1000A2218;
            *&buf.tx = v83;
            v40 = [*&buf.tx synchronousRemoteObjectProxyWithErrorHandler:&buf];
            *v92 = v32;
            *v93 = v33;
            *&v93[4] = v34;
            *&v93[12] = (171 * v35) >> 9;
            *&v93[16] = v36;
            v94 = v37;
            v95 = v19;
            v96 = v38;
            v97 = 0;
            v98 = 0;
            v86[0] = _NSConcreteStackBlock;
            v86[1] = 3221225472;
            v86[2] = sub_10002470C;
            v86[3] = &unk_1000A2240;
            v86[4] = &v87;
            [v40 znProcessBand:v39 withBandDescription:v92 reply:v86];

            v41 = _PKLogCategory(PKLogCategoryProgress[0]);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = *(v88 + 6);
              *v92 = v76;
              *v93 = "bandZNConfirm";
              *&v93[8] = 2048;
              *&v93[10] = v19;
              *&v93[18] = 1024;
              v94 = v42;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s: processBand yOffset=%zu error: %d", v92, 0x1Cu);
            }
          }

          v43 = *(v88 + 6) == 0;
          _Block_object_dispose(&v87, 8);

          v12 = v78;
          a1 = v79;
          a2 = v80;
          if (!v43)
          {
            v73 = _PKLogCategory(PKLogCategoryProgress[0]);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf.a) = 0;
              _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "printbandservice returns failure result", &buf, 2u);
            }

            v64 = 1;
            v47 = -1;
            v62 = 1;
            if (v78)
            {
              goto LABEL_75;
            }

            goto LABEL_76;
          }
        }
      }

      Data = CGBitmapContextGetData(*a5);
      if (*(a5 + 2208) + v19 >= *(a5 + 24))
      {
        v45 = *(a5 + 24);
      }

      else
      {
        v45 = *(a5 + 2208) + v19;
      }

      if (v19 >= v45)
      {
        v47 = 0;
        v19 += *(a5 + 2208);
      }

      else
      {
        v46 = Data;
        v47 = 0;
        v48 = v19;
        while (([*(a5 + 2160) is_canceled] & 1) == 0)
        {
          if (*(a5 + 8) == 3)
          {
            if (*(a5 + 72) == 48)
            {
              if (*(a5 + 73) == 7)
              {
                if (!*(a5 + 16))
                {
                  v74 = 1144;
                  v75 = "bytes_per_row > 0";
                  goto LABEL_91;
                }

                v49 = *(a5 + 2200);
                v50 = v46;
                v51 = v46;
                if (!v49)
                {
                  v74 = 1145;
                  v75 = "width > 0";
LABEL_91:
                  __assert_rtn("lite_pack_row48_float16", "print-darwin.mm", v74, v75);
                }

                do
                {
                  *v50 = *v51;
                  v50[1] = v51[1];
                  v50[2] = v51[2];
                  v50 += 3;
                  v51 += 4;
                  --v49;
                }

                while (v49);
              }

              else
              {
                v58 = *(a5 + 2200);
                if (v58)
                {
                  v59 = v46;
                  v60 = v46;
                  do
                  {
                    *v59 = *v60;
                    v59[2] = v60[2];
                    v60 += 4;
                    v59 += 3;
                    --v58;
                  }

                  while (v58);
                }
              }
            }

            else
            {
              v52 = *(a5 + 2200);
              v53 = v46;
              v54 = v46;
              if (v52 >= 4)
              {
                v55 = v52 >> 2;
                v56 = v46;
                v53 = v46;
                do
                {
                  *v56 = *v53 & 0xFFFFFF | (*(v53 + 1) << 24);
                  v56[1] = *(v53 + 5) | (*(v53 + 2) << 16);
                  v54 = v56 + 3;
                  v56[2] = *(v53 + 10) | (*(v53 + 3) << 8);
                  v53 += 8;
                  v56 += 3;
                  --v55;
                }

                while (v55);
              }

              for (i = v52 & 3; i; --i)
              {
                *v54 = *v53;
                v54[1] = *(v53 + 1);
                v54[2] = *(v53 + 2);
                v54 += 3;
                v53 += 2;
              }
            }
          }

          if (!(v48 % *(a5 + 92)))
          {
            [*(a5 + 2160) updateProgressAndPostNotification:100 * v48 / *(a5 + 24) logMsg:0];
          }

          v61 = (*(a5 + 2152))(a5 + 56, v46, *(a5 + 40));
          v47 = v61 == 0;
          if (++v48 < v45)
          {
            v46 = (v46 + *(a5 + 16));
            if (v61)
            {
              continue;
            }
          }

          break;
        }

        v19 += *(a5 + 2208);
      }

      v22 = v22 + *(a5 + 32);
      v62 = v47 != 0;
      if (v19 >= *(a5 + 24) || v47 != 0)
      {
        v64 = 0;
        if (v12)
        {
          goto LABEL_75;
        }

        goto LABEL_76;
      }
    }
  }

  v64 = 0;
  v47 = 0;
  v62 = 0;
  if (v12)
  {
LABEL_75:
    [v12 invalidate];
  }

LABEL_76:
  v65 = _PKLogCategory(PKLogCategoryProgress[0]);
  v66 = v65;
  if (v62)
  {
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v67 = "";
      LODWORD(buf.a) = 67109634;
      HIDWORD(buf.a) = v47;
      if (v64)
      {
        v67 = "(fatal)";
      }

      LOWORD(buf.b) = 2080;
      *(&buf.b + 2) = v67;
      WORD1(buf.c) = 1024;
      HIDWORD(buf.c) = a4;
      v68 = "lite_render_page: Got error %d%s on page %d.";
      v69 = v66;
      v70 = OS_LOG_TYPE_ERROR;
      v71 = 24;
      goto LABEL_83;
    }
  }

  else if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 67109120;
    HIDWORD(buf.a) = a4;
    v68 = "lite_render_page: Finished page %d.";
    v69 = v66;
    v70 = OS_LOG_TYPE_DEFAULT;
    v71 = 8;
LABEL_83:
    _os_log_impl(&_mh_execute_header, v69, v70, v68, &buf, v71);
  }

  return v47 | (v64 << 32);
}

void sub_100024620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "znProcessBand znXPC service connection %@  error  %@", &v6, 0x16u);
  }
}

void sub_1000248C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = LocalSocketProxy;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100024B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100024BA4(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2 == 3)
  {
    [*(a1 + 32) _cancel];
  }

  else if (a2 == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _listenerReady];
  }
}

void sub_100024C40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _newConnection:v3];
}

void sub_10002512C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 _withPort:*(a1 + 32)];
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

void sub_1000253EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancel];
}

void sub_100025654(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _start];
}

BOOL sub_100025888(uint64_t a1, void *a2, uint64_t a3, char *a4, int64_t a5)
{
  v8 = a2;
  if (a5 < 1)
  {
    v11 = 1;
  }

  else
  {
    v9 = a4;
    do
    {
      v10 = write(*(*(a1 + 32) + 32), a4, a5);
      v11 = v10 != 0;
      if (!v10)
      {
        break;
      }

      *(*(*(a1 + 40) + 8) + 24) += v10;
      v9 += v10;
    }

    while (v9 < &a4[a5]);
  }

  return v11;
}

void sub_1000259EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100025A08(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (a5 || ([WeakRetained _receiveFromHTTP:v10], v9, WeakRetained = objc_loadWeakRetained((a1 + 32)), v9 = WeakRetained, a4))
  {
    [WeakRetained _shutdown];
  }

  else
  {
    [WeakRetained _httpReceive];
  }
}

void sub_100025BAC(id a1, OS_nw_error *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v2;
      v4 = "LocalProxyConnection: couldn't send to http connection: %@";
      v5 = v3;
      v6 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, &v7, v6);
    }
  }

  else
  {
    v3 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      v4 = "LocalProxyConnection: Sent payload from cups back to http.  Need another read event";
      v5 = v3;
      v6 = 2;
      goto LABEL_6;
    }
  }
}

void sub_100026030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002605C(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _connectionReady];
  }
}

void sub_1000260D0(uint64_t a1)
{
  v2 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "can read from fd %d: %@", v6, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _canReadFromSocket];
}

void sub_1000261C0(uint64_t a1)
{
  v2 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "can write to fd %d: %@", v6, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _canWriteToSocket];
}

void sub_10002645C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _shutdown];
}

uint64_t ippWriteIO(void *a1, uint64_t (*a2)(void *, unsigned __int8 *, unint64_t), ipp_t *a3)
{
  v5 = a3;
  v6 = v5;
  v13 = 0;
  v14[0] = 19;
  v7 = 0xFFFFFFFFLL;
  if (a1 && v5)
  {
    v9[0] = a1;
    v9[1] = a2;
    v10 = malloc_type_malloc(0x8001uLL, 0x100004077774924uLL);
    v11 = v10;
    v12 = v10 + 32769;
    sub_1000266F4(v9, &v13, v14, 0, v6);
    v7 = 3;
    sub_10002A3A4(v9);
  }

  return v7;
}

void sub_1000266F4(uint64_t a1, _DWORD *a2, _DWORD *a3, char a4, void *a5)
{
  v9 = a5;
  v10 = v9;
  v11 = *a2;
  if (*a2 != 2)
  {
    if (v11 != 1)
    {
      if (v11)
      {
        goto LABEL_12;
      }

      *a2 = 1;
    }

    v12 = v9;
    if ((a4 & 1) == 0)
    {
      LOBYTE(v27) = 2;
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_100026E84;
      v21 = &unk_1000A2428;
      v22 = &v27;
      sub_100026DB0(a1, 1uLL, &v18);
      LOBYTE(v27) = 0;
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_100026E84;
      v21 = &unk_1000A2428;
      v22 = &v27;
      sub_100026DB0(a1, 1uLL, &v18);
      v13 = [v12 op_or_status];
      LOBYTE(v27) = HIBYTE(v13);
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_100026E84;
      v21 = &unk_1000A2428;
      v22 = &v27;
      sub_100026DB0(a1, 1uLL, &v18);
      LOBYTE(v27) = v13;
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_100026E84;
      v21 = &unk_1000A2428;
      v22 = &v27;
      sub_100026DB0(a1, 1uLL, &v18);
      v14 = [v12 request_id];
      LOBYTE(v27) = HIBYTE(v14);
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_100026E84;
      v21 = &unk_1000A2428;
      v22 = &v27;
      sub_100026DB0(a1, 1uLL, &v18);
      LOBYTE(v27) = BYTE2(v14);
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_100026E84;
      v21 = &unk_1000A2428;
      v22 = &v27;
      sub_100026DB0(a1, 1uLL, &v18);
      LOBYTE(v27) = BYTE1(v14);
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_100026E84;
      v21 = &unk_1000A2428;
      v22 = &v27;
      sub_100026DB0(a1, 1uLL, &v18);
      LOBYTE(v27) = v14;
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_100026E84;
      v21 = &unk_1000A2428;
      v22 = &v27;
      sub_100026DB0(a1, 1uLL, &v18);
    }

    sub_100026D3C(a1);
    *a2 = 2;
    *a3 = 0;

    sub_100026D3C(a1);
  }

  v15 = v10;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100026E94;
  v21 = &unk_1000A2450;
  v26 = a4;
  v23 = a3;
  v24 = a1;
  v25 = a2;
  v16 = v15;
  v22 = v16;
  [v16 enumerateAttributes:&v18];
  if (a4)
  {
    v17 = 55;
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100026E84;
    v30 = &unk_1000A2428;
    v31 = &v17;
    sub_100026DB0(a1, 1uLL, &v27);
    v17 = 0;
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100026E84;
    v30 = &unk_1000A2428;
    v31 = &v17;
    sub_100026DB0(a1, 1uLL, &v27);
    v17 = 0;
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100026E84;
    v30 = &unk_1000A2428;
    v31 = &v17;
    sub_100026DB0(a1, 1uLL, &v27);
    v17 = 0;
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100026E84;
    v30 = &unk_1000A2428;
    v31 = &v17;
    sub_100026DB0(a1, 1uLL, &v27);
    v17 = 0;
  }

  else
  {
    v17 = 3;
  }

  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_100026E84;
  v30 = &unk_1000A2428;
  v31 = &v17;
  sub_100026DB0(a1, 1uLL, &v27);
  sub_100026D3C(a1);
  *a2 = 3;

  sub_100026D3C(a1);
LABEL_12:
}

uint64_t sub_100026D3C(uint64_t result)
{
  if ((*(result + 24) - *(result + 16)) >= 1)
  {
    v1 = result;
    result = (*(result + 8))(*result);
    if (result <= 0)
    {
      v2 = [NSException exceptionWithName:@"IPPInternal" reason:@"ipp stream write failure" userInfo:0];
      objc_exception_throw(v2);
    }

    *(v1 + 24) = *(v1 + 16);
  }

  return result;
}

void sub_100026DB0(uint64_t a1, size_t a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 24);
  if (&v5[a2] >= *(a1 + 32))
  {
    sub_100026D3C(a1);
    v5 = *(a1 + 24);
    if (&v5[a2] >= *(a1 + 32))
    {
      free(*(a1 + 16));
      v5 = malloc_type_malloc(a2, 0x100004077774924uLL);
      *(a1 + 16) = v5;
      *(a1 + 24) = v5;
      *(a1 + 32) = &v5[a2];
    }
  }

  *(a1 + 24) = &v5[a2];
  v6[2]();
}

void sub_100026E94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 64) & 1) == 0)
  {
    v5 = **(a1 + 40);
    if (v5 == [v3 group_tag])
    {
      if (![v4 group_tag])
      {
        goto LABEL_32;
      }
    }

    else
    {
      **(a1 + 40) = [v4 group_tag];
      if (![v4 group_tag])
      {
        goto LABEL_32;
      }

      v6 = *(a1 + 48);
      v59 = [v4 group_tag];
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100026E84;
      v63 = &unk_1000A2428;
      v64 = &v59;
      sub_100026DB0(v6, 1uLL, &v60);
    }
  }

  if (*(a1 + 64))
  {
    v7 = [v4 name];
    v8 = [v7 length];

    if (v8 >= 32758)
    {
      v57 = [NSException exceptionWithName:@"IPPInternal" reason:@"'attr.name' value length too large" userInfo:0];
      objc_exception_throw(v57);
    }

    v9 = *(a1 + 48);
    v59 = 74;
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100026E84;
    v63 = &unk_1000A2428;
    v64 = &v59;
    sub_100026DB0(v9, 1uLL, &v60);
    v10 = *(a1 + 48);
    v59 = 0;
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100026E84;
    v63 = &unk_1000A2428;
    v64 = &v59;
    sub_100026DB0(v10, 1uLL, &v60);
    v11 = *(a1 + 48);
    v59 = 0;
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100026E84;
    v63 = &unk_1000A2428;
    v64 = &v59;
    sub_100026DB0(v11, 1uLL, &v60);
    v12 = *(a1 + 48);
    v59 = BYTE1(v8);
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100026E84;
    v63 = &unk_1000A2428;
    v64 = &v59;
    sub_100026DB0(v12, 1uLL, &v60);
    v13 = *(a1 + 48);
    v59 = v8;
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100026E84;
    v63 = &unk_1000A2428;
    v64 = &v59;
    sub_100026DB0(v13, 1uLL, &v60);
    v14 = *(a1 + 48);
    v15 = [v4 name];
    v16 = [v15 UTF8String];
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100027F54;
    v63 = &unk_1000A2470;
    v64 = v16;
    v65 = v8;
    sub_100026DB0(v14, v8, &v60);

    v17 = [v4 value_tag];
    v18 = *(a1 + 48);
    if (v17 >= 128)
    {
      v59 = 127;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100026E84;
      v63 = &unk_1000A2428;
      v64 = &v59;
      sub_100026DB0(v18, 1uLL, &v60);
      v19 = *(a1 + 48);
      v59 = [v4 value_tag] >> 24;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100026E84;
      v63 = &unk_1000A2428;
      v64 = &v59;
      sub_100026DB0(v19, 1uLL, &v60);
      v20 = *(a1 + 48);
      v59 = [v4 value_tag] >> 16;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100026E84;
      v63 = &unk_1000A2428;
      v64 = &v59;
      sub_100026DB0(v20, 1uLL, &v60);
      v21 = *(a1 + 48);
      v59 = [v4 value_tag] >> 8;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100026E84;
      v63 = &unk_1000A2428;
      v64 = &v59;
      sub_100026DB0(v21, 1uLL, &v60);
      v18 = *(a1 + 48);
    }

    v59 = [v4 value_tag];
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100026E84;
    v63 = &unk_1000A2428;
    v64 = &v59;
    sub_100026DB0(v18, 1uLL, &v60);
    v34 = *(a1 + 48);
    v59 = 0;
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100026E84;
    v63 = &unk_1000A2428;
    v64 = &v59;
    sub_100026DB0(v34, 1uLL, &v60);
    v35 = *(a1 + 48);
    v59 = 0;
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100026E84;
    v63 = &unk_1000A2428;
    v64 = &v59;
    sub_100026DB0(v35, 1uLL, &v60);
    sub_100026D3C(*(a1 + 48));
  }

  else
  {
    v22 = [v4 name];
    v23 = [v22 length];

    if (v23 >= 32762)
    {
      v58 = [NSException exceptionWithName:@"IPPInternal" reason:@"'attr name' value length too large" userInfo:0];
      objc_exception_throw(v58);
    }

    v24 = [v4 value_tag];
    v25 = *(a1 + 48);
    if (v24 >= 128)
    {
      v59 = 127;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100026E84;
      v63 = &unk_1000A2428;
      v64 = &v59;
      sub_100026DB0(v25, 1uLL, &v60);
      v26 = *(a1 + 48);
      v59 = [v4 value_tag] >> 24;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100026E84;
      v63 = &unk_1000A2428;
      v64 = &v59;
      sub_100026DB0(v26, 1uLL, &v60);
      v27 = *(a1 + 48);
      v59 = [v4 value_tag] >> 16;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100026E84;
      v63 = &unk_1000A2428;
      v64 = &v59;
      sub_100026DB0(v27, 1uLL, &v60);
      v28 = *(a1 + 48);
      v59 = [v4 value_tag] >> 8;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100026E84;
      v63 = &unk_1000A2428;
      v64 = &v59;
      sub_100026DB0(v28, 1uLL, &v60);
      v25 = *(a1 + 48);
    }

    v59 = [v4 value_tag];
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100026E84;
    v63 = &unk_1000A2428;
    v64 = &v59;
    sub_100026DB0(v25, 1uLL, &v60);
    v29 = *(a1 + 48);
    v59 = BYTE1(v23);
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100026E84;
    v63 = &unk_1000A2428;
    v64 = &v59;
    sub_100026DB0(v29, 1uLL, &v60);
    v30 = *(a1 + 48);
    v59 = v23;
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100026E84;
    v63 = &unk_1000A2428;
    v64 = &v59;
    sub_100026DB0(v30, 1uLL, &v60);
    v31 = *(a1 + 48);
    v32 = [v4 name];
    v33 = [v32 UTF8String];
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100027F54;
    v63 = &unk_1000A2470;
    v64 = v33;
    v65 = v23;
    sub_100026DB0(v31, v23, &v60);

    sub_100026D3C(*(a1 + 48));
  }

  v36 = [v4 value_tag] - 16;
  v37 = 1023;
  switch(v36)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 5u:
    case 6u:
    case 7u:
      v38 = *(a1 + 48);
      v59 = 0;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100026E84;
      v63 = &unk_1000A2428;
      v64 = &v59;
      sub_100026DB0(v38, 1uLL, &v60);
      v39 = *(a1 + 48);
      v59 = 0;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100026E84;
      v63 = &unk_1000A2428;
      v64 = &v59;
      sub_100026DB0(v39, 1uLL, &v60);
      break;
    case 0x11u:
    case 0x13u:
      v40 = *(a1 + 48);
      v41 = v4;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100027F64;
      v63 = &unk_1000A2498;
      v65 = v40;
      v42 = v41;
      v64 = v42;
      [v42 enumerateValues:&v60];
      sub_100026D3C(v40);
      goto LABEL_28;
    case 0x12u:
      v53 = *(a1 + 48);
      v54 = v4;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100028304;
      v63 = &unk_1000A2498;
      v65 = v53;
      v42 = v54;
      v64 = v42;
      [v42 enumerateValues:&v60];
      sub_100026D3C(v53);
LABEL_28:

      break;
    case 0x21u:
      v47 = *(a1 + 48);
      v48 = v4;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_1000289B0;
      v63 = &unk_1000A2498;
      v64 = v48;
      v65 = v47;
      [v48 enumerateValues:&v60];
      goto LABEL_30;
    case 0x22u:
      v51 = *(a1 + 48);
      v52 = v4;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100028C80;
      v63 = &unk_1000A2498;
      v64 = v52;
      v65 = v51;
      [v52 enumerateValues:&v60];
      goto LABEL_30;
    case 0x23u:
      v49 = *(a1 + 48);
      v50 = v4;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100029220;
      v63 = &unk_1000A2498;
      v64 = v50;
      v65 = v49;
      [v50 enumerateValues:&v60];
      goto LABEL_30;
    case 0x24u:
      v45 = *(a1 + 48);
      v46 = v4;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_100029DF4;
      v63 = &unk_1000A2498;
      v64 = v46;
      v65 = v45;
      [v46 enumerateValues:&v60];
      goto LABEL_30;
    case 0x25u:
    case 0x26u:
      v43 = *(a1 + 48);
      v44 = v4;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_10002980C;
      v63 = &unk_1000A2498;
      v64 = v44;
      v65 = v43;
      [v44 enumerateValues:&v60];
      goto LABEL_30;
    case 0x31u:
    case 0x33u:
    case 0x35u:
      goto LABEL_20;
    case 0x32u:
    case 0x34u:
    case 0x39u:
      v37 = 255;
      goto LABEL_20;
    case 0x36u:
    case 0x37u:
    case 0x38u:
      v37 = 63;
LABEL_20:
      sub_100027EA4(*(a1 + 48), v4, v37);
      break;
    default:
      v55 = *(a1 + 48);
      v56 = v4;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_10002A0A4;
      v63 = &unk_1000A2498;
      v64 = v56;
      v65 = v55;
      [v56 enumerateValues:&v60];
LABEL_30:

      break;
  }

  sub_100026D3C(*(a1 + 48));
LABEL_32:
}

void sub_100027EA4(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100028578;
  v6[3] = &unk_1000A24C0;
  v7 = a2;
  v8 = a1;
  v9 = a3;
  v5 = v7;
  [v5 enumerateValues:v6];
}

void sub_100027F64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v15 = [*(a1 + 32) value_tag];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100026E84;
    v19 = &unk_1000A2428;
    v20 = &v15;
    sub_100026DB0(v6, 1uLL, &v16);
    v7 = *(a1 + 40);
    v15 = 0;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100026E84;
    v19 = &unk_1000A2428;
    v20 = &v15;
    sub_100026DB0(v7, 1uLL, &v16);
    v8 = *(a1 + 40);
    v15 = 0;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100026E84;
    v19 = &unk_1000A2428;
    v20 = &v15;
    sub_100026DB0(v8, 1uLL, &v16);
  }

  v9 = *(a1 + 40);
  v15 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100026E84;
  v19 = &unk_1000A2428;
  v20 = &v15;
  sub_100026DB0(v9, 1uLL, &v16);
  v10 = *(a1 + 40);
  v15 = 4;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100026E84;
  v19 = &unk_1000A2428;
  v20 = &v15;
  sub_100026DB0(v10, 1uLL, &v16);
  v11 = *(a1 + 40);
  v15 = [v5 integer] >> 24;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100026E84;
  v19 = &unk_1000A2428;
  v20 = &v15;
  sub_100026DB0(v11, 1uLL, &v16);
  v12 = *(a1 + 40);
  v15 = [v5 integer] >> 16;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100026E84;
  v19 = &unk_1000A2428;
  v20 = &v15;
  sub_100026DB0(v12, 1uLL, &v16);
  v13 = *(a1 + 40);
  v15 = [v5 integer] >> 8;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100026E84;
  v19 = &unk_1000A2428;
  v20 = &v15;
  sub_100026DB0(v13, 1uLL, &v16);
  v14 = *(a1 + 40);
  v15 = [v5 integer];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100026E84;
  v19 = &unk_1000A2428;
  v20 = &v15;
  sub_100026DB0(v14, 1uLL, &v16);
}

void sub_100028304(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v12 = [*(a1 + 32) value_tag];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100026E84;
    v16 = &unk_1000A2428;
    v17 = &v12;
    sub_100026DB0(v6, 1uLL, &v13);
    v7 = *(a1 + 40);
    v12 = 0;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100026E84;
    v16 = &unk_1000A2428;
    v17 = &v12;
    sub_100026DB0(v7, 1uLL, &v13);
    v8 = *(a1 + 40);
    v12 = 0;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100026E84;
    v16 = &unk_1000A2428;
    v17 = &v12;
    sub_100026DB0(v8, 1uLL, &v13);
  }

  v9 = *(a1 + 40);
  v12 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100026E84;
  v16 = &unk_1000A2428;
  v17 = &v12;
  sub_100026DB0(v9, 1uLL, &v13);
  v10 = *(a1 + 40);
  v12 = 1;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100026E84;
  v16 = &unk_1000A2428;
  v17 = &v12;
  sub_100026DB0(v10, 1uLL, &v13);
  v11 = *(a1 + 40);
  v12 = [v5 BOOLean];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100026E84;
  v16 = &unk_1000A2428;
  v17 = &v12;
  sub_100026DB0(v11, 1uLL, &v13);
}

void sub_100028578(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v29 = [*(a1 + 32) value_tag];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100026E84;
    v31 = &unk_1000A2428;
    v32 = &v29;
    sub_100026DB0(v6, 1uLL, buf);
    v7 = *(a1 + 40);
    v29 = 0;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100026E84;
    v31 = &unk_1000A2428;
    v32 = &v29;
    sub_100026DB0(v7, 1uLL, buf);
    v8 = *(a1 + 40);
    v29 = 0;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100026E84;
    v31 = &unk_1000A2428;
    v32 = &v29;
    sub_100026DB0(v8, 1uLL, buf);
  }

  v9 = [v5 string];
  v11 = v10 == 0;

  if (v11)
  {
    v15 = 0;
  }

  else
  {
    v12 = [v5 string];
    v14 = v13;
    v15 = strlen([v13 UTF8String]);

    if (v15 >= 0x8000)
    {
      v16 = [NSException exceptionWithName:@"IPPInternal" reason:@"'text' value length too large" userInfo:0];
      objc_exception_throw(v16);
    }
  }

  v17 = *(a1 + 48);
  if (v17 < v15)
  {
    v18 = _PKLogCategory(PKLogCategoryDefault[0]);
    v15 = v17;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v5 string];
      v21 = v20;
      *buf = 136315650;
      *&buf[4] = "writeStrings_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v20;
      *&buf[22] = 1024;
      LODWORD(v31) = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: truncating %@ to %u octets", buf, 0x1Cu);
    }
  }

  v22 = *(a1 + 40);
  v29 = BYTE1(v15);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100026E84;
  v31 = &unk_1000A2428;
  v32 = &v29;
  sub_100026DB0(v22, 1uLL, buf);
  v23 = *(a1 + 40);
  v29 = v15;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100026E84;
  v31 = &unk_1000A2428;
  v32 = &v29;
  sub_100026DB0(v23, 1uLL, buf);
  if (v15 >= 1)
  {
    v24 = *(a1 + 40);
    v25 = [v5 string];
    v27 = v26;
    v28 = [v26 UTF8String];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100027F54;
    v31 = &unk_1000A2470;
    v32 = v28;
    v33 = v15;
    sub_100026DB0(v24, v15, buf);
  }

  sub_100026D3C(*(a1 + 40));
}

void sub_1000289B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    LOBYTE(v21) = [*(a1 + 32) value_tag];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100026E84;
    v18 = &unk_1000A2428;
    v19 = &v21;
    sub_100026DB0(v6, 1uLL, &v15);
    v7 = *(a1 + 40);
    LOBYTE(v21) = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100026E84;
    v18 = &unk_1000A2428;
    v19 = &v21;
    sub_100026DB0(v7, 1uLL, &v15);
    v8 = *(a1 + 40);
    LOBYTE(v21) = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100026E84;
    v18 = &unk_1000A2428;
    v19 = &v21;
    sub_100026DB0(v8, 1uLL, &v15);
  }

  v9 = *(a1 + 40);
  LOBYTE(v21) = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100026E84;
  v18 = &unk_1000A2428;
  v19 = &v21;
  sub_100026DB0(v9, 1uLL, &v15);
  v10 = *(a1 + 40);
  LOBYTE(v21) = 11;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100026E84;
  v18 = &unk_1000A2428;
  v19 = &v21;
  sub_100026DB0(v10, 1uLL, &v15);
  v11 = *(a1 + 40);
  v12 = [v5 date];
  v22 = v13;
  v23 = v14;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100027F54;
  v18 = &unk_1000A2470;
  v19 = &v21;
  v20 = 11;
  v21 = v12;
  sub_100026DB0(v11, 0xBuLL, &v15);
  sub_100026D3C(*(a1 + 40));
}

void sub_100028C80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v21 = [*(a1 + 32) value_tag];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_100026E84;
    v25 = &unk_1000A2428;
    v26 = &v21;
    sub_100026DB0(v6, 1uLL, &v22);
    v7 = *(a1 + 40);
    v21 = 0;
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_100026E84;
    v25 = &unk_1000A2428;
    v26 = &v21;
    sub_100026DB0(v7, 1uLL, &v22);
    v8 = *(a1 + 40);
    v21 = 0;
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_100026E84;
    v25 = &unk_1000A2428;
    v26 = &v21;
    sub_100026DB0(v8, 1uLL, &v22);
  }

  v9 = *(a1 + 40);
  v21 = 0;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100026E84;
  v25 = &unk_1000A2428;
  v26 = &v21;
  sub_100026DB0(v9, 1uLL, &v22);
  v10 = *(a1 + 40);
  v21 = 9;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100026E84;
  v25 = &unk_1000A2428;
  v26 = &v21;
  sub_100026DB0(v10, 1uLL, &v22);
  v11 = *(a1 + 40);
  v21 = [v5 resolution] >> 24;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100026E84;
  v25 = &unk_1000A2428;
  v26 = &v21;
  sub_100026DB0(v11, 1uLL, &v22);
  v12 = *(a1 + 40);
  v21 = [v5 resolution] >> 16;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100026E84;
  v25 = &unk_1000A2428;
  v26 = &v21;
  sub_100026DB0(v12, 1uLL, &v22);
  v13 = *(a1 + 40);
  v21 = [v5 resolution] >> 8;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100026E84;
  v25 = &unk_1000A2428;
  v26 = &v21;
  sub_100026DB0(v13, 1uLL, &v22);
  v14 = *(a1 + 40);
  v21 = [v5 resolution];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100026E84;
  v25 = &unk_1000A2428;
  v26 = &v21;
  sub_100026DB0(v14, 1uLL, &v22);
  v15 = *(a1 + 40);
  v21 = [v5 resolution] >> 56;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100026E84;
  v25 = &unk_1000A2428;
  v26 = &v21;
  sub_100026DB0(v15, 1uLL, &v22);
  v16 = *(a1 + 40);
  v21 = [v5 resolution] >> 48;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100026E84;
  v25 = &unk_1000A2428;
  v26 = &v21;
  sub_100026DB0(v16, 1uLL, &v22);
  v17 = *(a1 + 40);
  v21 = ([v5 resolution] >> 32) >> 8;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100026E84;
  v25 = &unk_1000A2428;
  v26 = &v21;
  sub_100026DB0(v17, 1uLL, &v22);
  v18 = *(a1 + 40);
  v21 = [v5 resolution] >> 32;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100026E84;
  v25 = &unk_1000A2428;
  v26 = &v21;
  sub_100026DB0(v18, 1uLL, &v22);
  v19 = *(a1 + 40);
  [v5 resolution];
  v21 = v20;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100026E84;
  v25 = &unk_1000A2428;
  v26 = &v21;
  sub_100026DB0(v19, 1uLL, &v22);
  sub_100026D3C(*(a1 + 40));
}

void sub_100029220(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    LOBYTE(v27) = [*(a1 + 32) value_tag];
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_100026E84;
    v32 = &unk_1000A2428;
    v33 = &v27;
    sub_100026DB0(v6, 1uLL, &v29);
    v7 = *(a1 + 40);
    LOBYTE(v27) = 0;
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_100026E84;
    v32 = &unk_1000A2428;
    v33 = &v27;
    sub_100026DB0(v7, 1uLL, &v29);
    v8 = *(a1 + 40);
    LOBYTE(v27) = 0;
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_100026E84;
    v32 = &unk_1000A2428;
    v33 = &v27;
    sub_100026DB0(v8, 1uLL, &v29);
  }

  v9 = *(a1 + 40);
  LOBYTE(v27) = 0;
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100026E84;
  v32 = &unk_1000A2428;
  v33 = &v27;
  sub_100026DB0(v9, 1uLL, &v29);
  v10 = *(a1 + 40);
  LOBYTE(v27) = 8;
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100026E84;
  v32 = &unk_1000A2428;
  v33 = &v27;
  sub_100026DB0(v10, 1uLL, &v29);
  v11 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v12 = BYTE3(v27);
  }

  else
  {
    v12 = 0;
    v27 = 0;
  }

  v28 = v12;
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100026E84;
  v32 = &unk_1000A2428;
  v33 = &v28;
  sub_100026DB0(v11, 1uLL, &v29);
  v13 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v14 = BYTE2(v27);
  }

  else
  {
    v14 = 0;
    v27 = 0;
  }

  v28 = v14;
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100026E84;
  v32 = &unk_1000A2428;
  v33 = &v28;
  sub_100026DB0(v13, 1uLL, &v29);
  v15 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v16 = v27 >> 8;
  }

  else
  {
    LOBYTE(v16) = 0;
    v27 = 0;
  }

  v28 = v16;
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100026E84;
  v32 = &unk_1000A2428;
  v33 = &v28;
  sub_100026DB0(v15, 1uLL, &v29);
  v17 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v18 = v27;
  }

  else
  {
    v18 = 0;
    v27 = 0;
  }

  v28 = v18;
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100026E84;
  v32 = &unk_1000A2428;
  v33 = &v28;
  sub_100026DB0(v17, 1uLL, &v29);
  v19 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v20 = HIBYTE(v27);
  }

  else
  {
    v20 = 0;
    v27 = 0;
  }

  v28 = v20;
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100026E84;
  v32 = &unk_1000A2428;
  v33 = &v28;
  sub_100026DB0(v19, 1uLL, &v29);
  v21 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v22 = BYTE6(v27);
  }

  else
  {
    v22 = 0;
    v27 = 0;
  }

  v28 = v22;
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100026E84;
  v32 = &unk_1000A2428;
  v33 = &v28;
  sub_100026DB0(v21, 1uLL, &v29);
  v23 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v24 = HIDWORD(v27) >> 8;
  }

  else
  {
    LOBYTE(v24) = 0;
    v27 = 0;
  }

  v28 = v24;
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100026E84;
  v32 = &unk_1000A2428;
  v33 = &v28;
  sub_100026DB0(v23, 1uLL, &v29);
  v25 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v26 = BYTE4(v27);
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v28 = v26;
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100026E84;
  v32 = &unk_1000A2428;
  v33 = &v28;
  sub_100026DB0(v25, 1uLL, &v29);
  sub_100026D3C(*(a1 + 40));
}

void sub_10002980C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v49 = [*(a1 + 32) value_tag];
    v50 = _NSConcreteStackBlock;
    v51 = 3221225472;
    v52 = sub_100026E84;
    v53 = &unk_1000A2428;
    v54 = &v49;
    sub_100026DB0(v6, 1uLL, &v50);
    v7 = *(a1 + 40);
    v49 = 0;
    v50 = _NSConcreteStackBlock;
    v51 = 3221225472;
    v52 = sub_100026E84;
    v53 = &unk_1000A2428;
    v54 = &v49;
    sub_100026DB0(v7, 1uLL, &v50);
    v8 = *(a1 + 40);
    v49 = 0;
    v50 = _NSConcreteStackBlock;
    v51 = 3221225472;
    v52 = sub_100026E84;
    v53 = &unk_1000A2428;
    v54 = &v49;
    sub_100026DB0(v8, 1uLL, &v50);
  }

  v9 = [v5 string];

  if (v9)
  {
    v11 = [v5 string];
    v13 = v12;
    v14 = strlen([v11 UTF8String]) + 4;
  }

  else
  {
    v14 = 4;
  }

  v15 = [v5 string];
  v17 = v16;

  if (v17)
  {
    v18 = [v5 string];
    v20 = v19;
    v14 += strlen([v19 UTF8String]);
  }

  if (v14 >= 0x8000)
  {
    v48 = [NSException exceptionWithName:@"IPPInternal" reason:@"'text' value length too large" userInfo:0];
    objc_exception_throw(v48);
  }

  v21 = *(a1 + 40);
  v49 = BYTE1(v14);
  v50 = _NSConcreteStackBlock;
  v51 = 3221225472;
  v52 = sub_100026E84;
  v53 = &unk_1000A2428;
  v54 = &v49;
  sub_100026DB0(v21, 1uLL, &v50);
  v22 = *(a1 + 40);
  v49 = v14;
  v50 = _NSConcreteStackBlock;
  v51 = 3221225472;
  v52 = sub_100026E84;
  v53 = &unk_1000A2428;
  v54 = &v49;
  sub_100026DB0(v22, 1uLL, &v50);
  v23 = [v5 string];

  if (v23)
  {
    v25 = [v5 string];
    v27 = v26;
    LODWORD(v23) = strlen([v25 UTF8String]);
  }

  v28 = *(a1 + 40);
  v49 = BYTE1(v23);
  v50 = _NSConcreteStackBlock;
  v51 = 3221225472;
  v52 = sub_100026E84;
  v53 = &unk_1000A2428;
  v54 = &v49;
  sub_100026DB0(v28, 1uLL, &v50);
  v29 = *(a1 + 40);
  v49 = v23;
  v50 = _NSConcreteStackBlock;
  v51 = 3221225472;
  v52 = sub_100026E84;
  v53 = &unk_1000A2428;
  v54 = &v49;
  sub_100026DB0(v29, 1uLL, &v50);
  if (v23 >= 1)
  {
    v30 = *(a1 + 40);
    v31 = [v5 string];
    v33 = v32;
    v34 = [v31 UTF8String];
    v50 = _NSConcreteStackBlock;
    v51 = 3221225472;
    v52 = sub_100027F54;
    v53 = &unk_1000A2470;
    v54 = v34;
    v55 = v23;
    sub_100026DB0(v30, v23, &v50);
  }

  v35 = [v5 string];
  v37 = v36;

  if (v37)
  {
    v38 = [v5 string];
    v40 = v39;
    LODWORD(v37) = strlen([v39 UTF8String]);
  }

  v41 = *(a1 + 40);
  v49 = BYTE1(v37);
  v50 = _NSConcreteStackBlock;
  v51 = 3221225472;
  v52 = sub_100026E84;
  v53 = &unk_1000A2428;
  v54 = &v49;
  sub_100026DB0(v41, 1uLL, &v50);
  v42 = *(a1 + 40);
  v49 = v37;
  v50 = _NSConcreteStackBlock;
  v51 = 3221225472;
  v52 = sub_100026E84;
  v53 = &unk_1000A2428;
  v54 = &v49;
  sub_100026DB0(v42, 1uLL, &v50);
  if (v37 >= 1)
  {
    v43 = *(a1 + 40);
    v44 = [v5 string];
    v46 = v45;
    v47 = [v45 UTF8String];
    v50 = _NSConcreteStackBlock;
    v51 = 3221225472;
    v52 = sub_100027F54;
    v53 = &unk_1000A2470;
    v54 = v47;
    v55 = v37;
    sub_100026DB0(v43, v37, &v50);
  }

  sub_100026D3C(*(a1 + 40));
}

void sub_100029DF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    LOBYTE(v15) = [*(a1 + 32) value_tag];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100026E84;
    v19 = &unk_1000A2428;
    v20 = &v15;
    sub_100026DB0(v6, 1uLL, &v16);
    v7 = *(a1 + 40);
    LOBYTE(v15) = 0;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100026E84;
    v19 = &unk_1000A2428;
    v20 = &v15;
    sub_100026DB0(v7, 1uLL, &v16);
    v8 = *(a1 + 40);
    LOBYTE(v15) = 0;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100026E84;
    v19 = &unk_1000A2428;
    v20 = &v15;
    sub_100026DB0(v8, 1uLL, &v16);
  }

  v9 = *(a1 + 40);
  LOBYTE(v15) = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100026E84;
  v19 = &unk_1000A2428;
  v20 = &v15;
  sub_100026DB0(v9, 1uLL, &v16);
  v10 = *(a1 + 40);
  LOBYTE(v15) = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100026E84;
  v19 = &unk_1000A2428;
  v20 = &v15;
  sub_100026DB0(v10, 1uLL, &v16);
  v11 = [v5 collection];

  if (!v11)
  {
    v14 = [NSException exceptionWithName:@"IPPInternal" reason:@"IPP Value nil" userInfo:0];
    objc_exception_throw(v14);
  }

  v15 = 0;
  LODWORD(v16) = 19;
  v12 = *(a1 + 40);
  v13 = [v5 collection];
  sub_1000266F4(v12, &v15, &v16, 1, v13);

  sub_100026D3C(*(a1 + 40));
}

void sub_10002A0A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v17 = [*(a1 + 32) value_tag];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100026E84;
    v21 = &unk_1000A2428;
    v22 = &v17;
    sub_100026DB0(v6, 1uLL, &v18);
    v7 = *(a1 + 40);
    v17 = 0;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100026E84;
    v21 = &unk_1000A2428;
    v22 = &v17;
    sub_100026DB0(v7, 1uLL, &v18);
    v8 = *(a1 + 40);
    v17 = 0;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100026E84;
    v21 = &unk_1000A2428;
    v22 = &v17;
    sub_100026DB0(v8, 1uLL, &v18);
  }

  v9 = [v5 unknown];
  v10 = [v9 length];

  if (v10 >= 0x8000)
  {
    v16 = [NSException exceptionWithName:@"IPPInternal" reason:@"'unknown' value length too large" userInfo:0];
    objc_exception_throw(v16);
  }

  v11 = *(a1 + 40);
  v17 = BYTE1(v10);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100026E84;
  v21 = &unk_1000A2428;
  v22 = &v17;
  sub_100026DB0(v11, 1uLL, &v18);
  v12 = *(a1 + 40);
  v17 = v10;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100026E84;
  v21 = &unk_1000A2428;
  v22 = &v17;
  sub_100026DB0(v12, 1uLL, &v18);
  if (v10 >= 1)
  {
    v13 = *(a1 + 40);
    v14 = [v5 unknown];
    v15 = [v14 bytes];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100027F54;
    v21 = &unk_1000A2470;
    v22 = v15;
    v23 = v10 & 0x7FFFFFFF;
    sub_100026DB0(v13, v23, &v18);
  }

  sub_100026D3C(*(a1 + 40));
}

uint64_t sub_10002A3A4(uint64_t a1)
{
  sub_100026D3C(a1);
  free(*(a1 + 16));
  return a1;
}

void sub_10002A658(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_10002AD50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10002ADDC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _browserForServiceType:*(a1 + 32) changedFrom:v10 to:v9 done:a4];

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_10002B030(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 4)
  {
    return 0;
  }

  v6 = [[NSString alloc] initWithBytes:a4 length:a5 encoding:4];
  v7 = [v6 lowercaseString];
  v8 = [v7 componentsSeparatedByString:{@", "}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = +[NSCharacterSet whitespaceCharacterSet];
        v15 = [v13 stringByTrimmingCharactersInSet:v14];

        LOBYTE(v14) = [v15 isEqualToString:*(a1 + 32)];
        if (v14)
        {
          v16 = 1;
          goto LABEL_13;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

void sub_10002B418(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_10002B56C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

id _PKLogCategory(void *a1)
{
  v1 = a1;
  if (qword_1000C7C08 != -1)
  {
    sub_100060468();
  }

  v2 = [qword_1000C7C00 objectForKeyedSubscript:v1];
  if (!v2)
  {
    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  return v2;
}

void withDebuggableSemaphore(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  add = atomic_fetch_add(dword_1000C7758, 1u);
  v8 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109378;
    v15 = add;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%d] synchronous callout from %{public}@ - begin", &v14, 0x12u);
  }

  v9 = dispatch_semaphore_create(0);
  v6[2](v6, v9);
  v10 = dispatch_time(0, (a3 * 1000000000.0));
  v11 = dispatch_semaphore_wait(v9, v10);
  v12 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "timed out";
    v14 = 67109634;
    v15 = add;
    if (!v11)
    {
      v13 = "completed";
    }

    v16 = 2114;
    v17 = v5;
    v18 = 2082;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%d] synchronous callout from %{public}@ - %{public}s", &v14, 0x1Cu);
  }
}

void sub_10002B93C(id a1)
{
  v8[0] = PKLogCategoryDefault[0];
  v1 = os_log_create("com.apple.printing", [(__CFString *)PKLogCategoryDefault[0] UTF8String]);
  v9[0] = v1;
  v8[1] = PKLogCategoryNetwork[0];
  v2 = os_log_create("com.apple.printing", [(__CFString *)PKLogCategoryNetwork[0] UTF8String]);
  v9[1] = v2;
  v8[2] = PKLogCategoryDiscovery[0];
  v3 = os_log_create("com.apple.printing", [(__CFString *)PKLogCategoryDiscovery[0] UTF8String]);
  v9[2] = v3;
  v8[3] = PKLogCategoryProgress[0];
  v4 = os_log_create("com.apple.printing", [(__CFString *)PKLogCategoryProgress[0] UTF8String]);
  v9[3] = v4;
  v8[4] = PKLogCategoryFramework;
  v5 = os_log_create("com.apple.printing", unk_1000C93B8(PKLogCategoryFramework, "UTF8String"));
  v9[4] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
  v7 = qword_1000C7C00;
  qword_1000C7C00 = v6;
}

void sub_10002BAA4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10002C2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_10002C33C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[NSString alloc] initWithData:v5 encoding:4];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

void sub_10002E1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v11 = va_arg(va1, id);
  objc_destroyWeak(va1);

  objc_destroyWeak(va);
  objc_destroyWeak((v9 - 48));
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

void sub_10002E1F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [WeakRetained _extensionContextForUUID:v7];

    v10 = v9;
    v11 = [v10 _auxiliaryConnection];

    if (v11)
    {
      v12 = [v10 _auxiliaryConnection];
      v13 = [v12 remoteObjectProxyWithErrorHandler:&stru_1000A25D8];

      v14 = *(a1 + 32);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10002E584;
      v15[3] = &unk_1000A2628;
      objc_copyWeak(&v16, (a1 + 48));
      objc_copyWeak(&v17, (a1 + 40));
      [v13 _gatherPrintersForPrintInfo:v14 reply:v15];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v16);
    }

    else
    {
      v13 = _PKLogCategory(PKLogCategoryDiscovery[0]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Browse_Extension: Unexpected nil aux connection", buf, 2u);
      }
    }
  }

  else
  {
    v10 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Browse_Extension: Unexpected context identifier %@", buf, 0xCu);
    }
  }
}

void sub_10002E4B4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Extension connection failed with error: '%@'", &v4, 0xCu);
  }
}

void sub_10002E584(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = [v3 count];

    if (v6)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10002E688;
      v7[3] = &unk_1000A2600;
      objc_copyWeak(&v8, (a1 + 32));
      objc_copyWeak(&v9, (a1 + 40));
      [v3 enumerateObjectsUsingBlock:v7];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&v8);
    }
  }
}

void sub_10002E65C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));

  _Unwind_Resume(a1);
}

void sub_10002E688(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 identifier];
  [WeakRetained _addPrinterFromDictionary_anyq:v6 extensionIdentifier:v5];
}

void sub_10002E714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10002E8B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v11 = v8;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "PrintKitExtension(%@): error %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002EA18;
    v9[3] = &unk_1000A2678;
    v9[4] = *(a1 + 32);
    [v5 enumerateObjectsUsingBlock:v9];
  }
}

void sub_10002EA18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PrintKitExtension(%@): poking at %@", &v6, 0x16u);
  }

  [*(a1 + 32) _invokeExtension_anyq:v3];
}

void sub_10002EFA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained addEntity];
  v2[2](v2, *(a1 + 32));
}

void sub_10002F394(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) failureResponse];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002F4B4;
    v6[3] = &unk_1000A26C8;
    v5 = *(a1 + 40);
    v8 = *(a1 + 48);
    v7 = *(a1 + 32);
    [v3 _authenticatedRequestForRequest:v5 challengeResponse:v4 reply:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10002F4B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = [v3 valueForHTTPHeaderField:@"Authorization"];
    v5 = v4;
    if (v4 && ![v4 rangeOfString:@"Bearer "])
    {
      v6 = [v5 substringFromIndex:{objc_msgSend(@"Bearer ", "length")}];
      if (v6)
      {
        v7 = [*(a1 + 32) protectionSpace];
        [v7 realm];
        OAuth2 = _CFURLCredentialCreateOAuth2();

        if (OAuth2)
        {
          v9 = [[NSURLCredential alloc] _initWithCFURLCredential:OAuth2];
          (*(*(a1 + 40) + 16))();
          CFRelease(OAuth2);

          goto LABEL_6;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    (*(*(a1 + 40) + 16))();
LABEL_6:

    goto LABEL_8;
  }

  (*(*(a1 + 40) + 16))();
LABEL_8:
}

void sub_10002F76C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [*(a1 + 32) _extensionContextForUUID:v7];
    v9 = [v8 _auxiliaryConnection];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 remoteObjectProxyWithErrorHandler:&stru_1000A2710];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v14 = _PKLogCategory(PKLogCategoryDiscovery[0]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Browse_Extension: Unexpected nil aux connection", &v15, 2u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v12 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v15 = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unexpected context identifier %{public}@ for extension %{public}@", &v15, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10002F9B4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Extension connection failed with error: '%@'", &v4, 0xCu);
  }
}

void sub_10002FAEC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[NSString alloc] initWithData:v5 encoding:1];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

uint64_t sub_10002FB9C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 _findAttribute0:a2 valueTag:0];
  v7 = v6;
  if (v6 && [v6 num_values])
  {
    v8 = v5[2](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_10002FC40(id a1, ipp_attribute_t *a2)
{
  v2 = [(ipp_attribute_t *)a2 values];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 BOOLean];

  return v4;
}

int sub_10002FCB4(id a1, ipp_attribute_t *a2)
{
  v2 = [(ipp_attribute_t *)a2 values];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 integer];

  return v4;
}

uint64_t getNamedAttr<PKJobState>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_10002FB9C(v3, v4, &stru_1000A27B8);
  v6 = validate_enum<PKJobState,unsigned char>(v5);

  return v6;
}

id getNamedAttr<NSString * {__strong}>(void *a1, uint64_t a2)
{
  v2 = sub_10002FDD4(a1, a2, &stru_1000A27F8);

  return v2;
}

id sub_10002FDD4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 _findAttribute0:a2 valueTag:0];
  v7 = v6;
  if (v6 && [v6 num_values])
  {
    v8 = v5[2](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

NSString *__cdecl sub_10002FE8C(id a1, ipp_attribute_t *a2)
{
  v2 = a2;
  v3 = [(ipp_attribute_t *)v2 values];
  if ([v3 count] != 1)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 string];
  v7 = v6;

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = _PKLogCategory(PKLogCategoryFramework);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "attribute value expected to be a string", v10, 2u);
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return v7;
}

id getNamedAttr<NSURL * {__strong}>(void *a1, uint64_t a2)
{
  v2 = getNamedAttr<NSString * {__strong}>(a1, a2);
  if (v2)
  {
    v3 = [NSURL URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id getNamedAttr<NSArray<NSString *> * {__strong}>(void *a1, uint64_t a2)
{
  v2 = sub_10002FDD4(a1, a2, &stru_1000A2838);

  return v2;
}

NSMutableArray *__cdecl sub_10003007C(id a1, ipp_attribute_t *a2)
{
  v2 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003015C;
  v5[3] = &unk_1000A2860;
  v3 = objc_opt_new();
  v6 = v3;
  [(ipp_attribute_t *)v2 enumerateValues:v5];

  return v3;
}

void sub_10003015C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v9 = v4;
  v6 = [v4 string];
  v8 = v7;
  [v5 addObject:v7];
}

id getNamedAttr<NSArray<NSNumber *> * {__strong}>(void *a1, uint64_t a2)
{
  v2 = sub_10002FDD4(a1, a2, &stru_1000A2880);

  return v2;
}

NSMutableArray *__cdecl sub_100030224(id a1, ipp_attribute_t *a2)
{
  v2 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100030304;
  v5[3] = &unk_1000A2860;
  v3 = objc_opt_new();
  v6 = v3;
  [(ipp_attribute_t *)v2 enumerateValues:v5];

  return v3;
}

void sub_100030304(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v7 = v4;
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 integer]);
  [v5 addObject:v6];
}

id getNamedAttr<NSArray<ipp_collection_t *> * {__strong}>(void *a1, void *a2)
{
  v3 = a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003049C;
  v8[3] = &unk_1000A28D0;
  v9 = a2;
  v10 = v3;
  v4 = v3;
  v5 = v9;
  v6 = sub_10002FDD4(v4, v5, v8);

  return v6;
}

id sub_10003049C(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100030678;
  v12 = &unk_1000A28A8;
  v14 = &v15;
  v4 = objc_opt_new();
  v13 = v4;
  [v3 enumerateValues:&v9];
  if (*(v16 + 24) == 1 && [v4 count])
  {
    v5 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Expected ipp record with empty collection value to be completely empty for %@ (%@)", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v15, 8);

  return v4;
}

void sub_100030638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100030678(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 collection];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 collection];
    [v5 addObject:v6];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void Printd_Parameters::_set_PrinterURI(void **this, NSURL *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000307D8;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void sub_1000307F0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [a4 absoluteString];
  if (v9)
  {
    [v7 _addString:a2 valueTag:69 name:v8 lang:0 value:v9];
  }

  else
  {
    v10 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "IPP url badly formed for attribute name '%@'", &v11, 0xCu);
    }
  }
}

id Printd_Parameters::_set_AttributeFidelity(void **this, char a2)
{
  v2 = *this;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003099C;
  v4[3] = &unk_1000A2918;
  v5 = a2;
  return [v2 _withGroupingBehavior:v4];
}

void Printd_Parameters::_set_JobPasswordEncryption(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100030A64;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void sub_100030A80(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a1;
  v9 = a4;
  v10 = a5;
  if (a3 == 257)
  {
    a3 = canonicalizeTypeTagForNameAndStringValue(v9, v10);
  }

  [v11 _addString:a2 valueTag:a3 name:v9 lang:0 value:v10];
}

void Printd_Parameters::_set_RequestedAttributes(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100030BF0;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_RequestingUserName(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100030CC0;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_del_RequestingUserName(id *this)
{
  v2 = [*this _findAttribute0:@"requesting-user-name" valueTag:66];
  if (v2)
  {
    [*this _deleteAttribute:v2];
  }
}

void Printd_Parameters::_set_DocumentPassword(void **this, NSData *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100030E0C;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void sub_100030E24(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a1;
  v7 = a3;
  v8 = a4;
  [v9 _addOctetString:a2 name:v7 data:objc_msgSend(v8 length:{"bytes"), objc_msgSend(v8, "length")}];
}

id Printd_Parameters::_set_MyJobsOnly(void **this, char a2)
{
  v2 = *this;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100030F48;
  v4[3] = &unk_1000A2918;
  v5 = a2;
  return [v2 _withGroupingBehavior:v4];
}

void Printd_Parameters::_set_WhichJobs(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100031010;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_JobAccountingUserID(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000310DC;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

id Printd_Parameters::_set_LastDocument(void **this, char a2)
{
  v2 = *this;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031168;
  v4[3] = &unk_1000A2918;
  v5 = a2;
  return [v2 _withGroupingBehavior:v4];
}

void Printd_Parameters::_set_FinishingsCol(void **this, ipp_collection_t *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100031230;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_MediaCol(void **this, PKMediaCol *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000312F8;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void sub_100031310(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a1;
  v7 = a3;
  v8 = [a4 collection];
  [v9 _addCollection:a2 name:v7 value:v8];
}

void Printd_Parameters::_set_Finishings(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003146C;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void sub_100031488(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a4;
  v11 = a5;
  v12 = [v11 count];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100034914;
  v14[3] = &unk_1000A2960;
  v13 = v11;
  v15 = v13;
  [v9 _addIntegers:a2 valueTag:a3 name:v10 count:v12 adder:v14];
}

id Printd_Parameters::_set_OrientationRequested(void **this, ipp_orient_e a2)
{
  v2 = *this;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003174C;
  v4[3] = &unk_1000A2938;
  v5 = a2;
  return [v2 _withGroupingBehavior:v4];
}

id Printd_Parameters::_set_PrintQuality(void **this, ipp_quality_e a2)
{
  v2 = *this;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000317D8;
  v4[3] = &unk_1000A2938;
  v5 = a2;
  return [v2 _withGroupingBehavior:v4];
}

id Printd_Parameters::_set_JobPagesPerSet(void **this, int a2)
{
  v2 = *this;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031864;
  v4[3] = &unk_1000A2938;
  v5 = a2;
  return [v2 _withGroupingBehavior:v4];
}

id Printd_Parameters::_set_Copies(void **this, int a2)
{
  v2 = *this;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000318F0;
  v4[3] = &unk_1000A2938;
  v5 = a2;
  return [v2 _withGroupingBehavior:v4];
}

id Printd_Parameters::_get_JobStateReasons(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"job-state-reasons");

  return v1;
}

void Printd_Parameters::_set_MultipleDocumentHandling(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100031D70;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_OutputBin(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100031E3C;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_OutputMode(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100031F08;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_PrintColorMode(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100031FD4;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_PrintScaling(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000320A0;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_Sides(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100032180;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_Media(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003224C;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_JobAccountID(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100032318;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

id Printd_Parameters::_set_DestinationJobID(void **this, int a2)
{
  v2 = *this;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000323D4;
  v4[3] = &unk_1000A2938;
  v5 = a2;
  return [v2 _withGroupingBehavior:v4];
}

void Printd_Parameters::_set_JobPassword(void **this, NSData *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000325B8;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_DocumentFormat(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100032680;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_JobName(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003274C;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

id Printd_Parameters::_get_JobName(void **this)
{
  v1 = getNamedAttr<NSString * {__strong}>(*this, @"job-name");

  return v1;
}

id Printd_Parameters::_set_PrinterID(void **this, int a2)
{
  v2 = *this;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000328FC;
  v4[3] = &unk_1000A2938;
  v5 = a2;
  return [v2 _withGroupingBehavior:v4];
}

void Printd_Parameters::_set_Message(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000329C8;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_IdentifyActions(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100032A94;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

void Printd_Parameters::_set_JobAuthorizationURI(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100032B64;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

id Printd_Parameters::_get_JobAuthorizationURI(void **this)
{
  v1 = getNamedAttr<NSString * {__strong}>(*this, @"job-authorization-uri");

  return v1;
}

void Printd_Parameters::_set_Compression(void **this, NSString *a2)
{
  v3 = a2;
  v4 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100032D54;
  v6[3] = &unk_1000A28F8;
  v7 = v3;
  v5 = v3;
  [v4 _withGroupingBehavior:v6];
}

id Printd_Parameters::_get_PrinterKind(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"printer-kind");

  return v1;
}

id Printd_Parameters::_get_PrinterStateReasons(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"printer-state-reasons");

  return v1;
}

double sub_100033100(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

id Printd_Parameters::_get_PrinterLocation(void **this)
{
  v1 = getNamedAttr<NSString * {__strong}>(*this, @"printer-location");

  return v1;
}

id Printd_Parameters::_get_PrinterMakeAndModel(void **this)
{
  v1 = getNamedAttr<NSString * {__strong}>(*this, @"printer-make-and-model");

  return v1;
}

id Printd_Parameters::_get_PrinterStateMessage(void **this)
{
  v1 = getNamedAttr<NSString * {__strong}>(*this, @"printer-state-message");

  return v1;
}

id Printd_Parameters::_get_PrinterStringsURI(void **this)
{
  v1 = getNamedAttr<NSURL * {__strong}>(*this, @"printer-strings-uri");

  return v1;
}

id Printd_Parameters::_get_PrinterMoreInfo(void **this)
{
  v1 = getNamedAttr<NSURL * {__strong}>(*this, @"printer-more-info");

  return v1;
}

id Printd_Parameters::_get_OperationsSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSNumber *> * {__strong}>(*this, @"operations-supported");

  return v1;
}

id Printd_Parameters::_get_CompressionSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"compression-supported");

  return v1;
}

id Printd_Parameters::_get_JobPresetsSupported(void **this)
{
  v1 = getNamedAttr<NSArray<ipp_collection_t *> * {__strong}>(*this, @"job-presets-supported");

  return v1;
}

id Printd_Parameters::_get_DocumentFormatSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"document-format-supported");

  return v1;
}

id Printd_Parameters::_get_PrintColorModeSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"print-color-mode-supported");

  return v1;
}

id Printd_Parameters::_get_SidesSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"sides-supported");

  return v1;
}

id Printd_Parameters::_get_URFSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"urf-supported");

  return v1;
}

id Printd_Parameters::_get_OutputModeSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"output-mode-supported");

  return v1;
}

id Printd_Parameters::_get_PrinterUUID(void **this)
{
  v1 = getNamedAttr<NSURL * {__strong}>(*this, @"printer-uuid");

  return v1;
}

id Printd_Parameters::_get_PrinterDNS_SD_Name(void **this)
{
  v1 = getNamedAttr<NSString * {__strong}>(*this, @"printer-dns-sd-name");

  return v1;
}

id Printd_Parameters::_get_URIAuthenticationSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"uri-authentication-supported");

  return v1;
}

id Printd_Parameters::_get_PrinterURISupported(void **this)
{
  v1 = getNamedAttr<NSURL * {__strong}>(*this, @"printer-uri-supported");

  return v1;
}

void Real_IPP_Message::_Response::_multiResponse(id *a1, void *a2)
{
  v18 = a2;
  v3 = sub_1000347D8(a1);
  v4 = +[PKIPP makeEmptyResponse];
  [v4 setState:{objc_msgSend(v3, "state")}];
  [v4 setOp_or_status:{objc_msgSend(v3, "op_or_status")}];
  for (i = 0; ; ++i)
  {
    v6 = [v3 attrs];
    v7 = [v6 count];

    if (i >= v7)
    {
      break;
    }

    v8 = [v3 attrs];
    v9 = [v8 objectAtIndexedSubscript:i];

    if ([v9 group_tag])
    {
      v10 = [v4 attrs];
      for (j = 0; ; ++j)
      {
        if (j >= [v10 count])
        {
          v16 = [v4 attrs];
          [v16 addObject:v9];
          goto LABEL_11;
        }

        v12 = [v10 objectAtIndexedSubscript:j];
        v13 = [v12 name];
        v14 = [v9 name];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          break;
        }
      }

      v16 = [v4 attrs];
      [v16 replaceObjectAtIndex:j withObject:v9];
LABEL_11:
    }

    else
    {
      v19 = v4;
      v18[2](v18, &v19);
    }
  }

  v17 = v4;
  v19 = v17;
  v18[2](v18, &v19);
}

uint64_t canonicalizeTypeTagForNameAndStringValue(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  if ([(NSString *)v3 isEqualToString:IPPNomenclature::keyMedia])
  {
    v5 = pwgCanonicalName(v4);
    if (v5)
    {
      v6 = 68;
    }

    else
    {
      v6 = 66;
    }
  }

  else
  {
    v7 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ERROR: name %@ has no canonicalization mapping", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

id sub_100034914(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v3 = [v2 integerValue];

  return v3;
}

void sub_100034C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NANBrowse_Entity;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100035010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_10003540C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 mutableCopy];
  v8 = [v7 objectForKeyedSubscript:@"note"];
  v9 = v8;
  if (!v8)
  {
    v8 = CFSTR("(no note");
  }

  v10 = [(__CFString *)v8 stringByAppendingString:@" (NAN)"];
  [v7 setObject:v10 forKeyedSubscript:@"note"];

  v11 = [v7 objectForKeyedSubscript:@"display-name"];
  v12 = v11;
  if (!v11)
  {
    v11 = CFSTR("(no display-name");
  }

  v13 = [(__CFString *)v11 stringByAppendingString:@" (NAN)"];
  [v7 setObject:v13 forKeyedSubscript:@"display-name"];

  v14 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    *buf = 138412802;
    v23 = v5;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NAN Resolution result for %@ from %@ txt %@", buf, 0x20u);
  }

  if (v7)
  {
    v16 = *(a1 + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000356A4;
    v17[3] = &unk_1000A2988;
    objc_copyWeak(&v21, (a1 + 56));
    v18 = v5;
    v19 = v7;
    v20 = *(a1 + 48);
    dispatch_async(v16, v17);

    objc_destroyWeak(&v21);
  }
}

void sub_1000356A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _ingestPrinter:*(a1 + 32) txt:*(a1 + 40) dataSession:*(a1 + 48)];
}

void sub_1000358F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, id location)
{
  objc_destroyWeak((v19 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100035950(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Browse_NAN: Termination error %@", &v4, 0xCu);
  }
}

void sub_100035A20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Browse_NAN: Activated %@ with error %@", &v7, 0x16u);
  }

  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained activatedConnection:*(a1 + 32) forEndpoint:*(a1 + 40)];
  }
}

void sub_100035CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100035CF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Browse_NAN: endpoint found %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startDataSession:v3];
}

void sub_100035DF8(id a1, PKNANEndpoint *a2)
{
  v2 = a2;
  v3 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Browse_NAN: endpoint lost %@", &v4, 0xCu);
  }
}

void sub_100035EC8(id a1, PKNANEndpoint *a2, unsigned int a3)
{
  v4 = a2;
  v5 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v4;
    v8 = 1024;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Browse_NAN: endpoint changed %@ 0x%x", &v6, 0x12u);
  }
}

void sub_100035FB4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Browse_NAN: Activated, error result %@", &v5, 0xCu);
  }

  if (v2)
  {
    v4 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Browse_NAN: check wifip2p preferences dump=true: %@", &v5, 0xCu);
    }
  }
}

void sub_1000361D0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000C7C10;
  qword_1000C7C10 = v1;
}

void sub_100036928(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000369F4;
  v4[3] = &unk_1000A0510;
  objc_copyWeak(&v6, (a1 + 48));
  v5 = *(a1 + 32);
  [v2 resolveOnQueue:v3 completionHandler:v4];

  objc_destroyWeak(&v6);
}

void sub_1000369F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _entityResolved:*(a1 + 32)];
}

void sub_100036DB4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10003707C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000370C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8 = 138412546;
    v9 = WeakRetained;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resolution result for %@ %@", &v8, 0x16u);
  }

  if (v4)
  {
    v7 = objc_loadWeakRetained((a1 + 48));
    [v7 _ingestPrinterAttributes:v4];
  }

  dispatch_async(*(a1 + 32), *(a1 + 40));
}

void sub_100037858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_100037E38(&a34);

  _Block_object_dispose((v40 - 192), 8);
  _Unwind_Resume(a1);
}

Class sub_100037A28()
{
  if (qword_1000C7C30 != -1)
  {
    sub_1000604A4();
  }

  result = objc_getClass("WPDeviceScanner");
  qword_1000C7C20 = result;
  off_1000C7838 = sub_100037A7C;
  return result;
}

void sub_100037A88(id a1)
{
  qword_1000C7C28 = dlopen("/System/Library/PrivateFrameworks/WirelessProximity.framework/WirelessProximity", 2);
  if (!qword_1000C7C28)
  {
    NSLog(@"### Failed to Soft Linked: /System/Library/PrivateFrameworks/WirelessProximity.framework/WirelessProximity");
  }
}

id sub_100037AC4(uint64_t a1)
{
  if ((*a1 & 0x20) != 0)
  {
    v4 = *(a1 + 5);
    v2 = 30;
  }

  else
  {
    if ((*a1 & 0x10) == 0)
    {
      v1 = 0;
      goto LABEL_7;
    }

    LODWORD(v4) = *(a1 + 5);
    v2 = 2;
  }

  inet_ntop(v2, &v4, v5, 0x400u);
  v1 = [NSString stringWithUTF8String:v5, v4];
LABEL_7:

  return v1;
}

uint64_t sub_100037B80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100037B98(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = a2;
  if ([v17 group_tag] != 4)
  {
    goto LABEL_15;
  }

  v5 = [v17 name];
  if ([v5 compare:@"printer-uri-supported"])
  {
  }

  else
  {
    v6 = [v17 value_tag];

    if (v6 == 69)
    {
      v7 = 32;
LABEL_9:
      v10 = *(*(a1 + v7) + 8);
      v11 = v17;
      v8 = *(v10 + 40);
      *(v10 + 40) = v11;
      goto LABEL_10;
    }
  }

  v8 = [v17 name];
  if ([v8 compare:@"printer-id"])
  {
LABEL_10:

    goto LABEL_11;
  }

  v9 = [v17 value_tag];

  if (v9 == 33)
  {
    v7 = 40;
    goto LABEL_9;
  }

LABEL_11:
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (v12)
    {
      if (ippGetIXInteger(v12, 0) == *(a1 + 56))
      {
        v13 = ippGetIXString(*(*(*(a1 + 32) + 8) + 40), 0);
        v14 = PKURLWithString(v13);
        v15 = *(*(a1 + 48) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        *a3 = 1;
      }
    }
  }

LABEL_15:
}

void sub_100037DC4(void *a1)
{
  sub_100037E38(a1);

  operator delete();
}

void sub_100037E00(void *a1)
{
  sub_100037E38(a1);

  operator delete();
}

uint64_t sub_100037E38(void *a1)
{
  *a1 = off_1000A2C38;
  v1 = a1[3];
  if (v1)
  {

    operator delete();
  }

  v2 = a1[4];
  if (v2)
  {

    operator delete();
  }

  return sub_10000B548(a1);
}

uint64_t urfWriteLine(uint64_t a1, void *__src, int a3, int a4, int a5)
{
  result = 0;
  if (a1 && a3 >= 1 && a4 >= 1)
  {
    v8 = *(a1 + 80);
    v9 = *(a1 + 40);
    if (v9 <= v8)
    {
      result = 0;
      *(a1 + 112) = "Too many lines in page image";
      return result;
    }

    v11 = __src;
    if (v8 + a4 <= v9)
    {
      v12 = a4;
    }

    else
    {
      v12 = v9 - v8;
    }

    v13 = *(a1 + 72);
    v14 = v12 + v8;
    *(a1 + 80) = v12 + v8;
    v15 = *(a1 + 84);
    __n = v13 / a3;
    if (v15)
    {
      if (*(a1 + 88) == a3)
      {
        v16 = *(a1 + 64);
        if (!memcmp(__src, v16, __n))
        {
          *(a1 + 84) = v15 + v12;
          if (a5)
          {
            *(a1 + 64) = v11;
          }

          else
          {
            v17 = *(a1 + 56);
            if (v16 != v17)
            {
              memcpy(v17, v11, v13);
              *(a1 + 64) = *(a1 + 56);
              v14 = *(a1 + 80);
              v9 = *(a1 + 40);
            }
          }

          if (v14 >= v9)
          {
            while (*(a1 + 84))
            {
              v18 = sub_100038090(a1);
              result = 0;
              if (!v18)
              {
                return result;
              }
            }
          }

          return 1;
        }
      }

      while (*(a1 + 84))
      {
        result = sub_100038090(a1);
        if (!result)
        {
          return result;
        }
      }
    }

    *(a1 + 84) = v12;
    *(a1 + 88) = a3;
    if (!a5 && *(a1 + 80) < *(a1 + 40))
    {
      memcpy(*(a1 + 56), v11, __n);
      v11 = *(a1 + 56);
    }

    *(a1 + 64) = v11;
    if (*(a1 + 80) >= *(a1 + 40))
    {
      while (*(a1 + 84))
      {
        result = sub_100038090(a1);
        if (!result)
        {
          return result;
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_100038090(uint64_t a1)
{
  v1 = *(a1 + 24) - 16;
  v2 = v1 > 0x30;
  v3 = (1 << v1) & 0x1000100000001;
  if (v2 || v3 == 0)
  {
    v37 = *(a1 + 84);
    if (v37 >= 0x100)
    {
      v37 = 256;
    }

    v38 = *(a1 + 96);
    *v38 = v37 - 1;
    v39 = v38 + 1;
    v40 = *(a1 + 88);
    *(a1 + 84) -= v37;
    v41 = *(a1 + 72) / v40;
    if (v41 >= 1)
    {
      v42 = *(a1 + 24) >> 3;
      v43 = *(a1 + 64);
      v44 = (v43 + v41);
      v45 = (v43 + v41 - v42);
      if (*(a1 + 25) == 6)
      {
        v46 = 0;
      }

      else
      {
        v46 = 255;
      }

      v74 = v46;
      v72 = 2 * v42;
      v47 = 0x80 / v40;
      while (v74 != *v43 || memcmp(v43, (v43 + 1), &v44[~v43]))
      {
        v48 = (v43 + v42);
        if ((v43 + v42) == v44)
        {
          *v39 = v40 - 1;
          v65 = v39 + 1;
          memcpy(v65, v43, v42);
          v39 = &v65[v42];
          goto LABEL_105;
        }

        v49 = memcmp(v43, (v43 + v42), v42);
        v50 = v48 < v45;
        if (v49)
        {
          if (v40 > 0x40 || v48 >= v45)
          {
            v52 = 1;
            v53 = v40 < 0x41;
          }

          else
          {
            v51 = (v43 + v72);
            v52 = 1;
            while (memcmp(v48, v51, v42))
            {
              v48 += v42;
              ++v52;
              v50 = v51 < v45;
              v53 = v52 < v47;
              if (v52 < v47)
              {
                v23 = v51 >= v45;
                v51 += v42;
                if (!v23)
                {
                  continue;
                }
              }

              goto LABEL_86;
            }

            v53 = 1;
            v50 = 1;
          }

LABEL_86:
          v58 = v50 || !v53;
          if (v58)
          {
            v59 = 0;
          }

          else
          {
            v59 = v42;
          }

          v57 = &v48[v59];
          v60 = v52 + (v58 ^ 1u);
          *v39++ = 1 - v60 * v40;
          if (v40 == 1)
          {
            v61 = v60 * v42;
            memcpy(v39, v43, v61);
            v39 += v61;
          }

          else
          {
            do
            {
              v62 = v40;
              do
              {
                memcpy(v39, v43, v42);
                v39 += v42;
                --v62;
              }

              while (v62);
              v43 += v42;
              --v60;
            }

            while (v60);
          }
        }

        else
        {
          if (v40 > 0x2A || v48 >= v45)
          {
            LOBYTE(v55) = 2;
          }

          else
          {
            v54 = (v43 + v72);
            v55 = 2;
            do
            {
              if (memcmp(v48, v54, v42))
              {
                break;
              }

              v48 += v42;
              if (++v55 >= v47)
              {
                break;
              }

              v23 = v54 >= v45;
              v54 += v42;
            }

            while (!v23);
          }

          *v39 = v55 * v40 - 1;
          v56 = v39 + 1;
          memcpy(v56, v43, v42);
          v39 = &v56[v42];
          v57 = &v48[v42];
        }

        v43 = v57;
        if (v57 >= v44)
        {
          goto LABEL_105;
        }
      }

      *v39++ = 0x80;
    }

LABEL_105:
    v63 = a1;
    v64 = &v39[-*(a1 + 96)];
  }

  else
  {
    v5 = *(a1 + 84);
    if (v5 >= 0x100)
    {
      v5 = 256;
    }

    v6 = *(a1 + 96);
    *v6 = v5 - 1;
    v7 = v6 + 1;
    v8 = *(a1 + 88);
    *(a1 + 84) -= v5;
    v9 = *(a1 + 72) / v8;
    if (v9 < 1)
    {
LABEL_100:
      v28 = v7;
    }

    else
    {
      v10 = *(a1 + 24);
      v11 = v10 >> 4;
      v12 = *(a1 + 64);
      v13 = &v12[v9];
      v14 = &v12[v9 + -2 * (v10 >> 4)];
      if (*(a1 + 25) == 6)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0xFFFF;
      }

      v71 = v15;
      v16 = 2 * v11;
      v68 = 4 * v11;
      v69 = v13 - 2;
      v73 = 0x80 / v8;
      v70 = v13;
      while (1)
      {
        if (v71 == *v12 && !memcmp(v12, v12 + 2, v69 - v12))
        {
          *v7++ = 0x80;
          goto LABEL_100;
        }

        v17 = &v12[2 * v11];
        if (v17 == v13)
        {
          break;
        }

        v18 = memcmp(v12, &v12[2 * v11], 2 * v11);
        v19 = v17 < v14;
        if (v18)
        {
          if (v8 > 0x40 || v17 >= v14)
          {
            LOBYTE(v21) = 1;
            v22 = v8 < 0x41;
          }

          else
          {
            v20 = &v12[v68];
            v21 = 1;
            while (memcmp(v17, v20, 2 * v11))
            {
              ++v21;
              v19 = v20 < v14;
              v17 += v16;
              v22 = v21 < v73;
              if (v21 < v73)
              {
                v23 = v20 >= v14;
                v20 += v16;
                if (!v23)
                {
                  continue;
                }
              }

              goto LABEL_40;
            }

            v22 = 1;
            v19 = 1;
          }

LABEL_40:
          v30 = v19 || !v22;
          if (v30)
          {
            v31 = 0;
          }

          else
          {
            v31 = v10 >> 4;
          }

          v27 = &v17[2 * v31];
          *v7 = 1 - (v21 + (v30 ^ 1)) * v8;
          v28 = v7 + 1;
          if (v12 >= v27)
          {
            v13 = v70;
          }

          else
          {
            v13 = v70;
            do
            {
              v32 = v8;
              do
              {
                if (v10 >= 0x10)
                {
                  v33 = 0;
                  v34 = v28;
                  do
                  {
                    v35 = &v12[2 * v33];
                    *v34 = v35[1];
                    v36 = *v35;
                    v28 = v34 + 2;
                    v34[1] = v36;
                    ++v33;
                    v34 += 2;
                  }

                  while (v11 != v33);
                }

                --v32;
              }

              while (v32);
              v12 += v16;
            }

            while (v12 < v27);
          }
        }

        else
        {
          if (v8 > 0x2A || v17 >= v14)
          {
            LOBYTE(v25) = 2;
          }

          else
          {
            v24 = &v12[v68];
            v25 = 2;
            do
            {
              if (memcmp(v17, v24, 2 * v11))
              {
                break;
              }

              ++v25;
              v17 += v16;
              if (v25 >= v73)
              {
                break;
              }

              v23 = v24 >= v14;
              v24 += v16;
            }

            while (!v23);
          }

          *v7 = v25 * v8 - 1;
          v26 = v7 + 1;
          if (v10 >= 0x10)
          {
            v29 = v11 + 1;
            do
            {
              *v26 = v17[1];
              v27 = v17 + 2;
              v28 = v26 + 2;
              v26[1] = *v17;
              --v29;
              v26 += 2;
              v17 += 2;
            }

            while (v29 > 1);
          }

          else
          {
            v27 = v17;
            v28 = v26;
          }
        }

        v7 = v28;
        v12 = v27;
        if (v27 >= v13)
        {
          goto LABEL_101;
        }
      }

      *v7++ = v8 - 1;
      if (v10 < 0x10)
      {
        goto LABEL_100;
      }

      do
      {
        *v7 = v12[1];
        v28 = v7 + 2;
        v7[1] = *v12;
        v7 += 2;
        v12 += 2;
      }

      while (v12 < v13);
    }

LABEL_101:
    v63 = a1;
    v64 = &v28[-*(a1 + 96)];
    if (v64 > *(a1 + 104))
    {
      sub_1000604B8();
    }
  }

  if ((*v63)(*(v63 + 8)) == v64)
  {
    return 1;
  }

  result = 0;
  *(v63 + 112) = "Unable to write line";
  return result;
}

uint64_t urfWritePage(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      v4 = *(result + 16);
      if (v4 && *(result + 20) >= v4)
      {
        result = 0;
        v9 = "Done writing all pages";
      }

      else
      {
        result = _urfSetLineSize(result, a2);
        if (!result)
        {
          return result;
        }

        v10 = *a2;
        v11 = *(a2 + 2);
        v12 = vrev32_s8(*(a2 + 12));
        v5 = bswap32(*(a2 + 5));
        v14 = 0;
        v13 = v5;
        if ((*v3)(*(v3 + 8), &v10, 32) == 32)
        {
          ++*(v3 + 20);
          *(v3 + 80) = 0;
          v6 = 2 * *(v3 + 72) + 2;
          if (v6 <= *(v3 + 104))
          {
            return 1;
          }

          v7 = *(v3 + 96);
          if (v7)
          {
            v8 = malloc_type_realloc(v7, 2 * *(v3 + 72) + 2, 0x100004077774924uLL);
            if (v8)
            {
LABEL_10:
              *(v3 + 96) = v8;
              *(v3 + 104) = v6;
              return 1;
            }
          }

          else
          {
            v8 = malloc_type_malloc(2 * *(v3 + 72) + 2, 0x100004077774924uLL);
            if (v8)
            {
              goto LABEL_10;
            }
          }

          free(*(v3 + 96));
          result = 0;
          *(v3 + 96) = 0;
          *(v3 + 104) = 0;
          v9 = "Unable to allocate memory for compression buffer";
        }

        else
        {
          result = 0;
          v9 = "Unable to write page header";
        }
      }
    }

    else
    {
      result = 0;
      v9 = "NULL page header";
    }

    *(v3 + 112) = v9;
  }

  return result;
}

uint64_t urfWriteStart(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    *(result + 16) = a2;
    v3 = 0x54534152494E55;
    v4 = HIBYTE(a2);
    v5 = BYTE2(a2);
    v6 = BYTE1(a2);
    v7 = a2;
    if ((*result)(*(result + 8), &v3, 12) == 12)
    {
      return 1;
    }

    else
    {
      result = 0;
      *(v2 + 112) = "Unable to write file header";
    }
  }

  return result;
}

uint64_t liteSetThreadPriority(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v1 = dword_10006B930[a1];
  }

  return pthread_set_qos_class_self_np(v1, 0);
}

void sub_10003A2EC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10003A60C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 loggingValue:{objc_msgSend(*(a1 + 32), "value_tag")}];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"<nil for value tag>";
  }

  [*(a1 + 40) addObject:v4];
}

const char *ippTagString(int a1)
{
  if (a1 > 74)
  {
    return "UNKNOWN";
  }

  v2 = off_1000A2FE0[a1];

  return [(__CFString *)v2 UTF8String];
}

void sub_10003ADEC(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + 16) = v2;
  objc_exception_rethrow();
}

void sub_10003ADFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_10003B0A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10003B260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_10003B2AC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 loggingDict];
  [v2 addObject:?];
}

id sub_10003B508(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

char *sub_10003B6E0(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = [*(a1 + 8) length];
  v7 = *(a1 + 8);
  if (&v6[-*a1] < a3)
  {
    a3 = &v6[-*a1];
  }

  [*(a1 + 8) getBytes:a2 range:?];
  *a1 += a3;
  return a3;
}

void sub_10003B880(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10003BBC8(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003BC3C;
  v3[3] = &unk_1000A2D40;
  v3[4] = *(a1 + 32);
  return [a2 withNewEmptyValue:v3];
}

void sub_10003BD6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003BE1C;
  v6[3] = &unk_1000A2DB8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_10003BE1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rangeValue];
  v5 = v4 + 1;
  v7 = v4 + v6;
  v8 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_10003BEC4;
  v9[3] = &unk_1000A2D80;
  v10 = v5;
  v11 = v7;
  [v8 withNewEmptyValue:v9];
}

id sub_10003BFBC(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003C030;
  v3[3] = &unk_1000A2E00;
  v4 = *(a1 + 32);
  return [a2 withNewEmptyValue:v3];
}

id sub_10003C110(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003C184;
  v3[3] = &unk_1000A2E40;
  v4 = *(a1 + 32);
  return [a2 withNewEmptyValue:v3];
}

void sub_10003C3EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = v8;
        }

        v10 = *(a1 + 48);
        if (v10 == 72)
        {
          v11 = sub_10003C630(v7);
        }

        else if (v10 == 71)
        {
          v11 = [v7 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
        }

        else
        {
          v11 = v7;
        }

        v12 = v11;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3321888768;
        v16[2] = sub_10003C6BC;
        v16[3] = &unk_1000A2E80;
        v13 = v8;
        v17 = v13;
        v14 = v12;
        v18 = v14;
        [v3 withNewEmptyValue:v16];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }
}

__CFString *sub_10003C630(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"c"])
  {
    v2 = [v1 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  }

  else
  {
    v2 = @"en";
  }

  return v2;
}

void sub_10003C6BC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5)
  {
    [v5 setString:{v3, v4}];
  }

  else
  {
  }
}

id sub_10003C748(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_10003C784(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_10003C8B8(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003C958;
  v3[3] = &unk_1000A2EE0;
  v4 = *(a1 + 32);
  [a2 withNewEmptyValue:v3];
}

id sub_10003CA54(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003CAD0;
  v3[3] = &unk_1000A2F00;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  return [a2 withNewEmptyValue:v3];
}

id sub_10003CBC0(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003CC3C;
  v3[3] = &unk_1000A2F00;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  return [a2 withNewEmptyValue:v3];
}

void sub_10003CC3C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [NSData dataWithBytes:*(a1 + 32) length:*(a1 + 40)];
  [v4 setUnknown:v3];
}

void sub_10003CE54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) && *(a1 + 40))
  {
    v4 = 0;
    do
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10003CF4C;
      v5[3] = &unk_1000A2F48;
      v6 = *(a1 + 32);
      v7 = v4;
      [v3 withNewEmptyValue:v5];

      ++v4;
    }

    while (*(a1 + 40) > v4);
  }
}

void sub_10003CF4C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 40);
  [v4 setInteger:(*(*(a1 + 32) + 16))()];
}

void sub_10003D0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10003D134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003D14C(uint64_t a1, void *a2, BOOL *a3)
{
  v11 = a2;
  v6 = [v11 name];
  *a3 = [v6 caseInsensitiveCompare:*(a1 + 32)] == 0;

  if (*a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (*(a1 + 48))
    {
      v7 = [v11 value_tag];
      v8 = *(a1 + 48);
      if (v7 != v8 && (v7 != 53 || v8 != 65) && (v7 != 65 || v8 != 53))
      {
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;
      }
    }
  }
}

void sub_10003D574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_10003D5C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = *(a1 + 32);
    v5 = [v3 loggingDict];
    [v4 addObject:v5];
  }

  else
  {
    v6 = [v3 name];
    v7 = *(*(a1 + 40) + 8);
    v5 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_10003DC60(_Unwind_Exception *a1)
{
  v8 = v3;

  _Unwind_Resume(a1);
}

void ippAddSeparator(ipp_t *a1)
{
  v2 = a1;
  if (v2)
  {
    v1 = [(ipp_t *)v2 addNewEmptyAttribute:0 groupTag:0 valueTag:0];
  }
}

id ippGetIXInteger(ipp_attribute_t *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  if ([(ipp_attribute_t *)v3 value_tag]== 33)
  {
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = [(ipp_attribute_t *)v4 value_tag];
    v6 = 0;
    if ((a2 & 0x80000000) != 0 || v5 != 35)
    {
      goto LABEL_10;
    }
  }

  v7 = a2;
  if ([(ipp_attribute_t *)v4 num_values]<= a2)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v8 = [(ipp_attribute_t *)v4 values];
  v9 = [v8 objectAtIndexedSubscript:v7];
  v6 = [v9 integer];

LABEL_10:
  return v6;
}

id ippGetIXString(ipp_attribute_t *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && (a2 & 0x80000000) == 0)
  {
    v6 = a2;
    if ([(ipp_attribute_t *)v3 num_values]> a2 && ((v7 = [(ipp_attribute_t *)v4 value_tag], v7 - 55 > 0xFFFFFFFD) || v7 - 74 >= 0xFFFFFFF7))
    {
      v8 = [(ipp_attribute_t *)v4 values];
      v9 = [v8 objectAtIndexedSubscript:v6];
      v10 = [v9 string];
      v5 = v11;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

BOOL ippCoerceAttrToValue(ipp_t *a1, ipp_attribute_t *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_11;
  }

  if ([(ipp_attribute_t *)v6 value_tag]== a3)
  {
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  v9 = [(ipp_attribute_t *)v7 value_tag];
  v8 = 0;
  if (a3 > 50)
  {
    if (a3 <= 53)
    {
      if (a3 == 51)
      {
        if (v9 == 33)
        {
          v13 = [(ipp_attribute_t *)v7 num_values];
          if (v13)
          {
            v14 = 0;
            do
            {
              v15 = [(ipp_attribute_t *)v7 values];
              v16 = [v15 objectAtIndexedSubscript:v14];
              v17 = [v16 integer];

              v18 = [(ipp_attribute_t *)v7 values];
              v19 = [v18 objectAtIndexedSubscript:v14];
              v52[0] = v17;
              v52[1] = v17;
              [v19 setRange:v52];

              ++v14;
            }

            while (v13 != v14);
          }

          [(ipp_attribute_t *)v7 setValueTag:51];
          goto LABEL_10;
        }

        goto LABEL_41;
      }

      if (a3 != 53)
      {
        goto LABEL_11;
      }

      if (v9 != 65)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (a3 != 54)
      {
        if (a3 != 66)
        {
          if (a3 == 68)
          {
            v8 = v9 == 66 || v9 == 54;
          }

          goto LABEL_11;
        }

        if (v9 == 68)
        {
          a3 = 66;
LABEL_9:
          [(ipp_attribute_t *)v7 setValueTag:a3];
          goto LABEL_10;
        }

LABEL_41:
        v8 = 0;
        goto LABEL_11;
      }

      if (v9 != 66 && v9 != 68)
      {
        goto LABEL_41;
      }
    }

    v20 = [(ipp_t *)v5 attrs];
    if ([v20 count] >= 3)
    {
      v21 = [(ipp_t *)v5 attrs];
      v22 = [v21 objectAtIndexedSubscript:1];
      v23 = [v22 name];
      if ([v23 compare:@"attributes-natural-language"])
      {
        v24 = [(ipp_t *)v5 attrs];
        v25 = v5;
        v26 = [v24 objectAtIndexedSubscript:0];
        if ([v26 value_tag] == 72)
        {
          v27 = [(ipp_t *)v25 attrs];
          v28 = [v27 objectAtIndexedSubscript:0];
          v50 = [v28 num_values];

          v5 = v25;
          if (v50)
          {
            v29 = [(ipp_t *)v25 attrs];
            v30 = [v29 objectAtIndexedSubscript:1];

            if ([v30 num_values])
            {
              v31 = [v30 values];
              v32 = [v31 objectAtIndexedSubscript:0];
              v33 = [v32 string];
              v51 = v34;
            }

            else
            {
              v51 = 0;
            }

            goto LABEL_46;
          }

LABEL_45:
          v35 = +[NSLocale currentLocale];
          v30 = [v35 objectForKey:NSLocaleLanguageCode];

          v51 = sub_10003C630(v30);
LABEL_46:

          v36 = [(ipp_attribute_t *)v7 num_values];
          if (v36)
          {
            v37 = 0;
            do
            {
              v38 = [(ipp_attribute_t *)v7 values];
              v39 = [v38 objectAtIndexedSubscript:v37];
              v40 = [v39 string];
              v42 = v41;

              v43 = v51;
              v44 = [(ipp_attribute_t *)v7 values];
              v45 = v5;
              v46 = [v44 objectAtIndexedSubscript:v37];
              v47 = v43;
              v48 = v42;
              v49 = v48;
              if (v46)
              {
                [v46 setString:{v51, v42}];
              }

              else
              {
              }

              ++v37;
              v5 = v45;
            }

            while (v36 != v37);
          }

          [(ipp_attribute_t *)v7 setValueTag:54];

          goto LABEL_10;
        }

        v5 = v25;
      }
    }

    goto LABEL_45;
  }

  if ((a3 - 16) < 4 || (a3 - 21) < 3)
  {
    if ([(ipp_attribute_t *)v7 num_values])
    {
      v10 = [(ipp_attribute_t *)v7 values];
      [v10 removeAllObjects];
    }

    goto LABEL_9;
  }

LABEL_11:

  return v8;
}

uint64_t validate_enum<ipp_tag_e,unsigned char>(int a1)
{
  result = 0xFFFFFFFFLL;
  switch(a1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 20:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
      return result;
    case 16:
      result = 16;
      break;
    case 17:
      result = 17;
      break;
    case 18:
      result = 18;
      break;
    case 19:
      result = 19;
      break;
    case 21:
      result = 21;
      break;
    case 22:
      result = 22;
      break;
    case 23:
      result = 23;
      break;
    case 33:
      result = 33;
      break;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    default:
      if (a1 == 127)
      {
        result = 127;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      break;
  }

  return result;
}

uint64_t validate_enum<ipp_res_e,unsigned char>(int a1)
{
  if (a1 == 3)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t validate_enum<PKJobState,unsigned char>(int a1)
{
  if ((a1 - 3) >= 6)
  {
    return 9;
  }

  else
  {
    return (a1 - 3) + 3;
  }
}

uint64_t validate_enum<ipp_orient_e,unsigned char>(char a1)
{
  if (((a1 - 4) & 0xFC) != 0)
  {
    return 3;
  }

  else
  {
    return (a1 - 4) + 4;
  }
}

uint64_t validate_enum<ipp_quality_e,unsigned char>(int a1)
{
  if (a1 == 5)
  {
    v1 = 5;
  }

  else
  {
    v1 = 3;
  }

  if (a1 == 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

void sub_10003EBE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"  %@", a2];
  [v2 addObject:?];
}

BOOL liteInitURF(void *a1, uint64_t a2, int a3)
{
  v113 = 0;
  v109 = a1;
  v4 = [v109 objectForKeyedSubscript:@"URF"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 componentsSeparatedByString:{@", "}];
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  v107 = (a2 + 1528);
  v105 = a2 + 2020;
  v106 = (a2 + 752);
  while ([v6 count] > v7)
  {
    v8 = [v6 objectAtIndexedSubscript:v7];
    v9 = [v8 UTF8String];

    v10 = *v9;
    if (v10 > 0x48)
    {
      if (*v9 > 0x4Eu)
      {
        if (v10 == 79)
        {
          if (v9[1] == 66)
          {
            *(a2 + 1584) = sub_10003F958(v9 + 2, a2 + 1788, 50);
            goto LABEL_56;
          }
        }

        else if (v10 == 82 && v9[1] == 83)
        {
          *(a2 + 2000) = sub_10003F958(v9 + 2, v105, 4);
          goto LABEL_56;
        }
      }

      else if (v10 == 73)
      {
        if (v9[1] == 83)
        {
          *(a2 + 548) = sub_10003F958(v9 + 2, v106, 50);
          goto LABEL_56;
        }
      }

      else if (v10 == 77 && v9[1] == 84)
      {
        *(a2 + 1524) = sub_10003F958(v9 + 2, v107, 14);
        goto LABEL_56;
      }

      goto LABEL_33;
    }

    if (v10 == 67)
    {
      if (v9[1] == 80)
      {
        *(a2 + 128) = atoi(v9 + 2) > 1;
        goto LABEL_56;
      }

      goto LABEL_33;
    }

    if (v10 != 68)
    {
      if (v10 == 70 && v9[1] == 78)
      {
        *(a2 + 140) = sub_10003F958(v9 + 2, a2 + 144, 101);
        goto LABEL_56;
      }

LABEL_33:
      if (!strcmp(v9, "SRGB24"))
      {
        *(a2 + 120) |= 2u;
      }

      else if (!strncmp(v9, "ADOBERGB", 8uLL))
      {
        v14 = sub_10003F958(v9 + 8, v114, 4);
        if (v14 < 1)
        {
          v19 = 0;
        }

        else
        {
          v15 = v114;
          v16 = 1;
          do
          {
            v18 = *v15++;
            v17 = v18;
            if (v16 >= v14)
            {
              break;
            }

            ++v16;
          }

          while (v17 != 48);
          v19 = v17 == 48;
        }

        *(a2 + 2008) = v19;
      }

      else if (!strncmp(v9, "P3E48", 5uLL))
      {
        *(a2 + 2012) = 1;
      }

      else if (!strncmp(v9, "WE16", 4uLL))
      {
        *(a2 + 2016) = 1;
      }

      else if (v10 == 86)
      {
        v12 = sub_10003F958(v9 + 1, v114, 2);
        if (v12 >= 1)
        {
          v13 = v12 != 1;
          if (v114[0] != 1)
          {
            v13 = 0;
          }

          if (v114[1] <= 1)
          {
            v13 = 0;
          }

          if (v114[0] > 1 || v13)
          {
            *(a2 + 2004) = 1;
          }
        }
      }

      goto LABEL_56;
    }

    if (v9[1] != 77)
    {
      goto LABEL_33;
    }

    v11 = v9[2];
    if (v11 >= 49)
    {
      *(a2 + 120) |= 1u;
      LOBYTE(v11) = v9[2];
    }

    if (v11 == 51)
    {
      *(a2 + 136) = 2;
    }

    else if (v11 == 50)
    {
      *(a2 + 136) = 1;
    }

LABEL_56:
    ++v7;
  }

  v20 = *(a2 + 548);
  if (v20 >= 2)
  {
    *(a2 + 548) = v20 + 1;
    v106[v20] = 0;
  }

  v21 = *(a2 + 1524);
  if (v21 >= 2)
  {
    *(a2 + 1524) = v21 + 1;
    v107[v21] = 0;
  }

  v22 = *(a2 + 1584);
  if (v22 >= 2)
  {
    *(a2 + 1584) = v22 + 1;
    *(a2 + 1788 + 4 * v22) = 0;
  }

  for (i = 0; [v6 count] > i; ++i)
  {
    v24 = [v6 objectAtIndexedSubscript:i];
    v25 = [v24 UTF8String];

    if (*v25 == 79 && v25[1] == 70 && v25[2] == 85)
    {
      v26 = sub_10003F958(v25 + 3, v114, 50);
      if (v26 != 1 || v114[0])
      {
        if (v26 >= 1)
        {
          v28 = v26;
          v29 = v114;
          do
          {
            v31 = *v29++;
            v30 = v31;
            if (v31 <= 49)
            {
              *(a2 + 1588 + 4 * v30) = 1;
            }

            --v28;
          }

          while (v28);
        }
      }

      else
      {
        v27 = *(a2 + 1584);
        if (v27 >= 1)
        {
          memset_pattern16((a2 + 1588), &unk_10006B970, 4 * v27);
        }
      }
    }
  }

  v32 = *(a2 + 2000);
  if (!v32)
  {
    v32 = 1;
    *(a2 + 2000) = 1;
    *(a2 + 2020) = 300;
  }

  *(a2 + 1996) = *(v105 + 4 * (v32 / 2));
  v33 = *(a2 + 1524);
  if (v33 < 1)
  {
    v34 = 1;
  }

  else if (*v107 == 3)
  {
    v34 = 0;
  }

  else
  {
    v35 = (a2 + 1532);
    v36 = 1;
    do
    {
      v37 = v36;
      if (v33 == v36)
      {
        break;
      }

      v38 = *v35++;
      ++v36;
    }

    while (v38 != 3);
    v34 = v37 >= v33;
  }

  v39 = [v109 objectForKeyedSubscript:@"MAXSIZE"];
  v40 = [v39 UTF8String];

  if (v40 && (LOBYTE(v111) = 0, sscanf(v40, "%fx%f%2s", &v113 + 4, &v113, &v111) == 3))
  {
    if (v111 ^ 0x6E69 | v112)
    {
      if (v111 ^ 0x6D6D | v112)
      {
        goto LABEL_93;
      }

      v100 = *(&v113 + 1);
      v101 = 100.0;
    }

    else
    {
      v100 = *(&v113 + 1);
      v101 = 2540.0;
    }

    v41 = (v100 * v101);
    v42 = (*&v113 * v101);
  }

  else
  {
LABEL_93:
    v41 = 21590;
    v42 = 35560;
  }

  v43 = [v109 objectForKeyedSubscript:@"MINSIZE"];
  v44 = v43;
  v45 = [v43 UTF8String];

  if (v45 && (LOBYTE(v111) = 0, sscanf(v45, "%fx%f%2s", &v113 + 4, &v113, &v111) == 3))
  {
    if (v111 ^ 0x6E69 | v112)
    {
      if (v111 ^ 0x6D6D | v112)
      {
        goto LABEL_98;
      }

      v102 = *(&v113 + 1);
      v103 = 100.0;
    }

    else
    {
      v102 = *(&v113 + 1);
      v103 = 2540.0;
    }

    v46 = (v102 * v103);
    v47 = (*&v113 * v103);
  }

  else
  {
LABEL_98:
    v46 = 21000;
    v47 = 27940;
  }

  v48 = 0;
  v49 = &dword_10006B724;
  v50 = a2 + 996;
  do
  {
    v51 = *(v49 - 1);
    if (v51 >= v46 && v51 <= v41 && *v49 >= v47 && *v49 <= v42 && ((v48 - 19) >= 5 || !v34))
    {
      v55 = *(a2 + 992);
      *(a2 + 992) = v55 + 1;
      *(v50 + 4 * v55) = v48;
    }

    ++v48;
    v49 += 2;
  }

  while (v48 != 24);
  v56 = *(a2 + 548);
  if (v56 < 1)
  {
    v58 = 0;
  }

  else if ((*v106 - 9) >= 2 && (*v106 - 40) >= 0xA)
  {
    v59 = (a2 + 756);
    v60 = 1;
    do
    {
      v61 = v60;
      if (v56 == v60)
      {
        break;
      }

      v62 = *v59++;
      v63 = v62 - 40;
      ++v60;
    }

    while ((v62 - 9) >= 2 && v63 > 9);
    v58 = v61 < v56;
  }

  else
  {
    v58 = 1;
  }

  if (v46 != v41 || v47 != v42)
  {
    v65 = *(a2 + 992);
    *(a2 + 992) = v65 + 1;
    *(v50 + 4 * v65) = 24;
    *(a2 + 1520) = v47;
    *(a2 + 1512) = v42;
    if (v58)
    {
      for (j = &dword_100000010; j != -4; j -= 4)
      {
        v67 = *(RollWidths + j);
        if (v67 >= v46)
        {
          *(a2 + 1516) = v67;
        }
      }

      for (k = 0; k != 5; ++k)
      {
        v69 = RollWidths[k];
        if (v69 <= v41)
        {
          *(a2 + 1508) = v69;
        }
      }
    }

    else
    {
      *(a2 + 1516) = v46;
      *(a2 + 1508) = v41;
    }
  }

  v70 = [v109 objectForKeyedSubscript:@"TEST-BORDERLESS"];
  v71 = v70;
  v72 = [v70 UTF8String];

  if (v72)
  {
    v73 = atoi(v72);
  }

  else
  {
    v73 = 0;
  }

  *(a2 + 952) = v73;
  v74 = [v109 objectForKeyedSubscript:@"TEST-MARGINS"];
  v75 = v74;
  v76 = [v74 UTF8String];

  if (v76)
  {
    v77 = (a2 + 984);
    if (sscanf(v76, "%d%d%d%d", a2 + 972, a2 + 976, a2 + 980, a2 + 984) != 4)
    {
      *(a2 + 972) = vdup_n_s32(0x27Bu);
      *(a2 + 980) = 635;
      goto LABEL_150;
    }
  }

  else
  {
    *(a2 + 972) = 635;
    *(a2 + 976) = vdup_n_s32(0x27Bu);
    v77 = (a2 + 984);
LABEL_150:
    *v77 = 635;
  }

  v78 = [v109 objectForKeyedSubscript:@"TEST-DUPLEX"];
  v79 = v78;
  v80 = [v78 UTF8String];

  if (v80 && sscanf(v80, "%d%d%d%d", a2 + 956, a2 + 960, a2 + 964, a2 + 968) != 4)
  {
    *(a2 + 956) = 0;
    *(a2 + 964) = 0;
  }

  v81 = [v109 objectForKeyedSubscript:@"TEST-MEDIA-READY"];
  if (v81)
  {
    v108 = v81;
    v82 = [v81 componentsSeparatedByString:{@", "}];
    for (m = 0; [v82 count] > m; ++m)
    {
      v84 = [v82 objectAtIndexedSubscript:m];
      v85 = v84;
      v86 = [v84 UTF8String];

      LOBYTE(v111) = 0;
      v114[0] = 0;
      v110 = 0;
      if (sscanf(v86, "%fx%f%2s IS%d MT%d", &v113 + 4, &v113, &v111, v114, &v110) != 5)
      {
        break;
      }

      v87 = 2540.0;
      if (v111 ^ 0x6E69 | v112)
      {
        if (v111 ^ 0x6D6D | v112)
        {
          break;
        }

        v87 = 100.0;
      }

      v88 = 0;
      v89 = (v87 * *(&v113 + 1));
      v90 = (v87 * *&v113);
      v91 = v89 < v90;
      if (v89 <= v90)
      {
        v92 = (v87 * *&v113);
      }

      else
      {
        v92 = (v87 * *(&v113 + 1));
      }

      if (v89 >= v90)
      {
        v89 = (v87 * *&v113);
      }

      if (v91)
      {
        v93 = 3;
      }

      else
      {
        v93 = 4;
      }

      v94 = &dword_10006B724;
      do
      {
        if (*(v94 - 1) == v89 && *v94 == v92)
        {
          break;
        }

        ++v88;
        v94 += 2;
      }

      while (v88 != 24);
      v95 = *(a2 + 1096);
      *(a2 + 1100 + 4 * v95) = v88;
      *(a2 + 1300 + 4 * v95) = v114[0];
      *(a2 + 1200 + 4 * v95) = v110;
      *(a2 + 1400 + 4 * v95) = v93;
      *(a2 + 1096) = v95 + 1;
      if (v88 == 24)
      {
        *(a2 + 1500) = v89;
        *(a2 + 1504) = v92;
      }
    }

    v81 = v108;
  }

  *(a2 + 988) = 10;
  v96 = *(a2 + 2040);
  *(a2 + 2040) = @"image/urf";

  if (a3)
  {
    v97 = 1;
  }

  else
  {
    v98 = urfNew(sub_10003F9E0, a2);
    *(a2 + 2048) = v98;
    *(a2 + 2064) = sub_10003F9E8;
    *(a2 + 2072) = sub_10003F9F0;
    *(a2 + 2080) = sub_10003FA20;
    *(a2 + 2088) = sub_10003FA28;
    *(a2 + 2096) = sub_10003FA30;
    v97 = v98 != 0;
  }

  return v97;
}

uint64_t sub_10003F958(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    if ((_DefaultRuneLocale.__runetype[v3] & 0x400) != 0)
    {
      v5 = 0;
      do
      {
        v5 = 10 * v5 + v3 - 48;
        v6 = *++a1;
        v3 = v6;
      }

      while ((_DefaultRuneLocale.__runetype[v6] & 0x400) != 0);
    }

    else
    {
      v5 = 0;
    }

    v7 = v4 + 1;
    *(a2 + 4 * v4) = v5;
    if (*a1 - 45 > 1 || v7 >= a3)
    {
      break;
    }

    v9 = *++a1;
    v3 = v9;
    ++v4;
  }

  while (v9);
  return v7;
}

uint64_t sub_10003F9F0(uint64_t a1)
{
  urfDelete(*(a1 + 2048));
  *(a1 + 2048) = 0;
  return 1;
}

uint64_t sub_10003FA30(uint64_t a1, void *a2, int a3)
{
  v3 = a3;
  v5 = *(a1 + 84) & 0xFFFFFFFE;
  v6 = *(a1 + 2048);
  v7 = 1;
  if (v5 == 4)
  {
    v8 = 1;
  }

  else
  {
    a3 = 1;
    v8 = v3;
  }

  if (!urfWriteLine(v6, a2, a3, v8, 0))
  {
    v9 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 2048);
      v11 = *(v10 + 80);
      v12 = *(v10 + 40);
      v14 = 136316162;
      v15 = "urf_sendpixels";
      v16 = 1024;
      v17 = v3;
      v18 = 1024;
      v19 = v11;
      v20 = 1024;
      v21 = v12;
      v22 = 2080;
      v23 = urfErrorString(v10);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Failed to send %d lines at %d/%d: %s", &v14, 0x28u);
    }

    return 0;
  }

  return v7;
}

void _liteNotifyCancel(NSString *a1)
{
  v1 = [NSString stringWithFormat:@"%s/%@", "_liteNotifyCancel", a1];
  PKCancelAlert(v1);

  dword_1000C7C38 = 0;
}

void liteNotifyCheckForCancel(lite_job_t *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003FC9C;
  v2[3] = &unk_1000A21F0;
  v3 = a1;
  v1 = v3;
  [(lite_job_t *)v1 _withActivity:v2];
}

void sub_10003FC9C(uint64_t a1, os_activity_t activity)
{
  v3 = _os_activity_create(&_mh_execute_header, "Thread: Check for Cancel", activity, OS_ACTIVITY_FLAG_DEFAULT);
  v4 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) printd_job_id];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 destination_job_id];
    }

    else
    {
      v7 = -1;
    }

    *buf = 67109890;
    v15 = v5;
    v16 = 1024;
    v17 = v7;
    v18 = 2048;
    v19 = v3;
    v20 = 2080;
    v21 = "Thread: Check for Cancel";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) ENTER: %s", buf, 0x22u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003FF10;
  block[3] = &unk_100095380;
  v13 = *(a1 + 32);
  os_activity_apply(v3, block);
  v8 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) printd_job_id];
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = [v10 destination_job_id];
    }

    else
    {
      v11 = -1;
    }

    *buf = 67109890;
    v15 = v9;
    v16 = 1024;
    v17 = v11;
    v18 = 2048;
    v19 = v3;
    v20 = 2080;
    v21 = "Thread: Check for Cancel";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) EXIT: %s", buf, 0x22u);
  }
}

void sub_10003FF10(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s:%d", "liteNotifyCheckForCancel_block_invoke", 170];
  v3 = PKCheckAlert(60, v2);

  if (v3 == 2)
  {
    v4 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) printd_job_id];
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = [v6 destination_job_id];
      }

      else
      {
        v7 = -1;
      }

      *buf = 67109376;
      v13 = v5;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Cancelling", buf, 0xEu);
    }

    [*(a1 + 32) cancelThisJob];
  }

  v8 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) printd_job_id];
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = [v10 destination_job_id];
    }

    else
    {
      v11 = -1;
    }

    *buf = 67109376;
    v13 = v9;
    v14 = 1024;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] exiting check cancel thread", buf, 0xEu);
  }
}

void liteNotifyClearPassword(lite_printer_t *a1)
{
  v1 = [(lite_printer_t *)a1 device_uri];
  PKStoreAuthInfo(v1, 0);
}

void liteNotifyPINRequired(lite_job_t *a1)
{
  v1 = a1;
  if (v1 && time(0) - v1->pin_alert_shown >= 60)
  {
    v2 = [(lite_job_t *)v1 jobPassword];
    v3 = v2;
    if (v2 && [v2 length] <= 0x7E)
    {
      [v3 getBytes:v34 length:{objc_msgSend(v3, "length")}];
      v34[[v3 length]] = 0;
      v4 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [(lite_job_t *)v1 printd_job_id];
        v6 = [(lite_job_t *)v1 destination_job_id];
        v7 = [(lite_job_t *)v1 printer];
        v8 = [(lite_job_t *)v1 printer];
        v9 = [v8 bonjourName];
        *buf = 67110146;
        v25 = v5;
        v26 = 1024;
        v27 = v6;
        v28 = 2048;
        v29 = v7;
        v30 = 2112;
        v31 = v9;
        v32 = 2080;
        v33 = v34;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] liteNotifyPINRequired(printer=%p(%@), PIN=%s)", buf, 0x2Cu);
      }

      v10 = [(lite_job_t *)v1 request_attrs];
      v11 = (*(v10->var0 + 44))(v10);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = @"Unknown";
      }

      v13 = [(__CFString *)v12 length];
      v14 = v13 > 0xFE;
      if (v13 <= 0xFE)
      {
        v15 = @"Enter %s on the printer to start printing %@.";
      }

      else
      {
        v15 = @"Enter %s on the printer to start printing %@….";
      }

      if (v14)
      {
        v16 = "PIN release alert with long job name.";
      }

      else
      {
        v16 = "PIN release alert.";
      }

      v17 = PKLocalizedString(&v15->isa, v16);
      v23 = 0;
      v18 = [NSString stringWithValidatedFormat:v17 validFormatSpecifiers:@"%s%@" error:&v23, v34, v12];
      v19 = v23;
      if ([(__CFString *)v18 length])
      {
        liteLockPrinters();
        v20 = [(lite_job_t *)v1 printer];
        v21 = [v20 displayName];
        v22 = [NSString stringWithUTF8String:"liteNotifyPINRequired"];
        PKDisplayAlert(v21, v18, v22);

        v1->pin_alert_shown = time(0);
        liteUnlockPrinters();
      }
    }
  }
}

void liteNotifyPrinter(lite_printer_t *a1, uint64_t a2, NSString *a3)
{
  v4 = a1;
  if (v4)
  {
    liteLockPrinters();
    if (![(lite_printer_t *)v4 reasons])
    {
      dword_1000C7C38 = 0;
    }

    v5 = [(lite_printer_t *)v4 reasons];
    [(lite_printer_t *)v4 setReasonsBits:a2];
    v6 = a2 & ~v5;
    if (!v6)
    {
      goto LABEL_11;
    }

    quantized_notify_post(1u);
    if ((v6 & 2) != 0)
    {
      v13 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(lite_printer_t *)v4 displayName];
        *buf = 138412290;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Connecting to printer.", buf, 0xCu);
      }

      goto LABEL_11;
    }

    if ((v6 & 0x80000) != 0)
    {
      v7 = PKLocalizedString(@"You do not have permission to use this printer.", "User not in access control list alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 19;
      goto LABEL_62;
    }

    if ((v6 & 0x400000) != 0)
    {
      v7 = PKLocalizedString(@"Your account limit has been reached.", "Quota limit reached alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v12 = 22;
      v11 = 1;
      goto LABEL_62;
    }

    if ((v6 & 0x40000) != 0)
    {
      v7 = PKLocalizedString(@"There is not enough space available to print. You can make more space available by removing apps, songs, photos, or videos.", "Disk full alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 18;
      goto LABEL_62;
    }

    if ((v6 & 0x10000) != 0)
    {
      v7 = PKLocalizedString(@"The printer is no longer available.", "Connection lost alert.");
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 16;
      v8 = 1;
      goto LABEL_62;
    }

    if ((v6 & 0x40) != 0)
    {
      v7 = PKLocalizedString(@"The printer is out of paper.", "Out of paper alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 6;
      goto LABEL_62;
    }

    if ((v6 & 0x80) != 0)
    {
      v7 = PKLocalizedString(@"The printer has a paper jam.", "Paper jam alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 7;
      goto LABEL_62;
    }

    if ((v6 & 0x100) != 0)
    {
      v7 = PKLocalizedString(@"The printer needs paper.", "Paper needed alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 8;
      goto LABEL_62;
    }

    if ((v6 & 0x200) != 0)
    {
      v7 = PKLocalizedString(@"The printer may be out of toner.", "Out of toner alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 9;
      goto LABEL_62;
    }

    if ((v6 & 0x400) != 0)
    {
      v7 = PKLocalizedString(@"The printer may be out of ink.", "Out of ink alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 10;
      goto LABEL_62;
    }

    if ((v6 & 0x800) != 0)
    {
      v7 = PKLocalizedString(@"A paper tray is missing.", "Input tray missing alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 11;
      goto LABEL_62;
    }

    if ((v6 & 0x1000) != 0)
    {
      v7 = PKLocalizedString(@"The printer door is open.", "Door open alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 12;
      goto LABEL_62;
    }

    if ((v6 & 0x2000) != 0)
    {
      v7 = PKLocalizedString(@"The printer cover is open.", "Cover open alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 13;
      goto LABEL_62;
    }

    if ((v6 & 0x4000) != 0)
    {
      v7 = PKLocalizedString(@"The printer is offline.", "Offline/missing printer alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 14;
      goto LABEL_62;
    }

    if ((v6 & 0x20) != 0)
    {
      if (![(lite_printer_t *)v4 busy])
      {
        [(lite_printer_t *)v4 setBusy:time(0)];
        goto LABEL_11;
      }

      v17 = time(0);
      if (v17 - [(lite_printer_t *)v4 busy]>= 31)
      {
        v7 = PKLocalizedString(@"The printer is busy.", "Busy printer alert.");
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 5;
        goto LABEL_62;
      }
    }

    if ((v6 & 4) != 0)
    {
      v7 = PKLocalizedString(@"The printer is almost out of paper.", "Low paper notice.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 2;
    }

    else if ((v6 & 8) != 0)
    {
      v7 = PKLocalizedString(@"The printer is low on toner.", "Low toner notice.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 3;
    }

    else if ((v6 & 0x10) != 0)
    {
      v7 = PKLocalizedString(@"The printer is low on ink.", "Low ink notice.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 4;
    }

    else if ((v6 & 0x20000) != 0)
    {
      v7 = PKLocalizedString(@"The printer is paused.", "Paused/stopped printer alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 17;
    }

    else if ((v6 & 0x100000) != 0)
    {
      v7 = PKLocalizedString(@"This printer requires account information to print.", "Missing account id alert.");
      v8 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 20;
      v9 = 1;
    }

    else
    {
      if ((v6 & 0x8000) == 0)
      {
        if ((v6 & 0x200000) != 0)
        {
          v7 = PKLocalizedString(@"An error occurred printing this document.", "Print job failed for an unknown reason.");
          v8 = 0;
          v9 = 0;
          v11 = 0;
          v12 = 21;
          v10 = 1;
          goto LABEL_62;
        }

LABEL_11:
        LOBYTE(v12) = 0;
        goto LABEL_12;
      }

      v7 = PKLocalizedString(@"Check the printer for errors.", "Unknown/other error alert.");
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 15;
    }

LABEL_62:
    if (v7)
    {
      v29 = v11;
      v18 = v9;
      if (!(dword_1000C7C38 >> v12))
      {
        v19 = [(lite_printer_t *)v4 displayName];
        if (v19)
        {
          v27 = v8;
          v28 = v19;
          v20 = sub_100040DE0(&dword_1000C7C38);
          v21 = [NSString stringWithFormat:@"%@ for %@", v20, v19];
          v22 = [NSString stringWithFormat:@"%s:%d/%@", "liteNotifyPrinter", 413, v21];

          v19 = v28;
          if (dword_1000C7C38)
          {
            PKCancelAlert(v22);
            v23 = [NSString stringWithFormat:@"%s:%d", "liteNotifyPrinter", 418];
            PKCheckAlert(0, v23);
          }

          sub_100041020(&dword_1000C7C38, v12);
          if ((v6 & 0x80000) != 0 || v27 | v18 | v10)
          {
            PKDisplayRetry(v28, v7, v22);
          }

          else if (((1 << v12) & 0x21FFE0) != 0)
          {
            PKCancelAlert(v22);
            PKDisplayAlert(v28, v7, v22);
          }

          else if (v29)
          {
            v24 = [(lite_printer_t *)v4 quotaManagementURL];

            if (v24)
            {
              v25 = [(lite_printer_t *)v4 quotaManagementURL];
              v26 = [v25 absoluteString];
            }

            else
            {
              v26 = 0;
            }

            PKDisplayQuotaAlert(v28, v7, v26, v22);
          }

          else
          {
            PKDisplayNotice(v28, v7, v22);
          }
        }
      }

      CFRelease(v7);
LABEL_75:
      liteUnlockPrinters();
      goto LABEL_76;
    }

LABEL_12:
    if (dword_1000C7C38 && (dword_1000C7C38 & (1 << v12)) == 0)
    {
      v15 = [NSString stringWithFormat:@"%s/shouldCancelAlertSinceThereIsNoMessage", "liteNotifyPrinter"];
      PKCancelAlert(v15);
    }

    if ((a2 & 0x21FFE0) != 0 && !v6)
    {
      v16 = time(0);
      if (v16 - [(lite_printer_t *)v4 reasons_changed]>= 151)
      {
        [(lite_printer_t *)v4 setReasonsBits:[(lite_printer_t *)v4 reasons]& 2];
        dword_1000C7C38 = 0;
      }
    }

    goto LABEL_75;
  }

LABEL_76:
}

__CFString *sub_100040DE0(int *a1)
{
  v1 = *a1;
  v2 = objc_opt_new();
  v3 = v2;
  if ((v1 & 2) != 0)
  {
    [v2 addObject:@"CONNECTING"];
  }

  if ((v1 & 4) != 0)
  {
    [v3 addObject:@"MEDIA_LOW"];
  }

  if ((v1 & 8) != 0)
  {
    [v3 addObject:@"TONER_LOW"];
  }

  if ((v1 & 0x10) != 0)
  {
    [v3 addObject:@"MARKER_LOW"];
  }

  if ((v1 & 0x20) != 0)
  {
    [v3 addObject:@"BUSY"];
  }

  if ((v1 & 0x40) != 0)
  {
    [v3 addObject:@"MEDIA_EMPTY"];
  }

  if ((v1 & 0x80) != 0)
  {
    [v3 addObject:@"MEDIA_JAM"];
  }

  if ((v1 & 0x100) != 0)
  {
    [v3 addObject:@"MEDIA_NEEDED"];
  }

  if ((v1 & 0x200) != 0)
  {
    [v3 addObject:@"TONER_EMPTY"];
  }

  if ((v1 & 0x400) != 0)
  {
    [v3 addObject:@"MARKER_EMPTY"];
  }

  if ((v1 & 0x800) != 0)
  {
    [v3 addObject:@"TRAY_MISSING"];
  }

  if ((v1 & 0x1000) != 0)
  {
    [v3 addObject:@"DOOR_OPEN"];
  }

  if ((v1 & 0x2000) != 0)
  {
    [v3 addObject:@"COVER_OPEN"];
  }

  if ((v1 & 0x4000) != 0)
  {
    [v3 addObject:@"OFFLINE"];
  }

  if ((v1 & 0x8000) != 0)
  {
    [v3 addObject:@"OTHER"];
  }

  if ((v1 & 0x10000) != 0)
  {
    [v3 addObject:@"LOST_CONNECTION"];
  }

  if ((v1 & 0x20000) != 0)
  {
    [v3 addObject:@"STOPPED"];
  }

  if ((v1 & 0x40000) != 0)
  {
    [v3 addObject:@"SPOOL_AREA_FULL"];
  }

  if ((v1 & 0x80000) != 0)
  {
    [v3 addObject:@"FORBIDDEN"];
  }

  if ((v1 & 0x100000) != 0)
  {
    [v3 addObject:@"ACCOUNT_INFO_NEEDED"];
  }

  if ((v1 & 0x200000) != 0)
  {
    [v3 addObject:@"OTHER_ERROR"];
  }

  if ((v1 & 0x400000) != 0)
  {
    [v3 addObject:@"LIMIT_REACHED"];
  }

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:@"+"];
  }

  else
  {
    v4 = @"NONE";
  }

  return v4;
}

void sub_100041020(int *a1, uint64_t a2)
{
  v5 = sub_100040DE0(a1);
  if (a2 >= 0x17)
  {
    v4 = [NSString stringWithFormat:@"?? INVALID REASON 0x%x", a2];
  }

  *a1 = 1 << a2;
  sub_100040DE0(a1);
}

uint64_t liteNotifyRunning(int a1)
{
  v2 = dword_1000C79C4;
  if (dword_1000C79C4 < 0)
  {
    notify_register_check("com.apple.printd.running", &dword_1000C79C4);
    v2 = dword_1000C79C4;
  }

  return notify_set_state(v2, a1 != 0);
}

void LaunchPrintCenter(void)
{
  v3[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v3[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v4[0] = &__kCFBooleanTrue;
  v4[1] = &__kCFBooleanTrue;
  v0 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v2 = [FBSOpenApplicationOptions optionsWithDictionary:v0];
  [v1 openApplication:@"com.apple.printcenter" withOptions:v2 completion:0];
}

void sub_100041218(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t PKCancelAlert(NSString *a1)
{
  pthread_mutex_lock(&stru_1000C79C8);
  if (qword_1000C7C40)
  {
    CFUserNotificationCancel(qword_1000C7C40);
    qword_1000C7C40 = 0;
    dword_1000C7C48 = 0;
  }

  return pthread_mutex_unlock(&stru_1000C79C8);
}

uint64_t PKCheckAlert(int a1, NSString *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0.001;
  }

  pthread_mutex_lock(&stru_1000C79C8);
  v5 = qword_1000C7C40;
  if (qword_1000C7C40)
  {
    v6 = dword_1000C7C48 == 3;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    if (qword_1000C7C40)
    {
      v7 = dword_1000C7C48 == 4;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      responseFlags = 0;
      v13 = 0;
      if (v4 <= 0.0)
      {
        v8 = 0xFFFFFFFFLL;
      }

      else
      {
        do
        {
          if (v4 <= 1.0)
          {
            v14 = v4;
          }

          else
          {
            v14 = 1.0;
          }

          v15 = CFUserNotificationReceiveResponse(v5, v14, &responseFlags);
          if (!v15)
          {
            v16 = responseFlags & 3;
            if (v16 != 2)
            {
              if (v16 == 3)
              {
                v8 = 0xFFFFFFFFLL;
              }

              else
              {
                v8 = (v16 + 1);
              }

              goto LABEL_57;
            }

            v13 = 1;
          }

          pthread_mutex_unlock(&stru_1000C79C8);
          pthread_mutex_lock(&stru_1000C79C8);
          v4 = v4 + -1.0;
          v5 = qword_1000C7C40;
        }

        while (v4 > 0.0 && qword_1000C7C40 != 0);
        if (v15)
        {
          v8 = 0;
          goto LABEL_61;
        }

        v8 = 1;
      }

LABEL_57:
      if (qword_1000C7C40)
      {
        CFRelease(qword_1000C7C40);
        qword_1000C7C40 = 0;
      }

      dword_1000C7C48 = 0;
      if (v13)
      {
        LaunchPrintCenter();
      }
    }

    goto LABEL_61;
  }

  responseFlags = 0;
  v8 = 0xFFFFFFFFLL;
  while (1)
  {
    v9 = qword_1000C7C40;
    if (v4 <= 0.0 || qword_1000C7C40 == 0)
    {
      if (!v8)
      {
        goto LABEL_61;
      }

      if (qword_1000C7C40)
      {
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (v4 <= 1.0)
    {
      v11 = v4;
    }

    else
    {
      v11 = 1.0;
    }

    if (CFUserNotificationReceiveResponse(qword_1000C7C40, v11, &responseFlags))
    {
      v8 = 0;
      goto LABEL_25;
    }

    v12 = responseFlags & 3;
    if (v12 != 2)
    {
      break;
    }

LABEL_25:
    pthread_mutex_unlock(&stru_1000C79C8);
    v4 = v4 + -1.0;
    pthread_mutex_lock(&stru_1000C79C8);
  }

  if (v12 == 3)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v12 != 1 && qword_1000C7C50)
    {
      PKOpenURL(qword_1000C7C50);
      CFRelease(qword_1000C7C50);
      qword_1000C7C50 = 0;
    }

    v8 = 2;
  }

  v9 = qword_1000C7C40;
  if (qword_1000C7C40)
  {
LABEL_51:
    CFRelease(v9);
    qword_1000C7C40 = 0;
  }

LABEL_52:
  dword_1000C7C48 = 0;
LABEL_61:
  pthread_mutex_unlock(&stru_1000C79C8);

  return v8;
}

void PKDisplayAlert(const __CFString *a1, const __CFString *a2, NSString *a3)
{
  v5 = a3;
  pthread_mutex_lock(&stru_1000C79C8);
  if (qword_1000C7C40)
  {
    v6 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = off_1000A3288[dword_1000C7C48];
      v10 = 136315650;
      v11 = "PKDisplayAlert";
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      v8 = "#### %s: from %@, already have alert up at level %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x20u);
    }
  }

  else
  {
    qword_1000C7C40 = sub_1000416D8(a1, 0, a2, 2, 0);
    dword_1000C7C48 = 2;
    v6 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = off_1000A3288[dword_1000C7C48];
      v10 = 136315650;
      v11 = "PKDisplayAlert";
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v9;
      v8 = "#### %s: from %@, created new alert level %@";
      goto LABEL_6;
    }
  }

  pthread_mutex_unlock(&stru_1000C79C8);
}

CFUserNotificationRef sub_1000416D8(const void *a1, __CFString *a2, CFTypeRef cf, int a4, int a5)
{
  error = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *keys = 0u;
  v29 = 0u;
  *v26 = 0u;
  memset(v27, 0, sizeof(v27));
  if (a4 != 4)
  {
    keys[0] = kCFUserNotificationAlertHeaderKey;
    v26[0] = CFRetain(a1);
    keys[1] = kCFUserNotificationAlertMessageKey;
    v26[1] = CFRetain(cf);
    *&v29 = kCFUserNotificationDefaultButtonTitleKey;
    if (a4 == 3)
    {
      *&v27[0] = PKLocalizedString(@"Details", "Open webpage to manage quota");
      *(&v29 + 1) = kCFUserNotificationAlternateButtonTitleKey;
      *(&v27[0] + 1) = PKLocalizedString(@"Cancel", "Cancel printing");
      v11 = 4;
LABEL_21:
      v10 = 2;
      goto LABEL_24;
    }

    if (a4 == 1)
    {
      *&v27[0] = PKLocalizedString(@"OK", "Acknowledgement");
      v10 = 3;
      v11 = 3;
      goto LABEL_24;
    }

    if (!a5)
    {
      *&v27[0] = PKLocalizedString(@"Continue", "Continue printing");
      a5 = 1;
      goto LABEL_12;
    }

    v9 = v27;
    a5 = 1;
    goto LABEL_11;
  }

  keys[0] = kCFUserNotificationAlertMessageKey;
  v26[0] = CFRetain(cf);
  keys[1] = kCFUserNotificationDefaultButtonTitleKey;
  if (a5)
  {
    a5 = 0;
    v9 = &v26[1];
LABEL_11:
    *v9 = PKLocalizedString(@"Try Again", "Retry printing");
    goto LABEL_12;
  }

  v26[1] = PKLocalizedString(@"OK", "Acknowledgement");
LABEL_12:
  keys[a5 | 2u] = kCFUserNotificationAlternateButtonTitleKey;
  v11 = a5 + 3;
  v26[a5 | 2u] = PKLocalizedString(@"Cancel Print Job", "Cancel printing");
  v12 = SBSGetApplicationState();
  if (v12 != 8 && v12 != 32)
  {
    keys[v11] = kCFUserNotificationOtherButtonTitleKey;
    v26[v11] = PKLocalizedString(@"Open Print Center", "Open Print Center");
    v11 = a5 | 4;
  }

  if (a4 != 4)
  {
    goto LABEL_21;
  }

  v10 = 65538;
  if (a2 && CFStringCompare(a2, @"guest-only", 1uLL) == kCFCompareEqualTo)
  {
    values = PKLocalizedString(@"password", "Password placeholder text");
    v15 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
    CFRelease(values);
    keys[v11] = kCFUserNotificationTextFieldTitlesKey;
    v14 = v11 + 1;
    v26[v11] = v15;
  }

  else
  {
    values = PKLocalizedString(@"user name", "Username placeholder text");
    cfa = PKLocalizedString(@"password", "Password placeholder text");
    v13 = CFArrayCreate(kCFAllocatorDefault, &values, 2, &kCFTypeArrayCallBacks);
    CFRelease(values);
    CFRelease(cfa);
    keys[v11] = kCFUserNotificationTextFieldTitlesKey;
    v14 = v11 + 1;
    v26[v11] = v13;
    if (a2)
    {
      v23 = a2;
      keys[v14] = kCFUserNotificationTextFieldValuesKey;
      v26[v14] = CFArrayCreate(kCFAllocatorDefault, &v23, 1, &kCFTypeArrayCallBacks);
      v14 = v11 + 2;
    }

    v10 = 131074;
  }

  keys[v14] = SBUserNotificationTextAutocapitalizationType;
  v16 = v14 + 1;
  v26[v14] = kCFBooleanFalse;
  keys[v16] = SBUserNotificationTextAutocorrectionType;
  v11 = v14 + 2;
  v26[v16] = kCFBooleanTrue;
LABEL_24:
  keys[v11] = SBUserNotificationDismissOnLock;
  v26[v11] = kCFBooleanFalse;
  keys[v11 + 1] = SBUserNotificationDontDismissOnUnlock;
  v17 = v11 + 2;
  v26[v11 + 1] = kCFBooleanTrue;
  keys[v17] = SBUserNotificationAllowMenuButtonDismissal;
  v26[v17] = kCFBooleanFalse;
  v18 = CFDictionaryCreate(kCFAllocatorDefault, keys, v26, v11 + 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v19 = 0;
  do
  {
    CFRelease(v26[v19 / 8]);
    v19 += 8;
  }

  while (8 * v11 + 24 != v19);
  v20 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, v10, &error, v18);
  CFRelease(v18);
  return v20;
}

void PKDisplayQuotaAlert(const __CFString *a1, const __CFString *a2, const __CFString *a3, NSString *a4)
{
  v7 = a4;
  if (a3)
  {
    qword_1000C7C50 = CFURLCreateWithString(kCFAllocatorDefault, a3, 0);
  }

  pthread_mutex_lock(&stru_1000C79C8);
  if (qword_1000C7C40)
  {
    v8 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = off_1000A3288[dword_1000C7C48];
      v12 = 136315650;
      v13 = "PKDisplayQuotaAlert";
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      v10 = "#### %s: from %@, already have alert up at level %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 0x20u);
    }
  }

  else
  {
    qword_1000C7C40 = sub_1000416D8(a1, 0, a2, 3, 0);
    dword_1000C7C48 = 3;
    v8 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = off_1000A3288[dword_1000C7C48];
      v12 = 136315650;
      v13 = "PKDisplayQuotaAlert";
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v11;
      v10 = "#### %s: from %@, created new alert level %@";
      goto LABEL_8;
    }
  }

  pthread_mutex_unlock(&stru_1000C79C8);
}

void PKDisplayNotice(const __CFString *a1, const __CFString *a2, NSString *a3)
{
  v5 = a3;
  pthread_mutex_lock(&stru_1000C79C8);
  if (qword_1000C7C40)
  {
    v6 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = off_1000A3288[dword_1000C7C48];
      v10 = 136315650;
      v11 = "PKDisplayNotice";
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      v8 = "#### %s: from %@, already have alert up at level %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x20u);
    }
  }

  else
  {
    qword_1000C7C40 = sub_1000416D8(a1, 0, a2, 1, 0);
    dword_1000C7C48 = 1;
    v6 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = off_1000A3288[dword_1000C7C48];
      v10 = 136315650;
      v11 = "PKDisplayNotice";
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v9;
      v8 = "#### %s: from %@, created new alert level %@";
      goto LABEL_6;
    }
  }

  pthread_mutex_unlock(&stru_1000C79C8);
}

void PKDisplayRetry(const __CFString *a1, const __CFString *a2, NSString *a3)
{
  v5 = a3;
  pthread_mutex_lock(&stru_1000C79C8);
  if (qword_1000C7C40)
  {
    v6 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = off_1000A3288[dword_1000C7C48];
      v10 = 136315650;
      v11 = "PKDisplayRetry";
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      v8 = "#### %s: from %@, already have alert up at level %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x20u);
    }
  }

  else
  {
    qword_1000C7C40 = sub_1000416D8(a1, 0, a2, 2, 1);
    dword_1000C7C48 = 2;
    v6 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = off_1000A3288[dword_1000C7C48];
      v10 = 136315650;
      v11 = "PKDisplayRetry";
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v9;
      v8 = "#### %s: from %@, created new alert level %@";
      goto LABEL_6;
    }
  }

  pthread_mutex_unlock(&stru_1000C79C8);
}

__CFUserNotification *PKPromptAuthInfo(NSString *a1, NSString *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (dword_1000C7C48 <= 2)
  {
    pthread_mutex_lock(&stru_1000C79C8);
    if (qword_1000C7C40)
    {
      CFUserNotificationCancel(qword_1000C7C40);
      CFRelease(qword_1000C7C40);
      qword_1000C7C40 = 0;
    }

    if (a3)
    {
      v8 = @"Password required for %@";
    }

    else
    {
      v8 = @"Incorrect Name or Password for %@";
    }

    if (a3)
    {
      v9 = "Password prompt";
    }

    else
    {
      v9 = "Password prompt, subsequent attempts";
    }

    v10 = PKLocalizedString(v8, v9);
    StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v10, 0, v5);
    CFRelease(v10);
    v7 = sub_1000416D8(v5, v6, StringWithValidatedFormat, 4, 0);
    CFRelease(StringWithValidatedFormat);
    qword_1000C7C40 = v7;
    dword_1000C7C48 = 4;
    pthread_mutex_unlock(&stru_1000C79C8);
    responseFlags = 3;
    if (v7)
    {
      v12 = 0;
      v13 = 0;
      if (CFUserNotificationReceiveResponse(v7, 0.0, &responseFlags))
      {
        responseFlags = 3;
        qword_1000C7C40 = 0;
        dword_1000C7C48 = 0;
      }

      else
      {
        qword_1000C7C40 = 0;
        dword_1000C7C48 = 0;
        if (!responseFlags)
        {
          if (v6 && ![(__CFString *)v6 caseInsensitiveCompare:@"guest-only"])
          {
            v13 = v6;
            v12 = CFUserNotificationGetResponseValue(v7, kCFUserNotificationTextFieldValuesKey, 0);
          }

          else
          {
            v14 = CFUserNotificationGetResponseValue(v7, kCFUserNotificationTextFieldValuesKey, 0);
            v12 = CFUserNotificationGetResponseValue(v7, kCFUserNotificationTextFieldValuesKey, 1);
            v13 = v14;
          }
        }
      }

      CFRelease(v7);
      v7 = 0;
      if (v13 && v12)
      {
        v7 = [NSURLCredential credentialWithUser:v13 password:v12 persistence:2];
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
      qword_1000C7C40 = 0;
      dword_1000C7C48 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void PKPromptAuthInfo(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = dispatch_get_global_queue(0, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004257C;
  v14[3] = &unk_1000A3268;
  v15 = v7;
  v16 = v8;
  v18 = a3;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, v14);
}

void sub_10004257C(uint64_t a1)
{
  v2 = PKPromptAuthInfo(*(a1 + 32), *(a1 + 40), *(a1 + 56));
  (*(*(a1 + 48) + 16))();
}

id PKGetAuthInfo(NSString *a1, NSURL *a2)
{
  v2 = a2;
  v3 = [(NSURL *)v2 port];
  if (!v3)
  {
    v4 = [(NSURL *)v2 scheme];
    v3 = PKDefaultPortForScheme(v4);
  }

  v5 = [v3 integerValue];
  v6 = [(NSURL *)v2 host];
  v7 = [v6 UTF8String];

  v8 = [(NSURL *)v2 path];
  v9 = [v8 UTF8String];

  v10 = [(NSURL *)v2 scheme];
  v11 = [v10 lowercaseString];
  v12 = [v11 UTF8String];

  cf = 0;
  result = 0;
  v13 = sub_100042CF0(v7, v5, v9, v12, 3, 0, 0);
  v14 = v13;
  if (v13)
  {
    if (SecItemCopyMatching(v13, &result))
    {
      v15 = 0;
      v16 = 0;
    }

    else
    {
      Value = CFDictionaryGetValue(result, kSecAttrAccount);
      v16 = sub_100042CF0(v7, v5, v9, v12, 4, 0, 0);
      v15 = 0;
      if (v16 && Value)
      {
        if (CFStringGetCString(Value, buffer, 256, 0x8000100u) && !SecItemCopyMatching(v16, &cf))
        {
          BytePtr = CFDataGetBytePtr(cf);
          strlcpy(__dst, BytePtr, 0x100uLL);
          v15 = 1;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    CFRelease(v14);
    if (result)
    {
      CFRelease(result);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  else
  {
    v15 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    v17 = [NSString stringWithUTF8String:buffer];
    v18 = [NSString stringWithUTF8String:__dst];
    v19 = [NSURLCredential credentialWithUser:v17 password:v18 persistence:2];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void PKStoreAuthInfo(NSURL *a1, NSURLCredential *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [(NSURLCredential *)v3 user];
    v6 = [v5 UTF8String];
    v7 = [(NSURLCredential *)v4 password];
    sub_100042A30(v8, v6, [v7 UTF8String]);
  }

  else
  {
    sub_100042A30(v8, 0, 0);
  }
}

void sub_100042A30(void *a1, char *a2, const char *a3)
{
  v23 = a1;
  v5 = [v23 port];
  if (!v5)
  {
    v6 = [v23 scheme];
    v5 = PKDefaultPortForScheme(v6);
  }

  v7 = [v5 integerValue];
  v8 = [v23 host];
  v9 = [v8 UTF8String];

  v10 = [v23 path];
  v11 = [v10 UTF8String];

  v12 = [v23 scheme];
  v13 = [v12 lowercaseString];
  v14 = [v13 UTF8String];

  if (byte_1000C7C58)
  {
    if (byte_1000C7A08)
    {
      goto LABEL_5;
    }

LABEL_17:
    byte_1000C7A08 = 0;
    goto LABEL_21;
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PrintKitSaveUsernamePassword", @".GlobalPreferences", &byte_1000C7C58);
  if (byte_1000C7C58)
  {
    v22 = AppBooleanValue;
  }

  else
  {
    v22 = 1;
  }

  byte_1000C7A08 = v22;
  byte_1000C7C58 = 1;
  if (!v22)
  {
    goto LABEL_17;
  }

LABEL_5:
  v15 = PKStoreCredentialsInKeychainAllowed();
  byte_1000C7A08 = v15 != 0;
  if (v15)
  {
    v16 = sub_100042CF0(v9, v7, v11, v14, 2, 0, 0);
    v17 = v16;
    if (a2 && a3)
    {
      v18 = sub_100042CF0(v9, v7, v11, v14, 1, a2, a3);
      v19 = SecItemUpdate(v17, v18);
      if (v19)
      {
        CFRelease(v18);
        v20 = sub_100042CF0(v9, v7, v11, v14, 0, a2, a3);
        v18 = v20;
        if (v19 == -25300)
        {
          SecItemAdd(v20, 0);
        }
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    else
    {
      SecItemDelete(v16);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

LABEL_21:
}

CFDictionaryRef sub_100042CF0(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, int a5, char *cStr, const char *a7)
{
  valuePtr = a2;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *keys = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *values = 0u;
  v29 = 0u;
  if (a5 != 1)
  {
    v17 = [NSString stringWithUTF8String:a1];
    Copy = CFStringCreateCopy(kCFAllocatorDefault, [v17 lowercaseString]);

    v10 = CFStringCreateWithCString(kCFAllocatorDefault, a3, 0x8000100u);
    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    keys[0] = kSecAttrAuthenticationType;
    keys[1] = kSecClass;
    values[0] = kSecAttrAuthenticationTypeHTTPBasic;
    values[1] = kSecClassInternetPassword;
    *&v35 = kSecAttrProtocol;
    *(&v35 + 1) = kSecAttrServer;
    *&v29 = kSecAttrProtocolIPP;
    *(&v29 + 1) = Copy;
    *&v36 = kSecAttrPort;
    *(&v36 + 1) = kSecAttrPath;
    *&v30 = v9;
    *(&v30 + 1) = v10;
    *&v37 = kSecAttrAccessible;
    *(&v37 + 1) = kSecAttrAccessGroup;
    *&v31 = kSecAttrAccessibleWhenUnlocked;
    *(&v31 + 1) = @"PrintKitAccessGroup";
    if (a5 == 4)
    {
      v12 = 0;
      v19 = &kSecReturnData;
    }

    else
    {
      if (a5 != 3)
      {
        if (a5)
        {
          v12 = 0;
          v13 = 8;
          goto LABEL_12;
        }

        v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s://%s:%d%s", a4, a1, valuePtr, a3);
        *&v38 = kSecAttrLabel;
        v12 = v18;
        goto LABEL_10;
      }

      v12 = 0;
      v19 = &kSecReturnAttributes;
    }

    *&v38 = *v19;
    v18 = kCFBooleanTrue;
LABEL_10:
    *&v32 = v18;
    v13 = 9;
    goto LABEL_12;
  }

  v9 = 0;
  v10 = 0;
  Copy = 0;
  v12 = 0;
  v13 = 0;
LABEL_12:
  v20 = 0;
  if (cStr && a7)
  {
    v20 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    v21 = strlen(a7);
    v22 = CFDataCreate(kCFAllocatorDefault, a7, v21 + 1);
    keys[v13] = kSecAttrAccount;
    v23 = v13 + 1;
    values[v13] = v20;
    keys[v23] = kSecValueData;
    v13 |= 2u;
    values[v23] = v22;
  }

  else
  {
    v22 = 0;
  }

  v24 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v13, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v24;
}

void sub_10004315C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100043228(uint64_t a1)
{
  v1 = [*(a1 + 32) ubiquitousKeyValueStore];
  [v1 synchronize];
}

id sub_100043584(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:PKPrinterUUIDKey];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

id sub_10004374C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:PKPrinterUUIDKey];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

id sub_1000439B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:PKPrinterUUIDKey];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

__CFString *liteGetCurrentNetwork(void)
{
  v0 = WiFiManagerClientCreate();
  if (!v0)
  {
    goto LABEL_12;
  }

  v1 = v0;
  v2 = WiFiManagerClientCopyDevices();
  v3 = v2;
  if (v2)
  {
    if (CFArrayGetCount(v2) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v3, 0)) != 0 && (v5 = CFGetTypeID(ValueAtIndex), v5 == WiFiDeviceClientGetTypeID()) && (v6 = WiFiDeviceClientCopyCurrentNetwork()) != 0)
    {
      v7 = WiFiNetworkGetSSID();
      CFRelease(v6);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v1);
  if (!v7)
  {
LABEL_12:
    v7 = @"<disassociated>";
  }

  return v7;
}

id liteGetPrintersForCurrentNetwork(void)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100045040;
  v2[3] = &unk_1000A3358;
  v0 = objc_opt_new();
  v3 = v0;
  sub_100044DD8(v2);

  return v0;
}

uint64_t sub_100044A70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100044A88(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v7 = a2;
  v8 = PKPrinterUUIDKey;
  v12 = v7;
  v9 = [v7 objectForKeyedSubscript:PKPrinterUUIDKey];
  v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  *a4 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

void liteSetupDefaults(void)
{
  keyExistsAndHasValidFormat = 0;
  *v6 = 0x500000006;
  v4 = 0;
  v3 = 4;
  GSInitialize();
  if (CFPreferencesGetAppBooleanValue(@"PrintKitPreserveJobFiles", @".GlobalPreferences", &keyExistsAndHasValidFormat))
  {
    PreserveJobFiles = 1;
  }

  if (CFPreferencesGetAppBooleanValue(@"PrintKitPreserveControlFiles", @".GlobalPreferences", &keyExistsAndHasValidFormat))
  {
    PreserveControlFiles = 1;
  }

  v0 = objc_alloc_init(PKiCloudDataController);
  v1 = iCloudDataController;
  iCloudDataController = v0;

  if (sysctl(v6, 2u, &v4, &v3, 0, 0))
  {
    v4 = 0x7FFFFFFF;
    LODWORD(v2) = 429496729;
  }

  else
  {
    LODWORD(v2) = v4 / 5;
  }

  if (v2 >= 0x8000000)
  {
    v2 = 0x8000000;
  }

  else
  {
    v2 = v2;
  }

  MaxImageMemory = v2;
  MaxRenderMemory = 37748736;
  MaxProcessingJobs = 1;
  liteNotifyRunning(1);
  quantized_notify_post(2u);
}

void quantized_notify_post(unsigned int a1)
{
  if (qword_1000C7C78 != -1)
  {
    sub_1000604E4();
  }

  v2 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "quantized_notify issue: 0x%x", v3, 8u);
  }

  dispatch_source_merge_data(qword_1000C7C70, a1);
}

void sub_100044DD8(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"_per_network_printers"];

  if (!v3)
  {
    v3 = +[NSDictionary dictionary];
  }

  v4 = liteGetCurrentNetwork();
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = &__NSArray0__struct;
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004614C;
  v14[3] = &unk_1000A3430;
  v8 = objc_opt_new();
  v15 = v8;
  [v7 enumerateObjectsUsingBlock:v14];

  v9 = v1[2](v1, v4, v8);
  v10 = v9;
  if (!v9 || ([v9 isEqualToArray:v7] & 1) == 0)
  {
    v11 = [v3 mutableCopy];
    v12 = v11;
    if (v10)
    {
      [v11 setObject:v10 forKey:v4];
    }

    else
    {
      [v11 removeObjectForKey:v4];
    }

    v13 = +[NSUserDefaults standardUserDefaults];
    [v13 setObject:v12 forKey:@"_per_network_printers"];
  }
}

id sub_100045040(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setNetworkName:v5];
  [*(a1 + 32) setPrinters:v6];

  return v6;
}

void liteAddPrinterForCurrentNetwork(NSDictionary *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100045164;
  v2[3] = &unk_1000A3358;
  v3 = a1;
  v1 = v3;
  sub_100044DD8(v2);
}

id sub_100045164(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) objectForKeyedSubscript:PKPrinterUUIDKey];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000452F4;
  v5 = v12[3] = &unk_1000A32B8;
  v13 = v5;
  v6 = [v4 indexesOfObjectsPassingTest:v12];
  v7 = [v4 mutableCopy];
  [v7 removeObjectsAtIndexes:v6];
  [v7 insertObject:*(a1 + 32) atIndex:0];
  v8 = v7;
  if ([v8 count] > 3)
  {
    v9 = [v8 subarrayWithRange:{0, 3}];
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;

  return v10;
}

id sub_1000452F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:PKPrinterUUIDKey];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

BOOL sub_100045828(uint64_t a1, int a2)
{
  if (!sub_1000458C0(a2, *(a1 + 32)) || !sub_1000458C0(a2, *(a1 + 40)))
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = v4 > 0;
    if (v4 > 0)
    {
      break;
    }

    v6 = write(a2, &asc_100081F0B[v4], 1 - v4);
    v4 += v6;
  }

  while (v6 > 0);
  return v5;
}

BOOL sub_1000458C0(int a1, void *a2)
{
  v3 = a2;
  v4 = [v3 UTF8String];
  v5 = &v4[strlen(v4)];
  do
  {
    v6 = v4;
    if (v4 >= v5)
    {
      break;
    }

    v7 = write(a1, v4, v5 - v4);
    v4 += v7;
  }

  while (v7 > 0);

  return v6 >= v5;
}

void sub_1000459D4(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.printing.IPPControlLogging", v3);
  v2 = qword_1000C7C60;
  qword_1000C7C60 = v1;
}

void sub_100045B40(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) debugDescription];
  v4 = [NSString stringWithFormat:@"Request (%d): %@", v2, v3];

  [*(a1 + 40) _now:*(a1 + 48) appendString:v4];
}

void sub_100045CF0(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) debugDescription];
  v4 = [NSString stringWithFormat:@"Response (%d): %@", v2, v3];

  [*(a1 + 40) _now:*(a1 + 48) appendString:v4];
}

void sub_100045EA0(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"Response Failure (%d): %@", *(a1 + 56), *(a1 + 32)];
  [*(a1 + 40) _now:*(a1 + 48) appendString:?];
}

void sub_100045FD4(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  v2 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, v1);
  v3 = qword_1000C7C70;
  qword_1000C7C70 = v2;

  dispatch_source_set_event_handler(qword_1000C7C70, &stru_1000A3408);
  v4 = qword_1000C7C70;

  dispatch_activate(v4);
}

void sub_100046054(id a1)
{
  data = dispatch_source_get_data(qword_1000C7C70);
  v2 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = data;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "quantized_notify drain: 0x%lx", &v3, 0xCu);
  }

  if ((data & 4) != 0)
  {
    notify_post("com.apple.printd.job-progress");
    if ((data & 2) == 0)
    {
LABEL_5:
      if ((data & 1) == 0)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  else if ((data & 2) == 0)
  {
    goto LABEL_5;
  }

  notify_post("com.apple.printd.job-list");
  if ((data & 1) == 0)
  {
    return;
  }

LABEL_6:
  notify_post("com.apple.printd.printer-reasons-changed");
}

void sub_10004614C(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:@"printer-dns-sd-name"];
  v4 = [v3 lowercaseString];

  if ([v4 length] >= 5)
  {
    if (([v4 hasPrefix:@"ipp:"] & 1) != 0 || objc_msgSend(v4, "hasPrefix:", @"ipps:"))
    {
      v5 = PKURLWithString(v4);

      if (!v5)
      {
        goto LABEL_16;
      }

LABEL_15:
      [*(a1 + 32) addObject:v10];
      goto LABEL_16;
    }

    if ([v4 characterAtIndex:0] != 60 || objc_msgSend(v4, "containsString:", @"ipp"))
    {
      if (![v4 containsString:@"_ipp."] || (objc_msgSend(v4, "containsString:", @"_ipps.") & 1) == 0)
      {
        v6 = [v10 objectForKeyedSubscript:PKPrinterEndpointKey];
        if (v6)
        {
          v7 = [PKPrinterBonjourEndpoint endpointWithData:v6];
          v8 = [v7 persistentNameRepresentationForPrintKitUI];
          if ([v8 length])
          {
            v9 = [v10 mutableCopy];
            [v9 setObject:v8 forKeyedSubscript:PKPrinterNameKey];

            v10 = v9;
          }
        }
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

CGFloat _lite_page_transform@<D0>(CGRect a1@<0:D0, 8:D1, 16:D2, 24:D3>, unint64_t a2@<X0>, unint64_t a3@<X1>, int a4@<W2>, int a5@<W3>, int a6@<W4>, uint64_t a7@<X8>)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (a6)
  {
    v16 = a3;
  }

  else
  {
    v16 = a2;
  }

  v17 = v16 * -0.5;
  if (a6)
  {
    v18 = a2;
  }

  else
  {
    v18 = a3;
  }

  CGAffineTransformMakeTranslation(&v38, v17, v18 * -0.5);
  if (a4 <= 4)
  {
    switch(a4)
    {
      case 2:
        v36 = 0uLL;
        v19 = xmmword_10006B840;
        break;
      case 3:
        v36 = 0uLL;
        v19 = xmmword_10006B830;
        break;
      case 4:
        v36 = 0uLL;
        v19 = xmmword_10006B830;
        v20 = xmmword_10006B990;
        goto LABEL_26;
      default:
        goto LABEL_19;
    }

    v20 = xmmword_10006B850;
    goto LABEL_26;
  }

  if (a4 > 6)
  {
    if (a4 == 7)
    {
      v36 = 0uLL;
      v19 = xmmword_10006B990;
      goto LABEL_23;
    }

    if (a4 == 8)
    {
      v36 = 0uLL;
      v19 = xmmword_10006B850;
LABEL_23:
      v20 = xmmword_10006B840;
      goto LABEL_26;
    }

LABEL_19:
    v20 = *&CGAffineTransformIdentity.a;
    v19 = *&CGAffineTransformIdentity.c;
    v36 = *&CGAffineTransformIdentity.tx;
    goto LABEL_26;
  }

  v36 = 0uLL;
  if (a4 == 5)
  {
    v19 = xmmword_10006B850;
  }

  else
  {
    v19 = xmmword_10006B990;
  }

  v20 = xmmword_10006B830;
LABEL_26:
  v31 = v20;
  v32 = v19;
  if (a5 == 1 || a5 == -1)
  {
    memset(&v39, 0, sizeof(v39));
    CGAffineTransformMakeRotation(&v39, a5 * 3.14159265 * 0.5);
    *&t1.a = v31;
    *&t1.c = v32;
    *&t1.tx = v36;
    t2 = v39;
    CGAffineTransformConcat(&v37, &t1, &t2);
    v31 = *&v37.a;
    v32 = *&v37.c;
    v36 = *&v37.tx;
  }

  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MinY = CGRectGetMinY(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v23 = CGRectGetWidth(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v24 = CGRectGetHeight(v43);
  v25 = v23 / a2;
  if (v25 >= v24 / a3)
  {
    v25 = v24 / a3;
  }

  CGAffineTransformMakeScale(&v39, v25, v25);
  CGAffineTransformMakeTranslation(&v37, MinX + v23 * 0.5, MinY + v24 * 0.5);
  t1 = v38;
  *&t2.a = v31;
  *&t2.c = v32;
  *&t2.tx = v36;
  CGAffineTransformConcat(a7, &t1, &t2);
  v26 = *(a7 + 16);
  *&t2.a = *a7;
  *&t2.c = v26;
  *&t2.tx = *(a7 + 32);
  v33 = v39;
  CGAffineTransformConcat(&t1, &t2, &v33);
  v27 = *&t1.c;
  *a7 = *&t1.a;
  *(a7 + 16) = v27;
  *(a7 + 32) = *&t1.tx;
  v28 = *(a7 + 16);
  *&t2.a = *a7;
  *&t2.c = v28;
  *&t2.tx = *(a7 + 32);
  v33 = v37;
  CGAffineTransformConcat(&t1, &t2, &v33);
  v29 = *&t1.c;
  *a7 = *&t1.a;
  *(a7 + 16) = v29;
  result = t1.tx;
  *(a7 + 32) = *&t1.tx;
  return result;
}

void _liteDrawImageToSheet(CGContext *a1, CGImageRef image, int a3, CGSize a4, CGRect a5)
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.height;
  v10 = a4.width;
  v14 = CGImageGetWidth(image);
  v15 = CGImageGetHeight(image);
  v16 = v15;
  if (x <= v10 - (x + width))
  {
    v17 = v10 - (x + width);
  }

  else
  {
    v17 = x;
  }

  if (v9 - (y + height) <= y)
  {
    v18 = y;
  }

  else
  {
    v18 = v9 - (y + height);
  }

  if (a3 <= 4)
  {
    v19 = v14;
  }

  else
  {
    v19 = v15;
  }

  if (a3 <= 4)
  {
    v20 = v15;
  }

  else
  {
    v20 = v14;
  }

  v21 = v20;
  v22 = v19;
  v23 = v10 > v9 && v22 < v21;
  if (v23 || v10 < v9 && v22 > v21)
  {
    v24 = v17;
    v25 = v10;
  }

  else
  {
    v24 = v18;
    v18 = v17;
    v25 = v9;
    v9 = v10;
  }

  if (v18 == 0.0 && v24 == 0.0 && v20 < 2 * v19 && 2 * v20 > v19 && (v9 >= v22 ? (v26 = v25 < v21) : (v26 = 1), !v26))
  {
    v27 = 1;
    v28 = v9;
    v29 = v25;
  }

  else
  {
    v27 = 0;
    v28 = v9 - v18 - v18;
    v29 = v25 - v24 - v24;
  }

  v30 = v28 / v22;
  v31 = v29 / v21;
  if (v30 <= v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  if (v30 >= v31)
  {
    v30 = v31;
  }

  if (v27)
  {
    v30 = v32;
  }

  v33 = (v9 - v22 * v30) * 0.5;
  v34 = (v25 - v21 * v30) * 0.5;
  v35 = v30 * v22;
  v36 = v30 * v21;
  CGContextSaveGState(a1);
  v38.origin.x = v33;
  v38.origin.y = v34;
  v38.size.width = v35;
  v38.size.height = v36;
  _lite_page_transform(v38, v19, v20, a3, 0, a3 > 4, &v37);
  CGContextConcatCTM(a1, &v37);
  v39.size.width = v14;
  v39.size.height = v16;
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  CGContextDrawImage(a1, v39, image);
  CGContextRestoreGState(a1);
}