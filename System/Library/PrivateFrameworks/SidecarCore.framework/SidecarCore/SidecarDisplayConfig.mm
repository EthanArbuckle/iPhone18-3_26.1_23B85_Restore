@interface SidecarDisplayConfig
- (CGSize)size;
- (SidecarDisplayConfig)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SidecarDisplayConfig

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SidecarDisplayConfig allocWithZone:?]];
  objc_storeStrong(&v4->_cipher, self->_cipher);
  objc_storeStrong(&v4->_codec, self->_codec);
  objc_storeStrong(&v4->_configureDisplayExclusiveMode, self->_configureDisplayExclusiveMode);
  objc_storeStrong(&v4->_device, self->_device);
  objc_storeStrong(&v4->_displayID, self->_displayID);
  objc_storeStrong(&v4->_enableTimeSync, self->_enableTimeSync);
  objc_storeStrong(&v4->_framerate, self->_framerate);
  objc_storeStrong(&v4->_hdr, self->_hdr);
  objc_storeStrong(&v4->_keyFrameInterval, self->_keyFrameInterval);
  objc_storeStrong(&v4->_lowLatency, self->_lowLatency);
  objc_storeStrong(&v4->_rtcp, self->_rtcp);
  objc_storeStrong(&v4->_rtcpTimeoutInterval, self->_rtcpTimeoutInterval);
  v4->_scale = self->_scale;
  objc_storeStrong(&v4->_service, self->_service);
  objc_storeStrong(&v4->_showTouchBar, self->_showTouchBar);
  objc_storeStrong(&v4->_showSideBar, self->_showSideBar);
  v4->_size = self->_size;
  objc_storeStrong(&v4->_tilesPerFrame, self->_tilesPerFrame);
  v4->_transport = self->_transport;
  objc_storeStrong(&v4->_dataLink, self->_dataLink);
  objc_storeStrong(&v4->_txMaxBitrate, self->_txMaxBitrate);
  objc_storeStrong(&v4->_txMinBitrate, self->_txMinBitrate);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *MEMORY[0x277CCA2A0];
  v5 = a3;
  validateXPCCoder(self, v5, v4);
  encodeObject(v5, @"cipher", self->_cipher);
  encodeObject(v5, @"codec", self->_codec);
  encodeObject(v5, @"configureDisplayExclusiveMode", self->_configureDisplayExclusiveMode);
  encodeObject(v5, @"device", self->_device);
  encodeObject(v5, @"displayID", self->_displayID);
  encodeObject(v5, @"framerate", self->_framerate);
  encodeObject(v5, @"hdr", self->_hdr);
  encodeObject(v5, @"keyFrameInterval", self->_keyFrameInterval);
  encodeObject(v5, @"lowLatency", self->_lowLatency);
  encodeObject(v5, @"rtcp", self->_rtcp);
  encodeObject(v5, @"rtcpTimeoutInterval", self->_rtcpTimeoutInterval);
  encodeDouble(v5, @"scale", self->_scale);
  encodeObject(v5, @"service", self->_service);
  encodeDouble(v5, @"size.width", self->_size.width);
  encodeDouble(v5, @"size.height", self->_size.height);
  encodeObject(v5, @"timeSync", self->_enableTimeSync);
  encodeObject(v5, @"touchBar", self->_showTouchBar);
  encodeObject(v5, @"sideBar", self->_showSideBar);
  encodeObject(v5, @"tiles", self->_tilesPerFrame);
  encodeInteger(v5, @"transport", self->_transport);
  encodeObject(v5, @"dataLink", self->_dataLink);
  encodeObject(v5, @"txMinBitrate", self->_txMinBitrate);
  encodeObject(v5, @"txMaxBitrate", self->_txMaxBitrate);
}

- (SidecarDisplayConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = SidecarDisplayConfig;
  v5 = [(SidecarDisplayConfig *)&v48 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    validateXPCCoder(v5, v4, *MEMORY[0x277CCA2A8]);
    v9 = decodeObject(v4, @"cipher", v7);
    cipher = v5->_cipher;
    v5->_cipher = v9;

    v11 = decodeObject(v4, @"codec", v7);
    codec = v5->_codec;
    v5->_codec = v11;

    v13 = decodeObject(v4, @"configureDisplayExclusiveMode", v7);
    configureDisplayExclusiveMode = v5->_configureDisplayExclusiveMode;
    v5->_configureDisplayExclusiveMode = v13;

    v15 = decodeObject(v4, @"device", v6);
    device = v5->_device;
    v5->_device = v15;

    v17 = decodeObject(v4, @"displayID", v7);
    displayID = v5->_displayID;
    v5->_displayID = v17;

    v19 = decodeObject(v4, @"framerate", v7);
    framerate = v5->_framerate;
    v5->_framerate = v19;

    v21 = decodeObject(v4, @"hdr", v7);
    hdr = v5->_hdr;
    v5->_hdr = v21;

    v23 = decodeObject(v4, @"keyFrameInterval", v7);
    keyFrameInterval = v5->_keyFrameInterval;
    v5->_keyFrameInterval = v23;

    v25 = decodeObject(v4, @"lowLatency", v7);
    lowLatency = v5->_lowLatency;
    v5->_lowLatency = v25;

    v27 = decodeObject(v4, @"rtcp", v7);
    rtcp = v5->_rtcp;
    v5->_rtcp = v27;

    v29 = decodeObject(v4, @"rtcpTimeoutInterval", v7);
    rtcpTimeoutInterval = v5->_rtcpTimeoutInterval;
    v5->_rtcpTimeoutInterval = v29;

    v5->_scale = decodeDouble(v4, @"scale");
    v31 = decodeObject(v4, @"service", v8);
    service = v5->_service;
    v5->_service = v31;

    v5->_size.width = decodeDouble(v4, @"size.width");
    v5->_size.height = decodeDouble(v4, @"size.height");
    v33 = decodeObject(v4, @"timeSync", v7);
    enableTimeSync = v5->_enableTimeSync;
    v5->_enableTimeSync = v33;

    v35 = decodeObject(v4, @"touchBar", v7);
    showTouchBar = v5->_showTouchBar;
    v5->_showTouchBar = v35;

    v37 = decodeObject(v4, @"sideBar", v7);
    showSideBar = v5->_showSideBar;
    v5->_showSideBar = v37;

    v39 = decodeObject(v4, @"tiles", v7);
    tilesPerFrame = v5->_tilesPerFrame;
    v5->_tilesPerFrame = v39;

    v5->_transport = decodeInteger(v4, @"transport");
    v41 = decodeObject(v4, @"dataLink", v7);
    dataLink = v5->_dataLink;
    v5->_dataLink = v41;

    v43 = decodeObject(v4, @"txMinBitrate", v7);
    txMinBitrate = v5->_txMinBitrate;
    v5->_txMinBitrate = v43;

    v45 = decodeObject(v4, @"txMaxBitrate", v7);
    txMaxBitrate = v5->_txMaxBitrate;
    v5->_txMaxBitrate = v45;
  }

  return v5;
}

@end