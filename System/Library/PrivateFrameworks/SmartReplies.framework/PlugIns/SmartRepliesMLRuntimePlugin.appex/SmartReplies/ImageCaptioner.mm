@interface ImageCaptioner
+ (id)_memeStringForTag:(id)tag;
+ (id)_metricsClientIdentifier;
- (BOOL)imageContainsPotentiallyUnsafeContent:(CGImage *)content;
- (CVNLPCaptionHandler)_createCaptionHandlerIfNeeded;
- (ImageCaptioner)init;
- (id)CVNLPCaptionForImage:(CGImage *)image modelURL:(id)l minimumConfidenceForCVNLPCaption:(double)caption;
- (id)_foodRecognitionRequest;
- (id)_newJunkRequest;
- (id)_newMemeRequest;
- (id)_newSceneNetV5Request;
- (id)topMemeCaptionForImage:(CGImage *)image;
@end

@implementation ImageCaptioner

- (id)_newJunkRequest
{
  v2 = objc_alloc_init(VNClassifyJunkImageRequest);
  v8 = 0;
  v3 = [v2 setRevision:3737841669 error:&v8];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Failed";
    if (v3)
    {
      v4 = @"Succeeded";
    }

    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ to set revision for meme identification", buf, 0xCu);
  }

  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6;
}

- (id)_newMemeRequest
{
  v2 = objc_alloc_init(VNClassifyMemeImageRequest);
  v8 = 0;
  v3 = [v2 setRevision:3 error:&v8];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Failed";
    if (v3)
    {
      v4 = @"Succeeded";
    }

    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ to set revision for meme identification", buf, 0xCu);
  }

  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6;
}

- (id)_foodRecognitionRequest
{
  v2 = objc_alloc_init(VNRecognizeFoodAndDrinkRequest);
  v8 = 0;
  v3 = [v2 setRevision:3737841664 error:&v8];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Failed";
    if (v3)
    {
      v4 = @"Succeeded";
    }

    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ to set revision for food recognition", buf, 0xCu);
  }

  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_newSceneNetV5Request
{
  v2 = objc_alloc_init(VNClassifyImageRequest);
  v8 = 0;
  v3 = [v2 setRevision:2 error:&v8];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Failed";
    if (v3)
    {
      v4 = @"Succeeded";
    }

    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ to set revision for image tagging", buf, 0xCu);
  }

  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6;
}

- (CVNLPCaptionHandler)_createCaptionHandlerIfNeeded
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Creating a captioner handler, if necessary", buf, 2u);
  }

  captionHandlerRef = self->_captionHandlerRef;
  if (!captionHandlerRef)
  {
    if (self->_modelURL)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      [v4 setObject:CVNLPCaptionModelTransformer forKeyedSubscript:CVNLPCaptionModelType];
      [v4 setObject:self->_modelURL forKeyedSubscript:CVNLPCaptionModelPath];
      [v4 setObject:&off_100014610 forKeyedSubscript:CVNLPBeamSearchSize];
      [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:CVNLPCaptionEnableGenderedCaptions];
      v5 = CVNLPCaptionHandlerCreate();
      self->_captionHandlerRef = v5;
      captionHandlerRef = v5;
    }

    else
    {
      return 0;
    }
  }

  return captionHandlerRef;
}

- (id)CVNLPCaptionForImage:(CGImage *)image modelURL:(id)l minimumConfidenceForCVNLPCaption:(double)caption
{
  lCopy = l;
  objc_storeStrong(&self->_modelURL, l);
  captionHandlerRef = self->_captionHandlerRef;
  if (!captionHandlerRef)
  {
    captionHandlerRef = [(ImageCaptioner *)self _createCaptionHandlerIfNeeded];
    self->_captionHandlerRef = captionHandlerRef;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Trying to compute caption for an image", buf, 2u);
    captionHandlerRef = self->_captionHandlerRef;
  }

  if (captionHandlerRef)
  {
    v10 = CVNLPCaptionCopyForImage();
    v11 = v10;
    v15 = [v10 objectForKeyedSubscript:@"CVNLPCaptions"];
    firstObject = [v15 firstObject];
    v17 = [firstObject objectForKeyedSubscript:@"CVNLPGeneratedCaption"];

    firstObject2 = [v15 firstObject];
    v19 = [firstObject2 objectForKeyedSubscript:@"CVNLPGeneratedCaptionScore"];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Found a caption for the image via CVNLP with confidence: %@", buf, 0xCu);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v27 = v17;
      v28 = 2112;
      captionCopy2 = *&v19;
      v30 = 2048;
      captionCopy = caption;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "--- “%@”, confidence: %@, threshold: %f", buf, 0x20u);
    }

    [v19 doubleValue];
    if (v20 >= caption)
    {
      metricsLogger = self->_metricsLogger;
      _metricsClientIdentifier = [objc_opt_class() _metricsClientIdentifier];
      [v19 floatValue];
      [(MetricsLogger *)metricsLogger recordImageCaptioningResultWithClientIdentifier:_metricsClientIdentifier success:1 failureType:0 confidence:?];

      v14 = v17;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = v19;
        v28 = 2048;
        captionCopy2 = caption;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Image caption not returned since confidence %@ < threshold %f", buf, 0x16u);
      }

      v21 = self->_metricsLogger;
      _metricsClientIdentifier2 = [objc_opt_class() _metricsClientIdentifier];
      [v19 floatValue];
      [(MetricsLogger *)v21 recordImageCaptioningResultWithClientIdentifier:_metricsClientIdentifier2 success:0 failureType:4 confidence:?];

      v14 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not create a caption handler. There might not be an available asset. Bailing from captioning.", buf, 2u);
    }

    v12 = self->_metricsLogger;
    _metricsClientIdentifier3 = [objc_opt_class() _metricsClientIdentifier];
    [(MetricsLogger *)v12 recordImageCaptioningResultWithClientIdentifier:_metricsClientIdentifier3 success:0 failureType:1 confidence:0.0];

    v14 = 0;
  }

  return v14;
}

- (BOOL)imageContainsPotentiallyUnsafeContent:(CGImage *)content
{
  v92 = SCMLUseAnyAvailableDevice;
  v93 = &off_1000145F8;
  v5 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
  v6 = [[SCMLHandler alloc] initWithOptions:v5 error:0];
  v82 = 0;
  v7 = [v6 classifyImage:content error:&v82];
  v8 = COERCE_DOUBLE(v82);
  if (v8 != 0.0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v85 = v8;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error calling into SCML: %@", buf, 0xCu);
  }

  if (v7 == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "This image is sensitive per SCML. Don't caption this image.", buf, 2u);
    }

    metricsLogger = self->_metricsLogger;
    _metricsClientIdentifier = [objc_opt_class() _metricsClientIdentifier];
    [(MetricsLogger *)metricsLogger recordImageCaptioningResultWithClientIdentifier:_metricsClientIdentifier success:0 failureType:3 confidence:0.0];
    v11 = 1;
  }

  else
  {
    v68 = v8;
    v69 = v6;
    v70 = v5;
    v12 = objc_alloc_init(VN6Mb1ME89lyW3HpahkEygIG);
    [v12 setRevision:2];
    v13 = objc_alloc_init(VNVYvzEtX1JlUdu8xx5qhDI);
    selfCopy = self;
    _newJunkRequest = [(ImageCaptioner *)self _newJunkRequest];
    v15 = [[VNImageRequestHandler alloc] initWithCGImage:content orientation:1 options:&__NSDictionary0__struct];
    v91[0] = v12;
    v91[1] = v13;
    v71 = _newJunkRequest;
    v91[2] = _newJunkRequest;
    v16 = [NSArray arrayWithObjects:v91 count:3];
    v65 = v15;
    [v15 performRequests:v16 error:0];

    v17 = +[NSMutableArray array];
    v67 = v12;
    results = [v12 results];
    [v17 addObjectsFromArray:results];

    v66 = v13;
    results2 = [v13 results];
    [v17 addObjectsFromArray:results2];

    v89[0] = VN3FNQUJVIs2puI1uPc9mxh7;
    LODWORD(v20) = 1018444120;
    obja = [NSNumber numberWithFloat:v20];
    v90[0] = obja;
    v89[1] = VNSY8t4EoTztuqIL02g8uVA0;
    LODWORD(v21) = 1036831949;
    v22 = [NSNumber numberWithFloat:v21];
    v90[1] = v22;
    v89[2] = VN4QuphG8kE4qDaDycivBkX5;
    LODWORD(v23) = 1035489772;
    v24 = [NSNumber numberWithFloat:v23];
    v90[2] = v24;
    v89[3] = VN7gQUejje8mmnE9GSTsVBVV;
    LODWORD(v25) = 1032805417;
    v26 = [NSNumber numberWithFloat:v25];
    v90[3] = v26;
    v89[4] = VNa9xpOJNvRoaW9plFGZ9Eo0;
    LODWORD(v27) = 1034147594;
    v28 = [NSNumber numberWithFloat:v27];
    v90[4] = v28;
    v89[5] = VN2vIWnsZbk4Su55oeWfKDq1;
    LODWORD(v29) = 1034147594;
    v30 = [NSNumber numberWithFloat:v29];
    v90[5] = v30;
    v89[6] = VNmNJnu0xlW8CZXt6hJ7Rpb0;
    LODWORD(v31) = 1041865114;
    v32 = [NSNumber numberWithFloat:v31];
    v90[6] = v32;
    v89[7] = VN35FOB1QhtSfYGRIJvTgtTq;
    LODWORD(v33) = 1041865114;
    v34 = [NSNumber numberWithFloat:v33];
    v90[7] = v34;
    v89[8] = VN81aedeb999c79d74e79af7f1c922cf97;
    LODWORD(v35) = 1032805417;
    v36 = [NSNumber numberWithFloat:v35];
    v90[8] = v36;
    v37 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:9];

    allKeys = [v37 allKeys];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v39 = v17;
    v40 = [v39 countByEnumeratingWithState:&v78 objects:v88 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v79;
      while (2)
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v79 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v78 + 1) + 8 * i);
          identifier = [v44 identifier];
          [v44 confidence];
          v47 = v46;
          v48 = [v37 objectForKeyedSubscript:identifier];
          [v48 floatValue];
          v50 = v49;

          if ([allKeys containsObject:identifier])
          {
            v51 = v47 <= v50;
          }

          else
          {
            v51 = 1;
          }

          if (!v51)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v85 = v47;
              v86 = 2048;
              v87 = v50;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "This image looks unsafe with confidence %f/%f. Don't caption this image.", buf, 0x16u);
            }

            v60 = 3;
            obj = v39;
LABEL_35:
            v61 = selfCopy->_metricsLogger;
            _metricsClientIdentifier2 = [objc_opt_class() _metricsClientIdentifier];
            [(MetricsLogger *)v61 recordImageCaptioningResultWithClientIdentifier:_metricsClientIdentifier2 success:0 failureType:v60 confidence:0.0];

            v11 = 1;
            goto LABEL_36;
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v78 objects:v88 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = [v71 results];
    v52 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v75;
      while (2)
      {
        for (j = 0; j != v53; j = j + 1)
        {
          if (*v75 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v56 = *(*(&v74 + 1) + 8 * j);
          identifier = [v56 identifier];
          [v56 confidence];
          v58 = v57;
          if ([&off_100014650 containsObject:identifier] && v58 > 0.2)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v85 = v58;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "This image looks to be of low quality (confidence: %f). Don't caption this image.", buf, 0xCu);
            }

            v60 = 5;
            goto LABEL_35;
          }

          if ([&off_100014668 containsObject:identifier] && v58 > 0.15)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "The junk filter has determined that this image might be sensitive. Don't caption this image.", buf, 2u);
            }

            v60 = 3;
            goto LABEL_35;
          }
        }

        v53 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
        if (v53)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_36:

    v6 = v69;
    v5 = v70;
    _metricsClientIdentifier = v67;
    v8 = v68;
  }

  return v11;
}

- (id)topMemeCaptionForImage:(CGImage *)image
{
  _newMemeRequest = [(ImageCaptioner *)self _newMemeRequest];
  selfCopy = self;
  _newJunkRequest = [(ImageCaptioner *)self _newJunkRequest];
  v7 = [[VNImageRequestHandler alloc] initWithCGImage:image orientation:1 options:&__NSDictionary0__struct];
  v58[0] = _newMemeRequest;
  v58[1] = _newJunkRequest;
  v8 = [NSArray arrayWithObjects:v58 count:2];
  v38 = v7;
  [v7 performRequests:v8 error:0];

  v40 = _newMemeRequest;
  results = [_newMemeRequest results];
  v39 = _newJunkRequest;
  results2 = [_newJunkRequest results];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = results;
  v10 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v48;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v47 + 1) + 8 * i);
        identifier = [v14 identifier];
        if (identifier)
        {
          identifier2 = identifier;
          [v14 confidence];
          v18 = v17;
          v56[0] = @"document_receipt";
          v56[1] = @"document_boarding_pass";
          v56[2] = @"document_office_badge";
          v56[3] = @"document_passport";
          v56[4] = @"document_driving_license";
          v56[5] = @"curation_meme";
          v19 = [NSArray arrayWithObjects:v56 count:6];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v52 = identifier2;
            _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Observed a meme tag: %@", buf, 0xCu);
          }

          if (v18 > 0.99 && ([v19 containsObject:identifier2] & 1) != 0)
          {
            v29 = [objc_opt_class() _memeStringForTag:identifier2];
            metricsLogger = selfCopy->_metricsLogger;
            _metricsClientIdentifier = [objc_opt_class() _metricsClientIdentifier];
            *&v32 = v18;
            [(MetricsLogger *)metricsLogger recordImageCaptioningResultWithClientIdentifier:_metricsClientIdentifier success:1 failureType:0 confidence:v32];

            v20 = obj;
            v24 = _newMemeRequest;
LABEL_28:

            goto LABEL_29;
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = results2;
  v21 = [v20 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v44;
    v24 = v40;
    while (2)
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v43 + 1) + 8 * j);
        identifier2 = [v26 identifier];
        [v26 confidence];
        v28 = v27;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v52 = identifier2;
          v53 = 2048;
          v54 = v28;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Observed a junk model tag: %@ with confidence: %f", buf, 0x16u);
        }

        if ([identifier2 isEqualToString:@"screenshot"] && v28 > 0.95)
        {
          v33 = selfCopy->_metricsLogger;
          _metricsClientIdentifier2 = [objc_opt_class() _metricsClientIdentifier];
          *&v35 = v28;
          [(MetricsLogger *)v33 recordImageCaptioningResultWithClientIdentifier:_metricsClientIdentifier2 success:1 failureType:0 confidence:v35];

          v19 = +[NSBundle mainBundle];
          v29 = [v19 localizedStringForKey:@"SCREENSHOT" value:&stru_1000141C0 table:0];
          goto LABEL_28;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v43 objects:v55 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }

    v29 = 0;
  }

  else
  {
    v29 = 0;
    v24 = _newMemeRequest;
  }

LABEL_29:

  return v29;
}

- (ImageCaptioner)init
{
  v7.receiver = self;
  v7.super_class = ImageCaptioner;
  v2 = [(ImageCaptioner *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MetricsLogger);
    metricsLogger = v2->_metricsLogger;
    v2->_metricsLogger = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)_memeStringForTag:(id)tag
{
  tagCopy = tag;
  v4 = +[NSBundle mainBundle];
  if ([tagCopy isEqualToString:@"document_receipt"])
  {
    v5 = @"RECEIPT";
LABEL_13:
    v6 = [v4 localizedStringForKey:v5 value:&stru_1000141C0 table:0];
    goto LABEL_14;
  }

  if ([tagCopy isEqualToString:@"document_boarding_pass"])
  {
    v5 = @"BOARDING_PASS";
    goto LABEL_13;
  }

  if ([tagCopy isEqualToString:@"document_office_badge"])
  {
    v5 = @"OFFICE_BADGE";
    goto LABEL_13;
  }

  if ([tagCopy isEqualToString:@"document_passport"])
  {
    v5 = @"PASSPORT";
    goto LABEL_13;
  }

  if ([tagCopy isEqualToString:@"document_driving_license"])
  {
    v5 = @"DRIVERS_LICENSE";
    goto LABEL_13;
  }

  if ([tagCopy isEqualToString:@"curation_meme"])
  {
    v5 = @"MEME";
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)_metricsClientIdentifier
{
  v2 = +[NSBundle mainBundle];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

@end