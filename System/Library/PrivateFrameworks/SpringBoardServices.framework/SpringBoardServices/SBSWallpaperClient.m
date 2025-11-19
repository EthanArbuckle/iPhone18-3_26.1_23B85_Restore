@interface SBSWallpaperClient
- (BOOL)setWallpaperColor:(id)a3 darkColor:(id)a4 forVariants:(unint64_t)a5;
- (BOOL)setWallpaperColorName:(id)a3 forVariants:(unint64_t)a4;
- (BOOL)setWallpaperGradient:(id)a3 forVariants:(unint64_t)a4;
- (BOOL)setWallpaperWithVideoWithWallpaperMode:(id)a3 cropRect:(CGRect)a4 wallpaperMode:(unsigned __int8)a5;
- (SBSWallpaperClient)initWithCalloutQueue:(id)a3;
- (unint64_t)posterSignificantEventsCounter;
- (unint64_t)significantEventsCounterForPosterWithIdentifier:(id)a3;
- (void)_fetchLockScreenBoundsCheckOfType:(int64_t)a3 orientation:(unsigned int)a4 completionHandler:(id)a5;
- (void)fetchAdaptiveTimeBoundsForContext:(id)a3 timeHeight:(double)a4 completionHandler:(id)a5;
- (void)fetchAdaptiveTimeHeightLimitsForContext:(id)a3 completionHandler:(id)a4;
- (void)fetchContentCutoutBoundsForVariant:(unsigned int)a3 orientation:(unsigned int)a4 completionHandler:(id)a5;
- (void)fetchOriginalImageForVariant:(unsigned int)a3 completionHandler:(id)a4;
- (void)fetchOriginalVideoURLForVariant:(unsigned int)a3 completionHandler:(id)a4;
- (void)fetchPosterSignificantEventsCounterWithCompletionHandler:(id)a3;
- (void)fetchThumbnailForVariant:(unsigned int)a3 completionHandler:(id)a4;
- (void)handleQuickActionConfigurationRequest:(id)a3 completionHandler:(id)a4;
- (void)restoreDefaultWallpaperWithCompletion:(id)a3;
- (void)triggerPosterSignificantEventWithCompletion:(id)a3;
@end

@implementation SBSWallpaperClient

- (SBSWallpaperClient)initWithCalloutQueue:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__SBSWallpaperClient_initWithCalloutQueue___block_invoke;
  v9[3] = &unk_1E735FD40;
  v10 = v4;
  v8.receiver = self;
  v8.super_class = SBSWallpaperClient;
  v5 = v4;
  v6 = [(FBSServiceFacilityClient *)&v8 initWithConfigurator:v9];

  return v6;
}

void __43__SBSWallpaperClient_initWithCalloutQueue___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x1E699FC70] defaultShellEndpoint];
  [v5 setEndpoint:v3];

  [v5 setIdentifier:@"com.apple.springboardservices.wallpaper"];
  v4 = [MEMORY[0x1E698F500] userInitiated];
  [v5 setServiceQuality:v4];

  if (*(a1 + 32))
  {
    [v5 setCalloutQueue:?];
  }
}

- (void)handleQuickActionConfigurationRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = MEMORY[0x1E699FCF8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__SBSWallpaperClient_handleQuickActionConfigurationRequest_completionHandler___block_invoke;
    v13[3] = &unk_1E735FD68;
    v14 = v6;
    v9 = v7;
    v15 = v9;
    v10 = [v8 messageWithPacker:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__SBSWallpaperClient_handleQuickActionConfigurationRequest_completionHandler___block_invoke_2;
    v11[3] = &unk_1E735FD90;
    v12 = v9;
    [(FBSServiceFacilityClient *)self sendMessage:v10 withType:18 replyHandler:v11 waitForReply:1 timeout:0.0];
  }
}

void __78__SBSWallpaperClient_handleQuickActionConfigurationRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v7];
  v6 = v7;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    xpc_dictionary_set_data(v3, "quickActionConfigurationRequest", [v5 bytes], objc_msgSend(v5, "length"));
  }
}

void __78__SBSWallpaperClient_handleQuickActionConfigurationRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 payload];
  v4 = v3;
  if (v3 && MEMORY[0x193AFFE60](v3) == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(v4, "quickActionConfigurationErrorResponse");
    if (string)
    {
      v6 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A578];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      v11[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v9 = [v6 errorWithDomain:@"SBSWallpaperServiceErrorDomain" code:0 userInfo:v8];
    }

    else
    {
      v9 = 0;
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)fetchThumbnailForVariant:(unsigned int)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__SBSWallpaperClient_fetchThumbnailForVariant_completionHandler___block_invoke;
    v10[3] = &__block_descriptor_36_e33_v16__0__NSObject_OS_xpc_object__8l;
    v11 = a3;
    v7 = [MEMORY[0x1E699FCF8] messageWithPacker:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__SBSWallpaperClient_fetchThumbnailForVariant_completionHandler___block_invoke_2;
    v8[3] = &unk_1E735FD90;
    v9 = v6;
    [(FBSServiceFacilityClient *)self sendMessage:v7 withType:0 replyHandler:v8 waitForReply:0 timeout:0.0];
  }
}

void __65__SBSWallpaperClient_fetchThumbnailForVariant_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = [a2 payload];
  if (xdict && MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80])
  {
    v4 = xpc_dictionary_get_value(xdict, "imageData");
    v5 = v4;
    if (v4 && MEMORY[0x193AFFE60](v4) == MEMORY[0x1E69E9E70])
    {
      v6 = MEMORY[0x1E695DEF0];
      bytes_ptr = xpc_data_get_bytes_ptr(v5);
      v3 = [v6 dataWithBytes:bytes_ptr length:xpc_data_get_length(v5)];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchOriginalImageForVariant:(unsigned int)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__SBSWallpaperClient_fetchOriginalImageForVariant_completionHandler___block_invoke;
    v10[3] = &__block_descriptor_36_e33_v16__0__NSObject_OS_xpc_object__8l;
    v11 = a3;
    v7 = [MEMORY[0x1E699FCF8] messageWithPacker:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__SBSWallpaperClient_fetchOriginalImageForVariant_completionHandler___block_invoke_2;
    v8[3] = &unk_1E735FD90;
    v9 = v6;
    [(FBSServiceFacilityClient *)self sendMessage:v7 withType:1 replyHandler:v8 waitForReply:0 timeout:0.0];
  }
}

void __69__SBSWallpaperClient_fetchOriginalImageForVariant_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = [a2 payload];
  if (xdict && MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80])
  {
    v4 = xpc_dictionary_get_value(xdict, "imageData");
    v5 = v4;
    if (v4 && MEMORY[0x193AFFE60](v4) == MEMORY[0x1E69E9E70])
    {
      v6 = MEMORY[0x1E695DEF0];
      bytes_ptr = xpc_data_get_bytes_ptr(v5);
      v3 = [v6 dataWithBytes:bytes_ptr length:xpc_data_get_length(v5)];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchOriginalVideoURLForVariant:(unsigned int)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__SBSWallpaperClient_fetchOriginalVideoURLForVariant_completionHandler___block_invoke;
    v10[3] = &__block_descriptor_36_e33_v16__0__NSObject_OS_xpc_object__8l;
    v11 = a3;
    v7 = [MEMORY[0x1E699FCF8] messageWithPacker:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__SBSWallpaperClient_fetchOriginalVideoURLForVariant_completionHandler___block_invoke_2;
    v8[3] = &unk_1E735FD90;
    v9 = v6;
    [(FBSServiceFacilityClient *)self sendMessage:v7 withType:2 replyHandler:v8 waitForReply:0 timeout:0.0];
  }
}

void __72__SBSWallpaperClient_fetchOriginalVideoURLForVariant_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = [a2 payload];
  if (xdict && MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80])
  {
    v4 = xpc_dictionary_get_value(xdict, "videoURL");
    v5 = v4;
    if (v4 && MEMORY[0x193AFFE60](v4) == MEMORY[0x1E69E9E70])
    {
      v6 = MEMORY[0x1E695DEF0];
      bytes_ptr = xpc_data_get_bytes_ptr(v5);
      v3 = [v6 dataWithBytes:bytes_ptr length:xpc_data_get_length(v5)];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = [MEMORY[0x1E695DFF8] URLWithDataRepresentation:v3 relativeToURL:0];
  (*(*(a1 + 32) + 16))();
}

- (void)fetchContentCutoutBoundsForVariant:(unsigned int)a3 orientation:(unsigned int)a4 completionHandler:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87__SBSWallpaperClient_fetchContentCutoutBoundsForVariant_orientation_completionHandler___block_invoke;
    v12[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
    v13 = a3;
    v14 = a4;
    v9 = [MEMORY[0x1E699FCF8] messageWithPacker:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__SBSWallpaperClient_fetchContentCutoutBoundsForVariant_orientation_completionHandler___block_invoke_2;
    v10[3] = &unk_1E735FD90;
    v11 = v8;
    [(FBSServiceFacilityClient *)self sendMessage:v9 withType:3 replyHandler:v10 waitForReply:0 timeout:0.0];
  }
}

void __87__SBSWallpaperClient_fetchContentCutoutBoundsForVariant_orientation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  xdict = a2;
  xpc_dictionary_set_uint64(xdict, "variant", v3);
  xpc_dictionary_set_uint64(xdict, "orientation", *(a1 + 36));
}

void __87__SBSWallpaperClient_fetchContentCutoutBoundsForVariant_orientation_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    v5 = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = v5;
    if (v4)
    {
      BSDeserializeCGRectFromXPCDictionaryWithKey();
      (*(*(a1 + 32) + 16))();
      v3 = v5;
    }
  }
}

- (void)_fetchLockScreenBoundsCheckOfType:(int64_t)a3 orientation:(unsigned int)a4 completionHandler:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__SBSWallpaperClient__fetchLockScreenBoundsCheckOfType_orientation_completionHandler___block_invoke;
    v12[3] = &__block_descriptor_36_e33_v16__0__NSObject_OS_xpc_object__8l;
    v13 = a4;
    v9 = [MEMORY[0x1E699FCF8] messageWithPacker:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __86__SBSWallpaperClient__fetchLockScreenBoundsCheckOfType_orientation_completionHandler___block_invoke_2;
    v10[3] = &unk_1E735FD90;
    v11 = v8;
    [(FBSServiceFacilityClient *)self sendMessage:v9 withType:a3 replyHandler:v10 waitForReply:0 timeout:0.0];
  }
}

void __86__SBSWallpaperClient__fetchLockScreenBoundsCheckOfType_orientation_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    v5 = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = v5;
    if (v4)
    {
      BSDeserializeCGRectFromXPCDictionaryWithKey();
      (*(*(a1 + 32) + 16))();
      v3 = v5;
    }
  }
}

- (void)fetchAdaptiveTimeHeightLimitsForContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = MEMORY[0x1E699FCF8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__SBSWallpaperClient_fetchAdaptiveTimeHeightLimitsForContext_completionHandler___block_invoke;
    v12[3] = &unk_1E735FDF8;
    v13 = v6;
    v9 = [v8 messageWithPacker:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__SBSWallpaperClient_fetchAdaptiveTimeHeightLimitsForContext_completionHandler___block_invoke_2;
    v10[3] = &unk_1E735FD90;
    v11 = v7;
    [(FBSServiceFacilityClient *)self sendMessage:v9 withType:19 replyHandler:v10 waitForReply:0 timeout:0.0];
  }
}

void __80__SBSWallpaperClient_fetchAdaptiveTimeHeightLimitsForContext_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    v8 = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = v8;
    if (v4)
    {
      BSDeserializeDoubleFromXPCDictionaryWithKey();
      v6 = v5;
      BSDeserializeDoubleFromXPCDictionaryWithKey();
      (*(*(a1 + 32) + 16))(v6, v7);
      v3 = v8;
    }
  }
}

- (void)fetchAdaptiveTimeBoundsForContext:(id)a3 timeHeight:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = MEMORY[0x1E699FCF8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__SBSWallpaperClient_fetchAdaptiveTimeBoundsForContext_timeHeight_completionHandler___block_invoke;
    v14[3] = &unk_1E735FE20;
    v15 = v8;
    v16 = a4;
    v11 = [v10 messageWithPacker:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__SBSWallpaperClient_fetchAdaptiveTimeBoundsForContext_timeHeight_completionHandler___block_invoke_2;
    v12[3] = &unk_1E735FD90;
    v13 = v9;
    [(FBSServiceFacilityClient *)self sendMessage:v11 withType:20 replyHandler:v12 waitForReply:0 timeout:0.0];
  }
}

void __85__SBSWallpaperClient_fetchAdaptiveTimeBoundsForContext_timeHeight_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  BSSerializeDoubleToXPCDictionaryWithKey();
}

void __85__SBSWallpaperClient_fetchAdaptiveTimeBoundsForContext_timeHeight_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    v5 = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = v5;
    if (v4)
    {
      BSDeserializeCGRectFromXPCDictionaryWithKey();
      (*(*(a1 + 32) + 16))();
      v3 = v5;
    }
  }
}

- (BOOL)setWallpaperWithVideoWithWallpaperMode:(id)a3 cropRect:(CGRect)a4 wallpaperMode:(unsigned __int8)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = v11;
  if (v11)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v13 = MEMORY[0x1E699FCF8];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __84__SBSWallpaperClient_setWallpaperWithVideoWithWallpaperMode_cropRect_wallpaperMode___block_invoke;
    v18[3] = &unk_1E735FE48;
    v19 = v11;
    v20 = x;
    v21 = y;
    v22 = width;
    v23 = height;
    v24 = a5;
    v14 = [v13 messageWithPacker:v18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__SBSWallpaperClient_setWallpaperWithVideoWithWallpaperMode_cropRect_wallpaperMode___block_invoke_2;
    v17[3] = &unk_1E735FE70;
    v17[4] = &v25;
    [(FBSServiceFacilityClient *)self sendMessage:v14 withType:11 replyHandler:v17 waitForReply:1 timeout:0.0];

    v15 = *(v26 + 24);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void __84__SBSWallpaperClient_setWallpaperWithVideoWithWallpaperMode_cropRect_wallpaperMode___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  BSSerializeStringToXPCDictionaryWithKey();
  BSSerializeCGRectToXPCDictionaryWithKey();
  xpc_dictionary_set_uint64(xdict, "wallpaperMode", *(a1 + 72));
}

void __84__SBSWallpaperClient_setWallpaperWithVideoWithWallpaperMode_cropRect_wallpaperMode___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 payload];
  if (v3)
  {
    v4 = [v5 payload];
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(v4, "result");
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (BOOL)setWallpaperColorName:(id)a3 forVariants:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v8 = MEMORY[0x1E699FCF8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__SBSWallpaperClient_setWallpaperColorName_forVariants___block_invoke;
    v13[3] = &unk_1E735FE20;
    v14 = v6;
    v15 = a4;
    v9 = [v8 messageWithPacker:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__SBSWallpaperClient_setWallpaperColorName_forVariants___block_invoke_2;
    v12[3] = &unk_1E735FE70;
    v12[4] = &v16;
    [(FBSServiceFacilityClient *)self sendMessage:v9 withType:12 replyHandler:v12 waitForReply:1 timeout:0.0];

    v10 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __56__SBSWallpaperClient_setWallpaperColorName_forVariants___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  BSSerializeStringToXPCDictionaryWithKey();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
}

void __56__SBSWallpaperClient_setWallpaperColorName_forVariants___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 payload];
  if (v3)
  {
    v4 = [v5 payload];
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(v4, "result");
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (BOOL)setWallpaperColor:(id)a3 darkColor:(id)a4 forVariants:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v10 = MEMORY[0x1E699FCF8];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__SBSWallpaperClient_setWallpaperColor_darkColor_forVariants___block_invoke;
    v15[3] = &unk_1E735FE98;
    v16 = v8;
    v17 = v9;
    v18 = a5;
    v11 = [v10 messageWithPacker:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__SBSWallpaperClient_setWallpaperColor_darkColor_forVariants___block_invoke_2;
    v14[3] = &unk_1E735FE70;
    v14[4] = &v19;
    [(FBSServiceFacilityClient *)self sendMessage:v11 withType:13 replyHandler:v14 waitForReply:1 timeout:0.0];

    v12 = *(v20 + 24);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void __62__SBSWallpaperClient_setWallpaperColor_darkColor_forVariants___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  if (*(a1 + 40))
  {
    BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  }

  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
}

void __62__SBSWallpaperClient_setWallpaperColor_darkColor_forVariants___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 payload];
  if (v3)
  {
    v4 = [v5 payload];
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(v4, "result");
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (BOOL)setWallpaperGradient:(id)a3 forVariants:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v8 = MEMORY[0x1E699FCF8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__SBSWallpaperClient_setWallpaperGradient_forVariants___block_invoke;
    v13[3] = &unk_1E735FE20;
    v14 = v6;
    v15 = a4;
    v9 = [v8 messageWithPacker:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__SBSWallpaperClient_setWallpaperGradient_forVariants___block_invoke_2;
    v12[3] = &unk_1E735FE70;
    v12[4] = &v16;
    [(FBSServiceFacilityClient *)self sendMessage:v9 withType:14 replyHandler:v12 waitForReply:1 timeout:0.0];

    v10 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __55__SBSWallpaperClient_setWallpaperGradient_forVariants___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
}

void __55__SBSWallpaperClient_setWallpaperGradient_forVariants___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 payload];
  if (v3)
  {
    v4 = [v5 payload];
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(v4, "result");
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (void)restoreDefaultWallpaperWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E699FCF8] message];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SBSWallpaperClient_restoreDefaultWallpaperWithCompletion___block_invoke;
  v7[3] = &unk_1E735FD90;
  v8 = v4;
  v6 = v4;
  [(FBSServiceFacilityClient *)self sendMessage:v5 withType:15 replyHandler:v7 waitForReply:1 timeout:0.0];
}

uint64_t __60__SBSWallpaperClient_restoreDefaultWallpaperWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)triggerPosterSignificantEventWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E699FCF8] message];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__SBSWallpaperClient_triggerPosterSignificantEventWithCompletion___block_invoke;
  v7[3] = &unk_1E735FD90;
  v8 = v4;
  v6 = v4;
  [(FBSServiceFacilityClient *)self sendMessage:v5 withType:16 replyHandler:v7 waitForReply:1 timeout:0.0];
}

uint64_t __66__SBSWallpaperClient_triggerPosterSignificantEventWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)significantEventsCounterForPosterWithIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = MEMORY[0x1E699FCF8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__SBSWallpaperClient_significantEventsCounterForPosterWithIdentifier___block_invoke;
  v11[3] = &unk_1E735FDF8;
  v6 = v4;
  v12 = v6;
  v7 = [v5 messageWithPacker:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__SBSWallpaperClient_significantEventsCounterForPosterWithIdentifier___block_invoke_2;
  v10[3] = &unk_1E735FE70;
  v10[4] = &v13;
  [(FBSServiceFacilityClient *)self sendMessage:v7 withType:17 replyHandler:v10 waitForReply:1 timeout:0.0];

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __70__SBSWallpaperClient_significantEventsCounterForPosterWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    v4 = v3;
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(v3, "result");
    v3 = v4;
  }
}

- (unint64_t)posterSignificantEventsCounter
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [MEMORY[0x1E699FCF8] message];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SBSWallpaperClient_posterSignificantEventsCounter__block_invoke;
  v6[3] = &unk_1E735FE70;
  v6[4] = &v7;
  [(FBSServiceFacilityClient *)self sendMessage:v3 withType:17 replyHandler:v6 waitForReply:1 timeout:0.0];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __52__SBSWallpaperClient_posterSignificantEventsCounter__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    v4 = v3;
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(v3, "result");
    v3 = v4;
  }
}

- (void)fetchPosterSignificantEventsCounterWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E699FCF8] message];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__SBSWallpaperClient_fetchPosterSignificantEventsCounterWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E735FD90;
  v8 = v4;
  v6 = v4;
  [(FBSServiceFacilityClient *)self sendMessage:v5 withType:17 replyHandler:v7 waitForReply:0 timeout:0.0];
}

void __79__SBSWallpaperClient_fetchPosterSignificantEventsCounterWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_get_uint64(v3, "result");
  }

  (*(*(a1 + 32) + 16))();
}

@end