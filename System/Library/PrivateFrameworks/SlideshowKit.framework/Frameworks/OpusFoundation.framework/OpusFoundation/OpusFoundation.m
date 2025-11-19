unint64_t OFLoggerSetLevel(unint64_t result)
{
  if (result <= 7)
  {
    OFLoggerLevel = result;
  }

  return result;
}

double OFMainScreenSizeWithScaleFactor()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 bounds];
  v2 = v1;
  [v0 scale];
  v4 = v3 * v2;
  [v0 bounds];
  [v0 scale];
  return v4;
}

void OFBenchmarkGetMemory(void *a1, void *a2)
{
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v11 = 0u;
  *host_info_out = 0u;
  *v9 = 0u;
  v10 = 0u;
  host_info_outCnt = 15;
  v4 = MEMORY[0x26D655210]();
  v5 = host_statistics(v4, 2, host_info_out, &host_info_outCnt);
  if (v5)
  {
    mach_error("can't get host_vm_info???\n", v5);
  }

  host_info_outCnt = 12;
  v6 = MEMORY[0x26D655210]();
  v7 = host_info(v6, 1, v9, &host_info_outCnt);
  if (v7)
  {
    mach_error("can't get host_basic_info???\n", v7);
  }

  *a2 = *MEMORY[0x277D85FA0] * host_info_out[0];
  *a1 = *(&v11 + 1);
}

double OFLinearInterpolationBetweenTwoPoints(double result, double a2, double a3, double a4, double a5)
{
  if (result != a3)
  {
    return result + a5 * (a3 - result);
  }

  return result;
}

double OFAngleBetweenLinesInRadians(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v12 = a2 - a4;
  v13 = a1 - a3;
  v14 = atan2f(v12, v13);
  v15 = a6 - a8;
  v16 = a5 - a7;
  return atan2f(v15, v16) - v14;
}

double OFCGRectMakeFitSizeInRect(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a6 / a2;
  if (a5 / a1 < a6 / a2)
  {
    v6 = a5 / a1;
  }

  return a3 + (a5 - a1 * v6) * 0.5;
}

double OFCGRectMakeAlignRectOnPixels(double a1, double a2, double a3, double a4)
{
  v4 = COERCE_DOUBLE(CGRectIntegral(*&a1));
  if (v4)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 0.5;
  }

  return v4 + v5;
}

uint64_t OFCreateMultiplyColorFilter()
{
  v0 = objc_alloc(NSClassFromString(&cfstr_Cafilter.isa));

  return [v0 initWithType:@"multiplyColor"];
}

uint64_t OFNextPowerOf2(uint64_t a1)
{
  v1 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
  return (v2 | (v2 >> 16) | ((v2 | (v2 >> 16)) >> 32)) + 1;
}

uint64_t _sf_copyfile_callback(uint64_t a1, int a2, _copyfile_state *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if ((a2 - 1) < 2)
  {
    return 0;
  }

  if (a2 == 3)
  {
    return 2;
  }

  dst[7] = v6;
  dst[8] = v7;
  v11 = [objc_msgSend(a6 objectAtIndex:{0), "intValue"}];
  v12 = [objc_msgSend(a6 objectAtIndex:{1), "intValue"}];
  v13 = [a6 objectAtIndex:2];
  dst[0] = 0;
  v15 = 0;
  copyfile_state_get(a3, 8u, dst);
  v14 = dst[0] + v12;
  [a6 replaceObjectAtIndex:1 withObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithLongLong:", v14)}];
  (*(v13 + 16))(v13, &v15, v14 / v11);
  return 2 * v15;
}

__CFString *OFUTTypePreferredIdentifier(void *a1)
{
  v1 = [a1 pathExtension];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], v1, 0);

  return PreferredIdentifierForTag;
}

__CFString *OFUTTypeExtensionForUTI(const __CFString *a1)
{
  v1 = UTTypeCopyPreferredTagWithClass(a1, *MEMORY[0x277CC1F58]);

  return v1;
}

uint64_t _mobileMeUsernameFromAddress(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = @"@mac.com";
  if (([v1 hasSuffix:@"@mac.com"] & 1) == 0)
  {
    v2 = @"@me.com";
    if (![v1 hasSuffix:@"@me.com"])
    {
      return 0;
    }
  }

  return [v1 stringByReplacingOccurrencesOfString:v2 withString:&stru_287AB5E40];
}

id OFABRecordMobileMeUsernames(const void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = ABRecordCopyValue(a1, *MEMORY[0x277CB98B8]);
  if (v3)
  {
    v4 = v3;
    v5 = ABMultiValueCopyArrayOfAllValues(v3);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        v9 = 0;
        do
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = _mobileMeUsernameFromAddress(*(*(&v26 + 1) + 8 * v9));
          if ([v10 length])
          {
            [v2 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v4);
  }

  v11 = ABRecordCopyValue(a1, *MEMORY[0x277CB98C8]);
  if (v11)
  {
    v12 = v11;
    v13 = ABMultiValueCopyArrayOfAllValues(v11);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [(__CFArray *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      v17 = *MEMORY[0x277CB98D0];
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = _mobileMeUsernameFromAddress([*(*(&v22 + 1) + 8 * v18) objectForKey:v17]);
          if ([v19 length])
          {
            [v2 addObject:v19];
          }

          ++v18;
        }

        while (v15 != v18);
        v15 = [(__CFArray *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    CFRelease(v12);
  }

  if ([v2 count])
  {
    v20 = [v2 copy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

CGImageSource *OFABRecordCreateContactImageThumbnail(const void *a1)
{
  if (!ABPersonHasImageData(a1))
  {
    return 0;
  }

  v2 = ABPersonCopyImageDataWithFormat(a1, kABPersonImageFormatThumbnail);
  v3 = OFCGImageCreateWithData(v2, 1);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

__CFString *NSStringFromNSIndexPath2D(void *a1)
{
  v1 = CFStringCreateWithFormat(0, 0, @"{%ld, %ld}", [a1 indexAtPosition:0], objc_msgSend(a1, "indexAtPosition:", 1));

  return v1;
}

uint64_t NSIndexPath2DFromString(__CFString *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if ([(__CFString *)a1 length]< 5 || !_ParseNumbers(a1, &v4, 2))
  {
    return 0;
  }

  v3 = vcvtq_u64_f64(v4);
  return [MEMORY[0x277CCAA70] indexPathWithIndexes:&v3 length:2];
}

uint64_t OFAVAssetCreateThumbnailWithURL(uint64_t a1, unint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x277CE6650]) initWithURL:a1 options:0];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x277CE6408]) initWithAsset:v3];
    if (v5)
    {
      v6 = v5;
      [v5 setAppliesPreferredTrackTransform:1];

      memset(&v17, 0, sizeof(v17));
      CMTimeMakeWithSeconds(&v17, 0.0, 600);
      v7 = [objc_msgSend(v4 tracksWithMediaType:{*MEMORY[0x277CE5EA8]), "lastObject"}];
      if (v7)
      {
        [v7 naturalSize];
        if (a2)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v8 = *MEMORY[0x277CBF3A8];
        v9 = *(MEMORY[0x277CBF3A8] + 8);
        if (a2)
        {
LABEL_5:
          v10 = a2;
          if (v8 >= v9)
          {
            v9 = v8 * v10 / v9;
          }

          else
          {
            v11 = v9 * v10;
            v9 = a2;
            v10 = v11 / v8;
          }

          goto LABEL_12;
        }
      }

      v10 = v8;
LABEL_12:
      [v6 setMaximumSize:{v10, v9}];
      memset(v16, 0, sizeof(v16));
      v14 = v17;
      v15 = 0;
      v12 = [v6 copyCGImageAtTime:&v14 actualTime:v16 error:&v15];

      return v12;
    }
  }

  return 0;
}

void *_OFAVAssetTranscodeCreateSession(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CE6650] URLAssetWithURL:a1 options:0];
  if (!v7)
  {
    v28 = MEMORY[0x277CCA9B8];
    v29 = @"AVURLAsset cannot be initialized";
    goto LABEL_34;
  }

  v8 = v7;
  v9 = [MEMORY[0x277CE6400] exportPresetsCompatibleWithAsset:v7];
  if (OFLoggerLevel >= 7)
  {
    [OFLogger logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFAVAssetExtensions.m" line:82 andFormat:@"Available export presets for %@:", a1];
  }

  v33 = a1;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (!v10)
  {
    goto LABEL_32;
  }

  v11 = v10;
  v34 = v8;
  v35 = a4;
  v12 = 0;
  v13 = *v42;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v42 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v41 + 1) + 8 * i);
      if (OFLoggerLevel >= 7)
      {
        [OFLogger logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFAVAssetExtensions.m" line:86 andFormat:@"  %@", *(*(&v41 + 1) + 8 * i)];
      }

      v12 |= [v15 isEqualToString:a2];
    }

    v11 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
  }

  while (v11);
  a4 = v35;
  if ((v12 & 1) == 0)
  {
LABEL_32:
    v28 = MEMORY[0x277CCA9B8];
    v29 = @"Unsupported preset for media";
LABEL_34:
    v30 = [v28 errorWithDescription:v29];
    v31 = v30;
    if (a4 && v30)
    {
      *a4 = v30;
    }

    else if (!v30)
    {
      return 0;
    }

    return 0;
  }

  v16 = [objc_alloc(MEMORY[0x277CE6400]) initWithAsset:v34 presetName:a2];
  if (!v16)
  {
    v28 = MEMORY[0x277CCA9B8];
    v29 = @"Export session failed to initialize";
    goto LABEL_34;
  }

  v17 = v16;
  if (!a3)
  {
    v18 = MEMORY[0x277CE5D70];
    v19 = [*MEMORY[0x277CE5BE0] isEqualToString:a2];
    v20 = MEMORY[0x277CE5D68];
    if (!v19)
    {
      v20 = v18;
    }

    a3 = *v20;
  }

  if (OFLoggerLevel >= 7)
  {
    [OFLogger logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFAVAssetExtensions.m" line:120 andFormat:@"Available file types for %@:", v33];
  }

  v21 = [v17 supportedFileTypes];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (!v22)
  {
    goto LABEL_41;
  }

  v23 = v22;
  v24 = 0;
  v25 = *v38;
  do
  {
    for (j = 0; j != v23; ++j)
    {
      if (*v38 != v25)
      {
        objc_enumerationMutation(v21);
      }

      v27 = *(*(&v37 + 1) + 8 * j);
      if (OFLoggerLevel >= 7)
      {
        [OFLogger logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFAVAssetExtensions.m" line:127 andFormat:@"  %@", *(*(&v37 + 1) + 8 * j)];
      }

      v24 |= [v27 isEqualToString:a3];
    }

    v23 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
  }

  while (v23);
  a4 = v35;
  if ((v24 & 1) == 0)
  {
LABEL_41:
    v28 = MEMORY[0x277CCA9B8];
    v29 = @"Unsupported file type for preset";
    goto LABEL_34;
  }

  [v17 setOutputFileType:a3];
  return v17;
}

BOOL OFAVAssetTranscode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34 = 0;
  v11 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v31 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (!a1 || !a2 || !a3)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDescription:@"Parameters are incorrect"];
    goto LABEL_9;
  }

  if (OFLoggerLevel >= 7)
  {
    [OFLogger logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFAVAssetExtensions.m" line:172 andFormat:@"Transcoding %@ to %@ using preset %@ for file type %@", a1, a2, a3, a4];
  }

  if (![v11 fileExistsAtPath:{objc_msgSend(a2, "path")}])
  {
    v17 = _OFAVAssetTranscodeCreateSession(a1, a3, a4, &v34);
    v18 = v17;
    if (!v17)
    {
      v27 = v34;
      v14 = 0;
      v13 = 0;
      goto LABEL_10;
    }

    [v17 setOutputURL:a2];
    [v18 setShouldOptimizeForNetworkUse:1];
    LOBYTE(v33) = 0;
    v29 = a1;
    [v18 exportAsynchronouslyWithCompletionHandler:&__block_literal_global_1];
    v30 = [MEMORY[0x277CBEB00] port];
    v19 = [MEMORY[0x277CBEB88] currentRunLoop];
    v28 = *MEMORY[0x277CBE640];
    [v19 addPort:v30 forMode:?];
    v20 = 0;
    v21 = 0.0;
    while (1)
    {
      v22 = [MEMORY[0x277CBEB88] currentRunLoop];
      [v22 runUntilDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.100000001)}];
      v23 = [v18 status];
      [v18 progress];
      if (v24.n128_f32[0] >= v21)
      {
        v21 = v24.n128_f32[0];
      }

      v13 = v23 == 3;
      if (a5 && !v33)
      {
        if (v23 == 3)
        {
          v24.n128_f32[0] = 1.0;
        }

        else
        {
          v24.n128_f32[0] = v21;
        }

        (*(a5 + 16))(a5, &v33, v24);
      }

      if (v23 > 2)
      {
        break;
      }

      v20 = 1;
      if (v33 == 1)
      {
        [v18 cancelExport];
        [v18 status];
        if (!v34)
        {
          v34 = [MEMORY[0x277CCA9B8] errorWithDescription:@"Transcoding was cancelled"];
        }
      }
    }

    v25 = v23 == 3;
    a1 = v29;
    if (!v25)
    {
      if ((v20 & 1) == 0)
      {
        v26 = [MEMORY[0x277CCA9B8] errorWithDescription:@"Unsupported media for preset"];
        goto LABEL_43;
      }

      if (!v34)
      {
        v26 = [v18 error];
LABEL_43:
        v34 = v26;
      }
    }

    [objc_msgSend(MEMORY[0x277CBEB88] "currentRunLoop")];
    [v30 invalidate];
    v14 = 0;
    goto LABEL_10;
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDescription:@"Destination already exists"];
LABEL_9:
  v13 = 0;
  v34 = v12;
  v14 = 1;
LABEL_10:
  [v31 drain];
  v15 = v34;
  if (a6 && v34)
  {
    *a6 = v34;
    v15 = v34;
  }

  if (v15)
  {
    if (OFLoggerLevel >= 7)
    {
      +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 7, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFAVAssetExtensions.m", 321, @"Failed to transcode %@ to %@ using preset %@: %@", a1, a2, a3, [v15 localizedDescription]);
      v15 = v34;
    }
  }

  if (!(v14 | v13))
  {
    if ([v11 fileExistsAtPath:{objc_msgSend(a2, "path")}])
    {
      v33 = 0;
      if (([v11 removeItemAtURL:a2 error:&v33] & 1) == 0 && OFLoggerLevel >= 4)
      {
        +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFAVAssetExtensions.m", 335, @"Failed to clean up destination %@: %@", a2, [v33 localizedDescription]);
      }
    }
  }

  return v13;
}

void sub_269E679F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2 == 1)
  {
    v20 = [objc_begin_catch(exception_object) reason];
    v21 = v20;
    if (v20 && [v20 length])
    {
      v22 = [@"exception: " stringByAppendingString:v21];
    }

    else
    {
      v22 = @"exception: reason unknown";
    }

    [MEMORY[0x277CCA9B8] errorWithDescription:v22];
    objc_end_catch();
    JUMPOUT(0x269E676C0);
  }

  _Unwind_Resume(exception_object);
}

NSData *OFCGImageJPEGRepresentation(uint64_t a1, CGFloat a2)
{
  v3 = [MEMORY[0x277D755B8] imageWithCGImage:a1];

  return UIImageJPEGRepresentation(v3, a2);
}

NSData *OFCGImagePNGRepresentation(uint64_t a1)
{
  v1 = [MEMORY[0x277D755B8] imageWithCGImage:a1];

  return UIImagePNGRepresentation(v1);
}

double OFCGImageSizeWithURL(const __CFURL *a1)
{
  v1 = CGImageSourceCreateWithURL(a1, 0);
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = CGImageSourceCopyPropertiesAtIndex(v1, 0, [v2 dictionaryWithObjectsAndKeys:{v3, *MEMORY[0x277CD3618], 0}]);
  if (v4)
  {
    v5 = v4;
    Value = CFDictionaryGetValue(v4, *MEMORY[0x277CD3450]);
    v7 = CFDictionaryGetValue(v5, *MEMORY[0x277CD3448]);
    CFRelease(v5);
    if (v1)
    {
      CFRelease(v1);
    }

    [Value doubleValue];
    v9 = v8;
    [v7 doubleValue];
  }

  else
  {
    if (v1)
    {
      CFRelease(v1);
    }

    return *MEMORY[0x277CBF3A8];
  }

  return v9;
}

CGImageRef OFCGImageCreateThumbnailWithURL(const __CFURL *a1, uint64_t a2, int a3)
{
  v5 = CGImageSourceCreateWithURL(a1, 0);
  v6 = MEMORY[0x277CBEAC0];
  v7 = *MEMORY[0x277CBED28];
  v8 = *MEMORY[0x277CD3578];
  v9 = *MEMORY[0x277CD3570];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v11 = *MEMORY[0x277CBED10];
  if (a3)
  {
    v11 = v7;
  }

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v5, 0, [v6 dictionaryWithObjectsAndKeys:{v7, v8, v7, v9, v10, *MEMORY[0x277CD3660], v7, *MEMORY[0x277CD3568], v11, *MEMORY[0x277CD3618], v7, @"kCGImageSourceUseHardwareAcceleration", 0}]);
  if (v5)
  {
    CFRelease(v5);
  }

  return ThumbnailAtIndex;
}

CGImageRef OFCGImageCreateThumbnailWithData(const __CFData *a1, uint64_t a2, int a3)
{
  v5 = CGImageSourceCreateWithData(a1, 0);
  v6 = MEMORY[0x277CBEAC0];
  v7 = *MEMORY[0x277CBED28];
  v8 = *MEMORY[0x277CD3578];
  v9 = *MEMORY[0x277CD3570];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v11 = *MEMORY[0x277CBED10];
  if (a3)
  {
    v11 = v7;
  }

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v5, 0, [v6 dictionaryWithObjectsAndKeys:{v7, v8, v7, v9, v10, *MEMORY[0x277CD3660], v7, *MEMORY[0x277CD3568], v11, *MEMORY[0x277CD3618], v7, @"kCGImageSourceUseHardwareAcceleration", 0}]);
  if (v5)
  {
    CFRelease(v5);
  }

  return ThumbnailAtIndex;
}

CGImageSource *OFCGImageCreateWithURL(const __CFURL *a1, int a2)
{
  if (a2)
  {
    v2 = *MEMORY[0x277CBED28];
  }

  else
  {
    v2 = *MEMORY[0x277CBED10];
  }

  result = CGImageSourceCreateWithURL(a1, [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v2, *MEMORY[0x277CD3618], *MEMORY[0x277CBED28], @"kCGImageSourceUseHardwareAcceleration", 0}]);
  if (result)
  {
    v4 = result;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(result, 0, 0);
    CFRelease(v4);
    return ImageAtIndex;
  }

  return result;
}

CGImageSource *OFCGImageCreateWithData(const __CFData *a1, int a2)
{
  if (a2)
  {
    v2 = *MEMORY[0x277CBED28];
  }

  else
  {
    v2 = *MEMORY[0x277CBED10];
  }

  result = CGImageSourceCreateWithData(a1, [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v2, *MEMORY[0x277CD3618], *MEMORY[0x277CBED28], @"kCGImageSourceUseHardwareAcceleration", 0}]);
  if (result)
  {
    v4 = result;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(result, 0, 0);
    CFRelease(v4);
    return ImageAtIndex;
  }

  return result;
}

BOOL OFCGImageSaveJPEGToURL(CGImage *a1, CFURLRef url, double a3)
{
  v5 = CGImageDestinationCreateWithURL(url, *MEMORY[0x277CC20C8], 1uLL, 0);
  v6 = MEMORY[0x277CBEAC0];
  *&v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  CGImageDestinationSetProperties(v5, [v6 dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x277CD2D48], 0}]);
  CGImageDestinationAddImage(v5, a1, 0);
  v9 = CGImageDestinationFinalize(v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return v9;
}

BOOL OFCGImageSavePNGToURL(CGImage *a1, CFURLRef url)
{
  v3 = CGImageDestinationCreateWithURL(url, *MEMORY[0x277CC2120], 1uLL, 0);
  CGImageDestinationAddImage(v3, a1, 0);
  v4 = CGImageDestinationFinalize(v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

CGImageRef OFCGImageDecompressImage(CGImage *a1, BOOL a2, CGFloat a3)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v13.width = Width;
  v13.height = Height;
  UIGraphicsBeginImageContextWithOptions(v13, a2, a3);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, 0.0, Height);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = Width;
  v14.size.height = Height;
  CGContextDrawImage(CurrentContext, v14, a1);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v10 = [(UIImage *)ImageFromCurrentImageContext CGImage];

  return CGImageRetain(v10);
}

__CFString *NSStringFromCLLocationCoordinate2D(double a1, double a2)
{
  v2 = CFStringCreateWithFormat(0, 0, @"{%g, %g}", *&a1, *&a2);

  return v2;
}

double CLLocationCoordinate2DFromString(__CFString *a1)
{
  v3[2] = *MEMORY[0x277D85DE8];
  if ([(__CFString *)a1 length]< 5 || !_ParseNumbers(a1, v3, 2))
  {
    return *MEMORY[0x277CE4278];
  }

  *&result = *&CLLocationCoordinate2DMake(v3[0], v3[1]);
  return result;
}

__CFString *NSStringFromMKCoordinateRegion(double a1, double a2, double a3, double a4)
{
  v4 = CFStringCreateWithFormat(0, 0, @"{%g, %g, %g, %g}", *&a1, *&a2, *&a3, *&a4);

  return v4;
}

double MKCoordinateRegionFromString(__CFString *a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if ([(__CFString *)a1 length]< 9 || !_ParseNumbers(a1, v3, 4))
  {
    return *MEMORY[0x277CE4278];
  }

  *&result = *&CLLocationCoordinate2DMake(v3[0], v3[1]);
  return result;
}

void sub_269E698EC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_269E69C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFStringRef NSStringFromUIColor(void *a1)
{
  v5 = 0;
  v6 = 0;
  v4 = 0;
  v3 = 0;
  v1 = [a1 getRed:&v6 green:&v5 blue:&v4 alpha:&v3];
  result = 0;
  if (v1)
  {
    return CFStringCreateWithFormat(0, 0, @"{%g, %g, %g, %g}", v6, v5, v4, v3);
  }

  return result;
}

uint64_t UIColorFromString(__CFString *a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if ([(__CFString *)a1 length]>= 9 && _ParseNumbers(a1, v3, 4))
  {
    return [MEMORY[0x277D75348] colorWithRed:v3[0] green:v3[1] blue:v3[2] alpha:v3[3]];
  }

  else
  {
    return 0;
  }
}

uint64_t _ParseBracesAndCommas(CFStringRef theString, CFIndex *a2, CFIndex *a3, CFIndex *a4, void *a5)
{
  if (!_ParseBracesAndCommas___braceCharacters)
  {
    _ParseBracesAndCommas___braceCharacters = CFCharacterSetCreateWithCharactersInString(0, @"{[,]}");
  }

  *a2 = -1;
  *a3 = -1;
  Length = CFStringGetLength(theString);
  result.location = 0;
  result.length = 0;
  if (Length >= 1)
  {
    v10 = Length;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = Length;
    while (1)
    {
      v18.location = v12;
      v18.length = v14;
      Length = CFStringFindCharacterFromSet(theString, _ParseBracesAndCommas___braceCharacters, v18, 0, &result);
      if (!Length)
      {
        break;
      }

      if (result.location >= v10 || result.length != 1)
      {
        break;
      }

      Length = CFStringGetCharacterAtIndex(theString, result.location);
      if ((Length & 0xFFFFFFDF) == 0x5B)
      {
        if (!v13)
        {
          *a2 = result.location;
        }

        ++v13;
      }

      else if (Length == 44)
      {
        if (v13 == 1)
        {
          if (v11 < *a5)
          {
            *a4++ = result.location;
            ++v11;
          }

          v13 = 1;
        }
      }

      else if ((Length & 0xFFFFFFDF) == 0x5D && !--v13)
      {
        *a3 = result.location;
        return Length;
      }

      if (result.location + 1 < v10)
      {
        v14 += v12 + ~result.location;
        v12 = result.location + 1;
        if (v14 > 0)
        {
          continue;
        }
      }

      return Length;
    }
  }

  return Length;
}

uint64_t _ParseNumbers(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3 - 1;
  v20 = 0;
  v21[0] = a3 - 1;
  v19 = 0;
  MEMORY[0x28223BE20]();
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  _ParseBracesAndCommas(a1, &v20, &v19, v8, v21);
  v9 = v20 == -1 || v19 == -1;
  v18[1] = v18;
  if (v9)
  {
    return 0;
  }

  if (a3 < 1)
  {
    return 1;
  }

  v11 = 0;
  do
  {
    v12 = (v8 - 8);
    if (!v11)
    {
      v12 = &v20;
    }

    v13 = *v12;
    if (v6 <= v11)
    {
      v14 = &v19;
    }

    else
    {
      v14 = v8;
    }

    v15.length = *v14 + ~v13;
    v10 = v15.length > 0;
    if (v15.length < 1)
    {
      break;
    }

    v15.location = v13 + 1;
    v16 = CFStringCreateWithSubstring(0, a1, v15);
    *(a2 + 8 * v11) = CFStringGetDoubleValue(v16);
    CFRelease(v16);
    ++v11;
    v8 += 8;
  }

  while (a3 != v11);
  return v10;
}

void _OFReachabilityCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

void sub_269E74894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269E75A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_269E75F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x2821DE308](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGSize CGSizeFromString(NSString *string)
{
  MEMORY[0x2821DE310](string);
  result.height = v2;
  result.width = v1;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202960](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}