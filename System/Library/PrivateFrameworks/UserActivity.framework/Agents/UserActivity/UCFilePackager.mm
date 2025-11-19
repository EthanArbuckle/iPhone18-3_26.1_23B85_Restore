@interface UCFilePackager
- (BOOL)deliverNextPacket;
- (UCFilePackager)initWithFile:(id)a3 fileSize:(int64_t)a4 packetSize:(int64_t)a5 options:(id)a6 receiver:(id)a7;
- (UCFilePacketReceiver)receiver;
- (void)checkShouldFetch;
- (void)prepNextPacket;
@end

@implementation UCFilePackager

- (UCFilePackager)initWithFile:(id)a3 fileSize:(int64_t)a4 packetSize:(int64_t)a5 options:(id)a6 receiver:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v21.receiver = self;
  v21.super_class = UCFilePackager;
  v15 = [(UCFilePackager *)&v21 init];
  v16 = v15;
  if (v15)
  {
    [(UCFilePackager *)v15 setFile:v12];
    [(UCFilePackager *)v16 setOptions:v13];
    [(UCFilePackager *)v16 setPacketSize:a5];
    [(UCFilePackager *)v16 setTotalPacketCount:vcvtpd_s64_f64(a4 / a5)];
    [(UCFilePackager *)v16 setCurrentPacketNumber:0];
    [(UCFilePackager *)v16 setNextPacketNumber:1];
    [(UCFilePackager *)v16 setNextPacketToDeliver:1];
    v17 = dispatch_queue_create("UCFilePackagerReadQ", 0);
    [(UCFilePackager *)v16 setFetchQ:v17];

    v18 = dispatch_semaphore_create(0);
    [(UCFilePackager *)v16 setNextPacketReady:v18];

    [(UCFilePackager *)v16 setPacketPreLoadCount:2];
    v19 = [NSMutableArray arrayWithCapacity:[(UCFilePackager *)v16 packetPreLoadCount]];
    [(UCFilePackager *)v16 setQueuedPackets:v19];

    [(UCFilePackager *)v16 setReceiver:v14];
    [(UCFilePackager *)v16 checkShouldFetch];
  }

  return v16;
}

- (BOOL)deliverNextPacket
{
  v3 = [(UCFilePackager *)self nextPacketToDeliver];
  v4 = [(UCFilePackager *)self totalPacketCount];
  if (v3 <= v4)
  {
    if (sub_10003F738([(UCFilePackager *)self nextPacketToDeliver], [(UCFilePackager *)self totalPacketCount]))
    {
      v5 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        v10 = [(UCFilePackager *)self nextPacketToDeliver];
        v11 = 1024;
        v12 = [(UCFilePackager *)self totalPacketCount];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Packager] Queuing delivery block %d/%d", buf, 0xEu);
      }
    }

    v6 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100037958;
    block[3] = &unk_1000C4CC0;
    block[4] = self;
    dispatch_async(v6, block);
  }

  return v3 <= v4;
}

- (void)prepNextPacket
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(UCFilePackager *)v2 nextPacketNumber];
  if (v3 <= [(UCFilePackager *)v2 totalPacketCount])
  {
    v4 = [(UCFilePackager *)v2 nextPacketNumber];
    [(UCFilePackager *)v2 setNextPacketNumber:[(UCFilePackager *)v2 nextPacketNumber]+ 1];
  }

  else
  {
    v4 = -1;
  }

  objc_sync_exit(v2);

  if (v4 >= 1)
  {
    v5 = [(UCFilePackager *)v2 fetchQ];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100037CF8;
    v6[3] = &unk_1000C5750;
    v6[4] = v2;
    v6[5] = v4;
    dispatch_async(v5, v6);
  }
}

- (void)checkShouldFetch
{
  v3 = [(UCFilePackager *)self queuedPackets];
  objc_sync_enter(v3);
  v4 = [(UCFilePackager *)self queuedPackets];
  v5 = [v4 count];
  v6 = [(UCFilePackager *)self packetPreLoadCount];

  objc_sync_exit(v3);
  if (v5 < v6)
  {

    [(UCFilePackager *)self prepNextPacket];
  }
}

- (UCFilePacketReceiver)receiver
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);

  return WeakRetained;
}

@end