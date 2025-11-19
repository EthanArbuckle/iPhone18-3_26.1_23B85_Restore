BOOL sub_429BC(xmlTextReader *a1, void *a2)
{
  v7 = 0;
  result = sub_426B0(a1, qword_A35E0, "w", &v7);
  if (result)
  {
    v6 = 0;
    result = sub_426B0(a1, qword_A35E0, "h", &v6);
    if (result)
    {
      v5 = v6;
      *a2 = v7;
      a2[1] = v5;
      return 1;
    }
  }

  return result;
}

BOOL sub_42A3C(xmlTextReader *a1, void *a2)
{
  v7 = 0;
  result = sub_426B0(a1, qword_A35E0, "x", &v7);
  if (result)
  {
    v6 = 0;
    result = sub_426B0(a1, qword_A35E0, "y", &v6);
    if (result)
    {
      v5 = v6;
      *a2 = v7;
      a2[1] = v5;
      return 1;
    }
  }

  return result;
}

CGPath *sub_42ABC(const char *a1)
{
  Mutable = CGPathCreateMutable();
  v9 = 0;
  if (a1)
  {
    if (*a1)
    {
      v8 = 0;
      if (sscanf(a1, " %c%n", &v8, &v9) >= 1)
      {
        do
        {
          v3 = &a1[v9];
          v9 = 0;
          if (v8 > 0x62u)
          {
            if (v8 > 0x6Cu)
            {
              if (v8 == 122)
              {
                goto LABEL_23;
              }

              if (v8 == 109)
              {
LABEL_19:
                v7 = 0;
                if (sscanf(v3, " %g %g%n", &v7 + 4, &v7, &v9) == 2)
                {
                  CGPathMoveToPoint(Mutable, 0, *(&v7 + 1), *&v7);
                }
              }
            }

            else
            {
              if (v8 == 99)
              {
LABEL_21:
                v5 = 0;
                v6 = 0;
                v7 = 0;
                if (sscanf(v3, " %g %g %g %g %g %g%n", &v7 + 4, &v7, &v6 + 4, &v6, &v5 + 4, &v5, &v9) == 6)
                {
                  CGPathAddCurveToPoint(Mutable, 0, *(&v7 + 1), *&v7, *(&v6 + 1), *&v6, *(&v5 + 1), *&v5);
                }

                goto LABEL_24;
              }

              if (v8 == 108)
              {
LABEL_12:
                v7 = 0;
                if (sscanf(v3, " %g %g%n", &v7 + 4, &v7, &v9) == 2)
                {
                  CGPathAddLineToPoint(Mutable, 0, *(&v7 + 1), *&v7);
                }
              }
            }
          }

          else if (v8 > 0x4Cu)
          {
            if (v8 == 77)
            {
              goto LABEL_19;
            }

            if (v8 == 90)
            {
LABEL_23:
              CGPathCloseSubpath(Mutable);
            }
          }

          else
          {
            if (v8 == 67)
            {
              goto LABEL_21;
            }

            if (v8 == 76)
            {
              goto LABEL_12;
            }
          }

LABEL_24:
          a1 = &v3[v9];
        }

        while (sscanf(a1, " %c%n", &v8, &v9) > 0);
      }
    }
  }

  return Mutable;
}

char *sub_42CE8(const CGPath *a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CGPathApply(a1, Mutable, sub_42D9C);
  Length = CFStringGetLength(Mutable);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v5 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  CFStringGetCString(Mutable, v5, MaximumSizeForEncoding + 1, 0x8000100u);
  CFRelease(Mutable);
  return v5;
}

void sub_42D9C(__CFString *a1, uint64_t a2)
{
  if (a1)
  {
    if (CFStringGetLength(a1) >= 1)
    {
      CFStringAppend(a1, @" ");
    }

    v4 = *(a2 + 8);
    v5 = *a2;
    if (*a2 > 2)
    {
      if (v5 == 3)
      {
        CFStringAppendFormat(a1, 0, @"C %.*g %.*g %.*g %.*g %.*g %.*g", 17, *v4, 17, v4[1], 17, v4[2], 17, v4[3], 17, v4[4], 17, v4[5]);
      }

      else if (v5 == 4)
      {

        CFStringAppend(a1, @"Z");
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        CFStringAppendFormat(a1, 0, @"L %.*g %.*g", 17, *v4, 17, v4[1]);
      }
    }

    else
    {
      CFStringAppendFormat(a1, 0, @"M %.*g %.*g", 17, *v4, 17, v4[1]);
    }
  }
}

int *sub_42EDC(char *a1, size_t __n, float a3)
{
  if (fabsf(a3) != INFINITY)
  {
    return snprintf(a1, __n, "%.*g", 8, a3);
  }

  if (a3 >= 0.0)
  {
    strncpy(a1, "INF", __n);
    return &dword_0 + 3;
  }

  else
  {
    strncpy(a1, "-INF", __n);
    return &dword_4;
  }
}

uint64_t sub_42FBC(xmlTextReader *a1, uint64_t a2, xmlChar *localName, uint64_t a4, _DWORD *a5)
{
  if (a2)
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = 0;
  }

  AttributeNs = xmlTextReaderGetAttributeNs(a1, localName, v8);
  if (!AttributeNs)
  {
    return 0;
  }

  v10 = AttributeNs;
  v11 = *(a4 + 8);
  if (v11)
  {
    while (!xmlStrEqual(v11, v10))
    {
      v11 = *(a4 + 24);
      a4 += 16;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    *a5 = *a4;
    v12 = 1;
  }

  else
  {
LABEL_8:
    v12 = 0;
  }

  free(v10);
  return v12;
}

unint64_t sub_43054(unint64_t a1)
{
  if (a1 >= 0xDF8475800)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 + 60000000000;
  }

  if (a1 + 50000000000 >= 0xC1BAF9FD5)
  {
    return v1;
  }

  else
  {
    return a1 + 50000000000;
  }
}

void sub_4340C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_442B0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_44B5C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

FILE *sub_44F28(uint64_t a1, const char *a2)
{
  v3 = fopen([+[NSFileManager fileSystemRepresentationWithPath:"fileSystemRepresentationWithPath:"];
  if (!v3)
  {
    v4 = __error();
    [GQZException raise:@"GQZOpenError" format:@"Could not open %@: %s", a1, strerror(*v4)];
  }

  return v3;
}

CFDictionaryRef sub_44FEC(void *a1, void *a2, uint64_t a3, uint64_t a4, __CFString *a5, CFErrorRef *a6)
{
  objc_sync_enter(@"iWorkQuickLookSyncObject");
  context = objc_autoreleasePoolPush();
  if (a2)
  {
    v10 = [a2 path];
    PathComponent = CFURLCopyLastPathComponent(a2);
    LOBYTE(values) = 0;
    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:"]
    {
      if (v10)
      {
        v12 = +[NSFileManager defaultManager];
        v13 = [objc_msgSend(v10 stringByAppendingPathComponent:{@"QuickLook", "stringByAppendingPathComponent:", @"Preview.pdf"}];
        if (!-[NSFileManager fileExistsAtPath:](v12, "fileExistsAtPath:", v13) || (v14 = [[NSData alloc] initWithContentsOfFile:v13], (v15 = v14) == 0) || (v16 = sub_45A3C(v14, a3, PathComponent), v15, !v16))
        {
          v17 = [v10 stringByAppendingPathComponent:kSFAPassphraseVerifierFilename];
          if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", v17) || (v17 = [v10 stringByAppendingPathComponent:off_9D2C0], -[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", v17)))
          {
            v18 = [[NSData alloc] initWithContentsOfFile:v17];
            v47 = 0;
            v19 = sub_55F5C(a5, 0, v18, &v47);

            if (v47 != 1)
            {
              if (a6)
              {
                *a6 = CFErrorCreate(0, @"com.apple.iWork.iWorkImportErrorDomain", 1, 0);
              }

              values = sub_552A4(a4, 1);
              v16 = CFDictionaryCreate(0, &off_9CBA8, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              v20 = 0;
              v21 = 0;
LABEL_34:
              v22 = 1;
              goto LABEL_70;
            }
          }

          else
          {
            v19 = 0;
          }

          if (!sub_55094(v10))
          {
            v20 = [GQPProcessorFactory retainedProcessorForDocument:a2 zipArchive:0 uti:a4 outputType:3 outputPath:0 previewRequest:0 progressiveHelper:0 cryptoKey:v19];
            v37 = [objc_msgSend(v20 "documentState")];
            [v37 setUriPrefix:a3];
            [v20 go];
            if ([v20 isWrongFormat])
            {
              if (a6)
              {
                *a6 = CFErrorCreate(0, @"com.apple.iWork.iWorkImportErrorDomain", 2, 0);
              }

              values = sub_552A4(a4, 2);
              v38 = CFDictionaryCreate(0, &off_9CBA8, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            }

            else
            {
              v38 = [v37 createOutputDictionary];
            }

            v16 = v38;
            v22 = 0;
            goto LABEL_51;
          }

          v16 = sub_45CD4(v10, PathComponent, a3, a5);
        }

        v22 = 0;
      }

      else
      {
        v22 = 0;
        v16 = 0;
      }

      v20 = 0;
LABEL_51:
      v21 = 0;
      goto LABEL_70;
    }

    v21 = [[SFUZipArchive alloc] initWithPath:objc_msgSend(a2 collapseCommonRootDirectory:"path") ignoreCase:{1, 1}];
    if (!v21)
    {
      v22 = 0;
      v16 = 0;
LABEL_69:
      v20 = 0;
      goto LABEL_70;
    }
  }

  else
  {
    if (!a1)
    {
      v20 = 0;
      v23 = 0;
      goto LABEL_74;
    }

    v21 = [[SFUZipArchive alloc] initWithData:a1 collapseCommonRootDirectory:1 ignoreCase:1];
    PathComponent = 0;
    v20 = 0;
    v23 = 0;
    if (!v21)
    {
LABEL_74:
      values = sub_552A4(a4, 0);
      v16 = CFDictionaryCreate(0, &off_9CBA8, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v21 = v23;
      goto LABEL_75;
    }
  }

  v24 = [v21 entryWithName:@"QuickLook/Preview.pdf"];
  if (v24)
  {
    v16 = sub_45A3C([v24 data], a3, PathComponent);
    if (v16)
    {
LABEL_68:
      v22 = 0;
      goto LABEL_69;
    }
  }

  if ([v21 isEncrypted])
  {
    goto LABEL_25;
  }

  v25 = kSFAPassphraseVerifierFilename;
  if (![v21 entryWithName:kSFAPassphraseVerifierFilename])
  {
    v25 = off_9D2C0;
    if (![v21 entryWithName:off_9D2C0])
    {
      v28 = 0;
      goto LABEL_27;
    }
  }

  if (!v25)
  {
LABEL_25:
    v26 = [v21 passphraseVerifier];
  }

  else
  {
    v26 = [[NSData alloc] initWithData:{objc_msgSend(objc_msgSend(v21, "entryWithName:", v25), "data")}];
  }

  v27 = v26;
  v47 = 0;
  v28 = sub_55F5C(a5, 0, v26, &v47);

  if (v47 != 1)
  {
    if (a6)
    {
      *a6 = CFErrorCreate(0, @"com.apple.iWork.iWorkImportErrorDomain", 1, 0);
    }

    values = sub_552A4(a4, 1);
    v16 = CFDictionaryCreate(0, &off_9CBA8, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v20 = 0;
    goto LABEL_34;
  }

LABEL_27:
  if (sub_55234(v21))
  {
    v29 = [[TSUTemporaryDirectory alloc] initWithError:0];
    if (PathComponent)
    {
      v30 = [NSString stringWithFormat:@"%@", PathComponent];
    }

    else
    {
      v30 = [@"file" stringByAppendingPathExtension:sub_5525C(a4)];
    }

    v36 = [objc_msgSend(v29 "path")];
    values = 0;
    [a1 writeToFile:v36 options:1 error:&values];
    v16 = sub_45CD4(v36, PathComponent, a3, a5);

    goto LABEL_68;
  }

  if (sub_550F0(v21))
  {
    v31 = [[TSUTemporaryDirectory alloc] initWithError:0];
    if (PathComponent)
    {
      v32 = [NSString stringWithFormat:@"%@", PathComponent];
    }

    else
    {
      v32 = [@"file" stringByAppendingPathExtension:sub_5525C(a4)];
    }

    v41 = [objc_msgSend(v31 "path")];
    if ([objc_msgSend(objc_msgSend(v41 "pathExtension")])
    {
      v41 = [v41 stringByDeletingPathExtension];
    }

    [v21 decompressAtPath:v41];
    v16 = sub_45CD4(v41, PathComponent, a3, a5);

    goto LABEL_68;
  }

  v33 = [v21 isEncrypted];
  if (v28)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (v34 == 1)
  {
    [v21 setCryptoKey:v28];
    v35 = [GQPProcessorFactory retainedProcessorForDocument:a2 zipArchive:v21 uti:a4 outputType:3 outputPath:0 previewRequest:0 progressiveHelper:0];
  }

  else
  {
    v35 = [GQPProcessorFactory retainedProcessorForDocument:a2 zipArchive:v21 uti:a4 outputType:3 outputPath:0 previewRequest:0 progressiveHelper:0 cryptoKey:v28];
  }

  v20 = v35;
  v39 = [objc_msgSend(v35 "documentState")];
  [v39 setUriPrefix:a3];
  [v20 go];
  if ([v20 isWrongFormat])
  {
    if (a6)
    {
      *a6 = CFErrorCreate(0, @"com.apple.iWork.iWorkImportErrorDomain", 2, 0);
    }

    values = sub_552A4(a4, 2);
    v40 = CFDictionaryCreate(0, &off_9CBA8, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v40 = [v39 createOutputDictionary];
  }

  v16 = v40;
  v22 = 0;
LABEL_70:
  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  if ((v22 | 2) == 2)
  {
    v23 = v21;
    if (v16)
    {
LABEL_75:

      goto LABEL_76;
    }

    goto LABEL_74;
  }

LABEL_76:
  objc_autoreleasePoolPop(context);
  objc_sync_exit(@"iWorkQuickLookSyncObject");
  return v16;
}

void sub_45884(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFErrorRef *a11, uint64_t a12, uint64_t a13, id obj)
{
  if (a2 == 2)
  {
    objc_begin_catch(exc_buf);
    if (a11)
    {
      if (!*a11)
      {
        *a11 = CFErrorCreate(0, @"com.apple.iWork.iWorkImportErrorDomain", 0, 0);
      }
    }

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x457C4);
}

__CFDictionary *sub_45A3C(const __CFData *a1, uint64_t a2, uint64_t a3)
{
  v6 = CGDataProviderCreateWithCFData(a1);
  v7 = CGPDFDocumentCreateWithProvider(v6);
  CFRelease(v6);
  NumberOfPages = CGPDFDocumentGetNumberOfPages(v7);
  if (!NumberOfPages)
  {
    v25 = 0;
    if (!v7)
    {
      return v25;
    }

    goto LABEL_11;
  }

  v9 = NumberOfPages;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 1;
  v13 = 8.0;
  do
  {
    Page = CGPDFDocumentGetPage(v7, v12);
    BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
    if (v11 < BoxRect.size.width + 15.0)
    {
      v11 = BoxRect.size.width + 15.0;
    }

    v15 = BoxRect.size.height + 8.0;
    v13 = v13 + v15;
    if (v10 < v15)
    {
      v10 = BoxRect.size.height + 8.0;
    }

    ++v12;
    --v9;
  }

  while (v9);
  v16 = objc_alloc_init(GQUIglooOutputBundle);
  [(GQUIglooOutputBundle *)v16 setUriPrefix:a2];
  v17 = [[GQHXML alloc] initEmptyWithFilename:@"index.html" useExternalCss:1];
  [v17 startElement:"head"];
  LODWORD(v18) = 10.0;
  [v17 addViewportMetaTagForDocumentSize:v11 maximumScale:{v10, v18}];
  if (a3)
  {
    [v17 startElement:"title"];
    [v17 addContent:a3];
    [v17 endElement];
  }

  [v17 endElement];
  [v17 startElement:"body"];
  [v17 setAttribute:"style" value:"margin: 0px; padding: 0px;"];
  [v17 startElement:"iframe"];
  v19 = v11;
  LODWORD(v20) = vcvtps_s32_f32(v19);
  v21 = v13;
  LODWORD(v22) = vcvtps_s32_f32(v21);
  v23 = CFStringCreateWithFormat(0, 0, @"border: 0px solid black; width: %dpx; height: %dpx;", v20, v22);
  [v17 setAttribute:"style" cfStringValue:v23];
  CFRelease(v23);
  [(GQUIglooOutputBundle *)v16 setData:a1 mimeType:@"application/pdf" forNamedResource:@"preview.pdf"];
  v24 = [(GQUIglooOutputBundle *)v16 createUriForResource:@"preview.pdf"];
  [v17 setAttribute:"src" cfStringValue:v24];
  CFRelease(v24);
  [v17 endElement];
  [v17 endElement];
  [v17 writeToOutputBundle:v16 isThumbnail:0];

  v25 = [(GQUIglooOutputBundle *)v16 createOutputDictionary];
  if (v7)
  {
LABEL_11:
    CGPDFDocumentRelease(v7);
  }

  return v25;
}

__CFDictionary *sub_45CD4(uint64_t a1, uint64_t a2, uint64_t a3, __CFString *a4)
{
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = &stru_85620;
  }

  v7 = [[TQQuicklook alloc] initWithPath:a1 passphrase:v6];
  if ([v7 load])
  {
    v8 = [v7 newPDFPreviewAndClose];
    v9 = v8;
    if (v8)
    {
      v10 = sub_45A3C(v8, a3, a2);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  [v7 close];

  return v10;
}

void sub_45E14(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

id sub_46384(void *a1, int a2)
{
  v4 = [a1 model];
  v5 = [a1 legend];
  v6 = [a1 style];
  if (v4)
  {
    v7 = v6;
    if (a2)
    {
      v8 = v5;
    }

    else
    {
      v8 = a1;
    }

    [objc_msgSend(v8 "geometry")];
    v10 = v9;
    v12 = v11;
    v13 = [a1 type];
    v14 = v13;
    if (v13 <= 0x18uLL)
    {
      v15 = v12;
      v16 = llroundf(v15);
      v17 = v10;
      v18 = llroundf(v17);
      v19 = qword_A3610[v13];
      v25 = 0;
      if ([v7 hasValueForBoolProperty:187 value:&v25] && v25 == 1)
      {
        v19 = sub_46620(v19);
      }

      v20 = v16;
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      sub_4670C(Mutable);
      sub_467D0(Mutable, v7, a2);
      if ((a2 & 1) == 0 && [v4 title])
      {
        v22 = [v4 title];
        sub_46904(Mutable, v22, kOIChartTitleKey, v7, 148, 149);
      }

      sub_469CC(Mutable, v7, a2, v18, v20);
      if (v14 == 14)
      {
        v14 = 13;
      }

      v23 = (v20 + v18) / 6.0;
      sub_46B24(Mutable, v19, v4, v14, v7, a2, v23);
      if ((a2 & 1) == 0)
      {
        sub_473C8(Mutable, v14, v7, v4);
      }

      sub_47A1C(Mutable, v14);
      v4 = sub_47AA8();
      CFRelease(Mutable);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

id sub_4658C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = CFStringCreateWithFormat(0, 0, @"%s.%@", a3, @"pdf");
  v6 = [a2 setData:a1 mimeType:@"application/pdf" forNamedResource:v5];
  v7 = 0;
  if (v6)
  {
    v7 = [a2 createUriForResource:v5];
  }

  CFRelease(v5);
  return v7;
}

const __CFString *sub_46620(const __CFString *a1)
{
  if (CFStringCompare(a1, kOIChartStackedColumnType, 1uLL) == kCFCompareEqualTo)
  {
    v3 = &kOIChartPercentStackedColumnType;
    return *v3;
  }

  if (CFStringCompare(a1, kOIChartStackedBarType, 1uLL) == kCFCompareEqualTo)
  {
    v3 = &kOIChartPercentStackedBarType;
    return *v3;
  }

  if (CFStringCompare(a1, kOIChartStackedLineType, 1uLL) == kCFCompareEqualTo)
  {
    v3 = &kOIChartPercentStackedLineType;
    return *v3;
  }

  if (CFStringCompare(a1, kOIChart3DStackedColumnType, 1uLL) == kCFCompareEqualTo)
  {
    v3 = &kOIChart3DPercentStackedColumnType;
    return *v3;
  }

  if (CFStringCompare(a1, kOIChart3DStackedBarType, 1uLL))
  {
    return a1;
  }

  else
  {
    return kOIChart3DPercentStackedBarType;
  }
}

void sub_4670C(__CFDictionary *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = sub_47B20(1.0, 1.0, 1.0, 0.0);
  CFDictionarySetValue(Mutable, kOIChartFillColorKey, v3);
  CFDictionarySetValue(Mutable, kOIChartStrokeColorKey, v3);
  CGColorRelease(v3);
  CFDictionarySetValue(a1, kOIChartCanvasKey, Mutable);

  CFRelease(Mutable);
}

void sub_467D0(__CFDictionary *a1, void *a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = Mutable;
  if (a3)
  {
    sub_47DC0(Mutable, kOIChartHidePlotAreaKey, 1);
  }

  else
  {
    v10 = 151;
    v8 = sub_47B20(1.0, 1.0, 1.0, 0.0);
    CFDictionarySetValue(v7, kOIChartFillColorKey, v8);
    CFDictionarySetValue(v7, kOIChartStrokeColorKey, v8);
    CGColorRelease(v8);
    sub_47B98(v7, a2, 150, &v10);
    v9 = 0;
    [a2 hasValueForBoolProperty:152 value:&v9];
    if (v9 == 1)
    {
      sub_47D08(v7, a2, 156);
    }
  }

  CFDictionarySetValue(a1, kOIChartPlotKey, v7);
  CFRelease(v7);
}

void sub_46904(__CFDictionary *a1, const void *a2, const void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = 0;
  [a4 hasValueForBoolProperty:a5 value:&v13];
  if (v13 == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v12 = Mutable;
      CFDictionarySetValue(Mutable, kOIChartLabelKey, a2);
      sub_47E28(v12, a4, a6);
      CFDictionarySetValue(a1, a3, v12);
      CFRelease(v12);
    }
  }
}

void sub_469CC(__CFDictionary *a1, void *a2, int a3, double a4, double a5)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v11 = Mutable;
  if (a3)
  {
    v12 = sub_47B20(1.0, 1.0, 1.0, 0.0);
    CFDictionarySetValue(v11, kOIChartFillColorKey, v12);
    CFDictionarySetValue(v11, kOIChartStrokeColorKey, v12);
    CGColorRelease(v12);
    if (a4 >= a5 + a5)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    sub_47DC0(v11, kOIChartLegendPlacementKey, v13);
    sub_47B98(v11, a2, 144, 0);
    sub_47D08(v11, a2, 145);
    sub_47E28(v11, a2, 147);
  }

  else
  {
    sub_47DC0(Mutable, kOIChartHideLegendKey, 1);
  }

  CFDictionarySetValue(a1, kOIChartLegendKey, v11);

  CFRelease(v11);
}

void sub_46B24(__CFDictionary *a1, const void *a2, void *a3, unsigned int a4, void *a5, char a6, float a7)
{
  v12 = [a3 direction];
  v13 = [a3 chartData];
  v14 = [a3 rowNames];
  v78 = a3;
  v15 = [a3 columnNames];
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFDictionarySetValue(a1, kOIChartSeriesKey, Mutable);
  v16 = a4 - 23;
  if (v12 == 1)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v64 = v17;
  Count = CFArrayGetCount(v17);
  v79 = v13;
  v18 = CFArrayGetCount(v13);
  v19 = v18;
  v20 = 0;
  v21 = a4 == 21;
  if (a4 == 21)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  if (a4 != 21 && (a6 & 1) == 0)
  {
    if (a4 <= 0xF && ((1 << a4) & 0xE800) != 0)
    {
      v21 = v18 - 1;
      if (v18 >= 1)
      {
        v20 = 0;
        v72 = 0;
        v19 = -1;
        v22 = -1;
LABEL_40:
        v32 = 0;
        theArraya = v20;
        v34 = v16 < 2 && v20 != 0;
        v71 = v34;
        v70 = kOIChartSeriesValuesKey;
        v63 = kOIChartSeriesBaseValuesKey;
        key = kOIChartLabelKey;
        v73 = kOIChartSeriesTypeKey;
        v68 = v19;
        v69 = v21;
        v35 = v22 + v21;
        v67 = kOIChartStrokeColorKey;
        v60 = kOIChartFillColorKey;
        v61 = kOIChartSeriesOffsetKey;
        v58 = kOIChartStrokeWidthKey;
        v59 = kOIChartSeriesOnSecondaryAxisKey;
        v36 = v22;
        while (1)
        {
          if (v71)
          {
            v37 = [CFArrayGetValueAtIndex(theArraya v69 + v32)];
          }

          else
          {
            v37 = v69 + v32;
          }

          v38 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFArrayAppendValue(Mutable, v38);
          sub_47FD8(v38, v70, v79, v37);
          v39 = v37;
          if (a4 == 21)
          {
            sub_47FD8(v38, v63, v79, v37 - 1);
            v39 = v32 / 2;
          }

          if (v39 < Count)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v64, v39);
            CFDictionarySetValue(v38, key, ValueAtIndex);
          }

          v84 = 0;
          v41 = [a5 hasValueForObjectProperty:(v37 + 0x10000) value:{&v84, v58}];
          if (v16 <= 1)
          {
            break;
          }

          CFDictionarySetValue(v38, v73, a2);
          v83 = 0;
          if (a4 != 21 || [v84 hasValueForIntProperty:232 value:&v83] && v83 >= 1)
          {
            v47 = 0;
            if (v41)
            {
LABEL_72:
              v49 = &unk_9D5F0 + 4 * v47;
              if (v16 >= 2)
              {
                v49 = &unk_9D58C + 4 * a4;
              }

              if (sub_47D08(v38, v84, *v49))
              {
                if (a4 == 13 || v47 == 1)
                {
                  goto LABEL_86;
                }

                goto LABEL_82;
              }
            }

LABEL_78:
            v50 = sub_47B20(flt_9D4B8[4 * (v37 % 6)], flt_9D4B8[4 * (v37 % 6) + 1], flt_9D4B8[4 * (v37 % 6) + 2], flt_9D4B8[4 * (v37 % 6) + 3]);
            CFDictionarySetValue(v38, v67, v50);
            CGColorRelease(v50);
            goto LABEL_79;
          }

          sub_47DC0(v38, v58, 0);
          v47 = 0;
LABEL_79:
          if (a4 == 13 || v47 == 1)
          {
            goto LABEL_86;
          }

          if (!v41)
          {
            goto LABEL_85;
          }

LABEL_82:
          v51 = &unk_9D57C + 4 * v47;
          if (v16 >= 2)
          {
            v51 = &unk_9D518 + 4 * a4;
          }

          if ((sub_47B98(v38, v84, *v51, 0) & 1) == 0)
          {
LABEL_85:
            v52 = sub_47B20(flt_9D4B8[4 * (v37 % 6)], flt_9D4B8[4 * (v37 % 6) + 1], flt_9D4B8[4 * (v37 % 6) + 2], flt_9D4B8[4 * (v37 % 6) + 3]);
            CFDictionarySetValue(v38, v60, v52);
            CGColorRelease(v52);
          }

LABEL_86:
          if (v16 > 1)
          {
            if (a4 - 11 < 2)
            {
              v53 = 230;
              goto LABEL_98;
            }

            if (a4 == 13)
            {
              v53 = 229;
              goto LABEL_98;
            }

            if (a4 == 21)
            {
              v53 = 231;
              goto LABEL_98;
            }

            v82 = 0;
          }

          else
          {
            if (v47 == 3)
            {
              v53 = 296;
LABEL_98:
              v82 = 0;
              goto LABEL_99;
            }

            v82 = 0;
            if (v47 == 1)
            {
              v53 = 295;
LABEL_99:
              if ([v84 hasValueForIntProperty:v53 value:&v82] && v82)
              {
                v54 = &unk_9D664 + 4 * v47;
                if (v16 >= 2)
                {
                  v54 = &unk_9D600 + 4 * a4;
                }

                if (v16 > 1)
                {
                  if (a4 - 11 < 2)
                  {
                    v56 = 250;
                  }

                  else if (a4 == 13)
                  {
                    v56 = 251;
                  }

                  else if (a4 == 21)
                  {
                    v56 = 252;
                  }

                  else
                  {
                    v56 = 0;
                  }
                }

                else
                {
                  if (v47 == 1)
                  {
                    v55 = 297;
                  }

                  else
                  {
                    v55 = 0;
                  }

                  if (v47 == 3)
                  {
                    v56 = 298;
                  }

                  else
                  {
                    v56 = v55;
                  }
                }

                sub_480D4(v38, v84, *v54, v56);
              }
            }
          }

          v81 = 0.0;
          if ([v84 hasValueForFloatProperty:316 value:&v81])
          {
            sub_47F70(v38, v61, v81 * a7);
          }

          if (a4 == 24)
          {
            v80 = 0;
            if ([v78 hasIntValueForProperty:@"SFC2DPlotSeriesOnYAxisProperty" forSeriesAtIndex:v37 value:&v80])
            {
              if (v80 == 2)
              {
                sub_47DC0(v38, v59, 1);
              }
            }
          }

          CFRelease(v38);
          v57 = v35 + v32 < v68;
          if (!v72)
          {
            v57 = v35 + v32 > v68;
          }

          v32 += v36;
          if (!v57)
          {
            v20 = theArraya;
            goto LABEL_129;
          }
        }

        v83 = 0;
        v42 = [v78 hasIntValueForProperty:@"SFC2DMixedChartSeriesTypeProperty" forSeriesAtIndex:v37 value:&v83];
        v43 = v83;
        if (!v42)
        {
          v43 = 2 * (v37 != 0);
        }

        v44 = 1;
        if (v43 == 2)
        {
          v44 = 2;
        }

        v45 = 13;
        if (v43 == 2)
        {
          v45 = 2;
        }

        v46 = v43 == 1;
        if (v43 == 1)
        {
          v47 = 3;
        }

        else
        {
          v47 = v44;
        }

        v48 = 11;
        if (!v46)
        {
          v48 = v45;
        }

        a2 = qword_A3610[v48];
        CFDictionarySetValue(v38, v73, a2);
        v83 = 0;
        if (v41)
        {
          goto LABEL_72;
        }

        goto LABEL_78;
      }

      goto LABEL_131;
    }

    if (v16 > 1)
    {
      v20 = 0;
    }

    else
    {
      theArray = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      v84 = 0;
      v85 = 0;
      v86 = 0;
      if (v19 >= 1)
      {
        v23 = 0;
        do
        {
          v83 = 0;
          v24 = [v78 hasIntValueForProperty:@"SFC2DMixedChartSeriesTypeProperty" forSeriesAtIndex:v23 value:&v83];
          v25 = 2 * (v23 != 0);
          if (v24)
          {
            v25 = v83;
          }

          if (v25)
          {
            if (v25 == 2)
            {
              v26 = 0;
              v27 = &v85;
            }

            else
            {
              v26 = v25 == 1;
              if (v25 == 1)
              {
                v27 = &v84;
              }

              else
              {
                v27 = &v86;
              }
            }
          }

          else
          {
            v26 = 1;
            v27 = &v86;
          }

          if (!*v27)
          {
            *v27 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          }

          v28 = [[NSNumber alloc] initWithInt:v23];
          v29 = *v27;
          if (v26)
          {
            CFArrayInsertValueAtIndex(v29, 0, v28);
          }

          else
          {
            CFArrayAppendValue(v29, v28);
          }

          ++v23;
        }

        while ((v19 & 0x7FFFFFFF) != v23);
      }

      v30 = 0;
      v20 = theArray;
      do
      {
        v31 = *(&v84 + v30);
        if (v31)
        {
          v87.length = CFArrayGetCount(*(&v84 + v30));
          v87.location = 0;
          CFArrayAppendArray(theArray, v31, v87);
          CFRelease(v31);
        }

        v30 += 8;
      }

      while (v30 != 24);
    }

    v21 = 0;
    v22 = 1;
  }

  if (v21 < v19)
  {
    v72 = 1;
    goto LABEL_40;
  }

LABEL_129:
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_131:
  CFRelease(Mutable);
}

void sub_473C8(__CFDictionary *a1, unsigned int a2, void *a3, void *a4)
{
  if ([a4 direction] == &dword_0 + 1)
  {
    v8 = [a4 rowNames];
  }

  else
  {
    v8 = [a4 columnNames];
  }

  v9 = v8;
  v10 = [a4 valueTitle];
  v11 = [a4 catagoryTitle];
  v12 = dword_9D674[a2];
  if (v12)
  {
    v13 = v11;
    v42 = v9;
    v44 = v10;
    v46 = a1;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v14 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v15 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v16 = 0;
    if (a2 == 24)
    {
      v16 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      sub_47DC0(v16, kOIChartStrokeWidthKey, 0);
    }

    if (v12 == 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    if (v12 == 1)
    {
      v18 = v14;
    }

    else
    {
      v18 = v15;
    }

    v47 = v18;
    v19 = kOIChartAxisTitleKey;
    sub_46904(v17, v13, kOIChartAxisTitleKey, a3, 170, 173);
    v43 = v14;
    if (v12 == 3)
    {
      sub_47EA8(v14, 263, a3);
      v54 = 0;
      v20 = v16;
    }

    else
    {
      v54 = 0;
      v20 = v16;
      if ([a3 hasValueForBoolProperty:180 value:&v54] && v54 == 1 && v42)
      {
        v21 = sub_47F00([a4 chartData]);
        v22 = v42;
        if (v21 < 1 || (v23 = v21, Count = CFArrayGetCount(v42), v22 = v42, Count <= v23))
        {
          CFDictionarySetValue(v17, kOIChartAxisLabelsKey, v22);
        }

        else
        {
          v25 = v23;
          v41 = &v41;
          off_84B50(Count);
          v28 = (&v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
          if (v27 >= 0x200)
          {
            v29 = 512;
          }

          else
          {
            v29 = v27;
          }

          v30 = v26;
          bzero(&v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
          v55.location = 0;
          v55.length = v25;
          CFArrayGetValues(v30, v55, v28);
          v31 = v28;
          v20 = v16;
          v32 = CFArrayCreate(0, v31, v25, &kCFTypeArrayCallBacks);
          CFDictionarySetValue(v17, kOIChartAxisLabelsKey, v32);
          CFRelease(v32);
        }

        sub_47DC0(v17, kOIChartAxisCenterLabelsKey, 1);
      }
    }

    v53 = 0;
    if ([a3 hasValueForBoolProperty:175 value:&v53] && v53 == 1)
    {
      sub_47D08(v17, a3, 176);
    }

    sub_47E28(v17, a3, 167);
    sub_46904(v47, v44, v19, a3, 168, 171);
    v52 = 0;
    if ([a3 hasValueForBoolProperty:187 value:&v52] && v52 == 1)
    {
      v34 = kOIChartAxisValueTypeKey;
      LODWORD(v33) = 3.0;
      v35 = [NSNumber numberWithFloat:v33];
      CFDictionarySetValue(v47, v34, v35);
    }

    else
    {
      sub_47EA8(v47, 255, a3);
    }

    v51 = 0;
    if ([a3 hasValueForBoolProperty:185 value:&v51] && v51 == 1)
    {
      sub_47DC0(v47, kOIChartAxisHasLogarithmicScaleKey, 1);
    }

    if ([a3 hasValueForBoolProperty:186 value:&v51] && v51 == 1)
    {
      sub_47DC0(v17, kOIChartAxisHasLogarithmicScaleKey, 1);
    }

    sub_47E28(v15, a3, 311);
    if (a2 == 24)
    {
      sub_46904(v20, [a4 value2Title], v19, a3, 169, 172);
      sub_47EA8(v20, 259, a3);
      if ([a3 hasValueForBoolProperty:211 value:&v51] && v51 == 1)
      {
        sub_47DC0(v20, kOIChartAxisHasLogarithmicScaleKey, 1);
      }

      sub_47E28(v20, a3, 307);
    }

    v50 = 0;
    v36 = [a3 hasValueForBoolProperty:182 value:&v50 + 1];
    v37 = v43;
    if (v36)
    {
      if (HIBYTE(v50) == 1)
      {
        v49 = 0.0;
        if ([a3 hasValueForFloatProperty:183 value:&v49 wasOverriddenWithNull:&v50])
        {
          if ((v50 & 1) == 0)
          {
            sub_47F70(v47, kOIChartAxisMinKey, v49);
          }
        }
      }
    }

    v38 = kOIChartAxisXKey;
    v39 = kOIChartAxisYKey;
    v49 = 0.0;
    if ([a3 hasValueForFloatProperty:184 value:&v49 wasOverriddenWithNull:&v50] && (v50 & 1) == 0)
    {
      sub_47F70(v47, kOIChartAxisMaxKey, v49);
    }

    v48 = 0;
    if ([a3 hasValueForBoolProperty:174 value:&v48] && v48 == 1)
    {
      sub_47D08(v47, a3, 177);
    }

    v40 = Mutable;
    CFDictionarySetValue(Mutable, v38, v37);
    CFDictionarySetValue(v40, v39, v15);
    if (a2 == 24)
    {
      if (v20)
      {
        CFDictionarySetValue(v40, kOIChartAxisSecondaryYKey, v20);
        CFRelease(v20);
      }
    }

    CFDictionarySetValue(v46, kOIChartAxisKey, v40);
    CFRelease(v37);
    CFRelease(v15);
    CFRelease(v40);
  }
}

void sub_47A1C(__CFDictionary *a1, int a2)
{
  if (a2 == 6)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    sub_47DC0(Mutable, kOIChart3DElevationKey, 70);
    CFDictionarySetValue(a1, kOIChart3DSettingsKey, Mutable);

    CFRelease(Mutable);
  }
}

CGColorRef sub_47B20(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v5 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);
  return v5;
}

id sub_47B98(__CFDictionary *a1, void *a2, uint64_t a3, unsigned int *a4)
{
  v16 = 1065353216;
  if (a4 && (v8 = *a4, v8))
  {
    v9 = [a2 hasValueForFloatProperty:v8 value:&v16];
  }

  else
  {
    v9 = 0;
  }

  v15 = 0;
  if (!a3)
  {
    return 0;
  }

  result = [a2 hasValueForObjectProperty:a3 value:&v15];
  if (!result)
  {
    return result;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  ValueAtIndex = v15;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        ValueAtIndex = [v15 color];
        if (ValueAtIndex)
        {
          goto LABEL_9;
        }

        [v15 imageBinary];
      }

      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex([v15 stops], 0);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  if (!ValueAtIndex)
  {
    return 0;
  }

LABEL_9:
  v13 = &v16;
  if (!v9)
  {
    v13 = 0;
  }

  if (a4)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_481C4(a1, kOIChartFillColorKey, ValueAtIndex, v14);
  return &dword_0 + 1;
}

id sub_47D08(__CFDictionary *a1, void *a2, uint64_t a3)
{
  v9 = 0;
  if (!a3)
  {
    return 0;
  }

  result = [a2 hasValueForObjectProperty:a3 value:&v9];
  if (result)
  {
    v5 = [v9 pattern];
    if (!v5 || [v5 type] != 2)
    {
      [v9 width];
      v7 = v6;
      v8 = [v9 color];
      sub_47DC0(a1, kOIChartStrokeWidthKey, llroundf(v7));
      sub_481C4(a1, kOIChartStrokeColorKey, v8, 0);
    }

    return &dword_0 + 1;
  }

  return result;
}

void sub_47DC0(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberNSIntegerType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

id sub_47E28(__CFDictionary *a1, void *a2, uint64_t a3)
{
  v6 = 0;
  if (!a3)
  {
    return 0;
  }

  result = [a2 hasValueForObjectProperty:a3 value:&v6];
  if (result)
  {
    v5 = 0;
    if ([v6 hasValueForObjectProperty:3 value:&v5])
    {
      sub_481C4(a1, kOIChartTextColorKey, v5, 0);
    }

    return &dword_0 + 1;
  }

  return result;
}

void sub_47EA8(__CFDictionary *a1, uint64_t a2, void *a3)
{
  value = 0;
  if ([a3 hasValueForObjectProperty:a2 value:&value])
  {
    CFDictionarySetValue(a1, kOIChartAxisCustomFormatterKey, value);
  }
}

uint64_t sub_47F00(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  LODWORD(v4) = 0;
  for (i = 0; i != v3; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    v7 = CFArrayGetCount(ValueAtIndex);
    if (v7 <= v4)
    {
      v4 = v4;
    }

    else
    {
      v4 = v7;
    }
  }

  return v4;
}

void sub_47F70(__CFDictionary *a1, const void *a2, float a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void sub_47FD8(__CFDictionary *a1, const void *a2, const __CFArray *a3, int a4)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  ValueAtIndex = CFArrayGetValueAtIndex(a3, a4);
  Count = CFArrayGetCount(ValueAtIndex);
  if (Count >= 1)
  {
    v11 = 0;
    v12 = Count & 0x7FFFFFFF;
    do
    {
      v13 = CFArrayGetValueAtIndex(a3, a4);
      v14 = CFArrayGetValueAtIndex(v13, v11);
      if (v14)
      {
        v15 = v14;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          CFArrayAppendValue(Mutable, v15);
        }
      }

      ++v11;
    }

    while (v12 != v11);
  }

  CFDictionarySetValue(a1, a2, Mutable);

  CFRelease(Mutable);
}

uint64_t sub_480D4(__CFDictionary *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  if (!a3 || ![a2 hasValueForObjectProperty:a3 value:&v13])
  {
    return 0;
  }

  v7 = [v13 color];
  v8 = 14;
  if (a4)
  {
    v12 = 0;
    v9 = [a2 hasValueForIntProperty:a4 value:&v12];
    if ((v9 & (v12 > 0)) != 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = 14;
    }
  }

  v10 = 1;
  sub_47DC0(a1, kOIChartSeriesMarkerTypeKey, 1);
  sub_47DC0(a1, kOIChartSeriesMarkerWidthKey, v8);
  sub_481C4(a1, kOIChartSeriesMarkerColorKey, v7, 0);
  return v10;
}

void sub_481C4(__CFDictionary *a1, const void *a2, void *a3, float *a4)
{
  [a3 alphaComponent];
  v9 = v8;
  if (a4)
  {
    v9 = *a4 * v9;
  }

  [a3 redComponent];
  v11 = v10;
  [a3 greenComponent];
  v13 = v12;
  [a3 blueComponent];
  v15 = sub_47B20(v11, v13, v14, v9);
  CFDictionarySetValue(a1, a2, v15);

  CGColorRelease(v15);
}

void sub_4827C()
{
  qword_A3610 = &stru_85620;
  *algn_A3618 = kOIChartPieType;
  qword_A3620 = kOIChartColumnType;
  unk_A3628 = kOIChartStackedColumnType;
  qword_A3630 = kOIChartBarType;
  unk_A3638 = kOIChartStackedBarType;
  qword_A3640 = kOIChart3DPieType;
  unk_A3648 = kOIChart3DColumnType;
  qword_A3650 = kOIChart3DStackedColumnType;
  unk_A3658 = kOIChart3DBarType;
  qword_A3660 = kOIChart3DStackedBarType;
  unk_A3668 = kOIChartLineType;
  qword_A3670 = kOIChartStackedLineType;
  unk_A3678 = kOIChartLineType;
  qword_A3680 = kOIChartLineType;
  unk_A3688 = kOIChartLineType;
  qword_A3690 = kOIChartStackedLineType;
  unk_A3698 = kOIChart3DBarType;
  qword_A36A0 = kOIChart3DStackedBarType;
  unk_A36A8 = kOIChart3DBarType;
  qword_A36B0 = kOIChart3DStackedBarType;
  unk_A36B8 = kOIChartXYType;
  qword_A36C0 = kOIChartStockType;
  unk_A36C8 = kOIChartLineType;
  qword_A36D0 = kOIChartLineType;
}

uint64_t sub_483D8(xmlTextReader *a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPSectionTemplatePage);
  [objc_msgSend(a2 "documentState")];
  mHeaderIdentifier = v4->mHeaderIdentifier;
  if (mHeaderIdentifier)
  {
    CFRelease(mHeaderIdentifier);
  }

  v4->mHeaderIdentifier = 0;
  mFooterIdentifier = v4->mFooterIdentifier;
  if (mFooterIdentifier)
  {
    CFRelease(mFooterIdentifier);
  }

  v4->mFooterIdentifier = 0;
  v4->mHeaderIdentifier = sub_4294C(a1, qword_A3608, "header");
  v4->mFooterIdentifier = sub_4294C(a1, qword_A3608, "footer");

  return 1;
}

uint64_t sub_48490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A36D8, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A36D8, &dword_0);
  sub_3F3A8(&unk_A3708, "pageMaster", sub_483D8, 0, 0, &unk_A36D8);

  return __cxa_atexit(sub_3F2F8, &unk_A3708, &dword_0);
}

id sub_48548(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDWPContainerHint);
  v5 = [(GQDWPContainerHint *)v4 readAttributesFromReader:a1];
  [objc_msgSend(a2 "documentState")];

  return v5;
}

uint64_t sub_48800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A3748, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A3748, &dword_0);
  sub_3F3A8(&unk_A3778, "container hint", sub_48548, 0, 0, &unk_A3748);
  __cxa_atexit(sub_3F2F8, &unk_A3778, &dword_0);
  sub_37B10(qword_A37B8, &unk_A3778, sub_3C2C4);

  return __cxa_atexit(j_nullsub_2_5, qword_A37B8, &dword_0);
}

uint64_t sub_48E00(xmlTextReader *a1, void *a2)
{
  if (sub_42A3C(a1, [objc_msgSend(a2 "documentState")] + 3))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_48E4C(xmlTextReader *a1, void *a2)
{
  if (sub_429BC(a1, [objc_msgSend(a2 "documentState")] + 5))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

id sub_48E98(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDPointPath);
  v5 = [(GQDPointPath *)v4 readAttributesFromReader:a1 processor:a2];
  if (v5 == 1)
  {
    [objc_msgSend(objc_msgSend(a2 "documentState")];
    [objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_49458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A4340, 0, a3, a4, a5, a6, a7, a8, v15);
  __cxa_atexit(sub_3F0F0, &unk_A4340, &dword_0);
  sub_3F3A8(&unk_A4370, "point", sub_48E00, 0, 0, &unk_A4340);
  __cxa_atexit(sub_3F2F8, &unk_A4370, &dword_0);
  sub_37AEC(qword_A43B0, &unk_A4370);
  __cxa_atexit(j_nullsub_2_5, qword_A43B0, &dword_0);
  sub_3F3A8(&unk_A43C8, "size", sub_48E4C, 0, 0, &unk_A4340);
  __cxa_atexit(sub_3F2F8, &unk_A43C8, &dword_0);
  sub_37AEC(qword_A4408, &unk_A43C8);
  __cxa_atexit(j_nullsub_2_5, qword_A4408, &dword_0);
  sub_3F198(&unk_A4420, "size", v8, v9, v10, v11, v12, v13, qword_A4408);
  __cxa_atexit(sub_3F0F0, &unk_A4420, &dword_0);
  sub_3F3A8(&unk_A37D0, "point-path", sub_48E98, 0, 0, &unk_A4420);

  return __cxa_atexit(sub_3F2F8, &unk_A37D0, &dword_0);
}

uint64_t sub_4B160(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*result == 1)
    {
      v2 = *(a2 + 8);
      v3 = *a2;
      if (*a2 > 1)
      {
        switch(v3)
        {
          case 2:
            if (*(result + 72) == 1)
            {
              *(result + 24) = *v2;
            }

            *(result + 56) = *v2;
            v6 = v2[1];
            break;
          case 3:
            if (*(result + 72) == 1)
            {
              *(result + 24) = *v2;
            }

            *(result + 56) = v2[1];
            v6 = v2[2];
            break;
          case 4:
LABEL_21:
            *result = 0;
            goto LABEL_22;
          default:
            goto LABEL_22;
        }

        goto LABEL_19;
      }

      if (!v3)
      {
        if (!*(result + 72))
        {
          *(result + 8) = *v2;
          *(result + 56) = *v2;
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (v3 == 1)
      {
        v4 = (result + 40);
        v5 = 56;
        if (*(result + 72) == 1)
        {
          v5 = 24;
          v4 = *(a2 + 8);
        }

        *(result + v5) = *v4;
        v6 = *v2;
LABEL_19:
        *(result + 40) = v6;
      }
    }

LABEL_22:
    ++*(result + 72);
  }

  return result;
}

double sub_4B660(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a3;
  v8 = a7;
  v9 = v8 == 0.0;
  v10 = v8 / v7;
  if (v9)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = v10;
  }

  if (v7 == 0.0)
  {
    return v11;
  }

  else
  {
    return v10;
  }
}

void sub_4B6AC(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = objc_alloc_init(NSAffineTransform);
  v19 = objc_alloc_init(NSAffineTransform);
  v28 = objc_alloc_init(NSAffineTransform);
  v20 = a6;
  v21 = a9;
  v22 = sub_4B660(a2, a3, a4, a5, v20, a7, a8);
  v24 = v23;
  [v18 translateXBy:-(a2 + a4 * 0.5) yBy:-(a3 + a5 * 0.5)];
  [v19 scaleXBy:v22 yBy:v24];
  [v28 translateXBy:a6 + a8 * 0.5 yBy:a7 + v21 * 0.5];
  [a1 appendTransform:v18];
  [a1 appendTransform:v19];
  [a1 appendTransform:v28];
}

double sub_4B7F8@<D0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v18 = objc_alloc_init(NSAffineTransform);
  sub_4B6AC(v18, a2, a3, a4, a5, a6, a7, a8, a9);
  if (v18)
  {
    [v18 transformStruct];
  }

  *a1 = 0u;
  a1[1] = 0u;
  result = 0.0;
  a1[2] = 0u;
  return result;
}

id sub_4BC14(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDRLineEnd);
  v5 = [(GQDRLineEnd *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
    [objc_msgSend(objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_4BD84()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mPath");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A3810, &unk_9D8B0, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_A3810, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mEndPoint");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  sub_37E8C(qword_A3838, v5);
  __cxa_atexit(j_nullsub_2_0, qword_A3838, &dword_0);
  sub_3F198(&unk_A3848, "path", v6, v7, v8, v9, v10, v11, &unk_A3810);
  __cxa_atexit(sub_3F0F0, &unk_A3848, &dword_0);
  sub_3F3A8(&unk_A3878, "stroke", sub_4BC14, 0, 0, &unk_A3848);

  return __cxa_atexit(sub_3F2F8, &unk_A3878, &dword_0);
}

float64x2_t sub_4CF44(float64x2_t *a1, float a2, float a3)
{
  v4 = __sincosf_stret(a3);
  result = vcvtq_f64_f32(vmul_n_f32(__PAIR64__(LODWORD(v4.__sinval), LODWORD(v4.__cosval)), a2));
  *a1 = result;
  return result;
}

CGMutablePathRef sub_4CF8C(const CGPath *a1, __int128 *a2)
{
  info = CGPathCreateMutable();
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  v9 = a2[2];
  CGPathApply(a1, &info, sub_4CFF0);
  return info;
}

void sub_4CFF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2[1];
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = v8 + v3 * v6 + v4 * *v2;
  v11 = v9 + v3 * v7 + v5 * *v2;
  v12 = *a2;
  if (*a2 <= 1)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        CGPathAddLineToPoint(*a1, 0, v10, v11);
      }
    }

    else
    {
      CGPathMoveToPoint(*a1, 0, v10, v11);
    }
  }

  else
  {
    v13 = v2[2];
    v14 = v2[3];
    v15 = v8 + v6 * v14 + v4 * v13;
    v16 = v9 + v7 * v14 + v5 * v13;
    switch(v12)
    {
      case 2:
        CGPathAddQuadCurveToPoint(*a1, 0, v10, v11, v15, v16);
        break;
      case 3:
        CGPathAddCurveToPoint(*a1, 0, v10, v11, v15, v16, v8 + v6 * v2[5] + v4 * v2[4], v9 + v7 * v2[5] + v5 * v2[4]);
        break;
      case 4:
        CGPathCloseSubpath(*a1);
        break;
    }
  }
}

uint64_t sub_4D174(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTDateFormat);
  [(GQDTDateFormat *)v4 readAttributesFromReader:a1];
  [objc_msgSend(a2 "documentState")];
  [objc_msgSend(objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_4D2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A38B8, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A38B8, &dword_0);
  sub_3F3A8(&unk_A38E8, "date-format", sub_4D174, 0, 0, &unk_A38B8);

  return __cxa_atexit(sub_3F2F8, &unk_A38E8, &dword_0);
}

uint64_t sub_4D3AC(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTDurationCell);
  -[GQDTDurationCell setProcessorBundle:](v4, "setProcessorBundle:", [a2 bundle]);
  [(GQDTCell *)v4 readAttributesForBaseTabularCell:a1 processor:a2];
  [(GQDTDurationCell *)v4 readAttributesForDurationCell:a1];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_4D588()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mComputedFormat");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A3928, &unk_A3DA0, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_A3928, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mComputedFormat");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37CD4(&unk_A3950, v5, 1);
  __cxa_atexit(j_nullsub_2_3, &unk_A3950, &dword_0);
  sub_3F198(&unk_A3968, "cf", v6, v7, v8, v9, v10, v11, &unk_A3928);
  __cxa_atexit(sub_3F0F0, &unk_A3968, &dword_0);
  sub_3F5AC(&unk_A3998, "duration-cell", &unk_9F830, sub_4D3AC, sub_1B9DC, &unk_A3968);
  __cxa_atexit(sub_40BC, &unk_A3998, &dword_0);
  sub_37AEC(qword_A39E0, &unk_A3998);

  return __cxa_atexit(j_nullsub_2_5, qword_A39E0, &dword_0);
}

__CFString *sub_4D788(int a1, int a2, CFBundleRef bundle, double a4)
{
  if ((byte_A44E8 & 1) == 0)
  {
    qword_A4460 = CFBundleCopyLocalizedString(bundle, @"week", @"week", 0);
    qword_A4468 = CFBundleCopyLocalizedString(bundle, @"weeks", @"weeks", 0);
    qword_A44F0 = CFBundleCopyLocalizedString(bundle, @"wk", @"wk", 0);
    qword_A44F8 = CFBundleCopyLocalizedString(bundle, @"wks", @"wks", 0);
    qword_A4458 = CFBundleCopyLocalizedString(bundle, @"w", @"w", 0);
    qword_A4478 = CFBundleCopyLocalizedString(bundle, @"day", @"day", 0);
    qword_A4480 = CFBundleCopyLocalizedString(bundle, @"days", @"days", 0);
    qword_A4500 = CFBundleCopyLocalizedString(bundle, @"day", @"day", 0);
    qword_A4508 = CFBundleCopyLocalizedString(bundle, @"days", @"days", 0);
    qword_A4470 = CFBundleCopyLocalizedString(bundle, @"d", @"d", 0);
    qword_A4490 = CFBundleCopyLocalizedString(bundle, @"hour", @"hour", 0);
    qword_A4498 = CFBundleCopyLocalizedString(bundle, @"hours", @"hours", 0);
    qword_A4510 = CFBundleCopyLocalizedString(bundle, @"hr", @"hr", 0);
    qword_A4518 = CFBundleCopyLocalizedString(bundle, @"hrs", @"hrs", 0);
    qword_A4488 = CFBundleCopyLocalizedString(bundle, @"h", @"h", 0);
    qword_A44A8 = CFBundleCopyLocalizedString(bundle, @"minute", @"minute", 0);
    qword_A44B0 = CFBundleCopyLocalizedString(bundle, @"minutes", @"minutes", 0);
    qword_A4520 = CFBundleCopyLocalizedString(bundle, @"min", @"min", 0);
    qword_A4528 = CFBundleCopyLocalizedString(bundle, @"mins", @"mins", 0);
    qword_A44A0 = CFBundleCopyLocalizedString(bundle, @"m", @"m", 0);
    qword_A44C0 = CFBundleCopyLocalizedString(bundle, @"second", @"second", 0);
    qword_A44C8 = CFBundleCopyLocalizedString(bundle, @"seconds", @"seconds", 0);
    qword_A4530 = CFBundleCopyLocalizedString(bundle, @"sec", @"sec", 0);
    qword_A4538 = CFBundleCopyLocalizedString(bundle, @"secs", @"secs", 0);
    qword_A44B8 = CFBundleCopyLocalizedString(bundle, @"s", @"s", 0);
    qword_A44D8 = CFBundleCopyLocalizedString(bundle, @"millisecond", @"millisecond", 0);
    qword_A44E0 = CFBundleCopyLocalizedString(bundle, @"milliseconds", @"milliseconds", 0);
    qword_A44D0 = CFBundleCopyLocalizedString(bundle, @"ms", @"ms", 0);
    byte_A44E8 = 1;
  }

  result = &stru_85620;
  if (a2)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          if (a2 == 2)
          {
            v9 = &qword_A44A8;
            v10 = &qword_A44B0;
            goto LABEL_35;
          }

          if (a2 == 1)
          {
            return qword_A44A0;
          }

          break;
        case 16:
          if (a2 == 2)
          {
            v9 = &qword_A44C0;
            v10 = &qword_A44C8;
            goto LABEL_35;
          }

          if (a2 == 1)
          {
            return qword_A44B8;
          }

          break;
        case 32:
          if (a2 == 2)
          {
            v9 = &qword_A44D8;
            v10 = &qword_A44E0;
            goto LABEL_35;
          }

          if (a2 == 1)
          {
            return qword_A44D0;
          }

          break;
        default:
          return result;
      }
    }

    else
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          if (a1 != 4)
          {
            return result;
          }

          if (a2 != 2)
          {
            if (a2 == 1)
            {
              return qword_A4488;
            }

            return result;
          }

          v9 = &qword_A4490;
          v10 = &qword_A4498;
          goto LABEL_35;
        }

        if (a2 != 2)
        {
          if (a2 == 1)
          {
            return qword_A4470;
          }

          return result;
        }

        v9 = &qword_A4478;
        v10 = &qword_A4480;
LABEL_35:
        if (a4 != 1.0)
        {
          v9 = v10;
        }

        return *v9;
      }

      if (a2 == 2)
      {
        v9 = &qword_A4460;
        v10 = &qword_A4468;
        goto LABEL_35;
      }

      if (a2 == 1)
      {
        return qword_A4458;
      }
    }
  }

  return result;
}

__CFString *sub_4DCD0(void *a1, __CFBundle *a2, double a3)
{
  v50 = objc_opt_new();
  v53 = [NSCharacterSet characterSetWithCharactersInString:@"wdhmsf"];
  v5 = [a1 length];
  Mutable = CFStringCreateMutable(0, v5);
  v7 = Mutable;
  if (a3 < 0.0)
  {
    CFStringAppend(Mutable, @"-");
    a3 = fabs(a3);
  }

  if (!v5)
  {
    v10 = 0;
    v8 = 0;
    v26 = 2.22507386e-308;
    v24 = 2.22507386e-308;
    v25 = 2.22507386e-308;
    v27 = 2.22507386e-308;
    goto LABEL_59;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = [a1 characterAtIndex:v9];
    v12 = v11;
    v13 = v9 + 1;
    if (v13 >= v5)
    {
      if (v11 == 39)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v14 = [a1 characterAtIndex:v9 + 1];
      if (v12 == 39)
      {
        if (v14 == 39)
        {
          CFStringAppend(v7, @"'");
          LODWORD(v13) = v9 + 2;
          goto LABEL_44;
        }

        while (1)
        {
          v15 = [a1 characterAtIndex:v13];
          v16 = v15;
          if (v13 + 1 >= v5)
          {
            break;
          }

          v17 = [a1 characterAtIndex:(v13 + 1)];
          if (v16 != 39)
          {
            goto LABEL_14;
          }

          if (v17 != 39)
          {
            goto LABEL_46;
          }

          CFStringAppend(v7, @"'");
          LODWORD(v13) = v13 + 2;
LABEL_15:
          if (v13 >= v5)
          {
            goto LABEL_44;
          }
        }

        if (v15 == 39)
        {
LABEL_46:
          LODWORD(v13) = v13 + 1;
          goto LABEL_44;
        }

LABEL_14:
        CFStringAppendFormat(v7, 0, @"%C", v16);
        LODWORD(v13) = v13 + 1;
        goto LABEL_15;
      }
    }

    if (![(NSCharacterSet *)v53 characterIsMember:v12])
    {
      CFStringAppendFormat(v7, 0, @"%C", v12);
      goto LABEL_44;
    }

    Length = CFStringGetLength(v7);
    if (v13 >= v5)
    {
      goto LABEL_29;
    }

    v51 = v5 - v9;
    v19 = 1;
    while ([a1 characterAtIndex:v13] == v12)
    {
      ++v19;
      if (v5 == ++v13)
      {
        v19 = v51;
        LODWORD(v13) = v5;
        break;
      }
    }

    switch(v19)
    {
      case 1:
LABEL_29:
        v20 = 0;
        break;
      case 3:
        v20 = 2;
        break;
      case 2:
        v20 = 1;
        break;
      default:
        v20 = 3;
        break;
    }

    v21 = &v54[3 * v10++];
    v22 = v12 == 119;
    if (v12 == 115)
    {
      v22 = 16;
    }

    if (v12 == 109)
    {
      v22 = 8;
    }

    if (v12 == 104)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    if (v12 == 102)
    {
      v23 = 32;
    }

    if (v12 == 100)
    {
      v23 = 2;
    }

    if (v12 <= 108)
    {
      v22 = v23;
    }

    v8 |= v22;
    *v21 = Length;
    v21[1] = v22;
    v21[2] = v20;
LABEL_44:
    v9 = v13;
  }

  while (v13 < v5);
  if (v8)
  {
    v24 = floor(a3 / 604800.0);
    a3 = a3 + v24 * -604800.0;
    if ((v8 & 2) == 0)
    {
      goto LABEL_56;
    }

LABEL_51:
    v25 = floor(a3 / 86400.0);
    a3 = a3 + v25 * -86400.0;
    if ((v8 & 4) != 0)
    {
      goto LABEL_52;
    }

LABEL_57:
    v26 = 2.22507386e-308;
    if ((v8 & 8) == 0)
    {
      goto LABEL_58;
    }

LABEL_53:
    v27 = floor(a3 / 60.0);
    a3 = a3 + v27 * -60.0;
  }

  else
  {
    v24 = 2.22507386e-308;
    if ((v8 & 2) != 0)
    {
      goto LABEL_51;
    }

LABEL_56:
    v25 = 2.22507386e-308;
    if ((v8 & 4) == 0)
    {
      goto LABEL_57;
    }

LABEL_52:
    v26 = floor(a3 / 3600.0);
    a3 = a3 + v26 * -3600.0;
    if ((v8 & 8) != 0)
    {
      goto LABEL_53;
    }

LABEL_58:
    v27 = 2.22507386e-308;
  }

LABEL_59:
  v28 = trunc(a3);
  v29 = a3 - v28;
  if ((v8 & 0x10) != 0)
  {
    v30 = v28;
  }

  else
  {
    v29 = a3;
    v30 = 2.22507386e-308;
  }

  if ((v8 & 0x20) != 0)
  {
    v31 = v29 * 1000.0;
  }

  else
  {
    v31 = 2.22507386e-308;
  }

  if (v10)
  {
    v32 = 0;
    v33 = v10;
    v34 = &v55;
    do
    {
      v36 = *(v34 - 2);
      v35 = *(v34 - 1);
      v37 = *v34;
      if (v35 == 32)
      {
        v38 = v31;
      }

      else
      {
        v38 = 0.0;
      }

      v39 = v35 == 32;
      if (v35 == 16)
      {
        v38 = v30;
        v39 = 0;
      }

      if (v35 == 8)
      {
        v38 = v27;
        v39 = 0;
      }

      if (v35 == 4)
      {
        v40 = v26;
      }

      else
      {
        v40 = 0.0;
      }

      if (v35 == 2)
      {
        v40 = v25;
      }

      if (v35 == 1)
      {
        v40 = v24;
      }

      if (v35 <= 7)
      {
        v41 = v40;
      }

      else
      {
        v41 = v38;
      }

      if (v35 <= 7)
      {
        v39 = 0;
      }

      if (v37 > 1)
      {
        if (v37 == 2)
        {
          v43 = sub_52338(0, @"0", 1, 0, 0, 0, 0, v41, 0);
          v44 = v41;
          v45 = v35;
          v46 = 1;
        }

        else
        {
          if (v37 != 3)
          {
            goto LABEL_103;
          }

          v43 = sub_52338(0, @"0", 1, 0, 0, 0, 0, v41, 0);
          v44 = v41;
          v45 = v35;
          v46 = 2;
        }

        v48 = sub_4D788(v45, v46, a2, v44);
        v47 = CFStringCreateWithFormat(0, 0, @"%@%@", v43, v48);
        if (v47)
        {
          goto LABEL_102;
        }
      }

      else
      {
        if (!v37)
        {
          if (v39)
          {
            v42 = @"000";
          }

          else
          {
            v42 = @"0";
          }

LABEL_98:
          v47 = sub_52338(0, v42, 1, 0, 0, 0, 0, v41, 0);
          CFRetain(v47);
          if (!v47)
          {
            goto LABEL_103;
          }

LABEL_102:
          CFStringInsert(v7, (v36 + v32), v47);
          v32 += CFStringGetLength(v47);
          CFRelease(v47);
          goto LABEL_103;
        }

        if (v37 == 1)
        {
          if (v39)
          {
            v42 = @"000";
          }

          else
          {
            v42 = @"00";
          }

          goto LABEL_98;
        }
      }

LABEL_103:
      v34 += 3;
      --v33;
    }

    while (v33);
  }

  return v7;
}

id sub_4E2C8(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTDurationFormat);
  v5 = [(GQDTDurationFormat *)v4 readAttributesFromReader:a1];
  if (v5 == 1)
  {
    [objc_msgSend(a2 "documentState")];
    [objc_msgSend(objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_4E454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A39F8, 0, a3, a4, a5, a6, a7, a8, v9);
  __cxa_atexit(sub_3F0F0, &unk_A39F8, &dword_0);
  sub_3F3A8(&unk_A3A28, "duration-format", sub_4E2C8, 0, 0, &unk_A39F8);

  return __cxa_atexit(sub_3F2F8, &unk_A3A28, &dword_0);
}

id sub_4E50C(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "documentState")];

  return [v3 readValue:a1];
}

id sub_4E54C(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "documentState")];

  return [v3 readElement:a1];
}

uint64_t sub_4E58C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTGroupingCell);
  -[GQDTGroupingCell setProcessorBundle:](v4, "setProcessorBundle:", [a2 bundle]);
  [(GQDTGroupingCell *)v4 readAttributes:a1];
  [(GQDTCell *)v4 readAttributesForBaseTabularCell:a1 processor:a2];
  [(GQDTGroupingCell *)v4 readRootFormat:a1];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_4EDA0()
{
  sub_37B7C(qword_A3A68, sub_4E50C, 0);
  __cxa_atexit(j_nullsub_2_1, qword_A3A68, &dword_0);
  sub_3EFAC(qword_A3A80, "group-value", v0, v1, v2, v3, v4, v5, qword_A3A68);
  __cxa_atexit(sub_3430, qword_A3A80, &dword_0);
  sub_3F3A8(&unk_A3AA0, "groupings-element", sub_4E54C, 0, 0, qword_A3A80);
  __cxa_atexit(sub_3F2F8, &unk_A3AA0, &dword_0);
  sub_37AEC(qword_A3AE0, &unk_A3AA0);
  __cxa_atexit(j_nullsub_2_5, qword_A3AE0, &dword_0);
  v6 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v6, "mFormat");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A3AF8, &unk_9FFC8, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_A3AF8, &dword_0);
  v9 = objc_opt_class();
  v10 = class_getInstanceVariable(v9, "mFormat");
  v11 = ivar_getOffset(v10);
  objc_opt_class();
  objc_opt_class();
  sub_37CD4(&unk_A3B20, v11, 1);
  __cxa_atexit(j_nullsub_2_3, &unk_A3B20, &dword_0);
  sub_3EFAC(qword_A3B38, "groupings-element", v12, v13, v14, v15, v16, v17, qword_A3AE0);
  __cxa_atexit(sub_3430, qword_A3B38, &dword_0);
  sub_3F5AC(&unk_A3B58, "grouping-cell", &unk_9F830, sub_4E58C, sub_1B9DC, qword_A3B38);
  __cxa_atexit(sub_40BC, &unk_A3B58, &dword_0);
  sub_37AEC(qword_A3BA0, &unk_A3B58);

  return __cxa_atexit(j_nullsub_2_5, qword_A3BA0, &dword_0);
}

id sub_4F0A4(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDCallout2Path);
  v5 = [(GQDCallout2Path *)v4 readAttributesFromReader:a1 processor:a2];
  if (v5 == 1)
  {
    [objc_msgSend(objc_msgSend(a2 "documentState")];
    [objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_4F128(xmlTextReader *a1, void *a2)
{
  v3 = [objc_msgSend(a2 "documentState")];
  v4 = sub_429BC(a1, v7);
  v5 = &CGSizeZero;
  if (v4)
  {
    v5 = v7;
  }

  v3[1] = *v5;
  if (v4)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_4F810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A3BB8, 0, a3, a4, a5, a6, a7, a8, v15);
  __cxa_atexit(sub_3F0F0, &unk_A3BB8, &dword_0);
  sub_3F3A8(&unk_A3BE8, "size", sub_4F128, 0, 0, &unk_A3BB8);
  __cxa_atexit(sub_3F2F8, &unk_A3BE8, &dword_0);
  sub_37AEC(qword_A3C28, &unk_A3BE8);
  __cxa_atexit(j_nullsub_2_5, qword_A3C28, &dword_0);
  sub_3F198(&unk_A3C40, "size", v8, v9, v10, v11, v12, v13, qword_A3C28);
  __cxa_atexit(sub_3F0F0, &unk_A3C40, &dword_0);
  sub_3F3A8(&unk_A3C70, "callout2-path", sub_4F0A4, 0, 0, &unk_A3C40);

  return __cxa_atexit(sub_3F2F8, &unk_A3C70, &dword_0);
}

double sub_4F9B8(int a1, double a2, double a3)
{
  result = -a3;
  if (!a1)
  {
    return a3;
  }

  return result;
}

double sub_4FA18(float64x2_t *a1, float a2)
{
  v2 = (1.0 - a2);
  __asm { FMOV            V5.2D, #3.0 }

  *&result = *&vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[1], _Q5), a2), v2), v2), vmulq_n_f64(vmulq_n_f64(*a1, v2), v2), v2), vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[2], _Q5), a2), a2), v2), vmulq_n_f64(vmulq_n_f64(a1[3], a2), a2), a2);
  return result;
}

double sub_4FA74(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    return a3;
  }

  else
  {
    return a1;
  }
}

double sub_4FAB8(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 >= a5)
  {
    return a5;
  }

  else
  {
    return a1;
  }
}

float sub_4FB3C(float a1, float a2, float a3)
{
  if (a1 <= a3)
  {
    a3 = a1;
  }

  if (a1 >= a2)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

void sub_4FB50(__CFArray *a1, float a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
  CFArrayAppendValue(a1, v3);
  CFRelease(v3);
}

double sub_4FBAC(const __CFArray *a1, CFIndex a2, double *a3)
{
  valuePtr = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, &valuePtr + 4);
  v7 = CFArrayGetValueAtIndex(a1, a2 + 1);
  CFNumberGetValue(v7, kCFNumberFloatType, &valuePtr);
  result = *(&valuePtr + 1);
  v9 = *&valuePtr;
  *a3 = *(&valuePtr + 1);
  a3[1] = v9;
  return result;
}

void sub_4FC20(__CFArray *a1, uint64_t a2)
{
  if (a1)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v5 = *(a2 + 8);
    valuePtr = *a2;
    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v6);
    if (valuePtr < 2)
    {
      v14 = 1;
      v13 = v5;
    }

    else
    {
      if (valuePtr - 2 > 1)
      {
LABEL_7:
        CFArrayAppendValue(a1, Mutable);
        CFRelease(Mutable);
        return;
      }

      v7 = v5[1];
      v8 = *v5;
      sub_4FB50(Mutable, v8);
      v9 = v7;
      sub_4FB50(Mutable, v9);
      v10 = v5[3];
      v11 = v5[2];
      sub_4FB50(Mutable, v11);
      v12 = v10;
      sub_4FB50(Mutable, v12);
      v13 = v5 + 4;
      v14 = 5;
    }

    v15 = v5[v14];
    v16 = *v13;
    sub_4FB50(Mutable, v16);
    v17 = v15;
    sub_4FB50(Mutable, v17);
    goto LABEL_7;
  }
}

float sub_4FD4C(float64x2_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = sub_4F99C(*(a2 + 16), *(a2 + 24), *a2);
  v9 = sub_4F9D8(v7, v8);
  v11 = v10;
  v12 = *(a2 + 8);
  v13 = sub_4F99C(a1->f64[0], a1->f64[1], *a2);
  v15 = sub_4F9D8(v13, v14);
  v51.f64[0] = 0.0;
  v51.f64[1] = sub_4FA00(v9, v11, v15, v16);
  v17 = *(a2 + 8);
  v18 = sub_4F99C(a1[1].f64[0], a1[1].f64[1], *a2);
  v20 = sub_4F9D8(v18, v19);
  v52 = 0x3FD5555560000000;
  v53 = sub_4FA00(v9, v11, v20, v21);
  v22 = *(a2 + 8);
  v23 = sub_4F99C(a1[2].f64[0], a1[2].f64[1], *a2);
  v25 = sub_4F9D8(v23, v24);
  v54 = 0x3FE5555560000000;
  v55 = sub_4FA00(v9, v11, v25, v26);
  v27 = *(a2 + 8);
  v28 = sub_4F99C(a1[3].f64[0], a1[3].f64[1], *a2);
  v30 = sub_4F9D8(v28, v29);
  v56 = 0x3FF0000000000000;
  v57 = sub_4FA00(v9, v11, v30, v31);
  v32 = v53 * 9.0 + v51.f64[1] * -3.0 + v55 * -9.0 + v57 * 3.0;
  v33 = v53 * -12.0 + v51.f64[1] * 6.0 + v55 * 6.0;
  v34 = v53 * 3.0 + v51.f64[1] * -3.0;
  v35 = sqrtf(((v32 * -4.0) * v34) + (v33 * v33));
  v36 = (-v33 - v35) / (v32 + v32);
  v37 = sub_4FA18(&v51, (v35 - v33) / (v32 + v32));
  v39 = v38;
  v40 = sub_4FA18(&v51, v36);
  if ((v40 < 0.0 || v39 > v41 || v40 > 1.0) && v37 >= 0.0 && v37 <= 1.0)
  {
    goto LABEL_18;
  }

  v45 = -2.0;
  if (v40 >= 0.0 && v40 <= 1.0)
  {
    v37 = v40;
    v39 = v41;
LABEL_18:
    v47 = v37;
    *a3 = sub_4FA18(a1, v47);
    *(a3 + 8) = v48;
    v49 = v39;
    return fabsf(v49);
  }

  return v45;
}

double sub_4FF9C(const CGPath *a1, uint64_t a2)
{
  valuePtr = 0;
  x = CGPointZero.x;
  y = CGPointZero.y;
  v6 = *(a2 + 8);
  v7 = sub_4F99C(*(a2 + 16), *(a2 + 24), *a2);
  v9 = sub_4F9D8(v7, v8);
  v11 = v10;
  v31 = CGPointZero;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CGPathApply(a1, Mutable, sub_4FC20);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v14 = 0;
    v15 = Count & 0x7FFFFFFF;
    v16 = -2.0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v14);
      v18 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      CFNumberGetValue(v18, kCFNumberIntType, &valuePtr);
      v19 = valuePtr;
      if (valuePtr < 2)
      {
        break;
      }

      if (valuePtr == 3)
      {
        v20 = v34;
        for (i = 1; i != 7; i += 2)
        {
          sub_4FBAC(ValueAtIndex, i, v20);
          v20 += 2;
        }

        goto LABEL_8;
      }

LABEL_9:
      if (v19 == 3)
      {
        v22 = sub_4FD4C(&v33, a2, &v30);
        if (v22 > v16)
        {
          v16 = v22;
          x = v30;
        }

        v34[0] = v34[2];
      }

      else if (v19 == 4)
      {
        v34[0] = v31;
        valuePtr = 1;
      }

      v23 = *(a2 + 8);
      v24 = sub_4F99C(*v34, *(v34 + 1), *a2);
      v26 = sub_4F9D8(v24, v25);
      v28 = sub_4FA00(v9, v11, v26, v27);
      if (v16 < v28)
      {
        v16 = v28;
        x = *v34;
      }

      v33 = v34[0];
      if (!valuePtr)
      {
        v31 = v34[0];
      }

      if (++v14 == v15)
      {
        goto LABEL_20;
      }
    }

    sub_4FBAC(ValueAtIndex, 1, v34);
LABEL_8:
    v19 = valuePtr;
    goto LABEL_9;
  }

LABEL_20:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return x;
}

float64x2_t sub_501F0(float64x2_t *a1, float64x2_t *a2, int a3, int a4, double *a5, double *a6, float64x2_t *a7, double a8, double a9, double a10)
{
  v44 = vsubq_f64(*a2, *a1);
  v19 = __sincos_stret(a10);
  v20 = sub_4FA00(v44.f64[0], v44.f64[1], v19.__cosval, v19.__sinval);
  v21 = sub_4FA0C(v44.f64[0], v44.f64[1], v19.__cosval, v19.__sinval);
  v45 = a9;
  v22 = v20 / a8;
  v23 = v21 / a9;
  v24 = sub_4FA00(v22, v23, v22, v23);
  v25 = 0.0;
  if (v24 < 4.0)
  {
    v26 = sqrt(1.0 / v24 + -0.25);
    v25 = v26;
  }

  v27 = v23 * v25;
  v28 = -(v22 * v25);
  v29 = -(v23 * v25 - v22 * -0.5);
  if (v29 <= -1.0)
  {
    v30 = 3.14159265;
  }

  else
  {
    v30 = 0.0;
    if (v29 < 1.0)
    {
      v31 = acos(v29);
      *a5 = v31;
      if (-(v28 - v23 * -0.5) >= 0.0)
      {
        goto LABEL_9;
      }

      v30 = 6.28318531 - v31;
    }
  }

  *a5 = v30;
LABEL_9:
  v32 = v22 * 0.5 - v23 * v25;
  if (v32 <= -1.0)
  {
    v33 = 3.14159265;
  }

  else
  {
    v33 = 0.0;
    if (v32 < 1.0)
    {
      v34 = acos(v32);
      *a6 = v34;
      if (v23 * 0.5 - v25 * -v22 >= 0.0)
      {
        goto LABEL_15;
      }

      v33 = 6.28318531 - v34;
    }
  }

  *a6 = v33;
LABEL_15:
  a7->f64[0] = sub_4FA00(v27 * a8, v28 * v45, v19.__cosval, -v19.__sinval);
  v35 = sub_4FA0C(v27 * a8, v28 * v45, v19.__cosval, -v19.__sinval);
  a7->f64[1] = v35;
  if (a4)
  {
    if (!a3)
    {
      goto LABEL_23;
    }
  }

  else if (a3)
  {
    goto LABEL_23;
  }

  a7->f64[0] = -a7->f64[0];
  a7->f64[1] = -v35;
  v36 = *a6;
  *a6 = *a5;
  *a5 = v36;
  *a6 = *a6 + 3.14159265;
  v37 = *a5 + 3.14159265;
  *a5 = v37;
  if (*a6 >= 6.28318531)
  {
    *a6 = *a6 + -6.28318531;
    v37 = *a5;
  }

  if (v37 >= 6.28318531)
  {
    *a5 = v37 + -6.28318531;
  }

LABEL_23:
  result = vaddq_f64(*a1, *a2);
  __asm { FMOV            V2.2D, #0.5 }

  *a7 = vmlaq_f64(*a7, _Q2, result);
  return result;
}

CGPath *sub_50724(uint64_t a1)
{
  Mutable = CGPathCreateMutable();
  v14 = CGPointZero;
  v15 = v14;
  v3 = *(a1 + 8);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 44 * v3;
    do
    {
      v6 = *(a1 + 16);
      v7 = *(v6 + v4);
      if (v7 <= 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            v15 = vcvtq_f64_f32(*(v6 + v4 + 16));
            CGPathAddLineToPoint(Mutable, 0, v15.f64[0], v15.f64[1]);
          }
        }

        else
        {
          v15 = vcvtq_f64_f32(*(v6 + v4 + 16));
          CGPathMoveToPoint(Mutable, 0, v15.f64[0], v15.f64[1]);
        }

        goto LABEL_15;
      }

      if (v7 == 2)
      {
        v8 = (v6 + v4);
        v14 = vcvtq_f64_f32(v8[2]);
        CGPathAddCurveToPoint(Mutable, 0, v15.f64[0] + v8[3].f32[0] * 0.333333333, v15.f64[1] + v8[3].f32[1] * 0.333333333, v14.f64[0] - v8[4].f32[0] * 0.333333333, v14.f64[1] - v8[4].f32[1] * 0.333333333, v14.f64[0], v14.f64[1]);
      }

      else
      {
        if (v7 != 4)
        {
          if (v7 == 5)
          {
            CGPathCloseSubpath(Mutable);
          }

          goto LABEL_15;
        }

        v9 = (v6 + v4);
        v14 = vcvtq_f64_f32(v9[2]);
        v12 = 0.0;
        v13 = 0.0;
        sub_501F0(&v15, &v14, v9[4].u8[4], v9[4].u8[5], &v13, &v12, &v11, v9[3].f32[0], v9[3].f32[1], v9[4].f32[0]);
        CGPathAddArc(Mutable, 0, v11.f64[0], v11.f64[1], *(*(a1 + 16) + v4 + 24), v13 * 180.0 / 3.14159265, v12 * 180.0 / 3.14159265, *(*(a1 + 16) + v4 + 37));
      }

      v15 = v14;
LABEL_15:
      v4 += 44;
    }

    while (v5 != v4);
  }

  return Mutable;
}

CGMutablePathRef sub_5091C(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);

    return CGPathCreateCopy(ValueAtIndex);
  }

  else
  {
    if (Count)
    {
      operator new[]();
    }

    return CGPathCreateMutable();
  }
}

uint64_t sub_50C9C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDTComputedFormatSpec);
  [objc_msgSend(a2 "documentState")];
  [objc_msgSend(objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_50E10()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mFormat");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A3CB0, &unk_9FFC8, Offset);
  __cxa_atexit(j_nullsub_2_2, &unk_A3CB0, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mFormat");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37CD4(&unk_A3CD8, v5, 1);
  __cxa_atexit(j_nullsub_2_3, &unk_A3CD8, &dword_0);
  v6 = objc_opt_class();
  v7 = class_getInstanceVariable(v6, "mFormat");
  v8 = ivar_getOffset(v7);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A3CF0, &unk_A38E8, v8);
  __cxa_atexit(j_nullsub_2_2, &unk_A3CF0, &dword_0);
  v9 = objc_opt_class();
  v10 = class_getInstanceVariable(v9, "mFormat");
  v11 = ivar_getOffset(v10);
  objc_opt_class();
  objc_opt_class();
  sub_37CD4(&unk_A3D18, v11, 1);
  __cxa_atexit(j_nullsub_2_3, &unk_A3D18, &dword_0);
  v12 = objc_opt_class();
  v13 = class_getInstanceVariable(v12, "mFormat");
  v14 = ivar_getOffset(v13);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A3D30, &unk_A3A28, v14);
  __cxa_atexit(j_nullsub_2_2, &unk_A3D30, &dword_0);
  v15 = objc_opt_class();
  v16 = class_getInstanceVariable(v15, "mFormat");
  v17 = ivar_getOffset(v16);
  objc_opt_class();
  objc_opt_class();
  sub_37CD4(&unk_A3D58, v17, 1);
  __cxa_atexit(j_nullsub_2_3, &unk_A3D58, &dword_0);
  sub_3F198(&unk_A3D70, "number-format", v18, v19, v20, v21, v22, v23, &unk_A3CB0);
  __cxa_atexit(sub_3F0F0, &unk_A3D70, &dword_0);
  sub_3F3A8(&unk_A3DA0, "computed-format-spec", sub_50C9C, 0, 0, &unk_A3D70);

  return __cxa_atexit(sub_3F2F8, &unk_A3DA0, &dword_0);
}

uint64_t sub_511B0(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDFilteredImage);
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_5121C(void *a1, int a2)
{
  v3 = [a1 documentState];
  if ([v3 objectStackDepth] <= a2)
  {
    return 3;
  }

  [v3 peekObject];
  return 1;
}

uint64_t sub_51264(xmlTextReader *a1, void *a2)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, off_9D3E0, *(qword_A35E0 + 16));
  if (!AttributeNs)
  {
    return 3;
  }

  v4 = AttributeNs;
  v5 = [objc_msgSend(objc_msgSend(a2 "documentState")];
  if (v5)
  {
    [objc_msgSend(a2 "documentState")];
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  free(v4);
  return v6;
}

uint64_t sub_51378()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "mOriginalImageBinary");
  Offset = ivar_getOffset(InstanceVariable);
  objc_opt_class();
  objc_opt_class();
  sub_37CD4(&unk_A3DE0, Offset, 1);
  __cxa_atexit(j_nullsub_2_3, &unk_A3DE0, &dword_0);
  v3 = objc_opt_class();
  v4 = class_getInstanceVariable(v3, "mFilteredImageBinary");
  v5 = ivar_getOffset(v4);
  objc_opt_class();
  objc_opt_class();
  sub_37CD4(&unk_A3DF8, v5, 1);
  __cxa_atexit(j_nullsub_2_3, &unk_A3DF8, &dword_0);
  v6 = objc_opt_class();
  v7 = class_getInstanceVariable(v6, "mOriginalImageBinary");
  v8 = ivar_getOffset(v7);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A3E10, &unk_9EBD8, v8);
  __cxa_atexit(j_nullsub_2_2, &unk_A3E10, &dword_0);
  v9 = objc_opt_class();
  v10 = class_getInstanceVariable(v9, "mFilteredImageBinary");
  v11 = ivar_getOffset(v10);
  objc_opt_class();
  objc_opt_class();
  sub_37BCC(&unk_A3E38, &unk_9EBD8, v11);
  __cxa_atexit(j_nullsub_2_2, &unk_A3E38, &dword_0);
  sub_3F198(&unk_A3E60, "unfiltered-ref", v12, v13, v14, v15, v16, v17, &unk_A3DE0);
  __cxa_atexit(sub_3F0F0, &unk_A3E60, &dword_0);
  sub_3F3A8(&unk_A3E90, "filteredimage", sub_511B0, 0, sub_5121C, &unk_A3E60);
  __cxa_atexit(sub_3F2F8, &unk_A3E90, &dword_0);
  sub_37AEC(qword_A3ED0, &unk_A3E90);
  __cxa_atexit(j_nullsub_2_5, qword_A3ED0, &dword_0);
  sub_3F3A8(&unk_A3EE8, "filteredimage-ref", sub_51264, 0, 0, &unk_A3E60);
  __cxa_atexit(sub_3F2F8, &unk_A3EE8, &dword_0);
  sub_37AEC(qword_A3F28, &unk_A3EE8);

  return __cxa_atexit(j_nullsub_2_5, qword_A3F28, &dword_0);
}

BOOL sub_51D04(unsigned int a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = [a2 count];
  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = a1;
  v7 = [objc_msgSend(a2 objectAtIndex:{0), "rangeValue"}];
  if (a1 >= v7 && a1 - v7 < v8)
  {
    return 1;
  }

  v10 = 1;
  do
  {
    v11 = v10;
    if (v5 == v10)
    {
      break;
    }

    v12 = [objc_msgSend(a2 objectAtIndex:{v10), "rangeValue"}];
    v10 = v11 + 1;
  }

  while (v6 < v12 || v6 - v12 >= v13);
  return v11 < v5;
}

uint64_t sub_5209C(double a1)
{
  valuePtr = a1;
  if (floor(a1) == a1)
  {
    return 0;
  }

  v2 = qword_A4588;
  if (!qword_A4588)
  {
    CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(kCFAllocatorDefault, @"en_US");
    v4 = CFLocaleCreate(kCFAllocatorDefault, CanonicalLocaleIdentifierFromString);
    CFRelease(CanonicalLocaleIdentifierFromString);
    qword_A4588 = CFNumberFormatterCreate(kCFAllocatorDefault, v4, kCFNumberFormatterNoStyle);
    CFRelease(v4);
    CFNumberFormatterSetFormat(qword_A4588, @"0");
    CFNumberFormatterSetProperty(qword_A4588, kCFNumberFormatterMinFractionDigits, [NSNumber numberWithInt:0]);
    CFNumberFormatterSetProperty(qword_A4588, kCFNumberFormatterMaxFractionDigits, [NSNumber numberWithInt:0x7FFFFFFFLL]);
    v2 = qword_A4588;
  }

  v5 = CFNumberFormatterCreateStringWithValue(kCFAllocatorDefault, v2, kCFNumberDoubleType, &valuePtr);
  v6 = [(__CFString *)v5 rangeOfString:@"."];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v7 == 1)
  {
    v1 = [(__CFString *)v5 length]+ ~v6;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_5220C(CFLocaleRef locale)
{
  if (locale)
  {
    v1 = CFNumberFormatterCreate(0, locale, kCFNumberFormatterDecimalStyle);
    v2 = CFNumberFormatterCopyProperty(v1, kCFNumberFormatterGroupingSize);
    CFRelease(v1);
    valuePtr = 0;
    CFNumberGetValue(v2, kCFNumberIntType, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    v4 = qword_A4590;
    if (!qword_A4590)
    {
      v4 = CFLocaleCopyCurrent();
      qword_A4590 = v4;
    }

    result = dword_9D7A8;
    if (dword_9D7A8 == -1)
    {
      v5 = CFNumberFormatterCreate(0, v4, kCFNumberFormatterDecimalStyle);
      v6 = CFNumberFormatterCopyProperty(v5, kCFNumberFormatterGroupingSize);
      CFRelease(v5);
      valuePtr = 0;
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      CFRelease(v6);
      result = valuePtr;
      dword_9D7A8 = valuePtr;
    }
  }

  return result;
}

CFLocaleRef sub_52308()
{
  result = qword_A4590;
  if (!qword_A4590)
  {
    result = CFLocaleCopyCurrent();
    qword_A4590 = result;
  }

  return result;
}

CFStringRef sub_52338(int a1, const __CFString *a2, int a3, unsigned int a4, unsigned int a5, int a6, const __CFString *value, double a8, int a9)
{
  valuePtr = a8;
  v14 = qword_A4590;
  if (!qword_A4590)
  {
    v14 = CFLocaleCopyCurrent();
    qword_A4590 = v14;
  }

  v15 = qword_A4598;
  if (!qword_A4598)
  {
    qword_A4598 = CFNumberFormatterCreate(kCFAllocatorDefault, v14, kCFNumberFormatterNoStyle);
    qword_A45A0 = CFNumberFormatterCreate(kCFAllocatorDefault, v14, kCFNumberFormatterNoStyle);
    CFNumberFormatterSetProperty(qword_A4598, kCFNumberFormatterRoundingMode, [NSNumber numberWithInt:6]);
    CFNumberFormatterSetProperty(qword_A45A0, kCFNumberFormatterRoundingMode, [NSNumber numberWithInt:6]);
    v15 = qword_A4598;
  }

  v16 = qword_A45A0;
  if (a9)
  {
    v17 = qword_A45A0;
  }

  else
  {
    v17 = v15;
  }

  if (value)
  {
    CFNumberFormatterSetProperty(v17, kCFNumberFormatterCurrencyCode, value);
    if (CFStringCompare(value, @"CHF", 0) == kCFCompareEqualTo)
    {
      v18 = [[NSNumber alloc] initWithInt:0];
      CFNumberFormatterSetProperty(v17, kCFNumberFormatterRoundingIncrement, v18);
    }
  }

  Format = CFNumberFormatterGetFormat(v17);
  if (CFStringCompare(a2, Format, 0))
  {
    CFNumberFormatterSetFormat(v17, a2);
  }

  if (a3)
  {
    v20 = a6;
    if (word_9D798 == a5)
    {
      v21 = [[NSNumber alloc] initWithInt:0];
      v22 = [[NSNumber alloc] initWithInt:0x7FFFFFFFLL];
      CFNumberFormatterSetProperty(v17, kCFNumberFormatterMinFractionDigits, v21);
      CFNumberFormatterSetProperty(v17, kCFNumberFormatterMaxFractionDigits, v22);
    }

    else
    {
      v23 = [[NSNumber alloc] initWithInt:a4];
      CFNumberFormatterSetProperty(v17, kCFNumberFormatterMinFractionDigits, v23);

      v22 = [[NSNumber alloc] initWithInt:a5];
      CFNumberFormatterSetProperty(v17, kCFNumberFormatterMaxFractionDigits, v22);
    }

    a6 = v20;
  }

  if (a9)
  {
    CFNumberFormatterSetProperty(v16, kCFNumberFormatterMinusSign, &stru_85620);
  }

  v24 = &kCFBooleanFalse;
  if (a6)
  {
    v24 = &kCFBooleanTrue;
  }

  CFNumberFormatterSetProperty(v17, kCFNumberFormatterUseGroupingSeparator, *v24);
  if (a3)
  {
    v25 = [[NSNumber alloc] initWithInt:1];
    CFNumberFormatterSetProperty(v17, kCFNumberFormatterMinIntegerDigits, v25);
  }

  return CFNumberFormatterCreateStringWithValue(kCFAllocatorDefault, v17, kCFNumberDoubleType, &valuePtr);
}

__CFArray *sub_52678(const __CFLocale *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v3 = CFNumberFormatterCreate(kCFAllocatorDefault, a1, kCFNumberFormatterDecimalStyle);
  CFNumberFormatterSetProperty(v3, kCFNumberFormatterExponentSymbol, @"xyzzyqghbv&q");
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v3);
  v4 = [[NSArray alloc] initWithObjects:{@"#, ##0;- #, ##0", @"#, ##0;(#, ##0)", @"#, ##0;( #, ##0)", 0}];
  v5 = [v4 count];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5 & 0x7FFFFFFF;
    do
    {
      v8 = CFNumberFormatterCreate(0, a1, kCFNumberFormatterNoStyle);
      CFNumberFormatterSetFormat(v8, [v4 objectAtIndex:v6]);
      CFNumberFormatterSetProperty(v8, kCFNumberFormatterExponentSymbol, @"xyzzyqghbv&q");
      CFArrayAppendValue(Mutable, v8);
      CFRelease(v8);
      ++v6;
    }

    while (v7 != v6);
  }

  return Mutable;
}

__CFArray *sub_527D0(const __CFLocale *a1, const __CFArray *a2, const void *a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      v10 = CFNumberFormatterCreate(0, a1, kCFNumberFormatterNoStyle);
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      CFNumberFormatterSetFormat(v10, ValueAtIndex);
      CFNumberFormatterSetProperty(v10, kCFNumberFormatterCurrencyCode, a3);
      CFNumberFormatterSetProperty(v10, kCFNumberFormatterExponentSymbol, @"xyzzyqghbv&q");
      CFArrayAppendValue(Mutable, v10);
      CFRelease(v10);
    }
  }

  return Mutable;
}

__CFArray *sub_528D8(const __CFLocale *a1, const __CFArray *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v5 = objc_alloc_init(NSMutableArray);
  v6 = CFNumberFormatterCreate(0, a1, kCFNumberFormatterCurrencyStyle);
  CFNumberFormatterSetProperty(v6, kCFNumberFormatterExponentSymbol, @"xyzzyqghbv&q");
  v7 = [-[__CFString sfu_positiveSubpatternOfNumberFormatPattern](CFNumberFormatterGetFormat(v6) "sfu_positiveSubpatternOfNumberFormatPattern")];
  CFArrayAppendValue(Mutable, v6);
  CFRelease(v6);
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@", 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;- %C%@", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C", v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;- %@%C", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C %@", 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C %@;- %C %@", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %C", v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %C;- %@ %C", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C-%@", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C -%@", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C- %@", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C - %@", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;(%C%@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;( %C%@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;(%C%@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;(%C %@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;( %C %@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;(%C %@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;( %C%@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;( %C %@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C(%@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C( %@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C(%@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C (%@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C(%@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C (%@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C( %@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C(%@)", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;(%@%C)", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;( %@%C)", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;(%@%C)", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;(%@ %C)", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;( %@ %C)", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;(%@ %C)", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;( %@%C)", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;( %@ %C)", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;(%@)%C", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;( %@)%C", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;(%@)%C", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;(%@) %C", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;( %@) %C", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;(%@) %C", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;( %@)%C", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;( %@) %C", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C%@-", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C%@ -", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C %@-", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C%@;%C %@ -", 164, v7, 164, v7)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;%@%C-", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;%@%C -", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;%@ %C-", v7, 164, v7, 164)}];
  [v5 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%C;%@ %C -", v7, 164, v7, 164)}];
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v9 = Count;
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v12 = sub_527D0(a1, v5, ValueAtIndex);
      v14.length = CFArrayGetCount(v12);
      v14.location = 0;
      CFArrayAppendArray(Mutable, v12, v14);
      CFRelease(v12);
    }
  }

  return Mutable;
}

__CFArray *sub_5314C(const __CFLocale *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v3 = CFNumberFormatterCreate(0, a1, kCFNumberFormatterPercentStyle);
  CFNumberFormatterSetProperty(v3, kCFNumberFormatterExponentSymbol, @"xyzzyqghbv&q");
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v3);
  v4 = CFNumberFormatterCreate(0, a1, kCFNumberFormatterNoStyle);
  CFNumberFormatterSetFormat(v4, @"#,##0 %");
  CFNumberFormatterSetProperty(v4, kCFNumberFormatterExponentSymbol, @"xyzzyqghbv&q");
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v4);
  return Mutable;
}

CFArrayRef sub_53224(CFLocaleRef locale)
{
  values = CFNumberFormatterCreate(kCFAllocatorDefault, locale, kCFNumberFormatterScientificStyle);
  v1 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  CFRelease(values);
  return v1;
}

uint64_t sub_5328C(__CFNumberFormatter *a1, CFStringRef theString, double *a3)
{
  v10.location = 0;
  v10.length = CFStringGetLength(theString);
  result = CFNumberFormatterGetValueFromString(a1, theString, &v10, kCFNumberDoubleType, a3);
  if (!result)
  {
    v9 = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10.location || (length = v10.length, length != CFStringGetLength(theString)))
  {
    v9 = 0;
    result = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a3)
  {
    return 1;
  }

  v8 = __fpclassifyd(*a3);
  v9 = 1;
  result = 1;
  if (v8 == 3)
  {
LABEL_10:
    *a3 = 0.0;
    return v9;
  }

  return result;
}

NSMutableString *sub_53354(void *a1)
{
  v2 = [a1 length];
  v3 = [NSMutableString stringWithCapacity:v2];
  if (v2 >= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = [a1 characterAtIndex:v4];
      v6 = v5;
      v7 = v4 + 1;
      if (v4 + 1 >= v2)
      {
        if (v5 != 39)
        {
LABEL_16:
          [(NSMutableString *)v3 appendFormat:@"%C", v6];
        }

        ++v4;
        goto LABEL_18;
      }

      v8 = [a1 characterAtIndex:v7];
      if (v6 != 39)
      {
        goto LABEL_16;
      }

      if (v8 != 39)
      {
        break;
      }

      [(NSMutableString *)v3 appendString:@"'"];
      v4 += 2;
LABEL_18:
      if (v4 >= v2)
      {
        return v3;
      }
    }

    while (1)
    {
      v9 = [a1 characterAtIndex:v7];
      v10 = v9;
      v4 = v7 + 1;
      if (v7 + 1 >= v2)
      {
        if (v9 == 39)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v11 = [a1 characterAtIndex:v4];
        if (v10 == 39)
        {
          if (v11 != 39)
          {
            goto LABEL_18;
          }

          [(NSMutableString *)v3 appendString:@"'"];
          v4 = v7 + 2;
          goto LABEL_13;
        }
      }

      [(NSMutableString *)v3 appendFormat:@"%C", v10];
LABEL_13:
      v7 = v4;
      if (v4 >= v2)
      {
        goto LABEL_18;
      }
    }
  }

  return v3;
}

uint64_t sub_54BBC(xmlTextReader *a1, void *a2)
{
  if (sub_42A3C(a1, [objc_msgSend(a2 "documentState")] + 2))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_54C08(xmlTextReader *a1, void *a2)
{
  if (sub_429BC(a1, [objc_msgSend(a2 "documentState")] + 4))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_54C54(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDConnectionPath);
  [objc_msgSend(objc_msgSend(a2 "documentState")];
  [objc_msgSend(a2 "documentState")];

  return 1;
}

uint64_t sub_54EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A45B0, 0, a3, a4, a5, a6, a7, a8, v15);
  __cxa_atexit(sub_3F0F0, &unk_A45B0, &dword_0);
  sub_3F3A8(&unk_A45E0, "point", sub_54BBC, 0, 0, &unk_A45B0);
  __cxa_atexit(sub_3F2F8, &unk_A45E0, &dword_0);
  sub_37AEC(qword_A4620, &unk_A45E0);
  __cxa_atexit(j_nullsub_2_5, qword_A4620, &dword_0);
  sub_3F3A8(&unk_A4638, "size", sub_54C08, 0, 0, &unk_A45B0);
  __cxa_atexit(sub_3F2F8, &unk_A4638, &dword_0);
  sub_37AEC(qword_A4678, &unk_A4638);
  __cxa_atexit(j_nullsub_2_5, qword_A4678, &dword_0);
  sub_3F198(&unk_A4690, "size", v8, v9, v10, v11, v12, v13, qword_A4678);
  __cxa_atexit(sub_3F0F0, &unk_A4690, &dword_0);
  sub_3F3A8(&unk_A3F40, "connection-path", sub_54C54, 0, 0, &unk_A4690);

  return __cxa_atexit(sub_3F2F8, &unk_A3F40, &dword_0);
}

BOOL sub_55094(void *a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [a1 stringByAppendingPathComponent:@"Metadata"];

  return [(NSFileManager *)v2 fileExistsAtPath:v3 isDirectory:0];
}

id sub_550F0(void *a1)
{
  if ([a1 entryWithName:@"Index/Metadata.iwa"])
  {
    return 0;
  }

  v3 = [@"Metadata" length];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [a1 allEntryNames];
  result = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v8 + 1) + 8 * i) compare:@"Metadata" options:2 range:{0, v3}])
        {
          return &dword_0 + 1;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      result = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

__CFString *sub_5525C(uint64_t a1)
{
  v1 = [GQPProcessorFactory applicationForDocumentUti:a1]- 1;
  if (v1 > 2)
  {
    return &stru_85620;
  }

  else
  {
    return off_80930[v1];
  }
}

NSData *sub_552A4(uint64_t a1, uint64_t a2)
{
  v3 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"IMPORT_FAILURE_MESSAGE_FORMAT", @"<html><body style=font-family:Helvetica; font-size:14pt;><br/><br/><div align=center><b>%@</b></div><br><div align=center>%@</div></body></html>", 0];
  v4 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"IMPORT_FAILURE_MESSAGE_TITLE", @"Sorry, this document can't be viewed.", 0];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  if (a2 == 1)
  {
    v6 = @"PASSWORD_PROTECTED_MESSAGE_TEXT";
    v7 = @"The document is password-protected.";
  }

  else
  {
    v6 = @"IMPORT_FAILURE_MESSAGE_TEXT";
    v7 = @"The document version may be unsupported or an error occurred while reading it.";
  }

  v8 = [[NSString dataUsingEncoding:v3 stringWithFormat:v4, [(NSBundle *)v5 localizedStringForKey:v6 value:v7 table:0]], "dataUsingEncoding:", 4];
  CFRetain(v8);
  return v8;
}

uint64_t IWorkPreviewProcessWithURLAndOptions(const __CFURL *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_sync_enter(@"iWorkQuickLookSyncObject");
  v10 = objc_autoreleasePoolPush();
  PathComponent = CFURLCopyLastPathComponent(a1);
  v64 = [[GQUProgressiveHelper alloc] initWithClient:a5 andCallbacks:a6];
  v12 = [(__CFURL *)a1 path];
  v60 = a6;
  v13 = [a3 objectForKey:kQLPreviewOptionPasswordKey];
  context = v10;
  v68 = 0;
  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:"]
  {
    v14 = sub_55094(v12);
    v15 = [v12 stringByAppendingPathComponent:kSFAPassphraseVerifierFilename];
    if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", v15) || (v15 = [v12 stringByAppendingPathComponent:off_9D2C0], -[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", v15)))
    {
      v16 = [[NSData alloc] initWithContentsOfFile:v15];
      v67 = 0;
      v17 = sub_55F5C(v13, 0, v16, &v67);

      if (v67)
      {
        if (v14)
        {
          v18 = sub_56010(v12, PathComponent, v64, a2, v13);
          v19 = 0;
        }

        else
        {
          v19 = [GQPProcessorFactory retainedProcessorForDocument:a1 zipArchive:0 uti:a2 outputType:4 outputPath:0 previewRequest:0 progressiveHelper:v64 cryptoKey:v17];
          v18 = 0;
        }

        v20 = 0;
        if (!v19)
        {
          goto LABEL_40;
        }

        goto LABEL_58;
      }

      v20 = 0;
LABEL_29:
      v19 = 0;
      v18 = 0;
      v40 = 1;
      goto LABEL_59;
    }

    if (v14)
    {
      v18 = sub_56010(v12, PathComponent, v64, a2, 0);
      v40 = 0;
      v20 = 0;
LABEL_49:
      v19 = 0;
      goto LABEL_59;
    }

    v50 = [objc_msgSend(v12 stringByAppendingPathComponent:{@"QuickLook", "stringByAppendingPathComponent:", @"Preview.pdf"}];
    if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      v19 = [GQPProcessorFactory retainedProcessorForDocument:a1 zipArchive:0 uti:a2 outputType:4 outputPath:0 previewRequest:a4 progressiveHelper:v64 cryptoKey:0];
      v20 = 0;
      v18 = 0;
      if (!v19)
      {
LABEL_40:
        v40 = 0;
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    if (PathComponent)
    {
      CFRelease(PathComponent);
    }

    v51 = CFURLCopyLastPathComponent(a1);
    v24 = [[NSData alloc] initWithContentsOfFile:v50];
    v52 = v24;
    v20 = 0;
    PathComponent = v51;
    if (!v24)
    {
LABEL_37:
      v40 = 0;
      v19 = 0;
      v18 = 1;
      goto LABEL_59;
    }

LABEL_16:
    v25 = [[GQUProgressiveOutputBundle alloc] initWithHandler:v64];
    v26 = CGDataProviderCreateWithCFData(v24);
    v27 = CGPDFDocumentCreateWithProvider(v26);
    CFRelease(v26);
    NumberOfPages = CGPDFDocumentGetNumberOfPages(v27);
    if (NumberOfPages)
    {
      v29 = -NumberOfPages;
      v30 = 0.0;
      v31 = 0.0;
      v32 = 1;
      v33 = 8.0;
      do
      {
        Page = CGPDFDocumentGetPage(v27, v32);
        BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
        if (v31 < BoxRect.size.width + 15.0)
        {
          v31 = BoxRect.size.width + 15.0;
        }

        v35 = BoxRect.size.height + 8.0;
        v33 = v33 + v35;
        if (v30 < v35)
        {
          v30 = BoxRect.size.height + 8.0;
        }

        ++v32;
      }

      while (v29 + v32 != 1);
      v36 = v30;
      v37 = v33;
    }

    else
    {
      v37 = 8.0;
      v36 = 0.0;
      v31 = 0.0;
    }

    CFRelease(v27);
    v41 = [[GQHXML alloc] initEmptyWithFilename:@"index.html" useExternalCss:1];
    [v41 startElement:"head"];
    LODWORD(v42) = 10.0;
    [v41 addViewportMetaTagForDocumentSize:v31 maximumScale:{v36, v42}];
    if (PathComponent)
    {
      [v41 startElement:"title"];
      [v41 addContent:PathComponent];
      [v41 endElement];
    }

    [v41 endElement];
    [v41 startElement:"body"];
    [v41 setAttribute:"style" value:"margin: 0px; padding: 0px;"];
    [v41 startElement:"iframe"];
    v43 = v31;
    LODWORD(v44) = vcvtps_s32_f32(v43);
    LODWORD(v45) = vcvtps_s32_f32(v37);
    v46 = CFStringCreateWithFormat(0, 0, @"border: 0px solid black; width: %dpx; height: %dpx;", v44, v45);
    [v41 setAttribute:"style" cfStringValue:v46];
    CFRelease(v46);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, kQLPreviewPropertyMIMETypeKey, @"application/pdf");
    CFDictionarySetValue(Mutable, kQLPreviewPropertyTextEncodingNameKey, @"UTF-8");
    v48 = [(GQUProgressiveHelper *)v64 createAttachment:@"preview.pdf" options:Mutable];
    CFRelease(Mutable);
    [(GQUProgressiveHelper *)v64 appendDataToAttachment:v48 chunk:v24];
    [(GQUProgressiveHelper *)v64 closeAttachment:v48];
    [v41 setAttribute:"src" cfStringValue:CFURLGetString(v48)];
    CFRelease(v48);
    [v41 endElement];
    [v41 endElement];
    v49 = [v41 createProgressiveHtml];

    [(GQUProgressiveOutputBundle *)v25 setDataForMainHtmlResource:v49];
    CFRelease(v49);
    [(GQUProgressiveHelper *)v64 closeAttachment:0];
    goto LABEL_37;
  }

  v20 = [[SFUZipArchive alloc] initWithPath:v12 collapseCommonRootDirectory:1];
  if ([v20 isEncrypted])
  {

    v20 = [[SFUZipArchive alloc] initWithPath:-[__CFURL path](a1 collapseCommonRootDirectory:{"path"), 1}];
    v66 = 0;
    v21 = sub_55F5C(v13, 0, [v20 passphraseVerifier], &v66);
    if ((v66 & 1) == 0)
    {
      goto LABEL_29;
    }

    [v20 setCryptoKey:v21];
    v19 = [GQPProcessorFactory retainedProcessorForDocument:a1 zipArchive:v20 uti:a2 outputType:4 outputPath:0 previewRequest:0 progressiveHelper:v64];
    if (!v19)
    {
      v40 = 0;
      v18 = 0;
      goto LABEL_59;
    }
  }

  else
  {
    v22 = [v20 entryWithName:@"QuickLook/Preview.pdf"];
    if (v22)
    {
      if (PathComponent)
      {
        CFRelease(PathComponent);
      }

      v23 = CFURLCopyLastPathComponent(a1);
      v24 = [v22 data];
      PathComponent = v23;
      if (!v24)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }

    v38 = kSFAPassphraseVerifierFilename;
    if ([v20 entryWithName:kSFAPassphraseVerifierFilename] || (v38 = off_9D2C0, objc_msgSend(v20, "entryWithName:", off_9D2C0)))
    {
      v39 = [[NSData alloc] initWithData:{objc_msgSend(objc_msgSend(v20, "entryWithName:", v38), "data")}];
      v65 = 0;
      v59 = sub_55F5C(v13, 0, v39, &v65);

      if ((v65 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v59 = 0;
    }

    if (sub_55234(v20))
    {
      v18 = sub_56010(v12, PathComponent, v64, a2, v13);
      v40 = 0;
      goto LABEL_49;
    }

    v53 = [[TSUTemporaryDirectory alloc] initWithError:0];
    v58 = [[NSString alloc] initWithFormat:@"%@", PathComponent];
    v54 = [objc_msgSend(v53 "path")];
    if ([objc_msgSend(objc_msgSend(v54 "pathExtension")])
    {
      v54 = [v54 stringByDeletingPathExtension];
    }

    [v20 decompressAtPath:v54];
    if (sub_55094(v54))
    {
      v19 = 0;
      v18 = sub_56010(v54, PathComponent, v64, a2, v13);
    }

    else
    {
      if (v59)
      {

        v20 = [[SFUZipArchive alloc] initWithPath:-[__CFURL path](a1 collapseCommonRootDirectory:{"path"), 1}];
      }

      v18 = 0;
      v19 = [GQPProcessorFactory retainedProcessorForDocument:a1 zipArchive:v20 uti:a2 outputType:4 outputPath:0 previewRequest:a4 progressiveHelper:v64 cryptoKey:v59];
    }

    [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v54, 0];

    if (!v19)
    {
      goto LABEL_40;
    }
  }

LABEL_58:
  [v19 setProgressiveMode:1];
  v40 = 0;
  v18 = [v19 go];
LABEL_59:
  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  if ((v40 | 2) == 2)
  {
    if ((v18 & 1) == 0)
    {
      if (a4)
      {
        sub_56E28([GQPProcessorFactory applicationForDocumentUti:a2], v64);
      }

      v55 = CFErrorCreate(0, @"QuickLookErrorDomain", -1, 0);
      (*(v60 + 32))(a5, v55);
      CFRelease(v55);
    }

    v40 = 0;
  }

  objc_autoreleasePoolPop(context);
  if (v40)
  {
    v56 = 4;
  }

  else
  {
    v56 = v18 - 1;
  }

  objc_sync_exit(@"iWorkQuickLookSyncObject");
  return v56;
}

void sub_55E78(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
  }

  JUMPOUT(0x55D54);
}

id sub_55F5C(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  v7 = [a1 UTF8String];
  v8 = 0;
  if (a1)
  {
    if (v7)
    {
      v8 = [[SFUCryptoKey alloc] initAes128KeyFromPassphrase:a1 iterationCount:+[SFUCryptoUtils iterationCountFromPassphraseVerifier:](SFUCryptoUtils saltData:{"iterationCountFromPassphraseVerifier:", a3), +[SFUCryptoUtils saltFromVerifier:saltLength:](SFUCryptoUtils, "saltFromVerifier:saltLength:", a3, 16)}];
      if (v8)
      {
        *a4 = [SFUCryptoUtils checkKey:v8 againstPassphraseVerifier:a3];
      }
    }
  }

  return v8;
}

uint64_t sub_56010(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = [[TQQuicklook alloc] initWithPath:a1 passphrase:a5];
  v7 = [GQPProcessorFactory applicationForDocumentUti:a4];
  if ([v6 load])
  {
    v62 = v7 == 2;
    if (v7 == 2)
    {
      v65 = 0;
    }

    else
    {
      v65 = [v6 pageCount];
    }

    v9 = 0;
    v72 = 0;
    v10 = 0;
    v11 = 0;
    v69 = v6;
    v64 = v7;
    while (1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [v6 newPDFForPageNumber:v10 + 1];
      if (!v13)
      {
        break;
      }

      v71 = v12;
      v73 = v13;
      if (!v10)
      {
        v74 = 0.0;
        v75 = 8.0;
        v14 = v13;
        sub_571D8(v13, &v74);
        v72 = [[GQUProgressiveOutputBundle alloc] initWithHandler:a3];
        if (v7 == 3)
        {
          [(GQUProgressiveOutputBundle *)v72 setDocumentSize:(v74 + 32.0), v75 + 32.0 + 32.0 + 1.0];
          [(GQUProgressiveOutputBundle *)v72 startProgressiveData];
          v9 = [[GQHXML alloc] initWithFilename:@"index.html" documentSize:&v74 outputBundle:v72 useExternalCss:1];
          [(GQHXML *)v9 startElement:"head"];
          if (a2)
          {
            [(GQHXML *)v9 startElement:"title"];
            [(GQHXML *)v9 addContent:a2];
            [(GQHXML *)v9 endElement];
          }

          sub_5726C(v9);
          [(GQHXML *)v9 startElement:"style"];
          v15 = qword_A46E8;
          if (!qword_A46E8)
          {
            v15 = [[UIFont systemFontOfSize:?]];
            qword_A46E8 = v15;
          }

          v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"body {margin: 0;}\n .navpane-sheet {font-size:%f; font-family: -apple-system, %@; color: %@;\n", 0x4031000000000000, v15, qword_A46C0);
          [(GQHXML *)v9 addContent:v16];
          CFRelease(v16);
          v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"border-style: solid; border-width: %f; border-color: %@;", 0x3FF0000000000000, qword_A46E0);
          [(GQHXML *)v9 addContent:v17];
          CFRelease(v17);
          v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"text-decoration:none; white-space: nowrap; overflow:hidden; text-overflow:ellipsis; background-color: %@;}\n", qword_A46D0);
          [(GQHXML *)v9 addContent:v18];
          CFRelease(v18);
          v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @".navpane-sheet.selected {color: %@; background-color: %@;}\n", qword_A46C8, qword_A46D8);
          [(GQHXML *)v9 addContent:v19];
          CFRelease(v19);
          v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @".navbar {position: absolute; max-height: %dpx; max-width: %dpx; overflow-x:scroll;}\n", 64, 771);
          [(GQHXML *)v9 addContent:v20];
          CFRelease(v20);
          v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"div {padding-top: %dpx; text-align: center; vertical-align: middle; white-space: nowrap; display: inline-block}\n", 5);
          [(GQHXML *)v9 addContent:v21];
          CFRelease(v21);
          [(GQHXML *)v9 endElement];
          [(GQHXML *)v9 startElement:"body"];
          [(GQHXML *)v9 setAttribute:"bgcolor" value:"white"];
          [(GQHXML *)v9 startElement:"div"];
          [(GQHXML *)v9 setAttribute:"id" cfStringValue:@"wrapper"];
          v22 = CFStringCreateWithFormat(0, 0, @"position:absolute; top:%d; left:0; right:0;", 32);
          [(GQHXML *)v9 setAttribute:"style" cfStringValue:v22];
          CFRelease(v22);
          [(GQHXML *)v9 endElement];
        }

        else
        {
          [(GQUProgressiveOutputBundle *)v72 setDocumentSize:v74, v75];
          [(GQUProgressiveOutputBundle *)v72 startProgressiveData];
          v9 = [[GQHXML alloc] initWithFilename:@"index.html" documentSize:&v74 outputBundle:v72 useExternalCss:1];
          v76 = 0.0;
          v77 = 8.0;
          sub_571D8(v14, &v76);
          LODWORD(v23) = 10.0;
          [(GQHXML *)v9 addViewportMetaTagForDocumentSize:v76 maximumScale:v77, v23];
          if (a2)
          {
            [(GQHXML *)v9 startElement:"title"];
            [(GQHXML *)v9 addContent:a2];
            [(GQHXML *)v9 endElement];
          }

          [(GQHXML *)v9 endElement];
          [(GQHXML *)v9 startElement:"body"];
          [(GQHXML *)v9 setAttribute:"style" value:"margin: 0px; padding: 0px;"];
          [(GQHXML *)v9 setAttribute:"bgcolor" cfStringValue:@"white"];
          if ([(GQHXML *)v9 isProgressive])
          {
            v24 = [(GQHXML *)v9 createProgressiveeCSSwithStyleTags:0];
            [(GQUProgressiveOutputBundle *)v72 setData:v24 mimeType:@"text/css" forNamedResource:[(GQHXML *)v9 cssFilename]];
            CFRelease(v24);
          }

          v25 = [(GQHXML *)v9 createProgressiveHtml];
          [(GQUProgressiveOutputBundle *)v72 setDataForMainHtmlResource:v25];
          CFRelease(v25);
        }

        v13 = v73;
      }

      if (v7 == 3)
      {
        v67 = v9;
        v68 = v10 + 1;
        v26 = v10;
        LOBYTE(v74) = 1;
        do
        {
          v27 = v11++;
          v28 = [v6 sheetNameForPageNumber:v27 isForm:&v74];
        }

        while ((LOBYTE(v74) & 1) != 0);
        v29 = v28;
        v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"sheet_%d.html", v26);
        v66 = [(GQUProgressiveOutputBundle *)v72 createUriForResource:v30];
        v31 = [[GQHXML alloc] initEmptyWithFilename:v30 useExternalCss:1];
        [v31 addMetaTagWithTextFormat:@"UTF-8"];
        v76 = 0.0;
        v77 = 8.0;
        sub_571D8(v73, &v76);
        v33 = v76;
        v32 = v77;
        LODWORD(v34) = 10.0;
        [v31 addViewportMetaTagForDocumentSize:v76 maximumScale:{v77, v34}];
        [v31 endElement];
        [v31 startElement:"script"];
        [v31 setAttribute:"type" value:"text/javascript"];
        [v31 addContent:{@"function adjust_iframe_dimensions(){\n    var actual_height = document.body.scrollHeight;\n    var actual_width = document.body.scrollWidth;\n    var dim = {height:actual_height, width: actual_width};\n    parent.postMessage(dim, *);\n}\n"}];
        CFRelease(@"function adjust_iframe_dimensions(){\n    var actual_height = document.body.scrollHeight;\n    var actual_width = document.body.scrollWidth;\n    var dim = {height:actual_height, width: actual_width};\n    parent.postMessage(dim,*);\n}\n");
        [v31 endElement];
        [v31 startElement:"body"];
        [v31 setAttribute:"bgcolor" value:"white"];
        [v31 setAttribute:"onload" value:"adjust_iframe_dimensions()"];
        [v31 startElement:"div"];
        [v31 startElement:"img"];
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(Mutable, kQLPreviewPropertyMIMETypeKey, @"application/pdf");
        CFDictionarySetValue(Mutable, kQLPreviewPropertyTextEncodingNameKey, @"UTF-8");
        v36 = CFStringCreateWithFormat(0, 0, @"preview%d.pdf", v26);
        v37 = [a3 createAttachment:v36 options:Mutable];
        v38 = Mutable;
        v39 = v26;
        CFRelease(v38);
        [a3 appendDataToAttachment:v37 chunk:v73];
        [a3 closeAttachment:v37];
        [v31 setAttribute:"src" cfStringValue:CFURLGetString(v37)];
        v40 = v33;
        LODWORD(v41) = vcvtps_s32_f32(v40);
        [v31 setAttribute:"width" intValue:v41];
        v42 = v32;
        LODWORD(v43) = vcvtps_s32_f32(v42);
        [v31 setAttribute:"height" intValue:v43];
        CFRelease(v36);
        CFRelease(v37);
        [v31 endElementWithExpectedName:"img"];
        [v31 endElementWithExpectedName:"div"];
        [v31 writeToOutputBundle:v72 isThumbnail:0];

        v44 = "navpane-sheet";
        v9 = v67;
        if (!v39)
        {
          [(GQHXML *)v67 startElement:"iframe"];
          [(GQHXML *)v67 setAttribute:"id" cfStringValue:@"SheetFrame"];
          [(GQHXML *)v67 setAttribute:"src" cfStringValue:v66];
          v45 = CFStringCreateWithFormat(0, 0, @"position:absolute; top:%d; left:0; right:0;", 32);
          v46 = CFStringCreateWithFormat(0, 0, @"border:0; %@", v45);
          [(GQHXML *)v67 setAttribute:"style" cfStringValue:v46];
          [(GQHXML *)v67 setAttribute:"name" value:"sheetPane"];
          CFRelease(v46);
          CFRelease(v45);
          [(GQHXML *)v67 endElement];
          [(GQHXML *)v67 endElement];
          [(GQHXML *)v67 startElement:"div"];
          [(GQHXML *)v67 setAttribute:"id" cfStringValue:@"navmask"];
          v47 = CFStringCreateWithFormat(0, 0, @"position:absolute; top:0; left:0; right:0; bottom:%dpx; height:%dpx; overflow: hidden", 32, 32);
          [(GQHXML *)v67 setAttribute:"style" cfStringValue:v47];
          CFRelease(v47);
          [(GQHXML *)v67 startElement:"div"];
          [(GQHXML *)v67 setAttribute:"id" cfStringValue:@"navbar"];
          v48 = CFStringCreateWithFormat(0, 0, @"position:absolute; top:0; left:0; right:0; bottom:%dpx; height:%dpx;", 64, 64);
          [(GQHXML *)v67 setAttribute:"style" cfStringValue:v48];
          CFRelease(v48);
          [(GQHXML *)v67 setAttribute:"class" cfStringValue:@"navbar"];
          v44 = "navpane-sheet selected";
        }

        [(GQHXML *)v67 startElement:"div"];
        v49 = CFStringCreateWithFormat(0, 0, @"javascript:SelectSheet(%d, '%@');", v39, v66);
        [(GQHXML *)v67 setAttribute:"onclick" cfStringValue:v49];
        CFRelease(v49);
        v50 = CFStringCreateWithFormat(0, 0, @"Tab%d", v39);
        [(GQHXML *)v67 setAttribute:"id" cfStringValue:v50];
        CFRelease(v50);
        [(GQHXML *)v67 setAttribute:"href" value:"#"];
        [(GQHXML *)v67 setAttribute:"title" cfStringValue:v29];
        [(GQHXML *)v67 setAttribute:"class" value:v44];
        v51 = CFStringCreateWithFormat(0, 0, @"position:absolute; overflow:hidden;  top:%d; left:%d; width:%d; height:%d;", 0, (147 * v39), 147, 30);
        [(GQHXML *)v67 setAttribute:"style" cfStringValue:v51];
        CFRelease(v51);
        v52 = CFStringCreateWithFormat(0, 0, @" %@", v29);
        [(GQHXML *)v67 addContent:v29];
        CFRelease(v52);
        [(GQHXML *)v67 endElement];
        CFRelease(v30);
        CFRelease(v66);
        v7 = v64;
        v53 = v68;
        v54 = v73;
      }

      else
      {
        v76 = 0.0;
        v77 = 8.0;
        v54 = v13;
        sub_571D8(v13, &v76);
        [(GQHXML *)v9 startElement:"div"];
        [(GQHXML *)v9 setAttribute:"class" cfStringValue:&stru_85620];
        [(GQHXML *)v9 startElement:"img"];
        v55 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(v55, kQLPreviewPropertyMIMETypeKey, @"application/pdf");
        CFDictionarySetValue(v55, kQLPreviewPropertyTextEncodingNameKey, @"UTF-8");
        v56 = CFStringCreateWithFormat(0, 0, @"preview%d.pdf", v10);
        v57 = [a3 createAttachment:v56 options:v55];
        CFRelease(v56);
        CFRelease(v55);
        [a3 appendDataToAttachment:v57 chunk:v54];
        v53 = v10 + 1;
        [a3 closeAttachment:v57];
        [(GQHXML *)v9 setAttribute:"src" cfStringValue:CFURLGetString(v57)];
        [(GQHXML *)v9 setAttribute:"width" cfStringValue:@"100%"];
        CFRelease(v57);
        [(GQHXML *)v9 endElementWithExpectedName:"img"];
        [(GQHXML *)v9 endElementWithExpectedName:"div"];
        v58 = [(GQHXML *)v9 createProgressiveHtml];
        [(GQUProgressiveOutputBundle *)v72 setDataForMainHtmlResource:v58];
        CFRelease(v58);
      }

      objc_autoreleasePoolPop(v71);
      v10 = v53;
      v6 = v69;
      if (v7 != 2)
      {
        v10 = v53;
        if (v53 >= v65)
        {
          v8 = 1;
          goto LABEL_32;
        }
      }
    }

    objc_autoreleasePoolPop(v12);
    v8 = v62;
LABEL_32:
    [(GQHXML *)v9 endElement];
    [(GQHXML *)v9 endElement];
    if (v7 == 3)
    {
      [(GQHXML *)v9 endElement];
      [(GQHXML *)v9 endElement];
      [(GQHXML *)v9 writeToOutputBundle:v72 isThumbnail:0];
    }

    else
    {
      v59 = [(GQHXML *)v9 createProgressiveHtml];
      if (v59)
      {
        v60 = v59;
        [(GQUProgressiveOutputBundle *)v72 setDataForMainHtmlResource:v59];
        CFRelease(v60);
      }
    }

    [a3 closeAttachment:0];
  }

  else
  {
    v8 = 0;
  }

  [v6 close];

  return v8;
}

NSString *sub_56E28(NSString *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = [a2 progressiveStreamStarted];
    if (result)
    {
      result = [a2 previewHasStreamedMainHTML];
      if (result)
      {
        v4 = 0;
      }

      else
      {
        result = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"IWORK_READ_ERROR_MESSAGE", @"This document can not be previewed.", 0];
        v4 = result;
      }

      switch(v3)
      {
        case 1:
          if (!v4)
          {
            v4 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"IWORK_KEY_PROG_ERROR_MESSAGE", @"This presentation is only partially previewed.", 0];
          }

          v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"IWORK_KEY_PROG_ERROR_HTML", @"<div id=slideId_Error class = slideStyle style=width:%f; height:%f><div align=center style= margin-left:auto; margin-right:auto; margin-top:-170px; top:50%%; position:relative; width:400px; height:340px><img align=center src=%@ width=240 height=240/><div style= width:400px; height:48px;><div style = position:relative;align:center;font-family:'Helvetica';font-size:14pt;font-style:bold;color:rgb(180, 180, 180);><br>%@</div ></div></div></div></body></html>", 0];
          v5 = 0;
          v7 = @"partial-preview-keynote";
          break;
        case 2:
          if (!v4)
          {
            v4 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"IWORK_PAGES_PROG_ERROR_MESSAGE", @"This document is only partially previewed.", 0];
          }

          v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"IWORK_PAGES_PROG_ERROR_HTML", @"<div class=i2 style=width:%f; height:%f > <div style=padding-top:0;left:50%%; margin-left:-200px; margin-top:-170px; top:50%%; position:absolute; width:400px; height:340px><img style=align:center; margin-left:80px;  src=%@ width=240 height=240/><div style= width:400px; height:48px;><div style=position:relative; text-align:center; font-family:'Helvetica Neue'; font-size:14pt;    font-style:bold; color:rgb(180, 180, 180);><br>%@</div ></div></div></div></body></html>", 0];
          v5 = 0;
          v7 = @"partial-preview-pages";
          break;
        case 3:
          v5 = CFURLCreateWithString(0, [a2 getNumbersSheetUri], 0);
          if (!v4)
          {
            v4 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"IWORK_NUM_PROG_ERROR_MESSAGE", @"This spreadsheet is only partially previewed.", 0];
          }

          v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"IWORK_NUM_PROG_ERROR_HTML", @"<!DOCTYPE html PUBLIC -//W3C//DTD HTML 4.0 Transitional//EN http://www.w3.org/TR/REC-html40/loose.dtd><html xmlns=http://www.w3.org/1999/xhtml><body><div style=width:%fpx; height:%fpx;><div align=center style=margin-left:auto; margin-right:auto; margin-top:-180px; top:50%%; position:relative; width:400px; height:340px><img align=center src=%@ width=240 height=240/><div style= width:400px; height:48px;>    <div style = position:relative; align:center; font-family:'Helvetica'; font-size:14pt;font-style:bold;color:rgb(180, 180, 180);><br>%@</div ></div></div></div></body></html>", 0];
          v7 = @"partial-preview-numbers";
          break;
        default:
          return result;
      }

      v8 = [[NSData alloc] initWithContentsOfFile:{-[NSBundle pathForResource:ofType:](+[NSBundle bundleWithIdentifier:](NSBundle, "bundleWithIdentifier:", @"com.apple.iwork.iWorkQuickLookGenerator", "pathForResource:ofType:", v7, @"png"}];
      if (v8)
      {
        v9 = [a2 createAttachment:+[NSString stringWithFormat:](NSString options:{"stringWithFormat:", @"%@.png", v7), +[NSDictionary dictionary](NSDictionary, "dictionary")}];
        [a2 appendDataToAttachment:v9 chunk:v8];
        [a2 closeAttachment:v9];
      }

      else
      {
        v9 = 0;
      }

      [a2 getPreviewWidth];
      v11 = v10;
      [a2 getPreviewHeight];
      [a2 appendDataToAttachment:v5 chunk:{-[NSString dataUsingEncoding:](+[NSString stringWithFormat:](NSString, "stringWithFormat:", v6, *&v11, v12, CFURLGetString(v9), v4), "dataUsingEncoding:", 4)}];
      if (v5)
      {
        [a2 closeAttachment:v9];
        CFRelease(v5);
      }

      if (v8)
      {
      }

      if (v9)
      {
        CFRelease(v9);
      }

      return sub_3A3D0();
    }
  }

  return result;
}

void sub_571D8(const __CFData *a1, double *a2)
{
  v3 = CGDataProviderCreateWithCFData(a1);
  v4 = CGPDFDocumentCreateWithProvider(v3);
  CFRelease(v3);
  Page = CGPDFDocumentGetPage(v4, 1uLL);
  BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
  v6 = BoxRect.size.width + 15.0;
  v7 = a2[1];
  if (*a2 >= v6)
  {
    v6 = *a2;
  }

  v8 = BoxRect.size.height + 8.0;
  *a2 = v6;
  a2[1] = v7 + v8;

  CFRelease(v4);
}

uint64_t sub_5726C(void *a1)
{
  [a1 startElement:"script"];
  [a1 setAttribute:"type" value:"text/javascript"];
  [a1 addContent:{@"\n// Create IE + others compatible event handler\nvar eventMethod = window.addEventListener ? addEventListener : attachEvent;\nvar eventer = window[eventMethod];\nvar messageEvent = eventMethod == attachEvent ? onmessage : message;\n\n// Listen to message from child window\neventer(messageEvent, function(e) {\n    document.getElementById('SheetFrame').height = e.data.height + 'px';\n    document.getElementById('SheetFrame').width = e.data.width + 'px';\n}, false);\n\n"}];
  CFRelease(@"\n// Create IE + others compatible event handler\nvar eventMethod = window.addEventListener ? addEventListener : attachEvent;\nvar eventer = window[eventMethod];\nvar messageEvent = eventMethod == attachEvent ? onmessage : message;\n\n// Listen to message from child window\neventer(messageEvent,function(e) {\n    document.getElementById('SheetFrame').height = e.data.height + 'px';\n    document.getElementById('SheetFrame').width = e.data.width + 'px';\n},false);\n\n");
  [a1 addContent:@"Element.prototype.addClassName = function addClassName(className){\n    if (!this.hasClassName(className))\n        this.className += ' ' + className;\n};\n\n"];
  CFRelease(@"Element.prototype.addClassName = function addClassName(className){\n    if (!this.hasClassName(className))\n        this.className += ' ' + className;\n};\n\n");
  [a1 addContent:@"Element.prototype.removeClassName = function removeClassName(className){\n    // Test for the simple case before using a RegExp.\n    if (this.className === className)\n        this.className = ;\n    else\n        this.removeMatchingClassNames(className.escapeForRegExp());\n};\n\n"];
  CFRelease(@"Element.prototype.removeClassName = function removeClassName(className){\n    // Test for the simple case before using a RegExp.\n    if (this.className === className)\n        this.className = ;\n    else\n        this.removeMatchingClassNames(className.escapeForRegExp());\n};\n\n");
  [a1 addContent:{@"Element.prototype.removeMatchingClassNames = function removeMatchingClassNames(classNameRegex){\n    var regex = new RegExp((^|\\\\s+) + classNameRegex + ($|\\\\s+),  );\n};\n\n")}];
  CFRelease(@"Element.prototype.removeMatchingClassNames = function removeMatchingClassNames(classNameRegex){\n    var regex = new RegExp((^|\\\\s+) + classNameRegex + ($|\\\\s+));\n    if (regex.test(this.className))\n        this.className = this.className.replace(regex,  );\n};\n\n");
  [a1 addContent:@"Element.prototype.hasClassName = function hasClassName(className){\n    if (!className)\n        return false;\n    if (this.className === className)\n        return true;\n    var regex = new RegExp((^|\\\\s) + className.escapeForRegExp() + ($|\\\\s)"];
  CFRelease(@"Element.prototype.hasClassName = function hasClassName(className){\n    if (!className)\n        return false;\n    if (this.className === className)\n        return true;\n    var regex = new RegExp((^|\\\\s) + className.escapeForRegExp() + ($|\\\\s));\n    return regex.test(this.className);\n};\n\n");
  [a1 addContent:@"String.prototype.escapeForRegExp = function escapeForRegExp(){\n    return this.escapeCharacters(^[]{}()\\.$*+?|"];
  CFRelease(@"String.prototype.escapeForRegExp = function escapeForRegExp(){\n    return this.escapeCharacters(^[]{}()\\.$*+?|);\n};\n\n");
  [a1 addContent:@"String.prototype.escapeCharacters = function escapeCharacters(chars){\n    var foundChar = false;\n    for (var i = 0; i < chars.length; ++i) {\n        if (this.indexOf(chars.charAt(i)) !== -1) {\n            foundChar = true;\n            break;\n        }\n    }\n\n    if (!foundChar)\n        return this;\n\n    var result = ;\n    for (var j = 0; j < this.length; ++j) {\n        if (chars.indexOf(this.charAt(j)) !== -1)\n            result += \\\\;\n        result += this.charAt(j);\n    }\n\n    return result;\n};\n\n"];
  CFRelease(@"String.prototype.escapeCharacters = function escapeCharacters(chars){\n    var foundChar = false;\n    for (var i = 0; i < chars.length; ++i) {\n        if (this.indexOf(chars.charAt(i)) !== -1) {\n            foundChar = true;\n            break;\n        }\n    }\n\n    if (!foundChar)\n        return this;\n\n    var result = ;\n    for (var j = 0; j < this.length; ++j) {\n        if (chars.indexOf(this.charAt(j)) !== -1)\n            result += \\\\;\n        result += this.charAt(j);\n    }\n\n    return result;\n};\n\n");
  v2 = CFStringCreateWithFormat(0, 0, @"var borderColor = %@;\nvar backgroundColor = %@;\n", qword_A46E0, qword_A46D0);
  [a1 addContent:v2];
  CFRelease(v2);
  [a1 addContent:{@"var _tabChanged = false;\nfunction SelectSheet(sheetNumber, sheetURL){\n    _tabChanged = true;\n    var navbar = document.getElementById('navbar');\n    var navChildren = navbar.children;\n    for (var j=0; j < navChildren.length; j++) {\n        var navChild = navChildren[j];\n        var navElementName = navChild.id;\n        if (navElementName == (Tab+sheetNumber)) {\n            navChild.addClassName(selected);\n            document.getElementById('SheetFrame').src = sheetURL;\n        }\n        else {\n            if (navChild.classList.contains(selected)) {\n                navChild.removeClassName(selected);\n            }\n            if (navElementName == (Tab+(sheetNumber - 1))) {\n                navChild.style.borderRightColor = backgroundColor;\n            }\n            else {\n                navChild.style.borderRightColor = borderColor;\n            }\n        }\n    }\n}\n\n"}];
  CFRelease(@"var _tabChanged = false;\nfunction SelectSheet(sheetNumber, sheetURL){\n    _tabChanged = true;\n    var navbar = document.getElementById('navbar');\n    var navChildren = navbar.children;\n    for (var j=0; j < navChildren.length; j++) {\n        var navChild = navChildren[j];\n        var navElementName = navChild.id;\n        if (navElementName == (Tab+sheetNumber)) {\n            navChild.addClassName(selected);\n            document.getElementById('SheetFrame').src = sheetURL;\n        }\n        else {\n            if (navChild.classList.contains(selected)) {\n                navChild.removeClassName(selected);\n            }\n            if (navElementName == (Tab+(sheetNumber - 1))) {\n                navChild.style.borderRightColor = backgroundColor;\n            }\n            else {\n                navChild.style.borderRightColor = borderColor;\n            }\n        }\n    }\n}\n\n");
  [a1 addContent:@"function ScrollNavBar(scrollX) {\n    var navBar = document.getElementById('navbar');\n    navBar.scrollLeft += scrollX;\n}\n\n"];
  CFRelease(@"function ScrollNavBar(scrollX) {\n    var navBar = document.getElementById('navbar');\n    navBar.scrollLeft += scrollX;\n}\n\n");
  [a1 addContent:{@"function ReloadFirstSheetIfNeeded(sheetURL)\n{\n    if (_tabChanged == false) {\n        SelectSheet(0, sheetURL);\n    }\n}\n\n"}];
  CFRelease(@"function ReloadFirstSheetIfNeeded(sheetURL)\n{\n    if (_tabChanged == false) {\n        SelectSheet(0, sheetURL);\n    }\n}\n\n");
  [a1 endElement];
  return 0;
}

CFStringRef sub_57424()
{
  qword_A46C0 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"rgba(%d,%d,%d,%f)", 100, 100, 100, 0x3FF0000000000000);
  qword_A46C8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"rgba(%d,%d,%d,%f)", 255, 255, 255, 0x3FF0000000000000);
  qword_A46D0 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"rgba(%d,%d,%d,%f)", 239, 239, 244, 0x3FF0000000000000);
  qword_A46D8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"rgba(%d,%d,%d,%f)", 0, 166, 80, 0x3FF0000000000000);
  result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"rgba(%d,%d,%d,%f)", 191, 191, 191, 0x3FF0000000000000);
  qword_A46E0 = result;
  return result;
}

id sub_5777C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(GQDArcPath);
  v5 = [(GQDArcPath *)v4 readAttributesFromReader:a1 processor:a2];
  if (v5 == 1)
  {
    [objc_msgSend(objc_msgSend(a2 "documentState")];
    [objc_msgSend(a2 "documentState")];
  }

  return v5;
}

uint64_t sub_57800(xmlTextReader *a1, void *a2)
{
  if (sub_429BC(a1, [objc_msgSend(a2 "documentState")] + 2))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_57C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_3F198(&unk_A3F80, 0, a3, a4, a5, a6, a7, a8, v15);
  __cxa_atexit(sub_3F0F0, &unk_A3F80, &dword_0);
  sub_3F3A8(&unk_A3FB0, "size", sub_57800, 0, 0, &unk_A3F80);
  __cxa_atexit(sub_3F2F8, &unk_A3FB0, &dword_0);
  sub_37AEC(qword_A3FF0, &unk_A3FB0);
  __cxa_atexit(j_nullsub_2_5, qword_A3FF0, &dword_0);
  sub_3F198(&unk_A4008, "size", v8, v9, v10, v11, v12, v13, qword_A3FF0);
  __cxa_atexit(sub_3F0F0, &unk_A4008, &dword_0);
  sub_3F3A8(&unk_A4038, "SFDArcPathSource", sub_5777C, 0, 0, &unk_A4008);

  return __cxa_atexit(sub_3F2F8, &unk_A4038, &dword_0);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  CurrentPoint = _CGPathGetCurrentPoint(path);
  y = CurrentPoint.y;
  x = CurrentPoint.x;
  result.y = y;
  result.x = x;
  return result;
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}