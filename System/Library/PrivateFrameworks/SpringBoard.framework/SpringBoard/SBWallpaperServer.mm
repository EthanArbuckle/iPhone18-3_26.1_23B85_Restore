@interface SBWallpaperServer
+ (id)sharedInstance;
- (BOOL)_clientPermittedToModifyWallpaper:(id)wallpaper;
- (SBWallpaperServerDelegate)delegate;
- (id)_init;
- (int64_t)_deviceOrientationFromXPCDictionary:(id)dictionary;
- (int64_t)_wallpaperModeFromXPCDictionary:(id)dictionary;
- (int64_t)_wallpaperVariantFromXPCDictionary:(id)dictionary;
- (void)_handleFetchAdaptiveTimeBoundsForHeightMessage:(id)message fromClient:(id)client;
- (void)_handleFetchAdaptiveTimeHeightLimitsMessage:(id)message fromClient:(id)client;
- (void)_handleFetchContentCutoutBoundsMessage:(id)message fromClient:(id)client;
- (void)_handleFetchLimitedOcclusionBoundsMessage:(id)message fromClient:(id)client;
- (void)_handleFetchLockScreenContentCutoutBoundsMessage:(id)message fromClient:(id)client;
- (void)_handleFetchLockScreenExtendedContentCutoutBoundsMessage:(id)message fromClient:(id)client;
- (void)_handleFetchLockScreenForegroundBoundsMessage:(id)message fromClient:(id)client;
- (void)_handleFetchLockScreenMaximalContentCutoutBoundsMessage:(id)message fromClient:(id)client;
- (void)_handleFetchLockScreenSubtitleBoundsMessage:(id)message fromClient:(id)client;
- (void)_handleFetchLockScreenTimeBoundsMessage:(id)message fromClient:(id)client;
- (void)_handleFetchOriginalImageMessage:(id)message fromClient:(id)client;
- (void)_handleFetchOriginalVideoURLMessage:(id)message fromClient:(id)client;
- (void)_handleFetchPosterSignificantEventsCounterMessage:(id)message fromClient:(id)client;
- (void)_handleFetchThumbnailMessage:(id)message fromClient:(id)client;
- (void)_handleQuickActionConfigurationRequest:(id)request fromClient:(id)client;
- (void)_handleRestoreDefaultWallpaperMessage:(id)message fromClient:(id)client;
- (void)_handleSetColorMessage:(id)message fromClient:(id)client;
- (void)_handleSetColorNameMessage:(id)message fromClient:(id)client;
- (void)_handleSetGradientMessage:(id)message fromClient:(id)client;
- (void)_handleSetVideoMessageWithWallpaperMode:(id)mode fromClient:(id)client;
- (void)_handleTriggerPosterSignificantEventMessage:(id)message fromClient:(id)client;
- (void)noteDidReceiveMessage:(id)message withType:(int64_t)type fromClient:(id)client;
@end

@implementation SBWallpaperServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_42 != -1)
  {
    +[SBWallpaperServer sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_21;

  return v3;
}

uint64_t __35__SBWallpaperServer_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = [[SBWallpaperServer alloc] _init];
  v1 = sharedInstance___sharedInstance_21;
  sharedInstance___sharedInstance_21 = v0;

  return kdebug_trace();
}

- (id)_init
{
  v3 = MEMORY[0x277D0AE00];
  Serial = BSDispatchQueueCreateSerial();
  v5 = [v3 queueWithDispatchQueue:Serial];

  v6 = *MEMORY[0x277D67238];
  v9.receiver = self;
  v9.super_class = SBWallpaperServer;
  v7 = [(FBSServiceFacility *)&v9 initWithIdentifier:v6 queue:v5];

  return v7;
}

- (void)noteDidReceiveMessage:(id)message withType:(int64_t)type fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  switch(type)
  {
    case 0:
      [(SBWallpaperServer *)self _handleFetchThumbnailMessage:messageCopy fromClient:clientCopy];
      break;
    case 1:
      [(SBWallpaperServer *)self _handleFetchOriginalImageMessage:messageCopy fromClient:clientCopy];
      break;
    case 2:
      [(SBWallpaperServer *)self _handleFetchOriginalVideoURLMessage:messageCopy fromClient:clientCopy];
      break;
    case 3:
      [(SBWallpaperServer *)self _handleFetchContentCutoutBoundsMessage:messageCopy fromClient:clientCopy];
      break;
    case 4:
      [(SBWallpaperServer *)self _handleFetchLockScreenContentCutoutBoundsMessage:messageCopy fromClient:clientCopy];
      break;
    case 5:
      [(SBWallpaperServer *)self _handleFetchLockScreenMaximalContentCutoutBoundsMessage:messageCopy fromClient:clientCopy];
      break;
    case 6:
      [(SBWallpaperServer *)self _handleFetchLockScreenExtendedContentCutoutBoundsMessage:messageCopy fromClient:clientCopy];
      break;
    case 7:
      [(SBWallpaperServer *)self _handleFetchLockScreenForegroundBoundsMessage:messageCopy fromClient:clientCopy];
      break;
    case 8:
      [(SBWallpaperServer *)self _handleFetchLimitedOcclusionBoundsMessage:messageCopy fromClient:clientCopy];
      break;
    case 9:
      [(SBWallpaperServer *)self _handleFetchLockScreenTimeBoundsMessage:messageCopy fromClient:clientCopy];
      break;
    case 10:
      [(SBWallpaperServer *)self _handleFetchLockScreenSubtitleBoundsMessage:messageCopy fromClient:clientCopy];
      break;
    case 11:
      [(SBWallpaperServer *)self _handleSetVideoMessageWithWallpaperMode:messageCopy fromClient:clientCopy];
      break;
    case 12:
      [(SBWallpaperServer *)self _handleSetColorNameMessage:messageCopy fromClient:clientCopy];
      break;
    case 13:
      [(SBWallpaperServer *)self _handleSetColorMessage:messageCopy fromClient:clientCopy];
      break;
    case 14:
      [(SBWallpaperServer *)self _handleSetGradientMessage:messageCopy fromClient:clientCopy];
      break;
    case 15:
      [(SBWallpaperServer *)self _handleRestoreDefaultWallpaperMessage:messageCopy fromClient:clientCopy];
      break;
    case 16:
      [(SBWallpaperServer *)self _handleTriggerPosterSignificantEventMessage:messageCopy fromClient:clientCopy];
      break;
    case 17:
      [(SBWallpaperServer *)self _handleFetchPosterSignificantEventsCounterMessage:messageCopy fromClient:clientCopy];
      break;
    case 18:
      [(SBWallpaperServer *)self _handleQuickActionConfigurationRequest:messageCopy fromClient:clientCopy];
      break;
    case 19:
      [(SBWallpaperServer *)self _handleFetchAdaptiveTimeHeightLimitsMessage:messageCopy fromClient:clientCopy];
      break;
    case 20:
      [(SBWallpaperServer *)self _handleFetchAdaptiveTimeBoundsForHeightMessage:messageCopy fromClient:clientCopy];
      break;
    default:
      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SBApplicationServer noteDidReceiveMessage:clientCopy withType:v10 fromClient:?];
      }

      break;
  }
}

- (int64_t)_wallpaperVariantFromXPCDictionary:(id)dictionary
{
  LODWORD(result) = xpc_dictionary_get_uint64(dictionary, *MEMORY[0x277D67910]);
  if ((result & 0xFFFFFFFE) != 0)
  {
    return -1;
  }

  else
  {
    return result;
  }
}

- (int64_t)_deviceOrientationFromXPCDictionary:(id)dictionary
{
  LODWORD(result) = xpc_dictionary_get_uint64(dictionary, *MEMORY[0x277D678E8]);
  if (result - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

- (void)_handleFetchThumbnailMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SBWallpaperServer__handleFetchThumbnailMessage_fromClient___block_invoke;
  v17[3] = &unk_2783BDA28;
  v8 = messageCopy;
  v18 = v8;
  v9 = MEMORY[0x223D6F7F0](v17);
  payload = [v8 payload];
  v11 = payload;
  if (!payload)
  {
    goto LABEL_8;
  }

  if (object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_8;
  }

  processHandle = [clientCopy processHandle];
  v13 = [processHandle hasEntitlement:*MEMORY[0x277D67230]];

  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = [(SBWallpaperServer *)self _wallpaperVariantFromXPCDictionary:v11];
  delegate = [(SBWallpaperServer *)self delegate];
  v16 = delegate;
  if (!delegate || v14 == -1)
  {

LABEL_8:
    v9[2](v9, 0);
    goto LABEL_9;
  }

  [delegate wallpaperServer:self fetchThumbnailDataForVariant:v14 completionHandler:v9];

LABEL_9:
}

void __61__SBWallpaperServer__handleFetchThumbnailMessage_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBWallpaperServer__handleFetchThumbnailMessage_fromClient___block_invoke_2;
  v6[3] = &unk_2783B07B8;
  v7 = v3;
  v5 = v3;
  [v4 sendReplyMessageWithPacker:v6];
}

void __61__SBWallpaperServer__handleFetchThumbnailMessage_fromClient___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    xdict = v3;
    v5 = xpc_data_create_with_dispatch_data(v4);
    v6 = v5;
    if (!v5 || (length = xpc_data_get_length(v5), length != [*(a1 + 32) length]))
    {
      v8 = xpc_data_create([*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"));

      v6 = v8;
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x277D678D8], v6);

    v3 = xdict;
  }
}

- (void)_handleFetchOriginalImageMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__SBWallpaperServer__handleFetchOriginalImageMessage_fromClient___block_invoke;
  v17[3] = &unk_2783BDA28;
  v8 = messageCopy;
  v18 = v8;
  v9 = MEMORY[0x223D6F7F0](v17);
  payload = [v8 payload];
  v11 = payload;
  if (!payload)
  {
    goto LABEL_8;
  }

  if (object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_8;
  }

  processHandle = [clientCopy processHandle];
  v13 = [processHandle hasEntitlement:*MEMORY[0x277D67230]];

  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = [(SBWallpaperServer *)self _wallpaperVariantFromXPCDictionary:v11];
  delegate = [(SBWallpaperServer *)self delegate];
  v16 = delegate;
  if (!delegate || v14 == -1)
  {

LABEL_8:
    v9[2](v9, 0);
    goto LABEL_9;
  }

  [delegate wallpaperServer:self fetchOriginalImageDataForVariant:v14 completionHandler:v9];

LABEL_9:
}

void __65__SBWallpaperServer__handleFetchOriginalImageMessage_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__SBWallpaperServer__handleFetchOriginalImageMessage_fromClient___block_invoke_2;
  v6[3] = &unk_2783B07B8;
  v7 = v3;
  v5 = v3;
  [v4 sendReplyMessageWithPacker:v6];
}

void __65__SBWallpaperServer__handleFetchOriginalImageMessage_fromClient___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    xdict = v3;
    v5 = xpc_data_create_with_dispatch_data(v4);
    v6 = v5;
    if (!v5 || (length = xpc_data_get_length(v5), length != [*(a1 + 32) length]))
    {
      v8 = xpc_data_create([*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"));

      v6 = v8;
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x277D678D8], v6);

    v3 = xdict;
  }
}

- (void)_handleFetchOriginalVideoURLMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__SBWallpaperServer__handleFetchOriginalVideoURLMessage_fromClient___block_invoke;
  v17[3] = &unk_2783BDA28;
  v8 = messageCopy;
  v18 = v8;
  v9 = MEMORY[0x223D6F7F0](v17);
  payload = [v8 payload];
  v11 = payload;
  if (!payload)
  {
    goto LABEL_8;
  }

  if (object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_8;
  }

  processHandle = [clientCopy processHandle];
  v13 = [processHandle hasEntitlement:*MEMORY[0x277D67230]];

  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = [(SBWallpaperServer *)self _wallpaperVariantFromXPCDictionary:v11];
  delegate = [(SBWallpaperServer *)self delegate];
  v16 = delegate;
  if (!delegate || v14)
  {

LABEL_8:
    v9[2](v9, 0);
    goto LABEL_9;
  }

  [delegate wallpaperServer:self fetchOriginalVideoURLDataForVariant:0 completionHandler:v9];

LABEL_9:
}

void __68__SBWallpaperServer__handleFetchOriginalVideoURLMessage_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__SBWallpaperServer__handleFetchOriginalVideoURLMessage_fromClient___block_invoke_2;
  v6[3] = &unk_2783B07B8;
  v7 = v3;
  v5 = v3;
  [v4 sendReplyMessageWithPacker:v6];
}

void __68__SBWallpaperServer__handleFetchOriginalVideoURLMessage_fromClient___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    xdict = v3;
    v5 = xpc_data_create_with_dispatch_data(v4);
    v6 = v5;
    if (!v5 || (length = xpc_data_get_length(v5), length != [*(a1 + 32) length]))
    {
      v8 = xpc_data_create([*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"));

      v6 = v8;
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x277D67918], v6);

    v3 = xdict;
  }
}

- (void)_handleFetchContentCutoutBoundsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__SBWallpaperServer__handleFetchContentCutoutBoundsMessage_fromClient___block_invoke;
  v21[3] = &unk_2783B4CF0;
  v6 = messageCopy;
  v22 = v6;
  v7 = MEMORY[0x223D6F7F0](v21);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __71__SBWallpaperServer__handleFetchContentCutoutBoundsMessage_fromClient___block_invoke_3;
  v19 = &unk_2783A8C18;
  v8 = v6;
  v20 = v8;
  v9 = MEMORY[0x223D6F7F0](&v16);
  payload = [v8 payload];
  v11 = payload;
  if (!payload || object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_8;
  }

  v12 = [(SBWallpaperServer *)self _wallpaperVariantFromXPCDictionary:v11];
  v13 = [(SBWallpaperServer *)self _deviceOrientationFromXPCDictionary:v11];
  delegate = [(SBWallpaperServer *)self delegate];
  v15 = delegate;
  if (!delegate || v12 || (v13 - 1) > 3)
  {

LABEL_8:
    v9[2](v9);
    goto LABEL_9;
  }

  [delegate wallpaperServer:self fetchContentCutoutBoundsForVariant:0 orientation:v13 completionHandler:v7];

LABEL_9:
}

uint64_t __71__SBWallpaperServer__handleFetchContentCutoutBoundsMessage_fromClient___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SBWallpaperServer__handleFetchContentCutoutBoundsMessage_fromClient___block_invoke_2;
  v7[3] = &__block_descriptor_64_e33_v16__0__NSObject_OS_xpc_object__8l;
  *&v7[4] = a2;
  *&v7[5] = a3;
  *&v7[6] = a4;
  *&v7[7] = a5;
  return [v5 sendReplyMessageWithPacker:v7];
}

- (void)_handleFetchLockScreenContentCutoutBoundsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__SBWallpaperServer__handleFetchLockScreenContentCutoutBoundsMessage_fromClient___block_invoke;
  v20[3] = &unk_2783B4CF0;
  v6 = messageCopy;
  v21 = v6;
  v7 = MEMORY[0x223D6F7F0](v20);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __81__SBWallpaperServer__handleFetchLockScreenContentCutoutBoundsMessage_fromClient___block_invoke_3;
  v18 = &unk_2783A8C18;
  v8 = v6;
  v19 = v8;
  v9 = MEMORY[0x223D6F7F0](&v15);
  payload = [v8 payload];
  v11 = payload;
  if (!payload || object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_7;
  }

  v12 = [(SBWallpaperServer *)self _deviceOrientationFromXPCDictionary:v11];
  delegate = [(SBWallpaperServer *)self delegate];
  v14 = delegate;
  if (!delegate || (v12 - 1) > 3)
  {

LABEL_7:
    v9[2](v9);
    goto LABEL_8;
  }

  [delegate wallpaperServer:self fetchLockScreenContentCutoutBoundsForOrientation:v12 completionHandler:v7];

LABEL_8:
}

uint64_t __81__SBWallpaperServer__handleFetchLockScreenContentCutoutBoundsMessage_fromClient___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__SBWallpaperServer__handleFetchLockScreenContentCutoutBoundsMessage_fromClient___block_invoke_2;
  v7[3] = &__block_descriptor_64_e33_v16__0__NSObject_OS_xpc_object__8l;
  *&v7[4] = a2;
  *&v7[5] = a3;
  *&v7[6] = a4;
  *&v7[7] = a5;
  return [v5 sendReplyMessageWithPacker:v7];
}

- (void)_handleFetchLockScreenMaximalContentCutoutBoundsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__SBWallpaperServer__handleFetchLockScreenMaximalContentCutoutBoundsMessage_fromClient___block_invoke;
  v20[3] = &unk_2783B4CF0;
  v6 = messageCopy;
  v21 = v6;
  v7 = MEMORY[0x223D6F7F0](v20);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __88__SBWallpaperServer__handleFetchLockScreenMaximalContentCutoutBoundsMessage_fromClient___block_invoke_3;
  v18 = &unk_2783A8C18;
  v8 = v6;
  v19 = v8;
  v9 = MEMORY[0x223D6F7F0](&v15);
  payload = [v8 payload];
  v11 = payload;
  if (!payload || object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_7;
  }

  v12 = [(SBWallpaperServer *)self _deviceOrientationFromXPCDictionary:v11];
  delegate = [(SBWallpaperServer *)self delegate];
  v14 = delegate;
  if (!delegate || (v12 - 1) > 3)
  {

LABEL_7:
    v9[2](v9);
    goto LABEL_8;
  }

  [delegate wallpaperServer:self fetchLockScreenMaximalContentCutoutBoundsForOrientation:v12 completionHandler:v7];

LABEL_8:
}

uint64_t __88__SBWallpaperServer__handleFetchLockScreenMaximalContentCutoutBoundsMessage_fromClient___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__SBWallpaperServer__handleFetchLockScreenMaximalContentCutoutBoundsMessage_fromClient___block_invoke_2;
  v7[3] = &__block_descriptor_64_e33_v16__0__NSObject_OS_xpc_object__8l;
  *&v7[4] = a2;
  *&v7[5] = a3;
  *&v7[6] = a4;
  *&v7[7] = a5;
  return [v5 sendReplyMessageWithPacker:v7];
}

- (void)_handleFetchLockScreenExtendedContentCutoutBoundsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __89__SBWallpaperServer__handleFetchLockScreenExtendedContentCutoutBoundsMessage_fromClient___block_invoke;
  v20[3] = &unk_2783B4CF0;
  v6 = messageCopy;
  v21 = v6;
  v7 = MEMORY[0x223D6F7F0](v20);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __89__SBWallpaperServer__handleFetchLockScreenExtendedContentCutoutBoundsMessage_fromClient___block_invoke_3;
  v18 = &unk_2783A8C18;
  v8 = v6;
  v19 = v8;
  v9 = MEMORY[0x223D6F7F0](&v15);
  payload = [v8 payload];
  v11 = payload;
  if (!payload || object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_7;
  }

  v12 = [(SBWallpaperServer *)self _deviceOrientationFromXPCDictionary:v11];
  delegate = [(SBWallpaperServer *)self delegate];
  v14 = delegate;
  if (!delegate || (v12 - 1) > 3)
  {

LABEL_7:
    v9[2](v9);
    goto LABEL_8;
  }

  [delegate wallpaperServer:self fetchLockScreenExtendedContentCutoutBoundsForOrientation:v12 completionHandler:v7];

LABEL_8:
}

uint64_t __89__SBWallpaperServer__handleFetchLockScreenExtendedContentCutoutBoundsMessage_fromClient___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__SBWallpaperServer__handleFetchLockScreenExtendedContentCutoutBoundsMessage_fromClient___block_invoke_2;
  v7[3] = &__block_descriptor_64_e33_v16__0__NSObject_OS_xpc_object__8l;
  *&v7[4] = a2;
  *&v7[5] = a3;
  *&v7[6] = a4;
  *&v7[7] = a5;
  return [v5 sendReplyMessageWithPacker:v7];
}

- (void)_handleFetchLockScreenForegroundBoundsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__SBWallpaperServer__handleFetchLockScreenForegroundBoundsMessage_fromClient___block_invoke;
  v20[3] = &unk_2783B4CF0;
  v6 = messageCopy;
  v21 = v6;
  v7 = MEMORY[0x223D6F7F0](v20);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __78__SBWallpaperServer__handleFetchLockScreenForegroundBoundsMessage_fromClient___block_invoke_3;
  v18 = &unk_2783A8C18;
  v8 = v6;
  v19 = v8;
  v9 = MEMORY[0x223D6F7F0](&v15);
  payload = [v8 payload];
  v11 = payload;
  if (!payload || object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_7;
  }

  v12 = [(SBWallpaperServer *)self _deviceOrientationFromXPCDictionary:v11];
  delegate = [(SBWallpaperServer *)self delegate];
  v14 = delegate;
  if (!delegate || (v12 - 1) > 3)
  {

LABEL_7:
    v9[2](v9);
    goto LABEL_8;
  }

  [delegate wallpaperServer:self fetchObscurableBoundsForOrientation:v12 completionHandler:v7];

LABEL_8:
}

uint64_t __78__SBWallpaperServer__handleFetchLockScreenForegroundBoundsMessage_fromClient___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__SBWallpaperServer__handleFetchLockScreenForegroundBoundsMessage_fromClient___block_invoke_2;
  v7[3] = &__block_descriptor_64_e33_v16__0__NSObject_OS_xpc_object__8l;
  *&v7[4] = a2;
  *&v7[5] = a3;
  *&v7[6] = a4;
  *&v7[7] = a5;
  return [v5 sendReplyMessageWithPacker:v7];
}

- (void)_handleFetchLimitedOcclusionBoundsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__SBWallpaperServer__handleFetchLimitedOcclusionBoundsMessage_fromClient___block_invoke;
  v20[3] = &unk_2783B4CF0;
  v6 = messageCopy;
  v21 = v6;
  v7 = MEMORY[0x223D6F7F0](v20);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __74__SBWallpaperServer__handleFetchLimitedOcclusionBoundsMessage_fromClient___block_invoke_3;
  v18 = &unk_2783A8C18;
  v8 = v6;
  v19 = v8;
  v9 = MEMORY[0x223D6F7F0](&v15);
  payload = [v8 payload];
  v11 = payload;
  if (!payload || object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_7;
  }

  v12 = [(SBWallpaperServer *)self _deviceOrientationFromXPCDictionary:v11];
  delegate = [(SBWallpaperServer *)self delegate];
  v14 = delegate;
  if (!delegate || (v12 - 1) > 3)
  {

LABEL_7:
    v9[2](v9);
    goto LABEL_8;
  }

  [delegate wallpaperServer:self fetchLimitedOcclusionBoundsForOrientation:v12 completionHandler:v7];

LABEL_8:
}

uint64_t __74__SBWallpaperServer__handleFetchLimitedOcclusionBoundsMessage_fromClient___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SBWallpaperServer__handleFetchLimitedOcclusionBoundsMessage_fromClient___block_invoke_2;
  v7[3] = &__block_descriptor_64_e33_v16__0__NSObject_OS_xpc_object__8l;
  *&v7[4] = a2;
  *&v7[5] = a3;
  *&v7[6] = a4;
  *&v7[7] = a5;
  return [v5 sendReplyMessageWithPacker:v7];
}

- (void)_handleFetchLockScreenTimeBoundsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__SBWallpaperServer__handleFetchLockScreenTimeBoundsMessage_fromClient___block_invoke;
  v20[3] = &unk_2783B4CF0;
  v6 = messageCopy;
  v21 = v6;
  v7 = MEMORY[0x223D6F7F0](v20);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __72__SBWallpaperServer__handleFetchLockScreenTimeBoundsMessage_fromClient___block_invoke_3;
  v18 = &unk_2783A8C18;
  v8 = v6;
  v19 = v8;
  v9 = MEMORY[0x223D6F7F0](&v15);
  payload = [v8 payload];
  v11 = payload;
  if (!payload || object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_7;
  }

  v12 = [(SBWallpaperServer *)self _deviceOrientationFromXPCDictionary:v11];
  delegate = [(SBWallpaperServer *)self delegate];
  v14 = delegate;
  if (!delegate || (v12 - 1) > 3)
  {

LABEL_7:
    v9[2](v9);
    goto LABEL_8;
  }

  [delegate wallpaperServer:self fetchLockScreenTimeBoundsForOrientation:v12 completionHandler:v7];

LABEL_8:
}

uint64_t __72__SBWallpaperServer__handleFetchLockScreenTimeBoundsMessage_fromClient___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SBWallpaperServer__handleFetchLockScreenTimeBoundsMessage_fromClient___block_invoke_2;
  v7[3] = &__block_descriptor_64_e33_v16__0__NSObject_OS_xpc_object__8l;
  *&v7[4] = a2;
  *&v7[5] = a3;
  *&v7[6] = a4;
  *&v7[7] = a5;
  return [v5 sendReplyMessageWithPacker:v7];
}

- (void)_handleFetchLockScreenSubtitleBoundsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__SBWallpaperServer__handleFetchLockScreenSubtitleBoundsMessage_fromClient___block_invoke;
  v20[3] = &unk_2783B4CF0;
  v6 = messageCopy;
  v21 = v6;
  v7 = MEMORY[0x223D6F7F0](v20);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __76__SBWallpaperServer__handleFetchLockScreenSubtitleBoundsMessage_fromClient___block_invoke_3;
  v18 = &unk_2783A8C18;
  v8 = v6;
  v19 = v8;
  v9 = MEMORY[0x223D6F7F0](&v15);
  payload = [v8 payload];
  v11 = payload;
  if (!payload || object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_7;
  }

  v12 = [(SBWallpaperServer *)self _deviceOrientationFromXPCDictionary:v11];
  delegate = [(SBWallpaperServer *)self delegate];
  v14 = delegate;
  if (!delegate || (v12 - 1) > 3)
  {

LABEL_7:
    v9[2](v9);
    goto LABEL_8;
  }

  [delegate wallpaperServer:self fetchLockScreenSubtitleBoundsForOrientation:v12 completionHandler:v7];

LABEL_8:
}

uint64_t __76__SBWallpaperServer__handleFetchLockScreenSubtitleBoundsMessage_fromClient___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__SBWallpaperServer__handleFetchLockScreenSubtitleBoundsMessage_fromClient___block_invoke_2;
  v7[3] = &__block_descriptor_64_e33_v16__0__NSObject_OS_xpc_object__8l;
  *&v7[4] = a2;
  *&v7[5] = a3;
  *&v7[6] = a4;
  *&v7[7] = a5;
  return [v5 sendReplyMessageWithPacker:v7];
}

- (void)_handleFetchAdaptiveTimeHeightLimitsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __76__SBWallpaperServer__handleFetchAdaptiveTimeHeightLimitsMessage_fromClient___block_invoke;
  v23[3] = &unk_2783BE490;
  v8 = messageCopy;
  v24 = v8;
  v9 = MEMORY[0x223D6F7F0](v23);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __76__SBWallpaperServer__handleFetchAdaptiveTimeHeightLimitsMessage_fromClient___block_invoke_3;
  v21 = &unk_2783A8C18;
  v10 = v8;
  v22 = v10;
  v11 = MEMORY[0x223D6F7F0](&v18);
  payload = [v10 payload];
  v13 = payload;
  if (!payload || object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_9;
  }

  v14 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  processHandle = [clientCopy processHandle];
  v16 = [processHandle hasEntitlement:*MEMORY[0x277D67230]];

  if (!v16)
  {
LABEL_8:

LABEL_9:
    v11[2](v11);
    goto LABEL_10;
  }

  delegate = [(SBWallpaperServer *)self delegate];
  if (!delegate || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_8;
  }

  [delegate wallpaperServer:self fetchAdaptiveTimeHeightLimitsForContext:v14 completionHandler:v9];

LABEL_10:
}

uint64_t __76__SBWallpaperServer__handleFetchAdaptiveTimeHeightLimitsMessage_fromClient___block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__SBWallpaperServer__handleFetchAdaptiveTimeHeightLimitsMessage_fromClient___block_invoke_2;
  v5[3] = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  *&v5[4] = a2;
  *&v5[5] = a3;
  return [v3 sendReplyMessageWithPacker:v5];
}

void __76__SBWallpaperServer__handleFetchAdaptiveTimeHeightLimitsMessage_fromClient___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  MEMORY[0x223D6B340](v3);
  MEMORY[0x223D6B340](v4, *MEMORY[0x277D678C8], *(a1 + 40));
}

- (void)_handleFetchAdaptiveTimeBoundsForHeightMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__SBWallpaperServer__handleFetchAdaptiveTimeBoundsForHeightMessage_fromClient___block_invoke;
  v24[3] = &unk_2783B4CF0;
  v8 = messageCopy;
  v25 = v8;
  v9 = MEMORY[0x223D6F7F0](v24);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __79__SBWallpaperServer__handleFetchAdaptiveTimeBoundsForHeightMessage_fromClient___block_invoke_3;
  v22 = &unk_2783A8C18;
  v10 = v8;
  v23 = v10;
  v11 = MEMORY[0x223D6F7F0](&v19);
  payload = [v10 payload];
  v13 = payload;
  if (!payload || object_getClass(payload) != MEMORY[0x277D86468])
  {
    goto LABEL_9;
  }

  v14 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  v15 = MEMORY[0x223D6AEA0](v13, *MEMORY[0x277D678C0]);
  processHandle = [clientCopy processHandle];
  v17 = [processHandle hasEntitlement:*MEMORY[0x277D67230]];

  if (!v17)
  {
LABEL_8:

LABEL_9:
    v11[2](v11);
    goto LABEL_10;
  }

  delegate = [(SBWallpaperServer *)self delegate];
  if (!delegate || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_8;
  }

  [delegate wallpaperServer:self fetchAdaptiveTimeBoundsForContext:v14 timeHeight:v9 completionHandler:v15];

LABEL_10:
}

uint64_t __79__SBWallpaperServer__handleFetchAdaptiveTimeBoundsForHeightMessage_fromClient___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SBWallpaperServer__handleFetchAdaptiveTimeBoundsForHeightMessage_fromClient___block_invoke_2;
  v7[3] = &__block_descriptor_64_e33_v16__0__NSObject_OS_xpc_object__8l;
  *&v7[4] = a2;
  *&v7[5] = a3;
  *&v7[6] = a4;
  *&v7[7] = a5;
  return [v5 sendReplyMessageWithPacker:v7];
}

- (int64_t)_wallpaperModeFromXPCDictionary:(id)dictionary
{
  LOBYTE(result) = xpc_dictionary_get_uint64(dictionary, *MEMORY[0x277D67920]);
  if (result - 1 >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

- (void)_handleSetVideoMessageWithWallpaperMode:(id)mode fromClient:(id)client
{
  modeCopy = mode;
  clientCopy = client;
  delegate = [(SBWallpaperServer *)self delegate];
  payload = [modeCopy payload];
  v10 = [(SBWallpaperServer *)self _clientPermittedToModifyWallpaper:clientCopy];

  if (v10 && [(SBWallpaperServer *)self _xpcObjectIsDictionary:payload])
  {
    v11 = BSDeserializeStringFromXPCDictionaryWithKey();
    BSDeserializeCGRectFromXPCDictionaryWithKey();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(SBWallpaperServer *)self _wallpaperModeFromXPCDictionary:payload];
    if (v11)
    {
      v21 = v20;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __72__SBWallpaperServer__handleSetVideoMessageWithWallpaperMode_fromClient___block_invoke;
      v22[3] = &unk_2783A9398;
      v23 = modeCopy;
      [delegate wallpaperServer:self setWallpaperVideoWithWallpaperMode:v11 cropRect:v21 wallpaperMode:v22 completionHandler:{v13, v15, v17, v19}];
    }

    else
    {
      [modeCopy sendReplyMessageWithPacker:&__block_literal_global_35_2];
    }
  }

  else
  {
    [modeCopy sendReplyMessageWithPacker:&__block_literal_global_37_4];
  }
}

uint64_t __72__SBWallpaperServer__handleSetVideoMessageWithWallpaperMode_fromClient___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__SBWallpaperServer__handleSetVideoMessageWithWallpaperMode_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleSetColorNameMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  delegate = [(SBWallpaperServer *)self delegate];
  payload = [messageCopy payload];
  v10 = [(SBWallpaperServer *)self _clientPermittedToModifyWallpaper:clientCopy];

  if (v10 && [(SBWallpaperServer *)self _xpcObjectIsDictionary:payload])
  {
    v11 = BSDeserializeStringFromXPCDictionaryWithKey();
    v12 = objc_opt_self();
    v13 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
    unsignedIntegerValue = [v13 unsignedIntegerValue];

    if (v11)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__SBWallpaperServer__handleSetColorNameMessage_fromClient___block_invoke;
      v15[3] = &unk_2783A9398;
      v16 = messageCopy;
      [delegate wallpaperServer:self setWallpaperColorName:v11 forVariants:unsignedIntegerValue completionHandler:v15];
    }

    else
    {
      [messageCopy sendReplyMessageWithPacker:&__block_literal_global_42_4];
    }
  }

  else
  {
    [messageCopy sendReplyMessageWithPacker:&__block_literal_global_44_1];
  }
}

uint64_t __59__SBWallpaperServer__handleSetColorNameMessage_fromClient___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SBWallpaperServer__handleSetColorNameMessage_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleSetColorMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  delegate = [(SBWallpaperServer *)self delegate];
  payload = [messageCopy payload];
  v10 = [(SBWallpaperServer *)self _clientPermittedToModifyWallpaper:clientCopy];

  if (v10 && [(SBWallpaperServer *)self _xpcObjectIsDictionary:payload])
  {
    objc_opt_class();
    v11 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
    objc_opt_class();
    v12 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
    v13 = objc_opt_self();
    v14 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
    unsignedIntegerValue = [v14 unsignedIntegerValue];

    if (v11)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __55__SBWallpaperServer__handleSetColorMessage_fromClient___block_invoke;
      v16[3] = &unk_2783A9398;
      v17 = messageCopy;
      [delegate wallpaperServer:self setWallpaperColor:v11 darkColor:v12 forVariants:unsignedIntegerValue completionHandler:v16];
    }

    else
    {
      [messageCopy sendReplyMessageWithPacker:&__block_literal_global_49_4];
    }
  }

  else
  {
    [messageCopy sendReplyMessageWithPacker:&__block_literal_global_51_4];
  }
}

uint64_t __55__SBWallpaperServer__handleSetColorMessage_fromClient___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SBWallpaperServer__handleSetColorMessage_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleSetGradientMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  delegate = [(SBWallpaperServer *)self delegate];
  payload = [messageCopy payload];
  v10 = [(SBWallpaperServer *)self _clientPermittedToModifyWallpaper:clientCopy];

  if (v10 && [(SBWallpaperServer *)self _xpcObjectIsDictionary:payload])
  {
    v11 = objc_opt_self();
    v12 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();

    v13 = objc_opt_self();
    v14 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
    unsignedIntegerValue = [v14 unsignedIntegerValue];

    if (v12)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __58__SBWallpaperServer__handleSetGradientMessage_fromClient___block_invoke;
      v16[3] = &unk_2783A9398;
      v17 = messageCopy;
      [delegate wallpaperServer:self setWallpaperGradient:v12 forVariants:unsignedIntegerValue completionHandler:v16];
    }

    else
    {
      [messageCopy sendReplyMessageWithPacker:&__block_literal_global_55_1];
    }
  }

  else
  {
    [messageCopy sendReplyMessageWithPacker:&__block_literal_global_57_2];
  }
}

uint64_t __58__SBWallpaperServer__handleSetGradientMessage_fromClient___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SBWallpaperServer__handleSetGradientMessage_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleRestoreDefaultWallpaperMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  delegate = [(SBWallpaperServer *)self delegate];
  v9 = [(SBWallpaperServer *)self _clientPermittedToModifyWallpaper:clientCopy];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__SBWallpaperServer__handleRestoreDefaultWallpaperMessage_fromClient___block_invoke;
    v10[3] = &unk_2783A9398;
    v11 = messageCopy;
    [delegate wallpaperServer:self restoreDefaultWallpaperWithCompletionHandler:v10];
  }

  else
  {
    [messageCopy sendReplyMessageWithPacker:&__block_literal_global_59_3];
  }
}

uint64_t __70__SBWallpaperServer__handleRestoreDefaultWallpaperMessage_fromClient___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SBWallpaperServer__handleRestoreDefaultWallpaperMessage_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleTriggerPosterSignificantEventMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  delegate = [(SBWallpaperServer *)self delegate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SBWallpaperServer__handleTriggerPosterSignificantEventMessage_fromClient___block_invoke;
  v8[3] = &unk_2783A9398;
  v9 = messageCopy;
  v7 = messageCopy;
  [delegate wallpaperServer:self triggerPosterSignificantEventCompletionHandler:v8];
}

uint64_t __76__SBWallpaperServer__handleTriggerPosterSignificantEventMessage_fromClient___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__SBWallpaperServer__handleTriggerPosterSignificantEventMessage_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleFetchPosterSignificantEventsCounterMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  delegate = [(SBWallpaperServer *)self delegate];
  payload = [messageCopy payload];
  v10 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    processHandle = [clientCopy processHandle];
    v12 = [processHandle hasEntitlement:*MEMORY[0x277D67230]];

    if (v12)
    {
      v13 = objc_opt_self();
      v14 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __82__SBWallpaperServer__handleFetchPosterSignificantEventsCounterMessage_fromClient___block_invoke;
      v15[3] = &unk_2783AD9C8;
      v16 = messageCopy;
      [delegate wallpaperServer:self fetchSignificantEventsCounterForPosterWithIdentifier:v14 completionHandler:v15];
    }
  }

  else
  {
    [messageCopy sendReplyMessageWithPacker:&__block_literal_global_64];
  }
}

uint64_t __82__SBWallpaperServer__handleFetchPosterSignificantEventsCounterMessage_fromClient___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__SBWallpaperServer__handleFetchPosterSignificantEventsCounterMessage_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v4[4] = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleQuickActionConfigurationRequest:(id)request fromClient:(id)client
{
  v23[5] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  processHandle = [clientCopy processHandle];
  v9 = [processHandle hasEntitlement:*MEMORY[0x277D67230]];

  if (v9)
  {
    payload = [requestCopy payload];
    v11 = payload;
    if (payload && object_getClass(payload) == MEMORY[0x277D86468])
    {
      delegate = [(SBWallpaperServer *)self delegate];
      v13 = BSDeserializeDataFromXPCDictionaryWithKey();
      v14 = MEMORY[0x277CCAAC8];
      v15 = MEMORY[0x277CBEB98];
      v23[0] = objc_opt_class();
      v23[1] = objc_opt_class();
      v23[2] = objc_opt_class();
      v23[3] = objc_opt_class();
      v23[4] = objc_opt_class();
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];
      v17 = [v15 setWithArray:v16];
      v18 = [v14 unarchivedObjectOfClasses:v17 fromData:v13 error:0];

      if (v18)
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __71__SBWallpaperServer__handleQuickActionConfigurationRequest_fromClient___block_invoke_2;
        v19[3] = &unk_2783B0F28;
        v20 = requestCopy;
        [delegate wallpaperServer:self handleQuickActionConfigurationRequest:v18 completionHandler:v19];
      }
    }

    else
    {
      [requestCopy sendReplyMessageWithPacker:&__block_literal_global_77_0];
    }
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__SBWallpaperServer__handleQuickActionConfigurationRequest_fromClient___block_invoke;
    v21[3] = &unk_2783B07B8;
    v22 = clientCopy;
    [requestCopy sendReplyMessageWithPacker:v21];
    v11 = v22;
  }
}

void __71__SBWallpaperServer__handleQuickActionConfigurationRequest_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D678F8];
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v4 processHandle];
  v6 = [v3 stringWithFormat:@"client %@ does not have the right entitlement", v7];
  xpc_dictionary_set_string(v5, v2, [v6 UTF8String]);
}

void __71__SBWallpaperServer__handleQuickActionConfigurationRequest_fromClient___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__SBWallpaperServer__handleQuickActionConfigurationRequest_fromClient___block_invoke_3;
  v6[3] = &unk_2783B07B8;
  v7 = v3;
  v5 = v3;
  [v4 sendReplyMessageWithPacker:v6];
}

void __71__SBWallpaperServer__handleQuickActionConfigurationRequest_fromClient___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *MEMORY[0x277D678F8];
    v4 = a2;
    v6 = [v2 localizedDescription];
    v5 = v6;
    xpc_dictionary_set_string(v4, v3, [v6 UTF8String]);
  }
}

void __71__SBWallpaperServer__handleQuickActionConfigurationRequest_fromClient___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D678F8];
  xdict = a2;
  xpc_dictionary_set_string(xdict, v2, [@"payload is nil or payload != XPC_TYPE_DICTIONARY" UTF8String]);
}

- (BOOL)_clientPermittedToModifyWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  accessAuthenticator = [(SBWallpaperServer *)self accessAuthenticator];
  v6 = [accessAuthenticator authenticateClient:wallpaperCopy];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  LOBYTE(wallpaperCopy) = [mEMORY[0x277D262A0] isWallpaperModificationAllowed];

  return v6 & wallpaperCopy;
}

- (SBWallpaperServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end