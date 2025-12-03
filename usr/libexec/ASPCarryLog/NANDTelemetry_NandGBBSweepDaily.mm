@interface NANDTelemetry_NandGBBSweepDaily
+ (BOOL)shouldRegisterActivity;
+ (void)setGBBXpcCritiria:(id)critiria;
- (BOOL)_createDirectoryAt:(id)at;
- (NANDTelemetry_NandGBBSweepDaily)initWithXpcActivityMgr:(id)mgr persistentStateMgr:(id)stateMgr privacyMgr:(id)privacyMgr;
- (id)_getBlockStr:(unsigned int)str;
- (id)_getReasonString:(unsigned int)string;
- (int)uploadFile:(id)file description:(id)description;
- (void)_checkTestHook;
- (void)_cleanItemAt:(id)at;
- (void)_doCleanup:(id)cleanup;
- (void)_fillSweepParams;
- (void)_gatherRadarInfo;
- (void)_sweepBlock:(id *)block;
- (void)_writeCounters:(id)counters counters:(id)a4;
- (void)getDefects:(unint64_t *)defects;
- (void)markGBBAsSwept;
- (void)runActivity;
@end

@implementation NANDTelemetry_NandGBBSweepDaily

- (NANDTelemetry_NandGBBSweepDaily)initWithXpcActivityMgr:(id)mgr persistentStateMgr:(id)stateMgr privacyMgr:(id)privacyMgr
{
  v9.receiver = self;
  v9.super_class = NANDTelemetry_NandGBBSweepDaily;
  v5 = [(NANDTelemetry_Base *)&v9 initWithXpcActivityMgr:mgr persistentStateMgr:stateMgr privacyMgr:privacyMgr];
  v6 = v5;
  if (v5)
  {
    v5->_ctl = 0;
    v5->_sweepBuf = 0;
    v5->_sweepInfo = 0;
    v5->_sweepBufSize = 3145728;
    v5->_sweepError = 0;
    v7 = v5;
  }

  return v6;
}

- (BOOL)_createDirectoryAt:(id)at
{
  atCopy = at;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 createDirectoryAtPath:atCopy withIntermediateDirectories:1 attributes:0 error:0];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v10 = NSFilePosixPermissions;
    v11 = &off_1000BFF90;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v6 setAttributes:v7 ofItemAtPath:atCopy error:0];
  }

  else
  {
    v8 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049BCC(atCopy, v8);
    }
  }

  return v5;
}

- (void)_doCleanup:(id)cleanup
{
  cleanupCopy = cleanup;
  if ([(NANDTelemetry_NandGBBSweepDaily *)self sweepError]== 8)
  {
    goto LABEL_5;
  }

  if ([(NANDTelemetry_NandGBBSweepDaily *)self sweepError]&& word_1000D8262 < 4u)
  {
    ++word_1000D8262;
LABEL_5:
    byte_1000D8260 = 1;
    goto LABEL_9;
  }

  dword_1000D8264 = 0;
  byte_1000D8260 = 0;
  if ((byte_1000D8268 & 1) == 0)
  {
    [(NANDTelemetry_NandGBBSweepDaily *)self _cleanItemAt:cleanupCopy];
  }

  word_1000D8262 = 0;
LABEL_9:
}

- (void)_cleanItemAt:(id)at
{
  atCopy = at;
  v4 = +[NSFileManager defaultManager];
  [v4 removeItemAtPath:atCopy error:0];
}

- (void)_writeCounters:(id)counters counters:(id)a4
{
  countersCopy = counters;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v9 = 0;
    v8 = [NSJSONSerialization dataWithJSONObject:v6 options:1 error:&v9];
    v6 = v9;
    if (!v6)
    {
      [v8 writeToFile:countersCopy atomically:1];
      v6 = 0;
    }
  }

  else
  {
    v8 = 0;
  }
}

- (void)_fillSweepParams
{
  sweepInfo = [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo];
  LODWORD(xmmword_1000D826C) = sweepInfo->var1[[(NANDTelemetry_NandGBBSweepDaily *)self currBlock]].var0;
  sweepInfo2 = [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo];
  DWORD1(xmmword_1000D826C) = sweepInfo2->var1[[(NANDTelemetry_NandGBBSweepDaily *)self currBlock]].var1;
  sweepInfo3 = [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo];
  DWORD2(xmmword_1000D826C) = sweepInfo3->var1[[(NANDTelemetry_NandGBBSweepDaily *)self currBlock]].var2;
  sweepInfo4 = [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo];
  HIDWORD(xmmword_1000D826C) = sweepInfo4->var1[[(NANDTelemetry_NandGBBSweepDaily *)self currBlock]].var3;
  sweepInfo5 = [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo];
  dword_1000D827C = sweepInfo5->var1[[(NANDTelemetry_NandGBBSweepDaily *)self currBlock]].var4;
  v8 = sub_10003DA34(*([(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo]+ 7 * [(NANDTelemetry_NandGBBSweepDaily *)self currBlock]+ 6));
  dword_1000D8280 = 0;
  dword_1000D8284 = v8;
  unk_1000D8288 = xmmword_100094390;
  sweepInfo6 = [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo];
  dword_1000D8298 = sweepInfo6->var1[[(NANDTelemetry_NandGBBSweepDaily *)self currBlock]].var6;
}

- (void)_gatherRadarInfo
{
  blockPath = [(NANDTelemetry_NandGBBSweepDaily *)self blockPath];
  v4 = [NSString stringWithFormat:@"%@/description.txt", blockPath];
  [v4 UTF8String];
  __strcpy_chk();

  v5 = fopen(__filename, "a");
  if (v5)
  {
    v6 = v5;
    fprintf(v5, "Build Version: %.*s\n", 8, [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo]+ 144);
    fprintf(v6, "Build Number : %.*s\n", 16, [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo]+ 152);
    fprintf(v6, "Long Version : %.*s\n", 128, [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo]+ 168);
    fprintf(v6, "MSP Version  : %.*s\n", 16, [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo]+ 296);
    fprintf(v6, "NAND Vendor  : %.*s\n", 16, [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo]+ 344);
    fprintf(v6, "Build Type   : %.*s\n", 32, [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo]+ 312);
    fprintf(v6, "Capacity     : %d GB\n\n", *([(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo]+ 213));
    fclose(v6);
  }

  if (![(NANDTelemetry_NandGBBSweepDaily *)self wasSigtermReceived])
  {
    v14 = CopyWhitelistedNANDFTLInfo(1, v7, v8, v9, v10, v11, v12, v13);
    v15 = CopyWhitelistedNANDMSPInfo();
    blockPath2 = [(NANDTelemetry_NandGBBSweepDaily *)self blockPath];
    v17 = [NSString stringWithFormat:@"%@/FTLCounters.json", blockPath2];
    [(NANDTelemetry_NandGBBSweepDaily *)self _writeCounters:v17 counters:v14];

    blockPath3 = [(NANDTelemetry_NandGBBSweepDaily *)self blockPath];
    v19 = [NSString stringWithFormat:@"%@/MSPCounters.json", blockPath3];
    [(NANDTelemetry_NandGBBSweepDaily *)self _writeCounters:v19 counters:v15];

    blockPath4 = [(NANDTelemetry_NandGBBSweepDaily *)self blockPath];
    v21 = [NSString stringWithFormat:@"%@/Defects.txt", blockPath4];
    print_grown_defects_ext([v21 UTF8String]);

    blockPath5 = [(NANDTelemetry_NandGBBSweepDaily *)self blockPath];
    v23 = [NSString stringWithFormat:@"%@/ErrorLog.txt", blockPath5];
    sub_10003D53C([v23 UTF8String]);

    print_geometry(__filename);
  }
}

- (id)_getReasonString:(unsigned int)string
{
  if (string - 1 > 0x13)
  {
    return @"UNKNOWN_REASON";
  }

  else
  {
    return off_10009C9B0[string - 1];
  }
}

- (id)_getBlockStr:(unsigned int)str
{
  if (byte_1000D8260 == 1)
  {
    v5 = dword_1000D829C;
  }

  else
  {
    sweepInfo = [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo];
    v5 = sweepInfo->var11[[(NANDTelemetry_NandGBBSweepDaily *)self currBlock]];
  }

  v7 = DWORD1(xmmword_1000D826C);
  v16 = xmmword_1000D826C;
  v8 = DWORD2(xmmword_1000D826C);
  v9 = HIDWORD(xmmword_1000D826C);
  v10 = dword_1000D827C;
  strCopy = str;
  if (v5 >= str)
  {
    v11 = @"Token";
  }

  else
  {
    v11 = [NSString stringWithFormat:@"%d", v5];
  }

  v12 = dword_1000D8284;
  v13 = [(NANDTelemetry_NandGBBSweepDaily *)self _getReasonString:dword_1000D8298];
  v14 = [NSString stringWithFormat:@"MSP%d_Channel%d_Die%d_Plane%d_Block%d_Page%@_Mode%d_Reason%@", v16, v7, v8, v9, v10, v11, v12, v13];

  if (v5 < strCopy)
  {
  }

  return v14;
}

- (void)_sweepBlock:(id *)block
{
  var10 = block->var10;
  v25 = objc_alloc_init(NSMutableArray);
  if ((byte_1000D8260 & 1) == 0)
  {
    blockPath = [(NANDTelemetry_NandGBBSweepDaily *)self blockPath];
    v6 = [(NANDTelemetry_NandGBBSweepDaily *)self _createDirectoryAt:blockPath];

    if ((v6 & 1) == 0)
    {
      v7 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100049C70(v7, self);
      }

      [(NANDTelemetry_NandGBBSweepDaily *)self setSweepError:7];
    }

    byte_1000D8260 = 1;
  }

  if (dword_1000D8280 < var10)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0.0;
    while (1)
    {
      v11 = v9;
      if ([(NANDTelemetry_NandGBBSweepDaily *)self wasSigtermReceived]|| v10 > 4.5 && [(NANDTelemetry_Base *)self tryDeferXpcActivity])
      {
        [(NANDTelemetry_NandGBBSweepDaily *)self setSweepError:8];
        goto LABEL_23;
      }

      blockPath2 = [(NANDTelemetry_NandGBBSweepDaily *)self blockPath];
      dword_1000D8280 = [NSString stringWithFormat:@"%@/Sweep_Wordline_%d.bin", blockPath2, dword_1000D8280];

      v14 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = dword_1000D8280;
        v16 = dword_1000D8280;
        v17 = v14;
        uTF8String = [dword_1000D8280 UTF8String];
        *buf = 67109378;
        v27 = v15;
        v28 = 2080;
        v29 = uTF8String;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sweeping WL %d, into %s", buf, 0x12u);
      }

      v9 = +[NSDate date];

      [(NANDTelemetry_NandGBBSweepDaily *)self ctl];
      [(NANDTelemetry_NandGBBSweepDaily *)self sweepBuf];
      [(NANDTelemetry_NandGBBSweepDaily *)self sweepBufSize];
      v8 = dword_1000D8280;
      [dword_1000D8280 UTF8String];
      [(NANDTelemetry_NandGBBSweepDaily *)self setSweepError:Do_NVMeCTL_WL_Sweep()];
      v19 = +[NSDate date];
      [v19 timeIntervalSinceDate:v9];
      v21 = v20;

      if ([(NANDTelemetry_NandGBBSweepDaily *)self sweepError])
      {
        break;
      }

      v22 = dword_1000D8280;
      if (dword_1000D8280 != dword_1000D8264 && !(dword_1000D8280 % 0x64u))
      {
        [NANDTelemetry_NandGBBSweepDaily _compressRange:"_compressRange:startWL:endWL:content:" startWL:var10 endWL:? content:?];
        compressedPath = [(NANDTelemetry_NandGBBSweepDaily *)self compressedPath];
        CompressFiles();

        v22 = dword_1000D8280;
        dword_1000D8264 = dword_1000D8280;
      }

      v10 = v10 + v21;
      dword_1000D8280 = v22 + 1;
      if (v22 + 1 >= var10)
      {
        goto LABEL_23;
      }
    }

    v24 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049D18(v24, self);
    }

LABEL_23:
  }
}

- (void)_checkTestHook
{
  if (os_variant_has_internal_content())
  {
    stateMgr = [(NANDTelemetry_Base *)self stateMgr];
    v5 = [stateMgr getValueForKey:@"gbb_test_mode"];

    v4 = v5;
    if (v5)
    {
      if ([v5 isEqualToString:@"yes"])
      {
        byte_1000D8268 = 1;
      }

      v4 = v5;
    }
  }

  else
  {
    v4 = 0;
  }
}

- (void)runActivity
{
  v38 = 0;
  v35 = objc_alloc_init(NSMutableArray);
  v36 = getDeviceSerialNumber();
  v3 = off_1000D8000;
  v4 = byte_1000D8260;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  [(NANDTelemetry_NandGBBSweepDaily *)self setWasSigtermReceived:0];
  v5 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GBB Activity Start.", buf, 2u);
  }

  signal(15, 1);
  v6 = dispatch_get_global_queue(21, 0);
  v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v6);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000ADE4;
  handler[3] = &unk_10009C990;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_activate(v7);
  if ((byte_1000D8260 & 1) == 0)
  {
    [(NANDTelemetry_NandGBBSweepDaily *)self _checkTestHook];
    if ((byte_1000D8268 & 1) == 0)
    {
      [(NANDTelemetry_NandGBBSweepDaily *)self _cleanItemAt:@"/private/var/db/NANDTelemetryServices/GBBCollection"];
    }

    [(NANDTelemetry_NandGBBSweepDaily *)self _createDirectoryAt:@"/private/var/db/NANDTelemetryServices/GBBCollection"];
  }

  if (![(NANDTelemetry_NandGBBSweepDaily *)self _isGBBSweepEnabled])
  {
    v30 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "GBB Collection Disabled via boot-args", buf, 2u);
    }

    goto LABEL_41;
  }

  if ([(NANDTelemetry_NandGBBSweepDaily *)self wasSigtermReceived]|| !sub_10003CA90(0, v41))
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049E7C();
    }

    goto LABEL_41;
  }

  inited = Init_NVMeCTL();
  [(NANDTelemetry_NandGBBSweepDaily *)self setCtl:inited];
  if (!inited)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049E48();
    }

    goto LABEL_41;
  }

  v9 = malloc_type_valloc([(NANDTelemetry_NandGBBSweepDaily *)self sweepBufSize], 0x44BE4FB7uLL);
  [(NANDTelemetry_NandGBBSweepDaily *)self setSweepBuf:v9];
  if (!v9)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049E14();
    }

LABEL_41:
    v17 = 0;
    v22 = 0;
    v10 = 0;
    goto LABEL_42;
  }

  v10 = [(NANDTelemetry_NandGBBSweepDaily *)self getDefects:&v38];
  if (!v10 || v38 <= 3)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049DE0();
    }

    goto LABEL_60;
  }

  [(NANDTelemetry_NandGBBSweepDaily *)self setSweepInfo:v10];
  v11 = *[(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo];
  if (byte_1000D8260)
  {
    v12 = dword_1000D82A0;
  }

  else
  {
    v12 = 2;
  }

  if (v11 >= v12)
  {
    v11 = v12;
  }

  dword_1000D82A0 = v11;
  [(NANDTelemetry_NandGBBSweepDaily *)self setCurrBlock:0];
  [(NANDTelemetry_NandGBBSweepDaily *)self setSweepError:0];
  v13 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v40 = dword_1000D82A0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sweeping %d bad blocks", buf, 8u);
  }

  if (!dword_1000D82A0)
  {
LABEL_60:
    v17 = 0;
    v22 = 0;
    goto LABEL_42;
  }

  v14 = 0;
  v15 = 0;
  v34 = v6;
  while (1)
  {
    if ((v4 & 1) == 0)
    {
      [(NANDTelemetry_NandGBBSweepDaily *)self _fillSweepParams];
      sweepInfo = [(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo];
      dword_1000D829C = sweepInfo->var11[[(NANDTelemetry_NandGBBSweepDaily *)self currBlock]];
    }

    v17 = [(NANDTelemetry_NandGBBSweepDaily *)self _getBlockStr:DWORD1(v42)];

    v18 = [NSString stringWithFormat:@"%@/%@", @"/private/var/db/NANDTelemetryServices/GBBCollection", v17];
    [(NANDTelemetry_NandGBBSweepDaily *)self setBlockPath:v18];

    blockPath = [(NANDTelemetry_NandGBBSweepDaily *)self blockPath];
    v20 = [NSString stringWithFormat:@"%@/%@_%@.tar", blockPath, v17, v36];
    [(NANDTelemetry_NandGBBSweepDaily *)self setCompressedPath:v20];

    v21 = [(NANDTelemetry_NandGBBSweepDaily *)self _getReasonString:dword_1000D8298];
    v22 = [NSString stringWithFormat:@"[%@][New GBB Detected: %@][%@]", v36, v17, v21];

    if ((v4 & 1) == 0)
    {
      blockPath2 = [(NANDTelemetry_NandGBBSweepDaily *)self blockPath];
      v24 = [(NANDTelemetry_NandGBBSweepDaily *)self _createDirectoryAt:blockPath2];

      if ((v24 & 1) == 0)
      {
        break;
      }
    }

    [(NANDTelemetry_NandGBBSweepDaily *)self _sweepBlock:v41];
    v3 = off_1000D8000;
    v6 = v34;
    if ([(NANDTelemetry_NandGBBSweepDaily *)self sweepError])
    {
      blockPath3 = [(NANDTelemetry_NandGBBSweepDaily *)self blockPath];
      [(NANDTelemetry_NandGBBSweepDaily *)self _doCleanup:blockPath3];

      goto LABEL_42;
    }

    [(NANDTelemetry_NandGBBSweepDaily *)self _gatherRadarInfo];
    [(NANDTelemetry_NandGBBSweepDaily *)self _compressRange:DWORD2(v42) startWL:dword_1000D8264 endWL:DWORD2(v42) content:v35];
    compressedPath = [(NANDTelemetry_NandGBBSweepDaily *)self compressedPath];
    CompressFiles();

    compressedPath2 = [(NANDTelemetry_NandGBBSweepDaily *)self compressedPath];
    [(NANDTelemetry_NandGBBSweepDaily *)self uploadFile:compressedPath2 description:v22];

    [(NANDTelemetry_NandGBBSweepDaily *)self markGBBAsSwept];
    --dword_1000D82A0;
    blockPath4 = [(NANDTelemetry_NandGBBSweepDaily *)self blockPath];
    [(NANDTelemetry_NandGBBSweepDaily *)self _doCleanup:blockPath4];

    if (v4)
    {
      v10 = [(NANDTelemetry_NandGBBSweepDaily *)self getDefects:&v38];
      if (!v10 || v38 <= 3)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_100049DAC();
        }

        goto LABEL_42;
      }

      [(NANDTelemetry_NandGBBSweepDaily *)self setCurrBlock:0];
      [(NANDTelemetry_NandGBBSweepDaily *)self setSweepInfo:v10];
      v28 = dword_1000D82A0;
      v29 = *[(NANDTelemetry_NandGBBSweepDaily *)self sweepInfo];
      if (v28 < v29)
      {
        v29 = v28;
      }

      dword_1000D82A0 = v29;
    }

    else
    {
      [(NANDTelemetry_NandGBBSweepDaily *)self setCurrBlock:[(NANDTelemetry_NandGBBSweepDaily *)self currBlock]+ 1];
      v29 = dword_1000D82A0;
    }

    v4 = 0;
    v14 = v22;
    v15 = v17;
    if (!v29)
    {
      goto LABEL_42;
    }
  }

  v33 = oslog;
  v3 = off_1000D8000;
  v6 = v34;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_100049C70(v33, self);
  }

LABEL_42:
  v31 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "GBB Activity Exit.", buf, 2u);
  }

  if ((v3[76] & 1) == 0 && (byte_1000D8268 & 1) == 0)
  {
    [(NANDTelemetry_NandGBBSweepDaily *)self _cleanItemAt:@"/private/var/db/NANDTelemetryServices/GBBCollection"];
  }

  if ([(NANDTelemetry_NandGBBSweepDaily *)self ctl])
  {
    [(NANDTelemetry_NandGBBSweepDaily *)self ctl];
    Free_NVMeCTL();
    [(NANDTelemetry_NandGBBSweepDaily *)self setCtl:0];
  }

  if (v10)
  {
    free(v10);
  }

  if ([(NANDTelemetry_NandGBBSweepDaily *)self sweepBuf])
  {
    free([(NANDTelemetry_NandGBBSweepDaily *)self sweepBuf]);
    [(NANDTelemetry_NandGBBSweepDaily *)self setSweepBuf:0];
  }
}

- (int)uploadFile:(id)file description:(id)description
{
  if (byte_1000D8268)
  {
    return 1;
  }

  ASPCarryLog_UploadFileToDP(file, @"com.apple.nand.autoGBBCollection", @"AutomaticGBBSweep", description, 0, @"tar");
  return 0;
}

- (void)getDefects:(unint64_t *)defects
{
  if ([(NANDTelemetry_NandGBBSweepDaily *)self wasSigtermReceived])
  {
    return 0;
  }

  return sub_10003DE14(269, defects);
}

- (void)markGBBAsSwept
{
  v3 = malloc_type_valloc(0x50uLL, 0x100004052888210uLL);
  wasSigtermReceived = [(NANDTelemetry_NandGBBSweepDaily *)self wasSigtermReceived];
  if (!v3 || (wasSigtermReceived & 1) != 0)
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    *(v3 + 8) = xmmword_1000D826C;
    *(v3 + 6) = dword_1000D827C;
    [(NANDTelemetry_NandGBBSweepDaily *)self ctl];
    Send_ASF_Tunnel();
  }

  free(v3);
}

+ (void)setGBBXpcCritiria:(id)critiria
{
  xdict = critiria;
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_HOUR);
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_HOUR);
}

+ (BOOL)shouldRegisterActivity
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    if (os_variant_has_factory_content())
    {
      LOBYTE(has_internal_content) = 0;
    }

    else
    {
      LOBYTE(has_internal_content) = os_variant_is_darwinos() ^ 1;
    }
  }

  return has_internal_content;
}

@end