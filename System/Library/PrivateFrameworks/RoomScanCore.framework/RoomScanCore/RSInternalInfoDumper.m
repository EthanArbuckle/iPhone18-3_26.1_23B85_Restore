@interface RSInternalInfoDumper
- (RSInternalInfoDumper)init;
@end

@implementation RSInternalInfoDumper

- (RSInternalInfoDumper)init
{
  v29.receiver = self;
  v29.super_class = RSInternalInfoDumper;
  v2 = [(RSInternalInfoDumper *)&v29 init];
  v5 = v2;
  if (v2)
  {
    v2->_enableLiveDump = 0;
    v6 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v3, v4);
    v8 = objc_msgSend_BOOLForKey_(v6, v7, @"com.apple.roomscancore.debug_info_image_dump");

    v5->_enableARFrameRGB = v8;
    v11 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v9, v10);
    v13 = objc_msgSend_BOOLForKey_(v11, v12, @"com.apple.roomscancore.debug_info_image_dump");

    v5->_enableARFrameDepth = v13;
    v16 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v14, v15);
    v18 = objc_msgSend_BOOLForKey_(v16, v17, @"com.apple.roomscancore.debug_info_arframe_dump");

    v5->_enableARFrameDump = v18;
    v21 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v19, v20);
    objc_msgSend_doubleForKey_(v21, v22, @"com.apple.roomscancore.debug_info_max_keyframe_fps");
    v5->_maxKeyframeFPS = v23;

    v24 = dispatch_queue_create("RoomScanCore.InternalInfoDumper", 0);
    save_queue = v5->_save_queue;
    v5->_save_queue = v24;

    v26 = dispatch_group_create();
    save_group = v5->_save_group;
    v5->_save_group = v26;
  }

  return v5;
}

@end