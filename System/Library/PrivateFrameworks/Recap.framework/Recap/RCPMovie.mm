@interface RCPMovie
+ (__CVBuffer)pixelBufferFromUIImage:(id)image size:(CGSize)size orientation:(int64_t)orientation;
- (RCPMovie)initWithContentsOfURL:(id)l;
- (RCPMovie)initWithEventStream:(id)stream snapshots:(id)snapshots;
- (RCPMovie)initWithXPC:(id)c;
- (id)encodeToXPC;
- (id)trimmedFrom:(unint64_t)from to:(unint64_t)to;
- (void)writeToURL:(id)l completion:(id)completion;
@end

@implementation RCPMovie

- (RCPMovie)initWithEventStream:(id)stream snapshots:(id)snapshots
{
  streamCopy = stream;
  v18.receiver = self;
  v18.super_class = RCPMovie;
  snapshotsCopy = snapshots;
  v8 = [(RCPMovie *)&v18 init];
  eventStream = v8->_eventStream;
  v8->_eventStream = streamCopy;
  v10 = streamCopy;

  v11 = [snapshotsCopy copy];
  snapshots = v8->_snapshots;
  v8->_snapshots = v11;

  lastObject = [(NSArray *)v8->_snapshots lastObject];
  snapshotImage = [lastObject snapshotImage];
  v8->_interfaceOrientation = [snapshotImage imageOrientation];

  v15 = [(NSArray *)v8->_snapshots objectAtIndexedSubscript:0];
  v8->_startTimestamp = [v15 timestamp];

  lastObject2 = [(NSArray *)v8->_snapshots lastObject];

  v8->_endTimestamp = [lastObject2 timestamp];
  return v8;
}

- (id)trimmedFrom:(unint64_t)from to:(unint64_t)to
{
  v24 = *MEMORY[0x277D85DE8];
  eventStream = [(RCPMovie *)self eventStream];
  v8 = [eventStream trimmedFrom:from to:to];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  snapshots = [(RCPMovie *)self snapshots];
  v11 = [snapshots countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(snapshots);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([v15 timestamp] >= from && objc_msgSend(v15, "timestamp") <= to)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [snapshots countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [[RCPMovie alloc] initWithEventStream:v8 snapshots:v9];
  screenshot = [(RCPMovie *)self screenshot];
  [(RCPMovie *)v16 setScreenshot:screenshot];

  return v16;
}

- (RCPMovie)initWithXPC:(id)c
{
  xdict = c;
  v3 = xpc_dictionary_get_array(xdict, "snapshots");
  count = xpc_array_get_count(v3);
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
  if (count >= 1)
  {
    for (i = 0; i != count; ++i)
    {
      v7 = xpc_array_get_value(v3, i);
      v8 = xpc_dictionary_get_value(v7, "iosurface");
      v9 = IOSurfaceLookupFromXPCObject(v8);

      uint64 = xpc_dictionary_get_uint64(v7, "timestamp");
      v11 = xpc_dictionary_get_uint64(v7, "orientation");
      v12 = objc_alloc_init(RCPScreenSnapshot);
      [(RCPScreenSnapshot *)v12 setTimestamp:uint64];
      v13 = [objc_alloc(MEMORY[0x277D755B8]) _initWithIOSurface:v9 scale:v11 orientation:1.0];
      [(RCPScreenSnapshot *)v12 setSnapshotImage:v13];

      [v5 addObject:v12];
      CFRelease(v9);
    }
  }

  length = 0;
  data = xpc_dictionary_get_data(xdict, "eventStream", &length);
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
  v16 = [RCPEventStream eventStreamWithData:v15 error:0];

  v17 = [(RCPMovie *)self initWithEventStream:v16 snapshots:v5];
  return v17;
}

- (id)encodeToXPC
{
  v44 = *MEMORY[0x277D85DE8];
  snapshots = [(RCPMovie *)self snapshots];
  v31 = &v28;
  v29 = [snapshots count];
  v35 = &v28 - ((8 * v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 8 * v29;
  bzero(v35, 8 * v29);
  snapshots2 = [(RCPMovie *)self snapshots];
  v4 = [snapshots2 count];

  if (v4)
  {
    v5 = 0;
    v34 = xmmword_279AF0FD8;
    v33 = "orientation";
    do
    {
      *keys = v34;
      v43 = v33;
      snapshots3 = [(RCPMovie *)self snapshots];
      v37 = [snapshots3 objectAtIndexedSubscript:v5];
      snapshotImage = [v37 snapshotImage];
      XPCObject = IOSurfaceCreateXPCObject([snapshotImage ioSurface]);
      values[0] = XPCObject;
      snapshots4 = [(RCPMovie *)self snapshots];
      v8 = [snapshots4 objectAtIndexedSubscript:v5];
      v9 = xpc_uint64_create([v8 timestamp]);
      values[1] = v9;
      snapshots5 = [(RCPMovie *)self snapshots];
      v11 = [snapshots5 objectAtIndexedSubscript:v5];
      snapshotImage2 = [v11 snapshotImage];
      v13 = xpc_uint64_create([snapshotImage2 imageOrientation]);
      values[2] = v13;
      v14 = xpc_dictionary_create(keys, values, 3uLL);
      v15 = *&v35[8 * v5];
      *&v35[8 * v5] = v14;

      ++v5;
      snapshots6 = [(RCPMovie *)self snapshots];
      v17 = [snapshots6 count];
    }

    while (v5 < v17);
  }

  eventStream = [(RCPMovie *)self eventStream];
  dataRepresentation = [eventStream dataRepresentation];

  v40[0] = "snapshots";
  v40[1] = "eventStream";
  snapshots7 = [(RCPMovie *)self snapshots];
  v21 = [snapshots7 count];
  v22 = v35;
  v23 = xpc_array_create(v35, v21);
  v39[0] = v23;
  v24 = xpc_data_create([dataRepresentation bytes], objc_msgSend(dataRepresentation, "length"));
  v39[1] = v24;
  v25 = xpc_dictionary_create(v40, v39, 2uLL);

  v26 = v30;
  if (v29)
  {
    do
    {

      v26 -= 8;
    }

    while (v26);
  }

  return v25;
}

- (RCPMovie)initWithContentsOfURL:(id)l
{
  v43 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v41.receiver = self;
  v41.super_class = RCPMovie;
  v5 = [(RCPMovie *)&v41 init];
  v34 = lCopy;
  v6 = [MEMORY[0x277CE6650] URLAssetWithURL:lCopy options:&unk_287426D58];
  screenRecording = v5->_screenRecording;
  v5->_screenRecording = v6;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  screenRecording = [(RCPMovie *)v5 screenRecording];
  metadata = [screenRecording metadata];

  v10 = [metadata countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v12 = *v38;
  v13 = *MEMORY[0x277CE5F60];
  v36 = *MEMORY[0x277CE5F78];
  v35 = *MEMORY[0x277CE5F58];
  do
  {
    v14 = 0;
    do
    {
      if (*v38 != v12)
      {
        objc_enumerationMutation(metadata);
      }

      v15 = *(*(&v37 + 1) + 8 * v14);
      identifier = [v15 identifier];
      v17 = [identifier isEqualToString:v13];

      if (v17)
      {
        value = [v15 value];
        v5->_startTimestamp = [value integerValue];
        goto LABEL_15;
      }

      identifier2 = [v15 identifier];
      v20 = [identifier2 isEqualToString:@"mdta/com.apple.recap.endTimestamp"];

      if (v20)
      {
        value = [v15 value];
        v5->_endTimestamp = [value integerValue];
        goto LABEL_15;
      }

      identifier3 = [v15 identifier];
      v22 = [identifier3 isEqualToString:@"mdta/com.apple.recap.events"];

      if (v22)
      {
        value = [v15 dataValue];
        v23 = [RCPEventStream eventStreamWithData:value error:0];
        eventStream = v5->_eventStream;
        v5->_eventStream = v23;
        goto LABEL_12;
      }

      identifier4 = [v15 identifier];
      v26 = [identifier4 isEqualToString:v36];

      if (v26)
      {
        value = [v15 value];
        v5->_interfaceOrientation = [value integerValue];
        goto LABEL_15;
      }

      identifier5 = [v15 identifier];
      v28 = [identifier5 isEqualToString:v35];

      if (v28)
      {
        v29 = MEMORY[0x277D755B8];
        value = [v15 value];
        v30 = [v29 imageWithData:value];
        eventStream = v5->_screenshot;
        v5->_screenshot = v30;
LABEL_12:

LABEL_15:
        goto LABEL_16;
      }

      NSLog(&cfstr_UnknownMetadat.isa, v15);
LABEL_16:
      ++v14;
    }

    while (v11 != v14);
    v31 = [metadata countByEnumeratingWithState:&v37 objects:v42 count:16];
    v11 = v31;
  }

  while (v31);
LABEL_22:

  if (v5->_eventStream)
  {
    v32 = v5;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)writeToURL:(id)l completion:(id)completion
{
  v84[5] = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v80 = 0;
  [defaultManager removeItemAtURL:lCopy error:&v80];
  v8 = v80;

  snapshots = [(RCPMovie *)self snapshots];
  lastObject = [snapshots lastObject];
  snapshotImage = [lastObject snapshotImage];
  [snapshotImage size];
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x277CBEBC0];
  v17 = NSTemporaryDirectory();
  v18 = [v16 fileURLWithPath:v17];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v21 = [v18 URLByAppendingPathComponent:uUIDString];
  v22 = [v21 URLByAppendingPathExtension:@"mov"];

  v23 = objc_alloc(MEMORY[0x277CE6460]);
  v24 = *MEMORY[0x277CE5DA8];
  v79 = v8;
  v25 = [v23 initWithURL:v22 fileType:v24 error:&v79];
  v26 = v79;

  if (v26)
  {
    NSLog(&cfstr_FailedToCreate.isa, v26);
    completionCopy[2](completionCopy);
  }

  else
  {
    v63 = objc_alloc_init(MEMORY[0x277CE6558]);
    [v63 setIdentifier:*MEMORY[0x277CE5F60]];
    v27 = *MEMORY[0x277CC05E0];
    [v63 setDataType:*MEMORY[0x277CC05E0]];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[RCPMovie startTimestamp](self, "startTimestamp")}];
    [v63 setValue:v28];

    v62 = objc_alloc_init(MEMORY[0x277CE6558]);
    [v62 setIdentifier:@"mdta/com.apple.recap.endTimestamp"];
    [v62 setDataType:v27];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[RCPMovie endTimestamp](self, "endTimestamp")}];
    [v62 setValue:v29];

    v61 = objc_alloc_init(MEMORY[0x277CE6558]);
    [v61 setIdentifier:*MEMORY[0x277CE5F78]];
    [v61 setDataType:*MEMORY[0x277CC05C8]];
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RCPMovie interfaceOrientation](self, "interfaceOrientation")}];
    [v61 setValue:v30];

    v31 = objc_alloc_init(MEMORY[0x277CE6558]);
    [v31 setIdentifier:@"mdta/com.apple.recap.events"];
    [v31 setDataType:*MEMORY[0x277CC05B0]];
    eventStream = [(RCPMovie *)self eventStream];
    dataRepresentation = [eventStream dataRepresentation];
    [v31 setValue:dataRepresentation];

    screenshot = [(RCPMovie *)self screenshot];

    if (screenshot)
    {
      screenshot2 = [(RCPMovie *)self screenshot];
      v36 = RCPCGImageBackedImageFromImage(screenshot2);

      v37 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v37 setIdentifier:*MEMORY[0x277CE5F58]];
      [v37 setDataType:*MEMORY[0x277CC0590]];
      v38 = UIImageJPEGRepresentation(v36, 0.8);
      [v37 setValue:v38];

      v84[0] = v63;
      v84[1] = v62;
      v84[2] = v61;
      v84[3] = v31;
      v84[4] = v37;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:5];
      [v25 setMetadata:v39];
    }

    else
    {
      v83[0] = v63;
      v83[1] = v62;
      v83[2] = v61;
      v83[3] = v31;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
      [v25 setMetadata:v36];
    }

    v40 = *MEMORY[0x277CE62C8];
    v82[0] = *MEMORY[0x277CE62F8];
    v41 = *MEMORY[0x277CE63C0];
    v81[0] = v40;
    v81[1] = v41;
    v42 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    v82[1] = v42;
    v81[2] = *MEMORY[0x277CE6360];
    v43 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    v82[2] = v43;
    v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:3];

    v44 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5EA8] outputSettings:v60];
    v45 = [MEMORY[0x277CE6478] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:v44 sourcePixelBufferAttributes:0];
    [v25 addInput:v44];
    eventStream2 = [(RCPMovie *)self eventStream];
    environment = [eventStream2 environment];
    [environment timeScale];
    v49 = v48;

    [v25 startWriting];
    CMTimeMakeWithSeconds(&v77, v49 * [(RCPMovie *)self startTimestamp]/ 1000000000.0, 600);
    [v25 startSessionAtSourceTime:&v77];
    v77.value = 0;
    *&v77.timescale = &v77;
    v77.epoch = 0x2020000000;
    v78 = 0;
    if (!self->_serializationQueue)
    {
      v50 = dispatch_queue_create("movie-output", 0);
      serializationQueue = self->_serializationQueue;
      self->_serializationQueue = v50;

      v52 = self->_serializationQueue;
      v53 = dispatch_get_global_queue(17, 0);
      dispatch_set_target_queue(v52, v53);
    }

    snapshots2 = [(RCPMovie *)self snapshots];
    v55 = [snapshots2 copy];

    v56 = self->_serializationQueue;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __34__RCPMovie_writeToURL_completion___block_invoke;
    v65[3] = &unk_279AF0FF8;
    v57 = v44;
    v66 = v57;
    v73 = &v77;
    v58 = v55;
    v67 = v58;
    v74 = v13;
    v75 = v15;
    v76 = v49;
    v59 = v45;
    v68 = v59;
    v69 = v25;
    v70 = v22;
    v71 = lCopy;
    v72 = completionCopy;
    [v57 requestMediaDataWhenReadyOnQueue:v56 usingBlock:v65];

    _Block_object_dispose(&v77, 8);
  }
}

void __34__RCPMovie_writeToURL_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isReadyForMoreMediaData])
  {
    do
    {
      v2 = *(*(*(a1 + 88) + 8) + 24);
      if (v2 >= [*(a1 + 40) count])
      {
        break;
      }

      v3 = [*(a1 + 40) objectAtIndexedSubscript:*(*(*(a1 + 88) + 8) + 24)];
      v4 = [v3 snapshotImage];
      v5 = RCPCGImageBackedImageFromImage(v4);

      v6 = MEMORY[0x277D755B8];
      v7 = [v5 CGImage];
      [v5 scale];
      v9 = v8;
      v10 = [*(a1 + 40) objectAtIndexedSubscript:*(*(*(a1 + 88) + 8) + 24)];
      v11 = [v10 snapshotImage];
      v12 = [v6 imageWithCGImage:v7 scale:objc_msgSend(v11 orientation:{"imageOrientation"), v9}];

      if (v12)
      {
        v13 = [*(a1 + 40) lastObject];
        v14 = [v13 snapshotImage];
        v15 = +[RCPMovie pixelBufferFromUIImage:size:orientation:](RCPMovie, "pixelBufferFromUIImage:size:orientation:", v12, [v14 imageOrientation], *(a1 + 96), *(a1 + 104));

        memset(&v31, 0, sizeof(v31));
        v16 = [*(a1 + 40) objectAtIndexedSubscript:*(*(*(a1 + 88) + 8) + 24)];
        CMTimeMakeWithSeconds(&v31, *(a1 + 112) * [v16 timestamp] / 1000000000.0, 600);

        if (![*(a1 + 32) isReadyForMoreMediaData])
        {
          goto LABEL_12;
        }

        v17 = *(a1 + 48);
        v30 = v31;
        v18 = [v17 appendPixelBuffer:v15 withPresentationTime:&v30];
        CFRelease(v15);
        if (!v18 || [*(a1 + 56) status] == 3)
        {
          v19 = [*(a1 + 56) error];
          NSLog(&cfstr_FailedToWriteM.isa, v19);

          *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 40) count];
        }
      }

      v20 = *(*(*(a1 + 88) + 8) + 24);
      if (v20 >= [*(a1 + 40) count] - 1)
      {
        [*(a1 + 32) markAsFinished];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __34__RCPMovie_writeToURL_completion___block_invoke_2;
        v27[3] = &unk_279AF0E58;
        v21 = *(a1 + 56);
        v22 = *(a1 + 64);
        v23 = *(a1 + 72);
        v24 = *(a1 + 80);
        *&v25 = v23;
        *(&v25 + 1) = v24;
        *&v26 = v21;
        *(&v26 + 1) = v22;
        v28 = v26;
        v29 = v25;
        [v21 finishWritingWithCompletionHandler:v27];

LABEL_12:
        return;
      }

      ++*(*(*(a1 + 88) + 8) + 24);
    }

    while (([*(a1 + 32) isReadyForMoreMediaData] & 1) != 0);
  }
}

uint64_t __34__RCPMovie_writeToURL_completion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) status] != 2)
  {
    v2 = [*(a1 + 32) error];
    NSLog(&cfstr_FailedToWriteM.isa, v2);
  }

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 moveItemAtURL:*(a1 + 40) toURL:*(a1 + 48) error:0];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

+ (__CVBuffer)pixelBufferFromUIImage:(id)image size:(CGSize)size orientation:(int64_t)orientation
{
  v35[2] = *MEMORY[0x277D85DE8];
  width = size.width;
  height = size.height;
  v8 = *MEMORY[0x277CC4D68];
  v34[0] = *MEMORY[0x277CC4D70];
  v34[1] = v8;
  v35[0] = MEMORY[0x277CBEC38];
  v35[1] = MEMORY[0x277CBEC38];
  v9 = MEMORY[0x277CBEAC0];
  imageCopy = image;
  v11 = [v9 dictionaryWithObjects:v35 forKeys:v34 count:2];
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, 0x20u, v11, &pixelBufferOut);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  v15 = CGBitmapContextCreate(BaseAddress, width, height, 8uLL, BytesPerRow, DeviceRGB, 6u);
  v16 = v15;
  v17 = -height;
  v18 = width;
  v19 = height;
  v20 = -width;
  v21 = v20;
  v22 = v17;
  if (orientation == 1)
  {
    v23 = height;
  }

  else
  {
    v23 = 0.0;
  }

  if (orientation == 1)
  {
    v24 = width;
  }

  else
  {
    v24 = 0.0;
  }

  if (orientation != 1)
  {
    v22 = height;
    v21 = width;
  }

  if (orientation == 2)
  {
    v23 = 0.0;
    v24 = width;
    v22 = 0.0;
  }

  else
  {
    v20 = 0.0;
  }

  if (orientation == 2)
  {
    v25 = height;
  }

  else
  {
    v25 = 0.0;
  }

  if (orientation == 2)
  {
    v21 = 0.0;
  }

  if (orientation == 3)
  {
    v22 = 0.0;
  }

  else
  {
    v19 = v23;
  }

  if (orientation == 3)
  {
    v26 = 0.0;
  }

  else
  {
    v18 = v20;
    v17 = v25;
    v26 = v21;
  }

  v32.a = v26;
  v32.b = v17;
  v32.c = v18;
  v32.d = v22;
  if (orientation == 3)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v24;
  }

  v32.tx = v27;
  v32.ty = v19;
  CGContextConcatCTM(v15, &v32);
  v28 = imageCopy;
  cGImage = [v28 CGImage];

  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = 1.0;
  v36.size.height = 1.0;
  CGContextDrawImage(v16, v36, cGImage);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v16);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  v30 = pixelBufferOut;

  return v30;
}

@end