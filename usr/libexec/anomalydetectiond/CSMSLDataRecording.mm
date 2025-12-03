@interface CSMSLDataRecording
- (CSMSLDataRecording)initWithURL:(id)l;
- (id).cxx_construct;
- (void)dumpMetadata;
- (void)recordAccel800:(id)accel800;
- (void)recordAccel:(id)accel;
- (void)recordActivityPhone:(id)phone;
- (void)recordCompanionStatus:(id)status;
- (void)recordDeviceMotion:(id)motion;
- (void)recordGPS:(id)s;
- (void)recordHgAccel:(id)accel;
- (void)recordKappaTrigger:(id)trigger;
- (void)recordMag:(id)mag;
- (void)recordPressure:(id)pressure;
- (void)recordPressureCalibration:(id)calibration;
- (void)recordRemoteAudioOutput:(id)output;
- (void)recordRemoteSample:(id)sample;
- (void)recordRoadInfo:(id)info;
- (void)recordSafetyHertzSample:(id)sample;
- (void)recordSoundPressureLevel:(id)level;
- (void)recordSteps:(id)steps;
- (void)recordTrustedAudio:(id)audio;
- (void)stopAndKeep:(BOOL)keep;
- (void)updateMetadata:(id)metadata;
- (void)writeMetadataToDisk:(id)disk;
@end

@implementation CSMSLDataRecording

- (CSMSLDataRecording)initWithURL:(id)l
{
  lCopy = l;
  v20.receiver = self;
  v20.super_class = CSMSLDataRecording;
  v6 = [(CSMSLDataRecording *)&v20 init];
  if (v6)
  {
    v18 = +[NSFileManager defaultManager];
    path = [lCopy path];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

    v19 = 0;
    v9 = [v18 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v19];
    v17 = v19;
    objc_storeStrong(&v6->_url, l);
    if ((v9 & 1) == 0)
    {
      if (qword_1004568E8 != -1)
      {
        sub_1002A322C();
      }

      v10 = qword_1004568F0;
      if (os_log_type_enabled(qword_1004568F0, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        *&buf[4] = stringByDeletingLastPathComponent;
        *&buf[12] = 2112;
        *&buf[14] = v17;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Unable to create %@ directory: %@", buf, 0x16u);
      }
    }

    [objc_msgSend([NSUserDefaults alloc] initWithSuiteName:{@"com.apple.anomalydetectiond", "setBool:forKey:", 1, @"LoggingEnabled"}];
    if (qword_1004568E8 != -1)
    {
      sub_1002A322C();
    }

    v11 = qword_1004568F0;
    if (os_log_type_enabled(qword_1004568F0, OS_LOG_TYPE_DEBUG))
    {
      url = v6->_url;
      *buf = 138412290;
      *&buf[4] = url;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Writing files to %@.", buf, 0xCu);
    }

    *buf = 1048576000;
    *&buf[8] = 0x3200015180;
    v13 = [(CSMSLDataRecording *)v6 url];
    path2 = [v13 path];
    v15 = path2;
    sub_10029F5A0(&buf[16], [path2 UTF8String]);
    sub_10029F5A0(&v22, "");
    sub_10029F5A0(&__p, "msl");
    v24 = 4;
    v25 = 300;

    sub_1002A30C8();
  }

  return 0;
}

- (void)writeMetadataToDisk:(id)disk
{
  absoluteString = [disk absoluteString];
  v5 = [NSString stringWithFormat:@"file:%@.metadata", absoluteString];

  v6 = [NSURL URLWithString:v5];
  metadata = [(CSMSLDataRecording *)self metadata];
  v12 = 0;
  v8 = [metadata writeToURL:v6 error:&v12];
  v9 = v12;

  if ((v8 & 1) == 0)
  {
    if (qword_1004568E8 != -1)
    {
      sub_1002A322C();
    }

    v10 = qword_1004568F0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 description];
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "error writing meta data file: %@", buf, 0xCu);
    }
  }
}

- (void)stopAndKeep:(BOOL)keep
{
  keepCopy = keep;
  self->_isComplete = 1;
  ptr = self->_writer.__ptr_;
  if (ptr)
  {
    v6 = *(ptr + 1);
    *block = _NSConcreteStackBlock;
    *&block[8] = 3221225472;
    *&block[16] = sub_10029EE78;
    v37 = &unk_100423460;
    v38 = ptr;
    dispatch_sync(v6, block);
    CMMsl::Writer::sync(self->_writer.__ptr_);
    cntrl = self->_writer.__cntrl_;
    self->_writer.__ptr_ = 0;
    self->_writer.__cntrl_ = 0;
    if (cntrl)
    {
      sub_100009A48(cntrl);
    }
  }

  v8 = +[NSFileManager defaultManager];
  if (qword_1004568E8 != -1)
  {
    sub_1002A322C();
  }

  v9 = qword_1004568F0;
  if (os_log_type_enabled(qword_1004568F0, OS_LOG_TYPE_DEFAULT))
  {
    ttrManagedMsl = self->_ttrManagedMsl;
    urlToCopyToOnStop = self->_urlToCopyToOnStop;
    *block = 67109634;
    *&block[4] = keepCopy;
    *&block[8] = 1024;
    *&block[10] = ttrManagedMsl;
    *&block[14] = 2112;
    *&block[16] = urlToCopyToOnStop;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "stopAndKeep,%d,%d,%@", block, 0x18u);
  }

  if (!keepCopy)
  {
    goto LABEL_33;
  }

  if (self->_ttrManagedMsl && self->_urlToCopyToOnStop)
  {
    if (qword_1004568E8 != -1)
    {
      sub_1002A322C();
    }

    v12 = qword_1004568F0;
    if (os_log_type_enabled(qword_1004568F0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_urlToCopyToOnStop;
      *block = 138412290;
      *&block[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Copying MSL to: %@", block, 0xCu);
    }

    if (qword_1004568E8 != -1)
    {
      sub_1002A322C();
    }

    v14 = qword_1004568F0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      path = [(NSURL *)self->_url path];
      *block = 138412290;
      *&block[4] = path;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "source path: %@", block, 0xCu);
    }

    uRLByDeletingLastPathComponent = [(NSURL *)self->_urlToCopyToOnStop URLByDeletingLastPathComponent];
    path2 = [uRLByDeletingLastPathComponent path];
    v35 = 0;
    [v8 createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v35];
    v18 = v35;

    if (v18)
    {
      if (qword_1004568E8 != -1)
      {
        sub_1002A322C();
      }

      v19 = qword_1004568F0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v18 description];
        *block = 138412290;
        *&block[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "dir create error: %@", block, 0xCu);
      }
    }

    path3 = [(NSURL *)self->_url path];
    path4 = [(NSURL *)self->_urlToCopyToOnStop path];
    v34 = v18;
    [v8 copyItemAtPath:path3 toPath:path4 error:&v34];
    v23 = v34;

    if (v23)
    {
      if (qword_1004568E8 != -1)
      {
        sub_1002A322C();
      }

      v24 = qword_1004568F0;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v23 description];
        *block = 138412290;
        *&block[4] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "copy error: %@", block, 0xCu);
      }
    }
  }

  if (self->_shouldDeleteTTR)
  {
LABEL_33:
    if (qword_1004568E8 != -1)
    {
      sub_1002A322C();
    }

    v26 = qword_1004568F0;
    if (os_log_type_enabled(qword_1004568F0, OS_LOG_TYPE_DEBUG))
    {
      url = self->_url;
      *block = 138477827;
      *&block[4] = url;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "deleting MSL file: %{private}@", block, 0xCu);
    }

    path5 = [(NSURL *)self->_url path];
    v33 = 0;
    v29 = [v8 removeItemAtPath:path5 error:&v33];
    v30 = v33;

    if ((v29 & 1) == 0)
    {
      if (qword_1004568E8 != -1)
      {
        sub_1002A322C();
      }

      v31 = qword_1004568F0;
      if (os_log_type_enabled(qword_1004568F0, OS_LOG_TYPE_FAULT))
      {
        v32 = self->_url;
        *block = 138478083;
        *&block[4] = v32;
        *&block[12] = 2113;
        *&block[14] = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "unable to delete file %{private}@: %{private}@", block, 0x16u);
      }
    }
  }
}

- (void)recordAccel800:(id)accel800
{
  accel800Copy = accel800;
  if (self->_writer.__ptr_)
  {
    v16 = off_10041F420;
    bzero(&v17, 0x2B0uLL);
    bzero(&v20, 0xC9CuLL);
    CMMsl::Item::makeAccel800(&v16);
    timestamp = [accel800Copy timestamp];
    v21 |= 1u;
    v19 = timestamp * 0.000001;
    CMMsl::Accel800::makeSuper(v18);
    v6 = *(v18 + 1);
    timestamp2 = [accel800Copy timestamp];
    *(v6 + 32) |= 1u;
    *(v6 + 8) = timestamp2;
    v8 = *(v18 + 1);
    v9 = *([accel800Copy c_struct] + 2);
    *(v8 + 32) |= 4u;
    *(v8 + 20) = v9;
    v10 = *(v18 + 1);
    v11 = *([accel800Copy c_struct] + 3);
    *(v10 + 32) |= 8u;
    *(v10 + 24) = v11;
    v12 = *(v18 + 1);
    v13 = *([accel800Copy c_struct] + 4);
    *(v12 + 32) |= 0x10u;
    *(v12 + 28) = v13;
    ptr = self->_writer.__ptr_;
    v15 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v16;
    dispatch_sync(v15, block);
    CMMsl::Item::~Item(&v16);
  }
}

- (void)recordHgAccel:(id)accel
{
  accelCopy = accel;
  if (self->_writer.__ptr_)
  {
    v16 = off_10041F420;
    bzero(v17, 0x2B0uLL);
    bzero(&v18, 0xC9CuLL);
    CMMsl::Item::makeHgAccel(&v16);
    timestamp = [accelCopy timestamp];
    v20 |= 1u;
    v17[86] = timestamp * 0.000001;
    CMMsl::HgAccel::makeSuper(v19);
    v6 = *(v19 + 1);
    timestamp2 = [accelCopy timestamp];
    *(v6 + 32) |= 1u;
    *(v6 + 8) = timestamp2;
    v8 = *(v19 + 1);
    v9 = *([accelCopy c_struct] + 2);
    *(v8 + 32) |= 4u;
    *(v8 + 20) = v9;
    v10 = *(v19 + 1);
    v11 = *([accelCopy c_struct] + 3);
    *(v10 + 32) |= 8u;
    *(v10 + 24) = v11;
    v12 = *(v19 + 1);
    v13 = *([accelCopy c_struct] + 4);
    *(v12 + 32) |= 0x10u;
    *(v12 + 28) = v13;
    ptr = self->_writer.__ptr_;
    v15 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v16;
    dispatch_sync(v15, block);
    CMMsl::Item::~Item(&v16);
  }
}

- (void)recordDeviceMotion:(id)motion
{
  motionCopy = motion;
  if (self->_writer.__ptr_)
  {
    v30 = off_10041F420;
    bzero(v31, 0x2B0uLL);
    bzero(&v32, 0xC9CuLL);
    CMMsl::Item::makeDeviceMotion(&v30);
    timestamp = [motionCopy timestamp];
    v34 |= 1u;
    v31[86] = timestamp * 0.000001;
    v6 = v33;
    timestamp2 = [motionCopy timestamp];
    *(v6 + 124) |= 0x10u;
    *(v6 + 40) = timestamp2;
    v8 = v33;
    v9 = *[motionCopy c_struct];
    *(v8 + 124) |= 2u;
    *(v8 + 16) = v9;
    v10 = v33;
    v11 = *([motionCopy c_struct] + 1);
    *(v10 + 124) |= 4u;
    *(v10 + 24) = v11;
    v12 = v33;
    v13 = *([motionCopy c_struct] + 2);
    *(v12 + 124) |= 8u;
    *(v12 + 32) = v13;
    v14 = v33;
    v15 = *([motionCopy c_struct] + 3);
    *(v14 + 124) |= 1u;
    *(v14 + 8) = v15;
    v16 = v33;
    v17 = *([motionCopy c_struct] + 4);
    *(v16 + 124) |= 0x2000u;
    *(v16 + 80) = v17;
    v18 = v33;
    v19 = *([motionCopy c_struct] + 5);
    *(v18 + 124) |= 0x4000u;
    *(v18 + 84) = v19;
    v20 = v33;
    v21 = *([motionCopy c_struct] + 6);
    *(v20 + 124) |= 0x8000u;
    *(v20 + 88) = v21;
    v22 = v33;
    v23 = *([motionCopy c_struct] + 7);
    *(v22 + 124) |= 0x40000u;
    *(v22 + 100) = v23;
    v24 = v33;
    v25 = *([motionCopy c_struct] + 8);
    *(v24 + 124) |= 0x80000u;
    *(v24 + 104) = v25;
    v26 = v33;
    v27 = *([motionCopy c_struct] + 9);
    *(v26 + 124) |= 0x100000u;
    *(v26 + 108) = v27;
    ptr = self->_writer.__ptr_;
    v29 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v30;
    dispatch_sync(v29, block);
    CMMsl::Item::~Item(&v30);
  }
}

- (void)recordGPS:(id)s
{
  sCopy = s;
  if (self->_writer.__ptr_)
  {
    v26 = off_10041F420;
    bzero(v27, 0x2B0uLL);
    bzero(&v28, 0xC9CuLL);
    CMMsl::Item::makeMotionGPSLocation(&v26);
    v5 = *([sCopy c_struct] + 8) * 0.000001;
    v30 |= 1u;
    *&v27[86] = v5;
    v6 = v29;
    v7 = *([sCopy c_struct] + 8);
    *(v6 + 180) |= 0x800u;
    *(v6 + 96) = v7;
    v8 = v29;
    v9 = *[sCopy c_struct];
    *(v8 + 180) |= 0x200u;
    *(v8 + 80) = v9;
    v10 = v29;
    v11 = *([sCopy c_struct] + 1);
    *(v10 + 180) |= 0x400u;
    *(v10 + 88) = v11;
    v12 = v29;
    v13 = *([sCopy c_struct] + 2);
    *(v12 + 180) |= 2u;
    *(v12 + 16) = v13;
    v14 = v29;
    v15 = *([sCopy c_struct] + 3);
    *(v14 + 180) |= 4u;
    *(v14 + 24) = v15;
    v16 = v29;
    v17 = *([sCopy c_struct] + 12);
    *(v16 + 180) |= 0x20u;
    *(v16 + 48) = v17;
    v18 = v29;
    v19 = *([sCopy c_struct] + 13);
    *(v18 + 180) |= 0x8000u;
    *(v18 + 132) = v19;
    v20 = v29;
    v21 = *([sCopy c_struct] + 14);
    *(v20 + 180) |= 0x4000u;
    *(v20 + 128) = v21;
    v22 = v29;
    v23 = *([sCopy c_struct] + 15);
    *(v22 + 180) |= 0x800000u;
    *(v22 + 164) = v23;
    ptr = self->_writer.__ptr_;
    v25 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v26;
    dispatch_sync(v25, block);
    CMMsl::Item::~Item(&v26);
  }
}

- (void)recordSteps:(id)steps
{
  stepsCopy = steps;
  if (self->_writer.__ptr_)
  {
    v18 = off_10041F420;
    bzero(v19, 0x2B0uLL);
    bzero(&v20, 0xC9CuLL);
    CMMsl::Item::makeKappaSteps(&v18);
    timestamp = [stepsCopy timestamp];
    v22 |= 1u;
    v19[86] = timestamp * 0.000001;
    v6 = v21;
    v7 = *[stepsCopy c_struct];
    *(v6 + 32) |= 1u;
    *(v6 + 8) = v7;
    v8 = v21;
    v9 = *([stepsCopy c_struct] + 2);
    *(v8 + 32) |= 0x10u;
    *(v8 + 28) = v9;
    v10 = v21;
    v11 = *([stepsCopy c_struct] + 3);
    *(v10 + 32) |= 4u;
    *(v10 + 20) = v11;
    v12 = v21;
    v13 = *([stepsCopy c_struct] + 4);
    *(v12 + 32) |= 2u;
    *(v12 + 16) = v13;
    v14 = v21;
    v15 = *([stepsCopy c_struct] + 20);
    *(v14 + 32) |= 8u;
    *(v14 + 24) = v15;
    ptr = self->_writer.__ptr_;
    v17 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v18;
    dispatch_sync(v17, block);
    CMMsl::Item::~Item(&v18);
  }
}

- (void)recordKappaTrigger:(id)trigger
{
  triggerCopy = trigger;
  self->_triggerTime = [triggerCopy timestamp];
  if (self->_writer.__ptr_)
  {
    v58 = off_10041F420;
    bzero(v59, 0x2B0uLL);
    bzero(&v60, 0xC9CuLL);
    CMMsl::Item::makeKappaTrigger(&v58);
    v5 = *([triggerCopy c_struct] + 1) * 0.000001;
    v62 |= 1u;
    *&v59[86] = v5;
    v6 = v61;
    v7 = *([triggerCopy c_struct] + 1);
    *(v6 + 212) |= 4u;
    *(v6 + 96) = v7;
    v8 = v61;
    v9 = *[triggerCopy c_struct] & 1;
    *(v8 + 212) |= 0x20000000u;
    *(v8 + 209) = v9;
    v10 = v61;
    v11 = *([triggerCopy c_struct] + 4);
    *(v10 + 212) |= 0x10u;
    *(v10 + 112) = v11;
    v12 = v61;
    v13 = *([triggerCopy c_struct] + 5);
    *(v12 + 212) |= 0x100u;
    *(v12 + 128) = v13;
    v14 = v61;
    v15 = *([triggerCopy c_struct] + 1);
    *(v14 + 212) |= 0x1000000u;
    *(v14 + 192) = v15;
    v16 = v61;
    v17 = *([triggerCopy c_struct] + 28);
    *(v16 + 212) |= 0x20u;
    *(v16 + 116) = v17;
    v18 = v61;
    _H0 = *([triggerCopy c_struct] + 20);
    __asm { FCVT            S0, H0 }

    *(v18 + 212) |= 0x2000000u;
    *(v18 + 196) = _S0;
    v25 = v61;
    _H0 = *([triggerCopy c_struct] + 21);
    __asm { FCVT            S0, H0 }

    *(v25 + 212) |= 0x4000000u;
    *(v25 + 200) = _S0;
    v28 = v61;
    _H0 = *([triggerCopy c_struct] + 22);
    __asm { FCVT            S0, H0 }

    *(v28 + 212) |= 0x8000000u;
    *(v28 + 204) = _S0;
    v31 = v61;
    v32 = *([triggerCopy c_struct] + 4);
    *(v31 + 212) |= 8u;
    *(v31 + 104) = v32;
    v33 = v61;
    v34 = *([triggerCopy c_struct] + 46);
    *(v33 + 212) |= 0x800u;
    *(v33 + 140) = v34;
    v35 = v61;
    v36 = *([triggerCopy c_struct] + 47);
    *(v35 + 212) |= 0x80u;
    *(v35 + 124) = v36;
    v37 = v61;
    v38 = *([triggerCopy c_struct] + 7);
    *(v37 + 212) |= 2u;
    *(v37 + 88) = v38;
    v39 = v61;
    v40 = *([triggerCopy c_struct] + 94);
    *(v39 + 212) |= 0x40000000u;
    *(v39 + 210) = v40;
    v41 = v61;
    _H0 = *([triggerCopy c_struct] + 49);
    __asm { FCVT            S0, H0 }

    *(v41 + 212) |= 0x1000u;
    *(v41 + 144) = _S0;
    v44 = v61;
    _H0 = *([triggerCopy c_struct] + 50);
    __asm { FCVT            S0, H0 }

    *(v44 + 212) |= 0x200u;
    *(v44 + 132) = _S0;
    v47 = v61;
    _H0 = *([triggerCopy c_struct] + 51);
    __asm { FCVT            S0, H0 }

    *(v47 + 212) |= 0x40u;
    *(v47 + 120) = _S0;
    v50 = v61;
    v51 = *([triggerCopy c_struct] + 104);
    *(v50 + 212) |= 0x200000u;
    *(v50 + 180) = v51;
    v52 = v61;
    v53 = *([triggerCopy c_struct] + 92);
    *(v52 + 212) |= 0x400u;
    *(v52 + 136) = v53;
    v54 = v61;
    v55 = *([triggerCopy c_struct] + 93);
    *(v54 + 212) |= 0x800000u;
    *(v54 + 188) = v55;
    ptr = self->_writer.__ptr_;
    v57 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v58;
    dispatch_sync(v57, block);
    CMMsl::Item::~Item(&v58);
  }
}

- (void)recordPressure:(id)pressure
{
  pressureCopy = pressure;
  if (self->_writer.__ptr_)
  {
    v14 = off_10041F420;
    bzero(v15, 0x2B0uLL);
    bzero(&v16, 0xC9CuLL);
    CMMsl::Item::makePressure(&v14);
    v5 = *[pressureCopy c_struct] * 0.000001;
    v18 |= 1u;
    *&v15[86] = v5;
    v6 = v17;
    v7 = *[pressureCopy c_struct];
    *(v6 + 24) |= 1u;
    *(v6 + 8) = v7;
    v8 = v17;
    v9 = *([pressureCopy c_struct] + 2);
    *(v8 + 24) |= 2u;
    *(v8 + 16) = v9;
    v10 = v17;
    v11 = *([pressureCopy c_struct] + 3);
    *(v10 + 24) |= 4u;
    *(v10 + 20) = v11;
    ptr = self->_writer.__ptr_;
    v13 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v14;
    dispatch_sync(v13, block);
    CMMsl::Item::~Item(&v14);
  }
}

- (void)recordSoundPressureLevel:(id)level
{
  levelCopy = level;
  if (self->_writer.__ptr_)
  {
    v12 = off_10041F420;
    bzero(v13, 0x2B0uLL);
    bzero(&v14, 0xC9CuLL);
    CMMsl::Item::makeSpl(&v12);
    v5 = *[levelCopy c_struct] * 0.000001;
    v16 |= 1u;
    *&v13[86] = v5;
    v6 = v15;
    v7 = *[levelCopy c_struct];
    *(v6 + 20) |= 1u;
    *(v6 + 8) = v7;
    v8 = v15;
    v9 = *([levelCopy c_struct] + 2);
    *(v8 + 20) |= 2u;
    *(v8 + 16) = v9;
    ptr = self->_writer.__ptr_;
    v11 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v12;
    dispatch_sync(v11, block);
    CMMsl::Item::~Item(&v12);
  }
}

- (void)recordAccel:(id)accel
{
  accelCopy = accel;
  if (self->_writer.__ptr_)
  {
    v16 = off_10041F420;
    bzero(&v17, 0x2B0uLL);
    bzero(&v20, 0xC9CuLL);
    CMMsl::Item::makeAccel(&v16);
    timestamp = [accelCopy timestamp];
    v21 |= 1u;
    v19 = timestamp * 0.000001;
    v6 = v18;
    timestamp2 = [accelCopy timestamp];
    *(v6 + 32) |= 1u;
    *(v6 + 8) = timestamp2;
    v8 = v18;
    v9 = *([accelCopy c_struct] + 2);
    *(v8 + 32) |= 4u;
    *(v8 + 20) = v9;
    v10 = v18;
    v11 = *([accelCopy c_struct] + 3);
    *(v10 + 32) |= 8u;
    *(v10 + 24) = v11;
    v12 = v18;
    v13 = *([accelCopy c_struct] + 4);
    *(v12 + 32) |= 0x10u;
    *(v12 + 28) = v13;
    ptr = self->_writer.__ptr_;
    v15 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v16;
    dispatch_sync(v15, block);
    CMMsl::Item::~Item(&v16);
  }
}

- (void)recordMag:(id)mag
{
  magCopy = mag;
  if (self->_writer.__ptr_)
  {
    v18 = off_10041F420;
    bzero(v19, 0x2B0uLL);
    bzero(&v20, 0xC9CuLL);
    CMMsl::Item::makeMagnetometer(&v18);
    timestamp = [magCopy timestamp];
    v22 |= 1u;
    v19[86] = timestamp * 0.000001;
    v6 = v21;
    timestamp2 = [magCopy timestamp];
    *(v6 + 36) |= 1u;
    *(v6 + 8) = timestamp2;
    v8 = v21;
    v9 = *[magCopy c_struct];
    *(v8 + 36) |= 8u;
    *(v8 + 24) = v9;
    v10 = v21;
    v11 = *([magCopy c_struct] + 1);
    *(v10 + 36) |= 0x10u;
    *(v10 + 28) = v11;
    v12 = v21;
    v13 = *([magCopy c_struct] + 2);
    *(v12 + 36) |= 0x20u;
    *(v12 + 32) = v13;
    v14 = v21;
    v15 = *([magCopy c_struct] + 3);
    *(v14 + 36) |= 4u;
    *(v14 + 20) = v15;
    ptr = self->_writer.__ptr_;
    v17 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v18;
    dispatch_sync(v17, block);
    CMMsl::Item::~Item(&v18);
  }
}

- (void)recordPressureCalibration:(id)calibration
{
  calibrationCopy = calibration;
  if (self->_writer.__ptr_)
  {
    v20 = off_10041F420;
    bzero(v21, 0x2B0uLL);
    bzero(&v22, 0xC9CuLL);
    CMMsl::Item::makePressureCalibration(&v20);
    triggerTime = self->_triggerTime;
    v24 |= 1u;
    *&v21[86] = triggerTime;
    v6 = v23;
    [calibrationCopy medianToc];
    *(v6 + 32) |= 0x20u;
    *(v6 + 28) = v7;
    v8 = v23;
    [calibrationCopy medTocFactoryTemp];
    *(v8 + 32) |= 0x10u;
    *(v8 + 24) = v9;
    v10 = v23;
    [calibrationCopy maxTemp];
    *(v10 + 32) |= 8u;
    *(v10 + 20) = v11;
    v12 = v23;
    [calibrationCopy inertialX];
    *(v12 + 32) |= 1u;
    *(v12 + 8) = v13;
    v14 = v23;
    [calibrationCopy inertialY];
    *(v14 + 32) |= 2u;
    *(v14 + 12) = v15;
    v16 = v23;
    [calibrationCopy inertialZ];
    *(v16 + 32) |= 4u;
    *(v16 + 16) = v17;
    ptr = self->_writer.__ptr_;
    v19 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v20;
    dispatch_sync(v19, block);
    CMMsl::Item::~Item(&v20);
  }
}

- (void)recordRemoteAudioOutput:(id)output
{
  outputCopy = output;
  if (self->_writer.__ptr_)
  {
    v48 = off_10041F420;
    bzero(v49, 0x2B0uLL);
    bzero(&v50, 0xC9CuLL);
    CMMsl::Item::makeKappaRemoteAudioResult(&v48);
    v5 = *[outputCopy c_struct] * 0.000001;
    v52 |= 1u;
    *&v49[86] = v5;
    v6 = v51;
    v7 = *[outputCopy c_struct];
    *(v6 + 204) |= 1uLL;
    *(v6 + 8) = v7;
    v8 = v51;
    v9 = *([outputCopy c_struct] + 2);
    *(v8 + 204) |= 0x200000uLL;
    *(v8 + 108) = v9;
    v10 = v51;
    v11 = *([outputCopy c_struct] + 3);
    *(v10 + 204) |= 0x2000uLL;
    *(v10 + 76) = v11;
    v12 = v51;
    v13 = *([outputCopy c_struct] + 4);
    *(v12 + 204) |= 0x20uLL;
    *(v12 + 44) = v13;
    v14 = v51;
    v15 = *([outputCopy c_struct] + 5);
    *(v14 + 204) |= 0x2000000uLL;
    *(v14 + 124) = v15;
    v16 = v51;
    v17 = *([outputCopy c_struct] + 24);
    *(v16 + 204) |= 0x200000000000000uLL;
    *(v16 + 180) = v17;
    v18 = v51;
    v19 = *([outputCopy c_struct] + 25);
    *(v18 + 204) |= 0x200000000uLL;
    *(v18 + 156) = v19;
    v20 = v51;
    v21 = *([outputCopy c_struct] + 26);
    *(v20 + 212) |= 0x200u;
    *(v20 + 196) = v21;
    v22 = v51;
    v23 = *([outputCopy c_struct] + 27);
    *(v22 + 204) |= 0x20000000000uLL;
    *(v22 + 164) = v23;
    v24 = v51;
    v25 = *([outputCopy c_struct] + 28);
    *(v24 + 204) |= 0x2000000000000uLL;
    *(v24 + 172) = v25;
    v26 = v51;
    v27 = *([outputCopy c_struct] + 29);
    *(v26 + 212) |= 2u;
    *(v26 + 188) = v27;
    v28 = v51;
    v29 = *([outputCopy c_struct] + 8);
    *(v28 + 204) |= 0x20000uLL;
    *(v28 + 92) = v29;
    v30 = v51;
    v31 = *([outputCopy c_struct] + 9);
    *(v30 + 204) |= 0x200uLL;
    *(v30 + 60) = v31;
    v32 = v51;
    v33 = *([outputCopy c_struct] + 10);
    *(v32 + 204) |= 0x20000000uLL;
    *(v32 + 140) = v33;
    v34 = v51;
    v35 = *([outputCopy c_struct] + 44);
    *(v34 + 204) |= 0x2000000000000000uLL;
    *(v34 + 184) = v35;
    v36 = v51;
    v37 = *([outputCopy c_struct] + 45);
    *(v36 + 204) |= 0x2000000000uLL;
    *(v36 + 160) = v37;
    v38 = v51;
    v39 = *([outputCopy c_struct] + 46);
    *(v38 + 212) |= 0x2000u;
    *(v38 + 200) = v39;
    v40 = v51;
    v41 = *([outputCopy c_struct] + 47);
    *(v40 + 204) |= 0x200000000000uLL;
    *(v40 + 168) = v41;
    v42 = v51;
    v43 = *([outputCopy c_struct] + 48);
    *(v42 + 204) |= 0x20000000000000uLL;
    *(v42 + 176) = v43;
    v44 = v51;
    v45 = *([outputCopy c_struct] + 49);
    *(v44 + 212) |= 4u;
    *(v44 + 189) = v45;
    ptr = self->_writer.__ptr_;
    v47 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v48;
    dispatch_sync(v47, block);
    CMMsl::Item::~Item(&v48);
  }
}

- (void)recordRoadInfo:(id)info
{
  infoCopy = info;
  if (self->_writer.__ptr_)
  {
    v14 = off_10041F420;
    bzero(v15, 0x2B0uLL);
    bzero(&v16, 0xC9CuLL);
    CMMsl::Item::makeKappaRoads(&v14);
    v5 = *[infoCopy c_struct] * 0.000001;
    v18 |= 1u;
    *&v15[86] = v5;
    v6 = v17;
    v7 = *[infoCopy c_struct];
    *(v6 + 32) |= 2u;
    *(v6 + 16) = v7;
    v8 = *([infoCopy c_struct] + 1);
    if (v8 > 1000.0)
    {
      v8 = 1000.0;
    }

    v9 = v17;
    *(v17 + 32) |= 4u;
    *(v9 + 24) = v8;
    v10 = v17;
    v11 = *([infoCopy c_struct] + 16);
    *(v10 + 32) |= 8u;
    *(v10 + 28) = v11;
    ptr = self->_writer.__ptr_;
    v13 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v14;
    dispatch_sync(v13, block);
    CMMsl::Item::~Item(&v14);
  }
}

- (void)recordTrustedAudio:(id)audio
{
  audioCopy = audio;
  if (self->_writer.__ptr_)
  {
    v88 = off_10041F420;
    bzero(v89, 0x2B0uLL);
    bzero(&v90, 0xC9CuLL);
    CMMsl::Item::makeSafetyTrustedAudioResult(&v88);
    v5 = *[audioCopy c_struct] * 0.000001;
    v92 |= 1u;
    *&v89[86] = v5;
    v6 = v91;
    timestamp = [audioCopy timestamp];
    *(v6 + 212) |= 0x800uLL;
    *(v6 + 96) = timestamp;
    v8 = v91;
    v9 = *([audioCopy c_struct] + 2);
    *(v8 + 212) |= 0x200000uLL;
    *(v8 + 140) = v9;
    v10 = v91;
    v11 = *([audioCopy c_struct] + 2);
    *(v10 + 212) |= 0x40uLL;
    *(v10 + 56) = v11;
    v12 = v91;
    v13 = *([audioCopy c_struct] + 6);
    *(v12 + 212) |= 0x10000uLL;
    *(v12 + 120) = v13;
    v14 = v91;
    v15 = *([audioCopy c_struct] + 7);
    *(v14 + 212) |= 0x1000000uLL;
    *(v14 + 152) = v15;
    v16 = v91;
    v17 = *([audioCopy c_struct] + 8);
    *(v16 + 212) |= 0x100000uLL;
    *(v16 + 136) = v17;
    v18 = v91;
    v19 = *([audioCopy c_struct] + 5);
    *(v18 + 212) |= 0x20uLL;
    *(v18 + 48) = v19;
    v20 = v91;
    v21 = *([audioCopy c_struct] + 12);
    *(v20 + 212) |= 0x40000uLL;
    *(v20 + 128) = v21;
    v22 = v91;
    v23 = *([audioCopy c_struct] + 13);
    *(v22 + 212) |= 0x800000uLL;
    *(v22 + 148) = v23;
    v24 = v91;
    v25 = *([audioCopy c_struct] + 14);
    *(v24 + 212) |= 0x400000uLL;
    *(v24 + 144) = v25;
    v26 = v91;
    v27 = *([audioCopy c_struct] + 8);
    *(v26 + 212) |= 0x80uLL;
    *(v26 + 64) = v27;
    v28 = v91;
    v29 = *([audioCopy c_struct] + 18);
    *(v28 + 212) |= 0x20000uLL;
    *(v28 + 124) = v29;
    v30 = v91;
    v31 = *([audioCopy c_struct] + 19);
    *(v30 + 212) |= 0x80000uLL;
    *(v30 + 132) = v31;
    v32 = v91;
    v33 = *([audioCopy c_struct] + 80);
    *(v32 + 212) |= 0x4000000000uLL;
    *(v32 + 208) = v33;
    v34 = v91;
    v35 = *([audioCopy c_struct] + 22);
    *(v34 + 212) |= 0x40000000uLL;
    *(v34 + 176) = v35;
    v36 = v91;
    v37 = *([audioCopy c_struct] + 12);
    *(v36 + 212) |= 0x200uLL;
    *(v36 + 80) = v37;
    v38 = v91;
    v39 = *([audioCopy c_struct] + 26);
    *(v38 + 212) |= 0x2000000uLL;
    *(v38 + 156) = v39;
    v40 = v91;
    v41 = *([audioCopy c_struct] + 27);
    *(v40 + 212) |= 0x200000000uLL;
    *(v40 + 188) = v41;
    v42 = v91;
    v43 = *([audioCopy c_struct] + 28);
    *(v42 + 212) |= 0x20000000uLL;
    *(v42 + 172) = v43;
    v44 = v91;
    v45 = *([audioCopy c_struct] + 15);
    *(v44 + 212) |= 0x100uLL;
    *(v44 + 72) = v45;
    v46 = v91;
    v47 = *([audioCopy c_struct] + 32);
    *(v46 + 212) |= 0x8000000uLL;
    *(v46 + 164) = v47;
    v48 = v91;
    v49 = *([audioCopy c_struct] + 33);
    *(v48 + 212) |= &_mh_execute_header;
    *(v48 + 184) = v49;
    v50 = v91;
    v51 = *([audioCopy c_struct] + 34);
    *(v50 + 212) |= 0x80000000uLL;
    *(v50 + 180) = v51;
    v52 = v91;
    v53 = *([audioCopy c_struct] + 18);
    *(v52 + 212) |= 0x400uLL;
    *(v52 + 88) = v53;
    v54 = v91;
    v55 = *([audioCopy c_struct] + 38);
    *(v54 + 212) |= 0x4000000uLL;
    *(v54 + 160) = v55;
    v56 = v91;
    v57 = *([audioCopy c_struct] + 39);
    *(v56 + 212) |= 0x10000000uLL;
    *(v56 + 168) = v57;
    v58 = v91;
    v59 = *([audioCopy c_struct] + 160);
    *(v58 + 212) |= 0x8000000000uLL;
    *(v58 + 209) = v59;
    v60 = v91;
    v61 = *([audioCopy c_struct] + 46);
    *(v60 + 212) |= 0x2000uLL;
    *(v60 + 108) = v61;
    v62 = v91;
    v63 = *([audioCopy c_struct] + 47);
    *(v62 + 212) |= 0x8000uLL;
    *(v62 + 116) = v63;
    v64 = v91;
    v65 = *([audioCopy c_struct] + 48);
    *(v64 + 212) |= 0x4000uLL;
    *(v64 + 112) = v65;
    v66 = v91;
    v67 = *([audioCopy c_struct] + 25);
    *(v66 + 212) |= 0x10uLL;
    *(v66 + 40) = v67;
    v68 = v91;
    v69 = *([audioCopy c_struct] + 26);
    *(v68 + 212) |= 8uLL;
    *(v68 + 32) = v69;
    v70 = v91;
    v71 = *([audioCopy c_struct] + 27);
    *(v70 + 212) |= 4uLL;
    *(v70 + 24) = v71;
    v72 = v91;
    v73 = *([audioCopy c_struct] + 28);
    *(v72 + 212) |= 2uLL;
    *(v72 + 16) = v73;
    v74 = v91;
    v75 = *([audioCopy c_struct] + 29);
    *(v74 + 212) |= 1uLL;
    *(v74 + 8) = v75;
    v76 = v91;
    v77 = *([audioCopy c_struct] + 60);
    *(v76 + 212) |= 0x1000uLL;
    *(v76 + 104) = v77;
    v78 = v91;
    v79 = *([audioCopy c_struct] + 42);
    *(v78 + 212) |= 0x800000000uLL;
    *(v78 + 196) = v79;
    v80 = v91;
    v81 = *([audioCopy c_struct] + 43);
    *(v80 + 212) |= 0x2000000000uLL;
    *(v80 + 204) = v81;
    v82 = v91;
    v83 = *([audioCopy c_struct] + 44);
    *(v82 + 212) |= 0x1000000000uLL;
    *(v82 + 200) = v83;
    v84 = v91;
    v85 = *([audioCopy c_struct] + 45);
    *(v84 + 212) |= 0x400000000uLL;
    *(v84 + 192) = v85;
    ptr = self->_writer.__ptr_;
    v87 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v88;
    dispatch_sync(v87, block);
    CMMsl::Item::~Item(&v88);
  }
}

- (void)recordActivityPhone:(id)phone
{
  phoneCopy = phone;
  if (self->_writer.__ptr_)
  {
    v22 = off_10041F420;
    bzero(v23, 0x2B0uLL);
    bzero(&v24, 0xC9CuLL);
    CMMsl::Item::makeKappaActivityPhone(&v22);
    v5 = *[phoneCopy c_struct] * 0.000001;
    v26 |= 1u;
    *&v23[86] = v5;
    v6 = v25;
    v7 = *[phoneCopy c_struct];
    *(v6 + 140) |= 1u;
    v6[13] = v7;
    block = *([phoneCopy c_struct] + 1);
    LODWORD(v28) = *([phoneCopy c_struct] + 4);
    sub_10002A964(v25 + 1, &block, &v28 + 4, 3uLL);
    v8 = v25;
    v9 = *([phoneCopy c_struct] + 20);
    *(v8 + 140) |= 4u;
    *(v8 + 30) = v9;
    block = *([phoneCopy c_struct] + 3);
    LODWORD(v28) = *([phoneCopy c_struct] + 8);
    sub_10002A964(v25 + 10, &block, &v28 + 4, 3uLL);
    v10 = v25;
    v11 = *([phoneCopy c_struct] + 5);
    *(v10 + 140) |= 2u;
    v10[14] = v11;
    LODWORD(block) = *([phoneCopy c_struct] + 24);
    HIDWORD(block) = *([phoneCopy c_struct] + 25);
    LODWORD(v28) = *([phoneCopy c_struct] + 26);
    HIDWORD(v28) = *([phoneCopy c_struct] + 27);
    LODWORD(v29[0]) = *([phoneCopy c_struct] + 28);
    sub_10002279C(v25 + 4, &block, v29 + 4, 5uLL);
    LODWORD(block) = *([phoneCopy c_struct] + 29);
    HIDWORD(block) = *([phoneCopy c_struct] + 30);
    LODWORD(v28) = *([phoneCopy c_struct] + 31);
    HIDWORD(v28) = *([phoneCopy c_struct] + 32);
    LODWORD(v29[0]) = *([phoneCopy c_struct] + 33);
    sub_10002279C(v25 + 7, &block, v29 + 4, 5uLL);
    v12 = v25;
    v13 = *([phoneCopy c_struct] + 17);
    *(v12 + 140) |= 0x20u;
    *(v12 + 33) = v13;
    v14 = v25;
    v15 = *([phoneCopy c_struct] + 18);
    *(v14 + 140) |= 8u;
    *(v14 + 31) = v15;
    v16 = v25;
    v17 = *([phoneCopy c_struct] + 19);
    *(v16 + 140) |= 0x10u;
    *(v16 + 32) = v17;
    v18 = v25;
    v19 = *([phoneCopy c_struct] + 20);
    *(v18 + 140) |= 0x40u;
    *(v18 + 34) = v19;
    ptr = self->_writer.__ptr_;
    v21 = *(ptr + 1);
    block = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29[0] = sub_10029EBE0;
    v29[1] = &unk_100423480;
    v29[2] = ptr;
    v29[3] = &v22;
    dispatch_sync(v21, &block);
    CMMsl::Item::~Item(&v22);
  }
}

- (void)recordSafetyHertzSample:(id)sample
{
  sampleCopy = sample;
  if (self->_writer.__ptr_)
  {
    v16 = off_10041F420;
    bzero(v17, 0x2B0uLL);
    bzero(&v18, 0xC9CuLL);
    v5 = *[sampleCopy c_struct] * 0.000001;
    v20 |= 1u;
    *&v17[86] = v5;
    CMMsl::Item::makeSafetyHertzSample(&v16);
    v6 = v19;
    v7 = *[sampleCopy c_struct];
    *(v6 + 28) |= 1u;
    *(v6 + 8) = v7;
    v8 = v19;
    v9 = *([sampleCopy c_struct] + 4);
    *(v8 + 28) |= 2u;
    *(v8 + 16) = v9;
    v10 = v19;
    v11 = *([sampleCopy c_struct] + 10);
    *(v10 + 28) |= 4u;
    *(v10 + 20) = v11;
    v12 = v19;
    v13 = *([sampleCopy c_struct] + 11);
    *(v12 + 28) |= 8u;
    *(v12 + 24) = v13;
    ptr = self->_writer.__ptr_;
    v15 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v16;
    dispatch_sync(v15, block);
    CMMsl::Item::~Item(&v16);
  }
}

- (void)recordCompanionStatus:(id)status
{
  statusCopy = status;
  if (self->_writer.__ptr_)
  {
    v12 = off_10041F420;
    bzero(v13, 0x2B0uLL);
    bzero(&v14, 0xC9CuLL);
    v5 = *[statusCopy c_struct] * 0.000001;
    v16 |= 1u;
    *&v13[86] = v5;
    CMMsl::Item::makeSafetyCompanionStatus(&v12);
    v6 = v15;
    v7 = *[statusCopy c_struct];
    *(v6 + 20) |= 1u;
    *(v6 + 8) = v7;
    v8 = v15;
    v9 = *([statusCopy c_struct] + 2);
    *(v8 + 20) |= 2u;
    *(v8 + 16) = v9;
    ptr = self->_writer.__ptr_;
    v11 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v12;
    dispatch_sync(v11, block);
    CMMsl::Item::~Item(&v12);
  }
}

- (void)recordRemoteSample:(id)sample
{
  sampleCopy = sample;
  if (self->_writer.__ptr_)
  {
    bzero(v23, 0x2B0uLL);
    bzero(&v24, 0xC9CuLL);
    timestamp = [sampleCopy timestamp];
    v26 |= 1u;
    v23[86] = timestamp * 0.000001;
    CMMsl::Item::makeSafetyRemoteSample(&v22);
    v6 = v25;
    v7 = *[sampleCopy c_struct];
    *(v6 + 52) |= 0x20u;
    *(v6 + 44) = v7;
    v8 = v25;
    v9 = *([sampleCopy c_struct] + 1);
    *(v8 + 52) |= 0x40u;
    *(v8 + 48) = v9;
    v10 = v25;
    v11 = *([sampleCopy c_struct] + 2);
    *(v10 + 52) |= 0x10u;
    *(v10 + 40) = v11;
    v12 = v25;
    v13 = *([sampleCopy c_struct] + 2);
    *(v12 + 52) |= 1u;
    *(v12 + 8) = v13;
    v14 = v25;
    v15 = *([sampleCopy c_struct] + 3);
    *(v14 + 52) |= 8u;
    *(v14 + 32) = v15;
    v16 = v25;
    v17 = *([sampleCopy c_struct] + 4);
    *(v16 + 52) |= 4u;
    *(v16 + 24) = v17;
    v18 = v25;
    v19 = *([sampleCopy c_struct] + 5);
    *(v18 + 52) |= 2u;
    *(v18 + 16) = v19;
    ptr = self->_writer.__ptr_;
    v21 = *(ptr + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10029EBE0;
    block[3] = &unk_100423480;
    block[4] = ptr;
    block[5] = &v22;
    dispatch_sync(v21, block);
    CMMsl::Item::~Item(&v22);
  }
}

- (void)updateMetadata:(id)metadata
{
  metadataCopy = metadata;
  metadata = self->_metadata;
  if (metadata)
  {
    v5 = [(NSDictionary *)metadata mutableCopy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  [(NSDictionary *)v5 addEntriesFromDictionary:metadataCopy];
  v7 = self->_metadata;
  self->_metadata = v6;
}

- (void)dumpMetadata
{
  allKeys = [(NSDictionary *)self->_metadata allKeys];
  v3 = [allKeys sortedArrayUsingSelector:"caseInsensitiveCompare:"];

  p_vtable = GPBRootObject.vtable;
  if (qword_1004568E8 != -1)
  {
    sub_1002A3254();
  }

  v5 = qword_1004568F0;
  if (os_log_type_enabled(qword_1004568F0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "metadata begin", buf, 2u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v6)
  {
    v8 = 0;
    v9 = *v20;
    *&v7 = 67109634;
    v16 = v7;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if (([v11 isEqualToString:{@"coarseLat", v16}] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"coarseLong"))
        {
          if (p_vtable[285] != -1)
          {
            sub_1002A322C();
          }

          v12 = qword_1004568F0;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:v11];
            *buf = 67109635;
            v24 = v8;
            v25 = 2112;
            v26 = v11;
            v27 = 2117;
            v28 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%d:%@ %{sensitive}@", buf, 0x1Cu);

            p_vtable = (GPBRootObject + 24);
          }
        }

        else
        {
          if (p_vtable[285] != -1)
          {
            sub_1002A322C();
          }

          v12 = qword_1004568F0;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v14 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:v11];
            *buf = v16;
            v24 = v8;
            v25 = 2112;
            v26 = v11;
            v27 = 2112;
            v28 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%d:%@ %@", buf, 0x1Cu);

            p_vtable = GPBRootObject.vtable;
          }
        }

        ++v8;
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v6);
  }

  if (p_vtable[285] != -1)
  {
    sub_1002A322C();
  }

  v15 = qword_1004568F0;
  if (os_log_type_enabled(qword_1004568F0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "metadata end", buf, 2u);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end