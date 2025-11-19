@interface PXFeedbackTapToRadarUtilities
+ (NSString)defaultDescription;
+ (NSString)defaultTitlePrefix;
+ (id)_tempDirectoryURL;
+ (id)alertControllerWithInternalReleaseAgreementAndCompletion:(id)a3;
+ (id)alertControllerWithPrivacyTitle:(id)a3 message:(id)a4 completion:(id)a5;
+ (id)attachmentURLForDiagnosticDictionaries:(id)a3 descriptionName:(id)a4;
+ (id)captureScreenshot;
+ (id)cloneAsset:(id)a3 resourceType:(int64_t)a4 toDirectory:(id)a5;
+ (id)detailedDebugDescriptionFileForAsset:(id)a3;
+ (id)imageFileURLForAsset:(id)a3;
+ (id)thumbnailFileURLForAsset:(id)a3;
+ (void)fileRadarWithTitle:(id)a3 description:(id)a4 classification:(id)a5 componentID:(id)a6 componentName:(id)a7 componentVersion:(id)a8 keyword:(id)a9 attachmentURLs:(id)a10 includeSysDiagnose:(BOOL)a11 completionHandler:(id)a12;
+ (void)fileRadarWithTitle:(id)a3 description:(id)a4 classification:(id)a5 componentID:(id)a6 componentName:(id)a7 componentVersion:(id)a8 keyword:(id)a9 screenshotURLs:(id)a10 attachmentURLs:(id)a11 includeSysDiagnose:(BOOL)a12 includeInternalRelease:(BOOL)a13 additionalExtensionIdentifiers:(id)a14 completionHandler:(id)a15;
+ (void)presentTermsAndConditionsForUIViewController:(id)a3 completion:(id)a4;
@end

@implementation PXFeedbackTapToRadarUtilities

+ (id)cloneAsset:(id)a3 resourceType:(int64_t)a4 toDirectory:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = [MEMORY[0x1E69786D8] assetResourcesForAsset:v7];
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v10)
  {
    v11 = *v45;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        if ([v13 type] == a4)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__162175;
  v42 = __Block_byref_object_dispose__162176;
  v43 = 0;
  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = [MEMORY[0x1E696AFB0] UUID];
    v17 = [v16 UUIDString];
    v18 = [v14 originalFilename];
    v19 = [v18 pathExtension];
    v20 = [v17 stringByAppendingPathExtension:v19];

    v21 = [v8 URLByAppendingPathComponent:v20];
    v22 = v39[5];
    v39[5] = v21;

    v23 = objc_alloc_init(MEMORY[0x1E6978708]);
    [v23 setNetworkAccessAllowed:1];
    v24 = [MEMORY[0x1E69786F0] defaultManager];
    v25 = dispatch_semaphore_create(0);
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = __Block_byref_object_copy__162175;
    v36[4] = __Block_byref_object_dispose__162176;
    v37 = 0;
    v26 = v39[5];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __69__PXFeedbackTapToRadarUtilities_cloneAsset_resourceType_toDirectory___block_invoke;
    v31[3] = &unk_1E773EDF0;
    v34 = &v38;
    v32 = v8;
    v35 = v36;
    v27 = v25;
    v33 = v27;
    [v24 writeDataForAssetResource:v14 toFile:v26 options:v23 completionHandler:v31];
    dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);

    _Block_object_dispose(v36, 8);
    objc_autoreleasePoolPop(v15);
    v28 = v39[5];
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  _Block_object_dispose(&v38, 8);

  return v29;
}

void __69__PXFeedbackTapToRadarUtilities_cloneAsset_resourceType_toDirectory___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(*(a1 + 48) + 8) + 40);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Failed to write asset data to URL: %@, error: %@", &v9, 0x16u);
    }
  }

  else
  {
    v7 = [getDEUtilsClass() copyPath:*(*(*(a1 + 48) + 8) + 40) toDestinationDir:*(a1 + 32) zipped:1];
    if (v7)
    {
      v5 = v7;
      [getDEUtilsClass() removeFile:*(*(*(a1 + 48) + 8) + 40)];
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    }

    else
    {
      v8 = PLUIGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Failed to zip the asset, attaching unzipped", &v9, 2u);
      }

      v5 = 0;
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (id)detailedDebugDescriptionFileForAsset:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    v22 = [v5 px_descriptionForAssertionMessage];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXFeedbackTapToRadarUtilities.m" lineNumber:435 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v20, v22}];
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXFeedbackTapToRadarUtilities.m" lineNumber:435 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v20}];
  }

LABEL_3:
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 uuid];
  v8 = [v6 stringWithFormat:@"Asset-Details-Debug-%@.log", v7];

  v9 = NSTemporaryDirectory();
  v10 = [v9 stringByAppendingPathComponent:v8];

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
  v12 = [v5 photoLibrary];
  v13 = [v12 photoLibrary];
  v14 = [v5 detailedDebugDescriptionInLibrary:v13];

  v23 = 0;
  LOBYTE(v13) = [v14 writeToURL:v11 atomically:1 encoding:4 error:&v23];
  v15 = v23;
  if ((v13 & 1) == 0)
  {
    v16 = PLUIGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = v11;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "Failed to save asset details debug file at path: %@, error: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_tempDirectoryURL
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];

  v4 = MEMORY[0x1E695DFF8];
  v5 = NSTemporaryDirectory();
  v6 = [v5 stringByAppendingPathComponent:@"photosradarfeedback"];
  v7 = [v6 stringByAppendingPathComponent:v3];
  v8 = [v4 fileURLWithPath:v7 isDirectory:1];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0;
  LOBYTE(v7) = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v15];
  v10 = v15;

  if (v7)
  {
    v11 = v8;
  }

  else
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 path];
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Failed to create directory at path: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (NSString)defaultDescription
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v2 appendString:@"— Summary —\n"];
  [v2 appendString:@"Recap the problem title and/or include more descriptive summary information.\n\n"];
  [v2 appendString:@"— Logging instructions —\n"];
  [v2 appendString:{@"* For UI issues, please include a screenshot and/or screen recording\n"}];
  [v2 appendString:{@"* For all other issues, verify that Photos Diagnostics are being captured for this Radar.\n\n"}];
  [v2 appendString:@"— Steps to reproduce —\n"];
  [v2 appendString:@"0. What device and what build\n"];
  [v2 appendString:@"1. Setup or prep work\n"];
  [v2 appendString:@"2. Include explicit and accurate steps to reproduce. Do not include extraneous or irrelevant steps.\n\n"];
  [v2 appendString:@"— Observed results —\n"];
  [v2 appendString:@"Describe the results you observed and how they differed from what you expected. Please also indicate the timestamp from when you encountered the issue.\n\n"];
  [v2 appendString:@"— Regression information —\n"];
  [v2 appendString:{@"Does it reproduce on a public OS release? If so, please provide the OS version.\n"}];
  [v2 appendString:{@"Does it reproduce on a previous internal build? If so, please provide the build number.\n\n\n"}];

  return v2;
}

+ (id)thumbnailFileURLForAsset:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = objc_opt_class();
    v31 = NSStringFromClass(v32);
    v33 = [v5 px_descriptionForAssertionMessage];
    [v29 handleFailureInMethod:a2 object:a1 file:@"PXFeedbackTapToRadarUtilities.m" lineNumber:356 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v31, v33}];
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    [v29 handleFailureInMethod:a2 object:a1 file:@"PXFeedbackTapToRadarUtilities.m" lineNumber:356 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v31}];
  }

LABEL_3:
  [MEMORY[0x1E69786D8] assetResourcesForAsset:v5 includeDerivatives:1];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v38 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v36 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v35 + 1) + 8 * v10);
      if ([v11 type] == 102)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v12 = [v11 privateFileURL];

    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = [v5 uuid];
    v15 = [v12 pathExtension];
    v16 = [v13 stringWithFormat:@"thumbnailAsset-%@.%@", v14, v15];

    v17 = NSTemporaryDirectory();
    v18 = [v17 stringByAppendingPathComponent:v16];

    v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18];
    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v21 = [v20 fileExistsAtPath:v18];

    if (v21)
    {
      v22 = v19;
    }

    else
    {
      v24 = [MEMORY[0x1E696AC08] defaultManager];
      v34 = 0;
      v25 = [v24 copyItemAtURL:v12 toURL:v19 error:&v34];
      v26 = v34;

      if (v25)
      {
        v22 = v19;
      }

      else
      {
        v22 = v12;
        v27 = PLUIGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v40 = v26;
          _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_ERROR, "Failed to copy asset thumbnail to new location with error: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
LABEL_11:

LABEL_15:
    v16 = PLUIGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v23 = [v5 uuid];
      *buf = 138412290;
      v40 = v23;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "Failed to find asset thumbnail for asset: %@", buf, 0xCu);
    }

    v12 = 0;
    v22 = 0;
  }

  return v22;
}

+ (id)imageFileURLForAsset:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    v23 = [v5 px_descriptionForAssertionMessage];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PXFeedbackTapToRadarUtilities.m" lineNumber:324 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v21, v23}];
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v19 handleFailureInMethod:a2 object:a1 file:@"PXFeedbackTapToRadarUtilities.m" lineNumber:324 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v21}];
  }

LABEL_3:
  v6 = NSTemporaryDirectory();
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v5 uuid];
  v9 = [v7 stringWithFormat:@"asset-%@.png", v8];
  v10 = [v6 stringByAppendingPathComponent:v9];

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
  v12 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v12 setDeliveryMode:1];
  [v12 setNetworkAccessAllowed:1];
  [v12 setSynchronous:1];
  [v12 setVersion:0];
  [v12 setResizeMode:1];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__162175;
  v30 = __Block_byref_object_dispose__162176;
  v31 = 0;
  v13 = [MEMORY[0x1E6978860] defaultManager];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __54__PXFeedbackTapToRadarUtilities_imageFileURLForAsset___block_invoke;
  v25[3] = &unk_1E77496A8;
  v25[4] = &v26;
  [v13 requestImageForAsset:v5 targetSize:0 contentMode:v12 options:v25 resultHandler:{1024.0, 1024.0}];

  v14 = v27[5];
  if (v14)
  {
    v15 = UIImagePNGRepresentation(v14);
    v16 = [v15 writeToURL:v11 atomically:1];

    if (v16)
    {
      goto LABEL_11;
    }

    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
LABEL_9:
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Failed to save asset original image", buf, 2u);
    }
  }

  else
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_11:
  _Block_object_dispose(&v26, 8);

  return v11;
}

+ (NSString)defaultTitlePrefix
{
  v2 = MGCopyAnswer();
  v3 = [v2 stringByReplacingOccurrencesOfString:@"AP" withString:&stru_1F1741150];

  v4 = MGCopyAnswer();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@: ", v3, v4];

  return v5;
}

+ (id)captureScreenshot
{
  v24 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXFeedbackTapToRadarUtilities.m" lineNumber:292 description:@"expected main thread"];
  }

  v4 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  v5 = [v4 snapshotViewAfterScreenUpdates:0];

  [v5 frame];
  v26.width = v6;
  v26.height = v7;
  UIGraphicsBeginImageContextWithOptions(v26, 1, 0.0);
  [v5 bounds];
  [v5 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v9 = UIImagePNGRepresentation(v8);
  v10 = NSTemporaryDirectory();
  v11 = [v10 stringByAppendingPathComponent:@"Photos-Tap-To-Radar-Screenshot.png"];

  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
  v19 = 0;
  v13 = [v9 writeToURL:v12 options:1 error:&v19];
  v14 = v19;
  if ((v13 & 1) == 0)
  {
    v15 = PLUIGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v12 path];
      *buf = 138412546;
      v21 = v16;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "Failed to write screenshot to file %@ with error %@", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

+ (void)presentTermsAndConditionsForUIViewController:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = [PXFeedbackTapToRadarUtilities alertControllerWithInternalReleaseAgreementAndCompletion:a4];
  [v5 presentViewController:v6 animated:1 completion:0];
}

+ (id)alertControllerWithInternalReleaseAgreementAndCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 internalReleaseAgreementTitle];
  v6 = [a1 internalReleaseAgreement];
  v7 = [a1 alertControllerWithPrivacyTitle:v5 message:v6 completion:v4];

  return v7;
}

+ (id)alertControllerWithPrivacyTitle:(id)a3 message:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PXFeedbackTapToRadarUtilities.m" lineNumber:262 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
  v13 = MEMORY[0x1E69DC648];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __84__PXFeedbackTapToRadarUtilities_alertControllerWithPrivacyTitle_message_completion___block_invoke;
  v23[3] = &unk_1E7748000;
  v14 = v11;
  v24 = v14;
  v15 = [v13 actionWithTitle:@"Agree" style:0 handler:v23];
  [v12 addAction:v15];

  v16 = MEMORY[0x1E69DC648];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__PXFeedbackTapToRadarUtilities_alertControllerWithPrivacyTitle_message_completion___block_invoke_2;
  v21[3] = &unk_1E7748000;
  v22 = v14;
  v17 = v14;
  v18 = [v16 actionWithTitle:@"Cancel" style:1 handler:v21];
  [v12 addAction:v18];

  return v12;
}

+ (void)fileRadarWithTitle:(id)a3 description:(id)a4 classification:(id)a5 componentID:(id)a6 componentName:(id)a7 componentVersion:(id)a8 keyword:(id)a9 screenshotURLs:(id)a10 attachmentURLs:(id)a11 includeSysDiagnose:(BOOL)a12 includeInternalRelease:(BOOL)a13 additionalExtensionIdentifiers:(id)a14 completionHandler:(id)a15
{
  v76 = *MEMORY[0x1E69E9840];
  v59 = a3;
  v20 = a4;
  v57 = a5;
  v21 = a6;
  v58 = a7;
  v56 = a8;
  v22 = a9;
  v55 = a10;
  v23 = a11;
  v54 = a14;
  v53 = a15;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v73 = v58;
    v74 = 2112;
    v75 = v59;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Tap-to-Radar initiated for component: %@, title: %@", buf, 0x16u);
  }

  v24 = [objc_opt_class() _tempDirectoryURL];
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v23;
  v25 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v67;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v67 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = [getDEUtilsClass() copyPath:*(*(&v66 + 1) + 8 * i) toDestinationDir:v24 zipped:0];
        v30 = [v29 path];
        if (v30)
        {
          [v61 addObject:v30];
        }
      }

      v26 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v26);
  }

  v31 = [v61 componentsJoinedByString:{@", "}];
  v32 = v20;
  v33 = v32;
  if (a13)
  {
    v33 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v32];
    v34 = [objc_opt_class() internalReleaseAgreement];
    [v33 appendFormat:@"\n\n— Photos Release Agreement —\n%@", v34];
  }

  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v35 setObject:v59 forKeyedSubscript:@"Title"];
  [v35 setObject:v57 forKeyedSubscript:@"Classification"];
  [v35 setObject:@"Not Applicable" forKeyedSubscript:@"Reproducibility"];
  if (!a12)
  {
    [v35 setObject:@"0" forKeyedSubscript:@"AutoDiagnostics"];
  }

  [v35 setObject:v21 forKeyedSubscript:@"ComponentID"];
  [v35 setObject:v58 forKeyedSubscript:@"ComponentName"];
  [v35 setObject:v56 forKeyedSubscript:@"ComponentVersion"];
  [v35 setObject:v33 forKeyedSubscript:@"Description"];
  if ([v31 length])
  {
    [v35 setObject:v31 forKeyedSubscript:@"Attachments"];
  }

  if (v22)
  {
    [v35 setObject:v22 forKeyedSubscript:@"Keywords"];
  }

  if ([v54 count])
  {
    v36 = [v54 componentsJoinedByString:{@", "}];
    [v35 setObject:v36 forKeyedSubscript:@"ExtensionIdentifiers"];
  }

  if ([v55 count])
  {
    v37 = [v55 valueForKey:@"path"];
    v38 = [v37 componentsJoinedByString:{@", "}];
    [v35 setObject:v38 forKeyedSubscript:@"Screenshot"];
  }

  v52 = [MEMORY[0x1E696AF20] componentsWithString:@"tap-to-radar://new"];
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v40 = v35;
  v41 = [v40 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v63;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v63 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v62 + 1) + 8 * j);
        v46 = MEMORY[0x1E696AF60];
        v47 = [v40 objectForKeyedSubscript:v45];
        v48 = [v46 queryItemWithName:v45 value:v47];
        [v39 addObject:v48];
      }

      v42 = [v40 countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v42);
  }

  [v52 setQueryItems:v39];
  v49 = [v52 URL];
  v50 = v53;
  v51 = v49;
  px_dispatch_on_main_queue();
}

void __251__PXFeedbackTapToRadarUtilities_fileRadarWithTitle_description_classification_componentID_componentName_componentVersion_keyword_screenshotURLs_attachmentURLs_includeSysDiagnose_includeInternalRelease_additionalExtensionIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 openURL:*(a1 + 32) options:MEMORY[0x1E695E0F8] completionHandler:*(a1 + 40)];
}

+ (void)fileRadarWithTitle:(id)a3 description:(id)a4 classification:(id)a5 componentID:(id)a6 componentName:(id)a7 componentVersion:(id)a8 keyword:(id)a9 attachmentURLs:(id)a10 includeSysDiagnose:(BOOL)a11 completionHandler:(id)a12
{
  BYTE1(v12) = 1;
  LOBYTE(v12) = a11;
  [a1 fileRadarWithTitle:a3 description:a4 classification:a5 componentID:a6 componentName:a7 componentVersion:a8 keyword:a9 screenshotURLs:0 attachmentURLs:a10 includeSysDiagnose:v12 includeInternalRelease:0 additionalExtensionIdentifiers:a12 completionHandler:?];
}

+ (id)attachmentURLForDiagnosticDictionaries:(id)a3 descriptionName:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![v7 count])
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"PXFeedbackTapToRadarUtilities.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"diagnosticDictionaries.count > 0"}];
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-Summary.txt", v8];
  v10 = NSTemporaryDirectory();
  v11 = [v10 stringByAppendingPathComponent:v9];

  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
  v13 = [MEMORY[0x1E696AD60] string];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = PLPrettyPrintPList();
        if (v19)
        {
          [v13 appendString:v19];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }

  v27 = 0;
  v20 = [v13 writeToURL:v12 atomically:1 encoding:4 error:&v27];
  v21 = v27;
  v22 = v12;
  if ((v20 & 1) == 0)
  {
    v23 = PLUIGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = v8;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_ERROR, "%@ failed to save tap-to-radar info, error: %@", buf, 0x16u);
    }

    v22 = 0;
  }

  v24 = v22;

  return v22;
}

@end