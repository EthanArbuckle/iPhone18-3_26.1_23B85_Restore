@interface HUDMTLLayerOverlay
- (BOOL)layerTracking:(id)tracking presentDrawable:(id)drawable;
- (CGRect)overlayLayoutRectInPoints;
- (HUDMTLLayerOverlay)initWithDevice:(id)device;
- (void)_drawablePresentedCommon:(id)common;
- (void)_log:(HUDMTLLayerState *)_log drawableState:(HUDMTLLayerDrawableState *)state;
- (void)dealloc;
- (void)drawInsightsFrame:(HUDMTLLayerState *)frame drawableState:(HUDMTLLayerDrawableState *)state;
- (void)drawUpdatedFrame:(HUDMTLLayerState *)frame drawableState:(HUDMTLLayerDrawableState *)state;
- (void)generateQRCodeContent:(id)content;
- (void)layerTracking:(id)tracking setSnapshotTexture:(id)texture callback:(id)callback;
@end

@implementation HUDMTLLayerOverlay

- (HUDMTLLayerOverlay)initWithDevice:(id)device
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = HUDMTLLayerOverlay;
  v5 = [(HUDMTLLayerOverlay *)&v21 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 11) = 0;
    *(v5 + 72) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 8) = 0u;
    if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
    {
      [HUDMTLLayerOverlay initWithDevice:];
    }

    if (!_HUDMTLOverlayGlobalInstance_tracker)
    {
      _HUDMTLOverlayGlobalInstance_tracker = HUDUIOverlayCreate(deviceCopy);
      CACurrentMediaTime();
      HUDGPUTimelineInit();
    }

    v7 = HUDUIInvalidFrame;
    v6->_layer.mainWindowFrame.lastRenderedFrame.opaque = HUDUIInvalidFrame;
    v6->_layer.mainWindowFrame.tempFrame.opaque = v7;
    v6->_layer.mainWindowFrame.currentHeight = 0.0;
    v6->_layer.insightsWindowFrame.lastRenderedFrame.opaque = v7;
    v6->_layer.insightsWindowFrame.tempFrame.opaque = v7;
    v6->_layer.insightsWindowFrame.currentHeight = 0.0;
    *&v6->_layer.frameSwapLock._os_unfair_lock_opaque = 0;
    v6->_layer.fontSize = 1;
    v8 = dispatch_group_create();
    updateGroup = v6->_layer.updateGroup;
    v6->_layer.updateGroup = v8;

    name = [deviceCopy name];
    if ([name hasPrefix:@"Apple "])
    {
      v11 = [name substringFromIndex:6];

      name = v11;
    }

    if ([name hasSuffix:@"GPU"])
    {
      v12 = [name substringToIndex:{objc_msgSend(name, "length") - 4}];

      name = v12;
    }

    v13 = +[_CADeveloperHUDProperties instance];
    [v13 updateLabelMetric:@"com.apple.hud-stat.gpu-name" label:name];

    LODWORD(v6->_lastLayout.mainHUDWindow.x) = HUDUIRectMake(0.0, 0.0, 0.0, 0.0).n128_u32[0];
    v6->_lastLayout.mainHUDWindow.y = v14;
    v6->_lastLayout.mainHUDWindow.w = v15;
    v6->_lastLayout.mainHUDWindow.h = v16;
    LODWORD(v6->_lastLayout.insights.x) = HUDUIRectMake(0.0, 0.0, 0.0, 0.0).n128_u32[0];
    v6->_lastLayout.insights.y = v17;
    v6->_lastLayout.insights.w = v18;
    v6->_lastLayout.insights.h = v19;
  }

  return v6;
}

- (BOOL)layerTracking:(id)tracking presentDrawable:(id)drawable
{
  trackingCopy = tracking;
  drawableCopy = drawable;
  v8 = +[MTLCaptureManager sharedCaptureManager];
  if ([v8 isCapturing])
  {
    v9 = *(HUDGetGlobalConfig() + 18);

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (*(HUDGetGlobalConfig() + 16) == 1)
  {
    layerTracking_presentDrawable___presentBegin = HUDCurrentTimeInNs();
  }

  LODWORD(v10) = *HUDGetGlobalConfig();
  if (*([trackingCopy layerState] + 65))
  {
    if (!*([trackingCopy layerState] + 64))
    {
LABEL_9:
      LOBYTE(v10) = 0;
      goto LABEL_84;
    }
  }

  else if (!v10)
  {
    goto LABEL_84;
  }

  os_unfair_lock_lock(&self->_layer.frameSwapLock);
  opaque = self->_layer.mainWindowFrame.lastRenderedFrame.opaque;
  if (self->_layer.insightsWindowFrame.hasContent)
  {
    p_insightsWindowFrame = &self->_layer.insightsWindowFrame;
  }

  else
  {
    p_insightsWindowFrame = &HUDUIInvalidFrame;
  }

  v13 = *p_insightsWindowFrame;
  if (*(HUDGetGlobalConfig() + 17) != 1)
  {
    goto LABEL_19;
  }

  layer = [trackingCopy layer];
  v15 = +[HUDAlternateWindow instance];
  layer2 = [v15 layer];

  if (layer == layer2)
  {
    v17 = +[HUDMTLLayerTracking mainTracker];
    if (v17)
    {
      v18 = *(HUDGetGlobalConfig() + 37);

      if (!v18)
      {
        v19 = +[HUDMTLLayerTracking mainTracker];

        client = [v19 client];

        opaque = *(client + 16);
        if (*(client + 72))
        {
          v80 = (client + 48);
        }

        else
        {
          v80 = &HUDUIInvalidFrame;
        }

        v13 = *v80;
LABEL_20:
        texture = [drawableCopy texture];
        width = [texture width];

        texture2 = [drawableCopy texture];
        height = [texture2 height];

        layer3 = [drawableCopy layer];
        [layer3 bounds];
        v86 = v25;

        layer4 = [drawableCopy layer];
        [layer4 bounds];
        v85 = v27;

        self->_lastLayout.insightsCurrentHeight = self->_layer.insightsWindowFrame.currentHeight;
        self->_lastLayout.mainWindowCurrentHeight = self->_layer.mainWindowFrame.currentHeight;
        trackingCopy = v19;
        LODWORD(v95[0]) = 0;
        LODWORD(v89) = 0;
        HUDUIFrameGetSizeInPoints(opaque, v95, &v89);
        LODWORD(v89) = self->_lastLayout.mainWindowCurrentHeight;
        v97 = 0;
        HUDUIFrameGetSizeInPoints(v13, &v97 + 1, &v97);
        LODWORD(v97) = self->_lastLayout.insightsCurrentHeight;
        v28 = HUDGetGlobalConfig();
        [trackingCopy safeAreaInsets];
        v81 = v29;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        *&v30 = width / v86;
        v87 = *&v30;
        v82 = width;
        v83 = height;
        v36 = width / *&v30;
        v84 = *&v30;
        v37 = height / *&v30;
        v38 = 1.0;
        if ((*(v28 + 17) & 1) == 0)
        {
          if ((v36 / v37) >= 0.75)
          {
            v38 = *(v28 + 11);
          }

          else
          {
            v38 = *(v28 + 11) * 1.5;
          }
        }

        v39 = *(v28 + 9);
        if (!*([trackingCopy layerState] + 70))
        {
          v39 = *(v28 + 10);
        }

        if (*([trackingCopy layerState] + 70) && *(v28 + 9) == 16)
        {
          v38 = v38 * 0.5;
        }

        if (!*([trackingCopy layerState] + 70) && *(v28 + 10) == 16)
        {
          v38 = v38 * 0.5;
        }

        if (v39 == 16)
        {
          v40 = 80.0;
        }

        else
        {
          v40 = *(v28 + 36);
        }

        v41 = (v38 * v36);
        if (v41 >= v37)
        {
          v41 = v37;
        }

        if (v40 < v41)
        {
          v40 = v41;
        }

        if (v40 <= v36)
        {
          v42 = v40;
        }

        else
        {
          v42 = v36;
        }

        v43 = v37 - v33;
        v44 = v43 + -20.0;
        if (v44 <= 0.0)
        {
          v45 = v37;
        }

        else
        {
          v45 = v44;
        }

        v46 = (v42 / LODWORD(v95[0])) * v89;
        if (v46 <= v45)
        {
          v45 = (v42 / LODWORD(v95[0])) * v89;
        }

        else
        {
          v42 = v42 * (v45 / v46);
        }

        self->_lastLayout.mainHUDWindow.w = v42;
        self->_lastLayout.mainHUDWindow.h = v45;
        if (*(v28 + 8))
        {
          v47 = *(v28 + 8);
        }

        else
        {
          v47 = 12;
        }

        p_lastLayout = &self->_lastLayout;
        v49 = v33 + 10.0;
        v50 = v31 + 10.0;
        v51 = v35 + 10.0;
        if (*([trackingCopy layerState] + 67))
        {
          self->_lastLayout.mainHUDWindow.x = *([trackingCopy layerState] + 28);
          v52 = *([trackingCopy layerState] + 29);
        }

        else
        {
          if (v47 == 1)
          {
            *&p_lastLayout->mainHUDWindow.x = *(v28 + 7);
LABEL_54:
            if (HUDUIFrameIsValid(v13))
            {
              w = self->_lastLayout.mainHUDWindow.w;
              if ((v47 & 4) != 0)
              {
                x = v50;
              }

              else
              {
                x = (self->_lastLayout.mainHUDWindow.x + w) + 10.0;
              }

              v55 = v36 - (((w + v50) + v51) + 10.0);
              v56 = HIDWORD(v97);
              v57 = v97;
              v58 = (v55 / HIDWORD(v97)) * v97;
              self->_lastLayout.insights.w = v55;
              self->_lastLayout.insights.h = v58;
              if ((~v47 & 6) == 0)
              {
                v59 = v36 - (v50 + v51);
                v58 = (v59 / v56) * v57;
                self->_lastLayout.insights.w = v59;
                self->_lastLayout.insights.h = v58;
LABEL_64:
                y = (v58 + v49) + 10.0;
                if (y < self->_lastLayout.mainHUDWindow.y)
                {
                  y = self->_lastLayout.mainHUDWindow.y;
                }

                self->_lastLayout.mainHUDWindow.y = y;
                goto LABEL_67;
              }

              if ((v47 & 8) == 0)
              {
                goto LABEL_64;
              }
            }

            else
            {
              x = self->_lastLayout.insights.x;
              v49 = self->_lastLayout.insights.y;
            }

LABEL_67:
            self->_lastLayout.insights.x = x + 0.0;
            *&self->_lastLayout.mainHUDWindow.x = vadd_f32(*&self->_lastLayout.mainHUDWindow.x, 0);
            self->_lastLayout.insights.y = v49 + 0.0;
            if (*(HUDGetGlobalConfig() + 24) == 1)
            {
              v61 = HUDSignpostGetOSLog(0);
              if (os_signpost_enabled(v61) && os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                v62 = *(v28 + 9);
                v63 = self->_lastLayout.mainHUDWindow.x;
                v64 = self->_lastLayout.mainHUDWindow.y;
                v65 = self->_lastLayout.mainHUDWindow.w;
                h = self->_lastLayout.mainHUDWindow.h;
                *buf = 134221568;
                *&buf[4] = v62;
                *&buf[12] = 2048;
                *&buf[14] = v63;
                *&buf[22] = 2048;
                *&buf[24] = v64;
                *&buf[32] = 2048;
                *&buf[34] = v65;
                *&buf[42] = 2048;
                *&buf[44] = h;
                *&buf[52] = 2048;
                *&buf[54] = v82;
                v99 = 2048;
                v100 = v83;
                v101 = 2048;
                v102 = v86;
                v103 = 2048;
                v104 = v85;
                v105 = 2048;
                v106 = 0;
                v107 = 2048;
                v108 = 0;
                v109 = 2048;
                v110 = v38;
                v111 = 2048;
                v112 = v42;
                v113 = 2048;
                v114 = v45;
                v115 = 2048;
                v116 = v84;
                _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "[libMTLHud] layout frame = %llu, main = %f,%f,%f,%f, dim = %f,%f,%f,%f,%f%f scale = %f, expectedWH = %f,%f, contentsScale = %f", buf, 0x98u);
              }
            }

            HUDUIRectMul(&self->_lastLayout, v87);
            HUDUIRectMul(&self->_lastLayout.insights, v87);
            self->_lastLayout.contentsScale = v87;

            memset(buf, 0, 56);
            if (HUDUIFrameIsValid(opaque))
            {
              *buf = opaque;
              *&buf[12] = p_lastLayout->mainHUDWindow;
              *&buf[8] = *(HUDGetGlobalConfig() + 10);
              v67 = 1;
            }

            else
            {
              v67 = 0;
            }

            if (*([trackingCopy layerState] + 70) && HUDUIFrameIsValid(v13) && *(HUDGetGlobalConfig() + 3) == 1)
            {
              v68 = &buf[28 * v67];
              *v68 = v13;
              *(v68 + 12) = self->_lastLayout.insights;
              *(v68 + 2) = *(HUDGetGlobalConfig() + 10);
              ++v67;
            }

            v95[0] = 0;
            v95[1] = v95;
            v95[2] = 0x3042000000;
            v95[3] = __Block_byref_object_copy__0;
            v95[4] = __Block_byref_object_dispose__0;
            objc_initWeak(&v96, self);
            v89 = 0;
            v90 = &v89;
            v91 = 0x3032000000;
            v92 = __Block_byref_object_copy__415;
            v93 = __Block_byref_object_dispose__416;
            v94 = self->_snapshotTexture;
            if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
            {
              [HUDMTLLayerOverlay initWithDevice:];
            }

            v10 = _HUDMTLOverlayGlobalInstance_tracker;
            texture3 = [drawableCopy texture];
            v70 = v90[5];
            v71 = *[trackingCopy layerState];
            frameEvent = [trackingCopy frameEvent];
            v88[0] = _NSConcreteStackBlock;
            v88[1] = 3221225472;
            v88[2] = __52__HUDMTLLayerOverlay_layerTracking_presentDrawable___block_invoke;
            v88[3] = &unk_68F70;
            v88[4] = self;
            v88[5] = &v89;
            v88[6] = v95;
            LOBYTE(v10) = HUDUIDrawFrames(v10, texture3, v70, buf, v67, v71, frameEvent, [trackingCopy frameEventValue], v88);

            snapshotTexture = self->_snapshotTexture;
            self->_snapshotTexture = 0;

            _Block_object_dispose(&v89, 8);
            _Block_object_dispose(v95, 8);
            objc_destroyWeak(&v96);
            goto LABEL_82;
          }

          v75 = v50;
          if ((v47 & 4) == 0 || (v75 = (v36 - self->_lastLayout.mainHUDWindow.w) - v51, (~v47 & 6) != 0))
          {
            v76 = fmax(v75, 0.0);
          }

          else
          {
            v76 = v75 * 0.5;
          }

          p_lastLayout->mainHUDWindow.x = v76;
          v77 = v49;
          if ((v47 & 0x10) == 0 || (v78 = v81 + 10.0, v77 = (v37 - self->_lastLayout.mainHUDWindow.h) - v78, (~v47 & 0x18) != 0))
          {
            v52 = fmax(v77, 0.0);
          }

          else
          {
            v52 = v77 * 0.5;
          }
        }

        self->_lastLayout.mainHUDWindow.y = v52;
        goto LABEL_54;
      }
    }

LABEL_19:
    v19 = trackingCopy;
    goto LABEL_20;
  }

  LOBYTE(v10) = 0;
LABEL_82:
  os_unfair_lock_unlock(&self->_layer.frameSwapLock);
  if (*(HUDGetGlobalConfig() + 16) == 1)
  {
    [HUDMTLLayerOverlay layerTracking:presentDrawable:];
  }

LABEL_84:

  return v10;
}

void __52__HUDMTLLayerOverlay_layerTracking_presentDrawable___block_invoke(void *a1)
{
  v1 = a1[5];
  if (*(*(v1 + 8) + 40))
  {
    if (*(a1[4] + 176))
    {
      v2[0] = _NSConcreteStackBlock;
      v2[1] = 3221225472;
      v2[2] = __52__HUDMTLLayerOverlay_layerTracking_presentDrawable___block_invoke_2;
      v2[3] = &unk_68F48;
      v2[4] = a1[6];
      v2[5] = v1;
      HUDDispatchQueueAsync(v2);
    }
  }
}

void __52__HUDMTLLayerOverlay_layerTracking_presentDrawable___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  if (WeakRetained)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = v3;
    if (v3)
    {
      v5 = malloc_type_malloc(4 * [v3 width] * objc_msgSend(v3, "height"), 0x100004077774924uLL);
      v6 = 4 * [v4 width];
      memset(v7, 0, 24);
      v7[3] = [v4 width];
      v7[4] = [v4 height];
      v7[5] = 1;
      [v4 getBytes:v5 bytesPerRow:v6 fromRegion:v7 mipmapLevel:0];
      if (v5)
      {
        (*(WeakRetained[22] + 16))(WeakRetained[22], [v4 width], objc_msgSend(v4, "height"), v5);
      }

      free(v5);
    }
  }
}

- (void)layerTracking:(id)tracking setSnapshotTexture:(id)texture callback:(id)callback
{
  objc_storeStrong(&self->_snapshotTexture, texture);
  textureCopy = texture;
  callbackCopy = callback;
  v9 = [callbackCopy copy];

  snapshotCallback = self->_snapshotCallback;
  self->_snapshotCallback = v9;
}

- (void)_drawablePresentedCommon:(id)common
{
  v3 = __chkstk_darwin(self, a2, common);
  v5 = v4;
  v6 = +[MTLCaptureManager sharedCaptureManager];
  if ([v6 isCapturing])
  {
    v7 = *(HUDGetGlobalConfig() + 18);

    if ((v7 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  if ([v5 isMainLayer])
  {
    if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
    {
      HUDMTLOverlayResetStats_cold_1();
    }

    v8 = HIBYTE(word_767B8);
    HIBYTE(word_767B8) = 0;
    if (v8 == 1)
    {
      [v5 resetStats];
    }
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x9010000000;
  v33[3] = &unk_5D621;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  lastDrawableState = [v5 lastDrawableState];
  v11 = lastDrawableState[1];
  v10 = lastDrawableState[2];
  v34 = *lastDrawableState;
  v35 = v11;
  v36 = v10;
  v12 = lastDrawableState[6];
  v14 = lastDrawableState[3];
  v13 = lastDrawableState[4];
  v39 = lastDrawableState[5];
  v40 = v12;
  v37 = v14;
  v38 = v13;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x16A810000000;
  v31[3] = &unk_5D621;
  memset(v32, 0, 512);
  memcpy(v32, [v5 layerState], sizeof(v32));
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3042000000;
  v29[3] = __Block_byref_object_copy__0;
  v29[4] = __Block_byref_object_dispose__0;
  objc_initWeak(&v30, v3);
  if ((*(HUDGetGlobalConfig() + 1) & 1) != 0 || *([v5 layerState] + 66) || *(HUDGetGlobalConfig() + 31) == 1)
  {
    v15 = v3[11];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __47__HUDMTLLayerOverlay__drawablePresentedCommon___block_invoke;
    v28[3] = &unk_68F98;
    v28[4] = v3;
    v28[5] = v29;
    v28[6] = v31;
    v28[7] = v33;
    HUDDispatchQueueGroupAsync(v15, v28);
  }

  v16 = *HUDGetGlobalConfig();
  if (*([v5 layerState] + 65))
  {
    if (!*([v5 layerState] + 64))
    {
      goto LABEL_21;
    }

LABEL_18:
    if ((*(HUDGetGlobalConfig() + 73) & 0x40) != 0)
    {
      v17 = v3[11];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = __47__HUDMTLLayerOverlay__drawablePresentedCommon___block_invoke_2;
      v25[3] = &unk_68FC0;
      v27 = v29;
      v26 = v5;
      HUDDispatchQueueGroupAsync(v17, v25);
    }

    v18 = v3[11];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __47__HUDMTLLayerOverlay__drawablePresentedCommon___block_invoke_3;
    v19[3] = &unk_68FE8;
    v22 = v29;
    v23 = v31;
    v24 = v33;
    v20 = v5;
    v21 = v3;
    HUDDispatchQueueGroupAsync(v18, v19);

    goto LABEL_21;
  }

  if (v16)
  {
    goto LABEL_18;
  }

LABEL_21:
  _Block_object_dispose(v29, 8);
  objc_destroyWeak(&v30);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
LABEL_22:
}

void __47__HUDMTLLayerOverlay__drawablePresentedCommon___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _log:*(*(a1 + 48) + 8) + 32 drawableState:*(*(a1 + 56) + 8) + 32];
    WeakRetained = v3;
  }
}

void __47__HUDMTLLayerOverlay__drawablePresentedCommon___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained generateQRCodeContent:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __47__HUDMTLLayerOverlay__drawablePresentedCommon___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 21);
    [(os_unfair_lock_s *)WeakRetained drawUpdatedFrame:*(*(a1 + 56) + 8) + 32 drawableState:*(*(a1 + 64) + 8) + 32];
    if (*([*(a1 + 32) layerState] + 70))
    {
      [(os_unfair_lock_s *)WeakRetained drawInsightsFrame:*(*(a1 + 56) + 8) + 32 drawableState:*(*(a1 + 64) + 8) + 32];
    }

    [*(a1 + 40) _log:*(*(a1 + 56) + 8) + 32 drawableState:*(*(a1 + 64) + 8) + 32];
    os_unfair_lock_unlock(WeakRetained + 21);
  }
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_layer.frameSwapLock);
  HUDUIReleaseFrame(&self->_layer.mainWindowFrame.tempFrame);
  HUDUIReleaseFrame(&self->_layer.mainWindowFrame);
  HUDUIReleaseFrame(&self->_layer.insightsWindowFrame.tempFrame);
  HUDUIReleaseFrame(&self->_layer.insightsWindowFrame);
  os_unfair_lock_unlock(&self->_layer.frameSwapLock);
  v3.receiver = self;
  v3.super_class = HUDMTLLayerOverlay;
  [(HUDMTLLayerOverlay *)&v3 dealloc];
}

- (void)drawUpdatedFrame:(HUDMTLLayerState *)frame drawableState:(HUDMTLLayerDrawableState *)state
{
  if (*(HUDGetGlobalConfig() + 16) == 1)
  {
    drawUpdatedFrame_drawableState___renderBegin = HUDCurrentTimeInNs();
  }

  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * frame->frameNumber, 3) <= 0x222222222222222uLL)
  {
    if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
    {
      HUDMTLOverlayResetStats_cold_1();
    }

    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    v8 = HUDGetGlobalConfig();
    HUDGPUTimeTrackerEnableEncoderGPUTimeSampling(GlobalInstance, *(v8 + 4));
  }

  if (state->drawableWidth && state->drawableHeight)
  {
    frameNumber = frame->frameNumber;
    isMainLayer = frame->isMainLayer;
    v11 = HUDGetGlobalConfig();
    v12 = 36;
    if (!isMainLayer)
    {
      v12 = 40;
    }

    v13 = *&v11[v12];
    if (self->_layer.mainWindowFrame.currentHeight == 0.0)
    {
      if (v13 == 16)
      {
        v14 = 80.0;
        v15 = 16;
LABEL_18:
        opaque = self->_layer.mainWindowFrame.tempFrame.opaque;
        if (!HUDUIFrameIsValid(opaque))
        {
          if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
          {
            HUDMTLOverlayResetStats_cold_1();
          }

          opaque = HUDUICreateFrame(_HUDMTLOverlayGlobalInstance_tracker, v14, 1u, fmaxf(state->contentsScale, 2.0), v14, 0);
          HUDUIReleaseFrame(&self->_layer.mainWindowFrame.tempFrame);
          self->_layer.mainWindowFrame.tempFrame.opaque = opaque;
        }

        if (HUDUIBeginFrame(opaque))
        {
          v17 = +[_CADeveloperHUDProperties instance];
          mainWindow = [v17 mainWindow];
          [mainWindow draw:frame drawableState:state fontSize:self->_layer.fontSize frame:opaque layout:v15 height:&self->_layer.mainWindowFrame.currentHeight qrCode:self->_qrCode];

          objc_initWeak(&location, self);
          v19 = frame->frameNumber;
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = __53__HUDMTLLayerOverlay_drawUpdatedFrame_drawableState___block_invoke;
          v21[3] = &unk_69038;
          objc_copyWeak(v22, &location);
          v21[4] = self;
          v22[1] = opaque;
          v22[2] = frameNumber;
          v23 = v14;
          v24 = v14;
          HUDUIFlushFrame(opaque, v19, v21);
          if (*(HUDGetGlobalConfig() + 16) == 1)
          {
            v20 = HUDCurrentTimeInNs();
            HUDInternalPerfMetricRenderAdd(v20 - drawUpdatedFrame_drawableState___renderBegin);
          }

          objc_destroyWeak(v22);
          objc_destroyWeak(&location);
        }

        return;
      }
    }

    else
    {
      v14 = 80.0;
      v15 = 16;
      if (state->drawableHeight < 0xC9 || v13 == 16)
      {
        goto LABEL_18;
      }
    }

    v14 = *(HUDGetGlobalConfig() + 29);
    v15 = v13;
    goto LABEL_18;
  }
}

void __53__HUDMTLLayerOverlay_drawUpdatedFrame_drawableState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = WeakRetained[11];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __53__HUDMTLLayerOverlay_drawUpdatedFrame_drawableState___block_invoke_2;
    v6[3] = &unk_69010;
    v7 = v3;
    v9 = *(a1 + 64);
    v8 = *(a1 + 48);
    v5 = v3;
    HUDDispatchQueueGroupAsync(v4, v6);
  }
}

uint64_t __53__HUDMTLLayerOverlay_drawUpdatedFrame_drawableState___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = v2;
    os_unfair_lock_lock(v2 + 20);
    if (*(HUDGetGlobalConfig() + 16) == 1)
    {
      kHUDColorAttributeName_block_invoke__renderBegin = HUDCurrentTimeInNs();
    }

    _HUDMTLLayerFrameSwap(*(a1 + 40), &v4[4], *(a1 + 56), *&v4[9]._os_unfair_lock_opaque, *(a1 + 60));
    if (*(HUDGetGlobalConfig() + 16) == 1)
    {
      __53__HUDMTLLayerOverlay_drawUpdatedFrame_drawableState___block_invoke_2_cold_1();
    }

    os_unfair_lock_unlock(v4 + 20);
  }

  return _objc_release_x1();
}

- (void)drawInsightsFrame:(HUDMTLLayerState *)frame drawableState:(HUDMTLLayerDrawableState *)state
{
  if (*(HUDGetGlobalConfig() + 16) == 1)
  {
    drawInsightsFrame_drawableState___renderBegin = HUDCurrentTimeInNs();
  }

  if (*(HUDGetGlobalConfig() + 3) == 1)
  {
    frameNumber = frame->frameNumber;
    opaque = self->_layer.insightsWindowFrame.tempFrame.opaque;
    drawableWidth = state->drawableWidth;
    contentsScale = state->contentsScale;
    v11 = fmin((((drawableWidth - self->_lastLayout.mainHUDWindow.w) / contentsScale) + -10.0), 1024.0);
    v12 = fmin((drawableWidth / contentsScale), 1024.0);
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    if (!HUDUIFrameIsValid(self->_layer.insightsWindowFrame.tempFrame.opaque))
    {
      if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
      {
        HUDMTLOverlayResetStats_cold_1();
      }

      opaque = HUDUICreateFrame(_HUDMTLOverlayGlobalInstance_tracker, v13, 1u, fmaxf(state->contentsScale, 2.0), v13, 0);
      self->_layer.insightsWindowFrame.tempFrame.opaque = opaque;
    }

    if (HUDUIBeginFrame(opaque))
    {
      v14 = +[_CADeveloperHUDProperties instance];
      insightsWindow = [v14 insightsWindow];
      self->_layer.insightsWindowFrame.hasContent = [insightsWindow draw:frame drawableState:state fontSize:self->_layer.fontSize frame:opaque width:&self->_layer.insightsWindowFrame.contentWidth height:&self->_layer.insightsWindowFrame.currentHeight];

      objc_initWeak(&location, self);
      v16 = frame->frameNumber;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __54__HUDMTLLayerOverlay_drawInsightsFrame_drawableState___block_invoke;
      v18[3] = &unk_69088;
      objc_copyWeak(v19, &location);
      v18[4] = self;
      v19[1] = opaque;
      v19[2] = frameNumber;
      v20 = v13;
      HUDUIFlushFrame(opaque, v16, v18);
      if (*(HUDGetGlobalConfig() + 16) == 1)
      {
        v17 = HUDCurrentTimeInNs();
        HUDInternalPerfMetricRenderAdd(v17 - drawInsightsFrame_drawableState___renderBegin);
      }

      objc_destroyWeak(v19);
      objc_destroyWeak(&location);
    }
  }
}

void __54__HUDMTLLayerOverlay_drawInsightsFrame_drawableState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = WeakRetained[11];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __54__HUDMTLLayerOverlay_drawInsightsFrame_drawableState___block_invoke_2;
    v5[3] = &unk_69060;
    objc_copyWeak(v6, &location);
    v7 = *(a1 + 64);
    v4 = *(a1 + 56);
    v6[1] = *(a1 + 48);
    v6[2] = v4;
    HUDDispatchQueueGroupAsync(v3, v5);
    objc_destroyWeak(v6);
    objc_destroyWeak(&location);
  }
}

uint64_t __54__HUDMTLLayerOverlay_drawInsightsFrame_drawableState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 20);
    if (*(HUDGetGlobalConfig() + 16) == 1)
    {
      kHUDColorAttributeName_block_invoke_2__renderBegin = HUDCurrentTimeInNs();
    }

    _HUDMTLLayerFrameSwap(*(a1 + 40), &v4[12], *(a1 + 56), *&v4[17]._os_unfair_lock_opaque, *(a1 + 56));
    if (*(HUDGetGlobalConfig() + 16) == 1)
    {
      __54__HUDMTLLayerOverlay_drawInsightsFrame_drawableState___block_invoke_2_cold_1();
    }

    os_unfair_lock_unlock(v4 + 20);
  }

  return _objc_release_x1();
}

- (CGRect)overlayLayoutRectInPoints
{
  contentsScale = self->_lastLayout.contentsScale;
  v3 = (self->_lastLayout.mainHUDWindow.x / contentsScale);
  v4 = (self->_lastLayout.mainHUDWindow.y / contentsScale);
  v5 = (self->_lastLayout.mainHUDWindow.w / contentsScale);
  currentHeight = self->_layer.mainWindowFrame.currentHeight;
  result.size.height = currentHeight;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)generateQRCodeContent:(id)content
{
  contentCopy = content;
  v5 = objc_autoreleasePoolPush();
  if (*(HUDGetGlobalConfig() + 35))
  {
    v6 = *[contentCopy layerState];
    if (!(v6 % *(HUDGetGlobalConfig() + 35)))
    {
      v30 = 0;
      HUDSystemStateGetSnapshot(&v30);
      GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
      ValueRecord = HUDGPUTimeTrackerGetValueRecord(GlobalInstance, 0);
      v35[0] = @"drawable";
      v33[0] = @"frame";
      v29 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", *([contentCopy lastDrawableState] + 1));
      v34[0] = v29;
      v33[1] = @"logical-frame";
      v28 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", *([contentCopy lastDrawableState] + 2));
      v34[1] = v28;
      v33[2] = @"drawable-id";
      v27 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *[contentCopy lastDrawableState]);
      v34[2] = v27;
      v33[3] = @"frame-interval";
      v26 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *([contentCopy lastDrawableState] + 7));
      v34[3] = v26;
      v33[4] = @"presented-time";
      v25 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *([contentCopy lastDrawableState] + 4));
      v34[4] = v25;
      v24 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:5];
      v35[1] = @"stats";
      v36[0] = v24;
      v31[0] = @"gptk";
      if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
      {
        [HUDMTLLayerOverlay initWithDevice:];
      }

      v9 = [NSNumber numberWithBool:word_767B8, self];
      v32[0] = v9;
      v31[1] = @"gpu-time";
      v10 = [NSNumber numberWithDouble:*(ValueRecord + 1028)];
      v32[1] = v10;
      v31[2] = @"app-memory";
      v11 = [NSNumber numberWithUnsignedLongLong:v30[1]];
      v32[2] = v11;
      v31[3] = @"metal-memory";
      v12 = [NSNumber numberWithUnsignedLongLong:*v30];
      v32[3] = v12;
      v31[4] = @"marker";
      v13 = +[_CADeveloperHUDProperties instance];
      frameMarker = [v13 frameMarker];
      v15 = frameMarker;
      v16 = @"none";
      if (frameMarker)
      {
        v16 = frameMarker;
      }

      v32[4] = v16;
      v17 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:5];
      v36[1] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

      v19 = [NSJSONSerialization dataWithJSONObject:v18 options:2 error:0];
      if (v19)
      {
        if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
        {
          [HUDMTLLayerOverlay initWithDevice:];
        }

        v20 = HUDUIOverlayGetCommandQueue(_HUDMTLOverlayGlobalInstance_tracker);
        v21 = HUDQrCodeGenerateTexture(v19, 0x100u, v20);
        v22 = *(v23 + 160);
        *(v23 + 160) = v21;
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_log:(HUDMTLLayerState *)_log drawableState:(HUDMTLLayerDrawableState *)state
{
  if (_log->isMainLayer)
  {
    if (*(HUDGetGlobalConfig() + 16) == 1)
    {
      _log_drawableState___loggingBegin = HUDCurrentTimeInNs();
    }

    v6 = HUDGetGlobalConfig();
    if (*(v6 + 31) == 1)
    {
      v7 = HUDSignpostGetOSLog(2);
      if (os_signpost_enabled(v7))
      {
        v8 = +[_CADeveloperHUDProperties instance];
        mainWindow = [v8 mainWindow];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = __41__HUDMTLLayerOverlay__log_drawableState___block_invoke;
        v30[3] = &unk_690B0;
        v31 = v7;
        [mainWindow requestMetrics:v30];
      }
    }

    if ((*(v6 + 1) & 1) != 0 || _log->userLoggingEnabled)
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = __41__HUDMTLLayerOverlay__log_drawableState___block_invoke_463;
      v29[3] = &__block_descriptor_40_e5_v8__0l;
      v29[4] = _log;
      v10 = objc_retainBlock(v29);
      GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
      ValueRecord = HUDGPUTimeTrackerGetValueRecord(GlobalInstance, 0);
      if (ValueRecord)
      {
        v13 = *(ValueRecord + 1028);
      }

      else
      {
        v13 = 0;
      }

      presentedDeltaTime = state->presentedDeltaTime;
      if (presentedDeltaTime)
      {
        v15 = &_log_drawableState__logBuffer - _log_drawableState__logBufferPos + 986;
        v16 = snprintf(_log_drawableState__logBufferPos, v15, ",%.2f,%.2f", presentedDeltaTime * 0.000001, v13 * 0.000001);
        if (v16 < 1 || v15 <= v16)
        {
          *_log_drawableState__logBufferPos = 0;
          (v10[2])(v10);
          _log_drawableState__logBufferPos += snprintf(_log_drawableState__logBufferPos, &_log_drawableState__logBuffer - _log_drawableState__logBufferPos + 986, ",%.2f,%.2f", state->presentedDeltaTime * 0.000001, v13 * 0.000001);
        }

        else
        {
          _log_drawableState__logBufferPos += v16;
          if (_log_drawableState__logTime >= 0x3B9ACA01)
          {
            (v10[2])(v10);
          }
        }
      }

      v17 = HUDSignpostGetOSLog(0);
      if (os_signpost_enabled(v17))
      {
        v18 = +[_CADeveloperHUDProperties instance];
        frameMarker = [v18 frameMarker];

        v20 = v17;
        v21 = v20;
        layerID = _log->layerID;
        if (layerID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          frameNumber = _log->frameNumber;
          logicalFrameNumber = _log->logicalFrameNumber;
          v25 = state->presentedDeltaTime / 1000000000.0;
          *buf = 134350850;
          presentedTime = state->presentedTime;
          drawableID = state->drawableID;
          v33 = layerID;
          v34 = 2050;
          v35 = frameNumber;
          v36 = 2050;
          v37 = logicalFrameNumber;
          v38 = 2050;
          v39 = v25;
          v40 = 2050;
          v41 = presentedTime / 1000000000.0;
          v28 = @"none";
          v42 = 2050;
          v43 = drawableID;
          if (frameMarker)
          {
            v28 = frameMarker;
          }

          v44 = 2050;
          v45 = v13;
          v46 = 2114;
          v47 = v28;
          _os_signpost_emit_with_name_impl(&dword_0, v21, OS_SIGNPOST_EVENT, layerID, "DrawablePresent", "layer: %{public, name=layer}llx\nframe: %{public, name=frame}zu\nlogical-frame: %{public, name=logical-frame}zu\nframe-interval: %{public, name=frame-interval}f\npresented-time: %{public, name=presented-time}f\ndrawable-id: %{public, name=drawable-id}llu\ngpu-time: %{public, name=gpu-time}llu\nmarker: %{public, name=marker}@", buf, 0x52u);
        }
      }

      _log_drawableState__logTime += state->updateDeltaNs;
      if (*(HUDGetGlobalConfig() + 16) == 1)
      {
        [HUDMTLLayerOverlay _log:drawableState:];
      }
    }
  }
}

void __41__HUDMTLLayerOverlay__log_drawableState___block_invoke(uint64_t a1, void *a2)
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [a2 allValues];
  v26 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v26)
  {
    v25 = *v33;
    do
    {
      v3 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v3;
        v4 = *(*(&v32 + 1) + 8 * v3);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v5 = [v4 metrics];
        v6 = [v5 countByEnumeratingWithState:&v28 objects:v44 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v29;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v29 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v28 + 1) + 8 * i);
              if ([v10 enabled])
              {
                v11 = [v10 descriptor];
                if (v11[4] != 2 && ((v11[6] & 2) == 0 || MTLHudIsInternalInstall()) && ([v10 timedOut] & 1) == 0)
                {
                  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
                  CurrentFrame = HUDGPUTimeTrackerGetCurrentFrame(GlobalInstance);
                  v14 = [v10 metricType];
                  v15 = *(a1 + 32);
                  v16 = v15;
                  v17 = CurrentFrame - 1;
                  if (v14 == 2)
                  {
                    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
                    {
                      v18 = *([v10 descriptor] + 1);
                      v19 = *[v10 descriptor];
                      v20 = [v10 stringValue];
                      *buf = 134349826;
                      v37 = CurrentFrame;
                      v38 = 2114;
                      v39 = v18;
                      v40 = 2114;
                      v41 = v19;
                      v42 = 2114;
                      v43 = v20;
                      _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_EVENT, CurrentFrame, "MetricValue", "frame: %{public, name=time}zu\nidentifier: %{public, name=identifier}@\nname: %{public, name=name}@\nvalue: %{public, name=value}@\n", buf, 0x2Au);
                    }
                  }

                  else if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
                  {
                    v21 = *([v10 descriptor] + 1);
                    v22 = *[v10 descriptor];
                    v23 = *([v10 record] + 1028);
                    *buf = 134349826;
                    v37 = CurrentFrame;
                    v38 = 2114;
                    v39 = v21;
                    v40 = 2114;
                    v41 = v22;
                    v42 = 2050;
                    v43 = v23;
                    _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_EVENT, CurrentFrame, "MetricValue", "frame: %{public, name=time}zu\nidentifier: %{public, name=identifier}@\nname: %{public, name=name}@\nvalue: %{public, name=value}f\n", buf, 0x2Au);
                  }
                }
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v28 objects:v44 count:16];
          }

          while (v7);
        }

        v3 = v27 + 1;
      }

      while ((v27 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v26);
  }
}

void __41__HUDMTLLayerOverlay__log_drawableState___block_invoke_463(uint64_t a1)
{
  v6 = 0;
  HUDSystemStateGetSnapshot(&v6);
  NSLog(@"metal-HUD: %zu,%.2f,%.2f%s", **(a1 + 32), *v6 * 0.0009765625 * 0.0009765625, v6[1] * 0.0009765625 * 0.0009765625, &_log_drawableState__logBuffer);
  v2 = HUDSignpostGetOSLog(0);
  if (os_signpost_enabled(v2) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = **(a1 + 32);
    v4 = *v6 * 0.0009765625 * 0.0009765625;
    v5 = v6[1] * 0.0009765625 * 0.0009765625;
    *buf = 134218754;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    v13 = 2080;
    v14 = &_log_drawableState__logBuffer;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "metal-HUD: %zu,%.2f,%.2f%s", buf, 0x2Au);
  }

  _log_drawableState__logTime = 0;
  _log_drawableState__logBufferPos = &_log_drawableState__logBuffer;
}

void __53__HUDMTLLayerOverlay_drawUpdatedFrame_drawableState___block_invoke_2_cold_1()
{
  v0 = HUDCurrentTimeInNs() - kHUDColorAttributeName_block_invoke__renderBegin;

  HUDInternalPerfMetricRenderAdd(v0);
}

void __54__HUDMTLLayerOverlay_drawInsightsFrame_drawableState___block_invoke_2_cold_1()
{
  v0 = HUDCurrentTimeInNs() - kHUDColorAttributeName_block_invoke_2__renderBegin;

  HUDInternalPerfMetricRenderAdd(v0);
}

@end